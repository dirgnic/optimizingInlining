# Feature Rationale

The first eleven features follow the public MLGO inlining-for-size feature shape:
caller/callee basic-block structure, caller/callee users, callsite height, cost estimate,
number of constant parameters, and global call-graph edge/node counts.

Source attribution:
- `MLGO: a Machine Learning Guided Compiler Optimizations Framework`, arXiv:2101.04808.
- `Offline Imitation Learning from Multiple Baselines with Applications to Compiler Optimization`,
  Marinov, Agarwal, Trofin. This is the paper behind the BC-Max style teacher-selection setup.

Local additions:
- `caller_instruction_count`, `callee_instruction_count`: readable IR-size proxies for the toy objective.
- `caller_call_count`, `callee_call_count`: captures whether inlining would expose or duplicate additional calls.
- `is_recursive`: prevents unbounded recursive expansion in simple teacher policies.
