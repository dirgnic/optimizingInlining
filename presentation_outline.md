# Defense Presentation Outline

Target: 10-12 slides, 10-15 minutes.

1. **Title and Goal**
   - ML-guided compiler inlining.
   - Goal: study whether teacher-student policies can guide LLVM IR inlining decisions.

2. **Why Inlining Matters**
   - One of the most important compiler optimizations.
   - Removes call overhead and exposes later optimizations.
   - Can also increase code size through duplication.

3. **Problem Statement**
   - Each call site is an inline/no-inline decision.
   - A local decision can change the call graph and later optimization opportunities.
   - Classical compilers use heuristics because the true effect is context-dependent.

4. **Research Direction**
   - MLGO-style idea: expose compiler features and let a policy choose actions.
   - Thesis uses offline imitation learning instead of online reinforcement learning.

5. **What I Contributed**
   - End-to-end LLVM IR pipeline.
   - Generated and DCMTK-based dataset.
   - Teacher policies and BC-Max-style teacher selection.
   - Student models and IR rewrite evaluation.

6. **Dataset**
   - DCMTK `config/tests` source snapshot.
   - 64 deterministic generated modules, 16 driver calls each.
   - Families: tiny helpers, constant-argument branches, medium single-use helpers, large shared/branchy/recursive negative cases.

7. **Small Code Example**
   - Show one tiny helper call and one large/recursive call.
   - Explain why one may be inline-positive and the other inline-negative.

8. **Pipeline**
   - C++ -> Clang -> LLVM IR -> features -> teachers -> best teacher -> students -> rewrite -> metrics.
   - Mention one-command run: `python3 scripts/run.py all`.

9. **How IR Rewrite Works**
   - Clone selected callee.
   - Mark clone `alwaysinline`.
   - Redirect selected call site.
   - Run LLVM `opt` with `always-inline` and cleanup passes.

10. **Results**
   - Held-out IR reduction.
   - Student match as imitation diagnostic.
   - Native `.text` as secondary reference.
   - LLVM `-Oz` remains the stronger production baseline.

11. **Limitations**
   - Controlled/generated dataset.
   - Textual IR rewrite, not production inliner integration.
   - Object-file `.text`, not final linked binary.
   - Static batch approximation of a sequential problem.

12. **Conclusion**
   - Feasible workflow demonstrated.
   - Main value is methodology and reproducibility.
   - Future work: larger benchmarks, stronger teachers, LLVM pass integration, generator discriminator/filter.
