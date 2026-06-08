; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_balanced_score/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-mad_inflate.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-mad/inflate.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.code = type { i8, i8, i16 }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.inflate_state = type { i32, i32, i32, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, ptr, i64, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [2048 x %struct.code] }
%struct.gz_header_s = type { i32, i64, i32, i32, ptr, i32, i32, ptr, i32, ptr, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"1.2.3\00", align 1
@inflate.order = internal constant [19 x i16] [i16 16, i16 17, i16 18, i16 0, i16 8, i16 7, i16 9, i16 6, i16 10, i16 5, i16 11, i16 4, i16 12, i16 3, i16 13, i16 2, i16 14, i16 1, i16 15], align 2
@.str.1 = private unnamed_addr constant [23 x i8] c"incorrect header check\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"unknown compression method\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"invalid window size\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"unknown header flags set\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"header crc mismatch\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"invalid block type\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"invalid stored block lengths\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"too many length or distance symbols\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"invalid code lengths set\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"invalid bit length repeat\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"invalid literal/lengths set\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"invalid distances set\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"incorrect data check\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"incorrect length check\00", align 1
@fixedtables.lenfix = internal constant [512 x %struct.code] [%struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 192 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 160 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 224 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 144 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 208 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 176 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 240 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 200 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 168 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 232 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 152 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 216 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 184 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 248 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 196 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 164 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 228 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 148 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 212 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 180 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 244 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 204 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 172 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 236 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 156 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 220 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 188 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 252 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 194 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 162 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 226 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 146 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 210 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 178 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 242 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 202 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 170 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 234 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 154 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 218 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 186 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 250 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 198 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 166 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 230 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 150 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 214 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 182 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 246 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 206 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 174 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 238 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 158 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 222 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 190 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 254 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 193 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 161 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 225 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 145 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 209 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 177 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 241 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 201 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 169 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 233 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 153 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 217 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 185 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 249 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 197 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 165 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 229 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 149 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 213 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 181 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 245 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 205 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 173 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 237 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 157 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 221 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 189 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 253 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 195 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 163 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 227 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 147 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 211 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 179 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 243 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 203 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 171 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 235 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 155 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 219 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 187 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 251 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 199 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 167 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 231 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 151 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 215 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 183 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 247 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 207 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 175 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 239 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 159 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 223 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 191 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 255 }], align 2
@fixedtables.distfix = internal constant [32 x %struct.code] [%struct.code { i8 16, i8 5, i16 1 }, %struct.code { i8 23, i8 5, i16 257 }, %struct.code { i8 19, i8 5, i16 17 }, %struct.code { i8 27, i8 5, i16 4097 }, %struct.code { i8 17, i8 5, i16 5 }, %struct.code { i8 25, i8 5, i16 1025 }, %struct.code { i8 21, i8 5, i16 65 }, %struct.code { i8 29, i8 5, i16 16385 }, %struct.code { i8 16, i8 5, i16 3 }, %struct.code { i8 24, i8 5, i16 513 }, %struct.code { i8 20, i8 5, i16 33 }, %struct.code { i8 28, i8 5, i16 8193 }, %struct.code { i8 18, i8 5, i16 9 }, %struct.code { i8 26, i8 5, i16 2049 }, %struct.code { i8 22, i8 5, i16 129 }, %struct.code { i8 64, i8 5, i16 0 }, %struct.code { i8 16, i8 5, i16 2 }, %struct.code { i8 23, i8 5, i16 385 }, %struct.code { i8 19, i8 5, i16 25 }, %struct.code { i8 27, i8 5, i16 6145 }, %struct.code { i8 17, i8 5, i16 7 }, %struct.code { i8 25, i8 5, i16 1537 }, %struct.code { i8 21, i8 5, i16 97 }, %struct.code { i8 29, i8 5, i16 24577 }, %struct.code { i8 16, i8 5, i16 4 }, %struct.code { i8 24, i8 5, i16 769 }, %struct.code { i8 20, i8 5, i16 49 }, %struct.code { i8 28, i8 5, i16 12289 }, %struct.code { i8 18, i8 5, i16 13 }, %struct.code { i8 26, i8 5, i16 3073 }, %struct.code { i8 22, i8 5, i16 193 }, %struct.code { i8 64, i8 5, i16 0 }], align 2

; Function Attrs: nounwind ssp uwtable
define i32 @inflateReset(ptr noundef %strm) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state1, align 8
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %strm.addr, align 8
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 7
  %3 = load ptr, ptr %state3, align 8
  store ptr %3, ptr %state, align 8
  %total = getelementptr inbounds %struct.inflate_state, ptr %3, i64 0, i32 7
  store i64 0, ptr %total, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 5
  store i64 0, ptr %total_out, align 8
  %4 = load ptr, ptr %strm.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 2
  store i64 0, ptr %total_in, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 6
  store ptr null, ptr %msg, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 12
  store i64 1, ptr %adler, align 8
  %5 = load ptr, ptr %state, align 8
  store i32 0, ptr %5, align 8
  %last = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 1
  store i32 0, ptr %last, align 4
  %havedict = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 3
  store i32 0, ptr %havedict, align 4
  %dmax = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 5
  store i32 32768, ptr %dmax, align 4
  %6 = load ptr, ptr %state, align 8
  %head = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 8
  store ptr null, ptr %head, align 8
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 10
  store i32 0, ptr %wsize, align 4
  %whave = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 11
  store i32 0, ptr %whave, align 8
  %7 = load ptr, ptr %state, align 8
  %write = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 12
  store i32 0, ptr %write, align 4
  %hold = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 14
  store i64 0, ptr %hold, align 8
  %bits = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 15
  store i32 0, ptr %bits, align 8
  %8 = load ptr, ptr %state, align 8
  %codes = getelementptr inbounds %struct.inflate_state, ptr %8, i64 0, i32 30
  %next = getelementptr inbounds %struct.inflate_state, ptr %8, i64 0, i32 27
  store ptr %codes, ptr %next, align 8
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %8, i64 0, i32 20
  store ptr %codes, ptr %distcode, align 8
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %8, i64 0, i32 19
  store ptr %codes, ptr %lencode, align 8
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ -2, %lor.lhs.false ], [ -2, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflatePrime(ptr noundef %strm, i32 noundef %bits, i32 noundef %value) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %bits.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %bits, ptr %bits.addr, align 4
  store i32 %value, ptr %value.addr, align 4
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state1, align 8
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %strm.addr, align 8
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 7
  %3 = load ptr, ptr %state3, align 8
  store ptr %3, ptr %state, align 8
  %4 = load i32, ptr %bits.addr, align 4
  %cmp4 = icmp sgt i32 %4, 16
  br i1 %cmp4, label %if.then8, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.end
  %5 = load ptr, ptr %state, align 8
  %bits6 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 15
  %6 = load i32, ptr %bits6, align 8
  %7 = load i32, ptr %bits.addr, align 4
  %add = add i32 %6, %7
  %cmp7 = icmp ugt i32 %add, 32
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false5, %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %lor.lhs.false5
  %8 = load i32, ptr %bits.addr, align 4
  %sh_prom = zext i32 %8 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %9 = load i32, ptr %value.addr, align 4
  %10 = trunc i64 %notmask to i32
  %11 = xor i32 %10, -1
  %conv10 = and i32 %9, %11
  store i32 %conv10, ptr %value.addr, align 4
  %12 = load ptr, ptr %state, align 8
  %bits11 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 15
  %13 = load i32, ptr %bits11, align 8
  %shl12 = shl i32 %conv10, %13
  %conv13 = sext i32 %shl12 to i64
  %hold = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 14
  %14 = load i64, ptr %hold, align 8
  %add14 = add i64 %14, %conv13
  store i64 %add14, ptr %hold, align 8
  %15 = load i32, ptr %bits.addr, align 4
  %16 = load ptr, ptr %state, align 8
  %bits15 = getelementptr inbounds %struct.inflate_state, ptr %16, i64 0, i32 15
  %17 = load i32, ptr %bits15, align 8
  %add16 = add i32 %17, %15
  store i32 %add16, ptr %bits15, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.then
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflateInit2_(ptr noundef %strm, i32 noundef %windowBits, ptr noundef %version, i32 noundef %stream_size) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %windowBits.addr = alloca i32, align 4
  %version.addr = alloca ptr, align 8
  %stream_size.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %windowBits, ptr %windowBits.addr, align 4
  store ptr %version, ptr %version.addr, align 8
  store i32 %stream_size, ptr %stream_size.addr, align 4
  %cmp = icmp eq ptr %version, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %version.addr, align 8
  %1 = load i8, ptr %0, align 1
  %cmp2.not = icmp eq i8 %1, 49
  %2 = load i32, ptr %stream_size.addr, align 4
  %cmp5.not = icmp eq i32 %2, 112
  %or.cond = select i1 %cmp2.not, i1 %cmp5.not, i1 false
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %strm.addr, align 8
  %cmp7 = icmp eq ptr %3, null
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %4 = load ptr, ptr %strm.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 6
  store ptr null, ptr %msg, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 8
  %5 = load ptr, ptr %zalloc, align 8
  %cmp11 = icmp eq ptr %5, null
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  %6 = load ptr, ptr %strm.addr, align 8
  %zalloc14 = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 8
  store ptr @zcalloc, ptr %zalloc14, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 10
  store ptr null, ptr %opaque, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10
  %7 = load ptr, ptr %strm.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 9
  %8 = load ptr, ptr %zfree, align 8
  %cmp16 = icmp eq ptr %8, null
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  %9 = load ptr, ptr %strm.addr, align 8
  %zfree19 = getelementptr inbounds %struct.z_stream_s, ptr %9, i64 0, i32 9
  store ptr @zcfree, ptr %zfree19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15
  %10 = load ptr, ptr %strm.addr, align 8
  %zalloc21 = getelementptr inbounds %struct.z_stream_s, ptr %10, i64 0, i32 8
  %11 = load ptr, ptr %zalloc21, align 8
  %opaque22 = getelementptr inbounds %struct.z_stream_s, ptr %10, i64 0, i32 10
  %12 = load ptr, ptr %opaque22, align 8
  %call = call ptr %11(ptr noundef %12, i32 noundef 1, i32 noundef 9552) #5
  store ptr %call, ptr %state, align 8
  %cmp23 = icmp eq ptr %call, null
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end20
  store i32 -4, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end20
  %13 = load ptr, ptr %state, align 8
  %14 = load ptr, ptr %strm.addr, align 8
  %state27 = getelementptr inbounds %struct.z_stream_s, ptr %14, i64 0, i32 7
  store ptr %13, ptr %state27, align 8
  %15 = load i32, ptr %windowBits.addr, align 4
  %cmp28 = icmp slt i32 %15, 0
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end26
  %16 = load ptr, ptr %state, align 8
  %wrap = getelementptr inbounds %struct.inflate_state, ptr %16, i64 0, i32 2
  store i32 0, ptr %wrap, align 8
  %17 = load i32, ptr %windowBits.addr, align 4
  %sub = sub nsw i32 0, %17
  store i32 %sub, ptr %windowBits.addr, align 4
  br label %if.end36

if.else:                                          ; preds = %if.end26
  %18 = load i32, ptr %windowBits.addr, align 4
  %shr = ashr i32 %18, 4
  %add = add nsw i32 %shr, 1
  %19 = load ptr, ptr %state, align 8
  %wrap31 = getelementptr inbounds %struct.inflate_state, ptr %19, i64 0, i32 2
  store i32 %add, ptr %wrap31, align 8
  %cmp32 = icmp slt i32 %18, 48
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.else
  %20 = load i32, ptr %windowBits.addr, align 4
  %and = and i32 %20, 15
  store i32 %and, ptr %windowBits.addr, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then34, %if.then30
  %21 = load i32, ptr %windowBits.addr, align 4
  %cmp37 = icmp slt i32 %21, 8
  %22 = load i32, ptr %windowBits.addr, align 4
  %cmp40 = icmp sgt i32 %22, 15
  %or.cond1 = select i1 %cmp37, i1 true, i1 %cmp40
  br i1 %or.cond1, label %if.then42, label %if.end46

if.then42:                                        ; preds = %if.end36
  %23 = load ptr, ptr %strm.addr, align 8
  %zfree43 = getelementptr inbounds %struct.z_stream_s, ptr %23, i64 0, i32 9
  %24 = load ptr, ptr %zfree43, align 8
  %opaque44 = getelementptr inbounds %struct.z_stream_s, ptr %23, i64 0, i32 10
  %25 = load ptr, ptr %opaque44, align 8
  %26 = load ptr, ptr %state, align 8
  call void %24(ptr noundef %25, ptr noundef %26) #5
  %27 = load ptr, ptr %strm.addr, align 8
  %state45 = getelementptr inbounds %struct.z_stream_s, ptr %27, i64 0, i32 7
  store ptr null, ptr %state45, align 8
  store i32 -2, ptr %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.end36
  %28 = load i32, ptr %windowBits.addr, align 4
  %29 = load ptr, ptr %state, align 8
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 9
  store i32 %28, ptr %wbits, align 8
  %window = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 13
  store ptr null, ptr %window, align 8
  %30 = load ptr, ptr %strm.addr, align 8
  %call47 = call i32 @inflateReset(ptr noundef %30)
  store i32 %call47, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end46, %if.then42, %if.then25, %if.then9, %if.then
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #1

declare void @zcfree(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @inflateInit_(ptr noundef %strm, ptr noundef %version, i32 noundef %stream_size) #0 {
entry:
  %call = call i32 @inflateInit2_(ptr noundef %strm, i32 noundef 15, ptr noundef %version, i32 noundef %stream_size)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflate(ptr noundef %strm, i32 noundef %flush) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %flush.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  %next = alloca ptr, align 8
  %put = alloca ptr, align 8
  %have = alloca i32, align 4
  %left = alloca i32, align 4
  %hold = alloca i64, align 8
  %bits = alloca i32, align 4
  %in = alloca i32, align 4
  %out = alloca i32, align 4
  %copy = alloca i32, align 4
  %from = alloca ptr, align 8
  %this = alloca %struct.code, align 4
  %last = alloca %struct.code, align 4
  %len = alloca i32, align 4
  %ret = alloca i32, align 4
  %hbuf = alloca [4 x i8], align 1
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %flush, ptr %flush.addr, align 4
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state1, align 8
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %strm.addr, align 8
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 3
  %3 = load ptr, ptr %next_out, align 8
  %cmp4 = icmp eq ptr %3, null
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %4 = load ptr, ptr %strm.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %cmp6 = icmp eq ptr %5, null
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false5
  %6 = load ptr, ptr %strm.addr, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 1
  %7 = load i32, ptr %avail_in, align 8
  %cmp7.not = icmp eq i32 %7, 0
  br i1 %cmp7.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false5
  %8 = load ptr, ptr %strm.addr, align 8
  %state8 = getelementptr inbounds %struct.z_stream_s, ptr %8, i64 0, i32 7
  %9 = load ptr, ptr %state8, align 8
  store ptr %9, ptr %state, align 8
  %10 = load i32, ptr %9, align 8
  %cmp9 = icmp eq i32 %10, 11
  br i1 %cmp9, label %if.then10, label %do.body

if.then10:                                        ; preds = %if.end
  %11 = load ptr, ptr %state, align 8
  store i32 12, ptr %11, align 8
  br label %do.body

do.body:                                          ; preds = %if.end, %if.then10
  %12 = load ptr, ptr %strm.addr, align 8
  %next_out13 = getelementptr inbounds %struct.z_stream_s, ptr %12, i64 0, i32 3
  %13 = load ptr, ptr %next_out13, align 8
  store ptr %13, ptr %put, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %12, i64 0, i32 4
  %14 = load i32, ptr %avail_out, align 8
  store i32 %14, ptr %left, align 4
  %15 = load ptr, ptr %strm.addr, align 8
  %16 = load ptr, ptr %15, align 8
  store ptr %16, ptr %next, align 8
  %avail_in15 = getelementptr inbounds %struct.z_stream_s, ptr %15, i64 0, i32 1
  %17 = load i32, ptr %avail_in15, align 8
  store i32 %17, ptr %have, align 4
  %18 = load ptr, ptr %state, align 8
  %hold16 = getelementptr inbounds %struct.inflate_state, ptr %18, i64 0, i32 14
  %19 = load i64, ptr %hold16, align 8
  store i64 %19, ptr %hold, align 8
  %bits17 = getelementptr inbounds %struct.inflate_state, ptr %18, i64 0, i32 15
  %20 = load i32, ptr %bits17, align 8
  store i32 %20, ptr %bits, align 4
  %21 = load i32, ptr %have, align 4
  store i32 %21, ptr %in, align 4
  %22 = load i32, ptr %left, align 4
  store i32 %22, ptr %out, align 4
  store i32 0, ptr %ret, align 4
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog1772, %do.body
  %23 = load ptr, ptr %state, align 8
  %24 = load i32, ptr %23, align 8
  switch i32 %24, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %while.cond98
    i32 2, label %do.body163
    i32 3, label %do.body215
    i32 4, label %sw.bb265
    i32 5, label %sw.bb324
    i32 6, label %sw.bb387
    i32 7, label %sw.bb449
    i32 8, label %sw.bb515
    i32 9, label %while.cond571
    i32 10, label %sw.bb609
    i32 11, label %sw.bb627
    i32 12, label %sw.bb632
    i32 13, label %do.body693
    i32 14, label %sw.bb738
    i32 15, label %while.cond768
    i32 16, label %sw.bb826
    i32 17, label %sw.bb899
    i32 18, label %sw.bb1204
    i32 19, label %sw.bb1363
    i32 20, label %sw.bb1407
    i32 21, label %sw.bb1523
    i32 22, label %sw.bb1576
    i32 23, label %sw.bb1635
    i32 24, label %sw.bb1645
    i32 25, label %sw.bb1726
    i32 26, label %sw.bb1768
    i32 27, label %sw.bb1769
    i32 28, label %sw.bb1770
  ]

sw.bb:                                            ; preds = %for.cond
  %25 = load ptr, ptr %state, align 8
  %wrap = getelementptr inbounds %struct.inflate_state, ptr %25, i64 0, i32 2
  %26 = load i32, ptr %wrap, align 8
  %cmp19 = icmp eq i32 %26, 0
  br i1 %cmp19, label %if.then20, label %while.cond

if.then20:                                        ; preds = %sw.bb
  %27 = load ptr, ptr %state, align 8
  store i32 12, ptr %27, align 8
  br label %sw.epilog1772

while.cond:                                       ; preds = %sw.bb, %if.end28
  %28 = load i32, ptr %bits, align 4
  %cmp24 = icmp ult i32 %28, 16
  br i1 %cmp24, label %do.body25, label %do.end31

do.body25:                                        ; preds = %while.cond
  %29 = load i32, ptr %have, align 4
  %cmp26 = icmp eq i32 %29, 0
  br i1 %cmp26, label %do.body1773, label %if.end28

if.end28:                                         ; preds = %do.body25
  %30 = load i32, ptr %have, align 4
  %dec = add i32 %30, -1
  store i32 %dec, ptr %have, align 4
  %31 = load ptr, ptr %next, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %31, i64 1
  store ptr %incdec.ptr, ptr %next, align 8
  %32 = load i8, ptr %31, align 1
  %conv = zext i8 %32 to i64
  %33 = load i32, ptr %bits, align 4
  %sh_prom = zext i32 %33 to i64
  %shl = shl i64 %conv, %sh_prom
  %34 = load i64, ptr %hold, align 8
  %add = add i64 %34, %shl
  store i64 %add, ptr %hold, align 8
  %add29 = add i32 %33, 8
  store i32 %add29, ptr %bits, align 4
  br label %while.cond, !llvm.loop !6

do.end31:                                         ; preds = %while.cond
  %35 = load ptr, ptr %state, align 8
  %wrap32 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 2
  %36 = load i32, ptr %wrap32, align 8
  %and = and i32 %36, 2
  %tobool.not = icmp ne i32 %and, 0
  %37 = load i64, ptr %hold, align 8
  %cmp34 = icmp eq i64 %37, 35615
  %or.cond = select i1 %tobool.not, i1 %cmp34, i1 false
  br i1 %or.cond, label %if.then36, label %if.end48

if.then36:                                        ; preds = %do.end31
  %call = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #5
  %38 = load ptr, ptr %state, align 8
  %check = getelementptr inbounds %struct.inflate_state, ptr %38, i64 0, i32 6
  store i64 %call, ptr %check, align 8
  %39 = load i64, ptr %hold, align 8
  %conv38 = trunc i64 %39 to i8
  store i8 %conv38, ptr %hbuf, align 1
  %shr = lshr i64 %39, 8
  %conv39 = trunc i64 %shr to i8
  %arrayidx40 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 1
  store i8 %conv39, ptr %arrayidx40, align 1
  %40 = load ptr, ptr %state, align 8
  %check41 = getelementptr inbounds %struct.inflate_state, ptr %40, i64 0, i32 6
  %41 = load i64, ptr %check41, align 8
  %call42 = call i64 @crc32(i64 noundef %41, ptr noundef nonnull %hbuf, i32 noundef 2) #5
  %42 = load ptr, ptr %state, align 8
  %check43 = getelementptr inbounds %struct.inflate_state, ptr %42, i64 0, i32 6
  store i64 %call42, ptr %check43, align 8
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  %43 = load ptr, ptr %state, align 8
  store i32 1, ptr %43, align 8
  br label %sw.epilog1772

if.end48:                                         ; preds = %do.end31
  %44 = load ptr, ptr %state, align 8
  %flags = getelementptr inbounds %struct.inflate_state, ptr %44, i64 0, i32 4
  store i32 0, ptr %flags, align 8
  %head = getelementptr inbounds %struct.inflate_state, ptr %44, i64 0, i32 8
  %45 = load ptr, ptr %head, align 8
  %cmp49.not = icmp eq ptr %45, null
  br i1 %cmp49.not, label %if.end53, label %if.then51

if.then51:                                        ; preds = %if.end48
  %46 = load ptr, ptr %state, align 8
  %head52 = getelementptr inbounds %struct.inflate_state, ptr %46, i64 0, i32 8
  %47 = load ptr, ptr %head52, align 8
  %done = getelementptr inbounds %struct.gz_header_s, ptr %47, i64 0, i32 12
  store i32 -1, ptr %done, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end48
  %48 = load ptr, ptr %state, align 8
  %wrap54 = getelementptr inbounds %struct.inflate_state, ptr %48, i64 0, i32 2
  %49 = load i32, ptr %wrap54, align 8
  %and55 = and i32 %49, 1
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.then65, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %if.end53
  %50 = load i64, ptr %hold, align 8
  %and59 = shl i64 %50, 8
  %shl60 = and i64 %and59, 65280
  %shr62 = lshr i64 %50, 8
  %add63 = add nuw nsw i64 %shl60, %shr62
  %rem = urem i64 %add63, 31
  %tobool64.not = icmp eq i64 %rem, 0
  br i1 %tobool64.not, label %if.end67, label %if.then65

if.then65:                                        ; preds = %lor.lhs.false57, %if.end53
  %51 = load ptr, ptr %strm.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %51, i64 0, i32 6
  store ptr @.str.1, ptr %msg, align 8
  %52 = load ptr, ptr %state, align 8
  store i32 27, ptr %52, align 8
  br label %sw.epilog1772

if.end67:                                         ; preds = %lor.lhs.false57
  %53 = load i64, ptr %hold, align 8
  %and698 = and i64 %53, 15
  %cmp70.not = icmp eq i64 %and698, 8
  br i1 %cmp70.not, label %do.body76, label %if.then72

if.then72:                                        ; preds = %if.end67
  %54 = load ptr, ptr %strm.addr, align 8
  %msg73 = getelementptr inbounds %struct.z_stream_s, ptr %54, i64 0, i32 6
  store ptr @.str.2, ptr %msg73, align 8
  %55 = load ptr, ptr %state, align 8
  store i32 27, ptr %55, align 8
  br label %sw.epilog1772

do.body76:                                        ; preds = %if.end67
  %56 = load i64, ptr %hold, align 8
  %shr77 = lshr i64 %56, 4
  store i64 %shr77, ptr %hold, align 8
  %57 = load i32, ptr %bits, align 4
  %sub = add i32 %57, -4
  store i32 %sub, ptr %bits, align 4
  %58 = load i64, ptr %hold, align 8
  %conv79 = trunc i64 %58 to i32
  %and80 = and i32 %conv79, 15
  %add81 = add nuw nsw i32 %and80, 8
  store i32 %add81, ptr %len, align 4
  %59 = load ptr, ptr %state, align 8
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %59, i64 0, i32 9
  %60 = load i32, ptr %wbits, align 8
  %cmp82 = icmp ugt i32 %add81, %60
  br i1 %cmp82, label %if.then84, label %if.end87

if.then84:                                        ; preds = %do.body76
  %61 = load ptr, ptr %strm.addr, align 8
  %msg85 = getelementptr inbounds %struct.z_stream_s, ptr %61, i64 0, i32 6
  store ptr @.str.3, ptr %msg85, align 8
  %62 = load ptr, ptr %state, align 8
  store i32 27, ptr %62, align 8
  br label %sw.epilog1772

if.end87:                                         ; preds = %do.body76
  %63 = load i32, ptr %len, align 4
  %shl88 = shl i32 1, %63
  %64 = load ptr, ptr %state, align 8
  %dmax = getelementptr inbounds %struct.inflate_state, ptr %64, i64 0, i32 5
  store i32 %shl88, ptr %dmax, align 4
  %call89 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #5
  %65 = load ptr, ptr %state, align 8
  %check90 = getelementptr inbounds %struct.inflate_state, ptr %65, i64 0, i32 6
  store i64 %call89, ptr %check90, align 8
  %66 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %66, i64 0, i32 12
  store i64 %call89, ptr %adler, align 8
  %67 = load i64, ptr %hold, align 8
  %and91 = and i64 %67, 512
  %tobool92.not = icmp eq i64 %and91, 0
  %cond = select i1 %tobool92.not, i32 11, i32 9
  %68 = load ptr, ptr %state, align 8
  store i32 %cond, ptr %68, align 8
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %sw.epilog1772

while.cond98:                                     ; preds = %for.cond, %if.end106
  %69 = load i32, ptr %bits, align 4
  %cmp99 = icmp ult i32 %69, 16
  br i1 %cmp99, label %do.body102, label %do.end116

do.body102:                                       ; preds = %while.cond98
  %70 = load i32, ptr %have, align 4
  %cmp103 = icmp eq i32 %70, 0
  br i1 %cmp103, label %do.body1773, label %if.end106

if.end106:                                        ; preds = %do.body102
  %71 = load i32, ptr %have, align 4
  %dec107 = add i32 %71, -1
  store i32 %dec107, ptr %have, align 4
  %72 = load ptr, ptr %next, align 8
  %incdec.ptr108 = getelementptr inbounds i8, ptr %72, i64 1
  store ptr %incdec.ptr108, ptr %next, align 8
  %73 = load i8, ptr %72, align 1
  %conv109 = zext i8 %73 to i64
  %74 = load i32, ptr %bits, align 4
  %sh_prom110 = zext i32 %74 to i64
  %shl111 = shl i64 %conv109, %sh_prom110
  %75 = load i64, ptr %hold, align 8
  %add112 = add i64 %75, %shl111
  store i64 %add112, ptr %hold, align 8
  %add113 = add i32 %74, 8
  store i32 %add113, ptr %bits, align 4
  br label %while.cond98, !llvm.loop !8

do.end116:                                        ; preds = %while.cond98
  %76 = load i64, ptr %hold, align 8
  %conv117 = trunc i64 %76 to i32
  %77 = load ptr, ptr %state, align 8
  %flags118 = getelementptr inbounds %struct.inflate_state, ptr %77, i64 0, i32 4
  store i32 %conv117, ptr %flags118, align 8
  %and120 = and i32 %conv117, 255
  %cmp121.not = icmp eq i32 %and120, 8
  br i1 %cmp121.not, label %if.end126, label %if.then123

if.then123:                                       ; preds = %do.end116
  %78 = load ptr, ptr %strm.addr, align 8
  %msg124 = getelementptr inbounds %struct.z_stream_s, ptr %78, i64 0, i32 6
  store ptr @.str.2, ptr %msg124, align 8
  %79 = load ptr, ptr %state, align 8
  store i32 27, ptr %79, align 8
  br label %sw.epilog1772

if.end126:                                        ; preds = %do.end116
  %80 = load ptr, ptr %state, align 8
  %flags127 = getelementptr inbounds %struct.inflate_state, ptr %80, i64 0, i32 4
  %81 = load i32, ptr %flags127, align 8
  %and128 = and i32 %81, 57344
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end133, label %if.then130

if.then130:                                       ; preds = %if.end126
  %82 = load ptr, ptr %strm.addr, align 8
  %msg131 = getelementptr inbounds %struct.z_stream_s, ptr %82, i64 0, i32 6
  store ptr @.str.4, ptr %msg131, align 8
  %83 = load ptr, ptr %state, align 8
  store i32 27, ptr %83, align 8
  br label %sw.epilog1772

if.end133:                                        ; preds = %if.end126
  %84 = load ptr, ptr %state, align 8
  %head134 = getelementptr inbounds %struct.inflate_state, ptr %84, i64 0, i32 8
  %85 = load ptr, ptr %head134, align 8
  %cmp135.not = icmp eq ptr %85, null
  br i1 %cmp135.not, label %if.end142, label %if.then137

if.then137:                                       ; preds = %if.end133
  %86 = load i64, ptr %hold, align 8
  %87 = trunc i64 %86 to i32
  %88 = lshr i32 %87, 8
  %conv140 = and i32 %88, 1
  %89 = load ptr, ptr %state, align 8
  %head141 = getelementptr inbounds %struct.inflate_state, ptr %89, i64 0, i32 8
  %90 = load ptr, ptr %head141, align 8
  store i32 %conv140, ptr %90, align 8
  br label %if.end142

if.end142:                                        ; preds = %if.then137, %if.end133
  %91 = load ptr, ptr %state, align 8
  %flags143 = getelementptr inbounds %struct.inflate_state, ptr %91, i64 0, i32 4
  %92 = load i32, ptr %flags143, align 8
  %and144 = and i32 %92, 512
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %do.body159, label %do.body147

do.body147:                                       ; preds = %if.end142
  %93 = load i64, ptr %hold, align 8
  %conv148 = trunc i64 %93 to i8
  store i8 %conv148, ptr %hbuf, align 1
  %shr150 = lshr i64 %93, 8
  %conv151 = trunc i64 %shr150 to i8
  %arrayidx152 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 1
  store i8 %conv151, ptr %arrayidx152, align 1
  %94 = load ptr, ptr %state, align 8
  %check153 = getelementptr inbounds %struct.inflate_state, ptr %94, i64 0, i32 6
  %95 = load i64, ptr %check153, align 8
  %call155 = call i64 @crc32(i64 noundef %95, ptr noundef nonnull %hbuf, i32 noundef 2) #5
  %96 = load ptr, ptr %state, align 8
  %check156 = getelementptr inbounds %struct.inflate_state, ptr %96, i64 0, i32 6
  store i64 %call155, ptr %check156, align 8
  br label %do.body159

do.body159:                                       ; preds = %if.end142, %do.body147
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  %97 = load ptr, ptr %state, align 8
  store i32 2, ptr %97, align 8
  br label %do.body163

do.body163:                                       ; preds = %for.cond, %do.body159
  br label %while.cond164

while.cond164:                                    ; preds = %if.end172, %do.body163
  %98 = load i32, ptr %bits, align 4
  %cmp165 = icmp ult i32 %98, 32
  br i1 %cmp165, label %do.body168, label %do.end182

do.body168:                                       ; preds = %while.cond164
  %99 = load i32, ptr %have, align 4
  %cmp169 = icmp eq i32 %99, 0
  br i1 %cmp169, label %do.body1773, label %if.end172

if.end172:                                        ; preds = %do.body168
  %100 = load i32, ptr %have, align 4
  %dec173 = add i32 %100, -1
  store i32 %dec173, ptr %have, align 4
  %101 = load ptr, ptr %next, align 8
  %incdec.ptr174 = getelementptr inbounds i8, ptr %101, i64 1
  store ptr %incdec.ptr174, ptr %next, align 8
  %102 = load i8, ptr %101, align 1
  %conv175 = zext i8 %102 to i64
  %103 = load i32, ptr %bits, align 4
  %sh_prom176 = zext i32 %103 to i64
  %shl177 = shl i64 %conv175, %sh_prom176
  %104 = load i64, ptr %hold, align 8
  %add178 = add i64 %104, %shl177
  store i64 %add178, ptr %hold, align 8
  %add179 = add i32 %103, 8
  store i32 %add179, ptr %bits, align 4
  br label %while.cond164, !llvm.loop !9

do.end182:                                        ; preds = %while.cond164
  %105 = load ptr, ptr %state, align 8
  %head183 = getelementptr inbounds %struct.inflate_state, ptr %105, i64 0, i32 8
  %106 = load ptr, ptr %head183, align 8
  %cmp184.not = icmp eq ptr %106, null
  br i1 %cmp184.not, label %if.end188, label %if.then186

if.then186:                                       ; preds = %do.end182
  %107 = load i64, ptr %hold, align 8
  %108 = load ptr, ptr %state, align 8
  %head187 = getelementptr inbounds %struct.inflate_state, ptr %108, i64 0, i32 8
  %109 = load ptr, ptr %head187, align 8
  %time = getelementptr inbounds %struct.gz_header_s, ptr %109, i64 0, i32 1
  store i64 %107, ptr %time, align 8
  br label %if.end188

if.end188:                                        ; preds = %if.then186, %do.end182
  %110 = load ptr, ptr %state, align 8
  %flags189 = getelementptr inbounds %struct.inflate_state, ptr %110, i64 0, i32 4
  %111 = load i32, ptr %flags189, align 8
  %and190 = and i32 %111, 512
  %tobool191.not = icmp eq i32 %and190, 0
  br i1 %tobool191.not, label %do.body211, label %do.body193

do.body193:                                       ; preds = %if.end188
  %112 = load i64, ptr %hold, align 8
  %conv194 = trunc i64 %112 to i8
  store i8 %conv194, ptr %hbuf, align 1
  %shr196 = lshr i64 %112, 8
  %conv197 = trunc i64 %shr196 to i8
  %arrayidx198 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 1
  store i8 %conv197, ptr %arrayidx198, align 1
  %113 = load i64, ptr %hold, align 8
  %shr199 = lshr i64 %113, 16
  %conv200 = trunc i64 %shr199 to i8
  %arrayidx201 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 2
  store i8 %conv200, ptr %arrayidx201, align 1
  %shr202 = lshr i64 %113, 24
  %conv203 = trunc i64 %shr202 to i8
  %arrayidx204 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 3
  store i8 %conv203, ptr %arrayidx204, align 1
  %114 = load ptr, ptr %state, align 8
  %check205 = getelementptr inbounds %struct.inflate_state, ptr %114, i64 0, i32 6
  %115 = load i64, ptr %check205, align 8
  %call207 = call i64 @crc32(i64 noundef %115, ptr noundef nonnull %hbuf, i32 noundef 4) #5
  %116 = load ptr, ptr %state, align 8
  %check208 = getelementptr inbounds %struct.inflate_state, ptr %116, i64 0, i32 6
  store i64 %call207, ptr %check208, align 8
  br label %do.body211

do.body211:                                       ; preds = %if.end188, %do.body193
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  %117 = load ptr, ptr %state, align 8
  store i32 3, ptr %117, align 8
  br label %do.body215

do.body215:                                       ; preds = %for.cond, %do.body211
  br label %while.cond216

while.cond216:                                    ; preds = %if.end224, %do.body215
  %118 = load i32, ptr %bits, align 4
  %cmp217 = icmp ult i32 %118, 16
  br i1 %cmp217, label %do.body220, label %do.end234

do.body220:                                       ; preds = %while.cond216
  %119 = load i32, ptr %have, align 4
  %cmp221 = icmp eq i32 %119, 0
  br i1 %cmp221, label %do.body1773, label %if.end224

if.end224:                                        ; preds = %do.body220
  %120 = load i32, ptr %have, align 4
  %dec225 = add i32 %120, -1
  store i32 %dec225, ptr %have, align 4
  %121 = load ptr, ptr %next, align 8
  %incdec.ptr226 = getelementptr inbounds i8, ptr %121, i64 1
  store ptr %incdec.ptr226, ptr %next, align 8
  %122 = load i8, ptr %121, align 1
  %conv227 = zext i8 %122 to i64
  %123 = load i32, ptr %bits, align 4
  %sh_prom228 = zext i32 %123 to i64
  %shl229 = shl i64 %conv227, %sh_prom228
  %124 = load i64, ptr %hold, align 8
  %add230 = add i64 %124, %shl229
  store i64 %add230, ptr %hold, align 8
  %add231 = add i32 %123, 8
  store i32 %add231, ptr %bits, align 4
  br label %while.cond216, !llvm.loop !10

do.end234:                                        ; preds = %while.cond216
  %125 = load ptr, ptr %state, align 8
  %head235 = getelementptr inbounds %struct.inflate_state, ptr %125, i64 0, i32 8
  %126 = load ptr, ptr %head235, align 8
  %cmp236.not = icmp eq ptr %126, null
  br i1 %cmp236.not, label %if.end245, label %if.then238

if.then238:                                       ; preds = %do.end234
  %127 = load i64, ptr %hold, align 8
  %128 = trunc i64 %127 to i32
  %conv240 = and i32 %128, 255
  %129 = load ptr, ptr %state, align 8
  %head241 = getelementptr inbounds %struct.inflate_state, ptr %129, i64 0, i32 8
  %130 = load ptr, ptr %head241, align 8
  %xflags = getelementptr inbounds %struct.gz_header_s, ptr %130, i64 0, i32 2
  store i32 %conv240, ptr %xflags, align 8
  %131 = load i64, ptr %hold, align 8
  %shr242 = lshr i64 %131, 8
  %conv243 = trunc i64 %shr242 to i32
  %132 = load ptr, ptr %state, align 8
  %head244 = getelementptr inbounds %struct.inflate_state, ptr %132, i64 0, i32 8
  %133 = load ptr, ptr %head244, align 8
  %os = getelementptr inbounds %struct.gz_header_s, ptr %133, i64 0, i32 3
  store i32 %conv243, ptr %os, align 4
  br label %if.end245

if.end245:                                        ; preds = %if.then238, %do.end234
  %134 = load ptr, ptr %state, align 8
  %flags246 = getelementptr inbounds %struct.inflate_state, ptr %134, i64 0, i32 4
  %135 = load i32, ptr %flags246, align 8
  %and247 = and i32 %135, 512
  %tobool248.not = icmp eq i32 %and247, 0
  br i1 %tobool248.not, label %do.body262, label %do.body250

do.body250:                                       ; preds = %if.end245
  %136 = load i64, ptr %hold, align 8
  %conv251 = trunc i64 %136 to i8
  store i8 %conv251, ptr %hbuf, align 1
  %shr253 = lshr i64 %136, 8
  %conv254 = trunc i64 %shr253 to i8
  %arrayidx255 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 1
  store i8 %conv254, ptr %arrayidx255, align 1
  %137 = load ptr, ptr %state, align 8
  %check256 = getelementptr inbounds %struct.inflate_state, ptr %137, i64 0, i32 6
  %138 = load i64, ptr %check256, align 8
  %call258 = call i64 @crc32(i64 noundef %138, ptr noundef nonnull %hbuf, i32 noundef 2) #5
  %139 = load ptr, ptr %state, align 8
  %check259 = getelementptr inbounds %struct.inflate_state, ptr %139, i64 0, i32 6
  store i64 %call258, ptr %check259, align 8
  br label %do.body262

do.body262:                                       ; preds = %if.end245, %do.body250
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  %140 = load ptr, ptr %state, align 8
  store i32 4, ptr %140, align 8
  br label %sw.bb265

sw.bb265:                                         ; preds = %do.body262, %for.cond
  %141 = load ptr, ptr %state, align 8
  %flags266 = getelementptr inbounds %struct.inflate_state, ptr %141, i64 0, i32 4
  %142 = load i32, ptr %flags266, align 8
  %and267 = and i32 %142, 1024
  %tobool268.not = icmp eq i32 %and267, 0
  br i1 %tobool268.not, label %if.else, label %while.cond271

while.cond271:                                    ; preds = %sw.bb265, %if.end279
  %143 = load i32, ptr %bits, align 4
  %cmp272 = icmp ult i32 %143, 16
  br i1 %cmp272, label %do.body275, label %do.end289

do.body275:                                       ; preds = %while.cond271
  %144 = load i32, ptr %have, align 4
  %cmp276 = icmp eq i32 %144, 0
  br i1 %cmp276, label %do.body1773, label %if.end279

if.end279:                                        ; preds = %do.body275
  %145 = load i32, ptr %have, align 4
  %dec280 = add i32 %145, -1
  store i32 %dec280, ptr %have, align 4
  %146 = load ptr, ptr %next, align 8
  %incdec.ptr281 = getelementptr inbounds i8, ptr %146, i64 1
  store ptr %incdec.ptr281, ptr %next, align 8
  %147 = load i8, ptr %146, align 1
  %conv282 = zext i8 %147 to i64
  %148 = load i32, ptr %bits, align 4
  %sh_prom283 = zext i32 %148 to i64
  %shl284 = shl i64 %conv282, %sh_prom283
  %149 = load i64, ptr %hold, align 8
  %add285 = add i64 %149, %shl284
  store i64 %add285, ptr %hold, align 8
  %add286 = add i32 %148, 8
  store i32 %add286, ptr %bits, align 4
  br label %while.cond271, !llvm.loop !11

do.end289:                                        ; preds = %while.cond271
  %150 = load i64, ptr %hold, align 8
  %conv290 = trunc i64 %150 to i32
  %151 = load ptr, ptr %state, align 8
  %length = getelementptr inbounds %struct.inflate_state, ptr %151, i64 0, i32 16
  store i32 %conv290, ptr %length, align 4
  %head291 = getelementptr inbounds %struct.inflate_state, ptr %151, i64 0, i32 8
  %152 = load ptr, ptr %head291, align 8
  %cmp292.not = icmp eq ptr %152, null
  br i1 %cmp292.not, label %if.end297, label %if.then294

if.then294:                                       ; preds = %do.end289
  %153 = load i64, ptr %hold, align 8
  %conv295 = trunc i64 %153 to i32
  %154 = load ptr, ptr %state, align 8
  %head296 = getelementptr inbounds %struct.inflate_state, ptr %154, i64 0, i32 8
  %155 = load ptr, ptr %head296, align 8
  %extra_len = getelementptr inbounds %struct.gz_header_s, ptr %155, i64 0, i32 5
  store i32 %conv295, ptr %extra_len, align 8
  br label %if.end297

if.end297:                                        ; preds = %if.then294, %do.end289
  %156 = load ptr, ptr %state, align 8
  %flags298 = getelementptr inbounds %struct.inflate_state, ptr %156, i64 0, i32 4
  %157 = load i32, ptr %flags298, align 8
  %and299 = and i32 %157, 512
  %tobool300.not = icmp eq i32 %and299, 0
  br i1 %tobool300.not, label %do.body314, label %do.body302

do.body302:                                       ; preds = %if.end297
  %158 = load i64, ptr %hold, align 8
  %conv303 = trunc i64 %158 to i8
  store i8 %conv303, ptr %hbuf, align 1
  %shr305 = lshr i64 %158, 8
  %conv306 = trunc i64 %shr305 to i8
  %arrayidx307 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 1
  store i8 %conv306, ptr %arrayidx307, align 1
  %159 = load ptr, ptr %state, align 8
  %check308 = getelementptr inbounds %struct.inflate_state, ptr %159, i64 0, i32 6
  %160 = load i64, ptr %check308, align 8
  %call310 = call i64 @crc32(i64 noundef %160, ptr noundef nonnull %hbuf, i32 noundef 2) #5
  %161 = load ptr, ptr %state, align 8
  %check311 = getelementptr inbounds %struct.inflate_state, ptr %161, i64 0, i32 6
  store i64 %call310, ptr %check311, align 8
  br label %do.body314

do.body314:                                       ; preds = %if.end297, %do.body302
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %if.end322

if.else:                                          ; preds = %sw.bb265
  %162 = load ptr, ptr %state, align 8
  %head316 = getelementptr inbounds %struct.inflate_state, ptr %162, i64 0, i32 8
  %163 = load ptr, ptr %head316, align 8
  %cmp317.not = icmp eq ptr %163, null
  br i1 %cmp317.not, label %if.end322, label %if.then319

if.then319:                                       ; preds = %if.else
  %164 = load ptr, ptr %state, align 8
  %head320 = getelementptr inbounds %struct.inflate_state, ptr %164, i64 0, i32 8
  %165 = load ptr, ptr %head320, align 8
  %extra = getelementptr inbounds %struct.gz_header_s, ptr %165, i64 0, i32 4
  store ptr null, ptr %extra, align 8
  br label %if.end322

if.end322:                                        ; preds = %if.else, %if.then319, %do.body314
  %166 = load ptr, ptr %state, align 8
  store i32 5, ptr %166, align 8
  br label %sw.bb324

sw.bb324:                                         ; preds = %if.end322, %for.cond
  %167 = load ptr, ptr %state, align 8
  %flags325 = getelementptr inbounds %struct.inflate_state, ptr %167, i64 0, i32 4
  %168 = load i32, ptr %flags325, align 8
  %and326 = and i32 %168, 1024
  %tobool327.not = icmp eq i32 %and326, 0
  br i1 %tobool327.not, label %if.end384, label %if.then328

if.then328:                                       ; preds = %sw.bb324
  %169 = load ptr, ptr %state, align 8
  %length329 = getelementptr inbounds %struct.inflate_state, ptr %169, i64 0, i32 16
  %170 = load i32, ptr %length329, align 4
  store i32 %170, ptr %copy, align 4
  %171 = load i32, ptr %have, align 4
  %cmp330 = icmp ugt i32 %170, %171
  br i1 %cmp330, label %if.then332, label %if.end333

if.then332:                                       ; preds = %if.then328
  %172 = load i32, ptr %have, align 4
  store i32 %172, ptr %copy, align 4
  br label %if.end333

if.end333:                                        ; preds = %if.then332, %if.then328
  %173 = load i32, ptr %copy, align 4
  %tobool334.not = icmp eq i32 %173, 0
  br i1 %tobool334.not, label %if.end379, label %if.then335

if.then335:                                       ; preds = %if.end333
  %174 = load ptr, ptr %state, align 8
  %head336 = getelementptr inbounds %struct.inflate_state, ptr %174, i64 0, i32 8
  %175 = load ptr, ptr %head336, align 8
  %cmp337.not = icmp eq ptr %175, null
  br i1 %cmp337.not, label %if.end365, label %land.lhs.true339

land.lhs.true339:                                 ; preds = %if.then335
  %176 = load ptr, ptr %state, align 8
  %head340 = getelementptr inbounds %struct.inflate_state, ptr %176, i64 0, i32 8
  %177 = load ptr, ptr %head340, align 8
  %extra341 = getelementptr inbounds %struct.gz_header_s, ptr %177, i64 0, i32 4
  %178 = load ptr, ptr %extra341, align 8
  %cmp342.not = icmp eq ptr %178, null
  br i1 %cmp342.not, label %if.end365, label %if.then344

if.then344:                                       ; preds = %land.lhs.true339
  %179 = load ptr, ptr %state, align 8
  %head345 = getelementptr inbounds %struct.inflate_state, ptr %179, i64 0, i32 8
  %180 = load ptr, ptr %head345, align 8
  %extra_len346 = getelementptr inbounds %struct.gz_header_s, ptr %180, i64 0, i32 5
  %181 = load i32, ptr %extra_len346, align 8
  %length347 = getelementptr inbounds %struct.inflate_state, ptr %179, i64 0, i32 16
  %182 = load i32, ptr %length347, align 4
  %sub348 = sub i32 %181, %182
  store i32 %sub348, ptr %len, align 4
  %183 = load ptr, ptr %state, align 8
  %head349 = getelementptr inbounds %struct.inflate_state, ptr %183, i64 0, i32 8
  %184 = load ptr, ptr %head349, align 8
  %extra350 = getelementptr inbounds %struct.gz_header_s, ptr %184, i64 0, i32 4
  %185 = load ptr, ptr %extra350, align 8
  %idx.ext = zext i32 %sub348 to i64
  %add.ptr = getelementptr inbounds i8, ptr %185, i64 %idx.ext
  %186 = load ptr, ptr %next, align 8
  %187 = load i32, ptr %len, align 4
  %188 = load i32, ptr %copy, align 4
  %add351 = add i32 %187, %188
  %189 = load ptr, ptr %state, align 8
  %head352 = getelementptr inbounds %struct.inflate_state, ptr %189, i64 0, i32 8
  %190 = load ptr, ptr %head352, align 8
  %extra_max = getelementptr inbounds %struct.gz_header_s, ptr %190, i64 0, i32 6
  %191 = load i32, ptr %extra_max, align 4
  %cmp353 = icmp ugt i32 %add351, %191
  br i1 %cmp353, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then344
  %192 = load ptr, ptr %state, align 8
  %head355 = getelementptr inbounds %struct.inflate_state, ptr %192, i64 0, i32 8
  %193 = load ptr, ptr %head355, align 8
  %extra_max356 = getelementptr inbounds %struct.gz_header_s, ptr %193, i64 0, i32 6
  %194 = load i32, ptr %extra_max356, align 4
  %195 = load i32, ptr %len, align 4
  %sub357 = sub i32 %194, %195
  br label %cond.end

cond.false:                                       ; preds = %if.then344
  %196 = load i32, ptr %copy, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond358 = phi i32 [ %sub357, %cond.true ], [ %196, %cond.false ]
  %conv359 = zext i32 %cond358 to i64
  %197 = load ptr, ptr %state, align 8
  %head360 = getelementptr inbounds %struct.inflate_state, ptr %197, i64 0, i32 8
  %198 = load ptr, ptr %head360, align 8
  %extra361 = getelementptr inbounds %struct.gz_header_s, ptr %198, i64 0, i32 4
  %199 = load ptr, ptr %extra361, align 8
  %200 = load i32, ptr %len, align 4
  %idx.ext362 = zext i32 %200 to i64
  %add.ptr363 = getelementptr inbounds i8, ptr %199, i64 %idx.ext362
  %201 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr363, i1 false, i1 true, i1 false)
  %call364 = call ptr @__memcpy_chk(ptr noundef %add.ptr, ptr noundef %186, i64 noundef %conv359, i64 noundef %201) #5
  br label %if.end365

if.end365:                                        ; preds = %cond.end, %land.lhs.true339, %if.then335
  %202 = load ptr, ptr %state, align 8
  %flags366 = getelementptr inbounds %struct.inflate_state, ptr %202, i64 0, i32 4
  %203 = load i32, ptr %flags366, align 8
  %and367 = and i32 %203, 512
  %tobool368.not = icmp eq i32 %and367, 0
  br i1 %tobool368.not, label %if.end373, label %if.then369

if.then369:                                       ; preds = %if.end365
  %204 = load ptr, ptr %state, align 8
  %check370 = getelementptr inbounds %struct.inflate_state, ptr %204, i64 0, i32 6
  %205 = load i64, ptr %check370, align 8
  %206 = load ptr, ptr %next, align 8
  %207 = load i32, ptr %copy, align 4
  %call371 = call i64 @crc32(i64 noundef %205, ptr noundef %206, i32 noundef %207) #5
  %208 = load ptr, ptr %state, align 8
  %check372 = getelementptr inbounds %struct.inflate_state, ptr %208, i64 0, i32 6
  store i64 %call371, ptr %check372, align 8
  br label %if.end373

if.end373:                                        ; preds = %if.then369, %if.end365
  %209 = load i32, ptr %copy, align 4
  %210 = load i32, ptr %have, align 4
  %sub374 = sub i32 %210, %209
  store i32 %sub374, ptr %have, align 4
  %211 = load ptr, ptr %next, align 8
  %idx.ext375 = zext i32 %209 to i64
  %add.ptr376 = getelementptr inbounds i8, ptr %211, i64 %idx.ext375
  store ptr %add.ptr376, ptr %next, align 8
  %212 = load i32, ptr %copy, align 4
  %213 = load ptr, ptr %state, align 8
  %length377 = getelementptr inbounds %struct.inflate_state, ptr %213, i64 0, i32 16
  %214 = load i32, ptr %length377, align 4
  %sub378 = sub i32 %214, %212
  store i32 %sub378, ptr %length377, align 4
  br label %if.end379

if.end379:                                        ; preds = %if.end373, %if.end333
  %215 = load ptr, ptr %state, align 8
  %length380 = getelementptr inbounds %struct.inflate_state, ptr %215, i64 0, i32 16
  %216 = load i32, ptr %length380, align 4
  %tobool381.not = icmp eq i32 %216, 0
  br i1 %tobool381.not, label %if.end384, label %do.body1773

if.end384:                                        ; preds = %if.end379, %sw.bb324
  %217 = load ptr, ptr %state, align 8
  %length385 = getelementptr inbounds %struct.inflate_state, ptr %217, i64 0, i32 16
  store i32 0, ptr %length385, align 4
  store i32 6, ptr %217, align 8
  br label %sw.bb387

sw.bb387:                                         ; preds = %if.end384, %for.cond
  %218 = load ptr, ptr %state, align 8
  %flags388 = getelementptr inbounds %struct.inflate_state, ptr %218, i64 0, i32 4
  %219 = load i32, ptr %flags388, align 8
  %and389 = and i32 %219, 2048
  %tobool390.not = icmp eq i32 %and389, 0
  br i1 %tobool390.not, label %if.else438, label %if.then391

if.then391:                                       ; preds = %sw.bb387
  %220 = load i32, ptr %have, align 4
  %cmp392 = icmp eq i32 %220, 0
  br i1 %cmp392, label %do.body1773, label %if.end395

if.end395:                                        ; preds = %if.then391
  store i32 0, ptr %copy, align 4
  br label %do.body396

do.body396:                                       ; preds = %do.cond, %if.end395
  %221 = load ptr, ptr %next, align 8
  %222 = load i32, ptr %copy, align 4
  %inc = add i32 %222, 1
  store i32 %inc, ptr %copy, align 4
  %idxprom = zext i32 %222 to i64
  %arrayidx397 = getelementptr inbounds i8, ptr %221, i64 %idxprom
  %223 = load i8, ptr %arrayidx397, align 1
  %conv398 = zext i8 %223 to i32
  store i32 %conv398, ptr %len, align 4
  %224 = load ptr, ptr %state, align 8
  %head399 = getelementptr inbounds %struct.inflate_state, ptr %224, i64 0, i32 8
  %225 = load ptr, ptr %head399, align 8
  %cmp400.not = icmp eq ptr %225, null
  br i1 %cmp400.not, label %do.cond, label %land.lhs.true402

land.lhs.true402:                                 ; preds = %do.body396
  %226 = load ptr, ptr %state, align 8
  %head403 = getelementptr inbounds %struct.inflate_state, ptr %226, i64 0, i32 8
  %227 = load ptr, ptr %head403, align 8
  %name = getelementptr inbounds %struct.gz_header_s, ptr %227, i64 0, i32 7
  %228 = load ptr, ptr %name, align 8
  %cmp404.not = icmp eq ptr %228, null
  br i1 %cmp404.not, label %do.cond, label %land.lhs.true406

land.lhs.true406:                                 ; preds = %land.lhs.true402
  %229 = load ptr, ptr %state, align 8
  %length407 = getelementptr inbounds %struct.inflate_state, ptr %229, i64 0, i32 16
  %230 = load i32, ptr %length407, align 4
  %head408 = getelementptr inbounds %struct.inflate_state, ptr %229, i64 0, i32 8
  %231 = load ptr, ptr %head408, align 8
  %name_max = getelementptr inbounds %struct.gz_header_s, ptr %231, i64 0, i32 8
  %232 = load i32, ptr %name_max, align 8
  %cmp409 = icmp ult i32 %230, %232
  br i1 %cmp409, label %if.then411, label %do.cond

if.then411:                                       ; preds = %land.lhs.true406
  %233 = load i32, ptr %len, align 4
  %conv412 = trunc i32 %233 to i8
  %234 = load ptr, ptr %state, align 8
  %head413 = getelementptr inbounds %struct.inflate_state, ptr %234, i64 0, i32 8
  %235 = load ptr, ptr %head413, align 8
  %name414 = getelementptr inbounds %struct.gz_header_s, ptr %235, i64 0, i32 7
  %236 = load ptr, ptr %name414, align 8
  %length415 = getelementptr inbounds %struct.inflate_state, ptr %234, i64 0, i32 16
  %237 = load i32, ptr %length415, align 4
  %inc416 = add i32 %237, 1
  store i32 %inc416, ptr %length415, align 4
  %idxprom417 = zext i32 %237 to i64
  %arrayidx418 = getelementptr inbounds i8, ptr %236, i64 %idxprom417
  store i8 %conv412, ptr %arrayidx418, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body396, %land.lhs.true402, %land.lhs.true406, %if.then411
  %238 = load i32, ptr %len, align 4
  %tobool420.not = icmp eq i32 %238, 0
  %239 = load i32, ptr %copy, align 4
  %240 = load i32, ptr %have, align 4
  %cmp421 = icmp ult i32 %239, %240
  %241 = select i1 %tobool420.not, i1 false, i1 %cmp421
  br i1 %241, label %do.body396, label %do.end423, !llvm.loop !12

do.end423:                                        ; preds = %do.cond
  %242 = load ptr, ptr %state, align 8
  %flags424 = getelementptr inbounds %struct.inflate_state, ptr %242, i64 0, i32 4
  %243 = load i32, ptr %flags424, align 8
  %and425 = and i32 %243, 512
  %tobool426.not = icmp eq i32 %and425, 0
  br i1 %tobool426.not, label %if.end431, label %if.then427

if.then427:                                       ; preds = %do.end423
  %244 = load ptr, ptr %state, align 8
  %check428 = getelementptr inbounds %struct.inflate_state, ptr %244, i64 0, i32 6
  %245 = load i64, ptr %check428, align 8
  %246 = load ptr, ptr %next, align 8
  %247 = load i32, ptr %copy, align 4
  %call429 = call i64 @crc32(i64 noundef %245, ptr noundef %246, i32 noundef %247) #5
  %248 = load ptr, ptr %state, align 8
  %check430 = getelementptr inbounds %struct.inflate_state, ptr %248, i64 0, i32 6
  store i64 %call429, ptr %check430, align 8
  br label %if.end431

if.end431:                                        ; preds = %if.then427, %do.end423
  %249 = load i32, ptr %copy, align 4
  %250 = load i32, ptr %have, align 4
  %sub432 = sub i32 %250, %249
  store i32 %sub432, ptr %have, align 4
  %251 = load ptr, ptr %next, align 8
  %idx.ext433 = zext i32 %249 to i64
  %add.ptr434 = getelementptr inbounds i8, ptr %251, i64 %idx.ext433
  store ptr %add.ptr434, ptr %next, align 8
  %252 = load i32, ptr %len, align 4
  %tobool435.not = icmp eq i32 %252, 0
  br i1 %tobool435.not, label %if.end446, label %do.body1773

if.else438:                                       ; preds = %sw.bb387
  %253 = load ptr, ptr %state, align 8
  %head439 = getelementptr inbounds %struct.inflate_state, ptr %253, i64 0, i32 8
  %254 = load ptr, ptr %head439, align 8
  %cmp440.not = icmp eq ptr %254, null
  br i1 %cmp440.not, label %if.end446, label %if.then442

if.then442:                                       ; preds = %if.else438
  %255 = load ptr, ptr %state, align 8
  %head443 = getelementptr inbounds %struct.inflate_state, ptr %255, i64 0, i32 8
  %256 = load ptr, ptr %head443, align 8
  %name444 = getelementptr inbounds %struct.gz_header_s, ptr %256, i64 0, i32 7
  store ptr null, ptr %name444, align 8
  br label %if.end446

if.end446:                                        ; preds = %if.else438, %if.then442, %if.end431
  %257 = load ptr, ptr %state, align 8
  %length447 = getelementptr inbounds %struct.inflate_state, ptr %257, i64 0, i32 16
  store i32 0, ptr %length447, align 4
  store i32 7, ptr %257, align 8
  br label %sw.bb449

sw.bb449:                                         ; preds = %if.end446, %for.cond
  %258 = load ptr, ptr %state, align 8
  %flags450 = getelementptr inbounds %struct.inflate_state, ptr %258, i64 0, i32 4
  %259 = load i32, ptr %flags450, align 8
  %and451 = and i32 %259, 4096
  %tobool452.not = icmp eq i32 %and451, 0
  br i1 %tobool452.not, label %if.else505, label %if.then453

if.then453:                                       ; preds = %sw.bb449
  %260 = load i32, ptr %have, align 4
  %cmp454 = icmp eq i32 %260, 0
  br i1 %cmp454, label %do.body1773, label %if.end457

if.end457:                                        ; preds = %if.then453
  store i32 0, ptr %copy, align 4
  br label %do.body458

do.body458:                                       ; preds = %do.cond484, %if.end457
  %261 = load ptr, ptr %next, align 8
  %262 = load i32, ptr %copy, align 4
  %inc459 = add i32 %262, 1
  store i32 %inc459, ptr %copy, align 4
  %idxprom460 = zext i32 %262 to i64
  %arrayidx461 = getelementptr inbounds i8, ptr %261, i64 %idxprom460
  %263 = load i8, ptr %arrayidx461, align 1
  %conv462 = zext i8 %263 to i32
  store i32 %conv462, ptr %len, align 4
  %264 = load ptr, ptr %state, align 8
  %head463 = getelementptr inbounds %struct.inflate_state, ptr %264, i64 0, i32 8
  %265 = load ptr, ptr %head463, align 8
  %cmp464.not = icmp eq ptr %265, null
  br i1 %cmp464.not, label %do.cond484, label %land.lhs.true466

land.lhs.true466:                                 ; preds = %do.body458
  %266 = load ptr, ptr %state, align 8
  %head467 = getelementptr inbounds %struct.inflate_state, ptr %266, i64 0, i32 8
  %267 = load ptr, ptr %head467, align 8
  %comment = getelementptr inbounds %struct.gz_header_s, ptr %267, i64 0, i32 9
  %268 = load ptr, ptr %comment, align 8
  %cmp468.not = icmp eq ptr %268, null
  br i1 %cmp468.not, label %do.cond484, label %land.lhs.true470

land.lhs.true470:                                 ; preds = %land.lhs.true466
  %269 = load ptr, ptr %state, align 8
  %length471 = getelementptr inbounds %struct.inflate_state, ptr %269, i64 0, i32 16
  %270 = load i32, ptr %length471, align 4
  %head472 = getelementptr inbounds %struct.inflate_state, ptr %269, i64 0, i32 8
  %271 = load ptr, ptr %head472, align 8
  %comm_max = getelementptr inbounds %struct.gz_header_s, ptr %271, i64 0, i32 10
  %272 = load i32, ptr %comm_max, align 8
  %cmp473 = icmp ult i32 %270, %272
  br i1 %cmp473, label %if.then475, label %do.cond484

if.then475:                                       ; preds = %land.lhs.true470
  %273 = load i32, ptr %len, align 4
  %conv476 = trunc i32 %273 to i8
  %274 = load ptr, ptr %state, align 8
  %head477 = getelementptr inbounds %struct.inflate_state, ptr %274, i64 0, i32 8
  %275 = load ptr, ptr %head477, align 8
  %comment478 = getelementptr inbounds %struct.gz_header_s, ptr %275, i64 0, i32 9
  %276 = load ptr, ptr %comment478, align 8
  %length479 = getelementptr inbounds %struct.inflate_state, ptr %274, i64 0, i32 16
  %277 = load i32, ptr %length479, align 4
  %inc480 = add i32 %277, 1
  store i32 %inc480, ptr %length479, align 4
  %idxprom481 = zext i32 %277 to i64
  %arrayidx482 = getelementptr inbounds i8, ptr %276, i64 %idxprom481
  store i8 %conv476, ptr %arrayidx482, align 1
  br label %do.cond484

do.cond484:                                       ; preds = %do.body458, %land.lhs.true466, %land.lhs.true470, %if.then475
  %278 = load i32, ptr %len, align 4
  %tobool485.not = icmp eq i32 %278, 0
  %279 = load i32, ptr %copy, align 4
  %280 = load i32, ptr %have, align 4
  %cmp487 = icmp ult i32 %279, %280
  %281 = select i1 %tobool485.not, i1 false, i1 %cmp487
  br i1 %281, label %do.body458, label %do.end490, !llvm.loop !13

do.end490:                                        ; preds = %do.cond484
  %282 = load ptr, ptr %state, align 8
  %flags491 = getelementptr inbounds %struct.inflate_state, ptr %282, i64 0, i32 4
  %283 = load i32, ptr %flags491, align 8
  %and492 = and i32 %283, 512
  %tobool493.not = icmp eq i32 %and492, 0
  br i1 %tobool493.not, label %if.end498, label %if.then494

if.then494:                                       ; preds = %do.end490
  %284 = load ptr, ptr %state, align 8
  %check495 = getelementptr inbounds %struct.inflate_state, ptr %284, i64 0, i32 6
  %285 = load i64, ptr %check495, align 8
  %286 = load ptr, ptr %next, align 8
  %287 = load i32, ptr %copy, align 4
  %call496 = call i64 @crc32(i64 noundef %285, ptr noundef %286, i32 noundef %287) #5
  %288 = load ptr, ptr %state, align 8
  %check497 = getelementptr inbounds %struct.inflate_state, ptr %288, i64 0, i32 6
  store i64 %call496, ptr %check497, align 8
  br label %if.end498

if.end498:                                        ; preds = %if.then494, %do.end490
  %289 = load i32, ptr %copy, align 4
  %290 = load i32, ptr %have, align 4
  %sub499 = sub i32 %290, %289
  store i32 %sub499, ptr %have, align 4
  %291 = load ptr, ptr %next, align 8
  %idx.ext500 = zext i32 %289 to i64
  %add.ptr501 = getelementptr inbounds i8, ptr %291, i64 %idx.ext500
  store ptr %add.ptr501, ptr %next, align 8
  %292 = load i32, ptr %len, align 4
  %tobool502.not = icmp eq i32 %292, 0
  br i1 %tobool502.not, label %if.end513, label %do.body1773

if.else505:                                       ; preds = %sw.bb449
  %293 = load ptr, ptr %state, align 8
  %head506 = getelementptr inbounds %struct.inflate_state, ptr %293, i64 0, i32 8
  %294 = load ptr, ptr %head506, align 8
  %cmp507.not = icmp eq ptr %294, null
  br i1 %cmp507.not, label %if.end513, label %if.then509

if.then509:                                       ; preds = %if.else505
  %295 = load ptr, ptr %state, align 8
  %head510 = getelementptr inbounds %struct.inflate_state, ptr %295, i64 0, i32 8
  %296 = load ptr, ptr %head510, align 8
  %comment511 = getelementptr inbounds %struct.gz_header_s, ptr %296, i64 0, i32 9
  store ptr null, ptr %comment511, align 8
  br label %if.end513

if.end513:                                        ; preds = %if.else505, %if.then509, %if.end498
  %297 = load ptr, ptr %state, align 8
  store i32 8, ptr %297, align 8
  br label %sw.bb515

sw.bb515:                                         ; preds = %if.end513, %for.cond
  %298 = load ptr, ptr %state, align 8
  %flags516 = getelementptr inbounds %struct.inflate_state, ptr %298, i64 0, i32 4
  %299 = load i32, ptr %flags516, align 8
  %and517 = and i32 %299, 512
  %tobool518.not = icmp eq i32 %and517, 0
  br i1 %tobool518.not, label %if.end553, label %while.cond521

while.cond521:                                    ; preds = %sw.bb515, %if.end529
  %300 = load i32, ptr %bits, align 4
  %cmp522 = icmp ult i32 %300, 16
  br i1 %cmp522, label %do.body525, label %do.end541

do.body525:                                       ; preds = %while.cond521
  %301 = load i32, ptr %have, align 4
  %cmp526 = icmp eq i32 %301, 0
  br i1 %cmp526, label %do.body1773, label %if.end529

if.end529:                                        ; preds = %do.body525
  %302 = load i32, ptr %have, align 4
  %dec530 = add i32 %302, -1
  store i32 %dec530, ptr %have, align 4
  %303 = load ptr, ptr %next, align 8
  %incdec.ptr531 = getelementptr inbounds i8, ptr %303, i64 1
  store ptr %incdec.ptr531, ptr %next, align 8
  %304 = load i8, ptr %303, align 1
  %conv532 = zext i8 %304 to i64
  %305 = load i32, ptr %bits, align 4
  %sh_prom533 = zext i32 %305 to i64
  %shl534 = shl i64 %conv532, %sh_prom533
  %306 = load i64, ptr %hold, align 8
  %add535 = add i64 %306, %shl534
  store i64 %add535, ptr %hold, align 8
  %add536 = add i32 %305, 8
  store i32 %add536, ptr %bits, align 4
  br label %while.cond521, !llvm.loop !14

do.end541:                                        ; preds = %while.cond521
  %307 = load i64, ptr %hold, align 8
  %308 = load ptr, ptr %state, align 8
  %check542 = getelementptr inbounds %struct.inflate_state, ptr %308, i64 0, i32 6
  %309 = load i64, ptr %check542, align 8
  %and543 = and i64 %309, 65535
  %cmp544.not = icmp eq i64 %307, %and543
  br i1 %cmp544.not, label %do.body550, label %if.then546

if.then546:                                       ; preds = %do.end541
  %310 = load ptr, ptr %strm.addr, align 8
  %msg547 = getelementptr inbounds %struct.z_stream_s, ptr %310, i64 0, i32 6
  store ptr @.str.5, ptr %msg547, align 8
  %311 = load ptr, ptr %state, align 8
  store i32 27, ptr %311, align 8
  br label %sw.epilog1772

do.body550:                                       ; preds = %do.end541
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %if.end553

if.end553:                                        ; preds = %do.body550, %sw.bb515
  %312 = load ptr, ptr %state, align 8
  %head554 = getelementptr inbounds %struct.inflate_state, ptr %312, i64 0, i32 8
  %313 = load ptr, ptr %head554, align 8
  %cmp555.not = icmp eq ptr %313, null
  br i1 %cmp555.not, label %if.end564, label %if.then557

if.then557:                                       ; preds = %if.end553
  %314 = load ptr, ptr %state, align 8
  %flags558 = getelementptr inbounds %struct.inflate_state, ptr %314, i64 0, i32 4
  %315 = load i32, ptr %flags558, align 8
  %shr5597 = lshr i32 %315, 9
  %and560 = and i32 %shr5597, 1
  %head561 = getelementptr inbounds %struct.inflate_state, ptr %314, i64 0, i32 8
  %316 = load ptr, ptr %head561, align 8
  %hcrc = getelementptr inbounds %struct.gz_header_s, ptr %316, i64 0, i32 11
  store i32 %and560, ptr %hcrc, align 4
  %317 = load ptr, ptr %state, align 8
  %head562 = getelementptr inbounds %struct.inflate_state, ptr %317, i64 0, i32 8
  %318 = load ptr, ptr %head562, align 8
  %done563 = getelementptr inbounds %struct.gz_header_s, ptr %318, i64 0, i32 12
  store i32 1, ptr %done563, align 8
  br label %if.end564

if.end564:                                        ; preds = %if.then557, %if.end553
  %call565 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #5
  %319 = load ptr, ptr %state, align 8
  %check566 = getelementptr inbounds %struct.inflate_state, ptr %319, i64 0, i32 6
  store i64 %call565, ptr %check566, align 8
  %320 = load ptr, ptr %strm.addr, align 8
  %adler567 = getelementptr inbounds %struct.z_stream_s, ptr %320, i64 0, i32 12
  store i64 %call565, ptr %adler567, align 8
  store i32 11, ptr %319, align 8
  br label %sw.epilog1772

while.cond571:                                    ; preds = %for.cond, %if.end579
  %321 = load i32, ptr %bits, align 4
  %cmp572 = icmp ult i32 %321, 32
  br i1 %cmp572, label %do.body575, label %do.end591

do.body575:                                       ; preds = %while.cond571
  %322 = load i32, ptr %have, align 4
  %cmp576 = icmp eq i32 %322, 0
  br i1 %cmp576, label %do.body1773, label %if.end579

if.end579:                                        ; preds = %do.body575
  %323 = load i32, ptr %have, align 4
  %dec580 = add i32 %323, -1
  store i32 %dec580, ptr %have, align 4
  %324 = load ptr, ptr %next, align 8
  %incdec.ptr581 = getelementptr inbounds i8, ptr %324, i64 1
  store ptr %incdec.ptr581, ptr %next, align 8
  %325 = load i8, ptr %324, align 1
  %conv582 = zext i8 %325 to i64
  %326 = load i32, ptr %bits, align 4
  %sh_prom583 = zext i32 %326 to i64
  %shl584 = shl i64 %conv582, %sh_prom583
  %327 = load i64, ptr %hold, align 8
  %add585 = add i64 %327, %shl584
  store i64 %add585, ptr %hold, align 8
  %add586 = add i32 %326, 8
  store i32 %add586, ptr %bits, align 4
  br label %while.cond571, !llvm.loop !15

do.end591:                                        ; preds = %while.cond571
  %328 = load i64, ptr %hold, align 8
  %shr592 = lshr i64 %328, 24
  %and593 = and i64 %shr592, 255
  %shr594 = lshr i64 %328, 8
  %and595 = and i64 %shr594, 65280
  %add596 = or i64 %and593, %and595
  %and597 = shl i64 %328, 8
  %shl598 = and i64 %and597, 16711680
  %add599 = or i64 %add596, %shl598
  %329 = load i64, ptr %hold, align 8
  %and600 = shl i64 %329, 24
  %shl601 = and i64 %and600, 4278190080
  %add602 = or i64 %add599, %shl601
  %330 = load ptr, ptr %state, align 8
  %check603 = getelementptr inbounds %struct.inflate_state, ptr %330, i64 0, i32 6
  store i64 %add602, ptr %check603, align 8
  %331 = load ptr, ptr %strm.addr, align 8
  %adler604 = getelementptr inbounds %struct.z_stream_s, ptr %331, i64 0, i32 12
  store i64 %add602, ptr %adler604, align 8
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  %332 = load ptr, ptr %state, align 8
  store i32 10, ptr %332, align 8
  br label %sw.bb609

sw.bb609:                                         ; preds = %do.end591, %for.cond
  %333 = load ptr, ptr %state, align 8
  %havedict = getelementptr inbounds %struct.inflate_state, ptr %333, i64 0, i32 3
  %334 = load i32, ptr %havedict, align 4
  %cmp610 = icmp eq i32 %334, 0
  br i1 %cmp610, label %do.body613, label %if.end622

do.body613:                                       ; preds = %sw.bb609
  %335 = load ptr, ptr %put, align 8
  %336 = load ptr, ptr %strm.addr, align 8
  %next_out614 = getelementptr inbounds %struct.z_stream_s, ptr %336, i64 0, i32 3
  store ptr %335, ptr %next_out614, align 8
  %337 = load i32, ptr %left, align 4
  %avail_out615 = getelementptr inbounds %struct.z_stream_s, ptr %336, i64 0, i32 4
  store i32 %337, ptr %avail_out615, align 8
  %338 = load ptr, ptr %next, align 8
  %339 = load ptr, ptr %strm.addr, align 8
  store ptr %338, ptr %339, align 8
  %340 = load i32, ptr %have, align 4
  %avail_in617 = getelementptr inbounds %struct.z_stream_s, ptr %339, i64 0, i32 1
  store i32 %340, ptr %avail_in617, align 8
  %341 = load i64, ptr %hold, align 8
  %342 = load ptr, ptr %state, align 8
  %hold618 = getelementptr inbounds %struct.inflate_state, ptr %342, i64 0, i32 14
  store i64 %341, ptr %hold618, align 8
  %343 = load i32, ptr %bits, align 4
  %bits619 = getelementptr inbounds %struct.inflate_state, ptr %342, i64 0, i32 15
  store i32 %343, ptr %bits619, align 8
  store i32 2, ptr %retval, align 4
  br label %return

if.end622:                                        ; preds = %sw.bb609
  %call623 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #5
  %344 = load ptr, ptr %state, align 8
  %check624 = getelementptr inbounds %struct.inflate_state, ptr %344, i64 0, i32 6
  store i64 %call623, ptr %check624, align 8
  %345 = load ptr, ptr %strm.addr, align 8
  %adler625 = getelementptr inbounds %struct.z_stream_s, ptr %345, i64 0, i32 12
  store i64 %call623, ptr %adler625, align 8
  store i32 11, ptr %344, align 8
  br label %sw.bb627

sw.bb627:                                         ; preds = %if.end622, %for.cond
  %346 = load i32, ptr %flush.addr, align 4
  %cmp628 = icmp eq i32 %346, 5
  br i1 %cmp628, label %do.body1773, label %sw.bb632

sw.bb632:                                         ; preds = %sw.bb627, %for.cond
  %347 = load ptr, ptr %state, align 8
  %last633 = getelementptr inbounds %struct.inflate_state, ptr %347, i64 0, i32 1
  %348 = load i32, ptr %last633, align 4
  %tobool634.not = icmp eq i32 %348, 0
  br i1 %tobool634.not, label %while.cond647, label %do.body636

do.body636:                                       ; preds = %sw.bb632
  %349 = load i32, ptr %bits, align 4
  %and637 = and i32 %349, 7
  %350 = load i64, ptr %hold, align 8
  %sh_prom638 = zext i32 %and637 to i64
  %shr639 = lshr i64 %350, %sh_prom638
  store i64 %shr639, ptr %hold, align 8
  %and640 = and i32 %349, 7
  %351 = load i32, ptr %bits, align 4
  %sub641 = sub i32 %351, %and640
  store i32 %sub641, ptr %bits, align 4
  %352 = load ptr, ptr %state, align 8
  store i32 24, ptr %352, align 8
  br label %sw.epilog1772

while.cond647:                                    ; preds = %sw.bb632, %if.end655
  %353 = load i32, ptr %bits, align 4
  %cmp648 = icmp ult i32 %353, 3
  br i1 %cmp648, label %do.body651, label %do.end667

do.body651:                                       ; preds = %while.cond647
  %354 = load i32, ptr %have, align 4
  %cmp652 = icmp eq i32 %354, 0
  br i1 %cmp652, label %do.body1773, label %if.end655

if.end655:                                        ; preds = %do.body651
  %355 = load i32, ptr %have, align 4
  %dec656 = add i32 %355, -1
  store i32 %dec656, ptr %have, align 4
  %356 = load ptr, ptr %next, align 8
  %incdec.ptr657 = getelementptr inbounds i8, ptr %356, i64 1
  store ptr %incdec.ptr657, ptr %next, align 8
  %357 = load i8, ptr %356, align 1
  %conv658 = zext i8 %357 to i64
  %358 = load i32, ptr %bits, align 4
  %sh_prom659 = zext i32 %358 to i64
  %shl660 = shl i64 %conv658, %sh_prom659
  %359 = load i64, ptr %hold, align 8
  %add661 = add i64 %359, %shl660
  store i64 %add661, ptr %hold, align 8
  %add662 = add i32 %358, 8
  store i32 %add662, ptr %bits, align 4
  br label %while.cond647, !llvm.loop !16

do.end667:                                        ; preds = %while.cond647
  %360 = load i64, ptr %hold, align 8
  %conv668 = trunc i64 %360 to i32
  %and669 = and i32 %conv668, 1
  %361 = load ptr, ptr %state, align 8
  %last670 = getelementptr inbounds %struct.inflate_state, ptr %361, i64 0, i32 1
  store i32 %and669, ptr %last670, align 4
  %362 = load i64, ptr %hold, align 8
  %shr672 = lshr i64 %362, 1
  store i64 %shr672, ptr %hold, align 8
  %363 = load i32, ptr %bits, align 4
  %sub673 = add i32 %363, -1
  store i32 %sub673, ptr %bits, align 4
  %364 = load i64, ptr %hold, align 8
  %conv676 = trunc i64 %364 to i32
  %and677 = and i32 %conv676, 3
  switch i32 %and677, label %do.end667.unreachabledefault [
    i32 0, label %sw.bb678
    i32 1, label %sw.bb680
    i32 2, label %sw.bb682
    i32 3, label %sw.bb684
  ]

sw.bb678:                                         ; preds = %do.end667
  %365 = load ptr, ptr %state, align 8
  store i32 13, ptr %365, align 8
  br label %do.body687

sw.bb680:                                         ; preds = %do.end667
  %366 = load ptr, ptr %state, align 8
  call void @fixedtables(ptr noundef %366)
  %367 = load ptr, ptr %state, align 8
  store i32 18, ptr %367, align 8
  br label %do.body687

sw.bb682:                                         ; preds = %do.end667
  %368 = load ptr, ptr %state, align 8
  store i32 15, ptr %368, align 8
  br label %do.body687

sw.bb684:                                         ; preds = %do.end667
  %369 = load ptr, ptr %strm.addr, align 8
  %msg685 = getelementptr inbounds %struct.z_stream_s, ptr %369, i64 0, i32 6
  store ptr @.str.6, ptr %msg685, align 8
  %370 = load ptr, ptr %state, align 8
  store i32 27, ptr %370, align 8
  br label %do.body687

do.end667.unreachabledefault:                     ; preds = %do.end667
  unreachable

do.body687:                                       ; preds = %sw.bb678, %sw.bb680, %sw.bb682, %sw.bb684
  %371 = load i64, ptr %hold, align 8
  %shr688 = lshr i64 %371, 2
  store i64 %shr688, ptr %hold, align 8
  %372 = load i32, ptr %bits, align 4
  %sub689 = add i32 %372, -2
  store i32 %sub689, ptr %bits, align 4
  br label %sw.epilog1772

do.body693:                                       ; preds = %for.cond
  %373 = load i32, ptr %bits, align 4
  %and694 = and i32 %373, 7
  %374 = load i64, ptr %hold, align 8
  %sh_prom695 = zext i32 %and694 to i64
  %shr696 = lshr i64 %374, %sh_prom695
  store i64 %shr696, ptr %hold, align 8
  %and697 = and i32 %373, 7
  %375 = load i32, ptr %bits, align 4
  %sub698 = sub i32 %375, %and697
  store i32 %sub698, ptr %bits, align 4
  br label %while.cond702

while.cond702:                                    ; preds = %if.end710, %do.body693
  %376 = load i32, ptr %bits, align 4
  %cmp703 = icmp ult i32 %376, 32
  br i1 %cmp703, label %do.body706, label %do.end722

do.body706:                                       ; preds = %while.cond702
  %377 = load i32, ptr %have, align 4
  %cmp707 = icmp eq i32 %377, 0
  br i1 %cmp707, label %do.body1773, label %if.end710

if.end710:                                        ; preds = %do.body706
  %378 = load i32, ptr %have, align 4
  %dec711 = add i32 %378, -1
  store i32 %dec711, ptr %have, align 4
  %379 = load ptr, ptr %next, align 8
  %incdec.ptr712 = getelementptr inbounds i8, ptr %379, i64 1
  store ptr %incdec.ptr712, ptr %next, align 8
  %380 = load i8, ptr %379, align 1
  %conv713 = zext i8 %380 to i64
  %381 = load i32, ptr %bits, align 4
  %sh_prom714 = zext i32 %381 to i64
  %shl715 = shl i64 %conv713, %sh_prom714
  %382 = load i64, ptr %hold, align 8
  %add716 = add i64 %382, %shl715
  store i64 %add716, ptr %hold, align 8
  %add717 = add i32 %381, 8
  store i32 %add717, ptr %bits, align 4
  br label %while.cond702, !llvm.loop !17

do.end722:                                        ; preds = %while.cond702
  %383 = load i64, ptr %hold, align 8
  %and723 = and i64 %383, 65535
  %shr724 = lshr i64 %383, 16
  %xor = xor i64 %shr724, 65535
  %cmp725.not = icmp eq i64 %and723, %xor
  br i1 %cmp725.not, label %if.end730, label %if.then727

if.then727:                                       ; preds = %do.end722
  %384 = load ptr, ptr %strm.addr, align 8
  %msg728 = getelementptr inbounds %struct.z_stream_s, ptr %384, i64 0, i32 6
  store ptr @.str.7, ptr %msg728, align 8
  %385 = load ptr, ptr %state, align 8
  store i32 27, ptr %385, align 8
  br label %sw.epilog1772

if.end730:                                        ; preds = %do.end722
  %386 = load i64, ptr %hold, align 8
  %conv731 = trunc i64 %386 to i32
  %and732 = and i32 %conv731, 65535
  %387 = load ptr, ptr %state, align 8
  %length733 = getelementptr inbounds %struct.inflate_state, ptr %387, i64 0, i32 16
  store i32 %and732, ptr %length733, align 4
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  %388 = load ptr, ptr %state, align 8
  store i32 14, ptr %388, align 8
  br label %sw.bb738

sw.bb738:                                         ; preds = %if.end730, %for.cond
  %389 = load ptr, ptr %state, align 8
  %length739 = getelementptr inbounds %struct.inflate_state, ptr %389, i64 0, i32 16
  %390 = load i32, ptr %length739, align 4
  store i32 %390, ptr %copy, align 4
  %tobool740.not = icmp eq i32 %390, 0
  br i1 %tobool740.not, label %if.end764, label %if.then741

if.then741:                                       ; preds = %sw.bb738
  %391 = load i32, ptr %copy, align 4
  %392 = load i32, ptr %have, align 4
  %cmp742 = icmp ugt i32 %391, %392
  br i1 %cmp742, label %if.then744, label %if.end745

if.then744:                                       ; preds = %if.then741
  %393 = load i32, ptr %have, align 4
  store i32 %393, ptr %copy, align 4
  br label %if.end745

if.end745:                                        ; preds = %if.then744, %if.then741
  %394 = load i32, ptr %copy, align 4
  %395 = load i32, ptr %left, align 4
  %cmp746 = icmp ugt i32 %394, %395
  br i1 %cmp746, label %if.then748, label %if.end749

if.then748:                                       ; preds = %if.end745
  %396 = load i32, ptr %left, align 4
  store i32 %396, ptr %copy, align 4
  br label %if.end749

if.end749:                                        ; preds = %if.then748, %if.end745
  %397 = load i32, ptr %copy, align 4
  %cmp750 = icmp eq i32 %397, 0
  br i1 %cmp750, label %do.body1773, label %if.end753

if.end753:                                        ; preds = %if.end749
  %398 = load ptr, ptr %put, align 8
  %399 = load ptr, ptr %next, align 8
  %400 = load i32, ptr %copy, align 4
  %conv754 = zext i32 %400 to i64
  %401 = call i64 @llvm.objectsize.i64.p0(ptr %398, i1 false, i1 true, i1 false)
  %call755 = call ptr @__memcpy_chk(ptr noundef %398, ptr noundef %399, i64 noundef %conv754, i64 noundef %401) #5
  %402 = load i32, ptr %have, align 4
  %sub756 = sub i32 %402, %400
  store i32 %sub756, ptr %have, align 4
  %403 = load i32, ptr %copy, align 4
  %404 = load ptr, ptr %next, align 8
  %idx.ext757 = zext i32 %403 to i64
  %add.ptr758 = getelementptr inbounds i8, ptr %404, i64 %idx.ext757
  store ptr %add.ptr758, ptr %next, align 8
  %405 = load i32, ptr %left, align 4
  %sub759 = sub i32 %405, %403
  store i32 %sub759, ptr %left, align 4
  %406 = load i32, ptr %copy, align 4
  %407 = load ptr, ptr %put, align 8
  %idx.ext760 = zext i32 %406 to i64
  %add.ptr761 = getelementptr inbounds i8, ptr %407, i64 %idx.ext760
  store ptr %add.ptr761, ptr %put, align 8
  %408 = load ptr, ptr %state, align 8
  %length762 = getelementptr inbounds %struct.inflate_state, ptr %408, i64 0, i32 16
  %409 = load i32, ptr %length762, align 4
  %sub763 = sub i32 %409, %406
  store i32 %sub763, ptr %length762, align 4
  br label %sw.epilog1772

if.end764:                                        ; preds = %sw.bb738
  %410 = load ptr, ptr %state, align 8
  store i32 11, ptr %410, align 8
  br label %sw.epilog1772

while.cond768:                                    ; preds = %for.cond, %if.end776
  %411 = load i32, ptr %bits, align 4
  %cmp769 = icmp ult i32 %411, 14
  br i1 %cmp769, label %do.body772, label %do.end788

do.body772:                                       ; preds = %while.cond768
  %412 = load i32, ptr %have, align 4
  %cmp773 = icmp eq i32 %412, 0
  br i1 %cmp773, label %do.body1773, label %if.end776

if.end776:                                        ; preds = %do.body772
  %413 = load i32, ptr %have, align 4
  %dec777 = add i32 %413, -1
  store i32 %dec777, ptr %have, align 4
  %414 = load ptr, ptr %next, align 8
  %incdec.ptr778 = getelementptr inbounds i8, ptr %414, i64 1
  store ptr %incdec.ptr778, ptr %next, align 8
  %415 = load i8, ptr %414, align 1
  %conv779 = zext i8 %415 to i64
  %416 = load i32, ptr %bits, align 4
  %sh_prom780 = zext i32 %416 to i64
  %shl781 = shl i64 %conv779, %sh_prom780
  %417 = load i64, ptr %hold, align 8
  %add782 = add i64 %417, %shl781
  store i64 %add782, ptr %hold, align 8
  %add783 = add i32 %416, 8
  store i32 %add783, ptr %bits, align 4
  br label %while.cond768, !llvm.loop !18

do.end788:                                        ; preds = %while.cond768
  %418 = load i64, ptr %hold, align 8
  %conv789 = trunc i64 %418 to i32
  %and790 = and i32 %conv789, 31
  %add791 = add nuw nsw i32 %and790, 257
  %419 = load ptr, ptr %state, align 8
  %nlen = getelementptr inbounds %struct.inflate_state, ptr %419, i64 0, i32 24
  store i32 %add791, ptr %nlen, align 4
  %420 = load i64, ptr %hold, align 8
  %shr793 = lshr i64 %420, 5
  store i64 %shr793, ptr %hold, align 8
  %421 = load i32, ptr %bits, align 4
  %sub794 = add i32 %421, -5
  store i32 %sub794, ptr %bits, align 4
  %422 = load i64, ptr %hold, align 8
  %conv797 = trunc i64 %422 to i32
  %and798 = and i32 %conv797, 31
  %add799 = add nuw nsw i32 %and798, 1
  %423 = load ptr, ptr %state, align 8
  %ndist = getelementptr inbounds %struct.inflate_state, ptr %423, i64 0, i32 25
  store i32 %add799, ptr %ndist, align 8
  %424 = load i64, ptr %hold, align 8
  %shr801 = lshr i64 %424, 5
  store i64 %shr801, ptr %hold, align 8
  %425 = load i32, ptr %bits, align 4
  %sub802 = add i32 %425, -5
  store i32 %sub802, ptr %bits, align 4
  %426 = load i64, ptr %hold, align 8
  %conv805 = trunc i64 %426 to i32
  %and806 = and i32 %conv805, 15
  %add807 = add nuw nsw i32 %and806, 4
  %427 = load ptr, ptr %state, align 8
  %ncode = getelementptr inbounds %struct.inflate_state, ptr %427, i64 0, i32 23
  store i32 %add807, ptr %ncode, align 8
  %428 = load i64, ptr %hold, align 8
  %shr809 = lshr i64 %428, 4
  store i64 %shr809, ptr %hold, align 8
  %429 = load i32, ptr %bits, align 4
  %sub810 = add i32 %429, -4
  store i32 %sub810, ptr %bits, align 4
  %430 = load ptr, ptr %state, align 8
  %nlen813 = getelementptr inbounds %struct.inflate_state, ptr %430, i64 0, i32 24
  %431 = load i32, ptr %nlen813, align 4
  %cmp814 = icmp ugt i32 %431, 286
  br i1 %cmp814, label %if.then820, label %lor.lhs.false816

lor.lhs.false816:                                 ; preds = %do.end788
  %432 = load ptr, ptr %state, align 8
  %ndist817 = getelementptr inbounds %struct.inflate_state, ptr %432, i64 0, i32 25
  %433 = load i32, ptr %ndist817, align 8
  %cmp818 = icmp ugt i32 %433, 30
  br i1 %cmp818, label %if.then820, label %if.end823

if.then820:                                       ; preds = %lor.lhs.false816, %do.end788
  %434 = load ptr, ptr %strm.addr, align 8
  %msg821 = getelementptr inbounds %struct.z_stream_s, ptr %434, i64 0, i32 6
  store ptr @.str.8, ptr %msg821, align 8
  %435 = load ptr, ptr %state, align 8
  store i32 27, ptr %435, align 8
  br label %sw.epilog1772

if.end823:                                        ; preds = %lor.lhs.false816
  %436 = load ptr, ptr %state, align 8
  %have824 = getelementptr inbounds %struct.inflate_state, ptr %436, i64 0, i32 26
  store i32 0, ptr %have824, align 4
  store i32 16, ptr %436, align 8
  br label %sw.bb826

sw.bb826:                                         ; preds = %if.end823, %for.cond
  br label %while.cond827

while.cond827:                                    ; preds = %do.end854, %sw.bb826
  %437 = load ptr, ptr %state, align 8
  %have828 = getelementptr inbounds %struct.inflate_state, ptr %437, i64 0, i32 26
  %438 = load i32, ptr %have828, align 4
  %ncode829 = getelementptr inbounds %struct.inflate_state, ptr %437, i64 0, i32 23
  %439 = load i32, ptr %ncode829, align 8
  %cmp830 = icmp ult i32 %438, %439
  br i1 %cmp830, label %while.cond834, label %while.cond870

while.cond834:                                    ; preds = %while.cond827, %if.end842
  %440 = load i32, ptr %bits, align 4
  %cmp835 = icmp ult i32 %440, 3
  br i1 %cmp835, label %do.body838, label %do.end854

do.body838:                                       ; preds = %while.cond834
  %441 = load i32, ptr %have, align 4
  %cmp839 = icmp eq i32 %441, 0
  br i1 %cmp839, label %do.body1773, label %if.end842

if.end842:                                        ; preds = %do.body838
  %442 = load i32, ptr %have, align 4
  %dec843 = add i32 %442, -1
  store i32 %dec843, ptr %have, align 4
  %443 = load ptr, ptr %next, align 8
  %incdec.ptr844 = getelementptr inbounds i8, ptr %443, i64 1
  store ptr %incdec.ptr844, ptr %next, align 8
  %444 = load i8, ptr %443, align 1
  %conv845 = zext i8 %444 to i64
  %445 = load i32, ptr %bits, align 4
  %sh_prom846 = zext i32 %445 to i64
  %shl847 = shl i64 %conv845, %sh_prom846
  %446 = load i64, ptr %hold, align 8
  %add848 = add i64 %446, %shl847
  store i64 %add848, ptr %hold, align 8
  %add849 = add i32 %445, 8
  store i32 %add849, ptr %bits, align 4
  br label %while.cond834, !llvm.loop !19

do.end854:                                        ; preds = %while.cond834
  %447 = load i64, ptr %hold, align 8
  %conv855 = trunc i64 %447 to i16
  %and856 = and i16 %conv855, 7
  %448 = load ptr, ptr %state, align 8
  %have858 = getelementptr inbounds %struct.inflate_state, ptr %448, i64 0, i32 26
  %449 = load i32, ptr %have858, align 4
  %inc859 = add i32 %449, 1
  store i32 %inc859, ptr %have858, align 4
  %idxprom860 = zext i32 %449 to i64
  %arrayidx861 = getelementptr inbounds [19 x i16], ptr @inflate.order, i64 0, i64 %idxprom860
  %450 = load i16, ptr %arrayidx861, align 2
  %idxprom862 = zext i16 %450 to i64
  %arrayidx863 = getelementptr inbounds %struct.inflate_state, ptr %448, i64 0, i32 28, i64 %idxprom862
  store i16 %and856, ptr %arrayidx863, align 2
  %451 = load i64, ptr %hold, align 8
  %shr865 = lshr i64 %451, 3
  store i64 %shr865, ptr %hold, align 8
  %452 = load i32, ptr %bits, align 4
  %sub866 = add i32 %452, -3
  store i32 %sub866, ptr %bits, align 4
  br label %while.cond827, !llvm.loop !20

while.cond870:                                    ; preds = %while.cond827, %while.body874
  %453 = load ptr, ptr %state, align 8
  %have871 = getelementptr inbounds %struct.inflate_state, ptr %453, i64 0, i32 26
  %454 = load i32, ptr %have871, align 4
  %cmp872 = icmp ult i32 %454, 19
  br i1 %cmp872, label %while.body874, label %while.end882

while.body874:                                    ; preds = %while.cond870
  %455 = load ptr, ptr %state, align 8
  %have876 = getelementptr inbounds %struct.inflate_state, ptr %455, i64 0, i32 26
  %456 = load i32, ptr %have876, align 4
  %inc877 = add i32 %456, 1
  store i32 %inc877, ptr %have876, align 4
  %idxprom878 = zext i32 %456 to i64
  %arrayidx879 = getelementptr inbounds [19 x i16], ptr @inflate.order, i64 0, i64 %idxprom878
  %457 = load i16, ptr %arrayidx879, align 2
  %idxprom880 = zext i16 %457 to i64
  %arrayidx881 = getelementptr inbounds %struct.inflate_state, ptr %455, i64 0, i32 28, i64 %idxprom880
  store i16 0, ptr %arrayidx881, align 2
  br label %while.cond870, !llvm.loop !21

while.end882:                                     ; preds = %while.cond870
  %458 = load ptr, ptr %state, align 8
  %codes = getelementptr inbounds %struct.inflate_state, ptr %458, i64 0, i32 30
  %next884 = getelementptr inbounds %struct.inflate_state, ptr %458, i64 0, i32 27
  store ptr %codes, ptr %next884, align 8
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %458, i64 0, i32 19
  store ptr %codes, ptr %lencode, align 8
  %lenbits = getelementptr inbounds %struct.inflate_state, ptr %458, i64 0, i32 21
  store i32 7, ptr %lenbits, align 8
  %459 = load ptr, ptr %state, align 8
  %lens886 = getelementptr inbounds %struct.inflate_state, ptr %459, i64 0, i32 28
  %next888 = getelementptr inbounds %struct.inflate_state, ptr %459, i64 0, i32 27
  %lenbits889 = getelementptr inbounds %struct.inflate_state, ptr %459, i64 0, i32 21
  %work = getelementptr inbounds %struct.inflate_state, ptr %459, i64 0, i32 29
  %call891 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %lens886, i32 noundef 19, ptr noundef nonnull %next888, ptr noundef nonnull %lenbits889, ptr noundef nonnull %work) #5
  store i32 %call891, ptr %ret, align 4
  %tobool892.not = icmp eq i32 %call891, 0
  br i1 %tobool892.not, label %if.end896, label %if.then893

if.then893:                                       ; preds = %while.end882
  %460 = load ptr, ptr %strm.addr, align 8
  %msg894 = getelementptr inbounds %struct.z_stream_s, ptr %460, i64 0, i32 6
  store ptr @.str.9, ptr %msg894, align 8
  %461 = load ptr, ptr %state, align 8
  store i32 27, ptr %461, align 8
  br label %sw.epilog1772

if.end896:                                        ; preds = %while.end882
  %462 = load ptr, ptr %state, align 8
  %have897 = getelementptr inbounds %struct.inflate_state, ptr %462, i64 0, i32 26
  store i32 0, ptr %have897, align 4
  store i32 17, ptr %462, align 8
  br label %sw.bb899

sw.bb899:                                         ; preds = %if.end896, %for.cond
  br label %while.cond900

while.cond900:                                    ; preds = %if.end1160, %sw.bb899
  %463 = load ptr, ptr %state, align 8
  %have901 = getelementptr inbounds %struct.inflate_state, ptr %463, i64 0, i32 26
  %464 = load i32, ptr %have901, align 4
  %nlen902 = getelementptr inbounds %struct.inflate_state, ptr %463, i64 0, i32 24
  %465 = load i32, ptr %nlen902, align 4
  %ndist903 = getelementptr inbounds %struct.inflate_state, ptr %463, i64 0, i32 25
  %466 = load i32, ptr %ndist903, align 8
  %add904 = add i32 %465, %466
  %cmp905 = icmp ult i32 %464, %add904
  br i1 %cmp905, label %for.cond908, label %while.end1161

for.cond908:                                      ; preds = %while.cond900, %if.end927
  %467 = load ptr, ptr %state, align 8
  %lencode909 = getelementptr inbounds %struct.inflate_state, ptr %467, i64 0, i32 19
  %468 = load ptr, ptr %lencode909, align 8
  %469 = load i64, ptr %hold, align 8
  %conv910 = trunc i64 %469 to i32
  %lenbits911 = getelementptr inbounds %struct.inflate_state, ptr %467, i64 0, i32 21
  %470 = load i32, ptr %lenbits911, align 8
  %notmask6 = shl nsw i32 -1, %470
  %sub913 = xor i32 %notmask6, -1
  %and914 = and i32 %conv910, %sub913
  %idxprom915 = zext i32 %and914 to i64
  %arrayidx916 = getelementptr inbounds %struct.code, ptr %468, i64 %idxprom915
  %471 = load i32, ptr %arrayidx916, align 2
  store i32 %471, ptr %this, align 4
  %bits917 = getelementptr inbounds %struct.code, ptr %this, i64 0, i32 1
  %472 = load i8, ptr %bits917, align 1
  %conv918 = zext i8 %472 to i32
  %473 = load i32, ptr %bits, align 4
  %cmp919.not = icmp ult i32 %473, %conv918
  br i1 %cmp919.not, label %do.body923, label %for.end

do.body923:                                       ; preds = %for.cond908
  %474 = load i32, ptr %have, align 4
  %cmp924 = icmp eq i32 %474, 0
  br i1 %cmp924, label %do.body1773, label %if.end927

if.end927:                                        ; preds = %do.body923
  %475 = load i32, ptr %have, align 4
  %dec928 = add i32 %475, -1
  store i32 %dec928, ptr %have, align 4
  %476 = load ptr, ptr %next, align 8
  %incdec.ptr929 = getelementptr inbounds i8, ptr %476, i64 1
  store ptr %incdec.ptr929, ptr %next, align 8
  %477 = load i8, ptr %476, align 1
  %conv930 = zext i8 %477 to i64
  %478 = load i32, ptr %bits, align 4
  %sh_prom931 = zext i32 %478 to i64
  %shl932 = shl i64 %conv930, %sh_prom931
  %479 = load i64, ptr %hold, align 8
  %add933 = add i64 %479, %shl932
  store i64 %add933, ptr %hold, align 8
  %add934 = add i32 %478, 8
  store i32 %add934, ptr %bits, align 4
  br label %for.cond908

for.end:                                          ; preds = %for.cond908
  %val = getelementptr inbounds %struct.code, ptr %this, i64 0, i32 2
  %480 = load i16, ptr %val, align 2
  %cmp938 = icmp ult i16 %480, 16
  br i1 %cmp938, label %while.cond942, label %if.else981

while.cond942:                                    ; preds = %for.end, %if.end952
  %481 = load i32, ptr %bits, align 4
  %bits943 = getelementptr inbounds %struct.code, ptr %this, i64 0, i32 1
  %482 = load i8, ptr %bits943, align 1
  %conv944 = zext i8 %482 to i32
  %cmp945 = icmp ult i32 %481, %conv944
  br i1 %cmp945, label %do.body948, label %do.body965

do.body948:                                       ; preds = %while.cond942
  %483 = load i32, ptr %have, align 4
  %cmp949 = icmp eq i32 %483, 0
  br i1 %cmp949, label %do.body1773, label %if.end952

if.end952:                                        ; preds = %do.body948
  %484 = load i32, ptr %have, align 4
  %dec953 = add i32 %484, -1
  store i32 %dec953, ptr %have, align 4
  %485 = load ptr, ptr %next, align 8
  %incdec.ptr954 = getelementptr inbounds i8, ptr %485, i64 1
  store ptr %incdec.ptr954, ptr %next, align 8
  %486 = load i8, ptr %485, align 1
  %conv955 = zext i8 %486 to i64
  %487 = load i32, ptr %bits, align 4
  %sh_prom956 = zext i32 %487 to i64
  %shl957 = shl i64 %conv955, %sh_prom956
  %488 = load i64, ptr %hold, align 8
  %add958 = add i64 %488, %shl957
  store i64 %add958, ptr %hold, align 8
  %add959 = add i32 %487, 8
  store i32 %add959, ptr %bits, align 4
  br label %while.cond942, !llvm.loop !22

do.body965:                                       ; preds = %while.cond942
  %bits966 = getelementptr inbounds %struct.code, ptr %this, i64 0, i32 1
  %489 = load i8, ptr %bits966, align 1
  %490 = load i64, ptr %hold, align 8
  %sh_prom968 = zext i8 %489 to i64
  %shr969 = lshr i64 %490, %sh_prom968
  store i64 %shr969, ptr %hold, align 8
  %conv971 = zext i8 %489 to i32
  %491 = load i32, ptr %bits, align 4
  %sub972 = sub i32 %491, %conv971
  store i32 %sub972, ptr %bits, align 4
  %val975 = getelementptr inbounds %struct.code, ptr %this, i64 0, i32 2
  %492 = load i16, ptr %val975, align 2
  %493 = load ptr, ptr %state, align 8
  %have977 = getelementptr inbounds %struct.inflate_state, ptr %493, i64 0, i32 26
  %494 = load i32, ptr %have977, align 4
  %inc978 = add i32 %494, 1
  store i32 %inc978, ptr %have977, align 4
  %idxprom979 = zext i32 %494 to i64
  %arrayidx980 = getelementptr inbounds %struct.inflate_state, ptr %493, i64 0, i32 28, i64 %idxprom979
  store i16 %492, ptr %arrayidx980, align 2
  br label %if.end1160

if.else981:                                       ; preds = %for.end
  %val982 = getelementptr inbounds %struct.code, ptr %this, i64 0, i32 2
  %495 = load i16, ptr %val982, align 2
  %cmp984 = icmp eq i16 %495, 16
  br i1 %cmp984, label %while.cond988, label %if.else1043

while.cond988:                                    ; preds = %if.else981, %if.end999
  %496 = load i32, ptr %bits, align 4
  %bits989 = getelementptr inbounds %struct.code, ptr %this, i64 0, i32 1
  %497 = load i8, ptr %bits989, align 1
  %conv990 = zext i8 %497 to i32
  %add991 = add nuw nsw i32 %conv990, 2
  %cmp992 = icmp ult i32 %496, %add991
  br i1 %cmp992, label %do.body995, label %do.body1012

do.body995:                                       ; preds = %while.cond988
  %498 = load i32, ptr %have, align 4
  %cmp996 = icmp eq i32 %498, 0
  br i1 %cmp996, label %do.body1773, label %if.end999

if.end999:                                        ; preds = %do.body995
  %499 = load i32, ptr %have, align 4
  %dec1000 = add i32 %499, -1
  store i32 %dec1000, ptr %have, align 4
  %500 = load ptr, ptr %next, align 8
  %incdec.ptr1001 = getelementptr inbounds i8, ptr %500, i64 1
  store ptr %incdec.ptr1001, ptr %next, align 8
  %501 = load i8, ptr %500, align 1
  %conv1002 = zext i8 %501 to i64
  %502 = load i32, ptr %bits, align 4
  %sh_prom1003 = zext i32 %502 to i64
  %shl1004 = shl i64 %conv1002, %sh_prom1003
  %503 = load i64, ptr %hold, align 8
  %add1005 = add i64 %503, %shl1004
  store i64 %add1005, ptr %hold, align 8
  %add1006 = add i32 %502, 8
  store i32 %add1006, ptr %bits, align 4
  br label %while.cond988, !llvm.loop !23

do.body1012:                                      ; preds = %while.cond988
  %bits1013 = getelementptr inbounds %struct.code, ptr %this, i64 0, i32 1
  %504 = load i8, ptr %bits1013, align 1
  %505 = load i64, ptr %hold, align 8
  %sh_prom1015 = zext i8 %504 to i64
  %shr1016 = lshr i64 %505, %sh_prom1015
  store i64 %shr1016, ptr %hold, align 8
  %conv1018 = zext i8 %504 to i32
  %506 = load i32, ptr %bits, align 4
  %sub1019 = sub i32 %506, %conv1018
  store i32 %sub1019, ptr %bits, align 4
  %507 = load ptr, ptr %state, align 8
  %have1022 = getelementptr inbounds %struct.inflate_state, ptr %507, i64 0, i32 26
  %508 = load i32, ptr %have1022, align 4
  %cmp1023 = icmp eq i32 %508, 0
  br i1 %cmp1023, label %if.then1025, label %if.end1028

if.then1025:                                      ; preds = %do.body1012
  %509 = load ptr, ptr %strm.addr, align 8
  %msg1026 = getelementptr inbounds %struct.z_stream_s, ptr %509, i64 0, i32 6
  store ptr @.str.10, ptr %msg1026, align 8
  %510 = load ptr, ptr %state, align 8
  store i32 27, ptr %510, align 8
  br label %while.end1161

if.end1028:                                       ; preds = %do.body1012
  %511 = load ptr, ptr %state, align 8
  %have1030 = getelementptr inbounds %struct.inflate_state, ptr %511, i64 0, i32 26
  %512 = load i32, ptr %have1030, align 4
  %sub1031 = add i32 %512, -1
  %idxprom1032 = zext i32 %sub1031 to i64
  %arrayidx1033 = getelementptr inbounds %struct.inflate_state, ptr %511, i64 0, i32 28, i64 %idxprom1032
  %513 = load i16, ptr %arrayidx1033, align 2
  %conv1034 = zext i16 %513 to i32
  store i32 %conv1034, ptr %len, align 4
  %514 = load i64, ptr %hold, align 8
  %conv1035 = trunc i64 %514 to i32
  %and1036 = and i32 %conv1035, 3
  %add1037 = add nuw nsw i32 %and1036, 3
  store i32 %add1037, ptr %copy, align 4
  %515 = load i64, ptr %hold, align 8
  %shr1039 = lshr i64 %515, 2
  store i64 %shr1039, ptr %hold, align 8
  %516 = load i32, ptr %bits, align 4
  %sub1040 = add i32 %516, -2
  store i32 %sub1040, ptr %bits, align 4
  br label %if.end1137

if.else1043:                                      ; preds = %if.else981
  %val1044 = getelementptr inbounds %struct.code, ptr %this, i64 0, i32 2
  %517 = load i16, ptr %val1044, align 2
  %cmp1046 = icmp eq i16 %517, 17
  br i1 %cmp1046, label %while.cond1050, label %while.cond1094

while.cond1050:                                   ; preds = %if.else1043, %if.end1061
  %518 = load i32, ptr %bits, align 4
  %bits1051 = getelementptr inbounds %struct.code, ptr %this, i64 0, i32 1
  %519 = load i8, ptr %bits1051, align 1
  %conv1052 = zext i8 %519 to i32
  %add1053 = add nuw nsw i32 %conv1052, 3
  %cmp1054 = icmp ult i32 %518, %add1053
  br i1 %cmp1054, label %do.body1057, label %do.body1074

do.body1057:                                      ; preds = %while.cond1050
  %520 = load i32, ptr %have, align 4
  %cmp1058 = icmp eq i32 %520, 0
  br i1 %cmp1058, label %do.body1773, label %if.end1061

if.end1061:                                       ; preds = %do.body1057
  %521 = load i32, ptr %have, align 4
  %dec1062 = add i32 %521, -1
  store i32 %dec1062, ptr %have, align 4
  %522 = load ptr, ptr %next, align 8
  %incdec.ptr1063 = getelementptr inbounds i8, ptr %522, i64 1
  store ptr %incdec.ptr1063, ptr %next, align 8
  %523 = load i8, ptr %522, align 1
  %conv1064 = zext i8 %523 to i64
  %524 = load i32, ptr %bits, align 4
  %sh_prom1065 = zext i32 %524 to i64
  %shl1066 = shl i64 %conv1064, %sh_prom1065
  %525 = load i64, ptr %hold, align 8
  %add1067 = add i64 %525, %shl1066
  store i64 %add1067, ptr %hold, align 8
  %add1068 = add i32 %524, 8
  store i32 %add1068, ptr %bits, align 4
  br label %while.cond1050, !llvm.loop !24

do.body1074:                                      ; preds = %while.cond1050
  %bits1075 = getelementptr inbounds %struct.code, ptr %this, i64 0, i32 1
  %526 = load i8, ptr %bits1075, align 1
  %527 = load i64, ptr %hold, align 8
  %sh_prom1077 = zext i8 %526 to i64
  %shr1078 = lshr i64 %527, %sh_prom1077
  store i64 %shr1078, ptr %hold, align 8
  %conv1080 = zext i8 %526 to i32
  %528 = load i32, ptr %bits, align 4
  %sub1081 = sub i32 %528, %conv1080
  store i32 %sub1081, ptr %bits, align 4
  store i32 0, ptr %len, align 4
  %529 = load i64, ptr %hold, align 8
  %conv1084 = trunc i64 %529 to i32
  %and1085 = and i32 %conv1084, 7
  %add1086 = add nuw nsw i32 %and1085, 3
  store i32 %add1086, ptr %copy, align 4
  %530 = load i64, ptr %hold, align 8
  %shr1088 = lshr i64 %530, 3
  store i64 %shr1088, ptr %hold, align 8
  %531 = load i32, ptr %bits, align 4
  %sub1089 = add i32 %531, -3
  store i32 %sub1089, ptr %bits, align 4
  br label %if.end1137

while.cond1094:                                   ; preds = %if.else1043, %if.end1105
  %532 = load i32, ptr %bits, align 4
  %bits1095 = getelementptr inbounds %struct.code, ptr %this, i64 0, i32 1
  %533 = load i8, ptr %bits1095, align 1
  %conv1096 = zext i8 %533 to i32
  %add1097 = add nuw nsw i32 %conv1096, 7
  %cmp1098 = icmp ult i32 %532, %add1097
  br i1 %cmp1098, label %do.body1101, label %do.body1118

do.body1101:                                      ; preds = %while.cond1094
  %534 = load i32, ptr %have, align 4
  %cmp1102 = icmp eq i32 %534, 0
  br i1 %cmp1102, label %do.body1773, label %if.end1105

if.end1105:                                       ; preds = %do.body1101
  %535 = load i32, ptr %have, align 4
  %dec1106 = add i32 %535, -1
  store i32 %dec1106, ptr %have, align 4
  %536 = load ptr, ptr %next, align 8
  %incdec.ptr1107 = getelementptr inbounds i8, ptr %536, i64 1
  store ptr %incdec.ptr1107, ptr %next, align 8
  %537 = load i8, ptr %536, align 1
  %conv1108 = zext i8 %537 to i64
  %538 = load i32, ptr %bits, align 4
  %sh_prom1109 = zext i32 %538 to i64
  %shl1110 = shl i64 %conv1108, %sh_prom1109
  %539 = load i64, ptr %hold, align 8
  %add1111 = add i64 %539, %shl1110
  store i64 %add1111, ptr %hold, align 8
  %add1112 = add i32 %538, 8
  store i32 %add1112, ptr %bits, align 4
  br label %while.cond1094, !llvm.loop !25

do.body1118:                                      ; preds = %while.cond1094
  %bits1119 = getelementptr inbounds %struct.code, ptr %this, i64 0, i32 1
  %540 = load i8, ptr %bits1119, align 1
  %541 = load i64, ptr %hold, align 8
  %sh_prom1121 = zext i8 %540 to i64
  %shr1122 = lshr i64 %541, %sh_prom1121
  store i64 %shr1122, ptr %hold, align 8
  %conv1124 = zext i8 %540 to i32
  %542 = load i32, ptr %bits, align 4
  %sub1125 = sub i32 %542, %conv1124
  store i32 %sub1125, ptr %bits, align 4
  store i32 0, ptr %len, align 4
  %543 = load i64, ptr %hold, align 8
  %conv1128 = trunc i64 %543 to i32
  %and1129 = and i32 %conv1128, 127
  %add1130 = add nuw nsw i32 %and1129, 11
  store i32 %add1130, ptr %copy, align 4
  %544 = load i64, ptr %hold, align 8
  %shr1132 = lshr i64 %544, 7
  store i64 %shr1132, ptr %hold, align 8
  %545 = load i32, ptr %bits, align 4
  %sub1133 = add i32 %545, -7
  store i32 %sub1133, ptr %bits, align 4
  br label %if.end1137

if.end1137:                                       ; preds = %do.body1074, %do.body1118, %if.end1028
  %546 = load ptr, ptr %state, align 8
  %have1138 = getelementptr inbounds %struct.inflate_state, ptr %546, i64 0, i32 26
  %547 = load i32, ptr %have1138, align 4
  %548 = load i32, ptr %copy, align 4
  %add1139 = add i32 %547, %548
  %nlen1140 = getelementptr inbounds %struct.inflate_state, ptr %546, i64 0, i32 24
  %549 = load i32, ptr %nlen1140, align 4
  %550 = load ptr, ptr %state, align 8
  %ndist1141 = getelementptr inbounds %struct.inflate_state, ptr %550, i64 0, i32 25
  %551 = load i32, ptr %ndist1141, align 8
  %add1142 = add i32 %549, %551
  %cmp1143 = icmp ugt i32 %add1139, %add1142
  br i1 %cmp1143, label %if.then1145, label %while.cond1149

if.then1145:                                      ; preds = %if.end1137
  %552 = load ptr, ptr %strm.addr, align 8
  %msg1146 = getelementptr inbounds %struct.z_stream_s, ptr %552, i64 0, i32 6
  store ptr @.str.10, ptr %msg1146, align 8
  %553 = load ptr, ptr %state, align 8
  store i32 27, ptr %553, align 8
  br label %while.end1161

while.cond1149:                                   ; preds = %if.end1137, %while.body1152
  %554 = load i32, ptr %copy, align 4
  %dec1150 = add i32 %554, -1
  store i32 %dec1150, ptr %copy, align 4
  %tobool1151.not = icmp eq i32 %554, 0
  br i1 %tobool1151.not, label %if.end1160, label %while.body1152

while.body1152:                                   ; preds = %while.cond1149
  %555 = load i32, ptr %len, align 4
  %conv1153 = trunc i32 %555 to i16
  %556 = load ptr, ptr %state, align 8
  %have1155 = getelementptr inbounds %struct.inflate_state, ptr %556, i64 0, i32 26
  %557 = load i32, ptr %have1155, align 4
  %inc1156 = add i32 %557, 1
  store i32 %inc1156, ptr %have1155, align 4
  %idxprom1157 = zext i32 %557 to i64
  %arrayidx1158 = getelementptr inbounds %struct.inflate_state, ptr %556, i64 0, i32 28, i64 %idxprom1157
  store i16 %conv1153, ptr %arrayidx1158, align 2
  br label %while.cond1149, !llvm.loop !26

if.end1160:                                       ; preds = %while.cond1149, %do.body965
  br label %while.cond900, !llvm.loop !27

while.end1161:                                    ; preds = %if.then1145, %if.then1025, %while.cond900
  %558 = load ptr, ptr %state, align 8
  %559 = load i32, ptr %558, align 8
  %cmp1163 = icmp eq i32 %559, 27
  br i1 %cmp1163, label %sw.epilog1772, label %if.end1166

if.end1166:                                       ; preds = %while.end1161
  %560 = load ptr, ptr %state, align 8
  %codes1167 = getelementptr inbounds %struct.inflate_state, ptr %560, i64 0, i32 30
  %next1169 = getelementptr inbounds %struct.inflate_state, ptr %560, i64 0, i32 27
  store ptr %codes1167, ptr %next1169, align 8
  %lencode1171 = getelementptr inbounds %struct.inflate_state, ptr %560, i64 0, i32 19
  store ptr %codes1167, ptr %lencode1171, align 8
  %lenbits1172 = getelementptr inbounds %struct.inflate_state, ptr %560, i64 0, i32 21
  store i32 9, ptr %lenbits1172, align 8
  %561 = load ptr, ptr %state, align 8
  %lens1173 = getelementptr inbounds %struct.inflate_state, ptr %561, i64 0, i32 28
  %nlen1175 = getelementptr inbounds %struct.inflate_state, ptr %561, i64 0, i32 24
  %562 = load i32, ptr %nlen1175, align 4
  %next1176 = getelementptr inbounds %struct.inflate_state, ptr %561, i64 0, i32 27
  %lenbits1177 = getelementptr inbounds %struct.inflate_state, ptr %561, i64 0, i32 21
  %work1178 = getelementptr inbounds %struct.inflate_state, ptr %561, i64 0, i32 29
  %call1180 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %lens1173, i32 noundef %562, ptr noundef nonnull %next1176, ptr noundef nonnull %lenbits1177, ptr noundef nonnull %work1178) #5
  store i32 %call1180, ptr %ret, align 4
  %tobool1181.not = icmp eq i32 %call1180, 0
  br i1 %tobool1181.not, label %if.end1185, label %if.then1182

if.then1182:                                      ; preds = %if.end1166
  %563 = load ptr, ptr %strm.addr, align 8
  %msg1183 = getelementptr inbounds %struct.z_stream_s, ptr %563, i64 0, i32 6
  store ptr @.str.11, ptr %msg1183, align 8
  %564 = load ptr, ptr %state, align 8
  store i32 27, ptr %564, align 8
  br label %sw.epilog1772

if.end1185:                                       ; preds = %if.end1166
  %565 = load ptr, ptr %state, align 8
  %next1186 = getelementptr inbounds %struct.inflate_state, ptr %565, i64 0, i32 27
  %566 = load ptr, ptr %next1186, align 8
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %565, i64 0, i32 20
  store ptr %566, ptr %distcode, align 8
  %distbits = getelementptr inbounds %struct.inflate_state, ptr %565, i64 0, i32 22
  store i32 6, ptr %distbits, align 4
  %567 = load ptr, ptr %state, align 8
  %lens1187 = getelementptr inbounds %struct.inflate_state, ptr %567, i64 0, i32 28
  %nlen1189 = getelementptr inbounds %struct.inflate_state, ptr %567, i64 0, i32 24
  %568 = load i32, ptr %nlen1189, align 4
  %idx.ext1190 = zext i32 %568 to i64
  %add.ptr1191 = getelementptr inbounds i16, ptr %lens1187, i64 %idx.ext1190
  %ndist1192 = getelementptr inbounds %struct.inflate_state, ptr %567, i64 0, i32 25
  %569 = load i32, ptr %ndist1192, align 8
  %570 = load ptr, ptr %state, align 8
  %next1193 = getelementptr inbounds %struct.inflate_state, ptr %570, i64 0, i32 27
  %distbits1194 = getelementptr inbounds %struct.inflate_state, ptr %570, i64 0, i32 22
  %work1195 = getelementptr inbounds %struct.inflate_state, ptr %570, i64 0, i32 29
  %call1197 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %add.ptr1191, i32 noundef %569, ptr noundef nonnull %next1193, ptr noundef nonnull %distbits1194, ptr noundef nonnull %work1195) #5
  store i32 %call1197, ptr %ret, align 4
  %tobool1198.not = icmp eq i32 %call1197, 0
  br i1 %tobool1198.not, label %if.end1202, label %if.then1199

if.then1199:                                      ; preds = %if.end1185
  %571 = load ptr, ptr %strm.addr, align 8
  %msg1200 = getelementptr inbounds %struct.z_stream_s, ptr %571, i64 0, i32 6
  store ptr @.str.12, ptr %msg1200, align 8
  %572 = load ptr, ptr %state, align 8
  store i32 27, ptr %572, align 8
  br label %sw.epilog1772

if.end1202:                                       ; preds = %if.end1185
  %573 = load ptr, ptr %state, align 8
  store i32 18, ptr %573, align 8
  br label %sw.bb1204

sw.bb1204:                                        ; preds = %if.end1202, %for.cond
  %574 = load i32, ptr %have, align 4
  %cmp1205 = icmp ugt i32 %574, 5
  %575 = load i32, ptr %left, align 4
  %cmp1208 = icmp ugt i32 %575, 257
  %or.cond9 = select i1 %cmp1205, i1 %cmp1208, i1 false
  br i1 %or.cond9, label %do.body1211, label %for.cond1230

do.body1211:                                      ; preds = %sw.bb1204
  %576 = load ptr, ptr %put, align 8
  %577 = load ptr, ptr %strm.addr, align 8
  %next_out1212 = getelementptr inbounds %struct.z_stream_s, ptr %577, i64 0, i32 3
  store ptr %576, ptr %next_out1212, align 8
  %578 = load i32, ptr %left, align 4
  %avail_out1213 = getelementptr inbounds %struct.z_stream_s, ptr %577, i64 0, i32 4
  store i32 %578, ptr %avail_out1213, align 8
  %579 = load ptr, ptr %next, align 8
  %580 = load ptr, ptr %strm.addr, align 8
  store ptr %579, ptr %580, align 8
  %581 = load i32, ptr %have, align 4
  %avail_in1215 = getelementptr inbounds %struct.z_stream_s, ptr %580, i64 0, i32 1
  store i32 %581, ptr %avail_in1215, align 8
  %582 = load i64, ptr %hold, align 8
  %583 = load ptr, ptr %state, align 8
  %hold1216 = getelementptr inbounds %struct.inflate_state, ptr %583, i64 0, i32 14
  store i64 %582, ptr %hold1216, align 8
  %584 = load i32, ptr %bits, align 4
  %bits1217 = getelementptr inbounds %struct.inflate_state, ptr %583, i64 0, i32 15
  store i32 %584, ptr %bits1217, align 8
  %585 = load ptr, ptr %strm.addr, align 8
  %586 = load i32, ptr %out, align 4
  call void @inflate_fast(ptr noundef %585, i32 noundef %586) #5
  %587 = load ptr, ptr %strm.addr, align 8
  %next_out1221 = getelementptr inbounds %struct.z_stream_s, ptr %587, i64 0, i32 3
  %588 = load ptr, ptr %next_out1221, align 8
  store ptr %588, ptr %put, align 8
  %avail_out1222 = getelementptr inbounds %struct.z_stream_s, ptr %587, i64 0, i32 4
  %589 = load i32, ptr %avail_out1222, align 8
  store i32 %589, ptr %left, align 4
  %590 = load ptr, ptr %strm.addr, align 8
  %591 = load ptr, ptr %590, align 8
  store ptr %591, ptr %next, align 8
  %avail_in1224 = getelementptr inbounds %struct.z_stream_s, ptr %590, i64 0, i32 1
  %592 = load i32, ptr %avail_in1224, align 8
  store i32 %592, ptr %have, align 4
  %593 = load ptr, ptr %state, align 8
  %hold1225 = getelementptr inbounds %struct.inflate_state, ptr %593, i64 0, i32 14
  %594 = load i64, ptr %hold1225, align 8
  store i64 %594, ptr %hold, align 8
  %bits1226 = getelementptr inbounds %struct.inflate_state, ptr %593, i64 0, i32 15
  %595 = load i32, ptr %bits1226, align 8
  store i32 %595, ptr %bits, align 4
  br label %sw.epilog1772

for.cond1230:                                     ; preds = %sw.bb1204, %if.end1249
  %596 = load ptr, ptr %state, align 8
  %lencode1231 = getelementptr inbounds %struct.inflate_state, ptr %596, i64 0, i32 19
  %597 = load ptr, ptr %lencode1231, align 8
  %598 = load i64, ptr %hold, align 8
  %conv1232 = trunc i64 %598 to i32
  %lenbits1233 = getelementptr inbounds %struct.inflate_state, ptr %596, i64 0, i32 21
  %599 = load i32, ptr %lenbits1233, align 8
  %notmask4 = shl nsw i32 -1, %599
  %sub1235 = xor i32 %notmask4, -1
  %and1236 = and i32 %conv1232, %sub1235
  %idxprom1237 = zext i32 %and1236 to i64
  %arrayidx1238 = getelementptr inbounds %struct.code, ptr %597, i64 %idxprom1237
  %600 = load i32, ptr %arrayidx1238, align 2
  store i32 %600, ptr %this, align 4
  %bits1239 = getelementptr inbounds %struct.code, ptr %this, i64 0, i32 1
  %601 = load i8, ptr %bits1239, align 1
  %conv1240 = zext i8 %601 to i32
  %602 = load i32, ptr %bits, align 4
  %cmp1241.not = icmp ult i32 %602, %conv1240
  br i1 %cmp1241.not, label %do.body1245, label %for.end1259

do.body1245:                                      ; preds = %for.cond1230
  %603 = load i32, ptr %have, align 4
  %cmp1246 = icmp eq i32 %603, 0
  br i1 %cmp1246, label %do.body1773, label %if.end1249

if.end1249:                                       ; preds = %do.body1245
  %604 = load i32, ptr %have, align 4
  %dec1250 = add i32 %604, -1
  store i32 %dec1250, ptr %have, align 4
  %605 = load ptr, ptr %next, align 8
  %incdec.ptr1251 = getelementptr inbounds i8, ptr %605, i64 1
  store ptr %incdec.ptr1251, ptr %next, align 8
  %606 = load i8, ptr %605, align 1
  %conv1252 = zext i8 %606 to i64
  %607 = load i32, ptr %bits, align 4
  %sh_prom1253 = zext i32 %607 to i64
  %shl1254 = shl i64 %conv1252, %sh_prom1253
  %608 = load i64, ptr %hold, align 8
  %add1255 = add i64 %608, %shl1254
  store i64 %add1255, ptr %hold, align 8
  %add1256 = add i32 %607, 8
  store i32 %add1256, ptr %bits, align 4
  br label %for.cond1230

for.end1259:                                      ; preds = %for.cond1230
  %609 = load i8, ptr %this, align 4
  %tobool1261.not = icmp ne i8 %609, 0
  %610 = load i8, ptr %this, align 4
  %cmp1266 = icmp ult i8 %610, 16
  %or.cond10 = select i1 %tobool1261.not, i1 %cmp1266, i1 false
  br i1 %or.cond10, label %if.then1268, label %do.body1323

if.then1268:                                      ; preds = %for.end1259
  %611 = load i32, ptr %this, align 4
  store i32 %611, ptr %last, align 4
  br label %for.cond1269

for.cond1269:                                     ; preds = %if.end1301, %if.then1268
  %612 = load ptr, ptr %state, align 8
  %lencode1270 = getelementptr inbounds %struct.inflate_state, ptr %612, i64 0, i32 19
  %613 = load ptr, ptr %lencode1270, align 8
  %val1271 = getelementptr inbounds %struct.code, ptr %last, i64 0, i32 2
  %614 = load i16, ptr %val1271, align 2
  %conv1272 = zext i16 %614 to i32
  %615 = load i64, ptr %hold, align 8
  %conv1273 = trunc i64 %615 to i32
  %bits1274 = getelementptr inbounds %struct.code, ptr %last, i64 0, i32 1
  %616 = load i8, ptr %bits1274, align 1
  %conv1275 = zext i8 %616 to i32
  %617 = load i8, ptr %last, align 4
  %conv1277 = zext i8 %617 to i32
  %add1278 = add nuw nsw i32 %conv1275, %conv1277
  %notmask5 = shl nsw i32 -1, %add1278
  %sub1280 = xor i32 %notmask5, -1
  %and1281 = and i32 %conv1273, %sub1280
  %bits1282 = getelementptr inbounds %struct.code, ptr %last, i64 0, i32 1
  %618 = load i8, ptr %bits1282, align 1
  %conv1283 = zext i8 %618 to i32
  %shr1284 = lshr i32 %and1281, %conv1283
  %add1285 = add i32 %shr1284, %conv1272
  %idxprom1286 = zext i32 %add1285 to i64
  %arrayidx1287 = getelementptr inbounds %struct.code, ptr %613, i64 %idxprom1286
  %619 = load i32, ptr %arrayidx1287, align 2
  store i32 %619, ptr %this, align 4
  %bits1288 = getelementptr inbounds %struct.code, ptr %last, i64 0, i32 1
  %620 = load i8, ptr %bits1288, align 1
  %conv1289 = zext i8 %620 to i32
  %bits1290 = getelementptr inbounds %struct.code, ptr %this, i64 0, i32 1
  %621 = load i8, ptr %bits1290, align 1
  %conv1291 = zext i8 %621 to i32
  %add1292 = add nuw nsw i32 %conv1289, %conv1291
  %622 = load i32, ptr %bits, align 4
  %cmp1293.not = icmp ugt i32 %add1292, %622
  br i1 %cmp1293.not, label %do.body1297, label %do.body1312

do.body1297:                                      ; preds = %for.cond1269
  %623 = load i32, ptr %have, align 4
  %cmp1298 = icmp eq i32 %623, 0
  br i1 %cmp1298, label %do.body1773, label %if.end1301

if.end1301:                                       ; preds = %do.body1297
  %624 = load i32, ptr %have, align 4
  %dec1302 = add i32 %624, -1
  store i32 %dec1302, ptr %have, align 4
  %625 = load ptr, ptr %next, align 8
  %incdec.ptr1303 = getelementptr inbounds i8, ptr %625, i64 1
  store ptr %incdec.ptr1303, ptr %next, align 8
  %626 = load i8, ptr %625, align 1
  %conv1304 = zext i8 %626 to i64
  %627 = load i32, ptr %bits, align 4
  %sh_prom1305 = zext i32 %627 to i64
  %shl1306 = shl i64 %conv1304, %sh_prom1305
  %628 = load i64, ptr %hold, align 8
  %add1307 = add i64 %628, %shl1306
  store i64 %add1307, ptr %hold, align 8
  %add1308 = add i32 %627, 8
  store i32 %add1308, ptr %bits, align 4
  br label %for.cond1269

do.body1312:                                      ; preds = %for.cond1269
  %bits1313 = getelementptr inbounds %struct.code, ptr %last, i64 0, i32 1
  %629 = load i8, ptr %bits1313, align 1
  %630 = load i64, ptr %hold, align 8
  %sh_prom1315 = zext i8 %629 to i64
  %shr1316 = lshr i64 %630, %sh_prom1315
  store i64 %shr1316, ptr %hold, align 8
  %conv1318 = zext i8 %629 to i32
  %631 = load i32, ptr %bits, align 4
  %sub1319 = sub i32 %631, %conv1318
  store i32 %sub1319, ptr %bits, align 4
  br label %do.body1323

do.body1323:                                      ; preds = %for.end1259, %do.body1312
  %bits1324 = getelementptr inbounds %struct.code, ptr %this, i64 0, i32 1
  %632 = load i8, ptr %bits1324, align 1
  %633 = load i64, ptr %hold, align 8
  %sh_prom1326 = zext i8 %632 to i64
  %shr1327 = lshr i64 %633, %sh_prom1326
  store i64 %shr1327, ptr %hold, align 8
  %conv1329 = zext i8 %632 to i32
  %634 = load i32, ptr %bits, align 4
  %sub1330 = sub i32 %634, %conv1329
  store i32 %sub1330, ptr %bits, align 4
  %val1333 = getelementptr inbounds %struct.code, ptr %this, i64 0, i32 2
  %635 = load i16, ptr %val1333, align 2
  %conv1334 = zext i16 %635 to i32
  %636 = load ptr, ptr %state, align 8
  %length1335 = getelementptr inbounds %struct.inflate_state, ptr %636, i64 0, i32 16
  store i32 %conv1334, ptr %length1335, align 4
  %637 = load i8, ptr %this, align 4
  %cmp1338 = icmp eq i8 %637, 0
  br i1 %cmp1338, label %if.then1340, label %if.end1342

if.then1340:                                      ; preds = %do.body1323
  %638 = load ptr, ptr %state, align 8
  store i32 23, ptr %638, align 8
  br label %sw.epilog1772

if.end1342:                                       ; preds = %do.body1323
  %639 = load i8, ptr %this, align 4
  %640 = and i8 %639, 32
  %tobool1346.not = icmp eq i8 %640, 0
  br i1 %tobool1346.not, label %if.end1349, label %if.then1347

if.then1347:                                      ; preds = %if.end1342
  %641 = load ptr, ptr %state, align 8
  store i32 11, ptr %641, align 8
  br label %sw.epilog1772

if.end1349:                                       ; preds = %if.end1342
  %642 = load i8, ptr %this, align 4
  %643 = and i8 %642, 64
  %tobool1353.not = icmp eq i8 %643, 0
  br i1 %tobool1353.not, label %if.end1357, label %if.then1354

if.then1354:                                      ; preds = %if.end1349
  %644 = load ptr, ptr %strm.addr, align 8
  %msg1355 = getelementptr inbounds %struct.z_stream_s, ptr %644, i64 0, i32 6
  store ptr @.str.13, ptr %msg1355, align 8
  %645 = load ptr, ptr %state, align 8
  store i32 27, ptr %645, align 8
  br label %sw.epilog1772

if.end1357:                                       ; preds = %if.end1349
  %646 = load i8, ptr %this, align 4
  %647 = and i8 %646, 15
  %and1360 = zext i8 %647 to i32
  %648 = load ptr, ptr %state, align 8
  %extra1361 = getelementptr inbounds %struct.inflate_state, ptr %648, i64 0, i32 18
  store i32 %and1360, ptr %extra1361, align 4
  store i32 19, ptr %648, align 8
  br label %sw.bb1363

sw.bb1363:                                        ; preds = %if.end1357, %for.cond
  %649 = load ptr, ptr %state, align 8
  %extra1364 = getelementptr inbounds %struct.inflate_state, ptr %649, i64 0, i32 18
  %650 = load i32, ptr %extra1364, align 4
  %tobool1365.not = icmp eq i32 %650, 0
  br i1 %tobool1365.not, label %if.end1405, label %while.cond1368

while.cond1368:                                   ; preds = %sw.bb1363, %if.end1377
  %651 = load i32, ptr %bits, align 4
  %652 = load ptr, ptr %state, align 8
  %extra1369 = getelementptr inbounds %struct.inflate_state, ptr %652, i64 0, i32 18
  %653 = load i32, ptr %extra1369, align 4
  %cmp1370 = icmp ult i32 %651, %653
  br i1 %cmp1370, label %do.body1373, label %do.end1389

do.body1373:                                      ; preds = %while.cond1368
  %654 = load i32, ptr %have, align 4
  %cmp1374 = icmp eq i32 %654, 0
  br i1 %cmp1374, label %do.body1773, label %if.end1377

if.end1377:                                       ; preds = %do.body1373
  %655 = load i32, ptr %have, align 4
  %dec1378 = add i32 %655, -1
  store i32 %dec1378, ptr %have, align 4
  %656 = load ptr, ptr %next, align 8
  %incdec.ptr1379 = getelementptr inbounds i8, ptr %656, i64 1
  store ptr %incdec.ptr1379, ptr %next, align 8
  %657 = load i8, ptr %656, align 1
  %conv1380 = zext i8 %657 to i64
  %658 = load i32, ptr %bits, align 4
  %sh_prom1381 = zext i32 %658 to i64
  %shl1382 = shl i64 %conv1380, %sh_prom1381
  %659 = load i64, ptr %hold, align 8
  %add1383 = add i64 %659, %shl1382
  store i64 %add1383, ptr %hold, align 8
  %add1384 = add i32 %658, 8
  store i32 %add1384, ptr %bits, align 4
  br label %while.cond1368, !llvm.loop !28

do.end1389:                                       ; preds = %while.cond1368
  %660 = load i64, ptr %hold, align 8
  %conv1390 = trunc i64 %660 to i32
  %661 = load ptr, ptr %state, align 8
  %extra1391 = getelementptr inbounds %struct.inflate_state, ptr %661, i64 0, i32 18
  %662 = load i32, ptr %extra1391, align 4
  %notmask3 = shl nsw i32 -1, %662
  %sub1393 = xor i32 %notmask3, -1
  %and1394 = and i32 %conv1390, %sub1393
  %length1395 = getelementptr inbounds %struct.inflate_state, ptr %661, i64 0, i32 16
  %663 = load i32, ptr %length1395, align 4
  %add1396 = add i32 %663, %and1394
  store i32 %add1396, ptr %length1395, align 4
  %664 = load ptr, ptr %state, align 8
  %extra1398 = getelementptr inbounds %struct.inflate_state, ptr %664, i64 0, i32 18
  %665 = load i32, ptr %extra1398, align 4
  %666 = load i64, ptr %hold, align 8
  %sh_prom1399 = zext i32 %665 to i64
  %shr1400 = lshr i64 %666, %sh_prom1399
  store i64 %shr1400, ptr %hold, align 8
  %667 = load ptr, ptr %state, align 8
  %extra1401 = getelementptr inbounds %struct.inflate_state, ptr %667, i64 0, i32 18
  %668 = load i32, ptr %extra1401, align 4
  %669 = load i32, ptr %bits, align 4
  %sub1402 = sub i32 %669, %668
  store i32 %sub1402, ptr %bits, align 4
  br label %if.end1405

if.end1405:                                       ; preds = %do.end1389, %sw.bb1363
  %670 = load ptr, ptr %state, align 8
  store i32 20, ptr %670, align 8
  br label %sw.bb1407

sw.bb1407:                                        ; preds = %if.end1405, %for.cond
  br label %for.cond1408

for.cond1408:                                     ; preds = %if.end1427, %sw.bb1407
  %671 = load ptr, ptr %state, align 8
  %distcode1409 = getelementptr inbounds %struct.inflate_state, ptr %671, i64 0, i32 20
  %672 = load ptr, ptr %distcode1409, align 8
  %673 = load i64, ptr %hold, align 8
  %conv1410 = trunc i64 %673 to i32
  %distbits1411 = getelementptr inbounds %struct.inflate_state, ptr %671, i64 0, i32 22
  %674 = load i32, ptr %distbits1411, align 4
  %notmask1 = shl nsw i32 -1, %674
  %sub1413 = xor i32 %notmask1, -1
  %and1414 = and i32 %conv1410, %sub1413
  %idxprom1415 = zext i32 %and1414 to i64
  %arrayidx1416 = getelementptr inbounds %struct.code, ptr %672, i64 %idxprom1415
  %675 = load i32, ptr %arrayidx1416, align 2
  store i32 %675, ptr %this, align 4
  %bits1417 = getelementptr inbounds %struct.code, ptr %this, i64 0, i32 1
  %676 = load i8, ptr %bits1417, align 1
  %conv1418 = zext i8 %676 to i32
  %677 = load i32, ptr %bits, align 4
  %cmp1419.not = icmp ult i32 %677, %conv1418
  br i1 %cmp1419.not, label %do.body1423, label %for.end1437

do.body1423:                                      ; preds = %for.cond1408
  %678 = load i32, ptr %have, align 4
  %cmp1424 = icmp eq i32 %678, 0
  br i1 %cmp1424, label %do.body1773, label %if.end1427

if.end1427:                                       ; preds = %do.body1423
  %679 = load i32, ptr %have, align 4
  %dec1428 = add i32 %679, -1
  store i32 %dec1428, ptr %have, align 4
  %680 = load ptr, ptr %next, align 8
  %incdec.ptr1429 = getelementptr inbounds i8, ptr %680, i64 1
  store ptr %incdec.ptr1429, ptr %next, align 8
  %681 = load i8, ptr %680, align 1
  %conv1430 = zext i8 %681 to i64
  %682 = load i32, ptr %bits, align 4
  %sh_prom1431 = zext i32 %682 to i64
  %shl1432 = shl i64 %conv1430, %sh_prom1431
  %683 = load i64, ptr %hold, align 8
  %add1433 = add i64 %683, %shl1432
  store i64 %add1433, ptr %hold, align 8
  %add1434 = add i32 %682, 8
  store i32 %add1434, ptr %bits, align 4
  br label %for.cond1408

for.end1437:                                      ; preds = %for.cond1408
  %684 = load i8, ptr %this, align 4
  %cmp1441 = icmp ult i8 %684, 16
  br i1 %cmp1441, label %if.then1443, label %do.body1498

if.then1443:                                      ; preds = %for.end1437
  %685 = load i32, ptr %this, align 4
  store i32 %685, ptr %last, align 4
  br label %for.cond1444

for.cond1444:                                     ; preds = %if.end1476, %if.then1443
  %686 = load ptr, ptr %state, align 8
  %distcode1445 = getelementptr inbounds %struct.inflate_state, ptr %686, i64 0, i32 20
  %687 = load ptr, ptr %distcode1445, align 8
  %val1446 = getelementptr inbounds %struct.code, ptr %last, i64 0, i32 2
  %688 = load i16, ptr %val1446, align 2
  %conv1447 = zext i16 %688 to i32
  %689 = load i64, ptr %hold, align 8
  %conv1448 = trunc i64 %689 to i32
  %bits1449 = getelementptr inbounds %struct.code, ptr %last, i64 0, i32 1
  %690 = load i8, ptr %bits1449, align 1
  %conv1450 = zext i8 %690 to i32
  %691 = load i8, ptr %last, align 4
  %conv1452 = zext i8 %691 to i32
  %add1453 = add nuw nsw i32 %conv1450, %conv1452
  %notmask2 = shl nsw i32 -1, %add1453
  %sub1455 = xor i32 %notmask2, -1
  %and1456 = and i32 %conv1448, %sub1455
  %bits1457 = getelementptr inbounds %struct.code, ptr %last, i64 0, i32 1
  %692 = load i8, ptr %bits1457, align 1
  %conv1458 = zext i8 %692 to i32
  %shr1459 = lshr i32 %and1456, %conv1458
  %add1460 = add i32 %shr1459, %conv1447
  %idxprom1461 = zext i32 %add1460 to i64
  %arrayidx1462 = getelementptr inbounds %struct.code, ptr %687, i64 %idxprom1461
  %693 = load i32, ptr %arrayidx1462, align 2
  store i32 %693, ptr %this, align 4
  %bits1463 = getelementptr inbounds %struct.code, ptr %last, i64 0, i32 1
  %694 = load i8, ptr %bits1463, align 1
  %conv1464 = zext i8 %694 to i32
  %bits1465 = getelementptr inbounds %struct.code, ptr %this, i64 0, i32 1
  %695 = load i8, ptr %bits1465, align 1
  %conv1466 = zext i8 %695 to i32
  %add1467 = add nuw nsw i32 %conv1464, %conv1466
  %696 = load i32, ptr %bits, align 4
  %cmp1468.not = icmp ugt i32 %add1467, %696
  br i1 %cmp1468.not, label %do.body1472, label %do.body1487

do.body1472:                                      ; preds = %for.cond1444
  %697 = load i32, ptr %have, align 4
  %cmp1473 = icmp eq i32 %697, 0
  br i1 %cmp1473, label %do.body1773, label %if.end1476

if.end1476:                                       ; preds = %do.body1472
  %698 = load i32, ptr %have, align 4
  %dec1477 = add i32 %698, -1
  store i32 %dec1477, ptr %have, align 4
  %699 = load ptr, ptr %next, align 8
  %incdec.ptr1478 = getelementptr inbounds i8, ptr %699, i64 1
  store ptr %incdec.ptr1478, ptr %next, align 8
  %700 = load i8, ptr %699, align 1
  %conv1479 = zext i8 %700 to i64
  %701 = load i32, ptr %bits, align 4
  %sh_prom1480 = zext i32 %701 to i64
  %shl1481 = shl i64 %conv1479, %sh_prom1480
  %702 = load i64, ptr %hold, align 8
  %add1482 = add i64 %702, %shl1481
  store i64 %add1482, ptr %hold, align 8
  %add1483 = add i32 %701, 8
  store i32 %add1483, ptr %bits, align 4
  br label %for.cond1444

do.body1487:                                      ; preds = %for.cond1444
  %bits1488 = getelementptr inbounds %struct.code, ptr %last, i64 0, i32 1
  %703 = load i8, ptr %bits1488, align 1
  %704 = load i64, ptr %hold, align 8
  %sh_prom1490 = zext i8 %703 to i64
  %shr1491 = lshr i64 %704, %sh_prom1490
  store i64 %shr1491, ptr %hold, align 8
  %conv1493 = zext i8 %703 to i32
  %705 = load i32, ptr %bits, align 4
  %sub1494 = sub i32 %705, %conv1493
  store i32 %sub1494, ptr %bits, align 4
  br label %do.body1498

do.body1498:                                      ; preds = %for.end1437, %do.body1487
  %bits1499 = getelementptr inbounds %struct.code, ptr %this, i64 0, i32 1
  %706 = load i8, ptr %bits1499, align 1
  %707 = load i64, ptr %hold, align 8
  %sh_prom1501 = zext i8 %706 to i64
  %shr1502 = lshr i64 %707, %sh_prom1501
  store i64 %shr1502, ptr %hold, align 8
  %conv1504 = zext i8 %706 to i32
  %708 = load i32, ptr %bits, align 4
  %sub1505 = sub i32 %708, %conv1504
  store i32 %sub1505, ptr %bits, align 4
  %709 = load i8, ptr %this, align 4
  %710 = and i8 %709, 64
  %tobool1511.not = icmp eq i8 %710, 0
  br i1 %tobool1511.not, label %if.end1515, label %if.then1512

if.then1512:                                      ; preds = %do.body1498
  %711 = load ptr, ptr %strm.addr, align 8
  %msg1513 = getelementptr inbounds %struct.z_stream_s, ptr %711, i64 0, i32 6
  store ptr @.str.14, ptr %msg1513, align 8
  %712 = load ptr, ptr %state, align 8
  store i32 27, ptr %712, align 8
  br label %sw.epilog1772

if.end1515:                                       ; preds = %do.body1498
  %val1516 = getelementptr inbounds %struct.code, ptr %this, i64 0, i32 2
  %713 = load i16, ptr %val1516, align 2
  %conv1517 = zext i16 %713 to i32
  %714 = load ptr, ptr %state, align 8
  %offset = getelementptr inbounds %struct.inflate_state, ptr %714, i64 0, i32 17
  store i32 %conv1517, ptr %offset, align 8
  %715 = load i8, ptr %this, align 4
  %716 = and i8 %715, 15
  %and1520 = zext i8 %716 to i32
  %extra1521 = getelementptr inbounds %struct.inflate_state, ptr %714, i64 0, i32 18
  store i32 %and1520, ptr %extra1521, align 4
  %717 = load ptr, ptr %state, align 8
  store i32 21, ptr %717, align 8
  br label %sw.bb1523

sw.bb1523:                                        ; preds = %if.end1515, %for.cond
  %718 = load ptr, ptr %state, align 8
  %extra1524 = getelementptr inbounds %struct.inflate_state, ptr %718, i64 0, i32 18
  %719 = load i32, ptr %extra1524, align 4
  %tobool1525.not = icmp eq i32 %719, 0
  br i1 %tobool1525.not, label %if.end1565, label %while.cond1528

while.cond1528:                                   ; preds = %sw.bb1523, %if.end1537
  %720 = load i32, ptr %bits, align 4
  %721 = load ptr, ptr %state, align 8
  %extra1529 = getelementptr inbounds %struct.inflate_state, ptr %721, i64 0, i32 18
  %722 = load i32, ptr %extra1529, align 4
  %cmp1530 = icmp ult i32 %720, %722
  br i1 %cmp1530, label %do.body1533, label %do.end1549

do.body1533:                                      ; preds = %while.cond1528
  %723 = load i32, ptr %have, align 4
  %cmp1534 = icmp eq i32 %723, 0
  br i1 %cmp1534, label %do.body1773, label %if.end1537

if.end1537:                                       ; preds = %do.body1533
  %724 = load i32, ptr %have, align 4
  %dec1538 = add i32 %724, -1
  store i32 %dec1538, ptr %have, align 4
  %725 = load ptr, ptr %next, align 8
  %incdec.ptr1539 = getelementptr inbounds i8, ptr %725, i64 1
  store ptr %incdec.ptr1539, ptr %next, align 8
  %726 = load i8, ptr %725, align 1
  %conv1540 = zext i8 %726 to i64
  %727 = load i32, ptr %bits, align 4
  %sh_prom1541 = zext i32 %727 to i64
  %shl1542 = shl i64 %conv1540, %sh_prom1541
  %728 = load i64, ptr %hold, align 8
  %add1543 = add i64 %728, %shl1542
  store i64 %add1543, ptr %hold, align 8
  %add1544 = add i32 %727, 8
  store i32 %add1544, ptr %bits, align 4
  br label %while.cond1528, !llvm.loop !29

do.end1549:                                       ; preds = %while.cond1528
  %729 = load i64, ptr %hold, align 8
  %conv1550 = trunc i64 %729 to i32
  %730 = load ptr, ptr %state, align 8
  %extra1551 = getelementptr inbounds %struct.inflate_state, ptr %730, i64 0, i32 18
  %731 = load i32, ptr %extra1551, align 4
  %notmask = shl nsw i32 -1, %731
  %sub1553 = xor i32 %notmask, -1
  %and1554 = and i32 %conv1550, %sub1553
  %offset1555 = getelementptr inbounds %struct.inflate_state, ptr %730, i64 0, i32 17
  %732 = load i32, ptr %offset1555, align 8
  %add1556 = add i32 %732, %and1554
  store i32 %add1556, ptr %offset1555, align 8
  %733 = load ptr, ptr %state, align 8
  %extra1558 = getelementptr inbounds %struct.inflate_state, ptr %733, i64 0, i32 18
  %734 = load i32, ptr %extra1558, align 4
  %735 = load i64, ptr %hold, align 8
  %sh_prom1559 = zext i32 %734 to i64
  %shr1560 = lshr i64 %735, %sh_prom1559
  store i64 %shr1560, ptr %hold, align 8
  %736 = load ptr, ptr %state, align 8
  %extra1561 = getelementptr inbounds %struct.inflate_state, ptr %736, i64 0, i32 18
  %737 = load i32, ptr %extra1561, align 4
  %738 = load i32, ptr %bits, align 4
  %sub1562 = sub i32 %738, %737
  store i32 %sub1562, ptr %bits, align 4
  br label %if.end1565

if.end1565:                                       ; preds = %do.end1549, %sw.bb1523
  %739 = load ptr, ptr %state, align 8
  %offset1566 = getelementptr inbounds %struct.inflate_state, ptr %739, i64 0, i32 17
  %740 = load i32, ptr %offset1566, align 8
  %whave = getelementptr inbounds %struct.inflate_state, ptr %739, i64 0, i32 11
  %741 = load i32, ptr %whave, align 8
  %742 = load i32, ptr %out, align 4
  %add1567 = add i32 %741, %742
  %743 = load i32, ptr %left, align 4
  %sub1568 = sub i32 %add1567, %743
  %cmp1569 = icmp ugt i32 %740, %sub1568
  br i1 %cmp1569, label %if.then1571, label %if.end1574

if.then1571:                                      ; preds = %if.end1565
  %744 = load ptr, ptr %strm.addr, align 8
  %msg1572 = getelementptr inbounds %struct.z_stream_s, ptr %744, i64 0, i32 6
  store ptr @.str.15, ptr %msg1572, align 8
  %745 = load ptr, ptr %state, align 8
  store i32 27, ptr %745, align 8
  br label %sw.epilog1772

if.end1574:                                       ; preds = %if.end1565
  %746 = load ptr, ptr %state, align 8
  store i32 22, ptr %746, align 8
  br label %sw.bb1576

sw.bb1576:                                        ; preds = %if.end1574, %for.cond
  %747 = load i32, ptr %left, align 4
  %cmp1577 = icmp eq i32 %747, 0
  br i1 %cmp1577, label %do.body1773, label %if.end1580

if.end1580:                                       ; preds = %sw.bb1576
  %748 = load i32, ptr %out, align 4
  %749 = load i32, ptr %left, align 4
  %sub1581 = sub i32 %748, %749
  store i32 %sub1581, ptr %copy, align 4
  %750 = load ptr, ptr %state, align 8
  %offset1582 = getelementptr inbounds %struct.inflate_state, ptr %750, i64 0, i32 17
  %751 = load i32, ptr %offset1582, align 8
  %cmp1583 = icmp ugt i32 %751, %sub1581
  br i1 %cmp1583, label %if.then1585, label %if.else1609

if.then1585:                                      ; preds = %if.end1580
  %752 = load ptr, ptr %state, align 8
  %offset1586 = getelementptr inbounds %struct.inflate_state, ptr %752, i64 0, i32 17
  %753 = load i32, ptr %offset1586, align 8
  %754 = load i32, ptr %copy, align 4
  %sub1587 = sub i32 %753, %754
  store i32 %sub1587, ptr %copy, align 4
  %write = getelementptr inbounds %struct.inflate_state, ptr %752, i64 0, i32 12
  %755 = load i32, ptr %write, align 4
  %cmp1588 = icmp ugt i32 %sub1587, %755
  br i1 %cmp1588, label %if.then1590, label %if.else1596

if.then1590:                                      ; preds = %if.then1585
  %756 = load ptr, ptr %state, align 8
  %write1591 = getelementptr inbounds %struct.inflate_state, ptr %756, i64 0, i32 12
  %757 = load i32, ptr %write1591, align 4
  %758 = load i32, ptr %copy, align 4
  %sub1592 = sub i32 %758, %757
  store i32 %sub1592, ptr %copy, align 4
  %window = getelementptr inbounds %struct.inflate_state, ptr %756, i64 0, i32 13
  %759 = load ptr, ptr %window, align 8
  %760 = load ptr, ptr %state, align 8
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %760, i64 0, i32 10
  %761 = load i32, ptr %wsize, align 4
  %sub1593 = sub i32 %761, %sub1592
  %idx.ext1594 = zext i32 %sub1593 to i64
  %add.ptr1595 = getelementptr inbounds i8, ptr %759, i64 %idx.ext1594
  br label %if.end1602

if.else1596:                                      ; preds = %if.then1585
  %762 = load ptr, ptr %state, align 8
  %window1597 = getelementptr inbounds %struct.inflate_state, ptr %762, i64 0, i32 13
  %763 = load ptr, ptr %window1597, align 8
  %write1598 = getelementptr inbounds %struct.inflate_state, ptr %762, i64 0, i32 12
  %764 = load i32, ptr %write1598, align 4
  %765 = load i32, ptr %copy, align 4
  %sub1599 = sub i32 %764, %765
  %idx.ext1600 = zext i32 %sub1599 to i64
  %add.ptr1601 = getelementptr inbounds i8, ptr %763, i64 %idx.ext1600
  br label %if.end1602

if.end1602:                                       ; preds = %if.else1596, %if.then1590
  %storemerge = phi ptr [ %add.ptr1601, %if.else1596 ], [ %add.ptr1595, %if.then1590 ]
  store ptr %storemerge, ptr %from, align 8
  %766 = load i32, ptr %copy, align 4
  %767 = load ptr, ptr %state, align 8
  %length1603 = getelementptr inbounds %struct.inflate_state, ptr %767, i64 0, i32 16
  %768 = load i32, ptr %length1603, align 4
  %cmp1604 = icmp ugt i32 %766, %768
  br i1 %cmp1604, label %if.then1606, label %if.end1614

if.then1606:                                      ; preds = %if.end1602
  %769 = load ptr, ptr %state, align 8
  %length1607 = getelementptr inbounds %struct.inflate_state, ptr %769, i64 0, i32 16
  %770 = load i32, ptr %length1607, align 4
  store i32 %770, ptr %copy, align 4
  br label %if.end1614

if.else1609:                                      ; preds = %if.end1580
  %771 = load ptr, ptr %put, align 8
  %772 = load ptr, ptr %state, align 8
  %offset1610 = getelementptr inbounds %struct.inflate_state, ptr %772, i64 0, i32 17
  %773 = load i32, ptr %offset1610, align 8
  %idx.ext1611 = zext i32 %773 to i64
  %idx.neg = sub nsw i64 0, %idx.ext1611
  %add.ptr1612 = getelementptr inbounds i8, ptr %771, i64 %idx.neg
  store ptr %add.ptr1612, ptr %from, align 8
  %774 = load ptr, ptr %state, align 8
  %length1613 = getelementptr inbounds %struct.inflate_state, ptr %774, i64 0, i32 16
  %775 = load i32, ptr %length1613, align 4
  store i32 %775, ptr %copy, align 4
  br label %if.end1614

if.end1614:                                       ; preds = %if.end1602, %if.then1606, %if.else1609
  %776 = load i32, ptr %copy, align 4
  %777 = load i32, ptr %left, align 4
  %cmp1615 = icmp ugt i32 %776, %777
  br i1 %cmp1615, label %if.then1617, label %if.end1618

if.then1617:                                      ; preds = %if.end1614
  %778 = load i32, ptr %left, align 4
  store i32 %778, ptr %copy, align 4
  br label %if.end1618

if.end1618:                                       ; preds = %if.then1617, %if.end1614
  %779 = load i32, ptr %copy, align 4
  %780 = load i32, ptr %left, align 4
  %sub1619 = sub i32 %780, %779
  store i32 %sub1619, ptr %left, align 4
  %781 = load ptr, ptr %state, align 8
  %length1620 = getelementptr inbounds %struct.inflate_state, ptr %781, i64 0, i32 16
  %782 = load i32, ptr %length1620, align 4
  %sub1621 = sub i32 %782, %779
  store i32 %sub1621, ptr %length1620, align 4
  br label %do.body1622

do.body1622:                                      ; preds = %do.body1622, %if.end1618
  %783 = load ptr, ptr %from, align 8
  %incdec.ptr1623 = getelementptr inbounds i8, ptr %783, i64 1
  store ptr %incdec.ptr1623, ptr %from, align 8
  %784 = load i8, ptr %783, align 1
  %785 = load ptr, ptr %put, align 8
  %incdec.ptr1624 = getelementptr inbounds i8, ptr %785, i64 1
  store ptr %incdec.ptr1624, ptr %put, align 8
  store i8 %784, ptr %785, align 1
  %786 = load i32, ptr %copy, align 4
  %dec1626 = add i32 %786, -1
  store i32 %dec1626, ptr %copy, align 4
  %tobool1627.not = icmp eq i32 %dec1626, 0
  br i1 %tobool1627.not, label %do.end1628, label %do.body1622, !llvm.loop !30

do.end1628:                                       ; preds = %do.body1622
  %787 = load ptr, ptr %state, align 8
  %length1629 = getelementptr inbounds %struct.inflate_state, ptr %787, i64 0, i32 16
  %788 = load i32, ptr %length1629, align 4
  %cmp1630 = icmp eq i32 %788, 0
  br i1 %cmp1630, label %if.then1632, label %sw.epilog1772

if.then1632:                                      ; preds = %do.end1628
  %789 = load ptr, ptr %state, align 8
  store i32 18, ptr %789, align 8
  br label %sw.epilog1772

sw.bb1635:                                        ; preds = %for.cond
  %790 = load i32, ptr %left, align 4
  %cmp1636 = icmp eq i32 %790, 0
  br i1 %cmp1636, label %do.body1773, label %if.end1639

if.end1639:                                       ; preds = %sw.bb1635
  %791 = load ptr, ptr %state, align 8
  %length1640 = getelementptr inbounds %struct.inflate_state, ptr %791, i64 0, i32 16
  %792 = load i32, ptr %length1640, align 4
  %conv1641 = trunc i32 %792 to i8
  %793 = load ptr, ptr %put, align 8
  %incdec.ptr1642 = getelementptr inbounds i8, ptr %793, i64 1
  store ptr %incdec.ptr1642, ptr %put, align 8
  store i8 %conv1641, ptr %793, align 1
  %794 = load i32, ptr %left, align 4
  %dec1643 = add i32 %794, -1
  store i32 %dec1643, ptr %left, align 4
  %795 = load ptr, ptr %state, align 8
  store i32 18, ptr %795, align 8
  br label %sw.epilog1772

sw.bb1645:                                        ; preds = %for.cond
  %796 = load ptr, ptr %state, align 8
  %wrap1646 = getelementptr inbounds %struct.inflate_state, ptr %796, i64 0, i32 2
  %797 = load i32, ptr %wrap1646, align 8
  %tobool1647.not = icmp eq i32 %797, 0
  br i1 %tobool1647.not, label %if.end1724, label %while.cond1650

while.cond1650:                                   ; preds = %sw.bb1645, %if.end1658
  %798 = load i32, ptr %bits, align 4
  %cmp1651 = icmp ult i32 %798, 32
  br i1 %cmp1651, label %do.body1654, label %do.end1670

do.body1654:                                      ; preds = %while.cond1650
  %799 = load i32, ptr %have, align 4
  %cmp1655 = icmp eq i32 %799, 0
  br i1 %cmp1655, label %do.body1773, label %if.end1658

if.end1658:                                       ; preds = %do.body1654
  %800 = load i32, ptr %have, align 4
  %dec1659 = add i32 %800, -1
  store i32 %dec1659, ptr %have, align 4
  %801 = load ptr, ptr %next, align 8
  %incdec.ptr1660 = getelementptr inbounds i8, ptr %801, i64 1
  store ptr %incdec.ptr1660, ptr %next, align 8
  %802 = load i8, ptr %801, align 1
  %conv1661 = zext i8 %802 to i64
  %803 = load i32, ptr %bits, align 4
  %sh_prom1662 = zext i32 %803 to i64
  %shl1663 = shl i64 %conv1661, %sh_prom1662
  %804 = load i64, ptr %hold, align 8
  %add1664 = add i64 %804, %shl1663
  store i64 %add1664, ptr %hold, align 8
  %add1665 = add i32 %803, 8
  store i32 %add1665, ptr %bits, align 4
  br label %while.cond1650, !llvm.loop !31

do.end1670:                                       ; preds = %while.cond1650
  %805 = load i32, ptr %left, align 4
  %806 = load i32, ptr %out, align 4
  %sub1671 = sub i32 %806, %805
  store i32 %sub1671, ptr %out, align 4
  %conv1672 = zext i32 %sub1671 to i64
  %807 = load ptr, ptr %strm.addr, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %807, i64 0, i32 5
  %808 = load i64, ptr %total_out, align 8
  %add1673 = add i64 %808, %conv1672
  store i64 %add1673, ptr %total_out, align 8
  %809 = load i32, ptr %out, align 4
  %conv1674 = zext i32 %809 to i64
  %810 = load ptr, ptr %state, align 8
  %total = getelementptr inbounds %struct.inflate_state, ptr %810, i64 0, i32 7
  %811 = load i64, ptr %total, align 8
  %add1675 = add i64 %811, %conv1674
  store i64 %add1675, ptr %total, align 8
  %812 = load i32, ptr %out, align 4
  %tobool1676.not = icmp eq i32 %812, 0
  br i1 %tobool1676.not, label %if.end1696, label %if.then1677

if.then1677:                                      ; preds = %do.end1670
  %813 = load ptr, ptr %state, align 8
  %flags1678 = getelementptr inbounds %struct.inflate_state, ptr %813, i64 0, i32 4
  %814 = load i32, ptr %flags1678, align 8
  %tobool1679.not = icmp eq i32 %814, 0
  br i1 %tobool1679.not, label %cond.false1686, label %cond.true1680

cond.true1680:                                    ; preds = %if.then1677
  %815 = load ptr, ptr %state, align 8
  %check1681 = getelementptr inbounds %struct.inflate_state, ptr %815, i64 0, i32 6
  %816 = load i64, ptr %check1681, align 8
  %817 = load ptr, ptr %put, align 8
  %818 = load i32, ptr %out, align 4
  %idx.ext1682 = zext i32 %818 to i64
  %idx.neg1683 = sub nsw i64 0, %idx.ext1682
  %add.ptr1684 = getelementptr inbounds i8, ptr %817, i64 %idx.neg1683
  %call1685 = call i64 @crc32(i64 noundef %816, ptr noundef %add.ptr1684, i32 noundef %818) #5
  br label %cond.end1692

cond.false1686:                                   ; preds = %if.then1677
  %819 = load ptr, ptr %state, align 8
  %check1687 = getelementptr inbounds %struct.inflate_state, ptr %819, i64 0, i32 6
  %820 = load i64, ptr %check1687, align 8
  %821 = load ptr, ptr %put, align 8
  %822 = load i32, ptr %out, align 4
  %idx.ext1688 = zext i32 %822 to i64
  %idx.neg1689 = sub nsw i64 0, %idx.ext1688
  %add.ptr1690 = getelementptr inbounds i8, ptr %821, i64 %idx.neg1689
  %call1691 = call i64 @adler32(i64 noundef %820, ptr noundef %add.ptr1690, i32 noundef %822) #5
  br label %cond.end1692

cond.end1692:                                     ; preds = %cond.false1686, %cond.true1680
  %cond1693 = phi i64 [ %call1685, %cond.true1680 ], [ %call1691, %cond.false1686 ]
  %823 = load ptr, ptr %state, align 8
  %check1694 = getelementptr inbounds %struct.inflate_state, ptr %823, i64 0, i32 6
  store i64 %cond1693, ptr %check1694, align 8
  %824 = load ptr, ptr %strm.addr, align 8
  %adler1695 = getelementptr inbounds %struct.z_stream_s, ptr %824, i64 0, i32 12
  store i64 %cond1693, ptr %adler1695, align 8
  br label %if.end1696

if.end1696:                                       ; preds = %cond.end1692, %do.end1670
  %825 = load i32, ptr %left, align 4
  store i32 %825, ptr %out, align 4
  %826 = load ptr, ptr %state, align 8
  %flags1697 = getelementptr inbounds %struct.inflate_state, ptr %826, i64 0, i32 4
  %827 = load i32, ptr %flags1697, align 8
  %tobool1698.not = icmp eq i32 %827, 0
  br i1 %tobool1698.not, label %cond.false1700, label %cond.true1699

cond.true1699:                                    ; preds = %if.end1696
  %828 = load i64, ptr %hold, align 8
  br label %cond.end1712

cond.false1700:                                   ; preds = %if.end1696
  %829 = load i64, ptr %hold, align 8
  %shr1701 = lshr i64 %829, 24
  %and1702 = and i64 %shr1701, 255
  %shr1703 = lshr i64 %829, 8
  %and1704 = and i64 %shr1703, 65280
  %add1705 = or i64 %and1702, %and1704
  %and1706 = shl i64 %829, 8
  %shl1707 = and i64 %and1706, 16711680
  %add1708 = or i64 %add1705, %shl1707
  %830 = load i64, ptr %hold, align 8
  %and1709 = shl i64 %830, 24
  %shl1710 = and i64 %and1709, 4278190080
  %add1711 = or i64 %add1708, %shl1710
  br label %cond.end1712

cond.end1712:                                     ; preds = %cond.false1700, %cond.true1699
  %cond1713 = phi i64 [ %828, %cond.true1699 ], [ %add1711, %cond.false1700 ]
  %831 = load ptr, ptr %state, align 8
  %check1714 = getelementptr inbounds %struct.inflate_state, ptr %831, i64 0, i32 6
  %832 = load i64, ptr %check1714, align 8
  %cmp1715.not = icmp eq i64 %cond1713, %832
  br i1 %cmp1715.not, label %do.body1721, label %if.then1717

if.then1717:                                      ; preds = %cond.end1712
  %833 = load ptr, ptr %strm.addr, align 8
  %msg1718 = getelementptr inbounds %struct.z_stream_s, ptr %833, i64 0, i32 6
  store ptr @.str.16, ptr %msg1718, align 8
  %834 = load ptr, ptr %state, align 8
  store i32 27, ptr %834, align 8
  br label %sw.epilog1772

do.body1721:                                      ; preds = %cond.end1712
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %if.end1724

if.end1724:                                       ; preds = %do.body1721, %sw.bb1645
  %835 = load ptr, ptr %state, align 8
  store i32 25, ptr %835, align 8
  br label %sw.bb1726

sw.bb1726:                                        ; preds = %if.end1724, %for.cond
  %836 = load ptr, ptr %state, align 8
  %wrap1727 = getelementptr inbounds %struct.inflate_state, ptr %836, i64 0, i32 2
  %837 = load i32, ptr %wrap1727, align 8
  %tobool1728.not = icmp eq i32 %837, 0
  br i1 %tobool1728.not, label %if.end1766, label %land.lhs.true1729

land.lhs.true1729:                                ; preds = %sw.bb1726
  %838 = load ptr, ptr %state, align 8
  %flags1730 = getelementptr inbounds %struct.inflate_state, ptr %838, i64 0, i32 4
  %839 = load i32, ptr %flags1730, align 8
  %tobool1731.not = icmp eq i32 %839, 0
  br i1 %tobool1731.not, label %if.end1766, label %while.cond1734

while.cond1734:                                   ; preds = %land.lhs.true1729, %if.end1742
  %840 = load i32, ptr %bits, align 4
  %cmp1735 = icmp ult i32 %840, 32
  br i1 %cmp1735, label %do.body1738, label %do.end1754

do.body1738:                                      ; preds = %while.cond1734
  %841 = load i32, ptr %have, align 4
  %cmp1739 = icmp eq i32 %841, 0
  br i1 %cmp1739, label %do.body1773, label %if.end1742

if.end1742:                                       ; preds = %do.body1738
  %842 = load i32, ptr %have, align 4
  %dec1743 = add i32 %842, -1
  store i32 %dec1743, ptr %have, align 4
  %843 = load ptr, ptr %next, align 8
  %incdec.ptr1744 = getelementptr inbounds i8, ptr %843, i64 1
  store ptr %incdec.ptr1744, ptr %next, align 8
  %844 = load i8, ptr %843, align 1
  %conv1745 = zext i8 %844 to i64
  %845 = load i32, ptr %bits, align 4
  %sh_prom1746 = zext i32 %845 to i64
  %shl1747 = shl i64 %conv1745, %sh_prom1746
  %846 = load i64, ptr %hold, align 8
  %add1748 = add i64 %846, %shl1747
  store i64 %add1748, ptr %hold, align 8
  %add1749 = add i32 %845, 8
  store i32 %add1749, ptr %bits, align 4
  br label %while.cond1734, !llvm.loop !32

do.end1754:                                       ; preds = %while.cond1734
  %847 = load i64, ptr %hold, align 8
  %848 = load ptr, ptr %state, align 8
  %total1755 = getelementptr inbounds %struct.inflate_state, ptr %848, i64 0, i32 7
  %849 = load i64, ptr %total1755, align 8
  %and1756 = and i64 %849, 4294967295
  %cmp1757.not = icmp eq i64 %847, %and1756
  br i1 %cmp1757.not, label %do.body1763, label %if.then1759

if.then1759:                                      ; preds = %do.end1754
  %850 = load ptr, ptr %strm.addr, align 8
  %msg1760 = getelementptr inbounds %struct.z_stream_s, ptr %850, i64 0, i32 6
  store ptr @.str.17, ptr %msg1760, align 8
  %851 = load ptr, ptr %state, align 8
  store i32 27, ptr %851, align 8
  br label %sw.epilog1772

do.body1763:                                      ; preds = %do.end1754
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %if.end1766

if.end1766:                                       ; preds = %do.body1763, %land.lhs.true1729, %sw.bb1726
  %852 = load ptr, ptr %state, align 8
  store i32 26, ptr %852, align 8
  br label %sw.bb1768

sw.bb1768:                                        ; preds = %if.end1766, %for.cond
  store i32 1, ptr %ret, align 4
  br label %do.body1773

sw.bb1769:                                        ; preds = %for.cond
  store i32 -3, ptr %ret, align 4
  br label %do.body1773

sw.bb1770:                                        ; preds = %for.cond
  store i32 -4, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %for.cond
  store i32 -2, ptr %retval, align 4
  br label %return

sw.epilog1772:                                    ; preds = %do.end1628, %if.then1632, %while.end1161, %if.then1759, %if.then1717, %if.end1639, %if.then1571, %if.then1512, %if.then1354, %if.then1347, %if.then1340, %do.body1211, %if.then1199, %if.then1182, %if.then893, %if.then820, %if.end764, %if.end753, %if.then727, %do.body687, %do.body636, %if.end564, %if.then546, %if.then130, %if.then123, %if.end87, %if.then84, %if.then72, %if.then65, %if.then36, %if.then20
  br label %for.cond

do.body1773:                                      ; preds = %sw.bb1768, %sw.bb1769, %do.body25, %do.body102, %do.body168, %do.body220, %do.body275, %if.end379, %if.then391, %if.end431, %if.then453, %if.end498, %do.body525, %do.body575, %sw.bb627, %do.body651, %do.body706, %if.end749, %do.body772, %do.body838, %do.body923, %do.body948, %do.body995, %do.body1057, %do.body1101, %do.body1245, %do.body1297, %do.body1373, %do.body1423, %do.body1472, %do.body1533, %sw.bb1576, %sw.bb1635, %do.body1654, %do.body1738
  %853 = load ptr, ptr %put, align 8
  %854 = load ptr, ptr %strm.addr, align 8
  %next_out1774 = getelementptr inbounds %struct.z_stream_s, ptr %854, i64 0, i32 3
  store ptr %853, ptr %next_out1774, align 8
  %855 = load i32, ptr %left, align 4
  %avail_out1775 = getelementptr inbounds %struct.z_stream_s, ptr %854, i64 0, i32 4
  store i32 %855, ptr %avail_out1775, align 8
  %856 = load ptr, ptr %next, align 8
  %857 = load ptr, ptr %strm.addr, align 8
  store ptr %856, ptr %857, align 8
  %858 = load i32, ptr %have, align 4
  %avail_in1777 = getelementptr inbounds %struct.z_stream_s, ptr %857, i64 0, i32 1
  store i32 %858, ptr %avail_in1777, align 8
  %859 = load i64, ptr %hold, align 8
  %860 = load ptr, ptr %state, align 8
  %hold1778 = getelementptr inbounds %struct.inflate_state, ptr %860, i64 0, i32 14
  store i64 %859, ptr %hold1778, align 8
  %861 = load i32, ptr %bits, align 4
  %bits1779 = getelementptr inbounds %struct.inflate_state, ptr %860, i64 0, i32 15
  store i32 %861, ptr %bits1779, align 8
  %862 = load ptr, ptr %state, align 8
  %wsize1782 = getelementptr inbounds %struct.inflate_state, ptr %862, i64 0, i32 10
  %863 = load i32, ptr %wsize1782, align 4
  %tobool1783.not = icmp eq i32 %863, 0
  br i1 %tobool1783.not, label %lor.lhs.false1784, label %if.then1792

lor.lhs.false1784:                                ; preds = %do.body1773
  %864 = load ptr, ptr %state, align 8
  %865 = load i32, ptr %864, align 8
  %cmp1786 = icmp ult i32 %865, 24
  br i1 %cmp1786, label %land.lhs.true1788, label %if.end1798

land.lhs.true1788:                                ; preds = %lor.lhs.false1784
  %866 = load i32, ptr %out, align 4
  %867 = load ptr, ptr %strm.addr, align 8
  %avail_out1789 = getelementptr inbounds %struct.z_stream_s, ptr %867, i64 0, i32 4
  %868 = load i32, ptr %avail_out1789, align 8
  %cmp1790.not = icmp eq i32 %866, %868
  br i1 %cmp1790.not, label %if.end1798, label %if.then1792

if.then1792:                                      ; preds = %land.lhs.true1788, %do.body1773
  %869 = load ptr, ptr %strm.addr, align 8
  %870 = load i32, ptr %out, align 4
  %call1793 = call i32 @updatewindow(ptr noundef %869, i32 noundef %870)
  %tobool1794.not = icmp eq i32 %call1793, 0
  br i1 %tobool1794.not, label %if.end1798, label %if.then1795

if.then1795:                                      ; preds = %if.then1792
  %871 = load ptr, ptr %state, align 8
  store i32 28, ptr %871, align 8
  store i32 -4, ptr %retval, align 4
  br label %return

if.end1798:                                       ; preds = %if.then1792, %land.lhs.true1788, %lor.lhs.false1784
  %872 = load ptr, ptr %strm.addr, align 8
  %avail_in1799 = getelementptr inbounds %struct.z_stream_s, ptr %872, i64 0, i32 1
  %873 = load i32, ptr %avail_in1799, align 8
  %874 = load i32, ptr %in, align 4
  %sub1800 = sub i32 %874, %873
  store i32 %sub1800, ptr %in, align 4
  %avail_out1801 = getelementptr inbounds %struct.z_stream_s, ptr %872, i64 0, i32 4
  %875 = load i32, ptr %avail_out1801, align 8
  %876 = load i32, ptr %out, align 4
  %sub1802 = sub i32 %876, %875
  store i32 %sub1802, ptr %out, align 4
  %conv1803 = zext i32 %sub1800 to i64
  %877 = load ptr, ptr %strm.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %877, i64 0, i32 2
  %878 = load i64, ptr %total_in, align 8
  %add1804 = add i64 %878, %conv1803
  store i64 %add1804, ptr %total_in, align 8
  %879 = load i32, ptr %out, align 4
  %conv1805 = zext i32 %879 to i64
  %880 = load ptr, ptr %strm.addr, align 8
  %total_out1806 = getelementptr inbounds %struct.z_stream_s, ptr %880, i64 0, i32 5
  %881 = load i64, ptr %total_out1806, align 8
  %add1807 = add i64 %881, %conv1805
  store i64 %add1807, ptr %total_out1806, align 8
  %882 = load i32, ptr %out, align 4
  %conv1808 = zext i32 %882 to i64
  %883 = load ptr, ptr %state, align 8
  %total1809 = getelementptr inbounds %struct.inflate_state, ptr %883, i64 0, i32 7
  %884 = load i64, ptr %total1809, align 8
  %add1810 = add i64 %884, %conv1808
  store i64 %add1810, ptr %total1809, align 8
  %wrap1811 = getelementptr inbounds %struct.inflate_state, ptr %883, i64 0, i32 2
  %885 = load i32, ptr %wrap1811, align 8
  %tobool1812.not = icmp eq i32 %885, 0
  %886 = load i32, ptr %out, align 4
  %tobool1814.not = icmp eq i32 %886, 0
  %or.cond11 = select i1 %tobool1812.not, i1 true, i1 %tobool1814.not
  br i1 %or.cond11, label %if.end1836, label %if.then1815

if.then1815:                                      ; preds = %if.end1798
  %887 = load ptr, ptr %state, align 8
  %flags1816 = getelementptr inbounds %struct.inflate_state, ptr %887, i64 0, i32 4
  %888 = load i32, ptr %flags1816, align 8
  %tobool1817.not = icmp eq i32 %888, 0
  br i1 %tobool1817.not, label %cond.false1825, label %cond.true1818

cond.true1818:                                    ; preds = %if.then1815
  %889 = load ptr, ptr %state, align 8
  %check1819 = getelementptr inbounds %struct.inflate_state, ptr %889, i64 0, i32 6
  %890 = load i64, ptr %check1819, align 8
  %891 = load ptr, ptr %strm.addr, align 8
  %next_out1820 = getelementptr inbounds %struct.z_stream_s, ptr %891, i64 0, i32 3
  %892 = load ptr, ptr %next_out1820, align 8
  %893 = load i32, ptr %out, align 4
  %idx.ext1821 = zext i32 %893 to i64
  %idx.neg1822 = sub nsw i64 0, %idx.ext1821
  %add.ptr1823 = getelementptr inbounds i8, ptr %892, i64 %idx.neg1822
  %call1824 = call i64 @crc32(i64 noundef %890, ptr noundef %add.ptr1823, i32 noundef %893) #5
  br label %cond.end1832

cond.false1825:                                   ; preds = %if.then1815
  %894 = load ptr, ptr %state, align 8
  %check1826 = getelementptr inbounds %struct.inflate_state, ptr %894, i64 0, i32 6
  %895 = load i64, ptr %check1826, align 8
  %896 = load ptr, ptr %strm.addr, align 8
  %next_out1827 = getelementptr inbounds %struct.z_stream_s, ptr %896, i64 0, i32 3
  %897 = load ptr, ptr %next_out1827, align 8
  %898 = load i32, ptr %out, align 4
  %idx.ext1828 = zext i32 %898 to i64
  %idx.neg1829 = sub nsw i64 0, %idx.ext1828
  %add.ptr1830 = getelementptr inbounds i8, ptr %897, i64 %idx.neg1829
  %call1831 = call i64 @adler32(i64 noundef %895, ptr noundef %add.ptr1830, i32 noundef %898) #5
  br label %cond.end1832

cond.end1832:                                     ; preds = %cond.false1825, %cond.true1818
  %cond1833 = phi i64 [ %call1824, %cond.true1818 ], [ %call1831, %cond.false1825 ]
  %899 = load ptr, ptr %state, align 8
  %check1834 = getelementptr inbounds %struct.inflate_state, ptr %899, i64 0, i32 6
  store i64 %cond1833, ptr %check1834, align 8
  %900 = load ptr, ptr %strm.addr, align 8
  %adler1835 = getelementptr inbounds %struct.z_stream_s, ptr %900, i64 0, i32 12
  store i64 %cond1833, ptr %adler1835, align 8
  br label %if.end1836

if.end1836:                                       ; preds = %cond.end1832, %if.end1798
  %901 = load ptr, ptr %state, align 8
  %bits1837 = getelementptr inbounds %struct.inflate_state, ptr %901, i64 0, i32 15
  %902 = load i32, ptr %bits1837, align 8
  %last1838 = getelementptr inbounds %struct.inflate_state, ptr %901, i64 0, i32 1
  %903 = load i32, ptr %last1838, align 4
  %tobool1839.not = icmp eq i32 %903, 0
  %cond1840 = select i1 %tobool1839.not, i32 0, i32 64
  %add1841 = add i32 %902, %cond1840
  %904 = load ptr, ptr %state, align 8
  %905 = load i32, ptr %904, align 8
  %cmp1843 = icmp eq i32 %905, 11
  %cond1845 = select i1 %cmp1843, i32 128, i32 0
  %add1846 = add i32 %add1841, %cond1845
  %906 = load ptr, ptr %strm.addr, align 8
  %data_type = getelementptr inbounds %struct.z_stream_s, ptr %906, i64 0, i32 11
  store i32 %add1846, ptr %data_type, align 8
  %907 = load i32, ptr %in, align 4
  %cmp1847 = icmp eq i32 %907, 0
  %908 = load i32, ptr %out, align 4
  %cmp1850 = icmp eq i32 %908, 0
  %or.cond12 = select i1 %cmp1847, i1 %cmp1850, i1 false
  %909 = load i32, ptr %flush.addr, align 4
  %cmp1853 = icmp eq i32 %909, 4
  %or.cond13 = select i1 %or.cond12, i1 true, i1 %cmp1853
  %910 = load i32, ptr %ret, align 4
  %cmp1856 = icmp eq i32 %910, 0
  %or.cond14 = select i1 %or.cond13, i1 %cmp1856, i1 false
  %spec.store.select = select i1 %or.cond14, i32 -5, i32 %910
  store i32 %spec.store.select, ptr %ret, align 4
  %911 = load i32, ptr %ret, align 4
  store i32 %911, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end1836, %if.then1795, %sw.default, %sw.bb1770, %do.body613, %if.then
  %912 = load i32, ptr %retval, align 4
  ret i32 %912
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) #1

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: nounwind ssp uwtable
define internal void @fixedtables(ptr noundef %state) #0 {
entry:
  %state.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %state, i64 0, i32 19
  store ptr @fixedtables.lenfix, ptr %lencode, align 8
  %lenbits = getelementptr inbounds %struct.inflate_state, ptr %state, i64 0, i32 21
  store i32 9, ptr %lenbits, align 8
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %state, i64 0, i32 20
  store ptr @fixedtables.distfix, ptr %distcode, align 8
  %0 = load ptr, ptr %state.addr, align 8
  %distbits = getelementptr inbounds %struct.inflate_state, ptr %0, i64 0, i32 22
  store i32 5, ptr %distbits, align 4
  ret void
}

declare i32 @inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @inflate_fast(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @updatewindow(ptr noundef %strm, i32 noundef %out) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %out.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  %copy = alloca i32, align 4
  %dist = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %out, ptr %out.addr, align 4
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i64 0, i32 7
  %0 = load ptr, ptr %state1, align 8
  store ptr %0, ptr %state, align 8
  %window = getelementptr inbounds %struct.inflate_state, ptr %0, i64 0, i32 13
  %1 = load ptr, ptr %window, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %strm.addr, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 8
  %3 = load ptr, ptr %zalloc, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 10
  %4 = load ptr, ptr %opaque, align 8
  %5 = load ptr, ptr %state, align 8
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 9
  %6 = load i32, ptr %wbits, align 8
  %shl = shl i32 1, %6
  %call = call ptr %3(ptr noundef %4, i32 noundef %shl, i32 noundef 1) #5
  %window2 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 13
  store ptr %call, ptr %window2, align 8
  %7 = load ptr, ptr %state, align 8
  %window3 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 13
  %8 = load ptr, ptr %window3, align 8
  %cmp4 = icmp eq ptr %8, null
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %if.then, %entry
  %9 = load ptr, ptr %state, align 8
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %9, i64 0, i32 10
  %10 = load i32, ptr %wsize, align 4
  %cmp7 = icmp eq i32 %10, 0
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end6
  %11 = load ptr, ptr %state, align 8
  %wbits9 = getelementptr inbounds %struct.inflate_state, ptr %11, i64 0, i32 9
  %12 = load i32, ptr %wbits9, align 8
  %shl10 = shl i32 1, %12
  %wsize11 = getelementptr inbounds %struct.inflate_state, ptr %11, i64 0, i32 10
  store i32 %shl10, ptr %wsize11, align 4
  %write = getelementptr inbounds %struct.inflate_state, ptr %11, i64 0, i32 12
  store i32 0, ptr %write, align 4
  %13 = load ptr, ptr %state, align 8
  %whave = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 11
  store i32 0, ptr %whave, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end6
  %14 = load i32, ptr %out.addr, align 4
  %15 = load ptr, ptr %strm.addr, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %15, i64 0, i32 4
  %16 = load i32, ptr %avail_out, align 8
  %sub = sub i32 %14, %16
  store i32 %sub, ptr %copy, align 4
  %17 = load ptr, ptr %state, align 8
  %wsize13 = getelementptr inbounds %struct.inflate_state, ptr %17, i64 0, i32 10
  %18 = load i32, ptr %wsize13, align 4
  %cmp14.not = icmp ult i32 %sub, %18
  br i1 %cmp14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end12
  %19 = load ptr, ptr %state, align 8
  %window16 = getelementptr inbounds %struct.inflate_state, ptr %19, i64 0, i32 13
  %20 = load ptr, ptr %window16, align 8
  %21 = load ptr, ptr %strm.addr, align 8
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %21, i64 0, i32 3
  %22 = load ptr, ptr %next_out, align 8
  %wsize17 = getelementptr inbounds %struct.inflate_state, ptr %19, i64 0, i32 10
  %23 = load i32, ptr %wsize17, align 4
  %idx.ext = zext i32 %23 to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, ptr %22, i64 %idx.neg
  %24 = load ptr, ptr %state, align 8
  %wsize18 = getelementptr inbounds %struct.inflate_state, ptr %24, i64 0, i32 10
  %25 = load i32, ptr %wsize18, align 4
  %conv = zext i32 %25 to i64
  %window19 = getelementptr inbounds %struct.inflate_state, ptr %24, i64 0, i32 13
  %26 = load ptr, ptr %window19, align 8
  %27 = call i64 @llvm.objectsize.i64.p0(ptr %26, i1 false, i1 true, i1 false)
  %call20 = call ptr @__memcpy_chk(ptr noundef %20, ptr noundef %add.ptr, i64 noundef %conv, i64 noundef %27) #5
  %28 = load ptr, ptr %state, align 8
  %write21 = getelementptr inbounds %struct.inflate_state, ptr %28, i64 0, i32 12
  store i32 0, ptr %write21, align 4
  %wsize22 = getelementptr inbounds %struct.inflate_state, ptr %28, i64 0, i32 10
  %29 = load i32, ptr %wsize22, align 4
  %whave23 = getelementptr inbounds %struct.inflate_state, ptr %28, i64 0, i32 11
  store i32 %29, ptr %whave23, align 8
  br label %return

if.else:                                          ; preds = %if.end12
  %30 = load ptr, ptr %state, align 8
  %wsize24 = getelementptr inbounds %struct.inflate_state, ptr %30, i64 0, i32 10
  %31 = load i32, ptr %wsize24, align 4
  %write25 = getelementptr inbounds %struct.inflate_state, ptr %30, i64 0, i32 12
  %32 = load i32, ptr %write25, align 4
  %sub26 = sub i32 %31, %32
  store i32 %sub26, ptr %dist, align 4
  %33 = load i32, ptr %copy, align 4
  %cmp27 = icmp ugt i32 %sub26, %33
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.else
  %34 = load i32, ptr %copy, align 4
  store i32 %34, ptr %dist, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.else
  %35 = load ptr, ptr %state, align 8
  %window31 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 13
  %36 = load ptr, ptr %window31, align 8
  %write32 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 12
  %37 = load i32, ptr %write32, align 4
  %idx.ext33 = zext i32 %37 to i64
  %add.ptr34 = getelementptr inbounds i8, ptr %36, i64 %idx.ext33
  %38 = load ptr, ptr %strm.addr, align 8
  %next_out35 = getelementptr inbounds %struct.z_stream_s, ptr %38, i64 0, i32 3
  %39 = load ptr, ptr %next_out35, align 8
  %40 = load i32, ptr %copy, align 4
  %idx.ext36 = zext i32 %40 to i64
  %idx.neg37 = sub nsw i64 0, %idx.ext36
  %add.ptr38 = getelementptr inbounds i8, ptr %39, i64 %idx.neg37
  %41 = load i32, ptr %dist, align 4
  %conv39 = zext i32 %41 to i64
  %42 = load ptr, ptr %state, align 8
  %window40 = getelementptr inbounds %struct.inflate_state, ptr %42, i64 0, i32 13
  %43 = load ptr, ptr %window40, align 8
  %write41 = getelementptr inbounds %struct.inflate_state, ptr %42, i64 0, i32 12
  %44 = load i32, ptr %write41, align 4
  %idx.ext42 = zext i32 %44 to i64
  %add.ptr43 = getelementptr inbounds i8, ptr %43, i64 %idx.ext42
  %45 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr43, i1 false, i1 true, i1 false)
  %call44 = call ptr @__memcpy_chk(ptr noundef %add.ptr34, ptr noundef %add.ptr38, i64 noundef %conv39, i64 noundef %45) #5
  %46 = load i32, ptr %dist, align 4
  %47 = load i32, ptr %copy, align 4
  %sub45 = sub i32 %47, %46
  store i32 %sub45, ptr %copy, align 4
  %tobool.not = icmp eq i32 %47, %46
  br i1 %tobool.not, label %if.else58, label %if.then46

if.then46:                                        ; preds = %if.end30
  %48 = load ptr, ptr %state, align 8
  %window47 = getelementptr inbounds %struct.inflate_state, ptr %48, i64 0, i32 13
  %49 = load ptr, ptr %window47, align 8
  %50 = load ptr, ptr %strm.addr, align 8
  %next_out48 = getelementptr inbounds %struct.z_stream_s, ptr %50, i64 0, i32 3
  %51 = load ptr, ptr %next_out48, align 8
  %52 = load i32, ptr %copy, align 4
  %idx.ext49 = zext i32 %52 to i64
  %idx.neg50 = sub nsw i64 0, %idx.ext49
  %add.ptr51 = getelementptr inbounds i8, ptr %51, i64 %idx.neg50
  %conv52 = zext i32 %52 to i64
  %53 = load ptr, ptr %state, align 8
  %window53 = getelementptr inbounds %struct.inflate_state, ptr %53, i64 0, i32 13
  %54 = load ptr, ptr %window53, align 8
  %55 = call i64 @llvm.objectsize.i64.p0(ptr %54, i1 false, i1 true, i1 false)
  %call54 = call ptr @__memcpy_chk(ptr noundef %49, ptr noundef %add.ptr51, i64 noundef %conv52, i64 noundef %55) #5
  %56 = load i32, ptr %copy, align 4
  %write55 = getelementptr inbounds %struct.inflate_state, ptr %53, i64 0, i32 12
  store i32 %56, ptr %write55, align 4
  %57 = load ptr, ptr %state, align 8
  %wsize56 = getelementptr inbounds %struct.inflate_state, ptr %57, i64 0, i32 10
  %58 = load i32, ptr %wsize56, align 4
  %whave57 = getelementptr inbounds %struct.inflate_state, ptr %57, i64 0, i32 11
  store i32 %58, ptr %whave57, align 8
  br label %return

if.else58:                                        ; preds = %if.end30
  %59 = load i32, ptr %dist, align 4
  %60 = load ptr, ptr %state, align 8
  %write59 = getelementptr inbounds %struct.inflate_state, ptr %60, i64 0, i32 12
  %61 = load i32, ptr %write59, align 4
  %add = add i32 %61, %59
  store i32 %add, ptr %write59, align 4
  %wsize61 = getelementptr inbounds %struct.inflate_state, ptr %60, i64 0, i32 10
  %62 = load i32, ptr %wsize61, align 4
  %cmp62 = icmp eq i32 %add, %62
  br i1 %cmp62, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.else58
  %63 = load ptr, ptr %state, align 8
  %write65 = getelementptr inbounds %struct.inflate_state, ptr %63, i64 0, i32 12
  store i32 0, ptr %write65, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.else58
  %64 = load ptr, ptr %state, align 8
  %whave67 = getelementptr inbounds %struct.inflate_state, ptr %64, i64 0, i32 11
  %65 = load i32, ptr %whave67, align 8
  %wsize68 = getelementptr inbounds %struct.inflate_state, ptr %64, i64 0, i32 10
  %66 = load i32, ptr %wsize68, align 4
  %cmp69 = icmp ult i32 %65, %66
  br i1 %cmp69, label %if.then71, label %return

if.then71:                                        ; preds = %if.end66
  %67 = load i32, ptr %dist, align 4
  %68 = load ptr, ptr %state, align 8
  %whave72 = getelementptr inbounds %struct.inflate_state, ptr %68, i64 0, i32 11
  %69 = load i32, ptr %whave72, align 8
  %add73 = add i32 %69, %67
  store i32 %add73, ptr %whave72, align 8
  br label %return

return:                                           ; preds = %if.then15, %if.end66, %if.then71, %if.then46, %if.then
  %storemerge = phi i32 [ 1, %if.then ], [ 0, %if.then46 ], [ 0, %if.then71 ], [ 0, %if.end66 ], [ 0, %if.then15 ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflateEnd(ptr noundef %strm) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state1, align 8
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %return, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %strm.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 9
  %3 = load ptr, ptr %zfree, align 8
  %cmp4 = icmp eq ptr %3, null
  br i1 %cmp4, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false3
  %4 = load ptr, ptr %strm.addr, align 8
  %state5 = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 7
  %5 = load ptr, ptr %state5, align 8
  store ptr %5, ptr %state, align 8
  %window = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 13
  %6 = load ptr, ptr %window, align 8
  %cmp6.not = icmp eq ptr %6, null
  br i1 %cmp6.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end
  %7 = load ptr, ptr %strm.addr, align 8
  %zfree8 = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 9
  %8 = load ptr, ptr %zfree8, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 10
  %9 = load ptr, ptr %opaque, align 8
  %10 = load ptr, ptr %state, align 8
  %window9 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 13
  %11 = load ptr, ptr %window9, align 8
  call void %8(ptr noundef %9, ptr noundef %11) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end
  %12 = load ptr, ptr %strm.addr, align 8
  %zfree11 = getelementptr inbounds %struct.z_stream_s, ptr %12, i64 0, i32 9
  %13 = load ptr, ptr %zfree11, align 8
  %opaque12 = getelementptr inbounds %struct.z_stream_s, ptr %12, i64 0, i32 10
  %14 = load ptr, ptr %opaque12, align 8
  %state13 = getelementptr inbounds %struct.z_stream_s, ptr %12, i64 0, i32 7
  %15 = load ptr, ptr %state13, align 8
  call void %13(ptr noundef %14, ptr noundef %15) #5
  %16 = load ptr, ptr %strm.addr, align 8
  %state14 = getelementptr inbounds %struct.z_stream_s, ptr %16, i64 0, i32 7
  store ptr null, ptr %state14, align 8
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %lor.lhs.false3, %if.end10
  %storemerge = phi i32 [ 0, %if.end10 ], [ -2, %lor.lhs.false3 ], [ -2, %lor.lhs.false ], [ -2, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflateSetDictionary(ptr noundef %strm, ptr noundef %dictionary, i32 noundef %dictLength) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %dictionary.addr = alloca ptr, align 8
  %dictLength.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store ptr %dictionary, ptr %dictionary.addr, align 8
  store i32 %dictLength, ptr %dictLength.addr, align 4
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state1, align 8
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %strm.addr, align 8
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 7
  %3 = load ptr, ptr %state3, align 8
  store ptr %3, ptr %state, align 8
  %wrap = getelementptr inbounds %struct.inflate_state, ptr %3, i64 0, i32 2
  %4 = load i32, ptr %wrap, align 8
  %cmp4.not = icmp eq i32 %4, 0
  br i1 %cmp4.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %state, align 8
  %6 = load i32, ptr %5, align 8
  %cmp5.not = icmp eq i32 %6, 10
  br i1 %cmp5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %land.lhs.true
  store i32 -2, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %7 = load ptr, ptr %state, align 8
  %8 = load i32, ptr %7, align 8
  %cmp9 = icmp eq i32 %8, 10
  br i1 %cmp9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.end7
  %call = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #5
  %9 = load ptr, ptr %dictionary.addr, align 8
  %10 = load i32, ptr %dictLength.addr, align 4
  %call11 = call i64 @adler32(i64 noundef %call, ptr noundef %9, i32 noundef %10) #5
  %11 = load ptr, ptr %state, align 8
  %check = getelementptr inbounds %struct.inflate_state, ptr %11, i64 0, i32 6
  %12 = load i64, ptr %check, align 8
  %cmp12.not = icmp eq i64 %call11, %12
  br i1 %cmp12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.then10
  store i32 -3, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then10, %if.end7
  %13 = load ptr, ptr %strm.addr, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %13, i64 0, i32 4
  %14 = load i32, ptr %avail_out, align 8
  %call16 = call i32 @updatewindow(ptr noundef %13, i32 noundef %14)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end15
  %15 = load ptr, ptr %state, align 8
  store i32 28, ptr %15, align 8
  store i32 -4, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end15
  %16 = load i32, ptr %dictLength.addr, align 4
  %17 = load ptr, ptr %state, align 8
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %17, i64 0, i32 10
  %18 = load i32, ptr %wsize, align 4
  %cmp20 = icmp ugt i32 %16, %18
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end19
  %19 = load ptr, ptr %state, align 8
  %window = getelementptr inbounds %struct.inflate_state, ptr %19, i64 0, i32 13
  %20 = load ptr, ptr %window, align 8
  %21 = load ptr, ptr %dictionary.addr, align 8
  %22 = load i32, ptr %dictLength.addr, align 4
  %idx.ext = zext i32 %22 to i64
  %add.ptr = getelementptr inbounds i8, ptr %21, i64 %idx.ext
  %23 = load ptr, ptr %state, align 8
  %wsize22 = getelementptr inbounds %struct.inflate_state, ptr %23, i64 0, i32 10
  %24 = load i32, ptr %wsize22, align 4
  %idx.ext23 = zext i32 %24 to i64
  %idx.neg = sub nsw i64 0, %idx.ext23
  %add.ptr24 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg
  %conv = zext i32 %24 to i64
  %25 = load ptr, ptr %state, align 8
  %window26 = getelementptr inbounds %struct.inflate_state, ptr %25, i64 0, i32 13
  %26 = load ptr, ptr %window26, align 8
  %27 = call i64 @llvm.objectsize.i64.p0(ptr %26, i1 false, i1 true, i1 false)
  %call27 = call ptr @__memcpy_chk(ptr noundef %20, ptr noundef %add.ptr24, i64 noundef %conv, i64 noundef %27) #5
  %wsize28 = getelementptr inbounds %struct.inflate_state, ptr %25, i64 0, i32 10
  %28 = load i32, ptr %wsize28, align 4
  %29 = load ptr, ptr %state, align 8
  %whave = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 11
  store i32 %28, ptr %whave, align 8
  br label %if.end46

if.else:                                          ; preds = %if.end19
  %30 = load ptr, ptr %state, align 8
  %window29 = getelementptr inbounds %struct.inflate_state, ptr %30, i64 0, i32 13
  %31 = load ptr, ptr %window29, align 8
  %wsize30 = getelementptr inbounds %struct.inflate_state, ptr %30, i64 0, i32 10
  %32 = load i32, ptr %wsize30, align 4
  %idx.ext31 = zext i32 %32 to i64
  %add.ptr32 = getelementptr inbounds i8, ptr %31, i64 %idx.ext31
  %33 = load i32, ptr %dictLength.addr, align 4
  %idx.ext33 = zext i32 %33 to i64
  %idx.neg34 = sub nsw i64 0, %idx.ext33
  %add.ptr35 = getelementptr inbounds i8, ptr %add.ptr32, i64 %idx.neg34
  %34 = load ptr, ptr %dictionary.addr, align 8
  %conv36 = zext i32 %33 to i64
  %35 = load ptr, ptr %state, align 8
  %window37 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 13
  %36 = load ptr, ptr %window37, align 8
  %wsize38 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 10
  %37 = load i32, ptr %wsize38, align 4
  %idx.ext39 = zext i32 %37 to i64
  %add.ptr40 = getelementptr inbounds i8, ptr %36, i64 %idx.ext39
  %38 = load i32, ptr %dictLength.addr, align 4
  %idx.ext41 = zext i32 %38 to i64
  %idx.neg42 = sub nsw i64 0, %idx.ext41
  %add.ptr43 = getelementptr inbounds i8, ptr %add.ptr40, i64 %idx.neg42
  %39 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr43, i1 false, i1 true, i1 false)
  %call44 = call ptr @__memcpy_chk(ptr noundef %add.ptr35, ptr noundef %34, i64 noundef %conv36, i64 noundef %39) #5
  %40 = load ptr, ptr %state, align 8
  %whave45 = getelementptr inbounds %struct.inflate_state, ptr %40, i64 0, i32 11
  store i32 %38, ptr %whave45, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then21
  %41 = load ptr, ptr %state, align 8
  %havedict = getelementptr inbounds %struct.inflate_state, ptr %41, i64 0, i32 3
  store i32 1, ptr %havedict, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end46, %if.then17, %if.then13, %if.then6, %if.then
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflateGetHeader(ptr noundef %strm, ptr noundef %head) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store ptr %head, ptr %head.addr, align 8
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state1, align 8
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %strm.addr, align 8
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 7
  %3 = load ptr, ptr %state3, align 8
  store ptr %3, ptr %state, align 8
  %wrap = getelementptr inbounds %struct.inflate_state, ptr %3, i64 0, i32 2
  %4 = load i32, ptr %wrap, align 8
  %and = and i32 %4, 2
  %cmp4 = icmp eq i32 %and, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %5 = load ptr, ptr %head.addr, align 8
  %6 = load ptr, ptr %state, align 8
  %head7 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 8
  store ptr %5, ptr %head7, align 8
  %done = getelementptr inbounds %struct.gz_header_s, ptr %5, i64 0, i32 12
  store i32 0, ptr %done, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflateSync(ptr noundef %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %buf = alloca [4 x i8], align 1
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state1, align 8
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %strm.addr, align 8
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 7
  %3 = load ptr, ptr %state3, align 8
  store ptr %3, ptr %state, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %avail_in, align 8
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %state, align 8
  %bits = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 15
  %6 = load i32, ptr %bits, align 8
  %cmp5 = icmp ult i32 %6, 8
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  store i32 -5, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %7 = load ptr, ptr %state, align 8
  %8 = load i32, ptr %7, align 8
  %cmp8.not = icmp eq i32 %8, 29
  br i1 %cmp8.not, label %if.end22, label %if.then9

if.then9:                                         ; preds = %if.end7
  %9 = load ptr, ptr %state, align 8
  store i32 29, ptr %9, align 8
  %bits11 = getelementptr inbounds %struct.inflate_state, ptr %9, i64 0, i32 15
  %10 = load i32, ptr %bits11, align 8
  %and = and i32 %10, 7
  %hold = getelementptr inbounds %struct.inflate_state, ptr %9, i64 0, i32 14
  %11 = load i64, ptr %hold, align 8
  %sh_prom = zext i32 %and to i64
  %shl = shl i64 %11, %sh_prom
  store i64 %shl, ptr %hold, align 8
  %12 = load ptr, ptr %state, align 8
  %bits12 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 15
  %13 = load i32, ptr %bits12, align 8
  %bits14 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 15
  %sub = and i32 %13, -8
  store i32 %sub, ptr %bits14, align 8
  store i32 0, ptr %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then9
  %14 = load ptr, ptr %state, align 8
  %bits15 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 15
  %15 = load i32, ptr %bits15, align 8
  %cmp16 = icmp ugt i32 %15, 7
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load ptr, ptr %state, align 8
  %hold17 = getelementptr inbounds %struct.inflate_state, ptr %16, i64 0, i32 14
  %17 = load i64, ptr %hold17, align 8
  %conv = trunc i64 %17 to i8
  %18 = load i32, ptr %len, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %len, align 4
  %idxprom = zext i32 %18 to i64
  %arrayidx = getelementptr inbounds [4 x i8], ptr %buf, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  %19 = load ptr, ptr %state, align 8
  %hold18 = getelementptr inbounds %struct.inflate_state, ptr %19, i64 0, i32 14
  %20 = load i64, ptr %hold18, align 8
  %shr = lshr i64 %20, 8
  store i64 %shr, ptr %hold18, align 8
  %bits19 = getelementptr inbounds %struct.inflate_state, ptr %19, i64 0, i32 15
  %21 = load i32, ptr %bits19, align 8
  %sub20 = add i32 %21, -8
  store i32 %sub20, ptr %bits19, align 8
  br label %while.cond, !llvm.loop !33

while.end:                                        ; preds = %while.cond
  %22 = load ptr, ptr %state, align 8
  %have = getelementptr inbounds %struct.inflate_state, ptr %22, i64 0, i32 26
  store i32 0, ptr %have, align 4
  %have21 = getelementptr inbounds %struct.inflate_state, ptr %22, i64 0, i32 26
  %23 = load i32, ptr %len, align 4
  %call = call i32 @syncsearch(ptr noundef nonnull %have21, ptr noundef nonnull %buf, i32 noundef %23)
  br label %if.end22

if.end22:                                         ; preds = %while.end, %if.end7
  %24 = load ptr, ptr %state, align 8
  %have23 = getelementptr inbounds %struct.inflate_state, ptr %24, i64 0, i32 26
  %25 = load ptr, ptr %strm.addr, align 8
  %26 = load ptr, ptr %25, align 8
  %avail_in24 = getelementptr inbounds %struct.z_stream_s, ptr %25, i64 0, i32 1
  %27 = load i32, ptr %avail_in24, align 8
  %call25 = call i32 @syncsearch(ptr noundef nonnull %have23, ptr noundef %26, i32 noundef %27)
  store i32 %call25, ptr %len, align 4
  %avail_in26 = getelementptr inbounds %struct.z_stream_s, ptr %25, i64 0, i32 1
  %28 = load i32, ptr %avail_in26, align 8
  %sub27 = sub i32 %28, %call25
  store i32 %sub27, ptr %avail_in26, align 8
  %29 = load ptr, ptr %strm.addr, align 8
  %30 = load ptr, ptr %29, align 8
  %idx.ext = zext i32 %call25 to i64
  %add.ptr = getelementptr inbounds i8, ptr %30, i64 %idx.ext
  store ptr %add.ptr, ptr %29, align 8
  %31 = load i32, ptr %len, align 4
  %conv29 = zext i32 %31 to i64
  %32 = load ptr, ptr %strm.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %32, i64 0, i32 2
  %33 = load i64, ptr %total_in, align 8
  %add = add i64 %33, %conv29
  store i64 %add, ptr %total_in, align 8
  %34 = load ptr, ptr %state, align 8
  %have30 = getelementptr inbounds %struct.inflate_state, ptr %34, i64 0, i32 26
  %35 = load i32, ptr %have30, align 4
  %cmp31.not = icmp eq i32 %35, 4
  br i1 %cmp31.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end22
  store i32 -3, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end22
  %36 = load ptr, ptr %strm.addr, align 8
  %total_in35 = getelementptr inbounds %struct.z_stream_s, ptr %36, i64 0, i32 2
  %37 = load i64, ptr %total_in35, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %36, i64 0, i32 5
  %38 = load i64, ptr %total_out, align 8
  %call36 = call i32 @inflateReset(ptr noundef %36)
  %total_in37 = getelementptr inbounds %struct.z_stream_s, ptr %36, i64 0, i32 2
  store i64 %37, ptr %total_in37, align 8
  %total_out38 = getelementptr inbounds %struct.z_stream_s, ptr %36, i64 0, i32 5
  store i64 %38, ptr %total_out38, align 8
  %39 = load ptr, ptr %state, align 8
  store i32 11, ptr %39, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end34, %if.then33, %if.then6, %if.then
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @syncsearch(ptr noundef %have, ptr noundef %buf, i32 noundef %len) #0 {
entry:
  %have.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %got = alloca i32, align 4
  %next = alloca i32, align 4
  store ptr %have, ptr %have.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %0 = load i32, ptr %have, align 4
  store i32 %0, ptr %got, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc11, %if.end10 ]
  store i32 %storemerge, ptr %next, align 4
  %1 = load i32, ptr %len.addr, align 4
  %cmp = icmp ult i32 %storemerge, %1
  %2 = load i32, ptr %got, align 4
  %cmp1 = icmp ult i32 %2, 4
  %3 = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %buf.addr, align 8
  %5 = load i32, ptr %next, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %7 = load i32, ptr %got, align 4
  %cmp2 = icmp ult i32 %7, 2
  %cond = select i1 %cmp2, i32 0, i32 255
  %cmp4 = icmp eq i32 %cond, %conv
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %8 = load i32, ptr %got, align 4
  %inc = add i32 %8, 1
  br label %if.end10

if.else:                                          ; preds = %while.body
  %9 = load ptr, ptr %buf.addr, align 8
  %10 = load i32, ptr %next, align 4
  %idxprom6 = zext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %9, i64 %idxprom6
  %11 = load i8, ptr %arrayidx7, align 1
  %tobool.not = icmp eq i8 %11, 0
  %12 = load i32, ptr %got, align 4
  %sub = sub i32 4, %12
  %storemerge1 = select i1 %tobool.not, i32 %sub, i32 0
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then
  %storemerge2 = phi i32 [ %storemerge1, %if.else ], [ %inc, %if.then ]
  store i32 %storemerge2, ptr %got, align 4
  %13 = load i32, ptr %next, align 4
  %inc11 = add i32 %13, 1
  br label %while.cond, !llvm.loop !34

while.end:                                        ; preds = %while.cond
  %14 = load i32, ptr %got, align 4
  %15 = load ptr, ptr %have.addr, align 8
  store i32 %14, ptr %15, align 4
  %16 = load i32, ptr %next, align 4
  ret i32 %16
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflateSyncPoint(ptr noundef %strm) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state1, align 8
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %strm.addr, align 8
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 7
  %3 = load ptr, ptr %state3, align 8
  store ptr %3, ptr %state, align 8
  %4 = load i32, ptr %3, align 8
  %cmp4 = icmp eq i32 %4, 13
  br i1 %cmp4, label %land.rhs, label %return

land.rhs:                                         ; preds = %if.end
  %5 = load ptr, ptr %state, align 8
  %bits = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 15
  %6 = load i32, ptr %bits, align 8
  %cmp5 = icmp eq i32 %6, 0
  %phi.cast = zext i1 %cmp5 to i32
  br label %return

return:                                           ; preds = %if.end, %land.rhs, %entry, %lor.lhs.false
  %storemerge = phi i32 [ -2, %lor.lhs.false ], [ -2, %entry ], [ 0, %if.end ], [ %phi.cast, %land.rhs ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflateCopy(ptr noundef %dest, ptr noundef %source) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca ptr, align 8
  %source.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  %copy = alloca ptr, align 8
  %window = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  store ptr %source, ptr %source.addr, align 8
  %cmp = icmp eq ptr %dest, null
  %0 = load ptr, ptr %source.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %1 = load ptr, ptr %source.addr, align 8
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 7
  %2 = load ptr, ptr %state3, align 8
  %cmp4 = icmp eq ptr %2, null
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %3 = load ptr, ptr %source.addr, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %3, i64 0, i32 8
  %4 = load ptr, ptr %zalloc, align 8
  %cmp6 = icmp eq ptr %4, null
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %5 = load ptr, ptr %source.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 9
  %6 = load ptr, ptr %zfree, align 8
  %cmp8 = icmp eq ptr %6, null
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false2, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false7
  %7 = load ptr, ptr %source.addr, align 8
  %state9 = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 7
  %8 = load ptr, ptr %state9, align 8
  store ptr %8, ptr %state, align 8
  %zalloc10 = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 8
  %9 = load ptr, ptr %zalloc10, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 10
  %10 = load ptr, ptr %opaque, align 8
  %call = call ptr %9(ptr noundef %10, i32 noundef 1, i32 noundef 9552) #5
  store ptr %call, ptr %copy, align 8
  %cmp11 = icmp eq ptr %call, null
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  store i32 -4, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end
  store ptr null, ptr %window, align 8
  %11 = load ptr, ptr %state, align 8
  %window14 = getelementptr inbounds %struct.inflate_state, ptr %11, i64 0, i32 13
  %12 = load ptr, ptr %window14, align 8
  %cmp15.not = icmp eq ptr %12, null
  br i1 %cmp15.not, label %if.end25, label %if.then16

if.then16:                                        ; preds = %if.end13
  %13 = load ptr, ptr %source.addr, align 8
  %zalloc17 = getelementptr inbounds %struct.z_stream_s, ptr %13, i64 0, i32 8
  %14 = load ptr, ptr %zalloc17, align 8
  %opaque18 = getelementptr inbounds %struct.z_stream_s, ptr %13, i64 0, i32 10
  %15 = load ptr, ptr %opaque18, align 8
  %16 = load ptr, ptr %state, align 8
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %16, i64 0, i32 9
  %17 = load i32, ptr %wbits, align 8
  %shl = shl i32 1, %17
  %call19 = call ptr %14(ptr noundef %15, i32 noundef %shl, i32 noundef 1) #5
  store ptr %call19, ptr %window, align 8
  %cmp20 = icmp eq ptr %call19, null
  br i1 %cmp20, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.then16
  %18 = load ptr, ptr %source.addr, align 8
  %zfree22 = getelementptr inbounds %struct.z_stream_s, ptr %18, i64 0, i32 9
  %19 = load ptr, ptr %zfree22, align 8
  %opaque23 = getelementptr inbounds %struct.z_stream_s, ptr %18, i64 0, i32 10
  %20 = load ptr, ptr %opaque23, align 8
  %21 = load ptr, ptr %copy, align 8
  call void %19(ptr noundef %20, ptr noundef %21) #5
  store i32 -4, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.then16, %if.end13
  %22 = load ptr, ptr %dest.addr, align 8
  %23 = load ptr, ptr %source.addr, align 8
  %24 = call i64 @llvm.objectsize.i64.p0(ptr %22, i1 false, i1 true, i1 false)
  %call26 = call ptr @__memcpy_chk(ptr noundef %22, ptr noundef %23, i64 noundef 112, i64 noundef %24) #5
  %25 = load ptr, ptr %copy, align 8
  %26 = load ptr, ptr %state, align 8
  %27 = call i64 @llvm.objectsize.i64.p0(ptr %25, i1 false, i1 true, i1 false)
  %call27 = call ptr @__memcpy_chk(ptr noundef %25, ptr noundef %26, i64 noundef 9552, i64 noundef %27) #5
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %26, i64 0, i32 19
  %28 = load ptr, ptr %lencode, align 8
  %codes = getelementptr inbounds %struct.inflate_state, ptr %26, i64 0, i32 30
  %cmp28.not = icmp ult ptr %28, %codes
  br i1 %cmp28.not, label %if.end52, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end25
  %29 = load ptr, ptr %state, align 8
  %lencode29 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 19
  %30 = load ptr, ptr %lencode29, align 8
  %add.ptr32 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 30, i64 2047
  %cmp33.not = icmp ugt ptr %30, %add.ptr32
  br i1 %cmp33.not, label %if.end52, label %if.then34

if.then34:                                        ; preds = %land.lhs.true
  %31 = load ptr, ptr %copy, align 8
  %codes35 = getelementptr inbounds %struct.inflate_state, ptr %31, i64 0, i32 30
  %32 = load ptr, ptr %state, align 8
  %lencode37 = getelementptr inbounds %struct.inflate_state, ptr %32, i64 0, i32 19
  %33 = load ptr, ptr %lencode37, align 8
  %codes38 = getelementptr inbounds %struct.inflate_state, ptr %32, i64 0, i32 30
  %sub.ptr.lhs.cast = ptrtoint ptr %33 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %codes38 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 2
  %add.ptr40 = getelementptr inbounds %struct.code, ptr %codes35, i64 %sub.ptr.div
  %34 = load ptr, ptr %copy, align 8
  %lencode41 = getelementptr inbounds %struct.inflate_state, ptr %34, i64 0, i32 19
  store ptr %add.ptr40, ptr %lencode41, align 8
  %codes42 = getelementptr inbounds %struct.inflate_state, ptr %34, i64 0, i32 30
  %35 = load ptr, ptr %state, align 8
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 20
  %36 = load ptr, ptr %distcode, align 8
  %codes44 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 30
  %sub.ptr.lhs.cast46 = ptrtoint ptr %36 to i64
  %sub.ptr.rhs.cast47 = ptrtoint ptr %codes44 to i64
  %sub.ptr.sub48 = sub i64 %sub.ptr.lhs.cast46, %sub.ptr.rhs.cast47
  %sub.ptr.div49 = ashr exact i64 %sub.ptr.sub48, 2
  %add.ptr50 = getelementptr inbounds %struct.code, ptr %codes42, i64 %sub.ptr.div49
  %37 = load ptr, ptr %copy, align 8
  %distcode51 = getelementptr inbounds %struct.inflate_state, ptr %37, i64 0, i32 20
  store ptr %add.ptr50, ptr %distcode51, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then34, %land.lhs.true, %if.end25
  %38 = load ptr, ptr %copy, align 8
  %codes53 = getelementptr inbounds %struct.inflate_state, ptr %38, i64 0, i32 30
  %39 = load ptr, ptr %state, align 8
  %next = getelementptr inbounds %struct.inflate_state, ptr %39, i64 0, i32 27
  %40 = load ptr, ptr %next, align 8
  %codes55 = getelementptr inbounds %struct.inflate_state, ptr %39, i64 0, i32 30
  %sub.ptr.lhs.cast57 = ptrtoint ptr %40 to i64
  %sub.ptr.rhs.cast58 = ptrtoint ptr %codes55 to i64
  %sub.ptr.sub59 = sub i64 %sub.ptr.lhs.cast57, %sub.ptr.rhs.cast58
  %sub.ptr.div60 = ashr exact i64 %sub.ptr.sub59, 2
  %add.ptr61 = getelementptr inbounds %struct.code, ptr %codes53, i64 %sub.ptr.div60
  %41 = load ptr, ptr %copy, align 8
  %next62 = getelementptr inbounds %struct.inflate_state, ptr %41, i64 0, i32 27
  store ptr %add.ptr61, ptr %next62, align 8
  %42 = load ptr, ptr %window, align 8
  %cmp63.not = icmp eq ptr %42, null
  br i1 %cmp63.not, label %if.end69, label %if.then64

if.then64:                                        ; preds = %if.end52
  %43 = load ptr, ptr %state, align 8
  %wbits65 = getelementptr inbounds %struct.inflate_state, ptr %43, i64 0, i32 9
  %44 = load i32, ptr %wbits65, align 8
  %shl66 = shl i32 1, %44
  %45 = load ptr, ptr %window, align 8
  %window67 = getelementptr inbounds %struct.inflate_state, ptr %43, i64 0, i32 13
  %46 = load ptr, ptr %window67, align 8
  %conv = zext i32 %shl66 to i64
  %47 = call i64 @llvm.objectsize.i64.p0(ptr %45, i1 false, i1 true, i1 false)
  %call68 = call ptr @__memcpy_chk(ptr noundef %45, ptr noundef %46, i64 noundef %conv, i64 noundef %47) #5
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %if.end52
  %48 = load ptr, ptr %window, align 8
  %49 = load ptr, ptr %copy, align 8
  %window70 = getelementptr inbounds %struct.inflate_state, ptr %49, i64 0, i32 13
  store ptr %48, ptr %window70, align 8
  %50 = load ptr, ptr %dest.addr, align 8
  %state71 = getelementptr inbounds %struct.z_stream_s, ptr %50, i64 0, i32 7
  store ptr %49, ptr %state71, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end69, %if.then21, %if.then12, %if.then
  %51 = load i32, ptr %retval, align 4
  ret i32 %51
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nocallback nofree nounwind willreturn }
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
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
