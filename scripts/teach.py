from __future__ import annotations

import json

from data import Callsite, FEATURE_NAMES, OUT


TEACHERS = [
    "never_inline",
    "small_callee",
    "single_caller",
    "constant_argument",
    "cost_budget",
    "loop_averse",
    "growth_budget",
    "hot_leaf",
    "balanced_score",
    "llvm_like_size",
    "benefit_cost_ratio",
    "aggressive_speed",
    "ml_linear_score",
    "bandit_ucb_proxy",
    "rl_value_proxy",
    "greedy_ir_size",
]


def values(row: Callsite) -> dict[str, float]:
    return dict(zip(FEATURE_NAMES, row.features))


def teacher_action(name: str, row: Callsite) -> int:
    v = values(row)
    if name == "never_inline":
        return 0
    if name == "small_callee":
        return int(v["callee_instruction_count"] <= 9 and not v["is_recursive"])
    if name == "single_caller":
        return int(v["callee_users"] <= 1 and v["callee_instruction_count"] <= 35 and not v["is_recursive"])
    if name == "constant_argument":
        return int(v["number_constant_params"] > 0 and v["cost_estimate"] <= 32 and not v["is_recursive"])
    if name == "cost_budget":
        return int(v["cost_estimate"] <= 13 and v["callee_users"] <= 3 and not v["is_recursive"])
    if name == "loop_averse":
        return int(v["callee_conditionally_executed_blocks"] <= 1 and v["callee_call_count"] <= 1 and not v["is_recursive"])
    if name == "growth_budget":
        growth = v["callee_instruction_count"] * max(1.0, v["callee_users"])
        simplification = 2.5 * v["number_constant_params"] + max(0.0, 2.0 - v["callee_conditionally_executed_blocks"])
        return int(growth - simplification <= 24 and v["caller_instruction_count"] <= 180 and not v["is_recursive"])
    if name == "hot_leaf":
        return int(
            v["callsite_height"] >= 1
            and v["callee_call_count"] == 0
            and v["callee_instruction_count"] <= 18
            and v["callee_users"] <= 4
            and not v["is_recursive"]
        )
    if name == "balanced_score":
        score = (
            1.2 * v["callee_instruction_count"]
            + 2.0 * v["callee_call_count"]
            + 1.5 * v["callee_conditionally_executed_blocks"]
            + 0.4 * v["callee_users"]
            - 3.0 * v["number_constant_params"]
            - (4.0 if v["callee_users"] <= 1 else 0.0)
        )
        return int(score <= 18 and v["caller_instruction_count"] + v["callee_instruction_count"] <= 220 and not v["is_recursive"])
    if name == "llvm_like_size":
        threshold = 12.0
        threshold += 4.0 * min(v["number_constant_params"], 3.0)
        threshold += 2.0 if v["callee_users"] <= 1 else 0.0
        threshold -= 3.0 * v["callee_conditionally_executed_blocks"]
        threshold -= 1.5 * v["callee_call_count"]
        return int(v["cost_estimate"] <= threshold and v["caller_instruction_count"] <= 240 and not v["is_recursive"])
    if name == "benefit_cost_ratio":
        benefit = (
            2.5
            + 4.0 * v["number_constant_params"]
            + 3.0 * (1.0 if v["callee_users"] <= 1 else 0.0)
            + 1.5 * v["callsite_height"]
        )
        cost = 1.0 + v["callee_instruction_count"] + 2.0 * v["callee_conditionally_executed_blocks"] + v["callee_call_count"]
        return int(benefit / cost >= 0.28 and v["callee_instruction_count"] <= 45 and not v["is_recursive"])
    if name == "aggressive_speed":
        hotness = v["callsite_height"] + v["caller_call_count"]
        return int(
            hotness >= 2
            and v["callee_instruction_count"] <= 30
            and v["callee_call_count"] <= 2
            and v["caller_instruction_count"] + v["callee_instruction_count"] <= 320
            and not v["is_recursive"]
        )
    if name == "ml_linear_score":
        score = (
            -0.09 * v["cost_estimate"]
            -0.06 * v["callee_instruction_count"]
            -0.35 * v["callee_conditionally_executed_blocks"]
            -0.18 * v["callee_call_count"]
            -0.10 * v["callee_users"]
            +0.75 * v["number_constant_params"]
            +0.28 * v["callsite_height"]
            +0.55 * (1.0 if v["callee_users"] <= 1 else 0.0)
            -2.0 * v["is_recursive"]
        )
        return int(score >= -1.25 and v["caller_instruction_count"] <= 260)
    if name == "bandit_ucb_proxy":
        expected_gain = (
            1.6 * v["number_constant_params"]
            + 0.9 * (1.0 if v["callee_users"] <= 1 else 0.0)
            + 0.35 * v["callsite_height"]
            - 0.08 * v["callee_instruction_count"]
            - 0.22 * v["callee_conditionally_executed_blocks"]
            - 0.18 * v["callee_call_count"]
        )
        uncertainty_bonus = 1.0 / (1.0 + v["callee_users"]) + 0.04 * min(v["node_count"], 20.0)
        return int(expected_gain + 0.35 * uncertainty_bonus >= 0.35 and v["callee_instruction_count"] <= 38 and not v["is_recursive"])
    if name == "rl_value_proxy":
        immediate = 1.0 + 3.0 * v["number_constant_params"] + 2.0 * (1.0 if v["callee_users"] <= 1 else 0.0)
        future = 0.9 * v["callsite_height"] + 0.6 * max(0.0, 3.0 - v["callee_conditionally_executed_blocks"])
        penalty = 0.10 * v["callee_instruction_count"] + 0.04 * v["caller_instruction_count"] + 0.8 * v["callee_call_count"]
        value = immediate + future - penalty
        return int(value >= 0.65 and v["caller_instruction_count"] + v["callee_instruction_count"] <= 300 and not v["is_recursive"])
    if name == "greedy_ir_size":
        return 0
    raise KeyError(name)


def simulated_module_size(rows: list[Callsite], actions: list[int]) -> float:
    if not rows:
        return 0.0
    per_func: dict[str, float] = {}
    uses: dict[str, int] = {}
    for row in rows:
        v = values(row)
        per_func[row.caller] = max(per_func.get(row.caller, 0.0), v["caller_instruction_count"])
        per_func[row.callee] = max(per_func.get(row.callee, 0.0), v["callee_instruction_count"])
        uses[row.callee] = uses.get(row.callee, 0) + 1
        uses.setdefault(row.caller, uses.get(row.caller, 0))

    size = sum(per_func.values())
    inlined_uses: dict[str, int] = {}
    for row, action in zip(rows, actions):
        if not action:
            continue
        v = values(row)
        size += max(1.0, v["callee_instruction_count"] - 1.0 - 3.0 * v["number_constant_params"])
        inlined_uses[row.callee] = inlined_uses.get(row.callee, 0) + 1

    for fn, count in inlined_uses.items():
        if uses.get(fn, 0) == count and fn != "main":
            size -= per_func.get(fn, 0.0)
    return max(size, 1.0)


def make_bc_dataset(rows: list[Callsite], actual_report: dict | None = None) -> dict:
    by_module: dict[str, list[Callsite]] = {}
    for row in rows:
        by_module.setdefault(row.module, []).append(row)

    labels: dict[tuple[str, str, str, str], int] = {}
    teacher_sizes: dict[str, dict[str, float]]
    selected: dict[str, dict]

    if actual_report:
        teacher_sizes = actual_report["teacher_instruction_counts"]
        selected = actual_report["selected_teachers"]
        action_maps = actual_report.get("teacher_actions", {})
    else:
        teacher_sizes = {}
        selected = {}
        action_maps = {}

    for module, module_rows in by_module.items():
        if module not in selected:
            sizes = {
                teacher: simulated_module_size(module_rows, [teacher_action(teacher, row) for row in module_rows])
                for teacher in TEACHERS
            }
            best = min(sizes, key=sizes.get)
            teacher_sizes[module] = sizes
            selected[module] = {"teacher": best, "objective_value": sizes[best], "metric": "simulated_size"}
        else:
            best = selected[module]["teacher"]
        for row in module_rows:
            module_action_maps = action_maps.get(module, {})
            if best in module_action_maps:
                key = f"{row.caller}\t{row.callee}\t{row.call_line}"
                labels[(row.module, row.caller, row.callee, row.call_line)] = int(module_action_maps[best].get(key, 0))
            else:
                labels[(row.module, row.caller, row.callee, row.call_line)] = teacher_action(best, row)

    samples = [
        {
            "module": row.module,
            "caller": row.caller,
            "callee": row.callee,
            "call_line": row.call_line,
            "features": row.features,
            "label": labels[(row.module, row.caller, row.callee, row.call_line)],
            "selected_teacher": selected[row.module]["teacher"],
        }
        for row in rows
    ]
    payload = {
        "feature_names": FEATURE_NAMES,
        "teachers": TEACHERS,
        "teacher_sizes": teacher_sizes,
        "selected_teachers": selected,
        "samples": samples,
    }
    (OUT / "bc_dataset.json").write_text(json.dumps(payload, indent=2), encoding="utf-8")
    return payload
