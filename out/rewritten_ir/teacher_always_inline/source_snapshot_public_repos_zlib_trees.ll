; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_public_repos_zlib_trees.prepared.ll'
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
  %bi_used = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 58
  store i32 0, ptr %bi_used, align 8
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
  br i1 %cmp11.i, label %for.body12.i, label %pc_inline_source_snapshot_public_repos_zlib_trees_1.exit

for.body12.i:                                     ; preds = %for.cond10.i
  %7 = load ptr, ptr %s.addr.i, align 8
  %8 = load i32, ptr %n.i, align 4
  %idxprom13.i = sext i32 %8 to i64
  %arrayidx14.i = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 39, i64 %idxprom13.i
  store i16 0, ptr %arrayidx14.i, align 4
  %inc17.i = add nsw i32 %8, 1
  br label %for.cond10.i, !llvm.loop !9

pc_inline_source_snapshot_public_repos_zlib_trees_1.exit: ; preds = %for.cond10.i
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
  %sym_next.i = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 50
  store i32 0, ptr %sym_next.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_tr_stored_block(ptr noundef %s, ptr noundef %buf, i64 noundef %stored_len, i32 noundef %last) #0 {
entry:
  %s.addr.i = alloca ptr, align 8
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i)
  store ptr %30, ptr %s.addr.i, align 8
  %bi_valid.i = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 57
  %31 = load i32, ptr %bi_valid.i, align 4
  %cmp.i = icmp sgt i32 %31, 8
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %32 = load ptr, ptr %s.addr.i, align 8
  %bi_buf.i = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 56
  %33 = load i16, ptr %bi_buf.i, align 8
  %conv1.i = trunc i16 %33 to i8
  %pending_buf.i = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %pending_buf.i, align 8
  %pending.i = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 5
  %35 = load i64, ptr %pending.i, align 8
  %inc.i = add i64 %35, 1
  store i64 %inc.i, ptr %pending.i, align 8
  %arrayidx.i = getelementptr inbounds i8, ptr %34, i64 %35
  store i8 %conv1.i, ptr %arrayidx.i, align 1
  %36 = load ptr, ptr %s.addr.i, align 8
  %bi_buf2.i = getelementptr inbounds %struct.internal_state, ptr %36, i64 0, i32 56
  %37 = load i16, ptr %bi_buf2.i, align 8
  %38 = lshr i16 %37, 8
  %conv4.i = trunc i16 %38 to i8
  %pending_buf5.i = getelementptr inbounds %struct.internal_state, ptr %36, i64 0, i32 2
  %39 = load ptr, ptr %pending_buf5.i, align 8
  %40 = load ptr, ptr %s.addr.i, align 8
  %pending6.i = getelementptr inbounds %struct.internal_state, ptr %40, i64 0, i32 5
  %41 = load i64, ptr %pending6.i, align 8
  %inc7.i = add i64 %41, 1
  store i64 %inc7.i, ptr %pending6.i, align 8
  %arrayidx8.i = getelementptr inbounds i8, ptr %39, i64 %41
  store i8 %conv4.i, ptr %arrayidx8.i, align 1
  br label %pc_inline_source_snapshot_public_repos_zlib_trees_2.exit

if.else.i:                                        ; preds = %if.end
  %42 = load ptr, ptr %s.addr.i, align 8
  %bi_valid9.i = getelementptr inbounds %struct.internal_state, ptr %42, i64 0, i32 57
  %43 = load i32, ptr %bi_valid9.i, align 4
  %cmp10.i = icmp sgt i32 %43, 0
  br i1 %cmp10.i, label %if.then12.i, label %pc_inline_source_snapshot_public_repos_zlib_trees_2.exit

if.then12.i:                                      ; preds = %if.else.i
  %44 = load ptr, ptr %s.addr.i, align 8
  %bi_buf13.i = getelementptr inbounds %struct.internal_state, ptr %44, i64 0, i32 56
  %45 = load i16, ptr %bi_buf13.i, align 8
  %conv14.i = trunc i16 %45 to i8
  %pending_buf15.i = getelementptr inbounds %struct.internal_state, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %pending_buf15.i, align 8
  %pending16.i = getelementptr inbounds %struct.internal_state, ptr %44, i64 0, i32 5
  %47 = load i64, ptr %pending16.i, align 8
  %inc17.i = add i64 %47, 1
  store i64 %inc17.i, ptr %pending16.i, align 8
  %arrayidx18.i = getelementptr inbounds i8, ptr %46, i64 %47
  store i8 %conv14.i, ptr %arrayidx18.i, align 1
  br label %pc_inline_source_snapshot_public_repos_zlib_trees_2.exit

pc_inline_source_snapshot_public_repos_zlib_trees_2.exit: ; preds = %if.else.i, %if.then12.i, %if.then.i
  %48 = load ptr, ptr %s.addr.i, align 8
  %bi_valid20.i = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 57
  %49 = load i32, ptr %bi_valid20.i, align 4
  %sub.i = add i32 %49, 7
  %and21.i = and i32 %sub.i, 7
  %add.i = add nuw nsw i32 %and21.i, 1
  %bi_used.i = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 58
  store i32 %add.i, ptr %bi_used.i, align 8
  %50 = load ptr, ptr %s.addr.i, align 8
  %bi_buf22.i = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 56
  store i16 0, ptr %bi_buf22.i, align 8
  %bi_valid23.i = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 57
  store i32 0, ptr %bi_valid23.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i)
  %51 = load i64, ptr %stored_len.addr, align 8
  %conv36 = trunc i64 %51 to i8
  %52 = load ptr, ptr %s.addr, align 8
  %pending_buf40 = getelementptr inbounds %struct.internal_state, ptr %52, i64 0, i32 2
  %53 = load ptr, ptr %pending_buf40, align 8
  %pending41 = getelementptr inbounds %struct.internal_state, ptr %52, i64 0, i32 5
  %54 = load i64, ptr %pending41, align 8
  %inc42 = add i64 %54, 1
  store i64 %inc42, ptr %pending41, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %53, i64 %54
  store i8 %conv36, ptr %arrayidx43, align 1
  %55 = load i64, ptr %stored_len.addr, align 8
  %conv451 = lshr i64 %55, 8
  %conv47 = trunc i64 %conv451 to i8
  %56 = load ptr, ptr %s.addr, align 8
  %pending_buf48 = getelementptr inbounds %struct.internal_state, ptr %56, i64 0, i32 2
  %57 = load ptr, ptr %pending_buf48, align 8
  %pending49 = getelementptr inbounds %struct.internal_state, ptr %56, i64 0, i32 5
  %58 = load i64, ptr %pending49, align 8
  %inc50 = add i64 %58, 1
  store i64 %inc50, ptr %pending49, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %57, i64 %58
  store i8 %conv47, ptr %arrayidx51, align 1
  %59 = load i64, ptr %stored_len.addr, align 8
  %60 = trunc i64 %59 to i8
  %and54 = xor i8 %60, -1
  %61 = load ptr, ptr %s.addr, align 8
  %pending_buf56 = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 2
  %62 = load ptr, ptr %pending_buf56, align 8
  %pending57 = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 5
  %63 = load i64, ptr %pending57, align 8
  %inc58 = add i64 %63, 1
  store i64 %inc58, ptr %pending57, align 8
  %arrayidx59 = getelementptr inbounds i8, ptr %62, i64 %63
  store i8 %and54, ptr %arrayidx59, align 1
  %64 = load i64, ptr %stored_len.addr, align 8
  %conv612 = lshr i64 %64, 8
  %65 = trunc i64 %conv612 to i8
  %conv64 = xor i8 %65, -1
  %66 = load ptr, ptr %s.addr, align 8
  %pending_buf65 = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 2
  %67 = load ptr, ptr %pending_buf65, align 8
  %pending66 = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 5
  %68 = load i64, ptr %pending66, align 8
  %inc67 = add i64 %68, 1
  store i64 %inc67, ptr %pending66, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %67, i64 %68
  store i8 %conv64, ptr %arrayidx68, align 1
  %69 = load i64, ptr %stored_len.addr, align 8
  %tobool.not = icmp eq i64 %69, 0
  br i1 %tobool.not, label %if.end75, label %if.then69

if.then69:                                        ; preds = %pc_inline_source_snapshot_public_repos_zlib_trees_2.exit
  %70 = load ptr, ptr %s.addr, align 8
  %pending_buf70 = getelementptr inbounds %struct.internal_state, ptr %70, i64 0, i32 2
  %71 = load ptr, ptr %pending_buf70, align 8
  %pending71 = getelementptr inbounds %struct.internal_state, ptr %70, i64 0, i32 5
  %72 = load i64, ptr %pending71, align 8
  %add.ptr = getelementptr inbounds i8, ptr %71, i64 %72
  %73 = load ptr, ptr %buf.addr, align 8
  %74 = load i64, ptr %stored_len.addr, align 8
  %75 = load ptr, ptr %s.addr, align 8
  %pending_buf72 = getelementptr inbounds %struct.internal_state, ptr %75, i64 0, i32 2
  %76 = load ptr, ptr %pending_buf72, align 8
  %pending73 = getelementptr inbounds %struct.internal_state, ptr %75, i64 0, i32 5
  %77 = load i64, ptr %pending73, align 8
  %add.ptr74 = getelementptr inbounds i8, ptr %76, i64 %77
  %78 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr74, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %add.ptr, ptr noundef %73, i64 noundef %74, i64 noundef %78) #5
  br label %if.end75

if.end75:                                         ; preds = %if.then69, %pc_inline_source_snapshot_public_repos_zlib_trees_2.exit
  %79 = load i64, ptr %stored_len.addr, align 8
  %80 = load ptr, ptr %s.addr, align 8
  %pending76 = getelementptr inbounds %struct.internal_state, ptr %80, i64 0, i32 5
  %81 = load i64, ptr %pending76, align 8
  %add77 = add i64 %81, %79
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
  %s.addr.i = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i)
  store ptr %s, ptr %s.addr.i, align 8
  %bi_valid.i = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 57
  %0 = load i32, ptr %bi_valid.i, align 4
  %cmp.i = icmp eq i32 %0, 16
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr %s.addr.i, align 8
  %bi_buf.i = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 56
  %2 = load i16, ptr %bi_buf.i, align 8
  %conv1.i = trunc i16 %2 to i8
  %pending_buf.i = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 2
  %3 = load ptr, ptr %pending_buf.i, align 8
  %pending.i = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 5
  %4 = load i64, ptr %pending.i, align 8
  %inc.i = add i64 %4, 1
  store i64 %inc.i, ptr %pending.i, align 8
  %arrayidx.i = getelementptr inbounds i8, ptr %3, i64 %4
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
  %10 = load i64, ptr %pending6.i, align 8
  %inc7.i = add i64 %10, 1
  store i64 %inc7.i, ptr %pending6.i, align 8
  %arrayidx8.i = getelementptr inbounds i8, ptr %8, i64 %10
  store i8 %conv4.i, ptr %arrayidx8.i, align 1
  %11 = load ptr, ptr %s.addr.i, align 8
  %bi_buf9.i = getelementptr inbounds %struct.internal_state, ptr %11, i64 0, i32 56
  store i16 0, ptr %bi_buf9.i, align 8
  %bi_valid10.i = getelementptr inbounds %struct.internal_state, ptr %11, i64 0, i32 57
  store i32 0, ptr %bi_valid10.i, align 4
  br label %pc_inline_source_snapshot_public_repos_zlib_trees_3.exit

if.else.i:                                        ; preds = %entry
  %12 = load ptr, ptr %s.addr.i, align 8
  %bi_valid11.i = getelementptr inbounds %struct.internal_state, ptr %12, i64 0, i32 57
  %13 = load i32, ptr %bi_valid11.i, align 4
  %cmp12.i = icmp sgt i32 %13, 7
  br i1 %cmp12.i, label %if.then14.i, label %pc_inline_source_snapshot_public_repos_zlib_trees_3.exit

if.then14.i:                                      ; preds = %if.else.i
  %14 = load ptr, ptr %s.addr.i, align 8
  %bi_buf15.i = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 56
  %15 = load i16, ptr %bi_buf15.i, align 8
  %conv16.i = trunc i16 %15 to i8
  %pending_buf17.i = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %pending_buf17.i, align 8
  %pending18.i = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 5
  %17 = load i64, ptr %pending18.i, align 8
  %inc19.i = add i64 %17, 1
  store i64 %inc19.i, ptr %pending18.i, align 8
  %arrayidx20.i = getelementptr inbounds i8, ptr %16, i64 %17
  store i8 %conv16.i, ptr %arrayidx20.i, align 1
  %18 = load ptr, ptr %s.addr.i, align 8
  %bi_buf21.i = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 56
  %19 = load i16, ptr %bi_buf21.i, align 8
  %20 = lshr i16 %19, 8
  store i16 %20, ptr %bi_buf21.i, align 8
  %bi_valid25.i = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 57
  %21 = load i32, ptr %bi_valid25.i, align 4
  %sub.i = add nsw i32 %21, -8
  store i32 %sub.i, ptr %bi_valid25.i, align 4
  br label %pc_inline_source_snapshot_public_repos_zlib_trees_3.exit

pc_inline_source_snapshot_public_repos_zlib_trees_3.exit: ; preds = %if.else.i, %if.then14.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_tr_align(ptr noundef %s) #0 {
entry:
  %s.addr.i = alloca ptr, align 8
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i)
  store ptr %49, ptr %s.addr.i, align 8
  %bi_valid.i = getelementptr inbounds %struct.internal_state, ptr %49, i64 0, i32 57
  %50 = load i32, ptr %bi_valid.i, align 4
  %cmp.i = icmp eq i32 %50, 16
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end85
  %51 = load ptr, ptr %s.addr.i, align 8
  %bi_buf.i = getelementptr inbounds %struct.internal_state, ptr %51, i64 0, i32 56
  %52 = load i16, ptr %bi_buf.i, align 8
  %conv1.i = trunc i16 %52 to i8
  %pending_buf.i = getelementptr inbounds %struct.internal_state, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %pending_buf.i, align 8
  %pending.i = getelementptr inbounds %struct.internal_state, ptr %51, i64 0, i32 5
  %54 = load i64, ptr %pending.i, align 8
  %inc.i = add i64 %54, 1
  store i64 %inc.i, ptr %pending.i, align 8
  %arrayidx.i = getelementptr inbounds i8, ptr %53, i64 %54
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
  %60 = load i64, ptr %pending6.i, align 8
  %inc7.i = add i64 %60, 1
  store i64 %inc7.i, ptr %pending6.i, align 8
  %arrayidx8.i = getelementptr inbounds i8, ptr %58, i64 %60
  store i8 %conv4.i, ptr %arrayidx8.i, align 1
  %61 = load ptr, ptr %s.addr.i, align 8
  %bi_buf9.i = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 56
  store i16 0, ptr %bi_buf9.i, align 8
  %bi_valid10.i = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 57
  store i32 0, ptr %bi_valid10.i, align 4
  br label %pc_inline_source_snapshot_public_repos_zlib_trees_4.exit

if.else.i:                                        ; preds = %if.end85
  %62 = load ptr, ptr %s.addr.i, align 8
  %bi_valid11.i = getelementptr inbounds %struct.internal_state, ptr %62, i64 0, i32 57
  %63 = load i32, ptr %bi_valid11.i, align 4
  %cmp12.i = icmp sgt i32 %63, 7
  br i1 %cmp12.i, label %if.then14.i, label %pc_inline_source_snapshot_public_repos_zlib_trees_4.exit

if.then14.i:                                      ; preds = %if.else.i
  %64 = load ptr, ptr %s.addr.i, align 8
  %bi_buf15.i = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 56
  %65 = load i16, ptr %bi_buf15.i, align 8
  %conv16.i = trunc i16 %65 to i8
  %pending_buf17.i = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %pending_buf17.i, align 8
  %pending18.i = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 5
  %67 = load i64, ptr %pending18.i, align 8
  %inc19.i = add i64 %67, 1
  store i64 %inc19.i, ptr %pending18.i, align 8
  %arrayidx20.i = getelementptr inbounds i8, ptr %66, i64 %67
  store i8 %conv16.i, ptr %arrayidx20.i, align 1
  %68 = load ptr, ptr %s.addr.i, align 8
  %bi_buf21.i = getelementptr inbounds %struct.internal_state, ptr %68, i64 0, i32 56
  %69 = load i16, ptr %bi_buf21.i, align 8
  %70 = lshr i16 %69, 8
  store i16 %70, ptr %bi_buf21.i, align 8
  %bi_valid25.i = getelementptr inbounds %struct.internal_state, ptr %68, i64 0, i32 57
  %71 = load i32, ptr %bi_valid25.i, align 4
  %sub.i = add nsw i32 %71, -8
  store i32 %sub.i, ptr %bi_valid25.i, align 4
  br label %pc_inline_source_snapshot_public_repos_zlib_trees_4.exit

pc_inline_source_snapshot_public_repos_zlib_trees_4.exit: ; preds = %if.else.i, %if.then14.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_tr_flush_block(ptr noundef %s, ptr noundef %buf, i64 noundef %stored_len, i32 noundef %last) #0 {
entry:
  %s.addr.i753 = alloca ptr, align 8
  %s.addr.i736 = alloca ptr, align 8
  %n.i737 = alloca i32, align 4
  %s.addr.i318 = alloca ptr, align 8
  %ltree.addr.i319 = alloca ptr, align 8
  %dtree.addr.i320 = alloca ptr, align 8
  %dist.i321 = alloca i32, align 4
  %lc.i322 = alloca i32, align 4
  %sx.i323 = alloca i32, align 4
  %code.i324 = alloca i32, align 4
  %extra.i325 = alloca i32, align 4
  %len.i326 = alloca i32, align 4
  %val.i327 = alloca i32, align 4
  %len69.i328 = alloca i32, align 4
  %val81.i329 = alloca i32, align 4
  %len146.i330 = alloca i32, align 4
  %val152.i331 = alloca i32, align 4
  %len210.i332 = alloca i32, align 4
  %val220.i333 = alloca i32, align 4
  %len281.i334 = alloca i32, align 4
  %val287.i335 = alloca i32, align 4
  %len340.i336 = alloca i32, align 4
  %val349.i337 = alloca i32, align 4
  %s.addr.i242 = alloca ptr, align 8
  %lcodes.addr.i = alloca i32, align 4
  %dcodes.addr.i = alloca i32, align 4
  %blcodes.addr.i = alloca i32, align 4
  %rank.i = alloca i32, align 4
  %len.i243 = alloca i32, align 4
  %val.i244 = alloca i32, align 4
  %len36.i = alloca i32, align 4
  %val42.i = alloca i32, align 4
  %len91.i = alloca i32, align 4
  %val97.i = alloca i32, align 4
  %len148.i = alloca i32, align 4
  %val154.i = alloca i32, align 4
  %s.addr.i201 = alloca ptr, align 8
  %ltree.addr.i = alloca ptr, align 8
  %dtree.addr.i = alloca ptr, align 8
  %dist.i = alloca i32, align 4
  %lc.i = alloca i32, align 4
  %sx.i = alloca i32, align 4
  %code.i = alloca i32, align 4
  %extra.i = alloca i32, align 4
  %len.i202 = alloca i32, align 4
  %val.i203 = alloca i32, align 4
  %len69.i = alloca i32, align 4
  %val81.i = alloca i32, align 4
  %len146.i = alloca i32, align 4
  %val152.i = alloca i32, align 4
  %len210.i = alloca i32, align 4
  %val220.i = alloca i32, align 4
  %len281.i = alloca i32, align 4
  %val287.i = alloca i32, align 4
  %len340.i = alloca i32, align 4
  %val349.i = alloca i32, align 4
  %s.addr.i186 = alloca ptr, align 8
  %buf.addr.i = alloca ptr, align 8
  %stored_len.addr.i = alloca i64, align 8
  %last.addr.i = alloca i32, align 4
  %len.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  %s.addr.i169 = alloca ptr, align 8
  %max_blindex.i = alloca i32, align 4
  %s.addr.i14 = alloca ptr, align 8
  %desc.addr.i15 = alloca ptr, align 8
  %tree.i16 = alloca ptr, align 8
  %stree.i17 = alloca ptr, align 8
  %elems.i18 = alloca i32, align 4
  %n.i19 = alloca i32, align 4
  %m.i20 = alloca i32, align 4
  %max_code.i21 = alloca i32, align 4
  %node.i22 = alloca i32, align 4
  %s.addr.i1 = alloca ptr, align 8
  %desc.addr.i = alloca ptr, align 8
  %tree.i = alloca ptr, align 8
  %stree.i = alloca ptr, align 8
  %elems.i = alloca i32, align 4
  %n.i2 = alloca i32, align 4
  %m.i = alloca i32, align 4
  %max_code.i = alloca i32, align 4
  %node.i = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %s.addr.i = alloca ptr, align 8
  %block_mask.i = alloca i64, align 8
  %n.i = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %block_mask.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i)
  store ptr %4, ptr %s.addr.i, align 8
  store i64 4093624447, ptr %block_mask.i, align 8
  store i32 0, ptr %n.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i, %if.then2
  %5 = load i32, ptr %n.i, align 4
  %cmp.i = icmp slt i32 %5, 32
  br i1 %cmp.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %6 = load i64, ptr %block_mask.i, align 8
  %and.i = and i64 %6, 1
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %7 = load ptr, ptr %s.addr.i, align 8
  %8 = load i32, ptr %n.i, align 4
  %idxprom.i = sext i32 %8 to i64
  %arrayidx.i = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 37, i64 %idxprom.i
  %9 = load i16, ptr %arrayidx.i, align 4
  %cmp1.i.not = icmp eq i16 %9, 0
  br i1 %cmp1.i.not, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i
  store i32 0, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_zlib_trees_5.exit

if.end.i:                                         ; preds = %land.lhs.true.i, %for.body.i
  %10 = load i32, ptr %n.i, align 4
  %inc.i = add nsw i32 %10, 1
  store i32 %inc.i, ptr %n.i, align 4
  %11 = load i64, ptr %block_mask.i, align 8
  %shr.i = lshr i64 %11, 1
  store i64 %shr.i, ptr %block_mask.i, align 8
  br label %for.cond.i, !llvm.loop !10

for.end.i:                                        ; preds = %for.cond.i
  %12 = load ptr, ptr %s.addr.i, align 8
  %arrayidx4.i = getelementptr inbounds %struct.internal_state, ptr %12, i64 0, i32 37, i64 9
  %13 = load i16, ptr %arrayidx4.i, align 4
  %cmp7.i.not = icmp eq i16 %13, 0
  br i1 %cmp7.i.not, label %lor.lhs.false.i, label %if.then22.i

lor.lhs.false.i:                                  ; preds = %for.end.i
  %14 = load ptr, ptr %s.addr.i, align 8
  %arrayidx10.i = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 37, i64 10
  %15 = load i16, ptr %arrayidx10.i, align 4
  %cmp13.i.not = icmp eq i16 %15, 0
  br i1 %cmp13.i.not, label %lor.lhs.false15.i, label %if.then22.i

lor.lhs.false15.i:                                ; preds = %lor.lhs.false.i
  %16 = load ptr, ptr %s.addr.i, align 8
  %arrayidx17.i = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 37, i64 13
  %17 = load i16, ptr %arrayidx17.i, align 4
  %cmp20.i.not = icmp eq i16 %17, 0
  br i1 %cmp20.i.not, label %for.cond24.i, label %if.then22.i

if.then22.i:                                      ; preds = %lor.lhs.false15.i, %lor.lhs.false.i, %for.end.i
  store i32 1, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_zlib_trees_5.exit

for.cond24.i:                                     ; preds = %lor.lhs.false15.i, %if.end36.i
  %storemerge785 = phi i32 [ %inc38.i, %if.end36.i ], [ 32, %lor.lhs.false15.i ]
  store i32 %storemerge785, ptr %n.i, align 4
  %cmp25.i = icmp slt i32 %storemerge785, 256
  br i1 %cmp25.i, label %for.body27.i, label %for.end39.i

for.body27.i:                                     ; preds = %for.cond24.i
  %18 = load ptr, ptr %s.addr.i, align 8
  %19 = load i32, ptr %n.i, align 4
  %idxprom29.i = sext i32 %19 to i64
  %arrayidx30.i = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 37, i64 %idxprom29.i
  %20 = load i16, ptr %arrayidx30.i, align 4
  %cmp33.i.not = icmp eq i16 %20, 0
  br i1 %cmp33.i.not, label %if.end36.i, label %if.then35.i

if.then35.i:                                      ; preds = %for.body27.i
  store i32 1, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_zlib_trees_5.exit

if.end36.i:                                       ; preds = %for.body27.i
  %21 = load i32, ptr %n.i, align 4
  %inc38.i = add nsw i32 %21, 1
  br label %for.cond24.i, !llvm.loop !11

for.end39.i:                                      ; preds = %for.cond24.i
  store i32 0, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_zlib_trees_5.exit

pc_inline_source_snapshot_public_repos_zlib_trees_5.exit: ; preds = %if.then.i, %if.then22.i, %if.then35.i, %for.end39.i
  %22 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %block_mask.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i)
  %23 = load ptr, ptr %s.addr, align 8
  %24 = load ptr, ptr %23, align 8
  %data_type4 = getelementptr inbounds %struct.z_stream_s, ptr %24, i64 0, i32 11
  store i32 %22, ptr %data_type4, align 8
  br label %if.end

if.end:                                           ; preds = %pc_inline_source_snapshot_public_repos_zlib_trees_5.exit, %if.then
  %25 = load ptr, ptr %s.addr, align 8
  %l_desc = getelementptr inbounds %struct.internal_state, ptr %25, i64 0, i32 40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %desc.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tree.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stree.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elems.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i2)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_code.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %node.i)
  store ptr %25, ptr %s.addr.i1, align 8
  store ptr %l_desc, ptr %desc.addr.i, align 8
  %26 = load ptr, ptr %l_desc, align 8
  store ptr %26, ptr %tree.i, align 8
  %stat_desc.i = getelementptr inbounds %struct.internal_state, ptr %25, i64 0, i32 40, i32 2
  %27 = load ptr, ptr %stat_desc.i, align 8
  %28 = load ptr, ptr %27, align 8
  store ptr %28, ptr %stree.i, align 8
  %29 = load ptr, ptr %desc.addr.i, align 8
  %stat_desc1.i = getelementptr inbounds %struct.tree_desc_s, ptr %29, i64 0, i32 2
  %30 = load ptr, ptr %stat_desc1.i, align 8
  %elems2.i = getelementptr inbounds %struct.static_tree_desc_s, ptr %30, i64 0, i32 3
  %31 = load i32, ptr %elems2.i, align 4
  store i32 %31, ptr %elems.i, align 4
  store i32 -1, ptr %max_code.i, align 4
  %32 = load ptr, ptr %s.addr.i1, align 8
  %heap_len.i = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 45
  store i32 0, ptr %heap_len.i, align 4
  %heap_max.i = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 46
  store i32 573, ptr %heap_max.i, align 8
  br label %for.cond.i4

for.cond.i4:                                      ; preds = %if.end.i11, %if.end
  %storemerge780 = phi i32 [ 0, %if.end ], [ %inc12.i, %if.end.i11 ]
  store i32 %storemerge780, ptr %n.i2, align 4
  %33 = load i32, ptr %elems.i, align 4
  %cmp.i3 = icmp slt i32 %storemerge780, %33
  br i1 %cmp.i3, label %for.body.i8, label %while.cond.i

for.body.i8:                                      ; preds = %for.cond.i4
  %34 = load ptr, ptr %tree.i, align 8
  %35 = load i32, ptr %n.i2, align 4
  %idxprom.i5 = sext i32 %35 to i64
  %arrayidx.i6 = getelementptr inbounds %struct.ct_data_s, ptr %34, i64 %idxprom.i5
  %36 = load i16, ptr %arrayidx.i6, align 2
  %cmp3.i.not = icmp eq i16 %36, 0
  br i1 %cmp3.i.not, label %if.else.i, label %if.then.i10

if.then.i10:                                      ; preds = %for.body.i8
  %37 = load i32, ptr %n.i2, align 4
  store i32 %37, ptr %max_code.i, align 4
  %38 = load ptr, ptr %s.addr.i1, align 8
  %heap_len5.i = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 45
  %39 = load i32, ptr %heap_len5.i, align 4
  %inc.i9 = add nsw i32 %39, 1
  store i32 %inc.i9, ptr %heap_len5.i, align 4
  %idxprom6.i = sext i32 %inc.i9 to i64
  %arrayidx7.i = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 44, i64 %idxprom6.i
  store i32 %37, ptr %arrayidx7.i, align 4
  %40 = load ptr, ptr %s.addr.i1, align 8
  %41 = load i32, ptr %n.i2, align 4
  %idxprom8.i = sext i32 %41 to i64
  %arrayidx9.i = getelementptr inbounds %struct.internal_state, ptr %40, i64 0, i32 47, i64 %idxprom8.i
  store i8 0, ptr %arrayidx9.i, align 1
  br label %if.end.i11

if.else.i:                                        ; preds = %for.body.i8
  %42 = load ptr, ptr %tree.i, align 8
  %43 = load i32, ptr %n.i2, align 4
  %idxprom10.i = sext i32 %43 to i64
  %dl.i = getelementptr inbounds %struct.ct_data_s, ptr %42, i64 %idxprom10.i, i32 1
  store i16 0, ptr %dl.i, align 2
  br label %if.end.i11

if.end.i11:                                       ; preds = %if.else.i, %if.then.i10
  %44 = load i32, ptr %n.i2, align 4
  %inc12.i = add nsw i32 %44, 1
  br label %for.cond.i4, !llvm.loop !12

while.cond.i:                                     ; preds = %for.cond.i4, %if.end35.i
  %45 = load ptr, ptr %s.addr.i1, align 8
  %heap_len13.i = getelementptr inbounds %struct.internal_state, ptr %45, i64 0, i32 45
  %46 = load i32, ptr %heap_len13.i, align 4
  %cmp14.i = icmp slt i32 %46, 2
  br i1 %cmp14.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %47 = load i32, ptr %max_code.i, align 4
  %cmp16.i = icmp slt i32 %47, 2
  br i1 %cmp16.i, label %cond.true.i, label %cond.end.i

cond.true.i:                                      ; preds = %while.body.i
  %48 = load i32, ptr %max_code.i, align 4
  %inc18.i = add nsw i32 %48, 1
  store i32 %inc18.i, ptr %max_code.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %while.body.i, %cond.true.i
  %cond.i = phi i32 [ %inc18.i, %cond.true.i ], [ 0, %while.body.i ]
  %49 = load ptr, ptr %s.addr.i1, align 8
  %heap_len20.i = getelementptr inbounds %struct.internal_state, ptr %49, i64 0, i32 45
  %50 = load i32, ptr %heap_len20.i, align 4
  %inc21.i = add nsw i32 %50, 1
  store i32 %inc21.i, ptr %heap_len20.i, align 4
  %idxprom22.i = sext i32 %inc21.i to i64
  %arrayidx23.i = getelementptr inbounds %struct.internal_state, ptr %49, i64 0, i32 44, i64 %idxprom22.i
  store i32 %cond.i, ptr %arrayidx23.i, align 4
  store i32 %cond.i, ptr %node.i, align 4
  %51 = load ptr, ptr %tree.i, align 8
  %idxprom24.i = sext i32 %cond.i to i64
  %arrayidx25.i = getelementptr inbounds %struct.ct_data_s, ptr %51, i64 %idxprom24.i
  store i16 1, ptr %arrayidx25.i, align 2
  %52 = load ptr, ptr %s.addr.i1, align 8
  %idxprom28.i = sext i32 %cond.i to i64
  %arrayidx29.i = getelementptr inbounds %struct.internal_state, ptr %52, i64 0, i32 47, i64 %idxprom28.i
  store i8 0, ptr %arrayidx29.i, align 1
  %opt_len.i = getelementptr inbounds %struct.internal_state, ptr %52, i64 0, i32 52
  %53 = load i64, ptr %opt_len.i, align 8
  %dec.i = add i64 %53, -1
  store i64 %dec.i, ptr %opt_len.i, align 8
  %54 = load ptr, ptr %stree.i, align 8
  %tobool.i13.not = icmp eq ptr %54, null
  br i1 %tobool.i13.not, label %if.end35.i, label %if.then30.i

if.then30.i:                                      ; preds = %cond.end.i
  %55 = load ptr, ptr %stree.i, align 8
  %56 = load i32, ptr %node.i, align 4
  %idxprom31.i = sext i32 %56 to i64
  %dl33.i = getelementptr inbounds %struct.ct_data_s, ptr %55, i64 %idxprom31.i, i32 1
  %57 = load i16, ptr %dl33.i, align 2
  %conv34.i = zext i16 %57 to i64
  %58 = load ptr, ptr %s.addr.i1, align 8
  %static_len.i = getelementptr inbounds %struct.internal_state, ptr %58, i64 0, i32 53
  %59 = load i64, ptr %static_len.i, align 8
  %sub.i = sub i64 %59, %conv34.i
  store i64 %sub.i, ptr %static_len.i, align 8
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then30.i, %cond.end.i
  br label %while.cond.i, !llvm.loop !13

while.end.i:                                      ; preds = %while.cond.i
  %60 = load i32, ptr %max_code.i, align 4
  %61 = load ptr, ptr %desc.addr.i, align 8
  %max_code36.i = getelementptr inbounds %struct.tree_desc_s, ptr %61, i64 0, i32 1
  store i32 %60, ptr %max_code36.i, align 8
  %62 = load ptr, ptr %s.addr.i1, align 8
  %heap_len37.i = getelementptr inbounds %struct.internal_state, ptr %62, i64 0, i32 45
  %63 = load i32, ptr %heap_len37.i, align 4
  %div.i = sdiv i32 %63, 2
  br label %for.cond38.i

for.cond38.i:                                     ; preds = %for.body41.i, %while.end.i
  %storemerge781 = phi i32 [ %div.i, %while.end.i ], [ %dec43.i, %for.body41.i ]
  store i32 %storemerge781, ptr %n.i2, align 4
  %cmp39.i = icmp sgt i32 %storemerge781, 0
  br i1 %cmp39.i, label %for.body41.i, label %for.end44.i

for.body41.i:                                     ; preds = %for.cond38.i
  %64 = load ptr, ptr %s.addr.i1, align 8
  %65 = load ptr, ptr %tree.i, align 8
  %66 = load i32, ptr %n.i2, align 4
  call void @pqdownheap(ptr noundef %64, ptr noundef %65, i32 noundef %66)
  %dec43.i = add nsw i32 %66, -1
  br label %for.cond38.i, !llvm.loop !14

for.end44.i:                                      ; preds = %for.cond38.i
  %67 = load i32, ptr %elems.i, align 4
  store i32 %67, ptr %node.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %cond.end98.i, %for.end44.i
  %68 = load ptr, ptr %s.addr.i1, align 8
  %arrayidx46.i = getelementptr inbounds %struct.internal_state, ptr %68, i64 0, i32 44, i64 1
  %69 = load i32, ptr %arrayidx46.i, align 4
  store i32 %69, ptr %n.i2, align 4
  %heap_len48.i = getelementptr inbounds %struct.internal_state, ptr %68, i64 0, i32 45
  %70 = load i32, ptr %heap_len48.i, align 4
  %dec49.i = add nsw i32 %70, -1
  store i32 %dec49.i, ptr %heap_len48.i, align 4
  %idxprom50.i = sext i32 %70 to i64
  %arrayidx51.i = getelementptr inbounds %struct.internal_state, ptr %68, i64 0, i32 44, i64 %idxprom50.i
  %71 = load i32, ptr %arrayidx51.i, align 4
  %72 = load ptr, ptr %s.addr.i1, align 8
  %arrayidx53.i = getelementptr inbounds %struct.internal_state, ptr %72, i64 0, i32 44, i64 1
  store i32 %71, ptr %arrayidx53.i, align 4
  %73 = load ptr, ptr %tree.i, align 8
  call void @pqdownheap(ptr noundef %72, ptr noundef %73, i32 noundef 1)
  %arrayidx55.i = getelementptr inbounds %struct.internal_state, ptr %72, i64 0, i32 44, i64 1
  %74 = load i32, ptr %arrayidx55.i, align 4
  store i32 %74, ptr %m.i, align 4
  %75 = load i32, ptr %n.i2, align 4
  %76 = load ptr, ptr %s.addr.i1, align 8
  %heap_max57.i = getelementptr inbounds %struct.internal_state, ptr %76, i64 0, i32 46
  %77 = load i32, ptr %heap_max57.i, align 8
  %dec58.i = add nsw i32 %77, -1
  store i32 %dec58.i, ptr %heap_max57.i, align 8
  %idxprom59.i = sext i32 %dec58.i to i64
  %arrayidx60.i = getelementptr inbounds %struct.internal_state, ptr %76, i64 0, i32 44, i64 %idxprom59.i
  store i32 %75, ptr %arrayidx60.i, align 4
  %78 = load i32, ptr %m.i, align 4
  %79 = load ptr, ptr %s.addr.i1, align 8
  %heap_max62.i = getelementptr inbounds %struct.internal_state, ptr %79, i64 0, i32 46
  %80 = load i32, ptr %heap_max62.i, align 8
  %dec63.i = add nsw i32 %80, -1
  store i32 %dec63.i, ptr %heap_max62.i, align 8
  %idxprom64.i = sext i32 %dec63.i to i64
  %arrayidx65.i = getelementptr inbounds %struct.internal_state, ptr %79, i64 0, i32 44, i64 %idxprom64.i
  store i32 %78, ptr %arrayidx65.i, align 4
  %81 = load ptr, ptr %tree.i, align 8
  %82 = load i32, ptr %n.i2, align 4
  %idxprom66.i = sext i32 %82 to i64
  %arrayidx67.i = getelementptr inbounds %struct.ct_data_s, ptr %81, i64 %idxprom66.i
  %83 = load i16, ptr %arrayidx67.i, align 2
  %84 = load i32, ptr %m.i, align 4
  %idxprom70.i = sext i32 %84 to i64
  %arrayidx71.i = getelementptr inbounds %struct.ct_data_s, ptr %81, i64 %idxprom70.i
  %85 = load i16, ptr %arrayidx71.i, align 2
  %add.i = add i16 %83, %85
  %86 = load ptr, ptr %tree.i, align 8
  %87 = load i32, ptr %node.i, align 4
  %idxprom75.i = sext i32 %87 to i64
  %arrayidx76.i = getelementptr inbounds %struct.ct_data_s, ptr %86, i64 %idxprom75.i
  store i16 %add.i, ptr %arrayidx76.i, align 2
  %88 = load ptr, ptr %s.addr.i1, align 8
  %89 = load i32, ptr %n.i2, align 4
  %idxprom79.i = sext i32 %89 to i64
  %arrayidx80.i = getelementptr inbounds %struct.internal_state, ptr %88, i64 0, i32 47, i64 %idxprom79.i
  %90 = load i8, ptr %arrayidx80.i, align 1
  %91 = load i32, ptr %m.i, align 4
  %idxprom83.i = sext i32 %91 to i64
  %arrayidx84.i = getelementptr inbounds %struct.internal_state, ptr %88, i64 0, i32 47, i64 %idxprom83.i
  %92 = load i8, ptr %arrayidx84.i, align 1
  %cmp86.i.not = icmp ult i8 %90, %92
  br i1 %cmp86.i.not, label %cond.false93.i, label %cond.true88.i

cond.true88.i:                                    ; preds = %do.body.i
  %93 = load ptr, ptr %s.addr.i1, align 8
  %94 = load i32, ptr %n.i2, align 4
  %idxprom90.i = sext i32 %94 to i64
  %arrayidx91.i = getelementptr inbounds %struct.internal_state, ptr %93, i64 0, i32 47, i64 %idxprom90.i
  br label %cond.end98.i

cond.false93.i:                                   ; preds = %do.body.i
  %95 = load ptr, ptr %s.addr.i1, align 8
  %96 = load i32, ptr %m.i, align 4
  %idxprom95.i = sext i32 %96 to i64
  %arrayidx96.i = getelementptr inbounds %struct.internal_state, ptr %95, i64 0, i32 47, i64 %idxprom95.i
  br label %cond.end98.i

cond.end98.i:                                     ; preds = %cond.false93.i, %cond.true88.i
  %cond99.i.in.in = phi ptr [ %arrayidx91.i, %cond.true88.i ], [ %arrayidx96.i, %cond.false93.i ]
  %cond99.i.in = load i8, ptr %cond99.i.in.in, align 1
  %add100.i = add i8 %cond99.i.in, 1
  %97 = load ptr, ptr %s.addr.i1, align 8
  %98 = load i32, ptr %node.i, align 4
  %idxprom103.i = sext i32 %98 to i64
  %arrayidx104.i = getelementptr inbounds %struct.internal_state, ptr %97, i64 0, i32 47, i64 %idxprom103.i
  store i8 %add100.i, ptr %arrayidx104.i, align 1
  %conv105.i = trunc i32 %98 to i16
  %99 = load ptr, ptr %tree.i, align 8
  %100 = load i32, ptr %m.i, align 4
  %idxprom106.i = sext i32 %100 to i64
  %dl108.i = getelementptr inbounds %struct.ct_data_s, ptr %99, i64 %idxprom106.i, i32 1
  store i16 %conv105.i, ptr %dl108.i, align 2
  %101 = load i32, ptr %n.i2, align 4
  %idxprom109.i = sext i32 %101 to i64
  %dl111.i = getelementptr inbounds %struct.ct_data_s, ptr %99, i64 %idxprom109.i, i32 1
  store i16 %conv105.i, ptr %dl111.i, align 2
  %102 = load i32, ptr %node.i, align 4
  %inc112.i = add nsw i32 %102, 1
  store i32 %inc112.i, ptr %node.i, align 4
  %103 = load ptr, ptr %s.addr.i1, align 8
  %arrayidx114.i = getelementptr inbounds %struct.internal_state, ptr %103, i64 0, i32 44, i64 1
  store i32 %102, ptr %arrayidx114.i, align 4
  %104 = load ptr, ptr %tree.i, align 8
  call void @pqdownheap(ptr noundef %103, ptr noundef %104, i32 noundef 1)
  %heap_len115.i = getelementptr inbounds %struct.internal_state, ptr %103, i64 0, i32 45
  %105 = load i32, ptr %heap_len115.i, align 4
  %cmp116.i = icmp sgt i32 %105, 1
  br i1 %cmp116.i, label %do.body.i, label %pc_inline_source_snapshot_public_repos_zlib_trees_6.exit, !llvm.loop !15

pc_inline_source_snapshot_public_repos_zlib_trees_6.exit: ; preds = %cond.end98.i
  %106 = load ptr, ptr %s.addr.i1, align 8
  %arrayidx119.i = getelementptr inbounds %struct.internal_state, ptr %106, i64 0, i32 44, i64 1
  %107 = load i32, ptr %arrayidx119.i, align 4
  %heap_max121.i = getelementptr inbounds %struct.internal_state, ptr %106, i64 0, i32 46
  %108 = load i32, ptr %heap_max121.i, align 8
  %dec122.i = add nsw i32 %108, -1
  store i32 %dec122.i, ptr %heap_max121.i, align 8
  %idxprom123.i = sext i32 %dec122.i to i64
  %arrayidx124.i = getelementptr inbounds %struct.internal_state, ptr %106, i64 0, i32 44, i64 %idxprom123.i
  store i32 %107, ptr %arrayidx124.i, align 4
  %109 = load ptr, ptr %s.addr.i1, align 8
  %110 = load ptr, ptr %desc.addr.i, align 8
  call void @gen_bitlen(ptr noundef %109, ptr noundef %110)
  %111 = load ptr, ptr %tree.i, align 8
  %112 = load i32, ptr %max_code.i, align 4
  %bl_count.i = getelementptr inbounds %struct.internal_state, ptr %109, i64 0, i32 43
  call void @gen_codes(ptr noundef %111, i32 noundef %112, ptr noundef nonnull %bl_count.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %desc.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tree.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stree.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elems.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_code.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %node.i)
  %113 = load ptr, ptr %s.addr, align 8
  %d_desc = getelementptr inbounds %struct.internal_state, ptr %113, i64 0, i32 41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i14)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %desc.addr.i15)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tree.i16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stree.i17)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elems.i18)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i19)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m.i20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_code.i21)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %node.i22)
  store ptr %113, ptr %s.addr.i14, align 8
  store ptr %d_desc, ptr %desc.addr.i15, align 8
  %114 = load ptr, ptr %d_desc, align 8
  store ptr %114, ptr %tree.i16, align 8
  %stat_desc.i23 = getelementptr inbounds %struct.internal_state, ptr %113, i64 0, i32 41, i32 2
  %115 = load ptr, ptr %stat_desc.i23, align 8
  %116 = load ptr, ptr %115, align 8
  store ptr %116, ptr %stree.i17, align 8
  %117 = load ptr, ptr %desc.addr.i15, align 8
  %stat_desc1.i24 = getelementptr inbounds %struct.tree_desc_s, ptr %117, i64 0, i32 2
  %118 = load ptr, ptr %stat_desc1.i24, align 8
  %elems2.i25 = getelementptr inbounds %struct.static_tree_desc_s, ptr %118, i64 0, i32 3
  %119 = load i32, ptr %elems2.i25, align 4
  store i32 %119, ptr %elems.i18, align 4
  store i32 -1, ptr %max_code.i21, align 4
  %120 = load ptr, ptr %s.addr.i14, align 8
  %heap_len.i26 = getelementptr inbounds %struct.internal_state, ptr %120, i64 0, i32 45
  store i32 0, ptr %heap_len.i26, align 4
  %heap_max.i27 = getelementptr inbounds %struct.internal_state, ptr %120, i64 0, i32 46
  store i32 573, ptr %heap_max.i27, align 8
  br label %for.cond.i29

for.cond.i29:                                     ; preds = %if.end.i48, %pc_inline_source_snapshot_public_repos_zlib_trees_6.exit
  %storemerge782 = phi i32 [ 0, %pc_inline_source_snapshot_public_repos_zlib_trees_6.exit ], [ %inc12.i49, %if.end.i48 ]
  store i32 %storemerge782, ptr %n.i19, align 4
  %121 = load i32, ptr %elems.i18, align 4
  %cmp.i28 = icmp slt i32 %storemerge782, %121
  br i1 %cmp.i28, label %for.body.i34, label %while.cond.i53

for.body.i34:                                     ; preds = %for.cond.i29
  %122 = load ptr, ptr %tree.i16, align 8
  %123 = load i32, ptr %n.i19, align 4
  %idxprom.i30 = sext i32 %123 to i64
  %arrayidx.i31 = getelementptr inbounds %struct.ct_data_s, ptr %122, i64 %idxprom.i30
  %124 = load i16, ptr %arrayidx.i31, align 2
  %cmp3.i33.not = icmp eq i16 %124, 0
  br i1 %cmp3.i33.not, label %if.else.i47, label %if.then.i43

if.then.i43:                                      ; preds = %for.body.i34
  %125 = load i32, ptr %n.i19, align 4
  store i32 %125, ptr %max_code.i21, align 4
  %126 = load ptr, ptr %s.addr.i14, align 8
  %heap_len5.i36 = getelementptr inbounds %struct.internal_state, ptr %126, i64 0, i32 45
  %127 = load i32, ptr %heap_len5.i36, align 4
  %inc.i37 = add nsw i32 %127, 1
  store i32 %inc.i37, ptr %heap_len5.i36, align 4
  %idxprom6.i38 = sext i32 %inc.i37 to i64
  %arrayidx7.i39 = getelementptr inbounds %struct.internal_state, ptr %126, i64 0, i32 44, i64 %idxprom6.i38
  store i32 %125, ptr %arrayidx7.i39, align 4
  %128 = load ptr, ptr %s.addr.i14, align 8
  %129 = load i32, ptr %n.i19, align 4
  %idxprom8.i41 = sext i32 %129 to i64
  %arrayidx9.i42 = getelementptr inbounds %struct.internal_state, ptr %128, i64 0, i32 47, i64 %idxprom8.i41
  store i8 0, ptr %arrayidx9.i42, align 1
  br label %if.end.i48

if.else.i47:                                      ; preds = %for.body.i34
  %130 = load ptr, ptr %tree.i16, align 8
  %131 = load i32, ptr %n.i19, align 4
  %idxprom10.i44 = sext i32 %131 to i64
  %dl.i46 = getelementptr inbounds %struct.ct_data_s, ptr %130, i64 %idxprom10.i44, i32 1
  store i16 0, ptr %dl.i46, align 2
  br label %if.end.i48

if.end.i48:                                       ; preds = %if.else.i47, %if.then.i43
  %132 = load i32, ptr %n.i19, align 4
  %inc12.i49 = add nsw i32 %132, 1
  br label %for.cond.i29, !llvm.loop !12

while.cond.i53:                                   ; preds = %for.cond.i29, %if.end35.i81
  %133 = load ptr, ptr %s.addr.i14, align 8
  %heap_len13.i51 = getelementptr inbounds %struct.internal_state, ptr %133, i64 0, i32 45
  %134 = load i32, ptr %heap_len13.i51, align 4
  %cmp14.i52 = icmp slt i32 %134, 2
  br i1 %cmp14.i52, label %while.body.i55, label %while.end.i85

while.body.i55:                                   ; preds = %while.cond.i53
  %135 = load i32, ptr %max_code.i21, align 4
  %cmp16.i54 = icmp slt i32 %135, 2
  br i1 %cmp16.i54, label %cond.true.i57, label %cond.end.i73

cond.true.i57:                                    ; preds = %while.body.i55
  %136 = load i32, ptr %max_code.i21, align 4
  %inc18.i56 = add nsw i32 %136, 1
  store i32 %inc18.i56, ptr %max_code.i21, align 4
  br label %cond.end.i73

cond.end.i73:                                     ; preds = %while.body.i55, %cond.true.i57
  %cond.i59 = phi i32 [ %inc18.i56, %cond.true.i57 ], [ 0, %while.body.i55 ]
  %137 = load ptr, ptr %s.addr.i14, align 8
  %heap_len20.i61 = getelementptr inbounds %struct.internal_state, ptr %137, i64 0, i32 45
  %138 = load i32, ptr %heap_len20.i61, align 4
  %inc21.i62 = add nsw i32 %138, 1
  store i32 %inc21.i62, ptr %heap_len20.i61, align 4
  %idxprom22.i63 = sext i32 %inc21.i62 to i64
  %arrayidx23.i64 = getelementptr inbounds %struct.internal_state, ptr %137, i64 0, i32 44, i64 %idxprom22.i63
  store i32 %cond.i59, ptr %arrayidx23.i64, align 4
  store i32 %cond.i59, ptr %node.i22, align 4
  %139 = load ptr, ptr %tree.i16, align 8
  %idxprom24.i65 = sext i32 %cond.i59 to i64
  %arrayidx25.i66 = getelementptr inbounds %struct.ct_data_s, ptr %139, i64 %idxprom24.i65
  store i16 1, ptr %arrayidx25.i66, align 2
  %140 = load ptr, ptr %s.addr.i14, align 8
  %idxprom28.i68 = sext i32 %cond.i59 to i64
  %arrayidx29.i69 = getelementptr inbounds %struct.internal_state, ptr %140, i64 0, i32 47, i64 %idxprom28.i68
  store i8 0, ptr %arrayidx29.i69, align 1
  %opt_len.i70 = getelementptr inbounds %struct.internal_state, ptr %140, i64 0, i32 52
  %141 = load i64, ptr %opt_len.i70, align 8
  %dec.i71 = add i64 %141, -1
  store i64 %dec.i71, ptr %opt_len.i70, align 8
  %142 = load ptr, ptr %stree.i17, align 8
  %tobool.i72.not = icmp eq ptr %142, null
  br i1 %tobool.i72.not, label %if.end35.i81, label %if.then30.i80

if.then30.i80:                                    ; preds = %cond.end.i73
  %143 = load ptr, ptr %stree.i17, align 8
  %144 = load i32, ptr %node.i22, align 4
  %idxprom31.i74 = sext i32 %144 to i64
  %dl33.i76 = getelementptr inbounds %struct.ct_data_s, ptr %143, i64 %idxprom31.i74, i32 1
  %145 = load i16, ptr %dl33.i76, align 2
  %conv34.i77 = zext i16 %145 to i64
  %146 = load ptr, ptr %s.addr.i14, align 8
  %static_len.i78 = getelementptr inbounds %struct.internal_state, ptr %146, i64 0, i32 53
  %147 = load i64, ptr %static_len.i78, align 8
  %sub.i79 = sub i64 %147, %conv34.i77
  store i64 %sub.i79, ptr %static_len.i78, align 8
  br label %if.end35.i81

if.end35.i81:                                     ; preds = %if.then30.i80, %cond.end.i73
  br label %while.cond.i53, !llvm.loop !13

while.end.i85:                                    ; preds = %while.cond.i53
  %148 = load i32, ptr %max_code.i21, align 4
  %149 = load ptr, ptr %desc.addr.i15, align 8
  %max_code36.i82 = getelementptr inbounds %struct.tree_desc_s, ptr %149, i64 0, i32 1
  store i32 %148, ptr %max_code36.i82, align 8
  %150 = load ptr, ptr %s.addr.i14, align 8
  %heap_len37.i83 = getelementptr inbounds %struct.internal_state, ptr %150, i64 0, i32 45
  %151 = load i32, ptr %heap_len37.i83, align 4
  %div.i84 = sdiv i32 %151, 2
  br label %for.cond38.i87

for.cond38.i87:                                   ; preds = %for.body41.i88, %while.end.i85
  %storemerge783 = phi i32 [ %div.i84, %while.end.i85 ], [ %dec43.i89, %for.body41.i88 ]
  store i32 %storemerge783, ptr %n.i19, align 4
  %cmp39.i86 = icmp sgt i32 %storemerge783, 0
  br i1 %cmp39.i86, label %for.body41.i88, label %for.end44.i90

for.body41.i88:                                   ; preds = %for.cond38.i87
  %152 = load ptr, ptr %s.addr.i14, align 8
  %153 = load ptr, ptr %tree.i16, align 8
  %154 = load i32, ptr %n.i19, align 4
  call void @pqdownheap(ptr noundef %152, ptr noundef %153, i32 noundef %154)
  %dec43.i89 = add nsw i32 %154, -1
  br label %for.cond38.i87, !llvm.loop !14

for.end44.i90:                                    ; preds = %for.cond38.i87
  %155 = load i32, ptr %elems.i18, align 4
  store i32 %155, ptr %node.i22, align 4
  br label %do.body.i131

do.body.i131:                                     ; preds = %cond.end98.i158, %for.end44.i90
  %156 = load ptr, ptr %s.addr.i14, align 8
  %arrayidx46.i92 = getelementptr inbounds %struct.internal_state, ptr %156, i64 0, i32 44, i64 1
  %157 = load i32, ptr %arrayidx46.i92, align 4
  store i32 %157, ptr %n.i19, align 4
  %heap_len48.i94 = getelementptr inbounds %struct.internal_state, ptr %156, i64 0, i32 45
  %158 = load i32, ptr %heap_len48.i94, align 4
  %dec49.i95 = add nsw i32 %158, -1
  store i32 %dec49.i95, ptr %heap_len48.i94, align 4
  %idxprom50.i96 = sext i32 %158 to i64
  %arrayidx51.i97 = getelementptr inbounds %struct.internal_state, ptr %156, i64 0, i32 44, i64 %idxprom50.i96
  %159 = load i32, ptr %arrayidx51.i97, align 4
  %160 = load ptr, ptr %s.addr.i14, align 8
  %arrayidx53.i99 = getelementptr inbounds %struct.internal_state, ptr %160, i64 0, i32 44, i64 1
  store i32 %159, ptr %arrayidx53.i99, align 4
  %161 = load ptr, ptr %tree.i16, align 8
  call void @pqdownheap(ptr noundef %160, ptr noundef %161, i32 noundef 1)
  %arrayidx55.i101 = getelementptr inbounds %struct.internal_state, ptr %160, i64 0, i32 44, i64 1
  %162 = load i32, ptr %arrayidx55.i101, align 4
  store i32 %162, ptr %m.i20, align 4
  %163 = load i32, ptr %n.i19, align 4
  %164 = load ptr, ptr %s.addr.i14, align 8
  %heap_max57.i103 = getelementptr inbounds %struct.internal_state, ptr %164, i64 0, i32 46
  %165 = load i32, ptr %heap_max57.i103, align 8
  %dec58.i104 = add nsw i32 %165, -1
  store i32 %dec58.i104, ptr %heap_max57.i103, align 8
  %idxprom59.i105 = sext i32 %dec58.i104 to i64
  %arrayidx60.i106 = getelementptr inbounds %struct.internal_state, ptr %164, i64 0, i32 44, i64 %idxprom59.i105
  store i32 %163, ptr %arrayidx60.i106, align 4
  %166 = load i32, ptr %m.i20, align 4
  %167 = load ptr, ptr %s.addr.i14, align 8
  %heap_max62.i108 = getelementptr inbounds %struct.internal_state, ptr %167, i64 0, i32 46
  %168 = load i32, ptr %heap_max62.i108, align 8
  %dec63.i109 = add nsw i32 %168, -1
  store i32 %dec63.i109, ptr %heap_max62.i108, align 8
  %idxprom64.i110 = sext i32 %dec63.i109 to i64
  %arrayidx65.i111 = getelementptr inbounds %struct.internal_state, ptr %167, i64 0, i32 44, i64 %idxprom64.i110
  store i32 %166, ptr %arrayidx65.i111, align 4
  %169 = load ptr, ptr %tree.i16, align 8
  %170 = load i32, ptr %n.i19, align 4
  %idxprom66.i112 = sext i32 %170 to i64
  %arrayidx67.i113 = getelementptr inbounds %struct.ct_data_s, ptr %169, i64 %idxprom66.i112
  %171 = load i16, ptr %arrayidx67.i113, align 2
  %172 = load i32, ptr %m.i20, align 4
  %idxprom70.i115 = sext i32 %172 to i64
  %arrayidx71.i116 = getelementptr inbounds %struct.ct_data_s, ptr %169, i64 %idxprom70.i115
  %173 = load i16, ptr %arrayidx71.i116, align 2
  %add.i118 = add i16 %171, %173
  %174 = load ptr, ptr %tree.i16, align 8
  %175 = load i32, ptr %node.i22, align 4
  %idxprom75.i120 = sext i32 %175 to i64
  %arrayidx76.i121 = getelementptr inbounds %struct.ct_data_s, ptr %174, i64 %idxprom75.i120
  store i16 %add.i118, ptr %arrayidx76.i121, align 2
  %176 = load ptr, ptr %s.addr.i14, align 8
  %177 = load i32, ptr %n.i19, align 4
  %idxprom79.i123 = sext i32 %177 to i64
  %arrayidx80.i124 = getelementptr inbounds %struct.internal_state, ptr %176, i64 0, i32 47, i64 %idxprom79.i123
  %178 = load i8, ptr %arrayidx80.i124, align 1
  %179 = load i32, ptr %m.i20, align 4
  %idxprom83.i127 = sext i32 %179 to i64
  %arrayidx84.i128 = getelementptr inbounds %struct.internal_state, ptr %176, i64 0, i32 47, i64 %idxprom83.i127
  %180 = load i8, ptr %arrayidx84.i128, align 1
  %cmp86.i130.not = icmp ult i8 %178, %180
  br i1 %cmp86.i130.not, label %cond.false93.i141, label %cond.true88.i136

cond.true88.i136:                                 ; preds = %do.body.i131
  %181 = load ptr, ptr %s.addr.i14, align 8
  %182 = load i32, ptr %n.i19, align 4
  %idxprom90.i133 = sext i32 %182 to i64
  %arrayidx91.i134 = getelementptr inbounds %struct.internal_state, ptr %181, i64 0, i32 47, i64 %idxprom90.i133
  br label %cond.end98.i158

cond.false93.i141:                                ; preds = %do.body.i131
  %183 = load ptr, ptr %s.addr.i14, align 8
  %184 = load i32, ptr %m.i20, align 4
  %idxprom95.i138 = sext i32 %184 to i64
  %arrayidx96.i139 = getelementptr inbounds %struct.internal_state, ptr %183, i64 0, i32 47, i64 %idxprom95.i138
  br label %cond.end98.i158

cond.end98.i158:                                  ; preds = %cond.false93.i141, %cond.true88.i136
  %cond99.i142.in.in = phi ptr [ %arrayidx91.i134, %cond.true88.i136 ], [ %arrayidx96.i139, %cond.false93.i141 ]
  %cond99.i142.in = load i8, ptr %cond99.i142.in.in, align 1
  %add100.i143 = add i8 %cond99.i142.in, 1
  %185 = load ptr, ptr %s.addr.i14, align 8
  %186 = load i32, ptr %node.i22, align 4
  %idxprom103.i146 = sext i32 %186 to i64
  %arrayidx104.i147 = getelementptr inbounds %struct.internal_state, ptr %185, i64 0, i32 47, i64 %idxprom103.i146
  store i8 %add100.i143, ptr %arrayidx104.i147, align 1
  %conv105.i148 = trunc i32 %186 to i16
  %187 = load ptr, ptr %tree.i16, align 8
  %188 = load i32, ptr %m.i20, align 4
  %idxprom106.i149 = sext i32 %188 to i64
  %dl108.i151 = getelementptr inbounds %struct.ct_data_s, ptr %187, i64 %idxprom106.i149, i32 1
  store i16 %conv105.i148, ptr %dl108.i151, align 2
  %189 = load i32, ptr %n.i19, align 4
  %idxprom109.i152 = sext i32 %189 to i64
  %dl111.i154 = getelementptr inbounds %struct.ct_data_s, ptr %187, i64 %idxprom109.i152, i32 1
  store i16 %conv105.i148, ptr %dl111.i154, align 2
  %190 = load i32, ptr %node.i22, align 4
  %inc112.i155 = add nsw i32 %190, 1
  store i32 %inc112.i155, ptr %node.i22, align 4
  %191 = load ptr, ptr %s.addr.i14, align 8
  %arrayidx114.i157 = getelementptr inbounds %struct.internal_state, ptr %191, i64 0, i32 44, i64 1
  store i32 %190, ptr %arrayidx114.i157, align 4
  %192 = load ptr, ptr %tree.i16, align 8
  call void @pqdownheap(ptr noundef %191, ptr noundef %192, i32 noundef 1)
  %heap_len115.i159 = getelementptr inbounds %struct.internal_state, ptr %191, i64 0, i32 45
  %193 = load i32, ptr %heap_len115.i159, align 4
  %cmp116.i160 = icmp sgt i32 %193, 1
  br i1 %cmp116.i160, label %do.body.i131, label %pc_inline_source_snapshot_public_repos_zlib_trees_7.exit, !llvm.loop !15

pc_inline_source_snapshot_public_repos_zlib_trees_7.exit: ; preds = %cond.end98.i158
  %194 = load ptr, ptr %s.addr.i14, align 8
  %arrayidx119.i162 = getelementptr inbounds %struct.internal_state, ptr %194, i64 0, i32 44, i64 1
  %195 = load i32, ptr %arrayidx119.i162, align 4
  %heap_max121.i164 = getelementptr inbounds %struct.internal_state, ptr %194, i64 0, i32 46
  %196 = load i32, ptr %heap_max121.i164, align 8
  %dec122.i165 = add nsw i32 %196, -1
  store i32 %dec122.i165, ptr %heap_max121.i164, align 8
  %idxprom123.i166 = sext i32 %dec122.i165 to i64
  %arrayidx124.i167 = getelementptr inbounds %struct.internal_state, ptr %194, i64 0, i32 44, i64 %idxprom123.i166
  store i32 %195, ptr %arrayidx124.i167, align 4
  %197 = load ptr, ptr %s.addr.i14, align 8
  %198 = load ptr, ptr %desc.addr.i15, align 8
  call void @gen_bitlen(ptr noundef %197, ptr noundef %198)
  %199 = load ptr, ptr %tree.i16, align 8
  %200 = load i32, ptr %max_code.i21, align 4
  %bl_count.i168 = getelementptr inbounds %struct.internal_state, ptr %197, i64 0, i32 43
  call void @gen_codes(ptr noundef %199, i32 noundef %200, ptr noundef nonnull %bl_count.i168)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i14)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %desc.addr.i15)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tree.i16)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stree.i17)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elems.i18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i19)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m.i20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_code.i21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %node.i22)
  %201 = load ptr, ptr %s.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i169)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_blindex.i)
  store ptr %201, ptr %s.addr.i169, align 8
  %dyn_ltree.i170 = getelementptr inbounds %struct.internal_state, ptr %201, i64 0, i32 37
  %max_code.i171 = getelementptr inbounds %struct.internal_state, ptr %201, i64 0, i32 40, i32 1
  %202 = load i32, ptr %max_code.i171, align 8
  call void @scan_tree(ptr noundef %201, ptr noundef nonnull %dyn_ltree.i170, i32 noundef %202)
  %dyn_dtree.i = getelementptr inbounds %struct.internal_state, ptr %201, i64 0, i32 38
  %max_code2.i = getelementptr inbounds %struct.internal_state, ptr %201, i64 0, i32 41, i32 1
  %203 = load i32, ptr %max_code2.i, align 8
  call void @scan_tree(ptr noundef %201, ptr noundef nonnull %dyn_dtree.i, i32 noundef %203)
  %204 = load ptr, ptr %s.addr.i169, align 8
  %bl_desc.i = getelementptr inbounds %struct.internal_state, ptr %204, i64 0, i32 42
  call void @build_tree(ptr noundef %204, ptr noundef nonnull %bl_desc.i)
  br label %for.cond.i173

for.cond.i173:                                    ; preds = %if.end.i181, %pc_inline_source_snapshot_public_repos_zlib_trees_7.exit
  %storemerge784 = phi i32 [ 18, %pc_inline_source_snapshot_public_repos_zlib_trees_7.exit ], [ %dec.i182, %if.end.i181 ]
  store i32 %storemerge784, ptr %max_blindex.i, align 4
  %cmp.i172 = icmp sgt i32 %storemerge784, 2
  br i1 %cmp.i172, label %for.body.i179, label %pc_inline_source_snapshot_public_repos_zlib_trees_8.exit

for.body.i179:                                    ; preds = %for.cond.i173
  %205 = load ptr, ptr %s.addr.i169, align 8
  %206 = load i32, ptr %max_blindex.i, align 4
  %idxprom.i174 = sext i32 %206 to i64
  %arrayidx.i175 = getelementptr inbounds [19 x i8], ptr @bl_order, i64 0, i64 %idxprom.i174
  %207 = load i8, ptr %arrayidx.i175, align 1
  %idxprom3.i = zext i8 %207 to i64
  %dl.i177 = getelementptr inbounds %struct.internal_state, ptr %205, i64 0, i32 39, i64 %idxprom3.i, i32 1
  %208 = load i16, ptr %dl.i177, align 2
  %cmp5.i.not = icmp eq i16 %208, 0
  br i1 %cmp5.i.not, label %if.end.i181, label %pc_inline_source_snapshot_public_repos_zlib_trees_8.exit

if.end.i181:                                      ; preds = %for.body.i179
  %209 = load i32, ptr %max_blindex.i, align 4
  %dec.i182 = add nsw i32 %209, -1
  br label %for.cond.i173, !llvm.loop !16

pc_inline_source_snapshot_public_repos_zlib_trees_8.exit: ; preds = %for.body.i179, %for.cond.i173
  %210 = load i32, ptr %max_blindex.i, align 4
  %conv7.i = sext i32 %210 to i64
  %211 = mul nsw i64 %conv7.i, 3
  %add10.i = add nsw i64 %211, 17
  %212 = load ptr, ptr %s.addr.i169, align 8
  %opt_len.i184 = getelementptr inbounds %struct.internal_state, ptr %212, i64 0, i32 52
  %213 = load i64, ptr %opt_len.i184, align 8
  %add11.i = add i64 %213, %add10.i
  store i64 %add11.i, ptr %opt_len.i184, align 8
  %214 = load i32, ptr %max_blindex.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i169)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_blindex.i)
  store i32 %214, ptr %max_blindex, align 4
  %215 = load ptr, ptr %s.addr, align 8
  %opt_len = getelementptr inbounds %struct.internal_state, ptr %215, i64 0, i32 52
  %216 = load i64, ptr %opt_len, align 8
  %add6 = add i64 %216, 10
  %shr = lshr i64 %add6, 3
  store i64 %shr, ptr %opt_lenb, align 8
  %static_len = getelementptr inbounds %struct.internal_state, ptr %215, i64 0, i32 53
  %217 = load i64, ptr %static_len, align 8
  %add8 = add i64 %217, 10
  %shr9 = lshr i64 %add8, 3
  store i64 %shr9, ptr %static_lenb, align 8
  %cmp10.not = icmp ugt i64 %shr9, %shr
  br i1 %cmp10.not, label %lor.lhs.false, label %if.then12

lor.lhs.false:                                    ; preds = %pc_inline_source_snapshot_public_repos_zlib_trees_8.exit
  %218 = load ptr, ptr %s.addr, align 8
  %strategy = getelementptr inbounds %struct.internal_state, ptr %218, i64 0, i32 34
  %219 = load i32, ptr %strategy, align 8
  %cmp11 = icmp eq i32 %219, 4
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %lor.lhs.false, %pc_inline_source_snapshot_public_repos_zlib_trees_8.exit
  %220 = load i64, ptr %static_lenb, align 8
  store i64 %220, ptr %opt_lenb, align 8
  br label %if.end15

if.else:                                          ; preds = %entry
  %221 = load i64, ptr %stored_len.addr, align 8
  %add14 = add i64 %221, 5
  store i64 %add14, ptr %static_lenb, align 8
  store i64 %add14, ptr %opt_lenb, align 8
  br label %if.end15

if.end15:                                         ; preds = %lor.lhs.false, %if.then12, %if.else
  %222 = load i64, ptr %stored_len.addr, align 8
  %add16 = add i64 %222, 4
  %223 = load i64, ptr %opt_lenb, align 8
  %cmp17.not = icmp ugt i64 %add16, %223
  %224 = load ptr, ptr %buf.addr, align 8
  %cmp18.not = icmp eq ptr %224, null
  %or.cond = select i1 %cmp17.not, i1 true, i1 %cmp18.not
  br i1 %or.cond, label %if.else20, label %if.then19

if.then19:                                        ; preds = %if.end15
  %225 = load ptr, ptr %s.addr, align 8
  %226 = load ptr, ptr %buf.addr, align 8
  %227 = load i64, ptr %stored_len.addr, align 8
  %228 = load i32, ptr %last.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i186)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stored_len.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i)
  store ptr %225, ptr %s.addr.i186, align 8
  store ptr %226, ptr %buf.addr.i, align 8
  store i64 %227, ptr %stored_len.addr.i, align 8
  store i32 %228, ptr %last.addr.i, align 4
  store i32 3, ptr %len.i, align 4
  %bi_valid.i = getelementptr inbounds %struct.internal_state, ptr %225, i64 0, i32 57
  %229 = load i32, ptr %bi_valid.i, align 4
  %cmp.i188 = icmp sgt i32 %229, 13
  br i1 %cmp.i188, label %if.then.i196, label %if.else.i197

if.then.i196:                                     ; preds = %if.then19
  %230 = load i32, ptr %last.addr.i, align 4
  store i32 %230, ptr %val.i, align 4
  %231 = load ptr, ptr %s.addr.i186, align 8
  %bi_valid2.i = getelementptr inbounds %struct.internal_state, ptr %231, i64 0, i32 57
  %232 = load i32, ptr %bi_valid2.i, align 4
  %shl.i = shl i32 %230, %232
  %bi_buf.i = getelementptr inbounds %struct.internal_state, ptr %231, i64 0, i32 56
  %233 = load i16, ptr %bi_buf.i, align 8
  %234 = trunc i32 %shl.i to i16
  %conv4.i = or i16 %233, %234
  store i16 %conv4.i, ptr %bi_buf.i, align 8
  %235 = load ptr, ptr %s.addr.i186, align 8
  %bi_buf5.i = getelementptr inbounds %struct.internal_state, ptr %235, i64 0, i32 56
  %236 = load i16, ptr %bi_buf5.i, align 8
  %conv7.i192 = trunc i16 %236 to i8
  %pending_buf.i = getelementptr inbounds %struct.internal_state, ptr %235, i64 0, i32 2
  %237 = load ptr, ptr %pending_buf.i, align 8
  %pending.i = getelementptr inbounds %struct.internal_state, ptr %235, i64 0, i32 5
  %238 = load i64, ptr %pending.i, align 8
  %inc.i193 = add i64 %238, 1
  store i64 %inc.i193, ptr %pending.i, align 8
  %arrayidx.i194 = getelementptr inbounds i8, ptr %237, i64 %238
  store i8 %conv7.i192, ptr %arrayidx.i194, align 1
  %239 = load ptr, ptr %s.addr.i186, align 8
  %bi_buf8.i = getelementptr inbounds %struct.internal_state, ptr %239, i64 0, i32 56
  %240 = load i16, ptr %bi_buf8.i, align 8
  %241 = lshr i16 %240, 8
  %conv10.i = trunc i16 %241 to i8
  %pending_buf11.i = getelementptr inbounds %struct.internal_state, ptr %239, i64 0, i32 2
  %242 = load ptr, ptr %pending_buf11.i, align 8
  %243 = load ptr, ptr %s.addr.i186, align 8
  %pending12.i = getelementptr inbounds %struct.internal_state, ptr %243, i64 0, i32 5
  %244 = load i64, ptr %pending12.i, align 8
  %inc13.i = add i64 %244, 1
  store i64 %inc13.i, ptr %pending12.i, align 8
  %arrayidx14.i = getelementptr inbounds i8, ptr %242, i64 %244
  store i8 %conv10.i, ptr %arrayidx14.i, align 1
  %245 = load i32, ptr %val.i, align 4
  %conv16.i = and i32 %245, 65535
  %246 = load ptr, ptr %s.addr.i186, align 8
  %bi_valid17.i = getelementptr inbounds %struct.internal_state, ptr %246, i64 0, i32 57
  %247 = load i32, ptr %bi_valid17.i, align 4
  %sub18.i = sub nsw i32 16, %247
  %shr19.i = lshr i32 %conv16.i, %sub18.i
  %conv20.i = trunc i32 %shr19.i to i16
  %bi_buf21.i = getelementptr inbounds %struct.internal_state, ptr %246, i64 0, i32 56
  store i16 %conv20.i, ptr %bi_buf21.i, align 8
  %248 = load i32, ptr %len.i, align 4
  %sub22.i = add nsw i32 %248, -16
  %249 = load ptr, ptr %s.addr.i186, align 8
  %bi_valid23.i = getelementptr inbounds %struct.internal_state, ptr %249, i64 0, i32 57
  %250 = load i32, ptr %bi_valid23.i, align 4
  %add24.i = add nsw i32 %250, %sub22.i
  store i32 %add24.i, ptr %bi_valid23.i, align 4
  br label %if.end.i200

if.else.i197:                                     ; preds = %if.then19
  %251 = load i32, ptr %last.addr.i, align 4
  %252 = load ptr, ptr %s.addr.i186, align 8
  %bi_valid28.i = getelementptr inbounds %struct.internal_state, ptr %252, i64 0, i32 57
  %253 = load i32, ptr %bi_valid28.i, align 4
  %shl29.i = shl i32 %251, %253
  %bi_buf30.i = getelementptr inbounds %struct.internal_state, ptr %252, i64 0, i32 56
  %254 = load i16, ptr %bi_buf30.i, align 8
  %255 = trunc i32 %shl29.i to i16
  %conv33.i = or i16 %254, %255
  store i16 %conv33.i, ptr %bi_buf30.i, align 8
  %256 = load i32, ptr %len.i, align 4
  %257 = load ptr, ptr %s.addr.i186, align 8
  %bi_valid34.i = getelementptr inbounds %struct.internal_state, ptr %257, i64 0, i32 57
  %258 = load i32, ptr %bi_valid34.i, align 4
  %add35.i = add nsw i32 %258, %256
  store i32 %add35.i, ptr %bi_valid34.i, align 4
  br label %if.end.i200

if.end.i200:                                      ; preds = %if.else.i197, %if.then.i196
  %259 = load ptr, ptr %s.addr.i186, align 8
  call void @bi_windup(ptr noundef %259)
  %260 = load i64, ptr %stored_len.addr.i, align 8
  %conv36.i = trunc i64 %260 to i8
  %pending_buf40.i = getelementptr inbounds %struct.internal_state, ptr %259, i64 0, i32 2
  %261 = load ptr, ptr %pending_buf40.i, align 8
  %pending41.i = getelementptr inbounds %struct.internal_state, ptr %259, i64 0, i32 5
  %262 = load i64, ptr %pending41.i, align 8
  %inc42.i = add i64 %262, 1
  store i64 %inc42.i, ptr %pending41.i, align 8
  %arrayidx43.i = getelementptr inbounds i8, ptr %261, i64 %262
  store i8 %conv36.i, ptr %arrayidx43.i, align 1
  %263 = load i64, ptr %stored_len.addr.i, align 8
  %conv45.i778 = lshr i64 %263, 8
  %conv47.i = trunc i64 %conv45.i778 to i8
  %264 = load ptr, ptr %s.addr.i186, align 8
  %pending_buf48.i = getelementptr inbounds %struct.internal_state, ptr %264, i64 0, i32 2
  %265 = load ptr, ptr %pending_buf48.i, align 8
  %pending49.i = getelementptr inbounds %struct.internal_state, ptr %264, i64 0, i32 5
  %266 = load i64, ptr %pending49.i, align 8
  %inc50.i = add i64 %266, 1
  store i64 %inc50.i, ptr %pending49.i, align 8
  %arrayidx51.i198 = getelementptr inbounds i8, ptr %265, i64 %266
  store i8 %conv47.i, ptr %arrayidx51.i198, align 1
  %267 = load i64, ptr %stored_len.addr.i, align 8
  %268 = trunc i64 %267 to i8
  %and54.i = xor i8 %268, -1
  %269 = load ptr, ptr %s.addr.i186, align 8
  %pending_buf56.i = getelementptr inbounds %struct.internal_state, ptr %269, i64 0, i32 2
  %270 = load ptr, ptr %pending_buf56.i, align 8
  %pending57.i = getelementptr inbounds %struct.internal_state, ptr %269, i64 0, i32 5
  %271 = load i64, ptr %pending57.i, align 8
  %inc58.i = add i64 %271, 1
  store i64 %inc58.i, ptr %pending57.i, align 8
  %arrayidx59.i = getelementptr inbounds i8, ptr %270, i64 %271
  store i8 %and54.i, ptr %arrayidx59.i, align 1
  %272 = load i64, ptr %stored_len.addr.i, align 8
  %conv61.i779 = lshr i64 %272, 8
  %273 = trunc i64 %conv61.i779 to i8
  %conv64.i = xor i8 %273, -1
  %274 = load ptr, ptr %s.addr.i186, align 8
  %pending_buf65.i = getelementptr inbounds %struct.internal_state, ptr %274, i64 0, i32 2
  %275 = load ptr, ptr %pending_buf65.i, align 8
  %pending66.i = getelementptr inbounds %struct.internal_state, ptr %274, i64 0, i32 5
  %276 = load i64, ptr %pending66.i, align 8
  %inc67.i = add i64 %276, 1
  store i64 %inc67.i, ptr %pending66.i, align 8
  %arrayidx68.i = getelementptr inbounds i8, ptr %275, i64 %276
  store i8 %conv64.i, ptr %arrayidx68.i, align 1
  %277 = load i64, ptr %stored_len.addr.i, align 8
  %tobool.i199.not = icmp eq i64 %277, 0
  br i1 %tobool.i199.not, label %pc_inline_source_snapshot_public_repos_zlib_trees_9.exit, label %if.then69.i

if.then69.i:                                      ; preds = %if.end.i200
  %278 = load ptr, ptr %s.addr.i186, align 8
  %pending_buf70.i = getelementptr inbounds %struct.internal_state, ptr %278, i64 0, i32 2
  %279 = load ptr, ptr %pending_buf70.i, align 8
  %pending71.i = getelementptr inbounds %struct.internal_state, ptr %278, i64 0, i32 5
  %280 = load i64, ptr %pending71.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %279, i64 %280
  %281 = load ptr, ptr %buf.addr.i, align 8
  %282 = load i64, ptr %stored_len.addr.i, align 8
  %283 = load ptr, ptr %s.addr.i186, align 8
  %pending_buf72.i = getelementptr inbounds %struct.internal_state, ptr %283, i64 0, i32 2
  %284 = load ptr, ptr %pending_buf72.i, align 8
  %pending73.i = getelementptr inbounds %struct.internal_state, ptr %283, i64 0, i32 5
  %285 = load i64, ptr %pending73.i, align 8
  %add.ptr74.i = getelementptr inbounds i8, ptr %284, i64 %285
  %286 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr74.i, i1 false, i1 true, i1 false)
  %call.i = call ptr @__memcpy_chk(ptr noundef %add.ptr.i, ptr noundef %281, i64 noundef %282, i64 noundef %286) #5
  br label %pc_inline_source_snapshot_public_repos_zlib_trees_9.exit

pc_inline_source_snapshot_public_repos_zlib_trees_9.exit: ; preds = %if.end.i200, %if.then69.i
  %287 = load i64, ptr %stored_len.addr.i, align 8
  %288 = load ptr, ptr %s.addr.i186, align 8
  %pending76.i = getelementptr inbounds %struct.internal_state, ptr %288, i64 0, i32 5
  %289 = load i64, ptr %pending76.i, align 8
  %add77.i = add i64 %289, %287
  store i64 %add77.i, ptr %pending76.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i186)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stored_len.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i)
  br label %if.end128

if.else20:                                        ; preds = %if.end15
  %290 = load i64, ptr %static_lenb, align 8
  %291 = load i64, ptr %opt_lenb, align 8
  %cmp21 = icmp eq i64 %290, %291
  br i1 %cmp21, label %if.then22, label %if.else64

if.then22:                                        ; preds = %if.else20
  store i32 3, ptr %len, align 4
  %292 = load ptr, ptr %s.addr, align 8
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %292, i64 0, i32 57
  %293 = load i32, ptr %bi_valid, align 4
  %cmp23 = icmp sgt i32 %293, 13
  br i1 %cmp23, label %if.then24, label %if.else51

if.then24:                                        ; preds = %if.then22
  %294 = load i32, ptr %last.addr, align 4
  %add25 = add nsw i32 %294, 2
  store i32 %add25, ptr %val, align 4
  %295 = load ptr, ptr %s.addr, align 8
  %bi_valid27 = getelementptr inbounds %struct.internal_state, ptr %295, i64 0, i32 57
  %296 = load i32, ptr %bi_valid27, align 4
  %shl = shl i32 %add25, %296
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %295, i64 0, i32 56
  %297 = load i16, ptr %bi_buf, align 8
  %298 = trunc i32 %shl to i16
  %conv29 = or i16 %297, %298
  store i16 %conv29, ptr %bi_buf, align 8
  %299 = load ptr, ptr %s.addr, align 8
  %bi_buf30 = getelementptr inbounds %struct.internal_state, ptr %299, i64 0, i32 56
  %300 = load i16, ptr %bi_buf30, align 8
  %conv32 = trunc i16 %300 to i8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %299, i64 0, i32 2
  %301 = load ptr, ptr %pending_buf, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %299, i64 0, i32 5
  %302 = load i64, ptr %pending, align 8
  %inc = add i64 %302, 1
  store i64 %inc, ptr %pending, align 8
  %arrayidx = getelementptr inbounds i8, ptr %301, i64 %302
  store i8 %conv32, ptr %arrayidx, align 1
  %303 = load ptr, ptr %s.addr, align 8
  %bi_buf33 = getelementptr inbounds %struct.internal_state, ptr %303, i64 0, i32 56
  %304 = load i16, ptr %bi_buf33, align 8
  %305 = lshr i16 %304, 8
  %conv36 = trunc i16 %305 to i8
  %pending_buf37 = getelementptr inbounds %struct.internal_state, ptr %303, i64 0, i32 2
  %306 = load ptr, ptr %pending_buf37, align 8
  %307 = load ptr, ptr %s.addr, align 8
  %pending38 = getelementptr inbounds %struct.internal_state, ptr %307, i64 0, i32 5
  %308 = load i64, ptr %pending38, align 8
  %inc39 = add i64 %308, 1
  store i64 %inc39, ptr %pending38, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %306, i64 %308
  store i8 %conv36, ptr %arrayidx40, align 1
  %309 = load i32, ptr %val, align 4
  %conv42 = and i32 %309, 65535
  %310 = load ptr, ptr %s.addr, align 8
  %bi_valid43 = getelementptr inbounds %struct.internal_state, ptr %310, i64 0, i32 57
  %311 = load i32, ptr %bi_valid43, align 4
  %sub44 = sub nsw i32 16, %311
  %shr45 = lshr i32 %conv42, %sub44
  %conv46 = trunc i32 %shr45 to i16
  %bi_buf47 = getelementptr inbounds %struct.internal_state, ptr %310, i64 0, i32 56
  store i16 %conv46, ptr %bi_buf47, align 8
  %312 = load i32, ptr %len, align 4
  %sub48 = add nsw i32 %312, -16
  %313 = load ptr, ptr %s.addr, align 8
  %bi_valid49 = getelementptr inbounds %struct.internal_state, ptr %313, i64 0, i32 57
  %314 = load i32, ptr %bi_valid49, align 4
  %add50 = add nsw i32 %314, %sub48
  store i32 %add50, ptr %bi_valid49, align 4
  br label %if.end63

if.else51:                                        ; preds = %if.then22
  %315 = load i32, ptr %last.addr, align 4
  %conv53 = add i32 %315, 2
  %316 = load ptr, ptr %s.addr, align 8
  %bi_valid55 = getelementptr inbounds %struct.internal_state, ptr %316, i64 0, i32 57
  %317 = load i32, ptr %bi_valid55, align 4
  %shl56 = shl i32 %conv53, %317
  %bi_buf57 = getelementptr inbounds %struct.internal_state, ptr %316, i64 0, i32 56
  %318 = load i16, ptr %bi_buf57, align 8
  %319 = trunc i32 %shl56 to i16
  %conv60 = or i16 %318, %319
  store i16 %conv60, ptr %bi_buf57, align 8
  %320 = load i32, ptr %len, align 4
  %321 = load ptr, ptr %s.addr, align 8
  %bi_valid61 = getelementptr inbounds %struct.internal_state, ptr %321, i64 0, i32 57
  %322 = load i32, ptr %bi_valid61, align 4
  %add62 = add nsw i32 %322, %320
  store i32 %add62, ptr %bi_valid61, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.else51, %if.then24
  %323 = load ptr, ptr %s.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i201)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ltree.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dtree.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dist.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lc.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sx.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %code.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %extra.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i202)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i203)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len69.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val81.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len146.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val152.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len210.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val220.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len281.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val287.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len340.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val349.i)
  store ptr %323, ptr %s.addr.i201, align 8
  store ptr @static_ltree, ptr %ltree.addr.i, align 8
  store ptr @static_dtree, ptr %dtree.addr.i, align 8
  store i32 0, ptr %sx.i, align 4
  %sym_next.i = getelementptr inbounds %struct.internal_state, ptr %323, i64 0, i32 50
  %324 = load i32, ptr %sym_next.i, align 4
  %cmp.i204.not = icmp eq i32 %324, 0
  br i1 %cmp.i204.not, label %if.end339.i, label %do.body.i216

do.body.i216:                                     ; preds = %if.end63, %if.end335.i
  %325 = load ptr, ptr %s.addr.i201, align 8
  %sym_buf.i = getelementptr inbounds %struct.internal_state, ptr %325, i64 0, i32 48
  %326 = load ptr, ptr %sym_buf.i, align 8
  %327 = load i32, ptr %sx.i, align 4
  %inc.i206 = add i32 %327, 1
  store i32 %inc.i206, ptr %sx.i, align 4
  %idxprom.i207 = zext i32 %327 to i64
  %arrayidx.i208 = getelementptr inbounds i8, ptr %326, i64 %idxprom.i207
  %328 = load i8, ptr %arrayidx.i208, align 1
  %conv.i209 = zext i8 %328 to i32
  store i32 %conv.i209, ptr %dist.i, align 4
  %329 = load ptr, ptr %s.addr.i201, align 8
  %sym_buf1.i = getelementptr inbounds %struct.internal_state, ptr %329, i64 0, i32 48
  %330 = load ptr, ptr %sym_buf1.i, align 8
  %331 = load i32, ptr %sx.i, align 4
  %inc2.i = add i32 %331, 1
  store i32 %inc2.i, ptr %sx.i, align 4
  %idxprom3.i211 = zext i32 %331 to i64
  %arrayidx4.i212 = getelementptr inbounds i8, ptr %330, i64 %idxprom3.i211
  %332 = load i8, ptr %arrayidx4.i212, align 1
  %conv5.i = zext i8 %332 to i32
  %shl.i213 = shl nuw nsw i32 %conv5.i, 8
  %333 = load i32, ptr %dist.i, align 4
  %add.i214 = add i32 %333, %shl.i213
  store i32 %add.i214, ptr %dist.i, align 4
  %334 = load ptr, ptr %s.addr.i201, align 8
  %sym_buf7.i = getelementptr inbounds %struct.internal_state, ptr %334, i64 0, i32 48
  %335 = load ptr, ptr %sym_buf7.i, align 8
  %336 = load i32, ptr %sx.i, align 4
  %inc8.i = add i32 %336, 1
  store i32 %inc8.i, ptr %sx.i, align 4
  %idxprom9.i = zext i32 %336 to i64
  %arrayidx10.i215 = getelementptr inbounds i8, ptr %335, i64 %idxprom9.i
  %337 = load i8, ptr %arrayidx10.i215, align 1
  %conv11.i = zext i8 %337 to i32
  store i32 %conv11.i, ptr %lc.i, align 4
  %338 = load i32, ptr %dist.i, align 4
  %cmp12.i = icmp eq i32 %338, 0
  br i1 %cmp12.i, label %if.then14.i, label %if.else65.i

if.then14.i:                                      ; preds = %do.body.i216
  %339 = load ptr, ptr %ltree.addr.i, align 8
  %340 = load i32, ptr %lc.i, align 4
  %idxprom15.i = sext i32 %340 to i64
  %dl.i217 = getelementptr inbounds %struct.ct_data_s, ptr %339, i64 %idxprom15.i, i32 1
  %341 = load i16, ptr %dl.i217, align 2
  %conv17.i = zext i16 %341 to i32
  store i32 %conv17.i, ptr %len.i202, align 4
  %342 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid.i218 = getelementptr inbounds %struct.internal_state, ptr %342, i64 0, i32 57
  %343 = load i32, ptr %bi_valid.i218, align 4
  %sub.i219 = sub nsw i32 16, %conv17.i
  %cmp18.i = icmp sgt i32 %343, %sub.i219
  br i1 %cmp18.i, label %if.then20.i, label %if.else.i231

if.then20.i:                                      ; preds = %if.then14.i
  %344 = load ptr, ptr %ltree.addr.i, align 8
  %345 = load i32, ptr %lc.i, align 4
  %idxprom21.i = sext i32 %345 to i64
  %arrayidx22.i = getelementptr inbounds %struct.ct_data_s, ptr %344, i64 %idxprom21.i
  %346 = load i16, ptr %arrayidx22.i, align 2
  %conv23.i = zext i16 %346 to i32
  store i32 %conv23.i, ptr %val.i203, align 4
  %conv25.i = zext i16 %346 to i32
  %347 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid26.i = getelementptr inbounds %struct.internal_state, ptr %347, i64 0, i32 57
  %348 = load i32, ptr %bi_valid26.i, align 4
  %shl27.i = shl i32 %conv25.i, %348
  %bi_buf.i220 = getelementptr inbounds %struct.internal_state, ptr %347, i64 0, i32 56
  %349 = load i16, ptr %bi_buf.i220, align 8
  %350 = trunc i32 %shl27.i to i16
  %conv29.i = or i16 %349, %350
  store i16 %conv29.i, ptr %bi_buf.i220, align 8
  %351 = load ptr, ptr %s.addr.i201, align 8
  %bi_buf30.i222 = getelementptr inbounds %struct.internal_state, ptr %351, i64 0, i32 56
  %352 = load i16, ptr %bi_buf30.i222, align 8
  %conv33.i224 = trunc i16 %352 to i8
  %pending_buf.i225 = getelementptr inbounds %struct.internal_state, ptr %351, i64 0, i32 2
  %353 = load ptr, ptr %pending_buf.i225, align 8
  %pending.i226 = getelementptr inbounds %struct.internal_state, ptr %351, i64 0, i32 5
  %354 = load i64, ptr %pending.i226, align 8
  %inc34.i = add i64 %354, 1
  store i64 %inc34.i, ptr %pending.i226, align 8
  %arrayidx35.i = getelementptr inbounds i8, ptr %353, i64 %354
  store i8 %conv33.i224, ptr %arrayidx35.i, align 1
  %355 = load ptr, ptr %s.addr.i201, align 8
  %bi_buf36.i = getelementptr inbounds %struct.internal_state, ptr %355, i64 0, i32 56
  %356 = load i16, ptr %bi_buf36.i, align 8
  %357 = lshr i16 %356, 8
  %conv38.i = trunc i16 %357 to i8
  %pending_buf39.i = getelementptr inbounds %struct.internal_state, ptr %355, i64 0, i32 2
  %358 = load ptr, ptr %pending_buf39.i, align 8
  %359 = load ptr, ptr %s.addr.i201, align 8
  %pending40.i = getelementptr inbounds %struct.internal_state, ptr %359, i64 0, i32 5
  %360 = load i64, ptr %pending40.i, align 8
  %inc41.i = add i64 %360, 1
  store i64 %inc41.i, ptr %pending40.i, align 8
  %arrayidx42.i = getelementptr inbounds i8, ptr %358, i64 %360
  store i8 %conv38.i, ptr %arrayidx42.i, align 1
  %361 = load i32, ptr %val.i203, align 4
  %conv44.i229 = and i32 %361, 65535
  %362 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid45.i = getelementptr inbounds %struct.internal_state, ptr %362, i64 0, i32 57
  %363 = load i32, ptr %bi_valid45.i, align 4
  %sub46.i = sub nsw i32 16, %363
  %shr47.i = lshr i32 %conv44.i229, %sub46.i
  %conv48.i = trunc i32 %shr47.i to i16
  %bi_buf49.i = getelementptr inbounds %struct.internal_state, ptr %362, i64 0, i32 56
  store i16 %conv48.i, ptr %bi_buf49.i, align 8
  %364 = load i32, ptr %len.i202, align 4
  %sub50.i = add nsw i32 %364, -16
  %365 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid51.i = getelementptr inbounds %struct.internal_state, ptr %365, i64 0, i32 57
  %366 = load i32, ptr %bi_valid51.i, align 4
  %add52.i = add nsw i32 %366, %sub50.i
  store i32 %add52.i, ptr %bi_valid51.i, align 4
  br label %if.end335.i

if.else.i231:                                     ; preds = %if.then14.i
  %367 = load ptr, ptr %ltree.addr.i, align 8
  %368 = load i32, ptr %lc.i, align 4
  %idxprom53.i = sext i32 %368 to i64
  %arrayidx54.i = getelementptr inbounds %struct.ct_data_s, ptr %367, i64 %idxprom53.i
  %369 = load i16, ptr %arrayidx54.i, align 2
  %conv56.i = zext i16 %369 to i32
  %370 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid57.i = getelementptr inbounds %struct.internal_state, ptr %370, i64 0, i32 57
  %371 = load i32, ptr %bi_valid57.i, align 4
  %shl58.i = shl i32 %conv56.i, %371
  %bi_buf59.i = getelementptr inbounds %struct.internal_state, ptr %370, i64 0, i32 56
  %372 = load i16, ptr %bi_buf59.i, align 8
  %373 = trunc i32 %shl58.i to i16
  %conv62.i230 = or i16 %372, %373
  store i16 %conv62.i230, ptr %bi_buf59.i, align 8
  %374 = load i32, ptr %len.i202, align 4
  %375 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid63.i = getelementptr inbounds %struct.internal_state, ptr %375, i64 0, i32 57
  %376 = load i32, ptr %bi_valid63.i, align 4
  %add64.i = add nsw i32 %376, %374
  store i32 %add64.i, ptr %bi_valid63.i, align 4
  br label %if.end335.i

if.else65.i:                                      ; preds = %do.body.i216
  %377 = load i32, ptr %lc.i, align 4
  %idxprom66.i233 = sext i32 %377 to i64
  %arrayidx67.i234 = getelementptr inbounds [256 x i8], ptr @_length_code, i64 0, i64 %idxprom66.i233
  %378 = load i8, ptr %arrayidx67.i234, align 1
  %conv68.i = zext i8 %378 to i32
  store i32 %conv68.i, ptr %code.i, align 4
  %379 = load ptr, ptr %ltree.addr.i, align 8
  %add71.i = add nuw nsw i32 %conv68.i, 257
  %idxprom72.i = zext i32 %add71.i to i64
  %dl74.i = getelementptr inbounds %struct.ct_data_s, ptr %379, i64 %idxprom72.i, i32 1
  %380 = load i16, ptr %dl74.i, align 2
  %conv75.i = zext i16 %380 to i32
  store i32 %conv75.i, ptr %len69.i, align 4
  %381 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid76.i = getelementptr inbounds %struct.internal_state, ptr %381, i64 0, i32 57
  %382 = load i32, ptr %bi_valid76.i, align 4
  %sub77.i = sub nsw i32 16, %conv75.i
  %cmp78.i = icmp sgt i32 %382, %sub77.i
  br i1 %cmp78.i, label %if.then80.i, label %if.else122.i

if.then80.i:                                      ; preds = %if.else65.i
  %383 = load ptr, ptr %ltree.addr.i, align 8
  %384 = load i32, ptr %code.i, align 4
  %add83.i = add i32 %384, 257
  %idxprom84.i = zext i32 %add83.i to i64
  %arrayidx85.i = getelementptr inbounds %struct.ct_data_s, ptr %383, i64 %idxprom84.i
  %385 = load i16, ptr %arrayidx85.i, align 2
  %conv87.i = zext i16 %385 to i32
  store i32 %conv87.i, ptr %val81.i, align 4
  %conv89.i = zext i16 %385 to i32
  %386 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid90.i = getelementptr inbounds %struct.internal_state, ptr %386, i64 0, i32 57
  %387 = load i32, ptr %bi_valid90.i, align 4
  %shl91.i = shl i32 %conv89.i, %387
  %bi_buf92.i = getelementptr inbounds %struct.internal_state, ptr %386, i64 0, i32 56
  %388 = load i16, ptr %bi_buf92.i, align 8
  %389 = trunc i32 %shl91.i to i16
  %conv95.i = or i16 %388, %389
  store i16 %conv95.i, ptr %bi_buf92.i, align 8
  %390 = load ptr, ptr %s.addr.i201, align 8
  %bi_buf96.i = getelementptr inbounds %struct.internal_state, ptr %390, i64 0, i32 56
  %391 = load i16, ptr %bi_buf96.i, align 8
  %conv99.i = trunc i16 %391 to i8
  %pending_buf100.i = getelementptr inbounds %struct.internal_state, ptr %390, i64 0, i32 2
  %392 = load ptr, ptr %pending_buf100.i, align 8
  %pending101.i = getelementptr inbounds %struct.internal_state, ptr %390, i64 0, i32 5
  %393 = load i64, ptr %pending101.i, align 8
  %inc102.i = add i64 %393, 1
  store i64 %inc102.i, ptr %pending101.i, align 8
  %arrayidx103.i = getelementptr inbounds i8, ptr %392, i64 %393
  store i8 %conv99.i, ptr %arrayidx103.i, align 1
  %394 = load ptr, ptr %s.addr.i201, align 8
  %bi_buf104.i = getelementptr inbounds %struct.internal_state, ptr %394, i64 0, i32 56
  %395 = load i16, ptr %bi_buf104.i, align 8
  %396 = lshr i16 %395, 8
  %conv107.i = trunc i16 %396 to i8
  %pending_buf108.i = getelementptr inbounds %struct.internal_state, ptr %394, i64 0, i32 2
  %397 = load ptr, ptr %pending_buf108.i, align 8
  %398 = load ptr, ptr %s.addr.i201, align 8
  %pending109.i = getelementptr inbounds %struct.internal_state, ptr %398, i64 0, i32 5
  %399 = load i64, ptr %pending109.i, align 8
  %inc110.i = add i64 %399, 1
  store i64 %inc110.i, ptr %pending109.i, align 8
  %arrayidx111.i = getelementptr inbounds i8, ptr %397, i64 %399
  store i8 %conv107.i, ptr %arrayidx111.i, align 1
  %400 = load i32, ptr %val81.i, align 4
  %conv113.i = and i32 %400, 65535
  %401 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid114.i = getelementptr inbounds %struct.internal_state, ptr %401, i64 0, i32 57
  %402 = load i32, ptr %bi_valid114.i, align 4
  %sub115.i = sub nsw i32 16, %402
  %shr116.i = lshr i32 %conv113.i, %sub115.i
  %conv117.i = trunc i32 %shr116.i to i16
  %bi_buf118.i = getelementptr inbounds %struct.internal_state, ptr %401, i64 0, i32 56
  store i16 %conv117.i, ptr %bi_buf118.i, align 8
  %403 = load i32, ptr %len69.i, align 4
  %sub119.i = add nsw i32 %403, -16
  %404 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid120.i = getelementptr inbounds %struct.internal_state, ptr %404, i64 0, i32 57
  %405 = load i32, ptr %bi_valid120.i, align 4
  %add121.i = add nsw i32 %405, %sub119.i
  store i32 %add121.i, ptr %bi_valid120.i, align 4
  br label %if.end137.i

if.else122.i:                                     ; preds = %if.else65.i
  %406 = load ptr, ptr %ltree.addr.i, align 8
  %407 = load i32, ptr %code.i, align 4
  %add124.i = add i32 %407, 257
  %idxprom125.i = zext i32 %add124.i to i64
  %arrayidx126.i = getelementptr inbounds %struct.ct_data_s, ptr %406, i64 %idxprom125.i
  %408 = load i16, ptr %arrayidx126.i, align 2
  %conv128.i = zext i16 %408 to i32
  %409 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid129.i = getelementptr inbounds %struct.internal_state, ptr %409, i64 0, i32 57
  %410 = load i32, ptr %bi_valid129.i, align 4
  %shl130.i = shl i32 %conv128.i, %410
  %bi_buf131.i = getelementptr inbounds %struct.internal_state, ptr %409, i64 0, i32 56
  %411 = load i16, ptr %bi_buf131.i, align 8
  %412 = trunc i32 %shl130.i to i16
  %conv134.i = or i16 %411, %412
  store i16 %conv134.i, ptr %bi_buf131.i, align 8
  %413 = load i32, ptr %len69.i, align 4
  %414 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid135.i = getelementptr inbounds %struct.internal_state, ptr %414, i64 0, i32 57
  %415 = load i32, ptr %bi_valid135.i, align 4
  %add136.i = add nsw i32 %415, %413
  store i32 %add136.i, ptr %bi_valid135.i, align 4
  br label %if.end137.i

if.end137.i:                                      ; preds = %if.else122.i, %if.then80.i
  %416 = load i32, ptr %code.i, align 4
  %idxprom138.i = zext i32 %416 to i64
  %arrayidx139.i = getelementptr inbounds [29 x i32], ptr @extra_lbits, i64 0, i64 %idxprom138.i
  %417 = load i32, ptr %arrayidx139.i, align 4
  store i32 %417, ptr %extra.i, align 4
  %418 = add nsw i64 %idxprom138.i, -28
  %cmp140.i.not = icmp ult i64 %418, -20
  br i1 %cmp140.i.not, label %if.end199.i, label %if.then142.i

if.then142.i:                                     ; preds = %if.end137.i
  %419 = load i32, ptr %code.i, align 4
  %idxprom143.i = zext i32 %419 to i64
  %arrayidx144.i = getelementptr inbounds [29 x i32], ptr @base_length, i64 0, i64 %idxprom143.i
  %420 = load i32, ptr %arrayidx144.i, align 4
  %421 = load i32, ptr %lc.i, align 4
  %sub145.i = sub nsw i32 %421, %420
  store i32 %sub145.i, ptr %lc.i, align 4
  %422 = load i32, ptr %extra.i, align 4
  store i32 %422, ptr %len146.i, align 4
  %423 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid147.i = getelementptr inbounds %struct.internal_state, ptr %423, i64 0, i32 57
  %424 = load i32, ptr %bi_valid147.i, align 4
  %sub148.i = sub nsw i32 16, %422
  %cmp149.i = icmp sgt i32 %424, %sub148.i
  br i1 %cmp149.i, label %if.then151.i, label %if.else187.i

if.then151.i:                                     ; preds = %if.then142.i
  %425 = load i32, ptr %lc.i, align 4
  store i32 %425, ptr %val152.i, align 4
  %426 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid155.i = getelementptr inbounds %struct.internal_state, ptr %426, i64 0, i32 57
  %427 = load i32, ptr %bi_valid155.i, align 4
  %shl156.i = shl i32 %425, %427
  %bi_buf157.i = getelementptr inbounds %struct.internal_state, ptr %426, i64 0, i32 56
  %428 = load i16, ptr %bi_buf157.i, align 8
  %429 = trunc i32 %shl156.i to i16
  %conv160.i = or i16 %428, %429
  store i16 %conv160.i, ptr %bi_buf157.i, align 8
  %430 = load ptr, ptr %s.addr.i201, align 8
  %bi_buf161.i = getelementptr inbounds %struct.internal_state, ptr %430, i64 0, i32 56
  %431 = load i16, ptr %bi_buf161.i, align 8
  %conv164.i = trunc i16 %431 to i8
  %pending_buf165.i = getelementptr inbounds %struct.internal_state, ptr %430, i64 0, i32 2
  %432 = load ptr, ptr %pending_buf165.i, align 8
  %pending166.i = getelementptr inbounds %struct.internal_state, ptr %430, i64 0, i32 5
  %433 = load i64, ptr %pending166.i, align 8
  %inc167.i = add i64 %433, 1
  store i64 %inc167.i, ptr %pending166.i, align 8
  %arrayidx168.i = getelementptr inbounds i8, ptr %432, i64 %433
  store i8 %conv164.i, ptr %arrayidx168.i, align 1
  %434 = load ptr, ptr %s.addr.i201, align 8
  %bi_buf169.i = getelementptr inbounds %struct.internal_state, ptr %434, i64 0, i32 56
  %435 = load i16, ptr %bi_buf169.i, align 8
  %436 = lshr i16 %435, 8
  %conv172.i = trunc i16 %436 to i8
  %pending_buf173.i = getelementptr inbounds %struct.internal_state, ptr %434, i64 0, i32 2
  %437 = load ptr, ptr %pending_buf173.i, align 8
  %438 = load ptr, ptr %s.addr.i201, align 8
  %pending174.i = getelementptr inbounds %struct.internal_state, ptr %438, i64 0, i32 5
  %439 = load i64, ptr %pending174.i, align 8
  %inc175.i = add i64 %439, 1
  store i64 %inc175.i, ptr %pending174.i, align 8
  %arrayidx176.i = getelementptr inbounds i8, ptr %437, i64 %439
  store i8 %conv172.i, ptr %arrayidx176.i, align 1
  %440 = load i32, ptr %val152.i, align 4
  %conv178.i = and i32 %440, 65535
  %441 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid179.i = getelementptr inbounds %struct.internal_state, ptr %441, i64 0, i32 57
  %442 = load i32, ptr %bi_valid179.i, align 4
  %sub180.i = sub nsw i32 16, %442
  %shr181.i = lshr i32 %conv178.i, %sub180.i
  %conv182.i = trunc i32 %shr181.i to i16
  %bi_buf183.i = getelementptr inbounds %struct.internal_state, ptr %441, i64 0, i32 56
  store i16 %conv182.i, ptr %bi_buf183.i, align 8
  %443 = load i32, ptr %len146.i, align 4
  %sub184.i = add nsw i32 %443, -16
  %444 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid185.i = getelementptr inbounds %struct.internal_state, ptr %444, i64 0, i32 57
  %445 = load i32, ptr %bi_valid185.i, align 4
  %add186.i = add nsw i32 %445, %sub184.i
  store i32 %add186.i, ptr %bi_valid185.i, align 4
  br label %if.end199.i

if.else187.i:                                     ; preds = %if.then142.i
  %446 = load i32, ptr %lc.i, align 4
  %447 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid190.i = getelementptr inbounds %struct.internal_state, ptr %447, i64 0, i32 57
  %448 = load i32, ptr %bi_valid190.i, align 4
  %shl191.i = shl i32 %446, %448
  %bi_buf192.i = getelementptr inbounds %struct.internal_state, ptr %447, i64 0, i32 56
  %449 = load i16, ptr %bi_buf192.i, align 8
  %450 = trunc i32 %shl191.i to i16
  %conv195.i = or i16 %449, %450
  store i16 %conv195.i, ptr %bi_buf192.i, align 8
  %451 = load i32, ptr %len146.i, align 4
  %452 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid196.i = getelementptr inbounds %struct.internal_state, ptr %452, i64 0, i32 57
  %453 = load i32, ptr %bi_valid196.i, align 4
  %add197.i = add nsw i32 %453, %451
  store i32 %add197.i, ptr %bi_valid196.i, align 4
  br label %if.end199.i

if.end199.i:                                      ; preds = %if.then151.i, %if.else187.i, %if.end137.i
  %454 = load i32, ptr %dist.i, align 4
  %dec.i237 = add i32 %454, -1
  store i32 %dec.i237, ptr %dist.i, align 4
  %cmp200.i = icmp ult i32 %dec.i237, 256
  %455 = load i32, ptr %dist.i, align 4
  %456 = load i32, ptr %dist.i, align 4
  %shr205.i = lshr i32 %456, 7
  %add206.i = add nuw nsw i32 %shr205.i, 256
  %idxprom202.i.pn.in = select i1 %cmp200.i, i32 %455, i32 %add206.i
  %idxprom202.i.pn = zext i32 %idxprom202.i.pn.in to i64
  %cond.i240.in.in = getelementptr inbounds [512 x i8], ptr @_dist_code, i64 0, i64 %idxprom202.i.pn
  %cond.i240.in = load i8, ptr %cond.i240.in.in, align 1
  %cond.i240 = zext i8 %cond.i240.in to i32
  store i32 %cond.i240, ptr %code.i, align 4
  %457 = load ptr, ptr %dtree.addr.i, align 8
  %idxprom211.i = zext i8 %cond.i240.in to i64
  %dl213.i = getelementptr inbounds %struct.ct_data_s, ptr %457, i64 %idxprom211.i, i32 1
  %458 = load i16, ptr %dl213.i, align 2
  %conv214.i = zext i16 %458 to i32
  store i32 %conv214.i, ptr %len210.i, align 4
  %459 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid215.i = getelementptr inbounds %struct.internal_state, ptr %459, i64 0, i32 57
  %460 = load i32, ptr %bi_valid215.i, align 4
  %sub216.i = sub nsw i32 16, %conv214.i
  %cmp217.i = icmp sgt i32 %460, %sub216.i
  br i1 %cmp217.i, label %if.then219.i, label %if.else259.i

if.then219.i:                                     ; preds = %if.end199.i
  %461 = load ptr, ptr %dtree.addr.i, align 8
  %462 = load i32, ptr %code.i, align 4
  %idxprom221.i = zext i32 %462 to i64
  %arrayidx222.i = getelementptr inbounds %struct.ct_data_s, ptr %461, i64 %idxprom221.i
  %463 = load i16, ptr %arrayidx222.i, align 2
  %conv224.i = zext i16 %463 to i32
  store i32 %conv224.i, ptr %val220.i, align 4
  %conv226.i = zext i16 %463 to i32
  %464 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid227.i = getelementptr inbounds %struct.internal_state, ptr %464, i64 0, i32 57
  %465 = load i32, ptr %bi_valid227.i, align 4
  %shl228.i = shl i32 %conv226.i, %465
  %bi_buf229.i = getelementptr inbounds %struct.internal_state, ptr %464, i64 0, i32 56
  %466 = load i16, ptr %bi_buf229.i, align 8
  %467 = trunc i32 %shl228.i to i16
  %conv232.i = or i16 %466, %467
  store i16 %conv232.i, ptr %bi_buf229.i, align 8
  %468 = load ptr, ptr %s.addr.i201, align 8
  %bi_buf233.i = getelementptr inbounds %struct.internal_state, ptr %468, i64 0, i32 56
  %469 = load i16, ptr %bi_buf233.i, align 8
  %conv236.i = trunc i16 %469 to i8
  %pending_buf237.i = getelementptr inbounds %struct.internal_state, ptr %468, i64 0, i32 2
  %470 = load ptr, ptr %pending_buf237.i, align 8
  %pending238.i = getelementptr inbounds %struct.internal_state, ptr %468, i64 0, i32 5
  %471 = load i64, ptr %pending238.i, align 8
  %inc239.i = add i64 %471, 1
  store i64 %inc239.i, ptr %pending238.i, align 8
  %arrayidx240.i = getelementptr inbounds i8, ptr %470, i64 %471
  store i8 %conv236.i, ptr %arrayidx240.i, align 1
  %472 = load ptr, ptr %s.addr.i201, align 8
  %bi_buf241.i = getelementptr inbounds %struct.internal_state, ptr %472, i64 0, i32 56
  %473 = load i16, ptr %bi_buf241.i, align 8
  %474 = lshr i16 %473, 8
  %conv244.i = trunc i16 %474 to i8
  %pending_buf245.i = getelementptr inbounds %struct.internal_state, ptr %472, i64 0, i32 2
  %475 = load ptr, ptr %pending_buf245.i, align 8
  %476 = load ptr, ptr %s.addr.i201, align 8
  %pending246.i = getelementptr inbounds %struct.internal_state, ptr %476, i64 0, i32 5
  %477 = load i64, ptr %pending246.i, align 8
  %inc247.i = add i64 %477, 1
  store i64 %inc247.i, ptr %pending246.i, align 8
  %arrayidx248.i = getelementptr inbounds i8, ptr %475, i64 %477
  store i8 %conv244.i, ptr %arrayidx248.i, align 1
  %478 = load i32, ptr %val220.i, align 4
  %conv250.i = and i32 %478, 65535
  %479 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid251.i = getelementptr inbounds %struct.internal_state, ptr %479, i64 0, i32 57
  %480 = load i32, ptr %bi_valid251.i, align 4
  %sub252.i = sub nsw i32 16, %480
  %shr253.i = lshr i32 %conv250.i, %sub252.i
  %conv254.i = trunc i32 %shr253.i to i16
  %bi_buf255.i = getelementptr inbounds %struct.internal_state, ptr %479, i64 0, i32 56
  store i16 %conv254.i, ptr %bi_buf255.i, align 8
  %481 = load i32, ptr %len210.i, align 4
  %sub256.i = add nsw i32 %481, -16
  %482 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid257.i = getelementptr inbounds %struct.internal_state, ptr %482, i64 0, i32 57
  %483 = load i32, ptr %bi_valid257.i, align 4
  %add258.i = add nsw i32 %483, %sub256.i
  store i32 %add258.i, ptr %bi_valid257.i, align 4
  br label %if.end272.i

if.else259.i:                                     ; preds = %if.end199.i
  %484 = load ptr, ptr %dtree.addr.i, align 8
  %485 = load i32, ptr %code.i, align 4
  %idxprom260.i = zext i32 %485 to i64
  %arrayidx261.i = getelementptr inbounds %struct.ct_data_s, ptr %484, i64 %idxprom260.i
  %486 = load i16, ptr %arrayidx261.i, align 2
  %conv263.i = zext i16 %486 to i32
  %487 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid264.i = getelementptr inbounds %struct.internal_state, ptr %487, i64 0, i32 57
  %488 = load i32, ptr %bi_valid264.i, align 4
  %shl265.i = shl i32 %conv263.i, %488
  %bi_buf266.i = getelementptr inbounds %struct.internal_state, ptr %487, i64 0, i32 56
  %489 = load i16, ptr %bi_buf266.i, align 8
  %490 = trunc i32 %shl265.i to i16
  %conv269.i = or i16 %489, %490
  store i16 %conv269.i, ptr %bi_buf266.i, align 8
  %491 = load i32, ptr %len210.i, align 4
  %492 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid270.i = getelementptr inbounds %struct.internal_state, ptr %492, i64 0, i32 57
  %493 = load i32, ptr %bi_valid270.i, align 4
  %add271.i = add nsw i32 %493, %491
  store i32 %add271.i, ptr %bi_valid270.i, align 4
  br label %if.end272.i

if.end272.i:                                      ; preds = %if.else259.i, %if.then219.i
  %494 = load i32, ptr %code.i, align 4
  %idxprom273.i = zext i32 %494 to i64
  %arrayidx274.i = getelementptr inbounds [30 x i32], ptr @extra_dbits, i64 0, i64 %idxprom273.i
  %495 = load i32, ptr %arrayidx274.i, align 4
  store i32 %495, ptr %extra.i, align 4
  %cmp275.i.not = icmp ult i32 %494, 4
  br i1 %cmp275.i.not, label %if.end335.i, label %if.then277.i

if.then277.i:                                     ; preds = %if.end272.i
  %496 = load i32, ptr %code.i, align 4
  %idxprom278.i = zext i32 %496 to i64
  %arrayidx279.i = getelementptr inbounds [30 x i32], ptr @base_dist, i64 0, i64 %idxprom278.i
  %497 = load i32, ptr %arrayidx279.i, align 4
  %498 = load i32, ptr %dist.i, align 4
  %sub280.i = sub i32 %498, %497
  store i32 %sub280.i, ptr %dist.i, align 4
  %499 = load i32, ptr %extra.i, align 4
  store i32 %499, ptr %len281.i, align 4
  %500 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid282.i = getelementptr inbounds %struct.internal_state, ptr %500, i64 0, i32 57
  %501 = load i32, ptr %bi_valid282.i, align 4
  %sub283.i = sub nsw i32 16, %499
  %cmp284.i = icmp sgt i32 %501, %sub283.i
  br i1 %cmp284.i, label %if.then286.i, label %if.else322.i

if.then286.i:                                     ; preds = %if.then277.i
  %502 = load i32, ptr %dist.i, align 4
  store i32 %502, ptr %val287.i, align 4
  %503 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid290.i = getelementptr inbounds %struct.internal_state, ptr %503, i64 0, i32 57
  %504 = load i32, ptr %bi_valid290.i, align 4
  %shl291.i = shl i32 %502, %504
  %bi_buf292.i = getelementptr inbounds %struct.internal_state, ptr %503, i64 0, i32 56
  %505 = load i16, ptr %bi_buf292.i, align 8
  %506 = trunc i32 %shl291.i to i16
  %conv295.i = or i16 %505, %506
  store i16 %conv295.i, ptr %bi_buf292.i, align 8
  %507 = load ptr, ptr %s.addr.i201, align 8
  %bi_buf296.i = getelementptr inbounds %struct.internal_state, ptr %507, i64 0, i32 56
  %508 = load i16, ptr %bi_buf296.i, align 8
  %conv299.i = trunc i16 %508 to i8
  %pending_buf300.i = getelementptr inbounds %struct.internal_state, ptr %507, i64 0, i32 2
  %509 = load ptr, ptr %pending_buf300.i, align 8
  %pending301.i = getelementptr inbounds %struct.internal_state, ptr %507, i64 0, i32 5
  %510 = load i64, ptr %pending301.i, align 8
  %inc302.i = add i64 %510, 1
  store i64 %inc302.i, ptr %pending301.i, align 8
  %arrayidx303.i = getelementptr inbounds i8, ptr %509, i64 %510
  store i8 %conv299.i, ptr %arrayidx303.i, align 1
  %511 = load ptr, ptr %s.addr.i201, align 8
  %bi_buf304.i = getelementptr inbounds %struct.internal_state, ptr %511, i64 0, i32 56
  %512 = load i16, ptr %bi_buf304.i, align 8
  %513 = lshr i16 %512, 8
  %conv307.i = trunc i16 %513 to i8
  %pending_buf308.i = getelementptr inbounds %struct.internal_state, ptr %511, i64 0, i32 2
  %514 = load ptr, ptr %pending_buf308.i, align 8
  %515 = load ptr, ptr %s.addr.i201, align 8
  %pending309.i = getelementptr inbounds %struct.internal_state, ptr %515, i64 0, i32 5
  %516 = load i64, ptr %pending309.i, align 8
  %inc310.i = add i64 %516, 1
  store i64 %inc310.i, ptr %pending309.i, align 8
  %arrayidx311.i = getelementptr inbounds i8, ptr %514, i64 %516
  store i8 %conv307.i, ptr %arrayidx311.i, align 1
  %517 = load i32, ptr %val287.i, align 4
  %conv313.i = and i32 %517, 65535
  %518 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid314.i = getelementptr inbounds %struct.internal_state, ptr %518, i64 0, i32 57
  %519 = load i32, ptr %bi_valid314.i, align 4
  %sub315.i = sub nsw i32 16, %519
  %shr316.i = lshr i32 %conv313.i, %sub315.i
  %conv317.i = trunc i32 %shr316.i to i16
  %bi_buf318.i = getelementptr inbounds %struct.internal_state, ptr %518, i64 0, i32 56
  store i16 %conv317.i, ptr %bi_buf318.i, align 8
  %520 = load i32, ptr %len281.i, align 4
  %sub319.i = add nsw i32 %520, -16
  %521 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid320.i = getelementptr inbounds %struct.internal_state, ptr %521, i64 0, i32 57
  %522 = load i32, ptr %bi_valid320.i, align 4
  %add321.i = add nsw i32 %522, %sub319.i
  store i32 %add321.i, ptr %bi_valid320.i, align 4
  br label %if.end335.i

if.else322.i:                                     ; preds = %if.then277.i
  %523 = load i32, ptr %dist.i, align 4
  %524 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid325.i = getelementptr inbounds %struct.internal_state, ptr %524, i64 0, i32 57
  %525 = load i32, ptr %bi_valid325.i, align 4
  %shl326.i = shl i32 %523, %525
  %bi_buf327.i = getelementptr inbounds %struct.internal_state, ptr %524, i64 0, i32 56
  %526 = load i16, ptr %bi_buf327.i, align 8
  %527 = trunc i32 %shl326.i to i16
  %conv330.i = or i16 %526, %527
  store i16 %conv330.i, ptr %bi_buf327.i, align 8
  %528 = load i32, ptr %len281.i, align 4
  %529 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid331.i = getelementptr inbounds %struct.internal_state, ptr %529, i64 0, i32 57
  %530 = load i32, ptr %bi_valid331.i, align 4
  %add332.i = add nsw i32 %530, %528
  store i32 %add332.i, ptr %bi_valid331.i, align 4
  br label %if.end335.i

if.end335.i:                                      ; preds = %if.end272.i, %if.else322.i, %if.then286.i, %if.then20.i, %if.else.i231
  %531 = load i32, ptr %sx.i, align 4
  %532 = load ptr, ptr %s.addr.i201, align 8
  %sym_next336.i = getelementptr inbounds %struct.internal_state, ptr %532, i64 0, i32 50
  %533 = load i32, ptr %sym_next336.i, align 4
  %cmp337.i = icmp ult i32 %531, %533
  br i1 %cmp337.i, label %do.body.i216, label %if.end339.i, !llvm.loop !17

if.end339.i:                                      ; preds = %if.end335.i, %if.end63
  %534 = load ptr, ptr %ltree.addr.i, align 8
  %dl342.i = getelementptr inbounds %struct.ct_data_s, ptr %534, i64 256, i32 1
  %535 = load i16, ptr %dl342.i, align 2
  %conv343.i = zext i16 %535 to i32
  store i32 %conv343.i, ptr %len340.i, align 4
  %536 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid344.i = getelementptr inbounds %struct.internal_state, ptr %536, i64 0, i32 57
  %537 = load i32, ptr %bi_valid344.i, align 4
  %sub345.i = sub nsw i32 16, %conv343.i
  %cmp346.i = icmp sgt i32 %537, %sub345.i
  br i1 %cmp346.i, label %if.then348.i, label %if.else387.i

if.then348.i:                                     ; preds = %if.end339.i
  %538 = load ptr, ptr %ltree.addr.i, align 8
  %arrayidx350.i = getelementptr inbounds %struct.ct_data_s, ptr %538, i64 256
  %539 = load i16, ptr %arrayidx350.i, align 2
  %conv352.i = zext i16 %539 to i32
  store i32 %conv352.i, ptr %val349.i, align 4
  %conv354.i = zext i16 %539 to i32
  %540 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid355.i = getelementptr inbounds %struct.internal_state, ptr %540, i64 0, i32 57
  %541 = load i32, ptr %bi_valid355.i, align 4
  %shl356.i = shl i32 %conv354.i, %541
  %bi_buf357.i = getelementptr inbounds %struct.internal_state, ptr %540, i64 0, i32 56
  %542 = load i16, ptr %bi_buf357.i, align 8
  %543 = trunc i32 %shl356.i to i16
  %conv360.i = or i16 %542, %543
  store i16 %conv360.i, ptr %bi_buf357.i, align 8
  %544 = load ptr, ptr %s.addr.i201, align 8
  %bi_buf361.i = getelementptr inbounds %struct.internal_state, ptr %544, i64 0, i32 56
  %545 = load i16, ptr %bi_buf361.i, align 8
  %conv364.i = trunc i16 %545 to i8
  %pending_buf365.i = getelementptr inbounds %struct.internal_state, ptr %544, i64 0, i32 2
  %546 = load ptr, ptr %pending_buf365.i, align 8
  %pending366.i = getelementptr inbounds %struct.internal_state, ptr %544, i64 0, i32 5
  %547 = load i64, ptr %pending366.i, align 8
  %inc367.i = add i64 %547, 1
  store i64 %inc367.i, ptr %pending366.i, align 8
  %arrayidx368.i = getelementptr inbounds i8, ptr %546, i64 %547
  store i8 %conv364.i, ptr %arrayidx368.i, align 1
  %548 = load ptr, ptr %s.addr.i201, align 8
  %bi_buf369.i = getelementptr inbounds %struct.internal_state, ptr %548, i64 0, i32 56
  %549 = load i16, ptr %bi_buf369.i, align 8
  %550 = lshr i16 %549, 8
  %conv372.i = trunc i16 %550 to i8
  %pending_buf373.i = getelementptr inbounds %struct.internal_state, ptr %548, i64 0, i32 2
  %551 = load ptr, ptr %pending_buf373.i, align 8
  %552 = load ptr, ptr %s.addr.i201, align 8
  %pending374.i = getelementptr inbounds %struct.internal_state, ptr %552, i64 0, i32 5
  %553 = load i64, ptr %pending374.i, align 8
  %inc375.i = add i64 %553, 1
  store i64 %inc375.i, ptr %pending374.i, align 8
  %arrayidx376.i = getelementptr inbounds i8, ptr %551, i64 %553
  store i8 %conv372.i, ptr %arrayidx376.i, align 1
  %554 = load i32, ptr %val349.i, align 4
  %conv378.i = and i32 %554, 65535
  %555 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid379.i = getelementptr inbounds %struct.internal_state, ptr %555, i64 0, i32 57
  %556 = load i32, ptr %bi_valid379.i, align 4
  %sub380.i = sub nsw i32 16, %556
  %shr381.i = lshr i32 %conv378.i, %sub380.i
  %conv382.i = trunc i32 %shr381.i to i16
  %bi_buf383.i = getelementptr inbounds %struct.internal_state, ptr %555, i64 0, i32 56
  store i16 %conv382.i, ptr %bi_buf383.i, align 8
  %557 = load i32, ptr %len340.i, align 4
  %sub384.i = add nsw i32 %557, -16
  %558 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid385.i = getelementptr inbounds %struct.internal_state, ptr %558, i64 0, i32 57
  %559 = load i32, ptr %bi_valid385.i, align 4
  %add386.i = add nsw i32 %559, %sub384.i
  store i32 %add386.i, ptr %bi_valid385.i, align 4
  br label %pc_inline_source_snapshot_public_repos_zlib_trees_10.exit

if.else387.i:                                     ; preds = %if.end339.i
  %560 = load ptr, ptr %ltree.addr.i, align 8
  %arrayidx388.i = getelementptr inbounds %struct.ct_data_s, ptr %560, i64 256
  %561 = load i16, ptr %arrayidx388.i, align 2
  %conv390.i = zext i16 %561 to i32
  %562 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid391.i = getelementptr inbounds %struct.internal_state, ptr %562, i64 0, i32 57
  %563 = load i32, ptr %bi_valid391.i, align 4
  %shl392.i = shl i32 %conv390.i, %563
  %bi_buf393.i = getelementptr inbounds %struct.internal_state, ptr %562, i64 0, i32 56
  %564 = load i16, ptr %bi_buf393.i, align 8
  %565 = trunc i32 %shl392.i to i16
  %conv396.i = or i16 %564, %565
  store i16 %conv396.i, ptr %bi_buf393.i, align 8
  %566 = load i32, ptr %len340.i, align 4
  %567 = load ptr, ptr %s.addr.i201, align 8
  %bi_valid397.i = getelementptr inbounds %struct.internal_state, ptr %567, i64 0, i32 57
  %568 = load i32, ptr %bi_valid397.i, align 4
  %add398.i = add nsw i32 %568, %566
  store i32 %add398.i, ptr %bi_valid397.i, align 4
  br label %pc_inline_source_snapshot_public_repos_zlib_trees_10.exit

pc_inline_source_snapshot_public_repos_zlib_trees_10.exit: ; preds = %if.then348.i, %if.else387.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i201)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ltree.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dtree.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dist.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lc.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sx.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %code.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extra.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i202)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i203)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len69.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val81.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len146.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val152.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len210.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val220.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len281.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val287.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len340.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val349.i)
  br label %if.end128

if.else64:                                        ; preds = %if.else20
  store i32 3, ptr %len65, align 4
  %569 = load ptr, ptr %s.addr, align 8
  %bi_valid66 = getelementptr inbounds %struct.internal_state, ptr %569, i64 0, i32 57
  %570 = load i32, ptr %bi_valid66, align 4
  %cmp68 = icmp sgt i32 %570, 13
  br i1 %cmp68, label %if.then70, label %if.else107

if.then70:                                        ; preds = %if.else64
  %571 = load i32, ptr %last.addr, align 4
  %add72 = add nsw i32 %571, 4
  store i32 %add72, ptr %val71, align 4
  %572 = load ptr, ptr %s.addr, align 8
  %bi_valid75 = getelementptr inbounds %struct.internal_state, ptr %572, i64 0, i32 57
  %573 = load i32, ptr %bi_valid75, align 4
  %shl76 = shl i32 %add72, %573
  %bi_buf77 = getelementptr inbounds %struct.internal_state, ptr %572, i64 0, i32 56
  %574 = load i16, ptr %bi_buf77, align 8
  %575 = trunc i32 %shl76 to i16
  %conv80 = or i16 %574, %575
  store i16 %conv80, ptr %bi_buf77, align 8
  %576 = load ptr, ptr %s.addr, align 8
  %bi_buf81 = getelementptr inbounds %struct.internal_state, ptr %576, i64 0, i32 56
  %577 = load i16, ptr %bi_buf81, align 8
  %conv84 = trunc i16 %577 to i8
  %pending_buf85 = getelementptr inbounds %struct.internal_state, ptr %576, i64 0, i32 2
  %578 = load ptr, ptr %pending_buf85, align 8
  %pending86 = getelementptr inbounds %struct.internal_state, ptr %576, i64 0, i32 5
  %579 = load i64, ptr %pending86, align 8
  %inc87 = add i64 %579, 1
  store i64 %inc87, ptr %pending86, align 8
  %arrayidx88 = getelementptr inbounds i8, ptr %578, i64 %579
  store i8 %conv84, ptr %arrayidx88, align 1
  %580 = load ptr, ptr %s.addr, align 8
  %bi_buf89 = getelementptr inbounds %struct.internal_state, ptr %580, i64 0, i32 56
  %581 = load i16, ptr %bi_buf89, align 8
  %582 = lshr i16 %581, 8
  %conv92 = trunc i16 %582 to i8
  %pending_buf93 = getelementptr inbounds %struct.internal_state, ptr %580, i64 0, i32 2
  %583 = load ptr, ptr %pending_buf93, align 8
  %584 = load ptr, ptr %s.addr, align 8
  %pending94 = getelementptr inbounds %struct.internal_state, ptr %584, i64 0, i32 5
  %585 = load i64, ptr %pending94, align 8
  %inc95 = add i64 %585, 1
  store i64 %inc95, ptr %pending94, align 8
  %arrayidx96 = getelementptr inbounds i8, ptr %583, i64 %585
  store i8 %conv92, ptr %arrayidx96, align 1
  %586 = load i32, ptr %val71, align 4
  %conv98 = and i32 %586, 65535
  %587 = load ptr, ptr %s.addr, align 8
  %bi_valid99 = getelementptr inbounds %struct.internal_state, ptr %587, i64 0, i32 57
  %588 = load i32, ptr %bi_valid99, align 4
  %sub100 = sub nsw i32 16, %588
  %shr101 = lshr i32 %conv98, %sub100
  %conv102 = trunc i32 %shr101 to i16
  %bi_buf103 = getelementptr inbounds %struct.internal_state, ptr %587, i64 0, i32 56
  store i16 %conv102, ptr %bi_buf103, align 8
  %589 = load i32, ptr %len65, align 4
  %sub104 = add nsw i32 %589, -16
  %590 = load ptr, ptr %s.addr, align 8
  %bi_valid105 = getelementptr inbounds %struct.internal_state, ptr %590, i64 0, i32 57
  %591 = load i32, ptr %bi_valid105, align 4
  %add106 = add nsw i32 %591, %sub104
  store i32 %add106, ptr %bi_valid105, align 4
  br label %if.end119

if.else107:                                       ; preds = %if.else64
  %592 = load i32, ptr %last.addr, align 4
  %conv109 = add i32 %592, 4
  %593 = load ptr, ptr %s.addr, align 8
  %bi_valid111 = getelementptr inbounds %struct.internal_state, ptr %593, i64 0, i32 57
  %594 = load i32, ptr %bi_valid111, align 4
  %shl112 = shl i32 %conv109, %594
  %bi_buf113 = getelementptr inbounds %struct.internal_state, ptr %593, i64 0, i32 56
  %595 = load i16, ptr %bi_buf113, align 8
  %596 = trunc i32 %shl112 to i16
  %conv116 = or i16 %595, %596
  store i16 %conv116, ptr %bi_buf113, align 8
  %597 = load i32, ptr %len65, align 4
  %598 = load ptr, ptr %s.addr, align 8
  %bi_valid117 = getelementptr inbounds %struct.internal_state, ptr %598, i64 0, i32 57
  %599 = load i32, ptr %bi_valid117, align 4
  %add118 = add nsw i32 %599, %597
  store i32 %add118, ptr %bi_valid117, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.else107, %if.then70
  %600 = load ptr, ptr %s.addr, align 8
  %max_code = getelementptr inbounds %struct.internal_state, ptr %600, i64 0, i32 40, i32 1
  %601 = load i32, ptr %max_code, align 8
  %add121 = add nsw i32 %601, 1
  %max_code123 = getelementptr inbounds %struct.internal_state, ptr %600, i64 0, i32 41, i32 1
  %602 = load i32, ptr %max_code123, align 8
  %add124 = add nsw i32 %602, 1
  %603 = load i32, ptr %max_blindex, align 4
  %add125 = add nsw i32 %603, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i242)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcodes.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dcodes.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blcodes.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rank.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i243)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i244)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len36.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val42.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len91.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val97.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len148.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val154.i)
  store ptr %600, ptr %s.addr.i242, align 8
  store i32 %add121, ptr %lcodes.addr.i, align 4
  store i32 %add124, ptr %dcodes.addr.i, align 4
  store i32 %add125, ptr %blcodes.addr.i, align 4
  store i32 5, ptr %len.i243, align 4
  %bi_valid.i245 = getelementptr inbounds %struct.internal_state, ptr %600, i64 0, i32 57
  %604 = load i32, ptr %bi_valid.i245, align 4
  %cmp.i247 = icmp sgt i32 %604, 11
  br i1 %cmp.i247, label %if.then.i266, label %if.else.i277

if.then.i266:                                     ; preds = %if.end119
  %605 = load i32, ptr %lcodes.addr.i, align 4
  %sub1.i = add nsw i32 %605, -257
  store i32 %sub1.i, ptr %val.i244, align 4
  %606 = load ptr, ptr %s.addr.i242, align 8
  %bi_valid3.i = getelementptr inbounds %struct.internal_state, ptr %606, i64 0, i32 57
  %607 = load i32, ptr %bi_valid3.i, align 4
  %shl.i249 = shl i32 %sub1.i, %607
  %bi_buf.i250 = getelementptr inbounds %struct.internal_state, ptr %606, i64 0, i32 56
  %608 = load i16, ptr %bi_buf.i250, align 8
  %609 = trunc i32 %shl.i249 to i16
  %conv5.i253 = or i16 %608, %609
  store i16 %conv5.i253, ptr %bi_buf.i250, align 8
  %610 = load ptr, ptr %s.addr.i242, align 8
  %bi_buf6.i = getelementptr inbounds %struct.internal_state, ptr %610, i64 0, i32 56
  %611 = load i16, ptr %bi_buf6.i, align 8
  %conv8.i = trunc i16 %611 to i8
  %pending_buf.i256 = getelementptr inbounds %struct.internal_state, ptr %610, i64 0, i32 2
  %612 = load ptr, ptr %pending_buf.i256, align 8
  %pending.i257 = getelementptr inbounds %struct.internal_state, ptr %610, i64 0, i32 5
  %613 = load i64, ptr %pending.i257, align 8
  %inc.i258 = add i64 %613, 1
  store i64 %inc.i258, ptr %pending.i257, align 8
  %arrayidx.i259 = getelementptr inbounds i8, ptr %612, i64 %613
  store i8 %conv8.i, ptr %arrayidx.i259, align 1
  %614 = load ptr, ptr %s.addr.i242, align 8
  %bi_buf9.i = getelementptr inbounds %struct.internal_state, ptr %614, i64 0, i32 56
  %615 = load i16, ptr %bi_buf9.i, align 8
  %616 = lshr i16 %615, 8
  %conv11.i262 = trunc i16 %616 to i8
  %pending_buf12.i = getelementptr inbounds %struct.internal_state, ptr %614, i64 0, i32 2
  %617 = load ptr, ptr %pending_buf12.i, align 8
  %618 = load ptr, ptr %s.addr.i242, align 8
  %pending13.i = getelementptr inbounds %struct.internal_state, ptr %618, i64 0, i32 5
  %619 = load i64, ptr %pending13.i, align 8
  %inc14.i = add i64 %619, 1
  store i64 %inc14.i, ptr %pending13.i, align 8
  %arrayidx15.i = getelementptr inbounds i8, ptr %617, i64 %619
  store i8 %conv11.i262, ptr %arrayidx15.i, align 1
  %620 = load i32, ptr %val.i244, align 4
  %conv17.i264 = and i32 %620, 65535
  %621 = load ptr, ptr %s.addr.i242, align 8
  %bi_valid18.i = getelementptr inbounds %struct.internal_state, ptr %621, i64 0, i32 57
  %622 = load i32, ptr %bi_valid18.i, align 4
  %sub19.i = sub nsw i32 16, %622
  %shr20.i = lshr i32 %conv17.i264, %sub19.i
  %conv21.i = trunc i32 %shr20.i to i16
  %bi_buf22.i = getelementptr inbounds %struct.internal_state, ptr %621, i64 0, i32 56
  store i16 %conv21.i, ptr %bi_buf22.i, align 8
  %623 = load i32, ptr %len.i243, align 4
  %sub23.i = add nsw i32 %623, -16
  %624 = load ptr, ptr %s.addr.i242, align 8
  %bi_valid24.i = getelementptr inbounds %struct.internal_state, ptr %624, i64 0, i32 57
  %625 = load i32, ptr %bi_valid24.i, align 4
  %add.i265 = add nsw i32 %625, %sub23.i
  store i32 %add.i265, ptr %bi_valid24.i, align 4
  br label %if.end.i279

if.else.i277:                                     ; preds = %if.end119
  %626 = load i32, ptr %lcodes.addr.i, align 4
  %conv26.i267 = add i32 %626, 65279
  %627 = load ptr, ptr %s.addr.i242, align 8
  %bi_valid28.i269 = getelementptr inbounds %struct.internal_state, ptr %627, i64 0, i32 57
  %628 = load i32, ptr %bi_valid28.i269, align 4
  %shl29.i270 = shl i32 %conv26.i267, %628
  %bi_buf30.i271 = getelementptr inbounds %struct.internal_state, ptr %627, i64 0, i32 56
  %629 = load i16, ptr %bi_buf30.i271, align 8
  %630 = trunc i32 %shl29.i270 to i16
  %conv33.i274 = or i16 %629, %630
  store i16 %conv33.i274, ptr %bi_buf30.i271, align 8
  %631 = load i32, ptr %len.i243, align 4
  %632 = load ptr, ptr %s.addr.i242, align 8
  %bi_valid34.i275 = getelementptr inbounds %struct.internal_state, ptr %632, i64 0, i32 57
  %633 = load i32, ptr %bi_valid34.i275, align 4
  %add35.i276 = add nsw i32 %633, %631
  store i32 %add35.i276, ptr %bi_valid34.i275, align 4
  br label %if.end.i279

if.end.i279:                                      ; preds = %if.else.i277, %if.then.i266
  store i32 5, ptr %len36.i, align 4
  %634 = load ptr, ptr %s.addr.i242, align 8
  %bi_valid37.i = getelementptr inbounds %struct.internal_state, ptr %634, i64 0, i32 57
  %635 = load i32, ptr %bi_valid37.i, align 4
  %cmp39.i278 = icmp sgt i32 %635, 11
  br i1 %cmp39.i278, label %if.then41.i, label %if.else78.i

if.then41.i:                                      ; preds = %if.end.i279
  %636 = load i32, ptr %dcodes.addr.i, align 4
  %sub43.i = add nsw i32 %636, -1
  store i32 %sub43.i, ptr %val42.i, align 4
  %637 = load ptr, ptr %s.addr.i242, align 8
  %bi_valid46.i = getelementptr inbounds %struct.internal_state, ptr %637, i64 0, i32 57
  %638 = load i32, ptr %bi_valid46.i, align 4
  %shl47.i = shl i32 %sub43.i, %638
  %bi_buf48.i = getelementptr inbounds %struct.internal_state, ptr %637, i64 0, i32 56
  %639 = load i16, ptr %bi_buf48.i, align 8
  %640 = trunc i32 %shl47.i to i16
  %conv51.i = or i16 %639, %640
  store i16 %conv51.i, ptr %bi_buf48.i, align 8
  %641 = load ptr, ptr %s.addr.i242, align 8
  %bi_buf52.i = getelementptr inbounds %struct.internal_state, ptr %641, i64 0, i32 56
  %642 = load i16, ptr %bi_buf52.i, align 8
  %conv55.i284 = trunc i16 %642 to i8
  %pending_buf56.i285 = getelementptr inbounds %struct.internal_state, ptr %641, i64 0, i32 2
  %643 = load ptr, ptr %pending_buf56.i285, align 8
  %pending57.i286 = getelementptr inbounds %struct.internal_state, ptr %641, i64 0, i32 5
  %644 = load i64, ptr %pending57.i286, align 8
  %inc58.i287 = add i64 %644, 1
  store i64 %inc58.i287, ptr %pending57.i286, align 8
  %arrayidx59.i288 = getelementptr inbounds i8, ptr %643, i64 %644
  store i8 %conv55.i284, ptr %arrayidx59.i288, align 1
  %645 = load ptr, ptr %s.addr.i242, align 8
  %bi_buf60.i = getelementptr inbounds %struct.internal_state, ptr %645, i64 0, i32 56
  %646 = load i16, ptr %bi_buf60.i, align 8
  %647 = lshr i16 %646, 8
  %conv63.i = trunc i16 %647 to i8
  %pending_buf64.i = getelementptr inbounds %struct.internal_state, ptr %645, i64 0, i32 2
  %648 = load ptr, ptr %pending_buf64.i, align 8
  %649 = load ptr, ptr %s.addr.i242, align 8
  %pending65.i = getelementptr inbounds %struct.internal_state, ptr %649, i64 0, i32 5
  %650 = load i64, ptr %pending65.i, align 8
  %inc66.i = add i64 %650, 1
  store i64 %inc66.i, ptr %pending65.i, align 8
  %arrayidx67.i290 = getelementptr inbounds i8, ptr %648, i64 %650
  store i8 %conv63.i, ptr %arrayidx67.i290, align 1
  %651 = load i32, ptr %val42.i, align 4
  %conv69.i292 = and i32 %651, 65535
  %652 = load ptr, ptr %s.addr.i242, align 8
  %bi_valid70.i = getelementptr inbounds %struct.internal_state, ptr %652, i64 0, i32 57
  %653 = load i32, ptr %bi_valid70.i, align 4
  %sub71.i = sub nsw i32 16, %653
  %shr72.i = lshr i32 %conv69.i292, %sub71.i
  %conv73.i293 = trunc i32 %shr72.i to i16
  %bi_buf74.i = getelementptr inbounds %struct.internal_state, ptr %652, i64 0, i32 56
  store i16 %conv73.i293, ptr %bi_buf74.i, align 8
  %654 = load i32, ptr %len36.i, align 4
  %sub75.i = add nsw i32 %654, -16
  %655 = load ptr, ptr %s.addr.i242, align 8
  %bi_valid76.i294 = getelementptr inbounds %struct.internal_state, ptr %655, i64 0, i32 57
  %656 = load i32, ptr %bi_valid76.i294, align 4
  %add77.i295 = add nsw i32 %656, %sub75.i
  store i32 %add77.i295, ptr %bi_valid76.i294, align 4
  br label %if.end90.i

if.else78.i:                                      ; preds = %if.end.i279
  %657 = load i32, ptr %dcodes.addr.i, align 4
  %conv80.i = add i32 %657, 65535
  %658 = load ptr, ptr %s.addr.i242, align 8
  %bi_valid82.i = getelementptr inbounds %struct.internal_state, ptr %658, i64 0, i32 57
  %659 = load i32, ptr %bi_valid82.i, align 4
  %shl83.i = shl i32 %conv80.i, %659
  %bi_buf84.i = getelementptr inbounds %struct.internal_state, ptr %658, i64 0, i32 56
  %660 = load i16, ptr %bi_buf84.i, align 8
  %661 = trunc i32 %shl83.i to i16
  %conv87.i298 = or i16 %660, %661
  store i16 %conv87.i298, ptr %bi_buf84.i, align 8
  %662 = load i32, ptr %len36.i, align 4
  %663 = load ptr, ptr %s.addr.i242, align 8
  %bi_valid88.i = getelementptr inbounds %struct.internal_state, ptr %663, i64 0, i32 57
  %664 = load i32, ptr %bi_valid88.i, align 4
  %add89.i = add nsw i32 %664, %662
  store i32 %add89.i, ptr %bi_valid88.i, align 4
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.else78.i, %if.then41.i
  store i32 4, ptr %len91.i, align 4
  %665 = load ptr, ptr %s.addr.i242, align 8
  %bi_valid92.i = getelementptr inbounds %struct.internal_state, ptr %665, i64 0, i32 57
  %666 = load i32, ptr %bi_valid92.i, align 4
  %cmp94.i = icmp sgt i32 %666, 12
  br i1 %cmp94.i, label %if.then96.i, label %if.else133.i

if.then96.i:                                      ; preds = %if.end90.i
  %667 = load i32, ptr %blcodes.addr.i, align 4
  %sub98.i = add nsw i32 %667, -4
  store i32 %sub98.i, ptr %val97.i, align 4
  %668 = load ptr, ptr %s.addr.i242, align 8
  %bi_valid101.i = getelementptr inbounds %struct.internal_state, ptr %668, i64 0, i32 57
  %669 = load i32, ptr %bi_valid101.i, align 4
  %shl102.i = shl i32 %sub98.i, %669
  %bi_buf103.i = getelementptr inbounds %struct.internal_state, ptr %668, i64 0, i32 56
  %670 = load i16, ptr %bi_buf103.i, align 8
  %671 = trunc i32 %shl102.i to i16
  %conv106.i = or i16 %670, %671
  store i16 %conv106.i, ptr %bi_buf103.i, align 8
  %672 = load ptr, ptr %s.addr.i242, align 8
  %bi_buf107.i = getelementptr inbounds %struct.internal_state, ptr %672, i64 0, i32 56
  %673 = load i16, ptr %bi_buf107.i, align 8
  %conv110.i = trunc i16 %673 to i8
  %pending_buf111.i = getelementptr inbounds %struct.internal_state, ptr %672, i64 0, i32 2
  %674 = load ptr, ptr %pending_buf111.i, align 8
  %pending112.i = getelementptr inbounds %struct.internal_state, ptr %672, i64 0, i32 5
  %675 = load i64, ptr %pending112.i, align 8
  %inc113.i = add i64 %675, 1
  store i64 %inc113.i, ptr %pending112.i, align 8
  %arrayidx114.i300 = getelementptr inbounds i8, ptr %674, i64 %675
  store i8 %conv110.i, ptr %arrayidx114.i300, align 1
  %676 = load ptr, ptr %s.addr.i242, align 8
  %bi_buf115.i = getelementptr inbounds %struct.internal_state, ptr %676, i64 0, i32 56
  %677 = load i16, ptr %bi_buf115.i, align 8
  %678 = lshr i16 %677, 8
  %conv118.i = trunc i16 %678 to i8
  %pending_buf119.i = getelementptr inbounds %struct.internal_state, ptr %676, i64 0, i32 2
  %679 = load ptr, ptr %pending_buf119.i, align 8
  %680 = load ptr, ptr %s.addr.i242, align 8
  %pending120.i = getelementptr inbounds %struct.internal_state, ptr %680, i64 0, i32 5
  %681 = load i64, ptr %pending120.i, align 8
  %inc121.i = add i64 %681, 1
  store i64 %inc121.i, ptr %pending120.i, align 8
  %arrayidx122.i = getelementptr inbounds i8, ptr %679, i64 %681
  store i8 %conv118.i, ptr %arrayidx122.i, align 1
  %682 = load i32, ptr %val97.i, align 4
  %conv124.i = and i32 %682, 65535
  %683 = load ptr, ptr %s.addr.i242, align 8
  %bi_valid125.i = getelementptr inbounds %struct.internal_state, ptr %683, i64 0, i32 57
  %684 = load i32, ptr %bi_valid125.i, align 4
  %sub126.i = sub nsw i32 16, %684
  %shr127.i = lshr i32 %conv124.i, %sub126.i
  %conv128.i301 = trunc i32 %shr127.i to i16
  %bi_buf129.i = getelementptr inbounds %struct.internal_state, ptr %683, i64 0, i32 56
  store i16 %conv128.i301, ptr %bi_buf129.i, align 8
  %685 = load i32, ptr %len91.i, align 4
  %sub130.i = add nsw i32 %685, -16
  %686 = load ptr, ptr %s.addr.i242, align 8
  %bi_valid131.i = getelementptr inbounds %struct.internal_state, ptr %686, i64 0, i32 57
  %687 = load i32, ptr %bi_valid131.i, align 4
  %add132.i = add nsw i32 %687, %sub130.i
  store i32 %add132.i, ptr %bi_valid131.i, align 4
  br label %if.end145.i

if.else133.i:                                     ; preds = %if.end90.i
  %688 = load i32, ptr %blcodes.addr.i, align 4
  %conv135.i = add i32 %688, 65532
  %689 = load ptr, ptr %s.addr.i242, align 8
  %bi_valid137.i = getelementptr inbounds %struct.internal_state, ptr %689, i64 0, i32 57
  %690 = load i32, ptr %bi_valid137.i, align 4
  %shl138.i = shl i32 %conv135.i, %690
  %bi_buf139.i = getelementptr inbounds %struct.internal_state, ptr %689, i64 0, i32 56
  %691 = load i16, ptr %bi_buf139.i, align 8
  %692 = trunc i32 %shl138.i to i16
  %conv142.i = or i16 %691, %692
  store i16 %conv142.i, ptr %bi_buf139.i, align 8
  %693 = load i32, ptr %len91.i, align 4
  %694 = load ptr, ptr %s.addr.i242, align 8
  %bi_valid143.i = getelementptr inbounds %struct.internal_state, ptr %694, i64 0, i32 57
  %695 = load i32, ptr %bi_valid143.i, align 4
  %add144.i = add nsw i32 %695, %693
  store i32 %add144.i, ptr %bi_valid143.i, align 4
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.else133.i, %if.then96.i
  br label %for.cond.i302

for.cond.i302:                                    ; preds = %if.end209.i, %if.end145.i
  %storemerge = phi i32 [ 0, %if.end145.i ], [ %inc210.i, %if.end209.i ]
  store i32 %storemerge, ptr %rank.i, align 4
  %696 = load i32, ptr %blcodes.addr.i, align 4
  %cmp146.i = icmp slt i32 %storemerge, %696
  br i1 %cmp146.i, label %for.body.i303, label %pc_inline_source_snapshot_public_repos_zlib_trees_11.exit

for.body.i303:                                    ; preds = %for.cond.i302
  store i32 3, ptr %len148.i, align 4
  %697 = load ptr, ptr %s.addr.i242, align 8
  %bi_valid149.i = getelementptr inbounds %struct.internal_state, ptr %697, i64 0, i32 57
  %698 = load i32, ptr %bi_valid149.i, align 4
  %cmp151.i = icmp sgt i32 %698, 13
  br i1 %cmp151.i, label %if.then153.i, label %if.else193.i

if.then153.i:                                     ; preds = %for.body.i303
  %699 = load ptr, ptr %s.addr.i242, align 8
  %700 = load i32, ptr %rank.i, align 4
  %idxprom.i305 = sext i32 %700 to i64
  %arrayidx155.i = getelementptr inbounds [19 x i8], ptr @bl_order, i64 0, i64 %idxprom.i305
  %701 = load i8, ptr %arrayidx155.i, align 1
  %idxprom156.i = zext i8 %701 to i64
  %dl.i306 = getelementptr inbounds %struct.internal_state, ptr %699, i64 0, i32 39, i64 %idxprom156.i, i32 1
  %702 = load i16, ptr %dl.i306, align 2
  %conv158.i307 = zext i16 %702 to i32
  store i32 %conv158.i307, ptr %val154.i, align 4
  %conv160.i308 = zext i16 %702 to i32
  %703 = load ptr, ptr %s.addr.i242, align 8
  %bi_valid161.i = getelementptr inbounds %struct.internal_state, ptr %703, i64 0, i32 57
  %704 = load i32, ptr %bi_valid161.i, align 4
  %shl162.i = shl i32 %conv160.i308, %704
  %bi_buf163.i = getelementptr inbounds %struct.internal_state, ptr %703, i64 0, i32 56
  %705 = load i16, ptr %bi_buf163.i, align 8
  %706 = trunc i32 %shl162.i to i16
  %conv166.i = or i16 %705, %706
  store i16 %conv166.i, ptr %bi_buf163.i, align 8
  %707 = load ptr, ptr %s.addr.i242, align 8
  %bi_buf167.i = getelementptr inbounds %struct.internal_state, ptr %707, i64 0, i32 56
  %708 = load i16, ptr %bi_buf167.i, align 8
  %conv170.i310 = trunc i16 %708 to i8
  %pending_buf171.i = getelementptr inbounds %struct.internal_state, ptr %707, i64 0, i32 2
  %709 = load ptr, ptr %pending_buf171.i, align 8
  %pending172.i = getelementptr inbounds %struct.internal_state, ptr %707, i64 0, i32 5
  %710 = load i64, ptr %pending172.i, align 8
  %inc173.i = add i64 %710, 1
  store i64 %inc173.i, ptr %pending172.i, align 8
  %arrayidx174.i = getelementptr inbounds i8, ptr %709, i64 %710
  store i8 %conv170.i310, ptr %arrayidx174.i, align 1
  %711 = load ptr, ptr %s.addr.i242, align 8
  %bi_buf175.i = getelementptr inbounds %struct.internal_state, ptr %711, i64 0, i32 56
  %712 = load i16, ptr %bi_buf175.i, align 8
  %713 = lshr i16 %712, 8
  %conv178.i311 = trunc i16 %713 to i8
  %pending_buf179.i = getelementptr inbounds %struct.internal_state, ptr %711, i64 0, i32 2
  %714 = load ptr, ptr %pending_buf179.i, align 8
  %715 = load ptr, ptr %s.addr.i242, align 8
  %pending180.i = getelementptr inbounds %struct.internal_state, ptr %715, i64 0, i32 5
  %716 = load i64, ptr %pending180.i, align 8
  %inc181.i = add i64 %716, 1
  store i64 %inc181.i, ptr %pending180.i, align 8
  %arrayidx182.i = getelementptr inbounds i8, ptr %714, i64 %716
  store i8 %conv178.i311, ptr %arrayidx182.i, align 1
  %717 = load i32, ptr %val154.i, align 4
  %conv184.i = and i32 %717, 65535
  %718 = load ptr, ptr %s.addr.i242, align 8
  %bi_valid185.i312 = getelementptr inbounds %struct.internal_state, ptr %718, i64 0, i32 57
  %719 = load i32, ptr %bi_valid185.i312, align 4
  %sub186.i = sub nsw i32 16, %719
  %shr187.i = lshr i32 %conv184.i, %sub186.i
  %conv188.i313 = trunc i32 %shr187.i to i16
  %bi_buf189.i = getelementptr inbounds %struct.internal_state, ptr %718, i64 0, i32 56
  store i16 %conv188.i313, ptr %bi_buf189.i, align 8
  %720 = load i32, ptr %len148.i, align 4
  %sub190.i = add nsw i32 %720, -16
  %721 = load ptr, ptr %s.addr.i242, align 8
  %bi_valid191.i = getelementptr inbounds %struct.internal_state, ptr %721, i64 0, i32 57
  %722 = load i32, ptr %bi_valid191.i, align 4
  %add192.i = add nsw i32 %722, %sub190.i
  store i32 %add192.i, ptr %bi_valid191.i, align 4
  br label %if.end209.i

if.else193.i:                                     ; preds = %for.body.i303
  %723 = load ptr, ptr %s.addr.i242, align 8
  %724 = load i32, ptr %rank.i, align 4
  %idxprom195.i = sext i32 %724 to i64
  %arrayidx196.i = getelementptr inbounds [19 x i8], ptr @bl_order, i64 0, i64 %idxprom195.i
  %725 = load i8, ptr %arrayidx196.i, align 1
  %idxprom197.i = zext i8 %725 to i64
  %dl199.i = getelementptr inbounds %struct.internal_state, ptr %723, i64 0, i32 39, i64 %idxprom197.i, i32 1
  %726 = load i16, ptr %dl199.i, align 2
  %conv200.i = zext i16 %726 to i32
  %727 = load ptr, ptr %s.addr.i242, align 8
  %bi_valid201.i = getelementptr inbounds %struct.internal_state, ptr %727, i64 0, i32 57
  %728 = load i32, ptr %bi_valid201.i, align 4
  %shl202.i = shl i32 %conv200.i, %728
  %bi_buf203.i = getelementptr inbounds %struct.internal_state, ptr %727, i64 0, i32 56
  %729 = load i16, ptr %bi_buf203.i, align 8
  %730 = trunc i32 %shl202.i to i16
  %conv206.i = or i16 %729, %730
  store i16 %conv206.i, ptr %bi_buf203.i, align 8
  %731 = load i32, ptr %len148.i, align 4
  %732 = load ptr, ptr %s.addr.i242, align 8
  %bi_valid207.i = getelementptr inbounds %struct.internal_state, ptr %732, i64 0, i32 57
  %733 = load i32, ptr %bi_valid207.i, align 4
  %add208.i = add nsw i32 %733, %731
  store i32 %add208.i, ptr %bi_valid207.i, align 4
  br label %if.end209.i

if.end209.i:                                      ; preds = %if.else193.i, %if.then153.i
  %734 = load i32, ptr %rank.i, align 4
  %inc210.i = add nsw i32 %734, 1
  br label %for.cond.i302, !llvm.loop !18

pc_inline_source_snapshot_public_repos_zlib_trees_11.exit: ; preds = %for.cond.i302
  %735 = load ptr, ptr %s.addr.i242, align 8
  %dyn_ltree.i315 = getelementptr inbounds %struct.internal_state, ptr %735, i64 0, i32 37
  %736 = load i32, ptr %lcodes.addr.i, align 4
  %sub211.i = add nsw i32 %736, -1
  call void @send_tree(ptr noundef %735, ptr noundef nonnull %dyn_ltree.i315, i32 noundef %sub211.i)
  %dyn_dtree.i316 = getelementptr inbounds %struct.internal_state, ptr %735, i64 0, i32 38
  %737 = load i32, ptr %dcodes.addr.i, align 4
  %sub213.i = add nsw i32 %737, -1
  call void @send_tree(ptr noundef %735, ptr noundef nonnull %dyn_dtree.i316, i32 noundef %sub213.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i242)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcodes.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dcodes.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blcodes.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rank.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i243)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i244)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len36.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val42.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len91.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val97.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len148.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val154.i)
  %738 = load ptr, ptr %s.addr, align 8
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %738, i64 0, i32 37
  %dyn_dtree = getelementptr inbounds %struct.internal_state, ptr %738, i64 0, i32 38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i318)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ltree.addr.i319)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dtree.addr.i320)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dist.i321)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lc.i322)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sx.i323)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %code.i324)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %extra.i325)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i326)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i327)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len69.i328)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val81.i329)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len146.i330)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val152.i331)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len210.i332)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val220.i333)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len281.i334)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val287.i335)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len340.i336)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val349.i337)
  store ptr %738, ptr %s.addr.i318, align 8
  store ptr %dyn_ltree, ptr %ltree.addr.i319, align 8
  store ptr %dyn_dtree, ptr %dtree.addr.i320, align 8
  store i32 0, ptr %sx.i323, align 4
  %sym_next.i338 = getelementptr inbounds %struct.internal_state, ptr %738, i64 0, i32 50
  %739 = load i32, ptr %sym_next.i338, align 4
  %cmp.i339.not = icmp eq i32 %739, 0
  br i1 %cmp.i339.not, label %if.end339.i687, label %do.body.i361

do.body.i361:                                     ; preds = %pc_inline_source_snapshot_public_repos_zlib_trees_11.exit, %if.end335.i677
  %740 = load ptr, ptr %s.addr.i318, align 8
  %sym_buf.i341 = getelementptr inbounds %struct.internal_state, ptr %740, i64 0, i32 48
  %741 = load ptr, ptr %sym_buf.i341, align 8
  %742 = load i32, ptr %sx.i323, align 4
  %inc.i342 = add i32 %742, 1
  store i32 %inc.i342, ptr %sx.i323, align 4
  %idxprom.i343 = zext i32 %742 to i64
  %arrayidx.i344 = getelementptr inbounds i8, ptr %741, i64 %idxprom.i343
  %743 = load i8, ptr %arrayidx.i344, align 1
  %conv.i345 = zext i8 %743 to i32
  store i32 %conv.i345, ptr %dist.i321, align 4
  %744 = load ptr, ptr %s.addr.i318, align 8
  %sym_buf1.i347 = getelementptr inbounds %struct.internal_state, ptr %744, i64 0, i32 48
  %745 = load ptr, ptr %sym_buf1.i347, align 8
  %746 = load i32, ptr %sx.i323, align 4
  %inc2.i348 = add i32 %746, 1
  store i32 %inc2.i348, ptr %sx.i323, align 4
  %idxprom3.i349 = zext i32 %746 to i64
  %arrayidx4.i350 = getelementptr inbounds i8, ptr %745, i64 %idxprom3.i349
  %747 = load i8, ptr %arrayidx4.i350, align 1
  %conv5.i351 = zext i8 %747 to i32
  %shl.i353 = shl nuw nsw i32 %conv5.i351, 8
  %748 = load i32, ptr %dist.i321, align 4
  %add.i354 = add i32 %748, %shl.i353
  store i32 %add.i354, ptr %dist.i321, align 4
  %749 = load ptr, ptr %s.addr.i318, align 8
  %sym_buf7.i355 = getelementptr inbounds %struct.internal_state, ptr %749, i64 0, i32 48
  %750 = load ptr, ptr %sym_buf7.i355, align 8
  %751 = load i32, ptr %sx.i323, align 4
  %inc8.i356 = add i32 %751, 1
  store i32 %inc8.i356, ptr %sx.i323, align 4
  %idxprom9.i357 = zext i32 %751 to i64
  %arrayidx10.i358 = getelementptr inbounds i8, ptr %750, i64 %idxprom9.i357
  %752 = load i8, ptr %arrayidx10.i358, align 1
  %conv11.i359 = zext i8 %752 to i32
  store i32 %conv11.i359, ptr %lc.i322, align 4
  %753 = load i32, ptr %dist.i321, align 4
  %cmp12.i360 = icmp eq i32 %753, 0
  br i1 %cmp12.i360, label %if.then14.i369, label %if.else65.i433

if.then14.i369:                                   ; preds = %do.body.i361
  %754 = load ptr, ptr %ltree.addr.i319, align 8
  %755 = load i32, ptr %lc.i322, align 4
  %idxprom15.i362 = sext i32 %755 to i64
  %dl.i364 = getelementptr inbounds %struct.ct_data_s, ptr %754, i64 %idxprom15.i362, i32 1
  %756 = load i16, ptr %dl.i364, align 2
  %conv17.i365 = zext i16 %756 to i32
  store i32 %conv17.i365, ptr %len.i326, align 4
  %757 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid.i366 = getelementptr inbounds %struct.internal_state, ptr %757, i64 0, i32 57
  %758 = load i32, ptr %bi_valid.i366, align 4
  %sub.i367 = sub nsw i32 16, %conv17.i365
  %cmp18.i368 = icmp sgt i32 %758, %sub.i367
  br i1 %cmp18.i368, label %if.then20.i407, label %if.else.i419

if.then20.i407:                                   ; preds = %if.then14.i369
  %759 = load ptr, ptr %ltree.addr.i319, align 8
  %760 = load i32, ptr %lc.i322, align 4
  %idxprom21.i370 = sext i32 %760 to i64
  %arrayidx22.i371 = getelementptr inbounds %struct.ct_data_s, ptr %759, i64 %idxprom21.i370
  %761 = load i16, ptr %arrayidx22.i371, align 2
  %conv23.i372 = zext i16 %761 to i32
  store i32 %conv23.i372, ptr %val.i327, align 4
  %conv25.i374 = zext i16 %761 to i32
  %762 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid26.i375 = getelementptr inbounds %struct.internal_state, ptr %762, i64 0, i32 57
  %763 = load i32, ptr %bi_valid26.i375, align 4
  %shl27.i376 = shl i32 %conv25.i374, %763
  %bi_buf.i377 = getelementptr inbounds %struct.internal_state, ptr %762, i64 0, i32 56
  %764 = load i16, ptr %bi_buf.i377, align 8
  %765 = trunc i32 %shl27.i376 to i16
  %conv29.i380 = or i16 %764, %765
  store i16 %conv29.i380, ptr %bi_buf.i377, align 8
  %766 = load ptr, ptr %s.addr.i318, align 8
  %bi_buf30.i381 = getelementptr inbounds %struct.internal_state, ptr %766, i64 0, i32 56
  %767 = load i16, ptr %bi_buf30.i381, align 8
  %conv33.i384 = trunc i16 %767 to i8
  %pending_buf.i385 = getelementptr inbounds %struct.internal_state, ptr %766, i64 0, i32 2
  %768 = load ptr, ptr %pending_buf.i385, align 8
  %pending.i386 = getelementptr inbounds %struct.internal_state, ptr %766, i64 0, i32 5
  %769 = load i64, ptr %pending.i386, align 8
  %inc34.i387 = add i64 %769, 1
  store i64 %inc34.i387, ptr %pending.i386, align 8
  %arrayidx35.i388 = getelementptr inbounds i8, ptr %768, i64 %769
  store i8 %conv33.i384, ptr %arrayidx35.i388, align 1
  %770 = load ptr, ptr %s.addr.i318, align 8
  %bi_buf36.i389 = getelementptr inbounds %struct.internal_state, ptr %770, i64 0, i32 56
  %771 = load i16, ptr %bi_buf36.i389, align 8
  %772 = lshr i16 %771, 8
  %conv38.i392 = trunc i16 %772 to i8
  %pending_buf39.i393 = getelementptr inbounds %struct.internal_state, ptr %770, i64 0, i32 2
  %773 = load ptr, ptr %pending_buf39.i393, align 8
  %774 = load ptr, ptr %s.addr.i318, align 8
  %pending40.i394 = getelementptr inbounds %struct.internal_state, ptr %774, i64 0, i32 5
  %775 = load i64, ptr %pending40.i394, align 8
  %inc41.i395 = add i64 %775, 1
  store i64 %inc41.i395, ptr %pending40.i394, align 8
  %arrayidx42.i396 = getelementptr inbounds i8, ptr %773, i64 %775
  store i8 %conv38.i392, ptr %arrayidx42.i396, align 1
  %776 = load i32, ptr %val.i327, align 4
  %conv44.i398 = and i32 %776, 65535
  %777 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid45.i399 = getelementptr inbounds %struct.internal_state, ptr %777, i64 0, i32 57
  %778 = load i32, ptr %bi_valid45.i399, align 4
  %sub46.i400 = sub nsw i32 16, %778
  %shr47.i401 = lshr i32 %conv44.i398, %sub46.i400
  %conv48.i402 = trunc i32 %shr47.i401 to i16
  %bi_buf49.i403 = getelementptr inbounds %struct.internal_state, ptr %777, i64 0, i32 56
  store i16 %conv48.i402, ptr %bi_buf49.i403, align 8
  %779 = load i32, ptr %len.i326, align 4
  %sub50.i404 = add nsw i32 %779, -16
  %780 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid51.i405 = getelementptr inbounds %struct.internal_state, ptr %780, i64 0, i32 57
  %781 = load i32, ptr %bi_valid51.i405, align 4
  %add52.i406 = add nsw i32 %781, %sub50.i404
  store i32 %add52.i406, ptr %bi_valid51.i405, align 4
  br label %if.end335.i677

if.else.i419:                                     ; preds = %if.then14.i369
  %782 = load ptr, ptr %ltree.addr.i319, align 8
  %783 = load i32, ptr %lc.i322, align 4
  %idxprom53.i408 = sext i32 %783 to i64
  %arrayidx54.i409 = getelementptr inbounds %struct.ct_data_s, ptr %782, i64 %idxprom53.i408
  %784 = load i16, ptr %arrayidx54.i409, align 2
  %conv56.i410 = zext i16 %784 to i32
  %785 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid57.i411 = getelementptr inbounds %struct.internal_state, ptr %785, i64 0, i32 57
  %786 = load i32, ptr %bi_valid57.i411, align 4
  %shl58.i412 = shl i32 %conv56.i410, %786
  %bi_buf59.i413 = getelementptr inbounds %struct.internal_state, ptr %785, i64 0, i32 56
  %787 = load i16, ptr %bi_buf59.i413, align 8
  %788 = trunc i32 %shl58.i412 to i16
  %conv62.i416 = or i16 %787, %788
  store i16 %conv62.i416, ptr %bi_buf59.i413, align 8
  %789 = load i32, ptr %len.i326, align 4
  %790 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid63.i417 = getelementptr inbounds %struct.internal_state, ptr %790, i64 0, i32 57
  %791 = load i32, ptr %bi_valid63.i417, align 4
  %add64.i418 = add nsw i32 %791, %789
  store i32 %add64.i418, ptr %bi_valid63.i417, align 4
  br label %if.end335.i677

if.else65.i433:                                   ; preds = %do.body.i361
  %792 = load i32, ptr %lc.i322, align 4
  %idxprom66.i421 = sext i32 %792 to i64
  %arrayidx67.i422 = getelementptr inbounds [256 x i8], ptr @_length_code, i64 0, i64 %idxprom66.i421
  %793 = load i8, ptr %arrayidx67.i422, align 1
  %conv68.i423 = zext i8 %793 to i32
  store i32 %conv68.i423, ptr %code.i324, align 4
  %794 = load ptr, ptr %ltree.addr.i319, align 8
  %add71.i425 = add nuw nsw i32 %conv68.i423, 257
  %idxprom72.i426 = zext i32 %add71.i425 to i64
  %dl74.i428 = getelementptr inbounds %struct.ct_data_s, ptr %794, i64 %idxprom72.i426, i32 1
  %795 = load i16, ptr %dl74.i428, align 2
  %conv75.i429 = zext i16 %795 to i32
  store i32 %conv75.i429, ptr %len69.i328, align 4
  %796 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid76.i430 = getelementptr inbounds %struct.internal_state, ptr %796, i64 0, i32 57
  %797 = load i32, ptr %bi_valid76.i430, align 4
  %sub77.i431 = sub nsw i32 16, %conv75.i429
  %cmp78.i432 = icmp sgt i32 %797, %sub77.i431
  br i1 %cmp78.i432, label %if.then80.i473, label %if.else122.i487

if.then80.i473:                                   ; preds = %if.else65.i433
  %798 = load ptr, ptr %ltree.addr.i319, align 8
  %799 = load i32, ptr %code.i324, align 4
  %add83.i435 = add i32 %799, 257
  %idxprom84.i436 = zext i32 %add83.i435 to i64
  %arrayidx85.i437 = getelementptr inbounds %struct.ct_data_s, ptr %798, i64 %idxprom84.i436
  %800 = load i16, ptr %arrayidx85.i437, align 2
  %conv87.i438 = zext i16 %800 to i32
  store i32 %conv87.i438, ptr %val81.i329, align 4
  %conv89.i440 = zext i16 %800 to i32
  %801 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid90.i441 = getelementptr inbounds %struct.internal_state, ptr %801, i64 0, i32 57
  %802 = load i32, ptr %bi_valid90.i441, align 4
  %shl91.i442 = shl i32 %conv89.i440, %802
  %bi_buf92.i443 = getelementptr inbounds %struct.internal_state, ptr %801, i64 0, i32 56
  %803 = load i16, ptr %bi_buf92.i443, align 8
  %804 = trunc i32 %shl91.i442 to i16
  %conv95.i446 = or i16 %803, %804
  store i16 %conv95.i446, ptr %bi_buf92.i443, align 8
  %805 = load ptr, ptr %s.addr.i318, align 8
  %bi_buf96.i447 = getelementptr inbounds %struct.internal_state, ptr %805, i64 0, i32 56
  %806 = load i16, ptr %bi_buf96.i447, align 8
  %conv99.i450 = trunc i16 %806 to i8
  %pending_buf100.i451 = getelementptr inbounds %struct.internal_state, ptr %805, i64 0, i32 2
  %807 = load ptr, ptr %pending_buf100.i451, align 8
  %pending101.i452 = getelementptr inbounds %struct.internal_state, ptr %805, i64 0, i32 5
  %808 = load i64, ptr %pending101.i452, align 8
  %inc102.i453 = add i64 %808, 1
  store i64 %inc102.i453, ptr %pending101.i452, align 8
  %arrayidx103.i454 = getelementptr inbounds i8, ptr %807, i64 %808
  store i8 %conv99.i450, ptr %arrayidx103.i454, align 1
  %809 = load ptr, ptr %s.addr.i318, align 8
  %bi_buf104.i455 = getelementptr inbounds %struct.internal_state, ptr %809, i64 0, i32 56
  %810 = load i16, ptr %bi_buf104.i455, align 8
  %811 = lshr i16 %810, 8
  %conv107.i458 = trunc i16 %811 to i8
  %pending_buf108.i459 = getelementptr inbounds %struct.internal_state, ptr %809, i64 0, i32 2
  %812 = load ptr, ptr %pending_buf108.i459, align 8
  %813 = load ptr, ptr %s.addr.i318, align 8
  %pending109.i460 = getelementptr inbounds %struct.internal_state, ptr %813, i64 0, i32 5
  %814 = load i64, ptr %pending109.i460, align 8
  %inc110.i461 = add i64 %814, 1
  store i64 %inc110.i461, ptr %pending109.i460, align 8
  %arrayidx111.i462 = getelementptr inbounds i8, ptr %812, i64 %814
  store i8 %conv107.i458, ptr %arrayidx111.i462, align 1
  %815 = load i32, ptr %val81.i329, align 4
  %conv113.i464 = and i32 %815, 65535
  %816 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid114.i465 = getelementptr inbounds %struct.internal_state, ptr %816, i64 0, i32 57
  %817 = load i32, ptr %bi_valid114.i465, align 4
  %sub115.i466 = sub nsw i32 16, %817
  %shr116.i467 = lshr i32 %conv113.i464, %sub115.i466
  %conv117.i468 = trunc i32 %shr116.i467 to i16
  %bi_buf118.i469 = getelementptr inbounds %struct.internal_state, ptr %816, i64 0, i32 56
  store i16 %conv117.i468, ptr %bi_buf118.i469, align 8
  %818 = load i32, ptr %len69.i328, align 4
  %sub119.i470 = add nsw i32 %818, -16
  %819 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid120.i471 = getelementptr inbounds %struct.internal_state, ptr %819, i64 0, i32 57
  %820 = load i32, ptr %bi_valid120.i471, align 4
  %add121.i472 = add nsw i32 %820, %sub119.i470
  store i32 %add121.i472, ptr %bi_valid120.i471, align 4
  br label %if.end137.i491

if.else122.i487:                                  ; preds = %if.else65.i433
  %821 = load ptr, ptr %ltree.addr.i319, align 8
  %822 = load i32, ptr %code.i324, align 4
  %add124.i475 = add i32 %822, 257
  %idxprom125.i476 = zext i32 %add124.i475 to i64
  %arrayidx126.i477 = getelementptr inbounds %struct.ct_data_s, ptr %821, i64 %idxprom125.i476
  %823 = load i16, ptr %arrayidx126.i477, align 2
  %conv128.i478 = zext i16 %823 to i32
  %824 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid129.i479 = getelementptr inbounds %struct.internal_state, ptr %824, i64 0, i32 57
  %825 = load i32, ptr %bi_valid129.i479, align 4
  %shl130.i480 = shl i32 %conv128.i478, %825
  %bi_buf131.i481 = getelementptr inbounds %struct.internal_state, ptr %824, i64 0, i32 56
  %826 = load i16, ptr %bi_buf131.i481, align 8
  %827 = trunc i32 %shl130.i480 to i16
  %conv134.i484 = or i16 %826, %827
  store i16 %conv134.i484, ptr %bi_buf131.i481, align 8
  %828 = load i32, ptr %len69.i328, align 4
  %829 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid135.i485 = getelementptr inbounds %struct.internal_state, ptr %829, i64 0, i32 57
  %830 = load i32, ptr %bi_valid135.i485, align 4
  %add136.i486 = add nsw i32 %830, %828
  store i32 %add136.i486, ptr %bi_valid135.i485, align 4
  br label %if.end137.i491

if.end137.i491:                                   ; preds = %if.else122.i487, %if.then80.i473
  %831 = load i32, ptr %code.i324, align 4
  %idxprom138.i488 = zext i32 %831 to i64
  %arrayidx139.i489 = getelementptr inbounds [29 x i32], ptr @extra_lbits, i64 0, i64 %idxprom138.i488
  %832 = load i32, ptr %arrayidx139.i489, align 4
  store i32 %832, ptr %extra.i325, align 4
  %833 = add nsw i64 %idxprom138.i488, -28
  %cmp140.i490.not = icmp ult i64 %833, -20
  br i1 %cmp140.i490.not, label %if.end199.i548, label %if.then142.i498

if.then142.i498:                                  ; preds = %if.end137.i491
  %834 = load i32, ptr %code.i324, align 4
  %idxprom143.i492 = zext i32 %834 to i64
  %arrayidx144.i493 = getelementptr inbounds [29 x i32], ptr @base_length, i64 0, i64 %idxprom143.i492
  %835 = load i32, ptr %arrayidx144.i493, align 4
  %836 = load i32, ptr %lc.i322, align 4
  %sub145.i494 = sub nsw i32 %836, %835
  store i32 %sub145.i494, ptr %lc.i322, align 4
  %837 = load i32, ptr %extra.i325, align 4
  store i32 %837, ptr %len146.i330, align 4
  %838 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid147.i495 = getelementptr inbounds %struct.internal_state, ptr %838, i64 0, i32 57
  %839 = load i32, ptr %bi_valid147.i495, align 4
  %sub148.i496 = sub nsw i32 16, %837
  %cmp149.i497 = icmp sgt i32 %839, %sub148.i496
  br i1 %cmp149.i497, label %if.then151.i533, label %if.else187.i544

if.then151.i533:                                  ; preds = %if.then142.i498
  %840 = load i32, ptr %lc.i322, align 4
  store i32 %840, ptr %val152.i331, align 4
  %841 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid155.i501 = getelementptr inbounds %struct.internal_state, ptr %841, i64 0, i32 57
  %842 = load i32, ptr %bi_valid155.i501, align 4
  %shl156.i502 = shl i32 %840, %842
  %bi_buf157.i503 = getelementptr inbounds %struct.internal_state, ptr %841, i64 0, i32 56
  %843 = load i16, ptr %bi_buf157.i503, align 8
  %844 = trunc i32 %shl156.i502 to i16
  %conv160.i506 = or i16 %843, %844
  store i16 %conv160.i506, ptr %bi_buf157.i503, align 8
  %845 = load ptr, ptr %s.addr.i318, align 8
  %bi_buf161.i507 = getelementptr inbounds %struct.internal_state, ptr %845, i64 0, i32 56
  %846 = load i16, ptr %bi_buf161.i507, align 8
  %conv164.i510 = trunc i16 %846 to i8
  %pending_buf165.i511 = getelementptr inbounds %struct.internal_state, ptr %845, i64 0, i32 2
  %847 = load ptr, ptr %pending_buf165.i511, align 8
  %pending166.i512 = getelementptr inbounds %struct.internal_state, ptr %845, i64 0, i32 5
  %848 = load i64, ptr %pending166.i512, align 8
  %inc167.i513 = add i64 %848, 1
  store i64 %inc167.i513, ptr %pending166.i512, align 8
  %arrayidx168.i514 = getelementptr inbounds i8, ptr %847, i64 %848
  store i8 %conv164.i510, ptr %arrayidx168.i514, align 1
  %849 = load ptr, ptr %s.addr.i318, align 8
  %bi_buf169.i515 = getelementptr inbounds %struct.internal_state, ptr %849, i64 0, i32 56
  %850 = load i16, ptr %bi_buf169.i515, align 8
  %851 = lshr i16 %850, 8
  %conv172.i518 = trunc i16 %851 to i8
  %pending_buf173.i519 = getelementptr inbounds %struct.internal_state, ptr %849, i64 0, i32 2
  %852 = load ptr, ptr %pending_buf173.i519, align 8
  %853 = load ptr, ptr %s.addr.i318, align 8
  %pending174.i520 = getelementptr inbounds %struct.internal_state, ptr %853, i64 0, i32 5
  %854 = load i64, ptr %pending174.i520, align 8
  %inc175.i521 = add i64 %854, 1
  store i64 %inc175.i521, ptr %pending174.i520, align 8
  %arrayidx176.i522 = getelementptr inbounds i8, ptr %852, i64 %854
  store i8 %conv172.i518, ptr %arrayidx176.i522, align 1
  %855 = load i32, ptr %val152.i331, align 4
  %conv178.i524 = and i32 %855, 65535
  %856 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid179.i525 = getelementptr inbounds %struct.internal_state, ptr %856, i64 0, i32 57
  %857 = load i32, ptr %bi_valid179.i525, align 4
  %sub180.i526 = sub nsw i32 16, %857
  %shr181.i527 = lshr i32 %conv178.i524, %sub180.i526
  %conv182.i528 = trunc i32 %shr181.i527 to i16
  %bi_buf183.i529 = getelementptr inbounds %struct.internal_state, ptr %856, i64 0, i32 56
  store i16 %conv182.i528, ptr %bi_buf183.i529, align 8
  %858 = load i32, ptr %len146.i330, align 4
  %sub184.i530 = add nsw i32 %858, -16
  %859 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid185.i531 = getelementptr inbounds %struct.internal_state, ptr %859, i64 0, i32 57
  %860 = load i32, ptr %bi_valid185.i531, align 4
  %add186.i532 = add nsw i32 %860, %sub184.i530
  store i32 %add186.i532, ptr %bi_valid185.i531, align 4
  br label %if.end199.i548

if.else187.i544:                                  ; preds = %if.then142.i498
  %861 = load i32, ptr %lc.i322, align 4
  %862 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid190.i536 = getelementptr inbounds %struct.internal_state, ptr %862, i64 0, i32 57
  %863 = load i32, ptr %bi_valid190.i536, align 4
  %shl191.i537 = shl i32 %861, %863
  %bi_buf192.i538 = getelementptr inbounds %struct.internal_state, ptr %862, i64 0, i32 56
  %864 = load i16, ptr %bi_buf192.i538, align 8
  %865 = trunc i32 %shl191.i537 to i16
  %conv195.i541 = or i16 %864, %865
  store i16 %conv195.i541, ptr %bi_buf192.i538, align 8
  %866 = load i32, ptr %len146.i330, align 4
  %867 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid196.i542 = getelementptr inbounds %struct.internal_state, ptr %867, i64 0, i32 57
  %868 = load i32, ptr %bi_valid196.i542, align 4
  %add197.i543 = add nsw i32 %868, %866
  store i32 %add197.i543, ptr %bi_valid196.i542, align 4
  br label %if.end199.i548

if.end199.i548:                                   ; preds = %if.then151.i533, %if.else187.i544, %if.end137.i491
  %869 = load i32, ptr %dist.i321, align 4
  %dec.i546 = add i32 %869, -1
  store i32 %dec.i546, ptr %dist.i321, align 4
  %cmp200.i547 = icmp ult i32 %dec.i546, 256
  %870 = load i32, ptr %dist.i321, align 4
  %871 = load i32, ptr %dist.i321, align 4
  %shr205.i553 = lshr i32 %871, 7
  %add206.i554 = add nuw nsw i32 %shr205.i553, 256
  %idxprom202.i549.pn.in = select i1 %cmp200.i547, i32 %870, i32 %add206.i554
  %idxprom202.i549.pn = zext i32 %idxprom202.i549.pn.in to i64
  %cond.i559.in.in = getelementptr inbounds [512 x i8], ptr @_dist_code, i64 0, i64 %idxprom202.i549.pn
  %cond.i559.in = load i8, ptr %cond.i559.in.in, align 1
  %cond.i559 = zext i8 %cond.i559.in to i32
  store i32 %cond.i559, ptr %code.i324, align 4
  %872 = load ptr, ptr %dtree.addr.i320, align 8
  %idxprom211.i560 = zext i8 %cond.i559.in to i64
  %dl213.i562 = getelementptr inbounds %struct.ct_data_s, ptr %872, i64 %idxprom211.i560, i32 1
  %873 = load i16, ptr %dl213.i562, align 2
  %conv214.i563 = zext i16 %873 to i32
  store i32 %conv214.i563, ptr %len210.i332, align 4
  %874 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid215.i564 = getelementptr inbounds %struct.internal_state, ptr %874, i64 0, i32 57
  %875 = load i32, ptr %bi_valid215.i564, align 4
  %sub216.i565 = sub nsw i32 16, %conv214.i563
  %cmp217.i566 = icmp sgt i32 %875, %sub216.i565
  br i1 %cmp217.i566, label %if.then219.i605, label %if.else259.i617

if.then219.i605:                                  ; preds = %if.end199.i548
  %876 = load ptr, ptr %dtree.addr.i320, align 8
  %877 = load i32, ptr %code.i324, align 4
  %idxprom221.i568 = zext i32 %877 to i64
  %arrayidx222.i569 = getelementptr inbounds %struct.ct_data_s, ptr %876, i64 %idxprom221.i568
  %878 = load i16, ptr %arrayidx222.i569, align 2
  %conv224.i570 = zext i16 %878 to i32
  store i32 %conv224.i570, ptr %val220.i333, align 4
  %conv226.i572 = zext i16 %878 to i32
  %879 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid227.i573 = getelementptr inbounds %struct.internal_state, ptr %879, i64 0, i32 57
  %880 = load i32, ptr %bi_valid227.i573, align 4
  %shl228.i574 = shl i32 %conv226.i572, %880
  %bi_buf229.i575 = getelementptr inbounds %struct.internal_state, ptr %879, i64 0, i32 56
  %881 = load i16, ptr %bi_buf229.i575, align 8
  %882 = trunc i32 %shl228.i574 to i16
  %conv232.i578 = or i16 %881, %882
  store i16 %conv232.i578, ptr %bi_buf229.i575, align 8
  %883 = load ptr, ptr %s.addr.i318, align 8
  %bi_buf233.i579 = getelementptr inbounds %struct.internal_state, ptr %883, i64 0, i32 56
  %884 = load i16, ptr %bi_buf233.i579, align 8
  %conv236.i582 = trunc i16 %884 to i8
  %pending_buf237.i583 = getelementptr inbounds %struct.internal_state, ptr %883, i64 0, i32 2
  %885 = load ptr, ptr %pending_buf237.i583, align 8
  %pending238.i584 = getelementptr inbounds %struct.internal_state, ptr %883, i64 0, i32 5
  %886 = load i64, ptr %pending238.i584, align 8
  %inc239.i585 = add i64 %886, 1
  store i64 %inc239.i585, ptr %pending238.i584, align 8
  %arrayidx240.i586 = getelementptr inbounds i8, ptr %885, i64 %886
  store i8 %conv236.i582, ptr %arrayidx240.i586, align 1
  %887 = load ptr, ptr %s.addr.i318, align 8
  %bi_buf241.i587 = getelementptr inbounds %struct.internal_state, ptr %887, i64 0, i32 56
  %888 = load i16, ptr %bi_buf241.i587, align 8
  %889 = lshr i16 %888, 8
  %conv244.i590 = trunc i16 %889 to i8
  %pending_buf245.i591 = getelementptr inbounds %struct.internal_state, ptr %887, i64 0, i32 2
  %890 = load ptr, ptr %pending_buf245.i591, align 8
  %891 = load ptr, ptr %s.addr.i318, align 8
  %pending246.i592 = getelementptr inbounds %struct.internal_state, ptr %891, i64 0, i32 5
  %892 = load i64, ptr %pending246.i592, align 8
  %inc247.i593 = add i64 %892, 1
  store i64 %inc247.i593, ptr %pending246.i592, align 8
  %arrayidx248.i594 = getelementptr inbounds i8, ptr %890, i64 %892
  store i8 %conv244.i590, ptr %arrayidx248.i594, align 1
  %893 = load i32, ptr %val220.i333, align 4
  %conv250.i596 = and i32 %893, 65535
  %894 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid251.i597 = getelementptr inbounds %struct.internal_state, ptr %894, i64 0, i32 57
  %895 = load i32, ptr %bi_valid251.i597, align 4
  %sub252.i598 = sub nsw i32 16, %895
  %shr253.i599 = lshr i32 %conv250.i596, %sub252.i598
  %conv254.i600 = trunc i32 %shr253.i599 to i16
  %bi_buf255.i601 = getelementptr inbounds %struct.internal_state, ptr %894, i64 0, i32 56
  store i16 %conv254.i600, ptr %bi_buf255.i601, align 8
  %896 = load i32, ptr %len210.i332, align 4
  %sub256.i602 = add nsw i32 %896, -16
  %897 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid257.i603 = getelementptr inbounds %struct.internal_state, ptr %897, i64 0, i32 57
  %898 = load i32, ptr %bi_valid257.i603, align 4
  %add258.i604 = add nsw i32 %898, %sub256.i602
  store i32 %add258.i604, ptr %bi_valid257.i603, align 4
  br label %if.end272.i621

if.else259.i617:                                  ; preds = %if.end199.i548
  %899 = load ptr, ptr %dtree.addr.i320, align 8
  %900 = load i32, ptr %code.i324, align 4
  %idxprom260.i606 = zext i32 %900 to i64
  %arrayidx261.i607 = getelementptr inbounds %struct.ct_data_s, ptr %899, i64 %idxprom260.i606
  %901 = load i16, ptr %arrayidx261.i607, align 2
  %conv263.i608 = zext i16 %901 to i32
  %902 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid264.i609 = getelementptr inbounds %struct.internal_state, ptr %902, i64 0, i32 57
  %903 = load i32, ptr %bi_valid264.i609, align 4
  %shl265.i610 = shl i32 %conv263.i608, %903
  %bi_buf266.i611 = getelementptr inbounds %struct.internal_state, ptr %902, i64 0, i32 56
  %904 = load i16, ptr %bi_buf266.i611, align 8
  %905 = trunc i32 %shl265.i610 to i16
  %conv269.i614 = or i16 %904, %905
  store i16 %conv269.i614, ptr %bi_buf266.i611, align 8
  %906 = load i32, ptr %len210.i332, align 4
  %907 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid270.i615 = getelementptr inbounds %struct.internal_state, ptr %907, i64 0, i32 57
  %908 = load i32, ptr %bi_valid270.i615, align 4
  %add271.i616 = add nsw i32 %908, %906
  store i32 %add271.i616, ptr %bi_valid270.i615, align 4
  br label %if.end272.i621

if.end272.i621:                                   ; preds = %if.else259.i617, %if.then219.i605
  %909 = load i32, ptr %code.i324, align 4
  %idxprom273.i618 = zext i32 %909 to i64
  %arrayidx274.i619 = getelementptr inbounds [30 x i32], ptr @extra_dbits, i64 0, i64 %idxprom273.i618
  %910 = load i32, ptr %arrayidx274.i619, align 4
  store i32 %910, ptr %extra.i325, align 4
  %cmp275.i620.not = icmp ult i32 %909, 4
  br i1 %cmp275.i620.not, label %if.end335.i677, label %if.then277.i628

if.then277.i628:                                  ; preds = %if.end272.i621
  %911 = load i32, ptr %code.i324, align 4
  %idxprom278.i622 = zext i32 %911 to i64
  %arrayidx279.i623 = getelementptr inbounds [30 x i32], ptr @base_dist, i64 0, i64 %idxprom278.i622
  %912 = load i32, ptr %arrayidx279.i623, align 4
  %913 = load i32, ptr %dist.i321, align 4
  %sub280.i624 = sub i32 %913, %912
  store i32 %sub280.i624, ptr %dist.i321, align 4
  %914 = load i32, ptr %extra.i325, align 4
  store i32 %914, ptr %len281.i334, align 4
  %915 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid282.i625 = getelementptr inbounds %struct.internal_state, ptr %915, i64 0, i32 57
  %916 = load i32, ptr %bi_valid282.i625, align 4
  %sub283.i626 = sub nsw i32 16, %914
  %cmp284.i627 = icmp sgt i32 %916, %sub283.i626
  br i1 %cmp284.i627, label %if.then286.i663, label %if.else322.i674

if.then286.i663:                                  ; preds = %if.then277.i628
  %917 = load i32, ptr %dist.i321, align 4
  store i32 %917, ptr %val287.i335, align 4
  %918 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid290.i631 = getelementptr inbounds %struct.internal_state, ptr %918, i64 0, i32 57
  %919 = load i32, ptr %bi_valid290.i631, align 4
  %shl291.i632 = shl i32 %917, %919
  %bi_buf292.i633 = getelementptr inbounds %struct.internal_state, ptr %918, i64 0, i32 56
  %920 = load i16, ptr %bi_buf292.i633, align 8
  %921 = trunc i32 %shl291.i632 to i16
  %conv295.i636 = or i16 %920, %921
  store i16 %conv295.i636, ptr %bi_buf292.i633, align 8
  %922 = load ptr, ptr %s.addr.i318, align 8
  %bi_buf296.i637 = getelementptr inbounds %struct.internal_state, ptr %922, i64 0, i32 56
  %923 = load i16, ptr %bi_buf296.i637, align 8
  %conv299.i640 = trunc i16 %923 to i8
  %pending_buf300.i641 = getelementptr inbounds %struct.internal_state, ptr %922, i64 0, i32 2
  %924 = load ptr, ptr %pending_buf300.i641, align 8
  %pending301.i642 = getelementptr inbounds %struct.internal_state, ptr %922, i64 0, i32 5
  %925 = load i64, ptr %pending301.i642, align 8
  %inc302.i643 = add i64 %925, 1
  store i64 %inc302.i643, ptr %pending301.i642, align 8
  %arrayidx303.i644 = getelementptr inbounds i8, ptr %924, i64 %925
  store i8 %conv299.i640, ptr %arrayidx303.i644, align 1
  %926 = load ptr, ptr %s.addr.i318, align 8
  %bi_buf304.i645 = getelementptr inbounds %struct.internal_state, ptr %926, i64 0, i32 56
  %927 = load i16, ptr %bi_buf304.i645, align 8
  %928 = lshr i16 %927, 8
  %conv307.i648 = trunc i16 %928 to i8
  %pending_buf308.i649 = getelementptr inbounds %struct.internal_state, ptr %926, i64 0, i32 2
  %929 = load ptr, ptr %pending_buf308.i649, align 8
  %930 = load ptr, ptr %s.addr.i318, align 8
  %pending309.i650 = getelementptr inbounds %struct.internal_state, ptr %930, i64 0, i32 5
  %931 = load i64, ptr %pending309.i650, align 8
  %inc310.i651 = add i64 %931, 1
  store i64 %inc310.i651, ptr %pending309.i650, align 8
  %arrayidx311.i652 = getelementptr inbounds i8, ptr %929, i64 %931
  store i8 %conv307.i648, ptr %arrayidx311.i652, align 1
  %932 = load i32, ptr %val287.i335, align 4
  %conv313.i654 = and i32 %932, 65535
  %933 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid314.i655 = getelementptr inbounds %struct.internal_state, ptr %933, i64 0, i32 57
  %934 = load i32, ptr %bi_valid314.i655, align 4
  %sub315.i656 = sub nsw i32 16, %934
  %shr316.i657 = lshr i32 %conv313.i654, %sub315.i656
  %conv317.i658 = trunc i32 %shr316.i657 to i16
  %bi_buf318.i659 = getelementptr inbounds %struct.internal_state, ptr %933, i64 0, i32 56
  store i16 %conv317.i658, ptr %bi_buf318.i659, align 8
  %935 = load i32, ptr %len281.i334, align 4
  %sub319.i660 = add nsw i32 %935, -16
  %936 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid320.i661 = getelementptr inbounds %struct.internal_state, ptr %936, i64 0, i32 57
  %937 = load i32, ptr %bi_valid320.i661, align 4
  %add321.i662 = add nsw i32 %937, %sub319.i660
  store i32 %add321.i662, ptr %bi_valid320.i661, align 4
  br label %if.end335.i677

if.else322.i674:                                  ; preds = %if.then277.i628
  %938 = load i32, ptr %dist.i321, align 4
  %939 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid325.i666 = getelementptr inbounds %struct.internal_state, ptr %939, i64 0, i32 57
  %940 = load i32, ptr %bi_valid325.i666, align 4
  %shl326.i667 = shl i32 %938, %940
  %bi_buf327.i668 = getelementptr inbounds %struct.internal_state, ptr %939, i64 0, i32 56
  %941 = load i16, ptr %bi_buf327.i668, align 8
  %942 = trunc i32 %shl326.i667 to i16
  %conv330.i671 = or i16 %941, %942
  store i16 %conv330.i671, ptr %bi_buf327.i668, align 8
  %943 = load i32, ptr %len281.i334, align 4
  %944 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid331.i672 = getelementptr inbounds %struct.internal_state, ptr %944, i64 0, i32 57
  %945 = load i32, ptr %bi_valid331.i672, align 4
  %add332.i673 = add nsw i32 %945, %943
  store i32 %add332.i673, ptr %bi_valid331.i672, align 4
  br label %if.end335.i677

if.end335.i677:                                   ; preds = %if.end272.i621, %if.else322.i674, %if.then286.i663, %if.then20.i407, %if.else.i419
  %946 = load i32, ptr %sx.i323, align 4
  %947 = load ptr, ptr %s.addr.i318, align 8
  %sym_next336.i678 = getelementptr inbounds %struct.internal_state, ptr %947, i64 0, i32 50
  %948 = load i32, ptr %sym_next336.i678, align 4
  %cmp337.i679 = icmp ult i32 %946, %948
  br i1 %cmp337.i679, label %do.body.i361, label %if.end339.i687, !llvm.loop !17

if.end339.i687:                                   ; preds = %if.end335.i677, %pc_inline_source_snapshot_public_repos_zlib_trees_11.exit
  %949 = load ptr, ptr %ltree.addr.i319, align 8
  %dl342.i682 = getelementptr inbounds %struct.ct_data_s, ptr %949, i64 256, i32 1
  %950 = load i16, ptr %dl342.i682, align 2
  %conv343.i683 = zext i16 %950 to i32
  store i32 %conv343.i683, ptr %len340.i336, align 4
  %951 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid344.i684 = getelementptr inbounds %struct.internal_state, ptr %951, i64 0, i32 57
  %952 = load i32, ptr %bi_valid344.i684, align 4
  %sub345.i685 = sub nsw i32 16, %conv343.i683
  %cmp346.i686 = icmp sgt i32 %952, %sub345.i685
  br i1 %cmp346.i686, label %if.then348.i724, label %if.else387.i735

if.then348.i724:                                  ; preds = %if.end339.i687
  %953 = load ptr, ptr %ltree.addr.i319, align 8
  %arrayidx350.i688 = getelementptr inbounds %struct.ct_data_s, ptr %953, i64 256
  %954 = load i16, ptr %arrayidx350.i688, align 2
  %conv352.i689 = zext i16 %954 to i32
  store i32 %conv352.i689, ptr %val349.i337, align 4
  %conv354.i691 = zext i16 %954 to i32
  %955 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid355.i692 = getelementptr inbounds %struct.internal_state, ptr %955, i64 0, i32 57
  %956 = load i32, ptr %bi_valid355.i692, align 4
  %shl356.i693 = shl i32 %conv354.i691, %956
  %bi_buf357.i694 = getelementptr inbounds %struct.internal_state, ptr %955, i64 0, i32 56
  %957 = load i16, ptr %bi_buf357.i694, align 8
  %958 = trunc i32 %shl356.i693 to i16
  %conv360.i697 = or i16 %957, %958
  store i16 %conv360.i697, ptr %bi_buf357.i694, align 8
  %959 = load ptr, ptr %s.addr.i318, align 8
  %bi_buf361.i698 = getelementptr inbounds %struct.internal_state, ptr %959, i64 0, i32 56
  %960 = load i16, ptr %bi_buf361.i698, align 8
  %conv364.i701 = trunc i16 %960 to i8
  %pending_buf365.i702 = getelementptr inbounds %struct.internal_state, ptr %959, i64 0, i32 2
  %961 = load ptr, ptr %pending_buf365.i702, align 8
  %pending366.i703 = getelementptr inbounds %struct.internal_state, ptr %959, i64 0, i32 5
  %962 = load i64, ptr %pending366.i703, align 8
  %inc367.i704 = add i64 %962, 1
  store i64 %inc367.i704, ptr %pending366.i703, align 8
  %arrayidx368.i705 = getelementptr inbounds i8, ptr %961, i64 %962
  store i8 %conv364.i701, ptr %arrayidx368.i705, align 1
  %963 = load ptr, ptr %s.addr.i318, align 8
  %bi_buf369.i706 = getelementptr inbounds %struct.internal_state, ptr %963, i64 0, i32 56
  %964 = load i16, ptr %bi_buf369.i706, align 8
  %965 = lshr i16 %964, 8
  %conv372.i709 = trunc i16 %965 to i8
  %pending_buf373.i710 = getelementptr inbounds %struct.internal_state, ptr %963, i64 0, i32 2
  %966 = load ptr, ptr %pending_buf373.i710, align 8
  %967 = load ptr, ptr %s.addr.i318, align 8
  %pending374.i711 = getelementptr inbounds %struct.internal_state, ptr %967, i64 0, i32 5
  %968 = load i64, ptr %pending374.i711, align 8
  %inc375.i712 = add i64 %968, 1
  store i64 %inc375.i712, ptr %pending374.i711, align 8
  %arrayidx376.i713 = getelementptr inbounds i8, ptr %966, i64 %968
  store i8 %conv372.i709, ptr %arrayidx376.i713, align 1
  %969 = load i32, ptr %val349.i337, align 4
  %conv378.i715 = and i32 %969, 65535
  %970 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid379.i716 = getelementptr inbounds %struct.internal_state, ptr %970, i64 0, i32 57
  %971 = load i32, ptr %bi_valid379.i716, align 4
  %sub380.i717 = sub nsw i32 16, %971
  %shr381.i718 = lshr i32 %conv378.i715, %sub380.i717
  %conv382.i719 = trunc i32 %shr381.i718 to i16
  %bi_buf383.i720 = getelementptr inbounds %struct.internal_state, ptr %970, i64 0, i32 56
  store i16 %conv382.i719, ptr %bi_buf383.i720, align 8
  %972 = load i32, ptr %len340.i336, align 4
  %sub384.i721 = add nsw i32 %972, -16
  %973 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid385.i722 = getelementptr inbounds %struct.internal_state, ptr %973, i64 0, i32 57
  %974 = load i32, ptr %bi_valid385.i722, align 4
  %add386.i723 = add nsw i32 %974, %sub384.i721
  store i32 %add386.i723, ptr %bi_valid385.i722, align 4
  br label %pc_inline_source_snapshot_public_repos_zlib_trees_12.exit

if.else387.i735:                                  ; preds = %if.end339.i687
  %975 = load ptr, ptr %ltree.addr.i319, align 8
  %arrayidx388.i725 = getelementptr inbounds %struct.ct_data_s, ptr %975, i64 256
  %976 = load i16, ptr %arrayidx388.i725, align 2
  %conv390.i726 = zext i16 %976 to i32
  %977 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid391.i727 = getelementptr inbounds %struct.internal_state, ptr %977, i64 0, i32 57
  %978 = load i32, ptr %bi_valid391.i727, align 4
  %shl392.i728 = shl i32 %conv390.i726, %978
  %bi_buf393.i729 = getelementptr inbounds %struct.internal_state, ptr %977, i64 0, i32 56
  %979 = load i16, ptr %bi_buf393.i729, align 8
  %980 = trunc i32 %shl392.i728 to i16
  %conv396.i732 = or i16 %979, %980
  store i16 %conv396.i732, ptr %bi_buf393.i729, align 8
  %981 = load i32, ptr %len340.i336, align 4
  %982 = load ptr, ptr %s.addr.i318, align 8
  %bi_valid397.i733 = getelementptr inbounds %struct.internal_state, ptr %982, i64 0, i32 57
  %983 = load i32, ptr %bi_valid397.i733, align 4
  %add398.i734 = add nsw i32 %983, %981
  store i32 %add398.i734, ptr %bi_valid397.i733, align 4
  br label %pc_inline_source_snapshot_public_repos_zlib_trees_12.exit

pc_inline_source_snapshot_public_repos_zlib_trees_12.exit: ; preds = %if.then348.i724, %if.else387.i735
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i318)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ltree.addr.i319)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dtree.addr.i320)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dist.i321)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lc.i322)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sx.i323)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %code.i324)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extra.i325)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i326)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i327)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len69.i328)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val81.i329)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len146.i330)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val152.i331)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len210.i332)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val220.i333)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len281.i334)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val287.i335)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len340.i336)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val349.i337)
  br label %if.end128

if.end128:                                        ; preds = %pc_inline_source_snapshot_public_repos_zlib_trees_10.exit, %pc_inline_source_snapshot_public_repos_zlib_trees_12.exit, %pc_inline_source_snapshot_public_repos_zlib_trees_9.exit
  %984 = load ptr, ptr %s.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i736)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i737)
  store ptr %984, ptr %s.addr.i736, align 8
  br label %for.cond.i739

for.cond.i739:                                    ; preds = %for.body.i743, %if.end128
  %storemerge775 = phi i32 [ 0, %if.end128 ], [ %inc.i744, %for.body.i743 ]
  store i32 %storemerge775, ptr %n.i737, align 4
  %cmp.i738 = icmp slt i32 %storemerge775, 286
  br i1 %cmp.i738, label %for.body.i743, label %for.cond1.i

for.body.i743:                                    ; preds = %for.cond.i739
  %985 = load ptr, ptr %s.addr.i736, align 8
  %986 = load i32, ptr %n.i737, align 4
  %idxprom.i741 = sext i32 %986 to i64
  %arrayidx.i742 = getelementptr inbounds %struct.internal_state, ptr %985, i64 0, i32 37, i64 %idxprom.i741
  store i16 0, ptr %arrayidx.i742, align 4
  %inc.i744 = add nsw i32 %986, 1
  br label %for.cond.i739, !llvm.loop !6

for.cond1.i:                                      ; preds = %for.cond.i739, %for.body3.i
  %storemerge776 = phi i32 [ %inc8.i747, %for.body3.i ], [ 0, %for.cond.i739 ]
  store i32 %storemerge776, ptr %n.i737, align 4
  %cmp2.i = icmp slt i32 %storemerge776, 30
  br i1 %cmp2.i, label %for.body3.i, label %for.cond10.i

for.body3.i:                                      ; preds = %for.cond1.i
  %987 = load ptr, ptr %s.addr.i736, align 8
  %988 = load i32, ptr %n.i737, align 4
  %idxprom4.i = sext i32 %988 to i64
  %arrayidx5.i = getelementptr inbounds %struct.internal_state, ptr %987, i64 0, i32 38, i64 %idxprom4.i
  store i16 0, ptr %arrayidx5.i, align 4
  %inc8.i747 = add nsw i32 %988, 1
  br label %for.cond1.i, !llvm.loop !8

for.cond10.i:                                     ; preds = %for.cond1.i, %for.body12.i
  %storemerge777 = phi i32 [ %inc17.i, %for.body12.i ], [ 0, %for.cond1.i ]
  store i32 %storemerge777, ptr %n.i737, align 4
  %cmp11.i = icmp slt i32 %storemerge777, 19
  br i1 %cmp11.i, label %for.body12.i, label %pc_inline_source_snapshot_public_repos_zlib_trees_13.exit

for.body12.i:                                     ; preds = %for.cond10.i
  %989 = load ptr, ptr %s.addr.i736, align 8
  %990 = load i32, ptr %n.i737, align 4
  %idxprom13.i = sext i32 %990 to i64
  %arrayidx14.i749 = getelementptr inbounds %struct.internal_state, ptr %989, i64 0, i32 39, i64 %idxprom13.i
  store i16 0, ptr %arrayidx14.i749, align 4
  %inc17.i = add nsw i32 %990, 1
  br label %for.cond10.i, !llvm.loop !9

pc_inline_source_snapshot_public_repos_zlib_trees_13.exit: ; preds = %for.cond10.i
  %991 = load ptr, ptr %s.addr.i736, align 8
  %arrayidx20.i = getelementptr inbounds %struct.internal_state, ptr %991, i64 0, i32 37, i64 256
  store i16 1, ptr %arrayidx20.i, align 4
  %static_len.i750 = getelementptr inbounds %struct.internal_state, ptr %991, i64 0, i32 53
  store i64 0, ptr %static_len.i750, align 8
  %opt_len.i751 = getelementptr inbounds %struct.internal_state, ptr %991, i64 0, i32 52
  store i64 0, ptr %opt_len.i751, align 8
  %992 = load ptr, ptr %s.addr.i736, align 8
  %matches.i = getelementptr inbounds %struct.internal_state, ptr %992, i64 0, i32 54
  store i32 0, ptr %matches.i, align 8
  %sym_next.i752 = getelementptr inbounds %struct.internal_state, ptr %992, i64 0, i32 50
  store i32 0, ptr %sym_next.i752, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i736)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i737)
  %993 = load i32, ptr %last.addr, align 4
  %tobool.not = icmp eq i32 %993, 0
  br i1 %tobool.not, label %if.end130, label %if.then129

if.then129:                                       ; preds = %pc_inline_source_snapshot_public_repos_zlib_trees_13.exit
  %994 = load ptr, ptr %s.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i753)
  store ptr %994, ptr %s.addr.i753, align 8
  %bi_valid.i754 = getelementptr inbounds %struct.internal_state, ptr %994, i64 0, i32 57
  %995 = load i32, ptr %bi_valid.i754, align 4
  %cmp.i755 = icmp sgt i32 %995, 8
  br i1 %cmp.i755, label %if.then.i767, label %if.else.i768

if.then.i767:                                     ; preds = %if.then129
  %996 = load ptr, ptr %s.addr.i753, align 8
  %bi_buf.i756 = getelementptr inbounds %struct.internal_state, ptr %996, i64 0, i32 56
  %997 = load i16, ptr %bi_buf.i756, align 8
  %conv1.i759 = trunc i16 %997 to i8
  %pending_buf.i760 = getelementptr inbounds %struct.internal_state, ptr %996, i64 0, i32 2
  %998 = load ptr, ptr %pending_buf.i760, align 8
  %pending.i761 = getelementptr inbounds %struct.internal_state, ptr %996, i64 0, i32 5
  %999 = load i64, ptr %pending.i761, align 8
  %inc.i762 = add i64 %999, 1
  store i64 %inc.i762, ptr %pending.i761, align 8
  %arrayidx.i763 = getelementptr inbounds i8, ptr %998, i64 %999
  store i8 %conv1.i759, ptr %arrayidx.i763, align 1
  %1000 = load ptr, ptr %s.addr.i753, align 8
  %bi_buf2.i = getelementptr inbounds %struct.internal_state, ptr %1000, i64 0, i32 56
  %1001 = load i16, ptr %bi_buf2.i, align 8
  %1002 = lshr i16 %1001, 8
  %conv4.i766 = trunc i16 %1002 to i8
  %pending_buf5.i = getelementptr inbounds %struct.internal_state, ptr %1000, i64 0, i32 2
  %1003 = load ptr, ptr %pending_buf5.i, align 8
  %1004 = load ptr, ptr %s.addr.i753, align 8
  %pending6.i = getelementptr inbounds %struct.internal_state, ptr %1004, i64 0, i32 5
  %1005 = load i64, ptr %pending6.i, align 8
  %inc7.i = add i64 %1005, 1
  store i64 %inc7.i, ptr %pending6.i, align 8
  %arrayidx8.i = getelementptr inbounds i8, ptr %1003, i64 %1005
  store i8 %conv4.i766, ptr %arrayidx8.i, align 1
  br label %pc_inline_source_snapshot_public_repos_zlib_trees_14.exit

if.else.i768:                                     ; preds = %if.then129
  %1006 = load ptr, ptr %s.addr.i753, align 8
  %bi_valid9.i = getelementptr inbounds %struct.internal_state, ptr %1006, i64 0, i32 57
  %1007 = load i32, ptr %bi_valid9.i, align 4
  %cmp10.i = icmp sgt i32 %1007, 0
  br i1 %cmp10.i, label %if.then12.i, label %pc_inline_source_snapshot_public_repos_zlib_trees_14.exit

if.then12.i:                                      ; preds = %if.else.i768
  %1008 = load ptr, ptr %s.addr.i753, align 8
  %bi_buf13.i = getelementptr inbounds %struct.internal_state, ptr %1008, i64 0, i32 56
  %1009 = load i16, ptr %bi_buf13.i, align 8
  %conv14.i = trunc i16 %1009 to i8
  %pending_buf15.i = getelementptr inbounds %struct.internal_state, ptr %1008, i64 0, i32 2
  %1010 = load ptr, ptr %pending_buf15.i, align 8
  %pending16.i = getelementptr inbounds %struct.internal_state, ptr %1008, i64 0, i32 5
  %1011 = load i64, ptr %pending16.i, align 8
  %inc17.i769 = add i64 %1011, 1
  store i64 %inc17.i769, ptr %pending16.i, align 8
  %arrayidx18.i = getelementptr inbounds i8, ptr %1010, i64 %1011
  store i8 %conv14.i, ptr %arrayidx18.i, align 1
  br label %pc_inline_source_snapshot_public_repos_zlib_trees_14.exit

pc_inline_source_snapshot_public_repos_zlib_trees_14.exit: ; preds = %if.else.i768, %if.then12.i, %if.then.i767
  %1012 = load ptr, ptr %s.addr.i753, align 8
  %bi_valid20.i = getelementptr inbounds %struct.internal_state, ptr %1012, i64 0, i32 57
  %1013 = load i32, ptr %bi_valid20.i, align 4
  %sub.i771 = add i32 %1013, 7
  %and21.i = and i32 %sub.i771, 7
  %add.i772 = add nuw nsw i32 %and21.i, 1
  %bi_used.i = getelementptr inbounds %struct.internal_state, ptr %1012, i64 0, i32 58
  store i32 %add.i772, ptr %bi_used.i, align 8
  %1014 = load ptr, ptr %s.addr.i753, align 8
  %bi_buf22.i773 = getelementptr inbounds %struct.internal_state, ptr %1014, i64 0, i32 56
  store i16 0, ptr %bi_buf22.i773, align 8
  %bi_valid23.i774 = getelementptr inbounds %struct.internal_state, ptr %1014, i64 0, i32 57
  store i32 0, ptr %bi_valid23.i774, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i753)
  br label %if.end130

if.end130:                                        ; preds = %pc_inline_source_snapshot_public_repos_zlib_trees_14.exit, %pc_inline_source_snapshot_public_repos_zlib_trees_13.exit
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @build_tree(ptr noundef %s, ptr noundef %desc) #0 {
entry:
  %tree.addr.i239 = alloca ptr, align 8
  %max_code.addr.i = alloca i32, align 4
  %bl_count.addr.i = alloca ptr, align 8
  %next_code.i = alloca [16 x i16], align 2
  %code.i = alloca i32, align 4
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

for.cond38:                                       ; preds = %pc_inline_source_snapshot_public_repos_zlib_trees_15.exit, %while.end
  %storemerge258 = phi i32 [ %div, %while.end ], [ %dec43, %pc_inline_source_snapshot_public_repos_zlib_trees_15.exit ]
  store i32 %storemerge258, ptr %n, align 4
  %cmp39 = icmp sgt i32 %storemerge258, 0
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
  %storemerge267.in = phi i32 [ %40, %for.body41 ], [ %100, %if.end93.i ]
  %storemerge267 = shl i32 %storemerge267.in, 1
  store i32 %storemerge267, ptr %j.i, align 4
  %42 = load ptr, ptr %s.addr.i, align 8
  %heap_len.i = getelementptr inbounds %struct.internal_state, ptr %42, i64 0, i32 45
  %43 = load i32, ptr %heap_len.i, align 4
  %cmp.i.not = icmp sgt i32 %storemerge267, %43
  br i1 %cmp.i.not, label %pc_inline_source_snapshot_public_repos_zlib_trees_15.exit, label %while.body.i

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
  br i1 %cmp62.i, label %pc_inline_source_snapshot_public_repos_zlib_trees_15.exit, label %lor.lhs.false64.i

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
  br i1 %cmp90.i.not, label %if.end93.i, label %pc_inline_source_snapshot_public_repos_zlib_trees_15.exit

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
  br label %while.cond.i, !llvm.loop !19

pc_inline_source_snapshot_public_repos_zlib_trees_15.exit: ; preds = %if.end.i, %land.lhs.true78.i, %while.cond.i
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
  br label %for.cond38, !llvm.loop !14

for.end44:                                        ; preds = %for.cond38
  %105 = load i32, ptr %elems, align 4
  store i32 %105, ptr %node, align 4
  br label %do.body

do.body:                                          ; preds = %pc_inline_source_snapshot_public_repos_zlib_trees_17.exit, %for.end44
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
  %storemerge259 = phi i32 [ 2, %do.body ], [ %shl100.i107, %if.end93.i108 ]
  store i32 %storemerge259, ptr %j.i5, align 4
  %113 = load ptr, ptr %s.addr.i1, align 8
  %heap_len.i10 = getelementptr inbounds %struct.internal_state, ptr %113, i64 0, i32 45
  %114 = load i32, ptr %heap_len.i10, align 4
  %cmp.i11.not = icmp sgt i32 %storemerge259, %114
  br i1 %cmp.i11.not, label %pc_inline_source_snapshot_public_repos_zlib_trees_16.exit, label %while.body.i15

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
  br i1 %cmp62.i74, label %pc_inline_source_snapshot_public_repos_zlib_trees_16.exit, label %lor.lhs.false64.i86

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
  br i1 %cmp90.i98.not, label %if.end93.i108, label %pc_inline_source_snapshot_public_repos_zlib_trees_16.exit

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
  br label %while.cond.i12, !llvm.loop !19

pc_inline_source_snapshot_public_repos_zlib_trees_16.exit: ; preds = %if.end.i75, %land.lhs.true78.i99, %while.cond.i12
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

cond.true88:                                      ; preds = %pc_inline_source_snapshot_public_repos_zlib_trees_16.exit
  %194 = load ptr, ptr %s.addr, align 8
  %195 = load i32, ptr %n, align 4
  %idxprom90 = sext i32 %195 to i64
  %arrayidx91 = getelementptr inbounds %struct.internal_state, ptr %194, i64 0, i32 47, i64 %idxprom90
  br label %cond.end98

cond.false93:                                     ; preds = %pc_inline_source_snapshot_public_repos_zlib_trees_16.exit
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
  %storemerge260 = phi i32 [ 2, %cond.end98 ], [ %shl100.i218, %if.end93.i219 ]
  store i32 %storemerge260, ptr %j.i116, align 4
  %207 = load ptr, ptr %s.addr.i112, align 8
  %heap_len.i121 = getelementptr inbounds %struct.internal_state, ptr %207, i64 0, i32 45
  %208 = load i32, ptr %heap_len.i121, align 4
  %cmp.i122.not = icmp sgt i32 %storemerge260, %208
  br i1 %cmp.i122.not, label %pc_inline_source_snapshot_public_repos_zlib_trees_17.exit, label %while.body.i126

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
  br i1 %cmp62.i185, label %pc_inline_source_snapshot_public_repos_zlib_trees_17.exit, label %lor.lhs.false64.i197

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
  br i1 %cmp90.i209.not, label %if.end93.i219, label %pc_inline_source_snapshot_public_repos_zlib_trees_17.exit

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
  br label %while.cond.i123, !llvm.loop !19

pc_inline_source_snapshot_public_repos_zlib_trees_17.exit: ; preds = %if.end.i186, %land.lhs.true78.i210, %while.cond.i123
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
  br i1 %cmp116, label %do.body, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %pc_inline_source_snapshot_public_repos_zlib_trees_17.exit
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
  %storemerge261 = phi i32 [ 0, %do.end ], [ %inc.i227, %for.body.i ]
  store i32 %storemerge261, ptr %bits.i, align 4
  %cmp.i224 = icmp slt i32 %storemerge261, 16
  br i1 %cmp.i224, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %287 = load ptr, ptr %s.addr.i223, align 8
  %288 = load i32, ptr %bits.i, align 4
  %idxprom.i225 = sext i32 %288 to i64
  %arrayidx.i226 = getelementptr inbounds %struct.internal_state, ptr %287, i64 0, i32 43, i64 %idxprom.i225
  store i16 0, ptr %arrayidx.i226, align 2
  %inc.i227 = add nsw i32 %288, 1
  br label %for.cond.i, !llvm.loop !20

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
  %storemerge262.in.in = phi ptr [ %heap_max10.i, %for.end.i ], [ %h.i, %for.inc62.i ]
  %storemerge262.in = load i32, ptr %storemerge262.in.in, align 4
  %storemerge262 = add nsw i32 %storemerge262.in, 1
  store i32 %storemerge262, ptr %h.i, align 4
  %cmp12.i = icmp slt i32 %storemerge262.in, 572
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
  %conv49.i = zext i32 %add48.i to i64
  %mul.i = mul nuw nsw i64 %conv47.i, %conv49.i
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
  %conv58.i = zext i32 %add57.i to i64
  %mul59.i = mul nuw nsw i64 %conv52.i, %conv58.i
  %329 = load ptr, ptr %s.addr.i223, align 8
  %static_len.i = getelementptr inbounds %struct.internal_state, ptr %329, i64 0, i32 53
  %330 = load i64, ptr %static_len.i, align 8
  %add60.i = add i64 %330, %mul59.i
  store i64 %add60.i, ptr %static_len.i, align 8
  br label %for.inc62.i

for.inc62.i:                                      ; preds = %if.end44.i, %if.then51.i, %if.end.i236
  br label %for.cond11.i, !llvm.loop !21

for.end64.i:                                      ; preds = %for.cond11.i
  %331 = load i32, ptr %overflow.i, align 4
  %cmp65.i = icmp eq i32 %331, 0
  br i1 %cmp65.i, label %pc_inline_source_snapshot_public_repos_zlib_trees_18.exit, label %do.body.i

do.body.i:                                        ; preds = %for.end64.i, %while.end.i
  br label %while.cond.i237

while.cond.i237:                                  ; preds = %while.cond.i237, %do.body.i
  %storemerge263.in.in = phi ptr [ %max_length.i, %do.body.i ], [ %bits.i, %while.cond.i237 ]
  %storemerge263.in = load i32, ptr %storemerge263.in.in, align 4
  %storemerge263 = add nsw i32 %storemerge263.in, -1
  store i32 %storemerge263, ptr %bits.i, align 4
  %332 = load ptr, ptr %s.addr.i223, align 8
  %idxprom71.i = sext i32 %storemerge263 to i64
  %arrayidx72.i = getelementptr inbounds %struct.internal_state, ptr %332, i64 0, i32 43, i64 %idxprom71.i
  %333 = load i16, ptr %arrayidx72.i, align 2
  %cmp74.i = icmp eq i16 %333, 0
  br i1 %cmp74.i, label %while.cond.i237, label %while.end.i, !llvm.loop !22

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
  br i1 %cmp92.i, label %do.body.i, label %do.end.i, !llvm.loop !23

do.end.i:                                         ; preds = %while.end.i
  %344 = load i32, ptr %max_length.i, align 4
  br label %for.cond94.i

for.cond94.i:                                     ; preds = %while.end140.i, %do.end.i
  %storemerge264 = phi i32 [ %344, %do.end.i ], [ %dec142.i, %while.end140.i ]
  store i32 %storemerge264, ptr %bits.i, align 4
  %cmp95.i.not = icmp eq i32 %storemerge264, 0
  br i1 %cmp95.i.not, label %pc_inline_source_snapshot_public_repos_zlib_trees_18.exit, label %for.body97.i

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
  br i1 %cmp110.i, label %while.cond102.i, label %if.end113.i, !llvm.loop !24

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
  br label %while.cond102.i, !llvm.loop !24

while.end140.i:                                   ; preds = %while.cond102.i
  %370 = load i32, ptr %bits.i, align 4
  %dec142.i = add nsw i32 %370, -1
  br label %for.cond94.i, !llvm.loop !25

pc_inline_source_snapshot_public_repos_zlib_trees_18.exit: ; preds = %for.end64.i, %for.cond94.i
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %code.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits.i240)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i241)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i)
  store ptr %371, ptr %tree.addr.i239, align 8
  store i32 %372, ptr %max_code.addr.i, align 4
  store ptr %bl_count, ptr %bl_count.addr.i, align 8
  store i32 0, ptr %code.i, align 4
  br label %for.cond.i243

for.cond.i243:                                    ; preds = %for.body.i250, %pc_inline_source_snapshot_public_repos_zlib_trees_18.exit
  %storemerge265 = phi i32 [ 1, %pc_inline_source_snapshot_public_repos_zlib_trees_18.exit ], [ %inc.i251, %for.body.i250 ]
  store i32 %storemerge265, ptr %bits.i240, align 4
  %cmp.i242 = icmp slt i32 %storemerge265, 16
  br i1 %cmp.i242, label %for.body.i250, label %for.cond4.i

for.body.i250:                                    ; preds = %for.cond.i243
  %374 = load i32, ptr %code.i, align 4
  %375 = load ptr, ptr %bl_count.addr.i, align 8
  %376 = load i32, ptr %bits.i240, align 4
  %sub.i244 = add nsw i32 %376, -1
  %idxprom.i245 = sext i32 %sub.i244 to i64
  %arrayidx.i246 = getelementptr inbounds i16, ptr %375, i64 %idxprom.i245
  %377 = load i16, ptr %arrayidx.i246, align 2
  %conv.i247 = zext i16 %377 to i32
  %add.i248 = add i32 %374, %conv.i247
  %shl.i249 = shl i32 %add.i248, 1
  store i32 %shl.i249, ptr %code.i, align 4
  %conv1.i = trunc i32 %shl.i249 to i16
  %378 = load i32, ptr %bits.i240, align 4
  %idxprom2.i = sext i32 %378 to i64
  %arrayidx3.i = getelementptr inbounds [16 x i16], ptr %next_code.i, i64 0, i64 %idxprom2.i
  store i16 %conv1.i, ptr %arrayidx3.i, align 2
  %inc.i251 = add nsw i32 %378, 1
  br label %for.cond.i243, !llvm.loop !26

for.cond4.i:                                      ; preds = %for.cond.i243, %for.inc20.i
  %storemerge266 = phi i32 [ %inc21.i, %for.inc20.i ], [ 0, %for.cond.i243 ]
  store i32 %storemerge266, ptr %n.i241, align 4
  %379 = load i32, ptr %max_code.addr.i, align 4
  %cmp5.i.not = icmp sgt i32 %storemerge266, %379
  br i1 %cmp5.i.not, label %pc_inline_source_snapshot_public_repos_zlib_trees_19.exit, label %for.body7.i

for.body7.i:                                      ; preds = %for.cond4.i
  %380 = load ptr, ptr %tree.addr.i239, align 8
  %381 = load i32, ptr %n.i241, align 4
  %idxprom8.i253 = sext i32 %381 to i64
  %dl.i255 = getelementptr inbounds %struct.ct_data_s, ptr %380, i64 %idxprom8.i253, i32 1
  %382 = load i16, ptr %dl.i255, align 2
  %conv10.i = zext i16 %382 to i32
  store i32 %conv10.i, ptr %len.i, align 4
  %cmp11.i = icmp eq i16 %382, 0
  br i1 %cmp11.i, label %for.inc20.i, label %if.end.i257

if.end.i257:                                      ; preds = %for.body7.i
  %383 = load i32, ptr %len.i, align 4
  %idxprom13.i = sext i32 %383 to i64
  %arrayidx14.i = getelementptr inbounds [16 x i16], ptr %next_code.i, i64 0, i64 %idxprom13.i
  %384 = load i16, ptr %arrayidx14.i, align 2
  %inc15.i = add i16 %384, 1
  store i16 %inc15.i, ptr %arrayidx14.i, align 2
  %conv16.i = zext i16 %384 to i32
  %385 = load i32, ptr %len.i, align 4
  %call.i = call i32 @bi_reverse(i32 noundef %conv16.i, i32 noundef %385)
  %conv17.i = trunc i32 %call.i to i16
  %386 = load ptr, ptr %tree.addr.i239, align 8
  %387 = load i32, ptr %n.i241, align 4
  %idxprom18.i = sext i32 %387 to i64
  %arrayidx19.i = getelementptr inbounds %struct.ct_data_s, ptr %386, i64 %idxprom18.i
  store i16 %conv17.i, ptr %arrayidx19.i, align 2
  br label %for.inc20.i

for.inc20.i:                                      ; preds = %for.body7.i, %if.end.i257
  %388 = load i32, ptr %n.i241, align 4
  %inc21.i = add nsw i32 %388, 1
  br label %for.cond4.i, !llvm.loop !27

pc_inline_source_snapshot_public_repos_zlib_trees_19.exit: ; preds = %for.cond4.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tree.addr.i239)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_code.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bl_count.addr.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %next_code.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %code.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits.i240)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i241)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i)
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
  %code.addr.i = alloca i32, align 4
  %len.addr.i = alloca i32, align 4
  %res.i = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %code.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res.i)
  store i32 %conv16, ptr %code.addr.i, align 4
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
  br i1 %cmp.i, label %do.body.i, label %pc_inline_source_snapshot_public_repos_zlib_trees_25.exit, !llvm.loop !28

pc_inline_source_snapshot_public_repos_zlib_trees_25.exit: ; preds = %do.body.i
  %16 = load i32, ptr %res.i, align 4
  %shr1.i = lshr i32 %16, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %code.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i)
  %conv17 = trunc i32 %shr1.i to i16
  %17 = load ptr, ptr %tree.addr, align 8
  %18 = load i32, ptr %n, align 4
  %idxprom18 = sext i32 %18 to i64
  %arrayidx19 = getelementptr inbounds %struct.ct_data_s, ptr %17, i64 %idxprom18
  store i16 %conv17, ptr %arrayidx19, align 2
  br label %for.inc20

for.inc20:                                        ; preds = %for.body7, %pc_inline_source_snapshot_public_repos_zlib_trees_25.exit
  %19 = load i32, ptr %n, align 4
  %inc21 = add nsw i32 %19, 1
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

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @pc_inline_source_snapshot_public_repos_zlib_trees_9(ptr noundef %s, ptr noundef %buf, i64 noundef %stored_len, i32 noundef %last) #3 {
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
  %call = call ptr @__memcpy_chk(ptr noundef %add.ptr, ptr noundef %52, i64 noundef %53, i64 noundef %57) #5
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { alwaysinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }

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
