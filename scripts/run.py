from __future__ import annotations

import argparse
import json
from dataclasses import asdict
from pathlib import Path

from build import compile_demo_sources, compile_native_baselines, compile_to_ir, source_files
from data import OUT, ROOT
from graph import changing_callgraph_trace
from ir import extract_features, extract_features_from_paths
from learn import train_students
from paper import write_feature_rationale, write_paper
from real_signal_run import run_real_signal_pipeline
from rewrite import (
    add_split_summaries,
    compile_rewritten_native_sizes,
    local_call_count,
    opt_path,
    prepare_policy_ir,
    run,
    rewrite_student_policies,
    rewrite_teacher_policies,
    total_instructions,
)
from secondary_real_subset import write_secondary_real_subset
from teach import make_bc_dataset, teacher_action
from visual import write_visuals


def all_pipeline() -> None:
    OUT.mkdir(exist_ok=True)
    sources = source_files()
    compile_report = compile_to_ir(sources)
    native_report = compile_native_baselines(sources)
    rows = extract_features()
    teacher_rewrite = rewrite_teacher_policies(rows)
    dataset = make_bc_dataset(rows, teacher_rewrite)
    results = train_students(dataset)
    student_rewrite = rewrite_student_policies(dataset, results)
    native_rewrite = compile_rewritten_native_sizes(results)
    add_split_summaries(results, teacher_rewrite, student_rewrite, native_rewrite)
    traces = changing_callgraph_trace(rows, dataset)
    write_feature_rationale()
    write_paper(results, dataset, compile_report, native_report, teacher_rewrite, student_rewrite)
    write_visuals(compile_report, dataset, results, native_report, traces)
    print("summary")
    print("-------")
    print(f"compiled sources: {len(compile_report['compiled'])}")
    print(f"imported IR:      {len(compile_report.get('imported_ir', []))}")
    print(f"failed sources:   {len(compile_report['failed'])}")
    print(f"callsites:        {len(rows)}")
    print(f"best student:     {results['best_student']}")
    print(f"rewritten IR:     {ROOT / 'out' / 'ir_rewrite_students.json'}")
    print(f"native baselines: {ROOT / 'out' / 'native_baselines.json'}")
    print(f"rewritten native: {ROOT / 'out' / 'rewritten_native_sizes.json'}")
    print(f"paper summary:    {ROOT / 'paper' / 'model_paper.md'}")
    print(f"trace:            {OUT / 'callgraph_trace.md'}")
    print(f"visuals:          {OUT / 'visual_index.md'}")


def relative(path: Path) -> str:
    return str(path.relative_to(ROOT))


def sanitize_demo_ir(path: Path) -> None:
    text = path.read_text(encoding="utf-8", errors="ignore")
    text = text.replace(str(ROOT) + "/", "")
    text = text.replace(str(ROOT), ".")
    path.write_text(text, encoding="utf-8")


def demo_pipeline() -> None:
    report = compile_demo_sources()
    demo_dir = OUT / "demo"
    rewrite_dir = demo_dir / "rewritten"
    rewrite_dir.mkdir(parents=True, exist_ok=True)
    ir_paths = [ROOT / item["ir"] for item in report["compiled"]]
    rows = extract_features_from_paths(ir_paths, demo_dir / "demo_features.json")
    rows_by_module: dict[str, list] = {}
    for row in rows:
        rows_by_module.setdefault(row.module, []).append(row)

    decision_report = {
        "command": "python3 scripts/run.py demo",
        "order": (
            "demo IR files are sorted by filename; functions are visited in textual "
            "LLVM IR definition order; call instructions are scanned top-to-bottom "
            "inside each function"
        ),
        "teacher": "small_callee",
        "compiled": report["compiled"],
        "failed": report["failed"],
        "modules": {},
    }

    for module_path in ir_paths:
        module_rows = rows_by_module.get(module_path.name, [])
        inline_rows = [row for row in module_rows if teacher_action("small_callee", row)]
        prepared = rewrite_dir / f"{module_path.stem}.prepared.ll"
        rewritten = rewrite_dir / module_path.name
        stats = prepare_policy_ir(module_path, prepared, inline_rows)
        proc = run(
            [
                opt_path(),
                "-S",
                "-passes=always-inline,globaldce,instcombine,simplifycfg,dce",
                str(prepared),
                "-o",
                str(rewritten),
            ]
        )
        if proc.returncode != 0:
            proc = run([opt_path(), "-S", "-passes=always-inline,globaldce", str(prepared), "-o", str(rewritten)])
        if proc.returncode == 0:
            sanitize_demo_ir(rewritten)

        item = {
            "input_ir": relative(module_path),
            "prepared_ir": relative(prepared),
            "rewritten_ir": relative(rewritten),
            "callsites": [
                {
                    **asdict(row),
                    "order_index": index,
                    "decision": "inline" if row in inline_rows else "keep",
                }
                for index, row in enumerate(module_rows)
            ],
            "rewrite": {
                **stats,
                "returncode": proc.returncode,
                "stderr": proc.stderr[-2000:],
                "before_instruction_count": total_instructions(module_path),
                "before_local_call_count": local_call_count(module_path),
            },
        }
        if proc.returncode == 0:
            item["rewrite"]["after_instruction_count"] = total_instructions(rewritten)
            item["rewrite"]["after_local_call_count"] = local_call_count(rewritten)
        decision_report["modules"][module_path.name] = item

    (demo_dir / "demo_decisions.json").write_text(json.dumps(decision_report, indent=2), encoding="utf-8")

    inline_total = sum(
        1
        for module in decision_report["modules"].values()
        for callsite in module["callsites"]
        if callsite["decision"] == "inline"
    )
    print("demo")
    print("----")
    print(f"compiled demo modules: {len(report['compiled'])}")
    print(f"failed demo modules:   {len(report['failed'])}")
    print(f"demo callsites:        {len(rows)}")
    print(f"inline decisions:      {inline_total}")
    print("order: sorted .ll files -> LLVM function definition order -> call-line order")
    for module, item in decision_report["modules"].items():
        rewrite = item["rewrite"]
        print(
            f"{module}: calls={len(item['callsites'])}, inline={sum(1 for c in item['callsites'] if c['decision'] == 'inline')}, "
            f"local calls {rewrite['before_local_call_count']} -> {rewrite.get('after_local_call_count', rewrite['before_local_call_count'])}, "
            f"instr {rewrite['before_instruction_count']} -> {rewrite.get('after_instruction_count', rewrite['before_instruction_count'])}"
        )
        for callsite in item["callsites"][:5]:
            print(
                f"  [{callsite['order_index']:02d}] {callsite['caller']} -> {callsite['callee']}: {callsite['decision']}"
            )
    print(f"decisions JSON:        {demo_dir / 'demo_decisions.json'}")
    print(f"rewritten IR:          {rewrite_dir}")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "command",
        choices=[
            "compile",
            "native",
            "extract",
            "train",
            "trace",
            "demo",
            "real-subset",
            "real-signal-run",
            "all",
        ],
    )
    parser.add_argument(
        "--real-signal-limit",
        default="30",
        help="Module limit for real-signal-run; use 'all' for all real-source modules.",
    )
    args = parser.parse_args()
    OUT.mkdir(exist_ok=True)
    if args.command == "compile":
        compile_to_ir(source_files())
    elif args.command == "native":
        compile_native_baselines(source_files())
    elif args.command == "extract":
        extract_features()
    elif args.command == "train":
        rows = extract_features()
        teacher_rewrite = rewrite_teacher_policies(rows)
        dataset = make_bc_dataset(rows, teacher_rewrite)
        results = train_students(dataset)
        student_rewrite = rewrite_student_policies(dataset, results)
        native_rewrite = compile_rewritten_native_sizes(results)
        add_split_summaries(results, teacher_rewrite, student_rewrite, native_rewrite)
    elif args.command == "trace":
        rows = extract_features()
        teacher_rewrite = rewrite_teacher_policies(rows)
        changing_callgraph_trace(rows, make_bc_dataset(rows, teacher_rewrite))
    elif args.command == "demo":
        demo_pipeline()
    elif args.command == "real-subset":
        result = write_secondary_real_subset()
        print("secondary real-source subset")
        print("----------------------------")
        print(f"available real-source modules: {result['available_real_source_modules']}")
        print(f"selected modules:              {result['selected_module_count']}")
        print(f"never-inline total IR:         {result['never_inline_total_ir']}")
        print(f"selected-teacher total IR:     {result['selected_teacher_total_ir']}")
        print(
            "selected-teacher reduction:   "
            f"{result['selected_teacher_reduction_pct']:.2f}%"
        )
        print(
            f"best student:                 {result['best_student']} "
            f"({result['best_student_reduction_pct']:.2f}%)"
        )
        print(f"proof JSON:                    {OUT / 'secondary_real_subset.json'}")
    elif args.command == "real-signal-run":
        limit = None if args.real_signal_limit == "all" else int(args.real_signal_limit)
        summary = run_real_signal_pipeline(limit=limit)
        all_summary = summary["all"]
        test_summary = summary["test"]
        best_all = all_summary["best_student"]
        best_test = test_summary["best_student"]
        print("real-signal pipeline")
        print("--------------------")
        print(f"all modules:      {all_summary['module_count']}")
        print(f"teacher all red:  {all_summary['selected_teacher_reduction_pct']:.2f}%")
        print(
            f"best all student: {best_all} "
            f"({all_summary['students'][best_all]['reduction_vs_never_inline_pct']:.2f}%)"
        )
        print(f"test modules:     {test_summary['module_count']}")
        print(f"teacher test red: {test_summary['selected_teacher_reduction_pct']:.2f}%")
        print(
            f"best test student:{best_test} "
            f"({test_summary['students'][best_test]['reduction_vs_never_inline_pct']:.2f}%)"
        )
        output_dir = "real_signal_run_all" if limit is None else "real_signal_run"
        print(f"summary JSON:     {OUT / output_dir / 'summary.json'}")
    else:
        all_pipeline()


if __name__ == "__main__":
    main()
