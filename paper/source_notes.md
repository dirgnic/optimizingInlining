# Source Notes

## IMMITATION_LEARN.pdf

Extracted high-level points used in this attempt:

- The paper studies offline imitation learning from multiple baseline policies.
- Each baseline can be weak globally but useful in complementary parts of the state space.
- The goal is to learn a policy that combines the strengths of the baselines.
- The compiler-optimization application is inlining for small binary size.
- The implementation idea used here is BC-Max: select the best teacher per program,
  then train a student policy on that teacher's decisions.

## photos_algos

The diagrams motivate four implementation choices:

- run all teacher policies on the training programs;
- measure a final objective per teacher/program;
- turn selected teacher decisions into labels;
- compare several student models: logistic regression, decision tree, k-NN,
  random forest, and a small MLP.

The conflict-label diagram also motivates richer features: callee users,
caller/callee size, constants, recursion, and graph-level context.

## DCMTK source

The code source for this attempt is DCMTK only:

- local path: `source_snapshot/DCMTK`
- upstream remote: `https://github.com/DCMTK/dcmtk.git`
- local source files consulted for citation: `README.md` and `COPYRIGHT`

The snapshot copies 18 C++ configuration test files from `DCMTK/config/tests`.
The full local DCMTK checkout contains 1099 C++ implementation files matching
`*.cc`, `*.cpp`, or `*.cxx`, but the copied subset is intentionally smaller so the
prototype remains reproducible without the full DCMTK build system.

## licenta_MAIN_MODEL.pdf and template

The draft paper follows the model's structure:

- abstract;
- introduction/motivation;
- related work;
- methodology;
- implementation;
- evaluation;
- limitations and conclusions.

The LaTeX file is intentionally simple and compatible with the local thesis template style.
