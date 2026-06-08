; ModuleID = './out/real_signal_run_all/rewritten_ir/student_conservative_forest/source_snapshot_public_repos_zlib_trees.prepared.ll'
source_filename = "./source_snapshot/public_repos/zlib/trees.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.static_tree_desc_s = type { ptr, ptr, i32, i32, i32 }
%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }
%struct.internal_state = type { ptr, i32, ptr, i64, ptr, i64, i32, ptr, i64, i8, i32, i32, i32, i32, ptr, i64, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [573 x %struct.ct_data_s], [61 x %struct.ct_data_s], [39 x %struct.ct_data_s], %struct.tree_desc_s, %struct.tree_desc_s, %struct.tree_desc_s, [16 x i16], [573 x i32], i32, i32, [573 x i8], ptr, i32, i32, i32, i64, i64, i32, i32, i16, i32, i32, i64, i32 }
%struct.tree_desc_s = type { ptr, i32, ptr }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

@_dist_code = constant [512 x i8] c"\00\01\02\03\04\04\05\05\06\06\06\06\07\07\07\07\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\00\00\10\11\12\12\13\13\14\14\14\14\15\15\15\15\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D", align 1
@_length_code = constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0E\0F\0F\0F\0F\10\10\10\10\10\10\10\10\11\11\11\11\11\11\11\11\12\12\12\12\12\12\12\12\13\13\13\13\13\13\13\13\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C", align 1
@static_l_desc = internal constant %struct.static_tree_desc_s { ptr @static_ltree, ptr @extra_lbits, i32 257, i32 286, i32 15 }, align 8
@static_d_desc = internal constant %struct.static_tree_desc_s { ptr @static_dtree, ptr @extra_dbits, i32 0, i32 30, i32 15 }, align 8
@static_bl_desc = internal constant %struct.static_tree_desc_s { ptr null, ptr @extra_blbits, i32 0, i32 19, i32 7 }, align 8
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
  call void @tr_static_init()
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 37
  %l_desc = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 40
  store ptr %dyn_ltree, ptr %l_desc, align 8
  %stat_desc = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 40, i32 2
  store ptr @static_l_desc, ptr %stat_desc, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %dyn_dtree = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38
  %d_desc = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41
  store ptr %dyn_dtree, ptr %d_desc, align 8
  %stat_desc5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41, i32 2
  store ptr @static_d_desc, ptr %stat_desc5, align 8
  %bl_tree = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39
  %1 = load ptr, ptr %s.addr, align 8
  %bl_desc = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 42
  store ptr %bl_tree, ptr %bl_desc, align 8
  %stat_desc9 = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 42, i32 2
  store ptr @static_bl_desc, ptr %stat_desc9, align 8
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 56
  store i16 0, ptr %bi_buf, align 8
  %2 = load ptr, ptr %s.addr, align 8
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 57
  store i32 0, ptr %bi_valid, align 4
  %bi_used = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 58
  store i32 0, ptr %bi_used, align 8
  call void @init_block(ptr noundef %2)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @tr_static_init() #0 {
entry:
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
  %sym_next = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 50
  store i32 0, ptr %sym_next, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_tr_stored_block(ptr noundef %s, ptr noundef %buf, i64 noundef %stored_len, i32 noundef %last) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %stored_len.addr = alloca i64, align 8
  %last.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %val = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %stored_len, ptr %stored_len.addr, align 8
  store i32 %last, ptr %last.addr, align 4
  store i32 3, ptr %len, align 4
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 57
  %0 = load i32, ptr %bi_valid, align 4
  %cmp = icmp sgt i32 %0, 13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %last.addr, align 4
  store i32 %1, ptr %val, align 4
  %2 = load ptr, ptr %s.addr, align 8
  %bi_valid2 = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 57
  %3 = load i32, ptr %bi_valid2, align 4
  %shl = shl i32 %1, %3
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 56
  %4 = load i16, ptr %bi_buf, align 8
  %5 = trunc i32 %shl to i16
  %conv4 = or i16 %4, %5
  store i16 %conv4, ptr %bi_buf, align 8
  %6 = load ptr, ptr %s.addr, align 8
  %bi_buf5 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 56
  %7 = load i16, ptr %bi_buf5, align 8
  %conv7 = trunc i16 %7 to i8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %pending_buf, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 5
  %9 = load i64, ptr %pending, align 8
  %inc = add i64 %9, 1
  store i64 %inc, ptr %pending, align 8
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 %9
  store i8 %conv7, ptr %arrayidx, align 1
  %10 = load ptr, ptr %s.addr, align 8
  %bi_buf8 = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 56
  %11 = load i16, ptr %bi_buf8, align 8
  %12 = lshr i16 %11, 8
  %conv10 = trunc i16 %12 to i8
  %pending_buf11 = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 2
  %13 = load ptr, ptr %pending_buf11, align 8
  %14 = load ptr, ptr %s.addr, align 8
  %pending12 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 5
  %15 = load i64, ptr %pending12, align 8
  %inc13 = add i64 %15, 1
  store i64 %inc13, ptr %pending12, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %13, i64 %15
  store i8 %conv10, ptr %arrayidx14, align 1
  %16 = load i32, ptr %val, align 4
  %conv16 = and i32 %16, 65535
  %17 = load ptr, ptr %s.addr, align 8
  %bi_valid17 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 57
  %18 = load i32, ptr %bi_valid17, align 4
  %sub18 = sub nsw i32 16, %18
  %shr19 = lshr i32 %conv16, %sub18
  %conv20 = trunc i32 %shr19 to i16
  %bi_buf21 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 56
  store i16 %conv20, ptr %bi_buf21, align 8
  %19 = load i32, ptr %len, align 4
  %sub22 = add nsw i32 %19, -16
  %20 = load ptr, ptr %s.addr, align 8
  %bi_valid23 = getelementptr inbounds %struct.internal_state, ptr %20, i64 0, i32 57
  %21 = load i32, ptr %bi_valid23, align 4
  %add24 = add nsw i32 %21, %sub22
  store i32 %add24, ptr %bi_valid23, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %22 = load i32, ptr %last.addr, align 4
  %23 = load ptr, ptr %s.addr, align 8
  %bi_valid28 = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 57
  %24 = load i32, ptr %bi_valid28, align 4
  %shl29 = shl i32 %22, %24
  %bi_buf30 = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 56
  %25 = load i16, ptr %bi_buf30, align 8
  %26 = trunc i32 %shl29 to i16
  %conv33 = or i16 %25, %26
  store i16 %conv33, ptr %bi_buf30, align 8
  %27 = load i32, ptr %len, align 4
  %28 = load ptr, ptr %s.addr, align 8
  %bi_valid34 = getelementptr inbounds %struct.internal_state, ptr %28, i64 0, i32 57
  %29 = load i32, ptr %bi_valid34, align 4
  %add35 = add nsw i32 %29, %27
  store i32 %add35, ptr %bi_valid34, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %30 = load ptr, ptr %s.addr, align 8
  call void @bi_windup(ptr noundef %30)
  %31 = load i64, ptr %stored_len.addr, align 8
  %conv36 = trunc i64 %31 to i8
  %pending_buf40 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %pending_buf40, align 8
  %pending41 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 5
  %33 = load i64, ptr %pending41, align 8
  %inc42 = add i64 %33, 1
  store i64 %inc42, ptr %pending41, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %32, i64 %33
  store i8 %conv36, ptr %arrayidx43, align 1
  %34 = load i64, ptr %stored_len.addr, align 8
  %conv451 = lshr i64 %34, 8
  %conv47 = trunc i64 %conv451 to i8
  %35 = load ptr, ptr %s.addr, align 8
  %pending_buf48 = getelementptr inbounds %struct.internal_state, ptr %35, i64 0, i32 2
  %36 = load ptr, ptr %pending_buf48, align 8
  %pending49 = getelementptr inbounds %struct.internal_state, ptr %35, i64 0, i32 5
  %37 = load i64, ptr %pending49, align 8
  %inc50 = add i64 %37, 1
  store i64 %inc50, ptr %pending49, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %36, i64 %37
  store i8 %conv47, ptr %arrayidx51, align 1
  %38 = load i64, ptr %stored_len.addr, align 8
  %39 = trunc i64 %38 to i8
  %and54 = xor i8 %39, -1
  %40 = load ptr, ptr %s.addr, align 8
  %pending_buf56 = getelementptr inbounds %struct.internal_state, ptr %40, i64 0, i32 2
  %41 = load ptr, ptr %pending_buf56, align 8
  %pending57 = getelementptr inbounds %struct.internal_state, ptr %40, i64 0, i32 5
  %42 = load i64, ptr %pending57, align 8
  %inc58 = add i64 %42, 1
  store i64 %inc58, ptr %pending57, align 8
  %arrayidx59 = getelementptr inbounds i8, ptr %41, i64 %42
  store i8 %and54, ptr %arrayidx59, align 1
  %43 = load i64, ptr %stored_len.addr, align 8
  %conv612 = lshr i64 %43, 8
  %44 = trunc i64 %conv612 to i8
  %conv64 = xor i8 %44, -1
  %45 = load ptr, ptr %s.addr, align 8
  %pending_buf65 = getelementptr inbounds %struct.internal_state, ptr %45, i64 0, i32 2
  %46 = load ptr, ptr %pending_buf65, align 8
  %pending66 = getelementptr inbounds %struct.internal_state, ptr %45, i64 0, i32 5
  %47 = load i64, ptr %pending66, align 8
  %inc67 = add i64 %47, 1
  store i64 %inc67, ptr %pending66, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %46, i64 %47
  store i8 %conv64, ptr %arrayidx68, align 1
  %48 = load i64, ptr %stored_len.addr, align 8
  %tobool.not = icmp eq i64 %48, 0
  br i1 %tobool.not, label %if.end75, label %if.then69

if.then69:                                        ; preds = %if.end
  %49 = load ptr, ptr %s.addr, align 8
  %pending_buf70 = getelementptr inbounds %struct.internal_state, ptr %49, i64 0, i32 2
  %50 = load ptr, ptr %pending_buf70, align 8
  %pending71 = getelementptr inbounds %struct.internal_state, ptr %49, i64 0, i32 5
  %51 = load i64, ptr %pending71, align 8
  %add.ptr = getelementptr inbounds i8, ptr %50, i64 %51
  %52 = load ptr, ptr %buf.addr, align 8
  %53 = load i64, ptr %stored_len.addr, align 8
  %54 = load ptr, ptr %s.addr, align 8
  %pending_buf72 = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 2
  %55 = load ptr, ptr %pending_buf72, align 8
  %pending73 = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 5
  %56 = load i64, ptr %pending73, align 8
  %add.ptr74 = getelementptr inbounds i8, ptr %55, i64 %56
  %57 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr74, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %add.ptr, ptr noundef %52, i64 noundef %53, i64 noundef %57) #3
  br label %if.end75

if.end75:                                         ; preds = %if.then69, %if.end
  %58 = load i64, ptr %stored_len.addr, align 8
  %59 = load ptr, ptr %s.addr, align 8
  %pending76 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 5
  %60 = load i64, ptr %pending76, align 8
  %add77 = add i64 %60, %58
  store i64 %add77, ptr %pending76, align 8
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
  %4 = load i64, ptr %pending, align 8
  %inc = add i64 %4, 1
  store i64 %inc, ptr %pending, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %4
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
  %10 = load i64, ptr %pending6, align 8
  %inc7 = add i64 %10, 1
  store i64 %inc7, ptr %pending6, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %8, i64 %10
  store i8 %conv4, ptr %arrayidx8, align 1
  br label %if.end19

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %s.addr, align 8
  %bi_valid9 = getelementptr inbounds %struct.internal_state, ptr %11, i64 0, i32 57
  %12 = load i32, ptr %bi_valid9, align 4
  %cmp10 = icmp sgt i32 %12, 0
  br i1 %cmp10, label %if.then12, label %if.end19

if.then12:                                        ; preds = %if.else
  %13 = load ptr, ptr %s.addr, align 8
  %bi_buf13 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 56
  %14 = load i16, ptr %bi_buf13, align 8
  %conv14 = trunc i16 %14 to i8
  %pending_buf15 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %pending_buf15, align 8
  %pending16 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 5
  %16 = load i64, ptr %pending16, align 8
  %inc17 = add i64 %16, 1
  store i64 %inc17, ptr %pending16, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %15, i64 %16
  store i8 %conv14, ptr %arrayidx18, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then12, %if.then
  %17 = load ptr, ptr %s.addr, align 8
  %bi_valid20 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 57
  %18 = load i32, ptr %bi_valid20, align 4
  %sub = add i32 %18, 7
  %and21 = and i32 %sub, 7
  %add = add nuw nsw i32 %and21, 1
  %bi_used = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 58
  store i32 %add, ptr %bi_used, align 8
  %19 = load ptr, ptr %s.addr, align 8
  %bi_buf22 = getelementptr inbounds %struct.internal_state, ptr %19, i64 0, i32 56
  store i16 0, ptr %bi_buf22, align 8
  %bi_valid23 = getelementptr inbounds %struct.internal_state, ptr %19, i64 0, i32 57
  store i32 0, ptr %bi_valid23, align 4
  ret void
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #2

; Function Attrs: nounwind ssp uwtable
define void @_tr_flush_bits(ptr noundef %s) #0 {
entry:
  call void @bi_flush(ptr noundef %s)
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
  %4 = load i64, ptr %pending, align 8
  %inc = add i64 %4, 1
  store i64 %inc, ptr %pending, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %4
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
  %10 = load i64, ptr %pending6, align 8
  %inc7 = add i64 %10, 1
  store i64 %inc7, ptr %pending6, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %8, i64 %10
  store i8 %conv4, ptr %arrayidx8, align 1
  %11 = load ptr, ptr %s.addr, align 8
  %bi_buf9 = getelementptr inbounds %struct.internal_state, ptr %11, i64 0, i32 56
  store i16 0, ptr %bi_buf9, align 8
  %bi_valid10 = getelementptr inbounds %struct.internal_state, ptr %11, i64 0, i32 57
  store i32 0, ptr %bi_valid10, align 4
  br label %if.end26

if.else:                                          ; preds = %entry
  %12 = load ptr, ptr %s.addr, align 8
  %bi_valid11 = getelementptr inbounds %struct.internal_state, ptr %12, i64 0, i32 57
  %13 = load i32, ptr %bi_valid11, align 4
  %cmp12 = icmp sgt i32 %13, 7
  br i1 %cmp12, label %if.then14, label %if.end26

if.then14:                                        ; preds = %if.else
  %14 = load ptr, ptr %s.addr, align 8
  %bi_buf15 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 56
  %15 = load i16, ptr %bi_buf15, align 8
  %conv16 = trunc i16 %15 to i8
  %pending_buf17 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %pending_buf17, align 8
  %pending18 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 5
  %17 = load i64, ptr %pending18, align 8
  %inc19 = add i64 %17, 1
  store i64 %inc19, ptr %pending18, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %16, i64 %17
  store i8 %conv16, ptr %arrayidx20, align 1
  %18 = load ptr, ptr %s.addr, align 8
  %bi_buf21 = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 56
  %19 = load i16, ptr %bi_buf21, align 8
  %20 = lshr i16 %19, 8
  store i16 %20, ptr %bi_buf21, align 8
  %bi_valid25 = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 57
  %21 = load i32, ptr %bi_valid25, align 4
  %sub = add nsw i32 %21, -8
  store i32 %sub, ptr %bi_valid25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then14, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_tr_align(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %val = alloca i32, align 4
  %len32 = alloca i32, align 4
  %val39 = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 3, ptr %len, align 4
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 57
  %0 = load i32, ptr %bi_valid, align 4
  %cmp = icmp sgt i32 %0, 13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 2, ptr %val, align 4
  %1 = load ptr, ptr %s.addr, align 8
  %bi_valid2 = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 57
  %2 = load i32, ptr %bi_valid2, align 4
  %shl = shl i32 2, %2
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 56
  %3 = load i16, ptr %bi_buf, align 8
  %4 = trunc i32 %shl to i16
  %conv4 = or i16 %3, %4
  store i16 %conv4, ptr %bi_buf, align 8
  %5 = load ptr, ptr %s.addr, align 8
  %bi_buf5 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 56
  %6 = load i16, ptr %bi_buf5, align 8
  %conv7 = trunc i16 %6 to i8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %pending_buf, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 5
  %8 = load i64, ptr %pending, align 8
  %inc = add i64 %8, 1
  store i64 %inc, ptr %pending, align 8
  %arrayidx = getelementptr inbounds i8, ptr %7, i64 %8
  store i8 %conv7, ptr %arrayidx, align 1
  %9 = load ptr, ptr %s.addr, align 8
  %bi_buf8 = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 56
  %10 = load i16, ptr %bi_buf8, align 8
  %11 = lshr i16 %10, 8
  %conv10 = trunc i16 %11 to i8
  %pending_buf11 = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 2
  %12 = load ptr, ptr %pending_buf11, align 8
  %13 = load ptr, ptr %s.addr, align 8
  %pending12 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 5
  %14 = load i64, ptr %pending12, align 8
  %inc13 = add i64 %14, 1
  store i64 %inc13, ptr %pending12, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %12, i64 %14
  store i8 %conv10, ptr %arrayidx14, align 1
  %15 = load i32, ptr %val, align 4
  %conv16 = and i32 %15, 65535
  %16 = load ptr, ptr %s.addr, align 8
  %bi_valid17 = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 57
  %17 = load i32, ptr %bi_valid17, align 4
  %sub18 = sub nsw i32 16, %17
  %shr19 = lshr i32 %conv16, %sub18
  %conv20 = trunc i32 %shr19 to i16
  %bi_buf21 = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 56
  store i16 %conv20, ptr %bi_buf21, align 8
  %18 = load i32, ptr %len, align 4
  %sub22 = add nsw i32 %18, -16
  %19 = load ptr, ptr %s.addr, align 8
  %bi_valid23 = getelementptr inbounds %struct.internal_state, ptr %19, i64 0, i32 57
  %20 = load i32, ptr %bi_valid23, align 4
  %add = add nsw i32 %20, %sub22
  store i32 %add, ptr %bi_valid23, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %21 = load ptr, ptr %s.addr, align 8
  %bi_valid24 = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 57
  %22 = load i32, ptr %bi_valid24, align 4
  %shl25 = shl i32 2, %22
  %bi_buf26 = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 56
  %23 = load i16, ptr %bi_buf26, align 8
  %24 = trunc i32 %shl25 to i16
  %conv29 = or i16 %23, %24
  store i16 %conv29, ptr %bi_buf26, align 8
  %25 = load i32, ptr %len, align 4
  %26 = load ptr, ptr %s.addr, align 8
  %bi_valid30 = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 57
  %27 = load i32, ptr %bi_valid30, align 4
  %add31 = add nsw i32 %27, %25
  store i32 %add31, ptr %bi_valid30, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 7, ptr %len32, align 4
  %28 = load ptr, ptr %s.addr, align 8
  %bi_valid34 = getelementptr inbounds %struct.internal_state, ptr %28, i64 0, i32 57
  %29 = load i32, ptr %bi_valid34, align 4
  %cmp36 = icmp sgt i32 %29, 9
  br i1 %cmp36, label %if.then38, label %if.else75

if.then38:                                        ; preds = %if.end
  store i32 0, ptr %val39, align 4
  %30 = load ptr, ptr %s.addr, align 8
  %bi_buf49 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 56
  %31 = load i16, ptr %bi_buf49, align 8
  %conv52 = trunc i16 %31 to i8
  %pending_buf53 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %pending_buf53, align 8
  %pending54 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 5
  %33 = load i64, ptr %pending54, align 8
  %inc55 = add i64 %33, 1
  store i64 %inc55, ptr %pending54, align 8
  %arrayidx56 = getelementptr inbounds i8, ptr %32, i64 %33
  store i8 %conv52, ptr %arrayidx56, align 1
  %34 = load ptr, ptr %s.addr, align 8
  %bi_buf57 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 56
  %35 = load i16, ptr %bi_buf57, align 8
  %36 = lshr i16 %35, 8
  %conv60 = trunc i16 %36 to i8
  %pending_buf61 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 2
  %37 = load ptr, ptr %pending_buf61, align 8
  %38 = load ptr, ptr %s.addr, align 8
  %pending62 = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 5
  %39 = load i64, ptr %pending62, align 8
  %inc63 = add i64 %39, 1
  store i64 %inc63, ptr %pending62, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %37, i64 %39
  store i8 %conv60, ptr %arrayidx64, align 1
  %40 = load i32, ptr %val39, align 4
  %conv66 = and i32 %40, 65535
  %41 = load ptr, ptr %s.addr, align 8
  %bi_valid67 = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 57
  %42 = load i32, ptr %bi_valid67, align 4
  %sub68 = sub nsw i32 16, %42
  %shr69 = lshr i32 %conv66, %sub68
  %conv70 = trunc i32 %shr69 to i16
  %bi_buf71 = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 56
  store i16 %conv70, ptr %bi_buf71, align 8
  %43 = load i32, ptr %len32, align 4
  %sub72 = add nsw i32 %43, -16
  %44 = load ptr, ptr %s.addr, align 8
  %bi_valid73 = getelementptr inbounds %struct.internal_state, ptr %44, i64 0, i32 57
  %45 = load i32, ptr %bi_valid73, align 4
  %add74 = add nsw i32 %45, %sub72
  store i32 %add74, ptr %bi_valid73, align 4
  br label %if.end85

if.else75:                                        ; preds = %if.end
  %46 = load i32, ptr %len32, align 4
  %47 = load ptr, ptr %s.addr, align 8
  %bi_valid83 = getelementptr inbounds %struct.internal_state, ptr %47, i64 0, i32 57
  %48 = load i32, ptr %bi_valid83, align 4
  %add84 = add nsw i32 %48, %46
  store i32 %add84, ptr %bi_valid83, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.else75, %if.then38
  %49 = load ptr, ptr %s.addr, align 8
  call void @bi_flush(ptr noundef %49)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_tr_flush_block(ptr noundef %s, ptr noundef %buf, i64 noundef %stored_len, i32 noundef %last) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %stored_len.addr = alloca i64, align 8
  %last.addr = alloca i32, align 4
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
  store i32 %last, ptr %last.addr, align 4
  store i32 0, ptr %max_blindex, align 4
  %level = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 33
  %0 = load i32, ptr %level, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %data_type = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 11
  %3 = load i32, ptr %data_type, align 8
  %cmp1 = icmp eq i32 %3, 2
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %s.addr, align 8
  %call = call i32 @detect_data_type(ptr noundef %4)
  %5 = load ptr, ptr %4, align 8
  %data_type4 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 11
  store i32 %call, ptr %data_type4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %6 = load ptr, ptr %s.addr, align 8
  %l_desc = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 40
  call void @build_tree(ptr noundef %6, ptr noundef nonnull %l_desc)
  %d_desc = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 41
  call void @build_tree(ptr noundef %6, ptr noundef nonnull %d_desc)
  %call5 = call i32 @build_bl_tree(ptr noundef %6)
  store i32 %call5, ptr %max_blindex, align 4
  %7 = load ptr, ptr %s.addr, align 8
  %opt_len = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 52
  %8 = load i64, ptr %opt_len, align 8
  %add6 = add i64 %8, 10
  %shr = lshr i64 %add6, 3
  store i64 %shr, ptr %opt_lenb, align 8
  %static_len = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 53
  %9 = load i64, ptr %static_len, align 8
  %add8 = add i64 %9, 10
  %shr9 = lshr i64 %add8, 3
  store i64 %shr9, ptr %static_lenb, align 8
  %cmp10.not = icmp ugt i64 %shr9, %shr
  br i1 %cmp10.not, label %lor.lhs.false, label %if.then12

lor.lhs.false:                                    ; preds = %if.end
  %10 = load ptr, ptr %s.addr, align 8
  %strategy = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 34
  %11 = load i32, ptr %strategy, align 8
  %cmp11 = icmp eq i32 %11, 4
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %lor.lhs.false, %if.end
  %12 = load i64, ptr %static_lenb, align 8
  store i64 %12, ptr %opt_lenb, align 8
  br label %if.end15

if.else:                                          ; preds = %entry
  %13 = load i64, ptr %stored_len.addr, align 8
  %add14 = add i64 %13, 5
  store i64 %add14, ptr %static_lenb, align 8
  store i64 %add14, ptr %opt_lenb, align 8
  br label %if.end15

if.end15:                                         ; preds = %lor.lhs.false, %if.then12, %if.else
  %14 = load i64, ptr %stored_len.addr, align 8
  %add16 = add i64 %14, 4
  %15 = load i64, ptr %opt_lenb, align 8
  %cmp17.not = icmp ugt i64 %add16, %15
  %16 = load ptr, ptr %buf.addr, align 8
  %cmp18.not = icmp eq ptr %16, null
  %or.cond = select i1 %cmp17.not, i1 true, i1 %cmp18.not
  br i1 %or.cond, label %if.else20, label %if.then19

if.then19:                                        ; preds = %if.end15
  %17 = load ptr, ptr %s.addr, align 8
  %18 = load ptr, ptr %buf.addr, align 8
  %19 = load i64, ptr %stored_len.addr, align 8
  %20 = load i32, ptr %last.addr, align 4
  call void @_tr_stored_block(ptr noundef %17, ptr noundef %18, i64 noundef %19, i32 noundef %20)
  br label %if.end128

if.else20:                                        ; preds = %if.end15
  %21 = load i64, ptr %static_lenb, align 8
  %22 = load i64, ptr %opt_lenb, align 8
  %cmp21 = icmp eq i64 %21, %22
  br i1 %cmp21, label %if.then22, label %if.else64

if.then22:                                        ; preds = %if.else20
  store i32 3, ptr %len, align 4
  %23 = load ptr, ptr %s.addr, align 8
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 57
  %24 = load i32, ptr %bi_valid, align 4
  %cmp23 = icmp sgt i32 %24, 13
  br i1 %cmp23, label %if.then24, label %if.else51

if.then24:                                        ; preds = %if.then22
  %25 = load i32, ptr %last.addr, align 4
  %add25 = add nsw i32 %25, 2
  store i32 %add25, ptr %val, align 4
  %26 = load ptr, ptr %s.addr, align 8
  %bi_valid27 = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 57
  %27 = load i32, ptr %bi_valid27, align 4
  %shl = shl i32 %add25, %27
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 56
  %28 = load i16, ptr %bi_buf, align 8
  %29 = trunc i32 %shl to i16
  %conv29 = or i16 %28, %29
  store i16 %conv29, ptr %bi_buf, align 8
  %30 = load ptr, ptr %s.addr, align 8
  %bi_buf30 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 56
  %31 = load i16, ptr %bi_buf30, align 8
  %conv32 = trunc i16 %31 to i8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %pending_buf, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 5
  %33 = load i64, ptr %pending, align 8
  %inc = add i64 %33, 1
  store i64 %inc, ptr %pending, align 8
  %arrayidx = getelementptr inbounds i8, ptr %32, i64 %33
  store i8 %conv32, ptr %arrayidx, align 1
  %34 = load ptr, ptr %s.addr, align 8
  %bi_buf33 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 56
  %35 = load i16, ptr %bi_buf33, align 8
  %36 = lshr i16 %35, 8
  %conv36 = trunc i16 %36 to i8
  %pending_buf37 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 2
  %37 = load ptr, ptr %pending_buf37, align 8
  %38 = load ptr, ptr %s.addr, align 8
  %pending38 = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 5
  %39 = load i64, ptr %pending38, align 8
  %inc39 = add i64 %39, 1
  store i64 %inc39, ptr %pending38, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %37, i64 %39
  store i8 %conv36, ptr %arrayidx40, align 1
  %40 = load i32, ptr %val, align 4
  %conv42 = and i32 %40, 65535
  %41 = load ptr, ptr %s.addr, align 8
  %bi_valid43 = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 57
  %42 = load i32, ptr %bi_valid43, align 4
  %sub44 = sub nsw i32 16, %42
  %shr45 = lshr i32 %conv42, %sub44
  %conv46 = trunc i32 %shr45 to i16
  %bi_buf47 = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 56
  store i16 %conv46, ptr %bi_buf47, align 8
  %43 = load i32, ptr %len, align 4
  %sub48 = add nsw i32 %43, -16
  %44 = load ptr, ptr %s.addr, align 8
  %bi_valid49 = getelementptr inbounds %struct.internal_state, ptr %44, i64 0, i32 57
  %45 = load i32, ptr %bi_valid49, align 4
  %add50 = add nsw i32 %45, %sub48
  store i32 %add50, ptr %bi_valid49, align 4
  br label %if.end63

if.else51:                                        ; preds = %if.then22
  %46 = load i32, ptr %last.addr, align 4
  %conv53 = add i32 %46, 2
  %47 = load ptr, ptr %s.addr, align 8
  %bi_valid55 = getelementptr inbounds %struct.internal_state, ptr %47, i64 0, i32 57
  %48 = load i32, ptr %bi_valid55, align 4
  %shl56 = shl i32 %conv53, %48
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

if.end63:                                         ; preds = %if.else51, %if.then24
  %54 = load ptr, ptr %s.addr, align 8
  call void @compress_block(ptr noundef %54, ptr noundef nonnull @static_ltree, ptr noundef nonnull @static_dtree)
  br label %if.end128

if.else64:                                        ; preds = %if.else20
  store i32 3, ptr %len65, align 4
  %55 = load ptr, ptr %s.addr, align 8
  %bi_valid66 = getelementptr inbounds %struct.internal_state, ptr %55, i64 0, i32 57
  %56 = load i32, ptr %bi_valid66, align 4
  %cmp68 = icmp sgt i32 %56, 13
  br i1 %cmp68, label %if.then70, label %if.else107

if.then70:                                        ; preds = %if.else64
  %57 = load i32, ptr %last.addr, align 4
  %add72 = add nsw i32 %57, 4
  store i32 %add72, ptr %val71, align 4
  %58 = load ptr, ptr %s.addr, align 8
  %bi_valid75 = getelementptr inbounds %struct.internal_state, ptr %58, i64 0, i32 57
  %59 = load i32, ptr %bi_valid75, align 4
  %shl76 = shl i32 %add72, %59
  %bi_buf77 = getelementptr inbounds %struct.internal_state, ptr %58, i64 0, i32 56
  %60 = load i16, ptr %bi_buf77, align 8
  %61 = trunc i32 %shl76 to i16
  %conv80 = or i16 %60, %61
  store i16 %conv80, ptr %bi_buf77, align 8
  %62 = load ptr, ptr %s.addr, align 8
  %bi_buf81 = getelementptr inbounds %struct.internal_state, ptr %62, i64 0, i32 56
  %63 = load i16, ptr %bi_buf81, align 8
  %conv84 = trunc i16 %63 to i8
  %pending_buf85 = getelementptr inbounds %struct.internal_state, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %pending_buf85, align 8
  %pending86 = getelementptr inbounds %struct.internal_state, ptr %62, i64 0, i32 5
  %65 = load i64, ptr %pending86, align 8
  %inc87 = add i64 %65, 1
  store i64 %inc87, ptr %pending86, align 8
  %arrayidx88 = getelementptr inbounds i8, ptr %64, i64 %65
  store i8 %conv84, ptr %arrayidx88, align 1
  %66 = load ptr, ptr %s.addr, align 8
  %bi_buf89 = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 56
  %67 = load i16, ptr %bi_buf89, align 8
  %68 = lshr i16 %67, 8
  %conv92 = trunc i16 %68 to i8
  %pending_buf93 = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 2
  %69 = load ptr, ptr %pending_buf93, align 8
  %70 = load ptr, ptr %s.addr, align 8
  %pending94 = getelementptr inbounds %struct.internal_state, ptr %70, i64 0, i32 5
  %71 = load i64, ptr %pending94, align 8
  %inc95 = add i64 %71, 1
  store i64 %inc95, ptr %pending94, align 8
  %arrayidx96 = getelementptr inbounds i8, ptr %69, i64 %71
  store i8 %conv92, ptr %arrayidx96, align 1
  %72 = load i32, ptr %val71, align 4
  %conv98 = and i32 %72, 65535
  %73 = load ptr, ptr %s.addr, align 8
  %bi_valid99 = getelementptr inbounds %struct.internal_state, ptr %73, i64 0, i32 57
  %74 = load i32, ptr %bi_valid99, align 4
  %sub100 = sub nsw i32 16, %74
  %shr101 = lshr i32 %conv98, %sub100
  %conv102 = trunc i32 %shr101 to i16
  %bi_buf103 = getelementptr inbounds %struct.internal_state, ptr %73, i64 0, i32 56
  store i16 %conv102, ptr %bi_buf103, align 8
  %75 = load i32, ptr %len65, align 4
  %sub104 = add nsw i32 %75, -16
  %76 = load ptr, ptr %s.addr, align 8
  %bi_valid105 = getelementptr inbounds %struct.internal_state, ptr %76, i64 0, i32 57
  %77 = load i32, ptr %bi_valid105, align 4
  %add106 = add nsw i32 %77, %sub104
  store i32 %add106, ptr %bi_valid105, align 4
  br label %if.end119

if.else107:                                       ; preds = %if.else64
  %78 = load i32, ptr %last.addr, align 4
  %conv109 = add i32 %78, 4
  %79 = load ptr, ptr %s.addr, align 8
  %bi_valid111 = getelementptr inbounds %struct.internal_state, ptr %79, i64 0, i32 57
  %80 = load i32, ptr %bi_valid111, align 4
  %shl112 = shl i32 %conv109, %80
  %bi_buf113 = getelementptr inbounds %struct.internal_state, ptr %79, i64 0, i32 56
  %81 = load i16, ptr %bi_buf113, align 8
  %82 = trunc i32 %shl112 to i16
  %conv116 = or i16 %81, %82
  store i16 %conv116, ptr %bi_buf113, align 8
  %83 = load i32, ptr %len65, align 4
  %84 = load ptr, ptr %s.addr, align 8
  %bi_valid117 = getelementptr inbounds %struct.internal_state, ptr %84, i64 0, i32 57
  %85 = load i32, ptr %bi_valid117, align 4
  %add118 = add nsw i32 %85, %83
  store i32 %add118, ptr %bi_valid117, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.else107, %if.then70
  %86 = load ptr, ptr %s.addr, align 8
  %max_code = getelementptr inbounds %struct.internal_state, ptr %86, i64 0, i32 40, i32 1
  %87 = load i32, ptr %max_code, align 8
  %add121 = add nsw i32 %87, 1
  %max_code123 = getelementptr inbounds %struct.internal_state, ptr %86, i64 0, i32 41, i32 1
  %88 = load i32, ptr %max_code123, align 8
  %add124 = add nsw i32 %88, 1
  %89 = load i32, ptr %max_blindex, align 4
  %add125 = add nsw i32 %89, 1
  call void @send_all_trees(ptr noundef %86, i32 noundef %add121, i32 noundef %add124, i32 noundef %add125)
  %90 = load ptr, ptr %s.addr, align 8
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %90, i64 0, i32 37
  %dyn_dtree = getelementptr inbounds %struct.internal_state, ptr %90, i64 0, i32 38
  call void @compress_block(ptr noundef %90, ptr noundef nonnull %dyn_ltree, ptr noundef nonnull %dyn_dtree)
  br label %if.end128

if.end128:                                        ; preds = %if.end63, %if.end119, %if.then19
  %91 = load ptr, ptr %s.addr, align 8
  call void @init_block(ptr noundef %91)
  %92 = load i32, ptr %last.addr, align 4
  %tobool.not = icmp eq i32 %92, 0
  br i1 %tobool.not, label %if.end130, label %if.then129

if.then129:                                       ; preds = %if.end128
  %93 = load ptr, ptr %s.addr, align 8
  call void @bi_windup(ptr noundef %93)
  br label %if.end130

if.end130:                                        ; preds = %if.then129, %if.end128
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @detect_data_type(ptr noundef %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %block_mask = alloca i64, align 8
  %n = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i64 4093624447, ptr %block_mask, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %0, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %block_mask, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %2 = load ptr, ptr %s.addr, align 8
  %3 = load i32, ptr %n, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 37, i64 %idxprom
  %4 = load i16, ptr %arrayidx, align 4
  %cmp1.not = icmp eq i16 %4, 0
  br i1 %cmp1.not, label %for.inc, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %5 = load i32, ptr %n, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %n, align 4
  %6 = load i64, ptr %block_mask, align 8
  %shr = lshr i64 %6, 1
  store i64 %shr, ptr %block_mask, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %s.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 37, i64 9
  %8 = load i16, ptr %arrayidx4, align 4
  %cmp7.not = icmp eq i16 %8, 0
  br i1 %cmp7.not, label %lor.lhs.false, label %if.then22

lor.lhs.false:                                    ; preds = %for.end
  %9 = load ptr, ptr %s.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 37, i64 10
  %10 = load i16, ptr %arrayidx10, align 4
  %cmp13.not = icmp eq i16 %10, 0
  br i1 %cmp13.not, label %lor.lhs.false15, label %if.then22

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %11 = load ptr, ptr %s.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct.internal_state, ptr %11, i64 0, i32 37, i64 13
  %12 = load i16, ptr %arrayidx17, align 4
  %cmp20.not = icmp eq i16 %12, 0
  br i1 %cmp20.not, label %for.cond24, label %if.then22

if.then22:                                        ; preds = %lor.lhs.false15, %lor.lhs.false, %for.end
  store i32 1, ptr %retval, align 4
  br label %return

for.cond24:                                       ; preds = %lor.lhs.false15, %for.inc37
  %storemerge = phi i32 [ %inc38, %for.inc37 ], [ 32, %lor.lhs.false15 ]
  store i32 %storemerge, ptr %n, align 4
  %cmp25 = icmp slt i32 %storemerge, 256
  br i1 %cmp25, label %for.body27, label %for.end39

for.body27:                                       ; preds = %for.cond24
  %13 = load ptr, ptr %s.addr, align 8
  %14 = load i32, ptr %n, align 4
  %idxprom29 = sext i32 %14 to i64
  %arrayidx30 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 37, i64 %idxprom29
  %15 = load i16, ptr %arrayidx30, align 4
  %cmp33.not = icmp eq i16 %15, 0
  br i1 %cmp33.not, label %for.inc37, label %if.then35

if.then35:                                        ; preds = %for.body27
  store i32 1, ptr %retval, align 4
  br label %return

for.inc37:                                        ; preds = %for.body27
  %16 = load i32, ptr %n, align 4
  %inc38 = add nsw i32 %16, 1
  br label %for.cond24, !llvm.loop !11

for.end39:                                        ; preds = %for.cond24
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end39, %if.then35, %if.then22, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
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
  br label %for.cond, !llvm.loop !12

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
  br label %while.cond, !llvm.loop !13

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
  br label %for.cond38, !llvm.loop !14

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
  br i1 %cmp116, label %do.body, label %do.end, !llvm.loop !15

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
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.body, %for.cond
  %8 = load i32, ptr %max_blindex, align 4
  %conv7 = sext i32 %8 to i64
  %9 = mul nsw i64 %conv7, 3
  %add10 = add nsw i64 %9, 17
  %10 = load ptr, ptr %s.addr, align 8
  %opt_len = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 52
  %11 = load i64, ptr %opt_len, align 8
  %add11 = add i64 %11, %add10
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
  %sx = alloca i32, align 4
  %code = alloca i32, align 4
  %extra = alloca i32, align 4
  %len = alloca i32, align 4
  %val = alloca i32, align 4
  %len69 = alloca i32, align 4
  %val81 = alloca i32, align 4
  %len146 = alloca i32, align 4
  %val152 = alloca i32, align 4
  %len210 = alloca i32, align 4
  %val220 = alloca i32, align 4
  %len281 = alloca i32, align 4
  %val287 = alloca i32, align 4
  %len340 = alloca i32, align 4
  %val349 = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store ptr %ltree, ptr %ltree.addr, align 8
  store ptr %dtree, ptr %dtree.addr, align 8
  store i32 0, ptr %sx, align 4
  %sym_next = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 50
  %0 = load i32, ptr %sym_next, align 4
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end339, label %do.body

do.body:                                          ; preds = %entry, %do.cond
  %1 = load ptr, ptr %s.addr, align 8
  %sym_buf = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 48
  %2 = load ptr, ptr %sym_buf, align 8
  %3 = load i32, ptr %sx, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %sx, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  store i32 %conv, ptr %dist, align 4
  %5 = load ptr, ptr %s.addr, align 8
  %sym_buf1 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 48
  %6 = load ptr, ptr %sym_buf1, align 8
  %7 = load i32, ptr %sx, align 4
  %inc2 = add i32 %7, 1
  store i32 %inc2, ptr %sx, align 4
  %idxprom3 = zext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %6, i64 %idxprom3
  %8 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv5, 8
  %9 = load i32, ptr %dist, align 4
  %add = add i32 %9, %shl
  store i32 %add, ptr %dist, align 4
  %10 = load ptr, ptr %s.addr, align 8
  %sym_buf7 = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 48
  %11 = load ptr, ptr %sym_buf7, align 8
  %12 = load i32, ptr %sx, align 4
  %inc8 = add i32 %12, 1
  store i32 %inc8, ptr %sx, align 4
  %idxprom9 = zext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %11, i64 %idxprom9
  %13 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %13 to i32
  store i32 %conv11, ptr %lc, align 4
  %14 = load i32, ptr %dist, align 4
  %cmp12 = icmp eq i32 %14, 0
  br i1 %cmp12, label %if.then14, label %if.else65

if.then14:                                        ; preds = %do.body
  %15 = load ptr, ptr %ltree.addr, align 8
  %16 = load i32, ptr %lc, align 4
  %idxprom15 = sext i32 %16 to i64
  %dl = getelementptr inbounds %struct.ct_data_s, ptr %15, i64 %idxprom15, i32 1
  %17 = load i16, ptr %dl, align 2
  %conv17 = zext i16 %17 to i32
  store i32 %conv17, ptr %len, align 4
  %18 = load ptr, ptr %s.addr, align 8
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 57
  %19 = load i32, ptr %bi_valid, align 4
  %sub = sub nsw i32 16, %conv17
  %cmp18 = icmp sgt i32 %19, %sub
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then14
  %20 = load ptr, ptr %ltree.addr, align 8
  %21 = load i32, ptr %lc, align 4
  %idxprom21 = sext i32 %21 to i64
  %arrayidx22 = getelementptr inbounds %struct.ct_data_s, ptr %20, i64 %idxprom21
  %22 = load i16, ptr %arrayidx22, align 2
  %conv23 = zext i16 %22 to i32
  store i32 %conv23, ptr %val, align 4
  %conv25 = zext i16 %22 to i32
  %23 = load ptr, ptr %s.addr, align 8
  %bi_valid26 = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 57
  %24 = load i32, ptr %bi_valid26, align 4
  %shl27 = shl i32 %conv25, %24
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 56
  %25 = load i16, ptr %bi_buf, align 8
  %26 = trunc i32 %shl27 to i16
  %conv29 = or i16 %25, %26
  store i16 %conv29, ptr %bi_buf, align 8
  %27 = load ptr, ptr %s.addr, align 8
  %bi_buf30 = getelementptr inbounds %struct.internal_state, ptr %27, i64 0, i32 56
  %28 = load i16, ptr %bi_buf30, align 8
  %conv33 = trunc i16 %28 to i8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %pending_buf, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %27, i64 0, i32 5
  %30 = load i64, ptr %pending, align 8
  %inc34 = add i64 %30, 1
  store i64 %inc34, ptr %pending, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %29, i64 %30
  store i8 %conv33, ptr %arrayidx35, align 1
  %31 = load ptr, ptr %s.addr, align 8
  %bi_buf36 = getelementptr inbounds %struct.internal_state, ptr %31, i64 0, i32 56
  %32 = load i16, ptr %bi_buf36, align 8
  %33 = lshr i16 %32, 8
  %conv38 = trunc i16 %33 to i8
  %pending_buf39 = getelementptr inbounds %struct.internal_state, ptr %31, i64 0, i32 2
  %34 = load ptr, ptr %pending_buf39, align 8
  %35 = load ptr, ptr %s.addr, align 8
  %pending40 = getelementptr inbounds %struct.internal_state, ptr %35, i64 0, i32 5
  %36 = load i64, ptr %pending40, align 8
  %inc41 = add i64 %36, 1
  store i64 %inc41, ptr %pending40, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %34, i64 %36
  store i8 %conv38, ptr %arrayidx42, align 1
  %37 = load i32, ptr %val, align 4
  %conv44 = and i32 %37, 65535
  %38 = load ptr, ptr %s.addr, align 8
  %bi_valid45 = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 57
  %39 = load i32, ptr %bi_valid45, align 4
  %sub46 = sub nsw i32 16, %39
  %shr47 = lshr i32 %conv44, %sub46
  %conv48 = trunc i32 %shr47 to i16
  %bi_buf49 = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 56
  store i16 %conv48, ptr %bi_buf49, align 8
  %40 = load i32, ptr %len, align 4
  %sub50 = add nsw i32 %40, -16
  %41 = load ptr, ptr %s.addr, align 8
  %bi_valid51 = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 57
  %42 = load i32, ptr %bi_valid51, align 4
  %add52 = add nsw i32 %42, %sub50
  store i32 %add52, ptr %bi_valid51, align 4
  br label %do.cond

if.else:                                          ; preds = %if.then14
  %43 = load ptr, ptr %ltree.addr, align 8
  %44 = load i32, ptr %lc, align 4
  %idxprom53 = sext i32 %44 to i64
  %arrayidx54 = getelementptr inbounds %struct.ct_data_s, ptr %43, i64 %idxprom53
  %45 = load i16, ptr %arrayidx54, align 2
  %conv56 = zext i16 %45 to i32
  %46 = load ptr, ptr %s.addr, align 8
  %bi_valid57 = getelementptr inbounds %struct.internal_state, ptr %46, i64 0, i32 57
  %47 = load i32, ptr %bi_valid57, align 4
  %shl58 = shl i32 %conv56, %47
  %bi_buf59 = getelementptr inbounds %struct.internal_state, ptr %46, i64 0, i32 56
  %48 = load i16, ptr %bi_buf59, align 8
  %49 = trunc i32 %shl58 to i16
  %conv62 = or i16 %48, %49
  store i16 %conv62, ptr %bi_buf59, align 8
  %50 = load i32, ptr %len, align 4
  %51 = load ptr, ptr %s.addr, align 8
  %bi_valid63 = getelementptr inbounds %struct.internal_state, ptr %51, i64 0, i32 57
  %52 = load i32, ptr %bi_valid63, align 4
  %add64 = add nsw i32 %52, %50
  store i32 %add64, ptr %bi_valid63, align 4
  br label %do.cond

if.else65:                                        ; preds = %do.body
  %53 = load i32, ptr %lc, align 4
  %idxprom66 = sext i32 %53 to i64
  %arrayidx67 = getelementptr inbounds [256 x i8], ptr @_length_code, i64 0, i64 %idxprom66
  %54 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %54 to i32
  store i32 %conv68, ptr %code, align 4
  %55 = load ptr, ptr %ltree.addr, align 8
  %add71 = add nuw nsw i32 %conv68, 257
  %idxprom72 = zext i32 %add71 to i64
  %dl74 = getelementptr inbounds %struct.ct_data_s, ptr %55, i64 %idxprom72, i32 1
  %56 = load i16, ptr %dl74, align 2
  %conv75 = zext i16 %56 to i32
  store i32 %conv75, ptr %len69, align 4
  %57 = load ptr, ptr %s.addr, align 8
  %bi_valid76 = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 57
  %58 = load i32, ptr %bi_valid76, align 4
  %sub77 = sub nsw i32 16, %conv75
  %cmp78 = icmp sgt i32 %58, %sub77
  br i1 %cmp78, label %if.then80, label %if.else122

if.then80:                                        ; preds = %if.else65
  %59 = load ptr, ptr %ltree.addr, align 8
  %60 = load i32, ptr %code, align 4
  %add83 = add i32 %60, 257
  %idxprom84 = zext i32 %add83 to i64
  %arrayidx85 = getelementptr inbounds %struct.ct_data_s, ptr %59, i64 %idxprom84
  %61 = load i16, ptr %arrayidx85, align 2
  %conv87 = zext i16 %61 to i32
  store i32 %conv87, ptr %val81, align 4
  %conv89 = zext i16 %61 to i32
  %62 = load ptr, ptr %s.addr, align 8
  %bi_valid90 = getelementptr inbounds %struct.internal_state, ptr %62, i64 0, i32 57
  %63 = load i32, ptr %bi_valid90, align 4
  %shl91 = shl i32 %conv89, %63
  %bi_buf92 = getelementptr inbounds %struct.internal_state, ptr %62, i64 0, i32 56
  %64 = load i16, ptr %bi_buf92, align 8
  %65 = trunc i32 %shl91 to i16
  %conv95 = or i16 %64, %65
  store i16 %conv95, ptr %bi_buf92, align 8
  %66 = load ptr, ptr %s.addr, align 8
  %bi_buf96 = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 56
  %67 = load i16, ptr %bi_buf96, align 8
  %conv99 = trunc i16 %67 to i8
  %pending_buf100 = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 2
  %68 = load ptr, ptr %pending_buf100, align 8
  %pending101 = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 5
  %69 = load i64, ptr %pending101, align 8
  %inc102 = add i64 %69, 1
  store i64 %inc102, ptr %pending101, align 8
  %arrayidx103 = getelementptr inbounds i8, ptr %68, i64 %69
  store i8 %conv99, ptr %arrayidx103, align 1
  %70 = load ptr, ptr %s.addr, align 8
  %bi_buf104 = getelementptr inbounds %struct.internal_state, ptr %70, i64 0, i32 56
  %71 = load i16, ptr %bi_buf104, align 8
  %72 = lshr i16 %71, 8
  %conv107 = trunc i16 %72 to i8
  %pending_buf108 = getelementptr inbounds %struct.internal_state, ptr %70, i64 0, i32 2
  %73 = load ptr, ptr %pending_buf108, align 8
  %74 = load ptr, ptr %s.addr, align 8
  %pending109 = getelementptr inbounds %struct.internal_state, ptr %74, i64 0, i32 5
  %75 = load i64, ptr %pending109, align 8
  %inc110 = add i64 %75, 1
  store i64 %inc110, ptr %pending109, align 8
  %arrayidx111 = getelementptr inbounds i8, ptr %73, i64 %75
  store i8 %conv107, ptr %arrayidx111, align 1
  %76 = load i32, ptr %val81, align 4
  %conv113 = and i32 %76, 65535
  %77 = load ptr, ptr %s.addr, align 8
  %bi_valid114 = getelementptr inbounds %struct.internal_state, ptr %77, i64 0, i32 57
  %78 = load i32, ptr %bi_valid114, align 4
  %sub115 = sub nsw i32 16, %78
  %shr116 = lshr i32 %conv113, %sub115
  %conv117 = trunc i32 %shr116 to i16
  %bi_buf118 = getelementptr inbounds %struct.internal_state, ptr %77, i64 0, i32 56
  store i16 %conv117, ptr %bi_buf118, align 8
  %79 = load i32, ptr %len69, align 4
  %sub119 = add nsw i32 %79, -16
  %80 = load ptr, ptr %s.addr, align 8
  %bi_valid120 = getelementptr inbounds %struct.internal_state, ptr %80, i64 0, i32 57
  %81 = load i32, ptr %bi_valid120, align 4
  %add121 = add nsw i32 %81, %sub119
  store i32 %add121, ptr %bi_valid120, align 4
  br label %if.end137

if.else122:                                       ; preds = %if.else65
  %82 = load ptr, ptr %ltree.addr, align 8
  %83 = load i32, ptr %code, align 4
  %add124 = add i32 %83, 257
  %idxprom125 = zext i32 %add124 to i64
  %arrayidx126 = getelementptr inbounds %struct.ct_data_s, ptr %82, i64 %idxprom125
  %84 = load i16, ptr %arrayidx126, align 2
  %conv128 = zext i16 %84 to i32
  %85 = load ptr, ptr %s.addr, align 8
  %bi_valid129 = getelementptr inbounds %struct.internal_state, ptr %85, i64 0, i32 57
  %86 = load i32, ptr %bi_valid129, align 4
  %shl130 = shl i32 %conv128, %86
  %bi_buf131 = getelementptr inbounds %struct.internal_state, ptr %85, i64 0, i32 56
  %87 = load i16, ptr %bi_buf131, align 8
  %88 = trunc i32 %shl130 to i16
  %conv134 = or i16 %87, %88
  store i16 %conv134, ptr %bi_buf131, align 8
  %89 = load i32, ptr %len69, align 4
  %90 = load ptr, ptr %s.addr, align 8
  %bi_valid135 = getelementptr inbounds %struct.internal_state, ptr %90, i64 0, i32 57
  %91 = load i32, ptr %bi_valid135, align 4
  %add136 = add nsw i32 %91, %89
  store i32 %add136, ptr %bi_valid135, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.else122, %if.then80
  %92 = load i32, ptr %code, align 4
  %idxprom138 = zext i32 %92 to i64
  %arrayidx139 = getelementptr inbounds [29 x i32], ptr @extra_lbits, i64 0, i64 %idxprom138
  %93 = load i32, ptr %arrayidx139, align 4
  store i32 %93, ptr %extra, align 4
  %94 = add nsw i64 %idxprom138, -28
  %cmp140.not = icmp ult i64 %94, -20
  br i1 %cmp140.not, label %if.end199, label %if.then142

if.then142:                                       ; preds = %if.end137
  %95 = load i32, ptr %code, align 4
  %idxprom143 = zext i32 %95 to i64
  %arrayidx144 = getelementptr inbounds [29 x i32], ptr @base_length, i64 0, i64 %idxprom143
  %96 = load i32, ptr %arrayidx144, align 4
  %97 = load i32, ptr %lc, align 4
  %sub145 = sub nsw i32 %97, %96
  store i32 %sub145, ptr %lc, align 4
  %98 = load i32, ptr %extra, align 4
  store i32 %98, ptr %len146, align 4
  %99 = load ptr, ptr %s.addr, align 8
  %bi_valid147 = getelementptr inbounds %struct.internal_state, ptr %99, i64 0, i32 57
  %100 = load i32, ptr %bi_valid147, align 4
  %sub148 = sub nsw i32 16, %98
  %cmp149 = icmp sgt i32 %100, %sub148
  br i1 %cmp149, label %if.then151, label %if.else187

if.then151:                                       ; preds = %if.then142
  %101 = load i32, ptr %lc, align 4
  store i32 %101, ptr %val152, align 4
  %102 = load ptr, ptr %s.addr, align 8
  %bi_valid155 = getelementptr inbounds %struct.internal_state, ptr %102, i64 0, i32 57
  %103 = load i32, ptr %bi_valid155, align 4
  %shl156 = shl i32 %101, %103
  %bi_buf157 = getelementptr inbounds %struct.internal_state, ptr %102, i64 0, i32 56
  %104 = load i16, ptr %bi_buf157, align 8
  %105 = trunc i32 %shl156 to i16
  %conv160 = or i16 %104, %105
  store i16 %conv160, ptr %bi_buf157, align 8
  %106 = load ptr, ptr %s.addr, align 8
  %bi_buf161 = getelementptr inbounds %struct.internal_state, ptr %106, i64 0, i32 56
  %107 = load i16, ptr %bi_buf161, align 8
  %conv164 = trunc i16 %107 to i8
  %pending_buf165 = getelementptr inbounds %struct.internal_state, ptr %106, i64 0, i32 2
  %108 = load ptr, ptr %pending_buf165, align 8
  %pending166 = getelementptr inbounds %struct.internal_state, ptr %106, i64 0, i32 5
  %109 = load i64, ptr %pending166, align 8
  %inc167 = add i64 %109, 1
  store i64 %inc167, ptr %pending166, align 8
  %arrayidx168 = getelementptr inbounds i8, ptr %108, i64 %109
  store i8 %conv164, ptr %arrayidx168, align 1
  %110 = load ptr, ptr %s.addr, align 8
  %bi_buf169 = getelementptr inbounds %struct.internal_state, ptr %110, i64 0, i32 56
  %111 = load i16, ptr %bi_buf169, align 8
  %112 = lshr i16 %111, 8
  %conv172 = trunc i16 %112 to i8
  %pending_buf173 = getelementptr inbounds %struct.internal_state, ptr %110, i64 0, i32 2
  %113 = load ptr, ptr %pending_buf173, align 8
  %114 = load ptr, ptr %s.addr, align 8
  %pending174 = getelementptr inbounds %struct.internal_state, ptr %114, i64 0, i32 5
  %115 = load i64, ptr %pending174, align 8
  %inc175 = add i64 %115, 1
  store i64 %inc175, ptr %pending174, align 8
  %arrayidx176 = getelementptr inbounds i8, ptr %113, i64 %115
  store i8 %conv172, ptr %arrayidx176, align 1
  %116 = load i32, ptr %val152, align 4
  %conv178 = and i32 %116, 65535
  %117 = load ptr, ptr %s.addr, align 8
  %bi_valid179 = getelementptr inbounds %struct.internal_state, ptr %117, i64 0, i32 57
  %118 = load i32, ptr %bi_valid179, align 4
  %sub180 = sub nsw i32 16, %118
  %shr181 = lshr i32 %conv178, %sub180
  %conv182 = trunc i32 %shr181 to i16
  %bi_buf183 = getelementptr inbounds %struct.internal_state, ptr %117, i64 0, i32 56
  store i16 %conv182, ptr %bi_buf183, align 8
  %119 = load i32, ptr %len146, align 4
  %sub184 = add nsw i32 %119, -16
  %120 = load ptr, ptr %s.addr, align 8
  %bi_valid185 = getelementptr inbounds %struct.internal_state, ptr %120, i64 0, i32 57
  %121 = load i32, ptr %bi_valid185, align 4
  %add186 = add nsw i32 %121, %sub184
  store i32 %add186, ptr %bi_valid185, align 4
  br label %if.end199

if.else187:                                       ; preds = %if.then142
  %122 = load i32, ptr %lc, align 4
  %123 = load ptr, ptr %s.addr, align 8
  %bi_valid190 = getelementptr inbounds %struct.internal_state, ptr %123, i64 0, i32 57
  %124 = load i32, ptr %bi_valid190, align 4
  %shl191 = shl i32 %122, %124
  %bi_buf192 = getelementptr inbounds %struct.internal_state, ptr %123, i64 0, i32 56
  %125 = load i16, ptr %bi_buf192, align 8
  %126 = trunc i32 %shl191 to i16
  %conv195 = or i16 %125, %126
  store i16 %conv195, ptr %bi_buf192, align 8
  %127 = load i32, ptr %len146, align 4
  %128 = load ptr, ptr %s.addr, align 8
  %bi_valid196 = getelementptr inbounds %struct.internal_state, ptr %128, i64 0, i32 57
  %129 = load i32, ptr %bi_valid196, align 4
  %add197 = add nsw i32 %129, %127
  store i32 %add197, ptr %bi_valid196, align 4
  br label %if.end199

if.end199:                                        ; preds = %if.then151, %if.else187, %if.end137
  %130 = load i32, ptr %dist, align 4
  %dec = add i32 %130, -1
  store i32 %dec, ptr %dist, align 4
  %cmp200 = icmp ult i32 %dec, 256
  %131 = load i32, ptr %dist, align 4
  %132 = load i32, ptr %dist, align 4
  %shr205 = lshr i32 %132, 7
  %add206 = add nuw nsw i32 %shr205, 256
  %idxprom202.pn.in = select i1 %cmp200, i32 %131, i32 %add206
  %idxprom202.pn = zext i32 %idxprom202.pn.in to i64
  %cond.in.in = getelementptr inbounds [512 x i8], ptr @_dist_code, i64 0, i64 %idxprom202.pn
  %cond.in = load i8, ptr %cond.in.in, align 1
  %cond = zext i8 %cond.in to i32
  store i32 %cond, ptr %code, align 4
  %133 = load ptr, ptr %dtree.addr, align 8
  %idxprom211 = zext i8 %cond.in to i64
  %dl213 = getelementptr inbounds %struct.ct_data_s, ptr %133, i64 %idxprom211, i32 1
  %134 = load i16, ptr %dl213, align 2
  %conv214 = zext i16 %134 to i32
  store i32 %conv214, ptr %len210, align 4
  %135 = load ptr, ptr %s.addr, align 8
  %bi_valid215 = getelementptr inbounds %struct.internal_state, ptr %135, i64 0, i32 57
  %136 = load i32, ptr %bi_valid215, align 4
  %sub216 = sub nsw i32 16, %conv214
  %cmp217 = icmp sgt i32 %136, %sub216
  br i1 %cmp217, label %if.then219, label %if.else259

if.then219:                                       ; preds = %if.end199
  %137 = load ptr, ptr %dtree.addr, align 8
  %138 = load i32, ptr %code, align 4
  %idxprom221 = zext i32 %138 to i64
  %arrayidx222 = getelementptr inbounds %struct.ct_data_s, ptr %137, i64 %idxprom221
  %139 = load i16, ptr %arrayidx222, align 2
  %conv224 = zext i16 %139 to i32
  store i32 %conv224, ptr %val220, align 4
  %conv226 = zext i16 %139 to i32
  %140 = load ptr, ptr %s.addr, align 8
  %bi_valid227 = getelementptr inbounds %struct.internal_state, ptr %140, i64 0, i32 57
  %141 = load i32, ptr %bi_valid227, align 4
  %shl228 = shl i32 %conv226, %141
  %bi_buf229 = getelementptr inbounds %struct.internal_state, ptr %140, i64 0, i32 56
  %142 = load i16, ptr %bi_buf229, align 8
  %143 = trunc i32 %shl228 to i16
  %conv232 = or i16 %142, %143
  store i16 %conv232, ptr %bi_buf229, align 8
  %144 = load ptr, ptr %s.addr, align 8
  %bi_buf233 = getelementptr inbounds %struct.internal_state, ptr %144, i64 0, i32 56
  %145 = load i16, ptr %bi_buf233, align 8
  %conv236 = trunc i16 %145 to i8
  %pending_buf237 = getelementptr inbounds %struct.internal_state, ptr %144, i64 0, i32 2
  %146 = load ptr, ptr %pending_buf237, align 8
  %pending238 = getelementptr inbounds %struct.internal_state, ptr %144, i64 0, i32 5
  %147 = load i64, ptr %pending238, align 8
  %inc239 = add i64 %147, 1
  store i64 %inc239, ptr %pending238, align 8
  %arrayidx240 = getelementptr inbounds i8, ptr %146, i64 %147
  store i8 %conv236, ptr %arrayidx240, align 1
  %148 = load ptr, ptr %s.addr, align 8
  %bi_buf241 = getelementptr inbounds %struct.internal_state, ptr %148, i64 0, i32 56
  %149 = load i16, ptr %bi_buf241, align 8
  %150 = lshr i16 %149, 8
  %conv244 = trunc i16 %150 to i8
  %pending_buf245 = getelementptr inbounds %struct.internal_state, ptr %148, i64 0, i32 2
  %151 = load ptr, ptr %pending_buf245, align 8
  %152 = load ptr, ptr %s.addr, align 8
  %pending246 = getelementptr inbounds %struct.internal_state, ptr %152, i64 0, i32 5
  %153 = load i64, ptr %pending246, align 8
  %inc247 = add i64 %153, 1
  store i64 %inc247, ptr %pending246, align 8
  %arrayidx248 = getelementptr inbounds i8, ptr %151, i64 %153
  store i8 %conv244, ptr %arrayidx248, align 1
  %154 = load i32, ptr %val220, align 4
  %conv250 = and i32 %154, 65535
  %155 = load ptr, ptr %s.addr, align 8
  %bi_valid251 = getelementptr inbounds %struct.internal_state, ptr %155, i64 0, i32 57
  %156 = load i32, ptr %bi_valid251, align 4
  %sub252 = sub nsw i32 16, %156
  %shr253 = lshr i32 %conv250, %sub252
  %conv254 = trunc i32 %shr253 to i16
  %bi_buf255 = getelementptr inbounds %struct.internal_state, ptr %155, i64 0, i32 56
  store i16 %conv254, ptr %bi_buf255, align 8
  %157 = load i32, ptr %len210, align 4
  %sub256 = add nsw i32 %157, -16
  %158 = load ptr, ptr %s.addr, align 8
  %bi_valid257 = getelementptr inbounds %struct.internal_state, ptr %158, i64 0, i32 57
  %159 = load i32, ptr %bi_valid257, align 4
  %add258 = add nsw i32 %159, %sub256
  store i32 %add258, ptr %bi_valid257, align 4
  br label %if.end272

if.else259:                                       ; preds = %if.end199
  %160 = load ptr, ptr %dtree.addr, align 8
  %161 = load i32, ptr %code, align 4
  %idxprom260 = zext i32 %161 to i64
  %arrayidx261 = getelementptr inbounds %struct.ct_data_s, ptr %160, i64 %idxprom260
  %162 = load i16, ptr %arrayidx261, align 2
  %conv263 = zext i16 %162 to i32
  %163 = load ptr, ptr %s.addr, align 8
  %bi_valid264 = getelementptr inbounds %struct.internal_state, ptr %163, i64 0, i32 57
  %164 = load i32, ptr %bi_valid264, align 4
  %shl265 = shl i32 %conv263, %164
  %bi_buf266 = getelementptr inbounds %struct.internal_state, ptr %163, i64 0, i32 56
  %165 = load i16, ptr %bi_buf266, align 8
  %166 = trunc i32 %shl265 to i16
  %conv269 = or i16 %165, %166
  store i16 %conv269, ptr %bi_buf266, align 8
  %167 = load i32, ptr %len210, align 4
  %168 = load ptr, ptr %s.addr, align 8
  %bi_valid270 = getelementptr inbounds %struct.internal_state, ptr %168, i64 0, i32 57
  %169 = load i32, ptr %bi_valid270, align 4
  %add271 = add nsw i32 %169, %167
  store i32 %add271, ptr %bi_valid270, align 4
  br label %if.end272

if.end272:                                        ; preds = %if.else259, %if.then219
  %170 = load i32, ptr %code, align 4
  %idxprom273 = zext i32 %170 to i64
  %arrayidx274 = getelementptr inbounds [30 x i32], ptr @extra_dbits, i64 0, i64 %idxprom273
  %171 = load i32, ptr %arrayidx274, align 4
  store i32 %171, ptr %extra, align 4
  %cmp275.not = icmp ult i32 %170, 4
  br i1 %cmp275.not, label %do.cond, label %if.then277

if.then277:                                       ; preds = %if.end272
  %172 = load i32, ptr %code, align 4
  %idxprom278 = zext i32 %172 to i64
  %arrayidx279 = getelementptr inbounds [30 x i32], ptr @base_dist, i64 0, i64 %idxprom278
  %173 = load i32, ptr %arrayidx279, align 4
  %174 = load i32, ptr %dist, align 4
  %sub280 = sub i32 %174, %173
  store i32 %sub280, ptr %dist, align 4
  %175 = load i32, ptr %extra, align 4
  store i32 %175, ptr %len281, align 4
  %176 = load ptr, ptr %s.addr, align 8
  %bi_valid282 = getelementptr inbounds %struct.internal_state, ptr %176, i64 0, i32 57
  %177 = load i32, ptr %bi_valid282, align 4
  %sub283 = sub nsw i32 16, %175
  %cmp284 = icmp sgt i32 %177, %sub283
  br i1 %cmp284, label %if.then286, label %if.else322

if.then286:                                       ; preds = %if.then277
  %178 = load i32, ptr %dist, align 4
  store i32 %178, ptr %val287, align 4
  %179 = load ptr, ptr %s.addr, align 8
  %bi_valid290 = getelementptr inbounds %struct.internal_state, ptr %179, i64 0, i32 57
  %180 = load i32, ptr %bi_valid290, align 4
  %shl291 = shl i32 %178, %180
  %bi_buf292 = getelementptr inbounds %struct.internal_state, ptr %179, i64 0, i32 56
  %181 = load i16, ptr %bi_buf292, align 8
  %182 = trunc i32 %shl291 to i16
  %conv295 = or i16 %181, %182
  store i16 %conv295, ptr %bi_buf292, align 8
  %183 = load ptr, ptr %s.addr, align 8
  %bi_buf296 = getelementptr inbounds %struct.internal_state, ptr %183, i64 0, i32 56
  %184 = load i16, ptr %bi_buf296, align 8
  %conv299 = trunc i16 %184 to i8
  %pending_buf300 = getelementptr inbounds %struct.internal_state, ptr %183, i64 0, i32 2
  %185 = load ptr, ptr %pending_buf300, align 8
  %pending301 = getelementptr inbounds %struct.internal_state, ptr %183, i64 0, i32 5
  %186 = load i64, ptr %pending301, align 8
  %inc302 = add i64 %186, 1
  store i64 %inc302, ptr %pending301, align 8
  %arrayidx303 = getelementptr inbounds i8, ptr %185, i64 %186
  store i8 %conv299, ptr %arrayidx303, align 1
  %187 = load ptr, ptr %s.addr, align 8
  %bi_buf304 = getelementptr inbounds %struct.internal_state, ptr %187, i64 0, i32 56
  %188 = load i16, ptr %bi_buf304, align 8
  %189 = lshr i16 %188, 8
  %conv307 = trunc i16 %189 to i8
  %pending_buf308 = getelementptr inbounds %struct.internal_state, ptr %187, i64 0, i32 2
  %190 = load ptr, ptr %pending_buf308, align 8
  %191 = load ptr, ptr %s.addr, align 8
  %pending309 = getelementptr inbounds %struct.internal_state, ptr %191, i64 0, i32 5
  %192 = load i64, ptr %pending309, align 8
  %inc310 = add i64 %192, 1
  store i64 %inc310, ptr %pending309, align 8
  %arrayidx311 = getelementptr inbounds i8, ptr %190, i64 %192
  store i8 %conv307, ptr %arrayidx311, align 1
  %193 = load i32, ptr %val287, align 4
  %conv313 = and i32 %193, 65535
  %194 = load ptr, ptr %s.addr, align 8
  %bi_valid314 = getelementptr inbounds %struct.internal_state, ptr %194, i64 0, i32 57
  %195 = load i32, ptr %bi_valid314, align 4
  %sub315 = sub nsw i32 16, %195
  %shr316 = lshr i32 %conv313, %sub315
  %conv317 = trunc i32 %shr316 to i16
  %bi_buf318 = getelementptr inbounds %struct.internal_state, ptr %194, i64 0, i32 56
  store i16 %conv317, ptr %bi_buf318, align 8
  %196 = load i32, ptr %len281, align 4
  %sub319 = add nsw i32 %196, -16
  %197 = load ptr, ptr %s.addr, align 8
  %bi_valid320 = getelementptr inbounds %struct.internal_state, ptr %197, i64 0, i32 57
  %198 = load i32, ptr %bi_valid320, align 4
  %add321 = add nsw i32 %198, %sub319
  store i32 %add321, ptr %bi_valid320, align 4
  br label %do.cond

if.else322:                                       ; preds = %if.then277
  %199 = load i32, ptr %dist, align 4
  %200 = load ptr, ptr %s.addr, align 8
  %bi_valid325 = getelementptr inbounds %struct.internal_state, ptr %200, i64 0, i32 57
  %201 = load i32, ptr %bi_valid325, align 4
  %shl326 = shl i32 %199, %201
  %bi_buf327 = getelementptr inbounds %struct.internal_state, ptr %200, i64 0, i32 56
  %202 = load i16, ptr %bi_buf327, align 8
  %203 = trunc i32 %shl326 to i16
  %conv330 = or i16 %202, %203
  store i16 %conv330, ptr %bi_buf327, align 8
  %204 = load i32, ptr %len281, align 4
  %205 = load ptr, ptr %s.addr, align 8
  %bi_valid331 = getelementptr inbounds %struct.internal_state, ptr %205, i64 0, i32 57
  %206 = load i32, ptr %bi_valid331, align 4
  %add332 = add nsw i32 %206, %204
  store i32 %add332, ptr %bi_valid331, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.else, %if.then20, %if.then286, %if.else322, %if.end272
  %207 = load i32, ptr %sx, align 4
  %208 = load ptr, ptr %s.addr, align 8
  %sym_next336 = getelementptr inbounds %struct.internal_state, ptr %208, i64 0, i32 50
  %209 = load i32, ptr %sym_next336, align 4
  %cmp337 = icmp ult i32 %207, %209
  br i1 %cmp337, label %do.body, label %if.end339, !llvm.loop !17

if.end339:                                        ; preds = %do.cond, %entry
  %210 = load ptr, ptr %ltree.addr, align 8
  %dl342 = getelementptr inbounds %struct.ct_data_s, ptr %210, i64 256, i32 1
  %211 = load i16, ptr %dl342, align 2
  %conv343 = zext i16 %211 to i32
  store i32 %conv343, ptr %len340, align 4
  %212 = load ptr, ptr %s.addr, align 8
  %bi_valid344 = getelementptr inbounds %struct.internal_state, ptr %212, i64 0, i32 57
  %213 = load i32, ptr %bi_valid344, align 4
  %sub345 = sub nsw i32 16, %conv343
  %cmp346 = icmp sgt i32 %213, %sub345
  br i1 %cmp346, label %if.then348, label %if.else387

if.then348:                                       ; preds = %if.end339
  %214 = load ptr, ptr %ltree.addr, align 8
  %arrayidx350 = getelementptr inbounds %struct.ct_data_s, ptr %214, i64 256
  %215 = load i16, ptr %arrayidx350, align 2
  %conv352 = zext i16 %215 to i32
  store i32 %conv352, ptr %val349, align 4
  %conv354 = zext i16 %215 to i32
  %216 = load ptr, ptr %s.addr, align 8
  %bi_valid355 = getelementptr inbounds %struct.internal_state, ptr %216, i64 0, i32 57
  %217 = load i32, ptr %bi_valid355, align 4
  %shl356 = shl i32 %conv354, %217
  %bi_buf357 = getelementptr inbounds %struct.internal_state, ptr %216, i64 0, i32 56
  %218 = load i16, ptr %bi_buf357, align 8
  %219 = trunc i32 %shl356 to i16
  %conv360 = or i16 %218, %219
  store i16 %conv360, ptr %bi_buf357, align 8
  %220 = load ptr, ptr %s.addr, align 8
  %bi_buf361 = getelementptr inbounds %struct.internal_state, ptr %220, i64 0, i32 56
  %221 = load i16, ptr %bi_buf361, align 8
  %conv364 = trunc i16 %221 to i8
  %pending_buf365 = getelementptr inbounds %struct.internal_state, ptr %220, i64 0, i32 2
  %222 = load ptr, ptr %pending_buf365, align 8
  %pending366 = getelementptr inbounds %struct.internal_state, ptr %220, i64 0, i32 5
  %223 = load i64, ptr %pending366, align 8
  %inc367 = add i64 %223, 1
  store i64 %inc367, ptr %pending366, align 8
  %arrayidx368 = getelementptr inbounds i8, ptr %222, i64 %223
  store i8 %conv364, ptr %arrayidx368, align 1
  %224 = load ptr, ptr %s.addr, align 8
  %bi_buf369 = getelementptr inbounds %struct.internal_state, ptr %224, i64 0, i32 56
  %225 = load i16, ptr %bi_buf369, align 8
  %226 = lshr i16 %225, 8
  %conv372 = trunc i16 %226 to i8
  %pending_buf373 = getelementptr inbounds %struct.internal_state, ptr %224, i64 0, i32 2
  %227 = load ptr, ptr %pending_buf373, align 8
  %228 = load ptr, ptr %s.addr, align 8
  %pending374 = getelementptr inbounds %struct.internal_state, ptr %228, i64 0, i32 5
  %229 = load i64, ptr %pending374, align 8
  %inc375 = add i64 %229, 1
  store i64 %inc375, ptr %pending374, align 8
  %arrayidx376 = getelementptr inbounds i8, ptr %227, i64 %229
  store i8 %conv372, ptr %arrayidx376, align 1
  %230 = load i32, ptr %val349, align 4
  %conv378 = and i32 %230, 65535
  %231 = load ptr, ptr %s.addr, align 8
  %bi_valid379 = getelementptr inbounds %struct.internal_state, ptr %231, i64 0, i32 57
  %232 = load i32, ptr %bi_valid379, align 4
  %sub380 = sub nsw i32 16, %232
  %shr381 = lshr i32 %conv378, %sub380
  %conv382 = trunc i32 %shr381 to i16
  %bi_buf383 = getelementptr inbounds %struct.internal_state, ptr %231, i64 0, i32 56
  store i16 %conv382, ptr %bi_buf383, align 8
  %233 = load i32, ptr %len340, align 4
  %sub384 = add nsw i32 %233, -16
  %234 = load ptr, ptr %s.addr, align 8
  %bi_valid385 = getelementptr inbounds %struct.internal_state, ptr %234, i64 0, i32 57
  %235 = load i32, ptr %bi_valid385, align 4
  %add386 = add nsw i32 %235, %sub384
  store i32 %add386, ptr %bi_valid385, align 4
  br label %if.end399

if.else387:                                       ; preds = %if.end339
  %236 = load ptr, ptr %ltree.addr, align 8
  %arrayidx388 = getelementptr inbounds %struct.ct_data_s, ptr %236, i64 256
  %237 = load i16, ptr %arrayidx388, align 2
  %conv390 = zext i16 %237 to i32
  %238 = load ptr, ptr %s.addr, align 8
  %bi_valid391 = getelementptr inbounds %struct.internal_state, ptr %238, i64 0, i32 57
  %239 = load i32, ptr %bi_valid391, align 4
  %shl392 = shl i32 %conv390, %239
  %bi_buf393 = getelementptr inbounds %struct.internal_state, ptr %238, i64 0, i32 56
  %240 = load i16, ptr %bi_buf393, align 8
  %241 = trunc i32 %shl392 to i16
  %conv396 = or i16 %240, %241
  store i16 %conv396, ptr %bi_buf393, align 8
  %242 = load i32, ptr %len340, align 4
  %243 = load ptr, ptr %s.addr, align 8
  %bi_valid397 = getelementptr inbounds %struct.internal_state, ptr %243, i64 0, i32 57
  %244 = load i32, ptr %bi_valid397, align 4
  %add398 = add nsw i32 %244, %242
  store i32 %add398, ptr %bi_valid397, align 4
  br label %if.end399

if.end399:                                        ; preds = %if.else387, %if.then348
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
  %len36 = alloca i32, align 4
  %val42 = alloca i32, align 4
  %len91 = alloca i32, align 4
  %val97 = alloca i32, align 4
  %len148 = alloca i32, align 4
  %val154 = alloca i32, align 4
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
  %bi_valid3 = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 57
  %3 = load i32, ptr %bi_valid3, align 4
  %shl = shl i32 %sub1, %3
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 56
  %4 = load i16, ptr %bi_buf, align 8
  %5 = trunc i32 %shl to i16
  %conv5 = or i16 %4, %5
  store i16 %conv5, ptr %bi_buf, align 8
  %6 = load ptr, ptr %s.addr, align 8
  %bi_buf6 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 56
  %7 = load i16, ptr %bi_buf6, align 8
  %conv8 = trunc i16 %7 to i8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %pending_buf, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 5
  %9 = load i64, ptr %pending, align 8
  %inc = add i64 %9, 1
  store i64 %inc, ptr %pending, align 8
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 %9
  store i8 %conv8, ptr %arrayidx, align 1
  %10 = load ptr, ptr %s.addr, align 8
  %bi_buf9 = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 56
  %11 = load i16, ptr %bi_buf9, align 8
  %12 = lshr i16 %11, 8
  %conv11 = trunc i16 %12 to i8
  %pending_buf12 = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 2
  %13 = load ptr, ptr %pending_buf12, align 8
  %14 = load ptr, ptr %s.addr, align 8
  %pending13 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 5
  %15 = load i64, ptr %pending13, align 8
  %inc14 = add i64 %15, 1
  store i64 %inc14, ptr %pending13, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %13, i64 %15
  store i8 %conv11, ptr %arrayidx15, align 1
  %16 = load i32, ptr %val, align 4
  %conv17 = and i32 %16, 65535
  %17 = load ptr, ptr %s.addr, align 8
  %bi_valid18 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 57
  %18 = load i32, ptr %bi_valid18, align 4
  %sub19 = sub nsw i32 16, %18
  %shr20 = lshr i32 %conv17, %sub19
  %conv21 = trunc i32 %shr20 to i16
  %bi_buf22 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 56
  store i16 %conv21, ptr %bi_buf22, align 8
  %19 = load i32, ptr %len, align 4
  %sub23 = add nsw i32 %19, -16
  %20 = load ptr, ptr %s.addr, align 8
  %bi_valid24 = getelementptr inbounds %struct.internal_state, ptr %20, i64 0, i32 57
  %21 = load i32, ptr %bi_valid24, align 4
  %add = add nsw i32 %21, %sub23
  store i32 %add, ptr %bi_valid24, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %22 = load i32, ptr %lcodes.addr, align 4
  %conv26 = add i32 %22, 65279
  %23 = load ptr, ptr %s.addr, align 8
  %bi_valid28 = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 57
  %24 = load i32, ptr %bi_valid28, align 4
  %shl29 = shl i32 %conv26, %24
  %bi_buf30 = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 56
  %25 = load i16, ptr %bi_buf30, align 8
  %26 = trunc i32 %shl29 to i16
  %conv33 = or i16 %25, %26
  store i16 %conv33, ptr %bi_buf30, align 8
  %27 = load i32, ptr %len, align 4
  %28 = load ptr, ptr %s.addr, align 8
  %bi_valid34 = getelementptr inbounds %struct.internal_state, ptr %28, i64 0, i32 57
  %29 = load i32, ptr %bi_valid34, align 4
  %add35 = add nsw i32 %29, %27
  store i32 %add35, ptr %bi_valid34, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 5, ptr %len36, align 4
  %30 = load ptr, ptr %s.addr, align 8
  %bi_valid37 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 57
  %31 = load i32, ptr %bi_valid37, align 4
  %cmp39 = icmp sgt i32 %31, 11
  br i1 %cmp39, label %if.then41, label %if.else78

if.then41:                                        ; preds = %if.end
  %32 = load i32, ptr %dcodes.addr, align 4
  %sub43 = add nsw i32 %32, -1
  store i32 %sub43, ptr %val42, align 4
  %33 = load ptr, ptr %s.addr, align 8
  %bi_valid46 = getelementptr inbounds %struct.internal_state, ptr %33, i64 0, i32 57
  %34 = load i32, ptr %bi_valid46, align 4
  %shl47 = shl i32 %sub43, %34
  %bi_buf48 = getelementptr inbounds %struct.internal_state, ptr %33, i64 0, i32 56
  %35 = load i16, ptr %bi_buf48, align 8
  %36 = trunc i32 %shl47 to i16
  %conv51 = or i16 %35, %36
  store i16 %conv51, ptr %bi_buf48, align 8
  %37 = load ptr, ptr %s.addr, align 8
  %bi_buf52 = getelementptr inbounds %struct.internal_state, ptr %37, i64 0, i32 56
  %38 = load i16, ptr %bi_buf52, align 8
  %conv55 = trunc i16 %38 to i8
  %pending_buf56 = getelementptr inbounds %struct.internal_state, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %pending_buf56, align 8
  %pending57 = getelementptr inbounds %struct.internal_state, ptr %37, i64 0, i32 5
  %40 = load i64, ptr %pending57, align 8
  %inc58 = add i64 %40, 1
  store i64 %inc58, ptr %pending57, align 8
  %arrayidx59 = getelementptr inbounds i8, ptr %39, i64 %40
  store i8 %conv55, ptr %arrayidx59, align 1
  %41 = load ptr, ptr %s.addr, align 8
  %bi_buf60 = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 56
  %42 = load i16, ptr %bi_buf60, align 8
  %43 = lshr i16 %42, 8
  %conv63 = trunc i16 %43 to i8
  %pending_buf64 = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 2
  %44 = load ptr, ptr %pending_buf64, align 8
  %45 = load ptr, ptr %s.addr, align 8
  %pending65 = getelementptr inbounds %struct.internal_state, ptr %45, i64 0, i32 5
  %46 = load i64, ptr %pending65, align 8
  %inc66 = add i64 %46, 1
  store i64 %inc66, ptr %pending65, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %44, i64 %46
  store i8 %conv63, ptr %arrayidx67, align 1
  %47 = load i32, ptr %val42, align 4
  %conv69 = and i32 %47, 65535
  %48 = load ptr, ptr %s.addr, align 8
  %bi_valid70 = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 57
  %49 = load i32, ptr %bi_valid70, align 4
  %sub71 = sub nsw i32 16, %49
  %shr72 = lshr i32 %conv69, %sub71
  %conv73 = trunc i32 %shr72 to i16
  %bi_buf74 = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 56
  store i16 %conv73, ptr %bi_buf74, align 8
  %50 = load i32, ptr %len36, align 4
  %sub75 = add nsw i32 %50, -16
  %51 = load ptr, ptr %s.addr, align 8
  %bi_valid76 = getelementptr inbounds %struct.internal_state, ptr %51, i64 0, i32 57
  %52 = load i32, ptr %bi_valid76, align 4
  %add77 = add nsw i32 %52, %sub75
  store i32 %add77, ptr %bi_valid76, align 4
  br label %if.end90

if.else78:                                        ; preds = %if.end
  %53 = load i32, ptr %dcodes.addr, align 4
  %conv80 = add i32 %53, 65535
  %54 = load ptr, ptr %s.addr, align 8
  %bi_valid82 = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 57
  %55 = load i32, ptr %bi_valid82, align 4
  %shl83 = shl i32 %conv80, %55
  %bi_buf84 = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 56
  %56 = load i16, ptr %bi_buf84, align 8
  %57 = trunc i32 %shl83 to i16
  %conv87 = or i16 %56, %57
  store i16 %conv87, ptr %bi_buf84, align 8
  %58 = load i32, ptr %len36, align 4
  %59 = load ptr, ptr %s.addr, align 8
  %bi_valid88 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 57
  %60 = load i32, ptr %bi_valid88, align 4
  %add89 = add nsw i32 %60, %58
  store i32 %add89, ptr %bi_valid88, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.else78, %if.then41
  store i32 4, ptr %len91, align 4
  %61 = load ptr, ptr %s.addr, align 8
  %bi_valid92 = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 57
  %62 = load i32, ptr %bi_valid92, align 4
  %cmp94 = icmp sgt i32 %62, 12
  br i1 %cmp94, label %if.then96, label %if.else133

if.then96:                                        ; preds = %if.end90
  %63 = load i32, ptr %blcodes.addr, align 4
  %sub98 = add nsw i32 %63, -4
  store i32 %sub98, ptr %val97, align 4
  %64 = load ptr, ptr %s.addr, align 8
  %bi_valid101 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 57
  %65 = load i32, ptr %bi_valid101, align 4
  %shl102 = shl i32 %sub98, %65
  %bi_buf103 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 56
  %66 = load i16, ptr %bi_buf103, align 8
  %67 = trunc i32 %shl102 to i16
  %conv106 = or i16 %66, %67
  store i16 %conv106, ptr %bi_buf103, align 8
  %68 = load ptr, ptr %s.addr, align 8
  %bi_buf107 = getelementptr inbounds %struct.internal_state, ptr %68, i64 0, i32 56
  %69 = load i16, ptr %bi_buf107, align 8
  %conv110 = trunc i16 %69 to i8
  %pending_buf111 = getelementptr inbounds %struct.internal_state, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %pending_buf111, align 8
  %pending112 = getelementptr inbounds %struct.internal_state, ptr %68, i64 0, i32 5
  %71 = load i64, ptr %pending112, align 8
  %inc113 = add i64 %71, 1
  store i64 %inc113, ptr %pending112, align 8
  %arrayidx114 = getelementptr inbounds i8, ptr %70, i64 %71
  store i8 %conv110, ptr %arrayidx114, align 1
  %72 = load ptr, ptr %s.addr, align 8
  %bi_buf115 = getelementptr inbounds %struct.internal_state, ptr %72, i64 0, i32 56
  %73 = load i16, ptr %bi_buf115, align 8
  %74 = lshr i16 %73, 8
  %conv118 = trunc i16 %74 to i8
  %pending_buf119 = getelementptr inbounds %struct.internal_state, ptr %72, i64 0, i32 2
  %75 = load ptr, ptr %pending_buf119, align 8
  %76 = load ptr, ptr %s.addr, align 8
  %pending120 = getelementptr inbounds %struct.internal_state, ptr %76, i64 0, i32 5
  %77 = load i64, ptr %pending120, align 8
  %inc121 = add i64 %77, 1
  store i64 %inc121, ptr %pending120, align 8
  %arrayidx122 = getelementptr inbounds i8, ptr %75, i64 %77
  store i8 %conv118, ptr %arrayidx122, align 1
  %78 = load i32, ptr %val97, align 4
  %conv124 = and i32 %78, 65535
  %79 = load ptr, ptr %s.addr, align 8
  %bi_valid125 = getelementptr inbounds %struct.internal_state, ptr %79, i64 0, i32 57
  %80 = load i32, ptr %bi_valid125, align 4
  %sub126 = sub nsw i32 16, %80
  %shr127 = lshr i32 %conv124, %sub126
  %conv128 = trunc i32 %shr127 to i16
  %bi_buf129 = getelementptr inbounds %struct.internal_state, ptr %79, i64 0, i32 56
  store i16 %conv128, ptr %bi_buf129, align 8
  %81 = load i32, ptr %len91, align 4
  %sub130 = add nsw i32 %81, -16
  %82 = load ptr, ptr %s.addr, align 8
  %bi_valid131 = getelementptr inbounds %struct.internal_state, ptr %82, i64 0, i32 57
  %83 = load i32, ptr %bi_valid131, align 4
  %add132 = add nsw i32 %83, %sub130
  store i32 %add132, ptr %bi_valid131, align 4
  br label %if.end145

if.else133:                                       ; preds = %if.end90
  %84 = load i32, ptr %blcodes.addr, align 4
  %conv135 = add i32 %84, 65532
  %85 = load ptr, ptr %s.addr, align 8
  %bi_valid137 = getelementptr inbounds %struct.internal_state, ptr %85, i64 0, i32 57
  %86 = load i32, ptr %bi_valid137, align 4
  %shl138 = shl i32 %conv135, %86
  %bi_buf139 = getelementptr inbounds %struct.internal_state, ptr %85, i64 0, i32 56
  %87 = load i16, ptr %bi_buf139, align 8
  %88 = trunc i32 %shl138 to i16
  %conv142 = or i16 %87, %88
  store i16 %conv142, ptr %bi_buf139, align 8
  %89 = load i32, ptr %len91, align 4
  %90 = load ptr, ptr %s.addr, align 8
  %bi_valid143 = getelementptr inbounds %struct.internal_state, ptr %90, i64 0, i32 57
  %91 = load i32, ptr %bi_valid143, align 4
  %add144 = add nsw i32 %91, %89
  store i32 %add144, ptr %bi_valid143, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.else133, %if.then96
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end145
  %storemerge = phi i32 [ 0, %if.end145 ], [ %inc210, %for.inc ]
  store i32 %storemerge, ptr %rank, align 4
  %92 = load i32, ptr %blcodes.addr, align 4
  %cmp146 = icmp slt i32 %storemerge, %92
  br i1 %cmp146, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 3, ptr %len148, align 4
  %93 = load ptr, ptr %s.addr, align 8
  %bi_valid149 = getelementptr inbounds %struct.internal_state, ptr %93, i64 0, i32 57
  %94 = load i32, ptr %bi_valid149, align 4
  %cmp151 = icmp sgt i32 %94, 13
  br i1 %cmp151, label %if.then153, label %if.else193

if.then153:                                       ; preds = %for.body
  %95 = load ptr, ptr %s.addr, align 8
  %96 = load i32, ptr %rank, align 4
  %idxprom = sext i32 %96 to i64
  %arrayidx155 = getelementptr inbounds [19 x i8], ptr @bl_order, i64 0, i64 %idxprom
  %97 = load i8, ptr %arrayidx155, align 1
  %idxprom156 = zext i8 %97 to i64
  %dl = getelementptr inbounds %struct.internal_state, ptr %95, i64 0, i32 39, i64 %idxprom156, i32 1
  %98 = load i16, ptr %dl, align 2
  %conv158 = zext i16 %98 to i32
  store i32 %conv158, ptr %val154, align 4
  %conv160 = zext i16 %98 to i32
  %99 = load ptr, ptr %s.addr, align 8
  %bi_valid161 = getelementptr inbounds %struct.internal_state, ptr %99, i64 0, i32 57
  %100 = load i32, ptr %bi_valid161, align 4
  %shl162 = shl i32 %conv160, %100
  %bi_buf163 = getelementptr inbounds %struct.internal_state, ptr %99, i64 0, i32 56
  %101 = load i16, ptr %bi_buf163, align 8
  %102 = trunc i32 %shl162 to i16
  %conv166 = or i16 %101, %102
  store i16 %conv166, ptr %bi_buf163, align 8
  %103 = load ptr, ptr %s.addr, align 8
  %bi_buf167 = getelementptr inbounds %struct.internal_state, ptr %103, i64 0, i32 56
  %104 = load i16, ptr %bi_buf167, align 8
  %conv170 = trunc i16 %104 to i8
  %pending_buf171 = getelementptr inbounds %struct.internal_state, ptr %103, i64 0, i32 2
  %105 = load ptr, ptr %pending_buf171, align 8
  %pending172 = getelementptr inbounds %struct.internal_state, ptr %103, i64 0, i32 5
  %106 = load i64, ptr %pending172, align 8
  %inc173 = add i64 %106, 1
  store i64 %inc173, ptr %pending172, align 8
  %arrayidx174 = getelementptr inbounds i8, ptr %105, i64 %106
  store i8 %conv170, ptr %arrayidx174, align 1
  %107 = load ptr, ptr %s.addr, align 8
  %bi_buf175 = getelementptr inbounds %struct.internal_state, ptr %107, i64 0, i32 56
  %108 = load i16, ptr %bi_buf175, align 8
  %109 = lshr i16 %108, 8
  %conv178 = trunc i16 %109 to i8
  %pending_buf179 = getelementptr inbounds %struct.internal_state, ptr %107, i64 0, i32 2
  %110 = load ptr, ptr %pending_buf179, align 8
  %111 = load ptr, ptr %s.addr, align 8
  %pending180 = getelementptr inbounds %struct.internal_state, ptr %111, i64 0, i32 5
  %112 = load i64, ptr %pending180, align 8
  %inc181 = add i64 %112, 1
  store i64 %inc181, ptr %pending180, align 8
  %arrayidx182 = getelementptr inbounds i8, ptr %110, i64 %112
  store i8 %conv178, ptr %arrayidx182, align 1
  %113 = load i32, ptr %val154, align 4
  %conv184 = and i32 %113, 65535
  %114 = load ptr, ptr %s.addr, align 8
  %bi_valid185 = getelementptr inbounds %struct.internal_state, ptr %114, i64 0, i32 57
  %115 = load i32, ptr %bi_valid185, align 4
  %sub186 = sub nsw i32 16, %115
  %shr187 = lshr i32 %conv184, %sub186
  %conv188 = trunc i32 %shr187 to i16
  %bi_buf189 = getelementptr inbounds %struct.internal_state, ptr %114, i64 0, i32 56
  store i16 %conv188, ptr %bi_buf189, align 8
  %116 = load i32, ptr %len148, align 4
  %sub190 = add nsw i32 %116, -16
  %117 = load ptr, ptr %s.addr, align 8
  %bi_valid191 = getelementptr inbounds %struct.internal_state, ptr %117, i64 0, i32 57
  %118 = load i32, ptr %bi_valid191, align 4
  %add192 = add nsw i32 %118, %sub190
  store i32 %add192, ptr %bi_valid191, align 4
  br label %for.inc

if.else193:                                       ; preds = %for.body
  %119 = load ptr, ptr %s.addr, align 8
  %120 = load i32, ptr %rank, align 4
  %idxprom195 = sext i32 %120 to i64
  %arrayidx196 = getelementptr inbounds [19 x i8], ptr @bl_order, i64 0, i64 %idxprom195
  %121 = load i8, ptr %arrayidx196, align 1
  %idxprom197 = zext i8 %121 to i64
  %dl199 = getelementptr inbounds %struct.internal_state, ptr %119, i64 0, i32 39, i64 %idxprom197, i32 1
  %122 = load i16, ptr %dl199, align 2
  %conv200 = zext i16 %122 to i32
  %123 = load ptr, ptr %s.addr, align 8
  %bi_valid201 = getelementptr inbounds %struct.internal_state, ptr %123, i64 0, i32 57
  %124 = load i32, ptr %bi_valid201, align 4
  %shl202 = shl i32 %conv200, %124
  %bi_buf203 = getelementptr inbounds %struct.internal_state, ptr %123, i64 0, i32 56
  %125 = load i16, ptr %bi_buf203, align 8
  %126 = trunc i32 %shl202 to i16
  %conv206 = or i16 %125, %126
  store i16 %conv206, ptr %bi_buf203, align 8
  %127 = load i32, ptr %len148, align 4
  %128 = load ptr, ptr %s.addr, align 8
  %bi_valid207 = getelementptr inbounds %struct.internal_state, ptr %128, i64 0, i32 57
  %129 = load i32, ptr %bi_valid207, align 4
  %add208 = add nsw i32 %129, %127
  store i32 %add208, ptr %bi_valid207, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then153, %if.else193
  %130 = load i32, ptr %rank, align 4
  %inc210 = add nsw i32 %130, 1
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  %131 = load ptr, ptr %s.addr, align 8
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %131, i64 0, i32 37
  %132 = load i32, ptr %lcodes.addr, align 4
  %sub211 = add nsw i32 %132, -1
  call void @send_tree(ptr noundef %131, ptr noundef nonnull %dyn_ltree, i32 noundef %sub211)
  %dyn_dtree = getelementptr inbounds %struct.internal_state, ptr %131, i64 0, i32 38
  %133 = load i32, ptr %dcodes.addr, align 4
  %sub213 = add nsw i32 %133, -1
  call void @send_tree(ptr noundef %131, ptr noundef nonnull %dyn_dtree, i32 noundef %sub213)
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
  %conv = trunc i32 %dist to i8
  %sym_buf = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 48
  %0 = load ptr, ptr %sym_buf, align 8
  %sym_next = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 50
  %1 = load i32, ptr %sym_next, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %sym_next, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  %2 = load i32, ptr %dist.addr, align 4
  %shr = lshr i32 %2, 8
  %conv1 = trunc i32 %shr to i8
  %3 = load ptr, ptr %s.addr, align 8
  %sym_buf2 = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 48
  %4 = load ptr, ptr %sym_buf2, align 8
  %sym_next3 = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 50
  %5 = load i32, ptr %sym_next3, align 4
  %inc4 = add i32 %5, 1
  store i32 %inc4, ptr %sym_next3, align 4
  %idxprom5 = zext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %4, i64 %idxprom5
  store i8 %conv1, ptr %arrayidx6, align 1
  %6 = load i32, ptr %lc.addr, align 4
  %conv7 = trunc i32 %6 to i8
  %7 = load ptr, ptr %s.addr, align 8
  %sym_buf8 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 48
  %8 = load ptr, ptr %sym_buf8, align 8
  %sym_next9 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 50
  %9 = load i32, ptr %sym_next9, align 4
  %inc10 = add i32 %9, 1
  store i32 %inc10, ptr %sym_next9, align 4
  %idxprom11 = zext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds i8, ptr %8, i64 %idxprom11
  store i8 %conv7, ptr %arrayidx12, align 1
  %10 = load i32, ptr %dist.addr, align 4
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %s.addr, align 8
  %12 = load i32, ptr %lc.addr, align 4
  %idxprom14 = zext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds %struct.internal_state, ptr %11, i64 0, i32 37, i64 %idxprom14
  %13 = load i16, ptr %arrayidx15, align 4
  %inc16 = add i16 %13, 1
  store i16 %inc16, ptr %arrayidx15, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %s.addr, align 8
  %matches = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 54
  %15 = load i32, ptr %matches, align 8
  %inc17 = add i32 %15, 1
  store i32 %inc17, ptr %matches, align 8
  %16 = load i32, ptr %dist.addr, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %dist.addr, align 4
  %17 = load ptr, ptr %s.addr, align 8
  %18 = load i32, ptr %lc.addr, align 4
  %idxprom19 = zext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds [256 x i8], ptr @_length_code, i64 0, i64 %idxprom19
  %19 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %19 to i64
  %add22 = add nuw nsw i64 %conv21, 257
  %arrayidx24 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 37, i64 %add22
  %20 = load i16, ptr %arrayidx24, align 4
  %inc26 = add i16 %20, 1
  store i16 %inc26, ptr %arrayidx24, align 4
  %21 = load ptr, ptr %s.addr, align 8
  %22 = load i32, ptr %dist.addr, align 4
  %cmp27 = icmp ult i32 %22, 256
  %23 = load i32, ptr %dist.addr, align 4
  %24 = load i32, ptr %dist.addr, align 4
  %shr32 = lshr i32 %24, 7
  %add33 = add nuw nsw i32 %shr32, 256
  %idxprom29.pn.in = select i1 %cmp27, i32 %23, i32 %add33
  %idxprom29.pn = zext i32 %idxprom29.pn.in to i64
  %cond.in.in = getelementptr inbounds [512 x i8], ptr @_dist_code, i64 0, i64 %idxprom29.pn
  %cond.in = load i8, ptr %cond.in.in, align 1
  %idxprom37 = zext i8 %cond.in to i64
  %arrayidx38 = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 38, i64 %idxprom37
  %25 = load i16, ptr %arrayidx38, align 4
  %inc40 = add i16 %25, 1
  store i16 %inc40, ptr %arrayidx38, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %26 = load ptr, ptr %s.addr, align 8
  %sym_next41 = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 50
  %27 = load i32, ptr %sym_next41, align 4
  %sym_end = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 51
  %28 = load i32, ptr %sym_end, align 8
  %cmp42 = icmp eq i32 %27, %28
  %conv43 = zext i1 %cmp42 to i32
  ret i32 %conv43
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
  br label %while.cond, !llvm.loop !19

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
  br label %for.cond, !llvm.loop !20

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
  %conv49 = zext i32 %add48 to i64
  %mul = mul nuw nsw i64 %conv47, %conv49
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
  %conv58 = zext i32 %add57 to i64
  %mul59 = mul nuw nsw i64 %conv52, %conv58
  %55 = load ptr, ptr %s.addr, align 8
  %static_len = getelementptr inbounds %struct.internal_state, ptr %55, i64 0, i32 53
  %56 = load i64, ptr %static_len, align 8
  %add60 = add i64 %56, %mul59
  store i64 %add60, ptr %static_len, align 8
  br label %for.inc62

for.inc62:                                        ; preds = %if.end44, %if.then51, %if.end
  %57 = load i32, ptr %h, align 4
  br label %for.cond11, !llvm.loop !21

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
  br label %while.cond, !llvm.loop !22

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
  br i1 %cmp92, label %do.body, label %do.end, !llvm.loop !23

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
  br i1 %cmp110, label %while.cond102, label %if.end113, !llvm.loop !24

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
  br label %while.cond102, !llvm.loop !24

for.inc141:                                       ; preds = %while.cond102
  %100 = load i32, ptr %bits, align 4
  %dec142 = add nsw i32 %100, -1
  br label %for.cond94, !llvm.loop !25

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
  %code = alloca i32, align 4
  %bits = alloca i32, align 4
  %n = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %tree, ptr %tree.addr, align 8
  store i32 %max_code, ptr %max_code.addr, align 4
  store ptr %bl_count, ptr %bl_count.addr, align 8
  store i32 0, ptr %code, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 1, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %bits, align 4
  %cmp = icmp slt i32 %storemerge, 16
  br i1 %cmp, label %for.body, label %for.cond4

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %code, align 4
  %1 = load ptr, ptr %bl_count.addr, align 8
  %2 = load i32, ptr %bits, align 4
  %sub = add nsw i32 %2, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %add = add i32 %0, %conv
  %shl = shl i32 %add, 1
  store i32 %shl, ptr %code, align 4
  %conv1 = trunc i32 %shl to i16
  %4 = load i32, ptr %bits, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [16 x i16], ptr %next_code, i64 0, i64 %idxprom2
  store i16 %conv1, ptr %arrayidx3, align 2
  %5 = load i32, ptr %bits, align 4
  %inc = add nsw i32 %5, 1
  br label %for.cond, !llvm.loop !26

for.cond4:                                        ; preds = %for.cond, %for.inc20
  %storemerge1 = phi i32 [ %inc21, %for.inc20 ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr %n, align 4
  %6 = load i32, ptr %max_code.addr, align 4
  %cmp5.not = icmp sgt i32 %storemerge1, %6
  br i1 %cmp5.not, label %for.end22, label %for.body7

for.body7:                                        ; preds = %for.cond4
  %7 = load ptr, ptr %tree.addr, align 8
  %8 = load i32, ptr %n, align 4
  %idxprom8 = sext i32 %8 to i64
  %dl = getelementptr inbounds %struct.ct_data_s, ptr %7, i64 %idxprom8, i32 1
  %9 = load i16, ptr %dl, align 2
  %conv10 = zext i16 %9 to i32
  store i32 %conv10, ptr %len, align 4
  %cmp11 = icmp eq i16 %9, 0
  br i1 %cmp11, label %for.inc20, label %if.end

if.end:                                           ; preds = %for.body7
  %10 = load i32, ptr %len, align 4
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [16 x i16], ptr %next_code, i64 0, i64 %idxprom13
  %11 = load i16, ptr %arrayidx14, align 2
  %inc15 = add i16 %11, 1
  store i16 %inc15, ptr %arrayidx14, align 2
  %conv16 = zext i16 %11 to i32
  %12 = load i32, ptr %len, align 4
  %call = call i32 @bi_reverse(i32 noundef %conv16, i32 noundef %12)
  %conv17 = trunc i32 %call to i16
  %13 = load ptr, ptr %tree.addr, align 8
  %14 = load i32, ptr %n, align 4
  %idxprom18 = sext i32 %14 to i64
  %arrayidx19 = getelementptr inbounds %struct.ct_data_s, ptr %13, i64 %idxprom18
  store i16 %conv17, ptr %arrayidx19, align 2
  br label %for.inc20

for.inc20:                                        ; preds = %for.body7, %if.end
  %15 = load i32, ptr %n, align 4
  %inc21 = add nsw i32 %15, 1
  br label %for.cond4, !llvm.loop !27

for.end22:                                        ; preds = %for.cond4
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
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !28

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
  %storemerge = phi i32 [ 0, %if.end ], [ %inc70, %for.inc ]
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
  br i1 %cmp16, label %if.then18, label %if.else26

if.then18:                                        ; preds = %if.else
  %14 = load i32, ptr %count, align 4
  %15 = load ptr, ptr %s.addr, align 8
  %16 = load i32, ptr %curlen, align 4
  %idxprom21 = sext i32 %16 to i64
  %arrayidx22 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 39, i64 %idxprom21
  %17 = load i16, ptr %arrayidx22, align 4
  %18 = trunc i32 %14 to i16
  %conv25 = add i16 %17, %18
  store i16 %conv25, ptr %arrayidx22, align 4
  br label %if.end59

if.else26:                                        ; preds = %if.else
  %19 = load i32, ptr %curlen, align 4
  %cmp27.not = icmp eq i32 %19, 0
  br i1 %cmp27.not, label %if.else43, label %if.then29

if.then29:                                        ; preds = %if.else26
  %20 = load i32, ptr %curlen, align 4
  %21 = load i32, ptr %prevlen, align 4
  %cmp30.not = icmp eq i32 %20, %21
  br i1 %cmp30.not, label %if.end38, label %if.then32

if.then32:                                        ; preds = %if.then29
  %22 = load ptr, ptr %s.addr, align 8
  %23 = load i32, ptr %curlen, align 4
  %idxprom34 = sext i32 %23 to i64
  %arrayidx35 = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 39, i64 %idxprom34
  %24 = load i16, ptr %arrayidx35, align 4
  %inc37 = add i16 %24, 1
  store i16 %inc37, ptr %arrayidx35, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then32, %if.then29
  %25 = load ptr, ptr %s.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct.internal_state, ptr %25, i64 0, i32 39, i64 16
  %26 = load i16, ptr %arrayidx40, align 4
  %inc42 = add i16 %26, 1
  store i16 %inc42, ptr %arrayidx40, align 4
  br label %if.end59

if.else43:                                        ; preds = %if.else26
  %27 = load i32, ptr %count, align 4
  %cmp44 = icmp slt i32 %27, 11
  br i1 %cmp44, label %if.then46, label %if.else51

if.then46:                                        ; preds = %if.else43
  %28 = load ptr, ptr %s.addr, align 8
  %arrayidx48 = getelementptr inbounds %struct.internal_state, ptr %28, i64 0, i32 39, i64 17
  %29 = load i16, ptr %arrayidx48, align 4
  %inc50 = add i16 %29, 1
  store i16 %inc50, ptr %arrayidx48, align 4
  br label %if.end59

if.else51:                                        ; preds = %if.else43
  %30 = load ptr, ptr %s.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 39, i64 18
  %31 = load i16, ptr %arrayidx53, align 4
  %inc55 = add i16 %31, 1
  store i16 %inc55, ptr %arrayidx53, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then18, %if.then46, %if.else51, %if.end38
  store i32 0, ptr %count, align 4
  %32 = load i32, ptr %curlen, align 4
  store i32 %32, ptr %prevlen, align 4
  %33 = load i32, ptr %nextlen, align 4
  %cmp60 = icmp eq i32 %33, 0
  br i1 %cmp60, label %if.end69, label %if.else63

if.else63:                                        ; preds = %if.end59
  %34 = load i32, ptr %curlen, align 4
  %35 = load i32, ptr %nextlen, align 4
  %cmp64 = icmp eq i32 %34, %35
  %. = select i1 %cmp64, i32 6, i32 7
  %.5 = select i1 %cmp64, i32 3, i32 4
  br label %if.end69

if.end69:                                         ; preds = %if.end59, %if.else63
  %storemerge4 = phi i32 [ %., %if.else63 ], [ 138, %if.end59 ]
  %storemerge3 = phi i32 [ %.5, %if.else63 ], [ 3, %if.end59 ]
  store i32 %storemerge4, ptr %max_count, align 4
  store i32 %storemerge3, ptr %min_count, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %if.end69
  %36 = load i32, ptr %n, align 4
  %inc70 = add nsw i32 %36, 1
  br label %for.cond, !llvm.loop !29

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
  %len77 = alloca i32, align 4
  %val88 = alloca i32, align 4
  %len145 = alloca i32, align 4
  %val155 = alloca i32, align 4
  %len208 = alloca i32, align 4
  %val214 = alloca i32, align 4
  %len267 = alloca i32, align 4
  %val277 = alloca i32, align 4
  %len330 = alloca i32, align 4
  %val336 = alloca i32, align 4
  %len386 = alloca i32, align 4
  %val396 = alloca i32, align 4
  %len449 = alloca i32, align 4
  %val455 = alloca i32, align 4
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
  %storemerge = phi i32 [ 0, %if.end ], [ %inc518, %for.inc ]
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
  br i1 %cmp12, label %do.body, label %if.else70

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
  br i1 %cmp19, label %if.then21, label %if.else53

if.then21:                                        ; preds = %do.body
  %17 = load ptr, ptr %s.addr, align 8
  %18 = load i32, ptr %curlen, align 4
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 39, i64 %idxprom23
  %19 = load i16, ptr %arrayidx24, align 4
  %conv25 = zext i16 %19 to i32
  store i32 %conv25, ptr %val, align 4
  %conv27 = zext i16 %19 to i32
  %20 = load ptr, ptr %s.addr, align 8
  %bi_valid28 = getelementptr inbounds %struct.internal_state, ptr %20, i64 0, i32 57
  %21 = load i32, ptr %bi_valid28, align 4
  %shl = shl i32 %conv27, %21
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %20, i64 0, i32 56
  %22 = load i16, ptr %bi_buf, align 8
  %23 = trunc i32 %shl to i16
  %conv30 = or i16 %22, %23
  store i16 %conv30, ptr %bi_buf, align 8
  %24 = load ptr, ptr %s.addr, align 8
  %bi_buf31 = getelementptr inbounds %struct.internal_state, ptr %24, i64 0, i32 56
  %25 = load i16, ptr %bi_buf31, align 8
  %conv33 = trunc i16 %25 to i8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %pending_buf, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %24, i64 0, i32 5
  %27 = load i64, ptr %pending, align 8
  %inc34 = add i64 %27, 1
  store i64 %inc34, ptr %pending, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %26, i64 %27
  store i8 %conv33, ptr %arrayidx35, align 1
  %28 = load ptr, ptr %s.addr, align 8
  %bi_buf36 = getelementptr inbounds %struct.internal_state, ptr %28, i64 0, i32 56
  %29 = load i16, ptr %bi_buf36, align 8
  %30 = lshr i16 %29, 8
  %conv38 = trunc i16 %30 to i8
  %pending_buf39 = getelementptr inbounds %struct.internal_state, ptr %28, i64 0, i32 2
  %31 = load ptr, ptr %pending_buf39, align 8
  %32 = load ptr, ptr %s.addr, align 8
  %pending40 = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 5
  %33 = load i64, ptr %pending40, align 8
  %inc41 = add i64 %33, 1
  store i64 %inc41, ptr %pending40, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %31, i64 %33
  store i8 %conv38, ptr %arrayidx42, align 1
  %34 = load i32, ptr %val, align 4
  %conv44 = and i32 %34, 65535
  %35 = load ptr, ptr %s.addr, align 8
  %bi_valid45 = getelementptr inbounds %struct.internal_state, ptr %35, i64 0, i32 57
  %36 = load i32, ptr %bi_valid45, align 4
  %sub46 = sub nsw i32 16, %36
  %shr47 = lshr i32 %conv44, %sub46
  %conv48 = trunc i32 %shr47 to i16
  %bi_buf49 = getelementptr inbounds %struct.internal_state, ptr %35, i64 0, i32 56
  store i16 %conv48, ptr %bi_buf49, align 8
  %37 = load i32, ptr %len, align 4
  %sub50 = add nsw i32 %37, -16
  %38 = load ptr, ptr %s.addr, align 8
  %bi_valid51 = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 57
  %39 = load i32, ptr %bi_valid51, align 4
  %add52 = add nsw i32 %39, %sub50
  store i32 %add52, ptr %bi_valid51, align 4
  br label %do.cond

if.else53:                                        ; preds = %do.body
  %40 = load ptr, ptr %s.addr, align 8
  %41 = load i32, ptr %curlen, align 4
  %idxprom55 = sext i32 %41 to i64
  %arrayidx56 = getelementptr inbounds %struct.internal_state, ptr %40, i64 0, i32 39, i64 %idxprom55
  %42 = load i16, ptr %arrayidx56, align 4
  %conv58 = zext i16 %42 to i32
  %bi_valid59 = getelementptr inbounds %struct.internal_state, ptr %40, i64 0, i32 57
  %43 = load i32, ptr %bi_valid59, align 4
  %shl60 = shl i32 %conv58, %43
  %44 = load ptr, ptr %s.addr, align 8
  %bi_buf61 = getelementptr inbounds %struct.internal_state, ptr %44, i64 0, i32 56
  %45 = load i16, ptr %bi_buf61, align 8
  %46 = trunc i32 %shl60 to i16
  %conv64 = or i16 %45, %46
  store i16 %conv64, ptr %bi_buf61, align 8
  %47 = load i32, ptr %len, align 4
  %48 = load ptr, ptr %s.addr, align 8
  %bi_valid65 = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 57
  %49 = load i32, ptr %bi_valid65, align 4
  %add66 = add nsw i32 %49, %47
  store i32 %add66, ptr %bi_valid65, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.then21, %if.else53
  %50 = load i32, ptr %count, align 4
  %dec = add nsw i32 %50, -1
  store i32 %dec, ptr %count, align 4
  %cmp68.not = icmp eq i32 %dec, 0
  br i1 %cmp68.not, label %if.end507, label %do.body, !llvm.loop !30

if.else70:                                        ; preds = %if.else
  %51 = load i32, ptr %curlen, align 4
  %cmp71.not = icmp eq i32 %51, 0
  br i1 %cmp71.not, label %if.else263, label %if.then73

if.then73:                                        ; preds = %if.else70
  %52 = load i32, ptr %curlen, align 4
  %53 = load i32, ptr %prevlen, align 4
  %cmp74.not = icmp eq i32 %52, %53
  br i1 %cmp74.not, label %if.end144, label %if.then76

if.then76:                                        ; preds = %if.then73
  %54 = load ptr, ptr %s.addr, align 8
  %55 = load i32, ptr %curlen, align 4
  %idxprom79 = sext i32 %55 to i64
  %dl81 = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 39, i64 %idxprom79, i32 1
  %56 = load i16, ptr %dl81, align 2
  %conv82 = zext i16 %56 to i32
  store i32 %conv82, ptr %len77, align 4
  %57 = load ptr, ptr %s.addr, align 8
  %bi_valid83 = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 57
  %58 = load i32, ptr %bi_valid83, align 4
  %sub84 = sub nsw i32 16, %conv82
  %cmp85 = icmp sgt i32 %58, %sub84
  br i1 %cmp85, label %if.then87, label %if.else128

if.then87:                                        ; preds = %if.then76
  %59 = load ptr, ptr %s.addr, align 8
  %60 = load i32, ptr %curlen, align 4
  %idxprom90 = sext i32 %60 to i64
  %arrayidx91 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 39, i64 %idxprom90
  %61 = load i16, ptr %arrayidx91, align 4
  %conv93 = zext i16 %61 to i32
  store i32 %conv93, ptr %val88, align 4
  %conv95 = zext i16 %61 to i32
  %62 = load ptr, ptr %s.addr, align 8
  %bi_valid96 = getelementptr inbounds %struct.internal_state, ptr %62, i64 0, i32 57
  %63 = load i32, ptr %bi_valid96, align 4
  %shl97 = shl i32 %conv95, %63
  %bi_buf98 = getelementptr inbounds %struct.internal_state, ptr %62, i64 0, i32 56
  %64 = load i16, ptr %bi_buf98, align 8
  %65 = trunc i32 %shl97 to i16
  %conv101 = or i16 %64, %65
  store i16 %conv101, ptr %bi_buf98, align 8
  %66 = load ptr, ptr %s.addr, align 8
  %bi_buf102 = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 56
  %67 = load i16, ptr %bi_buf102, align 8
  %conv105 = trunc i16 %67 to i8
  %pending_buf106 = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 2
  %68 = load ptr, ptr %pending_buf106, align 8
  %pending107 = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 5
  %69 = load i64, ptr %pending107, align 8
  %inc108 = add i64 %69, 1
  store i64 %inc108, ptr %pending107, align 8
  %arrayidx109 = getelementptr inbounds i8, ptr %68, i64 %69
  store i8 %conv105, ptr %arrayidx109, align 1
  %70 = load ptr, ptr %s.addr, align 8
  %bi_buf110 = getelementptr inbounds %struct.internal_state, ptr %70, i64 0, i32 56
  %71 = load i16, ptr %bi_buf110, align 8
  %72 = lshr i16 %71, 8
  %conv113 = trunc i16 %72 to i8
  %pending_buf114 = getelementptr inbounds %struct.internal_state, ptr %70, i64 0, i32 2
  %73 = load ptr, ptr %pending_buf114, align 8
  %74 = load ptr, ptr %s.addr, align 8
  %pending115 = getelementptr inbounds %struct.internal_state, ptr %74, i64 0, i32 5
  %75 = load i64, ptr %pending115, align 8
  %inc116 = add i64 %75, 1
  store i64 %inc116, ptr %pending115, align 8
  %arrayidx117 = getelementptr inbounds i8, ptr %73, i64 %75
  store i8 %conv113, ptr %arrayidx117, align 1
  %76 = load i32, ptr %val88, align 4
  %conv119 = and i32 %76, 65535
  %77 = load ptr, ptr %s.addr, align 8
  %bi_valid120 = getelementptr inbounds %struct.internal_state, ptr %77, i64 0, i32 57
  %78 = load i32, ptr %bi_valid120, align 4
  %sub121 = sub nsw i32 16, %78
  %shr122 = lshr i32 %conv119, %sub121
  %conv123 = trunc i32 %shr122 to i16
  %bi_buf124 = getelementptr inbounds %struct.internal_state, ptr %77, i64 0, i32 56
  store i16 %conv123, ptr %bi_buf124, align 8
  %79 = load i32, ptr %len77, align 4
  %sub125 = add nsw i32 %79, -16
  %80 = load ptr, ptr %s.addr, align 8
  %bi_valid126 = getelementptr inbounds %struct.internal_state, ptr %80, i64 0, i32 57
  %81 = load i32, ptr %bi_valid126, align 4
  %add127 = add nsw i32 %81, %sub125
  store i32 %add127, ptr %bi_valid126, align 4
  br label %if.end142

if.else128:                                       ; preds = %if.then76
  %82 = load ptr, ptr %s.addr, align 8
  %83 = load i32, ptr %curlen, align 4
  %idxprom130 = sext i32 %83 to i64
  %arrayidx131 = getelementptr inbounds %struct.internal_state, ptr %82, i64 0, i32 39, i64 %idxprom130
  %84 = load i16, ptr %arrayidx131, align 4
  %conv133 = zext i16 %84 to i32
  %bi_valid134 = getelementptr inbounds %struct.internal_state, ptr %82, i64 0, i32 57
  %85 = load i32, ptr %bi_valid134, align 4
  %shl135 = shl i32 %conv133, %85
  %86 = load ptr, ptr %s.addr, align 8
  %bi_buf136 = getelementptr inbounds %struct.internal_state, ptr %86, i64 0, i32 56
  %87 = load i16, ptr %bi_buf136, align 8
  %88 = trunc i32 %shl135 to i16
  %conv139 = or i16 %87, %88
  store i16 %conv139, ptr %bi_buf136, align 8
  %89 = load i32, ptr %len77, align 4
  %90 = load ptr, ptr %s.addr, align 8
  %bi_valid140 = getelementptr inbounds %struct.internal_state, ptr %90, i64 0, i32 57
  %91 = load i32, ptr %bi_valid140, align 4
  %add141 = add nsw i32 %91, %89
  store i32 %add141, ptr %bi_valid140, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.else128, %if.then87
  %92 = load i32, ptr %count, align 4
  %dec143 = add nsw i32 %92, -1
  store i32 %dec143, ptr %count, align 4
  br label %if.end144

if.end144:                                        ; preds = %if.end142, %if.then73
  %93 = load ptr, ptr %s.addr, align 8
  %dl148 = getelementptr inbounds %struct.internal_state, ptr %93, i64 0, i32 39, i64 16, i32 1
  %94 = load i16, ptr %dl148, align 2
  %conv149 = zext i16 %94 to i32
  store i32 %conv149, ptr %len145, align 4
  %bi_valid150 = getelementptr inbounds %struct.internal_state, ptr %93, i64 0, i32 57
  %95 = load i32, ptr %bi_valid150, align 4
  %sub151 = sub nsw i32 16, %conv149
  %cmp152 = icmp sgt i32 %95, %sub151
  br i1 %cmp152, label %if.then154, label %if.else194

if.then154:                                       ; preds = %if.end144
  %96 = load ptr, ptr %s.addr, align 8
  %arrayidx157 = getelementptr inbounds %struct.internal_state, ptr %96, i64 0, i32 39, i64 16
  %97 = load i16, ptr %arrayidx157, align 4
  %conv159 = zext i16 %97 to i32
  store i32 %conv159, ptr %val155, align 4
  %conv161 = zext i16 %97 to i32
  %bi_valid162 = getelementptr inbounds %struct.internal_state, ptr %96, i64 0, i32 57
  %98 = load i32, ptr %bi_valid162, align 4
  %shl163 = shl i32 %conv161, %98
  %99 = load ptr, ptr %s.addr, align 8
  %bi_buf164 = getelementptr inbounds %struct.internal_state, ptr %99, i64 0, i32 56
  %100 = load i16, ptr %bi_buf164, align 8
  %101 = trunc i32 %shl163 to i16
  %conv167 = or i16 %100, %101
  store i16 %conv167, ptr %bi_buf164, align 8
  %conv171 = trunc i16 %conv167 to i8
  %102 = load ptr, ptr %s.addr, align 8
  %pending_buf172 = getelementptr inbounds %struct.internal_state, ptr %102, i64 0, i32 2
  %103 = load ptr, ptr %pending_buf172, align 8
  %pending173 = getelementptr inbounds %struct.internal_state, ptr %102, i64 0, i32 5
  %104 = load i64, ptr %pending173, align 8
  %inc174 = add i64 %104, 1
  store i64 %inc174, ptr %pending173, align 8
  %arrayidx175 = getelementptr inbounds i8, ptr %103, i64 %104
  store i8 %conv171, ptr %arrayidx175, align 1
  %105 = load ptr, ptr %s.addr, align 8
  %bi_buf176 = getelementptr inbounds %struct.internal_state, ptr %105, i64 0, i32 56
  %106 = load i16, ptr %bi_buf176, align 8
  %107 = lshr i16 %106, 8
  %conv179 = trunc i16 %107 to i8
  %pending_buf180 = getelementptr inbounds %struct.internal_state, ptr %105, i64 0, i32 2
  %108 = load ptr, ptr %pending_buf180, align 8
  %109 = load ptr, ptr %s.addr, align 8
  %pending181 = getelementptr inbounds %struct.internal_state, ptr %109, i64 0, i32 5
  %110 = load i64, ptr %pending181, align 8
  %inc182 = add i64 %110, 1
  store i64 %inc182, ptr %pending181, align 8
  %arrayidx183 = getelementptr inbounds i8, ptr %108, i64 %110
  store i8 %conv179, ptr %arrayidx183, align 1
  %111 = load i32, ptr %val155, align 4
  %conv185 = and i32 %111, 65535
  %112 = load ptr, ptr %s.addr, align 8
  %bi_valid186 = getelementptr inbounds %struct.internal_state, ptr %112, i64 0, i32 57
  %113 = load i32, ptr %bi_valid186, align 4
  %sub187 = sub nsw i32 16, %113
  %shr188 = lshr i32 %conv185, %sub187
  %conv189 = trunc i32 %shr188 to i16
  %bi_buf190 = getelementptr inbounds %struct.internal_state, ptr %112, i64 0, i32 56
  store i16 %conv189, ptr %bi_buf190, align 8
  %114 = load i32, ptr %len145, align 4
  %sub191 = add nsw i32 %114, -16
  %115 = load ptr, ptr %s.addr, align 8
  %bi_valid192 = getelementptr inbounds %struct.internal_state, ptr %115, i64 0, i32 57
  %116 = load i32, ptr %bi_valid192, align 4
  %add193 = add nsw i32 %116, %sub191
  store i32 %add193, ptr %bi_valid192, align 4
  br label %if.end207

if.else194:                                       ; preds = %if.end144
  %117 = load ptr, ptr %s.addr, align 8
  %arrayidx196 = getelementptr inbounds %struct.internal_state, ptr %117, i64 0, i32 39, i64 16
  %118 = load i16, ptr %arrayidx196, align 4
  %conv198 = zext i16 %118 to i32
  %bi_valid199 = getelementptr inbounds %struct.internal_state, ptr %117, i64 0, i32 57
  %119 = load i32, ptr %bi_valid199, align 4
  %shl200 = shl i32 %conv198, %119
  %120 = load ptr, ptr %s.addr, align 8
  %bi_buf201 = getelementptr inbounds %struct.internal_state, ptr %120, i64 0, i32 56
  %121 = load i16, ptr %bi_buf201, align 8
  %122 = trunc i32 %shl200 to i16
  %conv204 = or i16 %121, %122
  store i16 %conv204, ptr %bi_buf201, align 8
  %123 = load i32, ptr %len145, align 4
  %124 = load ptr, ptr %s.addr, align 8
  %bi_valid205 = getelementptr inbounds %struct.internal_state, ptr %124, i64 0, i32 57
  %125 = load i32, ptr %bi_valid205, align 4
  %add206 = add nsw i32 %125, %123
  store i32 %add206, ptr %bi_valid205, align 4
  br label %if.end207

if.end207:                                        ; preds = %if.else194, %if.then154
  store i32 2, ptr %len208, align 4
  %126 = load ptr, ptr %s.addr, align 8
  %bi_valid209 = getelementptr inbounds %struct.internal_state, ptr %126, i64 0, i32 57
  %127 = load i32, ptr %bi_valid209, align 4
  %cmp211 = icmp sgt i32 %127, 14
  br i1 %cmp211, label %if.then213, label %if.else250

if.then213:                                       ; preds = %if.end207
  %128 = load i32, ptr %count, align 4
  %sub215 = add nsw i32 %128, -3
  store i32 %sub215, ptr %val214, align 4
  %129 = load ptr, ptr %s.addr, align 8
  %bi_valid218 = getelementptr inbounds %struct.internal_state, ptr %129, i64 0, i32 57
  %130 = load i32, ptr %bi_valid218, align 4
  %shl219 = shl i32 %sub215, %130
  %bi_buf220 = getelementptr inbounds %struct.internal_state, ptr %129, i64 0, i32 56
  %131 = load i16, ptr %bi_buf220, align 8
  %132 = trunc i32 %shl219 to i16
  %conv223 = or i16 %131, %132
  store i16 %conv223, ptr %bi_buf220, align 8
  %133 = load ptr, ptr %s.addr, align 8
  %bi_buf224 = getelementptr inbounds %struct.internal_state, ptr %133, i64 0, i32 56
  %134 = load i16, ptr %bi_buf224, align 8
  %conv227 = trunc i16 %134 to i8
  %pending_buf228 = getelementptr inbounds %struct.internal_state, ptr %133, i64 0, i32 2
  %135 = load ptr, ptr %pending_buf228, align 8
  %pending229 = getelementptr inbounds %struct.internal_state, ptr %133, i64 0, i32 5
  %136 = load i64, ptr %pending229, align 8
  %inc230 = add i64 %136, 1
  store i64 %inc230, ptr %pending229, align 8
  %arrayidx231 = getelementptr inbounds i8, ptr %135, i64 %136
  store i8 %conv227, ptr %arrayidx231, align 1
  %137 = load ptr, ptr %s.addr, align 8
  %bi_buf232 = getelementptr inbounds %struct.internal_state, ptr %137, i64 0, i32 56
  %138 = load i16, ptr %bi_buf232, align 8
  %139 = lshr i16 %138, 8
  %conv235 = trunc i16 %139 to i8
  %pending_buf236 = getelementptr inbounds %struct.internal_state, ptr %137, i64 0, i32 2
  %140 = load ptr, ptr %pending_buf236, align 8
  %141 = load ptr, ptr %s.addr, align 8
  %pending237 = getelementptr inbounds %struct.internal_state, ptr %141, i64 0, i32 5
  %142 = load i64, ptr %pending237, align 8
  %inc238 = add i64 %142, 1
  store i64 %inc238, ptr %pending237, align 8
  %arrayidx239 = getelementptr inbounds i8, ptr %140, i64 %142
  store i8 %conv235, ptr %arrayidx239, align 1
  %143 = load i32, ptr %val214, align 4
  %conv241 = and i32 %143, 65535
  %144 = load ptr, ptr %s.addr, align 8
  %bi_valid242 = getelementptr inbounds %struct.internal_state, ptr %144, i64 0, i32 57
  %145 = load i32, ptr %bi_valid242, align 4
  %sub243 = sub nsw i32 16, %145
  %shr244 = lshr i32 %conv241, %sub243
  %conv245 = trunc i32 %shr244 to i16
  %bi_buf246 = getelementptr inbounds %struct.internal_state, ptr %144, i64 0, i32 56
  store i16 %conv245, ptr %bi_buf246, align 8
  %146 = load i32, ptr %len208, align 4
  %sub247 = add nsw i32 %146, -16
  %147 = load ptr, ptr %s.addr, align 8
  %bi_valid248 = getelementptr inbounds %struct.internal_state, ptr %147, i64 0, i32 57
  %148 = load i32, ptr %bi_valid248, align 4
  %add249 = add nsw i32 %148, %sub247
  store i32 %add249, ptr %bi_valid248, align 4
  br label %if.end507

if.else250:                                       ; preds = %if.end207
  %149 = load i32, ptr %count, align 4
  %conv252 = add i32 %149, 65533
  %150 = load ptr, ptr %s.addr, align 8
  %bi_valid254 = getelementptr inbounds %struct.internal_state, ptr %150, i64 0, i32 57
  %151 = load i32, ptr %bi_valid254, align 4
  %shl255 = shl i32 %conv252, %151
  %bi_buf256 = getelementptr inbounds %struct.internal_state, ptr %150, i64 0, i32 56
  %152 = load i16, ptr %bi_buf256, align 8
  %153 = trunc i32 %shl255 to i16
  %conv259 = or i16 %152, %153
  store i16 %conv259, ptr %bi_buf256, align 8
  %154 = load i32, ptr %len208, align 4
  %155 = load ptr, ptr %s.addr, align 8
  %bi_valid260 = getelementptr inbounds %struct.internal_state, ptr %155, i64 0, i32 57
  %156 = load i32, ptr %bi_valid260, align 4
  %add261 = add nsw i32 %156, %154
  store i32 %add261, ptr %bi_valid260, align 4
  br label %if.end507

if.else263:                                       ; preds = %if.else70
  %157 = load i32, ptr %count, align 4
  %cmp264 = icmp slt i32 %157, 11
  br i1 %cmp264, label %if.then266, label %if.else385

if.then266:                                       ; preds = %if.else263
  %158 = load ptr, ptr %s.addr, align 8
  %dl270 = getelementptr inbounds %struct.internal_state, ptr %158, i64 0, i32 39, i64 17, i32 1
  %159 = load i16, ptr %dl270, align 2
  %conv271 = zext i16 %159 to i32
  store i32 %conv271, ptr %len267, align 4
  %bi_valid272 = getelementptr inbounds %struct.internal_state, ptr %158, i64 0, i32 57
  %160 = load i32, ptr %bi_valid272, align 4
  %sub273 = sub nsw i32 16, %conv271
  %cmp274 = icmp sgt i32 %160, %sub273
  br i1 %cmp274, label %if.then276, label %if.else316

if.then276:                                       ; preds = %if.then266
  %161 = load ptr, ptr %s.addr, align 8
  %arrayidx279 = getelementptr inbounds %struct.internal_state, ptr %161, i64 0, i32 39, i64 17
  %162 = load i16, ptr %arrayidx279, align 4
  %conv281 = zext i16 %162 to i32
  store i32 %conv281, ptr %val277, align 4
  %conv283 = zext i16 %162 to i32
  %bi_valid284 = getelementptr inbounds %struct.internal_state, ptr %161, i64 0, i32 57
  %163 = load i32, ptr %bi_valid284, align 4
  %shl285 = shl i32 %conv283, %163
  %164 = load ptr, ptr %s.addr, align 8
  %bi_buf286 = getelementptr inbounds %struct.internal_state, ptr %164, i64 0, i32 56
  %165 = load i16, ptr %bi_buf286, align 8
  %166 = trunc i32 %shl285 to i16
  %conv289 = or i16 %165, %166
  store i16 %conv289, ptr %bi_buf286, align 8
  %conv293 = trunc i16 %conv289 to i8
  %167 = load ptr, ptr %s.addr, align 8
  %pending_buf294 = getelementptr inbounds %struct.internal_state, ptr %167, i64 0, i32 2
  %168 = load ptr, ptr %pending_buf294, align 8
  %pending295 = getelementptr inbounds %struct.internal_state, ptr %167, i64 0, i32 5
  %169 = load i64, ptr %pending295, align 8
  %inc296 = add i64 %169, 1
  store i64 %inc296, ptr %pending295, align 8
  %arrayidx297 = getelementptr inbounds i8, ptr %168, i64 %169
  store i8 %conv293, ptr %arrayidx297, align 1
  %170 = load ptr, ptr %s.addr, align 8
  %bi_buf298 = getelementptr inbounds %struct.internal_state, ptr %170, i64 0, i32 56
  %171 = load i16, ptr %bi_buf298, align 8
  %172 = lshr i16 %171, 8
  %conv301 = trunc i16 %172 to i8
  %pending_buf302 = getelementptr inbounds %struct.internal_state, ptr %170, i64 0, i32 2
  %173 = load ptr, ptr %pending_buf302, align 8
  %174 = load ptr, ptr %s.addr, align 8
  %pending303 = getelementptr inbounds %struct.internal_state, ptr %174, i64 0, i32 5
  %175 = load i64, ptr %pending303, align 8
  %inc304 = add i64 %175, 1
  store i64 %inc304, ptr %pending303, align 8
  %arrayidx305 = getelementptr inbounds i8, ptr %173, i64 %175
  store i8 %conv301, ptr %arrayidx305, align 1
  %176 = load i32, ptr %val277, align 4
  %conv307 = and i32 %176, 65535
  %177 = load ptr, ptr %s.addr, align 8
  %bi_valid308 = getelementptr inbounds %struct.internal_state, ptr %177, i64 0, i32 57
  %178 = load i32, ptr %bi_valid308, align 4
  %sub309 = sub nsw i32 16, %178
  %shr310 = lshr i32 %conv307, %sub309
  %conv311 = trunc i32 %shr310 to i16
  %bi_buf312 = getelementptr inbounds %struct.internal_state, ptr %177, i64 0, i32 56
  store i16 %conv311, ptr %bi_buf312, align 8
  %179 = load i32, ptr %len267, align 4
  %sub313 = add nsw i32 %179, -16
  %180 = load ptr, ptr %s.addr, align 8
  %bi_valid314 = getelementptr inbounds %struct.internal_state, ptr %180, i64 0, i32 57
  %181 = load i32, ptr %bi_valid314, align 4
  %add315 = add nsw i32 %181, %sub313
  store i32 %add315, ptr %bi_valid314, align 4
  br label %if.end329

if.else316:                                       ; preds = %if.then266
  %182 = load ptr, ptr %s.addr, align 8
  %arrayidx318 = getelementptr inbounds %struct.internal_state, ptr %182, i64 0, i32 39, i64 17
  %183 = load i16, ptr %arrayidx318, align 4
  %conv320 = zext i16 %183 to i32
  %bi_valid321 = getelementptr inbounds %struct.internal_state, ptr %182, i64 0, i32 57
  %184 = load i32, ptr %bi_valid321, align 4
  %shl322 = shl i32 %conv320, %184
  %185 = load ptr, ptr %s.addr, align 8
  %bi_buf323 = getelementptr inbounds %struct.internal_state, ptr %185, i64 0, i32 56
  %186 = load i16, ptr %bi_buf323, align 8
  %187 = trunc i32 %shl322 to i16
  %conv326 = or i16 %186, %187
  store i16 %conv326, ptr %bi_buf323, align 8
  %188 = load i32, ptr %len267, align 4
  %189 = load ptr, ptr %s.addr, align 8
  %bi_valid327 = getelementptr inbounds %struct.internal_state, ptr %189, i64 0, i32 57
  %190 = load i32, ptr %bi_valid327, align 4
  %add328 = add nsw i32 %190, %188
  store i32 %add328, ptr %bi_valid327, align 4
  br label %if.end329

if.end329:                                        ; preds = %if.else316, %if.then276
  store i32 3, ptr %len330, align 4
  %191 = load ptr, ptr %s.addr, align 8
  %bi_valid331 = getelementptr inbounds %struct.internal_state, ptr %191, i64 0, i32 57
  %192 = load i32, ptr %bi_valid331, align 4
  %cmp333 = icmp sgt i32 %192, 13
  br i1 %cmp333, label %if.then335, label %if.else372

if.then335:                                       ; preds = %if.end329
  %193 = load i32, ptr %count, align 4
  %sub337 = add nsw i32 %193, -3
  store i32 %sub337, ptr %val336, align 4
  %194 = load ptr, ptr %s.addr, align 8
  %bi_valid340 = getelementptr inbounds %struct.internal_state, ptr %194, i64 0, i32 57
  %195 = load i32, ptr %bi_valid340, align 4
  %shl341 = shl i32 %sub337, %195
  %bi_buf342 = getelementptr inbounds %struct.internal_state, ptr %194, i64 0, i32 56
  %196 = load i16, ptr %bi_buf342, align 8
  %197 = trunc i32 %shl341 to i16
  %conv345 = or i16 %196, %197
  store i16 %conv345, ptr %bi_buf342, align 8
  %198 = load ptr, ptr %s.addr, align 8
  %bi_buf346 = getelementptr inbounds %struct.internal_state, ptr %198, i64 0, i32 56
  %199 = load i16, ptr %bi_buf346, align 8
  %conv349 = trunc i16 %199 to i8
  %pending_buf350 = getelementptr inbounds %struct.internal_state, ptr %198, i64 0, i32 2
  %200 = load ptr, ptr %pending_buf350, align 8
  %pending351 = getelementptr inbounds %struct.internal_state, ptr %198, i64 0, i32 5
  %201 = load i64, ptr %pending351, align 8
  %inc352 = add i64 %201, 1
  store i64 %inc352, ptr %pending351, align 8
  %arrayidx353 = getelementptr inbounds i8, ptr %200, i64 %201
  store i8 %conv349, ptr %arrayidx353, align 1
  %202 = load ptr, ptr %s.addr, align 8
  %bi_buf354 = getelementptr inbounds %struct.internal_state, ptr %202, i64 0, i32 56
  %203 = load i16, ptr %bi_buf354, align 8
  %204 = lshr i16 %203, 8
  %conv357 = trunc i16 %204 to i8
  %pending_buf358 = getelementptr inbounds %struct.internal_state, ptr %202, i64 0, i32 2
  %205 = load ptr, ptr %pending_buf358, align 8
  %206 = load ptr, ptr %s.addr, align 8
  %pending359 = getelementptr inbounds %struct.internal_state, ptr %206, i64 0, i32 5
  %207 = load i64, ptr %pending359, align 8
  %inc360 = add i64 %207, 1
  store i64 %inc360, ptr %pending359, align 8
  %arrayidx361 = getelementptr inbounds i8, ptr %205, i64 %207
  store i8 %conv357, ptr %arrayidx361, align 1
  %208 = load i32, ptr %val336, align 4
  %conv363 = and i32 %208, 65535
  %209 = load ptr, ptr %s.addr, align 8
  %bi_valid364 = getelementptr inbounds %struct.internal_state, ptr %209, i64 0, i32 57
  %210 = load i32, ptr %bi_valid364, align 4
  %sub365 = sub nsw i32 16, %210
  %shr366 = lshr i32 %conv363, %sub365
  %conv367 = trunc i32 %shr366 to i16
  %bi_buf368 = getelementptr inbounds %struct.internal_state, ptr %209, i64 0, i32 56
  store i16 %conv367, ptr %bi_buf368, align 8
  %211 = load i32, ptr %len330, align 4
  %sub369 = add nsw i32 %211, -16
  %212 = load ptr, ptr %s.addr, align 8
  %bi_valid370 = getelementptr inbounds %struct.internal_state, ptr %212, i64 0, i32 57
  %213 = load i32, ptr %bi_valid370, align 4
  %add371 = add nsw i32 %213, %sub369
  store i32 %add371, ptr %bi_valid370, align 4
  br label %if.end507

if.else372:                                       ; preds = %if.end329
  %214 = load i32, ptr %count, align 4
  %conv374 = add i32 %214, 65533
  %215 = load ptr, ptr %s.addr, align 8
  %bi_valid376 = getelementptr inbounds %struct.internal_state, ptr %215, i64 0, i32 57
  %216 = load i32, ptr %bi_valid376, align 4
  %shl377 = shl i32 %conv374, %216
  %bi_buf378 = getelementptr inbounds %struct.internal_state, ptr %215, i64 0, i32 56
  %217 = load i16, ptr %bi_buf378, align 8
  %218 = trunc i32 %shl377 to i16
  %conv381 = or i16 %217, %218
  store i16 %conv381, ptr %bi_buf378, align 8
  %219 = load i32, ptr %len330, align 4
  %220 = load ptr, ptr %s.addr, align 8
  %bi_valid382 = getelementptr inbounds %struct.internal_state, ptr %220, i64 0, i32 57
  %221 = load i32, ptr %bi_valid382, align 4
  %add383 = add nsw i32 %221, %219
  store i32 %add383, ptr %bi_valid382, align 4
  br label %if.end507

if.else385:                                       ; preds = %if.else263
  %222 = load ptr, ptr %s.addr, align 8
  %dl389 = getelementptr inbounds %struct.internal_state, ptr %222, i64 0, i32 39, i64 18, i32 1
  %223 = load i16, ptr %dl389, align 2
  %conv390 = zext i16 %223 to i32
  store i32 %conv390, ptr %len386, align 4
  %bi_valid391 = getelementptr inbounds %struct.internal_state, ptr %222, i64 0, i32 57
  %224 = load i32, ptr %bi_valid391, align 4
  %sub392 = sub nsw i32 16, %conv390
  %cmp393 = icmp sgt i32 %224, %sub392
  br i1 %cmp393, label %if.then395, label %if.else435

if.then395:                                       ; preds = %if.else385
  %225 = load ptr, ptr %s.addr, align 8
  %arrayidx398 = getelementptr inbounds %struct.internal_state, ptr %225, i64 0, i32 39, i64 18
  %226 = load i16, ptr %arrayidx398, align 4
  %conv400 = zext i16 %226 to i32
  store i32 %conv400, ptr %val396, align 4
  %conv402 = zext i16 %226 to i32
  %bi_valid403 = getelementptr inbounds %struct.internal_state, ptr %225, i64 0, i32 57
  %227 = load i32, ptr %bi_valid403, align 4
  %shl404 = shl i32 %conv402, %227
  %228 = load ptr, ptr %s.addr, align 8
  %bi_buf405 = getelementptr inbounds %struct.internal_state, ptr %228, i64 0, i32 56
  %229 = load i16, ptr %bi_buf405, align 8
  %230 = trunc i32 %shl404 to i16
  %conv408 = or i16 %229, %230
  store i16 %conv408, ptr %bi_buf405, align 8
  %conv412 = trunc i16 %conv408 to i8
  %231 = load ptr, ptr %s.addr, align 8
  %pending_buf413 = getelementptr inbounds %struct.internal_state, ptr %231, i64 0, i32 2
  %232 = load ptr, ptr %pending_buf413, align 8
  %pending414 = getelementptr inbounds %struct.internal_state, ptr %231, i64 0, i32 5
  %233 = load i64, ptr %pending414, align 8
  %inc415 = add i64 %233, 1
  store i64 %inc415, ptr %pending414, align 8
  %arrayidx416 = getelementptr inbounds i8, ptr %232, i64 %233
  store i8 %conv412, ptr %arrayidx416, align 1
  %234 = load ptr, ptr %s.addr, align 8
  %bi_buf417 = getelementptr inbounds %struct.internal_state, ptr %234, i64 0, i32 56
  %235 = load i16, ptr %bi_buf417, align 8
  %236 = lshr i16 %235, 8
  %conv420 = trunc i16 %236 to i8
  %pending_buf421 = getelementptr inbounds %struct.internal_state, ptr %234, i64 0, i32 2
  %237 = load ptr, ptr %pending_buf421, align 8
  %238 = load ptr, ptr %s.addr, align 8
  %pending422 = getelementptr inbounds %struct.internal_state, ptr %238, i64 0, i32 5
  %239 = load i64, ptr %pending422, align 8
  %inc423 = add i64 %239, 1
  store i64 %inc423, ptr %pending422, align 8
  %arrayidx424 = getelementptr inbounds i8, ptr %237, i64 %239
  store i8 %conv420, ptr %arrayidx424, align 1
  %240 = load i32, ptr %val396, align 4
  %conv426 = and i32 %240, 65535
  %241 = load ptr, ptr %s.addr, align 8
  %bi_valid427 = getelementptr inbounds %struct.internal_state, ptr %241, i64 0, i32 57
  %242 = load i32, ptr %bi_valid427, align 4
  %sub428 = sub nsw i32 16, %242
  %shr429 = lshr i32 %conv426, %sub428
  %conv430 = trunc i32 %shr429 to i16
  %bi_buf431 = getelementptr inbounds %struct.internal_state, ptr %241, i64 0, i32 56
  store i16 %conv430, ptr %bi_buf431, align 8
  %243 = load i32, ptr %len386, align 4
  %sub432 = add nsw i32 %243, -16
  %244 = load ptr, ptr %s.addr, align 8
  %bi_valid433 = getelementptr inbounds %struct.internal_state, ptr %244, i64 0, i32 57
  %245 = load i32, ptr %bi_valid433, align 4
  %add434 = add nsw i32 %245, %sub432
  store i32 %add434, ptr %bi_valid433, align 4
  br label %if.end448

if.else435:                                       ; preds = %if.else385
  %246 = load ptr, ptr %s.addr, align 8
  %arrayidx437 = getelementptr inbounds %struct.internal_state, ptr %246, i64 0, i32 39, i64 18
  %247 = load i16, ptr %arrayidx437, align 4
  %conv439 = zext i16 %247 to i32
  %bi_valid440 = getelementptr inbounds %struct.internal_state, ptr %246, i64 0, i32 57
  %248 = load i32, ptr %bi_valid440, align 4
  %shl441 = shl i32 %conv439, %248
  %249 = load ptr, ptr %s.addr, align 8
  %bi_buf442 = getelementptr inbounds %struct.internal_state, ptr %249, i64 0, i32 56
  %250 = load i16, ptr %bi_buf442, align 8
  %251 = trunc i32 %shl441 to i16
  %conv445 = or i16 %250, %251
  store i16 %conv445, ptr %bi_buf442, align 8
  %252 = load i32, ptr %len386, align 4
  %253 = load ptr, ptr %s.addr, align 8
  %bi_valid446 = getelementptr inbounds %struct.internal_state, ptr %253, i64 0, i32 57
  %254 = load i32, ptr %bi_valid446, align 4
  %add447 = add nsw i32 %254, %252
  store i32 %add447, ptr %bi_valid446, align 4
  br label %if.end448

if.end448:                                        ; preds = %if.else435, %if.then395
  store i32 7, ptr %len449, align 4
  %255 = load ptr, ptr %s.addr, align 8
  %bi_valid450 = getelementptr inbounds %struct.internal_state, ptr %255, i64 0, i32 57
  %256 = load i32, ptr %bi_valid450, align 4
  %cmp452 = icmp sgt i32 %256, 9
  br i1 %cmp452, label %if.then454, label %if.else491

if.then454:                                       ; preds = %if.end448
  %257 = load i32, ptr %count, align 4
  %sub456 = add nsw i32 %257, -11
  store i32 %sub456, ptr %val455, align 4
  %258 = load ptr, ptr %s.addr, align 8
  %bi_valid459 = getelementptr inbounds %struct.internal_state, ptr %258, i64 0, i32 57
  %259 = load i32, ptr %bi_valid459, align 4
  %shl460 = shl i32 %sub456, %259
  %bi_buf461 = getelementptr inbounds %struct.internal_state, ptr %258, i64 0, i32 56
  %260 = load i16, ptr %bi_buf461, align 8
  %261 = trunc i32 %shl460 to i16
  %conv464 = or i16 %260, %261
  store i16 %conv464, ptr %bi_buf461, align 8
  %262 = load ptr, ptr %s.addr, align 8
  %bi_buf465 = getelementptr inbounds %struct.internal_state, ptr %262, i64 0, i32 56
  %263 = load i16, ptr %bi_buf465, align 8
  %conv468 = trunc i16 %263 to i8
  %pending_buf469 = getelementptr inbounds %struct.internal_state, ptr %262, i64 0, i32 2
  %264 = load ptr, ptr %pending_buf469, align 8
  %pending470 = getelementptr inbounds %struct.internal_state, ptr %262, i64 0, i32 5
  %265 = load i64, ptr %pending470, align 8
  %inc471 = add i64 %265, 1
  store i64 %inc471, ptr %pending470, align 8
  %arrayidx472 = getelementptr inbounds i8, ptr %264, i64 %265
  store i8 %conv468, ptr %arrayidx472, align 1
  %266 = load ptr, ptr %s.addr, align 8
  %bi_buf473 = getelementptr inbounds %struct.internal_state, ptr %266, i64 0, i32 56
  %267 = load i16, ptr %bi_buf473, align 8
  %268 = lshr i16 %267, 8
  %conv476 = trunc i16 %268 to i8
  %pending_buf477 = getelementptr inbounds %struct.internal_state, ptr %266, i64 0, i32 2
  %269 = load ptr, ptr %pending_buf477, align 8
  %270 = load ptr, ptr %s.addr, align 8
  %pending478 = getelementptr inbounds %struct.internal_state, ptr %270, i64 0, i32 5
  %271 = load i64, ptr %pending478, align 8
  %inc479 = add i64 %271, 1
  store i64 %inc479, ptr %pending478, align 8
  %arrayidx480 = getelementptr inbounds i8, ptr %269, i64 %271
  store i8 %conv476, ptr %arrayidx480, align 1
  %272 = load i32, ptr %val455, align 4
  %conv482 = and i32 %272, 65535
  %273 = load ptr, ptr %s.addr, align 8
  %bi_valid483 = getelementptr inbounds %struct.internal_state, ptr %273, i64 0, i32 57
  %274 = load i32, ptr %bi_valid483, align 4
  %sub484 = sub nsw i32 16, %274
  %shr485 = lshr i32 %conv482, %sub484
  %conv486 = trunc i32 %shr485 to i16
  %bi_buf487 = getelementptr inbounds %struct.internal_state, ptr %273, i64 0, i32 56
  store i16 %conv486, ptr %bi_buf487, align 8
  %275 = load i32, ptr %len449, align 4
  %sub488 = add nsw i32 %275, -16
  %276 = load ptr, ptr %s.addr, align 8
  %bi_valid489 = getelementptr inbounds %struct.internal_state, ptr %276, i64 0, i32 57
  %277 = load i32, ptr %bi_valid489, align 4
  %add490 = add nsw i32 %277, %sub488
  store i32 %add490, ptr %bi_valid489, align 4
  br label %if.end507

if.else491:                                       ; preds = %if.end448
  %278 = load i32, ptr %count, align 4
  %conv493 = add i32 %278, 65525
  %279 = load ptr, ptr %s.addr, align 8
  %bi_valid495 = getelementptr inbounds %struct.internal_state, ptr %279, i64 0, i32 57
  %280 = load i32, ptr %bi_valid495, align 4
  %shl496 = shl i32 %conv493, %280
  %bi_buf497 = getelementptr inbounds %struct.internal_state, ptr %279, i64 0, i32 56
  %281 = load i16, ptr %bi_buf497, align 8
  %282 = trunc i32 %shl496 to i16
  %conv500 = or i16 %281, %282
  store i16 %conv500, ptr %bi_buf497, align 8
  %283 = load i32, ptr %len449, align 4
  %284 = load ptr, ptr %s.addr, align 8
  %bi_valid501 = getelementptr inbounds %struct.internal_state, ptr %284, i64 0, i32 57
  %285 = load i32, ptr %bi_valid501, align 4
  %add502 = add nsw i32 %285, %283
  store i32 %add502, ptr %bi_valid501, align 4
  br label %if.end507

if.end507:                                        ; preds = %do.cond, %if.else372, %if.then335, %if.else491, %if.then454, %if.then213, %if.else250
  store i32 0, ptr %count, align 4
  %286 = load i32, ptr %curlen, align 4
  store i32 %286, ptr %prevlen, align 4
  %287 = load i32, ptr %nextlen, align 4
  %cmp508 = icmp eq i32 %287, 0
  br i1 %cmp508, label %if.end517, label %if.else511

if.else511:                                       ; preds = %if.end507
  %288 = load i32, ptr %curlen, align 4
  %289 = load i32, ptr %nextlen, align 4
  %cmp512 = icmp eq i32 %288, %289
  %. = select i1 %cmp512, i32 6, i32 7
  %.5 = select i1 %cmp512, i32 3, i32 4
  br label %if.end517

if.end517:                                        ; preds = %if.end507, %if.else511
  %storemerge4 = phi i32 [ %., %if.else511 ], [ 138, %if.end507 ]
  %storemerge3 = phi i32 [ %.5, %if.else511 ], [ 3, %if.end507 ]
  store i32 %storemerge4, ptr %max_count, align 4
  store i32 %storemerge3, ptr %min_count, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %if.end517
  %290 = load i32, ptr %n, align 4
  %inc518 = add nsw i32 %290, 1
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
