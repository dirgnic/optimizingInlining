from __future__ import annotations

import json
import re
from dataclasses import asdict
from pathlib import Path

from data import Callsite, FEATURE_NAMES, FunctionIR, IR_DIR, OUT, is_local_copy_artifact


def parse_functions_from_lines(lines: list[str], module: str) -> dict[str, FunctionIR]:
    functions: dict[str, FunctionIR] = {}
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
            functions[current_name] = FunctionIR(module, current_name, current_lines)
            current_name = None
            current_lines = []
    return functions


def parse_functions(path: Path) -> dict[str, FunctionIR]:
    return parse_functions_from_lines(path.read_text(encoding="utf-8", errors="ignore").splitlines(), path.name)


def label_count(fn: FunctionIR) -> int:
    label_re = re.compile(r"^[A-Za-z$._0-9-]+:\s*(;.*)?$")
    return sum(1 for line in fn.lines if label_re.match(line.strip()))


def instruction_count(fn: FunctionIR) -> int:
    label_re = re.compile(r"^[A-Za-z$._0-9-]+:\s*(;.*)?$")
    count = 0
    for line in fn.lines:
        stripped = line.strip()
        if not stripped or stripped.startswith(";") or label_re.match(stripped):
            continue
        if stripped in {"{", "}"} or stripped.startswith("define "):
            continue
        count += 1
    return count


def call_lines(fn: FunctionIR) -> list[tuple[str, str]]:
    call_re = re.compile(r"\bcall\b.*@(?P<name>[^(\s]+)\(")
    out: list[tuple[str, str]] = []
    for line in fn.lines:
        match = call_re.search(line)
        if match:
            out.append((match.group("name"), line.strip()))
    return out


def is_project_function(name: str) -> bool:
    external_prefixes = ("_ZSt", "_ZNSt", "_ZNKSt", "_ZNSa", "_ZNKSa", "_ZZNSt", "__", "llvm.")
    return not name.startswith(external_prefixes)


def constant_arg_count(call_line: str) -> int:
    literal = r"[-+]?(?:\d+(?:\.\d+)?|true|false)"
    return len(re.findall(rf"\b(?:i\d+|float|double)\b(?:\s+\w+)*\s+{literal}\b", call_line))


def callsite_height(
    caller: str,
    reverse_edges: dict[str, list[str]],
    memo: dict[str, int],
    visiting: set[str] | None = None,
) -> int:
    if caller in memo:
        return memo[caller]
    visiting = set() if visiting is None else visiting
    if caller in visiting:
        return 0
    parents = reverse_edges.get(caller, [])
    if not parents:
        memo[caller] = 0
        return 0
    next_visiting = visiting | {caller}
    memo[caller] = 1 + max(callsite_height(parent, reverse_edges, memo, next_visiting) for parent in parents)
    return memo[caller]


def extract_features() -> list[Callsite]:
    rows: list[Callsite] = []
    for module_path in sorted(IR_DIR.glob("*.ll")):
        if is_local_copy_artifact(module_path):
            continue
        functions = parse_functions(module_path)
        edges: list[tuple[str, str, str]] = []
        for caller, fn in functions.items():
            for callee, line in call_lines(fn):
                if callee in functions and is_project_function(caller) and is_project_function(callee):
                    edges.append((caller, callee, line))

        indegree = {name: 0 for name in functions}
        reverse_edges: dict[str, list[str]] = {}
        for caller, callee, _ in edges:
            indegree[callee] = indegree.get(callee, 0) + 1
            reverse_edges.setdefault(callee, []).append(caller)

        height_memo: dict[str, int] = {}
        for caller, callee, line in edges:
            caller_fn = functions[caller]
            callee_fn = functions[callee]
            caller_instr = instruction_count(caller_fn)
            callee_instr = instruction_count(callee_fn)
            caller_bb = max(1, label_count(caller_fn))
            callee_bb = max(1, label_count(callee_fn))
            caller_calls = len([target for target, _ in call_lines(caller_fn) if target in functions])
            callee_calls = len([target for target, _ in call_lines(callee_fn) if target in functions])
            const_args = constant_arg_count(line)
            recursive = float(caller == callee)
            cost = (
                callee_instr
                + 1.5 * callee_bb
                + 2.0 * callee_calls
                - 2.0 * const_args
                - (3.0 if indegree.get(callee, 0) <= 1 else 0.0)
                + (20.0 if recursive else 0.0)
            )
            rows.append(
                Callsite(
                    module_path.name,
                    caller,
                    callee,
                    line,
                    [
                        float(caller_bb),
                        float(max(0, caller_bb - 1)),
                        float(indegree.get(caller, 0)),
                        float(callee_bb),
                        float(max(0, callee_bb - 1)),
                        float(indegree.get(callee, 0)),
                        float(callsite_height(caller, reverse_edges, height_memo)),
                        float(cost),
                        float(const_args),
                        float(len(edges)),
                        float(len(functions)),
                        float(caller_instr),
                        float(callee_instr),
                        float(caller_calls),
                        float(callee_calls),
                        recursive,
                    ],
                )
            )

    payload = {"feature_names": FEATURE_NAMES, "callsites": [asdict(row) for row in rows]}
    (OUT / "features.json").write_text(json.dumps(payload, indent=2), encoding="utf-8")
    return rows
