from __future__ import annotations

import json
import shutil
from pathlib import Path

import matplotlib.pyplot as plt
import rewrite as rewrite_module
from data import OUT
from learn import train_students
from rewrite import rewrite_student_policies
from secondary_real_subset import is_real_source_module, reduction


DEFAULT_LIMIT = 30


def load_json(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def run_dir_for_limit(limit: int | None) -> Path:
    return OUT / ("real_signal_run_all" if limit is None else "real_signal_run")


def select_modules(limit: int | None, teacher_rewrite: dict) -> list[str]:
    rows = []
    for module, counts in teacher_rewrite["teacher_instruction_counts"].items():
        if not is_real_source_module(module):
            continue
        never_size = counts["never_inline"]
        selected_size = teacher_rewrite["selected_teachers"][module]["objective_value"]
        rows.append((reduction(never_size, selected_size), module))
    rows.sort(reverse=True)
    if limit is None:
        return [module for _, module in rows]
    return [module for _, module in rows[:limit]]


def subset_dataset(
    full_dataset: dict,
    teacher_rewrite: dict,
    modules: list[str],
    limit: int | None,
) -> dict:
    selected = set(modules)
    samples = [sample for sample in full_dataset["samples"] if sample["module"] in selected]
    return {
        "feature_names": full_dataset["feature_names"],
        "teachers": full_dataset["teachers"],
        "teacher_sizes": {
            module: teacher_rewrite["teacher_instruction_counts"][module]
            for module in modules
        },
        "selected_teachers": {
            module: teacher_rewrite["selected_teachers"][module]
            for module in modules
        },
        "samples": samples,
        "subset": {
            "name": "real_signal_all" if limit is None else f"real_signal_top{limit}",
            "selection_rule": (
                "real-source modules only, sorted by selected-teacher IR "
                "reduction relative to never_inline"
            ),
            "module_count": len(modules),
            "modules": modules,
        },
    }


def average(values: list[float]) -> float:
    return sum(values) / max(1, len(values))


def summarize_modules(
    modules: list[str],
    teacher_rewrite: dict,
    student_rewrite: dict,
) -> dict:
    never = [
        teacher_rewrite["teacher_instruction_counts"][module]["never_inline"]
        for module in modules
    ]
    selected = [
        teacher_rewrite["selected_teachers"][module]["objective_value"]
        for module in modules
    ]
    never_avg = average(never)
    selected_avg = average(selected)
    students = {}
    for student, report in student_rewrite["students"].items():
        sizes = [report[module]["after_instruction_count"] for module in modules if module in report]
        avg_size = average(sizes)
        students[student] = {
            "total_ir": sum(sizes),
            "average_ir": avg_size,
            "reduction_vs_never_inline_pct": reduction(never_avg, avg_size),
            "gap_vs_selected_teacher": avg_size - selected_avg,
        }
    best_student = max(students, key=lambda name: students[name]["reduction_vs_never_inline_pct"]) if students else None
    return {
        "module_count": len(modules),
        "never_inline_total_ir": sum(never),
        "never_inline_average_ir": never_avg,
        "selected_teacher_total_ir": sum(selected),
        "selected_teacher_average_ir": selected_avg,
        "selected_teacher_reduction_pct": reduction(never_avg, selected_avg),
        "best_student": best_student,
        "students": students,
    }


def write_summary_plot(summary: dict, run_dir: Path) -> None:
    labels = ["All real-source", "Held-out"]
    teacher = [
        summary["all"]["selected_teacher_reduction_pct"],
        summary["test"]["selected_teacher_reduction_pct"],
    ]
    best_all = summary["all"]["best_student"]
    best_test = summary["test"]["best_student"]
    student = [
        summary["all"]["students"][best_all]["reduction_vs_never_inline_pct"],
        summary["test"]["students"][best_test]["reduction_vs_never_inline_pct"],
    ]
    x_positions = range(len(labels))
    width = 0.34

    plt.rcParams.update({
        "font.size": 13,
        "axes.titlesize": 17,
        "axes.labelsize": 14,
        "xtick.labelsize": 13,
        "ytick.labelsize": 13,
        "legend.fontsize": 12,
    })
    fig, ax = plt.subplots(figsize=(6.8, 3.5))
    left = [x - width / 2 for x in x_positions]
    right = [x + width / 2 for x in x_positions]
    ax.bar(left, teacher, width=width, color="#5c84a1", label="selected teacher")
    ax.bar(right, student, width=width, color="#df8427", label="best student")
    ax.axhline(0, color="#777777", linewidth=0.8)
    ax.set_xticks(list(x_positions))
    ax.set_xticklabels(labels)
    ax.set_ylabel("IR reduction (%)")
    ax.set_title("Isolated Real-Source Run")
    ax.set_ylim(0, max(teacher + student) + 0.8)
    ax.legend(loc="upper right", frameon=True)
    for x, value in zip(left, teacher):
        ax.text(x, value + 0.06, f"{value:.2f}%", ha="center", va="bottom", fontsize=12)
    for x, value in zip(right, student):
        ax.text(x, value + 0.06, f"{value:.2f}%", ha="center", va="bottom", fontsize=12)
    fig.tight_layout(pad=0.6)
    fig.savefig(run_dir / "summary_plot.pdf", bbox_inches="tight")
    fig.savefig(run_dir / "summary_plot.png", dpi=180, bbox_inches="tight")
    plt.close(fig)


def run_real_signal_pipeline(limit: int | None = DEFAULT_LIMIT) -> dict:
    run_dir = run_dir_for_limit(limit)
    run_dir.mkdir(parents=True, exist_ok=True)
    full_dataset = load_json(OUT / "bc_dataset.json")
    teacher_rewrite = load_json(OUT / "ir_rewrite_teachers.json")

    modules = select_modules(limit, teacher_rewrite)
    dataset = subset_dataset(full_dataset, teacher_rewrite, modules, limit)
    dataset_path = run_dir / "bc_dataset.json"
    results_path = run_dir / "student_results.json"
    rewrite_path = run_dir / "ir_rewrite_students.json"

    dataset_path.write_text(json.dumps(dataset, indent=2), encoding="utf-8")
    results = train_students(dataset, output_path=results_path)

    old_rewrite_dir = rewrite_module.REWRITE_DIR
    rewrite_module.REWRITE_DIR = run_dir / "rewritten_ir"
    if rewrite_module.REWRITE_DIR.exists():
        shutil.rmtree(rewrite_module.REWRITE_DIR)
    try:
        student_rewrite = rewrite_student_policies(
            dataset,
            results,
            report_path=rewrite_path,
            results_path=results_path,
        )
    finally:
        rewrite_module.REWRITE_DIR = old_rewrite_dir

    split = results["split"]
    train_modules = [module for module in split["train_modules"] if module in modules]
    test_modules = [module for module in split["test_modules"] if module in modules]
    summary = {
        "metric": "actual_rewritten_ir_instruction_count",
        "note": "Separate real-source signal run. Main thesis artifacts are not overwritten.",
        "selection_rule": dataset["subset"]["selection_rule"],
        "all": summarize_modules(modules, teacher_rewrite, student_rewrite),
        "train": summarize_modules(train_modules, teacher_rewrite, student_rewrite),
        "test": summarize_modules(test_modules, teacher_rewrite, student_rewrite),
        "split": split,
        "paths": {
            "dataset": str(dataset_path.relative_to(OUT.parent)),
            "student_results": str(results_path.relative_to(OUT.parent)),
            "student_rewrites": str(rewrite_path.relative_to(OUT.parent)),
        },
    }
    (run_dir / "summary.json").write_text(json.dumps(summary, indent=2), encoding="utf-8")
    write_summary_plot(summary, run_dir)
    return summary


def main() -> None:
    summary = run_real_signal_pipeline()
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
    print(f"summary JSON:     {run_dir_for_limit(DEFAULT_LIMIT) / 'summary.json'}")


if __name__ == "__main__":
    main()
