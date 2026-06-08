# Offline Imitation Learning for LLVM Inlining

This generated Markdown summary mirrors the LaTeX paper but stays shorter.
The full paper source is `paper/main.tex`.

## Pipeline

```text
C++ source -> Clang -O0 -fno-inline -> LLVM IR -> callsite features
           -> teacher policies -> opt-based IR rewrite -> best teacher per module
           -> labeled dataset -> student classifiers -> opt-based IR rewrite
```

Code source: DCMTK source plus optional imported LLVM IR modules.

Copied source subset: 18 DCMTK `config/tests/*.cc` files.
Compiled sources: 163.
Imported real-IR modules: 0.
Failed sources: 1.
Extracted training samples: 10394.

Primary evaluation metric: percentage reduction in final LLVM IR instruction count relative to a fixed baseline policy.
Teacher-label match is reported only as a diagnostic for the imitation step.

Real native baseline measurements are written to `out/native_baselines.json`.
Those measurements compile the standalone sources to object files and compare
the `__text`/`.text` section size for `-Oz`, `-Oz -fno-inline`, and
`-O0 -fno-inline`.

## Native Clang Baselines

| Compiler mode | Total text size | Average text size |
|---|---:|---:|
| no_inline_Oz | 674660 | 4139.02 |
| no_inline_Os | 729620 | 4476.20 |
| llvm_Oz | 574044 | 3521.74 |
| llvm_Os | 640120 | 3927.12 |
| llvm_O2 | 823928 | 5054.77 |
| no_inline_O0 | 1795276 | 11013.96 |

## Selected Teachers

| Module | Selected teacher | Rewritten IR instructions | Reduction vs never-inline |
|---|---|---:|---:|
| source_snapshot_DCMTK_config_tests_cxx11.ll | greedy_ir_size | 98 | 31.47% |
| source_snapshot_DCMTK_config_tests_cxx14.ll | single_caller | 27 | 55.00% |
| source_snapshot_DCMTK_config_tests_cxx17.ll | greedy_ir_size | 118 | 19.18% |
| source_snapshot_DCMTK_config_tests_vector.ll | small_callee | 1709 | 0.12% |
| source_snapshot_DCMTK_generated_inlining_generated_000.ll | small_callee | 114 | 25.49% |
| source_snapshot_DCMTK_generated_inlining_generated_001.ll | single_caller | 263 | 15.97% |
| source_snapshot_DCMTK_generated_inlining_generated_002.ll | loop_averse | 245 | 11.87% |
| source_snapshot_DCMTK_generated_inlining_generated_003.ll | greedy_ir_size | 130 | 1.52% |
| source_snapshot_DCMTK_generated_inlining_generated_004.ll | small_callee | 287 | 2.05% |
| source_snapshot_DCMTK_generated_inlining_generated_005.ll | small_callee | 259 | 3.36% |
| source_snapshot_DCMTK_generated_inlining_generated_006.ll | small_callee | 269 | 3.58% |
| source_snapshot_DCMTK_generated_inlining_generated_007.ll | small_callee | 276 | 3.16% |
| source_snapshot_DCMTK_generated_inlining_generated_008.ll | small_callee | 176 | 9.74% |
| source_snapshot_DCMTK_generated_inlining_generated_009.ll | single_caller | 282 | 6.62% |
| source_snapshot_DCMTK_generated_inlining_generated_010.ll | greedy_ir_size | 173 | 16.02% |
| source_snapshot_DCMTK_generated_inlining_generated_011.ll | never_inline | 174 | 0.00% |
| source_snapshot_DCMTK_generated_inlining_generated_012.ll | small_callee | 181 | 9.50% |
| source_snapshot_DCMTK_generated_inlining_generated_013.ll | loop_averse | 272 | 11.11% |
| source_snapshot_DCMTK_generated_inlining_generated_014.ll | greedy_ir_size | 184 | 9.80% |
| source_snapshot_DCMTK_generated_inlining_generated_015.ll | greedy_ir_size | 174 | 0.57% |
| source_snapshot_DCMTK_generated_inlining_generated_016.ll | loop_averse | 67 | 50.37% |
| source_snapshot_DCMTK_generated_inlining_generated_017.ll | single_caller | 281 | 13.80% |
| source_snapshot_DCMTK_generated_inlining_generated_018.ll | never_inline | 284 | 0.00% |
| source_snapshot_DCMTK_generated_inlining_generated_019.ll | never_inline | 167 | 0.00% |
| source_snapshot_DCMTK_generated_inlining_generated_020.ll | small_callee | 259 | 3.36% |
| source_snapshot_DCMTK_generated_inlining_generated_021.ll | small_callee | 269 | 3.58% |
| source_snapshot_DCMTK_generated_inlining_generated_022.ll | small_callee | 276 | 3.16% |
| source_snapshot_DCMTK_generated_inlining_generated_023.ll | small_callee | 233 | 2.51% |
| source_snapshot_DCMTK_generated_inlining_generated_024.ll | small_callee | 151 | 15.64% |
| source_snapshot_DCMTK_generated_inlining_generated_025.ll | single_caller | 292 | 6.11% |
| source_snapshot_DCMTK_generated_inlining_generated_026.ll | constant_argument | 196 | 6.67% |
| source_snapshot_DCMTK_generated_inlining_generated_027.ll | never_inline | 183 | 0.00% |
| source_snapshot_DCMTK_generated_inlining_generated_028.ll | loop_averse | 114 | 33.33% |
| source_snapshot_DCMTK_generated_inlining_generated_029.ll | single_caller | 297 | 7.19% |
| source_snapshot_DCMTK_generated_inlining_generated_030.ll | greedy_ir_size | 183 | 12.02% |
| source_snapshot_DCMTK_generated_inlining_generated_031.ll | never_inline | 201 | 0.00% |
| source_snapshot_DCMTK_generated_inlining_generated_032.ll | loop_averse | 135 | 32.84% |
| source_snapshot_DCMTK_generated_inlining_generated_033.ll | greedy_ir_size | 351 | 10.00% |
| source_snapshot_DCMTK_generated_inlining_generated_034.ll | never_inline | 406 | 0.00% |
| source_snapshot_DCMTK_generated_inlining_generated_035.ll | never_inline | 199 | 0.00% |
| source_snapshot_DCMTK_generated_inlining_generated_036.ll | small_callee | 321 | 3.31% |
| source_snapshot_DCMTK_generated_inlining_generated_037.ll | small_callee | 327 | 2.97% |
| source_snapshot_DCMTK_generated_inlining_generated_038.ll | loop_averse | 276 | 6.12% |
| source_snapshot_DCMTK_generated_inlining_generated_039.ll | aggressive_speed | 203 | 24.54% |
| source_snapshot_DCMTK_generated_inlining_generated_040.ll | aggressive_speed | 208 | 12.97% |
| source_snapshot_DCMTK_generated_inlining_generated_041.ll | greedy_ir_size | 368 | 1.08% |
| source_snapshot_DCMTK_generated_inlining_generated_042.ll | loop_averse | 249 | 5.32% |
| source_snapshot_DCMTK_generated_inlining_generated_043.ll | loop_averse | 175 | 18.60% |
| source_snapshot_DCMTK_generated_inlining_generated_044.ll | greedy_ir_size | 212 | 11.30% |
| source_snapshot_DCMTK_generated_inlining_generated_045.ll | greedy_ir_size | 339 | 11.49% |
| source_snapshot_DCMTK_generated_inlining_generated_046.ll | never_inline | 263 | 0.00% |
| source_snapshot_DCMTK_generated_inlining_generated_047.ll | loop_averse | 85 | 30.33% |
| source_snapshot_DCMTK_generated_inlining_generated_048.ll | small_callee | 130 | 15.03% |
| source_snapshot_DCMTK_generated_inlining_generated_049.ll | never_inline | 374 | 0.00% |
| source_snapshot_DCMTK_generated_inlining_generated_050.ll | never_inline | 331 | 0.00% |
| source_snapshot_DCMTK_generated_inlining_generated_051.ll | never_inline | 156 | 0.00% |
| source_snapshot_DCMTK_generated_inlining_generated_052.ll | small_callee | 279 | 3.12% |
| source_snapshot_DCMTK_generated_inlining_generated_053.ll | small_callee | 236 | 2.88% |
| source_snapshot_DCMTK_generated_inlining_generated_054.ll | aggressive_speed | 163 | 24.88% |
| source_snapshot_DCMTK_generated_inlining_generated_055.ll | aggressive_speed | 176 | 22.81% |
| source_snapshot_DCMTK_generated_inlining_generated_056.ll | small_callee | 176 | 9.28% |
| source_snapshot_DCMTK_generated_inlining_generated_057.ll | never_inline | 343 | 0.00% |
| source_snapshot_DCMTK_generated_inlining_generated_058.ll | loop_averse | 116 | 39.90% |
| source_snapshot_DCMTK_generated_inlining_generated_059.ll | never_inline | 172 | 0.00% |
| source_snapshot_DCMTK_generated_inlining_generated_060.ll | greedy_ir_size | 172 | 10.88% |
| source_snapshot_DCMTK_generated_inlining_generated_061.ll | never_inline | 309 | 0.00% |
| source_snapshot_DCMTK_generated_inlining_generated_062.ll | loop_averse | 225 | 19.35% |
| source_snapshot_DCMTK_generated_inlining_generated_063.ll | loop_averse | 93 | 37.58% |
| source_snapshot_DCMTK_generated_inlining_generated_064.ll | small_callee | 167 | 8.24% |
| source_snapshot_DCMTK_generated_inlining_generated_065.ll | benefit_cost_ratio | 286 | 15.63% |
| source_snapshot_DCMTK_generated_inlining_generated_066.ll | never_inline | 379 | 0.00% |
| source_snapshot_DCMTK_generated_inlining_generated_067.ll | never_inline | 156 | 0.00% |
| source_snapshot_DCMTK_generated_inlining_generated_068.ll | small_callee | 279 | 2.45% |
| source_snapshot_DCMTK_generated_inlining_generated_069.ll | aggressive_speed | 200 | 23.37% |
| source_snapshot_public_repos_cJSON_cJSON.ll | greedy_ir_size | 5172 | 0.15% |
| source_snapshot_public_repos_cJSON_tests_cjson_add.ll | greedy_ir_size | 5838 | 0.14% |
| source_snapshot_public_repos_cJSON_tests_compare_tests.ll | greedy_ir_size | 5612 | 0.18% |
| source_snapshot_public_repos_cJSON_tests_json_patch_tests.ll | greedy_ir_size | 5613 | 0.18% |
| source_snapshot_public_repos_cJSON_tests_minify_tests.ll | greedy_ir_size | 5374 | 0.15% |
| source_snapshot_public_repos_cJSON_tests_misc_tests.ll | greedy_ir_size | 7303 | 0.11% |
| source_snapshot_public_repos_cJSON_tests_misc_utils_tests.ll | greedy_ir_size | 5376 | 0.15% |
| source_snapshot_public_repos_cJSON_tests_old_utils_tests.ll | greedy_ir_size | 5576 | 0.18% |
| source_snapshot_public_repos_cJSON_tests_parse_array.ll | greedy_ir_size | 5560 | 0.14% |
| source_snapshot_public_repos_cJSON_tests_parse_examples.ll | greedy_ir_size | 5547 | 0.18% |
| source_snapshot_public_repos_cJSON_tests_parse_hex4.ll | greedy_ir_size | 5361 | 0.15% |
| source_snapshot_public_repos_cJSON_tests_parse_number.ll | greedy_ir_size | 5418 | 0.15% |
| source_snapshot_public_repos_cJSON_tests_parse_object.ll | greedy_ir_size | 5507 | 0.15% |
| source_snapshot_public_repos_cJSON_tests_parse_string.ll | greedy_ir_size | 5439 | 0.15% |
| source_snapshot_public_repos_cJSON_tests_parse_value.ll | greedy_ir_size | 5376 | 0.15% |
| source_snapshot_public_repos_cJSON_tests_parse_with_opts.ll | greedy_ir_size | 5436 | 0.15% |
| source_snapshot_public_repos_cJSON_tests_print_array.ll | greedy_ir_size | 5359 | 0.15% |
| source_snapshot_public_repos_cJSON_tests_print_number.ll | greedy_ir_size | 5417 | 0.15% |
| source_snapshot_public_repos_cJSON_tests_print_object.ll | greedy_ir_size | 5359 | 0.15% |
| source_snapshot_public_repos_cJSON_tests_print_string.ll | greedy_ir_size | 5334 | 0.15% |
| source_snapshot_public_repos_cJSON_tests_print_value.ll | greedy_ir_size | 5345 | 0.15% |
| source_snapshot_public_repos_cJSON_tests_readme_examples.ll | greedy_ir_size | 5537 | 0.18% |
| source_snapshot_public_repos_cJSON_tests_unity_src_unity.ll | cost_budget | 2226 | 0.13% |
| source_snapshot_public_repos_ctuning-programs_program_cbench-bzip2_bzip2.ll | greedy_ir_size | 2598 | 1.96% |
| source_snapshot_public_repos_ctuning-programs_program_cbench-bzip2_bzlib.ll | greedy_ir_size | 4989 | 0.22% |
| source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-jpeg-c_jcmarker.ll | single_caller | 819 | 0.73% |
| source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-jpeg-c_jdmarker.ll | greedy_ir_size | 3847 | 0.05% |
| source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-jpeg-c_jquant1.ll | single_caller | 1573 | 0.19% |
| source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-jpeg-d_jcmarker.ll | single_caller | 819 | 0.73% |
| source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-jpeg-d_jquant1.ll | single_caller | 1573 | 0.19% |
| source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-jpeg-d_wrgif.ll | cost_budget | 833 | 0.12% |
| source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-mad_trees.ll | small_callee | 3915 | 0.05% |
| source_snapshot_public_repos_ctuning-programs_program_cbench-telecom-gsm_toast.ll | greedy_ir_size | 1068 | 0.93% |
| source_snapshot_public_repos_embench-iot_src_picojpeg_libpicojpeg.ll | small_callee | 3657 | 0.14% |
| source_snapshot_public_repos_inih_cpp_INIReader.ll | cost_budget | 4265 | 0.28% |
| source_snapshot_public_repos_inih_examples_INIReaderExample.ll | small_callee | 1257 | 0.16% |
| source_snapshot_public_repos_inih_examples_INIReaderExampleErrors.ll | small_callee | 682 | 0.29% |
| source_snapshot_public_repos_log.c_src_log.ll | small_callee | 227 | 1.73% |
| source_snapshot_public_repos_lz4_lib_lz4.ll | small_callee | 57093 | 4.46% |
| source_snapshot_public_repos_lz4_lib_lz4frame.ll | greedy_ir_size | 4420 | 0.81% |
| source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_jcmarker.ll | single_caller | 819 | 0.73% |
| source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_jdmarker.ll | greedy_ir_size | 3847 | 0.05% |
| source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_jmemname.ll | single_caller | 170 | 0.58% |
| source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_jquant1.ll | single_caller | 1573 | 0.19% |
| source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_rdjpgcom.ll | greedy_ir_size | 452 | 0.66% |
| source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_wrgif.ll | cost_budget | 833 | 0.12% |
| source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_wrjpgcom.ll | greedy_ir_size | 604 | 0.33% |
| source_snapshot_public_repos_mibench_consumer_lame_lame3.70_rtp.ll | loop_averse | 265 | 2.57% |
| source_snapshot_public_repos_mibench_consumer_mad_mad-0.14.2b_intl_loadmsgcat.ll | loop_averse | 227 | 0.87% |
| source_snapshot_public_repos_mibench_consumer_mad_mad-0.14.2b_libz_trees.ll | small_callee | 3926 | 0.05% |
| source_snapshot_public_repos_mibench_network_patricia_patricia_test.ll | small_callee | 182 | 1.09% |
| source_snapshot_public_repos_parson_parson.ll | cost_budget | 6759 | 0.03% |
| source_snapshot_public_repos_sqlite_ext_misc_basexx.ll | small_callee | 1075 | 0.19% |
| source_snapshot_public_repos_sqlite_ext_misc_fileio.ll | hot_leaf | 1593 | 0.13% |
| source_snapshot_public_repos_sqlite_ext_misc_fossildelta.ll | single_caller | 1749 | 0.11% |
| source_snapshot_public_repos_sqlite_ext_misc_percentile.ll | cost_budget | 889 | 0.34% |
| source_snapshot_public_repos_tiny-AES-c_test.ll | small_callee | 187 | 2.09% |
| source_snapshot_public_repos_tinyexpr_repl.ll | small_callee | 138 | 4.17% |
| source_snapshot_public_repos_tracy_examples_ToyPathTracer_Source_Test.ll | greedy_ir_size | 4563 | 0.54% |
| source_snapshot_public_repos_tracy_examples_ToyPathTracer_Source_enkiTS_TaskScheduler.ll | llvm_like_size | 989 | 2.27% |
| source_snapshot_public_repos_tracy_examples_ToyPathTracer_Source_enkiTS_TaskScheduler_c.ll | single_caller | 169 | 4.52% |
| source_snapshot_public_repos_tracy_profiler_src_ResolvService.ll | balanced_score | 1689 | 2.60% |
| source_snapshot_public_repos_tracy_public_common_TracySocket.ll | greedy_ir_size | 1142 | 0.70% |
| source_snapshot_public_repos_tracy_public_libbacktrace_alloc.ll | small_callee | 172 | 3.37% |
| source_snapshot_public_repos_tracy_public_libbacktrace_macho.ll | small_callee | 1513 | 0.13% |
| source_snapshot_public_repos_tracy_server_TracyPrint.ll | constant_argument | 879 | 0.23% |
| source_snapshot_public_repos_tracy_server_TracyTaskDispatch.ll | single_caller | 2712 | 1.45% |
| source_snapshot_public_repos_tracy_update_src_OfflineSymbolResolverAddr2Line.ll | single_caller | 3243 | 0.31% |
| source_snapshot_public_repos_zlib_contrib_iostream3_test.ll | greedy_ir_size | 645 | 2.71% |
| source_snapshot_public_repos_zlib_contrib_iostream3_zfstream.ll | greedy_ir_size | 1521 | 1.04% |
| source_snapshot_public_repos_zlib_contrib_minizip_miniunz.ll | small_callee | 952 | 0.63% |
| source_snapshot_public_repos_zlib_contrib_minizip_minizip.ll | small_callee | 733 | 0.54% |
| source_snapshot_public_repos_zlib_contrib_minizip_zip.ll | greedy_ir_size | 5190 | 0.35% |
| source_snapshot_public_repos_zlib_examples_enough.ll | single_caller | 1010 | 0.49% |
| source_snapshot_public_repos_zlib_examples_gzjoin.ll | greedy_ir_size | 1069 | 1.11% |
| source_snapshot_public_repos_zlib_trees.ll | small_callee | 3761 | 0.05% |

## Student Models After IR Rewrite

| Model | Teacher-label match | Inline rate | Avg rewritten IR instructions | Reduction vs never-inline | Reduction vs best teacher |
|---|---:|---:|---:|---:|---:|
| logistic_regression | 0.927 | 17.8% | 1968.91 | 0.83% | -0.85% |
| decision_tree | 0.964 | 21.0% | 1992.55 | -0.36% | -2.06% |
| knn | 0.939 | 19.7% | 1987.30 | -0.10% | -1.79% |
| random_forest | 0.962 | 17.7% | 1982.28 | 0.16% | -1.53% |
| deep_forest | 0.968 | 17.9% | 1968.87 | 0.83% | -0.84% |
| conservative_forest | 0.962 | 16.7% | 1961.94 | 1.18% | -0.49% |
| small_mlp | 0.954 | 19.3% | 1985.26 | 0.01% | -1.68% |

Best student by rewritten IR instruction count: **conservative_forest**.

Mean reduction vs never-inline baseline: **0.36%**.
Median reduction vs never-inline baseline: **0.16%**.

The teacher-label match column is an imitation metric against selected teacher labels,
not a comparison with LLVM's built-in inlining heuristic.

## Trace

The file `out/callgraph_trace.md` shows a step-by-step example for `source_snapshot_public_repos_lz4_lib_lz4.ll`.
Additional PNG result charts and per-module call-graph GIFs are listed in
`out/visual_index.md`.
