"""Build synthetic, public-source, and native compiler artifacts."""

from __future__ import annotations

import json
import os
import re
import shutil
import subprocess
from functools import partial
from pathlib import Path

from data import IR_DIR, NATIVE_DIR, OUT, ROOT, SOURCES, is_local_copy_artifact
from ir_dataset import import_external_ir_modules, real_ir_import_enabled
from pipeline_parallel import parallel_map


GENERATED_DIR = ROOT / "source_snapshot" / "DCMTK" / "generated_inlining"
PUBLIC_ALLOWLIST = ROOT / "source_snapshot" / "public_sources.json"
GENERATED_MODULES = 70
CALLS_PER_MODULE = 16
GENERATOR_DESIGN_SPACE = 4**6


def emit_large_function(
    lines: list[str],
    name: str,
    seed: int,
    *,
    style: int = 0,
    size_profile: int = 0,
    static: bool = True,
) -> None:
    linkage = "static " if static else ""
    lines.extend([f"{linkage}int {name}(int x) {{", "    int s = x;"])
    if style == 0:
        for step in range(8 + size_profile * 5):
            lines.append(f"    s = (s * {step + 3}) + {seed + step};")
            lines.append(f"    s ^= (s >> {(step % 3) + 1});")
    elif style == 1:
        lines.append(f"    for (int i = 0; i < {(seed % 5) + 4 + size_profile * 2}; ++i) {{")
        lines.append(f"        s += (x ^ i) + {seed % 13};")
        lines.append("        s = (s << 1) ^ (s >> 3);")
        lines.append("    }")
    elif style == 2:
        lines.append(f"    int limit = (x & 3) + {(seed % 4) + 3 + size_profile};")
        lines.append("    for (int i = 0; i < limit; ++i) {")
        lines.append(f"        s += (i * i) - {seed % 7};")
        lines.append("        if ((s & 1) == 0) s ^= i + x;")
        lines.append("    }")
    else:
        for step in range(4 + size_profile * 3):
            lines.append(f"    s += (x & {step + 3}) * {seed % 11 + step + 1};")
            lines.append(f"    if ((s % {step + 2}) == 0) s -= {step + seed % 5};")
            lines.append(f"    else s += {step * 2 + 1};")
    lines.extend(["    return s;", "}", ""])


def emit_recursive_function(lines: list[str], name: str, *, style: int = 0) -> None:
    lines.extend([f"static int {name}(int x) {{", "    if (x <= 0) return 0;"])
    if style % 2 == 0:
        lines.append(f"    return x + {name}(x - 1);")
    else:
        lines.append(f"    return (x & 1) ? x + {name}(x - 2) : {name}(x - 1);")
    lines.extend(["}", ""])


def emit_branch_function(lines: list[str], name: str, seed: int, *, style: int = 0) -> None:
    lines.append(f"static int {name}(int mode, int x) {{")
    if style == 0:
        lines.extend(
            [
                f"    if (mode == 0) return x + {seed % 9 + 1};",
                f"    if (mode == 1) return x * {(seed % 4) + 2};",
                f"    if (mode == 2) return x - {(seed % 5) + 3};",
                "    return x + mode;",
            ]
        )
    elif style == 1:
        lines.extend(
            [
                "    switch (mode & 3) {",
                f"    case 0: return x + {seed % 11 + 2};",
                f"    case 1: return x ^ {seed % 17 + 5};",
                f"    case 2: return x * {(seed % 3) + 3};",
                f"    default: return x - {seed % 7 + 1};",
                "    }",
            ]
        )
    elif style == 2:
        lines.extend(
            [
                "    int out = x;",
                f"    if (mode & 1) out += {seed % 8 + 1};",
                f"    if (mode & 2) out ^= {seed % 19 + 3};",
                "    return out;",
            ]
        )
    else:
        lines.extend(
            [
                f"    int t = x + {seed % 5};",
                "    return mode < 2 ? t * (mode + 1) : t - mode;",
            ]
        )
    lines.extend(["}", ""])


def emit_tiny_function(lines: list[str], name: str, offset: int, *, style: int = 0) -> None:
    if style == 0:
        body = f"return x + {offset};"
    elif style == 1:
        body = f"return x ^ {offset};"
    elif style == 2:
        body = f"return (x * {(offset % 5) + 2}) + {offset % 7};"
    else:
        body = f"return x - {offset % 11};"
    lines.extend([f"static int {name}(int x) {{ {body} }}", ""])


def emit_medium_function(lines: list[str], name: str, seed: int, *, style: int = 0, size_profile: int = 0) -> None:
    lines.extend([f"static int {name}(int x) {{", f"    int y = x + {seed % 11 + 3};"])
    if style == 0:
        lines.extend([f"    y = (y * {(seed % 5) + 2}) ^ (y >> 1);", f"    y += {seed % 17};"])
    elif style == 1:
        lines.extend([f"    y = (y << 2) - {seed % 13};", "    y ^= (x & 15);"])
    elif style == 2:
        lines.extend(["    if (x & 1) y += x >> 1;", f"    else y -= {seed % 9};"])
    else:
        lines.extend([f"    for (int i = 0; i < {(seed % 3) + 2}; ++i) y += i + (x & 3);"])
    for extra in range(size_profile):
        lines.append(f"    y += (x & {extra + 3}) * {seed % 7 + extra + 1};")
    lines.extend(["    return y;", "}", ""])


def generate_synthetic_sources() -> None:
    """Create deterministic C++ modules sampled from a 4^6 configuration grid."""
    GENERATED_DIR.mkdir(parents=True, exist_ok=True)
    for old in GENERATED_DIR.glob("generated_*.cc"):
        old.unlink()

    # Enumerate fixed source shapes so repeated runs produce the same modules.
    for module in range(GENERATED_MODULES):
        domain = ["game", "image", "packet", "matrix"][module % 4]
        prefix = f"{domain}_{module:03d}"
        config_id = (module * 17) % GENERATOR_DESIGN_SPACE
        callee_profile = config_id % 4
        call_mix = (config_id // 4) % 4
        argument_pattern = (config_id // 16) % 4
        body_shape = (config_id // 64) % 4
        driver_shape = (config_id // 256) % 4
        size_profile = (config_id // 1024) % 4
        lines = [
            "// Generated deterministic inlining benchmark module.",
            (
                "// Configuration: "
                f"callee_profile={callee_profile}, call_mix={call_mix}, "
                f"argument_pattern={argument_pattern}, body_shape={body_shape}, "
                f"driver_shape={driver_shape}, size_profile={size_profile}. "
                f"Design space={GENERATOR_DESIGN_SPACE}."
            ),
            "",
        ]

        for index in range(8):
            emit_tiny_function(lines, f"{prefix}_tiny_{index}", module + index + 1, style=body_shape)
            emit_branch_function(lines, f"{prefix}_branch_{index}", module + index, style=(body_shape + index) % 4)
            emit_medium_function(
                lines,
                f"{prefix}_medium_{index}",
                module + index,
                style=(body_shape + 2) % 4,
                size_profile=size_profile,
            )
        emit_large_function(lines, f"{prefix}_large_a", module, style=body_shape, size_profile=size_profile)
        emit_large_function(lines, f"{prefix}_large_b", module + 17, style=(body_shape + 1) % 4, size_profile=size_profile)
        emit_branch_function(lines, f"{prefix}_branch_variable", module, style=(body_shape + 3) % 4)
        emit_recursive_function(lines, f"{prefix}_recursive", style=body_shape)

        def one_arg(call_index: int) -> str:
            if argument_pattern == 0:
                return f"x + {call_index}"
            if argument_pattern == 1:
                return str((module + call_index) % 11)
            if argument_pattern == 2:
                return str(call_index % 7) if call_index % 2 == 0 else f"x + {call_index}"
            return "x & 7" if call_index % 3 else str((module + call_index) % 13)

        def mode_arg(call_index: int) -> str:
            if argument_pattern in {1, 2}:
                return str(call_index % 3)
            if argument_pattern == 3 and call_index % 2 == 0:
                return str((module + call_index) % 4)
            return "x & 3"

        def emit_call(call_index: int, selector: int) -> None:
            tiny_index = call_index % 8
            if selector == 0:
                lines.append(f"    total += {prefix}_tiny_{tiny_index}({one_arg(call_index)});")
            elif selector == 1:
                lines.append(
                    f"    total += {prefix}_branch_{tiny_index}({mode_arg(call_index)}, {one_arg(call_index)});"
                )
            elif selector == 2:
                lines.append(f"    total += {prefix}_medium_{tiny_index}({one_arg(call_index)});")
            elif selector == 3:
                target = f"{prefix}_large_a" if call_index % 2 == 0 else f"{prefix}_large_b"
                lines.append(f"    total += {target}({one_arg(call_index)});")
            elif selector == 4:
                lines.append(
                    f"    total += {prefix}_branch_variable({mode_arg(call_index)}, {one_arg(call_index)});"
                )
            else:
                lines.append(f"    total += {prefix}_recursive({call_index % 4});")

        driver_name = ["entry", "dispatch", "step", "kernel"][driver_shape]
        lines.extend([f"extern \"C\" int {prefix}_{driver_name}(int x) {{", "    int total = 0;"])
        for call in range(CALLS_PER_MODULE):
            if callee_profile == 0:
                base_selector = 0 if call < 8 else 3 if call < 12 else 4 if call < 14 else 5
            elif callee_profile == 1:
                base_selector = 1 if call < 8 else 4 if call < 12 else 3 if call < 14 else 5
            elif callee_profile == 2:
                base_selector = 2 if call < 8 else 3 if call < 12 else 4 if call < 14 else 5
            else:
                base_selector = [3, 3, 4, 5][call % 4]

            if call_mix == 0:
                selector = base_selector
            elif call_mix == 1:
                selector = [0, 1, 2, 3, 4, 5][call % 6]
            elif call_mix == 2:
                selector = 5 if call in {3, 7, 11, 15} else base_selector
            else:
                selector = 4 if call % 5 == 0 else base_selector
            before = len(lines)
            emit_call(call, selector)
            if driver_shape == 1 and call % 4 == 3:
                lines[-1] = lines[-1].replace("total +=", "total ^= ")
            elif driver_shape == 2 and call % 3 == 2:
                call_expr = lines.pop()[len("    total += ") :].rstrip(";")
                lines.append(f"    if ((x + {call}) & 1) total += {call_expr};")
            elif driver_shape == 3 and call % 5 == 4:
                call_expr = lines.pop()[len("    total += ") :].rstrip(";")
                lines.append(f"    total += ({call_expr}) & 255;")
            assert len(lines) >= before
        lines.extend(["    return total;", "}", ""])

        (GENERATED_DIR / f"generated_{module:03d}.cc").write_text("\n".join(lines), encoding="utf-8")


def run(cmd: list[str]) -> subprocess.CompletedProcess[str]:
    return subprocess.run(cmd, text=True, capture_output=True, check=False)


def ensure_clang() -> str:
    clang = shutil.which("clang")
    if not clang:
        raise SystemExit("clang not found on PATH")
    return clang


def compiler_for(source: Path) -> str:
    if source.suffix == ".c":
        clang = shutil.which("clang")
        if not clang:
            raise SystemExit("clang not found on PATH")
        return clang
    clangxx = shutil.which("clang++")
    if not clangxx:
        raise SystemExit("clang++ not found on PATH")
    return clangxx


def source_files() -> list[Path]:
    generate_synthetic_sources()
    disable_public = os.environ.get("THESIS_DISABLE_PUBLIC_SOURCES") == "1"
    allowed_public: set[Path] | None = None
    if PUBLIC_ALLOWLIST.exists() and not disable_public and os.environ.get("THESIS_IGNORE_PUBLIC_ALLOWLIST") != "1":
        payload = json.loads(PUBLIC_ALLOWLIST.read_text(encoding="utf-8"))
        allowed_public = {ROOT / item for item in payload.get("sources", [])}
    files: list[Path] = []
    for root in SOURCES:
        if root.exists():
            files.extend(sorted(root.rglob("*.cpp")))
            files.extend(sorted(root.rglob("*.cc")))
            files.extend(sorted(root.rglob("*.cxx")))
            files.extend(sorted(root.rglob("*.c")))
    selected = []
    public_root = ROOT / "source_snapshot" / "public_repos"
    for path in files:
        if is_local_copy_artifact(path):
            continue
        if disable_public and path.is_relative_to(public_root):
            continue
        if allowed_public is not None and path.is_relative_to(public_root) and path not in allowed_public:
            continue
        selected.append(path)
    return selected


def standard_for(source: Path) -> str:
    if source.suffix == ".c":
        return "-std=c11"
    if source.stem == "cxx20":
        return "-std=c++20"
    return "-std=c++17"


def artifact_name(source: Path, suffix: str) -> str:
    rel = source.relative_to(ROOT)
    safe = re.sub(r"[^A-Za-z0-9_.-]+", "_", str(rel.with_suffix("")))
    return f"{safe}{suffix}"


def compile_source_to_ir(source: Path) -> dict:
    # Compile with inlining disabled so the rewrite step owns the inline choice.
    compiler = compiler_for(source)
    target = IR_DIR / artifact_name(source, ".ll")
    cmd = [
        compiler,
        standard_for(source),
        "-S",
        "-emit-llvm",
        "-O0",
        "-fno-inline",
        "-fno-discard-value-names",
        str(source),
        "-o",
        str(target),
    ]
    proc = run(cmd)
    item = {"source": str(source.relative_to(ROOT))}
    if proc.returncode == 0:
        item["ir"] = str(target.relative_to(ROOT))
    else:
        item["command"] = cmd
        item["stderr"] = proc.stderr[-2000:]
    return item


def compile_to_ir(sources: list[Path] | None = None) -> dict:
    ensure_clang()
    IR_DIR.mkdir(parents=True, exist_ok=True)
    for old in IR_DIR.glob("*.ll"):
        if not is_local_copy_artifact(old):
            old.unlink()
    report = {"compiled": [], "imported_ir": [], "skipped_ir": [], "failed": []}
    sources = list(source_files() if sources is None else sources)
    for item in parallel_map(compile_source_to_ir, sources):
        if "ir" in item:
            report["compiled"].append(item)
        else:
            report["failed"].append(item)
    if real_ir_import_enabled():
        import_report = import_external_ir_modules()
    else:
        import_report = {
            "enabled": False,
            "roots": [],
            "criteria": {},
            "imported": [],
            "skipped": [],
            "failed": [],
            "note": "Set THESIS_IMPORT_REAL_IR=1 to import local real LLVM IR datasets.",
        }
        OUT.mkdir(exist_ok=True)
        (OUT / "real_ir_import_report.json").write_text(json.dumps(import_report, indent=2), encoding="utf-8")
    report["imported_ir"] = import_report["imported"]
    report["skipped_ir"] = import_report["skipped"]
    for item in import_report["failed"]:
        report["failed"].append({"source": item["input"], "stderr": item["error"], "kind": "real_ir_import"})
    (OUT / "compile_report.json").write_text(json.dumps(report, indent=2), encoding="utf-8")
    return report


def compile_demo_sources() -> dict:
    """Compile a few representative generated sources for a quick live demo."""
    ensure_clang()
    demo_dir = OUT / "demo"
    demo_ir_dir = demo_dir / "ir"
    demo_ir_dir.mkdir(parents=True, exist_ok=True)
    generate_synthetic_sources()
    selected = [0, 1, 2, 3]
    report = {"compiled": [], "failed": []}
    for module in selected:
        source = GENERATED_DIR / f"generated_{module:03d}.cc"
        target = demo_ir_dir / f"generated_{module:03d}.ll"
        source_arg = f"./{source.relative_to(ROOT)}"
        target_arg = f"./{target.relative_to(ROOT)}"
        cmd = [
            compiler_for(source),
            standard_for(source),
            "-S",
            "-emit-llvm",
            "-O0",
            "-fno-inline",
            "-fno-discard-value-names",
            source_arg,
            "-o",
            target_arg,
        ]
        proc = run(cmd)
        item = {
            "source": str(source.relative_to(ROOT)),
            "ir": str(target.relative_to(ROOT)),
            "command": " ".join(cmd),
        }
        if proc.returncode == 0:
            report["compiled"].append(item)
        else:
            item["stderr"] = proc.stderr[-2000:]
            report["failed"].append(item)
    (demo_dir / "demo_compile_report.json").write_text(json.dumps(report, indent=2), encoding="utf-8")
    return report


def text_size(path: Path) -> int | None:
    llvm_size = shutil.which("llvm-size")
    if llvm_size:
        proc = run([llvm_size, "--format=sysv", str(path)])
        if proc.returncode == 0:
            for line in proc.stdout.splitlines():
                parts = line.split()
                if parts and parts[0] in {"__text", ".text"} and len(parts) >= 2:
                    return int(parts[1])
    size = shutil.which("size")
    if size:
        proc = run([size, "-m", str(path)])
        if proc.returncode == 0:
            match = re.search(r"Section\s+\(__TEXT,\s*__text\):\s*(\d+)", proc.stdout)
            if match:
                return int(match.group(1))
    return None


def compile_native_source(source: Path, *, mode: str, flags: list[str], mode_dir: Path) -> dict:
    # Native object files are used for size measurements after compilation.
    compiler = compiler_for(source)
    target = mode_dir / artifact_name(source, ".o")
    cmd = [compiler, standard_for(source), *flags, "-c", str(source), "-o", str(target)]
    proc = run(cmd)
    item = {"source": str(source.relative_to(ROOT))}
    if proc.returncode == 0:
        item["object"] = str(target.relative_to(ROOT))
        item["text_size"] = text_size(target)
        item["object_size"] = target.stat().st_size
    else:
        item["command"] = cmd
        item["stderr"] = proc.stderr[-2000:]
    return item


def compile_native_baselines(sources: list[Path] | None = None) -> dict:
    ensure_clang()
    NATIVE_DIR.mkdir(parents=True, exist_ok=True)
    modes = {
        "no_inline_Oz": ["-Oz", "-fno-inline"],
        "no_inline_Os": ["-Os", "-fno-inline"],
        "llvm_Oz": ["-Oz"],
        "llvm_Os": ["-Os"],
        "llvm_O2": ["-O2"],
        "no_inline_O0": ["-O0", "-fno-inline"],
    }
    report: dict[str, dict] = {"modes": {}, "common_sources": [], "common_summary": {}}
    source_set_by_mode: dict[str, set[str]] = {}
    sources = list(source_files() if sources is None else sources)

    for mode, flags in modes.items():
        mode_dir = NATIVE_DIR / mode
        mode_dir.mkdir(parents=True, exist_ok=True)
        mode_items = parallel_map(
            partial(compile_native_source, mode=mode, flags=flags, mode_dir=mode_dir),
            sources,
        )
        compiled = [item for item in mode_items if item.get("object")]
        failed = [item for item in mode_items if not item.get("object")]

        source_set_by_mode[mode] = {item["source"] for item in compiled if item.get("text_size") is not None}
        sizes = [int(item["text_size"]) for item in compiled if item.get("text_size") is not None]
        object_sizes = [int(item["object_size"]) for item in compiled if item.get("object_size") is not None]
        report["modes"][mode] = {
            "flags": flags,
            "compiled": compiled,
            "failed": failed,
            "compiled_count": len(compiled),
            "failed_count": len(failed),
            "total_text_size": sum(sizes),
            "average_text_size": sum(sizes) / max(1, len(sizes)),
            "total_object_size": sum(object_sizes),
            "average_object_size": sum(object_sizes) / max(1, len(object_sizes)),
        }

    common = set.intersection(*source_set_by_mode.values()) if source_set_by_mode else set()
    report["common_sources"] = sorted(common)
    for mode, info in report["modes"].items():
        sizes = [
            int(item["text_size"])
            for item in info["compiled"]
            if item["source"] in common and item.get("text_size") is not None
        ]
        object_sizes = [
            int(item["object_size"])
            for item in info["compiled"]
            if item["source"] in common and item.get("object_size") is not None
        ]
        report["common_summary"][mode] = {
            "common_count": len(sizes),
            "total_text_size": sum(sizes),
            "average_text_size": sum(sizes) / max(1, len(sizes)),
            "total_object_size": sum(object_sizes),
            "average_object_size": sum(object_sizes) / max(1, len(object_sizes)),
        }

    (OUT / "native_baselines.json").write_text(json.dumps(report, indent=2), encoding="utf-8")
    return report
