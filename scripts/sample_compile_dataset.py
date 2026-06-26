"""Sample ComPile rows into llvm ir files for optional real-ir imports."""

from __future__ import annotations

import argparse
import base64
import hashlib
import json
import re
import time
from pathlib import Path
from typing import Any

from data import ROOT
from ir_dataset import disassemble_bitcode_bytes, profile_ir_text, should_keep_profile


DEFAULT_OUT = ROOT / "source_snapshot" / "real_ir" / "compile_sample"
DATASET_VIEWER_ROWS_URL = "https://datasets-server.huggingface.co/rows"


def content_to_bytes(value: Any) -> bytes | None:
    if value is None:
        return None
    if isinstance(value, bytes):
        return value
    if isinstance(value, bytearray):
        return bytes(value)
    if isinstance(value, memoryview):
        return value.tobytes()
    if isinstance(value, list) and all(isinstance(item, int) for item in value):
        return bytes(value)
    if isinstance(value, str):
        stripped = value.strip()
        if stripped.startswith("; ModuleID") or stripped.startswith("define "):
            return stripped.encode("utf-8")
        try:
            return base64.b64decode(stripped, validate=True)
        except ValueError:
            return value.encode("utf-8")
    return None


def content_to_ir_text(value: Any, source_name: str) -> tuple[str | None, str]:
    # Accept either text llvm ir or encoded bitcode content.
    data = content_to_bytes(value)
    if data is None:
        return None, "missing or unsupported content value"
    if data.lstrip().startswith(b"; ModuleID") or b"\ndefine " in data[:8192]:
        return data.decode("utf-8", errors="ignore"), ""
    return disassemble_bitcode_bytes(data, source_name)


def safe_name(source_name: str, index: int, content: str) -> str:
    safe = re.sub(r"[^A-Za-z0-9_.-]+", "_", source_name).strip("_") or "module"
    digest = hashlib.sha1(content.encode("utf-8", errors="ignore")).hexdigest()[:8]
    return f"compile_{index:04d}_{safe[:52]}_{digest}.ll"


def profile_score(profile: dict[str, Any]) -> tuple[int, int, int, int, int]:
    patterns = set(profile.get("patterns", []))
    inline_friendly = 0
    inline_friendly += 5 * int("tiny_leaf_helpers" in patterns)
    inline_friendly += 5 * int("constant_argument_calls" in patterns)
    inline_friendly += 4 * int("medium_single_use_callees" in patterns)
    inline_friendly += 2 * int("branchy_callees" in patterns)
    inline_friendly -= 4 * int("large_shared_callees" in patterns)
    inline_friendly -= 2 * int("recursive_edges" in patterns)
    return (
        inline_friendly,
        int(profile.get("pattern_count", 0)),
        int(profile.get("local_call_count", 0)),
        -int("large_shared_callees" in patterns),
        int(profile.get("function_count", 0)),
    )


def load_pyarrow():
    try:
        import pyarrow.parquet as pq
    except ModuleNotFoundError as exc:
        raise SystemExit("pyarrow is required to sample local ComPile parquet shards") from exc
    return pq


def sample_parquet(args: argparse.Namespace) -> dict[str, Any]:
    # Filter local parquet rows before writing accepted ir modules.
    pq = load_pyarrow()
    out_dir = args.out
    out_dir.mkdir(parents=True, exist_ok=True)
    if args.clear:
        for old in out_dir.glob("*.ll"):
            old.unlink()

    languages = {item.lower() for item in (args.languages or ["c", "c++", "cpp"])}
    manifest: dict[str, Any] = {
        "dataset": "llvm-ml/ComPile",
        "note": "Filtered local sample for LLVM inlining-policy experiments.",
        "inputs": [str(path) for path in args.parquet],
        "output": str(out_dir),
        "criteria": {
            "limit": args.limit,
            "max_rows": args.max_rows,
            "max_bytes": args.max_bytes,
            "min_calls": args.min_calls,
            "min_functions": args.min_functions,
            "min_patterns": args.min_patterns,
            "languages": sorted(languages),
        },
        "kept": [],
        "skipped": {},
        "failed": [],
    }

    scanned = 0
    kept = 0
    candidates: list[dict[str, Any]] = []
    for parquet_path in args.parquet:
        parquet = pq.ParquetFile(parquet_path)
        available = set(parquet.schema.names)
        if "content" not in available:
            raise SystemExit(f"{parquet_path} does not contain a `content` column")
        metadata_columns = [
            column
            for column in ("language", "path", "file", "package_source", "license_expression")
            if column in available
        ]
        columns = ["content", *metadata_columns]
        for batch in parquet.iter_batches(batch_size=args.batch_size, columns=columns):
            for row in batch.to_pylist():
                if (not args.ranked and kept >= args.limit) or scanned >= args.max_rows:
                    break
                scanned += 1
                language = str(row.get("language", "")).lower()
                if language and language not in languages:
                    manifest["skipped"]["language"] = manifest["skipped"].get("language", 0) + 1
                    continue

                source_name = str(row.get("path") or row.get("file") or f"{parquet_path.name}_{scanned}")
                text, error = content_to_ir_text(row.get("content"), source_name)
                if text is None:
                    manifest["failed"].append({"row": scanned, "source": source_name, "error": error})
                    continue
                if len(text.encode("utf-8")) > args.max_bytes:
                    manifest["skipped"]["size"] = manifest["skipped"].get("size", 0) + 1
                    continue

                profile = profile_ir_text(text, source_name)
                keep, reason = should_keep_profile(
                    profile,
                    min_calls=args.min_calls,
                    min_functions=args.min_functions,
                    min_patterns=args.min_patterns,
                )
                if not keep:
                    manifest["skipped"][reason] = manifest["skipped"].get(reason, 0) + 1
                    continue

                candidate = {
                    "source": source_name,
                    "text": text,
                    "profile": profile,
                    "package_source": row.get("package_source"),
                    "license_expression": row.get("license_expression"),
                    "score": profile_score(profile),
                }
                if args.ranked:
                    candidates.append(candidate)
                else:
                    candidates = [candidate]

                if not args.ranked:
                    target = out_dir / safe_name(source_name, kept, text)
                    target.write_text(text if text.endswith("\n") else f"{text}\n", encoding="utf-8")
                    manifest["kept"].append(
                        {
                            "source": source_name,
                            "ir": str(target.relative_to(ROOT)),
                            "profile": profile,
                            "package_source": row.get("package_source"),
                            "license_expression": row.get("license_expression"),
                        }
                    )
                    kept += 1
            if (not args.ranked and kept >= args.limit) or scanned >= args.max_rows:
                break
        if (not args.ranked and kept >= args.limit) or scanned >= args.max_rows:
            break

    if args.ranked:
        candidates.sort(key=lambda item: item["score"], reverse=True)
        for index, item in enumerate(candidates[: args.limit]):
            target = out_dir / safe_name(item["source"], index, item["text"])
            target.write_text(item["text"] if item["text"].endswith("\n") else f"{item['text']}\n", encoding="utf-8")
            manifest["kept"].append(
                {
                    "source": item["source"],
                    "ir": str(target.relative_to(ROOT)),
                    "profile": item["profile"],
                    "package_source": item["package_source"],
                    "license_expression": item["license_expression"],
                    "rank_score": list(item["score"]),
                }
            )
        kept = len(manifest["kept"])

    manifest["scanned_rows"] = scanned
    (out_dir / "manifest.json").write_text(json.dumps(manifest, indent=2), encoding="utf-8")
    return manifest


def fetch_rows(dataset: str, config: str, split: str, offset: int, length: int) -> dict[str, Any]:
    try:
        import requests
    except ModuleNotFoundError as exc:
        raise SystemExit("requests is required to fetch ComPile rows through the Hugging Face Dataset Viewer API") from exc
    response = requests.get(
        DATASET_VIEWER_ROWS_URL,
        params={
            "dataset": dataset,
            "config": config,
            "split": split,
            "offset": offset,
            "length": length,
        },
        timeout=90,
    )
    response.raise_for_status()
    return response.json()


def sample_hf_rows(args: argparse.Namespace) -> dict[str, Any]:
    # Fetch and filter dataset-viewer rows in small batches.
    out_dir = args.out
    out_dir.mkdir(parents=True, exist_ok=True)
    if args.clear:
        for old in out_dir.glob("*.ll"):
            old.unlink()

    languages = {item.lower() for item in (args.languages or ["c", "c++", "cpp"])}
    manifest: dict[str, Any] = {
        "dataset": args.dataset,
        "config": args.config,
        "split": args.split,
        "note": "Filtered Hugging Face Dataset Viewer row sample for LLVM inlining-policy experiments.",
        "output": str(out_dir),
        "criteria": {
            "limit": args.limit,
            "max_rows": args.max_rows,
            "row_batch": args.row_batch,
            "start_offset": args.start_offset,
            "max_bytes": args.max_bytes,
            "min_calls": args.min_calls,
            "min_functions": args.min_functions,
            "min_patterns": args.min_patterns,
            "languages": sorted(languages),
        },
        "kept": [],
        "skipped": {},
        "failed": [],
    }

    scanned = 0
    kept = 0
    offset = args.start_offset
    while kept < args.limit and scanned < args.max_rows:
        length = min(args.row_batch, args.max_rows - scanned)
        payload = fetch_rows(args.dataset, args.config, args.split, offset, length)
        rows = payload.get("rows", [])
        if not rows:
            break
        for wrapped in rows:
            if kept >= args.limit or scanned >= args.max_rows:
                break
            scanned += 1
            row = wrapped.get("row", {})
            row_idx = wrapped.get("row_idx", offset)
            language = str(row.get("language", "")).lower()
            if language and language not in languages:
                manifest["skipped"]["language"] = manifest["skipped"].get("language", 0) + 1
                continue

            source_name = str(row.get("package_source") or f"row_{row_idx}")
            text, error = content_to_ir_text(row.get("content"), source_name)
            if text is None:
                manifest["failed"].append({"row": row_idx, "source": source_name, "error": error})
                continue
            if len(text.encode("utf-8")) > args.max_bytes:
                manifest["skipped"]["size"] = manifest["skipped"].get("size", 0) + 1
                continue

            profile = profile_ir_text(text, source_name)
            keep, reason = should_keep_profile(
                profile,
                min_calls=args.min_calls,
                min_functions=args.min_functions,
                min_patterns=args.min_patterns,
            )
            if not keep:
                manifest["skipped"][reason] = manifest["skipped"].get(reason, 0) + 1
                continue

            target = out_dir / safe_name(source_name, kept, text)
            target.write_text(text if text.endswith("\n") else f"{text}\n", encoding="utf-8")
            manifest["kept"].append(
                {
                    "row_idx": row_idx,
                    "source": source_name,
                    "language": row.get("language"),
                    "ir": str(target.relative_to(ROOT)),
                    "profile": profile,
                    "package_source": row.get("package_source"),
                    "license_expression": row.get("license_expression"),
                }
            )
            kept += 1
        offset += len(rows)
        if args.sleep:
            time.sleep(args.sleep)

    manifest["scanned_rows"] = scanned
    manifest["final_offset"] = offset
    (out_dir / "manifest.json").write_text(json.dumps(manifest, indent=2), encoding="utf-8")
    return manifest


def add_common_filter_args(parser: argparse.ArgumentParser) -> None:
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--limit", type=int, default=64)
    parser.add_argument("--max-rows", type=int, default=5000)
    parser.add_argument("--max-bytes", type=int, default=2_500_000)
    parser.add_argument("--min-calls", type=int, default=4)
    parser.add_argument("--min-functions", type=int, default=3)
    parser.add_argument("--min-patterns", type=int, default=2)
    parser.add_argument("--language", dest="languages", action="append", help="Language value to keep; repeatable.")
    parser.add_argument("--clear", action="store_true", help="Remove old .ll files from the output directory first.")
    parser.add_argument("--ranked", action="store_true", help="Scan up to --max-rows and keep the richest accepted modules.")


def main() -> None:
    parser = argparse.ArgumentParser(description="Filter ComPile data into thesis-ready LLVM IR modules.")
    subparsers = parser.add_subparsers(dest="mode")

    parquet_parser = subparsers.add_parser("parquet", help="Sample local ComPile parquet shards.")
    parquet_parser.add_argument("parquet", nargs="+", type=Path, help="Local ComPile parquet shard(s), usually from data/c or data/cpp.")
    parquet_parser.add_argument("--batch-size", type=int, default=16)
    add_common_filter_args(parquet_parser)

    rows_parser = subparsers.add_parser("hf-rows", help="Sample ComPile through the Hugging Face Dataset Viewer rows API.")
    rows_parser.add_argument("--dataset", default="llvm-ml/ComPile")
    rows_parser.add_argument("--config", default="default")
    rows_parser.add_argument("--split", default="train")
    rows_parser.add_argument("--start-offset", type=int, default=0)
    rows_parser.add_argument("--row-batch", type=int, default=10)
    rows_parser.add_argument("--sleep", type=float, default=0.0)
    add_common_filter_args(rows_parser)

    args = parser.parse_args()
    if args.mode == "hf-rows":
        manifest = sample_hf_rows(args)
    else:
        if args.mode is None and getattr(args, "parquet", None) is None:
            parser.error("choose `parquet` or `hf-rows`")
        manifest = sample_parquet(args)
    print(f"kept {len(manifest['kept'])} modules after scanning {manifest['scanned_rows']} rows")
    print(f"manifest: {Path(manifest['output']) / 'manifest.json'}")


if __name__ == "__main__":
    main()
