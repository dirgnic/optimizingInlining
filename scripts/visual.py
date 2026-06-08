from __future__ import annotations

import math
import os
import re
import json
from collections import Counter
from pathlib import Path

from PIL import Image, ImageDraw, ImageFont

from data import FEATURE_NAMES, FIG_DIR, GIF_DIR, OUT

GRAPH_WIDTH = 4800
GRAPH_HEIGHT = 3000
GRAPH_NODE_MAX_WIDTH = 360
GRAPH_NODE_MIN_WIDTH = 190
GRAPH_NODE_HEIGHT = 70
GRAPH_NODE_GAP = 72

os.environ.setdefault("XDG_CACHE_HOME", str(OUT / "cache"))
os.environ.setdefault("MPLCONFIGDIR", str(OUT / "mplconfig"))
(OUT / "cache").mkdir(parents=True, exist_ok=True)
(OUT / "mplconfig").mkdir(parents=True, exist_ok=True)

import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt
from matplotlib.ticker import FixedLocator, FixedFormatter
from matplotlib.patches import Ellipse, FancyBboxPatch

plt.rcParams.update(
    {
        "font.size": 16,
        "axes.titlesize": 18,
        "axes.labelsize": 17,
        "xtick.labelsize": 14,
        "ytick.labelsize": 14,
        "legend.fontsize": 13,
    }
)


def axis_labels(labels: list[str]) -> tuple[list[str], int, str]:
    replacements = {
        "logistic_regression": "logistic\nregression",
        "decision_tree": "decision\ntree",
        "knn": "KNN",
        "random_forest": "random\nforest",
        "deep_forest": "deep\nforest",
        "conservative_forest": "conserv.\nforest",
        "small_mlp": "small\nMLP",
        "never_inline": "never\ninline",
        "teacher_never_inline": "teacher\nnever-inline",
        "no_inline_Oz": "no-inl\nOz",
        "no_inline_Os": "no-inl\nOs",
        "no_inline_O0": "no-inl\nO0",
        "llvm_Oz": "LLVM\nOz",
        "llvm_Os": "LLVM\nOs",
        "llvm_O2": "LLVM\nO2",
        "cost_budget": "cost\nbudget",
        "small_callee": "small\ncallee",
        "loop_averse": "loop\naverse",
        "single_caller": "single\ncaller",
        "native .text": "native\n.text",
        "object file": "object\nfile",
    }
    display = [replacements.get(label, label.replace("_", "\n") if len(label) > 12 else label) for label in labels]
    if len(labels) <= 6:
        return display, 0, "center"
    return display, 35, "right"


def save_figure(fig, path: Path) -> None:
    fig.savefig(path, dpi=240, bbox_inches="tight", pad_inches=0.08)
    fig.savefig(path.with_suffix(".pdf"), bbox_inches="tight", pad_inches=0.08)


def save_bar(path: Path, title: str, labels: list[str], values: list[float], ylabel: str) -> None:
    is_bytes = ylabel == "bytes"
    fig_width = max(4.8, len(labels) * (0.96 if is_bytes else 0.82))
    fig, ax = plt.subplots(figsize=(fig_width, 3.95))
    bars = ax.bar(range(len(labels)), values, color="#557A95")
    display_labels, rotation, ha = axis_labels(labels)
    if is_bytes and len(labels) >= 5:
        rotation, ha = 20, "right"
    ax.set_title(title, pad=10)
    ax.set_ylabel(ylabel)
    ax.set_xticks(range(len(labels)), display_labels, rotation=rotation, ha=ha)
    ax.margins(x=0.04)
    if values and ylabel == "rewritten IR instructions":
        lower = min(values)
        upper = max(values)
        padding = max(2.0, (upper - lower) * 0.35)
        ax.set_ylim(max(0.0, lower - padding), upper + padding)
        ax.set_ylabel("IR instr. (zoomed)")
    elif values and ylabel == "percent":
        lower = 90.0 if min(values) >= 90.0 else max(0.0, math.floor((min(values) - 1.0) / 5.0) * 5.0)
        ax.set_ylim(lower, 100.5)
        ax.axhline(lower, color="#333333", linewidth=0.7, alpha=0.45)
        ax.set_ylabel(f"percent ({int(lower)}-100)")
    elif values and is_bytes:
        upper = max(values)
        lower = min(values)
        padding = max(1200.0, (upper - lower) * 0.08)
        ax.set_ylim(0, upper + padding)
    for bar, value in zip(bars, values):
        label = f"{value:.0f}" if is_bytes or float(value).is_integer() else f"{value:.1f}"
        ax.annotate(
            label,
            xy=(bar.get_x() + bar.get_width() / 2, bar.get_height()),
            xytext=(0, 4),
            textcoords="offset points",
            ha="center",
            va="bottom",
            fontsize=10 if is_bytes else 11,
            clip_on=False,
        )
    fig.tight_layout(pad=0.9)
    save_figure(fig, path)
    plt.close(fig)


def save_stacked_decisions(path: Path, title: str, labels: list[str], inline_counts: list[int], no_inline_counts: list[int]) -> None:
    x = range(len(labels))
    if title == "Student Candidate Callsite Decisions" and inline_counts and no_inline_counts:
        totals = [yes + no for yes, no in zip(inline_counts, no_inline_counts)]
        fig, (ax_total, ax_inline) = plt.subplots(
            2,
            1,
            figsize=(8.0, 8.2),
            gridspec_kw={"height_ratios": [1.05, 1.0], "hspace": 0.48},
        )
        display_labels, _, _ = axis_labels(labels)
        display_labels = [label.replace("\n", " ") for label in display_labels]
        y = list(range(len(labels)))

        ax_total.barh(y, no_inline_counts, color="#8AA6A3", label="no-inline")
        ax_total.barh(y, inline_counts, left=no_inline_counts, color="#D9822B", label="inline")
        ax_total.set_title("All Candidate Call Sites", pad=10, fontsize=18)
        ax_total.set_xlabel("call sites")
        ax_total.set_yticks(y, display_labels)
        ax_total.invert_yaxis()
        ax_total.set_xlim(0, max(10500, max(totals) * 1.02))
        ax_total.xaxis.set_major_locator(FixedLocator([0, 5000, 10000]))
        ax_total.xaxis.set_major_formatter(FixedFormatter(["0", "5000", "10000"]))
        ax_total.tick_params(axis="both", labelsize=14.0)
        for i, (yes, total) in enumerate(zip(inline_counts, totals)):
            ax_total.text(total - 160, i, f"{yes} inl.", ha="right", va="center", fontsize=13.0)

        inline_bars = ax_inline.barh(y, inline_counts, color="#D9822B")
        ax_inline.set_title("Inline Decisions", pad=10, fontsize=18)
        ax_inline.set_xlabel("inline call sites")
        ax_inline.set_yticks(y, display_labels)
        ax_inline.invert_yaxis()
        ax_inline.set_xlim(0, max(inline_counts) * 1.16)
        ax_inline.tick_params(axis="both", labelsize=14.0)
        for bar, yes in zip(inline_bars, inline_counts):
            ax_inline.text(yes, bar.get_y() + bar.get_height() / 2, f"{yes}", ha="left", va="center", fontsize=13.0)
        fig.subplots_adjust(left=0.29, right=0.97, top=0.94, bottom=0.08, hspace=0.48)
        save_figure(fig, path)
        plt.close(fig)
        return
    else:
        plt.figure(figsize=(max(4.2, len(labels) * 0.68), 3.45))
        plt.bar(x, no_inline_counts, color="#8AA6A3", label="no-inline")
        plt.bar(x, inline_counts, bottom=no_inline_counts, color="#D9822B", label="inline")
        display_labels, rotation, ha = axis_labels(labels)
        plt.title(title, pad=9)
        plt.ylabel("callsites")
        plt.xticks(x, display_labels, rotation=rotation, ha=ha)
        for i, (yes, no) in enumerate(zip(inline_counts, no_inline_counts)):
            total = yes + no
            plt.text(i, total, f"{yes}/{total}", ha="center", va="bottom", fontsize=10.5)
        plt.legend()
    plt.tight_layout(pad=0.65)
    fig = plt.gcf()
    save_figure(fig, path)
    plt.close()


def save_reductions(path: Path, labels: list[str], baseline: float, values: list[float]) -> None:
    reductions = [100.0 * (baseline - value) / baseline for value in values]
    fig, ax = plt.subplots(figsize=(max(4.9, len(labels) * 0.82), 3.55))
    bars = ax.bar(range(len(labels)), reductions, color="#6B7FD7")
    display_labels, rotation, ha = axis_labels(labels)
    ax.set_title("Student IR Reduction", pad=9)
    ax.set_ylabel("reduction (%)\nnegative = growth")
    ax.set_xticks(range(len(labels)), display_labels, rotation=rotation, ha=ha)
    if reductions:
        lower = min(0.0, min(reductions) - 0.55)
        upper = max(0.0, max(reductions) + 0.55)
        ax.set_ylim(lower, upper)
        ax.axhline(0, color="#333333", linewidth=0.7, alpha=0.45)
    for bar, value in zip(bars, reductions):
        va = "bottom" if value >= 0 else "top"
        offset = 0.04 if value >= 0 else -0.05
        ax.text(bar.get_x() + bar.get_width() / 2, value + offset, f"{value:.2f}%", ha="center", va=va, fontsize=10.5)
    fig.subplots_adjust(left=0.14, right=0.98, top=0.86, bottom=0.24)
    save_figure(fig, path)
    plt.close(fig)


def save_native_reduction(path: Path, native: dict) -> None:
    summary = native.get("common_summary", {})
    baseline = summary.get("no_inline_Oz", {})
    llvm = summary.get("llvm_Oz", {})
    if not baseline or not llvm:
        return
    metrics = [
        ("native .text", baseline.get("total_text_size", 0), llvm.get("total_text_size", 0)),
        ("object file", baseline.get("total_object_size", 0), llvm.get("total_object_size", 0)),
    ]
    labels = [name for name, _, _ in metrics]
    reductions = [100.0 * (base - value) / base if base else 0.0 for _, base, value in metrics]
    plt.figure(figsize=(3.8, 3.1))
    bars = plt.bar(range(len(labels)), reductions, color=["#4F7CAC", "#6A994E"])
    display_labels, rotation, ha = axis_labels(labels)
    plt.title("Native Size Reduction", pad=9)
    plt.ylabel("reduction (%)")
    plt.xticks(range(len(labels)), display_labels, rotation=rotation, ha=ha)
    plt.ylim(0, max(reductions) + 12)
    for bar, value in zip(bars, reductions):
        plt.text(bar.get_x() + bar.get_width() / 2, bar.get_height(), f"{value:.2f}%", ha="center", va="bottom", fontsize=10.5)
    plt.tight_layout(pad=0.65)
    fig = plt.gcf()
    save_figure(fig, path)
    plt.close()


def save_rewritten_native_text(path: Path) -> None:
    report_path = OUT / "rewritten_native_sizes.json"
    if not report_path.exists():
        return
    report = json.loads(report_path.read_text(encoding="utf-8"))
    policies = report.get("policies", {})
    ordered = ["teacher_never_inline"] + sorted(name for name in policies if name.startswith("student_"))
    labels = []
    values = []
    for name in ordered:
        if name not in policies:
            continue
        labels.append(name.removeprefix("student_").removeprefix("teacher_"))
        values.append(policies[name].get("total_text_size", 0))
    if not labels:
        return
    lower = min(values)
    upper = max(values)
    spread = max(1, upper - lower)
    padding = max(40, spread * 0.18)

    plt.figure(figsize=(max(4.2, len(labels) * 0.68), 3.15))
    bars = plt.bar(range(len(labels)), values, color="#557A95")
    display_labels, rotation, ha = axis_labels(labels)
    plt.title("Rewritten Native .text Size", pad=9)
    plt.ylabel("bytes (zoomed)")
    plt.xticks(range(len(labels)), display_labels, rotation=rotation, ha=ha)
    plt.ylim(max(0, lower - padding), upper + padding)
    plt.axhline(lower, color="#333333", linewidth=0.7, alpha=0.45)
    for bar, value in zip(bars, values):
        plt.text(
            bar.get_x() + bar.get_width() / 2,
            bar.get_height(),
            f"{value:.0f}",
            ha="center",
            va="bottom",
            fontsize=10.5,
        )
    plt.tight_layout(pad=0.65)
    fig = plt.gcf()
    save_figure(fig, path)
    plt.close()


def average_over_modules(module_values: dict[str, float], modules: list[str]) -> float:
    values = [module_values[module] for module in modules if module in module_values]
    return sum(values) / max(1, len(values))


def save_reductions(path: Path, title: str, labels: list[str], baseline: float, values: list[float]) -> None:
    reductions = [100.0 * (baseline - value) / baseline for value in values]
    fig, ax = plt.subplots(figsize=(max(5.4, len(labels) * 0.92), 3.85))
    bars = ax.bar(range(len(labels)), reductions, color="#6B7FD7")
    display_labels, rotation, ha = axis_labels(labels)
    ax.set_title(title, pad=9)
    ax.set_ylabel("reduction (%)")
    ax.set_xticks(range(len(labels)), display_labels, rotation=rotation, ha=ha)
    ax.margins(x=0.08)
    if reductions:
        lower = min(reductions)
        upper = max(reductions)
        padding = max(0.6, (upper - lower) * 0.25)
        y_min = min(0.0, lower - padding)
        y_max = max(0.0, upper + padding)
        if y_max - y_min < 2.0:
            mid = (y_min + y_max) / 2
            y_min, y_max = mid - 1.0, mid + 1.0
        ax.set_ylim(y_min, y_max)
        ax.axhline(0.0, color="#333333", linewidth=0.7, alpha=0.45)
    for bar, value in zip(bars, reductions):
        ax.annotate(
            f"{value:.2f}%",
            xy=(bar.get_x() + bar.get_width() / 2, value),
            xytext=(0, 5 if value >= 0 else -7),
            textcoords="offset points",
            ha="center",
            va="bottom" if value >= 0 else "top",
            fontsize=10.5,
            clip_on=False,
        )
    fig.tight_layout(pad=0.9)
    save_figure(fig, path)
    plt.close(fig)


def save_source_group_reductions(path: Path, results: dict) -> None:
    summary = results.get("rewrite_summaries", {}).get("all", {})
    groups = summary.get("by_source_group", {})
    if not groups:
        return

    best_student = results.get("best_student") or next(iter(results.get("students", {})), "")
    labels = []
    selected_values = []
    student_values = []
    display = {
        "generated": "generated",
        "real_source": "real\nsource",
        "imported_ir": "imported\nIR",
    }
    for group in ["generated", "real_source", "imported_ir"]:
        if group not in groups:
            continue
        group_summary = groups[group]
        labels.append(display.get(group, group.replace("_", "\n")))
        selected_values.append(group_summary["selected_teacher"]["ir_reduction_vs_never_inline_pct"])
        student_values.append(
            group_summary.get("students", {})
            .get(best_student, {})
            .get("ir_reduction_vs_never_inline_pct", 0.0)
        )

    if not labels:
        return
    fig, ax = plt.subplots(figsize=(6.4, 4.15))
    x = list(range(len(labels)))
    width = 0.34
    bars_selected = ax.bar([i - width / 2 for i in x], selected_values, width, label="selected teacher", color="#557A95")
    bars_student = ax.bar([i + width / 2 for i in x], student_values, width, label=best_student.replace("_", " "), color="#D9822B")
    ax.set_title("IR Reduction by Source Group", pad=10)
    ax.set_ylabel("reduction vs never-inline (%)\nnegative = growth")
    ax.set_xticks(x, labels)
    ax.axhline(0.0, color="#333333", linewidth=0.7, alpha=0.45)
    values = selected_values + student_values
    if values:
        lower = min(values)
        upper = max(values)
        padding = max(0.25, (upper - lower) * 0.2)
        ax.set_ylim(min(0.0, lower - padding), upper + padding)
    for bars in (bars_selected, bars_student):
        for bar in bars:
            value = bar.get_height()
            ax.text(
                bar.get_x() + bar.get_width() / 2,
                value,
                f"{value:.2f}%",
                ha="center",
                va="bottom" if value >= 0 else "top",
                fontsize=10.5,
            )
    ax.margins(x=0.12)
    ax.legend(loc="upper right", frameon=True)
    fig.tight_layout(pad=0.75)
    save_figure(fig, path)
    plt.close(fig)


def save_selected_teacher_distribution(path: Path, selected_teachers: dict) -> None:
    counts = Counter(item["teacher"] for item in selected_teachers.values())
    ordered = sorted(counts.items(), key=lambda item: (-item[1], item[0]))
    labels = [label for label, _ in ordered]
    values = [value for _, value in ordered]
    fig, ax = plt.subplots(figsize=(6.6, max(3.6, len(labels) * 0.32)))
    display = [label.replace("_", " ") for label in labels]
    y = list(range(len(labels)))
    bars = ax.barh(y, values, color="#557A95")
    ax.set_title("Selected Teacher per Module", pad=10)
    ax.set_xlabel("modules")
    ax.set_yticks(y, display)
    ax.invert_yaxis()
    ax.set_xlim(0, max(values) * 1.18)
    for bar, value in zip(bars, values):
        ax.annotate(
            str(value),
            xy=(value, bar.get_y() + bar.get_height() / 2),
            xytext=(4, 0),
            textcoords="offset points",
            ha="left",
            va="center",
            fontsize=10.5,
            clip_on=False,
        )
    fig.tight_layout(pad=0.9)
    save_figure(fig, path)
    plt.close(fig)


def save_diversity_audit(path: Path, dataset: dict) -> None:
    samples = dataset.get("samples", [])
    if not samples:
        return
    feature_index = {name: index for index, name in enumerate(FEATURE_NAMES)}

    def source_group(module: str) -> str:
        if "generated_inlining" in module:
            return "generated"
        if module.startswith("real_"):
            return "real IR"
        return "real source"

    groups = ["generated", "real source", "real IR"]
    colors = {"generated": "#557A95", "real source": "#D9822B", "real IR": "#6A994E"}
    fig, axes = plt.subplots(1, 3, figsize=(10.0, 3.45))

    def values_for(feature: str, group: str) -> list[float]:
        idx = feature_index[feature]
        return [row["features"][idx] for row in samples if source_group(row["module"]) == group]

    def cap(values: list[float], limit: float) -> list[float]:
        return [min(value, limit) for value in values]

    hist_specs = [
        ("callee_instruction_count", "callee IR instructions (capped at 250)", 250),
        ("callee_users", "callee users (capped at 40)", 40),
    ]
    for ax, (feature, title, limit) in zip(axes[:2], hist_specs):
        for group in groups:
            raw_values = values_for(feature, group)
            if raw_values:
                ax.hist(cap(raw_values, limit), bins=10, alpha=0.62, label=group, color=colors[group])
        ax.set_title(title)
        ax.set_ylabel("call sites")
        ax.tick_params(axis="both", labelsize=10.5)
        ax.set_xlim(left=0, right=limit)

    teacher_counts = Counter(item["teacher"] for item in dataset.get("selected_teachers", {}).values())
    teacher_labels = [label for label, _ in teacher_counts.most_common()]
    teacher_values = [teacher_counts[label] for label in teacher_labels]
    ax = axes[2]
    display_labels = [label.replace("_", " ") for label in teacher_labels]
    y = range(len(teacher_labels))
    ax.barh(list(y), teacher_values, color="#6B7FD7")
    ax.set_title("selected teacher winners")
    ax.set_xlabel("modules")
    ax.set_yticks(list(y), display_labels)
    ax.invert_yaxis()
    ax.tick_params(axis="both", labelsize=9.5)
    for index, value in enumerate(teacher_values):
        ax.text(value, index, str(value), ha="left", va="center", fontsize=9.5)

    axes.flat[0].legend(loc="upper right", fontsize=9.5)
    fig.suptitle("Dataset Diversity Audit", fontsize=15, y=0.99)
    fig.tight_layout(rect=(0, 0, 1, 0.93), pad=0.75)
    save_figure(fig, path)
    plt.close(fig)


def save_callgraph_decision_pdf(path: Path, module: str, trace: list[dict]) -> None:
    fig, ax = plt.subplots(figsize=(12.2, 6.0))
    ax.set_title("Inlining Changes Later Compiler State", fontsize=17, pad=16)
    ax.axis("off")
    ax.set_xlim(0, 1)
    ax.set_ylim(0, 1)

    columns = [
        (
            0.18,
            "1. Before",
            "local call graph",
            [
                "driver -> small(x)",
                "driver -> branchy(0, x)",
                "driver -> large(x)",
                "driver -> recursive(3)",
            ],
            "#F7FBFF",
            "#333333",
        ),
        (
            0.50,
            "2. Policy",
            "inline decisions",
            [
                "INLINE small",
                "INLINE branchy",
                "KEEP large",
                "KEEP recursive",
            ],
            "#F8FCF8",
            "#2E7D32",
        ),
        (
            0.82,
            "3. After",
            "new compiler state",
            [
                "small call is removed",
                "branchy body is visible",
                "mode = 0 is known",
                "large/recursive edges remain",
            ],
            "#FFF9EA",
            "#B88700",
        ),
    ]

    for x, title, subtitle, lines, face, edge in columns:
        draw_box(ax, x, 0.77, 0.25, 0.14, f"{title}\n{subtitle}", face, edge=edge, font_size=13, bold=True)
        for index, line in enumerate(lines):
            y = 0.59 - index * 0.105
            color = "#2E7D32" if line.startswith("INLINE") else "#B23A48" if line.startswith("KEEP") else "#111111"
            draw_box(ax, x, y, 0.27, 0.075, line, "#FFFFFF", edge="#BBBBBB", text_color=color, font_size=10.5, bold=line.startswith(("INLINE", "KEEP")))

    ax.annotate("", xy=(0.365, 0.54), xytext=(0.315, 0.54), arrowprops=dict(arrowstyle="->", color="#555555", lw=1.8))
    ax.annotate("", xy=(0.685, 0.54), xytext=(0.635, 0.54), arrowprops=dict(arrowstyle="->", color="#555555", lw=1.8))

    draw_box(
        ax,
        0.50,
        0.09,
        0.70,
        0.13,
        "Why this matters: inlining does not only remove calls. It changes later features\n"
        "(caller size, callee users, remaining calls) and can enable constant propagation\n"
        "and dead-code elimination after the callee body becomes visible.",
        "#F4F4F4",
        edge="#777777",
        font_size=10.5,
    )

    fig.tight_layout()
    fig.savefig(path)
    plt.close(fig)


def draw_node(ax, x: float, y: float, text: str, face: str = "#F7FBFF") -> None:
    draw_box(ax, x, y, 0.18, 0.095, text, face, font_size=10.5)


def draw_arrow(ax, x1: float, y1: float, x2: float, y2: float, color: str, label: str | None = None) -> None:
    ax.annotate("", xy=(x2, y2), xytext=(x1, y1), arrowprops=dict(arrowstyle="->", color=color, lw=1.8))
    if label:
        ax.text((x1 + x2) / 2, (y1 + y2) / 2 + 0.025, label, ha="center", va="center", fontsize=9.5, color=color, weight="bold")


def draw_box(
    ax,
    x: float,
    y: float,
    width: float,
    height: float,
    text: str,
    face: str,
    edge: str = "#333333",
    text_color: str = "#111111",
    bold: bool = False,
    font_size: float = 8.4,
) -> None:
    display_text = text
    box = FancyBboxPatch(
        (x - width / 2, y - height / 2),
        width,
        height,
        boxstyle="round,pad=0.018,rounding_size=0.04",
        linewidth=0.9,
        edgecolor=edge,
        facecolor=face,
        zorder=2,
    )
    ax.add_patch(box)
    ax.text(
        x,
        y,
        display_text,
        ha="center",
        va="center",
        fontsize=font_size,
        color=text_color,
        weight="bold" if bold else "normal",
        zorder=3,
    )


def result_plots(compile_report: dict, dataset: dict, results: dict, native: dict) -> None:
    FIG_DIR.mkdir(parents=True, exist_ok=True)

    teachers = dataset["teachers"]
    all_modules = list(dataset["selected_teachers"])
    split = results.get("split", {})
    held_out_modules = list(split.get("test_modules", [])) or all_modules
    teacher_avg = [
        average_over_modules(
            {module: dataset["teacher_sizes"][module][teacher] for module in dataset["teacher_sizes"] if teacher in dataset["teacher_sizes"][module]},
            all_modules,
        )
        for teacher in teachers
    ]
    save_bar(FIG_DIR / "teacher_rewritten_ir.png", "Teacher Rewritten IR", teachers, teacher_avg, "rewritten IR instructions")

    students = list(results["students"])
    rewrite_summaries = results.get("rewrite_summaries", {})
    held_summary = rewrite_summaries.get("test", {})
    full_summary = rewrite_summaries.get("all", {})
    if held_summary and full_summary:
        student_size_held_out = [
            held_summary["students"][name]["average_ir_instruction_count"] for name in students
        ]
        student_size_full = [
            full_summary["students"][name]["average_ir_instruction_count"] for name in students
        ]
        never_inline_held_out = held_summary["never_inline"]["average_ir_instruction_count"]
        never_inline_full = full_summary["never_inline"]["average_ir_instruction_count"]
    else:
        student_module_sizes = {name: results["students"][name]["module_sizes"] for name in students}
        student_size_held_out = [average_over_modules(student_module_sizes[name], held_out_modules) for name in students]
        student_size_full = [average_over_modules(student_module_sizes[name], all_modules) for name in students]
        never_inline_full = average_over_modules(
            {module: dataset["teacher_sizes"][module]["never_inline"] for module in dataset["teacher_sizes"] if "never_inline" in dataset["teacher_sizes"][module]},
            all_modules,
        )
        never_inline_held_out = average_over_modules(
            {module: dataset["teacher_sizes"][module]["never_inline"] for module in dataset["teacher_sizes"] if "never_inline" in dataset["teacher_sizes"][module]},
            held_out_modules,
        )
    student_match = [
        100.0 * results["students"][name].get("test_teacher_label_match", results["students"][name]["teacher_label_match"])
        for name in students
    ]
    save_bar(FIG_DIR / "student_rewritten_ir.png", "Held-out Student Rewritten IR", students, student_size_held_out, "rewritten IR instructions")
    save_bar(FIG_DIR / "student_teacher_match.png", "Teacher-Label Match", students, student_match, "percent")
    if "never_inline" in teachers:
        save_reductions(FIG_DIR / "student_ir_reduction.png", "Held-out Student IR Reduction", students, never_inline_held_out, student_size_held_out)
        save_bar(FIG_DIR / "student_rewritten_ir_full_candidate.png", "Full-candidate Student Rewritten IR", students, student_size_full, "rewritten IR instructions")
        save_reductions(FIG_DIR / "student_ir_reduction_full_candidate.png", "Full-candidate Student IR Reduction", students, never_inline_full, student_size_full)
        save_source_group_reductions(FIG_DIR / "source_group_ir_reduction.png", results)
    save_selected_teacher_distribution(FIG_DIR / "selected_teacher_distribution.png", dataset["selected_teachers"])
    save_diversity_audit(FIG_DIR / "synthetic_diversity_audit.png", dataset)

    sample_count = len(dataset.get("samples", []))
    if sample_count:
        inline_counts = [int(results["students"][name].get("inline_count", 0)) for name in students]
        no_inline_counts = [max(0, sample_count - inline_count) for inline_count in inline_counts]
        save_stacked_decisions(
            FIG_DIR / "student_inline_decisions.png",
            "Student Candidate Callsite Decisions",
            students,
            inline_counts,
            no_inline_counts,
        )

    native_labels = list(native.get("common_summary", {}))
    native_values = [native["common_summary"][name]["total_text_size"] for name in native_labels]
    if native_labels:
        save_bar(FIG_DIR / "native_text_sizes.png", "Native .text Size", native_labels, native_values, "bytes")
        save_native_reduction(FIG_DIR / "native_size_reduction.png", native)
    save_rewritten_native_text(FIG_DIR / "rewritten_native_text_sizes.png")

    coverage_labels = ["source compiled", "real IR imported", "failed"]
    coverage_values = [
        len(compile_report["compiled"]),
        len(compile_report.get("imported_ir", [])),
        len(compile_report["failed"]),
    ]
    save_bar(FIG_DIR / "source_coverage.png", "Source Snapshot Coverage", coverage_labels, coverage_values, "files")


def short(name: str) -> str:
    name = name.replace('"', "").replace("_Z", "")
    for marker in ("test_", "gen_"):
        if marker in name:
            name = name[name.index(marker) :]
            break
    if len(name) > 24:
        return f"{name[:10]}...{name[-10:]}"
    return name


def pretty_name(name: str) -> str:
    raw = name.replace('"', "")
    if "test_type_deduction4test" in raw:
        return "type_deduction::test"
    if "test_type_deduction3add" in raw:
        return "add<int,int>"
    if "test_template_alias_sfinae4test" in raw:
        return "alias_sfinae::test"
    if "test_template_alias_sfinae4func" in raw:
        return "func<foo>"
    if "test_lambdas" in raw:
        test_match = re.search(r"test_lambdas5test([0-9])", raw)
        lambda_match = re.search(r"\$_([0-9]+)", raw)
        if lambda_match and test_match:
            return f"test{test_match.group(1)} lambda {lambda_match.group(1)}"
        if test_match:
            return f"lambdas::test{test_match.group(1)}"
        return "lambdas helper"
    return short(raw).replace('"', "")


def node_box_width(label: str) -> float:
    return max(GRAPH_NODE_MIN_WIDTH, min(GRAPH_NODE_MAX_WIDTH, len(label) * 10.5 + 58))


def node_roles(trace: list[dict], nodes: list[str]) -> dict[str, tuple[int, int]]:
    counts: dict[str, list[int]] = {node: [0, 0] for node in nodes}
    for item in trace:
        for caller, callee, _ in item["edges_before"]:
            counts.setdefault(caller, [0, 0])[0] += 1
            counts.setdefault(callee, [0, 0])[1] += 1
    return {node: (values[0], values[1]) for node, values in counts.items()}


def layout(nodes: list[str], width: int, height: int, trace: list[dict] | None = None) -> dict[str, tuple[int, int]]:
    cx, cy = width // 2, height // 2 + 20
    if len(nodes) == 1:
        return {nodes[0]: (cx, cy)}
    if trace is None:
        trace = []

    role_counts = node_roles(trace, nodes)
    depths = graph_depths(nodes, trace, role_counts)
    max_depth = max(depths.values(), default=0)
    column_count = min(6, max(3, max_depth + 1))
    columns: list[list[str]] = [[] for _ in range(column_count)]
    for node in nodes:
        column = min(column_count - 1, depths.get(node, 0))
        columns[column].append(node)
    for column in columns:
        column.sort(key=lambda node: (-sum(role_counts.get(node, (0, 0))), short(node)))

    positions: dict[str, tuple[int, int]] = {}
    left_margin = 330
    right_margin = 330
    usable_width = width - left_margin - right_margin
    top = 210
    bottom = height - 270
    usable_height = bottom - top

    for column_index, column_nodes in enumerate(columns):
        if not column_nodes:
            continue
        x = left_margin + usable_width * column_index / max(1, column_count - 1)
        step = max(GRAPH_NODE_HEIGHT + GRAPH_NODE_GAP, usable_height / max(1, len(column_nodes) + 1))
        total = step * (len(column_nodes) - 1)
        start = top + max(0.0, (usable_height - total) / 2.0)
        stagger = (column_index % 2) * min(60.0, step * 0.25)
        for index, node in enumerate(column_nodes):
            y = min(bottom, max(top, start + index * step + stagger))
            positions[node] = (int(x), int(y))

    positions = repel_overlaps(positions)
    return positions


def graph_depths(nodes: list[str], trace: list[dict], role_counts: dict[str, tuple[int, int]]) -> dict[str, int]:
    adjacency: dict[str, set[str]] = {node: set() for node in nodes}
    indegree: dict[str, int] = {node: 0 for node in nodes}
    if trace:
        for caller, callee, _ in trace[0]["edges_before"]:
            if caller in adjacency and callee in adjacency and callee not in adjacency[caller]:
                adjacency[caller].add(callee)
                indegree[callee] += 1
    roots = [node for node in nodes if indegree.get(node, 0) == 0]
    if not roots:
        roots = sorted(nodes, key=lambda node: (-role_counts.get(node, (0, 0))[0], node))[:1]
    depths = {node: 0 for node in roots}
    queue = list(roots)
    while queue:
        node = queue.pop(0)
        for child in sorted(adjacency.get(node, ())):
            next_depth = depths[node] + 1
            if next_depth > depths.get(child, -1):
                depths[child] = next_depth
                queue.append(child)
    for node in nodes:
        if node not in depths:
            outgoing, incoming = role_counts.get(node, (0, 0))
            depths[node] = 0 if outgoing >= incoming else 1
    return depths


def repel_overlaps(positions: dict[str, tuple[int, int]]) -> dict[str, tuple[int, int]]:
    adjusted = {node: [float(x), float(y)] for node, (x, y) in positions.items()}
    nodes = list(adjusted)
    for _ in range(80):
        moved = False
        for i, left in enumerate(nodes):
            for right in nodes[i + 1 :]:
                lx, ly = adjusted[left]
                rx, ry = adjusted[right]
                left_width = node_box_width(short(left))
                right_width = node_box_width(short(right))
                min_dx = (left_width + right_width) / 2.0 + 28.0
                min_dy = GRAPH_NODE_HEIGHT + GRAPH_NODE_GAP * 0.45
                dx = abs(lx - rx)
                dy = abs(ly - ry)
                if dx < min_dx and dy < min_dy:
                    push = (min_dy - dy) / 2.0 + 4.0
                    if ly <= ry:
                        adjusted[left][1] -= push
                        adjusted[right][1] += push
                    else:
                        adjusted[left][1] += push
                        adjusted[right][1] -= push
                    moved = True
        for node in nodes:
            adjusted[node][1] = min(GRAPH_HEIGHT - 240, max(180, adjusted[node][1]))
        if not moved:
            break
    return {node: (int(x), int(y)) for node, (x, y) in adjusted.items()}


def draw_trace_frame(module: str, item: dict, nodes: list[str], positions: dict[str, tuple[int, int]]) -> Image.Image:
    width, height = GRAPH_WIDTH, GRAPH_HEIGHT
    image = Image.new("RGB", (width, height), "white")
    draw = ImageDraw.Draw(image)
    font = ImageFont.load_default()
    title = f"{module} | step {item['step']} | {item['caller']} -> {item['callee']} | {item['action']}"
    draw.text((24, 20), title[:135], fill=(20, 20, 20), font=font)
    draw.text((24, 42), f"teacher: {item['selected_teacher']} | edges {len(item['edges_before'])} -> {len(item['edges_after'])}", fill=(50, 50, 50), font=font)

    current = (item["caller"], item["callee"])
    after = {tuple(edge[:2]) for edge in item["edges_after"]}
    for edge in item["edges_before"]:
        caller, callee = tuple(edge[:2])
        if caller not in positions or callee not in positions:
            continue
        color = (180, 180, 180)
        width_line = 2
        if (caller, callee) == current:
            color = (36, 130, 70) if item["action"] == "inline" else (180, 50, 45)
            width_line = 5
        elif (caller, callee) not in after:
            color = (220, 220, 220)
        x1, y1 = positions[caller]
        x2, y2 = positions[callee]
        bend = int((x2 - x1) * 0.18)
        mid1 = (x1 + bend, y1)
        mid2 = (x2 - bend, y2)
        draw.line([positions[caller], mid1, mid2, positions[callee]], fill=color, width=width_line)

    for node in nodes:
        x, y = positions[node]
        fill = (240, 248, 255)
        if node == item["caller"]:
            fill = (255, 245, 210)
        if node == item["callee"]:
            fill = (220, 240, 255)
        label = short(node)
        half_width = int(node_box_width(label) / 2)
        half_height = int(GRAPH_NODE_HEIGHT / 2)
        draw.ellipse((x - half_width, y - half_height, x + half_width, y + half_height), fill=fill, outline=(30, 30, 30), width=2)
        draw.text((x - min(half_width - 14, len(label) * 3), y - 5), label, fill=(0, 0, 0), font=font)

    legend_y = height - 68
    draw.line((25, legend_y, 85, legend_y), fill=(36, 130, 70), width=5)
    draw.text((95, legend_y - 6), "inline decision removes the edge", fill=(20, 20, 20), font=font)
    draw.line((25, legend_y + 24, 85, legend_y + 24), fill=(180, 50, 45), width=5)
    draw.text((95, legend_y + 18), "no-inline keeps the edge", fill=(20, 20, 20), font=font)
    return image


def callgraph_gifs(traces: dict[str, list[dict]]) -> list[str]:
    GIF_DIR.mkdir(parents=True, exist_ok=True)
    written = []
    for module, trace in traces.items():
        if not trace:
            continue
        if not all("edges_before" in item and "edges_after" in item for item in trace):
            continue
        node_set = set()
        for item in trace:
            for edge in item["edges_before"]:
                node_set.update(edge)
            node_set.add(item["caller"])
            node_set.add(item["callee"])
        nodes = sorted(node_set)
        positions = layout(nodes, GRAPH_WIDTH, GRAPH_HEIGHT, trace=trace)
        frames = [draw_trace_frame(module, item, nodes, positions) for item in trace]
        path = GIF_DIR / f"{Path(module).stem}_callgraph.gif"
        frames[0].save(path, save_all=True, append_images=frames[1:], duration=850, loop=0)
        written.append(str(path.relative_to(OUT.parent)))
    return written


def write_visual_index(gifs: list[str]) -> None:
    lines = ["# Visual Results", ""]
    lines.append("- `figures/teacher_rewritten_ir.pdf`")
    lines.append("- `figures/student_rewritten_ir.pdf`")
    lines.append("- `figures/student_ir_reduction.pdf`")
    lines.append("- `figures/student_rewritten_ir_full_candidate.pdf`")
    lines.append("- `figures/student_ir_reduction_full_candidate.pdf`")
    lines.append("- `figures/source_group_ir_reduction.pdf`")
    lines.append("- `figures/student_inline_decisions.pdf`")
    lines.append("- `figures/student_teacher_match.pdf`")
    lines.append("- `figures/selected_teacher_distribution.pdf`")
    lines.append("- `figures/native_text_sizes.pdf`")
    lines.append("- `figures/native_size_reduction.pdf`")
    lines.append("- `figures/rewritten_native_text_sizes.pdf`")
    lines.append("- `figures/source_coverage.pdf`")
    lines.append("- `figures/cxx11_decision_callgraph.pdf`")
    lines.append("")
    lines.append("## Call Graph GIFs")
    for path in gifs:
        lines.append(f"- `{path}`")
    (OUT / "visual_index.md").write_text("\n".join(lines), encoding="utf-8")


def write_visuals(compile_report: dict, dataset: dict, results: dict, native: dict, traces: dict[str, list[dict]]) -> None:
    result_plots(compile_report, dataset, results, native)
    if traces:
        module_name = "cxx11.ll" if "cxx11.ll" in traces else next(iter(traces))
        trace = traces[module_name]
        save_callgraph_decision_pdf(FIG_DIR / "cxx11_decision_callgraph.pdf", module_name, trace)
    else:
        module_name = ""
        trace = []
    # Full GIF generation is expensive and not used in the thesis PDF. Keep one
    # small inspection artifact instead of rendering every module.
    gif_traces = {module_name: trace} if trace else {}
    gifs = callgraph_gifs(gif_traces)
    write_visual_index(gifs)


def main() -> None:
    compile_report = json.loads((OUT / "compile_report.json").read_text(encoding="utf-8"))
    dataset = json.loads((OUT / "bc_dataset.json").read_text(encoding="utf-8"))
    results = json.loads((OUT / "student_results.json").read_text(encoding="utf-8"))
    native = json.loads((OUT / "native_baselines.json").read_text(encoding="utf-8"))
    trace_path = OUT / "callgraph_traces.json"
    traces = json.loads(trace_path.read_text(encoding="utf-8")) if trace_path.exists() else {}
    write_visuals(compile_report, dataset, results, native, traces)


if __name__ == "__main__":
    main()
