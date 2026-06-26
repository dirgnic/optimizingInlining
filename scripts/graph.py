"""Create traces that show how inline decisions change call graphs."""

from __future__ import annotations

import json

from data import Callsite, FEATURE_NAMES, OUT
from teach import teacher_action


def traces_by_module(rows: list[Callsite], dataset: dict) -> dict[str, list[dict]]:
    # Replay teacher decisions while keeping only local call edges.
    by_module: dict[str, list[Callsite]] = {}
    for row in rows:
        by_module.setdefault(row.module, []).append(row)

    traces: dict[str, list[dict]] = {}
    for module_name, module_rows in by_module.items():
        selected_teacher = dataset["selected_teachers"][module_name]["teacher"]
        edges = [(row.caller, row.callee, row.call_line) for row in module_rows]
        trace = []
        for step, row in enumerate(module_rows, start=1):
            before_count = len(edges)
            action = teacher_action(selected_teacher, row)
            edge = (row.caller, row.callee, row.call_line)
            if action and edge in edges:
                edges.remove(edge)
            after_count = len(edges)
            trace.append(
                {
                    "step": step,
                    "module": row.module,
                    "caller": row.caller,
                    "callee": row.callee,
                    "call_line": row.call_line,
                    "selected_teacher": selected_teacher,
                    "probability_inline": 0.8 if action else 0.2,
                    "action": "inline" if action else "no-inline",
                    "feature_snapshot": dict(zip(FEATURE_NAMES, row.features)),
                    "edges_before_count": before_count,
                    "edges_after_count": after_count,
                }
            )
        traces[module_name] = trace
    return traces


def detailed_trace_for_module(rows: list[Callsite], dataset: dict, module_name: str, max_steps: int = 40) -> list[dict]:
    module_rows = [row for row in rows if row.module == module_name]
    if not module_rows:
        return []

    selected_teacher = dataset["selected_teachers"][module_name]["teacher"]
    edges = [(row.caller, row.callee, row.call_line) for row in module_rows]
    trace = []
    for step, row in enumerate(module_rows[:max_steps], start=1):
        before_edges = list(edges)
        action = teacher_action(selected_teacher, row)
        edge = (row.caller, row.callee, row.call_line)
        if action and edge in edges:
            edges.remove(edge)
        after_edges = list(edges)
        trace.append(
            {
                "step": step,
                "module": row.module,
                "caller": row.caller,
                "callee": row.callee,
                "call_line": row.call_line,
                "selected_teacher": selected_teacher,
                "probability_inline": 0.8 if action else 0.2,
                "action": "inline" if action else "no-inline",
                "feature_snapshot": dict(zip(FEATURE_NAMES, row.features)),
                "edges_before": before_edges,
                "edges_after": after_edges,
                "edges_before_count": len(before_edges),
                "edges_after_count": len(after_edges),
            }
        )
    return trace


def changing_callgraph_trace(rows: list[Callsite], dataset: dict) -> dict[str, list[dict]]:
    # Write both machine-readable traces and a short Markdown view.
    traces = traces_by_module(rows, dataset)
    if not traces:
        return {}

    preferred = [name for name in traces if name.endswith("cxx11.ll")]
    module_name = preferred[0] if preferred else max(traces, key=lambda name: len(traces[name]))
    trace = detailed_trace_for_module(rows, dataset, module_name)
    selected_teacher = trace[0]["selected_teacher"] if trace else "n/a"
    (OUT / "callgraph_traces.json").write_text(json.dumps(traces, indent=2), encoding="utf-8")
    (OUT / "callgraph_trace.json").write_text(json.dumps(trace, indent=2), encoding="utf-8")
    lines = ["# Changing Call Graph Trace", "", f"Module: `{module_name}`", f"Policy shown: `{selected_teacher}`", ""]
    for item in trace:
        f = item["feature_snapshot"]
        lines.extend(
            [
                f"## Step {item['step']}: `{item['caller']}` -> `{item['callee']}`",
                f"Decision: **{item['action']}** with displayed probability {item['probability_inline']:.2f}.",
                f"Edges before: `{item['edges_before_count']}`; edges after: `{item['edges_after_count']}`.",
                "Key features: "
                f"callee_instr={f['callee_instruction_count']}, "
                f"callee_users={f['callee_users']}, "
                f"const_args={f['number_constant_params']}, "
                f"cost={f['cost_estimate']:.1f}.",
                "",
            ]
        )
    (OUT / "callgraph_trace.md").write_text("\n".join(lines), encoding="utf-8")
    return {module_name: trace}
