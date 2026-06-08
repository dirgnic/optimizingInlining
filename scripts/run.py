from __future__ import annotations

import argparse

from build import compile_demo_sources, compile_native_baselines, compile_to_ir, source_files
from data import OUT, ROOT
from graph import changing_callgraph_trace
from ir import extract_features
from learn import train_students
from paper import write_feature_rationale, write_paper
from real_signal_run import run_real_signal_pipeline
from rewrite import (
    add_split_summaries,
    compile_rewritten_native_sizes,
    rewrite_student_policies,
    rewrite_teacher_policies,
)
from secondary_real_subset import write_secondary_real_subset
from teach import make_bc_dataset
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
        report = compile_demo_sources()
        print("demo")
        print("----")
        for item in report["compiled"]:
            print(f"{item['source']} -> {item['ir']}")
        if report["failed"]:
            print(f"failed: {len(report['failed'])}")
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
