; ModuleID = './out/greedy_inlinefriendly_scan/rewritten_ir/teacher_growth_budget/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-mad_trees.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-mad/trees.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.static_tree_desc_s = type { ptr, ptr, i32, i32, i32 }
%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }
%struct.internal_state = type { ptr, i32, ptr, i64, ptr, i32, i32, ptr, i32, i8, i32, i32, i32, i32, ptr, i64, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [573 x %struct.ct_data_s], [61 x %struct.ct_data_s], [39 x %struct.ct_data_s], %struct.tree_desc_s, %struct.tree_desc_s, %struct.tree_desc_s, [16 x i16], [573 x i32], i32, i32, [573 x i8], ptr, i32, i32, ptr, i64, i64, i32, i32, i16, i32 }
%struct.tree_desc_s = type { ptr, i32, ptr }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

@_dist_code = constant [512 x i8] c"\00\01\02\03\04\04\05\05\06\06\06\06\07\07\07\07\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\00\00\10\11\12\12\13\13\14\14\14\14\15\15\15\15\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D", align 1
@_length_code = constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0E\0F\0F\0F\0F\10\10\10\10\10\10\10\10\11\11\11\11\11\11\11\11\12\12\12\12\12\12\12\12\13\13\13\13\13\13\13\13\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C", align 1
@static_l_desc = internal global %struct.static_tree_desc_s { ptr @static_ltree, ptr @extra_lbits, i32 257, i32 286, i32 15 }, align 8
@static_d_desc = internal global %struct.static_tree_desc_s { ptr @static_dtree, ptr @extra_dbits, i32 0, i32 30, i32 15 }, align 8
@static_bl_desc = internal global %struct.static_tree_desc_s { ptr null, ptr @extra_blbits, i32 0, i32 19, i32 7 }, align 8
@static_ltree = internal constant [288 x %struct.ct_data_s] [%struct.ct_data_s { %union.anon { i16 12 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 140 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 76 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 204 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 44 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 172 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 108 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 236 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 28 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 156 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 92 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 220 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 60 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 188 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 124 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 252 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 2 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 130 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 66 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 194 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 34 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 162 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 98 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 226 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 18 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 146 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 82 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 210 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 50 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 178 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 114 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 242 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 10 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 138 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 74 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 202 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 42 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 170 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 106 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 234 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 26 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 154 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 90 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 218 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 58 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 186 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 122 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 250 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 6 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 134 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 70 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 198 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 38 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 166 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 102 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 230 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 22 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 150 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 86 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 214 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 54 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 182 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 118 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 246 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 14 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 142 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 78 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 206 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 46 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 174 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 110 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 238 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 30 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 158 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 94 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 222 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 62 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 190 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 126 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 254 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 1 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 129 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 65 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 193 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 33 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 161 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 97 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 225 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 17 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 145 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 81 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 209 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 49 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 177 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 113 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 241 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 9 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 137 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 73 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 201 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 41 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 169 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 105 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 233 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 25 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 153 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 89 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 217 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 57 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 185 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 121 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 249 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 5 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 133 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 69 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 197 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 37 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 165 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 101 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 229 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 21 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 149 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 85 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 213 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 53 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 181 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 117 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 245 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 13 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 141 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 77 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 205 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 45 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 173 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 109 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 237 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 29 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 157 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 93 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 221 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 61 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 189 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 125 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 253 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 19 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 275 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 147 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 403 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 83 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 339 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 211 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 467 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 51 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 307 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 179 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 435 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 115 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 371 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 243 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 499 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 11 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 267 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 139 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 395 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 75 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 331 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 203 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 459 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 43 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 299 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 171 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 427 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 107 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 363 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 235 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 491 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 27 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 283 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 155 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 411 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 91 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 347 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 219 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 475 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 59 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 315 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 187 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 443 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 123 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 379 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 251 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 507 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 7 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 263 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 135 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 391 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 71 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 327 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 199 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 455 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 39 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 295 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 167 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 423 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 103 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 359 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 231 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 487 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 23 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 279 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 151 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 407 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 87 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 343 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 215 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 471 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 55 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 311 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 183 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 439 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 119 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 375 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 247 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 503 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 15 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 271 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 143 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 399 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 79 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 335 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 207 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 463 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 47 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 303 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 175 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 431 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 111 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 367 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 239 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 495 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 31 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 287 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 159 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 415 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 95 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 351 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 223 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 479 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 63 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 319 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 191 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 447 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 127 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 383 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 255 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 511 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon zeroinitializer, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 64 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 32 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 96 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 16 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 80 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 48 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 112 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 8 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 72 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 40 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 104 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 24 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 88 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 56 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 120 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 4 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 68 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 36 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 100 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 20 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 84 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 52 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 116 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 3 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 131 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 67 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 195 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 35 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 163 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 99 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 227 }, %union.anon.0 { i16 8 } }], align 2
@static_dtree = internal constant [30 x %struct.ct_data_s] [%struct.ct_data_s { %union.anon zeroinitializer, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 16 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 8 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 24 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 4 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 20 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 12 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 28 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 2 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 18 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 10 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 26 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 6 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 22 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 14 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 30 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 1 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 17 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 9 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 25 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 5 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 21 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 13 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 29 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 3 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 19 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 11 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 27 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 7 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 23 }, %union.anon.0 { i16 5 } }], align 2
@extra_lbits = internal constant [29 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 0], align 4
@extra_dbits = internal constant [30 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13], align 4
@extra_blbits = internal constant [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3, i32 7], align 4
@bl_order = internal constant [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", align 1
@base_length = internal constant [29 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 10, i32 12, i32 14, i32 16, i32 20, i32 24, i32 28, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 160, i32 192, i32 224, i32 0], align 4
@base_dist = internal constant [30 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 6, i32 8, i32 12, i32 16, i32 24, i32 32, i32 48, i32 64, i32 96, i32 128, i32 192, i32 256, i32 384, i32 512, i32 768, i32 1024, i32 1536, i32 2048, i32 3072, i32 4096, i32 6144, i32 8192, i32 12288, i32 16384, i32 24576], align 4

; Function Attrs: nounwind ssp uwtable
define void @_tr_init(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 37
  %l_desc = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 40
  store ptr %dyn_ltree, ptr %l_desc, align 8
  %stat_desc = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 40, i32 2
  store ptr @static_l_desc, ptr %stat_desc, align 8
  %dyn_dtree = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 38
  %0 = load ptr, ptr %s.addr, align 8
  %d_desc = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41
  store ptr %dyn_dtree, ptr %d_desc, align 8
  %stat_desc5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41, i32 2
  store ptr @static_d_desc, ptr %stat_desc5, align 8
  %bl_tree = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39
  %bl_desc = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42
  store ptr %bl_tree, ptr %bl_desc, align 8
  %1 = load ptr, ptr %s.addr, align 8
  %stat_desc9 = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 42, i32 2
  store ptr @static_bl_desc, ptr %stat_desc9, align 8
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 56
  store i16 0, ptr %bi_buf, align 8
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 57
  store i32 0, ptr %bi_valid, align 4
  %2 = load ptr, ptr %s.addr, align 8
  %last_eob_len = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 55
  store i32 8, ptr %last_eob_len, align 4
  call void @init_block(ptr noundef %2)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @init_block(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %n, align 4
  %cmp = icmp slt i32 %storemerge, 286
  br i1 %cmp, label %for.body, label %for.cond1

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %s.addr, align 8
  %1 = load i32, ptr %n, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %idxprom
  store i16 0, ptr %arrayidx, align 4
  %2 = load i32, ptr %n, align 4
  %inc = add nsw i32 %2, 1
  br label %for.cond, !llvm.loop !6

for.cond1:                                        ; preds = %for.cond, %for.body3
  %storemerge1 = phi i32 [ %inc8, %for.body3 ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr %n, align 4
  %cmp2 = icmp slt i32 %storemerge1, 30
  br i1 %cmp2, label %for.body3, label %for.cond10

for.body3:                                        ; preds = %for.cond1
  %3 = load ptr, ptr %s.addr, align 8
  %4 = load i32, ptr %n, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 38, i64 %idxprom4
  store i16 0, ptr %arrayidx5, align 4
  %5 = load i32, ptr %n, align 4
  %inc8 = add nsw i32 %5, 1
  br label %for.cond1, !llvm.loop !8

for.cond10:                                       ; preds = %for.cond1, %for.body12
  %storemerge2 = phi i32 [ %inc17, %for.body12 ], [ 0, %for.cond1 ]
  store i32 %storemerge2, ptr %n, align 4
  %cmp11 = icmp slt i32 %storemerge2, 19
  br i1 %cmp11, label %for.body12, label %for.end18

for.body12:                                       ; preds = %for.cond10
  %6 = load ptr, ptr %s.addr, align 8
  %7 = load i32, ptr %n, align 4
  %idxprom13 = sext i32 %7 to i64
  %arrayidx14 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 39, i64 %idxprom13
  store i16 0, ptr %arrayidx14, align 4
  %8 = load i32, ptr %n, align 4
  %inc17 = add nsw i32 %8, 1
  br label %for.cond10, !llvm.loop !9

for.end18:                                        ; preds = %for.cond10
  %9 = load ptr, ptr %s.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 37, i64 256
  store i16 1, ptr %arrayidx20, align 4
  %static_len = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 53
  store i64 0, ptr %static_len, align 8
  %opt_len = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 52
  store i64 0, ptr %opt_len, align 8
  %10 = load ptr, ptr %s.addr, align 8
  %matches = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 54
  store i32 0, ptr %matches, align 8
  %last_lit = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 50
  store i32 0, ptr %last_lit, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_tr_stored_block(ptr noundef %s, ptr noundef %buf, i64 noundef %stored_len, i32 noundef %eof) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %stored_len.addr = alloca i64, align 8
  %eof.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %val = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %stored_len, ptr %stored_len.addr, align 8
  store i32 %eof, ptr %eof.addr, align 4
  store i32 3, ptr %len, align 4
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 57
  %0 = load i32, ptr %bi_valid, align 4
  %cmp = icmp sgt i32 %0, 13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %eof.addr, align 4
  store i32 %1, ptr %val, align 4
  %2 = load ptr, ptr %s.addr, align 8
  %bi_valid1 = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 57
  %3 = load i32, ptr %bi_valid1, align 4
  %shl = shl i32 %1, %3
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 56
  %4 = load i16, ptr %bi_buf, align 8
  %5 = trunc i32 %shl to i16
  %conv2 = or i16 %4, %5
  store i16 %conv2, ptr %bi_buf, align 8
  %6 = load ptr, ptr %s.addr, align 8
  %bi_buf3 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 56
  %7 = load i16, ptr %bi_buf3, align 8
  %conv5 = trunc i16 %7 to i8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %pending_buf, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 5
  %9 = load i32, ptr %pending, align 8
  %inc = add i32 %9, 1
  store i32 %inc, ptr %pending, align 8
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 %idxprom
  store i8 %conv5, ptr %arrayidx, align 1
  %10 = load ptr, ptr %s.addr, align 8
  %bi_buf6 = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 56
  %11 = load i16, ptr %bi_buf6, align 8
  %12 = lshr i16 %11, 8
  %conv8 = trunc i16 %12 to i8
  %pending_buf9 = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 2
  %13 = load ptr, ptr %pending_buf9, align 8
  %14 = load ptr, ptr %s.addr, align 8
  %pending10 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 5
  %15 = load i32, ptr %pending10, align 8
  %inc11 = add i32 %15, 1
  store i32 %inc11, ptr %pending10, align 8
  %idxprom12 = zext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %13, i64 %idxprom12
  store i8 %conv8, ptr %arrayidx13, align 1
  %16 = load i32, ptr %val, align 4
  %conv15 = and i32 %16, 65535
  %17 = load ptr, ptr %s.addr, align 8
  %bi_valid16 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 57
  %18 = load i32, ptr %bi_valid16, align 4
  %sub18 = sub i32 16, %18
  %shr19 = lshr i32 %conv15, %sub18
  %conv20 = trunc i32 %shr19 to i16
  %bi_buf21 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 56
  store i16 %conv20, ptr %bi_buf21, align 8
  %19 = load i32, ptr %len, align 4
  %sub23 = add i32 %19, -16
  %20 = load ptr, ptr %s.addr, align 8
  %bi_valid24 = getelementptr inbounds %struct.internal_state, ptr %20, i64 0, i32 57
  %21 = load i32, ptr %bi_valid24, align 4
  %add26 = add i32 %sub23, %21
  store i32 %add26, ptr %bi_valid24, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %22 = load i32, ptr %eof.addr, align 4
  %23 = load ptr, ptr %s.addr, align 8
  %bi_valid29 = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 57
  %24 = load i32, ptr %bi_valid29, align 4
  %shl30 = shl i32 %22, %24
  %bi_buf31 = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 56
  %25 = load i16, ptr %bi_buf31, align 8
  %26 = trunc i32 %shl30 to i16
  %conv34 = or i16 %25, %26
  store i16 %conv34, ptr %bi_buf31, align 8
  %27 = load i32, ptr %len, align 4
  %28 = load ptr, ptr %s.addr, align 8
  %bi_valid35 = getelementptr inbounds %struct.internal_state, ptr %28, i64 0, i32 57
  %29 = load i32, ptr %bi_valid35, align 4
  %add36 = add nsw i32 %29, %27
  store i32 %add36, ptr %bi_valid35, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %30 = load ptr, ptr %s.addr, align 8
  %31 = load ptr, ptr %buf.addr, align 8
  %32 = load i64, ptr %stored_len.addr, align 8
  %conv37 = trunc i64 %32 to i32
  call void @copy_block(ptr noundef %30, ptr noundef %31, i32 noundef %conv37, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @copy_block(ptr noundef %s, ptr noundef %buf, i32 noundef %len, i32 noundef %header) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  call void @bi_windup(ptr noundef %s)
  %last_eob_len = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 55
  store i32 8, ptr %last_eob_len, align 4
  %tobool.not = icmp eq i32 %header, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %len.addr, align 4
  %conv2 = trunc i32 %0 to i8
  %1 = load ptr, ptr %s.addr, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 2
  %2 = load ptr, ptr %pending_buf, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 5
  %3 = load i32, ptr %pending, align 8
  %inc = add i32 %3, 1
  store i32 %inc, ptr %pending, align 8
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  store i8 %conv2, ptr %arrayidx, align 1
  %4 = load i32, ptr %len.addr, align 4
  %conv4 = lshr i32 %4, 8
  %conv5 = trunc i32 %conv4 to i8
  %5 = load ptr, ptr %s.addr, align 8
  %pending_buf6 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 2
  %6 = load ptr, ptr %pending_buf6, align 8
  %pending7 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %pending7, align 8
  %inc8 = add i32 %7, 1
  store i32 %inc8, ptr %pending7, align 8
  %idxprom9 = zext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %6, i64 %idxprom9
  store i8 %conv5, ptr %arrayidx10, align 1
  %8 = load i32, ptr %len.addr, align 4
  %9 = trunc i32 %8 to i8
  %conv14 = xor i8 %9, -1
  %10 = load ptr, ptr %s.addr, align 8
  %pending_buf15 = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 2
  %11 = load ptr, ptr %pending_buf15, align 8
  %pending16 = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 5
  %12 = load i32, ptr %pending16, align 8
  %inc17 = add i32 %12, 1
  store i32 %inc17, ptr %pending16, align 8
  %idxprom18 = zext i32 %12 to i64
  %arrayidx19 = getelementptr inbounds i8, ptr %11, i64 %idxprom18
  store i8 %conv14, ptr %arrayidx19, align 1
  %13 = load i32, ptr %len.addr, align 4
  %conv21 = lshr i32 %13, 8
  %14 = trunc i32 %conv21 to i8
  %conv24 = xor i8 %14, -1
  %15 = load ptr, ptr %s.addr, align 8
  %pending_buf25 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 2
  %16 = load ptr, ptr %pending_buf25, align 8
  %pending26 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %pending26, align 8
  %inc27 = add i32 %17, 1
  store i32 %inc27, ptr %pending26, align 8
  %idxprom28 = zext i32 %17 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %16, i64 %idxprom28
  store i8 %conv24, ptr %arrayidx29, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %18 = load i32, ptr %len.addr, align 4
  %dec = add i32 %18, -1
  store i32 %dec, ptr %len.addr, align 4
  %tobool30.not = icmp eq i32 %18, 0
  br i1 %tobool30.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %19 = load ptr, ptr %buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %19, i64 1
  store ptr %incdec.ptr, ptr %buf.addr, align 8
  %20 = load i8, ptr %19, align 1
  %21 = load ptr, ptr %s.addr, align 8
  %pending_buf31 = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 2
  %22 = load ptr, ptr %pending_buf31, align 8
  %pending32 = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %pending32, align 8
  %inc33 = add i32 %23, 1
  store i32 %inc33, ptr %pending32, align 8
  %idxprom34 = zext i32 %23 to i64
  %arrayidx35 = getelementptr inbounds i8, ptr %22, i64 %idxprom34
  store i8 %20, ptr %arrayidx35, align 1
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_tr_align(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %val = alloca i32, align 4
  %len35 = alloca i32, align 4
  %val42 = alloca i32, align 4
  %len101 = alloca i32, align 4
  %val107 = alloca i32, align 4
  %len157 = alloca i32, align 4
  %val164 = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 3, ptr %len, align 4
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 57
  %0 = load i32, ptr %bi_valid, align 4
  %cmp = icmp sgt i32 %0, 13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 2, ptr %val, align 4
  %1 = load ptr, ptr %s.addr, align 8
  %bi_valid1 = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 57
  %2 = load i32, ptr %bi_valid1, align 4
  %shl = shl i32 2, %2
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 56
  %3 = load i16, ptr %bi_buf, align 8
  %4 = trunc i32 %shl to i16
  %conv2 = or i16 %3, %4
  store i16 %conv2, ptr %bi_buf, align 8
  %5 = load ptr, ptr %s.addr, align 8
  %bi_buf3 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 56
  %6 = load i16, ptr %bi_buf3, align 8
  %conv5 = trunc i16 %6 to i8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %pending_buf, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 5
  %8 = load i32, ptr %pending, align 8
  %inc = add i32 %8, 1
  store i32 %inc, ptr %pending, align 8
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds i8, ptr %7, i64 %idxprom
  store i8 %conv5, ptr %arrayidx, align 1
  %9 = load ptr, ptr %s.addr, align 8
  %bi_buf6 = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 56
  %10 = load i16, ptr %bi_buf6, align 8
  %11 = lshr i16 %10, 8
  %conv8 = trunc i16 %11 to i8
  %pending_buf9 = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 2
  %12 = load ptr, ptr %pending_buf9, align 8
  %13 = load ptr, ptr %s.addr, align 8
  %pending10 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 5
  %14 = load i32, ptr %pending10, align 8
  %inc11 = add i32 %14, 1
  store i32 %inc11, ptr %pending10, align 8
  %idxprom12 = zext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %12, i64 %idxprom12
  store i8 %conv8, ptr %arrayidx13, align 1
  %15 = load i32, ptr %val, align 4
  %conv15 = and i32 %15, 65535
  %16 = load ptr, ptr %s.addr, align 8
  %bi_valid16 = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 57
  %17 = load i32, ptr %bi_valid16, align 4
  %sub18 = sub i32 16, %17
  %shr19 = lshr i32 %conv15, %sub18
  %conv20 = trunc i32 %shr19 to i16
  %bi_buf21 = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 56
  store i16 %conv20, ptr %bi_buf21, align 8
  %18 = load i32, ptr %len, align 4
  %sub23 = add i32 %18, -16
  %19 = load ptr, ptr %s.addr, align 8
  %bi_valid24 = getelementptr inbounds %struct.internal_state, ptr %19, i64 0, i32 57
  %20 = load i32, ptr %bi_valid24, align 4
  %add = add i32 %sub23, %20
  store i32 %add, ptr %bi_valid24, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %21 = load ptr, ptr %s.addr, align 8
  %bi_valid27 = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 57
  %22 = load i32, ptr %bi_valid27, align 4
  %shl28 = shl i32 2, %22
  %bi_buf29 = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 56
  %23 = load i16, ptr %bi_buf29, align 8
  %24 = trunc i32 %shl28 to i16
  %conv32 = or i16 %23, %24
  store i16 %conv32, ptr %bi_buf29, align 8
  %25 = load i32, ptr %len, align 4
  %26 = load ptr, ptr %s.addr, align 8
  %bi_valid33 = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 57
  %27 = load i32, ptr %bi_valid33, align 4
  %add34 = add nsw i32 %27, %25
  store i32 %add34, ptr %bi_valid33, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 7, ptr %len35, align 4
  %28 = load ptr, ptr %s.addr, align 8
  %bi_valid37 = getelementptr inbounds %struct.internal_state, ptr %28, i64 0, i32 57
  %29 = load i32, ptr %bi_valid37, align 4
  %cmp39 = icmp sgt i32 %29, 9
  br i1 %cmp39, label %if.then41, label %if.else83

if.then41:                                        ; preds = %if.end
  store i32 0, ptr %val42, align 4
  %30 = load ptr, ptr %s.addr, align 8
  %bi_buf50 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 56
  %31 = load i16, ptr %bi_buf50, align 8
  %conv53 = trunc i16 %31 to i8
  %pending_buf54 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %pending_buf54, align 8
  %pending55 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 5
  %33 = load i32, ptr %pending55, align 8
  %inc56 = add i32 %33, 1
  store i32 %inc56, ptr %pending55, align 8
  %idxprom57 = zext i32 %33 to i64
  %arrayidx58 = getelementptr inbounds i8, ptr %32, i64 %idxprom57
  store i8 %conv53, ptr %arrayidx58, align 1
  %34 = load ptr, ptr %s.addr, align 8
  %bi_buf59 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 56
  %35 = load i16, ptr %bi_buf59, align 8
  %36 = lshr i16 %35, 8
  %conv62 = trunc i16 %36 to i8
  %pending_buf63 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 2
  %37 = load ptr, ptr %pending_buf63, align 8
  %38 = load ptr, ptr %s.addr, align 8
  %pending64 = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 5
  %39 = load i32, ptr %pending64, align 8
  %inc65 = add i32 %39, 1
  store i32 %inc65, ptr %pending64, align 8
  %idxprom66 = zext i32 %39 to i64
  %arrayidx67 = getelementptr inbounds i8, ptr %37, i64 %idxprom66
  store i8 %conv62, ptr %arrayidx67, align 1
  %40 = load i32, ptr %val42, align 4
  %conv69 = and i32 %40, 65535
  %41 = load ptr, ptr %s.addr, align 8
  %bi_valid70 = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 57
  %42 = load i32, ptr %bi_valid70, align 4
  %sub72 = sub i32 16, %42
  %shr74 = lshr i32 %conv69, %sub72
  %conv75 = trunc i32 %shr74 to i16
  %bi_buf76 = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 56
  store i16 %conv75, ptr %bi_buf76, align 8
  %43 = load i32, ptr %len35, align 4
  %sub78 = add i32 %43, -16
  %44 = load ptr, ptr %s.addr, align 8
  %bi_valid79 = getelementptr inbounds %struct.internal_state, ptr %44, i64 0, i32 57
  %45 = load i32, ptr %bi_valid79, align 4
  %add81 = add i32 %sub78, %45
  store i32 %add81, ptr %bi_valid79, align 4
  br label %if.end93

if.else83:                                        ; preds = %if.end
  %46 = load i32, ptr %len35, align 4
  %47 = load ptr, ptr %s.addr, align 8
  %bi_valid91 = getelementptr inbounds %struct.internal_state, ptr %47, i64 0, i32 57
  %48 = load i32, ptr %bi_valid91, align 4
  %add92 = add nsw i32 %48, %46
  store i32 %add92, ptr %bi_valid91, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.else83, %if.then41
  %49 = load ptr, ptr %s.addr, align 8
  call void @bi_flush(ptr noundef %49)
  %last_eob_len = getelementptr inbounds %struct.internal_state, ptr %49, i64 0, i32 55
  %50 = load i32, ptr %last_eob_len, align 4
  %add95 = add nsw i32 %50, 11
  %bi_valid96 = getelementptr inbounds %struct.internal_state, ptr %49, i64 0, i32 57
  %51 = load i32, ptr %bi_valid96, align 4
  %sub97 = sub nsw i32 %add95, %51
  %cmp98 = icmp slt i32 %sub97, 9
  br i1 %cmp98, label %if.then100, label %if.end216

if.then100:                                       ; preds = %if.end93
  store i32 3, ptr %len101, align 4
  %52 = load ptr, ptr %s.addr, align 8
  %bi_valid102 = getelementptr inbounds %struct.internal_state, ptr %52, i64 0, i32 57
  %53 = load i32, ptr %bi_valid102, align 4
  %cmp104 = icmp sgt i32 %53, 13
  br i1 %cmp104, label %if.then106, label %if.else147

if.then106:                                       ; preds = %if.then100
  store i32 2, ptr %val107, align 4
  %54 = load ptr, ptr %s.addr, align 8
  %bi_valid108 = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 57
  %55 = load i32, ptr %bi_valid108, align 4
  %shl109 = shl i32 2, %55
  %bi_buf110 = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 56
  %56 = load i16, ptr %bi_buf110, align 8
  %57 = trunc i32 %shl109 to i16
  %conv113 = or i16 %56, %57
  store i16 %conv113, ptr %bi_buf110, align 8
  %58 = load ptr, ptr %s.addr, align 8
  %bi_buf114 = getelementptr inbounds %struct.internal_state, ptr %58, i64 0, i32 56
  %59 = load i16, ptr %bi_buf114, align 8
  %conv117 = trunc i16 %59 to i8
  %pending_buf118 = getelementptr inbounds %struct.internal_state, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %pending_buf118, align 8
  %pending119 = getelementptr inbounds %struct.internal_state, ptr %58, i64 0, i32 5
  %61 = load i32, ptr %pending119, align 8
  %inc120 = add i32 %61, 1
  store i32 %inc120, ptr %pending119, align 8
  %idxprom121 = zext i32 %61 to i64
  %arrayidx122 = getelementptr inbounds i8, ptr %60, i64 %idxprom121
  store i8 %conv117, ptr %arrayidx122, align 1
  %62 = load ptr, ptr %s.addr, align 8
  %bi_buf123 = getelementptr inbounds %struct.internal_state, ptr %62, i64 0, i32 56
  %63 = load i16, ptr %bi_buf123, align 8
  %64 = lshr i16 %63, 8
  %conv126 = trunc i16 %64 to i8
  %pending_buf127 = getelementptr inbounds %struct.internal_state, ptr %62, i64 0, i32 2
  %65 = load ptr, ptr %pending_buf127, align 8
  %66 = load ptr, ptr %s.addr, align 8
  %pending128 = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 5
  %67 = load i32, ptr %pending128, align 8
  %inc129 = add i32 %67, 1
  store i32 %inc129, ptr %pending128, align 8
  %idxprom130 = zext i32 %67 to i64
  %arrayidx131 = getelementptr inbounds i8, ptr %65, i64 %idxprom130
  store i8 %conv126, ptr %arrayidx131, align 1
  %68 = load i32, ptr %val107, align 4
  %conv133 = and i32 %68, 65535
  %69 = load ptr, ptr %s.addr, align 8
  %bi_valid134 = getelementptr inbounds %struct.internal_state, ptr %69, i64 0, i32 57
  %70 = load i32, ptr %bi_valid134, align 4
  %sub136 = sub i32 16, %70
  %shr138 = lshr i32 %conv133, %sub136
  %conv139 = trunc i32 %shr138 to i16
  %bi_buf140 = getelementptr inbounds %struct.internal_state, ptr %69, i64 0, i32 56
  store i16 %conv139, ptr %bi_buf140, align 8
  %71 = load i32, ptr %len101, align 4
  %sub142 = add i32 %71, -16
  %72 = load ptr, ptr %s.addr, align 8
  %bi_valid143 = getelementptr inbounds %struct.internal_state, ptr %72, i64 0, i32 57
  %73 = load i32, ptr %bi_valid143, align 4
  %add145 = add i32 %sub142, %73
  store i32 %add145, ptr %bi_valid143, align 4
  br label %if.end156

if.else147:                                       ; preds = %if.then100
  %74 = load ptr, ptr %s.addr, align 8
  %bi_valid148 = getelementptr inbounds %struct.internal_state, ptr %74, i64 0, i32 57
  %75 = load i32, ptr %bi_valid148, align 4
  %shl149 = shl i32 2, %75
  %bi_buf150 = getelementptr inbounds %struct.internal_state, ptr %74, i64 0, i32 56
  %76 = load i16, ptr %bi_buf150, align 8
  %77 = trunc i32 %shl149 to i16
  %conv153 = or i16 %76, %77
  store i16 %conv153, ptr %bi_buf150, align 8
  %78 = load i32, ptr %len101, align 4
  %79 = load ptr, ptr %s.addr, align 8
  %bi_valid154 = getelementptr inbounds %struct.internal_state, ptr %79, i64 0, i32 57
  %80 = load i32, ptr %bi_valid154, align 4
  %add155 = add nsw i32 %80, %78
  store i32 %add155, ptr %bi_valid154, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.else147, %if.then106
  store i32 7, ptr %len157, align 4
  %81 = load ptr, ptr %s.addr, align 8
  %bi_valid159 = getelementptr inbounds %struct.internal_state, ptr %81, i64 0, i32 57
  %82 = load i32, ptr %bi_valid159, align 4
  %cmp161 = icmp sgt i32 %82, 9
  br i1 %cmp161, label %if.then163, label %if.else205

if.then163:                                       ; preds = %if.end156
  store i32 0, ptr %val164, align 4
  %83 = load ptr, ptr %s.addr, align 8
  %bi_buf172 = getelementptr inbounds %struct.internal_state, ptr %83, i64 0, i32 56
  %84 = load i16, ptr %bi_buf172, align 8
  %conv175 = trunc i16 %84 to i8
  %pending_buf176 = getelementptr inbounds %struct.internal_state, ptr %83, i64 0, i32 2
  %85 = load ptr, ptr %pending_buf176, align 8
  %pending177 = getelementptr inbounds %struct.internal_state, ptr %83, i64 0, i32 5
  %86 = load i32, ptr %pending177, align 8
  %inc178 = add i32 %86, 1
  store i32 %inc178, ptr %pending177, align 8
  %idxprom179 = zext i32 %86 to i64
  %arrayidx180 = getelementptr inbounds i8, ptr %85, i64 %idxprom179
  store i8 %conv175, ptr %arrayidx180, align 1
  %87 = load ptr, ptr %s.addr, align 8
  %bi_buf181 = getelementptr inbounds %struct.internal_state, ptr %87, i64 0, i32 56
  %88 = load i16, ptr %bi_buf181, align 8
  %89 = lshr i16 %88, 8
  %conv184 = trunc i16 %89 to i8
  %pending_buf185 = getelementptr inbounds %struct.internal_state, ptr %87, i64 0, i32 2
  %90 = load ptr, ptr %pending_buf185, align 8
  %91 = load ptr, ptr %s.addr, align 8
  %pending186 = getelementptr inbounds %struct.internal_state, ptr %91, i64 0, i32 5
  %92 = load i32, ptr %pending186, align 8
  %inc187 = add i32 %92, 1
  store i32 %inc187, ptr %pending186, align 8
  %idxprom188 = zext i32 %92 to i64
  %arrayidx189 = getelementptr inbounds i8, ptr %90, i64 %idxprom188
  store i8 %conv184, ptr %arrayidx189, align 1
  %93 = load i32, ptr %val164, align 4
  %conv191 = and i32 %93, 65535
  %94 = load ptr, ptr %s.addr, align 8
  %bi_valid192 = getelementptr inbounds %struct.internal_state, ptr %94, i64 0, i32 57
  %95 = load i32, ptr %bi_valid192, align 4
  %sub194 = sub i32 16, %95
  %shr196 = lshr i32 %conv191, %sub194
  %conv197 = trunc i32 %shr196 to i16
  %bi_buf198 = getelementptr inbounds %struct.internal_state, ptr %94, i64 0, i32 56
  store i16 %conv197, ptr %bi_buf198, align 8
  %96 = load i32, ptr %len157, align 4
  %sub200 = add i32 %96, -16
  %97 = load ptr, ptr %s.addr, align 8
  %bi_valid201 = getelementptr inbounds %struct.internal_state, ptr %97, i64 0, i32 57
  %98 = load i32, ptr %bi_valid201, align 4
  %add203 = add i32 %sub200, %98
  store i32 %add203, ptr %bi_valid201, align 4
  br label %if.end215

if.else205:                                       ; preds = %if.end156
  %99 = load i32, ptr %len157, align 4
  %100 = load ptr, ptr %s.addr, align 8
  %bi_valid213 = getelementptr inbounds %struct.internal_state, ptr %100, i64 0, i32 57
  %101 = load i32, ptr %bi_valid213, align 4
  %add214 = add nsw i32 %101, %99
  store i32 %add214, ptr %bi_valid213, align 4
  br label %if.end215

if.end215:                                        ; preds = %if.else205, %if.then163
  %102 = load ptr, ptr %s.addr, align 8
  call void @bi_flush(ptr noundef %102)
  br label %if.end216

if.end216:                                        ; preds = %if.end215, %if.end93
  %103 = load ptr, ptr %s.addr, align 8
  %last_eob_len217 = getelementptr inbounds %struct.internal_state, ptr %103, i64 0, i32 55
  store i32 7, ptr %last_eob_len217, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @bi_flush(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 57
  %0 = load i32, ptr %bi_valid, align 4
  %cmp = icmp eq i32 %0, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 56
  %2 = load i16, ptr %bi_buf, align 8
  %conv1 = trunc i16 %2 to i8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 2
  %3 = load ptr, ptr %pending_buf, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %pending, align 8
  %inc = add i32 %4, 1
  store i32 %inc, ptr %pending, align 8
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  store i8 %conv1, ptr %arrayidx, align 1
  %5 = load ptr, ptr %s.addr, align 8
  %bi_buf2 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 56
  %6 = load i16, ptr %bi_buf2, align 8
  %7 = lshr i16 %6, 8
  %conv4 = trunc i16 %7 to i8
  %pending_buf5 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 2
  %8 = load ptr, ptr %pending_buf5, align 8
  %9 = load ptr, ptr %s.addr, align 8
  %pending6 = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 5
  %10 = load i32, ptr %pending6, align 8
  %inc7 = add i32 %10, 1
  store i32 %inc7, ptr %pending6, align 8
  %idxprom8 = zext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %8, i64 %idxprom8
  store i8 %conv4, ptr %arrayidx9, align 1
  %11 = load ptr, ptr %s.addr, align 8
  %bi_buf10 = getelementptr inbounds %struct.internal_state, ptr %11, i64 0, i32 56
  store i16 0, ptr %bi_buf10, align 8
  %bi_valid11 = getelementptr inbounds %struct.internal_state, ptr %11, i64 0, i32 57
  store i32 0, ptr %bi_valid11, align 4
  br label %if.end28

if.else:                                          ; preds = %entry
  %12 = load ptr, ptr %s.addr, align 8
  %bi_valid12 = getelementptr inbounds %struct.internal_state, ptr %12, i64 0, i32 57
  %13 = load i32, ptr %bi_valid12, align 4
  %cmp13 = icmp sgt i32 %13, 7
  br i1 %cmp13, label %if.then15, label %if.end28

if.then15:                                        ; preds = %if.else
  %14 = load ptr, ptr %s.addr, align 8
  %bi_buf16 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 56
  %15 = load i16, ptr %bi_buf16, align 8
  %conv17 = trunc i16 %15 to i8
  %pending_buf18 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %pending_buf18, align 8
  %pending19 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 5
  %17 = load i32, ptr %pending19, align 8
  %inc20 = add i32 %17, 1
  store i32 %inc20, ptr %pending19, align 8
  %idxprom21 = zext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %16, i64 %idxprom21
  store i8 %conv17, ptr %arrayidx22, align 1
  %18 = load ptr, ptr %s.addr, align 8
  %bi_buf23 = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 56
  %19 = load i16, ptr %bi_buf23, align 8
  %20 = lshr i16 %19, 8
  store i16 %20, ptr %bi_buf23, align 8
  %bi_valid27 = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 57
  %21 = load i32, ptr %bi_valid27, align 4
  %sub = add nsw i32 %21, -8
  store i32 %sub, ptr %bi_valid27, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then15, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_tr_flush_block(ptr noundef %s, ptr noundef %buf, i64 noundef %stored_len, i32 noundef %eof) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %stored_len.addr = alloca i64, align 8
  %eof.addr = alloca i32, align 4
  %opt_lenb = alloca i64, align 8
  %static_lenb = alloca i64, align 8
  %max_blindex = alloca i32, align 4
  %len = alloca i32, align 4
  %val = alloca i32, align 4
  %len65 = alloca i32, align 4
  %val71 = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %stored_len, ptr %stored_len.addr, align 8
  store i32 %eof, ptr %eof.addr, align 4
  store i32 0, ptr %max_blindex, align 4
  %level = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 33
  %0 = load i32, ptr %level, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %stored_len.addr, align 8
  %cmp1.not = icmp eq i64 %1, 0
  br i1 %cmp1.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %2 = load ptr, ptr %s.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %data_type = getelementptr inbounds %struct.z_stream_s, ptr %3, i64 0, i32 11
  %4 = load i32, ptr %data_type, align 8
  %cmp2 = icmp eq i32 %4, 2
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %land.lhs.true
  %5 = load ptr, ptr %s.addr, align 8
  call void @set_data_type(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then3, %land.lhs.true, %if.then
  %6 = load ptr, ptr %s.addr, align 8
  %l_desc = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 40
  call void @build_tree(ptr noundef %6, ptr noundef nonnull %l_desc)
  %d_desc = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 41
  call void @build_tree(ptr noundef %6, ptr noundef nonnull %d_desc)
  %call = call i32 @build_bl_tree(ptr noundef %6)
  store i32 %call, ptr %max_blindex, align 4
  %7 = load ptr, ptr %s.addr, align 8
  %opt_len = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 52
  %8 = load i64, ptr %opt_len, align 8
  %add4 = add i64 %8, 10
  %shr = lshr i64 %add4, 3
  store i64 %shr, ptr %opt_lenb, align 8
  %static_len = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 53
  %9 = load i64, ptr %static_len, align 8
  %add6 = add i64 %9, 10
  %shr7 = lshr i64 %add6, 3
  store i64 %shr7, ptr %static_lenb, align 8
  %cmp8.not = icmp ugt i64 %shr7, %shr
  br i1 %cmp8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end
  %10 = load i64, ptr %static_lenb, align 8
  store i64 %10, ptr %opt_lenb, align 8
  br label %if.end12

if.else:                                          ; preds = %entry
  %11 = load i64, ptr %stored_len.addr, align 8
  %add11 = add i64 %11, 5
  store i64 %add11, ptr %static_lenb, align 8
  store i64 %add11, ptr %opt_lenb, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then9, %if.else
  %12 = load i64, ptr %stored_len.addr, align 8
  %add13 = add i64 %12, 4
  %13 = load i64, ptr %opt_lenb, align 8
  %cmp14.not = icmp ugt i64 %add13, %13
  %14 = load ptr, ptr %buf.addr, align 8
  %cmp16.not = icmp eq ptr %14, null
  %or.cond = select i1 %cmp14.not, i1 true, i1 %cmp16.not
  br i1 %or.cond, label %if.else18, label %if.then17

if.then17:                                        ; preds = %if.end12
  %15 = load ptr, ptr %s.addr, align 8
  %16 = load ptr, ptr %buf.addr, align 8
  %17 = load i64, ptr %stored_len.addr, align 8
  %18 = load i32, ptr %eof.addr, align 4
  call void @_tr_stored_block(ptr noundef %15, ptr noundef %16, i64 noundef %17, i32 noundef %18)
  br label %if.end131

if.else18:                                        ; preds = %if.end12
  %19 = load ptr, ptr %s.addr, align 8
  %strategy = getelementptr inbounds %struct.internal_state, ptr %19, i64 0, i32 34
  %20 = load i32, ptr %strategy, align 8
  %cmp19 = icmp eq i32 %20, 4
  br i1 %cmp19, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else18
  %21 = load i64, ptr %static_lenb, align 8
  %22 = load i64, ptr %opt_lenb, align 8
  %cmp20 = icmp eq i64 %21, %22
  br i1 %cmp20, label %if.then21, label %if.else64

if.then21:                                        ; preds = %lor.lhs.false, %if.else18
  store i32 3, ptr %len, align 4
  %23 = load ptr, ptr %s.addr, align 8
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 57
  %24 = load i32, ptr %bi_valid, align 4
  %cmp22 = icmp sgt i32 %24, 13
  br i1 %cmp22, label %if.then23, label %if.else53

if.then23:                                        ; preds = %if.then21
  %25 = load i32, ptr %eof.addr, align 4
  %add24 = add nsw i32 %25, 2
  store i32 %add24, ptr %val, align 4
  %26 = load ptr, ptr %s.addr, align 8
  %bi_valid25 = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 57
  %27 = load i32, ptr %bi_valid25, align 4
  %shl = shl i32 %add24, %27
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 56
  %28 = load i16, ptr %bi_buf, align 8
  %29 = trunc i32 %shl to i16
  %conv26 = or i16 %28, %29
  store i16 %conv26, ptr %bi_buf, align 8
  %30 = load ptr, ptr %s.addr, align 8
  %bi_buf27 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 56
  %31 = load i16, ptr %bi_buf27, align 8
  %conv29 = trunc i16 %31 to i8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %pending_buf, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 5
  %33 = load i32, ptr %pending, align 8
  %inc = add i32 %33, 1
  store i32 %inc, ptr %pending, align 8
  %idxprom = zext i32 %33 to i64
  %arrayidx = getelementptr inbounds i8, ptr %32, i64 %idxprom
  store i8 %conv29, ptr %arrayidx, align 1
  %34 = load ptr, ptr %s.addr, align 8
  %bi_buf30 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 56
  %35 = load i16, ptr %bi_buf30, align 8
  %36 = lshr i16 %35, 8
  %conv33 = trunc i16 %36 to i8
  %pending_buf34 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 2
  %37 = load ptr, ptr %pending_buf34, align 8
  %38 = load ptr, ptr %s.addr, align 8
  %pending35 = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 5
  %39 = load i32, ptr %pending35, align 8
  %inc36 = add i32 %39, 1
  store i32 %inc36, ptr %pending35, align 8
  %idxprom37 = zext i32 %39 to i64
  %arrayidx38 = getelementptr inbounds i8, ptr %37, i64 %idxprom37
  store i8 %conv33, ptr %arrayidx38, align 1
  %40 = load i32, ptr %val, align 4
  %conv40 = and i32 %40, 65535
  %41 = load ptr, ptr %s.addr, align 8
  %bi_valid41 = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 57
  %42 = load i32, ptr %bi_valid41, align 4
  %sub43 = sub i32 16, %42
  %shr44 = lshr i32 %conv40, %sub43
  %conv45 = trunc i32 %shr44 to i16
  %bi_buf46 = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 56
  store i16 %conv45, ptr %bi_buf46, align 8
  %43 = load i32, ptr %len, align 4
  %sub48 = add i32 %43, -16
  %44 = load ptr, ptr %s.addr, align 8
  %bi_valid49 = getelementptr inbounds %struct.internal_state, ptr %44, i64 0, i32 57
  %45 = load i32, ptr %bi_valid49, align 4
  %add51 = add i32 %sub48, %45
  store i32 %add51, ptr %bi_valid49, align 4
  br label %if.end63

if.else53:                                        ; preds = %if.then21
  %46 = load i32, ptr %eof.addr, align 4
  %add54 = add nsw i32 %46, 2
  %47 = load ptr, ptr %s.addr, align 8
  %bi_valid55 = getelementptr inbounds %struct.internal_state, ptr %47, i64 0, i32 57
  %48 = load i32, ptr %bi_valid55, align 4
  %shl56 = shl i32 %add54, %48
  %bi_buf57 = getelementptr inbounds %struct.internal_state, ptr %47, i64 0, i32 56
  %49 = load i16, ptr %bi_buf57, align 8
  %50 = trunc i32 %shl56 to i16
  %conv60 = or i16 %49, %50
  store i16 %conv60, ptr %bi_buf57, align 8
  %51 = load i32, ptr %len, align 4
  %52 = load ptr, ptr %s.addr, align 8
  %bi_valid61 = getelementptr inbounds %struct.internal_state, ptr %52, i64 0, i32 57
  %53 = load i32, ptr %bi_valid61, align 4
  %add62 = add nsw i32 %53, %51
  store i32 %add62, ptr %bi_valid61, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.else53, %if.then23
  %54 = load ptr, ptr %s.addr, align 8
  call void @compress_block(ptr noundef %54, ptr noundef nonnull @static_ltree, ptr noundef nonnull @static_dtree)
  br label %if.end131

if.else64:                                        ; preds = %lor.lhs.false
  store i32 3, ptr %len65, align 4
  %55 = load ptr, ptr %s.addr, align 8
  %bi_valid66 = getelementptr inbounds %struct.internal_state, ptr %55, i64 0, i32 57
  %56 = load i32, ptr %bi_valid66, align 4
  %cmp68 = icmp sgt i32 %56, 13
  br i1 %cmp68, label %if.then70, label %if.else112

if.then70:                                        ; preds = %if.else64
  %57 = load i32, ptr %eof.addr, align 4
  %add72 = add nsw i32 %57, 4
  store i32 %add72, ptr %val71, align 4
  %58 = load ptr, ptr %s.addr, align 8
  %bi_valid73 = getelementptr inbounds %struct.internal_state, ptr %58, i64 0, i32 57
  %59 = load i32, ptr %bi_valid73, align 4
  %shl74 = shl i32 %add72, %59
  %bi_buf75 = getelementptr inbounds %struct.internal_state, ptr %58, i64 0, i32 56
  %60 = load i16, ptr %bi_buf75, align 8
  %61 = trunc i32 %shl74 to i16
  %conv78 = or i16 %60, %61
  store i16 %conv78, ptr %bi_buf75, align 8
  %62 = load ptr, ptr %s.addr, align 8
  %bi_buf79 = getelementptr inbounds %struct.internal_state, ptr %62, i64 0, i32 56
  %63 = load i16, ptr %bi_buf79, align 8
  %conv82 = trunc i16 %63 to i8
  %pending_buf83 = getelementptr inbounds %struct.internal_state, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %pending_buf83, align 8
  %pending84 = getelementptr inbounds %struct.internal_state, ptr %62, i64 0, i32 5
  %65 = load i32, ptr %pending84, align 8
  %inc85 = add i32 %65, 1
  store i32 %inc85, ptr %pending84, align 8
  %idxprom86 = zext i32 %65 to i64
  %arrayidx87 = getelementptr inbounds i8, ptr %64, i64 %idxprom86
  store i8 %conv82, ptr %arrayidx87, align 1
  %66 = load ptr, ptr %s.addr, align 8
  %bi_buf88 = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 56
  %67 = load i16, ptr %bi_buf88, align 8
  %68 = lshr i16 %67, 8
  %conv91 = trunc i16 %68 to i8
  %pending_buf92 = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 2
  %69 = load ptr, ptr %pending_buf92, align 8
  %70 = load ptr, ptr %s.addr, align 8
  %pending93 = getelementptr inbounds %struct.internal_state, ptr %70, i64 0, i32 5
  %71 = load i32, ptr %pending93, align 8
  %inc94 = add i32 %71, 1
  store i32 %inc94, ptr %pending93, align 8
  %idxprom95 = zext i32 %71 to i64
  %arrayidx96 = getelementptr inbounds i8, ptr %69, i64 %idxprom95
  store i8 %conv91, ptr %arrayidx96, align 1
  %72 = load i32, ptr %val71, align 4
  %conv98 = and i32 %72, 65535
  %73 = load ptr, ptr %s.addr, align 8
  %bi_valid99 = getelementptr inbounds %struct.internal_state, ptr %73, i64 0, i32 57
  %74 = load i32, ptr %bi_valid99, align 4
  %sub101 = sub i32 16, %74
  %shr103 = lshr i32 %conv98, %sub101
  %conv104 = trunc i32 %shr103 to i16
  %bi_buf105 = getelementptr inbounds %struct.internal_state, ptr %73, i64 0, i32 56
  store i16 %conv104, ptr %bi_buf105, align 8
  %75 = load i32, ptr %len65, align 4
  %sub107 = add i32 %75, -16
  %76 = load ptr, ptr %s.addr, align 8
  %bi_valid108 = getelementptr inbounds %struct.internal_state, ptr %76, i64 0, i32 57
  %77 = load i32, ptr %bi_valid108, align 4
  %add110 = add i32 %sub107, %77
  store i32 %add110, ptr %bi_valid108, align 4
  br label %if.end122

if.else112:                                       ; preds = %if.else64
  %78 = load i32, ptr %eof.addr, align 4
  %add113 = add nsw i32 %78, 4
  %79 = load ptr, ptr %s.addr, align 8
  %bi_valid114 = getelementptr inbounds %struct.internal_state, ptr %79, i64 0, i32 57
  %80 = load i32, ptr %bi_valid114, align 4
  %shl115 = shl i32 %add113, %80
  %bi_buf116 = getelementptr inbounds %struct.internal_state, ptr %79, i64 0, i32 56
  %81 = load i16, ptr %bi_buf116, align 8
  %82 = trunc i32 %shl115 to i16
  %conv119 = or i16 %81, %82
  store i16 %conv119, ptr %bi_buf116, align 8
  %83 = load i32, ptr %len65, align 4
  %84 = load ptr, ptr %s.addr, align 8
  %bi_valid120 = getelementptr inbounds %struct.internal_state, ptr %84, i64 0, i32 57
  %85 = load i32, ptr %bi_valid120, align 4
  %add121 = add nsw i32 %85, %83
  store i32 %add121, ptr %bi_valid120, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.else112, %if.then70
  %86 = load ptr, ptr %s.addr, align 8
  %max_code = getelementptr inbounds %struct.internal_state, ptr %86, i64 0, i32 40, i32 1
  %87 = load i32, ptr %max_code, align 8
  %add124 = add nsw i32 %87, 1
  %max_code126 = getelementptr inbounds %struct.internal_state, ptr %86, i64 0, i32 41, i32 1
  %88 = load i32, ptr %max_code126, align 8
  %add127 = add nsw i32 %88, 1
  %89 = load i32, ptr %max_blindex, align 4
  %add128 = add nsw i32 %89, 1
  call void @send_all_trees(ptr noundef %86, i32 noundef %add124, i32 noundef %add127, i32 noundef %add128)
  %90 = load ptr, ptr %s.addr, align 8
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %90, i64 0, i32 37
  %dyn_dtree = getelementptr inbounds %struct.internal_state, ptr %90, i64 0, i32 38
  call void @compress_block(ptr noundef %90, ptr noundef nonnull %dyn_ltree, ptr noundef nonnull %dyn_dtree)
  br label %if.end131

if.end131:                                        ; preds = %if.end63, %if.end122, %if.then17
  %91 = load ptr, ptr %s.addr, align 8
  call void @init_block(ptr noundef %91)
  %92 = load i32, ptr %eof.addr, align 4
  %tobool.not = icmp eq i32 %92, 0
  br i1 %tobool.not, label %if.end133, label %if.then132

if.then132:                                       ; preds = %if.end131
  %93 = load ptr, ptr %s.addr, align 8
  call void @bi_windup(ptr noundef %93)
  br label %if.end133

if.end133:                                        ; preds = %if.then132, %if.end131
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @set_data_type(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %n, align 4
  %cmp = icmp slt i32 %storemerge, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %s.addr, align 8
  %1 = load i32, ptr %n, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %idxprom
  %2 = load i16, ptr %arrayidx, align 4
  %cmp1.not = icmp eq i16 %2, 0
  br i1 %cmp1.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %n, align 4
  %inc = add nsw i32 %3, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.body, %for.cond
  %4 = load i32, ptr %n, align 4
  %cmp3 = icmp eq i32 %4, 9
  br i1 %cmp3, label %for.cond6, label %if.end22

for.cond6:                                        ; preds = %for.end, %for.inc19
  %storemerge1 = phi i32 [ %inc20, %for.inc19 ], [ 14, %for.end ]
  store i32 %storemerge1, ptr %n, align 4
  %cmp7 = icmp slt i32 %storemerge1, 32
  br i1 %cmp7, label %for.body9, label %if.end22

for.body9:                                        ; preds = %for.cond6
  %5 = load ptr, ptr %s.addr, align 8
  %6 = load i32, ptr %n, align 4
  %idxprom11 = sext i32 %6 to i64
  %arrayidx12 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 37, i64 %idxprom11
  %7 = load i16, ptr %arrayidx12, align 4
  %cmp15.not = icmp eq i16 %7, 0
  br i1 %cmp15.not, label %for.inc19, label %if.end22

for.inc19:                                        ; preds = %for.body9
  %8 = load i32, ptr %n, align 4
  %inc20 = add nsw i32 %8, 1
  br label %for.cond6, !llvm.loop !12

if.end22:                                         ; preds = %for.cond6, %for.body9, %for.end
  %9 = load i32, ptr %n, align 4
  %cmp23 = icmp eq i32 %9, 32
  %cond = zext i1 %cmp23 to i32
  %10 = load ptr, ptr %s.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %data_type = getelementptr inbounds %struct.z_stream_s, ptr %11, i64 0, i32 11
  store i32 %cond, ptr %data_type, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @build_tree(ptr noundef %s, ptr noundef %desc) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %desc.addr = alloca ptr, align 8
  %tree = alloca ptr, align 8
  %stree = alloca ptr, align 8
  %elems = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %max_code = alloca i32, align 4
  %node = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  %0 = load ptr, ptr %desc, align 8
  store ptr %0, ptr %tree, align 8
  %stat_desc = getelementptr inbounds %struct.tree_desc_s, ptr %desc, i64 0, i32 2
  %1 = load ptr, ptr %stat_desc, align 8
  %2 = load ptr, ptr %1, align 8
  store ptr %2, ptr %stree, align 8
  %3 = load ptr, ptr %desc.addr, align 8
  %stat_desc1 = getelementptr inbounds %struct.tree_desc_s, ptr %3, i64 0, i32 2
  %4 = load ptr, ptr %stat_desc1, align 8
  %elems2 = getelementptr inbounds %struct.static_tree_desc_s, ptr %4, i64 0, i32 3
  %5 = load i32, ptr %elems2, align 4
  store i32 %5, ptr %elems, align 4
  store i32 -1, ptr %max_code, align 4
  %6 = load ptr, ptr %s.addr, align 8
  %heap_len = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 45
  store i32 0, ptr %heap_len, align 4
  %heap_max = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 46
  store i32 573, ptr %heap_max, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc12, %for.inc ]
  store i32 %storemerge, ptr %n, align 4
  %7 = load i32, ptr %elems, align 4
  %cmp = icmp slt i32 %storemerge, %7
  br i1 %cmp, label %for.body, label %while.cond

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %tree, align 8
  %9 = load i32, ptr %n, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds %struct.ct_data_s, ptr %8, i64 %idxprom
  %10 = load i16, ptr %arrayidx, align 2
  %cmp3.not = icmp eq i16 %10, 0
  br i1 %cmp3.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %11 = load i32, ptr %n, align 4
  store i32 %11, ptr %max_code, align 4
  %12 = load ptr, ptr %s.addr, align 8
  %heap_len5 = getelementptr inbounds %struct.internal_state, ptr %12, i64 0, i32 45
  %13 = load i32, ptr %heap_len5, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %heap_len5, align 4
  %idxprom6 = sext i32 %inc to i64
  %arrayidx7 = getelementptr inbounds %struct.internal_state, ptr %12, i64 0, i32 44, i64 %idxprom6
  store i32 %11, ptr %arrayidx7, align 4
  %14 = load ptr, ptr %s.addr, align 8
  %15 = load i32, ptr %n, align 4
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 47, i64 %idxprom8
  store i8 0, ptr %arrayidx9, align 1
  br label %for.inc

if.else:                                          ; preds = %for.body
  %16 = load ptr, ptr %tree, align 8
  %17 = load i32, ptr %n, align 4
  %idxprom10 = sext i32 %17 to i64
  %dl = getelementptr inbounds %struct.ct_data_s, ptr %16, i64 %idxprom10, i32 1
  store i16 0, ptr %dl, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %18 = load i32, ptr %n, align 4
  %inc12 = add nsw i32 %18, 1
  br label %for.cond, !llvm.loop !13

while.cond:                                       ; preds = %for.cond, %if.end35
  %19 = load ptr, ptr %s.addr, align 8
  %heap_len13 = getelementptr inbounds %struct.internal_state, ptr %19, i64 0, i32 45
  %20 = load i32, ptr %heap_len13, align 4
  %cmp14 = icmp slt i32 %20, 2
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32, ptr %max_code, align 4
  %cmp16 = icmp slt i32 %21, 2
  br i1 %cmp16, label %cond.true, label %cond.end

cond.true:                                        ; preds = %while.body
  %22 = load i32, ptr %max_code, align 4
  %inc18 = add nsw i32 %22, 1
  store i32 %inc18, ptr %max_code, align 4
  br label %cond.end

cond.end:                                         ; preds = %while.body, %cond.true
  %cond = phi i32 [ %inc18, %cond.true ], [ 0, %while.body ]
  %23 = load ptr, ptr %s.addr, align 8
  %heap_len20 = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 45
  %24 = load i32, ptr %heap_len20, align 4
  %inc21 = add nsw i32 %24, 1
  store i32 %inc21, ptr %heap_len20, align 4
  %idxprom22 = sext i32 %inc21 to i64
  %arrayidx23 = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 44, i64 %idxprom22
  store i32 %cond, ptr %arrayidx23, align 4
  store i32 %cond, ptr %node, align 4
  %25 = load ptr, ptr %tree, align 8
  %idxprom24 = sext i32 %cond to i64
  %arrayidx25 = getelementptr inbounds %struct.ct_data_s, ptr %25, i64 %idxprom24
  store i16 1, ptr %arrayidx25, align 2
  %26 = load ptr, ptr %s.addr, align 8
  %idxprom28 = sext i32 %cond to i64
  %arrayidx29 = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 47, i64 %idxprom28
  store i8 0, ptr %arrayidx29, align 1
  %opt_len = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 52
  %27 = load i64, ptr %opt_len, align 8
  %dec = add i64 %27, -1
  store i64 %dec, ptr %opt_len, align 8
  %28 = load ptr, ptr %stree, align 8
  %tobool.not = icmp eq ptr %28, null
  br i1 %tobool.not, label %if.end35, label %if.then30

if.then30:                                        ; preds = %cond.end
  %29 = load ptr, ptr %stree, align 8
  %30 = load i32, ptr %node, align 4
  %idxprom31 = sext i32 %30 to i64
  %dl33 = getelementptr inbounds %struct.ct_data_s, ptr %29, i64 %idxprom31, i32 1
  %31 = load i16, ptr %dl33, align 2
  %conv34 = zext i16 %31 to i64
  %32 = load ptr, ptr %s.addr, align 8
  %static_len = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 53
  %33 = load i64, ptr %static_len, align 8
  %sub = sub i64 %33, %conv34
  store i64 %sub, ptr %static_len, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %cond.end
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  %34 = load i32, ptr %max_code, align 4
  %35 = load ptr, ptr %desc.addr, align 8
  %max_code36 = getelementptr inbounds %struct.tree_desc_s, ptr %35, i64 0, i32 1
  store i32 %34, ptr %max_code36, align 8
  %36 = load ptr, ptr %s.addr, align 8
  %heap_len37 = getelementptr inbounds %struct.internal_state, ptr %36, i64 0, i32 45
  %37 = load i32, ptr %heap_len37, align 4
  %div = sdiv i32 %37, 2
  br label %for.cond38

for.cond38:                                       ; preds = %for.body41, %while.end
  %storemerge1 = phi i32 [ %div, %while.end ], [ %dec43, %for.body41 ]
  store i32 %storemerge1, ptr %n, align 4
  %cmp39 = icmp sgt i32 %storemerge1, 0
  br i1 %cmp39, label %for.body41, label %for.end44

for.body41:                                       ; preds = %for.cond38
  %38 = load ptr, ptr %s.addr, align 8
  %39 = load ptr, ptr %tree, align 8
  %40 = load i32, ptr %n, align 4
  call void @pqdownheap(ptr noundef %38, ptr noundef %39, i32 noundef %40)
  %41 = load i32, ptr %n, align 4
  %dec43 = add nsw i32 %41, -1
  br label %for.cond38, !llvm.loop !15

for.end44:                                        ; preds = %for.cond38
  %42 = load i32, ptr %elems, align 4
  store i32 %42, ptr %node, align 4
  br label %do.body

do.body:                                          ; preds = %cond.end98, %for.end44
  %43 = load ptr, ptr %s.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct.internal_state, ptr %43, i64 0, i32 44, i64 1
  %44 = load i32, ptr %arrayidx46, align 4
  store i32 %44, ptr %n, align 4
  %heap_len48 = getelementptr inbounds %struct.internal_state, ptr %43, i64 0, i32 45
  %45 = load i32, ptr %heap_len48, align 4
  %dec49 = add nsw i32 %45, -1
  store i32 %dec49, ptr %heap_len48, align 4
  %idxprom50 = sext i32 %45 to i64
  %arrayidx51 = getelementptr inbounds %struct.internal_state, ptr %43, i64 0, i32 44, i64 %idxprom50
  %46 = load i32, ptr %arrayidx51, align 4
  %47 = load ptr, ptr %s.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct.internal_state, ptr %47, i64 0, i32 44, i64 1
  store i32 %46, ptr %arrayidx53, align 4
  %48 = load ptr, ptr %tree, align 8
  call void @pqdownheap(ptr noundef %47, ptr noundef %48, i32 noundef 1)
  %arrayidx55 = getelementptr inbounds %struct.internal_state, ptr %47, i64 0, i32 44, i64 1
  %49 = load i32, ptr %arrayidx55, align 4
  store i32 %49, ptr %m, align 4
  %50 = load i32, ptr %n, align 4
  %51 = load ptr, ptr %s.addr, align 8
  %heap_max57 = getelementptr inbounds %struct.internal_state, ptr %51, i64 0, i32 46
  %52 = load i32, ptr %heap_max57, align 8
  %dec58 = add nsw i32 %52, -1
  store i32 %dec58, ptr %heap_max57, align 8
  %idxprom59 = sext i32 %dec58 to i64
  %arrayidx60 = getelementptr inbounds %struct.internal_state, ptr %51, i64 0, i32 44, i64 %idxprom59
  store i32 %50, ptr %arrayidx60, align 4
  %53 = load i32, ptr %m, align 4
  %54 = load ptr, ptr %s.addr, align 8
  %heap_max62 = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 46
  %55 = load i32, ptr %heap_max62, align 8
  %dec63 = add nsw i32 %55, -1
  store i32 %dec63, ptr %heap_max62, align 8
  %idxprom64 = sext i32 %dec63 to i64
  %arrayidx65 = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 44, i64 %idxprom64
  store i32 %53, ptr %arrayidx65, align 4
  %56 = load ptr, ptr %tree, align 8
  %57 = load i32, ptr %n, align 4
  %idxprom66 = sext i32 %57 to i64
  %arrayidx67 = getelementptr inbounds %struct.ct_data_s, ptr %56, i64 %idxprom66
  %58 = load i16, ptr %arrayidx67, align 2
  %59 = load i32, ptr %m, align 4
  %idxprom70 = sext i32 %59 to i64
  %arrayidx71 = getelementptr inbounds %struct.ct_data_s, ptr %56, i64 %idxprom70
  %60 = load i16, ptr %arrayidx71, align 2
  %add = add i16 %58, %60
  %61 = load ptr, ptr %tree, align 8
  %62 = load i32, ptr %node, align 4
  %idxprom75 = sext i32 %62 to i64
  %arrayidx76 = getelementptr inbounds %struct.ct_data_s, ptr %61, i64 %idxprom75
  store i16 %add, ptr %arrayidx76, align 2
  %63 = load ptr, ptr %s.addr, align 8
  %64 = load i32, ptr %n, align 4
  %idxprom79 = sext i32 %64 to i64
  %arrayidx80 = getelementptr inbounds %struct.internal_state, ptr %63, i64 0, i32 47, i64 %idxprom79
  %65 = load i8, ptr %arrayidx80, align 1
  %66 = load i32, ptr %m, align 4
  %idxprom83 = sext i32 %66 to i64
  %arrayidx84 = getelementptr inbounds %struct.internal_state, ptr %63, i64 0, i32 47, i64 %idxprom83
  %67 = load i8, ptr %arrayidx84, align 1
  %cmp86.not = icmp ult i8 %65, %67
  br i1 %cmp86.not, label %cond.false93, label %cond.true88

cond.true88:                                      ; preds = %do.body
  %68 = load ptr, ptr %s.addr, align 8
  %69 = load i32, ptr %n, align 4
  %idxprom90 = sext i32 %69 to i64
  %arrayidx91 = getelementptr inbounds %struct.internal_state, ptr %68, i64 0, i32 47, i64 %idxprom90
  br label %cond.end98

cond.false93:                                     ; preds = %do.body
  %70 = load ptr, ptr %s.addr, align 8
  %71 = load i32, ptr %m, align 4
  %idxprom95 = sext i32 %71 to i64
  %arrayidx96 = getelementptr inbounds %struct.internal_state, ptr %70, i64 0, i32 47, i64 %idxprom95
  br label %cond.end98

cond.end98:                                       ; preds = %cond.false93, %cond.true88
  %cond99.in.in = phi ptr [ %arrayidx91, %cond.true88 ], [ %arrayidx96, %cond.false93 ]
  %cond99.in = load i8, ptr %cond99.in.in, align 1
  %add100 = add i8 %cond99.in, 1
  %72 = load ptr, ptr %s.addr, align 8
  %73 = load i32, ptr %node, align 4
  %idxprom103 = sext i32 %73 to i64
  %arrayidx104 = getelementptr inbounds %struct.internal_state, ptr %72, i64 0, i32 47, i64 %idxprom103
  store i8 %add100, ptr %arrayidx104, align 1
  %conv105 = trunc i32 %73 to i16
  %74 = load ptr, ptr %tree, align 8
  %75 = load i32, ptr %m, align 4
  %idxprom106 = sext i32 %75 to i64
  %dl108 = getelementptr inbounds %struct.ct_data_s, ptr %74, i64 %idxprom106, i32 1
  store i16 %conv105, ptr %dl108, align 2
  %76 = load i32, ptr %n, align 4
  %idxprom109 = sext i32 %76 to i64
  %dl111 = getelementptr inbounds %struct.ct_data_s, ptr %74, i64 %idxprom109, i32 1
  store i16 %conv105, ptr %dl111, align 2
  %77 = load i32, ptr %node, align 4
  %inc112 = add nsw i32 %77, 1
  store i32 %inc112, ptr %node, align 4
  %78 = load ptr, ptr %s.addr, align 8
  %arrayidx114 = getelementptr inbounds %struct.internal_state, ptr %78, i64 0, i32 44, i64 1
  store i32 %77, ptr %arrayidx114, align 4
  %79 = load ptr, ptr %tree, align 8
  call void @pqdownheap(ptr noundef %78, ptr noundef %79, i32 noundef 1)
  %80 = load ptr, ptr %s.addr, align 8
  %heap_len115 = getelementptr inbounds %struct.internal_state, ptr %80, i64 0, i32 45
  %81 = load i32, ptr %heap_len115, align 4
  %cmp116 = icmp sgt i32 %81, 1
  br i1 %cmp116, label %do.body, label %do.end, !llvm.loop !16

do.end:                                           ; preds = %cond.end98
  %82 = load ptr, ptr %s.addr, align 8
  %arrayidx119 = getelementptr inbounds %struct.internal_state, ptr %82, i64 0, i32 44, i64 1
  %83 = load i32, ptr %arrayidx119, align 4
  %heap_max121 = getelementptr inbounds %struct.internal_state, ptr %82, i64 0, i32 46
  %84 = load i32, ptr %heap_max121, align 8
  %dec122 = add nsw i32 %84, -1
  store i32 %dec122, ptr %heap_max121, align 8
  %idxprom123 = sext i32 %dec122 to i64
  %arrayidx124 = getelementptr inbounds %struct.internal_state, ptr %82, i64 0, i32 44, i64 %idxprom123
  store i32 %83, ptr %arrayidx124, align 4
  %85 = load ptr, ptr %s.addr, align 8
  %86 = load ptr, ptr %desc.addr, align 8
  call void @gen_bitlen(ptr noundef %85, ptr noundef %86)
  %87 = load ptr, ptr %tree, align 8
  %88 = load i32, ptr %max_code, align 4
  %bl_count = getelementptr inbounds %struct.internal_state, ptr %85, i64 0, i32 43
  call void @gen_codes(ptr noundef %87, i32 noundef %88, ptr noundef nonnull %bl_count)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @build_bl_tree(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %max_blindex = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 37
  %max_code = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 40, i32 1
  %0 = load i32, ptr %max_code, align 8
  call void @scan_tree(ptr noundef %s, ptr noundef nonnull %dyn_ltree, i32 noundef %0)
  %dyn_dtree = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 38
  %max_code2 = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 41, i32 1
  %1 = load i32, ptr %max_code2, align 8
  call void @scan_tree(ptr noundef %s, ptr noundef nonnull %dyn_dtree, i32 noundef %1)
  %2 = load ptr, ptr %s.addr, align 8
  %bl_desc = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 42
  call void @build_tree(ptr noundef %2, ptr noundef nonnull %bl_desc)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 18, %entry ], [ %dec, %for.inc ]
  store i32 %storemerge, ptr %max_blindex, align 4
  %cmp = icmp sgt i32 %storemerge, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %s.addr, align 8
  %4 = load i32, ptr %max_blindex, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [19 x i8], ptr @bl_order, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %idxprom3 = zext i8 %5 to i64
  %dl = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 39, i64 %idxprom3, i32 1
  %6 = load i16, ptr %dl, align 2
  %cmp5.not = icmp eq i16 %6, 0
  br i1 %cmp5.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %max_blindex, align 4
  %dec = add nsw i32 %7, -1
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.body, %for.cond
  %8 = load i32, ptr %max_blindex, align 4
  %9 = mul i32 %8, 3
  %add9 = add i32 %9, 17
  %conv10 = sext i32 %add9 to i64
  %10 = load ptr, ptr %s.addr, align 8
  %opt_len = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 52
  %11 = load i64, ptr %opt_len, align 8
  %add11 = add i64 %11, %conv10
  store i64 %add11, ptr %opt_len, align 8
  %12 = load i32, ptr %max_blindex, align 4
  ret i32 %12
}

; Function Attrs: nounwind ssp uwtable
define internal void @compress_block(ptr noundef %s, ptr noundef %ltree, ptr noundef %dtree) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %ltree.addr = alloca ptr, align 8
  %dtree.addr = alloca ptr, align 8
  %dist = alloca i32, align 4
  %lc = alloca i32, align 4
  %lx = alloca i32, align 4
  %code = alloca i32, align 4
  %extra = alloca i32, align 4
  %len = alloca i32, align 4
  %val = alloca i32, align 4
  %len62 = alloca i32, align 4
  %val74 = alloca i32, align 4
  %len144 = alloca i32, align 4
  %val150 = alloca i32, align 4
  %len211 = alloca i32, align 4
  %val221 = alloca i32, align 4
  %len287 = alloca i32, align 4
  %val293 = alloca i32, align 4
  %len349 = alloca i32, align 4
  %val358 = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store ptr %ltree, ptr %ltree.addr, align 8
  store ptr %dtree, ptr %dtree.addr, align 8
  store i32 0, ptr %lx, align 4
  %last_lit = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 50
  %0 = load i32, ptr %last_lit, align 4
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end348, label %do.body

do.body:                                          ; preds = %entry, %do.cond
  %1 = load ptr, ptr %s.addr, align 8
  %d_buf = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 51
  %2 = load ptr, ptr %d_buf, align 8
  %3 = load i32, ptr %lx, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds i16, ptr %2, i64 %idxprom
  %4 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %4 to i32
  store i32 %conv, ptr %dist, align 4
  %5 = load ptr, ptr %s.addr, align 8
  %l_buf = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 48
  %6 = load ptr, ptr %l_buf, align 8
  %7 = load i32, ptr %lx, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %lx, align 4
  %idxprom1 = zext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %6, i64 %idxprom1
  %8 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %8 to i32
  store i32 %conv3, ptr %lc, align 4
  %9 = load i32, ptr %dist, align 4
  %cmp4 = icmp eq i32 %9, 0
  br i1 %cmp4, label %if.then6, label %if.else58

if.then6:                                         ; preds = %do.body
  %10 = load ptr, ptr %ltree.addr, align 8
  %11 = load i32, ptr %lc, align 4
  %idxprom7 = sext i32 %11 to i64
  %dl = getelementptr inbounds %struct.ct_data_s, ptr %10, i64 %idxprom7, i32 1
  %12 = load i16, ptr %dl, align 2
  %conv9 = zext i16 %12 to i32
  store i32 %conv9, ptr %len, align 4
  %13 = load ptr, ptr %s.addr, align 8
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 57
  %14 = load i32, ptr %bi_valid, align 4
  %sub = sub nsw i32 16, %conv9
  %cmp10 = icmp sgt i32 %14, %sub
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then6
  %15 = load ptr, ptr %ltree.addr, align 8
  %16 = load i32, ptr %lc, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds %struct.ct_data_s, ptr %15, i64 %idxprom13
  %17 = load i16, ptr %arrayidx14, align 2
  %conv15 = zext i16 %17 to i32
  store i32 %conv15, ptr %val, align 4
  %18 = load ptr, ptr %s.addr, align 8
  %bi_valid16 = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 57
  %19 = load i32, ptr %bi_valid16, align 4
  %shl = shl i32 %conv15, %19
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 56
  %20 = load i16, ptr %bi_buf, align 8
  %21 = trunc i32 %shl to i16
  %conv18 = or i16 %20, %21
  store i16 %conv18, ptr %bi_buf, align 8
  %22 = load ptr, ptr %s.addr, align 8
  %bi_buf19 = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 56
  %23 = load i16, ptr %bi_buf19, align 8
  %conv21 = trunc i16 %23 to i8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %pending_buf, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 5
  %25 = load i32, ptr %pending, align 8
  %inc22 = add i32 %25, 1
  store i32 %inc22, ptr %pending, align 8
  %idxprom23 = zext i32 %25 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %24, i64 %idxprom23
  store i8 %conv21, ptr %arrayidx24, align 1
  %26 = load ptr, ptr %s.addr, align 8
  %bi_buf25 = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 56
  %27 = load i16, ptr %bi_buf25, align 8
  %28 = lshr i16 %27, 8
  %conv27 = trunc i16 %28 to i8
  %pending_buf28 = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 2
  %29 = load ptr, ptr %pending_buf28, align 8
  %30 = load ptr, ptr %s.addr, align 8
  %pending29 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 5
  %31 = load i32, ptr %pending29, align 8
  %inc30 = add i32 %31, 1
  store i32 %inc30, ptr %pending29, align 8
  %idxprom31 = zext i32 %31 to i64
  %arrayidx32 = getelementptr inbounds i8, ptr %29, i64 %idxprom31
  store i8 %conv27, ptr %arrayidx32, align 1
  %32 = load i32, ptr %val, align 4
  %conv34 = and i32 %32, 65535
  %33 = load ptr, ptr %s.addr, align 8
  %bi_valid35 = getelementptr inbounds %struct.internal_state, ptr %33, i64 0, i32 57
  %34 = load i32, ptr %bi_valid35, align 4
  %sub37 = sub i32 16, %34
  %shr38 = lshr i32 %conv34, %sub37
  %conv39 = trunc i32 %shr38 to i16
  %bi_buf40 = getelementptr inbounds %struct.internal_state, ptr %33, i64 0, i32 56
  store i16 %conv39, ptr %bi_buf40, align 8
  %35 = load i32, ptr %len, align 4
  %sub42 = add i32 %35, -16
  %36 = load ptr, ptr %s.addr, align 8
  %bi_valid43 = getelementptr inbounds %struct.internal_state, ptr %36, i64 0, i32 57
  %37 = load i32, ptr %bi_valid43, align 4
  %add = add i32 %sub42, %37
  store i32 %add, ptr %bi_valid43, align 4
  br label %do.cond

if.else:                                          ; preds = %if.then6
  %38 = load ptr, ptr %ltree.addr, align 8
  %39 = load i32, ptr %lc, align 4
  %idxprom46 = sext i32 %39 to i64
  %arrayidx47 = getelementptr inbounds %struct.ct_data_s, ptr %38, i64 %idxprom46
  %40 = load i16, ptr %arrayidx47, align 2
  %conv49 = zext i16 %40 to i32
  %41 = load ptr, ptr %s.addr, align 8
  %bi_valid50 = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 57
  %42 = load i32, ptr %bi_valid50, align 4
  %shl51 = shl i32 %conv49, %42
  %bi_buf52 = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 56
  %43 = load i16, ptr %bi_buf52, align 8
  %44 = trunc i32 %shl51 to i16
  %conv55 = or i16 %43, %44
  store i16 %conv55, ptr %bi_buf52, align 8
  %45 = load i32, ptr %len, align 4
  %46 = load ptr, ptr %s.addr, align 8
  %bi_valid56 = getelementptr inbounds %struct.internal_state, ptr %46, i64 0, i32 57
  %47 = load i32, ptr %bi_valid56, align 4
  %add57 = add nsw i32 %47, %45
  store i32 %add57, ptr %bi_valid56, align 4
  br label %do.cond

if.else58:                                        ; preds = %do.body
  %48 = load i32, ptr %lc, align 4
  %idxprom59 = sext i32 %48 to i64
  %arrayidx60 = getelementptr inbounds [256 x i8], ptr @_length_code, i64 0, i64 %idxprom59
  %49 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %49 to i32
  store i32 %conv61, ptr %code, align 4
  %50 = load ptr, ptr %ltree.addr, align 8
  %add64 = add nuw nsw i32 %conv61, 257
  %idxprom65 = zext i32 %add64 to i64
  %dl67 = getelementptr inbounds %struct.ct_data_s, ptr %50, i64 %idxprom65, i32 1
  %51 = load i16, ptr %dl67, align 2
  %conv68 = zext i16 %51 to i32
  store i32 %conv68, ptr %len62, align 4
  %52 = load ptr, ptr %s.addr, align 8
  %bi_valid69 = getelementptr inbounds %struct.internal_state, ptr %52, i64 0, i32 57
  %53 = load i32, ptr %bi_valid69, align 4
  %sub70 = sub nsw i32 16, %conv68
  %cmp71 = icmp sgt i32 %53, %sub70
  br i1 %cmp71, label %if.then73, label %if.else120

if.then73:                                        ; preds = %if.else58
  %54 = load ptr, ptr %ltree.addr, align 8
  %55 = load i32, ptr %code, align 4
  %add76 = add i32 %55, 257
  %idxprom77 = zext i32 %add76 to i64
  %arrayidx78 = getelementptr inbounds %struct.ct_data_s, ptr %54, i64 %idxprom77
  %56 = load i16, ptr %arrayidx78, align 2
  %conv80 = zext i16 %56 to i32
  store i32 %conv80, ptr %val74, align 4
  %57 = load ptr, ptr %s.addr, align 8
  %bi_valid81 = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 57
  %58 = load i32, ptr %bi_valid81, align 4
  %shl82 = shl i32 %conv80, %58
  %bi_buf83 = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 56
  %59 = load i16, ptr %bi_buf83, align 8
  %60 = trunc i32 %shl82 to i16
  %conv86 = or i16 %59, %60
  store i16 %conv86, ptr %bi_buf83, align 8
  %61 = load ptr, ptr %s.addr, align 8
  %bi_buf87 = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 56
  %62 = load i16, ptr %bi_buf87, align 8
  %conv90 = trunc i16 %62 to i8
  %pending_buf91 = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %pending_buf91, align 8
  %pending92 = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 5
  %64 = load i32, ptr %pending92, align 8
  %inc93 = add i32 %64, 1
  store i32 %inc93, ptr %pending92, align 8
  %idxprom94 = zext i32 %64 to i64
  %arrayidx95 = getelementptr inbounds i8, ptr %63, i64 %idxprom94
  store i8 %conv90, ptr %arrayidx95, align 1
  %65 = load ptr, ptr %s.addr, align 8
  %bi_buf96 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 56
  %66 = load i16, ptr %bi_buf96, align 8
  %67 = lshr i16 %66, 8
  %conv99 = trunc i16 %67 to i8
  %pending_buf100 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 2
  %68 = load ptr, ptr %pending_buf100, align 8
  %69 = load ptr, ptr %s.addr, align 8
  %pending101 = getelementptr inbounds %struct.internal_state, ptr %69, i64 0, i32 5
  %70 = load i32, ptr %pending101, align 8
  %inc102 = add i32 %70, 1
  store i32 %inc102, ptr %pending101, align 8
  %idxprom103 = zext i32 %70 to i64
  %arrayidx104 = getelementptr inbounds i8, ptr %68, i64 %idxprom103
  store i8 %conv99, ptr %arrayidx104, align 1
  %71 = load i32, ptr %val74, align 4
  %conv106 = and i32 %71, 65535
  %72 = load ptr, ptr %s.addr, align 8
  %bi_valid107 = getelementptr inbounds %struct.internal_state, ptr %72, i64 0, i32 57
  %73 = load i32, ptr %bi_valid107, align 4
  %sub109 = sub i32 16, %73
  %shr111 = lshr i32 %conv106, %sub109
  %conv112 = trunc i32 %shr111 to i16
  %bi_buf113 = getelementptr inbounds %struct.internal_state, ptr %72, i64 0, i32 56
  store i16 %conv112, ptr %bi_buf113, align 8
  %74 = load i32, ptr %len62, align 4
  %sub115 = add i32 %74, -16
  %75 = load ptr, ptr %s.addr, align 8
  %bi_valid116 = getelementptr inbounds %struct.internal_state, ptr %75, i64 0, i32 57
  %76 = load i32, ptr %bi_valid116, align 4
  %add118 = add i32 %sub115, %76
  store i32 %add118, ptr %bi_valid116, align 4
  br label %if.end135

if.else120:                                       ; preds = %if.else58
  %77 = load ptr, ptr %ltree.addr, align 8
  %78 = load i32, ptr %code, align 4
  %add122 = add i32 %78, 257
  %idxprom123 = zext i32 %add122 to i64
  %arrayidx124 = getelementptr inbounds %struct.ct_data_s, ptr %77, i64 %idxprom123
  %79 = load i16, ptr %arrayidx124, align 2
  %conv126 = zext i16 %79 to i32
  %80 = load ptr, ptr %s.addr, align 8
  %bi_valid127 = getelementptr inbounds %struct.internal_state, ptr %80, i64 0, i32 57
  %81 = load i32, ptr %bi_valid127, align 4
  %shl128 = shl i32 %conv126, %81
  %bi_buf129 = getelementptr inbounds %struct.internal_state, ptr %80, i64 0, i32 56
  %82 = load i16, ptr %bi_buf129, align 8
  %83 = trunc i32 %shl128 to i16
  %conv132 = or i16 %82, %83
  store i16 %conv132, ptr %bi_buf129, align 8
  %84 = load i32, ptr %len62, align 4
  %85 = load ptr, ptr %s.addr, align 8
  %bi_valid133 = getelementptr inbounds %struct.internal_state, ptr %85, i64 0, i32 57
  %86 = load i32, ptr %bi_valid133, align 4
  %add134 = add nsw i32 %86, %84
  store i32 %add134, ptr %bi_valid133, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.else120, %if.then73
  %87 = load i32, ptr %code, align 4
  %idxprom136 = zext i32 %87 to i64
  %arrayidx137 = getelementptr inbounds [29 x i32], ptr @extra_lbits, i64 0, i64 %idxprom136
  %88 = load i32, ptr %arrayidx137, align 4
  store i32 %88, ptr %extra, align 4
  %89 = add nsw i64 %idxprom136, -28
  %cmp138.not = icmp ult i64 %89, -20
  br i1 %cmp138.not, label %if.end200, label %if.then140

if.then140:                                       ; preds = %if.end135
  %90 = load i32, ptr %code, align 4
  %idxprom141 = zext i32 %90 to i64
  %arrayidx142 = getelementptr inbounds [29 x i32], ptr @base_length, i64 0, i64 %idxprom141
  %91 = load i32, ptr %arrayidx142, align 4
  %92 = load i32, ptr %lc, align 4
  %sub143 = sub nsw i32 %92, %91
  store i32 %sub143, ptr %lc, align 4
  %93 = load i32, ptr %extra, align 4
  store i32 %93, ptr %len144, align 4
  %94 = load ptr, ptr %s.addr, align 8
  %bi_valid145 = getelementptr inbounds %struct.internal_state, ptr %94, i64 0, i32 57
  %95 = load i32, ptr %bi_valid145, align 4
  %sub146 = sub nsw i32 16, %93
  %cmp147 = icmp sgt i32 %95, %sub146
  br i1 %cmp147, label %if.then149, label %if.else190

if.then149:                                       ; preds = %if.then140
  %96 = load i32, ptr %lc, align 4
  store i32 %96, ptr %val150, align 4
  %97 = load ptr, ptr %s.addr, align 8
  %bi_valid151 = getelementptr inbounds %struct.internal_state, ptr %97, i64 0, i32 57
  %98 = load i32, ptr %bi_valid151, align 4
  %shl152 = shl i32 %96, %98
  %bi_buf153 = getelementptr inbounds %struct.internal_state, ptr %97, i64 0, i32 56
  %99 = load i16, ptr %bi_buf153, align 8
  %100 = trunc i32 %shl152 to i16
  %conv156 = or i16 %99, %100
  store i16 %conv156, ptr %bi_buf153, align 8
  %101 = load ptr, ptr %s.addr, align 8
  %bi_buf157 = getelementptr inbounds %struct.internal_state, ptr %101, i64 0, i32 56
  %102 = load i16, ptr %bi_buf157, align 8
  %conv160 = trunc i16 %102 to i8
  %pending_buf161 = getelementptr inbounds %struct.internal_state, ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %pending_buf161, align 8
  %pending162 = getelementptr inbounds %struct.internal_state, ptr %101, i64 0, i32 5
  %104 = load i32, ptr %pending162, align 8
  %inc163 = add i32 %104, 1
  store i32 %inc163, ptr %pending162, align 8
  %idxprom164 = zext i32 %104 to i64
  %arrayidx165 = getelementptr inbounds i8, ptr %103, i64 %idxprom164
  store i8 %conv160, ptr %arrayidx165, align 1
  %105 = load ptr, ptr %s.addr, align 8
  %bi_buf166 = getelementptr inbounds %struct.internal_state, ptr %105, i64 0, i32 56
  %106 = load i16, ptr %bi_buf166, align 8
  %107 = lshr i16 %106, 8
  %conv169 = trunc i16 %107 to i8
  %pending_buf170 = getelementptr inbounds %struct.internal_state, ptr %105, i64 0, i32 2
  %108 = load ptr, ptr %pending_buf170, align 8
  %109 = load ptr, ptr %s.addr, align 8
  %pending171 = getelementptr inbounds %struct.internal_state, ptr %109, i64 0, i32 5
  %110 = load i32, ptr %pending171, align 8
  %inc172 = add i32 %110, 1
  store i32 %inc172, ptr %pending171, align 8
  %idxprom173 = zext i32 %110 to i64
  %arrayidx174 = getelementptr inbounds i8, ptr %108, i64 %idxprom173
  store i8 %conv169, ptr %arrayidx174, align 1
  %111 = load i32, ptr %val150, align 4
  %conv176 = and i32 %111, 65535
  %112 = load ptr, ptr %s.addr, align 8
  %bi_valid177 = getelementptr inbounds %struct.internal_state, ptr %112, i64 0, i32 57
  %113 = load i32, ptr %bi_valid177, align 4
  %sub179 = sub i32 16, %113
  %shr181 = lshr i32 %conv176, %sub179
  %conv182 = trunc i32 %shr181 to i16
  %bi_buf183 = getelementptr inbounds %struct.internal_state, ptr %112, i64 0, i32 56
  store i16 %conv182, ptr %bi_buf183, align 8
  %114 = load i32, ptr %len144, align 4
  %sub185 = add i32 %114, -16
  %115 = load ptr, ptr %s.addr, align 8
  %bi_valid186 = getelementptr inbounds %struct.internal_state, ptr %115, i64 0, i32 57
  %116 = load i32, ptr %bi_valid186, align 4
  %add188 = add i32 %sub185, %116
  store i32 %add188, ptr %bi_valid186, align 4
  br label %if.end200

if.else190:                                       ; preds = %if.then140
  %117 = load i32, ptr %lc, align 4
  %118 = load ptr, ptr %s.addr, align 8
  %bi_valid191 = getelementptr inbounds %struct.internal_state, ptr %118, i64 0, i32 57
  %119 = load i32, ptr %bi_valid191, align 4
  %shl192 = shl i32 %117, %119
  %bi_buf193 = getelementptr inbounds %struct.internal_state, ptr %118, i64 0, i32 56
  %120 = load i16, ptr %bi_buf193, align 8
  %121 = trunc i32 %shl192 to i16
  %conv196 = or i16 %120, %121
  store i16 %conv196, ptr %bi_buf193, align 8
  %122 = load i32, ptr %len144, align 4
  %123 = load ptr, ptr %s.addr, align 8
  %bi_valid197 = getelementptr inbounds %struct.internal_state, ptr %123, i64 0, i32 57
  %124 = load i32, ptr %bi_valid197, align 4
  %add198 = add nsw i32 %124, %122
  store i32 %add198, ptr %bi_valid197, align 4
  br label %if.end200

if.end200:                                        ; preds = %if.then149, %if.else190, %if.end135
  %125 = load i32, ptr %dist, align 4
  %dec = add i32 %125, -1
  store i32 %dec, ptr %dist, align 4
  %cmp201 = icmp ult i32 %dec, 256
  %126 = load i32, ptr %dist, align 4
  %127 = load i32, ptr %dist, align 4
  %shr206 = lshr i32 %127, 7
  %add207 = add nuw nsw i32 %shr206, 256
  %idxprom203.pn.in = select i1 %cmp201, i32 %126, i32 %add207
  %idxprom203.pn = zext i32 %idxprom203.pn.in to i64
  %cond.in.in = getelementptr inbounds [512 x i8], ptr @_dist_code, i64 0, i64 %idxprom203.pn
  %cond.in = load i8, ptr %cond.in.in, align 1
  %cond = zext i8 %cond.in to i32
  store i32 %cond, ptr %code, align 4
  %128 = load ptr, ptr %dtree.addr, align 8
  %idxprom212 = zext i8 %cond.in to i64
  %dl214 = getelementptr inbounds %struct.ct_data_s, ptr %128, i64 %idxprom212, i32 1
  %129 = load i16, ptr %dl214, align 2
  %conv215 = zext i16 %129 to i32
  store i32 %conv215, ptr %len211, align 4
  %130 = load ptr, ptr %s.addr, align 8
  %bi_valid216 = getelementptr inbounds %struct.internal_state, ptr %130, i64 0, i32 57
  %131 = load i32, ptr %bi_valid216, align 4
  %sub217 = sub nsw i32 16, %conv215
  %cmp218 = icmp sgt i32 %131, %sub217
  br i1 %cmp218, label %if.then220, label %if.else265

if.then220:                                       ; preds = %if.end200
  %132 = load ptr, ptr %dtree.addr, align 8
  %133 = load i32, ptr %code, align 4
  %idxprom222 = zext i32 %133 to i64
  %arrayidx223 = getelementptr inbounds %struct.ct_data_s, ptr %132, i64 %idxprom222
  %134 = load i16, ptr %arrayidx223, align 2
  %conv225 = zext i16 %134 to i32
  store i32 %conv225, ptr %val221, align 4
  %135 = load ptr, ptr %s.addr, align 8
  %bi_valid226 = getelementptr inbounds %struct.internal_state, ptr %135, i64 0, i32 57
  %136 = load i32, ptr %bi_valid226, align 4
  %shl227 = shl i32 %conv225, %136
  %bi_buf228 = getelementptr inbounds %struct.internal_state, ptr %135, i64 0, i32 56
  %137 = load i16, ptr %bi_buf228, align 8
  %138 = trunc i32 %shl227 to i16
  %conv231 = or i16 %137, %138
  store i16 %conv231, ptr %bi_buf228, align 8
  %139 = load ptr, ptr %s.addr, align 8
  %bi_buf232 = getelementptr inbounds %struct.internal_state, ptr %139, i64 0, i32 56
  %140 = load i16, ptr %bi_buf232, align 8
  %conv235 = trunc i16 %140 to i8
  %pending_buf236 = getelementptr inbounds %struct.internal_state, ptr %139, i64 0, i32 2
  %141 = load ptr, ptr %pending_buf236, align 8
  %pending237 = getelementptr inbounds %struct.internal_state, ptr %139, i64 0, i32 5
  %142 = load i32, ptr %pending237, align 8
  %inc238 = add i32 %142, 1
  store i32 %inc238, ptr %pending237, align 8
  %idxprom239 = zext i32 %142 to i64
  %arrayidx240 = getelementptr inbounds i8, ptr %141, i64 %idxprom239
  store i8 %conv235, ptr %arrayidx240, align 1
  %143 = load ptr, ptr %s.addr, align 8
  %bi_buf241 = getelementptr inbounds %struct.internal_state, ptr %143, i64 0, i32 56
  %144 = load i16, ptr %bi_buf241, align 8
  %145 = lshr i16 %144, 8
  %conv244 = trunc i16 %145 to i8
  %pending_buf245 = getelementptr inbounds %struct.internal_state, ptr %143, i64 0, i32 2
  %146 = load ptr, ptr %pending_buf245, align 8
  %147 = load ptr, ptr %s.addr, align 8
  %pending246 = getelementptr inbounds %struct.internal_state, ptr %147, i64 0, i32 5
  %148 = load i32, ptr %pending246, align 8
  %inc247 = add i32 %148, 1
  store i32 %inc247, ptr %pending246, align 8
  %idxprom248 = zext i32 %148 to i64
  %arrayidx249 = getelementptr inbounds i8, ptr %146, i64 %idxprom248
  store i8 %conv244, ptr %arrayidx249, align 1
  %149 = load i32, ptr %val221, align 4
  %conv251 = and i32 %149, 65535
  %150 = load ptr, ptr %s.addr, align 8
  %bi_valid252 = getelementptr inbounds %struct.internal_state, ptr %150, i64 0, i32 57
  %151 = load i32, ptr %bi_valid252, align 4
  %sub254 = sub i32 16, %151
  %shr256 = lshr i32 %conv251, %sub254
  %conv257 = trunc i32 %shr256 to i16
  %bi_buf258 = getelementptr inbounds %struct.internal_state, ptr %150, i64 0, i32 56
  store i16 %conv257, ptr %bi_buf258, align 8
  %152 = load i32, ptr %len211, align 4
  %sub260 = add i32 %152, -16
  %153 = load ptr, ptr %s.addr, align 8
  %bi_valid261 = getelementptr inbounds %struct.internal_state, ptr %153, i64 0, i32 57
  %154 = load i32, ptr %bi_valid261, align 4
  %add263 = add i32 %sub260, %154
  store i32 %add263, ptr %bi_valid261, align 4
  br label %if.end278

if.else265:                                       ; preds = %if.end200
  %155 = load ptr, ptr %dtree.addr, align 8
  %156 = load i32, ptr %code, align 4
  %idxprom266 = zext i32 %156 to i64
  %arrayidx267 = getelementptr inbounds %struct.ct_data_s, ptr %155, i64 %idxprom266
  %157 = load i16, ptr %arrayidx267, align 2
  %conv269 = zext i16 %157 to i32
  %158 = load ptr, ptr %s.addr, align 8
  %bi_valid270 = getelementptr inbounds %struct.internal_state, ptr %158, i64 0, i32 57
  %159 = load i32, ptr %bi_valid270, align 4
  %shl271 = shl i32 %conv269, %159
  %bi_buf272 = getelementptr inbounds %struct.internal_state, ptr %158, i64 0, i32 56
  %160 = load i16, ptr %bi_buf272, align 8
  %161 = trunc i32 %shl271 to i16
  %conv275 = or i16 %160, %161
  store i16 %conv275, ptr %bi_buf272, align 8
  %162 = load i32, ptr %len211, align 4
  %163 = load ptr, ptr %s.addr, align 8
  %bi_valid276 = getelementptr inbounds %struct.internal_state, ptr %163, i64 0, i32 57
  %164 = load i32, ptr %bi_valid276, align 4
  %add277 = add nsw i32 %164, %162
  store i32 %add277, ptr %bi_valid276, align 4
  br label %if.end278

if.end278:                                        ; preds = %if.else265, %if.then220
  %165 = load i32, ptr %code, align 4
  %idxprom279 = zext i32 %165 to i64
  %arrayidx280 = getelementptr inbounds [30 x i32], ptr @extra_dbits, i64 0, i64 %idxprom279
  %166 = load i32, ptr %arrayidx280, align 4
  store i32 %166, ptr %extra, align 4
  %cmp281.not = icmp ult i32 %165, 4
  br i1 %cmp281.not, label %do.cond, label %if.then283

if.then283:                                       ; preds = %if.end278
  %167 = load i32, ptr %code, align 4
  %idxprom284 = zext i32 %167 to i64
  %arrayidx285 = getelementptr inbounds [30 x i32], ptr @base_dist, i64 0, i64 %idxprom284
  %168 = load i32, ptr %arrayidx285, align 4
  %169 = load i32, ptr %dist, align 4
  %sub286 = sub i32 %169, %168
  store i32 %sub286, ptr %dist, align 4
  %170 = load i32, ptr %extra, align 4
  store i32 %170, ptr %len287, align 4
  %171 = load ptr, ptr %s.addr, align 8
  %bi_valid288 = getelementptr inbounds %struct.internal_state, ptr %171, i64 0, i32 57
  %172 = load i32, ptr %bi_valid288, align 4
  %sub289 = sub nsw i32 16, %170
  %cmp290 = icmp sgt i32 %172, %sub289
  br i1 %cmp290, label %if.then292, label %if.else333

if.then292:                                       ; preds = %if.then283
  %173 = load i32, ptr %dist, align 4
  store i32 %173, ptr %val293, align 4
  %174 = load ptr, ptr %s.addr, align 8
  %bi_valid294 = getelementptr inbounds %struct.internal_state, ptr %174, i64 0, i32 57
  %175 = load i32, ptr %bi_valid294, align 4
  %shl295 = shl i32 %173, %175
  %bi_buf296 = getelementptr inbounds %struct.internal_state, ptr %174, i64 0, i32 56
  %176 = load i16, ptr %bi_buf296, align 8
  %177 = trunc i32 %shl295 to i16
  %conv299 = or i16 %176, %177
  store i16 %conv299, ptr %bi_buf296, align 8
  %178 = load ptr, ptr %s.addr, align 8
  %bi_buf300 = getelementptr inbounds %struct.internal_state, ptr %178, i64 0, i32 56
  %179 = load i16, ptr %bi_buf300, align 8
  %conv303 = trunc i16 %179 to i8
  %pending_buf304 = getelementptr inbounds %struct.internal_state, ptr %178, i64 0, i32 2
  %180 = load ptr, ptr %pending_buf304, align 8
  %pending305 = getelementptr inbounds %struct.internal_state, ptr %178, i64 0, i32 5
  %181 = load i32, ptr %pending305, align 8
  %inc306 = add i32 %181, 1
  store i32 %inc306, ptr %pending305, align 8
  %idxprom307 = zext i32 %181 to i64
  %arrayidx308 = getelementptr inbounds i8, ptr %180, i64 %idxprom307
  store i8 %conv303, ptr %arrayidx308, align 1
  %182 = load ptr, ptr %s.addr, align 8
  %bi_buf309 = getelementptr inbounds %struct.internal_state, ptr %182, i64 0, i32 56
  %183 = load i16, ptr %bi_buf309, align 8
  %184 = lshr i16 %183, 8
  %conv312 = trunc i16 %184 to i8
  %pending_buf313 = getelementptr inbounds %struct.internal_state, ptr %182, i64 0, i32 2
  %185 = load ptr, ptr %pending_buf313, align 8
  %186 = load ptr, ptr %s.addr, align 8
  %pending314 = getelementptr inbounds %struct.internal_state, ptr %186, i64 0, i32 5
  %187 = load i32, ptr %pending314, align 8
  %inc315 = add i32 %187, 1
  store i32 %inc315, ptr %pending314, align 8
  %idxprom316 = zext i32 %187 to i64
  %arrayidx317 = getelementptr inbounds i8, ptr %185, i64 %idxprom316
  store i8 %conv312, ptr %arrayidx317, align 1
  %188 = load i32, ptr %val293, align 4
  %conv319 = and i32 %188, 65535
  %189 = load ptr, ptr %s.addr, align 8
  %bi_valid320 = getelementptr inbounds %struct.internal_state, ptr %189, i64 0, i32 57
  %190 = load i32, ptr %bi_valid320, align 4
  %sub322 = sub i32 16, %190
  %shr324 = lshr i32 %conv319, %sub322
  %conv325 = trunc i32 %shr324 to i16
  %bi_buf326 = getelementptr inbounds %struct.internal_state, ptr %189, i64 0, i32 56
  store i16 %conv325, ptr %bi_buf326, align 8
  %191 = load i32, ptr %len287, align 4
  %sub328 = add i32 %191, -16
  %192 = load ptr, ptr %s.addr, align 8
  %bi_valid329 = getelementptr inbounds %struct.internal_state, ptr %192, i64 0, i32 57
  %193 = load i32, ptr %bi_valid329, align 4
  %add331 = add i32 %sub328, %193
  store i32 %add331, ptr %bi_valid329, align 4
  br label %do.cond

if.else333:                                       ; preds = %if.then283
  %194 = load i32, ptr %dist, align 4
  %195 = load ptr, ptr %s.addr, align 8
  %bi_valid334 = getelementptr inbounds %struct.internal_state, ptr %195, i64 0, i32 57
  %196 = load i32, ptr %bi_valid334, align 4
  %shl335 = shl i32 %194, %196
  %bi_buf336 = getelementptr inbounds %struct.internal_state, ptr %195, i64 0, i32 56
  %197 = load i16, ptr %bi_buf336, align 8
  %198 = trunc i32 %shl335 to i16
  %conv339 = or i16 %197, %198
  store i16 %conv339, ptr %bi_buf336, align 8
  %199 = load i32, ptr %len287, align 4
  %200 = load ptr, ptr %s.addr, align 8
  %bi_valid340 = getelementptr inbounds %struct.internal_state, ptr %200, i64 0, i32 57
  %201 = load i32, ptr %bi_valid340, align 4
  %add341 = add nsw i32 %201, %199
  store i32 %add341, ptr %bi_valid340, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.else, %if.then12, %if.then292, %if.else333, %if.end278
  %202 = load i32, ptr %lx, align 4
  %203 = load ptr, ptr %s.addr, align 8
  %last_lit345 = getelementptr inbounds %struct.internal_state, ptr %203, i64 0, i32 50
  %204 = load i32, ptr %last_lit345, align 4
  %cmp346 = icmp ult i32 %202, %204
  br i1 %cmp346, label %do.body, label %if.end348, !llvm.loop !18

if.end348:                                        ; preds = %do.cond, %entry
  %205 = load ptr, ptr %ltree.addr, align 8
  %dl351 = getelementptr inbounds %struct.ct_data_s, ptr %205, i64 256, i32 1
  %206 = load i16, ptr %dl351, align 2
  %conv352 = zext i16 %206 to i32
  store i32 %conv352, ptr %len349, align 4
  %207 = load ptr, ptr %s.addr, align 8
  %bi_valid353 = getelementptr inbounds %struct.internal_state, ptr %207, i64 0, i32 57
  %208 = load i32, ptr %bi_valid353, align 4
  %sub354 = sub nsw i32 16, %conv352
  %cmp355 = icmp sgt i32 %208, %sub354
  br i1 %cmp355, label %if.then357, label %if.else401

if.then357:                                       ; preds = %if.end348
  %209 = load ptr, ptr %ltree.addr, align 8
  %arrayidx359 = getelementptr inbounds %struct.ct_data_s, ptr %209, i64 256
  %210 = load i16, ptr %arrayidx359, align 2
  %conv361 = zext i16 %210 to i32
  store i32 %conv361, ptr %val358, align 4
  %211 = load ptr, ptr %s.addr, align 8
  %bi_valid362 = getelementptr inbounds %struct.internal_state, ptr %211, i64 0, i32 57
  %212 = load i32, ptr %bi_valid362, align 4
  %shl363 = shl i32 %conv361, %212
  %bi_buf364 = getelementptr inbounds %struct.internal_state, ptr %211, i64 0, i32 56
  %213 = load i16, ptr %bi_buf364, align 8
  %214 = trunc i32 %shl363 to i16
  %conv367 = or i16 %213, %214
  store i16 %conv367, ptr %bi_buf364, align 8
  %215 = load ptr, ptr %s.addr, align 8
  %bi_buf368 = getelementptr inbounds %struct.internal_state, ptr %215, i64 0, i32 56
  %216 = load i16, ptr %bi_buf368, align 8
  %conv371 = trunc i16 %216 to i8
  %pending_buf372 = getelementptr inbounds %struct.internal_state, ptr %215, i64 0, i32 2
  %217 = load ptr, ptr %pending_buf372, align 8
  %pending373 = getelementptr inbounds %struct.internal_state, ptr %215, i64 0, i32 5
  %218 = load i32, ptr %pending373, align 8
  %inc374 = add i32 %218, 1
  store i32 %inc374, ptr %pending373, align 8
  %idxprom375 = zext i32 %218 to i64
  %arrayidx376 = getelementptr inbounds i8, ptr %217, i64 %idxprom375
  store i8 %conv371, ptr %arrayidx376, align 1
  %219 = load ptr, ptr %s.addr, align 8
  %bi_buf377 = getelementptr inbounds %struct.internal_state, ptr %219, i64 0, i32 56
  %220 = load i16, ptr %bi_buf377, align 8
  %221 = lshr i16 %220, 8
  %conv380 = trunc i16 %221 to i8
  %pending_buf381 = getelementptr inbounds %struct.internal_state, ptr %219, i64 0, i32 2
  %222 = load ptr, ptr %pending_buf381, align 8
  %223 = load ptr, ptr %s.addr, align 8
  %pending382 = getelementptr inbounds %struct.internal_state, ptr %223, i64 0, i32 5
  %224 = load i32, ptr %pending382, align 8
  %inc383 = add i32 %224, 1
  store i32 %inc383, ptr %pending382, align 8
  %idxprom384 = zext i32 %224 to i64
  %arrayidx385 = getelementptr inbounds i8, ptr %222, i64 %idxprom384
  store i8 %conv380, ptr %arrayidx385, align 1
  %225 = load i32, ptr %val358, align 4
  %conv387 = and i32 %225, 65535
  %226 = load ptr, ptr %s.addr, align 8
  %bi_valid388 = getelementptr inbounds %struct.internal_state, ptr %226, i64 0, i32 57
  %227 = load i32, ptr %bi_valid388, align 4
  %sub390 = sub i32 16, %227
  %shr392 = lshr i32 %conv387, %sub390
  %conv393 = trunc i32 %shr392 to i16
  %bi_buf394 = getelementptr inbounds %struct.internal_state, ptr %226, i64 0, i32 56
  store i16 %conv393, ptr %bi_buf394, align 8
  %228 = load i32, ptr %len349, align 4
  %sub396 = add i32 %228, -16
  %229 = load ptr, ptr %s.addr, align 8
  %bi_valid397 = getelementptr inbounds %struct.internal_state, ptr %229, i64 0, i32 57
  %230 = load i32, ptr %bi_valid397, align 4
  %add399 = add i32 %sub396, %230
  store i32 %add399, ptr %bi_valid397, align 4
  br label %if.end413

if.else401:                                       ; preds = %if.end348
  %231 = load ptr, ptr %ltree.addr, align 8
  %arrayidx402 = getelementptr inbounds %struct.ct_data_s, ptr %231, i64 256
  %232 = load i16, ptr %arrayidx402, align 2
  %conv404 = zext i16 %232 to i32
  %233 = load ptr, ptr %s.addr, align 8
  %bi_valid405 = getelementptr inbounds %struct.internal_state, ptr %233, i64 0, i32 57
  %234 = load i32, ptr %bi_valid405, align 4
  %shl406 = shl i32 %conv404, %234
  %bi_buf407 = getelementptr inbounds %struct.internal_state, ptr %233, i64 0, i32 56
  %235 = load i16, ptr %bi_buf407, align 8
  %236 = trunc i32 %shl406 to i16
  %conv410 = or i16 %235, %236
  store i16 %conv410, ptr %bi_buf407, align 8
  %237 = load i32, ptr %len349, align 4
  %238 = load ptr, ptr %s.addr, align 8
  %bi_valid411 = getelementptr inbounds %struct.internal_state, ptr %238, i64 0, i32 57
  %239 = load i32, ptr %bi_valid411, align 4
  %add412 = add nsw i32 %239, %237
  store i32 %add412, ptr %bi_valid411, align 4
  br label %if.end413

if.end413:                                        ; preds = %if.else401, %if.then357
  %240 = load ptr, ptr %ltree.addr, align 8
  %dl415 = getelementptr inbounds %struct.ct_data_s, ptr %240, i64 256, i32 1
  %241 = load i16, ptr %dl415, align 2
  %conv416 = zext i16 %241 to i32
  %242 = load ptr, ptr %s.addr, align 8
  %last_eob_len = getelementptr inbounds %struct.internal_state, ptr %242, i64 0, i32 55
  store i32 %conv416, ptr %last_eob_len, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @send_all_trees(ptr noundef %s, i32 noundef %lcodes, i32 noundef %dcodes, i32 noundef %blcodes) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %lcodes.addr = alloca i32, align 4
  %dcodes.addr = alloca i32, align 4
  %blcodes.addr = alloca i32, align 4
  %rank = alloca i32, align 4
  %len = alloca i32, align 4
  %val = alloca i32, align 4
  %len37 = alloca i32, align 4
  %val43 = alloca i32, align 4
  %len95 = alloca i32, align 4
  %val101 = alloca i32, align 4
  %len155 = alloca i32, align 4
  %val161 = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 %lcodes, ptr %lcodes.addr, align 4
  store i32 %dcodes, ptr %dcodes.addr, align 4
  store i32 %blcodes, ptr %blcodes.addr, align 4
  store i32 5, ptr %len, align 4
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 57
  %0 = load i32, ptr %bi_valid, align 4
  %cmp = icmp sgt i32 %0, 11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %lcodes.addr, align 4
  %sub1 = add nsw i32 %1, -257
  store i32 %sub1, ptr %val, align 4
  %2 = load ptr, ptr %s.addr, align 8
  %bi_valid2 = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 57
  %3 = load i32, ptr %bi_valid2, align 4
  %shl = shl i32 %sub1, %3
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 56
  %4 = load i16, ptr %bi_buf, align 8
  %5 = trunc i32 %shl to i16
  %conv3 = or i16 %4, %5
  store i16 %conv3, ptr %bi_buf, align 8
  %6 = load ptr, ptr %s.addr, align 8
  %bi_buf4 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 56
  %7 = load i16, ptr %bi_buf4, align 8
  %conv6 = trunc i16 %7 to i8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %pending_buf, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 5
  %9 = load i32, ptr %pending, align 8
  %inc = add i32 %9, 1
  store i32 %inc, ptr %pending, align 8
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 %idxprom
  store i8 %conv6, ptr %arrayidx, align 1
  %10 = load ptr, ptr %s.addr, align 8
  %bi_buf7 = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 56
  %11 = load i16, ptr %bi_buf7, align 8
  %12 = lshr i16 %11, 8
  %conv9 = trunc i16 %12 to i8
  %pending_buf10 = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 2
  %13 = load ptr, ptr %pending_buf10, align 8
  %14 = load ptr, ptr %s.addr, align 8
  %pending11 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 5
  %15 = load i32, ptr %pending11, align 8
  %inc12 = add i32 %15, 1
  store i32 %inc12, ptr %pending11, align 8
  %idxprom13 = zext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %13, i64 %idxprom13
  store i8 %conv9, ptr %arrayidx14, align 1
  %16 = load i32, ptr %val, align 4
  %conv16 = and i32 %16, 65535
  %17 = load ptr, ptr %s.addr, align 8
  %bi_valid17 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 57
  %18 = load i32, ptr %bi_valid17, align 4
  %sub19 = sub i32 16, %18
  %shr20 = lshr i32 %conv16, %sub19
  %conv21 = trunc i32 %shr20 to i16
  %bi_buf22 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 56
  store i16 %conv21, ptr %bi_buf22, align 8
  %19 = load i32, ptr %len, align 4
  %sub24 = add i32 %19, -16
  %20 = load ptr, ptr %s.addr, align 8
  %bi_valid25 = getelementptr inbounds %struct.internal_state, ptr %20, i64 0, i32 57
  %21 = load i32, ptr %bi_valid25, align 4
  %add = add i32 %sub24, %21
  store i32 %add, ptr %bi_valid25, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %22 = load i32, ptr %lcodes.addr, align 4
  %sub28 = add i32 %22, 65279
  %23 = load ptr, ptr %s.addr, align 8
  %bi_valid29 = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 57
  %24 = load i32, ptr %bi_valid29, align 4
  %shl30 = shl i32 %sub28, %24
  %bi_buf31 = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 56
  %25 = load i16, ptr %bi_buf31, align 8
  %26 = trunc i32 %shl30 to i16
  %conv34 = or i16 %25, %26
  store i16 %conv34, ptr %bi_buf31, align 8
  %27 = load i32, ptr %len, align 4
  %28 = load ptr, ptr %s.addr, align 8
  %bi_valid35 = getelementptr inbounds %struct.internal_state, ptr %28, i64 0, i32 57
  %29 = load i32, ptr %bi_valid35, align 4
  %add36 = add nsw i32 %29, %27
  store i32 %add36, ptr %bi_valid35, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 5, ptr %len37, align 4
  %30 = load ptr, ptr %s.addr, align 8
  %bi_valid38 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 57
  %31 = load i32, ptr %bi_valid38, align 4
  %cmp40 = icmp sgt i32 %31, 11
  br i1 %cmp40, label %if.then42, label %if.else84

if.then42:                                        ; preds = %if.end
  %32 = load i32, ptr %dcodes.addr, align 4
  %sub44 = add nsw i32 %32, -1
  store i32 %sub44, ptr %val43, align 4
  %33 = load ptr, ptr %s.addr, align 8
  %bi_valid45 = getelementptr inbounds %struct.internal_state, ptr %33, i64 0, i32 57
  %34 = load i32, ptr %bi_valid45, align 4
  %shl46 = shl i32 %sub44, %34
  %bi_buf47 = getelementptr inbounds %struct.internal_state, ptr %33, i64 0, i32 56
  %35 = load i16, ptr %bi_buf47, align 8
  %36 = trunc i32 %shl46 to i16
  %conv50 = or i16 %35, %36
  store i16 %conv50, ptr %bi_buf47, align 8
  %37 = load ptr, ptr %s.addr, align 8
  %bi_buf51 = getelementptr inbounds %struct.internal_state, ptr %37, i64 0, i32 56
  %38 = load i16, ptr %bi_buf51, align 8
  %conv54 = trunc i16 %38 to i8
  %pending_buf55 = getelementptr inbounds %struct.internal_state, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %pending_buf55, align 8
  %pending56 = getelementptr inbounds %struct.internal_state, ptr %37, i64 0, i32 5
  %40 = load i32, ptr %pending56, align 8
  %inc57 = add i32 %40, 1
  store i32 %inc57, ptr %pending56, align 8
  %idxprom58 = zext i32 %40 to i64
  %arrayidx59 = getelementptr inbounds i8, ptr %39, i64 %idxprom58
  store i8 %conv54, ptr %arrayidx59, align 1
  %41 = load ptr, ptr %s.addr, align 8
  %bi_buf60 = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 56
  %42 = load i16, ptr %bi_buf60, align 8
  %43 = lshr i16 %42, 8
  %conv63 = trunc i16 %43 to i8
  %pending_buf64 = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 2
  %44 = load ptr, ptr %pending_buf64, align 8
  %45 = load ptr, ptr %s.addr, align 8
  %pending65 = getelementptr inbounds %struct.internal_state, ptr %45, i64 0, i32 5
  %46 = load i32, ptr %pending65, align 8
  %inc66 = add i32 %46, 1
  store i32 %inc66, ptr %pending65, align 8
  %idxprom67 = zext i32 %46 to i64
  %arrayidx68 = getelementptr inbounds i8, ptr %44, i64 %idxprom67
  store i8 %conv63, ptr %arrayidx68, align 1
  %47 = load i32, ptr %val43, align 4
  %conv70 = and i32 %47, 65535
  %48 = load ptr, ptr %s.addr, align 8
  %bi_valid71 = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 57
  %49 = load i32, ptr %bi_valid71, align 4
  %sub73 = sub i32 16, %49
  %shr75 = lshr i32 %conv70, %sub73
  %conv76 = trunc i32 %shr75 to i16
  %bi_buf77 = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 56
  store i16 %conv76, ptr %bi_buf77, align 8
  %50 = load i32, ptr %len37, align 4
  %sub79 = add i32 %50, -16
  %51 = load ptr, ptr %s.addr, align 8
  %bi_valid80 = getelementptr inbounds %struct.internal_state, ptr %51, i64 0, i32 57
  %52 = load i32, ptr %bi_valid80, align 4
  %add82 = add i32 %sub79, %52
  store i32 %add82, ptr %bi_valid80, align 4
  br label %if.end94

if.else84:                                        ; preds = %if.end
  %53 = load i32, ptr %dcodes.addr, align 4
  %sub85 = add i32 %53, 65535
  %54 = load ptr, ptr %s.addr, align 8
  %bi_valid86 = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 57
  %55 = load i32, ptr %bi_valid86, align 4
  %shl87 = shl i32 %sub85, %55
  %bi_buf88 = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 56
  %56 = load i16, ptr %bi_buf88, align 8
  %57 = trunc i32 %shl87 to i16
  %conv91 = or i16 %56, %57
  store i16 %conv91, ptr %bi_buf88, align 8
  %58 = load i32, ptr %len37, align 4
  %59 = load ptr, ptr %s.addr, align 8
  %bi_valid92 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 57
  %60 = load i32, ptr %bi_valid92, align 4
  %add93 = add nsw i32 %60, %58
  store i32 %add93, ptr %bi_valid92, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.else84, %if.then42
  store i32 4, ptr %len95, align 4
  %61 = load ptr, ptr %s.addr, align 8
  %bi_valid96 = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 57
  %62 = load i32, ptr %bi_valid96, align 4
  %cmp98 = icmp sgt i32 %62, 12
  br i1 %cmp98, label %if.then100, label %if.else142

if.then100:                                       ; preds = %if.end94
  %63 = load i32, ptr %blcodes.addr, align 4
  %sub102 = add nsw i32 %63, -4
  store i32 %sub102, ptr %val101, align 4
  %64 = load ptr, ptr %s.addr, align 8
  %bi_valid103 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 57
  %65 = load i32, ptr %bi_valid103, align 4
  %shl104 = shl i32 %sub102, %65
  %bi_buf105 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 56
  %66 = load i16, ptr %bi_buf105, align 8
  %67 = trunc i32 %shl104 to i16
  %conv108 = or i16 %66, %67
  store i16 %conv108, ptr %bi_buf105, align 8
  %68 = load ptr, ptr %s.addr, align 8
  %bi_buf109 = getelementptr inbounds %struct.internal_state, ptr %68, i64 0, i32 56
  %69 = load i16, ptr %bi_buf109, align 8
  %conv112 = trunc i16 %69 to i8
  %pending_buf113 = getelementptr inbounds %struct.internal_state, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %pending_buf113, align 8
  %pending114 = getelementptr inbounds %struct.internal_state, ptr %68, i64 0, i32 5
  %71 = load i32, ptr %pending114, align 8
  %inc115 = add i32 %71, 1
  store i32 %inc115, ptr %pending114, align 8
  %idxprom116 = zext i32 %71 to i64
  %arrayidx117 = getelementptr inbounds i8, ptr %70, i64 %idxprom116
  store i8 %conv112, ptr %arrayidx117, align 1
  %72 = load ptr, ptr %s.addr, align 8
  %bi_buf118 = getelementptr inbounds %struct.internal_state, ptr %72, i64 0, i32 56
  %73 = load i16, ptr %bi_buf118, align 8
  %74 = lshr i16 %73, 8
  %conv121 = trunc i16 %74 to i8
  %pending_buf122 = getelementptr inbounds %struct.internal_state, ptr %72, i64 0, i32 2
  %75 = load ptr, ptr %pending_buf122, align 8
  %76 = load ptr, ptr %s.addr, align 8
  %pending123 = getelementptr inbounds %struct.internal_state, ptr %76, i64 0, i32 5
  %77 = load i32, ptr %pending123, align 8
  %inc124 = add i32 %77, 1
  store i32 %inc124, ptr %pending123, align 8
  %idxprom125 = zext i32 %77 to i64
  %arrayidx126 = getelementptr inbounds i8, ptr %75, i64 %idxprom125
  store i8 %conv121, ptr %arrayidx126, align 1
  %78 = load i32, ptr %val101, align 4
  %conv128 = and i32 %78, 65535
  %79 = load ptr, ptr %s.addr, align 8
  %bi_valid129 = getelementptr inbounds %struct.internal_state, ptr %79, i64 0, i32 57
  %80 = load i32, ptr %bi_valid129, align 4
  %sub131 = sub i32 16, %80
  %shr133 = lshr i32 %conv128, %sub131
  %conv134 = trunc i32 %shr133 to i16
  %bi_buf135 = getelementptr inbounds %struct.internal_state, ptr %79, i64 0, i32 56
  store i16 %conv134, ptr %bi_buf135, align 8
  %81 = load i32, ptr %len95, align 4
  %sub137 = add i32 %81, -16
  %82 = load ptr, ptr %s.addr, align 8
  %bi_valid138 = getelementptr inbounds %struct.internal_state, ptr %82, i64 0, i32 57
  %83 = load i32, ptr %bi_valid138, align 4
  %add140 = add i32 %sub137, %83
  store i32 %add140, ptr %bi_valid138, align 4
  br label %if.end152

if.else142:                                       ; preds = %if.end94
  %84 = load i32, ptr %blcodes.addr, align 4
  %sub143 = add i32 %84, 65532
  %85 = load ptr, ptr %s.addr, align 8
  %bi_valid144 = getelementptr inbounds %struct.internal_state, ptr %85, i64 0, i32 57
  %86 = load i32, ptr %bi_valid144, align 4
  %shl145 = shl i32 %sub143, %86
  %bi_buf146 = getelementptr inbounds %struct.internal_state, ptr %85, i64 0, i32 56
  %87 = load i16, ptr %bi_buf146, align 8
  %88 = trunc i32 %shl145 to i16
  %conv149 = or i16 %87, %88
  store i16 %conv149, ptr %bi_buf146, align 8
  %89 = load i32, ptr %len95, align 4
  %90 = load ptr, ptr %s.addr, align 8
  %bi_valid150 = getelementptr inbounds %struct.internal_state, ptr %90, i64 0, i32 57
  %91 = load i32, ptr %bi_valid150, align 4
  %add151 = add nsw i32 %91, %89
  store i32 %add151, ptr %bi_valid150, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.else142, %if.then100
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end152
  %storemerge = phi i32 [ 0, %if.end152 ], [ %inc223, %for.inc ]
  store i32 %storemerge, ptr %rank, align 4
  %92 = load i32, ptr %blcodes.addr, align 4
  %cmp153 = icmp slt i32 %storemerge, %92
  br i1 %cmp153, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 3, ptr %len155, align 4
  %93 = load ptr, ptr %s.addr, align 8
  %bi_valid156 = getelementptr inbounds %struct.internal_state, ptr %93, i64 0, i32 57
  %94 = load i32, ptr %bi_valid156, align 4
  %cmp158 = icmp sgt i32 %94, 13
  br i1 %cmp158, label %if.then160, label %if.else206

if.then160:                                       ; preds = %for.body
  %95 = load ptr, ptr %s.addr, align 8
  %96 = load i32, ptr %rank, align 4
  %idxprom162 = sext i32 %96 to i64
  %arrayidx163 = getelementptr inbounds [19 x i8], ptr @bl_order, i64 0, i64 %idxprom162
  %97 = load i8, ptr %arrayidx163, align 1
  %idxprom164 = zext i8 %97 to i64
  %dl = getelementptr inbounds %struct.internal_state, ptr %95, i64 0, i32 39, i64 %idxprom164, i32 1
  %98 = load i16, ptr %dl, align 2
  %conv166 = zext i16 %98 to i32
  store i32 %conv166, ptr %val161, align 4
  %99 = load ptr, ptr %s.addr, align 8
  %bi_valid167 = getelementptr inbounds %struct.internal_state, ptr %99, i64 0, i32 57
  %100 = load i32, ptr %bi_valid167, align 4
  %shl168 = shl i32 %conv166, %100
  %bi_buf169 = getelementptr inbounds %struct.internal_state, ptr %99, i64 0, i32 56
  %101 = load i16, ptr %bi_buf169, align 8
  %102 = trunc i32 %shl168 to i16
  %conv172 = or i16 %101, %102
  store i16 %conv172, ptr %bi_buf169, align 8
  %103 = load ptr, ptr %s.addr, align 8
  %bi_buf173 = getelementptr inbounds %struct.internal_state, ptr %103, i64 0, i32 56
  %104 = load i16, ptr %bi_buf173, align 8
  %conv176 = trunc i16 %104 to i8
  %pending_buf177 = getelementptr inbounds %struct.internal_state, ptr %103, i64 0, i32 2
  %105 = load ptr, ptr %pending_buf177, align 8
  %pending178 = getelementptr inbounds %struct.internal_state, ptr %103, i64 0, i32 5
  %106 = load i32, ptr %pending178, align 8
  %inc179 = add i32 %106, 1
  store i32 %inc179, ptr %pending178, align 8
  %idxprom180 = zext i32 %106 to i64
  %arrayidx181 = getelementptr inbounds i8, ptr %105, i64 %idxprom180
  store i8 %conv176, ptr %arrayidx181, align 1
  %107 = load ptr, ptr %s.addr, align 8
  %bi_buf182 = getelementptr inbounds %struct.internal_state, ptr %107, i64 0, i32 56
  %108 = load i16, ptr %bi_buf182, align 8
  %109 = lshr i16 %108, 8
  %conv185 = trunc i16 %109 to i8
  %pending_buf186 = getelementptr inbounds %struct.internal_state, ptr %107, i64 0, i32 2
  %110 = load ptr, ptr %pending_buf186, align 8
  %111 = load ptr, ptr %s.addr, align 8
  %pending187 = getelementptr inbounds %struct.internal_state, ptr %111, i64 0, i32 5
  %112 = load i32, ptr %pending187, align 8
  %inc188 = add i32 %112, 1
  store i32 %inc188, ptr %pending187, align 8
  %idxprom189 = zext i32 %112 to i64
  %arrayidx190 = getelementptr inbounds i8, ptr %110, i64 %idxprom189
  store i8 %conv185, ptr %arrayidx190, align 1
  %113 = load i32, ptr %val161, align 4
  %conv192 = and i32 %113, 65535
  %114 = load ptr, ptr %s.addr, align 8
  %bi_valid193 = getelementptr inbounds %struct.internal_state, ptr %114, i64 0, i32 57
  %115 = load i32, ptr %bi_valid193, align 4
  %sub195 = sub i32 16, %115
  %shr197 = lshr i32 %conv192, %sub195
  %conv198 = trunc i32 %shr197 to i16
  %bi_buf199 = getelementptr inbounds %struct.internal_state, ptr %114, i64 0, i32 56
  store i16 %conv198, ptr %bi_buf199, align 8
  %116 = load i32, ptr %len155, align 4
  %sub201 = add i32 %116, -16
  %117 = load ptr, ptr %s.addr, align 8
  %bi_valid202 = getelementptr inbounds %struct.internal_state, ptr %117, i64 0, i32 57
  %118 = load i32, ptr %bi_valid202, align 4
  %add204 = add i32 %sub201, %118
  store i32 %add204, ptr %bi_valid202, align 4
  br label %for.inc

if.else206:                                       ; preds = %for.body
  %119 = load ptr, ptr %s.addr, align 8
  %120 = load i32, ptr %rank, align 4
  %idxprom208 = sext i32 %120 to i64
  %arrayidx209 = getelementptr inbounds [19 x i8], ptr @bl_order, i64 0, i64 %idxprom208
  %121 = load i8, ptr %arrayidx209, align 1
  %idxprom210 = zext i8 %121 to i64
  %dl212 = getelementptr inbounds %struct.internal_state, ptr %119, i64 0, i32 39, i64 %idxprom210, i32 1
  %122 = load i16, ptr %dl212, align 2
  %conv213 = zext i16 %122 to i32
  %123 = load ptr, ptr %s.addr, align 8
  %bi_valid214 = getelementptr inbounds %struct.internal_state, ptr %123, i64 0, i32 57
  %124 = load i32, ptr %bi_valid214, align 4
  %shl215 = shl i32 %conv213, %124
  %bi_buf216 = getelementptr inbounds %struct.internal_state, ptr %123, i64 0, i32 56
  %125 = load i16, ptr %bi_buf216, align 8
  %126 = trunc i32 %shl215 to i16
  %conv219 = or i16 %125, %126
  store i16 %conv219, ptr %bi_buf216, align 8
  %127 = load i32, ptr %len155, align 4
  %128 = load ptr, ptr %s.addr, align 8
  %bi_valid220 = getelementptr inbounds %struct.internal_state, ptr %128, i64 0, i32 57
  %129 = load i32, ptr %bi_valid220, align 4
  %add221 = add nsw i32 %129, %127
  store i32 %add221, ptr %bi_valid220, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then160, %if.else206
  %130 = load i32, ptr %rank, align 4
  %inc223 = add nsw i32 %130, 1
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %131 = load ptr, ptr %s.addr, align 8
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %131, i64 0, i32 37
  %132 = load i32, ptr %lcodes.addr, align 4
  %sub224 = add nsw i32 %132, -1
  call void @send_tree(ptr noundef %131, ptr noundef nonnull %dyn_ltree, i32 noundef %sub224)
  %dyn_dtree = getelementptr inbounds %struct.internal_state, ptr %131, i64 0, i32 38
  %133 = load i32, ptr %dcodes.addr, align 4
  %sub226 = add nsw i32 %133, -1
  call void @send_tree(ptr noundef %131, ptr noundef nonnull %dyn_dtree, i32 noundef %sub226)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @bi_windup(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 57
  %0 = load i32, ptr %bi_valid, align 4
  %cmp = icmp sgt i32 %0, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 56
  %2 = load i16, ptr %bi_buf, align 8
  %conv1 = trunc i16 %2 to i8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 2
  %3 = load ptr, ptr %pending_buf, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %pending, align 8
  %inc = add i32 %4, 1
  store i32 %inc, ptr %pending, align 8
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  store i8 %conv1, ptr %arrayidx, align 1
  %5 = load ptr, ptr %s.addr, align 8
  %bi_buf2 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 56
  %6 = load i16, ptr %bi_buf2, align 8
  %7 = lshr i16 %6, 8
  %conv4 = trunc i16 %7 to i8
  %pending_buf5 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 2
  %8 = load ptr, ptr %pending_buf5, align 8
  %9 = load ptr, ptr %s.addr, align 8
  %pending6 = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 5
  %10 = load i32, ptr %pending6, align 8
  %inc7 = add i32 %10, 1
  store i32 %inc7, ptr %pending6, align 8
  %idxprom8 = zext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %8, i64 %idxprom8
  store i8 %conv4, ptr %arrayidx9, align 1
  br label %if.end21

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %s.addr, align 8
  %bi_valid10 = getelementptr inbounds %struct.internal_state, ptr %11, i64 0, i32 57
  %12 = load i32, ptr %bi_valid10, align 4
  %cmp11 = icmp sgt i32 %12, 0
  br i1 %cmp11, label %if.then13, label %if.end21

if.then13:                                        ; preds = %if.else
  %13 = load ptr, ptr %s.addr, align 8
  %bi_buf14 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 56
  %14 = load i16, ptr %bi_buf14, align 8
  %conv15 = trunc i16 %14 to i8
  %pending_buf16 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %pending_buf16, align 8
  %pending17 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 5
  %16 = load i32, ptr %pending17, align 8
  %inc18 = add i32 %16, 1
  store i32 %inc18, ptr %pending17, align 8
  %idxprom19 = zext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %15, i64 %idxprom19
  store i8 %conv15, ptr %arrayidx20, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then13, %if.then
  %17 = load ptr, ptr %s.addr, align 8
  %bi_buf22 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 56
  store i16 0, ptr %bi_buf22, align 8
  %bi_valid23 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 57
  store i32 0, ptr %bi_valid23, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @_tr_tally(ptr noundef %s, i32 noundef %dist, i32 noundef %lc) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %dist.addr = alloca i32, align 4
  %lc.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 %dist, ptr %dist.addr, align 4
  store i32 %lc, ptr %lc.addr, align 4
  %conv = trunc i32 %dist to i16
  %d_buf = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 51
  %0 = load ptr, ptr %d_buf, align 8
  %last_lit = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 50
  %1 = load i32, ptr %last_lit, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 %idxprom
  store i16 %conv, ptr %arrayidx, align 2
  %2 = load i32, ptr %lc.addr, align 4
  %conv1 = trunc i32 %2 to i8
  %3 = load ptr, ptr %s.addr, align 8
  %l_buf = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 48
  %4 = load ptr, ptr %l_buf, align 8
  %last_lit2 = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 50
  %5 = load i32, ptr %last_lit2, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %last_lit2, align 4
  %idxprom3 = zext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 %idxprom3
  store i8 %conv1, ptr %arrayidx4, align 1
  %6 = load i32, ptr %dist.addr, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %s.addr, align 8
  %8 = load i32, ptr %lc.addr, align 4
  %idxprom6 = zext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 37, i64 %idxprom6
  %9 = load i16, ptr %arrayidx7, align 4
  %inc8 = add i16 %9, 1
  store i16 %inc8, ptr %arrayidx7, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %s.addr, align 8
  %matches = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 54
  %11 = load i32, ptr %matches, align 8
  %inc9 = add i32 %11, 1
  store i32 %inc9, ptr %matches, align 8
  %12 = load i32, ptr %dist.addr, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %dist.addr, align 4
  %13 = load ptr, ptr %s.addr, align 8
  %14 = load i32, ptr %lc.addr, align 4
  %idxprom11 = zext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds [256 x i8], ptr @_length_code, i64 0, i64 %idxprom11
  %15 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %15 to i64
  %add14 = add nuw nsw i64 %conv13, 257
  %arrayidx16 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 37, i64 %add14
  %16 = load i16, ptr %arrayidx16, align 4
  %inc18 = add i16 %16, 1
  store i16 %inc18, ptr %arrayidx16, align 4
  %17 = load ptr, ptr %s.addr, align 8
  %18 = load i32, ptr %dist.addr, align 4
  %cmp19 = icmp ult i32 %18, 256
  %19 = load i32, ptr %dist.addr, align 4
  %20 = load i32, ptr %dist.addr, align 4
  %shr = lshr i32 %20, 7
  %add24 = add nuw nsw i32 %shr, 256
  %idxprom21.pn.in = select i1 %cmp19, i32 %19, i32 %add24
  %idxprom21.pn = zext i32 %idxprom21.pn.in to i64
  %cond.in.in = getelementptr inbounds [512 x i8], ptr @_dist_code, i64 0, i64 %idxprom21.pn
  %cond.in = load i8, ptr %cond.in.in, align 1
  %idxprom28 = zext i8 %cond.in to i64
  %arrayidx29 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 38, i64 %idxprom28
  %21 = load i16, ptr %arrayidx29, align 4
  %inc31 = add i16 %21, 1
  store i16 %inc31, ptr %arrayidx29, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load ptr, ptr %s.addr, align 8
  %last_lit32 = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 50
  %23 = load i32, ptr %last_lit32, align 4
  %lit_bufsize = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 49
  %24 = load i32, ptr %lit_bufsize, align 8
  %sub = add i32 %24, -1
  %cmp33 = icmp eq i32 %23, %sub
  %conv34 = zext i1 %cmp33 to i32
  ret i32 %conv34
}

; Function Attrs: nounwind ssp uwtable
define internal void @pqdownheap(ptr noundef %s, ptr noundef %tree, i32 noundef %k) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %tree.addr = alloca ptr, align 8
  %k.addr = alloca i32, align 4
  %v = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store ptr %tree, ptr %tree.addr, align 8
  store i32 %k, ptr %k.addr, align 4
  %idxprom = sext i32 %k to i64
  %arrayidx = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 44, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4
  store i32 %0, ptr %v, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end93, %entry
  %storemerge.in = phi i32 [ %k, %entry ], [ %59, %if.end93 ]
  %storemerge = shl i32 %storemerge.in, 1
  store i32 %storemerge, ptr %j, align 4
  %1 = load ptr, ptr %s.addr, align 8
  %heap_len = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 45
  %2 = load i32, ptr %heap_len, align 4
  %cmp.not = icmp sgt i32 %storemerge, %2
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %j, align 4
  %4 = load ptr, ptr %s.addr, align 8
  %heap_len1 = getelementptr inbounds %struct.internal_state, ptr %4, i64 0, i32 45
  %5 = load i32, ptr %heap_len1, align 4
  %cmp2 = icmp slt i32 %3, %5
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %6 = load ptr, ptr %tree.addr, align 8
  %7 = load ptr, ptr %s.addr, align 8
  %8 = load i32, ptr %j, align 4
  %add = add nsw i32 %8, 1
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 44, i64 %idxprom4
  %9 = load i32, ptr %arrayidx5, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds %struct.ct_data_s, ptr %6, i64 %idxprom6
  %10 = load i16, ptr %arrayidx7, align 2
  %11 = load ptr, ptr %tree.addr, align 8
  %12 = load ptr, ptr %s.addr, align 8
  %13 = load i32, ptr %j, align 4
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds %struct.internal_state, ptr %12, i64 0, i32 44, i64 %idxprom9
  %14 = load i32, ptr %arrayidx10, align 4
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds %struct.ct_data_s, ptr %11, i64 %idxprom11
  %15 = load i16, ptr %arrayidx12, align 2
  %cmp15 = icmp ult i16 %10, %15
  br i1 %cmp15, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %16 = load ptr, ptr %tree.addr, align 8
  %17 = load ptr, ptr %s.addr, align 8
  %18 = load i32, ptr %j, align 4
  %add18 = add nsw i32 %18, 1
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 44, i64 %idxprom19
  %19 = load i32, ptr %arrayidx20, align 4
  %idxprom21 = sext i32 %19 to i64
  %arrayidx22 = getelementptr inbounds %struct.ct_data_s, ptr %16, i64 %idxprom21
  %20 = load i16, ptr %arrayidx22, align 2
  %21 = load ptr, ptr %tree.addr, align 8
  %22 = load ptr, ptr %s.addr, align 8
  %23 = load i32, ptr %j, align 4
  %idxprom26 = sext i32 %23 to i64
  %arrayidx27 = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 44, i64 %idxprom26
  %24 = load i32, ptr %arrayidx27, align 4
  %idxprom28 = sext i32 %24 to i64
  %arrayidx29 = getelementptr inbounds %struct.ct_data_s, ptr %21, i64 %idxprom28
  %25 = load i16, ptr %arrayidx29, align 2
  %cmp32 = icmp eq i16 %20, %25
  br i1 %cmp32, label %land.lhs.true34, label %if.end

land.lhs.true34:                                  ; preds = %lor.lhs.false
  %26 = load ptr, ptr %s.addr, align 8
  %27 = load i32, ptr %j, align 4
  %add36 = add nsw i32 %27, 1
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 44, i64 %idxprom37
  %28 = load i32, ptr %arrayidx38, align 4
  %idxprom39 = sext i32 %28 to i64
  %arrayidx40 = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 47, i64 %idxprom39
  %29 = load i8, ptr %arrayidx40, align 1
  %30 = load ptr, ptr %s.addr, align 8
  %31 = load i32, ptr %j, align 4
  %idxprom44 = sext i32 %31 to i64
  %arrayidx45 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 44, i64 %idxprom44
  %32 = load i32, ptr %arrayidx45, align 4
  %idxprom46 = sext i32 %32 to i64
  %arrayidx47 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 47, i64 %idxprom46
  %33 = load i8, ptr %arrayidx47, align 1
  %cmp49.not = icmp ugt i8 %29, %33
  br i1 %cmp49.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true34, %land.lhs.true
  %34 = load i32, ptr %j, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true34, %lor.lhs.false, %while.body
  %35 = load ptr, ptr %tree.addr, align 8
  %36 = load i32, ptr %v, align 4
  %idxprom51 = sext i32 %36 to i64
  %arrayidx52 = getelementptr inbounds %struct.ct_data_s, ptr %35, i64 %idxprom51
  %37 = load i16, ptr %arrayidx52, align 2
  %38 = load ptr, ptr %s.addr, align 8
  %39 = load i32, ptr %j, align 4
  %idxprom56 = sext i32 %39 to i64
  %arrayidx57 = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 44, i64 %idxprom56
  %40 = load i32, ptr %arrayidx57, align 4
  %idxprom58 = sext i32 %40 to i64
  %arrayidx59 = getelementptr inbounds %struct.ct_data_s, ptr %35, i64 %idxprom58
  %41 = load i16, ptr %arrayidx59, align 2
  %cmp62 = icmp ult i16 %37, %41
  br i1 %cmp62, label %while.end, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %if.end
  %42 = load ptr, ptr %tree.addr, align 8
  %43 = load i32, ptr %v, align 4
  %idxprom65 = sext i32 %43 to i64
  %arrayidx66 = getelementptr inbounds %struct.ct_data_s, ptr %42, i64 %idxprom65
  %44 = load i16, ptr %arrayidx66, align 2
  %45 = load ptr, ptr %s.addr, align 8
  %46 = load i32, ptr %j, align 4
  %idxprom70 = sext i32 %46 to i64
  %arrayidx71 = getelementptr inbounds %struct.internal_state, ptr %45, i64 0, i32 44, i64 %idxprom70
  %47 = load i32, ptr %arrayidx71, align 4
  %idxprom72 = sext i32 %47 to i64
  %arrayidx73 = getelementptr inbounds %struct.ct_data_s, ptr %42, i64 %idxprom72
  %48 = load i16, ptr %arrayidx73, align 2
  %cmp76 = icmp eq i16 %44, %48
  br i1 %cmp76, label %land.lhs.true78, label %if.end93

land.lhs.true78:                                  ; preds = %lor.lhs.false64
  %49 = load ptr, ptr %s.addr, align 8
  %50 = load i32, ptr %v, align 4
  %idxprom80 = sext i32 %50 to i64
  %arrayidx81 = getelementptr inbounds %struct.internal_state, ptr %49, i64 0, i32 47, i64 %idxprom80
  %51 = load i8, ptr %arrayidx81, align 1
  %52 = load i32, ptr %j, align 4
  %idxprom85 = sext i32 %52 to i64
  %arrayidx86 = getelementptr inbounds %struct.internal_state, ptr %49, i64 0, i32 44, i64 %idxprom85
  %53 = load i32, ptr %arrayidx86, align 4
  %idxprom87 = sext i32 %53 to i64
  %arrayidx88 = getelementptr inbounds %struct.internal_state, ptr %49, i64 0, i32 47, i64 %idxprom87
  %54 = load i8, ptr %arrayidx88, align 1
  %cmp90.not = icmp ugt i8 %51, %54
  br i1 %cmp90.not, label %if.end93, label %while.end

if.end93:                                         ; preds = %land.lhs.true78, %lor.lhs.false64
  %55 = load ptr, ptr %s.addr, align 8
  %56 = load i32, ptr %j, align 4
  %idxprom95 = sext i32 %56 to i64
  %arrayidx96 = getelementptr inbounds %struct.internal_state, ptr %55, i64 0, i32 44, i64 %idxprom95
  %57 = load i32, ptr %arrayidx96, align 4
  %58 = load i32, ptr %k.addr, align 4
  %idxprom98 = sext i32 %58 to i64
  %arrayidx99 = getelementptr inbounds %struct.internal_state, ptr %55, i64 0, i32 44, i64 %idxprom98
  store i32 %57, ptr %arrayidx99, align 4
  %59 = load i32, ptr %j, align 4
  store i32 %59, ptr %k.addr, align 4
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %if.end, %land.lhs.true78, %while.cond
  %60 = load i32, ptr %v, align 4
  %61 = load ptr, ptr %s.addr, align 8
  %62 = load i32, ptr %k.addr, align 4
  %idxprom102 = sext i32 %62 to i64
  %arrayidx103 = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 44, i64 %idxprom102
  store i32 %60, ptr %arrayidx103, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @gen_bitlen(ptr noundef %s, ptr noundef %desc) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %desc.addr = alloca ptr, align 8
  %tree = alloca ptr, align 8
  %max_code = alloca i32, align 4
  %stree = alloca ptr, align 8
  %extra = alloca ptr, align 8
  %base = alloca i32, align 4
  %max_length = alloca i32, align 4
  %h = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %bits = alloca i32, align 4
  %xbits = alloca i32, align 4
  %f = alloca i16, align 2
  %overflow = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  %0 = load ptr, ptr %desc, align 8
  store ptr %0, ptr %tree, align 8
  %max_code1 = getelementptr inbounds %struct.tree_desc_s, ptr %desc, i64 0, i32 1
  %1 = load i32, ptr %max_code1, align 8
  store i32 %1, ptr %max_code, align 4
  %stat_desc = getelementptr inbounds %struct.tree_desc_s, ptr %desc, i64 0, i32 2
  %2 = load ptr, ptr %stat_desc, align 8
  %3 = load ptr, ptr %2, align 8
  store ptr %3, ptr %stree, align 8
  %4 = load ptr, ptr %desc.addr, align 8
  %stat_desc2 = getelementptr inbounds %struct.tree_desc_s, ptr %4, i64 0, i32 2
  %5 = load ptr, ptr %stat_desc2, align 8
  %extra_bits = getelementptr inbounds %struct.static_tree_desc_s, ptr %5, i64 0, i32 1
  %6 = load ptr, ptr %extra_bits, align 8
  store ptr %6, ptr %extra, align 8
  %extra_base = getelementptr inbounds %struct.static_tree_desc_s, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %extra_base, align 8
  store i32 %7, ptr %base, align 4
  %8 = load ptr, ptr %desc.addr, align 8
  %stat_desc4 = getelementptr inbounds %struct.tree_desc_s, ptr %8, i64 0, i32 2
  %9 = load ptr, ptr %stat_desc4, align 8
  %max_length5 = getelementptr inbounds %struct.static_tree_desc_s, ptr %9, i64 0, i32 4
  %10 = load i32, ptr %max_length5, align 8
  store i32 %10, ptr %max_length, align 4
  store i32 0, ptr %overflow, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %bits, align 4
  %cmp = icmp slt i32 %storemerge, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %s.addr, align 8
  %12 = load i32, ptr %bits, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds %struct.internal_state, ptr %11, i64 0, i32 43, i64 %idxprom
  store i16 0, ptr %arrayidx, align 2
  %13 = load i32, ptr %bits, align 4
  %inc = add nsw i32 %13, 1
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %tree, align 8
  %15 = load ptr, ptr %s.addr, align 8
  %heap_max = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 46
  %16 = load i32, ptr %heap_max, align 8
  %idxprom6 = sext i32 %16 to i64
  %arrayidx7 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 44, i64 %idxprom6
  %17 = load i32, ptr %arrayidx7, align 4
  %idxprom8 = sext i32 %17 to i64
  %dl = getelementptr inbounds %struct.ct_data_s, ptr %14, i64 %idxprom8, i32 1
  store i16 0, ptr %dl, align 2
  %18 = load ptr, ptr %s.addr, align 8
  %heap_max10 = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 46
  %19 = load i32, ptr %heap_max10, align 8
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc62, %for.end
  %storemerge1.in = phi i32 [ %19, %for.end ], [ %57, %for.inc62 ]
  %storemerge1 = add nsw i32 %storemerge1.in, 1
  store i32 %storemerge1, ptr %h, align 4
  %cmp12 = icmp slt i32 %storemerge1.in, 572
  br i1 %cmp12, label %for.body13, label %for.end64

for.body13:                                       ; preds = %for.cond11
  %20 = load ptr, ptr %s.addr, align 8
  %21 = load i32, ptr %h, align 4
  %idxprom15 = sext i32 %21 to i64
  %arrayidx16 = getelementptr inbounds %struct.internal_state, ptr %20, i64 0, i32 44, i64 %idxprom15
  %22 = load i32, ptr %arrayidx16, align 4
  store i32 %22, ptr %n, align 4
  %23 = load ptr, ptr %tree, align 8
  %idxprom17 = sext i32 %22 to i64
  %dl19 = getelementptr inbounds %struct.ct_data_s, ptr %23, i64 %idxprom17, i32 1
  %24 = load i16, ptr %dl19, align 2
  %idxprom20 = zext i16 %24 to i64
  %dl22 = getelementptr inbounds %struct.ct_data_s, ptr %23, i64 %idxprom20, i32 1
  %25 = load i16, ptr %dl22, align 2
  %conv = zext i16 %25 to i32
  %add23 = add nuw nsw i32 %conv, 1
  store i32 %add23, ptr %bits, align 4
  %26 = load i32, ptr %max_length, align 4
  %cmp24.not = icmp sgt i32 %26, %conv
  br i1 %cmp24.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body13
  %27 = load i32, ptr %max_length, align 4
  store i32 %27, ptr %bits, align 4
  %28 = load i32, ptr %overflow, align 4
  %inc26 = add nsw i32 %28, 1
  store i32 %inc26, ptr %overflow, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body13
  %29 = load i32, ptr %bits, align 4
  %conv27 = trunc i32 %29 to i16
  %30 = load ptr, ptr %tree, align 8
  %31 = load i32, ptr %n, align 4
  %idxprom28 = sext i32 %31 to i64
  %dl30 = getelementptr inbounds %struct.ct_data_s, ptr %30, i64 %idxprom28, i32 1
  store i16 %conv27, ptr %dl30, align 2
  %32 = load i32, ptr %max_code, align 4
  %cmp31 = icmp sgt i32 %31, %32
  br i1 %cmp31, label %for.inc62, label %if.end34

if.end34:                                         ; preds = %if.end
  %33 = load ptr, ptr %s.addr, align 8
  %34 = load i32, ptr %bits, align 4
  %idxprom36 = sext i32 %34 to i64
  %arrayidx37 = getelementptr inbounds %struct.internal_state, ptr %33, i64 0, i32 43, i64 %idxprom36
  %35 = load i16, ptr %arrayidx37, align 2
  %inc38 = add i16 %35, 1
  store i16 %inc38, ptr %arrayidx37, align 2
  store i32 0, ptr %xbits, align 4
  %36 = load i32, ptr %n, align 4
  %37 = load i32, ptr %base, align 4
  %cmp39.not = icmp slt i32 %36, %37
  br i1 %cmp39.not, label %if.end44, label %if.then41

if.then41:                                        ; preds = %if.end34
  %38 = load ptr, ptr %extra, align 8
  %39 = load i32, ptr %n, align 4
  %40 = load i32, ptr %base, align 4
  %sub = sub nsw i32 %39, %40
  %idxprom42 = sext i32 %sub to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %38, i64 %idxprom42
  %41 = load i32, ptr %arrayidx43, align 4
  store i32 %41, ptr %xbits, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end34
  %42 = load ptr, ptr %tree, align 8
  %43 = load i32, ptr %n, align 4
  %idxprom45 = sext i32 %43 to i64
  %arrayidx46 = getelementptr inbounds %struct.ct_data_s, ptr %42, i64 %idxprom45
  %44 = load i16, ptr %arrayidx46, align 2
  store i16 %44, ptr %f, align 2
  %conv47 = zext i16 %44 to i64
  %45 = load i32, ptr %bits, align 4
  %46 = load i32, ptr %xbits, align 4
  %add48 = add nsw i32 %45, %46
  %conv49 = sext i32 %add48 to i64
  %mul = mul nsw i64 %conv47, %conv49
  %47 = load ptr, ptr %s.addr, align 8
  %opt_len = getelementptr inbounds %struct.internal_state, ptr %47, i64 0, i32 52
  %48 = load i64, ptr %opt_len, align 8
  %add50 = add i64 %48, %mul
  store i64 %add50, ptr %opt_len, align 8
  %49 = load ptr, ptr %stree, align 8
  %tobool.not = icmp eq ptr %49, null
  br i1 %tobool.not, label %for.inc62, label %if.then51

if.then51:                                        ; preds = %if.end44
  %50 = load i16, ptr %f, align 2
  %conv52 = zext i16 %50 to i64
  %51 = load ptr, ptr %stree, align 8
  %52 = load i32, ptr %n, align 4
  %idxprom53 = sext i32 %52 to i64
  %dl55 = getelementptr inbounds %struct.ct_data_s, ptr %51, i64 %idxprom53, i32 1
  %53 = load i16, ptr %dl55, align 2
  %conv56 = zext i16 %53 to i32
  %54 = load i32, ptr %xbits, align 4
  %add57 = add nsw i32 %54, %conv56
  %conv58 = sext i32 %add57 to i64
  %mul59 = mul nsw i64 %conv52, %conv58
  %55 = load ptr, ptr %s.addr, align 8
  %static_len = getelementptr inbounds %struct.internal_state, ptr %55, i64 0, i32 53
  %56 = load i64, ptr %static_len, align 8
  %add60 = add i64 %56, %mul59
  store i64 %add60, ptr %static_len, align 8
  br label %for.inc62

for.inc62:                                        ; preds = %if.end44, %if.then51, %if.end
  %57 = load i32, ptr %h, align 4
  br label %for.cond11, !llvm.loop !22

for.end64:                                        ; preds = %for.cond11
  %58 = load i32, ptr %overflow, align 4
  %cmp65 = icmp eq i32 %58, 0
  br i1 %cmp65, label %for.end143, label %do.body

do.body:                                          ; preds = %for.end64, %while.end
  %59 = load i32, ptr %max_length, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %storemerge2.in = phi i32 [ %59, %do.body ], [ %62, %while.body ]
  %storemerge2 = add nsw i32 %storemerge2.in, -1
  store i32 %storemerge2, ptr %bits, align 4
  %60 = load ptr, ptr %s.addr, align 8
  %idxprom71 = sext i32 %storemerge2 to i64
  %arrayidx72 = getelementptr inbounds %struct.internal_state, ptr %60, i64 0, i32 43, i64 %idxprom71
  %61 = load i16, ptr %arrayidx72, align 2
  %cmp74 = icmp eq i16 %61, 0
  br i1 %cmp74, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %62 = load i32, ptr %bits, align 4
  br label %while.cond, !llvm.loop !23

while.end:                                        ; preds = %while.cond
  %63 = load ptr, ptr %s.addr, align 8
  %64 = load i32, ptr %bits, align 4
  %idxprom77 = sext i32 %64 to i64
  %arrayidx78 = getelementptr inbounds %struct.internal_state, ptr %63, i64 0, i32 43, i64 %idxprom77
  %65 = load i16, ptr %arrayidx78, align 2
  %dec79 = add i16 %65, -1
  store i16 %dec79, ptr %arrayidx78, align 2
  %66 = load ptr, ptr %s.addr, align 8
  %67 = load i32, ptr %bits, align 4
  %add81 = add nsw i32 %67, 1
  %idxprom82 = sext i32 %add81 to i64
  %arrayidx83 = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 43, i64 %idxprom82
  %68 = load i16, ptr %arrayidx83, align 2
  %add85 = add i16 %68, 2
  store i16 %add85, ptr %arrayidx83, align 2
  %69 = load ptr, ptr %s.addr, align 8
  %70 = load i32, ptr %max_length, align 4
  %idxprom88 = sext i32 %70 to i64
  %arrayidx89 = getelementptr inbounds %struct.internal_state, ptr %69, i64 0, i32 43, i64 %idxprom88
  %71 = load i16, ptr %arrayidx89, align 2
  %dec90 = add i16 %71, -1
  store i16 %dec90, ptr %arrayidx89, align 2
  %72 = load i32, ptr %overflow, align 4
  %sub91 = add nsw i32 %72, -2
  store i32 %sub91, ptr %overflow, align 4
  %73 = load i32, ptr %overflow, align 4
  %cmp92 = icmp sgt i32 %73, 0
  br i1 %cmp92, label %do.body, label %do.end, !llvm.loop !24

do.end:                                           ; preds = %while.end
  %74 = load i32, ptr %max_length, align 4
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc141, %do.end
  %storemerge3 = phi i32 [ %74, %do.end ], [ %dec142, %for.inc141 ]
  store i32 %storemerge3, ptr %bits, align 4
  %cmp95.not = icmp eq i32 %storemerge3, 0
  br i1 %cmp95.not, label %for.end143, label %for.body97

for.body97:                                       ; preds = %for.cond94
  %75 = load ptr, ptr %s.addr, align 8
  %76 = load i32, ptr %bits, align 4
  %idxprom99 = sext i32 %76 to i64
  %arrayidx100 = getelementptr inbounds %struct.internal_state, ptr %75, i64 0, i32 43, i64 %idxprom99
  %77 = load i16, ptr %arrayidx100, align 2
  %conv101 = zext i16 %77 to i32
  store i32 %conv101, ptr %n, align 4
  br label %while.cond102

while.cond102:                                    ; preds = %while.body105, %if.end138, %for.body97
  %78 = load i32, ptr %n, align 4
  %cmp103.not = icmp eq i32 %78, 0
  br i1 %cmp103.not, label %for.inc141, label %while.body105

while.body105:                                    ; preds = %while.cond102
  %79 = load ptr, ptr %s.addr, align 8
  %80 = load i32, ptr %h, align 4
  %dec107 = add nsw i32 %80, -1
  store i32 %dec107, ptr %h, align 4
  %idxprom108 = sext i32 %dec107 to i64
  %arrayidx109 = getelementptr inbounds %struct.internal_state, ptr %79, i64 0, i32 44, i64 %idxprom108
  %81 = load i32, ptr %arrayidx109, align 4
  store i32 %81, ptr %m, align 4
  %82 = load i32, ptr %max_code, align 4
  %cmp110 = icmp sgt i32 %81, %82
  br i1 %cmp110, label %while.cond102, label %if.end113, !llvm.loop !25

if.end113:                                        ; preds = %while.body105
  %83 = load ptr, ptr %tree, align 8
  %84 = load i32, ptr %m, align 4
  %idxprom114 = sext i32 %84 to i64
  %dl116 = getelementptr inbounds %struct.ct_data_s, ptr %83, i64 %idxprom114, i32 1
  %85 = load i16, ptr %dl116, align 2
  %conv117 = zext i16 %85 to i32
  %86 = load i32, ptr %bits, align 4
  %cmp118.not = icmp eq i32 %86, %conv117
  br i1 %cmp118.not, label %if.end138, label %if.then120

if.then120:                                       ; preds = %if.end113
  %87 = load i32, ptr %bits, align 4
  %conv121 = sext i32 %87 to i64
  %88 = load ptr, ptr %tree, align 8
  %89 = load i32, ptr %m, align 4
  %idxprom122 = sext i32 %89 to i64
  %dl124 = getelementptr inbounds %struct.ct_data_s, ptr %88, i64 %idxprom122, i32 1
  %90 = load i16, ptr %dl124, align 2
  %conv125 = zext i16 %90 to i64
  %sub126 = sub nsw i64 %conv121, %conv125
  %91 = load ptr, ptr %tree, align 8
  %92 = load i32, ptr %m, align 4
  %idxprom127 = sext i32 %92 to i64
  %arrayidx128 = getelementptr inbounds %struct.ct_data_s, ptr %91, i64 %idxprom127
  %93 = load i16, ptr %arrayidx128, align 2
  %conv130 = zext i16 %93 to i64
  %mul131 = mul nsw i64 %sub126, %conv130
  %94 = load ptr, ptr %s.addr, align 8
  %opt_len132 = getelementptr inbounds %struct.internal_state, ptr %94, i64 0, i32 52
  %95 = load i64, ptr %opt_len132, align 8
  %add133 = add i64 %95, %mul131
  store i64 %add133, ptr %opt_len132, align 8
  %96 = load i32, ptr %bits, align 4
  %conv134 = trunc i32 %96 to i16
  %97 = load ptr, ptr %tree, align 8
  %98 = load i32, ptr %m, align 4
  %idxprom135 = sext i32 %98 to i64
  %dl137 = getelementptr inbounds %struct.ct_data_s, ptr %97, i64 %idxprom135, i32 1
  store i16 %conv134, ptr %dl137, align 2
  br label %if.end138

if.end138:                                        ; preds = %if.then120, %if.end113
  %99 = load i32, ptr %n, align 4
  %dec139 = add nsw i32 %99, -1
  store i32 %dec139, ptr %n, align 4
  br label %while.cond102, !llvm.loop !25

for.inc141:                                       ; preds = %while.cond102
  %100 = load i32, ptr %bits, align 4
  %dec142 = add nsw i32 %100, -1
  br label %for.cond94, !llvm.loop !26

for.end143:                                       ; preds = %for.end64, %for.cond94
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @gen_codes(ptr noundef %tree, i32 noundef %max_code, ptr noundef %bl_count) #0 {
entry:
  %tree.addr = alloca ptr, align 8
  %max_code.addr = alloca i32, align 4
  %bl_count.addr = alloca ptr, align 8
  %next_code = alloca [16 x i16], align 2
  %code = alloca i16, align 2
  %bits = alloca i32, align 4
  %n = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %tree, ptr %tree.addr, align 8
  store i32 %max_code, ptr %max_code.addr, align 4
  store ptr %bl_count, ptr %bl_count.addr, align 8
  store i16 0, ptr %code, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 1, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %bits, align 4
  %cmp = icmp slt i32 %storemerge, 16
  br i1 %cmp, label %for.body, label %for.cond5

for.body:                                         ; preds = %for.cond
  %0 = load i16, ptr %code, align 2
  %1 = load ptr, ptr %bl_count.addr, align 8
  %2 = load i32, ptr %bits, align 4
  %sub = add nsw i32 %2, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2
  %add = add i16 %0, %3
  %shl = shl i16 %add, 1
  store i16 %shl, ptr %code, align 2
  %4 = load i32, ptr %bits, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [16 x i16], ptr %next_code, i64 0, i64 %idxprom3
  store i16 %shl, ptr %arrayidx4, align 2
  %5 = load i32, ptr %bits, align 4
  %inc = add nsw i32 %5, 1
  br label %for.cond, !llvm.loop !27

for.cond5:                                        ; preds = %for.cond, %for.inc21
  %storemerge1 = phi i32 [ %inc22, %for.inc21 ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr %n, align 4
  %6 = load i32, ptr %max_code.addr, align 4
  %cmp6.not = icmp sgt i32 %storemerge1, %6
  br i1 %cmp6.not, label %for.end23, label %for.body8

for.body8:                                        ; preds = %for.cond5
  %7 = load ptr, ptr %tree.addr, align 8
  %8 = load i32, ptr %n, align 4
  %idxprom9 = sext i32 %8 to i64
  %dl = getelementptr inbounds %struct.ct_data_s, ptr %7, i64 %idxprom9, i32 1
  %9 = load i16, ptr %dl, align 2
  %conv11 = zext i16 %9 to i32
  store i32 %conv11, ptr %len, align 4
  %cmp12 = icmp eq i16 %9, 0
  br i1 %cmp12, label %for.inc21, label %if.end

if.end:                                           ; preds = %for.body8
  %10 = load i32, ptr %len, align 4
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [16 x i16], ptr %next_code, i64 0, i64 %idxprom14
  %11 = load i16, ptr %arrayidx15, align 2
  %inc16 = add i16 %11, 1
  store i16 %inc16, ptr %arrayidx15, align 2
  %conv17 = zext i16 %11 to i32
  %12 = load i32, ptr %len, align 4
  %call = call i32 @bi_reverse(i32 noundef %conv17, i32 noundef %12)
  %conv18 = trunc i32 %call to i16
  %13 = load ptr, ptr %tree.addr, align 8
  %14 = load i32, ptr %n, align 4
  %idxprom19 = sext i32 %14 to i64
  %arrayidx20 = getelementptr inbounds %struct.ct_data_s, ptr %13, i64 %idxprom19
  store i16 %conv18, ptr %arrayidx20, align 2
  br label %for.inc21

for.inc21:                                        ; preds = %for.body8, %if.end
  %15 = load i32, ptr %n, align 4
  %inc22 = add nsw i32 %15, 1
  br label %for.cond5, !llvm.loop !28

for.end23:                                        ; preds = %for.cond5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @bi_reverse(i32 noundef %code, i32 noundef %len) #0 {
entry:
  %code.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %res = alloca i32, align 4
  store i32 %code, ptr %code.addr, align 4
  store i32 %len, ptr %len.addr, align 4
  store i32 0, ptr %res, align 4
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %0 = load i32, ptr %code.addr, align 4
  %and = and i32 %0, 1
  %1 = load i32, ptr %res, align 4
  %or = or i32 %1, %and
  store i32 %or, ptr %res, align 4
  %shr = lshr i32 %0, 1
  store i32 %shr, ptr %code.addr, align 4
  %shl = shl i32 %or, 1
  store i32 %shl, ptr %res, align 4
  %2 = load i32, ptr %len.addr, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr %len.addr, align 4
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !29

do.end:                                           ; preds = %do.body
  %3 = load i32, ptr %res, align 4
  %shr1 = lshr i32 %3, 1
  ret i32 %shr1
}

; Function Attrs: nounwind ssp uwtable
define internal void @scan_tree(ptr noundef %s, ptr noundef %tree, i32 noundef %max_code) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %tree.addr = alloca ptr, align 8
  %max_code.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %prevlen = alloca i32, align 4
  %curlen = alloca i32, align 4
  %nextlen = alloca i32, align 4
  %count = alloca i32, align 4
  %max_count = alloca i32, align 4
  %min_count = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store ptr %tree, ptr %tree.addr, align 8
  store i32 %max_code, ptr %max_code.addr, align 4
  store i32 -1, ptr %prevlen, align 4
  %dl = getelementptr inbounds %struct.ct_data_s, ptr %tree, i64 0, i32 1
  %0 = load i16, ptr %dl, align 2
  %conv = zext i16 %0 to i32
  store i32 %conv, ptr %nextlen, align 4
  store i32 0, ptr %count, align 4
  store i32 7, ptr %max_count, align 4
  store i32 4, ptr %min_count, align 4
  %cmp = icmp eq i16 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 138, ptr %max_count, align 4
  store i32 3, ptr %min_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %tree.addr, align 8
  %2 = load i32, ptr %max_code.addr, align 4
  %add = add nsw i32 %2, 1
  %idxprom = sext i32 %add to i64
  %dl3 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 %idxprom, i32 1
  store i16 -1, ptr %dl3, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc68, %for.inc ]
  store i32 %storemerge, ptr %n, align 4
  %3 = load i32, ptr %max_code.addr, align 4
  %cmp4.not = icmp sgt i32 %storemerge, %3
  br i1 %cmp4.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %nextlen, align 4
  store i32 %4, ptr %curlen, align 4
  %5 = load ptr, ptr %tree.addr, align 8
  %6 = load i32, ptr %n, align 4
  %add6 = add nsw i32 %6, 1
  %idxprom7 = sext i32 %add6 to i64
  %dl9 = getelementptr inbounds %struct.ct_data_s, ptr %5, i64 %idxprom7, i32 1
  %7 = load i16, ptr %dl9, align 2
  %conv10 = zext i16 %7 to i32
  store i32 %conv10, ptr %nextlen, align 4
  %8 = load i32, ptr %count, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %count, align 4
  %9 = load i32, ptr %max_count, align 4
  %cmp11 = icmp slt i32 %inc, %9
  br i1 %cmp11, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %10 = load i32, ptr %curlen, align 4
  %11 = load i32, ptr %nextlen, align 4
  %cmp13 = icmp eq i32 %10, %11
  br i1 %cmp13, label %for.inc, label %if.else

if.else:                                          ; preds = %land.lhs.true, %for.body
  %12 = load i32, ptr %count, align 4
  %13 = load i32, ptr %min_count, align 4
  %cmp16 = icmp slt i32 %12, %13
  br i1 %cmp16, label %if.then18, label %if.else24

if.then18:                                        ; preds = %if.else
  %14 = load i32, ptr %count, align 4
  %15 = load ptr, ptr %s.addr, align 8
  %16 = load i32, ptr %curlen, align 4
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 39, i64 %idxprom19
  %17 = load i16, ptr %arrayidx20, align 4
  %18 = trunc i32 %14 to i16
  %conv23 = add i16 %17, %18
  store i16 %conv23, ptr %arrayidx20, align 4
  br label %if.end57

if.else24:                                        ; preds = %if.else
  %19 = load i32, ptr %curlen, align 4
  %cmp25.not = icmp eq i32 %19, 0
  br i1 %cmp25.not, label %if.else41, label %if.then27

if.then27:                                        ; preds = %if.else24
  %20 = load i32, ptr %curlen, align 4
  %21 = load i32, ptr %prevlen, align 4
  %cmp28.not = icmp eq i32 %20, %21
  br i1 %cmp28.not, label %if.end36, label %if.then30

if.then30:                                        ; preds = %if.then27
  %22 = load ptr, ptr %s.addr, align 8
  %23 = load i32, ptr %curlen, align 4
  %idxprom32 = sext i32 %23 to i64
  %arrayidx33 = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 39, i64 %idxprom32
  %24 = load i16, ptr %arrayidx33, align 4
  %inc35 = add i16 %24, 1
  store i16 %inc35, ptr %arrayidx33, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %if.then27
  %25 = load ptr, ptr %s.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct.internal_state, ptr %25, i64 0, i32 39, i64 16
  %26 = load i16, ptr %arrayidx38, align 4
  %inc40 = add i16 %26, 1
  store i16 %inc40, ptr %arrayidx38, align 4
  br label %if.end57

if.else41:                                        ; preds = %if.else24
  %27 = load i32, ptr %count, align 4
  %cmp42 = icmp slt i32 %27, 11
  br i1 %cmp42, label %if.then44, label %if.else49

if.then44:                                        ; preds = %if.else41
  %28 = load ptr, ptr %s.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct.internal_state, ptr %28, i64 0, i32 39, i64 17
  %29 = load i16, ptr %arrayidx46, align 4
  %inc48 = add i16 %29, 1
  store i16 %inc48, ptr %arrayidx46, align 4
  br label %if.end57

if.else49:                                        ; preds = %if.else41
  %30 = load ptr, ptr %s.addr, align 8
  %arrayidx51 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 39, i64 18
  %31 = load i16, ptr %arrayidx51, align 4
  %inc53 = add i16 %31, 1
  store i16 %inc53, ptr %arrayidx51, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then18, %if.then44, %if.else49, %if.end36
  store i32 0, ptr %count, align 4
  %32 = load i32, ptr %curlen, align 4
  store i32 %32, ptr %prevlen, align 4
  %33 = load i32, ptr %nextlen, align 4
  %cmp58 = icmp eq i32 %33, 0
  br i1 %cmp58, label %if.end67, label %if.else61

if.else61:                                        ; preds = %if.end57
  %34 = load i32, ptr %curlen, align 4
  %35 = load i32, ptr %nextlen, align 4
  %cmp62 = icmp eq i32 %34, %35
  %. = select i1 %cmp62, i32 6, i32 7
  %.5 = select i1 %cmp62, i32 3, i32 4
  br label %if.end67

if.end67:                                         ; preds = %if.end57, %if.else61
  %storemerge4 = phi i32 [ %., %if.else61 ], [ 138, %if.end57 ]
  %storemerge3 = phi i32 [ %.5, %if.else61 ], [ 3, %if.end57 ]
  store i32 %storemerge4, ptr %max_count, align 4
  store i32 %storemerge3, ptr %min_count, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %if.end67
  %36 = load i32, ptr %n, align 4
  %inc68 = add nsw i32 %36, 1
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @send_tree(ptr noundef %s, ptr noundef %tree, i32 noundef %max_code) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %tree.addr = alloca ptr, align 8
  %max_code.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %prevlen = alloca i32, align 4
  %curlen = alloca i32, align 4
  %nextlen = alloca i32, align 4
  %count = alloca i32, align 4
  %max_count = alloca i32, align 4
  %min_count = alloca i32, align 4
  %len = alloca i32, align 4
  %val = alloca i32, align 4
  %len81 = alloca i32, align 4
  %val92 = alloca i32, align 4
  %len154 = alloca i32, align 4
  %val164 = alloca i32, align 4
  %len222 = alloca i32, align 4
  %val228 = alloca i32, align 4
  %len284 = alloca i32, align 4
  %val294 = alloca i32, align 4
  %len352 = alloca i32, align 4
  %val358 = alloca i32, align 4
  %len411 = alloca i32, align 4
  %val421 = alloca i32, align 4
  %len479 = alloca i32, align 4
  %val485 = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store ptr %tree, ptr %tree.addr, align 8
  store i32 %max_code, ptr %max_code.addr, align 4
  store i32 -1, ptr %prevlen, align 4
  %dl = getelementptr inbounds %struct.ct_data_s, ptr %tree, i64 0, i32 1
  %0 = load i16, ptr %dl, align 2
  %conv = zext i16 %0 to i32
  store i32 %conv, ptr %nextlen, align 4
  store i32 0, ptr %count, align 4
  store i32 7, ptr %max_count, align 4
  store i32 4, ptr %min_count, align 4
  %cmp = icmp eq i16 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 138, ptr %max_count, align 4
  store i32 3, ptr %min_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc551, %for.inc ]
  store i32 %storemerge, ptr %n, align 4
  %1 = load i32, ptr %max_code.addr, align 4
  %cmp2.not = icmp sgt i32 %storemerge, %1
  br i1 %cmp2.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %nextlen, align 4
  store i32 %2, ptr %curlen, align 4
  %3 = load ptr, ptr %tree.addr, align 8
  %4 = load i32, ptr %n, align 4
  %add = add nsw i32 %4, 1
  %idxprom = sext i32 %add to i64
  %dl5 = getelementptr inbounds %struct.ct_data_s, ptr %3, i64 %idxprom, i32 1
  %5 = load i16, ptr %dl5, align 2
  %conv6 = zext i16 %5 to i32
  store i32 %conv6, ptr %nextlen, align 4
  %6 = load i32, ptr %count, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %count, align 4
  %7 = load i32, ptr %max_count, align 4
  %cmp7 = icmp slt i32 %inc, %7
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %8 = load i32, ptr %curlen, align 4
  %9 = load i32, ptr %nextlen, align 4
  %cmp9 = icmp eq i32 %8, %9
  br i1 %cmp9, label %for.inc, label %if.else

if.else:                                          ; preds = %land.lhs.true, %for.body
  %10 = load i32, ptr %count, align 4
  %11 = load i32, ptr %min_count, align 4
  %cmp12 = icmp slt i32 %10, %11
  br i1 %cmp12, label %do.body, label %if.else74

do.body:                                          ; preds = %if.else, %do.cond
  %12 = load ptr, ptr %s.addr, align 8
  %13 = load i32, ptr %curlen, align 4
  %idxprom15 = sext i32 %13 to i64
  %dl17 = getelementptr inbounds %struct.internal_state, ptr %12, i64 0, i32 39, i64 %idxprom15, i32 1
  %14 = load i16, ptr %dl17, align 2
  %conv18 = zext i16 %14 to i32
  store i32 %conv18, ptr %len, align 4
  %15 = load ptr, ptr %s.addr, align 8
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 57
  %16 = load i32, ptr %bi_valid, align 4
  %sub = sub nsw i32 16, %conv18
  %cmp19 = icmp sgt i32 %16, %sub
  br i1 %cmp19, label %if.then21, label %if.else57

if.then21:                                        ; preds = %do.body
  %17 = load ptr, ptr %s.addr, align 8
  %18 = load i32, ptr %curlen, align 4
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 39, i64 %idxprom23
  %19 = load i16, ptr %arrayidx24, align 4
  %conv25 = zext i16 %19 to i32
  store i32 %conv25, ptr %val, align 4
  %20 = load ptr, ptr %s.addr, align 8
  %bi_valid26 = getelementptr inbounds %struct.internal_state, ptr %20, i64 0, i32 57
  %21 = load i32, ptr %bi_valid26, align 4
  %shl = shl i32 %conv25, %21
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %20, i64 0, i32 56
  %22 = load i16, ptr %bi_buf, align 8
  %23 = trunc i32 %shl to i16
  %conv28 = or i16 %22, %23
  store i16 %conv28, ptr %bi_buf, align 8
  %24 = load ptr, ptr %s.addr, align 8
  %bi_buf29 = getelementptr inbounds %struct.internal_state, ptr %24, i64 0, i32 56
  %25 = load i16, ptr %bi_buf29, align 8
  %conv31 = trunc i16 %25 to i8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %pending_buf, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %24, i64 0, i32 5
  %27 = load i32, ptr %pending, align 8
  %inc32 = add i32 %27, 1
  store i32 %inc32, ptr %pending, align 8
  %idxprom33 = zext i32 %27 to i64
  %arrayidx34 = getelementptr inbounds i8, ptr %26, i64 %idxprom33
  store i8 %conv31, ptr %arrayidx34, align 1
  %28 = load ptr, ptr %s.addr, align 8
  %bi_buf35 = getelementptr inbounds %struct.internal_state, ptr %28, i64 0, i32 56
  %29 = load i16, ptr %bi_buf35, align 8
  %30 = lshr i16 %29, 8
  %conv37 = trunc i16 %30 to i8
  %pending_buf38 = getelementptr inbounds %struct.internal_state, ptr %28, i64 0, i32 2
  %31 = load ptr, ptr %pending_buf38, align 8
  %32 = load ptr, ptr %s.addr, align 8
  %pending39 = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 5
  %33 = load i32, ptr %pending39, align 8
  %inc40 = add i32 %33, 1
  store i32 %inc40, ptr %pending39, align 8
  %idxprom41 = zext i32 %33 to i64
  %arrayidx42 = getelementptr inbounds i8, ptr %31, i64 %idxprom41
  store i8 %conv37, ptr %arrayidx42, align 1
  %34 = load i32, ptr %val, align 4
  %conv44 = and i32 %34, 65535
  %35 = load ptr, ptr %s.addr, align 8
  %bi_valid45 = getelementptr inbounds %struct.internal_state, ptr %35, i64 0, i32 57
  %36 = load i32, ptr %bi_valid45, align 4
  %sub47 = sub i32 16, %36
  %shr48 = lshr i32 %conv44, %sub47
  %conv49 = trunc i32 %shr48 to i16
  %bi_buf50 = getelementptr inbounds %struct.internal_state, ptr %35, i64 0, i32 56
  store i16 %conv49, ptr %bi_buf50, align 8
  %37 = load i32, ptr %len, align 4
  %sub52 = add i32 %37, -16
  %38 = load ptr, ptr %s.addr, align 8
  %bi_valid53 = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 57
  %39 = load i32, ptr %bi_valid53, align 4
  %add55 = add i32 %sub52, %39
  store i32 %add55, ptr %bi_valid53, align 4
  br label %do.cond

if.else57:                                        ; preds = %do.body
  %40 = load ptr, ptr %s.addr, align 8
  %41 = load i32, ptr %curlen, align 4
  %idxprom59 = sext i32 %41 to i64
  %arrayidx60 = getelementptr inbounds %struct.internal_state, ptr %40, i64 0, i32 39, i64 %idxprom59
  %42 = load i16, ptr %arrayidx60, align 4
  %conv62 = zext i16 %42 to i32
  %bi_valid63 = getelementptr inbounds %struct.internal_state, ptr %40, i64 0, i32 57
  %43 = load i32, ptr %bi_valid63, align 4
  %shl64 = shl i32 %conv62, %43
  %44 = load ptr, ptr %s.addr, align 8
  %bi_buf65 = getelementptr inbounds %struct.internal_state, ptr %44, i64 0, i32 56
  %45 = load i16, ptr %bi_buf65, align 8
  %46 = trunc i32 %shl64 to i16
  %conv68 = or i16 %45, %46
  store i16 %conv68, ptr %bi_buf65, align 8
  %47 = load i32, ptr %len, align 4
  %48 = load ptr, ptr %s.addr, align 8
  %bi_valid69 = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 57
  %49 = load i32, ptr %bi_valid69, align 4
  %add70 = add nsw i32 %49, %47
  store i32 %add70, ptr %bi_valid69, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.then21, %if.else57
  %50 = load i32, ptr %count, align 4
  %dec = add nsw i32 %50, -1
  store i32 %dec, ptr %count, align 4
  %cmp72.not = icmp eq i32 %dec, 0
  br i1 %cmp72.not, label %if.end540, label %do.body, !llvm.loop !31

if.else74:                                        ; preds = %if.else
  %51 = load i32, ptr %curlen, align 4
  %cmp75.not = icmp eq i32 %51, 0
  br i1 %cmp75.not, label %if.else280, label %if.then77

if.then77:                                        ; preds = %if.else74
  %52 = load i32, ptr %curlen, align 4
  %53 = load i32, ptr %prevlen, align 4
  %cmp78.not = icmp eq i32 %52, %53
  br i1 %cmp78.not, label %if.end153, label %if.then80

if.then80:                                        ; preds = %if.then77
  %54 = load ptr, ptr %s.addr, align 8
  %55 = load i32, ptr %curlen, align 4
  %idxprom83 = sext i32 %55 to i64
  %dl85 = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 39, i64 %idxprom83, i32 1
  %56 = load i16, ptr %dl85, align 2
  %conv86 = zext i16 %56 to i32
  store i32 %conv86, ptr %len81, align 4
  %57 = load ptr, ptr %s.addr, align 8
  %bi_valid87 = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 57
  %58 = load i32, ptr %bi_valid87, align 4
  %sub88 = sub nsw i32 16, %conv86
  %cmp89 = icmp sgt i32 %58, %sub88
  br i1 %cmp89, label %if.then91, label %if.else137

if.then91:                                        ; preds = %if.then80
  %59 = load ptr, ptr %s.addr, align 8
  %60 = load i32, ptr %curlen, align 4
  %idxprom94 = sext i32 %60 to i64
  %arrayidx95 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 39, i64 %idxprom94
  %61 = load i16, ptr %arrayidx95, align 4
  %conv97 = zext i16 %61 to i32
  store i32 %conv97, ptr %val92, align 4
  %62 = load ptr, ptr %s.addr, align 8
  %bi_valid98 = getelementptr inbounds %struct.internal_state, ptr %62, i64 0, i32 57
  %63 = load i32, ptr %bi_valid98, align 4
  %shl99 = shl i32 %conv97, %63
  %bi_buf100 = getelementptr inbounds %struct.internal_state, ptr %62, i64 0, i32 56
  %64 = load i16, ptr %bi_buf100, align 8
  %65 = trunc i32 %shl99 to i16
  %conv103 = or i16 %64, %65
  store i16 %conv103, ptr %bi_buf100, align 8
  %66 = load ptr, ptr %s.addr, align 8
  %bi_buf104 = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 56
  %67 = load i16, ptr %bi_buf104, align 8
  %conv107 = trunc i16 %67 to i8
  %pending_buf108 = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 2
  %68 = load ptr, ptr %pending_buf108, align 8
  %pending109 = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 5
  %69 = load i32, ptr %pending109, align 8
  %inc110 = add i32 %69, 1
  store i32 %inc110, ptr %pending109, align 8
  %idxprom111 = zext i32 %69 to i64
  %arrayidx112 = getelementptr inbounds i8, ptr %68, i64 %idxprom111
  store i8 %conv107, ptr %arrayidx112, align 1
  %70 = load ptr, ptr %s.addr, align 8
  %bi_buf113 = getelementptr inbounds %struct.internal_state, ptr %70, i64 0, i32 56
  %71 = load i16, ptr %bi_buf113, align 8
  %72 = lshr i16 %71, 8
  %conv116 = trunc i16 %72 to i8
  %pending_buf117 = getelementptr inbounds %struct.internal_state, ptr %70, i64 0, i32 2
  %73 = load ptr, ptr %pending_buf117, align 8
  %74 = load ptr, ptr %s.addr, align 8
  %pending118 = getelementptr inbounds %struct.internal_state, ptr %74, i64 0, i32 5
  %75 = load i32, ptr %pending118, align 8
  %inc119 = add i32 %75, 1
  store i32 %inc119, ptr %pending118, align 8
  %idxprom120 = zext i32 %75 to i64
  %arrayidx121 = getelementptr inbounds i8, ptr %73, i64 %idxprom120
  store i8 %conv116, ptr %arrayidx121, align 1
  %76 = load i32, ptr %val92, align 4
  %conv123 = and i32 %76, 65535
  %77 = load ptr, ptr %s.addr, align 8
  %bi_valid124 = getelementptr inbounds %struct.internal_state, ptr %77, i64 0, i32 57
  %78 = load i32, ptr %bi_valid124, align 4
  %sub126 = sub i32 16, %78
  %shr128 = lshr i32 %conv123, %sub126
  %conv129 = trunc i32 %shr128 to i16
  %bi_buf130 = getelementptr inbounds %struct.internal_state, ptr %77, i64 0, i32 56
  store i16 %conv129, ptr %bi_buf130, align 8
  %79 = load i32, ptr %len81, align 4
  %sub132 = add i32 %79, -16
  %80 = load ptr, ptr %s.addr, align 8
  %bi_valid133 = getelementptr inbounds %struct.internal_state, ptr %80, i64 0, i32 57
  %81 = load i32, ptr %bi_valid133, align 4
  %add135 = add i32 %sub132, %81
  store i32 %add135, ptr %bi_valid133, align 4
  br label %if.end151

if.else137:                                       ; preds = %if.then80
  %82 = load ptr, ptr %s.addr, align 8
  %83 = load i32, ptr %curlen, align 4
  %idxprom139 = sext i32 %83 to i64
  %arrayidx140 = getelementptr inbounds %struct.internal_state, ptr %82, i64 0, i32 39, i64 %idxprom139
  %84 = load i16, ptr %arrayidx140, align 4
  %conv142 = zext i16 %84 to i32
  %bi_valid143 = getelementptr inbounds %struct.internal_state, ptr %82, i64 0, i32 57
  %85 = load i32, ptr %bi_valid143, align 4
  %shl144 = shl i32 %conv142, %85
  %86 = load ptr, ptr %s.addr, align 8
  %bi_buf145 = getelementptr inbounds %struct.internal_state, ptr %86, i64 0, i32 56
  %87 = load i16, ptr %bi_buf145, align 8
  %88 = trunc i32 %shl144 to i16
  %conv148 = or i16 %87, %88
  store i16 %conv148, ptr %bi_buf145, align 8
  %89 = load i32, ptr %len81, align 4
  %90 = load ptr, ptr %s.addr, align 8
  %bi_valid149 = getelementptr inbounds %struct.internal_state, ptr %90, i64 0, i32 57
  %91 = load i32, ptr %bi_valid149, align 4
  %add150 = add nsw i32 %91, %89
  store i32 %add150, ptr %bi_valid149, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.else137, %if.then91
  %92 = load i32, ptr %count, align 4
  %dec152 = add nsw i32 %92, -1
  store i32 %dec152, ptr %count, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.end151, %if.then77
  %93 = load ptr, ptr %s.addr, align 8
  %dl157 = getelementptr inbounds %struct.internal_state, ptr %93, i64 0, i32 39, i64 16, i32 1
  %94 = load i16, ptr %dl157, align 2
  %conv158 = zext i16 %94 to i32
  store i32 %conv158, ptr %len154, align 4
  %bi_valid159 = getelementptr inbounds %struct.internal_state, ptr %93, i64 0, i32 57
  %95 = load i32, ptr %bi_valid159, align 4
  %sub160 = sub nsw i32 16, %conv158
  %cmp161 = icmp sgt i32 %95, %sub160
  br i1 %cmp161, label %if.then163, label %if.else208

if.then163:                                       ; preds = %if.end153
  %96 = load ptr, ptr %s.addr, align 8
  %arrayidx166 = getelementptr inbounds %struct.internal_state, ptr %96, i64 0, i32 39, i64 16
  %97 = load i16, ptr %arrayidx166, align 4
  %conv168 = zext i16 %97 to i32
  store i32 %conv168, ptr %val164, align 4
  %bi_valid169 = getelementptr inbounds %struct.internal_state, ptr %96, i64 0, i32 57
  %98 = load i32, ptr %bi_valid169, align 4
  %shl170 = shl i32 %conv168, %98
  %99 = load ptr, ptr %s.addr, align 8
  %bi_buf171 = getelementptr inbounds %struct.internal_state, ptr %99, i64 0, i32 56
  %100 = load i16, ptr %bi_buf171, align 8
  %101 = trunc i32 %shl170 to i16
  %conv174 = or i16 %100, %101
  store i16 %conv174, ptr %bi_buf171, align 8
  %conv178 = trunc i16 %conv174 to i8
  %102 = load ptr, ptr %s.addr, align 8
  %pending_buf179 = getelementptr inbounds %struct.internal_state, ptr %102, i64 0, i32 2
  %103 = load ptr, ptr %pending_buf179, align 8
  %pending180 = getelementptr inbounds %struct.internal_state, ptr %102, i64 0, i32 5
  %104 = load i32, ptr %pending180, align 8
  %inc181 = add i32 %104, 1
  store i32 %inc181, ptr %pending180, align 8
  %idxprom182 = zext i32 %104 to i64
  %arrayidx183 = getelementptr inbounds i8, ptr %103, i64 %idxprom182
  store i8 %conv178, ptr %arrayidx183, align 1
  %105 = load ptr, ptr %s.addr, align 8
  %bi_buf184 = getelementptr inbounds %struct.internal_state, ptr %105, i64 0, i32 56
  %106 = load i16, ptr %bi_buf184, align 8
  %107 = lshr i16 %106, 8
  %conv187 = trunc i16 %107 to i8
  %pending_buf188 = getelementptr inbounds %struct.internal_state, ptr %105, i64 0, i32 2
  %108 = load ptr, ptr %pending_buf188, align 8
  %109 = load ptr, ptr %s.addr, align 8
  %pending189 = getelementptr inbounds %struct.internal_state, ptr %109, i64 0, i32 5
  %110 = load i32, ptr %pending189, align 8
  %inc190 = add i32 %110, 1
  store i32 %inc190, ptr %pending189, align 8
  %idxprom191 = zext i32 %110 to i64
  %arrayidx192 = getelementptr inbounds i8, ptr %108, i64 %idxprom191
  store i8 %conv187, ptr %arrayidx192, align 1
  %111 = load i32, ptr %val164, align 4
  %conv194 = and i32 %111, 65535
  %112 = load ptr, ptr %s.addr, align 8
  %bi_valid195 = getelementptr inbounds %struct.internal_state, ptr %112, i64 0, i32 57
  %113 = load i32, ptr %bi_valid195, align 4
  %sub197 = sub i32 16, %113
  %shr199 = lshr i32 %conv194, %sub197
  %conv200 = trunc i32 %shr199 to i16
  %bi_buf201 = getelementptr inbounds %struct.internal_state, ptr %112, i64 0, i32 56
  store i16 %conv200, ptr %bi_buf201, align 8
  %114 = load i32, ptr %len154, align 4
  %sub203 = add i32 %114, -16
  %115 = load ptr, ptr %s.addr, align 8
  %bi_valid204 = getelementptr inbounds %struct.internal_state, ptr %115, i64 0, i32 57
  %116 = load i32, ptr %bi_valid204, align 4
  %add206 = add i32 %sub203, %116
  store i32 %add206, ptr %bi_valid204, align 4
  br label %if.end221

if.else208:                                       ; preds = %if.end153
  %117 = load ptr, ptr %s.addr, align 8
  %arrayidx210 = getelementptr inbounds %struct.internal_state, ptr %117, i64 0, i32 39, i64 16
  %118 = load i16, ptr %arrayidx210, align 4
  %conv212 = zext i16 %118 to i32
  %bi_valid213 = getelementptr inbounds %struct.internal_state, ptr %117, i64 0, i32 57
  %119 = load i32, ptr %bi_valid213, align 4
  %shl214 = shl i32 %conv212, %119
  %120 = load ptr, ptr %s.addr, align 8
  %bi_buf215 = getelementptr inbounds %struct.internal_state, ptr %120, i64 0, i32 56
  %121 = load i16, ptr %bi_buf215, align 8
  %122 = trunc i32 %shl214 to i16
  %conv218 = or i16 %121, %122
  store i16 %conv218, ptr %bi_buf215, align 8
  %123 = load i32, ptr %len154, align 4
  %124 = load ptr, ptr %s.addr, align 8
  %bi_valid219 = getelementptr inbounds %struct.internal_state, ptr %124, i64 0, i32 57
  %125 = load i32, ptr %bi_valid219, align 4
  %add220 = add nsw i32 %125, %123
  store i32 %add220, ptr %bi_valid219, align 4
  br label %if.end221

if.end221:                                        ; preds = %if.else208, %if.then163
  store i32 2, ptr %len222, align 4
  %126 = load ptr, ptr %s.addr, align 8
  %bi_valid223 = getelementptr inbounds %struct.internal_state, ptr %126, i64 0, i32 57
  %127 = load i32, ptr %bi_valid223, align 4
  %cmp225 = icmp sgt i32 %127, 14
  br i1 %cmp225, label %if.then227, label %if.else269

if.then227:                                       ; preds = %if.end221
  %128 = load i32, ptr %count, align 4
  %sub229 = add nsw i32 %128, -3
  store i32 %sub229, ptr %val228, align 4
  %129 = load ptr, ptr %s.addr, align 8
  %bi_valid230 = getelementptr inbounds %struct.internal_state, ptr %129, i64 0, i32 57
  %130 = load i32, ptr %bi_valid230, align 4
  %shl231 = shl i32 %sub229, %130
  %bi_buf232 = getelementptr inbounds %struct.internal_state, ptr %129, i64 0, i32 56
  %131 = load i16, ptr %bi_buf232, align 8
  %132 = trunc i32 %shl231 to i16
  %conv235 = or i16 %131, %132
  store i16 %conv235, ptr %bi_buf232, align 8
  %133 = load ptr, ptr %s.addr, align 8
  %bi_buf236 = getelementptr inbounds %struct.internal_state, ptr %133, i64 0, i32 56
  %134 = load i16, ptr %bi_buf236, align 8
  %conv239 = trunc i16 %134 to i8
  %pending_buf240 = getelementptr inbounds %struct.internal_state, ptr %133, i64 0, i32 2
  %135 = load ptr, ptr %pending_buf240, align 8
  %pending241 = getelementptr inbounds %struct.internal_state, ptr %133, i64 0, i32 5
  %136 = load i32, ptr %pending241, align 8
  %inc242 = add i32 %136, 1
  store i32 %inc242, ptr %pending241, align 8
  %idxprom243 = zext i32 %136 to i64
  %arrayidx244 = getelementptr inbounds i8, ptr %135, i64 %idxprom243
  store i8 %conv239, ptr %arrayidx244, align 1
  %137 = load ptr, ptr %s.addr, align 8
  %bi_buf245 = getelementptr inbounds %struct.internal_state, ptr %137, i64 0, i32 56
  %138 = load i16, ptr %bi_buf245, align 8
  %139 = lshr i16 %138, 8
  %conv248 = trunc i16 %139 to i8
  %pending_buf249 = getelementptr inbounds %struct.internal_state, ptr %137, i64 0, i32 2
  %140 = load ptr, ptr %pending_buf249, align 8
  %141 = load ptr, ptr %s.addr, align 8
  %pending250 = getelementptr inbounds %struct.internal_state, ptr %141, i64 0, i32 5
  %142 = load i32, ptr %pending250, align 8
  %inc251 = add i32 %142, 1
  store i32 %inc251, ptr %pending250, align 8
  %idxprom252 = zext i32 %142 to i64
  %arrayidx253 = getelementptr inbounds i8, ptr %140, i64 %idxprom252
  store i8 %conv248, ptr %arrayidx253, align 1
  %143 = load i32, ptr %val228, align 4
  %conv255 = and i32 %143, 65535
  %144 = load ptr, ptr %s.addr, align 8
  %bi_valid256 = getelementptr inbounds %struct.internal_state, ptr %144, i64 0, i32 57
  %145 = load i32, ptr %bi_valid256, align 4
  %sub258 = sub i32 16, %145
  %shr260 = lshr i32 %conv255, %sub258
  %conv261 = trunc i32 %shr260 to i16
  %bi_buf262 = getelementptr inbounds %struct.internal_state, ptr %144, i64 0, i32 56
  store i16 %conv261, ptr %bi_buf262, align 8
  %146 = load i32, ptr %len222, align 4
  %sub264 = add i32 %146, -16
  %147 = load ptr, ptr %s.addr, align 8
  %bi_valid265 = getelementptr inbounds %struct.internal_state, ptr %147, i64 0, i32 57
  %148 = load i32, ptr %bi_valid265, align 4
  %add267 = add i32 %sub264, %148
  store i32 %add267, ptr %bi_valid265, align 4
  br label %if.end540

if.else269:                                       ; preds = %if.end221
  %149 = load i32, ptr %count, align 4
  %sub270 = add i32 %149, 65533
  %150 = load ptr, ptr %s.addr, align 8
  %bi_valid271 = getelementptr inbounds %struct.internal_state, ptr %150, i64 0, i32 57
  %151 = load i32, ptr %bi_valid271, align 4
  %shl272 = shl i32 %sub270, %151
  %bi_buf273 = getelementptr inbounds %struct.internal_state, ptr %150, i64 0, i32 56
  %152 = load i16, ptr %bi_buf273, align 8
  %153 = trunc i32 %shl272 to i16
  %conv276 = or i16 %152, %153
  store i16 %conv276, ptr %bi_buf273, align 8
  %154 = load i32, ptr %len222, align 4
  %155 = load ptr, ptr %s.addr, align 8
  %bi_valid277 = getelementptr inbounds %struct.internal_state, ptr %155, i64 0, i32 57
  %156 = load i32, ptr %bi_valid277, align 4
  %add278 = add nsw i32 %156, %154
  store i32 %add278, ptr %bi_valid277, align 4
  br label %if.end540

if.else280:                                       ; preds = %if.else74
  %157 = load i32, ptr %count, align 4
  %cmp281 = icmp slt i32 %157, 11
  br i1 %cmp281, label %if.then283, label %if.else410

if.then283:                                       ; preds = %if.else280
  %158 = load ptr, ptr %s.addr, align 8
  %dl287 = getelementptr inbounds %struct.internal_state, ptr %158, i64 0, i32 39, i64 17, i32 1
  %159 = load i16, ptr %dl287, align 2
  %conv288 = zext i16 %159 to i32
  store i32 %conv288, ptr %len284, align 4
  %bi_valid289 = getelementptr inbounds %struct.internal_state, ptr %158, i64 0, i32 57
  %160 = load i32, ptr %bi_valid289, align 4
  %sub290 = sub nsw i32 16, %conv288
  %cmp291 = icmp sgt i32 %160, %sub290
  br i1 %cmp291, label %if.then293, label %if.else338

if.then293:                                       ; preds = %if.then283
  %161 = load ptr, ptr %s.addr, align 8
  %arrayidx296 = getelementptr inbounds %struct.internal_state, ptr %161, i64 0, i32 39, i64 17
  %162 = load i16, ptr %arrayidx296, align 4
  %conv298 = zext i16 %162 to i32
  store i32 %conv298, ptr %val294, align 4
  %bi_valid299 = getelementptr inbounds %struct.internal_state, ptr %161, i64 0, i32 57
  %163 = load i32, ptr %bi_valid299, align 4
  %shl300 = shl i32 %conv298, %163
  %164 = load ptr, ptr %s.addr, align 8
  %bi_buf301 = getelementptr inbounds %struct.internal_state, ptr %164, i64 0, i32 56
  %165 = load i16, ptr %bi_buf301, align 8
  %166 = trunc i32 %shl300 to i16
  %conv304 = or i16 %165, %166
  store i16 %conv304, ptr %bi_buf301, align 8
  %conv308 = trunc i16 %conv304 to i8
  %167 = load ptr, ptr %s.addr, align 8
  %pending_buf309 = getelementptr inbounds %struct.internal_state, ptr %167, i64 0, i32 2
  %168 = load ptr, ptr %pending_buf309, align 8
  %pending310 = getelementptr inbounds %struct.internal_state, ptr %167, i64 0, i32 5
  %169 = load i32, ptr %pending310, align 8
  %inc311 = add i32 %169, 1
  store i32 %inc311, ptr %pending310, align 8
  %idxprom312 = zext i32 %169 to i64
  %arrayidx313 = getelementptr inbounds i8, ptr %168, i64 %idxprom312
  store i8 %conv308, ptr %arrayidx313, align 1
  %170 = load ptr, ptr %s.addr, align 8
  %bi_buf314 = getelementptr inbounds %struct.internal_state, ptr %170, i64 0, i32 56
  %171 = load i16, ptr %bi_buf314, align 8
  %172 = lshr i16 %171, 8
  %conv317 = trunc i16 %172 to i8
  %pending_buf318 = getelementptr inbounds %struct.internal_state, ptr %170, i64 0, i32 2
  %173 = load ptr, ptr %pending_buf318, align 8
  %174 = load ptr, ptr %s.addr, align 8
  %pending319 = getelementptr inbounds %struct.internal_state, ptr %174, i64 0, i32 5
  %175 = load i32, ptr %pending319, align 8
  %inc320 = add i32 %175, 1
  store i32 %inc320, ptr %pending319, align 8
  %idxprom321 = zext i32 %175 to i64
  %arrayidx322 = getelementptr inbounds i8, ptr %173, i64 %idxprom321
  store i8 %conv317, ptr %arrayidx322, align 1
  %176 = load i32, ptr %val294, align 4
  %conv324 = and i32 %176, 65535
  %177 = load ptr, ptr %s.addr, align 8
  %bi_valid325 = getelementptr inbounds %struct.internal_state, ptr %177, i64 0, i32 57
  %178 = load i32, ptr %bi_valid325, align 4
  %sub327 = sub i32 16, %178
  %shr329 = lshr i32 %conv324, %sub327
  %conv330 = trunc i32 %shr329 to i16
  %bi_buf331 = getelementptr inbounds %struct.internal_state, ptr %177, i64 0, i32 56
  store i16 %conv330, ptr %bi_buf331, align 8
  %179 = load i32, ptr %len284, align 4
  %sub333 = add i32 %179, -16
  %180 = load ptr, ptr %s.addr, align 8
  %bi_valid334 = getelementptr inbounds %struct.internal_state, ptr %180, i64 0, i32 57
  %181 = load i32, ptr %bi_valid334, align 4
  %add336 = add i32 %sub333, %181
  store i32 %add336, ptr %bi_valid334, align 4
  br label %if.end351

if.else338:                                       ; preds = %if.then283
  %182 = load ptr, ptr %s.addr, align 8
  %arrayidx340 = getelementptr inbounds %struct.internal_state, ptr %182, i64 0, i32 39, i64 17
  %183 = load i16, ptr %arrayidx340, align 4
  %conv342 = zext i16 %183 to i32
  %bi_valid343 = getelementptr inbounds %struct.internal_state, ptr %182, i64 0, i32 57
  %184 = load i32, ptr %bi_valid343, align 4
  %shl344 = shl i32 %conv342, %184
  %185 = load ptr, ptr %s.addr, align 8
  %bi_buf345 = getelementptr inbounds %struct.internal_state, ptr %185, i64 0, i32 56
  %186 = load i16, ptr %bi_buf345, align 8
  %187 = trunc i32 %shl344 to i16
  %conv348 = or i16 %186, %187
  store i16 %conv348, ptr %bi_buf345, align 8
  %188 = load i32, ptr %len284, align 4
  %189 = load ptr, ptr %s.addr, align 8
  %bi_valid349 = getelementptr inbounds %struct.internal_state, ptr %189, i64 0, i32 57
  %190 = load i32, ptr %bi_valid349, align 4
  %add350 = add nsw i32 %190, %188
  store i32 %add350, ptr %bi_valid349, align 4
  br label %if.end351

if.end351:                                        ; preds = %if.else338, %if.then293
  store i32 3, ptr %len352, align 4
  %191 = load ptr, ptr %s.addr, align 8
  %bi_valid353 = getelementptr inbounds %struct.internal_state, ptr %191, i64 0, i32 57
  %192 = load i32, ptr %bi_valid353, align 4
  %cmp355 = icmp sgt i32 %192, 13
  br i1 %cmp355, label %if.then357, label %if.else399

if.then357:                                       ; preds = %if.end351
  %193 = load i32, ptr %count, align 4
  %sub359 = add nsw i32 %193, -3
  store i32 %sub359, ptr %val358, align 4
  %194 = load ptr, ptr %s.addr, align 8
  %bi_valid360 = getelementptr inbounds %struct.internal_state, ptr %194, i64 0, i32 57
  %195 = load i32, ptr %bi_valid360, align 4
  %shl361 = shl i32 %sub359, %195
  %bi_buf362 = getelementptr inbounds %struct.internal_state, ptr %194, i64 0, i32 56
  %196 = load i16, ptr %bi_buf362, align 8
  %197 = trunc i32 %shl361 to i16
  %conv365 = or i16 %196, %197
  store i16 %conv365, ptr %bi_buf362, align 8
  %198 = load ptr, ptr %s.addr, align 8
  %bi_buf366 = getelementptr inbounds %struct.internal_state, ptr %198, i64 0, i32 56
  %199 = load i16, ptr %bi_buf366, align 8
  %conv369 = trunc i16 %199 to i8
  %pending_buf370 = getelementptr inbounds %struct.internal_state, ptr %198, i64 0, i32 2
  %200 = load ptr, ptr %pending_buf370, align 8
  %pending371 = getelementptr inbounds %struct.internal_state, ptr %198, i64 0, i32 5
  %201 = load i32, ptr %pending371, align 8
  %inc372 = add i32 %201, 1
  store i32 %inc372, ptr %pending371, align 8
  %idxprom373 = zext i32 %201 to i64
  %arrayidx374 = getelementptr inbounds i8, ptr %200, i64 %idxprom373
  store i8 %conv369, ptr %arrayidx374, align 1
  %202 = load ptr, ptr %s.addr, align 8
  %bi_buf375 = getelementptr inbounds %struct.internal_state, ptr %202, i64 0, i32 56
  %203 = load i16, ptr %bi_buf375, align 8
  %204 = lshr i16 %203, 8
  %conv378 = trunc i16 %204 to i8
  %pending_buf379 = getelementptr inbounds %struct.internal_state, ptr %202, i64 0, i32 2
  %205 = load ptr, ptr %pending_buf379, align 8
  %206 = load ptr, ptr %s.addr, align 8
  %pending380 = getelementptr inbounds %struct.internal_state, ptr %206, i64 0, i32 5
  %207 = load i32, ptr %pending380, align 8
  %inc381 = add i32 %207, 1
  store i32 %inc381, ptr %pending380, align 8
  %idxprom382 = zext i32 %207 to i64
  %arrayidx383 = getelementptr inbounds i8, ptr %205, i64 %idxprom382
  store i8 %conv378, ptr %arrayidx383, align 1
  %208 = load i32, ptr %val358, align 4
  %conv385 = and i32 %208, 65535
  %209 = load ptr, ptr %s.addr, align 8
  %bi_valid386 = getelementptr inbounds %struct.internal_state, ptr %209, i64 0, i32 57
  %210 = load i32, ptr %bi_valid386, align 4
  %sub388 = sub i32 16, %210
  %shr390 = lshr i32 %conv385, %sub388
  %conv391 = trunc i32 %shr390 to i16
  %bi_buf392 = getelementptr inbounds %struct.internal_state, ptr %209, i64 0, i32 56
  store i16 %conv391, ptr %bi_buf392, align 8
  %211 = load i32, ptr %len352, align 4
  %sub394 = add i32 %211, -16
  %212 = load ptr, ptr %s.addr, align 8
  %bi_valid395 = getelementptr inbounds %struct.internal_state, ptr %212, i64 0, i32 57
  %213 = load i32, ptr %bi_valid395, align 4
  %add397 = add i32 %sub394, %213
  store i32 %add397, ptr %bi_valid395, align 4
  br label %if.end540

if.else399:                                       ; preds = %if.end351
  %214 = load i32, ptr %count, align 4
  %sub400 = add i32 %214, 65533
  %215 = load ptr, ptr %s.addr, align 8
  %bi_valid401 = getelementptr inbounds %struct.internal_state, ptr %215, i64 0, i32 57
  %216 = load i32, ptr %bi_valid401, align 4
  %shl402 = shl i32 %sub400, %216
  %bi_buf403 = getelementptr inbounds %struct.internal_state, ptr %215, i64 0, i32 56
  %217 = load i16, ptr %bi_buf403, align 8
  %218 = trunc i32 %shl402 to i16
  %conv406 = or i16 %217, %218
  store i16 %conv406, ptr %bi_buf403, align 8
  %219 = load i32, ptr %len352, align 4
  %220 = load ptr, ptr %s.addr, align 8
  %bi_valid407 = getelementptr inbounds %struct.internal_state, ptr %220, i64 0, i32 57
  %221 = load i32, ptr %bi_valid407, align 4
  %add408 = add nsw i32 %221, %219
  store i32 %add408, ptr %bi_valid407, align 4
  br label %if.end540

if.else410:                                       ; preds = %if.else280
  %222 = load ptr, ptr %s.addr, align 8
  %dl414 = getelementptr inbounds %struct.internal_state, ptr %222, i64 0, i32 39, i64 18, i32 1
  %223 = load i16, ptr %dl414, align 2
  %conv415 = zext i16 %223 to i32
  store i32 %conv415, ptr %len411, align 4
  %bi_valid416 = getelementptr inbounds %struct.internal_state, ptr %222, i64 0, i32 57
  %224 = load i32, ptr %bi_valid416, align 4
  %sub417 = sub nsw i32 16, %conv415
  %cmp418 = icmp sgt i32 %224, %sub417
  br i1 %cmp418, label %if.then420, label %if.else465

if.then420:                                       ; preds = %if.else410
  %225 = load ptr, ptr %s.addr, align 8
  %arrayidx423 = getelementptr inbounds %struct.internal_state, ptr %225, i64 0, i32 39, i64 18
  %226 = load i16, ptr %arrayidx423, align 4
  %conv425 = zext i16 %226 to i32
  store i32 %conv425, ptr %val421, align 4
  %bi_valid426 = getelementptr inbounds %struct.internal_state, ptr %225, i64 0, i32 57
  %227 = load i32, ptr %bi_valid426, align 4
  %shl427 = shl i32 %conv425, %227
  %228 = load ptr, ptr %s.addr, align 8
  %bi_buf428 = getelementptr inbounds %struct.internal_state, ptr %228, i64 0, i32 56
  %229 = load i16, ptr %bi_buf428, align 8
  %230 = trunc i32 %shl427 to i16
  %conv431 = or i16 %229, %230
  store i16 %conv431, ptr %bi_buf428, align 8
  %conv435 = trunc i16 %conv431 to i8
  %231 = load ptr, ptr %s.addr, align 8
  %pending_buf436 = getelementptr inbounds %struct.internal_state, ptr %231, i64 0, i32 2
  %232 = load ptr, ptr %pending_buf436, align 8
  %pending437 = getelementptr inbounds %struct.internal_state, ptr %231, i64 0, i32 5
  %233 = load i32, ptr %pending437, align 8
  %inc438 = add i32 %233, 1
  store i32 %inc438, ptr %pending437, align 8
  %idxprom439 = zext i32 %233 to i64
  %arrayidx440 = getelementptr inbounds i8, ptr %232, i64 %idxprom439
  store i8 %conv435, ptr %arrayidx440, align 1
  %234 = load ptr, ptr %s.addr, align 8
  %bi_buf441 = getelementptr inbounds %struct.internal_state, ptr %234, i64 0, i32 56
  %235 = load i16, ptr %bi_buf441, align 8
  %236 = lshr i16 %235, 8
  %conv444 = trunc i16 %236 to i8
  %pending_buf445 = getelementptr inbounds %struct.internal_state, ptr %234, i64 0, i32 2
  %237 = load ptr, ptr %pending_buf445, align 8
  %238 = load ptr, ptr %s.addr, align 8
  %pending446 = getelementptr inbounds %struct.internal_state, ptr %238, i64 0, i32 5
  %239 = load i32, ptr %pending446, align 8
  %inc447 = add i32 %239, 1
  store i32 %inc447, ptr %pending446, align 8
  %idxprom448 = zext i32 %239 to i64
  %arrayidx449 = getelementptr inbounds i8, ptr %237, i64 %idxprom448
  store i8 %conv444, ptr %arrayidx449, align 1
  %240 = load i32, ptr %val421, align 4
  %conv451 = and i32 %240, 65535
  %241 = load ptr, ptr %s.addr, align 8
  %bi_valid452 = getelementptr inbounds %struct.internal_state, ptr %241, i64 0, i32 57
  %242 = load i32, ptr %bi_valid452, align 4
  %sub454 = sub i32 16, %242
  %shr456 = lshr i32 %conv451, %sub454
  %conv457 = trunc i32 %shr456 to i16
  %bi_buf458 = getelementptr inbounds %struct.internal_state, ptr %241, i64 0, i32 56
  store i16 %conv457, ptr %bi_buf458, align 8
  %243 = load i32, ptr %len411, align 4
  %sub460 = add i32 %243, -16
  %244 = load ptr, ptr %s.addr, align 8
  %bi_valid461 = getelementptr inbounds %struct.internal_state, ptr %244, i64 0, i32 57
  %245 = load i32, ptr %bi_valid461, align 4
  %add463 = add i32 %sub460, %245
  store i32 %add463, ptr %bi_valid461, align 4
  br label %if.end478

if.else465:                                       ; preds = %if.else410
  %246 = load ptr, ptr %s.addr, align 8
  %arrayidx467 = getelementptr inbounds %struct.internal_state, ptr %246, i64 0, i32 39, i64 18
  %247 = load i16, ptr %arrayidx467, align 4
  %conv469 = zext i16 %247 to i32
  %bi_valid470 = getelementptr inbounds %struct.internal_state, ptr %246, i64 0, i32 57
  %248 = load i32, ptr %bi_valid470, align 4
  %shl471 = shl i32 %conv469, %248
  %249 = load ptr, ptr %s.addr, align 8
  %bi_buf472 = getelementptr inbounds %struct.internal_state, ptr %249, i64 0, i32 56
  %250 = load i16, ptr %bi_buf472, align 8
  %251 = trunc i32 %shl471 to i16
  %conv475 = or i16 %250, %251
  store i16 %conv475, ptr %bi_buf472, align 8
  %252 = load i32, ptr %len411, align 4
  %253 = load ptr, ptr %s.addr, align 8
  %bi_valid476 = getelementptr inbounds %struct.internal_state, ptr %253, i64 0, i32 57
  %254 = load i32, ptr %bi_valid476, align 4
  %add477 = add nsw i32 %254, %252
  store i32 %add477, ptr %bi_valid476, align 4
  br label %if.end478

if.end478:                                        ; preds = %if.else465, %if.then420
  store i32 7, ptr %len479, align 4
  %255 = load ptr, ptr %s.addr, align 8
  %bi_valid480 = getelementptr inbounds %struct.internal_state, ptr %255, i64 0, i32 57
  %256 = load i32, ptr %bi_valid480, align 4
  %cmp482 = icmp sgt i32 %256, 9
  br i1 %cmp482, label %if.then484, label %if.else526

if.then484:                                       ; preds = %if.end478
  %257 = load i32, ptr %count, align 4
  %sub486 = add nsw i32 %257, -11
  store i32 %sub486, ptr %val485, align 4
  %258 = load ptr, ptr %s.addr, align 8
  %bi_valid487 = getelementptr inbounds %struct.internal_state, ptr %258, i64 0, i32 57
  %259 = load i32, ptr %bi_valid487, align 4
  %shl488 = shl i32 %sub486, %259
  %bi_buf489 = getelementptr inbounds %struct.internal_state, ptr %258, i64 0, i32 56
  %260 = load i16, ptr %bi_buf489, align 8
  %261 = trunc i32 %shl488 to i16
  %conv492 = or i16 %260, %261
  store i16 %conv492, ptr %bi_buf489, align 8
  %262 = load ptr, ptr %s.addr, align 8
  %bi_buf493 = getelementptr inbounds %struct.internal_state, ptr %262, i64 0, i32 56
  %263 = load i16, ptr %bi_buf493, align 8
  %conv496 = trunc i16 %263 to i8
  %pending_buf497 = getelementptr inbounds %struct.internal_state, ptr %262, i64 0, i32 2
  %264 = load ptr, ptr %pending_buf497, align 8
  %pending498 = getelementptr inbounds %struct.internal_state, ptr %262, i64 0, i32 5
  %265 = load i32, ptr %pending498, align 8
  %inc499 = add i32 %265, 1
  store i32 %inc499, ptr %pending498, align 8
  %idxprom500 = zext i32 %265 to i64
  %arrayidx501 = getelementptr inbounds i8, ptr %264, i64 %idxprom500
  store i8 %conv496, ptr %arrayidx501, align 1
  %266 = load ptr, ptr %s.addr, align 8
  %bi_buf502 = getelementptr inbounds %struct.internal_state, ptr %266, i64 0, i32 56
  %267 = load i16, ptr %bi_buf502, align 8
  %268 = lshr i16 %267, 8
  %conv505 = trunc i16 %268 to i8
  %pending_buf506 = getelementptr inbounds %struct.internal_state, ptr %266, i64 0, i32 2
  %269 = load ptr, ptr %pending_buf506, align 8
  %270 = load ptr, ptr %s.addr, align 8
  %pending507 = getelementptr inbounds %struct.internal_state, ptr %270, i64 0, i32 5
  %271 = load i32, ptr %pending507, align 8
  %inc508 = add i32 %271, 1
  store i32 %inc508, ptr %pending507, align 8
  %idxprom509 = zext i32 %271 to i64
  %arrayidx510 = getelementptr inbounds i8, ptr %269, i64 %idxprom509
  store i8 %conv505, ptr %arrayidx510, align 1
  %272 = load i32, ptr %val485, align 4
  %conv512 = and i32 %272, 65535
  %273 = load ptr, ptr %s.addr, align 8
  %bi_valid513 = getelementptr inbounds %struct.internal_state, ptr %273, i64 0, i32 57
  %274 = load i32, ptr %bi_valid513, align 4
  %sub515 = sub i32 16, %274
  %shr517 = lshr i32 %conv512, %sub515
  %conv518 = trunc i32 %shr517 to i16
  %bi_buf519 = getelementptr inbounds %struct.internal_state, ptr %273, i64 0, i32 56
  store i16 %conv518, ptr %bi_buf519, align 8
  %275 = load i32, ptr %len479, align 4
  %sub521 = add i32 %275, -16
  %276 = load ptr, ptr %s.addr, align 8
  %bi_valid522 = getelementptr inbounds %struct.internal_state, ptr %276, i64 0, i32 57
  %277 = load i32, ptr %bi_valid522, align 4
  %add524 = add i32 %sub521, %277
  store i32 %add524, ptr %bi_valid522, align 4
  br label %if.end540

if.else526:                                       ; preds = %if.end478
  %278 = load i32, ptr %count, align 4
  %sub527 = add i32 %278, 65525
  %279 = load ptr, ptr %s.addr, align 8
  %bi_valid528 = getelementptr inbounds %struct.internal_state, ptr %279, i64 0, i32 57
  %280 = load i32, ptr %bi_valid528, align 4
  %shl529 = shl i32 %sub527, %280
  %bi_buf530 = getelementptr inbounds %struct.internal_state, ptr %279, i64 0, i32 56
  %281 = load i16, ptr %bi_buf530, align 8
  %282 = trunc i32 %shl529 to i16
  %conv533 = or i16 %281, %282
  store i16 %conv533, ptr %bi_buf530, align 8
  %283 = load i32, ptr %len479, align 4
  %284 = load ptr, ptr %s.addr, align 8
  %bi_valid534 = getelementptr inbounds %struct.internal_state, ptr %284, i64 0, i32 57
  %285 = load i32, ptr %bi_valid534, align 4
  %add535 = add nsw i32 %285, %283
  store i32 %add535, ptr %bi_valid534, align 4
  br label %if.end540

if.end540:                                        ; preds = %do.cond, %if.else399, %if.then357, %if.else526, %if.then484, %if.then227, %if.else269
  store i32 0, ptr %count, align 4
  %286 = load i32, ptr %curlen, align 4
  store i32 %286, ptr %prevlen, align 4
  %287 = load i32, ptr %nextlen, align 4
  %cmp541 = icmp eq i32 %287, 0
  br i1 %cmp541, label %if.end550, label %if.else544

if.else544:                                       ; preds = %if.end540
  %288 = load i32, ptr %curlen, align 4
  %289 = load i32, ptr %nextlen, align 4
  %cmp545 = icmp eq i32 %288, %289
  %. = select i1 %cmp545, i32 6, i32 7
  %.5 = select i1 %cmp545, i32 3, i32 4
  br label %if.end550

if.end550:                                        ; preds = %if.end540, %if.else544
  %storemerge4 = phi i32 [ %., %if.else544 ], [ 138, %if.end540 ]
  %storemerge3 = phi i32 [ %.5, %if.else544 ], [ 3, %if.end540 ]
  store i32 %storemerge4, ptr %max_count, align 4
  store i32 %storemerge3, ptr %min_count, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %if.end550
  %290 = load i32, ptr %n, align 4
  %inc551 = add nsw i32 %290, 1
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
