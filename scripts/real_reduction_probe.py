"""Probe extra real-source files for modules with measurable ir reduction."""

from __future__ import annotations

import json
import shutil
from pathlib import Path

import build
import data
import ir
import rewrite
from build import compile_to_ir
from ir import extract_features
from rewrite import rewrite_teacher_policies


ROOT = data.ROOT
OUT = data.OUT
PROBE = OUT / "real_reduction_probe"
PROBE_IR = PROBE / "ir"
PROBE_REWRITE = PROBE / "rewritten_ir"


def existing(rel_paths: list[str]) -> list[Path]:
    out = []
    for rel in rel_paths:
        path = ROOT / rel
        if path.exists():
            out.append(path)
    return out


def candidate_sources() -> list[Path]:
    # Prefer known benchmark-style C sources, capped to keep the probe quick.
    cbench_roots = [
        "source_snapshot/public_repos/ctuning-programs/program/cbench-bzip2",
        "source_snapshot/public_repos/ctuning-programs/program/cbench-automotive-bitcount",
        "source_snapshot/public_repos/ctuning-programs/program/cbench-automotive-susan",
        "source_snapshot/public_repos/ctuning-programs/program/cbench-network-dijkstra",
        "source_snapshot/public_repos/ctuning-programs/program/cbench-network-patricia",
        "source_snapshot/public_repos/ctuning-programs/program/cbench-security-sha",
        "source_snapshot/public_repos/ctuning-programs/program/cbench-security-rijndael",
        "source_snapshot/public_repos/ctuning-programs/program/cbench-security-blowfish",
        "source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-adpcm-c",
        "source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-adpcm-d",
        "source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-crc32",
        "source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-gsm",
        "source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c",
        "source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d",
    ]
    root_candidates: list[Path] = []
    for rel in cbench_roots:
        root = ROOT / rel
        if root.exists():
            root_candidates.extend(sorted(root.glob("*.c"))[:3])

    explicit = existing(
        [
            "source_snapshot/public_repos/mibench/consumer/lame/lame3.70/rtp.c",
            "source_snapshot/public_repos/mibench/network/patricia/patricia_test.c",
            "source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/intl/loadmsgcat.c",
            "source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jcmarker.c",
            "source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/rdjpgcom.c",
            "source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/wrjpgcom.c",
            "source_snapshot/public_repos/embench-iot/src/picojpeg/libpicojpeg.c",
            "source_snapshot/public_repos/embench-iot/src/crc32/crc_32.c",
            "source_snapshot/public_repos/embench-iot/src/nettle-aes/aes.c",
            "source_snapshot/public_repos/embench-iot/src/nettle-sha256/sha256.c",
            "source_snapshot/public_repos/coremark/core_list_join.c",
            "source_snapshot/public_repos/coremark/core_matrix.c",
            "source_snapshot/public_repos/coremark/core_state.c",
            "source_snapshot/public_repos/coremark/core_util.c",
            "source_snapshot/public_repos/sqlite/ext/misc/basexx.c",
            "source_snapshot/public_repos/sqlite/ext/misc/fossildelta.c",
            "source_snapshot/public_repos/sqlite/ext/misc/percentile.c",
            "source_snapshot/public_repos/sqlite/ext/misc/fileio.c",
            "source_snapshot/public_repos/sqlite/test/ctime.c",
            "source_snapshot/public_repos/sqlite/test/speedtest1.c",
            "source_snapshot/public_repos/sqlite/tool/speed-check.sh",
            "source_snapshot/public_repos/sqlite3/sqlite3.c",
            "source_snapshot/public_repos/sqlite/MultiSource/Applications/sqlite3/sqlite3.c",
            "source_snapshot/public_repos/llvm-test-suite/MultiSource/Applications/sqlite3/sqlite3.c",
            "source_snapshot/public_repos/cJSON/cJSON.c",
            "source_snapshot/public_repos/cJSON/cJSON_Utils.c",
            "source_snapshot/public_repos/parson/parson.c",
            "source_snapshot/public_repos/zlib/adler32.c",
            "source_snapshot/public_repos/zlib/crc32.c",
            "source_snapshot/public_repos/zlib/deflate.c",
            "source_snapshot/public_repos/zlib/inflate.c",
            "source_snapshot/public_repos/zlib/trees.c",
            "source_snapshot/public_repos/zlib/zutil.c",
            "source_snapshot/public_repos/lz4/lib/lz4.c",
            "source_snapshot/public_repos/lz4/lib/lz4frame.c",
        ]
    )

    seen = set()
    selected = []
    for path in explicit + root_candidates:
        if path.suffix not in {".c", ".cc", ".cpp", ".cxx"}:
            continue
        if path in seen:
            continue
        seen.add(path)
        selected.append(path)
        if len(selected) >= 30:
            break
    return selected


def configure_probe_dirs() -> None:
    # Redirect shared module globals so the probe writes into its own output tree.
    if PROBE.exists():
        shutil.rmtree(PROBE)
    PROBE_IR.mkdir(parents=True, exist_ok=True)
    PROBE_REWRITE.mkdir(parents=True, exist_ok=True)
    data.OUT = PROBE
    data.IR_DIR = PROBE_IR
    build.OUT = PROBE
    build.IR_DIR = PROBE_IR
    ir.OUT = PROBE
    ir.IR_DIR = PROBE_IR
    rewrite.OUT = PROBE
    rewrite.IR_DIR = PROBE_IR
    rewrite.REWRITE_DIR = PROBE_REWRITE


def main() -> None:
    configure_probe_dirs()
    sources = candidate_sources()
    compile_report = compile_to_ir(sources)
    rows = extract_features()
    teacher_rewrite = rewrite_teacher_policies(rows)

    by_module = {row.module: [] for row in rows}
    for row in rows:
        by_module[row.module].append(row)

    ir_to_source = {
        Path(item["ir"]).name: item["source"]
        for item in compile_report["compiled"]
        if item.get("ir")
    }
    top = []
    for module, selected in teacher_rewrite["selected_teachers"].items():
        never = teacher_rewrite["teachers"]["never_inline"][module]["after_instruction_count"]
        best = selected["objective_value"]
        reduction = (never - best) / never * 100.0 if never else 0.0
        actions = teacher_rewrite["teacher_actions"][module][selected["teacher"]]
        top.append(
            {
                "source": ir_to_source.get(module, module),
                "module": module,
                "teacher": selected["teacher"],
                "never_ir": never,
                "best_ir": best,
                "reduction_pct": reduction,
                "inline_labels": sum(actions.values()),
                "callsites": len(by_module.get(module, [])),
            }
        )
    top.sort(key=lambda item: item["reduction_pct"], reverse=True)
    summary = {
        "candidate_count": len(sources),
        "compiled": len(compile_report["compiled"]),
        "failed": len(compile_report["failed"]),
        "callsites": len(rows),
        "modules_with_calls": len(by_module),
        "top": top,
        "failed_sources": compile_report["failed"],
    }
    (PROBE / "summary.json").write_text(json.dumps(summary, indent=2), encoding="utf-8")
    print(json.dumps(summary, indent=2))


if __name__ == "__main__":
    main()
