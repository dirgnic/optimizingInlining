"""Write a secondary diagnostic summary for real-source modules."""

from __future__ import annotations

import json
from pathlib import Path

from data import OUT


def reduction(baseline: float, value: float) -> float:
    return (baseline - value) / baseline * 100.0 if baseline else 0.0


def is_real_source_module(module: str) -> bool:
    return "generated_inlining_generated_" not in module


def load_json(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def write_secondary_real_subset(limit: int = 30) -> dict:
    # Select the top real-source modules by selected-teacher reduction.
    teacher_rewrite = load_json(OUT / "ir_rewrite_teachers.json")
    student_rewrite = load_json(OUT / "ir_rewrite_students.json")

    teacher_counts = teacher_rewrite["teacher_instruction_counts"]
    selected_teachers = teacher_rewrite["selected_teachers"]
    students = student_rewrite["students"]

    rows = []
    for module in sorted(teacher_counts):
        if not is_real_source_module(module):
            continue
        never_size = teacher_counts[module]["never_inline"]
        selected = selected_teachers[module]
        selected_size = selected["objective_value"]

        best_student = None
        best_student_size = None
        best_student_reduction = None
        for student_name, module_reports in students.items():
            report = module_reports.get(module)
            if not report:
                continue
            student_size = report["after_instruction_count"]
            student_reduction = reduction(never_size, student_size)
            if best_student_reduction is None or student_reduction > best_student_reduction:
                best_student = student_name
                best_student_size = student_size
                best_student_reduction = student_reduction

        rows.append(
            {
                "module": module,
                "never_inline_ir": never_size,
                "selected_teacher": selected["teacher"],
                "selected_teacher_ir": selected_size,
                "selected_teacher_reduction_pct": reduction(never_size, selected_size),
                "best_student": best_student,
                "best_student_ir": best_student_size,
                "best_student_reduction_pct": best_student_reduction,
            }
        )

    rows.sort(key=lambda row: row["selected_teacher_reduction_pct"], reverse=True)
    subset = rows[:limit]

    never_total = sum(row["never_inline_ir"] for row in subset)
    selected_total = sum(row["selected_teacher_ir"] for row in subset)

    student_totals = {}
    for student_name, module_reports in students.items():
        total = sum(module_reports[row["module"]]["after_instruction_count"] for row in subset)
        student_totals[student_name] = {
            "total_ir": total,
            "reduction_vs_never_inline_pct": reduction(never_total, total),
        }
    best_subset_student = max(
        student_totals,
        key=lambda name: student_totals[name]["reduction_vs_never_inline_pct"],
    )

    result = {
        "metric": "actual_rewritten_ir_instruction_count",
        "selection_rule": (
            "real-source modules only, sorted by selected-teacher reduction "
            "relative to never_inline; top N kept as a secondary diagnostic"
        ),
        "limit": limit,
        "available_real_source_modules": len(rows),
        "selected_module_count": len(subset),
        "never_inline_total_ir": never_total,
        "selected_teacher_total_ir": selected_total,
        "selected_teacher_reduction_pct": reduction(never_total, selected_total),
        "best_student": best_subset_student,
        "best_student_total_ir": student_totals[best_subset_student]["total_ir"],
        "best_student_reduction_pct": student_totals[best_subset_student][
            "reduction_vs_never_inline_pct"
        ],
        "student_totals": student_totals,
        "modules": subset,
    }

    path = OUT / "secondary_real_subset.json"
    path.write_text(json.dumps(result, indent=2), encoding="utf-8")
    return result


def main() -> None:
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


if __name__ == "__main__":
    main()
