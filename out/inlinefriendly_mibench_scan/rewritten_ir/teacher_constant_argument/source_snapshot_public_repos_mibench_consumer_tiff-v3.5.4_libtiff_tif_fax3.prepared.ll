; ModuleID = './source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_fax3.c'
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
  %0 = load ptr, ptr %erun.addr, align 8
  %1 = load ptr, ptr %runs.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %and = and i64 %sub.ptr.div, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %erun.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %erun.addr, align 8
  store i64 0, ptr %2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 0, ptr %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc174, %if.end
  %3 = load ptr, ptr %runs.addr, align 8
  %4 = load ptr, ptr %erun.addr, align 8
  %cmp = icmp ult ptr %3, %4
  br i1 %cmp, label %for.body, label %for.end176

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %runs.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %5, i64 0
  %6 = load i64, ptr %arrayidx, align 8
  store i64 %6, ptr %run, align 8
  %7 = load i64, ptr %x, align 8
  %8 = load i64, ptr %run, align 8
  %add = add i64 %7, %8
  %9 = load i64, ptr %lastx.addr, align 8
  %cmp1 = icmp ugt i64 %add, %9
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %for.body
  %10 = load i64, ptr %lastx.addr, align 8
  %11 = load i64, ptr %x, align 8
  %sub = sub i64 %10, %11
  %conv = trunc i64 %sub to i16
  %conv3 = zext i16 %conv to i64
  %12 = load ptr, ptr %runs.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %12, i64 0
  store i64 %conv3, ptr %arrayidx4, align 8
  store i64 %conv3, ptr %run, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %for.body
  %13 = load i64, ptr %run, align 8
  %tobool6 = icmp ne i64 %13, 0
  br i1 %tobool6, label %if.then7, label %if.end77

if.then7:                                         ; preds = %if.end5
  %14 = load ptr, ptr %buf.addr, align 8
  %15 = load i64, ptr %x, align 8
  %shr = lshr i64 %15, 3
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 %shr
  store ptr %add.ptr, ptr %cp, align 8
  %16 = load i64, ptr %x, align 8
  %and8 = and i64 %16, 7
  store i64 %and8, ptr %bx, align 8
  %17 = load i64, ptr %run, align 8
  %18 = load i64, ptr %bx, align 8
  %sub9 = sub i64 8, %18
  %cmp10 = icmp ugt i64 %17, %sub9
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then7
  %19 = load i64, ptr %bx, align 8
  %tobool13 = icmp ne i64 %19, 0
  br i1 %tobool13, label %if.then14, label %if.end22

if.then14:                                        ; preds = %if.then12
  %20 = load i64, ptr %bx, align 8
  %sub15 = sub i64 8, %20
  %sh_prom = trunc i64 %sub15 to i32
  %shl = shl i32 255, %sh_prom
  %21 = load ptr, ptr %cp, align 8
  %incdec.ptr16 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr16, ptr %cp, align 8
  %22 = load i8, ptr %21, align 1
  %conv17 = zext i8 %22 to i32
  %and18 = and i32 %conv17, %shl
  %conv19 = trunc i32 %and18 to i8
  store i8 %conv19, ptr %21, align 1
  %23 = load i64, ptr %bx, align 8
  %sub20 = sub i64 8, %23
  %24 = load i64, ptr %run, align 8
  %sub21 = sub i64 %24, %sub20
  store i64 %sub21, ptr %run, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then14, %if.then12
  %25 = load i64, ptr %run, align 8
  %shr23 = lshr i64 %25, 3
  store i64 %shr23, ptr %n, align 8
  %cmp24 = icmp ne i64 %shr23, 0
  br i1 %cmp24, label %if.then26, label %if.end59

if.then26:                                        ; preds = %if.end22
  %26 = load i64, ptr %n, align 8
  %div = udiv i64 %26, 8
  %cmp27 = icmp ugt i64 %div, 1
  br i1 %cmp27, label %if.then29, label %if.end42

if.then29:                                        ; preds = %if.then26
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc, %if.then29
  %27 = load i64, ptr %n, align 8
  %tobool31 = icmp ne i64 %27, 0
  br i1 %tobool31, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond30
  %28 = load ptr, ptr %cp, align 8
  %29 = ptrtoint ptr %28 to i64
  %and32 = and i64 %29, 7
  %cmp33 = icmp eq i64 %and32, 0
  %lnot = xor i1 %cmp33, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond30
  %30 = phi i1 [ false, %for.cond30 ], [ %lnot, %land.rhs ]
  br i1 %30, label %for.body35, label %for.end

for.body35:                                       ; preds = %land.end
  %31 = load ptr, ptr %cp, align 8
  %incdec.ptr36 = getelementptr inbounds i8, ptr %31, i32 1
  store ptr %incdec.ptr36, ptr %cp, align 8
  store i8 0, ptr %31, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body35
  %32 = load i64, ptr %n, align 8
  %dec = add nsw i64 %32, -1
  store i64 %dec, ptr %n, align 8
  br label %for.cond30, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %33 = load ptr, ptr %cp, align 8
  store ptr %33, ptr %lp, align 8
  %34 = load i64, ptr %n, align 8
  %div37 = udiv i64 %34, 8
  store i64 %div37, ptr %nw, align 8
  %35 = load i64, ptr %nw, align 8
  %mul = mul i64 %35, 8
  %36 = load i64, ptr %n, align 8
  %sub38 = sub i64 %36, %mul
  store i64 %sub38, ptr %n, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end
  %37 = load ptr, ptr %lp, align 8
  %incdec.ptr39 = getelementptr inbounds i64, ptr %37, i32 1
  store ptr %incdec.ptr39, ptr %lp, align 8
  store i64 0, ptr %37, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %38 = load i64, ptr %nw, align 8
  %dec40 = add nsw i64 %38, -1
  store i64 %dec40, ptr %nw, align 8
  %tobool41 = icmp ne i64 %dec40, 0
  br i1 %tobool41, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.cond
  %39 = load ptr, ptr %lp, align 8
  store ptr %39, ptr %cp, align 8
  br label %if.end42

if.end42:                                         ; preds = %do.end, %if.then26
  %40 = load i64, ptr %n, align 8
  switch i64 %40, label %sw.epilog [
    i64 7, label %sw.bb
    i64 6, label %sw.bb44
    i64 5, label %sw.bb46
    i64 4, label %sw.bb48
    i64 3, label %sw.bb50
    i64 2, label %sw.bb52
    i64 1, label %sw.bb54
    i64 0, label %sw.bb57
  ]

sw.bb:                                            ; preds = %if.end42
  %41 = load ptr, ptr %cp, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %41, i64 6
  store i8 0, ptr %arrayidx43, align 1
  br label %sw.bb44

sw.bb44:                                          ; preds = %if.end42, %sw.bb
  %42 = load ptr, ptr %cp, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %42, i64 5
  store i8 0, ptr %arrayidx45, align 1
  br label %sw.bb46

sw.bb46:                                          ; preds = %if.end42, %sw.bb44
  %43 = load ptr, ptr %cp, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %43, i64 4
  store i8 0, ptr %arrayidx47, align 1
  br label %sw.bb48

sw.bb48:                                          ; preds = %if.end42, %sw.bb46
  %44 = load ptr, ptr %cp, align 8
  %arrayidx49 = getelementptr inbounds i8, ptr %44, i64 3
  store i8 0, ptr %arrayidx49, align 1
  br label %sw.bb50

sw.bb50:                                          ; preds = %if.end42, %sw.bb48
  %45 = load ptr, ptr %cp, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %45, i64 2
  store i8 0, ptr %arrayidx51, align 1
  br label %sw.bb52

sw.bb52:                                          ; preds = %if.end42, %sw.bb50
  %46 = load ptr, ptr %cp, align 8
  %arrayidx53 = getelementptr inbounds i8, ptr %46, i64 1
  store i8 0, ptr %arrayidx53, align 1
  br label %sw.bb54

sw.bb54:                                          ; preds = %if.end42, %sw.bb52
  %47 = load ptr, ptr %cp, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %47, i64 0
  store i8 0, ptr %arrayidx55, align 1
  %48 = load i64, ptr %n, align 8
  %49 = load ptr, ptr %cp, align 8
  %add.ptr56 = getelementptr inbounds i8, ptr %49, i64 %48
  store ptr %add.ptr56, ptr %cp, align 8
  br label %sw.bb57

sw.bb57:                                          ; preds = %if.end42, %sw.bb54
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb57, %if.end42
  %50 = load i64, ptr %run, align 8
  %and58 = and i64 %50, 7
  store i64 %and58, ptr %run, align 8
  br label %if.end59

if.end59:                                         ; preds = %sw.epilog, %if.end22
  %51 = load i64, ptr %run, align 8
  %sh_prom60 = trunc i64 %51 to i32
  %shr61 = ashr i32 255, %sh_prom60
  %52 = load ptr, ptr %cp, align 8
  %arrayidx62 = getelementptr inbounds i8, ptr %52, i64 0
  %53 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %53 to i32
  %and64 = and i32 %conv63, %shr61
  %conv65 = trunc i32 %and64 to i8
  store i8 %conv65, ptr %arrayidx62, align 1
  br label %if.end74

if.else:                                          ; preds = %if.then7
  %54 = load i64, ptr %run, align 8
  %arrayidx66 = getelementptr inbounds [9 x i8], ptr @_TIFFFax3fillruns._fillmasks, i64 0, i64 %54
  %55 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %55 to i32
  %56 = load i64, ptr %bx, align 8
  %sh_prom68 = trunc i64 %56 to i32
  %shr69 = ashr i32 %conv67, %sh_prom68
  %neg = xor i32 %shr69, -1
  %57 = load ptr, ptr %cp, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %57, i64 0
  %58 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %58 to i32
  %and72 = and i32 %conv71, %neg
  %conv73 = trunc i32 %and72 to i8
  store i8 %conv73, ptr %arrayidx70, align 1
  br label %if.end74

if.end74:                                         ; preds = %if.else, %if.end59
  %59 = load ptr, ptr %runs.addr, align 8
  %arrayidx75 = getelementptr inbounds i64, ptr %59, i64 0
  %60 = load i64, ptr %arrayidx75, align 8
  %61 = load i64, ptr %x, align 8
  %add76 = add i64 %61, %60
  store i64 %add76, ptr %x, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.end74, %if.end5
  %62 = load ptr, ptr %runs.addr, align 8
  %arrayidx78 = getelementptr inbounds i64, ptr %62, i64 1
  %63 = load i64, ptr %arrayidx78, align 8
  store i64 %63, ptr %run, align 8
  %64 = load i64, ptr %x, align 8
  %65 = load i64, ptr %run, align 8
  %add79 = add i64 %64, %65
  %66 = load i64, ptr %lastx.addr, align 8
  %cmp80 = icmp ugt i64 %add79, %66
  br i1 %cmp80, label %if.then82, label %if.end85

if.then82:                                        ; preds = %if.end77
  %67 = load i64, ptr %lastx.addr, align 8
  %68 = load i64, ptr %x, align 8
  %sub83 = sub i64 %67, %68
  %69 = load ptr, ptr %runs.addr, align 8
  %arrayidx84 = getelementptr inbounds i64, ptr %69, i64 1
  store i64 %sub83, ptr %arrayidx84, align 8
  store i64 %sub83, ptr %run, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.end77
  %70 = load i64, ptr %run, align 8
  %tobool86 = icmp ne i64 %70, 0
  br i1 %tobool86, label %if.then87, label %if.end173

if.then87:                                        ; preds = %if.end85
  %71 = load ptr, ptr %buf.addr, align 8
  %72 = load i64, ptr %x, align 8
  %shr88 = lshr i64 %72, 3
  %add.ptr89 = getelementptr inbounds i8, ptr %71, i64 %shr88
  store ptr %add.ptr89, ptr %cp, align 8
  %73 = load i64, ptr %x, align 8
  %and90 = and i64 %73, 7
  store i64 %and90, ptr %bx, align 8
  %74 = load i64, ptr %run, align 8
  %75 = load i64, ptr %bx, align 8
  %sub91 = sub i64 8, %75
  %cmp92 = icmp ugt i64 %74, %sub91
  br i1 %cmp92, label %if.then94, label %if.else161

if.then94:                                        ; preds = %if.then87
  %76 = load i64, ptr %bx, align 8
  %tobool95 = icmp ne i64 %76, 0
  br i1 %tobool95, label %if.then96, label %if.end104

if.then96:                                        ; preds = %if.then94
  %77 = load i64, ptr %bx, align 8
  %sh_prom97 = trunc i64 %77 to i32
  %shr98 = ashr i32 255, %sh_prom97
  %78 = load ptr, ptr %cp, align 8
  %incdec.ptr99 = getelementptr inbounds i8, ptr %78, i32 1
  store ptr %incdec.ptr99, ptr %cp, align 8
  %79 = load i8, ptr %78, align 1
  %conv100 = zext i8 %79 to i32
  %or = or i32 %conv100, %shr98
  %conv101 = trunc i32 %or to i8
  store i8 %conv101, ptr %78, align 1
  %80 = load i64, ptr %bx, align 8
  %sub102 = sub i64 8, %80
  %81 = load i64, ptr %run, align 8
  %sub103 = sub i64 %81, %sub102
  store i64 %sub103, ptr %run, align 8
  br label %if.end104

if.end104:                                        ; preds = %if.then96, %if.then94
  %82 = load i64, ptr %run, align 8
  %shr105 = lshr i64 %82, 3
  store i64 %shr105, ptr %n, align 8
  %cmp106 = icmp ne i64 %shr105, 0
  br i1 %cmp106, label %if.then108, label %if.end154

if.then108:                                       ; preds = %if.end104
  %83 = load i64, ptr %n, align 8
  %div109 = udiv i64 %83, 8
  %cmp110 = icmp ugt i64 %div109, 1
  br i1 %cmp110, label %if.then112, label %if.end135

if.then112:                                       ; preds = %if.then108
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc123, %if.then112
  %84 = load i64, ptr %n, align 8
  %tobool114 = icmp ne i64 %84, 0
  br i1 %tobool114, label %land.rhs115, label %land.end120

land.rhs115:                                      ; preds = %for.cond113
  %85 = load ptr, ptr %cp, align 8
  %86 = ptrtoint ptr %85 to i64
  %and116 = and i64 %86, 7
  %cmp117 = icmp eq i64 %and116, 0
  %lnot119 = xor i1 %cmp117, true
  br label %land.end120

land.end120:                                      ; preds = %land.rhs115, %for.cond113
  %87 = phi i1 [ false, %for.cond113 ], [ %lnot119, %land.rhs115 ]
  br i1 %87, label %for.body121, label %for.end125

for.body121:                                      ; preds = %land.end120
  %88 = load ptr, ptr %cp, align 8
  %incdec.ptr122 = getelementptr inbounds i8, ptr %88, i32 1
  store ptr %incdec.ptr122, ptr %cp, align 8
  store i8 -1, ptr %88, align 1
  br label %for.inc123

for.inc123:                                       ; preds = %for.body121
  %89 = load i64, ptr %n, align 8
  %dec124 = add nsw i64 %89, -1
  store i64 %dec124, ptr %n, align 8
  br label %for.cond113, !llvm.loop !9

for.end125:                                       ; preds = %land.end120
  %90 = load ptr, ptr %cp, align 8
  store ptr %90, ptr %lp, align 8
  %91 = load i64, ptr %n, align 8
  %div126 = udiv i64 %91, 8
  store i64 %div126, ptr %nw, align 8
  %92 = load i64, ptr %nw, align 8
  %mul127 = mul i64 %92, 8
  %93 = load i64, ptr %n, align 8
  %sub128 = sub i64 %93, %mul127
  store i64 %sub128, ptr %n, align 8
  br label %do.body129

do.body129:                                       ; preds = %do.cond131, %for.end125
  %94 = load ptr, ptr %lp, align 8
  %incdec.ptr130 = getelementptr inbounds i64, ptr %94, i32 1
  store ptr %incdec.ptr130, ptr %lp, align 8
  store i64 -1, ptr %94, align 8
  br label %do.cond131

do.cond131:                                       ; preds = %do.body129
  %95 = load i64, ptr %nw, align 8
  %dec132 = add nsw i64 %95, -1
  store i64 %dec132, ptr %nw, align 8
  %tobool133 = icmp ne i64 %dec132, 0
  br i1 %tobool133, label %do.body129, label %do.end134, !llvm.loop !10

do.end134:                                        ; preds = %do.cond131
  %96 = load ptr, ptr %lp, align 8
  store ptr %96, ptr %cp, align 8
  br label %if.end135

if.end135:                                        ; preds = %do.end134, %if.then108
  %97 = load i64, ptr %n, align 8
  switch i64 %97, label %sw.epilog152 [
    i64 7, label %sw.bb136
    i64 6, label %sw.bb138
    i64 5, label %sw.bb140
    i64 4, label %sw.bb142
    i64 3, label %sw.bb144
    i64 2, label %sw.bb146
    i64 1, label %sw.bb148
    i64 0, label %sw.bb151
  ]

sw.bb136:                                         ; preds = %if.end135
  %98 = load ptr, ptr %cp, align 8
  %arrayidx137 = getelementptr inbounds i8, ptr %98, i64 6
  store i8 -1, ptr %arrayidx137, align 1
  br label %sw.bb138

sw.bb138:                                         ; preds = %if.end135, %sw.bb136
  %99 = load ptr, ptr %cp, align 8
  %arrayidx139 = getelementptr inbounds i8, ptr %99, i64 5
  store i8 -1, ptr %arrayidx139, align 1
  br label %sw.bb140

sw.bb140:                                         ; preds = %if.end135, %sw.bb138
  %100 = load ptr, ptr %cp, align 8
  %arrayidx141 = getelementptr inbounds i8, ptr %100, i64 4
  store i8 -1, ptr %arrayidx141, align 1
  br label %sw.bb142

sw.bb142:                                         ; preds = %if.end135, %sw.bb140
  %101 = load ptr, ptr %cp, align 8
  %arrayidx143 = getelementptr inbounds i8, ptr %101, i64 3
  store i8 -1, ptr %arrayidx143, align 1
  br label %sw.bb144

sw.bb144:                                         ; preds = %if.end135, %sw.bb142
  %102 = load ptr, ptr %cp, align 8
  %arrayidx145 = getelementptr inbounds i8, ptr %102, i64 2
  store i8 -1, ptr %arrayidx145, align 1
  br label %sw.bb146

sw.bb146:                                         ; preds = %if.end135, %sw.bb144
  %103 = load ptr, ptr %cp, align 8
  %arrayidx147 = getelementptr inbounds i8, ptr %103, i64 1
  store i8 -1, ptr %arrayidx147, align 1
  br label %sw.bb148

sw.bb148:                                         ; preds = %if.end135, %sw.bb146
  %104 = load ptr, ptr %cp, align 8
  %arrayidx149 = getelementptr inbounds i8, ptr %104, i64 0
  store i8 -1, ptr %arrayidx149, align 1
  %105 = load i64, ptr %n, align 8
  %106 = load ptr, ptr %cp, align 8
  %add.ptr150 = getelementptr inbounds i8, ptr %106, i64 %105
  store ptr %add.ptr150, ptr %cp, align 8
  br label %sw.bb151

sw.bb151:                                         ; preds = %if.end135, %sw.bb148
  br label %sw.epilog152

sw.epilog152:                                     ; preds = %sw.bb151, %if.end135
  %107 = load i64, ptr %run, align 8
  %and153 = and i64 %107, 7
  store i64 %and153, ptr %run, align 8
  br label %if.end154

if.end154:                                        ; preds = %sw.epilog152, %if.end104
  %108 = load i64, ptr %run, align 8
  %sh_prom155 = trunc i64 %108 to i32
  %shr156 = ashr i32 65280, %sh_prom155
  %109 = load ptr, ptr %cp, align 8
  %arrayidx157 = getelementptr inbounds i8, ptr %109, i64 0
  %110 = load i8, ptr %arrayidx157, align 1
  %conv158 = zext i8 %110 to i32
  %or159 = or i32 %conv158, %shr156
  %conv160 = trunc i32 %or159 to i8
  store i8 %conv160, ptr %arrayidx157, align 1
  br label %if.end170

if.else161:                                       ; preds = %if.then87
  %111 = load i64, ptr %run, align 8
  %arrayidx162 = getelementptr inbounds [9 x i8], ptr @_TIFFFax3fillruns._fillmasks, i64 0, i64 %111
  %112 = load i8, ptr %arrayidx162, align 1
  %conv163 = zext i8 %112 to i32
  %113 = load i64, ptr %bx, align 8
  %sh_prom164 = trunc i64 %113 to i32
  %shr165 = ashr i32 %conv163, %sh_prom164
  %114 = load ptr, ptr %cp, align 8
  %arrayidx166 = getelementptr inbounds i8, ptr %114, i64 0
  %115 = load i8, ptr %arrayidx166, align 1
  %conv167 = zext i8 %115 to i32
  %or168 = or i32 %conv167, %shr165
  %conv169 = trunc i32 %or168 to i8
  store i8 %conv169, ptr %arrayidx166, align 1
  br label %if.end170

if.end170:                                        ; preds = %if.else161, %if.end154
  %116 = load ptr, ptr %runs.addr, align 8
  %arrayidx171 = getelementptr inbounds i64, ptr %116, i64 1
  %117 = load i64, ptr %arrayidx171, align 8
  %118 = load i64, ptr %x, align 8
  %add172 = add i64 %118, %117
  store i64 %add172, ptr %x, align 8
  br label %if.end173

if.end173:                                        ; preds = %if.end170, %if.end85
  br label %for.inc174

for.inc174:                                       ; preds = %if.end173
  %119 = load ptr, ptr %runs.addr, align 8
  %add.ptr175 = getelementptr inbounds i64, ptr %119, i64 2
  store ptr %add.ptr175, ptr %runs.addr, align 8
  br label %for.cond, !llvm.loop !11

for.end176:                                       ; preds = %for.cond
  %120 = load i64, ptr %x, align 8
  %121 = load i64, ptr %lastx.addr, align 8
  %cmp177 = icmp eq i64 %120, %121
  %lnot179 = xor i1 %cmp177, true
  %lnot.ext = zext i1 %lnot179 to i32
  %conv180 = sext i32 %lnot.ext to i64
  %tobool181 = icmp ne i64 %conv180, 0
  br i1 %tobool181, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end176
  call void @__assert_rtn(ptr noundef @__func__._TIFFFax3fillruns, ptr noundef @.str, i32 noundef 454, ptr noundef @.str.1) #3
  unreachable

122:                                              ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %for.end176
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %122
  ret void
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFInitCCITTFax3(ptr noundef %tif, i32 noundef %scheme) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %scheme.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %scheme, ptr %scheme.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @InitCCITTFax3(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  call void @_TIFFMergeFieldInfo(ptr noundef %1, ptr noundef @fax3FieldInfo, i32 noundef 1)
  %2 = load ptr, ptr %tif.addr, align 8
  %call1 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %2, i64 noundef 65536, i32 noundef 1)
  store i32 %call1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @InitCCITTFax3(ptr noundef %tif) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %tif_mode, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call ptr @_TIFFmalloc(i64 noundef 152)
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 37
  store ptr %call, ptr %tif_data, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call ptr @_TIFFmalloc(i64 noundef 128)
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_data2 = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 37
  store ptr %call1, ptr %tif_data2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_data3 = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 37
  %5 = load ptr, ptr %tif_data3, align 8
  %cmp4 = icmp eq ptr %5, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %tif_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef %7)
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_data7 = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 37
  %9 = load ptr, ptr %tif_data7, align 8
  store ptr %9, ptr %sp, align 8
  %10 = load ptr, ptr %tif.addr, align 8
  call void @_TIFFMergeFieldInfo(ptr noundef %10, ptr noundef @faxFieldInfo, i32 noundef 10)
  %11 = load ptr, ptr %tif.addr, align 8
  %tif_vgetfield = getelementptr inbounds %struct.tiff, ptr %11, i32 0, i32 58
  %12 = load ptr, ptr %tif_vgetfield, align 8
  %13 = load ptr, ptr %sp, align 8
  %vgetparent = getelementptr inbounds %struct.Fax3BaseState, ptr %13, i32 0, i32 10
  store ptr %12, ptr %vgetparent, align 8
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_vgetfield8 = getelementptr inbounds %struct.tiff, ptr %14, i32 0, i32 58
  store ptr @Fax3VGetField, ptr %tif_vgetfield8, align 8
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_vsetfield = getelementptr inbounds %struct.tiff, ptr %15, i32 0, i32 57
  %16 = load ptr, ptr %tif_vsetfield, align 8
  %17 = load ptr, ptr %sp, align 8
  %vsetparent = getelementptr inbounds %struct.Fax3BaseState, ptr %17, i32 0, i32 11
  store ptr %16, ptr %vsetparent, align 8
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_vsetfield9 = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 57
  store ptr @Fax3VSetField, ptr %tif_vsetfield9, align 8
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_printdir = getelementptr inbounds %struct.tiff, ptr %19, i32 0, i32 59
  store ptr @Fax3PrintDir, ptr %tif_printdir, align 8
  %20 = load ptr, ptr %sp, align 8
  %groupoptions = getelementptr inbounds %struct.Fax3BaseState, ptr %20, i32 0, i32 6
  store i64 0, ptr %groupoptions, align 8
  %21 = load ptr, ptr %sp, align 8
  %recvparams = getelementptr inbounds %struct.Fax3BaseState, ptr %21, i32 0, i32 7
  store i64 0, ptr %recvparams, align 8
  %22 = load ptr, ptr %sp, align 8
  %subaddress = getelementptr inbounds %struct.Fax3BaseState, ptr %22, i32 0, i32 8
  store ptr null, ptr %subaddress, align 8
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_mode10 = getelementptr inbounds %struct.tiff, ptr %23, i32 0, i32 2
  %24 = load i32, ptr %tif_mode10, align 4
  %cmp11 = icmp eq i32 %24, 0
  br i1 %cmp11, label %if.then12, label %if.else15

if.then12:                                        ; preds = %if.end6
  %25 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %25, i32 0, i32 3
  %26 = load i64, ptr %tif_flags, align 8
  %or = or i64 %26, 256
  store i64 %or, ptr %tif_flags, align 8
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_data13 = getelementptr inbounds %struct.tiff, ptr %27, i32 0, i32 37
  %28 = load ptr, ptr %tif_data13, align 8
  %runs = getelementptr inbounds %struct.Fax3DecodeState, ptr %28, i32 0, i32 6
  store ptr null, ptr %runs, align 8
  %29 = load ptr, ptr %tif.addr, align 8
  %call14 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %29, i64 noundef 65540, ptr noundef @_TIFFFax3fillruns)
  br label %if.end17

if.else15:                                        ; preds = %if.end6
  %30 = load ptr, ptr %tif.addr, align 8
  %tif_data16 = getelementptr inbounds %struct.tiff, ptr %30, i32 0, i32 37
  %31 = load ptr, ptr %tif_data16, align 8
  %refline = getelementptr inbounds %struct.Fax3EncodeState, ptr %31, i32 0, i32 4
  store ptr null, ptr %refline, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.then12
  %32 = load ptr, ptr %tif.addr, align 8
  %tif_setupdecode = getelementptr inbounds %struct.tiff, ptr %32, i32 0, i32 21
  store ptr @Fax3SetupState, ptr %tif_setupdecode, align 8
  %33 = load ptr, ptr %tif.addr, align 8
  %tif_predecode = getelementptr inbounds %struct.tiff, ptr %33, i32 0, i32 22
  store ptr @Fax3PreDecode, ptr %tif_predecode, align 8
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %34, i32 0, i32 26
  store ptr @Fax3Decode1D, ptr %tif_decoderow, align 8
  %35 = load ptr, ptr %tif.addr, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %35, i32 0, i32 28
  store ptr @Fax3Decode1D, ptr %tif_decodestrip, align 8
  %36 = load ptr, ptr %tif.addr, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %36, i32 0, i32 30
  store ptr @Fax3Decode1D, ptr %tif_decodetile, align 8
  %37 = load ptr, ptr %tif.addr, align 8
  %tif_setupencode = getelementptr inbounds %struct.tiff, ptr %37, i32 0, i32 23
  store ptr @Fax3SetupState, ptr %tif_setupencode, align 8
  %38 = load ptr, ptr %tif.addr, align 8
  %tif_preencode = getelementptr inbounds %struct.tiff, ptr %38, i32 0, i32 24
  store ptr @Fax3PreEncode, ptr %tif_preencode, align 8
  %39 = load ptr, ptr %tif.addr, align 8
  %tif_postencode = getelementptr inbounds %struct.tiff, ptr %39, i32 0, i32 25
  store ptr @Fax3PostEncode, ptr %tif_postencode, align 8
  %40 = load ptr, ptr %tif.addr, align 8
  %tif_encoderow = getelementptr inbounds %struct.tiff, ptr %40, i32 0, i32 27
  store ptr @Fax3Encode, ptr %tif_encoderow, align 8
  %41 = load ptr, ptr %tif.addr, align 8
  %tif_encodestrip = getelementptr inbounds %struct.tiff, ptr %41, i32 0, i32 29
  store ptr @Fax3Encode, ptr %tif_encodestrip, align 8
  %42 = load ptr, ptr %tif.addr, align 8
  %tif_encodetile = getelementptr inbounds %struct.tiff, ptr %42, i32 0, i32 31
  store ptr @Fax3Encode, ptr %tif_encodetile, align 8
  %43 = load ptr, ptr %tif.addr, align 8
  %tif_close = getelementptr inbounds %struct.tiff, ptr %43, i32 0, i32 32
  store ptr @Fax3Close, ptr %tif_close, align 8
  %44 = load ptr, ptr %tif.addr, align 8
  %tif_cleanup = getelementptr inbounds %struct.tiff, ptr %44, i32 0, i32 34
  store ptr @Fax3Cleanup, ptr %tif_cleanup, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then5
  %45 = load i32, ptr %retval, align 4
  ret i32 %45
}

declare void @_TIFFMergeFieldInfo(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @TIFFSetField(ptr noundef, i64 noundef, ...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFInitCCITTFax4(ptr noundef %tif, i32 noundef %scheme) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %scheme.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %scheme, ptr %scheme.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @InitCCITTFax3(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  call void @_TIFFMergeFieldInfo(ptr noundef %1, ptr noundef @fax4FieldInfo, i32 noundef 1)
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 26
  store ptr @Fax4Decode, ptr %tif_decoderow, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 28
  store ptr @Fax4Decode, ptr %tif_decodestrip, align 8
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 30
  store ptr @Fax4Decode, ptr %tif_decodetile, align 8
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_encoderow = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 27
  store ptr @Fax4Encode, ptr %tif_encoderow, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_encodestrip = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 29
  store ptr @Fax4Encode, ptr %tif_encodestrip, align 8
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_encodetile = getelementptr inbounds %struct.tiff, ptr %7, i32 0, i32 31
  store ptr @Fax4Encode, ptr %tif_encodetile, align 8
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_postencode = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 25
  store ptr @Fax4PostEncode, ptr %tif_postencode, align 8
  %9 = load ptr, ptr %tif.addr, align 8
  %call1 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %9, i64 noundef 65536, i32 noundef 1)
  store i32 %call1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax4Decode(ptr noundef %tif, ptr noundef %buf, i64 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %occ.addr = alloca i64, align 8
  %s.addr = alloca i16, align 2
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
  %x = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %occ, ptr %occ.addr, align 8
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load ptr, ptr %sp, align 8
  %b = getelementptr inbounds %struct.Fax3DecodeState, ptr %2, i32 0, i32 0
  %rowpixels = getelementptr inbounds %struct.Fax3BaseState, ptr %b, i32 0, i32 2
  %3 = load i64, ptr %rowpixels, align 8
  %conv = trunc i64 %3 to i32
  store i32 %conv, ptr %lastx, align 4
  %4 = load ptr, ptr %sp, align 8
  %bitmap1 = getelementptr inbounds %struct.Fax3DecodeState, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %bitmap1, align 8
  store ptr %5, ptr %bitmap, align 8
  %6 = load i16, ptr %s.addr, align 2
  br label %do.body

do.body:                                          ; preds = %entry
  %7 = load ptr, ptr %sp, align 8
  %data = getelementptr inbounds %struct.Fax3DecodeState, ptr %7, i32 0, i32 2
  %8 = load i64, ptr %data, align 8
  store i64 %8, ptr %BitAcc, align 8
  %9 = load ptr, ptr %sp, align 8
  %bit = getelementptr inbounds %struct.Fax3DecodeState, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %bit, align 8
  store i32 %10, ptr %BitsAvail, align 4
  %11 = load ptr, ptr %sp, align 8
  %EOLcnt2 = getelementptr inbounds %struct.Fax3DecodeState, ptr %11, i32 0, i32 4
  %12 = load i32, ptr %EOLcnt2, align 4
  store i32 %12, ptr %EOLcnt, align 4
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %13, i32 0, i32 42
  %14 = load ptr, ptr %tif_rawcp, align 8
  store ptr %14, ptr %cp, align 8
  %15 = load ptr, ptr %cp, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 43
  %17 = load i64, ptr %tif_rawcc, align 8
  %add.ptr = getelementptr inbounds i8, ptr %15, i64 %17
  store ptr %add.ptr, ptr %ep, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %while.cond

while.cond:                                       ; preds = %if.end782, %do.end
  %18 = load i64, ptr %occ.addr, align 8
  %cmp = icmp sgt i64 %18, 0
  br i1 %cmp, label %while.body, label %while.end797

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %19 = load ptr, ptr %sp, align 8
  %curruns = getelementptr inbounds %struct.Fax3DecodeState, ptr %19, i32 0, i32 8
  %20 = load ptr, ptr %curruns, align 8
  store ptr %20, ptr %thisrun, align 8
  store ptr %20, ptr %pa, align 8
  %21 = load ptr, ptr %sp, align 8
  %refruns = getelementptr inbounds %struct.Fax3DecodeState, ptr %21, i32 0, i32 7
  %22 = load ptr, ptr %refruns, align 8
  store ptr %22, ptr %pb, align 8
  %23 = load ptr, ptr %pb, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %23, i32 1
  store ptr %incdec.ptr, ptr %pb, align 8
  %24 = load i64, ptr %23, align 8
  %conv4 = trunc i64 %24 to i32
  store i32 %conv4, ptr %b1, align 4
  br label %do.body5

do.body5:                                         ; preds = %while.body
  br label %while.cond6

while.cond6:                                      ; preds = %sw.epilog638, %do.body5
  %25 = load i32, ptr %a0, align 4
  %26 = load i32, ptr %lastx, align 4
  %cmp7 = icmp slt i32 %25, %26
  br i1 %cmp7, label %while.body9, label %while.end639

while.body9:                                      ; preds = %while.cond6
  br label %do.body10

do.body10:                                        ; preds = %while.body9
  br label %do.body11

do.body11:                                        ; preds = %do.body10
  %27 = load i32, ptr %BitsAvail, align 4
  %cmp12 = icmp slt i32 %27, 7
  br i1 %cmp12, label %if.then, label %if.end23

if.then:                                          ; preds = %do.body11
  %28 = load ptr, ptr %cp, align 8
  %29 = load ptr, ptr %ep, align 8
  %cmp14 = icmp uge ptr %28, %29
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.then
  %30 = load i32, ptr %BitsAvail, align 4
  %cmp17 = icmp eq i32 %30, 0
  br i1 %cmp17, label %if.then19, label %if.end

if.then19:                                        ; preds = %if.then16
  br label %eof2d

if.end:                                           ; preds = %if.then16
  store i32 7, ptr %BitsAvail, align 4
  br label %if.end22

if.else:                                          ; preds = %if.then
  %31 = load ptr, ptr %bitmap, align 8
  %32 = load ptr, ptr %cp, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr20, ptr %cp, align 8
  %33 = load i8, ptr %32, align 1
  %idxprom = zext i8 %33 to i64
  %arrayidx = getelementptr inbounds i8, ptr %31, i64 %idxprom
  %34 = load i8, ptr %arrayidx, align 1
  %conv21 = zext i8 %34 to i64
  %35 = load i32, ptr %BitsAvail, align 4
  %sh_prom = zext i32 %35 to i64
  %shl = shl i64 %conv21, %sh_prom
  %36 = load i64, ptr %BitAcc, align 8
  %or = or i64 %36, %shl
  store i64 %or, ptr %BitAcc, align 8
  %37 = load i32, ptr %BitsAvail, align 4
  %add = add nsw i32 %37, 8
  store i32 %add, ptr %BitsAvail, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.end
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %do.body11
  br label %do.end24

do.end24:                                         ; preds = %if.end23
  %38 = load i64, ptr %BitAcc, align 8
  %and = and i64 %38, 127
  %add.ptr25 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxMainTable, i64 %and
  store ptr %add.ptr25, ptr %TabEnt, align 8
  br label %do.body26

do.body26:                                        ; preds = %do.end24
  %39 = load ptr, ptr %TabEnt, align 8
  %Width = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %39, i32 0, i32 1
  %40 = load i8, ptr %Width, align 1
  %conv27 = zext i8 %40 to i32
  %41 = load i32, ptr %BitsAvail, align 4
  %sub = sub nsw i32 %41, %conv27
  store i32 %sub, ptr %BitsAvail, align 4
  %42 = load ptr, ptr %TabEnt, align 8
  %Width28 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %42, i32 0, i32 1
  %43 = load i8, ptr %Width28, align 1
  %conv29 = zext i8 %43 to i32
  %44 = load i64, ptr %BitAcc, align 8
  %sh_prom30 = zext i32 %conv29 to i64
  %shr = lshr i64 %44, %sh_prom30
  store i64 %shr, ptr %BitAcc, align 8
  br label %do.end31

do.end31:                                         ; preds = %do.body26
  br label %do.end32

do.end32:                                         ; preds = %do.end31
  %45 = load ptr, ptr %TabEnt, align 8
  %State = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %45, i32 0, i32 0
  %46 = load i8, ptr %State, align 8
  %conv33 = zext i8 %46 to i32
  switch i32 %conv33, label %sw.default556 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb63
    i32 3, label %sw.bb398
    i32 4, label %sw.bb433
    i32 5, label %sw.bb476
    i32 6, label %sw.bb519
    i32 12, label %sw.bb524
  ]

sw.bb:                                            ; preds = %do.end32
  br label %do.body34

do.body34:                                        ; preds = %sw.bb
  %47 = load ptr, ptr %pa, align 8
  %48 = load ptr, ptr %thisrun, align 8
  %cmp35 = icmp ne ptr %47, %48
  br i1 %cmp35, label %if.then37, label %if.end51

if.then37:                                        ; preds = %do.body34
  br label %while.cond38

while.cond38:                                     ; preds = %while.body43, %if.then37
  %49 = load i32, ptr %b1, align 4
  %50 = load i32, ptr %a0, align 4
  %cmp39 = icmp sle i32 %49, %50
  br i1 %cmp39, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond38
  %51 = load i32, ptr %b1, align 4
  %52 = load i32, ptr %lastx, align 4
  %cmp41 = icmp slt i32 %51, %52
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond38
  %53 = phi i1 [ false, %while.cond38 ], [ %cmp41, %land.rhs ]
  br i1 %53, label %while.body43, label %while.end

while.body43:                                     ; preds = %land.end
  %54 = load ptr, ptr %pb, align 8
  %arrayidx44 = getelementptr inbounds i64, ptr %54, i64 0
  %55 = load i64, ptr %arrayidx44, align 8
  %56 = load ptr, ptr %pb, align 8
  %arrayidx45 = getelementptr inbounds i64, ptr %56, i64 1
  %57 = load i64, ptr %arrayidx45, align 8
  %add46 = add i64 %55, %57
  %58 = load i32, ptr %b1, align 4
  %conv47 = sext i32 %58 to i64
  %add48 = add i64 %conv47, %add46
  %conv49 = trunc i64 %add48 to i32
  store i32 %conv49, ptr %b1, align 4
  %59 = load ptr, ptr %pb, align 8
  %add.ptr50 = getelementptr inbounds i64, ptr %59, i64 2
  store ptr %add.ptr50, ptr %pb, align 8
  br label %while.cond38, !llvm.loop !12

while.end:                                        ; preds = %land.end
  br label %if.end51

if.end51:                                         ; preds = %while.end, %do.body34
  br label %do.end52

do.end52:                                         ; preds = %if.end51
  %60 = load ptr, ptr %pb, align 8
  %incdec.ptr53 = getelementptr inbounds i64, ptr %60, i32 1
  store ptr %incdec.ptr53, ptr %pb, align 8
  %61 = load i64, ptr %60, align 8
  %62 = load i32, ptr %b1, align 4
  %conv54 = sext i32 %62 to i64
  %add55 = add i64 %conv54, %61
  %conv56 = trunc i64 %add55 to i32
  store i32 %conv56, ptr %b1, align 4
  %63 = load i32, ptr %b1, align 4
  %64 = load i32, ptr %a0, align 4
  %sub57 = sub nsw i32 %63, %64
  %65 = load i32, ptr %RunLength, align 4
  %add58 = add nsw i32 %65, %sub57
  store i32 %add58, ptr %RunLength, align 4
  %66 = load i32, ptr %b1, align 4
  store i32 %66, ptr %a0, align 4
  %67 = load ptr, ptr %pb, align 8
  %incdec.ptr59 = getelementptr inbounds i64, ptr %67, i32 1
  store ptr %incdec.ptr59, ptr %pb, align 8
  %68 = load i64, ptr %67, align 8
  %69 = load i32, ptr %b1, align 4
  %conv60 = sext i32 %69 to i64
  %add61 = add i64 %conv60, %68
  %conv62 = trunc i64 %add61 to i32
  store i32 %conv62, ptr %b1, align 4
  br label %sw.epilog638

sw.bb63:                                          ; preds = %do.end32
  %70 = load ptr, ptr %pa, align 8
  %71 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %70 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %71 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %and64 = and i64 %sub.ptr.div, 1
  %tobool = icmp ne i64 %and64, 0
  br i1 %tobool, label %if.then65, label %if.else218

if.then65:                                        ; preds = %sw.bb63
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %if.then65
  br label %do.body66

do.body66:                                        ; preds = %for.cond
  br label %do.body67

do.body67:                                        ; preds = %do.body66
  %72 = load i32, ptr %BitsAvail, align 4
  %cmp68 = icmp slt i32 %72, 13
  br i1 %cmp68, label %if.then70, label %if.end105

if.then70:                                        ; preds = %do.body67
  %73 = load ptr, ptr %cp, align 8
  %74 = load ptr, ptr %ep, align 8
  %cmp71 = icmp uge ptr %73, %74
  br i1 %cmp71, label %if.then73, label %if.else78

if.then73:                                        ; preds = %if.then70
  %75 = load i32, ptr %BitsAvail, align 4
  %cmp74 = icmp eq i32 %75, 0
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.then73
  br label %eof2d

if.end77:                                         ; preds = %if.then73
  store i32 13, ptr %BitsAvail, align 4
  br label %if.end104

if.else78:                                        ; preds = %if.then70
  %76 = load ptr, ptr %bitmap, align 8
  %77 = load ptr, ptr %cp, align 8
  %incdec.ptr79 = getelementptr inbounds i8, ptr %77, i32 1
  store ptr %incdec.ptr79, ptr %cp, align 8
  %78 = load i8, ptr %77, align 1
  %idxprom80 = zext i8 %78 to i64
  %arrayidx81 = getelementptr inbounds i8, ptr %76, i64 %idxprom80
  %79 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %79 to i64
  %80 = load i32, ptr %BitsAvail, align 4
  %sh_prom83 = zext i32 %80 to i64
  %shl84 = shl i64 %conv82, %sh_prom83
  %81 = load i64, ptr %BitAcc, align 8
  %or85 = or i64 %81, %shl84
  store i64 %or85, ptr %BitAcc, align 8
  %82 = load i32, ptr %BitsAvail, align 4
  %add86 = add nsw i32 %82, 8
  store i32 %add86, ptr %BitsAvail, align 4
  %cmp87 = icmp slt i32 %add86, 13
  br i1 %cmp87, label %if.then89, label %if.end103

if.then89:                                        ; preds = %if.else78
  %83 = load ptr, ptr %cp, align 8
  %84 = load ptr, ptr %ep, align 8
  %cmp90 = icmp uge ptr %83, %84
  br i1 %cmp90, label %if.then92, label %if.else93

if.then92:                                        ; preds = %if.then89
  store i32 13, ptr %BitsAvail, align 4
  br label %if.end102

if.else93:                                        ; preds = %if.then89
  %85 = load ptr, ptr %bitmap, align 8
  %86 = load ptr, ptr %cp, align 8
  %incdec.ptr94 = getelementptr inbounds i8, ptr %86, i32 1
  store ptr %incdec.ptr94, ptr %cp, align 8
  %87 = load i8, ptr %86, align 1
  %idxprom95 = zext i8 %87 to i64
  %arrayidx96 = getelementptr inbounds i8, ptr %85, i64 %idxprom95
  %88 = load i8, ptr %arrayidx96, align 1
  %conv97 = zext i8 %88 to i64
  %89 = load i32, ptr %BitsAvail, align 4
  %sh_prom98 = zext i32 %89 to i64
  %shl99 = shl i64 %conv97, %sh_prom98
  %90 = load i64, ptr %BitAcc, align 8
  %or100 = or i64 %90, %shl99
  store i64 %or100, ptr %BitAcc, align 8
  %91 = load i32, ptr %BitsAvail, align 4
  %add101 = add nsw i32 %91, 8
  store i32 %add101, ptr %BitsAvail, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.else93, %if.then92
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.else78
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.end77
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %do.body67
  br label %do.end106

do.end106:                                        ; preds = %if.end105
  %92 = load i64, ptr %BitAcc, align 8
  %and107 = and i64 %92, 8191
  %add.ptr108 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %and107
  store ptr %add.ptr108, ptr %TabEnt, align 8
  br label %do.body109

do.body109:                                       ; preds = %do.end106
  %93 = load ptr, ptr %TabEnt, align 8
  %Width110 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %93, i32 0, i32 1
  %94 = load i8, ptr %Width110, align 1
  %conv111 = zext i8 %94 to i32
  %95 = load i32, ptr %BitsAvail, align 4
  %sub112 = sub nsw i32 %95, %conv111
  store i32 %sub112, ptr %BitsAvail, align 4
  %96 = load ptr, ptr %TabEnt, align 8
  %Width113 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %96, i32 0, i32 1
  %97 = load i8, ptr %Width113, align 1
  %conv114 = zext i8 %97 to i32
  %98 = load i64, ptr %BitAcc, align 8
  %sh_prom115 = zext i32 %conv114 to i64
  %shr116 = lshr i64 %98, %sh_prom115
  store i64 %shr116, ptr %BitAcc, align 8
  br label %do.end117

do.end117:                                        ; preds = %do.body109
  br label %do.end118

do.end118:                                        ; preds = %do.end117
  %99 = load ptr, ptr %TabEnt, align 8
  %State119 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %99, i32 0, i32 0
  %100 = load i8, ptr %State119, align 8
  %conv120 = zext i8 %100 to i32
  switch i32 %conv120, label %sw.default [
    i32 8, label %sw.bb121
    i32 10, label %sw.bb131
    i32 11, label %sw.bb131
  ]

sw.bb121:                                         ; preds = %do.end118
  br label %do.body122

do.body122:                                       ; preds = %sw.bb121
  %101 = load i32, ptr %RunLength, align 4
  %conv123 = sext i32 %101 to i64
  %102 = load ptr, ptr %TabEnt, align 8
  %Param = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %102, i32 0, i32 2
  %103 = load i64, ptr %Param, align 8
  %add124 = add i64 %conv123, %103
  %104 = load ptr, ptr %pa, align 8
  %incdec.ptr125 = getelementptr inbounds i64, ptr %104, i32 1
  store ptr %incdec.ptr125, ptr %pa, align 8
  store i64 %add124, ptr %104, align 8
  %105 = load ptr, ptr %TabEnt, align 8
  %Param126 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %105, i32 0, i32 2
  %106 = load i64, ptr %Param126, align 8
  %107 = load i32, ptr %a0, align 4
  %conv127 = sext i32 %107 to i64
  %add128 = add i64 %conv127, %106
  %conv129 = trunc i64 %add128 to i32
  store i32 %conv129, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end130

do.end130:                                        ; preds = %do.body122
  br label %doneWhite2da

sw.bb131:                                         ; preds = %do.end118, %do.end118
  %108 = load ptr, ptr %TabEnt, align 8
  %Param132 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %108, i32 0, i32 2
  %109 = load i64, ptr %Param132, align 8
  %110 = load i32, ptr %a0, align 4
  %conv133 = sext i32 %110 to i64
  %add134 = add i64 %conv133, %109
  %conv135 = trunc i64 %add134 to i32
  store i32 %conv135, ptr %a0, align 4
  %111 = load ptr, ptr %TabEnt, align 8
  %Param136 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %111, i32 0, i32 2
  %112 = load i64, ptr %Param136, align 8
  %113 = load i32, ptr %RunLength, align 4
  %conv137 = sext i32 %113 to i64
  %add138 = add i64 %conv137, %112
  %conv139 = trunc i64 %add138 to i32
  store i32 %conv139, ptr %RunLength, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end118
  br label %badBlack2d

sw.epilog:                                        ; preds = %sw.bb131
  br label %for.cond

doneWhite2da:                                     ; preds = %do.end130
  br label %for.cond140

for.cond140:                                      ; preds = %sw.epilog217, %doneWhite2da
  br label %do.body141

do.body141:                                       ; preds = %for.cond140
  br label %do.body142

do.body142:                                       ; preds = %do.body141
  %114 = load i32, ptr %BitsAvail, align 4
  %cmp143 = icmp slt i32 %114, 12
  br i1 %cmp143, label %if.then145, label %if.end180

if.then145:                                       ; preds = %do.body142
  %115 = load ptr, ptr %cp, align 8
  %116 = load ptr, ptr %ep, align 8
  %cmp146 = icmp uge ptr %115, %116
  br i1 %cmp146, label %if.then148, label %if.else153

if.then148:                                       ; preds = %if.then145
  %117 = load i32, ptr %BitsAvail, align 4
  %cmp149 = icmp eq i32 %117, 0
  br i1 %cmp149, label %if.then151, label %if.end152

if.then151:                                       ; preds = %if.then148
  br label %eof2d

if.end152:                                        ; preds = %if.then148
  store i32 12, ptr %BitsAvail, align 4
  br label %if.end179

if.else153:                                       ; preds = %if.then145
  %118 = load ptr, ptr %bitmap, align 8
  %119 = load ptr, ptr %cp, align 8
  %incdec.ptr154 = getelementptr inbounds i8, ptr %119, i32 1
  store ptr %incdec.ptr154, ptr %cp, align 8
  %120 = load i8, ptr %119, align 1
  %idxprom155 = zext i8 %120 to i64
  %arrayidx156 = getelementptr inbounds i8, ptr %118, i64 %idxprom155
  %121 = load i8, ptr %arrayidx156, align 1
  %conv157 = zext i8 %121 to i64
  %122 = load i32, ptr %BitsAvail, align 4
  %sh_prom158 = zext i32 %122 to i64
  %shl159 = shl i64 %conv157, %sh_prom158
  %123 = load i64, ptr %BitAcc, align 8
  %or160 = or i64 %123, %shl159
  store i64 %or160, ptr %BitAcc, align 8
  %124 = load i32, ptr %BitsAvail, align 4
  %add161 = add nsw i32 %124, 8
  store i32 %add161, ptr %BitsAvail, align 4
  %cmp162 = icmp slt i32 %add161, 12
  br i1 %cmp162, label %if.then164, label %if.end178

if.then164:                                       ; preds = %if.else153
  %125 = load ptr, ptr %cp, align 8
  %126 = load ptr, ptr %ep, align 8
  %cmp165 = icmp uge ptr %125, %126
  br i1 %cmp165, label %if.then167, label %if.else168

if.then167:                                       ; preds = %if.then164
  store i32 12, ptr %BitsAvail, align 4
  br label %if.end177

if.else168:                                       ; preds = %if.then164
  %127 = load ptr, ptr %bitmap, align 8
  %128 = load ptr, ptr %cp, align 8
  %incdec.ptr169 = getelementptr inbounds i8, ptr %128, i32 1
  store ptr %incdec.ptr169, ptr %cp, align 8
  %129 = load i8, ptr %128, align 1
  %idxprom170 = zext i8 %129 to i64
  %arrayidx171 = getelementptr inbounds i8, ptr %127, i64 %idxprom170
  %130 = load i8, ptr %arrayidx171, align 1
  %conv172 = zext i8 %130 to i64
  %131 = load i32, ptr %BitsAvail, align 4
  %sh_prom173 = zext i32 %131 to i64
  %shl174 = shl i64 %conv172, %sh_prom173
  %132 = load i64, ptr %BitAcc, align 8
  %or175 = or i64 %132, %shl174
  store i64 %or175, ptr %BitAcc, align 8
  %133 = load i32, ptr %BitsAvail, align 4
  %add176 = add nsw i32 %133, 8
  store i32 %add176, ptr %BitsAvail, align 4
  br label %if.end177

if.end177:                                        ; preds = %if.else168, %if.then167
  br label %if.end178

if.end178:                                        ; preds = %if.end177, %if.else153
  br label %if.end179

if.end179:                                        ; preds = %if.end178, %if.end152
  br label %if.end180

if.end180:                                        ; preds = %if.end179, %do.body142
  br label %do.end181

do.end181:                                        ; preds = %if.end180
  %134 = load i64, ptr %BitAcc, align 8
  %and182 = and i64 %134, 4095
  %add.ptr183 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %and182
  store ptr %add.ptr183, ptr %TabEnt, align 8
  br label %do.body184

do.body184:                                       ; preds = %do.end181
  %135 = load ptr, ptr %TabEnt, align 8
  %Width185 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %135, i32 0, i32 1
  %136 = load i8, ptr %Width185, align 1
  %conv186 = zext i8 %136 to i32
  %137 = load i32, ptr %BitsAvail, align 4
  %sub187 = sub nsw i32 %137, %conv186
  store i32 %sub187, ptr %BitsAvail, align 4
  %138 = load ptr, ptr %TabEnt, align 8
  %Width188 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %138, i32 0, i32 1
  %139 = load i8, ptr %Width188, align 1
  %conv189 = zext i8 %139 to i32
  %140 = load i64, ptr %BitAcc, align 8
  %sh_prom190 = zext i32 %conv189 to i64
  %shr191 = lshr i64 %140, %sh_prom190
  store i64 %shr191, ptr %BitAcc, align 8
  br label %do.end192

do.end192:                                        ; preds = %do.body184
  br label %do.end193

do.end193:                                        ; preds = %do.end192
  %141 = load ptr, ptr %TabEnt, align 8
  %State194 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %141, i32 0, i32 0
  %142 = load i8, ptr %State194, align 8
  %conv195 = zext i8 %142 to i32
  switch i32 %conv195, label %sw.default216 [
    i32 7, label %sw.bb196
    i32 9, label %sw.bb207
    i32 11, label %sw.bb207
  ]

sw.bb196:                                         ; preds = %do.end193
  br label %do.body197

do.body197:                                       ; preds = %sw.bb196
  %143 = load i32, ptr %RunLength, align 4
  %conv198 = sext i32 %143 to i64
  %144 = load ptr, ptr %TabEnt, align 8
  %Param199 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %144, i32 0, i32 2
  %145 = load i64, ptr %Param199, align 8
  %add200 = add i64 %conv198, %145
  %146 = load ptr, ptr %pa, align 8
  %incdec.ptr201 = getelementptr inbounds i64, ptr %146, i32 1
  store ptr %incdec.ptr201, ptr %pa, align 8
  store i64 %add200, ptr %146, align 8
  %147 = load ptr, ptr %TabEnt, align 8
  %Param202 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %147, i32 0, i32 2
  %148 = load i64, ptr %Param202, align 8
  %149 = load i32, ptr %a0, align 4
  %conv203 = sext i32 %149 to i64
  %add204 = add i64 %conv203, %148
  %conv205 = trunc i64 %add204 to i32
  store i32 %conv205, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end206

do.end206:                                        ; preds = %do.body197
  br label %doneBlack2da

sw.bb207:                                         ; preds = %do.end193, %do.end193
  %150 = load ptr, ptr %TabEnt, align 8
  %Param208 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %150, i32 0, i32 2
  %151 = load i64, ptr %Param208, align 8
  %152 = load i32, ptr %a0, align 4
  %conv209 = sext i32 %152 to i64
  %add210 = add i64 %conv209, %151
  %conv211 = trunc i64 %add210 to i32
  store i32 %conv211, ptr %a0, align 4
  %153 = load ptr, ptr %TabEnt, align 8
  %Param212 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %153, i32 0, i32 2
  %154 = load i64, ptr %Param212, align 8
  %155 = load i32, ptr %RunLength, align 4
  %conv213 = sext i32 %155 to i64
  %add214 = add i64 %conv213, %154
  %conv215 = trunc i64 %add214 to i32
  store i32 %conv215, ptr %RunLength, align 4
  br label %sw.epilog217

sw.default216:                                    ; preds = %do.end193
  br label %badWhite2d

sw.epilog217:                                     ; preds = %sw.bb207
  br label %for.cond140

doneBlack2da:                                     ; preds = %do.end206
  br label %if.end375

if.else218:                                       ; preds = %sw.bb63
  br label %for.cond219

for.cond219:                                      ; preds = %sw.epilog296, %if.else218
  br label %do.body220

do.body220:                                       ; preds = %for.cond219
  br label %do.body221

do.body221:                                       ; preds = %do.body220
  %156 = load i32, ptr %BitsAvail, align 4
  %cmp222 = icmp slt i32 %156, 12
  br i1 %cmp222, label %if.then224, label %if.end259

if.then224:                                       ; preds = %do.body221
  %157 = load ptr, ptr %cp, align 8
  %158 = load ptr, ptr %ep, align 8
  %cmp225 = icmp uge ptr %157, %158
  br i1 %cmp225, label %if.then227, label %if.else232

if.then227:                                       ; preds = %if.then224
  %159 = load i32, ptr %BitsAvail, align 4
  %cmp228 = icmp eq i32 %159, 0
  br i1 %cmp228, label %if.then230, label %if.end231

if.then230:                                       ; preds = %if.then227
  br label %eof2d

if.end231:                                        ; preds = %if.then227
  store i32 12, ptr %BitsAvail, align 4
  br label %if.end258

if.else232:                                       ; preds = %if.then224
  %160 = load ptr, ptr %bitmap, align 8
  %161 = load ptr, ptr %cp, align 8
  %incdec.ptr233 = getelementptr inbounds i8, ptr %161, i32 1
  store ptr %incdec.ptr233, ptr %cp, align 8
  %162 = load i8, ptr %161, align 1
  %idxprom234 = zext i8 %162 to i64
  %arrayidx235 = getelementptr inbounds i8, ptr %160, i64 %idxprom234
  %163 = load i8, ptr %arrayidx235, align 1
  %conv236 = zext i8 %163 to i64
  %164 = load i32, ptr %BitsAvail, align 4
  %sh_prom237 = zext i32 %164 to i64
  %shl238 = shl i64 %conv236, %sh_prom237
  %165 = load i64, ptr %BitAcc, align 8
  %or239 = or i64 %165, %shl238
  store i64 %or239, ptr %BitAcc, align 8
  %166 = load i32, ptr %BitsAvail, align 4
  %add240 = add nsw i32 %166, 8
  store i32 %add240, ptr %BitsAvail, align 4
  %cmp241 = icmp slt i32 %add240, 12
  br i1 %cmp241, label %if.then243, label %if.end257

if.then243:                                       ; preds = %if.else232
  %167 = load ptr, ptr %cp, align 8
  %168 = load ptr, ptr %ep, align 8
  %cmp244 = icmp uge ptr %167, %168
  br i1 %cmp244, label %if.then246, label %if.else247

if.then246:                                       ; preds = %if.then243
  store i32 12, ptr %BitsAvail, align 4
  br label %if.end256

if.else247:                                       ; preds = %if.then243
  %169 = load ptr, ptr %bitmap, align 8
  %170 = load ptr, ptr %cp, align 8
  %incdec.ptr248 = getelementptr inbounds i8, ptr %170, i32 1
  store ptr %incdec.ptr248, ptr %cp, align 8
  %171 = load i8, ptr %170, align 1
  %idxprom249 = zext i8 %171 to i64
  %arrayidx250 = getelementptr inbounds i8, ptr %169, i64 %idxprom249
  %172 = load i8, ptr %arrayidx250, align 1
  %conv251 = zext i8 %172 to i64
  %173 = load i32, ptr %BitsAvail, align 4
  %sh_prom252 = zext i32 %173 to i64
  %shl253 = shl i64 %conv251, %sh_prom252
  %174 = load i64, ptr %BitAcc, align 8
  %or254 = or i64 %174, %shl253
  store i64 %or254, ptr %BitAcc, align 8
  %175 = load i32, ptr %BitsAvail, align 4
  %add255 = add nsw i32 %175, 8
  store i32 %add255, ptr %BitsAvail, align 4
  br label %if.end256

if.end256:                                        ; preds = %if.else247, %if.then246
  br label %if.end257

if.end257:                                        ; preds = %if.end256, %if.else232
  br label %if.end258

if.end258:                                        ; preds = %if.end257, %if.end231
  br label %if.end259

if.end259:                                        ; preds = %if.end258, %do.body221
  br label %do.end260

do.end260:                                        ; preds = %if.end259
  %176 = load i64, ptr %BitAcc, align 8
  %and261 = and i64 %176, 4095
  %add.ptr262 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %and261
  store ptr %add.ptr262, ptr %TabEnt, align 8
  br label %do.body263

do.body263:                                       ; preds = %do.end260
  %177 = load ptr, ptr %TabEnt, align 8
  %Width264 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %177, i32 0, i32 1
  %178 = load i8, ptr %Width264, align 1
  %conv265 = zext i8 %178 to i32
  %179 = load i32, ptr %BitsAvail, align 4
  %sub266 = sub nsw i32 %179, %conv265
  store i32 %sub266, ptr %BitsAvail, align 4
  %180 = load ptr, ptr %TabEnt, align 8
  %Width267 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %180, i32 0, i32 1
  %181 = load i8, ptr %Width267, align 1
  %conv268 = zext i8 %181 to i32
  %182 = load i64, ptr %BitAcc, align 8
  %sh_prom269 = zext i32 %conv268 to i64
  %shr270 = lshr i64 %182, %sh_prom269
  store i64 %shr270, ptr %BitAcc, align 8
  br label %do.end271

do.end271:                                        ; preds = %do.body263
  br label %do.end272

do.end272:                                        ; preds = %do.end271
  %183 = load ptr, ptr %TabEnt, align 8
  %State273 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %183, i32 0, i32 0
  %184 = load i8, ptr %State273, align 8
  %conv274 = zext i8 %184 to i32
  switch i32 %conv274, label %sw.default295 [
    i32 7, label %sw.bb275
    i32 9, label %sw.bb286
    i32 11, label %sw.bb286
  ]

sw.bb275:                                         ; preds = %do.end272
  br label %do.body276

do.body276:                                       ; preds = %sw.bb275
  %185 = load i32, ptr %RunLength, align 4
  %conv277 = sext i32 %185 to i64
  %186 = load ptr, ptr %TabEnt, align 8
  %Param278 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %186, i32 0, i32 2
  %187 = load i64, ptr %Param278, align 8
  %add279 = add i64 %conv277, %187
  %188 = load ptr, ptr %pa, align 8
  %incdec.ptr280 = getelementptr inbounds i64, ptr %188, i32 1
  store ptr %incdec.ptr280, ptr %pa, align 8
  store i64 %add279, ptr %188, align 8
  %189 = load ptr, ptr %TabEnt, align 8
  %Param281 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %189, i32 0, i32 2
  %190 = load i64, ptr %Param281, align 8
  %191 = load i32, ptr %a0, align 4
  %conv282 = sext i32 %191 to i64
  %add283 = add i64 %conv282, %190
  %conv284 = trunc i64 %add283 to i32
  store i32 %conv284, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end285

do.end285:                                        ; preds = %do.body276
  br label %doneWhite2db

sw.bb286:                                         ; preds = %do.end272, %do.end272
  %192 = load ptr, ptr %TabEnt, align 8
  %Param287 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %192, i32 0, i32 2
  %193 = load i64, ptr %Param287, align 8
  %194 = load i32, ptr %a0, align 4
  %conv288 = sext i32 %194 to i64
  %add289 = add i64 %conv288, %193
  %conv290 = trunc i64 %add289 to i32
  store i32 %conv290, ptr %a0, align 4
  %195 = load ptr, ptr %TabEnt, align 8
  %Param291 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %195, i32 0, i32 2
  %196 = load i64, ptr %Param291, align 8
  %197 = load i32, ptr %RunLength, align 4
  %conv292 = sext i32 %197 to i64
  %add293 = add i64 %conv292, %196
  %conv294 = trunc i64 %add293 to i32
  store i32 %conv294, ptr %RunLength, align 4
  br label %sw.epilog296

sw.default295:                                    ; preds = %do.end272
  br label %badWhite2d

sw.epilog296:                                     ; preds = %sw.bb286
  br label %for.cond219

doneWhite2db:                                     ; preds = %do.end285
  br label %for.cond297

for.cond297:                                      ; preds = %sw.epilog374, %doneWhite2db
  br label %do.body298

do.body298:                                       ; preds = %for.cond297
  br label %do.body299

do.body299:                                       ; preds = %do.body298
  %198 = load i32, ptr %BitsAvail, align 4
  %cmp300 = icmp slt i32 %198, 13
  br i1 %cmp300, label %if.then302, label %if.end337

if.then302:                                       ; preds = %do.body299
  %199 = load ptr, ptr %cp, align 8
  %200 = load ptr, ptr %ep, align 8
  %cmp303 = icmp uge ptr %199, %200
  br i1 %cmp303, label %if.then305, label %if.else310

if.then305:                                       ; preds = %if.then302
  %201 = load i32, ptr %BitsAvail, align 4
  %cmp306 = icmp eq i32 %201, 0
  br i1 %cmp306, label %if.then308, label %if.end309

if.then308:                                       ; preds = %if.then305
  br label %eof2d

if.end309:                                        ; preds = %if.then305
  store i32 13, ptr %BitsAvail, align 4
  br label %if.end336

if.else310:                                       ; preds = %if.then302
  %202 = load ptr, ptr %bitmap, align 8
  %203 = load ptr, ptr %cp, align 8
  %incdec.ptr311 = getelementptr inbounds i8, ptr %203, i32 1
  store ptr %incdec.ptr311, ptr %cp, align 8
  %204 = load i8, ptr %203, align 1
  %idxprom312 = zext i8 %204 to i64
  %arrayidx313 = getelementptr inbounds i8, ptr %202, i64 %idxprom312
  %205 = load i8, ptr %arrayidx313, align 1
  %conv314 = zext i8 %205 to i64
  %206 = load i32, ptr %BitsAvail, align 4
  %sh_prom315 = zext i32 %206 to i64
  %shl316 = shl i64 %conv314, %sh_prom315
  %207 = load i64, ptr %BitAcc, align 8
  %or317 = or i64 %207, %shl316
  store i64 %or317, ptr %BitAcc, align 8
  %208 = load i32, ptr %BitsAvail, align 4
  %add318 = add nsw i32 %208, 8
  store i32 %add318, ptr %BitsAvail, align 4
  %cmp319 = icmp slt i32 %add318, 13
  br i1 %cmp319, label %if.then321, label %if.end335

if.then321:                                       ; preds = %if.else310
  %209 = load ptr, ptr %cp, align 8
  %210 = load ptr, ptr %ep, align 8
  %cmp322 = icmp uge ptr %209, %210
  br i1 %cmp322, label %if.then324, label %if.else325

if.then324:                                       ; preds = %if.then321
  store i32 13, ptr %BitsAvail, align 4
  br label %if.end334

if.else325:                                       ; preds = %if.then321
  %211 = load ptr, ptr %bitmap, align 8
  %212 = load ptr, ptr %cp, align 8
  %incdec.ptr326 = getelementptr inbounds i8, ptr %212, i32 1
  store ptr %incdec.ptr326, ptr %cp, align 8
  %213 = load i8, ptr %212, align 1
  %idxprom327 = zext i8 %213 to i64
  %arrayidx328 = getelementptr inbounds i8, ptr %211, i64 %idxprom327
  %214 = load i8, ptr %arrayidx328, align 1
  %conv329 = zext i8 %214 to i64
  %215 = load i32, ptr %BitsAvail, align 4
  %sh_prom330 = zext i32 %215 to i64
  %shl331 = shl i64 %conv329, %sh_prom330
  %216 = load i64, ptr %BitAcc, align 8
  %or332 = or i64 %216, %shl331
  store i64 %or332, ptr %BitAcc, align 8
  %217 = load i32, ptr %BitsAvail, align 4
  %add333 = add nsw i32 %217, 8
  store i32 %add333, ptr %BitsAvail, align 4
  br label %if.end334

if.end334:                                        ; preds = %if.else325, %if.then324
  br label %if.end335

if.end335:                                        ; preds = %if.end334, %if.else310
  br label %if.end336

if.end336:                                        ; preds = %if.end335, %if.end309
  br label %if.end337

if.end337:                                        ; preds = %if.end336, %do.body299
  br label %do.end338

do.end338:                                        ; preds = %if.end337
  %218 = load i64, ptr %BitAcc, align 8
  %and339 = and i64 %218, 8191
  %add.ptr340 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %and339
  store ptr %add.ptr340, ptr %TabEnt, align 8
  br label %do.body341

do.body341:                                       ; preds = %do.end338
  %219 = load ptr, ptr %TabEnt, align 8
  %Width342 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %219, i32 0, i32 1
  %220 = load i8, ptr %Width342, align 1
  %conv343 = zext i8 %220 to i32
  %221 = load i32, ptr %BitsAvail, align 4
  %sub344 = sub nsw i32 %221, %conv343
  store i32 %sub344, ptr %BitsAvail, align 4
  %222 = load ptr, ptr %TabEnt, align 8
  %Width345 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %222, i32 0, i32 1
  %223 = load i8, ptr %Width345, align 1
  %conv346 = zext i8 %223 to i32
  %224 = load i64, ptr %BitAcc, align 8
  %sh_prom347 = zext i32 %conv346 to i64
  %shr348 = lshr i64 %224, %sh_prom347
  store i64 %shr348, ptr %BitAcc, align 8
  br label %do.end349

do.end349:                                        ; preds = %do.body341
  br label %do.end350

do.end350:                                        ; preds = %do.end349
  %225 = load ptr, ptr %TabEnt, align 8
  %State351 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %225, i32 0, i32 0
  %226 = load i8, ptr %State351, align 8
  %conv352 = zext i8 %226 to i32
  switch i32 %conv352, label %sw.default373 [
    i32 8, label %sw.bb353
    i32 10, label %sw.bb364
    i32 11, label %sw.bb364
  ]

sw.bb353:                                         ; preds = %do.end350
  br label %do.body354

do.body354:                                       ; preds = %sw.bb353
  %227 = load i32, ptr %RunLength, align 4
  %conv355 = sext i32 %227 to i64
  %228 = load ptr, ptr %TabEnt, align 8
  %Param356 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %228, i32 0, i32 2
  %229 = load i64, ptr %Param356, align 8
  %add357 = add i64 %conv355, %229
  %230 = load ptr, ptr %pa, align 8
  %incdec.ptr358 = getelementptr inbounds i64, ptr %230, i32 1
  store ptr %incdec.ptr358, ptr %pa, align 8
  store i64 %add357, ptr %230, align 8
  %231 = load ptr, ptr %TabEnt, align 8
  %Param359 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %231, i32 0, i32 2
  %232 = load i64, ptr %Param359, align 8
  %233 = load i32, ptr %a0, align 4
  %conv360 = sext i32 %233 to i64
  %add361 = add i64 %conv360, %232
  %conv362 = trunc i64 %add361 to i32
  store i32 %conv362, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end363

do.end363:                                        ; preds = %do.body354
  br label %doneBlack2db

sw.bb364:                                         ; preds = %do.end350, %do.end350
  %234 = load ptr, ptr %TabEnt, align 8
  %Param365 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %234, i32 0, i32 2
  %235 = load i64, ptr %Param365, align 8
  %236 = load i32, ptr %a0, align 4
  %conv366 = sext i32 %236 to i64
  %add367 = add i64 %conv366, %235
  %conv368 = trunc i64 %add367 to i32
  store i32 %conv368, ptr %a0, align 4
  %237 = load ptr, ptr %TabEnt, align 8
  %Param369 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %237, i32 0, i32 2
  %238 = load i64, ptr %Param369, align 8
  %239 = load i32, ptr %RunLength, align 4
  %conv370 = sext i32 %239 to i64
  %add371 = add i64 %conv370, %238
  %conv372 = trunc i64 %add371 to i32
  store i32 %conv372, ptr %RunLength, align 4
  br label %sw.epilog374

sw.default373:                                    ; preds = %do.end350
  br label %badBlack2d

sw.epilog374:                                     ; preds = %sw.bb364
  br label %for.cond297

doneBlack2db:                                     ; preds = %do.end363
  br label %if.end375

if.end375:                                        ; preds = %doneBlack2db, %doneBlack2da
  br label %do.body376

do.body376:                                       ; preds = %if.end375
  %240 = load ptr, ptr %pa, align 8
  %241 = load ptr, ptr %thisrun, align 8
  %cmp377 = icmp ne ptr %240, %241
  br i1 %cmp377, label %if.then379, label %if.end396

if.then379:                                       ; preds = %do.body376
  br label %while.cond380

while.cond380:                                    ; preds = %while.body387, %if.then379
  %242 = load i32, ptr %b1, align 4
  %243 = load i32, ptr %a0, align 4
  %cmp381 = icmp sle i32 %242, %243
  br i1 %cmp381, label %land.rhs383, label %land.end386

land.rhs383:                                      ; preds = %while.cond380
  %244 = load i32, ptr %b1, align 4
  %245 = load i32, ptr %lastx, align 4
  %cmp384 = icmp slt i32 %244, %245
  br label %land.end386

land.end386:                                      ; preds = %land.rhs383, %while.cond380
  %246 = phi i1 [ false, %while.cond380 ], [ %cmp384, %land.rhs383 ]
  br i1 %246, label %while.body387, label %while.end395

while.body387:                                    ; preds = %land.end386
  %247 = load ptr, ptr %pb, align 8
  %arrayidx388 = getelementptr inbounds i64, ptr %247, i64 0
  %248 = load i64, ptr %arrayidx388, align 8
  %249 = load ptr, ptr %pb, align 8
  %arrayidx389 = getelementptr inbounds i64, ptr %249, i64 1
  %250 = load i64, ptr %arrayidx389, align 8
  %add390 = add i64 %248, %250
  %251 = load i32, ptr %b1, align 4
  %conv391 = sext i32 %251 to i64
  %add392 = add i64 %conv391, %add390
  %conv393 = trunc i64 %add392 to i32
  store i32 %conv393, ptr %b1, align 4
  %252 = load ptr, ptr %pb, align 8
  %add.ptr394 = getelementptr inbounds i64, ptr %252, i64 2
  store ptr %add.ptr394, ptr %pb, align 8
  br label %while.cond380, !llvm.loop !13

while.end395:                                     ; preds = %land.end386
  br label %if.end396

if.end396:                                        ; preds = %while.end395, %do.body376
  br label %do.end397

do.end397:                                        ; preds = %if.end396
  br label %sw.epilog638

sw.bb398:                                         ; preds = %do.end32
  br label %do.body399

do.body399:                                       ; preds = %sw.bb398
  %253 = load ptr, ptr %pa, align 8
  %254 = load ptr, ptr %thisrun, align 8
  %cmp400 = icmp ne ptr %253, %254
  br i1 %cmp400, label %if.then402, label %if.end419

if.then402:                                       ; preds = %do.body399
  br label %while.cond403

while.cond403:                                    ; preds = %while.body410, %if.then402
  %255 = load i32, ptr %b1, align 4
  %256 = load i32, ptr %a0, align 4
  %cmp404 = icmp sle i32 %255, %256
  br i1 %cmp404, label %land.rhs406, label %land.end409

land.rhs406:                                      ; preds = %while.cond403
  %257 = load i32, ptr %b1, align 4
  %258 = load i32, ptr %lastx, align 4
  %cmp407 = icmp slt i32 %257, %258
  br label %land.end409

land.end409:                                      ; preds = %land.rhs406, %while.cond403
  %259 = phi i1 [ false, %while.cond403 ], [ %cmp407, %land.rhs406 ]
  br i1 %259, label %while.body410, label %while.end418

while.body410:                                    ; preds = %land.end409
  %260 = load ptr, ptr %pb, align 8
  %arrayidx411 = getelementptr inbounds i64, ptr %260, i64 0
  %261 = load i64, ptr %arrayidx411, align 8
  %262 = load ptr, ptr %pb, align 8
  %arrayidx412 = getelementptr inbounds i64, ptr %262, i64 1
  %263 = load i64, ptr %arrayidx412, align 8
  %add413 = add i64 %261, %263
  %264 = load i32, ptr %b1, align 4
  %conv414 = sext i32 %264 to i64
  %add415 = add i64 %conv414, %add413
  %conv416 = trunc i64 %add415 to i32
  store i32 %conv416, ptr %b1, align 4
  %265 = load ptr, ptr %pb, align 8
  %add.ptr417 = getelementptr inbounds i64, ptr %265, i64 2
  store ptr %add.ptr417, ptr %pb, align 8
  br label %while.cond403, !llvm.loop !14

while.end418:                                     ; preds = %land.end409
  br label %if.end419

if.end419:                                        ; preds = %while.end418, %do.body399
  br label %do.end420

do.end420:                                        ; preds = %if.end419
  br label %do.body421

do.body421:                                       ; preds = %do.end420
  %266 = load i32, ptr %RunLength, align 4
  %267 = load i32, ptr %b1, align 4
  %268 = load i32, ptr %a0, align 4
  %sub422 = sub nsw i32 %267, %268
  %add423 = add nsw i32 %266, %sub422
  %conv424 = sext i32 %add423 to i64
  %269 = load ptr, ptr %pa, align 8
  %incdec.ptr425 = getelementptr inbounds i64, ptr %269, i32 1
  store ptr %incdec.ptr425, ptr %pa, align 8
  store i64 %conv424, ptr %269, align 8
  %270 = load i32, ptr %b1, align 4
  %271 = load i32, ptr %a0, align 4
  %sub426 = sub nsw i32 %270, %271
  %272 = load i32, ptr %a0, align 4
  %add427 = add nsw i32 %272, %sub426
  store i32 %add427, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end428

do.end428:                                        ; preds = %do.body421
  %273 = load ptr, ptr %pb, align 8
  %incdec.ptr429 = getelementptr inbounds i64, ptr %273, i32 1
  store ptr %incdec.ptr429, ptr %pb, align 8
  %274 = load i64, ptr %273, align 8
  %275 = load i32, ptr %b1, align 4
  %conv430 = sext i32 %275 to i64
  %add431 = add i64 %conv430, %274
  %conv432 = trunc i64 %add431 to i32
  store i32 %conv432, ptr %b1, align 4
  br label %sw.epilog638

sw.bb433:                                         ; preds = %do.end32
  br label %do.body434

do.body434:                                       ; preds = %sw.bb433
  %276 = load ptr, ptr %pa, align 8
  %277 = load ptr, ptr %thisrun, align 8
  %cmp435 = icmp ne ptr %276, %277
  br i1 %cmp435, label %if.then437, label %if.end454

if.then437:                                       ; preds = %do.body434
  br label %while.cond438

while.cond438:                                    ; preds = %while.body445, %if.then437
  %278 = load i32, ptr %b1, align 4
  %279 = load i32, ptr %a0, align 4
  %cmp439 = icmp sle i32 %278, %279
  br i1 %cmp439, label %land.rhs441, label %land.end444

land.rhs441:                                      ; preds = %while.cond438
  %280 = load i32, ptr %b1, align 4
  %281 = load i32, ptr %lastx, align 4
  %cmp442 = icmp slt i32 %280, %281
  br label %land.end444

land.end444:                                      ; preds = %land.rhs441, %while.cond438
  %282 = phi i1 [ false, %while.cond438 ], [ %cmp442, %land.rhs441 ]
  br i1 %282, label %while.body445, label %while.end453

while.body445:                                    ; preds = %land.end444
  %283 = load ptr, ptr %pb, align 8
  %arrayidx446 = getelementptr inbounds i64, ptr %283, i64 0
  %284 = load i64, ptr %arrayidx446, align 8
  %285 = load ptr, ptr %pb, align 8
  %arrayidx447 = getelementptr inbounds i64, ptr %285, i64 1
  %286 = load i64, ptr %arrayidx447, align 8
  %add448 = add i64 %284, %286
  %287 = load i32, ptr %b1, align 4
  %conv449 = sext i32 %287 to i64
  %add450 = add i64 %conv449, %add448
  %conv451 = trunc i64 %add450 to i32
  store i32 %conv451, ptr %b1, align 4
  %288 = load ptr, ptr %pb, align 8
  %add.ptr452 = getelementptr inbounds i64, ptr %288, i64 2
  store ptr %add.ptr452, ptr %pb, align 8
  br label %while.cond438, !llvm.loop !15

while.end453:                                     ; preds = %land.end444
  br label %if.end454

if.end454:                                        ; preds = %while.end453, %do.body434
  br label %do.end455

do.end455:                                        ; preds = %if.end454
  br label %do.body456

do.body456:                                       ; preds = %do.end455
  %289 = load i32, ptr %RunLength, align 4
  %conv457 = sext i32 %289 to i64
  %290 = load i32, ptr %b1, align 4
  %291 = load i32, ptr %a0, align 4
  %sub458 = sub nsw i32 %290, %291
  %conv459 = sext i32 %sub458 to i64
  %292 = load ptr, ptr %TabEnt, align 8
  %Param460 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %292, i32 0, i32 2
  %293 = load i64, ptr %Param460, align 8
  %add461 = add i64 %conv459, %293
  %add462 = add i64 %conv457, %add461
  %294 = load ptr, ptr %pa, align 8
  %incdec.ptr463 = getelementptr inbounds i64, ptr %294, i32 1
  store ptr %incdec.ptr463, ptr %pa, align 8
  store i64 %add462, ptr %294, align 8
  %295 = load i32, ptr %b1, align 4
  %296 = load i32, ptr %a0, align 4
  %sub464 = sub nsw i32 %295, %296
  %conv465 = sext i32 %sub464 to i64
  %297 = load ptr, ptr %TabEnt, align 8
  %Param466 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %297, i32 0, i32 2
  %298 = load i64, ptr %Param466, align 8
  %add467 = add i64 %conv465, %298
  %299 = load i32, ptr %a0, align 4
  %conv468 = sext i32 %299 to i64
  %add469 = add i64 %conv468, %add467
  %conv470 = trunc i64 %add469 to i32
  store i32 %conv470, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end471

do.end471:                                        ; preds = %do.body456
  %300 = load ptr, ptr %pb, align 8
  %incdec.ptr472 = getelementptr inbounds i64, ptr %300, i32 1
  store ptr %incdec.ptr472, ptr %pb, align 8
  %301 = load i64, ptr %300, align 8
  %302 = load i32, ptr %b1, align 4
  %conv473 = sext i32 %302 to i64
  %add474 = add i64 %conv473, %301
  %conv475 = trunc i64 %add474 to i32
  store i32 %conv475, ptr %b1, align 4
  br label %sw.epilog638

sw.bb476:                                         ; preds = %do.end32
  br label %do.body477

do.body477:                                       ; preds = %sw.bb476
  %303 = load ptr, ptr %pa, align 8
  %304 = load ptr, ptr %thisrun, align 8
  %cmp478 = icmp ne ptr %303, %304
  br i1 %cmp478, label %if.then480, label %if.end497

if.then480:                                       ; preds = %do.body477
  br label %while.cond481

while.cond481:                                    ; preds = %while.body488, %if.then480
  %305 = load i32, ptr %b1, align 4
  %306 = load i32, ptr %a0, align 4
  %cmp482 = icmp sle i32 %305, %306
  br i1 %cmp482, label %land.rhs484, label %land.end487

land.rhs484:                                      ; preds = %while.cond481
  %307 = load i32, ptr %b1, align 4
  %308 = load i32, ptr %lastx, align 4
  %cmp485 = icmp slt i32 %307, %308
  br label %land.end487

land.end487:                                      ; preds = %land.rhs484, %while.cond481
  %309 = phi i1 [ false, %while.cond481 ], [ %cmp485, %land.rhs484 ]
  br i1 %309, label %while.body488, label %while.end496

while.body488:                                    ; preds = %land.end487
  %310 = load ptr, ptr %pb, align 8
  %arrayidx489 = getelementptr inbounds i64, ptr %310, i64 0
  %311 = load i64, ptr %arrayidx489, align 8
  %312 = load ptr, ptr %pb, align 8
  %arrayidx490 = getelementptr inbounds i64, ptr %312, i64 1
  %313 = load i64, ptr %arrayidx490, align 8
  %add491 = add i64 %311, %313
  %314 = load i32, ptr %b1, align 4
  %conv492 = sext i32 %314 to i64
  %add493 = add i64 %conv492, %add491
  %conv494 = trunc i64 %add493 to i32
  store i32 %conv494, ptr %b1, align 4
  %315 = load ptr, ptr %pb, align 8
  %add.ptr495 = getelementptr inbounds i64, ptr %315, i64 2
  store ptr %add.ptr495, ptr %pb, align 8
  br label %while.cond481, !llvm.loop !16

while.end496:                                     ; preds = %land.end487
  br label %if.end497

if.end497:                                        ; preds = %while.end496, %do.body477
  br label %do.end498

do.end498:                                        ; preds = %if.end497
  br label %do.body499

do.body499:                                       ; preds = %do.end498
  %316 = load i32, ptr %RunLength, align 4
  %conv500 = sext i32 %316 to i64
  %317 = load i32, ptr %b1, align 4
  %318 = load i32, ptr %a0, align 4
  %sub501 = sub nsw i32 %317, %318
  %conv502 = sext i32 %sub501 to i64
  %319 = load ptr, ptr %TabEnt, align 8
  %Param503 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %319, i32 0, i32 2
  %320 = load i64, ptr %Param503, align 8
  %sub504 = sub i64 %conv502, %320
  %add505 = add i64 %conv500, %sub504
  %321 = load ptr, ptr %pa, align 8
  %incdec.ptr506 = getelementptr inbounds i64, ptr %321, i32 1
  store ptr %incdec.ptr506, ptr %pa, align 8
  store i64 %add505, ptr %321, align 8
  %322 = load i32, ptr %b1, align 4
  %323 = load i32, ptr %a0, align 4
  %sub507 = sub nsw i32 %322, %323
  %conv508 = sext i32 %sub507 to i64
  %324 = load ptr, ptr %TabEnt, align 8
  %Param509 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %324, i32 0, i32 2
  %325 = load i64, ptr %Param509, align 8
  %sub510 = sub i64 %conv508, %325
  %326 = load i32, ptr %a0, align 4
  %conv511 = sext i32 %326 to i64
  %add512 = add i64 %conv511, %sub510
  %conv513 = trunc i64 %add512 to i32
  store i32 %conv513, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end514

do.end514:                                        ; preds = %do.body499
  %327 = load ptr, ptr %pb, align 8
  %incdec.ptr515 = getelementptr inbounds i64, ptr %327, i32 -1
  store ptr %incdec.ptr515, ptr %pb, align 8
  %328 = load i64, ptr %incdec.ptr515, align 8
  %329 = load i32, ptr %b1, align 4
  %conv516 = sext i32 %329 to i64
  %sub517 = sub i64 %conv516, %328
  %conv518 = trunc i64 %sub517 to i32
  store i32 %conv518, ptr %b1, align 4
  br label %sw.epilog638

sw.bb519:                                         ; preds = %do.end32
  %330 = load i32, ptr %lastx, align 4
  %331 = load i32, ptr %a0, align 4
  %sub520 = sub nsw i32 %330, %331
  %conv521 = sext i32 %sub520 to i64
  %332 = load ptr, ptr %pa, align 8
  %incdec.ptr522 = getelementptr inbounds i64, ptr %332, i32 1
  store ptr %incdec.ptr522, ptr %pa, align 8
  store i64 %conv521, ptr %332, align 8
  %333 = load ptr, ptr %tif.addr, align 8
  %334 = load i32, ptr %a0, align 4
  %conv523 = sext i32 %334 to i64
  call void @Fax3Extension(ptr noundef @Fax4Decode.module, ptr noundef %333, i64 noundef %conv523)
  br label %eol2d

sw.bb524:                                         ; preds = %do.end32
  %335 = load i32, ptr %lastx, align 4
  %336 = load i32, ptr %a0, align 4
  %sub525 = sub nsw i32 %335, %336
  %conv526 = sext i32 %sub525 to i64
  %337 = load ptr, ptr %pa, align 8
  %incdec.ptr527 = getelementptr inbounds i64, ptr %337, i32 1
  store ptr %incdec.ptr527, ptr %pa, align 8
  store i64 %conv526, ptr %337, align 8
  br label %do.body528

do.body528:                                       ; preds = %sw.bb524
  %338 = load i32, ptr %BitsAvail, align 4
  %cmp529 = icmp slt i32 %338, 5
  br i1 %cmp529, label %if.then531, label %if.end549

if.then531:                                       ; preds = %do.body528
  %339 = load ptr, ptr %cp, align 8
  %340 = load ptr, ptr %ep, align 8
  %cmp532 = icmp uge ptr %339, %340
  br i1 %cmp532, label %if.then534, label %if.else539

if.then534:                                       ; preds = %if.then531
  %341 = load i32, ptr %BitsAvail, align 4
  %cmp535 = icmp eq i32 %341, 0
  br i1 %cmp535, label %if.then537, label %if.end538

if.then537:                                       ; preds = %if.then534
  br label %eof2d

if.end538:                                        ; preds = %if.then534
  store i32 5, ptr %BitsAvail, align 4
  br label %if.end548

if.else539:                                       ; preds = %if.then531
  %342 = load ptr, ptr %bitmap, align 8
  %343 = load ptr, ptr %cp, align 8
  %incdec.ptr540 = getelementptr inbounds i8, ptr %343, i32 1
  store ptr %incdec.ptr540, ptr %cp, align 8
  %344 = load i8, ptr %343, align 1
  %idxprom541 = zext i8 %344 to i64
  %arrayidx542 = getelementptr inbounds i8, ptr %342, i64 %idxprom541
  %345 = load i8, ptr %arrayidx542, align 1
  %conv543 = zext i8 %345 to i64
  %346 = load i32, ptr %BitsAvail, align 4
  %sh_prom544 = zext i32 %346 to i64
  %shl545 = shl i64 %conv543, %sh_prom544
  %347 = load i64, ptr %BitAcc, align 8
  %or546 = or i64 %347, %shl545
  store i64 %or546, ptr %BitAcc, align 8
  %348 = load i32, ptr %BitsAvail, align 4
  %add547 = add nsw i32 %348, 8
  store i32 %add547, ptr %BitsAvail, align 4
  br label %if.end548

if.end548:                                        ; preds = %if.else539, %if.end538
  br label %if.end549

if.end549:                                        ; preds = %if.end548, %do.body528
  br label %do.end550

do.end550:                                        ; preds = %if.end549
  %349 = load i64, ptr %BitAcc, align 8
  %and551 = and i64 %349, 31
  %tobool552 = icmp ne i64 %and551, 0
  br i1 %tobool552, label %if.then553, label %if.end555

if.then553:                                       ; preds = %do.end550
  %350 = load ptr, ptr %tif.addr, align 8
  %351 = load i32, ptr %a0, align 4
  %conv554 = sext i32 %351 to i64
  call void @Fax3Unexpected(ptr noundef @Fax4Decode.module, ptr noundef %350, i64 noundef %conv554)
  br label %if.end555

if.end555:                                        ; preds = %if.then553, %do.end550
  store i32 1, ptr %EOLcnt, align 4
  br label %eol2d

sw.default556:                                    ; preds = %do.end32
  br label %badMain2d

badMain2d:                                        ; preds = %if.then671, %sw.default556
  %352 = load ptr, ptr %tif.addr, align 8
  %353 = load i32, ptr %a0, align 4
  %conv557 = sext i32 %353 to i64
  call void @Fax3Unexpected(ptr noundef @Fax4Decode.module, ptr noundef %352, i64 noundef %conv557)
  br label %eol2d

badBlack2d:                                       ; preds = %sw.default373, %sw.default
  %354 = load ptr, ptr %tif.addr, align 8
  %355 = load i32, ptr %a0, align 4
  %conv558 = sext i32 %355 to i64
  call void @Fax3Unexpected(ptr noundef @Fax4Decode.module, ptr noundef %354, i64 noundef %conv558)
  br label %eol2d

badWhite2d:                                       ; preds = %sw.default295, %sw.default216
  %356 = load ptr, ptr %tif.addr, align 8
  %357 = load i32, ptr %a0, align 4
  %conv559 = sext i32 %357 to i64
  call void @Fax3Unexpected(ptr noundef @Fax4Decode.module, ptr noundef %356, i64 noundef %conv559)
  br label %eol2d

eof2d:                                            ; preds = %if.then655, %if.then537, %if.then308, %if.then230, %if.then151, %if.then76, %if.then19
  %358 = load ptr, ptr %tif.addr, align 8
  %359 = load i32, ptr %a0, align 4
  %conv560 = sext i32 %359 to i64
  call void @Fax3PrematureEOF(ptr noundef @Fax4Decode.module, ptr noundef %358, i64 noundef %conv560)
  br label %do.body561

do.body561:                                       ; preds = %eof2d
  %360 = load i32, ptr %RunLength, align 4
  %tobool562 = icmp ne i32 %360, 0
  br i1 %tobool562, label %if.then563, label %if.end570

if.then563:                                       ; preds = %do.body561
  br label %do.body564

do.body564:                                       ; preds = %if.then563
  %361 = load i32, ptr %RunLength, align 4
  %add565 = add nsw i32 %361, 0
  %conv566 = sext i32 %add565 to i64
  %362 = load ptr, ptr %pa, align 8
  %incdec.ptr567 = getelementptr inbounds i64, ptr %362, i32 1
  store ptr %incdec.ptr567, ptr %pa, align 8
  store i64 %conv566, ptr %362, align 8
  %363 = load i32, ptr %a0, align 4
  %add568 = add nsw i32 %363, 0
  store i32 %add568, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end569

do.end569:                                        ; preds = %do.body564
  br label %if.end570

if.end570:                                        ; preds = %do.end569, %do.body561
  %364 = load i32, ptr %a0, align 4
  %365 = load i32, ptr %lastx, align 4
  %cmp571 = icmp ne i32 %364, %365
  br i1 %cmp571, label %if.then573, label %if.end636

if.then573:                                       ; preds = %if.end570
  %366 = load ptr, ptr %tif.addr, align 8
  %367 = load i32, ptr %a0, align 4
  %conv574 = sext i32 %367 to i64
  %368 = load i32, ptr %lastx, align 4
  %conv575 = sext i32 %368 to i64
  call void @Fax3BadLength(ptr noundef @Fax4Decode.module, ptr noundef %366, i64 noundef %conv574, i64 noundef %conv575)
  br label %while.cond576

while.cond576:                                    ; preds = %while.body583, %if.then573
  %369 = load i32, ptr %a0, align 4
  %370 = load i32, ptr %lastx, align 4
  %cmp577 = icmp sgt i32 %369, %370
  br i1 %cmp577, label %land.rhs579, label %land.end582

land.rhs579:                                      ; preds = %while.cond576
  %371 = load ptr, ptr %pa, align 8
  %372 = load ptr, ptr %thisrun, align 8
  %cmp580 = icmp ugt ptr %371, %372
  br label %land.end582

land.end582:                                      ; preds = %land.rhs579, %while.cond576
  %373 = phi i1 [ false, %while.cond576 ], [ %cmp580, %land.rhs579 ]
  br i1 %373, label %while.body583, label %while.end588

while.body583:                                    ; preds = %land.end582
  %374 = load ptr, ptr %pa, align 8
  %incdec.ptr584 = getelementptr inbounds i64, ptr %374, i32 -1
  store ptr %incdec.ptr584, ptr %pa, align 8
  %375 = load i64, ptr %incdec.ptr584, align 8
  %376 = load i32, ptr %a0, align 4
  %conv585 = sext i32 %376 to i64
  %sub586 = sub i64 %conv585, %375
  %conv587 = trunc i64 %sub586 to i32
  store i32 %conv587, ptr %a0, align 4
  br label %while.cond576, !llvm.loop !17

while.end588:                                     ; preds = %land.end582
  %377 = load i32, ptr %a0, align 4
  %378 = load i32, ptr %lastx, align 4
  %cmp589 = icmp slt i32 %377, %378
  br i1 %cmp589, label %if.then591, label %if.else618

if.then591:                                       ; preds = %while.end588
  %379 = load i32, ptr %a0, align 4
  %cmp592 = icmp slt i32 %379, 0
  br i1 %cmp592, label %if.then594, label %if.end595

if.then594:                                       ; preds = %if.then591
  store i32 0, ptr %a0, align 4
  br label %if.end595

if.end595:                                        ; preds = %if.then594, %if.then591
  %380 = load ptr, ptr %pa, align 8
  %381 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast596 = ptrtoint ptr %380 to i64
  %sub.ptr.rhs.cast597 = ptrtoint ptr %381 to i64
  %sub.ptr.sub598 = sub i64 %sub.ptr.lhs.cast596, %sub.ptr.rhs.cast597
  %sub.ptr.div599 = sdiv exact i64 %sub.ptr.sub598, 8
  %and600 = and i64 %sub.ptr.div599, 1
  %tobool601 = icmp ne i64 %and600, 0
  br i1 %tobool601, label %if.then602, label %if.end609

if.then602:                                       ; preds = %if.end595
  br label %do.body603

do.body603:                                       ; preds = %if.then602
  %382 = load i32, ptr %RunLength, align 4
  %add604 = add nsw i32 %382, 0
  %conv605 = sext i32 %add604 to i64
  %383 = load ptr, ptr %pa, align 8
  %incdec.ptr606 = getelementptr inbounds i64, ptr %383, i32 1
  store ptr %incdec.ptr606, ptr %pa, align 8
  store i64 %conv605, ptr %383, align 8
  %384 = load i32, ptr %a0, align 4
  %add607 = add nsw i32 %384, 0
  store i32 %add607, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end608

do.end608:                                        ; preds = %do.body603
  br label %if.end609

if.end609:                                        ; preds = %do.end608, %if.end595
  br label %do.body610

do.body610:                                       ; preds = %if.end609
  %385 = load i32, ptr %RunLength, align 4
  %386 = load i32, ptr %lastx, align 4
  %387 = load i32, ptr %a0, align 4
  %sub611 = sub nsw i32 %386, %387
  %add612 = add nsw i32 %385, %sub611
  %conv613 = sext i32 %add612 to i64
  %388 = load ptr, ptr %pa, align 8
  %incdec.ptr614 = getelementptr inbounds i64, ptr %388, i32 1
  store ptr %incdec.ptr614, ptr %pa, align 8
  store i64 %conv613, ptr %388, align 8
  %389 = load i32, ptr %lastx, align 4
  %390 = load i32, ptr %a0, align 4
  %sub615 = sub nsw i32 %389, %390
  %391 = load i32, ptr %a0, align 4
  %add616 = add nsw i32 %391, %sub615
  store i32 %add616, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end617

do.end617:                                        ; preds = %do.body610
  br label %if.end635

if.else618:                                       ; preds = %while.end588
  %392 = load i32, ptr %a0, align 4
  %393 = load i32, ptr %lastx, align 4
  %cmp619 = icmp sgt i32 %392, %393
  br i1 %cmp619, label %if.then621, label %if.end634

if.then621:                                       ; preds = %if.else618
  br label %do.body622

do.body622:                                       ; preds = %if.then621
  %394 = load i32, ptr %RunLength, align 4
  %395 = load i32, ptr %lastx, align 4
  %add623 = add nsw i32 %394, %395
  %conv624 = sext i32 %add623 to i64
  %396 = load ptr, ptr %pa, align 8
  %incdec.ptr625 = getelementptr inbounds i64, ptr %396, i32 1
  store ptr %incdec.ptr625, ptr %pa, align 8
  store i64 %conv624, ptr %396, align 8
  %397 = load i32, ptr %lastx, align 4
  %398 = load i32, ptr %a0, align 4
  %add626 = add nsw i32 %398, %397
  store i32 %add626, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end627

do.end627:                                        ; preds = %do.body622
  br label %do.body628

do.body628:                                       ; preds = %do.end627
  %399 = load i32, ptr %RunLength, align 4
  %add629 = add nsw i32 %399, 0
  %conv630 = sext i32 %add629 to i64
  %400 = load ptr, ptr %pa, align 8
  %incdec.ptr631 = getelementptr inbounds i64, ptr %400, i32 1
  store ptr %incdec.ptr631, ptr %pa, align 8
  store i64 %conv630, ptr %400, align 8
  %401 = load i32, ptr %a0, align 4
  %add632 = add nsw i32 %401, 0
  store i32 %add632, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end633

do.end633:                                        ; preds = %do.body628
  br label %if.end634

if.end634:                                        ; preds = %do.end633, %if.else618
  br label %if.end635

if.end635:                                        ; preds = %if.end634, %do.end617
  br label %if.end636

if.end636:                                        ; preds = %if.end635, %if.end570
  br label %do.end637

do.end637:                                        ; preds = %if.end636
  br label %EOFG4

sw.epilog638:                                     ; preds = %do.end514, %do.end471, %do.end428, %do.end397, %do.end52
  br label %while.cond6, !llvm.loop !18

while.end639:                                     ; preds = %while.cond6
  %402 = load i32, ptr %RunLength, align 4
  %tobool640 = icmp ne i32 %402, 0
  br i1 %tobool640, label %if.then641, label %if.end684

if.then641:                                       ; preds = %while.end639
  %403 = load i32, ptr %RunLength, align 4
  %404 = load i32, ptr %a0, align 4
  %add642 = add nsw i32 %403, %404
  %405 = load i32, ptr %lastx, align 4
  %cmp643 = icmp slt i32 %add642, %405
  br i1 %cmp643, label %if.then645, label %if.end677

if.then645:                                       ; preds = %if.then641
  br label %do.body646

do.body646:                                       ; preds = %if.then645
  %406 = load i32, ptr %BitsAvail, align 4
  %cmp647 = icmp slt i32 %406, 1
  br i1 %cmp647, label %if.then649, label %if.end667

if.then649:                                       ; preds = %do.body646
  %407 = load ptr, ptr %cp, align 8
  %408 = load ptr, ptr %ep, align 8
  %cmp650 = icmp uge ptr %407, %408
  br i1 %cmp650, label %if.then652, label %if.else657

if.then652:                                       ; preds = %if.then649
  %409 = load i32, ptr %BitsAvail, align 4
  %cmp653 = icmp eq i32 %409, 0
  br i1 %cmp653, label %if.then655, label %if.end656

if.then655:                                       ; preds = %if.then652
  br label %eof2d

if.end656:                                        ; preds = %if.then652
  store i32 1, ptr %BitsAvail, align 4
  br label %if.end666

if.else657:                                       ; preds = %if.then649
  %410 = load ptr, ptr %bitmap, align 8
  %411 = load ptr, ptr %cp, align 8
  %incdec.ptr658 = getelementptr inbounds i8, ptr %411, i32 1
  store ptr %incdec.ptr658, ptr %cp, align 8
  %412 = load i8, ptr %411, align 1
  %idxprom659 = zext i8 %412 to i64
  %arrayidx660 = getelementptr inbounds i8, ptr %410, i64 %idxprom659
  %413 = load i8, ptr %arrayidx660, align 1
  %conv661 = zext i8 %413 to i64
  %414 = load i32, ptr %BitsAvail, align 4
  %sh_prom662 = zext i32 %414 to i64
  %shl663 = shl i64 %conv661, %sh_prom662
  %415 = load i64, ptr %BitAcc, align 8
  %or664 = or i64 %415, %shl663
  store i64 %or664, ptr %BitAcc, align 8
  %416 = load i32, ptr %BitsAvail, align 4
  %add665 = add nsw i32 %416, 8
  store i32 %add665, ptr %BitsAvail, align 4
  br label %if.end666

if.end666:                                        ; preds = %if.else657, %if.end656
  br label %if.end667

if.end667:                                        ; preds = %if.end666, %do.body646
  br label %do.end668

do.end668:                                        ; preds = %if.end667
  %417 = load i64, ptr %BitAcc, align 8
  %and669 = and i64 %417, 1
  %tobool670 = icmp ne i64 %and669, 0
  br i1 %tobool670, label %if.end672, label %if.then671

if.then671:                                       ; preds = %do.end668
  br label %badMain2d

if.end672:                                        ; preds = %do.end668
  br label %do.body673

do.body673:                                       ; preds = %if.end672
  %418 = load i32, ptr %BitsAvail, align 4
  %sub674 = sub nsw i32 %418, 1
  store i32 %sub674, ptr %BitsAvail, align 4
  %419 = load i64, ptr %BitAcc, align 8
  %shr675 = lshr i64 %419, 1
  store i64 %shr675, ptr %BitAcc, align 8
  br label %do.end676

do.end676:                                        ; preds = %do.body673
  br label %if.end677

if.end677:                                        ; preds = %do.end676, %if.then641
  br label %do.body678

do.body678:                                       ; preds = %if.end677
  %420 = load i32, ptr %RunLength, align 4
  %add679 = add nsw i32 %420, 0
  %conv680 = sext i32 %add679 to i64
  %421 = load ptr, ptr %pa, align 8
  %incdec.ptr681 = getelementptr inbounds i64, ptr %421, i32 1
  store ptr %incdec.ptr681, ptr %pa, align 8
  store i64 %conv680, ptr %421, align 8
  %422 = load i32, ptr %a0, align 4
  %add682 = add nsw i32 %422, 0
  store i32 %add682, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end683

do.end683:                                        ; preds = %do.body678
  br label %if.end684

if.end684:                                        ; preds = %do.end683, %while.end639
  br label %eol2d

eol2d:                                            ; preds = %if.end684, %badWhite2d, %badBlack2d, %badMain2d, %if.end555, %sw.bb519
  br label %do.body685

do.body685:                                       ; preds = %eol2d
  %423 = load i32, ptr %RunLength, align 4
  %tobool686 = icmp ne i32 %423, 0
  br i1 %tobool686, label %if.then687, label %if.end694

if.then687:                                       ; preds = %do.body685
  br label %do.body688

do.body688:                                       ; preds = %if.then687
  %424 = load i32, ptr %RunLength, align 4
  %add689 = add nsw i32 %424, 0
  %conv690 = sext i32 %add689 to i64
  %425 = load ptr, ptr %pa, align 8
  %incdec.ptr691 = getelementptr inbounds i64, ptr %425, i32 1
  store ptr %incdec.ptr691, ptr %pa, align 8
  store i64 %conv690, ptr %425, align 8
  %426 = load i32, ptr %a0, align 4
  %add692 = add nsw i32 %426, 0
  store i32 %add692, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end693

do.end693:                                        ; preds = %do.body688
  br label %if.end694

if.end694:                                        ; preds = %do.end693, %do.body685
  %427 = load i32, ptr %a0, align 4
  %428 = load i32, ptr %lastx, align 4
  %cmp695 = icmp ne i32 %427, %428
  br i1 %cmp695, label %if.then697, label %if.end760

if.then697:                                       ; preds = %if.end694
  %429 = load ptr, ptr %tif.addr, align 8
  %430 = load i32, ptr %a0, align 4
  %conv698 = sext i32 %430 to i64
  %431 = load i32, ptr %lastx, align 4
  %conv699 = sext i32 %431 to i64
  call void @Fax3BadLength(ptr noundef @Fax4Decode.module, ptr noundef %429, i64 noundef %conv698, i64 noundef %conv699)
  br label %while.cond700

while.cond700:                                    ; preds = %while.body707, %if.then697
  %432 = load i32, ptr %a0, align 4
  %433 = load i32, ptr %lastx, align 4
  %cmp701 = icmp sgt i32 %432, %433
  br i1 %cmp701, label %land.rhs703, label %land.end706

land.rhs703:                                      ; preds = %while.cond700
  %434 = load ptr, ptr %pa, align 8
  %435 = load ptr, ptr %thisrun, align 8
  %cmp704 = icmp ugt ptr %434, %435
  br label %land.end706

land.end706:                                      ; preds = %land.rhs703, %while.cond700
  %436 = phi i1 [ false, %while.cond700 ], [ %cmp704, %land.rhs703 ]
  br i1 %436, label %while.body707, label %while.end712

while.body707:                                    ; preds = %land.end706
  %437 = load ptr, ptr %pa, align 8
  %incdec.ptr708 = getelementptr inbounds i64, ptr %437, i32 -1
  store ptr %incdec.ptr708, ptr %pa, align 8
  %438 = load i64, ptr %incdec.ptr708, align 8
  %439 = load i32, ptr %a0, align 4
  %conv709 = sext i32 %439 to i64
  %sub710 = sub i64 %conv709, %438
  %conv711 = trunc i64 %sub710 to i32
  store i32 %conv711, ptr %a0, align 4
  br label %while.cond700, !llvm.loop !19

while.end712:                                     ; preds = %land.end706
  %440 = load i32, ptr %a0, align 4
  %441 = load i32, ptr %lastx, align 4
  %cmp713 = icmp slt i32 %440, %441
  br i1 %cmp713, label %if.then715, label %if.else742

if.then715:                                       ; preds = %while.end712
  %442 = load i32, ptr %a0, align 4
  %cmp716 = icmp slt i32 %442, 0
  br i1 %cmp716, label %if.then718, label %if.end719

if.then718:                                       ; preds = %if.then715
  store i32 0, ptr %a0, align 4
  br label %if.end719

if.end719:                                        ; preds = %if.then718, %if.then715
  %443 = load ptr, ptr %pa, align 8
  %444 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast720 = ptrtoint ptr %443 to i64
  %sub.ptr.rhs.cast721 = ptrtoint ptr %444 to i64
  %sub.ptr.sub722 = sub i64 %sub.ptr.lhs.cast720, %sub.ptr.rhs.cast721
  %sub.ptr.div723 = sdiv exact i64 %sub.ptr.sub722, 8
  %and724 = and i64 %sub.ptr.div723, 1
  %tobool725 = icmp ne i64 %and724, 0
  br i1 %tobool725, label %if.then726, label %if.end733

if.then726:                                       ; preds = %if.end719
  br label %do.body727

do.body727:                                       ; preds = %if.then726
  %445 = load i32, ptr %RunLength, align 4
  %add728 = add nsw i32 %445, 0
  %conv729 = sext i32 %add728 to i64
  %446 = load ptr, ptr %pa, align 8
  %incdec.ptr730 = getelementptr inbounds i64, ptr %446, i32 1
  store ptr %incdec.ptr730, ptr %pa, align 8
  store i64 %conv729, ptr %446, align 8
  %447 = load i32, ptr %a0, align 4
  %add731 = add nsw i32 %447, 0
  store i32 %add731, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end732

do.end732:                                        ; preds = %do.body727
  br label %if.end733

if.end733:                                        ; preds = %do.end732, %if.end719
  br label %do.body734

do.body734:                                       ; preds = %if.end733
  %448 = load i32, ptr %RunLength, align 4
  %449 = load i32, ptr %lastx, align 4
  %450 = load i32, ptr %a0, align 4
  %sub735 = sub nsw i32 %449, %450
  %add736 = add nsw i32 %448, %sub735
  %conv737 = sext i32 %add736 to i64
  %451 = load ptr, ptr %pa, align 8
  %incdec.ptr738 = getelementptr inbounds i64, ptr %451, i32 1
  store ptr %incdec.ptr738, ptr %pa, align 8
  store i64 %conv737, ptr %451, align 8
  %452 = load i32, ptr %lastx, align 4
  %453 = load i32, ptr %a0, align 4
  %sub739 = sub nsw i32 %452, %453
  %454 = load i32, ptr %a0, align 4
  %add740 = add nsw i32 %454, %sub739
  store i32 %add740, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end741

do.end741:                                        ; preds = %do.body734
  br label %if.end759

if.else742:                                       ; preds = %while.end712
  %455 = load i32, ptr %a0, align 4
  %456 = load i32, ptr %lastx, align 4
  %cmp743 = icmp sgt i32 %455, %456
  br i1 %cmp743, label %if.then745, label %if.end758

if.then745:                                       ; preds = %if.else742
  br label %do.body746

do.body746:                                       ; preds = %if.then745
  %457 = load i32, ptr %RunLength, align 4
  %458 = load i32, ptr %lastx, align 4
  %add747 = add nsw i32 %457, %458
  %conv748 = sext i32 %add747 to i64
  %459 = load ptr, ptr %pa, align 8
  %incdec.ptr749 = getelementptr inbounds i64, ptr %459, i32 1
  store ptr %incdec.ptr749, ptr %pa, align 8
  store i64 %conv748, ptr %459, align 8
  %460 = load i32, ptr %lastx, align 4
  %461 = load i32, ptr %a0, align 4
  %add750 = add nsw i32 %461, %460
  store i32 %add750, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end751

do.end751:                                        ; preds = %do.body746
  br label %do.body752

do.body752:                                       ; preds = %do.end751
  %462 = load i32, ptr %RunLength, align 4
  %add753 = add nsw i32 %462, 0
  %conv754 = sext i32 %add753 to i64
  %463 = load ptr, ptr %pa, align 8
  %incdec.ptr755 = getelementptr inbounds i64, ptr %463, i32 1
  store ptr %incdec.ptr755, ptr %pa, align 8
  store i64 %conv754, ptr %463, align 8
  %464 = load i32, ptr %a0, align 4
  %add756 = add nsw i32 %464, 0
  store i32 %add756, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end757

do.end757:                                        ; preds = %do.body752
  br label %if.end758

if.end758:                                        ; preds = %do.end757, %if.else742
  br label %if.end759

if.end759:                                        ; preds = %if.end758, %do.end741
  br label %if.end760

if.end760:                                        ; preds = %if.end759, %if.end694
  br label %do.end761

do.end761:                                        ; preds = %if.end760
  br label %do.end762

do.end762:                                        ; preds = %do.end761
  %465 = load ptr, ptr %sp, align 8
  %fill = getelementptr inbounds %struct.Fax3DecodeState, ptr %465, i32 0, i32 5
  %466 = load ptr, ptr %fill, align 8
  %467 = load ptr, ptr %buf.addr, align 8
  %468 = load ptr, ptr %thisrun, align 8
  %469 = load ptr, ptr %pa, align 8
  %470 = load i32, ptr %lastx, align 4
  %conv763 = sext i32 %470 to i64
  call void %466(ptr noundef %467, ptr noundef %468, ptr noundef %469, i64 noundef %conv763)
  br label %do.body764

do.body764:                                       ; preds = %do.end762
  %471 = load i32, ptr %RunLength, align 4
  %add765 = add nsw i32 %471, 0
  %conv766 = sext i32 %add765 to i64
  %472 = load ptr, ptr %pa, align 8
  %incdec.ptr767 = getelementptr inbounds i64, ptr %472, i32 1
  store ptr %incdec.ptr767, ptr %pa, align 8
  store i64 %conv766, ptr %472, align 8
  %473 = load i32, ptr %a0, align 4
  %add768 = add nsw i32 %473, 0
  store i32 %add768, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end769

do.end769:                                        ; preds = %do.body764
  %474 = load ptr, ptr %sp, align 8
  %curruns770 = getelementptr inbounds %struct.Fax3DecodeState, ptr %474, i32 0, i32 8
  %475 = load ptr, ptr %curruns770, align 8
  store ptr %475, ptr %x, align 8
  %476 = load ptr, ptr %sp, align 8
  %refruns771 = getelementptr inbounds %struct.Fax3DecodeState, ptr %476, i32 0, i32 7
  %477 = load ptr, ptr %refruns771, align 8
  %478 = load ptr, ptr %sp, align 8
  %curruns772 = getelementptr inbounds %struct.Fax3DecodeState, ptr %478, i32 0, i32 8
  store ptr %477, ptr %curruns772, align 8
  %479 = load ptr, ptr %x, align 8
  %480 = load ptr, ptr %sp, align 8
  %refruns773 = getelementptr inbounds %struct.Fax3DecodeState, ptr %480, i32 0, i32 7
  store ptr %479, ptr %refruns773, align 8
  %481 = load ptr, ptr %sp, align 8
  %b774 = getelementptr inbounds %struct.Fax3DecodeState, ptr %481, i32 0, i32 0
  %rowbytes = getelementptr inbounds %struct.Fax3BaseState, ptr %b774, i32 0, i32 1
  %482 = load i64, ptr %rowbytes, align 8
  %483 = load ptr, ptr %buf.addr, align 8
  %add.ptr775 = getelementptr inbounds i8, ptr %483, i64 %482
  store ptr %add.ptr775, ptr %buf.addr, align 8
  %484 = load ptr, ptr %sp, align 8
  %b776 = getelementptr inbounds %struct.Fax3DecodeState, ptr %484, i32 0, i32 0
  %rowbytes777 = getelementptr inbounds %struct.Fax3BaseState, ptr %b776, i32 0, i32 1
  %485 = load i64, ptr %rowbytes777, align 8
  %486 = load i64, ptr %occ.addr, align 8
  %sub778 = sub i64 %486, %485
  store i64 %sub778, ptr %occ.addr, align 8
  %487 = load i64, ptr %occ.addr, align 8
  %cmp779 = icmp ne i64 %487, 0
  br i1 %cmp779, label %if.then781, label %if.end782

if.then781:                                       ; preds = %do.end769
  %488 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %488, i32 0, i32 11
  %489 = load i64, ptr %tif_row, align 8
  %inc = add i64 %489, 1
  store i64 %inc, ptr %tif_row, align 8
  br label %if.end782

if.end782:                                        ; preds = %if.then781, %do.end769
  br label %while.cond, !llvm.loop !20

EOFG4:                                            ; preds = %do.end637
  %490 = load ptr, ptr %sp, align 8
  %fill783 = getelementptr inbounds %struct.Fax3DecodeState, ptr %490, i32 0, i32 5
  %491 = load ptr, ptr %fill783, align 8
  %492 = load ptr, ptr %buf.addr, align 8
  %493 = load ptr, ptr %thisrun, align 8
  %494 = load ptr, ptr %pa, align 8
  %495 = load i32, ptr %lastx, align 4
  %conv784 = sext i32 %495 to i64
  call void %491(ptr noundef %492, ptr noundef %493, ptr noundef %494, i64 noundef %conv784)
  br label %do.body785

do.body785:                                       ; preds = %EOFG4
  %496 = load i32, ptr %BitsAvail, align 4
  %497 = load ptr, ptr %sp, align 8
  %bit786 = getelementptr inbounds %struct.Fax3DecodeState, ptr %497, i32 0, i32 3
  store i32 %496, ptr %bit786, align 8
  %498 = load i64, ptr %BitAcc, align 8
  %499 = load ptr, ptr %sp, align 8
  %data787 = getelementptr inbounds %struct.Fax3DecodeState, ptr %499, i32 0, i32 2
  store i64 %498, ptr %data787, align 8
  %500 = load i32, ptr %EOLcnt, align 4
  %501 = load ptr, ptr %sp, align 8
  %EOLcnt788 = getelementptr inbounds %struct.Fax3DecodeState, ptr %501, i32 0, i32 4
  store i32 %500, ptr %EOLcnt788, align 4
  %502 = load ptr, ptr %cp, align 8
  %503 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp789 = getelementptr inbounds %struct.tiff, ptr %503, i32 0, i32 42
  %504 = load ptr, ptr %tif_rawcp789, align 8
  %sub.ptr.lhs.cast790 = ptrtoint ptr %502 to i64
  %sub.ptr.rhs.cast791 = ptrtoint ptr %504 to i64
  %sub.ptr.sub792 = sub i64 %sub.ptr.lhs.cast790, %sub.ptr.rhs.cast791
  %505 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc793 = getelementptr inbounds %struct.tiff, ptr %505, i32 0, i32 43
  %506 = load i64, ptr %tif_rawcc793, align 8
  %sub794 = sub nsw i64 %506, %sub.ptr.sub792
  store i64 %sub794, ptr %tif_rawcc793, align 8
  %507 = load ptr, ptr %cp, align 8
  %508 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp795 = getelementptr inbounds %struct.tiff, ptr %508, i32 0, i32 42
  store ptr %507, ptr %tif_rawcp795, align 8
  br label %do.end796

do.end796:                                        ; preds = %do.body785
  store i32 -1, ptr %retval, align 4
  br label %return

while.end797:                                     ; preds = %while.cond
  br label %do.body798

do.body798:                                       ; preds = %while.end797
  %509 = load i32, ptr %BitsAvail, align 4
  %510 = load ptr, ptr %sp, align 8
  %bit799 = getelementptr inbounds %struct.Fax3DecodeState, ptr %510, i32 0, i32 3
  store i32 %509, ptr %bit799, align 8
  %511 = load i64, ptr %BitAcc, align 8
  %512 = load ptr, ptr %sp, align 8
  %data800 = getelementptr inbounds %struct.Fax3DecodeState, ptr %512, i32 0, i32 2
  store i64 %511, ptr %data800, align 8
  %513 = load i32, ptr %EOLcnt, align 4
  %514 = load ptr, ptr %sp, align 8
  %EOLcnt801 = getelementptr inbounds %struct.Fax3DecodeState, ptr %514, i32 0, i32 4
  store i32 %513, ptr %EOLcnt801, align 4
  %515 = load ptr, ptr %cp, align 8
  %516 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp802 = getelementptr inbounds %struct.tiff, ptr %516, i32 0, i32 42
  %517 = load ptr, ptr %tif_rawcp802, align 8
  %sub.ptr.lhs.cast803 = ptrtoint ptr %515 to i64
  %sub.ptr.rhs.cast804 = ptrtoint ptr %517 to i64
  %sub.ptr.sub805 = sub i64 %sub.ptr.lhs.cast803, %sub.ptr.rhs.cast804
  %518 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc806 = getelementptr inbounds %struct.tiff, ptr %518, i32 0, i32 43
  %519 = load i64, ptr %tif_rawcc806, align 8
  %sub807 = sub nsw i64 %519, %sub.ptr.sub805
  store i64 %sub807, ptr %tif_rawcc806, align 8
  %520 = load ptr, ptr %cp, align 8
  %521 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp808 = getelementptr inbounds %struct.tiff, ptr %521, i32 0, i32 42
  store ptr %520, ptr %tif_rawcp808, align 8
  br label %do.end809

do.end809:                                        ; preds = %do.body798
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end809, %do.end796
  %522 = load i32, ptr %retval, align 4
  ret i32 %522
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax4Encode(ptr noundef %tif, ptr noundef %bp, i64 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  %s.addr = alloca i16, align 2
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load i16, ptr %s.addr, align 2
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %entry
  %3 = load i64, ptr %cc.addr, align 8
  %cmp = icmp sgt i64 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %tif.addr, align 8
  %5 = load ptr, ptr %bp.addr, align 8
  %6 = load ptr, ptr %sp, align 8
  %refline = getelementptr inbounds %struct.Fax3EncodeState, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %refline, align 8
  %8 = load ptr, ptr %sp, align 8
  %b = getelementptr inbounds %struct.Fax3EncodeState, ptr %8, i32 0, i32 0
  %rowpixels = getelementptr inbounds %struct.Fax3BaseState, ptr %b, i32 0, i32 2
  %9 = load i64, ptr %rowpixels, align 8
  %call = call i32 @Fax3Encode2DRow(ptr noundef %4, ptr noundef %5, ptr noundef %7, i64 noundef %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %10 = load ptr, ptr %sp, align 8
  %refline1 = getelementptr inbounds %struct.Fax3EncodeState, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %refline1, align 8
  %12 = load ptr, ptr %bp.addr, align 8
  %13 = load ptr, ptr %sp, align 8
  %b2 = getelementptr inbounds %struct.Fax3EncodeState, ptr %13, i32 0, i32 0
  %rowbytes = getelementptr inbounds %struct.Fax3BaseState, ptr %b2, i32 0, i32 1
  %14 = load i64, ptr %rowbytes, align 8
  call void @_TIFFmemcpy(ptr noundef %11, ptr noundef %12, i64 noundef %14)
  %15 = load ptr, ptr %sp, align 8
  %b3 = getelementptr inbounds %struct.Fax3EncodeState, ptr %15, i32 0, i32 0
  %rowbytes4 = getelementptr inbounds %struct.Fax3BaseState, ptr %b3, i32 0, i32 1
  %16 = load i64, ptr %rowbytes4, align 8
  %17 = load ptr, ptr %bp.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 %16
  store ptr %add.ptr, ptr %bp.addr, align 8
  %18 = load ptr, ptr %sp, align 8
  %b5 = getelementptr inbounds %struct.Fax3EncodeState, ptr %18, i32 0, i32 0
  %rowbytes6 = getelementptr inbounds %struct.Fax3BaseState, ptr %b5, i32 0, i32 1
  %19 = load i64, ptr %rowbytes6, align 8
  %20 = load i64, ptr %cc.addr, align 8
  %sub = sub i64 %20, %19
  store i64 %sub, ptr %cc.addr, align 8
  %21 = load i64, ptr %cc.addr, align 8
  %cmp7 = icmp ne i64 %21, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %22 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %22, i32 0, i32 11
  %23 = load i64, ptr %tif_row, align 8
  %inc = add i64 %23, 1
  store i64 %inc, ptr %tif_row, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax4PostEncode(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  call void @Fax3PutBits(ptr noundef %2, i32 noundef 1, i32 noundef 12)
  %3 = load ptr, ptr %tif.addr, align 8
  call void @Fax3PutBits(ptr noundef %3, i32 noundef 1, i32 noundef 12)
  %4 = load ptr, ptr %sp, align 8
  %bit = getelementptr inbounds %struct.Fax3EncodeState, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %bit, align 4
  %cmp = icmp ne i32 %5, 8
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 43
  %7 = load i64, ptr %tif_rawcc, align 8
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 41
  %9 = load i64, ptr %tif_rawdatasize, align 8
  %cmp1 = icmp sge i64 %7, %9
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %10 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %11 = load ptr, ptr %sp, align 8
  %data = getelementptr inbounds %struct.Fax3EncodeState, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %data, align 8
  %conv = trunc i32 %12 to i8
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %13, i32 0, i32 42
  %14 = load ptr, ptr %tif_rawcp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr, ptr %tif_rawcp, align 8
  store i8 %conv, ptr %14, align 1
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc3 = getelementptr inbounds %struct.tiff, ptr %15, i32 0, i32 43
  %16 = load i64, ptr %tif_rawcc3, align 8
  %inc = add nsw i64 %16, 1
  store i64 %inc, ptr %tif_rawcc3, align 8
  %17 = load ptr, ptr %sp, align 8
  %data4 = getelementptr inbounds %struct.Fax3EncodeState, ptr %17, i32 0, i32 1
  store i32 0, ptr %data4, align 8
  %18 = load ptr, ptr %sp, align 8
  %bit5 = getelementptr inbounds %struct.Fax3EncodeState, ptr %18, i32 0, i32 2
  store i32 8, ptr %bit5, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFInitCCITTRLE(ptr noundef %tif, i32 noundef %scheme) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %scheme.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %scheme, ptr %scheme.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @InitCCITTFax3(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 26
  store ptr @Fax3DecodeRLE, ptr %tif_decoderow, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 28
  store ptr @Fax3DecodeRLE, ptr %tif_decodestrip, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 30
  store ptr @Fax3DecodeRLE, ptr %tif_decodetile, align 8
  %4 = load ptr, ptr %tif.addr, align 8
  %call1 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %4, i64 noundef 65536, i32 noundef 7)
  store i32 %call1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax3DecodeRLE(ptr noundef %tif, ptr noundef %buf, i64 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %occ.addr = alloca i64, align 8
  %s.addr = alloca i16, align 2
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
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load ptr, ptr %sp, align 8
  %b = getelementptr inbounds %struct.Fax3DecodeState, ptr %2, i32 0, i32 0
  %rowpixels = getelementptr inbounds %struct.Fax3BaseState, ptr %b, i32 0, i32 2
  %3 = load i64, ptr %rowpixels, align 8
  %conv = trunc i64 %3 to i32
  store i32 %conv, ptr %lastx, align 4
  %4 = load ptr, ptr %sp, align 8
  %bitmap1 = getelementptr inbounds %struct.Fax3DecodeState, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %bitmap1, align 8
  store ptr %5, ptr %bitmap, align 8
  %6 = load ptr, ptr %sp, align 8
  %b2 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i32 0, i32 0
  %mode3 = getelementptr inbounds %struct.Fax3BaseState, ptr %b2, i32 0, i32 0
  %7 = load i32, ptr %mode3, align 8
  store i32 %7, ptr %mode, align 4
  %8 = load i16, ptr %s.addr, align 2
  br label %do.body

do.body:                                          ; preds = %entry
  %9 = load ptr, ptr %sp, align 8
  %data = getelementptr inbounds %struct.Fax3DecodeState, ptr %9, i32 0, i32 2
  %10 = load i64, ptr %data, align 8
  store i64 %10, ptr %BitAcc, align 8
  %11 = load ptr, ptr %sp, align 8
  %bit = getelementptr inbounds %struct.Fax3DecodeState, ptr %11, i32 0, i32 3
  %12 = load i32, ptr %bit, align 8
  store i32 %12, ptr %BitsAvail, align 4
  %13 = load ptr, ptr %sp, align 8
  %EOLcnt4 = getelementptr inbounds %struct.Fax3DecodeState, ptr %13, i32 0, i32 4
  %14 = load i32, ptr %EOLcnt4, align 4
  store i32 %14, ptr %EOLcnt, align 4
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %15, i32 0, i32 42
  %16 = load ptr, ptr %tif_rawcp, align 8
  store ptr %16, ptr %cp, align 8
  %17 = load ptr, ptr %cp, align 8
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 43
  %19 = load i64, ptr %tif_rawcc, align 8
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 %19
  store ptr %add.ptr, ptr %ep, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  %20 = load ptr, ptr %sp, align 8
  %curruns = getelementptr inbounds %struct.Fax3DecodeState, ptr %20, i32 0, i32 8
  %21 = load ptr, ptr %curruns, align 8
  store ptr %21, ptr %thisrun, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end345, %do.end
  %22 = load i64, ptr %occ.addr, align 8
  %cmp = icmp sgt i64 %22, 0
  br i1 %cmp, label %while.body, label %while.end360

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %23 = load ptr, ptr %thisrun, align 8
  store ptr %23, ptr %pa, align 8
  br label %do.body6

do.body6:                                         ; preds = %while.body
  br label %for.cond

for.cond:                                         ; preds = %if.end155, %do.body6
  br label %for.cond7

for.cond7:                                        ; preds = %sw.epilog, %for.cond
  br label %do.body8

do.body8:                                         ; preds = %for.cond7
  br label %do.body9

do.body9:                                         ; preds = %do.body8
  %24 = load i32, ptr %BitsAvail, align 4
  %cmp10 = icmp slt i32 %24, 12
  br i1 %cmp10, label %if.then, label %if.end37

if.then:                                          ; preds = %do.body9
  %25 = load ptr, ptr %cp, align 8
  %26 = load ptr, ptr %ep, align 8
  %cmp12 = icmp uge ptr %25, %26
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then
  %27 = load i32, ptr %BitsAvail, align 4
  %cmp15 = icmp eq i32 %27, 0
  br i1 %cmp15, label %if.then17, label %if.end

if.then17:                                        ; preds = %if.then14
  br label %eof1d

if.end:                                           ; preds = %if.then14
  store i32 12, ptr %BitsAvail, align 4
  br label %if.end36

if.else:                                          ; preds = %if.then
  %28 = load ptr, ptr %bitmap, align 8
  %29 = load ptr, ptr %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %29, i32 1
  store ptr %incdec.ptr, ptr %cp, align 8
  %30 = load i8, ptr %29, align 1
  %idxprom = zext i8 %30 to i64
  %arrayidx = getelementptr inbounds i8, ptr %28, i64 %idxprom
  %31 = load i8, ptr %arrayidx, align 1
  %conv18 = zext i8 %31 to i64
  %32 = load i32, ptr %BitsAvail, align 4
  %sh_prom = zext i32 %32 to i64
  %shl = shl i64 %conv18, %sh_prom
  %33 = load i64, ptr %BitAcc, align 8
  %or = or i64 %33, %shl
  store i64 %or, ptr %BitAcc, align 8
  %34 = load i32, ptr %BitsAvail, align 4
  %add = add nsw i32 %34, 8
  store i32 %add, ptr %BitsAvail, align 4
  %cmp19 = icmp slt i32 %add, 12
  br i1 %cmp19, label %if.then21, label %if.end35

if.then21:                                        ; preds = %if.else
  %35 = load ptr, ptr %cp, align 8
  %36 = load ptr, ptr %ep, align 8
  %cmp22 = icmp uge ptr %35, %36
  br i1 %cmp22, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.then21
  store i32 12, ptr %BitsAvail, align 4
  br label %if.end34

if.else25:                                        ; preds = %if.then21
  %37 = load ptr, ptr %bitmap, align 8
  %38 = load ptr, ptr %cp, align 8
  %incdec.ptr26 = getelementptr inbounds i8, ptr %38, i32 1
  store ptr %incdec.ptr26, ptr %cp, align 8
  %39 = load i8, ptr %38, align 1
  %idxprom27 = zext i8 %39 to i64
  %arrayidx28 = getelementptr inbounds i8, ptr %37, i64 %idxprom27
  %40 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %40 to i64
  %41 = load i32, ptr %BitsAvail, align 4
  %sh_prom30 = zext i32 %41 to i64
  %shl31 = shl i64 %conv29, %sh_prom30
  %42 = load i64, ptr %BitAcc, align 8
  %or32 = or i64 %42, %shl31
  store i64 %or32, ptr %BitAcc, align 8
  %43 = load i32, ptr %BitsAvail, align 4
  %add33 = add nsw i32 %43, 8
  store i32 %add33, ptr %BitsAvail, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else25, %if.then24
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.else
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %do.body9
  br label %do.end38

do.end38:                                         ; preds = %if.end37
  %44 = load i64, ptr %BitAcc, align 8
  %and = and i64 %44, 4095
  %add.ptr39 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %and
  store ptr %add.ptr39, ptr %TabEnt, align 8
  br label %do.body40

do.body40:                                        ; preds = %do.end38
  %45 = load ptr, ptr %TabEnt, align 8
  %Width = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %45, i32 0, i32 1
  %46 = load i8, ptr %Width, align 1
  %conv41 = zext i8 %46 to i32
  %47 = load i32, ptr %BitsAvail, align 4
  %sub = sub nsw i32 %47, %conv41
  store i32 %sub, ptr %BitsAvail, align 4
  %48 = load ptr, ptr %TabEnt, align 8
  %Width42 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %48, i32 0, i32 1
  %49 = load i8, ptr %Width42, align 1
  %conv43 = zext i8 %49 to i32
  %50 = load i64, ptr %BitAcc, align 8
  %sh_prom44 = zext i32 %conv43 to i64
  %shr = lshr i64 %50, %sh_prom44
  store i64 %shr, ptr %BitAcc, align 8
  br label %do.end45

do.end45:                                         ; preds = %do.body40
  br label %do.end46

do.end46:                                         ; preds = %do.end45
  %51 = load ptr, ptr %TabEnt, align 8
  %State = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %51, i32 0, i32 0
  %52 = load i8, ptr %State, align 8
  %conv47 = zext i8 %52 to i32
  switch i32 %conv47, label %sw.default [
    i32 12, label %sw.bb
    i32 7, label %sw.bb48
    i32 9, label %sw.bb58
    i32 11, label %sw.bb58
  ]

sw.bb:                                            ; preds = %do.end46
  store i32 1, ptr %EOLcnt, align 4
  br label %done1d

sw.bb48:                                          ; preds = %do.end46
  br label %do.body49

do.body49:                                        ; preds = %sw.bb48
  %53 = load i32, ptr %RunLength, align 4
  %conv50 = sext i32 %53 to i64
  %54 = load ptr, ptr %TabEnt, align 8
  %Param = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %54, i32 0, i32 2
  %55 = load i64, ptr %Param, align 8
  %add51 = add i64 %conv50, %55
  %56 = load ptr, ptr %pa, align 8
  %incdec.ptr52 = getelementptr inbounds i64, ptr %56, i32 1
  store ptr %incdec.ptr52, ptr %pa, align 8
  store i64 %add51, ptr %56, align 8
  %57 = load ptr, ptr %TabEnt, align 8
  %Param53 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %57, i32 0, i32 2
  %58 = load i64, ptr %Param53, align 8
  %59 = load i32, ptr %a0, align 4
  %conv54 = sext i32 %59 to i64
  %add55 = add i64 %conv54, %58
  %conv56 = trunc i64 %add55 to i32
  store i32 %conv56, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end57

do.end57:                                         ; preds = %do.body49
  br label %doneWhite1d

sw.bb58:                                          ; preds = %do.end46, %do.end46
  %60 = load ptr, ptr %TabEnt, align 8
  %Param59 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %60, i32 0, i32 2
  %61 = load i64, ptr %Param59, align 8
  %62 = load i32, ptr %a0, align 4
  %conv60 = sext i32 %62 to i64
  %add61 = add i64 %conv60, %61
  %conv62 = trunc i64 %add61 to i32
  store i32 %conv62, ptr %a0, align 4
  %63 = load ptr, ptr %TabEnt, align 8
  %Param63 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %63, i32 0, i32 2
  %64 = load i64, ptr %Param63, align 8
  %65 = load i32, ptr %RunLength, align 4
  %conv64 = sext i32 %65 to i64
  %add65 = add i64 %conv64, %64
  %conv66 = trunc i64 %add65 to i32
  store i32 %conv66, ptr %RunLength, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end46
  %66 = load ptr, ptr %tif.addr, align 8
  %67 = load i32, ptr %a0, align 4
  %conv67 = sext i32 %67 to i64
  call void @Fax3Unexpected(ptr noundef @Fax3DecodeRLE.module, ptr noundef %66, i64 noundef %conv67)
  br label %done1d

sw.epilog:                                        ; preds = %sw.bb58
  br label %for.cond7

doneWhite1d:                                      ; preds = %do.end57
  %68 = load i32, ptr %a0, align 4
  %69 = load i32, ptr %lastx, align 4
  %cmp68 = icmp sge i32 %68, %69
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %doneWhite1d
  br label %done1d

if.end71:                                         ; preds = %doneWhite1d
  br label %for.cond72

for.cond72:                                       ; preds = %sw.epilog151, %if.end71
  br label %do.body73

do.body73:                                        ; preds = %for.cond72
  br label %do.body74

do.body74:                                        ; preds = %do.body73
  %70 = load i32, ptr %BitsAvail, align 4
  %cmp75 = icmp slt i32 %70, 13
  br i1 %cmp75, label %if.then77, label %if.end112

if.then77:                                        ; preds = %do.body74
  %71 = load ptr, ptr %cp, align 8
  %72 = load ptr, ptr %ep, align 8
  %cmp78 = icmp uge ptr %71, %72
  br i1 %cmp78, label %if.then80, label %if.else85

if.then80:                                        ; preds = %if.then77
  %73 = load i32, ptr %BitsAvail, align 4
  %cmp81 = icmp eq i32 %73, 0
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.then80
  br label %eof1d

if.end84:                                         ; preds = %if.then80
  store i32 13, ptr %BitsAvail, align 4
  br label %if.end111

if.else85:                                        ; preds = %if.then77
  %74 = load ptr, ptr %bitmap, align 8
  %75 = load ptr, ptr %cp, align 8
  %incdec.ptr86 = getelementptr inbounds i8, ptr %75, i32 1
  store ptr %incdec.ptr86, ptr %cp, align 8
  %76 = load i8, ptr %75, align 1
  %idxprom87 = zext i8 %76 to i64
  %arrayidx88 = getelementptr inbounds i8, ptr %74, i64 %idxprom87
  %77 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %77 to i64
  %78 = load i32, ptr %BitsAvail, align 4
  %sh_prom90 = zext i32 %78 to i64
  %shl91 = shl i64 %conv89, %sh_prom90
  %79 = load i64, ptr %BitAcc, align 8
  %or92 = or i64 %79, %shl91
  store i64 %or92, ptr %BitAcc, align 8
  %80 = load i32, ptr %BitsAvail, align 4
  %add93 = add nsw i32 %80, 8
  store i32 %add93, ptr %BitsAvail, align 4
  %cmp94 = icmp slt i32 %add93, 13
  br i1 %cmp94, label %if.then96, label %if.end110

if.then96:                                        ; preds = %if.else85
  %81 = load ptr, ptr %cp, align 8
  %82 = load ptr, ptr %ep, align 8
  %cmp97 = icmp uge ptr %81, %82
  br i1 %cmp97, label %if.then99, label %if.else100

if.then99:                                        ; preds = %if.then96
  store i32 13, ptr %BitsAvail, align 4
  br label %if.end109

if.else100:                                       ; preds = %if.then96
  %83 = load ptr, ptr %bitmap, align 8
  %84 = load ptr, ptr %cp, align 8
  %incdec.ptr101 = getelementptr inbounds i8, ptr %84, i32 1
  store ptr %incdec.ptr101, ptr %cp, align 8
  %85 = load i8, ptr %84, align 1
  %idxprom102 = zext i8 %85 to i64
  %arrayidx103 = getelementptr inbounds i8, ptr %83, i64 %idxprom102
  %86 = load i8, ptr %arrayidx103, align 1
  %conv104 = zext i8 %86 to i64
  %87 = load i32, ptr %BitsAvail, align 4
  %sh_prom105 = zext i32 %87 to i64
  %shl106 = shl i64 %conv104, %sh_prom105
  %88 = load i64, ptr %BitAcc, align 8
  %or107 = or i64 %88, %shl106
  store i64 %or107, ptr %BitAcc, align 8
  %89 = load i32, ptr %BitsAvail, align 4
  %add108 = add nsw i32 %89, 8
  store i32 %add108, ptr %BitsAvail, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.else100, %if.then99
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.else85
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %if.end84
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %do.body74
  br label %do.end113

do.end113:                                        ; preds = %if.end112
  %90 = load i64, ptr %BitAcc, align 8
  %and114 = and i64 %90, 8191
  %add.ptr115 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %and114
  store ptr %add.ptr115, ptr %TabEnt, align 8
  br label %do.body116

do.body116:                                       ; preds = %do.end113
  %91 = load ptr, ptr %TabEnt, align 8
  %Width117 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %91, i32 0, i32 1
  %92 = load i8, ptr %Width117, align 1
  %conv118 = zext i8 %92 to i32
  %93 = load i32, ptr %BitsAvail, align 4
  %sub119 = sub nsw i32 %93, %conv118
  store i32 %sub119, ptr %BitsAvail, align 4
  %94 = load ptr, ptr %TabEnt, align 8
  %Width120 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %94, i32 0, i32 1
  %95 = load i8, ptr %Width120, align 1
  %conv121 = zext i8 %95 to i32
  %96 = load i64, ptr %BitAcc, align 8
  %sh_prom122 = zext i32 %conv121 to i64
  %shr123 = lshr i64 %96, %sh_prom122
  store i64 %shr123, ptr %BitAcc, align 8
  br label %do.end124

do.end124:                                        ; preds = %do.body116
  br label %do.end125

do.end125:                                        ; preds = %do.end124
  %97 = load ptr, ptr %TabEnt, align 8
  %State126 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %97, i32 0, i32 0
  %98 = load i8, ptr %State126, align 8
  %conv127 = zext i8 %98 to i32
  switch i32 %conv127, label %sw.default149 [
    i32 12, label %sw.bb128
    i32 8, label %sw.bb129
    i32 10, label %sw.bb140
    i32 11, label %sw.bb140
  ]

sw.bb128:                                         ; preds = %do.end125
  store i32 1, ptr %EOLcnt, align 4
  br label %done1d

sw.bb129:                                         ; preds = %do.end125
  br label %do.body130

do.body130:                                       ; preds = %sw.bb129
  %99 = load i32, ptr %RunLength, align 4
  %conv131 = sext i32 %99 to i64
  %100 = load ptr, ptr %TabEnt, align 8
  %Param132 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %100, i32 0, i32 2
  %101 = load i64, ptr %Param132, align 8
  %add133 = add i64 %conv131, %101
  %102 = load ptr, ptr %pa, align 8
  %incdec.ptr134 = getelementptr inbounds i64, ptr %102, i32 1
  store ptr %incdec.ptr134, ptr %pa, align 8
  store i64 %add133, ptr %102, align 8
  %103 = load ptr, ptr %TabEnt, align 8
  %Param135 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %103, i32 0, i32 2
  %104 = load i64, ptr %Param135, align 8
  %105 = load i32, ptr %a0, align 4
  %conv136 = sext i32 %105 to i64
  %add137 = add i64 %conv136, %104
  %conv138 = trunc i64 %add137 to i32
  store i32 %conv138, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end139

do.end139:                                        ; preds = %do.body130
  br label %doneBlack1d

sw.bb140:                                         ; preds = %do.end125, %do.end125
  %106 = load ptr, ptr %TabEnt, align 8
  %Param141 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %106, i32 0, i32 2
  %107 = load i64, ptr %Param141, align 8
  %108 = load i32, ptr %a0, align 4
  %conv142 = sext i32 %108 to i64
  %add143 = add i64 %conv142, %107
  %conv144 = trunc i64 %add143 to i32
  store i32 %conv144, ptr %a0, align 4
  %109 = load ptr, ptr %TabEnt, align 8
  %Param145 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %109, i32 0, i32 2
  %110 = load i64, ptr %Param145, align 8
  %111 = load i32, ptr %RunLength, align 4
  %conv146 = sext i32 %111 to i64
  %add147 = add i64 %conv146, %110
  %conv148 = trunc i64 %add147 to i32
  store i32 %conv148, ptr %RunLength, align 4
  br label %sw.epilog151

sw.default149:                                    ; preds = %do.end125
  %112 = load ptr, ptr %tif.addr, align 8
  %113 = load i32, ptr %a0, align 4
  %conv150 = sext i32 %113 to i64
  call void @Fax3Unexpected(ptr noundef @Fax3DecodeRLE.module, ptr noundef %112, i64 noundef %conv150)
  br label %done1d

sw.epilog151:                                     ; preds = %sw.bb140
  br label %for.cond72

doneBlack1d:                                      ; preds = %do.end139
  %114 = load i32, ptr %a0, align 4
  %115 = load i32, ptr %lastx, align 4
  %cmp152 = icmp sge i32 %114, %115
  br i1 %cmp152, label %if.then154, label %if.end155

if.then154:                                       ; preds = %doneBlack1d
  br label %done1d

if.end155:                                        ; preds = %doneBlack1d
  br label %for.cond

eof1d:                                            ; preds = %if.then83, %if.then17
  %116 = load ptr, ptr %tif.addr, align 8
  %117 = load i32, ptr %a0, align 4
  %conv156 = sext i32 %117 to i64
  call void @Fax3PrematureEOF(ptr noundef @Fax3DecodeRLE.module, ptr noundef %116, i64 noundef %conv156)
  br label %do.body157

do.body157:                                       ; preds = %eof1d
  %118 = load i32, ptr %RunLength, align 4
  %tobool = icmp ne i32 %118, 0
  br i1 %tobool, label %if.then158, label %if.end165

if.then158:                                       ; preds = %do.body157
  br label %do.body159

do.body159:                                       ; preds = %if.then158
  %119 = load i32, ptr %RunLength, align 4
  %add160 = add nsw i32 %119, 0
  %conv161 = sext i32 %add160 to i64
  %120 = load ptr, ptr %pa, align 8
  %incdec.ptr162 = getelementptr inbounds i64, ptr %120, i32 1
  store ptr %incdec.ptr162, ptr %pa, align 8
  store i64 %conv161, ptr %120, align 8
  %121 = load i32, ptr %a0, align 4
  %add163 = add nsw i32 %121, 0
  store i32 %add163, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end164

do.end164:                                        ; preds = %do.body159
  br label %if.end165

if.end165:                                        ; preds = %do.end164, %do.body157
  %122 = load i32, ptr %a0, align 4
  %123 = load i32, ptr %lastx, align 4
  %cmp166 = icmp ne i32 %122, %123
  br i1 %cmp166, label %if.then168, label %if.end224

if.then168:                                       ; preds = %if.end165
  %124 = load ptr, ptr %tif.addr, align 8
  %125 = load i32, ptr %a0, align 4
  %conv169 = sext i32 %125 to i64
  %126 = load i32, ptr %lastx, align 4
  %conv170 = sext i32 %126 to i64
  call void @Fax3BadLength(ptr noundef @Fax3DecodeRLE.module, ptr noundef %124, i64 noundef %conv169, i64 noundef %conv170)
  br label %while.cond171

while.cond171:                                    ; preds = %while.body176, %if.then168
  %127 = load i32, ptr %a0, align 4
  %128 = load i32, ptr %lastx, align 4
  %cmp172 = icmp sgt i32 %127, %128
  br i1 %cmp172, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond171
  %129 = load ptr, ptr %pa, align 8
  %130 = load ptr, ptr %thisrun, align 8
  %cmp174 = icmp ugt ptr %129, %130
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond171
  %131 = phi i1 [ false, %while.cond171 ], [ %cmp174, %land.rhs ]
  br i1 %131, label %while.body176, label %while.end

while.body176:                                    ; preds = %land.end
  %132 = load ptr, ptr %pa, align 8
  %incdec.ptr177 = getelementptr inbounds i64, ptr %132, i32 -1
  store ptr %incdec.ptr177, ptr %pa, align 8
  %133 = load i64, ptr %incdec.ptr177, align 8
  %134 = load i32, ptr %a0, align 4
  %conv178 = sext i32 %134 to i64
  %sub179 = sub i64 %conv178, %133
  %conv180 = trunc i64 %sub179 to i32
  store i32 %conv180, ptr %a0, align 4
  br label %while.cond171, !llvm.loop !22

while.end:                                        ; preds = %land.end
  %135 = load i32, ptr %a0, align 4
  %136 = load i32, ptr %lastx, align 4
  %cmp181 = icmp slt i32 %135, %136
  br i1 %cmp181, label %if.then183, label %if.else206

if.then183:                                       ; preds = %while.end
  %137 = load i32, ptr %a0, align 4
  %cmp184 = icmp slt i32 %137, 0
  br i1 %cmp184, label %if.then186, label %if.end187

if.then186:                                       ; preds = %if.then183
  store i32 0, ptr %a0, align 4
  br label %if.end187

if.end187:                                        ; preds = %if.then186, %if.then183
  %138 = load ptr, ptr %pa, align 8
  %139 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %138 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %139 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %and188 = and i64 %sub.ptr.div, 1
  %tobool189 = icmp ne i64 %and188, 0
  br i1 %tobool189, label %if.then190, label %if.end197

if.then190:                                       ; preds = %if.end187
  br label %do.body191

do.body191:                                       ; preds = %if.then190
  %140 = load i32, ptr %RunLength, align 4
  %add192 = add nsw i32 %140, 0
  %conv193 = sext i32 %add192 to i64
  %141 = load ptr, ptr %pa, align 8
  %incdec.ptr194 = getelementptr inbounds i64, ptr %141, i32 1
  store ptr %incdec.ptr194, ptr %pa, align 8
  store i64 %conv193, ptr %141, align 8
  %142 = load i32, ptr %a0, align 4
  %add195 = add nsw i32 %142, 0
  store i32 %add195, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end196

do.end196:                                        ; preds = %do.body191
  br label %if.end197

if.end197:                                        ; preds = %do.end196, %if.end187
  br label %do.body198

do.body198:                                       ; preds = %if.end197
  %143 = load i32, ptr %RunLength, align 4
  %144 = load i32, ptr %lastx, align 4
  %145 = load i32, ptr %a0, align 4
  %sub199 = sub nsw i32 %144, %145
  %add200 = add nsw i32 %143, %sub199
  %conv201 = sext i32 %add200 to i64
  %146 = load ptr, ptr %pa, align 8
  %incdec.ptr202 = getelementptr inbounds i64, ptr %146, i32 1
  store ptr %incdec.ptr202, ptr %pa, align 8
  store i64 %conv201, ptr %146, align 8
  %147 = load i32, ptr %lastx, align 4
  %148 = load i32, ptr %a0, align 4
  %sub203 = sub nsw i32 %147, %148
  %149 = load i32, ptr %a0, align 4
  %add204 = add nsw i32 %149, %sub203
  store i32 %add204, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end205

do.end205:                                        ; preds = %do.body198
  br label %if.end223

if.else206:                                       ; preds = %while.end
  %150 = load i32, ptr %a0, align 4
  %151 = load i32, ptr %lastx, align 4
  %cmp207 = icmp sgt i32 %150, %151
  br i1 %cmp207, label %if.then209, label %if.end222

if.then209:                                       ; preds = %if.else206
  br label %do.body210

do.body210:                                       ; preds = %if.then209
  %152 = load i32, ptr %RunLength, align 4
  %153 = load i32, ptr %lastx, align 4
  %add211 = add nsw i32 %152, %153
  %conv212 = sext i32 %add211 to i64
  %154 = load ptr, ptr %pa, align 8
  %incdec.ptr213 = getelementptr inbounds i64, ptr %154, i32 1
  store ptr %incdec.ptr213, ptr %pa, align 8
  store i64 %conv212, ptr %154, align 8
  %155 = load i32, ptr %lastx, align 4
  %156 = load i32, ptr %a0, align 4
  %add214 = add nsw i32 %156, %155
  store i32 %add214, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end215

do.end215:                                        ; preds = %do.body210
  br label %do.body216

do.body216:                                       ; preds = %do.end215
  %157 = load i32, ptr %RunLength, align 4
  %add217 = add nsw i32 %157, 0
  %conv218 = sext i32 %add217 to i64
  %158 = load ptr, ptr %pa, align 8
  %incdec.ptr219 = getelementptr inbounds i64, ptr %158, i32 1
  store ptr %incdec.ptr219, ptr %pa, align 8
  store i64 %conv218, ptr %158, align 8
  %159 = load i32, ptr %a0, align 4
  %add220 = add nsw i32 %159, 0
  store i32 %add220, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end221

do.end221:                                        ; preds = %do.body216
  br label %if.end222

if.end222:                                        ; preds = %do.end221, %if.else206
  br label %if.end223

if.end223:                                        ; preds = %if.end222, %do.end205
  br label %if.end224

if.end224:                                        ; preds = %if.end223, %if.end165
  br label %do.end225

do.end225:                                        ; preds = %if.end224
  br label %EOFRLE

done1d:                                           ; preds = %if.then154, %sw.default149, %sw.bb128, %if.then70, %sw.default, %sw.bb
  br label %do.body226

do.body226:                                       ; preds = %done1d
  %160 = load i32, ptr %RunLength, align 4
  %tobool227 = icmp ne i32 %160, 0
  br i1 %tobool227, label %if.then228, label %if.end235

if.then228:                                       ; preds = %do.body226
  br label %do.body229

do.body229:                                       ; preds = %if.then228
  %161 = load i32, ptr %RunLength, align 4
  %add230 = add nsw i32 %161, 0
  %conv231 = sext i32 %add230 to i64
  %162 = load ptr, ptr %pa, align 8
  %incdec.ptr232 = getelementptr inbounds i64, ptr %162, i32 1
  store ptr %incdec.ptr232, ptr %pa, align 8
  store i64 %conv231, ptr %162, align 8
  %163 = load i32, ptr %a0, align 4
  %add233 = add nsw i32 %163, 0
  store i32 %add233, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end234

do.end234:                                        ; preds = %do.body229
  br label %if.end235

if.end235:                                        ; preds = %do.end234, %do.body226
  %164 = load i32, ptr %a0, align 4
  %165 = load i32, ptr %lastx, align 4
  %cmp236 = icmp ne i32 %164, %165
  br i1 %cmp236, label %if.then238, label %if.end301

if.then238:                                       ; preds = %if.end235
  %166 = load ptr, ptr %tif.addr, align 8
  %167 = load i32, ptr %a0, align 4
  %conv239 = sext i32 %167 to i64
  %168 = load i32, ptr %lastx, align 4
  %conv240 = sext i32 %168 to i64
  call void @Fax3BadLength(ptr noundef @Fax3DecodeRLE.module, ptr noundef %166, i64 noundef %conv239, i64 noundef %conv240)
  br label %while.cond241

while.cond241:                                    ; preds = %while.body248, %if.then238
  %169 = load i32, ptr %a0, align 4
  %170 = load i32, ptr %lastx, align 4
  %cmp242 = icmp sgt i32 %169, %170
  br i1 %cmp242, label %land.rhs244, label %land.end247

land.rhs244:                                      ; preds = %while.cond241
  %171 = load ptr, ptr %pa, align 8
  %172 = load ptr, ptr %thisrun, align 8
  %cmp245 = icmp ugt ptr %171, %172
  br label %land.end247

land.end247:                                      ; preds = %land.rhs244, %while.cond241
  %173 = phi i1 [ false, %while.cond241 ], [ %cmp245, %land.rhs244 ]
  br i1 %173, label %while.body248, label %while.end253

while.body248:                                    ; preds = %land.end247
  %174 = load ptr, ptr %pa, align 8
  %incdec.ptr249 = getelementptr inbounds i64, ptr %174, i32 -1
  store ptr %incdec.ptr249, ptr %pa, align 8
  %175 = load i64, ptr %incdec.ptr249, align 8
  %176 = load i32, ptr %a0, align 4
  %conv250 = sext i32 %176 to i64
  %sub251 = sub i64 %conv250, %175
  %conv252 = trunc i64 %sub251 to i32
  store i32 %conv252, ptr %a0, align 4
  br label %while.cond241, !llvm.loop !23

while.end253:                                     ; preds = %land.end247
  %177 = load i32, ptr %a0, align 4
  %178 = load i32, ptr %lastx, align 4
  %cmp254 = icmp slt i32 %177, %178
  br i1 %cmp254, label %if.then256, label %if.else283

if.then256:                                       ; preds = %while.end253
  %179 = load i32, ptr %a0, align 4
  %cmp257 = icmp slt i32 %179, 0
  br i1 %cmp257, label %if.then259, label %if.end260

if.then259:                                       ; preds = %if.then256
  store i32 0, ptr %a0, align 4
  br label %if.end260

if.end260:                                        ; preds = %if.then259, %if.then256
  %180 = load ptr, ptr %pa, align 8
  %181 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast261 = ptrtoint ptr %180 to i64
  %sub.ptr.rhs.cast262 = ptrtoint ptr %181 to i64
  %sub.ptr.sub263 = sub i64 %sub.ptr.lhs.cast261, %sub.ptr.rhs.cast262
  %sub.ptr.div264 = sdiv exact i64 %sub.ptr.sub263, 8
  %and265 = and i64 %sub.ptr.div264, 1
  %tobool266 = icmp ne i64 %and265, 0
  br i1 %tobool266, label %if.then267, label %if.end274

if.then267:                                       ; preds = %if.end260
  br label %do.body268

do.body268:                                       ; preds = %if.then267
  %182 = load i32, ptr %RunLength, align 4
  %add269 = add nsw i32 %182, 0
  %conv270 = sext i32 %add269 to i64
  %183 = load ptr, ptr %pa, align 8
  %incdec.ptr271 = getelementptr inbounds i64, ptr %183, i32 1
  store ptr %incdec.ptr271, ptr %pa, align 8
  store i64 %conv270, ptr %183, align 8
  %184 = load i32, ptr %a0, align 4
  %add272 = add nsw i32 %184, 0
  store i32 %add272, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end273

do.end273:                                        ; preds = %do.body268
  br label %if.end274

if.end274:                                        ; preds = %do.end273, %if.end260
  br label %do.body275

do.body275:                                       ; preds = %if.end274
  %185 = load i32, ptr %RunLength, align 4
  %186 = load i32, ptr %lastx, align 4
  %187 = load i32, ptr %a0, align 4
  %sub276 = sub nsw i32 %186, %187
  %add277 = add nsw i32 %185, %sub276
  %conv278 = sext i32 %add277 to i64
  %188 = load ptr, ptr %pa, align 8
  %incdec.ptr279 = getelementptr inbounds i64, ptr %188, i32 1
  store ptr %incdec.ptr279, ptr %pa, align 8
  store i64 %conv278, ptr %188, align 8
  %189 = load i32, ptr %lastx, align 4
  %190 = load i32, ptr %a0, align 4
  %sub280 = sub nsw i32 %189, %190
  %191 = load i32, ptr %a0, align 4
  %add281 = add nsw i32 %191, %sub280
  store i32 %add281, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end282

do.end282:                                        ; preds = %do.body275
  br label %if.end300

if.else283:                                       ; preds = %while.end253
  %192 = load i32, ptr %a0, align 4
  %193 = load i32, ptr %lastx, align 4
  %cmp284 = icmp sgt i32 %192, %193
  br i1 %cmp284, label %if.then286, label %if.end299

if.then286:                                       ; preds = %if.else283
  br label %do.body287

do.body287:                                       ; preds = %if.then286
  %194 = load i32, ptr %RunLength, align 4
  %195 = load i32, ptr %lastx, align 4
  %add288 = add nsw i32 %194, %195
  %conv289 = sext i32 %add288 to i64
  %196 = load ptr, ptr %pa, align 8
  %incdec.ptr290 = getelementptr inbounds i64, ptr %196, i32 1
  store ptr %incdec.ptr290, ptr %pa, align 8
  store i64 %conv289, ptr %196, align 8
  %197 = load i32, ptr %lastx, align 4
  %198 = load i32, ptr %a0, align 4
  %add291 = add nsw i32 %198, %197
  store i32 %add291, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end292

do.end292:                                        ; preds = %do.body287
  br label %do.body293

do.body293:                                       ; preds = %do.end292
  %199 = load i32, ptr %RunLength, align 4
  %add294 = add nsw i32 %199, 0
  %conv295 = sext i32 %add294 to i64
  %200 = load ptr, ptr %pa, align 8
  %incdec.ptr296 = getelementptr inbounds i64, ptr %200, i32 1
  store ptr %incdec.ptr296, ptr %pa, align 8
  store i64 %conv295, ptr %200, align 8
  %201 = load i32, ptr %a0, align 4
  %add297 = add nsw i32 %201, 0
  store i32 %add297, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end298

do.end298:                                        ; preds = %do.body293
  br label %if.end299

if.end299:                                        ; preds = %do.end298, %if.else283
  br label %if.end300

if.end300:                                        ; preds = %if.end299, %do.end282
  br label %if.end301

if.end301:                                        ; preds = %if.end300, %if.end235
  br label %do.end302

do.end302:                                        ; preds = %if.end301
  br label %do.end303

do.end303:                                        ; preds = %do.end302
  %202 = load ptr, ptr %sp, align 8
  %fill = getelementptr inbounds %struct.Fax3DecodeState, ptr %202, i32 0, i32 5
  %203 = load ptr, ptr %fill, align 8
  %204 = load ptr, ptr %buf.addr, align 8
  %205 = load ptr, ptr %thisrun, align 8
  %206 = load ptr, ptr %pa, align 8
  %207 = load i32, ptr %lastx, align 4
  %conv304 = sext i32 %207 to i64
  call void %203(ptr noundef %204, ptr noundef %205, ptr noundef %206, i64 noundef %conv304)
  %208 = load i32, ptr %mode, align 4
  %and305 = and i32 %208, 4
  %tobool306 = icmp ne i32 %and305, 0
  br i1 %tobool306, label %if.then307, label %if.else315

if.then307:                                       ; preds = %do.end303
  %209 = load i32, ptr %BitsAvail, align 4
  %210 = load i32, ptr %BitsAvail, align 4
  %and308 = and i32 %210, -8
  %sub309 = sub nsw i32 %209, %and308
  store i32 %sub309, ptr %n, align 4
  br label %do.body310

do.body310:                                       ; preds = %if.then307
  %211 = load i32, ptr %n, align 4
  %212 = load i32, ptr %BitsAvail, align 4
  %sub311 = sub nsw i32 %212, %211
  store i32 %sub311, ptr %BitsAvail, align 4
  %213 = load i32, ptr %n, align 4
  %214 = load i64, ptr %BitAcc, align 8
  %sh_prom312 = zext i32 %213 to i64
  %shr313 = lshr i64 %214, %sh_prom312
  store i64 %shr313, ptr %BitAcc, align 8
  br label %do.end314

do.end314:                                        ; preds = %do.body310
  br label %if.end336

if.else315:                                       ; preds = %do.end303
  %215 = load i32, ptr %mode, align 4
  %and316 = and i32 %215, 8
  %tobool317 = icmp ne i32 %and316, 0
  br i1 %tobool317, label %if.then318, label %if.end335

if.then318:                                       ; preds = %if.else315
  %216 = load i32, ptr %BitsAvail, align 4
  %217 = load i32, ptr %BitsAvail, align 4
  %and320 = and i32 %217, -16
  %sub321 = sub nsw i32 %216, %and320
  store i32 %sub321, ptr %n319, align 4
  br label %do.body322

do.body322:                                       ; preds = %if.then318
  %218 = load i32, ptr %n319, align 4
  %219 = load i32, ptr %BitsAvail, align 4
  %sub323 = sub nsw i32 %219, %218
  store i32 %sub323, ptr %BitsAvail, align 4
  %220 = load i32, ptr %n319, align 4
  %221 = load i64, ptr %BitAcc, align 8
  %sh_prom324 = zext i32 %220 to i64
  %shr325 = lshr i64 %221, %sh_prom324
  store i64 %shr325, ptr %BitAcc, align 8
  br label %do.end326

do.end326:                                        ; preds = %do.body322
  %222 = load i32, ptr %BitsAvail, align 4
  %cmp327 = icmp eq i32 %222, 0
  br i1 %cmp327, label %land.lhs.true, label %if.end334

land.lhs.true:                                    ; preds = %do.end326
  %223 = load ptr, ptr %cp, align 8
  %224 = ptrtoint ptr %223 to i64
  %and329 = and i64 %224, 1
  %cmp330 = icmp eq i64 %and329, 0
  br i1 %cmp330, label %if.end334, label %if.then332

if.then332:                                       ; preds = %land.lhs.true
  %225 = load ptr, ptr %cp, align 8
  %incdec.ptr333 = getelementptr inbounds i8, ptr %225, i32 1
  store ptr %incdec.ptr333, ptr %cp, align 8
  br label %if.end334

if.end334:                                        ; preds = %if.then332, %land.lhs.true, %do.end326
  br label %if.end335

if.end335:                                        ; preds = %if.end334, %if.else315
  br label %if.end336

if.end336:                                        ; preds = %if.end335, %do.end314
  %226 = load ptr, ptr %sp, align 8
  %b337 = getelementptr inbounds %struct.Fax3DecodeState, ptr %226, i32 0, i32 0
  %rowbytes = getelementptr inbounds %struct.Fax3BaseState, ptr %b337, i32 0, i32 1
  %227 = load i64, ptr %rowbytes, align 8
  %228 = load ptr, ptr %buf.addr, align 8
  %add.ptr338 = getelementptr inbounds i8, ptr %228, i64 %227
  store ptr %add.ptr338, ptr %buf.addr, align 8
  %229 = load ptr, ptr %sp, align 8
  %b339 = getelementptr inbounds %struct.Fax3DecodeState, ptr %229, i32 0, i32 0
  %rowbytes340 = getelementptr inbounds %struct.Fax3BaseState, ptr %b339, i32 0, i32 1
  %230 = load i64, ptr %rowbytes340, align 8
  %231 = load i64, ptr %occ.addr, align 8
  %sub341 = sub i64 %231, %230
  store i64 %sub341, ptr %occ.addr, align 8
  %232 = load i64, ptr %occ.addr, align 8
  %cmp342 = icmp ne i64 %232, 0
  br i1 %cmp342, label %if.then344, label %if.end345

if.then344:                                       ; preds = %if.end336
  %233 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %233, i32 0, i32 11
  %234 = load i64, ptr %tif_row, align 8
  %inc = add i64 %234, 1
  store i64 %inc, ptr %tif_row, align 8
  br label %if.end345

if.end345:                                        ; preds = %if.then344, %if.end336
  br label %while.cond, !llvm.loop !24

EOFRLE:                                           ; preds = %do.end225
  %235 = load ptr, ptr %sp, align 8
  %fill346 = getelementptr inbounds %struct.Fax3DecodeState, ptr %235, i32 0, i32 5
  %236 = load ptr, ptr %fill346, align 8
  %237 = load ptr, ptr %buf.addr, align 8
  %238 = load ptr, ptr %thisrun, align 8
  %239 = load ptr, ptr %pa, align 8
  %240 = load i32, ptr %lastx, align 4
  %conv347 = sext i32 %240 to i64
  call void %236(ptr noundef %237, ptr noundef %238, ptr noundef %239, i64 noundef %conv347)
  br label %do.body348

do.body348:                                       ; preds = %EOFRLE
  %241 = load i32, ptr %BitsAvail, align 4
  %242 = load ptr, ptr %sp, align 8
  %bit349 = getelementptr inbounds %struct.Fax3DecodeState, ptr %242, i32 0, i32 3
  store i32 %241, ptr %bit349, align 8
  %243 = load i64, ptr %BitAcc, align 8
  %244 = load ptr, ptr %sp, align 8
  %data350 = getelementptr inbounds %struct.Fax3DecodeState, ptr %244, i32 0, i32 2
  store i64 %243, ptr %data350, align 8
  %245 = load i32, ptr %EOLcnt, align 4
  %246 = load ptr, ptr %sp, align 8
  %EOLcnt351 = getelementptr inbounds %struct.Fax3DecodeState, ptr %246, i32 0, i32 4
  store i32 %245, ptr %EOLcnt351, align 4
  %247 = load ptr, ptr %cp, align 8
  %248 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp352 = getelementptr inbounds %struct.tiff, ptr %248, i32 0, i32 42
  %249 = load ptr, ptr %tif_rawcp352, align 8
  %sub.ptr.lhs.cast353 = ptrtoint ptr %247 to i64
  %sub.ptr.rhs.cast354 = ptrtoint ptr %249 to i64
  %sub.ptr.sub355 = sub i64 %sub.ptr.lhs.cast353, %sub.ptr.rhs.cast354
  %250 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc356 = getelementptr inbounds %struct.tiff, ptr %250, i32 0, i32 43
  %251 = load i64, ptr %tif_rawcc356, align 8
  %sub357 = sub nsw i64 %251, %sub.ptr.sub355
  store i64 %sub357, ptr %tif_rawcc356, align 8
  %252 = load ptr, ptr %cp, align 8
  %253 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp358 = getelementptr inbounds %struct.tiff, ptr %253, i32 0, i32 42
  store ptr %252, ptr %tif_rawcp358, align 8
  br label %do.end359

do.end359:                                        ; preds = %do.body348
  store i32 -1, ptr %retval, align 4
  br label %return

while.end360:                                     ; preds = %while.cond
  br label %do.body361

do.body361:                                       ; preds = %while.end360
  %254 = load i32, ptr %BitsAvail, align 4
  %255 = load ptr, ptr %sp, align 8
  %bit362 = getelementptr inbounds %struct.Fax3DecodeState, ptr %255, i32 0, i32 3
  store i32 %254, ptr %bit362, align 8
  %256 = load i64, ptr %BitAcc, align 8
  %257 = load ptr, ptr %sp, align 8
  %data363 = getelementptr inbounds %struct.Fax3DecodeState, ptr %257, i32 0, i32 2
  store i64 %256, ptr %data363, align 8
  %258 = load i32, ptr %EOLcnt, align 4
  %259 = load ptr, ptr %sp, align 8
  %EOLcnt364 = getelementptr inbounds %struct.Fax3DecodeState, ptr %259, i32 0, i32 4
  store i32 %258, ptr %EOLcnt364, align 4
  %260 = load ptr, ptr %cp, align 8
  %261 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp365 = getelementptr inbounds %struct.tiff, ptr %261, i32 0, i32 42
  %262 = load ptr, ptr %tif_rawcp365, align 8
  %sub.ptr.lhs.cast366 = ptrtoint ptr %260 to i64
  %sub.ptr.rhs.cast367 = ptrtoint ptr %262 to i64
  %sub.ptr.sub368 = sub i64 %sub.ptr.lhs.cast366, %sub.ptr.rhs.cast367
  %263 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc369 = getelementptr inbounds %struct.tiff, ptr %263, i32 0, i32 43
  %264 = load i64, ptr %tif_rawcc369, align 8
  %sub370 = sub nsw i64 %264, %sub.ptr.sub368
  store i64 %sub370, ptr %tif_rawcc369, align 8
  %265 = load ptr, ptr %cp, align 8
  %266 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp371 = getelementptr inbounds %struct.tiff, ptr %266, i32 0, i32 42
  store ptr %265, ptr %tif_rawcp371, align 8
  br label %do.end372

do.end372:                                        ; preds = %do.body361
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end372, %do.end359
  %267 = load i32, ptr %retval, align 4
  ret i32 %267
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFInitCCITTRLEW(ptr noundef %tif, i32 noundef %scheme) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %scheme.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %scheme, ptr %scheme.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @InitCCITTFax3(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 26
  store ptr @Fax3DecodeRLE, ptr %tif_decoderow, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 28
  store ptr @Fax3DecodeRLE, ptr %tif_decodestrip, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 30
  store ptr @Fax3DecodeRLE, ptr %tif_decodetile, align 8
  %4 = load ptr, ptr %tif.addr, align 8
  %call1 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %4, i64 noundef 65536, i32 noundef 11)
  store i32 %call1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

declare ptr @_TIFFmalloc(i64 noundef) #2

declare void @TIFFError(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax3VGetField(ptr noundef %tif, i64 noundef %tag, ptr noundef %ap) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i64, align 8
  %ap.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %varet = alloca ptr, align 8
  %varet3 = alloca ptr, align 8
  %varet5 = alloca ptr, align 8
  %varet7 = alloca ptr, align 8
  %varet9 = alloca ptr, align 8
  %varet11 = alloca ptr, align 8
  %varet13 = alloca ptr, align 8
  %varet15 = alloca ptr, align 8
  %varet17 = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tag, ptr %tag.addr, align 8
  store ptr %ap, ptr %ap.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load i64, ptr %tag.addr, align 8
  switch i64 %2, label %sw.default [
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
  %3 = load ptr, ptr %sp, align 8
  %mode = getelementptr inbounds %struct.Fax3BaseState, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %mode, align 8
  %5 = va_arg ptr %ap.addr, ptr
  store ptr %5, ptr %varet, align 8
  %6 = load ptr, ptr %varet, align 8
  store i32 %4, ptr %6, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %tif_mode, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb1
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_data2 = getelementptr inbounds %struct.tiff, ptr %9, i32 0, i32 37
  %10 = load ptr, ptr %tif_data2, align 8
  %fill = getelementptr inbounds %struct.Fax3DecodeState, ptr %10, i32 0, i32 5
  %11 = load ptr, ptr %fill, align 8
  %12 = va_arg ptr %ap.addr, ptr
  store ptr %12, ptr %varet3, align 8
  %13 = load ptr, ptr %varet3, align 8
  store ptr %11, ptr %13, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb1
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry, %entry
  %14 = load ptr, ptr %sp, align 8
  %groupoptions = getelementptr inbounds %struct.Fax3BaseState, ptr %14, i32 0, i32 6
  %15 = load i64, ptr %groupoptions, align 8
  %16 = va_arg ptr %ap.addr, ptr
  store ptr %16, ptr %varet5, align 8
  %17 = load ptr, ptr %varet5, align 8
  store i64 %15, ptr %17, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %18 = load ptr, ptr %sp, align 8
  %badfaxlines = getelementptr inbounds %struct.Fax3BaseState, ptr %18, i32 0, i32 5
  %19 = load i64, ptr %badfaxlines, align 8
  %20 = va_arg ptr %ap.addr, ptr
  store ptr %20, ptr %varet7, align 8
  %21 = load ptr, ptr %varet7, align 8
  store i64 %19, ptr %21, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %22 = load ptr, ptr %sp, align 8
  %cleanfaxdata = getelementptr inbounds %struct.Fax3BaseState, ptr %22, i32 0, i32 3
  %23 = load i16, ptr %cleanfaxdata, align 8
  %24 = va_arg ptr %ap.addr, ptr
  store ptr %24, ptr %varet9, align 8
  %25 = load ptr, ptr %varet9, align 8
  store i16 %23, ptr %25, align 2
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %26 = load ptr, ptr %sp, align 8
  %badfaxrun = getelementptr inbounds %struct.Fax3BaseState, ptr %26, i32 0, i32 4
  %27 = load i64, ptr %badfaxrun, align 8
  %28 = va_arg ptr %ap.addr, ptr
  store ptr %28, ptr %varet11, align 8
  %29 = load ptr, ptr %varet11, align 8
  store i64 %27, ptr %29, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %30 = load ptr, ptr %sp, align 8
  %recvparams = getelementptr inbounds %struct.Fax3BaseState, ptr %30, i32 0, i32 7
  %31 = load i64, ptr %recvparams, align 8
  %32 = va_arg ptr %ap.addr, ptr
  store ptr %32, ptr %varet13, align 8
  %33 = load ptr, ptr %varet13, align 8
  store i64 %31, ptr %33, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %34 = load ptr, ptr %sp, align 8
  %subaddress = getelementptr inbounds %struct.Fax3BaseState, ptr %34, i32 0, i32 8
  %35 = load ptr, ptr %subaddress, align 8
  %36 = va_arg ptr %ap.addr, ptr
  store ptr %36, ptr %varet15, align 8
  %37 = load ptr, ptr %varet15, align 8
  store ptr %35, ptr %37, align 8
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %38 = load ptr, ptr %sp, align 8
  %recvtime = getelementptr inbounds %struct.Fax3BaseState, ptr %38, i32 0, i32 9
  %39 = load i64, ptr %recvtime, align 8
  %40 = va_arg ptr %ap.addr, ptr
  store ptr %40, ptr %varet17, align 8
  %41 = load ptr, ptr %varet17, align 8
  store i64 %39, ptr %41, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %42 = load ptr, ptr %sp, align 8
  %vgetparent = getelementptr inbounds %struct.Fax3BaseState, ptr %42, i32 0, i32 10
  %43 = load ptr, ptr %vgetparent, align 8
  %44 = load ptr, ptr %tif.addr, align 8
  %45 = load i64, ptr %tag.addr, align 8
  %46 = load ptr, ptr %ap.addr, align 8
  %call = call i32 %43(ptr noundef %44, i64 noundef %45, ptr noundef %46)
  store i32 %call, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %if.end, %sw.bb
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %47 = load i32, ptr %retval, align 4
  ret i32 %47
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax3VSetField(ptr noundef %tif, i64 noundef %tag, ptr noundef %ap) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i64, align 8
  %ap.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %varet = alloca i32, align 4
  %varet2 = alloca ptr, align 8
  %varet5 = alloca i64, align 8
  %varet7 = alloca i64, align 8
  %varet9 = alloca i32, align 4
  %varet11 = alloca i64, align 8
  %varet13 = alloca i64, align 8
  %varet15 = alloca ptr, align 8
  %varet17 = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tag, ptr %tag.addr, align 8
  store ptr %ap, ptr %ap.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load i64, ptr %tag.addr, align 8
  switch i64 %2, label %sw.default [
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
  %3 = va_arg ptr %ap.addr, i32
  store i32 %3, ptr %varet, align 4
  %4 = load i32, ptr %varet, align 4
  %5 = load ptr, ptr %sp, align 8
  %mode = getelementptr inbounds %struct.Fax3BaseState, ptr %5, i32 0, i32 0
  store i32 %4, ptr %mode, align 8
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %tif_mode, align 4
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb1
  %8 = va_arg ptr %ap.addr, ptr
  store ptr %8, ptr %varet2, align 8
  %9 = load ptr, ptr %varet2, align 8
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_data3 = getelementptr inbounds %struct.tiff, ptr %10, i32 0, i32 37
  %11 = load ptr, ptr %tif_data3, align 8
  %fill = getelementptr inbounds %struct.Fax3DecodeState, ptr %11, i32 0, i32 5
  store ptr %9, ptr %fill, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb1
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry, %entry
  %12 = va_arg ptr %ap.addr, i64
  store i64 %12, ptr %varet5, align 8
  %13 = load i64, ptr %varet5, align 8
  %14 = load ptr, ptr %sp, align 8
  %groupoptions = getelementptr inbounds %struct.Fax3BaseState, ptr %14, i32 0, i32 6
  store i64 %13, ptr %groupoptions, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %15 = va_arg ptr %ap.addr, i64
  store i64 %15, ptr %varet7, align 8
  %16 = load i64, ptr %varet7, align 8
  %17 = load ptr, ptr %sp, align 8
  %badfaxlines = getelementptr inbounds %struct.Fax3BaseState, ptr %17, i32 0, i32 5
  store i64 %16, ptr %badfaxlines, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %18 = va_arg ptr %ap.addr, i32
  store i32 %18, ptr %varet9, align 4
  %19 = load i32, ptr %varet9, align 4
  %conv = trunc i32 %19 to i16
  %20 = load ptr, ptr %sp, align 8
  %cleanfaxdata = getelementptr inbounds %struct.Fax3BaseState, ptr %20, i32 0, i32 3
  store i16 %conv, ptr %cleanfaxdata, align 8
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %21 = va_arg ptr %ap.addr, i64
  store i64 %21, ptr %varet11, align 8
  %22 = load i64, ptr %varet11, align 8
  %23 = load ptr, ptr %sp, align 8
  %badfaxrun = getelementptr inbounds %struct.Fax3BaseState, ptr %23, i32 0, i32 4
  store i64 %22, ptr %badfaxrun, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %24 = va_arg ptr %ap.addr, i64
  store i64 %24, ptr %varet13, align 8
  %25 = load i64, ptr %varet13, align 8
  %26 = load ptr, ptr %sp, align 8
  %recvparams = getelementptr inbounds %struct.Fax3BaseState, ptr %26, i32 0, i32 7
  store i64 %25, ptr %recvparams, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %27 = load ptr, ptr %sp, align 8
  %subaddress = getelementptr inbounds %struct.Fax3BaseState, ptr %27, i32 0, i32 8
  %28 = va_arg ptr %ap.addr, ptr
  store ptr %28, ptr %varet15, align 8
  %29 = load ptr, ptr %varet15, align 8
  call void @_TIFFsetString(ptr noundef %subaddress, ptr noundef %29)
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %30 = va_arg ptr %ap.addr, i64
  store i64 %30, ptr %varet17, align 8
  %31 = load i64, ptr %varet17, align 8
  %32 = load ptr, ptr %sp, align 8
  %recvtime = getelementptr inbounds %struct.Fax3BaseState, ptr %32, i32 0, i32 9
  store i64 %31, ptr %recvtime, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %33 = load ptr, ptr %sp, align 8
  %vsetparent = getelementptr inbounds %struct.Fax3BaseState, ptr %33, i32 0, i32 11
  %34 = load ptr, ptr %vsetparent, align 8
  %35 = load ptr, ptr %tif.addr, align 8
  %36 = load i64, ptr %tag.addr, align 8
  %37 = load ptr, ptr %ap.addr, align 8
  %call = call i32 %34(ptr noundef %35, i64 noundef %36, ptr noundef %37)
  store i32 %call, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4
  %38 = load ptr, ptr %tif.addr, align 8
  %39 = load i64, ptr %tag.addr, align 8
  %call18 = call ptr @_TIFFFieldWithTag(ptr noundef %38, i64 noundef %39)
  %field_bit = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call18, i32 0, i32 4
  %40 = load i16, ptr %field_bit, align 8
  %conv19 = zext i16 %40 to i32
  %and = and i32 %conv19, 31
  %sh_prom = zext i32 %and to i64
  %shl = shl i64 1, %sh_prom
  %41 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %41, i32 0, i32 6
  %td_fieldsset = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir, i32 0, i32 0
  %42 = load ptr, ptr %tif.addr, align 8
  %43 = load i64, ptr %tag.addr, align 8
  %call20 = call ptr @_TIFFFieldWithTag(ptr noundef %42, i64 noundef %43)
  %field_bit21 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call20, i32 0, i32 4
  %44 = load i16, ptr %field_bit21, align 8
  %conv22 = zext i16 %44 to i32
  %div = sdiv i32 %conv22, 32
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds [3 x i64], ptr %td_fieldsset, i64 0, i64 %idxprom
  %45 = load i64, ptr %arrayidx, align 8
  %or = or i64 %45, %shl
  store i64 %or, ptr %arrayidx, align 8
  %46 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %46, i32 0, i32 3
  %47 = load i64, ptr %tif_flags, align 8
  %or23 = or i64 %47, 8
  store i64 %or23, ptr %tif_flags, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.end, %sw.bb
  %48 = load i32, ptr %retval, align 4
  ret i32 %48
}

; Function Attrs: nounwind ssp uwtable
define internal void @Fax3PrintDir(ptr noundef %tif, ptr noundef %fd, i64 noundef %flags) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %fd.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %sp = alloca ptr, align 8
  %sep = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %fd, ptr %fd.addr, align 8
  store i64 %flags, ptr %flags.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load i64, ptr %flags.addr, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 6
  %td_fieldsset = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x i64], ptr %td_fieldsset, i64 0, i64 2
  %4 = load i64, ptr %arrayidx, align 8
  %and = and i64 %4, 16
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end31

if.then:                                          ; preds = %entry
  store ptr @.str.12, ptr %sep, align 8
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_dir1 = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 6
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir1, i32 0, i32 10
  %6 = load i16, ptr %td_compression, align 4
  %conv = zext i16 %6 to i32
  %cmp = icmp eq i32 %conv, 4
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %7 = load ptr, ptr %fd.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.13)
  %8 = load ptr, ptr %sp, align 8
  %groupoptions = getelementptr inbounds %struct.Fax3BaseState, ptr %8, i32 0, i32 6
  %9 = load i64, ptr %groupoptions, align 8
  %and4 = and i64 %9, 2
  %tobool5 = icmp ne i64 %and4, 0
  br i1 %tobool5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then3
  %10 = load ptr, ptr %fd.addr, align 8
  %11 = load ptr, ptr %sep, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.14, ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then3
  br label %if.end27

if.else:                                          ; preds = %if.then
  %12 = load ptr, ptr %fd.addr, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.15)
  %13 = load ptr, ptr %sp, align 8
  %groupoptions9 = getelementptr inbounds %struct.Fax3BaseState, ptr %13, i32 0, i32 6
  %14 = load i64, ptr %groupoptions9, align 8
  %and10 = and i64 %14, 1
  %tobool11 = icmp ne i64 %and10, 0
  br i1 %tobool11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.else
  %15 = load ptr, ptr %fd.addr, align 8
  %16 = load ptr, ptr %sep, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.16, ptr noundef %16)
  store ptr @.str.17, ptr %sep, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.else
  %17 = load ptr, ptr %sp, align 8
  %groupoptions15 = getelementptr inbounds %struct.Fax3BaseState, ptr %17, i32 0, i32 6
  %18 = load i64, ptr %groupoptions15, align 8
  %and16 = and i64 %18, 4
  %tobool17 = icmp ne i64 %and16, 0
  br i1 %tobool17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end14
  %19 = load ptr, ptr %fd.addr, align 8
  %20 = load ptr, ptr %sep, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.18, ptr noundef %20)
  store ptr @.str.17, ptr %sep, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end14
  %21 = load ptr, ptr %sp, align 8
  %groupoptions21 = getelementptr inbounds %struct.Fax3BaseState, ptr %21, i32 0, i32 6
  %22 = load i64, ptr %groupoptions21, align 8
  %and22 = and i64 %22, 2
  %tobool23 = icmp ne i64 %and22, 0
  br i1 %tobool23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end20
  %23 = load ptr, ptr %fd.addr, align 8
  %24 = load ptr, ptr %sep, align 8
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.14, ptr noundef %24)
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end20
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end
  %25 = load ptr, ptr %fd.addr, align 8
  %26 = load ptr, ptr %sp, align 8
  %groupoptions28 = getelementptr inbounds %struct.Fax3BaseState, ptr %26, i32 0, i32 6
  %27 = load i64, ptr %groupoptions28, align 8
  %28 = load ptr, ptr %sp, align 8
  %groupoptions29 = getelementptr inbounds %struct.Fax3BaseState, ptr %28, i32 0, i32 6
  %29 = load i64, ptr %groupoptions29, align 8
  %call30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.19, i64 noundef %27, i64 noundef %29)
  br label %if.end31

if.end31:                                         ; preds = %if.end27, %entry
  %30 = load ptr, ptr %tif.addr, align 8
  %tif_dir32 = getelementptr inbounds %struct.tiff, ptr %30, i32 0, i32 6
  %td_fieldsset33 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir32, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [3 x i64], ptr %td_fieldsset33, i64 0, i64 1
  %31 = load i64, ptr %arrayidx34, align 8
  %and35 = and i64 %31, 2147483648
  %tobool36 = icmp ne i64 %and35, 0
  br i1 %tobool36, label %if.then37, label %if.end50

if.then37:                                        ; preds = %if.end31
  %32 = load ptr, ptr %fd.addr, align 8
  %call38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.20)
  %33 = load ptr, ptr %sp, align 8
  %cleanfaxdata = getelementptr inbounds %struct.Fax3BaseState, ptr %33, i32 0, i32 3
  %34 = load i16, ptr %cleanfaxdata, align 8
  %conv39 = zext i16 %34 to i32
  switch i32 %conv39, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb41
    i32 2, label %sw.bb43
  ]

sw.bb:                                            ; preds = %if.then37
  %35 = load ptr, ptr %fd.addr, align 8
  %call40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.21)
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.then37
  %36 = load ptr, ptr %fd.addr, align 8
  %call42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.22)
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.then37
  %37 = load ptr, ptr %fd.addr, align 8
  %call44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.23)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then37, %sw.bb43, %sw.bb41, %sw.bb
  %38 = load ptr, ptr %fd.addr, align 8
  %39 = load ptr, ptr %sp, align 8
  %cleanfaxdata45 = getelementptr inbounds %struct.Fax3BaseState, ptr %39, i32 0, i32 3
  %40 = load i16, ptr %cleanfaxdata45, align 8
  %conv46 = zext i16 %40 to i32
  %41 = load ptr, ptr %sp, align 8
  %cleanfaxdata47 = getelementptr inbounds %struct.Fax3BaseState, ptr %41, i32 0, i32 3
  %42 = load i16, ptr %cleanfaxdata47, align 8
  %conv48 = zext i16 %42 to i32
  %call49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef @.str.24, i32 noundef %conv46, i32 noundef %conv48)
  br label %if.end50

if.end50:                                         ; preds = %sw.epilog, %if.end31
  %43 = load ptr, ptr %tif.addr, align 8
  %tif_dir51 = getelementptr inbounds %struct.tiff, ptr %43, i32 0, i32 6
  %td_fieldsset52 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir51, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [3 x i64], ptr %td_fieldsset52, i64 0, i64 1
  %44 = load i64, ptr %arrayidx53, align 8
  %and54 = and i64 %44, 1073741824
  %tobool55 = icmp ne i64 %and54, 0
  br i1 %tobool55, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.end50
  %45 = load ptr, ptr %fd.addr, align 8
  %46 = load ptr, ptr %sp, align 8
  %badfaxlines = getelementptr inbounds %struct.Fax3BaseState, ptr %46, i32 0, i32 5
  %47 = load i64, ptr %badfaxlines, align 8
  %call57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef @.str.25, i64 noundef %47)
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end50
  %48 = load ptr, ptr %tif.addr, align 8
  %tif_dir59 = getelementptr inbounds %struct.tiff, ptr %48, i32 0, i32 6
  %td_fieldsset60 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir59, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [3 x i64], ptr %td_fieldsset60, i64 0, i64 2
  %49 = load i64, ptr %arrayidx61, align 8
  %and62 = and i64 %49, 1
  %tobool63 = icmp ne i64 %and62, 0
  br i1 %tobool63, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.end58
  %50 = load ptr, ptr %fd.addr, align 8
  %51 = load ptr, ptr %sp, align 8
  %badfaxrun = getelementptr inbounds %struct.Fax3BaseState, ptr %51, i32 0, i32 4
  %52 = load i64, ptr %badfaxrun, align 8
  %call65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.26, i64 noundef %52)
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end58
  %53 = load ptr, ptr %tif.addr, align 8
  %tif_dir67 = getelementptr inbounds %struct.tiff, ptr %53, i32 0, i32 6
  %td_fieldsset68 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir67, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [3 x i64], ptr %td_fieldsset68, i64 0, i64 2
  %54 = load i64, ptr %arrayidx69, align 8
  %and70 = and i64 %54, 2
  %tobool71 = icmp ne i64 %and70, 0
  br i1 %tobool71, label %if.then72, label %if.end74

if.then72:                                        ; preds = %if.end66
  %55 = load ptr, ptr %fd.addr, align 8
  %56 = load ptr, ptr %sp, align 8
  %recvparams = getelementptr inbounds %struct.Fax3BaseState, ptr %56, i32 0, i32 7
  %57 = load i64, ptr %recvparams, align 8
  %call73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef @.str.27, i64 noundef %57)
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.end66
  %58 = load ptr, ptr %tif.addr, align 8
  %tif_dir75 = getelementptr inbounds %struct.tiff, ptr %58, i32 0, i32 6
  %td_fieldsset76 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir75, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [3 x i64], ptr %td_fieldsset76, i64 0, i64 2
  %59 = load i64, ptr %arrayidx77, align 8
  %and78 = and i64 %59, 4
  %tobool79 = icmp ne i64 %and78, 0
  br i1 %tobool79, label %if.then80, label %if.end82

if.then80:                                        ; preds = %if.end74
  %60 = load ptr, ptr %fd.addr, align 8
  %61 = load ptr, ptr %sp, align 8
  %subaddress = getelementptr inbounds %struct.Fax3BaseState, ptr %61, i32 0, i32 8
  %62 = load ptr, ptr %subaddress, align 8
  %call81 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef @.str.28, ptr noundef %62)
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.end74
  %63 = load ptr, ptr %tif.addr, align 8
  %tif_dir83 = getelementptr inbounds %struct.tiff, ptr %63, i32 0, i32 6
  %td_fieldsset84 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir83, i32 0, i32 0
  %arrayidx85 = getelementptr inbounds [3 x i64], ptr %td_fieldsset84, i64 0, i64 2
  %64 = load i64, ptr %arrayidx85, align 8
  %and86 = and i64 %64, 8
  %tobool87 = icmp ne i64 %and86, 0
  br i1 %tobool87, label %if.then88, label %if.end90

if.then88:                                        ; preds = %if.end82
  %65 = load ptr, ptr %fd.addr, align 8
  %66 = load ptr, ptr %sp, align 8
  %recvtime = getelementptr inbounds %struct.Fax3BaseState, ptr %66, i32 0, i32 9
  %67 = load i64, ptr %recvtime, align 8
  %call89 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef @.str.29, i64 noundef %67)
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
  %esp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 37
  %2 = load ptr, ptr %tif_data, align 8
  store ptr %2, ptr %sp, align 8
  %3 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 8
  %4 = load i16, ptr %td_bitspersample, align 8
  %conv = zext i16 %4 to i32
  %cmp = icmp ne i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %tif_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %6, ptr noundef @.str.30)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %7, i32 0, i32 3
  %8 = load i64, ptr %tif_flags, align 8
  %and = and i64 %8, 1024
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %tif.addr, align 8
  %call = call i64 @TIFFTileRowSize(ptr noundef %9)
  store i64 %call, ptr %rowbytes, align 8
  %10 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %td_tilewidth, align 8
  store i64 %11, ptr %rowpixels, align 8
  br label %if.end6

if.else:                                          ; preds = %if.end
  %12 = load ptr, ptr %tif.addr, align 8
  %call5 = call i64 @TIFFScanlineSize(ptr noundef %12)
  store i64 %call5, ptr %rowbytes, align 8
  %13 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i32 0, i32 1
  %14 = load i64, ptr %td_imagewidth, align 8
  store i64 %14, ptr %rowpixels, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %15 = load i64, ptr %rowbytes, align 8
  %16 = load ptr, ptr %sp, align 8
  %rowbytes7 = getelementptr inbounds %struct.Fax3BaseState, ptr %16, i32 0, i32 1
  store i64 %15, ptr %rowbytes7, align 8
  %17 = load i64, ptr %rowpixels, align 8
  %18 = load ptr, ptr %sp, align 8
  %rowpixels8 = getelementptr inbounds %struct.Fax3BaseState, ptr %18, i32 0, i32 2
  store i64 %17, ptr %rowpixels8, align 8
  %19 = load ptr, ptr %sp, align 8
  %groupoptions = getelementptr inbounds %struct.Fax3BaseState, ptr %19, i32 0, i32 6
  %20 = load i64, ptr %groupoptions, align 8
  %and9 = and i64 %20, 1
  %tobool = icmp ne i64 %and9, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end6
  %21 = load ptr, ptr %td, align 8
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %21, i32 0, i32 10
  %22 = load i16, ptr %td_compression, align 4
  %conv10 = zext i16 %22 to i32
  %cmp11 = icmp eq i32 %conv10, 4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end6
  %23 = phi i1 [ true, %if.end6 ], [ %cmp11, %lor.rhs ]
  %lor.ext = zext i1 %23 to i32
  store i32 %lor.ext, ptr %needsRefLine, align 4
  %24 = load ptr, ptr %tif.addr, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %24, i32 0, i32 2
  %25 = load i32, ptr %tif_mode, align 4
  %cmp13 = icmp eq i32 %25, 0
  br i1 %cmp13, label %if.then15, label %if.else39

if.then15:                                        ; preds = %lor.end
  %26 = load ptr, ptr %tif.addr, align 8
  %tif_data16 = getelementptr inbounds %struct.tiff, ptr %26, i32 0, i32 37
  %27 = load ptr, ptr %tif_data16, align 8
  store ptr %27, ptr %dsp, align 8
  %28 = load i32, ptr %needsRefLine, align 4
  %tobool17 = icmp ne i32 %28, 0
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then15
  %29 = load i64, ptr %rowpixels, align 8
  %add = add i64 %29, 31
  %div = udiv i64 %add, 32
  %mul = mul i64 %div, 32
  %mul18 = mul i64 2, %mul
  br label %cond.end

cond.false:                                       ; preds = %if.then15
  %30 = load i64, ptr %rowpixels, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul18, %cond.true ], [ %30, %cond.false ]
  store i64 %cond, ptr %nruns, align 8
  %31 = load i64, ptr %nruns, align 8
  %mul19 = mul i64 %31, 8
  %call20 = call ptr @_TIFFmalloc(i64 noundef %mul19)
  %32 = load ptr, ptr %dsp, align 8
  %runs = getelementptr inbounds %struct.Fax3DecodeState, ptr %32, i32 0, i32 6
  store ptr %call20, ptr %runs, align 8
  %33 = load ptr, ptr %dsp, align 8
  %runs21 = getelementptr inbounds %struct.Fax3DecodeState, ptr %33, i32 0, i32 6
  %34 = load ptr, ptr %runs21, align 8
  %cmp22 = icmp eq ptr %34, null
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %cond.end
  %35 = load ptr, ptr %tif.addr, align 8
  %tif_name25 = getelementptr inbounds %struct.tiff, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %tif_name25, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @.str.31, ptr noundef @.str.32, ptr noundef %36)
  store i32 0, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %cond.end
  %37 = load ptr, ptr %dsp, align 8
  %runs27 = getelementptr inbounds %struct.Fax3DecodeState, ptr %37, i32 0, i32 6
  %38 = load ptr, ptr %runs27, align 8
  %39 = load ptr, ptr %dsp, align 8
  %curruns = getelementptr inbounds %struct.Fax3DecodeState, ptr %39, i32 0, i32 8
  store ptr %38, ptr %curruns, align 8
  %40 = load i32, ptr %needsRefLine, align 4
  %tobool28 = icmp ne i32 %40, 0
  br i1 %tobool28, label %if.then29, label %if.else31

if.then29:                                        ; preds = %if.end26
  %41 = load ptr, ptr %dsp, align 8
  %runs30 = getelementptr inbounds %struct.Fax3DecodeState, ptr %41, i32 0, i32 6
  %42 = load ptr, ptr %runs30, align 8
  %43 = load i64, ptr %nruns, align 8
  %shr = lshr i64 %43, 1
  %add.ptr = getelementptr inbounds i64, ptr %42, i64 %shr
  %44 = load ptr, ptr %dsp, align 8
  %refruns = getelementptr inbounds %struct.Fax3DecodeState, ptr %44, i32 0, i32 7
  store ptr %add.ptr, ptr %refruns, align 8
  br label %if.end33

if.else31:                                        ; preds = %if.end26
  %45 = load ptr, ptr %dsp, align 8
  %refruns32 = getelementptr inbounds %struct.Fax3DecodeState, ptr %45, i32 0, i32 7
  store ptr null, ptr %refruns32, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %if.then29
  %46 = load ptr, ptr %dsp, align 8
  %b = getelementptr inbounds %struct.Fax3DecodeState, ptr %46, i32 0, i32 0
  %groupoptions34 = getelementptr inbounds %struct.Fax3BaseState, ptr %b, i32 0, i32 6
  %47 = load i64, ptr %groupoptions34, align 8
  %and35 = and i64 %47, 1
  %tobool36 = icmp ne i64 %and35, 0
  br i1 %tobool36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end33
  %48 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %48, i32 0, i32 26
  store ptr @Fax3Decode2D, ptr %tif_decoderow, align 8
  %49 = load ptr, ptr %tif.addr, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %49, i32 0, i32 28
  store ptr @Fax3Decode2D, ptr %tif_decodestrip, align 8
  %50 = load ptr, ptr %tif.addr, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %50, i32 0, i32 30
  store ptr @Fax3Decode2D, ptr %tif_decodetile, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end33
  br label %if.end54

if.else39:                                        ; preds = %lor.end
  %51 = load i32, ptr %needsRefLine, align 4
  %tobool40 = icmp ne i32 %51, 0
  br i1 %tobool40, label %if.then41, label %if.else50

if.then41:                                        ; preds = %if.else39
  %52 = load ptr, ptr %tif.addr, align 8
  %tif_data42 = getelementptr inbounds %struct.tiff, ptr %52, i32 0, i32 37
  %53 = load ptr, ptr %tif_data42, align 8
  store ptr %53, ptr %esp, align 8
  %54 = load i64, ptr %rowbytes, align 8
  %call43 = call ptr @_TIFFmalloc(i64 noundef %54)
  %55 = load ptr, ptr %esp, align 8
  %refline = getelementptr inbounds %struct.Fax3EncodeState, ptr %55, i32 0, i32 4
  store ptr %call43, ptr %refline, align 8
  %56 = load ptr, ptr %esp, align 8
  %refline44 = getelementptr inbounds %struct.Fax3EncodeState, ptr %56, i32 0, i32 4
  %57 = load ptr, ptr %refline44, align 8
  %cmp45 = icmp eq ptr %57, null
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.then41
  %58 = load ptr, ptr %tif.addr, align 8
  %tif_name48 = getelementptr inbounds %struct.tiff, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %tif_name48, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @.str.31, ptr noundef @.str.33, ptr noundef %59)
  store i32 0, ptr %retval, align 4
  br label %return

if.end49:                                         ; preds = %if.then41
  br label %if.end53

if.else50:                                        ; preds = %if.else39
  %60 = load ptr, ptr %tif.addr, align 8
  %tif_data51 = getelementptr inbounds %struct.tiff, ptr %60, i32 0, i32 37
  %61 = load ptr, ptr %tif_data51, align 8
  %refline52 = getelementptr inbounds %struct.Fax3EncodeState, ptr %61, i32 0, i32 4
  store ptr null, ptr %refline52, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.else50, %if.end49
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end38
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end54, %if.then47, %if.then24, %if.then
  %62 = load i32, ptr %retval, align 4
  ret i32 %62
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax3PreDecode(ptr noundef %tif, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %s.addr = alloca i16, align 2
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load i16, ptr %s.addr, align 2
  %3 = load ptr, ptr %sp, align 8
  %cmp = icmp ne ptr %3, null
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.Fax3PreDecode, ptr noundef @.str, i32 noundef 160, ptr noundef @.str.40) #3
  unreachable

4:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %4
  %5 = load ptr, ptr %sp, align 8
  %bit = getelementptr inbounds %struct.Fax3DecodeState, ptr %5, i32 0, i32 3
  store i32 0, ptr %bit, align 8
  %6 = load ptr, ptr %sp, align 8
  %data = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i32 0, i32 2
  store i64 0, ptr %data, align 8
  %7 = load ptr, ptr %sp, align 8
  %EOLcnt = getelementptr inbounds %struct.Fax3DecodeState, ptr %7, i32 0, i32 4
  store i32 0, ptr %EOLcnt, align 4
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 6
  %td_fillorder = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir, i32 0, i32 13
  %9 = load i16, ptr %td_fillorder, align 2
  %conv1 = zext i16 %9 to i32
  %cmp2 = icmp ne i32 %conv1, 2
  %conv3 = zext i1 %cmp2 to i32
  %call = call ptr @TIFFGetBitRevTable(i32 noundef %conv3)
  %10 = load ptr, ptr %sp, align 8
  %bitmap = getelementptr inbounds %struct.Fax3DecodeState, ptr %10, i32 0, i32 1
  store ptr %call, ptr %bitmap, align 8
  %11 = load ptr, ptr %sp, align 8
  %refruns = getelementptr inbounds %struct.Fax3DecodeState, ptr %11, i32 0, i32 7
  %12 = load ptr, ptr %refruns, align 8
  %tobool4 = icmp ne ptr %12, null
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %13 = load ptr, ptr %sp, align 8
  %b = getelementptr inbounds %struct.Fax3DecodeState, ptr %13, i32 0, i32 0
  %rowpixels = getelementptr inbounds %struct.Fax3BaseState, ptr %b, i32 0, i32 2
  %14 = load i64, ptr %rowpixels, align 8
  %conv5 = trunc i64 %14 to i16
  %conv6 = zext i16 %conv5 to i64
  %15 = load ptr, ptr %sp, align 8
  %refruns7 = getelementptr inbounds %struct.Fax3DecodeState, ptr %15, i32 0, i32 7
  %16 = load ptr, ptr %refruns7, align 8
  %arrayidx = getelementptr inbounds i64, ptr %16, i64 0
  store i64 %conv6, ptr %arrayidx, align 8
  %17 = load ptr, ptr %sp, align 8
  %refruns8 = getelementptr inbounds %struct.Fax3DecodeState, ptr %17, i32 0, i32 7
  %18 = load ptr, ptr %refruns8, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %18, i64 1
  store i64 0, ptr %arrayidx9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax3Decode1D(ptr noundef %tif, ptr noundef %buf, i64 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %occ.addr = alloca i64, align 8
  %s.addr = alloca i16, align 2
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
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load ptr, ptr %sp, align 8
  %b = getelementptr inbounds %struct.Fax3DecodeState, ptr %2, i32 0, i32 0
  %rowpixels = getelementptr inbounds %struct.Fax3BaseState, ptr %b, i32 0, i32 2
  %3 = load i64, ptr %rowpixels, align 8
  %conv = trunc i64 %3 to i32
  store i32 %conv, ptr %lastx, align 4
  %4 = load ptr, ptr %sp, align 8
  %bitmap1 = getelementptr inbounds %struct.Fax3DecodeState, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %bitmap1, align 8
  store ptr %5, ptr %bitmap, align 8
  %6 = load i16, ptr %s.addr, align 2
  br label %do.body

do.body:                                          ; preds = %entry
  %7 = load ptr, ptr %sp, align 8
  %data = getelementptr inbounds %struct.Fax3DecodeState, ptr %7, i32 0, i32 2
  %8 = load i64, ptr %data, align 8
  store i64 %8, ptr %BitAcc, align 8
  %9 = load ptr, ptr %sp, align 8
  %bit = getelementptr inbounds %struct.Fax3DecodeState, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %bit, align 8
  store i32 %10, ptr %BitsAvail, align 4
  %11 = load ptr, ptr %sp, align 8
  %EOLcnt2 = getelementptr inbounds %struct.Fax3DecodeState, ptr %11, i32 0, i32 4
  %12 = load i32, ptr %EOLcnt2, align 4
  store i32 %12, ptr %EOLcnt, align 4
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %13, i32 0, i32 42
  %14 = load ptr, ptr %tif_rawcp, align 8
  store ptr %14, ptr %cp, align 8
  %15 = load ptr, ptr %cp, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 43
  %17 = load i64, ptr %tif_rawcc, align 8
  %add.ptr = getelementptr inbounds i8, ptr %15, i64 %17
  store ptr %add.ptr, ptr %ep, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  %18 = load ptr, ptr %sp, align 8
  %curruns = getelementptr inbounds %struct.Fax3DecodeState, ptr %18, i32 0, i32 8
  %19 = load ptr, ptr %curruns, align 8
  store ptr %19, ptr %thisrun, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end414, %do.end
  %20 = load i64, ptr %occ.addr, align 8
  %cmp = icmp sgt i64 %20, 0
  br i1 %cmp, label %while.body, label %while.end506

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %21 = load ptr, ptr %thisrun, align 8
  store ptr %21, ptr %pa, align 8
  br label %do.body4

do.body4:                                         ; preds = %while.body
  %22 = load i32, ptr %EOLcnt, align 4
  %cmp5 = icmp eq i32 %22, 0
  br i1 %cmp5, label %if.then, label %if.end44

if.then:                                          ; preds = %do.body4
  br label %for.cond

for.cond:                                         ; preds = %do.end43, %if.then
  br label %do.body7

do.body7:                                         ; preds = %for.cond
  %23 = load i32, ptr %BitsAvail, align 4
  %cmp8 = icmp slt i32 %23, 11
  br i1 %cmp8, label %if.then10, label %if.end36

if.then10:                                        ; preds = %do.body7
  %24 = load ptr, ptr %cp, align 8
  %25 = load ptr, ptr %ep, align 8
  %cmp11 = icmp uge ptr %24, %25
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then10
  %26 = load i32, ptr %BitsAvail, align 4
  %cmp14 = icmp eq i32 %26, 0
  br i1 %cmp14, label %if.then16, label %if.end

if.then16:                                        ; preds = %if.then13
  br label %EOF1D

if.end:                                           ; preds = %if.then13
  store i32 11, ptr %BitsAvail, align 4
  br label %if.end35

if.else:                                          ; preds = %if.then10
  %27 = load ptr, ptr %bitmap, align 8
  %28 = load ptr, ptr %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %28, i32 1
  store ptr %incdec.ptr, ptr %cp, align 8
  %29 = load i8, ptr %28, align 1
  %idxprom = zext i8 %29 to i64
  %arrayidx = getelementptr inbounds i8, ptr %27, i64 %idxprom
  %30 = load i8, ptr %arrayidx, align 1
  %conv17 = zext i8 %30 to i64
  %31 = load i32, ptr %BitsAvail, align 4
  %sh_prom = zext i32 %31 to i64
  %shl = shl i64 %conv17, %sh_prom
  %32 = load i64, ptr %BitAcc, align 8
  %or = or i64 %32, %shl
  store i64 %or, ptr %BitAcc, align 8
  %33 = load i32, ptr %BitsAvail, align 4
  %add = add nsw i32 %33, 8
  store i32 %add, ptr %BitsAvail, align 4
  %cmp18 = icmp slt i32 %add, 11
  br i1 %cmp18, label %if.then20, label %if.end34

if.then20:                                        ; preds = %if.else
  %34 = load ptr, ptr %cp, align 8
  %35 = load ptr, ptr %ep, align 8
  %cmp21 = icmp uge ptr %34, %35
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.then20
  store i32 11, ptr %BitsAvail, align 4
  br label %if.end33

if.else24:                                        ; preds = %if.then20
  %36 = load ptr, ptr %bitmap, align 8
  %37 = load ptr, ptr %cp, align 8
  %incdec.ptr25 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr25, ptr %cp, align 8
  %38 = load i8, ptr %37, align 1
  %idxprom26 = zext i8 %38 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %36, i64 %idxprom26
  %39 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %39 to i64
  %40 = load i32, ptr %BitsAvail, align 4
  %sh_prom29 = zext i32 %40 to i64
  %shl30 = shl i64 %conv28, %sh_prom29
  %41 = load i64, ptr %BitAcc, align 8
  %or31 = or i64 %41, %shl30
  store i64 %or31, ptr %BitAcc, align 8
  %42 = load i32, ptr %BitsAvail, align 4
  %add32 = add nsw i32 %42, 8
  store i32 %add32, ptr %BitsAvail, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else24, %if.then23
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.else
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %do.body7
  br label %do.end37

do.end37:                                         ; preds = %if.end36
  %43 = load i64, ptr %BitAcc, align 8
  %and = and i64 %43, 2047
  %cmp38 = icmp eq i64 %and, 0
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %do.end37
  br label %for.end

if.end41:                                         ; preds = %do.end37
  br label %do.body42

do.body42:                                        ; preds = %if.end41
  %44 = load i32, ptr %BitsAvail, align 4
  %sub = sub nsw i32 %44, 1
  store i32 %sub, ptr %BitsAvail, align 4
  %45 = load i64, ptr %BitAcc, align 8
  %shr = lshr i64 %45, 1
  store i64 %shr, ptr %BitAcc, align 8
  br label %do.end43

do.end43:                                         ; preds = %do.body42
  br label %for.cond

for.end:                                          ; preds = %if.then40
  br label %if.end44

if.end44:                                         ; preds = %for.end, %do.body4
  br label %for.cond45

for.cond45:                                       ; preds = %do.end75, %if.end44
  br label %do.body46

do.body46:                                        ; preds = %for.cond45
  %46 = load i32, ptr %BitsAvail, align 4
  %cmp47 = icmp slt i32 %46, 8
  br i1 %cmp47, label %if.then49, label %if.end67

if.then49:                                        ; preds = %do.body46
  %47 = load ptr, ptr %cp, align 8
  %48 = load ptr, ptr %ep, align 8
  %cmp50 = icmp uge ptr %47, %48
  br i1 %cmp50, label %if.then52, label %if.else57

if.then52:                                        ; preds = %if.then49
  %49 = load i32, ptr %BitsAvail, align 4
  %cmp53 = icmp eq i32 %49, 0
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.then52
  br label %EOF1D

if.end56:                                         ; preds = %if.then52
  store i32 8, ptr %BitsAvail, align 4
  br label %if.end66

if.else57:                                        ; preds = %if.then49
  %50 = load ptr, ptr %bitmap, align 8
  %51 = load ptr, ptr %cp, align 8
  %incdec.ptr58 = getelementptr inbounds i8, ptr %51, i32 1
  store ptr %incdec.ptr58, ptr %cp, align 8
  %52 = load i8, ptr %51, align 1
  %idxprom59 = zext i8 %52 to i64
  %arrayidx60 = getelementptr inbounds i8, ptr %50, i64 %idxprom59
  %53 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %53 to i64
  %54 = load i32, ptr %BitsAvail, align 4
  %sh_prom62 = zext i32 %54 to i64
  %shl63 = shl i64 %conv61, %sh_prom62
  %55 = load i64, ptr %BitAcc, align 8
  %or64 = or i64 %55, %shl63
  store i64 %or64, ptr %BitAcc, align 8
  %56 = load i32, ptr %BitsAvail, align 4
  %add65 = add nsw i32 %56, 8
  store i32 %add65, ptr %BitsAvail, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.else57, %if.end56
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %do.body46
  br label %do.end68

do.end68:                                         ; preds = %if.end67
  %57 = load i64, ptr %BitAcc, align 8
  %and69 = and i64 %57, 255
  %tobool = icmp ne i64 %and69, 0
  br i1 %tobool, label %if.then70, label %if.end71

if.then70:                                        ; preds = %do.end68
  br label %for.end76

if.end71:                                         ; preds = %do.end68
  br label %do.body72

do.body72:                                        ; preds = %if.end71
  %58 = load i32, ptr %BitsAvail, align 4
  %sub73 = sub nsw i32 %58, 8
  store i32 %sub73, ptr %BitsAvail, align 4
  %59 = load i64, ptr %BitAcc, align 8
  %shr74 = lshr i64 %59, 8
  store i64 %shr74, ptr %BitAcc, align 8
  br label %do.end75

do.end75:                                         ; preds = %do.body72
  br label %for.cond45

for.end76:                                        ; preds = %if.then70
  br label %while.cond77

while.cond77:                                     ; preds = %do.end85, %for.end76
  %60 = load i64, ptr %BitAcc, align 8
  %and78 = and i64 %60, 1
  %cmp79 = icmp eq i64 %and78, 0
  br i1 %cmp79, label %while.body81, label %while.end

while.body81:                                     ; preds = %while.cond77
  br label %do.body82

do.body82:                                        ; preds = %while.body81
  %61 = load i32, ptr %BitsAvail, align 4
  %sub83 = sub nsw i32 %61, 1
  store i32 %sub83, ptr %BitsAvail, align 4
  %62 = load i64, ptr %BitAcc, align 8
  %shr84 = lshr i64 %62, 1
  store i64 %shr84, ptr %BitAcc, align 8
  br label %do.end85

do.end85:                                         ; preds = %do.body82
  br label %while.cond77, !llvm.loop !25

while.end:                                        ; preds = %while.cond77
  br label %do.body86

do.body86:                                        ; preds = %while.end
  %63 = load i32, ptr %BitsAvail, align 4
  %sub87 = sub nsw i32 %63, 1
  store i32 %sub87, ptr %BitsAvail, align 4
  %64 = load i64, ptr %BitAcc, align 8
  %shr88 = lshr i64 %64, 1
  store i64 %shr88, ptr %BitAcc, align 8
  br label %do.end89

do.end89:                                         ; preds = %do.body86
  store i32 0, ptr %EOLcnt, align 4
  br label %do.end90

do.end90:                                         ; preds = %do.end89
  br label %do.body91

do.body91:                                        ; preds = %do.end90
  br label %for.cond92

for.cond92:                                       ; preds = %if.end254, %do.body91
  br label %for.cond93

for.cond93:                                       ; preds = %sw.epilog, %for.cond92
  br label %do.body94

do.body94:                                        ; preds = %for.cond93
  br label %do.body95

do.body95:                                        ; preds = %do.body94
  %65 = load i32, ptr %BitsAvail, align 4
  %cmp96 = icmp slt i32 %65, 12
  br i1 %cmp96, label %if.then98, label %if.end133

if.then98:                                        ; preds = %do.body95
  %66 = load ptr, ptr %cp, align 8
  %67 = load ptr, ptr %ep, align 8
  %cmp99 = icmp uge ptr %66, %67
  br i1 %cmp99, label %if.then101, label %if.else106

if.then101:                                       ; preds = %if.then98
  %68 = load i32, ptr %BitsAvail, align 4
  %cmp102 = icmp eq i32 %68, 0
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.then101
  br label %eof1d

if.end105:                                        ; preds = %if.then101
  store i32 12, ptr %BitsAvail, align 4
  br label %if.end132

if.else106:                                       ; preds = %if.then98
  %69 = load ptr, ptr %bitmap, align 8
  %70 = load ptr, ptr %cp, align 8
  %incdec.ptr107 = getelementptr inbounds i8, ptr %70, i32 1
  store ptr %incdec.ptr107, ptr %cp, align 8
  %71 = load i8, ptr %70, align 1
  %idxprom108 = zext i8 %71 to i64
  %arrayidx109 = getelementptr inbounds i8, ptr %69, i64 %idxprom108
  %72 = load i8, ptr %arrayidx109, align 1
  %conv110 = zext i8 %72 to i64
  %73 = load i32, ptr %BitsAvail, align 4
  %sh_prom111 = zext i32 %73 to i64
  %shl112 = shl i64 %conv110, %sh_prom111
  %74 = load i64, ptr %BitAcc, align 8
  %or113 = or i64 %74, %shl112
  store i64 %or113, ptr %BitAcc, align 8
  %75 = load i32, ptr %BitsAvail, align 4
  %add114 = add nsw i32 %75, 8
  store i32 %add114, ptr %BitsAvail, align 4
  %cmp115 = icmp slt i32 %add114, 12
  br i1 %cmp115, label %if.then117, label %if.end131

if.then117:                                       ; preds = %if.else106
  %76 = load ptr, ptr %cp, align 8
  %77 = load ptr, ptr %ep, align 8
  %cmp118 = icmp uge ptr %76, %77
  br i1 %cmp118, label %if.then120, label %if.else121

if.then120:                                       ; preds = %if.then117
  store i32 12, ptr %BitsAvail, align 4
  br label %if.end130

if.else121:                                       ; preds = %if.then117
  %78 = load ptr, ptr %bitmap, align 8
  %79 = load ptr, ptr %cp, align 8
  %incdec.ptr122 = getelementptr inbounds i8, ptr %79, i32 1
  store ptr %incdec.ptr122, ptr %cp, align 8
  %80 = load i8, ptr %79, align 1
  %idxprom123 = zext i8 %80 to i64
  %arrayidx124 = getelementptr inbounds i8, ptr %78, i64 %idxprom123
  %81 = load i8, ptr %arrayidx124, align 1
  %conv125 = zext i8 %81 to i64
  %82 = load i32, ptr %BitsAvail, align 4
  %sh_prom126 = zext i32 %82 to i64
  %shl127 = shl i64 %conv125, %sh_prom126
  %83 = load i64, ptr %BitAcc, align 8
  %or128 = or i64 %83, %shl127
  store i64 %or128, ptr %BitAcc, align 8
  %84 = load i32, ptr %BitsAvail, align 4
  %add129 = add nsw i32 %84, 8
  store i32 %add129, ptr %BitsAvail, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.else121, %if.then120
  br label %if.end131

if.end131:                                        ; preds = %if.end130, %if.else106
  br label %if.end132

if.end132:                                        ; preds = %if.end131, %if.end105
  br label %if.end133

if.end133:                                        ; preds = %if.end132, %do.body95
  br label %do.end134

do.end134:                                        ; preds = %if.end133
  %85 = load i64, ptr %BitAcc, align 8
  %and135 = and i64 %85, 4095
  %add.ptr136 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %and135
  store ptr %add.ptr136, ptr %TabEnt, align 8
  br label %do.body137

do.body137:                                       ; preds = %do.end134
  %86 = load ptr, ptr %TabEnt, align 8
  %Width = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %86, i32 0, i32 1
  %87 = load i8, ptr %Width, align 1
  %conv138 = zext i8 %87 to i32
  %88 = load i32, ptr %BitsAvail, align 4
  %sub139 = sub nsw i32 %88, %conv138
  store i32 %sub139, ptr %BitsAvail, align 4
  %89 = load ptr, ptr %TabEnt, align 8
  %Width140 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %89, i32 0, i32 1
  %90 = load i8, ptr %Width140, align 1
  %conv141 = zext i8 %90 to i32
  %91 = load i64, ptr %BitAcc, align 8
  %sh_prom142 = zext i32 %conv141 to i64
  %shr143 = lshr i64 %91, %sh_prom142
  store i64 %shr143, ptr %BitAcc, align 8
  br label %do.end144

do.end144:                                        ; preds = %do.body137
  br label %do.end145

do.end145:                                        ; preds = %do.end144
  %92 = load ptr, ptr %TabEnt, align 8
  %State = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %92, i32 0, i32 0
  %93 = load i8, ptr %State, align 8
  %conv146 = zext i8 %93 to i32
  switch i32 %conv146, label %sw.default [
    i32 12, label %sw.bb
    i32 7, label %sw.bb147
    i32 9, label %sw.bb157
    i32 11, label %sw.bb157
  ]

sw.bb:                                            ; preds = %do.end145
  store i32 1, ptr %EOLcnt, align 4
  br label %done1d

sw.bb147:                                         ; preds = %do.end145
  br label %do.body148

do.body148:                                       ; preds = %sw.bb147
  %94 = load i32, ptr %RunLength, align 4
  %conv149 = sext i32 %94 to i64
  %95 = load ptr, ptr %TabEnt, align 8
  %Param = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %95, i32 0, i32 2
  %96 = load i64, ptr %Param, align 8
  %add150 = add i64 %conv149, %96
  %97 = load ptr, ptr %pa, align 8
  %incdec.ptr151 = getelementptr inbounds i64, ptr %97, i32 1
  store ptr %incdec.ptr151, ptr %pa, align 8
  store i64 %add150, ptr %97, align 8
  %98 = load ptr, ptr %TabEnt, align 8
  %Param152 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %98, i32 0, i32 2
  %99 = load i64, ptr %Param152, align 8
  %100 = load i32, ptr %a0, align 4
  %conv153 = sext i32 %100 to i64
  %add154 = add i64 %conv153, %99
  %conv155 = trunc i64 %add154 to i32
  store i32 %conv155, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end156

do.end156:                                        ; preds = %do.body148
  br label %doneWhite1d

sw.bb157:                                         ; preds = %do.end145, %do.end145
  %101 = load ptr, ptr %TabEnt, align 8
  %Param158 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %101, i32 0, i32 2
  %102 = load i64, ptr %Param158, align 8
  %103 = load i32, ptr %a0, align 4
  %conv159 = sext i32 %103 to i64
  %add160 = add i64 %conv159, %102
  %conv161 = trunc i64 %add160 to i32
  store i32 %conv161, ptr %a0, align 4
  %104 = load ptr, ptr %TabEnt, align 8
  %Param162 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %104, i32 0, i32 2
  %105 = load i64, ptr %Param162, align 8
  %106 = load i32, ptr %RunLength, align 4
  %conv163 = sext i32 %106 to i64
  %add164 = add i64 %conv163, %105
  %conv165 = trunc i64 %add164 to i32
  store i32 %conv165, ptr %RunLength, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end145
  %107 = load ptr, ptr %tif.addr, align 8
  %108 = load i32, ptr %a0, align 4
  %conv166 = sext i32 %108 to i64
  call void @Fax3Unexpected(ptr noundef @Fax3Decode1D.module, ptr noundef %107, i64 noundef %conv166)
  br label %done1d

sw.epilog:                                        ; preds = %sw.bb157
  br label %for.cond93

doneWhite1d:                                      ; preds = %do.end156
  %109 = load i32, ptr %a0, align 4
  %110 = load i32, ptr %lastx, align 4
  %cmp167 = icmp sge i32 %109, %110
  br i1 %cmp167, label %if.then169, label %if.end170

if.then169:                                       ; preds = %doneWhite1d
  br label %done1d

if.end170:                                        ; preds = %doneWhite1d
  br label %for.cond171

for.cond171:                                      ; preds = %sw.epilog250, %if.end170
  br label %do.body172

do.body172:                                       ; preds = %for.cond171
  br label %do.body173

do.body173:                                       ; preds = %do.body172
  %111 = load i32, ptr %BitsAvail, align 4
  %cmp174 = icmp slt i32 %111, 13
  br i1 %cmp174, label %if.then176, label %if.end211

if.then176:                                       ; preds = %do.body173
  %112 = load ptr, ptr %cp, align 8
  %113 = load ptr, ptr %ep, align 8
  %cmp177 = icmp uge ptr %112, %113
  br i1 %cmp177, label %if.then179, label %if.else184

if.then179:                                       ; preds = %if.then176
  %114 = load i32, ptr %BitsAvail, align 4
  %cmp180 = icmp eq i32 %114, 0
  br i1 %cmp180, label %if.then182, label %if.end183

if.then182:                                       ; preds = %if.then179
  br label %eof1d

if.end183:                                        ; preds = %if.then179
  store i32 13, ptr %BitsAvail, align 4
  br label %if.end210

if.else184:                                       ; preds = %if.then176
  %115 = load ptr, ptr %bitmap, align 8
  %116 = load ptr, ptr %cp, align 8
  %incdec.ptr185 = getelementptr inbounds i8, ptr %116, i32 1
  store ptr %incdec.ptr185, ptr %cp, align 8
  %117 = load i8, ptr %116, align 1
  %idxprom186 = zext i8 %117 to i64
  %arrayidx187 = getelementptr inbounds i8, ptr %115, i64 %idxprom186
  %118 = load i8, ptr %arrayidx187, align 1
  %conv188 = zext i8 %118 to i64
  %119 = load i32, ptr %BitsAvail, align 4
  %sh_prom189 = zext i32 %119 to i64
  %shl190 = shl i64 %conv188, %sh_prom189
  %120 = load i64, ptr %BitAcc, align 8
  %or191 = or i64 %120, %shl190
  store i64 %or191, ptr %BitAcc, align 8
  %121 = load i32, ptr %BitsAvail, align 4
  %add192 = add nsw i32 %121, 8
  store i32 %add192, ptr %BitsAvail, align 4
  %cmp193 = icmp slt i32 %add192, 13
  br i1 %cmp193, label %if.then195, label %if.end209

if.then195:                                       ; preds = %if.else184
  %122 = load ptr, ptr %cp, align 8
  %123 = load ptr, ptr %ep, align 8
  %cmp196 = icmp uge ptr %122, %123
  br i1 %cmp196, label %if.then198, label %if.else199

if.then198:                                       ; preds = %if.then195
  store i32 13, ptr %BitsAvail, align 4
  br label %if.end208

if.else199:                                       ; preds = %if.then195
  %124 = load ptr, ptr %bitmap, align 8
  %125 = load ptr, ptr %cp, align 8
  %incdec.ptr200 = getelementptr inbounds i8, ptr %125, i32 1
  store ptr %incdec.ptr200, ptr %cp, align 8
  %126 = load i8, ptr %125, align 1
  %idxprom201 = zext i8 %126 to i64
  %arrayidx202 = getelementptr inbounds i8, ptr %124, i64 %idxprom201
  %127 = load i8, ptr %arrayidx202, align 1
  %conv203 = zext i8 %127 to i64
  %128 = load i32, ptr %BitsAvail, align 4
  %sh_prom204 = zext i32 %128 to i64
  %shl205 = shl i64 %conv203, %sh_prom204
  %129 = load i64, ptr %BitAcc, align 8
  %or206 = or i64 %129, %shl205
  store i64 %or206, ptr %BitAcc, align 8
  %130 = load i32, ptr %BitsAvail, align 4
  %add207 = add nsw i32 %130, 8
  store i32 %add207, ptr %BitsAvail, align 4
  br label %if.end208

if.end208:                                        ; preds = %if.else199, %if.then198
  br label %if.end209

if.end209:                                        ; preds = %if.end208, %if.else184
  br label %if.end210

if.end210:                                        ; preds = %if.end209, %if.end183
  br label %if.end211

if.end211:                                        ; preds = %if.end210, %do.body173
  br label %do.end212

do.end212:                                        ; preds = %if.end211
  %131 = load i64, ptr %BitAcc, align 8
  %and213 = and i64 %131, 8191
  %add.ptr214 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %and213
  store ptr %add.ptr214, ptr %TabEnt, align 8
  br label %do.body215

do.body215:                                       ; preds = %do.end212
  %132 = load ptr, ptr %TabEnt, align 8
  %Width216 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %132, i32 0, i32 1
  %133 = load i8, ptr %Width216, align 1
  %conv217 = zext i8 %133 to i32
  %134 = load i32, ptr %BitsAvail, align 4
  %sub218 = sub nsw i32 %134, %conv217
  store i32 %sub218, ptr %BitsAvail, align 4
  %135 = load ptr, ptr %TabEnt, align 8
  %Width219 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %135, i32 0, i32 1
  %136 = load i8, ptr %Width219, align 1
  %conv220 = zext i8 %136 to i32
  %137 = load i64, ptr %BitAcc, align 8
  %sh_prom221 = zext i32 %conv220 to i64
  %shr222 = lshr i64 %137, %sh_prom221
  store i64 %shr222, ptr %BitAcc, align 8
  br label %do.end223

do.end223:                                        ; preds = %do.body215
  br label %do.end224

do.end224:                                        ; preds = %do.end223
  %138 = load ptr, ptr %TabEnt, align 8
  %State225 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %138, i32 0, i32 0
  %139 = load i8, ptr %State225, align 8
  %conv226 = zext i8 %139 to i32
  switch i32 %conv226, label %sw.default248 [
    i32 12, label %sw.bb227
    i32 8, label %sw.bb228
    i32 10, label %sw.bb239
    i32 11, label %sw.bb239
  ]

sw.bb227:                                         ; preds = %do.end224
  store i32 1, ptr %EOLcnt, align 4
  br label %done1d

sw.bb228:                                         ; preds = %do.end224
  br label %do.body229

do.body229:                                       ; preds = %sw.bb228
  %140 = load i32, ptr %RunLength, align 4
  %conv230 = sext i32 %140 to i64
  %141 = load ptr, ptr %TabEnt, align 8
  %Param231 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %141, i32 0, i32 2
  %142 = load i64, ptr %Param231, align 8
  %add232 = add i64 %conv230, %142
  %143 = load ptr, ptr %pa, align 8
  %incdec.ptr233 = getelementptr inbounds i64, ptr %143, i32 1
  store ptr %incdec.ptr233, ptr %pa, align 8
  store i64 %add232, ptr %143, align 8
  %144 = load ptr, ptr %TabEnt, align 8
  %Param234 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %144, i32 0, i32 2
  %145 = load i64, ptr %Param234, align 8
  %146 = load i32, ptr %a0, align 4
  %conv235 = sext i32 %146 to i64
  %add236 = add i64 %conv235, %145
  %conv237 = trunc i64 %add236 to i32
  store i32 %conv237, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end238

do.end238:                                        ; preds = %do.body229
  br label %doneBlack1d

sw.bb239:                                         ; preds = %do.end224, %do.end224
  %147 = load ptr, ptr %TabEnt, align 8
  %Param240 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %147, i32 0, i32 2
  %148 = load i64, ptr %Param240, align 8
  %149 = load i32, ptr %a0, align 4
  %conv241 = sext i32 %149 to i64
  %add242 = add i64 %conv241, %148
  %conv243 = trunc i64 %add242 to i32
  store i32 %conv243, ptr %a0, align 4
  %150 = load ptr, ptr %TabEnt, align 8
  %Param244 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %150, i32 0, i32 2
  %151 = load i64, ptr %Param244, align 8
  %152 = load i32, ptr %RunLength, align 4
  %conv245 = sext i32 %152 to i64
  %add246 = add i64 %conv245, %151
  %conv247 = trunc i64 %add246 to i32
  store i32 %conv247, ptr %RunLength, align 4
  br label %sw.epilog250

sw.default248:                                    ; preds = %do.end224
  %153 = load ptr, ptr %tif.addr, align 8
  %154 = load i32, ptr %a0, align 4
  %conv249 = sext i32 %154 to i64
  call void @Fax3Unexpected(ptr noundef @Fax3Decode1D.module, ptr noundef %153, i64 noundef %conv249)
  br label %done1d

sw.epilog250:                                     ; preds = %sw.bb239
  br label %for.cond171

doneBlack1d:                                      ; preds = %do.end238
  %155 = load i32, ptr %a0, align 4
  %156 = load i32, ptr %lastx, align 4
  %cmp251 = icmp sge i32 %155, %156
  br i1 %cmp251, label %if.then253, label %if.end254

if.then253:                                       ; preds = %doneBlack1d
  br label %done1d

if.end254:                                        ; preds = %doneBlack1d
  br label %for.cond92

eof1d:                                            ; preds = %if.then182, %if.then104
  %157 = load ptr, ptr %tif.addr, align 8
  %158 = load i32, ptr %a0, align 4
  %conv255 = sext i32 %158 to i64
  call void @Fax3PrematureEOF(ptr noundef @Fax3Decode1D.module, ptr noundef %157, i64 noundef %conv255)
  br label %do.body256

do.body256:                                       ; preds = %eof1d
  %159 = load i32, ptr %RunLength, align 4
  %tobool257 = icmp ne i32 %159, 0
  br i1 %tobool257, label %if.then258, label %if.end265

if.then258:                                       ; preds = %do.body256
  br label %do.body259

do.body259:                                       ; preds = %if.then258
  %160 = load i32, ptr %RunLength, align 4
  %add260 = add nsw i32 %160, 0
  %conv261 = sext i32 %add260 to i64
  %161 = load ptr, ptr %pa, align 8
  %incdec.ptr262 = getelementptr inbounds i64, ptr %161, i32 1
  store ptr %incdec.ptr262, ptr %pa, align 8
  store i64 %conv261, ptr %161, align 8
  %162 = load i32, ptr %a0, align 4
  %add263 = add nsw i32 %162, 0
  store i32 %add263, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end264

do.end264:                                        ; preds = %do.body259
  br label %if.end265

if.end265:                                        ; preds = %do.end264, %do.body256
  %163 = load i32, ptr %a0, align 4
  %164 = load i32, ptr %lastx, align 4
  %cmp266 = icmp ne i32 %163, %164
  br i1 %cmp266, label %if.then268, label %if.end325

if.then268:                                       ; preds = %if.end265
  %165 = load ptr, ptr %tif.addr, align 8
  %166 = load i32, ptr %a0, align 4
  %conv269 = sext i32 %166 to i64
  %167 = load i32, ptr %lastx, align 4
  %conv270 = sext i32 %167 to i64
  call void @Fax3BadLength(ptr noundef @Fax3Decode1D.module, ptr noundef %165, i64 noundef %conv269, i64 noundef %conv270)
  br label %while.cond271

while.cond271:                                    ; preds = %while.body276, %if.then268
  %168 = load i32, ptr %a0, align 4
  %169 = load i32, ptr %lastx, align 4
  %cmp272 = icmp sgt i32 %168, %169
  br i1 %cmp272, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond271
  %170 = load ptr, ptr %pa, align 8
  %171 = load ptr, ptr %thisrun, align 8
  %cmp274 = icmp ugt ptr %170, %171
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond271
  %172 = phi i1 [ false, %while.cond271 ], [ %cmp274, %land.rhs ]
  br i1 %172, label %while.body276, label %while.end281

while.body276:                                    ; preds = %land.end
  %173 = load ptr, ptr %pa, align 8
  %incdec.ptr277 = getelementptr inbounds i64, ptr %173, i32 -1
  store ptr %incdec.ptr277, ptr %pa, align 8
  %174 = load i64, ptr %incdec.ptr277, align 8
  %175 = load i32, ptr %a0, align 4
  %conv278 = sext i32 %175 to i64
  %sub279 = sub i64 %conv278, %174
  %conv280 = trunc i64 %sub279 to i32
  store i32 %conv280, ptr %a0, align 4
  br label %while.cond271, !llvm.loop !26

while.end281:                                     ; preds = %land.end
  %176 = load i32, ptr %a0, align 4
  %177 = load i32, ptr %lastx, align 4
  %cmp282 = icmp slt i32 %176, %177
  br i1 %cmp282, label %if.then284, label %if.else307

if.then284:                                       ; preds = %while.end281
  %178 = load i32, ptr %a0, align 4
  %cmp285 = icmp slt i32 %178, 0
  br i1 %cmp285, label %if.then287, label %if.end288

if.then287:                                       ; preds = %if.then284
  store i32 0, ptr %a0, align 4
  br label %if.end288

if.end288:                                        ; preds = %if.then287, %if.then284
  %179 = load ptr, ptr %pa, align 8
  %180 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %179 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %180 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %and289 = and i64 %sub.ptr.div, 1
  %tobool290 = icmp ne i64 %and289, 0
  br i1 %tobool290, label %if.then291, label %if.end298

if.then291:                                       ; preds = %if.end288
  br label %do.body292

do.body292:                                       ; preds = %if.then291
  %181 = load i32, ptr %RunLength, align 4
  %add293 = add nsw i32 %181, 0
  %conv294 = sext i32 %add293 to i64
  %182 = load ptr, ptr %pa, align 8
  %incdec.ptr295 = getelementptr inbounds i64, ptr %182, i32 1
  store ptr %incdec.ptr295, ptr %pa, align 8
  store i64 %conv294, ptr %182, align 8
  %183 = load i32, ptr %a0, align 4
  %add296 = add nsw i32 %183, 0
  store i32 %add296, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end297

do.end297:                                        ; preds = %do.body292
  br label %if.end298

if.end298:                                        ; preds = %do.end297, %if.end288
  br label %do.body299

do.body299:                                       ; preds = %if.end298
  %184 = load i32, ptr %RunLength, align 4
  %185 = load i32, ptr %lastx, align 4
  %186 = load i32, ptr %a0, align 4
  %sub300 = sub nsw i32 %185, %186
  %add301 = add nsw i32 %184, %sub300
  %conv302 = sext i32 %add301 to i64
  %187 = load ptr, ptr %pa, align 8
  %incdec.ptr303 = getelementptr inbounds i64, ptr %187, i32 1
  store ptr %incdec.ptr303, ptr %pa, align 8
  store i64 %conv302, ptr %187, align 8
  %188 = load i32, ptr %lastx, align 4
  %189 = load i32, ptr %a0, align 4
  %sub304 = sub nsw i32 %188, %189
  %190 = load i32, ptr %a0, align 4
  %add305 = add nsw i32 %190, %sub304
  store i32 %add305, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end306

do.end306:                                        ; preds = %do.body299
  br label %if.end324

if.else307:                                       ; preds = %while.end281
  %191 = load i32, ptr %a0, align 4
  %192 = load i32, ptr %lastx, align 4
  %cmp308 = icmp sgt i32 %191, %192
  br i1 %cmp308, label %if.then310, label %if.end323

if.then310:                                       ; preds = %if.else307
  br label %do.body311

do.body311:                                       ; preds = %if.then310
  %193 = load i32, ptr %RunLength, align 4
  %194 = load i32, ptr %lastx, align 4
  %add312 = add nsw i32 %193, %194
  %conv313 = sext i32 %add312 to i64
  %195 = load ptr, ptr %pa, align 8
  %incdec.ptr314 = getelementptr inbounds i64, ptr %195, i32 1
  store ptr %incdec.ptr314, ptr %pa, align 8
  store i64 %conv313, ptr %195, align 8
  %196 = load i32, ptr %lastx, align 4
  %197 = load i32, ptr %a0, align 4
  %add315 = add nsw i32 %197, %196
  store i32 %add315, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end316

do.end316:                                        ; preds = %do.body311
  br label %do.body317

do.body317:                                       ; preds = %do.end316
  %198 = load i32, ptr %RunLength, align 4
  %add318 = add nsw i32 %198, 0
  %conv319 = sext i32 %add318 to i64
  %199 = load ptr, ptr %pa, align 8
  %incdec.ptr320 = getelementptr inbounds i64, ptr %199, i32 1
  store ptr %incdec.ptr320, ptr %pa, align 8
  store i64 %conv319, ptr %199, align 8
  %200 = load i32, ptr %a0, align 4
  %add321 = add nsw i32 %200, 0
  store i32 %add321, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end322

do.end322:                                        ; preds = %do.body317
  br label %if.end323

if.end323:                                        ; preds = %do.end322, %if.else307
  br label %if.end324

if.end324:                                        ; preds = %if.end323, %do.end306
  br label %if.end325

if.end325:                                        ; preds = %if.end324, %if.end265
  br label %do.end326

do.end326:                                        ; preds = %if.end325
  br label %EOF1Da

done1d:                                           ; preds = %if.then253, %sw.default248, %sw.bb227, %if.then169, %sw.default, %sw.bb
  br label %do.body327

do.body327:                                       ; preds = %done1d
  %201 = load i32, ptr %RunLength, align 4
  %tobool328 = icmp ne i32 %201, 0
  br i1 %tobool328, label %if.then329, label %if.end336

if.then329:                                       ; preds = %do.body327
  br label %do.body330

do.body330:                                       ; preds = %if.then329
  %202 = load i32, ptr %RunLength, align 4
  %add331 = add nsw i32 %202, 0
  %conv332 = sext i32 %add331 to i64
  %203 = load ptr, ptr %pa, align 8
  %incdec.ptr333 = getelementptr inbounds i64, ptr %203, i32 1
  store ptr %incdec.ptr333, ptr %pa, align 8
  store i64 %conv332, ptr %203, align 8
  %204 = load i32, ptr %a0, align 4
  %add334 = add nsw i32 %204, 0
  store i32 %add334, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end335

do.end335:                                        ; preds = %do.body330
  br label %if.end336

if.end336:                                        ; preds = %do.end335, %do.body327
  %205 = load i32, ptr %a0, align 4
  %206 = load i32, ptr %lastx, align 4
  %cmp337 = icmp ne i32 %205, %206
  br i1 %cmp337, label %if.then339, label %if.end402

if.then339:                                       ; preds = %if.end336
  %207 = load ptr, ptr %tif.addr, align 8
  %208 = load i32, ptr %a0, align 4
  %conv340 = sext i32 %208 to i64
  %209 = load i32, ptr %lastx, align 4
  %conv341 = sext i32 %209 to i64
  call void @Fax3BadLength(ptr noundef @Fax3Decode1D.module, ptr noundef %207, i64 noundef %conv340, i64 noundef %conv341)
  br label %while.cond342

while.cond342:                                    ; preds = %while.body349, %if.then339
  %210 = load i32, ptr %a0, align 4
  %211 = load i32, ptr %lastx, align 4
  %cmp343 = icmp sgt i32 %210, %211
  br i1 %cmp343, label %land.rhs345, label %land.end348

land.rhs345:                                      ; preds = %while.cond342
  %212 = load ptr, ptr %pa, align 8
  %213 = load ptr, ptr %thisrun, align 8
  %cmp346 = icmp ugt ptr %212, %213
  br label %land.end348

land.end348:                                      ; preds = %land.rhs345, %while.cond342
  %214 = phi i1 [ false, %while.cond342 ], [ %cmp346, %land.rhs345 ]
  br i1 %214, label %while.body349, label %while.end354

while.body349:                                    ; preds = %land.end348
  %215 = load ptr, ptr %pa, align 8
  %incdec.ptr350 = getelementptr inbounds i64, ptr %215, i32 -1
  store ptr %incdec.ptr350, ptr %pa, align 8
  %216 = load i64, ptr %incdec.ptr350, align 8
  %217 = load i32, ptr %a0, align 4
  %conv351 = sext i32 %217 to i64
  %sub352 = sub i64 %conv351, %216
  %conv353 = trunc i64 %sub352 to i32
  store i32 %conv353, ptr %a0, align 4
  br label %while.cond342, !llvm.loop !27

while.end354:                                     ; preds = %land.end348
  %218 = load i32, ptr %a0, align 4
  %219 = load i32, ptr %lastx, align 4
  %cmp355 = icmp slt i32 %218, %219
  br i1 %cmp355, label %if.then357, label %if.else384

if.then357:                                       ; preds = %while.end354
  %220 = load i32, ptr %a0, align 4
  %cmp358 = icmp slt i32 %220, 0
  br i1 %cmp358, label %if.then360, label %if.end361

if.then360:                                       ; preds = %if.then357
  store i32 0, ptr %a0, align 4
  br label %if.end361

if.end361:                                        ; preds = %if.then360, %if.then357
  %221 = load ptr, ptr %pa, align 8
  %222 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast362 = ptrtoint ptr %221 to i64
  %sub.ptr.rhs.cast363 = ptrtoint ptr %222 to i64
  %sub.ptr.sub364 = sub i64 %sub.ptr.lhs.cast362, %sub.ptr.rhs.cast363
  %sub.ptr.div365 = sdiv exact i64 %sub.ptr.sub364, 8
  %and366 = and i64 %sub.ptr.div365, 1
  %tobool367 = icmp ne i64 %and366, 0
  br i1 %tobool367, label %if.then368, label %if.end375

if.then368:                                       ; preds = %if.end361
  br label %do.body369

do.body369:                                       ; preds = %if.then368
  %223 = load i32, ptr %RunLength, align 4
  %add370 = add nsw i32 %223, 0
  %conv371 = sext i32 %add370 to i64
  %224 = load ptr, ptr %pa, align 8
  %incdec.ptr372 = getelementptr inbounds i64, ptr %224, i32 1
  store ptr %incdec.ptr372, ptr %pa, align 8
  store i64 %conv371, ptr %224, align 8
  %225 = load i32, ptr %a0, align 4
  %add373 = add nsw i32 %225, 0
  store i32 %add373, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end374

do.end374:                                        ; preds = %do.body369
  br label %if.end375

if.end375:                                        ; preds = %do.end374, %if.end361
  br label %do.body376

do.body376:                                       ; preds = %if.end375
  %226 = load i32, ptr %RunLength, align 4
  %227 = load i32, ptr %lastx, align 4
  %228 = load i32, ptr %a0, align 4
  %sub377 = sub nsw i32 %227, %228
  %add378 = add nsw i32 %226, %sub377
  %conv379 = sext i32 %add378 to i64
  %229 = load ptr, ptr %pa, align 8
  %incdec.ptr380 = getelementptr inbounds i64, ptr %229, i32 1
  store ptr %incdec.ptr380, ptr %pa, align 8
  store i64 %conv379, ptr %229, align 8
  %230 = load i32, ptr %lastx, align 4
  %231 = load i32, ptr %a0, align 4
  %sub381 = sub nsw i32 %230, %231
  %232 = load i32, ptr %a0, align 4
  %add382 = add nsw i32 %232, %sub381
  store i32 %add382, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end383

do.end383:                                        ; preds = %do.body376
  br label %if.end401

if.else384:                                       ; preds = %while.end354
  %233 = load i32, ptr %a0, align 4
  %234 = load i32, ptr %lastx, align 4
  %cmp385 = icmp sgt i32 %233, %234
  br i1 %cmp385, label %if.then387, label %if.end400

if.then387:                                       ; preds = %if.else384
  br label %do.body388

do.body388:                                       ; preds = %if.then387
  %235 = load i32, ptr %RunLength, align 4
  %236 = load i32, ptr %lastx, align 4
  %add389 = add nsw i32 %235, %236
  %conv390 = sext i32 %add389 to i64
  %237 = load ptr, ptr %pa, align 8
  %incdec.ptr391 = getelementptr inbounds i64, ptr %237, i32 1
  store ptr %incdec.ptr391, ptr %pa, align 8
  store i64 %conv390, ptr %237, align 8
  %238 = load i32, ptr %lastx, align 4
  %239 = load i32, ptr %a0, align 4
  %add392 = add nsw i32 %239, %238
  store i32 %add392, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end393

do.end393:                                        ; preds = %do.body388
  br label %do.body394

do.body394:                                       ; preds = %do.end393
  %240 = load i32, ptr %RunLength, align 4
  %add395 = add nsw i32 %240, 0
  %conv396 = sext i32 %add395 to i64
  %241 = load ptr, ptr %pa, align 8
  %incdec.ptr397 = getelementptr inbounds i64, ptr %241, i32 1
  store ptr %incdec.ptr397, ptr %pa, align 8
  store i64 %conv396, ptr %241, align 8
  %242 = load i32, ptr %a0, align 4
  %add398 = add nsw i32 %242, 0
  store i32 %add398, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end399

do.end399:                                        ; preds = %do.body394
  br label %if.end400

if.end400:                                        ; preds = %do.end399, %if.else384
  br label %if.end401

if.end401:                                        ; preds = %if.end400, %do.end383
  br label %if.end402

if.end402:                                        ; preds = %if.end401, %if.end336
  br label %do.end403

do.end403:                                        ; preds = %if.end402
  br label %do.end404

do.end404:                                        ; preds = %do.end403
  %243 = load ptr, ptr %sp, align 8
  %fill = getelementptr inbounds %struct.Fax3DecodeState, ptr %243, i32 0, i32 5
  %244 = load ptr, ptr %fill, align 8
  %245 = load ptr, ptr %buf.addr, align 8
  %246 = load ptr, ptr %thisrun, align 8
  %247 = load ptr, ptr %pa, align 8
  %248 = load i32, ptr %lastx, align 4
  %conv405 = sext i32 %248 to i64
  call void %244(ptr noundef %245, ptr noundef %246, ptr noundef %247, i64 noundef %conv405)
  %249 = load ptr, ptr %sp, align 8
  %b406 = getelementptr inbounds %struct.Fax3DecodeState, ptr %249, i32 0, i32 0
  %rowbytes = getelementptr inbounds %struct.Fax3BaseState, ptr %b406, i32 0, i32 1
  %250 = load i64, ptr %rowbytes, align 8
  %251 = load ptr, ptr %buf.addr, align 8
  %add.ptr407 = getelementptr inbounds i8, ptr %251, i64 %250
  store ptr %add.ptr407, ptr %buf.addr, align 8
  %252 = load ptr, ptr %sp, align 8
  %b408 = getelementptr inbounds %struct.Fax3DecodeState, ptr %252, i32 0, i32 0
  %rowbytes409 = getelementptr inbounds %struct.Fax3BaseState, ptr %b408, i32 0, i32 1
  %253 = load i64, ptr %rowbytes409, align 8
  %254 = load i64, ptr %occ.addr, align 8
  %sub410 = sub i64 %254, %253
  store i64 %sub410, ptr %occ.addr, align 8
  %255 = load i64, ptr %occ.addr, align 8
  %cmp411 = icmp ne i64 %255, 0
  br i1 %cmp411, label %if.then413, label %if.end414

if.then413:                                       ; preds = %do.end404
  %256 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %256, i32 0, i32 11
  %257 = load i64, ptr %tif_row, align 8
  %inc = add i64 %257, 1
  store i64 %inc, ptr %tif_row, align 8
  br label %if.end414

if.end414:                                        ; preds = %if.then413, %do.end404
  br label %while.cond, !llvm.loop !28

EOF1D:                                            ; preds = %if.then55, %if.then16
  br label %do.body415

do.body415:                                       ; preds = %EOF1D
  %258 = load i32, ptr %RunLength, align 4
  %tobool416 = icmp ne i32 %258, 0
  br i1 %tobool416, label %if.then417, label %if.end424

if.then417:                                       ; preds = %do.body415
  br label %do.body418

do.body418:                                       ; preds = %if.then417
  %259 = load i32, ptr %RunLength, align 4
  %add419 = add nsw i32 %259, 0
  %conv420 = sext i32 %add419 to i64
  %260 = load ptr, ptr %pa, align 8
  %incdec.ptr421 = getelementptr inbounds i64, ptr %260, i32 1
  store ptr %incdec.ptr421, ptr %pa, align 8
  store i64 %conv420, ptr %260, align 8
  %261 = load i32, ptr %a0, align 4
  %add422 = add nsw i32 %261, 0
  store i32 %add422, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end423

do.end423:                                        ; preds = %do.body418
  br label %if.end424

if.end424:                                        ; preds = %do.end423, %do.body415
  %262 = load i32, ptr %a0, align 4
  %263 = load i32, ptr %lastx, align 4
  %cmp425 = icmp ne i32 %262, %263
  br i1 %cmp425, label %if.then427, label %if.end490

if.then427:                                       ; preds = %if.end424
  %264 = load ptr, ptr %tif.addr, align 8
  %265 = load i32, ptr %a0, align 4
  %conv428 = sext i32 %265 to i64
  %266 = load i32, ptr %lastx, align 4
  %conv429 = sext i32 %266 to i64
  call void @Fax3BadLength(ptr noundef @Fax3Decode1D.module, ptr noundef %264, i64 noundef %conv428, i64 noundef %conv429)
  br label %while.cond430

while.cond430:                                    ; preds = %while.body437, %if.then427
  %267 = load i32, ptr %a0, align 4
  %268 = load i32, ptr %lastx, align 4
  %cmp431 = icmp sgt i32 %267, %268
  br i1 %cmp431, label %land.rhs433, label %land.end436

land.rhs433:                                      ; preds = %while.cond430
  %269 = load ptr, ptr %pa, align 8
  %270 = load ptr, ptr %thisrun, align 8
  %cmp434 = icmp ugt ptr %269, %270
  br label %land.end436

land.end436:                                      ; preds = %land.rhs433, %while.cond430
  %271 = phi i1 [ false, %while.cond430 ], [ %cmp434, %land.rhs433 ]
  br i1 %271, label %while.body437, label %while.end442

while.body437:                                    ; preds = %land.end436
  %272 = load ptr, ptr %pa, align 8
  %incdec.ptr438 = getelementptr inbounds i64, ptr %272, i32 -1
  store ptr %incdec.ptr438, ptr %pa, align 8
  %273 = load i64, ptr %incdec.ptr438, align 8
  %274 = load i32, ptr %a0, align 4
  %conv439 = sext i32 %274 to i64
  %sub440 = sub i64 %conv439, %273
  %conv441 = trunc i64 %sub440 to i32
  store i32 %conv441, ptr %a0, align 4
  br label %while.cond430, !llvm.loop !29

while.end442:                                     ; preds = %land.end436
  %275 = load i32, ptr %a0, align 4
  %276 = load i32, ptr %lastx, align 4
  %cmp443 = icmp slt i32 %275, %276
  br i1 %cmp443, label %if.then445, label %if.else472

if.then445:                                       ; preds = %while.end442
  %277 = load i32, ptr %a0, align 4
  %cmp446 = icmp slt i32 %277, 0
  br i1 %cmp446, label %if.then448, label %if.end449

if.then448:                                       ; preds = %if.then445
  store i32 0, ptr %a0, align 4
  br label %if.end449

if.end449:                                        ; preds = %if.then448, %if.then445
  %278 = load ptr, ptr %pa, align 8
  %279 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast450 = ptrtoint ptr %278 to i64
  %sub.ptr.rhs.cast451 = ptrtoint ptr %279 to i64
  %sub.ptr.sub452 = sub i64 %sub.ptr.lhs.cast450, %sub.ptr.rhs.cast451
  %sub.ptr.div453 = sdiv exact i64 %sub.ptr.sub452, 8
  %and454 = and i64 %sub.ptr.div453, 1
  %tobool455 = icmp ne i64 %and454, 0
  br i1 %tobool455, label %if.then456, label %if.end463

if.then456:                                       ; preds = %if.end449
  br label %do.body457

do.body457:                                       ; preds = %if.then456
  %280 = load i32, ptr %RunLength, align 4
  %add458 = add nsw i32 %280, 0
  %conv459 = sext i32 %add458 to i64
  %281 = load ptr, ptr %pa, align 8
  %incdec.ptr460 = getelementptr inbounds i64, ptr %281, i32 1
  store ptr %incdec.ptr460, ptr %pa, align 8
  store i64 %conv459, ptr %281, align 8
  %282 = load i32, ptr %a0, align 4
  %add461 = add nsw i32 %282, 0
  store i32 %add461, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end462

do.end462:                                        ; preds = %do.body457
  br label %if.end463

if.end463:                                        ; preds = %do.end462, %if.end449
  br label %do.body464

do.body464:                                       ; preds = %if.end463
  %283 = load i32, ptr %RunLength, align 4
  %284 = load i32, ptr %lastx, align 4
  %285 = load i32, ptr %a0, align 4
  %sub465 = sub nsw i32 %284, %285
  %add466 = add nsw i32 %283, %sub465
  %conv467 = sext i32 %add466 to i64
  %286 = load ptr, ptr %pa, align 8
  %incdec.ptr468 = getelementptr inbounds i64, ptr %286, i32 1
  store ptr %incdec.ptr468, ptr %pa, align 8
  store i64 %conv467, ptr %286, align 8
  %287 = load i32, ptr %lastx, align 4
  %288 = load i32, ptr %a0, align 4
  %sub469 = sub nsw i32 %287, %288
  %289 = load i32, ptr %a0, align 4
  %add470 = add nsw i32 %289, %sub469
  store i32 %add470, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end471

do.end471:                                        ; preds = %do.body464
  br label %if.end489

if.else472:                                       ; preds = %while.end442
  %290 = load i32, ptr %a0, align 4
  %291 = load i32, ptr %lastx, align 4
  %cmp473 = icmp sgt i32 %290, %291
  br i1 %cmp473, label %if.then475, label %if.end488

if.then475:                                       ; preds = %if.else472
  br label %do.body476

do.body476:                                       ; preds = %if.then475
  %292 = load i32, ptr %RunLength, align 4
  %293 = load i32, ptr %lastx, align 4
  %add477 = add nsw i32 %292, %293
  %conv478 = sext i32 %add477 to i64
  %294 = load ptr, ptr %pa, align 8
  %incdec.ptr479 = getelementptr inbounds i64, ptr %294, i32 1
  store ptr %incdec.ptr479, ptr %pa, align 8
  store i64 %conv478, ptr %294, align 8
  %295 = load i32, ptr %lastx, align 4
  %296 = load i32, ptr %a0, align 4
  %add480 = add nsw i32 %296, %295
  store i32 %add480, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end481

do.end481:                                        ; preds = %do.body476
  br label %do.body482

do.body482:                                       ; preds = %do.end481
  %297 = load i32, ptr %RunLength, align 4
  %add483 = add nsw i32 %297, 0
  %conv484 = sext i32 %add483 to i64
  %298 = load ptr, ptr %pa, align 8
  %incdec.ptr485 = getelementptr inbounds i64, ptr %298, i32 1
  store ptr %incdec.ptr485, ptr %pa, align 8
  store i64 %conv484, ptr %298, align 8
  %299 = load i32, ptr %a0, align 4
  %add486 = add nsw i32 %299, 0
  store i32 %add486, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end487

do.end487:                                        ; preds = %do.body482
  br label %if.end488

if.end488:                                        ; preds = %do.end487, %if.else472
  br label %if.end489

if.end489:                                        ; preds = %if.end488, %do.end471
  br label %if.end490

if.end490:                                        ; preds = %if.end489, %if.end424
  br label %do.end491

do.end491:                                        ; preds = %if.end490
  br label %EOF1Da

EOF1Da:                                           ; preds = %do.end491, %do.end326
  %300 = load ptr, ptr %sp, align 8
  %fill492 = getelementptr inbounds %struct.Fax3DecodeState, ptr %300, i32 0, i32 5
  %301 = load ptr, ptr %fill492, align 8
  %302 = load ptr, ptr %buf.addr, align 8
  %303 = load ptr, ptr %thisrun, align 8
  %304 = load ptr, ptr %pa, align 8
  %305 = load i32, ptr %lastx, align 4
  %conv493 = sext i32 %305 to i64
  call void %301(ptr noundef %302, ptr noundef %303, ptr noundef %304, i64 noundef %conv493)
  br label %do.body494

do.body494:                                       ; preds = %EOF1Da
  %306 = load i32, ptr %BitsAvail, align 4
  %307 = load ptr, ptr %sp, align 8
  %bit495 = getelementptr inbounds %struct.Fax3DecodeState, ptr %307, i32 0, i32 3
  store i32 %306, ptr %bit495, align 8
  %308 = load i64, ptr %BitAcc, align 8
  %309 = load ptr, ptr %sp, align 8
  %data496 = getelementptr inbounds %struct.Fax3DecodeState, ptr %309, i32 0, i32 2
  store i64 %308, ptr %data496, align 8
  %310 = load i32, ptr %EOLcnt, align 4
  %311 = load ptr, ptr %sp, align 8
  %EOLcnt497 = getelementptr inbounds %struct.Fax3DecodeState, ptr %311, i32 0, i32 4
  store i32 %310, ptr %EOLcnt497, align 4
  %312 = load ptr, ptr %cp, align 8
  %313 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp498 = getelementptr inbounds %struct.tiff, ptr %313, i32 0, i32 42
  %314 = load ptr, ptr %tif_rawcp498, align 8
  %sub.ptr.lhs.cast499 = ptrtoint ptr %312 to i64
  %sub.ptr.rhs.cast500 = ptrtoint ptr %314 to i64
  %sub.ptr.sub501 = sub i64 %sub.ptr.lhs.cast499, %sub.ptr.rhs.cast500
  %315 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc502 = getelementptr inbounds %struct.tiff, ptr %315, i32 0, i32 43
  %316 = load i64, ptr %tif_rawcc502, align 8
  %sub503 = sub nsw i64 %316, %sub.ptr.sub501
  store i64 %sub503, ptr %tif_rawcc502, align 8
  %317 = load ptr, ptr %cp, align 8
  %318 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp504 = getelementptr inbounds %struct.tiff, ptr %318, i32 0, i32 42
  store ptr %317, ptr %tif_rawcp504, align 8
  br label %do.end505

do.end505:                                        ; preds = %do.body494
  store i32 -1, ptr %retval, align 4
  br label %return

while.end506:                                     ; preds = %while.cond
  br label %do.body507

do.body507:                                       ; preds = %while.end506
  %319 = load i32, ptr %BitsAvail, align 4
  %320 = load ptr, ptr %sp, align 8
  %bit508 = getelementptr inbounds %struct.Fax3DecodeState, ptr %320, i32 0, i32 3
  store i32 %319, ptr %bit508, align 8
  %321 = load i64, ptr %BitAcc, align 8
  %322 = load ptr, ptr %sp, align 8
  %data509 = getelementptr inbounds %struct.Fax3DecodeState, ptr %322, i32 0, i32 2
  store i64 %321, ptr %data509, align 8
  %323 = load i32, ptr %EOLcnt, align 4
  %324 = load ptr, ptr %sp, align 8
  %EOLcnt510 = getelementptr inbounds %struct.Fax3DecodeState, ptr %324, i32 0, i32 4
  store i32 %323, ptr %EOLcnt510, align 4
  %325 = load ptr, ptr %cp, align 8
  %326 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp511 = getelementptr inbounds %struct.tiff, ptr %326, i32 0, i32 42
  %327 = load ptr, ptr %tif_rawcp511, align 8
  %sub.ptr.lhs.cast512 = ptrtoint ptr %325 to i64
  %sub.ptr.rhs.cast513 = ptrtoint ptr %327 to i64
  %sub.ptr.sub514 = sub i64 %sub.ptr.lhs.cast512, %sub.ptr.rhs.cast513
  %328 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc515 = getelementptr inbounds %struct.tiff, ptr %328, i32 0, i32 43
  %329 = load i64, ptr %tif_rawcc515, align 8
  %sub516 = sub nsw i64 %329, %sub.ptr.sub514
  store i64 %sub516, ptr %tif_rawcc515, align 8
  %330 = load ptr, ptr %cp, align 8
  %331 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp517 = getelementptr inbounds %struct.tiff, ptr %331, i32 0, i32 42
  store ptr %330, ptr %tif_rawcp517, align 8
  br label %do.end518

do.end518:                                        ; preds = %do.body507
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end518, %do.end505
  %332 = load i32, ptr %retval, align 4
  ret i32 %332
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax3PreEncode(ptr noundef %tif, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %s.addr = alloca i16, align 2
  %sp = alloca ptr, align 8
  %res = alloca float, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load i16, ptr %s.addr, align 2
  %3 = load ptr, ptr %sp, align 8
  %cmp = icmp ne ptr %3, null
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.Fax3PreEncode, ptr noundef @.str, i32 noundef 699, ptr noundef @.str.40) #3
  unreachable

4:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %4
  %5 = load ptr, ptr %sp, align 8
  %bit = getelementptr inbounds %struct.Fax3EncodeState, ptr %5, i32 0, i32 2
  store i32 8, ptr %bit, align 4
  %6 = load ptr, ptr %sp, align 8
  %data = getelementptr inbounds %struct.Fax3EncodeState, ptr %6, i32 0, i32 1
  store i32 0, ptr %data, align 8
  %7 = load ptr, ptr %sp, align 8
  %tag = getelementptr inbounds %struct.Fax3EncodeState, ptr %7, i32 0, i32 3
  store i32 0, ptr %tag, align 8
  %8 = load ptr, ptr %sp, align 8
  %refline = getelementptr inbounds %struct.Fax3EncodeState, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %refline, align 8
  %tobool1 = icmp ne ptr %9, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %10 = load ptr, ptr %sp, align 8
  %refline2 = getelementptr inbounds %struct.Fax3EncodeState, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %refline2, align 8
  %12 = load ptr, ptr %sp, align 8
  %b = getelementptr inbounds %struct.Fax3EncodeState, ptr %12, i32 0, i32 0
  %rowbytes = getelementptr inbounds %struct.Fax3BaseState, ptr %b, i32 0, i32 1
  %13 = load i64, ptr %rowbytes, align 8
  call void @_TIFFmemset(ptr noundef %11, i32 noundef 0, i64 noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %14 = load ptr, ptr %sp, align 8
  %b3 = getelementptr inbounds %struct.Fax3EncodeState, ptr %14, i32 0, i32 0
  %groupoptions = getelementptr inbounds %struct.Fax3BaseState, ptr %b3, i32 0, i32 6
  %15 = load i64, ptr %groupoptions, align 8
  %and = and i64 %15, 1
  %tobool4 = icmp ne i64 %and, 0
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 6
  %td_yresolution = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir, i32 0, i32 22
  %17 = load float, ptr %td_yresolution, align 4
  store float %17, ptr %res, align 4
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_dir6 = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 6
  %td_resolutionunit = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir6, i32 0, i32 23
  %19 = load i16, ptr %td_resolutionunit, align 8
  %conv7 = zext i16 %19 to i32
  %cmp8 = icmp eq i32 %conv7, 3
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then5
  %20 = load float, ptr %res, align 4
  %mul = fmul float %20, 0x400451EB80000000
  store float %mul, ptr %res, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then5
  %21 = load float, ptr %res, align 4
  %cmp12 = fcmp ogt float %21, 1.500000e+02
  %22 = zext i1 %cmp12 to i64
  %cond = select i1 %cmp12, i32 4, i32 2
  %23 = load ptr, ptr %sp, align 8
  %maxk = getelementptr inbounds %struct.Fax3EncodeState, ptr %23, i32 0, i32 6
  store i32 %cond, ptr %maxk, align 4
  %24 = load ptr, ptr %sp, align 8
  %maxk14 = getelementptr inbounds %struct.Fax3EncodeState, ptr %24, i32 0, i32 6
  %25 = load i32, ptr %maxk14, align 4
  %sub = sub nsw i32 %25, 1
  %26 = load ptr, ptr %sp, align 8
  %k = getelementptr inbounds %struct.Fax3EncodeState, ptr %26, i32 0, i32 5
  store i32 %sub, ptr %k, align 8
  br label %if.end17

if.else:                                          ; preds = %if.end
  %27 = load ptr, ptr %sp, align 8
  %maxk15 = getelementptr inbounds %struct.Fax3EncodeState, ptr %27, i32 0, i32 6
  store i32 0, ptr %maxk15, align 4
  %28 = load ptr, ptr %sp, align 8
  %k16 = getelementptr inbounds %struct.Fax3EncodeState, ptr %28, i32 0, i32 5
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
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load ptr, ptr %sp, align 8
  %bit = getelementptr inbounds %struct.Fax3EncodeState, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %bit, align 4
  %cmp = icmp ne i32 %3, 8
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 43
  %5 = load i64, ptr %tif_rawcc, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 41
  %7 = load i64, ptr %tif_rawdatasize, align 8
  %cmp1 = icmp sge i64 %5, %7
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %8 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %9 = load ptr, ptr %sp, align 8
  %data = getelementptr inbounds %struct.Fax3EncodeState, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %data, align 8
  %conv = trunc i32 %10 to i8
  %11 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %11, i32 0, i32 42
  %12 = load ptr, ptr %tif_rawcp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %tif_rawcp, align 8
  store i8 %conv, ptr %12, align 1
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc3 = getelementptr inbounds %struct.tiff, ptr %13, i32 0, i32 43
  %14 = load i64, ptr %tif_rawcc3, align 8
  %inc = add nsw i64 %14, 1
  store i64 %inc, ptr %tif_rawcc3, align 8
  %15 = load ptr, ptr %sp, align 8
  %data4 = getelementptr inbounds %struct.Fax3EncodeState, ptr %15, i32 0, i32 1
  store i32 0, ptr %data4, align 8
  %16 = load ptr, ptr %sp, align 8
  %bit5 = getelementptr inbounds %struct.Fax3EncodeState, ptr %16, i32 0, i32 2
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
  %s.addr = alloca i16, align 2
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load i16, ptr %s.addr, align 2
  br label %while.cond

while.cond:                                       ; preds = %if.end43, %entry
  %3 = load i64, ptr %cc.addr, align 8
  %cmp = icmp sgt i64 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %sp, align 8
  %b = getelementptr inbounds %struct.Fax3EncodeState, ptr %4, i32 0, i32 0
  %mode = getelementptr inbounds %struct.Fax3BaseState, ptr %b, i32 0, i32 0
  %5 = load i32, ptr %mode, align 8
  %and = and i32 %5, 2
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load ptr, ptr %tif.addr, align 8
  call void @Fax3PutEOL(ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %7 = load ptr, ptr %sp, align 8
  %b2 = getelementptr inbounds %struct.Fax3EncodeState, ptr %7, i32 0, i32 0
  %groupoptions = getelementptr inbounds %struct.Fax3BaseState, ptr %b2, i32 0, i32 6
  %8 = load i64, ptr %groupoptions, align 8
  %and3 = and i64 %8, 1
  %tobool = icmp ne i64 %and3, 0
  br i1 %tobool, label %if.then4, label %if.else28

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %sp, align 8
  %tag = getelementptr inbounds %struct.Fax3EncodeState, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %tag, align 8
  %cmp5 = icmp eq i32 %10, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then4
  %11 = load ptr, ptr %tif.addr, align 8
  %12 = load ptr, ptr %bp.addr, align 8
  %13 = load ptr, ptr %sp, align 8
  %b7 = getelementptr inbounds %struct.Fax3EncodeState, ptr %13, i32 0, i32 0
  %rowpixels = getelementptr inbounds %struct.Fax3BaseState, ptr %b7, i32 0, i32 2
  %14 = load i64, ptr %rowpixels, align 8
  %call = call i32 @Fax3Encode1DRow(ptr noundef %11, ptr noundef %12, i64 noundef %14)
  %tobool8 = icmp ne i32 %call, 0
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.then6
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.then6
  %15 = load ptr, ptr %sp, align 8
  %tag11 = getelementptr inbounds %struct.Fax3EncodeState, ptr %15, i32 0, i32 3
  store i32 1, ptr %tag11, align 8
  br label %if.end18

if.else:                                          ; preds = %if.then4
  %16 = load ptr, ptr %tif.addr, align 8
  %17 = load ptr, ptr %bp.addr, align 8
  %18 = load ptr, ptr %sp, align 8
  %refline = getelementptr inbounds %struct.Fax3EncodeState, ptr %18, i32 0, i32 4
  %19 = load ptr, ptr %refline, align 8
  %20 = load ptr, ptr %sp, align 8
  %b12 = getelementptr inbounds %struct.Fax3EncodeState, ptr %20, i32 0, i32 0
  %rowpixels13 = getelementptr inbounds %struct.Fax3BaseState, ptr %b12, i32 0, i32 2
  %21 = load i64, ptr %rowpixels13, align 8
  %call14 = call i32 @Fax3Encode2DRow(ptr noundef %16, ptr noundef %17, ptr noundef %19, i64 noundef %21)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.else
  %22 = load ptr, ptr %sp, align 8
  %k = getelementptr inbounds %struct.Fax3EncodeState, ptr %22, i32 0, i32 5
  %23 = load i32, ptr %k, align 8
  %dec = add nsw i32 %23, -1
  store i32 %dec, ptr %k, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end10
  %24 = load ptr, ptr %sp, align 8
  %k19 = getelementptr inbounds %struct.Fax3EncodeState, ptr %24, i32 0, i32 5
  %25 = load i32, ptr %k19, align 8
  %cmp20 = icmp eq i32 %25, 0
  br i1 %cmp20, label %if.then21, label %if.else24

if.then21:                                        ; preds = %if.end18
  %26 = load ptr, ptr %sp, align 8
  %tag22 = getelementptr inbounds %struct.Fax3EncodeState, ptr %26, i32 0, i32 3
  store i32 0, ptr %tag22, align 8
  %27 = load ptr, ptr %sp, align 8
  %maxk = getelementptr inbounds %struct.Fax3EncodeState, ptr %27, i32 0, i32 6
  %28 = load i32, ptr %maxk, align 4
  %sub = sub nsw i32 %28, 1
  %29 = load ptr, ptr %sp, align 8
  %k23 = getelementptr inbounds %struct.Fax3EncodeState, ptr %29, i32 0, i32 5
  store i32 %sub, ptr %k23, align 8
  br label %if.end27

if.else24:                                        ; preds = %if.end18
  %30 = load ptr, ptr %sp, align 8
  %refline25 = getelementptr inbounds %struct.Fax3EncodeState, ptr %30, i32 0, i32 4
  %31 = load ptr, ptr %refline25, align 8
  %32 = load ptr, ptr %bp.addr, align 8
  %33 = load ptr, ptr %sp, align 8
  %b26 = getelementptr inbounds %struct.Fax3EncodeState, ptr %33, i32 0, i32 0
  %rowbytes = getelementptr inbounds %struct.Fax3BaseState, ptr %b26, i32 0, i32 1
  %34 = load i64, ptr %rowbytes, align 8
  call void @_TIFFmemcpy(ptr noundef %31, ptr noundef %32, i64 noundef %34)
  br label %if.end27

if.end27:                                         ; preds = %if.else24, %if.then21
  br label %if.end35

if.else28:                                        ; preds = %if.end
  %35 = load ptr, ptr %tif.addr, align 8
  %36 = load ptr, ptr %bp.addr, align 8
  %37 = load ptr, ptr %sp, align 8
  %b29 = getelementptr inbounds %struct.Fax3EncodeState, ptr %37, i32 0, i32 0
  %rowpixels30 = getelementptr inbounds %struct.Fax3BaseState, ptr %b29, i32 0, i32 2
  %38 = load i64, ptr %rowpixels30, align 8
  %call31 = call i32 @Fax3Encode1DRow(ptr noundef %35, ptr noundef %36, i64 noundef %38)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.else28
  store i32 0, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.else28
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end27
  %39 = load ptr, ptr %sp, align 8
  %b36 = getelementptr inbounds %struct.Fax3EncodeState, ptr %39, i32 0, i32 0
  %rowbytes37 = getelementptr inbounds %struct.Fax3BaseState, ptr %b36, i32 0, i32 1
  %40 = load i64, ptr %rowbytes37, align 8
  %41 = load ptr, ptr %bp.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %41, i64 %40
  store ptr %add.ptr, ptr %bp.addr, align 8
  %42 = load ptr, ptr %sp, align 8
  %b38 = getelementptr inbounds %struct.Fax3EncodeState, ptr %42, i32 0, i32 0
  %rowbytes39 = getelementptr inbounds %struct.Fax3BaseState, ptr %b38, i32 0, i32 1
  %43 = load i64, ptr %rowbytes39, align 8
  %44 = load i64, ptr %cc.addr, align 8
  %sub40 = sub i64 %44, %43
  store i64 %sub40, ptr %cc.addr, align 8
  %45 = load i64, ptr %cc.addr, align 8
  %cmp41 = icmp ne i64 %45, 0
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end35
  %46 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %46, i32 0, i32 11
  %47 = load i64, ptr %tif_row, align 8
  %inc = add i64 %47, 1
  store i64 %inc, ptr %tif_row, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end35
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then33, %if.then16, %if.then9
  %48 = load i32, ptr %retval, align 4
  ret i32 %48
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
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  %mode = getelementptr inbounds %struct.Fax3BaseState, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %mode, align 8
  %and = and i32 %2, 1
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_data1 = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 37
  %4 = load ptr, ptr %tif_data1, align 8
  store ptr %4, ptr %sp, align 8
  store i32 1, ptr %code, align 4
  store i32 12, ptr %length, align 4
  %5 = load ptr, ptr %sp, align 8
  %b = getelementptr inbounds %struct.Fax3EncodeState, ptr %5, i32 0, i32 0
  %groupoptions = getelementptr inbounds %struct.Fax3BaseState, ptr %b, i32 0, i32 6
  %6 = load i64, ptr %groupoptions, align 8
  %and2 = and i64 %6, 1
  %tobool = icmp ne i64 %and2, 0
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %7 = load i32, ptr %code, align 4
  %shl = shl i32 %7, 1
  %8 = load ptr, ptr %sp, align 8
  %tag = getelementptr inbounds %struct.Fax3EncodeState, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %tag, align 8
  %cmp4 = icmp eq i32 %9, 0
  %conv = zext i1 %cmp4 to i32
  %or = or i32 %shl, %conv
  store i32 %or, ptr %code, align 4
  %10 = load i32, ptr %length, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %length, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, ptr %i, align 4
  %cmp5 = icmp slt i32 %11, 6
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %tif.addr, align 8
  %13 = load i32, ptr %code, align 4
  %14 = load i32, ptr %length, align 4
  call void @Fax3PutBits(ptr noundef %12, i32 noundef %13, i32 noundef %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4
  %inc7 = add nsw i32 %15, 1
  store i32 %inc7, ptr %i, align 4
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 43
  %17 = load i64, ptr %tif_rawcc, align 8
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 41
  %19 = load i64, ptr %tif_rawdatasize, align 8
  %cmp8 = icmp sge i64 %17, %19
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.end
  %20 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %20)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %for.end
  %21 = load ptr, ptr %sp, align 8
  %data = getelementptr inbounds %struct.Fax3EncodeState, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %data, align 8
  %conv12 = trunc i32 %22 to i8
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %23, i32 0, i32 42
  %24 = load ptr, ptr %tif_rawcp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %tif_rawcp, align 8
  store i8 %conv12, ptr %24, align 1
  %25 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc13 = getelementptr inbounds %struct.tiff, ptr %25, i32 0, i32 43
  %26 = load i64, ptr %tif_rawcc13, align 8
  %inc14 = add nsw i64 %26, 1
  store i64 %inc14, ptr %tif_rawcc13, align 8
  %27 = load ptr, ptr %sp, align 8
  %data15 = getelementptr inbounds %struct.Fax3EncodeState, ptr %27, i32 0, i32 1
  store i32 0, ptr %data15, align 8
  %28 = load ptr, ptr %sp, align 8
  %bit = getelementptr inbounds %struct.Fax3EncodeState, ptr %28, i32 0, i32 2
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
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end21

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %tif_mode, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_data2 = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 37
  %5 = load ptr, ptr %tif_data2, align 8
  store ptr %5, ptr %sp, align 8
  %6 = load ptr, ptr %sp, align 8
  %runs = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i32 0, i32 6
  %7 = load ptr, ptr %runs, align 8
  %tobool3 = icmp ne ptr %7, null
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then1
  %8 = load ptr, ptr %sp, align 8
  %runs5 = getelementptr inbounds %struct.Fax3DecodeState, ptr %8, i32 0, i32 6
  %9 = load ptr, ptr %runs5, align 8
  call void @_TIFFfree(ptr noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then1
  br label %if.end12

if.else:                                          ; preds = %if.then
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_data7 = getelementptr inbounds %struct.tiff, ptr %10, i32 0, i32 37
  %11 = load ptr, ptr %tif_data7, align 8
  store ptr %11, ptr %sp6, align 8
  %12 = load ptr, ptr %sp6, align 8
  %refline = getelementptr inbounds %struct.Fax3EncodeState, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %refline, align 8
  %tobool8 = icmp ne ptr %13, null
  br i1 %tobool8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.else
  %14 = load ptr, ptr %sp6, align 8
  %refline10 = getelementptr inbounds %struct.Fax3EncodeState, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %refline10, align 8
  call void @_TIFFfree(ptr noundef %15)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_data13 = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 37
  %17 = load ptr, ptr %tif_data13, align 8
  %subaddress = getelementptr inbounds %struct.Fax3BaseState, ptr %17, i32 0, i32 8
  %18 = load ptr, ptr %subaddress, align 8
  %tobool14 = icmp ne ptr %18, null
  br i1 %tobool14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end12
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_data16 = getelementptr inbounds %struct.tiff, ptr %19, i32 0, i32 37
  %20 = load ptr, ptr %tif_data16, align 8
  %subaddress17 = getelementptr inbounds %struct.Fax3BaseState, ptr %20, i32 0, i32 8
  %21 = load ptr, ptr %subaddress17, align 8
  call void @_TIFFfree(ptr noundef %21)
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end12
  %22 = load ptr, ptr %tif.addr, align 8
  %tif_data19 = getelementptr inbounds %struct.tiff, ptr %22, i32 0, i32 37
  %23 = load ptr, ptr %tif_data19, align 8
  call void @_TIFFfree(ptr noundef %23)
  %24 = load ptr, ptr %tif.addr, align 8
  %tif_data20 = getelementptr inbounds %struct.tiff, ptr %24, i32 0, i32 37
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
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %occ.addr = alloca i64, align 8
  %s.addr = alloca i16, align 2
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
  %x = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %occ, ptr %occ.addr, align 8
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load ptr, ptr %sp, align 8
  %b = getelementptr inbounds %struct.Fax3DecodeState, ptr %2, i32 0, i32 0
  %rowpixels = getelementptr inbounds %struct.Fax3BaseState, ptr %b, i32 0, i32 2
  %3 = load i64, ptr %rowpixels, align 8
  %conv = trunc i64 %3 to i32
  store i32 %conv, ptr %lastx, align 4
  %4 = load ptr, ptr %sp, align 8
  %bitmap1 = getelementptr inbounds %struct.Fax3DecodeState, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %bitmap1, align 8
  store ptr %5, ptr %bitmap, align 8
  %6 = load i16, ptr %s.addr, align 2
  br label %do.body

do.body:                                          ; preds = %entry
  %7 = load ptr, ptr %sp, align 8
  %data = getelementptr inbounds %struct.Fax3DecodeState, ptr %7, i32 0, i32 2
  %8 = load i64, ptr %data, align 8
  store i64 %8, ptr %BitAcc, align 8
  %9 = load ptr, ptr %sp, align 8
  %bit = getelementptr inbounds %struct.Fax3DecodeState, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %bit, align 8
  store i32 %10, ptr %BitsAvail, align 4
  %11 = load ptr, ptr %sp, align 8
  %EOLcnt2 = getelementptr inbounds %struct.Fax3DecodeState, ptr %11, i32 0, i32 4
  %12 = load i32, ptr %EOLcnt2, align 4
  store i32 %12, ptr %EOLcnt, align 4
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %13, i32 0, i32 42
  %14 = load ptr, ptr %tif_rawcp, align 8
  store ptr %14, ptr %cp, align 8
  %15 = load ptr, ptr %cp, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 43
  %17 = load i64, ptr %tif_rawcc, align 8
  %add.ptr = getelementptr inbounds i8, ptr %15, i64 %17
  store ptr %add.ptr, ptr %ep, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %while.cond

while.cond:                                       ; preds = %if.end1244, %do.end
  %18 = load i64, ptr %occ.addr, align 8
  %cmp = icmp sgt i64 %18, 0
  br i1 %cmp, label %while.body, label %while.end1336

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %19 = load ptr, ptr %sp, align 8
  %curruns = getelementptr inbounds %struct.Fax3DecodeState, ptr %19, i32 0, i32 8
  %20 = load ptr, ptr %curruns, align 8
  store ptr %20, ptr %thisrun, align 8
  store ptr %20, ptr %pa, align 8
  br label %do.body4

do.body4:                                         ; preds = %while.body
  %21 = load i32, ptr %EOLcnt, align 4
  %cmp5 = icmp eq i32 %21, 0
  br i1 %cmp5, label %if.then, label %if.end44

if.then:                                          ; preds = %do.body4
  br label %for.cond

for.cond:                                         ; preds = %do.end43, %if.then
  br label %do.body7

do.body7:                                         ; preds = %for.cond
  %22 = load i32, ptr %BitsAvail, align 4
  %cmp8 = icmp slt i32 %22, 11
  br i1 %cmp8, label %if.then10, label %if.end36

if.then10:                                        ; preds = %do.body7
  %23 = load ptr, ptr %cp, align 8
  %24 = load ptr, ptr %ep, align 8
  %cmp11 = icmp uge ptr %23, %24
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then10
  %25 = load i32, ptr %BitsAvail, align 4
  %cmp14 = icmp eq i32 %25, 0
  br i1 %cmp14, label %if.then16, label %if.end

if.then16:                                        ; preds = %if.then13
  br label %EOF2D

if.end:                                           ; preds = %if.then13
  store i32 11, ptr %BitsAvail, align 4
  br label %if.end35

if.else:                                          ; preds = %if.then10
  %26 = load ptr, ptr %bitmap, align 8
  %27 = load ptr, ptr %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr, ptr %cp, align 8
  %28 = load i8, ptr %27, align 1
  %idxprom = zext i8 %28 to i64
  %arrayidx = getelementptr inbounds i8, ptr %26, i64 %idxprom
  %29 = load i8, ptr %arrayidx, align 1
  %conv17 = zext i8 %29 to i64
  %30 = load i32, ptr %BitsAvail, align 4
  %sh_prom = zext i32 %30 to i64
  %shl = shl i64 %conv17, %sh_prom
  %31 = load i64, ptr %BitAcc, align 8
  %or = or i64 %31, %shl
  store i64 %or, ptr %BitAcc, align 8
  %32 = load i32, ptr %BitsAvail, align 4
  %add = add nsw i32 %32, 8
  store i32 %add, ptr %BitsAvail, align 4
  %cmp18 = icmp slt i32 %add, 11
  br i1 %cmp18, label %if.then20, label %if.end34

if.then20:                                        ; preds = %if.else
  %33 = load ptr, ptr %cp, align 8
  %34 = load ptr, ptr %ep, align 8
  %cmp21 = icmp uge ptr %33, %34
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.then20
  store i32 11, ptr %BitsAvail, align 4
  br label %if.end33

if.else24:                                        ; preds = %if.then20
  %35 = load ptr, ptr %bitmap, align 8
  %36 = load ptr, ptr %cp, align 8
  %incdec.ptr25 = getelementptr inbounds i8, ptr %36, i32 1
  store ptr %incdec.ptr25, ptr %cp, align 8
  %37 = load i8, ptr %36, align 1
  %idxprom26 = zext i8 %37 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %35, i64 %idxprom26
  %38 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %38 to i64
  %39 = load i32, ptr %BitsAvail, align 4
  %sh_prom29 = zext i32 %39 to i64
  %shl30 = shl i64 %conv28, %sh_prom29
  %40 = load i64, ptr %BitAcc, align 8
  %or31 = or i64 %40, %shl30
  store i64 %or31, ptr %BitAcc, align 8
  %41 = load i32, ptr %BitsAvail, align 4
  %add32 = add nsw i32 %41, 8
  store i32 %add32, ptr %BitsAvail, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else24, %if.then23
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.else
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %do.body7
  br label %do.end37

do.end37:                                         ; preds = %if.end36
  %42 = load i64, ptr %BitAcc, align 8
  %and = and i64 %42, 2047
  %cmp38 = icmp eq i64 %and, 0
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %do.end37
  br label %for.end

if.end41:                                         ; preds = %do.end37
  br label %do.body42

do.body42:                                        ; preds = %if.end41
  %43 = load i32, ptr %BitsAvail, align 4
  %sub = sub nsw i32 %43, 1
  store i32 %sub, ptr %BitsAvail, align 4
  %44 = load i64, ptr %BitAcc, align 8
  %shr = lshr i64 %44, 1
  store i64 %shr, ptr %BitAcc, align 8
  br label %do.end43

do.end43:                                         ; preds = %do.body42
  br label %for.cond

for.end:                                          ; preds = %if.then40
  br label %if.end44

if.end44:                                         ; preds = %for.end, %do.body4
  br label %for.cond45

for.cond45:                                       ; preds = %do.end75, %if.end44
  br label %do.body46

do.body46:                                        ; preds = %for.cond45
  %45 = load i32, ptr %BitsAvail, align 4
  %cmp47 = icmp slt i32 %45, 8
  br i1 %cmp47, label %if.then49, label %if.end67

if.then49:                                        ; preds = %do.body46
  %46 = load ptr, ptr %cp, align 8
  %47 = load ptr, ptr %ep, align 8
  %cmp50 = icmp uge ptr %46, %47
  br i1 %cmp50, label %if.then52, label %if.else57

if.then52:                                        ; preds = %if.then49
  %48 = load i32, ptr %BitsAvail, align 4
  %cmp53 = icmp eq i32 %48, 0
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.then52
  br label %EOF2D

if.end56:                                         ; preds = %if.then52
  store i32 8, ptr %BitsAvail, align 4
  br label %if.end66

if.else57:                                        ; preds = %if.then49
  %49 = load ptr, ptr %bitmap, align 8
  %50 = load ptr, ptr %cp, align 8
  %incdec.ptr58 = getelementptr inbounds i8, ptr %50, i32 1
  store ptr %incdec.ptr58, ptr %cp, align 8
  %51 = load i8, ptr %50, align 1
  %idxprom59 = zext i8 %51 to i64
  %arrayidx60 = getelementptr inbounds i8, ptr %49, i64 %idxprom59
  %52 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %52 to i64
  %53 = load i32, ptr %BitsAvail, align 4
  %sh_prom62 = zext i32 %53 to i64
  %shl63 = shl i64 %conv61, %sh_prom62
  %54 = load i64, ptr %BitAcc, align 8
  %or64 = or i64 %54, %shl63
  store i64 %or64, ptr %BitAcc, align 8
  %55 = load i32, ptr %BitsAvail, align 4
  %add65 = add nsw i32 %55, 8
  store i32 %add65, ptr %BitsAvail, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.else57, %if.end56
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %do.body46
  br label %do.end68

do.end68:                                         ; preds = %if.end67
  %56 = load i64, ptr %BitAcc, align 8
  %and69 = and i64 %56, 255
  %tobool = icmp ne i64 %and69, 0
  br i1 %tobool, label %if.then70, label %if.end71

if.then70:                                        ; preds = %do.end68
  br label %for.end76

if.end71:                                         ; preds = %do.end68
  br label %do.body72

do.body72:                                        ; preds = %if.end71
  %57 = load i32, ptr %BitsAvail, align 4
  %sub73 = sub nsw i32 %57, 8
  store i32 %sub73, ptr %BitsAvail, align 4
  %58 = load i64, ptr %BitAcc, align 8
  %shr74 = lshr i64 %58, 8
  store i64 %shr74, ptr %BitAcc, align 8
  br label %do.end75

do.end75:                                         ; preds = %do.body72
  br label %for.cond45

for.end76:                                        ; preds = %if.then70
  br label %while.cond77

while.cond77:                                     ; preds = %do.end85, %for.end76
  %59 = load i64, ptr %BitAcc, align 8
  %and78 = and i64 %59, 1
  %cmp79 = icmp eq i64 %and78, 0
  br i1 %cmp79, label %while.body81, label %while.end

while.body81:                                     ; preds = %while.cond77
  br label %do.body82

do.body82:                                        ; preds = %while.body81
  %60 = load i32, ptr %BitsAvail, align 4
  %sub83 = sub nsw i32 %60, 1
  store i32 %sub83, ptr %BitsAvail, align 4
  %61 = load i64, ptr %BitAcc, align 8
  %shr84 = lshr i64 %61, 1
  store i64 %shr84, ptr %BitAcc, align 8
  br label %do.end85

do.end85:                                         ; preds = %do.body82
  br label %while.cond77, !llvm.loop !32

while.end:                                        ; preds = %while.cond77
  br label %do.body86

do.body86:                                        ; preds = %while.end
  %62 = load i32, ptr %BitsAvail, align 4
  %sub87 = sub nsw i32 %62, 1
  store i32 %sub87, ptr %BitsAvail, align 4
  %63 = load i64, ptr %BitAcc, align 8
  %shr88 = lshr i64 %63, 1
  store i64 %shr88, ptr %BitAcc, align 8
  br label %do.end89

do.end89:                                         ; preds = %do.body86
  store i32 0, ptr %EOLcnt, align 4
  br label %do.end90

do.end90:                                         ; preds = %do.end89
  br label %do.body91

do.body91:                                        ; preds = %do.end90
  %64 = load i32, ptr %BitsAvail, align 4
  %cmp92 = icmp slt i32 %64, 1
  br i1 %cmp92, label %if.then94, label %if.end112

if.then94:                                        ; preds = %do.body91
  %65 = load ptr, ptr %cp, align 8
  %66 = load ptr, ptr %ep, align 8
  %cmp95 = icmp uge ptr %65, %66
  br i1 %cmp95, label %if.then97, label %if.else102

if.then97:                                        ; preds = %if.then94
  %67 = load i32, ptr %BitsAvail, align 4
  %cmp98 = icmp eq i32 %67, 0
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %if.then97
  br label %EOF2D

if.end101:                                        ; preds = %if.then97
  store i32 1, ptr %BitsAvail, align 4
  br label %if.end111

if.else102:                                       ; preds = %if.then94
  %68 = load ptr, ptr %bitmap, align 8
  %69 = load ptr, ptr %cp, align 8
  %incdec.ptr103 = getelementptr inbounds i8, ptr %69, i32 1
  store ptr %incdec.ptr103, ptr %cp, align 8
  %70 = load i8, ptr %69, align 1
  %idxprom104 = zext i8 %70 to i64
  %arrayidx105 = getelementptr inbounds i8, ptr %68, i64 %idxprom104
  %71 = load i8, ptr %arrayidx105, align 1
  %conv106 = zext i8 %71 to i64
  %72 = load i32, ptr %BitsAvail, align 4
  %sh_prom107 = zext i32 %72 to i64
  %shl108 = shl i64 %conv106, %sh_prom107
  %73 = load i64, ptr %BitAcc, align 8
  %or109 = or i64 %73, %shl108
  store i64 %or109, ptr %BitAcc, align 8
  %74 = load i32, ptr %BitsAvail, align 4
  %add110 = add nsw i32 %74, 8
  store i32 %add110, ptr %BitsAvail, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.else102, %if.end101
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %do.body91
  br label %do.end113

do.end113:                                        ; preds = %if.end112
  %75 = load i64, ptr %BitAcc, align 8
  %and114 = and i64 %75, 1
  %conv115 = trunc i64 %and114 to i32
  store i32 %conv115, ptr %is1D, align 4
  br label %do.body116

do.body116:                                       ; preds = %do.end113
  %76 = load i32, ptr %BitsAvail, align 4
  %sub117 = sub nsw i32 %76, 1
  store i32 %sub117, ptr %BitsAvail, align 4
  %77 = load i64, ptr %BitAcc, align 8
  %shr118 = lshr i64 %77, 1
  store i64 %shr118, ptr %BitAcc, align 8
  br label %do.end119

do.end119:                                        ; preds = %do.body116
  %78 = load ptr, ptr %sp, align 8
  %refruns = getelementptr inbounds %struct.Fax3DecodeState, ptr %78, i32 0, i32 7
  %79 = load ptr, ptr %refruns, align 8
  store ptr %79, ptr %pb, align 8
  %80 = load ptr, ptr %pb, align 8
  %incdec.ptr120 = getelementptr inbounds i64, ptr %80, i32 1
  store ptr %incdec.ptr120, ptr %pb, align 8
  %81 = load i64, ptr %80, align 8
  %conv121 = trunc i64 %81 to i32
  store i32 %conv121, ptr %b1, align 4
  %82 = load i32, ptr %is1D, align 4
  %tobool122 = icmp ne i32 %82, 0
  br i1 %tobool122, label %if.then123, label %if.else438

if.then123:                                       ; preds = %do.end119
  br label %do.body124

do.body124:                                       ; preds = %if.then123
  br label %for.cond125

for.cond125:                                      ; preds = %if.end287, %do.body124
  br label %for.cond126

for.cond126:                                      ; preds = %sw.epilog, %for.cond125
  br label %do.body127

do.body127:                                       ; preds = %for.cond126
  br label %do.body128

do.body128:                                       ; preds = %do.body127
  %83 = load i32, ptr %BitsAvail, align 4
  %cmp129 = icmp slt i32 %83, 12
  br i1 %cmp129, label %if.then131, label %if.end166

if.then131:                                       ; preds = %do.body128
  %84 = load ptr, ptr %cp, align 8
  %85 = load ptr, ptr %ep, align 8
  %cmp132 = icmp uge ptr %84, %85
  br i1 %cmp132, label %if.then134, label %if.else139

if.then134:                                       ; preds = %if.then131
  %86 = load i32, ptr %BitsAvail, align 4
  %cmp135 = icmp eq i32 %86, 0
  br i1 %cmp135, label %if.then137, label %if.end138

if.then137:                                       ; preds = %if.then134
  br label %eof1d

if.end138:                                        ; preds = %if.then134
  store i32 12, ptr %BitsAvail, align 4
  br label %if.end165

if.else139:                                       ; preds = %if.then131
  %87 = load ptr, ptr %bitmap, align 8
  %88 = load ptr, ptr %cp, align 8
  %incdec.ptr140 = getelementptr inbounds i8, ptr %88, i32 1
  store ptr %incdec.ptr140, ptr %cp, align 8
  %89 = load i8, ptr %88, align 1
  %idxprom141 = zext i8 %89 to i64
  %arrayidx142 = getelementptr inbounds i8, ptr %87, i64 %idxprom141
  %90 = load i8, ptr %arrayidx142, align 1
  %conv143 = zext i8 %90 to i64
  %91 = load i32, ptr %BitsAvail, align 4
  %sh_prom144 = zext i32 %91 to i64
  %shl145 = shl i64 %conv143, %sh_prom144
  %92 = load i64, ptr %BitAcc, align 8
  %or146 = or i64 %92, %shl145
  store i64 %or146, ptr %BitAcc, align 8
  %93 = load i32, ptr %BitsAvail, align 4
  %add147 = add nsw i32 %93, 8
  store i32 %add147, ptr %BitsAvail, align 4
  %cmp148 = icmp slt i32 %add147, 12
  br i1 %cmp148, label %if.then150, label %if.end164

if.then150:                                       ; preds = %if.else139
  %94 = load ptr, ptr %cp, align 8
  %95 = load ptr, ptr %ep, align 8
  %cmp151 = icmp uge ptr %94, %95
  br i1 %cmp151, label %if.then153, label %if.else154

if.then153:                                       ; preds = %if.then150
  store i32 12, ptr %BitsAvail, align 4
  br label %if.end163

if.else154:                                       ; preds = %if.then150
  %96 = load ptr, ptr %bitmap, align 8
  %97 = load ptr, ptr %cp, align 8
  %incdec.ptr155 = getelementptr inbounds i8, ptr %97, i32 1
  store ptr %incdec.ptr155, ptr %cp, align 8
  %98 = load i8, ptr %97, align 1
  %idxprom156 = zext i8 %98 to i64
  %arrayidx157 = getelementptr inbounds i8, ptr %96, i64 %idxprom156
  %99 = load i8, ptr %arrayidx157, align 1
  %conv158 = zext i8 %99 to i64
  %100 = load i32, ptr %BitsAvail, align 4
  %sh_prom159 = zext i32 %100 to i64
  %shl160 = shl i64 %conv158, %sh_prom159
  %101 = load i64, ptr %BitAcc, align 8
  %or161 = or i64 %101, %shl160
  store i64 %or161, ptr %BitAcc, align 8
  %102 = load i32, ptr %BitsAvail, align 4
  %add162 = add nsw i32 %102, 8
  store i32 %add162, ptr %BitsAvail, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.else154, %if.then153
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %if.else139
  br label %if.end165

if.end165:                                        ; preds = %if.end164, %if.end138
  br label %if.end166

if.end166:                                        ; preds = %if.end165, %do.body128
  br label %do.end167

do.end167:                                        ; preds = %if.end166
  %103 = load i64, ptr %BitAcc, align 8
  %and168 = and i64 %103, 4095
  %add.ptr169 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %and168
  store ptr %add.ptr169, ptr %TabEnt, align 8
  br label %do.body170

do.body170:                                       ; preds = %do.end167
  %104 = load ptr, ptr %TabEnt, align 8
  %Width = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %104, i32 0, i32 1
  %105 = load i8, ptr %Width, align 1
  %conv171 = zext i8 %105 to i32
  %106 = load i32, ptr %BitsAvail, align 4
  %sub172 = sub nsw i32 %106, %conv171
  store i32 %sub172, ptr %BitsAvail, align 4
  %107 = load ptr, ptr %TabEnt, align 8
  %Width173 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %107, i32 0, i32 1
  %108 = load i8, ptr %Width173, align 1
  %conv174 = zext i8 %108 to i32
  %109 = load i64, ptr %BitAcc, align 8
  %sh_prom175 = zext i32 %conv174 to i64
  %shr176 = lshr i64 %109, %sh_prom175
  store i64 %shr176, ptr %BitAcc, align 8
  br label %do.end177

do.end177:                                        ; preds = %do.body170
  br label %do.end178

do.end178:                                        ; preds = %do.end177
  %110 = load ptr, ptr %TabEnt, align 8
  %State = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %110, i32 0, i32 0
  %111 = load i8, ptr %State, align 8
  %conv179 = zext i8 %111 to i32
  switch i32 %conv179, label %sw.default [
    i32 12, label %sw.bb
    i32 7, label %sw.bb180
    i32 9, label %sw.bb190
    i32 11, label %sw.bb190
  ]

sw.bb:                                            ; preds = %do.end178
  store i32 1, ptr %EOLcnt, align 4
  br label %done1d

sw.bb180:                                         ; preds = %do.end178
  br label %do.body181

do.body181:                                       ; preds = %sw.bb180
  %112 = load i32, ptr %RunLength, align 4
  %conv182 = sext i32 %112 to i64
  %113 = load ptr, ptr %TabEnt, align 8
  %Param = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %113, i32 0, i32 2
  %114 = load i64, ptr %Param, align 8
  %add183 = add i64 %conv182, %114
  %115 = load ptr, ptr %pa, align 8
  %incdec.ptr184 = getelementptr inbounds i64, ptr %115, i32 1
  store ptr %incdec.ptr184, ptr %pa, align 8
  store i64 %add183, ptr %115, align 8
  %116 = load ptr, ptr %TabEnt, align 8
  %Param185 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %116, i32 0, i32 2
  %117 = load i64, ptr %Param185, align 8
  %118 = load i32, ptr %a0, align 4
  %conv186 = sext i32 %118 to i64
  %add187 = add i64 %conv186, %117
  %conv188 = trunc i64 %add187 to i32
  store i32 %conv188, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end189

do.end189:                                        ; preds = %do.body181
  br label %doneWhite1d

sw.bb190:                                         ; preds = %do.end178, %do.end178
  %119 = load ptr, ptr %TabEnt, align 8
  %Param191 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %119, i32 0, i32 2
  %120 = load i64, ptr %Param191, align 8
  %121 = load i32, ptr %a0, align 4
  %conv192 = sext i32 %121 to i64
  %add193 = add i64 %conv192, %120
  %conv194 = trunc i64 %add193 to i32
  store i32 %conv194, ptr %a0, align 4
  %122 = load ptr, ptr %TabEnt, align 8
  %Param195 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %122, i32 0, i32 2
  %123 = load i64, ptr %Param195, align 8
  %124 = load i32, ptr %RunLength, align 4
  %conv196 = sext i32 %124 to i64
  %add197 = add i64 %conv196, %123
  %conv198 = trunc i64 %add197 to i32
  store i32 %conv198, ptr %RunLength, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end178
  %125 = load ptr, ptr %tif.addr, align 8
  %126 = load i32, ptr %a0, align 4
  %conv199 = sext i32 %126 to i64
  call void @Fax3Unexpected(ptr noundef @Fax3Decode2D.module, ptr noundef %125, i64 noundef %conv199)
  br label %done1d

sw.epilog:                                        ; preds = %sw.bb190
  br label %for.cond126

doneWhite1d:                                      ; preds = %do.end189
  %127 = load i32, ptr %a0, align 4
  %128 = load i32, ptr %lastx, align 4
  %cmp200 = icmp sge i32 %127, %128
  br i1 %cmp200, label %if.then202, label %if.end203

if.then202:                                       ; preds = %doneWhite1d
  br label %done1d

if.end203:                                        ; preds = %doneWhite1d
  br label %for.cond204

for.cond204:                                      ; preds = %sw.epilog283, %if.end203
  br label %do.body205

do.body205:                                       ; preds = %for.cond204
  br label %do.body206

do.body206:                                       ; preds = %do.body205
  %129 = load i32, ptr %BitsAvail, align 4
  %cmp207 = icmp slt i32 %129, 13
  br i1 %cmp207, label %if.then209, label %if.end244

if.then209:                                       ; preds = %do.body206
  %130 = load ptr, ptr %cp, align 8
  %131 = load ptr, ptr %ep, align 8
  %cmp210 = icmp uge ptr %130, %131
  br i1 %cmp210, label %if.then212, label %if.else217

if.then212:                                       ; preds = %if.then209
  %132 = load i32, ptr %BitsAvail, align 4
  %cmp213 = icmp eq i32 %132, 0
  br i1 %cmp213, label %if.then215, label %if.end216

if.then215:                                       ; preds = %if.then212
  br label %eof1d

if.end216:                                        ; preds = %if.then212
  store i32 13, ptr %BitsAvail, align 4
  br label %if.end243

if.else217:                                       ; preds = %if.then209
  %133 = load ptr, ptr %bitmap, align 8
  %134 = load ptr, ptr %cp, align 8
  %incdec.ptr218 = getelementptr inbounds i8, ptr %134, i32 1
  store ptr %incdec.ptr218, ptr %cp, align 8
  %135 = load i8, ptr %134, align 1
  %idxprom219 = zext i8 %135 to i64
  %arrayidx220 = getelementptr inbounds i8, ptr %133, i64 %idxprom219
  %136 = load i8, ptr %arrayidx220, align 1
  %conv221 = zext i8 %136 to i64
  %137 = load i32, ptr %BitsAvail, align 4
  %sh_prom222 = zext i32 %137 to i64
  %shl223 = shl i64 %conv221, %sh_prom222
  %138 = load i64, ptr %BitAcc, align 8
  %or224 = or i64 %138, %shl223
  store i64 %or224, ptr %BitAcc, align 8
  %139 = load i32, ptr %BitsAvail, align 4
  %add225 = add nsw i32 %139, 8
  store i32 %add225, ptr %BitsAvail, align 4
  %cmp226 = icmp slt i32 %add225, 13
  br i1 %cmp226, label %if.then228, label %if.end242

if.then228:                                       ; preds = %if.else217
  %140 = load ptr, ptr %cp, align 8
  %141 = load ptr, ptr %ep, align 8
  %cmp229 = icmp uge ptr %140, %141
  br i1 %cmp229, label %if.then231, label %if.else232

if.then231:                                       ; preds = %if.then228
  store i32 13, ptr %BitsAvail, align 4
  br label %if.end241

if.else232:                                       ; preds = %if.then228
  %142 = load ptr, ptr %bitmap, align 8
  %143 = load ptr, ptr %cp, align 8
  %incdec.ptr233 = getelementptr inbounds i8, ptr %143, i32 1
  store ptr %incdec.ptr233, ptr %cp, align 8
  %144 = load i8, ptr %143, align 1
  %idxprom234 = zext i8 %144 to i64
  %arrayidx235 = getelementptr inbounds i8, ptr %142, i64 %idxprom234
  %145 = load i8, ptr %arrayidx235, align 1
  %conv236 = zext i8 %145 to i64
  %146 = load i32, ptr %BitsAvail, align 4
  %sh_prom237 = zext i32 %146 to i64
  %shl238 = shl i64 %conv236, %sh_prom237
  %147 = load i64, ptr %BitAcc, align 8
  %or239 = or i64 %147, %shl238
  store i64 %or239, ptr %BitAcc, align 8
  %148 = load i32, ptr %BitsAvail, align 4
  %add240 = add nsw i32 %148, 8
  store i32 %add240, ptr %BitsAvail, align 4
  br label %if.end241

if.end241:                                        ; preds = %if.else232, %if.then231
  br label %if.end242

if.end242:                                        ; preds = %if.end241, %if.else217
  br label %if.end243

if.end243:                                        ; preds = %if.end242, %if.end216
  br label %if.end244

if.end244:                                        ; preds = %if.end243, %do.body206
  br label %do.end245

do.end245:                                        ; preds = %if.end244
  %149 = load i64, ptr %BitAcc, align 8
  %and246 = and i64 %149, 8191
  %add.ptr247 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %and246
  store ptr %add.ptr247, ptr %TabEnt, align 8
  br label %do.body248

do.body248:                                       ; preds = %do.end245
  %150 = load ptr, ptr %TabEnt, align 8
  %Width249 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %150, i32 0, i32 1
  %151 = load i8, ptr %Width249, align 1
  %conv250 = zext i8 %151 to i32
  %152 = load i32, ptr %BitsAvail, align 4
  %sub251 = sub nsw i32 %152, %conv250
  store i32 %sub251, ptr %BitsAvail, align 4
  %153 = load ptr, ptr %TabEnt, align 8
  %Width252 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %153, i32 0, i32 1
  %154 = load i8, ptr %Width252, align 1
  %conv253 = zext i8 %154 to i32
  %155 = load i64, ptr %BitAcc, align 8
  %sh_prom254 = zext i32 %conv253 to i64
  %shr255 = lshr i64 %155, %sh_prom254
  store i64 %shr255, ptr %BitAcc, align 8
  br label %do.end256

do.end256:                                        ; preds = %do.body248
  br label %do.end257

do.end257:                                        ; preds = %do.end256
  %156 = load ptr, ptr %TabEnt, align 8
  %State258 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %156, i32 0, i32 0
  %157 = load i8, ptr %State258, align 8
  %conv259 = zext i8 %157 to i32
  switch i32 %conv259, label %sw.default281 [
    i32 12, label %sw.bb260
    i32 8, label %sw.bb261
    i32 10, label %sw.bb272
    i32 11, label %sw.bb272
  ]

sw.bb260:                                         ; preds = %do.end257
  store i32 1, ptr %EOLcnt, align 4
  br label %done1d

sw.bb261:                                         ; preds = %do.end257
  br label %do.body262

do.body262:                                       ; preds = %sw.bb261
  %158 = load i32, ptr %RunLength, align 4
  %conv263 = sext i32 %158 to i64
  %159 = load ptr, ptr %TabEnt, align 8
  %Param264 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %159, i32 0, i32 2
  %160 = load i64, ptr %Param264, align 8
  %add265 = add i64 %conv263, %160
  %161 = load ptr, ptr %pa, align 8
  %incdec.ptr266 = getelementptr inbounds i64, ptr %161, i32 1
  store ptr %incdec.ptr266, ptr %pa, align 8
  store i64 %add265, ptr %161, align 8
  %162 = load ptr, ptr %TabEnt, align 8
  %Param267 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %162, i32 0, i32 2
  %163 = load i64, ptr %Param267, align 8
  %164 = load i32, ptr %a0, align 4
  %conv268 = sext i32 %164 to i64
  %add269 = add i64 %conv268, %163
  %conv270 = trunc i64 %add269 to i32
  store i32 %conv270, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end271

do.end271:                                        ; preds = %do.body262
  br label %doneBlack1d

sw.bb272:                                         ; preds = %do.end257, %do.end257
  %165 = load ptr, ptr %TabEnt, align 8
  %Param273 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %165, i32 0, i32 2
  %166 = load i64, ptr %Param273, align 8
  %167 = load i32, ptr %a0, align 4
  %conv274 = sext i32 %167 to i64
  %add275 = add i64 %conv274, %166
  %conv276 = trunc i64 %add275 to i32
  store i32 %conv276, ptr %a0, align 4
  %168 = load ptr, ptr %TabEnt, align 8
  %Param277 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %168, i32 0, i32 2
  %169 = load i64, ptr %Param277, align 8
  %170 = load i32, ptr %RunLength, align 4
  %conv278 = sext i32 %170 to i64
  %add279 = add i64 %conv278, %169
  %conv280 = trunc i64 %add279 to i32
  store i32 %conv280, ptr %RunLength, align 4
  br label %sw.epilog283

sw.default281:                                    ; preds = %do.end257
  %171 = load ptr, ptr %tif.addr, align 8
  %172 = load i32, ptr %a0, align 4
  %conv282 = sext i32 %172 to i64
  call void @Fax3Unexpected(ptr noundef @Fax3Decode2D.module, ptr noundef %171, i64 noundef %conv282)
  br label %done1d

sw.epilog283:                                     ; preds = %sw.bb272
  br label %for.cond204

doneBlack1d:                                      ; preds = %do.end271
  %173 = load i32, ptr %a0, align 4
  %174 = load i32, ptr %lastx, align 4
  %cmp284 = icmp sge i32 %173, %174
  br i1 %cmp284, label %if.then286, label %if.end287

if.then286:                                       ; preds = %doneBlack1d
  br label %done1d

if.end287:                                        ; preds = %doneBlack1d
  br label %for.cond125

eof1d:                                            ; preds = %if.then215, %if.then137
  %175 = load ptr, ptr %tif.addr, align 8
  %176 = load i32, ptr %a0, align 4
  %conv288 = sext i32 %176 to i64
  call void @Fax3PrematureEOF(ptr noundef @Fax3Decode2D.module, ptr noundef %175, i64 noundef %conv288)
  br label %do.body289

do.body289:                                       ; preds = %eof1d
  %177 = load i32, ptr %RunLength, align 4
  %tobool290 = icmp ne i32 %177, 0
  br i1 %tobool290, label %if.then291, label %if.end298

if.then291:                                       ; preds = %do.body289
  br label %do.body292

do.body292:                                       ; preds = %if.then291
  %178 = load i32, ptr %RunLength, align 4
  %add293 = add nsw i32 %178, 0
  %conv294 = sext i32 %add293 to i64
  %179 = load ptr, ptr %pa, align 8
  %incdec.ptr295 = getelementptr inbounds i64, ptr %179, i32 1
  store ptr %incdec.ptr295, ptr %pa, align 8
  store i64 %conv294, ptr %179, align 8
  %180 = load i32, ptr %a0, align 4
  %add296 = add nsw i32 %180, 0
  store i32 %add296, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end297

do.end297:                                        ; preds = %do.body292
  br label %if.end298

if.end298:                                        ; preds = %do.end297, %do.body289
  %181 = load i32, ptr %a0, align 4
  %182 = load i32, ptr %lastx, align 4
  %cmp299 = icmp ne i32 %181, %182
  br i1 %cmp299, label %if.then301, label %if.end358

if.then301:                                       ; preds = %if.end298
  %183 = load ptr, ptr %tif.addr, align 8
  %184 = load i32, ptr %a0, align 4
  %conv302 = sext i32 %184 to i64
  %185 = load i32, ptr %lastx, align 4
  %conv303 = sext i32 %185 to i64
  call void @Fax3BadLength(ptr noundef @Fax3Decode2D.module, ptr noundef %183, i64 noundef %conv302, i64 noundef %conv303)
  br label %while.cond304

while.cond304:                                    ; preds = %while.body309, %if.then301
  %186 = load i32, ptr %a0, align 4
  %187 = load i32, ptr %lastx, align 4
  %cmp305 = icmp sgt i32 %186, %187
  br i1 %cmp305, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond304
  %188 = load ptr, ptr %pa, align 8
  %189 = load ptr, ptr %thisrun, align 8
  %cmp307 = icmp ugt ptr %188, %189
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond304
  %190 = phi i1 [ false, %while.cond304 ], [ %cmp307, %land.rhs ]
  br i1 %190, label %while.body309, label %while.end314

while.body309:                                    ; preds = %land.end
  %191 = load ptr, ptr %pa, align 8
  %incdec.ptr310 = getelementptr inbounds i64, ptr %191, i32 -1
  store ptr %incdec.ptr310, ptr %pa, align 8
  %192 = load i64, ptr %incdec.ptr310, align 8
  %193 = load i32, ptr %a0, align 4
  %conv311 = sext i32 %193 to i64
  %sub312 = sub i64 %conv311, %192
  %conv313 = trunc i64 %sub312 to i32
  store i32 %conv313, ptr %a0, align 4
  br label %while.cond304, !llvm.loop !33

while.end314:                                     ; preds = %land.end
  %194 = load i32, ptr %a0, align 4
  %195 = load i32, ptr %lastx, align 4
  %cmp315 = icmp slt i32 %194, %195
  br i1 %cmp315, label %if.then317, label %if.else340

if.then317:                                       ; preds = %while.end314
  %196 = load i32, ptr %a0, align 4
  %cmp318 = icmp slt i32 %196, 0
  br i1 %cmp318, label %if.then320, label %if.end321

if.then320:                                       ; preds = %if.then317
  store i32 0, ptr %a0, align 4
  br label %if.end321

if.end321:                                        ; preds = %if.then320, %if.then317
  %197 = load ptr, ptr %pa, align 8
  %198 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %197 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %198 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %and322 = and i64 %sub.ptr.div, 1
  %tobool323 = icmp ne i64 %and322, 0
  br i1 %tobool323, label %if.then324, label %if.end331

if.then324:                                       ; preds = %if.end321
  br label %do.body325

do.body325:                                       ; preds = %if.then324
  %199 = load i32, ptr %RunLength, align 4
  %add326 = add nsw i32 %199, 0
  %conv327 = sext i32 %add326 to i64
  %200 = load ptr, ptr %pa, align 8
  %incdec.ptr328 = getelementptr inbounds i64, ptr %200, i32 1
  store ptr %incdec.ptr328, ptr %pa, align 8
  store i64 %conv327, ptr %200, align 8
  %201 = load i32, ptr %a0, align 4
  %add329 = add nsw i32 %201, 0
  store i32 %add329, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end330

do.end330:                                        ; preds = %do.body325
  br label %if.end331

if.end331:                                        ; preds = %do.end330, %if.end321
  br label %do.body332

do.body332:                                       ; preds = %if.end331
  %202 = load i32, ptr %RunLength, align 4
  %203 = load i32, ptr %lastx, align 4
  %204 = load i32, ptr %a0, align 4
  %sub333 = sub nsw i32 %203, %204
  %add334 = add nsw i32 %202, %sub333
  %conv335 = sext i32 %add334 to i64
  %205 = load ptr, ptr %pa, align 8
  %incdec.ptr336 = getelementptr inbounds i64, ptr %205, i32 1
  store ptr %incdec.ptr336, ptr %pa, align 8
  store i64 %conv335, ptr %205, align 8
  %206 = load i32, ptr %lastx, align 4
  %207 = load i32, ptr %a0, align 4
  %sub337 = sub nsw i32 %206, %207
  %208 = load i32, ptr %a0, align 4
  %add338 = add nsw i32 %208, %sub337
  store i32 %add338, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end339

do.end339:                                        ; preds = %do.body332
  br label %if.end357

if.else340:                                       ; preds = %while.end314
  %209 = load i32, ptr %a0, align 4
  %210 = load i32, ptr %lastx, align 4
  %cmp341 = icmp sgt i32 %209, %210
  br i1 %cmp341, label %if.then343, label %if.end356

if.then343:                                       ; preds = %if.else340
  br label %do.body344

do.body344:                                       ; preds = %if.then343
  %211 = load i32, ptr %RunLength, align 4
  %212 = load i32, ptr %lastx, align 4
  %add345 = add nsw i32 %211, %212
  %conv346 = sext i32 %add345 to i64
  %213 = load ptr, ptr %pa, align 8
  %incdec.ptr347 = getelementptr inbounds i64, ptr %213, i32 1
  store ptr %incdec.ptr347, ptr %pa, align 8
  store i64 %conv346, ptr %213, align 8
  %214 = load i32, ptr %lastx, align 4
  %215 = load i32, ptr %a0, align 4
  %add348 = add nsw i32 %215, %214
  store i32 %add348, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end349

do.end349:                                        ; preds = %do.body344
  br label %do.body350

do.body350:                                       ; preds = %do.end349
  %216 = load i32, ptr %RunLength, align 4
  %add351 = add nsw i32 %216, 0
  %conv352 = sext i32 %add351 to i64
  %217 = load ptr, ptr %pa, align 8
  %incdec.ptr353 = getelementptr inbounds i64, ptr %217, i32 1
  store ptr %incdec.ptr353, ptr %pa, align 8
  store i64 %conv352, ptr %217, align 8
  %218 = load i32, ptr %a0, align 4
  %add354 = add nsw i32 %218, 0
  store i32 %add354, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end355

do.end355:                                        ; preds = %do.body350
  br label %if.end356

if.end356:                                        ; preds = %do.end355, %if.else340
  br label %if.end357

if.end357:                                        ; preds = %if.end356, %do.end339
  br label %if.end358

if.end358:                                        ; preds = %if.end357, %if.end298
  br label %do.end359

do.end359:                                        ; preds = %if.end358
  br label %EOF2Da

done1d:                                           ; preds = %if.then286, %sw.default281, %sw.bb260, %if.then202, %sw.default, %sw.bb
  br label %do.body360

do.body360:                                       ; preds = %done1d
  %219 = load i32, ptr %RunLength, align 4
  %tobool361 = icmp ne i32 %219, 0
  br i1 %tobool361, label %if.then362, label %if.end369

if.then362:                                       ; preds = %do.body360
  br label %do.body363

do.body363:                                       ; preds = %if.then362
  %220 = load i32, ptr %RunLength, align 4
  %add364 = add nsw i32 %220, 0
  %conv365 = sext i32 %add364 to i64
  %221 = load ptr, ptr %pa, align 8
  %incdec.ptr366 = getelementptr inbounds i64, ptr %221, i32 1
  store ptr %incdec.ptr366, ptr %pa, align 8
  store i64 %conv365, ptr %221, align 8
  %222 = load i32, ptr %a0, align 4
  %add367 = add nsw i32 %222, 0
  store i32 %add367, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end368

do.end368:                                        ; preds = %do.body363
  br label %if.end369

if.end369:                                        ; preds = %do.end368, %do.body360
  %223 = load i32, ptr %a0, align 4
  %224 = load i32, ptr %lastx, align 4
  %cmp370 = icmp ne i32 %223, %224
  br i1 %cmp370, label %if.then372, label %if.end435

if.then372:                                       ; preds = %if.end369
  %225 = load ptr, ptr %tif.addr, align 8
  %226 = load i32, ptr %a0, align 4
  %conv373 = sext i32 %226 to i64
  %227 = load i32, ptr %lastx, align 4
  %conv374 = sext i32 %227 to i64
  call void @Fax3BadLength(ptr noundef @Fax3Decode2D.module, ptr noundef %225, i64 noundef %conv373, i64 noundef %conv374)
  br label %while.cond375

while.cond375:                                    ; preds = %while.body382, %if.then372
  %228 = load i32, ptr %a0, align 4
  %229 = load i32, ptr %lastx, align 4
  %cmp376 = icmp sgt i32 %228, %229
  br i1 %cmp376, label %land.rhs378, label %land.end381

land.rhs378:                                      ; preds = %while.cond375
  %230 = load ptr, ptr %pa, align 8
  %231 = load ptr, ptr %thisrun, align 8
  %cmp379 = icmp ugt ptr %230, %231
  br label %land.end381

land.end381:                                      ; preds = %land.rhs378, %while.cond375
  %232 = phi i1 [ false, %while.cond375 ], [ %cmp379, %land.rhs378 ]
  br i1 %232, label %while.body382, label %while.end387

while.body382:                                    ; preds = %land.end381
  %233 = load ptr, ptr %pa, align 8
  %incdec.ptr383 = getelementptr inbounds i64, ptr %233, i32 -1
  store ptr %incdec.ptr383, ptr %pa, align 8
  %234 = load i64, ptr %incdec.ptr383, align 8
  %235 = load i32, ptr %a0, align 4
  %conv384 = sext i32 %235 to i64
  %sub385 = sub i64 %conv384, %234
  %conv386 = trunc i64 %sub385 to i32
  store i32 %conv386, ptr %a0, align 4
  br label %while.cond375, !llvm.loop !34

while.end387:                                     ; preds = %land.end381
  %236 = load i32, ptr %a0, align 4
  %237 = load i32, ptr %lastx, align 4
  %cmp388 = icmp slt i32 %236, %237
  br i1 %cmp388, label %if.then390, label %if.else417

if.then390:                                       ; preds = %while.end387
  %238 = load i32, ptr %a0, align 4
  %cmp391 = icmp slt i32 %238, 0
  br i1 %cmp391, label %if.then393, label %if.end394

if.then393:                                       ; preds = %if.then390
  store i32 0, ptr %a0, align 4
  br label %if.end394

if.end394:                                        ; preds = %if.then393, %if.then390
  %239 = load ptr, ptr %pa, align 8
  %240 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast395 = ptrtoint ptr %239 to i64
  %sub.ptr.rhs.cast396 = ptrtoint ptr %240 to i64
  %sub.ptr.sub397 = sub i64 %sub.ptr.lhs.cast395, %sub.ptr.rhs.cast396
  %sub.ptr.div398 = sdiv exact i64 %sub.ptr.sub397, 8
  %and399 = and i64 %sub.ptr.div398, 1
  %tobool400 = icmp ne i64 %and399, 0
  br i1 %tobool400, label %if.then401, label %if.end408

if.then401:                                       ; preds = %if.end394
  br label %do.body402

do.body402:                                       ; preds = %if.then401
  %241 = load i32, ptr %RunLength, align 4
  %add403 = add nsw i32 %241, 0
  %conv404 = sext i32 %add403 to i64
  %242 = load ptr, ptr %pa, align 8
  %incdec.ptr405 = getelementptr inbounds i64, ptr %242, i32 1
  store ptr %incdec.ptr405, ptr %pa, align 8
  store i64 %conv404, ptr %242, align 8
  %243 = load i32, ptr %a0, align 4
  %add406 = add nsw i32 %243, 0
  store i32 %add406, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end407

do.end407:                                        ; preds = %do.body402
  br label %if.end408

if.end408:                                        ; preds = %do.end407, %if.end394
  br label %do.body409

do.body409:                                       ; preds = %if.end408
  %244 = load i32, ptr %RunLength, align 4
  %245 = load i32, ptr %lastx, align 4
  %246 = load i32, ptr %a0, align 4
  %sub410 = sub nsw i32 %245, %246
  %add411 = add nsw i32 %244, %sub410
  %conv412 = sext i32 %add411 to i64
  %247 = load ptr, ptr %pa, align 8
  %incdec.ptr413 = getelementptr inbounds i64, ptr %247, i32 1
  store ptr %incdec.ptr413, ptr %pa, align 8
  store i64 %conv412, ptr %247, align 8
  %248 = load i32, ptr %lastx, align 4
  %249 = load i32, ptr %a0, align 4
  %sub414 = sub nsw i32 %248, %249
  %250 = load i32, ptr %a0, align 4
  %add415 = add nsw i32 %250, %sub414
  store i32 %add415, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end416

do.end416:                                        ; preds = %do.body409
  br label %if.end434

if.else417:                                       ; preds = %while.end387
  %251 = load i32, ptr %a0, align 4
  %252 = load i32, ptr %lastx, align 4
  %cmp418 = icmp sgt i32 %251, %252
  br i1 %cmp418, label %if.then420, label %if.end433

if.then420:                                       ; preds = %if.else417
  br label %do.body421

do.body421:                                       ; preds = %if.then420
  %253 = load i32, ptr %RunLength, align 4
  %254 = load i32, ptr %lastx, align 4
  %add422 = add nsw i32 %253, %254
  %conv423 = sext i32 %add422 to i64
  %255 = load ptr, ptr %pa, align 8
  %incdec.ptr424 = getelementptr inbounds i64, ptr %255, i32 1
  store ptr %incdec.ptr424, ptr %pa, align 8
  store i64 %conv423, ptr %255, align 8
  %256 = load i32, ptr %lastx, align 4
  %257 = load i32, ptr %a0, align 4
  %add425 = add nsw i32 %257, %256
  store i32 %add425, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end426

do.end426:                                        ; preds = %do.body421
  br label %do.body427

do.body427:                                       ; preds = %do.end426
  %258 = load i32, ptr %RunLength, align 4
  %add428 = add nsw i32 %258, 0
  %conv429 = sext i32 %add428 to i64
  %259 = load ptr, ptr %pa, align 8
  %incdec.ptr430 = getelementptr inbounds i64, ptr %259, i32 1
  store ptr %incdec.ptr430, ptr %pa, align 8
  store i64 %conv429, ptr %259, align 8
  %260 = load i32, ptr %a0, align 4
  %add431 = add nsw i32 %260, 0
  store i32 %add431, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end432

do.end432:                                        ; preds = %do.body427
  br label %if.end433

if.end433:                                        ; preds = %do.end432, %if.else417
  br label %if.end434

if.end434:                                        ; preds = %if.end433, %do.end416
  br label %if.end435

if.end435:                                        ; preds = %if.end434, %if.end369
  br label %do.end436

do.end436:                                        ; preds = %if.end435
  br label %do.end437

do.end437:                                        ; preds = %do.end436
  br label %if.end1224

if.else438:                                       ; preds = %do.end119
  br label %do.body439

do.body439:                                       ; preds = %if.else438
  br label %while.cond440

while.cond440:                                    ; preds = %sw.epilog1099, %do.body439
  %261 = load i32, ptr %a0, align 4
  %262 = load i32, ptr %lastx, align 4
  %cmp441 = icmp slt i32 %261, %262
  br i1 %cmp441, label %while.body443, label %while.end1100

while.body443:                                    ; preds = %while.cond440
  br label %do.body444

do.body444:                                       ; preds = %while.body443
  br label %do.body445

do.body445:                                       ; preds = %do.body444
  %263 = load i32, ptr %BitsAvail, align 4
  %cmp446 = icmp slt i32 %263, 7
  br i1 %cmp446, label %if.then448, label %if.end466

if.then448:                                       ; preds = %do.body445
  %264 = load ptr, ptr %cp, align 8
  %265 = load ptr, ptr %ep, align 8
  %cmp449 = icmp uge ptr %264, %265
  br i1 %cmp449, label %if.then451, label %if.else456

if.then451:                                       ; preds = %if.then448
  %266 = load i32, ptr %BitsAvail, align 4
  %cmp452 = icmp eq i32 %266, 0
  br i1 %cmp452, label %if.then454, label %if.end455

if.then454:                                       ; preds = %if.then451
  br label %eof2d

if.end455:                                        ; preds = %if.then451
  store i32 7, ptr %BitsAvail, align 4
  br label %if.end465

if.else456:                                       ; preds = %if.then448
  %267 = load ptr, ptr %bitmap, align 8
  %268 = load ptr, ptr %cp, align 8
  %incdec.ptr457 = getelementptr inbounds i8, ptr %268, i32 1
  store ptr %incdec.ptr457, ptr %cp, align 8
  %269 = load i8, ptr %268, align 1
  %idxprom458 = zext i8 %269 to i64
  %arrayidx459 = getelementptr inbounds i8, ptr %267, i64 %idxprom458
  %270 = load i8, ptr %arrayidx459, align 1
  %conv460 = zext i8 %270 to i64
  %271 = load i32, ptr %BitsAvail, align 4
  %sh_prom461 = zext i32 %271 to i64
  %shl462 = shl i64 %conv460, %sh_prom461
  %272 = load i64, ptr %BitAcc, align 8
  %or463 = or i64 %272, %shl462
  store i64 %or463, ptr %BitAcc, align 8
  %273 = load i32, ptr %BitsAvail, align 4
  %add464 = add nsw i32 %273, 8
  store i32 %add464, ptr %BitsAvail, align 4
  br label %if.end465

if.end465:                                        ; preds = %if.else456, %if.end455
  br label %if.end466

if.end466:                                        ; preds = %if.end465, %do.body445
  br label %do.end467

do.end467:                                        ; preds = %if.end466
  %274 = load i64, ptr %BitAcc, align 8
  %and468 = and i64 %274, 127
  %add.ptr469 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxMainTable, i64 %and468
  store ptr %add.ptr469, ptr %TabEnt, align 8
  br label %do.body470

do.body470:                                       ; preds = %do.end467
  %275 = load ptr, ptr %TabEnt, align 8
  %Width471 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %275, i32 0, i32 1
  %276 = load i8, ptr %Width471, align 1
  %conv472 = zext i8 %276 to i32
  %277 = load i32, ptr %BitsAvail, align 4
  %sub473 = sub nsw i32 %277, %conv472
  store i32 %sub473, ptr %BitsAvail, align 4
  %278 = load ptr, ptr %TabEnt, align 8
  %Width474 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %278, i32 0, i32 1
  %279 = load i8, ptr %Width474, align 1
  %conv475 = zext i8 %279 to i32
  %280 = load i64, ptr %BitAcc, align 8
  %sh_prom476 = zext i32 %conv475 to i64
  %shr477 = lshr i64 %280, %sh_prom476
  store i64 %shr477, ptr %BitAcc, align 8
  br label %do.end478

do.end478:                                        ; preds = %do.body470
  br label %do.end479

do.end479:                                        ; preds = %do.end478
  %281 = load ptr, ptr %TabEnt, align 8
  %State480 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %281, i32 0, i32 0
  %282 = load i8, ptr %State480, align 8
  %conv481 = zext i8 %282 to i32
  switch i32 %conv481, label %sw.default1017 [
    i32 1, label %sw.bb482
    i32 2, label %sw.bb515
    i32 3, label %sw.bb859
    i32 4, label %sw.bb894
    i32 5, label %sw.bb937
    i32 6, label %sw.bb980
    i32 12, label %sw.bb985
  ]

sw.bb482:                                         ; preds = %do.end479
  br label %do.body483

do.body483:                                       ; preds = %sw.bb482
  %283 = load ptr, ptr %pa, align 8
  %284 = load ptr, ptr %thisrun, align 8
  %cmp484 = icmp ne ptr %283, %284
  br i1 %cmp484, label %if.then486, label %if.end503

if.then486:                                       ; preds = %do.body483
  br label %while.cond487

while.cond487:                                    ; preds = %while.body494, %if.then486
  %285 = load i32, ptr %b1, align 4
  %286 = load i32, ptr %a0, align 4
  %cmp488 = icmp sle i32 %285, %286
  br i1 %cmp488, label %land.rhs490, label %land.end493

land.rhs490:                                      ; preds = %while.cond487
  %287 = load i32, ptr %b1, align 4
  %288 = load i32, ptr %lastx, align 4
  %cmp491 = icmp slt i32 %287, %288
  br label %land.end493

land.end493:                                      ; preds = %land.rhs490, %while.cond487
  %289 = phi i1 [ false, %while.cond487 ], [ %cmp491, %land.rhs490 ]
  br i1 %289, label %while.body494, label %while.end502

while.body494:                                    ; preds = %land.end493
  %290 = load ptr, ptr %pb, align 8
  %arrayidx495 = getelementptr inbounds i64, ptr %290, i64 0
  %291 = load i64, ptr %arrayidx495, align 8
  %292 = load ptr, ptr %pb, align 8
  %arrayidx496 = getelementptr inbounds i64, ptr %292, i64 1
  %293 = load i64, ptr %arrayidx496, align 8
  %add497 = add i64 %291, %293
  %294 = load i32, ptr %b1, align 4
  %conv498 = sext i32 %294 to i64
  %add499 = add i64 %conv498, %add497
  %conv500 = trunc i64 %add499 to i32
  store i32 %conv500, ptr %b1, align 4
  %295 = load ptr, ptr %pb, align 8
  %add.ptr501 = getelementptr inbounds i64, ptr %295, i64 2
  store ptr %add.ptr501, ptr %pb, align 8
  br label %while.cond487, !llvm.loop !35

while.end502:                                     ; preds = %land.end493
  br label %if.end503

if.end503:                                        ; preds = %while.end502, %do.body483
  br label %do.end504

do.end504:                                        ; preds = %if.end503
  %296 = load ptr, ptr %pb, align 8
  %incdec.ptr505 = getelementptr inbounds i64, ptr %296, i32 1
  store ptr %incdec.ptr505, ptr %pb, align 8
  %297 = load i64, ptr %296, align 8
  %298 = load i32, ptr %b1, align 4
  %conv506 = sext i32 %298 to i64
  %add507 = add i64 %conv506, %297
  %conv508 = trunc i64 %add507 to i32
  store i32 %conv508, ptr %b1, align 4
  %299 = load i32, ptr %b1, align 4
  %300 = load i32, ptr %a0, align 4
  %sub509 = sub nsw i32 %299, %300
  %301 = load i32, ptr %RunLength, align 4
  %add510 = add nsw i32 %301, %sub509
  store i32 %add510, ptr %RunLength, align 4
  %302 = load i32, ptr %b1, align 4
  store i32 %302, ptr %a0, align 4
  %303 = load ptr, ptr %pb, align 8
  %incdec.ptr511 = getelementptr inbounds i64, ptr %303, i32 1
  store ptr %incdec.ptr511, ptr %pb, align 8
  %304 = load i64, ptr %303, align 8
  %305 = load i32, ptr %b1, align 4
  %conv512 = sext i32 %305 to i64
  %add513 = add i64 %conv512, %304
  %conv514 = trunc i64 %add513 to i32
  store i32 %conv514, ptr %b1, align 4
  br label %sw.epilog1099

sw.bb515:                                         ; preds = %do.end479
  %306 = load ptr, ptr %pa, align 8
  %307 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast516 = ptrtoint ptr %306 to i64
  %sub.ptr.rhs.cast517 = ptrtoint ptr %307 to i64
  %sub.ptr.sub518 = sub i64 %sub.ptr.lhs.cast516, %sub.ptr.rhs.cast517
  %sub.ptr.div519 = sdiv exact i64 %sub.ptr.sub518, 8
  %and520 = and i64 %sub.ptr.div519, 1
  %tobool521 = icmp ne i64 %and520, 0
  br i1 %tobool521, label %if.then522, label %if.else679

if.then522:                                       ; preds = %sw.bb515
  br label %for.cond523

for.cond523:                                      ; preds = %sw.epilog600, %if.then522
  br label %do.body524

do.body524:                                       ; preds = %for.cond523
  br label %do.body525

do.body525:                                       ; preds = %do.body524
  %308 = load i32, ptr %BitsAvail, align 4
  %cmp526 = icmp slt i32 %308, 13
  br i1 %cmp526, label %if.then528, label %if.end563

if.then528:                                       ; preds = %do.body525
  %309 = load ptr, ptr %cp, align 8
  %310 = load ptr, ptr %ep, align 8
  %cmp529 = icmp uge ptr %309, %310
  br i1 %cmp529, label %if.then531, label %if.else536

if.then531:                                       ; preds = %if.then528
  %311 = load i32, ptr %BitsAvail, align 4
  %cmp532 = icmp eq i32 %311, 0
  br i1 %cmp532, label %if.then534, label %if.end535

if.then534:                                       ; preds = %if.then531
  br label %eof2d

if.end535:                                        ; preds = %if.then531
  store i32 13, ptr %BitsAvail, align 4
  br label %if.end562

if.else536:                                       ; preds = %if.then528
  %312 = load ptr, ptr %bitmap, align 8
  %313 = load ptr, ptr %cp, align 8
  %incdec.ptr537 = getelementptr inbounds i8, ptr %313, i32 1
  store ptr %incdec.ptr537, ptr %cp, align 8
  %314 = load i8, ptr %313, align 1
  %idxprom538 = zext i8 %314 to i64
  %arrayidx539 = getelementptr inbounds i8, ptr %312, i64 %idxprom538
  %315 = load i8, ptr %arrayidx539, align 1
  %conv540 = zext i8 %315 to i64
  %316 = load i32, ptr %BitsAvail, align 4
  %sh_prom541 = zext i32 %316 to i64
  %shl542 = shl i64 %conv540, %sh_prom541
  %317 = load i64, ptr %BitAcc, align 8
  %or543 = or i64 %317, %shl542
  store i64 %or543, ptr %BitAcc, align 8
  %318 = load i32, ptr %BitsAvail, align 4
  %add544 = add nsw i32 %318, 8
  store i32 %add544, ptr %BitsAvail, align 4
  %cmp545 = icmp slt i32 %add544, 13
  br i1 %cmp545, label %if.then547, label %if.end561

if.then547:                                       ; preds = %if.else536
  %319 = load ptr, ptr %cp, align 8
  %320 = load ptr, ptr %ep, align 8
  %cmp548 = icmp uge ptr %319, %320
  br i1 %cmp548, label %if.then550, label %if.else551

if.then550:                                       ; preds = %if.then547
  store i32 13, ptr %BitsAvail, align 4
  br label %if.end560

if.else551:                                       ; preds = %if.then547
  %321 = load ptr, ptr %bitmap, align 8
  %322 = load ptr, ptr %cp, align 8
  %incdec.ptr552 = getelementptr inbounds i8, ptr %322, i32 1
  store ptr %incdec.ptr552, ptr %cp, align 8
  %323 = load i8, ptr %322, align 1
  %idxprom553 = zext i8 %323 to i64
  %arrayidx554 = getelementptr inbounds i8, ptr %321, i64 %idxprom553
  %324 = load i8, ptr %arrayidx554, align 1
  %conv555 = zext i8 %324 to i64
  %325 = load i32, ptr %BitsAvail, align 4
  %sh_prom556 = zext i32 %325 to i64
  %shl557 = shl i64 %conv555, %sh_prom556
  %326 = load i64, ptr %BitAcc, align 8
  %or558 = or i64 %326, %shl557
  store i64 %or558, ptr %BitAcc, align 8
  %327 = load i32, ptr %BitsAvail, align 4
  %add559 = add nsw i32 %327, 8
  store i32 %add559, ptr %BitsAvail, align 4
  br label %if.end560

if.end560:                                        ; preds = %if.else551, %if.then550
  br label %if.end561

if.end561:                                        ; preds = %if.end560, %if.else536
  br label %if.end562

if.end562:                                        ; preds = %if.end561, %if.end535
  br label %if.end563

if.end563:                                        ; preds = %if.end562, %do.body525
  br label %do.end564

do.end564:                                        ; preds = %if.end563
  %328 = load i64, ptr %BitAcc, align 8
  %and565 = and i64 %328, 8191
  %add.ptr566 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %and565
  store ptr %add.ptr566, ptr %TabEnt, align 8
  br label %do.body567

do.body567:                                       ; preds = %do.end564
  %329 = load ptr, ptr %TabEnt, align 8
  %Width568 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %329, i32 0, i32 1
  %330 = load i8, ptr %Width568, align 1
  %conv569 = zext i8 %330 to i32
  %331 = load i32, ptr %BitsAvail, align 4
  %sub570 = sub nsw i32 %331, %conv569
  store i32 %sub570, ptr %BitsAvail, align 4
  %332 = load ptr, ptr %TabEnt, align 8
  %Width571 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %332, i32 0, i32 1
  %333 = load i8, ptr %Width571, align 1
  %conv572 = zext i8 %333 to i32
  %334 = load i64, ptr %BitAcc, align 8
  %sh_prom573 = zext i32 %conv572 to i64
  %shr574 = lshr i64 %334, %sh_prom573
  store i64 %shr574, ptr %BitAcc, align 8
  br label %do.end575

do.end575:                                        ; preds = %do.body567
  br label %do.end576

do.end576:                                        ; preds = %do.end575
  %335 = load ptr, ptr %TabEnt, align 8
  %State577 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %335, i32 0, i32 0
  %336 = load i8, ptr %State577, align 8
  %conv578 = zext i8 %336 to i32
  switch i32 %conv578, label %sw.default599 [
    i32 8, label %sw.bb579
    i32 10, label %sw.bb590
    i32 11, label %sw.bb590
  ]

sw.bb579:                                         ; preds = %do.end576
  br label %do.body580

do.body580:                                       ; preds = %sw.bb579
  %337 = load i32, ptr %RunLength, align 4
  %conv581 = sext i32 %337 to i64
  %338 = load ptr, ptr %TabEnt, align 8
  %Param582 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %338, i32 0, i32 2
  %339 = load i64, ptr %Param582, align 8
  %add583 = add i64 %conv581, %339
  %340 = load ptr, ptr %pa, align 8
  %incdec.ptr584 = getelementptr inbounds i64, ptr %340, i32 1
  store ptr %incdec.ptr584, ptr %pa, align 8
  store i64 %add583, ptr %340, align 8
  %341 = load ptr, ptr %TabEnt, align 8
  %Param585 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %341, i32 0, i32 2
  %342 = load i64, ptr %Param585, align 8
  %343 = load i32, ptr %a0, align 4
  %conv586 = sext i32 %343 to i64
  %add587 = add i64 %conv586, %342
  %conv588 = trunc i64 %add587 to i32
  store i32 %conv588, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end589

do.end589:                                        ; preds = %do.body580
  br label %doneWhite2da

sw.bb590:                                         ; preds = %do.end576, %do.end576
  %344 = load ptr, ptr %TabEnt, align 8
  %Param591 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %344, i32 0, i32 2
  %345 = load i64, ptr %Param591, align 8
  %346 = load i32, ptr %a0, align 4
  %conv592 = sext i32 %346 to i64
  %add593 = add i64 %conv592, %345
  %conv594 = trunc i64 %add593 to i32
  store i32 %conv594, ptr %a0, align 4
  %347 = load ptr, ptr %TabEnt, align 8
  %Param595 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %347, i32 0, i32 2
  %348 = load i64, ptr %Param595, align 8
  %349 = load i32, ptr %RunLength, align 4
  %conv596 = sext i32 %349 to i64
  %add597 = add i64 %conv596, %348
  %conv598 = trunc i64 %add597 to i32
  store i32 %conv598, ptr %RunLength, align 4
  br label %sw.epilog600

sw.default599:                                    ; preds = %do.end576
  br label %badBlack2d

sw.epilog600:                                     ; preds = %sw.bb590
  br label %for.cond523

doneWhite2da:                                     ; preds = %do.end589
  br label %for.cond601

for.cond601:                                      ; preds = %sw.epilog678, %doneWhite2da
  br label %do.body602

do.body602:                                       ; preds = %for.cond601
  br label %do.body603

do.body603:                                       ; preds = %do.body602
  %350 = load i32, ptr %BitsAvail, align 4
  %cmp604 = icmp slt i32 %350, 12
  br i1 %cmp604, label %if.then606, label %if.end641

if.then606:                                       ; preds = %do.body603
  %351 = load ptr, ptr %cp, align 8
  %352 = load ptr, ptr %ep, align 8
  %cmp607 = icmp uge ptr %351, %352
  br i1 %cmp607, label %if.then609, label %if.else614

if.then609:                                       ; preds = %if.then606
  %353 = load i32, ptr %BitsAvail, align 4
  %cmp610 = icmp eq i32 %353, 0
  br i1 %cmp610, label %if.then612, label %if.end613

if.then612:                                       ; preds = %if.then609
  br label %eof2d

if.end613:                                        ; preds = %if.then609
  store i32 12, ptr %BitsAvail, align 4
  br label %if.end640

if.else614:                                       ; preds = %if.then606
  %354 = load ptr, ptr %bitmap, align 8
  %355 = load ptr, ptr %cp, align 8
  %incdec.ptr615 = getelementptr inbounds i8, ptr %355, i32 1
  store ptr %incdec.ptr615, ptr %cp, align 8
  %356 = load i8, ptr %355, align 1
  %idxprom616 = zext i8 %356 to i64
  %arrayidx617 = getelementptr inbounds i8, ptr %354, i64 %idxprom616
  %357 = load i8, ptr %arrayidx617, align 1
  %conv618 = zext i8 %357 to i64
  %358 = load i32, ptr %BitsAvail, align 4
  %sh_prom619 = zext i32 %358 to i64
  %shl620 = shl i64 %conv618, %sh_prom619
  %359 = load i64, ptr %BitAcc, align 8
  %or621 = or i64 %359, %shl620
  store i64 %or621, ptr %BitAcc, align 8
  %360 = load i32, ptr %BitsAvail, align 4
  %add622 = add nsw i32 %360, 8
  store i32 %add622, ptr %BitsAvail, align 4
  %cmp623 = icmp slt i32 %add622, 12
  br i1 %cmp623, label %if.then625, label %if.end639

if.then625:                                       ; preds = %if.else614
  %361 = load ptr, ptr %cp, align 8
  %362 = load ptr, ptr %ep, align 8
  %cmp626 = icmp uge ptr %361, %362
  br i1 %cmp626, label %if.then628, label %if.else629

if.then628:                                       ; preds = %if.then625
  store i32 12, ptr %BitsAvail, align 4
  br label %if.end638

if.else629:                                       ; preds = %if.then625
  %363 = load ptr, ptr %bitmap, align 8
  %364 = load ptr, ptr %cp, align 8
  %incdec.ptr630 = getelementptr inbounds i8, ptr %364, i32 1
  store ptr %incdec.ptr630, ptr %cp, align 8
  %365 = load i8, ptr %364, align 1
  %idxprom631 = zext i8 %365 to i64
  %arrayidx632 = getelementptr inbounds i8, ptr %363, i64 %idxprom631
  %366 = load i8, ptr %arrayidx632, align 1
  %conv633 = zext i8 %366 to i64
  %367 = load i32, ptr %BitsAvail, align 4
  %sh_prom634 = zext i32 %367 to i64
  %shl635 = shl i64 %conv633, %sh_prom634
  %368 = load i64, ptr %BitAcc, align 8
  %or636 = or i64 %368, %shl635
  store i64 %or636, ptr %BitAcc, align 8
  %369 = load i32, ptr %BitsAvail, align 4
  %add637 = add nsw i32 %369, 8
  store i32 %add637, ptr %BitsAvail, align 4
  br label %if.end638

if.end638:                                        ; preds = %if.else629, %if.then628
  br label %if.end639

if.end639:                                        ; preds = %if.end638, %if.else614
  br label %if.end640

if.end640:                                        ; preds = %if.end639, %if.end613
  br label %if.end641

if.end641:                                        ; preds = %if.end640, %do.body603
  br label %do.end642

do.end642:                                        ; preds = %if.end641
  %370 = load i64, ptr %BitAcc, align 8
  %and643 = and i64 %370, 4095
  %add.ptr644 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %and643
  store ptr %add.ptr644, ptr %TabEnt, align 8
  br label %do.body645

do.body645:                                       ; preds = %do.end642
  %371 = load ptr, ptr %TabEnt, align 8
  %Width646 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %371, i32 0, i32 1
  %372 = load i8, ptr %Width646, align 1
  %conv647 = zext i8 %372 to i32
  %373 = load i32, ptr %BitsAvail, align 4
  %sub648 = sub nsw i32 %373, %conv647
  store i32 %sub648, ptr %BitsAvail, align 4
  %374 = load ptr, ptr %TabEnt, align 8
  %Width649 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %374, i32 0, i32 1
  %375 = load i8, ptr %Width649, align 1
  %conv650 = zext i8 %375 to i32
  %376 = load i64, ptr %BitAcc, align 8
  %sh_prom651 = zext i32 %conv650 to i64
  %shr652 = lshr i64 %376, %sh_prom651
  store i64 %shr652, ptr %BitAcc, align 8
  br label %do.end653

do.end653:                                        ; preds = %do.body645
  br label %do.end654

do.end654:                                        ; preds = %do.end653
  %377 = load ptr, ptr %TabEnt, align 8
  %State655 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %377, i32 0, i32 0
  %378 = load i8, ptr %State655, align 8
  %conv656 = zext i8 %378 to i32
  switch i32 %conv656, label %sw.default677 [
    i32 7, label %sw.bb657
    i32 9, label %sw.bb668
    i32 11, label %sw.bb668
  ]

sw.bb657:                                         ; preds = %do.end654
  br label %do.body658

do.body658:                                       ; preds = %sw.bb657
  %379 = load i32, ptr %RunLength, align 4
  %conv659 = sext i32 %379 to i64
  %380 = load ptr, ptr %TabEnt, align 8
  %Param660 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %380, i32 0, i32 2
  %381 = load i64, ptr %Param660, align 8
  %add661 = add i64 %conv659, %381
  %382 = load ptr, ptr %pa, align 8
  %incdec.ptr662 = getelementptr inbounds i64, ptr %382, i32 1
  store ptr %incdec.ptr662, ptr %pa, align 8
  store i64 %add661, ptr %382, align 8
  %383 = load ptr, ptr %TabEnt, align 8
  %Param663 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %383, i32 0, i32 2
  %384 = load i64, ptr %Param663, align 8
  %385 = load i32, ptr %a0, align 4
  %conv664 = sext i32 %385 to i64
  %add665 = add i64 %conv664, %384
  %conv666 = trunc i64 %add665 to i32
  store i32 %conv666, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end667

do.end667:                                        ; preds = %do.body658
  br label %doneBlack2da

sw.bb668:                                         ; preds = %do.end654, %do.end654
  %386 = load ptr, ptr %TabEnt, align 8
  %Param669 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %386, i32 0, i32 2
  %387 = load i64, ptr %Param669, align 8
  %388 = load i32, ptr %a0, align 4
  %conv670 = sext i32 %388 to i64
  %add671 = add i64 %conv670, %387
  %conv672 = trunc i64 %add671 to i32
  store i32 %conv672, ptr %a0, align 4
  %389 = load ptr, ptr %TabEnt, align 8
  %Param673 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %389, i32 0, i32 2
  %390 = load i64, ptr %Param673, align 8
  %391 = load i32, ptr %RunLength, align 4
  %conv674 = sext i32 %391 to i64
  %add675 = add i64 %conv674, %390
  %conv676 = trunc i64 %add675 to i32
  store i32 %conv676, ptr %RunLength, align 4
  br label %sw.epilog678

sw.default677:                                    ; preds = %do.end654
  br label %badWhite2d

sw.epilog678:                                     ; preds = %sw.bb668
  br label %for.cond601

doneBlack2da:                                     ; preds = %do.end667
  br label %if.end836

if.else679:                                       ; preds = %sw.bb515
  br label %for.cond680

for.cond680:                                      ; preds = %sw.epilog757, %if.else679
  br label %do.body681

do.body681:                                       ; preds = %for.cond680
  br label %do.body682

do.body682:                                       ; preds = %do.body681
  %392 = load i32, ptr %BitsAvail, align 4
  %cmp683 = icmp slt i32 %392, 12
  br i1 %cmp683, label %if.then685, label %if.end720

if.then685:                                       ; preds = %do.body682
  %393 = load ptr, ptr %cp, align 8
  %394 = load ptr, ptr %ep, align 8
  %cmp686 = icmp uge ptr %393, %394
  br i1 %cmp686, label %if.then688, label %if.else693

if.then688:                                       ; preds = %if.then685
  %395 = load i32, ptr %BitsAvail, align 4
  %cmp689 = icmp eq i32 %395, 0
  br i1 %cmp689, label %if.then691, label %if.end692

if.then691:                                       ; preds = %if.then688
  br label %eof2d

if.end692:                                        ; preds = %if.then688
  store i32 12, ptr %BitsAvail, align 4
  br label %if.end719

if.else693:                                       ; preds = %if.then685
  %396 = load ptr, ptr %bitmap, align 8
  %397 = load ptr, ptr %cp, align 8
  %incdec.ptr694 = getelementptr inbounds i8, ptr %397, i32 1
  store ptr %incdec.ptr694, ptr %cp, align 8
  %398 = load i8, ptr %397, align 1
  %idxprom695 = zext i8 %398 to i64
  %arrayidx696 = getelementptr inbounds i8, ptr %396, i64 %idxprom695
  %399 = load i8, ptr %arrayidx696, align 1
  %conv697 = zext i8 %399 to i64
  %400 = load i32, ptr %BitsAvail, align 4
  %sh_prom698 = zext i32 %400 to i64
  %shl699 = shl i64 %conv697, %sh_prom698
  %401 = load i64, ptr %BitAcc, align 8
  %or700 = or i64 %401, %shl699
  store i64 %or700, ptr %BitAcc, align 8
  %402 = load i32, ptr %BitsAvail, align 4
  %add701 = add nsw i32 %402, 8
  store i32 %add701, ptr %BitsAvail, align 4
  %cmp702 = icmp slt i32 %add701, 12
  br i1 %cmp702, label %if.then704, label %if.end718

if.then704:                                       ; preds = %if.else693
  %403 = load ptr, ptr %cp, align 8
  %404 = load ptr, ptr %ep, align 8
  %cmp705 = icmp uge ptr %403, %404
  br i1 %cmp705, label %if.then707, label %if.else708

if.then707:                                       ; preds = %if.then704
  store i32 12, ptr %BitsAvail, align 4
  br label %if.end717

if.else708:                                       ; preds = %if.then704
  %405 = load ptr, ptr %bitmap, align 8
  %406 = load ptr, ptr %cp, align 8
  %incdec.ptr709 = getelementptr inbounds i8, ptr %406, i32 1
  store ptr %incdec.ptr709, ptr %cp, align 8
  %407 = load i8, ptr %406, align 1
  %idxprom710 = zext i8 %407 to i64
  %arrayidx711 = getelementptr inbounds i8, ptr %405, i64 %idxprom710
  %408 = load i8, ptr %arrayidx711, align 1
  %conv712 = zext i8 %408 to i64
  %409 = load i32, ptr %BitsAvail, align 4
  %sh_prom713 = zext i32 %409 to i64
  %shl714 = shl i64 %conv712, %sh_prom713
  %410 = load i64, ptr %BitAcc, align 8
  %or715 = or i64 %410, %shl714
  store i64 %or715, ptr %BitAcc, align 8
  %411 = load i32, ptr %BitsAvail, align 4
  %add716 = add nsw i32 %411, 8
  store i32 %add716, ptr %BitsAvail, align 4
  br label %if.end717

if.end717:                                        ; preds = %if.else708, %if.then707
  br label %if.end718

if.end718:                                        ; preds = %if.end717, %if.else693
  br label %if.end719

if.end719:                                        ; preds = %if.end718, %if.end692
  br label %if.end720

if.end720:                                        ; preds = %if.end719, %do.body682
  br label %do.end721

do.end721:                                        ; preds = %if.end720
  %412 = load i64, ptr %BitAcc, align 8
  %and722 = and i64 %412, 4095
  %add.ptr723 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %and722
  store ptr %add.ptr723, ptr %TabEnt, align 8
  br label %do.body724

do.body724:                                       ; preds = %do.end721
  %413 = load ptr, ptr %TabEnt, align 8
  %Width725 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %413, i32 0, i32 1
  %414 = load i8, ptr %Width725, align 1
  %conv726 = zext i8 %414 to i32
  %415 = load i32, ptr %BitsAvail, align 4
  %sub727 = sub nsw i32 %415, %conv726
  store i32 %sub727, ptr %BitsAvail, align 4
  %416 = load ptr, ptr %TabEnt, align 8
  %Width728 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %416, i32 0, i32 1
  %417 = load i8, ptr %Width728, align 1
  %conv729 = zext i8 %417 to i32
  %418 = load i64, ptr %BitAcc, align 8
  %sh_prom730 = zext i32 %conv729 to i64
  %shr731 = lshr i64 %418, %sh_prom730
  store i64 %shr731, ptr %BitAcc, align 8
  br label %do.end732

do.end732:                                        ; preds = %do.body724
  br label %do.end733

do.end733:                                        ; preds = %do.end732
  %419 = load ptr, ptr %TabEnt, align 8
  %State734 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %419, i32 0, i32 0
  %420 = load i8, ptr %State734, align 8
  %conv735 = zext i8 %420 to i32
  switch i32 %conv735, label %sw.default756 [
    i32 7, label %sw.bb736
    i32 9, label %sw.bb747
    i32 11, label %sw.bb747
  ]

sw.bb736:                                         ; preds = %do.end733
  br label %do.body737

do.body737:                                       ; preds = %sw.bb736
  %421 = load i32, ptr %RunLength, align 4
  %conv738 = sext i32 %421 to i64
  %422 = load ptr, ptr %TabEnt, align 8
  %Param739 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %422, i32 0, i32 2
  %423 = load i64, ptr %Param739, align 8
  %add740 = add i64 %conv738, %423
  %424 = load ptr, ptr %pa, align 8
  %incdec.ptr741 = getelementptr inbounds i64, ptr %424, i32 1
  store ptr %incdec.ptr741, ptr %pa, align 8
  store i64 %add740, ptr %424, align 8
  %425 = load ptr, ptr %TabEnt, align 8
  %Param742 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %425, i32 0, i32 2
  %426 = load i64, ptr %Param742, align 8
  %427 = load i32, ptr %a0, align 4
  %conv743 = sext i32 %427 to i64
  %add744 = add i64 %conv743, %426
  %conv745 = trunc i64 %add744 to i32
  store i32 %conv745, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end746

do.end746:                                        ; preds = %do.body737
  br label %doneWhite2db

sw.bb747:                                         ; preds = %do.end733, %do.end733
  %428 = load ptr, ptr %TabEnt, align 8
  %Param748 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %428, i32 0, i32 2
  %429 = load i64, ptr %Param748, align 8
  %430 = load i32, ptr %a0, align 4
  %conv749 = sext i32 %430 to i64
  %add750 = add i64 %conv749, %429
  %conv751 = trunc i64 %add750 to i32
  store i32 %conv751, ptr %a0, align 4
  %431 = load ptr, ptr %TabEnt, align 8
  %Param752 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %431, i32 0, i32 2
  %432 = load i64, ptr %Param752, align 8
  %433 = load i32, ptr %RunLength, align 4
  %conv753 = sext i32 %433 to i64
  %add754 = add i64 %conv753, %432
  %conv755 = trunc i64 %add754 to i32
  store i32 %conv755, ptr %RunLength, align 4
  br label %sw.epilog757

sw.default756:                                    ; preds = %do.end733
  br label %badWhite2d

sw.epilog757:                                     ; preds = %sw.bb747
  br label %for.cond680

doneWhite2db:                                     ; preds = %do.end746
  br label %for.cond758

for.cond758:                                      ; preds = %sw.epilog835, %doneWhite2db
  br label %do.body759

do.body759:                                       ; preds = %for.cond758
  br label %do.body760

do.body760:                                       ; preds = %do.body759
  %434 = load i32, ptr %BitsAvail, align 4
  %cmp761 = icmp slt i32 %434, 13
  br i1 %cmp761, label %if.then763, label %if.end798

if.then763:                                       ; preds = %do.body760
  %435 = load ptr, ptr %cp, align 8
  %436 = load ptr, ptr %ep, align 8
  %cmp764 = icmp uge ptr %435, %436
  br i1 %cmp764, label %if.then766, label %if.else771

if.then766:                                       ; preds = %if.then763
  %437 = load i32, ptr %BitsAvail, align 4
  %cmp767 = icmp eq i32 %437, 0
  br i1 %cmp767, label %if.then769, label %if.end770

if.then769:                                       ; preds = %if.then766
  br label %eof2d

if.end770:                                        ; preds = %if.then766
  store i32 13, ptr %BitsAvail, align 4
  br label %if.end797

if.else771:                                       ; preds = %if.then763
  %438 = load ptr, ptr %bitmap, align 8
  %439 = load ptr, ptr %cp, align 8
  %incdec.ptr772 = getelementptr inbounds i8, ptr %439, i32 1
  store ptr %incdec.ptr772, ptr %cp, align 8
  %440 = load i8, ptr %439, align 1
  %idxprom773 = zext i8 %440 to i64
  %arrayidx774 = getelementptr inbounds i8, ptr %438, i64 %idxprom773
  %441 = load i8, ptr %arrayidx774, align 1
  %conv775 = zext i8 %441 to i64
  %442 = load i32, ptr %BitsAvail, align 4
  %sh_prom776 = zext i32 %442 to i64
  %shl777 = shl i64 %conv775, %sh_prom776
  %443 = load i64, ptr %BitAcc, align 8
  %or778 = or i64 %443, %shl777
  store i64 %or778, ptr %BitAcc, align 8
  %444 = load i32, ptr %BitsAvail, align 4
  %add779 = add nsw i32 %444, 8
  store i32 %add779, ptr %BitsAvail, align 4
  %cmp780 = icmp slt i32 %add779, 13
  br i1 %cmp780, label %if.then782, label %if.end796

if.then782:                                       ; preds = %if.else771
  %445 = load ptr, ptr %cp, align 8
  %446 = load ptr, ptr %ep, align 8
  %cmp783 = icmp uge ptr %445, %446
  br i1 %cmp783, label %if.then785, label %if.else786

if.then785:                                       ; preds = %if.then782
  store i32 13, ptr %BitsAvail, align 4
  br label %if.end795

if.else786:                                       ; preds = %if.then782
  %447 = load ptr, ptr %bitmap, align 8
  %448 = load ptr, ptr %cp, align 8
  %incdec.ptr787 = getelementptr inbounds i8, ptr %448, i32 1
  store ptr %incdec.ptr787, ptr %cp, align 8
  %449 = load i8, ptr %448, align 1
  %idxprom788 = zext i8 %449 to i64
  %arrayidx789 = getelementptr inbounds i8, ptr %447, i64 %idxprom788
  %450 = load i8, ptr %arrayidx789, align 1
  %conv790 = zext i8 %450 to i64
  %451 = load i32, ptr %BitsAvail, align 4
  %sh_prom791 = zext i32 %451 to i64
  %shl792 = shl i64 %conv790, %sh_prom791
  %452 = load i64, ptr %BitAcc, align 8
  %or793 = or i64 %452, %shl792
  store i64 %or793, ptr %BitAcc, align 8
  %453 = load i32, ptr %BitsAvail, align 4
  %add794 = add nsw i32 %453, 8
  store i32 %add794, ptr %BitsAvail, align 4
  br label %if.end795

if.end795:                                        ; preds = %if.else786, %if.then785
  br label %if.end796

if.end796:                                        ; preds = %if.end795, %if.else771
  br label %if.end797

if.end797:                                        ; preds = %if.end796, %if.end770
  br label %if.end798

if.end798:                                        ; preds = %if.end797, %do.body760
  br label %do.end799

do.end799:                                        ; preds = %if.end798
  %454 = load i64, ptr %BitAcc, align 8
  %and800 = and i64 %454, 8191
  %add.ptr801 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %and800
  store ptr %add.ptr801, ptr %TabEnt, align 8
  br label %do.body802

do.body802:                                       ; preds = %do.end799
  %455 = load ptr, ptr %TabEnt, align 8
  %Width803 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %455, i32 0, i32 1
  %456 = load i8, ptr %Width803, align 1
  %conv804 = zext i8 %456 to i32
  %457 = load i32, ptr %BitsAvail, align 4
  %sub805 = sub nsw i32 %457, %conv804
  store i32 %sub805, ptr %BitsAvail, align 4
  %458 = load ptr, ptr %TabEnt, align 8
  %Width806 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %458, i32 0, i32 1
  %459 = load i8, ptr %Width806, align 1
  %conv807 = zext i8 %459 to i32
  %460 = load i64, ptr %BitAcc, align 8
  %sh_prom808 = zext i32 %conv807 to i64
  %shr809 = lshr i64 %460, %sh_prom808
  store i64 %shr809, ptr %BitAcc, align 8
  br label %do.end810

do.end810:                                        ; preds = %do.body802
  br label %do.end811

do.end811:                                        ; preds = %do.end810
  %461 = load ptr, ptr %TabEnt, align 8
  %State812 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %461, i32 0, i32 0
  %462 = load i8, ptr %State812, align 8
  %conv813 = zext i8 %462 to i32
  switch i32 %conv813, label %sw.default834 [
    i32 8, label %sw.bb814
    i32 10, label %sw.bb825
    i32 11, label %sw.bb825
  ]

sw.bb814:                                         ; preds = %do.end811
  br label %do.body815

do.body815:                                       ; preds = %sw.bb814
  %463 = load i32, ptr %RunLength, align 4
  %conv816 = sext i32 %463 to i64
  %464 = load ptr, ptr %TabEnt, align 8
  %Param817 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %464, i32 0, i32 2
  %465 = load i64, ptr %Param817, align 8
  %add818 = add i64 %conv816, %465
  %466 = load ptr, ptr %pa, align 8
  %incdec.ptr819 = getelementptr inbounds i64, ptr %466, i32 1
  store ptr %incdec.ptr819, ptr %pa, align 8
  store i64 %add818, ptr %466, align 8
  %467 = load ptr, ptr %TabEnt, align 8
  %Param820 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %467, i32 0, i32 2
  %468 = load i64, ptr %Param820, align 8
  %469 = load i32, ptr %a0, align 4
  %conv821 = sext i32 %469 to i64
  %add822 = add i64 %conv821, %468
  %conv823 = trunc i64 %add822 to i32
  store i32 %conv823, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end824

do.end824:                                        ; preds = %do.body815
  br label %doneBlack2db

sw.bb825:                                         ; preds = %do.end811, %do.end811
  %470 = load ptr, ptr %TabEnt, align 8
  %Param826 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %470, i32 0, i32 2
  %471 = load i64, ptr %Param826, align 8
  %472 = load i32, ptr %a0, align 4
  %conv827 = sext i32 %472 to i64
  %add828 = add i64 %conv827, %471
  %conv829 = trunc i64 %add828 to i32
  store i32 %conv829, ptr %a0, align 4
  %473 = load ptr, ptr %TabEnt, align 8
  %Param830 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %473, i32 0, i32 2
  %474 = load i64, ptr %Param830, align 8
  %475 = load i32, ptr %RunLength, align 4
  %conv831 = sext i32 %475 to i64
  %add832 = add i64 %conv831, %474
  %conv833 = trunc i64 %add832 to i32
  store i32 %conv833, ptr %RunLength, align 4
  br label %sw.epilog835

sw.default834:                                    ; preds = %do.end811
  br label %badBlack2d

sw.epilog835:                                     ; preds = %sw.bb825
  br label %for.cond758

doneBlack2db:                                     ; preds = %do.end824
  br label %if.end836

if.end836:                                        ; preds = %doneBlack2db, %doneBlack2da
  br label %do.body837

do.body837:                                       ; preds = %if.end836
  %476 = load ptr, ptr %pa, align 8
  %477 = load ptr, ptr %thisrun, align 8
  %cmp838 = icmp ne ptr %476, %477
  br i1 %cmp838, label %if.then840, label %if.end857

if.then840:                                       ; preds = %do.body837
  br label %while.cond841

while.cond841:                                    ; preds = %while.body848, %if.then840
  %478 = load i32, ptr %b1, align 4
  %479 = load i32, ptr %a0, align 4
  %cmp842 = icmp sle i32 %478, %479
  br i1 %cmp842, label %land.rhs844, label %land.end847

land.rhs844:                                      ; preds = %while.cond841
  %480 = load i32, ptr %b1, align 4
  %481 = load i32, ptr %lastx, align 4
  %cmp845 = icmp slt i32 %480, %481
  br label %land.end847

land.end847:                                      ; preds = %land.rhs844, %while.cond841
  %482 = phi i1 [ false, %while.cond841 ], [ %cmp845, %land.rhs844 ]
  br i1 %482, label %while.body848, label %while.end856

while.body848:                                    ; preds = %land.end847
  %483 = load ptr, ptr %pb, align 8
  %arrayidx849 = getelementptr inbounds i64, ptr %483, i64 0
  %484 = load i64, ptr %arrayidx849, align 8
  %485 = load ptr, ptr %pb, align 8
  %arrayidx850 = getelementptr inbounds i64, ptr %485, i64 1
  %486 = load i64, ptr %arrayidx850, align 8
  %add851 = add i64 %484, %486
  %487 = load i32, ptr %b1, align 4
  %conv852 = sext i32 %487 to i64
  %add853 = add i64 %conv852, %add851
  %conv854 = trunc i64 %add853 to i32
  store i32 %conv854, ptr %b1, align 4
  %488 = load ptr, ptr %pb, align 8
  %add.ptr855 = getelementptr inbounds i64, ptr %488, i64 2
  store ptr %add.ptr855, ptr %pb, align 8
  br label %while.cond841, !llvm.loop !36

while.end856:                                     ; preds = %land.end847
  br label %if.end857

if.end857:                                        ; preds = %while.end856, %do.body837
  br label %do.end858

do.end858:                                        ; preds = %if.end857
  br label %sw.epilog1099

sw.bb859:                                         ; preds = %do.end479
  br label %do.body860

do.body860:                                       ; preds = %sw.bb859
  %489 = load ptr, ptr %pa, align 8
  %490 = load ptr, ptr %thisrun, align 8
  %cmp861 = icmp ne ptr %489, %490
  br i1 %cmp861, label %if.then863, label %if.end880

if.then863:                                       ; preds = %do.body860
  br label %while.cond864

while.cond864:                                    ; preds = %while.body871, %if.then863
  %491 = load i32, ptr %b1, align 4
  %492 = load i32, ptr %a0, align 4
  %cmp865 = icmp sle i32 %491, %492
  br i1 %cmp865, label %land.rhs867, label %land.end870

land.rhs867:                                      ; preds = %while.cond864
  %493 = load i32, ptr %b1, align 4
  %494 = load i32, ptr %lastx, align 4
  %cmp868 = icmp slt i32 %493, %494
  br label %land.end870

land.end870:                                      ; preds = %land.rhs867, %while.cond864
  %495 = phi i1 [ false, %while.cond864 ], [ %cmp868, %land.rhs867 ]
  br i1 %495, label %while.body871, label %while.end879

while.body871:                                    ; preds = %land.end870
  %496 = load ptr, ptr %pb, align 8
  %arrayidx872 = getelementptr inbounds i64, ptr %496, i64 0
  %497 = load i64, ptr %arrayidx872, align 8
  %498 = load ptr, ptr %pb, align 8
  %arrayidx873 = getelementptr inbounds i64, ptr %498, i64 1
  %499 = load i64, ptr %arrayidx873, align 8
  %add874 = add i64 %497, %499
  %500 = load i32, ptr %b1, align 4
  %conv875 = sext i32 %500 to i64
  %add876 = add i64 %conv875, %add874
  %conv877 = trunc i64 %add876 to i32
  store i32 %conv877, ptr %b1, align 4
  %501 = load ptr, ptr %pb, align 8
  %add.ptr878 = getelementptr inbounds i64, ptr %501, i64 2
  store ptr %add.ptr878, ptr %pb, align 8
  br label %while.cond864, !llvm.loop !37

while.end879:                                     ; preds = %land.end870
  br label %if.end880

if.end880:                                        ; preds = %while.end879, %do.body860
  br label %do.end881

do.end881:                                        ; preds = %if.end880
  br label %do.body882

do.body882:                                       ; preds = %do.end881
  %502 = load i32, ptr %RunLength, align 4
  %503 = load i32, ptr %b1, align 4
  %504 = load i32, ptr %a0, align 4
  %sub883 = sub nsw i32 %503, %504
  %add884 = add nsw i32 %502, %sub883
  %conv885 = sext i32 %add884 to i64
  %505 = load ptr, ptr %pa, align 8
  %incdec.ptr886 = getelementptr inbounds i64, ptr %505, i32 1
  store ptr %incdec.ptr886, ptr %pa, align 8
  store i64 %conv885, ptr %505, align 8
  %506 = load i32, ptr %b1, align 4
  %507 = load i32, ptr %a0, align 4
  %sub887 = sub nsw i32 %506, %507
  %508 = load i32, ptr %a0, align 4
  %add888 = add nsw i32 %508, %sub887
  store i32 %add888, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end889

do.end889:                                        ; preds = %do.body882
  %509 = load ptr, ptr %pb, align 8
  %incdec.ptr890 = getelementptr inbounds i64, ptr %509, i32 1
  store ptr %incdec.ptr890, ptr %pb, align 8
  %510 = load i64, ptr %509, align 8
  %511 = load i32, ptr %b1, align 4
  %conv891 = sext i32 %511 to i64
  %add892 = add i64 %conv891, %510
  %conv893 = trunc i64 %add892 to i32
  store i32 %conv893, ptr %b1, align 4
  br label %sw.epilog1099

sw.bb894:                                         ; preds = %do.end479
  br label %do.body895

do.body895:                                       ; preds = %sw.bb894
  %512 = load ptr, ptr %pa, align 8
  %513 = load ptr, ptr %thisrun, align 8
  %cmp896 = icmp ne ptr %512, %513
  br i1 %cmp896, label %if.then898, label %if.end915

if.then898:                                       ; preds = %do.body895
  br label %while.cond899

while.cond899:                                    ; preds = %while.body906, %if.then898
  %514 = load i32, ptr %b1, align 4
  %515 = load i32, ptr %a0, align 4
  %cmp900 = icmp sle i32 %514, %515
  br i1 %cmp900, label %land.rhs902, label %land.end905

land.rhs902:                                      ; preds = %while.cond899
  %516 = load i32, ptr %b1, align 4
  %517 = load i32, ptr %lastx, align 4
  %cmp903 = icmp slt i32 %516, %517
  br label %land.end905

land.end905:                                      ; preds = %land.rhs902, %while.cond899
  %518 = phi i1 [ false, %while.cond899 ], [ %cmp903, %land.rhs902 ]
  br i1 %518, label %while.body906, label %while.end914

while.body906:                                    ; preds = %land.end905
  %519 = load ptr, ptr %pb, align 8
  %arrayidx907 = getelementptr inbounds i64, ptr %519, i64 0
  %520 = load i64, ptr %arrayidx907, align 8
  %521 = load ptr, ptr %pb, align 8
  %arrayidx908 = getelementptr inbounds i64, ptr %521, i64 1
  %522 = load i64, ptr %arrayidx908, align 8
  %add909 = add i64 %520, %522
  %523 = load i32, ptr %b1, align 4
  %conv910 = sext i32 %523 to i64
  %add911 = add i64 %conv910, %add909
  %conv912 = trunc i64 %add911 to i32
  store i32 %conv912, ptr %b1, align 4
  %524 = load ptr, ptr %pb, align 8
  %add.ptr913 = getelementptr inbounds i64, ptr %524, i64 2
  store ptr %add.ptr913, ptr %pb, align 8
  br label %while.cond899, !llvm.loop !38

while.end914:                                     ; preds = %land.end905
  br label %if.end915

if.end915:                                        ; preds = %while.end914, %do.body895
  br label %do.end916

do.end916:                                        ; preds = %if.end915
  br label %do.body917

do.body917:                                       ; preds = %do.end916
  %525 = load i32, ptr %RunLength, align 4
  %conv918 = sext i32 %525 to i64
  %526 = load i32, ptr %b1, align 4
  %527 = load i32, ptr %a0, align 4
  %sub919 = sub nsw i32 %526, %527
  %conv920 = sext i32 %sub919 to i64
  %528 = load ptr, ptr %TabEnt, align 8
  %Param921 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %528, i32 0, i32 2
  %529 = load i64, ptr %Param921, align 8
  %add922 = add i64 %conv920, %529
  %add923 = add i64 %conv918, %add922
  %530 = load ptr, ptr %pa, align 8
  %incdec.ptr924 = getelementptr inbounds i64, ptr %530, i32 1
  store ptr %incdec.ptr924, ptr %pa, align 8
  store i64 %add923, ptr %530, align 8
  %531 = load i32, ptr %b1, align 4
  %532 = load i32, ptr %a0, align 4
  %sub925 = sub nsw i32 %531, %532
  %conv926 = sext i32 %sub925 to i64
  %533 = load ptr, ptr %TabEnt, align 8
  %Param927 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %533, i32 0, i32 2
  %534 = load i64, ptr %Param927, align 8
  %add928 = add i64 %conv926, %534
  %535 = load i32, ptr %a0, align 4
  %conv929 = sext i32 %535 to i64
  %add930 = add i64 %conv929, %add928
  %conv931 = trunc i64 %add930 to i32
  store i32 %conv931, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end932

do.end932:                                        ; preds = %do.body917
  %536 = load ptr, ptr %pb, align 8
  %incdec.ptr933 = getelementptr inbounds i64, ptr %536, i32 1
  store ptr %incdec.ptr933, ptr %pb, align 8
  %537 = load i64, ptr %536, align 8
  %538 = load i32, ptr %b1, align 4
  %conv934 = sext i32 %538 to i64
  %add935 = add i64 %conv934, %537
  %conv936 = trunc i64 %add935 to i32
  store i32 %conv936, ptr %b1, align 4
  br label %sw.epilog1099

sw.bb937:                                         ; preds = %do.end479
  br label %do.body938

do.body938:                                       ; preds = %sw.bb937
  %539 = load ptr, ptr %pa, align 8
  %540 = load ptr, ptr %thisrun, align 8
  %cmp939 = icmp ne ptr %539, %540
  br i1 %cmp939, label %if.then941, label %if.end958

if.then941:                                       ; preds = %do.body938
  br label %while.cond942

while.cond942:                                    ; preds = %while.body949, %if.then941
  %541 = load i32, ptr %b1, align 4
  %542 = load i32, ptr %a0, align 4
  %cmp943 = icmp sle i32 %541, %542
  br i1 %cmp943, label %land.rhs945, label %land.end948

land.rhs945:                                      ; preds = %while.cond942
  %543 = load i32, ptr %b1, align 4
  %544 = load i32, ptr %lastx, align 4
  %cmp946 = icmp slt i32 %543, %544
  br label %land.end948

land.end948:                                      ; preds = %land.rhs945, %while.cond942
  %545 = phi i1 [ false, %while.cond942 ], [ %cmp946, %land.rhs945 ]
  br i1 %545, label %while.body949, label %while.end957

while.body949:                                    ; preds = %land.end948
  %546 = load ptr, ptr %pb, align 8
  %arrayidx950 = getelementptr inbounds i64, ptr %546, i64 0
  %547 = load i64, ptr %arrayidx950, align 8
  %548 = load ptr, ptr %pb, align 8
  %arrayidx951 = getelementptr inbounds i64, ptr %548, i64 1
  %549 = load i64, ptr %arrayidx951, align 8
  %add952 = add i64 %547, %549
  %550 = load i32, ptr %b1, align 4
  %conv953 = sext i32 %550 to i64
  %add954 = add i64 %conv953, %add952
  %conv955 = trunc i64 %add954 to i32
  store i32 %conv955, ptr %b1, align 4
  %551 = load ptr, ptr %pb, align 8
  %add.ptr956 = getelementptr inbounds i64, ptr %551, i64 2
  store ptr %add.ptr956, ptr %pb, align 8
  br label %while.cond942, !llvm.loop !39

while.end957:                                     ; preds = %land.end948
  br label %if.end958

if.end958:                                        ; preds = %while.end957, %do.body938
  br label %do.end959

do.end959:                                        ; preds = %if.end958
  br label %do.body960

do.body960:                                       ; preds = %do.end959
  %552 = load i32, ptr %RunLength, align 4
  %conv961 = sext i32 %552 to i64
  %553 = load i32, ptr %b1, align 4
  %554 = load i32, ptr %a0, align 4
  %sub962 = sub nsw i32 %553, %554
  %conv963 = sext i32 %sub962 to i64
  %555 = load ptr, ptr %TabEnt, align 8
  %Param964 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %555, i32 0, i32 2
  %556 = load i64, ptr %Param964, align 8
  %sub965 = sub i64 %conv963, %556
  %add966 = add i64 %conv961, %sub965
  %557 = load ptr, ptr %pa, align 8
  %incdec.ptr967 = getelementptr inbounds i64, ptr %557, i32 1
  store ptr %incdec.ptr967, ptr %pa, align 8
  store i64 %add966, ptr %557, align 8
  %558 = load i32, ptr %b1, align 4
  %559 = load i32, ptr %a0, align 4
  %sub968 = sub nsw i32 %558, %559
  %conv969 = sext i32 %sub968 to i64
  %560 = load ptr, ptr %TabEnt, align 8
  %Param970 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %560, i32 0, i32 2
  %561 = load i64, ptr %Param970, align 8
  %sub971 = sub i64 %conv969, %561
  %562 = load i32, ptr %a0, align 4
  %conv972 = sext i32 %562 to i64
  %add973 = add i64 %conv972, %sub971
  %conv974 = trunc i64 %add973 to i32
  store i32 %conv974, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end975

do.end975:                                        ; preds = %do.body960
  %563 = load ptr, ptr %pb, align 8
  %incdec.ptr976 = getelementptr inbounds i64, ptr %563, i32 -1
  store ptr %incdec.ptr976, ptr %pb, align 8
  %564 = load i64, ptr %incdec.ptr976, align 8
  %565 = load i32, ptr %b1, align 4
  %conv977 = sext i32 %565 to i64
  %sub978 = sub i64 %conv977, %564
  %conv979 = trunc i64 %sub978 to i32
  store i32 %conv979, ptr %b1, align 4
  br label %sw.epilog1099

sw.bb980:                                         ; preds = %do.end479
  %566 = load i32, ptr %lastx, align 4
  %567 = load i32, ptr %a0, align 4
  %sub981 = sub nsw i32 %566, %567
  %conv982 = sext i32 %sub981 to i64
  %568 = load ptr, ptr %pa, align 8
  %incdec.ptr983 = getelementptr inbounds i64, ptr %568, i32 1
  store ptr %incdec.ptr983, ptr %pa, align 8
  store i64 %conv982, ptr %568, align 8
  %569 = load ptr, ptr %tif.addr, align 8
  %570 = load i32, ptr %a0, align 4
  %conv984 = sext i32 %570 to i64
  call void @Fax3Extension(ptr noundef @Fax3Decode2D.module, ptr noundef %569, i64 noundef %conv984)
  br label %eol2d

sw.bb985:                                         ; preds = %do.end479
  %571 = load i32, ptr %lastx, align 4
  %572 = load i32, ptr %a0, align 4
  %sub986 = sub nsw i32 %571, %572
  %conv987 = sext i32 %sub986 to i64
  %573 = load ptr, ptr %pa, align 8
  %incdec.ptr988 = getelementptr inbounds i64, ptr %573, i32 1
  store ptr %incdec.ptr988, ptr %pa, align 8
  store i64 %conv987, ptr %573, align 8
  br label %do.body989

do.body989:                                       ; preds = %sw.bb985
  %574 = load i32, ptr %BitsAvail, align 4
  %cmp990 = icmp slt i32 %574, 5
  br i1 %cmp990, label %if.then992, label %if.end1010

if.then992:                                       ; preds = %do.body989
  %575 = load ptr, ptr %cp, align 8
  %576 = load ptr, ptr %ep, align 8
  %cmp993 = icmp uge ptr %575, %576
  br i1 %cmp993, label %if.then995, label %if.else1000

if.then995:                                       ; preds = %if.then992
  %577 = load i32, ptr %BitsAvail, align 4
  %cmp996 = icmp eq i32 %577, 0
  br i1 %cmp996, label %if.then998, label %if.end999

if.then998:                                       ; preds = %if.then995
  br label %eof2d

if.end999:                                        ; preds = %if.then995
  store i32 5, ptr %BitsAvail, align 4
  br label %if.end1009

if.else1000:                                      ; preds = %if.then992
  %578 = load ptr, ptr %bitmap, align 8
  %579 = load ptr, ptr %cp, align 8
  %incdec.ptr1001 = getelementptr inbounds i8, ptr %579, i32 1
  store ptr %incdec.ptr1001, ptr %cp, align 8
  %580 = load i8, ptr %579, align 1
  %idxprom1002 = zext i8 %580 to i64
  %arrayidx1003 = getelementptr inbounds i8, ptr %578, i64 %idxprom1002
  %581 = load i8, ptr %arrayidx1003, align 1
  %conv1004 = zext i8 %581 to i64
  %582 = load i32, ptr %BitsAvail, align 4
  %sh_prom1005 = zext i32 %582 to i64
  %shl1006 = shl i64 %conv1004, %sh_prom1005
  %583 = load i64, ptr %BitAcc, align 8
  %or1007 = or i64 %583, %shl1006
  store i64 %or1007, ptr %BitAcc, align 8
  %584 = load i32, ptr %BitsAvail, align 4
  %add1008 = add nsw i32 %584, 8
  store i32 %add1008, ptr %BitsAvail, align 4
  br label %if.end1009

if.end1009:                                       ; preds = %if.else1000, %if.end999
  br label %if.end1010

if.end1010:                                       ; preds = %if.end1009, %do.body989
  br label %do.end1011

do.end1011:                                       ; preds = %if.end1010
  %585 = load i64, ptr %BitAcc, align 8
  %and1012 = and i64 %585, 31
  %tobool1013 = icmp ne i64 %and1012, 0
  br i1 %tobool1013, label %if.then1014, label %if.end1016

if.then1014:                                      ; preds = %do.end1011
  %586 = load ptr, ptr %tif.addr, align 8
  %587 = load i32, ptr %a0, align 4
  %conv1015 = sext i32 %587 to i64
  call void @Fax3Unexpected(ptr noundef @Fax3Decode2D.module, ptr noundef %586, i64 noundef %conv1015)
  br label %if.end1016

if.end1016:                                       ; preds = %if.then1014, %do.end1011
  store i32 1, ptr %EOLcnt, align 4
  br label %eol2d

sw.default1017:                                   ; preds = %do.end479
  br label %badMain2d

badMain2d:                                        ; preds = %if.then1132, %sw.default1017
  %588 = load ptr, ptr %tif.addr, align 8
  %589 = load i32, ptr %a0, align 4
  %conv1018 = sext i32 %589 to i64
  call void @Fax3Unexpected(ptr noundef @Fax3Decode2D.module, ptr noundef %588, i64 noundef %conv1018)
  br label %eol2d

badBlack2d:                                       ; preds = %sw.default834, %sw.default599
  %590 = load ptr, ptr %tif.addr, align 8
  %591 = load i32, ptr %a0, align 4
  %conv1019 = sext i32 %591 to i64
  call void @Fax3Unexpected(ptr noundef @Fax3Decode2D.module, ptr noundef %590, i64 noundef %conv1019)
  br label %eol2d

badWhite2d:                                       ; preds = %sw.default756, %sw.default677
  %592 = load ptr, ptr %tif.addr, align 8
  %593 = load i32, ptr %a0, align 4
  %conv1020 = sext i32 %593 to i64
  call void @Fax3Unexpected(ptr noundef @Fax3Decode2D.module, ptr noundef %592, i64 noundef %conv1020)
  br label %eol2d

eof2d:                                            ; preds = %if.then1116, %if.then998, %if.then769, %if.then691, %if.then612, %if.then534, %if.then454
  %594 = load ptr, ptr %tif.addr, align 8
  %595 = load i32, ptr %a0, align 4
  %conv1021 = sext i32 %595 to i64
  call void @Fax3PrematureEOF(ptr noundef @Fax3Decode2D.module, ptr noundef %594, i64 noundef %conv1021)
  br label %do.body1022

do.body1022:                                      ; preds = %eof2d
  %596 = load i32, ptr %RunLength, align 4
  %tobool1023 = icmp ne i32 %596, 0
  br i1 %tobool1023, label %if.then1024, label %if.end1031

if.then1024:                                      ; preds = %do.body1022
  br label %do.body1025

do.body1025:                                      ; preds = %if.then1024
  %597 = load i32, ptr %RunLength, align 4
  %add1026 = add nsw i32 %597, 0
  %conv1027 = sext i32 %add1026 to i64
  %598 = load ptr, ptr %pa, align 8
  %incdec.ptr1028 = getelementptr inbounds i64, ptr %598, i32 1
  store ptr %incdec.ptr1028, ptr %pa, align 8
  store i64 %conv1027, ptr %598, align 8
  %599 = load i32, ptr %a0, align 4
  %add1029 = add nsw i32 %599, 0
  store i32 %add1029, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1030

do.end1030:                                       ; preds = %do.body1025
  br label %if.end1031

if.end1031:                                       ; preds = %do.end1030, %do.body1022
  %600 = load i32, ptr %a0, align 4
  %601 = load i32, ptr %lastx, align 4
  %cmp1032 = icmp ne i32 %600, %601
  br i1 %cmp1032, label %if.then1034, label %if.end1097

if.then1034:                                      ; preds = %if.end1031
  %602 = load ptr, ptr %tif.addr, align 8
  %603 = load i32, ptr %a0, align 4
  %conv1035 = sext i32 %603 to i64
  %604 = load i32, ptr %lastx, align 4
  %conv1036 = sext i32 %604 to i64
  call void @Fax3BadLength(ptr noundef @Fax3Decode2D.module, ptr noundef %602, i64 noundef %conv1035, i64 noundef %conv1036)
  br label %while.cond1037

while.cond1037:                                   ; preds = %while.body1044, %if.then1034
  %605 = load i32, ptr %a0, align 4
  %606 = load i32, ptr %lastx, align 4
  %cmp1038 = icmp sgt i32 %605, %606
  br i1 %cmp1038, label %land.rhs1040, label %land.end1043

land.rhs1040:                                     ; preds = %while.cond1037
  %607 = load ptr, ptr %pa, align 8
  %608 = load ptr, ptr %thisrun, align 8
  %cmp1041 = icmp ugt ptr %607, %608
  br label %land.end1043

land.end1043:                                     ; preds = %land.rhs1040, %while.cond1037
  %609 = phi i1 [ false, %while.cond1037 ], [ %cmp1041, %land.rhs1040 ]
  br i1 %609, label %while.body1044, label %while.end1049

while.body1044:                                   ; preds = %land.end1043
  %610 = load ptr, ptr %pa, align 8
  %incdec.ptr1045 = getelementptr inbounds i64, ptr %610, i32 -1
  store ptr %incdec.ptr1045, ptr %pa, align 8
  %611 = load i64, ptr %incdec.ptr1045, align 8
  %612 = load i32, ptr %a0, align 4
  %conv1046 = sext i32 %612 to i64
  %sub1047 = sub i64 %conv1046, %611
  %conv1048 = trunc i64 %sub1047 to i32
  store i32 %conv1048, ptr %a0, align 4
  br label %while.cond1037, !llvm.loop !40

while.end1049:                                    ; preds = %land.end1043
  %613 = load i32, ptr %a0, align 4
  %614 = load i32, ptr %lastx, align 4
  %cmp1050 = icmp slt i32 %613, %614
  br i1 %cmp1050, label %if.then1052, label %if.else1079

if.then1052:                                      ; preds = %while.end1049
  %615 = load i32, ptr %a0, align 4
  %cmp1053 = icmp slt i32 %615, 0
  br i1 %cmp1053, label %if.then1055, label %if.end1056

if.then1055:                                      ; preds = %if.then1052
  store i32 0, ptr %a0, align 4
  br label %if.end1056

if.end1056:                                       ; preds = %if.then1055, %if.then1052
  %616 = load ptr, ptr %pa, align 8
  %617 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast1057 = ptrtoint ptr %616 to i64
  %sub.ptr.rhs.cast1058 = ptrtoint ptr %617 to i64
  %sub.ptr.sub1059 = sub i64 %sub.ptr.lhs.cast1057, %sub.ptr.rhs.cast1058
  %sub.ptr.div1060 = sdiv exact i64 %sub.ptr.sub1059, 8
  %and1061 = and i64 %sub.ptr.div1060, 1
  %tobool1062 = icmp ne i64 %and1061, 0
  br i1 %tobool1062, label %if.then1063, label %if.end1070

if.then1063:                                      ; preds = %if.end1056
  br label %do.body1064

do.body1064:                                      ; preds = %if.then1063
  %618 = load i32, ptr %RunLength, align 4
  %add1065 = add nsw i32 %618, 0
  %conv1066 = sext i32 %add1065 to i64
  %619 = load ptr, ptr %pa, align 8
  %incdec.ptr1067 = getelementptr inbounds i64, ptr %619, i32 1
  store ptr %incdec.ptr1067, ptr %pa, align 8
  store i64 %conv1066, ptr %619, align 8
  %620 = load i32, ptr %a0, align 4
  %add1068 = add nsw i32 %620, 0
  store i32 %add1068, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1069

do.end1069:                                       ; preds = %do.body1064
  br label %if.end1070

if.end1070:                                       ; preds = %do.end1069, %if.end1056
  br label %do.body1071

do.body1071:                                      ; preds = %if.end1070
  %621 = load i32, ptr %RunLength, align 4
  %622 = load i32, ptr %lastx, align 4
  %623 = load i32, ptr %a0, align 4
  %sub1072 = sub nsw i32 %622, %623
  %add1073 = add nsw i32 %621, %sub1072
  %conv1074 = sext i32 %add1073 to i64
  %624 = load ptr, ptr %pa, align 8
  %incdec.ptr1075 = getelementptr inbounds i64, ptr %624, i32 1
  store ptr %incdec.ptr1075, ptr %pa, align 8
  store i64 %conv1074, ptr %624, align 8
  %625 = load i32, ptr %lastx, align 4
  %626 = load i32, ptr %a0, align 4
  %sub1076 = sub nsw i32 %625, %626
  %627 = load i32, ptr %a0, align 4
  %add1077 = add nsw i32 %627, %sub1076
  store i32 %add1077, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1078

do.end1078:                                       ; preds = %do.body1071
  br label %if.end1096

if.else1079:                                      ; preds = %while.end1049
  %628 = load i32, ptr %a0, align 4
  %629 = load i32, ptr %lastx, align 4
  %cmp1080 = icmp sgt i32 %628, %629
  br i1 %cmp1080, label %if.then1082, label %if.end1095

if.then1082:                                      ; preds = %if.else1079
  br label %do.body1083

do.body1083:                                      ; preds = %if.then1082
  %630 = load i32, ptr %RunLength, align 4
  %631 = load i32, ptr %lastx, align 4
  %add1084 = add nsw i32 %630, %631
  %conv1085 = sext i32 %add1084 to i64
  %632 = load ptr, ptr %pa, align 8
  %incdec.ptr1086 = getelementptr inbounds i64, ptr %632, i32 1
  store ptr %incdec.ptr1086, ptr %pa, align 8
  store i64 %conv1085, ptr %632, align 8
  %633 = load i32, ptr %lastx, align 4
  %634 = load i32, ptr %a0, align 4
  %add1087 = add nsw i32 %634, %633
  store i32 %add1087, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1088

do.end1088:                                       ; preds = %do.body1083
  br label %do.body1089

do.body1089:                                      ; preds = %do.end1088
  %635 = load i32, ptr %RunLength, align 4
  %add1090 = add nsw i32 %635, 0
  %conv1091 = sext i32 %add1090 to i64
  %636 = load ptr, ptr %pa, align 8
  %incdec.ptr1092 = getelementptr inbounds i64, ptr %636, i32 1
  store ptr %incdec.ptr1092, ptr %pa, align 8
  store i64 %conv1091, ptr %636, align 8
  %637 = load i32, ptr %a0, align 4
  %add1093 = add nsw i32 %637, 0
  store i32 %add1093, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1094

do.end1094:                                       ; preds = %do.body1089
  br label %if.end1095

if.end1095:                                       ; preds = %do.end1094, %if.else1079
  br label %if.end1096

if.end1096:                                       ; preds = %if.end1095, %do.end1078
  br label %if.end1097

if.end1097:                                       ; preds = %if.end1096, %if.end1031
  br label %do.end1098

do.end1098:                                       ; preds = %if.end1097
  br label %EOF2Da

sw.epilog1099:                                    ; preds = %do.end975, %do.end932, %do.end889, %do.end858, %do.end504
  br label %while.cond440, !llvm.loop !41

while.end1100:                                    ; preds = %while.cond440
  %638 = load i32, ptr %RunLength, align 4
  %tobool1101 = icmp ne i32 %638, 0
  br i1 %tobool1101, label %if.then1102, label %if.end1145

if.then1102:                                      ; preds = %while.end1100
  %639 = load i32, ptr %RunLength, align 4
  %640 = load i32, ptr %a0, align 4
  %add1103 = add nsw i32 %639, %640
  %641 = load i32, ptr %lastx, align 4
  %cmp1104 = icmp slt i32 %add1103, %641
  br i1 %cmp1104, label %if.then1106, label %if.end1138

if.then1106:                                      ; preds = %if.then1102
  br label %do.body1107

do.body1107:                                      ; preds = %if.then1106
  %642 = load i32, ptr %BitsAvail, align 4
  %cmp1108 = icmp slt i32 %642, 1
  br i1 %cmp1108, label %if.then1110, label %if.end1128

if.then1110:                                      ; preds = %do.body1107
  %643 = load ptr, ptr %cp, align 8
  %644 = load ptr, ptr %ep, align 8
  %cmp1111 = icmp uge ptr %643, %644
  br i1 %cmp1111, label %if.then1113, label %if.else1118

if.then1113:                                      ; preds = %if.then1110
  %645 = load i32, ptr %BitsAvail, align 4
  %cmp1114 = icmp eq i32 %645, 0
  br i1 %cmp1114, label %if.then1116, label %if.end1117

if.then1116:                                      ; preds = %if.then1113
  br label %eof2d

if.end1117:                                       ; preds = %if.then1113
  store i32 1, ptr %BitsAvail, align 4
  br label %if.end1127

if.else1118:                                      ; preds = %if.then1110
  %646 = load ptr, ptr %bitmap, align 8
  %647 = load ptr, ptr %cp, align 8
  %incdec.ptr1119 = getelementptr inbounds i8, ptr %647, i32 1
  store ptr %incdec.ptr1119, ptr %cp, align 8
  %648 = load i8, ptr %647, align 1
  %idxprom1120 = zext i8 %648 to i64
  %arrayidx1121 = getelementptr inbounds i8, ptr %646, i64 %idxprom1120
  %649 = load i8, ptr %arrayidx1121, align 1
  %conv1122 = zext i8 %649 to i64
  %650 = load i32, ptr %BitsAvail, align 4
  %sh_prom1123 = zext i32 %650 to i64
  %shl1124 = shl i64 %conv1122, %sh_prom1123
  %651 = load i64, ptr %BitAcc, align 8
  %or1125 = or i64 %651, %shl1124
  store i64 %or1125, ptr %BitAcc, align 8
  %652 = load i32, ptr %BitsAvail, align 4
  %add1126 = add nsw i32 %652, 8
  store i32 %add1126, ptr %BitsAvail, align 4
  br label %if.end1127

if.end1127:                                       ; preds = %if.else1118, %if.end1117
  br label %if.end1128

if.end1128:                                       ; preds = %if.end1127, %do.body1107
  br label %do.end1129

do.end1129:                                       ; preds = %if.end1128
  %653 = load i64, ptr %BitAcc, align 8
  %and1130 = and i64 %653, 1
  %tobool1131 = icmp ne i64 %and1130, 0
  br i1 %tobool1131, label %if.end1133, label %if.then1132

if.then1132:                                      ; preds = %do.end1129
  br label %badMain2d

if.end1133:                                       ; preds = %do.end1129
  br label %do.body1134

do.body1134:                                      ; preds = %if.end1133
  %654 = load i32, ptr %BitsAvail, align 4
  %sub1135 = sub nsw i32 %654, 1
  store i32 %sub1135, ptr %BitsAvail, align 4
  %655 = load i64, ptr %BitAcc, align 8
  %shr1136 = lshr i64 %655, 1
  store i64 %shr1136, ptr %BitAcc, align 8
  br label %do.end1137

do.end1137:                                       ; preds = %do.body1134
  br label %if.end1138

if.end1138:                                       ; preds = %do.end1137, %if.then1102
  br label %do.body1139

do.body1139:                                      ; preds = %if.end1138
  %656 = load i32, ptr %RunLength, align 4
  %add1140 = add nsw i32 %656, 0
  %conv1141 = sext i32 %add1140 to i64
  %657 = load ptr, ptr %pa, align 8
  %incdec.ptr1142 = getelementptr inbounds i64, ptr %657, i32 1
  store ptr %incdec.ptr1142, ptr %pa, align 8
  store i64 %conv1141, ptr %657, align 8
  %658 = load i32, ptr %a0, align 4
  %add1143 = add nsw i32 %658, 0
  store i32 %add1143, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1144

do.end1144:                                       ; preds = %do.body1139
  br label %if.end1145

if.end1145:                                       ; preds = %do.end1144, %while.end1100
  br label %eol2d

eol2d:                                            ; preds = %if.end1145, %badWhite2d, %badBlack2d, %badMain2d, %if.end1016, %sw.bb980
  br label %do.body1146

do.body1146:                                      ; preds = %eol2d
  %659 = load i32, ptr %RunLength, align 4
  %tobool1147 = icmp ne i32 %659, 0
  br i1 %tobool1147, label %if.then1148, label %if.end1155

if.then1148:                                      ; preds = %do.body1146
  br label %do.body1149

do.body1149:                                      ; preds = %if.then1148
  %660 = load i32, ptr %RunLength, align 4
  %add1150 = add nsw i32 %660, 0
  %conv1151 = sext i32 %add1150 to i64
  %661 = load ptr, ptr %pa, align 8
  %incdec.ptr1152 = getelementptr inbounds i64, ptr %661, i32 1
  store ptr %incdec.ptr1152, ptr %pa, align 8
  store i64 %conv1151, ptr %661, align 8
  %662 = load i32, ptr %a0, align 4
  %add1153 = add nsw i32 %662, 0
  store i32 %add1153, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1154

do.end1154:                                       ; preds = %do.body1149
  br label %if.end1155

if.end1155:                                       ; preds = %do.end1154, %do.body1146
  %663 = load i32, ptr %a0, align 4
  %664 = load i32, ptr %lastx, align 4
  %cmp1156 = icmp ne i32 %663, %664
  br i1 %cmp1156, label %if.then1158, label %if.end1221

if.then1158:                                      ; preds = %if.end1155
  %665 = load ptr, ptr %tif.addr, align 8
  %666 = load i32, ptr %a0, align 4
  %conv1159 = sext i32 %666 to i64
  %667 = load i32, ptr %lastx, align 4
  %conv1160 = sext i32 %667 to i64
  call void @Fax3BadLength(ptr noundef @Fax3Decode2D.module, ptr noundef %665, i64 noundef %conv1159, i64 noundef %conv1160)
  br label %while.cond1161

while.cond1161:                                   ; preds = %while.body1168, %if.then1158
  %668 = load i32, ptr %a0, align 4
  %669 = load i32, ptr %lastx, align 4
  %cmp1162 = icmp sgt i32 %668, %669
  br i1 %cmp1162, label %land.rhs1164, label %land.end1167

land.rhs1164:                                     ; preds = %while.cond1161
  %670 = load ptr, ptr %pa, align 8
  %671 = load ptr, ptr %thisrun, align 8
  %cmp1165 = icmp ugt ptr %670, %671
  br label %land.end1167

land.end1167:                                     ; preds = %land.rhs1164, %while.cond1161
  %672 = phi i1 [ false, %while.cond1161 ], [ %cmp1165, %land.rhs1164 ]
  br i1 %672, label %while.body1168, label %while.end1173

while.body1168:                                   ; preds = %land.end1167
  %673 = load ptr, ptr %pa, align 8
  %incdec.ptr1169 = getelementptr inbounds i64, ptr %673, i32 -1
  store ptr %incdec.ptr1169, ptr %pa, align 8
  %674 = load i64, ptr %incdec.ptr1169, align 8
  %675 = load i32, ptr %a0, align 4
  %conv1170 = sext i32 %675 to i64
  %sub1171 = sub i64 %conv1170, %674
  %conv1172 = trunc i64 %sub1171 to i32
  store i32 %conv1172, ptr %a0, align 4
  br label %while.cond1161, !llvm.loop !42

while.end1173:                                    ; preds = %land.end1167
  %676 = load i32, ptr %a0, align 4
  %677 = load i32, ptr %lastx, align 4
  %cmp1174 = icmp slt i32 %676, %677
  br i1 %cmp1174, label %if.then1176, label %if.else1203

if.then1176:                                      ; preds = %while.end1173
  %678 = load i32, ptr %a0, align 4
  %cmp1177 = icmp slt i32 %678, 0
  br i1 %cmp1177, label %if.then1179, label %if.end1180

if.then1179:                                      ; preds = %if.then1176
  store i32 0, ptr %a0, align 4
  br label %if.end1180

if.end1180:                                       ; preds = %if.then1179, %if.then1176
  %679 = load ptr, ptr %pa, align 8
  %680 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast1181 = ptrtoint ptr %679 to i64
  %sub.ptr.rhs.cast1182 = ptrtoint ptr %680 to i64
  %sub.ptr.sub1183 = sub i64 %sub.ptr.lhs.cast1181, %sub.ptr.rhs.cast1182
  %sub.ptr.div1184 = sdiv exact i64 %sub.ptr.sub1183, 8
  %and1185 = and i64 %sub.ptr.div1184, 1
  %tobool1186 = icmp ne i64 %and1185, 0
  br i1 %tobool1186, label %if.then1187, label %if.end1194

if.then1187:                                      ; preds = %if.end1180
  br label %do.body1188

do.body1188:                                      ; preds = %if.then1187
  %681 = load i32, ptr %RunLength, align 4
  %add1189 = add nsw i32 %681, 0
  %conv1190 = sext i32 %add1189 to i64
  %682 = load ptr, ptr %pa, align 8
  %incdec.ptr1191 = getelementptr inbounds i64, ptr %682, i32 1
  store ptr %incdec.ptr1191, ptr %pa, align 8
  store i64 %conv1190, ptr %682, align 8
  %683 = load i32, ptr %a0, align 4
  %add1192 = add nsw i32 %683, 0
  store i32 %add1192, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1193

do.end1193:                                       ; preds = %do.body1188
  br label %if.end1194

if.end1194:                                       ; preds = %do.end1193, %if.end1180
  br label %do.body1195

do.body1195:                                      ; preds = %if.end1194
  %684 = load i32, ptr %RunLength, align 4
  %685 = load i32, ptr %lastx, align 4
  %686 = load i32, ptr %a0, align 4
  %sub1196 = sub nsw i32 %685, %686
  %add1197 = add nsw i32 %684, %sub1196
  %conv1198 = sext i32 %add1197 to i64
  %687 = load ptr, ptr %pa, align 8
  %incdec.ptr1199 = getelementptr inbounds i64, ptr %687, i32 1
  store ptr %incdec.ptr1199, ptr %pa, align 8
  store i64 %conv1198, ptr %687, align 8
  %688 = load i32, ptr %lastx, align 4
  %689 = load i32, ptr %a0, align 4
  %sub1200 = sub nsw i32 %688, %689
  %690 = load i32, ptr %a0, align 4
  %add1201 = add nsw i32 %690, %sub1200
  store i32 %add1201, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1202

do.end1202:                                       ; preds = %do.body1195
  br label %if.end1220

if.else1203:                                      ; preds = %while.end1173
  %691 = load i32, ptr %a0, align 4
  %692 = load i32, ptr %lastx, align 4
  %cmp1204 = icmp sgt i32 %691, %692
  br i1 %cmp1204, label %if.then1206, label %if.end1219

if.then1206:                                      ; preds = %if.else1203
  br label %do.body1207

do.body1207:                                      ; preds = %if.then1206
  %693 = load i32, ptr %RunLength, align 4
  %694 = load i32, ptr %lastx, align 4
  %add1208 = add nsw i32 %693, %694
  %conv1209 = sext i32 %add1208 to i64
  %695 = load ptr, ptr %pa, align 8
  %incdec.ptr1210 = getelementptr inbounds i64, ptr %695, i32 1
  store ptr %incdec.ptr1210, ptr %pa, align 8
  store i64 %conv1209, ptr %695, align 8
  %696 = load i32, ptr %lastx, align 4
  %697 = load i32, ptr %a0, align 4
  %add1211 = add nsw i32 %697, %696
  store i32 %add1211, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1212

do.end1212:                                       ; preds = %do.body1207
  br label %do.body1213

do.body1213:                                      ; preds = %do.end1212
  %698 = load i32, ptr %RunLength, align 4
  %add1214 = add nsw i32 %698, 0
  %conv1215 = sext i32 %add1214 to i64
  %699 = load ptr, ptr %pa, align 8
  %incdec.ptr1216 = getelementptr inbounds i64, ptr %699, i32 1
  store ptr %incdec.ptr1216, ptr %pa, align 8
  store i64 %conv1215, ptr %699, align 8
  %700 = load i32, ptr %a0, align 4
  %add1217 = add nsw i32 %700, 0
  store i32 %add1217, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1218

do.end1218:                                       ; preds = %do.body1213
  br label %if.end1219

if.end1219:                                       ; preds = %do.end1218, %if.else1203
  br label %if.end1220

if.end1220:                                       ; preds = %if.end1219, %do.end1202
  br label %if.end1221

if.end1221:                                       ; preds = %if.end1220, %if.end1155
  br label %do.end1222

do.end1222:                                       ; preds = %if.end1221
  br label %do.end1223

do.end1223:                                       ; preds = %do.end1222
  br label %if.end1224

if.end1224:                                       ; preds = %do.end1223, %do.end437
  %701 = load ptr, ptr %sp, align 8
  %fill = getelementptr inbounds %struct.Fax3DecodeState, ptr %701, i32 0, i32 5
  %702 = load ptr, ptr %fill, align 8
  %703 = load ptr, ptr %buf.addr, align 8
  %704 = load ptr, ptr %thisrun, align 8
  %705 = load ptr, ptr %pa, align 8
  %706 = load i32, ptr %lastx, align 4
  %conv1225 = sext i32 %706 to i64
  call void %702(ptr noundef %703, ptr noundef %704, ptr noundef %705, i64 noundef %conv1225)
  br label %do.body1226

do.body1226:                                      ; preds = %if.end1224
  %707 = load i32, ptr %RunLength, align 4
  %add1227 = add nsw i32 %707, 0
  %conv1228 = sext i32 %add1227 to i64
  %708 = load ptr, ptr %pa, align 8
  %incdec.ptr1229 = getelementptr inbounds i64, ptr %708, i32 1
  store ptr %incdec.ptr1229, ptr %pa, align 8
  store i64 %conv1228, ptr %708, align 8
  %709 = load i32, ptr %a0, align 4
  %add1230 = add nsw i32 %709, 0
  store i32 %add1230, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1231

do.end1231:                                       ; preds = %do.body1226
  %710 = load ptr, ptr %sp, align 8
  %curruns1232 = getelementptr inbounds %struct.Fax3DecodeState, ptr %710, i32 0, i32 8
  %711 = load ptr, ptr %curruns1232, align 8
  store ptr %711, ptr %x, align 8
  %712 = load ptr, ptr %sp, align 8
  %refruns1233 = getelementptr inbounds %struct.Fax3DecodeState, ptr %712, i32 0, i32 7
  %713 = load ptr, ptr %refruns1233, align 8
  %714 = load ptr, ptr %sp, align 8
  %curruns1234 = getelementptr inbounds %struct.Fax3DecodeState, ptr %714, i32 0, i32 8
  store ptr %713, ptr %curruns1234, align 8
  %715 = load ptr, ptr %x, align 8
  %716 = load ptr, ptr %sp, align 8
  %refruns1235 = getelementptr inbounds %struct.Fax3DecodeState, ptr %716, i32 0, i32 7
  store ptr %715, ptr %refruns1235, align 8
  %717 = load ptr, ptr %sp, align 8
  %b1236 = getelementptr inbounds %struct.Fax3DecodeState, ptr %717, i32 0, i32 0
  %rowbytes = getelementptr inbounds %struct.Fax3BaseState, ptr %b1236, i32 0, i32 1
  %718 = load i64, ptr %rowbytes, align 8
  %719 = load ptr, ptr %buf.addr, align 8
  %add.ptr1237 = getelementptr inbounds i8, ptr %719, i64 %718
  store ptr %add.ptr1237, ptr %buf.addr, align 8
  %720 = load ptr, ptr %sp, align 8
  %b1238 = getelementptr inbounds %struct.Fax3DecodeState, ptr %720, i32 0, i32 0
  %rowbytes1239 = getelementptr inbounds %struct.Fax3BaseState, ptr %b1238, i32 0, i32 1
  %721 = load i64, ptr %rowbytes1239, align 8
  %722 = load i64, ptr %occ.addr, align 8
  %sub1240 = sub i64 %722, %721
  store i64 %sub1240, ptr %occ.addr, align 8
  %723 = load i64, ptr %occ.addr, align 8
  %cmp1241 = icmp ne i64 %723, 0
  br i1 %cmp1241, label %if.then1243, label %if.end1244

if.then1243:                                      ; preds = %do.end1231
  %724 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %724, i32 0, i32 11
  %725 = load i64, ptr %tif_row, align 8
  %inc = add i64 %725, 1
  store i64 %inc, ptr %tif_row, align 8
  br label %if.end1244

if.end1244:                                       ; preds = %if.then1243, %do.end1231
  br label %while.cond, !llvm.loop !43

EOF2D:                                            ; preds = %if.then100, %if.then55, %if.then16
  br label %do.body1245

do.body1245:                                      ; preds = %EOF2D
  %726 = load i32, ptr %RunLength, align 4
  %tobool1246 = icmp ne i32 %726, 0
  br i1 %tobool1246, label %if.then1247, label %if.end1254

if.then1247:                                      ; preds = %do.body1245
  br label %do.body1248

do.body1248:                                      ; preds = %if.then1247
  %727 = load i32, ptr %RunLength, align 4
  %add1249 = add nsw i32 %727, 0
  %conv1250 = sext i32 %add1249 to i64
  %728 = load ptr, ptr %pa, align 8
  %incdec.ptr1251 = getelementptr inbounds i64, ptr %728, i32 1
  store ptr %incdec.ptr1251, ptr %pa, align 8
  store i64 %conv1250, ptr %728, align 8
  %729 = load i32, ptr %a0, align 4
  %add1252 = add nsw i32 %729, 0
  store i32 %add1252, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1253

do.end1253:                                       ; preds = %do.body1248
  br label %if.end1254

if.end1254:                                       ; preds = %do.end1253, %do.body1245
  %730 = load i32, ptr %a0, align 4
  %731 = load i32, ptr %lastx, align 4
  %cmp1255 = icmp ne i32 %730, %731
  br i1 %cmp1255, label %if.then1257, label %if.end1320

if.then1257:                                      ; preds = %if.end1254
  %732 = load ptr, ptr %tif.addr, align 8
  %733 = load i32, ptr %a0, align 4
  %conv1258 = sext i32 %733 to i64
  %734 = load i32, ptr %lastx, align 4
  %conv1259 = sext i32 %734 to i64
  call void @Fax3BadLength(ptr noundef @Fax3Decode2D.module, ptr noundef %732, i64 noundef %conv1258, i64 noundef %conv1259)
  br label %while.cond1260

while.cond1260:                                   ; preds = %while.body1267, %if.then1257
  %735 = load i32, ptr %a0, align 4
  %736 = load i32, ptr %lastx, align 4
  %cmp1261 = icmp sgt i32 %735, %736
  br i1 %cmp1261, label %land.rhs1263, label %land.end1266

land.rhs1263:                                     ; preds = %while.cond1260
  %737 = load ptr, ptr %pa, align 8
  %738 = load ptr, ptr %thisrun, align 8
  %cmp1264 = icmp ugt ptr %737, %738
  br label %land.end1266

land.end1266:                                     ; preds = %land.rhs1263, %while.cond1260
  %739 = phi i1 [ false, %while.cond1260 ], [ %cmp1264, %land.rhs1263 ]
  br i1 %739, label %while.body1267, label %while.end1272

while.body1267:                                   ; preds = %land.end1266
  %740 = load ptr, ptr %pa, align 8
  %incdec.ptr1268 = getelementptr inbounds i64, ptr %740, i32 -1
  store ptr %incdec.ptr1268, ptr %pa, align 8
  %741 = load i64, ptr %incdec.ptr1268, align 8
  %742 = load i32, ptr %a0, align 4
  %conv1269 = sext i32 %742 to i64
  %sub1270 = sub i64 %conv1269, %741
  %conv1271 = trunc i64 %sub1270 to i32
  store i32 %conv1271, ptr %a0, align 4
  br label %while.cond1260, !llvm.loop !44

while.end1272:                                    ; preds = %land.end1266
  %743 = load i32, ptr %a0, align 4
  %744 = load i32, ptr %lastx, align 4
  %cmp1273 = icmp slt i32 %743, %744
  br i1 %cmp1273, label %if.then1275, label %if.else1302

if.then1275:                                      ; preds = %while.end1272
  %745 = load i32, ptr %a0, align 4
  %cmp1276 = icmp slt i32 %745, 0
  br i1 %cmp1276, label %if.then1278, label %if.end1279

if.then1278:                                      ; preds = %if.then1275
  store i32 0, ptr %a0, align 4
  br label %if.end1279

if.end1279:                                       ; preds = %if.then1278, %if.then1275
  %746 = load ptr, ptr %pa, align 8
  %747 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast1280 = ptrtoint ptr %746 to i64
  %sub.ptr.rhs.cast1281 = ptrtoint ptr %747 to i64
  %sub.ptr.sub1282 = sub i64 %sub.ptr.lhs.cast1280, %sub.ptr.rhs.cast1281
  %sub.ptr.div1283 = sdiv exact i64 %sub.ptr.sub1282, 8
  %and1284 = and i64 %sub.ptr.div1283, 1
  %tobool1285 = icmp ne i64 %and1284, 0
  br i1 %tobool1285, label %if.then1286, label %if.end1293

if.then1286:                                      ; preds = %if.end1279
  br label %do.body1287

do.body1287:                                      ; preds = %if.then1286
  %748 = load i32, ptr %RunLength, align 4
  %add1288 = add nsw i32 %748, 0
  %conv1289 = sext i32 %add1288 to i64
  %749 = load ptr, ptr %pa, align 8
  %incdec.ptr1290 = getelementptr inbounds i64, ptr %749, i32 1
  store ptr %incdec.ptr1290, ptr %pa, align 8
  store i64 %conv1289, ptr %749, align 8
  %750 = load i32, ptr %a0, align 4
  %add1291 = add nsw i32 %750, 0
  store i32 %add1291, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1292

do.end1292:                                       ; preds = %do.body1287
  br label %if.end1293

if.end1293:                                       ; preds = %do.end1292, %if.end1279
  br label %do.body1294

do.body1294:                                      ; preds = %if.end1293
  %751 = load i32, ptr %RunLength, align 4
  %752 = load i32, ptr %lastx, align 4
  %753 = load i32, ptr %a0, align 4
  %sub1295 = sub nsw i32 %752, %753
  %add1296 = add nsw i32 %751, %sub1295
  %conv1297 = sext i32 %add1296 to i64
  %754 = load ptr, ptr %pa, align 8
  %incdec.ptr1298 = getelementptr inbounds i64, ptr %754, i32 1
  store ptr %incdec.ptr1298, ptr %pa, align 8
  store i64 %conv1297, ptr %754, align 8
  %755 = load i32, ptr %lastx, align 4
  %756 = load i32, ptr %a0, align 4
  %sub1299 = sub nsw i32 %755, %756
  %757 = load i32, ptr %a0, align 4
  %add1300 = add nsw i32 %757, %sub1299
  store i32 %add1300, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1301

do.end1301:                                       ; preds = %do.body1294
  br label %if.end1319

if.else1302:                                      ; preds = %while.end1272
  %758 = load i32, ptr %a0, align 4
  %759 = load i32, ptr %lastx, align 4
  %cmp1303 = icmp sgt i32 %758, %759
  br i1 %cmp1303, label %if.then1305, label %if.end1318

if.then1305:                                      ; preds = %if.else1302
  br label %do.body1306

do.body1306:                                      ; preds = %if.then1305
  %760 = load i32, ptr %RunLength, align 4
  %761 = load i32, ptr %lastx, align 4
  %add1307 = add nsw i32 %760, %761
  %conv1308 = sext i32 %add1307 to i64
  %762 = load ptr, ptr %pa, align 8
  %incdec.ptr1309 = getelementptr inbounds i64, ptr %762, i32 1
  store ptr %incdec.ptr1309, ptr %pa, align 8
  store i64 %conv1308, ptr %762, align 8
  %763 = load i32, ptr %lastx, align 4
  %764 = load i32, ptr %a0, align 4
  %add1310 = add nsw i32 %764, %763
  store i32 %add1310, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1311

do.end1311:                                       ; preds = %do.body1306
  br label %do.body1312

do.body1312:                                      ; preds = %do.end1311
  %765 = load i32, ptr %RunLength, align 4
  %add1313 = add nsw i32 %765, 0
  %conv1314 = sext i32 %add1313 to i64
  %766 = load ptr, ptr %pa, align 8
  %incdec.ptr1315 = getelementptr inbounds i64, ptr %766, i32 1
  store ptr %incdec.ptr1315, ptr %pa, align 8
  store i64 %conv1314, ptr %766, align 8
  %767 = load i32, ptr %a0, align 4
  %add1316 = add nsw i32 %767, 0
  store i32 %add1316, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1317

do.end1317:                                       ; preds = %do.body1312
  br label %if.end1318

if.end1318:                                       ; preds = %do.end1317, %if.else1302
  br label %if.end1319

if.end1319:                                       ; preds = %if.end1318, %do.end1301
  br label %if.end1320

if.end1320:                                       ; preds = %if.end1319, %if.end1254
  br label %do.end1321

do.end1321:                                       ; preds = %if.end1320
  br label %EOF2Da

EOF2Da:                                           ; preds = %do.end1321, %do.end1098, %do.end359
  %768 = load ptr, ptr %sp, align 8
  %fill1322 = getelementptr inbounds %struct.Fax3DecodeState, ptr %768, i32 0, i32 5
  %769 = load ptr, ptr %fill1322, align 8
  %770 = load ptr, ptr %buf.addr, align 8
  %771 = load ptr, ptr %thisrun, align 8
  %772 = load ptr, ptr %pa, align 8
  %773 = load i32, ptr %lastx, align 4
  %conv1323 = sext i32 %773 to i64
  call void %769(ptr noundef %770, ptr noundef %771, ptr noundef %772, i64 noundef %conv1323)
  br label %do.body1324

do.body1324:                                      ; preds = %EOF2Da
  %774 = load i32, ptr %BitsAvail, align 4
  %775 = load ptr, ptr %sp, align 8
  %bit1325 = getelementptr inbounds %struct.Fax3DecodeState, ptr %775, i32 0, i32 3
  store i32 %774, ptr %bit1325, align 8
  %776 = load i64, ptr %BitAcc, align 8
  %777 = load ptr, ptr %sp, align 8
  %data1326 = getelementptr inbounds %struct.Fax3DecodeState, ptr %777, i32 0, i32 2
  store i64 %776, ptr %data1326, align 8
  %778 = load i32, ptr %EOLcnt, align 4
  %779 = load ptr, ptr %sp, align 8
  %EOLcnt1327 = getelementptr inbounds %struct.Fax3DecodeState, ptr %779, i32 0, i32 4
  store i32 %778, ptr %EOLcnt1327, align 4
  %780 = load ptr, ptr %cp, align 8
  %781 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp1328 = getelementptr inbounds %struct.tiff, ptr %781, i32 0, i32 42
  %782 = load ptr, ptr %tif_rawcp1328, align 8
  %sub.ptr.lhs.cast1329 = ptrtoint ptr %780 to i64
  %sub.ptr.rhs.cast1330 = ptrtoint ptr %782 to i64
  %sub.ptr.sub1331 = sub i64 %sub.ptr.lhs.cast1329, %sub.ptr.rhs.cast1330
  %783 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc1332 = getelementptr inbounds %struct.tiff, ptr %783, i32 0, i32 43
  %784 = load i64, ptr %tif_rawcc1332, align 8
  %sub1333 = sub nsw i64 %784, %sub.ptr.sub1331
  store i64 %sub1333, ptr %tif_rawcc1332, align 8
  %785 = load ptr, ptr %cp, align 8
  %786 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp1334 = getelementptr inbounds %struct.tiff, ptr %786, i32 0, i32 42
  store ptr %785, ptr %tif_rawcp1334, align 8
  br label %do.end1335

do.end1335:                                       ; preds = %do.body1324
  store i32 -1, ptr %retval, align 4
  br label %return

while.end1336:                                    ; preds = %while.cond
  br label %do.body1337

do.body1337:                                      ; preds = %while.end1336
  %787 = load i32, ptr %BitsAvail, align 4
  %788 = load ptr, ptr %sp, align 8
  %bit1338 = getelementptr inbounds %struct.Fax3DecodeState, ptr %788, i32 0, i32 3
  store i32 %787, ptr %bit1338, align 8
  %789 = load i64, ptr %BitAcc, align 8
  %790 = load ptr, ptr %sp, align 8
  %data1339 = getelementptr inbounds %struct.Fax3DecodeState, ptr %790, i32 0, i32 2
  store i64 %789, ptr %data1339, align 8
  %791 = load i32, ptr %EOLcnt, align 4
  %792 = load ptr, ptr %sp, align 8
  %EOLcnt1340 = getelementptr inbounds %struct.Fax3DecodeState, ptr %792, i32 0, i32 4
  store i32 %791, ptr %EOLcnt1340, align 4
  %793 = load ptr, ptr %cp, align 8
  %794 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp1341 = getelementptr inbounds %struct.tiff, ptr %794, i32 0, i32 42
  %795 = load ptr, ptr %tif_rawcp1341, align 8
  %sub.ptr.lhs.cast1342 = ptrtoint ptr %793 to i64
  %sub.ptr.rhs.cast1343 = ptrtoint ptr %795 to i64
  %sub.ptr.sub1344 = sub i64 %sub.ptr.lhs.cast1342, %sub.ptr.rhs.cast1343
  %796 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc1345 = getelementptr inbounds %struct.tiff, ptr %796, i32 0, i32 43
  %797 = load i64, ptr %tif_rawcc1345, align 8
  %sub1346 = sub nsw i64 %797, %sub.ptr.sub1344
  store i64 %sub1346, ptr %tif_rawcc1345, align 8
  %798 = load ptr, ptr %cp, align 8
  %799 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp1347 = getelementptr inbounds %struct.tiff, ptr %799, i32 0, i32 42
  store ptr %798, ptr %tif_rawcp1347, align 8
  br label %do.end1348

do.end1348:                                       ; preds = %do.body1337
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end1348, %do.end1335
  %800 = load i32, ptr %retval, align 4
  ret i32 %800
}

; Function Attrs: nounwind ssp uwtable
define internal void @Fax3Unexpected(ptr noundef %module, ptr noundef %tif, i64 noundef %a0) #0 {
entry:
  %module.addr = alloca ptr, align 8
  %tif.addr = alloca ptr, align 8
  %a0.addr = alloca i64, align 8
  store ptr %module, ptr %module.addr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %a0, ptr %a0.addr, align 8
  %0 = load ptr, ptr %module.addr, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %tif_name, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 11
  %4 = load i64, ptr %tif_row, align 8
  %5 = load i64, ptr %a0.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %0, ptr noundef @.str.34, ptr noundef %2, i64 noundef %4, i64 noundef %5)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @Fax3PrematureEOF(ptr noundef %module, ptr noundef %tif, i64 noundef %a0) #0 {
entry:
  %module.addr = alloca ptr, align 8
  %tif.addr = alloca ptr, align 8
  %a0.addr = alloca i64, align 8
  store ptr %module, ptr %module.addr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %a0, ptr %a0.addr, align 8
  %0 = load ptr, ptr %module.addr, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %tif_name, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 11
  %4 = load i64, ptr %tif_row, align 8
  %5 = load i64, ptr %a0.addr, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %0, ptr noundef @.str.35, ptr noundef %2, i64 noundef %4, i64 noundef %5)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @Fax3BadLength(ptr noundef %module, ptr noundef %tif, i64 noundef %a0, i64 noundef %lastx) #0 {
entry:
  %module.addr = alloca ptr, align 8
  %tif.addr = alloca ptr, align 8
  %a0.addr = alloca i64, align 8
  %lastx.addr = alloca i64, align 8
  store ptr %module, ptr %module.addr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %a0, ptr %a0.addr, align 8
  store i64 %lastx, ptr %lastx.addr, align 8
  %0 = load ptr, ptr %module.addr, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %tif_name, align 8
  %3 = load i64, ptr %a0.addr, align 8
  %4 = load i64, ptr %lastx.addr, align 8
  %cmp = icmp ult i64 %3, %4
  %5 = zext i1 %cmp to i64
  %cond = select i1 %cmp, ptr @.str.37, ptr @.str.38
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 11
  %7 = load i64, ptr %tif_row, align 8
  %8 = load i64, ptr %a0.addr, align 8
  %9 = load i64, ptr %lastx.addr, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %0, ptr noundef @.str.36, ptr noundef %2, ptr noundef %cond, i64 noundef %7, i64 noundef %8, i64 noundef %9)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @Fax3Extension(ptr noundef %module, ptr noundef %tif, i64 noundef %a0) #0 {
entry:
  %module.addr = alloca ptr, align 8
  %tif.addr = alloca ptr, align 8
  %a0.addr = alloca i64, align 8
  store ptr %module, ptr %module.addr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %a0, ptr %a0.addr, align 8
  %0 = load ptr, ptr %module.addr, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %tif_name, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 11
  %4 = load i64, ptr %tif_row, align 8
  %5 = load i64, ptr %a0.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %0, ptr noundef @.str.39, ptr noundef %2, i64 noundef %4, i64 noundef %5)
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
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load ptr, ptr %sp, align 8
  %bit1 = getelementptr inbounds %struct.Fax3EncodeState, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %bit1, align 4
  store i32 %3, ptr %bit, align 4
  %4 = load ptr, ptr %sp, align 8
  %data2 = getelementptr inbounds %struct.Fax3EncodeState, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %data2, align 8
  store i32 %5, ptr %data, align 4
  %6 = load ptr, ptr %sp, align 8
  %b = getelementptr inbounds %struct.Fax3EncodeState, ptr %6, i32 0, i32 0
  %groupoptions = getelementptr inbounds %struct.Fax3BaseState, ptr %b, i32 0, i32 6
  %7 = load i64, ptr %groupoptions, align 8
  %and = and i64 %7, 4
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end39

if.then:                                          ; preds = %entry
  store i32 4, ptr %align, align 4
  %8 = load i32, ptr %align, align 4
  %9 = load ptr, ptr %sp, align 8
  %bit3 = getelementptr inbounds %struct.Fax3EncodeState, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %bit3, align 4
  %cmp = icmp ne i32 %8, %10
  br i1 %cmp, label %if.then4, label %if.end38

if.then4:                                         ; preds = %if.then
  %11 = load i32, ptr %align, align 4
  %12 = load ptr, ptr %sp, align 8
  %bit5 = getelementptr inbounds %struct.Fax3EncodeState, ptr %12, i32 0, i32 2
  %13 = load i32, ptr %bit5, align 4
  %cmp6 = icmp sgt i32 %11, %13
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then4
  %14 = load ptr, ptr %sp, align 8
  %bit8 = getelementptr inbounds %struct.Fax3EncodeState, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %bit8, align 4
  %16 = load i32, ptr %align, align 4
  %sub = sub nsw i32 8, %16
  %add = add nsw i32 %15, %sub
  store i32 %add, ptr %align, align 4
  br label %if.end

if.else:                                          ; preds = %if.then4
  %17 = load ptr, ptr %sp, align 8
  %bit9 = getelementptr inbounds %struct.Fax3EncodeState, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %bit9, align 4
  %19 = load i32, ptr %align, align 4
  %sub10 = sub nsw i32 %18, %19
  store i32 %sub10, ptr %align, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  store i32 0, ptr %code, align 4
  %20 = load i32, ptr %align, align 4
  store i32 %20, ptr %tparm, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end16, %if.end
  %21 = load i32, ptr %tparm, align 4
  %22 = load i32, ptr %bit, align 4
  %cmp11 = icmp ugt i32 %21, %22
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load i32, ptr %tparm, align 4
  %24 = load i32, ptr %bit, align 4
  %sub12 = sub i32 %23, %24
  %shr = ashr i32 0, %sub12
  %25 = load i32, ptr %data, align 4
  %or = or i32 %25, %shr
  store i32 %or, ptr %data, align 4
  %26 = load i32, ptr %bit, align 4
  %27 = load i32, ptr %tparm, align 4
  %sub13 = sub i32 %27, %26
  store i32 %sub13, ptr %tparm, align 4
  %28 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %28, i32 0, i32 43
  %29 = load i64, ptr %tif_rawcc, align 8
  %30 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %30, i32 0, i32 41
  %31 = load i64, ptr %tif_rawdatasize, align 8
  %cmp14 = icmp sge i64 %29, %31
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %while.body
  %32 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %32)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %while.body
  %33 = load i32, ptr %data, align 4
  %conv = trunc i32 %33 to i8
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %34, i32 0, i32 42
  %35 = load ptr, ptr %tif_rawcp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr, ptr %tif_rawcp, align 8
  store i8 %conv, ptr %35, align 1
  %36 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc17 = getelementptr inbounds %struct.tiff, ptr %36, i32 0, i32 43
  %37 = load i64, ptr %tif_rawcc17, align 8
  %inc = add nsw i64 %37, 1
  store i64 %inc, ptr %tif_rawcc17, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %while.cond, !llvm.loop !45

while.end:                                        ; preds = %while.cond
  %38 = load i32, ptr %tparm, align 4
  %idxprom = zext i32 %38 to i64
  %arrayidx = getelementptr inbounds [9 x i32], ptr @_msbmask, i64 0, i64 %idxprom
  %39 = load i32, ptr %arrayidx, align 4
  %and18 = and i32 0, %39
  %40 = load i32, ptr %bit, align 4
  %41 = load i32, ptr %tparm, align 4
  %sub19 = sub i32 %40, %41
  %shl = shl i32 %and18, %sub19
  %42 = load i32, ptr %data, align 4
  %or20 = or i32 %42, %shl
  store i32 %or20, ptr %data, align 4
  %43 = load i32, ptr %tparm, align 4
  %44 = load i32, ptr %bit, align 4
  %sub21 = sub i32 %44, %43
  store i32 %sub21, ptr %bit, align 4
  %45 = load i32, ptr %bit, align 4
  %cmp22 = icmp eq i32 %45, 0
  br i1 %cmp22, label %if.then24, label %if.end37

if.then24:                                        ; preds = %while.end
  %46 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc25 = getelementptr inbounds %struct.tiff, ptr %46, i32 0, i32 43
  %47 = load i64, ptr %tif_rawcc25, align 8
  %48 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize26 = getelementptr inbounds %struct.tiff, ptr %48, i32 0, i32 41
  %49 = load i64, ptr %tif_rawdatasize26, align 8
  %cmp27 = icmp sge i64 %47, %49
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.then24
  %50 = load ptr, ptr %tif.addr, align 8
  %call30 = call i32 @TIFFFlushData1(ptr noundef %50)
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.then24
  %51 = load i32, ptr %data, align 4
  %conv32 = trunc i32 %51 to i8
  %52 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp33 = getelementptr inbounds %struct.tiff, ptr %52, i32 0, i32 42
  %53 = load ptr, ptr %tif_rawcp33, align 8
  %incdec.ptr34 = getelementptr inbounds i8, ptr %53, i32 1
  store ptr %incdec.ptr34, ptr %tif_rawcp33, align 8
  store i8 %conv32, ptr %53, align 1
  %54 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc35 = getelementptr inbounds %struct.tiff, ptr %54, i32 0, i32 43
  %55 = load i64, ptr %tif_rawcc35, align 8
  %inc36 = add nsw i64 %55, 1
  store i64 %inc36, ptr %tif_rawcc35, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end31, %while.end
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %entry
  store i32 1, ptr %code, align 4
  store i32 12, ptr %length, align 4
  %56 = load ptr, ptr %sp, align 8
  %b40 = getelementptr inbounds %struct.Fax3EncodeState, ptr %56, i32 0, i32 0
  %groupoptions41 = getelementptr inbounds %struct.Fax3BaseState, ptr %b40, i32 0, i32 6
  %57 = load i64, ptr %groupoptions41, align 8
  %and42 = and i64 %57, 1
  %tobool43 = icmp ne i64 %and42, 0
  br i1 %tobool43, label %if.then44, label %if.end50

if.then44:                                        ; preds = %if.end39
  %58 = load i32, ptr %code, align 4
  %shl45 = shl i32 %58, 1
  %59 = load ptr, ptr %sp, align 8
  %tag = getelementptr inbounds %struct.Fax3EncodeState, ptr %59, i32 0, i32 3
  %60 = load i32, ptr %tag, align 8
  %cmp46 = icmp eq i32 %60, 0
  %conv47 = zext i1 %cmp46 to i32
  %or48 = or i32 %shl45, %conv47
  store i32 %or48, ptr %code, align 4
  %61 = load i32, ptr %length, align 4
  %inc49 = add i32 %61, 1
  store i32 %inc49, ptr %length, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then44, %if.end39
  br label %while.cond51

while.cond51:                                     ; preds = %if.end65, %if.end50
  %62 = load i32, ptr %length, align 4
  %63 = load i32, ptr %bit, align 4
  %cmp52 = icmp ugt i32 %62, %63
  br i1 %cmp52, label %while.body54, label %while.end71

while.body54:                                     ; preds = %while.cond51
  %64 = load i32, ptr %code, align 4
  %65 = load i32, ptr %length, align 4
  %66 = load i32, ptr %bit, align 4
  %sub55 = sub i32 %65, %66
  %shr56 = lshr i32 %64, %sub55
  %67 = load i32, ptr %data, align 4
  %or57 = or i32 %67, %shr56
  store i32 %or57, ptr %data, align 4
  %68 = load i32, ptr %bit, align 4
  %69 = load i32, ptr %length, align 4
  %sub58 = sub i32 %69, %68
  store i32 %sub58, ptr %length, align 4
  %70 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc59 = getelementptr inbounds %struct.tiff, ptr %70, i32 0, i32 43
  %71 = load i64, ptr %tif_rawcc59, align 8
  %72 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize60 = getelementptr inbounds %struct.tiff, ptr %72, i32 0, i32 41
  %73 = load i64, ptr %tif_rawdatasize60, align 8
  %cmp61 = icmp sge i64 %71, %73
  br i1 %cmp61, label %if.then63, label %if.end65

if.then63:                                        ; preds = %while.body54
  %74 = load ptr, ptr %tif.addr, align 8
  %call64 = call i32 @TIFFFlushData1(ptr noundef %74)
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %while.body54
  %75 = load i32, ptr %data, align 4
  %conv66 = trunc i32 %75 to i8
  %76 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp67 = getelementptr inbounds %struct.tiff, ptr %76, i32 0, i32 42
  %77 = load ptr, ptr %tif_rawcp67, align 8
  %incdec.ptr68 = getelementptr inbounds i8, ptr %77, i32 1
  store ptr %incdec.ptr68, ptr %tif_rawcp67, align 8
  store i8 %conv66, ptr %77, align 1
  %78 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc69 = getelementptr inbounds %struct.tiff, ptr %78, i32 0, i32 43
  %79 = load i64, ptr %tif_rawcc69, align 8
  %inc70 = add nsw i64 %79, 1
  store i64 %inc70, ptr %tif_rawcc69, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %while.cond51, !llvm.loop !46

while.end71:                                      ; preds = %while.cond51
  %80 = load i32, ptr %code, align 4
  %81 = load i32, ptr %length, align 4
  %idxprom72 = zext i32 %81 to i64
  %arrayidx73 = getelementptr inbounds [9 x i32], ptr @_msbmask, i64 0, i64 %idxprom72
  %82 = load i32, ptr %arrayidx73, align 4
  %and74 = and i32 %80, %82
  %83 = load i32, ptr %bit, align 4
  %84 = load i32, ptr %length, align 4
  %sub75 = sub i32 %83, %84
  %shl76 = shl i32 %and74, %sub75
  %85 = load i32, ptr %data, align 4
  %or77 = or i32 %85, %shl76
  store i32 %or77, ptr %data, align 4
  %86 = load i32, ptr %length, align 4
  %87 = load i32, ptr %bit, align 4
  %sub78 = sub i32 %87, %86
  store i32 %sub78, ptr %bit, align 4
  %88 = load i32, ptr %bit, align 4
  %cmp79 = icmp eq i32 %88, 0
  br i1 %cmp79, label %if.then81, label %if.end94

if.then81:                                        ; preds = %while.end71
  %89 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc82 = getelementptr inbounds %struct.tiff, ptr %89, i32 0, i32 43
  %90 = load i64, ptr %tif_rawcc82, align 8
  %91 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize83 = getelementptr inbounds %struct.tiff, ptr %91, i32 0, i32 41
  %92 = load i64, ptr %tif_rawdatasize83, align 8
  %cmp84 = icmp sge i64 %90, %92
  br i1 %cmp84, label %if.then86, label %if.end88

if.then86:                                        ; preds = %if.then81
  %93 = load ptr, ptr %tif.addr, align 8
  %call87 = call i32 @TIFFFlushData1(ptr noundef %93)
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.then81
  %94 = load i32, ptr %data, align 4
  %conv89 = trunc i32 %94 to i8
  %95 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp90 = getelementptr inbounds %struct.tiff, ptr %95, i32 0, i32 42
  %96 = load ptr, ptr %tif_rawcp90, align 8
  %incdec.ptr91 = getelementptr inbounds i8, ptr %96, i32 1
  store ptr %incdec.ptr91, ptr %tif_rawcp90, align 8
  store i8 %conv89, ptr %96, align 1
  %97 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc92 = getelementptr inbounds %struct.tiff, ptr %97, i32 0, i32 43
  %98 = load i64, ptr %tif_rawcc92, align 8
  %inc93 = add nsw i64 %98, 1
  store i64 %inc93, ptr %tif_rawcc92, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.end88, %while.end71
  %99 = load i32, ptr %data, align 4
  %100 = load ptr, ptr %sp, align 8
  %data95 = getelementptr inbounds %struct.Fax3EncodeState, ptr %100, i32 0, i32 1
  store i32 %99, ptr %data95, align 8
  %101 = load i32, ptr %bit, align 4
  %102 = load ptr, ptr %sp, align 8
  %bit96 = getelementptr inbounds %struct.Fax3EncodeState, ptr %102, i32 0, i32 2
  store i32 %101, ptr %bit96, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Fax3Encode1DRow(ptr noundef %tif, ptr noundef %bp, i64 noundef %bits) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %bits.addr = alloca i64, align 8
  %sp = alloca ptr, align 8
  %span = alloca i64, align 8
  %bs = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i64 %bits, ptr %bits.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  store i64 0, ptr %bs, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end5, %entry
  %2 = load ptr, ptr %bp.addr, align 8
  %3 = load i64, ptr %bs, align 8
  %4 = load i64, ptr %bits.addr, align 8
  %call = call i64 @find0span(ptr noundef %2, i64 noundef %3, i64 noundef %4)
  store i64 %call, ptr %span, align 8
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load i64, ptr %span, align 8
  call void @putspan(ptr noundef %5, i64 noundef %6, ptr noundef @TIFFFaxWhiteCodes)
  %7 = load i64, ptr %span, align 8
  %8 = load i64, ptr %bs, align 8
  %add = add i64 %8, %7
  store i64 %add, ptr %bs, align 8
  %9 = load i64, ptr %bs, align 8
  %10 = load i64, ptr %bits.addr, align 8
  %cmp = icmp uge i64 %9, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %11 = load ptr, ptr %bp.addr, align 8
  %12 = load i64, ptr %bs, align 8
  %13 = load i64, ptr %bits.addr, align 8
  %call1 = call i64 @find1span(ptr noundef %11, i64 noundef %12, i64 noundef %13)
  store i64 %call1, ptr %span, align 8
  %14 = load ptr, ptr %tif.addr, align 8
  %15 = load i64, ptr %span, align 8
  call void @putspan(ptr noundef %14, i64 noundef %15, ptr noundef @TIFFFaxBlackCodes)
  %16 = load i64, ptr %span, align 8
  %17 = load i64, ptr %bs, align 8
  %add2 = add i64 %17, %16
  store i64 %add2, ptr %bs, align 8
  %18 = load i64, ptr %bs, align 8
  %19 = load i64, ptr %bits.addr, align 8
  %cmp3 = icmp uge i64 %18, %19
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %for.end

if.end5:                                          ; preds = %if.end
  br label %for.cond

for.end:                                          ; preds = %if.then4, %if.then
  %20 = load ptr, ptr %sp, align 8
  %b = getelementptr inbounds %struct.Fax3EncodeState, ptr %20, i32 0, i32 0
  %mode = getelementptr inbounds %struct.Fax3BaseState, ptr %b, i32 0, i32 0
  %21 = load i32, ptr %mode, align 8
  %and = and i32 %21, 12
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then6, label %if.end42

if.then6:                                         ; preds = %for.end
  %22 = load ptr, ptr %sp, align 8
  %bit = getelementptr inbounds %struct.Fax3EncodeState, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %bit, align 4
  %cmp7 = icmp ne i32 %23, 8
  br i1 %cmp7, label %if.then8, label %if.end16

if.then8:                                         ; preds = %if.then6
  %24 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %24, i32 0, i32 43
  %25 = load i64, ptr %tif_rawcc, align 8
  %26 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %26, i32 0, i32 41
  %27 = load i64, ptr %tif_rawdatasize, align 8
  %cmp9 = icmp sge i64 %25, %27
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then8
  %28 = load ptr, ptr %tif.addr, align 8
  %call11 = call i32 @TIFFFlushData1(ptr noundef %28)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then8
  %29 = load ptr, ptr %sp, align 8
  %data = getelementptr inbounds %struct.Fax3EncodeState, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %data, align 8
  %conv = trunc i32 %30 to i8
  %31 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %31, i32 0, i32 42
  %32 = load ptr, ptr %tif_rawcp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr, ptr %tif_rawcp, align 8
  store i8 %conv, ptr %32, align 1
  %33 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc13 = getelementptr inbounds %struct.tiff, ptr %33, i32 0, i32 43
  %34 = load i64, ptr %tif_rawcc13, align 8
  %inc = add nsw i64 %34, 1
  store i64 %inc, ptr %tif_rawcc13, align 8
  %35 = load ptr, ptr %sp, align 8
  %data14 = getelementptr inbounds %struct.Fax3EncodeState, ptr %35, i32 0, i32 1
  store i32 0, ptr %data14, align 8
  %36 = load ptr, ptr %sp, align 8
  %bit15 = getelementptr inbounds %struct.Fax3EncodeState, ptr %36, i32 0, i32 2
  store i32 8, ptr %bit15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end12, %if.then6
  %37 = load ptr, ptr %sp, align 8
  %b17 = getelementptr inbounds %struct.Fax3EncodeState, ptr %37, i32 0, i32 0
  %mode18 = getelementptr inbounds %struct.Fax3BaseState, ptr %b17, i32 0, i32 0
  %38 = load i32, ptr %mode18, align 8
  %and19 = and i32 %38, 8
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %land.lhs.true, label %if.end41

land.lhs.true:                                    ; preds = %if.end16
  %39 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp21 = getelementptr inbounds %struct.tiff, ptr %39, i32 0, i32 42
  %40 = load ptr, ptr %tif_rawcp21, align 8
  %41 = ptrtoint ptr %40 to i64
  %and22 = and i64 %41, 1
  %cmp23 = icmp eq i64 %and22, 0
  br i1 %cmp23, label %if.end41, label %if.then25

if.then25:                                        ; preds = %land.lhs.true
  %42 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc26 = getelementptr inbounds %struct.tiff, ptr %42, i32 0, i32 43
  %43 = load i64, ptr %tif_rawcc26, align 8
  %44 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize27 = getelementptr inbounds %struct.tiff, ptr %44, i32 0, i32 41
  %45 = load i64, ptr %tif_rawdatasize27, align 8
  %cmp28 = icmp sge i64 %43, %45
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.then25
  %46 = load ptr, ptr %tif.addr, align 8
  %call31 = call i32 @TIFFFlushData1(ptr noundef %46)
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.then25
  %47 = load ptr, ptr %sp, align 8
  %data33 = getelementptr inbounds %struct.Fax3EncodeState, ptr %47, i32 0, i32 1
  %48 = load i32, ptr %data33, align 8
  %conv34 = trunc i32 %48 to i8
  %49 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp35 = getelementptr inbounds %struct.tiff, ptr %49, i32 0, i32 42
  %50 = load ptr, ptr %tif_rawcp35, align 8
  %incdec.ptr36 = getelementptr inbounds i8, ptr %50, i32 1
  store ptr %incdec.ptr36, ptr %tif_rawcp35, align 8
  store i8 %conv34, ptr %50, align 1
  %51 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc37 = getelementptr inbounds %struct.tiff, ptr %51, i32 0, i32 43
  %52 = load i64, ptr %tif_rawcc37, align 8
  %inc38 = add nsw i64 %52, 1
  store i64 %inc38, ptr %tif_rawcc37, align 8
  %53 = load ptr, ptr %sp, align 8
  %data39 = getelementptr inbounds %struct.Fax3EncodeState, ptr %53, i32 0, i32 1
  store i32 0, ptr %data39, align 8
  %54 = load ptr, ptr %sp, align 8
  %bit40 = getelementptr inbounds %struct.Fax3EncodeState, ptr %54, i32 0, i32 2
  store i32 8, ptr %bit40, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end32, %land.lhs.true, %if.end16
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %for.end
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
  %0 = load ptr, ptr %bp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shr = ashr i32 %conv, 7
  %and = and i32 %shr, 1
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr %bp.addr, align 8
  %3 = load i64, ptr %bits.addr, align 8
  %call = call i64 @find0span(ptr noundef %2, i64 noundef 0, i64 noundef %3)
  %add = add nsw i64 0, %call
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %add, %cond.false ]
  store i64 %cond, ptr %a1, align 8
  %4 = load ptr, ptr %rp.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %4, i64 0
  %5 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %5 to i32
  %shr4 = ashr i32 %conv3, 7
  %and5 = and i32 %shr4, 1
  %cmp6 = icmp ne i32 %and5, 0
  br i1 %cmp6, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.end
  br label %cond.end12

cond.false9:                                      ; preds = %cond.end
  %6 = load ptr, ptr %rp.addr, align 8
  %7 = load i64, ptr %bits.addr, align 8
  %call10 = call i64 @find0span(ptr noundef %6, i64 noundef 0, i64 noundef %7)
  %add11 = add nsw i64 0, %call10
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false9, %cond.true8
  %cond13 = phi i64 [ 0, %cond.true8 ], [ %add11, %cond.false9 ]
  store i64 %cond13, ptr %b1, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end144, %cond.end12
  %8 = load i64, ptr %b1, align 8
  %9 = load i64, ptr %bits.addr, align 8
  %cmp14 = icmp ult i64 %8, %9
  br i1 %cmp14, label %cond.true16, label %cond.false30

cond.true16:                                      ; preds = %for.cond
  %10 = load i64, ptr %b1, align 8
  %11 = load ptr, ptr %rp.addr, align 8
  %12 = load i64, ptr %b1, align 8
  %shr17 = lshr i64 %12, 3
  %arrayidx18 = getelementptr inbounds i8, ptr %11, i64 %shr17
  %13 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %13 to i32
  %14 = load i64, ptr %b1, align 8
  %and20 = and i64 %14, 7
  %sub = sub i64 7, %and20
  %sh_prom = trunc i64 %sub to i32
  %shr21 = ashr i32 %conv19, %sh_prom
  %and22 = and i32 %shr21, 1
  %tobool = icmp ne i32 %and22, 0
  br i1 %tobool, label %cond.true23, label %cond.false25

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
  %add29 = add i64 %10, %cond28
  br label %cond.end31

cond.false30:                                     ; preds = %for.cond
  %21 = load i64, ptr %bits.addr, align 8
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false30, %cond.end27
  %cond32 = phi i64 [ %add29, %cond.end27 ], [ %21, %cond.false30 ]
  store i64 %cond32, ptr %b2, align 8
  %22 = load i64, ptr %b2, align 8
  %23 = load i64, ptr %a1, align 8
  %cmp33 = icmp uge i64 %22, %23
  br i1 %cmp33, label %if.then, label %if.else91

if.then:                                          ; preds = %cond.end31
  %24 = load i64, ptr %b1, align 8
  %25 = load i64, ptr %a1, align 8
  %sub35 = sub i64 %24, %25
  store i64 %sub35, ptr %d, align 8
  %26 = load i64, ptr %d, align 8
  %cmp36 = icmp sle i64 -3, %26
  br i1 %cmp36, label %land.lhs.true, label %if.then40

land.lhs.true:                                    ; preds = %if.then
  %27 = load i64, ptr %d, align 8
  %cmp38 = icmp sle i64 %27, 3
  br i1 %cmp38, label %if.else83, label %if.then40

if.then40:                                        ; preds = %land.lhs.true, %if.then
  %28 = load i64, ptr %a1, align 8
  %29 = load i64, ptr %bits.addr, align 8
  %cmp41 = icmp ult i64 %28, %29
  br i1 %cmp41, label %cond.true43, label %cond.false60

cond.true43:                                      ; preds = %if.then40
  %30 = load i64, ptr %a1, align 8
  %31 = load ptr, ptr %bp.addr, align 8
  %32 = load i64, ptr %a1, align 8
  %shr44 = lshr i64 %32, 3
  %arrayidx45 = getelementptr inbounds i8, ptr %31, i64 %shr44
  %33 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %33 to i32
  %34 = load i64, ptr %a1, align 8
  %and47 = and i64 %34, 7
  %sub48 = sub i64 7, %and47
  %sh_prom49 = trunc i64 %sub48 to i32
  %shr50 = ashr i32 %conv46, %sh_prom49
  %and51 = and i32 %shr50, 1
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %cond.true53, label %cond.false55

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
  %add59 = add i64 %30, %cond58
  br label %cond.end61

cond.false60:                                     ; preds = %if.then40
  %41 = load i64, ptr %bits.addr, align 8
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false60, %cond.end57
  %cond62 = phi i64 [ %add59, %cond.end57 ], [ %41, %cond.false60 ]
  store i64 %cond62, ptr %a2, align 8
  %42 = load ptr, ptr %tif.addr, align 8
  %43 = load i16, ptr getelementptr inbounds (%struct.tableentry, ptr @horizcode, i32 0, i32 1), align 2
  %conv63 = zext i16 %43 to i32
  %44 = load i16, ptr @horizcode, align 2
  %conv64 = zext i16 %44 to i32
  call void @Fax3PutBits(ptr noundef %42, i32 noundef %conv63, i32 noundef %conv64)
  %45 = load i64, ptr %a0, align 8
  %46 = load i64, ptr %a1, align 8
  %add65 = add i64 %45, %46
  %cmp66 = icmp eq i64 %add65, 0
  br i1 %cmp66, label %if.then78, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end61
  %47 = load ptr, ptr %bp.addr, align 8
  %48 = load i64, ptr %a0, align 8
  %shr68 = lshr i64 %48, 3
  %arrayidx69 = getelementptr inbounds i8, ptr %47, i64 %shr68
  %49 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %49 to i32
  %50 = load i64, ptr %a0, align 8
  %and71 = and i64 %50, 7
  %sub72 = sub i64 7, %and71
  %sh_prom73 = trunc i64 %sub72 to i32
  %shr74 = ashr i32 %conv70, %sh_prom73
  %and75 = and i32 %shr74, 1
  %cmp76 = icmp eq i32 %and75, 0
  br i1 %cmp76, label %if.then78, label %if.else

if.then78:                                        ; preds = %lor.lhs.false, %cond.end61
  %51 = load ptr, ptr %tif.addr, align 8
  %52 = load i64, ptr %a1, align 8
  %53 = load i64, ptr %a0, align 8
  %sub79 = sub i64 %52, %53
  call void @putspan(ptr noundef %51, i64 noundef %sub79, ptr noundef @TIFFFaxWhiteCodes)
  %54 = load ptr, ptr %tif.addr, align 8
  %55 = load i64, ptr %a2, align 8
  %56 = load i64, ptr %a1, align 8
  %sub80 = sub i64 %55, %56
  call void @putspan(ptr noundef %54, i64 noundef %sub80, ptr noundef @TIFFFaxBlackCodes)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %57 = load ptr, ptr %tif.addr, align 8
  %58 = load i64, ptr %a1, align 8
  %59 = load i64, ptr %a0, align 8
  %sub81 = sub i64 %58, %59
  call void @putspan(ptr noundef %57, i64 noundef %sub81, ptr noundef @TIFFFaxBlackCodes)
  %60 = load ptr, ptr %tif.addr, align 8
  %61 = load i64, ptr %a2, align 8
  %62 = load i64, ptr %a1, align 8
  %sub82 = sub i64 %61, %62
  call void @putspan(ptr noundef %60, i64 noundef %sub82, ptr noundef @TIFFFaxWhiteCodes)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then78
  %63 = load i64, ptr %a2, align 8
  store i64 %63, ptr %a0, align 8
  br label %if.end90

if.else83:                                        ; preds = %land.lhs.true
  %64 = load ptr, ptr %tif.addr, align 8
  %65 = load i64, ptr %d, align 8
  %add84 = add nsw i64 %65, 3
  %arrayidx85 = getelementptr inbounds [7 x %struct.tableentry], ptr @vcodes, i64 0, i64 %add84
  %code = getelementptr inbounds %struct.tableentry, ptr %arrayidx85, i32 0, i32 1
  %66 = load i16, ptr %code, align 2
  %conv86 = zext i16 %66 to i32
  %67 = load i64, ptr %d, align 8
  %add87 = add nsw i64 %67, 3
  %arrayidx88 = getelementptr inbounds [7 x %struct.tableentry], ptr @vcodes, i64 0, i64 %add87
  %length = getelementptr inbounds %struct.tableentry, ptr %arrayidx88, i32 0, i32 0
  %68 = load i16, ptr %length, align 2
  %conv89 = zext i16 %68 to i32
  call void @Fax3PutBits(ptr noundef %64, i32 noundef %conv86, i32 noundef %conv89)
  %69 = load i64, ptr %a1, align 8
  store i64 %69, ptr %a0, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.else83, %if.end
  br label %if.end94

if.else91:                                        ; preds = %cond.end31
  %70 = load ptr, ptr %tif.addr, align 8
  %71 = load i16, ptr getelementptr inbounds (%struct.tableentry, ptr @passcode, i32 0, i32 1), align 2
  %conv92 = zext i16 %71 to i32
  %72 = load i16, ptr @passcode, align 2
  %conv93 = zext i16 %72 to i32
  call void @Fax3PutBits(ptr noundef %70, i32 noundef %conv92, i32 noundef %conv93)
  %73 = load i64, ptr %b2, align 8
  store i64 %73, ptr %a0, align 8
  br label %if.end94

if.end94:                                         ; preds = %if.else91, %if.end90
  %74 = load i64, ptr %a0, align 8
  %75 = load i64, ptr %bits.addr, align 8
  %cmp95 = icmp uge i64 %74, %75
  br i1 %cmp95, label %if.then97, label %if.end98

if.then97:                                        ; preds = %if.end94
  br label %for.end

if.end98:                                         ; preds = %if.end94
  %76 = load i64, ptr %a0, align 8
  %77 = load ptr, ptr %bp.addr, align 8
  %78 = load i64, ptr %a0, align 8
  %shr99 = lshr i64 %78, 3
  %arrayidx100 = getelementptr inbounds i8, ptr %77, i64 %shr99
  %79 = load i8, ptr %arrayidx100, align 1
  %conv101 = zext i8 %79 to i32
  %80 = load i64, ptr %a0, align 8
  %and102 = and i64 %80, 7
  %sub103 = sub i64 7, %and102
  %sh_prom104 = trunc i64 %sub103 to i32
  %shr105 = ashr i32 %conv101, %sh_prom104
  %and106 = and i32 %shr105, 1
  %tobool107 = icmp ne i32 %and106, 0
  br i1 %tobool107, label %cond.true108, label %cond.false110

cond.true108:                                     ; preds = %if.end98
  %81 = load ptr, ptr %bp.addr, align 8
  %82 = load i64, ptr %a0, align 8
  %83 = load i64, ptr %bits.addr, align 8
  %call109 = call i64 @find1span(ptr noundef %81, i64 noundef %82, i64 noundef %83)
  br label %cond.end112

cond.false110:                                    ; preds = %if.end98
  %84 = load ptr, ptr %bp.addr, align 8
  %85 = load i64, ptr %a0, align 8
  %86 = load i64, ptr %bits.addr, align 8
  %call111 = call i64 @find0span(ptr noundef %84, i64 noundef %85, i64 noundef %86)
  br label %cond.end112

cond.end112:                                      ; preds = %cond.false110, %cond.true108
  %cond113 = phi i64 [ %call109, %cond.true108 ], [ %call111, %cond.false110 ]
  %add114 = add i64 %76, %cond113
  store i64 %add114, ptr %a1, align 8
  %87 = load i64, ptr %a0, align 8
  %88 = load ptr, ptr %bp.addr, align 8
  %89 = load i64, ptr %a0, align 8
  %shr115 = lshr i64 %89, 3
  %arrayidx116 = getelementptr inbounds i8, ptr %88, i64 %shr115
  %90 = load i8, ptr %arrayidx116, align 1
  %conv117 = zext i8 %90 to i32
  %91 = load i64, ptr %a0, align 8
  %and118 = and i64 %91, 7
  %sub119 = sub i64 7, %and118
  %sh_prom120 = trunc i64 %sub119 to i32
  %shr121 = ashr i32 %conv117, %sh_prom120
  %and122 = and i32 %shr121, 1
  %tobool123 = icmp ne i32 %and122, 0
  br i1 %tobool123, label %cond.false126, label %cond.true124

cond.true124:                                     ; preds = %cond.end112
  %92 = load ptr, ptr %rp.addr, align 8
  %93 = load i64, ptr %a0, align 8
  %94 = load i64, ptr %bits.addr, align 8
  %call125 = call i64 @find1span(ptr noundef %92, i64 noundef %93, i64 noundef %94)
  br label %cond.end128

cond.false126:                                    ; preds = %cond.end112
  %95 = load ptr, ptr %rp.addr, align 8
  %96 = load i64, ptr %a0, align 8
  %97 = load i64, ptr %bits.addr, align 8
  %call127 = call i64 @find0span(ptr noundef %95, i64 noundef %96, i64 noundef %97)
  br label %cond.end128

cond.end128:                                      ; preds = %cond.false126, %cond.true124
  %cond129 = phi i64 [ %call125, %cond.true124 ], [ %call127, %cond.false126 ]
  %add130 = add i64 %87, %cond129
  store i64 %add130, ptr %b1, align 8
  %98 = load i64, ptr %b1, align 8
  %99 = load ptr, ptr %bp.addr, align 8
  %100 = load i64, ptr %a0, align 8
  %shr131 = lshr i64 %100, 3
  %arrayidx132 = getelementptr inbounds i8, ptr %99, i64 %shr131
  %101 = load i8, ptr %arrayidx132, align 1
  %conv133 = zext i8 %101 to i32
  %102 = load i64, ptr %a0, align 8
  %and134 = and i64 %102, 7
  %sub135 = sub i64 7, %and134
  %sh_prom136 = trunc i64 %sub135 to i32
  %shr137 = ashr i32 %conv133, %sh_prom136
  %and138 = and i32 %shr137, 1
  %tobool139 = icmp ne i32 %and138, 0
  br i1 %tobool139, label %cond.true140, label %cond.false142

cond.true140:                                     ; preds = %cond.end128
  %103 = load ptr, ptr %rp.addr, align 8
  %104 = load i64, ptr %b1, align 8
  %105 = load i64, ptr %bits.addr, align 8
  %call141 = call i64 @find1span(ptr noundef %103, i64 noundef %104, i64 noundef %105)
  br label %cond.end144

cond.false142:                                    ; preds = %cond.end128
  %106 = load ptr, ptr %rp.addr, align 8
  %107 = load i64, ptr %b1, align 8
  %108 = load i64, ptr %bits.addr, align 8
  %call143 = call i64 @find0span(ptr noundef %106, i64 noundef %107, i64 noundef %108)
  br label %cond.end144

cond.end144:                                      ; preds = %cond.false142, %cond.true140
  %cond145 = phi i64 [ %call141, %cond.true140 ], [ %call143, %cond.false142 ]
  %add146 = add i64 %98, %cond145
  store i64 %add146, ptr %b1, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then97
  ret i32 1
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal i64 @find0span(ptr noundef %bp, i64 noundef %bs, i64 noundef %be) #0 {
entry:
  %retval = alloca i64, align 8
  %bp.addr = alloca ptr, align 8
  %bs.addr = alloca i64, align 8
  %be.addr = alloca i64, align 8
  %bits = alloca i64, align 8
  %n = alloca i64, align 8
  %span = alloca i64, align 8
  %lp = alloca ptr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i64 %bs, ptr %bs.addr, align 8
  store i64 %be, ptr %be.addr, align 8
  %0 = load i64, ptr %be.addr, align 8
  %1 = load i64, ptr %bs.addr, align 8
  %sub = sub nsw i64 %0, %1
  store i64 %sub, ptr %bits, align 8
  %2 = load i64, ptr %bs.addr, align 8
  %shr = ashr i64 %2, 3
  %3 = load ptr, ptr %bp.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %shr
  store ptr %add.ptr, ptr %bp.addr, align 8
  %4 = load i64, ptr %bits, align 8
  %cmp = icmp sgt i64 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load i64, ptr %bs.addr, align 8
  %and = and i64 %5, 7
  store i64 %and, ptr %n, align 8
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %bp.addr, align 8
  %7 = load i8, ptr %6, align 1
  %conv = zext i8 %7 to i32
  %8 = load i64, ptr %n, align 8
  %sh_prom = trunc i64 %8 to i32
  %shl = shl i32 %conv, %sh_prom
  %and1 = and i32 %shl, 255
  %idxprom = sext i32 %and1 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %idxprom
  %9 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %9 to i64
  store i64 %conv2, ptr %span, align 8
  %10 = load i64, ptr %span, align 8
  %11 = load i64, ptr %n, align 8
  %sub3 = sub nsw i64 8, %11
  %cmp4 = icmp sgt i64 %10, %sub3
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %12 = load i64, ptr %n, align 8
  %sub7 = sub nsw i64 8, %12
  store i64 %sub7, ptr %span, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %13 = load i64, ptr %span, align 8
  %14 = load i64, ptr %bits, align 8
  %cmp8 = icmp sgt i64 %13, %14
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %15 = load i64, ptr %bits, align 8
  store i64 %15, ptr %span, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %16 = load i64, ptr %n, align 8
  %17 = load i64, ptr %span, align 8
  %add = add nsw i64 %16, %17
  %cmp12 = icmp slt i64 %add, 8
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  %18 = load i64, ptr %span, align 8
  store i64 %18, ptr %retval, align 8
  br label %return

if.end15:                                         ; preds = %if.end11
  %19 = load i64, ptr %span, align 8
  %20 = load i64, ptr %bits, align 8
  %sub16 = sub nsw i64 %20, %19
  store i64 %sub16, ptr %bits, align 8
  %21 = load ptr, ptr %bp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr, ptr %bp.addr, align 8
  br label %if.end17

if.else:                                          ; preds = %land.lhs.true, %entry
  store i64 0, ptr %span, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end15
  %22 = load i64, ptr %bits, align 8
  %cmp18 = icmp uge i64 %22, 128
  br i1 %cmp18, label %if.then20, label %if.end46

if.then20:                                        ; preds = %if.end17
  br label %while.cond

while.cond:                                       ; preds = %if.end32, %if.then20
  %23 = load ptr, ptr %bp.addr, align 8
  %24 = ptrtoint ptr %23 to i64
  %and21 = and i64 %24, 7
  %cmp22 = icmp eq i64 %and21, 0
  %lnot = xor i1 %cmp22, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load ptr, ptr %bp.addr, align 8
  %26 = load i8, ptr %25, align 1
  %conv24 = zext i8 %26 to i32
  %cmp25 = icmp ne i32 %conv24, 0
  br i1 %cmp25, label %if.then27, label %if.end32

if.then27:                                        ; preds = %while.body
  %27 = load i64, ptr %span, align 8
  %28 = load ptr, ptr %bp.addr, align 8
  %29 = load i8, ptr %28, align 1
  %idxprom28 = zext i8 %29 to i64
  %arrayidx29 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %idxprom28
  %30 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %30 to i64
  %add31 = add nsw i64 %27, %conv30
  store i64 %add31, ptr %retval, align 8
  br label %return

if.end32:                                         ; preds = %while.body
  %31 = load i64, ptr %span, align 8
  %add33 = add nsw i64 %31, 8
  store i64 %add33, ptr %span, align 8
  %32 = load i64, ptr %bits, align 8
  %sub34 = sub nsw i64 %32, 8
  store i64 %sub34, ptr %bits, align 8
  %33 = load ptr, ptr %bp.addr, align 8
  %incdec.ptr35 = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr35, ptr %bp.addr, align 8
  br label %while.cond, !llvm.loop !47

while.end:                                        ; preds = %while.cond
  %34 = load ptr, ptr %bp.addr, align 8
  store ptr %34, ptr %lp, align 8
  br label %while.cond36

while.cond36:                                     ; preds = %while.body41, %while.end
  %35 = load i64, ptr %bits, align 8
  %cmp37 = icmp uge i64 %35, 64
  br i1 %cmp37, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond36
  %36 = load ptr, ptr %lp, align 8
  %37 = load i64, ptr %36, align 8
  %cmp39 = icmp eq i64 %37, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond36
  %38 = phi i1 [ false, %while.cond36 ], [ %cmp39, %land.rhs ]
  br i1 %38, label %while.body41, label %while.end45

while.body41:                                     ; preds = %land.end
  %39 = load i64, ptr %span, align 8
  %add42 = add i64 %39, 64
  store i64 %add42, ptr %span, align 8
  %40 = load i64, ptr %bits, align 8
  %sub43 = sub i64 %40, 64
  store i64 %sub43, ptr %bits, align 8
  %41 = load ptr, ptr %lp, align 8
  %incdec.ptr44 = getelementptr inbounds i64, ptr %41, i32 1
  store ptr %incdec.ptr44, ptr %lp, align 8
  br label %while.cond36, !llvm.loop !48

while.end45:                                      ; preds = %land.end
  %42 = load ptr, ptr %lp, align 8
  store ptr %42, ptr %bp.addr, align 8
  br label %if.end46

if.end46:                                         ; preds = %while.end45, %if.end17
  br label %while.cond47

while.cond47:                                     ; preds = %if.end59, %if.end46
  %43 = load i64, ptr %bits, align 8
  %cmp48 = icmp sge i64 %43, 8
  br i1 %cmp48, label %while.body50, label %while.end63

while.body50:                                     ; preds = %while.cond47
  %44 = load ptr, ptr %bp.addr, align 8
  %45 = load i8, ptr %44, align 1
  %conv51 = zext i8 %45 to i32
  %cmp52 = icmp ne i32 %conv51, 0
  br i1 %cmp52, label %if.then54, label %if.end59

if.then54:                                        ; preds = %while.body50
  %46 = load i64, ptr %span, align 8
  %47 = load ptr, ptr %bp.addr, align 8
  %48 = load i8, ptr %47, align 1
  %idxprom55 = zext i8 %48 to i64
  %arrayidx56 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %idxprom55
  %49 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %49 to i64
  %add58 = add nsw i64 %46, %conv57
  store i64 %add58, ptr %retval, align 8
  br label %return

if.end59:                                         ; preds = %while.body50
  %50 = load i64, ptr %span, align 8
  %add60 = add nsw i64 %50, 8
  store i64 %add60, ptr %span, align 8
  %51 = load i64, ptr %bits, align 8
  %sub61 = sub nsw i64 %51, 8
  store i64 %sub61, ptr %bits, align 8
  %52 = load ptr, ptr %bp.addr, align 8
  %incdec.ptr62 = getelementptr inbounds i8, ptr %52, i32 1
  store ptr %incdec.ptr62, ptr %bp.addr, align 8
  br label %while.cond47, !llvm.loop !49

while.end63:                                      ; preds = %while.cond47
  %53 = load i64, ptr %bits, align 8
  %cmp64 = icmp sgt i64 %53, 0
  br i1 %cmp64, label %if.then66, label %if.end73

if.then66:                                        ; preds = %while.end63
  %54 = load ptr, ptr %bp.addr, align 8
  %55 = load i8, ptr %54, align 1
  %idxprom67 = zext i8 %55 to i64
  %arrayidx68 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %idxprom67
  %56 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %56 to i64
  store i64 %conv69, ptr %n, align 8
  %57 = load i64, ptr %n, align 8
  %58 = load i64, ptr %bits, align 8
  %cmp70 = icmp sgt i64 %57, %58
  br i1 %cmp70, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then66
  %59 = load i64, ptr %bits, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then66
  %60 = load i64, ptr %n, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %59, %cond.true ], [ %60, %cond.false ]
  %61 = load i64, ptr %span, align 8
  %add72 = add nsw i64 %61, %cond
  store i64 %add72, ptr %span, align 8
  br label %if.end73

if.end73:                                         ; preds = %cond.end, %while.end63
  %62 = load i64, ptr %span, align 8
  store i64 %62, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end73, %if.then54, %if.then27, %if.then14
  %63 = load i64, ptr %retval, align 8
  ret i64 %63
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
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load ptr, ptr %sp, align 8
  %bit1 = getelementptr inbounds %struct.Fax3EncodeState, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %bit1, align 4
  store i32 %3, ptr %bit, align 4
  %4 = load ptr, ptr %sp, align 8
  %data2 = getelementptr inbounds %struct.Fax3EncodeState, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %data2, align 8
  store i32 %5, ptr %data, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end34, %entry
  %6 = load i64, ptr %span.addr, align 8
  %cmp = icmp sge i64 %6, 2624
  br i1 %cmp, label %while.body, label %while.end37

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %tab.addr, align 8
  %arrayidx = getelementptr inbounds %struct.tableentry, ptr %7, i64 103
  store ptr %arrayidx, ptr %te, align 8
  %8 = load ptr, ptr %te, align 8
  %code3 = getelementptr inbounds %struct.tableentry, ptr %8, i32 0, i32 1
  %9 = load i16, ptr %code3, align 2
  %conv = zext i16 %9 to i32
  store i32 %conv, ptr %code, align 4
  %10 = load ptr, ptr %te, align 8
  %length4 = getelementptr inbounds %struct.tableentry, ptr %10, i32 0, i32 0
  %11 = load i16, ptr %length4, align 2
  %conv5 = zext i16 %11 to i32
  store i32 %conv5, ptr %length, align 4
  br label %while.cond6

while.cond6:                                      ; preds = %if.end, %while.body
  %12 = load i32, ptr %length, align 4
  %13 = load i32, ptr %bit, align 4
  %cmp7 = icmp ugt i32 %12, %13
  br i1 %cmp7, label %while.body9, label %while.end

while.body9:                                      ; preds = %while.cond6
  %14 = load i32, ptr %code, align 4
  %15 = load i32, ptr %length, align 4
  %16 = load i32, ptr %bit, align 4
  %sub = sub i32 %15, %16
  %shr = lshr i32 %14, %sub
  %17 = load i32, ptr %data, align 4
  %or = or i32 %17, %shr
  store i32 %or, ptr %data, align 4
  %18 = load i32, ptr %bit, align 4
  %19 = load i32, ptr %length, align 4
  %sub10 = sub i32 %19, %18
  store i32 %sub10, ptr %length, align 4
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %20, i32 0, i32 43
  %21 = load i64, ptr %tif_rawcc, align 8
  %22 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %22, i32 0, i32 41
  %23 = load i64, ptr %tif_rawdatasize, align 8
  %cmp11 = icmp sge i64 %21, %23
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %while.body9
  %24 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %24)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body9
  %25 = load i32, ptr %data, align 4
  %conv13 = trunc i32 %25 to i8
  %26 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %26, i32 0, i32 42
  %27 = load ptr, ptr %tif_rawcp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr, ptr %tif_rawcp, align 8
  store i8 %conv13, ptr %27, align 1
  %28 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc14 = getelementptr inbounds %struct.tiff, ptr %28, i32 0, i32 43
  %29 = load i64, ptr %tif_rawcc14, align 8
  %inc = add nsw i64 %29, 1
  store i64 %inc, ptr %tif_rawcc14, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %while.cond6, !llvm.loop !50

while.end:                                        ; preds = %while.cond6
  %30 = load i32, ptr %code, align 4
  %31 = load i32, ptr %length, align 4
  %idxprom = zext i32 %31 to i64
  %arrayidx15 = getelementptr inbounds [9 x i32], ptr @_msbmask, i64 0, i64 %idxprom
  %32 = load i32, ptr %arrayidx15, align 4
  %and = and i32 %30, %32
  %33 = load i32, ptr %bit, align 4
  %34 = load i32, ptr %length, align 4
  %sub16 = sub i32 %33, %34
  %shl = shl i32 %and, %sub16
  %35 = load i32, ptr %data, align 4
  %or17 = or i32 %35, %shl
  store i32 %or17, ptr %data, align 4
  %36 = load i32, ptr %length, align 4
  %37 = load i32, ptr %bit, align 4
  %sub18 = sub i32 %37, %36
  store i32 %sub18, ptr %bit, align 4
  %38 = load i32, ptr %bit, align 4
  %cmp19 = icmp eq i32 %38, 0
  br i1 %cmp19, label %if.then21, label %if.end34

if.then21:                                        ; preds = %while.end
  %39 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc22 = getelementptr inbounds %struct.tiff, ptr %39, i32 0, i32 43
  %40 = load i64, ptr %tif_rawcc22, align 8
  %41 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize23 = getelementptr inbounds %struct.tiff, ptr %41, i32 0, i32 41
  %42 = load i64, ptr %tif_rawdatasize23, align 8
  %cmp24 = icmp sge i64 %40, %42
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.then21
  %43 = load ptr, ptr %tif.addr, align 8
  %call27 = call i32 @TIFFFlushData1(ptr noundef %43)
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.then21
  %44 = load i32, ptr %data, align 4
  %conv29 = trunc i32 %44 to i8
  %45 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp30 = getelementptr inbounds %struct.tiff, ptr %45, i32 0, i32 42
  %46 = load ptr, ptr %tif_rawcp30, align 8
  %incdec.ptr31 = getelementptr inbounds i8, ptr %46, i32 1
  store ptr %incdec.ptr31, ptr %tif_rawcp30, align 8
  store i8 %conv29, ptr %46, align 1
  %47 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc32 = getelementptr inbounds %struct.tiff, ptr %47, i32 0, i32 43
  %48 = load i64, ptr %tif_rawcc32, align 8
  %inc33 = add nsw i64 %48, 1
  store i64 %inc33, ptr %tif_rawcc32, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end28, %while.end
  %49 = load ptr, ptr %te, align 8
  %runlen = getelementptr inbounds %struct.tableentry, ptr %49, i32 0, i32 2
  %50 = load i16, ptr %runlen, align 2
  %conv35 = sext i16 %50 to i64
  %51 = load i64, ptr %span.addr, align 8
  %sub36 = sub nsw i64 %51, %conv35
  store i64 %sub36, ptr %span.addr, align 8
  br label %while.cond, !llvm.loop !51

while.end37:                                      ; preds = %while.cond
  %52 = load i64, ptr %span.addr, align 8
  %cmp38 = icmp sge i64 %52, 64
  br i1 %cmp38, label %if.then40, label %if.end101

if.then40:                                        ; preds = %while.end37
  %53 = load ptr, ptr %tab.addr, align 8
  %54 = load i64, ptr %span.addr, align 8
  %shr42 = ashr i64 %54, 6
  %add = add nsw i64 63, %shr42
  %arrayidx43 = getelementptr inbounds %struct.tableentry, ptr %53, i64 %add
  store ptr %arrayidx43, ptr %te41, align 8
  %55 = load ptr, ptr %te41, align 8
  %runlen44 = getelementptr inbounds %struct.tableentry, ptr %55, i32 0, i32 2
  %56 = load i16, ptr %runlen44, align 2
  %conv45 = sext i16 %56 to i64
  %57 = load i64, ptr %span.addr, align 8
  %shr46 = ashr i64 %57, 6
  %mul = mul nsw i64 64, %shr46
  %cmp47 = icmp eq i64 %conv45, %mul
  %lnot = xor i1 %cmp47, true
  %lnot.ext = zext i1 %lnot to i32
  %conv49 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv49, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then40
  call void @__assert_rtn(ptr noundef @__func__.putspan, ptr noundef @.str, i32 noundef 632, ptr noundef @.str.42) #3
  unreachable

58:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.then40
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %58
  %59 = load ptr, ptr %te41, align 8
  %code50 = getelementptr inbounds %struct.tableentry, ptr %59, i32 0, i32 1
  %60 = load i16, ptr %code50, align 2
  %conv51 = zext i16 %60 to i32
  store i32 %conv51, ptr %code, align 4
  %61 = load ptr, ptr %te41, align 8
  %length52 = getelementptr inbounds %struct.tableentry, ptr %61, i32 0, i32 0
  %62 = load i16, ptr %length52, align 2
  %conv53 = zext i16 %62 to i32
  store i32 %conv53, ptr %length, align 4
  br label %while.cond54

while.cond54:                                     ; preds = %if.end68, %cond.end
  %63 = load i32, ptr %length, align 4
  %64 = load i32, ptr %bit, align 4
  %cmp55 = icmp ugt i32 %63, %64
  br i1 %cmp55, label %while.body57, label %while.end74

while.body57:                                     ; preds = %while.cond54
  %65 = load i32, ptr %code, align 4
  %66 = load i32, ptr %length, align 4
  %67 = load i32, ptr %bit, align 4
  %sub58 = sub i32 %66, %67
  %shr59 = lshr i32 %65, %sub58
  %68 = load i32, ptr %data, align 4
  %or60 = or i32 %68, %shr59
  store i32 %or60, ptr %data, align 4
  %69 = load i32, ptr %bit, align 4
  %70 = load i32, ptr %length, align 4
  %sub61 = sub i32 %70, %69
  store i32 %sub61, ptr %length, align 4
  %71 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc62 = getelementptr inbounds %struct.tiff, ptr %71, i32 0, i32 43
  %72 = load i64, ptr %tif_rawcc62, align 8
  %73 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize63 = getelementptr inbounds %struct.tiff, ptr %73, i32 0, i32 41
  %74 = load i64, ptr %tif_rawdatasize63, align 8
  %cmp64 = icmp sge i64 %72, %74
  br i1 %cmp64, label %if.then66, label %if.end68

if.then66:                                        ; preds = %while.body57
  %75 = load ptr, ptr %tif.addr, align 8
  %call67 = call i32 @TIFFFlushData1(ptr noundef %75)
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %while.body57
  %76 = load i32, ptr %data, align 4
  %conv69 = trunc i32 %76 to i8
  %77 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp70 = getelementptr inbounds %struct.tiff, ptr %77, i32 0, i32 42
  %78 = load ptr, ptr %tif_rawcp70, align 8
  %incdec.ptr71 = getelementptr inbounds i8, ptr %78, i32 1
  store ptr %incdec.ptr71, ptr %tif_rawcp70, align 8
  store i8 %conv69, ptr %78, align 1
  %79 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc72 = getelementptr inbounds %struct.tiff, ptr %79, i32 0, i32 43
  %80 = load i64, ptr %tif_rawcc72, align 8
  %inc73 = add nsw i64 %80, 1
  store i64 %inc73, ptr %tif_rawcc72, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %while.cond54, !llvm.loop !52

while.end74:                                      ; preds = %while.cond54
  %81 = load i32, ptr %code, align 4
  %82 = load i32, ptr %length, align 4
  %idxprom75 = zext i32 %82 to i64
  %arrayidx76 = getelementptr inbounds [9 x i32], ptr @_msbmask, i64 0, i64 %idxprom75
  %83 = load i32, ptr %arrayidx76, align 4
  %and77 = and i32 %81, %83
  %84 = load i32, ptr %bit, align 4
  %85 = load i32, ptr %length, align 4
  %sub78 = sub i32 %84, %85
  %shl79 = shl i32 %and77, %sub78
  %86 = load i32, ptr %data, align 4
  %or80 = or i32 %86, %shl79
  store i32 %or80, ptr %data, align 4
  %87 = load i32, ptr %length, align 4
  %88 = load i32, ptr %bit, align 4
  %sub81 = sub i32 %88, %87
  store i32 %sub81, ptr %bit, align 4
  %89 = load i32, ptr %bit, align 4
  %cmp82 = icmp eq i32 %89, 0
  br i1 %cmp82, label %if.then84, label %if.end97

if.then84:                                        ; preds = %while.end74
  %90 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc85 = getelementptr inbounds %struct.tiff, ptr %90, i32 0, i32 43
  %91 = load i64, ptr %tif_rawcc85, align 8
  %92 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize86 = getelementptr inbounds %struct.tiff, ptr %92, i32 0, i32 41
  %93 = load i64, ptr %tif_rawdatasize86, align 8
  %cmp87 = icmp sge i64 %91, %93
  br i1 %cmp87, label %if.then89, label %if.end91

if.then89:                                        ; preds = %if.then84
  %94 = load ptr, ptr %tif.addr, align 8
  %call90 = call i32 @TIFFFlushData1(ptr noundef %94)
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %if.then84
  %95 = load i32, ptr %data, align 4
  %conv92 = trunc i32 %95 to i8
  %96 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp93 = getelementptr inbounds %struct.tiff, ptr %96, i32 0, i32 42
  %97 = load ptr, ptr %tif_rawcp93, align 8
  %incdec.ptr94 = getelementptr inbounds i8, ptr %97, i32 1
  store ptr %incdec.ptr94, ptr %tif_rawcp93, align 8
  store i8 %conv92, ptr %97, align 1
  %98 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc95 = getelementptr inbounds %struct.tiff, ptr %98, i32 0, i32 43
  %99 = load i64, ptr %tif_rawcc95, align 8
  %inc96 = add nsw i64 %99, 1
  store i64 %inc96, ptr %tif_rawcc95, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.end91, %while.end74
  %100 = load ptr, ptr %te41, align 8
  %runlen98 = getelementptr inbounds %struct.tableentry, ptr %100, i32 0, i32 2
  %101 = load i16, ptr %runlen98, align 2
  %conv99 = sext i16 %101 to i64
  %102 = load i64, ptr %span.addr, align 8
  %sub100 = sub nsw i64 %102, %conv99
  store i64 %sub100, ptr %span.addr, align 8
  br label %if.end101

if.end101:                                        ; preds = %if.end97, %while.end37
  %103 = load ptr, ptr %tab.addr, align 8
  %104 = load i64, ptr %span.addr, align 8
  %arrayidx102 = getelementptr inbounds %struct.tableentry, ptr %103, i64 %104
  %code103 = getelementptr inbounds %struct.tableentry, ptr %arrayidx102, i32 0, i32 1
  %105 = load i16, ptr %code103, align 2
  %conv104 = zext i16 %105 to i32
  store i32 %conv104, ptr %code, align 4
  %106 = load ptr, ptr %tab.addr, align 8
  %107 = load i64, ptr %span.addr, align 8
  %arrayidx105 = getelementptr inbounds %struct.tableentry, ptr %106, i64 %107
  %length106 = getelementptr inbounds %struct.tableentry, ptr %arrayidx105, i32 0, i32 0
  %108 = load i16, ptr %length106, align 2
  %conv107 = zext i16 %108 to i32
  store i32 %conv107, ptr %length, align 4
  br label %while.cond108

while.cond108:                                    ; preds = %if.end122, %if.end101
  %109 = load i32, ptr %length, align 4
  %110 = load i32, ptr %bit, align 4
  %cmp109 = icmp ugt i32 %109, %110
  br i1 %cmp109, label %while.body111, label %while.end128

while.body111:                                    ; preds = %while.cond108
  %111 = load i32, ptr %code, align 4
  %112 = load i32, ptr %length, align 4
  %113 = load i32, ptr %bit, align 4
  %sub112 = sub i32 %112, %113
  %shr113 = lshr i32 %111, %sub112
  %114 = load i32, ptr %data, align 4
  %or114 = or i32 %114, %shr113
  store i32 %or114, ptr %data, align 4
  %115 = load i32, ptr %bit, align 4
  %116 = load i32, ptr %length, align 4
  %sub115 = sub i32 %116, %115
  store i32 %sub115, ptr %length, align 4
  %117 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc116 = getelementptr inbounds %struct.tiff, ptr %117, i32 0, i32 43
  %118 = load i64, ptr %tif_rawcc116, align 8
  %119 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize117 = getelementptr inbounds %struct.tiff, ptr %119, i32 0, i32 41
  %120 = load i64, ptr %tif_rawdatasize117, align 8
  %cmp118 = icmp sge i64 %118, %120
  br i1 %cmp118, label %if.then120, label %if.end122

if.then120:                                       ; preds = %while.body111
  %121 = load ptr, ptr %tif.addr, align 8
  %call121 = call i32 @TIFFFlushData1(ptr noundef %121)
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %while.body111
  %122 = load i32, ptr %data, align 4
  %conv123 = trunc i32 %122 to i8
  %123 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp124 = getelementptr inbounds %struct.tiff, ptr %123, i32 0, i32 42
  %124 = load ptr, ptr %tif_rawcp124, align 8
  %incdec.ptr125 = getelementptr inbounds i8, ptr %124, i32 1
  store ptr %incdec.ptr125, ptr %tif_rawcp124, align 8
  store i8 %conv123, ptr %124, align 1
  %125 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc126 = getelementptr inbounds %struct.tiff, ptr %125, i32 0, i32 43
  %126 = load i64, ptr %tif_rawcc126, align 8
  %inc127 = add nsw i64 %126, 1
  store i64 %inc127, ptr %tif_rawcc126, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %while.cond108, !llvm.loop !53

while.end128:                                     ; preds = %while.cond108
  %127 = load i32, ptr %code, align 4
  %128 = load i32, ptr %length, align 4
  %idxprom129 = zext i32 %128 to i64
  %arrayidx130 = getelementptr inbounds [9 x i32], ptr @_msbmask, i64 0, i64 %idxprom129
  %129 = load i32, ptr %arrayidx130, align 4
  %and131 = and i32 %127, %129
  %130 = load i32, ptr %bit, align 4
  %131 = load i32, ptr %length, align 4
  %sub132 = sub i32 %130, %131
  %shl133 = shl i32 %and131, %sub132
  %132 = load i32, ptr %data, align 4
  %or134 = or i32 %132, %shl133
  store i32 %or134, ptr %data, align 4
  %133 = load i32, ptr %length, align 4
  %134 = load i32, ptr %bit, align 4
  %sub135 = sub i32 %134, %133
  store i32 %sub135, ptr %bit, align 4
  %135 = load i32, ptr %bit, align 4
  %cmp136 = icmp eq i32 %135, 0
  br i1 %cmp136, label %if.then138, label %if.end151

if.then138:                                       ; preds = %while.end128
  %136 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc139 = getelementptr inbounds %struct.tiff, ptr %136, i32 0, i32 43
  %137 = load i64, ptr %tif_rawcc139, align 8
  %138 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize140 = getelementptr inbounds %struct.tiff, ptr %138, i32 0, i32 41
  %139 = load i64, ptr %tif_rawdatasize140, align 8
  %cmp141 = icmp sge i64 %137, %139
  br i1 %cmp141, label %if.then143, label %if.end145

if.then143:                                       ; preds = %if.then138
  %140 = load ptr, ptr %tif.addr, align 8
  %call144 = call i32 @TIFFFlushData1(ptr noundef %140)
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %if.then138
  %141 = load i32, ptr %data, align 4
  %conv146 = trunc i32 %141 to i8
  %142 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp147 = getelementptr inbounds %struct.tiff, ptr %142, i32 0, i32 42
  %143 = load ptr, ptr %tif_rawcp147, align 8
  %incdec.ptr148 = getelementptr inbounds i8, ptr %143, i32 1
  store ptr %incdec.ptr148, ptr %tif_rawcp147, align 8
  store i8 %conv146, ptr %143, align 1
  %144 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc149 = getelementptr inbounds %struct.tiff, ptr %144, i32 0, i32 43
  %145 = load i64, ptr %tif_rawcc149, align 8
  %inc150 = add nsw i64 %145, 1
  store i64 %inc150, ptr %tif_rawcc149, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.end145, %while.end128
  %146 = load i32, ptr %data, align 4
  %147 = load ptr, ptr %sp, align 8
  %data152 = getelementptr inbounds %struct.Fax3EncodeState, ptr %147, i32 0, i32 1
  store i32 %146, ptr %data152, align 8
  %148 = load i32, ptr %bit, align 4
  %149 = load ptr, ptr %sp, align 8
  %bit153 = getelementptr inbounds %struct.Fax3EncodeState, ptr %149, i32 0, i32 2
  store i32 %148, ptr %bit153, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @find1span(ptr noundef %bp, i64 noundef %bs, i64 noundef %be) #0 {
entry:
  %retval = alloca i64, align 8
  %bp.addr = alloca ptr, align 8
  %bs.addr = alloca i64, align 8
  %be.addr = alloca i64, align 8
  %bits = alloca i64, align 8
  %n = alloca i64, align 8
  %span = alloca i64, align 8
  %lp = alloca ptr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i64 %bs, ptr %bs.addr, align 8
  store i64 %be, ptr %be.addr, align 8
  %0 = load i64, ptr %be.addr, align 8
  %1 = load i64, ptr %bs.addr, align 8
  %sub = sub nsw i64 %0, %1
  store i64 %sub, ptr %bits, align 8
  %2 = load i64, ptr %bs.addr, align 8
  %shr = ashr i64 %2, 3
  %3 = load ptr, ptr %bp.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %shr
  store ptr %add.ptr, ptr %bp.addr, align 8
  %4 = load i64, ptr %bits, align 8
  %cmp = icmp sgt i64 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load i64, ptr %bs.addr, align 8
  %and = and i64 %5, 7
  store i64 %and, ptr %n, align 8
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %bp.addr, align 8
  %7 = load i8, ptr %6, align 1
  %conv = zext i8 %7 to i32
  %8 = load i64, ptr %n, align 8
  %sh_prom = trunc i64 %8 to i32
  %shl = shl i32 %conv, %sh_prom
  %and1 = and i32 %shl, 255
  %idxprom = sext i32 %and1 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %idxprom
  %9 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %9 to i64
  store i64 %conv2, ptr %span, align 8
  %10 = load i64, ptr %span, align 8
  %11 = load i64, ptr %n, align 8
  %sub3 = sub nsw i64 8, %11
  %cmp4 = icmp sgt i64 %10, %sub3
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %12 = load i64, ptr %n, align 8
  %sub7 = sub nsw i64 8, %12
  store i64 %sub7, ptr %span, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %13 = load i64, ptr %span, align 8
  %14 = load i64, ptr %bits, align 8
  %cmp8 = icmp sgt i64 %13, %14
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %15 = load i64, ptr %bits, align 8
  store i64 %15, ptr %span, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %16 = load i64, ptr %n, align 8
  %17 = load i64, ptr %span, align 8
  %add = add nsw i64 %16, %17
  %cmp12 = icmp slt i64 %add, 8
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  %18 = load i64, ptr %span, align 8
  store i64 %18, ptr %retval, align 8
  br label %return

if.end15:                                         ; preds = %if.end11
  %19 = load i64, ptr %span, align 8
  %20 = load i64, ptr %bits, align 8
  %sub16 = sub nsw i64 %20, %19
  store i64 %sub16, ptr %bits, align 8
  %21 = load ptr, ptr %bp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr, ptr %bp.addr, align 8
  br label %if.end17

if.else:                                          ; preds = %land.lhs.true, %entry
  store i64 0, ptr %span, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end15
  %22 = load i64, ptr %bits, align 8
  %cmp18 = icmp uge i64 %22, 128
  br i1 %cmp18, label %if.then20, label %if.end46

if.then20:                                        ; preds = %if.end17
  br label %while.cond

while.cond:                                       ; preds = %if.end32, %if.then20
  %23 = load ptr, ptr %bp.addr, align 8
  %24 = ptrtoint ptr %23 to i64
  %and21 = and i64 %24, 7
  %cmp22 = icmp eq i64 %and21, 0
  %lnot = xor i1 %cmp22, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load ptr, ptr %bp.addr, align 8
  %26 = load i8, ptr %25, align 1
  %conv24 = zext i8 %26 to i32
  %cmp25 = icmp ne i32 %conv24, 255
  br i1 %cmp25, label %if.then27, label %if.end32

if.then27:                                        ; preds = %while.body
  %27 = load i64, ptr %span, align 8
  %28 = load ptr, ptr %bp.addr, align 8
  %29 = load i8, ptr %28, align 1
  %idxprom28 = zext i8 %29 to i64
  %arrayidx29 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %idxprom28
  %30 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %30 to i64
  %add31 = add nsw i64 %27, %conv30
  store i64 %add31, ptr %retval, align 8
  br label %return

if.end32:                                         ; preds = %while.body
  %31 = load i64, ptr %span, align 8
  %add33 = add nsw i64 %31, 8
  store i64 %add33, ptr %span, align 8
  %32 = load i64, ptr %bits, align 8
  %sub34 = sub nsw i64 %32, 8
  store i64 %sub34, ptr %bits, align 8
  %33 = load ptr, ptr %bp.addr, align 8
  %incdec.ptr35 = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr35, ptr %bp.addr, align 8
  br label %while.cond, !llvm.loop !54

while.end:                                        ; preds = %while.cond
  %34 = load ptr, ptr %bp.addr, align 8
  store ptr %34, ptr %lp, align 8
  br label %while.cond36

while.cond36:                                     ; preds = %while.body41, %while.end
  %35 = load i64, ptr %bits, align 8
  %cmp37 = icmp uge i64 %35, 64
  br i1 %cmp37, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond36
  %36 = load ptr, ptr %lp, align 8
  %37 = load i64, ptr %36, align 8
  %cmp39 = icmp eq i64 %37, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond36
  %38 = phi i1 [ false, %while.cond36 ], [ %cmp39, %land.rhs ]
  br i1 %38, label %while.body41, label %while.end45

while.body41:                                     ; preds = %land.end
  %39 = load i64, ptr %span, align 8
  %add42 = add i64 %39, 64
  store i64 %add42, ptr %span, align 8
  %40 = load i64, ptr %bits, align 8
  %sub43 = sub i64 %40, 64
  store i64 %sub43, ptr %bits, align 8
  %41 = load ptr, ptr %lp, align 8
  %incdec.ptr44 = getelementptr inbounds i64, ptr %41, i32 1
  store ptr %incdec.ptr44, ptr %lp, align 8
  br label %while.cond36, !llvm.loop !55

while.end45:                                      ; preds = %land.end
  %42 = load ptr, ptr %lp, align 8
  store ptr %42, ptr %bp.addr, align 8
  br label %if.end46

if.end46:                                         ; preds = %while.end45, %if.end17
  br label %while.cond47

while.cond47:                                     ; preds = %if.end59, %if.end46
  %43 = load i64, ptr %bits, align 8
  %cmp48 = icmp sge i64 %43, 8
  br i1 %cmp48, label %while.body50, label %while.end63

while.body50:                                     ; preds = %while.cond47
  %44 = load ptr, ptr %bp.addr, align 8
  %45 = load i8, ptr %44, align 1
  %conv51 = zext i8 %45 to i32
  %cmp52 = icmp ne i32 %conv51, 255
  br i1 %cmp52, label %if.then54, label %if.end59

if.then54:                                        ; preds = %while.body50
  %46 = load i64, ptr %span, align 8
  %47 = load ptr, ptr %bp.addr, align 8
  %48 = load i8, ptr %47, align 1
  %idxprom55 = zext i8 %48 to i64
  %arrayidx56 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %idxprom55
  %49 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %49 to i64
  %add58 = add nsw i64 %46, %conv57
  store i64 %add58, ptr %retval, align 8
  br label %return

if.end59:                                         ; preds = %while.body50
  %50 = load i64, ptr %span, align 8
  %add60 = add nsw i64 %50, 8
  store i64 %add60, ptr %span, align 8
  %51 = load i64, ptr %bits, align 8
  %sub61 = sub nsw i64 %51, 8
  store i64 %sub61, ptr %bits, align 8
  %52 = load ptr, ptr %bp.addr, align 8
  %incdec.ptr62 = getelementptr inbounds i8, ptr %52, i32 1
  store ptr %incdec.ptr62, ptr %bp.addr, align 8
  br label %while.cond47, !llvm.loop !56

while.end63:                                      ; preds = %while.cond47
  %53 = load i64, ptr %bits, align 8
  %cmp64 = icmp sgt i64 %53, 0
  br i1 %cmp64, label %if.then66, label %if.end73

if.then66:                                        ; preds = %while.end63
  %54 = load ptr, ptr %bp.addr, align 8
  %55 = load i8, ptr %54, align 1
  %idxprom67 = zext i8 %55 to i64
  %arrayidx68 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %idxprom67
  %56 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %56 to i64
  store i64 %conv69, ptr %n, align 8
  %57 = load i64, ptr %n, align 8
  %58 = load i64, ptr %bits, align 8
  %cmp70 = icmp sgt i64 %57, %58
  br i1 %cmp70, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then66
  %59 = load i64, ptr %bits, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then66
  %60 = load i64, ptr %n, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %59, %cond.true ], [ %60, %cond.false ]
  %61 = load i64, ptr %span, align 8
  %add72 = add nsw i64 %61, %cond
  store i64 %add72, ptr %span, align 8
  br label %if.end73

if.end73:                                         ; preds = %cond.end, %while.end63
  %62 = load i64, ptr %span, align 8
  store i64 %62, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end73, %if.then54, %if.then27, %if.then14
  %63 = load i64, ptr %retval, align 8
  ret i64 %63
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
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load ptr, ptr %sp, align 8
  %bit1 = getelementptr inbounds %struct.Fax3EncodeState, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %bit1, align 4
  store i32 %3, ptr %bit, align 4
  %4 = load ptr, ptr %sp, align 8
  %data2 = getelementptr inbounds %struct.Fax3EncodeState, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %data2, align 8
  store i32 %5, ptr %data, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load i32, ptr %length.addr, align 4
  %7 = load i32, ptr %bit, align 4
  %cmp = icmp ugt i32 %6, %7
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, ptr %bits.addr, align 4
  %9 = load i32, ptr %length.addr, align 4
  %10 = load i32, ptr %bit, align 4
  %sub = sub i32 %9, %10
  %shr = lshr i32 %8, %sub
  %11 = load i32, ptr %data, align 4
  %or = or i32 %11, %shr
  store i32 %or, ptr %data, align 4
  %12 = load i32, ptr %bit, align 4
  %13 = load i32, ptr %length.addr, align 4
  %sub3 = sub i32 %13, %12
  store i32 %sub3, ptr %length.addr, align 4
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %14, i32 0, i32 43
  %15 = load i64, ptr %tif_rawcc, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 41
  %17 = load i64, ptr %tif_rawdatasize, align 8
  %cmp4 = icmp sge i64 %15, %17
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %18 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %19 = load i32, ptr %data, align 4
  %conv = trunc i32 %19 to i8
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %20, i32 0, i32 42
  %21 = load ptr, ptr %tif_rawcp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr, ptr %tif_rawcp, align 8
  store i8 %conv, ptr %21, align 1
  %22 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc5 = getelementptr inbounds %struct.tiff, ptr %22, i32 0, i32 43
  %23 = load i64, ptr %tif_rawcc5, align 8
  %inc = add nsw i64 %23, 1
  store i64 %inc, ptr %tif_rawcc5, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %while.cond, !llvm.loop !57

while.end:                                        ; preds = %while.cond
  %24 = load i32, ptr %bits.addr, align 4
  %25 = load i32, ptr %length.addr, align 4
  %idxprom = zext i32 %25 to i64
  %arrayidx = getelementptr inbounds [9 x i32], ptr @_msbmask, i64 0, i64 %idxprom
  %26 = load i32, ptr %arrayidx, align 4
  %and = and i32 %24, %26
  %27 = load i32, ptr %bit, align 4
  %28 = load i32, ptr %length.addr, align 4
  %sub6 = sub i32 %27, %28
  %shl = shl i32 %and, %sub6
  %29 = load i32, ptr %data, align 4
  %or7 = or i32 %29, %shl
  store i32 %or7, ptr %data, align 4
  %30 = load i32, ptr %length.addr, align 4
  %31 = load i32, ptr %bit, align 4
  %sub8 = sub i32 %31, %30
  store i32 %sub8, ptr %bit, align 4
  %32 = load i32, ptr %bit, align 4
  %cmp9 = icmp eq i32 %32, 0
  br i1 %cmp9, label %if.then11, label %if.end24

if.then11:                                        ; preds = %while.end
  %33 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc12 = getelementptr inbounds %struct.tiff, ptr %33, i32 0, i32 43
  %34 = load i64, ptr %tif_rawcc12, align 8
  %35 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize13 = getelementptr inbounds %struct.tiff, ptr %35, i32 0, i32 41
  %36 = load i64, ptr %tif_rawdatasize13, align 8
  %cmp14 = icmp sge i64 %34, %36
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.then11
  %37 = load ptr, ptr %tif.addr, align 8
  %call17 = call i32 @TIFFFlushData1(ptr noundef %37)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.then11
  %38 = load i32, ptr %data, align 4
  %conv19 = trunc i32 %38 to i8
  %39 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp20 = getelementptr inbounds %struct.tiff, ptr %39, i32 0, i32 42
  %40 = load ptr, ptr %tif_rawcp20, align 8
  %incdec.ptr21 = getelementptr inbounds i8, ptr %40, i32 1
  store ptr %incdec.ptr21, ptr %tif_rawcp20, align 8
  store i8 %conv19, ptr %40, align 1
  %41 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc22 = getelementptr inbounds %struct.tiff, ptr %41, i32 0, i32 43
  %42 = load i64, ptr %tif_rawcc22, align 8
  %inc23 = add nsw i64 %42, 1
  store i64 %inc23, ptr %tif_rawcc22, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end18, %while.end
  %43 = load i32, ptr %data, align 4
  %44 = load ptr, ptr %sp, align 8
  %data25 = getelementptr inbounds %struct.Fax3EncodeState, ptr %44, i32 0, i32 1
  store i32 %43, ptr %data25, align 8
  %45 = load i32, ptr %bit, align 4
  %46 = load ptr, ptr %sp, align 8
  %bit26 = getelementptr inbounds %struct.Fax3EncodeState, ptr %46, i32 0, i32 2
  store i32 %45, ptr %bit26, align 4
  ret void
}

declare void @_TIFFfree(ptr noundef) #2

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { cold noreturn }

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
