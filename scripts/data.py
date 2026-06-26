"""Shared paths and data records used by the pipeline."""

from __future__ import annotations

import re
from dataclasses import dataclass
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SOURCES = [
    ROOT / "source_snapshot" / "DCMTK",
    ROOT / "source_snapshot" / "public_repos",
]
OUT = ROOT / "out"
IR_DIR = OUT / "ir"
NATIVE_DIR = OUT / "native"
FIG_DIR = OUT / "figures"
GIF_DIR = OUT / "gifs"


def is_local_copy_artifact(path: Path) -> bool:
    """Ignore Finder/iCloud-style duplicate files such as `generated_000 3.cc`."""
    return re.search(r" \d+$", path.stem) is not None

FEATURE_NAMES = [
    "caller_basic_block_count",
    "caller_conditionally_executed_blocks",
    "caller_users",
    "callee_basic_block_count",
    "callee_conditionally_executed_blocks",
    "callee_users",
    "callsite_height",
    "cost_estimate",
    "number_constant_params",
    "edge_count",
    "node_count",
    "caller_instruction_count",
    "callee_instruction_count",
    "caller_call_count",
    "callee_call_count",
    "is_recursive",
]


@dataclass
class FunctionIR:
    module: str
    name: str
    lines: list[str]


@dataclass
class Callsite:
    module: str
    caller: str
    callee: str
    call_line: str
    features: list[float]
