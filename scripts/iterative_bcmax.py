from __future__ import annotations

import json
import shutil
from pathlib import Path

from data import Callsite, FEATURE_NAMES, OUT
from ir import extract_features
from learn import train_students
from rewrite import action_key, rewrite_student_policies
from teach import TEACHERS


ITER_DIR = OUT / "iterative_bcmax"


def load_json(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def row_key(row: Callsite) -> tuple[str, str, str, str]:
    return (row.module, row.caller, row.callee, row.call_line)


def sample_key(sample: dict) -> str:
    return f"{sample['caller']}\t{sample['callee']}\t{sample['call_line']}"


def build_dataset(
    rows: list[Callsite],
    candidates: dict[str, dict[str, dict]],
    round_index: int,
) -> dict:
    by_module: dict[str, list[Callsite]] = {}
    for row in rows:
        by_module.setdefault(row.module, []).append(row)

    selected = {}
    labels = {}
    sizes = {}
    for module, module_rows in by_module.items():
        module_candidates = candidates[module]
        module_sizes = {name: data["size"] for name, data in module_candidates.items()}
        best = min(module_sizes, key=module_sizes.get)
        sizes[module] = module_sizes
        selected[module] = {
            "teacher": best,
            "objective_value": module_sizes[best],
            "metric": "actual_rewritten_ir_instruction_count",
        }
        action_map = module_candidates[best]["actions"]
        for row in module_rows:
            labels[row_key(row)] = int(action_map.get(action_key(row), 0))

    samples = [
        {
            "module": row.module,
            "caller": row.caller,
            "callee": row.callee,
            "call_line": row.call_line,
            "features": row.features,
            "label": labels[row_key(row)],
            "selected_teacher": selected[row.module]["teacher"],
        }
        for row in rows
    ]
    return {
        "feature_names": FEATURE_NAMES,
        "teachers": sorted({name for module in candidates.values() for name in module}),
        "teacher_sizes": sizes,
        "selected_teachers": selected,
        "samples": samples,
        "iteration": round_index,
    }


def student_actions(dataset: dict, predictions: list[int]) -> dict[str, dict[str, int]]:
    actions: dict[str, dict[str, int]] = {}
    for index, sample in enumerate(dataset["samples"]):
        actions.setdefault(sample["module"], {})[sample_key(sample)] = int(predictions[index])
    return actions


def average(values: list[float]) -> float:
    return sum(values) / max(1, len(values))


def reduction(baseline: float, value: float) -> float:
    return (baseline - value) / baseline * 100.0 if baseline else 0.0


def summarize_round(
    round_index: int,
    dataset: dict,
    results: dict,
    student_rewrite: dict,
    candidates: dict[str, dict[str, dict]],
) -> dict:
    test_modules = results["split"]["test_modules"]
    never = average([candidates[module]["never_inline"]["size"] for module in test_modules])
    selected = average([dataset["selected_teachers"][module]["objective_value"] for module in test_modules])
    student_metrics = {}
    for student, module_report in student_rewrite["students"].items():
        avg_ir = average([module_report[module]["after_instruction_count"] for module in test_modules])
        student_metrics[student] = {
            "average_ir": avg_ir,
            "ir_reduction_vs_never_inline_pct": reduction(never, avg_ir),
            "gap_vs_selected_teacher": avg_ir - selected,
            "test_match": results["students"][student].get("test_teacher_label_match"),
        }
    best_student = min(student_metrics, key=lambda name: student_metrics[name]["average_ir"])
    return {
        "iteration": round_index,
        "candidate_policy_count": len(next(iter(candidates.values()))),
        "test_module_count": len(test_modules),
        "never_inline_average_ir": never,
        "selected_policy_average_ir": selected,
        "selected_policy_reduction_pct": reduction(never, selected),
        "best_student": best_student,
        "best_student_average_ir": student_metrics[best_student]["average_ir"],
        "best_student_reduction_pct": student_metrics[best_student]["ir_reduction_vs_never_inline_pct"],
        "students": student_metrics,
    }


def main(rounds: int = 3) -> None:
    ITER_DIR.mkdir(parents=True, exist_ok=True)
    rows = extract_features()
    teacher_rewrite = load_json(OUT / "ir_rewrite_teachers.json")
    fixed_split = load_json(OUT / "student_results.json")["split"]
    for name in ("bc_dataset.json", "student_results.json", "ir_rewrite_students.json"):
        source = OUT / name
        if source.exists():
            shutil.copy2(source, ITER_DIR / f"one_shot_{name}")

    candidates: dict[str, dict[str, dict]] = {}
    for module, counts in teacher_rewrite["teacher_instruction_counts"].items():
        candidates[module] = {}
        for teacher in TEACHERS:
            candidates[module][teacher] = {
                "size": counts[teacher],
                "actions": teacher_rewrite["teacher_actions"][module][teacher],
            }

    summaries = []
    added_students = []
    for round_index in range(rounds):
        dataset = build_dataset(rows, candidates, round_index)
        (ITER_DIR / f"bc_dataset_round_{round_index}.json").write_text(json.dumps(dataset, indent=2), encoding="utf-8")
        results = train_students(dataset, fixed_split=fixed_split)
        student_rewrite = rewrite_student_policies(dataset, results)

        round_summary = summarize_round(round_index, dataset, results, student_rewrite, candidates)
        summaries.append(round_summary)
        best = round_summary["best_student"]
        added_name = f"iter{round_index}_{best}"
        added_students.append(added_name)

        actions_by_module = student_actions(dataset, results["students"][best]["predictions"])
        for module, module_report in student_rewrite["students"][best].items():
            candidates[module][added_name] = {
                "size": module_report["after_instruction_count"],
                "actions": actions_by_module.get(module, {}),
            }

        shutil.copy2(OUT / "student_results.json", ITER_DIR / f"student_results_round_{round_index}.json")
        shutil.copy2(OUT / "ir_rewrite_students.json", ITER_DIR / f"ir_rewrite_students_round_{round_index}.json")

    payload = {
        "rounds": summaries,
        "added_student_policies": added_students,
        "note": "Each round adds the previous round's best held-out student as a candidate policy, rebuilds selected labels from measured rewritten IR, and retrains on the fixed module split.",
    }
    (ITER_DIR / "summary.json").write_text(json.dumps(payload, indent=2), encoding="utf-8")
    print(json.dumps(payload, indent=2))


if __name__ == "__main__":
    main()
