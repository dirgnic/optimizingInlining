# Things To Edit Later

- Decide the target optimization objective: rewritten IR instruction count, native code size, runtime, or a weighted combination.
- To make the learned-policy evaluation native-size based, integrate the policy into LLVM's inliner or lower the rewritten IR to object files, then measure `.text` size after compilation.
- To make decisions callsite-exact, replace the current function-level `alwaysinline` rewrite with a custom LLVM pass that calls LLVM's inliner on selected call edges.
- Expand the dataset beyond the 18 DCMTK `config/tests/*.cc` files, or clearly state that this is a small controlled prototype.
- Add cross-file calls by compiling/linking LLVM modules together, or explain that the current extractor only sees calls inside one translation unit.
- Verify the final feature list against the exact public MLGO feature description and cite it precisely.
- Use a train/test split or cross-validation. The current table reports teacher-label match, which is useful for debugging but not enough for generalization claims.
- Add baselines from LLVM or Clang if the final claim compares against production compiler behavior.
- Decide whether the official cover page should stay fully English or keep Romanian institutional labels required by the faculty.
- Confirm the supervisor title and paper title before submission.
- Add full bibliographic metadata for the imitation-learning paper once the exact version used in the thesis is fixed.
