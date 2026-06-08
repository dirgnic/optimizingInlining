; ModuleID = './source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libz/trees.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libz/trees.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.static_tree_desc_s = type { ptr, ptr, i32, i32, i32 }
%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }
%struct.internal_state = type { ptr, i32, ptr, i64, ptr, i32, i32, i8, i8, i32, i32, i32, i32, ptr, i64, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [573 x %struct.ct_data_s], [61 x %struct.ct_data_s], [39 x %struct.ct_data_s], %struct.tree_desc_s, %struct.tree_desc_s, %struct.tree_desc_s, [16 x i16], [573 x i32], i32, i32, [573 x i8], ptr, i32, i32, ptr, i64, i64, i32, i32, i16, i32 }
%struct.tree_desc_s = type { ptr, i32, ptr }

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
  call void @tr_static_init()
  %0 = load ptr, ptr %s.addr, align 8
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %0, i32 0, i32 36
  %arraydecay = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree, i64 0, i64 0
  %1 = load ptr, ptr %s.addr, align 8
  %l_desc = getelementptr inbounds %struct.internal_state, ptr %1, i32 0, i32 39
  %dyn_tree = getelementptr inbounds %struct.tree_desc_s, ptr %l_desc, i32 0, i32 0
  store ptr %arraydecay, ptr %dyn_tree, align 8
  %2 = load ptr, ptr %s.addr, align 8
  %l_desc1 = getelementptr inbounds %struct.internal_state, ptr %2, i32 0, i32 39
  %stat_desc = getelementptr inbounds %struct.tree_desc_s, ptr %l_desc1, i32 0, i32 2
  store ptr @static_l_desc, ptr %stat_desc, align 8
  %3 = load ptr, ptr %s.addr, align 8
  %dyn_dtree = getelementptr inbounds %struct.internal_state, ptr %3, i32 0, i32 37
  %arraydecay2 = getelementptr inbounds [61 x %struct.ct_data_s], ptr %dyn_dtree, i64 0, i64 0
  %4 = load ptr, ptr %s.addr, align 8
  %d_desc = getelementptr inbounds %struct.internal_state, ptr %4, i32 0, i32 40
  %dyn_tree3 = getelementptr inbounds %struct.tree_desc_s, ptr %d_desc, i32 0, i32 0
  store ptr %arraydecay2, ptr %dyn_tree3, align 8
  %5 = load ptr, ptr %s.addr, align 8
  %d_desc4 = getelementptr inbounds %struct.internal_state, ptr %5, i32 0, i32 40
  %stat_desc5 = getelementptr inbounds %struct.tree_desc_s, ptr %d_desc4, i32 0, i32 2
  store ptr @static_d_desc, ptr %stat_desc5, align 8
  %6 = load ptr, ptr %s.addr, align 8
  %bl_tree = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 38
  %arraydecay6 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree, i64 0, i64 0
  %7 = load ptr, ptr %s.addr, align 8
  %bl_desc = getelementptr inbounds %struct.internal_state, ptr %7, i32 0, i32 41
  %dyn_tree7 = getelementptr inbounds %struct.tree_desc_s, ptr %bl_desc, i32 0, i32 0
  store ptr %arraydecay6, ptr %dyn_tree7, align 8
  %8 = load ptr, ptr %s.addr, align 8
  %bl_desc8 = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 41
  %stat_desc9 = getelementptr inbounds %struct.tree_desc_s, ptr %bl_desc8, i32 0, i32 2
  store ptr @static_bl_desc, ptr %stat_desc9, align 8
  %9 = load ptr, ptr %s.addr, align 8
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %9, i32 0, i32 55
  store i16 0, ptr %bi_buf, align 8
  %10 = load ptr, ptr %s.addr, align 8
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %10, i32 0, i32 56
  store i32 0, ptr %bi_valid, align 4
  %11 = load ptr, ptr %s.addr, align 8
  %last_eob_len = getelementptr inbounds %struct.internal_state, ptr %11, i32 0, i32 54
  store i32 8, ptr %last_eob_len, align 4
  %12 = load ptr, ptr %s.addr, align 8
  call void @init_block(ptr noundef %12)
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
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %0, 286
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %s.addr, align 8
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %1, i32 0, i32 36
  %2 = load i32, ptr %n, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree, i64 0, i64 %idxprom
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx, i32 0, i32 0
  store i16 0, ptr %fc, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %n, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %n, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc7, %for.end
  %4 = load i32, ptr %n, align 4
  %cmp2 = icmp slt i32 %4, 30
  br i1 %cmp2, label %for.body3, label %for.end9

for.body3:                                        ; preds = %for.cond1
  %5 = load ptr, ptr %s.addr, align 8
  %dyn_dtree = getelementptr inbounds %struct.internal_state, ptr %5, i32 0, i32 37
  %6 = load i32, ptr %n, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [61 x %struct.ct_data_s], ptr %dyn_dtree, i64 0, i64 %idxprom4
  %fc6 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx5, i32 0, i32 0
  store i16 0, ptr %fc6, align 4
  br label %for.inc7

for.inc7:                                         ; preds = %for.body3
  %7 = load i32, ptr %n, align 4
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, ptr %n, align 4
  br label %for.cond1, !llvm.loop !8

for.end9:                                         ; preds = %for.cond1
  store i32 0, ptr %n, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc16, %for.end9
  %8 = load i32, ptr %n, align 4
  %cmp11 = icmp slt i32 %8, 19
  br i1 %cmp11, label %for.body12, label %for.end18

for.body12:                                       ; preds = %for.cond10
  %9 = load ptr, ptr %s.addr, align 8
  %bl_tree = getelementptr inbounds %struct.internal_state, ptr %9, i32 0, i32 38
  %10 = load i32, ptr %n, align 4
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree, i64 0, i64 %idxprom13
  %fc15 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx14, i32 0, i32 0
  store i16 0, ptr %fc15, align 4
  br label %for.inc16

for.inc16:                                        ; preds = %for.body12
  %11 = load i32, ptr %n, align 4
  %inc17 = add nsw i32 %11, 1
  store i32 %inc17, ptr %n, align 4
  br label %for.cond10, !llvm.loop !9

for.end18:                                        ; preds = %for.cond10
  %12 = load ptr, ptr %s.addr, align 8
  %dyn_ltree19 = getelementptr inbounds %struct.internal_state, ptr %12, i32 0, i32 36
  %arrayidx20 = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree19, i64 0, i64 256
  %fc21 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx20, i32 0, i32 0
  store i16 1, ptr %fc21, align 4
  %13 = load ptr, ptr %s.addr, align 8
  %static_len = getelementptr inbounds %struct.internal_state, ptr %13, i32 0, i32 52
  store i64 0, ptr %static_len, align 8
  %14 = load ptr, ptr %s.addr, align 8
  %opt_len = getelementptr inbounds %struct.internal_state, ptr %14, i32 0, i32 51
  store i64 0, ptr %opt_len, align 8
  %15 = load ptr, ptr %s.addr, align 8
  %matches = getelementptr inbounds %struct.internal_state, ptr %15, i32 0, i32 53
  store i32 0, ptr %matches, align 8
  %16 = load ptr, ptr %s.addr, align 8
  %last_lit = getelementptr inbounds %struct.internal_state, ptr %16, i32 0, i32 49
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
  %0 = load ptr, ptr %s.addr, align 8
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %0, i32 0, i32 56
  %1 = load i32, ptr %bi_valid, align 4
  %2 = load i32, ptr %len, align 4
  %sub = sub nsw i32 16, %2
  %cmp = icmp sgt i32 %1, %sub
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %eof.addr, align 4
  %add = add nsw i32 0, %3
  store i32 %add, ptr %val, align 4
  %4 = load i32, ptr %val, align 4
  %5 = load ptr, ptr %s.addr, align 8
  %bi_valid1 = getelementptr inbounds %struct.internal_state, ptr %5, i32 0, i32 56
  %6 = load i32, ptr %bi_valid1, align 4
  %shl = shl i32 %4, %6
  %7 = load ptr, ptr %s.addr, align 8
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %7, i32 0, i32 55
  %8 = load i16, ptr %bi_buf, align 8
  %conv = zext i16 %8 to i32
  %or = or i32 %conv, %shl
  %conv2 = trunc i32 %or to i16
  store i16 %conv2, ptr %bi_buf, align 8
  %9 = load ptr, ptr %s.addr, align 8
  %bi_buf3 = getelementptr inbounds %struct.internal_state, ptr %9, i32 0, i32 55
  %10 = load i16, ptr %bi_buf3, align 8
  %conv4 = zext i16 %10 to i32
  %and = and i32 %conv4, 255
  %conv5 = trunc i32 %and to i8
  %11 = load ptr, ptr %s.addr, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %pending_buf, align 8
  %13 = load ptr, ptr %s.addr, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %13, i32 0, i32 5
  %14 = load i32, ptr %pending, align 8
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %pending, align 8
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %idxprom
  store i8 %conv5, ptr %arrayidx, align 1
  %15 = load ptr, ptr %s.addr, align 8
  %bi_buf6 = getelementptr inbounds %struct.internal_state, ptr %15, i32 0, i32 55
  %16 = load i16, ptr %bi_buf6, align 8
  %conv7 = zext i16 %16 to i32
  %shr = ashr i32 %conv7, 8
  %conv8 = trunc i32 %shr to i8
  %17 = load ptr, ptr %s.addr, align 8
  %pending_buf9 = getelementptr inbounds %struct.internal_state, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %pending_buf9, align 8
  %19 = load ptr, ptr %s.addr, align 8
  %pending10 = getelementptr inbounds %struct.internal_state, ptr %19, i32 0, i32 5
  %20 = load i32, ptr %pending10, align 8
  %inc11 = add nsw i32 %20, 1
  store i32 %inc11, ptr %pending10, align 8
  %idxprom12 = sext i32 %20 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %18, i64 %idxprom12
  store i8 %conv8, ptr %arrayidx13, align 1
  %21 = load i32, ptr %val, align 4
  %conv14 = trunc i32 %21 to i16
  %conv15 = zext i16 %conv14 to i32
  %22 = load ptr, ptr %s.addr, align 8
  %bi_valid16 = getelementptr inbounds %struct.internal_state, ptr %22, i32 0, i32 56
  %23 = load i32, ptr %bi_valid16, align 4
  %conv17 = sext i32 %23 to i64
  %sub18 = sub i64 16, %conv17
  %sh_prom = trunc i64 %sub18 to i32
  %shr19 = ashr i32 %conv15, %sh_prom
  %conv20 = trunc i32 %shr19 to i16
  %24 = load ptr, ptr %s.addr, align 8
  %bi_buf21 = getelementptr inbounds %struct.internal_state, ptr %24, i32 0, i32 55
  store i16 %conv20, ptr %bi_buf21, align 8
  %25 = load i32, ptr %len, align 4
  %conv22 = sext i32 %25 to i64
  %sub23 = sub i64 %conv22, 16
  %26 = load ptr, ptr %s.addr, align 8
  %bi_valid24 = getelementptr inbounds %struct.internal_state, ptr %26, i32 0, i32 56
  %27 = load i32, ptr %bi_valid24, align 4
  %conv25 = sext i32 %27 to i64
  %add26 = add i64 %conv25, %sub23
  %conv27 = trunc i64 %add26 to i32
  store i32 %conv27, ptr %bi_valid24, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %28 = load i32, ptr %eof.addr, align 4
  %add28 = add nsw i32 0, %28
  %29 = load ptr, ptr %s.addr, align 8
  %bi_valid29 = getelementptr inbounds %struct.internal_state, ptr %29, i32 0, i32 56
  %30 = load i32, ptr %bi_valid29, align 4
  %shl30 = shl i32 %add28, %30
  %31 = load ptr, ptr %s.addr, align 8
  %bi_buf31 = getelementptr inbounds %struct.internal_state, ptr %31, i32 0, i32 55
  %32 = load i16, ptr %bi_buf31, align 8
  %conv32 = zext i16 %32 to i32
  %or33 = or i32 %conv32, %shl30
  %conv34 = trunc i32 %or33 to i16
  store i16 %conv34, ptr %bi_buf31, align 8
  %33 = load i32, ptr %len, align 4
  %34 = load ptr, ptr %s.addr, align 8
  %bi_valid35 = getelementptr inbounds %struct.internal_state, ptr %34, i32 0, i32 56
  %35 = load i32, ptr %bi_valid35, align 4
  %add36 = add nsw i32 %35, %33
  store i32 %add36, ptr %bi_valid35, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %36 = load ptr, ptr %s.addr, align 8
  %37 = load ptr, ptr %buf.addr, align 8
  %38 = load i64, ptr %stored_len.addr, align 8
  %conv37 = trunc i64 %38 to i32
  call void @copy_block(ptr noundef %36, ptr noundef %37, i32 noundef %conv37, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @copy_block(ptr noundef %s, ptr noundef %buf, i32 noundef %len, i32 noundef %header) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %header.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 %header, ptr %header.addr, align 4
  %0 = load ptr, ptr %s.addr, align 8
  call void @bi_windup(ptr noundef %0)
  %1 = load ptr, ptr %s.addr, align 8
  %last_eob_len = getelementptr inbounds %struct.internal_state, ptr %1, i32 0, i32 54
  store i32 8, ptr %last_eob_len, align 4
  %2 = load i32, ptr %header.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %len.addr, align 4
  %conv = trunc i32 %3 to i16
  %conv1 = zext i16 %conv to i32
  %and = and i32 %conv1, 255
  %conv2 = trunc i32 %and to i8
  %4 = load ptr, ptr %s.addr, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %pending_buf, align 8
  %6 = load ptr, ptr %s.addr, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 5
  %7 = load i32, ptr %pending, align 8
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %pending, align 8
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %idxprom
  store i8 %conv2, ptr %arrayidx, align 1
  %8 = load i32, ptr %len.addr, align 4
  %conv3 = trunc i32 %8 to i16
  %conv4 = zext i16 %conv3 to i32
  %shr = ashr i32 %conv4, 8
  %conv5 = trunc i32 %shr to i8
  %9 = load ptr, ptr %s.addr, align 8
  %pending_buf6 = getelementptr inbounds %struct.internal_state, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %pending_buf6, align 8
  %11 = load ptr, ptr %s.addr, align 8
  %pending7 = getelementptr inbounds %struct.internal_state, ptr %11, i32 0, i32 5
  %12 = load i32, ptr %pending7, align 8
  %inc8 = add nsw i32 %12, 1
  store i32 %inc8, ptr %pending7, align 8
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %10, i64 %idxprom9
  store i8 %conv5, ptr %arrayidx10, align 1
  %13 = load i32, ptr %len.addr, align 4
  %neg = xor i32 %13, -1
  %conv11 = trunc i32 %neg to i16
  %conv12 = zext i16 %conv11 to i32
  %and13 = and i32 %conv12, 255
  %conv14 = trunc i32 %and13 to i8
  %14 = load ptr, ptr %s.addr, align 8
  %pending_buf15 = getelementptr inbounds %struct.internal_state, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %pending_buf15, align 8
  %16 = load ptr, ptr %s.addr, align 8
  %pending16 = getelementptr inbounds %struct.internal_state, ptr %16, i32 0, i32 5
  %17 = load i32, ptr %pending16, align 8
  %inc17 = add nsw i32 %17, 1
  store i32 %inc17, ptr %pending16, align 8
  %idxprom18 = sext i32 %17 to i64
  %arrayidx19 = getelementptr inbounds i8, ptr %15, i64 %idxprom18
  store i8 %conv14, ptr %arrayidx19, align 1
  %18 = load i32, ptr %len.addr, align 4
  %neg20 = xor i32 %18, -1
  %conv21 = trunc i32 %neg20 to i16
  %conv22 = zext i16 %conv21 to i32
  %shr23 = ashr i32 %conv22, 8
  %conv24 = trunc i32 %shr23 to i8
  %19 = load ptr, ptr %s.addr, align 8
  %pending_buf25 = getelementptr inbounds %struct.internal_state, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %pending_buf25, align 8
  %21 = load ptr, ptr %s.addr, align 8
  %pending26 = getelementptr inbounds %struct.internal_state, ptr %21, i32 0, i32 5
  %22 = load i32, ptr %pending26, align 8
  %inc27 = add nsw i32 %22, 1
  store i32 %inc27, ptr %pending26, align 8
  %idxprom28 = sext i32 %22 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %20, i64 %idxprom28
  store i8 %conv24, ptr %arrayidx29, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %23 = load i32, ptr %len.addr, align 4
  %dec = add i32 %23, -1
  store i32 %dec, ptr %len.addr, align 4
  %tobool30 = icmp ne i32 %23, 0
  br i1 %tobool30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load ptr, ptr %buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %buf.addr, align 8
  %25 = load i8, ptr %24, align 1
  %26 = load ptr, ptr %s.addr, align 8
  %pending_buf31 = getelementptr inbounds %struct.internal_state, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %pending_buf31, align 8
  %28 = load ptr, ptr %s.addr, align 8
  %pending32 = getelementptr inbounds %struct.internal_state, ptr %28, i32 0, i32 5
  %29 = load i32, ptr %pending32, align 8
  %inc33 = add nsw i32 %29, 1
  store i32 %inc33, ptr %pending32, align 8
  %idxprom34 = sext i32 %29 to i64
  %arrayidx35 = getelementptr inbounds i8, ptr %27, i64 %idxprom34
  store i8 %25, ptr %arrayidx35, align 1
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
  %0 = load ptr, ptr %s.addr, align 8
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %0, i32 0, i32 56
  %1 = load i32, ptr %bi_valid, align 4
  %2 = load i32, ptr %len, align 4
  %sub = sub nsw i32 16, %2
  %cmp = icmp sgt i32 %1, %sub
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 2, ptr %val, align 4
  %3 = load i32, ptr %val, align 4
  %4 = load ptr, ptr %s.addr, align 8
  %bi_valid1 = getelementptr inbounds %struct.internal_state, ptr %4, i32 0, i32 56
  %5 = load i32, ptr %bi_valid1, align 4
  %shl = shl i32 %3, %5
  %6 = load ptr, ptr %s.addr, align 8
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 55
  %7 = load i16, ptr %bi_buf, align 8
  %conv = zext i16 %7 to i32
  %or = or i32 %conv, %shl
  %conv2 = trunc i32 %or to i16
  store i16 %conv2, ptr %bi_buf, align 8
  %8 = load ptr, ptr %s.addr, align 8
  %bi_buf3 = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 55
  %9 = load i16, ptr %bi_buf3, align 8
  %conv4 = zext i16 %9 to i32
  %and = and i32 %conv4, 255
  %conv5 = trunc i32 %and to i8
  %10 = load ptr, ptr %s.addr, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %pending_buf, align 8
  %12 = load ptr, ptr %s.addr, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %12, i32 0, i32 5
  %13 = load i32, ptr %pending, align 8
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %pending, align 8
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i8, ptr %11, i64 %idxprom
  store i8 %conv5, ptr %arrayidx, align 1
  %14 = load ptr, ptr %s.addr, align 8
  %bi_buf6 = getelementptr inbounds %struct.internal_state, ptr %14, i32 0, i32 55
  %15 = load i16, ptr %bi_buf6, align 8
  %conv7 = zext i16 %15 to i32
  %shr = ashr i32 %conv7, 8
  %conv8 = trunc i32 %shr to i8
  %16 = load ptr, ptr %s.addr, align 8
  %pending_buf9 = getelementptr inbounds %struct.internal_state, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %pending_buf9, align 8
  %18 = load ptr, ptr %s.addr, align 8
  %pending10 = getelementptr inbounds %struct.internal_state, ptr %18, i32 0, i32 5
  %19 = load i32, ptr %pending10, align 8
  %inc11 = add nsw i32 %19, 1
  store i32 %inc11, ptr %pending10, align 8
  %idxprom12 = sext i32 %19 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %17, i64 %idxprom12
  store i8 %conv8, ptr %arrayidx13, align 1
  %20 = load i32, ptr %val, align 4
  %conv14 = trunc i32 %20 to i16
  %conv15 = zext i16 %conv14 to i32
  %21 = load ptr, ptr %s.addr, align 8
  %bi_valid16 = getelementptr inbounds %struct.internal_state, ptr %21, i32 0, i32 56
  %22 = load i32, ptr %bi_valid16, align 4
  %conv17 = sext i32 %22 to i64
  %sub18 = sub i64 16, %conv17
  %sh_prom = trunc i64 %sub18 to i32
  %shr19 = ashr i32 %conv15, %sh_prom
  %conv20 = trunc i32 %shr19 to i16
  %23 = load ptr, ptr %s.addr, align 8
  %bi_buf21 = getelementptr inbounds %struct.internal_state, ptr %23, i32 0, i32 55
  store i16 %conv20, ptr %bi_buf21, align 8
  %24 = load i32, ptr %len, align 4
  %conv22 = sext i32 %24 to i64
  %sub23 = sub i64 %conv22, 16
  %25 = load ptr, ptr %s.addr, align 8
  %bi_valid24 = getelementptr inbounds %struct.internal_state, ptr %25, i32 0, i32 56
  %26 = load i32, ptr %bi_valid24, align 4
  %conv25 = sext i32 %26 to i64
  %add = add i64 %conv25, %sub23
  %conv26 = trunc i64 %add to i32
  store i32 %conv26, ptr %bi_valid24, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %27 = load ptr, ptr %s.addr, align 8
  %bi_valid27 = getelementptr inbounds %struct.internal_state, ptr %27, i32 0, i32 56
  %28 = load i32, ptr %bi_valid27, align 4
  %shl28 = shl i32 2, %28
  %29 = load ptr, ptr %s.addr, align 8
  %bi_buf29 = getelementptr inbounds %struct.internal_state, ptr %29, i32 0, i32 55
  %30 = load i16, ptr %bi_buf29, align 8
  %conv30 = zext i16 %30 to i32
  %or31 = or i32 %conv30, %shl28
  %conv32 = trunc i32 %or31 to i16
  store i16 %conv32, ptr %bi_buf29, align 8
  %31 = load i32, ptr %len, align 4
  %32 = load ptr, ptr %s.addr, align 8
  %bi_valid33 = getelementptr inbounds %struct.internal_state, ptr %32, i32 0, i32 56
  %33 = load i32, ptr %bi_valid33, align 4
  %add34 = add nsw i32 %33, %31
  store i32 %add34, ptr %bi_valid33, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %34 = load i16, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i64 0, i64 256, i32 1), align 2
  %conv36 = zext i16 %34 to i32
  store i32 %conv36, ptr %len35, align 4
  %35 = load ptr, ptr %s.addr, align 8
  %bi_valid37 = getelementptr inbounds %struct.internal_state, ptr %35, i32 0, i32 56
  %36 = load i32, ptr %bi_valid37, align 4
  %37 = load i32, ptr %len35, align 4
  %sub38 = sub nsw i32 16, %37
  %cmp39 = icmp sgt i32 %36, %sub38
  br i1 %cmp39, label %if.then41, label %if.else83

if.then41:                                        ; preds = %if.end
  %38 = load i16, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i64 0, i64 256), align 2
  %conv43 = zext i16 %38 to i32
  store i32 %conv43, ptr %val42, align 4
  %39 = load i32, ptr %val42, align 4
  %40 = load ptr, ptr %s.addr, align 8
  %bi_valid44 = getelementptr inbounds %struct.internal_state, ptr %40, i32 0, i32 56
  %41 = load i32, ptr %bi_valid44, align 4
  %shl45 = shl i32 %39, %41
  %42 = load ptr, ptr %s.addr, align 8
  %bi_buf46 = getelementptr inbounds %struct.internal_state, ptr %42, i32 0, i32 55
  %43 = load i16, ptr %bi_buf46, align 8
  %conv47 = zext i16 %43 to i32
  %or48 = or i32 %conv47, %shl45
  %conv49 = trunc i32 %or48 to i16
  store i16 %conv49, ptr %bi_buf46, align 8
  %44 = load ptr, ptr %s.addr, align 8
  %bi_buf50 = getelementptr inbounds %struct.internal_state, ptr %44, i32 0, i32 55
  %45 = load i16, ptr %bi_buf50, align 8
  %conv51 = zext i16 %45 to i32
  %and52 = and i32 %conv51, 255
  %conv53 = trunc i32 %and52 to i8
  %46 = load ptr, ptr %s.addr, align 8
  %pending_buf54 = getelementptr inbounds %struct.internal_state, ptr %46, i32 0, i32 2
  %47 = load ptr, ptr %pending_buf54, align 8
  %48 = load ptr, ptr %s.addr, align 8
  %pending55 = getelementptr inbounds %struct.internal_state, ptr %48, i32 0, i32 5
  %49 = load i32, ptr %pending55, align 8
  %inc56 = add nsw i32 %49, 1
  store i32 %inc56, ptr %pending55, align 8
  %idxprom57 = sext i32 %49 to i64
  %arrayidx58 = getelementptr inbounds i8, ptr %47, i64 %idxprom57
  store i8 %conv53, ptr %arrayidx58, align 1
  %50 = load ptr, ptr %s.addr, align 8
  %bi_buf59 = getelementptr inbounds %struct.internal_state, ptr %50, i32 0, i32 55
  %51 = load i16, ptr %bi_buf59, align 8
  %conv60 = zext i16 %51 to i32
  %shr61 = ashr i32 %conv60, 8
  %conv62 = trunc i32 %shr61 to i8
  %52 = load ptr, ptr %s.addr, align 8
  %pending_buf63 = getelementptr inbounds %struct.internal_state, ptr %52, i32 0, i32 2
  %53 = load ptr, ptr %pending_buf63, align 8
  %54 = load ptr, ptr %s.addr, align 8
  %pending64 = getelementptr inbounds %struct.internal_state, ptr %54, i32 0, i32 5
  %55 = load i32, ptr %pending64, align 8
  %inc65 = add nsw i32 %55, 1
  store i32 %inc65, ptr %pending64, align 8
  %idxprom66 = sext i32 %55 to i64
  %arrayidx67 = getelementptr inbounds i8, ptr %53, i64 %idxprom66
  store i8 %conv62, ptr %arrayidx67, align 1
  %56 = load i32, ptr %val42, align 4
  %conv68 = trunc i32 %56 to i16
  %conv69 = zext i16 %conv68 to i32
  %57 = load ptr, ptr %s.addr, align 8
  %bi_valid70 = getelementptr inbounds %struct.internal_state, ptr %57, i32 0, i32 56
  %58 = load i32, ptr %bi_valid70, align 4
  %conv71 = sext i32 %58 to i64
  %sub72 = sub i64 16, %conv71
  %sh_prom73 = trunc i64 %sub72 to i32
  %shr74 = ashr i32 %conv69, %sh_prom73
  %conv75 = trunc i32 %shr74 to i16
  %59 = load ptr, ptr %s.addr, align 8
  %bi_buf76 = getelementptr inbounds %struct.internal_state, ptr %59, i32 0, i32 55
  store i16 %conv75, ptr %bi_buf76, align 8
  %60 = load i32, ptr %len35, align 4
  %conv77 = sext i32 %60 to i64
  %sub78 = sub i64 %conv77, 16
  %61 = load ptr, ptr %s.addr, align 8
  %bi_valid79 = getelementptr inbounds %struct.internal_state, ptr %61, i32 0, i32 56
  %62 = load i32, ptr %bi_valid79, align 4
  %conv80 = sext i32 %62 to i64
  %add81 = add i64 %conv80, %sub78
  %conv82 = trunc i64 %add81 to i32
  store i32 %conv82, ptr %bi_valid79, align 4
  br label %if.end93

if.else83:                                        ; preds = %if.end
  %63 = load i16, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i64 0, i64 256), align 2
  %conv84 = zext i16 %63 to i32
  %64 = load ptr, ptr %s.addr, align 8
  %bi_valid85 = getelementptr inbounds %struct.internal_state, ptr %64, i32 0, i32 56
  %65 = load i32, ptr %bi_valid85, align 4
  %shl86 = shl i32 %conv84, %65
  %66 = load ptr, ptr %s.addr, align 8
  %bi_buf87 = getelementptr inbounds %struct.internal_state, ptr %66, i32 0, i32 55
  %67 = load i16, ptr %bi_buf87, align 8
  %conv88 = zext i16 %67 to i32
  %or89 = or i32 %conv88, %shl86
  %conv90 = trunc i32 %or89 to i16
  store i16 %conv90, ptr %bi_buf87, align 8
  %68 = load i32, ptr %len35, align 4
  %69 = load ptr, ptr %s.addr, align 8
  %bi_valid91 = getelementptr inbounds %struct.internal_state, ptr %69, i32 0, i32 56
  %70 = load i32, ptr %bi_valid91, align 4
  %add92 = add nsw i32 %70, %68
  store i32 %add92, ptr %bi_valid91, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.else83, %if.then41
  %71 = load ptr, ptr %s.addr, align 8
  call void @bi_flush(ptr noundef %71)
  %72 = load ptr, ptr %s.addr, align 8
  %last_eob_len = getelementptr inbounds %struct.internal_state, ptr %72, i32 0, i32 54
  %73 = load i32, ptr %last_eob_len, align 4
  %add94 = add nsw i32 1, %73
  %add95 = add nsw i32 %add94, 10
  %74 = load ptr, ptr %s.addr, align 8
  %bi_valid96 = getelementptr inbounds %struct.internal_state, ptr %74, i32 0, i32 56
  %75 = load i32, ptr %bi_valid96, align 4
  %sub97 = sub nsw i32 %add95, %75
  %cmp98 = icmp slt i32 %sub97, 9
  br i1 %cmp98, label %if.then100, label %if.end216

if.then100:                                       ; preds = %if.end93
  store i32 3, ptr %len101, align 4
  %76 = load ptr, ptr %s.addr, align 8
  %bi_valid102 = getelementptr inbounds %struct.internal_state, ptr %76, i32 0, i32 56
  %77 = load i32, ptr %bi_valid102, align 4
  %78 = load i32, ptr %len101, align 4
  %sub103 = sub nsw i32 16, %78
  %cmp104 = icmp sgt i32 %77, %sub103
  br i1 %cmp104, label %if.then106, label %if.else147

if.then106:                                       ; preds = %if.then100
  store i32 2, ptr %val107, align 4
  %79 = load i32, ptr %val107, align 4
  %80 = load ptr, ptr %s.addr, align 8
  %bi_valid108 = getelementptr inbounds %struct.internal_state, ptr %80, i32 0, i32 56
  %81 = load i32, ptr %bi_valid108, align 4
  %shl109 = shl i32 %79, %81
  %82 = load ptr, ptr %s.addr, align 8
  %bi_buf110 = getelementptr inbounds %struct.internal_state, ptr %82, i32 0, i32 55
  %83 = load i16, ptr %bi_buf110, align 8
  %conv111 = zext i16 %83 to i32
  %or112 = or i32 %conv111, %shl109
  %conv113 = trunc i32 %or112 to i16
  store i16 %conv113, ptr %bi_buf110, align 8
  %84 = load ptr, ptr %s.addr, align 8
  %bi_buf114 = getelementptr inbounds %struct.internal_state, ptr %84, i32 0, i32 55
  %85 = load i16, ptr %bi_buf114, align 8
  %conv115 = zext i16 %85 to i32
  %and116 = and i32 %conv115, 255
  %conv117 = trunc i32 %and116 to i8
  %86 = load ptr, ptr %s.addr, align 8
  %pending_buf118 = getelementptr inbounds %struct.internal_state, ptr %86, i32 0, i32 2
  %87 = load ptr, ptr %pending_buf118, align 8
  %88 = load ptr, ptr %s.addr, align 8
  %pending119 = getelementptr inbounds %struct.internal_state, ptr %88, i32 0, i32 5
  %89 = load i32, ptr %pending119, align 8
  %inc120 = add nsw i32 %89, 1
  store i32 %inc120, ptr %pending119, align 8
  %idxprom121 = sext i32 %89 to i64
  %arrayidx122 = getelementptr inbounds i8, ptr %87, i64 %idxprom121
  store i8 %conv117, ptr %arrayidx122, align 1
  %90 = load ptr, ptr %s.addr, align 8
  %bi_buf123 = getelementptr inbounds %struct.internal_state, ptr %90, i32 0, i32 55
  %91 = load i16, ptr %bi_buf123, align 8
  %conv124 = zext i16 %91 to i32
  %shr125 = ashr i32 %conv124, 8
  %conv126 = trunc i32 %shr125 to i8
  %92 = load ptr, ptr %s.addr, align 8
  %pending_buf127 = getelementptr inbounds %struct.internal_state, ptr %92, i32 0, i32 2
  %93 = load ptr, ptr %pending_buf127, align 8
  %94 = load ptr, ptr %s.addr, align 8
  %pending128 = getelementptr inbounds %struct.internal_state, ptr %94, i32 0, i32 5
  %95 = load i32, ptr %pending128, align 8
  %inc129 = add nsw i32 %95, 1
  store i32 %inc129, ptr %pending128, align 8
  %idxprom130 = sext i32 %95 to i64
  %arrayidx131 = getelementptr inbounds i8, ptr %93, i64 %idxprom130
  store i8 %conv126, ptr %arrayidx131, align 1
  %96 = load i32, ptr %val107, align 4
  %conv132 = trunc i32 %96 to i16
  %conv133 = zext i16 %conv132 to i32
  %97 = load ptr, ptr %s.addr, align 8
  %bi_valid134 = getelementptr inbounds %struct.internal_state, ptr %97, i32 0, i32 56
  %98 = load i32, ptr %bi_valid134, align 4
  %conv135 = sext i32 %98 to i64
  %sub136 = sub i64 16, %conv135
  %sh_prom137 = trunc i64 %sub136 to i32
  %shr138 = ashr i32 %conv133, %sh_prom137
  %conv139 = trunc i32 %shr138 to i16
  %99 = load ptr, ptr %s.addr, align 8
  %bi_buf140 = getelementptr inbounds %struct.internal_state, ptr %99, i32 0, i32 55
  store i16 %conv139, ptr %bi_buf140, align 8
  %100 = load i32, ptr %len101, align 4
  %conv141 = sext i32 %100 to i64
  %sub142 = sub i64 %conv141, 16
  %101 = load ptr, ptr %s.addr, align 8
  %bi_valid143 = getelementptr inbounds %struct.internal_state, ptr %101, i32 0, i32 56
  %102 = load i32, ptr %bi_valid143, align 4
  %conv144 = sext i32 %102 to i64
  %add145 = add i64 %conv144, %sub142
  %conv146 = trunc i64 %add145 to i32
  store i32 %conv146, ptr %bi_valid143, align 4
  br label %if.end156

if.else147:                                       ; preds = %if.then100
  %103 = load ptr, ptr %s.addr, align 8
  %bi_valid148 = getelementptr inbounds %struct.internal_state, ptr %103, i32 0, i32 56
  %104 = load i32, ptr %bi_valid148, align 4
  %shl149 = shl i32 2, %104
  %105 = load ptr, ptr %s.addr, align 8
  %bi_buf150 = getelementptr inbounds %struct.internal_state, ptr %105, i32 0, i32 55
  %106 = load i16, ptr %bi_buf150, align 8
  %conv151 = zext i16 %106 to i32
  %or152 = or i32 %conv151, %shl149
  %conv153 = trunc i32 %or152 to i16
  store i16 %conv153, ptr %bi_buf150, align 8
  %107 = load i32, ptr %len101, align 4
  %108 = load ptr, ptr %s.addr, align 8
  %bi_valid154 = getelementptr inbounds %struct.internal_state, ptr %108, i32 0, i32 56
  %109 = load i32, ptr %bi_valid154, align 4
  %add155 = add nsw i32 %109, %107
  store i32 %add155, ptr %bi_valid154, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.else147, %if.then106
  %110 = load i16, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i64 0, i64 256, i32 1), align 2
  %conv158 = zext i16 %110 to i32
  store i32 %conv158, ptr %len157, align 4
  %111 = load ptr, ptr %s.addr, align 8
  %bi_valid159 = getelementptr inbounds %struct.internal_state, ptr %111, i32 0, i32 56
  %112 = load i32, ptr %bi_valid159, align 4
  %113 = load i32, ptr %len157, align 4
  %sub160 = sub nsw i32 16, %113
  %cmp161 = icmp sgt i32 %112, %sub160
  br i1 %cmp161, label %if.then163, label %if.else205

if.then163:                                       ; preds = %if.end156
  %114 = load i16, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i64 0, i64 256), align 2
  %conv165 = zext i16 %114 to i32
  store i32 %conv165, ptr %val164, align 4
  %115 = load i32, ptr %val164, align 4
  %116 = load ptr, ptr %s.addr, align 8
  %bi_valid166 = getelementptr inbounds %struct.internal_state, ptr %116, i32 0, i32 56
  %117 = load i32, ptr %bi_valid166, align 4
  %shl167 = shl i32 %115, %117
  %118 = load ptr, ptr %s.addr, align 8
  %bi_buf168 = getelementptr inbounds %struct.internal_state, ptr %118, i32 0, i32 55
  %119 = load i16, ptr %bi_buf168, align 8
  %conv169 = zext i16 %119 to i32
  %or170 = or i32 %conv169, %shl167
  %conv171 = trunc i32 %or170 to i16
  store i16 %conv171, ptr %bi_buf168, align 8
  %120 = load ptr, ptr %s.addr, align 8
  %bi_buf172 = getelementptr inbounds %struct.internal_state, ptr %120, i32 0, i32 55
  %121 = load i16, ptr %bi_buf172, align 8
  %conv173 = zext i16 %121 to i32
  %and174 = and i32 %conv173, 255
  %conv175 = trunc i32 %and174 to i8
  %122 = load ptr, ptr %s.addr, align 8
  %pending_buf176 = getelementptr inbounds %struct.internal_state, ptr %122, i32 0, i32 2
  %123 = load ptr, ptr %pending_buf176, align 8
  %124 = load ptr, ptr %s.addr, align 8
  %pending177 = getelementptr inbounds %struct.internal_state, ptr %124, i32 0, i32 5
  %125 = load i32, ptr %pending177, align 8
  %inc178 = add nsw i32 %125, 1
  store i32 %inc178, ptr %pending177, align 8
  %idxprom179 = sext i32 %125 to i64
  %arrayidx180 = getelementptr inbounds i8, ptr %123, i64 %idxprom179
  store i8 %conv175, ptr %arrayidx180, align 1
  %126 = load ptr, ptr %s.addr, align 8
  %bi_buf181 = getelementptr inbounds %struct.internal_state, ptr %126, i32 0, i32 55
  %127 = load i16, ptr %bi_buf181, align 8
  %conv182 = zext i16 %127 to i32
  %shr183 = ashr i32 %conv182, 8
  %conv184 = trunc i32 %shr183 to i8
  %128 = load ptr, ptr %s.addr, align 8
  %pending_buf185 = getelementptr inbounds %struct.internal_state, ptr %128, i32 0, i32 2
  %129 = load ptr, ptr %pending_buf185, align 8
  %130 = load ptr, ptr %s.addr, align 8
  %pending186 = getelementptr inbounds %struct.internal_state, ptr %130, i32 0, i32 5
  %131 = load i32, ptr %pending186, align 8
  %inc187 = add nsw i32 %131, 1
  store i32 %inc187, ptr %pending186, align 8
  %idxprom188 = sext i32 %131 to i64
  %arrayidx189 = getelementptr inbounds i8, ptr %129, i64 %idxprom188
  store i8 %conv184, ptr %arrayidx189, align 1
  %132 = load i32, ptr %val164, align 4
  %conv190 = trunc i32 %132 to i16
  %conv191 = zext i16 %conv190 to i32
  %133 = load ptr, ptr %s.addr, align 8
  %bi_valid192 = getelementptr inbounds %struct.internal_state, ptr %133, i32 0, i32 56
  %134 = load i32, ptr %bi_valid192, align 4
  %conv193 = sext i32 %134 to i64
  %sub194 = sub i64 16, %conv193
  %sh_prom195 = trunc i64 %sub194 to i32
  %shr196 = ashr i32 %conv191, %sh_prom195
  %conv197 = trunc i32 %shr196 to i16
  %135 = load ptr, ptr %s.addr, align 8
  %bi_buf198 = getelementptr inbounds %struct.internal_state, ptr %135, i32 0, i32 55
  store i16 %conv197, ptr %bi_buf198, align 8
  %136 = load i32, ptr %len157, align 4
  %conv199 = sext i32 %136 to i64
  %sub200 = sub i64 %conv199, 16
  %137 = load ptr, ptr %s.addr, align 8
  %bi_valid201 = getelementptr inbounds %struct.internal_state, ptr %137, i32 0, i32 56
  %138 = load i32, ptr %bi_valid201, align 4
  %conv202 = sext i32 %138 to i64
  %add203 = add i64 %conv202, %sub200
  %conv204 = trunc i64 %add203 to i32
  store i32 %conv204, ptr %bi_valid201, align 4
  br label %if.end215

if.else205:                                       ; preds = %if.end156
  %139 = load i16, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i64 0, i64 256), align 2
  %conv206 = zext i16 %139 to i32
  %140 = load ptr, ptr %s.addr, align 8
  %bi_valid207 = getelementptr inbounds %struct.internal_state, ptr %140, i32 0, i32 56
  %141 = load i32, ptr %bi_valid207, align 4
  %shl208 = shl i32 %conv206, %141
  %142 = load ptr, ptr %s.addr, align 8
  %bi_buf209 = getelementptr inbounds %struct.internal_state, ptr %142, i32 0, i32 55
  %143 = load i16, ptr %bi_buf209, align 8
  %conv210 = zext i16 %143 to i32
  %or211 = or i32 %conv210, %shl208
  %conv212 = trunc i32 %or211 to i16
  store i16 %conv212, ptr %bi_buf209, align 8
  %144 = load i32, ptr %len157, align 4
  %145 = load ptr, ptr %s.addr, align 8
  %bi_valid213 = getelementptr inbounds %struct.internal_state, ptr %145, i32 0, i32 56
  %146 = load i32, ptr %bi_valid213, align 4
  %add214 = add nsw i32 %146, %144
  store i32 %add214, ptr %bi_valid213, align 4
  br label %if.end215

if.end215:                                        ; preds = %if.else205, %if.then163
  %147 = load ptr, ptr %s.addr, align 8
  call void @bi_flush(ptr noundef %147)
  br label %if.end216

if.end216:                                        ; preds = %if.end215, %if.end93
  %148 = load ptr, ptr %s.addr, align 8
  %last_eob_len217 = getelementptr inbounds %struct.internal_state, ptr %148, i32 0, i32 54
  store i32 7, ptr %last_eob_len217, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @bi_flush(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %0, i32 0, i32 56
  %1 = load i32, ptr %bi_valid, align 4
  %cmp = icmp eq i32 %1, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %2, i32 0, i32 55
  %3 = load i16, ptr %bi_buf, align 8
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  %4 = load ptr, ptr %s.addr, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %pending_buf, align 8
  %6 = load ptr, ptr %s.addr, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 5
  %7 = load i32, ptr %pending, align 8
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %pending, align 8
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %idxprom
  store i8 %conv1, ptr %arrayidx, align 1
  %8 = load ptr, ptr %s.addr, align 8
  %bi_buf2 = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 55
  %9 = load i16, ptr %bi_buf2, align 8
  %conv3 = zext i16 %9 to i32
  %shr = ashr i32 %conv3, 8
  %conv4 = trunc i32 %shr to i8
  %10 = load ptr, ptr %s.addr, align 8
  %pending_buf5 = getelementptr inbounds %struct.internal_state, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %pending_buf5, align 8
  %12 = load ptr, ptr %s.addr, align 8
  %pending6 = getelementptr inbounds %struct.internal_state, ptr %12, i32 0, i32 5
  %13 = load i32, ptr %pending6, align 8
  %inc7 = add nsw i32 %13, 1
  store i32 %inc7, ptr %pending6, align 8
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %11, i64 %idxprom8
  store i8 %conv4, ptr %arrayidx9, align 1
  %14 = load ptr, ptr %s.addr, align 8
  %bi_buf10 = getelementptr inbounds %struct.internal_state, ptr %14, i32 0, i32 55
  store i16 0, ptr %bi_buf10, align 8
  %15 = load ptr, ptr %s.addr, align 8
  %bi_valid11 = getelementptr inbounds %struct.internal_state, ptr %15, i32 0, i32 56
  store i32 0, ptr %bi_valid11, align 4
  br label %if.end28

if.else:                                          ; preds = %entry
  %16 = load ptr, ptr %s.addr, align 8
  %bi_valid12 = getelementptr inbounds %struct.internal_state, ptr %16, i32 0, i32 56
  %17 = load i32, ptr %bi_valid12, align 4
  %cmp13 = icmp sge i32 %17, 8
  br i1 %cmp13, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.else
  %18 = load ptr, ptr %s.addr, align 8
  %bi_buf16 = getelementptr inbounds %struct.internal_state, ptr %18, i32 0, i32 55
  %19 = load i16, ptr %bi_buf16, align 8
  %conv17 = trunc i16 %19 to i8
  %20 = load ptr, ptr %s.addr, align 8
  %pending_buf18 = getelementptr inbounds %struct.internal_state, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %pending_buf18, align 8
  %22 = load ptr, ptr %s.addr, align 8
  %pending19 = getelementptr inbounds %struct.internal_state, ptr %22, i32 0, i32 5
  %23 = load i32, ptr %pending19, align 8
  %inc20 = add nsw i32 %23, 1
  store i32 %inc20, ptr %pending19, align 8
  %idxprom21 = sext i32 %23 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %21, i64 %idxprom21
  store i8 %conv17, ptr %arrayidx22, align 1
  %24 = load ptr, ptr %s.addr, align 8
  %bi_buf23 = getelementptr inbounds %struct.internal_state, ptr %24, i32 0, i32 55
  %25 = load i16, ptr %bi_buf23, align 8
  %conv24 = zext i16 %25 to i32
  %shr25 = ashr i32 %conv24, 8
  %conv26 = trunc i32 %shr25 to i16
  store i16 %conv26, ptr %bi_buf23, align 8
  %26 = load ptr, ptr %s.addr, align 8
  %bi_valid27 = getelementptr inbounds %struct.internal_state, ptr %26, i32 0, i32 56
  %27 = load i32, ptr %bi_valid27, align 4
  %sub = sub nsw i32 %27, 8
  store i32 %sub, ptr %bi_valid27, align 4
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end, %if.then
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
  %len69 = alloca i32, align 4
  %val75 = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %stored_len, ptr %stored_len.addr, align 8
  store i32 %eof, ptr %eof.addr, align 4
  store i32 0, ptr %max_blindex, align 4
  %0 = load ptr, ptr %s.addr, align 8
  %level = getelementptr inbounds %struct.internal_state, ptr %0, i32 0, i32 32
  %1 = load i32, ptr %level, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8
  %data_type = getelementptr inbounds %struct.internal_state, ptr %2, i32 0, i32 7
  %3 = load i8, ptr %data_type, align 8
  %conv = zext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 2
  br i1 %cmp1, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %4 = load ptr, ptr %s.addr, align 8
  call void @set_data_type(ptr noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %5 = load ptr, ptr %s.addr, align 8
  %6 = load ptr, ptr %s.addr, align 8
  %l_desc = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 39
  call void @build_tree(ptr noundef %5, ptr noundef %l_desc)
  %7 = load ptr, ptr %s.addr, align 8
  %8 = load ptr, ptr %s.addr, align 8
  %d_desc = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 40
  call void @build_tree(ptr noundef %7, ptr noundef %d_desc)
  %9 = load ptr, ptr %s.addr, align 8
  %call = call i32 @build_bl_tree(ptr noundef %9)
  store i32 %call, ptr %max_blindex, align 4
  %10 = load ptr, ptr %s.addr, align 8
  %opt_len = getelementptr inbounds %struct.internal_state, ptr %10, i32 0, i32 51
  %11 = load i64, ptr %opt_len, align 8
  %add = add i64 %11, 3
  %add4 = add i64 %add, 7
  %shr = lshr i64 %add4, 3
  store i64 %shr, ptr %opt_lenb, align 8
  %12 = load ptr, ptr %s.addr, align 8
  %static_len = getelementptr inbounds %struct.internal_state, ptr %12, i32 0, i32 52
  %13 = load i64, ptr %static_len, align 8
  %add5 = add i64 %13, 3
  %add6 = add i64 %add5, 7
  %shr7 = lshr i64 %add6, 3
  store i64 %shr7, ptr %static_lenb, align 8
  %14 = load i64, ptr %static_lenb, align 8
  %15 = load i64, ptr %opt_lenb, align 8
  %cmp8 = icmp ule i64 %14, %15
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %16 = load i64, ptr %static_lenb, align 8
  store i64 %16, ptr %opt_lenb, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  br label %if.end13

if.else:                                          ; preds = %entry
  %17 = load i64, ptr %stored_len.addr, align 8
  %add12 = add i64 %17, 5
  store i64 %add12, ptr %static_lenb, align 8
  store i64 %add12, ptr %opt_lenb, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end11
  %18 = load i64, ptr %stored_len.addr, align 8
  %add14 = add i64 %18, 4
  %19 = load i64, ptr %opt_lenb, align 8
  %cmp15 = icmp ule i64 %add14, %19
  br i1 %cmp15, label %land.lhs.true, label %if.else20

land.lhs.true:                                    ; preds = %if.end13
  %20 = load ptr, ptr %buf.addr, align 8
  %cmp17 = icmp ne ptr %20, null
  br i1 %cmp17, label %if.then19, label %if.else20

if.then19:                                        ; preds = %land.lhs.true
  %21 = load ptr, ptr %s.addr, align 8
  %22 = load ptr, ptr %buf.addr, align 8
  %23 = load i64, ptr %stored_len.addr, align 8
  %24 = load i32, ptr %eof.addr, align 4
  call void @_tr_stored_block(ptr noundef %21, ptr noundef %22, i64 noundef %23, i32 noundef %24)
  br label %if.end135

if.else20:                                        ; preds = %land.lhs.true, %if.end13
  %25 = load i64, ptr %static_lenb, align 8
  %26 = load i64, ptr %opt_lenb, align 8
  %cmp21 = icmp eq i64 %25, %26
  br i1 %cmp21, label %if.then23, label %if.else68

if.then23:                                        ; preds = %if.else20
  store i32 3, ptr %len, align 4
  %27 = load ptr, ptr %s.addr, align 8
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %27, i32 0, i32 56
  %28 = load i32, ptr %bi_valid, align 4
  %29 = load i32, ptr %len, align 4
  %sub = sub nsw i32 16, %29
  %cmp24 = icmp sgt i32 %28, %sub
  br i1 %cmp24, label %if.then26, label %if.else57

if.then26:                                        ; preds = %if.then23
  %30 = load i32, ptr %eof.addr, align 4
  %add27 = add nsw i32 2, %30
  store i32 %add27, ptr %val, align 4
  %31 = load i32, ptr %val, align 4
  %32 = load ptr, ptr %s.addr, align 8
  %bi_valid28 = getelementptr inbounds %struct.internal_state, ptr %32, i32 0, i32 56
  %33 = load i32, ptr %bi_valid28, align 4
  %shl = shl i32 %31, %33
  %34 = load ptr, ptr %s.addr, align 8
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %34, i32 0, i32 55
  %35 = load i16, ptr %bi_buf, align 8
  %conv29 = zext i16 %35 to i32
  %or = or i32 %conv29, %shl
  %conv30 = trunc i32 %or to i16
  store i16 %conv30, ptr %bi_buf, align 8
  %36 = load ptr, ptr %s.addr, align 8
  %bi_buf31 = getelementptr inbounds %struct.internal_state, ptr %36, i32 0, i32 55
  %37 = load i16, ptr %bi_buf31, align 8
  %conv32 = zext i16 %37 to i32
  %and = and i32 %conv32, 255
  %conv33 = trunc i32 %and to i8
  %38 = load ptr, ptr %s.addr, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %38, i32 0, i32 2
  %39 = load ptr, ptr %pending_buf, align 8
  %40 = load ptr, ptr %s.addr, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %40, i32 0, i32 5
  %41 = load i32, ptr %pending, align 8
  %inc = add nsw i32 %41, 1
  store i32 %inc, ptr %pending, align 8
  %idxprom = sext i32 %41 to i64
  %arrayidx = getelementptr inbounds i8, ptr %39, i64 %idxprom
  store i8 %conv33, ptr %arrayidx, align 1
  %42 = load ptr, ptr %s.addr, align 8
  %bi_buf34 = getelementptr inbounds %struct.internal_state, ptr %42, i32 0, i32 55
  %43 = load i16, ptr %bi_buf34, align 8
  %conv35 = zext i16 %43 to i32
  %shr36 = ashr i32 %conv35, 8
  %conv37 = trunc i32 %shr36 to i8
  %44 = load ptr, ptr %s.addr, align 8
  %pending_buf38 = getelementptr inbounds %struct.internal_state, ptr %44, i32 0, i32 2
  %45 = load ptr, ptr %pending_buf38, align 8
  %46 = load ptr, ptr %s.addr, align 8
  %pending39 = getelementptr inbounds %struct.internal_state, ptr %46, i32 0, i32 5
  %47 = load i32, ptr %pending39, align 8
  %inc40 = add nsw i32 %47, 1
  store i32 %inc40, ptr %pending39, align 8
  %idxprom41 = sext i32 %47 to i64
  %arrayidx42 = getelementptr inbounds i8, ptr %45, i64 %idxprom41
  store i8 %conv37, ptr %arrayidx42, align 1
  %48 = load i32, ptr %val, align 4
  %conv43 = trunc i32 %48 to i16
  %conv44 = zext i16 %conv43 to i32
  %49 = load ptr, ptr %s.addr, align 8
  %bi_valid45 = getelementptr inbounds %struct.internal_state, ptr %49, i32 0, i32 56
  %50 = load i32, ptr %bi_valid45, align 4
  %conv46 = sext i32 %50 to i64
  %sub47 = sub i64 16, %conv46
  %sh_prom = trunc i64 %sub47 to i32
  %shr48 = ashr i32 %conv44, %sh_prom
  %conv49 = trunc i32 %shr48 to i16
  %51 = load ptr, ptr %s.addr, align 8
  %bi_buf50 = getelementptr inbounds %struct.internal_state, ptr %51, i32 0, i32 55
  store i16 %conv49, ptr %bi_buf50, align 8
  %52 = load i32, ptr %len, align 4
  %conv51 = sext i32 %52 to i64
  %sub52 = sub i64 %conv51, 16
  %53 = load ptr, ptr %s.addr, align 8
  %bi_valid53 = getelementptr inbounds %struct.internal_state, ptr %53, i32 0, i32 56
  %54 = load i32, ptr %bi_valid53, align 4
  %conv54 = sext i32 %54 to i64
  %add55 = add i64 %conv54, %sub52
  %conv56 = trunc i64 %add55 to i32
  store i32 %conv56, ptr %bi_valid53, align 4
  br label %if.end67

if.else57:                                        ; preds = %if.then23
  %55 = load i32, ptr %eof.addr, align 4
  %add58 = add nsw i32 2, %55
  %56 = load ptr, ptr %s.addr, align 8
  %bi_valid59 = getelementptr inbounds %struct.internal_state, ptr %56, i32 0, i32 56
  %57 = load i32, ptr %bi_valid59, align 4
  %shl60 = shl i32 %add58, %57
  %58 = load ptr, ptr %s.addr, align 8
  %bi_buf61 = getelementptr inbounds %struct.internal_state, ptr %58, i32 0, i32 55
  %59 = load i16, ptr %bi_buf61, align 8
  %conv62 = zext i16 %59 to i32
  %or63 = or i32 %conv62, %shl60
  %conv64 = trunc i32 %or63 to i16
  store i16 %conv64, ptr %bi_buf61, align 8
  %60 = load i32, ptr %len, align 4
  %61 = load ptr, ptr %s.addr, align 8
  %bi_valid65 = getelementptr inbounds %struct.internal_state, ptr %61, i32 0, i32 56
  %62 = load i32, ptr %bi_valid65, align 4
  %add66 = add nsw i32 %62, %60
  store i32 %add66, ptr %bi_valid65, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.else57, %if.then26
  %63 = load ptr, ptr %s.addr, align 8
  call void @compress_block(ptr noundef %63, ptr noundef @static_ltree, ptr noundef @static_dtree)
  br label %if.end134

if.else68:                                        ; preds = %if.else20
  store i32 3, ptr %len69, align 4
  %64 = load ptr, ptr %s.addr, align 8
  %bi_valid70 = getelementptr inbounds %struct.internal_state, ptr %64, i32 0, i32 56
  %65 = load i32, ptr %bi_valid70, align 4
  %66 = load i32, ptr %len69, align 4
  %sub71 = sub nsw i32 16, %66
  %cmp72 = icmp sgt i32 %65, %sub71
  br i1 %cmp72, label %if.then74, label %if.else116

if.then74:                                        ; preds = %if.else68
  %67 = load i32, ptr %eof.addr, align 4
  %add76 = add nsw i32 4, %67
  store i32 %add76, ptr %val75, align 4
  %68 = load i32, ptr %val75, align 4
  %69 = load ptr, ptr %s.addr, align 8
  %bi_valid77 = getelementptr inbounds %struct.internal_state, ptr %69, i32 0, i32 56
  %70 = load i32, ptr %bi_valid77, align 4
  %shl78 = shl i32 %68, %70
  %71 = load ptr, ptr %s.addr, align 8
  %bi_buf79 = getelementptr inbounds %struct.internal_state, ptr %71, i32 0, i32 55
  %72 = load i16, ptr %bi_buf79, align 8
  %conv80 = zext i16 %72 to i32
  %or81 = or i32 %conv80, %shl78
  %conv82 = trunc i32 %or81 to i16
  store i16 %conv82, ptr %bi_buf79, align 8
  %73 = load ptr, ptr %s.addr, align 8
  %bi_buf83 = getelementptr inbounds %struct.internal_state, ptr %73, i32 0, i32 55
  %74 = load i16, ptr %bi_buf83, align 8
  %conv84 = zext i16 %74 to i32
  %and85 = and i32 %conv84, 255
  %conv86 = trunc i32 %and85 to i8
  %75 = load ptr, ptr %s.addr, align 8
  %pending_buf87 = getelementptr inbounds %struct.internal_state, ptr %75, i32 0, i32 2
  %76 = load ptr, ptr %pending_buf87, align 8
  %77 = load ptr, ptr %s.addr, align 8
  %pending88 = getelementptr inbounds %struct.internal_state, ptr %77, i32 0, i32 5
  %78 = load i32, ptr %pending88, align 8
  %inc89 = add nsw i32 %78, 1
  store i32 %inc89, ptr %pending88, align 8
  %idxprom90 = sext i32 %78 to i64
  %arrayidx91 = getelementptr inbounds i8, ptr %76, i64 %idxprom90
  store i8 %conv86, ptr %arrayidx91, align 1
  %79 = load ptr, ptr %s.addr, align 8
  %bi_buf92 = getelementptr inbounds %struct.internal_state, ptr %79, i32 0, i32 55
  %80 = load i16, ptr %bi_buf92, align 8
  %conv93 = zext i16 %80 to i32
  %shr94 = ashr i32 %conv93, 8
  %conv95 = trunc i32 %shr94 to i8
  %81 = load ptr, ptr %s.addr, align 8
  %pending_buf96 = getelementptr inbounds %struct.internal_state, ptr %81, i32 0, i32 2
  %82 = load ptr, ptr %pending_buf96, align 8
  %83 = load ptr, ptr %s.addr, align 8
  %pending97 = getelementptr inbounds %struct.internal_state, ptr %83, i32 0, i32 5
  %84 = load i32, ptr %pending97, align 8
  %inc98 = add nsw i32 %84, 1
  store i32 %inc98, ptr %pending97, align 8
  %idxprom99 = sext i32 %84 to i64
  %arrayidx100 = getelementptr inbounds i8, ptr %82, i64 %idxprom99
  store i8 %conv95, ptr %arrayidx100, align 1
  %85 = load i32, ptr %val75, align 4
  %conv101 = trunc i32 %85 to i16
  %conv102 = zext i16 %conv101 to i32
  %86 = load ptr, ptr %s.addr, align 8
  %bi_valid103 = getelementptr inbounds %struct.internal_state, ptr %86, i32 0, i32 56
  %87 = load i32, ptr %bi_valid103, align 4
  %conv104 = sext i32 %87 to i64
  %sub105 = sub i64 16, %conv104
  %sh_prom106 = trunc i64 %sub105 to i32
  %shr107 = ashr i32 %conv102, %sh_prom106
  %conv108 = trunc i32 %shr107 to i16
  %88 = load ptr, ptr %s.addr, align 8
  %bi_buf109 = getelementptr inbounds %struct.internal_state, ptr %88, i32 0, i32 55
  store i16 %conv108, ptr %bi_buf109, align 8
  %89 = load i32, ptr %len69, align 4
  %conv110 = sext i32 %89 to i64
  %sub111 = sub i64 %conv110, 16
  %90 = load ptr, ptr %s.addr, align 8
  %bi_valid112 = getelementptr inbounds %struct.internal_state, ptr %90, i32 0, i32 56
  %91 = load i32, ptr %bi_valid112, align 4
  %conv113 = sext i32 %91 to i64
  %add114 = add i64 %conv113, %sub111
  %conv115 = trunc i64 %add114 to i32
  store i32 %conv115, ptr %bi_valid112, align 4
  br label %if.end126

if.else116:                                       ; preds = %if.else68
  %92 = load i32, ptr %eof.addr, align 4
  %add117 = add nsw i32 4, %92
  %93 = load ptr, ptr %s.addr, align 8
  %bi_valid118 = getelementptr inbounds %struct.internal_state, ptr %93, i32 0, i32 56
  %94 = load i32, ptr %bi_valid118, align 4
  %shl119 = shl i32 %add117, %94
  %95 = load ptr, ptr %s.addr, align 8
  %bi_buf120 = getelementptr inbounds %struct.internal_state, ptr %95, i32 0, i32 55
  %96 = load i16, ptr %bi_buf120, align 8
  %conv121 = zext i16 %96 to i32
  %or122 = or i32 %conv121, %shl119
  %conv123 = trunc i32 %or122 to i16
  store i16 %conv123, ptr %bi_buf120, align 8
  %97 = load i32, ptr %len69, align 4
  %98 = load ptr, ptr %s.addr, align 8
  %bi_valid124 = getelementptr inbounds %struct.internal_state, ptr %98, i32 0, i32 56
  %99 = load i32, ptr %bi_valid124, align 4
  %add125 = add nsw i32 %99, %97
  store i32 %add125, ptr %bi_valid124, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.else116, %if.then74
  %100 = load ptr, ptr %s.addr, align 8
  %101 = load ptr, ptr %s.addr, align 8
  %l_desc127 = getelementptr inbounds %struct.internal_state, ptr %101, i32 0, i32 39
  %max_code = getelementptr inbounds %struct.tree_desc_s, ptr %l_desc127, i32 0, i32 1
  %102 = load i32, ptr %max_code, align 8
  %add128 = add nsw i32 %102, 1
  %103 = load ptr, ptr %s.addr, align 8
  %d_desc129 = getelementptr inbounds %struct.internal_state, ptr %103, i32 0, i32 40
  %max_code130 = getelementptr inbounds %struct.tree_desc_s, ptr %d_desc129, i32 0, i32 1
  %104 = load i32, ptr %max_code130, align 8
  %add131 = add nsw i32 %104, 1
  %105 = load i32, ptr %max_blindex, align 4
  %add132 = add nsw i32 %105, 1
  call void @send_all_trees(ptr noundef %100, i32 noundef %add128, i32 noundef %add131, i32 noundef %add132)
  %106 = load ptr, ptr %s.addr, align 8
  %107 = load ptr, ptr %s.addr, align 8
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %107, i32 0, i32 36
  %arraydecay = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree, i64 0, i64 0
  %108 = load ptr, ptr %s.addr, align 8
  %dyn_dtree = getelementptr inbounds %struct.internal_state, ptr %108, i32 0, i32 37
  %arraydecay133 = getelementptr inbounds [61 x %struct.ct_data_s], ptr %dyn_dtree, i64 0, i64 0
  call void @compress_block(ptr noundef %106, ptr noundef %arraydecay, ptr noundef %arraydecay133)
  br label %if.end134

if.end134:                                        ; preds = %if.end126, %if.end67
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %if.then19
  %109 = load ptr, ptr %s.addr, align 8
  call void @init_block(ptr noundef %109)
  %110 = load i32, ptr %eof.addr, align 4
  %tobool = icmp ne i32 %110, 0
  br i1 %tobool, label %if.then136, label %if.end137

if.then136:                                       ; preds = %if.end135
  %111 = load ptr, ptr %s.addr, align 8
  call void @bi_windup(ptr noundef %111)
  br label %if.end137

if.end137:                                        ; preds = %if.then136, %if.end135
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @set_data_type(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %ascii_freq = alloca i32, align 4
  %bin_freq = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 0, ptr %n, align 4
  store i32 0, ptr %ascii_freq, align 4
  store i32 0, ptr %bin_freq, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %0, 7
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %s.addr, align 8
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %1, i32 0, i32 36
  %2 = load i32, ptr %n, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %n, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree, i64 0, i64 %idxprom
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx, i32 0, i32 0
  %3 = load i16, ptr %fc, align 4
  %conv = zext i16 %3 to i32
  %4 = load i32, ptr %bin_freq, align 4
  %add = add i32 %4, %conv
  store i32 %add, ptr %bin_freq, align 4
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body4, %while.end
  %5 = load i32, ptr %n, align 4
  %cmp2 = icmp slt i32 %5, 128
  br i1 %cmp2, label %while.body4, label %while.end12

while.body4:                                      ; preds = %while.cond1
  %6 = load ptr, ptr %s.addr, align 8
  %dyn_ltree5 = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 36
  %7 = load i32, ptr %n, align 4
  %inc6 = add nsw i32 %7, 1
  store i32 %inc6, ptr %n, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree5, i64 0, i64 %idxprom7
  %fc9 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx8, i32 0, i32 0
  %8 = load i16, ptr %fc9, align 4
  %conv10 = zext i16 %8 to i32
  %9 = load i32, ptr %ascii_freq, align 4
  %add11 = add i32 %9, %conv10
  store i32 %add11, ptr %ascii_freq, align 4
  br label %while.cond1, !llvm.loop !12

while.end12:                                      ; preds = %while.cond1
  br label %while.cond13

while.cond13:                                     ; preds = %while.body16, %while.end12
  %10 = load i32, ptr %n, align 4
  %cmp14 = icmp slt i32 %10, 256
  br i1 %cmp14, label %while.body16, label %while.end24

while.body16:                                     ; preds = %while.cond13
  %11 = load ptr, ptr %s.addr, align 8
  %dyn_ltree17 = getelementptr inbounds %struct.internal_state, ptr %11, i32 0, i32 36
  %12 = load i32, ptr %n, align 4
  %inc18 = add nsw i32 %12, 1
  store i32 %inc18, ptr %n, align 4
  %idxprom19 = sext i32 %12 to i64
  %arrayidx20 = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree17, i64 0, i64 %idxprom19
  %fc21 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx20, i32 0, i32 0
  %13 = load i16, ptr %fc21, align 4
  %conv22 = zext i16 %13 to i32
  %14 = load i32, ptr %bin_freq, align 4
  %add23 = add i32 %14, %conv22
  store i32 %add23, ptr %bin_freq, align 4
  br label %while.cond13, !llvm.loop !13

while.end24:                                      ; preds = %while.cond13
  %15 = load i32, ptr %bin_freq, align 4
  %16 = load i32, ptr %ascii_freq, align 4
  %shr = lshr i32 %16, 2
  %cmp25 = icmp ugt i32 %15, %shr
  %17 = zext i1 %cmp25 to i64
  %cond = select i1 %cmp25, i32 0, i32 1
  %conv27 = trunc i32 %cond to i8
  %18 = load ptr, ptr %s.addr, align 8
  %data_type = getelementptr inbounds %struct.internal_state, ptr %18, i32 0, i32 7
  store i8 %conv27, ptr %data_type, align 8
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
  %0 = load ptr, ptr %desc.addr, align 8
  %dyn_tree = getelementptr inbounds %struct.tree_desc_s, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %dyn_tree, align 8
  store ptr %1, ptr %tree, align 8
  %2 = load ptr, ptr %desc.addr, align 8
  %stat_desc = getelementptr inbounds %struct.tree_desc_s, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %stat_desc, align 8
  %static_tree = getelementptr inbounds %struct.static_tree_desc_s, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %static_tree, align 8
  store ptr %4, ptr %stree, align 8
  %5 = load ptr, ptr %desc.addr, align 8
  %stat_desc1 = getelementptr inbounds %struct.tree_desc_s, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %stat_desc1, align 8
  %elems2 = getelementptr inbounds %struct.static_tree_desc_s, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %elems2, align 4
  store i32 %7, ptr %elems, align 4
  store i32 -1, ptr %max_code, align 4
  %8 = load ptr, ptr %s.addr, align 8
  %heap_len = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 44
  store i32 0, ptr %heap_len, align 4
  %9 = load ptr, ptr %s.addr, align 8
  %heap_max = getelementptr inbounds %struct.internal_state, ptr %9, i32 0, i32 45
  store i32 573, ptr %heap_max, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, ptr %n, align 4
  %11 = load i32, ptr %elems, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %tree, align 8
  %13 = load i32, ptr %n, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds %struct.ct_data_s, ptr %12, i64 %idxprom
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx, i32 0, i32 0
  %14 = load i16, ptr %fc, align 2
  %conv = zext i16 %14 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %15 = load i32, ptr %n, align 4
  store i32 %15, ptr %max_code, align 4
  %16 = load ptr, ptr %s.addr, align 8
  %heap = getelementptr inbounds %struct.internal_state, ptr %16, i32 0, i32 43
  %17 = load ptr, ptr %s.addr, align 8
  %heap_len5 = getelementptr inbounds %struct.internal_state, ptr %17, i32 0, i32 44
  %18 = load i32, ptr %heap_len5, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %heap_len5, align 4
  %idxprom6 = sext i32 %inc to i64
  %arrayidx7 = getelementptr inbounds [573 x i32], ptr %heap, i64 0, i64 %idxprom6
  store i32 %15, ptr %arrayidx7, align 4
  %19 = load ptr, ptr %s.addr, align 8
  %depth = getelementptr inbounds %struct.internal_state, ptr %19, i32 0, i32 46
  %20 = load i32, ptr %n, align 4
  %idxprom8 = sext i32 %20 to i64
  %arrayidx9 = getelementptr inbounds [573 x i8], ptr %depth, i64 0, i64 %idxprom8
  store i8 0, ptr %arrayidx9, align 1
  br label %if.end

if.else:                                          ; preds = %for.body
  %21 = load ptr, ptr %tree, align 8
  %22 = load i32, ptr %n, align 4
  %idxprom10 = sext i32 %22 to i64
  %arrayidx11 = getelementptr inbounds %struct.ct_data_s, ptr %21, i64 %idxprom10
  %dl = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx11, i32 0, i32 1
  store i16 0, ptr %dl, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, ptr %n, align 4
  %inc12 = add nsw i32 %23, 1
  store i32 %inc12, ptr %n, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end35, %for.end
  %24 = load ptr, ptr %s.addr, align 8
  %heap_len13 = getelementptr inbounds %struct.internal_state, ptr %24, i32 0, i32 44
  %25 = load i32, ptr %heap_len13, align 4
  %cmp14 = icmp slt i32 %25, 2
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load i32, ptr %max_code, align 4
  %cmp16 = icmp slt i32 %26, 2
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %27 = load i32, ptr %max_code, align 4
  %inc18 = add nsw i32 %27, 1
  store i32 %inc18, ptr %max_code, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %inc18, %cond.true ], [ 0, %cond.false ]
  %28 = load ptr, ptr %s.addr, align 8
  %heap19 = getelementptr inbounds %struct.internal_state, ptr %28, i32 0, i32 43
  %29 = load ptr, ptr %s.addr, align 8
  %heap_len20 = getelementptr inbounds %struct.internal_state, ptr %29, i32 0, i32 44
  %30 = load i32, ptr %heap_len20, align 4
  %inc21 = add nsw i32 %30, 1
  store i32 %inc21, ptr %heap_len20, align 4
  %idxprom22 = sext i32 %inc21 to i64
  %arrayidx23 = getelementptr inbounds [573 x i32], ptr %heap19, i64 0, i64 %idxprom22
  store i32 %cond, ptr %arrayidx23, align 4
  store i32 %cond, ptr %node, align 4
  %31 = load ptr, ptr %tree, align 8
  %32 = load i32, ptr %node, align 4
  %idxprom24 = sext i32 %32 to i64
  %arrayidx25 = getelementptr inbounds %struct.ct_data_s, ptr %31, i64 %idxprom24
  %fc26 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx25, i32 0, i32 0
  store i16 1, ptr %fc26, align 2
  %33 = load ptr, ptr %s.addr, align 8
  %depth27 = getelementptr inbounds %struct.internal_state, ptr %33, i32 0, i32 46
  %34 = load i32, ptr %node, align 4
  %idxprom28 = sext i32 %34 to i64
  %arrayidx29 = getelementptr inbounds [573 x i8], ptr %depth27, i64 0, i64 %idxprom28
  store i8 0, ptr %arrayidx29, align 1
  %35 = load ptr, ptr %s.addr, align 8
  %opt_len = getelementptr inbounds %struct.internal_state, ptr %35, i32 0, i32 51
  %36 = load i64, ptr %opt_len, align 8
  %dec = add i64 %36, -1
  store i64 %dec, ptr %opt_len, align 8
  %37 = load ptr, ptr %stree, align 8
  %tobool = icmp ne ptr %37, null
  br i1 %tobool, label %if.then30, label %if.end35

if.then30:                                        ; preds = %cond.end
  %38 = load ptr, ptr %stree, align 8
  %39 = load i32, ptr %node, align 4
  %idxprom31 = sext i32 %39 to i64
  %arrayidx32 = getelementptr inbounds %struct.ct_data_s, ptr %38, i64 %idxprom31
  %dl33 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx32, i32 0, i32 1
  %40 = load i16, ptr %dl33, align 2
  %conv34 = zext i16 %40 to i64
  %41 = load ptr, ptr %s.addr, align 8
  %static_len = getelementptr inbounds %struct.internal_state, ptr %41, i32 0, i32 52
  %42 = load i64, ptr %static_len, align 8
  %sub = sub i64 %42, %conv34
  store i64 %sub, ptr %static_len, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %cond.end
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  %43 = load i32, ptr %max_code, align 4
  %44 = load ptr, ptr %desc.addr, align 8
  %max_code36 = getelementptr inbounds %struct.tree_desc_s, ptr %44, i32 0, i32 1
  store i32 %43, ptr %max_code36, align 8
  %45 = load ptr, ptr %s.addr, align 8
  %heap_len37 = getelementptr inbounds %struct.internal_state, ptr %45, i32 0, i32 44
  %46 = load i32, ptr %heap_len37, align 4
  %div = sdiv i32 %46, 2
  store i32 %div, ptr %n, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc42, %while.end
  %47 = load i32, ptr %n, align 4
  %cmp39 = icmp sge i32 %47, 1
  br i1 %cmp39, label %for.body41, label %for.end44

for.body41:                                       ; preds = %for.cond38
  %48 = load ptr, ptr %s.addr, align 8
  %49 = load ptr, ptr %tree, align 8
  %50 = load i32, ptr %n, align 4
  call void @pqdownheap(ptr noundef %48, ptr noundef %49, i32 noundef %50)
  br label %for.inc42

for.inc42:                                        ; preds = %for.body41
  %51 = load i32, ptr %n, align 4
  %dec43 = add nsw i32 %51, -1
  store i32 %dec43, ptr %n, align 4
  br label %for.cond38, !llvm.loop !16

for.end44:                                        ; preds = %for.cond38
  %52 = load i32, ptr %elems, align 4
  store i32 %52, ptr %node, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end44
  %53 = load ptr, ptr %s.addr, align 8
  %heap45 = getelementptr inbounds %struct.internal_state, ptr %53, i32 0, i32 43
  %arrayidx46 = getelementptr inbounds [573 x i32], ptr %heap45, i64 0, i64 1
  %54 = load i32, ptr %arrayidx46, align 4
  store i32 %54, ptr %n, align 4
  %55 = load ptr, ptr %s.addr, align 8
  %heap47 = getelementptr inbounds %struct.internal_state, ptr %55, i32 0, i32 43
  %56 = load ptr, ptr %s.addr, align 8
  %heap_len48 = getelementptr inbounds %struct.internal_state, ptr %56, i32 0, i32 44
  %57 = load i32, ptr %heap_len48, align 4
  %dec49 = add nsw i32 %57, -1
  store i32 %dec49, ptr %heap_len48, align 4
  %idxprom50 = sext i32 %57 to i64
  %arrayidx51 = getelementptr inbounds [573 x i32], ptr %heap47, i64 0, i64 %idxprom50
  %58 = load i32, ptr %arrayidx51, align 4
  %59 = load ptr, ptr %s.addr, align 8
  %heap52 = getelementptr inbounds %struct.internal_state, ptr %59, i32 0, i32 43
  %arrayidx53 = getelementptr inbounds [573 x i32], ptr %heap52, i64 0, i64 1
  store i32 %58, ptr %arrayidx53, align 4
  %60 = load ptr, ptr %s.addr, align 8
  %61 = load ptr, ptr %tree, align 8
  call void @pqdownheap(ptr noundef %60, ptr noundef %61, i32 noundef 1)
  %62 = load ptr, ptr %s.addr, align 8
  %heap54 = getelementptr inbounds %struct.internal_state, ptr %62, i32 0, i32 43
  %arrayidx55 = getelementptr inbounds [573 x i32], ptr %heap54, i64 0, i64 1
  %63 = load i32, ptr %arrayidx55, align 4
  store i32 %63, ptr %m, align 4
  %64 = load i32, ptr %n, align 4
  %65 = load ptr, ptr %s.addr, align 8
  %heap56 = getelementptr inbounds %struct.internal_state, ptr %65, i32 0, i32 43
  %66 = load ptr, ptr %s.addr, align 8
  %heap_max57 = getelementptr inbounds %struct.internal_state, ptr %66, i32 0, i32 45
  %67 = load i32, ptr %heap_max57, align 8
  %dec58 = add nsw i32 %67, -1
  store i32 %dec58, ptr %heap_max57, align 8
  %idxprom59 = sext i32 %dec58 to i64
  %arrayidx60 = getelementptr inbounds [573 x i32], ptr %heap56, i64 0, i64 %idxprom59
  store i32 %64, ptr %arrayidx60, align 4
  %68 = load i32, ptr %m, align 4
  %69 = load ptr, ptr %s.addr, align 8
  %heap61 = getelementptr inbounds %struct.internal_state, ptr %69, i32 0, i32 43
  %70 = load ptr, ptr %s.addr, align 8
  %heap_max62 = getelementptr inbounds %struct.internal_state, ptr %70, i32 0, i32 45
  %71 = load i32, ptr %heap_max62, align 8
  %dec63 = add nsw i32 %71, -1
  store i32 %dec63, ptr %heap_max62, align 8
  %idxprom64 = sext i32 %dec63 to i64
  %arrayidx65 = getelementptr inbounds [573 x i32], ptr %heap61, i64 0, i64 %idxprom64
  store i32 %68, ptr %arrayidx65, align 4
  %72 = load ptr, ptr %tree, align 8
  %73 = load i32, ptr %n, align 4
  %idxprom66 = sext i32 %73 to i64
  %arrayidx67 = getelementptr inbounds %struct.ct_data_s, ptr %72, i64 %idxprom66
  %fc68 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx67, i32 0, i32 0
  %74 = load i16, ptr %fc68, align 2
  %conv69 = zext i16 %74 to i32
  %75 = load ptr, ptr %tree, align 8
  %76 = load i32, ptr %m, align 4
  %idxprom70 = sext i32 %76 to i64
  %arrayidx71 = getelementptr inbounds %struct.ct_data_s, ptr %75, i64 %idxprom70
  %fc72 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx71, i32 0, i32 0
  %77 = load i16, ptr %fc72, align 2
  %conv73 = zext i16 %77 to i32
  %add = add nsw i32 %conv69, %conv73
  %conv74 = trunc i32 %add to i16
  %78 = load ptr, ptr %tree, align 8
  %79 = load i32, ptr %node, align 4
  %idxprom75 = sext i32 %79 to i64
  %arrayidx76 = getelementptr inbounds %struct.ct_data_s, ptr %78, i64 %idxprom75
  %fc77 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx76, i32 0, i32 0
  store i16 %conv74, ptr %fc77, align 2
  %80 = load ptr, ptr %s.addr, align 8
  %depth78 = getelementptr inbounds %struct.internal_state, ptr %80, i32 0, i32 46
  %81 = load i32, ptr %n, align 4
  %idxprom79 = sext i32 %81 to i64
  %arrayidx80 = getelementptr inbounds [573 x i8], ptr %depth78, i64 0, i64 %idxprom79
  %82 = load i8, ptr %arrayidx80, align 1
  %conv81 = zext i8 %82 to i32
  %83 = load ptr, ptr %s.addr, align 8
  %depth82 = getelementptr inbounds %struct.internal_state, ptr %83, i32 0, i32 46
  %84 = load i32, ptr %m, align 4
  %idxprom83 = sext i32 %84 to i64
  %arrayidx84 = getelementptr inbounds [573 x i8], ptr %depth82, i64 0, i64 %idxprom83
  %85 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %85 to i32
  %cmp86 = icmp sge i32 %conv81, %conv85
  br i1 %cmp86, label %cond.true88, label %cond.false93

cond.true88:                                      ; preds = %do.body
  %86 = load ptr, ptr %s.addr, align 8
  %depth89 = getelementptr inbounds %struct.internal_state, ptr %86, i32 0, i32 46
  %87 = load i32, ptr %n, align 4
  %idxprom90 = sext i32 %87 to i64
  %arrayidx91 = getelementptr inbounds [573 x i8], ptr %depth89, i64 0, i64 %idxprom90
  %88 = load i8, ptr %arrayidx91, align 1
  %conv92 = zext i8 %88 to i32
  br label %cond.end98

cond.false93:                                     ; preds = %do.body
  %89 = load ptr, ptr %s.addr, align 8
  %depth94 = getelementptr inbounds %struct.internal_state, ptr %89, i32 0, i32 46
  %90 = load i32, ptr %m, align 4
  %idxprom95 = sext i32 %90 to i64
  %arrayidx96 = getelementptr inbounds [573 x i8], ptr %depth94, i64 0, i64 %idxprom95
  %91 = load i8, ptr %arrayidx96, align 1
  %conv97 = zext i8 %91 to i32
  br label %cond.end98

cond.end98:                                       ; preds = %cond.false93, %cond.true88
  %cond99 = phi i32 [ %conv92, %cond.true88 ], [ %conv97, %cond.false93 ]
  %add100 = add nsw i32 %cond99, 1
  %conv101 = trunc i32 %add100 to i8
  %92 = load ptr, ptr %s.addr, align 8
  %depth102 = getelementptr inbounds %struct.internal_state, ptr %92, i32 0, i32 46
  %93 = load i32, ptr %node, align 4
  %idxprom103 = sext i32 %93 to i64
  %arrayidx104 = getelementptr inbounds [573 x i8], ptr %depth102, i64 0, i64 %idxprom103
  store i8 %conv101, ptr %arrayidx104, align 1
  %94 = load i32, ptr %node, align 4
  %conv105 = trunc i32 %94 to i16
  %95 = load ptr, ptr %tree, align 8
  %96 = load i32, ptr %m, align 4
  %idxprom106 = sext i32 %96 to i64
  %arrayidx107 = getelementptr inbounds %struct.ct_data_s, ptr %95, i64 %idxprom106
  %dl108 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx107, i32 0, i32 1
  store i16 %conv105, ptr %dl108, align 2
  %97 = load ptr, ptr %tree, align 8
  %98 = load i32, ptr %n, align 4
  %idxprom109 = sext i32 %98 to i64
  %arrayidx110 = getelementptr inbounds %struct.ct_data_s, ptr %97, i64 %idxprom109
  %dl111 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx110, i32 0, i32 1
  store i16 %conv105, ptr %dl111, align 2
  %99 = load i32, ptr %node, align 4
  %inc112 = add nsw i32 %99, 1
  store i32 %inc112, ptr %node, align 4
  %100 = load ptr, ptr %s.addr, align 8
  %heap113 = getelementptr inbounds %struct.internal_state, ptr %100, i32 0, i32 43
  %arrayidx114 = getelementptr inbounds [573 x i32], ptr %heap113, i64 0, i64 1
  store i32 %99, ptr %arrayidx114, align 4
  %101 = load ptr, ptr %s.addr, align 8
  %102 = load ptr, ptr %tree, align 8
  call void @pqdownheap(ptr noundef %101, ptr noundef %102, i32 noundef 1)
  br label %do.cond

do.cond:                                          ; preds = %cond.end98
  %103 = load ptr, ptr %s.addr, align 8
  %heap_len115 = getelementptr inbounds %struct.internal_state, ptr %103, i32 0, i32 44
  %104 = load i32, ptr %heap_len115, align 4
  %cmp116 = icmp sge i32 %104, 2
  br i1 %cmp116, label %do.body, label %do.end, !llvm.loop !17

do.end:                                           ; preds = %do.cond
  %105 = load ptr, ptr %s.addr, align 8
  %heap118 = getelementptr inbounds %struct.internal_state, ptr %105, i32 0, i32 43
  %arrayidx119 = getelementptr inbounds [573 x i32], ptr %heap118, i64 0, i64 1
  %106 = load i32, ptr %arrayidx119, align 4
  %107 = load ptr, ptr %s.addr, align 8
  %heap120 = getelementptr inbounds %struct.internal_state, ptr %107, i32 0, i32 43
  %108 = load ptr, ptr %s.addr, align 8
  %heap_max121 = getelementptr inbounds %struct.internal_state, ptr %108, i32 0, i32 45
  %109 = load i32, ptr %heap_max121, align 8
  %dec122 = add nsw i32 %109, -1
  store i32 %dec122, ptr %heap_max121, align 8
  %idxprom123 = sext i32 %dec122 to i64
  %arrayidx124 = getelementptr inbounds [573 x i32], ptr %heap120, i64 0, i64 %idxprom123
  store i32 %106, ptr %arrayidx124, align 4
  %110 = load ptr, ptr %s.addr, align 8
  %111 = load ptr, ptr %desc.addr, align 8
  call void @gen_bitlen(ptr noundef %110, ptr noundef %111)
  %112 = load ptr, ptr %tree, align 8
  %113 = load i32, ptr %max_code, align 4
  %114 = load ptr, ptr %s.addr, align 8
  %bl_count = getelementptr inbounds %struct.internal_state, ptr %114, i32 0, i32 42
  %arraydecay = getelementptr inbounds [16 x i16], ptr %bl_count, i64 0, i64 0
  call void @gen_codes(ptr noundef %112, i32 noundef %113, ptr noundef %arraydecay)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @build_bl_tree(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %max_blindex = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %1 = load ptr, ptr %s.addr, align 8
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %1, i32 0, i32 36
  %arraydecay = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree, i64 0, i64 0
  %2 = load ptr, ptr %s.addr, align 8
  %l_desc = getelementptr inbounds %struct.internal_state, ptr %2, i32 0, i32 39
  %max_code = getelementptr inbounds %struct.tree_desc_s, ptr %l_desc, i32 0, i32 1
  %3 = load i32, ptr %max_code, align 8
  call void @scan_tree(ptr noundef %0, ptr noundef %arraydecay, i32 noundef %3)
  %4 = load ptr, ptr %s.addr, align 8
  %5 = load ptr, ptr %s.addr, align 8
  %dyn_dtree = getelementptr inbounds %struct.internal_state, ptr %5, i32 0, i32 37
  %arraydecay1 = getelementptr inbounds [61 x %struct.ct_data_s], ptr %dyn_dtree, i64 0, i64 0
  %6 = load ptr, ptr %s.addr, align 8
  %d_desc = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 40
  %max_code2 = getelementptr inbounds %struct.tree_desc_s, ptr %d_desc, i32 0, i32 1
  %7 = load i32, ptr %max_code2, align 8
  call void @scan_tree(ptr noundef %4, ptr noundef %arraydecay1, i32 noundef %7)
  %8 = load ptr, ptr %s.addr, align 8
  %9 = load ptr, ptr %s.addr, align 8
  %bl_desc = getelementptr inbounds %struct.internal_state, ptr %9, i32 0, i32 41
  call void @build_tree(ptr noundef %8, ptr noundef %bl_desc)
  store i32 18, ptr %max_blindex, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, ptr %max_blindex, align 4
  %cmp = icmp sge i32 %10, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %s.addr, align 8
  %bl_tree = getelementptr inbounds %struct.internal_state, ptr %11, i32 0, i32 38
  %12 = load i32, ptr %max_blindex, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [19 x i8], ptr @bl_order, i64 0, i64 %idxprom
  %13 = load i8, ptr %arrayidx, align 1
  %idxprom3 = zext i8 %13 to i64
  %arrayidx4 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree, i64 0, i64 %idxprom3
  %dl = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx4, i32 0, i32 1
  %14 = load i16, ptr %dl, align 2
  %conv = zext i16 %14 to i32
  %cmp5 = icmp ne i32 %conv, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %max_blindex, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %max_blindex, align 4
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %if.then, %for.cond
  %16 = load i32, ptr %max_blindex, align 4
  %add = add nsw i32 %16, 1
  %mul = mul nsw i32 3, %add
  %add7 = add nsw i32 %mul, 5
  %add8 = add nsw i32 %add7, 5
  %add9 = add nsw i32 %add8, 4
  %conv10 = sext i32 %add9 to i64
  %17 = load ptr, ptr %s.addr, align 8
  %opt_len = getelementptr inbounds %struct.internal_state, ptr %17, i32 0, i32 51
  %18 = load i64, ptr %opt_len, align 8
  %add11 = add i64 %18, %conv10
  store i64 %add11, ptr %opt_len, align 8
  %19 = load i32, ptr %max_blindex, align 4
  ret i32 %19
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
  %0 = load ptr, ptr %s.addr, align 8
  %last_lit = getelementptr inbounds %struct.internal_state, ptr %0, i32 0, i32 49
  %1 = load i32, ptr %last_lit, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end348

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %2 = load ptr, ptr %s.addr, align 8
  %d_buf = getelementptr inbounds %struct.internal_state, ptr %2, i32 0, i32 50
  %3 = load ptr, ptr %d_buf, align 8
  %4 = load i32, ptr %lx, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds i16, ptr %3, i64 %idxprom
  %5 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %5 to i32
  store i32 %conv, ptr %dist, align 4
  %6 = load ptr, ptr %s.addr, align 8
  %l_buf = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 47
  %7 = load ptr, ptr %l_buf, align 8
  %8 = load i32, ptr %lx, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %lx, align 4
  %idxprom1 = zext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %7, i64 %idxprom1
  %9 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %9 to i32
  store i32 %conv3, ptr %lc, align 4
  %10 = load i32, ptr %dist, align 4
  %cmp4 = icmp eq i32 %10, 0
  br i1 %cmp4, label %if.then6, label %if.else58

if.then6:                                         ; preds = %do.body
  %11 = load ptr, ptr %ltree.addr, align 8
  %12 = load i32, ptr %lc, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds %struct.ct_data_s, ptr %11, i64 %idxprom7
  %dl = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx8, i32 0, i32 1
  %13 = load i16, ptr %dl, align 2
  %conv9 = zext i16 %13 to i32
  store i32 %conv9, ptr %len, align 4
  %14 = load ptr, ptr %s.addr, align 8
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %14, i32 0, i32 56
  %15 = load i32, ptr %bi_valid, align 4
  %16 = load i32, ptr %len, align 4
  %sub = sub nsw i32 16, %16
  %cmp10 = icmp sgt i32 %15, %sub
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then6
  %17 = load ptr, ptr %ltree.addr, align 8
  %18 = load i32, ptr %lc, align 4
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds %struct.ct_data_s, ptr %17, i64 %idxprom13
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx14, i32 0, i32 0
  %19 = load i16, ptr %fc, align 2
  %conv15 = zext i16 %19 to i32
  store i32 %conv15, ptr %val, align 4
  %20 = load i32, ptr %val, align 4
  %21 = load ptr, ptr %s.addr, align 8
  %bi_valid16 = getelementptr inbounds %struct.internal_state, ptr %21, i32 0, i32 56
  %22 = load i32, ptr %bi_valid16, align 4
  %shl = shl i32 %20, %22
  %23 = load ptr, ptr %s.addr, align 8
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %23, i32 0, i32 55
  %24 = load i16, ptr %bi_buf, align 8
  %conv17 = zext i16 %24 to i32
  %or = or i32 %conv17, %shl
  %conv18 = trunc i32 %or to i16
  store i16 %conv18, ptr %bi_buf, align 8
  %25 = load ptr, ptr %s.addr, align 8
  %bi_buf19 = getelementptr inbounds %struct.internal_state, ptr %25, i32 0, i32 55
  %26 = load i16, ptr %bi_buf19, align 8
  %conv20 = zext i16 %26 to i32
  %and = and i32 %conv20, 255
  %conv21 = trunc i32 %and to i8
  %27 = load ptr, ptr %s.addr, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %pending_buf, align 8
  %29 = load ptr, ptr %s.addr, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %29, i32 0, i32 5
  %30 = load i32, ptr %pending, align 8
  %inc22 = add nsw i32 %30, 1
  store i32 %inc22, ptr %pending, align 8
  %idxprom23 = sext i32 %30 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %28, i64 %idxprom23
  store i8 %conv21, ptr %arrayidx24, align 1
  %31 = load ptr, ptr %s.addr, align 8
  %bi_buf25 = getelementptr inbounds %struct.internal_state, ptr %31, i32 0, i32 55
  %32 = load i16, ptr %bi_buf25, align 8
  %conv26 = zext i16 %32 to i32
  %shr = ashr i32 %conv26, 8
  %conv27 = trunc i32 %shr to i8
  %33 = load ptr, ptr %s.addr, align 8
  %pending_buf28 = getelementptr inbounds %struct.internal_state, ptr %33, i32 0, i32 2
  %34 = load ptr, ptr %pending_buf28, align 8
  %35 = load ptr, ptr %s.addr, align 8
  %pending29 = getelementptr inbounds %struct.internal_state, ptr %35, i32 0, i32 5
  %36 = load i32, ptr %pending29, align 8
  %inc30 = add nsw i32 %36, 1
  store i32 %inc30, ptr %pending29, align 8
  %idxprom31 = sext i32 %36 to i64
  %arrayidx32 = getelementptr inbounds i8, ptr %34, i64 %idxprom31
  store i8 %conv27, ptr %arrayidx32, align 1
  %37 = load i32, ptr %val, align 4
  %conv33 = trunc i32 %37 to i16
  %conv34 = zext i16 %conv33 to i32
  %38 = load ptr, ptr %s.addr, align 8
  %bi_valid35 = getelementptr inbounds %struct.internal_state, ptr %38, i32 0, i32 56
  %39 = load i32, ptr %bi_valid35, align 4
  %conv36 = sext i32 %39 to i64
  %sub37 = sub i64 16, %conv36
  %sh_prom = trunc i64 %sub37 to i32
  %shr38 = ashr i32 %conv34, %sh_prom
  %conv39 = trunc i32 %shr38 to i16
  %40 = load ptr, ptr %s.addr, align 8
  %bi_buf40 = getelementptr inbounds %struct.internal_state, ptr %40, i32 0, i32 55
  store i16 %conv39, ptr %bi_buf40, align 8
  %41 = load i32, ptr %len, align 4
  %conv41 = sext i32 %41 to i64
  %sub42 = sub i64 %conv41, 16
  %42 = load ptr, ptr %s.addr, align 8
  %bi_valid43 = getelementptr inbounds %struct.internal_state, ptr %42, i32 0, i32 56
  %43 = load i32, ptr %bi_valid43, align 4
  %conv44 = sext i32 %43 to i64
  %add = add i64 %conv44, %sub42
  %conv45 = trunc i64 %add to i32
  store i32 %conv45, ptr %bi_valid43, align 4
  br label %if.end

if.else:                                          ; preds = %if.then6
  %44 = load ptr, ptr %ltree.addr, align 8
  %45 = load i32, ptr %lc, align 4
  %idxprom46 = sext i32 %45 to i64
  %arrayidx47 = getelementptr inbounds %struct.ct_data_s, ptr %44, i64 %idxprom46
  %fc48 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx47, i32 0, i32 0
  %46 = load i16, ptr %fc48, align 2
  %conv49 = zext i16 %46 to i32
  %47 = load ptr, ptr %s.addr, align 8
  %bi_valid50 = getelementptr inbounds %struct.internal_state, ptr %47, i32 0, i32 56
  %48 = load i32, ptr %bi_valid50, align 4
  %shl51 = shl i32 %conv49, %48
  %49 = load ptr, ptr %s.addr, align 8
  %bi_buf52 = getelementptr inbounds %struct.internal_state, ptr %49, i32 0, i32 55
  %50 = load i16, ptr %bi_buf52, align 8
  %conv53 = zext i16 %50 to i32
  %or54 = or i32 %conv53, %shl51
  %conv55 = trunc i32 %or54 to i16
  store i16 %conv55, ptr %bi_buf52, align 8
  %51 = load i32, ptr %len, align 4
  %52 = load ptr, ptr %s.addr, align 8
  %bi_valid56 = getelementptr inbounds %struct.internal_state, ptr %52, i32 0, i32 56
  %53 = load i32, ptr %bi_valid56, align 4
  %add57 = add nsw i32 %53, %51
  store i32 %add57, ptr %bi_valid56, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then12
  br label %if.end344

if.else58:                                        ; preds = %do.body
  %54 = load i32, ptr %lc, align 4
  %idxprom59 = sext i32 %54 to i64
  %arrayidx60 = getelementptr inbounds [256 x i8], ptr @_length_code, i64 0, i64 %idxprom59
  %55 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %55 to i32
  store i32 %conv61, ptr %code, align 4
  %56 = load ptr, ptr %ltree.addr, align 8
  %57 = load i32, ptr %code, align 4
  %add63 = add i32 %57, 256
  %add64 = add i32 %add63, 1
  %idxprom65 = zext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds %struct.ct_data_s, ptr %56, i64 %idxprom65
  %dl67 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx66, i32 0, i32 1
  %58 = load i16, ptr %dl67, align 2
  %conv68 = zext i16 %58 to i32
  store i32 %conv68, ptr %len62, align 4
  %59 = load ptr, ptr %s.addr, align 8
  %bi_valid69 = getelementptr inbounds %struct.internal_state, ptr %59, i32 0, i32 56
  %60 = load i32, ptr %bi_valid69, align 4
  %61 = load i32, ptr %len62, align 4
  %sub70 = sub nsw i32 16, %61
  %cmp71 = icmp sgt i32 %60, %sub70
  br i1 %cmp71, label %if.then73, label %if.else120

if.then73:                                        ; preds = %if.else58
  %62 = load ptr, ptr %ltree.addr, align 8
  %63 = load i32, ptr %code, align 4
  %add75 = add i32 %63, 256
  %add76 = add i32 %add75, 1
  %idxprom77 = zext i32 %add76 to i64
  %arrayidx78 = getelementptr inbounds %struct.ct_data_s, ptr %62, i64 %idxprom77
  %fc79 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx78, i32 0, i32 0
  %64 = load i16, ptr %fc79, align 2
  %conv80 = zext i16 %64 to i32
  store i32 %conv80, ptr %val74, align 4
  %65 = load i32, ptr %val74, align 4
  %66 = load ptr, ptr %s.addr, align 8
  %bi_valid81 = getelementptr inbounds %struct.internal_state, ptr %66, i32 0, i32 56
  %67 = load i32, ptr %bi_valid81, align 4
  %shl82 = shl i32 %65, %67
  %68 = load ptr, ptr %s.addr, align 8
  %bi_buf83 = getelementptr inbounds %struct.internal_state, ptr %68, i32 0, i32 55
  %69 = load i16, ptr %bi_buf83, align 8
  %conv84 = zext i16 %69 to i32
  %or85 = or i32 %conv84, %shl82
  %conv86 = trunc i32 %or85 to i16
  store i16 %conv86, ptr %bi_buf83, align 8
  %70 = load ptr, ptr %s.addr, align 8
  %bi_buf87 = getelementptr inbounds %struct.internal_state, ptr %70, i32 0, i32 55
  %71 = load i16, ptr %bi_buf87, align 8
  %conv88 = zext i16 %71 to i32
  %and89 = and i32 %conv88, 255
  %conv90 = trunc i32 %and89 to i8
  %72 = load ptr, ptr %s.addr, align 8
  %pending_buf91 = getelementptr inbounds %struct.internal_state, ptr %72, i32 0, i32 2
  %73 = load ptr, ptr %pending_buf91, align 8
  %74 = load ptr, ptr %s.addr, align 8
  %pending92 = getelementptr inbounds %struct.internal_state, ptr %74, i32 0, i32 5
  %75 = load i32, ptr %pending92, align 8
  %inc93 = add nsw i32 %75, 1
  store i32 %inc93, ptr %pending92, align 8
  %idxprom94 = sext i32 %75 to i64
  %arrayidx95 = getelementptr inbounds i8, ptr %73, i64 %idxprom94
  store i8 %conv90, ptr %arrayidx95, align 1
  %76 = load ptr, ptr %s.addr, align 8
  %bi_buf96 = getelementptr inbounds %struct.internal_state, ptr %76, i32 0, i32 55
  %77 = load i16, ptr %bi_buf96, align 8
  %conv97 = zext i16 %77 to i32
  %shr98 = ashr i32 %conv97, 8
  %conv99 = trunc i32 %shr98 to i8
  %78 = load ptr, ptr %s.addr, align 8
  %pending_buf100 = getelementptr inbounds %struct.internal_state, ptr %78, i32 0, i32 2
  %79 = load ptr, ptr %pending_buf100, align 8
  %80 = load ptr, ptr %s.addr, align 8
  %pending101 = getelementptr inbounds %struct.internal_state, ptr %80, i32 0, i32 5
  %81 = load i32, ptr %pending101, align 8
  %inc102 = add nsw i32 %81, 1
  store i32 %inc102, ptr %pending101, align 8
  %idxprom103 = sext i32 %81 to i64
  %arrayidx104 = getelementptr inbounds i8, ptr %79, i64 %idxprom103
  store i8 %conv99, ptr %arrayidx104, align 1
  %82 = load i32, ptr %val74, align 4
  %conv105 = trunc i32 %82 to i16
  %conv106 = zext i16 %conv105 to i32
  %83 = load ptr, ptr %s.addr, align 8
  %bi_valid107 = getelementptr inbounds %struct.internal_state, ptr %83, i32 0, i32 56
  %84 = load i32, ptr %bi_valid107, align 4
  %conv108 = sext i32 %84 to i64
  %sub109 = sub i64 16, %conv108
  %sh_prom110 = trunc i64 %sub109 to i32
  %shr111 = ashr i32 %conv106, %sh_prom110
  %conv112 = trunc i32 %shr111 to i16
  %85 = load ptr, ptr %s.addr, align 8
  %bi_buf113 = getelementptr inbounds %struct.internal_state, ptr %85, i32 0, i32 55
  store i16 %conv112, ptr %bi_buf113, align 8
  %86 = load i32, ptr %len62, align 4
  %conv114 = sext i32 %86 to i64
  %sub115 = sub i64 %conv114, 16
  %87 = load ptr, ptr %s.addr, align 8
  %bi_valid116 = getelementptr inbounds %struct.internal_state, ptr %87, i32 0, i32 56
  %88 = load i32, ptr %bi_valid116, align 4
  %conv117 = sext i32 %88 to i64
  %add118 = add i64 %conv117, %sub115
  %conv119 = trunc i64 %add118 to i32
  store i32 %conv119, ptr %bi_valid116, align 4
  br label %if.end135

if.else120:                                       ; preds = %if.else58
  %89 = load ptr, ptr %ltree.addr, align 8
  %90 = load i32, ptr %code, align 4
  %add121 = add i32 %90, 256
  %add122 = add i32 %add121, 1
  %idxprom123 = zext i32 %add122 to i64
  %arrayidx124 = getelementptr inbounds %struct.ct_data_s, ptr %89, i64 %idxprom123
  %fc125 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx124, i32 0, i32 0
  %91 = load i16, ptr %fc125, align 2
  %conv126 = zext i16 %91 to i32
  %92 = load ptr, ptr %s.addr, align 8
  %bi_valid127 = getelementptr inbounds %struct.internal_state, ptr %92, i32 0, i32 56
  %93 = load i32, ptr %bi_valid127, align 4
  %shl128 = shl i32 %conv126, %93
  %94 = load ptr, ptr %s.addr, align 8
  %bi_buf129 = getelementptr inbounds %struct.internal_state, ptr %94, i32 0, i32 55
  %95 = load i16, ptr %bi_buf129, align 8
  %conv130 = zext i16 %95 to i32
  %or131 = or i32 %conv130, %shl128
  %conv132 = trunc i32 %or131 to i16
  store i16 %conv132, ptr %bi_buf129, align 8
  %96 = load i32, ptr %len62, align 4
  %97 = load ptr, ptr %s.addr, align 8
  %bi_valid133 = getelementptr inbounds %struct.internal_state, ptr %97, i32 0, i32 56
  %98 = load i32, ptr %bi_valid133, align 4
  %add134 = add nsw i32 %98, %96
  store i32 %add134, ptr %bi_valid133, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.else120, %if.then73
  %99 = load i32, ptr %code, align 4
  %idxprom136 = zext i32 %99 to i64
  %arrayidx137 = getelementptr inbounds [29 x i32], ptr @extra_lbits, i64 0, i64 %idxprom136
  %100 = load i32, ptr %arrayidx137, align 4
  store i32 %100, ptr %extra, align 4
  %101 = load i32, ptr %extra, align 4
  %cmp138 = icmp ne i32 %101, 0
  br i1 %cmp138, label %if.then140, label %if.end200

if.then140:                                       ; preds = %if.end135
  %102 = load i32, ptr %code, align 4
  %idxprom141 = zext i32 %102 to i64
  %arrayidx142 = getelementptr inbounds [29 x i32], ptr @base_length, i64 0, i64 %idxprom141
  %103 = load i32, ptr %arrayidx142, align 4
  %104 = load i32, ptr %lc, align 4
  %sub143 = sub nsw i32 %104, %103
  store i32 %sub143, ptr %lc, align 4
  %105 = load i32, ptr %extra, align 4
  store i32 %105, ptr %len144, align 4
  %106 = load ptr, ptr %s.addr, align 8
  %bi_valid145 = getelementptr inbounds %struct.internal_state, ptr %106, i32 0, i32 56
  %107 = load i32, ptr %bi_valid145, align 4
  %108 = load i32, ptr %len144, align 4
  %sub146 = sub nsw i32 16, %108
  %cmp147 = icmp sgt i32 %107, %sub146
  br i1 %cmp147, label %if.then149, label %if.else190

if.then149:                                       ; preds = %if.then140
  %109 = load i32, ptr %lc, align 4
  store i32 %109, ptr %val150, align 4
  %110 = load i32, ptr %val150, align 4
  %111 = load ptr, ptr %s.addr, align 8
  %bi_valid151 = getelementptr inbounds %struct.internal_state, ptr %111, i32 0, i32 56
  %112 = load i32, ptr %bi_valid151, align 4
  %shl152 = shl i32 %110, %112
  %113 = load ptr, ptr %s.addr, align 8
  %bi_buf153 = getelementptr inbounds %struct.internal_state, ptr %113, i32 0, i32 55
  %114 = load i16, ptr %bi_buf153, align 8
  %conv154 = zext i16 %114 to i32
  %or155 = or i32 %conv154, %shl152
  %conv156 = trunc i32 %or155 to i16
  store i16 %conv156, ptr %bi_buf153, align 8
  %115 = load ptr, ptr %s.addr, align 8
  %bi_buf157 = getelementptr inbounds %struct.internal_state, ptr %115, i32 0, i32 55
  %116 = load i16, ptr %bi_buf157, align 8
  %conv158 = zext i16 %116 to i32
  %and159 = and i32 %conv158, 255
  %conv160 = trunc i32 %and159 to i8
  %117 = load ptr, ptr %s.addr, align 8
  %pending_buf161 = getelementptr inbounds %struct.internal_state, ptr %117, i32 0, i32 2
  %118 = load ptr, ptr %pending_buf161, align 8
  %119 = load ptr, ptr %s.addr, align 8
  %pending162 = getelementptr inbounds %struct.internal_state, ptr %119, i32 0, i32 5
  %120 = load i32, ptr %pending162, align 8
  %inc163 = add nsw i32 %120, 1
  store i32 %inc163, ptr %pending162, align 8
  %idxprom164 = sext i32 %120 to i64
  %arrayidx165 = getelementptr inbounds i8, ptr %118, i64 %idxprom164
  store i8 %conv160, ptr %arrayidx165, align 1
  %121 = load ptr, ptr %s.addr, align 8
  %bi_buf166 = getelementptr inbounds %struct.internal_state, ptr %121, i32 0, i32 55
  %122 = load i16, ptr %bi_buf166, align 8
  %conv167 = zext i16 %122 to i32
  %shr168 = ashr i32 %conv167, 8
  %conv169 = trunc i32 %shr168 to i8
  %123 = load ptr, ptr %s.addr, align 8
  %pending_buf170 = getelementptr inbounds %struct.internal_state, ptr %123, i32 0, i32 2
  %124 = load ptr, ptr %pending_buf170, align 8
  %125 = load ptr, ptr %s.addr, align 8
  %pending171 = getelementptr inbounds %struct.internal_state, ptr %125, i32 0, i32 5
  %126 = load i32, ptr %pending171, align 8
  %inc172 = add nsw i32 %126, 1
  store i32 %inc172, ptr %pending171, align 8
  %idxprom173 = sext i32 %126 to i64
  %arrayidx174 = getelementptr inbounds i8, ptr %124, i64 %idxprom173
  store i8 %conv169, ptr %arrayidx174, align 1
  %127 = load i32, ptr %val150, align 4
  %conv175 = trunc i32 %127 to i16
  %conv176 = zext i16 %conv175 to i32
  %128 = load ptr, ptr %s.addr, align 8
  %bi_valid177 = getelementptr inbounds %struct.internal_state, ptr %128, i32 0, i32 56
  %129 = load i32, ptr %bi_valid177, align 4
  %conv178 = sext i32 %129 to i64
  %sub179 = sub i64 16, %conv178
  %sh_prom180 = trunc i64 %sub179 to i32
  %shr181 = ashr i32 %conv176, %sh_prom180
  %conv182 = trunc i32 %shr181 to i16
  %130 = load ptr, ptr %s.addr, align 8
  %bi_buf183 = getelementptr inbounds %struct.internal_state, ptr %130, i32 0, i32 55
  store i16 %conv182, ptr %bi_buf183, align 8
  %131 = load i32, ptr %len144, align 4
  %conv184 = sext i32 %131 to i64
  %sub185 = sub i64 %conv184, 16
  %132 = load ptr, ptr %s.addr, align 8
  %bi_valid186 = getelementptr inbounds %struct.internal_state, ptr %132, i32 0, i32 56
  %133 = load i32, ptr %bi_valid186, align 4
  %conv187 = sext i32 %133 to i64
  %add188 = add i64 %conv187, %sub185
  %conv189 = trunc i64 %add188 to i32
  store i32 %conv189, ptr %bi_valid186, align 4
  br label %if.end199

if.else190:                                       ; preds = %if.then140
  %134 = load i32, ptr %lc, align 4
  %135 = load ptr, ptr %s.addr, align 8
  %bi_valid191 = getelementptr inbounds %struct.internal_state, ptr %135, i32 0, i32 56
  %136 = load i32, ptr %bi_valid191, align 4
  %shl192 = shl i32 %134, %136
  %137 = load ptr, ptr %s.addr, align 8
  %bi_buf193 = getelementptr inbounds %struct.internal_state, ptr %137, i32 0, i32 55
  %138 = load i16, ptr %bi_buf193, align 8
  %conv194 = zext i16 %138 to i32
  %or195 = or i32 %conv194, %shl192
  %conv196 = trunc i32 %or195 to i16
  store i16 %conv196, ptr %bi_buf193, align 8
  %139 = load i32, ptr %len144, align 4
  %140 = load ptr, ptr %s.addr, align 8
  %bi_valid197 = getelementptr inbounds %struct.internal_state, ptr %140, i32 0, i32 56
  %141 = load i32, ptr %bi_valid197, align 4
  %add198 = add nsw i32 %141, %139
  store i32 %add198, ptr %bi_valid197, align 4
  br label %if.end199

if.end199:                                        ; preds = %if.else190, %if.then149
  br label %if.end200

if.end200:                                        ; preds = %if.end199, %if.end135
  %142 = load i32, ptr %dist, align 4
  %dec = add i32 %142, -1
  store i32 %dec, ptr %dist, align 4
  %143 = load i32, ptr %dist, align 4
  %cmp201 = icmp ult i32 %143, 256
  br i1 %cmp201, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end200
  %144 = load i32, ptr %dist, align 4
  %idxprom203 = zext i32 %144 to i64
  %arrayidx204 = getelementptr inbounds [512 x i8], ptr @_dist_code, i64 0, i64 %idxprom203
  %145 = load i8, ptr %arrayidx204, align 1
  %conv205 = zext i8 %145 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end200
  %146 = load i32, ptr %dist, align 4
  %shr206 = lshr i32 %146, 7
  %add207 = add i32 256, %shr206
  %idxprom208 = zext i32 %add207 to i64
  %arrayidx209 = getelementptr inbounds [512 x i8], ptr @_dist_code, i64 0, i64 %idxprom208
  %147 = load i8, ptr %arrayidx209, align 1
  %conv210 = zext i8 %147 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv205, %cond.true ], [ %conv210, %cond.false ]
  store i32 %cond, ptr %code, align 4
  %148 = load ptr, ptr %dtree.addr, align 8
  %149 = load i32, ptr %code, align 4
  %idxprom212 = zext i32 %149 to i64
  %arrayidx213 = getelementptr inbounds %struct.ct_data_s, ptr %148, i64 %idxprom212
  %dl214 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx213, i32 0, i32 1
  %150 = load i16, ptr %dl214, align 2
  %conv215 = zext i16 %150 to i32
  store i32 %conv215, ptr %len211, align 4
  %151 = load ptr, ptr %s.addr, align 8
  %bi_valid216 = getelementptr inbounds %struct.internal_state, ptr %151, i32 0, i32 56
  %152 = load i32, ptr %bi_valid216, align 4
  %153 = load i32, ptr %len211, align 4
  %sub217 = sub nsw i32 16, %153
  %cmp218 = icmp sgt i32 %152, %sub217
  br i1 %cmp218, label %if.then220, label %if.else265

if.then220:                                       ; preds = %cond.end
  %154 = load ptr, ptr %dtree.addr, align 8
  %155 = load i32, ptr %code, align 4
  %idxprom222 = zext i32 %155 to i64
  %arrayidx223 = getelementptr inbounds %struct.ct_data_s, ptr %154, i64 %idxprom222
  %fc224 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx223, i32 0, i32 0
  %156 = load i16, ptr %fc224, align 2
  %conv225 = zext i16 %156 to i32
  store i32 %conv225, ptr %val221, align 4
  %157 = load i32, ptr %val221, align 4
  %158 = load ptr, ptr %s.addr, align 8
  %bi_valid226 = getelementptr inbounds %struct.internal_state, ptr %158, i32 0, i32 56
  %159 = load i32, ptr %bi_valid226, align 4
  %shl227 = shl i32 %157, %159
  %160 = load ptr, ptr %s.addr, align 8
  %bi_buf228 = getelementptr inbounds %struct.internal_state, ptr %160, i32 0, i32 55
  %161 = load i16, ptr %bi_buf228, align 8
  %conv229 = zext i16 %161 to i32
  %or230 = or i32 %conv229, %shl227
  %conv231 = trunc i32 %or230 to i16
  store i16 %conv231, ptr %bi_buf228, align 8
  %162 = load ptr, ptr %s.addr, align 8
  %bi_buf232 = getelementptr inbounds %struct.internal_state, ptr %162, i32 0, i32 55
  %163 = load i16, ptr %bi_buf232, align 8
  %conv233 = zext i16 %163 to i32
  %and234 = and i32 %conv233, 255
  %conv235 = trunc i32 %and234 to i8
  %164 = load ptr, ptr %s.addr, align 8
  %pending_buf236 = getelementptr inbounds %struct.internal_state, ptr %164, i32 0, i32 2
  %165 = load ptr, ptr %pending_buf236, align 8
  %166 = load ptr, ptr %s.addr, align 8
  %pending237 = getelementptr inbounds %struct.internal_state, ptr %166, i32 0, i32 5
  %167 = load i32, ptr %pending237, align 8
  %inc238 = add nsw i32 %167, 1
  store i32 %inc238, ptr %pending237, align 8
  %idxprom239 = sext i32 %167 to i64
  %arrayidx240 = getelementptr inbounds i8, ptr %165, i64 %idxprom239
  store i8 %conv235, ptr %arrayidx240, align 1
  %168 = load ptr, ptr %s.addr, align 8
  %bi_buf241 = getelementptr inbounds %struct.internal_state, ptr %168, i32 0, i32 55
  %169 = load i16, ptr %bi_buf241, align 8
  %conv242 = zext i16 %169 to i32
  %shr243 = ashr i32 %conv242, 8
  %conv244 = trunc i32 %shr243 to i8
  %170 = load ptr, ptr %s.addr, align 8
  %pending_buf245 = getelementptr inbounds %struct.internal_state, ptr %170, i32 0, i32 2
  %171 = load ptr, ptr %pending_buf245, align 8
  %172 = load ptr, ptr %s.addr, align 8
  %pending246 = getelementptr inbounds %struct.internal_state, ptr %172, i32 0, i32 5
  %173 = load i32, ptr %pending246, align 8
  %inc247 = add nsw i32 %173, 1
  store i32 %inc247, ptr %pending246, align 8
  %idxprom248 = sext i32 %173 to i64
  %arrayidx249 = getelementptr inbounds i8, ptr %171, i64 %idxprom248
  store i8 %conv244, ptr %arrayidx249, align 1
  %174 = load i32, ptr %val221, align 4
  %conv250 = trunc i32 %174 to i16
  %conv251 = zext i16 %conv250 to i32
  %175 = load ptr, ptr %s.addr, align 8
  %bi_valid252 = getelementptr inbounds %struct.internal_state, ptr %175, i32 0, i32 56
  %176 = load i32, ptr %bi_valid252, align 4
  %conv253 = sext i32 %176 to i64
  %sub254 = sub i64 16, %conv253
  %sh_prom255 = trunc i64 %sub254 to i32
  %shr256 = ashr i32 %conv251, %sh_prom255
  %conv257 = trunc i32 %shr256 to i16
  %177 = load ptr, ptr %s.addr, align 8
  %bi_buf258 = getelementptr inbounds %struct.internal_state, ptr %177, i32 0, i32 55
  store i16 %conv257, ptr %bi_buf258, align 8
  %178 = load i32, ptr %len211, align 4
  %conv259 = sext i32 %178 to i64
  %sub260 = sub i64 %conv259, 16
  %179 = load ptr, ptr %s.addr, align 8
  %bi_valid261 = getelementptr inbounds %struct.internal_state, ptr %179, i32 0, i32 56
  %180 = load i32, ptr %bi_valid261, align 4
  %conv262 = sext i32 %180 to i64
  %add263 = add i64 %conv262, %sub260
  %conv264 = trunc i64 %add263 to i32
  store i32 %conv264, ptr %bi_valid261, align 4
  br label %if.end278

if.else265:                                       ; preds = %cond.end
  %181 = load ptr, ptr %dtree.addr, align 8
  %182 = load i32, ptr %code, align 4
  %idxprom266 = zext i32 %182 to i64
  %arrayidx267 = getelementptr inbounds %struct.ct_data_s, ptr %181, i64 %idxprom266
  %fc268 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx267, i32 0, i32 0
  %183 = load i16, ptr %fc268, align 2
  %conv269 = zext i16 %183 to i32
  %184 = load ptr, ptr %s.addr, align 8
  %bi_valid270 = getelementptr inbounds %struct.internal_state, ptr %184, i32 0, i32 56
  %185 = load i32, ptr %bi_valid270, align 4
  %shl271 = shl i32 %conv269, %185
  %186 = load ptr, ptr %s.addr, align 8
  %bi_buf272 = getelementptr inbounds %struct.internal_state, ptr %186, i32 0, i32 55
  %187 = load i16, ptr %bi_buf272, align 8
  %conv273 = zext i16 %187 to i32
  %or274 = or i32 %conv273, %shl271
  %conv275 = trunc i32 %or274 to i16
  store i16 %conv275, ptr %bi_buf272, align 8
  %188 = load i32, ptr %len211, align 4
  %189 = load ptr, ptr %s.addr, align 8
  %bi_valid276 = getelementptr inbounds %struct.internal_state, ptr %189, i32 0, i32 56
  %190 = load i32, ptr %bi_valid276, align 4
  %add277 = add nsw i32 %190, %188
  store i32 %add277, ptr %bi_valid276, align 4
  br label %if.end278

if.end278:                                        ; preds = %if.else265, %if.then220
  %191 = load i32, ptr %code, align 4
  %idxprom279 = zext i32 %191 to i64
  %arrayidx280 = getelementptr inbounds [30 x i32], ptr @extra_dbits, i64 0, i64 %idxprom279
  %192 = load i32, ptr %arrayidx280, align 4
  store i32 %192, ptr %extra, align 4
  %193 = load i32, ptr %extra, align 4
  %cmp281 = icmp ne i32 %193, 0
  br i1 %cmp281, label %if.then283, label %if.end343

if.then283:                                       ; preds = %if.end278
  %194 = load i32, ptr %code, align 4
  %idxprom284 = zext i32 %194 to i64
  %arrayidx285 = getelementptr inbounds [30 x i32], ptr @base_dist, i64 0, i64 %idxprom284
  %195 = load i32, ptr %arrayidx285, align 4
  %196 = load i32, ptr %dist, align 4
  %sub286 = sub i32 %196, %195
  store i32 %sub286, ptr %dist, align 4
  %197 = load i32, ptr %extra, align 4
  store i32 %197, ptr %len287, align 4
  %198 = load ptr, ptr %s.addr, align 8
  %bi_valid288 = getelementptr inbounds %struct.internal_state, ptr %198, i32 0, i32 56
  %199 = load i32, ptr %bi_valid288, align 4
  %200 = load i32, ptr %len287, align 4
  %sub289 = sub nsw i32 16, %200
  %cmp290 = icmp sgt i32 %199, %sub289
  br i1 %cmp290, label %if.then292, label %if.else333

if.then292:                                       ; preds = %if.then283
  %201 = load i32, ptr %dist, align 4
  store i32 %201, ptr %val293, align 4
  %202 = load i32, ptr %val293, align 4
  %203 = load ptr, ptr %s.addr, align 8
  %bi_valid294 = getelementptr inbounds %struct.internal_state, ptr %203, i32 0, i32 56
  %204 = load i32, ptr %bi_valid294, align 4
  %shl295 = shl i32 %202, %204
  %205 = load ptr, ptr %s.addr, align 8
  %bi_buf296 = getelementptr inbounds %struct.internal_state, ptr %205, i32 0, i32 55
  %206 = load i16, ptr %bi_buf296, align 8
  %conv297 = zext i16 %206 to i32
  %or298 = or i32 %conv297, %shl295
  %conv299 = trunc i32 %or298 to i16
  store i16 %conv299, ptr %bi_buf296, align 8
  %207 = load ptr, ptr %s.addr, align 8
  %bi_buf300 = getelementptr inbounds %struct.internal_state, ptr %207, i32 0, i32 55
  %208 = load i16, ptr %bi_buf300, align 8
  %conv301 = zext i16 %208 to i32
  %and302 = and i32 %conv301, 255
  %conv303 = trunc i32 %and302 to i8
  %209 = load ptr, ptr %s.addr, align 8
  %pending_buf304 = getelementptr inbounds %struct.internal_state, ptr %209, i32 0, i32 2
  %210 = load ptr, ptr %pending_buf304, align 8
  %211 = load ptr, ptr %s.addr, align 8
  %pending305 = getelementptr inbounds %struct.internal_state, ptr %211, i32 0, i32 5
  %212 = load i32, ptr %pending305, align 8
  %inc306 = add nsw i32 %212, 1
  store i32 %inc306, ptr %pending305, align 8
  %idxprom307 = sext i32 %212 to i64
  %arrayidx308 = getelementptr inbounds i8, ptr %210, i64 %idxprom307
  store i8 %conv303, ptr %arrayidx308, align 1
  %213 = load ptr, ptr %s.addr, align 8
  %bi_buf309 = getelementptr inbounds %struct.internal_state, ptr %213, i32 0, i32 55
  %214 = load i16, ptr %bi_buf309, align 8
  %conv310 = zext i16 %214 to i32
  %shr311 = ashr i32 %conv310, 8
  %conv312 = trunc i32 %shr311 to i8
  %215 = load ptr, ptr %s.addr, align 8
  %pending_buf313 = getelementptr inbounds %struct.internal_state, ptr %215, i32 0, i32 2
  %216 = load ptr, ptr %pending_buf313, align 8
  %217 = load ptr, ptr %s.addr, align 8
  %pending314 = getelementptr inbounds %struct.internal_state, ptr %217, i32 0, i32 5
  %218 = load i32, ptr %pending314, align 8
  %inc315 = add nsw i32 %218, 1
  store i32 %inc315, ptr %pending314, align 8
  %idxprom316 = sext i32 %218 to i64
  %arrayidx317 = getelementptr inbounds i8, ptr %216, i64 %idxprom316
  store i8 %conv312, ptr %arrayidx317, align 1
  %219 = load i32, ptr %val293, align 4
  %conv318 = trunc i32 %219 to i16
  %conv319 = zext i16 %conv318 to i32
  %220 = load ptr, ptr %s.addr, align 8
  %bi_valid320 = getelementptr inbounds %struct.internal_state, ptr %220, i32 0, i32 56
  %221 = load i32, ptr %bi_valid320, align 4
  %conv321 = sext i32 %221 to i64
  %sub322 = sub i64 16, %conv321
  %sh_prom323 = trunc i64 %sub322 to i32
  %shr324 = ashr i32 %conv319, %sh_prom323
  %conv325 = trunc i32 %shr324 to i16
  %222 = load ptr, ptr %s.addr, align 8
  %bi_buf326 = getelementptr inbounds %struct.internal_state, ptr %222, i32 0, i32 55
  store i16 %conv325, ptr %bi_buf326, align 8
  %223 = load i32, ptr %len287, align 4
  %conv327 = sext i32 %223 to i64
  %sub328 = sub i64 %conv327, 16
  %224 = load ptr, ptr %s.addr, align 8
  %bi_valid329 = getelementptr inbounds %struct.internal_state, ptr %224, i32 0, i32 56
  %225 = load i32, ptr %bi_valid329, align 4
  %conv330 = sext i32 %225 to i64
  %add331 = add i64 %conv330, %sub328
  %conv332 = trunc i64 %add331 to i32
  store i32 %conv332, ptr %bi_valid329, align 4
  br label %if.end342

if.else333:                                       ; preds = %if.then283
  %226 = load i32, ptr %dist, align 4
  %227 = load ptr, ptr %s.addr, align 8
  %bi_valid334 = getelementptr inbounds %struct.internal_state, ptr %227, i32 0, i32 56
  %228 = load i32, ptr %bi_valid334, align 4
  %shl335 = shl i32 %226, %228
  %229 = load ptr, ptr %s.addr, align 8
  %bi_buf336 = getelementptr inbounds %struct.internal_state, ptr %229, i32 0, i32 55
  %230 = load i16, ptr %bi_buf336, align 8
  %conv337 = zext i16 %230 to i32
  %or338 = or i32 %conv337, %shl335
  %conv339 = trunc i32 %or338 to i16
  store i16 %conv339, ptr %bi_buf336, align 8
  %231 = load i32, ptr %len287, align 4
  %232 = load ptr, ptr %s.addr, align 8
  %bi_valid340 = getelementptr inbounds %struct.internal_state, ptr %232, i32 0, i32 56
  %233 = load i32, ptr %bi_valid340, align 4
  %add341 = add nsw i32 %233, %231
  store i32 %add341, ptr %bi_valid340, align 4
  br label %if.end342

if.end342:                                        ; preds = %if.else333, %if.then292
  br label %if.end343

if.end343:                                        ; preds = %if.end342, %if.end278
  br label %if.end344

if.end344:                                        ; preds = %if.end343, %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end344
  %234 = load i32, ptr %lx, align 4
  %235 = load ptr, ptr %s.addr, align 8
  %last_lit345 = getelementptr inbounds %struct.internal_state, ptr %235, i32 0, i32 49
  %236 = load i32, ptr %last_lit345, align 4
  %cmp346 = icmp ult i32 %234, %236
  br i1 %cmp346, label %do.body, label %do.end, !llvm.loop !19

do.end:                                           ; preds = %do.cond
  br label %if.end348

if.end348:                                        ; preds = %do.end, %entry
  %237 = load ptr, ptr %ltree.addr, align 8
  %arrayidx350 = getelementptr inbounds %struct.ct_data_s, ptr %237, i64 256
  %dl351 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx350, i32 0, i32 1
  %238 = load i16, ptr %dl351, align 2
  %conv352 = zext i16 %238 to i32
  store i32 %conv352, ptr %len349, align 4
  %239 = load ptr, ptr %s.addr, align 8
  %bi_valid353 = getelementptr inbounds %struct.internal_state, ptr %239, i32 0, i32 56
  %240 = load i32, ptr %bi_valid353, align 4
  %241 = load i32, ptr %len349, align 4
  %sub354 = sub nsw i32 16, %241
  %cmp355 = icmp sgt i32 %240, %sub354
  br i1 %cmp355, label %if.then357, label %if.else401

if.then357:                                       ; preds = %if.end348
  %242 = load ptr, ptr %ltree.addr, align 8
  %arrayidx359 = getelementptr inbounds %struct.ct_data_s, ptr %242, i64 256
  %fc360 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx359, i32 0, i32 0
  %243 = load i16, ptr %fc360, align 2
  %conv361 = zext i16 %243 to i32
  store i32 %conv361, ptr %val358, align 4
  %244 = load i32, ptr %val358, align 4
  %245 = load ptr, ptr %s.addr, align 8
  %bi_valid362 = getelementptr inbounds %struct.internal_state, ptr %245, i32 0, i32 56
  %246 = load i32, ptr %bi_valid362, align 4
  %shl363 = shl i32 %244, %246
  %247 = load ptr, ptr %s.addr, align 8
  %bi_buf364 = getelementptr inbounds %struct.internal_state, ptr %247, i32 0, i32 55
  %248 = load i16, ptr %bi_buf364, align 8
  %conv365 = zext i16 %248 to i32
  %or366 = or i32 %conv365, %shl363
  %conv367 = trunc i32 %or366 to i16
  store i16 %conv367, ptr %bi_buf364, align 8
  %249 = load ptr, ptr %s.addr, align 8
  %bi_buf368 = getelementptr inbounds %struct.internal_state, ptr %249, i32 0, i32 55
  %250 = load i16, ptr %bi_buf368, align 8
  %conv369 = zext i16 %250 to i32
  %and370 = and i32 %conv369, 255
  %conv371 = trunc i32 %and370 to i8
  %251 = load ptr, ptr %s.addr, align 8
  %pending_buf372 = getelementptr inbounds %struct.internal_state, ptr %251, i32 0, i32 2
  %252 = load ptr, ptr %pending_buf372, align 8
  %253 = load ptr, ptr %s.addr, align 8
  %pending373 = getelementptr inbounds %struct.internal_state, ptr %253, i32 0, i32 5
  %254 = load i32, ptr %pending373, align 8
  %inc374 = add nsw i32 %254, 1
  store i32 %inc374, ptr %pending373, align 8
  %idxprom375 = sext i32 %254 to i64
  %arrayidx376 = getelementptr inbounds i8, ptr %252, i64 %idxprom375
  store i8 %conv371, ptr %arrayidx376, align 1
  %255 = load ptr, ptr %s.addr, align 8
  %bi_buf377 = getelementptr inbounds %struct.internal_state, ptr %255, i32 0, i32 55
  %256 = load i16, ptr %bi_buf377, align 8
  %conv378 = zext i16 %256 to i32
  %shr379 = ashr i32 %conv378, 8
  %conv380 = trunc i32 %shr379 to i8
  %257 = load ptr, ptr %s.addr, align 8
  %pending_buf381 = getelementptr inbounds %struct.internal_state, ptr %257, i32 0, i32 2
  %258 = load ptr, ptr %pending_buf381, align 8
  %259 = load ptr, ptr %s.addr, align 8
  %pending382 = getelementptr inbounds %struct.internal_state, ptr %259, i32 0, i32 5
  %260 = load i32, ptr %pending382, align 8
  %inc383 = add nsw i32 %260, 1
  store i32 %inc383, ptr %pending382, align 8
  %idxprom384 = sext i32 %260 to i64
  %arrayidx385 = getelementptr inbounds i8, ptr %258, i64 %idxprom384
  store i8 %conv380, ptr %arrayidx385, align 1
  %261 = load i32, ptr %val358, align 4
  %conv386 = trunc i32 %261 to i16
  %conv387 = zext i16 %conv386 to i32
  %262 = load ptr, ptr %s.addr, align 8
  %bi_valid388 = getelementptr inbounds %struct.internal_state, ptr %262, i32 0, i32 56
  %263 = load i32, ptr %bi_valid388, align 4
  %conv389 = sext i32 %263 to i64
  %sub390 = sub i64 16, %conv389
  %sh_prom391 = trunc i64 %sub390 to i32
  %shr392 = ashr i32 %conv387, %sh_prom391
  %conv393 = trunc i32 %shr392 to i16
  %264 = load ptr, ptr %s.addr, align 8
  %bi_buf394 = getelementptr inbounds %struct.internal_state, ptr %264, i32 0, i32 55
  store i16 %conv393, ptr %bi_buf394, align 8
  %265 = load i32, ptr %len349, align 4
  %conv395 = sext i32 %265 to i64
  %sub396 = sub i64 %conv395, 16
  %266 = load ptr, ptr %s.addr, align 8
  %bi_valid397 = getelementptr inbounds %struct.internal_state, ptr %266, i32 0, i32 56
  %267 = load i32, ptr %bi_valid397, align 4
  %conv398 = sext i32 %267 to i64
  %add399 = add i64 %conv398, %sub396
  %conv400 = trunc i64 %add399 to i32
  store i32 %conv400, ptr %bi_valid397, align 4
  br label %if.end413

if.else401:                                       ; preds = %if.end348
  %268 = load ptr, ptr %ltree.addr, align 8
  %arrayidx402 = getelementptr inbounds %struct.ct_data_s, ptr %268, i64 256
  %fc403 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx402, i32 0, i32 0
  %269 = load i16, ptr %fc403, align 2
  %conv404 = zext i16 %269 to i32
  %270 = load ptr, ptr %s.addr, align 8
  %bi_valid405 = getelementptr inbounds %struct.internal_state, ptr %270, i32 0, i32 56
  %271 = load i32, ptr %bi_valid405, align 4
  %shl406 = shl i32 %conv404, %271
  %272 = load ptr, ptr %s.addr, align 8
  %bi_buf407 = getelementptr inbounds %struct.internal_state, ptr %272, i32 0, i32 55
  %273 = load i16, ptr %bi_buf407, align 8
  %conv408 = zext i16 %273 to i32
  %or409 = or i32 %conv408, %shl406
  %conv410 = trunc i32 %or409 to i16
  store i16 %conv410, ptr %bi_buf407, align 8
  %274 = load i32, ptr %len349, align 4
  %275 = load ptr, ptr %s.addr, align 8
  %bi_valid411 = getelementptr inbounds %struct.internal_state, ptr %275, i32 0, i32 56
  %276 = load i32, ptr %bi_valid411, align 4
  %add412 = add nsw i32 %276, %274
  store i32 %add412, ptr %bi_valid411, align 4
  br label %if.end413

if.end413:                                        ; preds = %if.else401, %if.then357
  %277 = load ptr, ptr %ltree.addr, align 8
  %arrayidx414 = getelementptr inbounds %struct.ct_data_s, ptr %277, i64 256
  %dl415 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx414, i32 0, i32 1
  %278 = load i16, ptr %dl415, align 2
  %conv416 = zext i16 %278 to i32
  %279 = load ptr, ptr %s.addr, align 8
  %last_eob_len = getelementptr inbounds %struct.internal_state, ptr %279, i32 0, i32 54
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
  %0 = load ptr, ptr %s.addr, align 8
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %0, i32 0, i32 56
  %1 = load i32, ptr %bi_valid, align 4
  %2 = load i32, ptr %len, align 4
  %sub = sub nsw i32 16, %2
  %cmp = icmp sgt i32 %1, %sub
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %lcodes.addr, align 4
  %sub1 = sub nsw i32 %3, 257
  store i32 %sub1, ptr %val, align 4
  %4 = load i32, ptr %val, align 4
  %5 = load ptr, ptr %s.addr, align 8
  %bi_valid2 = getelementptr inbounds %struct.internal_state, ptr %5, i32 0, i32 56
  %6 = load i32, ptr %bi_valid2, align 4
  %shl = shl i32 %4, %6
  %7 = load ptr, ptr %s.addr, align 8
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %7, i32 0, i32 55
  %8 = load i16, ptr %bi_buf, align 8
  %conv = zext i16 %8 to i32
  %or = or i32 %conv, %shl
  %conv3 = trunc i32 %or to i16
  store i16 %conv3, ptr %bi_buf, align 8
  %9 = load ptr, ptr %s.addr, align 8
  %bi_buf4 = getelementptr inbounds %struct.internal_state, ptr %9, i32 0, i32 55
  %10 = load i16, ptr %bi_buf4, align 8
  %conv5 = zext i16 %10 to i32
  %and = and i32 %conv5, 255
  %conv6 = trunc i32 %and to i8
  %11 = load ptr, ptr %s.addr, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %pending_buf, align 8
  %13 = load ptr, ptr %s.addr, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %13, i32 0, i32 5
  %14 = load i32, ptr %pending, align 8
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %pending, align 8
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %idxprom
  store i8 %conv6, ptr %arrayidx, align 1
  %15 = load ptr, ptr %s.addr, align 8
  %bi_buf7 = getelementptr inbounds %struct.internal_state, ptr %15, i32 0, i32 55
  %16 = load i16, ptr %bi_buf7, align 8
  %conv8 = zext i16 %16 to i32
  %shr = ashr i32 %conv8, 8
  %conv9 = trunc i32 %shr to i8
  %17 = load ptr, ptr %s.addr, align 8
  %pending_buf10 = getelementptr inbounds %struct.internal_state, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %pending_buf10, align 8
  %19 = load ptr, ptr %s.addr, align 8
  %pending11 = getelementptr inbounds %struct.internal_state, ptr %19, i32 0, i32 5
  %20 = load i32, ptr %pending11, align 8
  %inc12 = add nsw i32 %20, 1
  store i32 %inc12, ptr %pending11, align 8
  %idxprom13 = sext i32 %20 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %18, i64 %idxprom13
  store i8 %conv9, ptr %arrayidx14, align 1
  %21 = load i32, ptr %val, align 4
  %conv15 = trunc i32 %21 to i16
  %conv16 = zext i16 %conv15 to i32
  %22 = load ptr, ptr %s.addr, align 8
  %bi_valid17 = getelementptr inbounds %struct.internal_state, ptr %22, i32 0, i32 56
  %23 = load i32, ptr %bi_valid17, align 4
  %conv18 = sext i32 %23 to i64
  %sub19 = sub i64 16, %conv18
  %sh_prom = trunc i64 %sub19 to i32
  %shr20 = ashr i32 %conv16, %sh_prom
  %conv21 = trunc i32 %shr20 to i16
  %24 = load ptr, ptr %s.addr, align 8
  %bi_buf22 = getelementptr inbounds %struct.internal_state, ptr %24, i32 0, i32 55
  store i16 %conv21, ptr %bi_buf22, align 8
  %25 = load i32, ptr %len, align 4
  %conv23 = sext i32 %25 to i64
  %sub24 = sub i64 %conv23, 16
  %26 = load ptr, ptr %s.addr, align 8
  %bi_valid25 = getelementptr inbounds %struct.internal_state, ptr %26, i32 0, i32 56
  %27 = load i32, ptr %bi_valid25, align 4
  %conv26 = sext i32 %27 to i64
  %add = add i64 %conv26, %sub24
  %conv27 = trunc i64 %add to i32
  store i32 %conv27, ptr %bi_valid25, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %28 = load i32, ptr %lcodes.addr, align 4
  %sub28 = sub nsw i32 %28, 257
  %29 = load ptr, ptr %s.addr, align 8
  %bi_valid29 = getelementptr inbounds %struct.internal_state, ptr %29, i32 0, i32 56
  %30 = load i32, ptr %bi_valid29, align 4
  %shl30 = shl i32 %sub28, %30
  %31 = load ptr, ptr %s.addr, align 8
  %bi_buf31 = getelementptr inbounds %struct.internal_state, ptr %31, i32 0, i32 55
  %32 = load i16, ptr %bi_buf31, align 8
  %conv32 = zext i16 %32 to i32
  %or33 = or i32 %conv32, %shl30
  %conv34 = trunc i32 %or33 to i16
  store i16 %conv34, ptr %bi_buf31, align 8
  %33 = load i32, ptr %len, align 4
  %34 = load ptr, ptr %s.addr, align 8
  %bi_valid35 = getelementptr inbounds %struct.internal_state, ptr %34, i32 0, i32 56
  %35 = load i32, ptr %bi_valid35, align 4
  %add36 = add nsw i32 %35, %33
  store i32 %add36, ptr %bi_valid35, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 5, ptr %len37, align 4
  %36 = load ptr, ptr %s.addr, align 8
  %bi_valid38 = getelementptr inbounds %struct.internal_state, ptr %36, i32 0, i32 56
  %37 = load i32, ptr %bi_valid38, align 4
  %38 = load i32, ptr %len37, align 4
  %sub39 = sub nsw i32 16, %38
  %cmp40 = icmp sgt i32 %37, %sub39
  br i1 %cmp40, label %if.then42, label %if.else84

if.then42:                                        ; preds = %if.end
  %39 = load i32, ptr %dcodes.addr, align 4
  %sub44 = sub nsw i32 %39, 1
  store i32 %sub44, ptr %val43, align 4
  %40 = load i32, ptr %val43, align 4
  %41 = load ptr, ptr %s.addr, align 8
  %bi_valid45 = getelementptr inbounds %struct.internal_state, ptr %41, i32 0, i32 56
  %42 = load i32, ptr %bi_valid45, align 4
  %shl46 = shl i32 %40, %42
  %43 = load ptr, ptr %s.addr, align 8
  %bi_buf47 = getelementptr inbounds %struct.internal_state, ptr %43, i32 0, i32 55
  %44 = load i16, ptr %bi_buf47, align 8
  %conv48 = zext i16 %44 to i32
  %or49 = or i32 %conv48, %shl46
  %conv50 = trunc i32 %or49 to i16
  store i16 %conv50, ptr %bi_buf47, align 8
  %45 = load ptr, ptr %s.addr, align 8
  %bi_buf51 = getelementptr inbounds %struct.internal_state, ptr %45, i32 0, i32 55
  %46 = load i16, ptr %bi_buf51, align 8
  %conv52 = zext i16 %46 to i32
  %and53 = and i32 %conv52, 255
  %conv54 = trunc i32 %and53 to i8
  %47 = load ptr, ptr %s.addr, align 8
  %pending_buf55 = getelementptr inbounds %struct.internal_state, ptr %47, i32 0, i32 2
  %48 = load ptr, ptr %pending_buf55, align 8
  %49 = load ptr, ptr %s.addr, align 8
  %pending56 = getelementptr inbounds %struct.internal_state, ptr %49, i32 0, i32 5
  %50 = load i32, ptr %pending56, align 8
  %inc57 = add nsw i32 %50, 1
  store i32 %inc57, ptr %pending56, align 8
  %idxprom58 = sext i32 %50 to i64
  %arrayidx59 = getelementptr inbounds i8, ptr %48, i64 %idxprom58
  store i8 %conv54, ptr %arrayidx59, align 1
  %51 = load ptr, ptr %s.addr, align 8
  %bi_buf60 = getelementptr inbounds %struct.internal_state, ptr %51, i32 0, i32 55
  %52 = load i16, ptr %bi_buf60, align 8
  %conv61 = zext i16 %52 to i32
  %shr62 = ashr i32 %conv61, 8
  %conv63 = trunc i32 %shr62 to i8
  %53 = load ptr, ptr %s.addr, align 8
  %pending_buf64 = getelementptr inbounds %struct.internal_state, ptr %53, i32 0, i32 2
  %54 = load ptr, ptr %pending_buf64, align 8
  %55 = load ptr, ptr %s.addr, align 8
  %pending65 = getelementptr inbounds %struct.internal_state, ptr %55, i32 0, i32 5
  %56 = load i32, ptr %pending65, align 8
  %inc66 = add nsw i32 %56, 1
  store i32 %inc66, ptr %pending65, align 8
  %idxprom67 = sext i32 %56 to i64
  %arrayidx68 = getelementptr inbounds i8, ptr %54, i64 %idxprom67
  store i8 %conv63, ptr %arrayidx68, align 1
  %57 = load i32, ptr %val43, align 4
  %conv69 = trunc i32 %57 to i16
  %conv70 = zext i16 %conv69 to i32
  %58 = load ptr, ptr %s.addr, align 8
  %bi_valid71 = getelementptr inbounds %struct.internal_state, ptr %58, i32 0, i32 56
  %59 = load i32, ptr %bi_valid71, align 4
  %conv72 = sext i32 %59 to i64
  %sub73 = sub i64 16, %conv72
  %sh_prom74 = trunc i64 %sub73 to i32
  %shr75 = ashr i32 %conv70, %sh_prom74
  %conv76 = trunc i32 %shr75 to i16
  %60 = load ptr, ptr %s.addr, align 8
  %bi_buf77 = getelementptr inbounds %struct.internal_state, ptr %60, i32 0, i32 55
  store i16 %conv76, ptr %bi_buf77, align 8
  %61 = load i32, ptr %len37, align 4
  %conv78 = sext i32 %61 to i64
  %sub79 = sub i64 %conv78, 16
  %62 = load ptr, ptr %s.addr, align 8
  %bi_valid80 = getelementptr inbounds %struct.internal_state, ptr %62, i32 0, i32 56
  %63 = load i32, ptr %bi_valid80, align 4
  %conv81 = sext i32 %63 to i64
  %add82 = add i64 %conv81, %sub79
  %conv83 = trunc i64 %add82 to i32
  store i32 %conv83, ptr %bi_valid80, align 4
  br label %if.end94

if.else84:                                        ; preds = %if.end
  %64 = load i32, ptr %dcodes.addr, align 4
  %sub85 = sub nsw i32 %64, 1
  %65 = load ptr, ptr %s.addr, align 8
  %bi_valid86 = getelementptr inbounds %struct.internal_state, ptr %65, i32 0, i32 56
  %66 = load i32, ptr %bi_valid86, align 4
  %shl87 = shl i32 %sub85, %66
  %67 = load ptr, ptr %s.addr, align 8
  %bi_buf88 = getelementptr inbounds %struct.internal_state, ptr %67, i32 0, i32 55
  %68 = load i16, ptr %bi_buf88, align 8
  %conv89 = zext i16 %68 to i32
  %or90 = or i32 %conv89, %shl87
  %conv91 = trunc i32 %or90 to i16
  store i16 %conv91, ptr %bi_buf88, align 8
  %69 = load i32, ptr %len37, align 4
  %70 = load ptr, ptr %s.addr, align 8
  %bi_valid92 = getelementptr inbounds %struct.internal_state, ptr %70, i32 0, i32 56
  %71 = load i32, ptr %bi_valid92, align 4
  %add93 = add nsw i32 %71, %69
  store i32 %add93, ptr %bi_valid92, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.else84, %if.then42
  store i32 4, ptr %len95, align 4
  %72 = load ptr, ptr %s.addr, align 8
  %bi_valid96 = getelementptr inbounds %struct.internal_state, ptr %72, i32 0, i32 56
  %73 = load i32, ptr %bi_valid96, align 4
  %74 = load i32, ptr %len95, align 4
  %sub97 = sub nsw i32 16, %74
  %cmp98 = icmp sgt i32 %73, %sub97
  br i1 %cmp98, label %if.then100, label %if.else142

if.then100:                                       ; preds = %if.end94
  %75 = load i32, ptr %blcodes.addr, align 4
  %sub102 = sub nsw i32 %75, 4
  store i32 %sub102, ptr %val101, align 4
  %76 = load i32, ptr %val101, align 4
  %77 = load ptr, ptr %s.addr, align 8
  %bi_valid103 = getelementptr inbounds %struct.internal_state, ptr %77, i32 0, i32 56
  %78 = load i32, ptr %bi_valid103, align 4
  %shl104 = shl i32 %76, %78
  %79 = load ptr, ptr %s.addr, align 8
  %bi_buf105 = getelementptr inbounds %struct.internal_state, ptr %79, i32 0, i32 55
  %80 = load i16, ptr %bi_buf105, align 8
  %conv106 = zext i16 %80 to i32
  %or107 = or i32 %conv106, %shl104
  %conv108 = trunc i32 %or107 to i16
  store i16 %conv108, ptr %bi_buf105, align 8
  %81 = load ptr, ptr %s.addr, align 8
  %bi_buf109 = getelementptr inbounds %struct.internal_state, ptr %81, i32 0, i32 55
  %82 = load i16, ptr %bi_buf109, align 8
  %conv110 = zext i16 %82 to i32
  %and111 = and i32 %conv110, 255
  %conv112 = trunc i32 %and111 to i8
  %83 = load ptr, ptr %s.addr, align 8
  %pending_buf113 = getelementptr inbounds %struct.internal_state, ptr %83, i32 0, i32 2
  %84 = load ptr, ptr %pending_buf113, align 8
  %85 = load ptr, ptr %s.addr, align 8
  %pending114 = getelementptr inbounds %struct.internal_state, ptr %85, i32 0, i32 5
  %86 = load i32, ptr %pending114, align 8
  %inc115 = add nsw i32 %86, 1
  store i32 %inc115, ptr %pending114, align 8
  %idxprom116 = sext i32 %86 to i64
  %arrayidx117 = getelementptr inbounds i8, ptr %84, i64 %idxprom116
  store i8 %conv112, ptr %arrayidx117, align 1
  %87 = load ptr, ptr %s.addr, align 8
  %bi_buf118 = getelementptr inbounds %struct.internal_state, ptr %87, i32 0, i32 55
  %88 = load i16, ptr %bi_buf118, align 8
  %conv119 = zext i16 %88 to i32
  %shr120 = ashr i32 %conv119, 8
  %conv121 = trunc i32 %shr120 to i8
  %89 = load ptr, ptr %s.addr, align 8
  %pending_buf122 = getelementptr inbounds %struct.internal_state, ptr %89, i32 0, i32 2
  %90 = load ptr, ptr %pending_buf122, align 8
  %91 = load ptr, ptr %s.addr, align 8
  %pending123 = getelementptr inbounds %struct.internal_state, ptr %91, i32 0, i32 5
  %92 = load i32, ptr %pending123, align 8
  %inc124 = add nsw i32 %92, 1
  store i32 %inc124, ptr %pending123, align 8
  %idxprom125 = sext i32 %92 to i64
  %arrayidx126 = getelementptr inbounds i8, ptr %90, i64 %idxprom125
  store i8 %conv121, ptr %arrayidx126, align 1
  %93 = load i32, ptr %val101, align 4
  %conv127 = trunc i32 %93 to i16
  %conv128 = zext i16 %conv127 to i32
  %94 = load ptr, ptr %s.addr, align 8
  %bi_valid129 = getelementptr inbounds %struct.internal_state, ptr %94, i32 0, i32 56
  %95 = load i32, ptr %bi_valid129, align 4
  %conv130 = sext i32 %95 to i64
  %sub131 = sub i64 16, %conv130
  %sh_prom132 = trunc i64 %sub131 to i32
  %shr133 = ashr i32 %conv128, %sh_prom132
  %conv134 = trunc i32 %shr133 to i16
  %96 = load ptr, ptr %s.addr, align 8
  %bi_buf135 = getelementptr inbounds %struct.internal_state, ptr %96, i32 0, i32 55
  store i16 %conv134, ptr %bi_buf135, align 8
  %97 = load i32, ptr %len95, align 4
  %conv136 = sext i32 %97 to i64
  %sub137 = sub i64 %conv136, 16
  %98 = load ptr, ptr %s.addr, align 8
  %bi_valid138 = getelementptr inbounds %struct.internal_state, ptr %98, i32 0, i32 56
  %99 = load i32, ptr %bi_valid138, align 4
  %conv139 = sext i32 %99 to i64
  %add140 = add i64 %conv139, %sub137
  %conv141 = trunc i64 %add140 to i32
  store i32 %conv141, ptr %bi_valid138, align 4
  br label %if.end152

if.else142:                                       ; preds = %if.end94
  %100 = load i32, ptr %blcodes.addr, align 4
  %sub143 = sub nsw i32 %100, 4
  %101 = load ptr, ptr %s.addr, align 8
  %bi_valid144 = getelementptr inbounds %struct.internal_state, ptr %101, i32 0, i32 56
  %102 = load i32, ptr %bi_valid144, align 4
  %shl145 = shl i32 %sub143, %102
  %103 = load ptr, ptr %s.addr, align 8
  %bi_buf146 = getelementptr inbounds %struct.internal_state, ptr %103, i32 0, i32 55
  %104 = load i16, ptr %bi_buf146, align 8
  %conv147 = zext i16 %104 to i32
  %or148 = or i32 %conv147, %shl145
  %conv149 = trunc i32 %or148 to i16
  store i16 %conv149, ptr %bi_buf146, align 8
  %105 = load i32, ptr %len95, align 4
  %106 = load ptr, ptr %s.addr, align 8
  %bi_valid150 = getelementptr inbounds %struct.internal_state, ptr %106, i32 0, i32 56
  %107 = load i32, ptr %bi_valid150, align 4
  %add151 = add nsw i32 %107, %105
  store i32 %add151, ptr %bi_valid150, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.else142, %if.then100
  store i32 0, ptr %rank, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end152
  %108 = load i32, ptr %rank, align 4
  %109 = load i32, ptr %blcodes.addr, align 4
  %cmp153 = icmp slt i32 %108, %109
  br i1 %cmp153, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 3, ptr %len155, align 4
  %110 = load ptr, ptr %s.addr, align 8
  %bi_valid156 = getelementptr inbounds %struct.internal_state, ptr %110, i32 0, i32 56
  %111 = load i32, ptr %bi_valid156, align 4
  %112 = load i32, ptr %len155, align 4
  %sub157 = sub nsw i32 16, %112
  %cmp158 = icmp sgt i32 %111, %sub157
  br i1 %cmp158, label %if.then160, label %if.else206

if.then160:                                       ; preds = %for.body
  %113 = load ptr, ptr %s.addr, align 8
  %bl_tree = getelementptr inbounds %struct.internal_state, ptr %113, i32 0, i32 38
  %114 = load i32, ptr %rank, align 4
  %idxprom162 = sext i32 %114 to i64
  %arrayidx163 = getelementptr inbounds [19 x i8], ptr @bl_order, i64 0, i64 %idxprom162
  %115 = load i8, ptr %arrayidx163, align 1
  %idxprom164 = zext i8 %115 to i64
  %arrayidx165 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree, i64 0, i64 %idxprom164
  %dl = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx165, i32 0, i32 1
  %116 = load i16, ptr %dl, align 2
  %conv166 = zext i16 %116 to i32
  store i32 %conv166, ptr %val161, align 4
  %117 = load i32, ptr %val161, align 4
  %118 = load ptr, ptr %s.addr, align 8
  %bi_valid167 = getelementptr inbounds %struct.internal_state, ptr %118, i32 0, i32 56
  %119 = load i32, ptr %bi_valid167, align 4
  %shl168 = shl i32 %117, %119
  %120 = load ptr, ptr %s.addr, align 8
  %bi_buf169 = getelementptr inbounds %struct.internal_state, ptr %120, i32 0, i32 55
  %121 = load i16, ptr %bi_buf169, align 8
  %conv170 = zext i16 %121 to i32
  %or171 = or i32 %conv170, %shl168
  %conv172 = trunc i32 %or171 to i16
  store i16 %conv172, ptr %bi_buf169, align 8
  %122 = load ptr, ptr %s.addr, align 8
  %bi_buf173 = getelementptr inbounds %struct.internal_state, ptr %122, i32 0, i32 55
  %123 = load i16, ptr %bi_buf173, align 8
  %conv174 = zext i16 %123 to i32
  %and175 = and i32 %conv174, 255
  %conv176 = trunc i32 %and175 to i8
  %124 = load ptr, ptr %s.addr, align 8
  %pending_buf177 = getelementptr inbounds %struct.internal_state, ptr %124, i32 0, i32 2
  %125 = load ptr, ptr %pending_buf177, align 8
  %126 = load ptr, ptr %s.addr, align 8
  %pending178 = getelementptr inbounds %struct.internal_state, ptr %126, i32 0, i32 5
  %127 = load i32, ptr %pending178, align 8
  %inc179 = add nsw i32 %127, 1
  store i32 %inc179, ptr %pending178, align 8
  %idxprom180 = sext i32 %127 to i64
  %arrayidx181 = getelementptr inbounds i8, ptr %125, i64 %idxprom180
  store i8 %conv176, ptr %arrayidx181, align 1
  %128 = load ptr, ptr %s.addr, align 8
  %bi_buf182 = getelementptr inbounds %struct.internal_state, ptr %128, i32 0, i32 55
  %129 = load i16, ptr %bi_buf182, align 8
  %conv183 = zext i16 %129 to i32
  %shr184 = ashr i32 %conv183, 8
  %conv185 = trunc i32 %shr184 to i8
  %130 = load ptr, ptr %s.addr, align 8
  %pending_buf186 = getelementptr inbounds %struct.internal_state, ptr %130, i32 0, i32 2
  %131 = load ptr, ptr %pending_buf186, align 8
  %132 = load ptr, ptr %s.addr, align 8
  %pending187 = getelementptr inbounds %struct.internal_state, ptr %132, i32 0, i32 5
  %133 = load i32, ptr %pending187, align 8
  %inc188 = add nsw i32 %133, 1
  store i32 %inc188, ptr %pending187, align 8
  %idxprom189 = sext i32 %133 to i64
  %arrayidx190 = getelementptr inbounds i8, ptr %131, i64 %idxprom189
  store i8 %conv185, ptr %arrayidx190, align 1
  %134 = load i32, ptr %val161, align 4
  %conv191 = trunc i32 %134 to i16
  %conv192 = zext i16 %conv191 to i32
  %135 = load ptr, ptr %s.addr, align 8
  %bi_valid193 = getelementptr inbounds %struct.internal_state, ptr %135, i32 0, i32 56
  %136 = load i32, ptr %bi_valid193, align 4
  %conv194 = sext i32 %136 to i64
  %sub195 = sub i64 16, %conv194
  %sh_prom196 = trunc i64 %sub195 to i32
  %shr197 = ashr i32 %conv192, %sh_prom196
  %conv198 = trunc i32 %shr197 to i16
  %137 = load ptr, ptr %s.addr, align 8
  %bi_buf199 = getelementptr inbounds %struct.internal_state, ptr %137, i32 0, i32 55
  store i16 %conv198, ptr %bi_buf199, align 8
  %138 = load i32, ptr %len155, align 4
  %conv200 = sext i32 %138 to i64
  %sub201 = sub i64 %conv200, 16
  %139 = load ptr, ptr %s.addr, align 8
  %bi_valid202 = getelementptr inbounds %struct.internal_state, ptr %139, i32 0, i32 56
  %140 = load i32, ptr %bi_valid202, align 4
  %conv203 = sext i32 %140 to i64
  %add204 = add i64 %conv203, %sub201
  %conv205 = trunc i64 %add204 to i32
  store i32 %conv205, ptr %bi_valid202, align 4
  br label %if.end222

if.else206:                                       ; preds = %for.body
  %141 = load ptr, ptr %s.addr, align 8
  %bl_tree207 = getelementptr inbounds %struct.internal_state, ptr %141, i32 0, i32 38
  %142 = load i32, ptr %rank, align 4
  %idxprom208 = sext i32 %142 to i64
  %arrayidx209 = getelementptr inbounds [19 x i8], ptr @bl_order, i64 0, i64 %idxprom208
  %143 = load i8, ptr %arrayidx209, align 1
  %idxprom210 = zext i8 %143 to i64
  %arrayidx211 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree207, i64 0, i64 %idxprom210
  %dl212 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx211, i32 0, i32 1
  %144 = load i16, ptr %dl212, align 2
  %conv213 = zext i16 %144 to i32
  %145 = load ptr, ptr %s.addr, align 8
  %bi_valid214 = getelementptr inbounds %struct.internal_state, ptr %145, i32 0, i32 56
  %146 = load i32, ptr %bi_valid214, align 4
  %shl215 = shl i32 %conv213, %146
  %147 = load ptr, ptr %s.addr, align 8
  %bi_buf216 = getelementptr inbounds %struct.internal_state, ptr %147, i32 0, i32 55
  %148 = load i16, ptr %bi_buf216, align 8
  %conv217 = zext i16 %148 to i32
  %or218 = or i32 %conv217, %shl215
  %conv219 = trunc i32 %or218 to i16
  store i16 %conv219, ptr %bi_buf216, align 8
  %149 = load i32, ptr %len155, align 4
  %150 = load ptr, ptr %s.addr, align 8
  %bi_valid220 = getelementptr inbounds %struct.internal_state, ptr %150, i32 0, i32 56
  %151 = load i32, ptr %bi_valid220, align 4
  %add221 = add nsw i32 %151, %149
  store i32 %add221, ptr %bi_valid220, align 4
  br label %if.end222

if.end222:                                        ; preds = %if.else206, %if.then160
  br label %for.inc

for.inc:                                          ; preds = %if.end222
  %152 = load i32, ptr %rank, align 4
  %inc223 = add nsw i32 %152, 1
  store i32 %inc223, ptr %rank, align 4
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  %153 = load ptr, ptr %s.addr, align 8
  %154 = load ptr, ptr %s.addr, align 8
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %154, i32 0, i32 36
  %arraydecay = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree, i64 0, i64 0
  %155 = load i32, ptr %lcodes.addr, align 4
  %sub224 = sub nsw i32 %155, 1
  call void @send_tree(ptr noundef %153, ptr noundef %arraydecay, i32 noundef %sub224)
  %156 = load ptr, ptr %s.addr, align 8
  %157 = load ptr, ptr %s.addr, align 8
  %dyn_dtree = getelementptr inbounds %struct.internal_state, ptr %157, i32 0, i32 37
  %arraydecay225 = getelementptr inbounds [61 x %struct.ct_data_s], ptr %dyn_dtree, i64 0, i64 0
  %158 = load i32, ptr %dcodes.addr, align 4
  %sub226 = sub nsw i32 %158, 1
  call void @send_tree(ptr noundef %156, ptr noundef %arraydecay225, i32 noundef %sub226)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @bi_windup(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %0, i32 0, i32 56
  %1 = load i32, ptr %bi_valid, align 4
  %cmp = icmp sgt i32 %1, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %2, i32 0, i32 55
  %3 = load i16, ptr %bi_buf, align 8
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  %4 = load ptr, ptr %s.addr, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %pending_buf, align 8
  %6 = load ptr, ptr %s.addr, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 5
  %7 = load i32, ptr %pending, align 8
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %pending, align 8
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %idxprom
  store i8 %conv1, ptr %arrayidx, align 1
  %8 = load ptr, ptr %s.addr, align 8
  %bi_buf2 = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 55
  %9 = load i16, ptr %bi_buf2, align 8
  %conv3 = zext i16 %9 to i32
  %shr = ashr i32 %conv3, 8
  %conv4 = trunc i32 %shr to i8
  %10 = load ptr, ptr %s.addr, align 8
  %pending_buf5 = getelementptr inbounds %struct.internal_state, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %pending_buf5, align 8
  %12 = load ptr, ptr %s.addr, align 8
  %pending6 = getelementptr inbounds %struct.internal_state, ptr %12, i32 0, i32 5
  %13 = load i32, ptr %pending6, align 8
  %inc7 = add nsw i32 %13, 1
  store i32 %inc7, ptr %pending6, align 8
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %11, i64 %idxprom8
  store i8 %conv4, ptr %arrayidx9, align 1
  br label %if.end21

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %s.addr, align 8
  %bi_valid10 = getelementptr inbounds %struct.internal_state, ptr %14, i32 0, i32 56
  %15 = load i32, ptr %bi_valid10, align 4
  %cmp11 = icmp sgt i32 %15, 0
  br i1 %cmp11, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.else
  %16 = load ptr, ptr %s.addr, align 8
  %bi_buf14 = getelementptr inbounds %struct.internal_state, ptr %16, i32 0, i32 55
  %17 = load i16, ptr %bi_buf14, align 8
  %conv15 = trunc i16 %17 to i8
  %18 = load ptr, ptr %s.addr, align 8
  %pending_buf16 = getelementptr inbounds %struct.internal_state, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %pending_buf16, align 8
  %20 = load ptr, ptr %s.addr, align 8
  %pending17 = getelementptr inbounds %struct.internal_state, ptr %20, i32 0, i32 5
  %21 = load i32, ptr %pending17, align 8
  %inc18 = add nsw i32 %21, 1
  store i32 %inc18, ptr %pending17, align 8
  %idxprom19 = sext i32 %21 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %19, i64 %idxprom19
  store i8 %conv15, ptr %arrayidx20, align 1
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.else
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %22 = load ptr, ptr %s.addr, align 8
  %bi_buf22 = getelementptr inbounds %struct.internal_state, ptr %22, i32 0, i32 55
  store i16 0, ptr %bi_buf22, align 8
  %23 = load ptr, ptr %s.addr, align 8
  %bi_valid23 = getelementptr inbounds %struct.internal_state, ptr %23, i32 0, i32 56
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
  %0 = load i32, ptr %dist.addr, align 4
  %conv = trunc i32 %0 to i16
  %1 = load ptr, ptr %s.addr, align 8
  %d_buf = getelementptr inbounds %struct.internal_state, ptr %1, i32 0, i32 50
  %2 = load ptr, ptr %d_buf, align 8
  %3 = load ptr, ptr %s.addr, align 8
  %last_lit = getelementptr inbounds %struct.internal_state, ptr %3, i32 0, i32 49
  %4 = load i32, ptr %last_lit, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds i16, ptr %2, i64 %idxprom
  store i16 %conv, ptr %arrayidx, align 2
  %5 = load i32, ptr %lc.addr, align 4
  %conv1 = trunc i32 %5 to i8
  %6 = load ptr, ptr %s.addr, align 8
  %l_buf = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 47
  %7 = load ptr, ptr %l_buf, align 8
  %8 = load ptr, ptr %s.addr, align 8
  %last_lit2 = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 49
  %9 = load i32, ptr %last_lit2, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %last_lit2, align 4
  %idxprom3 = zext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %7, i64 %idxprom3
  store i8 %conv1, ptr %arrayidx4, align 1
  %10 = load i32, ptr %dist.addr, align 4
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %s.addr, align 8
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %11, i32 0, i32 36
  %12 = load i32, ptr %lc.addr, align 4
  %idxprom6 = zext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree, i64 0, i64 %idxprom6
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx7, i32 0, i32 0
  %13 = load i16, ptr %fc, align 4
  %inc8 = add i16 %13, 1
  store i16 %inc8, ptr %fc, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %s.addr, align 8
  %matches = getelementptr inbounds %struct.internal_state, ptr %14, i32 0, i32 53
  %15 = load i32, ptr %matches, align 8
  %inc9 = add i32 %15, 1
  store i32 %inc9, ptr %matches, align 8
  %16 = load i32, ptr %dist.addr, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %dist.addr, align 4
  %17 = load ptr, ptr %s.addr, align 8
  %dyn_ltree10 = getelementptr inbounds %struct.internal_state, ptr %17, i32 0, i32 36
  %18 = load i32, ptr %lc.addr, align 4
  %idxprom11 = zext i32 %18 to i64
  %arrayidx12 = getelementptr inbounds [256 x i8], ptr @_length_code, i64 0, i64 %idxprom11
  %19 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %19 to i32
  %add = add nsw i32 %conv13, 256
  %add14 = add nsw i32 %add, 1
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree10, i64 0, i64 %idxprom15
  %fc17 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx16, i32 0, i32 0
  %20 = load i16, ptr %fc17, align 4
  %inc18 = add i16 %20, 1
  store i16 %inc18, ptr %fc17, align 4
  %21 = load ptr, ptr %s.addr, align 8
  %dyn_dtree = getelementptr inbounds %struct.internal_state, ptr %21, i32 0, i32 37
  %22 = load i32, ptr %dist.addr, align 4
  %cmp19 = icmp ult i32 %22, 256
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %23 = load i32, ptr %dist.addr, align 4
  %idxprom21 = zext i32 %23 to i64
  %arrayidx22 = getelementptr inbounds [512 x i8], ptr @_dist_code, i64 0, i64 %idxprom21
  %24 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %24 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %25 = load i32, ptr %dist.addr, align 4
  %shr = lshr i32 %25, 7
  %add24 = add i32 256, %shr
  %idxprom25 = zext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds [512 x i8], ptr @_dist_code, i64 0, i64 %idxprom25
  %26 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %26 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv23, %cond.true ], [ %conv27, %cond.false ]
  %idxprom28 = sext i32 %cond to i64
  %arrayidx29 = getelementptr inbounds [61 x %struct.ct_data_s], ptr %dyn_dtree, i64 0, i64 %idxprom28
  %fc30 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx29, i32 0, i32 0
  %27 = load i16, ptr %fc30, align 4
  %inc31 = add i16 %27, 1
  store i16 %inc31, ptr %fc30, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %28 = load ptr, ptr %s.addr, align 8
  %last_lit32 = getelementptr inbounds %struct.internal_state, ptr %28, i32 0, i32 49
  %29 = load i32, ptr %last_lit32, align 4
  %30 = load ptr, ptr %s.addr, align 8
  %lit_bufsize = getelementptr inbounds %struct.internal_state, ptr %30, i32 0, i32 48
  %31 = load i32, ptr %lit_bufsize, align 8
  %sub = sub i32 %31, 1
  %cmp33 = icmp eq i32 %29, %sub
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
  %0 = load ptr, ptr %s.addr, align 8
  %heap = getelementptr inbounds %struct.internal_state, ptr %0, i32 0, i32 43
  %1 = load i32, ptr %k.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [573 x i32], ptr %heap, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr %v, align 4
  %3 = load i32, ptr %k.addr, align 4
  %shl = shl i32 %3, 1
  store i32 %shl, ptr %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end93, %entry
  %4 = load i32, ptr %j, align 4
  %5 = load ptr, ptr %s.addr, align 8
  %heap_len = getelementptr inbounds %struct.internal_state, ptr %5, i32 0, i32 44
  %6 = load i32, ptr %heap_len, align 4
  %cmp = icmp sle i32 %4, %6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, ptr %j, align 4
  %8 = load ptr, ptr %s.addr, align 8
  %heap_len1 = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 44
  %9 = load i32, ptr %heap_len1, align 4
  %cmp2 = icmp slt i32 %7, %9
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %10 = load ptr, ptr %tree.addr, align 8
  %11 = load ptr, ptr %s.addr, align 8
  %heap3 = getelementptr inbounds %struct.internal_state, ptr %11, i32 0, i32 43
  %12 = load i32, ptr %j, align 4
  %add = add nsw i32 %12, 1
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [573 x i32], ptr %heap3, i64 0, i64 %idxprom4
  %13 = load i32, ptr %arrayidx5, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds %struct.ct_data_s, ptr %10, i64 %idxprom6
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx7, i32 0, i32 0
  %14 = load i16, ptr %fc, align 2
  %conv = zext i16 %14 to i32
  %15 = load ptr, ptr %tree.addr, align 8
  %16 = load ptr, ptr %s.addr, align 8
  %heap8 = getelementptr inbounds %struct.internal_state, ptr %16, i32 0, i32 43
  %17 = load i32, ptr %j, align 4
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds [573 x i32], ptr %heap8, i64 0, i64 %idxprom9
  %18 = load i32, ptr %arrayidx10, align 4
  %idxprom11 = sext i32 %18 to i64
  %arrayidx12 = getelementptr inbounds %struct.ct_data_s, ptr %15, i64 %idxprom11
  %fc13 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx12, i32 0, i32 0
  %19 = load i16, ptr %fc13, align 2
  %conv14 = zext i16 %19 to i32
  %cmp15 = icmp slt i32 %conv, %conv14
  br i1 %cmp15, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %20 = load ptr, ptr %tree.addr, align 8
  %21 = load ptr, ptr %s.addr, align 8
  %heap17 = getelementptr inbounds %struct.internal_state, ptr %21, i32 0, i32 43
  %22 = load i32, ptr %j, align 4
  %add18 = add nsw i32 %22, 1
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds [573 x i32], ptr %heap17, i64 0, i64 %idxprom19
  %23 = load i32, ptr %arrayidx20, align 4
  %idxprom21 = sext i32 %23 to i64
  %arrayidx22 = getelementptr inbounds %struct.ct_data_s, ptr %20, i64 %idxprom21
  %fc23 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx22, i32 0, i32 0
  %24 = load i16, ptr %fc23, align 2
  %conv24 = zext i16 %24 to i32
  %25 = load ptr, ptr %tree.addr, align 8
  %26 = load ptr, ptr %s.addr, align 8
  %heap25 = getelementptr inbounds %struct.internal_state, ptr %26, i32 0, i32 43
  %27 = load i32, ptr %j, align 4
  %idxprom26 = sext i32 %27 to i64
  %arrayidx27 = getelementptr inbounds [573 x i32], ptr %heap25, i64 0, i64 %idxprom26
  %28 = load i32, ptr %arrayidx27, align 4
  %idxprom28 = sext i32 %28 to i64
  %arrayidx29 = getelementptr inbounds %struct.ct_data_s, ptr %25, i64 %idxprom28
  %fc30 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx29, i32 0, i32 0
  %29 = load i16, ptr %fc30, align 2
  %conv31 = zext i16 %29 to i32
  %cmp32 = icmp eq i32 %conv24, %conv31
  br i1 %cmp32, label %land.lhs.true34, label %if.end

land.lhs.true34:                                  ; preds = %lor.lhs.false
  %30 = load ptr, ptr %s.addr, align 8
  %depth = getelementptr inbounds %struct.internal_state, ptr %30, i32 0, i32 46
  %31 = load ptr, ptr %s.addr, align 8
  %heap35 = getelementptr inbounds %struct.internal_state, ptr %31, i32 0, i32 43
  %32 = load i32, ptr %j, align 4
  %add36 = add nsw i32 %32, 1
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds [573 x i32], ptr %heap35, i64 0, i64 %idxprom37
  %33 = load i32, ptr %arrayidx38, align 4
  %idxprom39 = sext i32 %33 to i64
  %arrayidx40 = getelementptr inbounds [573 x i8], ptr %depth, i64 0, i64 %idxprom39
  %34 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %34 to i32
  %35 = load ptr, ptr %s.addr, align 8
  %depth42 = getelementptr inbounds %struct.internal_state, ptr %35, i32 0, i32 46
  %36 = load ptr, ptr %s.addr, align 8
  %heap43 = getelementptr inbounds %struct.internal_state, ptr %36, i32 0, i32 43
  %37 = load i32, ptr %j, align 4
  %idxprom44 = sext i32 %37 to i64
  %arrayidx45 = getelementptr inbounds [573 x i32], ptr %heap43, i64 0, i64 %idxprom44
  %38 = load i32, ptr %arrayidx45, align 4
  %idxprom46 = sext i32 %38 to i64
  %arrayidx47 = getelementptr inbounds [573 x i8], ptr %depth42, i64 0, i64 %idxprom46
  %39 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %39 to i32
  %cmp49 = icmp sle i32 %conv41, %conv48
  br i1 %cmp49, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true34, %land.lhs.true
  %40 = load i32, ptr %j, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, ptr %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true34, %lor.lhs.false, %while.body
  %41 = load ptr, ptr %tree.addr, align 8
  %42 = load i32, ptr %v, align 4
  %idxprom51 = sext i32 %42 to i64
  %arrayidx52 = getelementptr inbounds %struct.ct_data_s, ptr %41, i64 %idxprom51
  %fc53 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx52, i32 0, i32 0
  %43 = load i16, ptr %fc53, align 2
  %conv54 = zext i16 %43 to i32
  %44 = load ptr, ptr %tree.addr, align 8
  %45 = load ptr, ptr %s.addr, align 8
  %heap55 = getelementptr inbounds %struct.internal_state, ptr %45, i32 0, i32 43
  %46 = load i32, ptr %j, align 4
  %idxprom56 = sext i32 %46 to i64
  %arrayidx57 = getelementptr inbounds [573 x i32], ptr %heap55, i64 0, i64 %idxprom56
  %47 = load i32, ptr %arrayidx57, align 4
  %idxprom58 = sext i32 %47 to i64
  %arrayidx59 = getelementptr inbounds %struct.ct_data_s, ptr %44, i64 %idxprom58
  %fc60 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx59, i32 0, i32 0
  %48 = load i16, ptr %fc60, align 2
  %conv61 = zext i16 %48 to i32
  %cmp62 = icmp slt i32 %conv54, %conv61
  br i1 %cmp62, label %if.then92, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %if.end
  %49 = load ptr, ptr %tree.addr, align 8
  %50 = load i32, ptr %v, align 4
  %idxprom65 = sext i32 %50 to i64
  %arrayidx66 = getelementptr inbounds %struct.ct_data_s, ptr %49, i64 %idxprom65
  %fc67 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx66, i32 0, i32 0
  %51 = load i16, ptr %fc67, align 2
  %conv68 = zext i16 %51 to i32
  %52 = load ptr, ptr %tree.addr, align 8
  %53 = load ptr, ptr %s.addr, align 8
  %heap69 = getelementptr inbounds %struct.internal_state, ptr %53, i32 0, i32 43
  %54 = load i32, ptr %j, align 4
  %idxprom70 = sext i32 %54 to i64
  %arrayidx71 = getelementptr inbounds [573 x i32], ptr %heap69, i64 0, i64 %idxprom70
  %55 = load i32, ptr %arrayidx71, align 4
  %idxprom72 = sext i32 %55 to i64
  %arrayidx73 = getelementptr inbounds %struct.ct_data_s, ptr %52, i64 %idxprom72
  %fc74 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx73, i32 0, i32 0
  %56 = load i16, ptr %fc74, align 2
  %conv75 = zext i16 %56 to i32
  %cmp76 = icmp eq i32 %conv68, %conv75
  br i1 %cmp76, label %land.lhs.true78, label %if.end93

land.lhs.true78:                                  ; preds = %lor.lhs.false64
  %57 = load ptr, ptr %s.addr, align 8
  %depth79 = getelementptr inbounds %struct.internal_state, ptr %57, i32 0, i32 46
  %58 = load i32, ptr %v, align 4
  %idxprom80 = sext i32 %58 to i64
  %arrayidx81 = getelementptr inbounds [573 x i8], ptr %depth79, i64 0, i64 %idxprom80
  %59 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %59 to i32
  %60 = load ptr, ptr %s.addr, align 8
  %depth83 = getelementptr inbounds %struct.internal_state, ptr %60, i32 0, i32 46
  %61 = load ptr, ptr %s.addr, align 8
  %heap84 = getelementptr inbounds %struct.internal_state, ptr %61, i32 0, i32 43
  %62 = load i32, ptr %j, align 4
  %idxprom85 = sext i32 %62 to i64
  %arrayidx86 = getelementptr inbounds [573 x i32], ptr %heap84, i64 0, i64 %idxprom85
  %63 = load i32, ptr %arrayidx86, align 4
  %idxprom87 = sext i32 %63 to i64
  %arrayidx88 = getelementptr inbounds [573 x i8], ptr %depth83, i64 0, i64 %idxprom87
  %64 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %64 to i32
  %cmp90 = icmp sle i32 %conv82, %conv89
  br i1 %cmp90, label %if.then92, label %if.end93

if.then92:                                        ; preds = %land.lhs.true78, %if.end
  br label %while.end

if.end93:                                         ; preds = %land.lhs.true78, %lor.lhs.false64
  %65 = load ptr, ptr %s.addr, align 8
  %heap94 = getelementptr inbounds %struct.internal_state, ptr %65, i32 0, i32 43
  %66 = load i32, ptr %j, align 4
  %idxprom95 = sext i32 %66 to i64
  %arrayidx96 = getelementptr inbounds [573 x i32], ptr %heap94, i64 0, i64 %idxprom95
  %67 = load i32, ptr %arrayidx96, align 4
  %68 = load ptr, ptr %s.addr, align 8
  %heap97 = getelementptr inbounds %struct.internal_state, ptr %68, i32 0, i32 43
  %69 = load i32, ptr %k.addr, align 4
  %idxprom98 = sext i32 %69 to i64
  %arrayidx99 = getelementptr inbounds [573 x i32], ptr %heap97, i64 0, i64 %idxprom98
  store i32 %67, ptr %arrayidx99, align 4
  %70 = load i32, ptr %j, align 4
  store i32 %70, ptr %k.addr, align 4
  %71 = load i32, ptr %j, align 4
  %shl100 = shl i32 %71, 1
  store i32 %shl100, ptr %j, align 4
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %if.then92, %while.cond
  %72 = load i32, ptr %v, align 4
  %73 = load ptr, ptr %s.addr, align 8
  %heap101 = getelementptr inbounds %struct.internal_state, ptr %73, i32 0, i32 43
  %74 = load i32, ptr %k.addr, align 4
  %idxprom102 = sext i32 %74 to i64
  %arrayidx103 = getelementptr inbounds [573 x i32], ptr %heap101, i64 0, i64 %idxprom102
  store i32 %72, ptr %arrayidx103, align 4
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
  %0 = load ptr, ptr %desc.addr, align 8
  %dyn_tree = getelementptr inbounds %struct.tree_desc_s, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %dyn_tree, align 8
  store ptr %1, ptr %tree, align 8
  %2 = load ptr, ptr %desc.addr, align 8
  %max_code1 = getelementptr inbounds %struct.tree_desc_s, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %max_code1, align 8
  store i32 %3, ptr %max_code, align 4
  %4 = load ptr, ptr %desc.addr, align 8
  %stat_desc = getelementptr inbounds %struct.tree_desc_s, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %stat_desc, align 8
  %static_tree = getelementptr inbounds %struct.static_tree_desc_s, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %static_tree, align 8
  store ptr %6, ptr %stree, align 8
  %7 = load ptr, ptr %desc.addr, align 8
  %stat_desc2 = getelementptr inbounds %struct.tree_desc_s, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %stat_desc2, align 8
  %extra_bits = getelementptr inbounds %struct.static_tree_desc_s, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %extra_bits, align 8
  store ptr %9, ptr %extra, align 8
  %10 = load ptr, ptr %desc.addr, align 8
  %stat_desc3 = getelementptr inbounds %struct.tree_desc_s, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %stat_desc3, align 8
  %extra_base = getelementptr inbounds %struct.static_tree_desc_s, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %extra_base, align 8
  store i32 %12, ptr %base, align 4
  %13 = load ptr, ptr %desc.addr, align 8
  %stat_desc4 = getelementptr inbounds %struct.tree_desc_s, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %stat_desc4, align 8
  %max_length5 = getelementptr inbounds %struct.static_tree_desc_s, ptr %14, i32 0, i32 4
  %15 = load i32, ptr %max_length5, align 8
  store i32 %15, ptr %max_length, align 4
  store i32 0, ptr %overflow, align 4
  store i32 0, ptr %bits, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, ptr %bits, align 4
  %cmp = icmp sle i32 %16, 15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %s.addr, align 8
  %bl_count = getelementptr inbounds %struct.internal_state, ptr %17, i32 0, i32 42
  %18 = load i32, ptr %bits, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [16 x i16], ptr %bl_count, i64 0, i64 %idxprom
  store i16 0, ptr %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, ptr %bits, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %bits, align 4
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %tree, align 8
  %21 = load ptr, ptr %s.addr, align 8
  %heap = getelementptr inbounds %struct.internal_state, ptr %21, i32 0, i32 43
  %22 = load ptr, ptr %s.addr, align 8
  %heap_max = getelementptr inbounds %struct.internal_state, ptr %22, i32 0, i32 45
  %23 = load i32, ptr %heap_max, align 8
  %idxprom6 = sext i32 %23 to i64
  %arrayidx7 = getelementptr inbounds [573 x i32], ptr %heap, i64 0, i64 %idxprom6
  %24 = load i32, ptr %arrayidx7, align 4
  %idxprom8 = sext i32 %24 to i64
  %arrayidx9 = getelementptr inbounds %struct.ct_data_s, ptr %20, i64 %idxprom8
  %dl = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx9, i32 0, i32 1
  store i16 0, ptr %dl, align 2
  %25 = load ptr, ptr %s.addr, align 8
  %heap_max10 = getelementptr inbounds %struct.internal_state, ptr %25, i32 0, i32 45
  %26 = load i32, ptr %heap_max10, align 8
  %add = add nsw i32 %26, 1
  store i32 %add, ptr %h, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc62, %for.end
  %27 = load i32, ptr %h, align 4
  %cmp12 = icmp slt i32 %27, 573
  br i1 %cmp12, label %for.body13, label %for.end64

for.body13:                                       ; preds = %for.cond11
  %28 = load ptr, ptr %s.addr, align 8
  %heap14 = getelementptr inbounds %struct.internal_state, ptr %28, i32 0, i32 43
  %29 = load i32, ptr %h, align 4
  %idxprom15 = sext i32 %29 to i64
  %arrayidx16 = getelementptr inbounds [573 x i32], ptr %heap14, i64 0, i64 %idxprom15
  %30 = load i32, ptr %arrayidx16, align 4
  store i32 %30, ptr %n, align 4
  %31 = load ptr, ptr %tree, align 8
  %32 = load ptr, ptr %tree, align 8
  %33 = load i32, ptr %n, align 4
  %idxprom17 = sext i32 %33 to i64
  %arrayidx18 = getelementptr inbounds %struct.ct_data_s, ptr %32, i64 %idxprom17
  %dl19 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx18, i32 0, i32 1
  %34 = load i16, ptr %dl19, align 2
  %idxprom20 = zext i16 %34 to i64
  %arrayidx21 = getelementptr inbounds %struct.ct_data_s, ptr %31, i64 %idxprom20
  %dl22 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx21, i32 0, i32 1
  %35 = load i16, ptr %dl22, align 2
  %conv = zext i16 %35 to i32
  %add23 = add nsw i32 %conv, 1
  store i32 %add23, ptr %bits, align 4
  %36 = load i32, ptr %bits, align 4
  %37 = load i32, ptr %max_length, align 4
  %cmp24 = icmp sgt i32 %36, %37
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %for.body13
  %38 = load i32, ptr %max_length, align 4
  store i32 %38, ptr %bits, align 4
  %39 = load i32, ptr %overflow, align 4
  %inc26 = add nsw i32 %39, 1
  store i32 %inc26, ptr %overflow, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body13
  %40 = load i32, ptr %bits, align 4
  %conv27 = trunc i32 %40 to i16
  %41 = load ptr, ptr %tree, align 8
  %42 = load i32, ptr %n, align 4
  %idxprom28 = sext i32 %42 to i64
  %arrayidx29 = getelementptr inbounds %struct.ct_data_s, ptr %41, i64 %idxprom28
  %dl30 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx29, i32 0, i32 1
  store i16 %conv27, ptr %dl30, align 2
  %43 = load i32, ptr %n, align 4
  %44 = load i32, ptr %max_code, align 4
  %cmp31 = icmp sgt i32 %43, %44
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end
  br label %for.inc62

if.end34:                                         ; preds = %if.end
  %45 = load ptr, ptr %s.addr, align 8
  %bl_count35 = getelementptr inbounds %struct.internal_state, ptr %45, i32 0, i32 42
  %46 = load i32, ptr %bits, align 4
  %idxprom36 = sext i32 %46 to i64
  %arrayidx37 = getelementptr inbounds [16 x i16], ptr %bl_count35, i64 0, i64 %idxprom36
  %47 = load i16, ptr %arrayidx37, align 2
  %inc38 = add i16 %47, 1
  store i16 %inc38, ptr %arrayidx37, align 2
  store i32 0, ptr %xbits, align 4
  %48 = load i32, ptr %n, align 4
  %49 = load i32, ptr %base, align 4
  %cmp39 = icmp sge i32 %48, %49
  br i1 %cmp39, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.end34
  %50 = load ptr, ptr %extra, align 8
  %51 = load i32, ptr %n, align 4
  %52 = load i32, ptr %base, align 4
  %sub = sub nsw i32 %51, %52
  %idxprom42 = sext i32 %sub to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %50, i64 %idxprom42
  %53 = load i32, ptr %arrayidx43, align 4
  store i32 %53, ptr %xbits, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end34
  %54 = load ptr, ptr %tree, align 8
  %55 = load i32, ptr %n, align 4
  %idxprom45 = sext i32 %55 to i64
  %arrayidx46 = getelementptr inbounds %struct.ct_data_s, ptr %54, i64 %idxprom45
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx46, i32 0, i32 0
  %56 = load i16, ptr %fc, align 2
  store i16 %56, ptr %f, align 2
  %57 = load i16, ptr %f, align 2
  %conv47 = zext i16 %57 to i64
  %58 = load i32, ptr %bits, align 4
  %59 = load i32, ptr %xbits, align 4
  %add48 = add nsw i32 %58, %59
  %conv49 = sext i32 %add48 to i64
  %mul = mul i64 %conv47, %conv49
  %60 = load ptr, ptr %s.addr, align 8
  %opt_len = getelementptr inbounds %struct.internal_state, ptr %60, i32 0, i32 51
  %61 = load i64, ptr %opt_len, align 8
  %add50 = add i64 %61, %mul
  store i64 %add50, ptr %opt_len, align 8
  %62 = load ptr, ptr %stree, align 8
  %tobool = icmp ne ptr %62, null
  br i1 %tobool, label %if.then51, label %if.end61

if.then51:                                        ; preds = %if.end44
  %63 = load i16, ptr %f, align 2
  %conv52 = zext i16 %63 to i64
  %64 = load ptr, ptr %stree, align 8
  %65 = load i32, ptr %n, align 4
  %idxprom53 = sext i32 %65 to i64
  %arrayidx54 = getelementptr inbounds %struct.ct_data_s, ptr %64, i64 %idxprom53
  %dl55 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx54, i32 0, i32 1
  %66 = load i16, ptr %dl55, align 2
  %conv56 = zext i16 %66 to i32
  %67 = load i32, ptr %xbits, align 4
  %add57 = add nsw i32 %conv56, %67
  %conv58 = sext i32 %add57 to i64
  %mul59 = mul i64 %conv52, %conv58
  %68 = load ptr, ptr %s.addr, align 8
  %static_len = getelementptr inbounds %struct.internal_state, ptr %68, i32 0, i32 52
  %69 = load i64, ptr %static_len, align 8
  %add60 = add i64 %69, %mul59
  store i64 %add60, ptr %static_len, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then51, %if.end44
  br label %for.inc62

for.inc62:                                        ; preds = %if.end61, %if.then33
  %70 = load i32, ptr %h, align 4
  %inc63 = add nsw i32 %70, 1
  store i32 %inc63, ptr %h, align 4
  br label %for.cond11, !llvm.loop !23

for.end64:                                        ; preds = %for.cond11
  %71 = load i32, ptr %overflow, align 4
  %cmp65 = icmp eq i32 %71, 0
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %for.end64
  br label %for.end143

if.end68:                                         ; preds = %for.end64
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end68
  %72 = load i32, ptr %max_length, align 4
  %sub69 = sub nsw i32 %72, 1
  store i32 %sub69, ptr %bits, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %73 = load ptr, ptr %s.addr, align 8
  %bl_count70 = getelementptr inbounds %struct.internal_state, ptr %73, i32 0, i32 42
  %74 = load i32, ptr %bits, align 4
  %idxprom71 = sext i32 %74 to i64
  %arrayidx72 = getelementptr inbounds [16 x i16], ptr %bl_count70, i64 0, i64 %idxprom71
  %75 = load i16, ptr %arrayidx72, align 2
  %conv73 = zext i16 %75 to i32
  %cmp74 = icmp eq i32 %conv73, 0
  br i1 %cmp74, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %76 = load i32, ptr %bits, align 4
  %dec = add nsw i32 %76, -1
  store i32 %dec, ptr %bits, align 4
  br label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %while.cond
  %77 = load ptr, ptr %s.addr, align 8
  %bl_count76 = getelementptr inbounds %struct.internal_state, ptr %77, i32 0, i32 42
  %78 = load i32, ptr %bits, align 4
  %idxprom77 = sext i32 %78 to i64
  %arrayidx78 = getelementptr inbounds [16 x i16], ptr %bl_count76, i64 0, i64 %idxprom77
  %79 = load i16, ptr %arrayidx78, align 2
  %dec79 = add i16 %79, -1
  store i16 %dec79, ptr %arrayidx78, align 2
  %80 = load ptr, ptr %s.addr, align 8
  %bl_count80 = getelementptr inbounds %struct.internal_state, ptr %80, i32 0, i32 42
  %81 = load i32, ptr %bits, align 4
  %add81 = add nsw i32 %81, 1
  %idxprom82 = sext i32 %add81 to i64
  %arrayidx83 = getelementptr inbounds [16 x i16], ptr %bl_count80, i64 0, i64 %idxprom82
  %82 = load i16, ptr %arrayidx83, align 2
  %conv84 = zext i16 %82 to i32
  %add85 = add nsw i32 %conv84, 2
  %conv86 = trunc i32 %add85 to i16
  store i16 %conv86, ptr %arrayidx83, align 2
  %83 = load ptr, ptr %s.addr, align 8
  %bl_count87 = getelementptr inbounds %struct.internal_state, ptr %83, i32 0, i32 42
  %84 = load i32, ptr %max_length, align 4
  %idxprom88 = sext i32 %84 to i64
  %arrayidx89 = getelementptr inbounds [16 x i16], ptr %bl_count87, i64 0, i64 %idxprom88
  %85 = load i16, ptr %arrayidx89, align 2
  %dec90 = add i16 %85, -1
  store i16 %dec90, ptr %arrayidx89, align 2
  %86 = load i32, ptr %overflow, align 4
  %sub91 = sub nsw i32 %86, 2
  store i32 %sub91, ptr %overflow, align 4
  br label %do.cond

do.cond:                                          ; preds = %while.end
  %87 = load i32, ptr %overflow, align 4
  %cmp92 = icmp sgt i32 %87, 0
  br i1 %cmp92, label %do.body, label %do.end, !llvm.loop !25

do.end:                                           ; preds = %do.cond
  %88 = load i32, ptr %max_length, align 4
  store i32 %88, ptr %bits, align 4
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc141, %do.end
  %89 = load i32, ptr %bits, align 4
  %cmp95 = icmp ne i32 %89, 0
  br i1 %cmp95, label %for.body97, label %for.end143

for.body97:                                       ; preds = %for.cond94
  %90 = load ptr, ptr %s.addr, align 8
  %bl_count98 = getelementptr inbounds %struct.internal_state, ptr %90, i32 0, i32 42
  %91 = load i32, ptr %bits, align 4
  %idxprom99 = sext i32 %91 to i64
  %arrayidx100 = getelementptr inbounds [16 x i16], ptr %bl_count98, i64 0, i64 %idxprom99
  %92 = load i16, ptr %arrayidx100, align 2
  %conv101 = zext i16 %92 to i32
  store i32 %conv101, ptr %n, align 4
  br label %while.cond102

while.cond102:                                    ; preds = %if.end138, %if.then112, %for.body97
  %93 = load i32, ptr %n, align 4
  %cmp103 = icmp ne i32 %93, 0
  br i1 %cmp103, label %while.body105, label %while.end140

while.body105:                                    ; preds = %while.cond102
  %94 = load ptr, ptr %s.addr, align 8
  %heap106 = getelementptr inbounds %struct.internal_state, ptr %94, i32 0, i32 43
  %95 = load i32, ptr %h, align 4
  %dec107 = add nsw i32 %95, -1
  store i32 %dec107, ptr %h, align 4
  %idxprom108 = sext i32 %dec107 to i64
  %arrayidx109 = getelementptr inbounds [573 x i32], ptr %heap106, i64 0, i64 %idxprom108
  %96 = load i32, ptr %arrayidx109, align 4
  store i32 %96, ptr %m, align 4
  %97 = load i32, ptr %m, align 4
  %98 = load i32, ptr %max_code, align 4
  %cmp110 = icmp sgt i32 %97, %98
  br i1 %cmp110, label %if.then112, label %if.end113

if.then112:                                       ; preds = %while.body105
  br label %while.cond102, !llvm.loop !26

if.end113:                                        ; preds = %while.body105
  %99 = load ptr, ptr %tree, align 8
  %100 = load i32, ptr %m, align 4
  %idxprom114 = sext i32 %100 to i64
  %arrayidx115 = getelementptr inbounds %struct.ct_data_s, ptr %99, i64 %idxprom114
  %dl116 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx115, i32 0, i32 1
  %101 = load i16, ptr %dl116, align 2
  %conv117 = zext i16 %101 to i32
  %102 = load i32, ptr %bits, align 4
  %cmp118 = icmp ne i32 %conv117, %102
  br i1 %cmp118, label %if.then120, label %if.end138

if.then120:                                       ; preds = %if.end113
  %103 = load i32, ptr %bits, align 4
  %conv121 = sext i32 %103 to i64
  %104 = load ptr, ptr %tree, align 8
  %105 = load i32, ptr %m, align 4
  %idxprom122 = sext i32 %105 to i64
  %arrayidx123 = getelementptr inbounds %struct.ct_data_s, ptr %104, i64 %idxprom122
  %dl124 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx123, i32 0, i32 1
  %106 = load i16, ptr %dl124, align 2
  %conv125 = zext i16 %106 to i64
  %sub126 = sub nsw i64 %conv121, %conv125
  %107 = load ptr, ptr %tree, align 8
  %108 = load i32, ptr %m, align 4
  %idxprom127 = sext i32 %108 to i64
  %arrayidx128 = getelementptr inbounds %struct.ct_data_s, ptr %107, i64 %idxprom127
  %fc129 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx128, i32 0, i32 0
  %109 = load i16, ptr %fc129, align 2
  %conv130 = zext i16 %109 to i64
  %mul131 = mul nsw i64 %sub126, %conv130
  %110 = load ptr, ptr %s.addr, align 8
  %opt_len132 = getelementptr inbounds %struct.internal_state, ptr %110, i32 0, i32 51
  %111 = load i64, ptr %opt_len132, align 8
  %add133 = add i64 %111, %mul131
  store i64 %add133, ptr %opt_len132, align 8
  %112 = load i32, ptr %bits, align 4
  %conv134 = trunc i32 %112 to i16
  %113 = load ptr, ptr %tree, align 8
  %114 = load i32, ptr %m, align 4
  %idxprom135 = sext i32 %114 to i64
  %arrayidx136 = getelementptr inbounds %struct.ct_data_s, ptr %113, i64 %idxprom135
  %dl137 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx136, i32 0, i32 1
  store i16 %conv134, ptr %dl137, align 2
  br label %if.end138

if.end138:                                        ; preds = %if.then120, %if.end113
  %115 = load i32, ptr %n, align 4
  %dec139 = add nsw i32 %115, -1
  store i32 %dec139, ptr %n, align 4
  br label %while.cond102, !llvm.loop !26

while.end140:                                     ; preds = %while.cond102
  br label %for.inc141

for.inc141:                                       ; preds = %while.end140
  %116 = load i32, ptr %bits, align 4
  %dec142 = add nsw i32 %116, -1
  store i32 %dec142, ptr %bits, align 4
  br label %for.cond94, !llvm.loop !27

for.end143:                                       ; preds = %if.then67, %for.cond94
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
  store i32 1, ptr %bits, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %bits, align 4
  %cmp = icmp sle i32 %0, 15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16, ptr %code, align 2
  %conv = zext i16 %1 to i32
  %2 = load ptr, ptr %bl_count.addr, align 8
  %3 = load i32, ptr %bits, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i16, ptr %2, i64 %idxprom
  %4 = load i16, ptr %arrayidx, align 2
  %conv1 = zext i16 %4 to i32
  %add = add nsw i32 %conv, %conv1
  %shl = shl i32 %add, 1
  %conv2 = trunc i32 %shl to i16
  store i16 %conv2, ptr %code, align 2
  %5 = load i32, ptr %bits, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [16 x i16], ptr %next_code, i64 0, i64 %idxprom3
  store i16 %conv2, ptr %arrayidx4, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %bits, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %bits, align 4
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %n, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc21, %for.end
  %7 = load i32, ptr %n, align 4
  %8 = load i32, ptr %max_code.addr, align 4
  %cmp6 = icmp sle i32 %7, %8
  br i1 %cmp6, label %for.body8, label %for.end23

for.body8:                                        ; preds = %for.cond5
  %9 = load ptr, ptr %tree.addr, align 8
  %10 = load i32, ptr %n, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds %struct.ct_data_s, ptr %9, i64 %idxprom9
  %dl = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx10, i32 0, i32 1
  %11 = load i16, ptr %dl, align 2
  %conv11 = zext i16 %11 to i32
  store i32 %conv11, ptr %len, align 4
  %12 = load i32, ptr %len, align 4
  %cmp12 = icmp eq i32 %12, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body8
  br label %for.inc21

if.end:                                           ; preds = %for.body8
  %13 = load i32, ptr %len, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [16 x i16], ptr %next_code, i64 0, i64 %idxprom14
  %14 = load i16, ptr %arrayidx15, align 2
  %inc16 = add i16 %14, 1
  store i16 %inc16, ptr %arrayidx15, align 2
  %conv17 = zext i16 %14 to i32
  %15 = load i32, ptr %len, align 4
  %call = call i32 @bi_reverse(i32 noundef %conv17, i32 noundef %15)
  %conv18 = trunc i32 %call to i16
  %16 = load ptr, ptr %tree.addr, align 8
  %17 = load i32, ptr %n, align 4
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds %struct.ct_data_s, ptr %16, i64 %idxprom19
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx20, i32 0, i32 0
  store i16 %conv18, ptr %fc, align 2
  br label %for.inc21

for.inc21:                                        ; preds = %if.end, %if.then
  %18 = load i32, ptr %n, align 4
  %inc22 = add nsw i32 %18, 1
  store i32 %inc22, ptr %n, align 4
  br label %for.cond5, !llvm.loop !29

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

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, ptr %code.addr, align 4
  %and = and i32 %0, 1
  %1 = load i32, ptr %res, align 4
  %or = or i32 %1, %and
  store i32 %or, ptr %res, align 4
  %2 = load i32, ptr %code.addr, align 4
  %shr = lshr i32 %2, 1
  store i32 %shr, ptr %code.addr, align 4
  %3 = load i32, ptr %res, align 4
  %shl = shl i32 %3, 1
  store i32 %shl, ptr %res, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %4 = load i32, ptr %len.addr, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %len.addr, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !30

do.end:                                           ; preds = %do.cond
  %5 = load i32, ptr %res, align 4
  %shr1 = lshr i32 %5, 1
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
  %0 = load ptr, ptr %tree.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ct_data_s, ptr %0, i64 0
  %dl = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx, i32 0, i32 1
  %1 = load i16, ptr %dl, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %nextlen, align 4
  store i32 0, ptr %count, align 4
  store i32 7, ptr %max_count, align 4
  store i32 4, ptr %min_count, align 4
  %2 = load i32, ptr %nextlen, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 138, ptr %max_count, align 4
  store i32 3, ptr %min_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %tree.addr, align 8
  %4 = load i32, ptr %max_code.addr, align 4
  %add = add nsw i32 %4, 1
  %idxprom = sext i32 %add to i64
  %arrayidx2 = getelementptr inbounds %struct.ct_data_s, ptr %3, i64 %idxprom
  %dl3 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx2, i32 0, i32 1
  store i16 -1, ptr %dl3, align 2
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %n, align 4
  %6 = load i32, ptr %max_code.addr, align 4
  %cmp4 = icmp sle i32 %5, %6
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %nextlen, align 4
  store i32 %7, ptr %curlen, align 4
  %8 = load ptr, ptr %tree.addr, align 8
  %9 = load i32, ptr %n, align 4
  %add6 = add nsw i32 %9, 1
  %idxprom7 = sext i32 %add6 to i64
  %arrayidx8 = getelementptr inbounds %struct.ct_data_s, ptr %8, i64 %idxprom7
  %dl9 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx8, i32 0, i32 1
  %10 = load i16, ptr %dl9, align 2
  %conv10 = zext i16 %10 to i32
  store i32 %conv10, ptr %nextlen, align 4
  %11 = load i32, ptr %count, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %count, align 4
  %12 = load i32, ptr %max_count, align 4
  %cmp11 = icmp slt i32 %inc, %12
  br i1 %cmp11, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %13 = load i32, ptr %curlen, align 4
  %14 = load i32, ptr %nextlen, align 4
  %cmp13 = icmp eq i32 %13, %14
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %land.lhs.true
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true, %for.body
  %15 = load i32, ptr %count, align 4
  %16 = load i32, ptr %min_count, align 4
  %cmp16 = icmp slt i32 %15, %16
  br i1 %cmp16, label %if.then18, label %if.else24

if.then18:                                        ; preds = %if.else
  %17 = load i32, ptr %count, align 4
  %18 = load ptr, ptr %s.addr, align 8
  %bl_tree = getelementptr inbounds %struct.internal_state, ptr %18, i32 0, i32 38
  %19 = load i32, ptr %curlen, align 4
  %idxprom19 = sext i32 %19 to i64
  %arrayidx20 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree, i64 0, i64 %idxprom19
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx20, i32 0, i32 0
  %20 = load i16, ptr %fc, align 4
  %conv21 = zext i16 %20 to i32
  %add22 = add nsw i32 %conv21, %17
  %conv23 = trunc i32 %add22 to i16
  store i16 %conv23, ptr %fc, align 4
  br label %if.end56

if.else24:                                        ; preds = %if.else
  %21 = load i32, ptr %curlen, align 4
  %cmp25 = icmp ne i32 %21, 0
  br i1 %cmp25, label %if.then27, label %if.else41

if.then27:                                        ; preds = %if.else24
  %22 = load i32, ptr %curlen, align 4
  %23 = load i32, ptr %prevlen, align 4
  %cmp28 = icmp ne i32 %22, %23
  br i1 %cmp28, label %if.then30, label %if.end36

if.then30:                                        ; preds = %if.then27
  %24 = load ptr, ptr %s.addr, align 8
  %bl_tree31 = getelementptr inbounds %struct.internal_state, ptr %24, i32 0, i32 38
  %25 = load i32, ptr %curlen, align 4
  %idxprom32 = sext i32 %25 to i64
  %arrayidx33 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree31, i64 0, i64 %idxprom32
  %fc34 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx33, i32 0, i32 0
  %26 = load i16, ptr %fc34, align 4
  %inc35 = add i16 %26, 1
  store i16 %inc35, ptr %fc34, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %if.then27
  %27 = load ptr, ptr %s.addr, align 8
  %bl_tree37 = getelementptr inbounds %struct.internal_state, ptr %27, i32 0, i32 38
  %arrayidx38 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree37, i64 0, i64 16
  %fc39 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx38, i32 0, i32 0
  %28 = load i16, ptr %fc39, align 4
  %inc40 = add i16 %28, 1
  store i16 %inc40, ptr %fc39, align 4
  br label %if.end55

if.else41:                                        ; preds = %if.else24
  %29 = load i32, ptr %count, align 4
  %cmp42 = icmp sle i32 %29, 10
  br i1 %cmp42, label %if.then44, label %if.else49

if.then44:                                        ; preds = %if.else41
  %30 = load ptr, ptr %s.addr, align 8
  %bl_tree45 = getelementptr inbounds %struct.internal_state, ptr %30, i32 0, i32 38
  %arrayidx46 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree45, i64 0, i64 17
  %fc47 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx46, i32 0, i32 0
  %31 = load i16, ptr %fc47, align 4
  %inc48 = add i16 %31, 1
  store i16 %inc48, ptr %fc47, align 4
  br label %if.end54

if.else49:                                        ; preds = %if.else41
  %32 = load ptr, ptr %s.addr, align 8
  %bl_tree50 = getelementptr inbounds %struct.internal_state, ptr %32, i32 0, i32 38
  %arrayidx51 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree50, i64 0, i64 18
  %fc52 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx51, i32 0, i32 0
  %33 = load i16, ptr %fc52, align 4
  %inc53 = add i16 %33, 1
  store i16 %inc53, ptr %fc52, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.else49, %if.then44
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end36
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then18
  br label %if.end57

if.end57:                                         ; preds = %if.end56
  store i32 0, ptr %count, align 4
  %34 = load i32, ptr %curlen, align 4
  store i32 %34, ptr %prevlen, align 4
  %35 = load i32, ptr %nextlen, align 4
  %cmp58 = icmp eq i32 %35, 0
  br i1 %cmp58, label %if.then60, label %if.else61

if.then60:                                        ; preds = %if.end57
  store i32 138, ptr %max_count, align 4
  store i32 3, ptr %min_count, align 4
  br label %if.end67

if.else61:                                        ; preds = %if.end57
  %36 = load i32, ptr %curlen, align 4
  %37 = load i32, ptr %nextlen, align 4
  %cmp62 = icmp eq i32 %36, %37
  br i1 %cmp62, label %if.then64, label %if.else65

if.then64:                                        ; preds = %if.else61
  store i32 6, ptr %max_count, align 4
  store i32 3, ptr %min_count, align 4
  br label %if.end66

if.else65:                                        ; preds = %if.else61
  store i32 7, ptr %max_count, align 4
  store i32 4, ptr %min_count, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.else65, %if.then64
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then60
  br label %for.inc

for.inc:                                          ; preds = %if.end67, %if.then15
  %38 = load i32, ptr %n, align 4
  %inc68 = add nsw i32 %38, 1
  store i32 %inc68, ptr %n, align 4
  br label %for.cond, !llvm.loop !31

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
  %0 = load ptr, ptr %tree.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ct_data_s, ptr %0, i64 0
  %dl = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx, i32 0, i32 1
  %1 = load i16, ptr %dl, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %nextlen, align 4
  store i32 0, ptr %count, align 4
  store i32 7, ptr %max_count, align 4
  store i32 4, ptr %min_count, align 4
  %2 = load i32, ptr %nextlen, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 138, ptr %max_count, align 4
  store i32 3, ptr %min_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %n, align 4
  %4 = load i32, ptr %max_code.addr, align 4
  %cmp2 = icmp sle i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %nextlen, align 4
  store i32 %5, ptr %curlen, align 4
  %6 = load ptr, ptr %tree.addr, align 8
  %7 = load i32, ptr %n, align 4
  %add = add nsw i32 %7, 1
  %idxprom = sext i32 %add to i64
  %arrayidx4 = getelementptr inbounds %struct.ct_data_s, ptr %6, i64 %idxprom
  %dl5 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx4, i32 0, i32 1
  %8 = load i16, ptr %dl5, align 2
  %conv6 = zext i16 %8 to i32
  store i32 %conv6, ptr %nextlen, align 4
  %9 = load i32, ptr %count, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %count, align 4
  %10 = load i32, ptr %max_count, align 4
  %cmp7 = icmp slt i32 %inc, %10
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %11 = load i32, ptr %curlen, align 4
  %12 = load i32, ptr %nextlen, align 4
  %cmp9 = icmp eq i32 %11, %12
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %land.lhs.true
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true, %for.body
  %13 = load i32, ptr %count, align 4
  %14 = load i32, ptr %min_count, align 4
  %cmp12 = icmp slt i32 %13, %14
  br i1 %cmp12, label %if.then14, label %if.else74

if.then14:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then14
  %15 = load ptr, ptr %s.addr, align 8
  %bl_tree = getelementptr inbounds %struct.internal_state, ptr %15, i32 0, i32 38
  %16 = load i32, ptr %curlen, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree, i64 0, i64 %idxprom15
  %dl17 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx16, i32 0, i32 1
  %17 = load i16, ptr %dl17, align 2
  %conv18 = zext i16 %17 to i32
  store i32 %conv18, ptr %len, align 4
  %18 = load ptr, ptr %s.addr, align 8
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %18, i32 0, i32 56
  %19 = load i32, ptr %bi_valid, align 4
  %20 = load i32, ptr %len, align 4
  %sub = sub nsw i32 16, %20
  %cmp19 = icmp sgt i32 %19, %sub
  br i1 %cmp19, label %if.then21, label %if.else57

if.then21:                                        ; preds = %do.body
  %21 = load ptr, ptr %s.addr, align 8
  %bl_tree22 = getelementptr inbounds %struct.internal_state, ptr %21, i32 0, i32 38
  %22 = load i32, ptr %curlen, align 4
  %idxprom23 = sext i32 %22 to i64
  %arrayidx24 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree22, i64 0, i64 %idxprom23
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx24, i32 0, i32 0
  %23 = load i16, ptr %fc, align 4
  %conv25 = zext i16 %23 to i32
  store i32 %conv25, ptr %val, align 4
  %24 = load i32, ptr %val, align 4
  %25 = load ptr, ptr %s.addr, align 8
  %bi_valid26 = getelementptr inbounds %struct.internal_state, ptr %25, i32 0, i32 56
  %26 = load i32, ptr %bi_valid26, align 4
  %shl = shl i32 %24, %26
  %27 = load ptr, ptr %s.addr, align 8
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %27, i32 0, i32 55
  %28 = load i16, ptr %bi_buf, align 8
  %conv27 = zext i16 %28 to i32
  %or = or i32 %conv27, %shl
  %conv28 = trunc i32 %or to i16
  store i16 %conv28, ptr %bi_buf, align 8
  %29 = load ptr, ptr %s.addr, align 8
  %bi_buf29 = getelementptr inbounds %struct.internal_state, ptr %29, i32 0, i32 55
  %30 = load i16, ptr %bi_buf29, align 8
  %conv30 = zext i16 %30 to i32
  %and = and i32 %conv30, 255
  %conv31 = trunc i32 %and to i8
  %31 = load ptr, ptr %s.addr, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %pending_buf, align 8
  %33 = load ptr, ptr %s.addr, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %33, i32 0, i32 5
  %34 = load i32, ptr %pending, align 8
  %inc32 = add nsw i32 %34, 1
  store i32 %inc32, ptr %pending, align 8
  %idxprom33 = sext i32 %34 to i64
  %arrayidx34 = getelementptr inbounds i8, ptr %32, i64 %idxprom33
  store i8 %conv31, ptr %arrayidx34, align 1
  %35 = load ptr, ptr %s.addr, align 8
  %bi_buf35 = getelementptr inbounds %struct.internal_state, ptr %35, i32 0, i32 55
  %36 = load i16, ptr %bi_buf35, align 8
  %conv36 = zext i16 %36 to i32
  %shr = ashr i32 %conv36, 8
  %conv37 = trunc i32 %shr to i8
  %37 = load ptr, ptr %s.addr, align 8
  %pending_buf38 = getelementptr inbounds %struct.internal_state, ptr %37, i32 0, i32 2
  %38 = load ptr, ptr %pending_buf38, align 8
  %39 = load ptr, ptr %s.addr, align 8
  %pending39 = getelementptr inbounds %struct.internal_state, ptr %39, i32 0, i32 5
  %40 = load i32, ptr %pending39, align 8
  %inc40 = add nsw i32 %40, 1
  store i32 %inc40, ptr %pending39, align 8
  %idxprom41 = sext i32 %40 to i64
  %arrayidx42 = getelementptr inbounds i8, ptr %38, i64 %idxprom41
  store i8 %conv37, ptr %arrayidx42, align 1
  %41 = load i32, ptr %val, align 4
  %conv43 = trunc i32 %41 to i16
  %conv44 = zext i16 %conv43 to i32
  %42 = load ptr, ptr %s.addr, align 8
  %bi_valid45 = getelementptr inbounds %struct.internal_state, ptr %42, i32 0, i32 56
  %43 = load i32, ptr %bi_valid45, align 4
  %conv46 = sext i32 %43 to i64
  %sub47 = sub i64 16, %conv46
  %sh_prom = trunc i64 %sub47 to i32
  %shr48 = ashr i32 %conv44, %sh_prom
  %conv49 = trunc i32 %shr48 to i16
  %44 = load ptr, ptr %s.addr, align 8
  %bi_buf50 = getelementptr inbounds %struct.internal_state, ptr %44, i32 0, i32 55
  store i16 %conv49, ptr %bi_buf50, align 8
  %45 = load i32, ptr %len, align 4
  %conv51 = sext i32 %45 to i64
  %sub52 = sub i64 %conv51, 16
  %46 = load ptr, ptr %s.addr, align 8
  %bi_valid53 = getelementptr inbounds %struct.internal_state, ptr %46, i32 0, i32 56
  %47 = load i32, ptr %bi_valid53, align 4
  %conv54 = sext i32 %47 to i64
  %add55 = add i64 %conv54, %sub52
  %conv56 = trunc i64 %add55 to i32
  store i32 %conv56, ptr %bi_valid53, align 4
  br label %if.end71

if.else57:                                        ; preds = %do.body
  %48 = load ptr, ptr %s.addr, align 8
  %bl_tree58 = getelementptr inbounds %struct.internal_state, ptr %48, i32 0, i32 38
  %49 = load i32, ptr %curlen, align 4
  %idxprom59 = sext i32 %49 to i64
  %arrayidx60 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree58, i64 0, i64 %idxprom59
  %fc61 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx60, i32 0, i32 0
  %50 = load i16, ptr %fc61, align 4
  %conv62 = zext i16 %50 to i32
  %51 = load ptr, ptr %s.addr, align 8
  %bi_valid63 = getelementptr inbounds %struct.internal_state, ptr %51, i32 0, i32 56
  %52 = load i32, ptr %bi_valid63, align 4
  %shl64 = shl i32 %conv62, %52
  %53 = load ptr, ptr %s.addr, align 8
  %bi_buf65 = getelementptr inbounds %struct.internal_state, ptr %53, i32 0, i32 55
  %54 = load i16, ptr %bi_buf65, align 8
  %conv66 = zext i16 %54 to i32
  %or67 = or i32 %conv66, %shl64
  %conv68 = trunc i32 %or67 to i16
  store i16 %conv68, ptr %bi_buf65, align 8
  %55 = load i32, ptr %len, align 4
  %56 = load ptr, ptr %s.addr, align 8
  %bi_valid69 = getelementptr inbounds %struct.internal_state, ptr %56, i32 0, i32 56
  %57 = load i32, ptr %bi_valid69, align 4
  %add70 = add nsw i32 %57, %55
  store i32 %add70, ptr %bi_valid69, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.else57, %if.then21
  br label %do.cond

do.cond:                                          ; preds = %if.end71
  %58 = load i32, ptr %count, align 4
  %dec = add nsw i32 %58, -1
  store i32 %dec, ptr %count, align 4
  %cmp72 = icmp ne i32 %dec, 0
  br i1 %cmp72, label %do.body, label %do.end, !llvm.loop !32

do.end:                                           ; preds = %do.cond
  br label %if.end539

if.else74:                                        ; preds = %if.else
  %59 = load i32, ptr %curlen, align 4
  %cmp75 = icmp ne i32 %59, 0
  br i1 %cmp75, label %if.then77, label %if.else280

if.then77:                                        ; preds = %if.else74
  %60 = load i32, ptr %curlen, align 4
  %61 = load i32, ptr %prevlen, align 4
  %cmp78 = icmp ne i32 %60, %61
  br i1 %cmp78, label %if.then80, label %if.end153

if.then80:                                        ; preds = %if.then77
  %62 = load ptr, ptr %s.addr, align 8
  %bl_tree82 = getelementptr inbounds %struct.internal_state, ptr %62, i32 0, i32 38
  %63 = load i32, ptr %curlen, align 4
  %idxprom83 = sext i32 %63 to i64
  %arrayidx84 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree82, i64 0, i64 %idxprom83
  %dl85 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx84, i32 0, i32 1
  %64 = load i16, ptr %dl85, align 2
  %conv86 = zext i16 %64 to i32
  store i32 %conv86, ptr %len81, align 4
  %65 = load ptr, ptr %s.addr, align 8
  %bi_valid87 = getelementptr inbounds %struct.internal_state, ptr %65, i32 0, i32 56
  %66 = load i32, ptr %bi_valid87, align 4
  %67 = load i32, ptr %len81, align 4
  %sub88 = sub nsw i32 16, %67
  %cmp89 = icmp sgt i32 %66, %sub88
  br i1 %cmp89, label %if.then91, label %if.else137

if.then91:                                        ; preds = %if.then80
  %68 = load ptr, ptr %s.addr, align 8
  %bl_tree93 = getelementptr inbounds %struct.internal_state, ptr %68, i32 0, i32 38
  %69 = load i32, ptr %curlen, align 4
  %idxprom94 = sext i32 %69 to i64
  %arrayidx95 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree93, i64 0, i64 %idxprom94
  %fc96 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx95, i32 0, i32 0
  %70 = load i16, ptr %fc96, align 4
  %conv97 = zext i16 %70 to i32
  store i32 %conv97, ptr %val92, align 4
  %71 = load i32, ptr %val92, align 4
  %72 = load ptr, ptr %s.addr, align 8
  %bi_valid98 = getelementptr inbounds %struct.internal_state, ptr %72, i32 0, i32 56
  %73 = load i32, ptr %bi_valid98, align 4
  %shl99 = shl i32 %71, %73
  %74 = load ptr, ptr %s.addr, align 8
  %bi_buf100 = getelementptr inbounds %struct.internal_state, ptr %74, i32 0, i32 55
  %75 = load i16, ptr %bi_buf100, align 8
  %conv101 = zext i16 %75 to i32
  %or102 = or i32 %conv101, %shl99
  %conv103 = trunc i32 %or102 to i16
  store i16 %conv103, ptr %bi_buf100, align 8
  %76 = load ptr, ptr %s.addr, align 8
  %bi_buf104 = getelementptr inbounds %struct.internal_state, ptr %76, i32 0, i32 55
  %77 = load i16, ptr %bi_buf104, align 8
  %conv105 = zext i16 %77 to i32
  %and106 = and i32 %conv105, 255
  %conv107 = trunc i32 %and106 to i8
  %78 = load ptr, ptr %s.addr, align 8
  %pending_buf108 = getelementptr inbounds %struct.internal_state, ptr %78, i32 0, i32 2
  %79 = load ptr, ptr %pending_buf108, align 8
  %80 = load ptr, ptr %s.addr, align 8
  %pending109 = getelementptr inbounds %struct.internal_state, ptr %80, i32 0, i32 5
  %81 = load i32, ptr %pending109, align 8
  %inc110 = add nsw i32 %81, 1
  store i32 %inc110, ptr %pending109, align 8
  %idxprom111 = sext i32 %81 to i64
  %arrayidx112 = getelementptr inbounds i8, ptr %79, i64 %idxprom111
  store i8 %conv107, ptr %arrayidx112, align 1
  %82 = load ptr, ptr %s.addr, align 8
  %bi_buf113 = getelementptr inbounds %struct.internal_state, ptr %82, i32 0, i32 55
  %83 = load i16, ptr %bi_buf113, align 8
  %conv114 = zext i16 %83 to i32
  %shr115 = ashr i32 %conv114, 8
  %conv116 = trunc i32 %shr115 to i8
  %84 = load ptr, ptr %s.addr, align 8
  %pending_buf117 = getelementptr inbounds %struct.internal_state, ptr %84, i32 0, i32 2
  %85 = load ptr, ptr %pending_buf117, align 8
  %86 = load ptr, ptr %s.addr, align 8
  %pending118 = getelementptr inbounds %struct.internal_state, ptr %86, i32 0, i32 5
  %87 = load i32, ptr %pending118, align 8
  %inc119 = add nsw i32 %87, 1
  store i32 %inc119, ptr %pending118, align 8
  %idxprom120 = sext i32 %87 to i64
  %arrayidx121 = getelementptr inbounds i8, ptr %85, i64 %idxprom120
  store i8 %conv116, ptr %arrayidx121, align 1
  %88 = load i32, ptr %val92, align 4
  %conv122 = trunc i32 %88 to i16
  %conv123 = zext i16 %conv122 to i32
  %89 = load ptr, ptr %s.addr, align 8
  %bi_valid124 = getelementptr inbounds %struct.internal_state, ptr %89, i32 0, i32 56
  %90 = load i32, ptr %bi_valid124, align 4
  %conv125 = sext i32 %90 to i64
  %sub126 = sub i64 16, %conv125
  %sh_prom127 = trunc i64 %sub126 to i32
  %shr128 = ashr i32 %conv123, %sh_prom127
  %conv129 = trunc i32 %shr128 to i16
  %91 = load ptr, ptr %s.addr, align 8
  %bi_buf130 = getelementptr inbounds %struct.internal_state, ptr %91, i32 0, i32 55
  store i16 %conv129, ptr %bi_buf130, align 8
  %92 = load i32, ptr %len81, align 4
  %conv131 = sext i32 %92 to i64
  %sub132 = sub i64 %conv131, 16
  %93 = load ptr, ptr %s.addr, align 8
  %bi_valid133 = getelementptr inbounds %struct.internal_state, ptr %93, i32 0, i32 56
  %94 = load i32, ptr %bi_valid133, align 4
  %conv134 = sext i32 %94 to i64
  %add135 = add i64 %conv134, %sub132
  %conv136 = trunc i64 %add135 to i32
  store i32 %conv136, ptr %bi_valid133, align 4
  br label %if.end151

if.else137:                                       ; preds = %if.then80
  %95 = load ptr, ptr %s.addr, align 8
  %bl_tree138 = getelementptr inbounds %struct.internal_state, ptr %95, i32 0, i32 38
  %96 = load i32, ptr %curlen, align 4
  %idxprom139 = sext i32 %96 to i64
  %arrayidx140 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree138, i64 0, i64 %idxprom139
  %fc141 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx140, i32 0, i32 0
  %97 = load i16, ptr %fc141, align 4
  %conv142 = zext i16 %97 to i32
  %98 = load ptr, ptr %s.addr, align 8
  %bi_valid143 = getelementptr inbounds %struct.internal_state, ptr %98, i32 0, i32 56
  %99 = load i32, ptr %bi_valid143, align 4
  %shl144 = shl i32 %conv142, %99
  %100 = load ptr, ptr %s.addr, align 8
  %bi_buf145 = getelementptr inbounds %struct.internal_state, ptr %100, i32 0, i32 55
  %101 = load i16, ptr %bi_buf145, align 8
  %conv146 = zext i16 %101 to i32
  %or147 = or i32 %conv146, %shl144
  %conv148 = trunc i32 %or147 to i16
  store i16 %conv148, ptr %bi_buf145, align 8
  %102 = load i32, ptr %len81, align 4
  %103 = load ptr, ptr %s.addr, align 8
  %bi_valid149 = getelementptr inbounds %struct.internal_state, ptr %103, i32 0, i32 56
  %104 = load i32, ptr %bi_valid149, align 4
  %add150 = add nsw i32 %104, %102
  store i32 %add150, ptr %bi_valid149, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.else137, %if.then91
  %105 = load i32, ptr %count, align 4
  %dec152 = add nsw i32 %105, -1
  store i32 %dec152, ptr %count, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.end151, %if.then77
  %106 = load ptr, ptr %s.addr, align 8
  %bl_tree155 = getelementptr inbounds %struct.internal_state, ptr %106, i32 0, i32 38
  %arrayidx156 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree155, i64 0, i64 16
  %dl157 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx156, i32 0, i32 1
  %107 = load i16, ptr %dl157, align 2
  %conv158 = zext i16 %107 to i32
  store i32 %conv158, ptr %len154, align 4
  %108 = load ptr, ptr %s.addr, align 8
  %bi_valid159 = getelementptr inbounds %struct.internal_state, ptr %108, i32 0, i32 56
  %109 = load i32, ptr %bi_valid159, align 4
  %110 = load i32, ptr %len154, align 4
  %sub160 = sub nsw i32 16, %110
  %cmp161 = icmp sgt i32 %109, %sub160
  br i1 %cmp161, label %if.then163, label %if.else208

if.then163:                                       ; preds = %if.end153
  %111 = load ptr, ptr %s.addr, align 8
  %bl_tree165 = getelementptr inbounds %struct.internal_state, ptr %111, i32 0, i32 38
  %arrayidx166 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree165, i64 0, i64 16
  %fc167 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx166, i32 0, i32 0
  %112 = load i16, ptr %fc167, align 4
  %conv168 = zext i16 %112 to i32
  store i32 %conv168, ptr %val164, align 4
  %113 = load i32, ptr %val164, align 4
  %114 = load ptr, ptr %s.addr, align 8
  %bi_valid169 = getelementptr inbounds %struct.internal_state, ptr %114, i32 0, i32 56
  %115 = load i32, ptr %bi_valid169, align 4
  %shl170 = shl i32 %113, %115
  %116 = load ptr, ptr %s.addr, align 8
  %bi_buf171 = getelementptr inbounds %struct.internal_state, ptr %116, i32 0, i32 55
  %117 = load i16, ptr %bi_buf171, align 8
  %conv172 = zext i16 %117 to i32
  %or173 = or i32 %conv172, %shl170
  %conv174 = trunc i32 %or173 to i16
  store i16 %conv174, ptr %bi_buf171, align 8
  %118 = load ptr, ptr %s.addr, align 8
  %bi_buf175 = getelementptr inbounds %struct.internal_state, ptr %118, i32 0, i32 55
  %119 = load i16, ptr %bi_buf175, align 8
  %conv176 = zext i16 %119 to i32
  %and177 = and i32 %conv176, 255
  %conv178 = trunc i32 %and177 to i8
  %120 = load ptr, ptr %s.addr, align 8
  %pending_buf179 = getelementptr inbounds %struct.internal_state, ptr %120, i32 0, i32 2
  %121 = load ptr, ptr %pending_buf179, align 8
  %122 = load ptr, ptr %s.addr, align 8
  %pending180 = getelementptr inbounds %struct.internal_state, ptr %122, i32 0, i32 5
  %123 = load i32, ptr %pending180, align 8
  %inc181 = add nsw i32 %123, 1
  store i32 %inc181, ptr %pending180, align 8
  %idxprom182 = sext i32 %123 to i64
  %arrayidx183 = getelementptr inbounds i8, ptr %121, i64 %idxprom182
  store i8 %conv178, ptr %arrayidx183, align 1
  %124 = load ptr, ptr %s.addr, align 8
  %bi_buf184 = getelementptr inbounds %struct.internal_state, ptr %124, i32 0, i32 55
  %125 = load i16, ptr %bi_buf184, align 8
  %conv185 = zext i16 %125 to i32
  %shr186 = ashr i32 %conv185, 8
  %conv187 = trunc i32 %shr186 to i8
  %126 = load ptr, ptr %s.addr, align 8
  %pending_buf188 = getelementptr inbounds %struct.internal_state, ptr %126, i32 0, i32 2
  %127 = load ptr, ptr %pending_buf188, align 8
  %128 = load ptr, ptr %s.addr, align 8
  %pending189 = getelementptr inbounds %struct.internal_state, ptr %128, i32 0, i32 5
  %129 = load i32, ptr %pending189, align 8
  %inc190 = add nsw i32 %129, 1
  store i32 %inc190, ptr %pending189, align 8
  %idxprom191 = sext i32 %129 to i64
  %arrayidx192 = getelementptr inbounds i8, ptr %127, i64 %idxprom191
  store i8 %conv187, ptr %arrayidx192, align 1
  %130 = load i32, ptr %val164, align 4
  %conv193 = trunc i32 %130 to i16
  %conv194 = zext i16 %conv193 to i32
  %131 = load ptr, ptr %s.addr, align 8
  %bi_valid195 = getelementptr inbounds %struct.internal_state, ptr %131, i32 0, i32 56
  %132 = load i32, ptr %bi_valid195, align 4
  %conv196 = sext i32 %132 to i64
  %sub197 = sub i64 16, %conv196
  %sh_prom198 = trunc i64 %sub197 to i32
  %shr199 = ashr i32 %conv194, %sh_prom198
  %conv200 = trunc i32 %shr199 to i16
  %133 = load ptr, ptr %s.addr, align 8
  %bi_buf201 = getelementptr inbounds %struct.internal_state, ptr %133, i32 0, i32 55
  store i16 %conv200, ptr %bi_buf201, align 8
  %134 = load i32, ptr %len154, align 4
  %conv202 = sext i32 %134 to i64
  %sub203 = sub i64 %conv202, 16
  %135 = load ptr, ptr %s.addr, align 8
  %bi_valid204 = getelementptr inbounds %struct.internal_state, ptr %135, i32 0, i32 56
  %136 = load i32, ptr %bi_valid204, align 4
  %conv205 = sext i32 %136 to i64
  %add206 = add i64 %conv205, %sub203
  %conv207 = trunc i64 %add206 to i32
  store i32 %conv207, ptr %bi_valid204, align 4
  br label %if.end221

if.else208:                                       ; preds = %if.end153
  %137 = load ptr, ptr %s.addr, align 8
  %bl_tree209 = getelementptr inbounds %struct.internal_state, ptr %137, i32 0, i32 38
  %arrayidx210 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree209, i64 0, i64 16
  %fc211 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx210, i32 0, i32 0
  %138 = load i16, ptr %fc211, align 4
  %conv212 = zext i16 %138 to i32
  %139 = load ptr, ptr %s.addr, align 8
  %bi_valid213 = getelementptr inbounds %struct.internal_state, ptr %139, i32 0, i32 56
  %140 = load i32, ptr %bi_valid213, align 4
  %shl214 = shl i32 %conv212, %140
  %141 = load ptr, ptr %s.addr, align 8
  %bi_buf215 = getelementptr inbounds %struct.internal_state, ptr %141, i32 0, i32 55
  %142 = load i16, ptr %bi_buf215, align 8
  %conv216 = zext i16 %142 to i32
  %or217 = or i32 %conv216, %shl214
  %conv218 = trunc i32 %or217 to i16
  store i16 %conv218, ptr %bi_buf215, align 8
  %143 = load i32, ptr %len154, align 4
  %144 = load ptr, ptr %s.addr, align 8
  %bi_valid219 = getelementptr inbounds %struct.internal_state, ptr %144, i32 0, i32 56
  %145 = load i32, ptr %bi_valid219, align 4
  %add220 = add nsw i32 %145, %143
  store i32 %add220, ptr %bi_valid219, align 4
  br label %if.end221

if.end221:                                        ; preds = %if.else208, %if.then163
  store i32 2, ptr %len222, align 4
  %146 = load ptr, ptr %s.addr, align 8
  %bi_valid223 = getelementptr inbounds %struct.internal_state, ptr %146, i32 0, i32 56
  %147 = load i32, ptr %bi_valid223, align 4
  %148 = load i32, ptr %len222, align 4
  %sub224 = sub nsw i32 16, %148
  %cmp225 = icmp sgt i32 %147, %sub224
  br i1 %cmp225, label %if.then227, label %if.else269

if.then227:                                       ; preds = %if.end221
  %149 = load i32, ptr %count, align 4
  %sub229 = sub nsw i32 %149, 3
  store i32 %sub229, ptr %val228, align 4
  %150 = load i32, ptr %val228, align 4
  %151 = load ptr, ptr %s.addr, align 8
  %bi_valid230 = getelementptr inbounds %struct.internal_state, ptr %151, i32 0, i32 56
  %152 = load i32, ptr %bi_valid230, align 4
  %shl231 = shl i32 %150, %152
  %153 = load ptr, ptr %s.addr, align 8
  %bi_buf232 = getelementptr inbounds %struct.internal_state, ptr %153, i32 0, i32 55
  %154 = load i16, ptr %bi_buf232, align 8
  %conv233 = zext i16 %154 to i32
  %or234 = or i32 %conv233, %shl231
  %conv235 = trunc i32 %or234 to i16
  store i16 %conv235, ptr %bi_buf232, align 8
  %155 = load ptr, ptr %s.addr, align 8
  %bi_buf236 = getelementptr inbounds %struct.internal_state, ptr %155, i32 0, i32 55
  %156 = load i16, ptr %bi_buf236, align 8
  %conv237 = zext i16 %156 to i32
  %and238 = and i32 %conv237, 255
  %conv239 = trunc i32 %and238 to i8
  %157 = load ptr, ptr %s.addr, align 8
  %pending_buf240 = getelementptr inbounds %struct.internal_state, ptr %157, i32 0, i32 2
  %158 = load ptr, ptr %pending_buf240, align 8
  %159 = load ptr, ptr %s.addr, align 8
  %pending241 = getelementptr inbounds %struct.internal_state, ptr %159, i32 0, i32 5
  %160 = load i32, ptr %pending241, align 8
  %inc242 = add nsw i32 %160, 1
  store i32 %inc242, ptr %pending241, align 8
  %idxprom243 = sext i32 %160 to i64
  %arrayidx244 = getelementptr inbounds i8, ptr %158, i64 %idxprom243
  store i8 %conv239, ptr %arrayidx244, align 1
  %161 = load ptr, ptr %s.addr, align 8
  %bi_buf245 = getelementptr inbounds %struct.internal_state, ptr %161, i32 0, i32 55
  %162 = load i16, ptr %bi_buf245, align 8
  %conv246 = zext i16 %162 to i32
  %shr247 = ashr i32 %conv246, 8
  %conv248 = trunc i32 %shr247 to i8
  %163 = load ptr, ptr %s.addr, align 8
  %pending_buf249 = getelementptr inbounds %struct.internal_state, ptr %163, i32 0, i32 2
  %164 = load ptr, ptr %pending_buf249, align 8
  %165 = load ptr, ptr %s.addr, align 8
  %pending250 = getelementptr inbounds %struct.internal_state, ptr %165, i32 0, i32 5
  %166 = load i32, ptr %pending250, align 8
  %inc251 = add nsw i32 %166, 1
  store i32 %inc251, ptr %pending250, align 8
  %idxprom252 = sext i32 %166 to i64
  %arrayidx253 = getelementptr inbounds i8, ptr %164, i64 %idxprom252
  store i8 %conv248, ptr %arrayidx253, align 1
  %167 = load i32, ptr %val228, align 4
  %conv254 = trunc i32 %167 to i16
  %conv255 = zext i16 %conv254 to i32
  %168 = load ptr, ptr %s.addr, align 8
  %bi_valid256 = getelementptr inbounds %struct.internal_state, ptr %168, i32 0, i32 56
  %169 = load i32, ptr %bi_valid256, align 4
  %conv257 = sext i32 %169 to i64
  %sub258 = sub i64 16, %conv257
  %sh_prom259 = trunc i64 %sub258 to i32
  %shr260 = ashr i32 %conv255, %sh_prom259
  %conv261 = trunc i32 %shr260 to i16
  %170 = load ptr, ptr %s.addr, align 8
  %bi_buf262 = getelementptr inbounds %struct.internal_state, ptr %170, i32 0, i32 55
  store i16 %conv261, ptr %bi_buf262, align 8
  %171 = load i32, ptr %len222, align 4
  %conv263 = sext i32 %171 to i64
  %sub264 = sub i64 %conv263, 16
  %172 = load ptr, ptr %s.addr, align 8
  %bi_valid265 = getelementptr inbounds %struct.internal_state, ptr %172, i32 0, i32 56
  %173 = load i32, ptr %bi_valid265, align 4
  %conv266 = sext i32 %173 to i64
  %add267 = add i64 %conv266, %sub264
  %conv268 = trunc i64 %add267 to i32
  store i32 %conv268, ptr %bi_valid265, align 4
  br label %if.end279

if.else269:                                       ; preds = %if.end221
  %174 = load i32, ptr %count, align 4
  %sub270 = sub nsw i32 %174, 3
  %175 = load ptr, ptr %s.addr, align 8
  %bi_valid271 = getelementptr inbounds %struct.internal_state, ptr %175, i32 0, i32 56
  %176 = load i32, ptr %bi_valid271, align 4
  %shl272 = shl i32 %sub270, %176
  %177 = load ptr, ptr %s.addr, align 8
  %bi_buf273 = getelementptr inbounds %struct.internal_state, ptr %177, i32 0, i32 55
  %178 = load i16, ptr %bi_buf273, align 8
  %conv274 = zext i16 %178 to i32
  %or275 = or i32 %conv274, %shl272
  %conv276 = trunc i32 %or275 to i16
  store i16 %conv276, ptr %bi_buf273, align 8
  %179 = load i32, ptr %len222, align 4
  %180 = load ptr, ptr %s.addr, align 8
  %bi_valid277 = getelementptr inbounds %struct.internal_state, ptr %180, i32 0, i32 56
  %181 = load i32, ptr %bi_valid277, align 4
  %add278 = add nsw i32 %181, %179
  store i32 %add278, ptr %bi_valid277, align 4
  br label %if.end279

if.end279:                                        ; preds = %if.else269, %if.then227
  br label %if.end538

if.else280:                                       ; preds = %if.else74
  %182 = load i32, ptr %count, align 4
  %cmp281 = icmp sle i32 %182, 10
  br i1 %cmp281, label %if.then283, label %if.else410

if.then283:                                       ; preds = %if.else280
  %183 = load ptr, ptr %s.addr, align 8
  %bl_tree285 = getelementptr inbounds %struct.internal_state, ptr %183, i32 0, i32 38
  %arrayidx286 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree285, i64 0, i64 17
  %dl287 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx286, i32 0, i32 1
  %184 = load i16, ptr %dl287, align 2
  %conv288 = zext i16 %184 to i32
  store i32 %conv288, ptr %len284, align 4
  %185 = load ptr, ptr %s.addr, align 8
  %bi_valid289 = getelementptr inbounds %struct.internal_state, ptr %185, i32 0, i32 56
  %186 = load i32, ptr %bi_valid289, align 4
  %187 = load i32, ptr %len284, align 4
  %sub290 = sub nsw i32 16, %187
  %cmp291 = icmp sgt i32 %186, %sub290
  br i1 %cmp291, label %if.then293, label %if.else338

if.then293:                                       ; preds = %if.then283
  %188 = load ptr, ptr %s.addr, align 8
  %bl_tree295 = getelementptr inbounds %struct.internal_state, ptr %188, i32 0, i32 38
  %arrayidx296 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree295, i64 0, i64 17
  %fc297 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx296, i32 0, i32 0
  %189 = load i16, ptr %fc297, align 4
  %conv298 = zext i16 %189 to i32
  store i32 %conv298, ptr %val294, align 4
  %190 = load i32, ptr %val294, align 4
  %191 = load ptr, ptr %s.addr, align 8
  %bi_valid299 = getelementptr inbounds %struct.internal_state, ptr %191, i32 0, i32 56
  %192 = load i32, ptr %bi_valid299, align 4
  %shl300 = shl i32 %190, %192
  %193 = load ptr, ptr %s.addr, align 8
  %bi_buf301 = getelementptr inbounds %struct.internal_state, ptr %193, i32 0, i32 55
  %194 = load i16, ptr %bi_buf301, align 8
  %conv302 = zext i16 %194 to i32
  %or303 = or i32 %conv302, %shl300
  %conv304 = trunc i32 %or303 to i16
  store i16 %conv304, ptr %bi_buf301, align 8
  %195 = load ptr, ptr %s.addr, align 8
  %bi_buf305 = getelementptr inbounds %struct.internal_state, ptr %195, i32 0, i32 55
  %196 = load i16, ptr %bi_buf305, align 8
  %conv306 = zext i16 %196 to i32
  %and307 = and i32 %conv306, 255
  %conv308 = trunc i32 %and307 to i8
  %197 = load ptr, ptr %s.addr, align 8
  %pending_buf309 = getelementptr inbounds %struct.internal_state, ptr %197, i32 0, i32 2
  %198 = load ptr, ptr %pending_buf309, align 8
  %199 = load ptr, ptr %s.addr, align 8
  %pending310 = getelementptr inbounds %struct.internal_state, ptr %199, i32 0, i32 5
  %200 = load i32, ptr %pending310, align 8
  %inc311 = add nsw i32 %200, 1
  store i32 %inc311, ptr %pending310, align 8
  %idxprom312 = sext i32 %200 to i64
  %arrayidx313 = getelementptr inbounds i8, ptr %198, i64 %idxprom312
  store i8 %conv308, ptr %arrayidx313, align 1
  %201 = load ptr, ptr %s.addr, align 8
  %bi_buf314 = getelementptr inbounds %struct.internal_state, ptr %201, i32 0, i32 55
  %202 = load i16, ptr %bi_buf314, align 8
  %conv315 = zext i16 %202 to i32
  %shr316 = ashr i32 %conv315, 8
  %conv317 = trunc i32 %shr316 to i8
  %203 = load ptr, ptr %s.addr, align 8
  %pending_buf318 = getelementptr inbounds %struct.internal_state, ptr %203, i32 0, i32 2
  %204 = load ptr, ptr %pending_buf318, align 8
  %205 = load ptr, ptr %s.addr, align 8
  %pending319 = getelementptr inbounds %struct.internal_state, ptr %205, i32 0, i32 5
  %206 = load i32, ptr %pending319, align 8
  %inc320 = add nsw i32 %206, 1
  store i32 %inc320, ptr %pending319, align 8
  %idxprom321 = sext i32 %206 to i64
  %arrayidx322 = getelementptr inbounds i8, ptr %204, i64 %idxprom321
  store i8 %conv317, ptr %arrayidx322, align 1
  %207 = load i32, ptr %val294, align 4
  %conv323 = trunc i32 %207 to i16
  %conv324 = zext i16 %conv323 to i32
  %208 = load ptr, ptr %s.addr, align 8
  %bi_valid325 = getelementptr inbounds %struct.internal_state, ptr %208, i32 0, i32 56
  %209 = load i32, ptr %bi_valid325, align 4
  %conv326 = sext i32 %209 to i64
  %sub327 = sub i64 16, %conv326
  %sh_prom328 = trunc i64 %sub327 to i32
  %shr329 = ashr i32 %conv324, %sh_prom328
  %conv330 = trunc i32 %shr329 to i16
  %210 = load ptr, ptr %s.addr, align 8
  %bi_buf331 = getelementptr inbounds %struct.internal_state, ptr %210, i32 0, i32 55
  store i16 %conv330, ptr %bi_buf331, align 8
  %211 = load i32, ptr %len284, align 4
  %conv332 = sext i32 %211 to i64
  %sub333 = sub i64 %conv332, 16
  %212 = load ptr, ptr %s.addr, align 8
  %bi_valid334 = getelementptr inbounds %struct.internal_state, ptr %212, i32 0, i32 56
  %213 = load i32, ptr %bi_valid334, align 4
  %conv335 = sext i32 %213 to i64
  %add336 = add i64 %conv335, %sub333
  %conv337 = trunc i64 %add336 to i32
  store i32 %conv337, ptr %bi_valid334, align 4
  br label %if.end351

if.else338:                                       ; preds = %if.then283
  %214 = load ptr, ptr %s.addr, align 8
  %bl_tree339 = getelementptr inbounds %struct.internal_state, ptr %214, i32 0, i32 38
  %arrayidx340 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree339, i64 0, i64 17
  %fc341 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx340, i32 0, i32 0
  %215 = load i16, ptr %fc341, align 4
  %conv342 = zext i16 %215 to i32
  %216 = load ptr, ptr %s.addr, align 8
  %bi_valid343 = getelementptr inbounds %struct.internal_state, ptr %216, i32 0, i32 56
  %217 = load i32, ptr %bi_valid343, align 4
  %shl344 = shl i32 %conv342, %217
  %218 = load ptr, ptr %s.addr, align 8
  %bi_buf345 = getelementptr inbounds %struct.internal_state, ptr %218, i32 0, i32 55
  %219 = load i16, ptr %bi_buf345, align 8
  %conv346 = zext i16 %219 to i32
  %or347 = or i32 %conv346, %shl344
  %conv348 = trunc i32 %or347 to i16
  store i16 %conv348, ptr %bi_buf345, align 8
  %220 = load i32, ptr %len284, align 4
  %221 = load ptr, ptr %s.addr, align 8
  %bi_valid349 = getelementptr inbounds %struct.internal_state, ptr %221, i32 0, i32 56
  %222 = load i32, ptr %bi_valid349, align 4
  %add350 = add nsw i32 %222, %220
  store i32 %add350, ptr %bi_valid349, align 4
  br label %if.end351

if.end351:                                        ; preds = %if.else338, %if.then293
  store i32 3, ptr %len352, align 4
  %223 = load ptr, ptr %s.addr, align 8
  %bi_valid353 = getelementptr inbounds %struct.internal_state, ptr %223, i32 0, i32 56
  %224 = load i32, ptr %bi_valid353, align 4
  %225 = load i32, ptr %len352, align 4
  %sub354 = sub nsw i32 16, %225
  %cmp355 = icmp sgt i32 %224, %sub354
  br i1 %cmp355, label %if.then357, label %if.else399

if.then357:                                       ; preds = %if.end351
  %226 = load i32, ptr %count, align 4
  %sub359 = sub nsw i32 %226, 3
  store i32 %sub359, ptr %val358, align 4
  %227 = load i32, ptr %val358, align 4
  %228 = load ptr, ptr %s.addr, align 8
  %bi_valid360 = getelementptr inbounds %struct.internal_state, ptr %228, i32 0, i32 56
  %229 = load i32, ptr %bi_valid360, align 4
  %shl361 = shl i32 %227, %229
  %230 = load ptr, ptr %s.addr, align 8
  %bi_buf362 = getelementptr inbounds %struct.internal_state, ptr %230, i32 0, i32 55
  %231 = load i16, ptr %bi_buf362, align 8
  %conv363 = zext i16 %231 to i32
  %or364 = or i32 %conv363, %shl361
  %conv365 = trunc i32 %or364 to i16
  store i16 %conv365, ptr %bi_buf362, align 8
  %232 = load ptr, ptr %s.addr, align 8
  %bi_buf366 = getelementptr inbounds %struct.internal_state, ptr %232, i32 0, i32 55
  %233 = load i16, ptr %bi_buf366, align 8
  %conv367 = zext i16 %233 to i32
  %and368 = and i32 %conv367, 255
  %conv369 = trunc i32 %and368 to i8
  %234 = load ptr, ptr %s.addr, align 8
  %pending_buf370 = getelementptr inbounds %struct.internal_state, ptr %234, i32 0, i32 2
  %235 = load ptr, ptr %pending_buf370, align 8
  %236 = load ptr, ptr %s.addr, align 8
  %pending371 = getelementptr inbounds %struct.internal_state, ptr %236, i32 0, i32 5
  %237 = load i32, ptr %pending371, align 8
  %inc372 = add nsw i32 %237, 1
  store i32 %inc372, ptr %pending371, align 8
  %idxprom373 = sext i32 %237 to i64
  %arrayidx374 = getelementptr inbounds i8, ptr %235, i64 %idxprom373
  store i8 %conv369, ptr %arrayidx374, align 1
  %238 = load ptr, ptr %s.addr, align 8
  %bi_buf375 = getelementptr inbounds %struct.internal_state, ptr %238, i32 0, i32 55
  %239 = load i16, ptr %bi_buf375, align 8
  %conv376 = zext i16 %239 to i32
  %shr377 = ashr i32 %conv376, 8
  %conv378 = trunc i32 %shr377 to i8
  %240 = load ptr, ptr %s.addr, align 8
  %pending_buf379 = getelementptr inbounds %struct.internal_state, ptr %240, i32 0, i32 2
  %241 = load ptr, ptr %pending_buf379, align 8
  %242 = load ptr, ptr %s.addr, align 8
  %pending380 = getelementptr inbounds %struct.internal_state, ptr %242, i32 0, i32 5
  %243 = load i32, ptr %pending380, align 8
  %inc381 = add nsw i32 %243, 1
  store i32 %inc381, ptr %pending380, align 8
  %idxprom382 = sext i32 %243 to i64
  %arrayidx383 = getelementptr inbounds i8, ptr %241, i64 %idxprom382
  store i8 %conv378, ptr %arrayidx383, align 1
  %244 = load i32, ptr %val358, align 4
  %conv384 = trunc i32 %244 to i16
  %conv385 = zext i16 %conv384 to i32
  %245 = load ptr, ptr %s.addr, align 8
  %bi_valid386 = getelementptr inbounds %struct.internal_state, ptr %245, i32 0, i32 56
  %246 = load i32, ptr %bi_valid386, align 4
  %conv387 = sext i32 %246 to i64
  %sub388 = sub i64 16, %conv387
  %sh_prom389 = trunc i64 %sub388 to i32
  %shr390 = ashr i32 %conv385, %sh_prom389
  %conv391 = trunc i32 %shr390 to i16
  %247 = load ptr, ptr %s.addr, align 8
  %bi_buf392 = getelementptr inbounds %struct.internal_state, ptr %247, i32 0, i32 55
  store i16 %conv391, ptr %bi_buf392, align 8
  %248 = load i32, ptr %len352, align 4
  %conv393 = sext i32 %248 to i64
  %sub394 = sub i64 %conv393, 16
  %249 = load ptr, ptr %s.addr, align 8
  %bi_valid395 = getelementptr inbounds %struct.internal_state, ptr %249, i32 0, i32 56
  %250 = load i32, ptr %bi_valid395, align 4
  %conv396 = sext i32 %250 to i64
  %add397 = add i64 %conv396, %sub394
  %conv398 = trunc i64 %add397 to i32
  store i32 %conv398, ptr %bi_valid395, align 4
  br label %if.end409

if.else399:                                       ; preds = %if.end351
  %251 = load i32, ptr %count, align 4
  %sub400 = sub nsw i32 %251, 3
  %252 = load ptr, ptr %s.addr, align 8
  %bi_valid401 = getelementptr inbounds %struct.internal_state, ptr %252, i32 0, i32 56
  %253 = load i32, ptr %bi_valid401, align 4
  %shl402 = shl i32 %sub400, %253
  %254 = load ptr, ptr %s.addr, align 8
  %bi_buf403 = getelementptr inbounds %struct.internal_state, ptr %254, i32 0, i32 55
  %255 = load i16, ptr %bi_buf403, align 8
  %conv404 = zext i16 %255 to i32
  %or405 = or i32 %conv404, %shl402
  %conv406 = trunc i32 %or405 to i16
  store i16 %conv406, ptr %bi_buf403, align 8
  %256 = load i32, ptr %len352, align 4
  %257 = load ptr, ptr %s.addr, align 8
  %bi_valid407 = getelementptr inbounds %struct.internal_state, ptr %257, i32 0, i32 56
  %258 = load i32, ptr %bi_valid407, align 4
  %add408 = add nsw i32 %258, %256
  store i32 %add408, ptr %bi_valid407, align 4
  br label %if.end409

if.end409:                                        ; preds = %if.else399, %if.then357
  br label %if.end537

if.else410:                                       ; preds = %if.else280
  %259 = load ptr, ptr %s.addr, align 8
  %bl_tree412 = getelementptr inbounds %struct.internal_state, ptr %259, i32 0, i32 38
  %arrayidx413 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree412, i64 0, i64 18
  %dl414 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx413, i32 0, i32 1
  %260 = load i16, ptr %dl414, align 2
  %conv415 = zext i16 %260 to i32
  store i32 %conv415, ptr %len411, align 4
  %261 = load ptr, ptr %s.addr, align 8
  %bi_valid416 = getelementptr inbounds %struct.internal_state, ptr %261, i32 0, i32 56
  %262 = load i32, ptr %bi_valid416, align 4
  %263 = load i32, ptr %len411, align 4
  %sub417 = sub nsw i32 16, %263
  %cmp418 = icmp sgt i32 %262, %sub417
  br i1 %cmp418, label %if.then420, label %if.else465

if.then420:                                       ; preds = %if.else410
  %264 = load ptr, ptr %s.addr, align 8
  %bl_tree422 = getelementptr inbounds %struct.internal_state, ptr %264, i32 0, i32 38
  %arrayidx423 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree422, i64 0, i64 18
  %fc424 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx423, i32 0, i32 0
  %265 = load i16, ptr %fc424, align 4
  %conv425 = zext i16 %265 to i32
  store i32 %conv425, ptr %val421, align 4
  %266 = load i32, ptr %val421, align 4
  %267 = load ptr, ptr %s.addr, align 8
  %bi_valid426 = getelementptr inbounds %struct.internal_state, ptr %267, i32 0, i32 56
  %268 = load i32, ptr %bi_valid426, align 4
  %shl427 = shl i32 %266, %268
  %269 = load ptr, ptr %s.addr, align 8
  %bi_buf428 = getelementptr inbounds %struct.internal_state, ptr %269, i32 0, i32 55
  %270 = load i16, ptr %bi_buf428, align 8
  %conv429 = zext i16 %270 to i32
  %or430 = or i32 %conv429, %shl427
  %conv431 = trunc i32 %or430 to i16
  store i16 %conv431, ptr %bi_buf428, align 8
  %271 = load ptr, ptr %s.addr, align 8
  %bi_buf432 = getelementptr inbounds %struct.internal_state, ptr %271, i32 0, i32 55
  %272 = load i16, ptr %bi_buf432, align 8
  %conv433 = zext i16 %272 to i32
  %and434 = and i32 %conv433, 255
  %conv435 = trunc i32 %and434 to i8
  %273 = load ptr, ptr %s.addr, align 8
  %pending_buf436 = getelementptr inbounds %struct.internal_state, ptr %273, i32 0, i32 2
  %274 = load ptr, ptr %pending_buf436, align 8
  %275 = load ptr, ptr %s.addr, align 8
  %pending437 = getelementptr inbounds %struct.internal_state, ptr %275, i32 0, i32 5
  %276 = load i32, ptr %pending437, align 8
  %inc438 = add nsw i32 %276, 1
  store i32 %inc438, ptr %pending437, align 8
  %idxprom439 = sext i32 %276 to i64
  %arrayidx440 = getelementptr inbounds i8, ptr %274, i64 %idxprom439
  store i8 %conv435, ptr %arrayidx440, align 1
  %277 = load ptr, ptr %s.addr, align 8
  %bi_buf441 = getelementptr inbounds %struct.internal_state, ptr %277, i32 0, i32 55
  %278 = load i16, ptr %bi_buf441, align 8
  %conv442 = zext i16 %278 to i32
  %shr443 = ashr i32 %conv442, 8
  %conv444 = trunc i32 %shr443 to i8
  %279 = load ptr, ptr %s.addr, align 8
  %pending_buf445 = getelementptr inbounds %struct.internal_state, ptr %279, i32 0, i32 2
  %280 = load ptr, ptr %pending_buf445, align 8
  %281 = load ptr, ptr %s.addr, align 8
  %pending446 = getelementptr inbounds %struct.internal_state, ptr %281, i32 0, i32 5
  %282 = load i32, ptr %pending446, align 8
  %inc447 = add nsw i32 %282, 1
  store i32 %inc447, ptr %pending446, align 8
  %idxprom448 = sext i32 %282 to i64
  %arrayidx449 = getelementptr inbounds i8, ptr %280, i64 %idxprom448
  store i8 %conv444, ptr %arrayidx449, align 1
  %283 = load i32, ptr %val421, align 4
  %conv450 = trunc i32 %283 to i16
  %conv451 = zext i16 %conv450 to i32
  %284 = load ptr, ptr %s.addr, align 8
  %bi_valid452 = getelementptr inbounds %struct.internal_state, ptr %284, i32 0, i32 56
  %285 = load i32, ptr %bi_valid452, align 4
  %conv453 = sext i32 %285 to i64
  %sub454 = sub i64 16, %conv453
  %sh_prom455 = trunc i64 %sub454 to i32
  %shr456 = ashr i32 %conv451, %sh_prom455
  %conv457 = trunc i32 %shr456 to i16
  %286 = load ptr, ptr %s.addr, align 8
  %bi_buf458 = getelementptr inbounds %struct.internal_state, ptr %286, i32 0, i32 55
  store i16 %conv457, ptr %bi_buf458, align 8
  %287 = load i32, ptr %len411, align 4
  %conv459 = sext i32 %287 to i64
  %sub460 = sub i64 %conv459, 16
  %288 = load ptr, ptr %s.addr, align 8
  %bi_valid461 = getelementptr inbounds %struct.internal_state, ptr %288, i32 0, i32 56
  %289 = load i32, ptr %bi_valid461, align 4
  %conv462 = sext i32 %289 to i64
  %add463 = add i64 %conv462, %sub460
  %conv464 = trunc i64 %add463 to i32
  store i32 %conv464, ptr %bi_valid461, align 4
  br label %if.end478

if.else465:                                       ; preds = %if.else410
  %290 = load ptr, ptr %s.addr, align 8
  %bl_tree466 = getelementptr inbounds %struct.internal_state, ptr %290, i32 0, i32 38
  %arrayidx467 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree466, i64 0, i64 18
  %fc468 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx467, i32 0, i32 0
  %291 = load i16, ptr %fc468, align 4
  %conv469 = zext i16 %291 to i32
  %292 = load ptr, ptr %s.addr, align 8
  %bi_valid470 = getelementptr inbounds %struct.internal_state, ptr %292, i32 0, i32 56
  %293 = load i32, ptr %bi_valid470, align 4
  %shl471 = shl i32 %conv469, %293
  %294 = load ptr, ptr %s.addr, align 8
  %bi_buf472 = getelementptr inbounds %struct.internal_state, ptr %294, i32 0, i32 55
  %295 = load i16, ptr %bi_buf472, align 8
  %conv473 = zext i16 %295 to i32
  %or474 = or i32 %conv473, %shl471
  %conv475 = trunc i32 %or474 to i16
  store i16 %conv475, ptr %bi_buf472, align 8
  %296 = load i32, ptr %len411, align 4
  %297 = load ptr, ptr %s.addr, align 8
  %bi_valid476 = getelementptr inbounds %struct.internal_state, ptr %297, i32 0, i32 56
  %298 = load i32, ptr %bi_valid476, align 4
  %add477 = add nsw i32 %298, %296
  store i32 %add477, ptr %bi_valid476, align 4
  br label %if.end478

if.end478:                                        ; preds = %if.else465, %if.then420
  store i32 7, ptr %len479, align 4
  %299 = load ptr, ptr %s.addr, align 8
  %bi_valid480 = getelementptr inbounds %struct.internal_state, ptr %299, i32 0, i32 56
  %300 = load i32, ptr %bi_valid480, align 4
  %301 = load i32, ptr %len479, align 4
  %sub481 = sub nsw i32 16, %301
  %cmp482 = icmp sgt i32 %300, %sub481
  br i1 %cmp482, label %if.then484, label %if.else526

if.then484:                                       ; preds = %if.end478
  %302 = load i32, ptr %count, align 4
  %sub486 = sub nsw i32 %302, 11
  store i32 %sub486, ptr %val485, align 4
  %303 = load i32, ptr %val485, align 4
  %304 = load ptr, ptr %s.addr, align 8
  %bi_valid487 = getelementptr inbounds %struct.internal_state, ptr %304, i32 0, i32 56
  %305 = load i32, ptr %bi_valid487, align 4
  %shl488 = shl i32 %303, %305
  %306 = load ptr, ptr %s.addr, align 8
  %bi_buf489 = getelementptr inbounds %struct.internal_state, ptr %306, i32 0, i32 55
  %307 = load i16, ptr %bi_buf489, align 8
  %conv490 = zext i16 %307 to i32
  %or491 = or i32 %conv490, %shl488
  %conv492 = trunc i32 %or491 to i16
  store i16 %conv492, ptr %bi_buf489, align 8
  %308 = load ptr, ptr %s.addr, align 8
  %bi_buf493 = getelementptr inbounds %struct.internal_state, ptr %308, i32 0, i32 55
  %309 = load i16, ptr %bi_buf493, align 8
  %conv494 = zext i16 %309 to i32
  %and495 = and i32 %conv494, 255
  %conv496 = trunc i32 %and495 to i8
  %310 = load ptr, ptr %s.addr, align 8
  %pending_buf497 = getelementptr inbounds %struct.internal_state, ptr %310, i32 0, i32 2
  %311 = load ptr, ptr %pending_buf497, align 8
  %312 = load ptr, ptr %s.addr, align 8
  %pending498 = getelementptr inbounds %struct.internal_state, ptr %312, i32 0, i32 5
  %313 = load i32, ptr %pending498, align 8
  %inc499 = add nsw i32 %313, 1
  store i32 %inc499, ptr %pending498, align 8
  %idxprom500 = sext i32 %313 to i64
  %arrayidx501 = getelementptr inbounds i8, ptr %311, i64 %idxprom500
  store i8 %conv496, ptr %arrayidx501, align 1
  %314 = load ptr, ptr %s.addr, align 8
  %bi_buf502 = getelementptr inbounds %struct.internal_state, ptr %314, i32 0, i32 55
  %315 = load i16, ptr %bi_buf502, align 8
  %conv503 = zext i16 %315 to i32
  %shr504 = ashr i32 %conv503, 8
  %conv505 = trunc i32 %shr504 to i8
  %316 = load ptr, ptr %s.addr, align 8
  %pending_buf506 = getelementptr inbounds %struct.internal_state, ptr %316, i32 0, i32 2
  %317 = load ptr, ptr %pending_buf506, align 8
  %318 = load ptr, ptr %s.addr, align 8
  %pending507 = getelementptr inbounds %struct.internal_state, ptr %318, i32 0, i32 5
  %319 = load i32, ptr %pending507, align 8
  %inc508 = add nsw i32 %319, 1
  store i32 %inc508, ptr %pending507, align 8
  %idxprom509 = sext i32 %319 to i64
  %arrayidx510 = getelementptr inbounds i8, ptr %317, i64 %idxprom509
  store i8 %conv505, ptr %arrayidx510, align 1
  %320 = load i32, ptr %val485, align 4
  %conv511 = trunc i32 %320 to i16
  %conv512 = zext i16 %conv511 to i32
  %321 = load ptr, ptr %s.addr, align 8
  %bi_valid513 = getelementptr inbounds %struct.internal_state, ptr %321, i32 0, i32 56
  %322 = load i32, ptr %bi_valid513, align 4
  %conv514 = sext i32 %322 to i64
  %sub515 = sub i64 16, %conv514
  %sh_prom516 = trunc i64 %sub515 to i32
  %shr517 = ashr i32 %conv512, %sh_prom516
  %conv518 = trunc i32 %shr517 to i16
  %323 = load ptr, ptr %s.addr, align 8
  %bi_buf519 = getelementptr inbounds %struct.internal_state, ptr %323, i32 0, i32 55
  store i16 %conv518, ptr %bi_buf519, align 8
  %324 = load i32, ptr %len479, align 4
  %conv520 = sext i32 %324 to i64
  %sub521 = sub i64 %conv520, 16
  %325 = load ptr, ptr %s.addr, align 8
  %bi_valid522 = getelementptr inbounds %struct.internal_state, ptr %325, i32 0, i32 56
  %326 = load i32, ptr %bi_valid522, align 4
  %conv523 = sext i32 %326 to i64
  %add524 = add i64 %conv523, %sub521
  %conv525 = trunc i64 %add524 to i32
  store i32 %conv525, ptr %bi_valid522, align 4
  br label %if.end536

if.else526:                                       ; preds = %if.end478
  %327 = load i32, ptr %count, align 4
  %sub527 = sub nsw i32 %327, 11
  %328 = load ptr, ptr %s.addr, align 8
  %bi_valid528 = getelementptr inbounds %struct.internal_state, ptr %328, i32 0, i32 56
  %329 = load i32, ptr %bi_valid528, align 4
  %shl529 = shl i32 %sub527, %329
  %330 = load ptr, ptr %s.addr, align 8
  %bi_buf530 = getelementptr inbounds %struct.internal_state, ptr %330, i32 0, i32 55
  %331 = load i16, ptr %bi_buf530, align 8
  %conv531 = zext i16 %331 to i32
  %or532 = or i32 %conv531, %shl529
  %conv533 = trunc i32 %or532 to i16
  store i16 %conv533, ptr %bi_buf530, align 8
  %332 = load i32, ptr %len479, align 4
  %333 = load ptr, ptr %s.addr, align 8
  %bi_valid534 = getelementptr inbounds %struct.internal_state, ptr %333, i32 0, i32 56
  %334 = load i32, ptr %bi_valid534, align 4
  %add535 = add nsw i32 %334, %332
  store i32 %add535, ptr %bi_valid534, align 4
  br label %if.end536

if.end536:                                        ; preds = %if.else526, %if.then484
  br label %if.end537

if.end537:                                        ; preds = %if.end536, %if.end409
  br label %if.end538

if.end538:                                        ; preds = %if.end537, %if.end279
  br label %if.end539

if.end539:                                        ; preds = %if.end538, %do.end
  br label %if.end540

if.end540:                                        ; preds = %if.end539
  store i32 0, ptr %count, align 4
  %335 = load i32, ptr %curlen, align 4
  store i32 %335, ptr %prevlen, align 4
  %336 = load i32, ptr %nextlen, align 4
  %cmp541 = icmp eq i32 %336, 0
  br i1 %cmp541, label %if.then543, label %if.else544

if.then543:                                       ; preds = %if.end540
  store i32 138, ptr %max_count, align 4
  store i32 3, ptr %min_count, align 4
  br label %if.end550

if.else544:                                       ; preds = %if.end540
  %337 = load i32, ptr %curlen, align 4
  %338 = load i32, ptr %nextlen, align 4
  %cmp545 = icmp eq i32 %337, %338
  br i1 %cmp545, label %if.then547, label %if.else548

if.then547:                                       ; preds = %if.else544
  store i32 6, ptr %max_count, align 4
  store i32 3, ptr %min_count, align 4
  br label %if.end549

if.else548:                                       ; preds = %if.else544
  store i32 7, ptr %max_count, align 4
  store i32 4, ptr %min_count, align 4
  br label %if.end549

if.end549:                                        ; preds = %if.else548, %if.then547
  br label %if.end550

if.end550:                                        ; preds = %if.end549, %if.then543
  br label %for.inc

for.inc:                                          ; preds = %if.end550, %if.then11
  %339 = load i32, ptr %n, align 4
  %inc551 = add nsw i32 %339, 1
  store i32 %inc551, ptr %n, align 4
  br label %for.cond, !llvm.loop !33

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
!33 = distinct !{!33, !7}
