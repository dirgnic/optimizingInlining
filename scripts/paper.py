"""Write compact generated summaries used while checking paper artifacts."""

from __future__ import annotations

from statistics import mean, median

from data import OUT, ROOT


def reduction_pct(baseline: float, value: float) -> float:
    if baseline <= 0:
        return 0.0
    return (baseline - value) / baseline * 100.0


def write_feature_rationale() -> None:
    text = """# Feature Rationale

The first eleven features follow the public MLGO inlining-for-size feature shape:
caller/callee basic-block structure, caller/callee users, callsite height, cost estimate,
number of constant parameters, and global call-graph edge/node counts.

Source attribution:
- `MLGO: a Machine Learning Guided Compiler Optimizations Framework`, arXiv:2101.04808.
- `Offline Imitation Learning from Multiple Baselines with Applications to Compiler Optimization`,
  Marinov, Agarwal, Trofin. This is the paper behind the BC-Max style teacher-selection setup.

Local additions:
- `caller_instruction_count`, `callee_instruction_count`: readable IR-size proxies for the toy objective.
- `caller_call_count`, `callee_call_count`: captures whether inlining would expose or duplicate additional calls.
- `is_recursive`: prevents unbounded recursive expansion in simple teacher policies.
"""
    (OUT / "feature_rationale.md").write_text(text, encoding="utf-8")


def write_paper(
    results: dict,
    dataset: dict,
    compile_report: dict,
    native_report: dict | None = None,
    teacher_rewrite: dict | None = None,
    student_rewrite: dict | None = None,
) -> None:
    paper_dir = ROOT / "paper"
    modules = list(dataset["selected_teachers"])
    never_inline_counts = []
    selected_teacher_counts = []
    if teacher_rewrite:
        for module in modules:
            never_inline_counts.append(teacher_rewrite["teachers"]["never_inline"][module]["after_instruction_count"])
            selected_teacher_counts.append(dataset["selected_teachers"][module]["objective_value"])
    baseline_avg = mean(never_inline_counts) if never_inline_counts else 0.0
    selected_teacher_avg = mean(selected_teacher_counts) if selected_teacher_counts else 0.0

    rows = [
        "| Model | Teacher-label match | Inline rate | Avg rewritten IR instructions | Reduction vs never-inline | Reduction vs best teacher |",
        "|---|---:|---:|---:|---:|---:|",
    ]
    for name, metrics in results["students"].items():
        match = metrics["teacher_label_match"]
        actual = metrics.get("avg_actual_ir_instruction_count", metrics["avg_simulated_size"])
        inline_rate = metrics.get("inline_rate", metrics["inline_count"] / max(1, len(dataset["samples"])))
        rows.append(
            f"| {name} | {match:.3f} | {inline_rate * 100.0:.1f}% | {actual:.2f} | "
            f"{reduction_pct(baseline_avg, actual):.2f}% | {reduction_pct(selected_teacher_avg, actual):.2f}% |"
        )

    teachers = ["| Module | Selected teacher | Rewritten IR instructions | Reduction vs never-inline |", "|---|---|---:|---:|"]
    for module, info in dataset["selected_teachers"].items():
        baseline = teacher_rewrite["teachers"]["never_inline"][module]["after_instruction_count"] if teacher_rewrite else info["objective_value"]
        teachers.append(
            f"| {module} | {info['teacher']} | {info['objective_value']:.0f} | "
            f"{reduction_pct(baseline, info['objective_value']):.2f}% |"
        )

    trace_module = max(
        dataset["selected_teachers"],
        key=lambda module: len([s for s in dataset["samples"] if s["module"] == module]),
    ) if dataset["selected_teachers"] else "n/a"
    native_lines = []
    if native_report:
        native_lines = ["| Compiler mode | Total text size | Average text size |", "|---|---:|---:|"]
        for mode, metrics in native_report["common_summary"].items():
            native_lines.append(
                f"| {mode} | {metrics['total_text_size']} | {metrics['average_text_size']:.2f} |"
            )

    text = f"""# Offline Imitation Learning for LLVM Inlining

This generated Markdown summary mirrors the LaTeX paper but stays shorter.
The full paper source is `paper/main.tex`.

## Pipeline

```text
C++ source -> Clang -O0 -fno-inline -> LLVM IR -> callsite features
           -> teacher policies -> opt-based IR rewrite -> best teacher per module
           -> labeled dataset -> student classifiers -> opt-based IR rewrite
```

Code source: DCMTK source plus optional imported LLVM IR modules.

Copied source subset: 18 DCMTK `config/tests/*.cc` files.
Compiled sources: {len(compile_report['compiled'])}.
Imported real-IR modules: {len(compile_report.get('imported_ir', []))}.
Failed sources: {len(compile_report['failed'])}.
Extracted training samples: {len(dataset['samples'])}.

Primary evaluation metric: percentage reduction in final LLVM IR instruction count relative to a fixed baseline policy.
Teacher-label match is reported only as a diagnostic for the imitation step.

Real native baseline measurements are written to `out/native_baselines.json`.
Those measurements compile the standalone sources to object files and compare
the `__text`/`.text` section size for `-Oz`, `-Oz -fno-inline`, and
`-O0 -fno-inline`.

## Native Clang Baselines

{chr(10).join(native_lines)}

## Selected Teachers

{chr(10).join(teachers)}

## Student Models After IR Rewrite

{chr(10).join(rows)}

Best student by rewritten IR instruction count: **{results['best_student']}**.

Mean reduction vs never-inline baseline: **{reduction_pct(baseline_avg, mean(metrics.get('avg_actual_ir_instruction_count', metrics['avg_simulated_size']) for metrics in results['students'].values())):.2f}%**.
Median reduction vs never-inline baseline: **{median([reduction_pct(baseline_avg, metrics.get('avg_actual_ir_instruction_count', metrics['avg_simulated_size'])) for metrics in results['students'].values()]):.2f}%**.

The teacher-label match column is an imitation metric against selected teacher labels,
not a comparison with LLVM's built-in inlining heuristic.

## Trace

The file `out/callgraph_trace.md` shows a step-by-step example for `{trace_module}`.
Additional PNG result charts and per-module call-graph GIFs are listed in
`out/visual_index.md`.
"""
    (paper_dir / "model_paper.md").write_text(text, encoding="utf-8")
