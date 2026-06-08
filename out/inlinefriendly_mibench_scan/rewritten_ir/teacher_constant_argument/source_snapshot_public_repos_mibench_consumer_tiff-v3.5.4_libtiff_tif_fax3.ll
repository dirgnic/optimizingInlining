; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_constant_argument/source_snapshot_public_repos_mibench_consumer_tiff-v3.5.4_libtiff_tif_fax3.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_fax3.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tableentry = type { i16, i16, i16 }
%struct.TIFFFieldInfo = type { i64, i16, i16, i32, i16, i8, i8, ptr }
%struct.TIFFFaxTabEnt = type { i8, i8, i64 }
%struct.tiff = type { ptr, i32, i32, i64, i64, i64, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i64, i16, i64, i64, i64, i16, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, ptr, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i64, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i64, ptr, i64, ptr, i64, ptr, i64, i64, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i64 }
%struct.Fax3BaseState = type { i32, i64, i64, i16, i64, i64, i64, i64, ptr, i64, ptr, ptr }
%struct.Fax3DecodeState = type { %struct.Fax3BaseState, ptr, i64, i32, i32, ptr, ptr, ptr, ptr }
%struct.Fax3EncodeState = type { %struct.Fax3BaseState, i32, i32, i32, ptr, i32, i32 }

@TIFFFaxWhiteCodes = constant [109 x %struct.tableentry] [%struct.tableentry { i16 8, i16 53, i16 0 }, %struct.tableentry { i16 6, i16 7, i16 1 }, %struct.tableentry { i16 4, i16 7, i16 2 }, %struct.tableentry { i16 4, i16 8, i16 3 }, %struct.tableentry { i16 4, i16 11, i16 4 }, %struct.tableentry { i16 4, i16 12, i16 5 }, %struct.tableentry { i16 4, i16 14, i16 6 }, %struct.tableentry { i16 4, i16 15, i16 7 }, %struct.tableentry { i16 5, i16 19, i16 8 }, %struct.tableentry { i16 5, i16 20, i16 9 }, %struct.tableentry { i16 5, i16 7, i16 10 }, %struct.tableentry { i16 5, i16 8, i16 11 }, %struct.tableentry { i16 6, i16 8, i16 12 }, %struct.tableentry { i16 6, i16 3, i16 13 }, %struct.tableentry { i16 6, i16 52, i16 14 }, %struct.tableentry { i16 6, i16 53, i16 15 }, %struct.tableentry { i16 6, i16 42, i16 16 }, %struct.tableentry { i16 6, i16 43, i16 17 }, %struct.tableentry { i16 7, i16 39, i16 18 }, %struct.tableentry { i16 7, i16 12, i16 19 }, %struct.tableentry { i16 7, i16 8, i16 20 }, %struct.tableentry { i16 7, i16 23, i16 21 }, %struct.tableentry { i16 7, i16 3, i16 22 }, %struct.tableentry { i16 7, i16 4, i16 23 }, %struct.tableentry { i16 7, i16 40, i16 24 }, %struct.tableentry { i16 7, i16 43, i16 25 }, %struct.tableentry { i16 7, i16 19, i16 26 }, %struct.tableentry { i16 7, i16 36, i16 27 }, %struct.tableentry { i16 7, i16 24, i16 28 }, %struct.tableentry { i16 8, i16 2, i16 29 }, %struct.tableentry { i16 8, i16 3, i16 30 }, %struct.tableentry { i16 8, i16 26, i16 31 }, %struct.tableentry { i16 8, i16 27, i16 32 }, %struct.tableentry { i16 8, i16 18, i16 33 }, %struct.tableentry { i16 8, i16 19, i16 34 }, %struct.tableentry { i16 8, i16 20, i16 35 }, %struct.tableentry { i16 8, i16 21, i16 36 }, %struct.tableentry { i16 8, i16 22, i16 37 }, %struct.tableentry { i16 8, i16 23, i16 38 }, %struct.tableentry { i16 8, i16 40, i16 39 }, %struct.tableentry { i16 8, i16 41, i16 40 }, %struct.tableentry { i16 8, i16 42, i16 41 }, %struct.tableentry { i16 8, i16 43, i16 42 }, %struct.tableentry { i16 8, i16 44, i16 43 }, %struct.tableentry { i16 8, i16 45, i16 44 }, %struct.tableentry { i16 8, i16 4, i16 45 }, %struct.tableentry { i16 8, i16 5, i16 46 }, %struct.tableentry { i16 8, i16 10, i16 47 }, %struct.tableentry { i16 8, i16 11, i16 48 }, %struct.tableentry { i16 8, i16 82, i16 49 }, %struct.tableentry { i16 8, i16 83, i16 50 }, %struct.tableentry { i16 8, i16 84, i16 51 }, %struct.tableentry { i16 8, i16 85, i16 52 }, %struct.tableentry { i16 8, i16 36, i16 53 }, %struct.tableentry { i16 8, i16 37, i16 54 }, %struct.tableentry { i16 8, i16 88, i16 55 }, %struct.tableentry { i16 8, i16 89, i16 56 }, %struct.tableentry { i16 8, i16 90, i16 57 }, %struct.tableentry { i16 8, i16 91, i16 58 }, %struct.tableentry { i16 8, i16 74, i16 59 }, %struct.tableentry { i16 8, i16 75, i16 60 }, %struct.tableentry { i16 8, i16 50, i16 61 }, %struct.tableentry { i16 8, i16 51, i16 62 }, %struct.tableentry { i16 8, i16 52, i16 63 }, %struct.tableentry { i16 5, i16 27, i16 64 }, %struct.tableentry { i16 5, i16 18, i16 128 }, %struct.tableentry { i16 6, i16 23, i16 192 }, %struct.tableentry { i16 7, i16 55, i16 256 }, %struct.tableentry { i16 8, i16 54, i16 320 }, %struct.tableentry { i16 8, i16 55, i16 384 }, %struct.tableentry { i16 8, i16 100, i16 448 }, %struct.tableentry { i16 8, i16 101, i16 512 }, %struct.tableentry { i16 8, i16 104, i16 576 }, %struct.tableentry { i16 8, i16 103, i16 640 }, %struct.tableentry { i16 9, i16 204, i16 704 }, %struct.tableentry { i16 9, i16 205, i16 768 }, %struct.tableentry { i16 9, i16 210, i16 832 }, %struct.tableentry { i16 9, i16 211, i16 896 }, %struct.tableentry { i16 9, i16 212, i16 960 }, %struct.tableentry { i16 9, i16 213, i16 1024 }, %struct.tableentry { i16 9, i16 214, i16 1088 }, %struct.tableentry { i16 9, i16 215, i16 1152 }, %struct.tableentry { i16 9, i16 216, i16 1216 }, %struct.tableentry { i16 9, i16 217, i16 1280 }, %struct.tableentry { i16 9, i16 218, i16 1344 }, %struct.tableentry { i16 9, i16 219, i16 1408 }, %struct.tableentry { i16 9, i16 152, i16 1472 }, %struct.tableentry { i16 9, i16 153, i16 1536 }, %struct.tableentry { i16 9, i16 154, i16 1600 }, %struct.tableentry { i16 6, i16 24, i16 1664 }, %struct.tableentry { i16 9, i16 155, i16 1728 }, %struct.tableentry { i16 11, i16 8, i16 1792 }, %struct.tableentry { i16 11, i16 12, i16 1856 }, %struct.tableentry { i16 11, i16 13, i16 1920 }, %struct.tableentry { i16 12, i16 18, i16 1984 }, %struct.tableentry { i16 12, i16 19, i16 2048 }, %struct.tableentry { i16 12, i16 20, i16 2112 }, %struct.tableentry { i16 12, i16 21, i16 2176 }, %struct.tableentry { i16 12, i16 22, i16 2240 }, %struct.tableentry { i16 12, i16 23, i16 2304 }, %struct.tableentry { i16 12, i16 28, i16 2368 }, %struct.tableentry { i16 12, i16 29, i16 2432 }, %struct.tableentry { i16 12, i16 30, i16 2496 }, %struct.tableentry { i16 12, i16 31, i16 2560 }, %struct.tableentry { i16 12, i16 1, i16 -1 }, %struct.tableentry { i16 9, i16 1, i16 -2 }, %struct.tableentry { i16 10, i16 1, i16 -2 }, %struct.tableentry { i16 11, i16 1, i16 -2 }, %struct.tableentry { i16 12, i16 0, i16 -2 }], align 2
@TIFFFaxBlackCodes = constant [109 x %struct.tableentry] [%struct.tableentry { i16 10, i16 55, i16 0 }, %struct.tableentry { i16 3, i16 2, i16 1 }, %struct.tableentry { i16 2, i16 3, i16 2 }, %struct.tableentry { i16 2, i16 2, i16 3 }, %struct.tableentry { i16 3, i16 3, i16 4 }, %struct.tableentry { i16 4, i16 3, i16 5 }, %struct.tableentry { i16 4, i16 2, i16 6 }, %struct.tableentry { i16 5, i16 3, i16 7 }, %struct.tableentry { i16 6, i16 5, i16 8 }, %struct.tableentry { i16 6, i16 4, i16 9 }, %struct.tableentry { i16 7, i16 4, i16 10 }, %struct.tableentry { i16 7, i16 5, i16 11 }, %struct.tableentry { i16 7, i16 7, i16 12 }, %struct.tableentry { i16 8, i16 4, i16 13 }, %struct.tableentry { i16 8, i16 7, i16 14 }, %struct.tableentry { i16 9, i16 24, i16 15 }, %struct.tableentry { i16 10, i16 23, i16 16 }, %struct.tableentry { i16 10, i16 24, i16 17 }, %struct.tableentry { i16 10, i16 8, i16 18 }, %struct.tableentry { i16 11, i16 103, i16 19 }, %struct.tableentry { i16 11, i16 104, i16 20 }, %struct.tableentry { i16 11, i16 108, i16 21 }, %struct.tableentry { i16 11, i16 55, i16 22 }, %struct.tableentry { i16 11, i16 40, i16 23 }, %struct.tableentry { i16 11, i16 23, i16 24 }, %struct.tableentry { i16 11, i16 24, i16 25 }, %struct.tableentry { i16 12, i16 202, i16 26 }, %struct.tableentry { i16 12, i16 203, i16 27 }, %struct.tableentry { i16 12, i16 204, i16 28 }, %struct.tableentry { i16 12, i16 205, i16 29 }, %struct.tableentry { i16 12, i16 104, i16 30 }, %struct.tableentry { i16 12, i16 105, i16 31 }, %struct.tableentry { i16 12, i16 106, i16 32 }, %struct.tableentry { i16 12, i16 107, i16 33 }, %struct.tableentry { i16 12, i16 210, i16 34 }, %struct.tableentry { i16 12, i16 211, i16 35 }, %struct.tableentry { i16 12, i16 212, i16 36 }, %struct.tableentry { i16 12, i16 213, i16 37 }, %struct.tableentry { i16 12, i16 214, i16 38 }, %struct.tableentry { i16 12, i16 215, i16 39 }, %struct.tableentry { i16 12, i16 108, i16 40 }, %struct.tableentry { i16 12, i16 109, i16 41 }, %struct.tableentry { i16 12, i16 218, i16 42 }, %struct.tableentry { i16 12, i16 219, i16 43 }, %struct.tableentry { i16 12, i16 84, i16 44 }, %struct.tableentry { i16 12, i16 85, i16 45 }, %struct.tableentry { i16 12, i16 86, i16 46 }, %struct.tableentry { i16 12, i16 87, i16 47 }, %struct.tableentry { i16 12, i16 100, i16 48 }, %struct.tableentry { i16 12, i16 101, i16 49 }, %struct.tableentry { i16 12, i16 82, i16 50 }, %struct.tableentry { i16 12, i16 83, i16 51 }, %struct.tableentry { i16 12, i16 36, i16 52 }, %struct.tableentry { i16 12, i16 55, i16 53 }, %struct.tableentry { i16 12, i16 56, i16 54 }, %struct.tableentry { i16 12, i16 39, i16 55 }, %struct.tableentry { i16 12, i16 40, i16 56 }, %struct.tableentry { i16 12, i16 88, i16 57 }, %struct.tableentry { i16 12, i16 89, i16 58 }, %struct.tableentry { i16 12, i16 43, i16 59 }, %struct.tableentry { i16 12, i16 44, i16 60 }, %struct.tableentry { i16 12, i16 90, i16 61 }, %struct.tableentry { i16 12, i16 102, i16 62 }, %struct.tableentry { i16 12, i16 103, i16 63 }, %struct.tableentry { i16 10, i16 15, i16 64 }, %struct.tableentry { i16 12, i16 200, i16 128 }, %struct.tableentry { i16 12, i16 201, i16 192 }, %struct.tableentry { i16 12, i16 91, i16 256 }, %struct.tableentry { i16 12, i16 51, i16 320 }, %struct.tableentry { i16 12, i16 52, i16 384 }, %struct.tableentry { i16 12, i16 53, i16 448 }, %struct.tableentry { i16 13, i16 108, i16 512 }, %struct.tableentry { i16 13, i16 109, i16 576 }, %struct.tableentry { i16 13, i16 74, i16 640 }, %struct.tableentry { i16 13, i16 75, i16 704 }, %struct.tableentry { i16 13, i16 76, i16 768 }, %struct.tableentry { i16 13, i16 77, i16 832 }, %struct.tableentry { i16 13, i16 114, i16 896 }, %struct.tableentry { i16 13, i16 115, i16 960 }, %struct.tableentry { i16 13, i16 116, i16 1024 }, %struct.tableentry { i16 13, i16 117, i16 1088 }, %struct.tableentry { i16 13, i16 118, i16 1152 }, %struct.tableentry { i16 13, i16 119, i16 1216 }, %struct.tableentry { i16 13, i16 82, i16 1280 }, %struct.tableentry { i16 13, i16 83, i16 1344 }, %struct.tableentry { i16 13, i16 84, i16 1408 }, %struct.tableentry { i16 13, i16 85, i16 1472 }, %struct.tableentry { i16 13, i16 90, i16 1536 }, %struct.tableentry { i16 13, i16 91, i16 1600 }, %struct.tableentry { i16 13, i16 100, i16 1664 }, %struct.tableentry { i16 13, i16 101, i16 1728 }, %struct.tableentry { i16 11, i16 8, i16 1792 }, %struct.tableentry { i16 11, i16 12, i16 1856 }, %struct.tableentry { i16 11, i16 13, i16 1920 }, %struct.tableentry { i16 12, i16 18, i16 1984 }, %struct.tableentry { i16 12, i16 19, i16 2048 }, %struct.tableentry { i16 12, i16 20, i16 2112 }, %struct.tableentry { i16 12, i16 21, i16 2176 }, %struct.tableentry { i16 12, i16 22, i16 2240 }, %struct.tableentry { i16 12, i16 23, i16 2304 }, %struct.tableentry { i16 12, i16 28, i16 2368 }, %struct.tableentry { i16 12, i16 29, i16 2432 }, %struct.tableentry { i16 12, i16 30, i16 2496 }, %struct.tableentry { i16 12, i16 31, i16 2560 }, %struct.tableentry { i16 12, i16 1, i16 -1 }, %struct.tableentry { i16 9, i16 1, i16 -2 }, %struct.tableentry { i16 10, i16 1, i16 -2 }, %struct.tableentry { i16 11, i16 1, i16 -2 }, %struct.tableentry { i16 12, i16 0, i16 -2 }], align 2
@_TIFFFax3fillruns._fillmasks = internal constant [9 x i8] c"\00\80\C0\E0\F0\F8\FC\FE\FF", align 1
@__func__._TIFFFax3fillruns = private unnamed_addr constant [18 x i8] c"_TIFFFax3fillruns\00", align 1
@.str = private unnamed_addr constant [11 x i8] c"tif_fax3.c\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"x == lastx\00", align 1
@fax3FieldInfo = internal constant [1 x %struct.TIFFFieldInfo] [%struct.TIFFFieldInfo { i64 292, i16 1, i16 1, i32 4, i16 68, i8 0, i8 0, ptr @.str.43 }], align 8
@fax4FieldInfo = internal constant [1 x %struct.TIFFFieldInfo] [%struct.TIFFFieldInfo { i64 293, i16 1, i16 1, i32 4, i16 68, i8 0, i8 0, ptr @.str.44 }], align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"TIFFInitCCITTFax3\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: No space for state block\00", align 1
@faxFieldInfo = internal constant [10 x %struct.TIFFFieldInfo] [%struct.TIFFFieldInfo { i64 65536, i16 0, i16 0, i32 0, i16 0, i8 0, i8 0, ptr @.str.4 }, %struct.TIFFFieldInfo { i64 65540, i16 0, i16 0, i32 0, i16 0, i8 0, i8 0, ptr @.str.5 }, %struct.TIFFFieldInfo { i64 326, i16 1, i16 1, i32 4, i16 62, i8 1, i8 0, ptr @.str.6 }, %struct.TIFFFieldInfo { i64 326, i16 1, i16 1, i32 3, i16 62, i8 1, i8 0, ptr @.str.6 }, %struct.TIFFFieldInfo { i64 327, i16 1, i16 1, i32 3, i16 63, i8 1, i8 0, ptr @.str.7 }, %struct.TIFFFieldInfo { i64 328, i16 1, i16 1, i32 4, i16 64, i8 1, i8 0, ptr @.str.8 }, %struct.TIFFFieldInfo { i64 328, i16 1, i16 1, i32 3, i16 64, i8 1, i8 0, ptr @.str.8 }, %struct.TIFFFieldInfo { i64 34908, i16 1, i16 1, i32 4, i16 65, i8 1, i8 0, ptr @.str.9 }, %struct.TIFFFieldInfo { i64 34909, i16 -1, i16 -1, i32 2, i16 66, i8 1, i8 0, ptr @.str.10 }, %struct.TIFFFieldInfo { i64 34910, i16 1, i16 1, i32 4, i16 67, i8 1, i8 0, ptr @.str.11 }], align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"FaxMode\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"FaxFillFunc\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"BadFaxLines\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"CleanFaxData\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"ConsecutiveBadFaxLines\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"FaxRecvParams\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"FaxSubAddress\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"FaxRecvTime\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"  Group 4 Options:\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"%suncompressed data\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"  Group 3 Options:\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"%s2-d encoding\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"%sEOL padding\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c" (%lu = 0x%lx)\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"  Fax Data:\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c" clean\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c" receiver regenerated\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c" uncorrected errors\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c" (%u = 0x%x)\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"  Bad Fax Lines: %lu\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"  Consecutive Bad Fax Lines: %lu\0A\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"  Fax Receive Parameters: %08lx\0A\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"  Fax SubAddress: %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"  Fax Receive Time: %lu secs\0A\00", align 1
@.str.30 = private unnamed_addr constant [54 x i8] c"Bits/sample must be 1 for Group 3/4 encoding/decoding\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"Fax3SetupState\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"%s: No space for Group 3/4 run arrays\00", align 1
@.str.33 = private unnamed_addr constant [42 x i8] c"%s: No space for Group 3/4 reference line\00", align 1
@Fax3Decode2D.module = internal constant [13 x i8] c"Fax3Decode2D\00", align 1
@TIFFFaxWhiteTable = external constant [0 x %struct.TIFFFaxTabEnt], align 8
@TIFFFaxBlackTable = external constant [0 x %struct.TIFFFaxTabEnt], align 8
@TIFFFaxMainTable = external constant [0 x %struct.TIFFFaxTabEnt], align 8
@.str.34 = private unnamed_addr constant [41 x i8] c"%s: Bad code word at scanline %d (x %lu)\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"%s: Premature EOF at scanline %d (x %lu)\00", align 1
@.str.36 = private unnamed_addr constant [46 x i8] c"%s: %s at scanline %d (got %lu, expected %lu)\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"Premature EOL\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"Line length mismatch\00", align 1
@.str.39 = private unnamed_addr constant [61 x i8] c"%s: Uncompressed data (not supported) at scanline %d (x %lu)\00", align 1
@__func__.Fax3PreDecode = private unnamed_addr constant [14 x i8] c"Fax3PreDecode\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"sp != NULL\00", align 1
@Fax3Decode1D.module = internal constant [13 x i8] c"Fax3Decode1D\00", align 1
@__func__.Fax3PreEncode = private unnamed_addr constant [14 x i8] c"Fax3PreEncode\00", align 1
@_msbmask = internal constant [9 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255], align 4
@zeroruns = internal constant <{ [128 x i8], [128 x i8] }> <{ [128 x i8] c"\08\07\06\06\05\05\05\05\04\04\04\04\04\04\04\04\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [128 x i8] zeroinitializer }>, align 1
@__func__.putspan = private unnamed_addr constant [8 x i8] c"putspan\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"te->runlen == 64*(span>>6)\00", align 1
@oneruns = internal constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\06\06\07\08", align 1
@horizcode = internal constant %struct.tableentry { i16 3, i16 1, i16 0 }, align 2
@vcodes = internal constant [7 x %struct.tableentry] [%struct.tableentry { i16 7, i16 3, i16 0 }, %struct.tableentry { i16 6, i16 3, i16 0 }, %struct.tableentry { i16 3, i16 3, i16 0 }, %struct.tableentry { i16 1, i16 1, i16 0 }, %struct.tableentry { i16 3, i16 2, i16 0 }, %struct.tableentry { i16 6, i16 2, i16 0 }, %struct.tableentry { i16 7, i16 2, i16 0 }], align 2
@passcode = internal constant %struct.tableentry { i16 4, i16 1, i16 0 }, align 2
@.str.43 = private unnamed_addr constant [14 x i8] c"Group3Options\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"Group4Options\00", align 1
@Fax4Decode.module = internal constant [11 x i8] c"Fax4Decode\00", align 1
@Fax3DecodeRLE.module = internal constant [14 x i8] c"Fax3DecodeRLE\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @_TIFFFax3fillruns(ptr noundef %buf, ptr noundef %runs, ptr noundef %erun, i64 noundef %lastx) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %runs.addr = alloca ptr, align 8
  %erun.addr = alloca ptr, align 8
  %lastx.addr = alloca i64, align 8
  %cp = alloca ptr, align 8
  %x = alloca i64, align 8
  %bx = alloca i64, align 8
  %run = alloca i64, align 8
  %n = alloca i64, align 8
  %nw = alloca i64, align 8
  %lp = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store ptr %runs, ptr %runs.addr, align 8
  store ptr %erun, ptr %erun.addr, align 8
  store i64 %lastx, ptr %lastx.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %erun to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %runs to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %0 = and i64 %sub.ptr.sub, 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %erun.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %1, i64 1
  store ptr %incdec.ptr, ptr %erun.addr, align 8
  store i64 0, ptr %1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 0, ptr %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc174, %if.end
  %2 = load ptr, ptr %runs.addr, align 8
  %3 = load ptr, ptr %erun.addr, align 8
  %cmp = icmp ult ptr %2, %3
  br i1 %cmp, label %for.body, label %for.end176

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %runs.addr, align 8
  %5 = load i64, ptr %4, align 8
  store i64 %5, ptr %run, align 8
  %6 = load i64, ptr %x, align 8
  %add = add i64 %6, %5
  %7 = load i64, ptr %lastx.addr, align 8
  %cmp1 = icmp ugt i64 %add, %7
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %for.body
  %8 = load i64, ptr %lastx.addr, align 8
  %9 = load i64, ptr %x, align 8
  %sub = sub i64 %8, %9
  %conv3 = and i64 %sub, 65535
  %10 = load ptr, ptr %runs.addr, align 8
  store i64 %conv3, ptr %10, align 8
  store i64 %conv3, ptr %run, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %for.body
  %11 = load i64, ptr %run, align 8
  %tobool6.not = icmp eq i64 %11, 0
  br i1 %tobool6.not, label %if.end77, label %if.then7

if.then7:                                         ; preds = %if.end5
  %12 = load ptr, ptr %buf.addr, align 8
  %13 = load i64, ptr %x, align 8
  %shr = lshr i64 %13, 3
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 %shr
  store ptr %add.ptr, ptr %cp, align 8
  %and8 = and i64 %13, 7
  store i64 %and8, ptr %bx, align 8
  %14 = load i64, ptr %run, align 8
  %sub9 = sub nuw nsw i64 8, %and8
  %cmp10 = icmp ugt i64 %14, %sub9
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then7
  %15 = load i64, ptr %bx, align 8
  %tobool13.not = icmp eq i64 %15, 0
  br i1 %tobool13.not, label %if.end22, label %if.then14

if.then14:                                        ; preds = %if.then12
  %16 = load i64, ptr %bx, align 8
  %17 = trunc i64 %16 to i32
  %sh_prom = sub i32 8, %17
  %shl = shl i32 255, %sh_prom
  %18 = load ptr, ptr %cp, align 8
  %incdec.ptr16 = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %incdec.ptr16, ptr %cp, align 8
  %19 = load i8, ptr %18, align 1
  %20 = trunc i32 %shl to i8
  %conv19 = and i8 %19, %20
  store i8 %conv19, ptr %18, align 1
  %21 = load i64, ptr %bx, align 8
  %sub20.neg = add i64 %21, -8
  %22 = load i64, ptr %run, align 8
  %sub21 = add i64 %sub20.neg, %22
  store i64 %sub21, ptr %run, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then14, %if.then12
  %23 = load i64, ptr %run, align 8
  %shr23 = lshr i64 %23, 3
  store i64 %shr23, ptr %n, align 8
  %cmp24.not = icmp ult i64 %23, 8
  br i1 %cmp24.not, label %if.end59, label %if.then26

if.then26:                                        ; preds = %if.end22
  %24 = load i64, ptr %n, align 8
  %cmp27 = icmp ugt i64 %24, 15
  br i1 %cmp27, label %for.cond30, label %if.end42

for.cond30:                                       ; preds = %if.then26, %for.body35
  %25 = load i64, ptr %n, align 8
  %tobool31.not = icmp eq i64 %25, 0
  %26 = load ptr, ptr %cp, align 8
  %27 = ptrtoint ptr %26 to i64
  %and32 = and i64 %27, 7
  %cmp33 = icmp ne i64 %and32, 0
  %28 = select i1 %tobool31.not, i1 false, i1 %cmp33
  br i1 %28, label %for.body35, label %for.end

for.body35:                                       ; preds = %for.cond30
  %29 = load ptr, ptr %cp, align 8
  %incdec.ptr36 = getelementptr inbounds i8, ptr %29, i64 1
  store ptr %incdec.ptr36, ptr %cp, align 8
  store i8 0, ptr %29, align 1
  %30 = load i64, ptr %n, align 8
  %dec = add nsw i64 %30, -1
  store i64 %dec, ptr %n, align 8
  br label %for.cond30, !llvm.loop !6

for.end:                                          ; preds = %for.cond30
  %31 = load ptr, ptr %cp, align 8
  store ptr %31, ptr %lp, align 8
  %32 = load i64, ptr %n, align 8
  %div375 = lshr i64 %32, 3
  store i64 %div375, ptr %nw, align 8
  %sub38 = and i64 %32, 7
  store i64 %sub38, ptr %n, align 8
  br label %do.body

do.body:                                          ; preds = %do.body, %for.end
  %33 = load ptr, ptr %lp, align 8
  %incdec.ptr39 = getelementptr inbounds i64, ptr %33, i64 1
  store ptr %incdec.ptr39, ptr %lp, align 8
  store i64 0, ptr %33, align 8
  %34 = load i64, ptr %nw, align 8
  %dec40 = add nsw i64 %34, -1
  store i64 %dec40, ptr %nw, align 8
  %tobool41.not = icmp eq i64 %dec40, 0
  br i1 %tobool41.not, label %do.end, label %do.body, !llvm.loop !8

do.end:                                           ; preds = %do.body
  %35 = load ptr, ptr %lp, align 8
  store ptr %35, ptr %cp, align 8
  br label %if.end42

if.end42:                                         ; preds = %do.end, %if.then26
  %36 = load i64, ptr %n, align 8
  switch i64 %36, label %sw.epilog [
    i64 7, label %sw.bb
    i64 6, label %sw.bb44
    i64 5, label %sw.bb46
    i64 4, label %sw.bb48
    i64 3, label %sw.bb50
    i64 2, label %sw.bb52
    i64 1, label %sw.bb54
  ]

sw.bb:                                            ; preds = %if.end42
  %37 = load ptr, ptr %cp, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %37, i64 6
  store i8 0, ptr %arrayidx43, align 1
  br label %sw.bb44

sw.bb44:                                          ; preds = %sw.bb, %if.end42
  %38 = load ptr, ptr %cp, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %38, i64 5
  store i8 0, ptr %arrayidx45, align 1
  br label %sw.bb46

sw.bb46:                                          ; preds = %sw.bb44, %if.end42
  %39 = load ptr, ptr %cp, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %39, i64 4
  store i8 0, ptr %arrayidx47, align 1
  br label %sw.bb48

sw.bb48:                                          ; preds = %sw.bb46, %if.end42
  %40 = load ptr, ptr %cp, align 8
  %arrayidx49 = getelementptr inbounds i8, ptr %40, i64 3
  store i8 0, ptr %arrayidx49, align 1
  br label %sw.bb50

sw.bb50:                                          ; preds = %sw.bb48, %if.end42
  %41 = load ptr, ptr %cp, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %41, i64 2
  store i8 0, ptr %arrayidx51, align 1
  br label %sw.bb52

sw.bb52:                                          ; preds = %sw.bb50, %if.end42
  %42 = load ptr, ptr %cp, align 8
  %arrayidx53 = getelementptr inbounds i8, ptr %42, i64 1
  store i8 0, ptr %arrayidx53, align 1
  br label %sw.bb54

sw.bb54:                                          ; preds = %sw.bb52, %if.end42
  %43 = load ptr, ptr %cp, align 8
  store i8 0, ptr %43, align 1
  %44 = load i64, ptr %n, align 8
  %add.ptr56 = getelementptr inbounds i8, ptr %43, i64 %44
  store ptr %add.ptr56, ptr %cp, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb54, %if.end42
  %45 = load i64, ptr %run, align 8
  %and58 = and i64 %45, 7
  store i64 %and58, ptr %run, align 8
  br label %if.end59

if.end59:                                         ; preds = %sw.epilog, %if.end22
  %46 = load i64, ptr %run, align 8
  %sh_prom60 = trunc i64 %46 to i32
  %shr61 = lshr i32 255, %sh_prom60
  %47 = load ptr, ptr %cp, align 8
  %48 = load i8, ptr %47, align 1
  %49 = trunc i32 %shr61 to i8
  %conv65 = and i8 %48, %49
  store i8 %conv65, ptr %47, align 1
  br label %if.end74

if.else:                                          ; preds = %if.then7
  %50 = load i64, ptr %run, align 8
  %arrayidx66 = getelementptr inbounds [9 x i8], ptr @_TIFFFax3fillruns._fillmasks, i64 0, i64 %50
  %51 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %51 to i32
  %52 = load i64, ptr %bx, align 8
  %sh_prom68 = trunc i64 %52 to i32
  %shr69 = lshr i32 %conv67, %sh_prom68
  %53 = load ptr, ptr %cp, align 8
  %54 = load i8, ptr %53, align 1
  %55 = trunc i32 %shr69 to i8
  %56 = xor i8 %55, -1
  %conv73 = and i8 %54, %56
  store i8 %conv73, ptr %53, align 1
  br label %if.end74

if.end74:                                         ; preds = %if.else, %if.end59
  %57 = load ptr, ptr %runs.addr, align 8
  %58 = load i64, ptr %57, align 8
  %59 = load i64, ptr %x, align 8
  %add76 = add i64 %59, %58
  store i64 %add76, ptr %x, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.end74, %if.end5
  %60 = load ptr, ptr %runs.addr, align 8
  %arrayidx78 = getelementptr inbounds i64, ptr %60, i64 1
  %61 = load i64, ptr %arrayidx78, align 8
  store i64 %61, ptr %run, align 8
  %62 = load i64, ptr %x, align 8
  %add79 = add i64 %62, %61
  %63 = load i64, ptr %lastx.addr, align 8
  %cmp80 = icmp ugt i64 %add79, %63
  br i1 %cmp80, label %if.then82, label %if.end85

if.then82:                                        ; preds = %if.end77
  %64 = load i64, ptr %lastx.addr, align 8
  %65 = load i64, ptr %x, align 8
  %sub83 = sub i64 %64, %65
  %66 = load ptr, ptr %runs.addr, align 8
  %arrayidx84 = getelementptr inbounds i64, ptr %66, i64 1
  store i64 %sub83, ptr %arrayidx84, align 8
  store i64 %sub83, ptr %run, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.end77
  %67 = load i64, ptr %run, align 8
  %tobool86.not = icmp eq i64 %67, 0
  br i1 %tobool86.not, label %for.inc174, label %if.then87

if.then87:                                        ; preds = %if.end85
  %68 = load ptr, ptr %buf.addr, align 8
  %69 = load i64, ptr %x, align 8
  %shr88 = lshr i64 %69, 3
  %add.ptr89 = getelementptr inbounds i8, ptr %68, i64 %shr88
  store ptr %add.ptr89, ptr %cp, align 8
  %and90 = and i64 %69, 7
  store i64 %and90, ptr %bx, align 8
  %70 = load i64, ptr %run, align 8
  %sub91 = sub nuw nsw i64 8, %and90
  %cmp92 = icmp ugt i64 %70, %sub91
  br i1 %cmp92, label %if.then94, label %if.else161

if.then94:                                        ; preds = %if.then87
  %71 = load i64, ptr %bx, align 8
  %tobool95.not = icmp eq i64 %71, 0
  br i1 %tobool95.not, label %if.end104, label %if.then96

if.then96:                                        ; preds = %if.then94
  %72 = load i64, ptr %bx, align 8
  %sh_prom97 = trunc i64 %72 to i32
  %shr98 = lshr i32 255, %sh_prom97
  %73 = load ptr, ptr %cp, align 8
  %incdec.ptr99 = getelementptr inbounds i8, ptr %73, i64 1
  store ptr %incdec.ptr99, ptr %cp, align 8
  %74 = load i8, ptr %73, align 1
  %75 = trunc i32 %shr98 to i8
  %conv101 = or i8 %74, %75
  store i8 %conv101, ptr %73, align 1
  %76 = load i64, ptr %bx, align 8
  %sub102.neg = add i64 %76, -8
  %77 = load i64, ptr %run, align 8
  %sub103 = add i64 %sub102.neg, %77
  store i64 %sub103, ptr %run, align 8
  br label %if.end104

if.end104:                                        ; preds = %if.then96, %if.then94
  %78 = load i64, ptr %run, align 8
  %shr105 = lshr i64 %78, 3
  store i64 %shr105, ptr %n, align 8
  %cmp106.not = icmp ult i64 %78, 8
  br i1 %cmp106.not, label %if.end154, label %if.then108

if.then108:                                       ; preds = %if.end104
  %79 = load i64, ptr %n, align 8
  %cmp110 = icmp ugt i64 %79, 15
  br i1 %cmp110, label %for.cond113, label %if.end135

for.cond113:                                      ; preds = %if.then108, %for.body121
  %80 = load i64, ptr %n, align 8
  %tobool114.not = icmp eq i64 %80, 0
  %81 = load ptr, ptr %cp, align 8
  %82 = ptrtoint ptr %81 to i64
  %and116 = and i64 %82, 7
  %cmp117 = icmp ne i64 %and116, 0
  %83 = select i1 %tobool114.not, i1 false, i1 %cmp117
  br i1 %83, label %for.body121, label %for.end125

for.body121:                                      ; preds = %for.cond113
  %84 = load ptr, ptr %cp, align 8
  %incdec.ptr122 = getelementptr inbounds i8, ptr %84, i64 1
  store ptr %incdec.ptr122, ptr %cp, align 8
  store i8 -1, ptr %84, align 1
  %85 = load i64, ptr %n, align 8
  %dec124 = add nsw i64 %85, -1
  store i64 %dec124, ptr %n, align 8
  br label %for.cond113, !llvm.loop !9

for.end125:                                       ; preds = %for.cond113
  %86 = load ptr, ptr %cp, align 8
  store ptr %86, ptr %lp, align 8
  %87 = load i64, ptr %n, align 8
  %div1263 = lshr i64 %87, 3
  store i64 %div1263, ptr %nw, align 8
  %sub128 = and i64 %87, 7
  store i64 %sub128, ptr %n, align 8
  br label %do.body129

do.body129:                                       ; preds = %do.body129, %for.end125
  %88 = load ptr, ptr %lp, align 8
  %incdec.ptr130 = getelementptr inbounds i64, ptr %88, i64 1
  store ptr %incdec.ptr130, ptr %lp, align 8
  store i64 -1, ptr %88, align 8
  %89 = load i64, ptr %nw, align 8
  %dec132 = add nsw i64 %89, -1
  store i64 %dec132, ptr %nw, align 8
  %tobool133.not = icmp eq i64 %dec132, 0
  br i1 %tobool133.not, label %do.end134, label %do.body129, !llvm.loop !10

do.end134:                                        ; preds = %do.body129
  %90 = load ptr, ptr %lp, align 8
  store ptr %90, ptr %cp, align 8
  br label %if.end135

if.end135:                                        ; preds = %do.end134, %if.then108
  %91 = load i64, ptr %n, align 8
  switch i64 %91, label %sw.epilog152 [
    i64 7, label %sw.bb136
    i64 6, label %sw.bb138
    i64 5, label %sw.bb140
    i64 4, label %sw.bb142
    i64 3, label %sw.bb144
    i64 2, label %sw.bb146
    i64 1, label %sw.bb148
  ]

sw.bb136:                                         ; preds = %if.end135
  %92 = load ptr, ptr %cp, align 8
  %arrayidx137 = getelementptr inbounds i8, ptr %92, i64 6
  store i8 -1, ptr %arrayidx137, align 1
  br label %sw.bb138

sw.bb138:                                         ; preds = %sw.bb136, %if.end135
  %93 = load ptr, ptr %cp, align 8
  %arrayidx139 = getelementptr inbounds i8, ptr %93, i64 5
  store i8 -1, ptr %arrayidx139, align 1
  br label %sw.bb140

sw.bb140:                                         ; preds = %sw.bb138, %if.end135
  %94 = load ptr, ptr %cp, align 8
  %arrayidx141 = getelementptr inbounds i8, ptr %94, i64 4
  store i8 -1, ptr %arrayidx141, align 1
  br label %sw.bb142

sw.bb142:                                         ; preds = %sw.bb140, %if.end135
  %95 = load ptr, ptr %cp, align 8
  %arrayidx143 = getelementptr inbounds i8, ptr %95, i64 3
  store i8 -1, ptr %arrayidx143, align 1
  br label %sw.bb144

sw.bb144:                                         ; preds = %sw.bb142, %if.end135
  %96 = load ptr, ptr %cp, align 8
  %arrayidx145 = getelementptr inbounds i8, ptr %96, i64 2
  store i8 -1, ptr %arrayidx145, align 1
  br label %sw.bb146

sw.bb146:                                         ; preds = %sw.bb144, %if.end135
  %97 = load ptr, ptr %cp, align 8
  %arrayidx147 = getelementptr inbounds i8, ptr %97, i64 1
  store i8 -1, ptr %arrayidx147, align 1
  br label %sw.bb148

sw.bb148:                                         ; preds = %sw.bb146, %if.end135
  %98 = load ptr, ptr %cp, align 8
  store i8 -1, ptr %98, align 1
  %99 = load i64, ptr %n, align 8
  %add.ptr150 = getelementptr inbounds i8, ptr %98, i64 %99
  store ptr %add.ptr150, ptr %cp, align 8
  br label %sw.epilog152

sw.epilog152:                                     ; preds = %sw.bb148, %if.end135
  %100 = load i64, ptr %run, align 8
  %and153 = and i64 %100, 7
  store i64 %and153, ptr %run, align 8
  br label %if.end154

if.end154:                                        ; preds = %sw.epilog152, %if.end104
  %101 = load i64, ptr %run, align 8
  %sh_prom155 = trunc i64 %101 to i32
  %shr156 = lshr i32 65280, %sh_prom155
  %102 = load ptr, ptr %cp, align 8
  %103 = load i8, ptr %102, align 1
  %104 = trunc i32 %shr156 to i8
  %conv160 = or i8 %103, %104
  store i8 %conv160, ptr %102, align 1
  br label %if.end170

if.else161:                                       ; preds = %if.then87
  %105 = load i64, ptr %run, align 8
  %arrayidx162 = getelementptr inbounds [9 x i8], ptr @_TIFFFax3fillruns._fillmasks, i64 0, i64 %105
  %106 = load i8, ptr %arrayidx162, align 1
  %conv163 = zext i8 %106 to i32
  %107 = load i64, ptr %bx, align 8
  %sh_prom164 = trunc i64 %107 to i32
  %shr165 = lshr i32 %conv163, %sh_prom164
  %108 = load ptr, ptr %cp, align 8
  %109 = load i8, ptr %108, align 1
  %110 = trunc i32 %shr165 to i8
  %conv169 = or i8 %109, %110
  store i8 %conv169, ptr %108, align 1
  br label %if.end170

if.end170:                                        ; preds = %if.else161, %if.end154
  %111 = load ptr, ptr %runs.addr, align 8
  %arrayidx171 = getelementptr inbounds i64, ptr %111, i64 1
  %112 = load i64, ptr %arrayidx171, align 8
  %113 = load i64, ptr %x, align 8
  %add172 = add i64 %113, %112
  store i64 %add172, ptr %x, align 8
  br label %for.inc174

for.inc174:                                       ; preds = %if.end85, %if.end170
  %114 = load ptr, ptr %runs.addr, align 8
  %add.ptr175 = getelementptr inbounds i64, ptr %114, i64 2
  store ptr %add.ptr175, ptr %runs.addr, align 8
  br label %for.cond, !llvm.loop !11

for.end176:                                       ; preds = %for.cond
  %115 = load i64, ptr %x, align 8
  %116 = load i64, ptr %lastx.addr, align 8
  %cmp177.not = icmp eq i64 %115, %116
  br i1 %cmp177.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %for.end176
  call void @__assert_rtn(ptr noundef nonnull @__func__._TIFFFax3fillruns, ptr noundef nonnull @.str, i32 noundef 454, ptr noundef nonnull @.str.1) #4
  unreachable

cond.end:                                         ; preds = %for.end176
  ret void
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFInitCCITTFax3(ptr noundef %tif, i32 noundef %scheme) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %call = call i32 @InitCCITTFax3(ptr noundef %tif)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %tif.addr, align 8
  call void @_TIFFMergeFieldInfo(ptr noundef %0, ptr noundef nonnull @fax3FieldInfo, i32 noundef 1) #5
  %call1 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %0, i64 noundef 65536, i32 noundef 1) #5
  br label %return

return:                                           ; preds = %entry, %if.then
  %storemerge = phi i32 [ %call1, %if.then ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @InitCCITTFax3(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 2
  %0 = load i32, ptr %tif_mode, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call ptr @_TIFFmalloc(i64 noundef 152) #5
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 37
  store ptr %call, ptr %tif_data, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call ptr @_TIFFmalloc(i64 noundef 128) #5
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_data2 = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 37
  store ptr %call1, ptr %tif_data2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_data3 = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 37
  %4 = load ptr, ptr %tif_data3, align 8
  %cmp4 = icmp eq ptr %4, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load ptr, ptr %5, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %6) #5
  br label %return

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_data7 = getelementptr inbounds %struct.tiff, ptr %7, i64 0, i32 37
  %8 = load ptr, ptr %tif_data7, align 8
  store ptr %8, ptr %sp, align 8
  call void @_TIFFMergeFieldInfo(ptr noundef %7, ptr noundef nonnull @faxFieldInfo, i32 noundef 10) #5
  %tif_vgetfield = getelementptr inbounds %struct.tiff, ptr %7, i64 0, i32 58
  %9 = load ptr, ptr %tif_vgetfield, align 8
  %vgetparent = getelementptr inbounds %struct.Fax3BaseState, ptr %8, i64 0, i32 10
  store ptr %9, ptr %vgetparent, align 8
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_vgetfield8 = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 58
  store ptr @Fax3VGetField, ptr %tif_vgetfield8, align 8
  %tif_vsetfield = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 57
  %11 = load ptr, ptr %tif_vsetfield, align 8
  %12 = load ptr, ptr %sp, align 8
  %vsetparent = getelementptr inbounds %struct.Fax3BaseState, ptr %12, i64 0, i32 11
  store ptr %11, ptr %vsetparent, align 8
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_vsetfield9 = getelementptr inbounds %struct.tiff, ptr %13, i64 0, i32 57
  store ptr @Fax3VSetField, ptr %tif_vsetfield9, align 8
  %tif_printdir = getelementptr inbounds %struct.tiff, ptr %13, i64 0, i32 59
  store ptr @Fax3PrintDir, ptr %tif_printdir, align 8
  %14 = load ptr, ptr %sp, align 8
  %groupoptions = getelementptr inbounds %struct.Fax3BaseState, ptr %14, i64 0, i32 6
  store i64 0, ptr %groupoptions, align 8
  %recvparams = getelementptr inbounds %struct.Fax3BaseState, ptr %14, i64 0, i32 7
  store i64 0, ptr %recvparams, align 8
  %subaddress = getelementptr inbounds %struct.Fax3BaseState, ptr %14, i64 0, i32 8
  store ptr null, ptr %subaddress, align 8
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_mode10 = getelementptr inbounds %struct.tiff, ptr %15, i64 0, i32 2
  %16 = load i32, ptr %tif_mode10, align 4
  %cmp11 = icmp eq i32 %16, 0
  br i1 %cmp11, label %if.then12, label %if.else15

if.then12:                                        ; preds = %if.end6
  %17 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %17, i64 0, i32 3
  %18 = load i64, ptr %tif_flags, align 8
  %or = or i64 %18, 256
  store i64 %or, ptr %tif_flags, align 8
  %tif_data13 = getelementptr inbounds %struct.tiff, ptr %17, i64 0, i32 37
  %19 = load ptr, ptr %tif_data13, align 8
  %runs = getelementptr inbounds %struct.Fax3DecodeState, ptr %19, i64 0, i32 6
  store ptr null, ptr %runs, align 8
  %20 = load ptr, ptr %tif.addr, align 8
  %call14 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %20, i64 noundef 65540, ptr noundef nonnull @_TIFFFax3fillruns) #5
  br label %if.end17

if.else15:                                        ; preds = %if.end6
  %21 = load ptr, ptr %tif.addr, align 8
  %tif_data16 = getelementptr inbounds %struct.tiff, ptr %21, i64 0, i32 37
  %22 = load ptr, ptr %tif_data16, align 8
  %refline = getelementptr inbounds %struct.Fax3EncodeState, ptr %22, i64 0, i32 4
  store ptr null, ptr %refline, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.then12
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_setupdecode = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 21
  store ptr @Fax3SetupState, ptr %tif_setupdecode, align 8
  %tif_predecode = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 22
  store ptr @Fax3PreDecode, ptr %tif_predecode, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 26
  store ptr @Fax3Decode1D, ptr %tif_decoderow, align 8
  %24 = load ptr, ptr %tif.addr, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %24, i64 0, i32 28
  store ptr @Fax3Decode1D, ptr %tif_decodestrip, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %24, i64 0, i32 30
  store ptr @Fax3Decode1D, ptr %tif_decodetile, align 8
  %tif_setupencode = getelementptr inbounds %struct.tiff, ptr %24, i64 0, i32 23
  store ptr @Fax3SetupState, ptr %tif_setupencode, align 8
  %25 = load ptr, ptr %tif.addr, align 8
  %tif_preencode = getelementptr inbounds %struct.tiff, ptr %25, i64 0, i32 24
  store ptr @Fax3PreEncode, ptr %tif_preencode, align 8
  %tif_postencode = getelementptr inbounds %struct.tiff, ptr %25, i64 0, i32 25
  store ptr @Fax3PostEncode, ptr %tif_postencode, align 8
  %tif_encoderow = getelementptr inbounds %struct.tiff, ptr %25, i64 0, i32 27
  store ptr @Fax3Encode, ptr %tif_encoderow, align 8
  %26 = load ptr, ptr %tif.addr, align 8
  %tif_encodestrip = getelementptr inbounds %struct.tiff, ptr %26, i64 0, i32 29
  store ptr @Fax3Encode, ptr %tif_encodestrip, align 8
  %tif_encodetile = getelementptr inbounds %struct.tiff, ptr %26, i64 0, i32 31
  store ptr @Fax3Encode, ptr %tif_encodetile, align 8
  %tif_close = getelementptr inbounds %struct.tiff, ptr %26, i64 0, i32 32
  store ptr @Fax3Close, ptr %tif_close, align 8
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_cleanup = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 34
  store ptr @Fax3Cleanup, ptr %tif_cleanup, align 8
  br label %return

return:                                           ; preds = %if.end17, %if.then5
  %storemerge = phi i32 [ 1, %if.end17 ], [ 0, %if.then5 ]
  ret i32 %storemerge
}

declare void @_TIFFMergeFieldInfo(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @TIFFSetField(ptr noundef, i64 noundef, ...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFInitCCITTFax4(ptr noundef %tif, i32 noundef %scheme) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %call = call i32 @InitCCITTFax3(ptr noundef %tif)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %tif.addr, align 8
  call void @_TIFFMergeFieldInfo(ptr noundef %0, ptr noundef nonnull @fax4FieldInfo, i32 noundef 1) #5
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 26
  store ptr @Fax4Decode, ptr %tif_decoderow, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 28
  store ptr @Fax4Decode, ptr %tif_decodestrip, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 30
  store ptr @Fax4Decode, ptr %tif_decodetile, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_encoderow = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 27
  store ptr @Fax4Encode, ptr %tif_encoderow, align 8
  %tif_encodestrip = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 29
  store ptr @Fax4Encode, ptr %tif_encodestrip, align 8
  %tif_encodetile = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 31
  store ptr @Fax4Encode, ptr %tif_encodetile, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_postencode = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 25
  store ptr @Fax4PostEncode, ptr %tif_postencode, align 8
  %call1 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %2, i64 noundef 65536, i32 noundef 1) #5
  br label %return

return:                                           ; preds = %entry, %if.then
  %storemerge = phi i32 [ %call1, %if.then ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax4Decode(ptr noundef %tif, ptr noundef %buf, i64 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %occ.addr = alloca i64, align 8
  %sp = alloca ptr, align 8
  %a0 = alloca i32, align 4
  %lastx = alloca i32, align 4
  %BitAcc = alloca i64, align 8
  %BitsAvail = alloca i32, align 4
  %RunLength = alloca i32, align 4
  %cp = alloca ptr, align 8
  %ep = alloca ptr, align 8
  %pa = alloca ptr, align 8
  %thisrun = alloca ptr, align 8
  %EOLcnt = alloca i32, align 4
  %bitmap = alloca ptr, align 8
  %TabEnt = alloca ptr, align 8
  %b1 = alloca i32, align 4
  %pb = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %occ, ptr %occ.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %rowpixels = getelementptr inbounds %struct.Fax3BaseState, ptr %0, i64 0, i32 2
  %1 = load i64, ptr %rowpixels, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, ptr %lastx, align 4
  %bitmap1 = getelementptr inbounds %struct.Fax3DecodeState, ptr %0, i64 0, i32 1
  %2 = load ptr, ptr %bitmap1, align 8
  store ptr %2, ptr %bitmap, align 8
  %3 = load ptr, ptr %sp, align 8
  %data = getelementptr inbounds %struct.Fax3DecodeState, ptr %3, i64 0, i32 2
  %4 = load i64, ptr %data, align 8
  store i64 %4, ptr %BitAcc, align 8
  %bit = getelementptr inbounds %struct.Fax3DecodeState, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %bit, align 8
  store i32 %5, ptr %BitsAvail, align 4
  %6 = load ptr, ptr %sp, align 8
  %EOLcnt2 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 4
  %7 = load i32, ptr %EOLcnt2, align 4
  store i32 %7, ptr %EOLcnt, align 4
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 42
  %9 = load ptr, ptr %tif_rawcp, align 8
  store ptr %9, ptr %cp, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 43
  %10 = load i64, ptr %tif_rawcc, align 8
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %10
  store ptr %add.ptr, ptr %ep, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end782, %entry
  %11 = load i64, ptr %occ.addr, align 8
  %cmp = icmp sgt i64 %11, 0
  br i1 %cmp, label %while.body, label %do.body798

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %12 = load ptr, ptr %sp, align 8
  %curruns = getelementptr inbounds %struct.Fax3DecodeState, ptr %12, i64 0, i32 8
  %13 = load ptr, ptr %curruns, align 8
  store ptr %13, ptr %thisrun, align 8
  store ptr %13, ptr %pa, align 8
  %refruns = getelementptr inbounds %struct.Fax3DecodeState, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %refruns, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %14, i64 1
  store ptr %incdec.ptr, ptr %pb, align 8
  %15 = load i64, ptr %14, align 8
  %conv4 = trunc i64 %15 to i32
  store i32 %conv4, ptr %b1, align 4
  br label %while.cond6

while.cond6:                                      ; preds = %sw.epilog638, %while.body
  %16 = load i32, ptr %a0, align 4
  %17 = load i32, ptr %lastx, align 4
  %cmp7 = icmp slt i32 %16, %17
  br i1 %cmp7, label %do.body11, label %while.end639

do.body11:                                        ; preds = %while.cond6
  %18 = load i32, ptr %BitsAvail, align 4
  %cmp12 = icmp slt i32 %18, 7
  br i1 %cmp12, label %if.then, label %do.end24

if.then:                                          ; preds = %do.body11
  %19 = load ptr, ptr %cp, align 8
  %20 = load ptr, ptr %ep, align 8
  %cmp14.not = icmp ult ptr %19, %20
  br i1 %cmp14.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.then
  %21 = load i32, ptr %BitsAvail, align 4
  %cmp17 = icmp eq i32 %21, 0
  br i1 %cmp17, label %eof2d, label %if.end22

if.else:                                          ; preds = %if.then
  %22 = load ptr, ptr %bitmap, align 8
  %23 = load ptr, ptr %cp, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %23, i64 1
  store ptr %incdec.ptr20, ptr %cp, align 8
  %24 = load i8, ptr %23, align 1
  %idxprom = zext i8 %24 to i64
  %arrayidx = getelementptr inbounds i8, ptr %22, i64 %idxprom
  %25 = load i8, ptr %arrayidx, align 1
  %conv21 = zext i8 %25 to i64
  %26 = load i32, ptr %BitsAvail, align 4
  %sh_prom = zext i32 %26 to i64
  %shl = shl i64 %conv21, %sh_prom
  %27 = load i64, ptr %BitAcc, align 8
  %or = or i64 %27, %shl
  store i64 %or, ptr %BitAcc, align 8
  %add = add nsw i32 %26, 8
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %if.else
  %storemerge38 = phi i32 [ %add, %if.else ], [ 7, %if.then16 ]
  store i32 %storemerge38, ptr %BitsAvail, align 4
  br label %do.end24

do.end24:                                         ; preds = %do.body11, %if.end22
  %28 = load i64, ptr %BitAcc, align 8
  %and = and i64 %28, 127
  %add.ptr25 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxMainTable, i64 %and
  store ptr %add.ptr25, ptr %TabEnt, align 8
  %29 = load ptr, ptr %TabEnt, align 8
  %Width = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %29, i64 0, i32 1
  %30 = load i8, ptr %Width, align 1
  %conv27 = zext i8 %30 to i32
  %31 = load i32, ptr %BitsAvail, align 4
  %sub = sub nsw i32 %31, %conv27
  store i32 %sub, ptr %BitsAvail, align 4
  %32 = load ptr, ptr %TabEnt, align 8
  %Width28 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %32, i64 0, i32 1
  %33 = load i8, ptr %Width28, align 1
  %34 = load i64, ptr %BitAcc, align 8
  %sh_prom30 = zext i8 %33 to i64
  %shr = lshr i64 %34, %sh_prom30
  store i64 %shr, ptr %BitAcc, align 8
  %35 = load ptr, ptr %TabEnt, align 8
  %36 = load i8, ptr %35, align 8
  switch i8 %36, label %badMain2d [
    i8 1, label %do.body34
    i8 2, label %sw.bb63
    i8 3, label %do.body399
    i8 4, label %do.body434
    i8 5, label %do.body477
    i8 6, label %sw.bb519
    i8 12, label %sw.bb524
  ]

do.body34:                                        ; preds = %do.end24
  %37 = load ptr, ptr %pa, align 8
  %38 = load ptr, ptr %thisrun, align 8
  %cmp35.not = icmp eq ptr %37, %38
  br i1 %cmp35.not, label %do.end52, label %while.cond38

while.cond38:                                     ; preds = %do.body34, %while.body43
  %39 = load i32, ptr %b1, align 4
  %40 = load i32, ptr %a0, align 4
  %cmp39.not = icmp sgt i32 %39, %40
  %41 = load i32, ptr %b1, align 4
  %42 = load i32, ptr %lastx, align 4
  %cmp41 = icmp slt i32 %41, %42
  %43 = select i1 %cmp39.not, i1 false, i1 %cmp41
  br i1 %43, label %while.body43, label %do.end52

while.body43:                                     ; preds = %while.cond38
  %44 = load ptr, ptr %pb, align 8
  %45 = load i64, ptr %44, align 8
  %arrayidx45 = getelementptr inbounds i64, ptr %44, i64 1
  %46 = load i64, ptr %arrayidx45, align 8
  %add46 = add i64 %45, %46
  %47 = load i32, ptr %b1, align 4
  %48 = trunc i64 %add46 to i32
  %conv49 = add i32 %47, %48
  store i32 %conv49, ptr %b1, align 4
  %49 = load ptr, ptr %pb, align 8
  %add.ptr50 = getelementptr inbounds i64, ptr %49, i64 2
  store ptr %add.ptr50, ptr %pb, align 8
  br label %while.cond38, !llvm.loop !12

do.end52:                                         ; preds = %do.body34, %while.cond38
  %50 = load ptr, ptr %pb, align 8
  %incdec.ptr53 = getelementptr inbounds i64, ptr %50, i64 1
  store ptr %incdec.ptr53, ptr %pb, align 8
  %51 = load i64, ptr %50, align 8
  %52 = load i32, ptr %b1, align 4
  %53 = trunc i64 %51 to i32
  %conv56 = add i32 %52, %53
  store i32 %conv56, ptr %b1, align 4
  %54 = load i32, ptr %a0, align 4
  %sub57 = sub nsw i32 %conv56, %54
  %55 = load i32, ptr %RunLength, align 4
  %add58 = add nsw i32 %55, %sub57
  store i32 %add58, ptr %RunLength, align 4
  store i32 %conv56, ptr %a0, align 4
  %56 = load ptr, ptr %pb, align 8
  %incdec.ptr59 = getelementptr inbounds i64, ptr %56, i64 1
  store ptr %incdec.ptr59, ptr %pb, align 8
  %57 = load i64, ptr %56, align 8
  %58 = load i32, ptr %b1, align 4
  %59 = trunc i64 %57 to i32
  %conv62 = add i32 %58, %59
  store i32 %conv62, ptr %b1, align 4
  br label %sw.epilog638

sw.bb63:                                          ; preds = %do.end24
  %60 = load ptr, ptr %pa, align 8
  %61 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %60 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %61 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %62 = and i64 %sub.ptr.sub, 8
  %tobool.not = icmp eq i64 %62, 0
  br i1 %tobool.not, label %for.cond219, label %for.cond

for.cond:                                         ; preds = %sw.bb63, %sw.bb131
  %63 = load i32, ptr %BitsAvail, align 4
  %cmp68 = icmp slt i32 %63, 13
  br i1 %cmp68, label %if.then70, label %do.end106

if.then70:                                        ; preds = %for.cond
  %64 = load ptr, ptr %cp, align 8
  %65 = load ptr, ptr %ep, align 8
  %cmp71.not = icmp ult ptr %64, %65
  br i1 %cmp71.not, label %if.else78, label %if.then73

if.then73:                                        ; preds = %if.then70
  %66 = load i32, ptr %BitsAvail, align 4
  %cmp74 = icmp eq i32 %66, 0
  br i1 %cmp74, label %eof2d, label %if.end77

if.end77:                                         ; preds = %if.then73
  store i32 13, ptr %BitsAvail, align 4
  br label %do.end106

if.else78:                                        ; preds = %if.then70
  %67 = load ptr, ptr %bitmap, align 8
  %68 = load ptr, ptr %cp, align 8
  %incdec.ptr79 = getelementptr inbounds i8, ptr %68, i64 1
  store ptr %incdec.ptr79, ptr %cp, align 8
  %69 = load i8, ptr %68, align 1
  %idxprom80 = zext i8 %69 to i64
  %arrayidx81 = getelementptr inbounds i8, ptr %67, i64 %idxprom80
  %70 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %70 to i64
  %71 = load i32, ptr %BitsAvail, align 4
  %sh_prom83 = zext i32 %71 to i64
  %shl84 = shl i64 %conv82, %sh_prom83
  %72 = load i64, ptr %BitAcc, align 8
  %or85 = or i64 %72, %shl84
  store i64 %or85, ptr %BitAcc, align 8
  %add86 = add nsw i32 %71, 8
  store i32 %add86, ptr %BitsAvail, align 4
  %cmp87 = icmp slt i32 %71, 5
  br i1 %cmp87, label %if.then89, label %do.end106

if.then89:                                        ; preds = %if.else78
  %73 = load ptr, ptr %cp, align 8
  %74 = load ptr, ptr %ep, align 8
  %cmp90.not = icmp ult ptr %73, %74
  br i1 %cmp90.not, label %if.else93, label %if.end102

if.else93:                                        ; preds = %if.then89
  %75 = load ptr, ptr %bitmap, align 8
  %76 = load ptr, ptr %cp, align 8
  %incdec.ptr94 = getelementptr inbounds i8, ptr %76, i64 1
  store ptr %incdec.ptr94, ptr %cp, align 8
  %77 = load i8, ptr %76, align 1
  %idxprom95 = zext i8 %77 to i64
  %arrayidx96 = getelementptr inbounds i8, ptr %75, i64 %idxprom95
  %78 = load i8, ptr %arrayidx96, align 1
  %conv97 = zext i8 %78 to i64
  %79 = load i32, ptr %BitsAvail, align 4
  %sh_prom98 = zext i32 %79 to i64
  %shl99 = shl i64 %conv97, %sh_prom98
  %80 = load i64, ptr %BitAcc, align 8
  %or100 = or i64 %80, %shl99
  store i64 %or100, ptr %BitAcc, align 8
  %add101 = add nsw i32 %79, 8
  br label %if.end102

if.end102:                                        ; preds = %if.then89, %if.else93
  %storemerge34 = phi i32 [ %add101, %if.else93 ], [ 13, %if.then89 ]
  store i32 %storemerge34, ptr %BitsAvail, align 4
  br label %do.end106

do.end106:                                        ; preds = %for.cond, %if.else78, %if.end102, %if.end77
  %81 = load i64, ptr %BitAcc, align 8
  %and107 = and i64 %81, 8191
  %add.ptr108 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %and107
  store ptr %add.ptr108, ptr %TabEnt, align 8
  %82 = load ptr, ptr %TabEnt, align 8
  %Width110 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %82, i64 0, i32 1
  %83 = load i8, ptr %Width110, align 1
  %conv111 = zext i8 %83 to i32
  %84 = load i32, ptr %BitsAvail, align 4
  %sub112 = sub nsw i32 %84, %conv111
  store i32 %sub112, ptr %BitsAvail, align 4
  %85 = load ptr, ptr %TabEnt, align 8
  %Width113 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %85, i64 0, i32 1
  %86 = load i8, ptr %Width113, align 1
  %87 = load i64, ptr %BitAcc, align 8
  %sh_prom115 = zext i8 %86 to i64
  %shr116 = lshr i64 %87, %sh_prom115
  store i64 %shr116, ptr %BitAcc, align 8
  %88 = load ptr, ptr %TabEnt, align 8
  %89 = load i8, ptr %88, align 8
  switch i8 %89, label %badBlack2d [
    i8 8, label %do.body122
    i8 10, label %sw.bb131
    i8 11, label %sw.bb131
  ]

do.body122:                                       ; preds = %do.end106
  %90 = load i32, ptr %RunLength, align 4
  %conv123 = sext i32 %90 to i64
  %91 = load ptr, ptr %TabEnt, align 8
  %Param = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %91, i64 0, i32 2
  %92 = load i64, ptr %Param, align 8
  %add124 = add i64 %92, %conv123
  %93 = load ptr, ptr %pa, align 8
  %incdec.ptr125 = getelementptr inbounds i64, ptr %93, i64 1
  store ptr %incdec.ptr125, ptr %pa, align 8
  store i64 %add124, ptr %93, align 8
  %94 = load ptr, ptr %TabEnt, align 8
  %Param126 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %94, i64 0, i32 2
  %95 = load i64, ptr %Param126, align 8
  %96 = load i32, ptr %a0, align 4
  %97 = trunc i64 %95 to i32
  %conv129 = add i32 %96, %97
  store i32 %conv129, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %for.cond140

sw.bb131:                                         ; preds = %do.end106, %do.end106
  %98 = load ptr, ptr %TabEnt, align 8
  %Param132 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %98, i64 0, i32 2
  %99 = load i64, ptr %Param132, align 8
  %100 = load i32, ptr %a0, align 4
  %101 = trunc i64 %99 to i32
  %conv135 = add i32 %100, %101
  store i32 %conv135, ptr %a0, align 4
  %102 = load ptr, ptr %TabEnt, align 8
  %Param136 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %102, i64 0, i32 2
  %103 = load i64, ptr %Param136, align 8
  %104 = load i32, ptr %RunLength, align 4
  %105 = trunc i64 %103 to i32
  %conv139 = add i32 %104, %105
  store i32 %conv139, ptr %RunLength, align 4
  br label %for.cond

for.cond140:                                      ; preds = %sw.bb207, %do.body122
  %106 = load i32, ptr %BitsAvail, align 4
  %cmp143 = icmp slt i32 %106, 12
  br i1 %cmp143, label %if.then145, label %do.end181

if.then145:                                       ; preds = %for.cond140
  %107 = load ptr, ptr %cp, align 8
  %108 = load ptr, ptr %ep, align 8
  %cmp146.not = icmp ult ptr %107, %108
  br i1 %cmp146.not, label %if.else153, label %if.then148

if.then148:                                       ; preds = %if.then145
  %109 = load i32, ptr %BitsAvail, align 4
  %cmp149 = icmp eq i32 %109, 0
  br i1 %cmp149, label %eof2d, label %if.end152

if.end152:                                        ; preds = %if.then148
  store i32 12, ptr %BitsAvail, align 4
  br label %do.end181

if.else153:                                       ; preds = %if.then145
  %110 = load ptr, ptr %bitmap, align 8
  %111 = load ptr, ptr %cp, align 8
  %incdec.ptr154 = getelementptr inbounds i8, ptr %111, i64 1
  store ptr %incdec.ptr154, ptr %cp, align 8
  %112 = load i8, ptr %111, align 1
  %idxprom155 = zext i8 %112 to i64
  %arrayidx156 = getelementptr inbounds i8, ptr %110, i64 %idxprom155
  %113 = load i8, ptr %arrayidx156, align 1
  %conv157 = zext i8 %113 to i64
  %114 = load i32, ptr %BitsAvail, align 4
  %sh_prom158 = zext i32 %114 to i64
  %shl159 = shl i64 %conv157, %sh_prom158
  %115 = load i64, ptr %BitAcc, align 8
  %or160 = or i64 %115, %shl159
  store i64 %or160, ptr %BitAcc, align 8
  %add161 = add nsw i32 %114, 8
  store i32 %add161, ptr %BitsAvail, align 4
  %cmp162 = icmp slt i32 %114, 4
  br i1 %cmp162, label %if.then164, label %do.end181

if.then164:                                       ; preds = %if.else153
  %116 = load ptr, ptr %cp, align 8
  %117 = load ptr, ptr %ep, align 8
  %cmp165.not = icmp ult ptr %116, %117
  br i1 %cmp165.not, label %if.else168, label %if.end177

if.else168:                                       ; preds = %if.then164
  %118 = load ptr, ptr %bitmap, align 8
  %119 = load ptr, ptr %cp, align 8
  %incdec.ptr169 = getelementptr inbounds i8, ptr %119, i64 1
  store ptr %incdec.ptr169, ptr %cp, align 8
  %120 = load i8, ptr %119, align 1
  %idxprom170 = zext i8 %120 to i64
  %arrayidx171 = getelementptr inbounds i8, ptr %118, i64 %idxprom170
  %121 = load i8, ptr %arrayidx171, align 1
  %conv172 = zext i8 %121 to i64
  %122 = load i32, ptr %BitsAvail, align 4
  %sh_prom173 = zext i32 %122 to i64
  %shl174 = shl i64 %conv172, %sh_prom173
  %123 = load i64, ptr %BitAcc, align 8
  %or175 = or i64 %123, %shl174
  store i64 %or175, ptr %BitAcc, align 8
  %add176 = add nsw i32 %122, 8
  br label %if.end177

if.end177:                                        ; preds = %if.then164, %if.else168
  %storemerge33 = phi i32 [ %add176, %if.else168 ], [ 12, %if.then164 ]
  store i32 %storemerge33, ptr %BitsAvail, align 4
  br label %do.end181

do.end181:                                        ; preds = %for.cond140, %if.else153, %if.end177, %if.end152
  %124 = load i64, ptr %BitAcc, align 8
  %and182 = and i64 %124, 4095
  %add.ptr183 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %and182
  store ptr %add.ptr183, ptr %TabEnt, align 8
  %125 = load ptr, ptr %TabEnt, align 8
  %Width185 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %125, i64 0, i32 1
  %126 = load i8, ptr %Width185, align 1
  %conv186 = zext i8 %126 to i32
  %127 = load i32, ptr %BitsAvail, align 4
  %sub187 = sub nsw i32 %127, %conv186
  store i32 %sub187, ptr %BitsAvail, align 4
  %128 = load ptr, ptr %TabEnt, align 8
  %Width188 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %128, i64 0, i32 1
  %129 = load i8, ptr %Width188, align 1
  %130 = load i64, ptr %BitAcc, align 8
  %sh_prom190 = zext i8 %129 to i64
  %shr191 = lshr i64 %130, %sh_prom190
  store i64 %shr191, ptr %BitAcc, align 8
  %131 = load ptr, ptr %TabEnt, align 8
  %132 = load i8, ptr %131, align 8
  switch i8 %132, label %badWhite2d [
    i8 7, label %do.body197
    i8 9, label %sw.bb207
    i8 11, label %sw.bb207
  ]

do.body197:                                       ; preds = %do.end181
  %133 = load i32, ptr %RunLength, align 4
  %conv198 = sext i32 %133 to i64
  %134 = load ptr, ptr %TabEnt, align 8
  %Param199 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %134, i64 0, i32 2
  %135 = load i64, ptr %Param199, align 8
  %add200 = add i64 %135, %conv198
  %136 = load ptr, ptr %pa, align 8
  %incdec.ptr201 = getelementptr inbounds i64, ptr %136, i64 1
  store ptr %incdec.ptr201, ptr %pa, align 8
  store i64 %add200, ptr %136, align 8
  %137 = load ptr, ptr %TabEnt, align 8
  %Param202 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %137, i64 0, i32 2
  %138 = load i64, ptr %Param202, align 8
  %139 = load i32, ptr %a0, align 4
  %140 = trunc i64 %138 to i32
  %conv205 = add i32 %139, %140
  store i32 %conv205, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.body376

sw.bb207:                                         ; preds = %do.end181, %do.end181
  %141 = load ptr, ptr %TabEnt, align 8
  %Param208 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %141, i64 0, i32 2
  %142 = load i64, ptr %Param208, align 8
  %143 = load i32, ptr %a0, align 4
  %144 = trunc i64 %142 to i32
  %conv211 = add i32 %143, %144
  store i32 %conv211, ptr %a0, align 4
  %145 = load ptr, ptr %TabEnt, align 8
  %Param212 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %145, i64 0, i32 2
  %146 = load i64, ptr %Param212, align 8
  %147 = load i32, ptr %RunLength, align 4
  %148 = trunc i64 %146 to i32
  %conv215 = add i32 %147, %148
  store i32 %conv215, ptr %RunLength, align 4
  br label %for.cond140

for.cond219:                                      ; preds = %sw.bb63, %sw.bb286
  %149 = load i32, ptr %BitsAvail, align 4
  %cmp222 = icmp slt i32 %149, 12
  br i1 %cmp222, label %if.then224, label %do.end260

if.then224:                                       ; preds = %for.cond219
  %150 = load ptr, ptr %cp, align 8
  %151 = load ptr, ptr %ep, align 8
  %cmp225.not = icmp ult ptr %150, %151
  br i1 %cmp225.not, label %if.else232, label %if.then227

if.then227:                                       ; preds = %if.then224
  %152 = load i32, ptr %BitsAvail, align 4
  %cmp228 = icmp eq i32 %152, 0
  br i1 %cmp228, label %eof2d, label %if.end231

if.end231:                                        ; preds = %if.then227
  store i32 12, ptr %BitsAvail, align 4
  br label %do.end260

if.else232:                                       ; preds = %if.then224
  %153 = load ptr, ptr %bitmap, align 8
  %154 = load ptr, ptr %cp, align 8
  %incdec.ptr233 = getelementptr inbounds i8, ptr %154, i64 1
  store ptr %incdec.ptr233, ptr %cp, align 8
  %155 = load i8, ptr %154, align 1
  %idxprom234 = zext i8 %155 to i64
  %arrayidx235 = getelementptr inbounds i8, ptr %153, i64 %idxprom234
  %156 = load i8, ptr %arrayidx235, align 1
  %conv236 = zext i8 %156 to i64
  %157 = load i32, ptr %BitsAvail, align 4
  %sh_prom237 = zext i32 %157 to i64
  %shl238 = shl i64 %conv236, %sh_prom237
  %158 = load i64, ptr %BitAcc, align 8
  %or239 = or i64 %158, %shl238
  store i64 %or239, ptr %BitAcc, align 8
  %add240 = add nsw i32 %157, 8
  store i32 %add240, ptr %BitsAvail, align 4
  %cmp241 = icmp slt i32 %157, 4
  br i1 %cmp241, label %if.then243, label %do.end260

if.then243:                                       ; preds = %if.else232
  %159 = load ptr, ptr %cp, align 8
  %160 = load ptr, ptr %ep, align 8
  %cmp244.not = icmp ult ptr %159, %160
  br i1 %cmp244.not, label %if.else247, label %if.end256

if.else247:                                       ; preds = %if.then243
  %161 = load ptr, ptr %bitmap, align 8
  %162 = load ptr, ptr %cp, align 8
  %incdec.ptr248 = getelementptr inbounds i8, ptr %162, i64 1
  store ptr %incdec.ptr248, ptr %cp, align 8
  %163 = load i8, ptr %162, align 1
  %idxprom249 = zext i8 %163 to i64
  %arrayidx250 = getelementptr inbounds i8, ptr %161, i64 %idxprom249
  %164 = load i8, ptr %arrayidx250, align 1
  %conv251 = zext i8 %164 to i64
  %165 = load i32, ptr %BitsAvail, align 4
  %sh_prom252 = zext i32 %165 to i64
  %shl253 = shl i64 %conv251, %sh_prom252
  %166 = load i64, ptr %BitAcc, align 8
  %or254 = or i64 %166, %shl253
  store i64 %or254, ptr %BitAcc, align 8
  %add255 = add nsw i32 %165, 8
  br label %if.end256

if.end256:                                        ; preds = %if.then243, %if.else247
  %storemerge26 = phi i32 [ %add255, %if.else247 ], [ 12, %if.then243 ]
  store i32 %storemerge26, ptr %BitsAvail, align 4
  br label %do.end260

do.end260:                                        ; preds = %for.cond219, %if.else232, %if.end256, %if.end231
  %167 = load i64, ptr %BitAcc, align 8
  %and261 = and i64 %167, 4095
  %add.ptr262 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %and261
  store ptr %add.ptr262, ptr %TabEnt, align 8
  %168 = load ptr, ptr %TabEnt, align 8
  %Width264 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %168, i64 0, i32 1
  %169 = load i8, ptr %Width264, align 1
  %conv265 = zext i8 %169 to i32
  %170 = load i32, ptr %BitsAvail, align 4
  %sub266 = sub nsw i32 %170, %conv265
  store i32 %sub266, ptr %BitsAvail, align 4
  %171 = load ptr, ptr %TabEnt, align 8
  %Width267 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %171, i64 0, i32 1
  %172 = load i8, ptr %Width267, align 1
  %173 = load i64, ptr %BitAcc, align 8
  %sh_prom269 = zext i8 %172 to i64
  %shr270 = lshr i64 %173, %sh_prom269
  store i64 %shr270, ptr %BitAcc, align 8
  %174 = load ptr, ptr %TabEnt, align 8
  %175 = load i8, ptr %174, align 8
  switch i8 %175, label %badWhite2d [
    i8 7, label %do.body276
    i8 9, label %sw.bb286
    i8 11, label %sw.bb286
  ]

do.body276:                                       ; preds = %do.end260
  %176 = load i32, ptr %RunLength, align 4
  %conv277 = sext i32 %176 to i64
  %177 = load ptr, ptr %TabEnt, align 8
  %Param278 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %177, i64 0, i32 2
  %178 = load i64, ptr %Param278, align 8
  %add279 = add i64 %178, %conv277
  %179 = load ptr, ptr %pa, align 8
  %incdec.ptr280 = getelementptr inbounds i64, ptr %179, i64 1
  store ptr %incdec.ptr280, ptr %pa, align 8
  store i64 %add279, ptr %179, align 8
  %180 = load ptr, ptr %TabEnt, align 8
  %Param281 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %180, i64 0, i32 2
  %181 = load i64, ptr %Param281, align 8
  %182 = load i32, ptr %a0, align 4
  %183 = trunc i64 %181 to i32
  %conv284 = add i32 %182, %183
  store i32 %conv284, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %for.cond297

sw.bb286:                                         ; preds = %do.end260, %do.end260
  %184 = load ptr, ptr %TabEnt, align 8
  %Param287 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %184, i64 0, i32 2
  %185 = load i64, ptr %Param287, align 8
  %186 = load i32, ptr %a0, align 4
  %187 = trunc i64 %185 to i32
  %conv290 = add i32 %186, %187
  store i32 %conv290, ptr %a0, align 4
  %188 = load ptr, ptr %TabEnt, align 8
  %Param291 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %188, i64 0, i32 2
  %189 = load i64, ptr %Param291, align 8
  %190 = load i32, ptr %RunLength, align 4
  %191 = trunc i64 %189 to i32
  %conv294 = add i32 %190, %191
  store i32 %conv294, ptr %RunLength, align 4
  br label %for.cond219

for.cond297:                                      ; preds = %sw.bb364, %do.body276
  %192 = load i32, ptr %BitsAvail, align 4
  %cmp300 = icmp slt i32 %192, 13
  br i1 %cmp300, label %if.then302, label %do.end338

if.then302:                                       ; preds = %for.cond297
  %193 = load ptr, ptr %cp, align 8
  %194 = load ptr, ptr %ep, align 8
  %cmp303.not = icmp ult ptr %193, %194
  br i1 %cmp303.not, label %if.else310, label %if.then305

if.then305:                                       ; preds = %if.then302
  %195 = load i32, ptr %BitsAvail, align 4
  %cmp306 = icmp eq i32 %195, 0
  br i1 %cmp306, label %eof2d, label %if.end309

if.end309:                                        ; preds = %if.then305
  store i32 13, ptr %BitsAvail, align 4
  br label %do.end338

if.else310:                                       ; preds = %if.then302
  %196 = load ptr, ptr %bitmap, align 8
  %197 = load ptr, ptr %cp, align 8
  %incdec.ptr311 = getelementptr inbounds i8, ptr %197, i64 1
  store ptr %incdec.ptr311, ptr %cp, align 8
  %198 = load i8, ptr %197, align 1
  %idxprom312 = zext i8 %198 to i64
  %arrayidx313 = getelementptr inbounds i8, ptr %196, i64 %idxprom312
  %199 = load i8, ptr %arrayidx313, align 1
  %conv314 = zext i8 %199 to i64
  %200 = load i32, ptr %BitsAvail, align 4
  %sh_prom315 = zext i32 %200 to i64
  %shl316 = shl i64 %conv314, %sh_prom315
  %201 = load i64, ptr %BitAcc, align 8
  %or317 = or i64 %201, %shl316
  store i64 %or317, ptr %BitAcc, align 8
  %add318 = add nsw i32 %200, 8
  store i32 %add318, ptr %BitsAvail, align 4
  %cmp319 = icmp slt i32 %200, 5
  br i1 %cmp319, label %if.then321, label %do.end338

if.then321:                                       ; preds = %if.else310
  %202 = load ptr, ptr %cp, align 8
  %203 = load ptr, ptr %ep, align 8
  %cmp322.not = icmp ult ptr %202, %203
  br i1 %cmp322.not, label %if.else325, label %if.end334

if.else325:                                       ; preds = %if.then321
  %204 = load ptr, ptr %bitmap, align 8
  %205 = load ptr, ptr %cp, align 8
  %incdec.ptr326 = getelementptr inbounds i8, ptr %205, i64 1
  store ptr %incdec.ptr326, ptr %cp, align 8
  %206 = load i8, ptr %205, align 1
  %idxprom327 = zext i8 %206 to i64
  %arrayidx328 = getelementptr inbounds i8, ptr %204, i64 %idxprom327
  %207 = load i8, ptr %arrayidx328, align 1
  %conv329 = zext i8 %207 to i64
  %208 = load i32, ptr %BitsAvail, align 4
  %sh_prom330 = zext i32 %208 to i64
  %shl331 = shl i64 %conv329, %sh_prom330
  %209 = load i64, ptr %BitAcc, align 8
  %or332 = or i64 %209, %shl331
  store i64 %or332, ptr %BitAcc, align 8
  %add333 = add nsw i32 %208, 8
  br label %if.end334

if.end334:                                        ; preds = %if.then321, %if.else325
  %storemerge25 = phi i32 [ %add333, %if.else325 ], [ 13, %if.then321 ]
  store i32 %storemerge25, ptr %BitsAvail, align 4
  br label %do.end338

do.end338:                                        ; preds = %for.cond297, %if.else310, %if.end334, %if.end309
  %210 = load i64, ptr %BitAcc, align 8
  %and339 = and i64 %210, 8191
  %add.ptr340 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %and339
  store ptr %add.ptr340, ptr %TabEnt, align 8
  %211 = load ptr, ptr %TabEnt, align 8
  %Width342 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %211, i64 0, i32 1
  %212 = load i8, ptr %Width342, align 1
  %conv343 = zext i8 %212 to i32
  %213 = load i32, ptr %BitsAvail, align 4
  %sub344 = sub nsw i32 %213, %conv343
  store i32 %sub344, ptr %BitsAvail, align 4
  %214 = load ptr, ptr %TabEnt, align 8
  %Width345 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %214, i64 0, i32 1
  %215 = load i8, ptr %Width345, align 1
  %216 = load i64, ptr %BitAcc, align 8
  %sh_prom347 = zext i8 %215 to i64
  %shr348 = lshr i64 %216, %sh_prom347
  store i64 %shr348, ptr %BitAcc, align 8
  %217 = load ptr, ptr %TabEnt, align 8
  %218 = load i8, ptr %217, align 8
  switch i8 %218, label %badBlack2d [
    i8 8, label %do.body354
    i8 10, label %sw.bb364
    i8 11, label %sw.bb364
  ]

do.body354:                                       ; preds = %do.end338
  %219 = load i32, ptr %RunLength, align 4
  %conv355 = sext i32 %219 to i64
  %220 = load ptr, ptr %TabEnt, align 8
  %Param356 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %220, i64 0, i32 2
  %221 = load i64, ptr %Param356, align 8
  %add357 = add i64 %221, %conv355
  %222 = load ptr, ptr %pa, align 8
  %incdec.ptr358 = getelementptr inbounds i64, ptr %222, i64 1
  store ptr %incdec.ptr358, ptr %pa, align 8
  store i64 %add357, ptr %222, align 8
  %223 = load ptr, ptr %TabEnt, align 8
  %Param359 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %223, i64 0, i32 2
  %224 = load i64, ptr %Param359, align 8
  %225 = load i32, ptr %a0, align 4
  %226 = trunc i64 %224 to i32
  %conv362 = add i32 %225, %226
  store i32 %conv362, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.body376

sw.bb364:                                         ; preds = %do.end338, %do.end338
  %227 = load ptr, ptr %TabEnt, align 8
  %Param365 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %227, i64 0, i32 2
  %228 = load i64, ptr %Param365, align 8
  %229 = load i32, ptr %a0, align 4
  %230 = trunc i64 %228 to i32
  %conv368 = add i32 %229, %230
  store i32 %conv368, ptr %a0, align 4
  %231 = load ptr, ptr %TabEnt, align 8
  %Param369 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %231, i64 0, i32 2
  %232 = load i64, ptr %Param369, align 8
  %233 = load i32, ptr %RunLength, align 4
  %234 = trunc i64 %232 to i32
  %conv372 = add i32 %233, %234
  store i32 %conv372, ptr %RunLength, align 4
  br label %for.cond297

do.body376:                                       ; preds = %do.body197, %do.body354
  %235 = load ptr, ptr %pa, align 8
  %236 = load ptr, ptr %thisrun, align 8
  %cmp377.not = icmp eq ptr %235, %236
  br i1 %cmp377.not, label %sw.epilog638, label %while.cond380

while.cond380:                                    ; preds = %do.body376, %while.body387
  %237 = load i32, ptr %b1, align 4
  %238 = load i32, ptr %a0, align 4
  %cmp381.not = icmp sgt i32 %237, %238
  %239 = load i32, ptr %b1, align 4
  %240 = load i32, ptr %lastx, align 4
  %cmp384 = icmp slt i32 %239, %240
  %241 = select i1 %cmp381.not, i1 false, i1 %cmp384
  br i1 %241, label %while.body387, label %sw.epilog638

while.body387:                                    ; preds = %while.cond380
  %242 = load ptr, ptr %pb, align 8
  %243 = load i64, ptr %242, align 8
  %arrayidx389 = getelementptr inbounds i64, ptr %242, i64 1
  %244 = load i64, ptr %arrayidx389, align 8
  %add390 = add i64 %243, %244
  %245 = load i32, ptr %b1, align 4
  %246 = trunc i64 %add390 to i32
  %conv393 = add i32 %245, %246
  store i32 %conv393, ptr %b1, align 4
  %247 = load ptr, ptr %pb, align 8
  %add.ptr394 = getelementptr inbounds i64, ptr %247, i64 2
  store ptr %add.ptr394, ptr %pb, align 8
  br label %while.cond380, !llvm.loop !13

do.body399:                                       ; preds = %do.end24
  %248 = load ptr, ptr %pa, align 8
  %249 = load ptr, ptr %thisrun, align 8
  %cmp400.not = icmp eq ptr %248, %249
  br i1 %cmp400.not, label %do.body421, label %while.cond403

while.cond403:                                    ; preds = %do.body399, %while.body410
  %250 = load i32, ptr %b1, align 4
  %251 = load i32, ptr %a0, align 4
  %cmp404.not = icmp sgt i32 %250, %251
  %252 = load i32, ptr %b1, align 4
  %253 = load i32, ptr %lastx, align 4
  %cmp407 = icmp slt i32 %252, %253
  %254 = select i1 %cmp404.not, i1 false, i1 %cmp407
  br i1 %254, label %while.body410, label %do.body421

while.body410:                                    ; preds = %while.cond403
  %255 = load ptr, ptr %pb, align 8
  %256 = load i64, ptr %255, align 8
  %arrayidx412 = getelementptr inbounds i64, ptr %255, i64 1
  %257 = load i64, ptr %arrayidx412, align 8
  %add413 = add i64 %256, %257
  %258 = load i32, ptr %b1, align 4
  %259 = trunc i64 %add413 to i32
  %conv416 = add i32 %258, %259
  store i32 %conv416, ptr %b1, align 4
  %260 = load ptr, ptr %pb, align 8
  %add.ptr417 = getelementptr inbounds i64, ptr %260, i64 2
  store ptr %add.ptr417, ptr %pb, align 8
  br label %while.cond403, !llvm.loop !14

do.body421:                                       ; preds = %while.cond403, %do.body399
  %261 = load i32, ptr %RunLength, align 4
  %262 = load i32, ptr %b1, align 4
  %263 = load i32, ptr %a0, align 4
  %sub422 = sub nsw i32 %262, %263
  %add423 = add nsw i32 %261, %sub422
  %conv424 = sext i32 %add423 to i64
  %264 = load ptr, ptr %pa, align 8
  %incdec.ptr425 = getelementptr inbounds i64, ptr %264, i64 1
  store ptr %incdec.ptr425, ptr %pa, align 8
  store i64 %conv424, ptr %264, align 8
  %265 = load i32, ptr %b1, align 4
  store i32 %265, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %266 = load ptr, ptr %pb, align 8
  %incdec.ptr429 = getelementptr inbounds i64, ptr %266, i64 1
  store ptr %incdec.ptr429, ptr %pb, align 8
  %267 = load i64, ptr %266, align 8
  %268 = load i32, ptr %b1, align 4
  %269 = trunc i64 %267 to i32
  %conv432 = add i32 %268, %269
  store i32 %conv432, ptr %b1, align 4
  br label %sw.epilog638

do.body434:                                       ; preds = %do.end24
  %270 = load ptr, ptr %pa, align 8
  %271 = load ptr, ptr %thisrun, align 8
  %cmp435.not = icmp eq ptr %270, %271
  br i1 %cmp435.not, label %do.body456, label %while.cond438

while.cond438:                                    ; preds = %do.body434, %while.body445
  %272 = load i32, ptr %b1, align 4
  %273 = load i32, ptr %a0, align 4
  %cmp439.not = icmp sgt i32 %272, %273
  %274 = load i32, ptr %b1, align 4
  %275 = load i32, ptr %lastx, align 4
  %cmp442 = icmp slt i32 %274, %275
  %276 = select i1 %cmp439.not, i1 false, i1 %cmp442
  br i1 %276, label %while.body445, label %do.body456

while.body445:                                    ; preds = %while.cond438
  %277 = load ptr, ptr %pb, align 8
  %278 = load i64, ptr %277, align 8
  %arrayidx447 = getelementptr inbounds i64, ptr %277, i64 1
  %279 = load i64, ptr %arrayidx447, align 8
  %add448 = add i64 %278, %279
  %280 = load i32, ptr %b1, align 4
  %281 = trunc i64 %add448 to i32
  %conv451 = add i32 %280, %281
  store i32 %conv451, ptr %b1, align 4
  %282 = load ptr, ptr %pb, align 8
  %add.ptr452 = getelementptr inbounds i64, ptr %282, i64 2
  store ptr %add.ptr452, ptr %pb, align 8
  br label %while.cond438, !llvm.loop !15

do.body456:                                       ; preds = %while.cond438, %do.body434
  %283 = load i32, ptr %RunLength, align 4
  %conv457 = sext i32 %283 to i64
  %284 = load i32, ptr %b1, align 4
  %285 = load i32, ptr %a0, align 4
  %sub458 = sub nsw i32 %284, %285
  %conv459 = sext i32 %sub458 to i64
  %286 = load ptr, ptr %TabEnt, align 8
  %Param460 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %286, i64 0, i32 2
  %287 = load i64, ptr %Param460, align 8
  %add461 = add i64 %287, %conv459
  %add462 = add i64 %add461, %conv457
  %288 = load ptr, ptr %pa, align 8
  %incdec.ptr463 = getelementptr inbounds i64, ptr %288, i64 1
  store ptr %incdec.ptr463, ptr %pa, align 8
  store i64 %add462, ptr %288, align 8
  %289 = load i32, ptr %b1, align 4
  %290 = load ptr, ptr %TabEnt, align 8
  %Param466 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %290, i64 0, i32 2
  %291 = load i64, ptr %Param466, align 8
  %292 = trunc i64 %291 to i32
  %conv470 = add i32 %289, %292
  store i32 %conv470, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %293 = load ptr, ptr %pb, align 8
  %incdec.ptr472 = getelementptr inbounds i64, ptr %293, i64 1
  store ptr %incdec.ptr472, ptr %pb, align 8
  %294 = load i64, ptr %293, align 8
  %295 = load i32, ptr %b1, align 4
  %296 = trunc i64 %294 to i32
  %conv475 = add i32 %295, %296
  store i32 %conv475, ptr %b1, align 4
  br label %sw.epilog638

do.body477:                                       ; preds = %do.end24
  %297 = load ptr, ptr %pa, align 8
  %298 = load ptr, ptr %thisrun, align 8
  %cmp478.not = icmp eq ptr %297, %298
  br i1 %cmp478.not, label %do.body499, label %while.cond481

while.cond481:                                    ; preds = %do.body477, %while.body488
  %299 = load i32, ptr %b1, align 4
  %300 = load i32, ptr %a0, align 4
  %cmp482.not = icmp sgt i32 %299, %300
  %301 = load i32, ptr %b1, align 4
  %302 = load i32, ptr %lastx, align 4
  %cmp485 = icmp slt i32 %301, %302
  %303 = select i1 %cmp482.not, i1 false, i1 %cmp485
  br i1 %303, label %while.body488, label %do.body499

while.body488:                                    ; preds = %while.cond481
  %304 = load ptr, ptr %pb, align 8
  %305 = load i64, ptr %304, align 8
  %arrayidx490 = getelementptr inbounds i64, ptr %304, i64 1
  %306 = load i64, ptr %arrayidx490, align 8
  %add491 = add i64 %305, %306
  %307 = load i32, ptr %b1, align 4
  %308 = trunc i64 %add491 to i32
  %conv494 = add i32 %307, %308
  store i32 %conv494, ptr %b1, align 4
  %309 = load ptr, ptr %pb, align 8
  %add.ptr495 = getelementptr inbounds i64, ptr %309, i64 2
  store ptr %add.ptr495, ptr %pb, align 8
  br label %while.cond481, !llvm.loop !16

do.body499:                                       ; preds = %while.cond481, %do.body477
  %310 = load i32, ptr %RunLength, align 4
  %conv500 = sext i32 %310 to i64
  %311 = load i32, ptr %b1, align 4
  %312 = load i32, ptr %a0, align 4
  %sub501 = sub nsw i32 %311, %312
  %conv502 = sext i32 %sub501 to i64
  %313 = load ptr, ptr %TabEnt, align 8
  %Param503 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %313, i64 0, i32 2
  %314 = load i64, ptr %Param503, align 8
  %sub504 = sub i64 %conv502, %314
  %add505 = add i64 %sub504, %conv500
  %315 = load ptr, ptr %pa, align 8
  %incdec.ptr506 = getelementptr inbounds i64, ptr %315, i64 1
  store ptr %incdec.ptr506, ptr %pa, align 8
  store i64 %add505, ptr %315, align 8
  %316 = load i32, ptr %b1, align 4
  %317 = load i32, ptr %a0, align 4
  %318 = load ptr, ptr %TabEnt, align 8
  %Param509 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %318, i64 0, i32 2
  %319 = load i64, ptr %Param509, align 8
  %320 = trunc i64 %319 to i32
  %321 = add i32 %317, %320
  %322 = sub i32 %316, %321
  %conv513 = add i32 %322, %317
  store i32 %conv513, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %323 = load ptr, ptr %pb, align 8
  %incdec.ptr515 = getelementptr inbounds i64, ptr %323, i64 -1
  store ptr %incdec.ptr515, ptr %pb, align 8
  %324 = load i64, ptr %incdec.ptr515, align 8
  %325 = load i32, ptr %b1, align 4
  %326 = trunc i64 %324 to i32
  %conv518 = sub i32 %325, %326
  store i32 %conv518, ptr %b1, align 4
  br label %sw.epilog638

sw.bb519:                                         ; preds = %do.end24
  %327 = load i32, ptr %lastx, align 4
  %328 = load i32, ptr %a0, align 4
  %sub520 = sub nsw i32 %327, %328
  %conv521 = sext i32 %sub520 to i64
  %329 = load ptr, ptr %pa, align 8
  %incdec.ptr522 = getelementptr inbounds i64, ptr %329, i64 1
  store ptr %incdec.ptr522, ptr %pa, align 8
  store i64 %conv521, ptr %329, align 8
  %330 = load ptr, ptr %tif.addr, align 8
  %331 = load i32, ptr %a0, align 4
  %conv523 = sext i32 %331 to i64
  call void @Fax3Extension(ptr noundef nonnull @Fax4Decode.module, ptr noundef %330, i64 noundef %conv523)
  br label %do.body685

sw.bb524:                                         ; preds = %do.end24
  %332 = load i32, ptr %lastx, align 4
  %333 = load i32, ptr %a0, align 4
  %sub525 = sub nsw i32 %332, %333
  %conv526 = sext i32 %sub525 to i64
  %334 = load ptr, ptr %pa, align 8
  %incdec.ptr527 = getelementptr inbounds i64, ptr %334, i64 1
  store ptr %incdec.ptr527, ptr %pa, align 8
  store i64 %conv526, ptr %334, align 8
  %335 = load i32, ptr %BitsAvail, align 4
  %cmp529 = icmp slt i32 %335, 5
  br i1 %cmp529, label %if.then531, label %do.end550

if.then531:                                       ; preds = %sw.bb524
  %336 = load ptr, ptr %cp, align 8
  %337 = load ptr, ptr %ep, align 8
  %cmp532.not = icmp ult ptr %336, %337
  br i1 %cmp532.not, label %if.else539, label %if.then534

if.then534:                                       ; preds = %if.then531
  %338 = load i32, ptr %BitsAvail, align 4
  %cmp535 = icmp eq i32 %338, 0
  br i1 %cmp535, label %eof2d, label %if.end548

if.else539:                                       ; preds = %if.then531
  %339 = load ptr, ptr %bitmap, align 8
  %340 = load ptr, ptr %cp, align 8
  %incdec.ptr540 = getelementptr inbounds i8, ptr %340, i64 1
  store ptr %incdec.ptr540, ptr %cp, align 8
  %341 = load i8, ptr %340, align 1
  %idxprom541 = zext i8 %341 to i64
  %arrayidx542 = getelementptr inbounds i8, ptr %339, i64 %idxprom541
  %342 = load i8, ptr %arrayidx542, align 1
  %conv543 = zext i8 %342 to i64
  %343 = load i32, ptr %BitsAvail, align 4
  %sh_prom544 = zext i32 %343 to i64
  %shl545 = shl i64 %conv543, %sh_prom544
  %344 = load i64, ptr %BitAcc, align 8
  %or546 = or i64 %344, %shl545
  store i64 %or546, ptr %BitAcc, align 8
  %add547 = add nsw i32 %343, 8
  br label %if.end548

if.end548:                                        ; preds = %if.then534, %if.else539
  %storemerge6 = phi i32 [ %add547, %if.else539 ], [ 5, %if.then534 ]
  store i32 %storemerge6, ptr %BitsAvail, align 4
  br label %do.end550

do.end550:                                        ; preds = %sw.bb524, %if.end548
  %345 = load i64, ptr %BitAcc, align 8
  %and551 = and i64 %345, 31
  %tobool552.not = icmp eq i64 %and551, 0
  br i1 %tobool552.not, label %if.end555, label %if.then553

if.then553:                                       ; preds = %do.end550
  %346 = load ptr, ptr %tif.addr, align 8
  %347 = load i32, ptr %a0, align 4
  %conv554 = sext i32 %347 to i64
  call void @Fax3Unexpected(ptr noundef nonnull @Fax4Decode.module, ptr noundef %346, i64 noundef %conv554)
  br label %if.end555

if.end555:                                        ; preds = %if.then553, %do.end550
  store i32 1, ptr %EOLcnt, align 4
  br label %do.body685

badMain2d:                                        ; preds = %do.end668, %do.end24
  %348 = load ptr, ptr %tif.addr, align 8
  %349 = load i32, ptr %a0, align 4
  %conv557 = sext i32 %349 to i64
  call void @Fax3Unexpected(ptr noundef nonnull @Fax4Decode.module, ptr noundef %348, i64 noundef %conv557)
  br label %do.body685

badBlack2d:                                       ; preds = %do.end338, %do.end106
  %350 = load ptr, ptr %tif.addr, align 8
  %351 = load i32, ptr %a0, align 4
  %conv558 = sext i32 %351 to i64
  call void @Fax3Unexpected(ptr noundef nonnull @Fax4Decode.module, ptr noundef %350, i64 noundef %conv558)
  br label %do.body685

badWhite2d:                                       ; preds = %do.end260, %do.end181
  %352 = load ptr, ptr %tif.addr, align 8
  %353 = load i32, ptr %a0, align 4
  %conv559 = sext i32 %353 to i64
  call void @Fax3Unexpected(ptr noundef nonnull @Fax4Decode.module, ptr noundef %352, i64 noundef %conv559)
  br label %do.body685

eof2d:                                            ; preds = %if.then652, %if.then534, %if.then305, %if.then227, %if.then148, %if.then73, %if.then16
  %354 = load ptr, ptr %tif.addr, align 8
  %355 = load i32, ptr %a0, align 4
  %conv560 = sext i32 %355 to i64
  call void @Fax3PrematureEOF(ptr noundef nonnull @Fax4Decode.module, ptr noundef %354, i64 noundef %conv560)
  %356 = load i32, ptr %RunLength, align 4
  %tobool562.not = icmp eq i32 %356, 0
  br i1 %tobool562.not, label %if.end570, label %do.body564

do.body564:                                       ; preds = %eof2d
  %357 = load i32, ptr %RunLength, align 4
  %conv566 = sext i32 %357 to i64
  %358 = load ptr, ptr %pa, align 8
  %incdec.ptr567 = getelementptr inbounds i64, ptr %358, i64 1
  store ptr %incdec.ptr567, ptr %pa, align 8
  store i64 %conv566, ptr %358, align 8
  store i32 0, ptr %RunLength, align 4
  br label %if.end570

if.end570:                                        ; preds = %do.body564, %eof2d
  %359 = load i32, ptr %a0, align 4
  %360 = load i32, ptr %lastx, align 4
  %cmp571.not = icmp eq i32 %359, %360
  br i1 %cmp571.not, label %EOFG4, label %if.then573

if.then573:                                       ; preds = %if.end570
  %361 = load ptr, ptr %tif.addr, align 8
  %362 = load i32, ptr %a0, align 4
  %conv574 = sext i32 %362 to i64
  %363 = load i32, ptr %lastx, align 4
  %conv575 = sext i32 %363 to i64
  call void @Fax3BadLength(ptr noundef nonnull @Fax4Decode.module, ptr noundef %361, i64 noundef %conv574, i64 noundef %conv575)
  br label %while.cond576

while.cond576:                                    ; preds = %while.body583, %if.then573
  %364 = load i32, ptr %a0, align 4
  %365 = load i32, ptr %lastx, align 4
  %cmp577 = icmp sgt i32 %364, %365
  %366 = load ptr, ptr %pa, align 8
  %367 = load ptr, ptr %thisrun, align 8
  %cmp580 = icmp ugt ptr %366, %367
  %368 = select i1 %cmp577, i1 %cmp580, i1 false
  br i1 %368, label %while.body583, label %while.end588

while.body583:                                    ; preds = %while.cond576
  %369 = load ptr, ptr %pa, align 8
  %incdec.ptr584 = getelementptr inbounds i64, ptr %369, i64 -1
  store ptr %incdec.ptr584, ptr %pa, align 8
  %370 = load i64, ptr %incdec.ptr584, align 8
  %371 = load i32, ptr %a0, align 4
  %372 = trunc i64 %370 to i32
  %conv587 = sub i32 %371, %372
  store i32 %conv587, ptr %a0, align 4
  br label %while.cond576, !llvm.loop !17

while.end588:                                     ; preds = %while.cond576
  %373 = load i32, ptr %a0, align 4
  %374 = load i32, ptr %lastx, align 4
  %cmp589 = icmp slt i32 %373, %374
  br i1 %cmp589, label %if.then591, label %if.else618

if.then591:                                       ; preds = %while.end588
  %375 = load i32, ptr %a0, align 4
  %cmp592 = icmp slt i32 %375, 0
  %spec.store.select = select i1 %cmp592, i32 0, i32 %375
  store i32 %spec.store.select, ptr %a0, align 4
  %376 = load ptr, ptr %pa, align 8
  %377 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast596 = ptrtoint ptr %376 to i64
  %sub.ptr.rhs.cast597 = ptrtoint ptr %377 to i64
  %sub.ptr.sub598 = sub i64 %sub.ptr.lhs.cast596, %sub.ptr.rhs.cast597
  %378 = and i64 %sub.ptr.sub598, 8
  %tobool601.not = icmp eq i64 %378, 0
  br i1 %tobool601.not, label %do.body610, label %do.body603

do.body603:                                       ; preds = %if.then591
  %379 = load i32, ptr %RunLength, align 4
  %conv605 = sext i32 %379 to i64
  %380 = load ptr, ptr %pa, align 8
  %incdec.ptr606 = getelementptr inbounds i64, ptr %380, i64 1
  store ptr %incdec.ptr606, ptr %pa, align 8
  store i64 %conv605, ptr %380, align 8
  store i32 0, ptr %RunLength, align 4
  br label %do.body610

do.body610:                                       ; preds = %if.then591, %do.body603
  %381 = load i32, ptr %RunLength, align 4
  %382 = load i32, ptr %lastx, align 4
  %383 = load i32, ptr %a0, align 4
  %sub611 = sub nsw i32 %382, %383
  %add612 = add nsw i32 %381, %sub611
  %conv613 = sext i32 %add612 to i64
  %384 = load ptr, ptr %pa, align 8
  %incdec.ptr614 = getelementptr inbounds i64, ptr %384, i64 1
  store ptr %incdec.ptr614, ptr %pa, align 8
  store i64 %conv613, ptr %384, align 8
  %385 = load i32, ptr %lastx, align 4
  store i32 %385, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %EOFG4

if.else618:                                       ; preds = %while.end588
  %386 = load i32, ptr %a0, align 4
  %387 = load i32, ptr %lastx, align 4
  %cmp619 = icmp sgt i32 %386, %387
  br i1 %cmp619, label %do.body622, label %EOFG4

do.body622:                                       ; preds = %if.else618
  %388 = load i32, ptr %RunLength, align 4
  %389 = load i32, ptr %lastx, align 4
  %add623 = add nsw i32 %388, %389
  %conv624 = sext i32 %add623 to i64
  %390 = load ptr, ptr %pa, align 8
  %incdec.ptr625 = getelementptr inbounds i64, ptr %390, i64 1
  store ptr %incdec.ptr625, ptr %pa, align 8
  store i64 %conv624, ptr %390, align 8
  %391 = load i32, ptr %lastx, align 4
  %392 = load i32, ptr %a0, align 4
  %add626 = add nsw i32 %392, %391
  store i32 %add626, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %393 = load i32, ptr %RunLength, align 4
  %conv630 = sext i32 %393 to i64
  %394 = load ptr, ptr %pa, align 8
  %incdec.ptr631 = getelementptr inbounds i64, ptr %394, i64 1
  store ptr %incdec.ptr631, ptr %pa, align 8
  store i64 %conv630, ptr %394, align 8
  store i32 0, ptr %RunLength, align 4
  br label %EOFG4

sw.epilog638:                                     ; preds = %while.cond380, %do.body376, %do.body499, %do.body456, %do.body421, %do.end52
  br label %while.cond6, !llvm.loop !18

while.end639:                                     ; preds = %while.cond6
  %395 = load i32, ptr %RunLength, align 4
  %tobool640.not = icmp eq i32 %395, 0
  br i1 %tobool640.not, label %do.body685, label %if.then641

if.then641:                                       ; preds = %while.end639
  %396 = load i32, ptr %RunLength, align 4
  %397 = load i32, ptr %a0, align 4
  %add642 = add nsw i32 %396, %397
  %398 = load i32, ptr %lastx, align 4
  %cmp643 = icmp slt i32 %add642, %398
  br i1 %cmp643, label %do.body646, label %do.body678

do.body646:                                       ; preds = %if.then641
  %399 = load i32, ptr %BitsAvail, align 4
  %cmp647 = icmp slt i32 %399, 1
  br i1 %cmp647, label %if.then649, label %do.end668

if.then649:                                       ; preds = %do.body646
  %400 = load ptr, ptr %cp, align 8
  %401 = load ptr, ptr %ep, align 8
  %cmp650.not = icmp ult ptr %400, %401
  br i1 %cmp650.not, label %if.else657, label %if.then652

if.then652:                                       ; preds = %if.then649
  %402 = load i32, ptr %BitsAvail, align 4
  %cmp653 = icmp eq i32 %402, 0
  br i1 %cmp653, label %eof2d, label %if.end666

if.else657:                                       ; preds = %if.then649
  %403 = load ptr, ptr %bitmap, align 8
  %404 = load ptr, ptr %cp, align 8
  %incdec.ptr658 = getelementptr inbounds i8, ptr %404, i64 1
  store ptr %incdec.ptr658, ptr %cp, align 8
  %405 = load i8, ptr %404, align 1
  %idxprom659 = zext i8 %405 to i64
  %arrayidx660 = getelementptr inbounds i8, ptr %403, i64 %idxprom659
  %406 = load i8, ptr %arrayidx660, align 1
  %conv661 = zext i8 %406 to i64
  %407 = load i32, ptr %BitsAvail, align 4
  %sh_prom662 = zext i32 %407 to i64
  %shl663 = shl i64 %conv661, %sh_prom662
  %408 = load i64, ptr %BitAcc, align 8
  %or664 = or i64 %408, %shl663
  store i64 %or664, ptr %BitAcc, align 8
  %add665 = add nsw i32 %407, 8
  br label %if.end666

if.end666:                                        ; preds = %if.then652, %if.else657
  %storemerge3 = phi i32 [ %add665, %if.else657 ], [ 1, %if.then652 ]
  store i32 %storemerge3, ptr %BitsAvail, align 4
  br label %do.end668

do.end668:                                        ; preds = %do.body646, %if.end666
  %409 = load i64, ptr %BitAcc, align 8
  %and669 = and i64 %409, 1
  %tobool670.not = icmp eq i64 %and669, 0
  br i1 %tobool670.not, label %badMain2d, label %do.body673

do.body673:                                       ; preds = %do.end668
  %410 = load i32, ptr %BitsAvail, align 4
  %sub674 = add nsw i32 %410, -1
  store i32 %sub674, ptr %BitsAvail, align 4
  %411 = load i64, ptr %BitAcc, align 8
  %shr675 = lshr i64 %411, 1
  store i64 %shr675, ptr %BitAcc, align 8
  br label %do.body678

do.body678:                                       ; preds = %if.then641, %do.body673
  %412 = load i32, ptr %RunLength, align 4
  %conv680 = sext i32 %412 to i64
  %413 = load ptr, ptr %pa, align 8
  %incdec.ptr681 = getelementptr inbounds i64, ptr %413, i64 1
  store ptr %incdec.ptr681, ptr %pa, align 8
  store i64 %conv680, ptr %413, align 8
  store i32 0, ptr %RunLength, align 4
  br label %do.body685

do.body685:                                       ; preds = %sw.bb519, %if.end555, %badMain2d, %badBlack2d, %badWhite2d, %do.body678, %while.end639
  %414 = load i32, ptr %RunLength, align 4
  %tobool686.not = icmp eq i32 %414, 0
  br i1 %tobool686.not, label %if.end694, label %do.body688

do.body688:                                       ; preds = %do.body685
  %415 = load i32, ptr %RunLength, align 4
  %conv690 = sext i32 %415 to i64
  %416 = load ptr, ptr %pa, align 8
  %incdec.ptr691 = getelementptr inbounds i64, ptr %416, i64 1
  store ptr %incdec.ptr691, ptr %pa, align 8
  store i64 %conv690, ptr %416, align 8
  store i32 0, ptr %RunLength, align 4
  br label %if.end694

if.end694:                                        ; preds = %do.body688, %do.body685
  %417 = load i32, ptr %a0, align 4
  %418 = load i32, ptr %lastx, align 4
  %cmp695.not = icmp eq i32 %417, %418
  br i1 %cmp695.not, label %do.end762, label %if.then697

if.then697:                                       ; preds = %if.end694
  %419 = load ptr, ptr %tif.addr, align 8
  %420 = load i32, ptr %a0, align 4
  %conv698 = sext i32 %420 to i64
  %421 = load i32, ptr %lastx, align 4
  %conv699 = sext i32 %421 to i64
  call void @Fax3BadLength(ptr noundef nonnull @Fax4Decode.module, ptr noundef %419, i64 noundef %conv698, i64 noundef %conv699)
  br label %while.cond700

while.cond700:                                    ; preds = %while.body707, %if.then697
  %422 = load i32, ptr %a0, align 4
  %423 = load i32, ptr %lastx, align 4
  %cmp701 = icmp sgt i32 %422, %423
  %424 = load ptr, ptr %pa, align 8
  %425 = load ptr, ptr %thisrun, align 8
  %cmp704 = icmp ugt ptr %424, %425
  %426 = select i1 %cmp701, i1 %cmp704, i1 false
  br i1 %426, label %while.body707, label %while.end712

while.body707:                                    ; preds = %while.cond700
  %427 = load ptr, ptr %pa, align 8
  %incdec.ptr708 = getelementptr inbounds i64, ptr %427, i64 -1
  store ptr %incdec.ptr708, ptr %pa, align 8
  %428 = load i64, ptr %incdec.ptr708, align 8
  %429 = load i32, ptr %a0, align 4
  %430 = trunc i64 %428 to i32
  %conv711 = sub i32 %429, %430
  store i32 %conv711, ptr %a0, align 4
  br label %while.cond700, !llvm.loop !19

while.end712:                                     ; preds = %while.cond700
  %431 = load i32, ptr %a0, align 4
  %432 = load i32, ptr %lastx, align 4
  %cmp713 = icmp slt i32 %431, %432
  br i1 %cmp713, label %if.then715, label %if.else742

if.then715:                                       ; preds = %while.end712
  %433 = load i32, ptr %a0, align 4
  %cmp716 = icmp slt i32 %433, 0
  %spec.store.select39 = select i1 %cmp716, i32 0, i32 %433
  store i32 %spec.store.select39, ptr %a0, align 4
  %434 = load ptr, ptr %pa, align 8
  %435 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast720 = ptrtoint ptr %434 to i64
  %sub.ptr.rhs.cast721 = ptrtoint ptr %435 to i64
  %sub.ptr.sub722 = sub i64 %sub.ptr.lhs.cast720, %sub.ptr.rhs.cast721
  %436 = and i64 %sub.ptr.sub722, 8
  %tobool725.not = icmp eq i64 %436, 0
  br i1 %tobool725.not, label %do.body734, label %do.body727

do.body727:                                       ; preds = %if.then715
  %437 = load i32, ptr %RunLength, align 4
  %conv729 = sext i32 %437 to i64
  %438 = load ptr, ptr %pa, align 8
  %incdec.ptr730 = getelementptr inbounds i64, ptr %438, i64 1
  store ptr %incdec.ptr730, ptr %pa, align 8
  store i64 %conv729, ptr %438, align 8
  store i32 0, ptr %RunLength, align 4
  br label %do.body734

do.body734:                                       ; preds = %if.then715, %do.body727
  %439 = load i32, ptr %RunLength, align 4
  %440 = load i32, ptr %lastx, align 4
  %441 = load i32, ptr %a0, align 4
  %sub735 = sub nsw i32 %440, %441
  %add736 = add nsw i32 %439, %sub735
  %conv737 = sext i32 %add736 to i64
  %442 = load ptr, ptr %pa, align 8
  %incdec.ptr738 = getelementptr inbounds i64, ptr %442, i64 1
  store ptr %incdec.ptr738, ptr %pa, align 8
  store i64 %conv737, ptr %442, align 8
  %443 = load i32, ptr %lastx, align 4
  store i32 %443, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end762

if.else742:                                       ; preds = %while.end712
  %444 = load i32, ptr %a0, align 4
  %445 = load i32, ptr %lastx, align 4
  %cmp743 = icmp sgt i32 %444, %445
  br i1 %cmp743, label %do.body746, label %do.end762

do.body746:                                       ; preds = %if.else742
  %446 = load i32, ptr %RunLength, align 4
  %447 = load i32, ptr %lastx, align 4
  %add747 = add nsw i32 %446, %447
  %conv748 = sext i32 %add747 to i64
  %448 = load ptr, ptr %pa, align 8
  %incdec.ptr749 = getelementptr inbounds i64, ptr %448, i64 1
  store ptr %incdec.ptr749, ptr %pa, align 8
  store i64 %conv748, ptr %448, align 8
  %449 = load i32, ptr %lastx, align 4
  %450 = load i32, ptr %a0, align 4
  %add750 = add nsw i32 %450, %449
  store i32 %add750, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %451 = load i32, ptr %RunLength, align 4
  %conv754 = sext i32 %451 to i64
  %452 = load ptr, ptr %pa, align 8
  %incdec.ptr755 = getelementptr inbounds i64, ptr %452, i64 1
  store ptr %incdec.ptr755, ptr %pa, align 8
  store i64 %conv754, ptr %452, align 8
  store i32 0, ptr %RunLength, align 4
  br label %do.end762

do.end762:                                        ; preds = %do.body734, %do.body746, %if.else742, %if.end694
  %453 = load ptr, ptr %sp, align 8
  %fill = getelementptr inbounds %struct.Fax3DecodeState, ptr %453, i64 0, i32 5
  %454 = load ptr, ptr %fill, align 8
  %455 = load ptr, ptr %buf.addr, align 8
  %456 = load ptr, ptr %thisrun, align 8
  %457 = load ptr, ptr %pa, align 8
  %458 = load i32, ptr %lastx, align 4
  %conv763 = sext i32 %458 to i64
  call void %454(ptr noundef %455, ptr noundef %456, ptr noundef %457, i64 noundef %conv763) #5
  %459 = load i32, ptr %RunLength, align 4
  %conv766 = sext i32 %459 to i64
  %460 = load ptr, ptr %pa, align 8
  %incdec.ptr767 = getelementptr inbounds i64, ptr %460, i64 1
  store ptr %incdec.ptr767, ptr %pa, align 8
  store i64 %conv766, ptr %460, align 8
  store i32 0, ptr %RunLength, align 4
  %461 = load ptr, ptr %sp, align 8
  %curruns770 = getelementptr inbounds %struct.Fax3DecodeState, ptr %461, i64 0, i32 8
  %462 = load ptr, ptr %curruns770, align 8
  %refruns771 = getelementptr inbounds %struct.Fax3DecodeState, ptr %461, i64 0, i32 7
  %463 = load ptr, ptr %refruns771, align 8
  %curruns772 = getelementptr inbounds %struct.Fax3DecodeState, ptr %461, i64 0, i32 8
  store ptr %463, ptr %curruns772, align 8
  %464 = load ptr, ptr %sp, align 8
  %refruns773 = getelementptr inbounds %struct.Fax3DecodeState, ptr %464, i64 0, i32 7
  store ptr %462, ptr %refruns773, align 8
  %rowbytes = getelementptr inbounds %struct.Fax3BaseState, ptr %464, i64 0, i32 1
  %465 = load i64, ptr %rowbytes, align 8
  %466 = load ptr, ptr %buf.addr, align 8
  %add.ptr775 = getelementptr inbounds i8, ptr %466, i64 %465
  store ptr %add.ptr775, ptr %buf.addr, align 8
  %467 = load ptr, ptr %sp, align 8
  %rowbytes777 = getelementptr inbounds %struct.Fax3BaseState, ptr %467, i64 0, i32 1
  %468 = load i64, ptr %rowbytes777, align 8
  %469 = load i64, ptr %occ.addr, align 8
  %sub778 = sub i64 %469, %468
  store i64 %sub778, ptr %occ.addr, align 8
  %cmp779.not = icmp eq i64 %469, %468
  br i1 %cmp779.not, label %if.end782, label %if.then781

if.then781:                                       ; preds = %do.end762
  %470 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %470, i64 0, i32 11
  %471 = load i64, ptr %tif_row, align 8
  %inc = add i64 %471, 1
  store i64 %inc, ptr %tif_row, align 8
  br label %if.end782

if.end782:                                        ; preds = %if.then781, %do.end762
  br label %while.cond, !llvm.loop !20

EOFG4:                                            ; preds = %do.body610, %do.body622, %if.else618, %if.end570
  %472 = load ptr, ptr %sp, align 8
  %fill783 = getelementptr inbounds %struct.Fax3DecodeState, ptr %472, i64 0, i32 5
  %473 = load ptr, ptr %fill783, align 8
  %474 = load ptr, ptr %buf.addr, align 8
  %475 = load ptr, ptr %thisrun, align 8
  %476 = load ptr, ptr %pa, align 8
  %477 = load i32, ptr %lastx, align 4
  %conv784 = sext i32 %477 to i64
  call void %473(ptr noundef %474, ptr noundef %475, ptr noundef %476, i64 noundef %conv784) #5
  %478 = load i32, ptr %BitsAvail, align 4
  %479 = load ptr, ptr %sp, align 8
  %bit786 = getelementptr inbounds %struct.Fax3DecodeState, ptr %479, i64 0, i32 3
  store i32 %478, ptr %bit786, align 8
  %480 = load i64, ptr %BitAcc, align 8
  %data787 = getelementptr inbounds %struct.Fax3DecodeState, ptr %479, i64 0, i32 2
  store i64 %480, ptr %data787, align 8
  %481 = load i32, ptr %EOLcnt, align 4
  %482 = load ptr, ptr %sp, align 8
  %EOLcnt788 = getelementptr inbounds %struct.Fax3DecodeState, ptr %482, i64 0, i32 4
  store i32 %481, ptr %EOLcnt788, align 4
  %483 = load ptr, ptr %cp, align 8
  %484 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp789 = getelementptr inbounds %struct.tiff, ptr %484, i64 0, i32 42
  %485 = load ptr, ptr %tif_rawcp789, align 8
  %sub.ptr.lhs.cast790 = ptrtoint ptr %483 to i64
  %sub.ptr.rhs.cast791 = ptrtoint ptr %485 to i64
  %sub.ptr.sub792.neg = sub i64 %sub.ptr.rhs.cast791, %sub.ptr.lhs.cast790
  %tif_rawcc793 = getelementptr inbounds %struct.tiff, ptr %484, i64 0, i32 43
  %486 = load i64, ptr %tif_rawcc793, align 8
  %sub794 = add i64 %sub.ptr.sub792.neg, %486
  store i64 %sub794, ptr %tif_rawcc793, align 8
  %487 = load ptr, ptr %cp, align 8
  %488 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp795 = getelementptr inbounds %struct.tiff, ptr %488, i64 0, i32 42
  store ptr %487, ptr %tif_rawcp795, align 8
  br label %return

do.body798:                                       ; preds = %while.cond
  %489 = load i32, ptr %BitsAvail, align 4
  %490 = load ptr, ptr %sp, align 8
  %bit799 = getelementptr inbounds %struct.Fax3DecodeState, ptr %490, i64 0, i32 3
  store i32 %489, ptr %bit799, align 8
  %491 = load i64, ptr %BitAcc, align 8
  %data800 = getelementptr inbounds %struct.Fax3DecodeState, ptr %490, i64 0, i32 2
  store i64 %491, ptr %data800, align 8
  %492 = load i32, ptr %EOLcnt, align 4
  %493 = load ptr, ptr %sp, align 8
  %EOLcnt801 = getelementptr inbounds %struct.Fax3DecodeState, ptr %493, i64 0, i32 4
  store i32 %492, ptr %EOLcnt801, align 4
  %494 = load ptr, ptr %cp, align 8
  %495 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp802 = getelementptr inbounds %struct.tiff, ptr %495, i64 0, i32 42
  %496 = load ptr, ptr %tif_rawcp802, align 8
  %sub.ptr.lhs.cast803 = ptrtoint ptr %494 to i64
  %sub.ptr.rhs.cast804 = ptrtoint ptr %496 to i64
  %sub.ptr.sub805.neg = sub i64 %sub.ptr.rhs.cast804, %sub.ptr.lhs.cast803
  %tif_rawcc806 = getelementptr inbounds %struct.tiff, ptr %495, i64 0, i32 43
  %497 = load i64, ptr %tif_rawcc806, align 8
  %sub807 = add i64 %sub.ptr.sub805.neg, %497
  store i64 %sub807, ptr %tif_rawcc806, align 8
  %498 = load ptr, ptr %cp, align 8
  %499 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp808 = getelementptr inbounds %struct.tiff, ptr %499, i64 0, i32 42
  store ptr %498, ptr %tif_rawcp808, align 8
  br label %return

return:                                           ; preds = %do.body798, %EOFG4
  %storemerge = phi i32 [ 1, %do.body798 ], [ -1, %EOFG4 ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax4Encode(ptr noundef %tif, ptr noundef %bp, i64 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %entry
  %1 = load i64, ptr %cc.addr, align 8
  %cmp = icmp sgt i64 %1, 0
  br i1 %cmp, label %while.body, label %return

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load ptr, ptr %bp.addr, align 8
  %4 = load ptr, ptr %sp, align 8
  %refline = getelementptr inbounds %struct.Fax3EncodeState, ptr %4, i64 0, i32 4
  %5 = load ptr, ptr %refline, align 8
  %rowpixels = getelementptr inbounds %struct.Fax3BaseState, ptr %4, i64 0, i32 2
  %6 = load i64, ptr %rowpixels, align 8
  %call = call i32 @Fax3Encode2DRow(ptr noundef %2, ptr noundef %3, ptr noundef %5, i64 noundef %6)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %while.body
  %7 = load ptr, ptr %sp, align 8
  %refline1 = getelementptr inbounds %struct.Fax3EncodeState, ptr %7, i64 0, i32 4
  %8 = load ptr, ptr %refline1, align 8
  %9 = load ptr, ptr %bp.addr, align 8
  %rowbytes = getelementptr inbounds %struct.Fax3BaseState, ptr %7, i64 0, i32 1
  %10 = load i64, ptr %rowbytes, align 8
  call void @_TIFFmemcpy(ptr noundef %8, ptr noundef %9, i64 noundef %10) #5
  %11 = load ptr, ptr %sp, align 8
  %rowbytes4 = getelementptr inbounds %struct.Fax3BaseState, ptr %11, i64 0, i32 1
  %12 = load i64, ptr %rowbytes4, align 8
  %13 = load ptr, ptr %bp.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %12
  store ptr %add.ptr, ptr %bp.addr, align 8
  %14 = load i64, ptr %cc.addr, align 8
  %sub = sub i64 %14, %12
  store i64 %sub, ptr %cc.addr, align 8
  %cmp7.not = icmp eq i64 %14, %12
  br i1 %cmp7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %15, i64 0, i32 11
  %16 = load i64, ptr %tif_row, align 8
  %inc = add i64 %16, 1
  store i64 %inc, ptr %tif_row, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  br label %while.cond, !llvm.loop !21

return:                                           ; preds = %while.cond, %while.body
  %storemerge = phi i32 [ 0, %while.body ], [ 1, %while.cond ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax4PostEncode(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  call void @Fax3PutBits(ptr noundef %tif, i32 noundef 1, i32 noundef 12)
  call void @Fax3PutBits(ptr noundef %tif, i32 noundef 1, i32 noundef 12)
  %bit = getelementptr inbounds %struct.Fax3EncodeState, ptr %0, i64 0, i32 2
  %1 = load i32, ptr %bit, align 4
  %cmp.not = icmp eq i32 %1, 8
  br i1 %cmp.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 43
  %3 = load i64, ptr %tif_rawcc, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 41
  %4 = load i64, ptr %tif_rawdatasize, align 8
  %cmp1.not = icmp slt i64 %3, %4
  br i1 %cmp1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %6 = load ptr, ptr %sp, align 8
  %data = getelementptr inbounds %struct.Fax3EncodeState, ptr %6, i64 0, i32 1
  %7 = load i32, ptr %data, align 8
  %conv = trunc i32 %7 to i8
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 42
  %9 = load ptr, ptr %tif_rawcp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %incdec.ptr, ptr %tif_rawcp, align 8
  store i8 %conv, ptr %9, align 1
  %tif_rawcc3 = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 43
  %10 = load i64, ptr %tif_rawcc3, align 8
  %inc = add nsw i64 %10, 1
  store i64 %inc, ptr %tif_rawcc3, align 8
  %11 = load ptr, ptr %sp, align 8
  %data4 = getelementptr inbounds %struct.Fax3EncodeState, ptr %11, i64 0, i32 1
  store i32 0, ptr %data4, align 8
  %bit5 = getelementptr inbounds %struct.Fax3EncodeState, ptr %11, i64 0, i32 2
  store i32 8, ptr %bit5, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFInitCCITTRLE(ptr noundef %tif, i32 noundef %scheme) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %call = call i32 @InitCCITTFax3(ptr noundef %tif)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 26
  store ptr @Fax3DecodeRLE, ptr %tif_decoderow, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 28
  store ptr @Fax3DecodeRLE, ptr %tif_decodestrip, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 30
  store ptr @Fax3DecodeRLE, ptr %tif_decodetile, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %call1 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %1, i64 noundef 65536, i32 noundef 7) #5
  br label %return

return:                                           ; preds = %entry, %if.then
  %storemerge = phi i32 [ %call1, %if.then ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax3DecodeRLE(ptr noundef %tif, ptr noundef %buf, i64 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %occ.addr = alloca i64, align 8
  %sp = alloca ptr, align 8
  %a0 = alloca i32, align 4
  %lastx = alloca i32, align 4
  %BitAcc = alloca i64, align 8
  %BitsAvail = alloca i32, align 4
  %RunLength = alloca i32, align 4
  %cp = alloca ptr, align 8
  %ep = alloca ptr, align 8
  %pa = alloca ptr, align 8
  %thisrun = alloca ptr, align 8
  %EOLcnt = alloca i32, align 4
  %bitmap = alloca ptr, align 8
  %TabEnt = alloca ptr, align 8
  %mode = alloca i32, align 4
  %n = alloca i32, align 4
  %n319 = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %occ, ptr %occ.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %rowpixels = getelementptr inbounds %struct.Fax3BaseState, ptr %0, i64 0, i32 2
  %1 = load i64, ptr %rowpixels, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, ptr %lastx, align 4
  %bitmap1 = getelementptr inbounds %struct.Fax3DecodeState, ptr %0, i64 0, i32 1
  %2 = load ptr, ptr %bitmap1, align 8
  store ptr %2, ptr %bitmap, align 8
  %3 = load ptr, ptr %sp, align 8
  %4 = load i32, ptr %3, align 8
  store i32 %4, ptr %mode, align 4
  %5 = load ptr, ptr %sp, align 8
  %data = getelementptr inbounds %struct.Fax3DecodeState, ptr %5, i64 0, i32 2
  %6 = load i64, ptr %data, align 8
  store i64 %6, ptr %BitAcc, align 8
  %bit = getelementptr inbounds %struct.Fax3DecodeState, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %bit, align 8
  store i32 %7, ptr %BitsAvail, align 4
  %8 = load ptr, ptr %sp, align 8
  %EOLcnt4 = getelementptr inbounds %struct.Fax3DecodeState, ptr %8, i64 0, i32 4
  %9 = load i32, ptr %EOLcnt4, align 4
  store i32 %9, ptr %EOLcnt, align 4
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 42
  %11 = load ptr, ptr %tif_rawcp, align 8
  store ptr %11, ptr %cp, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 43
  %12 = load i64, ptr %tif_rawcc, align 8
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %12
  store ptr %add.ptr, ptr %ep, align 8
  %13 = load ptr, ptr %sp, align 8
  %curruns = getelementptr inbounds %struct.Fax3DecodeState, ptr %13, i64 0, i32 8
  %14 = load ptr, ptr %curruns, align 8
  store ptr %14, ptr %thisrun, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end345, %entry
  %15 = load i64, ptr %occ.addr, align 8
  %cmp = icmp sgt i64 %15, 0
  br i1 %cmp, label %while.body, label %do.body361

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %16 = load ptr, ptr %thisrun, align 8
  store ptr %16, ptr %pa, align 8
  br label %for.cond

for.cond:                                         ; preds = %do.body130, %while.body
  br label %for.cond7

for.cond7:                                        ; preds = %sw.bb58, %for.cond
  %17 = load i32, ptr %BitsAvail, align 4
  %cmp10 = icmp slt i32 %17, 12
  br i1 %cmp10, label %if.then, label %do.end38

if.then:                                          ; preds = %for.cond7
  %18 = load ptr, ptr %cp, align 8
  %19 = load ptr, ptr %ep, align 8
  %cmp12.not = icmp ult ptr %18, %19
  br i1 %cmp12.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then
  %20 = load i32, ptr %BitsAvail, align 4
  %cmp15 = icmp eq i32 %20, 0
  br i1 %cmp15, label %eof1d, label %if.end

if.end:                                           ; preds = %if.then14
  store i32 12, ptr %BitsAvail, align 4
  br label %do.end38

if.else:                                          ; preds = %if.then
  %21 = load ptr, ptr %bitmap, align 8
  %22 = load ptr, ptr %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %incdec.ptr, ptr %cp, align 8
  %23 = load i8, ptr %22, align 1
  %idxprom = zext i8 %23 to i64
  %arrayidx = getelementptr inbounds i8, ptr %21, i64 %idxprom
  %24 = load i8, ptr %arrayidx, align 1
  %conv18 = zext i8 %24 to i64
  %25 = load i32, ptr %BitsAvail, align 4
  %sh_prom = zext i32 %25 to i64
  %shl = shl i64 %conv18, %sh_prom
  %26 = load i64, ptr %BitAcc, align 8
  %or = or i64 %26, %shl
  store i64 %or, ptr %BitAcc, align 8
  %add = add nsw i32 %25, 8
  store i32 %add, ptr %BitsAvail, align 4
  %cmp19 = icmp slt i32 %25, 4
  br i1 %cmp19, label %if.then21, label %do.end38

if.then21:                                        ; preds = %if.else
  %27 = load ptr, ptr %cp, align 8
  %28 = load ptr, ptr %ep, align 8
  %cmp22.not = icmp ult ptr %27, %28
  br i1 %cmp22.not, label %if.else25, label %if.end34

if.else25:                                        ; preds = %if.then21
  %29 = load ptr, ptr %bitmap, align 8
  %30 = load ptr, ptr %cp, align 8
  %incdec.ptr26 = getelementptr inbounds i8, ptr %30, i64 1
  store ptr %incdec.ptr26, ptr %cp, align 8
  %31 = load i8, ptr %30, align 1
  %idxprom27 = zext i8 %31 to i64
  %arrayidx28 = getelementptr inbounds i8, ptr %29, i64 %idxprom27
  %32 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %32 to i64
  %33 = load i32, ptr %BitsAvail, align 4
  %sh_prom30 = zext i32 %33 to i64
  %shl31 = shl i64 %conv29, %sh_prom30
  %34 = load i64, ptr %BitAcc, align 8
  %or32 = or i64 %34, %shl31
  store i64 %or32, ptr %BitAcc, align 8
  %add33 = add nsw i32 %33, 8
  br label %if.end34

if.end34:                                         ; preds = %if.then21, %if.else25
  %storemerge12 = phi i32 [ %add33, %if.else25 ], [ 12, %if.then21 ]
  store i32 %storemerge12, ptr %BitsAvail, align 4
  br label %do.end38

do.end38:                                         ; preds = %for.cond7, %if.else, %if.end34, %if.end
  %35 = load i64, ptr %BitAcc, align 8
  %and = and i64 %35, 4095
  %add.ptr39 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %and
  store ptr %add.ptr39, ptr %TabEnt, align 8
  %36 = load ptr, ptr %TabEnt, align 8
  %Width = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %36, i64 0, i32 1
  %37 = load i8, ptr %Width, align 1
  %conv41 = zext i8 %37 to i32
  %38 = load i32, ptr %BitsAvail, align 4
  %sub = sub nsw i32 %38, %conv41
  store i32 %sub, ptr %BitsAvail, align 4
  %39 = load ptr, ptr %TabEnt, align 8
  %Width42 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %39, i64 0, i32 1
  %40 = load i8, ptr %Width42, align 1
  %41 = load i64, ptr %BitAcc, align 8
  %sh_prom44 = zext i8 %40 to i64
  %shr = lshr i64 %41, %sh_prom44
  store i64 %shr, ptr %BitAcc, align 8
  %42 = load ptr, ptr %TabEnt, align 8
  %43 = load i8, ptr %42, align 8
  switch i8 %43, label %sw.default [
    i8 12, label %sw.bb
    i8 7, label %do.body49
    i8 9, label %sw.bb58
    i8 11, label %sw.bb58
  ]

sw.bb:                                            ; preds = %do.end38
  store i32 1, ptr %EOLcnt, align 4
  br label %do.body226

do.body49:                                        ; preds = %do.end38
  %44 = load i32, ptr %RunLength, align 4
  %conv50 = sext i32 %44 to i64
  %45 = load ptr, ptr %TabEnt, align 8
  %Param = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %45, i64 0, i32 2
  %46 = load i64, ptr %Param, align 8
  %add51 = add i64 %46, %conv50
  %47 = load ptr, ptr %pa, align 8
  %incdec.ptr52 = getelementptr inbounds i64, ptr %47, i64 1
  store ptr %incdec.ptr52, ptr %pa, align 8
  store i64 %add51, ptr %47, align 8
  %48 = load ptr, ptr %TabEnt, align 8
  %Param53 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %48, i64 0, i32 2
  %49 = load i64, ptr %Param53, align 8
  %50 = load i32, ptr %a0, align 4
  %51 = trunc i64 %49 to i32
  %conv56 = add i32 %50, %51
  store i32 %conv56, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %52 = load i32, ptr %a0, align 4
  %53 = load i32, ptr %lastx, align 4
  %cmp68.not = icmp slt i32 %52, %53
  br i1 %cmp68.not, label %for.cond72, label %do.body226

sw.bb58:                                          ; preds = %do.end38, %do.end38
  %54 = load ptr, ptr %TabEnt, align 8
  %Param59 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %54, i64 0, i32 2
  %55 = load i64, ptr %Param59, align 8
  %56 = load i32, ptr %a0, align 4
  %57 = trunc i64 %55 to i32
  %conv62 = add i32 %56, %57
  store i32 %conv62, ptr %a0, align 4
  %58 = load ptr, ptr %TabEnt, align 8
  %Param63 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %58, i64 0, i32 2
  %59 = load i64, ptr %Param63, align 8
  %60 = load i32, ptr %RunLength, align 4
  %61 = trunc i64 %59 to i32
  %conv66 = add i32 %60, %61
  store i32 %conv66, ptr %RunLength, align 4
  br label %for.cond7

sw.default:                                       ; preds = %do.end38
  %62 = load ptr, ptr %tif.addr, align 8
  %63 = load i32, ptr %a0, align 4
  %conv67 = sext i32 %63 to i64
  call void @Fax3Unexpected(ptr noundef nonnull @Fax3DecodeRLE.module, ptr noundef %62, i64 noundef %conv67)
  br label %do.body226

for.cond72:                                       ; preds = %do.body49, %sw.bb140
  %64 = load i32, ptr %BitsAvail, align 4
  %cmp75 = icmp slt i32 %64, 13
  br i1 %cmp75, label %if.then77, label %do.end113

if.then77:                                        ; preds = %for.cond72
  %65 = load ptr, ptr %cp, align 8
  %66 = load ptr, ptr %ep, align 8
  %cmp78.not = icmp ult ptr %65, %66
  br i1 %cmp78.not, label %if.else85, label %if.then80

if.then80:                                        ; preds = %if.then77
  %67 = load i32, ptr %BitsAvail, align 4
  %cmp81 = icmp eq i32 %67, 0
  br i1 %cmp81, label %eof1d, label %if.end84

if.end84:                                         ; preds = %if.then80
  store i32 13, ptr %BitsAvail, align 4
  br label %do.end113

if.else85:                                        ; preds = %if.then77
  %68 = load ptr, ptr %bitmap, align 8
  %69 = load ptr, ptr %cp, align 8
  %incdec.ptr86 = getelementptr inbounds i8, ptr %69, i64 1
  store ptr %incdec.ptr86, ptr %cp, align 8
  %70 = load i8, ptr %69, align 1
  %idxprom87 = zext i8 %70 to i64
  %arrayidx88 = getelementptr inbounds i8, ptr %68, i64 %idxprom87
  %71 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %71 to i64
  %72 = load i32, ptr %BitsAvail, align 4
  %sh_prom90 = zext i32 %72 to i64
  %shl91 = shl i64 %conv89, %sh_prom90
  %73 = load i64, ptr %BitAcc, align 8
  %or92 = or i64 %73, %shl91
  store i64 %or92, ptr %BitAcc, align 8
  %add93 = add nsw i32 %72, 8
  store i32 %add93, ptr %BitsAvail, align 4
  %cmp94 = icmp slt i32 %72, 5
  br i1 %cmp94, label %if.then96, label %do.end113

if.then96:                                        ; preds = %if.else85
  %74 = load ptr, ptr %cp, align 8
  %75 = load ptr, ptr %ep, align 8
  %cmp97.not = icmp ult ptr %74, %75
  br i1 %cmp97.not, label %if.else100, label %if.end109

if.else100:                                       ; preds = %if.then96
  %76 = load ptr, ptr %bitmap, align 8
  %77 = load ptr, ptr %cp, align 8
  %incdec.ptr101 = getelementptr inbounds i8, ptr %77, i64 1
  store ptr %incdec.ptr101, ptr %cp, align 8
  %78 = load i8, ptr %77, align 1
  %idxprom102 = zext i8 %78 to i64
  %arrayidx103 = getelementptr inbounds i8, ptr %76, i64 %idxprom102
  %79 = load i8, ptr %arrayidx103, align 1
  %conv104 = zext i8 %79 to i64
  %80 = load i32, ptr %BitsAvail, align 4
  %sh_prom105 = zext i32 %80 to i64
  %shl106 = shl i64 %conv104, %sh_prom105
  %81 = load i64, ptr %BitAcc, align 8
  %or107 = or i64 %81, %shl106
  store i64 %or107, ptr %BitAcc, align 8
  %add108 = add nsw i32 %80, 8
  br label %if.end109

if.end109:                                        ; preds = %if.then96, %if.else100
  %storemerge9 = phi i32 [ %add108, %if.else100 ], [ 13, %if.then96 ]
  store i32 %storemerge9, ptr %BitsAvail, align 4
  br label %do.end113

do.end113:                                        ; preds = %for.cond72, %if.else85, %if.end109, %if.end84
  %82 = load i64, ptr %BitAcc, align 8
  %and114 = and i64 %82, 8191
  %add.ptr115 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %and114
  store ptr %add.ptr115, ptr %TabEnt, align 8
  %83 = load ptr, ptr %TabEnt, align 8
  %Width117 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %83, i64 0, i32 1
  %84 = load i8, ptr %Width117, align 1
  %conv118 = zext i8 %84 to i32
  %85 = load i32, ptr %BitsAvail, align 4
  %sub119 = sub nsw i32 %85, %conv118
  store i32 %sub119, ptr %BitsAvail, align 4
  %86 = load ptr, ptr %TabEnt, align 8
  %Width120 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %86, i64 0, i32 1
  %87 = load i8, ptr %Width120, align 1
  %88 = load i64, ptr %BitAcc, align 8
  %sh_prom122 = zext i8 %87 to i64
  %shr123 = lshr i64 %88, %sh_prom122
  store i64 %shr123, ptr %BitAcc, align 8
  %89 = load ptr, ptr %TabEnt, align 8
  %90 = load i8, ptr %89, align 8
  switch i8 %90, label %sw.default149 [
    i8 12, label %sw.bb128
    i8 8, label %do.body130
    i8 10, label %sw.bb140
    i8 11, label %sw.bb140
  ]

sw.bb128:                                         ; preds = %do.end113
  store i32 1, ptr %EOLcnt, align 4
  br label %do.body226

do.body130:                                       ; preds = %do.end113
  %91 = load i32, ptr %RunLength, align 4
  %conv131 = sext i32 %91 to i64
  %92 = load ptr, ptr %TabEnt, align 8
  %Param132 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %92, i64 0, i32 2
  %93 = load i64, ptr %Param132, align 8
  %add133 = add i64 %93, %conv131
  %94 = load ptr, ptr %pa, align 8
  %incdec.ptr134 = getelementptr inbounds i64, ptr %94, i64 1
  store ptr %incdec.ptr134, ptr %pa, align 8
  store i64 %add133, ptr %94, align 8
  %95 = load ptr, ptr %TabEnt, align 8
  %Param135 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %95, i64 0, i32 2
  %96 = load i64, ptr %Param135, align 8
  %97 = load i32, ptr %a0, align 4
  %98 = trunc i64 %96 to i32
  %conv138 = add i32 %97, %98
  store i32 %conv138, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %99 = load i32, ptr %a0, align 4
  %100 = load i32, ptr %lastx, align 4
  %cmp152.not = icmp slt i32 %99, %100
  br i1 %cmp152.not, label %for.cond, label %do.body226

sw.bb140:                                         ; preds = %do.end113, %do.end113
  %101 = load ptr, ptr %TabEnt, align 8
  %Param141 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %101, i64 0, i32 2
  %102 = load i64, ptr %Param141, align 8
  %103 = load i32, ptr %a0, align 4
  %104 = trunc i64 %102 to i32
  %conv144 = add i32 %103, %104
  store i32 %conv144, ptr %a0, align 4
  %105 = load ptr, ptr %TabEnt, align 8
  %Param145 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %105, i64 0, i32 2
  %106 = load i64, ptr %Param145, align 8
  %107 = load i32, ptr %RunLength, align 4
  %108 = trunc i64 %106 to i32
  %conv148 = add i32 %107, %108
  store i32 %conv148, ptr %RunLength, align 4
  br label %for.cond72

sw.default149:                                    ; preds = %do.end113
  %109 = load ptr, ptr %tif.addr, align 8
  %110 = load i32, ptr %a0, align 4
  %conv150 = sext i32 %110 to i64
  call void @Fax3Unexpected(ptr noundef nonnull @Fax3DecodeRLE.module, ptr noundef %109, i64 noundef %conv150)
  br label %do.body226

eof1d:                                            ; preds = %if.then80, %if.then14
  %111 = load ptr, ptr %tif.addr, align 8
  %112 = load i32, ptr %a0, align 4
  %conv156 = sext i32 %112 to i64
  call void @Fax3PrematureEOF(ptr noundef nonnull @Fax3DecodeRLE.module, ptr noundef %111, i64 noundef %conv156)
  %113 = load i32, ptr %RunLength, align 4
  %tobool.not = icmp eq i32 %113, 0
  br i1 %tobool.not, label %if.end165, label %do.body159

do.body159:                                       ; preds = %eof1d
  %114 = load i32, ptr %RunLength, align 4
  %conv161 = sext i32 %114 to i64
  %115 = load ptr, ptr %pa, align 8
  %incdec.ptr162 = getelementptr inbounds i64, ptr %115, i64 1
  store ptr %incdec.ptr162, ptr %pa, align 8
  store i64 %conv161, ptr %115, align 8
  store i32 0, ptr %RunLength, align 4
  br label %if.end165

if.end165:                                        ; preds = %do.body159, %eof1d
  %116 = load i32, ptr %a0, align 4
  %117 = load i32, ptr %lastx, align 4
  %cmp166.not = icmp eq i32 %116, %117
  br i1 %cmp166.not, label %EOFRLE, label %if.then168

if.then168:                                       ; preds = %if.end165
  %118 = load ptr, ptr %tif.addr, align 8
  %119 = load i32, ptr %a0, align 4
  %conv169 = sext i32 %119 to i64
  %120 = load i32, ptr %lastx, align 4
  %conv170 = sext i32 %120 to i64
  call void @Fax3BadLength(ptr noundef nonnull @Fax3DecodeRLE.module, ptr noundef %118, i64 noundef %conv169, i64 noundef %conv170)
  br label %while.cond171

while.cond171:                                    ; preds = %while.body176, %if.then168
  %121 = load i32, ptr %a0, align 4
  %122 = load i32, ptr %lastx, align 4
  %cmp172 = icmp sgt i32 %121, %122
  %123 = load ptr, ptr %pa, align 8
  %124 = load ptr, ptr %thisrun, align 8
  %cmp174 = icmp ugt ptr %123, %124
  %125 = select i1 %cmp172, i1 %cmp174, i1 false
  br i1 %125, label %while.body176, label %while.end

while.body176:                                    ; preds = %while.cond171
  %126 = load ptr, ptr %pa, align 8
  %incdec.ptr177 = getelementptr inbounds i64, ptr %126, i64 -1
  store ptr %incdec.ptr177, ptr %pa, align 8
  %127 = load i64, ptr %incdec.ptr177, align 8
  %128 = load i32, ptr %a0, align 4
  %129 = trunc i64 %127 to i32
  %conv180 = sub i32 %128, %129
  store i32 %conv180, ptr %a0, align 4
  br label %while.cond171, !llvm.loop !22

while.end:                                        ; preds = %while.cond171
  %130 = load i32, ptr %a0, align 4
  %131 = load i32, ptr %lastx, align 4
  %cmp181 = icmp slt i32 %130, %131
  br i1 %cmp181, label %if.then183, label %if.else206

if.then183:                                       ; preds = %while.end
  %132 = load i32, ptr %a0, align 4
  %cmp184 = icmp slt i32 %132, 0
  %spec.store.select = select i1 %cmp184, i32 0, i32 %132
  store i32 %spec.store.select, ptr %a0, align 4
  %133 = load ptr, ptr %pa, align 8
  %134 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %133 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %134 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %135 = and i64 %sub.ptr.sub, 8
  %tobool189.not = icmp eq i64 %135, 0
  br i1 %tobool189.not, label %do.body198, label %do.body191

do.body191:                                       ; preds = %if.then183
  %136 = load i32, ptr %RunLength, align 4
  %conv193 = sext i32 %136 to i64
  %137 = load ptr, ptr %pa, align 8
  %incdec.ptr194 = getelementptr inbounds i64, ptr %137, i64 1
  store ptr %incdec.ptr194, ptr %pa, align 8
  store i64 %conv193, ptr %137, align 8
  store i32 0, ptr %RunLength, align 4
  br label %do.body198

do.body198:                                       ; preds = %if.then183, %do.body191
  %138 = load i32, ptr %RunLength, align 4
  %139 = load i32, ptr %lastx, align 4
  %140 = load i32, ptr %a0, align 4
  %sub199 = sub nsw i32 %139, %140
  %add200 = add nsw i32 %138, %sub199
  %conv201 = sext i32 %add200 to i64
  %141 = load ptr, ptr %pa, align 8
  %incdec.ptr202 = getelementptr inbounds i64, ptr %141, i64 1
  store ptr %incdec.ptr202, ptr %pa, align 8
  store i64 %conv201, ptr %141, align 8
  %142 = load i32, ptr %lastx, align 4
  store i32 %142, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %EOFRLE

if.else206:                                       ; preds = %while.end
  %143 = load i32, ptr %a0, align 4
  %144 = load i32, ptr %lastx, align 4
  %cmp207 = icmp sgt i32 %143, %144
  br i1 %cmp207, label %do.body210, label %EOFRLE

do.body210:                                       ; preds = %if.else206
  %145 = load i32, ptr %RunLength, align 4
  %146 = load i32, ptr %lastx, align 4
  %add211 = add nsw i32 %145, %146
  %conv212 = sext i32 %add211 to i64
  %147 = load ptr, ptr %pa, align 8
  %incdec.ptr213 = getelementptr inbounds i64, ptr %147, i64 1
  store ptr %incdec.ptr213, ptr %pa, align 8
  store i64 %conv212, ptr %147, align 8
  %148 = load i32, ptr %lastx, align 4
  %149 = load i32, ptr %a0, align 4
  %add214 = add nsw i32 %149, %148
  store i32 %add214, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %150 = load i32, ptr %RunLength, align 4
  %conv218 = sext i32 %150 to i64
  %151 = load ptr, ptr %pa, align 8
  %incdec.ptr219 = getelementptr inbounds i64, ptr %151, i64 1
  store ptr %incdec.ptr219, ptr %pa, align 8
  store i64 %conv218, ptr %151, align 8
  store i32 0, ptr %RunLength, align 4
  br label %EOFRLE

do.body226:                                       ; preds = %sw.bb, %sw.default, %sw.bb128, %sw.default149, %do.body49, %do.body130
  %152 = load i32, ptr %RunLength, align 4
  %tobool227.not = icmp eq i32 %152, 0
  br i1 %tobool227.not, label %if.end235, label %do.body229

do.body229:                                       ; preds = %do.body226
  %153 = load i32, ptr %RunLength, align 4
  %conv231 = sext i32 %153 to i64
  %154 = load ptr, ptr %pa, align 8
  %incdec.ptr232 = getelementptr inbounds i64, ptr %154, i64 1
  store ptr %incdec.ptr232, ptr %pa, align 8
  store i64 %conv231, ptr %154, align 8
  store i32 0, ptr %RunLength, align 4
  br label %if.end235

if.end235:                                        ; preds = %do.body229, %do.body226
  %155 = load i32, ptr %a0, align 4
  %156 = load i32, ptr %lastx, align 4
  %cmp236.not = icmp eq i32 %155, %156
  br i1 %cmp236.not, label %do.end303, label %if.then238

if.then238:                                       ; preds = %if.end235
  %157 = load ptr, ptr %tif.addr, align 8
  %158 = load i32, ptr %a0, align 4
  %conv239 = sext i32 %158 to i64
  %159 = load i32, ptr %lastx, align 4
  %conv240 = sext i32 %159 to i64
  call void @Fax3BadLength(ptr noundef nonnull @Fax3DecodeRLE.module, ptr noundef %157, i64 noundef %conv239, i64 noundef %conv240)
  br label %while.cond241

while.cond241:                                    ; preds = %while.body248, %if.then238
  %160 = load i32, ptr %a0, align 4
  %161 = load i32, ptr %lastx, align 4
  %cmp242 = icmp sgt i32 %160, %161
  %162 = load ptr, ptr %pa, align 8
  %163 = load ptr, ptr %thisrun, align 8
  %cmp245 = icmp ugt ptr %162, %163
  %164 = select i1 %cmp242, i1 %cmp245, i1 false
  br i1 %164, label %while.body248, label %while.end253

while.body248:                                    ; preds = %while.cond241
  %165 = load ptr, ptr %pa, align 8
  %incdec.ptr249 = getelementptr inbounds i64, ptr %165, i64 -1
  store ptr %incdec.ptr249, ptr %pa, align 8
  %166 = load i64, ptr %incdec.ptr249, align 8
  %167 = load i32, ptr %a0, align 4
  %168 = trunc i64 %166 to i32
  %conv252 = sub i32 %167, %168
  store i32 %conv252, ptr %a0, align 4
  br label %while.cond241, !llvm.loop !23

while.end253:                                     ; preds = %while.cond241
  %169 = load i32, ptr %a0, align 4
  %170 = load i32, ptr %lastx, align 4
  %cmp254 = icmp slt i32 %169, %170
  br i1 %cmp254, label %if.then256, label %if.else283

if.then256:                                       ; preds = %while.end253
  %171 = load i32, ptr %a0, align 4
  %cmp257 = icmp slt i32 %171, 0
  %spec.store.select13 = select i1 %cmp257, i32 0, i32 %171
  store i32 %spec.store.select13, ptr %a0, align 4
  %172 = load ptr, ptr %pa, align 8
  %173 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast261 = ptrtoint ptr %172 to i64
  %sub.ptr.rhs.cast262 = ptrtoint ptr %173 to i64
  %sub.ptr.sub263 = sub i64 %sub.ptr.lhs.cast261, %sub.ptr.rhs.cast262
  %174 = and i64 %sub.ptr.sub263, 8
  %tobool266.not = icmp eq i64 %174, 0
  br i1 %tobool266.not, label %do.body275, label %do.body268

do.body268:                                       ; preds = %if.then256
  %175 = load i32, ptr %RunLength, align 4
  %conv270 = sext i32 %175 to i64
  %176 = load ptr, ptr %pa, align 8
  %incdec.ptr271 = getelementptr inbounds i64, ptr %176, i64 1
  store ptr %incdec.ptr271, ptr %pa, align 8
  store i64 %conv270, ptr %176, align 8
  store i32 0, ptr %RunLength, align 4
  br label %do.body275

do.body275:                                       ; preds = %if.then256, %do.body268
  %177 = load i32, ptr %RunLength, align 4
  %178 = load i32, ptr %lastx, align 4
  %179 = load i32, ptr %a0, align 4
  %sub276 = sub nsw i32 %178, %179
  %add277 = add nsw i32 %177, %sub276
  %conv278 = sext i32 %add277 to i64
  %180 = load ptr, ptr %pa, align 8
  %incdec.ptr279 = getelementptr inbounds i64, ptr %180, i64 1
  store ptr %incdec.ptr279, ptr %pa, align 8
  store i64 %conv278, ptr %180, align 8
  %181 = load i32, ptr %lastx, align 4
  store i32 %181, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end303

if.else283:                                       ; preds = %while.end253
  %182 = load i32, ptr %a0, align 4
  %183 = load i32, ptr %lastx, align 4
  %cmp284 = icmp sgt i32 %182, %183
  br i1 %cmp284, label %do.body287, label %do.end303

do.body287:                                       ; preds = %if.else283
  %184 = load i32, ptr %RunLength, align 4
  %185 = load i32, ptr %lastx, align 4
  %add288 = add nsw i32 %184, %185
  %conv289 = sext i32 %add288 to i64
  %186 = load ptr, ptr %pa, align 8
  %incdec.ptr290 = getelementptr inbounds i64, ptr %186, i64 1
  store ptr %incdec.ptr290, ptr %pa, align 8
  store i64 %conv289, ptr %186, align 8
  %187 = load i32, ptr %lastx, align 4
  %188 = load i32, ptr %a0, align 4
  %add291 = add nsw i32 %188, %187
  store i32 %add291, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %189 = load i32, ptr %RunLength, align 4
  %conv295 = sext i32 %189 to i64
  %190 = load ptr, ptr %pa, align 8
  %incdec.ptr296 = getelementptr inbounds i64, ptr %190, i64 1
  store ptr %incdec.ptr296, ptr %pa, align 8
  store i64 %conv295, ptr %190, align 8
  store i32 0, ptr %RunLength, align 4
  br label %do.end303

do.end303:                                        ; preds = %do.body275, %do.body287, %if.else283, %if.end235
  %191 = load ptr, ptr %sp, align 8
  %fill = getelementptr inbounds %struct.Fax3DecodeState, ptr %191, i64 0, i32 5
  %192 = load ptr, ptr %fill, align 8
  %193 = load ptr, ptr %buf.addr, align 8
  %194 = load ptr, ptr %thisrun, align 8
  %195 = load ptr, ptr %pa, align 8
  %196 = load i32, ptr %lastx, align 4
  %conv304 = sext i32 %196 to i64
  call void %192(ptr noundef %193, ptr noundef %194, ptr noundef %195, i64 noundef %conv304) #5
  %197 = load i32, ptr %mode, align 4
  %and305 = and i32 %197, 4
  %tobool306.not = icmp eq i32 %and305, 0
  br i1 %tobool306.not, label %if.else315, label %if.then307

if.then307:                                       ; preds = %do.end303
  %198 = load i32, ptr %BitsAvail, align 4
  %sub309 = and i32 %198, 7
  store i32 %sub309, ptr %n, align 4
  %199 = load i32, ptr %n, align 4
  %200 = load i32, ptr %BitsAvail, align 4
  %sub311 = sub nsw i32 %200, %199
  store i32 %sub311, ptr %BitsAvail, align 4
  %201 = load i64, ptr %BitAcc, align 8
  %sh_prom312 = zext i32 %199 to i64
  %shr313 = lshr i64 %201, %sh_prom312
  store i64 %shr313, ptr %BitAcc, align 8
  br label %if.end336

if.else315:                                       ; preds = %do.end303
  %202 = load i32, ptr %mode, align 4
  %and316 = and i32 %202, 8
  %tobool317.not = icmp eq i32 %and316, 0
  br i1 %tobool317.not, label %if.end336, label %if.then318

if.then318:                                       ; preds = %if.else315
  %203 = load i32, ptr %BitsAvail, align 4
  %sub321 = and i32 %203, 15
  store i32 %sub321, ptr %n319, align 4
  %204 = load i32, ptr %n319, align 4
  %205 = load i32, ptr %BitsAvail, align 4
  %sub323 = sub nsw i32 %205, %204
  store i32 %sub323, ptr %BitsAvail, align 4
  %206 = load i64, ptr %BitAcc, align 8
  %sh_prom324 = zext i32 %204 to i64
  %shr325 = lshr i64 %206, %sh_prom324
  store i64 %shr325, ptr %BitAcc, align 8
  %207 = load i32, ptr %BitsAvail, align 4
  %cmp327 = icmp eq i32 %207, 0
  br i1 %cmp327, label %land.lhs.true, label %if.end336

land.lhs.true:                                    ; preds = %if.then318
  %208 = load ptr, ptr %cp, align 8
  %209 = ptrtoint ptr %208 to i64
  %and329 = and i64 %209, 1
  %cmp330 = icmp eq i64 %and329, 0
  br i1 %cmp330, label %if.end336, label %if.then332

if.then332:                                       ; preds = %land.lhs.true
  %210 = load ptr, ptr %cp, align 8
  %incdec.ptr333 = getelementptr inbounds i8, ptr %210, i64 1
  store ptr %incdec.ptr333, ptr %cp, align 8
  br label %if.end336

if.end336:                                        ; preds = %if.else315, %if.then332, %land.lhs.true, %if.then318, %if.then307
  %211 = load ptr, ptr %sp, align 8
  %rowbytes = getelementptr inbounds %struct.Fax3BaseState, ptr %211, i64 0, i32 1
  %212 = load i64, ptr %rowbytes, align 8
  %213 = load ptr, ptr %buf.addr, align 8
  %add.ptr338 = getelementptr inbounds i8, ptr %213, i64 %212
  store ptr %add.ptr338, ptr %buf.addr, align 8
  %214 = load i64, ptr %occ.addr, align 8
  %sub341 = sub i64 %214, %212
  store i64 %sub341, ptr %occ.addr, align 8
  %cmp342.not = icmp eq i64 %214, %212
  br i1 %cmp342.not, label %if.end345, label %if.then344

if.then344:                                       ; preds = %if.end336
  %215 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %215, i64 0, i32 11
  %216 = load i64, ptr %tif_row, align 8
  %inc = add i64 %216, 1
  store i64 %inc, ptr %tif_row, align 8
  br label %if.end345

if.end345:                                        ; preds = %if.then344, %if.end336
  br label %while.cond, !llvm.loop !24

EOFRLE:                                           ; preds = %do.body198, %do.body210, %if.else206, %if.end165
  %217 = load ptr, ptr %sp, align 8
  %fill346 = getelementptr inbounds %struct.Fax3DecodeState, ptr %217, i64 0, i32 5
  %218 = load ptr, ptr %fill346, align 8
  %219 = load ptr, ptr %buf.addr, align 8
  %220 = load ptr, ptr %thisrun, align 8
  %221 = load ptr, ptr %pa, align 8
  %222 = load i32, ptr %lastx, align 4
  %conv347 = sext i32 %222 to i64
  call void %218(ptr noundef %219, ptr noundef %220, ptr noundef %221, i64 noundef %conv347) #5
  %223 = load i32, ptr %BitsAvail, align 4
  %224 = load ptr, ptr %sp, align 8
  %bit349 = getelementptr inbounds %struct.Fax3DecodeState, ptr %224, i64 0, i32 3
  store i32 %223, ptr %bit349, align 8
  %225 = load i64, ptr %BitAcc, align 8
  %data350 = getelementptr inbounds %struct.Fax3DecodeState, ptr %224, i64 0, i32 2
  store i64 %225, ptr %data350, align 8
  %226 = load i32, ptr %EOLcnt, align 4
  %227 = load ptr, ptr %sp, align 8
  %EOLcnt351 = getelementptr inbounds %struct.Fax3DecodeState, ptr %227, i64 0, i32 4
  store i32 %226, ptr %EOLcnt351, align 4
  %228 = load ptr, ptr %cp, align 8
  %229 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp352 = getelementptr inbounds %struct.tiff, ptr %229, i64 0, i32 42
  %230 = load ptr, ptr %tif_rawcp352, align 8
  %sub.ptr.lhs.cast353 = ptrtoint ptr %228 to i64
  %sub.ptr.rhs.cast354 = ptrtoint ptr %230 to i64
  %sub.ptr.sub355.neg = sub i64 %sub.ptr.rhs.cast354, %sub.ptr.lhs.cast353
  %tif_rawcc356 = getelementptr inbounds %struct.tiff, ptr %229, i64 0, i32 43
  %231 = load i64, ptr %tif_rawcc356, align 8
  %sub357 = add i64 %sub.ptr.sub355.neg, %231
  store i64 %sub357, ptr %tif_rawcc356, align 8
  %232 = load ptr, ptr %cp, align 8
  %233 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp358 = getelementptr inbounds %struct.tiff, ptr %233, i64 0, i32 42
  store ptr %232, ptr %tif_rawcp358, align 8
  br label %return

do.body361:                                       ; preds = %while.cond
  %234 = load i32, ptr %BitsAvail, align 4
  %235 = load ptr, ptr %sp, align 8
  %bit362 = getelementptr inbounds %struct.Fax3DecodeState, ptr %235, i64 0, i32 3
  store i32 %234, ptr %bit362, align 8
  %236 = load i64, ptr %BitAcc, align 8
  %data363 = getelementptr inbounds %struct.Fax3DecodeState, ptr %235, i64 0, i32 2
  store i64 %236, ptr %data363, align 8
  %237 = load i32, ptr %EOLcnt, align 4
  %238 = load ptr, ptr %sp, align 8
  %EOLcnt364 = getelementptr inbounds %struct.Fax3DecodeState, ptr %238, i64 0, i32 4
  store i32 %237, ptr %EOLcnt364, align 4
  %239 = load ptr, ptr %cp, align 8
  %240 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp365 = getelementptr inbounds %struct.tiff, ptr %240, i64 0, i32 42
  %241 = load ptr, ptr %tif_rawcp365, align 8
  %sub.ptr.lhs.cast366 = ptrtoint ptr %239 to i64
  %sub.ptr.rhs.cast367 = ptrtoint ptr %241 to i64
  %sub.ptr.sub368.neg = sub i64 %sub.ptr.rhs.cast367, %sub.ptr.lhs.cast366
  %tif_rawcc369 = getelementptr inbounds %struct.tiff, ptr %240, i64 0, i32 43
  %242 = load i64, ptr %tif_rawcc369, align 8
  %sub370 = add i64 %sub.ptr.sub368.neg, %242
  store i64 %sub370, ptr %tif_rawcc369, align 8
  %243 = load ptr, ptr %cp, align 8
  %244 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp371 = getelementptr inbounds %struct.tiff, ptr %244, i64 0, i32 42
  store ptr %243, ptr %tif_rawcp371, align 8
  br label %return

return:                                           ; preds = %do.body361, %EOFRLE
  %storemerge = phi i32 [ 1, %do.body361 ], [ -1, %EOFRLE ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFInitCCITTRLEW(ptr noundef %tif, i32 noundef %scheme) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %call = call i32 @InitCCITTFax3(ptr noundef %tif)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 26
  store ptr @Fax3DecodeRLE, ptr %tif_decoderow, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 28
  store ptr @Fax3DecodeRLE, ptr %tif_decodestrip, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 30
  store ptr @Fax3DecodeRLE, ptr %tif_decodetile, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %call1 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %1, i64 noundef 65536, i32 noundef 11) #5
  br label %return

return:                                           ; preds = %entry, %if.then
  %storemerge = phi i32 [ %call1, %if.then ], [ 0, %entry ]
  ret i32 %storemerge
}

declare ptr @_TIFFmalloc(i64 noundef) #2

declare void @TIFFError(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax3VGetField(ptr noundef %tif, i64 noundef %tag, ptr noundef %ap) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i64, align 8
  %ap.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tag, ptr %tag.addr, align 8
  store ptr %ap, ptr %ap.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  switch i64 %tag, label %sw.default [
    i64 65536, label %sw.bb
    i64 65540, label %sw.bb1
    i64 292, label %sw.bb4
    i64 293, label %sw.bb4
    i64 326, label %sw.bb6
    i64 327, label %sw.bb8
    i64 328, label %sw.bb10
    i64 34908, label %sw.bb12
    i64 34909, label %sw.bb14
    i64 34910, label %sw.bb16
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %sp, align 8
  %2 = load i32, ptr %1, align 8
  %3 = va_arg ptr %ap.addr, ptr
  store i32 %2, ptr %3, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %4, i64 0, i32 2
  %5 = load i32, ptr %tif_mode, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %sw.bb1
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_data2 = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 37
  %7 = load ptr, ptr %tif_data2, align 8
  %fill = getelementptr inbounds %struct.Fax3DecodeState, ptr %7, i64 0, i32 5
  %8 = load ptr, ptr %fill, align 8
  %9 = va_arg ptr %ap.addr, ptr
  store ptr %8, ptr %9, align 8
  br label %return

sw.bb4:                                           ; preds = %entry, %entry
  %10 = load ptr, ptr %sp, align 8
  %groupoptions = getelementptr inbounds %struct.Fax3BaseState, ptr %10, i64 0, i32 6
  %11 = load i64, ptr %groupoptions, align 8
  %12 = va_arg ptr %ap.addr, ptr
  store i64 %11, ptr %12, align 8
  br label %return

sw.bb6:                                           ; preds = %entry
  %13 = load ptr, ptr %sp, align 8
  %badfaxlines = getelementptr inbounds %struct.Fax3BaseState, ptr %13, i64 0, i32 5
  %14 = load i64, ptr %badfaxlines, align 8
  %15 = va_arg ptr %ap.addr, ptr
  store i64 %14, ptr %15, align 8
  br label %return

sw.bb8:                                           ; preds = %entry
  %16 = load ptr, ptr %sp, align 8
  %cleanfaxdata = getelementptr inbounds %struct.Fax3BaseState, ptr %16, i64 0, i32 3
  %17 = load i16, ptr %cleanfaxdata, align 8
  %18 = va_arg ptr %ap.addr, ptr
  store i16 %17, ptr %18, align 2
  br label %return

sw.bb10:                                          ; preds = %entry
  %19 = load ptr, ptr %sp, align 8
  %badfaxrun = getelementptr inbounds %struct.Fax3BaseState, ptr %19, i64 0, i32 4
  %20 = load i64, ptr %badfaxrun, align 8
  %21 = va_arg ptr %ap.addr, ptr
  store i64 %20, ptr %21, align 8
  br label %return

sw.bb12:                                          ; preds = %entry
  %22 = load ptr, ptr %sp, align 8
  %recvparams = getelementptr inbounds %struct.Fax3BaseState, ptr %22, i64 0, i32 7
  %23 = load i64, ptr %recvparams, align 8
  %24 = va_arg ptr %ap.addr, ptr
  store i64 %23, ptr %24, align 8
  br label %return

sw.bb14:                                          ; preds = %entry
  %25 = load ptr, ptr %sp, align 8
  %subaddress = getelementptr inbounds %struct.Fax3BaseState, ptr %25, i64 0, i32 8
  %26 = load ptr, ptr %subaddress, align 8
  %27 = va_arg ptr %ap.addr, ptr
  store ptr %26, ptr %27, align 8
  br label %return

sw.bb16:                                          ; preds = %entry
  %28 = load ptr, ptr %sp, align 8
  %recvtime = getelementptr inbounds %struct.Fax3BaseState, ptr %28, i64 0, i32 9
  %29 = load i64, ptr %recvtime, align 8
  %30 = va_arg ptr %ap.addr, ptr
  store i64 %29, ptr %30, align 8
  br label %return

sw.default:                                       ; preds = %entry
  %31 = load ptr, ptr %sp, align 8
  %vgetparent = getelementptr inbounds %struct.Fax3BaseState, ptr %31, i64 0, i32 10
  %32 = load ptr, ptr %vgetparent, align 8
  %33 = load ptr, ptr %tif.addr, align 8
  %34 = load i64, ptr %tag.addr, align 8
  %35 = load ptr, ptr %ap.addr, align 8
  %call = call i32 %32(ptr noundef %33, i64 noundef %34, ptr noundef %35) #5
  br label %return

return:                                           ; preds = %sw.bb, %sw.bb4, %sw.bb6, %sw.bb8, %sw.bb10, %sw.bb12, %sw.bb14, %sw.bb16, %if.then, %sw.bb1, %sw.default
  %storemerge = phi i32 [ %call, %sw.default ], [ 1, %sw.bb1 ], [ 1, %if.then ], [ 1, %sw.bb16 ], [ 1, %sw.bb14 ], [ 1, %sw.bb12 ], [ 1, %sw.bb10 ], [ 1, %sw.bb8 ], [ 1, %sw.bb6 ], [ 1, %sw.bb4 ], [ 1, %sw.bb ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax3VSetField(ptr noundef %tif, i64 noundef %tag, ptr noundef %ap) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i64, align 8
  %ap.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tag, ptr %tag.addr, align 8
  store ptr %ap, ptr %ap.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  switch i64 %tag, label %sw.default [
    i64 65536, label %sw.bb
    i64 65540, label %sw.bb1
    i64 292, label %sw.bb4
    i64 293, label %sw.bb4
    i64 326, label %sw.bb6
    i64 327, label %sw.bb8
    i64 328, label %sw.bb10
    i64 34908, label %sw.bb12
    i64 34909, label %sw.bb14
    i64 34910, label %sw.bb16
  ]

sw.bb:                                            ; preds = %entry
  %1 = va_arg ptr %ap.addr, i32
  %2 = load ptr, ptr %sp, align 8
  store i32 %1, ptr %2, align 8
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 2
  %4 = load i32, ptr %tif_mode, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb1
  %5 = va_arg ptr %ap.addr, ptr
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_data3 = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 37
  %7 = load ptr, ptr %tif_data3, align 8
  %fill = getelementptr inbounds %struct.Fax3DecodeState, ptr %7, i64 0, i32 5
  store ptr %5, ptr %fill, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb1
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry, %entry
  %8 = va_arg ptr %ap.addr, i64
  %9 = load ptr, ptr %sp, align 8
  %groupoptions = getelementptr inbounds %struct.Fax3BaseState, ptr %9, i64 0, i32 6
  store i64 %8, ptr %groupoptions, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %10 = va_arg ptr %ap.addr, i64
  %11 = load ptr, ptr %sp, align 8
  %badfaxlines = getelementptr inbounds %struct.Fax3BaseState, ptr %11, i64 0, i32 5
  store i64 %10, ptr %badfaxlines, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %12 = va_arg ptr %ap.addr, i32
  %conv = trunc i32 %12 to i16
  %13 = load ptr, ptr %sp, align 8
  %cleanfaxdata = getelementptr inbounds %struct.Fax3BaseState, ptr %13, i64 0, i32 3
  store i16 %conv, ptr %cleanfaxdata, align 8
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %14 = va_arg ptr %ap.addr, i64
  %15 = load ptr, ptr %sp, align 8
  %badfaxrun = getelementptr inbounds %struct.Fax3BaseState, ptr %15, i64 0, i32 4
  store i64 %14, ptr %badfaxrun, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %16 = va_arg ptr %ap.addr, i64
  %17 = load ptr, ptr %sp, align 8
  %recvparams = getelementptr inbounds %struct.Fax3BaseState, ptr %17, i64 0, i32 7
  store i64 %16, ptr %recvparams, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %18 = load ptr, ptr %sp, align 8
  %subaddress = getelementptr inbounds %struct.Fax3BaseState, ptr %18, i64 0, i32 8
  %19 = va_arg ptr %ap.addr, ptr
  call void @_TIFFsetString(ptr noundef nonnull %subaddress, ptr noundef %19) #5
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %20 = va_arg ptr %ap.addr, i64
  %21 = load ptr, ptr %sp, align 8
  %recvtime = getelementptr inbounds %struct.Fax3BaseState, ptr %21, i64 0, i32 9
  store i64 %20, ptr %recvtime, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %22 = load ptr, ptr %sp, align 8
  %vsetparent = getelementptr inbounds %struct.Fax3BaseState, ptr %22, i64 0, i32 11
  %23 = load ptr, ptr %vsetparent, align 8
  %24 = load ptr, ptr %tif.addr, align 8
  %25 = load i64, ptr %tag.addr, align 8
  %26 = load ptr, ptr %ap.addr, align 8
  %call = call i32 %23(ptr noundef %24, i64 noundef %25, ptr noundef %26) #5
  store i32 %call, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4
  %27 = load ptr, ptr %tif.addr, align 8
  %28 = load i64, ptr %tag.addr, align 8
  %call18 = call ptr @_TIFFFieldWithTag(ptr noundef %27, i64 noundef %28) #5
  %field_bit = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call18, i64 0, i32 4
  %29 = load i16, ptr %field_bit, align 8
  %30 = and i16 %29, 31
  %sh_prom = zext i16 %30 to i64
  %shl = shl i64 1, %sh_prom
  %31 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %31, i64 0, i32 6
  %32 = load i64, ptr %tag.addr, align 8
  %call20 = call ptr @_TIFFFieldWithTag(ptr noundef %31, i64 noundef %32) #5
  %field_bit21 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call20, i64 0, i32 4
  %33 = load i16, ptr %field_bit21, align 8
  %34 = lshr i16 %33, 5
  %idxprom = zext i16 %34 to i64
  %arrayidx = getelementptr inbounds [3 x i64], ptr %tif_dir, i64 0, i64 %idxprom
  %35 = load i64, ptr %arrayidx, align 8
  %or = or i64 %35, %shl
  store i64 %or, ptr %arrayidx, align 8
  %36 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %36, i64 0, i32 3
  %37 = load i64, ptr %tif_flags, align 8
  %or23 = or i64 %37, 8
  store i64 %or23, ptr %tif_flags, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.end, %sw.bb
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

; Function Attrs: nounwind ssp uwtable
define internal void @Fax3PrintDir(ptr noundef %tif, ptr noundef %fd, i64 noundef %flags) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %fd.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %sep = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %fd, ptr %fd.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %arrayidx = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 0, i64 2
  %1 = load i64, ptr %arrayidx, align 8
  %and = and i64 %1, 16
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end31, label %if.then

if.then:                                          ; preds = %entry
  store ptr @.str.12, ptr %sep, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %td_compression = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 6, i32 10
  %3 = load i16, ptr %td_compression, align 4
  %cmp = icmp eq i16 %3, 4
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %4 = load ptr, ptr %fd.addr, align 8
  %5 = call i64 @fwrite(ptr nonnull @.str.13, i64 18, i64 1, ptr %4)
  %6 = load ptr, ptr %sp, align 8
  %groupoptions = getelementptr inbounds %struct.Fax3BaseState, ptr %6, i64 0, i32 6
  %7 = load i64, ptr %groupoptions, align 8
  %and4 = and i64 %7, 2
  %tobool5.not = icmp eq i64 %and4, 0
  br i1 %tobool5.not, label %if.end27, label %if.then6

if.then6:                                         ; preds = %if.then3
  %8 = load ptr, ptr %fd.addr, align 8
  %9 = load ptr, ptr %sep, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.14, ptr noundef %9) #5
  br label %if.end27

if.else:                                          ; preds = %if.then
  %10 = load ptr, ptr %fd.addr, align 8
  %11 = call i64 @fwrite(ptr nonnull @.str.15, i64 18, i64 1, ptr %10)
  %12 = load ptr, ptr %sp, align 8
  %groupoptions9 = getelementptr inbounds %struct.Fax3BaseState, ptr %12, i64 0, i32 6
  %13 = load i64, ptr %groupoptions9, align 8
  %and10 = and i64 %13, 1
  %tobool11.not = icmp eq i64 %and10, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.else
  %14 = load ptr, ptr %fd.addr, align 8
  %15 = load ptr, ptr %sep, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.16, ptr noundef %15) #5
  store ptr @.str.17, ptr %sep, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.else
  %16 = load ptr, ptr %sp, align 8
  %groupoptions15 = getelementptr inbounds %struct.Fax3BaseState, ptr %16, i64 0, i32 6
  %17 = load i64, ptr %groupoptions15, align 8
  %and16 = and i64 %17, 4
  %tobool17.not = icmp eq i64 %and16, 0
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end14
  %18 = load ptr, ptr %fd.addr, align 8
  %19 = load ptr, ptr %sep, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.18, ptr noundef %19) #5
  store ptr @.str.17, ptr %sep, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end14
  %20 = load ptr, ptr %sp, align 8
  %groupoptions21 = getelementptr inbounds %struct.Fax3BaseState, ptr %20, i64 0, i32 6
  %21 = load i64, ptr %groupoptions21, align 8
  %and22 = and i64 %21, 2
  %tobool23.not = icmp eq i64 %and22, 0
  br i1 %tobool23.not, label %if.end27, label %if.then24

if.then24:                                        ; preds = %if.end20
  %22 = load ptr, ptr %fd.addr, align 8
  %23 = load ptr, ptr %sep, align 8
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.14, ptr noundef %23) #5
  br label %if.end27

if.end27:                                         ; preds = %if.end20, %if.then24, %if.then3, %if.then6
  %24 = load ptr, ptr %fd.addr, align 8
  %25 = load ptr, ptr %sp, align 8
  %groupoptions28 = getelementptr inbounds %struct.Fax3BaseState, ptr %25, i64 0, i32 6
  %26 = load i64, ptr %groupoptions28, align 8
  %call30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.19, i64 noundef %26, i64 noundef %26) #5
  br label %if.end31

if.end31:                                         ; preds = %if.end27, %entry
  %27 = load ptr, ptr %tif.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 6, i32 0, i64 1
  %28 = load i64, ptr %arrayidx34, align 8
  %and35 = and i64 %28, 2147483648
  %tobool36.not = icmp eq i64 %and35, 0
  br i1 %tobool36.not, label %if.end50, label %if.then37

if.then37:                                        ; preds = %if.end31
  %29 = load ptr, ptr %fd.addr, align 8
  %30 = call i64 @fwrite(ptr nonnull @.str.20, i64 11, i64 1, ptr %29)
  %31 = load ptr, ptr %sp, align 8
  %cleanfaxdata = getelementptr inbounds %struct.Fax3BaseState, ptr %31, i64 0, i32 3
  %32 = load i16, ptr %cleanfaxdata, align 8
  switch i16 %32, label %sw.epilog [
    i16 0, label %sw.bb
    i16 1, label %sw.bb41
    i16 2, label %sw.bb43
  ]

sw.bb:                                            ; preds = %if.then37
  %33 = load ptr, ptr %fd.addr, align 8
  %34 = call i64 @fwrite(ptr nonnull @.str.21, i64 6, i64 1, ptr %33)
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.then37
  %35 = load ptr, ptr %fd.addr, align 8
  %36 = call i64 @fwrite(ptr nonnull @.str.22, i64 21, i64 1, ptr %35)
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.then37
  %37 = load ptr, ptr %fd.addr, align 8
  %38 = call i64 @fwrite(ptr nonnull @.str.23, i64 19, i64 1, ptr %37)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb43, %sw.bb41, %sw.bb, %if.then37
  %39 = load ptr, ptr %fd.addr, align 8
  %40 = load ptr, ptr %sp, align 8
  %cleanfaxdata45 = getelementptr inbounds %struct.Fax3BaseState, ptr %40, i64 0, i32 3
  %41 = load i16, ptr %cleanfaxdata45, align 8
  %conv46 = zext i16 %41 to i32
  %conv48 = zext i16 %41 to i32
  %call49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.24, i32 noundef %conv46, i32 noundef %conv48) #5
  br label %if.end50

if.end50:                                         ; preds = %sw.epilog, %if.end31
  %42 = load ptr, ptr %tif.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct.tiff, ptr %42, i64 0, i32 6, i32 0, i64 1
  %43 = load i64, ptr %arrayidx53, align 8
  %and54 = and i64 %43, 1073741824
  %tobool55.not = icmp eq i64 %and54, 0
  br i1 %tobool55.not, label %if.end58, label %if.then56

if.then56:                                        ; preds = %if.end50
  %44 = load ptr, ptr %fd.addr, align 8
  %45 = load ptr, ptr %sp, align 8
  %badfaxlines = getelementptr inbounds %struct.Fax3BaseState, ptr %45, i64 0, i32 5
  %46 = load i64, ptr %badfaxlines, align 8
  %call57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.25, i64 noundef %46) #5
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end50
  %47 = load ptr, ptr %tif.addr, align 8
  %arrayidx61 = getelementptr inbounds %struct.tiff, ptr %47, i64 0, i32 6, i32 0, i64 2
  %48 = load i64, ptr %arrayidx61, align 8
  %and62 = and i64 %48, 1
  %tobool63.not = icmp eq i64 %and62, 0
  br i1 %tobool63.not, label %if.end66, label %if.then64

if.then64:                                        ; preds = %if.end58
  %49 = load ptr, ptr %fd.addr, align 8
  %50 = load ptr, ptr %sp, align 8
  %badfaxrun = getelementptr inbounds %struct.Fax3BaseState, ptr %50, i64 0, i32 4
  %51 = load i64, ptr %badfaxrun, align 8
  %call65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.26, i64 noundef %51) #5
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end58
  %52 = load ptr, ptr %tif.addr, align 8
  %arrayidx69 = getelementptr inbounds %struct.tiff, ptr %52, i64 0, i32 6, i32 0, i64 2
  %53 = load i64, ptr %arrayidx69, align 8
  %and70 = and i64 %53, 2
  %tobool71.not = icmp eq i64 %and70, 0
  br i1 %tobool71.not, label %if.end74, label %if.then72

if.then72:                                        ; preds = %if.end66
  %54 = load ptr, ptr %fd.addr, align 8
  %55 = load ptr, ptr %sp, align 8
  %recvparams = getelementptr inbounds %struct.Fax3BaseState, ptr %55, i64 0, i32 7
  %56 = load i64, ptr %recvparams, align 8
  %call73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.27, i64 noundef %56) #5
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.end66
  %57 = load ptr, ptr %tif.addr, align 8
  %arrayidx77 = getelementptr inbounds %struct.tiff, ptr %57, i64 0, i32 6, i32 0, i64 2
  %58 = load i64, ptr %arrayidx77, align 8
  %and78 = and i64 %58, 4
  %tobool79.not = icmp eq i64 %and78, 0
  br i1 %tobool79.not, label %if.end82, label %if.then80

if.then80:                                        ; preds = %if.end74
  %59 = load ptr, ptr %fd.addr, align 8
  %60 = load ptr, ptr %sp, align 8
  %subaddress = getelementptr inbounds %struct.Fax3BaseState, ptr %60, i64 0, i32 8
  %61 = load ptr, ptr %subaddress, align 8
  %call81 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef nonnull @.str.28, ptr noundef %61) #5
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.end74
  %62 = load ptr, ptr %tif.addr, align 8
  %arrayidx85 = getelementptr inbounds %struct.tiff, ptr %62, i64 0, i32 6, i32 0, i64 2
  %63 = load i64, ptr %arrayidx85, align 8
  %and86 = and i64 %63, 8
  %tobool87.not = icmp eq i64 %and86, 0
  br i1 %tobool87.not, label %if.end90, label %if.then88

if.then88:                                        ; preds = %if.end82
  %64 = load ptr, ptr %fd.addr, align 8
  %65 = load ptr, ptr %sp, align 8
  %recvtime = getelementptr inbounds %struct.Fax3BaseState, ptr %65, i64 0, i32 9
  %66 = load i64, ptr %recvtime, align 8
  %call89 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.29, i64 noundef %66) #5
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.end82
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax3SetupState(ptr noundef %tif) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %rowbytes = alloca i64, align 8
  %rowpixels = alloca i64, align 8
  %needsRefLine = alloca i32, align 4
  %dsp = alloca ptr, align 8
  %nruns = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %td_bitspersample = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 8
  %1 = load i16, ptr %td_bitspersample, align 8
  %cmp.not = icmp eq i16 %1, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load ptr, ptr %2, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %3, ptr noundef nonnull @.str.30) #5
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %4, i64 0, i32 3
  %5 = load i64, ptr %tif_flags, align 8
  %and = and i64 %5, 1024
  %cmp2.not = icmp eq i64 %and, 0
  br i1 %cmp2.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %tif.addr, align 8
  %call = call i64 @TIFFTileRowSize(ptr noundef %6) #5
  store i64 %call, ptr %rowbytes, align 8
  %7 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i64 0, i32 4
  br label %if.end6

if.else:                                          ; preds = %if.end
  %8 = load ptr, ptr %tif.addr, align 8
  %call5 = call i64 @TIFFScanlineSize(ptr noundef %8) #5
  store i64 %call5, ptr %rowbytes, align 8
  %9 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %9, i64 0, i32 1
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %storemerge.in = phi ptr [ %td_imagewidth, %if.else ], [ %td_tilewidth, %if.then4 ]
  %storemerge = load i64, ptr %storemerge.in, align 8
  store i64 %storemerge, ptr %rowpixels, align 8
  %10 = load i64, ptr %rowbytes, align 8
  %11 = load ptr, ptr %sp, align 8
  %rowbytes7 = getelementptr inbounds %struct.Fax3BaseState, ptr %11, i64 0, i32 1
  store i64 %10, ptr %rowbytes7, align 8
  %rowpixels8 = getelementptr inbounds %struct.Fax3BaseState, ptr %11, i64 0, i32 2
  store i64 %storemerge, ptr %rowpixels8, align 8
  %groupoptions = getelementptr inbounds %struct.Fax3BaseState, ptr %11, i64 0, i32 6
  %12 = load i64, ptr %groupoptions, align 8
  %and9 = and i64 %12, 1
  %tobool.not = icmp eq i64 %and9, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.end6
  %13 = load ptr, ptr %td, align 8
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i64 0, i32 10
  %14 = load i16, ptr %td_compression, align 4
  %cmp11 = icmp eq i16 %14, 4
  %phi.cast = zext i1 %cmp11 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end6
  %15 = phi i32 [ 1, %if.end6 ], [ %phi.cast, %lor.rhs ]
  store i32 %15, ptr %needsRefLine, align 4
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 2
  %17 = load i32, ptr %tif_mode, align 4
  %cmp13 = icmp eq i32 %17, 0
  br i1 %cmp13, label %if.then15, label %if.else39

if.then15:                                        ; preds = %lor.end
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_data16 = getelementptr inbounds %struct.tiff, ptr %18, i64 0, i32 37
  %19 = load ptr, ptr %tif_data16, align 8
  store ptr %19, ptr %dsp, align 8
  %20 = load i32, ptr %needsRefLine, align 4
  %tobool17.not = icmp eq i32 %20, 0
  br i1 %tobool17.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then15
  %21 = load i64, ptr %rowpixels, align 8
  %add = shl i64 %21, 1
  %div1 = add i64 %add, 62
  %mul18 = and i64 %div1, -64
  br label %cond.end

cond.false:                                       ; preds = %if.then15
  %22 = load i64, ptr %rowpixels, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul18, %cond.true ], [ %22, %cond.false ]
  store i64 %cond, ptr %nruns, align 8
  %mul19 = shl i64 %cond, 3
  %call20 = call ptr @_TIFFmalloc(i64 noundef %mul19) #5
  %23 = load ptr, ptr %dsp, align 8
  %runs = getelementptr inbounds %struct.Fax3DecodeState, ptr %23, i64 0, i32 6
  store ptr %call20, ptr %runs, align 8
  %cmp22 = icmp eq ptr %call20, null
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %cond.end
  %24 = load ptr, ptr %tif.addr, align 8
  %25 = load ptr, ptr %24, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef %25) #5
  store i32 0, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %cond.end
  %26 = load ptr, ptr %dsp, align 8
  %runs27 = getelementptr inbounds %struct.Fax3DecodeState, ptr %26, i64 0, i32 6
  %27 = load ptr, ptr %runs27, align 8
  %curruns = getelementptr inbounds %struct.Fax3DecodeState, ptr %26, i64 0, i32 8
  store ptr %27, ptr %curruns, align 8
  %28 = load i32, ptr %needsRefLine, align 4
  %tobool28.not = icmp eq i32 %28, 0
  br i1 %tobool28.not, label %if.else31, label %if.then29

if.then29:                                        ; preds = %if.end26
  %29 = load ptr, ptr %dsp, align 8
  %runs30 = getelementptr inbounds %struct.Fax3DecodeState, ptr %29, i64 0, i32 6
  %30 = load ptr, ptr %runs30, align 8
  %31 = load i64, ptr %nruns, align 8
  %shr = lshr i64 %31, 1
  %add.ptr = getelementptr inbounds i64, ptr %30, i64 %shr
  %refruns = getelementptr inbounds %struct.Fax3DecodeState, ptr %29, i64 0, i32 7
  store ptr %add.ptr, ptr %refruns, align 8
  br label %if.end33

if.else31:                                        ; preds = %if.end26
  %32 = load ptr, ptr %dsp, align 8
  %refruns32 = getelementptr inbounds %struct.Fax3DecodeState, ptr %32, i64 0, i32 7
  store ptr null, ptr %refruns32, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %if.then29
  %33 = load ptr, ptr %dsp, align 8
  %groupoptions34 = getelementptr inbounds %struct.Fax3BaseState, ptr %33, i64 0, i32 6
  %34 = load i64, ptr %groupoptions34, align 8
  %and35 = and i64 %34, 1
  %tobool36.not = icmp eq i64 %and35, 0
  br i1 %tobool36.not, label %if.end54, label %if.then37

if.then37:                                        ; preds = %if.end33
  %35 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %35, i64 0, i32 26
  store ptr @Fax3Decode2D, ptr %tif_decoderow, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %35, i64 0, i32 28
  store ptr @Fax3Decode2D, ptr %tif_decodestrip, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %35, i64 0, i32 30
  store ptr @Fax3Decode2D, ptr %tif_decodetile, align 8
  br label %if.end54

if.else39:                                        ; preds = %lor.end
  %36 = load i32, ptr %needsRefLine, align 4
  %tobool40.not = icmp eq i32 %36, 0
  br i1 %tobool40.not, label %if.else50, label %if.then41

if.then41:                                        ; preds = %if.else39
  %37 = load ptr, ptr %tif.addr, align 8
  %tif_data42 = getelementptr inbounds %struct.tiff, ptr %37, i64 0, i32 37
  %38 = load ptr, ptr %tif_data42, align 8
  %39 = load i64, ptr %rowbytes, align 8
  %call43 = call ptr @_TIFFmalloc(i64 noundef %39) #5
  %refline = getelementptr inbounds %struct.Fax3EncodeState, ptr %38, i64 0, i32 4
  store ptr %call43, ptr %refline, align 8
  %cmp45 = icmp eq ptr %call43, null
  br i1 %cmp45, label %if.then47, label %if.end54

if.then47:                                        ; preds = %if.then41
  %40 = load ptr, ptr %tif.addr, align 8
  %41 = load ptr, ptr %40, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.33, ptr noundef %41) #5
  store i32 0, ptr %retval, align 4
  br label %return

if.else50:                                        ; preds = %if.else39
  %42 = load ptr, ptr %tif.addr, align 8
  %tif_data51 = getelementptr inbounds %struct.tiff, ptr %42, i64 0, i32 37
  %43 = load ptr, ptr %tif_data51, align 8
  %refline52 = getelementptr inbounds %struct.Fax3EncodeState, ptr %43, i64 0, i32 4
  store ptr null, ptr %refline52, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.else50, %if.then41, %if.end33, %if.then37
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end54, %if.then47, %if.then24, %if.then
  %44 = load i32, ptr %retval, align 4
  ret i32 %44
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax3PreDecode(ptr noundef %tif, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.Fax3PreDecode, ptr noundef nonnull @.str, i32 noundef 160, ptr noundef nonnull @.str.40) #4
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load ptr, ptr %sp, align 8
  %bit = getelementptr inbounds %struct.Fax3DecodeState, ptr %1, i64 0, i32 3
  store i32 0, ptr %bit, align 8
  %data = getelementptr inbounds %struct.Fax3DecodeState, ptr %1, i64 0, i32 2
  store i64 0, ptr %data, align 8
  %EOLcnt = getelementptr inbounds %struct.Fax3DecodeState, ptr %1, i64 0, i32 4
  store i32 0, ptr %EOLcnt, align 4
  %2 = load ptr, ptr %tif.addr, align 8
  %td_fillorder = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 6, i32 13
  %3 = load i16, ptr %td_fillorder, align 2
  %cmp2 = icmp ne i16 %3, 2
  %conv3 = zext i1 %cmp2 to i32
  %call = call ptr @TIFFGetBitRevTable(i32 noundef %conv3) #5
  %4 = load ptr, ptr %sp, align 8
  %bitmap = getelementptr inbounds %struct.Fax3DecodeState, ptr %4, i64 0, i32 1
  store ptr %call, ptr %bitmap, align 8
  %refruns = getelementptr inbounds %struct.Fax3DecodeState, ptr %4, i64 0, i32 7
  %5 = load ptr, ptr %refruns, align 8
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %6 = load ptr, ptr %sp, align 8
  %rowpixels = getelementptr inbounds %struct.Fax3BaseState, ptr %6, i64 0, i32 2
  %7 = load i64, ptr %rowpixels, align 8
  %conv6 = and i64 %7, 65535
  %refruns7 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 7
  %8 = load ptr, ptr %refruns7, align 8
  store i64 %conv6, ptr %8, align 8
  %9 = load ptr, ptr %sp, align 8
  %refruns8 = getelementptr inbounds %struct.Fax3DecodeState, ptr %9, i64 0, i32 7
  %10 = load ptr, ptr %refruns8, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %10, i64 1
  store i64 0, ptr %arrayidx9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax3Decode1D(ptr noundef %tif, ptr noundef %buf, i64 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %occ.addr = alloca i64, align 8
  %sp = alloca ptr, align 8
  %a0 = alloca i32, align 4
  %lastx = alloca i32, align 4
  %BitAcc = alloca i64, align 8
  %BitsAvail = alloca i32, align 4
  %RunLength = alloca i32, align 4
  %cp = alloca ptr, align 8
  %ep = alloca ptr, align 8
  %pa = alloca ptr, align 8
  %thisrun = alloca ptr, align 8
  %EOLcnt = alloca i32, align 4
  %bitmap = alloca ptr, align 8
  %TabEnt = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %occ, ptr %occ.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %rowpixels = getelementptr inbounds %struct.Fax3BaseState, ptr %0, i64 0, i32 2
  %1 = load i64, ptr %rowpixels, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, ptr %lastx, align 4
  %bitmap1 = getelementptr inbounds %struct.Fax3DecodeState, ptr %0, i64 0, i32 1
  %2 = load ptr, ptr %bitmap1, align 8
  store ptr %2, ptr %bitmap, align 8
  %3 = load ptr, ptr %sp, align 8
  %data = getelementptr inbounds %struct.Fax3DecodeState, ptr %3, i64 0, i32 2
  %4 = load i64, ptr %data, align 8
  store i64 %4, ptr %BitAcc, align 8
  %bit = getelementptr inbounds %struct.Fax3DecodeState, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %bit, align 8
  store i32 %5, ptr %BitsAvail, align 4
  %6 = load ptr, ptr %sp, align 8
  %EOLcnt2 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 4
  %7 = load i32, ptr %EOLcnt2, align 4
  store i32 %7, ptr %EOLcnt, align 4
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 42
  %9 = load ptr, ptr %tif_rawcp, align 8
  store ptr %9, ptr %cp, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 43
  %10 = load i64, ptr %tif_rawcc, align 8
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %10
  store ptr %add.ptr, ptr %ep, align 8
  %11 = load ptr, ptr %sp, align 8
  %curruns = getelementptr inbounds %struct.Fax3DecodeState, ptr %11, i64 0, i32 8
  %12 = load ptr, ptr %curruns, align 8
  store ptr %12, ptr %thisrun, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end414, %entry
  %13 = load i64, ptr %occ.addr, align 8
  %cmp = icmp sgt i64 %13, 0
  br i1 %cmp, label %while.body, label %do.body507

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %14 = load ptr, ptr %thisrun, align 8
  store ptr %14, ptr %pa, align 8
  %15 = load i32, ptr %EOLcnt, align 4
  %cmp5 = icmp eq i32 %15, 0
  br i1 %cmp5, label %for.cond, label %if.end44

for.cond:                                         ; preds = %while.body, %do.body42
  %16 = load i32, ptr %BitsAvail, align 4
  %cmp8 = icmp slt i32 %16, 11
  br i1 %cmp8, label %if.then10, label %do.end37

if.then10:                                        ; preds = %for.cond
  %17 = load ptr, ptr %cp, align 8
  %18 = load ptr, ptr %ep, align 8
  %cmp11.not = icmp ult ptr %17, %18
  br i1 %cmp11.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then10
  %19 = load i32, ptr %BitsAvail, align 4
  %cmp14 = icmp eq i32 %19, 0
  br i1 %cmp14, label %do.body415, label %if.end

if.end:                                           ; preds = %if.then13
  store i32 11, ptr %BitsAvail, align 4
  br label %do.end37

if.else:                                          ; preds = %if.then10
  %20 = load ptr, ptr %bitmap, align 8
  %21 = load ptr, ptr %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %incdec.ptr, ptr %cp, align 8
  %22 = load i8, ptr %21, align 1
  %idxprom = zext i8 %22 to i64
  %arrayidx = getelementptr inbounds i8, ptr %20, i64 %idxprom
  %23 = load i8, ptr %arrayidx, align 1
  %conv17 = zext i8 %23 to i64
  %24 = load i32, ptr %BitsAvail, align 4
  %sh_prom = zext i32 %24 to i64
  %shl = shl i64 %conv17, %sh_prom
  %25 = load i64, ptr %BitAcc, align 8
  %or = or i64 %25, %shl
  store i64 %or, ptr %BitAcc, align 8
  %add = add nsw i32 %24, 8
  store i32 %add, ptr %BitsAvail, align 4
  %cmp18 = icmp slt i32 %24, 3
  br i1 %cmp18, label %if.then20, label %do.end37

if.then20:                                        ; preds = %if.else
  %26 = load ptr, ptr %cp, align 8
  %27 = load ptr, ptr %ep, align 8
  %cmp21.not = icmp ult ptr %26, %27
  br i1 %cmp21.not, label %if.else24, label %if.end33

if.else24:                                        ; preds = %if.then20
  %28 = load ptr, ptr %bitmap, align 8
  %29 = load ptr, ptr %cp, align 8
  %incdec.ptr25 = getelementptr inbounds i8, ptr %29, i64 1
  store ptr %incdec.ptr25, ptr %cp, align 8
  %30 = load i8, ptr %29, align 1
  %idxprom26 = zext i8 %30 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %28, i64 %idxprom26
  %31 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %31 to i64
  %32 = load i32, ptr %BitsAvail, align 4
  %sh_prom29 = zext i32 %32 to i64
  %shl30 = shl i64 %conv28, %sh_prom29
  %33 = load i64, ptr %BitAcc, align 8
  %or31 = or i64 %33, %shl30
  store i64 %or31, ptr %BitAcc, align 8
  %add32 = add nsw i32 %32, 8
  br label %if.end33

if.end33:                                         ; preds = %if.then20, %if.else24
  %storemerge16 = phi i32 [ %add32, %if.else24 ], [ 11, %if.then20 ]
  store i32 %storemerge16, ptr %BitsAvail, align 4
  br label %do.end37

do.end37:                                         ; preds = %for.cond, %if.else, %if.end33, %if.end
  %34 = load i64, ptr %BitAcc, align 8
  %and = and i64 %34, 2047
  %cmp38 = icmp eq i64 %and, 0
  br i1 %cmp38, label %if.end44, label %do.body42

do.body42:                                        ; preds = %do.end37
  %35 = load i32, ptr %BitsAvail, align 4
  %sub = add nsw i32 %35, -1
  store i32 %sub, ptr %BitsAvail, align 4
  %36 = load i64, ptr %BitAcc, align 8
  %shr = lshr i64 %36, 1
  store i64 %shr, ptr %BitAcc, align 8
  br label %for.cond

if.end44:                                         ; preds = %do.end37, %while.body
  br label %for.cond45

for.cond45:                                       ; preds = %do.body72, %if.end44
  %37 = load i32, ptr %BitsAvail, align 4
  %cmp47 = icmp slt i32 %37, 8
  br i1 %cmp47, label %if.then49, label %do.end68

if.then49:                                        ; preds = %for.cond45
  %38 = load ptr, ptr %cp, align 8
  %39 = load ptr, ptr %ep, align 8
  %cmp50.not = icmp ult ptr %38, %39
  br i1 %cmp50.not, label %if.else57, label %if.then52

if.then52:                                        ; preds = %if.then49
  %40 = load i32, ptr %BitsAvail, align 4
  %cmp53 = icmp eq i32 %40, 0
  br i1 %cmp53, label %do.body415, label %if.end66

if.else57:                                        ; preds = %if.then49
  %41 = load ptr, ptr %bitmap, align 8
  %42 = load ptr, ptr %cp, align 8
  %incdec.ptr58 = getelementptr inbounds i8, ptr %42, i64 1
  store ptr %incdec.ptr58, ptr %cp, align 8
  %43 = load i8, ptr %42, align 1
  %idxprom59 = zext i8 %43 to i64
  %arrayidx60 = getelementptr inbounds i8, ptr %41, i64 %idxprom59
  %44 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %44 to i64
  %45 = load i32, ptr %BitsAvail, align 4
  %sh_prom62 = zext i32 %45 to i64
  %shl63 = shl i64 %conv61, %sh_prom62
  %46 = load i64, ptr %BitAcc, align 8
  %or64 = or i64 %46, %shl63
  store i64 %or64, ptr %BitAcc, align 8
  %add65 = add nsw i32 %45, 8
  br label %if.end66

if.end66:                                         ; preds = %if.then52, %if.else57
  %storemerge13 = phi i32 [ %add65, %if.else57 ], [ 8, %if.then52 ]
  store i32 %storemerge13, ptr %BitsAvail, align 4
  br label %do.end68

do.end68:                                         ; preds = %for.cond45, %if.end66
  %47 = load i64, ptr %BitAcc, align 8
  %and69 = and i64 %47, 255
  %tobool.not = icmp eq i64 %and69, 0
  br i1 %tobool.not, label %do.body72, label %while.cond77

do.body72:                                        ; preds = %do.end68
  %48 = load i32, ptr %BitsAvail, align 4
  %sub73 = add nsw i32 %48, -8
  store i32 %sub73, ptr %BitsAvail, align 4
  %49 = load i64, ptr %BitAcc, align 8
  %shr74 = lshr i64 %49, 8
  store i64 %shr74, ptr %BitAcc, align 8
  br label %for.cond45

while.cond77:                                     ; preds = %do.end68, %do.body82
  %50 = load i64, ptr %BitAcc, align 8
  %and78 = and i64 %50, 1
  %cmp79 = icmp eq i64 %and78, 0
  br i1 %cmp79, label %do.body82, label %do.body86

do.body82:                                        ; preds = %while.cond77
  %51 = load i32, ptr %BitsAvail, align 4
  %sub83 = add nsw i32 %51, -1
  store i32 %sub83, ptr %BitsAvail, align 4
  %52 = load i64, ptr %BitAcc, align 8
  %shr84 = lshr i64 %52, 1
  store i64 %shr84, ptr %BitAcc, align 8
  br label %while.cond77, !llvm.loop !25

do.body86:                                        ; preds = %while.cond77
  %53 = load i32, ptr %BitsAvail, align 4
  %sub87 = add nsw i32 %53, -1
  store i32 %sub87, ptr %BitsAvail, align 4
  %54 = load i64, ptr %BitAcc, align 8
  %shr88 = lshr i64 %54, 1
  store i64 %shr88, ptr %BitAcc, align 8
  store i32 0, ptr %EOLcnt, align 4
  br label %for.cond92

for.cond92:                                       ; preds = %do.body229, %do.body86
  br label %for.cond93

for.cond93:                                       ; preds = %sw.bb157, %for.cond92
  %55 = load i32, ptr %BitsAvail, align 4
  %cmp96 = icmp slt i32 %55, 12
  br i1 %cmp96, label %if.then98, label %do.end134

if.then98:                                        ; preds = %for.cond93
  %56 = load ptr, ptr %cp, align 8
  %57 = load ptr, ptr %ep, align 8
  %cmp99.not = icmp ult ptr %56, %57
  br i1 %cmp99.not, label %if.else106, label %if.then101

if.then101:                                       ; preds = %if.then98
  %58 = load i32, ptr %BitsAvail, align 4
  %cmp102 = icmp eq i32 %58, 0
  br i1 %cmp102, label %eof1d, label %if.end105

if.end105:                                        ; preds = %if.then101
  store i32 12, ptr %BitsAvail, align 4
  br label %do.end134

if.else106:                                       ; preds = %if.then98
  %59 = load ptr, ptr %bitmap, align 8
  %60 = load ptr, ptr %cp, align 8
  %incdec.ptr107 = getelementptr inbounds i8, ptr %60, i64 1
  store ptr %incdec.ptr107, ptr %cp, align 8
  %61 = load i8, ptr %60, align 1
  %idxprom108 = zext i8 %61 to i64
  %arrayidx109 = getelementptr inbounds i8, ptr %59, i64 %idxprom108
  %62 = load i8, ptr %arrayidx109, align 1
  %conv110 = zext i8 %62 to i64
  %63 = load i32, ptr %BitsAvail, align 4
  %sh_prom111 = zext i32 %63 to i64
  %shl112 = shl i64 %conv110, %sh_prom111
  %64 = load i64, ptr %BitAcc, align 8
  %or113 = or i64 %64, %shl112
  store i64 %or113, ptr %BitAcc, align 8
  %add114 = add nsw i32 %63, 8
  store i32 %add114, ptr %BitsAvail, align 4
  %cmp115 = icmp slt i32 %63, 4
  br i1 %cmp115, label %if.then117, label %do.end134

if.then117:                                       ; preds = %if.else106
  %65 = load ptr, ptr %cp, align 8
  %66 = load ptr, ptr %ep, align 8
  %cmp118.not = icmp ult ptr %65, %66
  br i1 %cmp118.not, label %if.else121, label %if.end130

if.else121:                                       ; preds = %if.then117
  %67 = load ptr, ptr %bitmap, align 8
  %68 = load ptr, ptr %cp, align 8
  %incdec.ptr122 = getelementptr inbounds i8, ptr %68, i64 1
  store ptr %incdec.ptr122, ptr %cp, align 8
  %69 = load i8, ptr %68, align 1
  %idxprom123 = zext i8 %69 to i64
  %arrayidx124 = getelementptr inbounds i8, ptr %67, i64 %idxprom123
  %70 = load i8, ptr %arrayidx124, align 1
  %conv125 = zext i8 %70 to i64
  %71 = load i32, ptr %BitsAvail, align 4
  %sh_prom126 = zext i32 %71 to i64
  %shl127 = shl i64 %conv125, %sh_prom126
  %72 = load i64, ptr %BitAcc, align 8
  %or128 = or i64 %72, %shl127
  store i64 %or128, ptr %BitAcc, align 8
  %add129 = add nsw i32 %71, 8
  br label %if.end130

if.end130:                                        ; preds = %if.then117, %if.else121
  %storemerge12 = phi i32 [ %add129, %if.else121 ], [ 12, %if.then117 ]
  store i32 %storemerge12, ptr %BitsAvail, align 4
  br label %do.end134

do.end134:                                        ; preds = %for.cond93, %if.else106, %if.end130, %if.end105
  %73 = load i64, ptr %BitAcc, align 8
  %and135 = and i64 %73, 4095
  %add.ptr136 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %and135
  store ptr %add.ptr136, ptr %TabEnt, align 8
  %74 = load ptr, ptr %TabEnt, align 8
  %Width = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %74, i64 0, i32 1
  %75 = load i8, ptr %Width, align 1
  %conv138 = zext i8 %75 to i32
  %76 = load i32, ptr %BitsAvail, align 4
  %sub139 = sub nsw i32 %76, %conv138
  store i32 %sub139, ptr %BitsAvail, align 4
  %77 = load ptr, ptr %TabEnt, align 8
  %Width140 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %77, i64 0, i32 1
  %78 = load i8, ptr %Width140, align 1
  %79 = load i64, ptr %BitAcc, align 8
  %sh_prom142 = zext i8 %78 to i64
  %shr143 = lshr i64 %79, %sh_prom142
  store i64 %shr143, ptr %BitAcc, align 8
  %80 = load ptr, ptr %TabEnt, align 8
  %81 = load i8, ptr %80, align 8
  switch i8 %81, label %sw.default [
    i8 12, label %sw.bb
    i8 7, label %do.body148
    i8 9, label %sw.bb157
    i8 11, label %sw.bb157
  ]

sw.bb:                                            ; preds = %do.end134
  store i32 1, ptr %EOLcnt, align 4
  br label %do.body327

do.body148:                                       ; preds = %do.end134
  %82 = load i32, ptr %RunLength, align 4
  %conv149 = sext i32 %82 to i64
  %83 = load ptr, ptr %TabEnt, align 8
  %Param = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %83, i64 0, i32 2
  %84 = load i64, ptr %Param, align 8
  %add150 = add i64 %84, %conv149
  %85 = load ptr, ptr %pa, align 8
  %incdec.ptr151 = getelementptr inbounds i64, ptr %85, i64 1
  store ptr %incdec.ptr151, ptr %pa, align 8
  store i64 %add150, ptr %85, align 8
  %86 = load ptr, ptr %TabEnt, align 8
  %Param152 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %86, i64 0, i32 2
  %87 = load i64, ptr %Param152, align 8
  %88 = load i32, ptr %a0, align 4
  %89 = trunc i64 %87 to i32
  %conv155 = add i32 %88, %89
  store i32 %conv155, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %90 = load i32, ptr %a0, align 4
  %91 = load i32, ptr %lastx, align 4
  %cmp167.not = icmp slt i32 %90, %91
  br i1 %cmp167.not, label %for.cond171, label %do.body327

sw.bb157:                                         ; preds = %do.end134, %do.end134
  %92 = load ptr, ptr %TabEnt, align 8
  %Param158 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %92, i64 0, i32 2
  %93 = load i64, ptr %Param158, align 8
  %94 = load i32, ptr %a0, align 4
  %95 = trunc i64 %93 to i32
  %conv161 = add i32 %94, %95
  store i32 %conv161, ptr %a0, align 4
  %96 = load ptr, ptr %TabEnt, align 8
  %Param162 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %96, i64 0, i32 2
  %97 = load i64, ptr %Param162, align 8
  %98 = load i32, ptr %RunLength, align 4
  %99 = trunc i64 %97 to i32
  %conv165 = add i32 %98, %99
  store i32 %conv165, ptr %RunLength, align 4
  br label %for.cond93

sw.default:                                       ; preds = %do.end134
  %100 = load ptr, ptr %tif.addr, align 8
  %101 = load i32, ptr %a0, align 4
  %conv166 = sext i32 %101 to i64
  call void @Fax3Unexpected(ptr noundef nonnull @Fax3Decode1D.module, ptr noundef %100, i64 noundef %conv166)
  br label %do.body327

for.cond171:                                      ; preds = %do.body148, %sw.bb239
  %102 = load i32, ptr %BitsAvail, align 4
  %cmp174 = icmp slt i32 %102, 13
  br i1 %cmp174, label %if.then176, label %do.end212

if.then176:                                       ; preds = %for.cond171
  %103 = load ptr, ptr %cp, align 8
  %104 = load ptr, ptr %ep, align 8
  %cmp177.not = icmp ult ptr %103, %104
  br i1 %cmp177.not, label %if.else184, label %if.then179

if.then179:                                       ; preds = %if.then176
  %105 = load i32, ptr %BitsAvail, align 4
  %cmp180 = icmp eq i32 %105, 0
  br i1 %cmp180, label %eof1d, label %if.end183

if.end183:                                        ; preds = %if.then179
  store i32 13, ptr %BitsAvail, align 4
  br label %do.end212

if.else184:                                       ; preds = %if.then176
  %106 = load ptr, ptr %bitmap, align 8
  %107 = load ptr, ptr %cp, align 8
  %incdec.ptr185 = getelementptr inbounds i8, ptr %107, i64 1
  store ptr %incdec.ptr185, ptr %cp, align 8
  %108 = load i8, ptr %107, align 1
  %idxprom186 = zext i8 %108 to i64
  %arrayidx187 = getelementptr inbounds i8, ptr %106, i64 %idxprom186
  %109 = load i8, ptr %arrayidx187, align 1
  %conv188 = zext i8 %109 to i64
  %110 = load i32, ptr %BitsAvail, align 4
  %sh_prom189 = zext i32 %110 to i64
  %shl190 = shl i64 %conv188, %sh_prom189
  %111 = load i64, ptr %BitAcc, align 8
  %or191 = or i64 %111, %shl190
  store i64 %or191, ptr %BitAcc, align 8
  %add192 = add nsw i32 %110, 8
  store i32 %add192, ptr %BitsAvail, align 4
  %cmp193 = icmp slt i32 %110, 5
  br i1 %cmp193, label %if.then195, label %do.end212

if.then195:                                       ; preds = %if.else184
  %112 = load ptr, ptr %cp, align 8
  %113 = load ptr, ptr %ep, align 8
  %cmp196.not = icmp ult ptr %112, %113
  br i1 %cmp196.not, label %if.else199, label %if.end208

if.else199:                                       ; preds = %if.then195
  %114 = load ptr, ptr %bitmap, align 8
  %115 = load ptr, ptr %cp, align 8
  %incdec.ptr200 = getelementptr inbounds i8, ptr %115, i64 1
  store ptr %incdec.ptr200, ptr %cp, align 8
  %116 = load i8, ptr %115, align 1
  %idxprom201 = zext i8 %116 to i64
  %arrayidx202 = getelementptr inbounds i8, ptr %114, i64 %idxprom201
  %117 = load i8, ptr %arrayidx202, align 1
  %conv203 = zext i8 %117 to i64
  %118 = load i32, ptr %BitsAvail, align 4
  %sh_prom204 = zext i32 %118 to i64
  %shl205 = shl i64 %conv203, %sh_prom204
  %119 = load i64, ptr %BitAcc, align 8
  %or206 = or i64 %119, %shl205
  store i64 %or206, ptr %BitAcc, align 8
  %add207 = add nsw i32 %118, 8
  br label %if.end208

if.end208:                                        ; preds = %if.then195, %if.else199
  %storemerge9 = phi i32 [ %add207, %if.else199 ], [ 13, %if.then195 ]
  store i32 %storemerge9, ptr %BitsAvail, align 4
  br label %do.end212

do.end212:                                        ; preds = %for.cond171, %if.else184, %if.end208, %if.end183
  %120 = load i64, ptr %BitAcc, align 8
  %and213 = and i64 %120, 8191
  %add.ptr214 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %and213
  store ptr %add.ptr214, ptr %TabEnt, align 8
  %121 = load ptr, ptr %TabEnt, align 8
  %Width216 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %121, i64 0, i32 1
  %122 = load i8, ptr %Width216, align 1
  %conv217 = zext i8 %122 to i32
  %123 = load i32, ptr %BitsAvail, align 4
  %sub218 = sub nsw i32 %123, %conv217
  store i32 %sub218, ptr %BitsAvail, align 4
  %124 = load ptr, ptr %TabEnt, align 8
  %Width219 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %124, i64 0, i32 1
  %125 = load i8, ptr %Width219, align 1
  %126 = load i64, ptr %BitAcc, align 8
  %sh_prom221 = zext i8 %125 to i64
  %shr222 = lshr i64 %126, %sh_prom221
  store i64 %shr222, ptr %BitAcc, align 8
  %127 = load ptr, ptr %TabEnt, align 8
  %128 = load i8, ptr %127, align 8
  switch i8 %128, label %sw.default248 [
    i8 12, label %sw.bb227
    i8 8, label %do.body229
    i8 10, label %sw.bb239
    i8 11, label %sw.bb239
  ]

sw.bb227:                                         ; preds = %do.end212
  store i32 1, ptr %EOLcnt, align 4
  br label %do.body327

do.body229:                                       ; preds = %do.end212
  %129 = load i32, ptr %RunLength, align 4
  %conv230 = sext i32 %129 to i64
  %130 = load ptr, ptr %TabEnt, align 8
  %Param231 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %130, i64 0, i32 2
  %131 = load i64, ptr %Param231, align 8
  %add232 = add i64 %131, %conv230
  %132 = load ptr, ptr %pa, align 8
  %incdec.ptr233 = getelementptr inbounds i64, ptr %132, i64 1
  store ptr %incdec.ptr233, ptr %pa, align 8
  store i64 %add232, ptr %132, align 8
  %133 = load ptr, ptr %TabEnt, align 8
  %Param234 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %133, i64 0, i32 2
  %134 = load i64, ptr %Param234, align 8
  %135 = load i32, ptr %a0, align 4
  %136 = trunc i64 %134 to i32
  %conv237 = add i32 %135, %136
  store i32 %conv237, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %137 = load i32, ptr %a0, align 4
  %138 = load i32, ptr %lastx, align 4
  %cmp251.not = icmp slt i32 %137, %138
  br i1 %cmp251.not, label %for.cond92, label %do.body327

sw.bb239:                                         ; preds = %do.end212, %do.end212
  %139 = load ptr, ptr %TabEnt, align 8
  %Param240 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %139, i64 0, i32 2
  %140 = load i64, ptr %Param240, align 8
  %141 = load i32, ptr %a0, align 4
  %142 = trunc i64 %140 to i32
  %conv243 = add i32 %141, %142
  store i32 %conv243, ptr %a0, align 4
  %143 = load ptr, ptr %TabEnt, align 8
  %Param244 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %143, i64 0, i32 2
  %144 = load i64, ptr %Param244, align 8
  %145 = load i32, ptr %RunLength, align 4
  %146 = trunc i64 %144 to i32
  %conv247 = add i32 %145, %146
  store i32 %conv247, ptr %RunLength, align 4
  br label %for.cond171

sw.default248:                                    ; preds = %do.end212
  %147 = load ptr, ptr %tif.addr, align 8
  %148 = load i32, ptr %a0, align 4
  %conv249 = sext i32 %148 to i64
  call void @Fax3Unexpected(ptr noundef nonnull @Fax3Decode1D.module, ptr noundef %147, i64 noundef %conv249)
  br label %do.body327

eof1d:                                            ; preds = %if.then179, %if.then101
  %149 = load ptr, ptr %tif.addr, align 8
  %150 = load i32, ptr %a0, align 4
  %conv255 = sext i32 %150 to i64
  call void @Fax3PrematureEOF(ptr noundef nonnull @Fax3Decode1D.module, ptr noundef %149, i64 noundef %conv255)
  %151 = load i32, ptr %RunLength, align 4
  %tobool257.not = icmp eq i32 %151, 0
  br i1 %tobool257.not, label %if.end265, label %do.body259

do.body259:                                       ; preds = %eof1d
  %152 = load i32, ptr %RunLength, align 4
  %conv261 = sext i32 %152 to i64
  %153 = load ptr, ptr %pa, align 8
  %incdec.ptr262 = getelementptr inbounds i64, ptr %153, i64 1
  store ptr %incdec.ptr262, ptr %pa, align 8
  store i64 %conv261, ptr %153, align 8
  store i32 0, ptr %RunLength, align 4
  br label %if.end265

if.end265:                                        ; preds = %do.body259, %eof1d
  %154 = load i32, ptr %a0, align 4
  %155 = load i32, ptr %lastx, align 4
  %cmp266.not = icmp eq i32 %154, %155
  br i1 %cmp266.not, label %EOF1Da, label %if.then268

if.then268:                                       ; preds = %if.end265
  %156 = load ptr, ptr %tif.addr, align 8
  %157 = load i32, ptr %a0, align 4
  %conv269 = sext i32 %157 to i64
  %158 = load i32, ptr %lastx, align 4
  %conv270 = sext i32 %158 to i64
  call void @Fax3BadLength(ptr noundef nonnull @Fax3Decode1D.module, ptr noundef %156, i64 noundef %conv269, i64 noundef %conv270)
  br label %while.cond271

while.cond271:                                    ; preds = %while.body276, %if.then268
  %159 = load i32, ptr %a0, align 4
  %160 = load i32, ptr %lastx, align 4
  %cmp272 = icmp sgt i32 %159, %160
  %161 = load ptr, ptr %pa, align 8
  %162 = load ptr, ptr %thisrun, align 8
  %cmp274 = icmp ugt ptr %161, %162
  %163 = select i1 %cmp272, i1 %cmp274, i1 false
  br i1 %163, label %while.body276, label %while.end281

while.body276:                                    ; preds = %while.cond271
  %164 = load ptr, ptr %pa, align 8
  %incdec.ptr277 = getelementptr inbounds i64, ptr %164, i64 -1
  store ptr %incdec.ptr277, ptr %pa, align 8
  %165 = load i64, ptr %incdec.ptr277, align 8
  %166 = load i32, ptr %a0, align 4
  %167 = trunc i64 %165 to i32
  %conv280 = sub i32 %166, %167
  store i32 %conv280, ptr %a0, align 4
  br label %while.cond271, !llvm.loop !26

while.end281:                                     ; preds = %while.cond271
  %168 = load i32, ptr %a0, align 4
  %169 = load i32, ptr %lastx, align 4
  %cmp282 = icmp slt i32 %168, %169
  br i1 %cmp282, label %if.then284, label %if.else307

if.then284:                                       ; preds = %while.end281
  %170 = load i32, ptr %a0, align 4
  %cmp285 = icmp slt i32 %170, 0
  %spec.store.select = select i1 %cmp285, i32 0, i32 %170
  store i32 %spec.store.select, ptr %a0, align 4
  %171 = load ptr, ptr %pa, align 8
  %172 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %171 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %172 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %173 = and i64 %sub.ptr.sub, 8
  %tobool290.not = icmp eq i64 %173, 0
  br i1 %tobool290.not, label %do.body299, label %do.body292

do.body292:                                       ; preds = %if.then284
  %174 = load i32, ptr %RunLength, align 4
  %conv294 = sext i32 %174 to i64
  %175 = load ptr, ptr %pa, align 8
  %incdec.ptr295 = getelementptr inbounds i64, ptr %175, i64 1
  store ptr %incdec.ptr295, ptr %pa, align 8
  store i64 %conv294, ptr %175, align 8
  store i32 0, ptr %RunLength, align 4
  br label %do.body299

do.body299:                                       ; preds = %if.then284, %do.body292
  %176 = load i32, ptr %RunLength, align 4
  %177 = load i32, ptr %lastx, align 4
  %178 = load i32, ptr %a0, align 4
  %sub300 = sub nsw i32 %177, %178
  %add301 = add nsw i32 %176, %sub300
  %conv302 = sext i32 %add301 to i64
  %179 = load ptr, ptr %pa, align 8
  %incdec.ptr303 = getelementptr inbounds i64, ptr %179, i64 1
  store ptr %incdec.ptr303, ptr %pa, align 8
  store i64 %conv302, ptr %179, align 8
  %180 = load i32, ptr %lastx, align 4
  store i32 %180, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %EOF1Da

if.else307:                                       ; preds = %while.end281
  %181 = load i32, ptr %a0, align 4
  %182 = load i32, ptr %lastx, align 4
  %cmp308 = icmp sgt i32 %181, %182
  br i1 %cmp308, label %do.body311, label %EOF1Da

do.body311:                                       ; preds = %if.else307
  %183 = load i32, ptr %RunLength, align 4
  %184 = load i32, ptr %lastx, align 4
  %add312 = add nsw i32 %183, %184
  %conv313 = sext i32 %add312 to i64
  %185 = load ptr, ptr %pa, align 8
  %incdec.ptr314 = getelementptr inbounds i64, ptr %185, i64 1
  store ptr %incdec.ptr314, ptr %pa, align 8
  store i64 %conv313, ptr %185, align 8
  %186 = load i32, ptr %lastx, align 4
  %187 = load i32, ptr %a0, align 4
  %add315 = add nsw i32 %187, %186
  store i32 %add315, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %188 = load i32, ptr %RunLength, align 4
  %conv319 = sext i32 %188 to i64
  %189 = load ptr, ptr %pa, align 8
  %incdec.ptr320 = getelementptr inbounds i64, ptr %189, i64 1
  store ptr %incdec.ptr320, ptr %pa, align 8
  store i64 %conv319, ptr %189, align 8
  store i32 0, ptr %RunLength, align 4
  br label %EOF1Da

do.body327:                                       ; preds = %sw.bb, %sw.default, %sw.bb227, %sw.default248, %do.body148, %do.body229
  %190 = load i32, ptr %RunLength, align 4
  %tobool328.not = icmp eq i32 %190, 0
  br i1 %tobool328.not, label %if.end336, label %do.body330

do.body330:                                       ; preds = %do.body327
  %191 = load i32, ptr %RunLength, align 4
  %conv332 = sext i32 %191 to i64
  %192 = load ptr, ptr %pa, align 8
  %incdec.ptr333 = getelementptr inbounds i64, ptr %192, i64 1
  store ptr %incdec.ptr333, ptr %pa, align 8
  store i64 %conv332, ptr %192, align 8
  store i32 0, ptr %RunLength, align 4
  br label %if.end336

if.end336:                                        ; preds = %do.body330, %do.body327
  %193 = load i32, ptr %a0, align 4
  %194 = load i32, ptr %lastx, align 4
  %cmp337.not = icmp eq i32 %193, %194
  br i1 %cmp337.not, label %do.end404, label %if.then339

if.then339:                                       ; preds = %if.end336
  %195 = load ptr, ptr %tif.addr, align 8
  %196 = load i32, ptr %a0, align 4
  %conv340 = sext i32 %196 to i64
  %197 = load i32, ptr %lastx, align 4
  %conv341 = sext i32 %197 to i64
  call void @Fax3BadLength(ptr noundef nonnull @Fax3Decode1D.module, ptr noundef %195, i64 noundef %conv340, i64 noundef %conv341)
  br label %while.cond342

while.cond342:                                    ; preds = %while.body349, %if.then339
  %198 = load i32, ptr %a0, align 4
  %199 = load i32, ptr %lastx, align 4
  %cmp343 = icmp sgt i32 %198, %199
  %200 = load ptr, ptr %pa, align 8
  %201 = load ptr, ptr %thisrun, align 8
  %cmp346 = icmp ugt ptr %200, %201
  %202 = select i1 %cmp343, i1 %cmp346, i1 false
  br i1 %202, label %while.body349, label %while.end354

while.body349:                                    ; preds = %while.cond342
  %203 = load ptr, ptr %pa, align 8
  %incdec.ptr350 = getelementptr inbounds i64, ptr %203, i64 -1
  store ptr %incdec.ptr350, ptr %pa, align 8
  %204 = load i64, ptr %incdec.ptr350, align 8
  %205 = load i32, ptr %a0, align 4
  %206 = trunc i64 %204 to i32
  %conv353 = sub i32 %205, %206
  store i32 %conv353, ptr %a0, align 4
  br label %while.cond342, !llvm.loop !27

while.end354:                                     ; preds = %while.cond342
  %207 = load i32, ptr %a0, align 4
  %208 = load i32, ptr %lastx, align 4
  %cmp355 = icmp slt i32 %207, %208
  br i1 %cmp355, label %if.then357, label %if.else384

if.then357:                                       ; preds = %while.end354
  %209 = load i32, ptr %a0, align 4
  %cmp358 = icmp slt i32 %209, 0
  %spec.store.select17 = select i1 %cmp358, i32 0, i32 %209
  store i32 %spec.store.select17, ptr %a0, align 4
  %210 = load ptr, ptr %pa, align 8
  %211 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast362 = ptrtoint ptr %210 to i64
  %sub.ptr.rhs.cast363 = ptrtoint ptr %211 to i64
  %sub.ptr.sub364 = sub i64 %sub.ptr.lhs.cast362, %sub.ptr.rhs.cast363
  %212 = and i64 %sub.ptr.sub364, 8
  %tobool367.not = icmp eq i64 %212, 0
  br i1 %tobool367.not, label %do.body376, label %do.body369

do.body369:                                       ; preds = %if.then357
  %213 = load i32, ptr %RunLength, align 4
  %conv371 = sext i32 %213 to i64
  %214 = load ptr, ptr %pa, align 8
  %incdec.ptr372 = getelementptr inbounds i64, ptr %214, i64 1
  store ptr %incdec.ptr372, ptr %pa, align 8
  store i64 %conv371, ptr %214, align 8
  store i32 0, ptr %RunLength, align 4
  br label %do.body376

do.body376:                                       ; preds = %if.then357, %do.body369
  %215 = load i32, ptr %RunLength, align 4
  %216 = load i32, ptr %lastx, align 4
  %217 = load i32, ptr %a0, align 4
  %sub377 = sub nsw i32 %216, %217
  %add378 = add nsw i32 %215, %sub377
  %conv379 = sext i32 %add378 to i64
  %218 = load ptr, ptr %pa, align 8
  %incdec.ptr380 = getelementptr inbounds i64, ptr %218, i64 1
  store ptr %incdec.ptr380, ptr %pa, align 8
  store i64 %conv379, ptr %218, align 8
  %219 = load i32, ptr %lastx, align 4
  store i32 %219, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end404

if.else384:                                       ; preds = %while.end354
  %220 = load i32, ptr %a0, align 4
  %221 = load i32, ptr %lastx, align 4
  %cmp385 = icmp sgt i32 %220, %221
  br i1 %cmp385, label %do.body388, label %do.end404

do.body388:                                       ; preds = %if.else384
  %222 = load i32, ptr %RunLength, align 4
  %223 = load i32, ptr %lastx, align 4
  %add389 = add nsw i32 %222, %223
  %conv390 = sext i32 %add389 to i64
  %224 = load ptr, ptr %pa, align 8
  %incdec.ptr391 = getelementptr inbounds i64, ptr %224, i64 1
  store ptr %incdec.ptr391, ptr %pa, align 8
  store i64 %conv390, ptr %224, align 8
  %225 = load i32, ptr %lastx, align 4
  %226 = load i32, ptr %a0, align 4
  %add392 = add nsw i32 %226, %225
  store i32 %add392, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %227 = load i32, ptr %RunLength, align 4
  %conv396 = sext i32 %227 to i64
  %228 = load ptr, ptr %pa, align 8
  %incdec.ptr397 = getelementptr inbounds i64, ptr %228, i64 1
  store ptr %incdec.ptr397, ptr %pa, align 8
  store i64 %conv396, ptr %228, align 8
  store i32 0, ptr %RunLength, align 4
  br label %do.end404

do.end404:                                        ; preds = %do.body376, %do.body388, %if.else384, %if.end336
  %229 = load ptr, ptr %sp, align 8
  %fill = getelementptr inbounds %struct.Fax3DecodeState, ptr %229, i64 0, i32 5
  %230 = load ptr, ptr %fill, align 8
  %231 = load ptr, ptr %buf.addr, align 8
  %232 = load ptr, ptr %thisrun, align 8
  %233 = load ptr, ptr %pa, align 8
  %234 = load i32, ptr %lastx, align 4
  %conv405 = sext i32 %234 to i64
  call void %230(ptr noundef %231, ptr noundef %232, ptr noundef %233, i64 noundef %conv405) #5
  %235 = load ptr, ptr %sp, align 8
  %rowbytes = getelementptr inbounds %struct.Fax3BaseState, ptr %235, i64 0, i32 1
  %236 = load i64, ptr %rowbytes, align 8
  %237 = load ptr, ptr %buf.addr, align 8
  %add.ptr407 = getelementptr inbounds i8, ptr %237, i64 %236
  store ptr %add.ptr407, ptr %buf.addr, align 8
  %238 = load i64, ptr %occ.addr, align 8
  %sub410 = sub i64 %238, %236
  store i64 %sub410, ptr %occ.addr, align 8
  %cmp411.not = icmp eq i64 %238, %236
  br i1 %cmp411.not, label %if.end414, label %if.then413

if.then413:                                       ; preds = %do.end404
  %239 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %239, i64 0, i32 11
  %240 = load i64, ptr %tif_row, align 8
  %inc = add i64 %240, 1
  store i64 %inc, ptr %tif_row, align 8
  br label %if.end414

if.end414:                                        ; preds = %if.then413, %do.end404
  br label %while.cond, !llvm.loop !28

do.body415:                                       ; preds = %if.then13, %if.then52
  %241 = load i32, ptr %RunLength, align 4
  %tobool416.not = icmp eq i32 %241, 0
  br i1 %tobool416.not, label %if.end424, label %do.body418

do.body418:                                       ; preds = %do.body415
  %242 = load i32, ptr %RunLength, align 4
  %conv420 = sext i32 %242 to i64
  %243 = load ptr, ptr %pa, align 8
  %incdec.ptr421 = getelementptr inbounds i64, ptr %243, i64 1
  store ptr %incdec.ptr421, ptr %pa, align 8
  store i64 %conv420, ptr %243, align 8
  store i32 0, ptr %RunLength, align 4
  br label %if.end424

if.end424:                                        ; preds = %do.body418, %do.body415
  %244 = load i32, ptr %a0, align 4
  %245 = load i32, ptr %lastx, align 4
  %cmp425.not = icmp eq i32 %244, %245
  br i1 %cmp425.not, label %EOF1Da, label %if.then427

if.then427:                                       ; preds = %if.end424
  %246 = load ptr, ptr %tif.addr, align 8
  %247 = load i32, ptr %a0, align 4
  %conv428 = sext i32 %247 to i64
  %248 = load i32, ptr %lastx, align 4
  %conv429 = sext i32 %248 to i64
  call void @Fax3BadLength(ptr noundef nonnull @Fax3Decode1D.module, ptr noundef %246, i64 noundef %conv428, i64 noundef %conv429)
  br label %while.cond430

while.cond430:                                    ; preds = %while.body437, %if.then427
  %249 = load i32, ptr %a0, align 4
  %250 = load i32, ptr %lastx, align 4
  %cmp431 = icmp sgt i32 %249, %250
  %251 = load ptr, ptr %pa, align 8
  %252 = load ptr, ptr %thisrun, align 8
  %cmp434 = icmp ugt ptr %251, %252
  %253 = select i1 %cmp431, i1 %cmp434, i1 false
  br i1 %253, label %while.body437, label %while.end442

while.body437:                                    ; preds = %while.cond430
  %254 = load ptr, ptr %pa, align 8
  %incdec.ptr438 = getelementptr inbounds i64, ptr %254, i64 -1
  store ptr %incdec.ptr438, ptr %pa, align 8
  %255 = load i64, ptr %incdec.ptr438, align 8
  %256 = load i32, ptr %a0, align 4
  %257 = trunc i64 %255 to i32
  %conv441 = sub i32 %256, %257
  store i32 %conv441, ptr %a0, align 4
  br label %while.cond430, !llvm.loop !29

while.end442:                                     ; preds = %while.cond430
  %258 = load i32, ptr %a0, align 4
  %259 = load i32, ptr %lastx, align 4
  %cmp443 = icmp slt i32 %258, %259
  br i1 %cmp443, label %if.then445, label %if.else472

if.then445:                                       ; preds = %while.end442
  %260 = load i32, ptr %a0, align 4
  %cmp446 = icmp slt i32 %260, 0
  %spec.store.select18 = select i1 %cmp446, i32 0, i32 %260
  store i32 %spec.store.select18, ptr %a0, align 4
  %261 = load ptr, ptr %pa, align 8
  %262 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast450 = ptrtoint ptr %261 to i64
  %sub.ptr.rhs.cast451 = ptrtoint ptr %262 to i64
  %sub.ptr.sub452 = sub i64 %sub.ptr.lhs.cast450, %sub.ptr.rhs.cast451
  %263 = and i64 %sub.ptr.sub452, 8
  %tobool455.not = icmp eq i64 %263, 0
  br i1 %tobool455.not, label %do.body464, label %do.body457

do.body457:                                       ; preds = %if.then445
  %264 = load i32, ptr %RunLength, align 4
  %conv459 = sext i32 %264 to i64
  %265 = load ptr, ptr %pa, align 8
  %incdec.ptr460 = getelementptr inbounds i64, ptr %265, i64 1
  store ptr %incdec.ptr460, ptr %pa, align 8
  store i64 %conv459, ptr %265, align 8
  store i32 0, ptr %RunLength, align 4
  br label %do.body464

do.body464:                                       ; preds = %if.then445, %do.body457
  %266 = load i32, ptr %RunLength, align 4
  %267 = load i32, ptr %lastx, align 4
  %268 = load i32, ptr %a0, align 4
  %sub465 = sub nsw i32 %267, %268
  %add466 = add nsw i32 %266, %sub465
  %conv467 = sext i32 %add466 to i64
  %269 = load ptr, ptr %pa, align 8
  %incdec.ptr468 = getelementptr inbounds i64, ptr %269, i64 1
  store ptr %incdec.ptr468, ptr %pa, align 8
  store i64 %conv467, ptr %269, align 8
  %270 = load i32, ptr %lastx, align 4
  store i32 %270, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %EOF1Da

if.else472:                                       ; preds = %while.end442
  %271 = load i32, ptr %a0, align 4
  %272 = load i32, ptr %lastx, align 4
  %cmp473 = icmp sgt i32 %271, %272
  br i1 %cmp473, label %do.body476, label %EOF1Da

do.body476:                                       ; preds = %if.else472
  %273 = load i32, ptr %RunLength, align 4
  %274 = load i32, ptr %lastx, align 4
  %add477 = add nsw i32 %273, %274
  %conv478 = sext i32 %add477 to i64
  %275 = load ptr, ptr %pa, align 8
  %incdec.ptr479 = getelementptr inbounds i64, ptr %275, i64 1
  store ptr %incdec.ptr479, ptr %pa, align 8
  store i64 %conv478, ptr %275, align 8
  %276 = load i32, ptr %lastx, align 4
  %277 = load i32, ptr %a0, align 4
  %add480 = add nsw i32 %277, %276
  store i32 %add480, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %278 = load i32, ptr %RunLength, align 4
  %conv484 = sext i32 %278 to i64
  %279 = load ptr, ptr %pa, align 8
  %incdec.ptr485 = getelementptr inbounds i64, ptr %279, i64 1
  store ptr %incdec.ptr485, ptr %pa, align 8
  store i64 %conv484, ptr %279, align 8
  store i32 0, ptr %RunLength, align 4
  br label %EOF1Da

EOF1Da:                                           ; preds = %do.body464, %do.body476, %if.else472, %if.end424, %do.body299, %do.body311, %if.else307, %if.end265
  %280 = load ptr, ptr %sp, align 8
  %fill492 = getelementptr inbounds %struct.Fax3DecodeState, ptr %280, i64 0, i32 5
  %281 = load ptr, ptr %fill492, align 8
  %282 = load ptr, ptr %buf.addr, align 8
  %283 = load ptr, ptr %thisrun, align 8
  %284 = load ptr, ptr %pa, align 8
  %285 = load i32, ptr %lastx, align 4
  %conv493 = sext i32 %285 to i64
  call void %281(ptr noundef %282, ptr noundef %283, ptr noundef %284, i64 noundef %conv493) #5
  %286 = load i32, ptr %BitsAvail, align 4
  %287 = load ptr, ptr %sp, align 8
  %bit495 = getelementptr inbounds %struct.Fax3DecodeState, ptr %287, i64 0, i32 3
  store i32 %286, ptr %bit495, align 8
  %288 = load i64, ptr %BitAcc, align 8
  %data496 = getelementptr inbounds %struct.Fax3DecodeState, ptr %287, i64 0, i32 2
  store i64 %288, ptr %data496, align 8
  %289 = load i32, ptr %EOLcnt, align 4
  %290 = load ptr, ptr %sp, align 8
  %EOLcnt497 = getelementptr inbounds %struct.Fax3DecodeState, ptr %290, i64 0, i32 4
  store i32 %289, ptr %EOLcnt497, align 4
  %291 = load ptr, ptr %cp, align 8
  %292 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp498 = getelementptr inbounds %struct.tiff, ptr %292, i64 0, i32 42
  %293 = load ptr, ptr %tif_rawcp498, align 8
  %sub.ptr.lhs.cast499 = ptrtoint ptr %291 to i64
  %sub.ptr.rhs.cast500 = ptrtoint ptr %293 to i64
  %sub.ptr.sub501.neg = sub i64 %sub.ptr.rhs.cast500, %sub.ptr.lhs.cast499
  %tif_rawcc502 = getelementptr inbounds %struct.tiff, ptr %292, i64 0, i32 43
  %294 = load i64, ptr %tif_rawcc502, align 8
  %sub503 = add i64 %sub.ptr.sub501.neg, %294
  store i64 %sub503, ptr %tif_rawcc502, align 8
  %295 = load ptr, ptr %cp, align 8
  %296 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp504 = getelementptr inbounds %struct.tiff, ptr %296, i64 0, i32 42
  store ptr %295, ptr %tif_rawcp504, align 8
  br label %return

do.body507:                                       ; preds = %while.cond
  %297 = load i32, ptr %BitsAvail, align 4
  %298 = load ptr, ptr %sp, align 8
  %bit508 = getelementptr inbounds %struct.Fax3DecodeState, ptr %298, i64 0, i32 3
  store i32 %297, ptr %bit508, align 8
  %299 = load i64, ptr %BitAcc, align 8
  %data509 = getelementptr inbounds %struct.Fax3DecodeState, ptr %298, i64 0, i32 2
  store i64 %299, ptr %data509, align 8
  %300 = load i32, ptr %EOLcnt, align 4
  %301 = load ptr, ptr %sp, align 8
  %EOLcnt510 = getelementptr inbounds %struct.Fax3DecodeState, ptr %301, i64 0, i32 4
  store i32 %300, ptr %EOLcnt510, align 4
  %302 = load ptr, ptr %cp, align 8
  %303 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp511 = getelementptr inbounds %struct.tiff, ptr %303, i64 0, i32 42
  %304 = load ptr, ptr %tif_rawcp511, align 8
  %sub.ptr.lhs.cast512 = ptrtoint ptr %302 to i64
  %sub.ptr.rhs.cast513 = ptrtoint ptr %304 to i64
  %sub.ptr.sub514.neg = sub i64 %sub.ptr.rhs.cast513, %sub.ptr.lhs.cast512
  %tif_rawcc515 = getelementptr inbounds %struct.tiff, ptr %303, i64 0, i32 43
  %305 = load i64, ptr %tif_rawcc515, align 8
  %sub516 = add i64 %sub.ptr.sub514.neg, %305
  store i64 %sub516, ptr %tif_rawcc515, align 8
  %306 = load ptr, ptr %cp, align 8
  %307 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp517 = getelementptr inbounds %struct.tiff, ptr %307, i64 0, i32 42
  store ptr %306, ptr %tif_rawcp517, align 8
  br label %return

return:                                           ; preds = %do.body507, %EOF1Da
  %storemerge = phi i32 [ 1, %do.body507 ], [ -1, %EOF1Da ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax3PreEncode(ptr noundef %tif, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %res = alloca float, align 4
  store ptr %tif, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.Fax3PreEncode, ptr noundef nonnull @.str, i32 noundef 699, ptr noundef nonnull @.str.40) #4
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load ptr, ptr %sp, align 8
  %bit = getelementptr inbounds %struct.Fax3EncodeState, ptr %1, i64 0, i32 2
  store i32 8, ptr %bit, align 4
  %data = getelementptr inbounds %struct.Fax3EncodeState, ptr %1, i64 0, i32 1
  store i32 0, ptr %data, align 8
  %tag = getelementptr inbounds %struct.Fax3EncodeState, ptr %1, i64 0, i32 3
  store i32 0, ptr %tag, align 8
  %2 = load ptr, ptr %sp, align 8
  %refline = getelementptr inbounds %struct.Fax3EncodeState, ptr %2, i64 0, i32 4
  %3 = load ptr, ptr %refline, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %4 = load ptr, ptr %sp, align 8
  %refline2 = getelementptr inbounds %struct.Fax3EncodeState, ptr %4, i64 0, i32 4
  %5 = load ptr, ptr %refline2, align 8
  %rowbytes = getelementptr inbounds %struct.Fax3BaseState, ptr %4, i64 0, i32 1
  %6 = load i64, ptr %rowbytes, align 8
  call void @_TIFFmemset(ptr noundef %5, i32 noundef 0, i64 noundef %6) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %7 = load ptr, ptr %sp, align 8
  %groupoptions = getelementptr inbounds %struct.Fax3BaseState, ptr %7, i64 0, i32 6
  %8 = load i64, ptr %groupoptions, align 8
  %and = and i64 %8, 1
  %tobool4.not = icmp eq i64 %and, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %9 = load ptr, ptr %tif.addr, align 8
  %td_yresolution = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 6, i32 22
  %10 = load float, ptr %td_yresolution, align 4
  store float %10, ptr %res, align 4
  %td_resolutionunit = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 6, i32 23
  %11 = load i16, ptr %td_resolutionunit, align 8
  %cmp8 = icmp eq i16 %11, 3
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then5
  %12 = load float, ptr %res, align 4
  %mul = fmul float %12, 0x400451EB80000000
  store float %mul, ptr %res, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then5
  %13 = load float, ptr %res, align 4
  %cmp12 = fcmp ogt float %13, 1.500000e+02
  %cond = select i1 %cmp12, i32 4, i32 2
  %14 = load ptr, ptr %sp, align 8
  %maxk = getelementptr inbounds %struct.Fax3EncodeState, ptr %14, i64 0, i32 6
  store i32 %cond, ptr %maxk, align 4
  %sub = add nsw i32 %cond, -1
  %k = getelementptr inbounds %struct.Fax3EncodeState, ptr %14, i64 0, i32 5
  store i32 %sub, ptr %k, align 8
  br label %if.end17

if.else:                                          ; preds = %if.end
  %15 = load ptr, ptr %sp, align 8
  %maxk15 = getelementptr inbounds %struct.Fax3EncodeState, ptr %15, i64 0, i32 6
  store i32 0, ptr %maxk15, align 4
  %k16 = getelementptr inbounds %struct.Fax3EncodeState, ptr %15, i64 0, i32 5
  store i32 0, ptr %k16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end11
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax3PostEncode(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %bit = getelementptr inbounds %struct.Fax3EncodeState, ptr %0, i64 0, i32 2
  %1 = load i32, ptr %bit, align 4
  %cmp.not = icmp eq i32 %1, 8
  br i1 %cmp.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 43
  %3 = load i64, ptr %tif_rawcc, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 41
  %4 = load i64, ptr %tif_rawdatasize, align 8
  %cmp1.not = icmp slt i64 %3, %4
  br i1 %cmp1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %6 = load ptr, ptr %sp, align 8
  %data = getelementptr inbounds %struct.Fax3EncodeState, ptr %6, i64 0, i32 1
  %7 = load i32, ptr %data, align 8
  %conv = trunc i32 %7 to i8
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 42
  %9 = load ptr, ptr %tif_rawcp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %incdec.ptr, ptr %tif_rawcp, align 8
  store i8 %conv, ptr %9, align 1
  %tif_rawcc3 = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 43
  %10 = load i64, ptr %tif_rawcc3, align 8
  %inc = add nsw i64 %10, 1
  store i64 %inc, ptr %tif_rawcc3, align 8
  %11 = load ptr, ptr %sp, align 8
  %data4 = getelementptr inbounds %struct.Fax3EncodeState, ptr %11, i64 0, i32 1
  store i32 0, ptr %data4, align 8
  %bit5 = getelementptr inbounds %struct.Fax3EncodeState, ptr %11, i64 0, i32 2
  store i32 8, ptr %bit5, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax3Encode(ptr noundef %tif, ptr noundef %bp, i64 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end43, %entry
  %1 = load i64, ptr %cc.addr, align 8
  %cmp = icmp sgt i64 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %sp, align 8
  %3 = load i32, ptr %2, align 8
  %and = and i32 %3, 2
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load ptr, ptr %tif.addr, align 8
  call void @Fax3PutEOL(ptr noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %5 = load ptr, ptr %sp, align 8
  %groupoptions = getelementptr inbounds %struct.Fax3BaseState, ptr %5, i64 0, i32 6
  %6 = load i64, ptr %groupoptions, align 8
  %and3 = and i64 %6, 1
  %tobool.not = icmp eq i64 %and3, 0
  br i1 %tobool.not, label %if.else28, label %if.then4

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %sp, align 8
  %tag = getelementptr inbounds %struct.Fax3EncodeState, ptr %7, i64 0, i32 3
  %8 = load i32, ptr %tag, align 8
  %cmp5 = icmp eq i32 %8, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then4
  %9 = load ptr, ptr %tif.addr, align 8
  %10 = load ptr, ptr %bp.addr, align 8
  %11 = load ptr, ptr %sp, align 8
  %rowpixels = getelementptr inbounds %struct.Fax3BaseState, ptr %11, i64 0, i32 2
  %12 = load i64, ptr %rowpixels, align 8
  %call = call i32 @Fax3Encode1DRow(ptr noundef %9, ptr noundef %10, i64 noundef %12)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then6
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.then6
  %13 = load ptr, ptr %sp, align 8
  %tag11 = getelementptr inbounds %struct.Fax3EncodeState, ptr %13, i64 0, i32 3
  store i32 1, ptr %tag11, align 8
  br label %if.end18

if.else:                                          ; preds = %if.then4
  %14 = load ptr, ptr %tif.addr, align 8
  %15 = load ptr, ptr %bp.addr, align 8
  %16 = load ptr, ptr %sp, align 8
  %refline = getelementptr inbounds %struct.Fax3EncodeState, ptr %16, i64 0, i32 4
  %17 = load ptr, ptr %refline, align 8
  %rowpixels13 = getelementptr inbounds %struct.Fax3BaseState, ptr %16, i64 0, i32 2
  %18 = load i64, ptr %rowpixels13, align 8
  %call14 = call i32 @Fax3Encode2DRow(ptr noundef %14, ptr noundef %15, ptr noundef %17, i64 noundef %18)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.else
  %19 = load ptr, ptr %sp, align 8
  %k = getelementptr inbounds %struct.Fax3EncodeState, ptr %19, i64 0, i32 5
  %20 = load i32, ptr %k, align 8
  %dec = add nsw i32 %20, -1
  store i32 %dec, ptr %k, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end10
  %21 = load ptr, ptr %sp, align 8
  %k19 = getelementptr inbounds %struct.Fax3EncodeState, ptr %21, i64 0, i32 5
  %22 = load i32, ptr %k19, align 8
  %cmp20 = icmp eq i32 %22, 0
  br i1 %cmp20, label %if.then21, label %if.else24

if.then21:                                        ; preds = %if.end18
  %23 = load ptr, ptr %sp, align 8
  %tag22 = getelementptr inbounds %struct.Fax3EncodeState, ptr %23, i64 0, i32 3
  store i32 0, ptr %tag22, align 8
  %maxk = getelementptr inbounds %struct.Fax3EncodeState, ptr %23, i64 0, i32 6
  %24 = load i32, ptr %maxk, align 4
  %sub = add nsw i32 %24, -1
  %k23 = getelementptr inbounds %struct.Fax3EncodeState, ptr %23, i64 0, i32 5
  store i32 %sub, ptr %k23, align 8
  br label %if.end35

if.else24:                                        ; preds = %if.end18
  %25 = load ptr, ptr %sp, align 8
  %refline25 = getelementptr inbounds %struct.Fax3EncodeState, ptr %25, i64 0, i32 4
  %26 = load ptr, ptr %refline25, align 8
  %27 = load ptr, ptr %bp.addr, align 8
  %rowbytes = getelementptr inbounds %struct.Fax3BaseState, ptr %25, i64 0, i32 1
  %28 = load i64, ptr %rowbytes, align 8
  call void @_TIFFmemcpy(ptr noundef %26, ptr noundef %27, i64 noundef %28) #5
  br label %if.end35

if.else28:                                        ; preds = %if.end
  %29 = load ptr, ptr %tif.addr, align 8
  %30 = load ptr, ptr %bp.addr, align 8
  %31 = load ptr, ptr %sp, align 8
  %rowpixels30 = getelementptr inbounds %struct.Fax3BaseState, ptr %31, i64 0, i32 2
  %32 = load i64, ptr %rowpixels30, align 8
  %call31 = call i32 @Fax3Encode1DRow(ptr noundef %29, ptr noundef %30, i64 noundef %32)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.else28
  store i32 0, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.else28, %if.then21, %if.else24
  %33 = load ptr, ptr %sp, align 8
  %rowbytes37 = getelementptr inbounds %struct.Fax3BaseState, ptr %33, i64 0, i32 1
  %34 = load i64, ptr %rowbytes37, align 8
  %35 = load ptr, ptr %bp.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %35, i64 %34
  store ptr %add.ptr, ptr %bp.addr, align 8
  %36 = load i64, ptr %cc.addr, align 8
  %sub40 = sub i64 %36, %34
  store i64 %sub40, ptr %cc.addr, align 8
  %cmp41.not = icmp eq i64 %36, %34
  br i1 %cmp41.not, label %if.end43, label %if.then42

if.then42:                                        ; preds = %if.end35
  %37 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %37, i64 0, i32 11
  %38 = load i64, ptr %tif_row, align 8
  %inc = add i64 %38, 1
  store i64 %inc, ptr %tif_row, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end35
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then33, %if.then16, %if.then9
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

; Function Attrs: nounwind ssp uwtable
define internal void @Fax3Close(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %code = alloca i32, align 4
  %length = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  %1 = load i32, ptr %0, align 8
  %and = and i32 %1, 1
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_data1 = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 37
  %3 = load ptr, ptr %tif_data1, align 8
  store ptr %3, ptr %sp, align 8
  store i32 1, ptr %code, align 4
  store i32 12, ptr %length, align 4
  %groupoptions = getelementptr inbounds %struct.Fax3BaseState, ptr %3, i64 0, i32 6
  %4 = load i64, ptr %groupoptions, align 8
  %and2 = and i64 %4, 1
  %tobool.not = icmp eq i64 %and2, 0
  br i1 %tobool.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %5 = load i32, ptr %code, align 4
  %shl = shl i32 %5, 1
  %6 = load ptr, ptr %sp, align 8
  %tag = getelementptr inbounds %struct.Fax3EncodeState, ptr %6, i64 0, i32 3
  %7 = load i32, ptr %tag, align 8
  %cmp4 = icmp eq i32 %7, 0
  %conv = zext i1 %cmp4 to i32
  %or = or i32 %shl, %conv
  store i32 %or, ptr %code, align 4
  %8 = load i32, ptr %length, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %length, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc7, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp5 = icmp slt i32 %storemerge, 6
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %tif.addr, align 8
  %10 = load i32, ptr %code, align 4
  %11 = load i32, ptr %length, align 4
  call void @Fax3PutBits(ptr noundef %9, i32 noundef %10, i32 noundef %11)
  %12 = load i32, ptr %i, align 4
  %inc7 = add nsw i32 %12, 1
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %13, i64 0, i32 43
  %14 = load i64, ptr %tif_rawcc, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %13, i64 0, i32 41
  %15 = load i64, ptr %tif_rawdatasize, align 8
  %cmp8.not = icmp slt i64 %14, %15
  br i1 %cmp8.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %for.end
  %16 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %16) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %for.end
  %17 = load ptr, ptr %sp, align 8
  %data = getelementptr inbounds %struct.Fax3EncodeState, ptr %17, i64 0, i32 1
  %18 = load i32, ptr %data, align 8
  %conv12 = trunc i32 %18 to i8
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %19, i64 0, i32 42
  %20 = load ptr, ptr %tif_rawcp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %incdec.ptr, ptr %tif_rawcp, align 8
  store i8 %conv12, ptr %20, align 1
  %tif_rawcc13 = getelementptr inbounds %struct.tiff, ptr %19, i64 0, i32 43
  %21 = load i64, ptr %tif_rawcc13, align 8
  %inc14 = add nsw i64 %21, 1
  store i64 %inc14, ptr %tif_rawcc13, align 8
  %22 = load ptr, ptr %sp, align 8
  %data15 = getelementptr inbounds %struct.Fax3EncodeState, ptr %22, i64 0, i32 1
  store i32 0, ptr %data15, align 8
  %bit = getelementptr inbounds %struct.Fax3EncodeState, ptr %22, i64 0, i32 2
  store i32 8, ptr %bit, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end11, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @Fax3Cleanup(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %sp6 = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end21, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 2
  %2 = load i32, ptr %tif_mode, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_data2 = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 37
  %4 = load ptr, ptr %tif_data2, align 8
  store ptr %4, ptr %sp, align 8
  %runs = getelementptr inbounds %struct.Fax3DecodeState, ptr %4, i64 0, i32 6
  %5 = load ptr, ptr %runs, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end12, label %if.then4

if.then4:                                         ; preds = %if.then1
  %6 = load ptr, ptr %sp, align 8
  %runs5 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 6
  %7 = load ptr, ptr %runs5, align 8
  call void @_TIFFfree(ptr noundef %7) #5
  br label %if.end12

if.else:                                          ; preds = %if.then
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_data7 = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 37
  %9 = load ptr, ptr %tif_data7, align 8
  store ptr %9, ptr %sp6, align 8
  %refline = getelementptr inbounds %struct.Fax3EncodeState, ptr %9, i64 0, i32 4
  %10 = load ptr, ptr %refline, align 8
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.else
  %11 = load ptr, ptr %sp6, align 8
  %refline10 = getelementptr inbounds %struct.Fax3EncodeState, ptr %11, i64 0, i32 4
  %12 = load ptr, ptr %refline10, align 8
  call void @_TIFFfree(ptr noundef %12) #5
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9, %if.then1, %if.then4
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_data13 = getelementptr inbounds %struct.tiff, ptr %13, i64 0, i32 37
  %14 = load ptr, ptr %tif_data13, align 8
  %subaddress = getelementptr inbounds %struct.Fax3BaseState, ptr %14, i64 0, i32 8
  %15 = load ptr, ptr %subaddress, align 8
  %tobool14.not = icmp eq ptr %15, null
  br i1 %tobool14.not, label %if.end18, label %if.then15

if.then15:                                        ; preds = %if.end12
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_data16 = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 37
  %17 = load ptr, ptr %tif_data16, align 8
  %subaddress17 = getelementptr inbounds %struct.Fax3BaseState, ptr %17, i64 0, i32 8
  %18 = load ptr, ptr %subaddress17, align 8
  call void @_TIFFfree(ptr noundef %18) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end12
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_data19 = getelementptr inbounds %struct.tiff, ptr %19, i64 0, i32 37
  %20 = load ptr, ptr %tif_data19, align 8
  call void @_TIFFfree(ptr noundef %20) #5
  %tif_data20 = getelementptr inbounds %struct.tiff, ptr %19, i64 0, i32 37
  store ptr null, ptr %tif_data20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end18, %entry
  ret void
}

declare void @_TIFFsetString(ptr noundef, ptr noundef) #2

declare ptr @_TIFFFieldWithTag(ptr noundef, i64 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i64 @TIFFTileRowSize(ptr noundef) #2

declare i64 @TIFFScanlineSize(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax3Decode2D(ptr noundef %tif, ptr noundef %buf, i64 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %occ.addr = alloca i64, align 8
  %sp = alloca ptr, align 8
  %a0 = alloca i32, align 4
  %lastx = alloca i32, align 4
  %BitAcc = alloca i64, align 8
  %BitsAvail = alloca i32, align 4
  %RunLength = alloca i32, align 4
  %cp = alloca ptr, align 8
  %ep = alloca ptr, align 8
  %pa = alloca ptr, align 8
  %thisrun = alloca ptr, align 8
  %EOLcnt = alloca i32, align 4
  %bitmap = alloca ptr, align 8
  %TabEnt = alloca ptr, align 8
  %b1 = alloca i32, align 4
  %pb = alloca ptr, align 8
  %is1D = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %occ, ptr %occ.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %rowpixels = getelementptr inbounds %struct.Fax3BaseState, ptr %0, i64 0, i32 2
  %1 = load i64, ptr %rowpixels, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, ptr %lastx, align 4
  %bitmap1 = getelementptr inbounds %struct.Fax3DecodeState, ptr %0, i64 0, i32 1
  %2 = load ptr, ptr %bitmap1, align 8
  store ptr %2, ptr %bitmap, align 8
  %3 = load ptr, ptr %sp, align 8
  %data = getelementptr inbounds %struct.Fax3DecodeState, ptr %3, i64 0, i32 2
  %4 = load i64, ptr %data, align 8
  store i64 %4, ptr %BitAcc, align 8
  %bit = getelementptr inbounds %struct.Fax3DecodeState, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %bit, align 8
  store i32 %5, ptr %BitsAvail, align 4
  %6 = load ptr, ptr %sp, align 8
  %EOLcnt2 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 4
  %7 = load i32, ptr %EOLcnt2, align 4
  store i32 %7, ptr %EOLcnt, align 4
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 42
  %9 = load ptr, ptr %tif_rawcp, align 8
  store ptr %9, ptr %cp, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 43
  %10 = load i64, ptr %tif_rawcc, align 8
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %10
  store ptr %add.ptr, ptr %ep, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end1244, %entry
  %11 = load i64, ptr %occ.addr, align 8
  %cmp = icmp sgt i64 %11, 0
  br i1 %cmp, label %while.body, label %do.body1337

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %12 = load ptr, ptr %sp, align 8
  %curruns = getelementptr inbounds %struct.Fax3DecodeState, ptr %12, i64 0, i32 8
  %13 = load ptr, ptr %curruns, align 8
  store ptr %13, ptr %thisrun, align 8
  store ptr %13, ptr %pa, align 8
  %14 = load i32, ptr %EOLcnt, align 4
  %cmp5 = icmp eq i32 %14, 0
  br i1 %cmp5, label %for.cond, label %if.end44

for.cond:                                         ; preds = %while.body, %do.body42
  %15 = load i32, ptr %BitsAvail, align 4
  %cmp8 = icmp slt i32 %15, 11
  br i1 %cmp8, label %if.then10, label %do.end37

if.then10:                                        ; preds = %for.cond
  %16 = load ptr, ptr %cp, align 8
  %17 = load ptr, ptr %ep, align 8
  %cmp11.not = icmp ult ptr %16, %17
  br i1 %cmp11.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then10
  %18 = load i32, ptr %BitsAvail, align 4
  %cmp14 = icmp eq i32 %18, 0
  br i1 %cmp14, label %do.body1245, label %if.end

if.end:                                           ; preds = %if.then13
  store i32 11, ptr %BitsAvail, align 4
  br label %do.end37

if.else:                                          ; preds = %if.then10
  %19 = load ptr, ptr %bitmap, align 8
  %20 = load ptr, ptr %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %incdec.ptr, ptr %cp, align 8
  %21 = load i8, ptr %20, align 1
  %idxprom = zext i8 %21 to i64
  %arrayidx = getelementptr inbounds i8, ptr %19, i64 %idxprom
  %22 = load i8, ptr %arrayidx, align 1
  %conv17 = zext i8 %22 to i64
  %23 = load i32, ptr %BitsAvail, align 4
  %sh_prom = zext i32 %23 to i64
  %shl = shl i64 %conv17, %sh_prom
  %24 = load i64, ptr %BitAcc, align 8
  %or = or i64 %24, %shl
  store i64 %or, ptr %BitAcc, align 8
  %add = add nsw i32 %23, 8
  store i32 %add, ptr %BitsAvail, align 4
  %cmp18 = icmp slt i32 %23, 3
  br i1 %cmp18, label %if.then20, label %do.end37

if.then20:                                        ; preds = %if.else
  %25 = load ptr, ptr %cp, align 8
  %26 = load ptr, ptr %ep, align 8
  %cmp21.not = icmp ult ptr %25, %26
  br i1 %cmp21.not, label %if.else24, label %if.end33

if.else24:                                        ; preds = %if.then20
  %27 = load ptr, ptr %bitmap, align 8
  %28 = load ptr, ptr %cp, align 8
  %incdec.ptr25 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %incdec.ptr25, ptr %cp, align 8
  %29 = load i8, ptr %28, align 1
  %idxprom26 = zext i8 %29 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %27, i64 %idxprom26
  %30 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %30 to i64
  %31 = load i32, ptr %BitsAvail, align 4
  %sh_prom29 = zext i32 %31 to i64
  %shl30 = shl i64 %conv28, %sh_prom29
  %32 = load i64, ptr %BitAcc, align 8
  %or31 = or i64 %32, %shl30
  store i64 %or31, ptr %BitAcc, align 8
  %add32 = add nsw i32 %31, 8
  br label %if.end33

if.end33:                                         ; preds = %if.then20, %if.else24
  %storemerge55 = phi i32 [ %add32, %if.else24 ], [ 11, %if.then20 ]
  store i32 %storemerge55, ptr %BitsAvail, align 4
  br label %do.end37

do.end37:                                         ; preds = %for.cond, %if.else, %if.end33, %if.end
  %33 = load i64, ptr %BitAcc, align 8
  %and = and i64 %33, 2047
  %cmp38 = icmp eq i64 %and, 0
  br i1 %cmp38, label %if.end44, label %do.body42

do.body42:                                        ; preds = %do.end37
  %34 = load i32, ptr %BitsAvail, align 4
  %sub = add nsw i32 %34, -1
  store i32 %sub, ptr %BitsAvail, align 4
  %35 = load i64, ptr %BitAcc, align 8
  %shr = lshr i64 %35, 1
  store i64 %shr, ptr %BitAcc, align 8
  br label %for.cond

if.end44:                                         ; preds = %do.end37, %while.body
  br label %for.cond45

for.cond45:                                       ; preds = %do.body72, %if.end44
  %36 = load i32, ptr %BitsAvail, align 4
  %cmp47 = icmp slt i32 %36, 8
  br i1 %cmp47, label %if.then49, label %do.end68

if.then49:                                        ; preds = %for.cond45
  %37 = load ptr, ptr %cp, align 8
  %38 = load ptr, ptr %ep, align 8
  %cmp50.not = icmp ult ptr %37, %38
  br i1 %cmp50.not, label %if.else57, label %if.then52

if.then52:                                        ; preds = %if.then49
  %39 = load i32, ptr %BitsAvail, align 4
  %cmp53 = icmp eq i32 %39, 0
  br i1 %cmp53, label %do.body1245, label %if.end66

if.else57:                                        ; preds = %if.then49
  %40 = load ptr, ptr %bitmap, align 8
  %41 = load ptr, ptr %cp, align 8
  %incdec.ptr58 = getelementptr inbounds i8, ptr %41, i64 1
  store ptr %incdec.ptr58, ptr %cp, align 8
  %42 = load i8, ptr %41, align 1
  %idxprom59 = zext i8 %42 to i64
  %arrayidx60 = getelementptr inbounds i8, ptr %40, i64 %idxprom59
  %43 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %43 to i64
  %44 = load i32, ptr %BitsAvail, align 4
  %sh_prom62 = zext i32 %44 to i64
  %shl63 = shl i64 %conv61, %sh_prom62
  %45 = load i64, ptr %BitAcc, align 8
  %or64 = or i64 %45, %shl63
  store i64 %or64, ptr %BitAcc, align 8
  %add65 = add nsw i32 %44, 8
  br label %if.end66

if.end66:                                         ; preds = %if.then52, %if.else57
  %storemerge54 = phi i32 [ %add65, %if.else57 ], [ 8, %if.then52 ]
  store i32 %storemerge54, ptr %BitsAvail, align 4
  br label %do.end68

do.end68:                                         ; preds = %for.cond45, %if.end66
  %46 = load i64, ptr %BitAcc, align 8
  %and69 = and i64 %46, 255
  %tobool.not = icmp eq i64 %and69, 0
  br i1 %tobool.not, label %do.body72, label %while.cond77

do.body72:                                        ; preds = %do.end68
  %47 = load i32, ptr %BitsAvail, align 4
  %sub73 = add nsw i32 %47, -8
  store i32 %sub73, ptr %BitsAvail, align 4
  %48 = load i64, ptr %BitAcc, align 8
  %shr74 = lshr i64 %48, 8
  store i64 %shr74, ptr %BitAcc, align 8
  br label %for.cond45

while.cond77:                                     ; preds = %do.end68, %do.body82
  %49 = load i64, ptr %BitAcc, align 8
  %and78 = and i64 %49, 1
  %cmp79 = icmp eq i64 %and78, 0
  br i1 %cmp79, label %do.body82, label %do.body86

do.body82:                                        ; preds = %while.cond77
  %50 = load i32, ptr %BitsAvail, align 4
  %sub83 = add nsw i32 %50, -1
  store i32 %sub83, ptr %BitsAvail, align 4
  %51 = load i64, ptr %BitAcc, align 8
  %shr84 = lshr i64 %51, 1
  store i64 %shr84, ptr %BitAcc, align 8
  br label %while.cond77, !llvm.loop !32

do.body86:                                        ; preds = %while.cond77
  %52 = load i32, ptr %BitsAvail, align 4
  %sub87 = add nsw i32 %52, -1
  store i32 %sub87, ptr %BitsAvail, align 4
  %53 = load i64, ptr %BitAcc, align 8
  %shr88 = lshr i64 %53, 1
  store i64 %shr88, ptr %BitAcc, align 8
  store i32 0, ptr %EOLcnt, align 4
  %54 = load i32, ptr %BitsAvail, align 4
  %cmp92 = icmp slt i32 %54, 1
  br i1 %cmp92, label %if.then94, label %do.end113

if.then94:                                        ; preds = %do.body86
  %55 = load ptr, ptr %cp, align 8
  %56 = load ptr, ptr %ep, align 8
  %cmp95.not = icmp ult ptr %55, %56
  br i1 %cmp95.not, label %if.else102, label %if.then97

if.then97:                                        ; preds = %if.then94
  %57 = load i32, ptr %BitsAvail, align 4
  %cmp98 = icmp eq i32 %57, 0
  br i1 %cmp98, label %do.body1245, label %if.end111

if.else102:                                       ; preds = %if.then94
  %58 = load ptr, ptr %bitmap, align 8
  %59 = load ptr, ptr %cp, align 8
  %incdec.ptr103 = getelementptr inbounds i8, ptr %59, i64 1
  store ptr %incdec.ptr103, ptr %cp, align 8
  %60 = load i8, ptr %59, align 1
  %idxprom104 = zext i8 %60 to i64
  %arrayidx105 = getelementptr inbounds i8, ptr %58, i64 %idxprom104
  %61 = load i8, ptr %arrayidx105, align 1
  %conv106 = zext i8 %61 to i64
  %62 = load i32, ptr %BitsAvail, align 4
  %sh_prom107 = zext i32 %62 to i64
  %shl108 = shl i64 %conv106, %sh_prom107
  %63 = load i64, ptr %BitAcc, align 8
  %or109 = or i64 %63, %shl108
  store i64 %or109, ptr %BitAcc, align 8
  %add110 = add nsw i32 %62, 8
  br label %if.end111

if.end111:                                        ; preds = %if.then97, %if.else102
  %storemerge51 = phi i32 [ %add110, %if.else102 ], [ 1, %if.then97 ]
  store i32 %storemerge51, ptr %BitsAvail, align 4
  br label %do.end113

do.end113:                                        ; preds = %do.body86, %if.end111
  %64 = load i64, ptr %BitAcc, align 8
  %65 = trunc i64 %64 to i32
  %conv115 = and i32 %65, 1
  store i32 %conv115, ptr %is1D, align 4
  %66 = load i32, ptr %BitsAvail, align 4
  %sub117 = add nsw i32 %66, -1
  store i32 %sub117, ptr %BitsAvail, align 4
  %67 = load i64, ptr %BitAcc, align 8
  %shr118 = lshr i64 %67, 1
  store i64 %shr118, ptr %BitAcc, align 8
  %68 = load ptr, ptr %sp, align 8
  %refruns = getelementptr inbounds %struct.Fax3DecodeState, ptr %68, i64 0, i32 7
  %69 = load ptr, ptr %refruns, align 8
  %incdec.ptr120 = getelementptr inbounds i64, ptr %69, i64 1
  store ptr %incdec.ptr120, ptr %pb, align 8
  %70 = load i64, ptr %69, align 8
  %conv121 = trunc i64 %70 to i32
  store i32 %conv121, ptr %b1, align 4
  %71 = load i32, ptr %is1D, align 4
  %tobool122.not = icmp eq i32 %71, 0
  br i1 %tobool122.not, label %while.cond440, label %for.cond125

for.cond125:                                      ; preds = %do.body262, %do.end113
  br label %for.cond126

for.cond126:                                      ; preds = %sw.bb190, %for.cond125
  %72 = load i32, ptr %BitsAvail, align 4
  %cmp129 = icmp slt i32 %72, 12
  br i1 %cmp129, label %if.then131, label %do.end167

if.then131:                                       ; preds = %for.cond126
  %73 = load ptr, ptr %cp, align 8
  %74 = load ptr, ptr %ep, align 8
  %cmp132.not = icmp ult ptr %73, %74
  br i1 %cmp132.not, label %if.else139, label %if.then134

if.then134:                                       ; preds = %if.then131
  %75 = load i32, ptr %BitsAvail, align 4
  %cmp135 = icmp eq i32 %75, 0
  br i1 %cmp135, label %eof1d, label %if.end138

if.end138:                                        ; preds = %if.then134
  store i32 12, ptr %BitsAvail, align 4
  br label %do.end167

if.else139:                                       ; preds = %if.then131
  %76 = load ptr, ptr %bitmap, align 8
  %77 = load ptr, ptr %cp, align 8
  %incdec.ptr140 = getelementptr inbounds i8, ptr %77, i64 1
  store ptr %incdec.ptr140, ptr %cp, align 8
  %78 = load i8, ptr %77, align 1
  %idxprom141 = zext i8 %78 to i64
  %arrayidx142 = getelementptr inbounds i8, ptr %76, i64 %idxprom141
  %79 = load i8, ptr %arrayidx142, align 1
  %conv143 = zext i8 %79 to i64
  %80 = load i32, ptr %BitsAvail, align 4
  %sh_prom144 = zext i32 %80 to i64
  %shl145 = shl i64 %conv143, %sh_prom144
  %81 = load i64, ptr %BitAcc, align 8
  %or146 = or i64 %81, %shl145
  store i64 %or146, ptr %BitAcc, align 8
  %add147 = add nsw i32 %80, 8
  store i32 %add147, ptr %BitsAvail, align 4
  %cmp148 = icmp slt i32 %80, 4
  br i1 %cmp148, label %if.then150, label %do.end167

if.then150:                                       ; preds = %if.else139
  %82 = load ptr, ptr %cp, align 8
  %83 = load ptr, ptr %ep, align 8
  %cmp151.not = icmp ult ptr %82, %83
  br i1 %cmp151.not, label %if.else154, label %if.end163

if.else154:                                       ; preds = %if.then150
  %84 = load ptr, ptr %bitmap, align 8
  %85 = load ptr, ptr %cp, align 8
  %incdec.ptr155 = getelementptr inbounds i8, ptr %85, i64 1
  store ptr %incdec.ptr155, ptr %cp, align 8
  %86 = load i8, ptr %85, align 1
  %idxprom156 = zext i8 %86 to i64
  %arrayidx157 = getelementptr inbounds i8, ptr %84, i64 %idxprom156
  %87 = load i8, ptr %arrayidx157, align 1
  %conv158 = zext i8 %87 to i64
  %88 = load i32, ptr %BitsAvail, align 4
  %sh_prom159 = zext i32 %88 to i64
  %shl160 = shl i64 %conv158, %sh_prom159
  %89 = load i64, ptr %BitAcc, align 8
  %or161 = or i64 %89, %shl160
  store i64 %or161, ptr %BitAcc, align 8
  %add162 = add nsw i32 %88, 8
  br label %if.end163

if.end163:                                        ; preds = %if.then150, %if.else154
  %storemerge50 = phi i32 [ %add162, %if.else154 ], [ 12, %if.then150 ]
  store i32 %storemerge50, ptr %BitsAvail, align 4
  br label %do.end167

do.end167:                                        ; preds = %for.cond126, %if.else139, %if.end163, %if.end138
  %90 = load i64, ptr %BitAcc, align 8
  %and168 = and i64 %90, 4095
  %add.ptr169 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %and168
  store ptr %add.ptr169, ptr %TabEnt, align 8
  %91 = load ptr, ptr %TabEnt, align 8
  %Width = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %91, i64 0, i32 1
  %92 = load i8, ptr %Width, align 1
  %conv171 = zext i8 %92 to i32
  %93 = load i32, ptr %BitsAvail, align 4
  %sub172 = sub nsw i32 %93, %conv171
  store i32 %sub172, ptr %BitsAvail, align 4
  %94 = load ptr, ptr %TabEnt, align 8
  %Width173 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %94, i64 0, i32 1
  %95 = load i8, ptr %Width173, align 1
  %96 = load i64, ptr %BitAcc, align 8
  %sh_prom175 = zext i8 %95 to i64
  %shr176 = lshr i64 %96, %sh_prom175
  store i64 %shr176, ptr %BitAcc, align 8
  %97 = load ptr, ptr %TabEnt, align 8
  %98 = load i8, ptr %97, align 8
  switch i8 %98, label %sw.default [
    i8 12, label %sw.bb
    i8 7, label %do.body181
    i8 9, label %sw.bb190
    i8 11, label %sw.bb190
  ]

sw.bb:                                            ; preds = %do.end167
  store i32 1, ptr %EOLcnt, align 4
  br label %do.body360

do.body181:                                       ; preds = %do.end167
  %99 = load i32, ptr %RunLength, align 4
  %conv182 = sext i32 %99 to i64
  %100 = load ptr, ptr %TabEnt, align 8
  %Param = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %100, i64 0, i32 2
  %101 = load i64, ptr %Param, align 8
  %add183 = add i64 %101, %conv182
  %102 = load ptr, ptr %pa, align 8
  %incdec.ptr184 = getelementptr inbounds i64, ptr %102, i64 1
  store ptr %incdec.ptr184, ptr %pa, align 8
  store i64 %add183, ptr %102, align 8
  %103 = load ptr, ptr %TabEnt, align 8
  %Param185 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %103, i64 0, i32 2
  %104 = load i64, ptr %Param185, align 8
  %105 = load i32, ptr %a0, align 4
  %106 = trunc i64 %104 to i32
  %conv188 = add i32 %105, %106
  store i32 %conv188, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %107 = load i32, ptr %a0, align 4
  %108 = load i32, ptr %lastx, align 4
  %cmp200.not = icmp slt i32 %107, %108
  br i1 %cmp200.not, label %for.cond204, label %do.body360

sw.bb190:                                         ; preds = %do.end167, %do.end167
  %109 = load ptr, ptr %TabEnt, align 8
  %Param191 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %109, i64 0, i32 2
  %110 = load i64, ptr %Param191, align 8
  %111 = load i32, ptr %a0, align 4
  %112 = trunc i64 %110 to i32
  %conv194 = add i32 %111, %112
  store i32 %conv194, ptr %a0, align 4
  %113 = load ptr, ptr %TabEnt, align 8
  %Param195 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %113, i64 0, i32 2
  %114 = load i64, ptr %Param195, align 8
  %115 = load i32, ptr %RunLength, align 4
  %116 = trunc i64 %114 to i32
  %conv198 = add i32 %115, %116
  store i32 %conv198, ptr %RunLength, align 4
  br label %for.cond126

sw.default:                                       ; preds = %do.end167
  %117 = load ptr, ptr %tif.addr, align 8
  %118 = load i32, ptr %a0, align 4
  %conv199 = sext i32 %118 to i64
  call void @Fax3Unexpected(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef %117, i64 noundef %conv199)
  br label %do.body360

for.cond204:                                      ; preds = %do.body181, %sw.bb272
  %119 = load i32, ptr %BitsAvail, align 4
  %cmp207 = icmp slt i32 %119, 13
  br i1 %cmp207, label %if.then209, label %do.end245

if.then209:                                       ; preds = %for.cond204
  %120 = load ptr, ptr %cp, align 8
  %121 = load ptr, ptr %ep, align 8
  %cmp210.not = icmp ult ptr %120, %121
  br i1 %cmp210.not, label %if.else217, label %if.then212

if.then212:                                       ; preds = %if.then209
  %122 = load i32, ptr %BitsAvail, align 4
  %cmp213 = icmp eq i32 %122, 0
  br i1 %cmp213, label %eof1d, label %if.end216

if.end216:                                        ; preds = %if.then212
  store i32 13, ptr %BitsAvail, align 4
  br label %do.end245

if.else217:                                       ; preds = %if.then209
  %123 = load ptr, ptr %bitmap, align 8
  %124 = load ptr, ptr %cp, align 8
  %incdec.ptr218 = getelementptr inbounds i8, ptr %124, i64 1
  store ptr %incdec.ptr218, ptr %cp, align 8
  %125 = load i8, ptr %124, align 1
  %idxprom219 = zext i8 %125 to i64
  %arrayidx220 = getelementptr inbounds i8, ptr %123, i64 %idxprom219
  %126 = load i8, ptr %arrayidx220, align 1
  %conv221 = zext i8 %126 to i64
  %127 = load i32, ptr %BitsAvail, align 4
  %sh_prom222 = zext i32 %127 to i64
  %shl223 = shl i64 %conv221, %sh_prom222
  %128 = load i64, ptr %BitAcc, align 8
  %or224 = or i64 %128, %shl223
  store i64 %or224, ptr %BitAcc, align 8
  %add225 = add nsw i32 %127, 8
  store i32 %add225, ptr %BitsAvail, align 4
  %cmp226 = icmp slt i32 %127, 5
  br i1 %cmp226, label %if.then228, label %do.end245

if.then228:                                       ; preds = %if.else217
  %129 = load ptr, ptr %cp, align 8
  %130 = load ptr, ptr %ep, align 8
  %cmp229.not = icmp ult ptr %129, %130
  br i1 %cmp229.not, label %if.else232, label %if.end241

if.else232:                                       ; preds = %if.then228
  %131 = load ptr, ptr %bitmap, align 8
  %132 = load ptr, ptr %cp, align 8
  %incdec.ptr233 = getelementptr inbounds i8, ptr %132, i64 1
  store ptr %incdec.ptr233, ptr %cp, align 8
  %133 = load i8, ptr %132, align 1
  %idxprom234 = zext i8 %133 to i64
  %arrayidx235 = getelementptr inbounds i8, ptr %131, i64 %idxprom234
  %134 = load i8, ptr %arrayidx235, align 1
  %conv236 = zext i8 %134 to i64
  %135 = load i32, ptr %BitsAvail, align 4
  %sh_prom237 = zext i32 %135 to i64
  %shl238 = shl i64 %conv236, %sh_prom237
  %136 = load i64, ptr %BitAcc, align 8
  %or239 = or i64 %136, %shl238
  store i64 %or239, ptr %BitAcc, align 8
  %add240 = add nsw i32 %135, 8
  br label %if.end241

if.end241:                                        ; preds = %if.then228, %if.else232
  %storemerge47 = phi i32 [ %add240, %if.else232 ], [ 13, %if.then228 ]
  store i32 %storemerge47, ptr %BitsAvail, align 4
  br label %do.end245

do.end245:                                        ; preds = %for.cond204, %if.else217, %if.end241, %if.end216
  %137 = load i64, ptr %BitAcc, align 8
  %and246 = and i64 %137, 8191
  %add.ptr247 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %and246
  store ptr %add.ptr247, ptr %TabEnt, align 8
  %138 = load ptr, ptr %TabEnt, align 8
  %Width249 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %138, i64 0, i32 1
  %139 = load i8, ptr %Width249, align 1
  %conv250 = zext i8 %139 to i32
  %140 = load i32, ptr %BitsAvail, align 4
  %sub251 = sub nsw i32 %140, %conv250
  store i32 %sub251, ptr %BitsAvail, align 4
  %141 = load ptr, ptr %TabEnt, align 8
  %Width252 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %141, i64 0, i32 1
  %142 = load i8, ptr %Width252, align 1
  %143 = load i64, ptr %BitAcc, align 8
  %sh_prom254 = zext i8 %142 to i64
  %shr255 = lshr i64 %143, %sh_prom254
  store i64 %shr255, ptr %BitAcc, align 8
  %144 = load ptr, ptr %TabEnt, align 8
  %145 = load i8, ptr %144, align 8
  switch i8 %145, label %sw.default281 [
    i8 12, label %sw.bb260
    i8 8, label %do.body262
    i8 10, label %sw.bb272
    i8 11, label %sw.bb272
  ]

sw.bb260:                                         ; preds = %do.end245
  store i32 1, ptr %EOLcnt, align 4
  br label %do.body360

do.body262:                                       ; preds = %do.end245
  %146 = load i32, ptr %RunLength, align 4
  %conv263 = sext i32 %146 to i64
  %147 = load ptr, ptr %TabEnt, align 8
  %Param264 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %147, i64 0, i32 2
  %148 = load i64, ptr %Param264, align 8
  %add265 = add i64 %148, %conv263
  %149 = load ptr, ptr %pa, align 8
  %incdec.ptr266 = getelementptr inbounds i64, ptr %149, i64 1
  store ptr %incdec.ptr266, ptr %pa, align 8
  store i64 %add265, ptr %149, align 8
  %150 = load ptr, ptr %TabEnt, align 8
  %Param267 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %150, i64 0, i32 2
  %151 = load i64, ptr %Param267, align 8
  %152 = load i32, ptr %a0, align 4
  %153 = trunc i64 %151 to i32
  %conv270 = add i32 %152, %153
  store i32 %conv270, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %154 = load i32, ptr %a0, align 4
  %155 = load i32, ptr %lastx, align 4
  %cmp284.not = icmp slt i32 %154, %155
  br i1 %cmp284.not, label %for.cond125, label %do.body360

sw.bb272:                                         ; preds = %do.end245, %do.end245
  %156 = load ptr, ptr %TabEnt, align 8
  %Param273 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %156, i64 0, i32 2
  %157 = load i64, ptr %Param273, align 8
  %158 = load i32, ptr %a0, align 4
  %159 = trunc i64 %157 to i32
  %conv276 = add i32 %158, %159
  store i32 %conv276, ptr %a0, align 4
  %160 = load ptr, ptr %TabEnt, align 8
  %Param277 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %160, i64 0, i32 2
  %161 = load i64, ptr %Param277, align 8
  %162 = load i32, ptr %RunLength, align 4
  %163 = trunc i64 %161 to i32
  %conv280 = add i32 %162, %163
  store i32 %conv280, ptr %RunLength, align 4
  br label %for.cond204

sw.default281:                                    ; preds = %do.end245
  %164 = load ptr, ptr %tif.addr, align 8
  %165 = load i32, ptr %a0, align 4
  %conv282 = sext i32 %165 to i64
  call void @Fax3Unexpected(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef %164, i64 noundef %conv282)
  br label %do.body360

eof1d:                                            ; preds = %if.then212, %if.then134
  %166 = load ptr, ptr %tif.addr, align 8
  %167 = load i32, ptr %a0, align 4
  %conv288 = sext i32 %167 to i64
  call void @Fax3PrematureEOF(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef %166, i64 noundef %conv288)
  %168 = load i32, ptr %RunLength, align 4
  %tobool290.not = icmp eq i32 %168, 0
  br i1 %tobool290.not, label %if.end298, label %do.body292

do.body292:                                       ; preds = %eof1d
  %169 = load i32, ptr %RunLength, align 4
  %conv294 = sext i32 %169 to i64
  %170 = load ptr, ptr %pa, align 8
  %incdec.ptr295 = getelementptr inbounds i64, ptr %170, i64 1
  store ptr %incdec.ptr295, ptr %pa, align 8
  store i64 %conv294, ptr %170, align 8
  store i32 0, ptr %RunLength, align 4
  br label %if.end298

if.end298:                                        ; preds = %do.body292, %eof1d
  %171 = load i32, ptr %a0, align 4
  %172 = load i32, ptr %lastx, align 4
  %cmp299.not = icmp eq i32 %171, %172
  br i1 %cmp299.not, label %EOF2Da, label %if.then301

if.then301:                                       ; preds = %if.end298
  %173 = load ptr, ptr %tif.addr, align 8
  %174 = load i32, ptr %a0, align 4
  %conv302 = sext i32 %174 to i64
  %175 = load i32, ptr %lastx, align 4
  %conv303 = sext i32 %175 to i64
  call void @Fax3BadLength(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef %173, i64 noundef %conv302, i64 noundef %conv303)
  br label %while.cond304

while.cond304:                                    ; preds = %while.body309, %if.then301
  %176 = load i32, ptr %a0, align 4
  %177 = load i32, ptr %lastx, align 4
  %cmp305 = icmp sgt i32 %176, %177
  %178 = load ptr, ptr %pa, align 8
  %179 = load ptr, ptr %thisrun, align 8
  %cmp307 = icmp ugt ptr %178, %179
  %180 = select i1 %cmp305, i1 %cmp307, i1 false
  br i1 %180, label %while.body309, label %while.end314

while.body309:                                    ; preds = %while.cond304
  %181 = load ptr, ptr %pa, align 8
  %incdec.ptr310 = getelementptr inbounds i64, ptr %181, i64 -1
  store ptr %incdec.ptr310, ptr %pa, align 8
  %182 = load i64, ptr %incdec.ptr310, align 8
  %183 = load i32, ptr %a0, align 4
  %184 = trunc i64 %182 to i32
  %conv313 = sub i32 %183, %184
  store i32 %conv313, ptr %a0, align 4
  br label %while.cond304, !llvm.loop !33

while.end314:                                     ; preds = %while.cond304
  %185 = load i32, ptr %a0, align 4
  %186 = load i32, ptr %lastx, align 4
  %cmp315 = icmp slt i32 %185, %186
  br i1 %cmp315, label %if.then317, label %if.else340

if.then317:                                       ; preds = %while.end314
  %187 = load i32, ptr %a0, align 4
  %cmp318 = icmp slt i32 %187, 0
  br i1 %cmp318, label %if.then320, label %if.end321

if.then320:                                       ; preds = %if.then317
  store i32 0, ptr %a0, align 4
  br label %if.end321

if.end321:                                        ; preds = %if.then320, %if.then317
  %188 = load ptr, ptr %pa, align 8
  %189 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %188 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %189 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %190 = and i64 %sub.ptr.sub, 8
  %tobool323.not = icmp eq i64 %190, 0
  br i1 %tobool323.not, label %do.body332, label %do.body325

do.body325:                                       ; preds = %if.end321
  %191 = load i32, ptr %RunLength, align 4
  %conv327 = sext i32 %191 to i64
  %192 = load ptr, ptr %pa, align 8
  %incdec.ptr328 = getelementptr inbounds i64, ptr %192, i64 1
  store ptr %incdec.ptr328, ptr %pa, align 8
  store i64 %conv327, ptr %192, align 8
  store i32 0, ptr %RunLength, align 4
  br label %do.body332

do.body332:                                       ; preds = %if.end321, %do.body325
  %193 = load i32, ptr %RunLength, align 4
  %194 = load i32, ptr %lastx, align 4
  %195 = load i32, ptr %a0, align 4
  %sub333 = sub nsw i32 %194, %195
  %add334 = add nsw i32 %193, %sub333
  %conv335 = sext i32 %add334 to i64
  %196 = load ptr, ptr %pa, align 8
  %incdec.ptr336 = getelementptr inbounds i64, ptr %196, i64 1
  store ptr %incdec.ptr336, ptr %pa, align 8
  store i64 %conv335, ptr %196, align 8
  %197 = load i32, ptr %lastx, align 4
  store i32 %197, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %EOF2Da

if.else340:                                       ; preds = %while.end314
  %198 = load i32, ptr %a0, align 4
  %199 = load i32, ptr %lastx, align 4
  %cmp341 = icmp sgt i32 %198, %199
  br i1 %cmp341, label %do.body344, label %EOF2Da

do.body344:                                       ; preds = %if.else340
  %200 = load i32, ptr %RunLength, align 4
  %201 = load i32, ptr %lastx, align 4
  %add345 = add nsw i32 %200, %201
  %conv346 = sext i32 %add345 to i64
  %202 = load ptr, ptr %pa, align 8
  %incdec.ptr347 = getelementptr inbounds i64, ptr %202, i64 1
  store ptr %incdec.ptr347, ptr %pa, align 8
  store i64 %conv346, ptr %202, align 8
  %203 = load i32, ptr %lastx, align 4
  %204 = load i32, ptr %a0, align 4
  %add348 = add nsw i32 %204, %203
  store i32 %add348, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %205 = load i32, ptr %RunLength, align 4
  %conv352 = sext i32 %205 to i64
  %206 = load ptr, ptr %pa, align 8
  %incdec.ptr353 = getelementptr inbounds i64, ptr %206, i64 1
  store ptr %incdec.ptr353, ptr %pa, align 8
  store i64 %conv352, ptr %206, align 8
  store i32 0, ptr %RunLength, align 4
  br label %EOF2Da

do.body360:                                       ; preds = %sw.bb, %sw.default, %sw.bb260, %sw.default281, %do.body181, %do.body262
  %207 = load i32, ptr %RunLength, align 4
  %tobool361.not = icmp eq i32 %207, 0
  br i1 %tobool361.not, label %if.end369, label %do.body363

do.body363:                                       ; preds = %do.body360
  %208 = load i32, ptr %RunLength, align 4
  %conv365 = sext i32 %208 to i64
  %209 = load ptr, ptr %pa, align 8
  %incdec.ptr366 = getelementptr inbounds i64, ptr %209, i64 1
  store ptr %incdec.ptr366, ptr %pa, align 8
  store i64 %conv365, ptr %209, align 8
  store i32 0, ptr %RunLength, align 4
  br label %if.end369

if.end369:                                        ; preds = %do.body363, %do.body360
  %210 = load i32, ptr %a0, align 4
  %211 = load i32, ptr %lastx, align 4
  %cmp370.not = icmp eq i32 %210, %211
  br i1 %cmp370.not, label %if.end1224, label %if.then372

if.then372:                                       ; preds = %if.end369
  %212 = load ptr, ptr %tif.addr, align 8
  %213 = load i32, ptr %a0, align 4
  %conv373 = sext i32 %213 to i64
  %214 = load i32, ptr %lastx, align 4
  %conv374 = sext i32 %214 to i64
  call void @Fax3BadLength(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef %212, i64 noundef %conv373, i64 noundef %conv374)
  br label %while.cond375

while.cond375:                                    ; preds = %while.body382, %if.then372
  %215 = load i32, ptr %a0, align 4
  %216 = load i32, ptr %lastx, align 4
  %cmp376 = icmp sgt i32 %215, %216
  %217 = load ptr, ptr %pa, align 8
  %218 = load ptr, ptr %thisrun, align 8
  %cmp379 = icmp ugt ptr %217, %218
  %219 = select i1 %cmp376, i1 %cmp379, i1 false
  br i1 %219, label %while.body382, label %while.end387

while.body382:                                    ; preds = %while.cond375
  %220 = load ptr, ptr %pa, align 8
  %incdec.ptr383 = getelementptr inbounds i64, ptr %220, i64 -1
  store ptr %incdec.ptr383, ptr %pa, align 8
  %221 = load i64, ptr %incdec.ptr383, align 8
  %222 = load i32, ptr %a0, align 4
  %223 = trunc i64 %221 to i32
  %conv386 = sub i32 %222, %223
  store i32 %conv386, ptr %a0, align 4
  br label %while.cond375, !llvm.loop !34

while.end387:                                     ; preds = %while.cond375
  %224 = load i32, ptr %a0, align 4
  %225 = load i32, ptr %lastx, align 4
  %cmp388 = icmp slt i32 %224, %225
  br i1 %cmp388, label %if.then390, label %if.else417

if.then390:                                       ; preds = %while.end387
  %226 = load i32, ptr %a0, align 4
  %cmp391 = icmp slt i32 %226, 0
  br i1 %cmp391, label %if.then393, label %if.end394

if.then393:                                       ; preds = %if.then390
  store i32 0, ptr %a0, align 4
  br label %if.end394

if.end394:                                        ; preds = %if.then393, %if.then390
  %227 = load ptr, ptr %pa, align 8
  %228 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast395 = ptrtoint ptr %227 to i64
  %sub.ptr.rhs.cast396 = ptrtoint ptr %228 to i64
  %sub.ptr.sub397 = sub i64 %sub.ptr.lhs.cast395, %sub.ptr.rhs.cast396
  %229 = and i64 %sub.ptr.sub397, 8
  %tobool400.not = icmp eq i64 %229, 0
  br i1 %tobool400.not, label %do.body409, label %do.body402

do.body402:                                       ; preds = %if.end394
  %230 = load i32, ptr %RunLength, align 4
  %conv404 = sext i32 %230 to i64
  %231 = load ptr, ptr %pa, align 8
  %incdec.ptr405 = getelementptr inbounds i64, ptr %231, i64 1
  store ptr %incdec.ptr405, ptr %pa, align 8
  store i64 %conv404, ptr %231, align 8
  store i32 0, ptr %RunLength, align 4
  br label %do.body409

do.body409:                                       ; preds = %if.end394, %do.body402
  %232 = load i32, ptr %RunLength, align 4
  %233 = load i32, ptr %lastx, align 4
  %234 = load i32, ptr %a0, align 4
  %sub410 = sub nsw i32 %233, %234
  %add411 = add nsw i32 %232, %sub410
  %conv412 = sext i32 %add411 to i64
  %235 = load ptr, ptr %pa, align 8
  %incdec.ptr413 = getelementptr inbounds i64, ptr %235, i64 1
  store ptr %incdec.ptr413, ptr %pa, align 8
  store i64 %conv412, ptr %235, align 8
  %236 = load i32, ptr %lastx, align 4
  store i32 %236, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %if.end1224

if.else417:                                       ; preds = %while.end387
  %237 = load i32, ptr %a0, align 4
  %238 = load i32, ptr %lastx, align 4
  %cmp418 = icmp sgt i32 %237, %238
  br i1 %cmp418, label %do.body421, label %if.end1224

do.body421:                                       ; preds = %if.else417
  %239 = load i32, ptr %RunLength, align 4
  %240 = load i32, ptr %lastx, align 4
  %add422 = add nsw i32 %239, %240
  %conv423 = sext i32 %add422 to i64
  %241 = load ptr, ptr %pa, align 8
  %incdec.ptr424 = getelementptr inbounds i64, ptr %241, i64 1
  store ptr %incdec.ptr424, ptr %pa, align 8
  store i64 %conv423, ptr %241, align 8
  %242 = load i32, ptr %lastx, align 4
  %243 = load i32, ptr %a0, align 4
  %add425 = add nsw i32 %243, %242
  store i32 %add425, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %244 = load i32, ptr %RunLength, align 4
  %conv429 = sext i32 %244 to i64
  %245 = load ptr, ptr %pa, align 8
  %incdec.ptr430 = getelementptr inbounds i64, ptr %245, i64 1
  store ptr %incdec.ptr430, ptr %pa, align 8
  store i64 %conv429, ptr %245, align 8
  store i32 0, ptr %RunLength, align 4
  br label %if.end1224

while.cond440:                                    ; preds = %do.end113, %sw.epilog1099
  %246 = load i32, ptr %a0, align 4
  %247 = load i32, ptr %lastx, align 4
  %cmp441 = icmp slt i32 %246, %247
  br i1 %cmp441, label %do.body445, label %while.end1100

do.body445:                                       ; preds = %while.cond440
  %248 = load i32, ptr %BitsAvail, align 4
  %cmp446 = icmp slt i32 %248, 7
  br i1 %cmp446, label %if.then448, label %do.end467

if.then448:                                       ; preds = %do.body445
  %249 = load ptr, ptr %cp, align 8
  %250 = load ptr, ptr %ep, align 8
  %cmp449.not = icmp ult ptr %249, %250
  br i1 %cmp449.not, label %if.else456, label %if.then451

if.then451:                                       ; preds = %if.then448
  %251 = load i32, ptr %BitsAvail, align 4
  %cmp452 = icmp eq i32 %251, 0
  br i1 %cmp452, label %eof2d, label %if.end465

if.else456:                                       ; preds = %if.then448
  %252 = load ptr, ptr %bitmap, align 8
  %253 = load ptr, ptr %cp, align 8
  %incdec.ptr457 = getelementptr inbounds i8, ptr %253, i64 1
  store ptr %incdec.ptr457, ptr %cp, align 8
  %254 = load i8, ptr %253, align 1
  %idxprom458 = zext i8 %254 to i64
  %arrayidx459 = getelementptr inbounds i8, ptr %252, i64 %idxprom458
  %255 = load i8, ptr %arrayidx459, align 1
  %conv460 = zext i8 %255 to i64
  %256 = load i32, ptr %BitsAvail, align 4
  %sh_prom461 = zext i32 %256 to i64
  %shl462 = shl i64 %conv460, %sh_prom461
  %257 = load i64, ptr %BitAcc, align 8
  %or463 = or i64 %257, %shl462
  store i64 %or463, ptr %BitAcc, align 8
  %add464 = add nsw i32 %256, 8
  br label %if.end465

if.end465:                                        ; preds = %if.then451, %if.else456
  %storemerge38 = phi i32 [ %add464, %if.else456 ], [ 7, %if.then451 ]
  store i32 %storemerge38, ptr %BitsAvail, align 4
  br label %do.end467

do.end467:                                        ; preds = %do.body445, %if.end465
  %258 = load i64, ptr %BitAcc, align 8
  %and468 = and i64 %258, 127
  %add.ptr469 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxMainTable, i64 %and468
  store ptr %add.ptr469, ptr %TabEnt, align 8
  %259 = load ptr, ptr %TabEnt, align 8
  %Width471 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %259, i64 0, i32 1
  %260 = load i8, ptr %Width471, align 1
  %conv472 = zext i8 %260 to i32
  %261 = load i32, ptr %BitsAvail, align 4
  %sub473 = sub nsw i32 %261, %conv472
  store i32 %sub473, ptr %BitsAvail, align 4
  %262 = load ptr, ptr %TabEnt, align 8
  %Width474 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %262, i64 0, i32 1
  %263 = load i8, ptr %Width474, align 1
  %264 = load i64, ptr %BitAcc, align 8
  %sh_prom476 = zext i8 %263 to i64
  %shr477 = lshr i64 %264, %sh_prom476
  store i64 %shr477, ptr %BitAcc, align 8
  %265 = load ptr, ptr %TabEnt, align 8
  %266 = load i8, ptr %265, align 8
  switch i8 %266, label %badMain2d [
    i8 1, label %do.body483
    i8 2, label %sw.bb515
    i8 3, label %do.body860
    i8 4, label %do.body895
    i8 5, label %do.body938
    i8 6, label %sw.bb980
    i8 12, label %sw.bb985
  ]

do.body483:                                       ; preds = %do.end467
  %267 = load ptr, ptr %pa, align 8
  %268 = load ptr, ptr %thisrun, align 8
  %cmp484.not = icmp eq ptr %267, %268
  br i1 %cmp484.not, label %do.end504, label %while.cond487

while.cond487:                                    ; preds = %do.body483, %while.body494
  %269 = load i32, ptr %b1, align 4
  %270 = load i32, ptr %a0, align 4
  %cmp488.not = icmp sgt i32 %269, %270
  %271 = load i32, ptr %b1, align 4
  %272 = load i32, ptr %lastx, align 4
  %cmp491 = icmp slt i32 %271, %272
  %273 = select i1 %cmp488.not, i1 false, i1 %cmp491
  br i1 %273, label %while.body494, label %do.end504

while.body494:                                    ; preds = %while.cond487
  %274 = load ptr, ptr %pb, align 8
  %275 = load i64, ptr %274, align 8
  %arrayidx496 = getelementptr inbounds i64, ptr %274, i64 1
  %276 = load i64, ptr %arrayidx496, align 8
  %add497 = add i64 %275, %276
  %277 = load i32, ptr %b1, align 4
  %278 = trunc i64 %add497 to i32
  %conv500 = add i32 %277, %278
  store i32 %conv500, ptr %b1, align 4
  %279 = load ptr, ptr %pb, align 8
  %add.ptr501 = getelementptr inbounds i64, ptr %279, i64 2
  store ptr %add.ptr501, ptr %pb, align 8
  br label %while.cond487, !llvm.loop !35

do.end504:                                        ; preds = %do.body483, %while.cond487
  %280 = load ptr, ptr %pb, align 8
  %incdec.ptr505 = getelementptr inbounds i64, ptr %280, i64 1
  store ptr %incdec.ptr505, ptr %pb, align 8
  %281 = load i64, ptr %280, align 8
  %282 = load i32, ptr %b1, align 4
  %283 = trunc i64 %281 to i32
  %conv508 = add i32 %282, %283
  store i32 %conv508, ptr %b1, align 4
  %284 = load i32, ptr %a0, align 4
  %sub509 = sub nsw i32 %conv508, %284
  %285 = load i32, ptr %RunLength, align 4
  %add510 = add nsw i32 %285, %sub509
  store i32 %add510, ptr %RunLength, align 4
  store i32 %conv508, ptr %a0, align 4
  %286 = load ptr, ptr %pb, align 8
  %incdec.ptr511 = getelementptr inbounds i64, ptr %286, i64 1
  store ptr %incdec.ptr511, ptr %pb, align 8
  %287 = load i64, ptr %286, align 8
  %288 = load i32, ptr %b1, align 4
  %289 = trunc i64 %287 to i32
  %conv514 = add i32 %288, %289
  store i32 %conv514, ptr %b1, align 4
  br label %sw.epilog1099

sw.bb515:                                         ; preds = %do.end467
  %290 = load ptr, ptr %pa, align 8
  %291 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast516 = ptrtoint ptr %290 to i64
  %sub.ptr.rhs.cast517 = ptrtoint ptr %291 to i64
  %sub.ptr.sub518 = sub i64 %sub.ptr.lhs.cast516, %sub.ptr.rhs.cast517
  %292 = and i64 %sub.ptr.sub518, 8
  %tobool521.not = icmp eq i64 %292, 0
  br i1 %tobool521.not, label %for.cond680, label %for.cond523

for.cond523:                                      ; preds = %sw.bb515, %sw.bb590
  %293 = load i32, ptr %BitsAvail, align 4
  %cmp526 = icmp slt i32 %293, 13
  br i1 %cmp526, label %if.then528, label %do.end564

if.then528:                                       ; preds = %for.cond523
  %294 = load ptr, ptr %cp, align 8
  %295 = load ptr, ptr %ep, align 8
  %cmp529.not = icmp ult ptr %294, %295
  br i1 %cmp529.not, label %if.else536, label %if.then531

if.then531:                                       ; preds = %if.then528
  %296 = load i32, ptr %BitsAvail, align 4
  %cmp532 = icmp eq i32 %296, 0
  br i1 %cmp532, label %eof2d, label %if.end535

if.end535:                                        ; preds = %if.then531
  store i32 13, ptr %BitsAvail, align 4
  br label %do.end564

if.else536:                                       ; preds = %if.then528
  %297 = load ptr, ptr %bitmap, align 8
  %298 = load ptr, ptr %cp, align 8
  %incdec.ptr537 = getelementptr inbounds i8, ptr %298, i64 1
  store ptr %incdec.ptr537, ptr %cp, align 8
  %299 = load i8, ptr %298, align 1
  %idxprom538 = zext i8 %299 to i64
  %arrayidx539 = getelementptr inbounds i8, ptr %297, i64 %idxprom538
  %300 = load i8, ptr %arrayidx539, align 1
  %conv540 = zext i8 %300 to i64
  %301 = load i32, ptr %BitsAvail, align 4
  %sh_prom541 = zext i32 %301 to i64
  %shl542 = shl i64 %conv540, %sh_prom541
  %302 = load i64, ptr %BitAcc, align 8
  %or543 = or i64 %302, %shl542
  store i64 %or543, ptr %BitAcc, align 8
  %add544 = add nsw i32 %301, 8
  store i32 %add544, ptr %BitsAvail, align 4
  %cmp545 = icmp slt i32 %301, 5
  br i1 %cmp545, label %if.then547, label %do.end564

if.then547:                                       ; preds = %if.else536
  %303 = load ptr, ptr %cp, align 8
  %304 = load ptr, ptr %ep, align 8
  %cmp548.not = icmp ult ptr %303, %304
  br i1 %cmp548.not, label %if.else551, label %if.end560

if.else551:                                       ; preds = %if.then547
  %305 = load ptr, ptr %bitmap, align 8
  %306 = load ptr, ptr %cp, align 8
  %incdec.ptr552 = getelementptr inbounds i8, ptr %306, i64 1
  store ptr %incdec.ptr552, ptr %cp, align 8
  %307 = load i8, ptr %306, align 1
  %idxprom553 = zext i8 %307 to i64
  %arrayidx554 = getelementptr inbounds i8, ptr %305, i64 %idxprom553
  %308 = load i8, ptr %arrayidx554, align 1
  %conv555 = zext i8 %308 to i64
  %309 = load i32, ptr %BitsAvail, align 4
  %sh_prom556 = zext i32 %309 to i64
  %shl557 = shl i64 %conv555, %sh_prom556
  %310 = load i64, ptr %BitAcc, align 8
  %or558 = or i64 %310, %shl557
  store i64 %or558, ptr %BitAcc, align 8
  %add559 = add nsw i32 %309, 8
  br label %if.end560

if.end560:                                        ; preds = %if.then547, %if.else551
  %storemerge34 = phi i32 [ %add559, %if.else551 ], [ 13, %if.then547 ]
  store i32 %storemerge34, ptr %BitsAvail, align 4
  br label %do.end564

do.end564:                                        ; preds = %for.cond523, %if.else536, %if.end560, %if.end535
  %311 = load i64, ptr %BitAcc, align 8
  %and565 = and i64 %311, 8191
  %add.ptr566 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %and565
  store ptr %add.ptr566, ptr %TabEnt, align 8
  %312 = load ptr, ptr %TabEnt, align 8
  %Width568 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %312, i64 0, i32 1
  %313 = load i8, ptr %Width568, align 1
  %conv569 = zext i8 %313 to i32
  %314 = load i32, ptr %BitsAvail, align 4
  %sub570 = sub nsw i32 %314, %conv569
  store i32 %sub570, ptr %BitsAvail, align 4
  %315 = load ptr, ptr %TabEnt, align 8
  %Width571 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %315, i64 0, i32 1
  %316 = load i8, ptr %Width571, align 1
  %317 = load i64, ptr %BitAcc, align 8
  %sh_prom573 = zext i8 %316 to i64
  %shr574 = lshr i64 %317, %sh_prom573
  store i64 %shr574, ptr %BitAcc, align 8
  %318 = load ptr, ptr %TabEnt, align 8
  %319 = load i8, ptr %318, align 8
  switch i8 %319, label %badBlack2d [
    i8 8, label %do.body580
    i8 10, label %sw.bb590
    i8 11, label %sw.bb590
  ]

do.body580:                                       ; preds = %do.end564
  %320 = load i32, ptr %RunLength, align 4
  %conv581 = sext i32 %320 to i64
  %321 = load ptr, ptr %TabEnt, align 8
  %Param582 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %321, i64 0, i32 2
  %322 = load i64, ptr %Param582, align 8
  %add583 = add i64 %322, %conv581
  %323 = load ptr, ptr %pa, align 8
  %incdec.ptr584 = getelementptr inbounds i64, ptr %323, i64 1
  store ptr %incdec.ptr584, ptr %pa, align 8
  store i64 %add583, ptr %323, align 8
  %324 = load ptr, ptr %TabEnt, align 8
  %Param585 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %324, i64 0, i32 2
  %325 = load i64, ptr %Param585, align 8
  %326 = load i32, ptr %a0, align 4
  %327 = trunc i64 %325 to i32
  %conv588 = add i32 %326, %327
  store i32 %conv588, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %for.cond601

sw.bb590:                                         ; preds = %do.end564, %do.end564
  %328 = load ptr, ptr %TabEnt, align 8
  %Param591 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %328, i64 0, i32 2
  %329 = load i64, ptr %Param591, align 8
  %330 = load i32, ptr %a0, align 4
  %331 = trunc i64 %329 to i32
  %conv594 = add i32 %330, %331
  store i32 %conv594, ptr %a0, align 4
  %332 = load ptr, ptr %TabEnt, align 8
  %Param595 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %332, i64 0, i32 2
  %333 = load i64, ptr %Param595, align 8
  %334 = load i32, ptr %RunLength, align 4
  %335 = trunc i64 %333 to i32
  %conv598 = add i32 %334, %335
  store i32 %conv598, ptr %RunLength, align 4
  br label %for.cond523

for.cond601:                                      ; preds = %sw.bb668, %do.body580
  %336 = load i32, ptr %BitsAvail, align 4
  %cmp604 = icmp slt i32 %336, 12
  br i1 %cmp604, label %if.then606, label %do.end642

if.then606:                                       ; preds = %for.cond601
  %337 = load ptr, ptr %cp, align 8
  %338 = load ptr, ptr %ep, align 8
  %cmp607.not = icmp ult ptr %337, %338
  br i1 %cmp607.not, label %if.else614, label %if.then609

if.then609:                                       ; preds = %if.then606
  %339 = load i32, ptr %BitsAvail, align 4
  %cmp610 = icmp eq i32 %339, 0
  br i1 %cmp610, label %eof2d, label %if.end613

if.end613:                                        ; preds = %if.then609
  store i32 12, ptr %BitsAvail, align 4
  br label %do.end642

if.else614:                                       ; preds = %if.then606
  %340 = load ptr, ptr %bitmap, align 8
  %341 = load ptr, ptr %cp, align 8
  %incdec.ptr615 = getelementptr inbounds i8, ptr %341, i64 1
  store ptr %incdec.ptr615, ptr %cp, align 8
  %342 = load i8, ptr %341, align 1
  %idxprom616 = zext i8 %342 to i64
  %arrayidx617 = getelementptr inbounds i8, ptr %340, i64 %idxprom616
  %343 = load i8, ptr %arrayidx617, align 1
  %conv618 = zext i8 %343 to i64
  %344 = load i32, ptr %BitsAvail, align 4
  %sh_prom619 = zext i32 %344 to i64
  %shl620 = shl i64 %conv618, %sh_prom619
  %345 = load i64, ptr %BitAcc, align 8
  %or621 = or i64 %345, %shl620
  store i64 %or621, ptr %BitAcc, align 8
  %add622 = add nsw i32 %344, 8
  store i32 %add622, ptr %BitsAvail, align 4
  %cmp623 = icmp slt i32 %344, 4
  br i1 %cmp623, label %if.then625, label %do.end642

if.then625:                                       ; preds = %if.else614
  %346 = load ptr, ptr %cp, align 8
  %347 = load ptr, ptr %ep, align 8
  %cmp626.not = icmp ult ptr %346, %347
  br i1 %cmp626.not, label %if.else629, label %if.end638

if.else629:                                       ; preds = %if.then625
  %348 = load ptr, ptr %bitmap, align 8
  %349 = load ptr, ptr %cp, align 8
  %incdec.ptr630 = getelementptr inbounds i8, ptr %349, i64 1
  store ptr %incdec.ptr630, ptr %cp, align 8
  %350 = load i8, ptr %349, align 1
  %idxprom631 = zext i8 %350 to i64
  %arrayidx632 = getelementptr inbounds i8, ptr %348, i64 %idxprom631
  %351 = load i8, ptr %arrayidx632, align 1
  %conv633 = zext i8 %351 to i64
  %352 = load i32, ptr %BitsAvail, align 4
  %sh_prom634 = zext i32 %352 to i64
  %shl635 = shl i64 %conv633, %sh_prom634
  %353 = load i64, ptr %BitAcc, align 8
  %or636 = or i64 %353, %shl635
  store i64 %or636, ptr %BitAcc, align 8
  %add637 = add nsw i32 %352, 8
  br label %if.end638

if.end638:                                        ; preds = %if.then625, %if.else629
  %storemerge33 = phi i32 [ %add637, %if.else629 ], [ 12, %if.then625 ]
  store i32 %storemerge33, ptr %BitsAvail, align 4
  br label %do.end642

do.end642:                                        ; preds = %for.cond601, %if.else614, %if.end638, %if.end613
  %354 = load i64, ptr %BitAcc, align 8
  %and643 = and i64 %354, 4095
  %add.ptr644 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %and643
  store ptr %add.ptr644, ptr %TabEnt, align 8
  %355 = load ptr, ptr %TabEnt, align 8
  %Width646 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %355, i64 0, i32 1
  %356 = load i8, ptr %Width646, align 1
  %conv647 = zext i8 %356 to i32
  %357 = load i32, ptr %BitsAvail, align 4
  %sub648 = sub nsw i32 %357, %conv647
  store i32 %sub648, ptr %BitsAvail, align 4
  %358 = load ptr, ptr %TabEnt, align 8
  %Width649 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %358, i64 0, i32 1
  %359 = load i8, ptr %Width649, align 1
  %360 = load i64, ptr %BitAcc, align 8
  %sh_prom651 = zext i8 %359 to i64
  %shr652 = lshr i64 %360, %sh_prom651
  store i64 %shr652, ptr %BitAcc, align 8
  %361 = load ptr, ptr %TabEnt, align 8
  %362 = load i8, ptr %361, align 8
  switch i8 %362, label %badWhite2d [
    i8 7, label %do.body658
    i8 9, label %sw.bb668
    i8 11, label %sw.bb668
  ]

do.body658:                                       ; preds = %do.end642
  %363 = load i32, ptr %RunLength, align 4
  %conv659 = sext i32 %363 to i64
  %364 = load ptr, ptr %TabEnt, align 8
  %Param660 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %364, i64 0, i32 2
  %365 = load i64, ptr %Param660, align 8
  %add661 = add i64 %365, %conv659
  %366 = load ptr, ptr %pa, align 8
  %incdec.ptr662 = getelementptr inbounds i64, ptr %366, i64 1
  store ptr %incdec.ptr662, ptr %pa, align 8
  store i64 %add661, ptr %366, align 8
  %367 = load ptr, ptr %TabEnt, align 8
  %Param663 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %367, i64 0, i32 2
  %368 = load i64, ptr %Param663, align 8
  %369 = load i32, ptr %a0, align 4
  %370 = trunc i64 %368 to i32
  %conv666 = add i32 %369, %370
  store i32 %conv666, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.body837

sw.bb668:                                         ; preds = %do.end642, %do.end642
  %371 = load ptr, ptr %TabEnt, align 8
  %Param669 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %371, i64 0, i32 2
  %372 = load i64, ptr %Param669, align 8
  %373 = load i32, ptr %a0, align 4
  %374 = trunc i64 %372 to i32
  %conv672 = add i32 %373, %374
  store i32 %conv672, ptr %a0, align 4
  %375 = load ptr, ptr %TabEnt, align 8
  %Param673 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %375, i64 0, i32 2
  %376 = load i64, ptr %Param673, align 8
  %377 = load i32, ptr %RunLength, align 4
  %378 = trunc i64 %376 to i32
  %conv676 = add i32 %377, %378
  store i32 %conv676, ptr %RunLength, align 4
  br label %for.cond601

for.cond680:                                      ; preds = %sw.bb515, %sw.bb747
  %379 = load i32, ptr %BitsAvail, align 4
  %cmp683 = icmp slt i32 %379, 12
  br i1 %cmp683, label %if.then685, label %do.end721

if.then685:                                       ; preds = %for.cond680
  %380 = load ptr, ptr %cp, align 8
  %381 = load ptr, ptr %ep, align 8
  %cmp686.not = icmp ult ptr %380, %381
  br i1 %cmp686.not, label %if.else693, label %if.then688

if.then688:                                       ; preds = %if.then685
  %382 = load i32, ptr %BitsAvail, align 4
  %cmp689 = icmp eq i32 %382, 0
  br i1 %cmp689, label %eof2d, label %if.end692

if.end692:                                        ; preds = %if.then688
  store i32 12, ptr %BitsAvail, align 4
  br label %do.end721

if.else693:                                       ; preds = %if.then685
  %383 = load ptr, ptr %bitmap, align 8
  %384 = load ptr, ptr %cp, align 8
  %incdec.ptr694 = getelementptr inbounds i8, ptr %384, i64 1
  store ptr %incdec.ptr694, ptr %cp, align 8
  %385 = load i8, ptr %384, align 1
  %idxprom695 = zext i8 %385 to i64
  %arrayidx696 = getelementptr inbounds i8, ptr %383, i64 %idxprom695
  %386 = load i8, ptr %arrayidx696, align 1
  %conv697 = zext i8 %386 to i64
  %387 = load i32, ptr %BitsAvail, align 4
  %sh_prom698 = zext i32 %387 to i64
  %shl699 = shl i64 %conv697, %sh_prom698
  %388 = load i64, ptr %BitAcc, align 8
  %or700 = or i64 %388, %shl699
  store i64 %or700, ptr %BitAcc, align 8
  %add701 = add nsw i32 %387, 8
  store i32 %add701, ptr %BitsAvail, align 4
  %cmp702 = icmp slt i32 %387, 4
  br i1 %cmp702, label %if.then704, label %do.end721

if.then704:                                       ; preds = %if.else693
  %389 = load ptr, ptr %cp, align 8
  %390 = load ptr, ptr %ep, align 8
  %cmp705.not = icmp ult ptr %389, %390
  br i1 %cmp705.not, label %if.else708, label %if.end717

if.else708:                                       ; preds = %if.then704
  %391 = load ptr, ptr %bitmap, align 8
  %392 = load ptr, ptr %cp, align 8
  %incdec.ptr709 = getelementptr inbounds i8, ptr %392, i64 1
  store ptr %incdec.ptr709, ptr %cp, align 8
  %393 = load i8, ptr %392, align 1
  %idxprom710 = zext i8 %393 to i64
  %arrayidx711 = getelementptr inbounds i8, ptr %391, i64 %idxprom710
  %394 = load i8, ptr %arrayidx711, align 1
  %conv712 = zext i8 %394 to i64
  %395 = load i32, ptr %BitsAvail, align 4
  %sh_prom713 = zext i32 %395 to i64
  %shl714 = shl i64 %conv712, %sh_prom713
  %396 = load i64, ptr %BitAcc, align 8
  %or715 = or i64 %396, %shl714
  store i64 %or715, ptr %BitAcc, align 8
  %add716 = add nsw i32 %395, 8
  br label %if.end717

if.end717:                                        ; preds = %if.then704, %if.else708
  %storemerge26 = phi i32 [ %add716, %if.else708 ], [ 12, %if.then704 ]
  store i32 %storemerge26, ptr %BitsAvail, align 4
  br label %do.end721

do.end721:                                        ; preds = %for.cond680, %if.else693, %if.end717, %if.end692
  %397 = load i64, ptr %BitAcc, align 8
  %and722 = and i64 %397, 4095
  %add.ptr723 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %and722
  store ptr %add.ptr723, ptr %TabEnt, align 8
  %398 = load ptr, ptr %TabEnt, align 8
  %Width725 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %398, i64 0, i32 1
  %399 = load i8, ptr %Width725, align 1
  %conv726 = zext i8 %399 to i32
  %400 = load i32, ptr %BitsAvail, align 4
  %sub727 = sub nsw i32 %400, %conv726
  store i32 %sub727, ptr %BitsAvail, align 4
  %401 = load ptr, ptr %TabEnt, align 8
  %Width728 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %401, i64 0, i32 1
  %402 = load i8, ptr %Width728, align 1
  %403 = load i64, ptr %BitAcc, align 8
  %sh_prom730 = zext i8 %402 to i64
  %shr731 = lshr i64 %403, %sh_prom730
  store i64 %shr731, ptr %BitAcc, align 8
  %404 = load ptr, ptr %TabEnt, align 8
  %405 = load i8, ptr %404, align 8
  switch i8 %405, label %badWhite2d [
    i8 7, label %do.body737
    i8 9, label %sw.bb747
    i8 11, label %sw.bb747
  ]

do.body737:                                       ; preds = %do.end721
  %406 = load i32, ptr %RunLength, align 4
  %conv738 = sext i32 %406 to i64
  %407 = load ptr, ptr %TabEnt, align 8
  %Param739 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %407, i64 0, i32 2
  %408 = load i64, ptr %Param739, align 8
  %add740 = add i64 %408, %conv738
  %409 = load ptr, ptr %pa, align 8
  %incdec.ptr741 = getelementptr inbounds i64, ptr %409, i64 1
  store ptr %incdec.ptr741, ptr %pa, align 8
  store i64 %add740, ptr %409, align 8
  %410 = load ptr, ptr %TabEnt, align 8
  %Param742 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %410, i64 0, i32 2
  %411 = load i64, ptr %Param742, align 8
  %412 = load i32, ptr %a0, align 4
  %413 = trunc i64 %411 to i32
  %conv745 = add i32 %412, %413
  store i32 %conv745, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %for.cond758

sw.bb747:                                         ; preds = %do.end721, %do.end721
  %414 = load ptr, ptr %TabEnt, align 8
  %Param748 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %414, i64 0, i32 2
  %415 = load i64, ptr %Param748, align 8
  %416 = load i32, ptr %a0, align 4
  %417 = trunc i64 %415 to i32
  %conv751 = add i32 %416, %417
  store i32 %conv751, ptr %a0, align 4
  %418 = load ptr, ptr %TabEnt, align 8
  %Param752 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %418, i64 0, i32 2
  %419 = load i64, ptr %Param752, align 8
  %420 = load i32, ptr %RunLength, align 4
  %421 = trunc i64 %419 to i32
  %conv755 = add i32 %420, %421
  store i32 %conv755, ptr %RunLength, align 4
  br label %for.cond680

for.cond758:                                      ; preds = %sw.bb825, %do.body737
  %422 = load i32, ptr %BitsAvail, align 4
  %cmp761 = icmp slt i32 %422, 13
  br i1 %cmp761, label %if.then763, label %do.end799

if.then763:                                       ; preds = %for.cond758
  %423 = load ptr, ptr %cp, align 8
  %424 = load ptr, ptr %ep, align 8
  %cmp764.not = icmp ult ptr %423, %424
  br i1 %cmp764.not, label %if.else771, label %if.then766

if.then766:                                       ; preds = %if.then763
  %425 = load i32, ptr %BitsAvail, align 4
  %cmp767 = icmp eq i32 %425, 0
  br i1 %cmp767, label %eof2d, label %if.end770

if.end770:                                        ; preds = %if.then766
  store i32 13, ptr %BitsAvail, align 4
  br label %do.end799

if.else771:                                       ; preds = %if.then763
  %426 = load ptr, ptr %bitmap, align 8
  %427 = load ptr, ptr %cp, align 8
  %incdec.ptr772 = getelementptr inbounds i8, ptr %427, i64 1
  store ptr %incdec.ptr772, ptr %cp, align 8
  %428 = load i8, ptr %427, align 1
  %idxprom773 = zext i8 %428 to i64
  %arrayidx774 = getelementptr inbounds i8, ptr %426, i64 %idxprom773
  %429 = load i8, ptr %arrayidx774, align 1
  %conv775 = zext i8 %429 to i64
  %430 = load i32, ptr %BitsAvail, align 4
  %sh_prom776 = zext i32 %430 to i64
  %shl777 = shl i64 %conv775, %sh_prom776
  %431 = load i64, ptr %BitAcc, align 8
  %or778 = or i64 %431, %shl777
  store i64 %or778, ptr %BitAcc, align 8
  %add779 = add nsw i32 %430, 8
  store i32 %add779, ptr %BitsAvail, align 4
  %cmp780 = icmp slt i32 %430, 5
  br i1 %cmp780, label %if.then782, label %do.end799

if.then782:                                       ; preds = %if.else771
  %432 = load ptr, ptr %cp, align 8
  %433 = load ptr, ptr %ep, align 8
  %cmp783.not = icmp ult ptr %432, %433
  br i1 %cmp783.not, label %if.else786, label %if.end795

if.else786:                                       ; preds = %if.then782
  %434 = load ptr, ptr %bitmap, align 8
  %435 = load ptr, ptr %cp, align 8
  %incdec.ptr787 = getelementptr inbounds i8, ptr %435, i64 1
  store ptr %incdec.ptr787, ptr %cp, align 8
  %436 = load i8, ptr %435, align 1
  %idxprom788 = zext i8 %436 to i64
  %arrayidx789 = getelementptr inbounds i8, ptr %434, i64 %idxprom788
  %437 = load i8, ptr %arrayidx789, align 1
  %conv790 = zext i8 %437 to i64
  %438 = load i32, ptr %BitsAvail, align 4
  %sh_prom791 = zext i32 %438 to i64
  %shl792 = shl i64 %conv790, %sh_prom791
  %439 = load i64, ptr %BitAcc, align 8
  %or793 = or i64 %439, %shl792
  store i64 %or793, ptr %BitAcc, align 8
  %add794 = add nsw i32 %438, 8
  br label %if.end795

if.end795:                                        ; preds = %if.then782, %if.else786
  %storemerge25 = phi i32 [ %add794, %if.else786 ], [ 13, %if.then782 ]
  store i32 %storemerge25, ptr %BitsAvail, align 4
  br label %do.end799

do.end799:                                        ; preds = %for.cond758, %if.else771, %if.end795, %if.end770
  %440 = load i64, ptr %BitAcc, align 8
  %and800 = and i64 %440, 8191
  %add.ptr801 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %and800
  store ptr %add.ptr801, ptr %TabEnt, align 8
  %441 = load ptr, ptr %TabEnt, align 8
  %Width803 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %441, i64 0, i32 1
  %442 = load i8, ptr %Width803, align 1
  %conv804 = zext i8 %442 to i32
  %443 = load i32, ptr %BitsAvail, align 4
  %sub805 = sub nsw i32 %443, %conv804
  store i32 %sub805, ptr %BitsAvail, align 4
  %444 = load ptr, ptr %TabEnt, align 8
  %Width806 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %444, i64 0, i32 1
  %445 = load i8, ptr %Width806, align 1
  %446 = load i64, ptr %BitAcc, align 8
  %sh_prom808 = zext i8 %445 to i64
  %shr809 = lshr i64 %446, %sh_prom808
  store i64 %shr809, ptr %BitAcc, align 8
  %447 = load ptr, ptr %TabEnt, align 8
  %448 = load i8, ptr %447, align 8
  switch i8 %448, label %badBlack2d [
    i8 8, label %do.body815
    i8 10, label %sw.bb825
    i8 11, label %sw.bb825
  ]

do.body815:                                       ; preds = %do.end799
  %449 = load i32, ptr %RunLength, align 4
  %conv816 = sext i32 %449 to i64
  %450 = load ptr, ptr %TabEnt, align 8
  %Param817 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %450, i64 0, i32 2
  %451 = load i64, ptr %Param817, align 8
  %add818 = add i64 %451, %conv816
  %452 = load ptr, ptr %pa, align 8
  %incdec.ptr819 = getelementptr inbounds i64, ptr %452, i64 1
  store ptr %incdec.ptr819, ptr %pa, align 8
  store i64 %add818, ptr %452, align 8
  %453 = load ptr, ptr %TabEnt, align 8
  %Param820 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %453, i64 0, i32 2
  %454 = load i64, ptr %Param820, align 8
  %455 = load i32, ptr %a0, align 4
  %456 = trunc i64 %454 to i32
  %conv823 = add i32 %455, %456
  store i32 %conv823, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.body837

sw.bb825:                                         ; preds = %do.end799, %do.end799
  %457 = load ptr, ptr %TabEnt, align 8
  %Param826 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %457, i64 0, i32 2
  %458 = load i64, ptr %Param826, align 8
  %459 = load i32, ptr %a0, align 4
  %460 = trunc i64 %458 to i32
  %conv829 = add i32 %459, %460
  store i32 %conv829, ptr %a0, align 4
  %461 = load ptr, ptr %TabEnt, align 8
  %Param830 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %461, i64 0, i32 2
  %462 = load i64, ptr %Param830, align 8
  %463 = load i32, ptr %RunLength, align 4
  %464 = trunc i64 %462 to i32
  %conv833 = add i32 %463, %464
  store i32 %conv833, ptr %RunLength, align 4
  br label %for.cond758

do.body837:                                       ; preds = %do.body658, %do.body815
  %465 = load ptr, ptr %pa, align 8
  %466 = load ptr, ptr %thisrun, align 8
  %cmp838.not = icmp eq ptr %465, %466
  br i1 %cmp838.not, label %sw.epilog1099, label %while.cond841

while.cond841:                                    ; preds = %do.body837, %while.body848
  %467 = load i32, ptr %b1, align 4
  %468 = load i32, ptr %a0, align 4
  %cmp842.not = icmp sgt i32 %467, %468
  %469 = load i32, ptr %b1, align 4
  %470 = load i32, ptr %lastx, align 4
  %cmp845 = icmp slt i32 %469, %470
  %471 = select i1 %cmp842.not, i1 false, i1 %cmp845
  br i1 %471, label %while.body848, label %sw.epilog1099

while.body848:                                    ; preds = %while.cond841
  %472 = load ptr, ptr %pb, align 8
  %473 = load i64, ptr %472, align 8
  %arrayidx850 = getelementptr inbounds i64, ptr %472, i64 1
  %474 = load i64, ptr %arrayidx850, align 8
  %add851 = add i64 %473, %474
  %475 = load i32, ptr %b1, align 4
  %476 = trunc i64 %add851 to i32
  %conv854 = add i32 %475, %476
  store i32 %conv854, ptr %b1, align 4
  %477 = load ptr, ptr %pb, align 8
  %add.ptr855 = getelementptr inbounds i64, ptr %477, i64 2
  store ptr %add.ptr855, ptr %pb, align 8
  br label %while.cond841, !llvm.loop !36

do.body860:                                       ; preds = %do.end467
  %478 = load ptr, ptr %pa, align 8
  %479 = load ptr, ptr %thisrun, align 8
  %cmp861.not = icmp eq ptr %478, %479
  br i1 %cmp861.not, label %do.body882, label %while.cond864

while.cond864:                                    ; preds = %do.body860, %while.body871
  %480 = load i32, ptr %b1, align 4
  %481 = load i32, ptr %a0, align 4
  %cmp865.not = icmp sgt i32 %480, %481
  %482 = load i32, ptr %b1, align 4
  %483 = load i32, ptr %lastx, align 4
  %cmp868 = icmp slt i32 %482, %483
  %484 = select i1 %cmp865.not, i1 false, i1 %cmp868
  br i1 %484, label %while.body871, label %do.body882

while.body871:                                    ; preds = %while.cond864
  %485 = load ptr, ptr %pb, align 8
  %486 = load i64, ptr %485, align 8
  %arrayidx873 = getelementptr inbounds i64, ptr %485, i64 1
  %487 = load i64, ptr %arrayidx873, align 8
  %add874 = add i64 %486, %487
  %488 = load i32, ptr %b1, align 4
  %489 = trunc i64 %add874 to i32
  %conv877 = add i32 %488, %489
  store i32 %conv877, ptr %b1, align 4
  %490 = load ptr, ptr %pb, align 8
  %add.ptr878 = getelementptr inbounds i64, ptr %490, i64 2
  store ptr %add.ptr878, ptr %pb, align 8
  br label %while.cond864, !llvm.loop !37

do.body882:                                       ; preds = %while.cond864, %do.body860
  %491 = load i32, ptr %RunLength, align 4
  %492 = load i32, ptr %b1, align 4
  %493 = load i32, ptr %a0, align 4
  %sub883 = sub nsw i32 %492, %493
  %add884 = add nsw i32 %491, %sub883
  %conv885 = sext i32 %add884 to i64
  %494 = load ptr, ptr %pa, align 8
  %incdec.ptr886 = getelementptr inbounds i64, ptr %494, i64 1
  store ptr %incdec.ptr886, ptr %pa, align 8
  store i64 %conv885, ptr %494, align 8
  %495 = load i32, ptr %b1, align 4
  store i32 %495, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %496 = load ptr, ptr %pb, align 8
  %incdec.ptr890 = getelementptr inbounds i64, ptr %496, i64 1
  store ptr %incdec.ptr890, ptr %pb, align 8
  %497 = load i64, ptr %496, align 8
  %498 = load i32, ptr %b1, align 4
  %499 = trunc i64 %497 to i32
  %conv893 = add i32 %498, %499
  store i32 %conv893, ptr %b1, align 4
  br label %sw.epilog1099

do.body895:                                       ; preds = %do.end467
  %500 = load ptr, ptr %pa, align 8
  %501 = load ptr, ptr %thisrun, align 8
  %cmp896.not = icmp eq ptr %500, %501
  br i1 %cmp896.not, label %do.body917, label %while.cond899

while.cond899:                                    ; preds = %do.body895, %while.body906
  %502 = load i32, ptr %b1, align 4
  %503 = load i32, ptr %a0, align 4
  %cmp900.not = icmp sgt i32 %502, %503
  %504 = load i32, ptr %b1, align 4
  %505 = load i32, ptr %lastx, align 4
  %cmp903 = icmp slt i32 %504, %505
  %506 = select i1 %cmp900.not, i1 false, i1 %cmp903
  br i1 %506, label %while.body906, label %do.body917

while.body906:                                    ; preds = %while.cond899
  %507 = load ptr, ptr %pb, align 8
  %508 = load i64, ptr %507, align 8
  %arrayidx908 = getelementptr inbounds i64, ptr %507, i64 1
  %509 = load i64, ptr %arrayidx908, align 8
  %add909 = add i64 %508, %509
  %510 = load i32, ptr %b1, align 4
  %511 = trunc i64 %add909 to i32
  %conv912 = add i32 %510, %511
  store i32 %conv912, ptr %b1, align 4
  %512 = load ptr, ptr %pb, align 8
  %add.ptr913 = getelementptr inbounds i64, ptr %512, i64 2
  store ptr %add.ptr913, ptr %pb, align 8
  br label %while.cond899, !llvm.loop !38

do.body917:                                       ; preds = %while.cond899, %do.body895
  %513 = load i32, ptr %RunLength, align 4
  %conv918 = sext i32 %513 to i64
  %514 = load i32, ptr %b1, align 4
  %515 = load i32, ptr %a0, align 4
  %sub919 = sub nsw i32 %514, %515
  %conv920 = sext i32 %sub919 to i64
  %516 = load ptr, ptr %TabEnt, align 8
  %Param921 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %516, i64 0, i32 2
  %517 = load i64, ptr %Param921, align 8
  %add922 = add i64 %517, %conv920
  %add923 = add i64 %add922, %conv918
  %518 = load ptr, ptr %pa, align 8
  %incdec.ptr924 = getelementptr inbounds i64, ptr %518, i64 1
  store ptr %incdec.ptr924, ptr %pa, align 8
  store i64 %add923, ptr %518, align 8
  %519 = load i32, ptr %b1, align 4
  %520 = load ptr, ptr %TabEnt, align 8
  %Param927 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %520, i64 0, i32 2
  %521 = load i64, ptr %Param927, align 8
  %522 = trunc i64 %521 to i32
  %conv931 = add i32 %519, %522
  store i32 %conv931, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %523 = load ptr, ptr %pb, align 8
  %incdec.ptr933 = getelementptr inbounds i64, ptr %523, i64 1
  store ptr %incdec.ptr933, ptr %pb, align 8
  %524 = load i64, ptr %523, align 8
  %525 = load i32, ptr %b1, align 4
  %526 = trunc i64 %524 to i32
  %conv936 = add i32 %525, %526
  store i32 %conv936, ptr %b1, align 4
  br label %sw.epilog1099

do.body938:                                       ; preds = %do.end467
  %527 = load ptr, ptr %pa, align 8
  %528 = load ptr, ptr %thisrun, align 8
  %cmp939.not = icmp eq ptr %527, %528
  br i1 %cmp939.not, label %do.body960, label %while.cond942

while.cond942:                                    ; preds = %do.body938, %while.body949
  %529 = load i32, ptr %b1, align 4
  %530 = load i32, ptr %a0, align 4
  %cmp943.not = icmp sgt i32 %529, %530
  %531 = load i32, ptr %b1, align 4
  %532 = load i32, ptr %lastx, align 4
  %cmp946 = icmp slt i32 %531, %532
  %533 = select i1 %cmp943.not, i1 false, i1 %cmp946
  br i1 %533, label %while.body949, label %do.body960

while.body949:                                    ; preds = %while.cond942
  %534 = load ptr, ptr %pb, align 8
  %535 = load i64, ptr %534, align 8
  %arrayidx951 = getelementptr inbounds i64, ptr %534, i64 1
  %536 = load i64, ptr %arrayidx951, align 8
  %add952 = add i64 %535, %536
  %537 = load i32, ptr %b1, align 4
  %538 = trunc i64 %add952 to i32
  %conv955 = add i32 %537, %538
  store i32 %conv955, ptr %b1, align 4
  %539 = load ptr, ptr %pb, align 8
  %add.ptr956 = getelementptr inbounds i64, ptr %539, i64 2
  store ptr %add.ptr956, ptr %pb, align 8
  br label %while.cond942, !llvm.loop !39

do.body960:                                       ; preds = %while.cond942, %do.body938
  %540 = load i32, ptr %RunLength, align 4
  %conv961 = sext i32 %540 to i64
  %541 = load i32, ptr %b1, align 4
  %542 = load i32, ptr %a0, align 4
  %sub962 = sub nsw i32 %541, %542
  %conv963 = sext i32 %sub962 to i64
  %543 = load ptr, ptr %TabEnt, align 8
  %Param964 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %543, i64 0, i32 2
  %544 = load i64, ptr %Param964, align 8
  %sub965 = sub i64 %conv963, %544
  %add966 = add i64 %sub965, %conv961
  %545 = load ptr, ptr %pa, align 8
  %incdec.ptr967 = getelementptr inbounds i64, ptr %545, i64 1
  store ptr %incdec.ptr967, ptr %pa, align 8
  store i64 %add966, ptr %545, align 8
  %546 = load i32, ptr %b1, align 4
  %547 = load i32, ptr %a0, align 4
  %548 = load ptr, ptr %TabEnt, align 8
  %Param970 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %548, i64 0, i32 2
  %549 = load i64, ptr %Param970, align 8
  %550 = trunc i64 %549 to i32
  %551 = add i32 %547, %550
  %552 = sub i32 %546, %551
  %conv974 = add i32 %552, %547
  store i32 %conv974, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %553 = load ptr, ptr %pb, align 8
  %incdec.ptr976 = getelementptr inbounds i64, ptr %553, i64 -1
  store ptr %incdec.ptr976, ptr %pb, align 8
  %554 = load i64, ptr %incdec.ptr976, align 8
  %555 = load i32, ptr %b1, align 4
  %556 = trunc i64 %554 to i32
  %conv979 = sub i32 %555, %556
  store i32 %conv979, ptr %b1, align 4
  br label %sw.epilog1099

sw.bb980:                                         ; preds = %do.end467
  %557 = load i32, ptr %lastx, align 4
  %558 = load i32, ptr %a0, align 4
  %sub981 = sub nsw i32 %557, %558
  %conv982 = sext i32 %sub981 to i64
  %559 = load ptr, ptr %pa, align 8
  %incdec.ptr983 = getelementptr inbounds i64, ptr %559, i64 1
  store ptr %incdec.ptr983, ptr %pa, align 8
  store i64 %conv982, ptr %559, align 8
  %560 = load ptr, ptr %tif.addr, align 8
  %561 = load i32, ptr %a0, align 4
  %conv984 = sext i32 %561 to i64
  call void @Fax3Extension(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef %560, i64 noundef %conv984)
  br label %do.body1146

sw.bb985:                                         ; preds = %do.end467
  %562 = load i32, ptr %lastx, align 4
  %563 = load i32, ptr %a0, align 4
  %sub986 = sub nsw i32 %562, %563
  %conv987 = sext i32 %sub986 to i64
  %564 = load ptr, ptr %pa, align 8
  %incdec.ptr988 = getelementptr inbounds i64, ptr %564, i64 1
  store ptr %incdec.ptr988, ptr %pa, align 8
  store i64 %conv987, ptr %564, align 8
  %565 = load i32, ptr %BitsAvail, align 4
  %cmp990 = icmp slt i32 %565, 5
  br i1 %cmp990, label %if.then992, label %do.end1011

if.then992:                                       ; preds = %sw.bb985
  %566 = load ptr, ptr %cp, align 8
  %567 = load ptr, ptr %ep, align 8
  %cmp993.not = icmp ult ptr %566, %567
  br i1 %cmp993.not, label %if.else1000, label %if.then995

if.then995:                                       ; preds = %if.then992
  %568 = load i32, ptr %BitsAvail, align 4
  %cmp996 = icmp eq i32 %568, 0
  br i1 %cmp996, label %eof2d, label %if.end1009

if.else1000:                                      ; preds = %if.then992
  %569 = load ptr, ptr %bitmap, align 8
  %570 = load ptr, ptr %cp, align 8
  %incdec.ptr1001 = getelementptr inbounds i8, ptr %570, i64 1
  store ptr %incdec.ptr1001, ptr %cp, align 8
  %571 = load i8, ptr %570, align 1
  %idxprom1002 = zext i8 %571 to i64
  %arrayidx1003 = getelementptr inbounds i8, ptr %569, i64 %idxprom1002
  %572 = load i8, ptr %arrayidx1003, align 1
  %conv1004 = zext i8 %572 to i64
  %573 = load i32, ptr %BitsAvail, align 4
  %sh_prom1005 = zext i32 %573 to i64
  %shl1006 = shl i64 %conv1004, %sh_prom1005
  %574 = load i64, ptr %BitAcc, align 8
  %or1007 = or i64 %574, %shl1006
  store i64 %or1007, ptr %BitAcc, align 8
  %add1008 = add nsw i32 %573, 8
  br label %if.end1009

if.end1009:                                       ; preds = %if.then995, %if.else1000
  %storemerge6 = phi i32 [ %add1008, %if.else1000 ], [ 5, %if.then995 ]
  store i32 %storemerge6, ptr %BitsAvail, align 4
  br label %do.end1011

do.end1011:                                       ; preds = %sw.bb985, %if.end1009
  %575 = load i64, ptr %BitAcc, align 8
  %and1012 = and i64 %575, 31
  %tobool1013.not = icmp eq i64 %and1012, 0
  br i1 %tobool1013.not, label %if.end1016, label %if.then1014

if.then1014:                                      ; preds = %do.end1011
  %576 = load ptr, ptr %tif.addr, align 8
  %577 = load i32, ptr %a0, align 4
  %conv1015 = sext i32 %577 to i64
  call void @Fax3Unexpected(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef %576, i64 noundef %conv1015)
  br label %if.end1016

if.end1016:                                       ; preds = %if.then1014, %do.end1011
  store i32 1, ptr %EOLcnt, align 4
  br label %do.body1146

badMain2d:                                        ; preds = %do.end1129, %do.end467
  %578 = load ptr, ptr %tif.addr, align 8
  %579 = load i32, ptr %a0, align 4
  %conv1018 = sext i32 %579 to i64
  call void @Fax3Unexpected(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef %578, i64 noundef %conv1018)
  br label %do.body1146

badBlack2d:                                       ; preds = %do.end799, %do.end564
  %580 = load ptr, ptr %tif.addr, align 8
  %581 = load i32, ptr %a0, align 4
  %conv1019 = sext i32 %581 to i64
  call void @Fax3Unexpected(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef %580, i64 noundef %conv1019)
  br label %do.body1146

badWhite2d:                                       ; preds = %do.end721, %do.end642
  %582 = load ptr, ptr %tif.addr, align 8
  %583 = load i32, ptr %a0, align 4
  %conv1020 = sext i32 %583 to i64
  call void @Fax3Unexpected(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef %582, i64 noundef %conv1020)
  br label %do.body1146

eof2d:                                            ; preds = %if.then1113, %if.then995, %if.then766, %if.then688, %if.then609, %if.then531, %if.then451
  %584 = load ptr, ptr %tif.addr, align 8
  %585 = load i32, ptr %a0, align 4
  %conv1021 = sext i32 %585 to i64
  call void @Fax3PrematureEOF(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef %584, i64 noundef %conv1021)
  %586 = load i32, ptr %RunLength, align 4
  %tobool1023.not = icmp eq i32 %586, 0
  br i1 %tobool1023.not, label %if.end1031, label %do.body1025

do.body1025:                                      ; preds = %eof2d
  %587 = load i32, ptr %RunLength, align 4
  %conv1027 = sext i32 %587 to i64
  %588 = load ptr, ptr %pa, align 8
  %incdec.ptr1028 = getelementptr inbounds i64, ptr %588, i64 1
  store ptr %incdec.ptr1028, ptr %pa, align 8
  store i64 %conv1027, ptr %588, align 8
  store i32 0, ptr %RunLength, align 4
  br label %if.end1031

if.end1031:                                       ; preds = %do.body1025, %eof2d
  %589 = load i32, ptr %a0, align 4
  %590 = load i32, ptr %lastx, align 4
  %cmp1032.not = icmp eq i32 %589, %590
  br i1 %cmp1032.not, label %EOF2Da, label %if.then1034

if.then1034:                                      ; preds = %if.end1031
  %591 = load ptr, ptr %tif.addr, align 8
  %592 = load i32, ptr %a0, align 4
  %conv1035 = sext i32 %592 to i64
  %593 = load i32, ptr %lastx, align 4
  %conv1036 = sext i32 %593 to i64
  call void @Fax3BadLength(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef %591, i64 noundef %conv1035, i64 noundef %conv1036)
  br label %while.cond1037

while.cond1037:                                   ; preds = %while.body1044, %if.then1034
  %594 = load i32, ptr %a0, align 4
  %595 = load i32, ptr %lastx, align 4
  %cmp1038 = icmp sgt i32 %594, %595
  %596 = load ptr, ptr %pa, align 8
  %597 = load ptr, ptr %thisrun, align 8
  %cmp1041 = icmp ugt ptr %596, %597
  %598 = select i1 %cmp1038, i1 %cmp1041, i1 false
  br i1 %598, label %while.body1044, label %while.end1049

while.body1044:                                   ; preds = %while.cond1037
  %599 = load ptr, ptr %pa, align 8
  %incdec.ptr1045 = getelementptr inbounds i64, ptr %599, i64 -1
  store ptr %incdec.ptr1045, ptr %pa, align 8
  %600 = load i64, ptr %incdec.ptr1045, align 8
  %601 = load i32, ptr %a0, align 4
  %602 = trunc i64 %600 to i32
  %conv1048 = sub i32 %601, %602
  store i32 %conv1048, ptr %a0, align 4
  br label %while.cond1037, !llvm.loop !40

while.end1049:                                    ; preds = %while.cond1037
  %603 = load i32, ptr %a0, align 4
  %604 = load i32, ptr %lastx, align 4
  %cmp1050 = icmp slt i32 %603, %604
  br i1 %cmp1050, label %if.then1052, label %if.else1079

if.then1052:                                      ; preds = %while.end1049
  %605 = load i32, ptr %a0, align 4
  %cmp1053 = icmp slt i32 %605, 0
  br i1 %cmp1053, label %if.then1055, label %if.end1056

if.then1055:                                      ; preds = %if.then1052
  store i32 0, ptr %a0, align 4
  br label %if.end1056

if.end1056:                                       ; preds = %if.then1055, %if.then1052
  %606 = load ptr, ptr %pa, align 8
  %607 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast1057 = ptrtoint ptr %606 to i64
  %sub.ptr.rhs.cast1058 = ptrtoint ptr %607 to i64
  %sub.ptr.sub1059 = sub i64 %sub.ptr.lhs.cast1057, %sub.ptr.rhs.cast1058
  %608 = and i64 %sub.ptr.sub1059, 8
  %tobool1062.not = icmp eq i64 %608, 0
  br i1 %tobool1062.not, label %do.body1071, label %do.body1064

do.body1064:                                      ; preds = %if.end1056
  %609 = load i32, ptr %RunLength, align 4
  %conv1066 = sext i32 %609 to i64
  %610 = load ptr, ptr %pa, align 8
  %incdec.ptr1067 = getelementptr inbounds i64, ptr %610, i64 1
  store ptr %incdec.ptr1067, ptr %pa, align 8
  store i64 %conv1066, ptr %610, align 8
  store i32 0, ptr %RunLength, align 4
  br label %do.body1071

do.body1071:                                      ; preds = %if.end1056, %do.body1064
  %611 = load i32, ptr %RunLength, align 4
  %612 = load i32, ptr %lastx, align 4
  %613 = load i32, ptr %a0, align 4
  %sub1072 = sub nsw i32 %612, %613
  %add1073 = add nsw i32 %611, %sub1072
  %conv1074 = sext i32 %add1073 to i64
  %614 = load ptr, ptr %pa, align 8
  %incdec.ptr1075 = getelementptr inbounds i64, ptr %614, i64 1
  store ptr %incdec.ptr1075, ptr %pa, align 8
  store i64 %conv1074, ptr %614, align 8
  %615 = load i32, ptr %lastx, align 4
  store i32 %615, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %EOF2Da

if.else1079:                                      ; preds = %while.end1049
  %616 = load i32, ptr %a0, align 4
  %617 = load i32, ptr %lastx, align 4
  %cmp1080 = icmp sgt i32 %616, %617
  br i1 %cmp1080, label %do.body1083, label %EOF2Da

do.body1083:                                      ; preds = %if.else1079
  %618 = load i32, ptr %RunLength, align 4
  %619 = load i32, ptr %lastx, align 4
  %add1084 = add nsw i32 %618, %619
  %conv1085 = sext i32 %add1084 to i64
  %620 = load ptr, ptr %pa, align 8
  %incdec.ptr1086 = getelementptr inbounds i64, ptr %620, i64 1
  store ptr %incdec.ptr1086, ptr %pa, align 8
  store i64 %conv1085, ptr %620, align 8
  %621 = load i32, ptr %lastx, align 4
  %622 = load i32, ptr %a0, align 4
  %add1087 = add nsw i32 %622, %621
  store i32 %add1087, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %623 = load i32, ptr %RunLength, align 4
  %conv1091 = sext i32 %623 to i64
  %624 = load ptr, ptr %pa, align 8
  %incdec.ptr1092 = getelementptr inbounds i64, ptr %624, i64 1
  store ptr %incdec.ptr1092, ptr %pa, align 8
  store i64 %conv1091, ptr %624, align 8
  store i32 0, ptr %RunLength, align 4
  br label %EOF2Da

sw.epilog1099:                                    ; preds = %while.cond841, %do.body837, %do.body960, %do.body917, %do.body882, %do.end504
  br label %while.cond440, !llvm.loop !41

while.end1100:                                    ; preds = %while.cond440
  %625 = load i32, ptr %RunLength, align 4
  %tobool1101.not = icmp eq i32 %625, 0
  br i1 %tobool1101.not, label %do.body1146, label %if.then1102

if.then1102:                                      ; preds = %while.end1100
  %626 = load i32, ptr %RunLength, align 4
  %627 = load i32, ptr %a0, align 4
  %add1103 = add nsw i32 %626, %627
  %628 = load i32, ptr %lastx, align 4
  %cmp1104 = icmp slt i32 %add1103, %628
  br i1 %cmp1104, label %do.body1107, label %do.body1139

do.body1107:                                      ; preds = %if.then1102
  %629 = load i32, ptr %BitsAvail, align 4
  %cmp1108 = icmp slt i32 %629, 1
  br i1 %cmp1108, label %if.then1110, label %do.end1129

if.then1110:                                      ; preds = %do.body1107
  %630 = load ptr, ptr %cp, align 8
  %631 = load ptr, ptr %ep, align 8
  %cmp1111.not = icmp ult ptr %630, %631
  br i1 %cmp1111.not, label %if.else1118, label %if.then1113

if.then1113:                                      ; preds = %if.then1110
  %632 = load i32, ptr %BitsAvail, align 4
  %cmp1114 = icmp eq i32 %632, 0
  br i1 %cmp1114, label %eof2d, label %if.end1127

if.else1118:                                      ; preds = %if.then1110
  %633 = load ptr, ptr %bitmap, align 8
  %634 = load ptr, ptr %cp, align 8
  %incdec.ptr1119 = getelementptr inbounds i8, ptr %634, i64 1
  store ptr %incdec.ptr1119, ptr %cp, align 8
  %635 = load i8, ptr %634, align 1
  %idxprom1120 = zext i8 %635 to i64
  %arrayidx1121 = getelementptr inbounds i8, ptr %633, i64 %idxprom1120
  %636 = load i8, ptr %arrayidx1121, align 1
  %conv1122 = zext i8 %636 to i64
  %637 = load i32, ptr %BitsAvail, align 4
  %sh_prom1123 = zext i32 %637 to i64
  %shl1124 = shl i64 %conv1122, %sh_prom1123
  %638 = load i64, ptr %BitAcc, align 8
  %or1125 = or i64 %638, %shl1124
  store i64 %or1125, ptr %BitAcc, align 8
  %add1126 = add nsw i32 %637, 8
  br label %if.end1127

if.end1127:                                       ; preds = %if.then1113, %if.else1118
  %storemerge3 = phi i32 [ %add1126, %if.else1118 ], [ 1, %if.then1113 ]
  store i32 %storemerge3, ptr %BitsAvail, align 4
  br label %do.end1129

do.end1129:                                       ; preds = %do.body1107, %if.end1127
  %639 = load i64, ptr %BitAcc, align 8
  %and1130 = and i64 %639, 1
  %tobool1131.not = icmp eq i64 %and1130, 0
  br i1 %tobool1131.not, label %badMain2d, label %do.body1134

do.body1134:                                      ; preds = %do.end1129
  %640 = load i32, ptr %BitsAvail, align 4
  %sub1135 = add nsw i32 %640, -1
  store i32 %sub1135, ptr %BitsAvail, align 4
  %641 = load i64, ptr %BitAcc, align 8
  %shr1136 = lshr i64 %641, 1
  store i64 %shr1136, ptr %BitAcc, align 8
  br label %do.body1139

do.body1139:                                      ; preds = %if.then1102, %do.body1134
  %642 = load i32, ptr %RunLength, align 4
  %conv1141 = sext i32 %642 to i64
  %643 = load ptr, ptr %pa, align 8
  %incdec.ptr1142 = getelementptr inbounds i64, ptr %643, i64 1
  store ptr %incdec.ptr1142, ptr %pa, align 8
  store i64 %conv1141, ptr %643, align 8
  store i32 0, ptr %RunLength, align 4
  br label %do.body1146

do.body1146:                                      ; preds = %sw.bb980, %if.end1016, %badMain2d, %badBlack2d, %badWhite2d, %do.body1139, %while.end1100
  %644 = load i32, ptr %RunLength, align 4
  %tobool1147.not = icmp eq i32 %644, 0
  br i1 %tobool1147.not, label %if.end1155, label %do.body1149

do.body1149:                                      ; preds = %do.body1146
  %645 = load i32, ptr %RunLength, align 4
  %conv1151 = sext i32 %645 to i64
  %646 = load ptr, ptr %pa, align 8
  %incdec.ptr1152 = getelementptr inbounds i64, ptr %646, i64 1
  store ptr %incdec.ptr1152, ptr %pa, align 8
  store i64 %conv1151, ptr %646, align 8
  store i32 0, ptr %RunLength, align 4
  br label %if.end1155

if.end1155:                                       ; preds = %do.body1149, %do.body1146
  %647 = load i32, ptr %a0, align 4
  %648 = load i32, ptr %lastx, align 4
  %cmp1156.not = icmp eq i32 %647, %648
  br i1 %cmp1156.not, label %if.end1224, label %if.then1158

if.then1158:                                      ; preds = %if.end1155
  %649 = load ptr, ptr %tif.addr, align 8
  %650 = load i32, ptr %a0, align 4
  %conv1159 = sext i32 %650 to i64
  %651 = load i32, ptr %lastx, align 4
  %conv1160 = sext i32 %651 to i64
  call void @Fax3BadLength(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef %649, i64 noundef %conv1159, i64 noundef %conv1160)
  br label %while.cond1161

while.cond1161:                                   ; preds = %while.body1168, %if.then1158
  %652 = load i32, ptr %a0, align 4
  %653 = load i32, ptr %lastx, align 4
  %cmp1162 = icmp sgt i32 %652, %653
  %654 = load ptr, ptr %pa, align 8
  %655 = load ptr, ptr %thisrun, align 8
  %cmp1165 = icmp ugt ptr %654, %655
  %656 = select i1 %cmp1162, i1 %cmp1165, i1 false
  br i1 %656, label %while.body1168, label %while.end1173

while.body1168:                                   ; preds = %while.cond1161
  %657 = load ptr, ptr %pa, align 8
  %incdec.ptr1169 = getelementptr inbounds i64, ptr %657, i64 -1
  store ptr %incdec.ptr1169, ptr %pa, align 8
  %658 = load i64, ptr %incdec.ptr1169, align 8
  %659 = load i32, ptr %a0, align 4
  %660 = trunc i64 %658 to i32
  %conv1172 = sub i32 %659, %660
  store i32 %conv1172, ptr %a0, align 4
  br label %while.cond1161, !llvm.loop !42

while.end1173:                                    ; preds = %while.cond1161
  %661 = load i32, ptr %a0, align 4
  %662 = load i32, ptr %lastx, align 4
  %cmp1174 = icmp slt i32 %661, %662
  br i1 %cmp1174, label %if.then1176, label %if.else1203

if.then1176:                                      ; preds = %while.end1173
  %663 = load i32, ptr %a0, align 4
  %cmp1177 = icmp slt i32 %663, 0
  br i1 %cmp1177, label %if.then1179, label %if.end1180

if.then1179:                                      ; preds = %if.then1176
  store i32 0, ptr %a0, align 4
  br label %if.end1180

if.end1180:                                       ; preds = %if.then1179, %if.then1176
  %664 = load ptr, ptr %pa, align 8
  %665 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast1181 = ptrtoint ptr %664 to i64
  %sub.ptr.rhs.cast1182 = ptrtoint ptr %665 to i64
  %sub.ptr.sub1183 = sub i64 %sub.ptr.lhs.cast1181, %sub.ptr.rhs.cast1182
  %666 = and i64 %sub.ptr.sub1183, 8
  %tobool1186.not = icmp eq i64 %666, 0
  br i1 %tobool1186.not, label %do.body1195, label %do.body1188

do.body1188:                                      ; preds = %if.end1180
  %667 = load i32, ptr %RunLength, align 4
  %conv1190 = sext i32 %667 to i64
  %668 = load ptr, ptr %pa, align 8
  %incdec.ptr1191 = getelementptr inbounds i64, ptr %668, i64 1
  store ptr %incdec.ptr1191, ptr %pa, align 8
  store i64 %conv1190, ptr %668, align 8
  store i32 0, ptr %RunLength, align 4
  br label %do.body1195

do.body1195:                                      ; preds = %if.end1180, %do.body1188
  %669 = load i32, ptr %RunLength, align 4
  %670 = load i32, ptr %lastx, align 4
  %671 = load i32, ptr %a0, align 4
  %sub1196 = sub nsw i32 %670, %671
  %add1197 = add nsw i32 %669, %sub1196
  %conv1198 = sext i32 %add1197 to i64
  %672 = load ptr, ptr %pa, align 8
  %incdec.ptr1199 = getelementptr inbounds i64, ptr %672, i64 1
  store ptr %incdec.ptr1199, ptr %pa, align 8
  store i64 %conv1198, ptr %672, align 8
  %673 = load i32, ptr %lastx, align 4
  store i32 %673, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %if.end1224

if.else1203:                                      ; preds = %while.end1173
  %674 = load i32, ptr %a0, align 4
  %675 = load i32, ptr %lastx, align 4
  %cmp1204 = icmp sgt i32 %674, %675
  br i1 %cmp1204, label %do.body1207, label %if.end1224

do.body1207:                                      ; preds = %if.else1203
  %676 = load i32, ptr %RunLength, align 4
  %677 = load i32, ptr %lastx, align 4
  %add1208 = add nsw i32 %676, %677
  %conv1209 = sext i32 %add1208 to i64
  %678 = load ptr, ptr %pa, align 8
  %incdec.ptr1210 = getelementptr inbounds i64, ptr %678, i64 1
  store ptr %incdec.ptr1210, ptr %pa, align 8
  store i64 %conv1209, ptr %678, align 8
  %679 = load i32, ptr %lastx, align 4
  %680 = load i32, ptr %a0, align 4
  %add1211 = add nsw i32 %680, %679
  store i32 %add1211, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %681 = load i32, ptr %RunLength, align 4
  %conv1215 = sext i32 %681 to i64
  %682 = load ptr, ptr %pa, align 8
  %incdec.ptr1216 = getelementptr inbounds i64, ptr %682, i64 1
  store ptr %incdec.ptr1216, ptr %pa, align 8
  store i64 %conv1215, ptr %682, align 8
  store i32 0, ptr %RunLength, align 4
  br label %if.end1224

if.end1224:                                       ; preds = %if.end1155, %if.else1203, %do.body1207, %do.body1195, %if.end369, %if.else417, %do.body421, %do.body409
  %683 = load ptr, ptr %sp, align 8
  %fill = getelementptr inbounds %struct.Fax3DecodeState, ptr %683, i64 0, i32 5
  %684 = load ptr, ptr %fill, align 8
  %685 = load ptr, ptr %buf.addr, align 8
  %686 = load ptr, ptr %thisrun, align 8
  %687 = load ptr, ptr %pa, align 8
  %688 = load i32, ptr %lastx, align 4
  %conv1225 = sext i32 %688 to i64
  call void %684(ptr noundef %685, ptr noundef %686, ptr noundef %687, i64 noundef %conv1225) #5
  %689 = load i32, ptr %RunLength, align 4
  %conv1228 = sext i32 %689 to i64
  %690 = load ptr, ptr %pa, align 8
  %incdec.ptr1229 = getelementptr inbounds i64, ptr %690, i64 1
  store ptr %incdec.ptr1229, ptr %pa, align 8
  store i64 %conv1228, ptr %690, align 8
  store i32 0, ptr %RunLength, align 4
  %691 = load ptr, ptr %sp, align 8
  %curruns1232 = getelementptr inbounds %struct.Fax3DecodeState, ptr %691, i64 0, i32 8
  %692 = load ptr, ptr %curruns1232, align 8
  %refruns1233 = getelementptr inbounds %struct.Fax3DecodeState, ptr %691, i64 0, i32 7
  %693 = load ptr, ptr %refruns1233, align 8
  %curruns1234 = getelementptr inbounds %struct.Fax3DecodeState, ptr %691, i64 0, i32 8
  store ptr %693, ptr %curruns1234, align 8
  %694 = load ptr, ptr %sp, align 8
  %refruns1235 = getelementptr inbounds %struct.Fax3DecodeState, ptr %694, i64 0, i32 7
  store ptr %692, ptr %refruns1235, align 8
  %rowbytes = getelementptr inbounds %struct.Fax3BaseState, ptr %694, i64 0, i32 1
  %695 = load i64, ptr %rowbytes, align 8
  %696 = load ptr, ptr %buf.addr, align 8
  %add.ptr1237 = getelementptr inbounds i8, ptr %696, i64 %695
  store ptr %add.ptr1237, ptr %buf.addr, align 8
  %697 = load ptr, ptr %sp, align 8
  %rowbytes1239 = getelementptr inbounds %struct.Fax3BaseState, ptr %697, i64 0, i32 1
  %698 = load i64, ptr %rowbytes1239, align 8
  %699 = load i64, ptr %occ.addr, align 8
  %sub1240 = sub i64 %699, %698
  store i64 %sub1240, ptr %occ.addr, align 8
  %cmp1241.not = icmp eq i64 %699, %698
  br i1 %cmp1241.not, label %if.end1244, label %if.then1243

if.then1243:                                      ; preds = %if.end1224
  %700 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %700, i64 0, i32 11
  %701 = load i64, ptr %tif_row, align 8
  %inc = add i64 %701, 1
  store i64 %inc, ptr %tif_row, align 8
  br label %if.end1244

if.end1244:                                       ; preds = %if.then1243, %if.end1224
  br label %while.cond, !llvm.loop !43

do.body1245:                                      ; preds = %if.then13, %if.then52, %if.then97
  %702 = load i32, ptr %RunLength, align 4
  %tobool1246.not = icmp eq i32 %702, 0
  br i1 %tobool1246.not, label %if.end1254, label %do.body1248

do.body1248:                                      ; preds = %do.body1245
  %703 = load i32, ptr %RunLength, align 4
  %conv1250 = sext i32 %703 to i64
  %704 = load ptr, ptr %pa, align 8
  %incdec.ptr1251 = getelementptr inbounds i64, ptr %704, i64 1
  store ptr %incdec.ptr1251, ptr %pa, align 8
  store i64 %conv1250, ptr %704, align 8
  store i32 0, ptr %RunLength, align 4
  br label %if.end1254

if.end1254:                                       ; preds = %do.body1248, %do.body1245
  %705 = load i32, ptr %a0, align 4
  %706 = load i32, ptr %lastx, align 4
  %cmp1255.not = icmp eq i32 %705, %706
  br i1 %cmp1255.not, label %EOF2Da, label %if.then1257

if.then1257:                                      ; preds = %if.end1254
  %707 = load ptr, ptr %tif.addr, align 8
  %708 = load i32, ptr %a0, align 4
  %conv1258 = sext i32 %708 to i64
  %709 = load i32, ptr %lastx, align 4
  %conv1259 = sext i32 %709 to i64
  call void @Fax3BadLength(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef %707, i64 noundef %conv1258, i64 noundef %conv1259)
  br label %while.cond1260

while.cond1260:                                   ; preds = %while.body1267, %if.then1257
  %710 = load i32, ptr %a0, align 4
  %711 = load i32, ptr %lastx, align 4
  %cmp1261 = icmp sgt i32 %710, %711
  %712 = load ptr, ptr %pa, align 8
  %713 = load ptr, ptr %thisrun, align 8
  %cmp1264 = icmp ugt ptr %712, %713
  %714 = select i1 %cmp1261, i1 %cmp1264, i1 false
  br i1 %714, label %while.body1267, label %while.end1272

while.body1267:                                   ; preds = %while.cond1260
  %715 = load ptr, ptr %pa, align 8
  %incdec.ptr1268 = getelementptr inbounds i64, ptr %715, i64 -1
  store ptr %incdec.ptr1268, ptr %pa, align 8
  %716 = load i64, ptr %incdec.ptr1268, align 8
  %717 = load i32, ptr %a0, align 4
  %718 = trunc i64 %716 to i32
  %conv1271 = sub i32 %717, %718
  store i32 %conv1271, ptr %a0, align 4
  br label %while.cond1260, !llvm.loop !44

while.end1272:                                    ; preds = %while.cond1260
  %719 = load i32, ptr %a0, align 4
  %720 = load i32, ptr %lastx, align 4
  %cmp1273 = icmp slt i32 %719, %720
  br i1 %cmp1273, label %if.then1275, label %if.else1302

if.then1275:                                      ; preds = %while.end1272
  %721 = load i32, ptr %a0, align 4
  %cmp1276 = icmp slt i32 %721, 0
  br i1 %cmp1276, label %if.then1278, label %if.end1279

if.then1278:                                      ; preds = %if.then1275
  store i32 0, ptr %a0, align 4
  br label %if.end1279

if.end1279:                                       ; preds = %if.then1278, %if.then1275
  %722 = load ptr, ptr %pa, align 8
  %723 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast1280 = ptrtoint ptr %722 to i64
  %sub.ptr.rhs.cast1281 = ptrtoint ptr %723 to i64
  %sub.ptr.sub1282 = sub i64 %sub.ptr.lhs.cast1280, %sub.ptr.rhs.cast1281
  %724 = and i64 %sub.ptr.sub1282, 8
  %tobool1285.not = icmp eq i64 %724, 0
  br i1 %tobool1285.not, label %do.body1294, label %do.body1287

do.body1287:                                      ; preds = %if.end1279
  %725 = load i32, ptr %RunLength, align 4
  %conv1289 = sext i32 %725 to i64
  %726 = load ptr, ptr %pa, align 8
  %incdec.ptr1290 = getelementptr inbounds i64, ptr %726, i64 1
  store ptr %incdec.ptr1290, ptr %pa, align 8
  store i64 %conv1289, ptr %726, align 8
  store i32 0, ptr %RunLength, align 4
  br label %do.body1294

do.body1294:                                      ; preds = %if.end1279, %do.body1287
  %727 = load i32, ptr %RunLength, align 4
  %728 = load i32, ptr %lastx, align 4
  %729 = load i32, ptr %a0, align 4
  %sub1295 = sub nsw i32 %728, %729
  %add1296 = add nsw i32 %727, %sub1295
  %conv1297 = sext i32 %add1296 to i64
  %730 = load ptr, ptr %pa, align 8
  %incdec.ptr1298 = getelementptr inbounds i64, ptr %730, i64 1
  store ptr %incdec.ptr1298, ptr %pa, align 8
  store i64 %conv1297, ptr %730, align 8
  %731 = load i32, ptr %lastx, align 4
  store i32 %731, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %EOF2Da

if.else1302:                                      ; preds = %while.end1272
  %732 = load i32, ptr %a0, align 4
  %733 = load i32, ptr %lastx, align 4
  %cmp1303 = icmp sgt i32 %732, %733
  br i1 %cmp1303, label %do.body1306, label %EOF2Da

do.body1306:                                      ; preds = %if.else1302
  %734 = load i32, ptr %RunLength, align 4
  %735 = load i32, ptr %lastx, align 4
  %add1307 = add nsw i32 %734, %735
  %conv1308 = sext i32 %add1307 to i64
  %736 = load ptr, ptr %pa, align 8
  %incdec.ptr1309 = getelementptr inbounds i64, ptr %736, i64 1
  store ptr %incdec.ptr1309, ptr %pa, align 8
  store i64 %conv1308, ptr %736, align 8
  %737 = load i32, ptr %lastx, align 4
  %738 = load i32, ptr %a0, align 4
  %add1310 = add nsw i32 %738, %737
  store i32 %add1310, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %739 = load i32, ptr %RunLength, align 4
  %conv1314 = sext i32 %739 to i64
  %740 = load ptr, ptr %pa, align 8
  %incdec.ptr1315 = getelementptr inbounds i64, ptr %740, i64 1
  store ptr %incdec.ptr1315, ptr %pa, align 8
  store i64 %conv1314, ptr %740, align 8
  store i32 0, ptr %RunLength, align 4
  br label %EOF2Da

EOF2Da:                                           ; preds = %do.body1294, %do.body1306, %if.else1302, %if.end1254, %do.body1071, %do.body1083, %if.else1079, %if.end1031, %do.body332, %do.body344, %if.else340, %if.end298
  %741 = load ptr, ptr %sp, align 8
  %fill1322 = getelementptr inbounds %struct.Fax3DecodeState, ptr %741, i64 0, i32 5
  %742 = load ptr, ptr %fill1322, align 8
  %743 = load ptr, ptr %buf.addr, align 8
  %744 = load ptr, ptr %thisrun, align 8
  %745 = load ptr, ptr %pa, align 8
  %746 = load i32, ptr %lastx, align 4
  %conv1323 = sext i32 %746 to i64
  call void %742(ptr noundef %743, ptr noundef %744, ptr noundef %745, i64 noundef %conv1323) #5
  %747 = load i32, ptr %BitsAvail, align 4
  %748 = load ptr, ptr %sp, align 8
  %bit1325 = getelementptr inbounds %struct.Fax3DecodeState, ptr %748, i64 0, i32 3
  store i32 %747, ptr %bit1325, align 8
  %749 = load i64, ptr %BitAcc, align 8
  %data1326 = getelementptr inbounds %struct.Fax3DecodeState, ptr %748, i64 0, i32 2
  store i64 %749, ptr %data1326, align 8
  %750 = load i32, ptr %EOLcnt, align 4
  %751 = load ptr, ptr %sp, align 8
  %EOLcnt1327 = getelementptr inbounds %struct.Fax3DecodeState, ptr %751, i64 0, i32 4
  store i32 %750, ptr %EOLcnt1327, align 4
  %752 = load ptr, ptr %cp, align 8
  %753 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp1328 = getelementptr inbounds %struct.tiff, ptr %753, i64 0, i32 42
  %754 = load ptr, ptr %tif_rawcp1328, align 8
  %sub.ptr.lhs.cast1329 = ptrtoint ptr %752 to i64
  %sub.ptr.rhs.cast1330 = ptrtoint ptr %754 to i64
  %sub.ptr.sub1331.neg = sub i64 %sub.ptr.rhs.cast1330, %sub.ptr.lhs.cast1329
  %tif_rawcc1332 = getelementptr inbounds %struct.tiff, ptr %753, i64 0, i32 43
  %755 = load i64, ptr %tif_rawcc1332, align 8
  %sub1333 = add i64 %sub.ptr.sub1331.neg, %755
  store i64 %sub1333, ptr %tif_rawcc1332, align 8
  %756 = load ptr, ptr %cp, align 8
  %757 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp1334 = getelementptr inbounds %struct.tiff, ptr %757, i64 0, i32 42
  store ptr %756, ptr %tif_rawcp1334, align 8
  br label %return

do.body1337:                                      ; preds = %while.cond
  %758 = load i32, ptr %BitsAvail, align 4
  %759 = load ptr, ptr %sp, align 8
  %bit1338 = getelementptr inbounds %struct.Fax3DecodeState, ptr %759, i64 0, i32 3
  store i32 %758, ptr %bit1338, align 8
  %760 = load i64, ptr %BitAcc, align 8
  %data1339 = getelementptr inbounds %struct.Fax3DecodeState, ptr %759, i64 0, i32 2
  store i64 %760, ptr %data1339, align 8
  %761 = load i32, ptr %EOLcnt, align 4
  %762 = load ptr, ptr %sp, align 8
  %EOLcnt1340 = getelementptr inbounds %struct.Fax3DecodeState, ptr %762, i64 0, i32 4
  store i32 %761, ptr %EOLcnt1340, align 4
  %763 = load ptr, ptr %cp, align 8
  %764 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp1341 = getelementptr inbounds %struct.tiff, ptr %764, i64 0, i32 42
  %765 = load ptr, ptr %tif_rawcp1341, align 8
  %sub.ptr.lhs.cast1342 = ptrtoint ptr %763 to i64
  %sub.ptr.rhs.cast1343 = ptrtoint ptr %765 to i64
  %sub.ptr.sub1344.neg = sub i64 %sub.ptr.rhs.cast1343, %sub.ptr.lhs.cast1342
  %tif_rawcc1345 = getelementptr inbounds %struct.tiff, ptr %764, i64 0, i32 43
  %766 = load i64, ptr %tif_rawcc1345, align 8
  %sub1346 = add i64 %sub.ptr.sub1344.neg, %766
  store i64 %sub1346, ptr %tif_rawcc1345, align 8
  %767 = load ptr, ptr %cp, align 8
  %768 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp1347 = getelementptr inbounds %struct.tiff, ptr %768, i64 0, i32 42
  store ptr %767, ptr %tif_rawcp1347, align 8
  br label %return

return:                                           ; preds = %do.body1337, %EOF2Da
  %storemerge = phi i32 [ 1, %do.body1337 ], [ -1, %EOF2Da ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal void @Fax3Unexpected(ptr noundef %module, ptr noundef %tif, i64 noundef %a0) #0 {
entry:
  %0 = load ptr, ptr %tif, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 11
  %1 = load i64, ptr %tif_row, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %module, ptr noundef nonnull @.str.34, ptr noundef %0, i64 noundef %1, i64 noundef %a0) #5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @Fax3PrematureEOF(ptr noundef %module, ptr noundef %tif, i64 noundef %a0) #0 {
entry:
  %0 = load ptr, ptr %tif, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 11
  %1 = load i64, ptr %tif_row, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %module, ptr noundef nonnull @.str.35, ptr noundef %0, i64 noundef %1, i64 noundef %a0) #5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @Fax3BadLength(ptr noundef %module, ptr noundef %tif, i64 noundef %a0, i64 noundef %lastx) #0 {
entry:
  %a0.addr = alloca i64, align 8
  %lastx.addr = alloca i64, align 8
  store i64 %a0, ptr %a0.addr, align 8
  store i64 %lastx, ptr %lastx.addr, align 8
  %0 = load ptr, ptr %tif, align 8
  %cmp = icmp ult i64 %a0, %lastx
  %cond = select i1 %cmp, ptr @.str.37, ptr @.str.38
  %tif_row = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 11
  %1 = load i64, ptr %tif_row, align 8
  %2 = load i64, ptr %a0.addr, align 8
  %3 = load i64, ptr %lastx.addr, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %module, ptr noundef nonnull @.str.36, ptr noundef %0, ptr noundef nonnull %cond, i64 noundef %1, i64 noundef %2, i64 noundef %3) #5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @Fax3Extension(ptr noundef %module, ptr noundef %tif, i64 noundef %a0) #0 {
entry:
  %0 = load ptr, ptr %tif, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 11
  %1 = load i64, ptr %tif_row, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %module, ptr noundef nonnull @.str.39, ptr noundef %0, i64 noundef %1, i64 noundef %a0) #5
  ret void
}

declare void @TIFFWarning(ptr noundef, ptr noundef, ...) #2

declare ptr @TIFFGetBitRevTable(i32 noundef) #2

declare void @_TIFFmemset(ptr noundef, i32 noundef, i64 noundef) #2

declare i32 @TIFFFlushData1(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @Fax3PutEOL(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %bit = alloca i32, align 4
  %data = alloca i32, align 4
  %code = alloca i32, align 4
  %length = alloca i32, align 4
  %tparm = alloca i32, align 4
  %align = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %bit1 = getelementptr inbounds %struct.Fax3EncodeState, ptr %0, i64 0, i32 2
  %1 = load i32, ptr %bit1, align 4
  store i32 %1, ptr %bit, align 4
  %data2 = getelementptr inbounds %struct.Fax3EncodeState, ptr %0, i64 0, i32 1
  %2 = load i32, ptr %data2, align 8
  store i32 %2, ptr %data, align 4
  %3 = load ptr, ptr %sp, align 8
  %groupoptions = getelementptr inbounds %struct.Fax3BaseState, ptr %3, i64 0, i32 6
  %4 = load i64, ptr %groupoptions, align 8
  %and = and i64 %4, 4
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end39, label %if.then

if.then:                                          ; preds = %entry
  store i32 4, ptr %align, align 4
  %5 = load ptr, ptr %sp, align 8
  %bit3 = getelementptr inbounds %struct.Fax3EncodeState, ptr %5, i64 0, i32 2
  %6 = load i32, ptr %bit3, align 4
  %cmp.not = icmp eq i32 %6, 4
  br i1 %cmp.not, label %if.end39, label %if.then4

if.then4:                                         ; preds = %if.then
  %7 = load i32, ptr %align, align 4
  %8 = load ptr, ptr %sp, align 8
  %bit5 = getelementptr inbounds %struct.Fax3EncodeState, ptr %8, i64 0, i32 2
  %9 = load i32, ptr %bit5, align 4
  %cmp6 = icmp sgt i32 %7, %9
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then4
  %10 = load ptr, ptr %sp, align 8
  %bit8 = getelementptr inbounds %struct.Fax3EncodeState, ptr %10, i64 0, i32 2
  %11 = load i32, ptr %bit8, align 4
  %12 = load i32, ptr %align, align 4
  %sub = sub nsw i32 8, %12
  %add = add nsw i32 %11, %sub
  br label %if.end

if.else:                                          ; preds = %if.then4
  %13 = load ptr, ptr %sp, align 8
  %bit9 = getelementptr inbounds %struct.Fax3EncodeState, ptr %13, i64 0, i32 2
  %14 = load i32, ptr %bit9, align 4
  %15 = load i32, ptr %align, align 4
  %sub10 = sub nsw i32 %14, %15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  %storemerge = phi i32 [ %sub10, %if.else ], [ %add, %if.then7 ]
  store i32 %storemerge, ptr %align, align 4
  store i32 0, ptr %code, align 4
  store i32 %storemerge, ptr %tparm, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end16, %if.end
  %16 = load i32, ptr %tparm, align 4
  %17 = load i32, ptr %bit, align 4
  %cmp11 = icmp ugt i32 %16, %17
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i32, ptr %bit, align 4
  %19 = load i32, ptr %tparm, align 4
  %sub13 = sub i32 %19, %18
  store i32 %sub13, ptr %tparm, align 4
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %20, i64 0, i32 43
  %21 = load i64, ptr %tif_rawcc, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %20, i64 0, i32 41
  %22 = load i64, ptr %tif_rawdatasize, align 8
  %cmp14.not = icmp slt i64 %21, %22
  br i1 %cmp14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %while.body
  %23 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %23) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %while.body
  %24 = load i32, ptr %data, align 4
  %conv = trunc i32 %24 to i8
  %25 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %25, i64 0, i32 42
  %26 = load ptr, ptr %tif_rawcp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %26, i64 1
  store ptr %incdec.ptr, ptr %tif_rawcp, align 8
  store i8 %conv, ptr %26, align 1
  %tif_rawcc17 = getelementptr inbounds %struct.tiff, ptr %25, i64 0, i32 43
  %27 = load i64, ptr %tif_rawcc17, align 8
  %inc = add nsw i64 %27, 1
  store i64 %inc, ptr %tif_rawcc17, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %while.cond, !llvm.loop !45

while.end:                                        ; preds = %while.cond
  %28 = load i32, ptr %tparm, align 4
  %29 = load i32, ptr %bit, align 4
  %sub21 = sub i32 %29, %28
  store i32 %sub21, ptr %bit, align 4
  %cmp22 = icmp eq i32 %29, %28
  br i1 %cmp22, label %if.then24, label %if.end39

if.then24:                                        ; preds = %while.end
  %30 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc25 = getelementptr inbounds %struct.tiff, ptr %30, i64 0, i32 43
  %31 = load i64, ptr %tif_rawcc25, align 8
  %tif_rawdatasize26 = getelementptr inbounds %struct.tiff, ptr %30, i64 0, i32 41
  %32 = load i64, ptr %tif_rawdatasize26, align 8
  %cmp27.not = icmp slt i64 %31, %32
  br i1 %cmp27.not, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.then24
  %33 = load ptr, ptr %tif.addr, align 8
  %call30 = call i32 @TIFFFlushData1(ptr noundef %33) #5
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.then24
  %34 = load i32, ptr %data, align 4
  %conv32 = trunc i32 %34 to i8
  %35 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp33 = getelementptr inbounds %struct.tiff, ptr %35, i64 0, i32 42
  %36 = load ptr, ptr %tif_rawcp33, align 8
  %incdec.ptr34 = getelementptr inbounds i8, ptr %36, i64 1
  store ptr %incdec.ptr34, ptr %tif_rawcp33, align 8
  store i8 %conv32, ptr %36, align 1
  %tif_rawcc35 = getelementptr inbounds %struct.tiff, ptr %35, i64 0, i32 43
  %37 = load i64, ptr %tif_rawcc35, align 8
  %inc36 = add nsw i64 %37, 1
  store i64 %inc36, ptr %tif_rawcc35, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then, %if.end31, %while.end, %entry
  store i32 1, ptr %code, align 4
  store i32 12, ptr %length, align 4
  %38 = load ptr, ptr %sp, align 8
  %groupoptions41 = getelementptr inbounds %struct.Fax3BaseState, ptr %38, i64 0, i32 6
  %39 = load i64, ptr %groupoptions41, align 8
  %and42 = and i64 %39, 1
  %tobool43.not = icmp eq i64 %and42, 0
  br i1 %tobool43.not, label %if.end50, label %if.then44

if.then44:                                        ; preds = %if.end39
  %40 = load i32, ptr %code, align 4
  %shl45 = shl i32 %40, 1
  %41 = load ptr, ptr %sp, align 8
  %tag = getelementptr inbounds %struct.Fax3EncodeState, ptr %41, i64 0, i32 3
  %42 = load i32, ptr %tag, align 8
  %cmp46 = icmp eq i32 %42, 0
  %conv47 = zext i1 %cmp46 to i32
  %or48 = or i32 %shl45, %conv47
  store i32 %or48, ptr %code, align 4
  %43 = load i32, ptr %length, align 4
  %inc49 = add i32 %43, 1
  store i32 %inc49, ptr %length, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then44, %if.end39
  br label %while.cond51

while.cond51:                                     ; preds = %if.end65, %if.end50
  %44 = load i32, ptr %length, align 4
  %45 = load i32, ptr %bit, align 4
  %cmp52 = icmp ugt i32 %44, %45
  br i1 %cmp52, label %while.body54, label %while.end71

while.body54:                                     ; preds = %while.cond51
  %46 = load i32, ptr %code, align 4
  %47 = load i32, ptr %length, align 4
  %48 = load i32, ptr %bit, align 4
  %sub55 = sub i32 %47, %48
  %shr56 = lshr i32 %46, %sub55
  %49 = load i32, ptr %data, align 4
  %or57 = or i32 %49, %shr56
  store i32 %or57, ptr %data, align 4
  %50 = load i32, ptr %length, align 4
  %sub58 = sub i32 %50, %48
  store i32 %sub58, ptr %length, align 4
  %51 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc59 = getelementptr inbounds %struct.tiff, ptr %51, i64 0, i32 43
  %52 = load i64, ptr %tif_rawcc59, align 8
  %tif_rawdatasize60 = getelementptr inbounds %struct.tiff, ptr %51, i64 0, i32 41
  %53 = load i64, ptr %tif_rawdatasize60, align 8
  %cmp61.not = icmp slt i64 %52, %53
  br i1 %cmp61.not, label %if.end65, label %if.then63

if.then63:                                        ; preds = %while.body54
  %54 = load ptr, ptr %tif.addr, align 8
  %call64 = call i32 @TIFFFlushData1(ptr noundef %54) #5
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %while.body54
  %55 = load i32, ptr %data, align 4
  %conv66 = trunc i32 %55 to i8
  %56 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp67 = getelementptr inbounds %struct.tiff, ptr %56, i64 0, i32 42
  %57 = load ptr, ptr %tif_rawcp67, align 8
  %incdec.ptr68 = getelementptr inbounds i8, ptr %57, i64 1
  store ptr %incdec.ptr68, ptr %tif_rawcp67, align 8
  store i8 %conv66, ptr %57, align 1
  %tif_rawcc69 = getelementptr inbounds %struct.tiff, ptr %56, i64 0, i32 43
  %58 = load i64, ptr %tif_rawcc69, align 8
  %inc70 = add nsw i64 %58, 1
  store i64 %inc70, ptr %tif_rawcc69, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %while.cond51, !llvm.loop !46

while.end71:                                      ; preds = %while.cond51
  %59 = load i32, ptr %code, align 4
  %60 = load i32, ptr %length, align 4
  %idxprom72 = zext i32 %60 to i64
  %arrayidx73 = getelementptr inbounds [9 x i32], ptr @_msbmask, i64 0, i64 %idxprom72
  %61 = load i32, ptr %arrayidx73, align 4
  %and74 = and i32 %59, %61
  %62 = load i32, ptr %bit, align 4
  %sub75 = sub i32 %62, %60
  %shl76 = shl i32 %and74, %sub75
  %63 = load i32, ptr %data, align 4
  %or77 = or i32 %63, %shl76
  store i32 %or77, ptr %data, align 4
  %64 = load i32, ptr %length, align 4
  %65 = load i32, ptr %bit, align 4
  %sub78 = sub i32 %65, %64
  store i32 %sub78, ptr %bit, align 4
  %cmp79 = icmp eq i32 %65, %64
  br i1 %cmp79, label %if.then81, label %if.end94

if.then81:                                        ; preds = %while.end71
  %66 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc82 = getelementptr inbounds %struct.tiff, ptr %66, i64 0, i32 43
  %67 = load i64, ptr %tif_rawcc82, align 8
  %tif_rawdatasize83 = getelementptr inbounds %struct.tiff, ptr %66, i64 0, i32 41
  %68 = load i64, ptr %tif_rawdatasize83, align 8
  %cmp84.not = icmp slt i64 %67, %68
  br i1 %cmp84.not, label %if.end88, label %if.then86

if.then86:                                        ; preds = %if.then81
  %69 = load ptr, ptr %tif.addr, align 8
  %call87 = call i32 @TIFFFlushData1(ptr noundef %69) #5
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.then81
  %70 = load i32, ptr %data, align 4
  %conv89 = trunc i32 %70 to i8
  %71 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp90 = getelementptr inbounds %struct.tiff, ptr %71, i64 0, i32 42
  %72 = load ptr, ptr %tif_rawcp90, align 8
  %incdec.ptr91 = getelementptr inbounds i8, ptr %72, i64 1
  store ptr %incdec.ptr91, ptr %tif_rawcp90, align 8
  store i8 %conv89, ptr %72, align 1
  %tif_rawcc92 = getelementptr inbounds %struct.tiff, ptr %71, i64 0, i32 43
  %73 = load i64, ptr %tif_rawcc92, align 8
  %inc93 = add nsw i64 %73, 1
  store i64 %inc93, ptr %tif_rawcc92, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.end88, %while.end71
  %74 = load i32, ptr %data, align 4
  %75 = load ptr, ptr %sp, align 8
  %data95 = getelementptr inbounds %struct.Fax3EncodeState, ptr %75, i64 0, i32 1
  store i32 %74, ptr %data95, align 8
  %76 = load i32, ptr %bit, align 4
  %bit96 = getelementptr inbounds %struct.Fax3EncodeState, ptr %75, i64 0, i32 2
  store i32 %76, ptr %bit96, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax3Encode1DRow(ptr noundef %tif, ptr noundef %bp, i64 noundef %bits) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %bits.addr = alloca i64, align 8
  %sp = alloca ptr, align 8
  %bs = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i64 %bits, ptr %bits.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  store i64 0, ptr %bs, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %1 = load ptr, ptr %bp.addr, align 8
  %2 = load i64, ptr %bs, align 8
  %3 = load i64, ptr %bits.addr, align 8
  %call = call i64 @find0span(ptr noundef %1, i64 noundef %2, i64 noundef %3)
  %4 = load ptr, ptr %tif.addr, align 8
  call void @putspan(ptr noundef %4, i64 noundef %call, ptr noundef nonnull @TIFFFaxWhiteCodes)
  %add = add i64 %2, %call
  store i64 %add, ptr %bs, align 8
  %cmp.not = icmp ult i64 %add, %3
  br i1 %cmp.not, label %if.end, label %for.end

if.end:                                           ; preds = %for.cond
  %5 = load ptr, ptr %bp.addr, align 8
  %6 = load i64, ptr %bs, align 8
  %7 = load i64, ptr %bits.addr, align 8
  %call1 = call i64 @find1span(ptr noundef %5, i64 noundef %6, i64 noundef %7)
  %8 = load ptr, ptr %tif.addr, align 8
  call void @putspan(ptr noundef %8, i64 noundef %call1, ptr noundef nonnull @TIFFFaxBlackCodes)
  %add2 = add i64 %6, %call1
  store i64 %add2, ptr %bs, align 8
  %cmp3.not = icmp ult i64 %add2, %7
  br i1 %cmp3.not, label %for.cond, label %for.end

for.end:                                          ; preds = %if.end, %for.cond
  %9 = load ptr, ptr %sp, align 8
  %10 = load i32, ptr %9, align 8
  %and = and i32 %10, 12
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end42, label %if.then6

if.then6:                                         ; preds = %for.end
  %11 = load ptr, ptr %sp, align 8
  %bit = getelementptr inbounds %struct.Fax3EncodeState, ptr %11, i64 0, i32 2
  %12 = load i32, ptr %bit, align 4
  %cmp7.not = icmp eq i32 %12, 8
  br i1 %cmp7.not, label %if.end16, label %if.then8

if.then8:                                         ; preds = %if.then6
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %13, i64 0, i32 43
  %14 = load i64, ptr %tif_rawcc, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %13, i64 0, i32 41
  %15 = load i64, ptr %tif_rawdatasize, align 8
  %cmp9.not = icmp slt i64 %14, %15
  br i1 %cmp9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.then8
  %16 = load ptr, ptr %tif.addr, align 8
  %call11 = call i32 @TIFFFlushData1(ptr noundef %16) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then8
  %17 = load ptr, ptr %sp, align 8
  %data = getelementptr inbounds %struct.Fax3EncodeState, ptr %17, i64 0, i32 1
  %18 = load i32, ptr %data, align 8
  %conv = trunc i32 %18 to i8
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %19, i64 0, i32 42
  %20 = load ptr, ptr %tif_rawcp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %incdec.ptr, ptr %tif_rawcp, align 8
  store i8 %conv, ptr %20, align 1
  %tif_rawcc13 = getelementptr inbounds %struct.tiff, ptr %19, i64 0, i32 43
  %21 = load i64, ptr %tif_rawcc13, align 8
  %inc = add nsw i64 %21, 1
  store i64 %inc, ptr %tif_rawcc13, align 8
  %22 = load ptr, ptr %sp, align 8
  %data14 = getelementptr inbounds %struct.Fax3EncodeState, ptr %22, i64 0, i32 1
  store i32 0, ptr %data14, align 8
  %bit15 = getelementptr inbounds %struct.Fax3EncodeState, ptr %22, i64 0, i32 2
  store i32 8, ptr %bit15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end12, %if.then6
  %23 = load ptr, ptr %sp, align 8
  %24 = load i32, ptr %23, align 8
  %and19 = and i32 %24, 8
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end42, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end16
  %25 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp21 = getelementptr inbounds %struct.tiff, ptr %25, i64 0, i32 42
  %26 = load ptr, ptr %tif_rawcp21, align 8
  %27 = ptrtoint ptr %26 to i64
  %and22 = and i64 %27, 1
  %cmp23 = icmp eq i64 %and22, 0
  br i1 %cmp23, label %if.end42, label %if.then25

if.then25:                                        ; preds = %land.lhs.true
  %28 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc26 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 43
  %29 = load i64, ptr %tif_rawcc26, align 8
  %tif_rawdatasize27 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 41
  %30 = load i64, ptr %tif_rawdatasize27, align 8
  %cmp28.not = icmp slt i64 %29, %30
  br i1 %cmp28.not, label %if.end32, label %if.then30

if.then30:                                        ; preds = %if.then25
  %31 = load ptr, ptr %tif.addr, align 8
  %call31 = call i32 @TIFFFlushData1(ptr noundef %31) #5
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.then25
  %32 = load ptr, ptr %sp, align 8
  %data33 = getelementptr inbounds %struct.Fax3EncodeState, ptr %32, i64 0, i32 1
  %33 = load i32, ptr %data33, align 8
  %conv34 = trunc i32 %33 to i8
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp35 = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 42
  %35 = load ptr, ptr %tif_rawcp35, align 8
  %incdec.ptr36 = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %incdec.ptr36, ptr %tif_rawcp35, align 8
  store i8 %conv34, ptr %35, align 1
  %tif_rawcc37 = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 43
  %36 = load i64, ptr %tif_rawcc37, align 8
  %inc38 = add nsw i64 %36, 1
  store i64 %inc38, ptr %tif_rawcc37, align 8
  %37 = load ptr, ptr %sp, align 8
  %data39 = getelementptr inbounds %struct.Fax3EncodeState, ptr %37, i64 0, i32 1
  store i32 0, ptr %data39, align 8
  %bit40 = getelementptr inbounds %struct.Fax3EncodeState, ptr %37, i64 0, i32 2
  store i32 8, ptr %bit40, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.end16, %land.lhs.true, %if.end32, %for.end
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax3Encode2DRow(ptr noundef %tif, ptr noundef %bp, ptr noundef %rp, i64 noundef %bits) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %rp.addr = alloca ptr, align 8
  %bits.addr = alloca i64, align 8
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  %b1 = alloca i64, align 8
  %a2 = alloca i64, align 8
  %b2 = alloca i64, align 8
  %d = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store ptr %rp, ptr %rp.addr, align 8
  store i64 %bits, ptr %bits.addr, align 8
  store i64 0, ptr %a0, align 8
  %0 = load i8, ptr %bp, align 1
  %cmp.not = icmp sgt i8 %0, -1
  br i1 %cmp.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load ptr, ptr %bp.addr, align 8
  %2 = load i64, ptr %bits.addr, align 8
  %call = call i64 @find0span(ptr noundef %1, i64 noundef 0, i64 noundef %2)
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i64 [ %call, %cond.false ], [ 0, %entry ]
  store i64 %cond, ptr %a1, align 8
  %3 = load ptr, ptr %rp.addr, align 8
  %4 = load i8, ptr %3, align 1
  %cmp6.not = icmp sgt i8 %4, -1
  br i1 %cmp6.not, label %cond.false9, label %cond.end12

cond.false9:                                      ; preds = %cond.end
  %5 = load ptr, ptr %rp.addr, align 8
  %6 = load i64, ptr %bits.addr, align 8
  %call10 = call i64 @find0span(ptr noundef %5, i64 noundef 0, i64 noundef %6)
  br label %cond.end12

cond.end12:                                       ; preds = %cond.end, %cond.false9
  %cond13 = phi i64 [ %call10, %cond.false9 ], [ 0, %cond.end ]
  br label %for.cond

for.cond:                                         ; preds = %cond.end144, %cond.end12
  %storemerge = phi i64 [ %cond13, %cond.end12 ], [ %add146, %cond.end144 ]
  store i64 %storemerge, ptr %b1, align 8
  %7 = load i64, ptr %bits.addr, align 8
  %cmp14 = icmp ult i64 %storemerge, %7
  br i1 %cmp14, label %cond.true16, label %cond.false30

cond.true16:                                      ; preds = %for.cond
  %8 = load i64, ptr %b1, align 8
  %9 = load ptr, ptr %rp.addr, align 8
  %shr17 = lshr i64 %8, 3
  %arrayidx18 = getelementptr inbounds i8, ptr %9, i64 %shr17
  %10 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %10 to i32
  %11 = trunc i64 %8 to i32
  %12 = and i32 %11, 7
  %sh_prom = xor i32 %12, 7
  %13 = shl i32 1, %sh_prom
  %14 = and i32 %13, %conv19
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %cond.false25, label %cond.true23

cond.true23:                                      ; preds = %cond.true16
  %15 = load ptr, ptr %rp.addr, align 8
  %16 = load i64, ptr %b1, align 8
  %17 = load i64, ptr %bits.addr, align 8
  %call24 = call i64 @find1span(ptr noundef %15, i64 noundef %16, i64 noundef %17)
  br label %cond.end27

cond.false25:                                     ; preds = %cond.true16
  %18 = load ptr, ptr %rp.addr, align 8
  %19 = load i64, ptr %b1, align 8
  %20 = load i64, ptr %bits.addr, align 8
  %call26 = call i64 @find0span(ptr noundef %18, i64 noundef %19, i64 noundef %20)
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false25, %cond.true23
  %cond28 = phi i64 [ %call24, %cond.true23 ], [ %call26, %cond.false25 ]
  %add29 = add i64 %8, %cond28
  br label %cond.end31

cond.false30:                                     ; preds = %for.cond
  %21 = load i64, ptr %bits.addr, align 8
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false30, %cond.end27
  %cond32 = phi i64 [ %add29, %cond.end27 ], [ %21, %cond.false30 ]
  store i64 %cond32, ptr %b2, align 8
  %22 = load i64, ptr %a1, align 8
  %cmp33.not = icmp ult i64 %cond32, %22
  br i1 %cmp33.not, label %if.else91, label %if.then

if.then:                                          ; preds = %cond.end31
  %23 = load i64, ptr %b1, align 8
  %24 = load i64, ptr %a1, align 8
  %sub35 = sub i64 %23, %24
  store i64 %sub35, ptr %d, align 8
  %cmp36 = icmp sgt i64 %sub35, -4
  %25 = load i64, ptr %d, align 8
  %cmp38 = icmp slt i64 %25, 4
  %or.cond = select i1 %cmp36, i1 %cmp38, i1 false
  br i1 %or.cond, label %if.else83, label %if.then40

if.then40:                                        ; preds = %if.then
  %26 = load i64, ptr %a1, align 8
  %27 = load i64, ptr %bits.addr, align 8
  %cmp41 = icmp ult i64 %26, %27
  br i1 %cmp41, label %cond.true43, label %cond.false60

cond.true43:                                      ; preds = %if.then40
  %28 = load i64, ptr %a1, align 8
  %29 = load ptr, ptr %bp.addr, align 8
  %shr44 = lshr i64 %28, 3
  %arrayidx45 = getelementptr inbounds i8, ptr %29, i64 %shr44
  %30 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %30 to i32
  %31 = trunc i64 %28 to i32
  %32 = and i32 %31, 7
  %sh_prom49 = xor i32 %32, 7
  %33 = shl i32 1, %sh_prom49
  %34 = and i32 %33, %conv46
  %tobool52.not = icmp eq i32 %34, 0
  br i1 %tobool52.not, label %cond.false55, label %cond.true53

cond.true53:                                      ; preds = %cond.true43
  %35 = load ptr, ptr %bp.addr, align 8
  %36 = load i64, ptr %a1, align 8
  %37 = load i64, ptr %bits.addr, align 8
  %call54 = call i64 @find1span(ptr noundef %35, i64 noundef %36, i64 noundef %37)
  br label %cond.end57

cond.false55:                                     ; preds = %cond.true43
  %38 = load ptr, ptr %bp.addr, align 8
  %39 = load i64, ptr %a1, align 8
  %40 = load i64, ptr %bits.addr, align 8
  %call56 = call i64 @find0span(ptr noundef %38, i64 noundef %39, i64 noundef %40)
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false55, %cond.true53
  %cond58 = phi i64 [ %call54, %cond.true53 ], [ %call56, %cond.false55 ]
  %add59 = add i64 %28, %cond58
  br label %cond.end61

cond.false60:                                     ; preds = %if.then40
  %41 = load i64, ptr %bits.addr, align 8
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false60, %cond.end57
  %cond62 = phi i64 [ %add59, %cond.end57 ], [ %41, %cond.false60 ]
  store i64 %cond62, ptr %a2, align 8
  %42 = load ptr, ptr %tif.addr, align 8
  call void @Fax3PutBits(ptr noundef %42, i32 noundef 1, i32 noundef 3)
  %43 = load i64, ptr %a0, align 8
  %44 = load i64, ptr %a1, align 8
  %add65 = sub i64 0, %44
  %cmp66 = icmp eq i64 %43, %add65
  br i1 %cmp66, label %if.then78, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end61
  %45 = load ptr, ptr %bp.addr, align 8
  %46 = load i64, ptr %a0, align 8
  %shr68 = lshr i64 %46, 3
  %arrayidx69 = getelementptr inbounds i8, ptr %45, i64 %shr68
  %47 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %47 to i32
  %48 = trunc i64 %46 to i32
  %49 = and i32 %48, 7
  %sh_prom73 = xor i32 %49, 7
  %50 = shl i32 1, %sh_prom73
  %51 = and i32 %50, %conv70
  %cmp76 = icmp eq i32 %51, 0
  br i1 %cmp76, label %if.then78, label %if.else

if.then78:                                        ; preds = %lor.lhs.false, %cond.end61
  %52 = load ptr, ptr %tif.addr, align 8
  %53 = load i64, ptr %a1, align 8
  %54 = load i64, ptr %a0, align 8
  %sub79 = sub i64 %53, %54
  call void @putspan(ptr noundef %52, i64 noundef %sub79, ptr noundef nonnull @TIFFFaxWhiteCodes)
  %55 = load i64, ptr %a2, align 8
  %sub80 = sub i64 %55, %53
  call void @putspan(ptr noundef %52, i64 noundef %sub80, ptr noundef nonnull @TIFFFaxBlackCodes)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %56 = load ptr, ptr %tif.addr, align 8
  %57 = load i64, ptr %a1, align 8
  %58 = load i64, ptr %a0, align 8
  %sub81 = sub i64 %57, %58
  call void @putspan(ptr noundef %56, i64 noundef %sub81, ptr noundef nonnull @TIFFFaxBlackCodes)
  %59 = load i64, ptr %a2, align 8
  %sub82 = sub i64 %59, %57
  call void @putspan(ptr noundef %56, i64 noundef %sub82, ptr noundef nonnull @TIFFFaxWhiteCodes)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then78
  %60 = load i64, ptr %a2, align 8
  br label %if.end94

if.else83:                                        ; preds = %if.then
  %61 = load ptr, ptr %tif.addr, align 8
  %62 = load i64, ptr %d, align 8
  %add84 = add nsw i64 %62, 3
  %code = getelementptr inbounds [7 x %struct.tableentry], ptr @vcodes, i64 0, i64 %add84, i32 1
  %63 = load i16, ptr %code, align 2
  %conv86 = zext i16 %63 to i32
  %add87 = add nsw i64 %62, 3
  %arrayidx88 = getelementptr inbounds [7 x %struct.tableentry], ptr @vcodes, i64 0, i64 %add87
  %64 = load i16, ptr %arrayidx88, align 2
  %conv89 = zext i16 %64 to i32
  call void @Fax3PutBits(ptr noundef %61, i32 noundef %conv86, i32 noundef %conv89)
  %65 = load i64, ptr %a1, align 8
  br label %if.end94

if.else91:                                        ; preds = %cond.end31
  %66 = load ptr, ptr %tif.addr, align 8
  call void @Fax3PutBits(ptr noundef %66, i32 noundef 1, i32 noundef 4)
  %67 = load i64, ptr %b2, align 8
  br label %if.end94

if.end94:                                         ; preds = %if.end, %if.else83, %if.else91
  %storemerge2 = phi i64 [ %67, %if.else91 ], [ %60, %if.end ], [ %65, %if.else83 ]
  store i64 %storemerge2, ptr %a0, align 8
  %68 = load i64, ptr %bits.addr, align 8
  %cmp95.not = icmp ult i64 %storemerge2, %68
  br i1 %cmp95.not, label %if.end98, label %for.end

if.end98:                                         ; preds = %if.end94
  %69 = load i64, ptr %a0, align 8
  %70 = load ptr, ptr %bp.addr, align 8
  %shr99 = lshr i64 %69, 3
  %arrayidx100 = getelementptr inbounds i8, ptr %70, i64 %shr99
  %71 = load i8, ptr %arrayidx100, align 1
  %conv101 = zext i8 %71 to i32
  %72 = trunc i64 %69 to i32
  %73 = and i32 %72, 7
  %sh_prom104 = xor i32 %73, 7
  %74 = shl i32 1, %sh_prom104
  %75 = and i32 %74, %conv101
  %tobool107.not = icmp eq i32 %75, 0
  br i1 %tobool107.not, label %cond.false110, label %cond.true108

cond.true108:                                     ; preds = %if.end98
  %76 = load ptr, ptr %bp.addr, align 8
  %77 = load i64, ptr %a0, align 8
  %78 = load i64, ptr %bits.addr, align 8
  %call109 = call i64 @find1span(ptr noundef %76, i64 noundef %77, i64 noundef %78)
  br label %cond.end112

cond.false110:                                    ; preds = %if.end98
  %79 = load ptr, ptr %bp.addr, align 8
  %80 = load i64, ptr %a0, align 8
  %81 = load i64, ptr %bits.addr, align 8
  %call111 = call i64 @find0span(ptr noundef %79, i64 noundef %80, i64 noundef %81)
  br label %cond.end112

cond.end112:                                      ; preds = %cond.false110, %cond.true108
  %cond113 = phi i64 [ %call109, %cond.true108 ], [ %call111, %cond.false110 ]
  %add114 = add i64 %69, %cond113
  store i64 %add114, ptr %a1, align 8
  %82 = load i64, ptr %a0, align 8
  %83 = load ptr, ptr %bp.addr, align 8
  %shr115 = lshr i64 %82, 3
  %arrayidx116 = getelementptr inbounds i8, ptr %83, i64 %shr115
  %84 = load i8, ptr %arrayidx116, align 1
  %conv117 = zext i8 %84 to i32
  %85 = trunc i64 %82 to i32
  %86 = and i32 %85, 7
  %sh_prom120 = xor i32 %86, 7
  %87 = shl i32 1, %sh_prom120
  %88 = and i32 %87, %conv117
  %tobool123.not = icmp eq i32 %88, 0
  br i1 %tobool123.not, label %cond.true124, label %cond.false126

cond.true124:                                     ; preds = %cond.end112
  %89 = load ptr, ptr %rp.addr, align 8
  %90 = load i64, ptr %a0, align 8
  %91 = load i64, ptr %bits.addr, align 8
  %call125 = call i64 @find1span(ptr noundef %89, i64 noundef %90, i64 noundef %91)
  br label %cond.end128

cond.false126:                                    ; preds = %cond.end112
  %92 = load ptr, ptr %rp.addr, align 8
  %93 = load i64, ptr %a0, align 8
  %94 = load i64, ptr %bits.addr, align 8
  %call127 = call i64 @find0span(ptr noundef %92, i64 noundef %93, i64 noundef %94)
  br label %cond.end128

cond.end128:                                      ; preds = %cond.false126, %cond.true124
  %cond129 = phi i64 [ %call125, %cond.true124 ], [ %call127, %cond.false126 ]
  %add130 = add i64 %82, %cond129
  store i64 %add130, ptr %b1, align 8
  %95 = load ptr, ptr %bp.addr, align 8
  %96 = load i64, ptr %a0, align 8
  %shr131 = lshr i64 %96, 3
  %arrayidx132 = getelementptr inbounds i8, ptr %95, i64 %shr131
  %97 = load i8, ptr %arrayidx132, align 1
  %conv133 = zext i8 %97 to i32
  %98 = trunc i64 %96 to i32
  %99 = and i32 %98, 7
  %sh_prom136 = xor i32 %99, 7
  %100 = shl i32 1, %sh_prom136
  %101 = and i32 %100, %conv133
  %tobool139.not = icmp eq i32 %101, 0
  br i1 %tobool139.not, label %cond.false142, label %cond.true140

cond.true140:                                     ; preds = %cond.end128
  %102 = load ptr, ptr %rp.addr, align 8
  %103 = load i64, ptr %b1, align 8
  %104 = load i64, ptr %bits.addr, align 8
  %call141 = call i64 @find1span(ptr noundef %102, i64 noundef %103, i64 noundef %104)
  br label %cond.end144

cond.false142:                                    ; preds = %cond.end128
  %105 = load ptr, ptr %rp.addr, align 8
  %106 = load i64, ptr %b1, align 8
  %107 = load i64, ptr %bits.addr, align 8
  %call143 = call i64 @find0span(ptr noundef %105, i64 noundef %106, i64 noundef %107)
  br label %cond.end144

cond.end144:                                      ; preds = %cond.false142, %cond.true140
  %cond145 = phi i64 [ %call141, %cond.true140 ], [ %call143, %cond.false142 ]
  %add146 = add i64 %add130, %cond145
  br label %for.cond

for.end:                                          ; preds = %if.end94
  ret i32 1
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal i64 @find0span(ptr noundef %bp, i64 noundef %bs, i64 noundef %be) #0 {
entry:
  %retval = alloca i64, align 8
  %bp.addr = alloca ptr, align 8
  %bs.addr = alloca i64, align 8
  %bits = alloca i64, align 8
  %n = alloca i64, align 8
  %span = alloca i64, align 8
  %lp = alloca ptr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i64 %bs, ptr %bs.addr, align 8
  %sub = sub nsw i64 %be, %bs
  store i64 %sub, ptr %bits, align 8
  %shr = ashr i64 %bs, 3
  %add.ptr = getelementptr inbounds i8, ptr %bp, i64 %shr
  store ptr %add.ptr, ptr %bp.addr, align 8
  %cmp = icmp sgt i64 %sub, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %0 = load i64, ptr %bs.addr, align 8
  %and = and i64 %0, 7
  store i64 %and, ptr %n, align 8
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %1 = load ptr, ptr %bp.addr, align 8
  %2 = load i8, ptr %1, align 1
  %conv = zext i8 %2 to i32
  %3 = load i64, ptr %n, align 8
  %sh_prom = trunc i64 %3 to i32
  %shl = shl i32 %conv, %sh_prom
  %and1 = and i32 %shl, 255
  %idxprom = zext i32 %and1 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %4 to i64
  store i64 %conv2, ptr %span, align 8
  %5 = load i64, ptr %n, align 8
  %sub3 = sub nsw i64 8, %5
  %cmp4 = icmp slt i64 %sub3, %conv2
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %6 = load i64, ptr %n, align 8
  %sub7 = sub nsw i64 8, %6
  store i64 %sub7, ptr %span, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %7 = load i64, ptr %span, align 8
  %8 = load i64, ptr %bits, align 8
  %cmp8 = icmp sgt i64 %7, %8
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %9 = load i64, ptr %bits, align 8
  store i64 %9, ptr %span, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %10 = load i64, ptr %n, align 8
  %11 = load i64, ptr %span, align 8
  %add = add nsw i64 %10, %11
  %cmp12 = icmp slt i64 %add, 8
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  %12 = load i64, ptr %span, align 8
  store i64 %12, ptr %retval, align 8
  br label %return

if.end15:                                         ; preds = %if.end11
  %13 = load i64, ptr %span, align 8
  %14 = load i64, ptr %bits, align 8
  %sub16 = sub nsw i64 %14, %13
  store i64 %sub16, ptr %bits, align 8
  %15 = load ptr, ptr %bp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %incdec.ptr, ptr %bp.addr, align 8
  br label %if.end17

if.else:                                          ; preds = %land.lhs.true, %entry
  store i64 0, ptr %span, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end15
  %16 = load i64, ptr %bits, align 8
  %cmp18 = icmp ugt i64 %16, 127
  br i1 %cmp18, label %while.cond, label %if.end46

while.cond:                                       ; preds = %if.end17, %if.end32
  %17 = load ptr, ptr %bp.addr, align 8
  %18 = ptrtoint ptr %17 to i64
  %and21 = and i64 %18, 7
  %cmp22.not = icmp eq i64 %and21, 0
  br i1 %cmp22.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %19 = load ptr, ptr %bp.addr, align 8
  %20 = load i8, ptr %19, align 1
  %cmp25.not = icmp eq i8 %20, 0
  br i1 %cmp25.not, label %if.end32, label %if.then27

if.then27:                                        ; preds = %while.body
  %21 = load i64, ptr %span, align 8
  %22 = load ptr, ptr %bp.addr, align 8
  %23 = load i8, ptr %22, align 1
  %idxprom28 = zext i8 %23 to i64
  %arrayidx29 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %idxprom28
  %24 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %24 to i64
  %add31 = add nsw i64 %21, %conv30
  store i64 %add31, ptr %retval, align 8
  br label %return

if.end32:                                         ; preds = %while.body
  %25 = load i64, ptr %span, align 8
  %add33 = add nsw i64 %25, 8
  store i64 %add33, ptr %span, align 8
  %26 = load i64, ptr %bits, align 8
  %sub34 = add nsw i64 %26, -8
  store i64 %sub34, ptr %bits, align 8
  %27 = load ptr, ptr %bp.addr, align 8
  %incdec.ptr35 = getelementptr inbounds i8, ptr %27, i64 1
  store ptr %incdec.ptr35, ptr %bp.addr, align 8
  br label %while.cond, !llvm.loop !47

while.end:                                        ; preds = %while.cond
  %28 = load ptr, ptr %bp.addr, align 8
  br label %while.cond36

while.cond36:                                     ; preds = %while.body41, %while.end
  %storemerge = phi ptr [ %28, %while.end ], [ %incdec.ptr44, %while.body41 ]
  store ptr %storemerge, ptr %lp, align 8
  %29 = load i64, ptr %bits, align 8
  %cmp37 = icmp ugt i64 %29, 63
  br i1 %cmp37, label %land.rhs, label %while.end45

land.rhs:                                         ; preds = %while.cond36
  %30 = load ptr, ptr %lp, align 8
  %31 = load i64, ptr %30, align 8
  %cmp39 = icmp eq i64 %31, 0
  br i1 %cmp39, label %while.body41, label %while.end45

while.body41:                                     ; preds = %land.rhs
  %32 = load i64, ptr %span, align 8
  %add42 = add i64 %32, 64
  store i64 %add42, ptr %span, align 8
  %33 = load i64, ptr %bits, align 8
  %sub43 = add i64 %33, -64
  store i64 %sub43, ptr %bits, align 8
  %34 = load ptr, ptr %lp, align 8
  %incdec.ptr44 = getelementptr inbounds i64, ptr %34, i64 1
  br label %while.cond36, !llvm.loop !48

while.end45:                                      ; preds = %while.cond36, %land.rhs
  %35 = load ptr, ptr %lp, align 8
  store ptr %35, ptr %bp.addr, align 8
  br label %if.end46

if.end46:                                         ; preds = %while.end45, %if.end17
  br label %while.cond47

while.cond47:                                     ; preds = %if.end59, %if.end46
  %36 = load i64, ptr %bits, align 8
  %cmp48 = icmp sgt i64 %36, 7
  br i1 %cmp48, label %while.body50, label %while.end63

while.body50:                                     ; preds = %while.cond47
  %37 = load ptr, ptr %bp.addr, align 8
  %38 = load i8, ptr %37, align 1
  %cmp52.not = icmp eq i8 %38, 0
  br i1 %cmp52.not, label %if.end59, label %if.then54

if.then54:                                        ; preds = %while.body50
  %39 = load i64, ptr %span, align 8
  %40 = load ptr, ptr %bp.addr, align 8
  %41 = load i8, ptr %40, align 1
  %idxprom55 = zext i8 %41 to i64
  %arrayidx56 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %idxprom55
  %42 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %42 to i64
  %add58 = add nsw i64 %39, %conv57
  store i64 %add58, ptr %retval, align 8
  br label %return

if.end59:                                         ; preds = %while.body50
  %43 = load i64, ptr %span, align 8
  %add60 = add nsw i64 %43, 8
  store i64 %add60, ptr %span, align 8
  %44 = load i64, ptr %bits, align 8
  %sub61 = add nsw i64 %44, -8
  store i64 %sub61, ptr %bits, align 8
  %45 = load ptr, ptr %bp.addr, align 8
  %incdec.ptr62 = getelementptr inbounds i8, ptr %45, i64 1
  store ptr %incdec.ptr62, ptr %bp.addr, align 8
  br label %while.cond47, !llvm.loop !49

while.end63:                                      ; preds = %while.cond47
  %46 = load i64, ptr %bits, align 8
  %cmp64 = icmp sgt i64 %46, 0
  br i1 %cmp64, label %if.then66, label %if.end73

if.then66:                                        ; preds = %while.end63
  %47 = load ptr, ptr %bp.addr, align 8
  %48 = load i8, ptr %47, align 1
  %idxprom67 = zext i8 %48 to i64
  %arrayidx68 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %idxprom67
  %49 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %49 to i64
  store i64 %conv69, ptr %n, align 8
  %50 = load i64, ptr %bits, align 8
  %cmp70 = icmp slt i64 %50, %conv69
  %51 = load i64, ptr %bits, align 8
  %52 = load i64, ptr %n, align 8
  %cond = select i1 %cmp70, i64 %51, i64 %52
  %53 = load i64, ptr %span, align 8
  %add72 = add nsw i64 %53, %cond
  store i64 %add72, ptr %span, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.then66, %while.end63
  %54 = load i64, ptr %span, align 8
  store i64 %54, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end73, %if.then54, %if.then27, %if.then14
  %55 = load i64, ptr %retval, align 8
  ret i64 %55
}

; Function Attrs: nounwind ssp uwtable
define internal void @putspan(ptr noundef %tif, i64 noundef %span, ptr noundef %tab) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %span.addr = alloca i64, align 8
  %tab.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %bit = alloca i32, align 4
  %data = alloca i32, align 4
  %code = alloca i32, align 4
  %length = alloca i32, align 4
  %te = alloca ptr, align 8
  %te41 = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %span, ptr %span.addr, align 8
  store ptr %tab, ptr %tab.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %bit1 = getelementptr inbounds %struct.Fax3EncodeState, ptr %0, i64 0, i32 2
  %1 = load i32, ptr %bit1, align 4
  store i32 %1, ptr %bit, align 4
  %data2 = getelementptr inbounds %struct.Fax3EncodeState, ptr %0, i64 0, i32 1
  %2 = load i32, ptr %data2, align 8
  store i32 %2, ptr %data, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end34, %entry
  %3 = load i64, ptr %span.addr, align 8
  %cmp = icmp sgt i64 %3, 2623
  br i1 %cmp, label %while.body, label %while.end37

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %tab.addr, align 8
  %arrayidx = getelementptr inbounds %struct.tableentry, ptr %4, i64 103
  store ptr %arrayidx, ptr %te, align 8
  %code3 = getelementptr inbounds %struct.tableentry, ptr %4, i64 103, i32 1
  %5 = load i16, ptr %code3, align 2
  %conv = zext i16 %5 to i32
  store i32 %conv, ptr %code, align 4
  %6 = load i16, ptr %arrayidx, align 2
  %conv5 = zext i16 %6 to i32
  store i32 %conv5, ptr %length, align 4
  br label %while.cond6

while.cond6:                                      ; preds = %if.end, %while.body
  %7 = load i32, ptr %length, align 4
  %8 = load i32, ptr %bit, align 4
  %cmp7 = icmp ugt i32 %7, %8
  br i1 %cmp7, label %while.body9, label %while.end

while.body9:                                      ; preds = %while.cond6
  %9 = load i32, ptr %code, align 4
  %10 = load i32, ptr %length, align 4
  %11 = load i32, ptr %bit, align 4
  %sub = sub i32 %10, %11
  %shr = lshr i32 %9, %sub
  %12 = load i32, ptr %data, align 4
  %or = or i32 %12, %shr
  store i32 %or, ptr %data, align 4
  %13 = load i32, ptr %length, align 4
  %sub10 = sub i32 %13, %11
  store i32 %sub10, ptr %length, align 4
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %14, i64 0, i32 43
  %15 = load i64, ptr %tif_rawcc, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %14, i64 0, i32 41
  %16 = load i64, ptr %tif_rawdatasize, align 8
  %cmp11.not = icmp slt i64 %15, %16
  br i1 %cmp11.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body9
  %17 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %17) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body9
  %18 = load i32, ptr %data, align 4
  %conv13 = trunc i32 %18 to i8
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %19, i64 0, i32 42
  %20 = load ptr, ptr %tif_rawcp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %incdec.ptr, ptr %tif_rawcp, align 8
  store i8 %conv13, ptr %20, align 1
  %tif_rawcc14 = getelementptr inbounds %struct.tiff, ptr %19, i64 0, i32 43
  %21 = load i64, ptr %tif_rawcc14, align 8
  %inc = add nsw i64 %21, 1
  store i64 %inc, ptr %tif_rawcc14, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %while.cond6, !llvm.loop !50

while.end:                                        ; preds = %while.cond6
  %22 = load i32, ptr %code, align 4
  %23 = load i32, ptr %length, align 4
  %idxprom = zext i32 %23 to i64
  %arrayidx15 = getelementptr inbounds [9 x i32], ptr @_msbmask, i64 0, i64 %idxprom
  %24 = load i32, ptr %arrayidx15, align 4
  %and = and i32 %22, %24
  %25 = load i32, ptr %bit, align 4
  %sub16 = sub i32 %25, %23
  %shl = shl i32 %and, %sub16
  %26 = load i32, ptr %data, align 4
  %or17 = or i32 %26, %shl
  store i32 %or17, ptr %data, align 4
  %27 = load i32, ptr %length, align 4
  %28 = load i32, ptr %bit, align 4
  %sub18 = sub i32 %28, %27
  store i32 %sub18, ptr %bit, align 4
  %cmp19 = icmp eq i32 %28, %27
  br i1 %cmp19, label %if.then21, label %if.end34

if.then21:                                        ; preds = %while.end
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc22 = getelementptr inbounds %struct.tiff, ptr %29, i64 0, i32 43
  %30 = load i64, ptr %tif_rawcc22, align 8
  %tif_rawdatasize23 = getelementptr inbounds %struct.tiff, ptr %29, i64 0, i32 41
  %31 = load i64, ptr %tif_rawdatasize23, align 8
  %cmp24.not = icmp slt i64 %30, %31
  br i1 %cmp24.not, label %if.end28, label %if.then26

if.then26:                                        ; preds = %if.then21
  %32 = load ptr, ptr %tif.addr, align 8
  %call27 = call i32 @TIFFFlushData1(ptr noundef %32) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.then21
  %33 = load i32, ptr %data, align 4
  %conv29 = trunc i32 %33 to i8
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp30 = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 42
  %35 = load ptr, ptr %tif_rawcp30, align 8
  %incdec.ptr31 = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %incdec.ptr31, ptr %tif_rawcp30, align 8
  store i8 %conv29, ptr %35, align 1
  %tif_rawcc32 = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 43
  %36 = load i64, ptr %tif_rawcc32, align 8
  %inc33 = add nsw i64 %36, 1
  store i64 %inc33, ptr %tif_rawcc32, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end28, %while.end
  %37 = load ptr, ptr %te, align 8
  %runlen = getelementptr inbounds %struct.tableentry, ptr %37, i64 0, i32 2
  %38 = load i16, ptr %runlen, align 2
  %conv35 = sext i16 %38 to i64
  %39 = load i64, ptr %span.addr, align 8
  %sub36 = sub nsw i64 %39, %conv35
  store i64 %sub36, ptr %span.addr, align 8
  br label %while.cond, !llvm.loop !51

while.end37:                                      ; preds = %while.cond
  %40 = load i64, ptr %span.addr, align 8
  %cmp38 = icmp sgt i64 %40, 63
  br i1 %cmp38, label %if.then40, label %if.end101

if.then40:                                        ; preds = %while.end37
  %41 = load ptr, ptr %tab.addr, align 8
  %42 = load i64, ptr %span.addr, align 8
  %shr42 = ashr i64 %42, 6
  %add = add nsw i64 %shr42, 63
  %arrayidx43 = getelementptr inbounds %struct.tableentry, ptr %41, i64 %add
  store ptr %arrayidx43, ptr %te41, align 8
  %runlen44 = getelementptr inbounds %struct.tableentry, ptr %41, i64 %add, i32 2
  %43 = load i16, ptr %runlen44, align 2
  %conv45 = sext i16 %43 to i64
  %44 = load i64, ptr %span.addr, align 8
  %mul = and i64 %44, -64
  %cmp47.not = icmp eq i64 %mul, %conv45
  br i1 %cmp47.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then40
  call void @__assert_rtn(ptr noundef nonnull @__func__.putspan, ptr noundef nonnull @.str, i32 noundef 632, ptr noundef nonnull @.str.42) #4
  unreachable

cond.end:                                         ; preds = %if.then40
  %45 = load ptr, ptr %te41, align 8
  %code50 = getelementptr inbounds %struct.tableentry, ptr %45, i64 0, i32 1
  %46 = load i16, ptr %code50, align 2
  %conv51 = zext i16 %46 to i32
  store i32 %conv51, ptr %code, align 4
  %47 = load i16, ptr %45, align 2
  %conv53 = zext i16 %47 to i32
  store i32 %conv53, ptr %length, align 4
  br label %while.cond54

while.cond54:                                     ; preds = %if.end68, %cond.end
  %48 = load i32, ptr %length, align 4
  %49 = load i32, ptr %bit, align 4
  %cmp55 = icmp ugt i32 %48, %49
  br i1 %cmp55, label %while.body57, label %while.end74

while.body57:                                     ; preds = %while.cond54
  %50 = load i32, ptr %code, align 4
  %51 = load i32, ptr %length, align 4
  %52 = load i32, ptr %bit, align 4
  %sub58 = sub i32 %51, %52
  %shr59 = lshr i32 %50, %sub58
  %53 = load i32, ptr %data, align 4
  %or60 = or i32 %53, %shr59
  store i32 %or60, ptr %data, align 4
  %54 = load i32, ptr %length, align 4
  %sub61 = sub i32 %54, %52
  store i32 %sub61, ptr %length, align 4
  %55 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc62 = getelementptr inbounds %struct.tiff, ptr %55, i64 0, i32 43
  %56 = load i64, ptr %tif_rawcc62, align 8
  %tif_rawdatasize63 = getelementptr inbounds %struct.tiff, ptr %55, i64 0, i32 41
  %57 = load i64, ptr %tif_rawdatasize63, align 8
  %cmp64.not = icmp slt i64 %56, %57
  br i1 %cmp64.not, label %if.end68, label %if.then66

if.then66:                                        ; preds = %while.body57
  %58 = load ptr, ptr %tif.addr, align 8
  %call67 = call i32 @TIFFFlushData1(ptr noundef %58) #5
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %while.body57
  %59 = load i32, ptr %data, align 4
  %conv69 = trunc i32 %59 to i8
  %60 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp70 = getelementptr inbounds %struct.tiff, ptr %60, i64 0, i32 42
  %61 = load ptr, ptr %tif_rawcp70, align 8
  %incdec.ptr71 = getelementptr inbounds i8, ptr %61, i64 1
  store ptr %incdec.ptr71, ptr %tif_rawcp70, align 8
  store i8 %conv69, ptr %61, align 1
  %tif_rawcc72 = getelementptr inbounds %struct.tiff, ptr %60, i64 0, i32 43
  %62 = load i64, ptr %tif_rawcc72, align 8
  %inc73 = add nsw i64 %62, 1
  store i64 %inc73, ptr %tif_rawcc72, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %while.cond54, !llvm.loop !52

while.end74:                                      ; preds = %while.cond54
  %63 = load i32, ptr %code, align 4
  %64 = load i32, ptr %length, align 4
  %idxprom75 = zext i32 %64 to i64
  %arrayidx76 = getelementptr inbounds [9 x i32], ptr @_msbmask, i64 0, i64 %idxprom75
  %65 = load i32, ptr %arrayidx76, align 4
  %and77 = and i32 %63, %65
  %66 = load i32, ptr %bit, align 4
  %sub78 = sub i32 %66, %64
  %shl79 = shl i32 %and77, %sub78
  %67 = load i32, ptr %data, align 4
  %or80 = or i32 %67, %shl79
  store i32 %or80, ptr %data, align 4
  %68 = load i32, ptr %length, align 4
  %69 = load i32, ptr %bit, align 4
  %sub81 = sub i32 %69, %68
  store i32 %sub81, ptr %bit, align 4
  %cmp82 = icmp eq i32 %69, %68
  br i1 %cmp82, label %if.then84, label %if.end97

if.then84:                                        ; preds = %while.end74
  %70 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc85 = getelementptr inbounds %struct.tiff, ptr %70, i64 0, i32 43
  %71 = load i64, ptr %tif_rawcc85, align 8
  %tif_rawdatasize86 = getelementptr inbounds %struct.tiff, ptr %70, i64 0, i32 41
  %72 = load i64, ptr %tif_rawdatasize86, align 8
  %cmp87.not = icmp slt i64 %71, %72
  br i1 %cmp87.not, label %if.end91, label %if.then89

if.then89:                                        ; preds = %if.then84
  %73 = load ptr, ptr %tif.addr, align 8
  %call90 = call i32 @TIFFFlushData1(ptr noundef %73) #5
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %if.then84
  %74 = load i32, ptr %data, align 4
  %conv92 = trunc i32 %74 to i8
  %75 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp93 = getelementptr inbounds %struct.tiff, ptr %75, i64 0, i32 42
  %76 = load ptr, ptr %tif_rawcp93, align 8
  %incdec.ptr94 = getelementptr inbounds i8, ptr %76, i64 1
  store ptr %incdec.ptr94, ptr %tif_rawcp93, align 8
  store i8 %conv92, ptr %76, align 1
  %tif_rawcc95 = getelementptr inbounds %struct.tiff, ptr %75, i64 0, i32 43
  %77 = load i64, ptr %tif_rawcc95, align 8
  %inc96 = add nsw i64 %77, 1
  store i64 %inc96, ptr %tif_rawcc95, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.end91, %while.end74
  %78 = load ptr, ptr %te41, align 8
  %runlen98 = getelementptr inbounds %struct.tableentry, ptr %78, i64 0, i32 2
  %79 = load i16, ptr %runlen98, align 2
  %conv99 = sext i16 %79 to i64
  %80 = load i64, ptr %span.addr, align 8
  %sub100 = sub nsw i64 %80, %conv99
  store i64 %sub100, ptr %span.addr, align 8
  br label %if.end101

if.end101:                                        ; preds = %if.end97, %while.end37
  %81 = load ptr, ptr %tab.addr, align 8
  %82 = load i64, ptr %span.addr, align 8
  %code103 = getelementptr inbounds %struct.tableentry, ptr %81, i64 %82, i32 1
  %83 = load i16, ptr %code103, align 2
  %conv104 = zext i16 %83 to i32
  store i32 %conv104, ptr %code, align 4
  %arrayidx105 = getelementptr inbounds %struct.tableentry, ptr %81, i64 %82
  %84 = load i16, ptr %arrayidx105, align 2
  %conv107 = zext i16 %84 to i32
  store i32 %conv107, ptr %length, align 4
  br label %while.cond108

while.cond108:                                    ; preds = %if.end122, %if.end101
  %85 = load i32, ptr %length, align 4
  %86 = load i32, ptr %bit, align 4
  %cmp109 = icmp ugt i32 %85, %86
  br i1 %cmp109, label %while.body111, label %while.end128

while.body111:                                    ; preds = %while.cond108
  %87 = load i32, ptr %code, align 4
  %88 = load i32, ptr %length, align 4
  %89 = load i32, ptr %bit, align 4
  %sub112 = sub i32 %88, %89
  %shr113 = lshr i32 %87, %sub112
  %90 = load i32, ptr %data, align 4
  %or114 = or i32 %90, %shr113
  store i32 %or114, ptr %data, align 4
  %91 = load i32, ptr %length, align 4
  %sub115 = sub i32 %91, %89
  store i32 %sub115, ptr %length, align 4
  %92 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc116 = getelementptr inbounds %struct.tiff, ptr %92, i64 0, i32 43
  %93 = load i64, ptr %tif_rawcc116, align 8
  %tif_rawdatasize117 = getelementptr inbounds %struct.tiff, ptr %92, i64 0, i32 41
  %94 = load i64, ptr %tif_rawdatasize117, align 8
  %cmp118.not = icmp slt i64 %93, %94
  br i1 %cmp118.not, label %if.end122, label %if.then120

if.then120:                                       ; preds = %while.body111
  %95 = load ptr, ptr %tif.addr, align 8
  %call121 = call i32 @TIFFFlushData1(ptr noundef %95) #5
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %while.body111
  %96 = load i32, ptr %data, align 4
  %conv123 = trunc i32 %96 to i8
  %97 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp124 = getelementptr inbounds %struct.tiff, ptr %97, i64 0, i32 42
  %98 = load ptr, ptr %tif_rawcp124, align 8
  %incdec.ptr125 = getelementptr inbounds i8, ptr %98, i64 1
  store ptr %incdec.ptr125, ptr %tif_rawcp124, align 8
  store i8 %conv123, ptr %98, align 1
  %tif_rawcc126 = getelementptr inbounds %struct.tiff, ptr %97, i64 0, i32 43
  %99 = load i64, ptr %tif_rawcc126, align 8
  %inc127 = add nsw i64 %99, 1
  store i64 %inc127, ptr %tif_rawcc126, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %while.cond108, !llvm.loop !53

while.end128:                                     ; preds = %while.cond108
  %100 = load i32, ptr %code, align 4
  %101 = load i32, ptr %length, align 4
  %idxprom129 = zext i32 %101 to i64
  %arrayidx130 = getelementptr inbounds [9 x i32], ptr @_msbmask, i64 0, i64 %idxprom129
  %102 = load i32, ptr %arrayidx130, align 4
  %and131 = and i32 %100, %102
  %103 = load i32, ptr %bit, align 4
  %sub132 = sub i32 %103, %101
  %shl133 = shl i32 %and131, %sub132
  %104 = load i32, ptr %data, align 4
  %or134 = or i32 %104, %shl133
  store i32 %or134, ptr %data, align 4
  %105 = load i32, ptr %length, align 4
  %106 = load i32, ptr %bit, align 4
  %sub135 = sub i32 %106, %105
  store i32 %sub135, ptr %bit, align 4
  %cmp136 = icmp eq i32 %106, %105
  br i1 %cmp136, label %if.then138, label %if.end151

if.then138:                                       ; preds = %while.end128
  %107 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc139 = getelementptr inbounds %struct.tiff, ptr %107, i64 0, i32 43
  %108 = load i64, ptr %tif_rawcc139, align 8
  %tif_rawdatasize140 = getelementptr inbounds %struct.tiff, ptr %107, i64 0, i32 41
  %109 = load i64, ptr %tif_rawdatasize140, align 8
  %cmp141.not = icmp slt i64 %108, %109
  br i1 %cmp141.not, label %if.end145, label %if.then143

if.then143:                                       ; preds = %if.then138
  %110 = load ptr, ptr %tif.addr, align 8
  %call144 = call i32 @TIFFFlushData1(ptr noundef %110) #5
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %if.then138
  %111 = load i32, ptr %data, align 4
  %conv146 = trunc i32 %111 to i8
  %112 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp147 = getelementptr inbounds %struct.tiff, ptr %112, i64 0, i32 42
  %113 = load ptr, ptr %tif_rawcp147, align 8
  %incdec.ptr148 = getelementptr inbounds i8, ptr %113, i64 1
  store ptr %incdec.ptr148, ptr %tif_rawcp147, align 8
  store i8 %conv146, ptr %113, align 1
  %tif_rawcc149 = getelementptr inbounds %struct.tiff, ptr %112, i64 0, i32 43
  %114 = load i64, ptr %tif_rawcc149, align 8
  %inc150 = add nsw i64 %114, 1
  store i64 %inc150, ptr %tif_rawcc149, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.end145, %while.end128
  %115 = load i32, ptr %data, align 4
  %116 = load ptr, ptr %sp, align 8
  %data152 = getelementptr inbounds %struct.Fax3EncodeState, ptr %116, i64 0, i32 1
  store i32 %115, ptr %data152, align 8
  %117 = load i32, ptr %bit, align 4
  %bit153 = getelementptr inbounds %struct.Fax3EncodeState, ptr %116, i64 0, i32 2
  store i32 %117, ptr %bit153, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @find1span(ptr noundef %bp, i64 noundef %bs, i64 noundef %be) #0 {
entry:
  %retval = alloca i64, align 8
  %bp.addr = alloca ptr, align 8
  %bs.addr = alloca i64, align 8
  %bits = alloca i64, align 8
  %n = alloca i64, align 8
  %span = alloca i64, align 8
  %lp = alloca ptr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i64 %bs, ptr %bs.addr, align 8
  %sub = sub nsw i64 %be, %bs
  store i64 %sub, ptr %bits, align 8
  %shr = ashr i64 %bs, 3
  %add.ptr = getelementptr inbounds i8, ptr %bp, i64 %shr
  store ptr %add.ptr, ptr %bp.addr, align 8
  %cmp = icmp sgt i64 %sub, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %0 = load i64, ptr %bs.addr, align 8
  %and = and i64 %0, 7
  store i64 %and, ptr %n, align 8
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %1 = load ptr, ptr %bp.addr, align 8
  %2 = load i8, ptr %1, align 1
  %conv = zext i8 %2 to i32
  %3 = load i64, ptr %n, align 8
  %sh_prom = trunc i64 %3 to i32
  %shl = shl i32 %conv, %sh_prom
  %and1 = and i32 %shl, 255
  %idxprom = zext i32 %and1 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %4 to i64
  store i64 %conv2, ptr %span, align 8
  %5 = load i64, ptr %n, align 8
  %sub3 = sub nsw i64 8, %5
  %cmp4 = icmp slt i64 %sub3, %conv2
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %6 = load i64, ptr %n, align 8
  %sub7 = sub nsw i64 8, %6
  store i64 %sub7, ptr %span, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %7 = load i64, ptr %span, align 8
  %8 = load i64, ptr %bits, align 8
  %cmp8 = icmp sgt i64 %7, %8
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %9 = load i64, ptr %bits, align 8
  store i64 %9, ptr %span, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %10 = load i64, ptr %n, align 8
  %11 = load i64, ptr %span, align 8
  %add = add nsw i64 %10, %11
  %cmp12 = icmp slt i64 %add, 8
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  %12 = load i64, ptr %span, align 8
  store i64 %12, ptr %retval, align 8
  br label %return

if.end15:                                         ; preds = %if.end11
  %13 = load i64, ptr %span, align 8
  %14 = load i64, ptr %bits, align 8
  %sub16 = sub nsw i64 %14, %13
  store i64 %sub16, ptr %bits, align 8
  %15 = load ptr, ptr %bp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %incdec.ptr, ptr %bp.addr, align 8
  br label %if.end17

if.else:                                          ; preds = %land.lhs.true, %entry
  store i64 0, ptr %span, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end15
  %16 = load i64, ptr %bits, align 8
  %cmp18 = icmp ugt i64 %16, 127
  br i1 %cmp18, label %while.cond, label %if.end46

while.cond:                                       ; preds = %if.end17, %if.end32
  %17 = load ptr, ptr %bp.addr, align 8
  %18 = ptrtoint ptr %17 to i64
  %and21 = and i64 %18, 7
  %cmp22.not = icmp eq i64 %and21, 0
  br i1 %cmp22.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %19 = load ptr, ptr %bp.addr, align 8
  %20 = load i8, ptr %19, align 1
  %cmp25.not = icmp eq i8 %20, -1
  br i1 %cmp25.not, label %if.end32, label %if.then27

if.then27:                                        ; preds = %while.body
  %21 = load i64, ptr %span, align 8
  %22 = load ptr, ptr %bp.addr, align 8
  %23 = load i8, ptr %22, align 1
  %idxprom28 = zext i8 %23 to i64
  %arrayidx29 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %idxprom28
  %24 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %24 to i64
  %add31 = add nsw i64 %21, %conv30
  store i64 %add31, ptr %retval, align 8
  br label %return

if.end32:                                         ; preds = %while.body
  %25 = load i64, ptr %span, align 8
  %add33 = add nsw i64 %25, 8
  store i64 %add33, ptr %span, align 8
  %26 = load i64, ptr %bits, align 8
  %sub34 = add nsw i64 %26, -8
  store i64 %sub34, ptr %bits, align 8
  %27 = load ptr, ptr %bp.addr, align 8
  %incdec.ptr35 = getelementptr inbounds i8, ptr %27, i64 1
  store ptr %incdec.ptr35, ptr %bp.addr, align 8
  br label %while.cond, !llvm.loop !54

while.end:                                        ; preds = %while.cond
  %28 = load ptr, ptr %bp.addr, align 8
  br label %while.cond36

while.cond36:                                     ; preds = %while.body41, %while.end
  %storemerge = phi ptr [ %28, %while.end ], [ %incdec.ptr44, %while.body41 ]
  store ptr %storemerge, ptr %lp, align 8
  %29 = load i64, ptr %bits, align 8
  %cmp37 = icmp ugt i64 %29, 63
  br i1 %cmp37, label %land.rhs, label %while.end45

land.rhs:                                         ; preds = %while.cond36
  %30 = load ptr, ptr %lp, align 8
  %31 = load i64, ptr %30, align 8
  %cmp39 = icmp eq i64 %31, -1
  br i1 %cmp39, label %while.body41, label %while.end45

while.body41:                                     ; preds = %land.rhs
  %32 = load i64, ptr %span, align 8
  %add42 = add i64 %32, 64
  store i64 %add42, ptr %span, align 8
  %33 = load i64, ptr %bits, align 8
  %sub43 = add i64 %33, -64
  store i64 %sub43, ptr %bits, align 8
  %34 = load ptr, ptr %lp, align 8
  %incdec.ptr44 = getelementptr inbounds i64, ptr %34, i64 1
  br label %while.cond36, !llvm.loop !55

while.end45:                                      ; preds = %while.cond36, %land.rhs
  %35 = load ptr, ptr %lp, align 8
  store ptr %35, ptr %bp.addr, align 8
  br label %if.end46

if.end46:                                         ; preds = %while.end45, %if.end17
  br label %while.cond47

while.cond47:                                     ; preds = %if.end59, %if.end46
  %36 = load i64, ptr %bits, align 8
  %cmp48 = icmp sgt i64 %36, 7
  br i1 %cmp48, label %while.body50, label %while.end63

while.body50:                                     ; preds = %while.cond47
  %37 = load ptr, ptr %bp.addr, align 8
  %38 = load i8, ptr %37, align 1
  %cmp52.not = icmp eq i8 %38, -1
  br i1 %cmp52.not, label %if.end59, label %if.then54

if.then54:                                        ; preds = %while.body50
  %39 = load i64, ptr %span, align 8
  %40 = load ptr, ptr %bp.addr, align 8
  %41 = load i8, ptr %40, align 1
  %idxprom55 = zext i8 %41 to i64
  %arrayidx56 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %idxprom55
  %42 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %42 to i64
  %add58 = add nsw i64 %39, %conv57
  store i64 %add58, ptr %retval, align 8
  br label %return

if.end59:                                         ; preds = %while.body50
  %43 = load i64, ptr %span, align 8
  %add60 = add nsw i64 %43, 8
  store i64 %add60, ptr %span, align 8
  %44 = load i64, ptr %bits, align 8
  %sub61 = add nsw i64 %44, -8
  store i64 %sub61, ptr %bits, align 8
  %45 = load ptr, ptr %bp.addr, align 8
  %incdec.ptr62 = getelementptr inbounds i8, ptr %45, i64 1
  store ptr %incdec.ptr62, ptr %bp.addr, align 8
  br label %while.cond47, !llvm.loop !56

while.end63:                                      ; preds = %while.cond47
  %46 = load i64, ptr %bits, align 8
  %cmp64 = icmp sgt i64 %46, 0
  br i1 %cmp64, label %if.then66, label %if.end73

if.then66:                                        ; preds = %while.end63
  %47 = load ptr, ptr %bp.addr, align 8
  %48 = load i8, ptr %47, align 1
  %idxprom67 = zext i8 %48 to i64
  %arrayidx68 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %idxprom67
  %49 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %49 to i64
  store i64 %conv69, ptr %n, align 8
  %50 = load i64, ptr %bits, align 8
  %cmp70 = icmp slt i64 %50, %conv69
  %51 = load i64, ptr %bits, align 8
  %52 = load i64, ptr %n, align 8
  %cond = select i1 %cmp70, i64 %51, i64 %52
  %53 = load i64, ptr %span, align 8
  %add72 = add nsw i64 %53, %cond
  store i64 %add72, ptr %span, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.then66, %while.end63
  %54 = load i64, ptr %span, align 8
  store i64 %54, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end73, %if.then54, %if.then27, %if.then14
  %55 = load i64, ptr %retval, align 8
  ret i64 %55
}

; Function Attrs: nounwind ssp uwtable
define internal void @Fax3PutBits(ptr noundef %tif, i32 noundef %bits, i32 noundef %length) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %bits.addr = alloca i32, align 4
  %length.addr = alloca i32, align 4
  %sp = alloca ptr, align 8
  %bit = alloca i32, align 4
  %data = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %bits, ptr %bits.addr, align 4
  store i32 %length, ptr %length.addr, align 4
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %bit1 = getelementptr inbounds %struct.Fax3EncodeState, ptr %0, i64 0, i32 2
  %1 = load i32, ptr %bit1, align 4
  store i32 %1, ptr %bit, align 4
  %data2 = getelementptr inbounds %struct.Fax3EncodeState, ptr %0, i64 0, i32 1
  %2 = load i32, ptr %data2, align 8
  store i32 %2, ptr %data, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i32, ptr %length.addr, align 4
  %4 = load i32, ptr %bit, align 4
  %cmp = icmp ugt i32 %3, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, ptr %bits.addr, align 4
  %6 = load i32, ptr %length.addr, align 4
  %7 = load i32, ptr %bit, align 4
  %sub = sub i32 %6, %7
  %shr = lshr i32 %5, %sub
  %8 = load i32, ptr %data, align 4
  %or = or i32 %8, %shr
  store i32 %or, ptr %data, align 4
  %9 = load i32, ptr %length.addr, align 4
  %sub3 = sub i32 %9, %7
  store i32 %sub3, ptr %length.addr, align 4
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 43
  %11 = load i64, ptr %tif_rawcc, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 41
  %12 = load i64, ptr %tif_rawdatasize, align 8
  %cmp4.not = icmp slt i64 %11, %12
  br i1 %cmp4.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %13 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %13) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %14 = load i32, ptr %data, align 4
  %conv = trunc i32 %14 to i8
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %15, i64 0, i32 42
  %16 = load ptr, ptr %tif_rawcp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %incdec.ptr, ptr %tif_rawcp, align 8
  store i8 %conv, ptr %16, align 1
  %tif_rawcc5 = getelementptr inbounds %struct.tiff, ptr %15, i64 0, i32 43
  %17 = load i64, ptr %tif_rawcc5, align 8
  %inc = add nsw i64 %17, 1
  store i64 %inc, ptr %tif_rawcc5, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %while.cond, !llvm.loop !57

while.end:                                        ; preds = %while.cond
  %18 = load i32, ptr %bits.addr, align 4
  %19 = load i32, ptr %length.addr, align 4
  %idxprom = zext i32 %19 to i64
  %arrayidx = getelementptr inbounds [9 x i32], ptr @_msbmask, i64 0, i64 %idxprom
  %20 = load i32, ptr %arrayidx, align 4
  %and = and i32 %18, %20
  %21 = load i32, ptr %bit, align 4
  %sub6 = sub i32 %21, %19
  %shl = shl i32 %and, %sub6
  %22 = load i32, ptr %data, align 4
  %or7 = or i32 %22, %shl
  store i32 %or7, ptr %data, align 4
  %23 = load i32, ptr %length.addr, align 4
  %24 = load i32, ptr %bit, align 4
  %sub8 = sub i32 %24, %23
  store i32 %sub8, ptr %bit, align 4
  %cmp9 = icmp eq i32 %24, %23
  br i1 %cmp9, label %if.then11, label %if.end24

if.then11:                                        ; preds = %while.end
  %25 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc12 = getelementptr inbounds %struct.tiff, ptr %25, i64 0, i32 43
  %26 = load i64, ptr %tif_rawcc12, align 8
  %tif_rawdatasize13 = getelementptr inbounds %struct.tiff, ptr %25, i64 0, i32 41
  %27 = load i64, ptr %tif_rawdatasize13, align 8
  %cmp14.not = icmp slt i64 %26, %27
  br i1 %cmp14.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.then11
  %28 = load ptr, ptr %tif.addr, align 8
  %call17 = call i32 @TIFFFlushData1(ptr noundef %28) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.then11
  %29 = load i32, ptr %data, align 4
  %conv19 = trunc i32 %29 to i8
  %30 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp20 = getelementptr inbounds %struct.tiff, ptr %30, i64 0, i32 42
  %31 = load ptr, ptr %tif_rawcp20, align 8
  %incdec.ptr21 = getelementptr inbounds i8, ptr %31, i64 1
  store ptr %incdec.ptr21, ptr %tif_rawcp20, align 8
  store i8 %conv19, ptr %31, align 1
  %tif_rawcc22 = getelementptr inbounds %struct.tiff, ptr %30, i64 0, i32 43
  %32 = load i64, ptr %tif_rawcc22, align 8
  %inc23 = add nsw i64 %32, 1
  store i64 %inc23, ptr %tif_rawcc22, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end18, %while.end
  %33 = load i32, ptr %data, align 4
  %34 = load ptr, ptr %sp, align 8
  %data25 = getelementptr inbounds %struct.Fax3EncodeState, ptr %34, i64 0, i32 1
  store i32 %33, ptr %data25, align 8
  %35 = load i32, ptr %bit, align 4
  %bit26 = getelementptr inbounds %struct.Fax3EncodeState, ptr %34, i64 0, i32 2
  store i32 %35, ptr %bit26, align 4
  ret void
}

declare void @_TIFFfree(ptr noundef) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #3

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nofree nounwind }
attributes #4 = { cold noreturn nounwind }
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
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !7}
!48 = distinct !{!48, !7}
!49 = distinct !{!49, !7}
!50 = distinct !{!50, !7}
!51 = distinct !{!51, !7}
!52 = distinct !{!52, !7}
!53 = distinct !{!53, !7}
!54 = distinct !{!54, !7}
!55 = distinct !{!55, !7}
!56 = distinct !{!56, !7}
!57 = distinct !{!57, !7}
