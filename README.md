# Thesis Pipeline

Repository: https://github.com/dirgnic/optimizingInlining

This folder contains the reproducible thesis experiment for ML-guided LLVM
inlining. The default run is intentionally small enough to execute locally and
to demonstrate the full path from C++ sources to rewritten LLVM IR artifacts.

## What The Pipeline Does

```text
C++ sources
  -> Clang -O0 -fno-inline
  -> LLVM IR (.ll)
  -> call-site feature extraction
  -> teacher-policy IR rewrites
  -> best teacher per module
  -> behavior-cloning dataset
  -> student classifiers
  -> student-policy IR rewrites
  -> rewritten IR and native .text measurements
  -> figures and Markdown summaries
```

The full command is:

```bash
python3 scripts/run.py all
```

For a short inspection run, use:

```bash
python3 scripts/run.py demo
```

The demo compiles four generated modules, extracts call sites, applies the
`small_callee` teacher through the same clone-and-`opt` rewrite path, prints the
first decisions, and writes `out/demo/demo_decisions.json` plus rewritten IR
under `out/demo/rewritten/`.

For the defense, record one successful terminal run before the presentation and
keep the generated `out/` artifacts available. The command is still suitable for
a live demo, but a pre-recorded run avoids losing time to local toolchain noise.

## Default Script Order

| Step | Script | Role |
|---:|---|---|
| 0 | `scripts/data.py` | Shared paths, feature names, and dataclasses. |
| 1 | `scripts/run.py` | Main command dispatcher and full-pipeline coordinator. |
| 2 | `scripts/build.py` | Generates synthetic C++ modules, compiles C++ to LLVM IR, and measures native baselines. |
| 3 | `scripts/ir.py` | Parses LLVM IR and extracts call-site feature vectors. |
| 4 | `scripts/teach.py` | Defines teacher policies and behavior-cloning labels. |
| 5 | `scripts/rewrite.py` | Applies teacher/student decisions through LLVM IR rewriting and `opt`. |
| 6 | `scripts/learn.py` | Trains logistic regression, decision tree, KNN, random forest, and small MLP students. |
| 7 | `scripts/graph.py` | Writes a call-graph trace for inspection. |
| 8 | `scripts/paper.py` | Writes generated Markdown summaries. |
| 9 | `scripts/visual.py` | Generates result figures and visual inspection artifacts. |

Optional helpers, such as `sample_compile_dataset.py`, `ir_dataset.py`, and
`local_integrity_check.py`, are not part of the reported default run.

## Inputs

The source-level anchor is a small DCMTK snapshot:

```text
source_snapshot/DCMTK/config/tests/*.cc
```

The run also generates 70 deterministic C++ modules under:

```text
source_snapshot/DCMTK/generated_inlining/
```

Each generated module contains 16 driver calls. The generator covers four
families: tiny helpers, constant-argument branch helpers, medium single-use
helpers, and negative controls with large shared callees, variable branches, and
recursion. This creates varied inline-positive and inline-negative call sites.

## How IR Rewriting Works

The rewrite is implemented in `scripts/rewrite.py`.

Call-site analysis has a deterministic textual order. `scripts/ir.py` reads
LLVM IR modules by sorted `.ll` filename, visits functions in the order their
`define` blocks appear in the IR file, and scans call instructions from top to
bottom inside each function. Non-greedy teacher policies and student policies
preserve that order when preparing rewrites. The `greedy_ir_size` teacher is
the exception: it filters plausible candidates, sorts them by benefit/cost
score, and keeps a candidate only if the measured rewritten IR gets smaller.

For each selected inline call site:

1. the original textual LLVM IR is read;
2. `noinline` and `optnone` attributes are removed;
3. the selected callee is cloned with a unique name;
4. the clone is marked `alwaysinline`;
5. only the selected call line is redirected to the clone;
6. LLVM `opt` runs:

```bash
opt -S -passes=always-inline,globaldce,instcombine,simplifycfg,dce prepared.ll -o rewritten.ll
```

If the full pass list fails, the fallback is:

```bash
opt -S -passes=always-inline,globaldce prepared.ll -o rewritten.ll
```

So Python controls the selected call sites, while LLVM `opt` materializes the
inlining and cleanup. Rewritten IR is later lowered to object files with `llc`
for native text-section measurement.

## Main Outputs

```text
out/compile_report.json
out/features.json
out/bc_dataset.json
out/student_results.json
out/ir_rewrite_teachers.json
out/ir_rewrite_students.json
out/native_baselines.json
out/rewritten_native_sizes.json
out/figures/*.pdf
paper/main.pdf
paper/model_paper.md
```

## Current Scope

This is a thesis prototype. It demonstrates an inspectable ML-guided inlining
workflow over LLVM IR, but it is not integrated into LLVM's production inliner.
The reported metrics are rewritten LLVM IR instruction count and object-file
text-section size, not final linked executable size.
