"""Import external llvm ir modules into the local experiment dataset."""

from __future__ import annotations

import gzip
import hashlib
import json
import os
import re
import shutil
import subprocess
from pathlib import Path
from typing import Any

from data import IR_DIR, OUT, ROOT
from ir import (
    call_lines,
    constant_arg_count,
    instruction_count,
    is_project_function,
    label_count,
    parse_functions_from_lines,
)


# Only the llvm test-suite is used as the default real ir source for benchmark consistency.
# ComPile and compile_sample are legacy and should only be imported via explicit configuration.
DEFAULT_REAL_IR_ROOTS = [
    ROOT / "source_snapshot" / "llvm_test_suite_ir",
]


def real_ir_import_enabled() -> bool:
    raw = os.environ.get("THESIS_IMPORT_REAL_IR", "")
    return raw.lower() in {"1", "true", "yes", "on"}


def env_int(name: str, default: int) -> int:
    raw = os.environ.get(name)
    if not raw:
        return default
    try:
        return int(raw)
    except ValueError:
        return default


def configured_real_ir_roots(extra_roots: list[Path] | None = None) -> list[Path]:
    env_roots = os.environ.get("THESIS_REAL_IR_DIRS", "")
    if env_roots.strip():
        # When configured, use only those roots for reproducibility.
        roots = []
        for raw in env_roots.split(os.pathsep):
            if not raw.strip():
                continue
            path = Path(raw).expanduser()
            # Resolve relative paths relative to the repo root for consistent behavior.
            if not path.is_absolute():
                path = ROOT / path
            roots.append(path)
    else:
        # Use defaults + extra roots.
        roots = list(extra_roots or [])
        roots.extend(DEFAULT_REAL_IR_ROOTS)

    seen: set[Path] = set()
    out: list[Path] = []
    for root in roots:
        resolved = root.resolve()
        if resolved in seen:
            continue
        seen.add(resolved)
        if root.exists():
            out.append(root)
        else:
            # Warn when a specified root does not exist.
            import sys
            print(f"Warning: THESIS_REAL_IR_DIRS root does not exist: {root}", file=sys.stderr)
    return out


def is_ir_candidate(path: Path) -> bool:
    name = path.name
    return path.suffix in {".ll", ".bc"} or name.endswith(".ll.gz")


def iter_ir_candidates(roots: list[Path]) -> list[Path]:
    candidates: list[Path] = []
    for root in roots:
        if root.is_file():
            if is_ir_candidate(root):
                candidates.append(root)
            continue
        candidates.extend(path for path in sorted(root.rglob("*")) if path.is_file() and is_ir_candidate(path))
    return candidates


def llvm_dis_path() -> str:
    llvm_dis = shutil.which("llvm-dis")
    if not llvm_dis:
        raise SystemExit("llvm-dis not found on PATH; needed to import LLVM bitcode datasets")
    return llvm_dis


def disassemble_bitcode_bytes(data: bytes, source_name: str = "<memory>") -> tuple[str | None, str]:
    proc = subprocess.run(
        [llvm_dis_path(), "-o", "-", "-"],
        input=data,
        capture_output=True,
        check=False,
    )
    if proc.returncode != 0:
        return None, f"{source_name}: {proc.stderr.decode(errors='ignore')[-2000:]}"
    return proc.stdout.decode("utf-8", errors="ignore"), ""


def read_ir_text(path: Path) -> tuple[str | None, str]:
    try:
        if path.name.endswith(".ll.gz"):
            return gzip.decompress(path.read_bytes()).decode("utf-8", errors="ignore"), ""
        if path.suffix == ".ll":
            return path.read_text(encoding="utf-8", errors="ignore"), ""
        if path.suffix == ".bc":
            return disassemble_bitcode_bytes(path.read_bytes(), str(path))
    except OSError as exc:
        return None, str(exc)
    return None, f"unsupported IR input format: {path}"


def profile_ir_text(text: str, module_name: str) -> dict[str, Any]:
    # Check whether a candidate module has enough local calls to be useful.
    functions = parse_functions_from_lines(text.splitlines(), module_name)
    edges: list[tuple[str, str, str]] = []
    for caller, fn in functions.items():
        if not is_project_function(caller):
            continue
        for callee, line in call_lines(fn):
            if callee in functions and is_project_function(callee):
                edges.append((caller, callee, line))

    callee_users: dict[str, int] = {}
    for _, callee, _ in edges:
        callee_users[callee] = callee_users.get(callee, 0) + 1

    patterns: set[str] = set()
    for caller, callee, line in edges:
        callee_fn = functions[callee]
        callee_instr = instruction_count(callee_fn)
        callee_calls = len([target for target, _ in call_lines(callee_fn) if target in functions])
        callee_blocks = max(1, label_count(callee_fn))
        users = callee_users.get(callee, 0)

        if callee_instr <= 9 and callee_calls == 0:
            patterns.add("tiny_leaf_helpers")
        if constant_arg_count(line) > 0:
            patterns.add("constant_argument_calls")
        if users <= 1 and 9 < callee_instr <= 45:
            patterns.add("medium_single_use_callees")
        if users > 1:
            patterns.add("shared_callees")
        if users > 1 and callee_instr >= 20:
            patterns.add("large_shared_callees")
        if callee_blocks > 1:
            patterns.add("branchy_callees")
        if caller == callee:
            patterns.add("recursive_edges")
        if callee_instr >= 45:
            patterns.add("large_callees")

    return {
        "function_count": len(functions),
        "local_call_count": len(edges),
        "pattern_count": len(patterns),
        "patterns": sorted(patterns),
    }


def should_keep_profile(
    profile: dict[str, Any],
    *,
    min_calls: int,
    min_functions: int,
    min_patterns: int,
) -> tuple[bool, str]:
    if profile["function_count"] < min_functions:
        return False, f"only {profile['function_count']} functions"
    if profile["local_call_count"] < min_calls:
        return False, f"only {profile['local_call_count']} local callsites"
    if profile["pattern_count"] < min_patterns:
        return False, f"only {profile['pattern_count']} inlining-pattern classes"
    return True, "kept"


def imported_name_for(path: Path, index: int) -> str:
    raw = path.name
    if raw.endswith(".ll.gz"):
        raw = raw[:-6]
    else:
        raw = path.stem
    safe = re.sub(r"[^A-Za-z0-9_.-]+", "_", raw).strip("_") or "module"
    digest = hashlib.sha1(str(path).encode("utf-8")).hexdigest()[:8]
    return f"real_{index:04d}_{safe[:64]}_{digest}.ll"


def import_external_ir_modules(extra_roots: list[Path] | None = None) -> dict[str, Any]:
    # Copy only bounded-size modules that satisfy the local call-site filters.
    roots = configured_real_ir_roots(extra_roots)
    max_modules = env_int("THESIS_REAL_IR_MAX_MODULES", 128)
    max_bytes = env_int("THESIS_REAL_IR_MAX_BYTES", 2_500_000)
    min_calls = env_int("THESIS_REAL_IR_MIN_CALLS", 1)
    min_functions = env_int("THESIS_REAL_IR_MIN_FUNCTIONS", 2)
    min_patterns = env_int("THESIS_REAL_IR_MIN_PATTERNS", 1)

    report: dict[str, Any] = {
        "enabled": True,
        "roots": [str(root) for root in roots],
        "criteria": {
            "max_modules": max_modules,
            "max_bytes": max_bytes,
            "min_calls": min_calls,
            "min_functions": min_functions,
            "min_patterns": min_patterns,
        },
        "imported": [],
        "skipped": [],
        "failed": [],
    }
    imported = 0
    for path in iter_ir_candidates(roots):
        if imported >= max_modules:
            break
        try:
            size = path.stat().st_size
        except OSError as exc:
            report["failed"].append({"input": str(path), "error": str(exc)})
            continue
        if size > max_bytes and path.suffix != ".bc":
            report["skipped"].append({"input": str(path), "reason": f"larger than {max_bytes} bytes"})
            continue

        text, error = read_ir_text(path)
        if text is None:
            report["failed"].append({"input": str(path), "error": error})
            continue
        if len(text.encode("utf-8")) > max_bytes:
            report["skipped"].append({"input": str(path), "reason": f"text IR larger than {max_bytes} bytes"})
            continue

        profile = profile_ir_text(text, path.name)
        keep, reason = should_keep_profile(
            profile,
            min_calls=min_calls,
            min_functions=min_functions,
            min_patterns=min_patterns,
        )
        if not keep:
            report["skipped"].append({"input": str(path), "reason": reason, "profile": profile})
            continue

        target = IR_DIR / imported_name_for(path, imported)
        target.write_text(text if text.endswith("\n") else f"{text}\n", encoding="utf-8")
        report["imported"].append(
            {
                "input": str(path),
                "ir": str(target.relative_to(ROOT)),
                "profile": profile,
            }
        )
        imported += 1

    OUT.mkdir(exist_ok=True)
    (OUT / "real_ir_import_report.json").write_text(json.dumps(report, indent=2), encoding="utf-8")
    return report
