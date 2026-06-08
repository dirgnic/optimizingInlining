from __future__ import annotations

import json
import re
import shutil
import subprocess
from pathlib import Path

from data import Callsite, FEATURE_NAMES, IR_DIR, OUT
from ir import call_lines, instruction_count, parse_functions
from pipeline_parallel import parallel_map
from teach import TEACHERS, teacher_action

REWRITE_DIR = OUT / "rewritten_ir"
REWRITTEN_NATIVE_DIR = OUT / "rewritten_native"
NATIVE_COMPILE_TIMEOUT_SECONDS = 20
GREEDY_TEACHER = "greedy_ir_size"
GREEDY_MAX_CANDIDATES = 35


def write_json_atomic(path: Path, payload: dict) -> None:
    tmp = path.with_suffix(path.suffix + ".tmp")
    tmp.write_text(json.dumps(payload, indent=2), encoding="utf-8")
    tmp.replace(path)


def opt_path() -> str:
    opt = shutil.which("opt")
    if not opt:
        raise SystemExit("opt not found on PATH")
    return opt


def llc_path() -> str:
    llc = shutil.which("llc")
    if not llc:
        raise SystemExit("llc not found on PATH")
    return llc


def run(cmd: list[str], *, timeout: int | None = None) -> subprocess.CompletedProcess[str]:
    return subprocess.run(cmd, text=True, capture_output=True, check=False, timeout=timeout)


def native_text_size(path: Path) -> int | None:
    llvm_size = shutil.which("llvm-size")
    if llvm_size:
        proc = run([llvm_size, "--format=sysv", str(path)])
        if proc.returncode == 0:
            for line in proc.stdout.splitlines():
                parts = line.split()
                if parts and parts[0] in {"__text", ".text"} and len(parts) >= 2:
                    return int(parts[1])
    size = shutil.which("size")
    if size:
        proc = run([size, "-m", str(path)])
        if proc.returncode == 0:
            match = re.search(r"Section\s+\(__TEXT,\s*__text\):\s*(\d+)", proc.stdout)
            if match:
                return int(match.group(1))
    return None


def define_ranges(lines: list[str]) -> dict[str, tuple[int, int]]:
    define_re = re.compile(r"^define\s+.*?@(?P<name>[^(\s]+)\(")
    ranges: dict[str, tuple[int, int]] = {}
    current_name: str | None = None
    start = 0
    for index, line in enumerate(lines):
        if current_name is None:
            match = define_re.match(line)
            if match:
                current_name = match.group("name")
                start = index
            continue
        if line.strip() == "}":
            ranges[current_name] = (start, index)
            current_name = None
    return ranges


def function_ref_from_header(line: str) -> str | None:
    match = re.match(r"^define\s+.*?@(?P<name>[^(\s]+)\(", line)
    return match.group("name") if match else None


def add_alwaysinline_to_header(line: str) -> str:
    if "alwaysinline" in line:
        return line
    marker = line.find("#", line.rfind(")"))
    if marker == -1:
        marker = line.find("{", line.rfind(")"))
    if marker == -1:
        return line
    return line[:marker] + " alwaysinline" + line[marker:]


def clone_name_for(module: str, index: int) -> str:
    safe_module = re.sub(r"[^A-Za-z0-9_]+", "_", Path(module).stem)
    return f"pc_inline_{safe_module}_{index}"


def is_recursive_function(fn: list[str], callee: str) -> bool:
    call_re = re.compile(r'\bcall\b.*@(?P<name>[^("\s]+)\(')
    for line in fn:
        match = call_re.search(line)
        if match and match.group("name") == callee:
            return True
    return False


def parse_functions_from_lines(lines: list[str]) -> dict[str, list[str]]:
    functions: dict[str, list[str]] = {}
    current_name: str | None = None
    current_lines: list[str] = []
    define_re = re.compile(r"^define\s+.*?@(?P<name>[^(\s]+)\(")
    for line in lines:
        match = define_re.match(line)
        if match:
            current_name = match.group("name")
            current_lines = [line]
            continue
        if current_name is None:
            continue
        current_lines.append(line)
        if line.strip() == "}":
            functions[current_name] = current_lines[:]
            current_name = None
            current_lines = []
    return functions


def total_instructions(path: Path) -> int:
    return sum(instruction_count(fn) for fn in parse_functions(path).values())


def local_call_count(path: Path) -> int:
    functions = parse_functions(path)
    total = 0
    for fn in functions.values():
        total += sum(1 for callee, _ in call_lines(fn) if callee in functions)
    return total


def prepare_policy_ir(source: Path, target: Path, inline_rows: list[Callsite]) -> dict:
    lines = source.read_text(encoding="utf-8", errors="ignore").splitlines()
    cleaned = []
    for line in lines:
        line = re.sub(r"\bnoinline\b ?", "", line)
        line = re.sub(r"\boptnone\b ?", "", line)
        cleaned.append(line)

    functions = parse_functions_from_lines(cleaned)
    ranges = define_ranges(cleaned)
    modified = cleaned[:]
    clones: list[list[str]] = []
    marked = 0
    cloned_callsites = 0
    skipped_callsites = 0

    for index, row in enumerate(inline_rows):
        caller_range = ranges.get(row.caller)
        callee_fn = functions.get(row.callee)
        callee_range = ranges.get(row.callee)
        if caller_range is None or callee_fn is None or callee_range is None:
            skipped_callsites += 1
            continue
        if row.caller == row.callee or is_recursive_function(callee_fn, row.callee):
            skipped_callsites += 1
            continue

        clone_name = clone_name_for(row.module, index)
        clone_lines = callee_fn[:]
        original_ref = f"@{row.callee}"
        clone_ref = f"@{clone_name}"
        if clone_lines:
            clone_lines[0] = clone_lines[0].replace(original_ref, clone_ref, 1)
            clone_lines[0] = add_alwaysinline_to_header(clone_lines[0])
            clone_lines = [line.replace(original_ref, clone_ref) for line in clone_lines]

        caller_start, caller_end = caller_range
        replaced = False
        for line_index in range(caller_start, caller_end + 1):
            if modified[line_index].strip() != row.call_line.strip():
                continue
            if original_ref + "(" not in modified[line_index]:
                continue
            modified[line_index] = modified[line_index].replace(original_ref + "(", clone_ref + "(", 1)
            replaced = True
            break

        if not replaced:
            skipped_callsites += 1
            continue

        clones.append(clone_lines)
        marked += 1
        cloned_callsites += 1

    tail_start = len(modified)
    while tail_start > 0 and (modified[tail_start - 1].startswith("attributes ") or modified[tail_start - 1].startswith("!")):
        tail_start -= 1

    final_lines = modified[:tail_start]
    if clones:
        final_lines.append("")
        for clone in clones:
            final_lines.extend(clone)
            final_lines.append("")
    final_lines.extend(modified[tail_start:])
    while final_lines and final_lines[-1] == "":
        final_lines.pop()
    target.write_text("\n".join(final_lines) + "\n", encoding="utf-8")
    return {
        "marked_callsites": marked,
        "cloned_callsites": cloned_callsites,
        "skipped_callsites": skipped_callsites,
    }


def rewrite_module(module: str, policy: str, inline_rows: list[Callsite]) -> dict:
    source = IR_DIR / module
    policy_dir = REWRITE_DIR / policy
    policy_dir.mkdir(parents=True, exist_ok=True)
    prepared = policy_dir / f"{Path(module).stem}.prepared.ll"
    rewritten = policy_dir / module
    stats = prepare_policy_ir(source, prepared, inline_rows)
    cmd = [
        opt_path(),
        "-S",
        "-passes=always-inline,globaldce,instcombine,simplifycfg,dce",
        str(prepared),
        "-o",
        str(rewritten),
    ]
    proc = run(cmd)
    if proc.returncode != 0:
        cmd = [opt_path(), "-S", "-passes=always-inline,globaldce", str(prepared), "-o", str(rewritten)]
        proc = run(cmd)

    item = {
        "module": module,
        "policy": policy,
        "inline_callees": sorted({row.callee for row in inline_rows}),
        "marked_functions": stats["marked_callsites"],
        "cloned_callsites": stats["cloned_callsites"],
        "skipped_callsites": stats["skipped_callsites"],
        "input_ir": str(source.relative_to(OUT.parent)),
        "prepared_ir": str(prepared.relative_to(OUT.parent)),
        "rewritten_ir": str(rewritten.relative_to(OUT.parent)),
        "returncode": proc.returncode,
        "stderr": proc.stderr[-2000:],
        "before_instruction_count": total_instructions(source),
        "before_local_call_count": local_call_count(source),
    }
    if proc.returncode == 0:
        item["after_instruction_count"] = total_instructions(rewritten)
        item["after_local_call_count"] = local_call_count(rewritten)
    else:
        item["after_instruction_count"] = item["before_instruction_count"]
        item["after_local_call_count"] = item["before_local_call_count"]
    return item


def action_key(row: Callsite) -> str:
    return f"{row.caller}\t{row.callee}\t{row.call_line}"


def greedy_candidate_score(row: Callsite) -> tuple[float, float, str, str]:
    v = dict(zip(FEATURE_NAMES, row.features))
    benefit = (
        4.0 * v["number_constant_params"]
        + 3.0 * (1.0 if v["callee_users"] <= 1 else 0.0)
        + 1.0 * v["callsite_height"]
        + 1.0 * (1.0 if v["callee_call_count"] == 0 else 0.0)
    )
    cost = 1.0 + v["callee_instruction_count"] + 2.0 * v["callee_conditionally_executed_blocks"] + v["callee_call_count"]
    return (-(benefit / cost), cost, row.caller, row.callee)


def plausible_greedy_candidates(module_rows: list[Callsite]) -> list[Callsite]:
    candidates = []
    seen: set[str] = set()
    for row in module_rows:
        v = dict(zip(FEATURE_NAMES, row.features))
        if v["is_recursive"] or v["callee_instruction_count"] > 120 or v["cost_estimate"] > 180:
            continue
        key = action_key(row)
        if key in seen:
            continue
        seen.add(key)
        candidates.append(row)
    return sorted(candidates, key=greedy_candidate_score)[:GREEDY_MAX_CANDIDATES]


def rewrite_greedy_teacher_module(module: str, module_rows: list[Callsite]) -> tuple[dict, dict[str, int]]:
    selected_rows: list[Callsite] = []
    selected_keys: set[str] = set()
    baseline = rewrite_module(module, f"teacher_{GREEDY_TEACHER}_work", [])
    best_size = int(baseline["after_instruction_count"])

    for row in plausible_greedy_candidates(module_rows):
        key = action_key(row)
        if key in selected_keys:
            continue
        trial_rows = selected_rows + [row]
        trial = rewrite_module(module, f"teacher_{GREEDY_TEACHER}_work", trial_rows)
        trial_size = int(trial["after_instruction_count"])
        if trial["returncode"] == 0 and trial_size < best_size:
            selected_rows = trial_rows
            selected_keys.add(key)
            best_size = trial_size

    final_item = rewrite_module(module, f"teacher_{GREEDY_TEACHER}", selected_rows)
    actions = {action_key(row): int(action_key(row) in selected_keys) for row in module_rows}
    return final_item, actions


def rewrite_teacher_module(task: tuple[str, list[Callsite]]) -> dict:
    module, module_rows = task
    teacher_items: dict[str, dict] = {}
    teacher_sizes: dict[str, int] = {}
    teacher_actions: dict[str, dict[str, int]] = {}
    for teacher in TEACHERS:
        if teacher == GREEDY_TEACHER:
            continue
        inline_rows = [row for row in module_rows if teacher_action(teacher, row)]
        teacher_item = rewrite_module(module, f"teacher_{teacher}", inline_rows)
        teacher_items[teacher] = teacher_item
        teacher_sizes[teacher] = teacher_item["after_instruction_count"]
        inline_keys = {action_key(row) for row in inline_rows}
        teacher_actions[teacher] = {action_key(row): int(action_key(row) in inline_keys) for row in module_rows}

    greedy_item, greedy_actions = rewrite_greedy_teacher_module(module, module_rows)
    teacher_items[GREEDY_TEACHER] = greedy_item
    teacher_sizes[GREEDY_TEACHER] = greedy_item["after_instruction_count"]
    teacher_actions[GREEDY_TEACHER] = greedy_actions

    best = min(teacher_sizes, key=teacher_sizes.get)
    return {
        "module": module,
        "teachers": teacher_items,
        "teacher_instruction_counts": teacher_sizes,
        "teacher_actions": teacher_actions,
        "selected_teacher": {
            "teacher": best,
            "objective_value": teacher_sizes[best],
            "metric": "actual_rewritten_ir_instruction_count",
        },
    }


def rows_by_module(rows: list[Callsite]) -> dict[str, list[Callsite]]:
    grouped: dict[str, list[Callsite]] = {}
    for row in rows:
        grouped.setdefault(row.module, []).append(row)
    return grouped


def rewrite_teacher_policies(rows: list[Callsite]) -> dict:
    if REWRITE_DIR.exists():
        shutil.rmtree(REWRITE_DIR)
    report = {
        "metric": "actual_rewritten_ir_instruction_count",
        "note": "This is real LLVM IR rewriting via opt always-inline. It is per-callsite clone-based rewriting: selected callsites are cloned and marked alwaysinline.",
        "teachers": {},
        "teacher_instruction_counts": {},
        "teacher_actions": {},
        "selected_teachers": {},
    }
    module_reports = parallel_map(rewrite_teacher_module, sorted(rows_by_module(rows).items()))
    for module_report in module_reports:
        module = module_report["module"]
        report["teacher_instruction_counts"][module] = module_report["teacher_instruction_counts"]
        report["teacher_actions"][module] = module_report["teacher_actions"]
        report["selected_teachers"][module] = module_report["selected_teacher"]
        for teacher, item in module_report["teachers"].items():
            report["teachers"].setdefault(teacher, {})[module] = item
    (OUT / "ir_rewrite_teachers.json").write_text(json.dumps(report, indent=2), encoding="utf-8")
    return report


def rewrite_student_module(task: tuple[str, str, list[tuple[int, dict]], list[int]]) -> tuple[str, str, dict]:
    student, module, indexed_samples, predictions = task
    inline_rows = [
        Callsite(
            sample["module"],
            sample["caller"],
            sample["callee"],
            sample["call_line"],
            sample["features"],
        )
        for index, sample in indexed_samples
        if predictions[index]
    ]
    item = rewrite_module(module, f"student_{student}", inline_rows)
    return student, module, item


def rewrite_student_policies(dataset: dict, results: dict, report_path: Path | None = None, results_path: Path | None = None) -> dict:
    samples = dataset["samples"]
    module_samples: dict[str, list[tuple[int, dict]]] = {}
    for index, sample in enumerate(samples):
        module_samples.setdefault(sample["module"], []).append((index, sample))

    report = {"metric": "actual_rewritten_ir_instruction_count", "students": {}}
    student_tasks = [
        (student, module, indexed_samples, metrics["predictions"])
        for student, metrics in results["students"].items()
        for module, indexed_samples in sorted(module_samples.items())
    ]
    for student, module, item in parallel_map(rewrite_student_module, student_tasks):
        report["students"].setdefault(student, {})[module] = item

    module_count = len(module_samples)
    for student, metrics in results["students"].items():
        student_modules = report["students"].get(student, {})
        total = sum(item["after_instruction_count"] for item in student_modules.values())
        metrics["actual_ir_instruction_count"] = total
        metrics["avg_actual_ir_instruction_count"] = total / max(1, module_count)

    results["best_student"] = min(
        results["students"],
        key=lambda name: results["students"][name]["avg_actual_ir_instruction_count"],
    )
    (report_path or (OUT / "ir_rewrite_students.json")).write_text(json.dumps(report, indent=2), encoding="utf-8")
    (results_path or (OUT / "student_results.json")).write_text(json.dumps(results, indent=2), encoding="utf-8")
    return report


def compile_rewritten_native_sizes(results: dict | None = None) -> dict:
    """Compile rewritten LLVM IR to object files and measure native text size."""
    llc = llc_path()
    if REWRITTEN_NATIVE_DIR.exists():
        shutil.rmtree(REWRITTEN_NATIVE_DIR)
    REWRITTEN_NATIVE_DIR.mkdir(parents=True, exist_ok=True)
    report = {
        "metric": "native_text_size_from_rewritten_ir",
        "note": "Rewritten LLVM IR is compiled with llc -filetype=obj and measured with llvm-size/size. This evaluates the local rewrite artifacts, not a final linked executable.",
        "policies": {},
    }

    def compile_native_task(task: tuple[str, Path]) -> dict:
        policy, ir_path = task
        out_dir = REWRITTEN_NATIVE_DIR / policy
        out_dir.mkdir(parents=True, exist_ok=True)
        obj_path = out_dir / f"{ir_path.stem}.o"
        item = {
            "policy": policy,
            "module": ir_path.name,
            "ir": str(ir_path.relative_to(OUT.parent)),
            "object": str(obj_path.relative_to(OUT.parent)),
        }
        try:
            proc = run([llc, "-filetype=obj", str(ir_path), "-o", str(obj_path)], timeout=NATIVE_COMPILE_TIMEOUT_SECONDS)
        except subprocess.TimeoutExpired as exc:
            item["stderr"] = (
                f"llc timed out after {NATIVE_COMPILE_TIMEOUT_SECONDS}s"
                f" while compiling {ir_path.name}: {exc}"
            )
            return item
        if proc.returncode == 0:
            item["text_size"] = native_text_size(obj_path)
            item["object_size"] = obj_path.stat().st_size
        else:
            item["stderr"] = proc.stderr[-2000:]
        return item

    tasks: list[tuple[str, Path]] = []
    for policy_dir in sorted(REWRITE_DIR.iterdir()) if REWRITE_DIR.exists() else []:
        if not policy_dir.is_dir():
            continue
        policy = policy_dir.name
        if policy.endswith("_work"):
            continue
        if not (policy.startswith("student_") or policy.startswith("teacher_")):
            continue
        for ir_path in sorted(policy_dir.glob("*.ll")):
            if ir_path.name.endswith(".prepared.ll"):
                continue
            tasks.append((policy, ir_path))

    task_results = parallel_map(compile_native_task, tasks)
    policy_results: dict[str, list[dict]] = {}
    for item in task_results:
        policy_results.setdefault(item["policy"], []).append(item)

    for policy in sorted(policy_results):
        out_dir = REWRITTEN_NATIVE_DIR / policy
        print(f"native rewrite: {policy}", flush=True)
        items = policy_results[policy]
        compiled = [item for item in items if item.get("text_size") is not None]
        failed = [item for item in items if item.get("text_size") is None]

        text_sizes = [int(item["text_size"]) for item in compiled if item.get("text_size") is not None]
        object_sizes = [int(item["object_size"]) for item in compiled if item.get("object_size") is not None]
        summary = {
            "compiled": compiled,
            "failed": failed,
            "compiled_count": len(compiled),
            "failed_count": len(failed),
            "total_text_size": sum(text_sizes),
            "average_text_size": sum(text_sizes) / max(1, len(text_sizes)),
            "total_object_size": sum(object_sizes),
            "average_object_size": sum(object_sizes) / max(1, len(object_sizes)),
        }
        report["policies"][policy] = summary

        student_name = policy.removeprefix("student_")
        if results and student_name in results.get("students", {}):
            results["students"][student_name]["rewritten_native_total_text_size"] = summary["total_text_size"]
            results["students"][student_name]["rewritten_native_average_text_size"] = summary["average_text_size"]
            results["students"][student_name]["rewritten_native_compiled_count"] = summary["compiled_count"]
            results["students"][student_name]["rewritten_native_failed_count"] = summary["failed_count"]

    write_json_atomic(OUT / "rewritten_native_sizes.json", report)
    if results:
        write_json_atomic(OUT / "student_results.json", results)
    return report


def _subset_modules(results: dict, all_modules: list[str]) -> dict[str, list[str]]:
    split = results.get("split", {})
    train_modules = split.get("train_modules", [])
    test_modules = split.get("test_modules", [])
    return {
        "all": sorted(all_modules),
        "train": sorted(module for module in train_modules if module in all_modules),
        "test": sorted(module for module in test_modules if module in all_modules),
    }


def _mean(values: list[float]) -> float:
    return sum(values) / max(1, len(values))


def _reduction_pct(baseline: float, value: float) -> float:
    if baseline <= 0:
        return 0.0
    return (baseline - value) / baseline * 100.0


def source_group(module: str) -> str:
    if "generated_inlining" in module:
        return "generated"
    if module.startswith("real_"):
        return "imported_ir"
    return "real_source"


def _native_policy_summary(native_rewrite: dict, policy: str, modules: list[str]) -> dict:
    wanted = set(modules)
    policy_report = native_rewrite.get("policies", {}).get(policy, {})
    compiled = [
        item
        for item in policy_report.get("compiled", [])
        if item.get("module") in wanted and item.get("text_size") is not None
    ]
    text_sizes = [int(item["text_size"]) for item in compiled]
    object_sizes = [int(item.get("object_size", 0)) for item in compiled]
    return {
        "compiled_count": len(compiled),
        "total_text_size": sum(text_sizes),
        "average_text_size": _mean(text_sizes),
        "total_object_size": sum(object_sizes),
        "average_object_size": _mean(object_sizes),
    }


def _rewrite_summary_for_modules(
    modules: list[str],
    teacher_rewrite: dict,
    student_rewrite: dict,
    native_rewrite: dict,
) -> dict:
    never_ir = [
        teacher_rewrite["teachers"]["never_inline"][module]["after_instruction_count"]
        for module in modules
    ]
    selected_ir = [
        teacher_rewrite["selected_teachers"][module]["objective_value"]
        for module in modules
    ]
    never_avg = _mean(never_ir)
    selected_avg = _mean(selected_ir)
    never_native = _native_policy_summary(native_rewrite, "teacher_never_inline", modules)
    summary = {
        "module_count": len(modules),
        "modules": modules,
        "never_inline": {
            "total_ir_instruction_count": sum(never_ir),
            "average_ir_instruction_count": never_avg,
            **never_native,
        },
        "selected_teacher": {
            "total_ir_instruction_count": sum(selected_ir),
            "average_ir_instruction_count": selected_avg,
            "ir_reduction_vs_never_inline_pct": _reduction_pct(never_avg, selected_avg),
        },
        "students": {},
    }

    for student, modules_report in student_rewrite.get("students", {}).items():
        ir_counts = [
            modules_report[module]["after_instruction_count"]
            for module in modules
            if module in modules_report
        ]
        avg_ir = _mean(ir_counts)
        native = _native_policy_summary(native_rewrite, f"student_{student}", modules)
        summary["students"][student] = {
            "total_ir_instruction_count": sum(ir_counts),
            "average_ir_instruction_count": avg_ir,
            "ir_reduction_vs_never_inline_pct": _reduction_pct(never_avg, avg_ir),
            "ir_gap_vs_selected_teacher": avg_ir - selected_avg,
            **native,
            "native_text_reduction_vs_never_inline_pct": _reduction_pct(
                never_native["average_text_size"],
                native["average_text_size"],
            ),
        }
    return summary


def add_split_summaries(
    results: dict,
    teacher_rewrite: dict,
    student_rewrite: dict,
    native_rewrite: dict,
) -> dict:
    """Attach full/train/hold-out rewrite summaries to student_results.json."""
    all_modules = sorted(teacher_rewrite.get("selected_teachers", {}))
    module_sets = _subset_modules(results, all_modules)
    summaries: dict[str, dict] = {}

    for split_name, modules in module_sets.items():
        split_summary = _rewrite_summary_for_modules(modules, teacher_rewrite, student_rewrite, native_rewrite)
        grouped: dict[str, list[str]] = {}
        for module in modules:
            grouped.setdefault(source_group(module), []).append(module)
        split_summary["by_source_group"] = {
            group: _rewrite_summary_for_modules(sorted(group_modules), teacher_rewrite, student_rewrite, native_rewrite)
            for group, group_modules in sorted(grouped.items())
        }
        summaries[split_name] = split_summary

    results["rewrite_summaries"] = summaries
    if summaries.get("test", {}).get("students"):
        results["best_student_by_holdout_ir"] = min(
            summaries["test"]["students"],
            key=lambda name: summaries["test"]["students"][name]["average_ir_instruction_count"],
        )
    write_json_atomic(OUT / "student_results.json", results)
    return results
