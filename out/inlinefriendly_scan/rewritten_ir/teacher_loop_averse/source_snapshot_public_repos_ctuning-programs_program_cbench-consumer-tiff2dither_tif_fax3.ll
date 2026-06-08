; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_loop_averse/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-tiff2dither_tif_fax3.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2dither/tif_fax3.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tableentry = type { i16, i16, i16 }
%struct.TIFFFieldInfo = type { i32, i16, i16, i32, i16, i8, i8, ptr }
%struct.TIFFFaxTabEnt = type { i8, i8, i32 }
%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }
%struct.Fax3BaseState = type { i32, i32, i32, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr }
%struct.Fax3DecodeState = type { %struct.Fax3BaseState, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.Fax3EncodeState = type { %struct.Fax3BaseState, i32, i32, i32, ptr, i32, i32 }

@TIFFFaxWhiteCodes = constant [109 x %struct.tableentry] [%struct.tableentry { i16 8, i16 53, i16 0 }, %struct.tableentry { i16 6, i16 7, i16 1 }, %struct.tableentry { i16 4, i16 7, i16 2 }, %struct.tableentry { i16 4, i16 8, i16 3 }, %struct.tableentry { i16 4, i16 11, i16 4 }, %struct.tableentry { i16 4, i16 12, i16 5 }, %struct.tableentry { i16 4, i16 14, i16 6 }, %struct.tableentry { i16 4, i16 15, i16 7 }, %struct.tableentry { i16 5, i16 19, i16 8 }, %struct.tableentry { i16 5, i16 20, i16 9 }, %struct.tableentry { i16 5, i16 7, i16 10 }, %struct.tableentry { i16 5, i16 8, i16 11 }, %struct.tableentry { i16 6, i16 8, i16 12 }, %struct.tableentry { i16 6, i16 3, i16 13 }, %struct.tableentry { i16 6, i16 52, i16 14 }, %struct.tableentry { i16 6, i16 53, i16 15 }, %struct.tableentry { i16 6, i16 42, i16 16 }, %struct.tableentry { i16 6, i16 43, i16 17 }, %struct.tableentry { i16 7, i16 39, i16 18 }, %struct.tableentry { i16 7, i16 12, i16 19 }, %struct.tableentry { i16 7, i16 8, i16 20 }, %struct.tableentry { i16 7, i16 23, i16 21 }, %struct.tableentry { i16 7, i16 3, i16 22 }, %struct.tableentry { i16 7, i16 4, i16 23 }, %struct.tableentry { i16 7, i16 40, i16 24 }, %struct.tableentry { i16 7, i16 43, i16 25 }, %struct.tableentry { i16 7, i16 19, i16 26 }, %struct.tableentry { i16 7, i16 36, i16 27 }, %struct.tableentry { i16 7, i16 24, i16 28 }, %struct.tableentry { i16 8, i16 2, i16 29 }, %struct.tableentry { i16 8, i16 3, i16 30 }, %struct.tableentry { i16 8, i16 26, i16 31 }, %struct.tableentry { i16 8, i16 27, i16 32 }, %struct.tableentry { i16 8, i16 18, i16 33 }, %struct.tableentry { i16 8, i16 19, i16 34 }, %struct.tableentry { i16 8, i16 20, i16 35 }, %struct.tableentry { i16 8, i16 21, i16 36 }, %struct.tableentry { i16 8, i16 22, i16 37 }, %struct.tableentry { i16 8, i16 23, i16 38 }, %struct.tableentry { i16 8, i16 40, i16 39 }, %struct.tableentry { i16 8, i16 41, i16 40 }, %struct.tableentry { i16 8, i16 42, i16 41 }, %struct.tableentry { i16 8, i16 43, i16 42 }, %struct.tableentry { i16 8, i16 44, i16 43 }, %struct.tableentry { i16 8, i16 45, i16 44 }, %struct.tableentry { i16 8, i16 4, i16 45 }, %struct.tableentry { i16 8, i16 5, i16 46 }, %struct.tableentry { i16 8, i16 10, i16 47 }, %struct.tableentry { i16 8, i16 11, i16 48 }, %struct.tableentry { i16 8, i16 82, i16 49 }, %struct.tableentry { i16 8, i16 83, i16 50 }, %struct.tableentry { i16 8, i16 84, i16 51 }, %struct.tableentry { i16 8, i16 85, i16 52 }, %struct.tableentry { i16 8, i16 36, i16 53 }, %struct.tableentry { i16 8, i16 37, i16 54 }, %struct.tableentry { i16 8, i16 88, i16 55 }, %struct.tableentry { i16 8, i16 89, i16 56 }, %struct.tableentry { i16 8, i16 90, i16 57 }, %struct.tableentry { i16 8, i16 91, i16 58 }, %struct.tableentry { i16 8, i16 74, i16 59 }, %struct.tableentry { i16 8, i16 75, i16 60 }, %struct.tableentry { i16 8, i16 50, i16 61 }, %struct.tableentry { i16 8, i16 51, i16 62 }, %struct.tableentry { i16 8, i16 52, i16 63 }, %struct.tableentry { i16 5, i16 27, i16 64 }, %struct.tableentry { i16 5, i16 18, i16 128 }, %struct.tableentry { i16 6, i16 23, i16 192 }, %struct.tableentry { i16 7, i16 55, i16 256 }, %struct.tableentry { i16 8, i16 54, i16 320 }, %struct.tableentry { i16 8, i16 55, i16 384 }, %struct.tableentry { i16 8, i16 100, i16 448 }, %struct.tableentry { i16 8, i16 101, i16 512 }, %struct.tableentry { i16 8, i16 104, i16 576 }, %struct.tableentry { i16 8, i16 103, i16 640 }, %struct.tableentry { i16 9, i16 204, i16 704 }, %struct.tableentry { i16 9, i16 205, i16 768 }, %struct.tableentry { i16 9, i16 210, i16 832 }, %struct.tableentry { i16 9, i16 211, i16 896 }, %struct.tableentry { i16 9, i16 212, i16 960 }, %struct.tableentry { i16 9, i16 213, i16 1024 }, %struct.tableentry { i16 9, i16 214, i16 1088 }, %struct.tableentry { i16 9, i16 215, i16 1152 }, %struct.tableentry { i16 9, i16 216, i16 1216 }, %struct.tableentry { i16 9, i16 217, i16 1280 }, %struct.tableentry { i16 9, i16 218, i16 1344 }, %struct.tableentry { i16 9, i16 219, i16 1408 }, %struct.tableentry { i16 9, i16 152, i16 1472 }, %struct.tableentry { i16 9, i16 153, i16 1536 }, %struct.tableentry { i16 9, i16 154, i16 1600 }, %struct.tableentry { i16 6, i16 24, i16 1664 }, %struct.tableentry { i16 9, i16 155, i16 1728 }, %struct.tableentry { i16 11, i16 8, i16 1792 }, %struct.tableentry { i16 11, i16 12, i16 1856 }, %struct.tableentry { i16 11, i16 13, i16 1920 }, %struct.tableentry { i16 12, i16 18, i16 1984 }, %struct.tableentry { i16 12, i16 19, i16 2048 }, %struct.tableentry { i16 12, i16 20, i16 2112 }, %struct.tableentry { i16 12, i16 21, i16 2176 }, %struct.tableentry { i16 12, i16 22, i16 2240 }, %struct.tableentry { i16 12, i16 23, i16 2304 }, %struct.tableentry { i16 12, i16 28, i16 2368 }, %struct.tableentry { i16 12, i16 29, i16 2432 }, %struct.tableentry { i16 12, i16 30, i16 2496 }, %struct.tableentry { i16 12, i16 31, i16 2560 }, %struct.tableentry { i16 12, i16 1, i16 -1 }, %struct.tableentry { i16 9, i16 1, i16 -2 }, %struct.tableentry { i16 10, i16 1, i16 -2 }, %struct.tableentry { i16 11, i16 1, i16 -2 }, %struct.tableentry { i16 12, i16 0, i16 -2 }], align 2
@TIFFFaxBlackCodes = constant [109 x %struct.tableentry] [%struct.tableentry { i16 10, i16 55, i16 0 }, %struct.tableentry { i16 3, i16 2, i16 1 }, %struct.tableentry { i16 2, i16 3, i16 2 }, %struct.tableentry { i16 2, i16 2, i16 3 }, %struct.tableentry { i16 3, i16 3, i16 4 }, %struct.tableentry { i16 4, i16 3, i16 5 }, %struct.tableentry { i16 4, i16 2, i16 6 }, %struct.tableentry { i16 5, i16 3, i16 7 }, %struct.tableentry { i16 6, i16 5, i16 8 }, %struct.tableentry { i16 6, i16 4, i16 9 }, %struct.tableentry { i16 7, i16 4, i16 10 }, %struct.tableentry { i16 7, i16 5, i16 11 }, %struct.tableentry { i16 7, i16 7, i16 12 }, %struct.tableentry { i16 8, i16 4, i16 13 }, %struct.tableentry { i16 8, i16 7, i16 14 }, %struct.tableentry { i16 9, i16 24, i16 15 }, %struct.tableentry { i16 10, i16 23, i16 16 }, %struct.tableentry { i16 10, i16 24, i16 17 }, %struct.tableentry { i16 10, i16 8, i16 18 }, %struct.tableentry { i16 11, i16 103, i16 19 }, %struct.tableentry { i16 11, i16 104, i16 20 }, %struct.tableentry { i16 11, i16 108, i16 21 }, %struct.tableentry { i16 11, i16 55, i16 22 }, %struct.tableentry { i16 11, i16 40, i16 23 }, %struct.tableentry { i16 11, i16 23, i16 24 }, %struct.tableentry { i16 11, i16 24, i16 25 }, %struct.tableentry { i16 12, i16 202, i16 26 }, %struct.tableentry { i16 12, i16 203, i16 27 }, %struct.tableentry { i16 12, i16 204, i16 28 }, %struct.tableentry { i16 12, i16 205, i16 29 }, %struct.tableentry { i16 12, i16 104, i16 30 }, %struct.tableentry { i16 12, i16 105, i16 31 }, %struct.tableentry { i16 12, i16 106, i16 32 }, %struct.tableentry { i16 12, i16 107, i16 33 }, %struct.tableentry { i16 12, i16 210, i16 34 }, %struct.tableentry { i16 12, i16 211, i16 35 }, %struct.tableentry { i16 12, i16 212, i16 36 }, %struct.tableentry { i16 12, i16 213, i16 37 }, %struct.tableentry { i16 12, i16 214, i16 38 }, %struct.tableentry { i16 12, i16 215, i16 39 }, %struct.tableentry { i16 12, i16 108, i16 40 }, %struct.tableentry { i16 12, i16 109, i16 41 }, %struct.tableentry { i16 12, i16 218, i16 42 }, %struct.tableentry { i16 12, i16 219, i16 43 }, %struct.tableentry { i16 12, i16 84, i16 44 }, %struct.tableentry { i16 12, i16 85, i16 45 }, %struct.tableentry { i16 12, i16 86, i16 46 }, %struct.tableentry { i16 12, i16 87, i16 47 }, %struct.tableentry { i16 12, i16 100, i16 48 }, %struct.tableentry { i16 12, i16 101, i16 49 }, %struct.tableentry { i16 12, i16 82, i16 50 }, %struct.tableentry { i16 12, i16 83, i16 51 }, %struct.tableentry { i16 12, i16 36, i16 52 }, %struct.tableentry { i16 12, i16 55, i16 53 }, %struct.tableentry { i16 12, i16 56, i16 54 }, %struct.tableentry { i16 12, i16 39, i16 55 }, %struct.tableentry { i16 12, i16 40, i16 56 }, %struct.tableentry { i16 12, i16 88, i16 57 }, %struct.tableentry { i16 12, i16 89, i16 58 }, %struct.tableentry { i16 12, i16 43, i16 59 }, %struct.tableentry { i16 12, i16 44, i16 60 }, %struct.tableentry { i16 12, i16 90, i16 61 }, %struct.tableentry { i16 12, i16 102, i16 62 }, %struct.tableentry { i16 12, i16 103, i16 63 }, %struct.tableentry { i16 10, i16 15, i16 64 }, %struct.tableentry { i16 12, i16 200, i16 128 }, %struct.tableentry { i16 12, i16 201, i16 192 }, %struct.tableentry { i16 12, i16 91, i16 256 }, %struct.tableentry { i16 12, i16 51, i16 320 }, %struct.tableentry { i16 12, i16 52, i16 384 }, %struct.tableentry { i16 12, i16 53, i16 448 }, %struct.tableentry { i16 13, i16 108, i16 512 }, %struct.tableentry { i16 13, i16 109, i16 576 }, %struct.tableentry { i16 13, i16 74, i16 640 }, %struct.tableentry { i16 13, i16 75, i16 704 }, %struct.tableentry { i16 13, i16 76, i16 768 }, %struct.tableentry { i16 13, i16 77, i16 832 }, %struct.tableentry { i16 13, i16 114, i16 896 }, %struct.tableentry { i16 13, i16 115, i16 960 }, %struct.tableentry { i16 13, i16 116, i16 1024 }, %struct.tableentry { i16 13, i16 117, i16 1088 }, %struct.tableentry { i16 13, i16 118, i16 1152 }, %struct.tableentry { i16 13, i16 119, i16 1216 }, %struct.tableentry { i16 13, i16 82, i16 1280 }, %struct.tableentry { i16 13, i16 83, i16 1344 }, %struct.tableentry { i16 13, i16 84, i16 1408 }, %struct.tableentry { i16 13, i16 85, i16 1472 }, %struct.tableentry { i16 13, i16 90, i16 1536 }, %struct.tableentry { i16 13, i16 91, i16 1600 }, %struct.tableentry { i16 13, i16 100, i16 1664 }, %struct.tableentry { i16 13, i16 101, i16 1728 }, %struct.tableentry { i16 11, i16 8, i16 1792 }, %struct.tableentry { i16 11, i16 12, i16 1856 }, %struct.tableentry { i16 11, i16 13, i16 1920 }, %struct.tableentry { i16 12, i16 18, i16 1984 }, %struct.tableentry { i16 12, i16 19, i16 2048 }, %struct.tableentry { i16 12, i16 20, i16 2112 }, %struct.tableentry { i16 12, i16 21, i16 2176 }, %struct.tableentry { i16 12, i16 22, i16 2240 }, %struct.tableentry { i16 12, i16 23, i16 2304 }, %struct.tableentry { i16 12, i16 28, i16 2368 }, %struct.tableentry { i16 12, i16 29, i16 2432 }, %struct.tableentry { i16 12, i16 30, i16 2496 }, %struct.tableentry { i16 12, i16 31, i16 2560 }, %struct.tableentry { i16 12, i16 1, i16 -1 }, %struct.tableentry { i16 9, i16 1, i16 -2 }, %struct.tableentry { i16 10, i16 1, i16 -2 }, %struct.tableentry { i16 11, i16 1, i16 -2 }, %struct.tableentry { i16 12, i16 0, i16 -2 }], align 2
@_TIFFFax3fillruns._fillmasks = internal constant [9 x i8] c"\00\80\C0\E0\F0\F8\FC\FE\FF", align 1
@__func__._TIFFFax3fillruns = private unnamed_addr constant [18 x i8] c"_TIFFFax3fillruns\00", align 1
@.str = private unnamed_addr constant [11 x i8] c"tif_fax3.c\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"x == lastx\00", align 1
@fax3FieldInfo = internal constant [1 x %struct.TIFFFieldInfo] [%struct.TIFFFieldInfo { i32 292, i16 1, i16 1, i32 4, i16 68, i8 0, i8 0, ptr @.str.43 }], align 8
@fax4FieldInfo = internal constant [1 x %struct.TIFFFieldInfo] [%struct.TIFFFieldInfo { i32 293, i16 1, i16 1, i32 4, i16 68, i8 0, i8 0, ptr @.str.44 }], align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"TIFFInitCCITTFax3\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: No space for state block\00", align 1
@faxFieldInfo = internal constant [10 x %struct.TIFFFieldInfo] [%struct.TIFFFieldInfo { i32 65536, i16 0, i16 0, i32 0, i16 0, i8 0, i8 0, ptr @.str.4 }, %struct.TIFFFieldInfo { i32 65540, i16 0, i16 0, i32 0, i16 0, i8 0, i8 0, ptr @.str.5 }, %struct.TIFFFieldInfo { i32 326, i16 1, i16 1, i32 4, i16 62, i8 1, i8 0, ptr @.str.6 }, %struct.TIFFFieldInfo { i32 326, i16 1, i16 1, i32 3, i16 62, i8 1, i8 0, ptr @.str.6 }, %struct.TIFFFieldInfo { i32 327, i16 1, i16 1, i32 3, i16 63, i8 1, i8 0, ptr @.str.7 }, %struct.TIFFFieldInfo { i32 328, i16 1, i16 1, i32 4, i16 64, i8 1, i8 0, ptr @.str.8 }, %struct.TIFFFieldInfo { i32 328, i16 1, i16 1, i32 3, i16 64, i8 1, i8 0, ptr @.str.8 }, %struct.TIFFFieldInfo { i32 34908, i16 1, i16 1, i32 4, i16 65, i8 1, i8 0, ptr @.str.9 }, %struct.TIFFFieldInfo { i32 34909, i16 -1, i16 -1, i32 2, i16 66, i8 1, i8 0, ptr @.str.10 }, %struct.TIFFFieldInfo { i32 34910, i16 1, i16 1, i32 4, i16 67, i8 1, i8 0, ptr @.str.11 }], align 8
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
@TIFFFaxWhiteTable = external constant [0 x %struct.TIFFFaxTabEnt], align 4
@TIFFFaxBlackTable = external constant [0 x %struct.TIFFFaxTabEnt], align 4
@TIFFFaxMainTable = external constant [0 x %struct.TIFFFaxTabEnt], align 4
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
define void @_TIFFFax3fillruns(ptr noundef %buf, ptr noundef %runs, ptr noundef %erun, i32 noundef %lastx) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %runs.addr = alloca ptr, align 8
  %erun.addr = alloca ptr, align 8
  %lastx.addr = alloca i32, align 4
  %cp = alloca ptr, align 8
  %x = alloca i32, align 4
  %bx = alloca i32, align 4
  %run = alloca i32, align 4
  %n = alloca i32, align 4
  %nw = alloca i32, align 4
  %lp = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store ptr %runs, ptr %runs.addr, align 8
  store ptr %erun, ptr %erun.addr, align 8
  store i32 %lastx, ptr %lastx.addr, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %erun to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %runs to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %0 = and i64 %sub.ptr.sub, 4
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %erun.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 1
  store ptr %incdec.ptr, ptr %erun.addr, align 8
  store i32 0, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc185, %if.end
  %2 = load ptr, ptr %runs.addr, align 8
  %3 = load ptr, ptr %erun.addr, align 8
  %cmp = icmp ult ptr %2, %3
  br i1 %cmp, label %for.body, label %for.end187

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %runs.addr, align 8
  %5 = load i32, ptr %4, align 4
  store i32 %5, ptr %run, align 4
  %6 = load i32, ptr %x, align 4
  %add = add i32 %6, %5
  %7 = load i32, ptr %lastx.addr, align 4
  %cmp1 = icmp ugt i32 %add, %7
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %for.body
  %8 = load i32, ptr %lastx.addr, align 4
  %9 = load i32, ptr %x, align 4
  %sub = sub i32 %8, %9
  %conv3 = and i32 %sub, 65535
  %10 = load ptr, ptr %runs.addr, align 8
  store i32 %conv3, ptr %10, align 4
  store i32 %conv3, ptr %run, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %for.body
  %11 = load i32, ptr %run, align 4
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %if.end82, label %if.then7

if.then7:                                         ; preds = %if.end5
  %12 = load ptr, ptr %buf.addr, align 8
  %13 = load i32, ptr %x, align 4
  %shr = lshr i32 %13, 3
  %idx.ext = zext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 %idx.ext
  store ptr %add.ptr, ptr %cp, align 8
  %and8 = and i32 %13, 7
  store i32 %and8, ptr %bx, align 4
  %14 = load i32, ptr %run, align 4
  %sub9 = sub nuw nsw i32 8, %and8
  %cmp10 = icmp ugt i32 %14, %sub9
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then7
  %15 = load i32, ptr %bx, align 4
  %tobool13.not = icmp eq i32 %15, 0
  br i1 %tobool13.not, label %if.end22, label %if.then14

if.then14:                                        ; preds = %if.then12
  %16 = load i32, ptr %bx, align 4
  %sub15 = sub i32 8, %16
  %shl = shl i32 255, %sub15
  %17 = load ptr, ptr %cp, align 8
  %incdec.ptr16 = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %incdec.ptr16, ptr %cp, align 8
  %18 = load i8, ptr %17, align 1
  %19 = trunc i32 %shl to i8
  %conv19 = and i8 %18, %19
  store i8 %conv19, ptr %17, align 1
  %20 = load i32, ptr %bx, align 4
  %sub20.neg = add i32 %20, -8
  %21 = load i32, ptr %run, align 4
  %sub21 = add i32 %sub20.neg, %21
  store i32 %sub21, ptr %run, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then14, %if.then12
  %22 = load i32, ptr %run, align 4
  %shr23 = lshr i32 %22, 3
  store i32 %shr23, ptr %n, align 4
  %cmp24.not = icmp ult i32 %22, 8
  br i1 %cmp24.not, label %if.end66, label %if.then26

if.then26:                                        ; preds = %if.end22
  %23 = load i32, ptr %n, align 4
  %cmp28 = icmp ugt i32 %23, 15
  br i1 %cmp28, label %for.cond31, label %if.end48

for.cond31:                                       ; preds = %if.then26, %for.body36
  %24 = load i32, ptr %n, align 4
  %tobool32.not = icmp eq i32 %24, 0
  %25 = load ptr, ptr %cp, align 8
  %26 = ptrtoint ptr %25 to i64
  %and33 = and i64 %26, 7
  %cmp34 = icmp ne i64 %and33, 0
  %27 = select i1 %tobool32.not, i1 false, i1 %cmp34
  br i1 %27, label %for.body36, label %for.end

for.body36:                                       ; preds = %for.cond31
  %28 = load ptr, ptr %cp, align 8
  %incdec.ptr37 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %incdec.ptr37, ptr %cp, align 8
  store i8 0, ptr %28, align 1
  %29 = load i32, ptr %n, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, ptr %n, align 4
  br label %for.cond31, !llvm.loop !6

for.end:                                          ; preds = %for.cond31
  %30 = load ptr, ptr %cp, align 8
  store ptr %30, ptr %lp, align 8
  %31 = load i32, ptr %n, align 4
  %conv40 = ashr i32 %31, 3
  store i32 %conv40, ptr %nw, align 4
  %mul.neg = mul i32 %conv40, -8
  %sub43 = add i32 %mul.neg, %31
  store i32 %sub43, ptr %n, align 4
  br label %do.body

do.body:                                          ; preds = %do.body, %for.end
  %32 = load ptr, ptr %lp, align 8
  %incdec.ptr45 = getelementptr inbounds i64, ptr %32, i64 1
  store ptr %incdec.ptr45, ptr %lp, align 8
  store i64 0, ptr %32, align 8
  %33 = load i32, ptr %nw, align 4
  %dec46 = add nsw i32 %33, -1
  store i32 %dec46, ptr %nw, align 4
  %tobool47.not = icmp eq i32 %dec46, 0
  br i1 %tobool47.not, label %do.end, label %do.body, !llvm.loop !8

do.end:                                           ; preds = %do.body
  %34 = load ptr, ptr %lp, align 8
  store ptr %34, ptr %cp, align 8
  br label %if.end48

if.end48:                                         ; preds = %do.end, %if.then26
  %35 = load i32, ptr %n, align 4
  switch i32 %35, label %sw.epilog [
    i32 7, label %sw.bb
    i32 6, label %sw.bb50
    i32 5, label %sw.bb52
    i32 4, label %sw.bb54
    i32 3, label %sw.bb56
    i32 2, label %sw.bb58
    i32 1, label %sw.bb60
  ]

sw.bb:                                            ; preds = %if.end48
  %36 = load ptr, ptr %cp, align 8
  %arrayidx49 = getelementptr inbounds i8, ptr %36, i64 6
  store i8 0, ptr %arrayidx49, align 1
  br label %sw.bb50

sw.bb50:                                          ; preds = %sw.bb, %if.end48
  %37 = load ptr, ptr %cp, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %37, i64 5
  store i8 0, ptr %arrayidx51, align 1
  br label %sw.bb52

sw.bb52:                                          ; preds = %sw.bb50, %if.end48
  %38 = load ptr, ptr %cp, align 8
  %arrayidx53 = getelementptr inbounds i8, ptr %38, i64 4
  store i8 0, ptr %arrayidx53, align 1
  br label %sw.bb54

sw.bb54:                                          ; preds = %sw.bb52, %if.end48
  %39 = load ptr, ptr %cp, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %39, i64 3
  store i8 0, ptr %arrayidx55, align 1
  br label %sw.bb56

sw.bb56:                                          ; preds = %sw.bb54, %if.end48
  %40 = load ptr, ptr %cp, align 8
  %arrayidx57 = getelementptr inbounds i8, ptr %40, i64 2
  store i8 0, ptr %arrayidx57, align 1
  br label %sw.bb58

sw.bb58:                                          ; preds = %sw.bb56, %if.end48
  %41 = load ptr, ptr %cp, align 8
  %arrayidx59 = getelementptr inbounds i8, ptr %41, i64 1
  store i8 0, ptr %arrayidx59, align 1
  br label %sw.bb60

sw.bb60:                                          ; preds = %sw.bb58, %if.end48
  %42 = load ptr, ptr %cp, align 8
  store i8 0, ptr %42, align 1
  %43 = load i32, ptr %n, align 4
  %idx.ext62 = sext i32 %43 to i64
  %add.ptr63 = getelementptr inbounds i8, ptr %42, i64 %idx.ext62
  store ptr %add.ptr63, ptr %cp, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb60, %if.end48
  %44 = load i32, ptr %run, align 4
  %and65 = and i32 %44, 7
  store i32 %and65, ptr %run, align 4
  br label %if.end66

if.end66:                                         ; preds = %sw.epilog, %if.end22
  %45 = load i32, ptr %run, align 4
  %shr67 = lshr i32 255, %45
  %46 = load ptr, ptr %cp, align 8
  %47 = load i8, ptr %46, align 1
  %48 = trunc i32 %shr67 to i8
  %conv71 = and i8 %47, %48
  store i8 %conv71, ptr %46, align 1
  br label %if.end79

if.else:                                          ; preds = %if.then7
  %49 = load i32, ptr %run, align 4
  %idxprom = zext i32 %49 to i64
  %arrayidx72 = getelementptr inbounds [9 x i8], ptr @_TIFFFax3fillruns._fillmasks, i64 0, i64 %idxprom
  %50 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %50 to i32
  %51 = load i32, ptr %bx, align 4
  %shr74 = lshr i32 %conv73, %51
  %52 = load ptr, ptr %cp, align 8
  %53 = load i8, ptr %52, align 1
  %54 = trunc i32 %shr74 to i8
  %55 = xor i8 %54, -1
  %conv78 = and i8 %53, %55
  store i8 %conv78, ptr %52, align 1
  br label %if.end79

if.end79:                                         ; preds = %if.else, %if.end66
  %56 = load ptr, ptr %runs.addr, align 8
  %57 = load i32, ptr %56, align 4
  %58 = load i32, ptr %x, align 4
  %add81 = add i32 %58, %57
  store i32 %add81, ptr %x, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.end79, %if.end5
  %59 = load ptr, ptr %runs.addr, align 8
  %arrayidx83 = getelementptr inbounds i32, ptr %59, i64 1
  %60 = load i32, ptr %arrayidx83, align 4
  store i32 %60, ptr %run, align 4
  %61 = load i32, ptr %x, align 4
  %add84 = add i32 %61, %60
  %62 = load i32, ptr %lastx.addr, align 4
  %cmp85 = icmp ugt i32 %add84, %62
  br i1 %cmp85, label %if.then87, label %if.end90

if.then87:                                        ; preds = %if.end82
  %63 = load i32, ptr %lastx.addr, align 4
  %64 = load i32, ptr %x, align 4
  %sub88 = sub i32 %63, %64
  %65 = load ptr, ptr %runs.addr, align 8
  %arrayidx89 = getelementptr inbounds i32, ptr %65, i64 1
  store i32 %sub88, ptr %arrayidx89, align 4
  store i32 %sub88, ptr %run, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %if.end82
  %66 = load i32, ptr %run, align 4
  %tobool91.not = icmp eq i32 %66, 0
  br i1 %tobool91.not, label %for.inc185, label %if.then92

if.then92:                                        ; preds = %if.end90
  %67 = load ptr, ptr %buf.addr, align 8
  %68 = load i32, ptr %x, align 4
  %shr93 = lshr i32 %68, 3
  %idx.ext94 = zext i32 %shr93 to i64
  %add.ptr95 = getelementptr inbounds i8, ptr %67, i64 %idx.ext94
  store ptr %add.ptr95, ptr %cp, align 8
  %and96 = and i32 %68, 7
  store i32 %and96, ptr %bx, align 4
  %69 = load i32, ptr %run, align 4
  %sub97 = sub nuw nsw i32 8, %and96
  %cmp98 = icmp ugt i32 %69, %sub97
  br i1 %cmp98, label %if.then100, label %if.else172

if.then100:                                       ; preds = %if.then92
  %70 = load i32, ptr %bx, align 4
  %tobool101.not = icmp eq i32 %70, 0
  br i1 %tobool101.not, label %if.end109, label %if.then102

if.then102:                                       ; preds = %if.then100
  %71 = load i32, ptr %bx, align 4
  %shr103 = lshr i32 255, %71
  %72 = load ptr, ptr %cp, align 8
  %incdec.ptr104 = getelementptr inbounds i8, ptr %72, i64 1
  store ptr %incdec.ptr104, ptr %cp, align 8
  %73 = load i8, ptr %72, align 1
  %74 = trunc i32 %shr103 to i8
  %conv106 = or i8 %73, %74
  store i8 %conv106, ptr %72, align 1
  %75 = load i32, ptr %bx, align 4
  %sub107.neg = add i32 %75, -8
  %76 = load i32, ptr %run, align 4
  %sub108 = add i32 %sub107.neg, %76
  store i32 %sub108, ptr %run, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then102, %if.then100
  %77 = load i32, ptr %run, align 4
  %shr110 = lshr i32 %77, 3
  store i32 %shr110, ptr %n, align 4
  %cmp111.not = icmp ult i32 %77, 8
  br i1 %cmp111.not, label %if.end166, label %if.then113

if.then113:                                       ; preds = %if.end109
  %78 = load i32, ptr %n, align 4
  %cmp116 = icmp ugt i32 %78, 15
  br i1 %cmp116, label %for.cond119, label %if.end146

for.cond119:                                      ; preds = %if.then113, %for.body127
  %79 = load i32, ptr %n, align 4
  %tobool120.not = icmp eq i32 %79, 0
  %80 = load ptr, ptr %cp, align 8
  %81 = ptrtoint ptr %80 to i64
  %and122 = and i64 %81, 7
  %cmp123 = icmp ne i64 %and122, 0
  %82 = select i1 %tobool120.not, i1 false, i1 %cmp123
  br i1 %82, label %for.body127, label %for.end131

for.body127:                                      ; preds = %for.cond119
  %83 = load ptr, ptr %cp, align 8
  %incdec.ptr128 = getelementptr inbounds i8, ptr %83, i64 1
  store ptr %incdec.ptr128, ptr %cp, align 8
  store i8 -1, ptr %83, align 1
  %84 = load i32, ptr %n, align 4
  %dec130 = add nsw i32 %84, -1
  store i32 %dec130, ptr %n, align 4
  br label %for.cond119, !llvm.loop !9

for.end131:                                       ; preds = %for.cond119
  %85 = load ptr, ptr %cp, align 8
  store ptr %85, ptr %lp, align 8
  %86 = load i32, ptr %n, align 4
  %conv134 = ashr i32 %86, 3
  store i32 %conv134, ptr %nw, align 4
  %mul136.neg = mul i32 %conv134, -8
  %sub138 = add i32 %mul136.neg, %86
  store i32 %sub138, ptr %n, align 4
  br label %do.body140

do.body140:                                       ; preds = %do.body140, %for.end131
  %87 = load ptr, ptr %lp, align 8
  %incdec.ptr141 = getelementptr inbounds i64, ptr %87, i64 1
  store ptr %incdec.ptr141, ptr %lp, align 8
  store i64 -1, ptr %87, align 8
  %88 = load i32, ptr %nw, align 4
  %dec143 = add nsw i32 %88, -1
  store i32 %dec143, ptr %nw, align 4
  %tobool144.not = icmp eq i32 %dec143, 0
  br i1 %tobool144.not, label %do.end145, label %do.body140, !llvm.loop !10

do.end145:                                        ; preds = %do.body140
  %89 = load ptr, ptr %lp, align 8
  store ptr %89, ptr %cp, align 8
  br label %if.end146

if.end146:                                        ; preds = %do.end145, %if.then113
  %90 = load i32, ptr %n, align 4
  switch i32 %90, label %sw.epilog164 [
    i32 7, label %sw.bb147
    i32 6, label %sw.bb149
    i32 5, label %sw.bb151
    i32 4, label %sw.bb153
    i32 3, label %sw.bb155
    i32 2, label %sw.bb157
    i32 1, label %sw.bb159
  ]

sw.bb147:                                         ; preds = %if.end146
  %91 = load ptr, ptr %cp, align 8
  %arrayidx148 = getelementptr inbounds i8, ptr %91, i64 6
  store i8 -1, ptr %arrayidx148, align 1
  br label %sw.bb149

sw.bb149:                                         ; preds = %sw.bb147, %if.end146
  %92 = load ptr, ptr %cp, align 8
  %arrayidx150 = getelementptr inbounds i8, ptr %92, i64 5
  store i8 -1, ptr %arrayidx150, align 1
  br label %sw.bb151

sw.bb151:                                         ; preds = %sw.bb149, %if.end146
  %93 = load ptr, ptr %cp, align 8
  %arrayidx152 = getelementptr inbounds i8, ptr %93, i64 4
  store i8 -1, ptr %arrayidx152, align 1
  br label %sw.bb153

sw.bb153:                                         ; preds = %sw.bb151, %if.end146
  %94 = load ptr, ptr %cp, align 8
  %arrayidx154 = getelementptr inbounds i8, ptr %94, i64 3
  store i8 -1, ptr %arrayidx154, align 1
  br label %sw.bb155

sw.bb155:                                         ; preds = %sw.bb153, %if.end146
  %95 = load ptr, ptr %cp, align 8
  %arrayidx156 = getelementptr inbounds i8, ptr %95, i64 2
  store i8 -1, ptr %arrayidx156, align 1
  br label %sw.bb157

sw.bb157:                                         ; preds = %sw.bb155, %if.end146
  %96 = load ptr, ptr %cp, align 8
  %arrayidx158 = getelementptr inbounds i8, ptr %96, i64 1
  store i8 -1, ptr %arrayidx158, align 1
  br label %sw.bb159

sw.bb159:                                         ; preds = %sw.bb157, %if.end146
  %97 = load ptr, ptr %cp, align 8
  store i8 -1, ptr %97, align 1
  %98 = load i32, ptr %n, align 4
  %idx.ext161 = sext i32 %98 to i64
  %add.ptr162 = getelementptr inbounds i8, ptr %97, i64 %idx.ext161
  store ptr %add.ptr162, ptr %cp, align 8
  br label %sw.epilog164

sw.epilog164:                                     ; preds = %sw.bb159, %if.end146
  %99 = load i32, ptr %run, align 4
  %and165 = and i32 %99, 7
  store i32 %and165, ptr %run, align 4
  br label %if.end166

if.end166:                                        ; preds = %sw.epilog164, %if.end109
  %100 = load i32, ptr %run, align 4
  %shr167 = lshr i32 65280, %100
  %101 = load ptr, ptr %cp, align 8
  %102 = load i8, ptr %101, align 1
  %103 = trunc i32 %shr167 to i8
  %conv171 = or i8 %102, %103
  store i8 %conv171, ptr %101, align 1
  br label %if.end181

if.else172:                                       ; preds = %if.then92
  %104 = load i32, ptr %run, align 4
  %idxprom173 = zext i32 %104 to i64
  %arrayidx174 = getelementptr inbounds [9 x i8], ptr @_TIFFFax3fillruns._fillmasks, i64 0, i64 %idxprom173
  %105 = load i8, ptr %arrayidx174, align 1
  %conv175 = zext i8 %105 to i32
  %106 = load i32, ptr %bx, align 4
  %shr176 = lshr i32 %conv175, %106
  %107 = load ptr, ptr %cp, align 8
  %108 = load i8, ptr %107, align 1
  %109 = trunc i32 %shr176 to i8
  %conv180 = or i8 %108, %109
  store i8 %conv180, ptr %107, align 1
  br label %if.end181

if.end181:                                        ; preds = %if.else172, %if.end166
  %110 = load ptr, ptr %runs.addr, align 8
  %arrayidx182 = getelementptr inbounds i32, ptr %110, i64 1
  %111 = load i32, ptr %arrayidx182, align 4
  %112 = load i32, ptr %x, align 4
  %add183 = add i32 %112, %111
  store i32 %add183, ptr %x, align 4
  br label %for.inc185

for.inc185:                                       ; preds = %if.end90, %if.end181
  %113 = load ptr, ptr %runs.addr, align 8
  %add.ptr186 = getelementptr inbounds i32, ptr %113, i64 2
  store ptr %add.ptr186, ptr %runs.addr, align 8
  br label %for.cond, !llvm.loop !11

for.end187:                                       ; preds = %for.cond
  %114 = load i32, ptr %x, align 4
  %115 = load i32, ptr %lastx.addr, align 4
  %cmp188.not = icmp eq i32 %114, %115
  br i1 %cmp188.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %for.end187
  call void @__assert_rtn(ptr noundef nonnull @__func__._TIFFFax3fillruns, ptr noundef nonnull @.str, i32 noundef 454, ptr noundef nonnull @.str.1) #5
  unreachable

cond.end:                                         ; preds = %for.end187
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
  call void @_TIFFMergeFieldInfo(ptr noundef %0, ptr noundef nonnull @fax3FieldInfo, i32 noundef 1) #6
  %call1 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef 65536, i32 noundef 1) #6
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
  %call = call ptr @_TIFFmalloc(i32 noundef 120) #6
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 37
  store ptr %call, ptr %tif_data, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call ptr @_TIFFmalloc(i32 noundef 96) #6
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
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %6) #6
  br label %return

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_data7 = getelementptr inbounds %struct.tiff, ptr %7, i64 0, i32 37
  %8 = load ptr, ptr %tif_data7, align 8
  store ptr %8, ptr %sp, align 8
  call void @_TIFFMergeFieldInfo(ptr noundef %7, ptr noundef nonnull @faxFieldInfo, i32 noundef 10) #6
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
  store i32 0, ptr %groupoptions, align 8
  %recvparams = getelementptr inbounds %struct.Fax3BaseState, ptr %14, i64 0, i32 7
  store i32 0, ptr %recvparams, align 4
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
  %18 = load i32, ptr %tif_flags, align 8
  %or = or i32 %18, 256
  store i32 %or, ptr %tif_flags, align 8
  %tif_data13 = getelementptr inbounds %struct.tiff, ptr %17, i64 0, i32 37
  %19 = load ptr, ptr %tif_data13, align 8
  %runs = getelementptr inbounds %struct.Fax3DecodeState, ptr %19, i64 0, i32 6
  store ptr null, ptr %runs, align 8
  %20 = load ptr, ptr %tif.addr, align 8
  %call14 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %20, i32 noundef 65540, ptr noundef nonnull @_TIFFFax3fillruns) #6
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

declare i32 @TIFFSetField(ptr noundef, i32 noundef, ...) #2

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
  call void @_TIFFMergeFieldInfo(ptr noundef %0, ptr noundef nonnull @fax4FieldInfo, i32 noundef 1) #6
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
  %call1 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %2, i32 noundef 65536, i32 noundef 1) #6
  br label %return

return:                                           ; preds = %entry, %if.then
  %storemerge = phi i32 [ %call1, %if.then ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax4Decode(ptr noundef %tif, ptr noundef %buf, i32 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %a0.addr.i33 = alloca i32, align 4
  %lastx.addr.i34 = alloca i32, align 4
  %a0.addr.i28 = alloca i32, align 4
  %lastx.addr.i = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %occ.addr = alloca i32, align 4
  %sp = alloca ptr, align 8
  %a0 = alloca i32, align 4
  %lastx = alloca i32, align 4
  %BitAcc = alloca i32, align 4
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
  store i32 %occ, ptr %occ.addr, align 4
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %rowpixels = getelementptr inbounds %struct.Fax3BaseState, ptr %0, i64 0, i32 2
  %1 = load i32, ptr %rowpixels, align 8
  store i32 %1, ptr %lastx, align 4
  %bitmap1 = getelementptr inbounds %struct.Fax3DecodeState, ptr %0, i64 0, i32 1
  %2 = load ptr, ptr %bitmap1, align 8
  store ptr %2, ptr %bitmap, align 8
  %3 = load ptr, ptr %sp, align 8
  %data = getelementptr inbounds %struct.Fax3DecodeState, ptr %3, i64 0, i32 2
  %4 = load i32, ptr %data, align 8
  store i32 %4, ptr %BitAcc, align 4
  %bit = getelementptr inbounds %struct.Fax3DecodeState, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %bit, align 4
  store i32 %5, ptr %BitsAvail, align 4
  %6 = load ptr, ptr %sp, align 8
  %EOLcnt2 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 4
  %7 = load i32, ptr %EOLcnt2, align 8
  store i32 %7, ptr %EOLcnt, align 4
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 42
  %9 = load ptr, ptr %tif_rawcp, align 8
  store ptr %9, ptr %cp, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 43
  %10 = load i32, ptr %tif_rawcc, align 8
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %idx.ext
  store ptr %add.ptr, ptr %ep, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end684, %entry
  %11 = load i32, ptr %occ.addr, align 4
  %cmp = icmp sgt i32 %11, 0
  br i1 %cmp, label %while.body, label %do.body701

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
  %incdec.ptr = getelementptr inbounds i32, ptr %14, i64 1
  store ptr %incdec.ptr, ptr %pb, align 8
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %b1, align 4
  br label %while.cond5

while.cond5:                                      ; preds = %sw.epilog552, %while.body
  %16 = load i32, ptr %a0, align 4
  %17 = load i32, ptr %lastx, align 4
  %cmp6 = icmp slt i32 %16, %17
  br i1 %cmp6, label %do.body10, label %while.end553

do.body10:                                        ; preds = %while.cond5
  %18 = load i32, ptr %BitsAvail, align 4
  %cmp11 = icmp slt i32 %18, 7
  br i1 %cmp11, label %if.then, label %do.end23

if.then:                                          ; preds = %do.body10
  %19 = load ptr, ptr %cp, align 8
  %20 = load ptr, ptr %ep, align 8
  %cmp13.not = icmp ult ptr %19, %20
  br i1 %cmp13.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.then
  %21 = load i32, ptr %BitsAvail, align 4
  %cmp16 = icmp eq i32 %21, 0
  br i1 %cmp16, label %eof2d, label %if.end21

if.else:                                          ; preds = %if.then
  %22 = load ptr, ptr %bitmap, align 8
  %23 = load ptr, ptr %cp, align 8
  %incdec.ptr19 = getelementptr inbounds i8, ptr %23, i64 1
  store ptr %incdec.ptr19, ptr %cp, align 8
  %24 = load i8, ptr %23, align 1
  %idxprom = zext i8 %24 to i64
  %arrayidx = getelementptr inbounds i8, ptr %22, i64 %idxprom
  %25 = load i8, ptr %arrayidx, align 1
  %conv20 = zext i8 %25 to i32
  %26 = load i32, ptr %BitsAvail, align 4
  %shl = shl i32 %conv20, %26
  %27 = load i32, ptr %BitAcc, align 4
  %or = or i32 %27, %shl
  store i32 %or, ptr %BitAcc, align 4
  %add = add nsw i32 %26, 8
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.else
  %storemerge51 = phi i32 [ %add, %if.else ], [ 7, %if.then15 ]
  store i32 %storemerge51, ptr %BitsAvail, align 4
  br label %do.end23

do.end23:                                         ; preds = %do.body10, %if.end21
  %28 = load i32, ptr %BitAcc, align 4
  %and = and i32 %28, 127
  %idx.ext24 = zext i32 %and to i64
  %add.ptr25 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxMainTable, i64 %idx.ext24
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
  %conv29 = zext i8 %33 to i32
  %34 = load i32, ptr %BitAcc, align 4
  %shr = lshr i32 %34, %conv29
  store i32 %shr, ptr %BitAcc, align 4
  %35 = load ptr, ptr %TabEnt, align 8
  %36 = load i8, ptr %35, align 4
  switch i8 %36, label %badMain2d [
    i8 1, label %do.body33
    i8 2, label %sw.bb56
    i8 3, label %do.body354
    i8 4, label %do.body384
    i8 5, label %do.body418
    i8 6, label %sw.bb451
    i8 12, label %sw.bb454
  ]

do.body33:                                        ; preds = %do.end23
  %37 = load ptr, ptr %pa, align 8
  %38 = load ptr, ptr %thisrun, align 8
  %cmp34.not = icmp eq ptr %37, %38
  br i1 %cmp34.not, label %do.end49, label %while.cond37

while.cond37:                                     ; preds = %do.body33, %while.body42
  %39 = load i32, ptr %b1, align 4
  %40 = load i32, ptr %a0, align 4
  %cmp38.not = icmp sgt i32 %39, %40
  %41 = load i32, ptr %b1, align 4
  %42 = load i32, ptr %lastx, align 4
  %cmp40 = icmp slt i32 %41, %42
  %43 = select i1 %cmp38.not, i1 false, i1 %cmp40
  br i1 %43, label %while.body42, label %do.end49

while.body42:                                     ; preds = %while.cond37
  %44 = load ptr, ptr %pb, align 8
  %45 = load i32, ptr %44, align 4
  %arrayidx44 = getelementptr inbounds i32, ptr %44, i64 1
  %46 = load i32, ptr %arrayidx44, align 4
  %add45 = add i32 %45, %46
  %47 = load i32, ptr %b1, align 4
  %add46 = add i32 %47, %add45
  store i32 %add46, ptr %b1, align 4
  %48 = load ptr, ptr %pb, align 8
  %add.ptr47 = getelementptr inbounds i32, ptr %48, i64 2
  store ptr %add.ptr47, ptr %pb, align 8
  br label %while.cond37, !llvm.loop !12

do.end49:                                         ; preds = %do.body33, %while.cond37
  %49 = load ptr, ptr %pb, align 8
  %incdec.ptr50 = getelementptr inbounds i32, ptr %49, i64 1
  store ptr %incdec.ptr50, ptr %pb, align 8
  %50 = load i32, ptr %49, align 4
  %51 = load i32, ptr %b1, align 4
  %add51 = add i32 %51, %50
  store i32 %add51, ptr %b1, align 4
  %52 = load i32, ptr %a0, align 4
  %sub52 = sub nsw i32 %add51, %52
  %53 = load i32, ptr %RunLength, align 4
  %add53 = add nsw i32 %53, %sub52
  store i32 %add53, ptr %RunLength, align 4
  store i32 %add51, ptr %a0, align 4
  %54 = load ptr, ptr %pb, align 8
  %incdec.ptr54 = getelementptr inbounds i32, ptr %54, i64 1
  store ptr %incdec.ptr54, ptr %pb, align 8
  %55 = load i32, ptr %54, align 4
  %56 = load i32, ptr %b1, align 4
  %add55 = add i32 %56, %55
  store i32 %add55, ptr %b1, align 4
  br label %sw.epilog552

sw.bb56:                                          ; preds = %do.end23
  %57 = load ptr, ptr %pa, align 8
  %58 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %57 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %58 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %59 = and i64 %sub.ptr.sub, 4
  %tobool.not = icmp eq i64 %59, 0
  br i1 %tobool.not, label %for.cond194, label %for.cond

for.cond:                                         ; preds = %sw.bb56, %sw.bb119
  %60 = load i32, ptr %BitsAvail, align 4
  %cmp61 = icmp slt i32 %60, 13
  br i1 %cmp61, label %if.then63, label %do.end97

if.then63:                                        ; preds = %for.cond
  %61 = load ptr, ptr %cp, align 8
  %62 = load ptr, ptr %ep, align 8
  %cmp64.not = icmp ult ptr %61, %62
  br i1 %cmp64.not, label %if.else71, label %if.then66

if.then66:                                        ; preds = %if.then63
  %63 = load i32, ptr %BitsAvail, align 4
  %cmp67 = icmp eq i32 %63, 0
  br i1 %cmp67, label %eof2d, label %if.end70

if.end70:                                         ; preds = %if.then66
  store i32 13, ptr %BitsAvail, align 4
  br label %do.end97

if.else71:                                        ; preds = %if.then63
  %64 = load ptr, ptr %bitmap, align 8
  %65 = load ptr, ptr %cp, align 8
  %incdec.ptr72 = getelementptr inbounds i8, ptr %65, i64 1
  store ptr %incdec.ptr72, ptr %cp, align 8
  %66 = load i8, ptr %65, align 1
  %idxprom73 = zext i8 %66 to i64
  %arrayidx74 = getelementptr inbounds i8, ptr %64, i64 %idxprom73
  %67 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %67 to i32
  %68 = load i32, ptr %BitsAvail, align 4
  %shl76 = shl i32 %conv75, %68
  %69 = load i32, ptr %BitAcc, align 4
  %or77 = or i32 %69, %shl76
  store i32 %or77, ptr %BitAcc, align 4
  %add78 = add nsw i32 %68, 8
  store i32 %add78, ptr %BitsAvail, align 4
  %cmp79 = icmp slt i32 %68, 5
  br i1 %cmp79, label %if.then81, label %do.end97

if.then81:                                        ; preds = %if.else71
  %70 = load ptr, ptr %cp, align 8
  %71 = load ptr, ptr %ep, align 8
  %cmp82.not = icmp ult ptr %70, %71
  br i1 %cmp82.not, label %if.else85, label %if.end93

if.else85:                                        ; preds = %if.then81
  %72 = load ptr, ptr %bitmap, align 8
  %73 = load ptr, ptr %cp, align 8
  %incdec.ptr86 = getelementptr inbounds i8, ptr %73, i64 1
  store ptr %incdec.ptr86, ptr %cp, align 8
  %74 = load i8, ptr %73, align 1
  %idxprom87 = zext i8 %74 to i64
  %arrayidx88 = getelementptr inbounds i8, ptr %72, i64 %idxprom87
  %75 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %75 to i32
  %76 = load i32, ptr %BitsAvail, align 4
  %shl90 = shl i32 %conv89, %76
  %77 = load i32, ptr %BitAcc, align 4
  %or91 = or i32 %77, %shl90
  store i32 %or91, ptr %BitAcc, align 4
  %add92 = add nsw i32 %76, 8
  br label %if.end93

if.end93:                                         ; preds = %if.then81, %if.else85
  %storemerge50 = phi i32 [ %add92, %if.else85 ], [ 13, %if.then81 ]
  store i32 %storemerge50, ptr %BitsAvail, align 4
  br label %do.end97

do.end97:                                         ; preds = %for.cond, %if.else71, %if.end93, %if.end70
  %78 = load i32, ptr %BitAcc, align 4
  %and98 = and i32 %78, 8191
  %idx.ext99 = zext i32 %and98 to i64
  %add.ptr100 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %idx.ext99
  store ptr %add.ptr100, ptr %TabEnt, align 8
  %79 = load ptr, ptr %TabEnt, align 8
  %Width102 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %79, i64 0, i32 1
  %80 = load i8, ptr %Width102, align 1
  %conv103 = zext i8 %80 to i32
  %81 = load i32, ptr %BitsAvail, align 4
  %sub104 = sub nsw i32 %81, %conv103
  store i32 %sub104, ptr %BitsAvail, align 4
  %82 = load ptr, ptr %TabEnt, align 8
  %Width105 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %82, i64 0, i32 1
  %83 = load i8, ptr %Width105, align 1
  %conv106 = zext i8 %83 to i32
  %84 = load i32, ptr %BitAcc, align 4
  %shr107 = lshr i32 %84, %conv106
  store i32 %shr107, ptr %BitAcc, align 4
  %85 = load ptr, ptr %TabEnt, align 8
  %86 = load i8, ptr %85, align 4
  switch i8 %86, label %badBlack2d [
    i8 8, label %do.body113
    i8 10, label %sw.bb119
    i8 11, label %sw.bb119
  ]

do.body113:                                       ; preds = %do.end97
  %87 = load i32, ptr %RunLength, align 4
  %88 = load ptr, ptr %TabEnt, align 8
  %Param = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %88, i64 0, i32 2
  %89 = load i32, ptr %Param, align 4
  %add114 = add i32 %87, %89
  %90 = load ptr, ptr %pa, align 8
  %incdec.ptr115 = getelementptr inbounds i32, ptr %90, i64 1
  store ptr %incdec.ptr115, ptr %pa, align 8
  store i32 %add114, ptr %90, align 4
  %91 = load ptr, ptr %TabEnt, align 8
  %Param116 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %91, i64 0, i32 2
  %92 = load i32, ptr %Param116, align 4
  %93 = load i32, ptr %a0, align 4
  %add117 = add i32 %93, %92
  store i32 %add117, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %for.cond124

sw.bb119:                                         ; preds = %do.end97, %do.end97
  %94 = load ptr, ptr %TabEnt, align 8
  %Param120 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %94, i64 0, i32 2
  %95 = load i32, ptr %Param120, align 4
  %96 = load i32, ptr %a0, align 4
  %add121 = add i32 %96, %95
  store i32 %add121, ptr %a0, align 4
  %97 = load i32, ptr %RunLength, align 4
  %add123 = add i32 %97, %95
  store i32 %add123, ptr %RunLength, align 4
  br label %for.cond

for.cond124:                                      ; preds = %sw.bb186, %do.body113
  %98 = load i32, ptr %BitsAvail, align 4
  %cmp127 = icmp slt i32 %98, 12
  br i1 %cmp127, label %if.then129, label %do.end163

if.then129:                                       ; preds = %for.cond124
  %99 = load ptr, ptr %cp, align 8
  %100 = load ptr, ptr %ep, align 8
  %cmp130.not = icmp ult ptr %99, %100
  br i1 %cmp130.not, label %if.else137, label %if.then132

if.then132:                                       ; preds = %if.then129
  %101 = load i32, ptr %BitsAvail, align 4
  %cmp133 = icmp eq i32 %101, 0
  br i1 %cmp133, label %eof2d, label %if.end136

if.end136:                                        ; preds = %if.then132
  store i32 12, ptr %BitsAvail, align 4
  br label %do.end163

if.else137:                                       ; preds = %if.then129
  %102 = load ptr, ptr %bitmap, align 8
  %103 = load ptr, ptr %cp, align 8
  %incdec.ptr138 = getelementptr inbounds i8, ptr %103, i64 1
  store ptr %incdec.ptr138, ptr %cp, align 8
  %104 = load i8, ptr %103, align 1
  %idxprom139 = zext i8 %104 to i64
  %arrayidx140 = getelementptr inbounds i8, ptr %102, i64 %idxprom139
  %105 = load i8, ptr %arrayidx140, align 1
  %conv141 = zext i8 %105 to i32
  %106 = load i32, ptr %BitsAvail, align 4
  %shl142 = shl i32 %conv141, %106
  %107 = load i32, ptr %BitAcc, align 4
  %or143 = or i32 %107, %shl142
  store i32 %or143, ptr %BitAcc, align 4
  %add144 = add nsw i32 %106, 8
  store i32 %add144, ptr %BitsAvail, align 4
  %cmp145 = icmp slt i32 %106, 4
  br i1 %cmp145, label %if.then147, label %do.end163

if.then147:                                       ; preds = %if.else137
  %108 = load ptr, ptr %cp, align 8
  %109 = load ptr, ptr %ep, align 8
  %cmp148.not = icmp ult ptr %108, %109
  br i1 %cmp148.not, label %if.else151, label %if.end159

if.else151:                                       ; preds = %if.then147
  %110 = load ptr, ptr %bitmap, align 8
  %111 = load ptr, ptr %cp, align 8
  %incdec.ptr152 = getelementptr inbounds i8, ptr %111, i64 1
  store ptr %incdec.ptr152, ptr %cp, align 8
  %112 = load i8, ptr %111, align 1
  %idxprom153 = zext i8 %112 to i64
  %arrayidx154 = getelementptr inbounds i8, ptr %110, i64 %idxprom153
  %113 = load i8, ptr %arrayidx154, align 1
  %conv155 = zext i8 %113 to i32
  %114 = load i32, ptr %BitsAvail, align 4
  %shl156 = shl i32 %conv155, %114
  %115 = load i32, ptr %BitAcc, align 4
  %or157 = or i32 %115, %shl156
  store i32 %or157, ptr %BitAcc, align 4
  %add158 = add nsw i32 %114, 8
  br label %if.end159

if.end159:                                        ; preds = %if.then147, %if.else151
  %storemerge49 = phi i32 [ %add158, %if.else151 ], [ 12, %if.then147 ]
  store i32 %storemerge49, ptr %BitsAvail, align 4
  br label %do.end163

do.end163:                                        ; preds = %for.cond124, %if.else137, %if.end159, %if.end136
  %116 = load i32, ptr %BitAcc, align 4
  %and164 = and i32 %116, 4095
  %idx.ext165 = zext i32 %and164 to i64
  %add.ptr166 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %idx.ext165
  store ptr %add.ptr166, ptr %TabEnt, align 8
  %117 = load ptr, ptr %TabEnt, align 8
  %Width168 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %117, i64 0, i32 1
  %118 = load i8, ptr %Width168, align 1
  %conv169 = zext i8 %118 to i32
  %119 = load i32, ptr %BitsAvail, align 4
  %sub170 = sub nsw i32 %119, %conv169
  store i32 %sub170, ptr %BitsAvail, align 4
  %120 = load ptr, ptr %TabEnt, align 8
  %Width171 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %120, i64 0, i32 1
  %121 = load i8, ptr %Width171, align 1
  %conv172 = zext i8 %121 to i32
  %122 = load i32, ptr %BitAcc, align 4
  %shr173 = lshr i32 %122, %conv172
  store i32 %shr173, ptr %BitAcc, align 4
  %123 = load ptr, ptr %TabEnt, align 8
  %124 = load i8, ptr %123, align 4
  switch i8 %124, label %badWhite2d [
    i8 7, label %do.body179
    i8 9, label %sw.bb186
    i8 11, label %sw.bb186
  ]

do.body179:                                       ; preds = %do.end163
  %125 = load i32, ptr %RunLength, align 4
  %126 = load ptr, ptr %TabEnt, align 8
  %Param180 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %126, i64 0, i32 2
  %127 = load i32, ptr %Param180, align 4
  %add181 = add i32 %125, %127
  %128 = load ptr, ptr %pa, align 8
  %incdec.ptr182 = getelementptr inbounds i32, ptr %128, i64 1
  store ptr %incdec.ptr182, ptr %pa, align 8
  store i32 %add181, ptr %128, align 4
  %129 = load ptr, ptr %TabEnt, align 8
  %Param183 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %129, i64 0, i32 2
  %130 = load i32, ptr %Param183, align 4
  %131 = load i32, ptr %a0, align 4
  %add184 = add i32 %131, %130
  store i32 %add184, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.body333

sw.bb186:                                         ; preds = %do.end163, %do.end163
  %132 = load ptr, ptr %TabEnt, align 8
  %Param187 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %132, i64 0, i32 2
  %133 = load i32, ptr %Param187, align 4
  %134 = load i32, ptr %a0, align 4
  %add188 = add i32 %134, %133
  store i32 %add188, ptr %a0, align 4
  %135 = load i32, ptr %RunLength, align 4
  %add190 = add i32 %135, %133
  store i32 %add190, ptr %RunLength, align 4
  br label %for.cond124

for.cond194:                                      ; preds = %sw.bb56, %sw.bb256
  %136 = load i32, ptr %BitsAvail, align 4
  %cmp197 = icmp slt i32 %136, 12
  br i1 %cmp197, label %if.then199, label %do.end233

if.then199:                                       ; preds = %for.cond194
  %137 = load ptr, ptr %cp, align 8
  %138 = load ptr, ptr %ep, align 8
  %cmp200.not = icmp ult ptr %137, %138
  br i1 %cmp200.not, label %if.else207, label %if.then202

if.then202:                                       ; preds = %if.then199
  %139 = load i32, ptr %BitsAvail, align 4
  %cmp203 = icmp eq i32 %139, 0
  br i1 %cmp203, label %eof2d, label %if.end206

if.end206:                                        ; preds = %if.then202
  store i32 12, ptr %BitsAvail, align 4
  br label %do.end233

if.else207:                                       ; preds = %if.then199
  %140 = load ptr, ptr %bitmap, align 8
  %141 = load ptr, ptr %cp, align 8
  %incdec.ptr208 = getelementptr inbounds i8, ptr %141, i64 1
  store ptr %incdec.ptr208, ptr %cp, align 8
  %142 = load i8, ptr %141, align 1
  %idxprom209 = zext i8 %142 to i64
  %arrayidx210 = getelementptr inbounds i8, ptr %140, i64 %idxprom209
  %143 = load i8, ptr %arrayidx210, align 1
  %conv211 = zext i8 %143 to i32
  %144 = load i32, ptr %BitsAvail, align 4
  %shl212 = shl i32 %conv211, %144
  %145 = load i32, ptr %BitAcc, align 4
  %or213 = or i32 %145, %shl212
  store i32 %or213, ptr %BitAcc, align 4
  %add214 = add nsw i32 %144, 8
  store i32 %add214, ptr %BitsAvail, align 4
  %cmp215 = icmp slt i32 %144, 4
  br i1 %cmp215, label %if.then217, label %do.end233

if.then217:                                       ; preds = %if.else207
  %146 = load ptr, ptr %cp, align 8
  %147 = load ptr, ptr %ep, align 8
  %cmp218.not = icmp ult ptr %146, %147
  br i1 %cmp218.not, label %if.else221, label %if.end229

if.else221:                                       ; preds = %if.then217
  %148 = load ptr, ptr %bitmap, align 8
  %149 = load ptr, ptr %cp, align 8
  %incdec.ptr222 = getelementptr inbounds i8, ptr %149, i64 1
  store ptr %incdec.ptr222, ptr %cp, align 8
  %150 = load i8, ptr %149, align 1
  %idxprom223 = zext i8 %150 to i64
  %arrayidx224 = getelementptr inbounds i8, ptr %148, i64 %idxprom223
  %151 = load i8, ptr %arrayidx224, align 1
  %conv225 = zext i8 %151 to i32
  %152 = load i32, ptr %BitsAvail, align 4
  %shl226 = shl i32 %conv225, %152
  %153 = load i32, ptr %BitAcc, align 4
  %or227 = or i32 %153, %shl226
  store i32 %or227, ptr %BitAcc, align 4
  %add228 = add nsw i32 %152, 8
  br label %if.end229

if.end229:                                        ; preds = %if.then217, %if.else221
  %storemerge48 = phi i32 [ %add228, %if.else221 ], [ 12, %if.then217 ]
  store i32 %storemerge48, ptr %BitsAvail, align 4
  br label %do.end233

do.end233:                                        ; preds = %for.cond194, %if.else207, %if.end229, %if.end206
  %154 = load i32, ptr %BitAcc, align 4
  %and234 = and i32 %154, 4095
  %idx.ext235 = zext i32 %and234 to i64
  %add.ptr236 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %idx.ext235
  store ptr %add.ptr236, ptr %TabEnt, align 8
  %155 = load ptr, ptr %TabEnt, align 8
  %Width238 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %155, i64 0, i32 1
  %156 = load i8, ptr %Width238, align 1
  %conv239 = zext i8 %156 to i32
  %157 = load i32, ptr %BitsAvail, align 4
  %sub240 = sub nsw i32 %157, %conv239
  store i32 %sub240, ptr %BitsAvail, align 4
  %158 = load ptr, ptr %TabEnt, align 8
  %Width241 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %158, i64 0, i32 1
  %159 = load i8, ptr %Width241, align 1
  %conv242 = zext i8 %159 to i32
  %160 = load i32, ptr %BitAcc, align 4
  %shr243 = lshr i32 %160, %conv242
  store i32 %shr243, ptr %BitAcc, align 4
  %161 = load ptr, ptr %TabEnt, align 8
  %162 = load i8, ptr %161, align 4
  switch i8 %162, label %badWhite2d [
    i8 7, label %do.body249
    i8 9, label %sw.bb256
    i8 11, label %sw.bb256
  ]

do.body249:                                       ; preds = %do.end233
  %163 = load i32, ptr %RunLength, align 4
  %164 = load ptr, ptr %TabEnt, align 8
  %Param250 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %164, i64 0, i32 2
  %165 = load i32, ptr %Param250, align 4
  %add251 = add i32 %163, %165
  %166 = load ptr, ptr %pa, align 8
  %incdec.ptr252 = getelementptr inbounds i32, ptr %166, i64 1
  store ptr %incdec.ptr252, ptr %pa, align 8
  store i32 %add251, ptr %166, align 4
  %167 = load ptr, ptr %TabEnt, align 8
  %Param253 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %167, i64 0, i32 2
  %168 = load i32, ptr %Param253, align 4
  %169 = load i32, ptr %a0, align 4
  %add254 = add i32 %169, %168
  store i32 %add254, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %for.cond263

sw.bb256:                                         ; preds = %do.end233, %do.end233
  %170 = load ptr, ptr %TabEnt, align 8
  %Param257 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %170, i64 0, i32 2
  %171 = load i32, ptr %Param257, align 4
  %172 = load i32, ptr %a0, align 4
  %add258 = add i32 %172, %171
  store i32 %add258, ptr %a0, align 4
  %173 = load i32, ptr %RunLength, align 4
  %add260 = add i32 %173, %171
  store i32 %add260, ptr %RunLength, align 4
  br label %for.cond194

for.cond263:                                      ; preds = %sw.bb325, %do.body249
  %174 = load i32, ptr %BitsAvail, align 4
  %cmp266 = icmp slt i32 %174, 13
  br i1 %cmp266, label %if.then268, label %do.end302

if.then268:                                       ; preds = %for.cond263
  %175 = load ptr, ptr %cp, align 8
  %176 = load ptr, ptr %ep, align 8
  %cmp269.not = icmp ult ptr %175, %176
  br i1 %cmp269.not, label %if.else276, label %if.then271

if.then271:                                       ; preds = %if.then268
  %177 = load i32, ptr %BitsAvail, align 4
  %cmp272 = icmp eq i32 %177, 0
  br i1 %cmp272, label %eof2d, label %if.end275

if.end275:                                        ; preds = %if.then271
  store i32 13, ptr %BitsAvail, align 4
  br label %do.end302

if.else276:                                       ; preds = %if.then268
  %178 = load ptr, ptr %bitmap, align 8
  %179 = load ptr, ptr %cp, align 8
  %incdec.ptr277 = getelementptr inbounds i8, ptr %179, i64 1
  store ptr %incdec.ptr277, ptr %cp, align 8
  %180 = load i8, ptr %179, align 1
  %idxprom278 = zext i8 %180 to i64
  %arrayidx279 = getelementptr inbounds i8, ptr %178, i64 %idxprom278
  %181 = load i8, ptr %arrayidx279, align 1
  %conv280 = zext i8 %181 to i32
  %182 = load i32, ptr %BitsAvail, align 4
  %shl281 = shl i32 %conv280, %182
  %183 = load i32, ptr %BitAcc, align 4
  %or282 = or i32 %183, %shl281
  store i32 %or282, ptr %BitAcc, align 4
  %add283 = add nsw i32 %182, 8
  store i32 %add283, ptr %BitsAvail, align 4
  %cmp284 = icmp slt i32 %182, 5
  br i1 %cmp284, label %if.then286, label %do.end302

if.then286:                                       ; preds = %if.else276
  %184 = load ptr, ptr %cp, align 8
  %185 = load ptr, ptr %ep, align 8
  %cmp287.not = icmp ult ptr %184, %185
  br i1 %cmp287.not, label %if.else290, label %if.end298

if.else290:                                       ; preds = %if.then286
  %186 = load ptr, ptr %bitmap, align 8
  %187 = load ptr, ptr %cp, align 8
  %incdec.ptr291 = getelementptr inbounds i8, ptr %187, i64 1
  store ptr %incdec.ptr291, ptr %cp, align 8
  %188 = load i8, ptr %187, align 1
  %idxprom292 = zext i8 %188 to i64
  %arrayidx293 = getelementptr inbounds i8, ptr %186, i64 %idxprom292
  %189 = load i8, ptr %arrayidx293, align 1
  %conv294 = zext i8 %189 to i32
  %190 = load i32, ptr %BitsAvail, align 4
  %shl295 = shl i32 %conv294, %190
  %191 = load i32, ptr %BitAcc, align 4
  %or296 = or i32 %191, %shl295
  store i32 %or296, ptr %BitAcc, align 4
  %add297 = add nsw i32 %190, 8
  br label %if.end298

if.end298:                                        ; preds = %if.then286, %if.else290
  %storemerge47 = phi i32 [ %add297, %if.else290 ], [ 13, %if.then286 ]
  store i32 %storemerge47, ptr %BitsAvail, align 4
  br label %do.end302

do.end302:                                        ; preds = %for.cond263, %if.else276, %if.end298, %if.end275
  %192 = load i32, ptr %BitAcc, align 4
  %and303 = and i32 %192, 8191
  %idx.ext304 = zext i32 %and303 to i64
  %add.ptr305 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %idx.ext304
  store ptr %add.ptr305, ptr %TabEnt, align 8
  %193 = load ptr, ptr %TabEnt, align 8
  %Width307 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %193, i64 0, i32 1
  %194 = load i8, ptr %Width307, align 1
  %conv308 = zext i8 %194 to i32
  %195 = load i32, ptr %BitsAvail, align 4
  %sub309 = sub nsw i32 %195, %conv308
  store i32 %sub309, ptr %BitsAvail, align 4
  %196 = load ptr, ptr %TabEnt, align 8
  %Width310 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %196, i64 0, i32 1
  %197 = load i8, ptr %Width310, align 1
  %conv311 = zext i8 %197 to i32
  %198 = load i32, ptr %BitAcc, align 4
  %shr312 = lshr i32 %198, %conv311
  store i32 %shr312, ptr %BitAcc, align 4
  %199 = load ptr, ptr %TabEnt, align 8
  %200 = load i8, ptr %199, align 4
  switch i8 %200, label %badBlack2d [
    i8 8, label %do.body318
    i8 10, label %sw.bb325
    i8 11, label %sw.bb325
  ]

do.body318:                                       ; preds = %do.end302
  %201 = load i32, ptr %RunLength, align 4
  %202 = load ptr, ptr %TabEnt, align 8
  %Param319 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %202, i64 0, i32 2
  %203 = load i32, ptr %Param319, align 4
  %add320 = add i32 %201, %203
  %204 = load ptr, ptr %pa, align 8
  %incdec.ptr321 = getelementptr inbounds i32, ptr %204, i64 1
  store ptr %incdec.ptr321, ptr %pa, align 8
  store i32 %add320, ptr %204, align 4
  %205 = load ptr, ptr %TabEnt, align 8
  %Param322 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %205, i64 0, i32 2
  %206 = load i32, ptr %Param322, align 4
  %207 = load i32, ptr %a0, align 4
  %add323 = add i32 %207, %206
  store i32 %add323, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.body333

sw.bb325:                                         ; preds = %do.end302, %do.end302
  %208 = load ptr, ptr %TabEnt, align 8
  %Param326 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %208, i64 0, i32 2
  %209 = load i32, ptr %Param326, align 4
  %210 = load i32, ptr %a0, align 4
  %add327 = add i32 %210, %209
  store i32 %add327, ptr %a0, align 4
  %211 = load i32, ptr %RunLength, align 4
  %add329 = add i32 %211, %209
  store i32 %add329, ptr %RunLength, align 4
  br label %for.cond263

do.body333:                                       ; preds = %do.body179, %do.body318
  %212 = load ptr, ptr %pa, align 8
  %213 = load ptr, ptr %thisrun, align 8
  %cmp334.not = icmp eq ptr %212, %213
  br i1 %cmp334.not, label %sw.epilog552, label %while.cond337

while.cond337:                                    ; preds = %do.body333, %while.body344
  %214 = load i32, ptr %b1, align 4
  %215 = load i32, ptr %a0, align 4
  %cmp338.not = icmp sgt i32 %214, %215
  %216 = load i32, ptr %b1, align 4
  %217 = load i32, ptr %lastx, align 4
  %cmp341 = icmp slt i32 %216, %217
  %218 = select i1 %cmp338.not, i1 false, i1 %cmp341
  br i1 %218, label %while.body344, label %sw.epilog552

while.body344:                                    ; preds = %while.cond337
  %219 = load ptr, ptr %pb, align 8
  %220 = load i32, ptr %219, align 4
  %arrayidx346 = getelementptr inbounds i32, ptr %219, i64 1
  %221 = load i32, ptr %arrayidx346, align 4
  %add347 = add i32 %220, %221
  %222 = load i32, ptr %b1, align 4
  %add348 = add i32 %222, %add347
  store i32 %add348, ptr %b1, align 4
  %223 = load ptr, ptr %pb, align 8
  %add.ptr349 = getelementptr inbounds i32, ptr %223, i64 2
  store ptr %add.ptr349, ptr %pb, align 8
  br label %while.cond337, !llvm.loop !13

do.body354:                                       ; preds = %do.end23
  %224 = load ptr, ptr %pa, align 8
  %225 = load ptr, ptr %thisrun, align 8
  %cmp355.not = icmp eq ptr %224, %225
  br i1 %cmp355.not, label %do.body374, label %while.cond358

while.cond358:                                    ; preds = %do.body354, %while.body365
  %226 = load i32, ptr %b1, align 4
  %227 = load i32, ptr %a0, align 4
  %cmp359.not = icmp sgt i32 %226, %227
  %228 = load i32, ptr %b1, align 4
  %229 = load i32, ptr %lastx, align 4
  %cmp362 = icmp slt i32 %228, %229
  %230 = select i1 %cmp359.not, i1 false, i1 %cmp362
  br i1 %230, label %while.body365, label %do.body374

while.body365:                                    ; preds = %while.cond358
  %231 = load ptr, ptr %pb, align 8
  %232 = load i32, ptr %231, align 4
  %arrayidx367 = getelementptr inbounds i32, ptr %231, i64 1
  %233 = load i32, ptr %arrayidx367, align 4
  %add368 = add i32 %232, %233
  %234 = load i32, ptr %b1, align 4
  %add369 = add i32 %234, %add368
  store i32 %add369, ptr %b1, align 4
  %235 = load ptr, ptr %pb, align 8
  %add.ptr370 = getelementptr inbounds i32, ptr %235, i64 2
  store ptr %add.ptr370, ptr %pb, align 8
  br label %while.cond358, !llvm.loop !14

do.body374:                                       ; preds = %while.cond358, %do.body354
  %236 = load i32, ptr %RunLength, align 4
  %237 = load i32, ptr %b1, align 4
  %238 = load i32, ptr %a0, align 4
  %sub375 = sub nsw i32 %237, %238
  %add376 = add nsw i32 %236, %sub375
  %239 = load ptr, ptr %pa, align 8
  %incdec.ptr377 = getelementptr inbounds i32, ptr %239, i64 1
  store ptr %incdec.ptr377, ptr %pa, align 8
  store i32 %add376, ptr %239, align 4
  %240 = load i32, ptr %b1, align 4
  store i32 %240, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %241 = load ptr, ptr %pb, align 8
  %incdec.ptr381 = getelementptr inbounds i32, ptr %241, i64 1
  store ptr %incdec.ptr381, ptr %pb, align 8
  %242 = load i32, ptr %241, align 4
  %243 = load i32, ptr %b1, align 4
  %add382 = add i32 %243, %242
  store i32 %add382, ptr %b1, align 4
  br label %sw.epilog552

do.body384:                                       ; preds = %do.end23
  %244 = load ptr, ptr %pa, align 8
  %245 = load ptr, ptr %thisrun, align 8
  %cmp385.not = icmp eq ptr %244, %245
  br i1 %cmp385.not, label %do.body404, label %while.cond388

while.cond388:                                    ; preds = %do.body384, %while.body395
  %246 = load i32, ptr %b1, align 4
  %247 = load i32, ptr %a0, align 4
  %cmp389.not = icmp sgt i32 %246, %247
  %248 = load i32, ptr %b1, align 4
  %249 = load i32, ptr %lastx, align 4
  %cmp392 = icmp slt i32 %248, %249
  %250 = select i1 %cmp389.not, i1 false, i1 %cmp392
  br i1 %250, label %while.body395, label %do.body404

while.body395:                                    ; preds = %while.cond388
  %251 = load ptr, ptr %pb, align 8
  %252 = load i32, ptr %251, align 4
  %arrayidx397 = getelementptr inbounds i32, ptr %251, i64 1
  %253 = load i32, ptr %arrayidx397, align 4
  %add398 = add i32 %252, %253
  %254 = load i32, ptr %b1, align 4
  %add399 = add i32 %254, %add398
  store i32 %add399, ptr %b1, align 4
  %255 = load ptr, ptr %pb, align 8
  %add.ptr400 = getelementptr inbounds i32, ptr %255, i64 2
  store ptr %add.ptr400, ptr %pb, align 8
  br label %while.cond388, !llvm.loop !15

do.body404:                                       ; preds = %while.cond388, %do.body384
  %256 = load i32, ptr %RunLength, align 4
  %257 = load i32, ptr %b1, align 4
  %258 = load i32, ptr %a0, align 4
  %sub405 = sub nsw i32 %257, %258
  %259 = load ptr, ptr %TabEnt, align 8
  %Param406 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %259, i64 0, i32 2
  %260 = load i32, ptr %Param406, align 4
  %add407 = add i32 %sub405, %260
  %add408 = add i32 %256, %add407
  %261 = load ptr, ptr %pa, align 8
  %incdec.ptr409 = getelementptr inbounds i32, ptr %261, i64 1
  store ptr %incdec.ptr409, ptr %pa, align 8
  store i32 %add408, ptr %261, align 4
  %262 = load i32, ptr %b1, align 4
  %263 = load ptr, ptr %TabEnt, align 8
  %Param411 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %263, i64 0, i32 2
  %264 = load i32, ptr %Param411, align 4
  %add413 = add i32 %262, %264
  store i32 %add413, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %265 = load ptr, ptr %pb, align 8
  %incdec.ptr415 = getelementptr inbounds i32, ptr %265, i64 1
  store ptr %incdec.ptr415, ptr %pb, align 8
  %266 = load i32, ptr %265, align 4
  %267 = load i32, ptr %b1, align 4
  %add416 = add i32 %267, %266
  store i32 %add416, ptr %b1, align 4
  br label %sw.epilog552

do.body418:                                       ; preds = %do.end23
  %268 = load ptr, ptr %pa, align 8
  %269 = load ptr, ptr %thisrun, align 8
  %cmp419.not = icmp eq ptr %268, %269
  br i1 %cmp419.not, label %do.body438, label %while.cond422

while.cond422:                                    ; preds = %do.body418, %while.body429
  %270 = load i32, ptr %b1, align 4
  %271 = load i32, ptr %a0, align 4
  %cmp423.not = icmp sgt i32 %270, %271
  %272 = load i32, ptr %b1, align 4
  %273 = load i32, ptr %lastx, align 4
  %cmp426 = icmp slt i32 %272, %273
  %274 = select i1 %cmp423.not, i1 false, i1 %cmp426
  br i1 %274, label %while.body429, label %do.body438

while.body429:                                    ; preds = %while.cond422
  %275 = load ptr, ptr %pb, align 8
  %276 = load i32, ptr %275, align 4
  %arrayidx431 = getelementptr inbounds i32, ptr %275, i64 1
  %277 = load i32, ptr %arrayidx431, align 4
  %add432 = add i32 %276, %277
  %278 = load i32, ptr %b1, align 4
  %add433 = add i32 %278, %add432
  store i32 %add433, ptr %b1, align 4
  %279 = load ptr, ptr %pb, align 8
  %add.ptr434 = getelementptr inbounds i32, ptr %279, i64 2
  store ptr %add.ptr434, ptr %pb, align 8
  br label %while.cond422, !llvm.loop !16

do.body438:                                       ; preds = %while.cond422, %do.body418
  %280 = load i32, ptr %RunLength, align 4
  %281 = load i32, ptr %b1, align 4
  %282 = load i32, ptr %a0, align 4
  %283 = load ptr, ptr %TabEnt, align 8
  %Param440 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %283, i64 0, i32 2
  %284 = load i32, ptr %Param440, align 4
  %285 = add i32 %282, %284
  %sub441 = sub i32 %281, %285
  %add442 = add i32 %280, %sub441
  %286 = load ptr, ptr %pa, align 8
  %incdec.ptr443 = getelementptr inbounds i32, ptr %286, i64 1
  store ptr %incdec.ptr443, ptr %pa, align 8
  store i32 %add442, ptr %286, align 4
  %287 = load i32, ptr %b1, align 4
  %288 = load i32, ptr %a0, align 4
  %289 = load ptr, ptr %TabEnt, align 8
  %Param445 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %289, i64 0, i32 2
  %290 = load i32, ptr %Param445, align 4
  %291 = add i32 %288, %290
  %sub446 = sub i32 %287, %291
  %add447 = add i32 %288, %sub446
  store i32 %add447, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %292 = load ptr, ptr %pb, align 8
  %incdec.ptr449 = getelementptr inbounds i32, ptr %292, i64 -1
  store ptr %incdec.ptr449, ptr %pb, align 8
  %293 = load i32, ptr %incdec.ptr449, align 4
  %294 = load i32, ptr %b1, align 4
  %sub450 = sub i32 %294, %293
  store i32 %sub450, ptr %b1, align 4
  br label %sw.epilog552

sw.bb451:                                         ; preds = %do.end23
  %295 = load i32, ptr %lastx, align 4
  %296 = load i32, ptr %a0, align 4
  %sub452 = sub nsw i32 %295, %296
  %297 = load ptr, ptr %pa, align 8
  %incdec.ptr453 = getelementptr inbounds i32, ptr %297, i64 1
  store ptr %incdec.ptr453, ptr %pa, align 8
  store i32 %sub452, ptr %297, align 4
  %298 = load ptr, ptr %tif.addr, align 8
  %299 = load i32, ptr %a0, align 4
  %300 = load ptr, ptr %298, align 8
  %tif_row.i = getelementptr inbounds %struct.tiff, ptr %298, i64 0, i32 11
  %301 = load i32, ptr %tif_row.i, align 8
  %conv.i = zext i32 %299 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax4Decode.module, ptr noundef nonnull @.str.39, ptr noundef %300, i32 noundef %301, i64 noundef %conv.i) #6
  br label %do.body597

sw.bb454:                                         ; preds = %do.end23
  %302 = load i32, ptr %lastx, align 4
  %303 = load i32, ptr %a0, align 4
  %sub455 = sub nsw i32 %302, %303
  %304 = load ptr, ptr %pa, align 8
  %incdec.ptr456 = getelementptr inbounds i32, ptr %304, i64 1
  store ptr %incdec.ptr456, ptr %pa, align 8
  store i32 %sub455, ptr %304, align 4
  %305 = load i32, ptr %BitsAvail, align 4
  %cmp458 = icmp slt i32 %305, 5
  br i1 %cmp458, label %if.then460, label %do.end478

if.then460:                                       ; preds = %sw.bb454
  %306 = load ptr, ptr %cp, align 8
  %307 = load ptr, ptr %ep, align 8
  %cmp461.not = icmp ult ptr %306, %307
  br i1 %cmp461.not, label %if.else468, label %if.then463

if.then463:                                       ; preds = %if.then460
  %308 = load i32, ptr %BitsAvail, align 4
  %cmp464 = icmp eq i32 %308, 0
  br i1 %cmp464, label %eof2d, label %if.end476

if.else468:                                       ; preds = %if.then460
  %309 = load ptr, ptr %bitmap, align 8
  %310 = load ptr, ptr %cp, align 8
  %incdec.ptr469 = getelementptr inbounds i8, ptr %310, i64 1
  store ptr %incdec.ptr469, ptr %cp, align 8
  %311 = load i8, ptr %310, align 1
  %idxprom470 = zext i8 %311 to i64
  %arrayidx471 = getelementptr inbounds i8, ptr %309, i64 %idxprom470
  %312 = load i8, ptr %arrayidx471, align 1
  %conv472 = zext i8 %312 to i32
  %313 = load i32, ptr %BitsAvail, align 4
  %shl473 = shl i32 %conv472, %313
  %314 = load i32, ptr %BitAcc, align 4
  %or474 = or i32 %314, %shl473
  store i32 %or474, ptr %BitAcc, align 4
  %add475 = add nsw i32 %313, 8
  br label %if.end476

if.end476:                                        ; preds = %if.then463, %if.else468
  %storemerge45 = phi i32 [ %add475, %if.else468 ], [ 5, %if.then463 ]
  store i32 %storemerge45, ptr %BitsAvail, align 4
  br label %do.end478

do.end478:                                        ; preds = %sw.bb454, %if.end476
  %315 = load i32, ptr %BitAcc, align 4
  %and479 = and i32 %315, 31
  %tobool480.not = icmp eq i32 %and479, 0
  br i1 %tobool480.not, label %if.end482, label %if.then481

if.then481:                                       ; preds = %do.end478
  %316 = load ptr, ptr %tif.addr, align 8
  %317 = load i32, ptr %a0, align 4
  %318 = load ptr, ptr %316, align 8
  %tif_row.i4 = getelementptr inbounds %struct.tiff, ptr %316, i64 0, i32 11
  %319 = load i32, ptr %tif_row.i4, align 8
  %conv.i5 = zext i32 %317 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax4Decode.module, ptr noundef nonnull @.str.34, ptr noundef %318, i32 noundef %319, i64 noundef %conv.i5) #6
  br label %if.end482

if.end482:                                        ; preds = %if.then481, %do.end478
  store i32 1, ptr %EOLcnt, align 4
  br label %do.body597

badMain2d:                                        ; preds = %do.end581, %do.end23
  %320 = load ptr, ptr %tif.addr, align 8
  %321 = load i32, ptr %a0, align 4
  %322 = load ptr, ptr %320, align 8
  %tif_row.i9 = getelementptr inbounds %struct.tiff, ptr %320, i64 0, i32 11
  %323 = load i32, ptr %tif_row.i9, align 8
  %conv.i10 = zext i32 %321 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax4Decode.module, ptr noundef nonnull @.str.34, ptr noundef %322, i32 noundef %323, i64 noundef %conv.i10) #6
  br label %do.body597

badBlack2d:                                       ; preds = %do.end302, %do.end97
  %324 = load ptr, ptr %tif.addr, align 8
  %325 = load i32, ptr %a0, align 4
  %326 = load ptr, ptr %324, align 8
  %tif_row.i14 = getelementptr inbounds %struct.tiff, ptr %324, i64 0, i32 11
  %327 = load i32, ptr %tif_row.i14, align 8
  %conv.i15 = zext i32 %325 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax4Decode.module, ptr noundef nonnull @.str.34, ptr noundef %326, i32 noundef %327, i64 noundef %conv.i15) #6
  br label %do.body597

badWhite2d:                                       ; preds = %do.end233, %do.end163
  %328 = load ptr, ptr %tif.addr, align 8
  %329 = load i32, ptr %a0, align 4
  %330 = load ptr, ptr %328, align 8
  %tif_row.i19 = getelementptr inbounds %struct.tiff, ptr %328, i64 0, i32 11
  %331 = load i32, ptr %tif_row.i19, align 8
  %conv.i20 = zext i32 %329 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax4Decode.module, ptr noundef nonnull @.str.34, ptr noundef %330, i32 noundef %331, i64 noundef %conv.i20) #6
  br label %do.body597

eof2d:                                            ; preds = %if.then566, %if.then463, %if.then271, %if.then202, %if.then132, %if.then66, %if.then15
  %332 = load ptr, ptr %tif.addr, align 8
  %333 = load i32, ptr %a0, align 4
  %334 = load ptr, ptr %332, align 8
  %tif_row.i24 = getelementptr inbounds %struct.tiff, ptr %332, i64 0, i32 11
  %335 = load i32, ptr %tif_row.i24, align 8
  %conv.i25 = zext i32 %333 to i64
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax4Decode.module, ptr noundef nonnull @.str.35, ptr noundef %334, i32 noundef %335, i64 noundef %conv.i25) #6
  %336 = load i32, ptr %RunLength, align 4
  %tobool485.not = icmp eq i32 %336, 0
  br i1 %tobool485.not, label %if.end492, label %do.body487

do.body487:                                       ; preds = %eof2d
  %337 = load i32, ptr %RunLength, align 4
  %338 = load ptr, ptr %pa, align 8
  %incdec.ptr489 = getelementptr inbounds i32, ptr %338, i64 1
  store ptr %incdec.ptr489, ptr %pa, align 8
  store i32 %337, ptr %338, align 4
  store i32 0, ptr %RunLength, align 4
  br label %if.end492

if.end492:                                        ; preds = %do.body487, %eof2d
  %339 = load i32, ptr %a0, align 4
  %340 = load i32, ptr %lastx, align 4
  %cmp493.not = icmp eq i32 %339, %340
  br i1 %cmp493.not, label %EOFG4, label %if.then495

if.then495:                                       ; preds = %if.end492
  %341 = load ptr, ptr %tif.addr, align 8
  %342 = load i32, ptr %a0, align 4
  %343 = load i32, ptr %lastx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a0.addr.i28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lastx.addr.i)
  store i32 %342, ptr %a0.addr.i28, align 4
  store i32 %343, ptr %lastx.addr.i, align 4
  %344 = load ptr, ptr %341, align 8
  %cmp.i = icmp ult i32 %342, %343
  %cond.i = select i1 %cmp.i, ptr @.str.37, ptr @.str.38
  %tif_row.i29 = getelementptr inbounds %struct.tiff, ptr %341, i64 0, i32 11
  %345 = load i32, ptr %tif_row.i29, align 8
  %346 = load i32, ptr %a0.addr.i28, align 4
  %conv.i30 = zext i32 %346 to i64
  %347 = load i32, ptr %lastx.addr.i, align 4
  %conv1.i = zext i32 %347 to i64
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax4Decode.module, ptr noundef nonnull @.str.36, ptr noundef %344, ptr noundef nonnull %cond.i, i32 noundef %345, i64 noundef %conv.i30, i64 noundef %conv1.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a0.addr.i28)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lastx.addr.i)
  br label %while.cond496

while.cond496:                                    ; preds = %while.body503, %if.then495
  %348 = load i32, ptr %a0, align 4
  %349 = load i32, ptr %lastx, align 4
  %cmp497 = icmp sgt i32 %348, %349
  %350 = load ptr, ptr %pa, align 8
  %351 = load ptr, ptr %thisrun, align 8
  %cmp500 = icmp ugt ptr %350, %351
  %352 = select i1 %cmp497, i1 %cmp500, i1 false
  br i1 %352, label %while.body503, label %while.end506

while.body503:                                    ; preds = %while.cond496
  %353 = load ptr, ptr %pa, align 8
  %incdec.ptr504 = getelementptr inbounds i32, ptr %353, i64 -1
  store ptr %incdec.ptr504, ptr %pa, align 8
  %354 = load i32, ptr %incdec.ptr504, align 4
  %355 = load i32, ptr %a0, align 4
  %sub505 = sub i32 %355, %354
  store i32 %sub505, ptr %a0, align 4
  br label %while.cond496, !llvm.loop !17

while.end506:                                     ; preds = %while.cond496
  %356 = load i32, ptr %a0, align 4
  %357 = load i32, ptr %lastx, align 4
  %cmp507 = icmp slt i32 %356, %357
  br i1 %cmp507, label %if.then509, label %if.else534

if.then509:                                       ; preds = %while.end506
  %358 = load i32, ptr %a0, align 4
  %cmp510 = icmp slt i32 %358, 0
  %spec.store.select = select i1 %cmp510, i32 0, i32 %358
  store i32 %spec.store.select, ptr %a0, align 4
  %359 = load ptr, ptr %pa, align 8
  %360 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast514 = ptrtoint ptr %359 to i64
  %sub.ptr.rhs.cast515 = ptrtoint ptr %360 to i64
  %sub.ptr.sub516 = sub i64 %sub.ptr.lhs.cast514, %sub.ptr.rhs.cast515
  %361 = and i64 %sub.ptr.sub516, 4
  %tobool519.not = icmp eq i64 %361, 0
  br i1 %tobool519.not, label %do.body527, label %do.body521

do.body521:                                       ; preds = %if.then509
  %362 = load i32, ptr %RunLength, align 4
  %363 = load ptr, ptr %pa, align 8
  %incdec.ptr523 = getelementptr inbounds i32, ptr %363, i64 1
  store ptr %incdec.ptr523, ptr %pa, align 8
  store i32 %362, ptr %363, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.body527

do.body527:                                       ; preds = %if.then509, %do.body521
  %364 = load i32, ptr %RunLength, align 4
  %365 = load i32, ptr %lastx, align 4
  %366 = load i32, ptr %a0, align 4
  %sub528 = sub nsw i32 %365, %366
  %add529 = add nsw i32 %364, %sub528
  %367 = load ptr, ptr %pa, align 8
  %incdec.ptr530 = getelementptr inbounds i32, ptr %367, i64 1
  store ptr %incdec.ptr530, ptr %pa, align 8
  store i32 %add529, ptr %367, align 4
  %368 = load i32, ptr %lastx, align 4
  store i32 %368, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %EOFG4

if.else534:                                       ; preds = %while.end506
  %369 = load i32, ptr %a0, align 4
  %370 = load i32, ptr %lastx, align 4
  %cmp535 = icmp sgt i32 %369, %370
  br i1 %cmp535, label %do.body538, label %EOFG4

do.body538:                                       ; preds = %if.else534
  %371 = load i32, ptr %RunLength, align 4
  %372 = load i32, ptr %lastx, align 4
  %add539 = add nsw i32 %371, %372
  %373 = load ptr, ptr %pa, align 8
  %incdec.ptr540 = getelementptr inbounds i32, ptr %373, i64 1
  store ptr %incdec.ptr540, ptr %pa, align 8
  store i32 %add539, ptr %373, align 4
  %374 = load i32, ptr %a0, align 4
  %add541 = add nsw i32 %374, %372
  store i32 %add541, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %375 = load i32, ptr %RunLength, align 4
  %376 = load ptr, ptr %pa, align 8
  %incdec.ptr545 = getelementptr inbounds i32, ptr %376, i64 1
  store ptr %incdec.ptr545, ptr %pa, align 8
  store i32 %375, ptr %376, align 4
  store i32 0, ptr %RunLength, align 4
  br label %EOFG4

sw.epilog552:                                     ; preds = %while.cond337, %do.body333, %do.body438, %do.body404, %do.body374, %do.end49
  br label %while.cond5, !llvm.loop !18

while.end553:                                     ; preds = %while.cond5
  %377 = load i32, ptr %RunLength, align 4
  %tobool554.not = icmp eq i32 %377, 0
  br i1 %tobool554.not, label %do.body597, label %if.then555

if.then555:                                       ; preds = %while.end553
  %378 = load i32, ptr %RunLength, align 4
  %379 = load i32, ptr %a0, align 4
  %add556 = add nsw i32 %378, %379
  %380 = load i32, ptr %lastx, align 4
  %cmp557 = icmp slt i32 %add556, %380
  br i1 %cmp557, label %do.body560, label %do.body591

do.body560:                                       ; preds = %if.then555
  %381 = load i32, ptr %BitsAvail, align 4
  %cmp561 = icmp slt i32 %381, 1
  br i1 %cmp561, label %if.then563, label %do.end581

if.then563:                                       ; preds = %do.body560
  %382 = load ptr, ptr %cp, align 8
  %383 = load ptr, ptr %ep, align 8
  %cmp564.not = icmp ult ptr %382, %383
  br i1 %cmp564.not, label %if.else571, label %if.then566

if.then566:                                       ; preds = %if.then563
  %384 = load i32, ptr %BitsAvail, align 4
  %cmp567 = icmp eq i32 %384, 0
  br i1 %cmp567, label %eof2d, label %if.end579

if.else571:                                       ; preds = %if.then563
  %385 = load ptr, ptr %bitmap, align 8
  %386 = load ptr, ptr %cp, align 8
  %incdec.ptr572 = getelementptr inbounds i8, ptr %386, i64 1
  store ptr %incdec.ptr572, ptr %cp, align 8
  %387 = load i8, ptr %386, align 1
  %idxprom573 = zext i8 %387 to i64
  %arrayidx574 = getelementptr inbounds i8, ptr %385, i64 %idxprom573
  %388 = load i8, ptr %arrayidx574, align 1
  %conv575 = zext i8 %388 to i32
  %389 = load i32, ptr %BitsAvail, align 4
  %shl576 = shl i32 %conv575, %389
  %390 = load i32, ptr %BitAcc, align 4
  %or577 = or i32 %390, %shl576
  store i32 %or577, ptr %BitAcc, align 4
  %add578 = add nsw i32 %389, 8
  br label %if.end579

if.end579:                                        ; preds = %if.then566, %if.else571
  %storemerge42 = phi i32 [ %add578, %if.else571 ], [ 1, %if.then566 ]
  store i32 %storemerge42, ptr %BitsAvail, align 4
  br label %do.end581

do.end581:                                        ; preds = %do.body560, %if.end579
  %391 = load i32, ptr %BitAcc, align 4
  %and582 = and i32 %391, 1
  %tobool583.not = icmp eq i32 %and582, 0
  br i1 %tobool583.not, label %badMain2d, label %do.body586

do.body586:                                       ; preds = %do.end581
  %392 = load i32, ptr %BitsAvail, align 4
  %sub587 = add nsw i32 %392, -1
  store i32 %sub587, ptr %BitsAvail, align 4
  %393 = load i32, ptr %BitAcc, align 4
  %shr588 = lshr i32 %393, 1
  store i32 %shr588, ptr %BitAcc, align 4
  br label %do.body591

do.body591:                                       ; preds = %if.then555, %do.body586
  %394 = load i32, ptr %RunLength, align 4
  %395 = load ptr, ptr %pa, align 8
  %incdec.ptr593 = getelementptr inbounds i32, ptr %395, i64 1
  store ptr %incdec.ptr593, ptr %pa, align 8
  store i32 %394, ptr %395, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.body597

do.body597:                                       ; preds = %sw.bb451, %if.end482, %badMain2d, %badBlack2d, %badWhite2d, %do.body591, %while.end553
  %396 = load i32, ptr %RunLength, align 4
  %tobool598.not = icmp eq i32 %396, 0
  br i1 %tobool598.not, label %if.end605, label %do.body600

do.body600:                                       ; preds = %do.body597
  %397 = load i32, ptr %RunLength, align 4
  %398 = load ptr, ptr %pa, align 8
  %incdec.ptr602 = getelementptr inbounds i32, ptr %398, i64 1
  store ptr %incdec.ptr602, ptr %pa, align 8
  store i32 %397, ptr %398, align 4
  store i32 0, ptr %RunLength, align 4
  br label %if.end605

if.end605:                                        ; preds = %do.body600, %do.body597
  %399 = load i32, ptr %a0, align 4
  %400 = load i32, ptr %lastx, align 4
  %cmp606.not = icmp eq i32 %399, %400
  br i1 %cmp606.not, label %do.end665, label %if.then608

if.then608:                                       ; preds = %if.end605
  %401 = load ptr, ptr %tif.addr, align 8
  %402 = load i32, ptr %a0, align 4
  %403 = load i32, ptr %lastx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a0.addr.i33)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lastx.addr.i34)
  store i32 %402, ptr %a0.addr.i33, align 4
  store i32 %403, ptr %lastx.addr.i34, align 4
  %404 = load ptr, ptr %401, align 8
  %cmp.i35 = icmp ult i32 %402, %403
  %cond.i36 = select i1 %cmp.i35, ptr @.str.37, ptr @.str.38
  %tif_row.i37 = getelementptr inbounds %struct.tiff, ptr %401, i64 0, i32 11
  %405 = load i32, ptr %tif_row.i37, align 8
  %406 = load i32, ptr %a0.addr.i33, align 4
  %conv.i38 = zext i32 %406 to i64
  %407 = load i32, ptr %lastx.addr.i34, align 4
  %conv1.i39 = zext i32 %407 to i64
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax4Decode.module, ptr noundef nonnull @.str.36, ptr noundef %404, ptr noundef nonnull %cond.i36, i32 noundef %405, i64 noundef %conv.i38, i64 noundef %conv1.i39) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a0.addr.i33)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lastx.addr.i34)
  br label %while.cond609

while.cond609:                                    ; preds = %while.body616, %if.then608
  %408 = load i32, ptr %a0, align 4
  %409 = load i32, ptr %lastx, align 4
  %cmp610 = icmp sgt i32 %408, %409
  %410 = load ptr, ptr %pa, align 8
  %411 = load ptr, ptr %thisrun, align 8
  %cmp613 = icmp ugt ptr %410, %411
  %412 = select i1 %cmp610, i1 %cmp613, i1 false
  br i1 %412, label %while.body616, label %while.end619

while.body616:                                    ; preds = %while.cond609
  %413 = load ptr, ptr %pa, align 8
  %incdec.ptr617 = getelementptr inbounds i32, ptr %413, i64 -1
  store ptr %incdec.ptr617, ptr %pa, align 8
  %414 = load i32, ptr %incdec.ptr617, align 4
  %415 = load i32, ptr %a0, align 4
  %sub618 = sub i32 %415, %414
  store i32 %sub618, ptr %a0, align 4
  br label %while.cond609, !llvm.loop !19

while.end619:                                     ; preds = %while.cond609
  %416 = load i32, ptr %a0, align 4
  %417 = load i32, ptr %lastx, align 4
  %cmp620 = icmp slt i32 %416, %417
  br i1 %cmp620, label %if.then622, label %if.else647

if.then622:                                       ; preds = %while.end619
  %418 = load i32, ptr %a0, align 4
  %cmp623 = icmp slt i32 %418, 0
  %spec.store.select52 = select i1 %cmp623, i32 0, i32 %418
  store i32 %spec.store.select52, ptr %a0, align 4
  %419 = load ptr, ptr %pa, align 8
  %420 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast627 = ptrtoint ptr %419 to i64
  %sub.ptr.rhs.cast628 = ptrtoint ptr %420 to i64
  %sub.ptr.sub629 = sub i64 %sub.ptr.lhs.cast627, %sub.ptr.rhs.cast628
  %421 = and i64 %sub.ptr.sub629, 4
  %tobool632.not = icmp eq i64 %421, 0
  br i1 %tobool632.not, label %do.body640, label %do.body634

do.body634:                                       ; preds = %if.then622
  %422 = load i32, ptr %RunLength, align 4
  %423 = load ptr, ptr %pa, align 8
  %incdec.ptr636 = getelementptr inbounds i32, ptr %423, i64 1
  store ptr %incdec.ptr636, ptr %pa, align 8
  store i32 %422, ptr %423, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.body640

do.body640:                                       ; preds = %if.then622, %do.body634
  %424 = load i32, ptr %RunLength, align 4
  %425 = load i32, ptr %lastx, align 4
  %426 = load i32, ptr %a0, align 4
  %sub641 = sub nsw i32 %425, %426
  %add642 = add nsw i32 %424, %sub641
  %427 = load ptr, ptr %pa, align 8
  %incdec.ptr643 = getelementptr inbounds i32, ptr %427, i64 1
  store ptr %incdec.ptr643, ptr %pa, align 8
  store i32 %add642, ptr %427, align 4
  %428 = load i32, ptr %lastx, align 4
  store i32 %428, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end665

if.else647:                                       ; preds = %while.end619
  %429 = load i32, ptr %a0, align 4
  %430 = load i32, ptr %lastx, align 4
  %cmp648 = icmp sgt i32 %429, %430
  br i1 %cmp648, label %do.body651, label %do.end665

do.body651:                                       ; preds = %if.else647
  %431 = load i32, ptr %RunLength, align 4
  %432 = load i32, ptr %lastx, align 4
  %add652 = add nsw i32 %431, %432
  %433 = load ptr, ptr %pa, align 8
  %incdec.ptr653 = getelementptr inbounds i32, ptr %433, i64 1
  store ptr %incdec.ptr653, ptr %pa, align 8
  store i32 %add652, ptr %433, align 4
  %434 = load i32, ptr %a0, align 4
  %add654 = add nsw i32 %434, %432
  store i32 %add654, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %435 = load i32, ptr %RunLength, align 4
  %436 = load ptr, ptr %pa, align 8
  %incdec.ptr658 = getelementptr inbounds i32, ptr %436, i64 1
  store ptr %incdec.ptr658, ptr %pa, align 8
  store i32 %435, ptr %436, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end665

do.end665:                                        ; preds = %do.body640, %do.body651, %if.else647, %if.end605
  %437 = load ptr, ptr %sp, align 8
  %fill = getelementptr inbounds %struct.Fax3DecodeState, ptr %437, i64 0, i32 5
  %438 = load ptr, ptr %fill, align 8
  %439 = load ptr, ptr %buf.addr, align 8
  %440 = load ptr, ptr %thisrun, align 8
  %441 = load ptr, ptr %pa, align 8
  %442 = load i32, ptr %lastx, align 4
  call void %438(ptr noundef %439, ptr noundef %440, ptr noundef %441, i32 noundef %442) #6
  %443 = load i32, ptr %RunLength, align 4
  %444 = load ptr, ptr %pa, align 8
  %incdec.ptr668 = getelementptr inbounds i32, ptr %444, i64 1
  store ptr %incdec.ptr668, ptr %pa, align 8
  store i32 %443, ptr %444, align 4
  store i32 0, ptr %RunLength, align 4
  %445 = load ptr, ptr %sp, align 8
  %curruns671 = getelementptr inbounds %struct.Fax3DecodeState, ptr %445, i64 0, i32 8
  %446 = load ptr, ptr %curruns671, align 8
  %refruns672 = getelementptr inbounds %struct.Fax3DecodeState, ptr %445, i64 0, i32 7
  %447 = load ptr, ptr %refruns672, align 8
  %curruns673 = getelementptr inbounds %struct.Fax3DecodeState, ptr %445, i64 0, i32 8
  store ptr %447, ptr %curruns673, align 8
  %448 = load ptr, ptr %sp, align 8
  %refruns674 = getelementptr inbounds %struct.Fax3DecodeState, ptr %448, i64 0, i32 7
  store ptr %446, ptr %refruns674, align 8
  %rowbytes = getelementptr inbounds %struct.Fax3BaseState, ptr %448, i64 0, i32 1
  %449 = load i32, ptr %rowbytes, align 4
  %450 = load ptr, ptr %buf.addr, align 8
  %idx.ext676 = zext i32 %449 to i64
  %add.ptr677 = getelementptr inbounds i8, ptr %450, i64 %idx.ext676
  store ptr %add.ptr677, ptr %buf.addr, align 8
  %451 = load ptr, ptr %sp, align 8
  %rowbytes679 = getelementptr inbounds %struct.Fax3BaseState, ptr %451, i64 0, i32 1
  %452 = load i32, ptr %rowbytes679, align 4
  %453 = load i32, ptr %occ.addr, align 4
  %sub680 = sub i32 %453, %452
  store i32 %sub680, ptr %occ.addr, align 4
  %cmp681.not = icmp eq i32 %453, %452
  br i1 %cmp681.not, label %if.end684, label %if.then683

if.then683:                                       ; preds = %do.end665
  %454 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %454, i64 0, i32 11
  %455 = load i32, ptr %tif_row, align 8
  %inc = add i32 %455, 1
  store i32 %inc, ptr %tif_row, align 8
  br label %if.end684

if.end684:                                        ; preds = %if.then683, %do.end665
  br label %while.cond, !llvm.loop !20

EOFG4:                                            ; preds = %do.body527, %do.body538, %if.else534, %if.end492
  %456 = load ptr, ptr %sp, align 8
  %fill685 = getelementptr inbounds %struct.Fax3DecodeState, ptr %456, i64 0, i32 5
  %457 = load ptr, ptr %fill685, align 8
  %458 = load ptr, ptr %buf.addr, align 8
  %459 = load ptr, ptr %thisrun, align 8
  %460 = load ptr, ptr %pa, align 8
  %461 = load i32, ptr %lastx, align 4
  call void %457(ptr noundef %458, ptr noundef %459, ptr noundef %460, i32 noundef %461) #6
  %462 = load i32, ptr %BitsAvail, align 4
  %463 = load ptr, ptr %sp, align 8
  %bit687 = getelementptr inbounds %struct.Fax3DecodeState, ptr %463, i64 0, i32 3
  store i32 %462, ptr %bit687, align 4
  %464 = load i32, ptr %BitAcc, align 4
  %data688 = getelementptr inbounds %struct.Fax3DecodeState, ptr %463, i64 0, i32 2
  store i32 %464, ptr %data688, align 8
  %465 = load i32, ptr %EOLcnt, align 4
  %466 = load ptr, ptr %sp, align 8
  %EOLcnt689 = getelementptr inbounds %struct.Fax3DecodeState, ptr %466, i64 0, i32 4
  store i32 %465, ptr %EOLcnt689, align 8
  %467 = load ptr, ptr %cp, align 8
  %468 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp690 = getelementptr inbounds %struct.tiff, ptr %468, i64 0, i32 42
  %469 = load ptr, ptr %tif_rawcp690, align 8
  %sub.ptr.lhs.cast691 = ptrtoint ptr %467 to i64
  %sub.ptr.rhs.cast692 = ptrtoint ptr %469 to i64
  %sub.ptr.sub693.neg = sub i64 %sub.ptr.rhs.cast692, %sub.ptr.lhs.cast691
  %tif_rawcc694 = getelementptr inbounds %struct.tiff, ptr %468, i64 0, i32 43
  %470 = load i32, ptr %tif_rawcc694, align 8
  %471 = trunc i64 %sub.ptr.sub693.neg to i32
  %conv697 = add i32 %470, %471
  store i32 %conv697, ptr %tif_rawcc694, align 8
  %472 = load ptr, ptr %cp, align 8
  %473 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp698 = getelementptr inbounds %struct.tiff, ptr %473, i64 0, i32 42
  store ptr %472, ptr %tif_rawcp698, align 8
  br label %return

do.body701:                                       ; preds = %while.cond
  %474 = load i32, ptr %BitsAvail, align 4
  %475 = load ptr, ptr %sp, align 8
  %bit702 = getelementptr inbounds %struct.Fax3DecodeState, ptr %475, i64 0, i32 3
  store i32 %474, ptr %bit702, align 4
  %476 = load i32, ptr %BitAcc, align 4
  %data703 = getelementptr inbounds %struct.Fax3DecodeState, ptr %475, i64 0, i32 2
  store i32 %476, ptr %data703, align 8
  %477 = load i32, ptr %EOLcnt, align 4
  %478 = load ptr, ptr %sp, align 8
  %EOLcnt704 = getelementptr inbounds %struct.Fax3DecodeState, ptr %478, i64 0, i32 4
  store i32 %477, ptr %EOLcnt704, align 8
  %479 = load ptr, ptr %cp, align 8
  %480 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp705 = getelementptr inbounds %struct.tiff, ptr %480, i64 0, i32 42
  %481 = load ptr, ptr %tif_rawcp705, align 8
  %sub.ptr.lhs.cast706 = ptrtoint ptr %479 to i64
  %sub.ptr.rhs.cast707 = ptrtoint ptr %481 to i64
  %sub.ptr.sub708.neg = sub i64 %sub.ptr.rhs.cast707, %sub.ptr.lhs.cast706
  %tif_rawcc709 = getelementptr inbounds %struct.tiff, ptr %480, i64 0, i32 43
  %482 = load i32, ptr %tif_rawcc709, align 8
  %483 = trunc i64 %sub.ptr.sub708.neg to i32
  %conv712 = add i32 %482, %483
  store i32 %conv712, ptr %tif_rawcc709, align 8
  %484 = load ptr, ptr %cp, align 8
  %485 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp713 = getelementptr inbounds %struct.tiff, ptr %485, i64 0, i32 42
  store ptr %484, ptr %tif_rawcp713, align 8
  br label %return

return:                                           ; preds = %do.body701, %EOFG4
  %storemerge = phi i32 [ 1, %do.body701 ], [ -1, %EOFG4 ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax4Encode(ptr noundef %tif, ptr noundef %bp, i32 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %entry
  %1 = load i32, ptr %cc.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %return

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load ptr, ptr %bp.addr, align 8
  %4 = load ptr, ptr %sp, align 8
  %refline = getelementptr inbounds %struct.Fax3EncodeState, ptr %4, i64 0, i32 4
  %5 = load ptr, ptr %refline, align 8
  %rowpixels = getelementptr inbounds %struct.Fax3BaseState, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %rowpixels, align 8
  %call = call i32 @Fax3Encode2DRow(ptr noundef %2, ptr noundef %3, ptr noundef %5, i32 noundef %6)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %while.body
  %7 = load ptr, ptr %sp, align 8
  %refline2 = getelementptr inbounds %struct.Fax3EncodeState, ptr %7, i64 0, i32 4
  %8 = load ptr, ptr %refline2, align 8
  %9 = load ptr, ptr %bp.addr, align 8
  %rowbytes = getelementptr inbounds %struct.Fax3BaseState, ptr %7, i64 0, i32 1
  %10 = load i32, ptr %rowbytes, align 4
  call void @_TIFFmemcpy(ptr noundef %8, ptr noundef %9, i32 noundef %10) #6
  %11 = load ptr, ptr %sp, align 8
  %rowbytes5 = getelementptr inbounds %struct.Fax3BaseState, ptr %11, i64 0, i32 1
  %12 = load i32, ptr %rowbytes5, align 4
  %13 = load ptr, ptr %bp.addr, align 8
  %idx.ext = zext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %idx.ext
  store ptr %add.ptr, ptr %bp.addr, align 8
  %14 = load ptr, ptr %sp, align 8
  %rowbytes7 = getelementptr inbounds %struct.Fax3BaseState, ptr %14, i64 0, i32 1
  %15 = load i32, ptr %rowbytes7, align 4
  %16 = load i32, ptr %cc.addr, align 4
  %sub = sub i32 %16, %15
  store i32 %sub, ptr %cc.addr, align 4
  %cmp8.not = icmp eq i32 %16, %15
  br i1 %cmp8.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end
  %17 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %17, i64 0, i32 11
  %18 = load i32, ptr %tif_row, align 8
  %inc = add i32 %18, 1
  store i32 %inc, ptr %tif_row, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
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
  %3 = load i32, ptr %tif_rawcc, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 41
  %4 = load i32, ptr %tif_rawdatasize, align 8
  %cmp1.not = icmp slt i32 %3, %4
  br i1 %cmp1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %5) #6
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
  %10 = load i32, ptr %tif_rawcc3, align 8
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %tif_rawcc3, align 8
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
  %call1 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %1, i32 noundef 65536, i32 noundef 7) #6
  br label %return

return:                                           ; preds = %entry, %if.then
  %storemerge = phi i32 [ %call1, %if.then ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax3DecodeRLE(ptr noundef %tif, ptr noundef %buf, i32 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %a0.addr.i18 = alloca i32, align 4
  %lastx.addr.i19 = alloca i32, align 4
  %a0.addr.i13 = alloca i32, align 4
  %lastx.addr.i = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %occ.addr = alloca i32, align 4
  %sp = alloca ptr, align 8
  %a0 = alloca i32, align 4
  %lastx = alloca i32, align 4
  %BitAcc = alloca i32, align 4
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
  %n279 = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %occ, ptr %occ.addr, align 4
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %rowpixels = getelementptr inbounds %struct.Fax3BaseState, ptr %0, i64 0, i32 2
  %1 = load i32, ptr %rowpixels, align 8
  store i32 %1, ptr %lastx, align 4
  %bitmap1 = getelementptr inbounds %struct.Fax3DecodeState, ptr %0, i64 0, i32 1
  %2 = load ptr, ptr %bitmap1, align 8
  store ptr %2, ptr %bitmap, align 8
  %3 = load ptr, ptr %sp, align 8
  %4 = load i32, ptr %3, align 8
  store i32 %4, ptr %mode, align 4
  %5 = load ptr, ptr %sp, align 8
  %data = getelementptr inbounds %struct.Fax3DecodeState, ptr %5, i64 0, i32 2
  %6 = load i32, ptr %data, align 8
  store i32 %6, ptr %BitAcc, align 4
  %bit = getelementptr inbounds %struct.Fax3DecodeState, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %bit, align 4
  store i32 %7, ptr %BitsAvail, align 4
  %8 = load ptr, ptr %sp, align 8
  %EOLcnt4 = getelementptr inbounds %struct.Fax3DecodeState, ptr %8, i64 0, i32 4
  %9 = load i32, ptr %EOLcnt4, align 8
  store i32 %9, ptr %EOLcnt, align 4
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 42
  %11 = load ptr, ptr %tif_rawcp, align 8
  store ptr %11, ptr %cp, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 43
  %12 = load i32, ptr %tif_rawcc, align 8
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %idx.ext
  store ptr %add.ptr, ptr %ep, align 8
  %13 = load ptr, ptr %sp, align 8
  %curruns = getelementptr inbounds %struct.Fax3DecodeState, ptr %13, i64 0, i32 8
  %14 = load ptr, ptr %curruns, align 8
  store ptr %14, ptr %thisrun, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end305, %entry
  %15 = load i32, ptr %occ.addr, align 4
  %cmp = icmp sgt i32 %15, 0
  br i1 %cmp, label %while.body, label %do.body322

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %16 = load ptr, ptr %thisrun, align 8
  store ptr %16, ptr %pa, align 8
  br label %for.cond

for.cond:                                         ; preds = %do.body119, %while.body
  br label %for.cond7

for.cond7:                                        ; preds = %sw.bb54, %for.cond
  %17 = load i32, ptr %BitsAvail, align 4
  %cmp10 = icmp slt i32 %17, 12
  br i1 %cmp10, label %if.then, label %do.end37

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
  br label %do.end37

if.else:                                          ; preds = %if.then
  %21 = load ptr, ptr %bitmap, align 8
  %22 = load ptr, ptr %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %incdec.ptr, ptr %cp, align 8
  %23 = load i8, ptr %22, align 1
  %idxprom = zext i8 %23 to i64
  %arrayidx = getelementptr inbounds i8, ptr %21, i64 %idxprom
  %24 = load i8, ptr %arrayidx, align 1
  %conv18 = zext i8 %24 to i32
  %25 = load i32, ptr %BitsAvail, align 4
  %shl = shl i32 %conv18, %25
  %26 = load i32, ptr %BitAcc, align 4
  %or = or i32 %26, %shl
  store i32 %or, ptr %BitAcc, align 4
  %add = add nsw i32 %25, 8
  store i32 %add, ptr %BitsAvail, align 4
  %cmp19 = icmp slt i32 %25, 4
  br i1 %cmp19, label %if.then21, label %do.end37

if.then21:                                        ; preds = %if.else
  %27 = load ptr, ptr %cp, align 8
  %28 = load ptr, ptr %ep, align 8
  %cmp22.not = icmp ult ptr %27, %28
  br i1 %cmp22.not, label %if.else25, label %if.end33

if.else25:                                        ; preds = %if.then21
  %29 = load ptr, ptr %bitmap, align 8
  %30 = load ptr, ptr %cp, align 8
  %incdec.ptr26 = getelementptr inbounds i8, ptr %30, i64 1
  store ptr %incdec.ptr26, ptr %cp, align 8
  %31 = load i8, ptr %30, align 1
  %idxprom27 = zext i8 %31 to i64
  %arrayidx28 = getelementptr inbounds i8, ptr %29, i64 %idxprom27
  %32 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %32 to i32
  %33 = load i32, ptr %BitsAvail, align 4
  %shl30 = shl i32 %conv29, %33
  %34 = load i32, ptr %BitAcc, align 4
  %or31 = or i32 %34, %shl30
  store i32 %or31, ptr %BitAcc, align 4
  %add32 = add nsw i32 %33, 8
  br label %if.end33

if.end33:                                         ; preds = %if.then21, %if.else25
  %storemerge30 = phi i32 [ %add32, %if.else25 ], [ 12, %if.then21 ]
  store i32 %storemerge30, ptr %BitsAvail, align 4
  br label %do.end37

do.end37:                                         ; preds = %for.cond7, %if.else, %if.end33, %if.end
  %35 = load i32, ptr %BitAcc, align 4
  %and = and i32 %35, 4095
  %idx.ext38 = zext i32 %and to i64
  %add.ptr39 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %idx.ext38
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
  %conv43 = zext i8 %40 to i32
  %41 = load i32, ptr %BitAcc, align 4
  %shr = lshr i32 %41, %conv43
  store i32 %shr, ptr %BitAcc, align 4
  %42 = load ptr, ptr %TabEnt, align 8
  %43 = load i8, ptr %42, align 4
  switch i8 %43, label %sw.default [
    i8 12, label %sw.bb
    i8 7, label %do.body48
    i8 9, label %sw.bb54
    i8 11, label %sw.bb54
  ]

sw.bb:                                            ; preds = %do.end37
  store i32 1, ptr %EOLcnt, align 4
  br label %do.body197

do.body48:                                        ; preds = %do.end37
  %44 = load i32, ptr %RunLength, align 4
  %45 = load ptr, ptr %TabEnt, align 8
  %Param = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %45, i64 0, i32 2
  %46 = load i32, ptr %Param, align 4
  %add49 = add i32 %44, %46
  %47 = load ptr, ptr %pa, align 8
  %incdec.ptr50 = getelementptr inbounds i32, ptr %47, i64 1
  store ptr %incdec.ptr50, ptr %pa, align 8
  store i32 %add49, ptr %47, align 4
  %48 = load ptr, ptr %TabEnt, align 8
  %Param51 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %48, i64 0, i32 2
  %49 = load i32, ptr %Param51, align 4
  %50 = load i32, ptr %a0, align 4
  %add52 = add i32 %50, %49
  store i32 %add52, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %51 = load i32, ptr %a0, align 4
  %52 = load i32, ptr %lastx, align 4
  %cmp59.not = icmp slt i32 %51, %52
  br i1 %cmp59.not, label %for.cond63, label %do.body197

sw.bb54:                                          ; preds = %do.end37, %do.end37
  %53 = load ptr, ptr %TabEnt, align 8
  %Param55 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %53, i64 0, i32 2
  %54 = load i32, ptr %Param55, align 4
  %55 = load i32, ptr %a0, align 4
  %add56 = add i32 %55, %54
  store i32 %add56, ptr %a0, align 4
  %56 = load i32, ptr %RunLength, align 4
  %add58 = add i32 %56, %54
  store i32 %add58, ptr %RunLength, align 4
  br label %for.cond7

sw.default:                                       ; preds = %do.end37
  %57 = load ptr, ptr %tif.addr, align 8
  %58 = load i32, ptr %a0, align 4
  %59 = load ptr, ptr %57, align 8
  %tif_row.i = getelementptr inbounds %struct.tiff, ptr %57, i64 0, i32 11
  %60 = load i32, ptr %tif_row.i, align 8
  %conv.i = zext i32 %58 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax3DecodeRLE.module, ptr noundef nonnull @.str.34, ptr noundef %59, i32 noundef %60, i64 noundef %conv.i) #6
  br label %do.body197

for.cond63:                                       ; preds = %do.body48, %sw.bb126
  %61 = load i32, ptr %BitsAvail, align 4
  %cmp66 = icmp slt i32 %61, 13
  br i1 %cmp66, label %if.then68, label %do.end102

if.then68:                                        ; preds = %for.cond63
  %62 = load ptr, ptr %cp, align 8
  %63 = load ptr, ptr %ep, align 8
  %cmp69.not = icmp ult ptr %62, %63
  br i1 %cmp69.not, label %if.else76, label %if.then71

if.then71:                                        ; preds = %if.then68
  %64 = load i32, ptr %BitsAvail, align 4
  %cmp72 = icmp eq i32 %64, 0
  br i1 %cmp72, label %eof1d, label %if.end75

if.end75:                                         ; preds = %if.then71
  store i32 13, ptr %BitsAvail, align 4
  br label %do.end102

if.else76:                                        ; preds = %if.then68
  %65 = load ptr, ptr %bitmap, align 8
  %66 = load ptr, ptr %cp, align 8
  %incdec.ptr77 = getelementptr inbounds i8, ptr %66, i64 1
  store ptr %incdec.ptr77, ptr %cp, align 8
  %67 = load i8, ptr %66, align 1
  %idxprom78 = zext i8 %67 to i64
  %arrayidx79 = getelementptr inbounds i8, ptr %65, i64 %idxprom78
  %68 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %68 to i32
  %69 = load i32, ptr %BitsAvail, align 4
  %shl81 = shl i32 %conv80, %69
  %70 = load i32, ptr %BitAcc, align 4
  %or82 = or i32 %70, %shl81
  store i32 %or82, ptr %BitAcc, align 4
  %add83 = add nsw i32 %69, 8
  store i32 %add83, ptr %BitsAvail, align 4
  %cmp84 = icmp slt i32 %69, 5
  br i1 %cmp84, label %if.then86, label %do.end102

if.then86:                                        ; preds = %if.else76
  %71 = load ptr, ptr %cp, align 8
  %72 = load ptr, ptr %ep, align 8
  %cmp87.not = icmp ult ptr %71, %72
  br i1 %cmp87.not, label %if.else90, label %if.end98

if.else90:                                        ; preds = %if.then86
  %73 = load ptr, ptr %bitmap, align 8
  %74 = load ptr, ptr %cp, align 8
  %incdec.ptr91 = getelementptr inbounds i8, ptr %74, i64 1
  store ptr %incdec.ptr91, ptr %cp, align 8
  %75 = load i8, ptr %74, align 1
  %idxprom92 = zext i8 %75 to i64
  %arrayidx93 = getelementptr inbounds i8, ptr %73, i64 %idxprom92
  %76 = load i8, ptr %arrayidx93, align 1
  %conv94 = zext i8 %76 to i32
  %77 = load i32, ptr %BitsAvail, align 4
  %shl95 = shl i32 %conv94, %77
  %78 = load i32, ptr %BitAcc, align 4
  %or96 = or i32 %78, %shl95
  store i32 %or96, ptr %BitAcc, align 4
  %add97 = add nsw i32 %77, 8
  br label %if.end98

if.end98:                                         ; preds = %if.then86, %if.else90
  %storemerge27 = phi i32 [ %add97, %if.else90 ], [ 13, %if.then86 ]
  store i32 %storemerge27, ptr %BitsAvail, align 4
  br label %do.end102

do.end102:                                        ; preds = %for.cond63, %if.else76, %if.end98, %if.end75
  %79 = load i32, ptr %BitAcc, align 4
  %and103 = and i32 %79, 8191
  %idx.ext104 = zext i32 %and103 to i64
  %add.ptr105 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %idx.ext104
  store ptr %add.ptr105, ptr %TabEnt, align 8
  %80 = load ptr, ptr %TabEnt, align 8
  %Width107 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %80, i64 0, i32 1
  %81 = load i8, ptr %Width107, align 1
  %conv108 = zext i8 %81 to i32
  %82 = load i32, ptr %BitsAvail, align 4
  %sub109 = sub nsw i32 %82, %conv108
  store i32 %sub109, ptr %BitsAvail, align 4
  %83 = load ptr, ptr %TabEnt, align 8
  %Width110 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %83, i64 0, i32 1
  %84 = load i8, ptr %Width110, align 1
  %conv111 = zext i8 %84 to i32
  %85 = load i32, ptr %BitAcc, align 4
  %shr112 = lshr i32 %85, %conv111
  store i32 %shr112, ptr %BitAcc, align 4
  %86 = load ptr, ptr %TabEnt, align 8
  %87 = load i8, ptr %86, align 4
  switch i8 %87, label %sw.default131 [
    i8 12, label %sw.bb117
    i8 8, label %do.body119
    i8 10, label %sw.bb126
    i8 11, label %sw.bb126
  ]

sw.bb117:                                         ; preds = %do.end102
  store i32 1, ptr %EOLcnt, align 4
  br label %do.body197

do.body119:                                       ; preds = %do.end102
  %88 = load i32, ptr %RunLength, align 4
  %89 = load ptr, ptr %TabEnt, align 8
  %Param120 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %89, i64 0, i32 2
  %90 = load i32, ptr %Param120, align 4
  %add121 = add i32 %88, %90
  %91 = load ptr, ptr %pa, align 8
  %incdec.ptr122 = getelementptr inbounds i32, ptr %91, i64 1
  store ptr %incdec.ptr122, ptr %pa, align 8
  store i32 %add121, ptr %91, align 4
  %92 = load ptr, ptr %TabEnt, align 8
  %Param123 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %92, i64 0, i32 2
  %93 = load i32, ptr %Param123, align 4
  %94 = load i32, ptr %a0, align 4
  %add124 = add i32 %94, %93
  store i32 %add124, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %95 = load i32, ptr %a0, align 4
  %96 = load i32, ptr %lastx, align 4
  %cmp133.not = icmp slt i32 %95, %96
  br i1 %cmp133.not, label %for.cond, label %do.body197

sw.bb126:                                         ; preds = %do.end102, %do.end102
  %97 = load ptr, ptr %TabEnt, align 8
  %Param127 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %97, i64 0, i32 2
  %98 = load i32, ptr %Param127, align 4
  %99 = load i32, ptr %a0, align 4
  %add128 = add i32 %99, %98
  store i32 %add128, ptr %a0, align 4
  %100 = load i32, ptr %RunLength, align 4
  %add130 = add i32 %100, %98
  store i32 %add130, ptr %RunLength, align 4
  br label %for.cond63

sw.default131:                                    ; preds = %do.end102
  %101 = load ptr, ptr %tif.addr, align 8
  %102 = load i32, ptr %a0, align 4
  %103 = load ptr, ptr %101, align 8
  %tif_row.i4 = getelementptr inbounds %struct.tiff, ptr %101, i64 0, i32 11
  %104 = load i32, ptr %tif_row.i4, align 8
  %conv.i5 = zext i32 %102 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax3DecodeRLE.module, ptr noundef nonnull @.str.34, ptr noundef %103, i32 noundef %104, i64 noundef %conv.i5) #6
  br label %do.body197

eof1d:                                            ; preds = %if.then71, %if.then14
  %105 = load ptr, ptr %tif.addr, align 8
  %106 = load i32, ptr %a0, align 4
  %107 = load ptr, ptr %105, align 8
  %tif_row.i9 = getelementptr inbounds %struct.tiff, ptr %105, i64 0, i32 11
  %108 = load i32, ptr %tif_row.i9, align 8
  %conv.i10 = zext i32 %106 to i64
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax3DecodeRLE.module, ptr noundef nonnull @.str.35, ptr noundef %107, i32 noundef %108, i64 noundef %conv.i10) #6
  %109 = load i32, ptr %RunLength, align 4
  %tobool.not = icmp eq i32 %109, 0
  br i1 %tobool.not, label %if.end144, label %do.body139

do.body139:                                       ; preds = %eof1d
  %110 = load i32, ptr %RunLength, align 4
  %111 = load ptr, ptr %pa, align 8
  %incdec.ptr141 = getelementptr inbounds i32, ptr %111, i64 1
  store ptr %incdec.ptr141, ptr %pa, align 8
  store i32 %110, ptr %111, align 4
  store i32 0, ptr %RunLength, align 4
  br label %if.end144

if.end144:                                        ; preds = %do.body139, %eof1d
  %112 = load i32, ptr %a0, align 4
  %113 = load i32, ptr %lastx, align 4
  %cmp145.not = icmp eq i32 %112, %113
  br i1 %cmp145.not, label %EOFRLE, label %if.then147

if.then147:                                       ; preds = %if.end144
  %114 = load ptr, ptr %tif.addr, align 8
  %115 = load i32, ptr %a0, align 4
  %116 = load i32, ptr %lastx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a0.addr.i13)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lastx.addr.i)
  store i32 %115, ptr %a0.addr.i13, align 4
  store i32 %116, ptr %lastx.addr.i, align 4
  %117 = load ptr, ptr %114, align 8
  %cmp.i = icmp ult i32 %115, %116
  %cond.i = select i1 %cmp.i, ptr @.str.37, ptr @.str.38
  %tif_row.i14 = getelementptr inbounds %struct.tiff, ptr %114, i64 0, i32 11
  %118 = load i32, ptr %tif_row.i14, align 8
  %119 = load i32, ptr %a0.addr.i13, align 4
  %conv.i15 = zext i32 %119 to i64
  %120 = load i32, ptr %lastx.addr.i, align 4
  %conv1.i = zext i32 %120 to i64
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax3DecodeRLE.module, ptr noundef nonnull @.str.36, ptr noundef %117, ptr noundef nonnull %cond.i, i32 noundef %118, i64 noundef %conv.i15, i64 noundef %conv1.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a0.addr.i13)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lastx.addr.i)
  br label %while.cond148

while.cond148:                                    ; preds = %while.body153, %if.then147
  %121 = load i32, ptr %a0, align 4
  %122 = load i32, ptr %lastx, align 4
  %cmp149 = icmp sgt i32 %121, %122
  %123 = load ptr, ptr %pa, align 8
  %124 = load ptr, ptr %thisrun, align 8
  %cmp151 = icmp ugt ptr %123, %124
  %125 = select i1 %cmp149, i1 %cmp151, i1 false
  br i1 %125, label %while.body153, label %while.end

while.body153:                                    ; preds = %while.cond148
  %126 = load ptr, ptr %pa, align 8
  %incdec.ptr154 = getelementptr inbounds i32, ptr %126, i64 -1
  store ptr %incdec.ptr154, ptr %pa, align 8
  %127 = load i32, ptr %incdec.ptr154, align 4
  %128 = load i32, ptr %a0, align 4
  %sub155 = sub i32 %128, %127
  store i32 %sub155, ptr %a0, align 4
  br label %while.cond148, !llvm.loop !22

while.end:                                        ; preds = %while.cond148
  %129 = load i32, ptr %a0, align 4
  %130 = load i32, ptr %lastx, align 4
  %cmp156 = icmp slt i32 %129, %130
  br i1 %cmp156, label %if.then158, label %if.else179

if.then158:                                       ; preds = %while.end
  %131 = load i32, ptr %a0, align 4
  %cmp159 = icmp slt i32 %131, 0
  %spec.store.select = select i1 %cmp159, i32 0, i32 %131
  store i32 %spec.store.select, ptr %a0, align 4
  %132 = load ptr, ptr %pa, align 8
  %133 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %132 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %133 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %134 = and i64 %sub.ptr.sub, 4
  %tobool164.not = icmp eq i64 %134, 0
  br i1 %tobool164.not, label %do.body172, label %do.body166

do.body166:                                       ; preds = %if.then158
  %135 = load i32, ptr %RunLength, align 4
  %136 = load ptr, ptr %pa, align 8
  %incdec.ptr168 = getelementptr inbounds i32, ptr %136, i64 1
  store ptr %incdec.ptr168, ptr %pa, align 8
  store i32 %135, ptr %136, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.body172

do.body172:                                       ; preds = %if.then158, %do.body166
  %137 = load i32, ptr %RunLength, align 4
  %138 = load i32, ptr %lastx, align 4
  %139 = load i32, ptr %a0, align 4
  %sub173 = sub nsw i32 %138, %139
  %add174 = add nsw i32 %137, %sub173
  %140 = load ptr, ptr %pa, align 8
  %incdec.ptr175 = getelementptr inbounds i32, ptr %140, i64 1
  store ptr %incdec.ptr175, ptr %pa, align 8
  store i32 %add174, ptr %140, align 4
  %141 = load i32, ptr %lastx, align 4
  store i32 %141, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %EOFRLE

if.else179:                                       ; preds = %while.end
  %142 = load i32, ptr %a0, align 4
  %143 = load i32, ptr %lastx, align 4
  %cmp180 = icmp sgt i32 %142, %143
  br i1 %cmp180, label %do.body183, label %EOFRLE

do.body183:                                       ; preds = %if.else179
  %144 = load i32, ptr %RunLength, align 4
  %145 = load i32, ptr %lastx, align 4
  %add184 = add nsw i32 %144, %145
  %146 = load ptr, ptr %pa, align 8
  %incdec.ptr185 = getelementptr inbounds i32, ptr %146, i64 1
  store ptr %incdec.ptr185, ptr %pa, align 8
  store i32 %add184, ptr %146, align 4
  %147 = load i32, ptr %a0, align 4
  %add186 = add nsw i32 %147, %145
  store i32 %add186, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %148 = load i32, ptr %RunLength, align 4
  %149 = load ptr, ptr %pa, align 8
  %incdec.ptr190 = getelementptr inbounds i32, ptr %149, i64 1
  store ptr %incdec.ptr190, ptr %pa, align 8
  store i32 %148, ptr %149, align 4
  store i32 0, ptr %RunLength, align 4
  br label %EOFRLE

do.body197:                                       ; preds = %sw.bb, %sw.default, %sw.bb117, %sw.default131, %do.body48, %do.body119
  %150 = load i32, ptr %RunLength, align 4
  %tobool198.not = icmp eq i32 %150, 0
  br i1 %tobool198.not, label %if.end205, label %do.body200

do.body200:                                       ; preds = %do.body197
  %151 = load i32, ptr %RunLength, align 4
  %152 = load ptr, ptr %pa, align 8
  %incdec.ptr202 = getelementptr inbounds i32, ptr %152, i64 1
  store ptr %incdec.ptr202, ptr %pa, align 8
  store i32 %151, ptr %152, align 4
  store i32 0, ptr %RunLength, align 4
  br label %if.end205

if.end205:                                        ; preds = %do.body200, %do.body197
  %153 = load i32, ptr %a0, align 4
  %154 = load i32, ptr %lastx, align 4
  %cmp206.not = icmp eq i32 %153, %154
  br i1 %cmp206.not, label %do.end265, label %if.then208

if.then208:                                       ; preds = %if.end205
  %155 = load ptr, ptr %tif.addr, align 8
  %156 = load i32, ptr %a0, align 4
  %157 = load i32, ptr %lastx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a0.addr.i18)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lastx.addr.i19)
  store i32 %156, ptr %a0.addr.i18, align 4
  store i32 %157, ptr %lastx.addr.i19, align 4
  %158 = load ptr, ptr %155, align 8
  %cmp.i20 = icmp ult i32 %156, %157
  %cond.i21 = select i1 %cmp.i20, ptr @.str.37, ptr @.str.38
  %tif_row.i22 = getelementptr inbounds %struct.tiff, ptr %155, i64 0, i32 11
  %159 = load i32, ptr %tif_row.i22, align 8
  %160 = load i32, ptr %a0.addr.i18, align 4
  %conv.i23 = zext i32 %160 to i64
  %161 = load i32, ptr %lastx.addr.i19, align 4
  %conv1.i24 = zext i32 %161 to i64
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax3DecodeRLE.module, ptr noundef nonnull @.str.36, ptr noundef %158, ptr noundef nonnull %cond.i21, i32 noundef %159, i64 noundef %conv.i23, i64 noundef %conv1.i24) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a0.addr.i18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lastx.addr.i19)
  br label %while.cond209

while.cond209:                                    ; preds = %while.body216, %if.then208
  %162 = load i32, ptr %a0, align 4
  %163 = load i32, ptr %lastx, align 4
  %cmp210 = icmp sgt i32 %162, %163
  %164 = load ptr, ptr %pa, align 8
  %165 = load ptr, ptr %thisrun, align 8
  %cmp213 = icmp ugt ptr %164, %165
  %166 = select i1 %cmp210, i1 %cmp213, i1 false
  br i1 %166, label %while.body216, label %while.end219

while.body216:                                    ; preds = %while.cond209
  %167 = load ptr, ptr %pa, align 8
  %incdec.ptr217 = getelementptr inbounds i32, ptr %167, i64 -1
  store ptr %incdec.ptr217, ptr %pa, align 8
  %168 = load i32, ptr %incdec.ptr217, align 4
  %169 = load i32, ptr %a0, align 4
  %sub218 = sub i32 %169, %168
  store i32 %sub218, ptr %a0, align 4
  br label %while.cond209, !llvm.loop !23

while.end219:                                     ; preds = %while.cond209
  %170 = load i32, ptr %a0, align 4
  %171 = load i32, ptr %lastx, align 4
  %cmp220 = icmp slt i32 %170, %171
  br i1 %cmp220, label %if.then222, label %if.else247

if.then222:                                       ; preds = %while.end219
  %172 = load i32, ptr %a0, align 4
  %cmp223 = icmp slt i32 %172, 0
  %spec.store.select31 = select i1 %cmp223, i32 0, i32 %172
  store i32 %spec.store.select31, ptr %a0, align 4
  %173 = load ptr, ptr %pa, align 8
  %174 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast227 = ptrtoint ptr %173 to i64
  %sub.ptr.rhs.cast228 = ptrtoint ptr %174 to i64
  %sub.ptr.sub229 = sub i64 %sub.ptr.lhs.cast227, %sub.ptr.rhs.cast228
  %175 = and i64 %sub.ptr.sub229, 4
  %tobool232.not = icmp eq i64 %175, 0
  br i1 %tobool232.not, label %do.body240, label %do.body234

do.body234:                                       ; preds = %if.then222
  %176 = load i32, ptr %RunLength, align 4
  %177 = load ptr, ptr %pa, align 8
  %incdec.ptr236 = getelementptr inbounds i32, ptr %177, i64 1
  store ptr %incdec.ptr236, ptr %pa, align 8
  store i32 %176, ptr %177, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.body240

do.body240:                                       ; preds = %if.then222, %do.body234
  %178 = load i32, ptr %RunLength, align 4
  %179 = load i32, ptr %lastx, align 4
  %180 = load i32, ptr %a0, align 4
  %sub241 = sub nsw i32 %179, %180
  %add242 = add nsw i32 %178, %sub241
  %181 = load ptr, ptr %pa, align 8
  %incdec.ptr243 = getelementptr inbounds i32, ptr %181, i64 1
  store ptr %incdec.ptr243, ptr %pa, align 8
  store i32 %add242, ptr %181, align 4
  %182 = load i32, ptr %lastx, align 4
  store i32 %182, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end265

if.else247:                                       ; preds = %while.end219
  %183 = load i32, ptr %a0, align 4
  %184 = load i32, ptr %lastx, align 4
  %cmp248 = icmp sgt i32 %183, %184
  br i1 %cmp248, label %do.body251, label %do.end265

do.body251:                                       ; preds = %if.else247
  %185 = load i32, ptr %RunLength, align 4
  %186 = load i32, ptr %lastx, align 4
  %add252 = add nsw i32 %185, %186
  %187 = load ptr, ptr %pa, align 8
  %incdec.ptr253 = getelementptr inbounds i32, ptr %187, i64 1
  store ptr %incdec.ptr253, ptr %pa, align 8
  store i32 %add252, ptr %187, align 4
  %188 = load i32, ptr %a0, align 4
  %add254 = add nsw i32 %188, %186
  store i32 %add254, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %189 = load i32, ptr %RunLength, align 4
  %190 = load ptr, ptr %pa, align 8
  %incdec.ptr258 = getelementptr inbounds i32, ptr %190, i64 1
  store ptr %incdec.ptr258, ptr %pa, align 8
  store i32 %189, ptr %190, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end265

do.end265:                                        ; preds = %do.body240, %do.body251, %if.else247, %if.end205
  %191 = load ptr, ptr %sp, align 8
  %fill = getelementptr inbounds %struct.Fax3DecodeState, ptr %191, i64 0, i32 5
  %192 = load ptr, ptr %fill, align 8
  %193 = load ptr, ptr %buf.addr, align 8
  %194 = load ptr, ptr %thisrun, align 8
  %195 = load ptr, ptr %pa, align 8
  %196 = load i32, ptr %lastx, align 4
  call void %192(ptr noundef %193, ptr noundef %194, ptr noundef %195, i32 noundef %196) #6
  %197 = load i32, ptr %mode, align 4
  %and266 = and i32 %197, 4
  %tobool267.not = icmp eq i32 %and266, 0
  br i1 %tobool267.not, label %if.else275, label %if.then268

if.then268:                                       ; preds = %do.end265
  %198 = load i32, ptr %BitsAvail, align 4
  %sub270 = and i32 %198, 7
  store i32 %sub270, ptr %n, align 4
  %199 = load i32, ptr %n, align 4
  %200 = load i32, ptr %BitsAvail, align 4
  %sub272 = sub nsw i32 %200, %199
  store i32 %sub272, ptr %BitsAvail, align 4
  %201 = load i32, ptr %BitAcc, align 4
  %shr273 = lshr i32 %201, %199
  store i32 %shr273, ptr %BitAcc, align 4
  br label %if.end295

if.else275:                                       ; preds = %do.end265
  %202 = load i32, ptr %mode, align 4
  %and276 = and i32 %202, 8
  %tobool277.not = icmp eq i32 %and276, 0
  br i1 %tobool277.not, label %if.end295, label %if.then278

if.then278:                                       ; preds = %if.else275
  %203 = load i32, ptr %BitsAvail, align 4
  %sub281 = and i32 %203, 15
  store i32 %sub281, ptr %n279, align 4
  %204 = load i32, ptr %n279, align 4
  %205 = load i32, ptr %BitsAvail, align 4
  %sub283 = sub nsw i32 %205, %204
  store i32 %sub283, ptr %BitsAvail, align 4
  %206 = load i32, ptr %BitAcc, align 4
  %shr284 = lshr i32 %206, %204
  store i32 %shr284, ptr %BitAcc, align 4
  %207 = load i32, ptr %BitsAvail, align 4
  %cmp286 = icmp eq i32 %207, 0
  br i1 %cmp286, label %land.lhs.true, label %if.end295

land.lhs.true:                                    ; preds = %if.then278
  %208 = load ptr, ptr %cp, align 8
  %209 = ptrtoint ptr %208 to i64
  %and288 = and i64 %209, 1
  %cmp289 = icmp eq i64 %and288, 0
  br i1 %cmp289, label %if.end295, label %if.then291

if.then291:                                       ; preds = %land.lhs.true
  %210 = load ptr, ptr %cp, align 8
  %incdec.ptr292 = getelementptr inbounds i8, ptr %210, i64 1
  store ptr %incdec.ptr292, ptr %cp, align 8
  br label %if.end295

if.end295:                                        ; preds = %if.else275, %if.then291, %land.lhs.true, %if.then278, %if.then268
  %211 = load ptr, ptr %sp, align 8
  %rowbytes = getelementptr inbounds %struct.Fax3BaseState, ptr %211, i64 0, i32 1
  %212 = load i32, ptr %rowbytes, align 4
  %213 = load ptr, ptr %buf.addr, align 8
  %idx.ext297 = zext i32 %212 to i64
  %add.ptr298 = getelementptr inbounds i8, ptr %213, i64 %idx.ext297
  store ptr %add.ptr298, ptr %buf.addr, align 8
  %214 = load ptr, ptr %sp, align 8
  %rowbytes300 = getelementptr inbounds %struct.Fax3BaseState, ptr %214, i64 0, i32 1
  %215 = load i32, ptr %rowbytes300, align 4
  %216 = load i32, ptr %occ.addr, align 4
  %sub301 = sub i32 %216, %215
  store i32 %sub301, ptr %occ.addr, align 4
  %cmp302.not = icmp eq i32 %216, %215
  br i1 %cmp302.not, label %if.end305, label %if.then304

if.then304:                                       ; preds = %if.end295
  %217 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %217, i64 0, i32 11
  %218 = load i32, ptr %tif_row, align 8
  %inc = add i32 %218, 1
  store i32 %inc, ptr %tif_row, align 8
  br label %if.end305

if.end305:                                        ; preds = %if.then304, %if.end295
  br label %while.cond, !llvm.loop !24

EOFRLE:                                           ; preds = %do.body172, %do.body183, %if.else179, %if.end144
  %219 = load ptr, ptr %sp, align 8
  %fill306 = getelementptr inbounds %struct.Fax3DecodeState, ptr %219, i64 0, i32 5
  %220 = load ptr, ptr %fill306, align 8
  %221 = load ptr, ptr %buf.addr, align 8
  %222 = load ptr, ptr %thisrun, align 8
  %223 = load ptr, ptr %pa, align 8
  %224 = load i32, ptr %lastx, align 4
  call void %220(ptr noundef %221, ptr noundef %222, ptr noundef %223, i32 noundef %224) #6
  %225 = load i32, ptr %BitsAvail, align 4
  %226 = load ptr, ptr %sp, align 8
  %bit308 = getelementptr inbounds %struct.Fax3DecodeState, ptr %226, i64 0, i32 3
  store i32 %225, ptr %bit308, align 4
  %227 = load i32, ptr %BitAcc, align 4
  %data309 = getelementptr inbounds %struct.Fax3DecodeState, ptr %226, i64 0, i32 2
  store i32 %227, ptr %data309, align 8
  %228 = load i32, ptr %EOLcnt, align 4
  %229 = load ptr, ptr %sp, align 8
  %EOLcnt310 = getelementptr inbounds %struct.Fax3DecodeState, ptr %229, i64 0, i32 4
  store i32 %228, ptr %EOLcnt310, align 8
  %230 = load ptr, ptr %cp, align 8
  %231 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp311 = getelementptr inbounds %struct.tiff, ptr %231, i64 0, i32 42
  %232 = load ptr, ptr %tif_rawcp311, align 8
  %sub.ptr.lhs.cast312 = ptrtoint ptr %230 to i64
  %sub.ptr.rhs.cast313 = ptrtoint ptr %232 to i64
  %sub.ptr.sub314.neg = sub i64 %sub.ptr.rhs.cast313, %sub.ptr.lhs.cast312
  %tif_rawcc315 = getelementptr inbounds %struct.tiff, ptr %231, i64 0, i32 43
  %233 = load i32, ptr %tif_rawcc315, align 8
  %234 = trunc i64 %sub.ptr.sub314.neg to i32
  %conv318 = add i32 %233, %234
  store i32 %conv318, ptr %tif_rawcc315, align 8
  %235 = load ptr, ptr %cp, align 8
  %236 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp319 = getelementptr inbounds %struct.tiff, ptr %236, i64 0, i32 42
  store ptr %235, ptr %tif_rawcp319, align 8
  br label %return

do.body322:                                       ; preds = %while.cond
  %237 = load i32, ptr %BitsAvail, align 4
  %238 = load ptr, ptr %sp, align 8
  %bit323 = getelementptr inbounds %struct.Fax3DecodeState, ptr %238, i64 0, i32 3
  store i32 %237, ptr %bit323, align 4
  %239 = load i32, ptr %BitAcc, align 4
  %data324 = getelementptr inbounds %struct.Fax3DecodeState, ptr %238, i64 0, i32 2
  store i32 %239, ptr %data324, align 8
  %240 = load i32, ptr %EOLcnt, align 4
  %241 = load ptr, ptr %sp, align 8
  %EOLcnt325 = getelementptr inbounds %struct.Fax3DecodeState, ptr %241, i64 0, i32 4
  store i32 %240, ptr %EOLcnt325, align 8
  %242 = load ptr, ptr %cp, align 8
  %243 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp326 = getelementptr inbounds %struct.tiff, ptr %243, i64 0, i32 42
  %244 = load ptr, ptr %tif_rawcp326, align 8
  %sub.ptr.lhs.cast327 = ptrtoint ptr %242 to i64
  %sub.ptr.rhs.cast328 = ptrtoint ptr %244 to i64
  %sub.ptr.sub329.neg = sub i64 %sub.ptr.rhs.cast328, %sub.ptr.lhs.cast327
  %tif_rawcc330 = getelementptr inbounds %struct.tiff, ptr %243, i64 0, i32 43
  %245 = load i32, ptr %tif_rawcc330, align 8
  %246 = trunc i64 %sub.ptr.sub329.neg to i32
  %conv333 = add i32 %245, %246
  store i32 %conv333, ptr %tif_rawcc330, align 8
  %247 = load ptr, ptr %cp, align 8
  %248 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp334 = getelementptr inbounds %struct.tiff, ptr %248, i64 0, i32 42
  store ptr %247, ptr %tif_rawcp334, align 8
  br label %return

return:                                           ; preds = %do.body322, %EOFRLE
  %storemerge = phi i32 [ 1, %do.body322 ], [ -1, %EOFRLE ]
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
  %call1 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %1, i32 noundef 65536, i32 noundef 11) #6
  br label %return

return:                                           ; preds = %entry, %if.then
  %storemerge = phi i32 [ %call1, %if.then ], [ 0, %entry ]
  ret i32 %storemerge
}

declare ptr @_TIFFmalloc(i32 noundef) #2

declare void @TIFFError(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax3VGetField(ptr noundef %tif, i32 noundef %tag, ptr noundef %ap) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %ap.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %tag, ptr %tag.addr, align 4
  store ptr %ap, ptr %ap.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  switch i32 %tag, label %sw.default [
    i32 65536, label %sw.bb
    i32 65540, label %sw.bb1
    i32 292, label %sw.bb4
    i32 293, label %sw.bb4
    i32 326, label %sw.bb6
    i32 327, label %sw.bb8
    i32 328, label %sw.bb10
    i32 34908, label %sw.bb12
    i32 34909, label %sw.bb14
    i32 34910, label %sw.bb16
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
  %11 = load i32, ptr %groupoptions, align 8
  %12 = va_arg ptr %ap.addr, ptr
  store i32 %11, ptr %12, align 4
  br label %return

sw.bb6:                                           ; preds = %entry
  %13 = load ptr, ptr %sp, align 8
  %badfaxlines = getelementptr inbounds %struct.Fax3BaseState, ptr %13, i64 0, i32 5
  %14 = load i32, ptr %badfaxlines, align 4
  %15 = va_arg ptr %ap.addr, ptr
  store i32 %14, ptr %15, align 4
  br label %return

sw.bb8:                                           ; preds = %entry
  %16 = load ptr, ptr %sp, align 8
  %cleanfaxdata = getelementptr inbounds %struct.Fax3BaseState, ptr %16, i64 0, i32 3
  %17 = load i16, ptr %cleanfaxdata, align 4
  %18 = va_arg ptr %ap.addr, ptr
  store i16 %17, ptr %18, align 2
  br label %return

sw.bb10:                                          ; preds = %entry
  %19 = load ptr, ptr %sp, align 8
  %badfaxrun = getelementptr inbounds %struct.Fax3BaseState, ptr %19, i64 0, i32 4
  %20 = load i32, ptr %badfaxrun, align 8
  %21 = va_arg ptr %ap.addr, ptr
  store i32 %20, ptr %21, align 4
  br label %return

sw.bb12:                                          ; preds = %entry
  %22 = load ptr, ptr %sp, align 8
  %recvparams = getelementptr inbounds %struct.Fax3BaseState, ptr %22, i64 0, i32 7
  %23 = load i32, ptr %recvparams, align 4
  %24 = va_arg ptr %ap.addr, ptr
  store i32 %23, ptr %24, align 4
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
  %29 = load i32, ptr %recvtime, align 8
  %30 = va_arg ptr %ap.addr, ptr
  store i32 %29, ptr %30, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %31 = load ptr, ptr %sp, align 8
  %vgetparent = getelementptr inbounds %struct.Fax3BaseState, ptr %31, i64 0, i32 10
  %32 = load ptr, ptr %vgetparent, align 8
  %33 = load ptr, ptr %tif.addr, align 8
  %34 = load i32, ptr %tag.addr, align 4
  %35 = load ptr, ptr %ap.addr, align 8
  %call = call i32 %32(ptr noundef %33, i32 noundef %34, ptr noundef %35) #6
  br label %return

return:                                           ; preds = %sw.bb, %sw.bb4, %sw.bb6, %sw.bb8, %sw.bb10, %sw.bb12, %sw.bb14, %sw.bb16, %if.then, %sw.bb1, %sw.default
  %storemerge = phi i32 [ %call, %sw.default ], [ 1, %sw.bb1 ], [ 1, %if.then ], [ 1, %sw.bb16 ], [ 1, %sw.bb14 ], [ 1, %sw.bb12 ], [ 1, %sw.bb10 ], [ 1, %sw.bb8 ], [ 1, %sw.bb6 ], [ 1, %sw.bb4 ], [ 1, %sw.bb ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax3VSetField(ptr noundef %tif, i32 noundef %tag, ptr noundef %ap) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %ap.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %tag, ptr %tag.addr, align 4
  store ptr %ap, ptr %ap.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  switch i32 %tag, label %sw.default [
    i32 65536, label %sw.bb
    i32 65540, label %sw.bb1
    i32 292, label %sw.bb4
    i32 293, label %sw.bb4
    i32 326, label %sw.bb6
    i32 327, label %sw.bb8
    i32 328, label %sw.bb10
    i32 34908, label %sw.bb12
    i32 34909, label %sw.bb14
    i32 34910, label %sw.bb16
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
  %8 = va_arg ptr %ap.addr, i32
  %9 = load ptr, ptr %sp, align 8
  %groupoptions = getelementptr inbounds %struct.Fax3BaseState, ptr %9, i64 0, i32 6
  store i32 %8, ptr %groupoptions, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %10 = va_arg ptr %ap.addr, i32
  %11 = load ptr, ptr %sp, align 8
  %badfaxlines = getelementptr inbounds %struct.Fax3BaseState, ptr %11, i64 0, i32 5
  store i32 %10, ptr %badfaxlines, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %12 = va_arg ptr %ap.addr, i32
  %conv = trunc i32 %12 to i16
  %13 = load ptr, ptr %sp, align 8
  %cleanfaxdata = getelementptr inbounds %struct.Fax3BaseState, ptr %13, i64 0, i32 3
  store i16 %conv, ptr %cleanfaxdata, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %14 = va_arg ptr %ap.addr, i32
  %15 = load ptr, ptr %sp, align 8
  %badfaxrun = getelementptr inbounds %struct.Fax3BaseState, ptr %15, i64 0, i32 4
  store i32 %14, ptr %badfaxrun, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %16 = va_arg ptr %ap.addr, i32
  %17 = load ptr, ptr %sp, align 8
  %recvparams = getelementptr inbounds %struct.Fax3BaseState, ptr %17, i64 0, i32 7
  store i32 %16, ptr %recvparams, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %18 = load ptr, ptr %sp, align 8
  %subaddress = getelementptr inbounds %struct.Fax3BaseState, ptr %18, i64 0, i32 8
  %19 = va_arg ptr %ap.addr, ptr
  call void @_TIFFsetString(ptr noundef nonnull %subaddress, ptr noundef %19) #6
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %20 = va_arg ptr %ap.addr, i32
  %21 = load ptr, ptr %sp, align 8
  %recvtime = getelementptr inbounds %struct.Fax3BaseState, ptr %21, i64 0, i32 9
  store i32 %20, ptr %recvtime, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %22 = load ptr, ptr %sp, align 8
  %vsetparent = getelementptr inbounds %struct.Fax3BaseState, ptr %22, i64 0, i32 11
  %23 = load ptr, ptr %vsetparent, align 8
  %24 = load ptr, ptr %tif.addr, align 8
  %25 = load i32, ptr %tag.addr, align 4
  %26 = load ptr, ptr %ap.addr, align 8
  %call = call i32 %23(ptr noundef %24, i32 noundef %25, ptr noundef %26) #6
  store i32 %call, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4
  %27 = load ptr, ptr %tif.addr, align 8
  %28 = load i32, ptr %tag.addr, align 4
  %call18 = call ptr @_TIFFFieldWithTag(ptr noundef %27, i32 noundef %28) #6
  %field_bit = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call18, i64 0, i32 4
  %29 = load i16, ptr %field_bit, align 4
  %30 = and i16 %29, 31
  %sh_prom = zext i16 %30 to i64
  %shl = shl i64 1, %sh_prom
  %31 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %31, i64 0, i32 6
  %32 = load i32, ptr %tag.addr, align 4
  %call20 = call ptr @_TIFFFieldWithTag(ptr noundef %31, i32 noundef %32) #6
  %field_bit21 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call20, i64 0, i32 4
  %33 = load i16, ptr %field_bit21, align 4
  %34 = lshr i16 %33, 5
  %idxprom = zext i16 %34 to i64
  %arrayidx = getelementptr inbounds [3 x i64], ptr %tif_dir, i64 0, i64 %idxprom
  %35 = load i64, ptr %arrayidx, align 8
  %or = or i64 %35, %shl
  store i64 %or, ptr %arrayidx, align 8
  %36 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %36, i64 0, i32 3
  %37 = load i32, ptr %tif_flags, align 8
  %or23 = or i32 %37, 8
  store i32 %or23, ptr %tif_flags, align 8
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
  br i1 %tobool.not, label %if.end33, label %if.then

if.then:                                          ; preds = %entry
  store ptr @.str.12, ptr %sep, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %td_compression = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 6, i32 10
  %3 = load i16, ptr %td_compression, align 8
  %cmp = icmp eq i16 %3, 4
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %4 = load ptr, ptr %fd.addr, align 8
  %5 = call i64 @fwrite(ptr nonnull @.str.13, i64 18, i64 1, ptr %4)
  %6 = load ptr, ptr %sp, align 8
  %groupoptions = getelementptr inbounds %struct.Fax3BaseState, ptr %6, i64 0, i32 6
  %7 = load i32, ptr %groupoptions, align 8
  %and4 = and i32 %7, 2
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end27, label %if.then6

if.then6:                                         ; preds = %if.then3
  %8 = load ptr, ptr %fd.addr, align 8
  %9 = load ptr, ptr %sep, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.14, ptr noundef %9) #6
  br label %if.end27

if.else:                                          ; preds = %if.then
  %10 = load ptr, ptr %fd.addr, align 8
  %11 = call i64 @fwrite(ptr nonnull @.str.15, i64 18, i64 1, ptr %10)
  %12 = load ptr, ptr %sp, align 8
  %groupoptions9 = getelementptr inbounds %struct.Fax3BaseState, ptr %12, i64 0, i32 6
  %13 = load i32, ptr %groupoptions9, align 8
  %and10 = and i32 %13, 1
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.else
  %14 = load ptr, ptr %fd.addr, align 8
  %15 = load ptr, ptr %sep, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.16, ptr noundef %15) #6
  store ptr @.str.17, ptr %sep, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.else
  %16 = load ptr, ptr %sp, align 8
  %groupoptions15 = getelementptr inbounds %struct.Fax3BaseState, ptr %16, i64 0, i32 6
  %17 = load i32, ptr %groupoptions15, align 8
  %and16 = and i32 %17, 4
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end14
  %18 = load ptr, ptr %fd.addr, align 8
  %19 = load ptr, ptr %sep, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.18, ptr noundef %19) #6
  store ptr @.str.17, ptr %sep, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end14
  %20 = load ptr, ptr %sp, align 8
  %groupoptions21 = getelementptr inbounds %struct.Fax3BaseState, ptr %20, i64 0, i32 6
  %21 = load i32, ptr %groupoptions21, align 8
  %and22 = and i32 %21, 2
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end27, label %if.then24

if.then24:                                        ; preds = %if.end20
  %22 = load ptr, ptr %fd.addr, align 8
  %23 = load ptr, ptr %sep, align 8
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.14, ptr noundef %23) #6
  br label %if.end27

if.end27:                                         ; preds = %if.end20, %if.then24, %if.then3, %if.then6
  %24 = load ptr, ptr %fd.addr, align 8
  %25 = load ptr, ptr %sp, align 8
  %groupoptions28 = getelementptr inbounds %struct.Fax3BaseState, ptr %25, i64 0, i32 6
  %26 = load i32, ptr %groupoptions28, align 8
  %conv29 = zext i32 %26 to i64
  %conv31 = zext i32 %26 to i64
  %call32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.19, i64 noundef %conv29, i64 noundef %conv31) #6
  br label %if.end33

if.end33:                                         ; preds = %if.end27, %entry
  %27 = load ptr, ptr %tif.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 6, i32 0, i64 1
  %28 = load i64, ptr %arrayidx36, align 8
  %and37 = and i64 %28, 2147483648
  %tobool38.not = icmp eq i64 %and37, 0
  br i1 %tobool38.not, label %if.end52, label %if.then39

if.then39:                                        ; preds = %if.end33
  %29 = load ptr, ptr %fd.addr, align 8
  %30 = call i64 @fwrite(ptr nonnull @.str.20, i64 11, i64 1, ptr %29)
  %31 = load ptr, ptr %sp, align 8
  %cleanfaxdata = getelementptr inbounds %struct.Fax3BaseState, ptr %31, i64 0, i32 3
  %32 = load i16, ptr %cleanfaxdata, align 4
  switch i16 %32, label %sw.epilog [
    i16 0, label %sw.bb
    i16 1, label %sw.bb43
    i16 2, label %sw.bb45
  ]

sw.bb:                                            ; preds = %if.then39
  %33 = load ptr, ptr %fd.addr, align 8
  %34 = call i64 @fwrite(ptr nonnull @.str.21, i64 6, i64 1, ptr %33)
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.then39
  %35 = load ptr, ptr %fd.addr, align 8
  %36 = call i64 @fwrite(ptr nonnull @.str.22, i64 21, i64 1, ptr %35)
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.then39
  %37 = load ptr, ptr %fd.addr, align 8
  %38 = call i64 @fwrite(ptr nonnull @.str.23, i64 19, i64 1, ptr %37)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb45, %sw.bb43, %sw.bb, %if.then39
  %39 = load ptr, ptr %fd.addr, align 8
  %40 = load ptr, ptr %sp, align 8
  %cleanfaxdata47 = getelementptr inbounds %struct.Fax3BaseState, ptr %40, i64 0, i32 3
  %41 = load i16, ptr %cleanfaxdata47, align 4
  %conv48 = zext i16 %41 to i32
  %conv50 = zext i16 %41 to i32
  %call51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.24, i32 noundef %conv48, i32 noundef %conv50) #6
  br label %if.end52

if.end52:                                         ; preds = %sw.epilog, %if.end33
  %42 = load ptr, ptr %tif.addr, align 8
  %arrayidx55 = getelementptr inbounds %struct.tiff, ptr %42, i64 0, i32 6, i32 0, i64 1
  %43 = load i64, ptr %arrayidx55, align 8
  %and56 = and i64 %43, 1073741824
  %tobool57.not = icmp eq i64 %and56, 0
  br i1 %tobool57.not, label %if.end61, label %if.then58

if.then58:                                        ; preds = %if.end52
  %44 = load ptr, ptr %fd.addr, align 8
  %45 = load ptr, ptr %sp, align 8
  %badfaxlines = getelementptr inbounds %struct.Fax3BaseState, ptr %45, i64 0, i32 5
  %46 = load i32, ptr %badfaxlines, align 4
  %conv59 = zext i32 %46 to i64
  %call60 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.25, i64 noundef %conv59) #6
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end52
  %47 = load ptr, ptr %tif.addr, align 8
  %arrayidx64 = getelementptr inbounds %struct.tiff, ptr %47, i64 0, i32 6, i32 0, i64 2
  %48 = load i64, ptr %arrayidx64, align 8
  %and65 = and i64 %48, 1
  %tobool66.not = icmp eq i64 %and65, 0
  br i1 %tobool66.not, label %if.end70, label %if.then67

if.then67:                                        ; preds = %if.end61
  %49 = load ptr, ptr %fd.addr, align 8
  %50 = load ptr, ptr %sp, align 8
  %badfaxrun = getelementptr inbounds %struct.Fax3BaseState, ptr %50, i64 0, i32 4
  %51 = load i32, ptr %badfaxrun, align 8
  %conv68 = zext i32 %51 to i64
  %call69 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.26, i64 noundef %conv68) #6
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.end61
  %52 = load ptr, ptr %tif.addr, align 8
  %arrayidx73 = getelementptr inbounds %struct.tiff, ptr %52, i64 0, i32 6, i32 0, i64 2
  %53 = load i64, ptr %arrayidx73, align 8
  %and74 = and i64 %53, 2
  %tobool75.not = icmp eq i64 %and74, 0
  br i1 %tobool75.not, label %if.end79, label %if.then76

if.then76:                                        ; preds = %if.end70
  %54 = load ptr, ptr %fd.addr, align 8
  %55 = load ptr, ptr %sp, align 8
  %recvparams = getelementptr inbounds %struct.Fax3BaseState, ptr %55, i64 0, i32 7
  %56 = load i32, ptr %recvparams, align 4
  %conv77 = zext i32 %56 to i64
  %call78 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.27, i64 noundef %conv77) #6
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.end70
  %57 = load ptr, ptr %tif.addr, align 8
  %arrayidx82 = getelementptr inbounds %struct.tiff, ptr %57, i64 0, i32 6, i32 0, i64 2
  %58 = load i64, ptr %arrayidx82, align 8
  %and83 = and i64 %58, 4
  %tobool84.not = icmp eq i64 %and83, 0
  br i1 %tobool84.not, label %if.end87, label %if.then85

if.then85:                                        ; preds = %if.end79
  %59 = load ptr, ptr %fd.addr, align 8
  %60 = load ptr, ptr %sp, align 8
  %subaddress = getelementptr inbounds %struct.Fax3BaseState, ptr %60, i64 0, i32 8
  %61 = load ptr, ptr %subaddress, align 8
  %call86 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef nonnull @.str.28, ptr noundef %61) #6
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %if.end79
  %62 = load ptr, ptr %tif.addr, align 8
  %arrayidx90 = getelementptr inbounds %struct.tiff, ptr %62, i64 0, i32 6, i32 0, i64 2
  %63 = load i64, ptr %arrayidx90, align 8
  %and91 = and i64 %63, 8
  %tobool92.not = icmp eq i64 %and91, 0
  br i1 %tobool92.not, label %if.end96, label %if.then93

if.then93:                                        ; preds = %if.end87
  %64 = load ptr, ptr %fd.addr, align 8
  %65 = load ptr, ptr %sp, align 8
  %recvtime = getelementptr inbounds %struct.Fax3BaseState, ptr %65, i64 0, i32 9
  %66 = load i32, ptr %recvtime, align 8
  %conv94 = zext i32 %66 to i64
  %call95 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.29, i64 noundef %conv94) #6
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %if.end87
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
  %nruns = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %td_bitspersample = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 8
  %1 = load i16, ptr %td_bitspersample, align 4
  %cmp.not = icmp eq i16 %1, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load ptr, ptr %2, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %3, ptr noundef nonnull @.str.30) #6
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %4, i64 0, i32 3
  %5 = load i32, ptr %tif_flags, align 8
  %and = and i32 %5, 1024
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFTileRowSize(ptr noundef %6) #6
  %conv5 = sext i32 %call to i64
  store i64 %conv5, ptr %rowbytes, align 8
  %7 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i64 0, i32 4
  br label %if.end10

if.else:                                          ; preds = %if.end
  %8 = load ptr, ptr %tif.addr, align 8
  %call7 = call i32 @TIFFScanlineSize(ptr noundef %8) #6
  %conv8 = sext i32 %call7 to i64
  store i64 %conv8, ptr %rowbytes, align 8
  %9 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %9, i64 0, i32 1
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then4
  %storemerge.in.in = phi ptr [ %td_imagewidth, %if.else ], [ %td_tilewidth, %if.then4 ]
  %storemerge.in = load i32, ptr %storemerge.in.in, align 4
  %storemerge = zext i32 %storemerge.in to i64
  store i64 %storemerge, ptr %rowpixels, align 8
  %10 = load i64, ptr %rowbytes, align 8
  %conv11 = trunc i64 %10 to i32
  %11 = load ptr, ptr %sp, align 8
  %rowbytes12 = getelementptr inbounds %struct.Fax3BaseState, ptr %11, i64 0, i32 1
  store i32 %conv11, ptr %rowbytes12, align 4
  %rowpixels14 = getelementptr inbounds %struct.Fax3BaseState, ptr %11, i64 0, i32 2
  store i32 %storemerge.in, ptr %rowpixels14, align 8
  %groupoptions = getelementptr inbounds %struct.Fax3BaseState, ptr %11, i64 0, i32 6
  %12 = load i32, ptr %groupoptions, align 8
  %and15 = and i32 %12, 1
  %tobool.not = icmp eq i32 %and15, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.end10
  %13 = load ptr, ptr %td, align 8
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i64 0, i32 10
  %14 = load i16, ptr %td_compression, align 8
  %cmp17 = icmp eq i16 %14, 4
  %phi.cast = zext i1 %cmp17 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end10
  %15 = phi i32 [ 1, %if.end10 ], [ %phi.cast, %lor.rhs ]
  store i32 %15, ptr %needsRefLine, align 4
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 2
  %17 = load i32, ptr %tif_mode, align 4
  %cmp19 = icmp eq i32 %17, 0
  br i1 %cmp19, label %if.then21, label %if.else50

if.then21:                                        ; preds = %lor.end
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_data22 = getelementptr inbounds %struct.tiff, ptr %18, i64 0, i32 37
  %19 = load ptr, ptr %tif_data22, align 8
  store ptr %19, ptr %dsp, align 8
  %20 = load i32, ptr %needsRefLine, align 4
  %tobool23.not = icmp eq i32 %20, 0
  br i1 %tobool23.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then21
  %21 = load i64, ptr %rowpixels, align 8
  %add = shl i64 %21, 1
  %div1 = add i64 %add, 62
  %mul25 = and i64 %div1, 4294967232
  br label %cond.end

cond.false:                                       ; preds = %if.then21
  %22 = load i64, ptr %rowpixels, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul25, %cond.true ], [ %22, %cond.false ]
  %conv27 = trunc i64 %cond to i32
  store i32 %conv27, ptr %nruns, align 4
  %cond.tr = trunc i64 %cond to i32
  %conv30 = shl i32 %cond.tr, 2
  %call31 = call ptr @_TIFFmalloc(i32 noundef %conv30) #6
  %23 = load ptr, ptr %dsp, align 8
  %runs = getelementptr inbounds %struct.Fax3DecodeState, ptr %23, i64 0, i32 6
  store ptr %call31, ptr %runs, align 8
  %cmp33 = icmp eq ptr %call31, null
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %cond.end
  %24 = load ptr, ptr %tif.addr, align 8
  %25 = load ptr, ptr %24, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef %25) #6
  store i32 0, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %cond.end
  %26 = load ptr, ptr %dsp, align 8
  %runs38 = getelementptr inbounds %struct.Fax3DecodeState, ptr %26, i64 0, i32 6
  %27 = load ptr, ptr %runs38, align 8
  %curruns = getelementptr inbounds %struct.Fax3DecodeState, ptr %26, i64 0, i32 8
  store ptr %27, ptr %curruns, align 8
  %28 = load i32, ptr %needsRefLine, align 4
  %tobool39.not = icmp eq i32 %28, 0
  br i1 %tobool39.not, label %if.else42, label %if.then40

if.then40:                                        ; preds = %if.end37
  %29 = load ptr, ptr %dsp, align 8
  %runs41 = getelementptr inbounds %struct.Fax3DecodeState, ptr %29, i64 0, i32 6
  %30 = load ptr, ptr %runs41, align 8
  %31 = load i32, ptr %nruns, align 4
  %shr = lshr i32 %31, 1
  %idx.ext = zext i32 %shr to i64
  %add.ptr = getelementptr inbounds i32, ptr %30, i64 %idx.ext
  %32 = load ptr, ptr %dsp, align 8
  %refruns = getelementptr inbounds %struct.Fax3DecodeState, ptr %32, i64 0, i32 7
  store ptr %add.ptr, ptr %refruns, align 8
  br label %if.end44

if.else42:                                        ; preds = %if.end37
  %33 = load ptr, ptr %dsp, align 8
  %refruns43 = getelementptr inbounds %struct.Fax3DecodeState, ptr %33, i64 0, i32 7
  store ptr null, ptr %refruns43, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.else42, %if.then40
  %34 = load ptr, ptr %dsp, align 8
  %groupoptions45 = getelementptr inbounds %struct.Fax3BaseState, ptr %34, i64 0, i32 6
  %35 = load i32, ptr %groupoptions45, align 8
  %and46 = and i32 %35, 1
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end66, label %if.then48

if.then48:                                        ; preds = %if.end44
  %36 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %36, i64 0, i32 26
  store ptr @Fax3Decode2D, ptr %tif_decoderow, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %36, i64 0, i32 28
  store ptr @Fax3Decode2D, ptr %tif_decodestrip, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %36, i64 0, i32 30
  store ptr @Fax3Decode2D, ptr %tif_decodetile, align 8
  br label %if.end66

if.else50:                                        ; preds = %lor.end
  %37 = load i32, ptr %needsRefLine, align 4
  %tobool51.not = icmp eq i32 %37, 0
  br i1 %tobool51.not, label %if.else62, label %if.then52

if.then52:                                        ; preds = %if.else50
  %38 = load ptr, ptr %tif.addr, align 8
  %tif_data53 = getelementptr inbounds %struct.tiff, ptr %38, i64 0, i32 37
  %39 = load ptr, ptr %tif_data53, align 8
  %40 = load i64, ptr %rowbytes, align 8
  %conv54 = trunc i64 %40 to i32
  %call55 = call ptr @_TIFFmalloc(i32 noundef %conv54) #6
  %refline = getelementptr inbounds %struct.Fax3EncodeState, ptr %39, i64 0, i32 4
  store ptr %call55, ptr %refline, align 8
  %cmp57 = icmp eq ptr %call55, null
  br i1 %cmp57, label %if.then59, label %if.end66

if.then59:                                        ; preds = %if.then52
  %41 = load ptr, ptr %tif.addr, align 8
  %42 = load ptr, ptr %41, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.33, ptr noundef %42) #6
  store i32 0, ptr %retval, align 4
  br label %return

if.else62:                                        ; preds = %if.else50
  %43 = load ptr, ptr %tif.addr, align 8
  %tif_data63 = getelementptr inbounds %struct.tiff, ptr %43, i64 0, i32 37
  %44 = load ptr, ptr %tif_data63, align 8
  %refline64 = getelementptr inbounds %struct.Fax3EncodeState, ptr %44, i64 0, i32 4
  store ptr null, ptr %refline64, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.else62, %if.then52, %if.end44, %if.then48
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end66, %if.then59, %if.then35, %if.then
  %45 = load i32, ptr %retval, align 4
  ret i32 %45
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
  call void @__assert_rtn(ptr noundef nonnull @__func__.Fax3PreDecode, ptr noundef nonnull @.str, i32 noundef 160, ptr noundef nonnull @.str.40) #5
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load ptr, ptr %sp, align 8
  %bit = getelementptr inbounds %struct.Fax3DecodeState, ptr %1, i64 0, i32 3
  store i32 0, ptr %bit, align 4
  %data = getelementptr inbounds %struct.Fax3DecodeState, ptr %1, i64 0, i32 2
  store i32 0, ptr %data, align 8
  %EOLcnt = getelementptr inbounds %struct.Fax3DecodeState, ptr %1, i64 0, i32 4
  store i32 0, ptr %EOLcnt, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %td_fillorder = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 6, i32 13
  %3 = load i16, ptr %td_fillorder, align 2
  %cmp2 = icmp ne i16 %3, 2
  %conv3 = zext i1 %cmp2 to i32
  %call = call ptr @TIFFGetBitRevTable(i32 noundef %conv3) #6
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
  %7 = load i32, ptr %rowpixels, align 8
  %conv6 = and i32 %7, 65535
  %refruns7 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 7
  %8 = load ptr, ptr %refruns7, align 8
  store i32 %conv6, ptr %8, align 4
  %9 = load ptr, ptr %sp, align 8
  %refruns8 = getelementptr inbounds %struct.Fax3DecodeState, ptr %9, i64 0, i32 7
  %10 = load ptr, ptr %refruns8, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %10, i64 1
  store i32 0, ptr %arrayidx9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax3Decode1D(ptr noundef %tif, ptr noundef %buf, i32 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %a0.addr.i27 = alloca i32, align 4
  %lastx.addr.i28 = alloca i32, align 4
  %a0.addr.i18 = alloca i32, align 4
  %lastx.addr.i19 = alloca i32, align 4
  %a0.addr.i13 = alloca i32, align 4
  %lastx.addr.i = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %occ.addr = alloca i32, align 4
  %sp = alloca ptr, align 8
  %a0 = alloca i32, align 4
  %lastx = alloca i32, align 4
  %BitAcc = alloca i32, align 4
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
  store i32 %occ, ptr %occ.addr, align 4
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %rowpixels = getelementptr inbounds %struct.Fax3BaseState, ptr %0, i64 0, i32 2
  %1 = load i32, ptr %rowpixels, align 8
  store i32 %1, ptr %lastx, align 4
  %bitmap1 = getelementptr inbounds %struct.Fax3DecodeState, ptr %0, i64 0, i32 1
  %2 = load ptr, ptr %bitmap1, align 8
  store ptr %2, ptr %bitmap, align 8
  %3 = load ptr, ptr %sp, align 8
  %data = getelementptr inbounds %struct.Fax3DecodeState, ptr %3, i64 0, i32 2
  %4 = load i32, ptr %data, align 8
  store i32 %4, ptr %BitAcc, align 4
  %bit = getelementptr inbounds %struct.Fax3DecodeState, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %bit, align 4
  store i32 %5, ptr %BitsAvail, align 4
  %6 = load ptr, ptr %sp, align 8
  %EOLcnt2 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 4
  %7 = load i32, ptr %EOLcnt2, align 8
  store i32 %7, ptr %EOLcnt, align 4
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 42
  %9 = load ptr, ptr %tif_rawcp, align 8
  store ptr %9, ptr %cp, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 43
  %10 = load i32, ptr %tif_rawcc, align 8
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %idx.ext
  store ptr %add.ptr, ptr %ep, align 8
  %11 = load ptr, ptr %sp, align 8
  %curruns = getelementptr inbounds %struct.Fax3DecodeState, ptr %11, i64 0, i32 8
  %12 = load ptr, ptr %curruns, align 8
  store ptr %12, ptr %thisrun, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end373, %entry
  %13 = load i32, ptr %occ.addr, align 4
  %cmp = icmp sgt i32 %13, 0
  br i1 %cmp, label %while.body, label %do.body458

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %14 = load ptr, ptr %thisrun, align 8
  store ptr %14, ptr %pa, align 8
  %15 = load i32, ptr %EOLcnt, align 4
  %cmp5 = icmp eq i32 %15, 0
  br i1 %cmp5, label %for.cond, label %if.end43

for.cond:                                         ; preds = %while.body, %do.body41
  %16 = load i32, ptr %BitsAvail, align 4
  %cmp8 = icmp slt i32 %16, 11
  br i1 %cmp8, label %if.then10, label %do.end36

if.then10:                                        ; preds = %for.cond
  %17 = load ptr, ptr %cp, align 8
  %18 = load ptr, ptr %ep, align 8
  %cmp11.not = icmp ult ptr %17, %18
  br i1 %cmp11.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then10
  %19 = load i32, ptr %BitsAvail, align 4
  %cmp14 = icmp eq i32 %19, 0
  br i1 %cmp14, label %do.body374, label %if.end

if.end:                                           ; preds = %if.then13
  store i32 11, ptr %BitsAvail, align 4
  br label %do.end36

if.else:                                          ; preds = %if.then10
  %20 = load ptr, ptr %bitmap, align 8
  %21 = load ptr, ptr %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %incdec.ptr, ptr %cp, align 8
  %22 = load i8, ptr %21, align 1
  %idxprom = zext i8 %22 to i64
  %arrayidx = getelementptr inbounds i8, ptr %20, i64 %idxprom
  %23 = load i8, ptr %arrayidx, align 1
  %conv17 = zext i8 %23 to i32
  %24 = load i32, ptr %BitsAvail, align 4
  %shl = shl i32 %conv17, %24
  %25 = load i32, ptr %BitAcc, align 4
  %or = or i32 %25, %shl
  store i32 %or, ptr %BitAcc, align 4
  %add = add nsw i32 %24, 8
  store i32 %add, ptr %BitsAvail, align 4
  %cmp18 = icmp slt i32 %24, 3
  br i1 %cmp18, label %if.then20, label %do.end36

if.then20:                                        ; preds = %if.else
  %26 = load ptr, ptr %cp, align 8
  %27 = load ptr, ptr %ep, align 8
  %cmp21.not = icmp ult ptr %26, %27
  br i1 %cmp21.not, label %if.else24, label %if.end32

if.else24:                                        ; preds = %if.then20
  %28 = load ptr, ptr %bitmap, align 8
  %29 = load ptr, ptr %cp, align 8
  %incdec.ptr25 = getelementptr inbounds i8, ptr %29, i64 1
  store ptr %incdec.ptr25, ptr %cp, align 8
  %30 = load i8, ptr %29, align 1
  %idxprom26 = zext i8 %30 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %28, i64 %idxprom26
  %31 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %31 to i32
  %32 = load i32, ptr %BitsAvail, align 4
  %shl29 = shl i32 %conv28, %32
  %33 = load i32, ptr %BitAcc, align 4
  %or30 = or i32 %33, %shl29
  store i32 %or30, ptr %BitAcc, align 4
  %add31 = add nsw i32 %32, 8
  br label %if.end32

if.end32:                                         ; preds = %if.then20, %if.else24
  %storemerge42 = phi i32 [ %add31, %if.else24 ], [ 11, %if.then20 ]
  store i32 %storemerge42, ptr %BitsAvail, align 4
  br label %do.end36

do.end36:                                         ; preds = %for.cond, %if.else, %if.end32, %if.end
  %34 = load i32, ptr %BitAcc, align 4
  %and = and i32 %34, 2047
  %cmp37 = icmp eq i32 %and, 0
  br i1 %cmp37, label %if.end43, label %do.body41

do.body41:                                        ; preds = %do.end36
  %35 = load i32, ptr %BitsAvail, align 4
  %sub = add nsw i32 %35, -1
  store i32 %sub, ptr %BitsAvail, align 4
  %36 = load i32, ptr %BitAcc, align 4
  %shr = lshr i32 %36, 1
  store i32 %shr, ptr %BitAcc, align 4
  br label %for.cond

if.end43:                                         ; preds = %do.end36, %while.body
  br label %for.cond44

for.cond44:                                       ; preds = %do.body70, %if.end43
  %37 = load i32, ptr %BitsAvail, align 4
  %cmp46 = icmp slt i32 %37, 8
  br i1 %cmp46, label %if.then48, label %do.end66

if.then48:                                        ; preds = %for.cond44
  %38 = load ptr, ptr %cp, align 8
  %39 = load ptr, ptr %ep, align 8
  %cmp49.not = icmp ult ptr %38, %39
  br i1 %cmp49.not, label %if.else56, label %if.then51

if.then51:                                        ; preds = %if.then48
  %40 = load i32, ptr %BitsAvail, align 4
  %cmp52 = icmp eq i32 %40, 0
  br i1 %cmp52, label %do.body374, label %if.end64

if.else56:                                        ; preds = %if.then48
  %41 = load ptr, ptr %bitmap, align 8
  %42 = load ptr, ptr %cp, align 8
  %incdec.ptr57 = getelementptr inbounds i8, ptr %42, i64 1
  store ptr %incdec.ptr57, ptr %cp, align 8
  %43 = load i8, ptr %42, align 1
  %idxprom58 = zext i8 %43 to i64
  %arrayidx59 = getelementptr inbounds i8, ptr %41, i64 %idxprom58
  %44 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %44 to i32
  %45 = load i32, ptr %BitsAvail, align 4
  %shl61 = shl i32 %conv60, %45
  %46 = load i32, ptr %BitAcc, align 4
  %or62 = or i32 %46, %shl61
  store i32 %or62, ptr %BitAcc, align 4
  %add63 = add nsw i32 %45, 8
  br label %if.end64

if.end64:                                         ; preds = %if.then51, %if.else56
  %storemerge40 = phi i32 [ %add63, %if.else56 ], [ 8, %if.then51 ]
  store i32 %storemerge40, ptr %BitsAvail, align 4
  br label %do.end66

do.end66:                                         ; preds = %for.cond44, %if.end64
  %47 = load i32, ptr %BitAcc, align 4
  %and67 = and i32 %47, 255
  %tobool.not = icmp eq i32 %and67, 0
  br i1 %tobool.not, label %do.body70, label %while.cond75

do.body70:                                        ; preds = %do.end66
  %48 = load i32, ptr %BitsAvail, align 4
  %sub71 = add nsw i32 %48, -8
  store i32 %sub71, ptr %BitsAvail, align 4
  %49 = load i32, ptr %BitAcc, align 4
  %shr72 = lshr i32 %49, 8
  store i32 %shr72, ptr %BitAcc, align 4
  br label %for.cond44

while.cond75:                                     ; preds = %do.end66, %do.body80
  %50 = load i32, ptr %BitAcc, align 4
  %and76 = and i32 %50, 1
  %cmp77 = icmp eq i32 %and76, 0
  br i1 %cmp77, label %do.body80, label %do.body84

do.body80:                                        ; preds = %while.cond75
  %51 = load i32, ptr %BitsAvail, align 4
  %sub81 = add nsw i32 %51, -1
  store i32 %sub81, ptr %BitsAvail, align 4
  %52 = load i32, ptr %BitAcc, align 4
  %shr82 = lshr i32 %52, 1
  store i32 %shr82, ptr %BitAcc, align 4
  br label %while.cond75, !llvm.loop !25

do.body84:                                        ; preds = %while.cond75
  %53 = load i32, ptr %BitsAvail, align 4
  %sub85 = add nsw i32 %53, -1
  store i32 %sub85, ptr %BitsAvail, align 4
  %54 = load i32, ptr %BitAcc, align 4
  %shr86 = lshr i32 %54, 1
  store i32 %shr86, ptr %BitAcc, align 4
  store i32 0, ptr %EOLcnt, align 4
  br label %for.cond90

for.cond90:                                       ; preds = %do.body215, %do.body84
  br label %for.cond91

for.cond91:                                       ; preds = %sw.bb150, %for.cond90
  %55 = load i32, ptr %BitsAvail, align 4
  %cmp94 = icmp slt i32 %55, 12
  br i1 %cmp94, label %if.then96, label %do.end130

if.then96:                                        ; preds = %for.cond91
  %56 = load ptr, ptr %cp, align 8
  %57 = load ptr, ptr %ep, align 8
  %cmp97.not = icmp ult ptr %56, %57
  br i1 %cmp97.not, label %if.else104, label %if.then99

if.then99:                                        ; preds = %if.then96
  %58 = load i32, ptr %BitsAvail, align 4
  %cmp100 = icmp eq i32 %58, 0
  br i1 %cmp100, label %eof1d, label %if.end103

if.end103:                                        ; preds = %if.then99
  store i32 12, ptr %BitsAvail, align 4
  br label %do.end130

if.else104:                                       ; preds = %if.then96
  %59 = load ptr, ptr %bitmap, align 8
  %60 = load ptr, ptr %cp, align 8
  %incdec.ptr105 = getelementptr inbounds i8, ptr %60, i64 1
  store ptr %incdec.ptr105, ptr %cp, align 8
  %61 = load i8, ptr %60, align 1
  %idxprom106 = zext i8 %61 to i64
  %arrayidx107 = getelementptr inbounds i8, ptr %59, i64 %idxprom106
  %62 = load i8, ptr %arrayidx107, align 1
  %conv108 = zext i8 %62 to i32
  %63 = load i32, ptr %BitsAvail, align 4
  %shl109 = shl i32 %conv108, %63
  %64 = load i32, ptr %BitAcc, align 4
  %or110 = or i32 %64, %shl109
  store i32 %or110, ptr %BitAcc, align 4
  %add111 = add nsw i32 %63, 8
  store i32 %add111, ptr %BitsAvail, align 4
  %cmp112 = icmp slt i32 %63, 4
  br i1 %cmp112, label %if.then114, label %do.end130

if.then114:                                       ; preds = %if.else104
  %65 = load ptr, ptr %cp, align 8
  %66 = load ptr, ptr %ep, align 8
  %cmp115.not = icmp ult ptr %65, %66
  br i1 %cmp115.not, label %if.else118, label %if.end126

if.else118:                                       ; preds = %if.then114
  %67 = load ptr, ptr %bitmap, align 8
  %68 = load ptr, ptr %cp, align 8
  %incdec.ptr119 = getelementptr inbounds i8, ptr %68, i64 1
  store ptr %incdec.ptr119, ptr %cp, align 8
  %69 = load i8, ptr %68, align 1
  %idxprom120 = zext i8 %69 to i64
  %arrayidx121 = getelementptr inbounds i8, ptr %67, i64 %idxprom120
  %70 = load i8, ptr %arrayidx121, align 1
  %conv122 = zext i8 %70 to i32
  %71 = load i32, ptr %BitsAvail, align 4
  %shl123 = shl i32 %conv122, %71
  %72 = load i32, ptr %BitAcc, align 4
  %or124 = or i32 %72, %shl123
  store i32 %or124, ptr %BitAcc, align 4
  %add125 = add nsw i32 %71, 8
  br label %if.end126

if.end126:                                        ; preds = %if.then114, %if.else118
  %storemerge39 = phi i32 [ %add125, %if.else118 ], [ 12, %if.then114 ]
  store i32 %storemerge39, ptr %BitsAvail, align 4
  br label %do.end130

do.end130:                                        ; preds = %for.cond91, %if.else104, %if.end126, %if.end103
  %73 = load i32, ptr %BitAcc, align 4
  %and131 = and i32 %73, 4095
  %idx.ext132 = zext i32 %and131 to i64
  %add.ptr133 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %idx.ext132
  store ptr %add.ptr133, ptr %TabEnt, align 8
  %74 = load ptr, ptr %TabEnt, align 8
  %Width = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %74, i64 0, i32 1
  %75 = load i8, ptr %Width, align 1
  %conv135 = zext i8 %75 to i32
  %76 = load i32, ptr %BitsAvail, align 4
  %sub136 = sub nsw i32 %76, %conv135
  store i32 %sub136, ptr %BitsAvail, align 4
  %77 = load ptr, ptr %TabEnt, align 8
  %Width137 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %77, i64 0, i32 1
  %78 = load i8, ptr %Width137, align 1
  %conv138 = zext i8 %78 to i32
  %79 = load i32, ptr %BitAcc, align 4
  %shr139 = lshr i32 %79, %conv138
  store i32 %shr139, ptr %BitAcc, align 4
  %80 = load ptr, ptr %TabEnt, align 8
  %81 = load i8, ptr %80, align 4
  switch i8 %81, label %sw.default [
    i8 12, label %sw.bb
    i8 7, label %do.body144
    i8 9, label %sw.bb150
    i8 11, label %sw.bb150
  ]

sw.bb:                                            ; preds = %do.end130
  store i32 1, ptr %EOLcnt, align 4
  br label %do.body295

do.body144:                                       ; preds = %do.end130
  %82 = load i32, ptr %RunLength, align 4
  %83 = load ptr, ptr %TabEnt, align 8
  %Param = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %83, i64 0, i32 2
  %84 = load i32, ptr %Param, align 4
  %add145 = add i32 %82, %84
  %85 = load ptr, ptr %pa, align 8
  %incdec.ptr146 = getelementptr inbounds i32, ptr %85, i64 1
  store ptr %incdec.ptr146, ptr %pa, align 8
  store i32 %add145, ptr %85, align 4
  %86 = load ptr, ptr %TabEnt, align 8
  %Param147 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %86, i64 0, i32 2
  %87 = load i32, ptr %Param147, align 4
  %88 = load i32, ptr %a0, align 4
  %add148 = add i32 %88, %87
  store i32 %add148, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %89 = load i32, ptr %a0, align 4
  %90 = load i32, ptr %lastx, align 4
  %cmp155.not = icmp slt i32 %89, %90
  br i1 %cmp155.not, label %for.cond159, label %do.body295

sw.bb150:                                         ; preds = %do.end130, %do.end130
  %91 = load ptr, ptr %TabEnt, align 8
  %Param151 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %91, i64 0, i32 2
  %92 = load i32, ptr %Param151, align 4
  %93 = load i32, ptr %a0, align 4
  %add152 = add i32 %93, %92
  store i32 %add152, ptr %a0, align 4
  %94 = load i32, ptr %RunLength, align 4
  %add154 = add i32 %94, %92
  store i32 %add154, ptr %RunLength, align 4
  br label %for.cond91

sw.default:                                       ; preds = %do.end130
  %95 = load ptr, ptr %tif.addr, align 8
  %96 = load i32, ptr %a0, align 4
  %97 = load ptr, ptr %95, align 8
  %tif_row.i = getelementptr inbounds %struct.tiff, ptr %95, i64 0, i32 11
  %98 = load i32, ptr %tif_row.i, align 8
  %conv.i = zext i32 %96 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax3Decode1D.module, ptr noundef nonnull @.str.34, ptr noundef %97, i32 noundef %98, i64 noundef %conv.i) #6
  br label %do.body295

for.cond159:                                      ; preds = %do.body144, %sw.bb222
  %99 = load i32, ptr %BitsAvail, align 4
  %cmp162 = icmp slt i32 %99, 13
  br i1 %cmp162, label %if.then164, label %do.end198

if.then164:                                       ; preds = %for.cond159
  %100 = load ptr, ptr %cp, align 8
  %101 = load ptr, ptr %ep, align 8
  %cmp165.not = icmp ult ptr %100, %101
  br i1 %cmp165.not, label %if.else172, label %if.then167

if.then167:                                       ; preds = %if.then164
  %102 = load i32, ptr %BitsAvail, align 4
  %cmp168 = icmp eq i32 %102, 0
  br i1 %cmp168, label %eof1d, label %if.end171

if.end171:                                        ; preds = %if.then167
  store i32 13, ptr %BitsAvail, align 4
  br label %do.end198

if.else172:                                       ; preds = %if.then164
  %103 = load ptr, ptr %bitmap, align 8
  %104 = load ptr, ptr %cp, align 8
  %incdec.ptr173 = getelementptr inbounds i8, ptr %104, i64 1
  store ptr %incdec.ptr173, ptr %cp, align 8
  %105 = load i8, ptr %104, align 1
  %idxprom174 = zext i8 %105 to i64
  %arrayidx175 = getelementptr inbounds i8, ptr %103, i64 %idxprom174
  %106 = load i8, ptr %arrayidx175, align 1
  %conv176 = zext i8 %106 to i32
  %107 = load i32, ptr %BitsAvail, align 4
  %shl177 = shl i32 %conv176, %107
  %108 = load i32, ptr %BitAcc, align 4
  %or178 = or i32 %108, %shl177
  store i32 %or178, ptr %BitAcc, align 4
  %add179 = add nsw i32 %107, 8
  store i32 %add179, ptr %BitsAvail, align 4
  %cmp180 = icmp slt i32 %107, 5
  br i1 %cmp180, label %if.then182, label %do.end198

if.then182:                                       ; preds = %if.else172
  %109 = load ptr, ptr %cp, align 8
  %110 = load ptr, ptr %ep, align 8
  %cmp183.not = icmp ult ptr %109, %110
  br i1 %cmp183.not, label %if.else186, label %if.end194

if.else186:                                       ; preds = %if.then182
  %111 = load ptr, ptr %bitmap, align 8
  %112 = load ptr, ptr %cp, align 8
  %incdec.ptr187 = getelementptr inbounds i8, ptr %112, i64 1
  store ptr %incdec.ptr187, ptr %cp, align 8
  %113 = load i8, ptr %112, align 1
  %idxprom188 = zext i8 %113 to i64
  %arrayidx189 = getelementptr inbounds i8, ptr %111, i64 %idxprom188
  %114 = load i8, ptr %arrayidx189, align 1
  %conv190 = zext i8 %114 to i32
  %115 = load i32, ptr %BitsAvail, align 4
  %shl191 = shl i32 %conv190, %115
  %116 = load i32, ptr %BitAcc, align 4
  %or192 = or i32 %116, %shl191
  store i32 %or192, ptr %BitAcc, align 4
  %add193 = add nsw i32 %115, 8
  br label %if.end194

if.end194:                                        ; preds = %if.then182, %if.else186
  %storemerge36 = phi i32 [ %add193, %if.else186 ], [ 13, %if.then182 ]
  store i32 %storemerge36, ptr %BitsAvail, align 4
  br label %do.end198

do.end198:                                        ; preds = %for.cond159, %if.else172, %if.end194, %if.end171
  %117 = load i32, ptr %BitAcc, align 4
  %and199 = and i32 %117, 8191
  %idx.ext200 = zext i32 %and199 to i64
  %add.ptr201 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %idx.ext200
  store ptr %add.ptr201, ptr %TabEnt, align 8
  %118 = load ptr, ptr %TabEnt, align 8
  %Width203 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %118, i64 0, i32 1
  %119 = load i8, ptr %Width203, align 1
  %conv204 = zext i8 %119 to i32
  %120 = load i32, ptr %BitsAvail, align 4
  %sub205 = sub nsw i32 %120, %conv204
  store i32 %sub205, ptr %BitsAvail, align 4
  %121 = load ptr, ptr %TabEnt, align 8
  %Width206 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %121, i64 0, i32 1
  %122 = load i8, ptr %Width206, align 1
  %conv207 = zext i8 %122 to i32
  %123 = load i32, ptr %BitAcc, align 4
  %shr208 = lshr i32 %123, %conv207
  store i32 %shr208, ptr %BitAcc, align 4
  %124 = load ptr, ptr %TabEnt, align 8
  %125 = load i8, ptr %124, align 4
  switch i8 %125, label %sw.default227 [
    i8 12, label %sw.bb213
    i8 8, label %do.body215
    i8 10, label %sw.bb222
    i8 11, label %sw.bb222
  ]

sw.bb213:                                         ; preds = %do.end198
  store i32 1, ptr %EOLcnt, align 4
  br label %do.body295

do.body215:                                       ; preds = %do.end198
  %126 = load i32, ptr %RunLength, align 4
  %127 = load ptr, ptr %TabEnt, align 8
  %Param216 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %127, i64 0, i32 2
  %128 = load i32, ptr %Param216, align 4
  %add217 = add i32 %126, %128
  %129 = load ptr, ptr %pa, align 8
  %incdec.ptr218 = getelementptr inbounds i32, ptr %129, i64 1
  store ptr %incdec.ptr218, ptr %pa, align 8
  store i32 %add217, ptr %129, align 4
  %130 = load ptr, ptr %TabEnt, align 8
  %Param219 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %130, i64 0, i32 2
  %131 = load i32, ptr %Param219, align 4
  %132 = load i32, ptr %a0, align 4
  %add220 = add i32 %132, %131
  store i32 %add220, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %133 = load i32, ptr %a0, align 4
  %134 = load i32, ptr %lastx, align 4
  %cmp229.not = icmp slt i32 %133, %134
  br i1 %cmp229.not, label %for.cond90, label %do.body295

sw.bb222:                                         ; preds = %do.end198, %do.end198
  %135 = load ptr, ptr %TabEnt, align 8
  %Param223 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %135, i64 0, i32 2
  %136 = load i32, ptr %Param223, align 4
  %137 = load i32, ptr %a0, align 4
  %add224 = add i32 %137, %136
  store i32 %add224, ptr %a0, align 4
  %138 = load i32, ptr %RunLength, align 4
  %add226 = add i32 %138, %136
  store i32 %add226, ptr %RunLength, align 4
  br label %for.cond159

sw.default227:                                    ; preds = %do.end198
  %139 = load ptr, ptr %tif.addr, align 8
  %140 = load i32, ptr %a0, align 4
  %141 = load ptr, ptr %139, align 8
  %tif_row.i4 = getelementptr inbounds %struct.tiff, ptr %139, i64 0, i32 11
  %142 = load i32, ptr %tif_row.i4, align 8
  %conv.i5 = zext i32 %140 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax3Decode1D.module, ptr noundef nonnull @.str.34, ptr noundef %141, i32 noundef %142, i64 noundef %conv.i5) #6
  br label %do.body295

eof1d:                                            ; preds = %if.then167, %if.then99
  %143 = load ptr, ptr %tif.addr, align 8
  %144 = load i32, ptr %a0, align 4
  %145 = load ptr, ptr %143, align 8
  %tif_row.i9 = getelementptr inbounds %struct.tiff, ptr %143, i64 0, i32 11
  %146 = load i32, ptr %tif_row.i9, align 8
  %conv.i10 = zext i32 %144 to i64
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax3Decode1D.module, ptr noundef nonnull @.str.35, ptr noundef %145, i32 noundef %146, i64 noundef %conv.i10) #6
  %147 = load i32, ptr %RunLength, align 4
  %tobool234.not = icmp eq i32 %147, 0
  br i1 %tobool234.not, label %if.end241, label %do.body236

do.body236:                                       ; preds = %eof1d
  %148 = load i32, ptr %RunLength, align 4
  %149 = load ptr, ptr %pa, align 8
  %incdec.ptr238 = getelementptr inbounds i32, ptr %149, i64 1
  store ptr %incdec.ptr238, ptr %pa, align 8
  store i32 %148, ptr %149, align 4
  store i32 0, ptr %RunLength, align 4
  br label %if.end241

if.end241:                                        ; preds = %do.body236, %eof1d
  %150 = load i32, ptr %a0, align 4
  %151 = load i32, ptr %lastx, align 4
  %cmp242.not = icmp eq i32 %150, %151
  br i1 %cmp242.not, label %EOF1Da, label %if.then244

if.then244:                                       ; preds = %if.end241
  %152 = load ptr, ptr %tif.addr, align 8
  %153 = load i32, ptr %a0, align 4
  %154 = load i32, ptr %lastx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a0.addr.i13)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lastx.addr.i)
  store i32 %153, ptr %a0.addr.i13, align 4
  store i32 %154, ptr %lastx.addr.i, align 4
  %155 = load ptr, ptr %152, align 8
  %cmp.i = icmp ult i32 %153, %154
  %cond.i = select i1 %cmp.i, ptr @.str.37, ptr @.str.38
  %tif_row.i14 = getelementptr inbounds %struct.tiff, ptr %152, i64 0, i32 11
  %156 = load i32, ptr %tif_row.i14, align 8
  %157 = load i32, ptr %a0.addr.i13, align 4
  %conv.i15 = zext i32 %157 to i64
  %158 = load i32, ptr %lastx.addr.i, align 4
  %conv1.i = zext i32 %158 to i64
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax3Decode1D.module, ptr noundef nonnull @.str.36, ptr noundef %155, ptr noundef nonnull %cond.i, i32 noundef %156, i64 noundef %conv.i15, i64 noundef %conv1.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a0.addr.i13)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lastx.addr.i)
  br label %while.cond245

while.cond245:                                    ; preds = %while.body250, %if.then244
  %159 = load i32, ptr %a0, align 4
  %160 = load i32, ptr %lastx, align 4
  %cmp246 = icmp sgt i32 %159, %160
  %161 = load ptr, ptr %pa, align 8
  %162 = load ptr, ptr %thisrun, align 8
  %cmp248 = icmp ugt ptr %161, %162
  %163 = select i1 %cmp246, i1 %cmp248, i1 false
  br i1 %163, label %while.body250, label %while.end253

while.body250:                                    ; preds = %while.cond245
  %164 = load ptr, ptr %pa, align 8
  %incdec.ptr251 = getelementptr inbounds i32, ptr %164, i64 -1
  store ptr %incdec.ptr251, ptr %pa, align 8
  %165 = load i32, ptr %incdec.ptr251, align 4
  %166 = load i32, ptr %a0, align 4
  %sub252 = sub i32 %166, %165
  store i32 %sub252, ptr %a0, align 4
  br label %while.cond245, !llvm.loop !26

while.end253:                                     ; preds = %while.cond245
  %167 = load i32, ptr %a0, align 4
  %168 = load i32, ptr %lastx, align 4
  %cmp254 = icmp slt i32 %167, %168
  br i1 %cmp254, label %if.then256, label %if.else277

if.then256:                                       ; preds = %while.end253
  %169 = load i32, ptr %a0, align 4
  %cmp257 = icmp slt i32 %169, 0
  %spec.store.select = select i1 %cmp257, i32 0, i32 %169
  store i32 %spec.store.select, ptr %a0, align 4
  %170 = load ptr, ptr %pa, align 8
  %171 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %170 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %171 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %172 = and i64 %sub.ptr.sub, 4
  %tobool262.not = icmp eq i64 %172, 0
  br i1 %tobool262.not, label %do.body270, label %do.body264

do.body264:                                       ; preds = %if.then256
  %173 = load i32, ptr %RunLength, align 4
  %174 = load ptr, ptr %pa, align 8
  %incdec.ptr266 = getelementptr inbounds i32, ptr %174, i64 1
  store ptr %incdec.ptr266, ptr %pa, align 8
  store i32 %173, ptr %174, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.body270

do.body270:                                       ; preds = %if.then256, %do.body264
  %175 = load i32, ptr %RunLength, align 4
  %176 = load i32, ptr %lastx, align 4
  %177 = load i32, ptr %a0, align 4
  %sub271 = sub nsw i32 %176, %177
  %add272 = add nsw i32 %175, %sub271
  %178 = load ptr, ptr %pa, align 8
  %incdec.ptr273 = getelementptr inbounds i32, ptr %178, i64 1
  store ptr %incdec.ptr273, ptr %pa, align 8
  store i32 %add272, ptr %178, align 4
  %179 = load i32, ptr %lastx, align 4
  store i32 %179, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %EOF1Da

if.else277:                                       ; preds = %while.end253
  %180 = load i32, ptr %a0, align 4
  %181 = load i32, ptr %lastx, align 4
  %cmp278 = icmp sgt i32 %180, %181
  br i1 %cmp278, label %do.body281, label %EOF1Da

do.body281:                                       ; preds = %if.else277
  %182 = load i32, ptr %RunLength, align 4
  %183 = load i32, ptr %lastx, align 4
  %add282 = add nsw i32 %182, %183
  %184 = load ptr, ptr %pa, align 8
  %incdec.ptr283 = getelementptr inbounds i32, ptr %184, i64 1
  store ptr %incdec.ptr283, ptr %pa, align 8
  store i32 %add282, ptr %184, align 4
  %185 = load i32, ptr %a0, align 4
  %add284 = add nsw i32 %185, %183
  store i32 %add284, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %186 = load i32, ptr %RunLength, align 4
  %187 = load ptr, ptr %pa, align 8
  %incdec.ptr288 = getelementptr inbounds i32, ptr %187, i64 1
  store ptr %incdec.ptr288, ptr %pa, align 8
  store i32 %186, ptr %187, align 4
  store i32 0, ptr %RunLength, align 4
  br label %EOF1Da

do.body295:                                       ; preds = %sw.bb, %sw.default, %sw.bb213, %sw.default227, %do.body144, %do.body215
  %188 = load i32, ptr %RunLength, align 4
  %tobool296.not = icmp eq i32 %188, 0
  br i1 %tobool296.not, label %if.end303, label %do.body298

do.body298:                                       ; preds = %do.body295
  %189 = load i32, ptr %RunLength, align 4
  %190 = load ptr, ptr %pa, align 8
  %incdec.ptr300 = getelementptr inbounds i32, ptr %190, i64 1
  store ptr %incdec.ptr300, ptr %pa, align 8
  store i32 %189, ptr %190, align 4
  store i32 0, ptr %RunLength, align 4
  br label %if.end303

if.end303:                                        ; preds = %do.body298, %do.body295
  %191 = load i32, ptr %a0, align 4
  %192 = load i32, ptr %lastx, align 4
  %cmp304.not = icmp eq i32 %191, %192
  br i1 %cmp304.not, label %do.end363, label %if.then306

if.then306:                                       ; preds = %if.end303
  %193 = load ptr, ptr %tif.addr, align 8
  %194 = load i32, ptr %a0, align 4
  %195 = load i32, ptr %lastx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a0.addr.i18)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lastx.addr.i19)
  store i32 %194, ptr %a0.addr.i18, align 4
  store i32 %195, ptr %lastx.addr.i19, align 4
  %196 = load ptr, ptr %193, align 8
  %cmp.i20 = icmp ult i32 %194, %195
  %cond.i21 = select i1 %cmp.i20, ptr @.str.37, ptr @.str.38
  %tif_row.i22 = getelementptr inbounds %struct.tiff, ptr %193, i64 0, i32 11
  %197 = load i32, ptr %tif_row.i22, align 8
  %198 = load i32, ptr %a0.addr.i18, align 4
  %conv.i23 = zext i32 %198 to i64
  %199 = load i32, ptr %lastx.addr.i19, align 4
  %conv1.i24 = zext i32 %199 to i64
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax3Decode1D.module, ptr noundef nonnull @.str.36, ptr noundef %196, ptr noundef nonnull %cond.i21, i32 noundef %197, i64 noundef %conv.i23, i64 noundef %conv1.i24) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a0.addr.i18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lastx.addr.i19)
  br label %while.cond307

while.cond307:                                    ; preds = %while.body314, %if.then306
  %200 = load i32, ptr %a0, align 4
  %201 = load i32, ptr %lastx, align 4
  %cmp308 = icmp sgt i32 %200, %201
  %202 = load ptr, ptr %pa, align 8
  %203 = load ptr, ptr %thisrun, align 8
  %cmp311 = icmp ugt ptr %202, %203
  %204 = select i1 %cmp308, i1 %cmp311, i1 false
  br i1 %204, label %while.body314, label %while.end317

while.body314:                                    ; preds = %while.cond307
  %205 = load ptr, ptr %pa, align 8
  %incdec.ptr315 = getelementptr inbounds i32, ptr %205, i64 -1
  store ptr %incdec.ptr315, ptr %pa, align 8
  %206 = load i32, ptr %incdec.ptr315, align 4
  %207 = load i32, ptr %a0, align 4
  %sub316 = sub i32 %207, %206
  store i32 %sub316, ptr %a0, align 4
  br label %while.cond307, !llvm.loop !27

while.end317:                                     ; preds = %while.cond307
  %208 = load i32, ptr %a0, align 4
  %209 = load i32, ptr %lastx, align 4
  %cmp318 = icmp slt i32 %208, %209
  br i1 %cmp318, label %if.then320, label %if.else345

if.then320:                                       ; preds = %while.end317
  %210 = load i32, ptr %a0, align 4
  %cmp321 = icmp slt i32 %210, 0
  %spec.store.select43 = select i1 %cmp321, i32 0, i32 %210
  store i32 %spec.store.select43, ptr %a0, align 4
  %211 = load ptr, ptr %pa, align 8
  %212 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast325 = ptrtoint ptr %211 to i64
  %sub.ptr.rhs.cast326 = ptrtoint ptr %212 to i64
  %sub.ptr.sub327 = sub i64 %sub.ptr.lhs.cast325, %sub.ptr.rhs.cast326
  %213 = and i64 %sub.ptr.sub327, 4
  %tobool330.not = icmp eq i64 %213, 0
  br i1 %tobool330.not, label %do.body338, label %do.body332

do.body332:                                       ; preds = %if.then320
  %214 = load i32, ptr %RunLength, align 4
  %215 = load ptr, ptr %pa, align 8
  %incdec.ptr334 = getelementptr inbounds i32, ptr %215, i64 1
  store ptr %incdec.ptr334, ptr %pa, align 8
  store i32 %214, ptr %215, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.body338

do.body338:                                       ; preds = %if.then320, %do.body332
  %216 = load i32, ptr %RunLength, align 4
  %217 = load i32, ptr %lastx, align 4
  %218 = load i32, ptr %a0, align 4
  %sub339 = sub nsw i32 %217, %218
  %add340 = add nsw i32 %216, %sub339
  %219 = load ptr, ptr %pa, align 8
  %incdec.ptr341 = getelementptr inbounds i32, ptr %219, i64 1
  store ptr %incdec.ptr341, ptr %pa, align 8
  store i32 %add340, ptr %219, align 4
  %220 = load i32, ptr %lastx, align 4
  store i32 %220, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end363

if.else345:                                       ; preds = %while.end317
  %221 = load i32, ptr %a0, align 4
  %222 = load i32, ptr %lastx, align 4
  %cmp346 = icmp sgt i32 %221, %222
  br i1 %cmp346, label %do.body349, label %do.end363

do.body349:                                       ; preds = %if.else345
  %223 = load i32, ptr %RunLength, align 4
  %224 = load i32, ptr %lastx, align 4
  %add350 = add nsw i32 %223, %224
  %225 = load ptr, ptr %pa, align 8
  %incdec.ptr351 = getelementptr inbounds i32, ptr %225, i64 1
  store ptr %incdec.ptr351, ptr %pa, align 8
  store i32 %add350, ptr %225, align 4
  %226 = load i32, ptr %a0, align 4
  %add352 = add nsw i32 %226, %224
  store i32 %add352, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %227 = load i32, ptr %RunLength, align 4
  %228 = load ptr, ptr %pa, align 8
  %incdec.ptr356 = getelementptr inbounds i32, ptr %228, i64 1
  store ptr %incdec.ptr356, ptr %pa, align 8
  store i32 %227, ptr %228, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end363

do.end363:                                        ; preds = %do.body338, %do.body349, %if.else345, %if.end303
  %229 = load ptr, ptr %sp, align 8
  %fill = getelementptr inbounds %struct.Fax3DecodeState, ptr %229, i64 0, i32 5
  %230 = load ptr, ptr %fill, align 8
  %231 = load ptr, ptr %buf.addr, align 8
  %232 = load ptr, ptr %thisrun, align 8
  %233 = load ptr, ptr %pa, align 8
  %234 = load i32, ptr %lastx, align 4
  call void %230(ptr noundef %231, ptr noundef %232, ptr noundef %233, i32 noundef %234) #6
  %235 = load ptr, ptr %sp, align 8
  %rowbytes = getelementptr inbounds %struct.Fax3BaseState, ptr %235, i64 0, i32 1
  %236 = load i32, ptr %rowbytes, align 4
  %237 = load ptr, ptr %buf.addr, align 8
  %idx.ext365 = zext i32 %236 to i64
  %add.ptr366 = getelementptr inbounds i8, ptr %237, i64 %idx.ext365
  store ptr %add.ptr366, ptr %buf.addr, align 8
  %238 = load ptr, ptr %sp, align 8
  %rowbytes368 = getelementptr inbounds %struct.Fax3BaseState, ptr %238, i64 0, i32 1
  %239 = load i32, ptr %rowbytes368, align 4
  %240 = load i32, ptr %occ.addr, align 4
  %sub369 = sub i32 %240, %239
  store i32 %sub369, ptr %occ.addr, align 4
  %cmp370.not = icmp eq i32 %240, %239
  br i1 %cmp370.not, label %if.end373, label %if.then372

if.then372:                                       ; preds = %do.end363
  %241 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %241, i64 0, i32 11
  %242 = load i32, ptr %tif_row, align 8
  %inc = add i32 %242, 1
  store i32 %inc, ptr %tif_row, align 8
  br label %if.end373

if.end373:                                        ; preds = %if.then372, %do.end363
  br label %while.cond, !llvm.loop !28

do.body374:                                       ; preds = %if.then13, %if.then51
  %243 = load i32, ptr %RunLength, align 4
  %tobool375.not = icmp eq i32 %243, 0
  br i1 %tobool375.not, label %if.end382, label %do.body377

do.body377:                                       ; preds = %do.body374
  %244 = load i32, ptr %RunLength, align 4
  %245 = load ptr, ptr %pa, align 8
  %incdec.ptr379 = getelementptr inbounds i32, ptr %245, i64 1
  store ptr %incdec.ptr379, ptr %pa, align 8
  store i32 %244, ptr %245, align 4
  store i32 0, ptr %RunLength, align 4
  br label %if.end382

if.end382:                                        ; preds = %do.body377, %do.body374
  %246 = load i32, ptr %a0, align 4
  %247 = load i32, ptr %lastx, align 4
  %cmp383.not = icmp eq i32 %246, %247
  br i1 %cmp383.not, label %EOF1Da, label %if.then385

if.then385:                                       ; preds = %if.end382
  %248 = load ptr, ptr %tif.addr, align 8
  %249 = load i32, ptr %a0, align 4
  %250 = load i32, ptr %lastx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a0.addr.i27)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lastx.addr.i28)
  store i32 %249, ptr %a0.addr.i27, align 4
  store i32 %250, ptr %lastx.addr.i28, align 4
  %251 = load ptr, ptr %248, align 8
  %cmp.i29 = icmp ult i32 %249, %250
  %cond.i30 = select i1 %cmp.i29, ptr @.str.37, ptr @.str.38
  %tif_row.i31 = getelementptr inbounds %struct.tiff, ptr %248, i64 0, i32 11
  %252 = load i32, ptr %tif_row.i31, align 8
  %253 = load i32, ptr %a0.addr.i27, align 4
  %conv.i32 = zext i32 %253 to i64
  %254 = load i32, ptr %lastx.addr.i28, align 4
  %conv1.i33 = zext i32 %254 to i64
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax3Decode1D.module, ptr noundef nonnull @.str.36, ptr noundef %251, ptr noundef nonnull %cond.i30, i32 noundef %252, i64 noundef %conv.i32, i64 noundef %conv1.i33) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a0.addr.i27)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lastx.addr.i28)
  br label %while.cond386

while.cond386:                                    ; preds = %while.body393, %if.then385
  %255 = load i32, ptr %a0, align 4
  %256 = load i32, ptr %lastx, align 4
  %cmp387 = icmp sgt i32 %255, %256
  %257 = load ptr, ptr %pa, align 8
  %258 = load ptr, ptr %thisrun, align 8
  %cmp390 = icmp ugt ptr %257, %258
  %259 = select i1 %cmp387, i1 %cmp390, i1 false
  br i1 %259, label %while.body393, label %while.end396

while.body393:                                    ; preds = %while.cond386
  %260 = load ptr, ptr %pa, align 8
  %incdec.ptr394 = getelementptr inbounds i32, ptr %260, i64 -1
  store ptr %incdec.ptr394, ptr %pa, align 8
  %261 = load i32, ptr %incdec.ptr394, align 4
  %262 = load i32, ptr %a0, align 4
  %sub395 = sub i32 %262, %261
  store i32 %sub395, ptr %a0, align 4
  br label %while.cond386, !llvm.loop !29

while.end396:                                     ; preds = %while.cond386
  %263 = load i32, ptr %a0, align 4
  %264 = load i32, ptr %lastx, align 4
  %cmp397 = icmp slt i32 %263, %264
  br i1 %cmp397, label %if.then399, label %if.else424

if.then399:                                       ; preds = %while.end396
  %265 = load i32, ptr %a0, align 4
  %cmp400 = icmp slt i32 %265, 0
  %spec.store.select44 = select i1 %cmp400, i32 0, i32 %265
  store i32 %spec.store.select44, ptr %a0, align 4
  %266 = load ptr, ptr %pa, align 8
  %267 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast404 = ptrtoint ptr %266 to i64
  %sub.ptr.rhs.cast405 = ptrtoint ptr %267 to i64
  %sub.ptr.sub406 = sub i64 %sub.ptr.lhs.cast404, %sub.ptr.rhs.cast405
  %268 = and i64 %sub.ptr.sub406, 4
  %tobool409.not = icmp eq i64 %268, 0
  br i1 %tobool409.not, label %do.body417, label %do.body411

do.body411:                                       ; preds = %if.then399
  %269 = load i32, ptr %RunLength, align 4
  %270 = load ptr, ptr %pa, align 8
  %incdec.ptr413 = getelementptr inbounds i32, ptr %270, i64 1
  store ptr %incdec.ptr413, ptr %pa, align 8
  store i32 %269, ptr %270, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.body417

do.body417:                                       ; preds = %if.then399, %do.body411
  %271 = load i32, ptr %RunLength, align 4
  %272 = load i32, ptr %lastx, align 4
  %273 = load i32, ptr %a0, align 4
  %sub418 = sub nsw i32 %272, %273
  %add419 = add nsw i32 %271, %sub418
  %274 = load ptr, ptr %pa, align 8
  %incdec.ptr420 = getelementptr inbounds i32, ptr %274, i64 1
  store ptr %incdec.ptr420, ptr %pa, align 8
  store i32 %add419, ptr %274, align 4
  %275 = load i32, ptr %lastx, align 4
  store i32 %275, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %EOF1Da

if.else424:                                       ; preds = %while.end396
  %276 = load i32, ptr %a0, align 4
  %277 = load i32, ptr %lastx, align 4
  %cmp425 = icmp sgt i32 %276, %277
  br i1 %cmp425, label %do.body428, label %EOF1Da

do.body428:                                       ; preds = %if.else424
  %278 = load i32, ptr %RunLength, align 4
  %279 = load i32, ptr %lastx, align 4
  %add429 = add nsw i32 %278, %279
  %280 = load ptr, ptr %pa, align 8
  %incdec.ptr430 = getelementptr inbounds i32, ptr %280, i64 1
  store ptr %incdec.ptr430, ptr %pa, align 8
  store i32 %add429, ptr %280, align 4
  %281 = load i32, ptr %a0, align 4
  %add431 = add nsw i32 %281, %279
  store i32 %add431, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %282 = load i32, ptr %RunLength, align 4
  %283 = load ptr, ptr %pa, align 8
  %incdec.ptr435 = getelementptr inbounds i32, ptr %283, i64 1
  store ptr %incdec.ptr435, ptr %pa, align 8
  store i32 %282, ptr %283, align 4
  store i32 0, ptr %RunLength, align 4
  br label %EOF1Da

EOF1Da:                                           ; preds = %do.body417, %do.body428, %if.else424, %if.end382, %do.body270, %do.body281, %if.else277, %if.end241
  %284 = load ptr, ptr %sp, align 8
  %fill442 = getelementptr inbounds %struct.Fax3DecodeState, ptr %284, i64 0, i32 5
  %285 = load ptr, ptr %fill442, align 8
  %286 = load ptr, ptr %buf.addr, align 8
  %287 = load ptr, ptr %thisrun, align 8
  %288 = load ptr, ptr %pa, align 8
  %289 = load i32, ptr %lastx, align 4
  call void %285(ptr noundef %286, ptr noundef %287, ptr noundef %288, i32 noundef %289) #6
  %290 = load i32, ptr %BitsAvail, align 4
  %291 = load ptr, ptr %sp, align 8
  %bit444 = getelementptr inbounds %struct.Fax3DecodeState, ptr %291, i64 0, i32 3
  store i32 %290, ptr %bit444, align 4
  %292 = load i32, ptr %BitAcc, align 4
  %data445 = getelementptr inbounds %struct.Fax3DecodeState, ptr %291, i64 0, i32 2
  store i32 %292, ptr %data445, align 8
  %293 = load i32, ptr %EOLcnt, align 4
  %294 = load ptr, ptr %sp, align 8
  %EOLcnt446 = getelementptr inbounds %struct.Fax3DecodeState, ptr %294, i64 0, i32 4
  store i32 %293, ptr %EOLcnt446, align 8
  %295 = load ptr, ptr %cp, align 8
  %296 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp447 = getelementptr inbounds %struct.tiff, ptr %296, i64 0, i32 42
  %297 = load ptr, ptr %tif_rawcp447, align 8
  %sub.ptr.lhs.cast448 = ptrtoint ptr %295 to i64
  %sub.ptr.rhs.cast449 = ptrtoint ptr %297 to i64
  %sub.ptr.sub450.neg = sub i64 %sub.ptr.rhs.cast449, %sub.ptr.lhs.cast448
  %tif_rawcc451 = getelementptr inbounds %struct.tiff, ptr %296, i64 0, i32 43
  %298 = load i32, ptr %tif_rawcc451, align 8
  %299 = trunc i64 %sub.ptr.sub450.neg to i32
  %conv454 = add i32 %298, %299
  store i32 %conv454, ptr %tif_rawcc451, align 8
  %300 = load ptr, ptr %cp, align 8
  %301 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp455 = getelementptr inbounds %struct.tiff, ptr %301, i64 0, i32 42
  store ptr %300, ptr %tif_rawcp455, align 8
  br label %return

do.body458:                                       ; preds = %while.cond
  %302 = load i32, ptr %BitsAvail, align 4
  %303 = load ptr, ptr %sp, align 8
  %bit459 = getelementptr inbounds %struct.Fax3DecodeState, ptr %303, i64 0, i32 3
  store i32 %302, ptr %bit459, align 4
  %304 = load i32, ptr %BitAcc, align 4
  %data460 = getelementptr inbounds %struct.Fax3DecodeState, ptr %303, i64 0, i32 2
  store i32 %304, ptr %data460, align 8
  %305 = load i32, ptr %EOLcnt, align 4
  %306 = load ptr, ptr %sp, align 8
  %EOLcnt461 = getelementptr inbounds %struct.Fax3DecodeState, ptr %306, i64 0, i32 4
  store i32 %305, ptr %EOLcnt461, align 8
  %307 = load ptr, ptr %cp, align 8
  %308 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp462 = getelementptr inbounds %struct.tiff, ptr %308, i64 0, i32 42
  %309 = load ptr, ptr %tif_rawcp462, align 8
  %sub.ptr.lhs.cast463 = ptrtoint ptr %307 to i64
  %sub.ptr.rhs.cast464 = ptrtoint ptr %309 to i64
  %sub.ptr.sub465.neg = sub i64 %sub.ptr.rhs.cast464, %sub.ptr.lhs.cast463
  %tif_rawcc466 = getelementptr inbounds %struct.tiff, ptr %308, i64 0, i32 43
  %310 = load i32, ptr %tif_rawcc466, align 8
  %311 = trunc i64 %sub.ptr.sub465.neg to i32
  %conv469 = add i32 %310, %311
  store i32 %conv469, ptr %tif_rawcc466, align 8
  %312 = load ptr, ptr %cp, align 8
  %313 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp470 = getelementptr inbounds %struct.tiff, ptr %313, i64 0, i32 42
  store ptr %312, ptr %tif_rawcp470, align 8
  br label %return

return:                                           ; preds = %do.body458, %EOF1Da
  %storemerge = phi i32 [ 1, %do.body458 ], [ -1, %EOF1Da ]
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
  call void @__assert_rtn(ptr noundef nonnull @__func__.Fax3PreEncode, ptr noundef nonnull @.str, i32 noundef 699, ptr noundef nonnull @.str.40) #5
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
  %6 = load i32, ptr %rowbytes, align 4
  call void @_TIFFmemset(ptr noundef %5, i32 noundef 0, i32 noundef %6) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %7 = load ptr, ptr %sp, align 8
  %groupoptions = getelementptr inbounds %struct.Fax3BaseState, ptr %7, i64 0, i32 6
  %8 = load i32, ptr %groupoptions, align 8
  %and = and i32 %8, 1
  %tobool4.not = icmp eq i32 %and, 0
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
  %3 = load i32, ptr %tif_rawcc, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 41
  %4 = load i32, ptr %tif_rawdatasize, align 8
  %cmp1.not = icmp slt i32 %3, %4
  br i1 %cmp1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %5) #6
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
  %10 = load i32, ptr %tif_rawcc3, align 8
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %tif_rawcc3, align 8
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
define internal i32 @Fax3Encode(ptr noundef %tif, ptr noundef %bp, i32 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end48, %entry
  %1 = load i32, ptr %cc.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %sp, align 8
  %3 = load i32, ptr %2, align 8
  %and = and i32 %3, 2
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load ptr, ptr %tif.addr, align 8
  call void @Fax3PutEOL(ptr noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %5 = load ptr, ptr %sp, align 8
  %groupoptions = getelementptr inbounds %struct.Fax3BaseState, ptr %5, i64 0, i32 6
  %6 = load i32, ptr %groupoptions, align 8
  %and5 = and i32 %6, 1
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.else32, label %if.then6

if.then6:                                         ; preds = %if.end
  %7 = load ptr, ptr %sp, align 8
  %tag = getelementptr inbounds %struct.Fax3EncodeState, ptr %7, i64 0, i32 3
  %8 = load i32, ptr %tag, align 8
  %cmp7 = icmp eq i32 %8, 0
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then6
  %9 = load ptr, ptr %tif.addr, align 8
  %10 = load ptr, ptr %bp.addr, align 8
  %11 = load ptr, ptr %sp, align 8
  %rowpixels = getelementptr inbounds %struct.Fax3BaseState, ptr %11, i64 0, i32 2
  %12 = load i32, ptr %rowpixels, align 8
  %call = call i32 @Fax3Encode1DRow(ptr noundef %9, ptr noundef %10, i32 noundef %12)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then9
  store i32 0, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.then9
  %13 = load ptr, ptr %sp, align 8
  %tag14 = getelementptr inbounds %struct.Fax3EncodeState, ptr %13, i64 0, i32 3
  store i32 1, ptr %tag14, align 8
  br label %if.end21

if.else:                                          ; preds = %if.then6
  %14 = load ptr, ptr %tif.addr, align 8
  %15 = load ptr, ptr %bp.addr, align 8
  %16 = load ptr, ptr %sp, align 8
  %refline = getelementptr inbounds %struct.Fax3EncodeState, ptr %16, i64 0, i32 4
  %17 = load ptr, ptr %refline, align 8
  %rowpixels16 = getelementptr inbounds %struct.Fax3BaseState, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %rowpixels16, align 8
  %call17 = call i32 @Fax3Encode2DRow(ptr noundef %14, ptr noundef %15, ptr noundef %17, i32 noundef %18)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.else
  %19 = load ptr, ptr %sp, align 8
  %k = getelementptr inbounds %struct.Fax3EncodeState, ptr %19, i64 0, i32 5
  %20 = load i32, ptr %k, align 8
  %dec = add nsw i32 %20, -1
  store i32 %dec, ptr %k, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end13
  %21 = load ptr, ptr %sp, align 8
  %k22 = getelementptr inbounds %struct.Fax3EncodeState, ptr %21, i64 0, i32 5
  %22 = load i32, ptr %k22, align 8
  %cmp23 = icmp eq i32 %22, 0
  br i1 %cmp23, label %if.then25, label %if.else28

if.then25:                                        ; preds = %if.end21
  %23 = load ptr, ptr %sp, align 8
  %tag26 = getelementptr inbounds %struct.Fax3EncodeState, ptr %23, i64 0, i32 3
  store i32 0, ptr %tag26, align 8
  %maxk = getelementptr inbounds %struct.Fax3EncodeState, ptr %23, i64 0, i32 6
  %24 = load i32, ptr %maxk, align 4
  %sub = add nsw i32 %24, -1
  %k27 = getelementptr inbounds %struct.Fax3EncodeState, ptr %23, i64 0, i32 5
  store i32 %sub, ptr %k27, align 8
  br label %if.end39

if.else28:                                        ; preds = %if.end21
  %25 = load ptr, ptr %sp, align 8
  %refline29 = getelementptr inbounds %struct.Fax3EncodeState, ptr %25, i64 0, i32 4
  %26 = load ptr, ptr %refline29, align 8
  %27 = load ptr, ptr %bp.addr, align 8
  %rowbytes = getelementptr inbounds %struct.Fax3BaseState, ptr %25, i64 0, i32 1
  %28 = load i32, ptr %rowbytes, align 4
  call void @_TIFFmemcpy(ptr noundef %26, ptr noundef %27, i32 noundef %28) #6
  br label %if.end39

if.else32:                                        ; preds = %if.end
  %29 = load ptr, ptr %tif.addr, align 8
  %30 = load ptr, ptr %bp.addr, align 8
  %31 = load ptr, ptr %sp, align 8
  %rowpixels34 = getelementptr inbounds %struct.Fax3BaseState, ptr %31, i64 0, i32 2
  %32 = load i32, ptr %rowpixels34, align 8
  %call35 = call i32 @Fax3Encode1DRow(ptr noundef %29, ptr noundef %30, i32 noundef %32)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.else32
  store i32 0, ptr %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.else32, %if.then25, %if.else28
  %33 = load ptr, ptr %sp, align 8
  %rowbytes41 = getelementptr inbounds %struct.Fax3BaseState, ptr %33, i64 0, i32 1
  %34 = load i32, ptr %rowbytes41, align 4
  %35 = load ptr, ptr %bp.addr, align 8
  %idx.ext = zext i32 %34 to i64
  %add.ptr = getelementptr inbounds i8, ptr %35, i64 %idx.ext
  store ptr %add.ptr, ptr %bp.addr, align 8
  %36 = load ptr, ptr %sp, align 8
  %rowbytes43 = getelementptr inbounds %struct.Fax3BaseState, ptr %36, i64 0, i32 1
  %37 = load i32, ptr %rowbytes43, align 4
  %38 = load i32, ptr %cc.addr, align 4
  %sub44 = sub i32 %38, %37
  store i32 %sub44, ptr %cc.addr, align 4
  %cmp45.not = icmp eq i32 %38, %37
  br i1 %cmp45.not, label %if.end48, label %if.then47

if.then47:                                        ; preds = %if.end39
  %39 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %39, i64 0, i32 11
  %40 = load i32, ptr %tif_row, align 8
  %inc = add i32 %40, 1
  store i32 %inc, ptr %tif_row, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end39
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then37, %if.then19, %if.then12
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
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
  %4 = load i32, ptr %groupoptions, align 8
  %and2 = and i32 %4, 1
  %tobool.not = icmp eq i32 %and2, 0
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
  %14 = load i32, ptr %tif_rawcc, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %13, i64 0, i32 41
  %15 = load i32, ptr %tif_rawdatasize, align 8
  %cmp8.not = icmp slt i32 %14, %15
  br i1 %cmp8.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %for.end
  %16 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %16) #6
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
  %21 = load i32, ptr %tif_rawcc13, align 8
  %inc14 = add nsw i32 %21, 1
  store i32 %inc14, ptr %tif_rawcc13, align 8
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
  call void @_TIFFfree(ptr noundef %7) #6
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
  call void @_TIFFfree(ptr noundef %12) #6
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
  call void @_TIFFfree(ptr noundef %18) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end12
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_data19 = getelementptr inbounds %struct.tiff, ptr %19, i64 0, i32 37
  %20 = load ptr, ptr %tif_data19, align 8
  call void @_TIFFfree(ptr noundef %20) #6
  %tif_data20 = getelementptr inbounds %struct.tiff, ptr %19, i64 0, i32 37
  store ptr null, ptr %tif_data20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end18, %entry
  ret void
}

declare void @_TIFFsetString(ptr noundef, ptr noundef) #2

declare ptr @_TIFFFieldWithTag(ptr noundef, i32 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i32 @TIFFTileRowSize(ptr noundef) #2

declare i32 @TIFFScanlineSize(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax3Decode2D(ptr noundef %tif, ptr noundef %buf, i32 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %a0.addr.i75 = alloca i32, align 4
  %lastx.addr.i76 = alloca i32, align 4
  %a0.addr.i66 = alloca i32, align 4
  %lastx.addr.i67 = alloca i32, align 4
  %a0.addr.i57 = alloca i32, align 4
  %lastx.addr.i58 = alloca i32, align 4
  %a0.addr.i18 = alloca i32, align 4
  %lastx.addr.i19 = alloca i32, align 4
  %a0.addr.i13 = alloca i32, align 4
  %lastx.addr.i = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %occ.addr = alloca i32, align 4
  %sp = alloca ptr, align 8
  %a0 = alloca i32, align 4
  %lastx = alloca i32, align 4
  %BitAcc = alloca i32, align 4
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
  store i32 %occ, ptr %occ.addr, align 4
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %rowpixels = getelementptr inbounds %struct.Fax3BaseState, ptr %0, i64 0, i32 2
  %1 = load i32, ptr %rowpixels, align 8
  store i32 %1, ptr %lastx, align 4
  %bitmap1 = getelementptr inbounds %struct.Fax3DecodeState, ptr %0, i64 0, i32 1
  %2 = load ptr, ptr %bitmap1, align 8
  store ptr %2, ptr %bitmap, align 8
  %3 = load ptr, ptr %sp, align 8
  %data = getelementptr inbounds %struct.Fax3DecodeState, ptr %3, i64 0, i32 2
  %4 = load i32, ptr %data, align 8
  store i32 %4, ptr %BitAcc, align 4
  %bit = getelementptr inbounds %struct.Fax3DecodeState, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %bit, align 4
  store i32 %5, ptr %BitsAvail, align 4
  %6 = load ptr, ptr %sp, align 8
  %EOLcnt2 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 4
  %7 = load i32, ptr %EOLcnt2, align 8
  store i32 %7, ptr %EOLcnt, align 4
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 42
  %9 = load ptr, ptr %tif_rawcp, align 8
  store ptr %9, ptr %cp, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 43
  %10 = load i32, ptr %tif_rawcc, align 8
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %idx.ext
  store ptr %add.ptr, ptr %ep, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end1102, %entry
  %11 = load i32, ptr %occ.addr, align 4
  %cmp = icmp sgt i32 %11, 0
  br i1 %cmp, label %while.body, label %do.body1187

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
  br i1 %cmp5, label %for.cond, label %if.end43

for.cond:                                         ; preds = %while.body, %do.body41
  %15 = load i32, ptr %BitsAvail, align 4
  %cmp8 = icmp slt i32 %15, 11
  br i1 %cmp8, label %if.then10, label %do.end36

if.then10:                                        ; preds = %for.cond
  %16 = load ptr, ptr %cp, align 8
  %17 = load ptr, ptr %ep, align 8
  %cmp11.not = icmp ult ptr %16, %17
  br i1 %cmp11.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then10
  %18 = load i32, ptr %BitsAvail, align 4
  %cmp14 = icmp eq i32 %18, 0
  br i1 %cmp14, label %do.body1103, label %if.end

if.end:                                           ; preds = %if.then13
  store i32 11, ptr %BitsAvail, align 4
  br label %do.end36

if.else:                                          ; preds = %if.then10
  %19 = load ptr, ptr %bitmap, align 8
  %20 = load ptr, ptr %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %incdec.ptr, ptr %cp, align 8
  %21 = load i8, ptr %20, align 1
  %idxprom = zext i8 %21 to i64
  %arrayidx = getelementptr inbounds i8, ptr %19, i64 %idxprom
  %22 = load i8, ptr %arrayidx, align 1
  %conv17 = zext i8 %22 to i32
  %23 = load i32, ptr %BitsAvail, align 4
  %shl = shl i32 %conv17, %23
  %24 = load i32, ptr %BitAcc, align 4
  %or = or i32 %24, %shl
  store i32 %or, ptr %BitAcc, align 4
  %add = add nsw i32 %23, 8
  store i32 %add, ptr %BitsAvail, align 4
  %cmp18 = icmp slt i32 %23, 3
  br i1 %cmp18, label %if.then20, label %do.end36

if.then20:                                        ; preds = %if.else
  %25 = load ptr, ptr %cp, align 8
  %26 = load ptr, ptr %ep, align 8
  %cmp21.not = icmp ult ptr %25, %26
  br i1 %cmp21.not, label %if.else24, label %if.end32

if.else24:                                        ; preds = %if.then20
  %27 = load ptr, ptr %bitmap, align 8
  %28 = load ptr, ptr %cp, align 8
  %incdec.ptr25 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %incdec.ptr25, ptr %cp, align 8
  %29 = load i8, ptr %28, align 1
  %idxprom26 = zext i8 %29 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %27, i64 %idxprom26
  %30 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %30 to i32
  %31 = load i32, ptr %BitsAvail, align 4
  %shl29 = shl i32 %conv28, %31
  %32 = load i32, ptr %BitAcc, align 4
  %or30 = or i32 %32, %shl29
  store i32 %or30, ptr %BitAcc, align 4
  %add31 = add nsw i32 %31, 8
  br label %if.end32

if.end32:                                         ; preds = %if.then20, %if.else24
  %storemerge101 = phi i32 [ %add31, %if.else24 ], [ 11, %if.then20 ]
  store i32 %storemerge101, ptr %BitsAvail, align 4
  br label %do.end36

do.end36:                                         ; preds = %for.cond, %if.else, %if.end32, %if.end
  %33 = load i32, ptr %BitAcc, align 4
  %and = and i32 %33, 2047
  %cmp37 = icmp eq i32 %and, 0
  br i1 %cmp37, label %if.end43, label %do.body41

do.body41:                                        ; preds = %do.end36
  %34 = load i32, ptr %BitsAvail, align 4
  %sub = add nsw i32 %34, -1
  store i32 %sub, ptr %BitsAvail, align 4
  %35 = load i32, ptr %BitAcc, align 4
  %shr = lshr i32 %35, 1
  store i32 %shr, ptr %BitAcc, align 4
  br label %for.cond

if.end43:                                         ; preds = %do.end36, %while.body
  br label %for.cond44

for.cond44:                                       ; preds = %do.body70, %if.end43
  %36 = load i32, ptr %BitsAvail, align 4
  %cmp46 = icmp slt i32 %36, 8
  br i1 %cmp46, label %if.then48, label %do.end66

if.then48:                                        ; preds = %for.cond44
  %37 = load ptr, ptr %cp, align 8
  %38 = load ptr, ptr %ep, align 8
  %cmp49.not = icmp ult ptr %37, %38
  br i1 %cmp49.not, label %if.else56, label %if.then51

if.then51:                                        ; preds = %if.then48
  %39 = load i32, ptr %BitsAvail, align 4
  %cmp52 = icmp eq i32 %39, 0
  br i1 %cmp52, label %do.body1103, label %if.end64

if.else56:                                        ; preds = %if.then48
  %40 = load ptr, ptr %bitmap, align 8
  %41 = load ptr, ptr %cp, align 8
  %incdec.ptr57 = getelementptr inbounds i8, ptr %41, i64 1
  store ptr %incdec.ptr57, ptr %cp, align 8
  %42 = load i8, ptr %41, align 1
  %idxprom58 = zext i8 %42 to i64
  %arrayidx59 = getelementptr inbounds i8, ptr %40, i64 %idxprom58
  %43 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %43 to i32
  %44 = load i32, ptr %BitsAvail, align 4
  %shl61 = shl i32 %conv60, %44
  %45 = load i32, ptr %BitAcc, align 4
  %or62 = or i32 %45, %shl61
  store i32 %or62, ptr %BitAcc, align 4
  %add63 = add nsw i32 %44, 8
  br label %if.end64

if.end64:                                         ; preds = %if.then51, %if.else56
  %storemerge100 = phi i32 [ %add63, %if.else56 ], [ 8, %if.then51 ]
  store i32 %storemerge100, ptr %BitsAvail, align 4
  br label %do.end66

do.end66:                                         ; preds = %for.cond44, %if.end64
  %46 = load i32, ptr %BitAcc, align 4
  %and67 = and i32 %46, 255
  %tobool.not = icmp eq i32 %and67, 0
  br i1 %tobool.not, label %do.body70, label %while.cond75

do.body70:                                        ; preds = %do.end66
  %47 = load i32, ptr %BitsAvail, align 4
  %sub71 = add nsw i32 %47, -8
  store i32 %sub71, ptr %BitsAvail, align 4
  %48 = load i32, ptr %BitAcc, align 4
  %shr72 = lshr i32 %48, 8
  store i32 %shr72, ptr %BitAcc, align 4
  br label %for.cond44

while.cond75:                                     ; preds = %do.end66, %do.body80
  %49 = load i32, ptr %BitAcc, align 4
  %and76 = and i32 %49, 1
  %cmp77 = icmp eq i32 %and76, 0
  br i1 %cmp77, label %do.body80, label %do.body84

do.body80:                                        ; preds = %while.cond75
  %50 = load i32, ptr %BitsAvail, align 4
  %sub81 = add nsw i32 %50, -1
  store i32 %sub81, ptr %BitsAvail, align 4
  %51 = load i32, ptr %BitAcc, align 4
  %shr82 = lshr i32 %51, 1
  store i32 %shr82, ptr %BitAcc, align 4
  br label %while.cond75, !llvm.loop !32

do.body84:                                        ; preds = %while.cond75
  %52 = load i32, ptr %BitsAvail, align 4
  %sub85 = add nsw i32 %52, -1
  store i32 %sub85, ptr %BitsAvail, align 4
  %53 = load i32, ptr %BitAcc, align 4
  %shr86 = lshr i32 %53, 1
  store i32 %shr86, ptr %BitAcc, align 4
  store i32 0, ptr %EOLcnt, align 4
  %54 = load i32, ptr %BitsAvail, align 4
  %cmp90 = icmp slt i32 %54, 1
  br i1 %cmp90, label %if.then92, label %do.end110

if.then92:                                        ; preds = %do.body84
  %55 = load ptr, ptr %cp, align 8
  %56 = load ptr, ptr %ep, align 8
  %cmp93.not = icmp ult ptr %55, %56
  br i1 %cmp93.not, label %if.else100, label %if.then95

if.then95:                                        ; preds = %if.then92
  %57 = load i32, ptr %BitsAvail, align 4
  %cmp96 = icmp eq i32 %57, 0
  br i1 %cmp96, label %do.body1103, label %if.end108

if.else100:                                       ; preds = %if.then92
  %58 = load ptr, ptr %bitmap, align 8
  %59 = load ptr, ptr %cp, align 8
  %incdec.ptr101 = getelementptr inbounds i8, ptr %59, i64 1
  store ptr %incdec.ptr101, ptr %cp, align 8
  %60 = load i8, ptr %59, align 1
  %idxprom102 = zext i8 %60 to i64
  %arrayidx103 = getelementptr inbounds i8, ptr %58, i64 %idxprom102
  %61 = load i8, ptr %arrayidx103, align 1
  %conv104 = zext i8 %61 to i32
  %62 = load i32, ptr %BitsAvail, align 4
  %shl105 = shl i32 %conv104, %62
  %63 = load i32, ptr %BitAcc, align 4
  %or106 = or i32 %63, %shl105
  store i32 %or106, ptr %BitAcc, align 4
  %add107 = add nsw i32 %62, 8
  br label %if.end108

if.end108:                                        ; preds = %if.then95, %if.else100
  %storemerge98 = phi i32 [ %add107, %if.else100 ], [ 1, %if.then95 ]
  store i32 %storemerge98, ptr %BitsAvail, align 4
  br label %do.end110

do.end110:                                        ; preds = %do.body84, %if.end108
  %64 = load i32, ptr %BitAcc, align 4
  %and111 = and i32 %64, 1
  store i32 %and111, ptr %is1D, align 4
  %65 = load i32, ptr %BitsAvail, align 4
  %sub113 = add nsw i32 %65, -1
  store i32 %sub113, ptr %BitsAvail, align 4
  %66 = load i32, ptr %BitAcc, align 4
  %shr114 = lshr i32 %66, 1
  store i32 %shr114, ptr %BitAcc, align 4
  %67 = load ptr, ptr %sp, align 8
  %refruns = getelementptr inbounds %struct.Fax3DecodeState, ptr %67, i64 0, i32 7
  %68 = load ptr, ptr %refruns, align 8
  %incdec.ptr116 = getelementptr inbounds i32, ptr %68, i64 1
  store ptr %incdec.ptr116, ptr %pb, align 8
  %69 = load i32, ptr %68, align 4
  store i32 %69, ptr %b1, align 4
  %70 = load i32, ptr %is1D, align 4
  %tobool117.not = icmp eq i32 %70, 0
  br i1 %tobool117.not, label %while.cond396, label %for.cond120

for.cond120:                                      ; preds = %do.body245, %do.end110
  br label %for.cond121

for.cond121:                                      ; preds = %sw.bb180, %for.cond120
  %71 = load i32, ptr %BitsAvail, align 4
  %cmp124 = icmp slt i32 %71, 12
  br i1 %cmp124, label %if.then126, label %do.end160

if.then126:                                       ; preds = %for.cond121
  %72 = load ptr, ptr %cp, align 8
  %73 = load ptr, ptr %ep, align 8
  %cmp127.not = icmp ult ptr %72, %73
  br i1 %cmp127.not, label %if.else134, label %if.then129

if.then129:                                       ; preds = %if.then126
  %74 = load i32, ptr %BitsAvail, align 4
  %cmp130 = icmp eq i32 %74, 0
  br i1 %cmp130, label %eof1d, label %if.end133

if.end133:                                        ; preds = %if.then129
  store i32 12, ptr %BitsAvail, align 4
  br label %do.end160

if.else134:                                       ; preds = %if.then126
  %75 = load ptr, ptr %bitmap, align 8
  %76 = load ptr, ptr %cp, align 8
  %incdec.ptr135 = getelementptr inbounds i8, ptr %76, i64 1
  store ptr %incdec.ptr135, ptr %cp, align 8
  %77 = load i8, ptr %76, align 1
  %idxprom136 = zext i8 %77 to i64
  %arrayidx137 = getelementptr inbounds i8, ptr %75, i64 %idxprom136
  %78 = load i8, ptr %arrayidx137, align 1
  %conv138 = zext i8 %78 to i32
  %79 = load i32, ptr %BitsAvail, align 4
  %shl139 = shl i32 %conv138, %79
  %80 = load i32, ptr %BitAcc, align 4
  %or140 = or i32 %80, %shl139
  store i32 %or140, ptr %BitAcc, align 4
  %add141 = add nsw i32 %79, 8
  store i32 %add141, ptr %BitsAvail, align 4
  %cmp142 = icmp slt i32 %79, 4
  br i1 %cmp142, label %if.then144, label %do.end160

if.then144:                                       ; preds = %if.else134
  %81 = load ptr, ptr %cp, align 8
  %82 = load ptr, ptr %ep, align 8
  %cmp145.not = icmp ult ptr %81, %82
  br i1 %cmp145.not, label %if.else148, label %if.end156

if.else148:                                       ; preds = %if.then144
  %83 = load ptr, ptr %bitmap, align 8
  %84 = load ptr, ptr %cp, align 8
  %incdec.ptr149 = getelementptr inbounds i8, ptr %84, i64 1
  store ptr %incdec.ptr149, ptr %cp, align 8
  %85 = load i8, ptr %84, align 1
  %idxprom150 = zext i8 %85 to i64
  %arrayidx151 = getelementptr inbounds i8, ptr %83, i64 %idxprom150
  %86 = load i8, ptr %arrayidx151, align 1
  %conv152 = zext i8 %86 to i32
  %87 = load i32, ptr %BitsAvail, align 4
  %shl153 = shl i32 %conv152, %87
  %88 = load i32, ptr %BitAcc, align 4
  %or154 = or i32 %88, %shl153
  store i32 %or154, ptr %BitAcc, align 4
  %add155 = add nsw i32 %87, 8
  br label %if.end156

if.end156:                                        ; preds = %if.then144, %if.else148
  %storemerge97 = phi i32 [ %add155, %if.else148 ], [ 12, %if.then144 ]
  store i32 %storemerge97, ptr %BitsAvail, align 4
  br label %do.end160

do.end160:                                        ; preds = %for.cond121, %if.else134, %if.end156, %if.end133
  %89 = load i32, ptr %BitAcc, align 4
  %and161 = and i32 %89, 4095
  %idx.ext162 = zext i32 %and161 to i64
  %add.ptr163 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %idx.ext162
  store ptr %add.ptr163, ptr %TabEnt, align 8
  %90 = load ptr, ptr %TabEnt, align 8
  %Width = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %90, i64 0, i32 1
  %91 = load i8, ptr %Width, align 1
  %conv165 = zext i8 %91 to i32
  %92 = load i32, ptr %BitsAvail, align 4
  %sub166 = sub nsw i32 %92, %conv165
  store i32 %sub166, ptr %BitsAvail, align 4
  %93 = load ptr, ptr %TabEnt, align 8
  %Width167 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %93, i64 0, i32 1
  %94 = load i8, ptr %Width167, align 1
  %conv168 = zext i8 %94 to i32
  %95 = load i32, ptr %BitAcc, align 4
  %shr169 = lshr i32 %95, %conv168
  store i32 %shr169, ptr %BitAcc, align 4
  %96 = load ptr, ptr %TabEnt, align 8
  %97 = load i8, ptr %96, align 4
  switch i8 %97, label %sw.default [
    i8 12, label %sw.bb
    i8 7, label %do.body174
    i8 9, label %sw.bb180
    i8 11, label %sw.bb180
  ]

sw.bb:                                            ; preds = %do.end160
  store i32 1, ptr %EOLcnt, align 4
  br label %do.body325

do.body174:                                       ; preds = %do.end160
  %98 = load i32, ptr %RunLength, align 4
  %99 = load ptr, ptr %TabEnt, align 8
  %Param = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %99, i64 0, i32 2
  %100 = load i32, ptr %Param, align 4
  %add175 = add i32 %98, %100
  %101 = load ptr, ptr %pa, align 8
  %incdec.ptr176 = getelementptr inbounds i32, ptr %101, i64 1
  store ptr %incdec.ptr176, ptr %pa, align 8
  store i32 %add175, ptr %101, align 4
  %102 = load ptr, ptr %TabEnt, align 8
  %Param177 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %102, i64 0, i32 2
  %103 = load i32, ptr %Param177, align 4
  %104 = load i32, ptr %a0, align 4
  %add178 = add i32 %104, %103
  store i32 %add178, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %105 = load i32, ptr %a0, align 4
  %106 = load i32, ptr %lastx, align 4
  %cmp185.not = icmp slt i32 %105, %106
  br i1 %cmp185.not, label %for.cond189, label %do.body325

sw.bb180:                                         ; preds = %do.end160, %do.end160
  %107 = load ptr, ptr %TabEnt, align 8
  %Param181 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %107, i64 0, i32 2
  %108 = load i32, ptr %Param181, align 4
  %109 = load i32, ptr %a0, align 4
  %add182 = add i32 %109, %108
  store i32 %add182, ptr %a0, align 4
  %110 = load i32, ptr %RunLength, align 4
  %add184 = add i32 %110, %108
  store i32 %add184, ptr %RunLength, align 4
  br label %for.cond121

sw.default:                                       ; preds = %do.end160
  %111 = load ptr, ptr %tif.addr, align 8
  %112 = load i32, ptr %a0, align 4
  %113 = load ptr, ptr %111, align 8
  %tif_row.i = getelementptr inbounds %struct.tiff, ptr %111, i64 0, i32 11
  %114 = load i32, ptr %tif_row.i, align 8
  %conv.i = zext i32 %112 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef nonnull @.str.34, ptr noundef %113, i32 noundef %114, i64 noundef %conv.i) #6
  br label %do.body325

for.cond189:                                      ; preds = %do.body174, %sw.bb252
  %115 = load i32, ptr %BitsAvail, align 4
  %cmp192 = icmp slt i32 %115, 13
  br i1 %cmp192, label %if.then194, label %do.end228

if.then194:                                       ; preds = %for.cond189
  %116 = load ptr, ptr %cp, align 8
  %117 = load ptr, ptr %ep, align 8
  %cmp195.not = icmp ult ptr %116, %117
  br i1 %cmp195.not, label %if.else202, label %if.then197

if.then197:                                       ; preds = %if.then194
  %118 = load i32, ptr %BitsAvail, align 4
  %cmp198 = icmp eq i32 %118, 0
  br i1 %cmp198, label %eof1d, label %if.end201

if.end201:                                        ; preds = %if.then197
  store i32 13, ptr %BitsAvail, align 4
  br label %do.end228

if.else202:                                       ; preds = %if.then194
  %119 = load ptr, ptr %bitmap, align 8
  %120 = load ptr, ptr %cp, align 8
  %incdec.ptr203 = getelementptr inbounds i8, ptr %120, i64 1
  store ptr %incdec.ptr203, ptr %cp, align 8
  %121 = load i8, ptr %120, align 1
  %idxprom204 = zext i8 %121 to i64
  %arrayidx205 = getelementptr inbounds i8, ptr %119, i64 %idxprom204
  %122 = load i8, ptr %arrayidx205, align 1
  %conv206 = zext i8 %122 to i32
  %123 = load i32, ptr %BitsAvail, align 4
  %shl207 = shl i32 %conv206, %123
  %124 = load i32, ptr %BitAcc, align 4
  %or208 = or i32 %124, %shl207
  store i32 %or208, ptr %BitAcc, align 4
  %add209 = add nsw i32 %123, 8
  store i32 %add209, ptr %BitsAvail, align 4
  %cmp210 = icmp slt i32 %123, 5
  br i1 %cmp210, label %if.then212, label %do.end228

if.then212:                                       ; preds = %if.else202
  %125 = load ptr, ptr %cp, align 8
  %126 = load ptr, ptr %ep, align 8
  %cmp213.not = icmp ult ptr %125, %126
  br i1 %cmp213.not, label %if.else216, label %if.end224

if.else216:                                       ; preds = %if.then212
  %127 = load ptr, ptr %bitmap, align 8
  %128 = load ptr, ptr %cp, align 8
  %incdec.ptr217 = getelementptr inbounds i8, ptr %128, i64 1
  store ptr %incdec.ptr217, ptr %cp, align 8
  %129 = load i8, ptr %128, align 1
  %idxprom218 = zext i8 %129 to i64
  %arrayidx219 = getelementptr inbounds i8, ptr %127, i64 %idxprom218
  %130 = load i8, ptr %arrayidx219, align 1
  %conv220 = zext i8 %130 to i32
  %131 = load i32, ptr %BitsAvail, align 4
  %shl221 = shl i32 %conv220, %131
  %132 = load i32, ptr %BitAcc, align 4
  %or222 = or i32 %132, %shl221
  store i32 %or222, ptr %BitAcc, align 4
  %add223 = add nsw i32 %131, 8
  br label %if.end224

if.end224:                                        ; preds = %if.then212, %if.else216
  %storemerge95 = phi i32 [ %add223, %if.else216 ], [ 13, %if.then212 ]
  store i32 %storemerge95, ptr %BitsAvail, align 4
  br label %do.end228

do.end228:                                        ; preds = %for.cond189, %if.else202, %if.end224, %if.end201
  %133 = load i32, ptr %BitAcc, align 4
  %and229 = and i32 %133, 8191
  %idx.ext230 = zext i32 %and229 to i64
  %add.ptr231 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %idx.ext230
  store ptr %add.ptr231, ptr %TabEnt, align 8
  %134 = load ptr, ptr %TabEnt, align 8
  %Width233 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %134, i64 0, i32 1
  %135 = load i8, ptr %Width233, align 1
  %conv234 = zext i8 %135 to i32
  %136 = load i32, ptr %BitsAvail, align 4
  %sub235 = sub nsw i32 %136, %conv234
  store i32 %sub235, ptr %BitsAvail, align 4
  %137 = load ptr, ptr %TabEnt, align 8
  %Width236 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %137, i64 0, i32 1
  %138 = load i8, ptr %Width236, align 1
  %conv237 = zext i8 %138 to i32
  %139 = load i32, ptr %BitAcc, align 4
  %shr238 = lshr i32 %139, %conv237
  store i32 %shr238, ptr %BitAcc, align 4
  %140 = load ptr, ptr %TabEnt, align 8
  %141 = load i8, ptr %140, align 4
  switch i8 %141, label %sw.default257 [
    i8 12, label %sw.bb243
    i8 8, label %do.body245
    i8 10, label %sw.bb252
    i8 11, label %sw.bb252
  ]

sw.bb243:                                         ; preds = %do.end228
  store i32 1, ptr %EOLcnt, align 4
  br label %do.body325

do.body245:                                       ; preds = %do.end228
  %142 = load i32, ptr %RunLength, align 4
  %143 = load ptr, ptr %TabEnt, align 8
  %Param246 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %143, i64 0, i32 2
  %144 = load i32, ptr %Param246, align 4
  %add247 = add i32 %142, %144
  %145 = load ptr, ptr %pa, align 8
  %incdec.ptr248 = getelementptr inbounds i32, ptr %145, i64 1
  store ptr %incdec.ptr248, ptr %pa, align 8
  store i32 %add247, ptr %145, align 4
  %146 = load ptr, ptr %TabEnt, align 8
  %Param249 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %146, i64 0, i32 2
  %147 = load i32, ptr %Param249, align 4
  %148 = load i32, ptr %a0, align 4
  %add250 = add i32 %148, %147
  store i32 %add250, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %149 = load i32, ptr %a0, align 4
  %150 = load i32, ptr %lastx, align 4
  %cmp259.not = icmp slt i32 %149, %150
  br i1 %cmp259.not, label %for.cond120, label %do.body325

sw.bb252:                                         ; preds = %do.end228, %do.end228
  %151 = load ptr, ptr %TabEnt, align 8
  %Param253 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %151, i64 0, i32 2
  %152 = load i32, ptr %Param253, align 4
  %153 = load i32, ptr %a0, align 4
  %add254 = add i32 %153, %152
  store i32 %add254, ptr %a0, align 4
  %154 = load i32, ptr %RunLength, align 4
  %add256 = add i32 %154, %152
  store i32 %add256, ptr %RunLength, align 4
  br label %for.cond189

sw.default257:                                    ; preds = %do.end228
  %155 = load ptr, ptr %tif.addr, align 8
  %156 = load i32, ptr %a0, align 4
  %157 = load ptr, ptr %155, align 8
  %tif_row.i4 = getelementptr inbounds %struct.tiff, ptr %155, i64 0, i32 11
  %158 = load i32, ptr %tif_row.i4, align 8
  %conv.i5 = zext i32 %156 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef nonnull @.str.34, ptr noundef %157, i32 noundef %158, i64 noundef %conv.i5) #6
  br label %do.body325

eof1d:                                            ; preds = %if.then197, %if.then129
  %159 = load ptr, ptr %tif.addr, align 8
  %160 = load i32, ptr %a0, align 4
  %161 = load ptr, ptr %159, align 8
  %tif_row.i9 = getelementptr inbounds %struct.tiff, ptr %159, i64 0, i32 11
  %162 = load i32, ptr %tif_row.i9, align 8
  %conv.i10 = zext i32 %160 to i64
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef nonnull @.str.35, ptr noundef %161, i32 noundef %162, i64 noundef %conv.i10) #6
  %163 = load i32, ptr %RunLength, align 4
  %tobool264.not = icmp eq i32 %163, 0
  br i1 %tobool264.not, label %if.end271, label %do.body266

do.body266:                                       ; preds = %eof1d
  %164 = load i32, ptr %RunLength, align 4
  %165 = load ptr, ptr %pa, align 8
  %incdec.ptr268 = getelementptr inbounds i32, ptr %165, i64 1
  store ptr %incdec.ptr268, ptr %pa, align 8
  store i32 %164, ptr %165, align 4
  store i32 0, ptr %RunLength, align 4
  br label %if.end271

if.end271:                                        ; preds = %do.body266, %eof1d
  %166 = load i32, ptr %a0, align 4
  %167 = load i32, ptr %lastx, align 4
  %cmp272.not = icmp eq i32 %166, %167
  br i1 %cmp272.not, label %EOF2Da, label %if.then274

if.then274:                                       ; preds = %if.end271
  %168 = load ptr, ptr %tif.addr, align 8
  %169 = load i32, ptr %a0, align 4
  %170 = load i32, ptr %lastx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a0.addr.i13)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lastx.addr.i)
  store i32 %169, ptr %a0.addr.i13, align 4
  store i32 %170, ptr %lastx.addr.i, align 4
  %171 = load ptr, ptr %168, align 8
  %cmp.i = icmp ult i32 %169, %170
  %cond.i = select i1 %cmp.i, ptr @.str.37, ptr @.str.38
  %tif_row.i14 = getelementptr inbounds %struct.tiff, ptr %168, i64 0, i32 11
  %172 = load i32, ptr %tif_row.i14, align 8
  %173 = load i32, ptr %a0.addr.i13, align 4
  %conv.i15 = zext i32 %173 to i64
  %174 = load i32, ptr %lastx.addr.i, align 4
  %conv1.i = zext i32 %174 to i64
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef nonnull @.str.36, ptr noundef %171, ptr noundef nonnull %cond.i, i32 noundef %172, i64 noundef %conv.i15, i64 noundef %conv1.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a0.addr.i13)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lastx.addr.i)
  br label %while.cond275

while.cond275:                                    ; preds = %while.body280, %if.then274
  %175 = load i32, ptr %a0, align 4
  %176 = load i32, ptr %lastx, align 4
  %cmp276 = icmp sgt i32 %175, %176
  %177 = load ptr, ptr %pa, align 8
  %178 = load ptr, ptr %thisrun, align 8
  %cmp278 = icmp ugt ptr %177, %178
  %179 = select i1 %cmp276, i1 %cmp278, i1 false
  br i1 %179, label %while.body280, label %while.end283

while.body280:                                    ; preds = %while.cond275
  %180 = load ptr, ptr %pa, align 8
  %incdec.ptr281 = getelementptr inbounds i32, ptr %180, i64 -1
  store ptr %incdec.ptr281, ptr %pa, align 8
  %181 = load i32, ptr %incdec.ptr281, align 4
  %182 = load i32, ptr %a0, align 4
  %sub282 = sub i32 %182, %181
  store i32 %sub282, ptr %a0, align 4
  br label %while.cond275, !llvm.loop !33

while.end283:                                     ; preds = %while.cond275
  %183 = load i32, ptr %a0, align 4
  %184 = load i32, ptr %lastx, align 4
  %cmp284 = icmp slt i32 %183, %184
  br i1 %cmp284, label %if.then286, label %if.else307

if.then286:                                       ; preds = %while.end283
  %185 = load i32, ptr %a0, align 4
  %cmp287 = icmp slt i32 %185, 0
  br i1 %cmp287, label %if.then289, label %if.end290

if.then289:                                       ; preds = %if.then286
  store i32 0, ptr %a0, align 4
  br label %if.end290

if.end290:                                        ; preds = %if.then289, %if.then286
  %186 = load ptr, ptr %pa, align 8
  %187 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %186 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %187 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %188 = and i64 %sub.ptr.sub, 4
  %tobool292.not = icmp eq i64 %188, 0
  br i1 %tobool292.not, label %do.body300, label %do.body294

do.body294:                                       ; preds = %if.end290
  %189 = load i32, ptr %RunLength, align 4
  %190 = load ptr, ptr %pa, align 8
  %incdec.ptr296 = getelementptr inbounds i32, ptr %190, i64 1
  store ptr %incdec.ptr296, ptr %pa, align 8
  store i32 %189, ptr %190, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.body300

do.body300:                                       ; preds = %if.end290, %do.body294
  %191 = load i32, ptr %RunLength, align 4
  %192 = load i32, ptr %lastx, align 4
  %193 = load i32, ptr %a0, align 4
  %sub301 = sub nsw i32 %192, %193
  %add302 = add nsw i32 %191, %sub301
  %194 = load ptr, ptr %pa, align 8
  %incdec.ptr303 = getelementptr inbounds i32, ptr %194, i64 1
  store ptr %incdec.ptr303, ptr %pa, align 8
  store i32 %add302, ptr %194, align 4
  %195 = load i32, ptr %lastx, align 4
  store i32 %195, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %EOF2Da

if.else307:                                       ; preds = %while.end283
  %196 = load i32, ptr %a0, align 4
  %197 = load i32, ptr %lastx, align 4
  %cmp308 = icmp sgt i32 %196, %197
  br i1 %cmp308, label %do.body311, label %EOF2Da

do.body311:                                       ; preds = %if.else307
  %198 = load i32, ptr %RunLength, align 4
  %199 = load i32, ptr %lastx, align 4
  %add312 = add nsw i32 %198, %199
  %200 = load ptr, ptr %pa, align 8
  %incdec.ptr313 = getelementptr inbounds i32, ptr %200, i64 1
  store ptr %incdec.ptr313, ptr %pa, align 8
  store i32 %add312, ptr %200, align 4
  %201 = load i32, ptr %a0, align 4
  %add314 = add nsw i32 %201, %199
  store i32 %add314, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %202 = load i32, ptr %RunLength, align 4
  %203 = load ptr, ptr %pa, align 8
  %incdec.ptr318 = getelementptr inbounds i32, ptr %203, i64 1
  store ptr %incdec.ptr318, ptr %pa, align 8
  store i32 %202, ptr %203, align 4
  store i32 0, ptr %RunLength, align 4
  br label %EOF2Da

do.body325:                                       ; preds = %sw.bb, %sw.default, %sw.bb243, %sw.default257, %do.body174, %do.body245
  %204 = load i32, ptr %RunLength, align 4
  %tobool326.not = icmp eq i32 %204, 0
  br i1 %tobool326.not, label %if.end333, label %do.body328

do.body328:                                       ; preds = %do.body325
  %205 = load i32, ptr %RunLength, align 4
  %206 = load ptr, ptr %pa, align 8
  %incdec.ptr330 = getelementptr inbounds i32, ptr %206, i64 1
  store ptr %incdec.ptr330, ptr %pa, align 8
  store i32 %205, ptr %206, align 4
  store i32 0, ptr %RunLength, align 4
  br label %if.end333

if.end333:                                        ; preds = %do.body328, %do.body325
  %207 = load i32, ptr %a0, align 4
  %208 = load i32, ptr %lastx, align 4
  %cmp334.not = icmp eq i32 %207, %208
  br i1 %cmp334.not, label %if.end1083, label %if.then336

if.then336:                                       ; preds = %if.end333
  %209 = load ptr, ptr %tif.addr, align 8
  %210 = load i32, ptr %a0, align 4
  %211 = load i32, ptr %lastx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a0.addr.i18)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lastx.addr.i19)
  store i32 %210, ptr %a0.addr.i18, align 4
  store i32 %211, ptr %lastx.addr.i19, align 4
  %212 = load ptr, ptr %209, align 8
  %cmp.i20 = icmp ult i32 %210, %211
  %cond.i21 = select i1 %cmp.i20, ptr @.str.37, ptr @.str.38
  %tif_row.i22 = getelementptr inbounds %struct.tiff, ptr %209, i64 0, i32 11
  %213 = load i32, ptr %tif_row.i22, align 8
  %214 = load i32, ptr %a0.addr.i18, align 4
  %conv.i23 = zext i32 %214 to i64
  %215 = load i32, ptr %lastx.addr.i19, align 4
  %conv1.i24 = zext i32 %215 to i64
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef nonnull @.str.36, ptr noundef %212, ptr noundef nonnull %cond.i21, i32 noundef %213, i64 noundef %conv.i23, i64 noundef %conv1.i24) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a0.addr.i18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lastx.addr.i19)
  br label %while.cond337

while.cond337:                                    ; preds = %while.body344, %if.then336
  %216 = load i32, ptr %a0, align 4
  %217 = load i32, ptr %lastx, align 4
  %cmp338 = icmp sgt i32 %216, %217
  %218 = load ptr, ptr %pa, align 8
  %219 = load ptr, ptr %thisrun, align 8
  %cmp341 = icmp ugt ptr %218, %219
  %220 = select i1 %cmp338, i1 %cmp341, i1 false
  br i1 %220, label %while.body344, label %while.end347

while.body344:                                    ; preds = %while.cond337
  %221 = load ptr, ptr %pa, align 8
  %incdec.ptr345 = getelementptr inbounds i32, ptr %221, i64 -1
  store ptr %incdec.ptr345, ptr %pa, align 8
  %222 = load i32, ptr %incdec.ptr345, align 4
  %223 = load i32, ptr %a0, align 4
  %sub346 = sub i32 %223, %222
  store i32 %sub346, ptr %a0, align 4
  br label %while.cond337, !llvm.loop !34

while.end347:                                     ; preds = %while.cond337
  %224 = load i32, ptr %a0, align 4
  %225 = load i32, ptr %lastx, align 4
  %cmp348 = icmp slt i32 %224, %225
  br i1 %cmp348, label %if.then350, label %if.else375

if.then350:                                       ; preds = %while.end347
  %226 = load i32, ptr %a0, align 4
  %cmp351 = icmp slt i32 %226, 0
  br i1 %cmp351, label %if.then353, label %if.end354

if.then353:                                       ; preds = %if.then350
  store i32 0, ptr %a0, align 4
  br label %if.end354

if.end354:                                        ; preds = %if.then353, %if.then350
  %227 = load ptr, ptr %pa, align 8
  %228 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast355 = ptrtoint ptr %227 to i64
  %sub.ptr.rhs.cast356 = ptrtoint ptr %228 to i64
  %sub.ptr.sub357 = sub i64 %sub.ptr.lhs.cast355, %sub.ptr.rhs.cast356
  %229 = and i64 %sub.ptr.sub357, 4
  %tobool360.not = icmp eq i64 %229, 0
  br i1 %tobool360.not, label %do.body368, label %do.body362

do.body362:                                       ; preds = %if.end354
  %230 = load i32, ptr %RunLength, align 4
  %231 = load ptr, ptr %pa, align 8
  %incdec.ptr364 = getelementptr inbounds i32, ptr %231, i64 1
  store ptr %incdec.ptr364, ptr %pa, align 8
  store i32 %230, ptr %231, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.body368

do.body368:                                       ; preds = %if.end354, %do.body362
  %232 = load i32, ptr %RunLength, align 4
  %233 = load i32, ptr %lastx, align 4
  %234 = load i32, ptr %a0, align 4
  %sub369 = sub nsw i32 %233, %234
  %add370 = add nsw i32 %232, %sub369
  %235 = load ptr, ptr %pa, align 8
  %incdec.ptr371 = getelementptr inbounds i32, ptr %235, i64 1
  store ptr %incdec.ptr371, ptr %pa, align 8
  store i32 %add370, ptr %235, align 4
  %236 = load i32, ptr %lastx, align 4
  store i32 %236, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %if.end1083

if.else375:                                       ; preds = %while.end347
  %237 = load i32, ptr %a0, align 4
  %238 = load i32, ptr %lastx, align 4
  %cmp376 = icmp sgt i32 %237, %238
  br i1 %cmp376, label %do.body379, label %if.end1083

do.body379:                                       ; preds = %if.else375
  %239 = load i32, ptr %RunLength, align 4
  %240 = load i32, ptr %lastx, align 4
  %add380 = add nsw i32 %239, %240
  %241 = load ptr, ptr %pa, align 8
  %incdec.ptr381 = getelementptr inbounds i32, ptr %241, i64 1
  store ptr %incdec.ptr381, ptr %pa, align 8
  store i32 %add380, ptr %241, align 4
  %242 = load i32, ptr %a0, align 4
  %add382 = add nsw i32 %242, %240
  store i32 %add382, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %243 = load i32, ptr %RunLength, align 4
  %244 = load ptr, ptr %pa, align 8
  %incdec.ptr386 = getelementptr inbounds i32, ptr %244, i64 1
  store ptr %incdec.ptr386, ptr %pa, align 8
  store i32 %243, ptr %244, align 4
  store i32 0, ptr %RunLength, align 4
  br label %if.end1083

while.cond396:                                    ; preds = %do.end110, %sw.epilog969
  %245 = load i32, ptr %a0, align 4
  %246 = load i32, ptr %lastx, align 4
  %cmp397 = icmp slt i32 %245, %246
  br i1 %cmp397, label %do.body401, label %while.end970

do.body401:                                       ; preds = %while.cond396
  %247 = load i32, ptr %BitsAvail, align 4
  %cmp402 = icmp slt i32 %247, 7
  br i1 %cmp402, label %if.then404, label %do.end422

if.then404:                                       ; preds = %do.body401
  %248 = load ptr, ptr %cp, align 8
  %249 = load ptr, ptr %ep, align 8
  %cmp405.not = icmp ult ptr %248, %249
  br i1 %cmp405.not, label %if.else412, label %if.then407

if.then407:                                       ; preds = %if.then404
  %250 = load i32, ptr %BitsAvail, align 4
  %cmp408 = icmp eq i32 %250, 0
  br i1 %cmp408, label %eof2d, label %if.end420

if.else412:                                       ; preds = %if.then404
  %251 = load ptr, ptr %bitmap, align 8
  %252 = load ptr, ptr %cp, align 8
  %incdec.ptr413 = getelementptr inbounds i8, ptr %252, i64 1
  store ptr %incdec.ptr413, ptr %cp, align 8
  %253 = load i8, ptr %252, align 1
  %idxprom414 = zext i8 %253 to i64
  %arrayidx415 = getelementptr inbounds i8, ptr %251, i64 %idxprom414
  %254 = load i8, ptr %arrayidx415, align 1
  %conv416 = zext i8 %254 to i32
  %255 = load i32, ptr %BitsAvail, align 4
  %shl417 = shl i32 %conv416, %255
  %256 = load i32, ptr %BitAcc, align 4
  %or418 = or i32 %256, %shl417
  store i32 %or418, ptr %BitAcc, align 4
  %add419 = add nsw i32 %255, 8
  br label %if.end420

if.end420:                                        ; preds = %if.then407, %if.else412
  %storemerge93 = phi i32 [ %add419, %if.else412 ], [ 7, %if.then407 ]
  store i32 %storemerge93, ptr %BitsAvail, align 4
  br label %do.end422

do.end422:                                        ; preds = %do.body401, %if.end420
  %257 = load i32, ptr %BitAcc, align 4
  %and423 = and i32 %257, 127
  %idx.ext424 = zext i32 %and423 to i64
  %add.ptr425 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxMainTable, i64 %idx.ext424
  store ptr %add.ptr425, ptr %TabEnt, align 8
  %258 = load ptr, ptr %TabEnt, align 8
  %Width427 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %258, i64 0, i32 1
  %259 = load i8, ptr %Width427, align 1
  %conv428 = zext i8 %259 to i32
  %260 = load i32, ptr %BitsAvail, align 4
  %sub429 = sub nsw i32 %260, %conv428
  store i32 %sub429, ptr %BitsAvail, align 4
  %261 = load ptr, ptr %TabEnt, align 8
  %Width430 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %261, i64 0, i32 1
  %262 = load i8, ptr %Width430, align 1
  %conv431 = zext i8 %262 to i32
  %263 = load i32, ptr %BitAcc, align 4
  %shr432 = lshr i32 %263, %conv431
  store i32 %shr432, ptr %BitAcc, align 4
  %264 = load ptr, ptr %TabEnt, align 8
  %265 = load i8, ptr %264, align 4
  switch i8 %265, label %badMain2d [
    i8 1, label %do.body438
    i8 2, label %sw.bb464
    i8 3, label %do.body771
    i8 4, label %do.body801
    i8 5, label %do.body835
    i8 6, label %sw.bb868
    i8 12, label %sw.bb871
  ]

do.body438:                                       ; preds = %do.end422
  %266 = load ptr, ptr %pa, align 8
  %267 = load ptr, ptr %thisrun, align 8
  %cmp439.not = icmp eq ptr %266, %267
  br i1 %cmp439.not, label %do.end457, label %while.cond442

while.cond442:                                    ; preds = %do.body438, %while.body449
  %268 = load i32, ptr %b1, align 4
  %269 = load i32, ptr %a0, align 4
  %cmp443.not = icmp sgt i32 %268, %269
  %270 = load i32, ptr %b1, align 4
  %271 = load i32, ptr %lastx, align 4
  %cmp446 = icmp slt i32 %270, %271
  %272 = select i1 %cmp443.not, i1 false, i1 %cmp446
  br i1 %272, label %while.body449, label %do.end457

while.body449:                                    ; preds = %while.cond442
  %273 = load ptr, ptr %pb, align 8
  %274 = load i32, ptr %273, align 4
  %arrayidx451 = getelementptr inbounds i32, ptr %273, i64 1
  %275 = load i32, ptr %arrayidx451, align 4
  %add452 = add i32 %274, %275
  %276 = load i32, ptr %b1, align 4
  %add453 = add i32 %276, %add452
  store i32 %add453, ptr %b1, align 4
  %277 = load ptr, ptr %pb, align 8
  %add.ptr454 = getelementptr inbounds i32, ptr %277, i64 2
  store ptr %add.ptr454, ptr %pb, align 8
  br label %while.cond442, !llvm.loop !35

do.end457:                                        ; preds = %do.body438, %while.cond442
  %278 = load ptr, ptr %pb, align 8
  %incdec.ptr458 = getelementptr inbounds i32, ptr %278, i64 1
  store ptr %incdec.ptr458, ptr %pb, align 8
  %279 = load i32, ptr %278, align 4
  %280 = load i32, ptr %b1, align 4
  %add459 = add i32 %280, %279
  store i32 %add459, ptr %b1, align 4
  %281 = load i32, ptr %a0, align 4
  %sub460 = sub nsw i32 %add459, %281
  %282 = load i32, ptr %RunLength, align 4
  %add461 = add nsw i32 %282, %sub460
  store i32 %add461, ptr %RunLength, align 4
  store i32 %add459, ptr %a0, align 4
  %283 = load ptr, ptr %pb, align 8
  %incdec.ptr462 = getelementptr inbounds i32, ptr %283, i64 1
  store ptr %incdec.ptr462, ptr %pb, align 8
  %284 = load i32, ptr %283, align 4
  %285 = load i32, ptr %b1, align 4
  %add463 = add i32 %285, %284
  store i32 %add463, ptr %b1, align 4
  br label %sw.epilog969

sw.bb464:                                         ; preds = %do.end422
  %286 = load ptr, ptr %pa, align 8
  %287 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast465 = ptrtoint ptr %286 to i64
  %sub.ptr.rhs.cast466 = ptrtoint ptr %287 to i64
  %sub.ptr.sub467 = sub i64 %sub.ptr.lhs.cast465, %sub.ptr.rhs.cast466
  %288 = and i64 %sub.ptr.sub467, 4
  %tobool470.not = icmp eq i64 %288, 0
  br i1 %tobool470.not, label %for.cond611, label %for.cond472

for.cond472:                                      ; preds = %sw.bb464, %sw.bb534
  %289 = load i32, ptr %BitsAvail, align 4
  %cmp475 = icmp slt i32 %289, 13
  br i1 %cmp475, label %if.then477, label %do.end511

if.then477:                                       ; preds = %for.cond472
  %290 = load ptr, ptr %cp, align 8
  %291 = load ptr, ptr %ep, align 8
  %cmp478.not = icmp ult ptr %290, %291
  br i1 %cmp478.not, label %if.else485, label %if.then480

if.then480:                                       ; preds = %if.then477
  %292 = load i32, ptr %BitsAvail, align 4
  %cmp481 = icmp eq i32 %292, 0
  br i1 %cmp481, label %eof2d, label %if.end484

if.end484:                                        ; preds = %if.then480
  store i32 13, ptr %BitsAvail, align 4
  br label %do.end511

if.else485:                                       ; preds = %if.then477
  %293 = load ptr, ptr %bitmap, align 8
  %294 = load ptr, ptr %cp, align 8
  %incdec.ptr486 = getelementptr inbounds i8, ptr %294, i64 1
  store ptr %incdec.ptr486, ptr %cp, align 8
  %295 = load i8, ptr %294, align 1
  %idxprom487 = zext i8 %295 to i64
  %arrayidx488 = getelementptr inbounds i8, ptr %293, i64 %idxprom487
  %296 = load i8, ptr %arrayidx488, align 1
  %conv489 = zext i8 %296 to i32
  %297 = load i32, ptr %BitsAvail, align 4
  %shl490 = shl i32 %conv489, %297
  %298 = load i32, ptr %BitAcc, align 4
  %or491 = or i32 %298, %shl490
  store i32 %or491, ptr %BitAcc, align 4
  %add492 = add nsw i32 %297, 8
  store i32 %add492, ptr %BitsAvail, align 4
  %cmp493 = icmp slt i32 %297, 5
  br i1 %cmp493, label %if.then495, label %do.end511

if.then495:                                       ; preds = %if.else485
  %299 = load ptr, ptr %cp, align 8
  %300 = load ptr, ptr %ep, align 8
  %cmp496.not = icmp ult ptr %299, %300
  br i1 %cmp496.not, label %if.else499, label %if.end507

if.else499:                                       ; preds = %if.then495
  %301 = load ptr, ptr %bitmap, align 8
  %302 = load ptr, ptr %cp, align 8
  %incdec.ptr500 = getelementptr inbounds i8, ptr %302, i64 1
  store ptr %incdec.ptr500, ptr %cp, align 8
  %303 = load i8, ptr %302, align 1
  %idxprom501 = zext i8 %303 to i64
  %arrayidx502 = getelementptr inbounds i8, ptr %301, i64 %idxprom501
  %304 = load i8, ptr %arrayidx502, align 1
  %conv503 = zext i8 %304 to i32
  %305 = load i32, ptr %BitsAvail, align 4
  %shl504 = shl i32 %conv503, %305
  %306 = load i32, ptr %BitAcc, align 4
  %or505 = or i32 %306, %shl504
  store i32 %or505, ptr %BitAcc, align 4
  %add506 = add nsw i32 %305, 8
  br label %if.end507

if.end507:                                        ; preds = %if.then495, %if.else499
  %storemerge92 = phi i32 [ %add506, %if.else499 ], [ 13, %if.then495 ]
  store i32 %storemerge92, ptr %BitsAvail, align 4
  br label %do.end511

do.end511:                                        ; preds = %for.cond472, %if.else485, %if.end507, %if.end484
  %307 = load i32, ptr %BitAcc, align 4
  %and512 = and i32 %307, 8191
  %idx.ext513 = zext i32 %and512 to i64
  %add.ptr514 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %idx.ext513
  store ptr %add.ptr514, ptr %TabEnt, align 8
  %308 = load ptr, ptr %TabEnt, align 8
  %Width516 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %308, i64 0, i32 1
  %309 = load i8, ptr %Width516, align 1
  %conv517 = zext i8 %309 to i32
  %310 = load i32, ptr %BitsAvail, align 4
  %sub518 = sub nsw i32 %310, %conv517
  store i32 %sub518, ptr %BitsAvail, align 4
  %311 = load ptr, ptr %TabEnt, align 8
  %Width519 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %311, i64 0, i32 1
  %312 = load i8, ptr %Width519, align 1
  %conv520 = zext i8 %312 to i32
  %313 = load i32, ptr %BitAcc, align 4
  %shr521 = lshr i32 %313, %conv520
  store i32 %shr521, ptr %BitAcc, align 4
  %314 = load ptr, ptr %TabEnt, align 8
  %315 = load i8, ptr %314, align 4
  switch i8 %315, label %badBlack2d [
    i8 8, label %do.body527
    i8 10, label %sw.bb534
    i8 11, label %sw.bb534
  ]

do.body527:                                       ; preds = %do.end511
  %316 = load i32, ptr %RunLength, align 4
  %317 = load ptr, ptr %TabEnt, align 8
  %Param528 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %317, i64 0, i32 2
  %318 = load i32, ptr %Param528, align 4
  %add529 = add i32 %316, %318
  %319 = load ptr, ptr %pa, align 8
  %incdec.ptr530 = getelementptr inbounds i32, ptr %319, i64 1
  store ptr %incdec.ptr530, ptr %pa, align 8
  store i32 %add529, ptr %319, align 4
  %320 = load ptr, ptr %TabEnt, align 8
  %Param531 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %320, i64 0, i32 2
  %321 = load i32, ptr %Param531, align 4
  %322 = load i32, ptr %a0, align 4
  %add532 = add i32 %322, %321
  store i32 %add532, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %for.cond541

sw.bb534:                                         ; preds = %do.end511, %do.end511
  %323 = load ptr, ptr %TabEnt, align 8
  %Param535 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %323, i64 0, i32 2
  %324 = load i32, ptr %Param535, align 4
  %325 = load i32, ptr %a0, align 4
  %add536 = add i32 %325, %324
  store i32 %add536, ptr %a0, align 4
  %326 = load i32, ptr %RunLength, align 4
  %add538 = add i32 %326, %324
  store i32 %add538, ptr %RunLength, align 4
  br label %for.cond472

for.cond541:                                      ; preds = %sw.bb603, %do.body527
  %327 = load i32, ptr %BitsAvail, align 4
  %cmp544 = icmp slt i32 %327, 12
  br i1 %cmp544, label %if.then546, label %do.end580

if.then546:                                       ; preds = %for.cond541
  %328 = load ptr, ptr %cp, align 8
  %329 = load ptr, ptr %ep, align 8
  %cmp547.not = icmp ult ptr %328, %329
  br i1 %cmp547.not, label %if.else554, label %if.then549

if.then549:                                       ; preds = %if.then546
  %330 = load i32, ptr %BitsAvail, align 4
  %cmp550 = icmp eq i32 %330, 0
  br i1 %cmp550, label %eof2d, label %if.end553

if.end553:                                        ; preds = %if.then549
  store i32 12, ptr %BitsAvail, align 4
  br label %do.end580

if.else554:                                       ; preds = %if.then546
  %331 = load ptr, ptr %bitmap, align 8
  %332 = load ptr, ptr %cp, align 8
  %incdec.ptr555 = getelementptr inbounds i8, ptr %332, i64 1
  store ptr %incdec.ptr555, ptr %cp, align 8
  %333 = load i8, ptr %332, align 1
  %idxprom556 = zext i8 %333 to i64
  %arrayidx557 = getelementptr inbounds i8, ptr %331, i64 %idxprom556
  %334 = load i8, ptr %arrayidx557, align 1
  %conv558 = zext i8 %334 to i32
  %335 = load i32, ptr %BitsAvail, align 4
  %shl559 = shl i32 %conv558, %335
  %336 = load i32, ptr %BitAcc, align 4
  %or560 = or i32 %336, %shl559
  store i32 %or560, ptr %BitAcc, align 4
  %add561 = add nsw i32 %335, 8
  store i32 %add561, ptr %BitsAvail, align 4
  %cmp562 = icmp slt i32 %335, 4
  br i1 %cmp562, label %if.then564, label %do.end580

if.then564:                                       ; preds = %if.else554
  %337 = load ptr, ptr %cp, align 8
  %338 = load ptr, ptr %ep, align 8
  %cmp565.not = icmp ult ptr %337, %338
  br i1 %cmp565.not, label %if.else568, label %if.end576

if.else568:                                       ; preds = %if.then564
  %339 = load ptr, ptr %bitmap, align 8
  %340 = load ptr, ptr %cp, align 8
  %incdec.ptr569 = getelementptr inbounds i8, ptr %340, i64 1
  store ptr %incdec.ptr569, ptr %cp, align 8
  %341 = load i8, ptr %340, align 1
  %idxprom570 = zext i8 %341 to i64
  %arrayidx571 = getelementptr inbounds i8, ptr %339, i64 %idxprom570
  %342 = load i8, ptr %arrayidx571, align 1
  %conv572 = zext i8 %342 to i32
  %343 = load i32, ptr %BitsAvail, align 4
  %shl573 = shl i32 %conv572, %343
  %344 = load i32, ptr %BitAcc, align 4
  %or574 = or i32 %344, %shl573
  store i32 %or574, ptr %BitAcc, align 4
  %add575 = add nsw i32 %343, 8
  br label %if.end576

if.end576:                                        ; preds = %if.then564, %if.else568
  %storemerge91 = phi i32 [ %add575, %if.else568 ], [ 12, %if.then564 ]
  store i32 %storemerge91, ptr %BitsAvail, align 4
  br label %do.end580

do.end580:                                        ; preds = %for.cond541, %if.else554, %if.end576, %if.end553
  %345 = load i32, ptr %BitAcc, align 4
  %and581 = and i32 %345, 4095
  %idx.ext582 = zext i32 %and581 to i64
  %add.ptr583 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %idx.ext582
  store ptr %add.ptr583, ptr %TabEnt, align 8
  %346 = load ptr, ptr %TabEnt, align 8
  %Width585 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %346, i64 0, i32 1
  %347 = load i8, ptr %Width585, align 1
  %conv586 = zext i8 %347 to i32
  %348 = load i32, ptr %BitsAvail, align 4
  %sub587 = sub nsw i32 %348, %conv586
  store i32 %sub587, ptr %BitsAvail, align 4
  %349 = load ptr, ptr %TabEnt, align 8
  %Width588 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %349, i64 0, i32 1
  %350 = load i8, ptr %Width588, align 1
  %conv589 = zext i8 %350 to i32
  %351 = load i32, ptr %BitAcc, align 4
  %shr590 = lshr i32 %351, %conv589
  store i32 %shr590, ptr %BitAcc, align 4
  %352 = load ptr, ptr %TabEnt, align 8
  %353 = load i8, ptr %352, align 4
  switch i8 %353, label %badWhite2d [
    i8 7, label %do.body596
    i8 9, label %sw.bb603
    i8 11, label %sw.bb603
  ]

do.body596:                                       ; preds = %do.end580
  %354 = load i32, ptr %RunLength, align 4
  %355 = load ptr, ptr %TabEnt, align 8
  %Param597 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %355, i64 0, i32 2
  %356 = load i32, ptr %Param597, align 4
  %add598 = add i32 %354, %356
  %357 = load ptr, ptr %pa, align 8
  %incdec.ptr599 = getelementptr inbounds i32, ptr %357, i64 1
  store ptr %incdec.ptr599, ptr %pa, align 8
  store i32 %add598, ptr %357, align 4
  %358 = load ptr, ptr %TabEnt, align 8
  %Param600 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %358, i64 0, i32 2
  %359 = load i32, ptr %Param600, align 4
  %360 = load i32, ptr %a0, align 4
  %add601 = add i32 %360, %359
  store i32 %add601, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.body750

sw.bb603:                                         ; preds = %do.end580, %do.end580
  %361 = load ptr, ptr %TabEnt, align 8
  %Param604 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %361, i64 0, i32 2
  %362 = load i32, ptr %Param604, align 4
  %363 = load i32, ptr %a0, align 4
  %add605 = add i32 %363, %362
  store i32 %add605, ptr %a0, align 4
  %364 = load i32, ptr %RunLength, align 4
  %add607 = add i32 %364, %362
  store i32 %add607, ptr %RunLength, align 4
  br label %for.cond541

for.cond611:                                      ; preds = %sw.bb464, %sw.bb673
  %365 = load i32, ptr %BitsAvail, align 4
  %cmp614 = icmp slt i32 %365, 12
  br i1 %cmp614, label %if.then616, label %do.end650

if.then616:                                       ; preds = %for.cond611
  %366 = load ptr, ptr %cp, align 8
  %367 = load ptr, ptr %ep, align 8
  %cmp617.not = icmp ult ptr %366, %367
  br i1 %cmp617.not, label %if.else624, label %if.then619

if.then619:                                       ; preds = %if.then616
  %368 = load i32, ptr %BitsAvail, align 4
  %cmp620 = icmp eq i32 %368, 0
  br i1 %cmp620, label %eof2d, label %if.end623

if.end623:                                        ; preds = %if.then619
  store i32 12, ptr %BitsAvail, align 4
  br label %do.end650

if.else624:                                       ; preds = %if.then616
  %369 = load ptr, ptr %bitmap, align 8
  %370 = load ptr, ptr %cp, align 8
  %incdec.ptr625 = getelementptr inbounds i8, ptr %370, i64 1
  store ptr %incdec.ptr625, ptr %cp, align 8
  %371 = load i8, ptr %370, align 1
  %idxprom626 = zext i8 %371 to i64
  %arrayidx627 = getelementptr inbounds i8, ptr %369, i64 %idxprom626
  %372 = load i8, ptr %arrayidx627, align 1
  %conv628 = zext i8 %372 to i32
  %373 = load i32, ptr %BitsAvail, align 4
  %shl629 = shl i32 %conv628, %373
  %374 = load i32, ptr %BitAcc, align 4
  %or630 = or i32 %374, %shl629
  store i32 %or630, ptr %BitAcc, align 4
  %add631 = add nsw i32 %373, 8
  store i32 %add631, ptr %BitsAvail, align 4
  %cmp632 = icmp slt i32 %373, 4
  br i1 %cmp632, label %if.then634, label %do.end650

if.then634:                                       ; preds = %if.else624
  %375 = load ptr, ptr %cp, align 8
  %376 = load ptr, ptr %ep, align 8
  %cmp635.not = icmp ult ptr %375, %376
  br i1 %cmp635.not, label %if.else638, label %if.end646

if.else638:                                       ; preds = %if.then634
  %377 = load ptr, ptr %bitmap, align 8
  %378 = load ptr, ptr %cp, align 8
  %incdec.ptr639 = getelementptr inbounds i8, ptr %378, i64 1
  store ptr %incdec.ptr639, ptr %cp, align 8
  %379 = load i8, ptr %378, align 1
  %idxprom640 = zext i8 %379 to i64
  %arrayidx641 = getelementptr inbounds i8, ptr %377, i64 %idxprom640
  %380 = load i8, ptr %arrayidx641, align 1
  %conv642 = zext i8 %380 to i32
  %381 = load i32, ptr %BitsAvail, align 4
  %shl643 = shl i32 %conv642, %381
  %382 = load i32, ptr %BitAcc, align 4
  %or644 = or i32 %382, %shl643
  store i32 %or644, ptr %BitAcc, align 4
  %add645 = add nsw i32 %381, 8
  br label %if.end646

if.end646:                                        ; preds = %if.then634, %if.else638
  %storemerge90 = phi i32 [ %add645, %if.else638 ], [ 12, %if.then634 ]
  store i32 %storemerge90, ptr %BitsAvail, align 4
  br label %do.end650

do.end650:                                        ; preds = %for.cond611, %if.else624, %if.end646, %if.end623
  %383 = load i32, ptr %BitAcc, align 4
  %and651 = and i32 %383, 4095
  %idx.ext652 = zext i32 %and651 to i64
  %add.ptr653 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %idx.ext652
  store ptr %add.ptr653, ptr %TabEnt, align 8
  %384 = load ptr, ptr %TabEnt, align 8
  %Width655 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %384, i64 0, i32 1
  %385 = load i8, ptr %Width655, align 1
  %conv656 = zext i8 %385 to i32
  %386 = load i32, ptr %BitsAvail, align 4
  %sub657 = sub nsw i32 %386, %conv656
  store i32 %sub657, ptr %BitsAvail, align 4
  %387 = load ptr, ptr %TabEnt, align 8
  %Width658 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %387, i64 0, i32 1
  %388 = load i8, ptr %Width658, align 1
  %conv659 = zext i8 %388 to i32
  %389 = load i32, ptr %BitAcc, align 4
  %shr660 = lshr i32 %389, %conv659
  store i32 %shr660, ptr %BitAcc, align 4
  %390 = load ptr, ptr %TabEnt, align 8
  %391 = load i8, ptr %390, align 4
  switch i8 %391, label %badWhite2d [
    i8 7, label %do.body666
    i8 9, label %sw.bb673
    i8 11, label %sw.bb673
  ]

do.body666:                                       ; preds = %do.end650
  %392 = load i32, ptr %RunLength, align 4
  %393 = load ptr, ptr %TabEnt, align 8
  %Param667 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %393, i64 0, i32 2
  %394 = load i32, ptr %Param667, align 4
  %add668 = add i32 %392, %394
  %395 = load ptr, ptr %pa, align 8
  %incdec.ptr669 = getelementptr inbounds i32, ptr %395, i64 1
  store ptr %incdec.ptr669, ptr %pa, align 8
  store i32 %add668, ptr %395, align 4
  %396 = load ptr, ptr %TabEnt, align 8
  %Param670 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %396, i64 0, i32 2
  %397 = load i32, ptr %Param670, align 4
  %398 = load i32, ptr %a0, align 4
  %add671 = add i32 %398, %397
  store i32 %add671, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %for.cond680

sw.bb673:                                         ; preds = %do.end650, %do.end650
  %399 = load ptr, ptr %TabEnt, align 8
  %Param674 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %399, i64 0, i32 2
  %400 = load i32, ptr %Param674, align 4
  %401 = load i32, ptr %a0, align 4
  %add675 = add i32 %401, %400
  store i32 %add675, ptr %a0, align 4
  %402 = load i32, ptr %RunLength, align 4
  %add677 = add i32 %402, %400
  store i32 %add677, ptr %RunLength, align 4
  br label %for.cond611

for.cond680:                                      ; preds = %sw.bb742, %do.body666
  %403 = load i32, ptr %BitsAvail, align 4
  %cmp683 = icmp slt i32 %403, 13
  br i1 %cmp683, label %if.then685, label %do.end719

if.then685:                                       ; preds = %for.cond680
  %404 = load ptr, ptr %cp, align 8
  %405 = load ptr, ptr %ep, align 8
  %cmp686.not = icmp ult ptr %404, %405
  br i1 %cmp686.not, label %if.else693, label %if.then688

if.then688:                                       ; preds = %if.then685
  %406 = load i32, ptr %BitsAvail, align 4
  %cmp689 = icmp eq i32 %406, 0
  br i1 %cmp689, label %eof2d, label %if.end692

if.end692:                                        ; preds = %if.then688
  store i32 13, ptr %BitsAvail, align 4
  br label %do.end719

if.else693:                                       ; preds = %if.then685
  %407 = load ptr, ptr %bitmap, align 8
  %408 = load ptr, ptr %cp, align 8
  %incdec.ptr694 = getelementptr inbounds i8, ptr %408, i64 1
  store ptr %incdec.ptr694, ptr %cp, align 8
  %409 = load i8, ptr %408, align 1
  %idxprom695 = zext i8 %409 to i64
  %arrayidx696 = getelementptr inbounds i8, ptr %407, i64 %idxprom695
  %410 = load i8, ptr %arrayidx696, align 1
  %conv697 = zext i8 %410 to i32
  %411 = load i32, ptr %BitsAvail, align 4
  %shl698 = shl i32 %conv697, %411
  %412 = load i32, ptr %BitAcc, align 4
  %or699 = or i32 %412, %shl698
  store i32 %or699, ptr %BitAcc, align 4
  %add700 = add nsw i32 %411, 8
  store i32 %add700, ptr %BitsAvail, align 4
  %cmp701 = icmp slt i32 %411, 5
  br i1 %cmp701, label %if.then703, label %do.end719

if.then703:                                       ; preds = %if.else693
  %413 = load ptr, ptr %cp, align 8
  %414 = load ptr, ptr %ep, align 8
  %cmp704.not = icmp ult ptr %413, %414
  br i1 %cmp704.not, label %if.else707, label %if.end715

if.else707:                                       ; preds = %if.then703
  %415 = load ptr, ptr %bitmap, align 8
  %416 = load ptr, ptr %cp, align 8
  %incdec.ptr708 = getelementptr inbounds i8, ptr %416, i64 1
  store ptr %incdec.ptr708, ptr %cp, align 8
  %417 = load i8, ptr %416, align 1
  %idxprom709 = zext i8 %417 to i64
  %arrayidx710 = getelementptr inbounds i8, ptr %415, i64 %idxprom709
  %418 = load i8, ptr %arrayidx710, align 1
  %conv711 = zext i8 %418 to i32
  %419 = load i32, ptr %BitsAvail, align 4
  %shl712 = shl i32 %conv711, %419
  %420 = load i32, ptr %BitAcc, align 4
  %or713 = or i32 %420, %shl712
  store i32 %or713, ptr %BitAcc, align 4
  %add714 = add nsw i32 %419, 8
  br label %if.end715

if.end715:                                        ; preds = %if.then703, %if.else707
  %storemerge89 = phi i32 [ %add714, %if.else707 ], [ 13, %if.then703 ]
  store i32 %storemerge89, ptr %BitsAvail, align 4
  br label %do.end719

do.end719:                                        ; preds = %for.cond680, %if.else693, %if.end715, %if.end692
  %421 = load i32, ptr %BitAcc, align 4
  %and720 = and i32 %421, 8191
  %idx.ext721 = zext i32 %and720 to i64
  %add.ptr722 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %idx.ext721
  store ptr %add.ptr722, ptr %TabEnt, align 8
  %422 = load ptr, ptr %TabEnt, align 8
  %Width724 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %422, i64 0, i32 1
  %423 = load i8, ptr %Width724, align 1
  %conv725 = zext i8 %423 to i32
  %424 = load i32, ptr %BitsAvail, align 4
  %sub726 = sub nsw i32 %424, %conv725
  store i32 %sub726, ptr %BitsAvail, align 4
  %425 = load ptr, ptr %TabEnt, align 8
  %Width727 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %425, i64 0, i32 1
  %426 = load i8, ptr %Width727, align 1
  %conv728 = zext i8 %426 to i32
  %427 = load i32, ptr %BitAcc, align 4
  %shr729 = lshr i32 %427, %conv728
  store i32 %shr729, ptr %BitAcc, align 4
  %428 = load ptr, ptr %TabEnt, align 8
  %429 = load i8, ptr %428, align 4
  switch i8 %429, label %badBlack2d [
    i8 8, label %do.body735
    i8 10, label %sw.bb742
    i8 11, label %sw.bb742
  ]

do.body735:                                       ; preds = %do.end719
  %430 = load i32, ptr %RunLength, align 4
  %431 = load ptr, ptr %TabEnt, align 8
  %Param736 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %431, i64 0, i32 2
  %432 = load i32, ptr %Param736, align 4
  %add737 = add i32 %430, %432
  %433 = load ptr, ptr %pa, align 8
  %incdec.ptr738 = getelementptr inbounds i32, ptr %433, i64 1
  store ptr %incdec.ptr738, ptr %pa, align 8
  store i32 %add737, ptr %433, align 4
  %434 = load ptr, ptr %TabEnt, align 8
  %Param739 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %434, i64 0, i32 2
  %435 = load i32, ptr %Param739, align 4
  %436 = load i32, ptr %a0, align 4
  %add740 = add i32 %436, %435
  store i32 %add740, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.body750

sw.bb742:                                         ; preds = %do.end719, %do.end719
  %437 = load ptr, ptr %TabEnt, align 8
  %Param743 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %437, i64 0, i32 2
  %438 = load i32, ptr %Param743, align 4
  %439 = load i32, ptr %a0, align 4
  %add744 = add i32 %439, %438
  store i32 %add744, ptr %a0, align 4
  %440 = load i32, ptr %RunLength, align 4
  %add746 = add i32 %440, %438
  store i32 %add746, ptr %RunLength, align 4
  br label %for.cond680

do.body750:                                       ; preds = %do.body596, %do.body735
  %441 = load ptr, ptr %pa, align 8
  %442 = load ptr, ptr %thisrun, align 8
  %cmp751.not = icmp eq ptr %441, %442
  br i1 %cmp751.not, label %sw.epilog969, label %while.cond754

while.cond754:                                    ; preds = %do.body750, %while.body761
  %443 = load i32, ptr %b1, align 4
  %444 = load i32, ptr %a0, align 4
  %cmp755.not = icmp sgt i32 %443, %444
  %445 = load i32, ptr %b1, align 4
  %446 = load i32, ptr %lastx, align 4
  %cmp758 = icmp slt i32 %445, %446
  %447 = select i1 %cmp755.not, i1 false, i1 %cmp758
  br i1 %447, label %while.body761, label %sw.epilog969

while.body761:                                    ; preds = %while.cond754
  %448 = load ptr, ptr %pb, align 8
  %449 = load i32, ptr %448, align 4
  %arrayidx763 = getelementptr inbounds i32, ptr %448, i64 1
  %450 = load i32, ptr %arrayidx763, align 4
  %add764 = add i32 %449, %450
  %451 = load i32, ptr %b1, align 4
  %add765 = add i32 %451, %add764
  store i32 %add765, ptr %b1, align 4
  %452 = load ptr, ptr %pb, align 8
  %add.ptr766 = getelementptr inbounds i32, ptr %452, i64 2
  store ptr %add.ptr766, ptr %pb, align 8
  br label %while.cond754, !llvm.loop !36

do.body771:                                       ; preds = %do.end422
  %453 = load ptr, ptr %pa, align 8
  %454 = load ptr, ptr %thisrun, align 8
  %cmp772.not = icmp eq ptr %453, %454
  br i1 %cmp772.not, label %do.body791, label %while.cond775

while.cond775:                                    ; preds = %do.body771, %while.body782
  %455 = load i32, ptr %b1, align 4
  %456 = load i32, ptr %a0, align 4
  %cmp776.not = icmp sgt i32 %455, %456
  %457 = load i32, ptr %b1, align 4
  %458 = load i32, ptr %lastx, align 4
  %cmp779 = icmp slt i32 %457, %458
  %459 = select i1 %cmp776.not, i1 false, i1 %cmp779
  br i1 %459, label %while.body782, label %do.body791

while.body782:                                    ; preds = %while.cond775
  %460 = load ptr, ptr %pb, align 8
  %461 = load i32, ptr %460, align 4
  %arrayidx784 = getelementptr inbounds i32, ptr %460, i64 1
  %462 = load i32, ptr %arrayidx784, align 4
  %add785 = add i32 %461, %462
  %463 = load i32, ptr %b1, align 4
  %add786 = add i32 %463, %add785
  store i32 %add786, ptr %b1, align 4
  %464 = load ptr, ptr %pb, align 8
  %add.ptr787 = getelementptr inbounds i32, ptr %464, i64 2
  store ptr %add.ptr787, ptr %pb, align 8
  br label %while.cond775, !llvm.loop !37

do.body791:                                       ; preds = %while.cond775, %do.body771
  %465 = load i32, ptr %RunLength, align 4
  %466 = load i32, ptr %b1, align 4
  %467 = load i32, ptr %a0, align 4
  %sub792 = sub nsw i32 %466, %467
  %add793 = add nsw i32 %465, %sub792
  %468 = load ptr, ptr %pa, align 8
  %incdec.ptr794 = getelementptr inbounds i32, ptr %468, i64 1
  store ptr %incdec.ptr794, ptr %pa, align 8
  store i32 %add793, ptr %468, align 4
  %469 = load i32, ptr %b1, align 4
  store i32 %469, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %470 = load ptr, ptr %pb, align 8
  %incdec.ptr798 = getelementptr inbounds i32, ptr %470, i64 1
  store ptr %incdec.ptr798, ptr %pb, align 8
  %471 = load i32, ptr %470, align 4
  %472 = load i32, ptr %b1, align 4
  %add799 = add i32 %472, %471
  store i32 %add799, ptr %b1, align 4
  br label %sw.epilog969

do.body801:                                       ; preds = %do.end422
  %473 = load ptr, ptr %pa, align 8
  %474 = load ptr, ptr %thisrun, align 8
  %cmp802.not = icmp eq ptr %473, %474
  br i1 %cmp802.not, label %do.body821, label %while.cond805

while.cond805:                                    ; preds = %do.body801, %while.body812
  %475 = load i32, ptr %b1, align 4
  %476 = load i32, ptr %a0, align 4
  %cmp806.not = icmp sgt i32 %475, %476
  %477 = load i32, ptr %b1, align 4
  %478 = load i32, ptr %lastx, align 4
  %cmp809 = icmp slt i32 %477, %478
  %479 = select i1 %cmp806.not, i1 false, i1 %cmp809
  br i1 %479, label %while.body812, label %do.body821

while.body812:                                    ; preds = %while.cond805
  %480 = load ptr, ptr %pb, align 8
  %481 = load i32, ptr %480, align 4
  %arrayidx814 = getelementptr inbounds i32, ptr %480, i64 1
  %482 = load i32, ptr %arrayidx814, align 4
  %add815 = add i32 %481, %482
  %483 = load i32, ptr %b1, align 4
  %add816 = add i32 %483, %add815
  store i32 %add816, ptr %b1, align 4
  %484 = load ptr, ptr %pb, align 8
  %add.ptr817 = getelementptr inbounds i32, ptr %484, i64 2
  store ptr %add.ptr817, ptr %pb, align 8
  br label %while.cond805, !llvm.loop !38

do.body821:                                       ; preds = %while.cond805, %do.body801
  %485 = load i32, ptr %RunLength, align 4
  %486 = load i32, ptr %b1, align 4
  %487 = load i32, ptr %a0, align 4
  %sub822 = sub nsw i32 %486, %487
  %488 = load ptr, ptr %TabEnt, align 8
  %Param823 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %488, i64 0, i32 2
  %489 = load i32, ptr %Param823, align 4
  %add824 = add i32 %sub822, %489
  %add825 = add i32 %485, %add824
  %490 = load ptr, ptr %pa, align 8
  %incdec.ptr826 = getelementptr inbounds i32, ptr %490, i64 1
  store ptr %incdec.ptr826, ptr %pa, align 8
  store i32 %add825, ptr %490, align 4
  %491 = load i32, ptr %b1, align 4
  %492 = load ptr, ptr %TabEnt, align 8
  %Param828 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %492, i64 0, i32 2
  %493 = load i32, ptr %Param828, align 4
  %add830 = add i32 %491, %493
  store i32 %add830, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %494 = load ptr, ptr %pb, align 8
  %incdec.ptr832 = getelementptr inbounds i32, ptr %494, i64 1
  store ptr %incdec.ptr832, ptr %pb, align 8
  %495 = load i32, ptr %494, align 4
  %496 = load i32, ptr %b1, align 4
  %add833 = add i32 %496, %495
  store i32 %add833, ptr %b1, align 4
  br label %sw.epilog969

do.body835:                                       ; preds = %do.end422
  %497 = load ptr, ptr %pa, align 8
  %498 = load ptr, ptr %thisrun, align 8
  %cmp836.not = icmp eq ptr %497, %498
  br i1 %cmp836.not, label %do.body855, label %while.cond839

while.cond839:                                    ; preds = %do.body835, %while.body846
  %499 = load i32, ptr %b1, align 4
  %500 = load i32, ptr %a0, align 4
  %cmp840.not = icmp sgt i32 %499, %500
  %501 = load i32, ptr %b1, align 4
  %502 = load i32, ptr %lastx, align 4
  %cmp843 = icmp slt i32 %501, %502
  %503 = select i1 %cmp840.not, i1 false, i1 %cmp843
  br i1 %503, label %while.body846, label %do.body855

while.body846:                                    ; preds = %while.cond839
  %504 = load ptr, ptr %pb, align 8
  %505 = load i32, ptr %504, align 4
  %arrayidx848 = getelementptr inbounds i32, ptr %504, i64 1
  %506 = load i32, ptr %arrayidx848, align 4
  %add849 = add i32 %505, %506
  %507 = load i32, ptr %b1, align 4
  %add850 = add i32 %507, %add849
  store i32 %add850, ptr %b1, align 4
  %508 = load ptr, ptr %pb, align 8
  %add.ptr851 = getelementptr inbounds i32, ptr %508, i64 2
  store ptr %add.ptr851, ptr %pb, align 8
  br label %while.cond839, !llvm.loop !39

do.body855:                                       ; preds = %while.cond839, %do.body835
  %509 = load i32, ptr %RunLength, align 4
  %510 = load i32, ptr %b1, align 4
  %511 = load i32, ptr %a0, align 4
  %512 = load ptr, ptr %TabEnt, align 8
  %Param857 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %512, i64 0, i32 2
  %513 = load i32, ptr %Param857, align 4
  %514 = add i32 %511, %513
  %sub858 = sub i32 %510, %514
  %add859 = add i32 %509, %sub858
  %515 = load ptr, ptr %pa, align 8
  %incdec.ptr860 = getelementptr inbounds i32, ptr %515, i64 1
  store ptr %incdec.ptr860, ptr %pa, align 8
  store i32 %add859, ptr %515, align 4
  %516 = load i32, ptr %b1, align 4
  %517 = load i32, ptr %a0, align 4
  %518 = load ptr, ptr %TabEnt, align 8
  %Param862 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %518, i64 0, i32 2
  %519 = load i32, ptr %Param862, align 4
  %520 = add i32 %517, %519
  %sub863 = sub i32 %516, %520
  %add864 = add i32 %517, %sub863
  store i32 %add864, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %521 = load ptr, ptr %pb, align 8
  %incdec.ptr866 = getelementptr inbounds i32, ptr %521, i64 -1
  store ptr %incdec.ptr866, ptr %pb, align 8
  %522 = load i32, ptr %incdec.ptr866, align 4
  %523 = load i32, ptr %b1, align 4
  %sub867 = sub i32 %523, %522
  store i32 %sub867, ptr %b1, align 4
  br label %sw.epilog969

sw.bb868:                                         ; preds = %do.end422
  %524 = load i32, ptr %lastx, align 4
  %525 = load i32, ptr %a0, align 4
  %sub869 = sub nsw i32 %524, %525
  %526 = load ptr, ptr %pa, align 8
  %incdec.ptr870 = getelementptr inbounds i32, ptr %526, i64 1
  store ptr %incdec.ptr870, ptr %pa, align 8
  store i32 %sub869, ptr %526, align 4
  %527 = load ptr, ptr %tif.addr, align 8
  %528 = load i32, ptr %a0, align 4
  %529 = load ptr, ptr %527, align 8
  %tif_row.i28 = getelementptr inbounds %struct.tiff, ptr %527, i64 0, i32 11
  %530 = load i32, ptr %tif_row.i28, align 8
  %conv.i29 = zext i32 %528 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef nonnull @.str.39, ptr noundef %529, i32 noundef %530, i64 noundef %conv.i29) #6
  br label %do.body1014

sw.bb871:                                         ; preds = %do.end422
  %531 = load i32, ptr %lastx, align 4
  %532 = load i32, ptr %a0, align 4
  %sub872 = sub nsw i32 %531, %532
  %533 = load ptr, ptr %pa, align 8
  %incdec.ptr873 = getelementptr inbounds i32, ptr %533, i64 1
  store ptr %incdec.ptr873, ptr %pa, align 8
  store i32 %sub872, ptr %533, align 4
  %534 = load i32, ptr %BitsAvail, align 4
  %cmp875 = icmp slt i32 %534, 5
  br i1 %cmp875, label %if.then877, label %do.end895

if.then877:                                       ; preds = %sw.bb871
  %535 = load ptr, ptr %cp, align 8
  %536 = load ptr, ptr %ep, align 8
  %cmp878.not = icmp ult ptr %535, %536
  br i1 %cmp878.not, label %if.else885, label %if.then880

if.then880:                                       ; preds = %if.then877
  %537 = load i32, ptr %BitsAvail, align 4
  %cmp881 = icmp eq i32 %537, 0
  br i1 %cmp881, label %eof2d, label %if.end893

if.else885:                                       ; preds = %if.then877
  %538 = load ptr, ptr %bitmap, align 8
  %539 = load ptr, ptr %cp, align 8
  %incdec.ptr886 = getelementptr inbounds i8, ptr %539, i64 1
  store ptr %incdec.ptr886, ptr %cp, align 8
  %540 = load i8, ptr %539, align 1
  %idxprom887 = zext i8 %540 to i64
  %arrayidx888 = getelementptr inbounds i8, ptr %538, i64 %idxprom887
  %541 = load i8, ptr %arrayidx888, align 1
  %conv889 = zext i8 %541 to i32
  %542 = load i32, ptr %BitsAvail, align 4
  %shl890 = shl i32 %conv889, %542
  %543 = load i32, ptr %BitAcc, align 4
  %or891 = or i32 %543, %shl890
  store i32 %or891, ptr %BitAcc, align 4
  %add892 = add nsw i32 %542, 8
  br label %if.end893

if.end893:                                        ; preds = %if.then880, %if.else885
  %storemerge87 = phi i32 [ %add892, %if.else885 ], [ 5, %if.then880 ]
  store i32 %storemerge87, ptr %BitsAvail, align 4
  br label %do.end895

do.end895:                                        ; preds = %sw.bb871, %if.end893
  %544 = load i32, ptr %BitAcc, align 4
  %and896 = and i32 %544, 31
  %tobool897.not = icmp eq i32 %and896, 0
  br i1 %tobool897.not, label %if.end899, label %if.then898

if.then898:                                       ; preds = %do.end895
  %545 = load ptr, ptr %tif.addr, align 8
  %546 = load i32, ptr %a0, align 4
  %547 = load ptr, ptr %545, align 8
  %tif_row.i33 = getelementptr inbounds %struct.tiff, ptr %545, i64 0, i32 11
  %548 = load i32, ptr %tif_row.i33, align 8
  %conv.i34 = zext i32 %546 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef nonnull @.str.34, ptr noundef %547, i32 noundef %548, i64 noundef %conv.i34) #6
  br label %if.end899

if.end899:                                        ; preds = %if.then898, %do.end895
  store i32 1, ptr %EOLcnt, align 4
  br label %do.body1014

badMain2d:                                        ; preds = %do.end998, %do.end422
  %549 = load ptr, ptr %tif.addr, align 8
  %550 = load i32, ptr %a0, align 4
  %551 = load ptr, ptr %549, align 8
  %tif_row.i38 = getelementptr inbounds %struct.tiff, ptr %549, i64 0, i32 11
  %552 = load i32, ptr %tif_row.i38, align 8
  %conv.i39 = zext i32 %550 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef nonnull @.str.34, ptr noundef %551, i32 noundef %552, i64 noundef %conv.i39) #6
  br label %do.body1014

badBlack2d:                                       ; preds = %do.end719, %do.end511
  %553 = load ptr, ptr %tif.addr, align 8
  %554 = load i32, ptr %a0, align 4
  %555 = load ptr, ptr %553, align 8
  %tif_row.i43 = getelementptr inbounds %struct.tiff, ptr %553, i64 0, i32 11
  %556 = load i32, ptr %tif_row.i43, align 8
  %conv.i44 = zext i32 %554 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef nonnull @.str.34, ptr noundef %555, i32 noundef %556, i64 noundef %conv.i44) #6
  br label %do.body1014

badWhite2d:                                       ; preds = %do.end650, %do.end580
  %557 = load ptr, ptr %tif.addr, align 8
  %558 = load i32, ptr %a0, align 4
  %559 = load ptr, ptr %557, align 8
  %tif_row.i48 = getelementptr inbounds %struct.tiff, ptr %557, i64 0, i32 11
  %560 = load i32, ptr %tif_row.i48, align 8
  %conv.i49 = zext i32 %558 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef nonnull @.str.34, ptr noundef %559, i32 noundef %560, i64 noundef %conv.i49) #6
  br label %do.body1014

eof2d:                                            ; preds = %if.then983, %if.then880, %if.then688, %if.then619, %if.then549, %if.then480, %if.then407
  %561 = load ptr, ptr %tif.addr, align 8
  %562 = load i32, ptr %a0, align 4
  %563 = load ptr, ptr %561, align 8
  %tif_row.i53 = getelementptr inbounds %struct.tiff, ptr %561, i64 0, i32 11
  %564 = load i32, ptr %tif_row.i53, align 8
  %conv.i54 = zext i32 %562 to i64
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef nonnull @.str.35, ptr noundef %563, i32 noundef %564, i64 noundef %conv.i54) #6
  %565 = load i32, ptr %RunLength, align 4
  %tobool902.not = icmp eq i32 %565, 0
  br i1 %tobool902.not, label %if.end909, label %do.body904

do.body904:                                       ; preds = %eof2d
  %566 = load i32, ptr %RunLength, align 4
  %567 = load ptr, ptr %pa, align 8
  %incdec.ptr906 = getelementptr inbounds i32, ptr %567, i64 1
  store ptr %incdec.ptr906, ptr %pa, align 8
  store i32 %566, ptr %567, align 4
  store i32 0, ptr %RunLength, align 4
  br label %if.end909

if.end909:                                        ; preds = %do.body904, %eof2d
  %568 = load i32, ptr %a0, align 4
  %569 = load i32, ptr %lastx, align 4
  %cmp910.not = icmp eq i32 %568, %569
  br i1 %cmp910.not, label %EOF2Da, label %if.then912

if.then912:                                       ; preds = %if.end909
  %570 = load ptr, ptr %tif.addr, align 8
  %571 = load i32, ptr %a0, align 4
  %572 = load i32, ptr %lastx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a0.addr.i57)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lastx.addr.i58)
  store i32 %571, ptr %a0.addr.i57, align 4
  store i32 %572, ptr %lastx.addr.i58, align 4
  %573 = load ptr, ptr %570, align 8
  %cmp.i59 = icmp ult i32 %571, %572
  %cond.i60 = select i1 %cmp.i59, ptr @.str.37, ptr @.str.38
  %tif_row.i61 = getelementptr inbounds %struct.tiff, ptr %570, i64 0, i32 11
  %574 = load i32, ptr %tif_row.i61, align 8
  %575 = load i32, ptr %a0.addr.i57, align 4
  %conv.i62 = zext i32 %575 to i64
  %576 = load i32, ptr %lastx.addr.i58, align 4
  %conv1.i63 = zext i32 %576 to i64
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef nonnull @.str.36, ptr noundef %573, ptr noundef nonnull %cond.i60, i32 noundef %574, i64 noundef %conv.i62, i64 noundef %conv1.i63) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a0.addr.i57)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lastx.addr.i58)
  br label %while.cond913

while.cond913:                                    ; preds = %while.body920, %if.then912
  %577 = load i32, ptr %a0, align 4
  %578 = load i32, ptr %lastx, align 4
  %cmp914 = icmp sgt i32 %577, %578
  %579 = load ptr, ptr %pa, align 8
  %580 = load ptr, ptr %thisrun, align 8
  %cmp917 = icmp ugt ptr %579, %580
  %581 = select i1 %cmp914, i1 %cmp917, i1 false
  br i1 %581, label %while.body920, label %while.end923

while.body920:                                    ; preds = %while.cond913
  %582 = load ptr, ptr %pa, align 8
  %incdec.ptr921 = getelementptr inbounds i32, ptr %582, i64 -1
  store ptr %incdec.ptr921, ptr %pa, align 8
  %583 = load i32, ptr %incdec.ptr921, align 4
  %584 = load i32, ptr %a0, align 4
  %sub922 = sub i32 %584, %583
  store i32 %sub922, ptr %a0, align 4
  br label %while.cond913, !llvm.loop !40

while.end923:                                     ; preds = %while.cond913
  %585 = load i32, ptr %a0, align 4
  %586 = load i32, ptr %lastx, align 4
  %cmp924 = icmp slt i32 %585, %586
  br i1 %cmp924, label %if.then926, label %if.else951

if.then926:                                       ; preds = %while.end923
  %587 = load i32, ptr %a0, align 4
  %cmp927 = icmp slt i32 %587, 0
  br i1 %cmp927, label %if.then929, label %if.end930

if.then929:                                       ; preds = %if.then926
  store i32 0, ptr %a0, align 4
  br label %if.end930

if.end930:                                        ; preds = %if.then929, %if.then926
  %588 = load ptr, ptr %pa, align 8
  %589 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast931 = ptrtoint ptr %588 to i64
  %sub.ptr.rhs.cast932 = ptrtoint ptr %589 to i64
  %sub.ptr.sub933 = sub i64 %sub.ptr.lhs.cast931, %sub.ptr.rhs.cast932
  %590 = and i64 %sub.ptr.sub933, 4
  %tobool936.not = icmp eq i64 %590, 0
  br i1 %tobool936.not, label %do.body944, label %do.body938

do.body938:                                       ; preds = %if.end930
  %591 = load i32, ptr %RunLength, align 4
  %592 = load ptr, ptr %pa, align 8
  %incdec.ptr940 = getelementptr inbounds i32, ptr %592, i64 1
  store ptr %incdec.ptr940, ptr %pa, align 8
  store i32 %591, ptr %592, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.body944

do.body944:                                       ; preds = %if.end930, %do.body938
  %593 = load i32, ptr %RunLength, align 4
  %594 = load i32, ptr %lastx, align 4
  %595 = load i32, ptr %a0, align 4
  %sub945 = sub nsw i32 %594, %595
  %add946 = add nsw i32 %593, %sub945
  %596 = load ptr, ptr %pa, align 8
  %incdec.ptr947 = getelementptr inbounds i32, ptr %596, i64 1
  store ptr %incdec.ptr947, ptr %pa, align 8
  store i32 %add946, ptr %596, align 4
  %597 = load i32, ptr %lastx, align 4
  store i32 %597, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %EOF2Da

if.else951:                                       ; preds = %while.end923
  %598 = load i32, ptr %a0, align 4
  %599 = load i32, ptr %lastx, align 4
  %cmp952 = icmp sgt i32 %598, %599
  br i1 %cmp952, label %do.body955, label %EOF2Da

do.body955:                                       ; preds = %if.else951
  %600 = load i32, ptr %RunLength, align 4
  %601 = load i32, ptr %lastx, align 4
  %add956 = add nsw i32 %600, %601
  %602 = load ptr, ptr %pa, align 8
  %incdec.ptr957 = getelementptr inbounds i32, ptr %602, i64 1
  store ptr %incdec.ptr957, ptr %pa, align 8
  store i32 %add956, ptr %602, align 4
  %603 = load i32, ptr %a0, align 4
  %add958 = add nsw i32 %603, %601
  store i32 %add958, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %604 = load i32, ptr %RunLength, align 4
  %605 = load ptr, ptr %pa, align 8
  %incdec.ptr962 = getelementptr inbounds i32, ptr %605, i64 1
  store ptr %incdec.ptr962, ptr %pa, align 8
  store i32 %604, ptr %605, align 4
  store i32 0, ptr %RunLength, align 4
  br label %EOF2Da

sw.epilog969:                                     ; preds = %while.cond754, %do.body750, %do.body855, %do.body821, %do.body791, %do.end457
  br label %while.cond396, !llvm.loop !41

while.end970:                                     ; preds = %while.cond396
  %606 = load i32, ptr %RunLength, align 4
  %tobool971.not = icmp eq i32 %606, 0
  br i1 %tobool971.not, label %do.body1014, label %if.then972

if.then972:                                       ; preds = %while.end970
  %607 = load i32, ptr %RunLength, align 4
  %608 = load i32, ptr %a0, align 4
  %add973 = add nsw i32 %607, %608
  %609 = load i32, ptr %lastx, align 4
  %cmp974 = icmp slt i32 %add973, %609
  br i1 %cmp974, label %do.body977, label %do.body1008

do.body977:                                       ; preds = %if.then972
  %610 = load i32, ptr %BitsAvail, align 4
  %cmp978 = icmp slt i32 %610, 1
  br i1 %cmp978, label %if.then980, label %do.end998

if.then980:                                       ; preds = %do.body977
  %611 = load ptr, ptr %cp, align 8
  %612 = load ptr, ptr %ep, align 8
  %cmp981.not = icmp ult ptr %611, %612
  br i1 %cmp981.not, label %if.else988, label %if.then983

if.then983:                                       ; preds = %if.then980
  %613 = load i32, ptr %BitsAvail, align 4
  %cmp984 = icmp eq i32 %613, 0
  br i1 %cmp984, label %eof2d, label %if.end996

if.else988:                                       ; preds = %if.then980
  %614 = load ptr, ptr %bitmap, align 8
  %615 = load ptr, ptr %cp, align 8
  %incdec.ptr989 = getelementptr inbounds i8, ptr %615, i64 1
  store ptr %incdec.ptr989, ptr %cp, align 8
  %616 = load i8, ptr %615, align 1
  %idxprom990 = zext i8 %616 to i64
  %arrayidx991 = getelementptr inbounds i8, ptr %614, i64 %idxprom990
  %617 = load i8, ptr %arrayidx991, align 1
  %conv992 = zext i8 %617 to i32
  %618 = load i32, ptr %BitsAvail, align 4
  %shl993 = shl i32 %conv992, %618
  %619 = load i32, ptr %BitAcc, align 4
  %or994 = or i32 %619, %shl993
  store i32 %or994, ptr %BitAcc, align 4
  %add995 = add nsw i32 %618, 8
  br label %if.end996

if.end996:                                        ; preds = %if.then983, %if.else988
  %storemerge84 = phi i32 [ %add995, %if.else988 ], [ 1, %if.then983 ]
  store i32 %storemerge84, ptr %BitsAvail, align 4
  br label %do.end998

do.end998:                                        ; preds = %do.body977, %if.end996
  %620 = load i32, ptr %BitAcc, align 4
  %and999 = and i32 %620, 1
  %tobool1000.not = icmp eq i32 %and999, 0
  br i1 %tobool1000.not, label %badMain2d, label %do.body1003

do.body1003:                                      ; preds = %do.end998
  %621 = load i32, ptr %BitsAvail, align 4
  %sub1004 = add nsw i32 %621, -1
  store i32 %sub1004, ptr %BitsAvail, align 4
  %622 = load i32, ptr %BitAcc, align 4
  %shr1005 = lshr i32 %622, 1
  store i32 %shr1005, ptr %BitAcc, align 4
  br label %do.body1008

do.body1008:                                      ; preds = %if.then972, %do.body1003
  %623 = load i32, ptr %RunLength, align 4
  %624 = load ptr, ptr %pa, align 8
  %incdec.ptr1010 = getelementptr inbounds i32, ptr %624, i64 1
  store ptr %incdec.ptr1010, ptr %pa, align 8
  store i32 %623, ptr %624, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.body1014

do.body1014:                                      ; preds = %sw.bb868, %if.end899, %badMain2d, %badBlack2d, %badWhite2d, %do.body1008, %while.end970
  %625 = load i32, ptr %RunLength, align 4
  %tobool1015.not = icmp eq i32 %625, 0
  br i1 %tobool1015.not, label %if.end1022, label %do.body1017

do.body1017:                                      ; preds = %do.body1014
  %626 = load i32, ptr %RunLength, align 4
  %627 = load ptr, ptr %pa, align 8
  %incdec.ptr1019 = getelementptr inbounds i32, ptr %627, i64 1
  store ptr %incdec.ptr1019, ptr %pa, align 8
  store i32 %626, ptr %627, align 4
  store i32 0, ptr %RunLength, align 4
  br label %if.end1022

if.end1022:                                       ; preds = %do.body1017, %do.body1014
  %628 = load i32, ptr %a0, align 4
  %629 = load i32, ptr %lastx, align 4
  %cmp1023.not = icmp eq i32 %628, %629
  br i1 %cmp1023.not, label %if.end1083, label %if.then1025

if.then1025:                                      ; preds = %if.end1022
  %630 = load ptr, ptr %tif.addr, align 8
  %631 = load i32, ptr %a0, align 4
  %632 = load i32, ptr %lastx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a0.addr.i66)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lastx.addr.i67)
  store i32 %631, ptr %a0.addr.i66, align 4
  store i32 %632, ptr %lastx.addr.i67, align 4
  %633 = load ptr, ptr %630, align 8
  %cmp.i68 = icmp ult i32 %631, %632
  %cond.i69 = select i1 %cmp.i68, ptr @.str.37, ptr @.str.38
  %tif_row.i70 = getelementptr inbounds %struct.tiff, ptr %630, i64 0, i32 11
  %634 = load i32, ptr %tif_row.i70, align 8
  %635 = load i32, ptr %a0.addr.i66, align 4
  %conv.i71 = zext i32 %635 to i64
  %636 = load i32, ptr %lastx.addr.i67, align 4
  %conv1.i72 = zext i32 %636 to i64
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef nonnull @.str.36, ptr noundef %633, ptr noundef nonnull %cond.i69, i32 noundef %634, i64 noundef %conv.i71, i64 noundef %conv1.i72) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a0.addr.i66)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lastx.addr.i67)
  br label %while.cond1026

while.cond1026:                                   ; preds = %while.body1033, %if.then1025
  %637 = load i32, ptr %a0, align 4
  %638 = load i32, ptr %lastx, align 4
  %cmp1027 = icmp sgt i32 %637, %638
  %639 = load ptr, ptr %pa, align 8
  %640 = load ptr, ptr %thisrun, align 8
  %cmp1030 = icmp ugt ptr %639, %640
  %641 = select i1 %cmp1027, i1 %cmp1030, i1 false
  br i1 %641, label %while.body1033, label %while.end1036

while.body1033:                                   ; preds = %while.cond1026
  %642 = load ptr, ptr %pa, align 8
  %incdec.ptr1034 = getelementptr inbounds i32, ptr %642, i64 -1
  store ptr %incdec.ptr1034, ptr %pa, align 8
  %643 = load i32, ptr %incdec.ptr1034, align 4
  %644 = load i32, ptr %a0, align 4
  %sub1035 = sub i32 %644, %643
  store i32 %sub1035, ptr %a0, align 4
  br label %while.cond1026, !llvm.loop !42

while.end1036:                                    ; preds = %while.cond1026
  %645 = load i32, ptr %a0, align 4
  %646 = load i32, ptr %lastx, align 4
  %cmp1037 = icmp slt i32 %645, %646
  br i1 %cmp1037, label %if.then1039, label %if.else1064

if.then1039:                                      ; preds = %while.end1036
  %647 = load i32, ptr %a0, align 4
  %cmp1040 = icmp slt i32 %647, 0
  br i1 %cmp1040, label %if.then1042, label %if.end1043

if.then1042:                                      ; preds = %if.then1039
  store i32 0, ptr %a0, align 4
  br label %if.end1043

if.end1043:                                       ; preds = %if.then1042, %if.then1039
  %648 = load ptr, ptr %pa, align 8
  %649 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast1044 = ptrtoint ptr %648 to i64
  %sub.ptr.rhs.cast1045 = ptrtoint ptr %649 to i64
  %sub.ptr.sub1046 = sub i64 %sub.ptr.lhs.cast1044, %sub.ptr.rhs.cast1045
  %650 = and i64 %sub.ptr.sub1046, 4
  %tobool1049.not = icmp eq i64 %650, 0
  br i1 %tobool1049.not, label %do.body1057, label %do.body1051

do.body1051:                                      ; preds = %if.end1043
  %651 = load i32, ptr %RunLength, align 4
  %652 = load ptr, ptr %pa, align 8
  %incdec.ptr1053 = getelementptr inbounds i32, ptr %652, i64 1
  store ptr %incdec.ptr1053, ptr %pa, align 8
  store i32 %651, ptr %652, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.body1057

do.body1057:                                      ; preds = %if.end1043, %do.body1051
  %653 = load i32, ptr %RunLength, align 4
  %654 = load i32, ptr %lastx, align 4
  %655 = load i32, ptr %a0, align 4
  %sub1058 = sub nsw i32 %654, %655
  %add1059 = add nsw i32 %653, %sub1058
  %656 = load ptr, ptr %pa, align 8
  %incdec.ptr1060 = getelementptr inbounds i32, ptr %656, i64 1
  store ptr %incdec.ptr1060, ptr %pa, align 8
  store i32 %add1059, ptr %656, align 4
  %657 = load i32, ptr %lastx, align 4
  store i32 %657, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %if.end1083

if.else1064:                                      ; preds = %while.end1036
  %658 = load i32, ptr %a0, align 4
  %659 = load i32, ptr %lastx, align 4
  %cmp1065 = icmp sgt i32 %658, %659
  br i1 %cmp1065, label %do.body1068, label %if.end1083

do.body1068:                                      ; preds = %if.else1064
  %660 = load i32, ptr %RunLength, align 4
  %661 = load i32, ptr %lastx, align 4
  %add1069 = add nsw i32 %660, %661
  %662 = load ptr, ptr %pa, align 8
  %incdec.ptr1070 = getelementptr inbounds i32, ptr %662, i64 1
  store ptr %incdec.ptr1070, ptr %pa, align 8
  store i32 %add1069, ptr %662, align 4
  %663 = load i32, ptr %a0, align 4
  %add1071 = add nsw i32 %663, %661
  store i32 %add1071, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %664 = load i32, ptr %RunLength, align 4
  %665 = load ptr, ptr %pa, align 8
  %incdec.ptr1075 = getelementptr inbounds i32, ptr %665, i64 1
  store ptr %incdec.ptr1075, ptr %pa, align 8
  store i32 %664, ptr %665, align 4
  store i32 0, ptr %RunLength, align 4
  br label %if.end1083

if.end1083:                                       ; preds = %if.end1022, %if.else1064, %do.body1068, %do.body1057, %if.end333, %if.else375, %do.body379, %do.body368
  %666 = load ptr, ptr %sp, align 8
  %fill = getelementptr inbounds %struct.Fax3DecodeState, ptr %666, i64 0, i32 5
  %667 = load ptr, ptr %fill, align 8
  %668 = load ptr, ptr %buf.addr, align 8
  %669 = load ptr, ptr %thisrun, align 8
  %670 = load ptr, ptr %pa, align 8
  %671 = load i32, ptr %lastx, align 4
  call void %667(ptr noundef %668, ptr noundef %669, ptr noundef %670, i32 noundef %671) #6
  %672 = load i32, ptr %RunLength, align 4
  %673 = load ptr, ptr %pa, align 8
  %incdec.ptr1086 = getelementptr inbounds i32, ptr %673, i64 1
  store ptr %incdec.ptr1086, ptr %pa, align 8
  store i32 %672, ptr %673, align 4
  store i32 0, ptr %RunLength, align 4
  %674 = load ptr, ptr %sp, align 8
  %curruns1089 = getelementptr inbounds %struct.Fax3DecodeState, ptr %674, i64 0, i32 8
  %675 = load ptr, ptr %curruns1089, align 8
  %refruns1090 = getelementptr inbounds %struct.Fax3DecodeState, ptr %674, i64 0, i32 7
  %676 = load ptr, ptr %refruns1090, align 8
  %curruns1091 = getelementptr inbounds %struct.Fax3DecodeState, ptr %674, i64 0, i32 8
  store ptr %676, ptr %curruns1091, align 8
  %677 = load ptr, ptr %sp, align 8
  %refruns1092 = getelementptr inbounds %struct.Fax3DecodeState, ptr %677, i64 0, i32 7
  store ptr %675, ptr %refruns1092, align 8
  %rowbytes = getelementptr inbounds %struct.Fax3BaseState, ptr %677, i64 0, i32 1
  %678 = load i32, ptr %rowbytes, align 4
  %679 = load ptr, ptr %buf.addr, align 8
  %idx.ext1094 = zext i32 %678 to i64
  %add.ptr1095 = getelementptr inbounds i8, ptr %679, i64 %idx.ext1094
  store ptr %add.ptr1095, ptr %buf.addr, align 8
  %680 = load ptr, ptr %sp, align 8
  %rowbytes1097 = getelementptr inbounds %struct.Fax3BaseState, ptr %680, i64 0, i32 1
  %681 = load i32, ptr %rowbytes1097, align 4
  %682 = load i32, ptr %occ.addr, align 4
  %sub1098 = sub i32 %682, %681
  store i32 %sub1098, ptr %occ.addr, align 4
  %cmp1099.not = icmp eq i32 %682, %681
  br i1 %cmp1099.not, label %if.end1102, label %if.then1101

if.then1101:                                      ; preds = %if.end1083
  %683 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %683, i64 0, i32 11
  %684 = load i32, ptr %tif_row, align 8
  %inc = add i32 %684, 1
  store i32 %inc, ptr %tif_row, align 8
  br label %if.end1102

if.end1102:                                       ; preds = %if.then1101, %if.end1083
  br label %while.cond, !llvm.loop !43

do.body1103:                                      ; preds = %if.then13, %if.then51, %if.then95
  %685 = load i32, ptr %RunLength, align 4
  %tobool1104.not = icmp eq i32 %685, 0
  br i1 %tobool1104.not, label %if.end1111, label %do.body1106

do.body1106:                                      ; preds = %do.body1103
  %686 = load i32, ptr %RunLength, align 4
  %687 = load ptr, ptr %pa, align 8
  %incdec.ptr1108 = getelementptr inbounds i32, ptr %687, i64 1
  store ptr %incdec.ptr1108, ptr %pa, align 8
  store i32 %686, ptr %687, align 4
  store i32 0, ptr %RunLength, align 4
  br label %if.end1111

if.end1111:                                       ; preds = %do.body1106, %do.body1103
  %688 = load i32, ptr %a0, align 4
  %689 = load i32, ptr %lastx, align 4
  %cmp1112.not = icmp eq i32 %688, %689
  br i1 %cmp1112.not, label %EOF2Da, label %if.then1114

if.then1114:                                      ; preds = %if.end1111
  %690 = load ptr, ptr %tif.addr, align 8
  %691 = load i32, ptr %a0, align 4
  %692 = load i32, ptr %lastx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a0.addr.i75)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lastx.addr.i76)
  store i32 %691, ptr %a0.addr.i75, align 4
  store i32 %692, ptr %lastx.addr.i76, align 4
  %693 = load ptr, ptr %690, align 8
  %cmp.i77 = icmp ult i32 %691, %692
  %cond.i78 = select i1 %cmp.i77, ptr @.str.37, ptr @.str.38
  %tif_row.i79 = getelementptr inbounds %struct.tiff, ptr %690, i64 0, i32 11
  %694 = load i32, ptr %tif_row.i79, align 8
  %695 = load i32, ptr %a0.addr.i75, align 4
  %conv.i80 = zext i32 %695 to i64
  %696 = load i32, ptr %lastx.addr.i76, align 4
  %conv1.i81 = zext i32 %696 to i64
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef nonnull @.str.36, ptr noundef %693, ptr noundef nonnull %cond.i78, i32 noundef %694, i64 noundef %conv.i80, i64 noundef %conv1.i81) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a0.addr.i75)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lastx.addr.i76)
  br label %while.cond1115

while.cond1115:                                   ; preds = %while.body1122, %if.then1114
  %697 = load i32, ptr %a0, align 4
  %698 = load i32, ptr %lastx, align 4
  %cmp1116 = icmp sgt i32 %697, %698
  %699 = load ptr, ptr %pa, align 8
  %700 = load ptr, ptr %thisrun, align 8
  %cmp1119 = icmp ugt ptr %699, %700
  %701 = select i1 %cmp1116, i1 %cmp1119, i1 false
  br i1 %701, label %while.body1122, label %while.end1125

while.body1122:                                   ; preds = %while.cond1115
  %702 = load ptr, ptr %pa, align 8
  %incdec.ptr1123 = getelementptr inbounds i32, ptr %702, i64 -1
  store ptr %incdec.ptr1123, ptr %pa, align 8
  %703 = load i32, ptr %incdec.ptr1123, align 4
  %704 = load i32, ptr %a0, align 4
  %sub1124 = sub i32 %704, %703
  store i32 %sub1124, ptr %a0, align 4
  br label %while.cond1115, !llvm.loop !44

while.end1125:                                    ; preds = %while.cond1115
  %705 = load i32, ptr %a0, align 4
  %706 = load i32, ptr %lastx, align 4
  %cmp1126 = icmp slt i32 %705, %706
  br i1 %cmp1126, label %if.then1128, label %if.else1153

if.then1128:                                      ; preds = %while.end1125
  %707 = load i32, ptr %a0, align 4
  %cmp1129 = icmp slt i32 %707, 0
  br i1 %cmp1129, label %if.then1131, label %if.end1132

if.then1131:                                      ; preds = %if.then1128
  store i32 0, ptr %a0, align 4
  br label %if.end1132

if.end1132:                                       ; preds = %if.then1131, %if.then1128
  %708 = load ptr, ptr %pa, align 8
  %709 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast1133 = ptrtoint ptr %708 to i64
  %sub.ptr.rhs.cast1134 = ptrtoint ptr %709 to i64
  %sub.ptr.sub1135 = sub i64 %sub.ptr.lhs.cast1133, %sub.ptr.rhs.cast1134
  %710 = and i64 %sub.ptr.sub1135, 4
  %tobool1138.not = icmp eq i64 %710, 0
  br i1 %tobool1138.not, label %do.body1146, label %do.body1140

do.body1140:                                      ; preds = %if.end1132
  %711 = load i32, ptr %RunLength, align 4
  %712 = load ptr, ptr %pa, align 8
  %incdec.ptr1142 = getelementptr inbounds i32, ptr %712, i64 1
  store ptr %incdec.ptr1142, ptr %pa, align 8
  store i32 %711, ptr %712, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.body1146

do.body1146:                                      ; preds = %if.end1132, %do.body1140
  %713 = load i32, ptr %RunLength, align 4
  %714 = load i32, ptr %lastx, align 4
  %715 = load i32, ptr %a0, align 4
  %sub1147 = sub nsw i32 %714, %715
  %add1148 = add nsw i32 %713, %sub1147
  %716 = load ptr, ptr %pa, align 8
  %incdec.ptr1149 = getelementptr inbounds i32, ptr %716, i64 1
  store ptr %incdec.ptr1149, ptr %pa, align 8
  store i32 %add1148, ptr %716, align 4
  %717 = load i32, ptr %lastx, align 4
  store i32 %717, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %EOF2Da

if.else1153:                                      ; preds = %while.end1125
  %718 = load i32, ptr %a0, align 4
  %719 = load i32, ptr %lastx, align 4
  %cmp1154 = icmp sgt i32 %718, %719
  br i1 %cmp1154, label %do.body1157, label %EOF2Da

do.body1157:                                      ; preds = %if.else1153
  %720 = load i32, ptr %RunLength, align 4
  %721 = load i32, ptr %lastx, align 4
  %add1158 = add nsw i32 %720, %721
  %722 = load ptr, ptr %pa, align 8
  %incdec.ptr1159 = getelementptr inbounds i32, ptr %722, i64 1
  store ptr %incdec.ptr1159, ptr %pa, align 8
  store i32 %add1158, ptr %722, align 4
  %723 = load i32, ptr %a0, align 4
  %add1160 = add nsw i32 %723, %721
  store i32 %add1160, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %724 = load i32, ptr %RunLength, align 4
  %725 = load ptr, ptr %pa, align 8
  %incdec.ptr1164 = getelementptr inbounds i32, ptr %725, i64 1
  store ptr %incdec.ptr1164, ptr %pa, align 8
  store i32 %724, ptr %725, align 4
  store i32 0, ptr %RunLength, align 4
  br label %EOF2Da

EOF2Da:                                           ; preds = %do.body1146, %do.body1157, %if.else1153, %if.end1111, %do.body944, %do.body955, %if.else951, %if.end909, %do.body300, %do.body311, %if.else307, %if.end271
  %726 = load ptr, ptr %sp, align 8
  %fill1171 = getelementptr inbounds %struct.Fax3DecodeState, ptr %726, i64 0, i32 5
  %727 = load ptr, ptr %fill1171, align 8
  %728 = load ptr, ptr %buf.addr, align 8
  %729 = load ptr, ptr %thisrun, align 8
  %730 = load ptr, ptr %pa, align 8
  %731 = load i32, ptr %lastx, align 4
  call void %727(ptr noundef %728, ptr noundef %729, ptr noundef %730, i32 noundef %731) #6
  %732 = load i32, ptr %BitsAvail, align 4
  %733 = load ptr, ptr %sp, align 8
  %bit1173 = getelementptr inbounds %struct.Fax3DecodeState, ptr %733, i64 0, i32 3
  store i32 %732, ptr %bit1173, align 4
  %734 = load i32, ptr %BitAcc, align 4
  %data1174 = getelementptr inbounds %struct.Fax3DecodeState, ptr %733, i64 0, i32 2
  store i32 %734, ptr %data1174, align 8
  %735 = load i32, ptr %EOLcnt, align 4
  %736 = load ptr, ptr %sp, align 8
  %EOLcnt1175 = getelementptr inbounds %struct.Fax3DecodeState, ptr %736, i64 0, i32 4
  store i32 %735, ptr %EOLcnt1175, align 8
  %737 = load ptr, ptr %cp, align 8
  %738 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp1176 = getelementptr inbounds %struct.tiff, ptr %738, i64 0, i32 42
  %739 = load ptr, ptr %tif_rawcp1176, align 8
  %sub.ptr.lhs.cast1177 = ptrtoint ptr %737 to i64
  %sub.ptr.rhs.cast1178 = ptrtoint ptr %739 to i64
  %sub.ptr.sub1179.neg = sub i64 %sub.ptr.rhs.cast1178, %sub.ptr.lhs.cast1177
  %tif_rawcc1180 = getelementptr inbounds %struct.tiff, ptr %738, i64 0, i32 43
  %740 = load i32, ptr %tif_rawcc1180, align 8
  %741 = trunc i64 %sub.ptr.sub1179.neg to i32
  %conv1183 = add i32 %740, %741
  store i32 %conv1183, ptr %tif_rawcc1180, align 8
  %742 = load ptr, ptr %cp, align 8
  %743 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp1184 = getelementptr inbounds %struct.tiff, ptr %743, i64 0, i32 42
  store ptr %742, ptr %tif_rawcp1184, align 8
  br label %return

do.body1187:                                      ; preds = %while.cond
  %744 = load i32, ptr %BitsAvail, align 4
  %745 = load ptr, ptr %sp, align 8
  %bit1188 = getelementptr inbounds %struct.Fax3DecodeState, ptr %745, i64 0, i32 3
  store i32 %744, ptr %bit1188, align 4
  %746 = load i32, ptr %BitAcc, align 4
  %data1189 = getelementptr inbounds %struct.Fax3DecodeState, ptr %745, i64 0, i32 2
  store i32 %746, ptr %data1189, align 8
  %747 = load i32, ptr %EOLcnt, align 4
  %748 = load ptr, ptr %sp, align 8
  %EOLcnt1190 = getelementptr inbounds %struct.Fax3DecodeState, ptr %748, i64 0, i32 4
  store i32 %747, ptr %EOLcnt1190, align 8
  %749 = load ptr, ptr %cp, align 8
  %750 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp1191 = getelementptr inbounds %struct.tiff, ptr %750, i64 0, i32 42
  %751 = load ptr, ptr %tif_rawcp1191, align 8
  %sub.ptr.lhs.cast1192 = ptrtoint ptr %749 to i64
  %sub.ptr.rhs.cast1193 = ptrtoint ptr %751 to i64
  %sub.ptr.sub1194.neg = sub i64 %sub.ptr.rhs.cast1193, %sub.ptr.lhs.cast1192
  %tif_rawcc1195 = getelementptr inbounds %struct.tiff, ptr %750, i64 0, i32 43
  %752 = load i32, ptr %tif_rawcc1195, align 8
  %753 = trunc i64 %sub.ptr.sub1194.neg to i32
  %conv1198 = add i32 %752, %753
  store i32 %conv1198, ptr %tif_rawcc1195, align 8
  %754 = load ptr, ptr %cp, align 8
  %755 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp1199 = getelementptr inbounds %struct.tiff, ptr %755, i64 0, i32 42
  store ptr %754, ptr %tif_rawcp1199, align 8
  br label %return

return:                                           ; preds = %do.body1187, %EOF2Da
  %storemerge = phi i32 [ 1, %do.body1187 ], [ -1, %EOF2Da ]
  ret i32 %storemerge
}

declare void @TIFFWarning(ptr noundef, ptr noundef, ...) #2

declare ptr @TIFFGetBitRevTable(i32 noundef) #2

declare void @_TIFFmemset(ptr noundef, i32 noundef, i32 noundef) #2

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
  %4 = load i32, ptr %groupoptions, align 8
  %and = and i32 %4, 4
  %tobool.not = icmp eq i32 %and, 0
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
  %21 = load i32, ptr %tif_rawcc, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %20, i64 0, i32 41
  %22 = load i32, ptr %tif_rawdatasize, align 8
  %cmp14.not = icmp slt i32 %21, %22
  br i1 %cmp14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %while.body
  %23 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %23) #6
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
  %27 = load i32, ptr %tif_rawcc17, align 8
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %tif_rawcc17, align 8
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
  %31 = load i32, ptr %tif_rawcc25, align 8
  %tif_rawdatasize26 = getelementptr inbounds %struct.tiff, ptr %30, i64 0, i32 41
  %32 = load i32, ptr %tif_rawdatasize26, align 8
  %cmp27.not = icmp slt i32 %31, %32
  br i1 %cmp27.not, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.then24
  %33 = load ptr, ptr %tif.addr, align 8
  %call30 = call i32 @TIFFFlushData1(ptr noundef %33) #6
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
  %37 = load i32, ptr %tif_rawcc35, align 8
  %inc36 = add nsw i32 %37, 1
  store i32 %inc36, ptr %tif_rawcc35, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then, %if.end31, %while.end, %entry
  store i32 1, ptr %code, align 4
  store i32 12, ptr %length, align 4
  %38 = load ptr, ptr %sp, align 8
  %groupoptions41 = getelementptr inbounds %struct.Fax3BaseState, ptr %38, i64 0, i32 6
  %39 = load i32, ptr %groupoptions41, align 8
  %and42 = and i32 %39, 1
  %tobool43.not = icmp eq i32 %and42, 0
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
  %52 = load i32, ptr %tif_rawcc59, align 8
  %tif_rawdatasize60 = getelementptr inbounds %struct.tiff, ptr %51, i64 0, i32 41
  %53 = load i32, ptr %tif_rawdatasize60, align 8
  %cmp61.not = icmp slt i32 %52, %53
  br i1 %cmp61.not, label %if.end65, label %if.then63

if.then63:                                        ; preds = %while.body54
  %54 = load ptr, ptr %tif.addr, align 8
  %call64 = call i32 @TIFFFlushData1(ptr noundef %54) #6
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
  %58 = load i32, ptr %tif_rawcc69, align 8
  %inc70 = add nsw i32 %58, 1
  store i32 %inc70, ptr %tif_rawcc69, align 8
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
  %67 = load i32, ptr %tif_rawcc82, align 8
  %tif_rawdatasize83 = getelementptr inbounds %struct.tiff, ptr %66, i64 0, i32 41
  %68 = load i32, ptr %tif_rawdatasize83, align 8
  %cmp84.not = icmp slt i32 %67, %68
  br i1 %cmp84.not, label %if.end88, label %if.then86

if.then86:                                        ; preds = %if.then81
  %69 = load ptr, ptr %tif.addr, align 8
  %call87 = call i32 @TIFFFlushData1(ptr noundef %69) #6
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
  %73 = load i32, ptr %tif_rawcc92, align 8
  %inc93 = add nsw i32 %73, 1
  store i32 %inc93, ptr %tif_rawcc92, align 8
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
define internal i32 @Fax3Encode1DRow(ptr noundef %tif, ptr noundef %bp, i32 noundef %bits) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %bits.addr = alloca i32, align 4
  %sp = alloca ptr, align 8
  %bs = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %bits, ptr %bits.addr, align 4
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  store i32 0, ptr %bs, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %1 = load ptr, ptr %bp.addr, align 8
  %2 = load i32, ptr %bs, align 4
  %3 = load i32, ptr %bits.addr, align 4
  %call = call i32 @find0span(ptr noundef %1, i32 noundef %2, i32 noundef %3)
  %4 = load ptr, ptr %tif.addr, align 8
  call void @putspan(ptr noundef %4, i32 noundef %call, ptr noundef nonnull @TIFFFaxWhiteCodes)
  %add = add i32 %2, %call
  store i32 %add, ptr %bs, align 4
  %cmp.not = icmp ult i32 %add, %3
  br i1 %cmp.not, label %if.end, label %for.end

if.end:                                           ; preds = %for.cond
  %5 = load ptr, ptr %bp.addr, align 8
  %6 = load i32, ptr %bs, align 4
  %7 = load i32, ptr %bits.addr, align 4
  %call1 = call i32 @find1span(ptr noundef %5, i32 noundef %6, i32 noundef %7)
  %8 = load ptr, ptr %tif.addr, align 8
  call void @putspan(ptr noundef %8, i32 noundef %call1, ptr noundef nonnull @TIFFFaxBlackCodes)
  %add2 = add i32 %6, %call1
  store i32 %add2, ptr %bs, align 4
  %cmp3.not = icmp ult i32 %add2, %7
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
  %14 = load i32, ptr %tif_rawcc, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %13, i64 0, i32 41
  %15 = load i32, ptr %tif_rawdatasize, align 8
  %cmp9.not = icmp slt i32 %14, %15
  br i1 %cmp9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.then8
  %16 = load ptr, ptr %tif.addr, align 8
  %call11 = call i32 @TIFFFlushData1(ptr noundef %16) #6
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
  %21 = load i32, ptr %tif_rawcc13, align 8
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %tif_rawcc13, align 8
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
  %29 = load i32, ptr %tif_rawcc26, align 8
  %tif_rawdatasize27 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 41
  %30 = load i32, ptr %tif_rawdatasize27, align 8
  %cmp28.not = icmp slt i32 %29, %30
  br i1 %cmp28.not, label %if.end32, label %if.then30

if.then30:                                        ; preds = %if.then25
  %31 = load ptr, ptr %tif.addr, align 8
  %call31 = call i32 @TIFFFlushData1(ptr noundef %31) #6
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
  %36 = load i32, ptr %tif_rawcc37, align 8
  %inc38 = add nsw i32 %36, 1
  store i32 %inc38, ptr %tif_rawcc37, align 8
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
define internal i32 @Fax3Encode2DRow(ptr noundef %tif, ptr noundef %bp, ptr noundef %rp, i32 noundef %bits) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %rp.addr = alloca ptr, align 8
  %bits.addr = alloca i32, align 4
  %a0 = alloca i32, align 4
  %a1 = alloca i32, align 4
  %b1 = alloca i32, align 4
  %a2 = alloca i32, align 4
  %b2 = alloca i32, align 4
  %d = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store ptr %rp, ptr %rp.addr, align 8
  store i32 %bits, ptr %bits.addr, align 4
  store i32 0, ptr %a0, align 4
  %0 = load i8, ptr %bp, align 1
  %cmp.not = icmp sgt i8 %0, -1
  br i1 %cmp.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load ptr, ptr %bp.addr, align 8
  %2 = load i32, ptr %bits.addr, align 4
  %call = call i32 @find0span(ptr noundef %1, i32 noundef 0, i32 noundef %2)
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %call, %cond.false ], [ 0, %entry ]
  store i32 %cond, ptr %a1, align 4
  %3 = load ptr, ptr %rp.addr, align 8
  %4 = load i8, ptr %3, align 1
  %cmp6.not = icmp sgt i8 %4, -1
  br i1 %cmp6.not, label %cond.false9, label %cond.end12

cond.false9:                                      ; preds = %cond.end
  %5 = load ptr, ptr %rp.addr, align 8
  %6 = load i32, ptr %bits.addr, align 4
  %call10 = call i32 @find0span(ptr noundef %5, i32 noundef 0, i32 noundef %6)
  br label %cond.end12

cond.end12:                                       ; preds = %cond.end, %cond.false9
  %cond13 = phi i32 [ %call10, %cond.false9 ], [ 0, %cond.end ]
  br label %for.cond

for.cond:                                         ; preds = %cond.end146, %cond.end12
  %storemerge = phi i32 [ %cond13, %cond.end12 ], [ %add148, %cond.end146 ]
  store i32 %storemerge, ptr %b1, align 4
  %7 = load i32, ptr %bits.addr, align 4
  %cmp14 = icmp ult i32 %storemerge, %7
  br i1 %cmp14, label %cond.true16, label %cond.false30

cond.true16:                                      ; preds = %for.cond
  %8 = load i32, ptr %b1, align 4
  %9 = load ptr, ptr %rp.addr, align 8
  %shr17 = lshr i32 %8, 3
  %idxprom = zext i32 %shr17 to i64
  %arrayidx18 = getelementptr inbounds i8, ptr %9, i64 %idxprom
  %10 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %10 to i32
  %11 = load i32, ptr %b1, align 4
  %and20 = and i32 %11, 7
  %sub = xor i32 %and20, 7
  %12 = shl i32 1, %sub
  %13 = and i32 %12, %conv19
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %cond.false25, label %cond.true23

cond.true23:                                      ; preds = %cond.true16
  %14 = load ptr, ptr %rp.addr, align 8
  %15 = load i32, ptr %b1, align 4
  %16 = load i32, ptr %bits.addr, align 4
  %call24 = call i32 @find1span(ptr noundef %14, i32 noundef %15, i32 noundef %16)
  br label %cond.end27

cond.false25:                                     ; preds = %cond.true16
  %17 = load ptr, ptr %rp.addr, align 8
  %18 = load i32, ptr %b1, align 4
  %19 = load i32, ptr %bits.addr, align 4
  %call26 = call i32 @find0span(ptr noundef %17, i32 noundef %18, i32 noundef %19)
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false25, %cond.true23
  %cond28 = phi i32 [ %call24, %cond.true23 ], [ %call26, %cond.false25 ]
  %add29 = add i32 %8, %cond28
  br label %cond.end31

cond.false30:                                     ; preds = %for.cond
  %20 = load i32, ptr %bits.addr, align 4
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false30, %cond.end27
  %cond32 = phi i32 [ %add29, %cond.end27 ], [ %20, %cond.false30 ]
  store i32 %cond32, ptr %b2, align 4
  %21 = load i32, ptr %a1, align 4
  %cmp33.not = icmp ult i32 %cond32, %21
  br i1 %cmp33.not, label %if.else93, label %if.then

if.then:                                          ; preds = %cond.end31
  %22 = load i32, ptr %b1, align 4
  %23 = load i32, ptr %a1, align 4
  %sub35 = sub i32 %22, %23
  store i32 %sub35, ptr %d, align 4
  %cmp36 = icmp sgt i32 %sub35, -4
  %24 = load i32, ptr %d, align 4
  %cmp38 = icmp slt i32 %24, 4
  %or.cond = select i1 %cmp36, i1 %cmp38, i1 false
  br i1 %or.cond, label %if.else83, label %if.then40

if.then40:                                        ; preds = %if.then
  %25 = load i32, ptr %a1, align 4
  %26 = load i32, ptr %bits.addr, align 4
  %cmp41 = icmp ult i32 %25, %26
  br i1 %cmp41, label %cond.true43, label %cond.false60

cond.true43:                                      ; preds = %if.then40
  %27 = load i32, ptr %a1, align 4
  %28 = load ptr, ptr %bp.addr, align 8
  %shr44 = lshr i32 %27, 3
  %idxprom45 = zext i32 %shr44 to i64
  %arrayidx46 = getelementptr inbounds i8, ptr %28, i64 %idxprom45
  %29 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %29 to i32
  %30 = load i32, ptr %a1, align 4
  %and48 = and i32 %30, 7
  %sub49 = xor i32 %and48, 7
  %31 = shl i32 1, %sub49
  %32 = and i32 %31, %conv47
  %tobool52.not = icmp eq i32 %32, 0
  br i1 %tobool52.not, label %cond.false55, label %cond.true53

cond.true53:                                      ; preds = %cond.true43
  %33 = load ptr, ptr %bp.addr, align 8
  %34 = load i32, ptr %a1, align 4
  %35 = load i32, ptr %bits.addr, align 4
  %call54 = call i32 @find1span(ptr noundef %33, i32 noundef %34, i32 noundef %35)
  br label %cond.end57

cond.false55:                                     ; preds = %cond.true43
  %36 = load ptr, ptr %bp.addr, align 8
  %37 = load i32, ptr %a1, align 4
  %38 = load i32, ptr %bits.addr, align 4
  %call56 = call i32 @find0span(ptr noundef %36, i32 noundef %37, i32 noundef %38)
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false55, %cond.true53
  %cond58 = phi i32 [ %call54, %cond.true53 ], [ %call56, %cond.false55 ]
  %add59 = add i32 %27, %cond58
  br label %cond.end61

cond.false60:                                     ; preds = %if.then40
  %39 = load i32, ptr %bits.addr, align 4
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false60, %cond.end57
  %cond62 = phi i32 [ %add59, %cond.end57 ], [ %39, %cond.false60 ]
  store i32 %cond62, ptr %a2, align 4
  %40 = load ptr, ptr %tif.addr, align 8
  call void @Fax3PutBits(ptr noundef %40, i32 noundef 1, i32 noundef 3)
  %41 = load i32, ptr %a0, align 4
  %42 = load i32, ptr %a1, align 4
  %add65 = sub i32 0, %42
  %cmp66 = icmp eq i32 %41, %add65
  br i1 %cmp66, label %if.then78, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end61
  %43 = load ptr, ptr %bp.addr, align 8
  %44 = load i32, ptr %a0, align 4
  %shr68 = lshr i32 %44, 3
  %idxprom69 = zext i32 %shr68 to i64
  %arrayidx70 = getelementptr inbounds i8, ptr %43, i64 %idxprom69
  %45 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %45 to i32
  %and72 = and i32 %44, 7
  %sub73 = xor i32 %and72, 7
  %46 = shl i32 1, %sub73
  %47 = and i32 %46, %conv71
  %cmp76 = icmp eq i32 %47, 0
  br i1 %cmp76, label %if.then78, label %if.else

if.then78:                                        ; preds = %lor.lhs.false, %cond.end61
  %48 = load ptr, ptr %tif.addr, align 8
  %49 = load i32, ptr %a1, align 4
  %50 = load i32, ptr %a0, align 4
  %sub79 = sub i32 %49, %50
  call void @putspan(ptr noundef %48, i32 noundef %sub79, ptr noundef nonnull @TIFFFaxWhiteCodes)
  %51 = load i32, ptr %a2, align 4
  %sub80 = sub i32 %51, %49
  call void @putspan(ptr noundef %48, i32 noundef %sub80, ptr noundef nonnull @TIFFFaxBlackCodes)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %52 = load ptr, ptr %tif.addr, align 8
  %53 = load i32, ptr %a1, align 4
  %54 = load i32, ptr %a0, align 4
  %sub81 = sub i32 %53, %54
  call void @putspan(ptr noundef %52, i32 noundef %sub81, ptr noundef nonnull @TIFFFaxBlackCodes)
  %55 = load i32, ptr %a2, align 4
  %sub82 = sub i32 %55, %53
  call void @putspan(ptr noundef %52, i32 noundef %sub82, ptr noundef nonnull @TIFFFaxWhiteCodes)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then78
  %56 = load i32, ptr %a2, align 4
  br label %if.end96

if.else83:                                        ; preds = %if.then
  %57 = load ptr, ptr %tif.addr, align 8
  %58 = load i32, ptr %d, align 4
  %add84 = add nsw i32 %58, 3
  %idxprom85 = sext i32 %add84 to i64
  %code = getelementptr inbounds [7 x %struct.tableentry], ptr @vcodes, i64 0, i64 %idxprom85, i32 1
  %59 = load i16, ptr %code, align 2
  %conv87 = zext i16 %59 to i32
  %add88 = add nsw i32 %58, 3
  %idxprom89 = sext i32 %add88 to i64
  %arrayidx90 = getelementptr inbounds [7 x %struct.tableentry], ptr @vcodes, i64 0, i64 %idxprom89
  %60 = load i16, ptr %arrayidx90, align 2
  %conv91 = zext i16 %60 to i32
  call void @Fax3PutBits(ptr noundef %57, i32 noundef %conv87, i32 noundef %conv91)
  %61 = load i32, ptr %a1, align 4
  br label %if.end96

if.else93:                                        ; preds = %cond.end31
  %62 = load ptr, ptr %tif.addr, align 8
  call void @Fax3PutBits(ptr noundef %62, i32 noundef 1, i32 noundef 4)
  %63 = load i32, ptr %b2, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.end, %if.else83, %if.else93
  %storemerge2 = phi i32 [ %63, %if.else93 ], [ %56, %if.end ], [ %61, %if.else83 ]
  store i32 %storemerge2, ptr %a0, align 4
  %64 = load i32, ptr %bits.addr, align 4
  %cmp97.not = icmp ult i32 %storemerge2, %64
  br i1 %cmp97.not, label %if.end100, label %for.end

if.end100:                                        ; preds = %if.end96
  %65 = load i32, ptr %a0, align 4
  %66 = load ptr, ptr %bp.addr, align 8
  %shr101 = lshr i32 %65, 3
  %idxprom102 = zext i32 %shr101 to i64
  %arrayidx103 = getelementptr inbounds i8, ptr %66, i64 %idxprom102
  %67 = load i8, ptr %arrayidx103, align 1
  %conv104 = zext i8 %67 to i32
  %68 = load i32, ptr %a0, align 4
  %and105 = and i32 %68, 7
  %sub106 = xor i32 %and105, 7
  %69 = shl i32 1, %sub106
  %70 = and i32 %69, %conv104
  %tobool109.not = icmp eq i32 %70, 0
  br i1 %tobool109.not, label %cond.false112, label %cond.true110

cond.true110:                                     ; preds = %if.end100
  %71 = load ptr, ptr %bp.addr, align 8
  %72 = load i32, ptr %a0, align 4
  %73 = load i32, ptr %bits.addr, align 4
  %call111 = call i32 @find1span(ptr noundef %71, i32 noundef %72, i32 noundef %73)
  br label %cond.end114

cond.false112:                                    ; preds = %if.end100
  %74 = load ptr, ptr %bp.addr, align 8
  %75 = load i32, ptr %a0, align 4
  %76 = load i32, ptr %bits.addr, align 4
  %call113 = call i32 @find0span(ptr noundef %74, i32 noundef %75, i32 noundef %76)
  br label %cond.end114

cond.end114:                                      ; preds = %cond.false112, %cond.true110
  %cond115 = phi i32 [ %call111, %cond.true110 ], [ %call113, %cond.false112 ]
  %add116 = add i32 %65, %cond115
  store i32 %add116, ptr %a1, align 4
  %77 = load i32, ptr %a0, align 4
  %78 = load ptr, ptr %bp.addr, align 8
  %shr117 = lshr i32 %77, 3
  %idxprom118 = zext i32 %shr117 to i64
  %arrayidx119 = getelementptr inbounds i8, ptr %78, i64 %idxprom118
  %79 = load i8, ptr %arrayidx119, align 1
  %conv120 = zext i8 %79 to i32
  %80 = load i32, ptr %a0, align 4
  %and121 = and i32 %80, 7
  %sub122 = xor i32 %and121, 7
  %81 = shl i32 1, %sub122
  %82 = and i32 %81, %conv120
  %tobool125.not = icmp eq i32 %82, 0
  br i1 %tobool125.not, label %cond.true126, label %cond.false128

cond.true126:                                     ; preds = %cond.end114
  %83 = load ptr, ptr %rp.addr, align 8
  %84 = load i32, ptr %a0, align 4
  %85 = load i32, ptr %bits.addr, align 4
  %call127 = call i32 @find1span(ptr noundef %83, i32 noundef %84, i32 noundef %85)
  br label %cond.end130

cond.false128:                                    ; preds = %cond.end114
  %86 = load ptr, ptr %rp.addr, align 8
  %87 = load i32, ptr %a0, align 4
  %88 = load i32, ptr %bits.addr, align 4
  %call129 = call i32 @find0span(ptr noundef %86, i32 noundef %87, i32 noundef %88)
  br label %cond.end130

cond.end130:                                      ; preds = %cond.false128, %cond.true126
  %cond131 = phi i32 [ %call127, %cond.true126 ], [ %call129, %cond.false128 ]
  %add132 = add i32 %77, %cond131
  store i32 %add132, ptr %b1, align 4
  %89 = load ptr, ptr %bp.addr, align 8
  %90 = load i32, ptr %a0, align 4
  %shr133 = lshr i32 %90, 3
  %idxprom134 = zext i32 %shr133 to i64
  %arrayidx135 = getelementptr inbounds i8, ptr %89, i64 %idxprom134
  %91 = load i8, ptr %arrayidx135, align 1
  %conv136 = zext i8 %91 to i32
  %and137 = and i32 %90, 7
  %sub138 = xor i32 %and137, 7
  %92 = shl i32 1, %sub138
  %93 = and i32 %92, %conv136
  %tobool141.not = icmp eq i32 %93, 0
  br i1 %tobool141.not, label %cond.false144, label %cond.true142

cond.true142:                                     ; preds = %cond.end130
  %94 = load ptr, ptr %rp.addr, align 8
  %95 = load i32, ptr %b1, align 4
  %96 = load i32, ptr %bits.addr, align 4
  %call143 = call i32 @find1span(ptr noundef %94, i32 noundef %95, i32 noundef %96)
  br label %cond.end146

cond.false144:                                    ; preds = %cond.end130
  %97 = load ptr, ptr %rp.addr, align 8
  %98 = load i32, ptr %b1, align 4
  %99 = load i32, ptr %bits.addr, align 4
  %call145 = call i32 @find0span(ptr noundef %97, i32 noundef %98, i32 noundef %99)
  br label %cond.end146

cond.end146:                                      ; preds = %cond.false144, %cond.true142
  %cond147 = phi i32 [ %call143, %cond.true142 ], [ %call145, %cond.false144 ]
  %add148 = add i32 %add132, %cond147
  br label %for.cond

for.end:                                          ; preds = %if.end96
  ret i32 1
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @find0span(ptr noundef %bp, i32 noundef %bs, i32 noundef %be) #0 {
entry:
  %retval = alloca i32, align 4
  %bp.addr = alloca ptr, align 8
  %bs.addr = alloca i32, align 4
  %bits = alloca i32, align 4
  %n = alloca i32, align 4
  %span = alloca i32, align 4
  %lp = alloca ptr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %bs, ptr %bs.addr, align 4
  %sub = sub nsw i32 %be, %bs
  store i32 %sub, ptr %bits, align 4
  %shr = ashr i32 %bs, 3
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, ptr %bp, i64 %idx.ext
  store ptr %add.ptr, ptr %bp.addr, align 8
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %0 = load i32, ptr %bs.addr, align 4
  %and = and i32 %0, 7
  store i32 %and, ptr %n, align 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %1 = load ptr, ptr %bp.addr, align 8
  %2 = load i8, ptr %1, align 1
  %conv = zext i8 %2 to i32
  %3 = load i32, ptr %n, align 4
  %shl = shl i32 %conv, %3
  %and1 = and i32 %shl, 255
  %idxprom = zext i32 %and1 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %4 to i32
  store i32 %conv2, ptr %span, align 4
  %5 = load i32, ptr %n, align 4
  %sub3 = sub nsw i32 8, %5
  %cmp4 = icmp slt i32 %sub3, %conv2
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %6 = load i32, ptr %n, align 4
  %sub7 = sub nsw i32 8, %6
  store i32 %sub7, ptr %span, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %7 = load i32, ptr %span, align 4
  %8 = load i32, ptr %bits, align 4
  %cmp8 = icmp sgt i32 %7, %8
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %9 = load i32, ptr %bits, align 4
  store i32 %9, ptr %span, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %10 = load i32, ptr %n, align 4
  %11 = load i32, ptr %span, align 4
  %add = add nsw i32 %10, %11
  %cmp12 = icmp slt i32 %add, 8
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  %12 = load i32, ptr %span, align 4
  store i32 %12, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end11
  %13 = load i32, ptr %span, align 4
  %14 = load i32, ptr %bits, align 4
  %sub16 = sub nsw i32 %14, %13
  store i32 %sub16, ptr %bits, align 4
  %15 = load ptr, ptr %bp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %incdec.ptr, ptr %bp.addr, align 8
  br label %if.end17

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 0, ptr %span, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end15
  %16 = load i32, ptr %bits, align 4
  %cmp19 = icmp ugt i32 %16, 127
  br i1 %cmp19, label %while.cond, label %if.end52

while.cond:                                       ; preds = %if.end17, %if.end33
  %17 = load ptr, ptr %bp.addr, align 8
  %18 = ptrtoint ptr %17 to i64
  %and22 = and i64 %18, 7
  %cmp23.not = icmp eq i64 %and22, 0
  br i1 %cmp23.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %19 = load ptr, ptr %bp.addr, align 8
  %20 = load i8, ptr %19, align 1
  %cmp26.not = icmp eq i8 %20, 0
  br i1 %cmp26.not, label %if.end33, label %if.then28

if.then28:                                        ; preds = %while.body
  %21 = load i32, ptr %span, align 4
  %22 = load ptr, ptr %bp.addr, align 8
  %23 = load i8, ptr %22, align 1
  %idxprom29 = zext i8 %23 to i64
  %arrayidx30 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %idxprom29
  %24 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %24 to i32
  %add32 = add nsw i32 %21, %conv31
  store i32 %add32, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %while.body
  %25 = load i32, ptr %span, align 4
  %add34 = add nsw i32 %25, 8
  store i32 %add34, ptr %span, align 4
  %26 = load i32, ptr %bits, align 4
  %sub35 = add nsw i32 %26, -8
  store i32 %sub35, ptr %bits, align 4
  %27 = load ptr, ptr %bp.addr, align 8
  %incdec.ptr36 = getelementptr inbounds i8, ptr %27, i64 1
  store ptr %incdec.ptr36, ptr %bp.addr, align 8
  br label %while.cond, !llvm.loop !47

while.end:                                        ; preds = %while.cond
  %28 = load ptr, ptr %bp.addr, align 8
  br label %while.cond37

while.cond37:                                     ; preds = %while.body43, %while.end
  %storemerge = phi ptr [ %28, %while.end ], [ %incdec.ptr50, %while.body43 ]
  store ptr %storemerge, ptr %lp, align 8
  %29 = load i32, ptr %bits, align 4
  %cmp39 = icmp ugt i32 %29, 63
  br i1 %cmp39, label %land.rhs, label %while.end51

land.rhs:                                         ; preds = %while.cond37
  %30 = load ptr, ptr %lp, align 8
  %31 = load i64, ptr %30, align 8
  %cmp41 = icmp eq i64 %31, 0
  br i1 %cmp41, label %while.body43, label %while.end51

while.body43:                                     ; preds = %land.rhs
  %32 = load i32, ptr %span, align 4
  %add45 = add i32 %32, 64
  store i32 %add45, ptr %span, align 4
  %33 = load i32, ptr %bits, align 4
  %sub48 = add i32 %33, -64
  store i32 %sub48, ptr %bits, align 4
  %34 = load ptr, ptr %lp, align 8
  %incdec.ptr50 = getelementptr inbounds i64, ptr %34, i64 1
  br label %while.cond37, !llvm.loop !48

while.end51:                                      ; preds = %while.cond37, %land.rhs
  %35 = load ptr, ptr %lp, align 8
  store ptr %35, ptr %bp.addr, align 8
  br label %if.end52

if.end52:                                         ; preds = %while.end51, %if.end17
  br label %while.cond53

while.cond53:                                     ; preds = %if.end65, %if.end52
  %36 = load i32, ptr %bits, align 4
  %cmp54 = icmp sgt i32 %36, 7
  br i1 %cmp54, label %while.body56, label %while.end69

while.body56:                                     ; preds = %while.cond53
  %37 = load ptr, ptr %bp.addr, align 8
  %38 = load i8, ptr %37, align 1
  %cmp58.not = icmp eq i8 %38, 0
  br i1 %cmp58.not, label %if.end65, label %if.then60

if.then60:                                        ; preds = %while.body56
  %39 = load i32, ptr %span, align 4
  %40 = load ptr, ptr %bp.addr, align 8
  %41 = load i8, ptr %40, align 1
  %idxprom61 = zext i8 %41 to i64
  %arrayidx62 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %idxprom61
  %42 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %42 to i32
  %add64 = add nsw i32 %39, %conv63
  store i32 %add64, ptr %retval, align 4
  br label %return

if.end65:                                         ; preds = %while.body56
  %43 = load i32, ptr %span, align 4
  %add66 = add nsw i32 %43, 8
  store i32 %add66, ptr %span, align 4
  %44 = load i32, ptr %bits, align 4
  %sub67 = add nsw i32 %44, -8
  store i32 %sub67, ptr %bits, align 4
  %45 = load ptr, ptr %bp.addr, align 8
  %incdec.ptr68 = getelementptr inbounds i8, ptr %45, i64 1
  store ptr %incdec.ptr68, ptr %bp.addr, align 8
  br label %while.cond53, !llvm.loop !49

while.end69:                                      ; preds = %while.cond53
  %46 = load i32, ptr %bits, align 4
  %cmp70 = icmp sgt i32 %46, 0
  br i1 %cmp70, label %if.then72, label %if.end79

if.then72:                                        ; preds = %while.end69
  %47 = load ptr, ptr %bp.addr, align 8
  %48 = load i8, ptr %47, align 1
  %idxprom73 = zext i8 %48 to i64
  %arrayidx74 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %idxprom73
  %49 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %49 to i32
  store i32 %conv75, ptr %n, align 4
  %50 = load i32, ptr %bits, align 4
  %cmp76 = icmp slt i32 %50, %conv75
  %51 = load i32, ptr %bits, align 4
  %52 = load i32, ptr %n, align 4
  %cond = select i1 %cmp76, i32 %51, i32 %52
  %53 = load i32, ptr %span, align 4
  %add78 = add nsw i32 %53, %cond
  store i32 %add78, ptr %span, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then72, %while.end69
  %54 = load i32, ptr %span, align 4
  store i32 %54, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end79, %if.then60, %if.then28, %if.then14
  %55 = load i32, ptr %retval, align 4
  ret i32 %55
}

; Function Attrs: nounwind ssp uwtable
define internal void @putspan(ptr noundef %tif, i32 noundef %span, ptr noundef %tab) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %span.addr = alloca i32, align 4
  %tab.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %bit = alloca i32, align 4
  %data = alloca i32, align 4
  %code = alloca i32, align 4
  %length = alloca i32, align 4
  %te = alloca ptr, align 8
  %te41 = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %span, ptr %span.addr, align 4
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
  %3 = load i32, ptr %span.addr, align 4
  %cmp = icmp sgt i32 %3, 2623
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
  %15 = load i32, ptr %tif_rawcc, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %14, i64 0, i32 41
  %16 = load i32, ptr %tif_rawdatasize, align 8
  %cmp11.not = icmp slt i32 %15, %16
  br i1 %cmp11.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body9
  %17 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %17) #6
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
  %21 = load i32, ptr %tif_rawcc14, align 8
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %tif_rawcc14, align 8
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
  %30 = load i32, ptr %tif_rawcc22, align 8
  %tif_rawdatasize23 = getelementptr inbounds %struct.tiff, ptr %29, i64 0, i32 41
  %31 = load i32, ptr %tif_rawdatasize23, align 8
  %cmp24.not = icmp slt i32 %30, %31
  br i1 %cmp24.not, label %if.end28, label %if.then26

if.then26:                                        ; preds = %if.then21
  %32 = load ptr, ptr %tif.addr, align 8
  %call27 = call i32 @TIFFFlushData1(ptr noundef %32) #6
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
  %36 = load i32, ptr %tif_rawcc32, align 8
  %inc33 = add nsw i32 %36, 1
  store i32 %inc33, ptr %tif_rawcc32, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end28, %while.end
  %37 = load ptr, ptr %te, align 8
  %runlen = getelementptr inbounds %struct.tableentry, ptr %37, i64 0, i32 2
  %38 = load i16, ptr %runlen, align 2
  %conv35 = sext i16 %38 to i32
  %39 = load i32, ptr %span.addr, align 4
  %sub36 = sub nsw i32 %39, %conv35
  store i32 %sub36, ptr %span.addr, align 4
  br label %while.cond, !llvm.loop !51

while.end37:                                      ; preds = %while.cond
  %40 = load i32, ptr %span.addr, align 4
  %cmp38 = icmp sgt i32 %40, 63
  br i1 %cmp38, label %if.then40, label %if.end102

if.then40:                                        ; preds = %while.end37
  %41 = load ptr, ptr %tab.addr, align 8
  %42 = load i32, ptr %span.addr, align 4
  %shr42 = ashr i32 %42, 6
  %add = add nsw i32 %shr42, 63
  %idxprom43 = sext i32 %add to i64
  %arrayidx44 = getelementptr inbounds %struct.tableentry, ptr %41, i64 %idxprom43
  store ptr %arrayidx44, ptr %te41, align 8
  %runlen45 = getelementptr inbounds %struct.tableentry, ptr %41, i64 %idxprom43, i32 2
  %43 = load i16, ptr %runlen45, align 2
  %conv46 = sext i16 %43 to i32
  %44 = load i32, ptr %span.addr, align 4
  %mul = and i32 %44, -64
  %cmp48.not = icmp eq i32 %mul, %conv46
  br i1 %cmp48.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then40
  call void @__assert_rtn(ptr noundef nonnull @__func__.putspan, ptr noundef nonnull @.str, i32 noundef 632, ptr noundef nonnull @.str.42) #5
  unreachable

cond.end:                                         ; preds = %if.then40
  %45 = load ptr, ptr %te41, align 8
  %code51 = getelementptr inbounds %struct.tableentry, ptr %45, i64 0, i32 1
  %46 = load i16, ptr %code51, align 2
  %conv52 = zext i16 %46 to i32
  store i32 %conv52, ptr %code, align 4
  %47 = load i16, ptr %45, align 2
  %conv54 = zext i16 %47 to i32
  store i32 %conv54, ptr %length, align 4
  br label %while.cond55

while.cond55:                                     ; preds = %if.end69, %cond.end
  %48 = load i32, ptr %length, align 4
  %49 = load i32, ptr %bit, align 4
  %cmp56 = icmp ugt i32 %48, %49
  br i1 %cmp56, label %while.body58, label %while.end75

while.body58:                                     ; preds = %while.cond55
  %50 = load i32, ptr %code, align 4
  %51 = load i32, ptr %length, align 4
  %52 = load i32, ptr %bit, align 4
  %sub59 = sub i32 %51, %52
  %shr60 = lshr i32 %50, %sub59
  %53 = load i32, ptr %data, align 4
  %or61 = or i32 %53, %shr60
  store i32 %or61, ptr %data, align 4
  %54 = load i32, ptr %length, align 4
  %sub62 = sub i32 %54, %52
  store i32 %sub62, ptr %length, align 4
  %55 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc63 = getelementptr inbounds %struct.tiff, ptr %55, i64 0, i32 43
  %56 = load i32, ptr %tif_rawcc63, align 8
  %tif_rawdatasize64 = getelementptr inbounds %struct.tiff, ptr %55, i64 0, i32 41
  %57 = load i32, ptr %tif_rawdatasize64, align 8
  %cmp65.not = icmp slt i32 %56, %57
  br i1 %cmp65.not, label %if.end69, label %if.then67

if.then67:                                        ; preds = %while.body58
  %58 = load ptr, ptr %tif.addr, align 8
  %call68 = call i32 @TIFFFlushData1(ptr noundef %58) #6
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %while.body58
  %59 = load i32, ptr %data, align 4
  %conv70 = trunc i32 %59 to i8
  %60 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp71 = getelementptr inbounds %struct.tiff, ptr %60, i64 0, i32 42
  %61 = load ptr, ptr %tif_rawcp71, align 8
  %incdec.ptr72 = getelementptr inbounds i8, ptr %61, i64 1
  store ptr %incdec.ptr72, ptr %tif_rawcp71, align 8
  store i8 %conv70, ptr %61, align 1
  %tif_rawcc73 = getelementptr inbounds %struct.tiff, ptr %60, i64 0, i32 43
  %62 = load i32, ptr %tif_rawcc73, align 8
  %inc74 = add nsw i32 %62, 1
  store i32 %inc74, ptr %tif_rawcc73, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %while.cond55, !llvm.loop !52

while.end75:                                      ; preds = %while.cond55
  %63 = load i32, ptr %code, align 4
  %64 = load i32, ptr %length, align 4
  %idxprom76 = zext i32 %64 to i64
  %arrayidx77 = getelementptr inbounds [9 x i32], ptr @_msbmask, i64 0, i64 %idxprom76
  %65 = load i32, ptr %arrayidx77, align 4
  %and78 = and i32 %63, %65
  %66 = load i32, ptr %bit, align 4
  %sub79 = sub i32 %66, %64
  %shl80 = shl i32 %and78, %sub79
  %67 = load i32, ptr %data, align 4
  %or81 = or i32 %67, %shl80
  store i32 %or81, ptr %data, align 4
  %68 = load i32, ptr %length, align 4
  %69 = load i32, ptr %bit, align 4
  %sub82 = sub i32 %69, %68
  store i32 %sub82, ptr %bit, align 4
  %cmp83 = icmp eq i32 %69, %68
  br i1 %cmp83, label %if.then85, label %if.end98

if.then85:                                        ; preds = %while.end75
  %70 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc86 = getelementptr inbounds %struct.tiff, ptr %70, i64 0, i32 43
  %71 = load i32, ptr %tif_rawcc86, align 8
  %tif_rawdatasize87 = getelementptr inbounds %struct.tiff, ptr %70, i64 0, i32 41
  %72 = load i32, ptr %tif_rawdatasize87, align 8
  %cmp88.not = icmp slt i32 %71, %72
  br i1 %cmp88.not, label %if.end92, label %if.then90

if.then90:                                        ; preds = %if.then85
  %73 = load ptr, ptr %tif.addr, align 8
  %call91 = call i32 @TIFFFlushData1(ptr noundef %73) #6
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %if.then85
  %74 = load i32, ptr %data, align 4
  %conv93 = trunc i32 %74 to i8
  %75 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp94 = getelementptr inbounds %struct.tiff, ptr %75, i64 0, i32 42
  %76 = load ptr, ptr %tif_rawcp94, align 8
  %incdec.ptr95 = getelementptr inbounds i8, ptr %76, i64 1
  store ptr %incdec.ptr95, ptr %tif_rawcp94, align 8
  store i8 %conv93, ptr %76, align 1
  %tif_rawcc96 = getelementptr inbounds %struct.tiff, ptr %75, i64 0, i32 43
  %77 = load i32, ptr %tif_rawcc96, align 8
  %inc97 = add nsw i32 %77, 1
  store i32 %inc97, ptr %tif_rawcc96, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.end92, %while.end75
  %78 = load ptr, ptr %te41, align 8
  %runlen99 = getelementptr inbounds %struct.tableentry, ptr %78, i64 0, i32 2
  %79 = load i16, ptr %runlen99, align 2
  %conv100 = sext i16 %79 to i32
  %80 = load i32, ptr %span.addr, align 4
  %sub101 = sub nsw i32 %80, %conv100
  store i32 %sub101, ptr %span.addr, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.end98, %while.end37
  %81 = load ptr, ptr %tab.addr, align 8
  %82 = load i32, ptr %span.addr, align 4
  %idxprom103 = sext i32 %82 to i64
  %code105 = getelementptr inbounds %struct.tableentry, ptr %81, i64 %idxprom103, i32 1
  %83 = load i16, ptr %code105, align 2
  %conv106 = zext i16 %83 to i32
  store i32 %conv106, ptr %code, align 4
  %84 = load ptr, ptr %tab.addr, align 8
  %85 = load i32, ptr %span.addr, align 4
  %idxprom107 = sext i32 %85 to i64
  %arrayidx108 = getelementptr inbounds %struct.tableentry, ptr %84, i64 %idxprom107
  %86 = load i16, ptr %arrayidx108, align 2
  %conv110 = zext i16 %86 to i32
  store i32 %conv110, ptr %length, align 4
  br label %while.cond111

while.cond111:                                    ; preds = %if.end125, %if.end102
  %87 = load i32, ptr %length, align 4
  %88 = load i32, ptr %bit, align 4
  %cmp112 = icmp ugt i32 %87, %88
  br i1 %cmp112, label %while.body114, label %while.end131

while.body114:                                    ; preds = %while.cond111
  %89 = load i32, ptr %code, align 4
  %90 = load i32, ptr %length, align 4
  %91 = load i32, ptr %bit, align 4
  %sub115 = sub i32 %90, %91
  %shr116 = lshr i32 %89, %sub115
  %92 = load i32, ptr %data, align 4
  %or117 = or i32 %92, %shr116
  store i32 %or117, ptr %data, align 4
  %93 = load i32, ptr %length, align 4
  %sub118 = sub i32 %93, %91
  store i32 %sub118, ptr %length, align 4
  %94 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc119 = getelementptr inbounds %struct.tiff, ptr %94, i64 0, i32 43
  %95 = load i32, ptr %tif_rawcc119, align 8
  %tif_rawdatasize120 = getelementptr inbounds %struct.tiff, ptr %94, i64 0, i32 41
  %96 = load i32, ptr %tif_rawdatasize120, align 8
  %cmp121.not = icmp slt i32 %95, %96
  br i1 %cmp121.not, label %if.end125, label %if.then123

if.then123:                                       ; preds = %while.body114
  %97 = load ptr, ptr %tif.addr, align 8
  %call124 = call i32 @TIFFFlushData1(ptr noundef %97) #6
  br label %if.end125

if.end125:                                        ; preds = %if.then123, %while.body114
  %98 = load i32, ptr %data, align 4
  %conv126 = trunc i32 %98 to i8
  %99 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp127 = getelementptr inbounds %struct.tiff, ptr %99, i64 0, i32 42
  %100 = load ptr, ptr %tif_rawcp127, align 8
  %incdec.ptr128 = getelementptr inbounds i8, ptr %100, i64 1
  store ptr %incdec.ptr128, ptr %tif_rawcp127, align 8
  store i8 %conv126, ptr %100, align 1
  %tif_rawcc129 = getelementptr inbounds %struct.tiff, ptr %99, i64 0, i32 43
  %101 = load i32, ptr %tif_rawcc129, align 8
  %inc130 = add nsw i32 %101, 1
  store i32 %inc130, ptr %tif_rawcc129, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %while.cond111, !llvm.loop !53

while.end131:                                     ; preds = %while.cond111
  %102 = load i32, ptr %code, align 4
  %103 = load i32, ptr %length, align 4
  %idxprom132 = zext i32 %103 to i64
  %arrayidx133 = getelementptr inbounds [9 x i32], ptr @_msbmask, i64 0, i64 %idxprom132
  %104 = load i32, ptr %arrayidx133, align 4
  %and134 = and i32 %102, %104
  %105 = load i32, ptr %bit, align 4
  %sub135 = sub i32 %105, %103
  %shl136 = shl i32 %and134, %sub135
  %106 = load i32, ptr %data, align 4
  %or137 = or i32 %106, %shl136
  store i32 %or137, ptr %data, align 4
  %107 = load i32, ptr %length, align 4
  %108 = load i32, ptr %bit, align 4
  %sub138 = sub i32 %108, %107
  store i32 %sub138, ptr %bit, align 4
  %cmp139 = icmp eq i32 %108, %107
  br i1 %cmp139, label %if.then141, label %if.end154

if.then141:                                       ; preds = %while.end131
  %109 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc142 = getelementptr inbounds %struct.tiff, ptr %109, i64 0, i32 43
  %110 = load i32, ptr %tif_rawcc142, align 8
  %tif_rawdatasize143 = getelementptr inbounds %struct.tiff, ptr %109, i64 0, i32 41
  %111 = load i32, ptr %tif_rawdatasize143, align 8
  %cmp144.not = icmp slt i32 %110, %111
  br i1 %cmp144.not, label %if.end148, label %if.then146

if.then146:                                       ; preds = %if.then141
  %112 = load ptr, ptr %tif.addr, align 8
  %call147 = call i32 @TIFFFlushData1(ptr noundef %112) #6
  br label %if.end148

if.end148:                                        ; preds = %if.then146, %if.then141
  %113 = load i32, ptr %data, align 4
  %conv149 = trunc i32 %113 to i8
  %114 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp150 = getelementptr inbounds %struct.tiff, ptr %114, i64 0, i32 42
  %115 = load ptr, ptr %tif_rawcp150, align 8
  %incdec.ptr151 = getelementptr inbounds i8, ptr %115, i64 1
  store ptr %incdec.ptr151, ptr %tif_rawcp150, align 8
  store i8 %conv149, ptr %115, align 1
  %tif_rawcc152 = getelementptr inbounds %struct.tiff, ptr %114, i64 0, i32 43
  %116 = load i32, ptr %tif_rawcc152, align 8
  %inc153 = add nsw i32 %116, 1
  store i32 %inc153, ptr %tif_rawcc152, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.end148, %while.end131
  %117 = load i32, ptr %data, align 4
  %118 = load ptr, ptr %sp, align 8
  %data155 = getelementptr inbounds %struct.Fax3EncodeState, ptr %118, i64 0, i32 1
  store i32 %117, ptr %data155, align 8
  %119 = load i32, ptr %bit, align 4
  %bit156 = getelementptr inbounds %struct.Fax3EncodeState, ptr %118, i64 0, i32 2
  store i32 %119, ptr %bit156, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @find1span(ptr noundef %bp, i32 noundef %bs, i32 noundef %be) #0 {
entry:
  %retval = alloca i32, align 4
  %bp.addr = alloca ptr, align 8
  %bs.addr = alloca i32, align 4
  %bits = alloca i32, align 4
  %n = alloca i32, align 4
  %span = alloca i32, align 4
  %lp = alloca ptr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %bs, ptr %bs.addr, align 4
  %sub = sub nsw i32 %be, %bs
  store i32 %sub, ptr %bits, align 4
  %shr = ashr i32 %bs, 3
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, ptr %bp, i64 %idx.ext
  store ptr %add.ptr, ptr %bp.addr, align 8
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %0 = load i32, ptr %bs.addr, align 4
  %and = and i32 %0, 7
  store i32 %and, ptr %n, align 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %1 = load ptr, ptr %bp.addr, align 8
  %2 = load i8, ptr %1, align 1
  %conv = zext i8 %2 to i32
  %3 = load i32, ptr %n, align 4
  %shl = shl i32 %conv, %3
  %and1 = and i32 %shl, 255
  %idxprom = zext i32 %and1 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %4 to i32
  store i32 %conv2, ptr %span, align 4
  %5 = load i32, ptr %n, align 4
  %sub3 = sub nsw i32 8, %5
  %cmp4 = icmp slt i32 %sub3, %conv2
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %6 = load i32, ptr %n, align 4
  %sub7 = sub nsw i32 8, %6
  store i32 %sub7, ptr %span, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %7 = load i32, ptr %span, align 4
  %8 = load i32, ptr %bits, align 4
  %cmp8 = icmp sgt i32 %7, %8
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %9 = load i32, ptr %bits, align 4
  store i32 %9, ptr %span, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %10 = load i32, ptr %n, align 4
  %11 = load i32, ptr %span, align 4
  %add = add nsw i32 %10, %11
  %cmp12 = icmp slt i32 %add, 8
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  %12 = load i32, ptr %span, align 4
  store i32 %12, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end11
  %13 = load i32, ptr %span, align 4
  %14 = load i32, ptr %bits, align 4
  %sub16 = sub nsw i32 %14, %13
  store i32 %sub16, ptr %bits, align 4
  %15 = load ptr, ptr %bp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %incdec.ptr, ptr %bp.addr, align 8
  br label %if.end17

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 0, ptr %span, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end15
  %16 = load i32, ptr %bits, align 4
  %cmp19 = icmp ugt i32 %16, 127
  br i1 %cmp19, label %while.cond, label %if.end52

while.cond:                                       ; preds = %if.end17, %if.end33
  %17 = load ptr, ptr %bp.addr, align 8
  %18 = ptrtoint ptr %17 to i64
  %and22 = and i64 %18, 7
  %cmp23.not = icmp eq i64 %and22, 0
  br i1 %cmp23.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %19 = load ptr, ptr %bp.addr, align 8
  %20 = load i8, ptr %19, align 1
  %cmp26.not = icmp eq i8 %20, -1
  br i1 %cmp26.not, label %if.end33, label %if.then28

if.then28:                                        ; preds = %while.body
  %21 = load i32, ptr %span, align 4
  %22 = load ptr, ptr %bp.addr, align 8
  %23 = load i8, ptr %22, align 1
  %idxprom29 = zext i8 %23 to i64
  %arrayidx30 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %idxprom29
  %24 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %24 to i32
  %add32 = add nsw i32 %21, %conv31
  store i32 %add32, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %while.body
  %25 = load i32, ptr %span, align 4
  %add34 = add nsw i32 %25, 8
  store i32 %add34, ptr %span, align 4
  %26 = load i32, ptr %bits, align 4
  %sub35 = add nsw i32 %26, -8
  store i32 %sub35, ptr %bits, align 4
  %27 = load ptr, ptr %bp.addr, align 8
  %incdec.ptr36 = getelementptr inbounds i8, ptr %27, i64 1
  store ptr %incdec.ptr36, ptr %bp.addr, align 8
  br label %while.cond, !llvm.loop !54

while.end:                                        ; preds = %while.cond
  %28 = load ptr, ptr %bp.addr, align 8
  br label %while.cond37

while.cond37:                                     ; preds = %while.body43, %while.end
  %storemerge = phi ptr [ %28, %while.end ], [ %incdec.ptr50, %while.body43 ]
  store ptr %storemerge, ptr %lp, align 8
  %29 = load i32, ptr %bits, align 4
  %cmp39 = icmp ugt i32 %29, 63
  br i1 %cmp39, label %land.rhs, label %while.end51

land.rhs:                                         ; preds = %while.cond37
  %30 = load ptr, ptr %lp, align 8
  %31 = load i64, ptr %30, align 8
  %cmp41 = icmp eq i64 %31, -1
  br i1 %cmp41, label %while.body43, label %while.end51

while.body43:                                     ; preds = %land.rhs
  %32 = load i32, ptr %span, align 4
  %add45 = add i32 %32, 64
  store i32 %add45, ptr %span, align 4
  %33 = load i32, ptr %bits, align 4
  %sub48 = add i32 %33, -64
  store i32 %sub48, ptr %bits, align 4
  %34 = load ptr, ptr %lp, align 8
  %incdec.ptr50 = getelementptr inbounds i64, ptr %34, i64 1
  br label %while.cond37, !llvm.loop !55

while.end51:                                      ; preds = %while.cond37, %land.rhs
  %35 = load ptr, ptr %lp, align 8
  store ptr %35, ptr %bp.addr, align 8
  br label %if.end52

if.end52:                                         ; preds = %while.end51, %if.end17
  br label %while.cond53

while.cond53:                                     ; preds = %if.end65, %if.end52
  %36 = load i32, ptr %bits, align 4
  %cmp54 = icmp sgt i32 %36, 7
  br i1 %cmp54, label %while.body56, label %while.end69

while.body56:                                     ; preds = %while.cond53
  %37 = load ptr, ptr %bp.addr, align 8
  %38 = load i8, ptr %37, align 1
  %cmp58.not = icmp eq i8 %38, -1
  br i1 %cmp58.not, label %if.end65, label %if.then60

if.then60:                                        ; preds = %while.body56
  %39 = load i32, ptr %span, align 4
  %40 = load ptr, ptr %bp.addr, align 8
  %41 = load i8, ptr %40, align 1
  %idxprom61 = zext i8 %41 to i64
  %arrayidx62 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %idxprom61
  %42 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %42 to i32
  %add64 = add nsw i32 %39, %conv63
  store i32 %add64, ptr %retval, align 4
  br label %return

if.end65:                                         ; preds = %while.body56
  %43 = load i32, ptr %span, align 4
  %add66 = add nsw i32 %43, 8
  store i32 %add66, ptr %span, align 4
  %44 = load i32, ptr %bits, align 4
  %sub67 = add nsw i32 %44, -8
  store i32 %sub67, ptr %bits, align 4
  %45 = load ptr, ptr %bp.addr, align 8
  %incdec.ptr68 = getelementptr inbounds i8, ptr %45, i64 1
  store ptr %incdec.ptr68, ptr %bp.addr, align 8
  br label %while.cond53, !llvm.loop !56

while.end69:                                      ; preds = %while.cond53
  %46 = load i32, ptr %bits, align 4
  %cmp70 = icmp sgt i32 %46, 0
  br i1 %cmp70, label %if.then72, label %if.end79

if.then72:                                        ; preds = %while.end69
  %47 = load ptr, ptr %bp.addr, align 8
  %48 = load i8, ptr %47, align 1
  %idxprom73 = zext i8 %48 to i64
  %arrayidx74 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %idxprom73
  %49 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %49 to i32
  store i32 %conv75, ptr %n, align 4
  %50 = load i32, ptr %bits, align 4
  %cmp76 = icmp slt i32 %50, %conv75
  %51 = load i32, ptr %bits, align 4
  %52 = load i32, ptr %n, align 4
  %cond = select i1 %cmp76, i32 %51, i32 %52
  %53 = load i32, ptr %span, align 4
  %add78 = add nsw i32 %53, %cond
  store i32 %add78, ptr %span, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then72, %while.end69
  %54 = load i32, ptr %span, align 4
  store i32 %54, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end79, %if.then60, %if.then28, %if.then14
  %55 = load i32, ptr %retval, align 4
  ret i32 %55
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
  %11 = load i32, ptr %tif_rawcc, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 41
  %12 = load i32, ptr %tif_rawdatasize, align 8
  %cmp4.not = icmp slt i32 %11, %12
  br i1 %cmp4.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %13 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %13) #6
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
  %17 = load i32, ptr %tif_rawcc5, align 8
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %tif_rawcc5, align 8
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
  %26 = load i32, ptr %tif_rawcc12, align 8
  %tif_rawdatasize13 = getelementptr inbounds %struct.tiff, ptr %25, i64 0, i32 41
  %27 = load i32, ptr %tif_rawdatasize13, align 8
  %cmp14.not = icmp slt i32 %26, %27
  br i1 %cmp14.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.then11
  %28 = load ptr, ptr %tif.addr, align 8
  %call17 = call i32 @TIFFFlushData1(ptr noundef %28) #6
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
  %32 = load i32, ptr %tif_rawcc22, align 8
  %inc23 = add nsw i32 %32, 1
  store i32 %inc23, ptr %tif_rawcc22, align 8
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #4

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind }
attributes #5 = { cold noreturn nounwind }
attributes #6 = { nounwind }

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
