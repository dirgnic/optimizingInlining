; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-mad/inflate.c'
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
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %0 = load ptr, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state1, align 8
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %strm.addr, align 8
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %state3, align 8
  store ptr %4, ptr %state, align 8
  %5 = load ptr, ptr %state, align 8
  %total = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 7
  store i64 0, ptr %total, align 8
  %6 = load ptr, ptr %strm.addr, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %6, i32 0, i32 5
  store i64 0, ptr %total_out, align 8
  %7 = load ptr, ptr %strm.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 2
  store i64 0, ptr %total_in, align 8
  %8 = load ptr, ptr %strm.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 6
  store ptr null, ptr %msg, align 8
  %9 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 12
  store i64 1, ptr %adler, align 8
  %10 = load ptr, ptr %state, align 8
  %mode = getelementptr inbounds %struct.inflate_state, ptr %10, i32 0, i32 0
  store i32 0, ptr %mode, align 8
  %11 = load ptr, ptr %state, align 8
  %last = getelementptr inbounds %struct.inflate_state, ptr %11, i32 0, i32 1
  store i32 0, ptr %last, align 4
  %12 = load ptr, ptr %state, align 8
  %havedict = getelementptr inbounds %struct.inflate_state, ptr %12, i32 0, i32 3
  store i32 0, ptr %havedict, align 4
  %13 = load ptr, ptr %state, align 8
  %dmax = getelementptr inbounds %struct.inflate_state, ptr %13, i32 0, i32 5
  store i32 32768, ptr %dmax, align 4
  %14 = load ptr, ptr %state, align 8
  %head = getelementptr inbounds %struct.inflate_state, ptr %14, i32 0, i32 8
  store ptr null, ptr %head, align 8
  %15 = load ptr, ptr %state, align 8
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %15, i32 0, i32 10
  store i32 0, ptr %wsize, align 4
  %16 = load ptr, ptr %state, align 8
  %whave = getelementptr inbounds %struct.inflate_state, ptr %16, i32 0, i32 11
  store i32 0, ptr %whave, align 8
  %17 = load ptr, ptr %state, align 8
  %write = getelementptr inbounds %struct.inflate_state, ptr %17, i32 0, i32 12
  store i32 0, ptr %write, align 4
  %18 = load ptr, ptr %state, align 8
  %hold = getelementptr inbounds %struct.inflate_state, ptr %18, i32 0, i32 14
  store i64 0, ptr %hold, align 8
  %19 = load ptr, ptr %state, align 8
  %bits = getelementptr inbounds %struct.inflate_state, ptr %19, i32 0, i32 15
  store i32 0, ptr %bits, align 8
  %20 = load ptr, ptr %state, align 8
  %codes = getelementptr inbounds %struct.inflate_state, ptr %20, i32 0, i32 30
  %arraydecay = getelementptr inbounds [2048 x %struct.code], ptr %codes, i64 0, i64 0
  %21 = load ptr, ptr %state, align 8
  %next = getelementptr inbounds %struct.inflate_state, ptr %21, i32 0, i32 27
  store ptr %arraydecay, ptr %next, align 8
  %22 = load ptr, ptr %state, align 8
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 20
  store ptr %arraydecay, ptr %distcode, align 8
  %23 = load ptr, ptr %state, align 8
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %23, i32 0, i32 19
  store ptr %arraydecay, ptr %lencode, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
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
  %0 = load ptr, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state1, align 8
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %strm.addr, align 8
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %state3, align 8
  store ptr %4, ptr %state, align 8
  %5 = load i32, ptr %bits.addr, align 4
  %cmp4 = icmp sgt i32 %5, 16
  br i1 %cmp4, label %if.then8, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.end
  %6 = load ptr, ptr %state, align 8
  %bits6 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 15
  %7 = load i32, ptr %bits6, align 8
  %8 = load i32, ptr %bits.addr, align 4
  %add = add i32 %7, %8
  %cmp7 = icmp ugt i32 %add, 32
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false5, %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %lor.lhs.false5
  %9 = load i32, ptr %bits.addr, align 4
  %sh_prom = zext i32 %9 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub nsw i64 %shl, 1
  %10 = load i32, ptr %value.addr, align 4
  %conv = sext i32 %10 to i64
  %and = and i64 %conv, %sub
  %conv10 = trunc i64 %and to i32
  store i32 %conv10, ptr %value.addr, align 4
  %11 = load i32, ptr %value.addr, align 4
  %12 = load ptr, ptr %state, align 8
  %bits11 = getelementptr inbounds %struct.inflate_state, ptr %12, i32 0, i32 15
  %13 = load i32, ptr %bits11, align 8
  %shl12 = shl i32 %11, %13
  %conv13 = sext i32 %shl12 to i64
  %14 = load ptr, ptr %state, align 8
  %hold = getelementptr inbounds %struct.inflate_state, ptr %14, i32 0, i32 14
  %15 = load i64, ptr %hold, align 8
  %add14 = add i64 %15, %conv13
  store i64 %add14, ptr %hold, align 8
  %16 = load i32, ptr %bits.addr, align 4
  %17 = load ptr, ptr %state, align 8
  %bits15 = getelementptr inbounds %struct.inflate_state, ptr %17, i32 0, i32 15
  %18 = load i32, ptr %bits15, align 8
  %add16 = add i32 %18, %16
  store i32 %add16, ptr %bits15, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.then
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
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
  %0 = load ptr, ptr %version.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %version.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %3 = load i8, ptr @.str, align 1
  %conv1 = sext i8 %3 to i32
  %cmp2 = icmp ne i32 %conv, %conv1
  br i1 %cmp2, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %4 = load i32, ptr %stream_size.addr, align 4
  %cmp5 = icmp ne i32 %4, 112
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  store i32 -6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %5 = load ptr, ptr %strm.addr, align 8
  %cmp7 = icmp eq ptr %5, null
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %6 = load ptr, ptr %strm.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %6, i32 0, i32 6
  store ptr null, ptr %msg, align 8
  %7 = load ptr, ptr %strm.addr, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 8
  %8 = load ptr, ptr %zalloc, align 8
  %cmp11 = icmp eq ptr %8, null
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  %9 = load ptr, ptr %strm.addr, align 8
  %zalloc14 = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 8
  store ptr @zcalloc, ptr %zalloc14, align 8
  %10 = load ptr, ptr %strm.addr, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 10
  store ptr null, ptr %opaque, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10
  %11 = load ptr, ptr %strm.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 9
  %12 = load ptr, ptr %zfree, align 8
  %cmp16 = icmp eq ptr %12, null
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  %13 = load ptr, ptr %strm.addr, align 8
  %zfree19 = getelementptr inbounds %struct.z_stream_s, ptr %13, i32 0, i32 9
  store ptr @zcfree, ptr %zfree19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15
  %14 = load ptr, ptr %strm.addr, align 8
  %zalloc21 = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 8
  %15 = load ptr, ptr %zalloc21, align 8
  %16 = load ptr, ptr %strm.addr, align 8
  %opaque22 = getelementptr inbounds %struct.z_stream_s, ptr %16, i32 0, i32 10
  %17 = load ptr, ptr %opaque22, align 8
  %call = call ptr %15(ptr noundef %17, i32 noundef 1, i32 noundef 9552)
  store ptr %call, ptr %state, align 8
  %18 = load ptr, ptr %state, align 8
  %cmp23 = icmp eq ptr %18, null
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end20
  store i32 -4, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end20
  %19 = load ptr, ptr %state, align 8
  %20 = load ptr, ptr %strm.addr, align 8
  %state27 = getelementptr inbounds %struct.z_stream_s, ptr %20, i32 0, i32 7
  store ptr %19, ptr %state27, align 8
  %21 = load i32, ptr %windowBits.addr, align 4
  %cmp28 = icmp slt i32 %21, 0
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end26
  %22 = load ptr, ptr %state, align 8
  %wrap = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 2
  store i32 0, ptr %wrap, align 8
  %23 = load i32, ptr %windowBits.addr, align 4
  %sub = sub nsw i32 0, %23
  store i32 %sub, ptr %windowBits.addr, align 4
  br label %if.end36

if.else:                                          ; preds = %if.end26
  %24 = load i32, ptr %windowBits.addr, align 4
  %shr = ashr i32 %24, 4
  %add = add nsw i32 %shr, 1
  %25 = load ptr, ptr %state, align 8
  %wrap31 = getelementptr inbounds %struct.inflate_state, ptr %25, i32 0, i32 2
  store i32 %add, ptr %wrap31, align 8
  %26 = load i32, ptr %windowBits.addr, align 4
  %cmp32 = icmp slt i32 %26, 48
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.else
  %27 = load i32, ptr %windowBits.addr, align 4
  %and = and i32 %27, 15
  store i32 %and, ptr %windowBits.addr, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.else
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then30
  %28 = load i32, ptr %windowBits.addr, align 4
  %cmp37 = icmp slt i32 %28, 8
  br i1 %cmp37, label %if.then42, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %if.end36
  %29 = load i32, ptr %windowBits.addr, align 4
  %cmp40 = icmp sgt i32 %29, 15
  br i1 %cmp40, label %if.then42, label %if.end46

if.then42:                                        ; preds = %lor.lhs.false39, %if.end36
  %30 = load ptr, ptr %strm.addr, align 8
  %zfree43 = getelementptr inbounds %struct.z_stream_s, ptr %30, i32 0, i32 9
  %31 = load ptr, ptr %zfree43, align 8
  %32 = load ptr, ptr %strm.addr, align 8
  %opaque44 = getelementptr inbounds %struct.z_stream_s, ptr %32, i32 0, i32 10
  %33 = load ptr, ptr %opaque44, align 8
  %34 = load ptr, ptr %state, align 8
  call void %31(ptr noundef %33, ptr noundef %34)
  %35 = load ptr, ptr %strm.addr, align 8
  %state45 = getelementptr inbounds %struct.z_stream_s, ptr %35, i32 0, i32 7
  store ptr null, ptr %state45, align 8
  store i32 -2, ptr %retval, align 4
  br label %return

if.end46:                                         ; preds = %lor.lhs.false39
  %36 = load i32, ptr %windowBits.addr, align 4
  %37 = load ptr, ptr %state, align 8
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %37, i32 0, i32 9
  store i32 %36, ptr %wbits, align 8
  %38 = load ptr, ptr %state, align 8
  %window = getelementptr inbounds %struct.inflate_state, ptr %38, i32 0, i32 13
  store ptr null, ptr %window, align 8
  %39 = load ptr, ptr %strm.addr, align 8
  %call47 = call i32 @inflateReset(ptr noundef %39)
  store i32 %call47, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end46, %if.then42, %if.then25, %if.then9, %if.then
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #1

declare void @zcfree(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @inflateInit_(ptr noundef %strm, ptr noundef %version, i32 noundef %stream_size) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %version.addr = alloca ptr, align 8
  %stream_size.addr = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  store ptr %version, ptr %version.addr, align 8
  store i32 %stream_size, ptr %stream_size.addr, align 4
  %0 = load ptr, ptr %strm.addr, align 8
  %1 = load ptr, ptr %version.addr, align 8
  %2 = load i32, ptr %stream_size.addr, align 4
  %call = call i32 @inflateInit2_(ptr noundef %0, i32 noundef 15, ptr noundef %1, i32 noundef %2)
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
  %this = alloca %struct.code, align 2
  %last = alloca %struct.code, align 2
  %len = alloca i32, align 4
  %ret = alloca i32, align 4
  %hbuf = alloca [4 x i8], align 1
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %flush, ptr %flush.addr, align 4
  %0 = load ptr, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state1, align 8
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %strm.addr, align 8
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %next_out, align 8
  %cmp4 = icmp eq ptr %4, null
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %5 = load ptr, ptr %strm.addr, align 8
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %next_in, align 8
  %cmp6 = icmp eq ptr %6, null
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false5
  %7 = load ptr, ptr %strm.addr, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %avail_in, align 8
  %cmp7 = icmp ne i32 %8, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false5
  %9 = load ptr, ptr %strm.addr, align 8
  %state8 = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 7
  %10 = load ptr, ptr %state8, align 8
  store ptr %10, ptr %state, align 8
  %11 = load ptr, ptr %state, align 8
  %mode = getelementptr inbounds %struct.inflate_state, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %mode, align 8
  %cmp9 = icmp eq i32 %12, 11
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  %13 = load ptr, ptr %state, align 8
  %mode11 = getelementptr inbounds %struct.inflate_state, ptr %13, i32 0, i32 0
  store i32 12, ptr %mode11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end12
  %14 = load ptr, ptr %strm.addr, align 8
  %next_out13 = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %next_out13, align 8
  store ptr %15, ptr %put, align 8
  %16 = load ptr, ptr %strm.addr, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %16, i32 0, i32 4
  %17 = load i32, ptr %avail_out, align 8
  store i32 %17, ptr %left, align 4
  %18 = load ptr, ptr %strm.addr, align 8
  %next_in14 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %next_in14, align 8
  store ptr %19, ptr %next, align 8
  %20 = load ptr, ptr %strm.addr, align 8
  %avail_in15 = getelementptr inbounds %struct.z_stream_s, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %avail_in15, align 8
  store i32 %21, ptr %have, align 4
  %22 = load ptr, ptr %state, align 8
  %hold16 = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 14
  %23 = load i64, ptr %hold16, align 8
  store i64 %23, ptr %hold, align 8
  %24 = load ptr, ptr %state, align 8
  %bits17 = getelementptr inbounds %struct.inflate_state, ptr %24, i32 0, i32 15
  %25 = load i32, ptr %bits17, align 8
  store i32 %25, ptr %bits, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %26 = load i32, ptr %have, align 4
  store i32 %26, ptr %in, align 4
  %27 = load i32, ptr %left, align 4
  store i32 %27, ptr %out, align 4
  store i32 0, ptr %ret, align 4
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog1772, %do.end
  %28 = load ptr, ptr %state, align 8
  %mode18 = getelementptr inbounds %struct.inflate_state, ptr %28, i32 0, i32 0
  %29 = load i32, ptr %mode18, align 8
  switch i32 %29, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb96
    i32 2, label %sw.bb162
    i32 3, label %sw.bb214
    i32 4, label %sw.bb265
    i32 5, label %sw.bb324
    i32 6, label %sw.bb387
    i32 7, label %sw.bb449
    i32 8, label %sw.bb515
    i32 9, label %sw.bb569
    i32 10, label %sw.bb609
    i32 11, label %sw.bb627
    i32 12, label %sw.bb632
    i32 13, label %sw.bb692
    i32 14, label %sw.bb738
    i32 15, label %sw.bb766
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
    i32 29, label %sw.bb1771
  ]

sw.bb:                                            ; preds = %for.cond
  %30 = load ptr, ptr %state, align 8
  %wrap = getelementptr inbounds %struct.inflate_state, ptr %30, i32 0, i32 2
  %31 = load i32, ptr %wrap, align 8
  %cmp19 = icmp eq i32 %31, 0
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %sw.bb
  %32 = load ptr, ptr %state, align 8
  %mode21 = getelementptr inbounds %struct.inflate_state, ptr %32, i32 0, i32 0
  store i32 12, ptr %mode21, align 8
  br label %sw.epilog1772

if.end22:                                         ; preds = %sw.bb
  br label %do.body23

do.body23:                                        ; preds = %if.end22
  br label %while.cond

while.cond:                                       ; preds = %do.end30, %do.body23
  %33 = load i32, ptr %bits, align 4
  %cmp24 = icmp ult i32 %33, 16
  br i1 %cmp24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body25

do.body25:                                        ; preds = %while.body
  %34 = load i32, ptr %have, align 4
  %cmp26 = icmp eq i32 %34, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %do.body25
  br label %inf_leave

if.end28:                                         ; preds = %do.body25
  %35 = load i32, ptr %have, align 4
  %dec = add i32 %35, -1
  store i32 %dec, ptr %have, align 4
  %36 = load ptr, ptr %next, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %36, i32 1
  store ptr %incdec.ptr, ptr %next, align 8
  %37 = load i8, ptr %36, align 1
  %conv = zext i8 %37 to i64
  %38 = load i32, ptr %bits, align 4
  %sh_prom = zext i32 %38 to i64
  %shl = shl i64 %conv, %sh_prom
  %39 = load i64, ptr %hold, align 8
  %add = add i64 %39, %shl
  store i64 %add, ptr %hold, align 8
  %40 = load i32, ptr %bits, align 4
  %add29 = add i32 %40, 8
  store i32 %add29, ptr %bits, align 4
  br label %do.end30

do.end30:                                         ; preds = %if.end28
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %do.end31

do.end31:                                         ; preds = %while.end
  %41 = load ptr, ptr %state, align 8
  %wrap32 = getelementptr inbounds %struct.inflate_state, ptr %41, i32 0, i32 2
  %42 = load i32, ptr %wrap32, align 8
  %and = and i32 %42, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true33, label %if.end48

land.lhs.true33:                                  ; preds = %do.end31
  %43 = load i64, ptr %hold, align 8
  %cmp34 = icmp eq i64 %43, 35615
  br i1 %cmp34, label %if.then36, label %if.end48

if.then36:                                        ; preds = %land.lhs.true33
  %call = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  %44 = load ptr, ptr %state, align 8
  %check = getelementptr inbounds %struct.inflate_state, ptr %44, i32 0, i32 6
  store i64 %call, ptr %check, align 8
  br label %do.body37

do.body37:                                        ; preds = %if.then36
  %45 = load i64, ptr %hold, align 8
  %conv38 = trunc i64 %45 to i8
  %arrayidx = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 0
  store i8 %conv38, ptr %arrayidx, align 1
  %46 = load i64, ptr %hold, align 8
  %shr = lshr i64 %46, 8
  %conv39 = trunc i64 %shr to i8
  %arrayidx40 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 1
  store i8 %conv39, ptr %arrayidx40, align 1
  %47 = load ptr, ptr %state, align 8
  %check41 = getelementptr inbounds %struct.inflate_state, ptr %47, i32 0, i32 6
  %48 = load i64, ptr %check41, align 8
  %arraydecay = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 0
  %call42 = call i64 @crc32(i64 noundef %48, ptr noundef %arraydecay, i32 noundef 2)
  %49 = load ptr, ptr %state, align 8
  %check43 = getelementptr inbounds %struct.inflate_state, ptr %49, i32 0, i32 6
  store i64 %call42, ptr %check43, align 8
  br label %do.end44

do.end44:                                         ; preds = %do.body37
  br label %do.body45

do.body45:                                        ; preds = %do.end44
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %do.end46

do.end46:                                         ; preds = %do.body45
  %50 = load ptr, ptr %state, align 8
  %mode47 = getelementptr inbounds %struct.inflate_state, ptr %50, i32 0, i32 0
  store i32 1, ptr %mode47, align 8
  br label %sw.epilog1772

if.end48:                                         ; preds = %land.lhs.true33, %do.end31
  %51 = load ptr, ptr %state, align 8
  %flags = getelementptr inbounds %struct.inflate_state, ptr %51, i32 0, i32 4
  store i32 0, ptr %flags, align 8
  %52 = load ptr, ptr %state, align 8
  %head = getelementptr inbounds %struct.inflate_state, ptr %52, i32 0, i32 8
  %53 = load ptr, ptr %head, align 8
  %cmp49 = icmp ne ptr %53, null
  br i1 %cmp49, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end48
  %54 = load ptr, ptr %state, align 8
  %head52 = getelementptr inbounds %struct.inflate_state, ptr %54, i32 0, i32 8
  %55 = load ptr, ptr %head52, align 8
  %done = getelementptr inbounds %struct.gz_header_s, ptr %55, i32 0, i32 12
  store i32 -1, ptr %done, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end48
  %56 = load ptr, ptr %state, align 8
  %wrap54 = getelementptr inbounds %struct.inflate_state, ptr %56, i32 0, i32 2
  %57 = load i32, ptr %wrap54, align 8
  %and55 = and i32 %57, 1
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %lor.lhs.false57, label %if.then65

lor.lhs.false57:                                  ; preds = %if.end53
  %58 = load i64, ptr %hold, align 8
  %conv58 = trunc i64 %58 to i32
  %and59 = and i32 %conv58, 255
  %shl60 = shl i32 %and59, 8
  %conv61 = zext i32 %shl60 to i64
  %59 = load i64, ptr %hold, align 8
  %shr62 = lshr i64 %59, 8
  %add63 = add i64 %conv61, %shr62
  %rem = urem i64 %add63, 31
  %tobool64 = icmp ne i64 %rem, 0
  br i1 %tobool64, label %if.then65, label %if.end67

if.then65:                                        ; preds = %lor.lhs.false57, %if.end53
  %60 = load ptr, ptr %strm.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %60, i32 0, i32 6
  store ptr @.str.1, ptr %msg, align 8
  %61 = load ptr, ptr %state, align 8
  %mode66 = getelementptr inbounds %struct.inflate_state, ptr %61, i32 0, i32 0
  store i32 27, ptr %mode66, align 8
  br label %sw.epilog1772

if.end67:                                         ; preds = %lor.lhs.false57
  %62 = load i64, ptr %hold, align 8
  %conv68 = trunc i64 %62 to i32
  %and69 = and i32 %conv68, 15
  %cmp70 = icmp ne i32 %and69, 8
  br i1 %cmp70, label %if.then72, label %if.end75

if.then72:                                        ; preds = %if.end67
  %63 = load ptr, ptr %strm.addr, align 8
  %msg73 = getelementptr inbounds %struct.z_stream_s, ptr %63, i32 0, i32 6
  store ptr @.str.2, ptr %msg73, align 8
  %64 = load ptr, ptr %state, align 8
  %mode74 = getelementptr inbounds %struct.inflate_state, ptr %64, i32 0, i32 0
  store i32 27, ptr %mode74, align 8
  br label %sw.epilog1772

if.end75:                                         ; preds = %if.end67
  br label %do.body76

do.body76:                                        ; preds = %if.end75
  %65 = load i64, ptr %hold, align 8
  %shr77 = lshr i64 %65, 4
  store i64 %shr77, ptr %hold, align 8
  %66 = load i32, ptr %bits, align 4
  %sub = sub i32 %66, 4
  store i32 %sub, ptr %bits, align 4
  br label %do.end78

do.end78:                                         ; preds = %do.body76
  %67 = load i64, ptr %hold, align 8
  %conv79 = trunc i64 %67 to i32
  %and80 = and i32 %conv79, 15
  %add81 = add i32 %and80, 8
  store i32 %add81, ptr %len, align 4
  %68 = load i32, ptr %len, align 4
  %69 = load ptr, ptr %state, align 8
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %69, i32 0, i32 9
  %70 = load i32, ptr %wbits, align 8
  %cmp82 = icmp ugt i32 %68, %70
  br i1 %cmp82, label %if.then84, label %if.end87

if.then84:                                        ; preds = %do.end78
  %71 = load ptr, ptr %strm.addr, align 8
  %msg85 = getelementptr inbounds %struct.z_stream_s, ptr %71, i32 0, i32 6
  store ptr @.str.3, ptr %msg85, align 8
  %72 = load ptr, ptr %state, align 8
  %mode86 = getelementptr inbounds %struct.inflate_state, ptr %72, i32 0, i32 0
  store i32 27, ptr %mode86, align 8
  br label %sw.epilog1772

if.end87:                                         ; preds = %do.end78
  %73 = load i32, ptr %len, align 4
  %shl88 = shl i32 1, %73
  %74 = load ptr, ptr %state, align 8
  %dmax = getelementptr inbounds %struct.inflate_state, ptr %74, i32 0, i32 5
  store i32 %shl88, ptr %dmax, align 4
  %call89 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  %75 = load ptr, ptr %state, align 8
  %check90 = getelementptr inbounds %struct.inflate_state, ptr %75, i32 0, i32 6
  store i64 %call89, ptr %check90, align 8
  %76 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %76, i32 0, i32 12
  store i64 %call89, ptr %adler, align 8
  %77 = load i64, ptr %hold, align 8
  %and91 = and i64 %77, 512
  %tobool92 = icmp ne i64 %and91, 0
  %78 = zext i1 %tobool92 to i64
  %cond = select i1 %tobool92, i32 9, i32 11
  %79 = load ptr, ptr %state, align 8
  %mode93 = getelementptr inbounds %struct.inflate_state, ptr %79, i32 0, i32 0
  store i32 %cond, ptr %mode93, align 8
  br label %do.body94

do.body94:                                        ; preds = %if.end87
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %do.end95

do.end95:                                         ; preds = %do.body94
  br label %sw.epilog1772

sw.bb96:                                          ; preds = %for.cond
  br label %do.body97

do.body97:                                        ; preds = %sw.bb96
  br label %while.cond98

while.cond98:                                     ; preds = %do.end114, %do.body97
  %80 = load i32, ptr %bits, align 4
  %cmp99 = icmp ult i32 %80, 16
  br i1 %cmp99, label %while.body101, label %while.end115

while.body101:                                    ; preds = %while.cond98
  br label %do.body102

do.body102:                                       ; preds = %while.body101
  %81 = load i32, ptr %have, align 4
  %cmp103 = icmp eq i32 %81, 0
  br i1 %cmp103, label %if.then105, label %if.end106

if.then105:                                       ; preds = %do.body102
  br label %inf_leave

if.end106:                                        ; preds = %do.body102
  %82 = load i32, ptr %have, align 4
  %dec107 = add i32 %82, -1
  store i32 %dec107, ptr %have, align 4
  %83 = load ptr, ptr %next, align 8
  %incdec.ptr108 = getelementptr inbounds i8, ptr %83, i32 1
  store ptr %incdec.ptr108, ptr %next, align 8
  %84 = load i8, ptr %83, align 1
  %conv109 = zext i8 %84 to i64
  %85 = load i32, ptr %bits, align 4
  %sh_prom110 = zext i32 %85 to i64
  %shl111 = shl i64 %conv109, %sh_prom110
  %86 = load i64, ptr %hold, align 8
  %add112 = add i64 %86, %shl111
  store i64 %add112, ptr %hold, align 8
  %87 = load i32, ptr %bits, align 4
  %add113 = add i32 %87, 8
  store i32 %add113, ptr %bits, align 4
  br label %do.end114

do.end114:                                        ; preds = %if.end106
  br label %while.cond98, !llvm.loop !8

while.end115:                                     ; preds = %while.cond98
  br label %do.end116

do.end116:                                        ; preds = %while.end115
  %88 = load i64, ptr %hold, align 8
  %conv117 = trunc i64 %88 to i32
  %89 = load ptr, ptr %state, align 8
  %flags118 = getelementptr inbounds %struct.inflate_state, ptr %89, i32 0, i32 4
  store i32 %conv117, ptr %flags118, align 8
  %90 = load ptr, ptr %state, align 8
  %flags119 = getelementptr inbounds %struct.inflate_state, ptr %90, i32 0, i32 4
  %91 = load i32, ptr %flags119, align 8
  %and120 = and i32 %91, 255
  %cmp121 = icmp ne i32 %and120, 8
  br i1 %cmp121, label %if.then123, label %if.end126

if.then123:                                       ; preds = %do.end116
  %92 = load ptr, ptr %strm.addr, align 8
  %msg124 = getelementptr inbounds %struct.z_stream_s, ptr %92, i32 0, i32 6
  store ptr @.str.2, ptr %msg124, align 8
  %93 = load ptr, ptr %state, align 8
  %mode125 = getelementptr inbounds %struct.inflate_state, ptr %93, i32 0, i32 0
  store i32 27, ptr %mode125, align 8
  br label %sw.epilog1772

if.end126:                                        ; preds = %do.end116
  %94 = load ptr, ptr %state, align 8
  %flags127 = getelementptr inbounds %struct.inflate_state, ptr %94, i32 0, i32 4
  %95 = load i32, ptr %flags127, align 8
  %and128 = and i32 %95, 57344
  %tobool129 = icmp ne i32 %and128, 0
  br i1 %tobool129, label %if.then130, label %if.end133

if.then130:                                       ; preds = %if.end126
  %96 = load ptr, ptr %strm.addr, align 8
  %msg131 = getelementptr inbounds %struct.z_stream_s, ptr %96, i32 0, i32 6
  store ptr @.str.4, ptr %msg131, align 8
  %97 = load ptr, ptr %state, align 8
  %mode132 = getelementptr inbounds %struct.inflate_state, ptr %97, i32 0, i32 0
  store i32 27, ptr %mode132, align 8
  br label %sw.epilog1772

if.end133:                                        ; preds = %if.end126
  %98 = load ptr, ptr %state, align 8
  %head134 = getelementptr inbounds %struct.inflate_state, ptr %98, i32 0, i32 8
  %99 = load ptr, ptr %head134, align 8
  %cmp135 = icmp ne ptr %99, null
  br i1 %cmp135, label %if.then137, label %if.end142

if.then137:                                       ; preds = %if.end133
  %100 = load i64, ptr %hold, align 8
  %shr138 = lshr i64 %100, 8
  %and139 = and i64 %shr138, 1
  %conv140 = trunc i64 %and139 to i32
  %101 = load ptr, ptr %state, align 8
  %head141 = getelementptr inbounds %struct.inflate_state, ptr %101, i32 0, i32 8
  %102 = load ptr, ptr %head141, align 8
  %text = getelementptr inbounds %struct.gz_header_s, ptr %102, i32 0, i32 0
  store i32 %conv140, ptr %text, align 8
  br label %if.end142

if.end142:                                        ; preds = %if.then137, %if.end133
  %103 = load ptr, ptr %state, align 8
  %flags143 = getelementptr inbounds %struct.inflate_state, ptr %103, i32 0, i32 4
  %104 = load i32, ptr %flags143, align 8
  %and144 = and i32 %104, 512
  %tobool145 = icmp ne i32 %and144, 0
  br i1 %tobool145, label %if.then146, label %if.end158

if.then146:                                       ; preds = %if.end142
  br label %do.body147

do.body147:                                       ; preds = %if.then146
  %105 = load i64, ptr %hold, align 8
  %conv148 = trunc i64 %105 to i8
  %arrayidx149 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 0
  store i8 %conv148, ptr %arrayidx149, align 1
  %106 = load i64, ptr %hold, align 8
  %shr150 = lshr i64 %106, 8
  %conv151 = trunc i64 %shr150 to i8
  %arrayidx152 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 1
  store i8 %conv151, ptr %arrayidx152, align 1
  %107 = load ptr, ptr %state, align 8
  %check153 = getelementptr inbounds %struct.inflate_state, ptr %107, i32 0, i32 6
  %108 = load i64, ptr %check153, align 8
  %arraydecay154 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 0
  %call155 = call i64 @crc32(i64 noundef %108, ptr noundef %arraydecay154, i32 noundef 2)
  %109 = load ptr, ptr %state, align 8
  %check156 = getelementptr inbounds %struct.inflate_state, ptr %109, i32 0, i32 6
  store i64 %call155, ptr %check156, align 8
  br label %do.end157

do.end157:                                        ; preds = %do.body147
  br label %if.end158

if.end158:                                        ; preds = %do.end157, %if.end142
  br label %do.body159

do.body159:                                       ; preds = %if.end158
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %do.end160

do.end160:                                        ; preds = %do.body159
  %110 = load ptr, ptr %state, align 8
  %mode161 = getelementptr inbounds %struct.inflate_state, ptr %110, i32 0, i32 0
  store i32 2, ptr %mode161, align 8
  br label %sw.bb162

sw.bb162:                                         ; preds = %for.cond, %do.end160
  br label %do.body163

do.body163:                                       ; preds = %sw.bb162
  br label %while.cond164

while.cond164:                                    ; preds = %do.end180, %do.body163
  %111 = load i32, ptr %bits, align 4
  %cmp165 = icmp ult i32 %111, 32
  br i1 %cmp165, label %while.body167, label %while.end181

while.body167:                                    ; preds = %while.cond164
  br label %do.body168

do.body168:                                       ; preds = %while.body167
  %112 = load i32, ptr %have, align 4
  %cmp169 = icmp eq i32 %112, 0
  br i1 %cmp169, label %if.then171, label %if.end172

if.then171:                                       ; preds = %do.body168
  br label %inf_leave

if.end172:                                        ; preds = %do.body168
  %113 = load i32, ptr %have, align 4
  %dec173 = add i32 %113, -1
  store i32 %dec173, ptr %have, align 4
  %114 = load ptr, ptr %next, align 8
  %incdec.ptr174 = getelementptr inbounds i8, ptr %114, i32 1
  store ptr %incdec.ptr174, ptr %next, align 8
  %115 = load i8, ptr %114, align 1
  %conv175 = zext i8 %115 to i64
  %116 = load i32, ptr %bits, align 4
  %sh_prom176 = zext i32 %116 to i64
  %shl177 = shl i64 %conv175, %sh_prom176
  %117 = load i64, ptr %hold, align 8
  %add178 = add i64 %117, %shl177
  store i64 %add178, ptr %hold, align 8
  %118 = load i32, ptr %bits, align 4
  %add179 = add i32 %118, 8
  store i32 %add179, ptr %bits, align 4
  br label %do.end180

do.end180:                                        ; preds = %if.end172
  br label %while.cond164, !llvm.loop !9

while.end181:                                     ; preds = %while.cond164
  br label %do.end182

do.end182:                                        ; preds = %while.end181
  %119 = load ptr, ptr %state, align 8
  %head183 = getelementptr inbounds %struct.inflate_state, ptr %119, i32 0, i32 8
  %120 = load ptr, ptr %head183, align 8
  %cmp184 = icmp ne ptr %120, null
  br i1 %cmp184, label %if.then186, label %if.end188

if.then186:                                       ; preds = %do.end182
  %121 = load i64, ptr %hold, align 8
  %122 = load ptr, ptr %state, align 8
  %head187 = getelementptr inbounds %struct.inflate_state, ptr %122, i32 0, i32 8
  %123 = load ptr, ptr %head187, align 8
  %time = getelementptr inbounds %struct.gz_header_s, ptr %123, i32 0, i32 1
  store i64 %121, ptr %time, align 8
  br label %if.end188

if.end188:                                        ; preds = %if.then186, %do.end182
  %124 = load ptr, ptr %state, align 8
  %flags189 = getelementptr inbounds %struct.inflate_state, ptr %124, i32 0, i32 4
  %125 = load i32, ptr %flags189, align 8
  %and190 = and i32 %125, 512
  %tobool191 = icmp ne i32 %and190, 0
  br i1 %tobool191, label %if.then192, label %if.end210

if.then192:                                       ; preds = %if.end188
  br label %do.body193

do.body193:                                       ; preds = %if.then192
  %126 = load i64, ptr %hold, align 8
  %conv194 = trunc i64 %126 to i8
  %arrayidx195 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 0
  store i8 %conv194, ptr %arrayidx195, align 1
  %127 = load i64, ptr %hold, align 8
  %shr196 = lshr i64 %127, 8
  %conv197 = trunc i64 %shr196 to i8
  %arrayidx198 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 1
  store i8 %conv197, ptr %arrayidx198, align 1
  %128 = load i64, ptr %hold, align 8
  %shr199 = lshr i64 %128, 16
  %conv200 = trunc i64 %shr199 to i8
  %arrayidx201 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 2
  store i8 %conv200, ptr %arrayidx201, align 1
  %129 = load i64, ptr %hold, align 8
  %shr202 = lshr i64 %129, 24
  %conv203 = trunc i64 %shr202 to i8
  %arrayidx204 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 3
  store i8 %conv203, ptr %arrayidx204, align 1
  %130 = load ptr, ptr %state, align 8
  %check205 = getelementptr inbounds %struct.inflate_state, ptr %130, i32 0, i32 6
  %131 = load i64, ptr %check205, align 8
  %arraydecay206 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 0
  %call207 = call i64 @crc32(i64 noundef %131, ptr noundef %arraydecay206, i32 noundef 4)
  %132 = load ptr, ptr %state, align 8
  %check208 = getelementptr inbounds %struct.inflate_state, ptr %132, i32 0, i32 6
  store i64 %call207, ptr %check208, align 8
  br label %do.end209

do.end209:                                        ; preds = %do.body193
  br label %if.end210

if.end210:                                        ; preds = %do.end209, %if.end188
  br label %do.body211

do.body211:                                       ; preds = %if.end210
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %do.end212

do.end212:                                        ; preds = %do.body211
  %133 = load ptr, ptr %state, align 8
  %mode213 = getelementptr inbounds %struct.inflate_state, ptr %133, i32 0, i32 0
  store i32 3, ptr %mode213, align 8
  br label %sw.bb214

sw.bb214:                                         ; preds = %for.cond, %do.end212
  br label %do.body215

do.body215:                                       ; preds = %sw.bb214
  br label %while.cond216

while.cond216:                                    ; preds = %do.end232, %do.body215
  %134 = load i32, ptr %bits, align 4
  %cmp217 = icmp ult i32 %134, 16
  br i1 %cmp217, label %while.body219, label %while.end233

while.body219:                                    ; preds = %while.cond216
  br label %do.body220

do.body220:                                       ; preds = %while.body219
  %135 = load i32, ptr %have, align 4
  %cmp221 = icmp eq i32 %135, 0
  br i1 %cmp221, label %if.then223, label %if.end224

if.then223:                                       ; preds = %do.body220
  br label %inf_leave

if.end224:                                        ; preds = %do.body220
  %136 = load i32, ptr %have, align 4
  %dec225 = add i32 %136, -1
  store i32 %dec225, ptr %have, align 4
  %137 = load ptr, ptr %next, align 8
  %incdec.ptr226 = getelementptr inbounds i8, ptr %137, i32 1
  store ptr %incdec.ptr226, ptr %next, align 8
  %138 = load i8, ptr %137, align 1
  %conv227 = zext i8 %138 to i64
  %139 = load i32, ptr %bits, align 4
  %sh_prom228 = zext i32 %139 to i64
  %shl229 = shl i64 %conv227, %sh_prom228
  %140 = load i64, ptr %hold, align 8
  %add230 = add i64 %140, %shl229
  store i64 %add230, ptr %hold, align 8
  %141 = load i32, ptr %bits, align 4
  %add231 = add i32 %141, 8
  store i32 %add231, ptr %bits, align 4
  br label %do.end232

do.end232:                                        ; preds = %if.end224
  br label %while.cond216, !llvm.loop !10

while.end233:                                     ; preds = %while.cond216
  br label %do.end234

do.end234:                                        ; preds = %while.end233
  %142 = load ptr, ptr %state, align 8
  %head235 = getelementptr inbounds %struct.inflate_state, ptr %142, i32 0, i32 8
  %143 = load ptr, ptr %head235, align 8
  %cmp236 = icmp ne ptr %143, null
  br i1 %cmp236, label %if.then238, label %if.end245

if.then238:                                       ; preds = %do.end234
  %144 = load i64, ptr %hold, align 8
  %and239 = and i64 %144, 255
  %conv240 = trunc i64 %and239 to i32
  %145 = load ptr, ptr %state, align 8
  %head241 = getelementptr inbounds %struct.inflate_state, ptr %145, i32 0, i32 8
  %146 = load ptr, ptr %head241, align 8
  %xflags = getelementptr inbounds %struct.gz_header_s, ptr %146, i32 0, i32 2
  store i32 %conv240, ptr %xflags, align 8
  %147 = load i64, ptr %hold, align 8
  %shr242 = lshr i64 %147, 8
  %conv243 = trunc i64 %shr242 to i32
  %148 = load ptr, ptr %state, align 8
  %head244 = getelementptr inbounds %struct.inflate_state, ptr %148, i32 0, i32 8
  %149 = load ptr, ptr %head244, align 8
  %os = getelementptr inbounds %struct.gz_header_s, ptr %149, i32 0, i32 3
  store i32 %conv243, ptr %os, align 4
  br label %if.end245

if.end245:                                        ; preds = %if.then238, %do.end234
  %150 = load ptr, ptr %state, align 8
  %flags246 = getelementptr inbounds %struct.inflate_state, ptr %150, i32 0, i32 4
  %151 = load i32, ptr %flags246, align 8
  %and247 = and i32 %151, 512
  %tobool248 = icmp ne i32 %and247, 0
  br i1 %tobool248, label %if.then249, label %if.end261

if.then249:                                       ; preds = %if.end245
  br label %do.body250

do.body250:                                       ; preds = %if.then249
  %152 = load i64, ptr %hold, align 8
  %conv251 = trunc i64 %152 to i8
  %arrayidx252 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 0
  store i8 %conv251, ptr %arrayidx252, align 1
  %153 = load i64, ptr %hold, align 8
  %shr253 = lshr i64 %153, 8
  %conv254 = trunc i64 %shr253 to i8
  %arrayidx255 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 1
  store i8 %conv254, ptr %arrayidx255, align 1
  %154 = load ptr, ptr %state, align 8
  %check256 = getelementptr inbounds %struct.inflate_state, ptr %154, i32 0, i32 6
  %155 = load i64, ptr %check256, align 8
  %arraydecay257 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 0
  %call258 = call i64 @crc32(i64 noundef %155, ptr noundef %arraydecay257, i32 noundef 2)
  %156 = load ptr, ptr %state, align 8
  %check259 = getelementptr inbounds %struct.inflate_state, ptr %156, i32 0, i32 6
  store i64 %call258, ptr %check259, align 8
  br label %do.end260

do.end260:                                        ; preds = %do.body250
  br label %if.end261

if.end261:                                        ; preds = %do.end260, %if.end245
  br label %do.body262

do.body262:                                       ; preds = %if.end261
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %do.end263

do.end263:                                        ; preds = %do.body262
  %157 = load ptr, ptr %state, align 8
  %mode264 = getelementptr inbounds %struct.inflate_state, ptr %157, i32 0, i32 0
  store i32 4, ptr %mode264, align 8
  br label %sw.bb265

sw.bb265:                                         ; preds = %for.cond, %do.end263
  %158 = load ptr, ptr %state, align 8
  %flags266 = getelementptr inbounds %struct.inflate_state, ptr %158, i32 0, i32 4
  %159 = load i32, ptr %flags266, align 8
  %and267 = and i32 %159, 1024
  %tobool268 = icmp ne i32 %and267, 0
  br i1 %tobool268, label %if.then269, label %if.else

if.then269:                                       ; preds = %sw.bb265
  br label %do.body270

do.body270:                                       ; preds = %if.then269
  br label %while.cond271

while.cond271:                                    ; preds = %do.end287, %do.body270
  %160 = load i32, ptr %bits, align 4
  %cmp272 = icmp ult i32 %160, 16
  br i1 %cmp272, label %while.body274, label %while.end288

while.body274:                                    ; preds = %while.cond271
  br label %do.body275

do.body275:                                       ; preds = %while.body274
  %161 = load i32, ptr %have, align 4
  %cmp276 = icmp eq i32 %161, 0
  br i1 %cmp276, label %if.then278, label %if.end279

if.then278:                                       ; preds = %do.body275
  br label %inf_leave

if.end279:                                        ; preds = %do.body275
  %162 = load i32, ptr %have, align 4
  %dec280 = add i32 %162, -1
  store i32 %dec280, ptr %have, align 4
  %163 = load ptr, ptr %next, align 8
  %incdec.ptr281 = getelementptr inbounds i8, ptr %163, i32 1
  store ptr %incdec.ptr281, ptr %next, align 8
  %164 = load i8, ptr %163, align 1
  %conv282 = zext i8 %164 to i64
  %165 = load i32, ptr %bits, align 4
  %sh_prom283 = zext i32 %165 to i64
  %shl284 = shl i64 %conv282, %sh_prom283
  %166 = load i64, ptr %hold, align 8
  %add285 = add i64 %166, %shl284
  store i64 %add285, ptr %hold, align 8
  %167 = load i32, ptr %bits, align 4
  %add286 = add i32 %167, 8
  store i32 %add286, ptr %bits, align 4
  br label %do.end287

do.end287:                                        ; preds = %if.end279
  br label %while.cond271, !llvm.loop !11

while.end288:                                     ; preds = %while.cond271
  br label %do.end289

do.end289:                                        ; preds = %while.end288
  %168 = load i64, ptr %hold, align 8
  %conv290 = trunc i64 %168 to i32
  %169 = load ptr, ptr %state, align 8
  %length = getelementptr inbounds %struct.inflate_state, ptr %169, i32 0, i32 16
  store i32 %conv290, ptr %length, align 4
  %170 = load ptr, ptr %state, align 8
  %head291 = getelementptr inbounds %struct.inflate_state, ptr %170, i32 0, i32 8
  %171 = load ptr, ptr %head291, align 8
  %cmp292 = icmp ne ptr %171, null
  br i1 %cmp292, label %if.then294, label %if.end297

if.then294:                                       ; preds = %do.end289
  %172 = load i64, ptr %hold, align 8
  %conv295 = trunc i64 %172 to i32
  %173 = load ptr, ptr %state, align 8
  %head296 = getelementptr inbounds %struct.inflate_state, ptr %173, i32 0, i32 8
  %174 = load ptr, ptr %head296, align 8
  %extra_len = getelementptr inbounds %struct.gz_header_s, ptr %174, i32 0, i32 5
  store i32 %conv295, ptr %extra_len, align 8
  br label %if.end297

if.end297:                                        ; preds = %if.then294, %do.end289
  %175 = load ptr, ptr %state, align 8
  %flags298 = getelementptr inbounds %struct.inflate_state, ptr %175, i32 0, i32 4
  %176 = load i32, ptr %flags298, align 8
  %and299 = and i32 %176, 512
  %tobool300 = icmp ne i32 %and299, 0
  br i1 %tobool300, label %if.then301, label %if.end313

if.then301:                                       ; preds = %if.end297
  br label %do.body302

do.body302:                                       ; preds = %if.then301
  %177 = load i64, ptr %hold, align 8
  %conv303 = trunc i64 %177 to i8
  %arrayidx304 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 0
  store i8 %conv303, ptr %arrayidx304, align 1
  %178 = load i64, ptr %hold, align 8
  %shr305 = lshr i64 %178, 8
  %conv306 = trunc i64 %shr305 to i8
  %arrayidx307 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 1
  store i8 %conv306, ptr %arrayidx307, align 1
  %179 = load ptr, ptr %state, align 8
  %check308 = getelementptr inbounds %struct.inflate_state, ptr %179, i32 0, i32 6
  %180 = load i64, ptr %check308, align 8
  %arraydecay309 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 0
  %call310 = call i64 @crc32(i64 noundef %180, ptr noundef %arraydecay309, i32 noundef 2)
  %181 = load ptr, ptr %state, align 8
  %check311 = getelementptr inbounds %struct.inflate_state, ptr %181, i32 0, i32 6
  store i64 %call310, ptr %check311, align 8
  br label %do.end312

do.end312:                                        ; preds = %do.body302
  br label %if.end313

if.end313:                                        ; preds = %do.end312, %if.end297
  br label %do.body314

do.body314:                                       ; preds = %if.end313
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %do.end315

do.end315:                                        ; preds = %do.body314
  br label %if.end322

if.else:                                          ; preds = %sw.bb265
  %182 = load ptr, ptr %state, align 8
  %head316 = getelementptr inbounds %struct.inflate_state, ptr %182, i32 0, i32 8
  %183 = load ptr, ptr %head316, align 8
  %cmp317 = icmp ne ptr %183, null
  br i1 %cmp317, label %if.then319, label %if.end321

if.then319:                                       ; preds = %if.else
  %184 = load ptr, ptr %state, align 8
  %head320 = getelementptr inbounds %struct.inflate_state, ptr %184, i32 0, i32 8
  %185 = load ptr, ptr %head320, align 8
  %extra = getelementptr inbounds %struct.gz_header_s, ptr %185, i32 0, i32 4
  store ptr null, ptr %extra, align 8
  br label %if.end321

if.end321:                                        ; preds = %if.then319, %if.else
  br label %if.end322

if.end322:                                        ; preds = %if.end321, %do.end315
  %186 = load ptr, ptr %state, align 8
  %mode323 = getelementptr inbounds %struct.inflate_state, ptr %186, i32 0, i32 0
  store i32 5, ptr %mode323, align 8
  br label %sw.bb324

sw.bb324:                                         ; preds = %for.cond, %if.end322
  %187 = load ptr, ptr %state, align 8
  %flags325 = getelementptr inbounds %struct.inflate_state, ptr %187, i32 0, i32 4
  %188 = load i32, ptr %flags325, align 8
  %and326 = and i32 %188, 1024
  %tobool327 = icmp ne i32 %and326, 0
  br i1 %tobool327, label %if.then328, label %if.end384

if.then328:                                       ; preds = %sw.bb324
  %189 = load ptr, ptr %state, align 8
  %length329 = getelementptr inbounds %struct.inflate_state, ptr %189, i32 0, i32 16
  %190 = load i32, ptr %length329, align 4
  store i32 %190, ptr %copy, align 4
  %191 = load i32, ptr %copy, align 4
  %192 = load i32, ptr %have, align 4
  %cmp330 = icmp ugt i32 %191, %192
  br i1 %cmp330, label %if.then332, label %if.end333

if.then332:                                       ; preds = %if.then328
  %193 = load i32, ptr %have, align 4
  store i32 %193, ptr %copy, align 4
  br label %if.end333

if.end333:                                        ; preds = %if.then332, %if.then328
  %194 = load i32, ptr %copy, align 4
  %tobool334 = icmp ne i32 %194, 0
  br i1 %tobool334, label %if.then335, label %if.end379

if.then335:                                       ; preds = %if.end333
  %195 = load ptr, ptr %state, align 8
  %head336 = getelementptr inbounds %struct.inflate_state, ptr %195, i32 0, i32 8
  %196 = load ptr, ptr %head336, align 8
  %cmp337 = icmp ne ptr %196, null
  br i1 %cmp337, label %land.lhs.true339, label %if.end365

land.lhs.true339:                                 ; preds = %if.then335
  %197 = load ptr, ptr %state, align 8
  %head340 = getelementptr inbounds %struct.inflate_state, ptr %197, i32 0, i32 8
  %198 = load ptr, ptr %head340, align 8
  %extra341 = getelementptr inbounds %struct.gz_header_s, ptr %198, i32 0, i32 4
  %199 = load ptr, ptr %extra341, align 8
  %cmp342 = icmp ne ptr %199, null
  br i1 %cmp342, label %if.then344, label %if.end365

if.then344:                                       ; preds = %land.lhs.true339
  %200 = load ptr, ptr %state, align 8
  %head345 = getelementptr inbounds %struct.inflate_state, ptr %200, i32 0, i32 8
  %201 = load ptr, ptr %head345, align 8
  %extra_len346 = getelementptr inbounds %struct.gz_header_s, ptr %201, i32 0, i32 5
  %202 = load i32, ptr %extra_len346, align 8
  %203 = load ptr, ptr %state, align 8
  %length347 = getelementptr inbounds %struct.inflate_state, ptr %203, i32 0, i32 16
  %204 = load i32, ptr %length347, align 4
  %sub348 = sub i32 %202, %204
  store i32 %sub348, ptr %len, align 4
  %205 = load ptr, ptr %state, align 8
  %head349 = getelementptr inbounds %struct.inflate_state, ptr %205, i32 0, i32 8
  %206 = load ptr, ptr %head349, align 8
  %extra350 = getelementptr inbounds %struct.gz_header_s, ptr %206, i32 0, i32 4
  %207 = load ptr, ptr %extra350, align 8
  %208 = load i32, ptr %len, align 4
  %idx.ext = zext i32 %208 to i64
  %add.ptr = getelementptr inbounds i8, ptr %207, i64 %idx.ext
  %209 = load ptr, ptr %next, align 8
  %210 = load i32, ptr %len, align 4
  %211 = load i32, ptr %copy, align 4
  %add351 = add i32 %210, %211
  %212 = load ptr, ptr %state, align 8
  %head352 = getelementptr inbounds %struct.inflate_state, ptr %212, i32 0, i32 8
  %213 = load ptr, ptr %head352, align 8
  %extra_max = getelementptr inbounds %struct.gz_header_s, ptr %213, i32 0, i32 6
  %214 = load i32, ptr %extra_max, align 4
  %cmp353 = icmp ugt i32 %add351, %214
  br i1 %cmp353, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then344
  %215 = load ptr, ptr %state, align 8
  %head355 = getelementptr inbounds %struct.inflate_state, ptr %215, i32 0, i32 8
  %216 = load ptr, ptr %head355, align 8
  %extra_max356 = getelementptr inbounds %struct.gz_header_s, ptr %216, i32 0, i32 6
  %217 = load i32, ptr %extra_max356, align 4
  %218 = load i32, ptr %len, align 4
  %sub357 = sub i32 %217, %218
  br label %cond.end

cond.false:                                       ; preds = %if.then344
  %219 = load i32, ptr %copy, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond358 = phi i32 [ %sub357, %cond.true ], [ %219, %cond.false ]
  %conv359 = zext i32 %cond358 to i64
  %220 = load ptr, ptr %state, align 8
  %head360 = getelementptr inbounds %struct.inflate_state, ptr %220, i32 0, i32 8
  %221 = load ptr, ptr %head360, align 8
  %extra361 = getelementptr inbounds %struct.gz_header_s, ptr %221, i32 0, i32 4
  %222 = load ptr, ptr %extra361, align 8
  %223 = load i32, ptr %len, align 4
  %idx.ext362 = zext i32 %223 to i64
  %add.ptr363 = getelementptr inbounds i8, ptr %222, i64 %idx.ext362
  %224 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr363, i1 false, i1 true, i1 false)
  %call364 = call ptr @__memcpy_chk(ptr noundef %add.ptr, ptr noundef %209, i64 noundef %conv359, i64 noundef %224) #5
  br label %if.end365

if.end365:                                        ; preds = %cond.end, %land.lhs.true339, %if.then335
  %225 = load ptr, ptr %state, align 8
  %flags366 = getelementptr inbounds %struct.inflate_state, ptr %225, i32 0, i32 4
  %226 = load i32, ptr %flags366, align 8
  %and367 = and i32 %226, 512
  %tobool368 = icmp ne i32 %and367, 0
  br i1 %tobool368, label %if.then369, label %if.end373

if.then369:                                       ; preds = %if.end365
  %227 = load ptr, ptr %state, align 8
  %check370 = getelementptr inbounds %struct.inflate_state, ptr %227, i32 0, i32 6
  %228 = load i64, ptr %check370, align 8
  %229 = load ptr, ptr %next, align 8
  %230 = load i32, ptr %copy, align 4
  %call371 = call i64 @crc32(i64 noundef %228, ptr noundef %229, i32 noundef %230)
  %231 = load ptr, ptr %state, align 8
  %check372 = getelementptr inbounds %struct.inflate_state, ptr %231, i32 0, i32 6
  store i64 %call371, ptr %check372, align 8
  br label %if.end373

if.end373:                                        ; preds = %if.then369, %if.end365
  %232 = load i32, ptr %copy, align 4
  %233 = load i32, ptr %have, align 4
  %sub374 = sub i32 %233, %232
  store i32 %sub374, ptr %have, align 4
  %234 = load i32, ptr %copy, align 4
  %235 = load ptr, ptr %next, align 8
  %idx.ext375 = zext i32 %234 to i64
  %add.ptr376 = getelementptr inbounds i8, ptr %235, i64 %idx.ext375
  store ptr %add.ptr376, ptr %next, align 8
  %236 = load i32, ptr %copy, align 4
  %237 = load ptr, ptr %state, align 8
  %length377 = getelementptr inbounds %struct.inflate_state, ptr %237, i32 0, i32 16
  %238 = load i32, ptr %length377, align 4
  %sub378 = sub i32 %238, %236
  store i32 %sub378, ptr %length377, align 4
  br label %if.end379

if.end379:                                        ; preds = %if.end373, %if.end333
  %239 = load ptr, ptr %state, align 8
  %length380 = getelementptr inbounds %struct.inflate_state, ptr %239, i32 0, i32 16
  %240 = load i32, ptr %length380, align 4
  %tobool381 = icmp ne i32 %240, 0
  br i1 %tobool381, label %if.then382, label %if.end383

if.then382:                                       ; preds = %if.end379
  br label %inf_leave

if.end383:                                        ; preds = %if.end379
  br label %if.end384

if.end384:                                        ; preds = %if.end383, %sw.bb324
  %241 = load ptr, ptr %state, align 8
  %length385 = getelementptr inbounds %struct.inflate_state, ptr %241, i32 0, i32 16
  store i32 0, ptr %length385, align 4
  %242 = load ptr, ptr %state, align 8
  %mode386 = getelementptr inbounds %struct.inflate_state, ptr %242, i32 0, i32 0
  store i32 6, ptr %mode386, align 8
  br label %sw.bb387

sw.bb387:                                         ; preds = %for.cond, %if.end384
  %243 = load ptr, ptr %state, align 8
  %flags388 = getelementptr inbounds %struct.inflate_state, ptr %243, i32 0, i32 4
  %244 = load i32, ptr %flags388, align 8
  %and389 = and i32 %244, 2048
  %tobool390 = icmp ne i32 %and389, 0
  br i1 %tobool390, label %if.then391, label %if.else438

if.then391:                                       ; preds = %sw.bb387
  %245 = load i32, ptr %have, align 4
  %cmp392 = icmp eq i32 %245, 0
  br i1 %cmp392, label %if.then394, label %if.end395

if.then394:                                       ; preds = %if.then391
  br label %inf_leave

if.end395:                                        ; preds = %if.then391
  store i32 0, ptr %copy, align 4
  br label %do.body396

do.body396:                                       ; preds = %land.end, %if.end395
  %246 = load ptr, ptr %next, align 8
  %247 = load i32, ptr %copy, align 4
  %inc = add i32 %247, 1
  store i32 %inc, ptr %copy, align 4
  %idxprom = zext i32 %247 to i64
  %arrayidx397 = getelementptr inbounds i8, ptr %246, i64 %idxprom
  %248 = load i8, ptr %arrayidx397, align 1
  %conv398 = zext i8 %248 to i32
  store i32 %conv398, ptr %len, align 4
  %249 = load ptr, ptr %state, align 8
  %head399 = getelementptr inbounds %struct.inflate_state, ptr %249, i32 0, i32 8
  %250 = load ptr, ptr %head399, align 8
  %cmp400 = icmp ne ptr %250, null
  br i1 %cmp400, label %land.lhs.true402, label %if.end419

land.lhs.true402:                                 ; preds = %do.body396
  %251 = load ptr, ptr %state, align 8
  %head403 = getelementptr inbounds %struct.inflate_state, ptr %251, i32 0, i32 8
  %252 = load ptr, ptr %head403, align 8
  %name = getelementptr inbounds %struct.gz_header_s, ptr %252, i32 0, i32 7
  %253 = load ptr, ptr %name, align 8
  %cmp404 = icmp ne ptr %253, null
  br i1 %cmp404, label %land.lhs.true406, label %if.end419

land.lhs.true406:                                 ; preds = %land.lhs.true402
  %254 = load ptr, ptr %state, align 8
  %length407 = getelementptr inbounds %struct.inflate_state, ptr %254, i32 0, i32 16
  %255 = load i32, ptr %length407, align 4
  %256 = load ptr, ptr %state, align 8
  %head408 = getelementptr inbounds %struct.inflate_state, ptr %256, i32 0, i32 8
  %257 = load ptr, ptr %head408, align 8
  %name_max = getelementptr inbounds %struct.gz_header_s, ptr %257, i32 0, i32 8
  %258 = load i32, ptr %name_max, align 8
  %cmp409 = icmp ult i32 %255, %258
  br i1 %cmp409, label %if.then411, label %if.end419

if.then411:                                       ; preds = %land.lhs.true406
  %259 = load i32, ptr %len, align 4
  %conv412 = trunc i32 %259 to i8
  %260 = load ptr, ptr %state, align 8
  %head413 = getelementptr inbounds %struct.inflate_state, ptr %260, i32 0, i32 8
  %261 = load ptr, ptr %head413, align 8
  %name414 = getelementptr inbounds %struct.gz_header_s, ptr %261, i32 0, i32 7
  %262 = load ptr, ptr %name414, align 8
  %263 = load ptr, ptr %state, align 8
  %length415 = getelementptr inbounds %struct.inflate_state, ptr %263, i32 0, i32 16
  %264 = load i32, ptr %length415, align 4
  %inc416 = add i32 %264, 1
  store i32 %inc416, ptr %length415, align 4
  %idxprom417 = zext i32 %264 to i64
  %arrayidx418 = getelementptr inbounds i8, ptr %262, i64 %idxprom417
  store i8 %conv412, ptr %arrayidx418, align 1
  br label %if.end419

if.end419:                                        ; preds = %if.then411, %land.lhs.true406, %land.lhs.true402, %do.body396
  br label %do.cond

do.cond:                                          ; preds = %if.end419
  %265 = load i32, ptr %len, align 4
  %tobool420 = icmp ne i32 %265, 0
  br i1 %tobool420, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %266 = load i32, ptr %copy, align 4
  %267 = load i32, ptr %have, align 4
  %cmp421 = icmp ult i32 %266, %267
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %268 = phi i1 [ false, %do.cond ], [ %cmp421, %land.rhs ]
  br i1 %268, label %do.body396, label %do.end423, !llvm.loop !12

do.end423:                                        ; preds = %land.end
  %269 = load ptr, ptr %state, align 8
  %flags424 = getelementptr inbounds %struct.inflate_state, ptr %269, i32 0, i32 4
  %270 = load i32, ptr %flags424, align 8
  %and425 = and i32 %270, 512
  %tobool426 = icmp ne i32 %and425, 0
  br i1 %tobool426, label %if.then427, label %if.end431

if.then427:                                       ; preds = %do.end423
  %271 = load ptr, ptr %state, align 8
  %check428 = getelementptr inbounds %struct.inflate_state, ptr %271, i32 0, i32 6
  %272 = load i64, ptr %check428, align 8
  %273 = load ptr, ptr %next, align 8
  %274 = load i32, ptr %copy, align 4
  %call429 = call i64 @crc32(i64 noundef %272, ptr noundef %273, i32 noundef %274)
  %275 = load ptr, ptr %state, align 8
  %check430 = getelementptr inbounds %struct.inflate_state, ptr %275, i32 0, i32 6
  store i64 %call429, ptr %check430, align 8
  br label %if.end431

if.end431:                                        ; preds = %if.then427, %do.end423
  %276 = load i32, ptr %copy, align 4
  %277 = load i32, ptr %have, align 4
  %sub432 = sub i32 %277, %276
  store i32 %sub432, ptr %have, align 4
  %278 = load i32, ptr %copy, align 4
  %279 = load ptr, ptr %next, align 8
  %idx.ext433 = zext i32 %278 to i64
  %add.ptr434 = getelementptr inbounds i8, ptr %279, i64 %idx.ext433
  store ptr %add.ptr434, ptr %next, align 8
  %280 = load i32, ptr %len, align 4
  %tobool435 = icmp ne i32 %280, 0
  br i1 %tobool435, label %if.then436, label %if.end437

if.then436:                                       ; preds = %if.end431
  br label %inf_leave

if.end437:                                        ; preds = %if.end431
  br label %if.end446

if.else438:                                       ; preds = %sw.bb387
  %281 = load ptr, ptr %state, align 8
  %head439 = getelementptr inbounds %struct.inflate_state, ptr %281, i32 0, i32 8
  %282 = load ptr, ptr %head439, align 8
  %cmp440 = icmp ne ptr %282, null
  br i1 %cmp440, label %if.then442, label %if.end445

if.then442:                                       ; preds = %if.else438
  %283 = load ptr, ptr %state, align 8
  %head443 = getelementptr inbounds %struct.inflate_state, ptr %283, i32 0, i32 8
  %284 = load ptr, ptr %head443, align 8
  %name444 = getelementptr inbounds %struct.gz_header_s, ptr %284, i32 0, i32 7
  store ptr null, ptr %name444, align 8
  br label %if.end445

if.end445:                                        ; preds = %if.then442, %if.else438
  br label %if.end446

if.end446:                                        ; preds = %if.end445, %if.end437
  %285 = load ptr, ptr %state, align 8
  %length447 = getelementptr inbounds %struct.inflate_state, ptr %285, i32 0, i32 16
  store i32 0, ptr %length447, align 4
  %286 = load ptr, ptr %state, align 8
  %mode448 = getelementptr inbounds %struct.inflate_state, ptr %286, i32 0, i32 0
  store i32 7, ptr %mode448, align 8
  br label %sw.bb449

sw.bb449:                                         ; preds = %for.cond, %if.end446
  %287 = load ptr, ptr %state, align 8
  %flags450 = getelementptr inbounds %struct.inflate_state, ptr %287, i32 0, i32 4
  %288 = load i32, ptr %flags450, align 8
  %and451 = and i32 %288, 4096
  %tobool452 = icmp ne i32 %and451, 0
  br i1 %tobool452, label %if.then453, label %if.else505

if.then453:                                       ; preds = %sw.bb449
  %289 = load i32, ptr %have, align 4
  %cmp454 = icmp eq i32 %289, 0
  br i1 %cmp454, label %if.then456, label %if.end457

if.then456:                                       ; preds = %if.then453
  br label %inf_leave

if.end457:                                        ; preds = %if.then453
  store i32 0, ptr %copy, align 4
  br label %do.body458

do.body458:                                       ; preds = %land.end489, %if.end457
  %290 = load ptr, ptr %next, align 8
  %291 = load i32, ptr %copy, align 4
  %inc459 = add i32 %291, 1
  store i32 %inc459, ptr %copy, align 4
  %idxprom460 = zext i32 %291 to i64
  %arrayidx461 = getelementptr inbounds i8, ptr %290, i64 %idxprom460
  %292 = load i8, ptr %arrayidx461, align 1
  %conv462 = zext i8 %292 to i32
  store i32 %conv462, ptr %len, align 4
  %293 = load ptr, ptr %state, align 8
  %head463 = getelementptr inbounds %struct.inflate_state, ptr %293, i32 0, i32 8
  %294 = load ptr, ptr %head463, align 8
  %cmp464 = icmp ne ptr %294, null
  br i1 %cmp464, label %land.lhs.true466, label %if.end483

land.lhs.true466:                                 ; preds = %do.body458
  %295 = load ptr, ptr %state, align 8
  %head467 = getelementptr inbounds %struct.inflate_state, ptr %295, i32 0, i32 8
  %296 = load ptr, ptr %head467, align 8
  %comment = getelementptr inbounds %struct.gz_header_s, ptr %296, i32 0, i32 9
  %297 = load ptr, ptr %comment, align 8
  %cmp468 = icmp ne ptr %297, null
  br i1 %cmp468, label %land.lhs.true470, label %if.end483

land.lhs.true470:                                 ; preds = %land.lhs.true466
  %298 = load ptr, ptr %state, align 8
  %length471 = getelementptr inbounds %struct.inflate_state, ptr %298, i32 0, i32 16
  %299 = load i32, ptr %length471, align 4
  %300 = load ptr, ptr %state, align 8
  %head472 = getelementptr inbounds %struct.inflate_state, ptr %300, i32 0, i32 8
  %301 = load ptr, ptr %head472, align 8
  %comm_max = getelementptr inbounds %struct.gz_header_s, ptr %301, i32 0, i32 10
  %302 = load i32, ptr %comm_max, align 8
  %cmp473 = icmp ult i32 %299, %302
  br i1 %cmp473, label %if.then475, label %if.end483

if.then475:                                       ; preds = %land.lhs.true470
  %303 = load i32, ptr %len, align 4
  %conv476 = trunc i32 %303 to i8
  %304 = load ptr, ptr %state, align 8
  %head477 = getelementptr inbounds %struct.inflate_state, ptr %304, i32 0, i32 8
  %305 = load ptr, ptr %head477, align 8
  %comment478 = getelementptr inbounds %struct.gz_header_s, ptr %305, i32 0, i32 9
  %306 = load ptr, ptr %comment478, align 8
  %307 = load ptr, ptr %state, align 8
  %length479 = getelementptr inbounds %struct.inflate_state, ptr %307, i32 0, i32 16
  %308 = load i32, ptr %length479, align 4
  %inc480 = add i32 %308, 1
  store i32 %inc480, ptr %length479, align 4
  %idxprom481 = zext i32 %308 to i64
  %arrayidx482 = getelementptr inbounds i8, ptr %306, i64 %idxprom481
  store i8 %conv476, ptr %arrayidx482, align 1
  br label %if.end483

if.end483:                                        ; preds = %if.then475, %land.lhs.true470, %land.lhs.true466, %do.body458
  br label %do.cond484

do.cond484:                                       ; preds = %if.end483
  %309 = load i32, ptr %len, align 4
  %tobool485 = icmp ne i32 %309, 0
  br i1 %tobool485, label %land.rhs486, label %land.end489

land.rhs486:                                      ; preds = %do.cond484
  %310 = load i32, ptr %copy, align 4
  %311 = load i32, ptr %have, align 4
  %cmp487 = icmp ult i32 %310, %311
  br label %land.end489

land.end489:                                      ; preds = %land.rhs486, %do.cond484
  %312 = phi i1 [ false, %do.cond484 ], [ %cmp487, %land.rhs486 ]
  br i1 %312, label %do.body458, label %do.end490, !llvm.loop !13

do.end490:                                        ; preds = %land.end489
  %313 = load ptr, ptr %state, align 8
  %flags491 = getelementptr inbounds %struct.inflate_state, ptr %313, i32 0, i32 4
  %314 = load i32, ptr %flags491, align 8
  %and492 = and i32 %314, 512
  %tobool493 = icmp ne i32 %and492, 0
  br i1 %tobool493, label %if.then494, label %if.end498

if.then494:                                       ; preds = %do.end490
  %315 = load ptr, ptr %state, align 8
  %check495 = getelementptr inbounds %struct.inflate_state, ptr %315, i32 0, i32 6
  %316 = load i64, ptr %check495, align 8
  %317 = load ptr, ptr %next, align 8
  %318 = load i32, ptr %copy, align 4
  %call496 = call i64 @crc32(i64 noundef %316, ptr noundef %317, i32 noundef %318)
  %319 = load ptr, ptr %state, align 8
  %check497 = getelementptr inbounds %struct.inflate_state, ptr %319, i32 0, i32 6
  store i64 %call496, ptr %check497, align 8
  br label %if.end498

if.end498:                                        ; preds = %if.then494, %do.end490
  %320 = load i32, ptr %copy, align 4
  %321 = load i32, ptr %have, align 4
  %sub499 = sub i32 %321, %320
  store i32 %sub499, ptr %have, align 4
  %322 = load i32, ptr %copy, align 4
  %323 = load ptr, ptr %next, align 8
  %idx.ext500 = zext i32 %322 to i64
  %add.ptr501 = getelementptr inbounds i8, ptr %323, i64 %idx.ext500
  store ptr %add.ptr501, ptr %next, align 8
  %324 = load i32, ptr %len, align 4
  %tobool502 = icmp ne i32 %324, 0
  br i1 %tobool502, label %if.then503, label %if.end504

if.then503:                                       ; preds = %if.end498
  br label %inf_leave

if.end504:                                        ; preds = %if.end498
  br label %if.end513

if.else505:                                       ; preds = %sw.bb449
  %325 = load ptr, ptr %state, align 8
  %head506 = getelementptr inbounds %struct.inflate_state, ptr %325, i32 0, i32 8
  %326 = load ptr, ptr %head506, align 8
  %cmp507 = icmp ne ptr %326, null
  br i1 %cmp507, label %if.then509, label %if.end512

if.then509:                                       ; preds = %if.else505
  %327 = load ptr, ptr %state, align 8
  %head510 = getelementptr inbounds %struct.inflate_state, ptr %327, i32 0, i32 8
  %328 = load ptr, ptr %head510, align 8
  %comment511 = getelementptr inbounds %struct.gz_header_s, ptr %328, i32 0, i32 9
  store ptr null, ptr %comment511, align 8
  br label %if.end512

if.end512:                                        ; preds = %if.then509, %if.else505
  br label %if.end513

if.end513:                                        ; preds = %if.end512, %if.end504
  %329 = load ptr, ptr %state, align 8
  %mode514 = getelementptr inbounds %struct.inflate_state, ptr %329, i32 0, i32 0
  store i32 8, ptr %mode514, align 8
  br label %sw.bb515

sw.bb515:                                         ; preds = %for.cond, %if.end513
  %330 = load ptr, ptr %state, align 8
  %flags516 = getelementptr inbounds %struct.inflate_state, ptr %330, i32 0, i32 4
  %331 = load i32, ptr %flags516, align 8
  %and517 = and i32 %331, 512
  %tobool518 = icmp ne i32 %and517, 0
  br i1 %tobool518, label %if.then519, label %if.end553

if.then519:                                       ; preds = %sw.bb515
  br label %do.body520

do.body520:                                       ; preds = %if.then519
  br label %while.cond521

while.cond521:                                    ; preds = %do.end538, %do.body520
  %332 = load i32, ptr %bits, align 4
  %cmp522 = icmp ult i32 %332, 16
  br i1 %cmp522, label %while.body524, label %while.end539

while.body524:                                    ; preds = %while.cond521
  br label %do.body525

do.body525:                                       ; preds = %while.body524
  %333 = load i32, ptr %have, align 4
  %cmp526 = icmp eq i32 %333, 0
  br i1 %cmp526, label %if.then528, label %if.end529

if.then528:                                       ; preds = %do.body525
  br label %inf_leave

if.end529:                                        ; preds = %do.body525
  %334 = load i32, ptr %have, align 4
  %dec530 = add i32 %334, -1
  store i32 %dec530, ptr %have, align 4
  %335 = load ptr, ptr %next, align 8
  %incdec.ptr531 = getelementptr inbounds i8, ptr %335, i32 1
  store ptr %incdec.ptr531, ptr %next, align 8
  %336 = load i8, ptr %335, align 1
  %conv532 = zext i8 %336 to i64
  %337 = load i32, ptr %bits, align 4
  %sh_prom533 = zext i32 %337 to i64
  %shl534 = shl i64 %conv532, %sh_prom533
  %338 = load i64, ptr %hold, align 8
  %add535 = add i64 %338, %shl534
  store i64 %add535, ptr %hold, align 8
  %339 = load i32, ptr %bits, align 4
  %add536 = add i32 %339, 8
  store i32 %add536, ptr %bits, align 4
  br label %do.end538

do.end538:                                        ; preds = %if.end529
  br label %while.cond521, !llvm.loop !14

while.end539:                                     ; preds = %while.cond521
  br label %do.end541

do.end541:                                        ; preds = %while.end539
  %340 = load i64, ptr %hold, align 8
  %341 = load ptr, ptr %state, align 8
  %check542 = getelementptr inbounds %struct.inflate_state, ptr %341, i32 0, i32 6
  %342 = load i64, ptr %check542, align 8
  %and543 = and i64 %342, 65535
  %cmp544 = icmp ne i64 %340, %and543
  br i1 %cmp544, label %if.then546, label %if.end549

if.then546:                                       ; preds = %do.end541
  %343 = load ptr, ptr %strm.addr, align 8
  %msg547 = getelementptr inbounds %struct.z_stream_s, ptr %343, i32 0, i32 6
  store ptr @.str.5, ptr %msg547, align 8
  %344 = load ptr, ptr %state, align 8
  %mode548 = getelementptr inbounds %struct.inflate_state, ptr %344, i32 0, i32 0
  store i32 27, ptr %mode548, align 8
  br label %sw.epilog1772

if.end549:                                        ; preds = %do.end541
  br label %do.body550

do.body550:                                       ; preds = %if.end549
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %do.end552

do.end552:                                        ; preds = %do.body550
  br label %if.end553

if.end553:                                        ; preds = %do.end552, %sw.bb515
  %345 = load ptr, ptr %state, align 8
  %head554 = getelementptr inbounds %struct.inflate_state, ptr %345, i32 0, i32 8
  %346 = load ptr, ptr %head554, align 8
  %cmp555 = icmp ne ptr %346, null
  br i1 %cmp555, label %if.then557, label %if.end564

if.then557:                                       ; preds = %if.end553
  %347 = load ptr, ptr %state, align 8
  %flags558 = getelementptr inbounds %struct.inflate_state, ptr %347, i32 0, i32 4
  %348 = load i32, ptr %flags558, align 8
  %shr559 = ashr i32 %348, 9
  %and560 = and i32 %shr559, 1
  %349 = load ptr, ptr %state, align 8
  %head561 = getelementptr inbounds %struct.inflate_state, ptr %349, i32 0, i32 8
  %350 = load ptr, ptr %head561, align 8
  %hcrc = getelementptr inbounds %struct.gz_header_s, ptr %350, i32 0, i32 11
  store i32 %and560, ptr %hcrc, align 4
  %351 = load ptr, ptr %state, align 8
  %head562 = getelementptr inbounds %struct.inflate_state, ptr %351, i32 0, i32 8
  %352 = load ptr, ptr %head562, align 8
  %done563 = getelementptr inbounds %struct.gz_header_s, ptr %352, i32 0, i32 12
  store i32 1, ptr %done563, align 8
  br label %if.end564

if.end564:                                        ; preds = %if.then557, %if.end553
  %call565 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  %353 = load ptr, ptr %state, align 8
  %check566 = getelementptr inbounds %struct.inflate_state, ptr %353, i32 0, i32 6
  store i64 %call565, ptr %check566, align 8
  %354 = load ptr, ptr %strm.addr, align 8
  %adler567 = getelementptr inbounds %struct.z_stream_s, ptr %354, i32 0, i32 12
  store i64 %call565, ptr %adler567, align 8
  %355 = load ptr, ptr %state, align 8
  %mode568 = getelementptr inbounds %struct.inflate_state, ptr %355, i32 0, i32 0
  store i32 11, ptr %mode568, align 8
  br label %sw.epilog1772

sw.bb569:                                         ; preds = %for.cond
  br label %do.body570

do.body570:                                       ; preds = %sw.bb569
  br label %while.cond571

while.cond571:                                    ; preds = %do.end588, %do.body570
  %356 = load i32, ptr %bits, align 4
  %cmp572 = icmp ult i32 %356, 32
  br i1 %cmp572, label %while.body574, label %while.end589

while.body574:                                    ; preds = %while.cond571
  br label %do.body575

do.body575:                                       ; preds = %while.body574
  %357 = load i32, ptr %have, align 4
  %cmp576 = icmp eq i32 %357, 0
  br i1 %cmp576, label %if.then578, label %if.end579

if.then578:                                       ; preds = %do.body575
  br label %inf_leave

if.end579:                                        ; preds = %do.body575
  %358 = load i32, ptr %have, align 4
  %dec580 = add i32 %358, -1
  store i32 %dec580, ptr %have, align 4
  %359 = load ptr, ptr %next, align 8
  %incdec.ptr581 = getelementptr inbounds i8, ptr %359, i32 1
  store ptr %incdec.ptr581, ptr %next, align 8
  %360 = load i8, ptr %359, align 1
  %conv582 = zext i8 %360 to i64
  %361 = load i32, ptr %bits, align 4
  %sh_prom583 = zext i32 %361 to i64
  %shl584 = shl i64 %conv582, %sh_prom583
  %362 = load i64, ptr %hold, align 8
  %add585 = add i64 %362, %shl584
  store i64 %add585, ptr %hold, align 8
  %363 = load i32, ptr %bits, align 4
  %add586 = add i32 %363, 8
  store i32 %add586, ptr %bits, align 4
  br label %do.end588

do.end588:                                        ; preds = %if.end579
  br label %while.cond571, !llvm.loop !15

while.end589:                                     ; preds = %while.cond571
  br label %do.end591

do.end591:                                        ; preds = %while.end589
  %364 = load i64, ptr %hold, align 8
  %shr592 = lshr i64 %364, 24
  %and593 = and i64 %shr592, 255
  %365 = load i64, ptr %hold, align 8
  %shr594 = lshr i64 %365, 8
  %and595 = and i64 %shr594, 65280
  %add596 = add i64 %and593, %and595
  %366 = load i64, ptr %hold, align 8
  %and597 = and i64 %366, 65280
  %shl598 = shl i64 %and597, 8
  %add599 = add i64 %add596, %shl598
  %367 = load i64, ptr %hold, align 8
  %and600 = and i64 %367, 255
  %shl601 = shl i64 %and600, 24
  %add602 = add i64 %add599, %shl601
  %368 = load ptr, ptr %state, align 8
  %check603 = getelementptr inbounds %struct.inflate_state, ptr %368, i32 0, i32 6
  store i64 %add602, ptr %check603, align 8
  %369 = load ptr, ptr %strm.addr, align 8
  %adler604 = getelementptr inbounds %struct.z_stream_s, ptr %369, i32 0, i32 12
  store i64 %add602, ptr %adler604, align 8
  br label %do.body605

do.body605:                                       ; preds = %do.end591
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %do.end607

do.end607:                                        ; preds = %do.body605
  %370 = load ptr, ptr %state, align 8
  %mode608 = getelementptr inbounds %struct.inflate_state, ptr %370, i32 0, i32 0
  store i32 10, ptr %mode608, align 8
  br label %sw.bb609

sw.bb609:                                         ; preds = %for.cond, %do.end607
  %371 = load ptr, ptr %state, align 8
  %havedict = getelementptr inbounds %struct.inflate_state, ptr %371, i32 0, i32 3
  %372 = load i32, ptr %havedict, align 4
  %cmp610 = icmp eq i32 %372, 0
  br i1 %cmp610, label %if.then612, label %if.end622

if.then612:                                       ; preds = %sw.bb609
  br label %do.body613

do.body613:                                       ; preds = %if.then612
  %373 = load ptr, ptr %put, align 8
  %374 = load ptr, ptr %strm.addr, align 8
  %next_out614 = getelementptr inbounds %struct.z_stream_s, ptr %374, i32 0, i32 3
  store ptr %373, ptr %next_out614, align 8
  %375 = load i32, ptr %left, align 4
  %376 = load ptr, ptr %strm.addr, align 8
  %avail_out615 = getelementptr inbounds %struct.z_stream_s, ptr %376, i32 0, i32 4
  store i32 %375, ptr %avail_out615, align 8
  %377 = load ptr, ptr %next, align 8
  %378 = load ptr, ptr %strm.addr, align 8
  %next_in616 = getelementptr inbounds %struct.z_stream_s, ptr %378, i32 0, i32 0
  store ptr %377, ptr %next_in616, align 8
  %379 = load i32, ptr %have, align 4
  %380 = load ptr, ptr %strm.addr, align 8
  %avail_in617 = getelementptr inbounds %struct.z_stream_s, ptr %380, i32 0, i32 1
  store i32 %379, ptr %avail_in617, align 8
  %381 = load i64, ptr %hold, align 8
  %382 = load ptr, ptr %state, align 8
  %hold618 = getelementptr inbounds %struct.inflate_state, ptr %382, i32 0, i32 14
  store i64 %381, ptr %hold618, align 8
  %383 = load i32, ptr %bits, align 4
  %384 = load ptr, ptr %state, align 8
  %bits619 = getelementptr inbounds %struct.inflate_state, ptr %384, i32 0, i32 15
  store i32 %383, ptr %bits619, align 8
  br label %do.end621

do.end621:                                        ; preds = %do.body613
  store i32 2, ptr %retval, align 4
  br label %return

if.end622:                                        ; preds = %sw.bb609
  %call623 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  %385 = load ptr, ptr %state, align 8
  %check624 = getelementptr inbounds %struct.inflate_state, ptr %385, i32 0, i32 6
  store i64 %call623, ptr %check624, align 8
  %386 = load ptr, ptr %strm.addr, align 8
  %adler625 = getelementptr inbounds %struct.z_stream_s, ptr %386, i32 0, i32 12
  store i64 %call623, ptr %adler625, align 8
  %387 = load ptr, ptr %state, align 8
  %mode626 = getelementptr inbounds %struct.inflate_state, ptr %387, i32 0, i32 0
  store i32 11, ptr %mode626, align 8
  br label %sw.bb627

sw.bb627:                                         ; preds = %for.cond, %if.end622
  %388 = load i32, ptr %flush.addr, align 4
  %cmp628 = icmp eq i32 %388, 5
  br i1 %cmp628, label %if.then630, label %if.end631

if.then630:                                       ; preds = %sw.bb627
  br label %inf_leave

if.end631:                                        ; preds = %sw.bb627
  br label %sw.bb632

sw.bb632:                                         ; preds = %for.cond, %if.end631
  %389 = load ptr, ptr %state, align 8
  %last633 = getelementptr inbounds %struct.inflate_state, ptr %389, i32 0, i32 1
  %390 = load i32, ptr %last633, align 4
  %tobool634 = icmp ne i32 %390, 0
  br i1 %tobool634, label %if.then635, label %if.end645

if.then635:                                       ; preds = %sw.bb632
  br label %do.body636

do.body636:                                       ; preds = %if.then635
  %391 = load i32, ptr %bits, align 4
  %and637 = and i32 %391, 7
  %392 = load i64, ptr %hold, align 8
  %sh_prom638 = zext i32 %and637 to i64
  %shr639 = lshr i64 %392, %sh_prom638
  store i64 %shr639, ptr %hold, align 8
  %393 = load i32, ptr %bits, align 4
  %and640 = and i32 %393, 7
  %394 = load i32, ptr %bits, align 4
  %sub641 = sub i32 %394, %and640
  store i32 %sub641, ptr %bits, align 4
  br label %do.end643

do.end643:                                        ; preds = %do.body636
  %395 = load ptr, ptr %state, align 8
  %mode644 = getelementptr inbounds %struct.inflate_state, ptr %395, i32 0, i32 0
  store i32 24, ptr %mode644, align 8
  br label %sw.epilog1772

if.end645:                                        ; preds = %sw.bb632
  br label %do.body646

do.body646:                                       ; preds = %if.end645
  br label %while.cond647

while.cond647:                                    ; preds = %do.end664, %do.body646
  %396 = load i32, ptr %bits, align 4
  %cmp648 = icmp ult i32 %396, 3
  br i1 %cmp648, label %while.body650, label %while.end665

while.body650:                                    ; preds = %while.cond647
  br label %do.body651

do.body651:                                       ; preds = %while.body650
  %397 = load i32, ptr %have, align 4
  %cmp652 = icmp eq i32 %397, 0
  br i1 %cmp652, label %if.then654, label %if.end655

if.then654:                                       ; preds = %do.body651
  br label %inf_leave

if.end655:                                        ; preds = %do.body651
  %398 = load i32, ptr %have, align 4
  %dec656 = add i32 %398, -1
  store i32 %dec656, ptr %have, align 4
  %399 = load ptr, ptr %next, align 8
  %incdec.ptr657 = getelementptr inbounds i8, ptr %399, i32 1
  store ptr %incdec.ptr657, ptr %next, align 8
  %400 = load i8, ptr %399, align 1
  %conv658 = zext i8 %400 to i64
  %401 = load i32, ptr %bits, align 4
  %sh_prom659 = zext i32 %401 to i64
  %shl660 = shl i64 %conv658, %sh_prom659
  %402 = load i64, ptr %hold, align 8
  %add661 = add i64 %402, %shl660
  store i64 %add661, ptr %hold, align 8
  %403 = load i32, ptr %bits, align 4
  %add662 = add i32 %403, 8
  store i32 %add662, ptr %bits, align 4
  br label %do.end664

do.end664:                                        ; preds = %if.end655
  br label %while.cond647, !llvm.loop !16

while.end665:                                     ; preds = %while.cond647
  br label %do.end667

do.end667:                                        ; preds = %while.end665
  %404 = load i64, ptr %hold, align 8
  %conv668 = trunc i64 %404 to i32
  %and669 = and i32 %conv668, 1
  %405 = load ptr, ptr %state, align 8
  %last670 = getelementptr inbounds %struct.inflate_state, ptr %405, i32 0, i32 1
  store i32 %and669, ptr %last670, align 4
  br label %do.body671

do.body671:                                       ; preds = %do.end667
  %406 = load i64, ptr %hold, align 8
  %shr672 = lshr i64 %406, 1
  store i64 %shr672, ptr %hold, align 8
  %407 = load i32, ptr %bits, align 4
  %sub673 = sub i32 %407, 1
  store i32 %sub673, ptr %bits, align 4
  br label %do.end675

do.end675:                                        ; preds = %do.body671
  %408 = load i64, ptr %hold, align 8
  %conv676 = trunc i64 %408 to i32
  %and677 = and i32 %conv676, 3
  switch i32 %and677, label %sw.epilog [
    i32 0, label %sw.bb678
    i32 1, label %sw.bb680
    i32 2, label %sw.bb682
    i32 3, label %sw.bb684
  ]

sw.bb678:                                         ; preds = %do.end675
  %409 = load ptr, ptr %state, align 8
  %mode679 = getelementptr inbounds %struct.inflate_state, ptr %409, i32 0, i32 0
  store i32 13, ptr %mode679, align 8
  br label %sw.epilog

sw.bb680:                                         ; preds = %do.end675
  %410 = load ptr, ptr %state, align 8
  call void @fixedtables(ptr noundef %410)
  %411 = load ptr, ptr %state, align 8
  %mode681 = getelementptr inbounds %struct.inflate_state, ptr %411, i32 0, i32 0
  store i32 18, ptr %mode681, align 8
  br label %sw.epilog

sw.bb682:                                         ; preds = %do.end675
  %412 = load ptr, ptr %state, align 8
  %mode683 = getelementptr inbounds %struct.inflate_state, ptr %412, i32 0, i32 0
  store i32 15, ptr %mode683, align 8
  br label %sw.epilog

sw.bb684:                                         ; preds = %do.end675
  %413 = load ptr, ptr %strm.addr, align 8
  %msg685 = getelementptr inbounds %struct.z_stream_s, ptr %413, i32 0, i32 6
  store ptr @.str.6, ptr %msg685, align 8
  %414 = load ptr, ptr %state, align 8
  %mode686 = getelementptr inbounds %struct.inflate_state, ptr %414, i32 0, i32 0
  store i32 27, ptr %mode686, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb684, %do.end675, %sw.bb682, %sw.bb680, %sw.bb678
  br label %do.body687

do.body687:                                       ; preds = %sw.epilog
  %415 = load i64, ptr %hold, align 8
  %shr688 = lshr i64 %415, 2
  store i64 %shr688, ptr %hold, align 8
  %416 = load i32, ptr %bits, align 4
  %sub689 = sub i32 %416, 2
  store i32 %sub689, ptr %bits, align 4
  br label %do.end691

do.end691:                                        ; preds = %do.body687
  br label %sw.epilog1772

sw.bb692:                                         ; preds = %for.cond
  br label %do.body693

do.body693:                                       ; preds = %sw.bb692
  %417 = load i32, ptr %bits, align 4
  %and694 = and i32 %417, 7
  %418 = load i64, ptr %hold, align 8
  %sh_prom695 = zext i32 %and694 to i64
  %shr696 = lshr i64 %418, %sh_prom695
  store i64 %shr696, ptr %hold, align 8
  %419 = load i32, ptr %bits, align 4
  %and697 = and i32 %419, 7
  %420 = load i32, ptr %bits, align 4
  %sub698 = sub i32 %420, %and697
  store i32 %sub698, ptr %bits, align 4
  br label %do.end700

do.end700:                                        ; preds = %do.body693
  br label %do.body701

do.body701:                                       ; preds = %do.end700
  br label %while.cond702

while.cond702:                                    ; preds = %do.end719, %do.body701
  %421 = load i32, ptr %bits, align 4
  %cmp703 = icmp ult i32 %421, 32
  br i1 %cmp703, label %while.body705, label %while.end720

while.body705:                                    ; preds = %while.cond702
  br label %do.body706

do.body706:                                       ; preds = %while.body705
  %422 = load i32, ptr %have, align 4
  %cmp707 = icmp eq i32 %422, 0
  br i1 %cmp707, label %if.then709, label %if.end710

if.then709:                                       ; preds = %do.body706
  br label %inf_leave

if.end710:                                        ; preds = %do.body706
  %423 = load i32, ptr %have, align 4
  %dec711 = add i32 %423, -1
  store i32 %dec711, ptr %have, align 4
  %424 = load ptr, ptr %next, align 8
  %incdec.ptr712 = getelementptr inbounds i8, ptr %424, i32 1
  store ptr %incdec.ptr712, ptr %next, align 8
  %425 = load i8, ptr %424, align 1
  %conv713 = zext i8 %425 to i64
  %426 = load i32, ptr %bits, align 4
  %sh_prom714 = zext i32 %426 to i64
  %shl715 = shl i64 %conv713, %sh_prom714
  %427 = load i64, ptr %hold, align 8
  %add716 = add i64 %427, %shl715
  store i64 %add716, ptr %hold, align 8
  %428 = load i32, ptr %bits, align 4
  %add717 = add i32 %428, 8
  store i32 %add717, ptr %bits, align 4
  br label %do.end719

do.end719:                                        ; preds = %if.end710
  br label %while.cond702, !llvm.loop !17

while.end720:                                     ; preds = %while.cond702
  br label %do.end722

do.end722:                                        ; preds = %while.end720
  %429 = load i64, ptr %hold, align 8
  %and723 = and i64 %429, 65535
  %430 = load i64, ptr %hold, align 8
  %shr724 = lshr i64 %430, 16
  %xor = xor i64 %shr724, 65535
  %cmp725 = icmp ne i64 %and723, %xor
  br i1 %cmp725, label %if.then727, label %if.end730

if.then727:                                       ; preds = %do.end722
  %431 = load ptr, ptr %strm.addr, align 8
  %msg728 = getelementptr inbounds %struct.z_stream_s, ptr %431, i32 0, i32 6
  store ptr @.str.7, ptr %msg728, align 8
  %432 = load ptr, ptr %state, align 8
  %mode729 = getelementptr inbounds %struct.inflate_state, ptr %432, i32 0, i32 0
  store i32 27, ptr %mode729, align 8
  br label %sw.epilog1772

if.end730:                                        ; preds = %do.end722
  %433 = load i64, ptr %hold, align 8
  %conv731 = trunc i64 %433 to i32
  %and732 = and i32 %conv731, 65535
  %434 = load ptr, ptr %state, align 8
  %length733 = getelementptr inbounds %struct.inflate_state, ptr %434, i32 0, i32 16
  store i32 %and732, ptr %length733, align 4
  br label %do.body734

do.body734:                                       ; preds = %if.end730
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %do.end736

do.end736:                                        ; preds = %do.body734
  %435 = load ptr, ptr %state, align 8
  %mode737 = getelementptr inbounds %struct.inflate_state, ptr %435, i32 0, i32 0
  store i32 14, ptr %mode737, align 8
  br label %sw.bb738

sw.bb738:                                         ; preds = %for.cond, %do.end736
  %436 = load ptr, ptr %state, align 8
  %length739 = getelementptr inbounds %struct.inflate_state, ptr %436, i32 0, i32 16
  %437 = load i32, ptr %length739, align 4
  store i32 %437, ptr %copy, align 4
  %438 = load i32, ptr %copy, align 4
  %tobool740 = icmp ne i32 %438, 0
  br i1 %tobool740, label %if.then741, label %if.end764

if.then741:                                       ; preds = %sw.bb738
  %439 = load i32, ptr %copy, align 4
  %440 = load i32, ptr %have, align 4
  %cmp742 = icmp ugt i32 %439, %440
  br i1 %cmp742, label %if.then744, label %if.end745

if.then744:                                       ; preds = %if.then741
  %441 = load i32, ptr %have, align 4
  store i32 %441, ptr %copy, align 4
  br label %if.end745

if.end745:                                        ; preds = %if.then744, %if.then741
  %442 = load i32, ptr %copy, align 4
  %443 = load i32, ptr %left, align 4
  %cmp746 = icmp ugt i32 %442, %443
  br i1 %cmp746, label %if.then748, label %if.end749

if.then748:                                       ; preds = %if.end745
  %444 = load i32, ptr %left, align 4
  store i32 %444, ptr %copy, align 4
  br label %if.end749

if.end749:                                        ; preds = %if.then748, %if.end745
  %445 = load i32, ptr %copy, align 4
  %cmp750 = icmp eq i32 %445, 0
  br i1 %cmp750, label %if.then752, label %if.end753

if.then752:                                       ; preds = %if.end749
  br label %inf_leave

if.end753:                                        ; preds = %if.end749
  %446 = load ptr, ptr %put, align 8
  %447 = load ptr, ptr %next, align 8
  %448 = load i32, ptr %copy, align 4
  %conv754 = zext i32 %448 to i64
  %449 = load ptr, ptr %put, align 8
  %450 = call i64 @llvm.objectsize.i64.p0(ptr %449, i1 false, i1 true, i1 false)
  %call755 = call ptr @__memcpy_chk(ptr noundef %446, ptr noundef %447, i64 noundef %conv754, i64 noundef %450) #5
  %451 = load i32, ptr %copy, align 4
  %452 = load i32, ptr %have, align 4
  %sub756 = sub i32 %452, %451
  store i32 %sub756, ptr %have, align 4
  %453 = load i32, ptr %copy, align 4
  %454 = load ptr, ptr %next, align 8
  %idx.ext757 = zext i32 %453 to i64
  %add.ptr758 = getelementptr inbounds i8, ptr %454, i64 %idx.ext757
  store ptr %add.ptr758, ptr %next, align 8
  %455 = load i32, ptr %copy, align 4
  %456 = load i32, ptr %left, align 4
  %sub759 = sub i32 %456, %455
  store i32 %sub759, ptr %left, align 4
  %457 = load i32, ptr %copy, align 4
  %458 = load ptr, ptr %put, align 8
  %idx.ext760 = zext i32 %457 to i64
  %add.ptr761 = getelementptr inbounds i8, ptr %458, i64 %idx.ext760
  store ptr %add.ptr761, ptr %put, align 8
  %459 = load i32, ptr %copy, align 4
  %460 = load ptr, ptr %state, align 8
  %length762 = getelementptr inbounds %struct.inflate_state, ptr %460, i32 0, i32 16
  %461 = load i32, ptr %length762, align 4
  %sub763 = sub i32 %461, %459
  store i32 %sub763, ptr %length762, align 4
  br label %sw.epilog1772

if.end764:                                        ; preds = %sw.bb738
  %462 = load ptr, ptr %state, align 8
  %mode765 = getelementptr inbounds %struct.inflate_state, ptr %462, i32 0, i32 0
  store i32 11, ptr %mode765, align 8
  br label %sw.epilog1772

sw.bb766:                                         ; preds = %for.cond
  br label %do.body767

do.body767:                                       ; preds = %sw.bb766
  br label %while.cond768

while.cond768:                                    ; preds = %do.end785, %do.body767
  %463 = load i32, ptr %bits, align 4
  %cmp769 = icmp ult i32 %463, 14
  br i1 %cmp769, label %while.body771, label %while.end786

while.body771:                                    ; preds = %while.cond768
  br label %do.body772

do.body772:                                       ; preds = %while.body771
  %464 = load i32, ptr %have, align 4
  %cmp773 = icmp eq i32 %464, 0
  br i1 %cmp773, label %if.then775, label %if.end776

if.then775:                                       ; preds = %do.body772
  br label %inf_leave

if.end776:                                        ; preds = %do.body772
  %465 = load i32, ptr %have, align 4
  %dec777 = add i32 %465, -1
  store i32 %dec777, ptr %have, align 4
  %466 = load ptr, ptr %next, align 8
  %incdec.ptr778 = getelementptr inbounds i8, ptr %466, i32 1
  store ptr %incdec.ptr778, ptr %next, align 8
  %467 = load i8, ptr %466, align 1
  %conv779 = zext i8 %467 to i64
  %468 = load i32, ptr %bits, align 4
  %sh_prom780 = zext i32 %468 to i64
  %shl781 = shl i64 %conv779, %sh_prom780
  %469 = load i64, ptr %hold, align 8
  %add782 = add i64 %469, %shl781
  store i64 %add782, ptr %hold, align 8
  %470 = load i32, ptr %bits, align 4
  %add783 = add i32 %470, 8
  store i32 %add783, ptr %bits, align 4
  br label %do.end785

do.end785:                                        ; preds = %if.end776
  br label %while.cond768, !llvm.loop !18

while.end786:                                     ; preds = %while.cond768
  br label %do.end788

do.end788:                                        ; preds = %while.end786
  %471 = load i64, ptr %hold, align 8
  %conv789 = trunc i64 %471 to i32
  %and790 = and i32 %conv789, 31
  %add791 = add i32 %and790, 257
  %472 = load ptr, ptr %state, align 8
  %nlen = getelementptr inbounds %struct.inflate_state, ptr %472, i32 0, i32 24
  store i32 %add791, ptr %nlen, align 4
  br label %do.body792

do.body792:                                       ; preds = %do.end788
  %473 = load i64, ptr %hold, align 8
  %shr793 = lshr i64 %473, 5
  store i64 %shr793, ptr %hold, align 8
  %474 = load i32, ptr %bits, align 4
  %sub794 = sub i32 %474, 5
  store i32 %sub794, ptr %bits, align 4
  br label %do.end796

do.end796:                                        ; preds = %do.body792
  %475 = load i64, ptr %hold, align 8
  %conv797 = trunc i64 %475 to i32
  %and798 = and i32 %conv797, 31
  %add799 = add i32 %and798, 1
  %476 = load ptr, ptr %state, align 8
  %ndist = getelementptr inbounds %struct.inflate_state, ptr %476, i32 0, i32 25
  store i32 %add799, ptr %ndist, align 8
  br label %do.body800

do.body800:                                       ; preds = %do.end796
  %477 = load i64, ptr %hold, align 8
  %shr801 = lshr i64 %477, 5
  store i64 %shr801, ptr %hold, align 8
  %478 = load i32, ptr %bits, align 4
  %sub802 = sub i32 %478, 5
  store i32 %sub802, ptr %bits, align 4
  br label %do.end804

do.end804:                                        ; preds = %do.body800
  %479 = load i64, ptr %hold, align 8
  %conv805 = trunc i64 %479 to i32
  %and806 = and i32 %conv805, 15
  %add807 = add i32 %and806, 4
  %480 = load ptr, ptr %state, align 8
  %ncode = getelementptr inbounds %struct.inflate_state, ptr %480, i32 0, i32 23
  store i32 %add807, ptr %ncode, align 8
  br label %do.body808

do.body808:                                       ; preds = %do.end804
  %481 = load i64, ptr %hold, align 8
  %shr809 = lshr i64 %481, 4
  store i64 %shr809, ptr %hold, align 8
  %482 = load i32, ptr %bits, align 4
  %sub810 = sub i32 %482, 4
  store i32 %sub810, ptr %bits, align 4
  br label %do.end812

do.end812:                                        ; preds = %do.body808
  %483 = load ptr, ptr %state, align 8
  %nlen813 = getelementptr inbounds %struct.inflate_state, ptr %483, i32 0, i32 24
  %484 = load i32, ptr %nlen813, align 4
  %cmp814 = icmp ugt i32 %484, 286
  br i1 %cmp814, label %if.then820, label %lor.lhs.false816

lor.lhs.false816:                                 ; preds = %do.end812
  %485 = load ptr, ptr %state, align 8
  %ndist817 = getelementptr inbounds %struct.inflate_state, ptr %485, i32 0, i32 25
  %486 = load i32, ptr %ndist817, align 8
  %cmp818 = icmp ugt i32 %486, 30
  br i1 %cmp818, label %if.then820, label %if.end823

if.then820:                                       ; preds = %lor.lhs.false816, %do.end812
  %487 = load ptr, ptr %strm.addr, align 8
  %msg821 = getelementptr inbounds %struct.z_stream_s, ptr %487, i32 0, i32 6
  store ptr @.str.8, ptr %msg821, align 8
  %488 = load ptr, ptr %state, align 8
  %mode822 = getelementptr inbounds %struct.inflate_state, ptr %488, i32 0, i32 0
  store i32 27, ptr %mode822, align 8
  br label %sw.epilog1772

if.end823:                                        ; preds = %lor.lhs.false816
  %489 = load ptr, ptr %state, align 8
  %have824 = getelementptr inbounds %struct.inflate_state, ptr %489, i32 0, i32 26
  store i32 0, ptr %have824, align 4
  %490 = load ptr, ptr %state, align 8
  %mode825 = getelementptr inbounds %struct.inflate_state, ptr %490, i32 0, i32 0
  store i32 16, ptr %mode825, align 8
  br label %sw.bb826

sw.bb826:                                         ; preds = %for.cond, %if.end823
  br label %while.cond827

while.cond827:                                    ; preds = %do.end868, %sw.bb826
  %491 = load ptr, ptr %state, align 8
  %have828 = getelementptr inbounds %struct.inflate_state, ptr %491, i32 0, i32 26
  %492 = load i32, ptr %have828, align 4
  %493 = load ptr, ptr %state, align 8
  %ncode829 = getelementptr inbounds %struct.inflate_state, ptr %493, i32 0, i32 23
  %494 = load i32, ptr %ncode829, align 8
  %cmp830 = icmp ult i32 %492, %494
  br i1 %cmp830, label %while.body832, label %while.end869

while.body832:                                    ; preds = %while.cond827
  br label %do.body833

do.body833:                                       ; preds = %while.body832
  br label %while.cond834

while.cond834:                                    ; preds = %do.end851, %do.body833
  %495 = load i32, ptr %bits, align 4
  %cmp835 = icmp ult i32 %495, 3
  br i1 %cmp835, label %while.body837, label %while.end852

while.body837:                                    ; preds = %while.cond834
  br label %do.body838

do.body838:                                       ; preds = %while.body837
  %496 = load i32, ptr %have, align 4
  %cmp839 = icmp eq i32 %496, 0
  br i1 %cmp839, label %if.then841, label %if.end842

if.then841:                                       ; preds = %do.body838
  br label %inf_leave

if.end842:                                        ; preds = %do.body838
  %497 = load i32, ptr %have, align 4
  %dec843 = add i32 %497, -1
  store i32 %dec843, ptr %have, align 4
  %498 = load ptr, ptr %next, align 8
  %incdec.ptr844 = getelementptr inbounds i8, ptr %498, i32 1
  store ptr %incdec.ptr844, ptr %next, align 8
  %499 = load i8, ptr %498, align 1
  %conv845 = zext i8 %499 to i64
  %500 = load i32, ptr %bits, align 4
  %sh_prom846 = zext i32 %500 to i64
  %shl847 = shl i64 %conv845, %sh_prom846
  %501 = load i64, ptr %hold, align 8
  %add848 = add i64 %501, %shl847
  store i64 %add848, ptr %hold, align 8
  %502 = load i32, ptr %bits, align 4
  %add849 = add i32 %502, 8
  store i32 %add849, ptr %bits, align 4
  br label %do.end851

do.end851:                                        ; preds = %if.end842
  br label %while.cond834, !llvm.loop !19

while.end852:                                     ; preds = %while.cond834
  br label %do.end854

do.end854:                                        ; preds = %while.end852
  %503 = load i64, ptr %hold, align 8
  %conv855 = trunc i64 %503 to i32
  %and856 = and i32 %conv855, 7
  %conv857 = trunc i32 %and856 to i16
  %504 = load ptr, ptr %state, align 8
  %lens = getelementptr inbounds %struct.inflate_state, ptr %504, i32 0, i32 28
  %505 = load ptr, ptr %state, align 8
  %have858 = getelementptr inbounds %struct.inflate_state, ptr %505, i32 0, i32 26
  %506 = load i32, ptr %have858, align 4
  %inc859 = add i32 %506, 1
  store i32 %inc859, ptr %have858, align 4
  %idxprom860 = zext i32 %506 to i64
  %arrayidx861 = getelementptr inbounds [19 x i16], ptr @inflate.order, i64 0, i64 %idxprom860
  %507 = load i16, ptr %arrayidx861, align 2
  %idxprom862 = zext i16 %507 to i64
  %arrayidx863 = getelementptr inbounds [320 x i16], ptr %lens, i64 0, i64 %idxprom862
  store i16 %conv857, ptr %arrayidx863, align 2
  br label %do.body864

do.body864:                                       ; preds = %do.end854
  %508 = load i64, ptr %hold, align 8
  %shr865 = lshr i64 %508, 3
  store i64 %shr865, ptr %hold, align 8
  %509 = load i32, ptr %bits, align 4
  %sub866 = sub i32 %509, 3
  store i32 %sub866, ptr %bits, align 4
  br label %do.end868

do.end868:                                        ; preds = %do.body864
  br label %while.cond827, !llvm.loop !20

while.end869:                                     ; preds = %while.cond827
  br label %while.cond870

while.cond870:                                    ; preds = %while.body874, %while.end869
  %510 = load ptr, ptr %state, align 8
  %have871 = getelementptr inbounds %struct.inflate_state, ptr %510, i32 0, i32 26
  %511 = load i32, ptr %have871, align 4
  %cmp872 = icmp ult i32 %511, 19
  br i1 %cmp872, label %while.body874, label %while.end882

while.body874:                                    ; preds = %while.cond870
  %512 = load ptr, ptr %state, align 8
  %lens875 = getelementptr inbounds %struct.inflate_state, ptr %512, i32 0, i32 28
  %513 = load ptr, ptr %state, align 8
  %have876 = getelementptr inbounds %struct.inflate_state, ptr %513, i32 0, i32 26
  %514 = load i32, ptr %have876, align 4
  %inc877 = add i32 %514, 1
  store i32 %inc877, ptr %have876, align 4
  %idxprom878 = zext i32 %514 to i64
  %arrayidx879 = getelementptr inbounds [19 x i16], ptr @inflate.order, i64 0, i64 %idxprom878
  %515 = load i16, ptr %arrayidx879, align 2
  %idxprom880 = zext i16 %515 to i64
  %arrayidx881 = getelementptr inbounds [320 x i16], ptr %lens875, i64 0, i64 %idxprom880
  store i16 0, ptr %arrayidx881, align 2
  br label %while.cond870, !llvm.loop !21

while.end882:                                     ; preds = %while.cond870
  %516 = load ptr, ptr %state, align 8
  %codes = getelementptr inbounds %struct.inflate_state, ptr %516, i32 0, i32 30
  %arraydecay883 = getelementptr inbounds [2048 x %struct.code], ptr %codes, i64 0, i64 0
  %517 = load ptr, ptr %state, align 8
  %next884 = getelementptr inbounds %struct.inflate_state, ptr %517, i32 0, i32 27
  store ptr %arraydecay883, ptr %next884, align 8
  %518 = load ptr, ptr %state, align 8
  %next885 = getelementptr inbounds %struct.inflate_state, ptr %518, i32 0, i32 27
  %519 = load ptr, ptr %next885, align 8
  %520 = load ptr, ptr %state, align 8
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %520, i32 0, i32 19
  store ptr %519, ptr %lencode, align 8
  %521 = load ptr, ptr %state, align 8
  %lenbits = getelementptr inbounds %struct.inflate_state, ptr %521, i32 0, i32 21
  store i32 7, ptr %lenbits, align 8
  %522 = load ptr, ptr %state, align 8
  %lens886 = getelementptr inbounds %struct.inflate_state, ptr %522, i32 0, i32 28
  %arraydecay887 = getelementptr inbounds [320 x i16], ptr %lens886, i64 0, i64 0
  %523 = load ptr, ptr %state, align 8
  %next888 = getelementptr inbounds %struct.inflate_state, ptr %523, i32 0, i32 27
  %524 = load ptr, ptr %state, align 8
  %lenbits889 = getelementptr inbounds %struct.inflate_state, ptr %524, i32 0, i32 21
  %525 = load ptr, ptr %state, align 8
  %work = getelementptr inbounds %struct.inflate_state, ptr %525, i32 0, i32 29
  %arraydecay890 = getelementptr inbounds [288 x i16], ptr %work, i64 0, i64 0
  %call891 = call i32 @inflate_table(i32 noundef 0, ptr noundef %arraydecay887, i32 noundef 19, ptr noundef %next888, ptr noundef %lenbits889, ptr noundef %arraydecay890)
  store i32 %call891, ptr %ret, align 4
  %526 = load i32, ptr %ret, align 4
  %tobool892 = icmp ne i32 %526, 0
  br i1 %tobool892, label %if.then893, label %if.end896

if.then893:                                       ; preds = %while.end882
  %527 = load ptr, ptr %strm.addr, align 8
  %msg894 = getelementptr inbounds %struct.z_stream_s, ptr %527, i32 0, i32 6
  store ptr @.str.9, ptr %msg894, align 8
  %528 = load ptr, ptr %state, align 8
  %mode895 = getelementptr inbounds %struct.inflate_state, ptr %528, i32 0, i32 0
  store i32 27, ptr %mode895, align 8
  br label %sw.epilog1772

if.end896:                                        ; preds = %while.end882
  %529 = load ptr, ptr %state, align 8
  %have897 = getelementptr inbounds %struct.inflate_state, ptr %529, i32 0, i32 26
  store i32 0, ptr %have897, align 4
  %530 = load ptr, ptr %state, align 8
  %mode898 = getelementptr inbounds %struct.inflate_state, ptr %530, i32 0, i32 0
  store i32 17, ptr %mode898, align 8
  br label %sw.bb899

sw.bb899:                                         ; preds = %for.cond, %if.end896
  br label %while.cond900

while.cond900:                                    ; preds = %if.end1160, %sw.bb899
  %531 = load ptr, ptr %state, align 8
  %have901 = getelementptr inbounds %struct.inflate_state, ptr %531, i32 0, i32 26
  %532 = load i32, ptr %have901, align 4
  %533 = load ptr, ptr %state, align 8
  %nlen902 = getelementptr inbounds %struct.inflate_state, ptr %533, i32 0, i32 24
  %534 = load i32, ptr %nlen902, align 4
  %535 = load ptr, ptr %state, align 8
  %ndist903 = getelementptr inbounds %struct.inflate_state, ptr %535, i32 0, i32 25
  %536 = load i32, ptr %ndist903, align 8
  %add904 = add i32 %534, %536
  %cmp905 = icmp ult i32 %532, %add904
  br i1 %cmp905, label %while.body907, label %while.end1161

while.body907:                                    ; preds = %while.cond900
  br label %for.cond908

for.cond908:                                      ; preds = %do.end936, %while.body907
  %537 = load ptr, ptr %state, align 8
  %lencode909 = getelementptr inbounds %struct.inflate_state, ptr %537, i32 0, i32 19
  %538 = load ptr, ptr %lencode909, align 8
  %539 = load i64, ptr %hold, align 8
  %conv910 = trunc i64 %539 to i32
  %540 = load ptr, ptr %state, align 8
  %lenbits911 = getelementptr inbounds %struct.inflate_state, ptr %540, i32 0, i32 21
  %541 = load i32, ptr %lenbits911, align 8
  %shl912 = shl i32 1, %541
  %sub913 = sub i32 %shl912, 1
  %and914 = and i32 %conv910, %sub913
  %idxprom915 = zext i32 %and914 to i64
  %arrayidx916 = getelementptr inbounds %struct.code, ptr %538, i64 %idxprom915
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %this, ptr align 2 %arrayidx916, i64 4, i1 false)
  %bits917 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1
  %542 = load i8, ptr %bits917, align 1
  %conv918 = zext i8 %542 to i32
  %543 = load i32, ptr %bits, align 4
  %cmp919 = icmp ule i32 %conv918, %543
  br i1 %cmp919, label %if.then921, label %if.end922

if.then921:                                       ; preds = %for.cond908
  br label %for.end

if.end922:                                        ; preds = %for.cond908
  br label %do.body923

do.body923:                                       ; preds = %if.end922
  %544 = load i32, ptr %have, align 4
  %cmp924 = icmp eq i32 %544, 0
  br i1 %cmp924, label %if.then926, label %if.end927

if.then926:                                       ; preds = %do.body923
  br label %inf_leave

if.end927:                                        ; preds = %do.body923
  %545 = load i32, ptr %have, align 4
  %dec928 = add i32 %545, -1
  store i32 %dec928, ptr %have, align 4
  %546 = load ptr, ptr %next, align 8
  %incdec.ptr929 = getelementptr inbounds i8, ptr %546, i32 1
  store ptr %incdec.ptr929, ptr %next, align 8
  %547 = load i8, ptr %546, align 1
  %conv930 = zext i8 %547 to i64
  %548 = load i32, ptr %bits, align 4
  %sh_prom931 = zext i32 %548 to i64
  %shl932 = shl i64 %conv930, %sh_prom931
  %549 = load i64, ptr %hold, align 8
  %add933 = add i64 %549, %shl932
  store i64 %add933, ptr %hold, align 8
  %550 = load i32, ptr %bits, align 4
  %add934 = add i32 %550, 8
  store i32 %add934, ptr %bits, align 4
  br label %do.end936

do.end936:                                        ; preds = %if.end927
  br label %for.cond908

for.end:                                          ; preds = %if.then921
  %val = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2
  %551 = load i16, ptr %val, align 2
  %conv937 = zext i16 %551 to i32
  %cmp938 = icmp slt i32 %conv937, 16
  br i1 %cmp938, label %if.then940, label %if.else981

if.then940:                                       ; preds = %for.end
  br label %do.body941

do.body941:                                       ; preds = %if.then940
  br label %while.cond942

while.cond942:                                    ; preds = %do.end961, %do.body941
  %552 = load i32, ptr %bits, align 4
  %bits943 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1
  %553 = load i8, ptr %bits943, align 1
  %conv944 = zext i8 %553 to i32
  %cmp945 = icmp ult i32 %552, %conv944
  br i1 %cmp945, label %while.body947, label %while.end962

while.body947:                                    ; preds = %while.cond942
  br label %do.body948

do.body948:                                       ; preds = %while.body947
  %554 = load i32, ptr %have, align 4
  %cmp949 = icmp eq i32 %554, 0
  br i1 %cmp949, label %if.then951, label %if.end952

if.then951:                                       ; preds = %do.body948
  br label %inf_leave

if.end952:                                        ; preds = %do.body948
  %555 = load i32, ptr %have, align 4
  %dec953 = add i32 %555, -1
  store i32 %dec953, ptr %have, align 4
  %556 = load ptr, ptr %next, align 8
  %incdec.ptr954 = getelementptr inbounds i8, ptr %556, i32 1
  store ptr %incdec.ptr954, ptr %next, align 8
  %557 = load i8, ptr %556, align 1
  %conv955 = zext i8 %557 to i64
  %558 = load i32, ptr %bits, align 4
  %sh_prom956 = zext i32 %558 to i64
  %shl957 = shl i64 %conv955, %sh_prom956
  %559 = load i64, ptr %hold, align 8
  %add958 = add i64 %559, %shl957
  store i64 %add958, ptr %hold, align 8
  %560 = load i32, ptr %bits, align 4
  %add959 = add i32 %560, 8
  store i32 %add959, ptr %bits, align 4
  br label %do.end961

do.end961:                                        ; preds = %if.end952
  br label %while.cond942, !llvm.loop !22

while.end962:                                     ; preds = %while.cond942
  br label %do.end964

do.end964:                                        ; preds = %while.end962
  br label %do.body965

do.body965:                                       ; preds = %do.end964
  %bits966 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1
  %561 = load i8, ptr %bits966, align 1
  %conv967 = zext i8 %561 to i32
  %562 = load i64, ptr %hold, align 8
  %sh_prom968 = zext i32 %conv967 to i64
  %shr969 = lshr i64 %562, %sh_prom968
  store i64 %shr969, ptr %hold, align 8
  %bits970 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1
  %563 = load i8, ptr %bits970, align 1
  %conv971 = zext i8 %563 to i32
  %564 = load i32, ptr %bits, align 4
  %sub972 = sub i32 %564, %conv971
  store i32 %sub972, ptr %bits, align 4
  br label %do.end974

do.end974:                                        ; preds = %do.body965
  %val975 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2
  %565 = load i16, ptr %val975, align 2
  %566 = load ptr, ptr %state, align 8
  %lens976 = getelementptr inbounds %struct.inflate_state, ptr %566, i32 0, i32 28
  %567 = load ptr, ptr %state, align 8
  %have977 = getelementptr inbounds %struct.inflate_state, ptr %567, i32 0, i32 26
  %568 = load i32, ptr %have977, align 4
  %inc978 = add i32 %568, 1
  store i32 %inc978, ptr %have977, align 4
  %idxprom979 = zext i32 %568 to i64
  %arrayidx980 = getelementptr inbounds [320 x i16], ptr %lens976, i64 0, i64 %idxprom979
  store i16 %565, ptr %arrayidx980, align 2
  br label %if.end1160

if.else981:                                       ; preds = %for.end
  %val982 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2
  %569 = load i16, ptr %val982, align 2
  %conv983 = zext i16 %569 to i32
  %cmp984 = icmp eq i32 %conv983, 16
  br i1 %cmp984, label %if.then986, label %if.else1043

if.then986:                                       ; preds = %if.else981
  br label %do.body987

do.body987:                                       ; preds = %if.then986
  br label %while.cond988

while.cond988:                                    ; preds = %do.end1008, %do.body987
  %570 = load i32, ptr %bits, align 4
  %bits989 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1
  %571 = load i8, ptr %bits989, align 1
  %conv990 = zext i8 %571 to i32
  %add991 = add nsw i32 %conv990, 2
  %cmp992 = icmp ult i32 %570, %add991
  br i1 %cmp992, label %while.body994, label %while.end1009

while.body994:                                    ; preds = %while.cond988
  br label %do.body995

do.body995:                                       ; preds = %while.body994
  %572 = load i32, ptr %have, align 4
  %cmp996 = icmp eq i32 %572, 0
  br i1 %cmp996, label %if.then998, label %if.end999

if.then998:                                       ; preds = %do.body995
  br label %inf_leave

if.end999:                                        ; preds = %do.body995
  %573 = load i32, ptr %have, align 4
  %dec1000 = add i32 %573, -1
  store i32 %dec1000, ptr %have, align 4
  %574 = load ptr, ptr %next, align 8
  %incdec.ptr1001 = getelementptr inbounds i8, ptr %574, i32 1
  store ptr %incdec.ptr1001, ptr %next, align 8
  %575 = load i8, ptr %574, align 1
  %conv1002 = zext i8 %575 to i64
  %576 = load i32, ptr %bits, align 4
  %sh_prom1003 = zext i32 %576 to i64
  %shl1004 = shl i64 %conv1002, %sh_prom1003
  %577 = load i64, ptr %hold, align 8
  %add1005 = add i64 %577, %shl1004
  store i64 %add1005, ptr %hold, align 8
  %578 = load i32, ptr %bits, align 4
  %add1006 = add i32 %578, 8
  store i32 %add1006, ptr %bits, align 4
  br label %do.end1008

do.end1008:                                       ; preds = %if.end999
  br label %while.cond988, !llvm.loop !23

while.end1009:                                    ; preds = %while.cond988
  br label %do.end1011

do.end1011:                                       ; preds = %while.end1009
  br label %do.body1012

do.body1012:                                      ; preds = %do.end1011
  %bits1013 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1
  %579 = load i8, ptr %bits1013, align 1
  %conv1014 = zext i8 %579 to i32
  %580 = load i64, ptr %hold, align 8
  %sh_prom1015 = zext i32 %conv1014 to i64
  %shr1016 = lshr i64 %580, %sh_prom1015
  store i64 %shr1016, ptr %hold, align 8
  %bits1017 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1
  %581 = load i8, ptr %bits1017, align 1
  %conv1018 = zext i8 %581 to i32
  %582 = load i32, ptr %bits, align 4
  %sub1019 = sub i32 %582, %conv1018
  store i32 %sub1019, ptr %bits, align 4
  br label %do.end1021

do.end1021:                                       ; preds = %do.body1012
  %583 = load ptr, ptr %state, align 8
  %have1022 = getelementptr inbounds %struct.inflate_state, ptr %583, i32 0, i32 26
  %584 = load i32, ptr %have1022, align 4
  %cmp1023 = icmp eq i32 %584, 0
  br i1 %cmp1023, label %if.then1025, label %if.end1028

if.then1025:                                      ; preds = %do.end1021
  %585 = load ptr, ptr %strm.addr, align 8
  %msg1026 = getelementptr inbounds %struct.z_stream_s, ptr %585, i32 0, i32 6
  store ptr @.str.10, ptr %msg1026, align 8
  %586 = load ptr, ptr %state, align 8
  %mode1027 = getelementptr inbounds %struct.inflate_state, ptr %586, i32 0, i32 0
  store i32 27, ptr %mode1027, align 8
  br label %while.end1161

if.end1028:                                       ; preds = %do.end1021
  %587 = load ptr, ptr %state, align 8
  %lens1029 = getelementptr inbounds %struct.inflate_state, ptr %587, i32 0, i32 28
  %588 = load ptr, ptr %state, align 8
  %have1030 = getelementptr inbounds %struct.inflate_state, ptr %588, i32 0, i32 26
  %589 = load i32, ptr %have1030, align 4
  %sub1031 = sub i32 %589, 1
  %idxprom1032 = zext i32 %sub1031 to i64
  %arrayidx1033 = getelementptr inbounds [320 x i16], ptr %lens1029, i64 0, i64 %idxprom1032
  %590 = load i16, ptr %arrayidx1033, align 2
  %conv1034 = zext i16 %590 to i32
  store i32 %conv1034, ptr %len, align 4
  %591 = load i64, ptr %hold, align 8
  %conv1035 = trunc i64 %591 to i32
  %and1036 = and i32 %conv1035, 3
  %add1037 = add i32 3, %and1036
  store i32 %add1037, ptr %copy, align 4
  br label %do.body1038

do.body1038:                                      ; preds = %if.end1028
  %592 = load i64, ptr %hold, align 8
  %shr1039 = lshr i64 %592, 2
  store i64 %shr1039, ptr %hold, align 8
  %593 = load i32, ptr %bits, align 4
  %sub1040 = sub i32 %593, 2
  store i32 %sub1040, ptr %bits, align 4
  br label %do.end1042

do.end1042:                                       ; preds = %do.body1038
  br label %if.end1137

if.else1043:                                      ; preds = %if.else981
  %val1044 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2
  %594 = load i16, ptr %val1044, align 2
  %conv1045 = zext i16 %594 to i32
  %cmp1046 = icmp eq i32 %conv1045, 17
  br i1 %cmp1046, label %if.then1048, label %if.else1092

if.then1048:                                      ; preds = %if.else1043
  br label %do.body1049

do.body1049:                                      ; preds = %if.then1048
  br label %while.cond1050

while.cond1050:                                   ; preds = %do.end1070, %do.body1049
  %595 = load i32, ptr %bits, align 4
  %bits1051 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1
  %596 = load i8, ptr %bits1051, align 1
  %conv1052 = zext i8 %596 to i32
  %add1053 = add nsw i32 %conv1052, 3
  %cmp1054 = icmp ult i32 %595, %add1053
  br i1 %cmp1054, label %while.body1056, label %while.end1071

while.body1056:                                   ; preds = %while.cond1050
  br label %do.body1057

do.body1057:                                      ; preds = %while.body1056
  %597 = load i32, ptr %have, align 4
  %cmp1058 = icmp eq i32 %597, 0
  br i1 %cmp1058, label %if.then1060, label %if.end1061

if.then1060:                                      ; preds = %do.body1057
  br label %inf_leave

if.end1061:                                       ; preds = %do.body1057
  %598 = load i32, ptr %have, align 4
  %dec1062 = add i32 %598, -1
  store i32 %dec1062, ptr %have, align 4
  %599 = load ptr, ptr %next, align 8
  %incdec.ptr1063 = getelementptr inbounds i8, ptr %599, i32 1
  store ptr %incdec.ptr1063, ptr %next, align 8
  %600 = load i8, ptr %599, align 1
  %conv1064 = zext i8 %600 to i64
  %601 = load i32, ptr %bits, align 4
  %sh_prom1065 = zext i32 %601 to i64
  %shl1066 = shl i64 %conv1064, %sh_prom1065
  %602 = load i64, ptr %hold, align 8
  %add1067 = add i64 %602, %shl1066
  store i64 %add1067, ptr %hold, align 8
  %603 = load i32, ptr %bits, align 4
  %add1068 = add i32 %603, 8
  store i32 %add1068, ptr %bits, align 4
  br label %do.end1070

do.end1070:                                       ; preds = %if.end1061
  br label %while.cond1050, !llvm.loop !24

while.end1071:                                    ; preds = %while.cond1050
  br label %do.end1073

do.end1073:                                       ; preds = %while.end1071
  br label %do.body1074

do.body1074:                                      ; preds = %do.end1073
  %bits1075 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1
  %604 = load i8, ptr %bits1075, align 1
  %conv1076 = zext i8 %604 to i32
  %605 = load i64, ptr %hold, align 8
  %sh_prom1077 = zext i32 %conv1076 to i64
  %shr1078 = lshr i64 %605, %sh_prom1077
  store i64 %shr1078, ptr %hold, align 8
  %bits1079 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1
  %606 = load i8, ptr %bits1079, align 1
  %conv1080 = zext i8 %606 to i32
  %607 = load i32, ptr %bits, align 4
  %sub1081 = sub i32 %607, %conv1080
  store i32 %sub1081, ptr %bits, align 4
  br label %do.end1083

do.end1083:                                       ; preds = %do.body1074
  store i32 0, ptr %len, align 4
  %608 = load i64, ptr %hold, align 8
  %conv1084 = trunc i64 %608 to i32
  %and1085 = and i32 %conv1084, 7
  %add1086 = add i32 3, %and1085
  store i32 %add1086, ptr %copy, align 4
  br label %do.body1087

do.body1087:                                      ; preds = %do.end1083
  %609 = load i64, ptr %hold, align 8
  %shr1088 = lshr i64 %609, 3
  store i64 %shr1088, ptr %hold, align 8
  %610 = load i32, ptr %bits, align 4
  %sub1089 = sub i32 %610, 3
  store i32 %sub1089, ptr %bits, align 4
  br label %do.end1091

do.end1091:                                       ; preds = %do.body1087
  br label %if.end1136

if.else1092:                                      ; preds = %if.else1043
  br label %do.body1093

do.body1093:                                      ; preds = %if.else1092
  br label %while.cond1094

while.cond1094:                                   ; preds = %do.end1114, %do.body1093
  %611 = load i32, ptr %bits, align 4
  %bits1095 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1
  %612 = load i8, ptr %bits1095, align 1
  %conv1096 = zext i8 %612 to i32
  %add1097 = add nsw i32 %conv1096, 7
  %cmp1098 = icmp ult i32 %611, %add1097
  br i1 %cmp1098, label %while.body1100, label %while.end1115

while.body1100:                                   ; preds = %while.cond1094
  br label %do.body1101

do.body1101:                                      ; preds = %while.body1100
  %613 = load i32, ptr %have, align 4
  %cmp1102 = icmp eq i32 %613, 0
  br i1 %cmp1102, label %if.then1104, label %if.end1105

if.then1104:                                      ; preds = %do.body1101
  br label %inf_leave

if.end1105:                                       ; preds = %do.body1101
  %614 = load i32, ptr %have, align 4
  %dec1106 = add i32 %614, -1
  store i32 %dec1106, ptr %have, align 4
  %615 = load ptr, ptr %next, align 8
  %incdec.ptr1107 = getelementptr inbounds i8, ptr %615, i32 1
  store ptr %incdec.ptr1107, ptr %next, align 8
  %616 = load i8, ptr %615, align 1
  %conv1108 = zext i8 %616 to i64
  %617 = load i32, ptr %bits, align 4
  %sh_prom1109 = zext i32 %617 to i64
  %shl1110 = shl i64 %conv1108, %sh_prom1109
  %618 = load i64, ptr %hold, align 8
  %add1111 = add i64 %618, %shl1110
  store i64 %add1111, ptr %hold, align 8
  %619 = load i32, ptr %bits, align 4
  %add1112 = add i32 %619, 8
  store i32 %add1112, ptr %bits, align 4
  br label %do.end1114

do.end1114:                                       ; preds = %if.end1105
  br label %while.cond1094, !llvm.loop !25

while.end1115:                                    ; preds = %while.cond1094
  br label %do.end1117

do.end1117:                                       ; preds = %while.end1115
  br label %do.body1118

do.body1118:                                      ; preds = %do.end1117
  %bits1119 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1
  %620 = load i8, ptr %bits1119, align 1
  %conv1120 = zext i8 %620 to i32
  %621 = load i64, ptr %hold, align 8
  %sh_prom1121 = zext i32 %conv1120 to i64
  %shr1122 = lshr i64 %621, %sh_prom1121
  store i64 %shr1122, ptr %hold, align 8
  %bits1123 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1
  %622 = load i8, ptr %bits1123, align 1
  %conv1124 = zext i8 %622 to i32
  %623 = load i32, ptr %bits, align 4
  %sub1125 = sub i32 %623, %conv1124
  store i32 %sub1125, ptr %bits, align 4
  br label %do.end1127

do.end1127:                                       ; preds = %do.body1118
  store i32 0, ptr %len, align 4
  %624 = load i64, ptr %hold, align 8
  %conv1128 = trunc i64 %624 to i32
  %and1129 = and i32 %conv1128, 127
  %add1130 = add i32 11, %and1129
  store i32 %add1130, ptr %copy, align 4
  br label %do.body1131

do.body1131:                                      ; preds = %do.end1127
  %625 = load i64, ptr %hold, align 8
  %shr1132 = lshr i64 %625, 7
  store i64 %shr1132, ptr %hold, align 8
  %626 = load i32, ptr %bits, align 4
  %sub1133 = sub i32 %626, 7
  store i32 %sub1133, ptr %bits, align 4
  br label %do.end1135

do.end1135:                                       ; preds = %do.body1131
  br label %if.end1136

if.end1136:                                       ; preds = %do.end1135, %do.end1091
  br label %if.end1137

if.end1137:                                       ; preds = %if.end1136, %do.end1042
  %627 = load ptr, ptr %state, align 8
  %have1138 = getelementptr inbounds %struct.inflate_state, ptr %627, i32 0, i32 26
  %628 = load i32, ptr %have1138, align 4
  %629 = load i32, ptr %copy, align 4
  %add1139 = add i32 %628, %629
  %630 = load ptr, ptr %state, align 8
  %nlen1140 = getelementptr inbounds %struct.inflate_state, ptr %630, i32 0, i32 24
  %631 = load i32, ptr %nlen1140, align 4
  %632 = load ptr, ptr %state, align 8
  %ndist1141 = getelementptr inbounds %struct.inflate_state, ptr %632, i32 0, i32 25
  %633 = load i32, ptr %ndist1141, align 8
  %add1142 = add i32 %631, %633
  %cmp1143 = icmp ugt i32 %add1139, %add1142
  br i1 %cmp1143, label %if.then1145, label %if.end1148

if.then1145:                                      ; preds = %if.end1137
  %634 = load ptr, ptr %strm.addr, align 8
  %msg1146 = getelementptr inbounds %struct.z_stream_s, ptr %634, i32 0, i32 6
  store ptr @.str.10, ptr %msg1146, align 8
  %635 = load ptr, ptr %state, align 8
  %mode1147 = getelementptr inbounds %struct.inflate_state, ptr %635, i32 0, i32 0
  store i32 27, ptr %mode1147, align 8
  br label %while.end1161

if.end1148:                                       ; preds = %if.end1137
  br label %while.cond1149

while.cond1149:                                   ; preds = %while.body1152, %if.end1148
  %636 = load i32, ptr %copy, align 4
  %dec1150 = add i32 %636, -1
  store i32 %dec1150, ptr %copy, align 4
  %tobool1151 = icmp ne i32 %636, 0
  br i1 %tobool1151, label %while.body1152, label %while.end1159

while.body1152:                                   ; preds = %while.cond1149
  %637 = load i32, ptr %len, align 4
  %conv1153 = trunc i32 %637 to i16
  %638 = load ptr, ptr %state, align 8
  %lens1154 = getelementptr inbounds %struct.inflate_state, ptr %638, i32 0, i32 28
  %639 = load ptr, ptr %state, align 8
  %have1155 = getelementptr inbounds %struct.inflate_state, ptr %639, i32 0, i32 26
  %640 = load i32, ptr %have1155, align 4
  %inc1156 = add i32 %640, 1
  store i32 %inc1156, ptr %have1155, align 4
  %idxprom1157 = zext i32 %640 to i64
  %arrayidx1158 = getelementptr inbounds [320 x i16], ptr %lens1154, i64 0, i64 %idxprom1157
  store i16 %conv1153, ptr %arrayidx1158, align 2
  br label %while.cond1149, !llvm.loop !26

while.end1159:                                    ; preds = %while.cond1149
  br label %if.end1160

if.end1160:                                       ; preds = %while.end1159, %do.end974
  br label %while.cond900, !llvm.loop !27

while.end1161:                                    ; preds = %if.then1145, %if.then1025, %while.cond900
  %641 = load ptr, ptr %state, align 8
  %mode1162 = getelementptr inbounds %struct.inflate_state, ptr %641, i32 0, i32 0
  %642 = load i32, ptr %mode1162, align 8
  %cmp1163 = icmp eq i32 %642, 27
  br i1 %cmp1163, label %if.then1165, label %if.end1166

if.then1165:                                      ; preds = %while.end1161
  br label %sw.epilog1772

if.end1166:                                       ; preds = %while.end1161
  %643 = load ptr, ptr %state, align 8
  %codes1167 = getelementptr inbounds %struct.inflate_state, ptr %643, i32 0, i32 30
  %arraydecay1168 = getelementptr inbounds [2048 x %struct.code], ptr %codes1167, i64 0, i64 0
  %644 = load ptr, ptr %state, align 8
  %next1169 = getelementptr inbounds %struct.inflate_state, ptr %644, i32 0, i32 27
  store ptr %arraydecay1168, ptr %next1169, align 8
  %645 = load ptr, ptr %state, align 8
  %next1170 = getelementptr inbounds %struct.inflate_state, ptr %645, i32 0, i32 27
  %646 = load ptr, ptr %next1170, align 8
  %647 = load ptr, ptr %state, align 8
  %lencode1171 = getelementptr inbounds %struct.inflate_state, ptr %647, i32 0, i32 19
  store ptr %646, ptr %lencode1171, align 8
  %648 = load ptr, ptr %state, align 8
  %lenbits1172 = getelementptr inbounds %struct.inflate_state, ptr %648, i32 0, i32 21
  store i32 9, ptr %lenbits1172, align 8
  %649 = load ptr, ptr %state, align 8
  %lens1173 = getelementptr inbounds %struct.inflate_state, ptr %649, i32 0, i32 28
  %arraydecay1174 = getelementptr inbounds [320 x i16], ptr %lens1173, i64 0, i64 0
  %650 = load ptr, ptr %state, align 8
  %nlen1175 = getelementptr inbounds %struct.inflate_state, ptr %650, i32 0, i32 24
  %651 = load i32, ptr %nlen1175, align 4
  %652 = load ptr, ptr %state, align 8
  %next1176 = getelementptr inbounds %struct.inflate_state, ptr %652, i32 0, i32 27
  %653 = load ptr, ptr %state, align 8
  %lenbits1177 = getelementptr inbounds %struct.inflate_state, ptr %653, i32 0, i32 21
  %654 = load ptr, ptr %state, align 8
  %work1178 = getelementptr inbounds %struct.inflate_state, ptr %654, i32 0, i32 29
  %arraydecay1179 = getelementptr inbounds [288 x i16], ptr %work1178, i64 0, i64 0
  %call1180 = call i32 @inflate_table(i32 noundef 1, ptr noundef %arraydecay1174, i32 noundef %651, ptr noundef %next1176, ptr noundef %lenbits1177, ptr noundef %arraydecay1179)
  store i32 %call1180, ptr %ret, align 4
  %655 = load i32, ptr %ret, align 4
  %tobool1181 = icmp ne i32 %655, 0
  br i1 %tobool1181, label %if.then1182, label %if.end1185

if.then1182:                                      ; preds = %if.end1166
  %656 = load ptr, ptr %strm.addr, align 8
  %msg1183 = getelementptr inbounds %struct.z_stream_s, ptr %656, i32 0, i32 6
  store ptr @.str.11, ptr %msg1183, align 8
  %657 = load ptr, ptr %state, align 8
  %mode1184 = getelementptr inbounds %struct.inflate_state, ptr %657, i32 0, i32 0
  store i32 27, ptr %mode1184, align 8
  br label %sw.epilog1772

if.end1185:                                       ; preds = %if.end1166
  %658 = load ptr, ptr %state, align 8
  %next1186 = getelementptr inbounds %struct.inflate_state, ptr %658, i32 0, i32 27
  %659 = load ptr, ptr %next1186, align 8
  %660 = load ptr, ptr %state, align 8
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %660, i32 0, i32 20
  store ptr %659, ptr %distcode, align 8
  %661 = load ptr, ptr %state, align 8
  %distbits = getelementptr inbounds %struct.inflate_state, ptr %661, i32 0, i32 22
  store i32 6, ptr %distbits, align 4
  %662 = load ptr, ptr %state, align 8
  %lens1187 = getelementptr inbounds %struct.inflate_state, ptr %662, i32 0, i32 28
  %arraydecay1188 = getelementptr inbounds [320 x i16], ptr %lens1187, i64 0, i64 0
  %663 = load ptr, ptr %state, align 8
  %nlen1189 = getelementptr inbounds %struct.inflate_state, ptr %663, i32 0, i32 24
  %664 = load i32, ptr %nlen1189, align 4
  %idx.ext1190 = zext i32 %664 to i64
  %add.ptr1191 = getelementptr inbounds i16, ptr %arraydecay1188, i64 %idx.ext1190
  %665 = load ptr, ptr %state, align 8
  %ndist1192 = getelementptr inbounds %struct.inflate_state, ptr %665, i32 0, i32 25
  %666 = load i32, ptr %ndist1192, align 8
  %667 = load ptr, ptr %state, align 8
  %next1193 = getelementptr inbounds %struct.inflate_state, ptr %667, i32 0, i32 27
  %668 = load ptr, ptr %state, align 8
  %distbits1194 = getelementptr inbounds %struct.inflate_state, ptr %668, i32 0, i32 22
  %669 = load ptr, ptr %state, align 8
  %work1195 = getelementptr inbounds %struct.inflate_state, ptr %669, i32 0, i32 29
  %arraydecay1196 = getelementptr inbounds [288 x i16], ptr %work1195, i64 0, i64 0
  %call1197 = call i32 @inflate_table(i32 noundef 2, ptr noundef %add.ptr1191, i32 noundef %666, ptr noundef %next1193, ptr noundef %distbits1194, ptr noundef %arraydecay1196)
  store i32 %call1197, ptr %ret, align 4
  %670 = load i32, ptr %ret, align 4
  %tobool1198 = icmp ne i32 %670, 0
  br i1 %tobool1198, label %if.then1199, label %if.end1202

if.then1199:                                      ; preds = %if.end1185
  %671 = load ptr, ptr %strm.addr, align 8
  %msg1200 = getelementptr inbounds %struct.z_stream_s, ptr %671, i32 0, i32 6
  store ptr @.str.12, ptr %msg1200, align 8
  %672 = load ptr, ptr %state, align 8
  %mode1201 = getelementptr inbounds %struct.inflate_state, ptr %672, i32 0, i32 0
  store i32 27, ptr %mode1201, align 8
  br label %sw.epilog1772

if.end1202:                                       ; preds = %if.end1185
  %673 = load ptr, ptr %state, align 8
  %mode1203 = getelementptr inbounds %struct.inflate_state, ptr %673, i32 0, i32 0
  store i32 18, ptr %mode1203, align 8
  br label %sw.bb1204

sw.bb1204:                                        ; preds = %for.cond, %if.end1202
  %674 = load i32, ptr %have, align 4
  %cmp1205 = icmp uge i32 %674, 6
  br i1 %cmp1205, label %land.lhs.true1207, label %if.end1229

land.lhs.true1207:                                ; preds = %sw.bb1204
  %675 = load i32, ptr %left, align 4
  %cmp1208 = icmp uge i32 %675, 258
  br i1 %cmp1208, label %if.then1210, label %if.end1229

if.then1210:                                      ; preds = %land.lhs.true1207
  br label %do.body1211

do.body1211:                                      ; preds = %if.then1210
  %676 = load ptr, ptr %put, align 8
  %677 = load ptr, ptr %strm.addr, align 8
  %next_out1212 = getelementptr inbounds %struct.z_stream_s, ptr %677, i32 0, i32 3
  store ptr %676, ptr %next_out1212, align 8
  %678 = load i32, ptr %left, align 4
  %679 = load ptr, ptr %strm.addr, align 8
  %avail_out1213 = getelementptr inbounds %struct.z_stream_s, ptr %679, i32 0, i32 4
  store i32 %678, ptr %avail_out1213, align 8
  %680 = load ptr, ptr %next, align 8
  %681 = load ptr, ptr %strm.addr, align 8
  %next_in1214 = getelementptr inbounds %struct.z_stream_s, ptr %681, i32 0, i32 0
  store ptr %680, ptr %next_in1214, align 8
  %682 = load i32, ptr %have, align 4
  %683 = load ptr, ptr %strm.addr, align 8
  %avail_in1215 = getelementptr inbounds %struct.z_stream_s, ptr %683, i32 0, i32 1
  store i32 %682, ptr %avail_in1215, align 8
  %684 = load i64, ptr %hold, align 8
  %685 = load ptr, ptr %state, align 8
  %hold1216 = getelementptr inbounds %struct.inflate_state, ptr %685, i32 0, i32 14
  store i64 %684, ptr %hold1216, align 8
  %686 = load i32, ptr %bits, align 4
  %687 = load ptr, ptr %state, align 8
  %bits1217 = getelementptr inbounds %struct.inflate_state, ptr %687, i32 0, i32 15
  store i32 %686, ptr %bits1217, align 8
  br label %do.end1219

do.end1219:                                       ; preds = %do.body1211
  %688 = load ptr, ptr %strm.addr, align 8
  %689 = load i32, ptr %out, align 4
  call void @inflate_fast(ptr noundef %688, i32 noundef %689)
  br label %do.body1220

do.body1220:                                      ; preds = %do.end1219
  %690 = load ptr, ptr %strm.addr, align 8
  %next_out1221 = getelementptr inbounds %struct.z_stream_s, ptr %690, i32 0, i32 3
  %691 = load ptr, ptr %next_out1221, align 8
  store ptr %691, ptr %put, align 8
  %692 = load ptr, ptr %strm.addr, align 8
  %avail_out1222 = getelementptr inbounds %struct.z_stream_s, ptr %692, i32 0, i32 4
  %693 = load i32, ptr %avail_out1222, align 8
  store i32 %693, ptr %left, align 4
  %694 = load ptr, ptr %strm.addr, align 8
  %next_in1223 = getelementptr inbounds %struct.z_stream_s, ptr %694, i32 0, i32 0
  %695 = load ptr, ptr %next_in1223, align 8
  store ptr %695, ptr %next, align 8
  %696 = load ptr, ptr %strm.addr, align 8
  %avail_in1224 = getelementptr inbounds %struct.z_stream_s, ptr %696, i32 0, i32 1
  %697 = load i32, ptr %avail_in1224, align 8
  store i32 %697, ptr %have, align 4
  %698 = load ptr, ptr %state, align 8
  %hold1225 = getelementptr inbounds %struct.inflate_state, ptr %698, i32 0, i32 14
  %699 = load i64, ptr %hold1225, align 8
  store i64 %699, ptr %hold, align 8
  %700 = load ptr, ptr %state, align 8
  %bits1226 = getelementptr inbounds %struct.inflate_state, ptr %700, i32 0, i32 15
  %701 = load i32, ptr %bits1226, align 8
  store i32 %701, ptr %bits, align 4
  br label %do.end1228

do.end1228:                                       ; preds = %do.body1220
  br label %sw.epilog1772

if.end1229:                                       ; preds = %land.lhs.true1207, %sw.bb1204
  br label %for.cond1230

for.cond1230:                                     ; preds = %do.end1258, %if.end1229
  %702 = load ptr, ptr %state, align 8
  %lencode1231 = getelementptr inbounds %struct.inflate_state, ptr %702, i32 0, i32 19
  %703 = load ptr, ptr %lencode1231, align 8
  %704 = load i64, ptr %hold, align 8
  %conv1232 = trunc i64 %704 to i32
  %705 = load ptr, ptr %state, align 8
  %lenbits1233 = getelementptr inbounds %struct.inflate_state, ptr %705, i32 0, i32 21
  %706 = load i32, ptr %lenbits1233, align 8
  %shl1234 = shl i32 1, %706
  %sub1235 = sub i32 %shl1234, 1
  %and1236 = and i32 %conv1232, %sub1235
  %idxprom1237 = zext i32 %and1236 to i64
  %arrayidx1238 = getelementptr inbounds %struct.code, ptr %703, i64 %idxprom1237
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %this, ptr align 2 %arrayidx1238, i64 4, i1 false)
  %bits1239 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1
  %707 = load i8, ptr %bits1239, align 1
  %conv1240 = zext i8 %707 to i32
  %708 = load i32, ptr %bits, align 4
  %cmp1241 = icmp ule i32 %conv1240, %708
  br i1 %cmp1241, label %if.then1243, label %if.end1244

if.then1243:                                      ; preds = %for.cond1230
  br label %for.end1259

if.end1244:                                       ; preds = %for.cond1230
  br label %do.body1245

do.body1245:                                      ; preds = %if.end1244
  %709 = load i32, ptr %have, align 4
  %cmp1246 = icmp eq i32 %709, 0
  br i1 %cmp1246, label %if.then1248, label %if.end1249

if.then1248:                                      ; preds = %do.body1245
  br label %inf_leave

if.end1249:                                       ; preds = %do.body1245
  %710 = load i32, ptr %have, align 4
  %dec1250 = add i32 %710, -1
  store i32 %dec1250, ptr %have, align 4
  %711 = load ptr, ptr %next, align 8
  %incdec.ptr1251 = getelementptr inbounds i8, ptr %711, i32 1
  store ptr %incdec.ptr1251, ptr %next, align 8
  %712 = load i8, ptr %711, align 1
  %conv1252 = zext i8 %712 to i64
  %713 = load i32, ptr %bits, align 4
  %sh_prom1253 = zext i32 %713 to i64
  %shl1254 = shl i64 %conv1252, %sh_prom1253
  %714 = load i64, ptr %hold, align 8
  %add1255 = add i64 %714, %shl1254
  store i64 %add1255, ptr %hold, align 8
  %715 = load i32, ptr %bits, align 4
  %add1256 = add i32 %715, 8
  store i32 %add1256, ptr %bits, align 4
  br label %do.end1258

do.end1258:                                       ; preds = %if.end1249
  br label %for.cond1230

for.end1259:                                      ; preds = %if.then1243
  %op = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0
  %716 = load i8, ptr %op, align 2
  %conv1260 = zext i8 %716 to i32
  %tobool1261 = icmp ne i32 %conv1260, 0
  br i1 %tobool1261, label %land.lhs.true1262, label %if.end1322

land.lhs.true1262:                                ; preds = %for.end1259
  %op1263 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0
  %717 = load i8, ptr %op1263, align 2
  %conv1264 = zext i8 %717 to i32
  %and1265 = and i32 %conv1264, 240
  %cmp1266 = icmp eq i32 %and1265, 0
  br i1 %cmp1266, label %if.then1268, label %if.end1322

if.then1268:                                      ; preds = %land.lhs.true1262
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %last, ptr align 2 %this, i64 4, i1 false)
  br label %for.cond1269

for.cond1269:                                     ; preds = %do.end1310, %if.then1268
  %718 = load ptr, ptr %state, align 8
  %lencode1270 = getelementptr inbounds %struct.inflate_state, ptr %718, i32 0, i32 19
  %719 = load ptr, ptr %lencode1270, align 8
  %val1271 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 2
  %720 = load i16, ptr %val1271, align 2
  %conv1272 = zext i16 %720 to i32
  %721 = load i64, ptr %hold, align 8
  %conv1273 = trunc i64 %721 to i32
  %bits1274 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %722 = load i8, ptr %bits1274, align 1
  %conv1275 = zext i8 %722 to i32
  %op1276 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 0
  %723 = load i8, ptr %op1276, align 2
  %conv1277 = zext i8 %723 to i32
  %add1278 = add nsw i32 %conv1275, %conv1277
  %shl1279 = shl i32 1, %add1278
  %sub1280 = sub i32 %shl1279, 1
  %and1281 = and i32 %conv1273, %sub1280
  %bits1282 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %724 = load i8, ptr %bits1282, align 1
  %conv1283 = zext i8 %724 to i32
  %shr1284 = lshr i32 %and1281, %conv1283
  %add1285 = add i32 %conv1272, %shr1284
  %idxprom1286 = zext i32 %add1285 to i64
  %arrayidx1287 = getelementptr inbounds %struct.code, ptr %719, i64 %idxprom1286
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %this, ptr align 2 %arrayidx1287, i64 4, i1 false)
  %bits1288 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %725 = load i8, ptr %bits1288, align 1
  %conv1289 = zext i8 %725 to i32
  %bits1290 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1
  %726 = load i8, ptr %bits1290, align 1
  %conv1291 = zext i8 %726 to i32
  %add1292 = add nsw i32 %conv1289, %conv1291
  %727 = load i32, ptr %bits, align 4
  %cmp1293 = icmp ule i32 %add1292, %727
  br i1 %cmp1293, label %if.then1295, label %if.end1296

if.then1295:                                      ; preds = %for.cond1269
  br label %for.end1311

if.end1296:                                       ; preds = %for.cond1269
  br label %do.body1297

do.body1297:                                      ; preds = %if.end1296
  %728 = load i32, ptr %have, align 4
  %cmp1298 = icmp eq i32 %728, 0
  br i1 %cmp1298, label %if.then1300, label %if.end1301

if.then1300:                                      ; preds = %do.body1297
  br label %inf_leave

if.end1301:                                       ; preds = %do.body1297
  %729 = load i32, ptr %have, align 4
  %dec1302 = add i32 %729, -1
  store i32 %dec1302, ptr %have, align 4
  %730 = load ptr, ptr %next, align 8
  %incdec.ptr1303 = getelementptr inbounds i8, ptr %730, i32 1
  store ptr %incdec.ptr1303, ptr %next, align 8
  %731 = load i8, ptr %730, align 1
  %conv1304 = zext i8 %731 to i64
  %732 = load i32, ptr %bits, align 4
  %sh_prom1305 = zext i32 %732 to i64
  %shl1306 = shl i64 %conv1304, %sh_prom1305
  %733 = load i64, ptr %hold, align 8
  %add1307 = add i64 %733, %shl1306
  store i64 %add1307, ptr %hold, align 8
  %734 = load i32, ptr %bits, align 4
  %add1308 = add i32 %734, 8
  store i32 %add1308, ptr %bits, align 4
  br label %do.end1310

do.end1310:                                       ; preds = %if.end1301
  br label %for.cond1269

for.end1311:                                      ; preds = %if.then1295
  br label %do.body1312

do.body1312:                                      ; preds = %for.end1311
  %bits1313 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %735 = load i8, ptr %bits1313, align 1
  %conv1314 = zext i8 %735 to i32
  %736 = load i64, ptr %hold, align 8
  %sh_prom1315 = zext i32 %conv1314 to i64
  %shr1316 = lshr i64 %736, %sh_prom1315
  store i64 %shr1316, ptr %hold, align 8
  %bits1317 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %737 = load i8, ptr %bits1317, align 1
  %conv1318 = zext i8 %737 to i32
  %738 = load i32, ptr %bits, align 4
  %sub1319 = sub i32 %738, %conv1318
  store i32 %sub1319, ptr %bits, align 4
  br label %do.end1321

do.end1321:                                       ; preds = %do.body1312
  br label %if.end1322

if.end1322:                                       ; preds = %do.end1321, %land.lhs.true1262, %for.end1259
  br label %do.body1323

do.body1323:                                      ; preds = %if.end1322
  %bits1324 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1
  %739 = load i8, ptr %bits1324, align 1
  %conv1325 = zext i8 %739 to i32
  %740 = load i64, ptr %hold, align 8
  %sh_prom1326 = zext i32 %conv1325 to i64
  %shr1327 = lshr i64 %740, %sh_prom1326
  store i64 %shr1327, ptr %hold, align 8
  %bits1328 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1
  %741 = load i8, ptr %bits1328, align 1
  %conv1329 = zext i8 %741 to i32
  %742 = load i32, ptr %bits, align 4
  %sub1330 = sub i32 %742, %conv1329
  store i32 %sub1330, ptr %bits, align 4
  br label %do.end1332

do.end1332:                                       ; preds = %do.body1323
  %val1333 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2
  %743 = load i16, ptr %val1333, align 2
  %conv1334 = zext i16 %743 to i32
  %744 = load ptr, ptr %state, align 8
  %length1335 = getelementptr inbounds %struct.inflate_state, ptr %744, i32 0, i32 16
  store i32 %conv1334, ptr %length1335, align 4
  %op1336 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0
  %745 = load i8, ptr %op1336, align 2
  %conv1337 = zext i8 %745 to i32
  %cmp1338 = icmp eq i32 %conv1337, 0
  br i1 %cmp1338, label %if.then1340, label %if.end1342

if.then1340:                                      ; preds = %do.end1332
  %746 = load ptr, ptr %state, align 8
  %mode1341 = getelementptr inbounds %struct.inflate_state, ptr %746, i32 0, i32 0
  store i32 23, ptr %mode1341, align 8
  br label %sw.epilog1772

if.end1342:                                       ; preds = %do.end1332
  %op1343 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0
  %747 = load i8, ptr %op1343, align 2
  %conv1344 = zext i8 %747 to i32
  %and1345 = and i32 %conv1344, 32
  %tobool1346 = icmp ne i32 %and1345, 0
  br i1 %tobool1346, label %if.then1347, label %if.end1349

if.then1347:                                      ; preds = %if.end1342
  %748 = load ptr, ptr %state, align 8
  %mode1348 = getelementptr inbounds %struct.inflate_state, ptr %748, i32 0, i32 0
  store i32 11, ptr %mode1348, align 8
  br label %sw.epilog1772

if.end1349:                                       ; preds = %if.end1342
  %op1350 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0
  %749 = load i8, ptr %op1350, align 2
  %conv1351 = zext i8 %749 to i32
  %and1352 = and i32 %conv1351, 64
  %tobool1353 = icmp ne i32 %and1352, 0
  br i1 %tobool1353, label %if.then1354, label %if.end1357

if.then1354:                                      ; preds = %if.end1349
  %750 = load ptr, ptr %strm.addr, align 8
  %msg1355 = getelementptr inbounds %struct.z_stream_s, ptr %750, i32 0, i32 6
  store ptr @.str.13, ptr %msg1355, align 8
  %751 = load ptr, ptr %state, align 8
  %mode1356 = getelementptr inbounds %struct.inflate_state, ptr %751, i32 0, i32 0
  store i32 27, ptr %mode1356, align 8
  br label %sw.epilog1772

if.end1357:                                       ; preds = %if.end1349
  %op1358 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0
  %752 = load i8, ptr %op1358, align 2
  %conv1359 = zext i8 %752 to i32
  %and1360 = and i32 %conv1359, 15
  %753 = load ptr, ptr %state, align 8
  %extra1361 = getelementptr inbounds %struct.inflate_state, ptr %753, i32 0, i32 18
  store i32 %and1360, ptr %extra1361, align 4
  %754 = load ptr, ptr %state, align 8
  %mode1362 = getelementptr inbounds %struct.inflate_state, ptr %754, i32 0, i32 0
  store i32 19, ptr %mode1362, align 8
  br label %sw.bb1363

sw.bb1363:                                        ; preds = %for.cond, %if.end1357
  %755 = load ptr, ptr %state, align 8
  %extra1364 = getelementptr inbounds %struct.inflate_state, ptr %755, i32 0, i32 18
  %756 = load i32, ptr %extra1364, align 4
  %tobool1365 = icmp ne i32 %756, 0
  br i1 %tobool1365, label %if.then1366, label %if.end1405

if.then1366:                                      ; preds = %sw.bb1363
  br label %do.body1367

do.body1367:                                      ; preds = %if.then1366
  br label %while.cond1368

while.cond1368:                                   ; preds = %do.end1386, %do.body1367
  %757 = load i32, ptr %bits, align 4
  %758 = load ptr, ptr %state, align 8
  %extra1369 = getelementptr inbounds %struct.inflate_state, ptr %758, i32 0, i32 18
  %759 = load i32, ptr %extra1369, align 4
  %cmp1370 = icmp ult i32 %757, %759
  br i1 %cmp1370, label %while.body1372, label %while.end1387

while.body1372:                                   ; preds = %while.cond1368
  br label %do.body1373

do.body1373:                                      ; preds = %while.body1372
  %760 = load i32, ptr %have, align 4
  %cmp1374 = icmp eq i32 %760, 0
  br i1 %cmp1374, label %if.then1376, label %if.end1377

if.then1376:                                      ; preds = %do.body1373
  br label %inf_leave

if.end1377:                                       ; preds = %do.body1373
  %761 = load i32, ptr %have, align 4
  %dec1378 = add i32 %761, -1
  store i32 %dec1378, ptr %have, align 4
  %762 = load ptr, ptr %next, align 8
  %incdec.ptr1379 = getelementptr inbounds i8, ptr %762, i32 1
  store ptr %incdec.ptr1379, ptr %next, align 8
  %763 = load i8, ptr %762, align 1
  %conv1380 = zext i8 %763 to i64
  %764 = load i32, ptr %bits, align 4
  %sh_prom1381 = zext i32 %764 to i64
  %shl1382 = shl i64 %conv1380, %sh_prom1381
  %765 = load i64, ptr %hold, align 8
  %add1383 = add i64 %765, %shl1382
  store i64 %add1383, ptr %hold, align 8
  %766 = load i32, ptr %bits, align 4
  %add1384 = add i32 %766, 8
  store i32 %add1384, ptr %bits, align 4
  br label %do.end1386

do.end1386:                                       ; preds = %if.end1377
  br label %while.cond1368, !llvm.loop !28

while.end1387:                                    ; preds = %while.cond1368
  br label %do.end1389

do.end1389:                                       ; preds = %while.end1387
  %767 = load i64, ptr %hold, align 8
  %conv1390 = trunc i64 %767 to i32
  %768 = load ptr, ptr %state, align 8
  %extra1391 = getelementptr inbounds %struct.inflate_state, ptr %768, i32 0, i32 18
  %769 = load i32, ptr %extra1391, align 4
  %shl1392 = shl i32 1, %769
  %sub1393 = sub i32 %shl1392, 1
  %and1394 = and i32 %conv1390, %sub1393
  %770 = load ptr, ptr %state, align 8
  %length1395 = getelementptr inbounds %struct.inflate_state, ptr %770, i32 0, i32 16
  %771 = load i32, ptr %length1395, align 4
  %add1396 = add i32 %771, %and1394
  store i32 %add1396, ptr %length1395, align 4
  br label %do.body1397

do.body1397:                                      ; preds = %do.end1389
  %772 = load ptr, ptr %state, align 8
  %extra1398 = getelementptr inbounds %struct.inflate_state, ptr %772, i32 0, i32 18
  %773 = load i32, ptr %extra1398, align 4
  %774 = load i64, ptr %hold, align 8
  %sh_prom1399 = zext i32 %773 to i64
  %shr1400 = lshr i64 %774, %sh_prom1399
  store i64 %shr1400, ptr %hold, align 8
  %775 = load ptr, ptr %state, align 8
  %extra1401 = getelementptr inbounds %struct.inflate_state, ptr %775, i32 0, i32 18
  %776 = load i32, ptr %extra1401, align 4
  %777 = load i32, ptr %bits, align 4
  %sub1402 = sub i32 %777, %776
  store i32 %sub1402, ptr %bits, align 4
  br label %do.end1404

do.end1404:                                       ; preds = %do.body1397
  br label %if.end1405

if.end1405:                                       ; preds = %do.end1404, %sw.bb1363
  %778 = load ptr, ptr %state, align 8
  %mode1406 = getelementptr inbounds %struct.inflate_state, ptr %778, i32 0, i32 0
  store i32 20, ptr %mode1406, align 8
  br label %sw.bb1407

sw.bb1407:                                        ; preds = %for.cond, %if.end1405
  br label %for.cond1408

for.cond1408:                                     ; preds = %do.end1436, %sw.bb1407
  %779 = load ptr, ptr %state, align 8
  %distcode1409 = getelementptr inbounds %struct.inflate_state, ptr %779, i32 0, i32 20
  %780 = load ptr, ptr %distcode1409, align 8
  %781 = load i64, ptr %hold, align 8
  %conv1410 = trunc i64 %781 to i32
  %782 = load ptr, ptr %state, align 8
  %distbits1411 = getelementptr inbounds %struct.inflate_state, ptr %782, i32 0, i32 22
  %783 = load i32, ptr %distbits1411, align 4
  %shl1412 = shl i32 1, %783
  %sub1413 = sub i32 %shl1412, 1
  %and1414 = and i32 %conv1410, %sub1413
  %idxprom1415 = zext i32 %and1414 to i64
  %arrayidx1416 = getelementptr inbounds %struct.code, ptr %780, i64 %idxprom1415
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %this, ptr align 2 %arrayidx1416, i64 4, i1 false)
  %bits1417 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1
  %784 = load i8, ptr %bits1417, align 1
  %conv1418 = zext i8 %784 to i32
  %785 = load i32, ptr %bits, align 4
  %cmp1419 = icmp ule i32 %conv1418, %785
  br i1 %cmp1419, label %if.then1421, label %if.end1422

if.then1421:                                      ; preds = %for.cond1408
  br label %for.end1437

if.end1422:                                       ; preds = %for.cond1408
  br label %do.body1423

do.body1423:                                      ; preds = %if.end1422
  %786 = load i32, ptr %have, align 4
  %cmp1424 = icmp eq i32 %786, 0
  br i1 %cmp1424, label %if.then1426, label %if.end1427

if.then1426:                                      ; preds = %do.body1423
  br label %inf_leave

if.end1427:                                       ; preds = %do.body1423
  %787 = load i32, ptr %have, align 4
  %dec1428 = add i32 %787, -1
  store i32 %dec1428, ptr %have, align 4
  %788 = load ptr, ptr %next, align 8
  %incdec.ptr1429 = getelementptr inbounds i8, ptr %788, i32 1
  store ptr %incdec.ptr1429, ptr %next, align 8
  %789 = load i8, ptr %788, align 1
  %conv1430 = zext i8 %789 to i64
  %790 = load i32, ptr %bits, align 4
  %sh_prom1431 = zext i32 %790 to i64
  %shl1432 = shl i64 %conv1430, %sh_prom1431
  %791 = load i64, ptr %hold, align 8
  %add1433 = add i64 %791, %shl1432
  store i64 %add1433, ptr %hold, align 8
  %792 = load i32, ptr %bits, align 4
  %add1434 = add i32 %792, 8
  store i32 %add1434, ptr %bits, align 4
  br label %do.end1436

do.end1436:                                       ; preds = %if.end1427
  br label %for.cond1408

for.end1437:                                      ; preds = %if.then1421
  %op1438 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0
  %793 = load i8, ptr %op1438, align 2
  %conv1439 = zext i8 %793 to i32
  %and1440 = and i32 %conv1439, 240
  %cmp1441 = icmp eq i32 %and1440, 0
  br i1 %cmp1441, label %if.then1443, label %if.end1497

if.then1443:                                      ; preds = %for.end1437
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %last, ptr align 2 %this, i64 4, i1 false)
  br label %for.cond1444

for.cond1444:                                     ; preds = %do.end1485, %if.then1443
  %794 = load ptr, ptr %state, align 8
  %distcode1445 = getelementptr inbounds %struct.inflate_state, ptr %794, i32 0, i32 20
  %795 = load ptr, ptr %distcode1445, align 8
  %val1446 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 2
  %796 = load i16, ptr %val1446, align 2
  %conv1447 = zext i16 %796 to i32
  %797 = load i64, ptr %hold, align 8
  %conv1448 = trunc i64 %797 to i32
  %bits1449 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %798 = load i8, ptr %bits1449, align 1
  %conv1450 = zext i8 %798 to i32
  %op1451 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 0
  %799 = load i8, ptr %op1451, align 2
  %conv1452 = zext i8 %799 to i32
  %add1453 = add nsw i32 %conv1450, %conv1452
  %shl1454 = shl i32 1, %add1453
  %sub1455 = sub i32 %shl1454, 1
  %and1456 = and i32 %conv1448, %sub1455
  %bits1457 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %800 = load i8, ptr %bits1457, align 1
  %conv1458 = zext i8 %800 to i32
  %shr1459 = lshr i32 %and1456, %conv1458
  %add1460 = add i32 %conv1447, %shr1459
  %idxprom1461 = zext i32 %add1460 to i64
  %arrayidx1462 = getelementptr inbounds %struct.code, ptr %795, i64 %idxprom1461
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %this, ptr align 2 %arrayidx1462, i64 4, i1 false)
  %bits1463 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %801 = load i8, ptr %bits1463, align 1
  %conv1464 = zext i8 %801 to i32
  %bits1465 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1
  %802 = load i8, ptr %bits1465, align 1
  %conv1466 = zext i8 %802 to i32
  %add1467 = add nsw i32 %conv1464, %conv1466
  %803 = load i32, ptr %bits, align 4
  %cmp1468 = icmp ule i32 %add1467, %803
  br i1 %cmp1468, label %if.then1470, label %if.end1471

if.then1470:                                      ; preds = %for.cond1444
  br label %for.end1486

if.end1471:                                       ; preds = %for.cond1444
  br label %do.body1472

do.body1472:                                      ; preds = %if.end1471
  %804 = load i32, ptr %have, align 4
  %cmp1473 = icmp eq i32 %804, 0
  br i1 %cmp1473, label %if.then1475, label %if.end1476

if.then1475:                                      ; preds = %do.body1472
  br label %inf_leave

if.end1476:                                       ; preds = %do.body1472
  %805 = load i32, ptr %have, align 4
  %dec1477 = add i32 %805, -1
  store i32 %dec1477, ptr %have, align 4
  %806 = load ptr, ptr %next, align 8
  %incdec.ptr1478 = getelementptr inbounds i8, ptr %806, i32 1
  store ptr %incdec.ptr1478, ptr %next, align 8
  %807 = load i8, ptr %806, align 1
  %conv1479 = zext i8 %807 to i64
  %808 = load i32, ptr %bits, align 4
  %sh_prom1480 = zext i32 %808 to i64
  %shl1481 = shl i64 %conv1479, %sh_prom1480
  %809 = load i64, ptr %hold, align 8
  %add1482 = add i64 %809, %shl1481
  store i64 %add1482, ptr %hold, align 8
  %810 = load i32, ptr %bits, align 4
  %add1483 = add i32 %810, 8
  store i32 %add1483, ptr %bits, align 4
  br label %do.end1485

do.end1485:                                       ; preds = %if.end1476
  br label %for.cond1444

for.end1486:                                      ; preds = %if.then1470
  br label %do.body1487

do.body1487:                                      ; preds = %for.end1486
  %bits1488 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %811 = load i8, ptr %bits1488, align 1
  %conv1489 = zext i8 %811 to i32
  %812 = load i64, ptr %hold, align 8
  %sh_prom1490 = zext i32 %conv1489 to i64
  %shr1491 = lshr i64 %812, %sh_prom1490
  store i64 %shr1491, ptr %hold, align 8
  %bits1492 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %813 = load i8, ptr %bits1492, align 1
  %conv1493 = zext i8 %813 to i32
  %814 = load i32, ptr %bits, align 4
  %sub1494 = sub i32 %814, %conv1493
  store i32 %sub1494, ptr %bits, align 4
  br label %do.end1496

do.end1496:                                       ; preds = %do.body1487
  br label %if.end1497

if.end1497:                                       ; preds = %do.end1496, %for.end1437
  br label %do.body1498

do.body1498:                                      ; preds = %if.end1497
  %bits1499 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1
  %815 = load i8, ptr %bits1499, align 1
  %conv1500 = zext i8 %815 to i32
  %816 = load i64, ptr %hold, align 8
  %sh_prom1501 = zext i32 %conv1500 to i64
  %shr1502 = lshr i64 %816, %sh_prom1501
  store i64 %shr1502, ptr %hold, align 8
  %bits1503 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1
  %817 = load i8, ptr %bits1503, align 1
  %conv1504 = zext i8 %817 to i32
  %818 = load i32, ptr %bits, align 4
  %sub1505 = sub i32 %818, %conv1504
  store i32 %sub1505, ptr %bits, align 4
  br label %do.end1507

do.end1507:                                       ; preds = %do.body1498
  %op1508 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0
  %819 = load i8, ptr %op1508, align 2
  %conv1509 = zext i8 %819 to i32
  %and1510 = and i32 %conv1509, 64
  %tobool1511 = icmp ne i32 %and1510, 0
  br i1 %tobool1511, label %if.then1512, label %if.end1515

if.then1512:                                      ; preds = %do.end1507
  %820 = load ptr, ptr %strm.addr, align 8
  %msg1513 = getelementptr inbounds %struct.z_stream_s, ptr %820, i32 0, i32 6
  store ptr @.str.14, ptr %msg1513, align 8
  %821 = load ptr, ptr %state, align 8
  %mode1514 = getelementptr inbounds %struct.inflate_state, ptr %821, i32 0, i32 0
  store i32 27, ptr %mode1514, align 8
  br label %sw.epilog1772

if.end1515:                                       ; preds = %do.end1507
  %val1516 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2
  %822 = load i16, ptr %val1516, align 2
  %conv1517 = zext i16 %822 to i32
  %823 = load ptr, ptr %state, align 8
  %offset = getelementptr inbounds %struct.inflate_state, ptr %823, i32 0, i32 17
  store i32 %conv1517, ptr %offset, align 8
  %op1518 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0
  %824 = load i8, ptr %op1518, align 2
  %conv1519 = zext i8 %824 to i32
  %and1520 = and i32 %conv1519, 15
  %825 = load ptr, ptr %state, align 8
  %extra1521 = getelementptr inbounds %struct.inflate_state, ptr %825, i32 0, i32 18
  store i32 %and1520, ptr %extra1521, align 4
  %826 = load ptr, ptr %state, align 8
  %mode1522 = getelementptr inbounds %struct.inflate_state, ptr %826, i32 0, i32 0
  store i32 21, ptr %mode1522, align 8
  br label %sw.bb1523

sw.bb1523:                                        ; preds = %for.cond, %if.end1515
  %827 = load ptr, ptr %state, align 8
  %extra1524 = getelementptr inbounds %struct.inflate_state, ptr %827, i32 0, i32 18
  %828 = load i32, ptr %extra1524, align 4
  %tobool1525 = icmp ne i32 %828, 0
  br i1 %tobool1525, label %if.then1526, label %if.end1565

if.then1526:                                      ; preds = %sw.bb1523
  br label %do.body1527

do.body1527:                                      ; preds = %if.then1526
  br label %while.cond1528

while.cond1528:                                   ; preds = %do.end1546, %do.body1527
  %829 = load i32, ptr %bits, align 4
  %830 = load ptr, ptr %state, align 8
  %extra1529 = getelementptr inbounds %struct.inflate_state, ptr %830, i32 0, i32 18
  %831 = load i32, ptr %extra1529, align 4
  %cmp1530 = icmp ult i32 %829, %831
  br i1 %cmp1530, label %while.body1532, label %while.end1547

while.body1532:                                   ; preds = %while.cond1528
  br label %do.body1533

do.body1533:                                      ; preds = %while.body1532
  %832 = load i32, ptr %have, align 4
  %cmp1534 = icmp eq i32 %832, 0
  br i1 %cmp1534, label %if.then1536, label %if.end1537

if.then1536:                                      ; preds = %do.body1533
  br label %inf_leave

if.end1537:                                       ; preds = %do.body1533
  %833 = load i32, ptr %have, align 4
  %dec1538 = add i32 %833, -1
  store i32 %dec1538, ptr %have, align 4
  %834 = load ptr, ptr %next, align 8
  %incdec.ptr1539 = getelementptr inbounds i8, ptr %834, i32 1
  store ptr %incdec.ptr1539, ptr %next, align 8
  %835 = load i8, ptr %834, align 1
  %conv1540 = zext i8 %835 to i64
  %836 = load i32, ptr %bits, align 4
  %sh_prom1541 = zext i32 %836 to i64
  %shl1542 = shl i64 %conv1540, %sh_prom1541
  %837 = load i64, ptr %hold, align 8
  %add1543 = add i64 %837, %shl1542
  store i64 %add1543, ptr %hold, align 8
  %838 = load i32, ptr %bits, align 4
  %add1544 = add i32 %838, 8
  store i32 %add1544, ptr %bits, align 4
  br label %do.end1546

do.end1546:                                       ; preds = %if.end1537
  br label %while.cond1528, !llvm.loop !29

while.end1547:                                    ; preds = %while.cond1528
  br label %do.end1549

do.end1549:                                       ; preds = %while.end1547
  %839 = load i64, ptr %hold, align 8
  %conv1550 = trunc i64 %839 to i32
  %840 = load ptr, ptr %state, align 8
  %extra1551 = getelementptr inbounds %struct.inflate_state, ptr %840, i32 0, i32 18
  %841 = load i32, ptr %extra1551, align 4
  %shl1552 = shl i32 1, %841
  %sub1553 = sub i32 %shl1552, 1
  %and1554 = and i32 %conv1550, %sub1553
  %842 = load ptr, ptr %state, align 8
  %offset1555 = getelementptr inbounds %struct.inflate_state, ptr %842, i32 0, i32 17
  %843 = load i32, ptr %offset1555, align 8
  %add1556 = add i32 %843, %and1554
  store i32 %add1556, ptr %offset1555, align 8
  br label %do.body1557

do.body1557:                                      ; preds = %do.end1549
  %844 = load ptr, ptr %state, align 8
  %extra1558 = getelementptr inbounds %struct.inflate_state, ptr %844, i32 0, i32 18
  %845 = load i32, ptr %extra1558, align 4
  %846 = load i64, ptr %hold, align 8
  %sh_prom1559 = zext i32 %845 to i64
  %shr1560 = lshr i64 %846, %sh_prom1559
  store i64 %shr1560, ptr %hold, align 8
  %847 = load ptr, ptr %state, align 8
  %extra1561 = getelementptr inbounds %struct.inflate_state, ptr %847, i32 0, i32 18
  %848 = load i32, ptr %extra1561, align 4
  %849 = load i32, ptr %bits, align 4
  %sub1562 = sub i32 %849, %848
  store i32 %sub1562, ptr %bits, align 4
  br label %do.end1564

do.end1564:                                       ; preds = %do.body1557
  br label %if.end1565

if.end1565:                                       ; preds = %do.end1564, %sw.bb1523
  %850 = load ptr, ptr %state, align 8
  %offset1566 = getelementptr inbounds %struct.inflate_state, ptr %850, i32 0, i32 17
  %851 = load i32, ptr %offset1566, align 8
  %852 = load ptr, ptr %state, align 8
  %whave = getelementptr inbounds %struct.inflate_state, ptr %852, i32 0, i32 11
  %853 = load i32, ptr %whave, align 8
  %854 = load i32, ptr %out, align 4
  %add1567 = add i32 %853, %854
  %855 = load i32, ptr %left, align 4
  %sub1568 = sub i32 %add1567, %855
  %cmp1569 = icmp ugt i32 %851, %sub1568
  br i1 %cmp1569, label %if.then1571, label %if.end1574

if.then1571:                                      ; preds = %if.end1565
  %856 = load ptr, ptr %strm.addr, align 8
  %msg1572 = getelementptr inbounds %struct.z_stream_s, ptr %856, i32 0, i32 6
  store ptr @.str.15, ptr %msg1572, align 8
  %857 = load ptr, ptr %state, align 8
  %mode1573 = getelementptr inbounds %struct.inflate_state, ptr %857, i32 0, i32 0
  store i32 27, ptr %mode1573, align 8
  br label %sw.epilog1772

if.end1574:                                       ; preds = %if.end1565
  %858 = load ptr, ptr %state, align 8
  %mode1575 = getelementptr inbounds %struct.inflate_state, ptr %858, i32 0, i32 0
  store i32 22, ptr %mode1575, align 8
  br label %sw.bb1576

sw.bb1576:                                        ; preds = %for.cond, %if.end1574
  %859 = load i32, ptr %left, align 4
  %cmp1577 = icmp eq i32 %859, 0
  br i1 %cmp1577, label %if.then1579, label %if.end1580

if.then1579:                                      ; preds = %sw.bb1576
  br label %inf_leave

if.end1580:                                       ; preds = %sw.bb1576
  %860 = load i32, ptr %out, align 4
  %861 = load i32, ptr %left, align 4
  %sub1581 = sub i32 %860, %861
  store i32 %sub1581, ptr %copy, align 4
  %862 = load ptr, ptr %state, align 8
  %offset1582 = getelementptr inbounds %struct.inflate_state, ptr %862, i32 0, i32 17
  %863 = load i32, ptr %offset1582, align 8
  %864 = load i32, ptr %copy, align 4
  %cmp1583 = icmp ugt i32 %863, %864
  br i1 %cmp1583, label %if.then1585, label %if.else1609

if.then1585:                                      ; preds = %if.end1580
  %865 = load ptr, ptr %state, align 8
  %offset1586 = getelementptr inbounds %struct.inflate_state, ptr %865, i32 0, i32 17
  %866 = load i32, ptr %offset1586, align 8
  %867 = load i32, ptr %copy, align 4
  %sub1587 = sub i32 %866, %867
  store i32 %sub1587, ptr %copy, align 4
  %868 = load i32, ptr %copy, align 4
  %869 = load ptr, ptr %state, align 8
  %write = getelementptr inbounds %struct.inflate_state, ptr %869, i32 0, i32 12
  %870 = load i32, ptr %write, align 4
  %cmp1588 = icmp ugt i32 %868, %870
  br i1 %cmp1588, label %if.then1590, label %if.else1596

if.then1590:                                      ; preds = %if.then1585
  %871 = load ptr, ptr %state, align 8
  %write1591 = getelementptr inbounds %struct.inflate_state, ptr %871, i32 0, i32 12
  %872 = load i32, ptr %write1591, align 4
  %873 = load i32, ptr %copy, align 4
  %sub1592 = sub i32 %873, %872
  store i32 %sub1592, ptr %copy, align 4
  %874 = load ptr, ptr %state, align 8
  %window = getelementptr inbounds %struct.inflate_state, ptr %874, i32 0, i32 13
  %875 = load ptr, ptr %window, align 8
  %876 = load ptr, ptr %state, align 8
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %876, i32 0, i32 10
  %877 = load i32, ptr %wsize, align 4
  %878 = load i32, ptr %copy, align 4
  %sub1593 = sub i32 %877, %878
  %idx.ext1594 = zext i32 %sub1593 to i64
  %add.ptr1595 = getelementptr inbounds i8, ptr %875, i64 %idx.ext1594
  store ptr %add.ptr1595, ptr %from, align 8
  br label %if.end1602

if.else1596:                                      ; preds = %if.then1585
  %879 = load ptr, ptr %state, align 8
  %window1597 = getelementptr inbounds %struct.inflate_state, ptr %879, i32 0, i32 13
  %880 = load ptr, ptr %window1597, align 8
  %881 = load ptr, ptr %state, align 8
  %write1598 = getelementptr inbounds %struct.inflate_state, ptr %881, i32 0, i32 12
  %882 = load i32, ptr %write1598, align 4
  %883 = load i32, ptr %copy, align 4
  %sub1599 = sub i32 %882, %883
  %idx.ext1600 = zext i32 %sub1599 to i64
  %add.ptr1601 = getelementptr inbounds i8, ptr %880, i64 %idx.ext1600
  store ptr %add.ptr1601, ptr %from, align 8
  br label %if.end1602

if.end1602:                                       ; preds = %if.else1596, %if.then1590
  %884 = load i32, ptr %copy, align 4
  %885 = load ptr, ptr %state, align 8
  %length1603 = getelementptr inbounds %struct.inflate_state, ptr %885, i32 0, i32 16
  %886 = load i32, ptr %length1603, align 4
  %cmp1604 = icmp ugt i32 %884, %886
  br i1 %cmp1604, label %if.then1606, label %if.end1608

if.then1606:                                      ; preds = %if.end1602
  %887 = load ptr, ptr %state, align 8
  %length1607 = getelementptr inbounds %struct.inflate_state, ptr %887, i32 0, i32 16
  %888 = load i32, ptr %length1607, align 4
  store i32 %888, ptr %copy, align 4
  br label %if.end1608

if.end1608:                                       ; preds = %if.then1606, %if.end1602
  br label %if.end1614

if.else1609:                                      ; preds = %if.end1580
  %889 = load ptr, ptr %put, align 8
  %890 = load ptr, ptr %state, align 8
  %offset1610 = getelementptr inbounds %struct.inflate_state, ptr %890, i32 0, i32 17
  %891 = load i32, ptr %offset1610, align 8
  %idx.ext1611 = zext i32 %891 to i64
  %idx.neg = sub i64 0, %idx.ext1611
  %add.ptr1612 = getelementptr inbounds i8, ptr %889, i64 %idx.neg
  store ptr %add.ptr1612, ptr %from, align 8
  %892 = load ptr, ptr %state, align 8
  %length1613 = getelementptr inbounds %struct.inflate_state, ptr %892, i32 0, i32 16
  %893 = load i32, ptr %length1613, align 4
  store i32 %893, ptr %copy, align 4
  br label %if.end1614

if.end1614:                                       ; preds = %if.else1609, %if.end1608
  %894 = load i32, ptr %copy, align 4
  %895 = load i32, ptr %left, align 4
  %cmp1615 = icmp ugt i32 %894, %895
  br i1 %cmp1615, label %if.then1617, label %if.end1618

if.then1617:                                      ; preds = %if.end1614
  %896 = load i32, ptr %left, align 4
  store i32 %896, ptr %copy, align 4
  br label %if.end1618

if.end1618:                                       ; preds = %if.then1617, %if.end1614
  %897 = load i32, ptr %copy, align 4
  %898 = load i32, ptr %left, align 4
  %sub1619 = sub i32 %898, %897
  store i32 %sub1619, ptr %left, align 4
  %899 = load i32, ptr %copy, align 4
  %900 = load ptr, ptr %state, align 8
  %length1620 = getelementptr inbounds %struct.inflate_state, ptr %900, i32 0, i32 16
  %901 = load i32, ptr %length1620, align 4
  %sub1621 = sub i32 %901, %899
  store i32 %sub1621, ptr %length1620, align 4
  br label %do.body1622

do.body1622:                                      ; preds = %do.cond1625, %if.end1618
  %902 = load ptr, ptr %from, align 8
  %incdec.ptr1623 = getelementptr inbounds i8, ptr %902, i32 1
  store ptr %incdec.ptr1623, ptr %from, align 8
  %903 = load i8, ptr %902, align 1
  %904 = load ptr, ptr %put, align 8
  %incdec.ptr1624 = getelementptr inbounds i8, ptr %904, i32 1
  store ptr %incdec.ptr1624, ptr %put, align 8
  store i8 %903, ptr %904, align 1
  br label %do.cond1625

do.cond1625:                                      ; preds = %do.body1622
  %905 = load i32, ptr %copy, align 4
  %dec1626 = add i32 %905, -1
  store i32 %dec1626, ptr %copy, align 4
  %tobool1627 = icmp ne i32 %dec1626, 0
  br i1 %tobool1627, label %do.body1622, label %do.end1628, !llvm.loop !30

do.end1628:                                       ; preds = %do.cond1625
  %906 = load ptr, ptr %state, align 8
  %length1629 = getelementptr inbounds %struct.inflate_state, ptr %906, i32 0, i32 16
  %907 = load i32, ptr %length1629, align 4
  %cmp1630 = icmp eq i32 %907, 0
  br i1 %cmp1630, label %if.then1632, label %if.end1634

if.then1632:                                      ; preds = %do.end1628
  %908 = load ptr, ptr %state, align 8
  %mode1633 = getelementptr inbounds %struct.inflate_state, ptr %908, i32 0, i32 0
  store i32 18, ptr %mode1633, align 8
  br label %if.end1634

if.end1634:                                       ; preds = %if.then1632, %do.end1628
  br label %sw.epilog1772

sw.bb1635:                                        ; preds = %for.cond
  %909 = load i32, ptr %left, align 4
  %cmp1636 = icmp eq i32 %909, 0
  br i1 %cmp1636, label %if.then1638, label %if.end1639

if.then1638:                                      ; preds = %sw.bb1635
  br label %inf_leave

if.end1639:                                       ; preds = %sw.bb1635
  %910 = load ptr, ptr %state, align 8
  %length1640 = getelementptr inbounds %struct.inflate_state, ptr %910, i32 0, i32 16
  %911 = load i32, ptr %length1640, align 4
  %conv1641 = trunc i32 %911 to i8
  %912 = load ptr, ptr %put, align 8
  %incdec.ptr1642 = getelementptr inbounds i8, ptr %912, i32 1
  store ptr %incdec.ptr1642, ptr %put, align 8
  store i8 %conv1641, ptr %912, align 1
  %913 = load i32, ptr %left, align 4
  %dec1643 = add i32 %913, -1
  store i32 %dec1643, ptr %left, align 4
  %914 = load ptr, ptr %state, align 8
  %mode1644 = getelementptr inbounds %struct.inflate_state, ptr %914, i32 0, i32 0
  store i32 18, ptr %mode1644, align 8
  br label %sw.epilog1772

sw.bb1645:                                        ; preds = %for.cond
  %915 = load ptr, ptr %state, align 8
  %wrap1646 = getelementptr inbounds %struct.inflate_state, ptr %915, i32 0, i32 2
  %916 = load i32, ptr %wrap1646, align 8
  %tobool1647 = icmp ne i32 %916, 0
  br i1 %tobool1647, label %if.then1648, label %if.end1724

if.then1648:                                      ; preds = %sw.bb1645
  br label %do.body1649

do.body1649:                                      ; preds = %if.then1648
  br label %while.cond1650

while.cond1650:                                   ; preds = %do.end1667, %do.body1649
  %917 = load i32, ptr %bits, align 4
  %cmp1651 = icmp ult i32 %917, 32
  br i1 %cmp1651, label %while.body1653, label %while.end1668

while.body1653:                                   ; preds = %while.cond1650
  br label %do.body1654

do.body1654:                                      ; preds = %while.body1653
  %918 = load i32, ptr %have, align 4
  %cmp1655 = icmp eq i32 %918, 0
  br i1 %cmp1655, label %if.then1657, label %if.end1658

if.then1657:                                      ; preds = %do.body1654
  br label %inf_leave

if.end1658:                                       ; preds = %do.body1654
  %919 = load i32, ptr %have, align 4
  %dec1659 = add i32 %919, -1
  store i32 %dec1659, ptr %have, align 4
  %920 = load ptr, ptr %next, align 8
  %incdec.ptr1660 = getelementptr inbounds i8, ptr %920, i32 1
  store ptr %incdec.ptr1660, ptr %next, align 8
  %921 = load i8, ptr %920, align 1
  %conv1661 = zext i8 %921 to i64
  %922 = load i32, ptr %bits, align 4
  %sh_prom1662 = zext i32 %922 to i64
  %shl1663 = shl i64 %conv1661, %sh_prom1662
  %923 = load i64, ptr %hold, align 8
  %add1664 = add i64 %923, %shl1663
  store i64 %add1664, ptr %hold, align 8
  %924 = load i32, ptr %bits, align 4
  %add1665 = add i32 %924, 8
  store i32 %add1665, ptr %bits, align 4
  br label %do.end1667

do.end1667:                                       ; preds = %if.end1658
  br label %while.cond1650, !llvm.loop !31

while.end1668:                                    ; preds = %while.cond1650
  br label %do.end1670

do.end1670:                                       ; preds = %while.end1668
  %925 = load i32, ptr %left, align 4
  %926 = load i32, ptr %out, align 4
  %sub1671 = sub i32 %926, %925
  store i32 %sub1671, ptr %out, align 4
  %927 = load i32, ptr %out, align 4
  %conv1672 = zext i32 %927 to i64
  %928 = load ptr, ptr %strm.addr, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %928, i32 0, i32 5
  %929 = load i64, ptr %total_out, align 8
  %add1673 = add i64 %929, %conv1672
  store i64 %add1673, ptr %total_out, align 8
  %930 = load i32, ptr %out, align 4
  %conv1674 = zext i32 %930 to i64
  %931 = load ptr, ptr %state, align 8
  %total = getelementptr inbounds %struct.inflate_state, ptr %931, i32 0, i32 7
  %932 = load i64, ptr %total, align 8
  %add1675 = add i64 %932, %conv1674
  store i64 %add1675, ptr %total, align 8
  %933 = load i32, ptr %out, align 4
  %tobool1676 = icmp ne i32 %933, 0
  br i1 %tobool1676, label %if.then1677, label %if.end1696

if.then1677:                                      ; preds = %do.end1670
  %934 = load ptr, ptr %state, align 8
  %flags1678 = getelementptr inbounds %struct.inflate_state, ptr %934, i32 0, i32 4
  %935 = load i32, ptr %flags1678, align 8
  %tobool1679 = icmp ne i32 %935, 0
  br i1 %tobool1679, label %cond.true1680, label %cond.false1686

cond.true1680:                                    ; preds = %if.then1677
  %936 = load ptr, ptr %state, align 8
  %check1681 = getelementptr inbounds %struct.inflate_state, ptr %936, i32 0, i32 6
  %937 = load i64, ptr %check1681, align 8
  %938 = load ptr, ptr %put, align 8
  %939 = load i32, ptr %out, align 4
  %idx.ext1682 = zext i32 %939 to i64
  %idx.neg1683 = sub i64 0, %idx.ext1682
  %add.ptr1684 = getelementptr inbounds i8, ptr %938, i64 %idx.neg1683
  %940 = load i32, ptr %out, align 4
  %call1685 = call i64 @crc32(i64 noundef %937, ptr noundef %add.ptr1684, i32 noundef %940)
  br label %cond.end1692

cond.false1686:                                   ; preds = %if.then1677
  %941 = load ptr, ptr %state, align 8
  %check1687 = getelementptr inbounds %struct.inflate_state, ptr %941, i32 0, i32 6
  %942 = load i64, ptr %check1687, align 8
  %943 = load ptr, ptr %put, align 8
  %944 = load i32, ptr %out, align 4
  %idx.ext1688 = zext i32 %944 to i64
  %idx.neg1689 = sub i64 0, %idx.ext1688
  %add.ptr1690 = getelementptr inbounds i8, ptr %943, i64 %idx.neg1689
  %945 = load i32, ptr %out, align 4
  %call1691 = call i64 @adler32(i64 noundef %942, ptr noundef %add.ptr1690, i32 noundef %945)
  br label %cond.end1692

cond.end1692:                                     ; preds = %cond.false1686, %cond.true1680
  %cond1693 = phi i64 [ %call1685, %cond.true1680 ], [ %call1691, %cond.false1686 ]
  %946 = load ptr, ptr %state, align 8
  %check1694 = getelementptr inbounds %struct.inflate_state, ptr %946, i32 0, i32 6
  store i64 %cond1693, ptr %check1694, align 8
  %947 = load ptr, ptr %strm.addr, align 8
  %adler1695 = getelementptr inbounds %struct.z_stream_s, ptr %947, i32 0, i32 12
  store i64 %cond1693, ptr %adler1695, align 8
  br label %if.end1696

if.end1696:                                       ; preds = %cond.end1692, %do.end1670
  %948 = load i32, ptr %left, align 4
  store i32 %948, ptr %out, align 4
  %949 = load ptr, ptr %state, align 8
  %flags1697 = getelementptr inbounds %struct.inflate_state, ptr %949, i32 0, i32 4
  %950 = load i32, ptr %flags1697, align 8
  %tobool1698 = icmp ne i32 %950, 0
  br i1 %tobool1698, label %cond.true1699, label %cond.false1700

cond.true1699:                                    ; preds = %if.end1696
  %951 = load i64, ptr %hold, align 8
  br label %cond.end1712

cond.false1700:                                   ; preds = %if.end1696
  %952 = load i64, ptr %hold, align 8
  %shr1701 = lshr i64 %952, 24
  %and1702 = and i64 %shr1701, 255
  %953 = load i64, ptr %hold, align 8
  %shr1703 = lshr i64 %953, 8
  %and1704 = and i64 %shr1703, 65280
  %add1705 = add i64 %and1702, %and1704
  %954 = load i64, ptr %hold, align 8
  %and1706 = and i64 %954, 65280
  %shl1707 = shl i64 %and1706, 8
  %add1708 = add i64 %add1705, %shl1707
  %955 = load i64, ptr %hold, align 8
  %and1709 = and i64 %955, 255
  %shl1710 = shl i64 %and1709, 24
  %add1711 = add i64 %add1708, %shl1710
  br label %cond.end1712

cond.end1712:                                     ; preds = %cond.false1700, %cond.true1699
  %cond1713 = phi i64 [ %951, %cond.true1699 ], [ %add1711, %cond.false1700 ]
  %956 = load ptr, ptr %state, align 8
  %check1714 = getelementptr inbounds %struct.inflate_state, ptr %956, i32 0, i32 6
  %957 = load i64, ptr %check1714, align 8
  %cmp1715 = icmp ne i64 %cond1713, %957
  br i1 %cmp1715, label %if.then1717, label %if.end1720

if.then1717:                                      ; preds = %cond.end1712
  %958 = load ptr, ptr %strm.addr, align 8
  %msg1718 = getelementptr inbounds %struct.z_stream_s, ptr %958, i32 0, i32 6
  store ptr @.str.16, ptr %msg1718, align 8
  %959 = load ptr, ptr %state, align 8
  %mode1719 = getelementptr inbounds %struct.inflate_state, ptr %959, i32 0, i32 0
  store i32 27, ptr %mode1719, align 8
  br label %sw.epilog1772

if.end1720:                                       ; preds = %cond.end1712
  br label %do.body1721

do.body1721:                                      ; preds = %if.end1720
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %do.end1723

do.end1723:                                       ; preds = %do.body1721
  br label %if.end1724

if.end1724:                                       ; preds = %do.end1723, %sw.bb1645
  %960 = load ptr, ptr %state, align 8
  %mode1725 = getelementptr inbounds %struct.inflate_state, ptr %960, i32 0, i32 0
  store i32 25, ptr %mode1725, align 8
  br label %sw.bb1726

sw.bb1726:                                        ; preds = %for.cond, %if.end1724
  %961 = load ptr, ptr %state, align 8
  %wrap1727 = getelementptr inbounds %struct.inflate_state, ptr %961, i32 0, i32 2
  %962 = load i32, ptr %wrap1727, align 8
  %tobool1728 = icmp ne i32 %962, 0
  br i1 %tobool1728, label %land.lhs.true1729, label %if.end1766

land.lhs.true1729:                                ; preds = %sw.bb1726
  %963 = load ptr, ptr %state, align 8
  %flags1730 = getelementptr inbounds %struct.inflate_state, ptr %963, i32 0, i32 4
  %964 = load i32, ptr %flags1730, align 8
  %tobool1731 = icmp ne i32 %964, 0
  br i1 %tobool1731, label %if.then1732, label %if.end1766

if.then1732:                                      ; preds = %land.lhs.true1729
  br label %do.body1733

do.body1733:                                      ; preds = %if.then1732
  br label %while.cond1734

while.cond1734:                                   ; preds = %do.end1751, %do.body1733
  %965 = load i32, ptr %bits, align 4
  %cmp1735 = icmp ult i32 %965, 32
  br i1 %cmp1735, label %while.body1737, label %while.end1752

while.body1737:                                   ; preds = %while.cond1734
  br label %do.body1738

do.body1738:                                      ; preds = %while.body1737
  %966 = load i32, ptr %have, align 4
  %cmp1739 = icmp eq i32 %966, 0
  br i1 %cmp1739, label %if.then1741, label %if.end1742

if.then1741:                                      ; preds = %do.body1738
  br label %inf_leave

if.end1742:                                       ; preds = %do.body1738
  %967 = load i32, ptr %have, align 4
  %dec1743 = add i32 %967, -1
  store i32 %dec1743, ptr %have, align 4
  %968 = load ptr, ptr %next, align 8
  %incdec.ptr1744 = getelementptr inbounds i8, ptr %968, i32 1
  store ptr %incdec.ptr1744, ptr %next, align 8
  %969 = load i8, ptr %968, align 1
  %conv1745 = zext i8 %969 to i64
  %970 = load i32, ptr %bits, align 4
  %sh_prom1746 = zext i32 %970 to i64
  %shl1747 = shl i64 %conv1745, %sh_prom1746
  %971 = load i64, ptr %hold, align 8
  %add1748 = add i64 %971, %shl1747
  store i64 %add1748, ptr %hold, align 8
  %972 = load i32, ptr %bits, align 4
  %add1749 = add i32 %972, 8
  store i32 %add1749, ptr %bits, align 4
  br label %do.end1751

do.end1751:                                       ; preds = %if.end1742
  br label %while.cond1734, !llvm.loop !32

while.end1752:                                    ; preds = %while.cond1734
  br label %do.end1754

do.end1754:                                       ; preds = %while.end1752
  %973 = load i64, ptr %hold, align 8
  %974 = load ptr, ptr %state, align 8
  %total1755 = getelementptr inbounds %struct.inflate_state, ptr %974, i32 0, i32 7
  %975 = load i64, ptr %total1755, align 8
  %and1756 = and i64 %975, 4294967295
  %cmp1757 = icmp ne i64 %973, %and1756
  br i1 %cmp1757, label %if.then1759, label %if.end1762

if.then1759:                                      ; preds = %do.end1754
  %976 = load ptr, ptr %strm.addr, align 8
  %msg1760 = getelementptr inbounds %struct.z_stream_s, ptr %976, i32 0, i32 6
  store ptr @.str.17, ptr %msg1760, align 8
  %977 = load ptr, ptr %state, align 8
  %mode1761 = getelementptr inbounds %struct.inflate_state, ptr %977, i32 0, i32 0
  store i32 27, ptr %mode1761, align 8
  br label %sw.epilog1772

if.end1762:                                       ; preds = %do.end1754
  br label %do.body1763

do.body1763:                                      ; preds = %if.end1762
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %do.end1765

do.end1765:                                       ; preds = %do.body1763
  br label %if.end1766

if.end1766:                                       ; preds = %do.end1765, %land.lhs.true1729, %sw.bb1726
  %978 = load ptr, ptr %state, align 8
  %mode1767 = getelementptr inbounds %struct.inflate_state, ptr %978, i32 0, i32 0
  store i32 26, ptr %mode1767, align 8
  br label %sw.bb1768

sw.bb1768:                                        ; preds = %for.cond, %if.end1766
  store i32 1, ptr %ret, align 4
  br label %inf_leave

sw.bb1769:                                        ; preds = %for.cond
  store i32 -3, ptr %ret, align 4
  br label %inf_leave

sw.bb1770:                                        ; preds = %for.cond
  store i32 -4, ptr %retval, align 4
  br label %return

sw.bb1771:                                        ; preds = %for.cond
  br label %sw.default

sw.default:                                       ; preds = %for.cond, %sw.bb1771
  store i32 -2, ptr %retval, align 4
  br label %return

sw.epilog1772:                                    ; preds = %if.then1759, %if.then1717, %if.end1639, %if.end1634, %if.then1571, %if.then1512, %if.then1354, %if.then1347, %if.then1340, %do.end1228, %if.then1199, %if.then1182, %if.then1165, %if.then893, %if.then820, %if.end764, %if.end753, %if.then727, %do.end691, %do.end643, %if.end564, %if.then546, %if.then130, %if.then123, %do.end95, %if.then84, %if.then72, %if.then65, %do.end46, %if.then20
  br label %for.cond

inf_leave:                                        ; preds = %sw.bb1769, %sw.bb1768, %if.then1741, %if.then1657, %if.then1638, %if.then1579, %if.then1536, %if.then1475, %if.then1426, %if.then1376, %if.then1300, %if.then1248, %if.then1104, %if.then1060, %if.then998, %if.then951, %if.then926, %if.then841, %if.then775, %if.then752, %if.then709, %if.then654, %if.then630, %if.then578, %if.then528, %if.then503, %if.then456, %if.then436, %if.then394, %if.then382, %if.then278, %if.then223, %if.then171, %if.then105, %if.then27
  br label %do.body1773

do.body1773:                                      ; preds = %inf_leave
  %979 = load ptr, ptr %put, align 8
  %980 = load ptr, ptr %strm.addr, align 8
  %next_out1774 = getelementptr inbounds %struct.z_stream_s, ptr %980, i32 0, i32 3
  store ptr %979, ptr %next_out1774, align 8
  %981 = load i32, ptr %left, align 4
  %982 = load ptr, ptr %strm.addr, align 8
  %avail_out1775 = getelementptr inbounds %struct.z_stream_s, ptr %982, i32 0, i32 4
  store i32 %981, ptr %avail_out1775, align 8
  %983 = load ptr, ptr %next, align 8
  %984 = load ptr, ptr %strm.addr, align 8
  %next_in1776 = getelementptr inbounds %struct.z_stream_s, ptr %984, i32 0, i32 0
  store ptr %983, ptr %next_in1776, align 8
  %985 = load i32, ptr %have, align 4
  %986 = load ptr, ptr %strm.addr, align 8
  %avail_in1777 = getelementptr inbounds %struct.z_stream_s, ptr %986, i32 0, i32 1
  store i32 %985, ptr %avail_in1777, align 8
  %987 = load i64, ptr %hold, align 8
  %988 = load ptr, ptr %state, align 8
  %hold1778 = getelementptr inbounds %struct.inflate_state, ptr %988, i32 0, i32 14
  store i64 %987, ptr %hold1778, align 8
  %989 = load i32, ptr %bits, align 4
  %990 = load ptr, ptr %state, align 8
  %bits1779 = getelementptr inbounds %struct.inflate_state, ptr %990, i32 0, i32 15
  store i32 %989, ptr %bits1779, align 8
  br label %do.end1781

do.end1781:                                       ; preds = %do.body1773
  %991 = load ptr, ptr %state, align 8
  %wsize1782 = getelementptr inbounds %struct.inflate_state, ptr %991, i32 0, i32 10
  %992 = load i32, ptr %wsize1782, align 4
  %tobool1783 = icmp ne i32 %992, 0
  br i1 %tobool1783, label %if.then1792, label %lor.lhs.false1784

lor.lhs.false1784:                                ; preds = %do.end1781
  %993 = load ptr, ptr %state, align 8
  %mode1785 = getelementptr inbounds %struct.inflate_state, ptr %993, i32 0, i32 0
  %994 = load i32, ptr %mode1785, align 8
  %cmp1786 = icmp ult i32 %994, 24
  br i1 %cmp1786, label %land.lhs.true1788, label %if.end1798

land.lhs.true1788:                                ; preds = %lor.lhs.false1784
  %995 = load i32, ptr %out, align 4
  %996 = load ptr, ptr %strm.addr, align 8
  %avail_out1789 = getelementptr inbounds %struct.z_stream_s, ptr %996, i32 0, i32 4
  %997 = load i32, ptr %avail_out1789, align 8
  %cmp1790 = icmp ne i32 %995, %997
  br i1 %cmp1790, label %if.then1792, label %if.end1798

if.then1792:                                      ; preds = %land.lhs.true1788, %do.end1781
  %998 = load ptr, ptr %strm.addr, align 8
  %999 = load i32, ptr %out, align 4
  %call1793 = call i32 @updatewindow(ptr noundef %998, i32 noundef %999)
  %tobool1794 = icmp ne i32 %call1793, 0
  br i1 %tobool1794, label %if.then1795, label %if.end1797

if.then1795:                                      ; preds = %if.then1792
  %1000 = load ptr, ptr %state, align 8
  %mode1796 = getelementptr inbounds %struct.inflate_state, ptr %1000, i32 0, i32 0
  store i32 28, ptr %mode1796, align 8
  store i32 -4, ptr %retval, align 4
  br label %return

if.end1797:                                       ; preds = %if.then1792
  br label %if.end1798

if.end1798:                                       ; preds = %if.end1797, %land.lhs.true1788, %lor.lhs.false1784
  %1001 = load ptr, ptr %strm.addr, align 8
  %avail_in1799 = getelementptr inbounds %struct.z_stream_s, ptr %1001, i32 0, i32 1
  %1002 = load i32, ptr %avail_in1799, align 8
  %1003 = load i32, ptr %in, align 4
  %sub1800 = sub i32 %1003, %1002
  store i32 %sub1800, ptr %in, align 4
  %1004 = load ptr, ptr %strm.addr, align 8
  %avail_out1801 = getelementptr inbounds %struct.z_stream_s, ptr %1004, i32 0, i32 4
  %1005 = load i32, ptr %avail_out1801, align 8
  %1006 = load i32, ptr %out, align 4
  %sub1802 = sub i32 %1006, %1005
  store i32 %sub1802, ptr %out, align 4
  %1007 = load i32, ptr %in, align 4
  %conv1803 = zext i32 %1007 to i64
  %1008 = load ptr, ptr %strm.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %1008, i32 0, i32 2
  %1009 = load i64, ptr %total_in, align 8
  %add1804 = add i64 %1009, %conv1803
  store i64 %add1804, ptr %total_in, align 8
  %1010 = load i32, ptr %out, align 4
  %conv1805 = zext i32 %1010 to i64
  %1011 = load ptr, ptr %strm.addr, align 8
  %total_out1806 = getelementptr inbounds %struct.z_stream_s, ptr %1011, i32 0, i32 5
  %1012 = load i64, ptr %total_out1806, align 8
  %add1807 = add i64 %1012, %conv1805
  store i64 %add1807, ptr %total_out1806, align 8
  %1013 = load i32, ptr %out, align 4
  %conv1808 = zext i32 %1013 to i64
  %1014 = load ptr, ptr %state, align 8
  %total1809 = getelementptr inbounds %struct.inflate_state, ptr %1014, i32 0, i32 7
  %1015 = load i64, ptr %total1809, align 8
  %add1810 = add i64 %1015, %conv1808
  store i64 %add1810, ptr %total1809, align 8
  %1016 = load ptr, ptr %state, align 8
  %wrap1811 = getelementptr inbounds %struct.inflate_state, ptr %1016, i32 0, i32 2
  %1017 = load i32, ptr %wrap1811, align 8
  %tobool1812 = icmp ne i32 %1017, 0
  br i1 %tobool1812, label %land.lhs.true1813, label %if.end1836

land.lhs.true1813:                                ; preds = %if.end1798
  %1018 = load i32, ptr %out, align 4
  %tobool1814 = icmp ne i32 %1018, 0
  br i1 %tobool1814, label %if.then1815, label %if.end1836

if.then1815:                                      ; preds = %land.lhs.true1813
  %1019 = load ptr, ptr %state, align 8
  %flags1816 = getelementptr inbounds %struct.inflate_state, ptr %1019, i32 0, i32 4
  %1020 = load i32, ptr %flags1816, align 8
  %tobool1817 = icmp ne i32 %1020, 0
  br i1 %tobool1817, label %cond.true1818, label %cond.false1825

cond.true1818:                                    ; preds = %if.then1815
  %1021 = load ptr, ptr %state, align 8
  %check1819 = getelementptr inbounds %struct.inflate_state, ptr %1021, i32 0, i32 6
  %1022 = load i64, ptr %check1819, align 8
  %1023 = load ptr, ptr %strm.addr, align 8
  %next_out1820 = getelementptr inbounds %struct.z_stream_s, ptr %1023, i32 0, i32 3
  %1024 = load ptr, ptr %next_out1820, align 8
  %1025 = load i32, ptr %out, align 4
  %idx.ext1821 = zext i32 %1025 to i64
  %idx.neg1822 = sub i64 0, %idx.ext1821
  %add.ptr1823 = getelementptr inbounds i8, ptr %1024, i64 %idx.neg1822
  %1026 = load i32, ptr %out, align 4
  %call1824 = call i64 @crc32(i64 noundef %1022, ptr noundef %add.ptr1823, i32 noundef %1026)
  br label %cond.end1832

cond.false1825:                                   ; preds = %if.then1815
  %1027 = load ptr, ptr %state, align 8
  %check1826 = getelementptr inbounds %struct.inflate_state, ptr %1027, i32 0, i32 6
  %1028 = load i64, ptr %check1826, align 8
  %1029 = load ptr, ptr %strm.addr, align 8
  %next_out1827 = getelementptr inbounds %struct.z_stream_s, ptr %1029, i32 0, i32 3
  %1030 = load ptr, ptr %next_out1827, align 8
  %1031 = load i32, ptr %out, align 4
  %idx.ext1828 = zext i32 %1031 to i64
  %idx.neg1829 = sub i64 0, %idx.ext1828
  %add.ptr1830 = getelementptr inbounds i8, ptr %1030, i64 %idx.neg1829
  %1032 = load i32, ptr %out, align 4
  %call1831 = call i64 @adler32(i64 noundef %1028, ptr noundef %add.ptr1830, i32 noundef %1032)
  br label %cond.end1832

cond.end1832:                                     ; preds = %cond.false1825, %cond.true1818
  %cond1833 = phi i64 [ %call1824, %cond.true1818 ], [ %call1831, %cond.false1825 ]
  %1033 = load ptr, ptr %state, align 8
  %check1834 = getelementptr inbounds %struct.inflate_state, ptr %1033, i32 0, i32 6
  store i64 %cond1833, ptr %check1834, align 8
  %1034 = load ptr, ptr %strm.addr, align 8
  %adler1835 = getelementptr inbounds %struct.z_stream_s, ptr %1034, i32 0, i32 12
  store i64 %cond1833, ptr %adler1835, align 8
  br label %if.end1836

if.end1836:                                       ; preds = %cond.end1832, %land.lhs.true1813, %if.end1798
  %1035 = load ptr, ptr %state, align 8
  %bits1837 = getelementptr inbounds %struct.inflate_state, ptr %1035, i32 0, i32 15
  %1036 = load i32, ptr %bits1837, align 8
  %1037 = load ptr, ptr %state, align 8
  %last1838 = getelementptr inbounds %struct.inflate_state, ptr %1037, i32 0, i32 1
  %1038 = load i32, ptr %last1838, align 4
  %tobool1839 = icmp ne i32 %1038, 0
  %1039 = zext i1 %tobool1839 to i64
  %cond1840 = select i1 %tobool1839, i32 64, i32 0
  %add1841 = add i32 %1036, %cond1840
  %1040 = load ptr, ptr %state, align 8
  %mode1842 = getelementptr inbounds %struct.inflate_state, ptr %1040, i32 0, i32 0
  %1041 = load i32, ptr %mode1842, align 8
  %cmp1843 = icmp eq i32 %1041, 11
  %1042 = zext i1 %cmp1843 to i64
  %cond1845 = select i1 %cmp1843, i32 128, i32 0
  %add1846 = add i32 %add1841, %cond1845
  %1043 = load ptr, ptr %strm.addr, align 8
  %data_type = getelementptr inbounds %struct.z_stream_s, ptr %1043, i32 0, i32 11
  store i32 %add1846, ptr %data_type, align 8
  %1044 = load i32, ptr %in, align 4
  %cmp1847 = icmp eq i32 %1044, 0
  br i1 %cmp1847, label %land.lhs.true1849, label %lor.lhs.false1852

land.lhs.true1849:                                ; preds = %if.end1836
  %1045 = load i32, ptr %out, align 4
  %cmp1850 = icmp eq i32 %1045, 0
  br i1 %cmp1850, label %land.lhs.true1855, label %lor.lhs.false1852

lor.lhs.false1852:                                ; preds = %land.lhs.true1849, %if.end1836
  %1046 = load i32, ptr %flush.addr, align 4
  %cmp1853 = icmp eq i32 %1046, 4
  br i1 %cmp1853, label %land.lhs.true1855, label %if.end1859

land.lhs.true1855:                                ; preds = %lor.lhs.false1852, %land.lhs.true1849
  %1047 = load i32, ptr %ret, align 4
  %cmp1856 = icmp eq i32 %1047, 0
  br i1 %cmp1856, label %if.then1858, label %if.end1859

if.then1858:                                      ; preds = %land.lhs.true1855
  store i32 -5, ptr %ret, align 4
  br label %if.end1859

if.end1859:                                       ; preds = %if.then1858, %land.lhs.true1855, %lor.lhs.false1852
  %1048 = load i32, ptr %ret, align 4
  store i32 %1048, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end1859, %if.then1795, %sw.default, %sw.bb1770, %do.end621, %if.then
  %1049 = load i32, ptr %retval, align 4
  ret i32 %1049
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
  %0 = load ptr, ptr %state.addr, align 8
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 19
  store ptr @fixedtables.lenfix, ptr %lencode, align 8
  %1 = load ptr, ptr %state.addr, align 8
  %lenbits = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 21
  store i32 9, ptr %lenbits, align 8
  %2 = load ptr, ptr %state.addr, align 8
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %2, i32 0, i32 20
  store ptr @fixedtables.distfix, ptr %distcode, align 8
  %3 = load ptr, ptr %state.addr, align 8
  %distbits = getelementptr inbounds %struct.inflate_state, ptr %3, i32 0, i32 22
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
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %out.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  %copy = alloca i32, align 4
  %dist = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %out, ptr %out.addr, align 4
  %0 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %state1, align 8
  store ptr %1, ptr %state, align 8
  %2 = load ptr, ptr %state, align 8
  %window = getelementptr inbounds %struct.inflate_state, ptr %2, i32 0, i32 13
  %3 = load ptr, ptr %window, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %strm.addr, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %4, i32 0, i32 8
  %5 = load ptr, ptr %zalloc, align 8
  %6 = load ptr, ptr %strm.addr, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %6, i32 0, i32 10
  %7 = load ptr, ptr %opaque, align 8
  %8 = load ptr, ptr %state, align 8
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %8, i32 0, i32 9
  %9 = load i32, ptr %wbits, align 8
  %shl = shl i32 1, %9
  %call = call ptr %5(ptr noundef %7, i32 noundef %shl, i32 noundef 1)
  %10 = load ptr, ptr %state, align 8
  %window2 = getelementptr inbounds %struct.inflate_state, ptr %10, i32 0, i32 13
  store ptr %call, ptr %window2, align 8
  %11 = load ptr, ptr %state, align 8
  %window3 = getelementptr inbounds %struct.inflate_state, ptr %11, i32 0, i32 13
  %12 = load ptr, ptr %window3, align 8
  %cmp4 = icmp eq ptr %12, null
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %13 = load ptr, ptr %state, align 8
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %13, i32 0, i32 10
  %14 = load i32, ptr %wsize, align 4
  %cmp7 = icmp eq i32 %14, 0
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end6
  %15 = load ptr, ptr %state, align 8
  %wbits9 = getelementptr inbounds %struct.inflate_state, ptr %15, i32 0, i32 9
  %16 = load i32, ptr %wbits9, align 8
  %shl10 = shl i32 1, %16
  %17 = load ptr, ptr %state, align 8
  %wsize11 = getelementptr inbounds %struct.inflate_state, ptr %17, i32 0, i32 10
  store i32 %shl10, ptr %wsize11, align 4
  %18 = load ptr, ptr %state, align 8
  %write = getelementptr inbounds %struct.inflate_state, ptr %18, i32 0, i32 12
  store i32 0, ptr %write, align 4
  %19 = load ptr, ptr %state, align 8
  %whave = getelementptr inbounds %struct.inflate_state, ptr %19, i32 0, i32 11
  store i32 0, ptr %whave, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end6
  %20 = load i32, ptr %out.addr, align 4
  %21 = load ptr, ptr %strm.addr, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %21, i32 0, i32 4
  %22 = load i32, ptr %avail_out, align 8
  %sub = sub i32 %20, %22
  store i32 %sub, ptr %copy, align 4
  %23 = load i32, ptr %copy, align 4
  %24 = load ptr, ptr %state, align 8
  %wsize13 = getelementptr inbounds %struct.inflate_state, ptr %24, i32 0, i32 10
  %25 = load i32, ptr %wsize13, align 4
  %cmp14 = icmp uge i32 %23, %25
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end12
  %26 = load ptr, ptr %state, align 8
  %window16 = getelementptr inbounds %struct.inflate_state, ptr %26, i32 0, i32 13
  %27 = load ptr, ptr %window16, align 8
  %28 = load ptr, ptr %strm.addr, align 8
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %28, i32 0, i32 3
  %29 = load ptr, ptr %next_out, align 8
  %30 = load ptr, ptr %state, align 8
  %wsize17 = getelementptr inbounds %struct.inflate_state, ptr %30, i32 0, i32 10
  %31 = load i32, ptr %wsize17, align 4
  %idx.ext = zext i32 %31 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, ptr %29, i64 %idx.neg
  %32 = load ptr, ptr %state, align 8
  %wsize18 = getelementptr inbounds %struct.inflate_state, ptr %32, i32 0, i32 10
  %33 = load i32, ptr %wsize18, align 4
  %conv = zext i32 %33 to i64
  %34 = load ptr, ptr %state, align 8
  %window19 = getelementptr inbounds %struct.inflate_state, ptr %34, i32 0, i32 13
  %35 = load ptr, ptr %window19, align 8
  %36 = call i64 @llvm.objectsize.i64.p0(ptr %35, i1 false, i1 true, i1 false)
  %call20 = call ptr @__memcpy_chk(ptr noundef %27, ptr noundef %add.ptr, i64 noundef %conv, i64 noundef %36) #5
  %37 = load ptr, ptr %state, align 8
  %write21 = getelementptr inbounds %struct.inflate_state, ptr %37, i32 0, i32 12
  store i32 0, ptr %write21, align 4
  %38 = load ptr, ptr %state, align 8
  %wsize22 = getelementptr inbounds %struct.inflate_state, ptr %38, i32 0, i32 10
  %39 = load i32, ptr %wsize22, align 4
  %40 = load ptr, ptr %state, align 8
  %whave23 = getelementptr inbounds %struct.inflate_state, ptr %40, i32 0, i32 11
  store i32 %39, ptr %whave23, align 8
  br label %if.end76

if.else:                                          ; preds = %if.end12
  %41 = load ptr, ptr %state, align 8
  %wsize24 = getelementptr inbounds %struct.inflate_state, ptr %41, i32 0, i32 10
  %42 = load i32, ptr %wsize24, align 4
  %43 = load ptr, ptr %state, align 8
  %write25 = getelementptr inbounds %struct.inflate_state, ptr %43, i32 0, i32 12
  %44 = load i32, ptr %write25, align 4
  %sub26 = sub i32 %42, %44
  store i32 %sub26, ptr %dist, align 4
  %45 = load i32, ptr %dist, align 4
  %46 = load i32, ptr %copy, align 4
  %cmp27 = icmp ugt i32 %45, %46
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.else
  %47 = load i32, ptr %copy, align 4
  store i32 %47, ptr %dist, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.else
  %48 = load ptr, ptr %state, align 8
  %window31 = getelementptr inbounds %struct.inflate_state, ptr %48, i32 0, i32 13
  %49 = load ptr, ptr %window31, align 8
  %50 = load ptr, ptr %state, align 8
  %write32 = getelementptr inbounds %struct.inflate_state, ptr %50, i32 0, i32 12
  %51 = load i32, ptr %write32, align 4
  %idx.ext33 = zext i32 %51 to i64
  %add.ptr34 = getelementptr inbounds i8, ptr %49, i64 %idx.ext33
  %52 = load ptr, ptr %strm.addr, align 8
  %next_out35 = getelementptr inbounds %struct.z_stream_s, ptr %52, i32 0, i32 3
  %53 = load ptr, ptr %next_out35, align 8
  %54 = load i32, ptr %copy, align 4
  %idx.ext36 = zext i32 %54 to i64
  %idx.neg37 = sub i64 0, %idx.ext36
  %add.ptr38 = getelementptr inbounds i8, ptr %53, i64 %idx.neg37
  %55 = load i32, ptr %dist, align 4
  %conv39 = zext i32 %55 to i64
  %56 = load ptr, ptr %state, align 8
  %window40 = getelementptr inbounds %struct.inflate_state, ptr %56, i32 0, i32 13
  %57 = load ptr, ptr %window40, align 8
  %58 = load ptr, ptr %state, align 8
  %write41 = getelementptr inbounds %struct.inflate_state, ptr %58, i32 0, i32 12
  %59 = load i32, ptr %write41, align 4
  %idx.ext42 = zext i32 %59 to i64
  %add.ptr43 = getelementptr inbounds i8, ptr %57, i64 %idx.ext42
  %60 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr43, i1 false, i1 true, i1 false)
  %call44 = call ptr @__memcpy_chk(ptr noundef %add.ptr34, ptr noundef %add.ptr38, i64 noundef %conv39, i64 noundef %60) #5
  %61 = load i32, ptr %dist, align 4
  %62 = load i32, ptr %copy, align 4
  %sub45 = sub i32 %62, %61
  store i32 %sub45, ptr %copy, align 4
  %63 = load i32, ptr %copy, align 4
  %tobool = icmp ne i32 %63, 0
  br i1 %tobool, label %if.then46, label %if.else58

if.then46:                                        ; preds = %if.end30
  %64 = load ptr, ptr %state, align 8
  %window47 = getelementptr inbounds %struct.inflate_state, ptr %64, i32 0, i32 13
  %65 = load ptr, ptr %window47, align 8
  %66 = load ptr, ptr %strm.addr, align 8
  %next_out48 = getelementptr inbounds %struct.z_stream_s, ptr %66, i32 0, i32 3
  %67 = load ptr, ptr %next_out48, align 8
  %68 = load i32, ptr %copy, align 4
  %idx.ext49 = zext i32 %68 to i64
  %idx.neg50 = sub i64 0, %idx.ext49
  %add.ptr51 = getelementptr inbounds i8, ptr %67, i64 %idx.neg50
  %69 = load i32, ptr %copy, align 4
  %conv52 = zext i32 %69 to i64
  %70 = load ptr, ptr %state, align 8
  %window53 = getelementptr inbounds %struct.inflate_state, ptr %70, i32 0, i32 13
  %71 = load ptr, ptr %window53, align 8
  %72 = call i64 @llvm.objectsize.i64.p0(ptr %71, i1 false, i1 true, i1 false)
  %call54 = call ptr @__memcpy_chk(ptr noundef %65, ptr noundef %add.ptr51, i64 noundef %conv52, i64 noundef %72) #5
  %73 = load i32, ptr %copy, align 4
  %74 = load ptr, ptr %state, align 8
  %write55 = getelementptr inbounds %struct.inflate_state, ptr %74, i32 0, i32 12
  store i32 %73, ptr %write55, align 4
  %75 = load ptr, ptr %state, align 8
  %wsize56 = getelementptr inbounds %struct.inflate_state, ptr %75, i32 0, i32 10
  %76 = load i32, ptr %wsize56, align 4
  %77 = load ptr, ptr %state, align 8
  %whave57 = getelementptr inbounds %struct.inflate_state, ptr %77, i32 0, i32 11
  store i32 %76, ptr %whave57, align 8
  br label %if.end75

if.else58:                                        ; preds = %if.end30
  %78 = load i32, ptr %dist, align 4
  %79 = load ptr, ptr %state, align 8
  %write59 = getelementptr inbounds %struct.inflate_state, ptr %79, i32 0, i32 12
  %80 = load i32, ptr %write59, align 4
  %add = add i32 %80, %78
  store i32 %add, ptr %write59, align 4
  %81 = load ptr, ptr %state, align 8
  %write60 = getelementptr inbounds %struct.inflate_state, ptr %81, i32 0, i32 12
  %82 = load i32, ptr %write60, align 4
  %83 = load ptr, ptr %state, align 8
  %wsize61 = getelementptr inbounds %struct.inflate_state, ptr %83, i32 0, i32 10
  %84 = load i32, ptr %wsize61, align 4
  %cmp62 = icmp eq i32 %82, %84
  br i1 %cmp62, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.else58
  %85 = load ptr, ptr %state, align 8
  %write65 = getelementptr inbounds %struct.inflate_state, ptr %85, i32 0, i32 12
  store i32 0, ptr %write65, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.else58
  %86 = load ptr, ptr %state, align 8
  %whave67 = getelementptr inbounds %struct.inflate_state, ptr %86, i32 0, i32 11
  %87 = load i32, ptr %whave67, align 8
  %88 = load ptr, ptr %state, align 8
  %wsize68 = getelementptr inbounds %struct.inflate_state, ptr %88, i32 0, i32 10
  %89 = load i32, ptr %wsize68, align 4
  %cmp69 = icmp ult i32 %87, %89
  br i1 %cmp69, label %if.then71, label %if.end74

if.then71:                                        ; preds = %if.end66
  %90 = load i32, ptr %dist, align 4
  %91 = load ptr, ptr %state, align 8
  %whave72 = getelementptr inbounds %struct.inflate_state, ptr %91, i32 0, i32 11
  %92 = load i32, ptr %whave72, align 8
  %add73 = add i32 %92, %90
  store i32 %add73, ptr %whave72, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.end66
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then46
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.then15
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end76, %if.then5
  %93 = load i32, ptr %retval, align 4
  ret i32 %93
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflateEnd(ptr noundef %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %0 = load ptr, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state1, align 8
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %strm.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 9
  %4 = load ptr, ptr %zfree, align 8
  %cmp4 = icmp eq ptr %4, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false3
  %5 = load ptr, ptr %strm.addr, align 8
  %state5 = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 7
  %6 = load ptr, ptr %state5, align 8
  store ptr %6, ptr %state, align 8
  %7 = load ptr, ptr %state, align 8
  %window = getelementptr inbounds %struct.inflate_state, ptr %7, i32 0, i32 13
  %8 = load ptr, ptr %window, align 8
  %cmp6 = icmp ne ptr %8, null
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  %9 = load ptr, ptr %strm.addr, align 8
  %zfree8 = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 9
  %10 = load ptr, ptr %zfree8, align 8
  %11 = load ptr, ptr %strm.addr, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 10
  %12 = load ptr, ptr %opaque, align 8
  %13 = load ptr, ptr %state, align 8
  %window9 = getelementptr inbounds %struct.inflate_state, ptr %13, i32 0, i32 13
  %14 = load ptr, ptr %window9, align 8
  call void %10(ptr noundef %12, ptr noundef %14)
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end
  %15 = load ptr, ptr %strm.addr, align 8
  %zfree11 = getelementptr inbounds %struct.z_stream_s, ptr %15, i32 0, i32 9
  %16 = load ptr, ptr %zfree11, align 8
  %17 = load ptr, ptr %strm.addr, align 8
  %opaque12 = getelementptr inbounds %struct.z_stream_s, ptr %17, i32 0, i32 10
  %18 = load ptr, ptr %opaque12, align 8
  %19 = load ptr, ptr %strm.addr, align 8
  %state13 = getelementptr inbounds %struct.z_stream_s, ptr %19, i32 0, i32 7
  %20 = load ptr, ptr %state13, align 8
  call void %16(ptr noundef %18, ptr noundef %20)
  %21 = load ptr, ptr %strm.addr, align 8
  %state14 = getelementptr inbounds %struct.z_stream_s, ptr %21, i32 0, i32 7
  store ptr null, ptr %state14, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflateSetDictionary(ptr noundef %strm, ptr noundef %dictionary, i32 noundef %dictLength) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %dictionary.addr = alloca ptr, align 8
  %dictLength.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  %id = alloca i64, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store ptr %dictionary, ptr %dictionary.addr, align 8
  store i32 %dictLength, ptr %dictLength.addr, align 4
  %0 = load ptr, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state1, align 8
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %strm.addr, align 8
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %state3, align 8
  store ptr %4, ptr %state, align 8
  %5 = load ptr, ptr %state, align 8
  %wrap = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %wrap, align 8
  %cmp4 = icmp ne i32 %6, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %state, align 8
  %mode = getelementptr inbounds %struct.inflate_state, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %mode, align 8
  %cmp5 = icmp ne i32 %8, 10
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  store i32 -2, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %9 = load ptr, ptr %state, align 8
  %mode8 = getelementptr inbounds %struct.inflate_state, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %mode8, align 8
  %cmp9 = icmp eq i32 %10, 10
  br i1 %cmp9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.end7
  %call = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  store i64 %call, ptr %id, align 8
  %11 = load i64, ptr %id, align 8
  %12 = load ptr, ptr %dictionary.addr, align 8
  %13 = load i32, ptr %dictLength.addr, align 4
  %call11 = call i64 @adler32(i64 noundef %11, ptr noundef %12, i32 noundef %13)
  store i64 %call11, ptr %id, align 8
  %14 = load i64, ptr %id, align 8
  %15 = load ptr, ptr %state, align 8
  %check = getelementptr inbounds %struct.inflate_state, ptr %15, i32 0, i32 6
  %16 = load i64, ptr %check, align 8
  %cmp12 = icmp ne i64 %14, %16
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then10
  store i32 -3, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.then10
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end7
  %17 = load ptr, ptr %strm.addr, align 8
  %18 = load ptr, ptr %strm.addr, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 4
  %19 = load i32, ptr %avail_out, align 8
  %call16 = call i32 @updatewindow(ptr noundef %17, i32 noundef %19)
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end15
  %20 = load ptr, ptr %state, align 8
  %mode18 = getelementptr inbounds %struct.inflate_state, ptr %20, i32 0, i32 0
  store i32 28, ptr %mode18, align 8
  store i32 -4, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end15
  %21 = load i32, ptr %dictLength.addr, align 4
  %22 = load ptr, ptr %state, align 8
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 10
  %23 = load i32, ptr %wsize, align 4
  %cmp20 = icmp ugt i32 %21, %23
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end19
  %24 = load ptr, ptr %state, align 8
  %window = getelementptr inbounds %struct.inflate_state, ptr %24, i32 0, i32 13
  %25 = load ptr, ptr %window, align 8
  %26 = load ptr, ptr %dictionary.addr, align 8
  %27 = load i32, ptr %dictLength.addr, align 4
  %idx.ext = zext i32 %27 to i64
  %add.ptr = getelementptr inbounds i8, ptr %26, i64 %idx.ext
  %28 = load ptr, ptr %state, align 8
  %wsize22 = getelementptr inbounds %struct.inflate_state, ptr %28, i32 0, i32 10
  %29 = load i32, ptr %wsize22, align 4
  %idx.ext23 = zext i32 %29 to i64
  %idx.neg = sub i64 0, %idx.ext23
  %add.ptr24 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg
  %30 = load ptr, ptr %state, align 8
  %wsize25 = getelementptr inbounds %struct.inflate_state, ptr %30, i32 0, i32 10
  %31 = load i32, ptr %wsize25, align 4
  %conv = zext i32 %31 to i64
  %32 = load ptr, ptr %state, align 8
  %window26 = getelementptr inbounds %struct.inflate_state, ptr %32, i32 0, i32 13
  %33 = load ptr, ptr %window26, align 8
  %34 = call i64 @llvm.objectsize.i64.p0(ptr %33, i1 false, i1 true, i1 false)
  %call27 = call ptr @__memcpy_chk(ptr noundef %25, ptr noundef %add.ptr24, i64 noundef %conv, i64 noundef %34) #5
  %35 = load ptr, ptr %state, align 8
  %wsize28 = getelementptr inbounds %struct.inflate_state, ptr %35, i32 0, i32 10
  %36 = load i32, ptr %wsize28, align 4
  %37 = load ptr, ptr %state, align 8
  %whave = getelementptr inbounds %struct.inflate_state, ptr %37, i32 0, i32 11
  store i32 %36, ptr %whave, align 8
  br label %if.end46

if.else:                                          ; preds = %if.end19
  %38 = load ptr, ptr %state, align 8
  %window29 = getelementptr inbounds %struct.inflate_state, ptr %38, i32 0, i32 13
  %39 = load ptr, ptr %window29, align 8
  %40 = load ptr, ptr %state, align 8
  %wsize30 = getelementptr inbounds %struct.inflate_state, ptr %40, i32 0, i32 10
  %41 = load i32, ptr %wsize30, align 4
  %idx.ext31 = zext i32 %41 to i64
  %add.ptr32 = getelementptr inbounds i8, ptr %39, i64 %idx.ext31
  %42 = load i32, ptr %dictLength.addr, align 4
  %idx.ext33 = zext i32 %42 to i64
  %idx.neg34 = sub i64 0, %idx.ext33
  %add.ptr35 = getelementptr inbounds i8, ptr %add.ptr32, i64 %idx.neg34
  %43 = load ptr, ptr %dictionary.addr, align 8
  %44 = load i32, ptr %dictLength.addr, align 4
  %conv36 = zext i32 %44 to i64
  %45 = load ptr, ptr %state, align 8
  %window37 = getelementptr inbounds %struct.inflate_state, ptr %45, i32 0, i32 13
  %46 = load ptr, ptr %window37, align 8
  %47 = load ptr, ptr %state, align 8
  %wsize38 = getelementptr inbounds %struct.inflate_state, ptr %47, i32 0, i32 10
  %48 = load i32, ptr %wsize38, align 4
  %idx.ext39 = zext i32 %48 to i64
  %add.ptr40 = getelementptr inbounds i8, ptr %46, i64 %idx.ext39
  %49 = load i32, ptr %dictLength.addr, align 4
  %idx.ext41 = zext i32 %49 to i64
  %idx.neg42 = sub i64 0, %idx.ext41
  %add.ptr43 = getelementptr inbounds i8, ptr %add.ptr40, i64 %idx.neg42
  %50 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr43, i1 false, i1 true, i1 false)
  %call44 = call ptr @__memcpy_chk(ptr noundef %add.ptr35, ptr noundef %43, i64 noundef %conv36, i64 noundef %50) #5
  %51 = load i32, ptr %dictLength.addr, align 4
  %52 = load ptr, ptr %state, align 8
  %whave45 = getelementptr inbounds %struct.inflate_state, ptr %52, i32 0, i32 11
  store i32 %51, ptr %whave45, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then21
  %53 = load ptr, ptr %state, align 8
  %havedict = getelementptr inbounds %struct.inflate_state, ptr %53, i32 0, i32 3
  store i32 1, ptr %havedict, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end46, %if.then17, %if.then13, %if.then6, %if.then
  %54 = load i32, ptr %retval, align 4
  ret i32 %54
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
  %0 = load ptr, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state1, align 8
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %strm.addr, align 8
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %state3, align 8
  store ptr %4, ptr %state, align 8
  %5 = load ptr, ptr %state, align 8
  %wrap = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %wrap, align 8
  %and = and i32 %6, 2
  %cmp4 = icmp eq i32 %and, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %head.addr, align 8
  %8 = load ptr, ptr %state, align 8
  %head7 = getelementptr inbounds %struct.inflate_state, ptr %8, i32 0, i32 8
  store ptr %7, ptr %head7, align 8
  %9 = load ptr, ptr %head.addr, align 8
  %done = getelementptr inbounds %struct.gz_header_s, ptr %9, i32 0, i32 12
  store i32 0, ptr %done, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflateSync(ptr noundef %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %in = alloca i64, align 8
  %out = alloca i64, align 8
  %buf = alloca [4 x i8], align 1
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %0 = load ptr, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state1, align 8
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %strm.addr, align 8
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %state3, align 8
  store ptr %4, ptr %state, align 8
  %5 = load ptr, ptr %strm.addr, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %avail_in, align 8
  %cmp4 = icmp eq i32 %6, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %state, align 8
  %bits = getelementptr inbounds %struct.inflate_state, ptr %7, i32 0, i32 15
  %8 = load i32, ptr %bits, align 8
  %cmp5 = icmp ult i32 %8, 8
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  store i32 -5, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %9 = load ptr, ptr %state, align 8
  %mode = getelementptr inbounds %struct.inflate_state, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %mode, align 8
  %cmp8 = icmp ne i32 %10, 29
  br i1 %cmp8, label %if.then9, label %if.end22

if.then9:                                         ; preds = %if.end7
  %11 = load ptr, ptr %state, align 8
  %mode10 = getelementptr inbounds %struct.inflate_state, ptr %11, i32 0, i32 0
  store i32 29, ptr %mode10, align 8
  %12 = load ptr, ptr %state, align 8
  %bits11 = getelementptr inbounds %struct.inflate_state, ptr %12, i32 0, i32 15
  %13 = load i32, ptr %bits11, align 8
  %and = and i32 %13, 7
  %14 = load ptr, ptr %state, align 8
  %hold = getelementptr inbounds %struct.inflate_state, ptr %14, i32 0, i32 14
  %15 = load i64, ptr %hold, align 8
  %sh_prom = zext i32 %and to i64
  %shl = shl i64 %15, %sh_prom
  store i64 %shl, ptr %hold, align 8
  %16 = load ptr, ptr %state, align 8
  %bits12 = getelementptr inbounds %struct.inflate_state, ptr %16, i32 0, i32 15
  %17 = load i32, ptr %bits12, align 8
  %and13 = and i32 %17, 7
  %18 = load ptr, ptr %state, align 8
  %bits14 = getelementptr inbounds %struct.inflate_state, ptr %18, i32 0, i32 15
  %19 = load i32, ptr %bits14, align 8
  %sub = sub i32 %19, %and13
  store i32 %sub, ptr %bits14, align 8
  store i32 0, ptr %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then9
  %20 = load ptr, ptr %state, align 8
  %bits15 = getelementptr inbounds %struct.inflate_state, ptr %20, i32 0, i32 15
  %21 = load i32, ptr %bits15, align 8
  %cmp16 = icmp uge i32 %21, 8
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load ptr, ptr %state, align 8
  %hold17 = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 14
  %23 = load i64, ptr %hold17, align 8
  %conv = trunc i64 %23 to i8
  %24 = load i32, ptr %len, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %len, align 4
  %idxprom = zext i32 %24 to i64
  %arrayidx = getelementptr inbounds [4 x i8], ptr %buf, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  %25 = load ptr, ptr %state, align 8
  %hold18 = getelementptr inbounds %struct.inflate_state, ptr %25, i32 0, i32 14
  %26 = load i64, ptr %hold18, align 8
  %shr = lshr i64 %26, 8
  store i64 %shr, ptr %hold18, align 8
  %27 = load ptr, ptr %state, align 8
  %bits19 = getelementptr inbounds %struct.inflate_state, ptr %27, i32 0, i32 15
  %28 = load i32, ptr %bits19, align 8
  %sub20 = sub i32 %28, 8
  store i32 %sub20, ptr %bits19, align 8
  br label %while.cond, !llvm.loop !33

while.end:                                        ; preds = %while.cond
  %29 = load ptr, ptr %state, align 8
  %have = getelementptr inbounds %struct.inflate_state, ptr %29, i32 0, i32 26
  store i32 0, ptr %have, align 4
  %30 = load ptr, ptr %state, align 8
  %have21 = getelementptr inbounds %struct.inflate_state, ptr %30, i32 0, i32 26
  %arraydecay = getelementptr inbounds [4 x i8], ptr %buf, i64 0, i64 0
  %31 = load i32, ptr %len, align 4
  %call = call i32 @syncsearch(ptr noundef %have21, ptr noundef %arraydecay, i32 noundef %31)
  br label %if.end22

if.end22:                                         ; preds = %while.end, %if.end7
  %32 = load ptr, ptr %state, align 8
  %have23 = getelementptr inbounds %struct.inflate_state, ptr %32, i32 0, i32 26
  %33 = load ptr, ptr %strm.addr, align 8
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %next_in, align 8
  %35 = load ptr, ptr %strm.addr, align 8
  %avail_in24 = getelementptr inbounds %struct.z_stream_s, ptr %35, i32 0, i32 1
  %36 = load i32, ptr %avail_in24, align 8
  %call25 = call i32 @syncsearch(ptr noundef %have23, ptr noundef %34, i32 noundef %36)
  store i32 %call25, ptr %len, align 4
  %37 = load i32, ptr %len, align 4
  %38 = load ptr, ptr %strm.addr, align 8
  %avail_in26 = getelementptr inbounds %struct.z_stream_s, ptr %38, i32 0, i32 1
  %39 = load i32, ptr %avail_in26, align 8
  %sub27 = sub i32 %39, %37
  store i32 %sub27, ptr %avail_in26, align 8
  %40 = load i32, ptr %len, align 4
  %41 = load ptr, ptr %strm.addr, align 8
  %next_in28 = getelementptr inbounds %struct.z_stream_s, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %next_in28, align 8
  %idx.ext = zext i32 %40 to i64
  %add.ptr = getelementptr inbounds i8, ptr %42, i64 %idx.ext
  store ptr %add.ptr, ptr %next_in28, align 8
  %43 = load i32, ptr %len, align 4
  %conv29 = zext i32 %43 to i64
  %44 = load ptr, ptr %strm.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %44, i32 0, i32 2
  %45 = load i64, ptr %total_in, align 8
  %add = add i64 %45, %conv29
  store i64 %add, ptr %total_in, align 8
  %46 = load ptr, ptr %state, align 8
  %have30 = getelementptr inbounds %struct.inflate_state, ptr %46, i32 0, i32 26
  %47 = load i32, ptr %have30, align 4
  %cmp31 = icmp ne i32 %47, 4
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end22
  store i32 -3, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end22
  %48 = load ptr, ptr %strm.addr, align 8
  %total_in35 = getelementptr inbounds %struct.z_stream_s, ptr %48, i32 0, i32 2
  %49 = load i64, ptr %total_in35, align 8
  store i64 %49, ptr %in, align 8
  %50 = load ptr, ptr %strm.addr, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %50, i32 0, i32 5
  %51 = load i64, ptr %total_out, align 8
  store i64 %51, ptr %out, align 8
  %52 = load ptr, ptr %strm.addr, align 8
  %call36 = call i32 @inflateReset(ptr noundef %52)
  %53 = load i64, ptr %in, align 8
  %54 = load ptr, ptr %strm.addr, align 8
  %total_in37 = getelementptr inbounds %struct.z_stream_s, ptr %54, i32 0, i32 2
  store i64 %53, ptr %total_in37, align 8
  %55 = load i64, ptr %out, align 8
  %56 = load ptr, ptr %strm.addr, align 8
  %total_out38 = getelementptr inbounds %struct.z_stream_s, ptr %56, i32 0, i32 5
  store i64 %55, ptr %total_out38, align 8
  %57 = load ptr, ptr %state, align 8
  %mode39 = getelementptr inbounds %struct.inflate_state, ptr %57, i32 0, i32 0
  store i32 11, ptr %mode39, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end34, %if.then33, %if.then6, %if.then
  %58 = load i32, ptr %retval, align 4
  ret i32 %58
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
  %0 = load ptr, ptr %have.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %got, align 4
  store i32 0, ptr %next, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %entry
  %2 = load i32, ptr %next, align 4
  %3 = load i32, ptr %len.addr, align 4
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i32, ptr %got, align 4
  %cmp1 = icmp ult i32 %4, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load ptr, ptr %buf.addr, align 8
  %7 = load i32, ptr %next, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %9 = load i32, ptr %got, align 4
  %cmp2 = icmp ult i32 %9, 2
  %10 = zext i1 %cmp2 to i64
  %cond = select i1 %cmp2, i32 0, i32 255
  %cmp4 = icmp eq i32 %conv, %cond
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %11 = load i32, ptr %got, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %got, align 4
  br label %if.end10

if.else:                                          ; preds = %while.body
  %12 = load ptr, ptr %buf.addr, align 8
  %13 = load i32, ptr %next, align 4
  %idxprom6 = zext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %12, i64 %idxprom6
  %14 = load i8, ptr %arrayidx7, align 1
  %tobool = icmp ne i8 %14, 0
  br i1 %tobool, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else
  store i32 0, ptr %got, align 4
  br label %if.end

if.else9:                                         ; preds = %if.else
  %15 = load i32, ptr %got, align 4
  %sub = sub i32 4, %15
  store i32 %sub, ptr %got, align 4
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then8
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %16 = load i32, ptr %next, align 4
  %inc11 = add i32 %16, 1
  store i32 %inc11, ptr %next, align 4
  br label %while.cond, !llvm.loop !34

while.end:                                        ; preds = %land.end
  %17 = load i32, ptr %got, align 4
  %18 = load ptr, ptr %have.addr, align 8
  store i32 %17, ptr %18, align 4
  %19 = load i32, ptr %next, align 4
  ret i32 %19
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflateSyncPoint(ptr noundef %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %0 = load ptr, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state1, align 8
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %strm.addr, align 8
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %state3, align 8
  store ptr %4, ptr %state, align 8
  %5 = load ptr, ptr %state, align 8
  %mode = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %mode, align 8
  %cmp4 = icmp eq i32 %6, 13
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %7 = load ptr, ptr %state, align 8
  %bits = getelementptr inbounds %struct.inflate_state, ptr %7, i32 0, i32 15
  %8 = load i32, ptr %bits, align 8
  %cmp5 = icmp eq i32 %8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %9 = phi i1 [ false, %if.end ], [ %cmp5, %land.rhs ]
  %land.ext = zext i1 %9 to i32
  store i32 %land.ext, ptr %retval, align 4
  br label %return

return:                                           ; preds = %land.end, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
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
  %wsize = alloca i32, align 4
  store ptr %dest, ptr %dest.addr, align 8
  store ptr %source, ptr %source.addr, align 8
  %0 = load ptr, ptr %dest.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %source.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %source.addr, align 8
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %state3, align 8
  %cmp4 = icmp eq ptr %3, null
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %4 = load ptr, ptr %source.addr, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %4, i32 0, i32 8
  %5 = load ptr, ptr %zalloc, align 8
  %cmp6 = icmp eq ptr %5, null
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %6 = load ptr, ptr %source.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %6, i32 0, i32 9
  %7 = load ptr, ptr %zfree, align 8
  %cmp8 = icmp eq ptr %7, null
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false7
  %8 = load ptr, ptr %source.addr, align 8
  %state9 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 7
  %9 = load ptr, ptr %state9, align 8
  store ptr %9, ptr %state, align 8
  %10 = load ptr, ptr %source.addr, align 8
  %zalloc10 = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 8
  %11 = load ptr, ptr %zalloc10, align 8
  %12 = load ptr, ptr %source.addr, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 10
  %13 = load ptr, ptr %opaque, align 8
  %call = call ptr %11(ptr noundef %13, i32 noundef 1, i32 noundef 9552)
  store ptr %call, ptr %copy, align 8
  %14 = load ptr, ptr %copy, align 8
  %cmp11 = icmp eq ptr %14, null
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  store i32 -4, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end
  store ptr null, ptr %window, align 8
  %15 = load ptr, ptr %state, align 8
  %window14 = getelementptr inbounds %struct.inflate_state, ptr %15, i32 0, i32 13
  %16 = load ptr, ptr %window14, align 8
  %cmp15 = icmp ne ptr %16, null
  br i1 %cmp15, label %if.then16, label %if.end25

if.then16:                                        ; preds = %if.end13
  %17 = load ptr, ptr %source.addr, align 8
  %zalloc17 = getelementptr inbounds %struct.z_stream_s, ptr %17, i32 0, i32 8
  %18 = load ptr, ptr %zalloc17, align 8
  %19 = load ptr, ptr %source.addr, align 8
  %opaque18 = getelementptr inbounds %struct.z_stream_s, ptr %19, i32 0, i32 10
  %20 = load ptr, ptr %opaque18, align 8
  %21 = load ptr, ptr %state, align 8
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %21, i32 0, i32 9
  %22 = load i32, ptr %wbits, align 8
  %shl = shl i32 1, %22
  %call19 = call ptr %18(ptr noundef %20, i32 noundef %shl, i32 noundef 1)
  store ptr %call19, ptr %window, align 8
  %23 = load ptr, ptr %window, align 8
  %cmp20 = icmp eq ptr %23, null
  br i1 %cmp20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.then16
  %24 = load ptr, ptr %source.addr, align 8
  %zfree22 = getelementptr inbounds %struct.z_stream_s, ptr %24, i32 0, i32 9
  %25 = load ptr, ptr %zfree22, align 8
  %26 = load ptr, ptr %source.addr, align 8
  %opaque23 = getelementptr inbounds %struct.z_stream_s, ptr %26, i32 0, i32 10
  %27 = load ptr, ptr %opaque23, align 8
  %28 = load ptr, ptr %copy, align 8
  call void %25(ptr noundef %27, ptr noundef %28)
  store i32 -4, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.then16
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end13
  %29 = load ptr, ptr %dest.addr, align 8
  %30 = load ptr, ptr %source.addr, align 8
  %31 = load ptr, ptr %dest.addr, align 8
  %32 = call i64 @llvm.objectsize.i64.p0(ptr %31, i1 false, i1 true, i1 false)
  %call26 = call ptr @__memcpy_chk(ptr noundef %29, ptr noundef %30, i64 noundef 112, i64 noundef %32) #5
  %33 = load ptr, ptr %copy, align 8
  %34 = load ptr, ptr %state, align 8
  %35 = load ptr, ptr %copy, align 8
  %36 = call i64 @llvm.objectsize.i64.p0(ptr %35, i1 false, i1 true, i1 false)
  %call27 = call ptr @__memcpy_chk(ptr noundef %33, ptr noundef %34, i64 noundef 9552, i64 noundef %36) #5
  %37 = load ptr, ptr %state, align 8
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %37, i32 0, i32 19
  %38 = load ptr, ptr %lencode, align 8
  %39 = load ptr, ptr %state, align 8
  %codes = getelementptr inbounds %struct.inflate_state, ptr %39, i32 0, i32 30
  %arraydecay = getelementptr inbounds [2048 x %struct.code], ptr %codes, i64 0, i64 0
  %cmp28 = icmp uge ptr %38, %arraydecay
  br i1 %cmp28, label %land.lhs.true, label %if.end52

land.lhs.true:                                    ; preds = %if.end25
  %40 = load ptr, ptr %state, align 8
  %lencode29 = getelementptr inbounds %struct.inflate_state, ptr %40, i32 0, i32 19
  %41 = load ptr, ptr %lencode29, align 8
  %42 = load ptr, ptr %state, align 8
  %codes30 = getelementptr inbounds %struct.inflate_state, ptr %42, i32 0, i32 30
  %arraydecay31 = getelementptr inbounds [2048 x %struct.code], ptr %codes30, i64 0, i64 0
  %add.ptr = getelementptr inbounds %struct.code, ptr %arraydecay31, i64 2048
  %add.ptr32 = getelementptr inbounds %struct.code, ptr %add.ptr, i64 -1
  %cmp33 = icmp ule ptr %41, %add.ptr32
  br i1 %cmp33, label %if.then34, label %if.end52

if.then34:                                        ; preds = %land.lhs.true
  %43 = load ptr, ptr %copy, align 8
  %codes35 = getelementptr inbounds %struct.inflate_state, ptr %43, i32 0, i32 30
  %arraydecay36 = getelementptr inbounds [2048 x %struct.code], ptr %codes35, i64 0, i64 0
  %44 = load ptr, ptr %state, align 8
  %lencode37 = getelementptr inbounds %struct.inflate_state, ptr %44, i32 0, i32 19
  %45 = load ptr, ptr %lencode37, align 8
  %46 = load ptr, ptr %state, align 8
  %codes38 = getelementptr inbounds %struct.inflate_state, ptr %46, i32 0, i32 30
  %arraydecay39 = getelementptr inbounds [2048 x %struct.code], ptr %codes38, i64 0, i64 0
  %sub.ptr.lhs.cast = ptrtoint ptr %45 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %arraydecay39 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %add.ptr40 = getelementptr inbounds %struct.code, ptr %arraydecay36, i64 %sub.ptr.div
  %47 = load ptr, ptr %copy, align 8
  %lencode41 = getelementptr inbounds %struct.inflate_state, ptr %47, i32 0, i32 19
  store ptr %add.ptr40, ptr %lencode41, align 8
  %48 = load ptr, ptr %copy, align 8
  %codes42 = getelementptr inbounds %struct.inflate_state, ptr %48, i32 0, i32 30
  %arraydecay43 = getelementptr inbounds [2048 x %struct.code], ptr %codes42, i64 0, i64 0
  %49 = load ptr, ptr %state, align 8
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %49, i32 0, i32 20
  %50 = load ptr, ptr %distcode, align 8
  %51 = load ptr, ptr %state, align 8
  %codes44 = getelementptr inbounds %struct.inflate_state, ptr %51, i32 0, i32 30
  %arraydecay45 = getelementptr inbounds [2048 x %struct.code], ptr %codes44, i64 0, i64 0
  %sub.ptr.lhs.cast46 = ptrtoint ptr %50 to i64
  %sub.ptr.rhs.cast47 = ptrtoint ptr %arraydecay45 to i64
  %sub.ptr.sub48 = sub i64 %sub.ptr.lhs.cast46, %sub.ptr.rhs.cast47
  %sub.ptr.div49 = sdiv exact i64 %sub.ptr.sub48, 4
  %add.ptr50 = getelementptr inbounds %struct.code, ptr %arraydecay43, i64 %sub.ptr.div49
  %52 = load ptr, ptr %copy, align 8
  %distcode51 = getelementptr inbounds %struct.inflate_state, ptr %52, i32 0, i32 20
  store ptr %add.ptr50, ptr %distcode51, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then34, %land.lhs.true, %if.end25
  %53 = load ptr, ptr %copy, align 8
  %codes53 = getelementptr inbounds %struct.inflate_state, ptr %53, i32 0, i32 30
  %arraydecay54 = getelementptr inbounds [2048 x %struct.code], ptr %codes53, i64 0, i64 0
  %54 = load ptr, ptr %state, align 8
  %next = getelementptr inbounds %struct.inflate_state, ptr %54, i32 0, i32 27
  %55 = load ptr, ptr %next, align 8
  %56 = load ptr, ptr %state, align 8
  %codes55 = getelementptr inbounds %struct.inflate_state, ptr %56, i32 0, i32 30
  %arraydecay56 = getelementptr inbounds [2048 x %struct.code], ptr %codes55, i64 0, i64 0
  %sub.ptr.lhs.cast57 = ptrtoint ptr %55 to i64
  %sub.ptr.rhs.cast58 = ptrtoint ptr %arraydecay56 to i64
  %sub.ptr.sub59 = sub i64 %sub.ptr.lhs.cast57, %sub.ptr.rhs.cast58
  %sub.ptr.div60 = sdiv exact i64 %sub.ptr.sub59, 4
  %add.ptr61 = getelementptr inbounds %struct.code, ptr %arraydecay54, i64 %sub.ptr.div60
  %57 = load ptr, ptr %copy, align 8
  %next62 = getelementptr inbounds %struct.inflate_state, ptr %57, i32 0, i32 27
  store ptr %add.ptr61, ptr %next62, align 8
  %58 = load ptr, ptr %window, align 8
  %cmp63 = icmp ne ptr %58, null
  br i1 %cmp63, label %if.then64, label %if.end69

if.then64:                                        ; preds = %if.end52
  %59 = load ptr, ptr %state, align 8
  %wbits65 = getelementptr inbounds %struct.inflate_state, ptr %59, i32 0, i32 9
  %60 = load i32, ptr %wbits65, align 8
  %shl66 = shl i32 1, %60
  store i32 %shl66, ptr %wsize, align 4
  %61 = load ptr, ptr %window, align 8
  %62 = load ptr, ptr %state, align 8
  %window67 = getelementptr inbounds %struct.inflate_state, ptr %62, i32 0, i32 13
  %63 = load ptr, ptr %window67, align 8
  %64 = load i32, ptr %wsize, align 4
  %conv = zext i32 %64 to i64
  %65 = load ptr, ptr %window, align 8
  %66 = call i64 @llvm.objectsize.i64.p0(ptr %65, i1 false, i1 true, i1 false)
  %call68 = call ptr @__memcpy_chk(ptr noundef %61, ptr noundef %63, i64 noundef %conv, i64 noundef %66) #5
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %if.end52
  %67 = load ptr, ptr %window, align 8
  %68 = load ptr, ptr %copy, align 8
  %window70 = getelementptr inbounds %struct.inflate_state, ptr %68, i32 0, i32 13
  store ptr %67, ptr %window70, align 8
  %69 = load ptr, ptr %copy, align 8
  %70 = load ptr, ptr %dest.addr, align 8
  %state71 = getelementptr inbounds %struct.z_stream_s, ptr %70, i32 0, i32 7
  store ptr %69, ptr %state71, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end69, %if.then21, %if.then12, %if.then
  %71 = load i32, ptr %retval, align 4
  ret i32 %71
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
