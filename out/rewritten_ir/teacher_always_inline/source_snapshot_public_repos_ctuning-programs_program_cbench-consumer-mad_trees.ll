; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-mad_trees.prepared.ll'
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
  %s.addr.i = alloca ptr, align 8
  %n.i = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i)
  store ptr %2, ptr %s.addr.i, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i ]
  store i32 %storemerge, ptr %n.i, align 4
  %cmp.i = icmp slt i32 %storemerge, 286
  br i1 %cmp.i, label %for.body.i, label %for.cond1.i

for.body.i:                                       ; preds = %for.cond.i
  %3 = load ptr, ptr %s.addr.i, align 8
  %4 = load i32, ptr %n.i, align 4
  %idxprom.i = sext i32 %4 to i64
  %arrayidx.i = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 37, i64 %idxprom.i
  store i16 0, ptr %arrayidx.i, align 4
  %inc.i = add nsw i32 %4, 1
  br label %for.cond.i, !llvm.loop !6

for.cond1.i:                                      ; preds = %for.cond.i, %for.body3.i
  %storemerge1 = phi i32 [ %inc8.i, %for.body3.i ], [ 0, %for.cond.i ]
  store i32 %storemerge1, ptr %n.i, align 4
  %cmp2.i = icmp slt i32 %storemerge1, 30
  br i1 %cmp2.i, label %for.body3.i, label %for.cond10.i

for.body3.i:                                      ; preds = %for.cond1.i
  %5 = load ptr, ptr %s.addr.i, align 8
  %6 = load i32, ptr %n.i, align 4
  %idxprom4.i = sext i32 %6 to i64
  %arrayidx5.i = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 38, i64 %idxprom4.i
  store i16 0, ptr %arrayidx5.i, align 4
  %inc8.i = add nsw i32 %6, 1
  br label %for.cond1.i, !llvm.loop !8

for.cond10.i:                                     ; preds = %for.cond1.i, %for.body12.i
  %storemerge2 = phi i32 [ %inc17.i, %for.body12.i ], [ 0, %for.cond1.i ]
  store i32 %storemerge2, ptr %n.i, align 4
  %cmp11.i = icmp slt i32 %storemerge2, 19
  br i1 %cmp11.i, label %for.body12.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_1.exit

for.body12.i:                                     ; preds = %for.cond10.i
  %7 = load ptr, ptr %s.addr.i, align 8
  %8 = load i32, ptr %n.i, align 4
  %idxprom13.i = sext i32 %8 to i64
  %arrayidx14.i = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 39, i64 %idxprom13.i
  store i16 0, ptr %arrayidx14.i, align 4
  %inc17.i = add nsw i32 %8, 1
  br label %for.cond10.i, !llvm.loop !9

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_1.exit: ; preds = %for.cond10.i
  %9 = load ptr, ptr %s.addr.i, align 8
  %arrayidx20.i = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 37, i64 256
  store i16 1, ptr %arrayidx20.i, align 4
  %static_len.i = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 53
  store i64 0, ptr %static_len.i, align 8
  %opt_len.i = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 52
  store i64 0, ptr %opt_len.i, align 8
  %10 = load ptr, ptr %s.addr.i, align 8
  %matches.i = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 54
  store i32 0, ptr %matches.i, align 8
  %last_lit.i = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 50
  store i32 0, ptr %last_lit.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_tr_stored_block(ptr noundef %s, ptr noundef %buf, i64 noundef %stored_len, i32 noundef %eof) #0 {
entry:
  %s.addr.i = alloca ptr, align 8
  %buf.addr.i = alloca ptr, align 8
  %len.addr.i = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.addr.i)
  store ptr %30, ptr %s.addr.i, align 8
  store ptr %31, ptr %buf.addr.i, align 8
  store i32 %conv37, ptr %len.addr.i, align 4
  call void @bi_windup(ptr noundef %30)
  %last_eob_len.i = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 55
  store i32 8, ptr %last_eob_len.i, align 4
  %33 = load i32, ptr %len.addr.i, align 4
  %conv2.i = trunc i32 %33 to i8
  %34 = load ptr, ptr %s.addr.i, align 8
  %pending_buf.i = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 2
  %35 = load ptr, ptr %pending_buf.i, align 8
  %pending.i = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 5
  %36 = load i32, ptr %pending.i, align 8
  %inc.i = add i32 %36, 1
  store i32 %inc.i, ptr %pending.i, align 8
  %idxprom.i = zext i32 %36 to i64
  %arrayidx.i = getelementptr inbounds i8, ptr %35, i64 %idxprom.i
  store i8 %conv2.i, ptr %arrayidx.i, align 1
  %37 = load i32, ptr %len.addr.i, align 4
  %conv4.i = lshr i32 %37, 8
  %conv5.i = trunc i32 %conv4.i to i8
  %38 = load ptr, ptr %s.addr.i, align 8
  %pending_buf6.i = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 2
  %39 = load ptr, ptr %pending_buf6.i, align 8
  %pending7.i = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 5
  %40 = load i32, ptr %pending7.i, align 8
  %inc8.i = add i32 %40, 1
  store i32 %inc8.i, ptr %pending7.i, align 8
  %idxprom9.i = zext i32 %40 to i64
  %arrayidx10.i = getelementptr inbounds i8, ptr %39, i64 %idxprom9.i
  store i8 %conv5.i, ptr %arrayidx10.i, align 1
  %41 = load i32, ptr %len.addr.i, align 4
  %42 = trunc i32 %41 to i8
  %conv14.i = xor i8 %42, -1
  %43 = load ptr, ptr %s.addr.i, align 8
  %pending_buf15.i = getelementptr inbounds %struct.internal_state, ptr %43, i64 0, i32 2
  %44 = load ptr, ptr %pending_buf15.i, align 8
  %pending16.i = getelementptr inbounds %struct.internal_state, ptr %43, i64 0, i32 5
  %45 = load i32, ptr %pending16.i, align 8
  %inc17.i = add i32 %45, 1
  store i32 %inc17.i, ptr %pending16.i, align 8
  %idxprom18.i = zext i32 %45 to i64
  %arrayidx19.i = getelementptr inbounds i8, ptr %44, i64 %idxprom18.i
  store i8 %conv14.i, ptr %arrayidx19.i, align 1
  %46 = load i32, ptr %len.addr.i, align 4
  %conv21.i = lshr i32 %46, 8
  %47 = trunc i32 %conv21.i to i8
  %conv24.i = xor i8 %47, -1
  %48 = load ptr, ptr %s.addr.i, align 8
  %pending_buf25.i = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 2
  %49 = load ptr, ptr %pending_buf25.i, align 8
  %pending26.i = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 5
  %50 = load i32, ptr %pending26.i, align 8
  %inc27.i = add i32 %50, 1
  store i32 %inc27.i, ptr %pending26.i, align 8
  %idxprom28.i = zext i32 %50 to i64
  %arrayidx29.i = getelementptr inbounds i8, ptr %49, i64 %idxprom28.i
  store i8 %conv24.i, ptr %arrayidx29.i, align 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %if.end
  %51 = load i32, ptr %len.addr.i, align 4
  %dec.i = add i32 %51, -1
  store i32 %dec.i, ptr %len.addr.i, align 4
  %tobool30.i.not = icmp eq i32 %51, 0
  br i1 %tobool30.i.not, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_2.exit, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %52 = load ptr, ptr %buf.addr.i, align 8
  %incdec.ptr.i = getelementptr inbounds i8, ptr %52, i64 1
  store ptr %incdec.ptr.i, ptr %buf.addr.i, align 8
  %53 = load i8, ptr %52, align 1
  %54 = load ptr, ptr %s.addr.i, align 8
  %pending_buf31.i = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 2
  %55 = load ptr, ptr %pending_buf31.i, align 8
  %pending32.i = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 5
  %56 = load i32, ptr %pending32.i, align 8
  %inc33.i = add i32 %56, 1
  store i32 %inc33.i, ptr %pending32.i, align 8
  %idxprom34.i = zext i32 %56 to i64
  %arrayidx35.i = getelementptr inbounds i8, ptr %55, i64 %idxprom34.i
  store i8 %53, ptr %arrayidx35.i, align 1
  br label %while.cond.i, !llvm.loop !10

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_2.exit: ; preds = %while.cond.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.addr.i)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @copy_block(ptr noundef %s, ptr noundef %buf, i32 noundef %len, i32 noundef %header) #0 {
entry:
  %s.addr.i = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %header.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 %header, ptr %header.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i)
  store ptr %s, ptr %s.addr.i, align 8
  %bi_valid.i = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 57
  %0 = load i32, ptr %bi_valid.i, align 4
  %cmp.i = icmp sgt i32 %0, 8
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr %s.addr.i, align 8
  %bi_buf.i = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 56
  %2 = load i16, ptr %bi_buf.i, align 8
  %conv1.i = trunc i16 %2 to i8
  %pending_buf.i = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 2
  %3 = load ptr, ptr %pending_buf.i, align 8
  %pending.i = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %pending.i, align 8
  %inc.i = add i32 %4, 1
  store i32 %inc.i, ptr %pending.i, align 8
  %idxprom.i = zext i32 %4 to i64
  %arrayidx.i = getelementptr inbounds i8, ptr %3, i64 %idxprom.i
  store i8 %conv1.i, ptr %arrayidx.i, align 1
  %5 = load ptr, ptr %s.addr.i, align 8
  %bi_buf2.i = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 56
  %6 = load i16, ptr %bi_buf2.i, align 8
  %7 = lshr i16 %6, 8
  %conv4.i = trunc i16 %7 to i8
  %pending_buf5.i = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 2
  %8 = load ptr, ptr %pending_buf5.i, align 8
  %9 = load ptr, ptr %s.addr.i, align 8
  %pending6.i = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 5
  %10 = load i32, ptr %pending6.i, align 8
  %inc7.i = add i32 %10, 1
  store i32 %inc7.i, ptr %pending6.i, align 8
  %idxprom8.i = zext i32 %10 to i64
  %arrayidx9.i = getelementptr inbounds i8, ptr %8, i64 %idxprom8.i
  store i8 %conv4.i, ptr %arrayidx9.i, align 1
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_3.exit

if.else.i:                                        ; preds = %entry
  %11 = load ptr, ptr %s.addr.i, align 8
  %bi_valid10.i = getelementptr inbounds %struct.internal_state, ptr %11, i64 0, i32 57
  %12 = load i32, ptr %bi_valid10.i, align 4
  %cmp11.i = icmp sgt i32 %12, 0
  br i1 %cmp11.i, label %if.then13.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_3.exit

if.then13.i:                                      ; preds = %if.else.i
  %13 = load ptr, ptr %s.addr.i, align 8
  %bi_buf14.i = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 56
  %14 = load i16, ptr %bi_buf14.i, align 8
  %conv15.i = trunc i16 %14 to i8
  %pending_buf16.i = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %pending_buf16.i, align 8
  %pending17.i = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 5
  %16 = load i32, ptr %pending17.i, align 8
  %inc18.i = add i32 %16, 1
  store i32 %inc18.i, ptr %pending17.i, align 8
  %idxprom19.i = zext i32 %16 to i64
  %arrayidx20.i = getelementptr inbounds i8, ptr %15, i64 %idxprom19.i
  store i8 %conv15.i, ptr %arrayidx20.i, align 1
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_3.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_3.exit: ; preds = %if.else.i, %if.then13.i, %if.then.i
  %17 = load ptr, ptr %s.addr.i, align 8
  %bi_buf22.i = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 56
  store i16 0, ptr %bi_buf22.i, align 8
  %bi_valid23.i = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 57
  store i32 0, ptr %bi_valid23.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i)
  %18 = load ptr, ptr %s.addr, align 8
  %last_eob_len = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 55
  store i32 8, ptr %last_eob_len, align 4
  %19 = load i32, ptr %header.addr, align 4
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_3.exit
  %20 = load i32, ptr %len.addr, align 4
  %conv2 = trunc i32 %20 to i8
  %21 = load ptr, ptr %s.addr, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 2
  %22 = load ptr, ptr %pending_buf, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %pending, align 8
  %inc = add i32 %23, 1
  store i32 %inc, ptr %pending, align 8
  %idxprom = zext i32 %23 to i64
  %arrayidx = getelementptr inbounds i8, ptr %22, i64 %idxprom
  store i8 %conv2, ptr %arrayidx, align 1
  %24 = load i32, ptr %len.addr, align 4
  %conv4 = lshr i32 %24, 8
  %conv5 = trunc i32 %conv4 to i8
  %25 = load ptr, ptr %s.addr, align 8
  %pending_buf6 = getelementptr inbounds %struct.internal_state, ptr %25, i64 0, i32 2
  %26 = load ptr, ptr %pending_buf6, align 8
  %pending7 = getelementptr inbounds %struct.internal_state, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %pending7, align 8
  %inc8 = add i32 %27, 1
  store i32 %inc8, ptr %pending7, align 8
  %idxprom9 = zext i32 %27 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %26, i64 %idxprom9
  store i8 %conv5, ptr %arrayidx10, align 1
  %28 = load i32, ptr %len.addr, align 4
  %29 = trunc i32 %28 to i8
  %conv14 = xor i8 %29, -1
  %30 = load ptr, ptr %s.addr, align 8
  %pending_buf15 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 2
  %31 = load ptr, ptr %pending_buf15, align 8
  %pending16 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 5
  %32 = load i32, ptr %pending16, align 8
  %inc17 = add i32 %32, 1
  store i32 %inc17, ptr %pending16, align 8
  %idxprom18 = zext i32 %32 to i64
  %arrayidx19 = getelementptr inbounds i8, ptr %31, i64 %idxprom18
  store i8 %conv14, ptr %arrayidx19, align 1
  %33 = load i32, ptr %len.addr, align 4
  %conv21 = lshr i32 %33, 8
  %34 = trunc i32 %conv21 to i8
  %conv24 = xor i8 %34, -1
  %35 = load ptr, ptr %s.addr, align 8
  %pending_buf25 = getelementptr inbounds %struct.internal_state, ptr %35, i64 0, i32 2
  %36 = load ptr, ptr %pending_buf25, align 8
  %pending26 = getelementptr inbounds %struct.internal_state, ptr %35, i64 0, i32 5
  %37 = load i32, ptr %pending26, align 8
  %inc27 = add i32 %37, 1
  store i32 %inc27, ptr %pending26, align 8
  %idxprom28 = zext i32 %37 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %36, i64 %idxprom28
  store i8 %conv24, ptr %arrayidx29, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_3.exit
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %38 = load i32, ptr %len.addr, align 4
  %dec = add i32 %38, -1
  store i32 %dec, ptr %len.addr, align 4
  %tobool30.not = icmp eq i32 %38, 0
  br i1 %tobool30.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %39 = load ptr, ptr %buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %39, i64 1
  store ptr %incdec.ptr, ptr %buf.addr, align 8
  %40 = load i8, ptr %39, align 1
  %41 = load ptr, ptr %s.addr, align 8
  %pending_buf31 = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 2
  %42 = load ptr, ptr %pending_buf31, align 8
  %pending32 = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 5
  %43 = load i32, ptr %pending32, align 8
  %inc33 = add i32 %43, 1
  store i32 %inc33, ptr %pending32, align 8
  %idxprom34 = zext i32 %43 to i64
  %arrayidx35 = getelementptr inbounds i8, ptr %42, i64 %idxprom34
  store i8 %40, ptr %arrayidx35, align 1
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_tr_align(ptr noundef %s) #0 {
entry:
  %s.addr.i1 = alloca ptr, align 8
  %s.addr.i = alloca ptr, align 8
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i)
  store ptr %49, ptr %s.addr.i, align 8
  %bi_valid.i = getelementptr inbounds %struct.internal_state, ptr %49, i64 0, i32 57
  %50 = load i32, ptr %bi_valid.i, align 4
  %cmp.i = icmp eq i32 %50, 16
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end93
  %51 = load ptr, ptr %s.addr.i, align 8
  %bi_buf.i = getelementptr inbounds %struct.internal_state, ptr %51, i64 0, i32 56
  %52 = load i16, ptr %bi_buf.i, align 8
  %conv1.i = trunc i16 %52 to i8
  %pending_buf.i = getelementptr inbounds %struct.internal_state, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %pending_buf.i, align 8
  %pending.i = getelementptr inbounds %struct.internal_state, ptr %51, i64 0, i32 5
  %54 = load i32, ptr %pending.i, align 8
  %inc.i = add i32 %54, 1
  store i32 %inc.i, ptr %pending.i, align 8
  %idxprom.i = zext i32 %54 to i64
  %arrayidx.i = getelementptr inbounds i8, ptr %53, i64 %idxprom.i
  store i8 %conv1.i, ptr %arrayidx.i, align 1
  %55 = load ptr, ptr %s.addr.i, align 8
  %bi_buf2.i = getelementptr inbounds %struct.internal_state, ptr %55, i64 0, i32 56
  %56 = load i16, ptr %bi_buf2.i, align 8
  %57 = lshr i16 %56, 8
  %conv4.i = trunc i16 %57 to i8
  %pending_buf5.i = getelementptr inbounds %struct.internal_state, ptr %55, i64 0, i32 2
  %58 = load ptr, ptr %pending_buf5.i, align 8
  %59 = load ptr, ptr %s.addr.i, align 8
  %pending6.i = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 5
  %60 = load i32, ptr %pending6.i, align 8
  %inc7.i = add i32 %60, 1
  store i32 %inc7.i, ptr %pending6.i, align 8
  %idxprom8.i = zext i32 %60 to i64
  %arrayidx9.i = getelementptr inbounds i8, ptr %58, i64 %idxprom8.i
  store i8 %conv4.i, ptr %arrayidx9.i, align 1
  %61 = load ptr, ptr %s.addr.i, align 8
  %bi_buf10.i = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 56
  store i16 0, ptr %bi_buf10.i, align 8
  %bi_valid11.i = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 57
  store i32 0, ptr %bi_valid11.i, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_4.exit

if.else.i:                                        ; preds = %if.end93
  %62 = load ptr, ptr %s.addr.i, align 8
  %bi_valid12.i = getelementptr inbounds %struct.internal_state, ptr %62, i64 0, i32 57
  %63 = load i32, ptr %bi_valid12.i, align 4
  %cmp13.i = icmp sgt i32 %63, 7
  br i1 %cmp13.i, label %if.then15.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_4.exit

if.then15.i:                                      ; preds = %if.else.i
  %64 = load ptr, ptr %s.addr.i, align 8
  %bi_buf16.i = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 56
  %65 = load i16, ptr %bi_buf16.i, align 8
  %conv17.i = trunc i16 %65 to i8
  %pending_buf18.i = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %pending_buf18.i, align 8
  %pending19.i = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 5
  %67 = load i32, ptr %pending19.i, align 8
  %inc20.i = add i32 %67, 1
  store i32 %inc20.i, ptr %pending19.i, align 8
  %idxprom21.i = zext i32 %67 to i64
  %arrayidx22.i = getelementptr inbounds i8, ptr %66, i64 %idxprom21.i
  store i8 %conv17.i, ptr %arrayidx22.i, align 1
  %68 = load ptr, ptr %s.addr.i, align 8
  %bi_buf23.i = getelementptr inbounds %struct.internal_state, ptr %68, i64 0, i32 56
  %69 = load i16, ptr %bi_buf23.i, align 8
  %70 = lshr i16 %69, 8
  store i16 %70, ptr %bi_buf23.i, align 8
  %bi_valid27.i = getelementptr inbounds %struct.internal_state, ptr %68, i64 0, i32 57
  %71 = load i32, ptr %bi_valid27.i, align 4
  %sub.i = add nsw i32 %71, -8
  store i32 %sub.i, ptr %bi_valid27.i, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_4.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_4.exit: ; preds = %if.else.i, %if.then15.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i)
  %72 = load ptr, ptr %s.addr, align 8
  %last_eob_len = getelementptr inbounds %struct.internal_state, ptr %72, i64 0, i32 55
  %73 = load i32, ptr %last_eob_len, align 4
  %add95 = add nsw i32 %73, 11
  %bi_valid96 = getelementptr inbounds %struct.internal_state, ptr %72, i64 0, i32 57
  %74 = load i32, ptr %bi_valid96, align 4
  %sub97 = sub nsw i32 %add95, %74
  %cmp98 = icmp slt i32 %sub97, 9
  br i1 %cmp98, label %if.then100, label %if.end216

if.then100:                                       ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_4.exit
  store i32 3, ptr %len101, align 4
  %75 = load ptr, ptr %s.addr, align 8
  %bi_valid102 = getelementptr inbounds %struct.internal_state, ptr %75, i64 0, i32 57
  %76 = load i32, ptr %bi_valid102, align 4
  %cmp104 = icmp sgt i32 %76, 13
  br i1 %cmp104, label %if.then106, label %if.else147

if.then106:                                       ; preds = %if.then100
  store i32 2, ptr %val107, align 4
  %77 = load ptr, ptr %s.addr, align 8
  %bi_valid108 = getelementptr inbounds %struct.internal_state, ptr %77, i64 0, i32 57
  %78 = load i32, ptr %bi_valid108, align 4
  %shl109 = shl i32 2, %78
  %bi_buf110 = getelementptr inbounds %struct.internal_state, ptr %77, i64 0, i32 56
  %79 = load i16, ptr %bi_buf110, align 8
  %80 = trunc i32 %shl109 to i16
  %conv113 = or i16 %79, %80
  store i16 %conv113, ptr %bi_buf110, align 8
  %81 = load ptr, ptr %s.addr, align 8
  %bi_buf114 = getelementptr inbounds %struct.internal_state, ptr %81, i64 0, i32 56
  %82 = load i16, ptr %bi_buf114, align 8
  %conv117 = trunc i16 %82 to i8
  %pending_buf118 = getelementptr inbounds %struct.internal_state, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %pending_buf118, align 8
  %pending119 = getelementptr inbounds %struct.internal_state, ptr %81, i64 0, i32 5
  %84 = load i32, ptr %pending119, align 8
  %inc120 = add i32 %84, 1
  store i32 %inc120, ptr %pending119, align 8
  %idxprom121 = zext i32 %84 to i64
  %arrayidx122 = getelementptr inbounds i8, ptr %83, i64 %idxprom121
  store i8 %conv117, ptr %arrayidx122, align 1
  %85 = load ptr, ptr %s.addr, align 8
  %bi_buf123 = getelementptr inbounds %struct.internal_state, ptr %85, i64 0, i32 56
  %86 = load i16, ptr %bi_buf123, align 8
  %87 = lshr i16 %86, 8
  %conv126 = trunc i16 %87 to i8
  %pending_buf127 = getelementptr inbounds %struct.internal_state, ptr %85, i64 0, i32 2
  %88 = load ptr, ptr %pending_buf127, align 8
  %89 = load ptr, ptr %s.addr, align 8
  %pending128 = getelementptr inbounds %struct.internal_state, ptr %89, i64 0, i32 5
  %90 = load i32, ptr %pending128, align 8
  %inc129 = add i32 %90, 1
  store i32 %inc129, ptr %pending128, align 8
  %idxprom130 = zext i32 %90 to i64
  %arrayidx131 = getelementptr inbounds i8, ptr %88, i64 %idxprom130
  store i8 %conv126, ptr %arrayidx131, align 1
  %91 = load i32, ptr %val107, align 4
  %conv133 = and i32 %91, 65535
  %92 = load ptr, ptr %s.addr, align 8
  %bi_valid134 = getelementptr inbounds %struct.internal_state, ptr %92, i64 0, i32 57
  %93 = load i32, ptr %bi_valid134, align 4
  %sub136 = sub i32 16, %93
  %shr138 = lshr i32 %conv133, %sub136
  %conv139 = trunc i32 %shr138 to i16
  %bi_buf140 = getelementptr inbounds %struct.internal_state, ptr %92, i64 0, i32 56
  store i16 %conv139, ptr %bi_buf140, align 8
  %94 = load i32, ptr %len101, align 4
  %sub142 = add i32 %94, -16
  %95 = load ptr, ptr %s.addr, align 8
  %bi_valid143 = getelementptr inbounds %struct.internal_state, ptr %95, i64 0, i32 57
  %96 = load i32, ptr %bi_valid143, align 4
  %add145 = add i32 %sub142, %96
  store i32 %add145, ptr %bi_valid143, align 4
  br label %if.end156

if.else147:                                       ; preds = %if.then100
  %97 = load ptr, ptr %s.addr, align 8
  %bi_valid148 = getelementptr inbounds %struct.internal_state, ptr %97, i64 0, i32 57
  %98 = load i32, ptr %bi_valid148, align 4
  %shl149 = shl i32 2, %98
  %bi_buf150 = getelementptr inbounds %struct.internal_state, ptr %97, i64 0, i32 56
  %99 = load i16, ptr %bi_buf150, align 8
  %100 = trunc i32 %shl149 to i16
  %conv153 = or i16 %99, %100
  store i16 %conv153, ptr %bi_buf150, align 8
  %101 = load i32, ptr %len101, align 4
  %102 = load ptr, ptr %s.addr, align 8
  %bi_valid154 = getelementptr inbounds %struct.internal_state, ptr %102, i64 0, i32 57
  %103 = load i32, ptr %bi_valid154, align 4
  %add155 = add nsw i32 %103, %101
  store i32 %add155, ptr %bi_valid154, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.else147, %if.then106
  store i32 7, ptr %len157, align 4
  %104 = load ptr, ptr %s.addr, align 8
  %bi_valid159 = getelementptr inbounds %struct.internal_state, ptr %104, i64 0, i32 57
  %105 = load i32, ptr %bi_valid159, align 4
  %cmp161 = icmp sgt i32 %105, 9
  br i1 %cmp161, label %if.then163, label %if.else205

if.then163:                                       ; preds = %if.end156
  store i32 0, ptr %val164, align 4
  %106 = load ptr, ptr %s.addr, align 8
  %bi_buf172 = getelementptr inbounds %struct.internal_state, ptr %106, i64 0, i32 56
  %107 = load i16, ptr %bi_buf172, align 8
  %conv175 = trunc i16 %107 to i8
  %pending_buf176 = getelementptr inbounds %struct.internal_state, ptr %106, i64 0, i32 2
  %108 = load ptr, ptr %pending_buf176, align 8
  %pending177 = getelementptr inbounds %struct.internal_state, ptr %106, i64 0, i32 5
  %109 = load i32, ptr %pending177, align 8
  %inc178 = add i32 %109, 1
  store i32 %inc178, ptr %pending177, align 8
  %idxprom179 = zext i32 %109 to i64
  %arrayidx180 = getelementptr inbounds i8, ptr %108, i64 %idxprom179
  store i8 %conv175, ptr %arrayidx180, align 1
  %110 = load ptr, ptr %s.addr, align 8
  %bi_buf181 = getelementptr inbounds %struct.internal_state, ptr %110, i64 0, i32 56
  %111 = load i16, ptr %bi_buf181, align 8
  %112 = lshr i16 %111, 8
  %conv184 = trunc i16 %112 to i8
  %pending_buf185 = getelementptr inbounds %struct.internal_state, ptr %110, i64 0, i32 2
  %113 = load ptr, ptr %pending_buf185, align 8
  %114 = load ptr, ptr %s.addr, align 8
  %pending186 = getelementptr inbounds %struct.internal_state, ptr %114, i64 0, i32 5
  %115 = load i32, ptr %pending186, align 8
  %inc187 = add i32 %115, 1
  store i32 %inc187, ptr %pending186, align 8
  %idxprom188 = zext i32 %115 to i64
  %arrayidx189 = getelementptr inbounds i8, ptr %113, i64 %idxprom188
  store i8 %conv184, ptr %arrayidx189, align 1
  %116 = load i32, ptr %val164, align 4
  %conv191 = and i32 %116, 65535
  %117 = load ptr, ptr %s.addr, align 8
  %bi_valid192 = getelementptr inbounds %struct.internal_state, ptr %117, i64 0, i32 57
  %118 = load i32, ptr %bi_valid192, align 4
  %sub194 = sub i32 16, %118
  %shr196 = lshr i32 %conv191, %sub194
  %conv197 = trunc i32 %shr196 to i16
  %bi_buf198 = getelementptr inbounds %struct.internal_state, ptr %117, i64 0, i32 56
  store i16 %conv197, ptr %bi_buf198, align 8
  %119 = load i32, ptr %len157, align 4
  %sub200 = add i32 %119, -16
  %120 = load ptr, ptr %s.addr, align 8
  %bi_valid201 = getelementptr inbounds %struct.internal_state, ptr %120, i64 0, i32 57
  %121 = load i32, ptr %bi_valid201, align 4
  %add203 = add i32 %sub200, %121
  store i32 %add203, ptr %bi_valid201, align 4
  br label %if.end215

if.else205:                                       ; preds = %if.end156
  %122 = load i32, ptr %len157, align 4
  %123 = load ptr, ptr %s.addr, align 8
  %bi_valid213 = getelementptr inbounds %struct.internal_state, ptr %123, i64 0, i32 57
  %124 = load i32, ptr %bi_valid213, align 4
  %add214 = add nsw i32 %124, %122
  store i32 %add214, ptr %bi_valid213, align 4
  br label %if.end215

if.end215:                                        ; preds = %if.else205, %if.then163
  %125 = load ptr, ptr %s.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i1)
  store ptr %125, ptr %s.addr.i1, align 8
  %bi_valid.i2 = getelementptr inbounds %struct.internal_state, ptr %125, i64 0, i32 57
  %126 = load i32, ptr %bi_valid.i2, align 4
  %cmp.i3 = icmp eq i32 %126, 16
  br i1 %cmp.i3, label %if.then.i24, label %if.else.i27

if.then.i24:                                      ; preds = %if.end215
  %127 = load ptr, ptr %s.addr.i1, align 8
  %bi_buf.i4 = getelementptr inbounds %struct.internal_state, ptr %127, i64 0, i32 56
  %128 = load i16, ptr %bi_buf.i4, align 8
  %conv1.i7 = trunc i16 %128 to i8
  %pending_buf.i8 = getelementptr inbounds %struct.internal_state, ptr %127, i64 0, i32 2
  %129 = load ptr, ptr %pending_buf.i8, align 8
  %pending.i9 = getelementptr inbounds %struct.internal_state, ptr %127, i64 0, i32 5
  %130 = load i32, ptr %pending.i9, align 8
  %inc.i10 = add i32 %130, 1
  store i32 %inc.i10, ptr %pending.i9, align 8
  %idxprom.i11 = zext i32 %130 to i64
  %arrayidx.i12 = getelementptr inbounds i8, ptr %129, i64 %idxprom.i11
  store i8 %conv1.i7, ptr %arrayidx.i12, align 1
  %131 = load ptr, ptr %s.addr.i1, align 8
  %bi_buf2.i13 = getelementptr inbounds %struct.internal_state, ptr %131, i64 0, i32 56
  %132 = load i16, ptr %bi_buf2.i13, align 8
  %133 = lshr i16 %132, 8
  %conv4.i16 = trunc i16 %133 to i8
  %pending_buf5.i17 = getelementptr inbounds %struct.internal_state, ptr %131, i64 0, i32 2
  %134 = load ptr, ptr %pending_buf5.i17, align 8
  %135 = load ptr, ptr %s.addr.i1, align 8
  %pending6.i18 = getelementptr inbounds %struct.internal_state, ptr %135, i64 0, i32 5
  %136 = load i32, ptr %pending6.i18, align 8
  %inc7.i19 = add i32 %136, 1
  store i32 %inc7.i19, ptr %pending6.i18, align 8
  %idxprom8.i20 = zext i32 %136 to i64
  %arrayidx9.i21 = getelementptr inbounds i8, ptr %134, i64 %idxprom8.i20
  store i8 %conv4.i16, ptr %arrayidx9.i21, align 1
  %137 = load ptr, ptr %s.addr.i1, align 8
  %bi_buf10.i22 = getelementptr inbounds %struct.internal_state, ptr %137, i64 0, i32 56
  store i16 0, ptr %bi_buf10.i22, align 8
  %bi_valid11.i23 = getelementptr inbounds %struct.internal_state, ptr %137, i64 0, i32 57
  store i32 0, ptr %bi_valid11.i23, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_5.exit

if.else.i27:                                      ; preds = %if.end215
  %138 = load ptr, ptr %s.addr.i1, align 8
  %bi_valid12.i25 = getelementptr inbounds %struct.internal_state, ptr %138, i64 0, i32 57
  %139 = load i32, ptr %bi_valid12.i25, align 4
  %cmp13.i26 = icmp sgt i32 %139, 7
  br i1 %cmp13.i26, label %if.then15.i41, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_5.exit

if.then15.i41:                                    ; preds = %if.else.i27
  %140 = load ptr, ptr %s.addr.i1, align 8
  %bi_buf16.i28 = getelementptr inbounds %struct.internal_state, ptr %140, i64 0, i32 56
  %141 = load i16, ptr %bi_buf16.i28, align 8
  %conv17.i29 = trunc i16 %141 to i8
  %pending_buf18.i30 = getelementptr inbounds %struct.internal_state, ptr %140, i64 0, i32 2
  %142 = load ptr, ptr %pending_buf18.i30, align 8
  %pending19.i31 = getelementptr inbounds %struct.internal_state, ptr %140, i64 0, i32 5
  %143 = load i32, ptr %pending19.i31, align 8
  %inc20.i32 = add i32 %143, 1
  store i32 %inc20.i32, ptr %pending19.i31, align 8
  %idxprom21.i33 = zext i32 %143 to i64
  %arrayidx22.i34 = getelementptr inbounds i8, ptr %142, i64 %idxprom21.i33
  store i8 %conv17.i29, ptr %arrayidx22.i34, align 1
  %144 = load ptr, ptr %s.addr.i1, align 8
  %bi_buf23.i35 = getelementptr inbounds %struct.internal_state, ptr %144, i64 0, i32 56
  %145 = load i16, ptr %bi_buf23.i35, align 8
  %146 = lshr i16 %145, 8
  store i16 %146, ptr %bi_buf23.i35, align 8
  %bi_valid27.i39 = getelementptr inbounds %struct.internal_state, ptr %144, i64 0, i32 57
  %147 = load i32, ptr %bi_valid27.i39, align 4
  %sub.i40 = add nsw i32 %147, -8
  store i32 %sub.i40, ptr %bi_valid27.i39, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_5.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_5.exit: ; preds = %if.else.i27, %if.then15.i41, %if.then.i24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i1)
  br label %if.end216

if.end216:                                        ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_5.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_4.exit
  %148 = load ptr, ptr %s.addr, align 8
  %last_eob_len217 = getelementptr inbounds %struct.internal_state, ptr %148, i64 0, i32 55
  store i32 7, ptr %last_eob_len217, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_tr_flush_block(ptr noundef %s, ptr noundef %buf, i64 noundef %stored_len, i32 noundef %eof) #0 {
entry:
  %s.addr.i764 = alloca ptr, align 8
  %s.addr.i747 = alloca ptr, align 8
  %n.i748 = alloca i32, align 4
  %s.addr.i309 = alloca ptr, align 8
  %ltree.addr.i310 = alloca ptr, align 8
  %dtree.addr.i311 = alloca ptr, align 8
  %dist.i312 = alloca i32, align 4
  %lc.i313 = alloca i32, align 4
  %lx.i314 = alloca i32, align 4
  %code.i315 = alloca i32, align 4
  %extra.i316 = alloca i32, align 4
  %len.i317 = alloca i32, align 4
  %val.i318 = alloca i32, align 4
  %len62.i319 = alloca i32, align 4
  %val74.i320 = alloca i32, align 4
  %len144.i321 = alloca i32, align 4
  %val150.i322 = alloca i32, align 4
  %len211.i323 = alloca i32, align 4
  %val221.i324 = alloca i32, align 4
  %len287.i325 = alloca i32, align 4
  %val293.i326 = alloca i32, align 4
  %len349.i327 = alloca i32, align 4
  %val358.i328 = alloca i32, align 4
  %s.addr.i244 = alloca ptr, align 8
  %lcodes.addr.i = alloca i32, align 4
  %dcodes.addr.i = alloca i32, align 4
  %blcodes.addr.i = alloca i32, align 4
  %rank.i = alloca i32, align 4
  %len.i245 = alloca i32, align 4
  %val.i246 = alloca i32, align 4
  %len37.i = alloca i32, align 4
  %val43.i = alloca i32, align 4
  %len95.i = alloca i32, align 4
  %val101.i = alloca i32, align 4
  %len155.i = alloca i32, align 4
  %val161.i = alloca i32, align 4
  %s.addr.i198 = alloca ptr, align 8
  %ltree.addr.i = alloca ptr, align 8
  %dtree.addr.i = alloca ptr, align 8
  %dist.i = alloca i32, align 4
  %lc.i = alloca i32, align 4
  %lx.i = alloca i32, align 4
  %code.i = alloca i32, align 4
  %extra.i = alloca i32, align 4
  %len.i199 = alloca i32, align 4
  %val.i200 = alloca i32, align 4
  %len62.i = alloca i32, align 4
  %val74.i = alloca i32, align 4
  %len144.i = alloca i32, align 4
  %val150.i = alloca i32, align 4
  %len211.i = alloca i32, align 4
  %val221.i = alloca i32, align 4
  %len287.i = alloca i32, align 4
  %val293.i = alloca i32, align 4
  %len349.i = alloca i32, align 4
  %val358.i = alloca i32, align 4
  %s.addr.i186 = alloca ptr, align 8
  %buf.addr.i = alloca ptr, align 8
  %stored_len.addr.i = alloca i64, align 8
  %eof.addr.i = alloca i32, align 4
  %len.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  %s.addr.i170 = alloca ptr, align 8
  %max_blindex.i = alloca i32, align 4
  %s.addr.i15 = alloca ptr, align 8
  %desc.addr.i16 = alloca ptr, align 8
  %tree.i17 = alloca ptr, align 8
  %stree.i18 = alloca ptr, align 8
  %elems.i19 = alloca i32, align 4
  %n.i20 = alloca i32, align 4
  %m.i21 = alloca i32, align 4
  %max_code.i22 = alloca i32, align 4
  %node.i23 = alloca i32, align 4
  %s.addr.i1 = alloca ptr, align 8
  %desc.addr.i = alloca ptr, align 8
  %tree.i = alloca ptr, align 8
  %stree.i = alloca ptr, align 8
  %elems.i = alloca i32, align 4
  %n.i2 = alloca i32, align 4
  %m.i = alloca i32, align 4
  %max_code.i = alloca i32, align 4
  %node.i = alloca i32, align 4
  %s.addr.i = alloca ptr, align 8
  %n.i = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i)
  store ptr %5, ptr %s.addr.i, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i, %if.then3
  %storemerge796 = phi i32 [ 0, %if.then3 ], [ %inc.i, %if.end.i ]
  store i32 %storemerge796, ptr %n.i, align 4
  %cmp.i = icmp slt i32 %storemerge796, 9
  br i1 %cmp.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %6 = load ptr, ptr %s.addr.i, align 8
  %7 = load i32, ptr %n.i, align 4
  %idxprom.i = sext i32 %7 to i64
  %arrayidx.i = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 37, i64 %idxprom.i
  %8 = load i16, ptr %arrayidx.i, align 4
  %cmp1.i.not = icmp eq i16 %8, 0
  br i1 %cmp1.i.not, label %if.end.i, label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  %9 = load i32, ptr %n.i, align 4
  %inc.i = add nsw i32 %9, 1
  br label %for.cond.i, !llvm.loop !11

for.end.i:                                        ; preds = %for.body.i, %for.cond.i
  %10 = load i32, ptr %n.i, align 4
  %cmp3.i = icmp eq i32 %10, 9
  br i1 %cmp3.i, label %for.cond6.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_6.exit

for.cond6.i:                                      ; preds = %for.end.i, %if.end18.i
  %storemerge797 = phi i32 [ %inc20.i, %if.end18.i ], [ 14, %for.end.i ]
  store i32 %storemerge797, ptr %n.i, align 4
  %cmp7.i = icmp slt i32 %storemerge797, 32
  br i1 %cmp7.i, label %for.body9.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_6.exit

for.body9.i:                                      ; preds = %for.cond6.i
  %11 = load ptr, ptr %s.addr.i, align 8
  %12 = load i32, ptr %n.i, align 4
  %idxprom11.i = sext i32 %12 to i64
  %arrayidx12.i = getelementptr inbounds %struct.internal_state, ptr %11, i64 0, i32 37, i64 %idxprom11.i
  %13 = load i16, ptr %arrayidx12.i, align 4
  %cmp15.i.not = icmp eq i16 %13, 0
  br i1 %cmp15.i.not, label %if.end18.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_6.exit

if.end18.i:                                       ; preds = %for.body9.i
  %14 = load i32, ptr %n.i, align 4
  %inc20.i = add nsw i32 %14, 1
  br label %for.cond6.i, !llvm.loop !12

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_6.exit: ; preds = %for.cond6.i, %for.body9.i, %for.end.i
  %15 = load i32, ptr %n.i, align 4
  %cmp23.i = icmp eq i32 %15, 32
  %cond.i = zext i1 %cmp23.i to i32
  %16 = load ptr, ptr %s.addr.i, align 8
  %17 = load ptr, ptr %16, align 8
  %data_type.i = getelementptr inbounds %struct.z_stream_s, ptr %17, i64 0, i32 11
  store i32 %cond.i, ptr %data_type.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i)
  br label %if.end

if.end:                                           ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_6.exit, %land.lhs.true, %if.then
  %18 = load ptr, ptr %s.addr, align 8
  %l_desc = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %desc.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tree.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stree.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elems.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i2)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_code.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %node.i)
  store ptr %18, ptr %s.addr.i1, align 8
  store ptr %l_desc, ptr %desc.addr.i, align 8
  %19 = load ptr, ptr %l_desc, align 8
  store ptr %19, ptr %tree.i, align 8
  %stat_desc.i = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 40, i32 2
  %20 = load ptr, ptr %stat_desc.i, align 8
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %stree.i, align 8
  %22 = load ptr, ptr %desc.addr.i, align 8
  %stat_desc1.i = getelementptr inbounds %struct.tree_desc_s, ptr %22, i64 0, i32 2
  %23 = load ptr, ptr %stat_desc1.i, align 8
  %elems2.i = getelementptr inbounds %struct.static_tree_desc_s, ptr %23, i64 0, i32 3
  %24 = load i32, ptr %elems2.i, align 4
  store i32 %24, ptr %elems.i, align 4
  store i32 -1, ptr %max_code.i, align 4
  %25 = load ptr, ptr %s.addr.i1, align 8
  %heap_len.i = getelementptr inbounds %struct.internal_state, ptr %25, i64 0, i32 45
  store i32 0, ptr %heap_len.i, align 4
  %heap_max.i = getelementptr inbounds %struct.internal_state, ptr %25, i64 0, i32 46
  store i32 573, ptr %heap_max.i, align 8
  br label %for.cond.i4

for.cond.i4:                                      ; preds = %if.end.i12, %if.end
  %storemerge791 = phi i32 [ 0, %if.end ], [ %inc12.i, %if.end.i12 ]
  store i32 %storemerge791, ptr %n.i2, align 4
  %26 = load i32, ptr %elems.i, align 4
  %cmp.i3 = icmp slt i32 %storemerge791, %26
  br i1 %cmp.i3, label %for.body.i9, label %while.cond.i

for.body.i9:                                      ; preds = %for.cond.i4
  %27 = load ptr, ptr %tree.i, align 8
  %28 = load i32, ptr %n.i2, align 4
  %idxprom.i5 = sext i32 %28 to i64
  %arrayidx.i6 = getelementptr inbounds %struct.ct_data_s, ptr %27, i64 %idxprom.i5
  %29 = load i16, ptr %arrayidx.i6, align 2
  %cmp3.i8.not = icmp eq i16 %29, 0
  br i1 %cmp3.i8.not, label %if.else.i, label %if.then.i11

if.then.i11:                                      ; preds = %for.body.i9
  %30 = load i32, ptr %n.i2, align 4
  store i32 %30, ptr %max_code.i, align 4
  %31 = load ptr, ptr %s.addr.i1, align 8
  %heap_len5.i = getelementptr inbounds %struct.internal_state, ptr %31, i64 0, i32 45
  %32 = load i32, ptr %heap_len5.i, align 4
  %inc.i10 = add nsw i32 %32, 1
  store i32 %inc.i10, ptr %heap_len5.i, align 4
  %idxprom6.i = sext i32 %inc.i10 to i64
  %arrayidx7.i = getelementptr inbounds %struct.internal_state, ptr %31, i64 0, i32 44, i64 %idxprom6.i
  store i32 %30, ptr %arrayidx7.i, align 4
  %33 = load ptr, ptr %s.addr.i1, align 8
  %34 = load i32, ptr %n.i2, align 4
  %idxprom8.i = sext i32 %34 to i64
  %arrayidx9.i = getelementptr inbounds %struct.internal_state, ptr %33, i64 0, i32 47, i64 %idxprom8.i
  store i8 0, ptr %arrayidx9.i, align 1
  br label %if.end.i12

if.else.i:                                        ; preds = %for.body.i9
  %35 = load ptr, ptr %tree.i, align 8
  %36 = load i32, ptr %n.i2, align 4
  %idxprom10.i = sext i32 %36 to i64
  %dl.i = getelementptr inbounds %struct.ct_data_s, ptr %35, i64 %idxprom10.i, i32 1
  store i16 0, ptr %dl.i, align 2
  br label %if.end.i12

if.end.i12:                                       ; preds = %if.else.i, %if.then.i11
  %37 = load i32, ptr %n.i2, align 4
  %inc12.i = add nsw i32 %37, 1
  br label %for.cond.i4, !llvm.loop !13

while.cond.i:                                     ; preds = %for.cond.i4, %if.end35.i
  %38 = load ptr, ptr %s.addr.i1, align 8
  %heap_len13.i = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 45
  %39 = load i32, ptr %heap_len13.i, align 4
  %cmp14.i = icmp slt i32 %39, 2
  br i1 %cmp14.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %40 = load i32, ptr %max_code.i, align 4
  %cmp16.i = icmp slt i32 %40, 2
  br i1 %cmp16.i, label %cond.true.i, label %cond.end.i

cond.true.i:                                      ; preds = %while.body.i
  %41 = load i32, ptr %max_code.i, align 4
  %inc18.i = add nsw i32 %41, 1
  store i32 %inc18.i, ptr %max_code.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %while.body.i, %cond.true.i
  %cond.i14 = phi i32 [ %inc18.i, %cond.true.i ], [ 0, %while.body.i ]
  %42 = load ptr, ptr %s.addr.i1, align 8
  %heap_len20.i = getelementptr inbounds %struct.internal_state, ptr %42, i64 0, i32 45
  %43 = load i32, ptr %heap_len20.i, align 4
  %inc21.i = add nsw i32 %43, 1
  store i32 %inc21.i, ptr %heap_len20.i, align 4
  %idxprom22.i = sext i32 %inc21.i to i64
  %arrayidx23.i = getelementptr inbounds %struct.internal_state, ptr %42, i64 0, i32 44, i64 %idxprom22.i
  store i32 %cond.i14, ptr %arrayidx23.i, align 4
  store i32 %cond.i14, ptr %node.i, align 4
  %44 = load ptr, ptr %tree.i, align 8
  %idxprom24.i = sext i32 %cond.i14 to i64
  %arrayidx25.i = getelementptr inbounds %struct.ct_data_s, ptr %44, i64 %idxprom24.i
  store i16 1, ptr %arrayidx25.i, align 2
  %45 = load ptr, ptr %s.addr.i1, align 8
  %idxprom28.i = sext i32 %cond.i14 to i64
  %arrayidx29.i = getelementptr inbounds %struct.internal_state, ptr %45, i64 0, i32 47, i64 %idxprom28.i
  store i8 0, ptr %arrayidx29.i, align 1
  %opt_len.i = getelementptr inbounds %struct.internal_state, ptr %45, i64 0, i32 52
  %46 = load i64, ptr %opt_len.i, align 8
  %dec.i = add i64 %46, -1
  store i64 %dec.i, ptr %opt_len.i, align 8
  %47 = load ptr, ptr %stree.i, align 8
  %tobool.i.not = icmp eq ptr %47, null
  br i1 %tobool.i.not, label %if.end35.i, label %if.then30.i

if.then30.i:                                      ; preds = %cond.end.i
  %48 = load ptr, ptr %stree.i, align 8
  %49 = load i32, ptr %node.i, align 4
  %idxprom31.i = sext i32 %49 to i64
  %dl33.i = getelementptr inbounds %struct.ct_data_s, ptr %48, i64 %idxprom31.i, i32 1
  %50 = load i16, ptr %dl33.i, align 2
  %conv34.i = zext i16 %50 to i64
  %51 = load ptr, ptr %s.addr.i1, align 8
  %static_len.i = getelementptr inbounds %struct.internal_state, ptr %51, i64 0, i32 53
  %52 = load i64, ptr %static_len.i, align 8
  %sub.i = sub i64 %52, %conv34.i
  store i64 %sub.i, ptr %static_len.i, align 8
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then30.i, %cond.end.i
  br label %while.cond.i, !llvm.loop !14

while.end.i:                                      ; preds = %while.cond.i
  %53 = load i32, ptr %max_code.i, align 4
  %54 = load ptr, ptr %desc.addr.i, align 8
  %max_code36.i = getelementptr inbounds %struct.tree_desc_s, ptr %54, i64 0, i32 1
  store i32 %53, ptr %max_code36.i, align 8
  %55 = load ptr, ptr %s.addr.i1, align 8
  %heap_len37.i = getelementptr inbounds %struct.internal_state, ptr %55, i64 0, i32 45
  %56 = load i32, ptr %heap_len37.i, align 4
  %div.i = sdiv i32 %56, 2
  br label %for.cond38.i

for.cond38.i:                                     ; preds = %for.body41.i, %while.end.i
  %storemerge792 = phi i32 [ %div.i, %while.end.i ], [ %dec43.i, %for.body41.i ]
  store i32 %storemerge792, ptr %n.i2, align 4
  %cmp39.i = icmp sgt i32 %storemerge792, 0
  br i1 %cmp39.i, label %for.body41.i, label %for.end44.i

for.body41.i:                                     ; preds = %for.cond38.i
  %57 = load ptr, ptr %s.addr.i1, align 8
  %58 = load ptr, ptr %tree.i, align 8
  %59 = load i32, ptr %n.i2, align 4
  call void @pqdownheap(ptr noundef %57, ptr noundef %58, i32 noundef %59)
  %dec43.i = add nsw i32 %59, -1
  br label %for.cond38.i, !llvm.loop !15

for.end44.i:                                      ; preds = %for.cond38.i
  %60 = load i32, ptr %elems.i, align 4
  store i32 %60, ptr %node.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %cond.end98.i, %for.end44.i
  %61 = load ptr, ptr %s.addr.i1, align 8
  %arrayidx46.i = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 44, i64 1
  %62 = load i32, ptr %arrayidx46.i, align 4
  store i32 %62, ptr %n.i2, align 4
  %heap_len48.i = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 45
  %63 = load i32, ptr %heap_len48.i, align 4
  %dec49.i = add nsw i32 %63, -1
  store i32 %dec49.i, ptr %heap_len48.i, align 4
  %idxprom50.i = sext i32 %63 to i64
  %arrayidx51.i = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 44, i64 %idxprom50.i
  %64 = load i32, ptr %arrayidx51.i, align 4
  %65 = load ptr, ptr %s.addr.i1, align 8
  %arrayidx53.i = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 44, i64 1
  store i32 %64, ptr %arrayidx53.i, align 4
  %66 = load ptr, ptr %tree.i, align 8
  call void @pqdownheap(ptr noundef %65, ptr noundef %66, i32 noundef 1)
  %arrayidx55.i = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 44, i64 1
  %67 = load i32, ptr %arrayidx55.i, align 4
  store i32 %67, ptr %m.i, align 4
  %68 = load i32, ptr %n.i2, align 4
  %69 = load ptr, ptr %s.addr.i1, align 8
  %heap_max57.i = getelementptr inbounds %struct.internal_state, ptr %69, i64 0, i32 46
  %70 = load i32, ptr %heap_max57.i, align 8
  %dec58.i = add nsw i32 %70, -1
  store i32 %dec58.i, ptr %heap_max57.i, align 8
  %idxprom59.i = sext i32 %dec58.i to i64
  %arrayidx60.i = getelementptr inbounds %struct.internal_state, ptr %69, i64 0, i32 44, i64 %idxprom59.i
  store i32 %68, ptr %arrayidx60.i, align 4
  %71 = load i32, ptr %m.i, align 4
  %72 = load ptr, ptr %s.addr.i1, align 8
  %heap_max62.i = getelementptr inbounds %struct.internal_state, ptr %72, i64 0, i32 46
  %73 = load i32, ptr %heap_max62.i, align 8
  %dec63.i = add nsw i32 %73, -1
  store i32 %dec63.i, ptr %heap_max62.i, align 8
  %idxprom64.i = sext i32 %dec63.i to i64
  %arrayidx65.i = getelementptr inbounds %struct.internal_state, ptr %72, i64 0, i32 44, i64 %idxprom64.i
  store i32 %71, ptr %arrayidx65.i, align 4
  %74 = load ptr, ptr %tree.i, align 8
  %75 = load i32, ptr %n.i2, align 4
  %idxprom66.i = sext i32 %75 to i64
  %arrayidx67.i = getelementptr inbounds %struct.ct_data_s, ptr %74, i64 %idxprom66.i
  %76 = load i16, ptr %arrayidx67.i, align 2
  %77 = load i32, ptr %m.i, align 4
  %idxprom70.i = sext i32 %77 to i64
  %arrayidx71.i = getelementptr inbounds %struct.ct_data_s, ptr %74, i64 %idxprom70.i
  %78 = load i16, ptr %arrayidx71.i, align 2
  %add.i = add i16 %76, %78
  %79 = load ptr, ptr %tree.i, align 8
  %80 = load i32, ptr %node.i, align 4
  %idxprom75.i = sext i32 %80 to i64
  %arrayidx76.i = getelementptr inbounds %struct.ct_data_s, ptr %79, i64 %idxprom75.i
  store i16 %add.i, ptr %arrayidx76.i, align 2
  %81 = load ptr, ptr %s.addr.i1, align 8
  %82 = load i32, ptr %n.i2, align 4
  %idxprom79.i = sext i32 %82 to i64
  %arrayidx80.i = getelementptr inbounds %struct.internal_state, ptr %81, i64 0, i32 47, i64 %idxprom79.i
  %83 = load i8, ptr %arrayidx80.i, align 1
  %84 = load i32, ptr %m.i, align 4
  %idxprom83.i = sext i32 %84 to i64
  %arrayidx84.i = getelementptr inbounds %struct.internal_state, ptr %81, i64 0, i32 47, i64 %idxprom83.i
  %85 = load i8, ptr %arrayidx84.i, align 1
  %cmp86.i.not = icmp ult i8 %83, %85
  br i1 %cmp86.i.not, label %cond.false93.i, label %cond.true88.i

cond.true88.i:                                    ; preds = %do.body.i
  %86 = load ptr, ptr %s.addr.i1, align 8
  %87 = load i32, ptr %n.i2, align 4
  %idxprom90.i = sext i32 %87 to i64
  %arrayidx91.i = getelementptr inbounds %struct.internal_state, ptr %86, i64 0, i32 47, i64 %idxprom90.i
  br label %cond.end98.i

cond.false93.i:                                   ; preds = %do.body.i
  %88 = load ptr, ptr %s.addr.i1, align 8
  %89 = load i32, ptr %m.i, align 4
  %idxprom95.i = sext i32 %89 to i64
  %arrayidx96.i = getelementptr inbounds %struct.internal_state, ptr %88, i64 0, i32 47, i64 %idxprom95.i
  br label %cond.end98.i

cond.end98.i:                                     ; preds = %cond.false93.i, %cond.true88.i
  %cond99.i.in.in = phi ptr [ %arrayidx91.i, %cond.true88.i ], [ %arrayidx96.i, %cond.false93.i ]
  %cond99.i.in = load i8, ptr %cond99.i.in.in, align 1
  %add100.i = add i8 %cond99.i.in, 1
  %90 = load ptr, ptr %s.addr.i1, align 8
  %91 = load i32, ptr %node.i, align 4
  %idxprom103.i = sext i32 %91 to i64
  %arrayidx104.i = getelementptr inbounds %struct.internal_state, ptr %90, i64 0, i32 47, i64 %idxprom103.i
  store i8 %add100.i, ptr %arrayidx104.i, align 1
  %conv105.i = trunc i32 %91 to i16
  %92 = load ptr, ptr %tree.i, align 8
  %93 = load i32, ptr %m.i, align 4
  %idxprom106.i = sext i32 %93 to i64
  %dl108.i = getelementptr inbounds %struct.ct_data_s, ptr %92, i64 %idxprom106.i, i32 1
  store i16 %conv105.i, ptr %dl108.i, align 2
  %94 = load i32, ptr %n.i2, align 4
  %idxprom109.i = sext i32 %94 to i64
  %dl111.i = getelementptr inbounds %struct.ct_data_s, ptr %92, i64 %idxprom109.i, i32 1
  store i16 %conv105.i, ptr %dl111.i, align 2
  %95 = load i32, ptr %node.i, align 4
  %inc112.i = add nsw i32 %95, 1
  store i32 %inc112.i, ptr %node.i, align 4
  %96 = load ptr, ptr %s.addr.i1, align 8
  %arrayidx114.i = getelementptr inbounds %struct.internal_state, ptr %96, i64 0, i32 44, i64 1
  store i32 %95, ptr %arrayidx114.i, align 4
  %97 = load ptr, ptr %tree.i, align 8
  call void @pqdownheap(ptr noundef %96, ptr noundef %97, i32 noundef 1)
  %heap_len115.i = getelementptr inbounds %struct.internal_state, ptr %96, i64 0, i32 45
  %98 = load i32, ptr %heap_len115.i, align 4
  %cmp116.i = icmp sgt i32 %98, 1
  br i1 %cmp116.i, label %do.body.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_7.exit, !llvm.loop !16

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_7.exit: ; preds = %cond.end98.i
  %99 = load ptr, ptr %s.addr.i1, align 8
  %arrayidx119.i = getelementptr inbounds %struct.internal_state, ptr %99, i64 0, i32 44, i64 1
  %100 = load i32, ptr %arrayidx119.i, align 4
  %heap_max121.i = getelementptr inbounds %struct.internal_state, ptr %99, i64 0, i32 46
  %101 = load i32, ptr %heap_max121.i, align 8
  %dec122.i = add nsw i32 %101, -1
  store i32 %dec122.i, ptr %heap_max121.i, align 8
  %idxprom123.i = sext i32 %dec122.i to i64
  %arrayidx124.i = getelementptr inbounds %struct.internal_state, ptr %99, i64 0, i32 44, i64 %idxprom123.i
  store i32 %100, ptr %arrayidx124.i, align 4
  %102 = load ptr, ptr %s.addr.i1, align 8
  %103 = load ptr, ptr %desc.addr.i, align 8
  call void @gen_bitlen(ptr noundef %102, ptr noundef %103)
  %104 = load ptr, ptr %tree.i, align 8
  %105 = load i32, ptr %max_code.i, align 4
  %bl_count.i = getelementptr inbounds %struct.internal_state, ptr %102, i64 0, i32 43
  call void @gen_codes(ptr noundef %104, i32 noundef %105, ptr noundef nonnull %bl_count.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %desc.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tree.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stree.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elems.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_code.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %node.i)
  %106 = load ptr, ptr %s.addr, align 8
  %d_desc = getelementptr inbounds %struct.internal_state, ptr %106, i64 0, i32 41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i15)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %desc.addr.i16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tree.i17)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stree.i18)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elems.i19)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m.i21)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_code.i22)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %node.i23)
  store ptr %106, ptr %s.addr.i15, align 8
  store ptr %d_desc, ptr %desc.addr.i16, align 8
  %107 = load ptr, ptr %d_desc, align 8
  store ptr %107, ptr %tree.i17, align 8
  %stat_desc.i24 = getelementptr inbounds %struct.internal_state, ptr %106, i64 0, i32 41, i32 2
  %108 = load ptr, ptr %stat_desc.i24, align 8
  %109 = load ptr, ptr %108, align 8
  store ptr %109, ptr %stree.i18, align 8
  %110 = load ptr, ptr %desc.addr.i16, align 8
  %stat_desc1.i25 = getelementptr inbounds %struct.tree_desc_s, ptr %110, i64 0, i32 2
  %111 = load ptr, ptr %stat_desc1.i25, align 8
  %elems2.i26 = getelementptr inbounds %struct.static_tree_desc_s, ptr %111, i64 0, i32 3
  %112 = load i32, ptr %elems2.i26, align 4
  store i32 %112, ptr %elems.i19, align 4
  store i32 -1, ptr %max_code.i22, align 4
  %113 = load ptr, ptr %s.addr.i15, align 8
  %heap_len.i27 = getelementptr inbounds %struct.internal_state, ptr %113, i64 0, i32 45
  store i32 0, ptr %heap_len.i27, align 4
  %heap_max.i28 = getelementptr inbounds %struct.internal_state, ptr %113, i64 0, i32 46
  store i32 573, ptr %heap_max.i28, align 8
  br label %for.cond.i30

for.cond.i30:                                     ; preds = %if.end.i49, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_7.exit
  %storemerge793 = phi i32 [ 0, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_7.exit ], [ %inc12.i50, %if.end.i49 ]
  store i32 %storemerge793, ptr %n.i20, align 4
  %114 = load i32, ptr %elems.i19, align 4
  %cmp.i29 = icmp slt i32 %storemerge793, %114
  br i1 %cmp.i29, label %for.body.i35, label %while.cond.i54

for.body.i35:                                     ; preds = %for.cond.i30
  %115 = load ptr, ptr %tree.i17, align 8
  %116 = load i32, ptr %n.i20, align 4
  %idxprom.i31 = sext i32 %116 to i64
  %arrayidx.i32 = getelementptr inbounds %struct.ct_data_s, ptr %115, i64 %idxprom.i31
  %117 = load i16, ptr %arrayidx.i32, align 2
  %cmp3.i34.not = icmp eq i16 %117, 0
  br i1 %cmp3.i34.not, label %if.else.i48, label %if.then.i44

if.then.i44:                                      ; preds = %for.body.i35
  %118 = load i32, ptr %n.i20, align 4
  store i32 %118, ptr %max_code.i22, align 4
  %119 = load ptr, ptr %s.addr.i15, align 8
  %heap_len5.i37 = getelementptr inbounds %struct.internal_state, ptr %119, i64 0, i32 45
  %120 = load i32, ptr %heap_len5.i37, align 4
  %inc.i38 = add nsw i32 %120, 1
  store i32 %inc.i38, ptr %heap_len5.i37, align 4
  %idxprom6.i39 = sext i32 %inc.i38 to i64
  %arrayidx7.i40 = getelementptr inbounds %struct.internal_state, ptr %119, i64 0, i32 44, i64 %idxprom6.i39
  store i32 %118, ptr %arrayidx7.i40, align 4
  %121 = load ptr, ptr %s.addr.i15, align 8
  %122 = load i32, ptr %n.i20, align 4
  %idxprom8.i42 = sext i32 %122 to i64
  %arrayidx9.i43 = getelementptr inbounds %struct.internal_state, ptr %121, i64 0, i32 47, i64 %idxprom8.i42
  store i8 0, ptr %arrayidx9.i43, align 1
  br label %if.end.i49

if.else.i48:                                      ; preds = %for.body.i35
  %123 = load ptr, ptr %tree.i17, align 8
  %124 = load i32, ptr %n.i20, align 4
  %idxprom10.i45 = sext i32 %124 to i64
  %dl.i47 = getelementptr inbounds %struct.ct_data_s, ptr %123, i64 %idxprom10.i45, i32 1
  store i16 0, ptr %dl.i47, align 2
  br label %if.end.i49

if.end.i49:                                       ; preds = %if.else.i48, %if.then.i44
  %125 = load i32, ptr %n.i20, align 4
  %inc12.i50 = add nsw i32 %125, 1
  br label %for.cond.i30, !llvm.loop !13

while.cond.i54:                                   ; preds = %for.cond.i30, %if.end35.i82
  %126 = load ptr, ptr %s.addr.i15, align 8
  %heap_len13.i52 = getelementptr inbounds %struct.internal_state, ptr %126, i64 0, i32 45
  %127 = load i32, ptr %heap_len13.i52, align 4
  %cmp14.i53 = icmp slt i32 %127, 2
  br i1 %cmp14.i53, label %while.body.i56, label %while.end.i86

while.body.i56:                                   ; preds = %while.cond.i54
  %128 = load i32, ptr %max_code.i22, align 4
  %cmp16.i55 = icmp slt i32 %128, 2
  br i1 %cmp16.i55, label %cond.true.i58, label %cond.end.i74

cond.true.i58:                                    ; preds = %while.body.i56
  %129 = load i32, ptr %max_code.i22, align 4
  %inc18.i57 = add nsw i32 %129, 1
  store i32 %inc18.i57, ptr %max_code.i22, align 4
  br label %cond.end.i74

cond.end.i74:                                     ; preds = %while.body.i56, %cond.true.i58
  %cond.i60 = phi i32 [ %inc18.i57, %cond.true.i58 ], [ 0, %while.body.i56 ]
  %130 = load ptr, ptr %s.addr.i15, align 8
  %heap_len20.i62 = getelementptr inbounds %struct.internal_state, ptr %130, i64 0, i32 45
  %131 = load i32, ptr %heap_len20.i62, align 4
  %inc21.i63 = add nsw i32 %131, 1
  store i32 %inc21.i63, ptr %heap_len20.i62, align 4
  %idxprom22.i64 = sext i32 %inc21.i63 to i64
  %arrayidx23.i65 = getelementptr inbounds %struct.internal_state, ptr %130, i64 0, i32 44, i64 %idxprom22.i64
  store i32 %cond.i60, ptr %arrayidx23.i65, align 4
  store i32 %cond.i60, ptr %node.i23, align 4
  %132 = load ptr, ptr %tree.i17, align 8
  %idxprom24.i66 = sext i32 %cond.i60 to i64
  %arrayidx25.i67 = getelementptr inbounds %struct.ct_data_s, ptr %132, i64 %idxprom24.i66
  store i16 1, ptr %arrayidx25.i67, align 2
  %133 = load ptr, ptr %s.addr.i15, align 8
  %idxprom28.i69 = sext i32 %cond.i60 to i64
  %arrayidx29.i70 = getelementptr inbounds %struct.internal_state, ptr %133, i64 0, i32 47, i64 %idxprom28.i69
  store i8 0, ptr %arrayidx29.i70, align 1
  %opt_len.i71 = getelementptr inbounds %struct.internal_state, ptr %133, i64 0, i32 52
  %134 = load i64, ptr %opt_len.i71, align 8
  %dec.i72 = add i64 %134, -1
  store i64 %dec.i72, ptr %opt_len.i71, align 8
  %135 = load ptr, ptr %stree.i18, align 8
  %tobool.i73.not = icmp eq ptr %135, null
  br i1 %tobool.i73.not, label %if.end35.i82, label %if.then30.i81

if.then30.i81:                                    ; preds = %cond.end.i74
  %136 = load ptr, ptr %stree.i18, align 8
  %137 = load i32, ptr %node.i23, align 4
  %idxprom31.i75 = sext i32 %137 to i64
  %dl33.i77 = getelementptr inbounds %struct.ct_data_s, ptr %136, i64 %idxprom31.i75, i32 1
  %138 = load i16, ptr %dl33.i77, align 2
  %conv34.i78 = zext i16 %138 to i64
  %139 = load ptr, ptr %s.addr.i15, align 8
  %static_len.i79 = getelementptr inbounds %struct.internal_state, ptr %139, i64 0, i32 53
  %140 = load i64, ptr %static_len.i79, align 8
  %sub.i80 = sub i64 %140, %conv34.i78
  store i64 %sub.i80, ptr %static_len.i79, align 8
  br label %if.end35.i82

if.end35.i82:                                     ; preds = %if.then30.i81, %cond.end.i74
  br label %while.cond.i54, !llvm.loop !14

while.end.i86:                                    ; preds = %while.cond.i54
  %141 = load i32, ptr %max_code.i22, align 4
  %142 = load ptr, ptr %desc.addr.i16, align 8
  %max_code36.i83 = getelementptr inbounds %struct.tree_desc_s, ptr %142, i64 0, i32 1
  store i32 %141, ptr %max_code36.i83, align 8
  %143 = load ptr, ptr %s.addr.i15, align 8
  %heap_len37.i84 = getelementptr inbounds %struct.internal_state, ptr %143, i64 0, i32 45
  %144 = load i32, ptr %heap_len37.i84, align 4
  %div.i85 = sdiv i32 %144, 2
  br label %for.cond38.i88

for.cond38.i88:                                   ; preds = %for.body41.i89, %while.end.i86
  %storemerge794 = phi i32 [ %div.i85, %while.end.i86 ], [ %dec43.i90, %for.body41.i89 ]
  store i32 %storemerge794, ptr %n.i20, align 4
  %cmp39.i87 = icmp sgt i32 %storemerge794, 0
  br i1 %cmp39.i87, label %for.body41.i89, label %for.end44.i91

for.body41.i89:                                   ; preds = %for.cond38.i88
  %145 = load ptr, ptr %s.addr.i15, align 8
  %146 = load ptr, ptr %tree.i17, align 8
  %147 = load i32, ptr %n.i20, align 4
  call void @pqdownheap(ptr noundef %145, ptr noundef %146, i32 noundef %147)
  %dec43.i90 = add nsw i32 %147, -1
  br label %for.cond38.i88, !llvm.loop !15

for.end44.i91:                                    ; preds = %for.cond38.i88
  %148 = load i32, ptr %elems.i19, align 4
  store i32 %148, ptr %node.i23, align 4
  br label %do.body.i132

do.body.i132:                                     ; preds = %cond.end98.i159, %for.end44.i91
  %149 = load ptr, ptr %s.addr.i15, align 8
  %arrayidx46.i93 = getelementptr inbounds %struct.internal_state, ptr %149, i64 0, i32 44, i64 1
  %150 = load i32, ptr %arrayidx46.i93, align 4
  store i32 %150, ptr %n.i20, align 4
  %heap_len48.i95 = getelementptr inbounds %struct.internal_state, ptr %149, i64 0, i32 45
  %151 = load i32, ptr %heap_len48.i95, align 4
  %dec49.i96 = add nsw i32 %151, -1
  store i32 %dec49.i96, ptr %heap_len48.i95, align 4
  %idxprom50.i97 = sext i32 %151 to i64
  %arrayidx51.i98 = getelementptr inbounds %struct.internal_state, ptr %149, i64 0, i32 44, i64 %idxprom50.i97
  %152 = load i32, ptr %arrayidx51.i98, align 4
  %153 = load ptr, ptr %s.addr.i15, align 8
  %arrayidx53.i100 = getelementptr inbounds %struct.internal_state, ptr %153, i64 0, i32 44, i64 1
  store i32 %152, ptr %arrayidx53.i100, align 4
  %154 = load ptr, ptr %tree.i17, align 8
  call void @pqdownheap(ptr noundef %153, ptr noundef %154, i32 noundef 1)
  %arrayidx55.i102 = getelementptr inbounds %struct.internal_state, ptr %153, i64 0, i32 44, i64 1
  %155 = load i32, ptr %arrayidx55.i102, align 4
  store i32 %155, ptr %m.i21, align 4
  %156 = load i32, ptr %n.i20, align 4
  %157 = load ptr, ptr %s.addr.i15, align 8
  %heap_max57.i104 = getelementptr inbounds %struct.internal_state, ptr %157, i64 0, i32 46
  %158 = load i32, ptr %heap_max57.i104, align 8
  %dec58.i105 = add nsw i32 %158, -1
  store i32 %dec58.i105, ptr %heap_max57.i104, align 8
  %idxprom59.i106 = sext i32 %dec58.i105 to i64
  %arrayidx60.i107 = getelementptr inbounds %struct.internal_state, ptr %157, i64 0, i32 44, i64 %idxprom59.i106
  store i32 %156, ptr %arrayidx60.i107, align 4
  %159 = load i32, ptr %m.i21, align 4
  %160 = load ptr, ptr %s.addr.i15, align 8
  %heap_max62.i109 = getelementptr inbounds %struct.internal_state, ptr %160, i64 0, i32 46
  %161 = load i32, ptr %heap_max62.i109, align 8
  %dec63.i110 = add nsw i32 %161, -1
  store i32 %dec63.i110, ptr %heap_max62.i109, align 8
  %idxprom64.i111 = sext i32 %dec63.i110 to i64
  %arrayidx65.i112 = getelementptr inbounds %struct.internal_state, ptr %160, i64 0, i32 44, i64 %idxprom64.i111
  store i32 %159, ptr %arrayidx65.i112, align 4
  %162 = load ptr, ptr %tree.i17, align 8
  %163 = load i32, ptr %n.i20, align 4
  %idxprom66.i113 = sext i32 %163 to i64
  %arrayidx67.i114 = getelementptr inbounds %struct.ct_data_s, ptr %162, i64 %idxprom66.i113
  %164 = load i16, ptr %arrayidx67.i114, align 2
  %165 = load i32, ptr %m.i21, align 4
  %idxprom70.i116 = sext i32 %165 to i64
  %arrayidx71.i117 = getelementptr inbounds %struct.ct_data_s, ptr %162, i64 %idxprom70.i116
  %166 = load i16, ptr %arrayidx71.i117, align 2
  %add.i119 = add i16 %164, %166
  %167 = load ptr, ptr %tree.i17, align 8
  %168 = load i32, ptr %node.i23, align 4
  %idxprom75.i121 = sext i32 %168 to i64
  %arrayidx76.i122 = getelementptr inbounds %struct.ct_data_s, ptr %167, i64 %idxprom75.i121
  store i16 %add.i119, ptr %arrayidx76.i122, align 2
  %169 = load ptr, ptr %s.addr.i15, align 8
  %170 = load i32, ptr %n.i20, align 4
  %idxprom79.i124 = sext i32 %170 to i64
  %arrayidx80.i125 = getelementptr inbounds %struct.internal_state, ptr %169, i64 0, i32 47, i64 %idxprom79.i124
  %171 = load i8, ptr %arrayidx80.i125, align 1
  %172 = load i32, ptr %m.i21, align 4
  %idxprom83.i128 = sext i32 %172 to i64
  %arrayidx84.i129 = getelementptr inbounds %struct.internal_state, ptr %169, i64 0, i32 47, i64 %idxprom83.i128
  %173 = load i8, ptr %arrayidx84.i129, align 1
  %cmp86.i131.not = icmp ult i8 %171, %173
  br i1 %cmp86.i131.not, label %cond.false93.i142, label %cond.true88.i137

cond.true88.i137:                                 ; preds = %do.body.i132
  %174 = load ptr, ptr %s.addr.i15, align 8
  %175 = load i32, ptr %n.i20, align 4
  %idxprom90.i134 = sext i32 %175 to i64
  %arrayidx91.i135 = getelementptr inbounds %struct.internal_state, ptr %174, i64 0, i32 47, i64 %idxprom90.i134
  br label %cond.end98.i159

cond.false93.i142:                                ; preds = %do.body.i132
  %176 = load ptr, ptr %s.addr.i15, align 8
  %177 = load i32, ptr %m.i21, align 4
  %idxprom95.i139 = sext i32 %177 to i64
  %arrayidx96.i140 = getelementptr inbounds %struct.internal_state, ptr %176, i64 0, i32 47, i64 %idxprom95.i139
  br label %cond.end98.i159

cond.end98.i159:                                  ; preds = %cond.false93.i142, %cond.true88.i137
  %cond99.i143.in.in = phi ptr [ %arrayidx91.i135, %cond.true88.i137 ], [ %arrayidx96.i140, %cond.false93.i142 ]
  %cond99.i143.in = load i8, ptr %cond99.i143.in.in, align 1
  %add100.i144 = add i8 %cond99.i143.in, 1
  %178 = load ptr, ptr %s.addr.i15, align 8
  %179 = load i32, ptr %node.i23, align 4
  %idxprom103.i147 = sext i32 %179 to i64
  %arrayidx104.i148 = getelementptr inbounds %struct.internal_state, ptr %178, i64 0, i32 47, i64 %idxprom103.i147
  store i8 %add100.i144, ptr %arrayidx104.i148, align 1
  %conv105.i149 = trunc i32 %179 to i16
  %180 = load ptr, ptr %tree.i17, align 8
  %181 = load i32, ptr %m.i21, align 4
  %idxprom106.i150 = sext i32 %181 to i64
  %dl108.i152 = getelementptr inbounds %struct.ct_data_s, ptr %180, i64 %idxprom106.i150, i32 1
  store i16 %conv105.i149, ptr %dl108.i152, align 2
  %182 = load i32, ptr %n.i20, align 4
  %idxprom109.i153 = sext i32 %182 to i64
  %dl111.i155 = getelementptr inbounds %struct.ct_data_s, ptr %180, i64 %idxprom109.i153, i32 1
  store i16 %conv105.i149, ptr %dl111.i155, align 2
  %183 = load i32, ptr %node.i23, align 4
  %inc112.i156 = add nsw i32 %183, 1
  store i32 %inc112.i156, ptr %node.i23, align 4
  %184 = load ptr, ptr %s.addr.i15, align 8
  %arrayidx114.i158 = getelementptr inbounds %struct.internal_state, ptr %184, i64 0, i32 44, i64 1
  store i32 %183, ptr %arrayidx114.i158, align 4
  %185 = load ptr, ptr %tree.i17, align 8
  call void @pqdownheap(ptr noundef %184, ptr noundef %185, i32 noundef 1)
  %heap_len115.i160 = getelementptr inbounds %struct.internal_state, ptr %184, i64 0, i32 45
  %186 = load i32, ptr %heap_len115.i160, align 4
  %cmp116.i161 = icmp sgt i32 %186, 1
  br i1 %cmp116.i161, label %do.body.i132, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_8.exit, !llvm.loop !16

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_8.exit: ; preds = %cond.end98.i159
  %187 = load ptr, ptr %s.addr.i15, align 8
  %arrayidx119.i163 = getelementptr inbounds %struct.internal_state, ptr %187, i64 0, i32 44, i64 1
  %188 = load i32, ptr %arrayidx119.i163, align 4
  %heap_max121.i165 = getelementptr inbounds %struct.internal_state, ptr %187, i64 0, i32 46
  %189 = load i32, ptr %heap_max121.i165, align 8
  %dec122.i166 = add nsw i32 %189, -1
  store i32 %dec122.i166, ptr %heap_max121.i165, align 8
  %idxprom123.i167 = sext i32 %dec122.i166 to i64
  %arrayidx124.i168 = getelementptr inbounds %struct.internal_state, ptr %187, i64 0, i32 44, i64 %idxprom123.i167
  store i32 %188, ptr %arrayidx124.i168, align 4
  %190 = load ptr, ptr %s.addr.i15, align 8
  %191 = load ptr, ptr %desc.addr.i16, align 8
  call void @gen_bitlen(ptr noundef %190, ptr noundef %191)
  %192 = load ptr, ptr %tree.i17, align 8
  %193 = load i32, ptr %max_code.i22, align 4
  %bl_count.i169 = getelementptr inbounds %struct.internal_state, ptr %190, i64 0, i32 43
  call void @gen_codes(ptr noundef %192, i32 noundef %193, ptr noundef nonnull %bl_count.i169)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i15)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %desc.addr.i16)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tree.i17)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stree.i18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elems.i19)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m.i21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_code.i22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %node.i23)
  %194 = load ptr, ptr %s.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i170)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_blindex.i)
  store ptr %194, ptr %s.addr.i170, align 8
  %dyn_ltree.i171 = getelementptr inbounds %struct.internal_state, ptr %194, i64 0, i32 37
  %max_code.i172 = getelementptr inbounds %struct.internal_state, ptr %194, i64 0, i32 40, i32 1
  %195 = load i32, ptr %max_code.i172, align 8
  call void @scan_tree(ptr noundef %194, ptr noundef nonnull %dyn_ltree.i171, i32 noundef %195)
  %dyn_dtree.i = getelementptr inbounds %struct.internal_state, ptr %194, i64 0, i32 38
  %max_code2.i = getelementptr inbounds %struct.internal_state, ptr %194, i64 0, i32 41, i32 1
  %196 = load i32, ptr %max_code2.i, align 8
  call void @scan_tree(ptr noundef %194, ptr noundef nonnull %dyn_dtree.i, i32 noundef %196)
  %197 = load ptr, ptr %s.addr.i170, align 8
  %bl_desc.i = getelementptr inbounds %struct.internal_state, ptr %197, i64 0, i32 42
  call void @build_tree(ptr noundef %197, ptr noundef nonnull %bl_desc.i)
  br label %for.cond.i174

for.cond.i174:                                    ; preds = %if.end.i181, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_8.exit
  %storemerge795 = phi i32 [ 18, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_8.exit ], [ %dec.i182, %if.end.i181 ]
  store i32 %storemerge795, ptr %max_blindex.i, align 4
  %cmp.i173 = icmp sgt i32 %storemerge795, 2
  br i1 %cmp.i173, label %for.body.i179, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_9.exit

for.body.i179:                                    ; preds = %for.cond.i174
  %198 = load ptr, ptr %s.addr.i170, align 8
  %199 = load i32, ptr %max_blindex.i, align 4
  %idxprom.i175 = sext i32 %199 to i64
  %arrayidx.i176 = getelementptr inbounds [19 x i8], ptr @bl_order, i64 0, i64 %idxprom.i175
  %200 = load i8, ptr %arrayidx.i176, align 1
  %idxprom3.i = zext i8 %200 to i64
  %dl.i177 = getelementptr inbounds %struct.internal_state, ptr %198, i64 0, i32 39, i64 %idxprom3.i, i32 1
  %201 = load i16, ptr %dl.i177, align 2
  %cmp5.i.not = icmp eq i16 %201, 0
  br i1 %cmp5.i.not, label %if.end.i181, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_9.exit

if.end.i181:                                      ; preds = %for.body.i179
  %202 = load i32, ptr %max_blindex.i, align 4
  %dec.i182 = add nsw i32 %202, -1
  br label %for.cond.i174, !llvm.loop !17

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_9.exit: ; preds = %for.body.i179, %for.cond.i174
  %203 = load i32, ptr %max_blindex.i, align 4
  %204 = mul i32 %203, 3
  %add9.i = add i32 %204, 17
  %conv10.i = sext i32 %add9.i to i64
  %205 = load ptr, ptr %s.addr.i170, align 8
  %opt_len.i184 = getelementptr inbounds %struct.internal_state, ptr %205, i64 0, i32 52
  %206 = load i64, ptr %opt_len.i184, align 8
  %add11.i = add i64 %206, %conv10.i
  store i64 %add11.i, ptr %opt_len.i184, align 8
  %207 = load i32, ptr %max_blindex.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i170)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_blindex.i)
  store i32 %207, ptr %max_blindex, align 4
  %208 = load ptr, ptr %s.addr, align 8
  %opt_len = getelementptr inbounds %struct.internal_state, ptr %208, i64 0, i32 52
  %209 = load i64, ptr %opt_len, align 8
  %add4 = add i64 %209, 10
  %shr = lshr i64 %add4, 3
  store i64 %shr, ptr %opt_lenb, align 8
  %static_len = getelementptr inbounds %struct.internal_state, ptr %208, i64 0, i32 53
  %210 = load i64, ptr %static_len, align 8
  %add6 = add i64 %210, 10
  %shr7 = lshr i64 %add6, 3
  store i64 %shr7, ptr %static_lenb, align 8
  %cmp8.not = icmp ugt i64 %shr7, %shr
  br i1 %cmp8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_9.exit
  %211 = load i64, ptr %static_lenb, align 8
  store i64 %211, ptr %opt_lenb, align 8
  br label %if.end12

if.else:                                          ; preds = %entry
  %212 = load i64, ptr %stored_len.addr, align 8
  %add11 = add i64 %212, 5
  store i64 %add11, ptr %static_lenb, align 8
  store i64 %add11, ptr %opt_lenb, align 8
  br label %if.end12

if.end12:                                         ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_9.exit, %if.then9, %if.else
  %213 = load i64, ptr %stored_len.addr, align 8
  %add13 = add i64 %213, 4
  %214 = load i64, ptr %opt_lenb, align 8
  %cmp14.not = icmp ugt i64 %add13, %214
  %215 = load ptr, ptr %buf.addr, align 8
  %cmp16.not = icmp eq ptr %215, null
  %or.cond = select i1 %cmp14.not, i1 true, i1 %cmp16.not
  br i1 %or.cond, label %if.else18, label %if.then17

if.then17:                                        ; preds = %if.end12
  %216 = load ptr, ptr %s.addr, align 8
  %217 = load ptr, ptr %buf.addr, align 8
  %218 = load i64, ptr %stored_len.addr, align 8
  %219 = load i32, ptr %eof.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i186)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stored_len.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eof.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i)
  store ptr %216, ptr %s.addr.i186, align 8
  store ptr %217, ptr %buf.addr.i, align 8
  store i64 %218, ptr %stored_len.addr.i, align 8
  store i32 %219, ptr %eof.addr.i, align 4
  store i32 3, ptr %len.i, align 4
  %bi_valid.i = getelementptr inbounds %struct.internal_state, ptr %216, i64 0, i32 57
  %220 = load i32, ptr %bi_valid.i, align 4
  %cmp.i188 = icmp sgt i32 %220, 13
  br i1 %cmp.i188, label %if.then.i194, label %if.else.i196

if.then.i194:                                     ; preds = %if.then17
  %221 = load i32, ptr %eof.addr.i, align 4
  store i32 %221, ptr %val.i, align 4
  %222 = load ptr, ptr %s.addr.i186, align 8
  %bi_valid1.i = getelementptr inbounds %struct.internal_state, ptr %222, i64 0, i32 57
  %223 = load i32, ptr %bi_valid1.i, align 4
  %shl.i = shl i32 %221, %223
  %bi_buf.i = getelementptr inbounds %struct.internal_state, ptr %222, i64 0, i32 56
  %224 = load i16, ptr %bi_buf.i, align 8
  %225 = trunc i32 %shl.i to i16
  %conv2.i = or i16 %224, %225
  store i16 %conv2.i, ptr %bi_buf.i, align 8
  %226 = load ptr, ptr %s.addr.i186, align 8
  %bi_buf3.i = getelementptr inbounds %struct.internal_state, ptr %226, i64 0, i32 56
  %227 = load i16, ptr %bi_buf3.i, align 8
  %conv5.i = trunc i16 %227 to i8
  %pending_buf.i = getelementptr inbounds %struct.internal_state, ptr %226, i64 0, i32 2
  %228 = load ptr, ptr %pending_buf.i, align 8
  %pending.i = getelementptr inbounds %struct.internal_state, ptr %226, i64 0, i32 5
  %229 = load i32, ptr %pending.i, align 8
  %inc.i190 = add i32 %229, 1
  store i32 %inc.i190, ptr %pending.i, align 8
  %idxprom.i191 = zext i32 %229 to i64
  %arrayidx.i192 = getelementptr inbounds i8, ptr %228, i64 %idxprom.i191
  store i8 %conv5.i, ptr %arrayidx.i192, align 1
  %230 = load ptr, ptr %s.addr.i186, align 8
  %bi_buf6.i = getelementptr inbounds %struct.internal_state, ptr %230, i64 0, i32 56
  %231 = load i16, ptr %bi_buf6.i, align 8
  %232 = lshr i16 %231, 8
  %conv8.i = trunc i16 %232 to i8
  %pending_buf9.i = getelementptr inbounds %struct.internal_state, ptr %230, i64 0, i32 2
  %233 = load ptr, ptr %pending_buf9.i, align 8
  %234 = load ptr, ptr %s.addr.i186, align 8
  %pending10.i = getelementptr inbounds %struct.internal_state, ptr %234, i64 0, i32 5
  %235 = load i32, ptr %pending10.i, align 8
  %inc11.i = add i32 %235, 1
  store i32 %inc11.i, ptr %pending10.i, align 8
  %idxprom12.i = zext i32 %235 to i64
  %arrayidx13.i = getelementptr inbounds i8, ptr %233, i64 %idxprom12.i
  store i8 %conv8.i, ptr %arrayidx13.i, align 1
  %236 = load i32, ptr %val.i, align 4
  %conv15.i = and i32 %236, 65535
  %237 = load ptr, ptr %s.addr.i186, align 8
  %bi_valid16.i = getelementptr inbounds %struct.internal_state, ptr %237, i64 0, i32 57
  %238 = load i32, ptr %bi_valid16.i, align 4
  %sub18.i = sub i32 16, %238
  %shr19.i = lshr i32 %conv15.i, %sub18.i
  %conv20.i = trunc i32 %shr19.i to i16
  %bi_buf21.i = getelementptr inbounds %struct.internal_state, ptr %237, i64 0, i32 56
  store i16 %conv20.i, ptr %bi_buf21.i, align 8
  %239 = load i32, ptr %len.i, align 4
  %sub23.i = add i32 %239, -16
  %240 = load ptr, ptr %s.addr.i186, align 8
  %bi_valid24.i = getelementptr inbounds %struct.internal_state, ptr %240, i64 0, i32 57
  %241 = load i32, ptr %bi_valid24.i, align 4
  %add26.i = add i32 %sub23.i, %241
  store i32 %add26.i, ptr %bi_valid24.i, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_10.exit

if.else.i196:                                     ; preds = %if.then17
  %242 = load i32, ptr %eof.addr.i, align 4
  %243 = load ptr, ptr %s.addr.i186, align 8
  %bi_valid29.i = getelementptr inbounds %struct.internal_state, ptr %243, i64 0, i32 57
  %244 = load i32, ptr %bi_valid29.i, align 4
  %shl30.i = shl i32 %242, %244
  %bi_buf31.i = getelementptr inbounds %struct.internal_state, ptr %243, i64 0, i32 56
  %245 = load i16, ptr %bi_buf31.i, align 8
  %246 = trunc i32 %shl30.i to i16
  %conv34.i195 = or i16 %245, %246
  store i16 %conv34.i195, ptr %bi_buf31.i, align 8
  %247 = load i32, ptr %len.i, align 4
  %248 = load ptr, ptr %s.addr.i186, align 8
  %bi_valid35.i = getelementptr inbounds %struct.internal_state, ptr %248, i64 0, i32 57
  %249 = load i32, ptr %bi_valid35.i, align 4
  %add36.i = add nsw i32 %249, %247
  store i32 %add36.i, ptr %bi_valid35.i, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_10.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_10.exit: ; preds = %if.then.i194, %if.else.i196
  %250 = load ptr, ptr %s.addr.i186, align 8
  %251 = load ptr, ptr %buf.addr.i, align 8
  %252 = load i64, ptr %stored_len.addr.i, align 8
  %conv37.i = trunc i64 %252 to i32
  call void @copy_block(ptr noundef %250, ptr noundef %251, i32 noundef %conv37.i, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i186)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stored_len.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eof.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i)
  br label %if.end131

if.else18:                                        ; preds = %if.end12
  %253 = load ptr, ptr %s.addr, align 8
  %strategy = getelementptr inbounds %struct.internal_state, ptr %253, i64 0, i32 34
  %254 = load i32, ptr %strategy, align 8
  %cmp19 = icmp eq i32 %254, 4
  br i1 %cmp19, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else18
  %255 = load i64, ptr %static_lenb, align 8
  %256 = load i64, ptr %opt_lenb, align 8
  %cmp20 = icmp eq i64 %255, %256
  br i1 %cmp20, label %if.then21, label %if.else64

if.then21:                                        ; preds = %lor.lhs.false, %if.else18
  store i32 3, ptr %len, align 4
  %257 = load ptr, ptr %s.addr, align 8
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %257, i64 0, i32 57
  %258 = load i32, ptr %bi_valid, align 4
  %cmp22 = icmp sgt i32 %258, 13
  br i1 %cmp22, label %if.then23, label %if.else53

if.then23:                                        ; preds = %if.then21
  %259 = load i32, ptr %eof.addr, align 4
  %add24 = add nsw i32 %259, 2
  store i32 %add24, ptr %val, align 4
  %260 = load ptr, ptr %s.addr, align 8
  %bi_valid25 = getelementptr inbounds %struct.internal_state, ptr %260, i64 0, i32 57
  %261 = load i32, ptr %bi_valid25, align 4
  %shl = shl i32 %add24, %261
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %260, i64 0, i32 56
  %262 = load i16, ptr %bi_buf, align 8
  %263 = trunc i32 %shl to i16
  %conv26 = or i16 %262, %263
  store i16 %conv26, ptr %bi_buf, align 8
  %264 = load ptr, ptr %s.addr, align 8
  %bi_buf27 = getelementptr inbounds %struct.internal_state, ptr %264, i64 0, i32 56
  %265 = load i16, ptr %bi_buf27, align 8
  %conv29 = trunc i16 %265 to i8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %264, i64 0, i32 2
  %266 = load ptr, ptr %pending_buf, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %264, i64 0, i32 5
  %267 = load i32, ptr %pending, align 8
  %inc = add i32 %267, 1
  store i32 %inc, ptr %pending, align 8
  %idxprom = zext i32 %267 to i64
  %arrayidx = getelementptr inbounds i8, ptr %266, i64 %idxprom
  store i8 %conv29, ptr %arrayidx, align 1
  %268 = load ptr, ptr %s.addr, align 8
  %bi_buf30 = getelementptr inbounds %struct.internal_state, ptr %268, i64 0, i32 56
  %269 = load i16, ptr %bi_buf30, align 8
  %270 = lshr i16 %269, 8
  %conv33 = trunc i16 %270 to i8
  %pending_buf34 = getelementptr inbounds %struct.internal_state, ptr %268, i64 0, i32 2
  %271 = load ptr, ptr %pending_buf34, align 8
  %272 = load ptr, ptr %s.addr, align 8
  %pending35 = getelementptr inbounds %struct.internal_state, ptr %272, i64 0, i32 5
  %273 = load i32, ptr %pending35, align 8
  %inc36 = add i32 %273, 1
  store i32 %inc36, ptr %pending35, align 8
  %idxprom37 = zext i32 %273 to i64
  %arrayidx38 = getelementptr inbounds i8, ptr %271, i64 %idxprom37
  store i8 %conv33, ptr %arrayidx38, align 1
  %274 = load i32, ptr %val, align 4
  %conv40 = and i32 %274, 65535
  %275 = load ptr, ptr %s.addr, align 8
  %bi_valid41 = getelementptr inbounds %struct.internal_state, ptr %275, i64 0, i32 57
  %276 = load i32, ptr %bi_valid41, align 4
  %sub43 = sub i32 16, %276
  %shr44 = lshr i32 %conv40, %sub43
  %conv45 = trunc i32 %shr44 to i16
  %bi_buf46 = getelementptr inbounds %struct.internal_state, ptr %275, i64 0, i32 56
  store i16 %conv45, ptr %bi_buf46, align 8
  %277 = load i32, ptr %len, align 4
  %sub48 = add i32 %277, -16
  %278 = load ptr, ptr %s.addr, align 8
  %bi_valid49 = getelementptr inbounds %struct.internal_state, ptr %278, i64 0, i32 57
  %279 = load i32, ptr %bi_valid49, align 4
  %add51 = add i32 %sub48, %279
  store i32 %add51, ptr %bi_valid49, align 4
  br label %if.end63

if.else53:                                        ; preds = %if.then21
  %280 = load i32, ptr %eof.addr, align 4
  %add54 = add nsw i32 %280, 2
  %281 = load ptr, ptr %s.addr, align 8
  %bi_valid55 = getelementptr inbounds %struct.internal_state, ptr %281, i64 0, i32 57
  %282 = load i32, ptr %bi_valid55, align 4
  %shl56 = shl i32 %add54, %282
  %bi_buf57 = getelementptr inbounds %struct.internal_state, ptr %281, i64 0, i32 56
  %283 = load i16, ptr %bi_buf57, align 8
  %284 = trunc i32 %shl56 to i16
  %conv60 = or i16 %283, %284
  store i16 %conv60, ptr %bi_buf57, align 8
  %285 = load i32, ptr %len, align 4
  %286 = load ptr, ptr %s.addr, align 8
  %bi_valid61 = getelementptr inbounds %struct.internal_state, ptr %286, i64 0, i32 57
  %287 = load i32, ptr %bi_valid61, align 4
  %add62 = add nsw i32 %287, %285
  store i32 %add62, ptr %bi_valid61, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.else53, %if.then23
  %288 = load ptr, ptr %s.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i198)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ltree.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dtree.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dist.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lc.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lx.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %code.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %extra.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i199)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i200)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len62.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val74.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len144.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val150.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len211.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val221.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len287.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val293.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len349.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val358.i)
  store ptr %288, ptr %s.addr.i198, align 8
  store ptr @static_ltree, ptr %ltree.addr.i, align 8
  store ptr @static_dtree, ptr %dtree.addr.i, align 8
  store i32 0, ptr %lx.i, align 4
  %last_lit.i = getelementptr inbounds %struct.internal_state, ptr %288, i64 0, i32 50
  %289 = load i32, ptr %last_lit.i, align 4
  %cmp.i201.not = icmp eq i32 %289, 0
  br i1 %cmp.i201.not, label %if.end348.i, label %do.body.i207

do.body.i207:                                     ; preds = %if.end63, %if.end344.i
  %290 = load ptr, ptr %s.addr.i198, align 8
  %d_buf.i = getelementptr inbounds %struct.internal_state, ptr %290, i64 0, i32 51
  %291 = load ptr, ptr %d_buf.i, align 8
  %292 = load i32, ptr %lx.i, align 4
  %idxprom.i203 = zext i32 %292 to i64
  %arrayidx.i204 = getelementptr inbounds i16, ptr %291, i64 %idxprom.i203
  %293 = load i16, ptr %arrayidx.i204, align 2
  %conv.i205 = zext i16 %293 to i32
  store i32 %conv.i205, ptr %dist.i, align 4
  %294 = load ptr, ptr %s.addr.i198, align 8
  %l_buf.i = getelementptr inbounds %struct.internal_state, ptr %294, i64 0, i32 48
  %295 = load ptr, ptr %l_buf.i, align 8
  %296 = load i32, ptr %lx.i, align 4
  %inc.i206 = add i32 %296, 1
  store i32 %inc.i206, ptr %lx.i, align 4
  %idxprom1.i = zext i32 %296 to i64
  %arrayidx2.i = getelementptr inbounds i8, ptr %295, i64 %idxprom1.i
  %297 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %297 to i32
  store i32 %conv3.i, ptr %lc.i, align 4
  %298 = load i32, ptr %dist.i, align 4
  %cmp4.i = icmp eq i32 %298, 0
  br i1 %cmp4.i, label %if.then6.i, label %if.else58.i

if.then6.i:                                       ; preds = %do.body.i207
  %299 = load ptr, ptr %ltree.addr.i, align 8
  %300 = load i32, ptr %lc.i, align 4
  %idxprom7.i = sext i32 %300 to i64
  %dl.i208 = getelementptr inbounds %struct.ct_data_s, ptr %299, i64 %idxprom7.i, i32 1
  %301 = load i16, ptr %dl.i208, align 2
  %conv9.i = zext i16 %301 to i32
  store i32 %conv9.i, ptr %len.i199, align 4
  %302 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid.i209 = getelementptr inbounds %struct.internal_state, ptr %302, i64 0, i32 57
  %303 = load i32, ptr %bi_valid.i209, align 4
  %sub.i210 = sub nsw i32 16, %conv9.i
  %cmp10.i = icmp sgt i32 %303, %sub.i210
  br i1 %cmp10.i, label %if.then12.i, label %if.else.i229

if.then12.i:                                      ; preds = %if.then6.i
  %304 = load ptr, ptr %ltree.addr.i, align 8
  %305 = load i32, ptr %lc.i, align 4
  %idxprom13.i = sext i32 %305 to i64
  %arrayidx14.i = getelementptr inbounds %struct.ct_data_s, ptr %304, i64 %idxprom13.i
  %306 = load i16, ptr %arrayidx14.i, align 2
  %conv15.i211 = zext i16 %306 to i32
  store i32 %conv15.i211, ptr %val.i200, align 4
  %307 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid16.i212 = getelementptr inbounds %struct.internal_state, ptr %307, i64 0, i32 57
  %308 = load i32, ptr %bi_valid16.i212, align 4
  %shl.i213 = shl i32 %conv15.i211, %308
  %bi_buf.i214 = getelementptr inbounds %struct.internal_state, ptr %307, i64 0, i32 56
  %309 = load i16, ptr %bi_buf.i214, align 8
  %310 = trunc i32 %shl.i213 to i16
  %conv18.i = or i16 %309, %310
  store i16 %conv18.i, ptr %bi_buf.i214, align 8
  %311 = load ptr, ptr %s.addr.i198, align 8
  %bi_buf19.i = getelementptr inbounds %struct.internal_state, ptr %311, i64 0, i32 56
  %312 = load i16, ptr %bi_buf19.i, align 8
  %conv21.i = trunc i16 %312 to i8
  %pending_buf.i219 = getelementptr inbounds %struct.internal_state, ptr %311, i64 0, i32 2
  %313 = load ptr, ptr %pending_buf.i219, align 8
  %pending.i220 = getelementptr inbounds %struct.internal_state, ptr %311, i64 0, i32 5
  %314 = load i32, ptr %pending.i220, align 8
  %inc22.i = add i32 %314, 1
  store i32 %inc22.i, ptr %pending.i220, align 8
  %idxprom23.i = zext i32 %314 to i64
  %arrayidx24.i = getelementptr inbounds i8, ptr %313, i64 %idxprom23.i
  store i8 %conv21.i, ptr %arrayidx24.i, align 1
  %315 = load ptr, ptr %s.addr.i198, align 8
  %bi_buf25.i = getelementptr inbounds %struct.internal_state, ptr %315, i64 0, i32 56
  %316 = load i16, ptr %bi_buf25.i, align 8
  %317 = lshr i16 %316, 8
  %conv27.i222 = trunc i16 %317 to i8
  %pending_buf28.i = getelementptr inbounds %struct.internal_state, ptr %315, i64 0, i32 2
  %318 = load ptr, ptr %pending_buf28.i, align 8
  %319 = load ptr, ptr %s.addr.i198, align 8
  %pending29.i = getelementptr inbounds %struct.internal_state, ptr %319, i64 0, i32 5
  %320 = load i32, ptr %pending29.i, align 8
  %inc30.i = add i32 %320, 1
  store i32 %inc30.i, ptr %pending29.i, align 8
  %idxprom31.i223 = zext i32 %320 to i64
  %arrayidx32.i224 = getelementptr inbounds i8, ptr %318, i64 %idxprom31.i223
  store i8 %conv27.i222, ptr %arrayidx32.i224, align 1
  %321 = load i32, ptr %val.i200, align 4
  %conv34.i225 = and i32 %321, 65535
  %322 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid35.i226 = getelementptr inbounds %struct.internal_state, ptr %322, i64 0, i32 57
  %323 = load i32, ptr %bi_valid35.i226, align 4
  %sub37.i = sub i32 16, %323
  %shr38.i = lshr i32 %conv34.i225, %sub37.i
  %conv39.i = trunc i32 %shr38.i to i16
  %bi_buf40.i = getelementptr inbounds %struct.internal_state, ptr %322, i64 0, i32 56
  store i16 %conv39.i, ptr %bi_buf40.i, align 8
  %324 = load i32, ptr %len.i199, align 4
  %sub42.i = add i32 %324, -16
  %325 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid43.i = getelementptr inbounds %struct.internal_state, ptr %325, i64 0, i32 57
  %326 = load i32, ptr %bi_valid43.i, align 4
  %add.i228 = add i32 %sub42.i, %326
  store i32 %add.i228, ptr %bi_valid43.i, align 4
  br label %if.end344.i

if.else.i229:                                     ; preds = %if.then6.i
  %327 = load ptr, ptr %ltree.addr.i, align 8
  %328 = load i32, ptr %lc.i, align 4
  %idxprom46.i = sext i32 %328 to i64
  %arrayidx47.i = getelementptr inbounds %struct.ct_data_s, ptr %327, i64 %idxprom46.i
  %329 = load i16, ptr %arrayidx47.i, align 2
  %conv49.i = zext i16 %329 to i32
  %330 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid50.i = getelementptr inbounds %struct.internal_state, ptr %330, i64 0, i32 57
  %331 = load i32, ptr %bi_valid50.i, align 4
  %shl51.i = shl i32 %conv49.i, %331
  %bi_buf52.i = getelementptr inbounds %struct.internal_state, ptr %330, i64 0, i32 56
  %332 = load i16, ptr %bi_buf52.i, align 8
  %333 = trunc i32 %shl51.i to i16
  %conv55.i = or i16 %332, %333
  store i16 %conv55.i, ptr %bi_buf52.i, align 8
  %334 = load i32, ptr %len.i199, align 4
  %335 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid56.i = getelementptr inbounds %struct.internal_state, ptr %335, i64 0, i32 57
  %336 = load i32, ptr %bi_valid56.i, align 4
  %add57.i = add nsw i32 %336, %334
  store i32 %add57.i, ptr %bi_valid56.i, align 4
  br label %if.end344.i

if.else58.i:                                      ; preds = %do.body.i207
  %337 = load i32, ptr %lc.i, align 4
  %idxprom59.i231 = sext i32 %337 to i64
  %arrayidx60.i232 = getelementptr inbounds [256 x i8], ptr @_length_code, i64 0, i64 %idxprom59.i231
  %338 = load i8, ptr %arrayidx60.i232, align 1
  %conv61.i = zext i8 %338 to i32
  store i32 %conv61.i, ptr %code.i, align 4
  %339 = load ptr, ptr %ltree.addr.i, align 8
  %add64.i = add nuw nsw i32 %conv61.i, 257
  %idxprom65.i = zext i32 %add64.i to i64
  %dl67.i = getelementptr inbounds %struct.ct_data_s, ptr %339, i64 %idxprom65.i, i32 1
  %340 = load i16, ptr %dl67.i, align 2
  %conv68.i = zext i16 %340 to i32
  store i32 %conv68.i, ptr %len62.i, align 4
  %341 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid69.i = getelementptr inbounds %struct.internal_state, ptr %341, i64 0, i32 57
  %342 = load i32, ptr %bi_valid69.i, align 4
  %sub70.i = sub nsw i32 16, %conv68.i
  %cmp71.i = icmp sgt i32 %342, %sub70.i
  br i1 %cmp71.i, label %if.then73.i, label %if.else120.i

if.then73.i:                                      ; preds = %if.else58.i
  %343 = load ptr, ptr %ltree.addr.i, align 8
  %344 = load i32, ptr %code.i, align 4
  %add76.i = add i32 %344, 257
  %idxprom77.i = zext i32 %add76.i to i64
  %arrayidx78.i = getelementptr inbounds %struct.ct_data_s, ptr %343, i64 %idxprom77.i
  %345 = load i16, ptr %arrayidx78.i, align 2
  %conv80.i = zext i16 %345 to i32
  store i32 %conv80.i, ptr %val74.i, align 4
  %346 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid81.i = getelementptr inbounds %struct.internal_state, ptr %346, i64 0, i32 57
  %347 = load i32, ptr %bi_valid81.i, align 4
  %shl82.i = shl i32 %conv80.i, %347
  %bi_buf83.i = getelementptr inbounds %struct.internal_state, ptr %346, i64 0, i32 56
  %348 = load i16, ptr %bi_buf83.i, align 8
  %349 = trunc i32 %shl82.i to i16
  %conv86.i = or i16 %348, %349
  store i16 %conv86.i, ptr %bi_buf83.i, align 8
  %350 = load ptr, ptr %s.addr.i198, align 8
  %bi_buf87.i = getelementptr inbounds %struct.internal_state, ptr %350, i64 0, i32 56
  %351 = load i16, ptr %bi_buf87.i, align 8
  %conv90.i = trunc i16 %351 to i8
  %pending_buf91.i = getelementptr inbounds %struct.internal_state, ptr %350, i64 0, i32 2
  %352 = load ptr, ptr %pending_buf91.i, align 8
  %pending92.i = getelementptr inbounds %struct.internal_state, ptr %350, i64 0, i32 5
  %353 = load i32, ptr %pending92.i, align 8
  %inc93.i = add i32 %353, 1
  store i32 %inc93.i, ptr %pending92.i, align 8
  %idxprom94.i = zext i32 %353 to i64
  %arrayidx95.i = getelementptr inbounds i8, ptr %352, i64 %idxprom94.i
  store i8 %conv90.i, ptr %arrayidx95.i, align 1
  %354 = load ptr, ptr %s.addr.i198, align 8
  %bi_buf96.i = getelementptr inbounds %struct.internal_state, ptr %354, i64 0, i32 56
  %355 = load i16, ptr %bi_buf96.i, align 8
  %356 = lshr i16 %355, 8
  %conv99.i = trunc i16 %356 to i8
  %pending_buf100.i = getelementptr inbounds %struct.internal_state, ptr %354, i64 0, i32 2
  %357 = load ptr, ptr %pending_buf100.i, align 8
  %358 = load ptr, ptr %s.addr.i198, align 8
  %pending101.i = getelementptr inbounds %struct.internal_state, ptr %358, i64 0, i32 5
  %359 = load i32, ptr %pending101.i, align 8
  %inc102.i = add i32 %359, 1
  store i32 %inc102.i, ptr %pending101.i, align 8
  %idxprom103.i234 = zext i32 %359 to i64
  %arrayidx104.i235 = getelementptr inbounds i8, ptr %357, i64 %idxprom103.i234
  store i8 %conv99.i, ptr %arrayidx104.i235, align 1
  %360 = load i32, ptr %val74.i, align 4
  %conv106.i = and i32 %360, 65535
  %361 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid107.i = getelementptr inbounds %struct.internal_state, ptr %361, i64 0, i32 57
  %362 = load i32, ptr %bi_valid107.i, align 4
  %sub109.i = sub i32 16, %362
  %shr111.i = lshr i32 %conv106.i, %sub109.i
  %conv112.i = trunc i32 %shr111.i to i16
  %bi_buf113.i = getelementptr inbounds %struct.internal_state, ptr %361, i64 0, i32 56
  store i16 %conv112.i, ptr %bi_buf113.i, align 8
  %363 = load i32, ptr %len62.i, align 4
  %sub115.i = add i32 %363, -16
  %364 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid116.i = getelementptr inbounds %struct.internal_state, ptr %364, i64 0, i32 57
  %365 = load i32, ptr %bi_valid116.i, align 4
  %add118.i = add i32 %sub115.i, %365
  store i32 %add118.i, ptr %bi_valid116.i, align 4
  br label %if.end135.i

if.else120.i:                                     ; preds = %if.else58.i
  %366 = load ptr, ptr %ltree.addr.i, align 8
  %367 = load i32, ptr %code.i, align 4
  %add122.i = add i32 %367, 257
  %idxprom123.i237 = zext i32 %add122.i to i64
  %arrayidx124.i238 = getelementptr inbounds %struct.ct_data_s, ptr %366, i64 %idxprom123.i237
  %368 = load i16, ptr %arrayidx124.i238, align 2
  %conv126.i = zext i16 %368 to i32
  %369 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid127.i = getelementptr inbounds %struct.internal_state, ptr %369, i64 0, i32 57
  %370 = load i32, ptr %bi_valid127.i, align 4
  %shl128.i = shl i32 %conv126.i, %370
  %bi_buf129.i = getelementptr inbounds %struct.internal_state, ptr %369, i64 0, i32 56
  %371 = load i16, ptr %bi_buf129.i, align 8
  %372 = trunc i32 %shl128.i to i16
  %conv132.i = or i16 %371, %372
  store i16 %conv132.i, ptr %bi_buf129.i, align 8
  %373 = load i32, ptr %len62.i, align 4
  %374 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid133.i = getelementptr inbounds %struct.internal_state, ptr %374, i64 0, i32 57
  %375 = load i32, ptr %bi_valid133.i, align 4
  %add134.i = add nsw i32 %375, %373
  store i32 %add134.i, ptr %bi_valid133.i, align 4
  br label %if.end135.i

if.end135.i:                                      ; preds = %if.else120.i, %if.then73.i
  %376 = load i32, ptr %code.i, align 4
  %idxprom136.i = zext i32 %376 to i64
  %arrayidx137.i = getelementptr inbounds [29 x i32], ptr @extra_lbits, i64 0, i64 %idxprom136.i
  %377 = load i32, ptr %arrayidx137.i, align 4
  store i32 %377, ptr %extra.i, align 4
  %378 = add nsw i64 %idxprom136.i, -28
  %cmp138.i.not = icmp ult i64 %378, -20
  br i1 %cmp138.i.not, label %if.end200.i, label %if.then140.i

if.then140.i:                                     ; preds = %if.end135.i
  %379 = load i32, ptr %code.i, align 4
  %idxprom141.i = zext i32 %379 to i64
  %arrayidx142.i = getelementptr inbounds [29 x i32], ptr @base_length, i64 0, i64 %idxprom141.i
  %380 = load i32, ptr %arrayidx142.i, align 4
  %381 = load i32, ptr %lc.i, align 4
  %sub143.i = sub nsw i32 %381, %380
  store i32 %sub143.i, ptr %lc.i, align 4
  %382 = load i32, ptr %extra.i, align 4
  store i32 %382, ptr %len144.i, align 4
  %383 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid145.i = getelementptr inbounds %struct.internal_state, ptr %383, i64 0, i32 57
  %384 = load i32, ptr %bi_valid145.i, align 4
  %sub146.i = sub nsw i32 16, %382
  %cmp147.i = icmp sgt i32 %384, %sub146.i
  br i1 %cmp147.i, label %if.then149.i, label %if.else190.i

if.then149.i:                                     ; preds = %if.then140.i
  %385 = load i32, ptr %lc.i, align 4
  store i32 %385, ptr %val150.i, align 4
  %386 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid151.i = getelementptr inbounds %struct.internal_state, ptr %386, i64 0, i32 57
  %387 = load i32, ptr %bi_valid151.i, align 4
  %shl152.i = shl i32 %385, %387
  %bi_buf153.i = getelementptr inbounds %struct.internal_state, ptr %386, i64 0, i32 56
  %388 = load i16, ptr %bi_buf153.i, align 8
  %389 = trunc i32 %shl152.i to i16
  %conv156.i = or i16 %388, %389
  store i16 %conv156.i, ptr %bi_buf153.i, align 8
  %390 = load ptr, ptr %s.addr.i198, align 8
  %bi_buf157.i = getelementptr inbounds %struct.internal_state, ptr %390, i64 0, i32 56
  %391 = load i16, ptr %bi_buf157.i, align 8
  %conv160.i = trunc i16 %391 to i8
  %pending_buf161.i = getelementptr inbounds %struct.internal_state, ptr %390, i64 0, i32 2
  %392 = load ptr, ptr %pending_buf161.i, align 8
  %pending162.i = getelementptr inbounds %struct.internal_state, ptr %390, i64 0, i32 5
  %393 = load i32, ptr %pending162.i, align 8
  %inc163.i = add i32 %393, 1
  store i32 %inc163.i, ptr %pending162.i, align 8
  %idxprom164.i = zext i32 %393 to i64
  %arrayidx165.i = getelementptr inbounds i8, ptr %392, i64 %idxprom164.i
  store i8 %conv160.i, ptr %arrayidx165.i, align 1
  %394 = load ptr, ptr %s.addr.i198, align 8
  %bi_buf166.i = getelementptr inbounds %struct.internal_state, ptr %394, i64 0, i32 56
  %395 = load i16, ptr %bi_buf166.i, align 8
  %396 = lshr i16 %395, 8
  %conv169.i = trunc i16 %396 to i8
  %pending_buf170.i = getelementptr inbounds %struct.internal_state, ptr %394, i64 0, i32 2
  %397 = load ptr, ptr %pending_buf170.i, align 8
  %398 = load ptr, ptr %s.addr.i198, align 8
  %pending171.i = getelementptr inbounds %struct.internal_state, ptr %398, i64 0, i32 5
  %399 = load i32, ptr %pending171.i, align 8
  %inc172.i = add i32 %399, 1
  store i32 %inc172.i, ptr %pending171.i, align 8
  %idxprom173.i = zext i32 %399 to i64
  %arrayidx174.i = getelementptr inbounds i8, ptr %397, i64 %idxprom173.i
  store i8 %conv169.i, ptr %arrayidx174.i, align 1
  %400 = load i32, ptr %val150.i, align 4
  %conv176.i = and i32 %400, 65535
  %401 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid177.i = getelementptr inbounds %struct.internal_state, ptr %401, i64 0, i32 57
  %402 = load i32, ptr %bi_valid177.i, align 4
  %sub179.i = sub i32 16, %402
  %shr181.i = lshr i32 %conv176.i, %sub179.i
  %conv182.i = trunc i32 %shr181.i to i16
  %bi_buf183.i = getelementptr inbounds %struct.internal_state, ptr %401, i64 0, i32 56
  store i16 %conv182.i, ptr %bi_buf183.i, align 8
  %403 = load i32, ptr %len144.i, align 4
  %sub185.i = add i32 %403, -16
  %404 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid186.i = getelementptr inbounds %struct.internal_state, ptr %404, i64 0, i32 57
  %405 = load i32, ptr %bi_valid186.i, align 4
  %add188.i = add i32 %sub185.i, %405
  store i32 %add188.i, ptr %bi_valid186.i, align 4
  br label %if.end200.i

if.else190.i:                                     ; preds = %if.then140.i
  %406 = load i32, ptr %lc.i, align 4
  %407 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid191.i = getelementptr inbounds %struct.internal_state, ptr %407, i64 0, i32 57
  %408 = load i32, ptr %bi_valid191.i, align 4
  %shl192.i = shl i32 %406, %408
  %bi_buf193.i = getelementptr inbounds %struct.internal_state, ptr %407, i64 0, i32 56
  %409 = load i16, ptr %bi_buf193.i, align 8
  %410 = trunc i32 %shl192.i to i16
  %conv196.i = or i16 %409, %410
  store i16 %conv196.i, ptr %bi_buf193.i, align 8
  %411 = load i32, ptr %len144.i, align 4
  %412 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid197.i = getelementptr inbounds %struct.internal_state, ptr %412, i64 0, i32 57
  %413 = load i32, ptr %bi_valid197.i, align 4
  %add198.i = add nsw i32 %413, %411
  store i32 %add198.i, ptr %bi_valid197.i, align 4
  br label %if.end200.i

if.end200.i:                                      ; preds = %if.then149.i, %if.else190.i, %if.end135.i
  %414 = load i32, ptr %dist.i, align 4
  %dec.i239 = add i32 %414, -1
  store i32 %dec.i239, ptr %dist.i, align 4
  %cmp201.i = icmp ult i32 %dec.i239, 256
  %415 = load i32, ptr %dist.i, align 4
  %416 = load i32, ptr %dist.i, align 4
  %shr206.i = lshr i32 %416, 7
  %add207.i = add nuw nsw i32 %shr206.i, 256
  %idxprom203.i.pn.in = select i1 %cmp201.i, i32 %415, i32 %add207.i
  %idxprom203.i.pn = zext i32 %idxprom203.i.pn.in to i64
  %cond.i242.in.in = getelementptr inbounds [512 x i8], ptr @_dist_code, i64 0, i64 %idxprom203.i.pn
  %cond.i242.in = load i8, ptr %cond.i242.in.in, align 1
  %cond.i242 = zext i8 %cond.i242.in to i32
  store i32 %cond.i242, ptr %code.i, align 4
  %417 = load ptr, ptr %dtree.addr.i, align 8
  %idxprom212.i = zext i8 %cond.i242.in to i64
  %dl214.i = getelementptr inbounds %struct.ct_data_s, ptr %417, i64 %idxprom212.i, i32 1
  %418 = load i16, ptr %dl214.i, align 2
  %conv215.i = zext i16 %418 to i32
  store i32 %conv215.i, ptr %len211.i, align 4
  %419 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid216.i = getelementptr inbounds %struct.internal_state, ptr %419, i64 0, i32 57
  %420 = load i32, ptr %bi_valid216.i, align 4
  %sub217.i = sub nsw i32 16, %conv215.i
  %cmp218.i = icmp sgt i32 %420, %sub217.i
  br i1 %cmp218.i, label %if.then220.i, label %if.else265.i

if.then220.i:                                     ; preds = %if.end200.i
  %421 = load ptr, ptr %dtree.addr.i, align 8
  %422 = load i32, ptr %code.i, align 4
  %idxprom222.i = zext i32 %422 to i64
  %arrayidx223.i = getelementptr inbounds %struct.ct_data_s, ptr %421, i64 %idxprom222.i
  %423 = load i16, ptr %arrayidx223.i, align 2
  %conv225.i = zext i16 %423 to i32
  store i32 %conv225.i, ptr %val221.i, align 4
  %424 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid226.i = getelementptr inbounds %struct.internal_state, ptr %424, i64 0, i32 57
  %425 = load i32, ptr %bi_valid226.i, align 4
  %shl227.i = shl i32 %conv225.i, %425
  %bi_buf228.i = getelementptr inbounds %struct.internal_state, ptr %424, i64 0, i32 56
  %426 = load i16, ptr %bi_buf228.i, align 8
  %427 = trunc i32 %shl227.i to i16
  %conv231.i = or i16 %426, %427
  store i16 %conv231.i, ptr %bi_buf228.i, align 8
  %428 = load ptr, ptr %s.addr.i198, align 8
  %bi_buf232.i = getelementptr inbounds %struct.internal_state, ptr %428, i64 0, i32 56
  %429 = load i16, ptr %bi_buf232.i, align 8
  %conv235.i = trunc i16 %429 to i8
  %pending_buf236.i = getelementptr inbounds %struct.internal_state, ptr %428, i64 0, i32 2
  %430 = load ptr, ptr %pending_buf236.i, align 8
  %pending237.i = getelementptr inbounds %struct.internal_state, ptr %428, i64 0, i32 5
  %431 = load i32, ptr %pending237.i, align 8
  %inc238.i = add i32 %431, 1
  store i32 %inc238.i, ptr %pending237.i, align 8
  %idxprom239.i = zext i32 %431 to i64
  %arrayidx240.i = getelementptr inbounds i8, ptr %430, i64 %idxprom239.i
  store i8 %conv235.i, ptr %arrayidx240.i, align 1
  %432 = load ptr, ptr %s.addr.i198, align 8
  %bi_buf241.i = getelementptr inbounds %struct.internal_state, ptr %432, i64 0, i32 56
  %433 = load i16, ptr %bi_buf241.i, align 8
  %434 = lshr i16 %433, 8
  %conv244.i = trunc i16 %434 to i8
  %pending_buf245.i = getelementptr inbounds %struct.internal_state, ptr %432, i64 0, i32 2
  %435 = load ptr, ptr %pending_buf245.i, align 8
  %436 = load ptr, ptr %s.addr.i198, align 8
  %pending246.i = getelementptr inbounds %struct.internal_state, ptr %436, i64 0, i32 5
  %437 = load i32, ptr %pending246.i, align 8
  %inc247.i = add i32 %437, 1
  store i32 %inc247.i, ptr %pending246.i, align 8
  %idxprom248.i = zext i32 %437 to i64
  %arrayidx249.i = getelementptr inbounds i8, ptr %435, i64 %idxprom248.i
  store i8 %conv244.i, ptr %arrayidx249.i, align 1
  %438 = load i32, ptr %val221.i, align 4
  %conv251.i = and i32 %438, 65535
  %439 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid252.i = getelementptr inbounds %struct.internal_state, ptr %439, i64 0, i32 57
  %440 = load i32, ptr %bi_valid252.i, align 4
  %sub254.i = sub i32 16, %440
  %shr256.i = lshr i32 %conv251.i, %sub254.i
  %conv257.i = trunc i32 %shr256.i to i16
  %bi_buf258.i = getelementptr inbounds %struct.internal_state, ptr %439, i64 0, i32 56
  store i16 %conv257.i, ptr %bi_buf258.i, align 8
  %441 = load i32, ptr %len211.i, align 4
  %sub260.i = add i32 %441, -16
  %442 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid261.i = getelementptr inbounds %struct.internal_state, ptr %442, i64 0, i32 57
  %443 = load i32, ptr %bi_valid261.i, align 4
  %add263.i = add i32 %sub260.i, %443
  store i32 %add263.i, ptr %bi_valid261.i, align 4
  br label %if.end278.i

if.else265.i:                                     ; preds = %if.end200.i
  %444 = load ptr, ptr %dtree.addr.i, align 8
  %445 = load i32, ptr %code.i, align 4
  %idxprom266.i = zext i32 %445 to i64
  %arrayidx267.i = getelementptr inbounds %struct.ct_data_s, ptr %444, i64 %idxprom266.i
  %446 = load i16, ptr %arrayidx267.i, align 2
  %conv269.i = zext i16 %446 to i32
  %447 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid270.i = getelementptr inbounds %struct.internal_state, ptr %447, i64 0, i32 57
  %448 = load i32, ptr %bi_valid270.i, align 4
  %shl271.i = shl i32 %conv269.i, %448
  %bi_buf272.i = getelementptr inbounds %struct.internal_state, ptr %447, i64 0, i32 56
  %449 = load i16, ptr %bi_buf272.i, align 8
  %450 = trunc i32 %shl271.i to i16
  %conv275.i = or i16 %449, %450
  store i16 %conv275.i, ptr %bi_buf272.i, align 8
  %451 = load i32, ptr %len211.i, align 4
  %452 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid276.i = getelementptr inbounds %struct.internal_state, ptr %452, i64 0, i32 57
  %453 = load i32, ptr %bi_valid276.i, align 4
  %add277.i = add nsw i32 %453, %451
  store i32 %add277.i, ptr %bi_valid276.i, align 4
  br label %if.end278.i

if.end278.i:                                      ; preds = %if.else265.i, %if.then220.i
  %454 = load i32, ptr %code.i, align 4
  %idxprom279.i = zext i32 %454 to i64
  %arrayidx280.i = getelementptr inbounds [30 x i32], ptr @extra_dbits, i64 0, i64 %idxprom279.i
  %455 = load i32, ptr %arrayidx280.i, align 4
  store i32 %455, ptr %extra.i, align 4
  %cmp281.i.not = icmp ult i32 %454, 4
  br i1 %cmp281.i.not, label %if.end344.i, label %if.then283.i

if.then283.i:                                     ; preds = %if.end278.i
  %456 = load i32, ptr %code.i, align 4
  %idxprom284.i = zext i32 %456 to i64
  %arrayidx285.i = getelementptr inbounds [30 x i32], ptr @base_dist, i64 0, i64 %idxprom284.i
  %457 = load i32, ptr %arrayidx285.i, align 4
  %458 = load i32, ptr %dist.i, align 4
  %sub286.i = sub i32 %458, %457
  store i32 %sub286.i, ptr %dist.i, align 4
  %459 = load i32, ptr %extra.i, align 4
  store i32 %459, ptr %len287.i, align 4
  %460 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid288.i = getelementptr inbounds %struct.internal_state, ptr %460, i64 0, i32 57
  %461 = load i32, ptr %bi_valid288.i, align 4
  %sub289.i = sub nsw i32 16, %459
  %cmp290.i = icmp sgt i32 %461, %sub289.i
  br i1 %cmp290.i, label %if.then292.i, label %if.else333.i

if.then292.i:                                     ; preds = %if.then283.i
  %462 = load i32, ptr %dist.i, align 4
  store i32 %462, ptr %val293.i, align 4
  %463 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid294.i = getelementptr inbounds %struct.internal_state, ptr %463, i64 0, i32 57
  %464 = load i32, ptr %bi_valid294.i, align 4
  %shl295.i = shl i32 %462, %464
  %bi_buf296.i = getelementptr inbounds %struct.internal_state, ptr %463, i64 0, i32 56
  %465 = load i16, ptr %bi_buf296.i, align 8
  %466 = trunc i32 %shl295.i to i16
  %conv299.i = or i16 %465, %466
  store i16 %conv299.i, ptr %bi_buf296.i, align 8
  %467 = load ptr, ptr %s.addr.i198, align 8
  %bi_buf300.i = getelementptr inbounds %struct.internal_state, ptr %467, i64 0, i32 56
  %468 = load i16, ptr %bi_buf300.i, align 8
  %conv303.i = trunc i16 %468 to i8
  %pending_buf304.i = getelementptr inbounds %struct.internal_state, ptr %467, i64 0, i32 2
  %469 = load ptr, ptr %pending_buf304.i, align 8
  %pending305.i = getelementptr inbounds %struct.internal_state, ptr %467, i64 0, i32 5
  %470 = load i32, ptr %pending305.i, align 8
  %inc306.i = add i32 %470, 1
  store i32 %inc306.i, ptr %pending305.i, align 8
  %idxprom307.i = zext i32 %470 to i64
  %arrayidx308.i = getelementptr inbounds i8, ptr %469, i64 %idxprom307.i
  store i8 %conv303.i, ptr %arrayidx308.i, align 1
  %471 = load ptr, ptr %s.addr.i198, align 8
  %bi_buf309.i = getelementptr inbounds %struct.internal_state, ptr %471, i64 0, i32 56
  %472 = load i16, ptr %bi_buf309.i, align 8
  %473 = lshr i16 %472, 8
  %conv312.i = trunc i16 %473 to i8
  %pending_buf313.i = getelementptr inbounds %struct.internal_state, ptr %471, i64 0, i32 2
  %474 = load ptr, ptr %pending_buf313.i, align 8
  %475 = load ptr, ptr %s.addr.i198, align 8
  %pending314.i = getelementptr inbounds %struct.internal_state, ptr %475, i64 0, i32 5
  %476 = load i32, ptr %pending314.i, align 8
  %inc315.i = add i32 %476, 1
  store i32 %inc315.i, ptr %pending314.i, align 8
  %idxprom316.i = zext i32 %476 to i64
  %arrayidx317.i = getelementptr inbounds i8, ptr %474, i64 %idxprom316.i
  store i8 %conv312.i, ptr %arrayidx317.i, align 1
  %477 = load i32, ptr %val293.i, align 4
  %conv319.i = and i32 %477, 65535
  %478 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid320.i = getelementptr inbounds %struct.internal_state, ptr %478, i64 0, i32 57
  %479 = load i32, ptr %bi_valid320.i, align 4
  %sub322.i = sub i32 16, %479
  %shr324.i = lshr i32 %conv319.i, %sub322.i
  %conv325.i = trunc i32 %shr324.i to i16
  %bi_buf326.i = getelementptr inbounds %struct.internal_state, ptr %478, i64 0, i32 56
  store i16 %conv325.i, ptr %bi_buf326.i, align 8
  %480 = load i32, ptr %len287.i, align 4
  %sub328.i = add i32 %480, -16
  %481 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid329.i = getelementptr inbounds %struct.internal_state, ptr %481, i64 0, i32 57
  %482 = load i32, ptr %bi_valid329.i, align 4
  %add331.i = add i32 %sub328.i, %482
  store i32 %add331.i, ptr %bi_valid329.i, align 4
  br label %if.end344.i

if.else333.i:                                     ; preds = %if.then283.i
  %483 = load i32, ptr %dist.i, align 4
  %484 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid334.i = getelementptr inbounds %struct.internal_state, ptr %484, i64 0, i32 57
  %485 = load i32, ptr %bi_valid334.i, align 4
  %shl335.i = shl i32 %483, %485
  %bi_buf336.i = getelementptr inbounds %struct.internal_state, ptr %484, i64 0, i32 56
  %486 = load i16, ptr %bi_buf336.i, align 8
  %487 = trunc i32 %shl335.i to i16
  %conv339.i = or i16 %486, %487
  store i16 %conv339.i, ptr %bi_buf336.i, align 8
  %488 = load i32, ptr %len287.i, align 4
  %489 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid340.i = getelementptr inbounds %struct.internal_state, ptr %489, i64 0, i32 57
  %490 = load i32, ptr %bi_valid340.i, align 4
  %add341.i = add nsw i32 %490, %488
  store i32 %add341.i, ptr %bi_valid340.i, align 4
  br label %if.end344.i

if.end344.i:                                      ; preds = %if.end278.i, %if.else333.i, %if.then292.i, %if.then12.i, %if.else.i229
  %491 = load i32, ptr %lx.i, align 4
  %492 = load ptr, ptr %s.addr.i198, align 8
  %last_lit345.i = getelementptr inbounds %struct.internal_state, ptr %492, i64 0, i32 50
  %493 = load i32, ptr %last_lit345.i, align 4
  %cmp346.i = icmp ult i32 %491, %493
  br i1 %cmp346.i, label %do.body.i207, label %if.end348.i, !llvm.loop !18

if.end348.i:                                      ; preds = %if.end344.i, %if.end63
  %494 = load ptr, ptr %ltree.addr.i, align 8
  %dl351.i = getelementptr inbounds %struct.ct_data_s, ptr %494, i64 256, i32 1
  %495 = load i16, ptr %dl351.i, align 2
  %conv352.i = zext i16 %495 to i32
  store i32 %conv352.i, ptr %len349.i, align 4
  %496 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid353.i = getelementptr inbounds %struct.internal_state, ptr %496, i64 0, i32 57
  %497 = load i32, ptr %bi_valid353.i, align 4
  %sub354.i = sub nsw i32 16, %conv352.i
  %cmp355.i = icmp sgt i32 %497, %sub354.i
  br i1 %cmp355.i, label %if.then357.i, label %if.else401.i

if.then357.i:                                     ; preds = %if.end348.i
  %498 = load ptr, ptr %ltree.addr.i, align 8
  %arrayidx359.i = getelementptr inbounds %struct.ct_data_s, ptr %498, i64 256
  %499 = load i16, ptr %arrayidx359.i, align 2
  %conv361.i = zext i16 %499 to i32
  store i32 %conv361.i, ptr %val358.i, align 4
  %500 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid362.i = getelementptr inbounds %struct.internal_state, ptr %500, i64 0, i32 57
  %501 = load i32, ptr %bi_valid362.i, align 4
  %shl363.i = shl i32 %conv361.i, %501
  %bi_buf364.i = getelementptr inbounds %struct.internal_state, ptr %500, i64 0, i32 56
  %502 = load i16, ptr %bi_buf364.i, align 8
  %503 = trunc i32 %shl363.i to i16
  %conv367.i = or i16 %502, %503
  store i16 %conv367.i, ptr %bi_buf364.i, align 8
  %504 = load ptr, ptr %s.addr.i198, align 8
  %bi_buf368.i = getelementptr inbounds %struct.internal_state, ptr %504, i64 0, i32 56
  %505 = load i16, ptr %bi_buf368.i, align 8
  %conv371.i = trunc i16 %505 to i8
  %pending_buf372.i = getelementptr inbounds %struct.internal_state, ptr %504, i64 0, i32 2
  %506 = load ptr, ptr %pending_buf372.i, align 8
  %pending373.i = getelementptr inbounds %struct.internal_state, ptr %504, i64 0, i32 5
  %507 = load i32, ptr %pending373.i, align 8
  %inc374.i = add i32 %507, 1
  store i32 %inc374.i, ptr %pending373.i, align 8
  %idxprom375.i = zext i32 %507 to i64
  %arrayidx376.i = getelementptr inbounds i8, ptr %506, i64 %idxprom375.i
  store i8 %conv371.i, ptr %arrayidx376.i, align 1
  %508 = load ptr, ptr %s.addr.i198, align 8
  %bi_buf377.i = getelementptr inbounds %struct.internal_state, ptr %508, i64 0, i32 56
  %509 = load i16, ptr %bi_buf377.i, align 8
  %510 = lshr i16 %509, 8
  %conv380.i = trunc i16 %510 to i8
  %pending_buf381.i = getelementptr inbounds %struct.internal_state, ptr %508, i64 0, i32 2
  %511 = load ptr, ptr %pending_buf381.i, align 8
  %512 = load ptr, ptr %s.addr.i198, align 8
  %pending382.i = getelementptr inbounds %struct.internal_state, ptr %512, i64 0, i32 5
  %513 = load i32, ptr %pending382.i, align 8
  %inc383.i = add i32 %513, 1
  store i32 %inc383.i, ptr %pending382.i, align 8
  %idxprom384.i = zext i32 %513 to i64
  %arrayidx385.i = getelementptr inbounds i8, ptr %511, i64 %idxprom384.i
  store i8 %conv380.i, ptr %arrayidx385.i, align 1
  %514 = load i32, ptr %val358.i, align 4
  %conv387.i = and i32 %514, 65535
  %515 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid388.i = getelementptr inbounds %struct.internal_state, ptr %515, i64 0, i32 57
  %516 = load i32, ptr %bi_valid388.i, align 4
  %sub390.i = sub i32 16, %516
  %shr392.i = lshr i32 %conv387.i, %sub390.i
  %conv393.i = trunc i32 %shr392.i to i16
  %bi_buf394.i = getelementptr inbounds %struct.internal_state, ptr %515, i64 0, i32 56
  store i16 %conv393.i, ptr %bi_buf394.i, align 8
  %517 = load i32, ptr %len349.i, align 4
  %sub396.i = add i32 %517, -16
  %518 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid397.i = getelementptr inbounds %struct.internal_state, ptr %518, i64 0, i32 57
  %519 = load i32, ptr %bi_valid397.i, align 4
  %add399.i = add i32 %sub396.i, %519
  store i32 %add399.i, ptr %bi_valid397.i, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_11.exit

if.else401.i:                                     ; preds = %if.end348.i
  %520 = load ptr, ptr %ltree.addr.i, align 8
  %arrayidx402.i = getelementptr inbounds %struct.ct_data_s, ptr %520, i64 256
  %521 = load i16, ptr %arrayidx402.i, align 2
  %conv404.i = zext i16 %521 to i32
  %522 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid405.i = getelementptr inbounds %struct.internal_state, ptr %522, i64 0, i32 57
  %523 = load i32, ptr %bi_valid405.i, align 4
  %shl406.i = shl i32 %conv404.i, %523
  %bi_buf407.i = getelementptr inbounds %struct.internal_state, ptr %522, i64 0, i32 56
  %524 = load i16, ptr %bi_buf407.i, align 8
  %525 = trunc i32 %shl406.i to i16
  %conv410.i = or i16 %524, %525
  store i16 %conv410.i, ptr %bi_buf407.i, align 8
  %526 = load i32, ptr %len349.i, align 4
  %527 = load ptr, ptr %s.addr.i198, align 8
  %bi_valid411.i = getelementptr inbounds %struct.internal_state, ptr %527, i64 0, i32 57
  %528 = load i32, ptr %bi_valid411.i, align 4
  %add412.i = add nsw i32 %528, %526
  store i32 %add412.i, ptr %bi_valid411.i, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_11.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_11.exit: ; preds = %if.then357.i, %if.else401.i
  %529 = load ptr, ptr %ltree.addr.i, align 8
  %dl415.i = getelementptr inbounds %struct.ct_data_s, ptr %529, i64 256, i32 1
  %530 = load i16, ptr %dl415.i, align 2
  %conv416.i = zext i16 %530 to i32
  %531 = load ptr, ptr %s.addr.i198, align 8
  %last_eob_len.i = getelementptr inbounds %struct.internal_state, ptr %531, i64 0, i32 55
  store i32 %conv416.i, ptr %last_eob_len.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i198)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ltree.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dtree.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dist.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lc.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lx.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %code.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extra.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i199)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i200)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len62.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val74.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len144.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val150.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len211.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val221.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len287.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val293.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len349.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val358.i)
  br label %if.end131

if.else64:                                        ; preds = %lor.lhs.false
  store i32 3, ptr %len65, align 4
  %532 = load ptr, ptr %s.addr, align 8
  %bi_valid66 = getelementptr inbounds %struct.internal_state, ptr %532, i64 0, i32 57
  %533 = load i32, ptr %bi_valid66, align 4
  %cmp68 = icmp sgt i32 %533, 13
  br i1 %cmp68, label %if.then70, label %if.else112

if.then70:                                        ; preds = %if.else64
  %534 = load i32, ptr %eof.addr, align 4
  %add72 = add nsw i32 %534, 4
  store i32 %add72, ptr %val71, align 4
  %535 = load ptr, ptr %s.addr, align 8
  %bi_valid73 = getelementptr inbounds %struct.internal_state, ptr %535, i64 0, i32 57
  %536 = load i32, ptr %bi_valid73, align 4
  %shl74 = shl i32 %add72, %536
  %bi_buf75 = getelementptr inbounds %struct.internal_state, ptr %535, i64 0, i32 56
  %537 = load i16, ptr %bi_buf75, align 8
  %538 = trunc i32 %shl74 to i16
  %conv78 = or i16 %537, %538
  store i16 %conv78, ptr %bi_buf75, align 8
  %539 = load ptr, ptr %s.addr, align 8
  %bi_buf79 = getelementptr inbounds %struct.internal_state, ptr %539, i64 0, i32 56
  %540 = load i16, ptr %bi_buf79, align 8
  %conv82 = trunc i16 %540 to i8
  %pending_buf83 = getelementptr inbounds %struct.internal_state, ptr %539, i64 0, i32 2
  %541 = load ptr, ptr %pending_buf83, align 8
  %pending84 = getelementptr inbounds %struct.internal_state, ptr %539, i64 0, i32 5
  %542 = load i32, ptr %pending84, align 8
  %inc85 = add i32 %542, 1
  store i32 %inc85, ptr %pending84, align 8
  %idxprom86 = zext i32 %542 to i64
  %arrayidx87 = getelementptr inbounds i8, ptr %541, i64 %idxprom86
  store i8 %conv82, ptr %arrayidx87, align 1
  %543 = load ptr, ptr %s.addr, align 8
  %bi_buf88 = getelementptr inbounds %struct.internal_state, ptr %543, i64 0, i32 56
  %544 = load i16, ptr %bi_buf88, align 8
  %545 = lshr i16 %544, 8
  %conv91 = trunc i16 %545 to i8
  %pending_buf92 = getelementptr inbounds %struct.internal_state, ptr %543, i64 0, i32 2
  %546 = load ptr, ptr %pending_buf92, align 8
  %547 = load ptr, ptr %s.addr, align 8
  %pending93 = getelementptr inbounds %struct.internal_state, ptr %547, i64 0, i32 5
  %548 = load i32, ptr %pending93, align 8
  %inc94 = add i32 %548, 1
  store i32 %inc94, ptr %pending93, align 8
  %idxprom95 = zext i32 %548 to i64
  %arrayidx96 = getelementptr inbounds i8, ptr %546, i64 %idxprom95
  store i8 %conv91, ptr %arrayidx96, align 1
  %549 = load i32, ptr %val71, align 4
  %conv98 = and i32 %549, 65535
  %550 = load ptr, ptr %s.addr, align 8
  %bi_valid99 = getelementptr inbounds %struct.internal_state, ptr %550, i64 0, i32 57
  %551 = load i32, ptr %bi_valid99, align 4
  %sub101 = sub i32 16, %551
  %shr103 = lshr i32 %conv98, %sub101
  %conv104 = trunc i32 %shr103 to i16
  %bi_buf105 = getelementptr inbounds %struct.internal_state, ptr %550, i64 0, i32 56
  store i16 %conv104, ptr %bi_buf105, align 8
  %552 = load i32, ptr %len65, align 4
  %sub107 = add i32 %552, -16
  %553 = load ptr, ptr %s.addr, align 8
  %bi_valid108 = getelementptr inbounds %struct.internal_state, ptr %553, i64 0, i32 57
  %554 = load i32, ptr %bi_valid108, align 4
  %add110 = add i32 %sub107, %554
  store i32 %add110, ptr %bi_valid108, align 4
  br label %if.end122

if.else112:                                       ; preds = %if.else64
  %555 = load i32, ptr %eof.addr, align 4
  %add113 = add nsw i32 %555, 4
  %556 = load ptr, ptr %s.addr, align 8
  %bi_valid114 = getelementptr inbounds %struct.internal_state, ptr %556, i64 0, i32 57
  %557 = load i32, ptr %bi_valid114, align 4
  %shl115 = shl i32 %add113, %557
  %bi_buf116 = getelementptr inbounds %struct.internal_state, ptr %556, i64 0, i32 56
  %558 = load i16, ptr %bi_buf116, align 8
  %559 = trunc i32 %shl115 to i16
  %conv119 = or i16 %558, %559
  store i16 %conv119, ptr %bi_buf116, align 8
  %560 = load i32, ptr %len65, align 4
  %561 = load ptr, ptr %s.addr, align 8
  %bi_valid120 = getelementptr inbounds %struct.internal_state, ptr %561, i64 0, i32 57
  %562 = load i32, ptr %bi_valid120, align 4
  %add121 = add nsw i32 %562, %560
  store i32 %add121, ptr %bi_valid120, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.else112, %if.then70
  %563 = load ptr, ptr %s.addr, align 8
  %max_code = getelementptr inbounds %struct.internal_state, ptr %563, i64 0, i32 40, i32 1
  %564 = load i32, ptr %max_code, align 8
  %add124 = add nsw i32 %564, 1
  %max_code126 = getelementptr inbounds %struct.internal_state, ptr %563, i64 0, i32 41, i32 1
  %565 = load i32, ptr %max_code126, align 8
  %add127 = add nsw i32 %565, 1
  %566 = load i32, ptr %max_blindex, align 4
  %add128 = add nsw i32 %566, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i244)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcodes.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dcodes.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blcodes.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rank.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i245)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i246)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len37.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val43.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len95.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val101.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len155.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val161.i)
  store ptr %563, ptr %s.addr.i244, align 8
  store i32 %add124, ptr %lcodes.addr.i, align 4
  store i32 %add127, ptr %dcodes.addr.i, align 4
  store i32 %add128, ptr %blcodes.addr.i, align 4
  store i32 5, ptr %len.i245, align 4
  %bi_valid.i247 = getelementptr inbounds %struct.internal_state, ptr %563, i64 0, i32 57
  %567 = load i32, ptr %bi_valid.i247, align 4
  %cmp.i249 = icmp sgt i32 %567, 11
  br i1 %cmp.i249, label %if.then.i275, label %if.else.i284

if.then.i275:                                     ; preds = %if.end122
  %568 = load i32, ptr %lcodes.addr.i, align 4
  %sub1.i = add nsw i32 %568, -257
  store i32 %sub1.i, ptr %val.i246, align 4
  %569 = load ptr, ptr %s.addr.i244, align 8
  %bi_valid2.i = getelementptr inbounds %struct.internal_state, ptr %569, i64 0, i32 57
  %570 = load i32, ptr %bi_valid2.i, align 4
  %shl.i250 = shl i32 %sub1.i, %570
  %bi_buf.i251 = getelementptr inbounds %struct.internal_state, ptr %569, i64 0, i32 56
  %571 = load i16, ptr %bi_buf.i251, align 8
  %572 = trunc i32 %shl.i250 to i16
  %conv3.i254 = or i16 %571, %572
  store i16 %conv3.i254, ptr %bi_buf.i251, align 8
  %573 = load ptr, ptr %s.addr.i244, align 8
  %bi_buf4.i = getelementptr inbounds %struct.internal_state, ptr %573, i64 0, i32 56
  %574 = load i16, ptr %bi_buf4.i, align 8
  %conv6.i = trunc i16 %574 to i8
  %pending_buf.i257 = getelementptr inbounds %struct.internal_state, ptr %573, i64 0, i32 2
  %575 = load ptr, ptr %pending_buf.i257, align 8
  %pending.i258 = getelementptr inbounds %struct.internal_state, ptr %573, i64 0, i32 5
  %576 = load i32, ptr %pending.i258, align 8
  %inc.i259 = add i32 %576, 1
  store i32 %inc.i259, ptr %pending.i258, align 8
  %idxprom.i260 = zext i32 %576 to i64
  %arrayidx.i261 = getelementptr inbounds i8, ptr %575, i64 %idxprom.i260
  store i8 %conv6.i, ptr %arrayidx.i261, align 1
  %577 = load ptr, ptr %s.addr.i244, align 8
  %bi_buf7.i = getelementptr inbounds %struct.internal_state, ptr %577, i64 0, i32 56
  %578 = load i16, ptr %bi_buf7.i, align 8
  %579 = lshr i16 %578, 8
  %conv9.i264 = trunc i16 %579 to i8
  %pending_buf10.i = getelementptr inbounds %struct.internal_state, ptr %577, i64 0, i32 2
  %580 = load ptr, ptr %pending_buf10.i, align 8
  %581 = load ptr, ptr %s.addr.i244, align 8
  %pending11.i = getelementptr inbounds %struct.internal_state, ptr %581, i64 0, i32 5
  %582 = load i32, ptr %pending11.i, align 8
  %inc12.i265 = add i32 %582, 1
  store i32 %inc12.i265, ptr %pending11.i, align 8
  %idxprom13.i266 = zext i32 %582 to i64
  %arrayidx14.i267 = getelementptr inbounds i8, ptr %580, i64 %idxprom13.i266
  store i8 %conv9.i264, ptr %arrayidx14.i267, align 1
  %583 = load i32, ptr %val.i246, align 4
  %conv16.i = and i32 %583, 65535
  %584 = load ptr, ptr %s.addr.i244, align 8
  %bi_valid17.i = getelementptr inbounds %struct.internal_state, ptr %584, i64 0, i32 57
  %585 = load i32, ptr %bi_valid17.i, align 4
  %sub19.i = sub i32 16, %585
  %shr20.i = lshr i32 %conv16.i, %sub19.i
  %conv21.i271 = trunc i32 %shr20.i to i16
  %bi_buf22.i = getelementptr inbounds %struct.internal_state, ptr %584, i64 0, i32 56
  store i16 %conv21.i271, ptr %bi_buf22.i, align 8
  %586 = load i32, ptr %len.i245, align 4
  %sub24.i = add i32 %586, -16
  %587 = load ptr, ptr %s.addr.i244, align 8
  %bi_valid25.i = getelementptr inbounds %struct.internal_state, ptr %587, i64 0, i32 57
  %588 = load i32, ptr %bi_valid25.i, align 4
  %add.i273 = add i32 %sub24.i, %588
  store i32 %add.i273, ptr %bi_valid25.i, align 4
  br label %if.end.i285

if.else.i284:                                     ; preds = %if.end122
  %589 = load i32, ptr %lcodes.addr.i, align 4
  %sub28.i = add i32 %589, 65279
  %590 = load ptr, ptr %s.addr.i244, align 8
  %bi_valid29.i276 = getelementptr inbounds %struct.internal_state, ptr %590, i64 0, i32 57
  %591 = load i32, ptr %bi_valid29.i276, align 4
  %shl30.i277 = shl i32 %sub28.i, %591
  %bi_buf31.i278 = getelementptr inbounds %struct.internal_state, ptr %590, i64 0, i32 56
  %592 = load i16, ptr %bi_buf31.i278, align 8
  %593 = trunc i32 %shl30.i277 to i16
  %conv34.i281 = or i16 %592, %593
  store i16 %conv34.i281, ptr %bi_buf31.i278, align 8
  %594 = load i32, ptr %len.i245, align 4
  %595 = load ptr, ptr %s.addr.i244, align 8
  %bi_valid35.i282 = getelementptr inbounds %struct.internal_state, ptr %595, i64 0, i32 57
  %596 = load i32, ptr %bi_valid35.i282, align 4
  %add36.i283 = add nsw i32 %596, %594
  store i32 %add36.i283, ptr %bi_valid35.i282, align 4
  br label %if.end.i285

if.end.i285:                                      ; preds = %if.else.i284, %if.then.i275
  store i32 5, ptr %len37.i, align 4
  %597 = load ptr, ptr %s.addr.i244, align 8
  %bi_valid38.i = getelementptr inbounds %struct.internal_state, ptr %597, i64 0, i32 57
  %598 = load i32, ptr %bi_valid38.i, align 4
  %cmp40.i = icmp sgt i32 %598, 11
  br i1 %cmp40.i, label %if.then42.i, label %if.else84.i

if.then42.i:                                      ; preds = %if.end.i285
  %599 = load i32, ptr %dcodes.addr.i, align 4
  %sub44.i = add nsw i32 %599, -1
  store i32 %sub44.i, ptr %val43.i, align 4
  %600 = load ptr, ptr %s.addr.i244, align 8
  %bi_valid45.i = getelementptr inbounds %struct.internal_state, ptr %600, i64 0, i32 57
  %601 = load i32, ptr %bi_valid45.i, align 4
  %shl46.i = shl i32 %sub44.i, %601
  %bi_buf47.i = getelementptr inbounds %struct.internal_state, ptr %600, i64 0, i32 56
  %602 = load i16, ptr %bi_buf47.i, align 8
  %603 = trunc i32 %shl46.i to i16
  %conv50.i = or i16 %602, %603
  store i16 %conv50.i, ptr %bi_buf47.i, align 8
  %604 = load ptr, ptr %s.addr.i244, align 8
  %bi_buf51.i = getelementptr inbounds %struct.internal_state, ptr %604, i64 0, i32 56
  %605 = load i16, ptr %bi_buf51.i, align 8
  %conv54.i = trunc i16 %605 to i8
  %pending_buf55.i = getelementptr inbounds %struct.internal_state, ptr %604, i64 0, i32 2
  %606 = load ptr, ptr %pending_buf55.i, align 8
  %pending56.i = getelementptr inbounds %struct.internal_state, ptr %604, i64 0, i32 5
  %607 = load i32, ptr %pending56.i, align 8
  %inc57.i = add i32 %607, 1
  store i32 %inc57.i, ptr %pending56.i, align 8
  %idxprom58.i = zext i32 %607 to i64
  %arrayidx59.i = getelementptr inbounds i8, ptr %606, i64 %idxprom58.i
  store i8 %conv54.i, ptr %arrayidx59.i, align 1
  %608 = load ptr, ptr %s.addr.i244, align 8
  %bi_buf60.i = getelementptr inbounds %struct.internal_state, ptr %608, i64 0, i32 56
  %609 = load i16, ptr %bi_buf60.i, align 8
  %610 = lshr i16 %609, 8
  %conv63.i = trunc i16 %610 to i8
  %pending_buf64.i = getelementptr inbounds %struct.internal_state, ptr %608, i64 0, i32 2
  %611 = load ptr, ptr %pending_buf64.i, align 8
  %612 = load ptr, ptr %s.addr.i244, align 8
  %pending65.i = getelementptr inbounds %struct.internal_state, ptr %612, i64 0, i32 5
  %613 = load i32, ptr %pending65.i, align 8
  %inc66.i = add i32 %613, 1
  store i32 %inc66.i, ptr %pending65.i, align 8
  %idxprom67.i = zext i32 %613 to i64
  %arrayidx68.i = getelementptr inbounds i8, ptr %611, i64 %idxprom67.i
  store i8 %conv63.i, ptr %arrayidx68.i, align 1
  %614 = load i32, ptr %val43.i, align 4
  %conv70.i = and i32 %614, 65535
  %615 = load ptr, ptr %s.addr.i244, align 8
  %bi_valid71.i = getelementptr inbounds %struct.internal_state, ptr %615, i64 0, i32 57
  %616 = load i32, ptr %bi_valid71.i, align 4
  %sub73.i = sub i32 16, %616
  %shr75.i = lshr i32 %conv70.i, %sub73.i
  %conv76.i = trunc i32 %shr75.i to i16
  %bi_buf77.i = getelementptr inbounds %struct.internal_state, ptr %615, i64 0, i32 56
  store i16 %conv76.i, ptr %bi_buf77.i, align 8
  %617 = load i32, ptr %len37.i, align 4
  %sub79.i = add i32 %617, -16
  %618 = load ptr, ptr %s.addr.i244, align 8
  %bi_valid80.i = getelementptr inbounds %struct.internal_state, ptr %618, i64 0, i32 57
  %619 = load i32, ptr %bi_valid80.i, align 4
  %add82.i = add i32 %sub79.i, %619
  store i32 %add82.i, ptr %bi_valid80.i, align 4
  br label %if.end94.i

if.else84.i:                                      ; preds = %if.end.i285
  %620 = load i32, ptr %dcodes.addr.i, align 4
  %sub85.i = add i32 %620, 65535
  %621 = load ptr, ptr %s.addr.i244, align 8
  %bi_valid86.i = getelementptr inbounds %struct.internal_state, ptr %621, i64 0, i32 57
  %622 = load i32, ptr %bi_valid86.i, align 4
  %shl87.i = shl i32 %sub85.i, %622
  %bi_buf88.i = getelementptr inbounds %struct.internal_state, ptr %621, i64 0, i32 56
  %623 = load i16, ptr %bi_buf88.i, align 8
  %624 = trunc i32 %shl87.i to i16
  %conv91.i = or i16 %623, %624
  store i16 %conv91.i, ptr %bi_buf88.i, align 8
  %625 = load i32, ptr %len37.i, align 4
  %626 = load ptr, ptr %s.addr.i244, align 8
  %bi_valid92.i = getelementptr inbounds %struct.internal_state, ptr %626, i64 0, i32 57
  %627 = load i32, ptr %bi_valid92.i, align 4
  %add93.i = add nsw i32 %627, %625
  store i32 %add93.i, ptr %bi_valid92.i, align 4
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.else84.i, %if.then42.i
  store i32 4, ptr %len95.i, align 4
  %628 = load ptr, ptr %s.addr.i244, align 8
  %bi_valid96.i = getelementptr inbounds %struct.internal_state, ptr %628, i64 0, i32 57
  %629 = load i32, ptr %bi_valid96.i, align 4
  %cmp98.i = icmp sgt i32 %629, 12
  br i1 %cmp98.i, label %if.then100.i, label %if.else142.i

if.then100.i:                                     ; preds = %if.end94.i
  %630 = load i32, ptr %blcodes.addr.i, align 4
  %sub102.i = add nsw i32 %630, -4
  store i32 %sub102.i, ptr %val101.i, align 4
  %631 = load ptr, ptr %s.addr.i244, align 8
  %bi_valid103.i = getelementptr inbounds %struct.internal_state, ptr %631, i64 0, i32 57
  %632 = load i32, ptr %bi_valid103.i, align 4
  %shl104.i = shl i32 %sub102.i, %632
  %bi_buf105.i = getelementptr inbounds %struct.internal_state, ptr %631, i64 0, i32 56
  %633 = load i16, ptr %bi_buf105.i, align 8
  %634 = trunc i32 %shl104.i to i16
  %conv108.i290 = or i16 %633, %634
  store i16 %conv108.i290, ptr %bi_buf105.i, align 8
  %635 = load ptr, ptr %s.addr.i244, align 8
  %bi_buf109.i = getelementptr inbounds %struct.internal_state, ptr %635, i64 0, i32 56
  %636 = load i16, ptr %bi_buf109.i, align 8
  %conv112.i291 = trunc i16 %636 to i8
  %pending_buf113.i = getelementptr inbounds %struct.internal_state, ptr %635, i64 0, i32 2
  %637 = load ptr, ptr %pending_buf113.i, align 8
  %pending114.i = getelementptr inbounds %struct.internal_state, ptr %635, i64 0, i32 5
  %638 = load i32, ptr %pending114.i, align 8
  %inc115.i = add i32 %638, 1
  store i32 %inc115.i, ptr %pending114.i, align 8
  %idxprom116.i = zext i32 %638 to i64
  %arrayidx117.i = getelementptr inbounds i8, ptr %637, i64 %idxprom116.i
  store i8 %conv112.i291, ptr %arrayidx117.i, align 1
  %639 = load ptr, ptr %s.addr.i244, align 8
  %bi_buf118.i = getelementptr inbounds %struct.internal_state, ptr %639, i64 0, i32 56
  %640 = load i16, ptr %bi_buf118.i, align 8
  %641 = lshr i16 %640, 8
  %conv121.i = trunc i16 %641 to i8
  %pending_buf122.i = getelementptr inbounds %struct.internal_state, ptr %639, i64 0, i32 2
  %642 = load ptr, ptr %pending_buf122.i, align 8
  %643 = load ptr, ptr %s.addr.i244, align 8
  %pending123.i = getelementptr inbounds %struct.internal_state, ptr %643, i64 0, i32 5
  %644 = load i32, ptr %pending123.i, align 8
  %inc124.i = add i32 %644, 1
  store i32 %inc124.i, ptr %pending123.i, align 8
  %idxprom125.i = zext i32 %644 to i64
  %arrayidx126.i = getelementptr inbounds i8, ptr %642, i64 %idxprom125.i
  store i8 %conv121.i, ptr %arrayidx126.i, align 1
  %645 = load i32, ptr %val101.i, align 4
  %conv128.i = and i32 %645, 65535
  %646 = load ptr, ptr %s.addr.i244, align 8
  %bi_valid129.i = getelementptr inbounds %struct.internal_state, ptr %646, i64 0, i32 57
  %647 = load i32, ptr %bi_valid129.i, align 4
  %sub131.i = sub i32 16, %647
  %shr133.i = lshr i32 %conv128.i, %sub131.i
  %conv134.i = trunc i32 %shr133.i to i16
  %bi_buf135.i = getelementptr inbounds %struct.internal_state, ptr %646, i64 0, i32 56
  store i16 %conv134.i, ptr %bi_buf135.i, align 8
  %648 = load i32, ptr %len95.i, align 4
  %sub137.i = add i32 %648, -16
  %649 = load ptr, ptr %s.addr.i244, align 8
  %bi_valid138.i = getelementptr inbounds %struct.internal_state, ptr %649, i64 0, i32 57
  %650 = load i32, ptr %bi_valid138.i, align 4
  %add140.i = add i32 %sub137.i, %650
  store i32 %add140.i, ptr %bi_valid138.i, align 4
  br label %if.end152.i

if.else142.i:                                     ; preds = %if.end94.i
  %651 = load i32, ptr %blcodes.addr.i, align 4
  %sub143.i294 = add i32 %651, 65532
  %652 = load ptr, ptr %s.addr.i244, align 8
  %bi_valid144.i = getelementptr inbounds %struct.internal_state, ptr %652, i64 0, i32 57
  %653 = load i32, ptr %bi_valid144.i, align 4
  %shl145.i = shl i32 %sub143.i294, %653
  %bi_buf146.i = getelementptr inbounds %struct.internal_state, ptr %652, i64 0, i32 56
  %654 = load i16, ptr %bi_buf146.i, align 8
  %655 = trunc i32 %shl145.i to i16
  %conv149.i = or i16 %654, %655
  store i16 %conv149.i, ptr %bi_buf146.i, align 8
  %656 = load i32, ptr %len95.i, align 4
  %657 = load ptr, ptr %s.addr.i244, align 8
  %bi_valid150.i = getelementptr inbounds %struct.internal_state, ptr %657, i64 0, i32 57
  %658 = load i32, ptr %bi_valid150.i, align 4
  %add151.i = add nsw i32 %658, %656
  store i32 %add151.i, ptr %bi_valid150.i, align 4
  br label %if.end152.i

if.end152.i:                                      ; preds = %if.else142.i, %if.then100.i
  br label %for.cond.i295

for.cond.i295:                                    ; preds = %if.end222.i, %if.end152.i
  %storemerge = phi i32 [ 0, %if.end152.i ], [ %inc223.i, %if.end222.i ]
  store i32 %storemerge, ptr %rank.i, align 4
  %659 = load i32, ptr %blcodes.addr.i, align 4
  %cmp153.i = icmp slt i32 %storemerge, %659
  br i1 %cmp153.i, label %for.body.i296, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_12.exit

for.body.i296:                                    ; preds = %for.cond.i295
  store i32 3, ptr %len155.i, align 4
  %660 = load ptr, ptr %s.addr.i244, align 8
  %bi_valid156.i = getelementptr inbounds %struct.internal_state, ptr %660, i64 0, i32 57
  %661 = load i32, ptr %bi_valid156.i, align 4
  %cmp158.i = icmp sgt i32 %661, 13
  br i1 %cmp158.i, label %if.then160.i, label %if.else206.i

if.then160.i:                                     ; preds = %for.body.i296
  %662 = load ptr, ptr %s.addr.i244, align 8
  %663 = load i32, ptr %rank.i, align 4
  %idxprom162.i = sext i32 %663 to i64
  %arrayidx163.i = getelementptr inbounds [19 x i8], ptr @bl_order, i64 0, i64 %idxprom162.i
  %664 = load i8, ptr %arrayidx163.i, align 1
  %idxprom164.i298 = zext i8 %664 to i64
  %dl.i300 = getelementptr inbounds %struct.internal_state, ptr %662, i64 0, i32 39, i64 %idxprom164.i298, i32 1
  %665 = load i16, ptr %dl.i300, align 2
  %conv166.i = zext i16 %665 to i32
  store i32 %conv166.i, ptr %val161.i, align 4
  %666 = load ptr, ptr %s.addr.i244, align 8
  %bi_valid167.i = getelementptr inbounds %struct.internal_state, ptr %666, i64 0, i32 57
  %667 = load i32, ptr %bi_valid167.i, align 4
  %shl168.i = shl i32 %conv166.i, %667
  %bi_buf169.i = getelementptr inbounds %struct.internal_state, ptr %666, i64 0, i32 56
  %668 = load i16, ptr %bi_buf169.i, align 8
  %669 = trunc i32 %shl168.i to i16
  %conv172.i = or i16 %668, %669
  store i16 %conv172.i, ptr %bi_buf169.i, align 8
  %670 = load ptr, ptr %s.addr.i244, align 8
  %bi_buf173.i = getelementptr inbounds %struct.internal_state, ptr %670, i64 0, i32 56
  %671 = load i16, ptr %bi_buf173.i, align 8
  %conv176.i301 = trunc i16 %671 to i8
  %pending_buf177.i = getelementptr inbounds %struct.internal_state, ptr %670, i64 0, i32 2
  %672 = load ptr, ptr %pending_buf177.i, align 8
  %pending178.i = getelementptr inbounds %struct.internal_state, ptr %670, i64 0, i32 5
  %673 = load i32, ptr %pending178.i, align 8
  %inc179.i = add i32 %673, 1
  store i32 %inc179.i, ptr %pending178.i, align 8
  %idxprom180.i = zext i32 %673 to i64
  %arrayidx181.i = getelementptr inbounds i8, ptr %672, i64 %idxprom180.i
  store i8 %conv176.i301, ptr %arrayidx181.i, align 1
  %674 = load ptr, ptr %s.addr.i244, align 8
  %bi_buf182.i = getelementptr inbounds %struct.internal_state, ptr %674, i64 0, i32 56
  %675 = load i16, ptr %bi_buf182.i, align 8
  %676 = lshr i16 %675, 8
  %conv185.i = trunc i16 %676 to i8
  %pending_buf186.i = getelementptr inbounds %struct.internal_state, ptr %674, i64 0, i32 2
  %677 = load ptr, ptr %pending_buf186.i, align 8
  %678 = load ptr, ptr %s.addr.i244, align 8
  %pending187.i = getelementptr inbounds %struct.internal_state, ptr %678, i64 0, i32 5
  %679 = load i32, ptr %pending187.i, align 8
  %inc188.i = add i32 %679, 1
  store i32 %inc188.i, ptr %pending187.i, align 8
  %idxprom189.i = zext i32 %679 to i64
  %arrayidx190.i = getelementptr inbounds i8, ptr %677, i64 %idxprom189.i
  store i8 %conv185.i, ptr %arrayidx190.i, align 1
  %680 = load i32, ptr %val161.i, align 4
  %conv192.i = and i32 %680, 65535
  %681 = load ptr, ptr %s.addr.i244, align 8
  %bi_valid193.i = getelementptr inbounds %struct.internal_state, ptr %681, i64 0, i32 57
  %682 = load i32, ptr %bi_valid193.i, align 4
  %sub195.i = sub i32 16, %682
  %shr197.i = lshr i32 %conv192.i, %sub195.i
  %conv198.i = trunc i32 %shr197.i to i16
  %bi_buf199.i = getelementptr inbounds %struct.internal_state, ptr %681, i64 0, i32 56
  store i16 %conv198.i, ptr %bi_buf199.i, align 8
  %683 = load i32, ptr %len155.i, align 4
  %sub201.i = add i32 %683, -16
  %684 = load ptr, ptr %s.addr.i244, align 8
  %bi_valid202.i = getelementptr inbounds %struct.internal_state, ptr %684, i64 0, i32 57
  %685 = load i32, ptr %bi_valid202.i, align 4
  %add204.i = add i32 %sub201.i, %685
  store i32 %add204.i, ptr %bi_valid202.i, align 4
  br label %if.end222.i

if.else206.i:                                     ; preds = %for.body.i296
  %686 = load ptr, ptr %s.addr.i244, align 8
  %687 = load i32, ptr %rank.i, align 4
  %idxprom208.i304 = sext i32 %687 to i64
  %arrayidx209.i305 = getelementptr inbounds [19 x i8], ptr @bl_order, i64 0, i64 %idxprom208.i304
  %688 = load i8, ptr %arrayidx209.i305, align 1
  %idxprom210.i = zext i8 %688 to i64
  %dl212.i = getelementptr inbounds %struct.internal_state, ptr %686, i64 0, i32 39, i64 %idxprom210.i, i32 1
  %689 = load i16, ptr %dl212.i, align 2
  %conv213.i = zext i16 %689 to i32
  %690 = load ptr, ptr %s.addr.i244, align 8
  %bi_valid214.i = getelementptr inbounds %struct.internal_state, ptr %690, i64 0, i32 57
  %691 = load i32, ptr %bi_valid214.i, align 4
  %shl215.i = shl i32 %conv213.i, %691
  %bi_buf216.i = getelementptr inbounds %struct.internal_state, ptr %690, i64 0, i32 56
  %692 = load i16, ptr %bi_buf216.i, align 8
  %693 = trunc i32 %shl215.i to i16
  %conv219.i = or i16 %692, %693
  store i16 %conv219.i, ptr %bi_buf216.i, align 8
  %694 = load i32, ptr %len155.i, align 4
  %695 = load ptr, ptr %s.addr.i244, align 8
  %bi_valid220.i = getelementptr inbounds %struct.internal_state, ptr %695, i64 0, i32 57
  %696 = load i32, ptr %bi_valid220.i, align 4
  %add221.i = add nsw i32 %696, %694
  store i32 %add221.i, ptr %bi_valid220.i, align 4
  br label %if.end222.i

if.end222.i:                                      ; preds = %if.else206.i, %if.then160.i
  %697 = load i32, ptr %rank.i, align 4
  %inc223.i = add nsw i32 %697, 1
  br label %for.cond.i295, !llvm.loop !19

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_12.exit: ; preds = %for.cond.i295
  %698 = load ptr, ptr %s.addr.i244, align 8
  %dyn_ltree.i306 = getelementptr inbounds %struct.internal_state, ptr %698, i64 0, i32 37
  %699 = load i32, ptr %lcodes.addr.i, align 4
  %sub224.i = add nsw i32 %699, -1
  call void @send_tree(ptr noundef %698, ptr noundef nonnull %dyn_ltree.i306, i32 noundef %sub224.i)
  %dyn_dtree.i307 = getelementptr inbounds %struct.internal_state, ptr %698, i64 0, i32 38
  %700 = load i32, ptr %dcodes.addr.i, align 4
  %sub226.i = add nsw i32 %700, -1
  call void @send_tree(ptr noundef %698, ptr noundef nonnull %dyn_dtree.i307, i32 noundef %sub226.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i244)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcodes.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dcodes.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blcodes.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rank.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i245)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i246)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len37.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val43.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len95.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val101.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len155.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val161.i)
  %701 = load ptr, ptr %s.addr, align 8
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %701, i64 0, i32 37
  %dyn_dtree = getelementptr inbounds %struct.internal_state, ptr %701, i64 0, i32 38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i309)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ltree.addr.i310)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dtree.addr.i311)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dist.i312)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lc.i313)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lx.i314)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %code.i315)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %extra.i316)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i317)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i318)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len62.i319)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val74.i320)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len144.i321)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val150.i322)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len211.i323)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val221.i324)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len287.i325)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val293.i326)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len349.i327)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val358.i328)
  store ptr %701, ptr %s.addr.i309, align 8
  store ptr %dyn_ltree, ptr %ltree.addr.i310, align 8
  store ptr %dyn_dtree, ptr %dtree.addr.i311, align 8
  store i32 0, ptr %lx.i314, align 4
  %last_lit.i329 = getelementptr inbounds %struct.internal_state, ptr %701, i64 0, i32 50
  %702 = load i32, ptr %last_lit.i329, align 4
  %cmp.i330.not = icmp eq i32 %702, 0
  br i1 %cmp.i330.not, label %if.end348.i689, label %do.body.i342

do.body.i342:                                     ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_12.exit, %if.end344.i679
  %703 = load ptr, ptr %s.addr.i309, align 8
  %d_buf.i332 = getelementptr inbounds %struct.internal_state, ptr %703, i64 0, i32 51
  %704 = load ptr, ptr %d_buf.i332, align 8
  %705 = load i32, ptr %lx.i314, align 4
  %idxprom.i333 = zext i32 %705 to i64
  %arrayidx.i334 = getelementptr inbounds i16, ptr %704, i64 %idxprom.i333
  %706 = load i16, ptr %arrayidx.i334, align 2
  %conv.i335 = zext i16 %706 to i32
  store i32 %conv.i335, ptr %dist.i312, align 4
  %707 = load ptr, ptr %s.addr.i309, align 8
  %l_buf.i336 = getelementptr inbounds %struct.internal_state, ptr %707, i64 0, i32 48
  %708 = load ptr, ptr %l_buf.i336, align 8
  %709 = load i32, ptr %lx.i314, align 4
  %inc.i337 = add i32 %709, 1
  store i32 %inc.i337, ptr %lx.i314, align 4
  %idxprom1.i338 = zext i32 %709 to i64
  %arrayidx2.i339 = getelementptr inbounds i8, ptr %708, i64 %idxprom1.i338
  %710 = load i8, ptr %arrayidx2.i339, align 1
  %conv3.i340 = zext i8 %710 to i32
  store i32 %conv3.i340, ptr %lc.i313, align 4
  %711 = load i32, ptr %dist.i312, align 4
  %cmp4.i341 = icmp eq i32 %711, 0
  br i1 %cmp4.i341, label %if.then6.i350, label %if.else58.i419

if.then6.i350:                                    ; preds = %do.body.i342
  %712 = load ptr, ptr %ltree.addr.i310, align 8
  %713 = load i32, ptr %lc.i313, align 4
  %idxprom7.i343 = sext i32 %713 to i64
  %dl.i345 = getelementptr inbounds %struct.ct_data_s, ptr %712, i64 %idxprom7.i343, i32 1
  %714 = load i16, ptr %dl.i345, align 2
  %conv9.i346 = zext i16 %714 to i32
  store i32 %conv9.i346, ptr %len.i317, align 4
  %715 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid.i347 = getelementptr inbounds %struct.internal_state, ptr %715, i64 0, i32 57
  %716 = load i32, ptr %bi_valid.i347, align 4
  %sub.i348 = sub nsw i32 16, %conv9.i346
  %cmp10.i349 = icmp sgt i32 %716, %sub.i348
  br i1 %cmp10.i349, label %if.then12.i393, label %if.else.i405

if.then12.i393:                                   ; preds = %if.then6.i350
  %717 = load ptr, ptr %ltree.addr.i310, align 8
  %718 = load i32, ptr %lc.i313, align 4
  %idxprom13.i351 = sext i32 %718 to i64
  %arrayidx14.i352 = getelementptr inbounds %struct.ct_data_s, ptr %717, i64 %idxprom13.i351
  %719 = load i16, ptr %arrayidx14.i352, align 2
  %conv15.i353 = zext i16 %719 to i32
  store i32 %conv15.i353, ptr %val.i318, align 4
  %720 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid16.i354 = getelementptr inbounds %struct.internal_state, ptr %720, i64 0, i32 57
  %721 = load i32, ptr %bi_valid16.i354, align 4
  %shl.i355 = shl i32 %conv15.i353, %721
  %bi_buf.i356 = getelementptr inbounds %struct.internal_state, ptr %720, i64 0, i32 56
  %722 = load i16, ptr %bi_buf.i356, align 8
  %723 = trunc i32 %shl.i355 to i16
  %conv18.i359 = or i16 %722, %723
  store i16 %conv18.i359, ptr %bi_buf.i356, align 8
  %724 = load ptr, ptr %s.addr.i309, align 8
  %bi_buf19.i360 = getelementptr inbounds %struct.internal_state, ptr %724, i64 0, i32 56
  %725 = load i16, ptr %bi_buf19.i360, align 8
  %conv21.i363 = trunc i16 %725 to i8
  %pending_buf.i364 = getelementptr inbounds %struct.internal_state, ptr %724, i64 0, i32 2
  %726 = load ptr, ptr %pending_buf.i364, align 8
  %pending.i365 = getelementptr inbounds %struct.internal_state, ptr %724, i64 0, i32 5
  %727 = load i32, ptr %pending.i365, align 8
  %inc22.i366 = add i32 %727, 1
  store i32 %inc22.i366, ptr %pending.i365, align 8
  %idxprom23.i367 = zext i32 %727 to i64
  %arrayidx24.i368 = getelementptr inbounds i8, ptr %726, i64 %idxprom23.i367
  store i8 %conv21.i363, ptr %arrayidx24.i368, align 1
  %728 = load ptr, ptr %s.addr.i309, align 8
  %bi_buf25.i369 = getelementptr inbounds %struct.internal_state, ptr %728, i64 0, i32 56
  %729 = load i16, ptr %bi_buf25.i369, align 8
  %730 = lshr i16 %729, 8
  %conv27.i372 = trunc i16 %730 to i8
  %pending_buf28.i373 = getelementptr inbounds %struct.internal_state, ptr %728, i64 0, i32 2
  %731 = load ptr, ptr %pending_buf28.i373, align 8
  %732 = load ptr, ptr %s.addr.i309, align 8
  %pending29.i374 = getelementptr inbounds %struct.internal_state, ptr %732, i64 0, i32 5
  %733 = load i32, ptr %pending29.i374, align 8
  %inc30.i375 = add i32 %733, 1
  store i32 %inc30.i375, ptr %pending29.i374, align 8
  %idxprom31.i376 = zext i32 %733 to i64
  %arrayidx32.i377 = getelementptr inbounds i8, ptr %731, i64 %idxprom31.i376
  store i8 %conv27.i372, ptr %arrayidx32.i377, align 1
  %734 = load i32, ptr %val.i318, align 4
  %conv34.i379 = and i32 %734, 65535
  %735 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid35.i380 = getelementptr inbounds %struct.internal_state, ptr %735, i64 0, i32 57
  %736 = load i32, ptr %bi_valid35.i380, align 4
  %sub37.i382 = sub i32 16, %736
  %shr38.i384 = lshr i32 %conv34.i379, %sub37.i382
  %conv39.i385 = trunc i32 %shr38.i384 to i16
  %bi_buf40.i386 = getelementptr inbounds %struct.internal_state, ptr %735, i64 0, i32 56
  store i16 %conv39.i385, ptr %bi_buf40.i386, align 8
  %737 = load i32, ptr %len.i317, align 4
  %sub42.i388 = add i32 %737, -16
  %738 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid43.i389 = getelementptr inbounds %struct.internal_state, ptr %738, i64 0, i32 57
  %739 = load i32, ptr %bi_valid43.i389, align 4
  %add.i391 = add i32 %sub42.i388, %739
  store i32 %add.i391, ptr %bi_valid43.i389, align 4
  br label %if.end344.i679

if.else.i405:                                     ; preds = %if.then6.i350
  %740 = load ptr, ptr %ltree.addr.i310, align 8
  %741 = load i32, ptr %lc.i313, align 4
  %idxprom46.i394 = sext i32 %741 to i64
  %arrayidx47.i395 = getelementptr inbounds %struct.ct_data_s, ptr %740, i64 %idxprom46.i394
  %742 = load i16, ptr %arrayidx47.i395, align 2
  %conv49.i396 = zext i16 %742 to i32
  %743 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid50.i397 = getelementptr inbounds %struct.internal_state, ptr %743, i64 0, i32 57
  %744 = load i32, ptr %bi_valid50.i397, align 4
  %shl51.i398 = shl i32 %conv49.i396, %744
  %bi_buf52.i399 = getelementptr inbounds %struct.internal_state, ptr %743, i64 0, i32 56
  %745 = load i16, ptr %bi_buf52.i399, align 8
  %746 = trunc i32 %shl51.i398 to i16
  %conv55.i402 = or i16 %745, %746
  store i16 %conv55.i402, ptr %bi_buf52.i399, align 8
  %747 = load i32, ptr %len.i317, align 4
  %748 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid56.i403 = getelementptr inbounds %struct.internal_state, ptr %748, i64 0, i32 57
  %749 = load i32, ptr %bi_valid56.i403, align 4
  %add57.i404 = add nsw i32 %749, %747
  store i32 %add57.i404, ptr %bi_valid56.i403, align 4
  br label %if.end344.i679

if.else58.i419:                                   ; preds = %do.body.i342
  %750 = load i32, ptr %lc.i313, align 4
  %idxprom59.i407 = sext i32 %750 to i64
  %arrayidx60.i408 = getelementptr inbounds [256 x i8], ptr @_length_code, i64 0, i64 %idxprom59.i407
  %751 = load i8, ptr %arrayidx60.i408, align 1
  %conv61.i409 = zext i8 %751 to i32
  store i32 %conv61.i409, ptr %code.i315, align 4
  %752 = load ptr, ptr %ltree.addr.i310, align 8
  %add64.i411 = add nuw nsw i32 %conv61.i409, 257
  %idxprom65.i412 = zext i32 %add64.i411 to i64
  %dl67.i414 = getelementptr inbounds %struct.ct_data_s, ptr %752, i64 %idxprom65.i412, i32 1
  %753 = load i16, ptr %dl67.i414, align 2
  %conv68.i415 = zext i16 %753 to i32
  store i32 %conv68.i415, ptr %len62.i319, align 4
  %754 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid69.i416 = getelementptr inbounds %struct.internal_state, ptr %754, i64 0, i32 57
  %755 = load i32, ptr %bi_valid69.i416, align 4
  %sub70.i417 = sub nsw i32 16, %conv68.i415
  %cmp71.i418 = icmp sgt i32 %755, %sub70.i417
  br i1 %cmp71.i418, label %if.then73.i464, label %if.else120.i478

if.then73.i464:                                   ; preds = %if.else58.i419
  %756 = load ptr, ptr %ltree.addr.i310, align 8
  %757 = load i32, ptr %code.i315, align 4
  %add76.i421 = add i32 %757, 257
  %idxprom77.i422 = zext i32 %add76.i421 to i64
  %arrayidx78.i423 = getelementptr inbounds %struct.ct_data_s, ptr %756, i64 %idxprom77.i422
  %758 = load i16, ptr %arrayidx78.i423, align 2
  %conv80.i424 = zext i16 %758 to i32
  store i32 %conv80.i424, ptr %val74.i320, align 4
  %759 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid81.i425 = getelementptr inbounds %struct.internal_state, ptr %759, i64 0, i32 57
  %760 = load i32, ptr %bi_valid81.i425, align 4
  %shl82.i426 = shl i32 %conv80.i424, %760
  %bi_buf83.i427 = getelementptr inbounds %struct.internal_state, ptr %759, i64 0, i32 56
  %761 = load i16, ptr %bi_buf83.i427, align 8
  %762 = trunc i32 %shl82.i426 to i16
  %conv86.i430 = or i16 %761, %762
  store i16 %conv86.i430, ptr %bi_buf83.i427, align 8
  %763 = load ptr, ptr %s.addr.i309, align 8
  %bi_buf87.i431 = getelementptr inbounds %struct.internal_state, ptr %763, i64 0, i32 56
  %764 = load i16, ptr %bi_buf87.i431, align 8
  %conv90.i434 = trunc i16 %764 to i8
  %pending_buf91.i435 = getelementptr inbounds %struct.internal_state, ptr %763, i64 0, i32 2
  %765 = load ptr, ptr %pending_buf91.i435, align 8
  %pending92.i436 = getelementptr inbounds %struct.internal_state, ptr %763, i64 0, i32 5
  %766 = load i32, ptr %pending92.i436, align 8
  %inc93.i437 = add i32 %766, 1
  store i32 %inc93.i437, ptr %pending92.i436, align 8
  %idxprom94.i438 = zext i32 %766 to i64
  %arrayidx95.i439 = getelementptr inbounds i8, ptr %765, i64 %idxprom94.i438
  store i8 %conv90.i434, ptr %arrayidx95.i439, align 1
  %767 = load ptr, ptr %s.addr.i309, align 8
  %bi_buf96.i440 = getelementptr inbounds %struct.internal_state, ptr %767, i64 0, i32 56
  %768 = load i16, ptr %bi_buf96.i440, align 8
  %769 = lshr i16 %768, 8
  %conv99.i443 = trunc i16 %769 to i8
  %pending_buf100.i444 = getelementptr inbounds %struct.internal_state, ptr %767, i64 0, i32 2
  %770 = load ptr, ptr %pending_buf100.i444, align 8
  %771 = load ptr, ptr %s.addr.i309, align 8
  %pending101.i445 = getelementptr inbounds %struct.internal_state, ptr %771, i64 0, i32 5
  %772 = load i32, ptr %pending101.i445, align 8
  %inc102.i446 = add i32 %772, 1
  store i32 %inc102.i446, ptr %pending101.i445, align 8
  %idxprom103.i447 = zext i32 %772 to i64
  %arrayidx104.i448 = getelementptr inbounds i8, ptr %770, i64 %idxprom103.i447
  store i8 %conv99.i443, ptr %arrayidx104.i448, align 1
  %773 = load i32, ptr %val74.i320, align 4
  %conv106.i450 = and i32 %773, 65535
  %774 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid107.i451 = getelementptr inbounds %struct.internal_state, ptr %774, i64 0, i32 57
  %775 = load i32, ptr %bi_valid107.i451, align 4
  %sub109.i453 = sub i32 16, %775
  %shr111.i455 = lshr i32 %conv106.i450, %sub109.i453
  %conv112.i456 = trunc i32 %shr111.i455 to i16
  %bi_buf113.i457 = getelementptr inbounds %struct.internal_state, ptr %774, i64 0, i32 56
  store i16 %conv112.i456, ptr %bi_buf113.i457, align 8
  %776 = load i32, ptr %len62.i319, align 4
  %sub115.i459 = add i32 %776, -16
  %777 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid116.i460 = getelementptr inbounds %struct.internal_state, ptr %777, i64 0, i32 57
  %778 = load i32, ptr %bi_valid116.i460, align 4
  %add118.i462 = add i32 %sub115.i459, %778
  store i32 %add118.i462, ptr %bi_valid116.i460, align 4
  br label %if.end135.i482

if.else120.i478:                                  ; preds = %if.else58.i419
  %779 = load ptr, ptr %ltree.addr.i310, align 8
  %780 = load i32, ptr %code.i315, align 4
  %add122.i466 = add i32 %780, 257
  %idxprom123.i467 = zext i32 %add122.i466 to i64
  %arrayidx124.i468 = getelementptr inbounds %struct.ct_data_s, ptr %779, i64 %idxprom123.i467
  %781 = load i16, ptr %arrayidx124.i468, align 2
  %conv126.i469 = zext i16 %781 to i32
  %782 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid127.i470 = getelementptr inbounds %struct.internal_state, ptr %782, i64 0, i32 57
  %783 = load i32, ptr %bi_valid127.i470, align 4
  %shl128.i471 = shl i32 %conv126.i469, %783
  %bi_buf129.i472 = getelementptr inbounds %struct.internal_state, ptr %782, i64 0, i32 56
  %784 = load i16, ptr %bi_buf129.i472, align 8
  %785 = trunc i32 %shl128.i471 to i16
  %conv132.i475 = or i16 %784, %785
  store i16 %conv132.i475, ptr %bi_buf129.i472, align 8
  %786 = load i32, ptr %len62.i319, align 4
  %787 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid133.i476 = getelementptr inbounds %struct.internal_state, ptr %787, i64 0, i32 57
  %788 = load i32, ptr %bi_valid133.i476, align 4
  %add134.i477 = add nsw i32 %788, %786
  store i32 %add134.i477, ptr %bi_valid133.i476, align 4
  br label %if.end135.i482

if.end135.i482:                                   ; preds = %if.else120.i478, %if.then73.i464
  %789 = load i32, ptr %code.i315, align 4
  %idxprom136.i479 = zext i32 %789 to i64
  %arrayidx137.i480 = getelementptr inbounds [29 x i32], ptr @extra_lbits, i64 0, i64 %idxprom136.i479
  %790 = load i32, ptr %arrayidx137.i480, align 4
  store i32 %790, ptr %extra.i316, align 4
  %791 = add nsw i64 %idxprom136.i479, -28
  %cmp138.i481.not = icmp ult i64 %791, -20
  br i1 %cmp138.i481.not, label %if.end200.i542, label %if.then140.i489

if.then140.i489:                                  ; preds = %if.end135.i482
  %792 = load i32, ptr %code.i315, align 4
  %idxprom141.i483 = zext i32 %792 to i64
  %arrayidx142.i484 = getelementptr inbounds [29 x i32], ptr @base_length, i64 0, i64 %idxprom141.i483
  %793 = load i32, ptr %arrayidx142.i484, align 4
  %794 = load i32, ptr %lc.i313, align 4
  %sub143.i485 = sub nsw i32 %794, %793
  store i32 %sub143.i485, ptr %lc.i313, align 4
  %795 = load i32, ptr %extra.i316, align 4
  store i32 %795, ptr %len144.i321, align 4
  %796 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid145.i486 = getelementptr inbounds %struct.internal_state, ptr %796, i64 0, i32 57
  %797 = load i32, ptr %bi_valid145.i486, align 4
  %sub146.i487 = sub nsw i32 16, %795
  %cmp147.i488 = icmp sgt i32 %797, %sub146.i487
  br i1 %cmp147.i488, label %if.then149.i529, label %if.else190.i538

if.then149.i529:                                  ; preds = %if.then140.i489
  %798 = load i32, ptr %lc.i313, align 4
  store i32 %798, ptr %val150.i322, align 4
  %799 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid151.i490 = getelementptr inbounds %struct.internal_state, ptr %799, i64 0, i32 57
  %800 = load i32, ptr %bi_valid151.i490, align 4
  %shl152.i491 = shl i32 %798, %800
  %bi_buf153.i492 = getelementptr inbounds %struct.internal_state, ptr %799, i64 0, i32 56
  %801 = load i16, ptr %bi_buf153.i492, align 8
  %802 = trunc i32 %shl152.i491 to i16
  %conv156.i495 = or i16 %801, %802
  store i16 %conv156.i495, ptr %bi_buf153.i492, align 8
  %803 = load ptr, ptr %s.addr.i309, align 8
  %bi_buf157.i496 = getelementptr inbounds %struct.internal_state, ptr %803, i64 0, i32 56
  %804 = load i16, ptr %bi_buf157.i496, align 8
  %conv160.i499 = trunc i16 %804 to i8
  %pending_buf161.i500 = getelementptr inbounds %struct.internal_state, ptr %803, i64 0, i32 2
  %805 = load ptr, ptr %pending_buf161.i500, align 8
  %pending162.i501 = getelementptr inbounds %struct.internal_state, ptr %803, i64 0, i32 5
  %806 = load i32, ptr %pending162.i501, align 8
  %inc163.i502 = add i32 %806, 1
  store i32 %inc163.i502, ptr %pending162.i501, align 8
  %idxprom164.i503 = zext i32 %806 to i64
  %arrayidx165.i504 = getelementptr inbounds i8, ptr %805, i64 %idxprom164.i503
  store i8 %conv160.i499, ptr %arrayidx165.i504, align 1
  %807 = load ptr, ptr %s.addr.i309, align 8
  %bi_buf166.i505 = getelementptr inbounds %struct.internal_state, ptr %807, i64 0, i32 56
  %808 = load i16, ptr %bi_buf166.i505, align 8
  %809 = lshr i16 %808, 8
  %conv169.i508 = trunc i16 %809 to i8
  %pending_buf170.i509 = getelementptr inbounds %struct.internal_state, ptr %807, i64 0, i32 2
  %810 = load ptr, ptr %pending_buf170.i509, align 8
  %811 = load ptr, ptr %s.addr.i309, align 8
  %pending171.i510 = getelementptr inbounds %struct.internal_state, ptr %811, i64 0, i32 5
  %812 = load i32, ptr %pending171.i510, align 8
  %inc172.i511 = add i32 %812, 1
  store i32 %inc172.i511, ptr %pending171.i510, align 8
  %idxprom173.i512 = zext i32 %812 to i64
  %arrayidx174.i513 = getelementptr inbounds i8, ptr %810, i64 %idxprom173.i512
  store i8 %conv169.i508, ptr %arrayidx174.i513, align 1
  %813 = load i32, ptr %val150.i322, align 4
  %conv176.i515 = and i32 %813, 65535
  %814 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid177.i516 = getelementptr inbounds %struct.internal_state, ptr %814, i64 0, i32 57
  %815 = load i32, ptr %bi_valid177.i516, align 4
  %sub179.i518 = sub i32 16, %815
  %shr181.i520 = lshr i32 %conv176.i515, %sub179.i518
  %conv182.i521 = trunc i32 %shr181.i520 to i16
  %bi_buf183.i522 = getelementptr inbounds %struct.internal_state, ptr %814, i64 0, i32 56
  store i16 %conv182.i521, ptr %bi_buf183.i522, align 8
  %816 = load i32, ptr %len144.i321, align 4
  %sub185.i524 = add i32 %816, -16
  %817 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid186.i525 = getelementptr inbounds %struct.internal_state, ptr %817, i64 0, i32 57
  %818 = load i32, ptr %bi_valid186.i525, align 4
  %add188.i527 = add i32 %sub185.i524, %818
  store i32 %add188.i527, ptr %bi_valid186.i525, align 4
  br label %if.end200.i542

if.else190.i538:                                  ; preds = %if.then140.i489
  %819 = load i32, ptr %lc.i313, align 4
  %820 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid191.i530 = getelementptr inbounds %struct.internal_state, ptr %820, i64 0, i32 57
  %821 = load i32, ptr %bi_valid191.i530, align 4
  %shl192.i531 = shl i32 %819, %821
  %bi_buf193.i532 = getelementptr inbounds %struct.internal_state, ptr %820, i64 0, i32 56
  %822 = load i16, ptr %bi_buf193.i532, align 8
  %823 = trunc i32 %shl192.i531 to i16
  %conv196.i535 = or i16 %822, %823
  store i16 %conv196.i535, ptr %bi_buf193.i532, align 8
  %824 = load i32, ptr %len144.i321, align 4
  %825 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid197.i536 = getelementptr inbounds %struct.internal_state, ptr %825, i64 0, i32 57
  %826 = load i32, ptr %bi_valid197.i536, align 4
  %add198.i537 = add nsw i32 %826, %824
  store i32 %add198.i537, ptr %bi_valid197.i536, align 4
  br label %if.end200.i542

if.end200.i542:                                   ; preds = %if.then149.i529, %if.else190.i538, %if.end135.i482
  %827 = load i32, ptr %dist.i312, align 4
  %dec.i540 = add i32 %827, -1
  store i32 %dec.i540, ptr %dist.i312, align 4
  %cmp201.i541 = icmp ult i32 %dec.i540, 256
  %828 = load i32, ptr %dist.i312, align 4
  %829 = load i32, ptr %dist.i312, align 4
  %shr206.i547 = lshr i32 %829, 7
  %add207.i548 = add nuw nsw i32 %shr206.i547, 256
  %idxprom203.i543.pn.in = select i1 %cmp201.i541, i32 %828, i32 %add207.i548
  %idxprom203.i543.pn = zext i32 %idxprom203.i543.pn.in to i64
  %cond.i553.in.in = getelementptr inbounds [512 x i8], ptr @_dist_code, i64 0, i64 %idxprom203.i543.pn
  %cond.i553.in = load i8, ptr %cond.i553.in.in, align 1
  %cond.i553 = zext i8 %cond.i553.in to i32
  store i32 %cond.i553, ptr %code.i315, align 4
  %830 = load ptr, ptr %dtree.addr.i311, align 8
  %idxprom212.i554 = zext i8 %cond.i553.in to i64
  %dl214.i556 = getelementptr inbounds %struct.ct_data_s, ptr %830, i64 %idxprom212.i554, i32 1
  %831 = load i16, ptr %dl214.i556, align 2
  %conv215.i557 = zext i16 %831 to i32
  store i32 %conv215.i557, ptr %len211.i323, align 4
  %832 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid216.i558 = getelementptr inbounds %struct.internal_state, ptr %832, i64 0, i32 57
  %833 = load i32, ptr %bi_valid216.i558, align 4
  %sub217.i559 = sub nsw i32 16, %conv215.i557
  %cmp218.i560 = icmp sgt i32 %833, %sub217.i559
  br i1 %cmp218.i560, label %if.then220.i604, label %if.else265.i616

if.then220.i604:                                  ; preds = %if.end200.i542
  %834 = load ptr, ptr %dtree.addr.i311, align 8
  %835 = load i32, ptr %code.i315, align 4
  %idxprom222.i562 = zext i32 %835 to i64
  %arrayidx223.i563 = getelementptr inbounds %struct.ct_data_s, ptr %834, i64 %idxprom222.i562
  %836 = load i16, ptr %arrayidx223.i563, align 2
  %conv225.i564 = zext i16 %836 to i32
  store i32 %conv225.i564, ptr %val221.i324, align 4
  %837 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid226.i565 = getelementptr inbounds %struct.internal_state, ptr %837, i64 0, i32 57
  %838 = load i32, ptr %bi_valid226.i565, align 4
  %shl227.i566 = shl i32 %conv225.i564, %838
  %bi_buf228.i567 = getelementptr inbounds %struct.internal_state, ptr %837, i64 0, i32 56
  %839 = load i16, ptr %bi_buf228.i567, align 8
  %840 = trunc i32 %shl227.i566 to i16
  %conv231.i570 = or i16 %839, %840
  store i16 %conv231.i570, ptr %bi_buf228.i567, align 8
  %841 = load ptr, ptr %s.addr.i309, align 8
  %bi_buf232.i571 = getelementptr inbounds %struct.internal_state, ptr %841, i64 0, i32 56
  %842 = load i16, ptr %bi_buf232.i571, align 8
  %conv235.i574 = trunc i16 %842 to i8
  %pending_buf236.i575 = getelementptr inbounds %struct.internal_state, ptr %841, i64 0, i32 2
  %843 = load ptr, ptr %pending_buf236.i575, align 8
  %pending237.i576 = getelementptr inbounds %struct.internal_state, ptr %841, i64 0, i32 5
  %844 = load i32, ptr %pending237.i576, align 8
  %inc238.i577 = add i32 %844, 1
  store i32 %inc238.i577, ptr %pending237.i576, align 8
  %idxprom239.i578 = zext i32 %844 to i64
  %arrayidx240.i579 = getelementptr inbounds i8, ptr %843, i64 %idxprom239.i578
  store i8 %conv235.i574, ptr %arrayidx240.i579, align 1
  %845 = load ptr, ptr %s.addr.i309, align 8
  %bi_buf241.i580 = getelementptr inbounds %struct.internal_state, ptr %845, i64 0, i32 56
  %846 = load i16, ptr %bi_buf241.i580, align 8
  %847 = lshr i16 %846, 8
  %conv244.i583 = trunc i16 %847 to i8
  %pending_buf245.i584 = getelementptr inbounds %struct.internal_state, ptr %845, i64 0, i32 2
  %848 = load ptr, ptr %pending_buf245.i584, align 8
  %849 = load ptr, ptr %s.addr.i309, align 8
  %pending246.i585 = getelementptr inbounds %struct.internal_state, ptr %849, i64 0, i32 5
  %850 = load i32, ptr %pending246.i585, align 8
  %inc247.i586 = add i32 %850, 1
  store i32 %inc247.i586, ptr %pending246.i585, align 8
  %idxprom248.i587 = zext i32 %850 to i64
  %arrayidx249.i588 = getelementptr inbounds i8, ptr %848, i64 %idxprom248.i587
  store i8 %conv244.i583, ptr %arrayidx249.i588, align 1
  %851 = load i32, ptr %val221.i324, align 4
  %conv251.i590 = and i32 %851, 65535
  %852 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid252.i591 = getelementptr inbounds %struct.internal_state, ptr %852, i64 0, i32 57
  %853 = load i32, ptr %bi_valid252.i591, align 4
  %sub254.i593 = sub i32 16, %853
  %shr256.i595 = lshr i32 %conv251.i590, %sub254.i593
  %conv257.i596 = trunc i32 %shr256.i595 to i16
  %bi_buf258.i597 = getelementptr inbounds %struct.internal_state, ptr %852, i64 0, i32 56
  store i16 %conv257.i596, ptr %bi_buf258.i597, align 8
  %854 = load i32, ptr %len211.i323, align 4
  %sub260.i599 = add i32 %854, -16
  %855 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid261.i600 = getelementptr inbounds %struct.internal_state, ptr %855, i64 0, i32 57
  %856 = load i32, ptr %bi_valid261.i600, align 4
  %add263.i602 = add i32 %sub260.i599, %856
  store i32 %add263.i602, ptr %bi_valid261.i600, align 4
  br label %if.end278.i620

if.else265.i616:                                  ; preds = %if.end200.i542
  %857 = load ptr, ptr %dtree.addr.i311, align 8
  %858 = load i32, ptr %code.i315, align 4
  %idxprom266.i605 = zext i32 %858 to i64
  %arrayidx267.i606 = getelementptr inbounds %struct.ct_data_s, ptr %857, i64 %idxprom266.i605
  %859 = load i16, ptr %arrayidx267.i606, align 2
  %conv269.i607 = zext i16 %859 to i32
  %860 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid270.i608 = getelementptr inbounds %struct.internal_state, ptr %860, i64 0, i32 57
  %861 = load i32, ptr %bi_valid270.i608, align 4
  %shl271.i609 = shl i32 %conv269.i607, %861
  %bi_buf272.i610 = getelementptr inbounds %struct.internal_state, ptr %860, i64 0, i32 56
  %862 = load i16, ptr %bi_buf272.i610, align 8
  %863 = trunc i32 %shl271.i609 to i16
  %conv275.i613 = or i16 %862, %863
  store i16 %conv275.i613, ptr %bi_buf272.i610, align 8
  %864 = load i32, ptr %len211.i323, align 4
  %865 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid276.i614 = getelementptr inbounds %struct.internal_state, ptr %865, i64 0, i32 57
  %866 = load i32, ptr %bi_valid276.i614, align 4
  %add277.i615 = add nsw i32 %866, %864
  store i32 %add277.i615, ptr %bi_valid276.i614, align 4
  br label %if.end278.i620

if.end278.i620:                                   ; preds = %if.else265.i616, %if.then220.i604
  %867 = load i32, ptr %code.i315, align 4
  %idxprom279.i617 = zext i32 %867 to i64
  %arrayidx280.i618 = getelementptr inbounds [30 x i32], ptr @extra_dbits, i64 0, i64 %idxprom279.i617
  %868 = load i32, ptr %arrayidx280.i618, align 4
  store i32 %868, ptr %extra.i316, align 4
  %cmp281.i619.not = icmp ult i32 %867, 4
  br i1 %cmp281.i619.not, label %if.end344.i679, label %if.then283.i627

if.then283.i627:                                  ; preds = %if.end278.i620
  %869 = load i32, ptr %code.i315, align 4
  %idxprom284.i621 = zext i32 %869 to i64
  %arrayidx285.i622 = getelementptr inbounds [30 x i32], ptr @base_dist, i64 0, i64 %idxprom284.i621
  %870 = load i32, ptr %arrayidx285.i622, align 4
  %871 = load i32, ptr %dist.i312, align 4
  %sub286.i623 = sub i32 %871, %870
  store i32 %sub286.i623, ptr %dist.i312, align 4
  %872 = load i32, ptr %extra.i316, align 4
  store i32 %872, ptr %len287.i325, align 4
  %873 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid288.i624 = getelementptr inbounds %struct.internal_state, ptr %873, i64 0, i32 57
  %874 = load i32, ptr %bi_valid288.i624, align 4
  %sub289.i625 = sub nsw i32 16, %872
  %cmp290.i626 = icmp sgt i32 %874, %sub289.i625
  br i1 %cmp290.i626, label %if.then292.i667, label %if.else333.i676

if.then292.i667:                                  ; preds = %if.then283.i627
  %875 = load i32, ptr %dist.i312, align 4
  store i32 %875, ptr %val293.i326, align 4
  %876 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid294.i628 = getelementptr inbounds %struct.internal_state, ptr %876, i64 0, i32 57
  %877 = load i32, ptr %bi_valid294.i628, align 4
  %shl295.i629 = shl i32 %875, %877
  %bi_buf296.i630 = getelementptr inbounds %struct.internal_state, ptr %876, i64 0, i32 56
  %878 = load i16, ptr %bi_buf296.i630, align 8
  %879 = trunc i32 %shl295.i629 to i16
  %conv299.i633 = or i16 %878, %879
  store i16 %conv299.i633, ptr %bi_buf296.i630, align 8
  %880 = load ptr, ptr %s.addr.i309, align 8
  %bi_buf300.i634 = getelementptr inbounds %struct.internal_state, ptr %880, i64 0, i32 56
  %881 = load i16, ptr %bi_buf300.i634, align 8
  %conv303.i637 = trunc i16 %881 to i8
  %pending_buf304.i638 = getelementptr inbounds %struct.internal_state, ptr %880, i64 0, i32 2
  %882 = load ptr, ptr %pending_buf304.i638, align 8
  %pending305.i639 = getelementptr inbounds %struct.internal_state, ptr %880, i64 0, i32 5
  %883 = load i32, ptr %pending305.i639, align 8
  %inc306.i640 = add i32 %883, 1
  store i32 %inc306.i640, ptr %pending305.i639, align 8
  %idxprom307.i641 = zext i32 %883 to i64
  %arrayidx308.i642 = getelementptr inbounds i8, ptr %882, i64 %idxprom307.i641
  store i8 %conv303.i637, ptr %arrayidx308.i642, align 1
  %884 = load ptr, ptr %s.addr.i309, align 8
  %bi_buf309.i643 = getelementptr inbounds %struct.internal_state, ptr %884, i64 0, i32 56
  %885 = load i16, ptr %bi_buf309.i643, align 8
  %886 = lshr i16 %885, 8
  %conv312.i646 = trunc i16 %886 to i8
  %pending_buf313.i647 = getelementptr inbounds %struct.internal_state, ptr %884, i64 0, i32 2
  %887 = load ptr, ptr %pending_buf313.i647, align 8
  %888 = load ptr, ptr %s.addr.i309, align 8
  %pending314.i648 = getelementptr inbounds %struct.internal_state, ptr %888, i64 0, i32 5
  %889 = load i32, ptr %pending314.i648, align 8
  %inc315.i649 = add i32 %889, 1
  store i32 %inc315.i649, ptr %pending314.i648, align 8
  %idxprom316.i650 = zext i32 %889 to i64
  %arrayidx317.i651 = getelementptr inbounds i8, ptr %887, i64 %idxprom316.i650
  store i8 %conv312.i646, ptr %arrayidx317.i651, align 1
  %890 = load i32, ptr %val293.i326, align 4
  %conv319.i653 = and i32 %890, 65535
  %891 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid320.i654 = getelementptr inbounds %struct.internal_state, ptr %891, i64 0, i32 57
  %892 = load i32, ptr %bi_valid320.i654, align 4
  %sub322.i656 = sub i32 16, %892
  %shr324.i658 = lshr i32 %conv319.i653, %sub322.i656
  %conv325.i659 = trunc i32 %shr324.i658 to i16
  %bi_buf326.i660 = getelementptr inbounds %struct.internal_state, ptr %891, i64 0, i32 56
  store i16 %conv325.i659, ptr %bi_buf326.i660, align 8
  %893 = load i32, ptr %len287.i325, align 4
  %sub328.i662 = add i32 %893, -16
  %894 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid329.i663 = getelementptr inbounds %struct.internal_state, ptr %894, i64 0, i32 57
  %895 = load i32, ptr %bi_valid329.i663, align 4
  %add331.i665 = add i32 %sub328.i662, %895
  store i32 %add331.i665, ptr %bi_valid329.i663, align 4
  br label %if.end344.i679

if.else333.i676:                                  ; preds = %if.then283.i627
  %896 = load i32, ptr %dist.i312, align 4
  %897 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid334.i668 = getelementptr inbounds %struct.internal_state, ptr %897, i64 0, i32 57
  %898 = load i32, ptr %bi_valid334.i668, align 4
  %shl335.i669 = shl i32 %896, %898
  %bi_buf336.i670 = getelementptr inbounds %struct.internal_state, ptr %897, i64 0, i32 56
  %899 = load i16, ptr %bi_buf336.i670, align 8
  %900 = trunc i32 %shl335.i669 to i16
  %conv339.i673 = or i16 %899, %900
  store i16 %conv339.i673, ptr %bi_buf336.i670, align 8
  %901 = load i32, ptr %len287.i325, align 4
  %902 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid340.i674 = getelementptr inbounds %struct.internal_state, ptr %902, i64 0, i32 57
  %903 = load i32, ptr %bi_valid340.i674, align 4
  %add341.i675 = add nsw i32 %903, %901
  store i32 %add341.i675, ptr %bi_valid340.i674, align 4
  br label %if.end344.i679

if.end344.i679:                                   ; preds = %if.end278.i620, %if.else333.i676, %if.then292.i667, %if.then12.i393, %if.else.i405
  %904 = load i32, ptr %lx.i314, align 4
  %905 = load ptr, ptr %s.addr.i309, align 8
  %last_lit345.i680 = getelementptr inbounds %struct.internal_state, ptr %905, i64 0, i32 50
  %906 = load i32, ptr %last_lit345.i680, align 4
  %cmp346.i681 = icmp ult i32 %904, %906
  br i1 %cmp346.i681, label %do.body.i342, label %if.end348.i689, !llvm.loop !18

if.end348.i689:                                   ; preds = %if.end344.i679, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_12.exit
  %907 = load ptr, ptr %ltree.addr.i310, align 8
  %dl351.i684 = getelementptr inbounds %struct.ct_data_s, ptr %907, i64 256, i32 1
  %908 = load i16, ptr %dl351.i684, align 2
  %conv352.i685 = zext i16 %908 to i32
  store i32 %conv352.i685, ptr %len349.i327, align 4
  %909 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid353.i686 = getelementptr inbounds %struct.internal_state, ptr %909, i64 0, i32 57
  %910 = load i32, ptr %bi_valid353.i686, align 4
  %sub354.i687 = sub nsw i32 16, %conv352.i685
  %cmp355.i688 = icmp sgt i32 %910, %sub354.i687
  br i1 %cmp355.i688, label %if.then357.i731, label %if.else401.i742

if.then357.i731:                                  ; preds = %if.end348.i689
  %911 = load ptr, ptr %ltree.addr.i310, align 8
  %arrayidx359.i690 = getelementptr inbounds %struct.ct_data_s, ptr %911, i64 256
  %912 = load i16, ptr %arrayidx359.i690, align 2
  %conv361.i691 = zext i16 %912 to i32
  store i32 %conv361.i691, ptr %val358.i328, align 4
  %913 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid362.i692 = getelementptr inbounds %struct.internal_state, ptr %913, i64 0, i32 57
  %914 = load i32, ptr %bi_valid362.i692, align 4
  %shl363.i693 = shl i32 %conv361.i691, %914
  %bi_buf364.i694 = getelementptr inbounds %struct.internal_state, ptr %913, i64 0, i32 56
  %915 = load i16, ptr %bi_buf364.i694, align 8
  %916 = trunc i32 %shl363.i693 to i16
  %conv367.i697 = or i16 %915, %916
  store i16 %conv367.i697, ptr %bi_buf364.i694, align 8
  %917 = load ptr, ptr %s.addr.i309, align 8
  %bi_buf368.i698 = getelementptr inbounds %struct.internal_state, ptr %917, i64 0, i32 56
  %918 = load i16, ptr %bi_buf368.i698, align 8
  %conv371.i701 = trunc i16 %918 to i8
  %pending_buf372.i702 = getelementptr inbounds %struct.internal_state, ptr %917, i64 0, i32 2
  %919 = load ptr, ptr %pending_buf372.i702, align 8
  %pending373.i703 = getelementptr inbounds %struct.internal_state, ptr %917, i64 0, i32 5
  %920 = load i32, ptr %pending373.i703, align 8
  %inc374.i704 = add i32 %920, 1
  store i32 %inc374.i704, ptr %pending373.i703, align 8
  %idxprom375.i705 = zext i32 %920 to i64
  %arrayidx376.i706 = getelementptr inbounds i8, ptr %919, i64 %idxprom375.i705
  store i8 %conv371.i701, ptr %arrayidx376.i706, align 1
  %921 = load ptr, ptr %s.addr.i309, align 8
  %bi_buf377.i707 = getelementptr inbounds %struct.internal_state, ptr %921, i64 0, i32 56
  %922 = load i16, ptr %bi_buf377.i707, align 8
  %923 = lshr i16 %922, 8
  %conv380.i710 = trunc i16 %923 to i8
  %pending_buf381.i711 = getelementptr inbounds %struct.internal_state, ptr %921, i64 0, i32 2
  %924 = load ptr, ptr %pending_buf381.i711, align 8
  %925 = load ptr, ptr %s.addr.i309, align 8
  %pending382.i712 = getelementptr inbounds %struct.internal_state, ptr %925, i64 0, i32 5
  %926 = load i32, ptr %pending382.i712, align 8
  %inc383.i713 = add i32 %926, 1
  store i32 %inc383.i713, ptr %pending382.i712, align 8
  %idxprom384.i714 = zext i32 %926 to i64
  %arrayidx385.i715 = getelementptr inbounds i8, ptr %924, i64 %idxprom384.i714
  store i8 %conv380.i710, ptr %arrayidx385.i715, align 1
  %927 = load i32, ptr %val358.i328, align 4
  %conv387.i717 = and i32 %927, 65535
  %928 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid388.i718 = getelementptr inbounds %struct.internal_state, ptr %928, i64 0, i32 57
  %929 = load i32, ptr %bi_valid388.i718, align 4
  %sub390.i720 = sub i32 16, %929
  %shr392.i722 = lshr i32 %conv387.i717, %sub390.i720
  %conv393.i723 = trunc i32 %shr392.i722 to i16
  %bi_buf394.i724 = getelementptr inbounds %struct.internal_state, ptr %928, i64 0, i32 56
  store i16 %conv393.i723, ptr %bi_buf394.i724, align 8
  %930 = load i32, ptr %len349.i327, align 4
  %sub396.i726 = add i32 %930, -16
  %931 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid397.i727 = getelementptr inbounds %struct.internal_state, ptr %931, i64 0, i32 57
  %932 = load i32, ptr %bi_valid397.i727, align 4
  %add399.i729 = add i32 %sub396.i726, %932
  store i32 %add399.i729, ptr %bi_valid397.i727, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_13.exit

if.else401.i742:                                  ; preds = %if.end348.i689
  %933 = load ptr, ptr %ltree.addr.i310, align 8
  %arrayidx402.i732 = getelementptr inbounds %struct.ct_data_s, ptr %933, i64 256
  %934 = load i16, ptr %arrayidx402.i732, align 2
  %conv404.i733 = zext i16 %934 to i32
  %935 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid405.i734 = getelementptr inbounds %struct.internal_state, ptr %935, i64 0, i32 57
  %936 = load i32, ptr %bi_valid405.i734, align 4
  %shl406.i735 = shl i32 %conv404.i733, %936
  %bi_buf407.i736 = getelementptr inbounds %struct.internal_state, ptr %935, i64 0, i32 56
  %937 = load i16, ptr %bi_buf407.i736, align 8
  %938 = trunc i32 %shl406.i735 to i16
  %conv410.i739 = or i16 %937, %938
  store i16 %conv410.i739, ptr %bi_buf407.i736, align 8
  %939 = load i32, ptr %len349.i327, align 4
  %940 = load ptr, ptr %s.addr.i309, align 8
  %bi_valid411.i740 = getelementptr inbounds %struct.internal_state, ptr %940, i64 0, i32 57
  %941 = load i32, ptr %bi_valid411.i740, align 4
  %add412.i741 = add nsw i32 %941, %939
  store i32 %add412.i741, ptr %bi_valid411.i740, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_13.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_13.exit: ; preds = %if.then357.i731, %if.else401.i742
  %942 = load ptr, ptr %ltree.addr.i310, align 8
  %dl415.i744 = getelementptr inbounds %struct.ct_data_s, ptr %942, i64 256, i32 1
  %943 = load i16, ptr %dl415.i744, align 2
  %conv416.i745 = zext i16 %943 to i32
  %944 = load ptr, ptr %s.addr.i309, align 8
  %last_eob_len.i746 = getelementptr inbounds %struct.internal_state, ptr %944, i64 0, i32 55
  store i32 %conv416.i745, ptr %last_eob_len.i746, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i309)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ltree.addr.i310)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dtree.addr.i311)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dist.i312)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lc.i313)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lx.i314)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %code.i315)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extra.i316)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i317)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i318)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len62.i319)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val74.i320)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len144.i321)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val150.i322)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len211.i323)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val221.i324)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len287.i325)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val293.i326)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len349.i327)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val358.i328)
  br label %if.end131

if.end131:                                        ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_11.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_13.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_10.exit
  %945 = load ptr, ptr %s.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i747)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i748)
  store ptr %945, ptr %s.addr.i747, align 8
  br label %for.cond.i750

for.cond.i750:                                    ; preds = %for.body.i754, %if.end131
  %storemerge788 = phi i32 [ 0, %if.end131 ], [ %inc.i755, %for.body.i754 ]
  store i32 %storemerge788, ptr %n.i748, align 4
  %cmp.i749 = icmp slt i32 %storemerge788, 286
  br i1 %cmp.i749, label %for.body.i754, label %for.cond1.i

for.body.i754:                                    ; preds = %for.cond.i750
  %946 = load ptr, ptr %s.addr.i747, align 8
  %947 = load i32, ptr %n.i748, align 4
  %idxprom.i752 = sext i32 %947 to i64
  %arrayidx.i753 = getelementptr inbounds %struct.internal_state, ptr %946, i64 0, i32 37, i64 %idxprom.i752
  store i16 0, ptr %arrayidx.i753, align 4
  %inc.i755 = add nsw i32 %947, 1
  br label %for.cond.i750, !llvm.loop !6

for.cond1.i:                                      ; preds = %for.cond.i750, %for.body3.i
  %storemerge789 = phi i32 [ %inc8.i, %for.body3.i ], [ 0, %for.cond.i750 ]
  store i32 %storemerge789, ptr %n.i748, align 4
  %cmp2.i = icmp slt i32 %storemerge789, 30
  br i1 %cmp2.i, label %for.body3.i, label %for.cond10.i

for.body3.i:                                      ; preds = %for.cond1.i
  %948 = load ptr, ptr %s.addr.i747, align 8
  %949 = load i32, ptr %n.i748, align 4
  %idxprom4.i = sext i32 %949 to i64
  %arrayidx5.i = getelementptr inbounds %struct.internal_state, ptr %948, i64 0, i32 38, i64 %idxprom4.i
  store i16 0, ptr %arrayidx5.i, align 4
  %inc8.i = add nsw i32 %949, 1
  br label %for.cond1.i, !llvm.loop !8

for.cond10.i:                                     ; preds = %for.cond1.i, %for.body12.i
  %storemerge790 = phi i32 [ %inc17.i, %for.body12.i ], [ 0, %for.cond1.i ]
  store i32 %storemerge790, ptr %n.i748, align 4
  %cmp11.i = icmp slt i32 %storemerge790, 19
  br i1 %cmp11.i, label %for.body12.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_14.exit

for.body12.i:                                     ; preds = %for.cond10.i
  %950 = load ptr, ptr %s.addr.i747, align 8
  %951 = load i32, ptr %n.i748, align 4
  %idxprom13.i759 = sext i32 %951 to i64
  %arrayidx14.i760 = getelementptr inbounds %struct.internal_state, ptr %950, i64 0, i32 39, i64 %idxprom13.i759
  store i16 0, ptr %arrayidx14.i760, align 4
  %inc17.i = add nsw i32 %951, 1
  br label %for.cond10.i, !llvm.loop !9

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_14.exit: ; preds = %for.cond10.i
  %952 = load ptr, ptr %s.addr.i747, align 8
  %arrayidx20.i = getelementptr inbounds %struct.internal_state, ptr %952, i64 0, i32 37, i64 256
  store i16 1, ptr %arrayidx20.i, align 4
  %static_len.i761 = getelementptr inbounds %struct.internal_state, ptr %952, i64 0, i32 53
  store i64 0, ptr %static_len.i761, align 8
  %opt_len.i762 = getelementptr inbounds %struct.internal_state, ptr %952, i64 0, i32 52
  store i64 0, ptr %opt_len.i762, align 8
  %953 = load ptr, ptr %s.addr.i747, align 8
  %matches.i = getelementptr inbounds %struct.internal_state, ptr %953, i64 0, i32 54
  store i32 0, ptr %matches.i, align 8
  %last_lit.i763 = getelementptr inbounds %struct.internal_state, ptr %953, i64 0, i32 50
  store i32 0, ptr %last_lit.i763, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i747)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i748)
  %954 = load i32, ptr %eof.addr, align 4
  %tobool.not = icmp eq i32 %954, 0
  br i1 %tobool.not, label %if.end133, label %if.then132

if.then132:                                       ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_14.exit
  %955 = load ptr, ptr %s.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i764)
  store ptr %955, ptr %s.addr.i764, align 8
  %bi_valid.i765 = getelementptr inbounds %struct.internal_state, ptr %955, i64 0, i32 57
  %956 = load i32, ptr %bi_valid.i765, align 4
  %cmp.i766 = icmp sgt i32 %956, 8
  br i1 %cmp.i766, label %if.then.i780, label %if.else.i782

if.then.i780:                                     ; preds = %if.then132
  %957 = load ptr, ptr %s.addr.i764, align 8
  %bi_buf.i767 = getelementptr inbounds %struct.internal_state, ptr %957, i64 0, i32 56
  %958 = load i16, ptr %bi_buf.i767, align 8
  %conv1.i = trunc i16 %958 to i8
  %pending_buf.i770 = getelementptr inbounds %struct.internal_state, ptr %957, i64 0, i32 2
  %959 = load ptr, ptr %pending_buf.i770, align 8
  %pending.i771 = getelementptr inbounds %struct.internal_state, ptr %957, i64 0, i32 5
  %960 = load i32, ptr %pending.i771, align 8
  %inc.i772 = add i32 %960, 1
  store i32 %inc.i772, ptr %pending.i771, align 8
  %idxprom.i773 = zext i32 %960 to i64
  %arrayidx.i774 = getelementptr inbounds i8, ptr %959, i64 %idxprom.i773
  store i8 %conv1.i, ptr %arrayidx.i774, align 1
  %961 = load ptr, ptr %s.addr.i764, align 8
  %bi_buf2.i = getelementptr inbounds %struct.internal_state, ptr %961, i64 0, i32 56
  %962 = load i16, ptr %bi_buf2.i, align 8
  %963 = lshr i16 %962, 8
  %conv4.i777 = trunc i16 %963 to i8
  %pending_buf5.i = getelementptr inbounds %struct.internal_state, ptr %961, i64 0, i32 2
  %964 = load ptr, ptr %pending_buf5.i, align 8
  %965 = load ptr, ptr %s.addr.i764, align 8
  %pending6.i = getelementptr inbounds %struct.internal_state, ptr %965, i64 0, i32 5
  %966 = load i32, ptr %pending6.i, align 8
  %inc7.i = add i32 %966, 1
  store i32 %inc7.i, ptr %pending6.i, align 8
  %idxprom8.i778 = zext i32 %966 to i64
  %arrayidx9.i779 = getelementptr inbounds i8, ptr %964, i64 %idxprom8.i778
  store i8 %conv4.i777, ptr %arrayidx9.i779, align 1
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_15.exit

if.else.i782:                                     ; preds = %if.then132
  %967 = load ptr, ptr %s.addr.i764, align 8
  %bi_valid10.i = getelementptr inbounds %struct.internal_state, ptr %967, i64 0, i32 57
  %968 = load i32, ptr %bi_valid10.i, align 4
  %cmp11.i781 = icmp sgt i32 %968, 0
  br i1 %cmp11.i781, label %if.then13.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_15.exit

if.then13.i:                                      ; preds = %if.else.i782
  %969 = load ptr, ptr %s.addr.i764, align 8
  %bi_buf14.i = getelementptr inbounds %struct.internal_state, ptr %969, i64 0, i32 56
  %970 = load i16, ptr %bi_buf14.i, align 8
  %conv15.i783 = trunc i16 %970 to i8
  %pending_buf16.i = getelementptr inbounds %struct.internal_state, ptr %969, i64 0, i32 2
  %971 = load ptr, ptr %pending_buf16.i, align 8
  %pending17.i = getelementptr inbounds %struct.internal_state, ptr %969, i64 0, i32 5
  %972 = load i32, ptr %pending17.i, align 8
  %inc18.i784 = add i32 %972, 1
  store i32 %inc18.i784, ptr %pending17.i, align 8
  %idxprom19.i = zext i32 %972 to i64
  %arrayidx20.i785 = getelementptr inbounds i8, ptr %971, i64 %idxprom19.i
  store i8 %conv15.i783, ptr %arrayidx20.i785, align 1
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_15.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_15.exit: ; preds = %if.else.i782, %if.then13.i, %if.then.i780
  %973 = load ptr, ptr %s.addr.i764, align 8
  %bi_buf22.i787 = getelementptr inbounds %struct.internal_state, ptr %973, i64 0, i32 56
  store i16 0, ptr %bi_buf22.i787, align 8
  %bi_valid23.i = getelementptr inbounds %struct.internal_state, ptr %973, i64 0, i32 57
  store i32 0, ptr %bi_valid23.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i764)
  br label %if.end133

if.end133:                                        ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_15.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_14.exit
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @build_tree(ptr noundef %s, ptr noundef %desc) #0 {
entry:
  %tree.addr.i239 = alloca ptr, align 8
  %max_code.addr.i = alloca i32, align 4
  %bl_count.addr.i = alloca ptr, align 8
  %next_code.i = alloca [16 x i16], align 2
  %code.i = alloca i16, align 2
  %bits.i240 = alloca i32, align 4
  %n.i241 = alloca i32, align 4
  %len.i = alloca i32, align 4
  %s.addr.i223 = alloca ptr, align 8
  %desc.addr.i = alloca ptr, align 8
  %tree.i = alloca ptr, align 8
  %max_code.i = alloca i32, align 4
  %stree.i = alloca ptr, align 8
  %extra.i = alloca ptr, align 8
  %base.i = alloca i32, align 4
  %max_length.i = alloca i32, align 4
  %h.i = alloca i32, align 4
  %n.i = alloca i32, align 4
  %m.i = alloca i32, align 4
  %bits.i = alloca i32, align 4
  %xbits.i = alloca i32, align 4
  %f.i = alloca i16, align 2
  %overflow.i = alloca i32, align 4
  %s.addr.i112 = alloca ptr, align 8
  %tree.addr.i113 = alloca ptr, align 8
  %k.addr.i114 = alloca i32, align 4
  %v.i115 = alloca i32, align 4
  %j.i116 = alloca i32, align 4
  %s.addr.i1 = alloca ptr, align 8
  %tree.addr.i2 = alloca ptr, align 8
  %k.addr.i3 = alloca i32, align 4
  %v.i4 = alloca i32, align 4
  %j.i5 = alloca i32, align 4
  %s.addr.i = alloca ptr, align 8
  %tree.addr.i = alloca ptr, align 8
  %k.addr.i = alloca i32, align 4
  %v.i = alloca i32, align 4
  %j.i = alloca i32, align 4
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

for.cond38:                                       ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_16.exit, %while.end
  %storemerge261 = phi i32 [ %div, %while.end ], [ %dec43, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_16.exit ]
  store i32 %storemerge261, ptr %n, align 4
  %cmp39 = icmp sgt i32 %storemerge261, 0
  br i1 %cmp39, label %for.body41, label %for.end44

for.body41:                                       ; preds = %for.cond38
  %38 = load ptr, ptr %s.addr, align 8
  %39 = load ptr, ptr %tree, align 8
  %40 = load i32, ptr %n, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tree.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %k.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %j.i)
  store ptr %38, ptr %s.addr.i, align 8
  store ptr %39, ptr %tree.addr.i, align 8
  store i32 %40, ptr %k.addr.i, align 4
  %idxprom.i = sext i32 %40 to i64
  %arrayidx.i = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 44, i64 %idxprom.i
  %41 = load i32, ptr %arrayidx.i, align 4
  store i32 %41, ptr %v.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end93.i, %for.body41
  %storemerge270.in = phi i32 [ %40, %for.body41 ], [ %100, %if.end93.i ]
  %storemerge270 = shl i32 %storemerge270.in, 1
  store i32 %storemerge270, ptr %j.i, align 4
  %42 = load ptr, ptr %s.addr.i, align 8
  %heap_len.i = getelementptr inbounds %struct.internal_state, ptr %42, i64 0, i32 45
  %43 = load i32, ptr %heap_len.i, align 4
  %cmp.i.not = icmp sgt i32 %storemerge270, %43
  br i1 %cmp.i.not, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_16.exit, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %44 = load i32, ptr %j.i, align 4
  %45 = load ptr, ptr %s.addr.i, align 8
  %heap_len1.i = getelementptr inbounds %struct.internal_state, ptr %45, i64 0, i32 45
  %46 = load i32, ptr %heap_len1.i, align 4
  %cmp2.i = icmp slt i32 %44, %46
  br i1 %cmp2.i, label %land.lhs.true.i, label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %47 = load ptr, ptr %tree.addr.i, align 8
  %48 = load ptr, ptr %s.addr.i, align 8
  %49 = load i32, ptr %j.i, align 4
  %add.i = add nsw i32 %49, 1
  %idxprom4.i = sext i32 %add.i to i64
  %arrayidx5.i = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 44, i64 %idxprom4.i
  %50 = load i32, ptr %arrayidx5.i, align 4
  %idxprom6.i = sext i32 %50 to i64
  %arrayidx7.i = getelementptr inbounds %struct.ct_data_s, ptr %47, i64 %idxprom6.i
  %51 = load i16, ptr %arrayidx7.i, align 2
  %52 = load ptr, ptr %tree.addr.i, align 8
  %53 = load ptr, ptr %s.addr.i, align 8
  %54 = load i32, ptr %j.i, align 4
  %idxprom9.i = sext i32 %54 to i64
  %arrayidx10.i = getelementptr inbounds %struct.internal_state, ptr %53, i64 0, i32 44, i64 %idxprom9.i
  %55 = load i32, ptr %arrayidx10.i, align 4
  %idxprom11.i = sext i32 %55 to i64
  %arrayidx12.i = getelementptr inbounds %struct.ct_data_s, ptr %52, i64 %idxprom11.i
  %56 = load i16, ptr %arrayidx12.i, align 2
  %cmp15.i = icmp ult i16 %51, %56
  br i1 %cmp15.i, label %if.then.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %57 = load ptr, ptr %tree.addr.i, align 8
  %58 = load ptr, ptr %s.addr.i, align 8
  %59 = load i32, ptr %j.i, align 4
  %add18.i = add nsw i32 %59, 1
  %idxprom19.i = sext i32 %add18.i to i64
  %arrayidx20.i = getelementptr inbounds %struct.internal_state, ptr %58, i64 0, i32 44, i64 %idxprom19.i
  %60 = load i32, ptr %arrayidx20.i, align 4
  %idxprom21.i = sext i32 %60 to i64
  %arrayidx22.i = getelementptr inbounds %struct.ct_data_s, ptr %57, i64 %idxprom21.i
  %61 = load i16, ptr %arrayidx22.i, align 2
  %62 = load ptr, ptr %tree.addr.i, align 8
  %63 = load ptr, ptr %s.addr.i, align 8
  %64 = load i32, ptr %j.i, align 4
  %idxprom26.i = sext i32 %64 to i64
  %arrayidx27.i = getelementptr inbounds %struct.internal_state, ptr %63, i64 0, i32 44, i64 %idxprom26.i
  %65 = load i32, ptr %arrayidx27.i, align 4
  %idxprom28.i = sext i32 %65 to i64
  %arrayidx29.i = getelementptr inbounds %struct.ct_data_s, ptr %62, i64 %idxprom28.i
  %66 = load i16, ptr %arrayidx29.i, align 2
  %cmp32.i = icmp eq i16 %61, %66
  br i1 %cmp32.i, label %land.lhs.true34.i, label %if.end.i

land.lhs.true34.i:                                ; preds = %lor.lhs.false.i
  %67 = load ptr, ptr %s.addr.i, align 8
  %68 = load i32, ptr %j.i, align 4
  %add36.i = add nsw i32 %68, 1
  %idxprom37.i = sext i32 %add36.i to i64
  %arrayidx38.i = getelementptr inbounds %struct.internal_state, ptr %67, i64 0, i32 44, i64 %idxprom37.i
  %69 = load i32, ptr %arrayidx38.i, align 4
  %idxprom39.i = sext i32 %69 to i64
  %arrayidx40.i = getelementptr inbounds %struct.internal_state, ptr %67, i64 0, i32 47, i64 %idxprom39.i
  %70 = load i8, ptr %arrayidx40.i, align 1
  %71 = load ptr, ptr %s.addr.i, align 8
  %72 = load i32, ptr %j.i, align 4
  %idxprom44.i = sext i32 %72 to i64
  %arrayidx45.i = getelementptr inbounds %struct.internal_state, ptr %71, i64 0, i32 44, i64 %idxprom44.i
  %73 = load i32, ptr %arrayidx45.i, align 4
  %idxprom46.i = sext i32 %73 to i64
  %arrayidx47.i = getelementptr inbounds %struct.internal_state, ptr %71, i64 0, i32 47, i64 %idxprom46.i
  %74 = load i8, ptr %arrayidx47.i, align 1
  %cmp49.i.not = icmp ugt i8 %70, %74
  br i1 %cmp49.i.not, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true34.i, %land.lhs.true.i
  %75 = load i32, ptr %j.i, align 4
  %inc.i = add nsw i32 %75, 1
  store i32 %inc.i, ptr %j.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true34.i, %lor.lhs.false.i, %while.body.i
  %76 = load ptr, ptr %tree.addr.i, align 8
  %77 = load i32, ptr %v.i, align 4
  %idxprom51.i = sext i32 %77 to i64
  %arrayidx52.i = getelementptr inbounds %struct.ct_data_s, ptr %76, i64 %idxprom51.i
  %78 = load i16, ptr %arrayidx52.i, align 2
  %79 = load ptr, ptr %s.addr.i, align 8
  %80 = load i32, ptr %j.i, align 4
  %idxprom56.i = sext i32 %80 to i64
  %arrayidx57.i = getelementptr inbounds %struct.internal_state, ptr %79, i64 0, i32 44, i64 %idxprom56.i
  %81 = load i32, ptr %arrayidx57.i, align 4
  %idxprom58.i = sext i32 %81 to i64
  %arrayidx59.i = getelementptr inbounds %struct.ct_data_s, ptr %76, i64 %idxprom58.i
  %82 = load i16, ptr %arrayidx59.i, align 2
  %cmp62.i = icmp ult i16 %78, %82
  br i1 %cmp62.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_16.exit, label %lor.lhs.false64.i

lor.lhs.false64.i:                                ; preds = %if.end.i
  %83 = load ptr, ptr %tree.addr.i, align 8
  %84 = load i32, ptr %v.i, align 4
  %idxprom65.i = sext i32 %84 to i64
  %arrayidx66.i = getelementptr inbounds %struct.ct_data_s, ptr %83, i64 %idxprom65.i
  %85 = load i16, ptr %arrayidx66.i, align 2
  %86 = load ptr, ptr %s.addr.i, align 8
  %87 = load i32, ptr %j.i, align 4
  %idxprom70.i = sext i32 %87 to i64
  %arrayidx71.i = getelementptr inbounds %struct.internal_state, ptr %86, i64 0, i32 44, i64 %idxprom70.i
  %88 = load i32, ptr %arrayidx71.i, align 4
  %idxprom72.i = sext i32 %88 to i64
  %arrayidx73.i = getelementptr inbounds %struct.ct_data_s, ptr %83, i64 %idxprom72.i
  %89 = load i16, ptr %arrayidx73.i, align 2
  %cmp76.i = icmp eq i16 %85, %89
  br i1 %cmp76.i, label %land.lhs.true78.i, label %if.end93.i

land.lhs.true78.i:                                ; preds = %lor.lhs.false64.i
  %90 = load ptr, ptr %s.addr.i, align 8
  %91 = load i32, ptr %v.i, align 4
  %idxprom80.i = sext i32 %91 to i64
  %arrayidx81.i = getelementptr inbounds %struct.internal_state, ptr %90, i64 0, i32 47, i64 %idxprom80.i
  %92 = load i8, ptr %arrayidx81.i, align 1
  %93 = load i32, ptr %j.i, align 4
  %idxprom85.i = sext i32 %93 to i64
  %arrayidx86.i = getelementptr inbounds %struct.internal_state, ptr %90, i64 0, i32 44, i64 %idxprom85.i
  %94 = load i32, ptr %arrayidx86.i, align 4
  %idxprom87.i = sext i32 %94 to i64
  %arrayidx88.i = getelementptr inbounds %struct.internal_state, ptr %90, i64 0, i32 47, i64 %idxprom87.i
  %95 = load i8, ptr %arrayidx88.i, align 1
  %cmp90.i.not = icmp ugt i8 %92, %95
  br i1 %cmp90.i.not, label %if.end93.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_16.exit

if.end93.i:                                       ; preds = %land.lhs.true78.i, %lor.lhs.false64.i
  %96 = load ptr, ptr %s.addr.i, align 8
  %97 = load i32, ptr %j.i, align 4
  %idxprom95.i = sext i32 %97 to i64
  %arrayidx96.i = getelementptr inbounds %struct.internal_state, ptr %96, i64 0, i32 44, i64 %idxprom95.i
  %98 = load i32, ptr %arrayidx96.i, align 4
  %99 = load i32, ptr %k.addr.i, align 4
  %idxprom98.i = sext i32 %99 to i64
  %arrayidx99.i = getelementptr inbounds %struct.internal_state, ptr %96, i64 0, i32 44, i64 %idxprom98.i
  store i32 %98, ptr %arrayidx99.i, align 4
  %100 = load i32, ptr %j.i, align 4
  store i32 %100, ptr %k.addr.i, align 4
  br label %while.cond.i, !llvm.loop !20

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_16.exit: ; preds = %if.end.i, %land.lhs.true78.i, %while.cond.i
  %101 = load i32, ptr %v.i, align 4
  %102 = load ptr, ptr %s.addr.i, align 8
  %103 = load i32, ptr %k.addr.i, align 4
  %idxprom102.i = sext i32 %103 to i64
  %arrayidx103.i = getelementptr inbounds %struct.internal_state, ptr %102, i64 0, i32 44, i64 %idxprom102.i
  store i32 %101, ptr %arrayidx103.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tree.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %k.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %j.i)
  %104 = load i32, ptr %n, align 4
  %dec43 = add nsw i32 %104, -1
  br label %for.cond38, !llvm.loop !15

for.end44:                                        ; preds = %for.cond38
  %105 = load i32, ptr %elems, align 4
  store i32 %105, ptr %node, align 4
  br label %do.body

do.body:                                          ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_18.exit, %for.end44
  %106 = load ptr, ptr %s.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct.internal_state, ptr %106, i64 0, i32 44, i64 1
  %107 = load i32, ptr %arrayidx46, align 4
  store i32 %107, ptr %n, align 4
  %heap_len48 = getelementptr inbounds %struct.internal_state, ptr %106, i64 0, i32 45
  %108 = load i32, ptr %heap_len48, align 4
  %dec49 = add nsw i32 %108, -1
  store i32 %dec49, ptr %heap_len48, align 4
  %idxprom50 = sext i32 %108 to i64
  %arrayidx51 = getelementptr inbounds %struct.internal_state, ptr %106, i64 0, i32 44, i64 %idxprom50
  %109 = load i32, ptr %arrayidx51, align 4
  %110 = load ptr, ptr %s.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct.internal_state, ptr %110, i64 0, i32 44, i64 1
  store i32 %109, ptr %arrayidx53, align 4
  %111 = load ptr, ptr %tree, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tree.addr.i2)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %k.addr.i3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %j.i5)
  store ptr %110, ptr %s.addr.i1, align 8
  store ptr %111, ptr %tree.addr.i2, align 8
  store i32 1, ptr %k.addr.i3, align 4
  %arrayidx.i8 = getelementptr inbounds %struct.internal_state, ptr %110, i64 0, i32 44, i64 1
  %112 = load i32, ptr %arrayidx.i8, align 4
  store i32 %112, ptr %v.i4, align 4
  br label %while.cond.i12

while.cond.i12:                                   ; preds = %if.end93.i108, %do.body
  %storemerge262 = phi i32 [ 2, %do.body ], [ %shl100.i107, %if.end93.i108 ]
  store i32 %storemerge262, ptr %j.i5, align 4
  %113 = load ptr, ptr %s.addr.i1, align 8
  %heap_len.i10 = getelementptr inbounds %struct.internal_state, ptr %113, i64 0, i32 45
  %114 = load i32, ptr %heap_len.i10, align 4
  %cmp.i11.not = icmp sgt i32 %storemerge262, %114
  br i1 %cmp.i11.not, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_17.exit, label %while.body.i15

while.body.i15:                                   ; preds = %while.cond.i12
  %115 = load i32, ptr %j.i5, align 4
  %116 = load ptr, ptr %s.addr.i1, align 8
  %heap_len1.i13 = getelementptr inbounds %struct.internal_state, ptr %116, i64 0, i32 45
  %117 = load i32, ptr %heap_len1.i13, align 4
  %cmp2.i14 = icmp slt i32 %115, %117
  br i1 %cmp2.i14, label %land.lhs.true.i30, label %if.end.i75

land.lhs.true.i30:                                ; preds = %while.body.i15
  %118 = load ptr, ptr %tree.addr.i2, align 8
  %119 = load ptr, ptr %s.addr.i1, align 8
  %120 = load i32, ptr %j.i5, align 4
  %add.i17 = add nsw i32 %120, 1
  %idxprom4.i18 = sext i32 %add.i17 to i64
  %arrayidx5.i19 = getelementptr inbounds %struct.internal_state, ptr %119, i64 0, i32 44, i64 %idxprom4.i18
  %121 = load i32, ptr %arrayidx5.i19, align 4
  %idxprom6.i20 = sext i32 %121 to i64
  %arrayidx7.i21 = getelementptr inbounds %struct.ct_data_s, ptr %118, i64 %idxprom6.i20
  %122 = load i16, ptr %arrayidx7.i21, align 2
  %123 = load ptr, ptr %tree.addr.i2, align 8
  %124 = load ptr, ptr %s.addr.i1, align 8
  %125 = load i32, ptr %j.i5, align 4
  %idxprom9.i24 = sext i32 %125 to i64
  %arrayidx10.i25 = getelementptr inbounds %struct.internal_state, ptr %124, i64 0, i32 44, i64 %idxprom9.i24
  %126 = load i32, ptr %arrayidx10.i25, align 4
  %idxprom11.i26 = sext i32 %126 to i64
  %arrayidx12.i27 = getelementptr inbounds %struct.ct_data_s, ptr %123, i64 %idxprom11.i26
  %127 = load i16, ptr %arrayidx12.i27, align 2
  %cmp15.i29 = icmp ult i16 %122, %127
  br i1 %cmp15.i29, label %if.then.i64, label %lor.lhs.false.i45

lor.lhs.false.i45:                                ; preds = %land.lhs.true.i30
  %128 = load ptr, ptr %tree.addr.i2, align 8
  %129 = load ptr, ptr %s.addr.i1, align 8
  %130 = load i32, ptr %j.i5, align 4
  %add18.i32 = add nsw i32 %130, 1
  %idxprom19.i33 = sext i32 %add18.i32 to i64
  %arrayidx20.i34 = getelementptr inbounds %struct.internal_state, ptr %129, i64 0, i32 44, i64 %idxprom19.i33
  %131 = load i32, ptr %arrayidx20.i34, align 4
  %idxprom21.i35 = sext i32 %131 to i64
  %arrayidx22.i36 = getelementptr inbounds %struct.ct_data_s, ptr %128, i64 %idxprom21.i35
  %132 = load i16, ptr %arrayidx22.i36, align 2
  %133 = load ptr, ptr %tree.addr.i2, align 8
  %134 = load ptr, ptr %s.addr.i1, align 8
  %135 = load i32, ptr %j.i5, align 4
  %idxprom26.i39 = sext i32 %135 to i64
  %arrayidx27.i40 = getelementptr inbounds %struct.internal_state, ptr %134, i64 0, i32 44, i64 %idxprom26.i39
  %136 = load i32, ptr %arrayidx27.i40, align 4
  %idxprom28.i41 = sext i32 %136 to i64
  %arrayidx29.i42 = getelementptr inbounds %struct.ct_data_s, ptr %133, i64 %idxprom28.i41
  %137 = load i16, ptr %arrayidx29.i42, align 2
  %cmp32.i44 = icmp eq i16 %132, %137
  br i1 %cmp32.i44, label %land.lhs.true34.i62, label %if.end.i75

land.lhs.true34.i62:                              ; preds = %lor.lhs.false.i45
  %138 = load ptr, ptr %s.addr.i1, align 8
  %139 = load i32, ptr %j.i5, align 4
  %add36.i48 = add nsw i32 %139, 1
  %idxprom37.i49 = sext i32 %add36.i48 to i64
  %arrayidx38.i50 = getelementptr inbounds %struct.internal_state, ptr %138, i64 0, i32 44, i64 %idxprom37.i49
  %140 = load i32, ptr %arrayidx38.i50, align 4
  %idxprom39.i51 = sext i32 %140 to i64
  %arrayidx40.i52 = getelementptr inbounds %struct.internal_state, ptr %138, i64 0, i32 47, i64 %idxprom39.i51
  %141 = load i8, ptr %arrayidx40.i52, align 1
  %142 = load ptr, ptr %s.addr.i1, align 8
  %143 = load i32, ptr %j.i5, align 4
  %idxprom44.i56 = sext i32 %143 to i64
  %arrayidx45.i57 = getelementptr inbounds %struct.internal_state, ptr %142, i64 0, i32 44, i64 %idxprom44.i56
  %144 = load i32, ptr %arrayidx45.i57, align 4
  %idxprom46.i58 = sext i32 %144 to i64
  %arrayidx47.i59 = getelementptr inbounds %struct.internal_state, ptr %142, i64 0, i32 47, i64 %idxprom46.i58
  %145 = load i8, ptr %arrayidx47.i59, align 1
  %cmp49.i61.not = icmp ugt i8 %141, %145
  br i1 %cmp49.i61.not, label %if.end.i75, label %if.then.i64

if.then.i64:                                      ; preds = %land.lhs.true34.i62, %land.lhs.true.i30
  %146 = load i32, ptr %j.i5, align 4
  %inc.i63 = add nsw i32 %146, 1
  store i32 %inc.i63, ptr %j.i5, align 4
  br label %if.end.i75

if.end.i75:                                       ; preds = %if.then.i64, %land.lhs.true34.i62, %lor.lhs.false.i45, %while.body.i15
  %147 = load ptr, ptr %tree.addr.i2, align 8
  %148 = load i32, ptr %v.i4, align 4
  %idxprom51.i65 = sext i32 %148 to i64
  %arrayidx52.i66 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %idxprom51.i65
  %149 = load i16, ptr %arrayidx52.i66, align 2
  %150 = load ptr, ptr %s.addr.i1, align 8
  %151 = load i32, ptr %j.i5, align 4
  %idxprom56.i69 = sext i32 %151 to i64
  %arrayidx57.i70 = getelementptr inbounds %struct.internal_state, ptr %150, i64 0, i32 44, i64 %idxprom56.i69
  %152 = load i32, ptr %arrayidx57.i70, align 4
  %idxprom58.i71 = sext i32 %152 to i64
  %arrayidx59.i72 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %idxprom58.i71
  %153 = load i16, ptr %arrayidx59.i72, align 2
  %cmp62.i74 = icmp ult i16 %149, %153
  br i1 %cmp62.i74, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_17.exit, label %lor.lhs.false64.i86

lor.lhs.false64.i86:                              ; preds = %if.end.i75
  %154 = load ptr, ptr %tree.addr.i2, align 8
  %155 = load i32, ptr %v.i4, align 4
  %idxprom65.i76 = sext i32 %155 to i64
  %arrayidx66.i77 = getelementptr inbounds %struct.ct_data_s, ptr %154, i64 %idxprom65.i76
  %156 = load i16, ptr %arrayidx66.i77, align 2
  %157 = load ptr, ptr %s.addr.i1, align 8
  %158 = load i32, ptr %j.i5, align 4
  %idxprom70.i80 = sext i32 %158 to i64
  %arrayidx71.i81 = getelementptr inbounds %struct.internal_state, ptr %157, i64 0, i32 44, i64 %idxprom70.i80
  %159 = load i32, ptr %arrayidx71.i81, align 4
  %idxprom72.i82 = sext i32 %159 to i64
  %arrayidx73.i83 = getelementptr inbounds %struct.ct_data_s, ptr %154, i64 %idxprom72.i82
  %160 = load i16, ptr %arrayidx73.i83, align 2
  %cmp76.i85 = icmp eq i16 %156, %160
  br i1 %cmp76.i85, label %land.lhs.true78.i99, label %if.end93.i108

land.lhs.true78.i99:                              ; preds = %lor.lhs.false64.i86
  %161 = load ptr, ptr %s.addr.i1, align 8
  %162 = load i32, ptr %v.i4, align 4
  %idxprom80.i88 = sext i32 %162 to i64
  %arrayidx81.i89 = getelementptr inbounds %struct.internal_state, ptr %161, i64 0, i32 47, i64 %idxprom80.i88
  %163 = load i8, ptr %arrayidx81.i89, align 1
  %164 = load i32, ptr %j.i5, align 4
  %idxprom85.i93 = sext i32 %164 to i64
  %arrayidx86.i94 = getelementptr inbounds %struct.internal_state, ptr %161, i64 0, i32 44, i64 %idxprom85.i93
  %165 = load i32, ptr %arrayidx86.i94, align 4
  %idxprom87.i95 = sext i32 %165 to i64
  %arrayidx88.i96 = getelementptr inbounds %struct.internal_state, ptr %161, i64 0, i32 47, i64 %idxprom87.i95
  %166 = load i8, ptr %arrayidx88.i96, align 1
  %cmp90.i98.not = icmp ugt i8 %163, %166
  br i1 %cmp90.i98.not, label %if.end93.i108, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_17.exit

if.end93.i108:                                    ; preds = %land.lhs.true78.i99, %lor.lhs.false64.i86
  %167 = load ptr, ptr %s.addr.i1, align 8
  %168 = load i32, ptr %j.i5, align 4
  %idxprom95.i102 = sext i32 %168 to i64
  %arrayidx96.i103 = getelementptr inbounds %struct.internal_state, ptr %167, i64 0, i32 44, i64 %idxprom95.i102
  %169 = load i32, ptr %arrayidx96.i103, align 4
  %170 = load i32, ptr %k.addr.i3, align 4
  %idxprom98.i105 = sext i32 %170 to i64
  %arrayidx99.i106 = getelementptr inbounds %struct.internal_state, ptr %167, i64 0, i32 44, i64 %idxprom98.i105
  store i32 %169, ptr %arrayidx99.i106, align 4
  %171 = load i32, ptr %j.i5, align 4
  store i32 %171, ptr %k.addr.i3, align 4
  %shl100.i107 = shl i32 %171, 1
  br label %while.cond.i12, !llvm.loop !20

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_17.exit: ; preds = %if.end.i75, %land.lhs.true78.i99, %while.cond.i12
  %172 = load i32, ptr %v.i4, align 4
  %173 = load ptr, ptr %s.addr.i1, align 8
  %174 = load i32, ptr %k.addr.i3, align 4
  %idxprom102.i110 = sext i32 %174 to i64
  %arrayidx103.i111 = getelementptr inbounds %struct.internal_state, ptr %173, i64 0, i32 44, i64 %idxprom102.i110
  store i32 %172, ptr %arrayidx103.i111, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tree.addr.i2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %k.addr.i3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %j.i5)
  %175 = load ptr, ptr %s.addr, align 8
  %arrayidx55 = getelementptr inbounds %struct.internal_state, ptr %175, i64 0, i32 44, i64 1
  %176 = load i32, ptr %arrayidx55, align 4
  store i32 %176, ptr %m, align 4
  %177 = load i32, ptr %n, align 4
  %heap_max57 = getelementptr inbounds %struct.internal_state, ptr %175, i64 0, i32 46
  %178 = load i32, ptr %heap_max57, align 8
  %dec58 = add nsw i32 %178, -1
  store i32 %dec58, ptr %heap_max57, align 8
  %idxprom59 = sext i32 %dec58 to i64
  %arrayidx60 = getelementptr inbounds %struct.internal_state, ptr %175, i64 0, i32 44, i64 %idxprom59
  store i32 %177, ptr %arrayidx60, align 4
  %179 = load i32, ptr %m, align 4
  %180 = load ptr, ptr %s.addr, align 8
  %heap_max62 = getelementptr inbounds %struct.internal_state, ptr %180, i64 0, i32 46
  %181 = load i32, ptr %heap_max62, align 8
  %dec63 = add nsw i32 %181, -1
  store i32 %dec63, ptr %heap_max62, align 8
  %idxprom64 = sext i32 %dec63 to i64
  %arrayidx65 = getelementptr inbounds %struct.internal_state, ptr %180, i64 0, i32 44, i64 %idxprom64
  store i32 %179, ptr %arrayidx65, align 4
  %182 = load ptr, ptr %tree, align 8
  %183 = load i32, ptr %n, align 4
  %idxprom66 = sext i32 %183 to i64
  %arrayidx67 = getelementptr inbounds %struct.ct_data_s, ptr %182, i64 %idxprom66
  %184 = load i16, ptr %arrayidx67, align 2
  %185 = load i32, ptr %m, align 4
  %idxprom70 = sext i32 %185 to i64
  %arrayidx71 = getelementptr inbounds %struct.ct_data_s, ptr %182, i64 %idxprom70
  %186 = load i16, ptr %arrayidx71, align 2
  %add = add i16 %184, %186
  %187 = load ptr, ptr %tree, align 8
  %188 = load i32, ptr %node, align 4
  %idxprom75 = sext i32 %188 to i64
  %arrayidx76 = getelementptr inbounds %struct.ct_data_s, ptr %187, i64 %idxprom75
  store i16 %add, ptr %arrayidx76, align 2
  %189 = load ptr, ptr %s.addr, align 8
  %190 = load i32, ptr %n, align 4
  %idxprom79 = sext i32 %190 to i64
  %arrayidx80 = getelementptr inbounds %struct.internal_state, ptr %189, i64 0, i32 47, i64 %idxprom79
  %191 = load i8, ptr %arrayidx80, align 1
  %192 = load i32, ptr %m, align 4
  %idxprom83 = sext i32 %192 to i64
  %arrayidx84 = getelementptr inbounds %struct.internal_state, ptr %189, i64 0, i32 47, i64 %idxprom83
  %193 = load i8, ptr %arrayidx84, align 1
  %cmp86.not = icmp ult i8 %191, %193
  br i1 %cmp86.not, label %cond.false93, label %cond.true88

cond.true88:                                      ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_17.exit
  %194 = load ptr, ptr %s.addr, align 8
  %195 = load i32, ptr %n, align 4
  %idxprom90 = sext i32 %195 to i64
  %arrayidx91 = getelementptr inbounds %struct.internal_state, ptr %194, i64 0, i32 47, i64 %idxprom90
  br label %cond.end98

cond.false93:                                     ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_17.exit
  %196 = load ptr, ptr %s.addr, align 8
  %197 = load i32, ptr %m, align 4
  %idxprom95 = sext i32 %197 to i64
  %arrayidx96 = getelementptr inbounds %struct.internal_state, ptr %196, i64 0, i32 47, i64 %idxprom95
  br label %cond.end98

cond.end98:                                       ; preds = %cond.false93, %cond.true88
  %cond99.in.in = phi ptr [ %arrayidx91, %cond.true88 ], [ %arrayidx96, %cond.false93 ]
  %cond99.in = load i8, ptr %cond99.in.in, align 1
  %add100 = add i8 %cond99.in, 1
  %198 = load ptr, ptr %s.addr, align 8
  %199 = load i32, ptr %node, align 4
  %idxprom103 = sext i32 %199 to i64
  %arrayidx104 = getelementptr inbounds %struct.internal_state, ptr %198, i64 0, i32 47, i64 %idxprom103
  store i8 %add100, ptr %arrayidx104, align 1
  %conv105 = trunc i32 %199 to i16
  %200 = load ptr, ptr %tree, align 8
  %201 = load i32, ptr %m, align 4
  %idxprom106 = sext i32 %201 to i64
  %dl108 = getelementptr inbounds %struct.ct_data_s, ptr %200, i64 %idxprom106, i32 1
  store i16 %conv105, ptr %dl108, align 2
  %202 = load i32, ptr %n, align 4
  %idxprom109 = sext i32 %202 to i64
  %dl111 = getelementptr inbounds %struct.ct_data_s, ptr %200, i64 %idxprom109, i32 1
  store i16 %conv105, ptr %dl111, align 2
  %203 = load i32, ptr %node, align 4
  %inc112 = add nsw i32 %203, 1
  store i32 %inc112, ptr %node, align 4
  %204 = load ptr, ptr %s.addr, align 8
  %arrayidx114 = getelementptr inbounds %struct.internal_state, ptr %204, i64 0, i32 44, i64 1
  store i32 %203, ptr %arrayidx114, align 4
  %205 = load ptr, ptr %tree, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i112)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tree.addr.i113)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %k.addr.i114)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i115)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %j.i116)
  store ptr %204, ptr %s.addr.i112, align 8
  store ptr %205, ptr %tree.addr.i113, align 8
  store i32 1, ptr %k.addr.i114, align 4
  %arrayidx.i119 = getelementptr inbounds %struct.internal_state, ptr %204, i64 0, i32 44, i64 1
  %206 = load i32, ptr %arrayidx.i119, align 4
  store i32 %206, ptr %v.i115, align 4
  br label %while.cond.i123

while.cond.i123:                                  ; preds = %if.end93.i219, %cond.end98
  %storemerge263 = phi i32 [ 2, %cond.end98 ], [ %shl100.i218, %if.end93.i219 ]
  store i32 %storemerge263, ptr %j.i116, align 4
  %207 = load ptr, ptr %s.addr.i112, align 8
  %heap_len.i121 = getelementptr inbounds %struct.internal_state, ptr %207, i64 0, i32 45
  %208 = load i32, ptr %heap_len.i121, align 4
  %cmp.i122.not = icmp sgt i32 %storemerge263, %208
  br i1 %cmp.i122.not, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_18.exit, label %while.body.i126

while.body.i126:                                  ; preds = %while.cond.i123
  %209 = load i32, ptr %j.i116, align 4
  %210 = load ptr, ptr %s.addr.i112, align 8
  %heap_len1.i124 = getelementptr inbounds %struct.internal_state, ptr %210, i64 0, i32 45
  %211 = load i32, ptr %heap_len1.i124, align 4
  %cmp2.i125 = icmp slt i32 %209, %211
  br i1 %cmp2.i125, label %land.lhs.true.i141, label %if.end.i186

land.lhs.true.i141:                               ; preds = %while.body.i126
  %212 = load ptr, ptr %tree.addr.i113, align 8
  %213 = load ptr, ptr %s.addr.i112, align 8
  %214 = load i32, ptr %j.i116, align 4
  %add.i128 = add nsw i32 %214, 1
  %idxprom4.i129 = sext i32 %add.i128 to i64
  %arrayidx5.i130 = getelementptr inbounds %struct.internal_state, ptr %213, i64 0, i32 44, i64 %idxprom4.i129
  %215 = load i32, ptr %arrayidx5.i130, align 4
  %idxprom6.i131 = sext i32 %215 to i64
  %arrayidx7.i132 = getelementptr inbounds %struct.ct_data_s, ptr %212, i64 %idxprom6.i131
  %216 = load i16, ptr %arrayidx7.i132, align 2
  %217 = load ptr, ptr %tree.addr.i113, align 8
  %218 = load ptr, ptr %s.addr.i112, align 8
  %219 = load i32, ptr %j.i116, align 4
  %idxprom9.i135 = sext i32 %219 to i64
  %arrayidx10.i136 = getelementptr inbounds %struct.internal_state, ptr %218, i64 0, i32 44, i64 %idxprom9.i135
  %220 = load i32, ptr %arrayidx10.i136, align 4
  %idxprom11.i137 = sext i32 %220 to i64
  %arrayidx12.i138 = getelementptr inbounds %struct.ct_data_s, ptr %217, i64 %idxprom11.i137
  %221 = load i16, ptr %arrayidx12.i138, align 2
  %cmp15.i140 = icmp ult i16 %216, %221
  br i1 %cmp15.i140, label %if.then.i175, label %lor.lhs.false.i156

lor.lhs.false.i156:                               ; preds = %land.lhs.true.i141
  %222 = load ptr, ptr %tree.addr.i113, align 8
  %223 = load ptr, ptr %s.addr.i112, align 8
  %224 = load i32, ptr %j.i116, align 4
  %add18.i143 = add nsw i32 %224, 1
  %idxprom19.i144 = sext i32 %add18.i143 to i64
  %arrayidx20.i145 = getelementptr inbounds %struct.internal_state, ptr %223, i64 0, i32 44, i64 %idxprom19.i144
  %225 = load i32, ptr %arrayidx20.i145, align 4
  %idxprom21.i146 = sext i32 %225 to i64
  %arrayidx22.i147 = getelementptr inbounds %struct.ct_data_s, ptr %222, i64 %idxprom21.i146
  %226 = load i16, ptr %arrayidx22.i147, align 2
  %227 = load ptr, ptr %tree.addr.i113, align 8
  %228 = load ptr, ptr %s.addr.i112, align 8
  %229 = load i32, ptr %j.i116, align 4
  %idxprom26.i150 = sext i32 %229 to i64
  %arrayidx27.i151 = getelementptr inbounds %struct.internal_state, ptr %228, i64 0, i32 44, i64 %idxprom26.i150
  %230 = load i32, ptr %arrayidx27.i151, align 4
  %idxprom28.i152 = sext i32 %230 to i64
  %arrayidx29.i153 = getelementptr inbounds %struct.ct_data_s, ptr %227, i64 %idxprom28.i152
  %231 = load i16, ptr %arrayidx29.i153, align 2
  %cmp32.i155 = icmp eq i16 %226, %231
  br i1 %cmp32.i155, label %land.lhs.true34.i173, label %if.end.i186

land.lhs.true34.i173:                             ; preds = %lor.lhs.false.i156
  %232 = load ptr, ptr %s.addr.i112, align 8
  %233 = load i32, ptr %j.i116, align 4
  %add36.i159 = add nsw i32 %233, 1
  %idxprom37.i160 = sext i32 %add36.i159 to i64
  %arrayidx38.i161 = getelementptr inbounds %struct.internal_state, ptr %232, i64 0, i32 44, i64 %idxprom37.i160
  %234 = load i32, ptr %arrayidx38.i161, align 4
  %idxprom39.i162 = sext i32 %234 to i64
  %arrayidx40.i163 = getelementptr inbounds %struct.internal_state, ptr %232, i64 0, i32 47, i64 %idxprom39.i162
  %235 = load i8, ptr %arrayidx40.i163, align 1
  %236 = load ptr, ptr %s.addr.i112, align 8
  %237 = load i32, ptr %j.i116, align 4
  %idxprom44.i167 = sext i32 %237 to i64
  %arrayidx45.i168 = getelementptr inbounds %struct.internal_state, ptr %236, i64 0, i32 44, i64 %idxprom44.i167
  %238 = load i32, ptr %arrayidx45.i168, align 4
  %idxprom46.i169 = sext i32 %238 to i64
  %arrayidx47.i170 = getelementptr inbounds %struct.internal_state, ptr %236, i64 0, i32 47, i64 %idxprom46.i169
  %239 = load i8, ptr %arrayidx47.i170, align 1
  %cmp49.i172.not = icmp ugt i8 %235, %239
  br i1 %cmp49.i172.not, label %if.end.i186, label %if.then.i175

if.then.i175:                                     ; preds = %land.lhs.true34.i173, %land.lhs.true.i141
  %240 = load i32, ptr %j.i116, align 4
  %inc.i174 = add nsw i32 %240, 1
  store i32 %inc.i174, ptr %j.i116, align 4
  br label %if.end.i186

if.end.i186:                                      ; preds = %if.then.i175, %land.lhs.true34.i173, %lor.lhs.false.i156, %while.body.i126
  %241 = load ptr, ptr %tree.addr.i113, align 8
  %242 = load i32, ptr %v.i115, align 4
  %idxprom51.i176 = sext i32 %242 to i64
  %arrayidx52.i177 = getelementptr inbounds %struct.ct_data_s, ptr %241, i64 %idxprom51.i176
  %243 = load i16, ptr %arrayidx52.i177, align 2
  %244 = load ptr, ptr %s.addr.i112, align 8
  %245 = load i32, ptr %j.i116, align 4
  %idxprom56.i180 = sext i32 %245 to i64
  %arrayidx57.i181 = getelementptr inbounds %struct.internal_state, ptr %244, i64 0, i32 44, i64 %idxprom56.i180
  %246 = load i32, ptr %arrayidx57.i181, align 4
  %idxprom58.i182 = sext i32 %246 to i64
  %arrayidx59.i183 = getelementptr inbounds %struct.ct_data_s, ptr %241, i64 %idxprom58.i182
  %247 = load i16, ptr %arrayidx59.i183, align 2
  %cmp62.i185 = icmp ult i16 %243, %247
  br i1 %cmp62.i185, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_18.exit, label %lor.lhs.false64.i197

lor.lhs.false64.i197:                             ; preds = %if.end.i186
  %248 = load ptr, ptr %tree.addr.i113, align 8
  %249 = load i32, ptr %v.i115, align 4
  %idxprom65.i187 = sext i32 %249 to i64
  %arrayidx66.i188 = getelementptr inbounds %struct.ct_data_s, ptr %248, i64 %idxprom65.i187
  %250 = load i16, ptr %arrayidx66.i188, align 2
  %251 = load ptr, ptr %s.addr.i112, align 8
  %252 = load i32, ptr %j.i116, align 4
  %idxprom70.i191 = sext i32 %252 to i64
  %arrayidx71.i192 = getelementptr inbounds %struct.internal_state, ptr %251, i64 0, i32 44, i64 %idxprom70.i191
  %253 = load i32, ptr %arrayidx71.i192, align 4
  %idxprom72.i193 = sext i32 %253 to i64
  %arrayidx73.i194 = getelementptr inbounds %struct.ct_data_s, ptr %248, i64 %idxprom72.i193
  %254 = load i16, ptr %arrayidx73.i194, align 2
  %cmp76.i196 = icmp eq i16 %250, %254
  br i1 %cmp76.i196, label %land.lhs.true78.i210, label %if.end93.i219

land.lhs.true78.i210:                             ; preds = %lor.lhs.false64.i197
  %255 = load ptr, ptr %s.addr.i112, align 8
  %256 = load i32, ptr %v.i115, align 4
  %idxprom80.i199 = sext i32 %256 to i64
  %arrayidx81.i200 = getelementptr inbounds %struct.internal_state, ptr %255, i64 0, i32 47, i64 %idxprom80.i199
  %257 = load i8, ptr %arrayidx81.i200, align 1
  %258 = load i32, ptr %j.i116, align 4
  %idxprom85.i204 = sext i32 %258 to i64
  %arrayidx86.i205 = getelementptr inbounds %struct.internal_state, ptr %255, i64 0, i32 44, i64 %idxprom85.i204
  %259 = load i32, ptr %arrayidx86.i205, align 4
  %idxprom87.i206 = sext i32 %259 to i64
  %arrayidx88.i207 = getelementptr inbounds %struct.internal_state, ptr %255, i64 0, i32 47, i64 %idxprom87.i206
  %260 = load i8, ptr %arrayidx88.i207, align 1
  %cmp90.i209.not = icmp ugt i8 %257, %260
  br i1 %cmp90.i209.not, label %if.end93.i219, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_18.exit

if.end93.i219:                                    ; preds = %land.lhs.true78.i210, %lor.lhs.false64.i197
  %261 = load ptr, ptr %s.addr.i112, align 8
  %262 = load i32, ptr %j.i116, align 4
  %idxprom95.i213 = sext i32 %262 to i64
  %arrayidx96.i214 = getelementptr inbounds %struct.internal_state, ptr %261, i64 0, i32 44, i64 %idxprom95.i213
  %263 = load i32, ptr %arrayidx96.i214, align 4
  %264 = load i32, ptr %k.addr.i114, align 4
  %idxprom98.i216 = sext i32 %264 to i64
  %arrayidx99.i217 = getelementptr inbounds %struct.internal_state, ptr %261, i64 0, i32 44, i64 %idxprom98.i216
  store i32 %263, ptr %arrayidx99.i217, align 4
  %265 = load i32, ptr %j.i116, align 4
  store i32 %265, ptr %k.addr.i114, align 4
  %shl100.i218 = shl i32 %265, 1
  br label %while.cond.i123, !llvm.loop !20

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_18.exit: ; preds = %if.end.i186, %land.lhs.true78.i210, %while.cond.i123
  %266 = load i32, ptr %v.i115, align 4
  %267 = load ptr, ptr %s.addr.i112, align 8
  %268 = load i32, ptr %k.addr.i114, align 4
  %idxprom102.i221 = sext i32 %268 to i64
  %arrayidx103.i222 = getelementptr inbounds %struct.internal_state, ptr %267, i64 0, i32 44, i64 %idxprom102.i221
  store i32 %266, ptr %arrayidx103.i222, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i112)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tree.addr.i113)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %k.addr.i114)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i115)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %j.i116)
  %269 = load ptr, ptr %s.addr, align 8
  %heap_len115 = getelementptr inbounds %struct.internal_state, ptr %269, i64 0, i32 45
  %270 = load i32, ptr %heap_len115, align 4
  %cmp116 = icmp sgt i32 %270, 1
  br i1 %cmp116, label %do.body, label %do.end, !llvm.loop !16

do.end:                                           ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_18.exit
  %271 = load ptr, ptr %s.addr, align 8
  %arrayidx119 = getelementptr inbounds %struct.internal_state, ptr %271, i64 0, i32 44, i64 1
  %272 = load i32, ptr %arrayidx119, align 4
  %heap_max121 = getelementptr inbounds %struct.internal_state, ptr %271, i64 0, i32 46
  %273 = load i32, ptr %heap_max121, align 8
  %dec122 = add nsw i32 %273, -1
  store i32 %dec122, ptr %heap_max121, align 8
  %idxprom123 = sext i32 %dec122 to i64
  %arrayidx124 = getelementptr inbounds %struct.internal_state, ptr %271, i64 0, i32 44, i64 %idxprom123
  store i32 %272, ptr %arrayidx124, align 4
  %274 = load ptr, ptr %s.addr, align 8
  %275 = load ptr, ptr %desc.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i223)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %desc.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tree.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_code.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stree.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %extra.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_length.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %h.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xbits.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %f.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %overflow.i)
  store ptr %274, ptr %s.addr.i223, align 8
  store ptr %275, ptr %desc.addr.i, align 8
  %276 = load ptr, ptr %275, align 8
  store ptr %276, ptr %tree.i, align 8
  %max_code1.i = getelementptr inbounds %struct.tree_desc_s, ptr %275, i64 0, i32 1
  %277 = load i32, ptr %max_code1.i, align 8
  store i32 %277, ptr %max_code.i, align 4
  %stat_desc.i = getelementptr inbounds %struct.tree_desc_s, ptr %275, i64 0, i32 2
  %278 = load ptr, ptr %stat_desc.i, align 8
  %279 = load ptr, ptr %278, align 8
  store ptr %279, ptr %stree.i, align 8
  %280 = load ptr, ptr %desc.addr.i, align 8
  %stat_desc2.i = getelementptr inbounds %struct.tree_desc_s, ptr %280, i64 0, i32 2
  %281 = load ptr, ptr %stat_desc2.i, align 8
  %extra_bits.i = getelementptr inbounds %struct.static_tree_desc_s, ptr %281, i64 0, i32 1
  %282 = load ptr, ptr %extra_bits.i, align 8
  store ptr %282, ptr %extra.i, align 8
  %extra_base.i = getelementptr inbounds %struct.static_tree_desc_s, ptr %281, i64 0, i32 2
  %283 = load i32, ptr %extra_base.i, align 8
  store i32 %283, ptr %base.i, align 4
  %284 = load ptr, ptr %desc.addr.i, align 8
  %stat_desc4.i = getelementptr inbounds %struct.tree_desc_s, ptr %284, i64 0, i32 2
  %285 = load ptr, ptr %stat_desc4.i, align 8
  %max_length5.i = getelementptr inbounds %struct.static_tree_desc_s, ptr %285, i64 0, i32 4
  %286 = load i32, ptr %max_length5.i, align 8
  store i32 %286, ptr %max_length.i, align 4
  store i32 0, ptr %overflow.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %do.end
  %storemerge264 = phi i32 [ 0, %do.end ], [ %inc.i227, %for.body.i ]
  store i32 %storemerge264, ptr %bits.i, align 4
  %cmp.i224 = icmp slt i32 %storemerge264, 16
  br i1 %cmp.i224, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %287 = load ptr, ptr %s.addr.i223, align 8
  %288 = load i32, ptr %bits.i, align 4
  %idxprom.i225 = sext i32 %288 to i64
  %arrayidx.i226 = getelementptr inbounds %struct.internal_state, ptr %287, i64 0, i32 43, i64 %idxprom.i225
  store i16 0, ptr %arrayidx.i226, align 2
  %inc.i227 = add nsw i32 %288, 1
  br label %for.cond.i, !llvm.loop !21

for.end.i:                                        ; preds = %for.cond.i
  %289 = load ptr, ptr %tree.i, align 8
  %290 = load ptr, ptr %s.addr.i223, align 8
  %heap_max.i = getelementptr inbounds %struct.internal_state, ptr %290, i64 0, i32 46
  %291 = load i32, ptr %heap_max.i, align 8
  %idxprom6.i229 = sext i32 %291 to i64
  %arrayidx7.i230 = getelementptr inbounds %struct.internal_state, ptr %290, i64 0, i32 44, i64 %idxprom6.i229
  %292 = load i32, ptr %arrayidx7.i230, align 4
  %idxprom8.i = sext i32 %292 to i64
  %dl.i = getelementptr inbounds %struct.ct_data_s, ptr %289, i64 %idxprom8.i, i32 1
  store i16 0, ptr %dl.i, align 2
  %293 = load ptr, ptr %s.addr.i223, align 8
  %heap_max10.i = getelementptr inbounds %struct.internal_state, ptr %293, i64 0, i32 46
  br label %for.cond11.i

for.cond11.i:                                     ; preds = %for.inc62.i, %for.end.i
  %storemerge265.in.in = phi ptr [ %heap_max10.i, %for.end.i ], [ %h.i, %for.inc62.i ]
  %storemerge265.in = load i32, ptr %storemerge265.in.in, align 4
  %storemerge265 = add nsw i32 %storemerge265.in, 1
  store i32 %storemerge265, ptr %h.i, align 4
  %cmp12.i = icmp slt i32 %storemerge265.in, 572
  br i1 %cmp12.i, label %for.body13.i, label %for.end64.i

for.body13.i:                                     ; preds = %for.cond11.i
  %294 = load ptr, ptr %s.addr.i223, align 8
  %295 = load i32, ptr %h.i, align 4
  %idxprom15.i = sext i32 %295 to i64
  %arrayidx16.i = getelementptr inbounds %struct.internal_state, ptr %294, i64 0, i32 44, i64 %idxprom15.i
  %296 = load i32, ptr %arrayidx16.i, align 4
  store i32 %296, ptr %n.i, align 4
  %297 = load ptr, ptr %tree.i, align 8
  %idxprom17.i = sext i32 %296 to i64
  %dl19.i = getelementptr inbounds %struct.ct_data_s, ptr %297, i64 %idxprom17.i, i32 1
  %298 = load i16, ptr %dl19.i, align 2
  %idxprom20.i = zext i16 %298 to i64
  %dl22.i = getelementptr inbounds %struct.ct_data_s, ptr %297, i64 %idxprom20.i, i32 1
  %299 = load i16, ptr %dl22.i, align 2
  %conv.i232 = zext i16 %299 to i32
  %add23.i = add nuw nsw i32 %conv.i232, 1
  store i32 %add23.i, ptr %bits.i, align 4
  %300 = load i32, ptr %max_length.i, align 4
  %cmp24.i.not = icmp sgt i32 %300, %conv.i232
  br i1 %cmp24.i.not, label %if.end.i236, label %if.then.i233

if.then.i233:                                     ; preds = %for.body13.i
  %301 = load i32, ptr %max_length.i, align 4
  store i32 %301, ptr %bits.i, align 4
  %302 = load i32, ptr %overflow.i, align 4
  %inc26.i = add nsw i32 %302, 1
  store i32 %inc26.i, ptr %overflow.i, align 4
  br label %if.end.i236

if.end.i236:                                      ; preds = %if.then.i233, %for.body13.i
  %303 = load i32, ptr %bits.i, align 4
  %conv27.i = trunc i32 %303 to i16
  %304 = load ptr, ptr %tree.i, align 8
  %305 = load i32, ptr %n.i, align 4
  %idxprom28.i234 = sext i32 %305 to i64
  %dl30.i = getelementptr inbounds %struct.ct_data_s, ptr %304, i64 %idxprom28.i234, i32 1
  store i16 %conv27.i, ptr %dl30.i, align 2
  %306 = load i32, ptr %max_code.i, align 4
  %cmp31.i = icmp sgt i32 %305, %306
  br i1 %cmp31.i, label %for.inc62.i, label %if.end34.i

if.end34.i:                                       ; preds = %if.end.i236
  %307 = load ptr, ptr %s.addr.i223, align 8
  %308 = load i32, ptr %bits.i, align 4
  %idxprom36.i = sext i32 %308 to i64
  %arrayidx37.i = getelementptr inbounds %struct.internal_state, ptr %307, i64 0, i32 43, i64 %idxprom36.i
  %309 = load i16, ptr %arrayidx37.i, align 2
  %inc38.i = add i16 %309, 1
  store i16 %inc38.i, ptr %arrayidx37.i, align 2
  store i32 0, ptr %xbits.i, align 4
  %310 = load i32, ptr %n.i, align 4
  %311 = load i32, ptr %base.i, align 4
  %cmp39.i.not = icmp slt i32 %310, %311
  br i1 %cmp39.i.not, label %if.end44.i, label %if.then41.i

if.then41.i:                                      ; preds = %if.end34.i
  %312 = load ptr, ptr %extra.i, align 8
  %313 = load i32, ptr %n.i, align 4
  %314 = load i32, ptr %base.i, align 4
  %sub.i = sub nsw i32 %313, %314
  %idxprom42.i = sext i32 %sub.i to i64
  %arrayidx43.i = getelementptr inbounds i32, ptr %312, i64 %idxprom42.i
  %315 = load i32, ptr %arrayidx43.i, align 4
  store i32 %315, ptr %xbits.i, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then41.i, %if.end34.i
  %316 = load ptr, ptr %tree.i, align 8
  %317 = load i32, ptr %n.i, align 4
  %idxprom45.i = sext i32 %317 to i64
  %arrayidx46.i = getelementptr inbounds %struct.ct_data_s, ptr %316, i64 %idxprom45.i
  %318 = load i16, ptr %arrayidx46.i, align 2
  store i16 %318, ptr %f.i, align 2
  %conv47.i = zext i16 %318 to i64
  %319 = load i32, ptr %bits.i, align 4
  %320 = load i32, ptr %xbits.i, align 4
  %add48.i = add nsw i32 %319, %320
  %conv49.i = sext i32 %add48.i to i64
  %mul.i = mul nsw i64 %conv47.i, %conv49.i
  %321 = load ptr, ptr %s.addr.i223, align 8
  %opt_len.i = getelementptr inbounds %struct.internal_state, ptr %321, i64 0, i32 52
  %322 = load i64, ptr %opt_len.i, align 8
  %add50.i = add i64 %322, %mul.i
  store i64 %add50.i, ptr %opt_len.i, align 8
  %323 = load ptr, ptr %stree.i, align 8
  %tobool.i.not = icmp eq ptr %323, null
  br i1 %tobool.i.not, label %for.inc62.i, label %if.then51.i

if.then51.i:                                      ; preds = %if.end44.i
  %324 = load i16, ptr %f.i, align 2
  %conv52.i = zext i16 %324 to i64
  %325 = load ptr, ptr %stree.i, align 8
  %326 = load i32, ptr %n.i, align 4
  %idxprom53.i = sext i32 %326 to i64
  %dl55.i = getelementptr inbounds %struct.ct_data_s, ptr %325, i64 %idxprom53.i, i32 1
  %327 = load i16, ptr %dl55.i, align 2
  %conv56.i = zext i16 %327 to i32
  %328 = load i32, ptr %xbits.i, align 4
  %add57.i = add nsw i32 %328, %conv56.i
  %conv58.i = sext i32 %add57.i to i64
  %mul59.i = mul nsw i64 %conv52.i, %conv58.i
  %329 = load ptr, ptr %s.addr.i223, align 8
  %static_len.i = getelementptr inbounds %struct.internal_state, ptr %329, i64 0, i32 53
  %330 = load i64, ptr %static_len.i, align 8
  %add60.i = add i64 %330, %mul59.i
  store i64 %add60.i, ptr %static_len.i, align 8
  br label %for.inc62.i

for.inc62.i:                                      ; preds = %if.end44.i, %if.then51.i, %if.end.i236
  br label %for.cond11.i, !llvm.loop !22

for.end64.i:                                      ; preds = %for.cond11.i
  %331 = load i32, ptr %overflow.i, align 4
  %cmp65.i = icmp eq i32 %331, 0
  br i1 %cmp65.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_19.exit, label %do.body.i

do.body.i:                                        ; preds = %for.end64.i, %while.end.i
  br label %while.cond.i237

while.cond.i237:                                  ; preds = %while.cond.i237, %do.body.i
  %storemerge266.in.in = phi ptr [ %max_length.i, %do.body.i ], [ %bits.i, %while.cond.i237 ]
  %storemerge266.in = load i32, ptr %storemerge266.in.in, align 4
  %storemerge266 = add nsw i32 %storemerge266.in, -1
  store i32 %storemerge266, ptr %bits.i, align 4
  %332 = load ptr, ptr %s.addr.i223, align 8
  %idxprom71.i = sext i32 %storemerge266 to i64
  %arrayidx72.i = getelementptr inbounds %struct.internal_state, ptr %332, i64 0, i32 43, i64 %idxprom71.i
  %333 = load i16, ptr %arrayidx72.i, align 2
  %cmp74.i = icmp eq i16 %333, 0
  br i1 %cmp74.i, label %while.cond.i237, label %while.end.i, !llvm.loop !23

while.end.i:                                      ; preds = %while.cond.i237
  %334 = load ptr, ptr %s.addr.i223, align 8
  %335 = load i32, ptr %bits.i, align 4
  %idxprom77.i = sext i32 %335 to i64
  %arrayidx78.i = getelementptr inbounds %struct.internal_state, ptr %334, i64 0, i32 43, i64 %idxprom77.i
  %336 = load i16, ptr %arrayidx78.i, align 2
  %dec79.i = add i16 %336, -1
  store i16 %dec79.i, ptr %arrayidx78.i, align 2
  %337 = load ptr, ptr %s.addr.i223, align 8
  %338 = load i32, ptr %bits.i, align 4
  %add81.i = add nsw i32 %338, 1
  %idxprom82.i = sext i32 %add81.i to i64
  %arrayidx83.i = getelementptr inbounds %struct.internal_state, ptr %337, i64 0, i32 43, i64 %idxprom82.i
  %339 = load i16, ptr %arrayidx83.i, align 2
  %add85.i = add i16 %339, 2
  store i16 %add85.i, ptr %arrayidx83.i, align 2
  %340 = load ptr, ptr %s.addr.i223, align 8
  %341 = load i32, ptr %max_length.i, align 4
  %idxprom88.i = sext i32 %341 to i64
  %arrayidx89.i = getelementptr inbounds %struct.internal_state, ptr %340, i64 0, i32 43, i64 %idxprom88.i
  %342 = load i16, ptr %arrayidx89.i, align 2
  %dec90.i = add i16 %342, -1
  store i16 %dec90.i, ptr %arrayidx89.i, align 2
  %343 = load i32, ptr %overflow.i, align 4
  %sub91.i = add nsw i32 %343, -2
  store i32 %sub91.i, ptr %overflow.i, align 4
  %cmp92.i = icmp sgt i32 %343, 2
  br i1 %cmp92.i, label %do.body.i, label %do.end.i, !llvm.loop !24

do.end.i:                                         ; preds = %while.end.i
  %344 = load i32, ptr %max_length.i, align 4
  br label %for.cond94.i

for.cond94.i:                                     ; preds = %while.end140.i, %do.end.i
  %storemerge267 = phi i32 [ %344, %do.end.i ], [ %dec142.i, %while.end140.i ]
  store i32 %storemerge267, ptr %bits.i, align 4
  %cmp95.i.not = icmp eq i32 %storemerge267, 0
  br i1 %cmp95.i.not, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_19.exit, label %for.body97.i

for.body97.i:                                     ; preds = %for.cond94.i
  %345 = load ptr, ptr %s.addr.i223, align 8
  %346 = load i32, ptr %bits.i, align 4
  %idxprom99.i = sext i32 %346 to i64
  %arrayidx100.i = getelementptr inbounds %struct.internal_state, ptr %345, i64 0, i32 43, i64 %idxprom99.i
  %347 = load i16, ptr %arrayidx100.i, align 2
  %conv101.i = zext i16 %347 to i32
  store i32 %conv101.i, ptr %n.i, align 4
  br label %while.cond102.i

while.cond102.i:                                  ; preds = %while.body105.i, %if.end138.i, %for.body97.i
  %348 = load i32, ptr %n.i, align 4
  %cmp103.i.not = icmp eq i32 %348, 0
  br i1 %cmp103.i.not, label %while.end140.i, label %while.body105.i

while.body105.i:                                  ; preds = %while.cond102.i
  %349 = load ptr, ptr %s.addr.i223, align 8
  %350 = load i32, ptr %h.i, align 4
  %dec107.i = add nsw i32 %350, -1
  store i32 %dec107.i, ptr %h.i, align 4
  %idxprom108.i = sext i32 %dec107.i to i64
  %arrayidx109.i = getelementptr inbounds %struct.internal_state, ptr %349, i64 0, i32 44, i64 %idxprom108.i
  %351 = load i32, ptr %arrayidx109.i, align 4
  store i32 %351, ptr %m.i, align 4
  %352 = load i32, ptr %max_code.i, align 4
  %cmp110.i = icmp sgt i32 %351, %352
  br i1 %cmp110.i, label %while.cond102.i, label %if.end113.i, !llvm.loop !25

if.end113.i:                                      ; preds = %while.body105.i
  %353 = load ptr, ptr %tree.i, align 8
  %354 = load i32, ptr %m.i, align 4
  %idxprom114.i = sext i32 %354 to i64
  %dl116.i = getelementptr inbounds %struct.ct_data_s, ptr %353, i64 %idxprom114.i, i32 1
  %355 = load i16, ptr %dl116.i, align 2
  %conv117.i = zext i16 %355 to i32
  %356 = load i32, ptr %bits.i, align 4
  %cmp118.i.not = icmp eq i32 %356, %conv117.i
  br i1 %cmp118.i.not, label %if.end138.i, label %if.then120.i

if.then120.i:                                     ; preds = %if.end113.i
  %357 = load i32, ptr %bits.i, align 4
  %conv121.i = sext i32 %357 to i64
  %358 = load ptr, ptr %tree.i, align 8
  %359 = load i32, ptr %m.i, align 4
  %idxprom122.i = sext i32 %359 to i64
  %dl124.i = getelementptr inbounds %struct.ct_data_s, ptr %358, i64 %idxprom122.i, i32 1
  %360 = load i16, ptr %dl124.i, align 2
  %conv125.i = zext i16 %360 to i64
  %sub126.i = sub nsw i64 %conv121.i, %conv125.i
  %361 = load ptr, ptr %tree.i, align 8
  %362 = load i32, ptr %m.i, align 4
  %idxprom127.i = sext i32 %362 to i64
  %arrayidx128.i = getelementptr inbounds %struct.ct_data_s, ptr %361, i64 %idxprom127.i
  %363 = load i16, ptr %arrayidx128.i, align 2
  %conv130.i = zext i16 %363 to i64
  %mul131.i = mul nsw i64 %sub126.i, %conv130.i
  %364 = load ptr, ptr %s.addr.i223, align 8
  %opt_len132.i = getelementptr inbounds %struct.internal_state, ptr %364, i64 0, i32 52
  %365 = load i64, ptr %opt_len132.i, align 8
  %add133.i = add i64 %365, %mul131.i
  store i64 %add133.i, ptr %opt_len132.i, align 8
  %366 = load i32, ptr %bits.i, align 4
  %conv134.i = trunc i32 %366 to i16
  %367 = load ptr, ptr %tree.i, align 8
  %368 = load i32, ptr %m.i, align 4
  %idxprom135.i = sext i32 %368 to i64
  %dl137.i = getelementptr inbounds %struct.ct_data_s, ptr %367, i64 %idxprom135.i, i32 1
  store i16 %conv134.i, ptr %dl137.i, align 2
  br label %if.end138.i

if.end138.i:                                      ; preds = %if.then120.i, %if.end113.i
  %369 = load i32, ptr %n.i, align 4
  %dec139.i = add nsw i32 %369, -1
  store i32 %dec139.i, ptr %n.i, align 4
  br label %while.cond102.i, !llvm.loop !25

while.end140.i:                                   ; preds = %while.cond102.i
  %370 = load i32, ptr %bits.i, align 4
  %dec142.i = add nsw i32 %370, -1
  br label %for.cond94.i, !llvm.loop !26

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_19.exit: ; preds = %for.end64.i, %for.cond94.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i223)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %desc.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tree.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_code.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stree.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %extra.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_length.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %h.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xbits.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %f.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %overflow.i)
  %371 = load ptr, ptr %tree, align 8
  %372 = load i32, ptr %max_code, align 4
  %373 = load ptr, ptr %s.addr, align 8
  %bl_count = getelementptr inbounds %struct.internal_state, ptr %373, i64 0, i32 43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tree.addr.i239)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_code.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bl_count.addr.i)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %next_code.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %code.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits.i240)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i241)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i)
  store ptr %371, ptr %tree.addr.i239, align 8
  store i32 %372, ptr %max_code.addr.i, align 4
  store ptr %bl_count, ptr %bl_count.addr.i, align 8
  store i16 0, ptr %code.i, align 2
  br label %for.cond.i243

for.cond.i243:                                    ; preds = %for.body.i250, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_19.exit
  %storemerge268 = phi i32 [ 1, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_19.exit ], [ %inc.i251, %for.body.i250 ]
  store i32 %storemerge268, ptr %bits.i240, align 4
  %cmp.i242 = icmp slt i32 %storemerge268, 16
  br i1 %cmp.i242, label %for.body.i250, label %for.cond5.i

for.body.i250:                                    ; preds = %for.cond.i243
  %374 = load i16, ptr %code.i, align 2
  %375 = load ptr, ptr %bl_count.addr.i, align 8
  %376 = load i32, ptr %bits.i240, align 4
  %sub.i245 = add nsw i32 %376, -1
  %idxprom.i246 = sext i32 %sub.i245 to i64
  %arrayidx.i247 = getelementptr inbounds i16, ptr %375, i64 %idxprom.i246
  %377 = load i16, ptr %arrayidx.i247, align 2
  %add.i248 = add i16 %374, %377
  %shl.i249 = shl i16 %add.i248, 1
  store i16 %shl.i249, ptr %code.i, align 2
  %378 = load i32, ptr %bits.i240, align 4
  %idxprom3.i = sext i32 %378 to i64
  %arrayidx4.i = getelementptr inbounds [16 x i16], ptr %next_code.i, i64 0, i64 %idxprom3.i
  store i16 %shl.i249, ptr %arrayidx4.i, align 2
  %inc.i251 = add nsw i32 %378, 1
  br label %for.cond.i243, !llvm.loop !27

for.cond5.i:                                      ; preds = %for.cond.i243, %for.inc21.i
  %storemerge269 = phi i32 [ %inc22.i, %for.inc21.i ], [ 0, %for.cond.i243 ]
  store i32 %storemerge269, ptr %n.i241, align 4
  %379 = load i32, ptr %max_code.addr.i, align 4
  %cmp6.i.not = icmp sgt i32 %storemerge269, %379
  br i1 %cmp6.i.not, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_20.exit, label %for.body8.i

for.body8.i:                                      ; preds = %for.cond5.i
  %380 = load ptr, ptr %tree.addr.i239, align 8
  %381 = load i32, ptr %n.i241, align 4
  %idxprom9.i253 = sext i32 %381 to i64
  %dl.i255 = getelementptr inbounds %struct.ct_data_s, ptr %380, i64 %idxprom9.i253, i32 1
  %382 = load i16, ptr %dl.i255, align 2
  %conv11.i = zext i16 %382 to i32
  store i32 %conv11.i, ptr %len.i, align 4
  %cmp12.i256 = icmp eq i16 %382, 0
  br i1 %cmp12.i256, label %for.inc21.i, label %if.end.i260

if.end.i260:                                      ; preds = %for.body8.i
  %383 = load i32, ptr %len.i, align 4
  %idxprom14.i = sext i32 %383 to i64
  %arrayidx15.i = getelementptr inbounds [16 x i16], ptr %next_code.i, i64 0, i64 %idxprom14.i
  %384 = load i16, ptr %arrayidx15.i, align 2
  %inc16.i = add i16 %384, 1
  store i16 %inc16.i, ptr %arrayidx15.i, align 2
  %conv17.i = zext i16 %384 to i32
  %385 = load i32, ptr %len.i, align 4
  %call.i = call i32 @bi_reverse(i32 noundef %conv17.i, i32 noundef %385)
  %conv18.i = trunc i32 %call.i to i16
  %386 = load ptr, ptr %tree.addr.i239, align 8
  %387 = load i32, ptr %n.i241, align 4
  %idxprom19.i258 = sext i32 %387 to i64
  %arrayidx20.i259 = getelementptr inbounds %struct.ct_data_s, ptr %386, i64 %idxprom19.i258
  store i16 %conv18.i, ptr %arrayidx20.i259, align 2
  br label %for.inc21.i

for.inc21.i:                                      ; preds = %for.body8.i, %if.end.i260
  %388 = load i32, ptr %n.i241, align 4
  %inc22.i = add nsw i32 %388, 1
  br label %for.cond5.i, !llvm.loop !28

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_20.exit: ; preds = %for.cond5.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tree.addr.i239)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_code.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bl_count.addr.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %next_code.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %code.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits.i240)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i241)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i)
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
  %code.addr.i = alloca i32, align 4
  %len.addr.i = alloca i32, align 4
  %res.i = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %code.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res.i)
  store i32 %conv17, ptr %code.addr.i, align 4
  store i32 %12, ptr %len.addr.i, align 4
  store i32 0, ptr %res.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %if.end
  %13 = load i32, ptr %code.addr.i, align 4
  %and.i = and i32 %13, 1
  %14 = load i32, ptr %res.i, align 4
  %or.i = or i32 %14, %and.i
  store i32 %or.i, ptr %res.i, align 4
  %shr.i = lshr i32 %13, 1
  store i32 %shr.i, ptr %code.addr.i, align 4
  %shl.i = shl i32 %or.i, 1
  store i32 %shl.i, ptr %res.i, align 4
  %15 = load i32, ptr %len.addr.i, align 4
  %dec.i = add nsw i32 %15, -1
  store i32 %dec.i, ptr %len.addr.i, align 4
  %cmp.i = icmp sgt i32 %15, 1
  br i1 %cmp.i, label %do.body.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_26.exit, !llvm.loop !29

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_26.exit: ; preds = %do.body.i
  %16 = load i32, ptr %res.i, align 4
  %shr1.i = lshr i32 %16, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %code.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i)
  %conv18 = trunc i32 %shr1.i to i16
  %17 = load ptr, ptr %tree.addr, align 8
  %18 = load i32, ptr %n, align 4
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds %struct.ct_data_s, ptr %17, i64 %idxprom19
  store i16 %conv18, ptr %arrayidx20, align 2
  br label %for.inc21

for.inc21:                                        ; preds = %for.body8, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_26.exit
  %19 = load i32, ptr %n, align 4
  %inc22 = add nsw i32 %19, 1
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

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_trees_10(ptr noundef %s, ptr noundef %buf, i64 noundef %stored_len, i32 noundef %eof) #1 {
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { alwaysinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }

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
