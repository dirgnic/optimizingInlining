# Changing Call Graph Trace

Module: `source_snapshot_DCMTK_config_tests_cxx11.ll`
Policy shown: `greedy_ir_size`

## Step 1: `_ZN5cxx1119test_type_deduction4testEii` -> `_ZN5cxx1119test_type_deduction3addIiiEEDTplfp_fp0_ET_T0_`
Decision: **no-inline** with displayed probability 0.20.
Edges before: `17`; edges after: `17`.
Key features: callee_instr=8.0, callee_users=1.0, const_args=0.0, cost=6.5.

## Step 2: `_ZN5cxx1112test_lambdas5test1Ev` -> `"_ZZN5cxx1112test_lambdas5test1EvENK3$_0clEv"`
Decision: **no-inline** with displayed probability 0.20.
Edges before: `17`; edges after: `17`.
Key features: callee_instr=4.0, callee_users=2.0, const_args=0.0, cost=5.5.

## Step 3: `_ZN5cxx1112test_lambdas5test1Ev` -> `"_ZZN5cxx1112test_lambdas5test1EvENK3$_0clEv"`
Decision: **no-inline** with displayed probability 0.20.
Edges before: `17`; edges after: `17`.
Key features: callee_instr=4.0, callee_users=2.0, const_args=0.0, cost=5.5.

## Step 4: `_ZN5cxx1112test_lambdas5test2Ev` -> `"_ZZN5cxx1112test_lambdas5test2EvENK3$_1clEii"`
Decision: **no-inline** with displayed probability 0.20.
Edges before: `17`; edges after: `17`.
Key features: callee_instr=11.0, callee_users=1.0, const_args=2.0, cost=5.5.

## Step 5: `_ZN5cxx1112test_lambdas5test2Ev` -> `"_ZZN5cxx1112test_lambdas5test2EvENK3$_2clEv"`
Decision: **no-inline** with displayed probability 0.20.
Edges before: `17`; edges after: `17`.
Key features: callee_instr=4.0, callee_users=1.0, const_args=0.0, cost=2.5.

## Step 6: `_ZN5cxx1112test_lambdas5test2Ev` -> `"_ZZN5cxx1112test_lambdas5test2EvENK3$_3clEv"`
Decision: **no-inline** with displayed probability 0.20.
Edges before: `17`; edges after: `17`.
Key features: callee_instr=9.0, callee_users=1.0, const_args=0.0, cost=7.5.

## Step 7: `_ZN5cxx1112test_lambdas5test2Ev` -> `"_ZZN5cxx1112test_lambdas5test2EvENK3$_4clEv"`
Decision: **no-inline** with displayed probability 0.20.
Edges before: `17`; edges after: `17`.
Key features: callee_instr=7.0, callee_users=1.0, const_args=0.0, cost=5.5.

## Step 8: `_ZN5cxx1112test_lambdas5test2Ev` -> `"_ZZN5cxx1112test_lambdas5test2EvEN3$_5clEi"`
Decision: **no-inline** with displayed probability 0.20.
Edges before: `17`; edges after: `17`.
Key features: callee_instr=38.0, callee_users=1.0, const_args=1.0, cost=42.5.

## Step 9: `"_ZZN5cxx1112test_lambdas5test2EvEN3$_5clEi"` -> `"_ZZZN5cxx1112test_lambdas5test2EvEN3$_5clEiENKUliE_clEi"`
Decision: **no-inline** with displayed probability 0.20.
Edges before: `17`; edges after: `17`.
Key features: callee_instr=7.0, callee_users=1.0, const_args=0.0, cost=5.5.

## Step 10: `_ZN5cxx1112test_lambdas5test3Ev` -> `"_ZZN5cxx1112test_lambdas5test3EvENK3$_6clEZNS0_5test3EvE3$_7"`
Decision: **no-inline** with displayed probability 0.20.
Edges before: `17`; edges after: `17`.
Key features: callee_instr=6.0, callee_users=1.0, const_args=0.0, cost=6.5.

## Step 11: `_ZN5cxx1112test_lambdas5test3Ev` -> `"_ZZN5cxx1112test_lambdas5test3EvENK3$_8clEZNS0_5test3EvE3$_7"`
Decision: **no-inline** with displayed probability 0.20.
Edges before: `17`; edges after: `17`.
Key features: callee_instr=10.0, callee_users=1.0, const_args=0.0, cost=8.5.

## Step 12: `_ZN5cxx1112test_lambdas5test3Ev` -> `"_ZZZN5cxx1112test_lambdas5test3EvENK3$_8clEZNS0_5test3EvE3$_7ENKUlZNS0_5test3EvE3$_9E_clES3_"`
Decision: **no-inline** with displayed probability 0.20.
Edges before: `17`; edges after: `17`.
Key features: callee_instr=10.0, callee_users=1.0, const_args=0.0, cost=14.5.

## Step 13: `"_ZZN5cxx1112test_lambdas5test3EvENK3$_6clEZNS0_5test3EvE3$_7"` -> `"_ZZN5cxx1112test_lambdas5test3EvENK3$_7clEv"`
Decision: **no-inline** with displayed probability 0.20.
Edges before: `17`; edges after: `17`.
Key features: callee_instr=4.0, callee_users=2.0, const_args=0.0, cost=5.5.

## Step 14: `"_ZZZN5cxx1112test_lambdas5test3EvENK3$_8clEZNS0_5test3EvE3$_7ENKUlZNS0_5test3EvE3$_9E_clES3_"` -> `"_ZZN5cxx1112test_lambdas5test3EvENK3$_7clEv"`
Decision: **no-inline** with displayed probability 0.20.
Edges before: `17`; edges after: `17`.
Key features: callee_instr=4.0, callee_users=2.0, const_args=0.0, cost=5.5.

## Step 15: `"_ZZZN5cxx1112test_lambdas5test3EvENK3$_8clEZNS0_5test3EvE3$_7ENKUlZNS0_5test3EvE3$_9E_clES3_"` -> `"_ZZN5cxx1112test_lambdas5test3EvENK3$_9clEi"`
Decision: **no-inline** with displayed probability 0.20.
Edges before: `17`; edges after: `17`.
Key features: callee_instr=7.0, callee_users=2.0, const_args=0.0, cost=8.5.

## Step 16: `"_ZZZN5cxx1112test_lambdas5test3EvENK3$_8clEZNS0_5test3EvE3$_7ENKUlZNS0_5test3EvE3$_9E_clES3_"` -> `"_ZZN5cxx1112test_lambdas5test3EvENK3$_9clEi"`
Decision: **no-inline** with displayed probability 0.20.
Edges before: `17`; edges after: `17`.
Key features: callee_instr=7.0, callee_users=2.0, const_args=0.0, cost=8.5.

## Step 17: `_ZN5cxx1126test_template_alias_sfinae4testEv` -> `_ZN5cxx1126test_template_alias_sfinae4funcINS0_3fooEEEvz`
Decision: **no-inline** with displayed probability 0.20.
Edges before: `17`; edges after: `17`.
Key features: callee_instr=1.0, callee_users=1.0, const_args=1.0, cost=-2.5.
