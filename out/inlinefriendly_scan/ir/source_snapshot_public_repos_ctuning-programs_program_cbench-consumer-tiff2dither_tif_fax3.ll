; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2dither/tif_fax3.c'
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

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %erun.addr, align 8
  %1 = load ptr, ptr %runs.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %and = and i64 %sub.ptr.div, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %erun.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %erun.addr, align 8
  store i32 0, ptr %2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc185, %if.end
  %3 = load ptr, ptr %runs.addr, align 8
  %4 = load ptr, ptr %erun.addr, align 8
  %cmp = icmp ult ptr %3, %4
  br i1 %cmp, label %for.body, label %for.end187

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %runs.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 0
  %6 = load i32, ptr %arrayidx, align 4
  store i32 %6, ptr %run, align 4
  %7 = load i32, ptr %x, align 4
  %8 = load i32, ptr %run, align 4
  %add = add i32 %7, %8
  %9 = load i32, ptr %lastx.addr, align 4
  %cmp1 = icmp ugt i32 %add, %9
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %for.body
  %10 = load i32, ptr %lastx.addr, align 4
  %11 = load i32, ptr %x, align 4
  %sub = sub i32 %10, %11
  %conv = trunc i32 %sub to i16
  %conv3 = zext i16 %conv to i32
  %12 = load ptr, ptr %runs.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %12, i64 0
  store i32 %conv3, ptr %arrayidx4, align 4
  store i32 %conv3, ptr %run, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %for.body
  %13 = load i32, ptr %run, align 4
  %tobool6 = icmp ne i32 %13, 0
  br i1 %tobool6, label %if.then7, label %if.end82

if.then7:                                         ; preds = %if.end5
  %14 = load ptr, ptr %buf.addr, align 8
  %15 = load i32, ptr %x, align 4
  %shr = lshr i32 %15, 3
  %idx.ext = zext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 %idx.ext
  store ptr %add.ptr, ptr %cp, align 8
  %16 = load i32, ptr %x, align 4
  %and8 = and i32 %16, 7
  store i32 %and8, ptr %bx, align 4
  %17 = load i32, ptr %run, align 4
  %18 = load i32, ptr %bx, align 4
  %sub9 = sub i32 8, %18
  %cmp10 = icmp ugt i32 %17, %sub9
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then7
  %19 = load i32, ptr %bx, align 4
  %tobool13 = icmp ne i32 %19, 0
  br i1 %tobool13, label %if.then14, label %if.end22

if.then14:                                        ; preds = %if.then12
  %20 = load i32, ptr %bx, align 4
  %sub15 = sub i32 8, %20
  %shl = shl i32 255, %sub15
  %21 = load ptr, ptr %cp, align 8
  %incdec.ptr16 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr16, ptr %cp, align 8
  %22 = load i8, ptr %21, align 1
  %conv17 = zext i8 %22 to i32
  %and18 = and i32 %conv17, %shl
  %conv19 = trunc i32 %and18 to i8
  store i8 %conv19, ptr %21, align 1
  %23 = load i32, ptr %bx, align 4
  %sub20 = sub i32 8, %23
  %24 = load i32, ptr %run, align 4
  %sub21 = sub i32 %24, %sub20
  store i32 %sub21, ptr %run, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then14, %if.then12
  %25 = load i32, ptr %run, align 4
  %shr23 = lshr i32 %25, 3
  store i32 %shr23, ptr %n, align 4
  %cmp24 = icmp ne i32 %shr23, 0
  br i1 %cmp24, label %if.then26, label %if.end66

if.then26:                                        ; preds = %if.end22
  %26 = load i32, ptr %n, align 4
  %conv27 = sext i32 %26 to i64
  %div = udiv i64 %conv27, 8
  %cmp28 = icmp ugt i64 %div, 1
  br i1 %cmp28, label %if.then30, label %if.end48

if.then30:                                        ; preds = %if.then26
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc, %if.then30
  %27 = load i32, ptr %n, align 4
  %tobool32 = icmp ne i32 %27, 0
  br i1 %tobool32, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond31
  %28 = load ptr, ptr %cp, align 8
  %29 = ptrtoint ptr %28 to i64
  %and33 = and i64 %29, 7
  %cmp34 = icmp eq i64 %and33, 0
  %lnot = xor i1 %cmp34, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond31
  %30 = phi i1 [ false, %for.cond31 ], [ %lnot, %land.rhs ]
  br i1 %30, label %for.body36, label %for.end

for.body36:                                       ; preds = %land.end
  %31 = load ptr, ptr %cp, align 8
  %incdec.ptr37 = getelementptr inbounds i8, ptr %31, i32 1
  store ptr %incdec.ptr37, ptr %cp, align 8
  store i8 0, ptr %31, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body36
  %32 = load i32, ptr %n, align 4
  %dec = add nsw i32 %32, -1
  store i32 %dec, ptr %n, align 4
  br label %for.cond31, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %33 = load ptr, ptr %cp, align 8
  store ptr %33, ptr %lp, align 8
  %34 = load i32, ptr %n, align 4
  %conv38 = sext i32 %34 to i64
  %div39 = udiv i64 %conv38, 8
  %conv40 = trunc i64 %div39 to i32
  store i32 %conv40, ptr %nw, align 4
  %35 = load i32, ptr %nw, align 4
  %conv41 = sext i32 %35 to i64
  %mul = mul i64 %conv41, 8
  %36 = load i32, ptr %n, align 4
  %conv42 = sext i32 %36 to i64
  %sub43 = sub i64 %conv42, %mul
  %conv44 = trunc i64 %sub43 to i32
  store i32 %conv44, ptr %n, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end
  %37 = load ptr, ptr %lp, align 8
  %incdec.ptr45 = getelementptr inbounds i64, ptr %37, i32 1
  store ptr %incdec.ptr45, ptr %lp, align 8
  store i64 0, ptr %37, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %38 = load i32, ptr %nw, align 4
  %dec46 = add nsw i32 %38, -1
  store i32 %dec46, ptr %nw, align 4
  %tobool47 = icmp ne i32 %dec46, 0
  br i1 %tobool47, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.cond
  %39 = load ptr, ptr %lp, align 8
  store ptr %39, ptr %cp, align 8
  br label %if.end48

if.end48:                                         ; preds = %do.end, %if.then26
  %40 = load i32, ptr %n, align 4
  switch i32 %40, label %sw.epilog [
    i32 7, label %sw.bb
    i32 6, label %sw.bb50
    i32 5, label %sw.bb52
    i32 4, label %sw.bb54
    i32 3, label %sw.bb56
    i32 2, label %sw.bb58
    i32 1, label %sw.bb60
    i32 0, label %sw.bb64
  ]

sw.bb:                                            ; preds = %if.end48
  %41 = load ptr, ptr %cp, align 8
  %arrayidx49 = getelementptr inbounds i8, ptr %41, i64 6
  store i8 0, ptr %arrayidx49, align 1
  br label %sw.bb50

sw.bb50:                                          ; preds = %if.end48, %sw.bb
  %42 = load ptr, ptr %cp, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %42, i64 5
  store i8 0, ptr %arrayidx51, align 1
  br label %sw.bb52

sw.bb52:                                          ; preds = %if.end48, %sw.bb50
  %43 = load ptr, ptr %cp, align 8
  %arrayidx53 = getelementptr inbounds i8, ptr %43, i64 4
  store i8 0, ptr %arrayidx53, align 1
  br label %sw.bb54

sw.bb54:                                          ; preds = %if.end48, %sw.bb52
  %44 = load ptr, ptr %cp, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %44, i64 3
  store i8 0, ptr %arrayidx55, align 1
  br label %sw.bb56

sw.bb56:                                          ; preds = %if.end48, %sw.bb54
  %45 = load ptr, ptr %cp, align 8
  %arrayidx57 = getelementptr inbounds i8, ptr %45, i64 2
  store i8 0, ptr %arrayidx57, align 1
  br label %sw.bb58

sw.bb58:                                          ; preds = %if.end48, %sw.bb56
  %46 = load ptr, ptr %cp, align 8
  %arrayidx59 = getelementptr inbounds i8, ptr %46, i64 1
  store i8 0, ptr %arrayidx59, align 1
  br label %sw.bb60

sw.bb60:                                          ; preds = %if.end48, %sw.bb58
  %47 = load ptr, ptr %cp, align 8
  %arrayidx61 = getelementptr inbounds i8, ptr %47, i64 0
  store i8 0, ptr %arrayidx61, align 1
  %48 = load i32, ptr %n, align 4
  %49 = load ptr, ptr %cp, align 8
  %idx.ext62 = sext i32 %48 to i64
  %add.ptr63 = getelementptr inbounds i8, ptr %49, i64 %idx.ext62
  store ptr %add.ptr63, ptr %cp, align 8
  br label %sw.bb64

sw.bb64:                                          ; preds = %if.end48, %sw.bb60
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb64, %if.end48
  %50 = load i32, ptr %run, align 4
  %and65 = and i32 %50, 7
  store i32 %and65, ptr %run, align 4
  br label %if.end66

if.end66:                                         ; preds = %sw.epilog, %if.end22
  %51 = load i32, ptr %run, align 4
  %shr67 = ashr i32 255, %51
  %52 = load ptr, ptr %cp, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %52, i64 0
  %53 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %53 to i32
  %and70 = and i32 %conv69, %shr67
  %conv71 = trunc i32 %and70 to i8
  store i8 %conv71, ptr %arrayidx68, align 1
  br label %if.end79

if.else:                                          ; preds = %if.then7
  %54 = load i32, ptr %run, align 4
  %idxprom = zext i32 %54 to i64
  %arrayidx72 = getelementptr inbounds [9 x i8], ptr @_TIFFFax3fillruns._fillmasks, i64 0, i64 %idxprom
  %55 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %55 to i32
  %56 = load i32, ptr %bx, align 4
  %shr74 = ashr i32 %conv73, %56
  %neg = xor i32 %shr74, -1
  %57 = load ptr, ptr %cp, align 8
  %arrayidx75 = getelementptr inbounds i8, ptr %57, i64 0
  %58 = load i8, ptr %arrayidx75, align 1
  %conv76 = zext i8 %58 to i32
  %and77 = and i32 %conv76, %neg
  %conv78 = trunc i32 %and77 to i8
  store i8 %conv78, ptr %arrayidx75, align 1
  br label %if.end79

if.end79:                                         ; preds = %if.else, %if.end66
  %59 = load ptr, ptr %runs.addr, align 8
  %arrayidx80 = getelementptr inbounds i32, ptr %59, i64 0
  %60 = load i32, ptr %arrayidx80, align 4
  %61 = load i32, ptr %x, align 4
  %add81 = add i32 %61, %60
  store i32 %add81, ptr %x, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.end79, %if.end5
  %62 = load ptr, ptr %runs.addr, align 8
  %arrayidx83 = getelementptr inbounds i32, ptr %62, i64 1
  %63 = load i32, ptr %arrayidx83, align 4
  store i32 %63, ptr %run, align 4
  %64 = load i32, ptr %x, align 4
  %65 = load i32, ptr %run, align 4
  %add84 = add i32 %64, %65
  %66 = load i32, ptr %lastx.addr, align 4
  %cmp85 = icmp ugt i32 %add84, %66
  br i1 %cmp85, label %if.then87, label %if.end90

if.then87:                                        ; preds = %if.end82
  %67 = load i32, ptr %lastx.addr, align 4
  %68 = load i32, ptr %x, align 4
  %sub88 = sub i32 %67, %68
  %69 = load ptr, ptr %runs.addr, align 8
  %arrayidx89 = getelementptr inbounds i32, ptr %69, i64 1
  store i32 %sub88, ptr %arrayidx89, align 4
  store i32 %sub88, ptr %run, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %if.end82
  %70 = load i32, ptr %run, align 4
  %tobool91 = icmp ne i32 %70, 0
  br i1 %tobool91, label %if.then92, label %if.end184

if.then92:                                        ; preds = %if.end90
  %71 = load ptr, ptr %buf.addr, align 8
  %72 = load i32, ptr %x, align 4
  %shr93 = lshr i32 %72, 3
  %idx.ext94 = zext i32 %shr93 to i64
  %add.ptr95 = getelementptr inbounds i8, ptr %71, i64 %idx.ext94
  store ptr %add.ptr95, ptr %cp, align 8
  %73 = load i32, ptr %x, align 4
  %and96 = and i32 %73, 7
  store i32 %and96, ptr %bx, align 4
  %74 = load i32, ptr %run, align 4
  %75 = load i32, ptr %bx, align 4
  %sub97 = sub i32 8, %75
  %cmp98 = icmp ugt i32 %74, %sub97
  br i1 %cmp98, label %if.then100, label %if.else172

if.then100:                                       ; preds = %if.then92
  %76 = load i32, ptr %bx, align 4
  %tobool101 = icmp ne i32 %76, 0
  br i1 %tobool101, label %if.then102, label %if.end109

if.then102:                                       ; preds = %if.then100
  %77 = load i32, ptr %bx, align 4
  %shr103 = ashr i32 255, %77
  %78 = load ptr, ptr %cp, align 8
  %incdec.ptr104 = getelementptr inbounds i8, ptr %78, i32 1
  store ptr %incdec.ptr104, ptr %cp, align 8
  %79 = load i8, ptr %78, align 1
  %conv105 = zext i8 %79 to i32
  %or = or i32 %conv105, %shr103
  %conv106 = trunc i32 %or to i8
  store i8 %conv106, ptr %78, align 1
  %80 = load i32, ptr %bx, align 4
  %sub107 = sub i32 8, %80
  %81 = load i32, ptr %run, align 4
  %sub108 = sub i32 %81, %sub107
  store i32 %sub108, ptr %run, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then102, %if.then100
  %82 = load i32, ptr %run, align 4
  %shr110 = lshr i32 %82, 3
  store i32 %shr110, ptr %n, align 4
  %cmp111 = icmp ne i32 %shr110, 0
  br i1 %cmp111, label %if.then113, label %if.end166

if.then113:                                       ; preds = %if.end109
  %83 = load i32, ptr %n, align 4
  %conv114 = sext i32 %83 to i64
  %div115 = udiv i64 %conv114, 8
  %cmp116 = icmp ugt i64 %div115, 1
  br i1 %cmp116, label %if.then118, label %if.end146

if.then118:                                       ; preds = %if.then113
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc129, %if.then118
  %84 = load i32, ptr %n, align 4
  %tobool120 = icmp ne i32 %84, 0
  br i1 %tobool120, label %land.rhs121, label %land.end126

land.rhs121:                                      ; preds = %for.cond119
  %85 = load ptr, ptr %cp, align 8
  %86 = ptrtoint ptr %85 to i64
  %and122 = and i64 %86, 7
  %cmp123 = icmp eq i64 %and122, 0
  %lnot125 = xor i1 %cmp123, true
  br label %land.end126

land.end126:                                      ; preds = %land.rhs121, %for.cond119
  %87 = phi i1 [ false, %for.cond119 ], [ %lnot125, %land.rhs121 ]
  br i1 %87, label %for.body127, label %for.end131

for.body127:                                      ; preds = %land.end126
  %88 = load ptr, ptr %cp, align 8
  %incdec.ptr128 = getelementptr inbounds i8, ptr %88, i32 1
  store ptr %incdec.ptr128, ptr %cp, align 8
  store i8 -1, ptr %88, align 1
  br label %for.inc129

for.inc129:                                       ; preds = %for.body127
  %89 = load i32, ptr %n, align 4
  %dec130 = add nsw i32 %89, -1
  store i32 %dec130, ptr %n, align 4
  br label %for.cond119, !llvm.loop !9

for.end131:                                       ; preds = %land.end126
  %90 = load ptr, ptr %cp, align 8
  store ptr %90, ptr %lp, align 8
  %91 = load i32, ptr %n, align 4
  %conv132 = sext i32 %91 to i64
  %div133 = udiv i64 %conv132, 8
  %conv134 = trunc i64 %div133 to i32
  store i32 %conv134, ptr %nw, align 4
  %92 = load i32, ptr %nw, align 4
  %conv135 = sext i32 %92 to i64
  %mul136 = mul i64 %conv135, 8
  %93 = load i32, ptr %n, align 4
  %conv137 = sext i32 %93 to i64
  %sub138 = sub i64 %conv137, %mul136
  %conv139 = trunc i64 %sub138 to i32
  store i32 %conv139, ptr %n, align 4
  br label %do.body140

do.body140:                                       ; preds = %do.cond142, %for.end131
  %94 = load ptr, ptr %lp, align 8
  %incdec.ptr141 = getelementptr inbounds i64, ptr %94, i32 1
  store ptr %incdec.ptr141, ptr %lp, align 8
  store i64 -1, ptr %94, align 8
  br label %do.cond142

do.cond142:                                       ; preds = %do.body140
  %95 = load i32, ptr %nw, align 4
  %dec143 = add nsw i32 %95, -1
  store i32 %dec143, ptr %nw, align 4
  %tobool144 = icmp ne i32 %dec143, 0
  br i1 %tobool144, label %do.body140, label %do.end145, !llvm.loop !10

do.end145:                                        ; preds = %do.cond142
  %96 = load ptr, ptr %lp, align 8
  store ptr %96, ptr %cp, align 8
  br label %if.end146

if.end146:                                        ; preds = %do.end145, %if.then113
  %97 = load i32, ptr %n, align 4
  switch i32 %97, label %sw.epilog164 [
    i32 7, label %sw.bb147
    i32 6, label %sw.bb149
    i32 5, label %sw.bb151
    i32 4, label %sw.bb153
    i32 3, label %sw.bb155
    i32 2, label %sw.bb157
    i32 1, label %sw.bb159
    i32 0, label %sw.bb163
  ]

sw.bb147:                                         ; preds = %if.end146
  %98 = load ptr, ptr %cp, align 8
  %arrayidx148 = getelementptr inbounds i8, ptr %98, i64 6
  store i8 -1, ptr %arrayidx148, align 1
  br label %sw.bb149

sw.bb149:                                         ; preds = %if.end146, %sw.bb147
  %99 = load ptr, ptr %cp, align 8
  %arrayidx150 = getelementptr inbounds i8, ptr %99, i64 5
  store i8 -1, ptr %arrayidx150, align 1
  br label %sw.bb151

sw.bb151:                                         ; preds = %if.end146, %sw.bb149
  %100 = load ptr, ptr %cp, align 8
  %arrayidx152 = getelementptr inbounds i8, ptr %100, i64 4
  store i8 -1, ptr %arrayidx152, align 1
  br label %sw.bb153

sw.bb153:                                         ; preds = %if.end146, %sw.bb151
  %101 = load ptr, ptr %cp, align 8
  %arrayidx154 = getelementptr inbounds i8, ptr %101, i64 3
  store i8 -1, ptr %arrayidx154, align 1
  br label %sw.bb155

sw.bb155:                                         ; preds = %if.end146, %sw.bb153
  %102 = load ptr, ptr %cp, align 8
  %arrayidx156 = getelementptr inbounds i8, ptr %102, i64 2
  store i8 -1, ptr %arrayidx156, align 1
  br label %sw.bb157

sw.bb157:                                         ; preds = %if.end146, %sw.bb155
  %103 = load ptr, ptr %cp, align 8
  %arrayidx158 = getelementptr inbounds i8, ptr %103, i64 1
  store i8 -1, ptr %arrayidx158, align 1
  br label %sw.bb159

sw.bb159:                                         ; preds = %if.end146, %sw.bb157
  %104 = load ptr, ptr %cp, align 8
  %arrayidx160 = getelementptr inbounds i8, ptr %104, i64 0
  store i8 -1, ptr %arrayidx160, align 1
  %105 = load i32, ptr %n, align 4
  %106 = load ptr, ptr %cp, align 8
  %idx.ext161 = sext i32 %105 to i64
  %add.ptr162 = getelementptr inbounds i8, ptr %106, i64 %idx.ext161
  store ptr %add.ptr162, ptr %cp, align 8
  br label %sw.bb163

sw.bb163:                                         ; preds = %if.end146, %sw.bb159
  br label %sw.epilog164

sw.epilog164:                                     ; preds = %sw.bb163, %if.end146
  %107 = load i32, ptr %run, align 4
  %and165 = and i32 %107, 7
  store i32 %and165, ptr %run, align 4
  br label %if.end166

if.end166:                                        ; preds = %sw.epilog164, %if.end109
  %108 = load i32, ptr %run, align 4
  %shr167 = ashr i32 65280, %108
  %109 = load ptr, ptr %cp, align 8
  %arrayidx168 = getelementptr inbounds i8, ptr %109, i64 0
  %110 = load i8, ptr %arrayidx168, align 1
  %conv169 = zext i8 %110 to i32
  %or170 = or i32 %conv169, %shr167
  %conv171 = trunc i32 %or170 to i8
  store i8 %conv171, ptr %arrayidx168, align 1
  br label %if.end181

if.else172:                                       ; preds = %if.then92
  %111 = load i32, ptr %run, align 4
  %idxprom173 = zext i32 %111 to i64
  %arrayidx174 = getelementptr inbounds [9 x i8], ptr @_TIFFFax3fillruns._fillmasks, i64 0, i64 %idxprom173
  %112 = load i8, ptr %arrayidx174, align 1
  %conv175 = zext i8 %112 to i32
  %113 = load i32, ptr %bx, align 4
  %shr176 = ashr i32 %conv175, %113
  %114 = load ptr, ptr %cp, align 8
  %arrayidx177 = getelementptr inbounds i8, ptr %114, i64 0
  %115 = load i8, ptr %arrayidx177, align 1
  %conv178 = zext i8 %115 to i32
  %or179 = or i32 %conv178, %shr176
  %conv180 = trunc i32 %or179 to i8
  store i8 %conv180, ptr %arrayidx177, align 1
  br label %if.end181

if.end181:                                        ; preds = %if.else172, %if.end166
  %116 = load ptr, ptr %runs.addr, align 8
  %arrayidx182 = getelementptr inbounds i32, ptr %116, i64 1
  %117 = load i32, ptr %arrayidx182, align 4
  %118 = load i32, ptr %x, align 4
  %add183 = add i32 %118, %117
  store i32 %add183, ptr %x, align 4
  br label %if.end184

if.end184:                                        ; preds = %if.end181, %if.end90
  br label %for.inc185

for.inc185:                                       ; preds = %if.end184
  %119 = load ptr, ptr %runs.addr, align 8
  %add.ptr186 = getelementptr inbounds i32, ptr %119, i64 2
  store ptr %add.ptr186, ptr %runs.addr, align 8
  br label %for.cond, !llvm.loop !11

for.end187:                                       ; preds = %for.cond
  %120 = load i32, ptr %x, align 4
  %121 = load i32, ptr %lastx.addr, align 4
  %cmp188 = icmp eq i32 %120, %121
  %lnot190 = xor i1 %cmp188, true
  %lnot.ext = zext i1 %lnot190 to i32
  %conv191 = sext i32 %lnot.ext to i64
  %tobool192 = icmp ne i64 %conv191, 0
  br i1 %tobool192, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end187
  call void @__assert_rtn(ptr noundef @__func__._TIFFFax3fillruns, ptr noundef @.str, i32 noundef 454, ptr noundef @.str.1) #3
  unreachable

122:                                              ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %for.end187
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %122
  ret void
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %call1 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %2, i32 noundef 65536, i32 noundef 1)
  store i32 %call1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %call = call ptr @_TIFFmalloc(i32 noundef 120)
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 37
  store ptr %call, ptr %tif_data, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call ptr @_TIFFmalloc(i32 noundef 96)
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
  store i32 0, ptr %groupoptions, align 8
  %21 = load ptr, ptr %sp, align 8
  %recvparams = getelementptr inbounds %struct.Fax3BaseState, ptr %21, i32 0, i32 7
  store i32 0, ptr %recvparams, align 4
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
  %26 = load i32, ptr %tif_flags, align 8
  %or = or i32 %26, 256
  store i32 %or, ptr %tif_flags, align 8
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_data13 = getelementptr inbounds %struct.tiff, ptr %27, i32 0, i32 37
  %28 = load ptr, ptr %tif_data13, align 8
  %runs = getelementptr inbounds %struct.Fax3DecodeState, ptr %28, i32 0, i32 6
  store ptr null, ptr %runs, align 8
  %29 = load ptr, ptr %tif.addr, align 8
  %call14 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %29, i32 noundef 65540, ptr noundef @_TIFFFax3fillruns)
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

declare i32 @TIFFSetField(ptr noundef, i32 noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %call1 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %9, i32 noundef 65536, i32 noundef 1)
  store i32 %call1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @Fax4Decode(ptr noundef %tif, ptr noundef %buf, i32 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %occ.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
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
  %x = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %occ, ptr %occ.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load ptr, ptr %sp, align 8
  %b = getelementptr inbounds %struct.Fax3DecodeState, ptr %2, i32 0, i32 0
  %rowpixels = getelementptr inbounds %struct.Fax3BaseState, ptr %b, i32 0, i32 2
  %3 = load i32, ptr %rowpixels, align 8
  store i32 %3, ptr %lastx, align 4
  %4 = load ptr, ptr %sp, align 8
  %bitmap1 = getelementptr inbounds %struct.Fax3DecodeState, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %bitmap1, align 8
  store ptr %5, ptr %bitmap, align 8
  %6 = load i16, ptr %s.addr, align 2
  br label %do.body

do.body:                                          ; preds = %entry
  %7 = load ptr, ptr %sp, align 8
  %data = getelementptr inbounds %struct.Fax3DecodeState, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %data, align 8
  store i32 %8, ptr %BitAcc, align 4
  %9 = load ptr, ptr %sp, align 8
  %bit = getelementptr inbounds %struct.Fax3DecodeState, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %bit, align 4
  store i32 %10, ptr %BitsAvail, align 4
  %11 = load ptr, ptr %sp, align 8
  %EOLcnt2 = getelementptr inbounds %struct.Fax3DecodeState, ptr %11, i32 0, i32 4
  %12 = load i32, ptr %EOLcnt2, align 8
  store i32 %12, ptr %EOLcnt, align 4
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %13, i32 0, i32 42
  %14 = load ptr, ptr %tif_rawcp, align 8
  store ptr %14, ptr %cp, align 8
  %15 = load ptr, ptr %cp, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 43
  %17 = load i32, ptr %tif_rawcc, align 8
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, ptr %15, i64 %idx.ext
  store ptr %add.ptr, ptr %ep, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %while.cond

while.cond:                                       ; preds = %if.end684, %do.end
  %18 = load i32, ptr %occ.addr, align 4
  %conv = sext i32 %18 to i64
  %cmp = icmp sgt i64 %conv, 0
  br i1 %cmp, label %while.body, label %while.end700

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
  %incdec.ptr = getelementptr inbounds i32, ptr %23, i32 1
  store ptr %incdec.ptr, ptr %pb, align 8
  %24 = load i32, ptr %23, align 4
  store i32 %24, ptr %b1, align 4
  br label %do.body4

do.body4:                                         ; preds = %while.body
  br label %while.cond5

while.cond5:                                      ; preds = %sw.epilog552, %do.body4
  %25 = load i32, ptr %a0, align 4
  %26 = load i32, ptr %lastx, align 4
  %cmp6 = icmp slt i32 %25, %26
  br i1 %cmp6, label %while.body8, label %while.end553

while.body8:                                      ; preds = %while.cond5
  br label %do.body9

do.body9:                                         ; preds = %while.body8
  br label %do.body10

do.body10:                                        ; preds = %do.body9
  %27 = load i32, ptr %BitsAvail, align 4
  %cmp11 = icmp slt i32 %27, 7
  br i1 %cmp11, label %if.then, label %if.end22

if.then:                                          ; preds = %do.body10
  %28 = load ptr, ptr %cp, align 8
  %29 = load ptr, ptr %ep, align 8
  %cmp13 = icmp uge ptr %28, %29
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then
  %30 = load i32, ptr %BitsAvail, align 4
  %cmp16 = icmp eq i32 %30, 0
  br i1 %cmp16, label %if.then18, label %if.end

if.then18:                                        ; preds = %if.then15
  br label %eof2d

if.end:                                           ; preds = %if.then15
  store i32 7, ptr %BitsAvail, align 4
  br label %if.end21

if.else:                                          ; preds = %if.then
  %31 = load ptr, ptr %bitmap, align 8
  %32 = load ptr, ptr %cp, align 8
  %incdec.ptr19 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr19, ptr %cp, align 8
  %33 = load i8, ptr %32, align 1
  %idxprom = zext i8 %33 to i64
  %arrayidx = getelementptr inbounds i8, ptr %31, i64 %idxprom
  %34 = load i8, ptr %arrayidx, align 1
  %conv20 = zext i8 %34 to i32
  %35 = load i32, ptr %BitsAvail, align 4
  %shl = shl i32 %conv20, %35
  %36 = load i32, ptr %BitAcc, align 4
  %or = or i32 %36, %shl
  store i32 %or, ptr %BitAcc, align 4
  %37 = load i32, ptr %BitsAvail, align 4
  %add = add nsw i32 %37, 8
  store i32 %add, ptr %BitsAvail, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.end
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %do.body10
  br label %do.end23

do.end23:                                         ; preds = %if.end22
  %38 = load i32, ptr %BitAcc, align 4
  %and = and i32 %38, 127
  %idx.ext24 = zext i32 %and to i64
  %add.ptr25 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxMainTable, i64 %idx.ext24
  store ptr %add.ptr25, ptr %TabEnt, align 8
  br label %do.body26

do.body26:                                        ; preds = %do.end23
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
  %44 = load i32, ptr %BitAcc, align 4
  %shr = lshr i32 %44, %conv29
  store i32 %shr, ptr %BitAcc, align 4
  br label %do.end30

do.end30:                                         ; preds = %do.body26
  br label %do.end31

do.end31:                                         ; preds = %do.end30
  %45 = load ptr, ptr %TabEnt, align 8
  %State = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %45, i32 0, i32 0
  %46 = load i8, ptr %State, align 4
  %conv32 = zext i8 %46 to i32
  switch i32 %conv32, label %sw.default483 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb56
    i32 3, label %sw.bb353
    i32 4, label %sw.bb383
    i32 5, label %sw.bb417
    i32 6, label %sw.bb451
    i32 12, label %sw.bb454
  ]

sw.bb:                                            ; preds = %do.end31
  br label %do.body33

do.body33:                                        ; preds = %sw.bb
  %47 = load ptr, ptr %pa, align 8
  %48 = load ptr, ptr %thisrun, align 8
  %cmp34 = icmp ne ptr %47, %48
  br i1 %cmp34, label %if.then36, label %if.end48

if.then36:                                        ; preds = %do.body33
  br label %while.cond37

while.cond37:                                     ; preds = %while.body42, %if.then36
  %49 = load i32, ptr %b1, align 4
  %50 = load i32, ptr %a0, align 4
  %cmp38 = icmp sle i32 %49, %50
  br i1 %cmp38, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond37
  %51 = load i32, ptr %b1, align 4
  %52 = load i32, ptr %lastx, align 4
  %cmp40 = icmp slt i32 %51, %52
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond37
  %53 = phi i1 [ false, %while.cond37 ], [ %cmp40, %land.rhs ]
  br i1 %53, label %while.body42, label %while.end

while.body42:                                     ; preds = %land.end
  %54 = load ptr, ptr %pb, align 8
  %arrayidx43 = getelementptr inbounds i32, ptr %54, i64 0
  %55 = load i32, ptr %arrayidx43, align 4
  %56 = load ptr, ptr %pb, align 8
  %arrayidx44 = getelementptr inbounds i32, ptr %56, i64 1
  %57 = load i32, ptr %arrayidx44, align 4
  %add45 = add i32 %55, %57
  %58 = load i32, ptr %b1, align 4
  %add46 = add i32 %58, %add45
  store i32 %add46, ptr %b1, align 4
  %59 = load ptr, ptr %pb, align 8
  %add.ptr47 = getelementptr inbounds i32, ptr %59, i64 2
  store ptr %add.ptr47, ptr %pb, align 8
  br label %while.cond37, !llvm.loop !12

while.end:                                        ; preds = %land.end
  br label %if.end48

if.end48:                                         ; preds = %while.end, %do.body33
  br label %do.end49

do.end49:                                         ; preds = %if.end48
  %60 = load ptr, ptr %pb, align 8
  %incdec.ptr50 = getelementptr inbounds i32, ptr %60, i32 1
  store ptr %incdec.ptr50, ptr %pb, align 8
  %61 = load i32, ptr %60, align 4
  %62 = load i32, ptr %b1, align 4
  %add51 = add i32 %62, %61
  store i32 %add51, ptr %b1, align 4
  %63 = load i32, ptr %b1, align 4
  %64 = load i32, ptr %a0, align 4
  %sub52 = sub nsw i32 %63, %64
  %65 = load i32, ptr %RunLength, align 4
  %add53 = add nsw i32 %65, %sub52
  store i32 %add53, ptr %RunLength, align 4
  %66 = load i32, ptr %b1, align 4
  store i32 %66, ptr %a0, align 4
  %67 = load ptr, ptr %pb, align 8
  %incdec.ptr54 = getelementptr inbounds i32, ptr %67, i32 1
  store ptr %incdec.ptr54, ptr %pb, align 8
  %68 = load i32, ptr %67, align 4
  %69 = load i32, ptr %b1, align 4
  %add55 = add i32 %69, %68
  store i32 %add55, ptr %b1, align 4
  br label %sw.epilog552

sw.bb56:                                          ; preds = %do.end31
  %70 = load ptr, ptr %pa, align 8
  %71 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %70 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %71 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %and57 = and i64 %sub.ptr.div, 1
  %tobool = icmp ne i64 %and57, 0
  br i1 %tobool, label %if.then58, label %if.else193

if.then58:                                        ; preds = %sw.bb56
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %if.then58
  br label %do.body59

do.body59:                                        ; preds = %for.cond
  br label %do.body60

do.body60:                                        ; preds = %do.body59
  %72 = load i32, ptr %BitsAvail, align 4
  %cmp61 = icmp slt i32 %72, 13
  br i1 %cmp61, label %if.then63, label %if.end96

if.then63:                                        ; preds = %do.body60
  %73 = load ptr, ptr %cp, align 8
  %74 = load ptr, ptr %ep, align 8
  %cmp64 = icmp uge ptr %73, %74
  br i1 %cmp64, label %if.then66, label %if.else71

if.then66:                                        ; preds = %if.then63
  %75 = load i32, ptr %BitsAvail, align 4
  %cmp67 = icmp eq i32 %75, 0
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.then66
  br label %eof2d

if.end70:                                         ; preds = %if.then66
  store i32 13, ptr %BitsAvail, align 4
  br label %if.end95

if.else71:                                        ; preds = %if.then63
  %76 = load ptr, ptr %bitmap, align 8
  %77 = load ptr, ptr %cp, align 8
  %incdec.ptr72 = getelementptr inbounds i8, ptr %77, i32 1
  store ptr %incdec.ptr72, ptr %cp, align 8
  %78 = load i8, ptr %77, align 1
  %idxprom73 = zext i8 %78 to i64
  %arrayidx74 = getelementptr inbounds i8, ptr %76, i64 %idxprom73
  %79 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %79 to i32
  %80 = load i32, ptr %BitsAvail, align 4
  %shl76 = shl i32 %conv75, %80
  %81 = load i32, ptr %BitAcc, align 4
  %or77 = or i32 %81, %shl76
  store i32 %or77, ptr %BitAcc, align 4
  %82 = load i32, ptr %BitsAvail, align 4
  %add78 = add nsw i32 %82, 8
  store i32 %add78, ptr %BitsAvail, align 4
  %cmp79 = icmp slt i32 %add78, 13
  br i1 %cmp79, label %if.then81, label %if.end94

if.then81:                                        ; preds = %if.else71
  %83 = load ptr, ptr %cp, align 8
  %84 = load ptr, ptr %ep, align 8
  %cmp82 = icmp uge ptr %83, %84
  br i1 %cmp82, label %if.then84, label %if.else85

if.then84:                                        ; preds = %if.then81
  store i32 13, ptr %BitsAvail, align 4
  br label %if.end93

if.else85:                                        ; preds = %if.then81
  %85 = load ptr, ptr %bitmap, align 8
  %86 = load ptr, ptr %cp, align 8
  %incdec.ptr86 = getelementptr inbounds i8, ptr %86, i32 1
  store ptr %incdec.ptr86, ptr %cp, align 8
  %87 = load i8, ptr %86, align 1
  %idxprom87 = zext i8 %87 to i64
  %arrayidx88 = getelementptr inbounds i8, ptr %85, i64 %idxprom87
  %88 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %88 to i32
  %89 = load i32, ptr %BitsAvail, align 4
  %shl90 = shl i32 %conv89, %89
  %90 = load i32, ptr %BitAcc, align 4
  %or91 = or i32 %90, %shl90
  store i32 %or91, ptr %BitAcc, align 4
  %91 = load i32, ptr %BitsAvail, align 4
  %add92 = add nsw i32 %91, 8
  store i32 %add92, ptr %BitsAvail, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.else85, %if.then84
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.else71
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.end70
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %do.body60
  br label %do.end97

do.end97:                                         ; preds = %if.end96
  %92 = load i32, ptr %BitAcc, align 4
  %and98 = and i32 %92, 8191
  %idx.ext99 = zext i32 %and98 to i64
  %add.ptr100 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %idx.ext99
  store ptr %add.ptr100, ptr %TabEnt, align 8
  br label %do.body101

do.body101:                                       ; preds = %do.end97
  %93 = load ptr, ptr %TabEnt, align 8
  %Width102 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %93, i32 0, i32 1
  %94 = load i8, ptr %Width102, align 1
  %conv103 = zext i8 %94 to i32
  %95 = load i32, ptr %BitsAvail, align 4
  %sub104 = sub nsw i32 %95, %conv103
  store i32 %sub104, ptr %BitsAvail, align 4
  %96 = load ptr, ptr %TabEnt, align 8
  %Width105 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %96, i32 0, i32 1
  %97 = load i8, ptr %Width105, align 1
  %conv106 = zext i8 %97 to i32
  %98 = load i32, ptr %BitAcc, align 4
  %shr107 = lshr i32 %98, %conv106
  store i32 %shr107, ptr %BitAcc, align 4
  br label %do.end108

do.end108:                                        ; preds = %do.body101
  br label %do.end109

do.end109:                                        ; preds = %do.end108
  %99 = load ptr, ptr %TabEnt, align 8
  %State110 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %99, i32 0, i32 0
  %100 = load i8, ptr %State110, align 4
  %conv111 = zext i8 %100 to i32
  switch i32 %conv111, label %sw.default [
    i32 8, label %sw.bb112
    i32 10, label %sw.bb119
    i32 11, label %sw.bb119
  ]

sw.bb112:                                         ; preds = %do.end109
  br label %do.body113

do.body113:                                       ; preds = %sw.bb112
  %101 = load i32, ptr %RunLength, align 4
  %102 = load ptr, ptr %TabEnt, align 8
  %Param = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %102, i32 0, i32 2
  %103 = load i32, ptr %Param, align 4
  %add114 = add i32 %101, %103
  %104 = load ptr, ptr %pa, align 8
  %incdec.ptr115 = getelementptr inbounds i32, ptr %104, i32 1
  store ptr %incdec.ptr115, ptr %pa, align 8
  store i32 %add114, ptr %104, align 4
  %105 = load ptr, ptr %TabEnt, align 8
  %Param116 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %105, i32 0, i32 2
  %106 = load i32, ptr %Param116, align 4
  %107 = load i32, ptr %a0, align 4
  %add117 = add i32 %107, %106
  store i32 %add117, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end118

do.end118:                                        ; preds = %do.body113
  br label %doneWhite2da

sw.bb119:                                         ; preds = %do.end109, %do.end109
  %108 = load ptr, ptr %TabEnt, align 8
  %Param120 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %108, i32 0, i32 2
  %109 = load i32, ptr %Param120, align 4
  %110 = load i32, ptr %a0, align 4
  %add121 = add i32 %110, %109
  store i32 %add121, ptr %a0, align 4
  %111 = load ptr, ptr %TabEnt, align 8
  %Param122 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %111, i32 0, i32 2
  %112 = load i32, ptr %Param122, align 4
  %113 = load i32, ptr %RunLength, align 4
  %add123 = add i32 %113, %112
  store i32 %add123, ptr %RunLength, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end109
  br label %badBlack2d

sw.epilog:                                        ; preds = %sw.bb119
  br label %for.cond

doneWhite2da:                                     ; preds = %do.end118
  br label %for.cond124

for.cond124:                                      ; preds = %sw.epilog192, %doneWhite2da
  br label %do.body125

do.body125:                                       ; preds = %for.cond124
  br label %do.body126

do.body126:                                       ; preds = %do.body125
  %114 = load i32, ptr %BitsAvail, align 4
  %cmp127 = icmp slt i32 %114, 12
  br i1 %cmp127, label %if.then129, label %if.end162

if.then129:                                       ; preds = %do.body126
  %115 = load ptr, ptr %cp, align 8
  %116 = load ptr, ptr %ep, align 8
  %cmp130 = icmp uge ptr %115, %116
  br i1 %cmp130, label %if.then132, label %if.else137

if.then132:                                       ; preds = %if.then129
  %117 = load i32, ptr %BitsAvail, align 4
  %cmp133 = icmp eq i32 %117, 0
  br i1 %cmp133, label %if.then135, label %if.end136

if.then135:                                       ; preds = %if.then132
  br label %eof2d

if.end136:                                        ; preds = %if.then132
  store i32 12, ptr %BitsAvail, align 4
  br label %if.end161

if.else137:                                       ; preds = %if.then129
  %118 = load ptr, ptr %bitmap, align 8
  %119 = load ptr, ptr %cp, align 8
  %incdec.ptr138 = getelementptr inbounds i8, ptr %119, i32 1
  store ptr %incdec.ptr138, ptr %cp, align 8
  %120 = load i8, ptr %119, align 1
  %idxprom139 = zext i8 %120 to i64
  %arrayidx140 = getelementptr inbounds i8, ptr %118, i64 %idxprom139
  %121 = load i8, ptr %arrayidx140, align 1
  %conv141 = zext i8 %121 to i32
  %122 = load i32, ptr %BitsAvail, align 4
  %shl142 = shl i32 %conv141, %122
  %123 = load i32, ptr %BitAcc, align 4
  %or143 = or i32 %123, %shl142
  store i32 %or143, ptr %BitAcc, align 4
  %124 = load i32, ptr %BitsAvail, align 4
  %add144 = add nsw i32 %124, 8
  store i32 %add144, ptr %BitsAvail, align 4
  %cmp145 = icmp slt i32 %add144, 12
  br i1 %cmp145, label %if.then147, label %if.end160

if.then147:                                       ; preds = %if.else137
  %125 = load ptr, ptr %cp, align 8
  %126 = load ptr, ptr %ep, align 8
  %cmp148 = icmp uge ptr %125, %126
  br i1 %cmp148, label %if.then150, label %if.else151

if.then150:                                       ; preds = %if.then147
  store i32 12, ptr %BitsAvail, align 4
  br label %if.end159

if.else151:                                       ; preds = %if.then147
  %127 = load ptr, ptr %bitmap, align 8
  %128 = load ptr, ptr %cp, align 8
  %incdec.ptr152 = getelementptr inbounds i8, ptr %128, i32 1
  store ptr %incdec.ptr152, ptr %cp, align 8
  %129 = load i8, ptr %128, align 1
  %idxprom153 = zext i8 %129 to i64
  %arrayidx154 = getelementptr inbounds i8, ptr %127, i64 %idxprom153
  %130 = load i8, ptr %arrayidx154, align 1
  %conv155 = zext i8 %130 to i32
  %131 = load i32, ptr %BitsAvail, align 4
  %shl156 = shl i32 %conv155, %131
  %132 = load i32, ptr %BitAcc, align 4
  %or157 = or i32 %132, %shl156
  store i32 %or157, ptr %BitAcc, align 4
  %133 = load i32, ptr %BitsAvail, align 4
  %add158 = add nsw i32 %133, 8
  store i32 %add158, ptr %BitsAvail, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.else151, %if.then150
  br label %if.end160

if.end160:                                        ; preds = %if.end159, %if.else137
  br label %if.end161

if.end161:                                        ; preds = %if.end160, %if.end136
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %do.body126
  br label %do.end163

do.end163:                                        ; preds = %if.end162
  %134 = load i32, ptr %BitAcc, align 4
  %and164 = and i32 %134, 4095
  %idx.ext165 = zext i32 %and164 to i64
  %add.ptr166 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %idx.ext165
  store ptr %add.ptr166, ptr %TabEnt, align 8
  br label %do.body167

do.body167:                                       ; preds = %do.end163
  %135 = load ptr, ptr %TabEnt, align 8
  %Width168 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %135, i32 0, i32 1
  %136 = load i8, ptr %Width168, align 1
  %conv169 = zext i8 %136 to i32
  %137 = load i32, ptr %BitsAvail, align 4
  %sub170 = sub nsw i32 %137, %conv169
  store i32 %sub170, ptr %BitsAvail, align 4
  %138 = load ptr, ptr %TabEnt, align 8
  %Width171 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %138, i32 0, i32 1
  %139 = load i8, ptr %Width171, align 1
  %conv172 = zext i8 %139 to i32
  %140 = load i32, ptr %BitAcc, align 4
  %shr173 = lshr i32 %140, %conv172
  store i32 %shr173, ptr %BitAcc, align 4
  br label %do.end174

do.end174:                                        ; preds = %do.body167
  br label %do.end175

do.end175:                                        ; preds = %do.end174
  %141 = load ptr, ptr %TabEnt, align 8
  %State176 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %141, i32 0, i32 0
  %142 = load i8, ptr %State176, align 4
  %conv177 = zext i8 %142 to i32
  switch i32 %conv177, label %sw.default191 [
    i32 7, label %sw.bb178
    i32 9, label %sw.bb186
    i32 11, label %sw.bb186
  ]

sw.bb178:                                         ; preds = %do.end175
  br label %do.body179

do.body179:                                       ; preds = %sw.bb178
  %143 = load i32, ptr %RunLength, align 4
  %144 = load ptr, ptr %TabEnt, align 8
  %Param180 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %144, i32 0, i32 2
  %145 = load i32, ptr %Param180, align 4
  %add181 = add i32 %143, %145
  %146 = load ptr, ptr %pa, align 8
  %incdec.ptr182 = getelementptr inbounds i32, ptr %146, i32 1
  store ptr %incdec.ptr182, ptr %pa, align 8
  store i32 %add181, ptr %146, align 4
  %147 = load ptr, ptr %TabEnt, align 8
  %Param183 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %147, i32 0, i32 2
  %148 = load i32, ptr %Param183, align 4
  %149 = load i32, ptr %a0, align 4
  %add184 = add i32 %149, %148
  store i32 %add184, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end185

do.end185:                                        ; preds = %do.body179
  br label %doneBlack2da

sw.bb186:                                         ; preds = %do.end175, %do.end175
  %150 = load ptr, ptr %TabEnt, align 8
  %Param187 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %150, i32 0, i32 2
  %151 = load i32, ptr %Param187, align 4
  %152 = load i32, ptr %a0, align 4
  %add188 = add i32 %152, %151
  store i32 %add188, ptr %a0, align 4
  %153 = load ptr, ptr %TabEnt, align 8
  %Param189 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %153, i32 0, i32 2
  %154 = load i32, ptr %Param189, align 4
  %155 = load i32, ptr %RunLength, align 4
  %add190 = add i32 %155, %154
  store i32 %add190, ptr %RunLength, align 4
  br label %sw.epilog192

sw.default191:                                    ; preds = %do.end175
  br label %badWhite2d

sw.epilog192:                                     ; preds = %sw.bb186
  br label %for.cond124

doneBlack2da:                                     ; preds = %do.end185
  br label %if.end332

if.else193:                                       ; preds = %sw.bb56
  br label %for.cond194

for.cond194:                                      ; preds = %sw.epilog262, %if.else193
  br label %do.body195

do.body195:                                       ; preds = %for.cond194
  br label %do.body196

do.body196:                                       ; preds = %do.body195
  %156 = load i32, ptr %BitsAvail, align 4
  %cmp197 = icmp slt i32 %156, 12
  br i1 %cmp197, label %if.then199, label %if.end232

if.then199:                                       ; preds = %do.body196
  %157 = load ptr, ptr %cp, align 8
  %158 = load ptr, ptr %ep, align 8
  %cmp200 = icmp uge ptr %157, %158
  br i1 %cmp200, label %if.then202, label %if.else207

if.then202:                                       ; preds = %if.then199
  %159 = load i32, ptr %BitsAvail, align 4
  %cmp203 = icmp eq i32 %159, 0
  br i1 %cmp203, label %if.then205, label %if.end206

if.then205:                                       ; preds = %if.then202
  br label %eof2d

if.end206:                                        ; preds = %if.then202
  store i32 12, ptr %BitsAvail, align 4
  br label %if.end231

if.else207:                                       ; preds = %if.then199
  %160 = load ptr, ptr %bitmap, align 8
  %161 = load ptr, ptr %cp, align 8
  %incdec.ptr208 = getelementptr inbounds i8, ptr %161, i32 1
  store ptr %incdec.ptr208, ptr %cp, align 8
  %162 = load i8, ptr %161, align 1
  %idxprom209 = zext i8 %162 to i64
  %arrayidx210 = getelementptr inbounds i8, ptr %160, i64 %idxprom209
  %163 = load i8, ptr %arrayidx210, align 1
  %conv211 = zext i8 %163 to i32
  %164 = load i32, ptr %BitsAvail, align 4
  %shl212 = shl i32 %conv211, %164
  %165 = load i32, ptr %BitAcc, align 4
  %or213 = or i32 %165, %shl212
  store i32 %or213, ptr %BitAcc, align 4
  %166 = load i32, ptr %BitsAvail, align 4
  %add214 = add nsw i32 %166, 8
  store i32 %add214, ptr %BitsAvail, align 4
  %cmp215 = icmp slt i32 %add214, 12
  br i1 %cmp215, label %if.then217, label %if.end230

if.then217:                                       ; preds = %if.else207
  %167 = load ptr, ptr %cp, align 8
  %168 = load ptr, ptr %ep, align 8
  %cmp218 = icmp uge ptr %167, %168
  br i1 %cmp218, label %if.then220, label %if.else221

if.then220:                                       ; preds = %if.then217
  store i32 12, ptr %BitsAvail, align 4
  br label %if.end229

if.else221:                                       ; preds = %if.then217
  %169 = load ptr, ptr %bitmap, align 8
  %170 = load ptr, ptr %cp, align 8
  %incdec.ptr222 = getelementptr inbounds i8, ptr %170, i32 1
  store ptr %incdec.ptr222, ptr %cp, align 8
  %171 = load i8, ptr %170, align 1
  %idxprom223 = zext i8 %171 to i64
  %arrayidx224 = getelementptr inbounds i8, ptr %169, i64 %idxprom223
  %172 = load i8, ptr %arrayidx224, align 1
  %conv225 = zext i8 %172 to i32
  %173 = load i32, ptr %BitsAvail, align 4
  %shl226 = shl i32 %conv225, %173
  %174 = load i32, ptr %BitAcc, align 4
  %or227 = or i32 %174, %shl226
  store i32 %or227, ptr %BitAcc, align 4
  %175 = load i32, ptr %BitsAvail, align 4
  %add228 = add nsw i32 %175, 8
  store i32 %add228, ptr %BitsAvail, align 4
  br label %if.end229

if.end229:                                        ; preds = %if.else221, %if.then220
  br label %if.end230

if.end230:                                        ; preds = %if.end229, %if.else207
  br label %if.end231

if.end231:                                        ; preds = %if.end230, %if.end206
  br label %if.end232

if.end232:                                        ; preds = %if.end231, %do.body196
  br label %do.end233

do.end233:                                        ; preds = %if.end232
  %176 = load i32, ptr %BitAcc, align 4
  %and234 = and i32 %176, 4095
  %idx.ext235 = zext i32 %and234 to i64
  %add.ptr236 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %idx.ext235
  store ptr %add.ptr236, ptr %TabEnt, align 8
  br label %do.body237

do.body237:                                       ; preds = %do.end233
  %177 = load ptr, ptr %TabEnt, align 8
  %Width238 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %177, i32 0, i32 1
  %178 = load i8, ptr %Width238, align 1
  %conv239 = zext i8 %178 to i32
  %179 = load i32, ptr %BitsAvail, align 4
  %sub240 = sub nsw i32 %179, %conv239
  store i32 %sub240, ptr %BitsAvail, align 4
  %180 = load ptr, ptr %TabEnt, align 8
  %Width241 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %180, i32 0, i32 1
  %181 = load i8, ptr %Width241, align 1
  %conv242 = zext i8 %181 to i32
  %182 = load i32, ptr %BitAcc, align 4
  %shr243 = lshr i32 %182, %conv242
  store i32 %shr243, ptr %BitAcc, align 4
  br label %do.end244

do.end244:                                        ; preds = %do.body237
  br label %do.end245

do.end245:                                        ; preds = %do.end244
  %183 = load ptr, ptr %TabEnt, align 8
  %State246 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %183, i32 0, i32 0
  %184 = load i8, ptr %State246, align 4
  %conv247 = zext i8 %184 to i32
  switch i32 %conv247, label %sw.default261 [
    i32 7, label %sw.bb248
    i32 9, label %sw.bb256
    i32 11, label %sw.bb256
  ]

sw.bb248:                                         ; preds = %do.end245
  br label %do.body249

do.body249:                                       ; preds = %sw.bb248
  %185 = load i32, ptr %RunLength, align 4
  %186 = load ptr, ptr %TabEnt, align 8
  %Param250 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %186, i32 0, i32 2
  %187 = load i32, ptr %Param250, align 4
  %add251 = add i32 %185, %187
  %188 = load ptr, ptr %pa, align 8
  %incdec.ptr252 = getelementptr inbounds i32, ptr %188, i32 1
  store ptr %incdec.ptr252, ptr %pa, align 8
  store i32 %add251, ptr %188, align 4
  %189 = load ptr, ptr %TabEnt, align 8
  %Param253 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %189, i32 0, i32 2
  %190 = load i32, ptr %Param253, align 4
  %191 = load i32, ptr %a0, align 4
  %add254 = add i32 %191, %190
  store i32 %add254, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end255

do.end255:                                        ; preds = %do.body249
  br label %doneWhite2db

sw.bb256:                                         ; preds = %do.end245, %do.end245
  %192 = load ptr, ptr %TabEnt, align 8
  %Param257 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %192, i32 0, i32 2
  %193 = load i32, ptr %Param257, align 4
  %194 = load i32, ptr %a0, align 4
  %add258 = add i32 %194, %193
  store i32 %add258, ptr %a0, align 4
  %195 = load ptr, ptr %TabEnt, align 8
  %Param259 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %195, i32 0, i32 2
  %196 = load i32, ptr %Param259, align 4
  %197 = load i32, ptr %RunLength, align 4
  %add260 = add i32 %197, %196
  store i32 %add260, ptr %RunLength, align 4
  br label %sw.epilog262

sw.default261:                                    ; preds = %do.end245
  br label %badWhite2d

sw.epilog262:                                     ; preds = %sw.bb256
  br label %for.cond194

doneWhite2db:                                     ; preds = %do.end255
  br label %for.cond263

for.cond263:                                      ; preds = %sw.epilog331, %doneWhite2db
  br label %do.body264

do.body264:                                       ; preds = %for.cond263
  br label %do.body265

do.body265:                                       ; preds = %do.body264
  %198 = load i32, ptr %BitsAvail, align 4
  %cmp266 = icmp slt i32 %198, 13
  br i1 %cmp266, label %if.then268, label %if.end301

if.then268:                                       ; preds = %do.body265
  %199 = load ptr, ptr %cp, align 8
  %200 = load ptr, ptr %ep, align 8
  %cmp269 = icmp uge ptr %199, %200
  br i1 %cmp269, label %if.then271, label %if.else276

if.then271:                                       ; preds = %if.then268
  %201 = load i32, ptr %BitsAvail, align 4
  %cmp272 = icmp eq i32 %201, 0
  br i1 %cmp272, label %if.then274, label %if.end275

if.then274:                                       ; preds = %if.then271
  br label %eof2d

if.end275:                                        ; preds = %if.then271
  store i32 13, ptr %BitsAvail, align 4
  br label %if.end300

if.else276:                                       ; preds = %if.then268
  %202 = load ptr, ptr %bitmap, align 8
  %203 = load ptr, ptr %cp, align 8
  %incdec.ptr277 = getelementptr inbounds i8, ptr %203, i32 1
  store ptr %incdec.ptr277, ptr %cp, align 8
  %204 = load i8, ptr %203, align 1
  %idxprom278 = zext i8 %204 to i64
  %arrayidx279 = getelementptr inbounds i8, ptr %202, i64 %idxprom278
  %205 = load i8, ptr %arrayidx279, align 1
  %conv280 = zext i8 %205 to i32
  %206 = load i32, ptr %BitsAvail, align 4
  %shl281 = shl i32 %conv280, %206
  %207 = load i32, ptr %BitAcc, align 4
  %or282 = or i32 %207, %shl281
  store i32 %or282, ptr %BitAcc, align 4
  %208 = load i32, ptr %BitsAvail, align 4
  %add283 = add nsw i32 %208, 8
  store i32 %add283, ptr %BitsAvail, align 4
  %cmp284 = icmp slt i32 %add283, 13
  br i1 %cmp284, label %if.then286, label %if.end299

if.then286:                                       ; preds = %if.else276
  %209 = load ptr, ptr %cp, align 8
  %210 = load ptr, ptr %ep, align 8
  %cmp287 = icmp uge ptr %209, %210
  br i1 %cmp287, label %if.then289, label %if.else290

if.then289:                                       ; preds = %if.then286
  store i32 13, ptr %BitsAvail, align 4
  br label %if.end298

if.else290:                                       ; preds = %if.then286
  %211 = load ptr, ptr %bitmap, align 8
  %212 = load ptr, ptr %cp, align 8
  %incdec.ptr291 = getelementptr inbounds i8, ptr %212, i32 1
  store ptr %incdec.ptr291, ptr %cp, align 8
  %213 = load i8, ptr %212, align 1
  %idxprom292 = zext i8 %213 to i64
  %arrayidx293 = getelementptr inbounds i8, ptr %211, i64 %idxprom292
  %214 = load i8, ptr %arrayidx293, align 1
  %conv294 = zext i8 %214 to i32
  %215 = load i32, ptr %BitsAvail, align 4
  %shl295 = shl i32 %conv294, %215
  %216 = load i32, ptr %BitAcc, align 4
  %or296 = or i32 %216, %shl295
  store i32 %or296, ptr %BitAcc, align 4
  %217 = load i32, ptr %BitsAvail, align 4
  %add297 = add nsw i32 %217, 8
  store i32 %add297, ptr %BitsAvail, align 4
  br label %if.end298

if.end298:                                        ; preds = %if.else290, %if.then289
  br label %if.end299

if.end299:                                        ; preds = %if.end298, %if.else276
  br label %if.end300

if.end300:                                        ; preds = %if.end299, %if.end275
  br label %if.end301

if.end301:                                        ; preds = %if.end300, %do.body265
  br label %do.end302

do.end302:                                        ; preds = %if.end301
  %218 = load i32, ptr %BitAcc, align 4
  %and303 = and i32 %218, 8191
  %idx.ext304 = zext i32 %and303 to i64
  %add.ptr305 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %idx.ext304
  store ptr %add.ptr305, ptr %TabEnt, align 8
  br label %do.body306

do.body306:                                       ; preds = %do.end302
  %219 = load ptr, ptr %TabEnt, align 8
  %Width307 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %219, i32 0, i32 1
  %220 = load i8, ptr %Width307, align 1
  %conv308 = zext i8 %220 to i32
  %221 = load i32, ptr %BitsAvail, align 4
  %sub309 = sub nsw i32 %221, %conv308
  store i32 %sub309, ptr %BitsAvail, align 4
  %222 = load ptr, ptr %TabEnt, align 8
  %Width310 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %222, i32 0, i32 1
  %223 = load i8, ptr %Width310, align 1
  %conv311 = zext i8 %223 to i32
  %224 = load i32, ptr %BitAcc, align 4
  %shr312 = lshr i32 %224, %conv311
  store i32 %shr312, ptr %BitAcc, align 4
  br label %do.end313

do.end313:                                        ; preds = %do.body306
  br label %do.end314

do.end314:                                        ; preds = %do.end313
  %225 = load ptr, ptr %TabEnt, align 8
  %State315 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %225, i32 0, i32 0
  %226 = load i8, ptr %State315, align 4
  %conv316 = zext i8 %226 to i32
  switch i32 %conv316, label %sw.default330 [
    i32 8, label %sw.bb317
    i32 10, label %sw.bb325
    i32 11, label %sw.bb325
  ]

sw.bb317:                                         ; preds = %do.end314
  br label %do.body318

do.body318:                                       ; preds = %sw.bb317
  %227 = load i32, ptr %RunLength, align 4
  %228 = load ptr, ptr %TabEnt, align 8
  %Param319 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %228, i32 0, i32 2
  %229 = load i32, ptr %Param319, align 4
  %add320 = add i32 %227, %229
  %230 = load ptr, ptr %pa, align 8
  %incdec.ptr321 = getelementptr inbounds i32, ptr %230, i32 1
  store ptr %incdec.ptr321, ptr %pa, align 8
  store i32 %add320, ptr %230, align 4
  %231 = load ptr, ptr %TabEnt, align 8
  %Param322 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %231, i32 0, i32 2
  %232 = load i32, ptr %Param322, align 4
  %233 = load i32, ptr %a0, align 4
  %add323 = add i32 %233, %232
  store i32 %add323, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end324

do.end324:                                        ; preds = %do.body318
  br label %doneBlack2db

sw.bb325:                                         ; preds = %do.end314, %do.end314
  %234 = load ptr, ptr %TabEnt, align 8
  %Param326 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %234, i32 0, i32 2
  %235 = load i32, ptr %Param326, align 4
  %236 = load i32, ptr %a0, align 4
  %add327 = add i32 %236, %235
  store i32 %add327, ptr %a0, align 4
  %237 = load ptr, ptr %TabEnt, align 8
  %Param328 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %237, i32 0, i32 2
  %238 = load i32, ptr %Param328, align 4
  %239 = load i32, ptr %RunLength, align 4
  %add329 = add i32 %239, %238
  store i32 %add329, ptr %RunLength, align 4
  br label %sw.epilog331

sw.default330:                                    ; preds = %do.end314
  br label %badBlack2d

sw.epilog331:                                     ; preds = %sw.bb325
  br label %for.cond263

doneBlack2db:                                     ; preds = %do.end324
  br label %if.end332

if.end332:                                        ; preds = %doneBlack2db, %doneBlack2da
  br label %do.body333

do.body333:                                       ; preds = %if.end332
  %240 = load ptr, ptr %pa, align 8
  %241 = load ptr, ptr %thisrun, align 8
  %cmp334 = icmp ne ptr %240, %241
  br i1 %cmp334, label %if.then336, label %if.end351

if.then336:                                       ; preds = %do.body333
  br label %while.cond337

while.cond337:                                    ; preds = %while.body344, %if.then336
  %242 = load i32, ptr %b1, align 4
  %243 = load i32, ptr %a0, align 4
  %cmp338 = icmp sle i32 %242, %243
  br i1 %cmp338, label %land.rhs340, label %land.end343

land.rhs340:                                      ; preds = %while.cond337
  %244 = load i32, ptr %b1, align 4
  %245 = load i32, ptr %lastx, align 4
  %cmp341 = icmp slt i32 %244, %245
  br label %land.end343

land.end343:                                      ; preds = %land.rhs340, %while.cond337
  %246 = phi i1 [ false, %while.cond337 ], [ %cmp341, %land.rhs340 ]
  br i1 %246, label %while.body344, label %while.end350

while.body344:                                    ; preds = %land.end343
  %247 = load ptr, ptr %pb, align 8
  %arrayidx345 = getelementptr inbounds i32, ptr %247, i64 0
  %248 = load i32, ptr %arrayidx345, align 4
  %249 = load ptr, ptr %pb, align 8
  %arrayidx346 = getelementptr inbounds i32, ptr %249, i64 1
  %250 = load i32, ptr %arrayidx346, align 4
  %add347 = add i32 %248, %250
  %251 = load i32, ptr %b1, align 4
  %add348 = add i32 %251, %add347
  store i32 %add348, ptr %b1, align 4
  %252 = load ptr, ptr %pb, align 8
  %add.ptr349 = getelementptr inbounds i32, ptr %252, i64 2
  store ptr %add.ptr349, ptr %pb, align 8
  br label %while.cond337, !llvm.loop !13

while.end350:                                     ; preds = %land.end343
  br label %if.end351

if.end351:                                        ; preds = %while.end350, %do.body333
  br label %do.end352

do.end352:                                        ; preds = %if.end351
  br label %sw.epilog552

sw.bb353:                                         ; preds = %do.end31
  br label %do.body354

do.body354:                                       ; preds = %sw.bb353
  %253 = load ptr, ptr %pa, align 8
  %254 = load ptr, ptr %thisrun, align 8
  %cmp355 = icmp ne ptr %253, %254
  br i1 %cmp355, label %if.then357, label %if.end372

if.then357:                                       ; preds = %do.body354
  br label %while.cond358

while.cond358:                                    ; preds = %while.body365, %if.then357
  %255 = load i32, ptr %b1, align 4
  %256 = load i32, ptr %a0, align 4
  %cmp359 = icmp sle i32 %255, %256
  br i1 %cmp359, label %land.rhs361, label %land.end364

land.rhs361:                                      ; preds = %while.cond358
  %257 = load i32, ptr %b1, align 4
  %258 = load i32, ptr %lastx, align 4
  %cmp362 = icmp slt i32 %257, %258
  br label %land.end364

land.end364:                                      ; preds = %land.rhs361, %while.cond358
  %259 = phi i1 [ false, %while.cond358 ], [ %cmp362, %land.rhs361 ]
  br i1 %259, label %while.body365, label %while.end371

while.body365:                                    ; preds = %land.end364
  %260 = load ptr, ptr %pb, align 8
  %arrayidx366 = getelementptr inbounds i32, ptr %260, i64 0
  %261 = load i32, ptr %arrayidx366, align 4
  %262 = load ptr, ptr %pb, align 8
  %arrayidx367 = getelementptr inbounds i32, ptr %262, i64 1
  %263 = load i32, ptr %arrayidx367, align 4
  %add368 = add i32 %261, %263
  %264 = load i32, ptr %b1, align 4
  %add369 = add i32 %264, %add368
  store i32 %add369, ptr %b1, align 4
  %265 = load ptr, ptr %pb, align 8
  %add.ptr370 = getelementptr inbounds i32, ptr %265, i64 2
  store ptr %add.ptr370, ptr %pb, align 8
  br label %while.cond358, !llvm.loop !14

while.end371:                                     ; preds = %land.end364
  br label %if.end372

if.end372:                                        ; preds = %while.end371, %do.body354
  br label %do.end373

do.end373:                                        ; preds = %if.end372
  br label %do.body374

do.body374:                                       ; preds = %do.end373
  %266 = load i32, ptr %RunLength, align 4
  %267 = load i32, ptr %b1, align 4
  %268 = load i32, ptr %a0, align 4
  %sub375 = sub nsw i32 %267, %268
  %add376 = add nsw i32 %266, %sub375
  %269 = load ptr, ptr %pa, align 8
  %incdec.ptr377 = getelementptr inbounds i32, ptr %269, i32 1
  store ptr %incdec.ptr377, ptr %pa, align 8
  store i32 %add376, ptr %269, align 4
  %270 = load i32, ptr %b1, align 4
  %271 = load i32, ptr %a0, align 4
  %sub378 = sub nsw i32 %270, %271
  %272 = load i32, ptr %a0, align 4
  %add379 = add nsw i32 %272, %sub378
  store i32 %add379, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end380

do.end380:                                        ; preds = %do.body374
  %273 = load ptr, ptr %pb, align 8
  %incdec.ptr381 = getelementptr inbounds i32, ptr %273, i32 1
  store ptr %incdec.ptr381, ptr %pb, align 8
  %274 = load i32, ptr %273, align 4
  %275 = load i32, ptr %b1, align 4
  %add382 = add i32 %275, %274
  store i32 %add382, ptr %b1, align 4
  br label %sw.epilog552

sw.bb383:                                         ; preds = %do.end31
  br label %do.body384

do.body384:                                       ; preds = %sw.bb383
  %276 = load ptr, ptr %pa, align 8
  %277 = load ptr, ptr %thisrun, align 8
  %cmp385 = icmp ne ptr %276, %277
  br i1 %cmp385, label %if.then387, label %if.end402

if.then387:                                       ; preds = %do.body384
  br label %while.cond388

while.cond388:                                    ; preds = %while.body395, %if.then387
  %278 = load i32, ptr %b1, align 4
  %279 = load i32, ptr %a0, align 4
  %cmp389 = icmp sle i32 %278, %279
  br i1 %cmp389, label %land.rhs391, label %land.end394

land.rhs391:                                      ; preds = %while.cond388
  %280 = load i32, ptr %b1, align 4
  %281 = load i32, ptr %lastx, align 4
  %cmp392 = icmp slt i32 %280, %281
  br label %land.end394

land.end394:                                      ; preds = %land.rhs391, %while.cond388
  %282 = phi i1 [ false, %while.cond388 ], [ %cmp392, %land.rhs391 ]
  br i1 %282, label %while.body395, label %while.end401

while.body395:                                    ; preds = %land.end394
  %283 = load ptr, ptr %pb, align 8
  %arrayidx396 = getelementptr inbounds i32, ptr %283, i64 0
  %284 = load i32, ptr %arrayidx396, align 4
  %285 = load ptr, ptr %pb, align 8
  %arrayidx397 = getelementptr inbounds i32, ptr %285, i64 1
  %286 = load i32, ptr %arrayidx397, align 4
  %add398 = add i32 %284, %286
  %287 = load i32, ptr %b1, align 4
  %add399 = add i32 %287, %add398
  store i32 %add399, ptr %b1, align 4
  %288 = load ptr, ptr %pb, align 8
  %add.ptr400 = getelementptr inbounds i32, ptr %288, i64 2
  store ptr %add.ptr400, ptr %pb, align 8
  br label %while.cond388, !llvm.loop !15

while.end401:                                     ; preds = %land.end394
  br label %if.end402

if.end402:                                        ; preds = %while.end401, %do.body384
  br label %do.end403

do.end403:                                        ; preds = %if.end402
  br label %do.body404

do.body404:                                       ; preds = %do.end403
  %289 = load i32, ptr %RunLength, align 4
  %290 = load i32, ptr %b1, align 4
  %291 = load i32, ptr %a0, align 4
  %sub405 = sub nsw i32 %290, %291
  %292 = load ptr, ptr %TabEnt, align 8
  %Param406 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %292, i32 0, i32 2
  %293 = load i32, ptr %Param406, align 4
  %add407 = add i32 %sub405, %293
  %add408 = add i32 %289, %add407
  %294 = load ptr, ptr %pa, align 8
  %incdec.ptr409 = getelementptr inbounds i32, ptr %294, i32 1
  store ptr %incdec.ptr409, ptr %pa, align 8
  store i32 %add408, ptr %294, align 4
  %295 = load i32, ptr %b1, align 4
  %296 = load i32, ptr %a0, align 4
  %sub410 = sub nsw i32 %295, %296
  %297 = load ptr, ptr %TabEnt, align 8
  %Param411 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %297, i32 0, i32 2
  %298 = load i32, ptr %Param411, align 4
  %add412 = add i32 %sub410, %298
  %299 = load i32, ptr %a0, align 4
  %add413 = add i32 %299, %add412
  store i32 %add413, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end414

do.end414:                                        ; preds = %do.body404
  %300 = load ptr, ptr %pb, align 8
  %incdec.ptr415 = getelementptr inbounds i32, ptr %300, i32 1
  store ptr %incdec.ptr415, ptr %pb, align 8
  %301 = load i32, ptr %300, align 4
  %302 = load i32, ptr %b1, align 4
  %add416 = add i32 %302, %301
  store i32 %add416, ptr %b1, align 4
  br label %sw.epilog552

sw.bb417:                                         ; preds = %do.end31
  br label %do.body418

do.body418:                                       ; preds = %sw.bb417
  %303 = load ptr, ptr %pa, align 8
  %304 = load ptr, ptr %thisrun, align 8
  %cmp419 = icmp ne ptr %303, %304
  br i1 %cmp419, label %if.then421, label %if.end436

if.then421:                                       ; preds = %do.body418
  br label %while.cond422

while.cond422:                                    ; preds = %while.body429, %if.then421
  %305 = load i32, ptr %b1, align 4
  %306 = load i32, ptr %a0, align 4
  %cmp423 = icmp sle i32 %305, %306
  br i1 %cmp423, label %land.rhs425, label %land.end428

land.rhs425:                                      ; preds = %while.cond422
  %307 = load i32, ptr %b1, align 4
  %308 = load i32, ptr %lastx, align 4
  %cmp426 = icmp slt i32 %307, %308
  br label %land.end428

land.end428:                                      ; preds = %land.rhs425, %while.cond422
  %309 = phi i1 [ false, %while.cond422 ], [ %cmp426, %land.rhs425 ]
  br i1 %309, label %while.body429, label %while.end435

while.body429:                                    ; preds = %land.end428
  %310 = load ptr, ptr %pb, align 8
  %arrayidx430 = getelementptr inbounds i32, ptr %310, i64 0
  %311 = load i32, ptr %arrayidx430, align 4
  %312 = load ptr, ptr %pb, align 8
  %arrayidx431 = getelementptr inbounds i32, ptr %312, i64 1
  %313 = load i32, ptr %arrayidx431, align 4
  %add432 = add i32 %311, %313
  %314 = load i32, ptr %b1, align 4
  %add433 = add i32 %314, %add432
  store i32 %add433, ptr %b1, align 4
  %315 = load ptr, ptr %pb, align 8
  %add.ptr434 = getelementptr inbounds i32, ptr %315, i64 2
  store ptr %add.ptr434, ptr %pb, align 8
  br label %while.cond422, !llvm.loop !16

while.end435:                                     ; preds = %land.end428
  br label %if.end436

if.end436:                                        ; preds = %while.end435, %do.body418
  br label %do.end437

do.end437:                                        ; preds = %if.end436
  br label %do.body438

do.body438:                                       ; preds = %do.end437
  %316 = load i32, ptr %RunLength, align 4
  %317 = load i32, ptr %b1, align 4
  %318 = load i32, ptr %a0, align 4
  %sub439 = sub nsw i32 %317, %318
  %319 = load ptr, ptr %TabEnt, align 8
  %Param440 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %319, i32 0, i32 2
  %320 = load i32, ptr %Param440, align 4
  %sub441 = sub i32 %sub439, %320
  %add442 = add i32 %316, %sub441
  %321 = load ptr, ptr %pa, align 8
  %incdec.ptr443 = getelementptr inbounds i32, ptr %321, i32 1
  store ptr %incdec.ptr443, ptr %pa, align 8
  store i32 %add442, ptr %321, align 4
  %322 = load i32, ptr %b1, align 4
  %323 = load i32, ptr %a0, align 4
  %sub444 = sub nsw i32 %322, %323
  %324 = load ptr, ptr %TabEnt, align 8
  %Param445 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %324, i32 0, i32 2
  %325 = load i32, ptr %Param445, align 4
  %sub446 = sub i32 %sub444, %325
  %326 = load i32, ptr %a0, align 4
  %add447 = add i32 %326, %sub446
  store i32 %add447, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end448

do.end448:                                        ; preds = %do.body438
  %327 = load ptr, ptr %pb, align 8
  %incdec.ptr449 = getelementptr inbounds i32, ptr %327, i32 -1
  store ptr %incdec.ptr449, ptr %pb, align 8
  %328 = load i32, ptr %incdec.ptr449, align 4
  %329 = load i32, ptr %b1, align 4
  %sub450 = sub i32 %329, %328
  store i32 %sub450, ptr %b1, align 4
  br label %sw.epilog552

sw.bb451:                                         ; preds = %do.end31
  %330 = load i32, ptr %lastx, align 4
  %331 = load i32, ptr %a0, align 4
  %sub452 = sub nsw i32 %330, %331
  %332 = load ptr, ptr %pa, align 8
  %incdec.ptr453 = getelementptr inbounds i32, ptr %332, i32 1
  store ptr %incdec.ptr453, ptr %pa, align 8
  store i32 %sub452, ptr %332, align 4
  %333 = load ptr, ptr %tif.addr, align 8
  %334 = load i32, ptr %a0, align 4
  call void @Fax3Extension(ptr noundef @Fax4Decode.module, ptr noundef %333, i32 noundef %334)
  br label %eol2d

sw.bb454:                                         ; preds = %do.end31
  %335 = load i32, ptr %lastx, align 4
  %336 = load i32, ptr %a0, align 4
  %sub455 = sub nsw i32 %335, %336
  %337 = load ptr, ptr %pa, align 8
  %incdec.ptr456 = getelementptr inbounds i32, ptr %337, i32 1
  store ptr %incdec.ptr456, ptr %pa, align 8
  store i32 %sub455, ptr %337, align 4
  br label %do.body457

do.body457:                                       ; preds = %sw.bb454
  %338 = load i32, ptr %BitsAvail, align 4
  %cmp458 = icmp slt i32 %338, 5
  br i1 %cmp458, label %if.then460, label %if.end477

if.then460:                                       ; preds = %do.body457
  %339 = load ptr, ptr %cp, align 8
  %340 = load ptr, ptr %ep, align 8
  %cmp461 = icmp uge ptr %339, %340
  br i1 %cmp461, label %if.then463, label %if.else468

if.then463:                                       ; preds = %if.then460
  %341 = load i32, ptr %BitsAvail, align 4
  %cmp464 = icmp eq i32 %341, 0
  br i1 %cmp464, label %if.then466, label %if.end467

if.then466:                                       ; preds = %if.then463
  br label %eof2d

if.end467:                                        ; preds = %if.then463
  store i32 5, ptr %BitsAvail, align 4
  br label %if.end476

if.else468:                                       ; preds = %if.then460
  %342 = load ptr, ptr %bitmap, align 8
  %343 = load ptr, ptr %cp, align 8
  %incdec.ptr469 = getelementptr inbounds i8, ptr %343, i32 1
  store ptr %incdec.ptr469, ptr %cp, align 8
  %344 = load i8, ptr %343, align 1
  %idxprom470 = zext i8 %344 to i64
  %arrayidx471 = getelementptr inbounds i8, ptr %342, i64 %idxprom470
  %345 = load i8, ptr %arrayidx471, align 1
  %conv472 = zext i8 %345 to i32
  %346 = load i32, ptr %BitsAvail, align 4
  %shl473 = shl i32 %conv472, %346
  %347 = load i32, ptr %BitAcc, align 4
  %or474 = or i32 %347, %shl473
  store i32 %or474, ptr %BitAcc, align 4
  %348 = load i32, ptr %BitsAvail, align 4
  %add475 = add nsw i32 %348, 8
  store i32 %add475, ptr %BitsAvail, align 4
  br label %if.end476

if.end476:                                        ; preds = %if.else468, %if.end467
  br label %if.end477

if.end477:                                        ; preds = %if.end476, %do.body457
  br label %do.end478

do.end478:                                        ; preds = %if.end477
  %349 = load i32, ptr %BitAcc, align 4
  %and479 = and i32 %349, 31
  %tobool480 = icmp ne i32 %and479, 0
  br i1 %tobool480, label %if.then481, label %if.end482

if.then481:                                       ; preds = %do.end478
  %350 = load ptr, ptr %tif.addr, align 8
  %351 = load i32, ptr %a0, align 4
  call void @Fax3Unexpected(ptr noundef @Fax4Decode.module, ptr noundef %350, i32 noundef %351)
  br label %if.end482

if.end482:                                        ; preds = %if.then481, %do.end478
  store i32 1, ptr %EOLcnt, align 4
  br label %eol2d

sw.default483:                                    ; preds = %do.end31
  br label %badMain2d

badMain2d:                                        ; preds = %if.then584, %sw.default483
  %352 = load ptr, ptr %tif.addr, align 8
  %353 = load i32, ptr %a0, align 4
  call void @Fax3Unexpected(ptr noundef @Fax4Decode.module, ptr noundef %352, i32 noundef %353)
  br label %eol2d

badBlack2d:                                       ; preds = %sw.default330, %sw.default
  %354 = load ptr, ptr %tif.addr, align 8
  %355 = load i32, ptr %a0, align 4
  call void @Fax3Unexpected(ptr noundef @Fax4Decode.module, ptr noundef %354, i32 noundef %355)
  br label %eol2d

badWhite2d:                                       ; preds = %sw.default261, %sw.default191
  %356 = load ptr, ptr %tif.addr, align 8
  %357 = load i32, ptr %a0, align 4
  call void @Fax3Unexpected(ptr noundef @Fax4Decode.module, ptr noundef %356, i32 noundef %357)
  br label %eol2d

eof2d:                                            ; preds = %if.then569, %if.then466, %if.then274, %if.then205, %if.then135, %if.then69, %if.then18
  %358 = load ptr, ptr %tif.addr, align 8
  %359 = load i32, ptr %a0, align 4
  call void @Fax3PrematureEOF(ptr noundef @Fax4Decode.module, ptr noundef %358, i32 noundef %359)
  br label %do.body484

do.body484:                                       ; preds = %eof2d
  %360 = load i32, ptr %RunLength, align 4
  %tobool485 = icmp ne i32 %360, 0
  br i1 %tobool485, label %if.then486, label %if.end492

if.then486:                                       ; preds = %do.body484
  br label %do.body487

do.body487:                                       ; preds = %if.then486
  %361 = load i32, ptr %RunLength, align 4
  %add488 = add nsw i32 %361, 0
  %362 = load ptr, ptr %pa, align 8
  %incdec.ptr489 = getelementptr inbounds i32, ptr %362, i32 1
  store ptr %incdec.ptr489, ptr %pa, align 8
  store i32 %add488, ptr %362, align 4
  %363 = load i32, ptr %a0, align 4
  %add490 = add nsw i32 %363, 0
  store i32 %add490, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end491

do.end491:                                        ; preds = %do.body487
  br label %if.end492

if.end492:                                        ; preds = %do.end491, %do.body484
  %364 = load i32, ptr %a0, align 4
  %365 = load i32, ptr %lastx, align 4
  %cmp493 = icmp ne i32 %364, %365
  br i1 %cmp493, label %if.then495, label %if.end550

if.then495:                                       ; preds = %if.end492
  %366 = load ptr, ptr %tif.addr, align 8
  %367 = load i32, ptr %a0, align 4
  %368 = load i32, ptr %lastx, align 4
  call void @Fax3BadLength(ptr noundef @Fax4Decode.module, ptr noundef %366, i32 noundef %367, i32 noundef %368)
  br label %while.cond496

while.cond496:                                    ; preds = %while.body503, %if.then495
  %369 = load i32, ptr %a0, align 4
  %370 = load i32, ptr %lastx, align 4
  %cmp497 = icmp sgt i32 %369, %370
  br i1 %cmp497, label %land.rhs499, label %land.end502

land.rhs499:                                      ; preds = %while.cond496
  %371 = load ptr, ptr %pa, align 8
  %372 = load ptr, ptr %thisrun, align 8
  %cmp500 = icmp ugt ptr %371, %372
  br label %land.end502

land.end502:                                      ; preds = %land.rhs499, %while.cond496
  %373 = phi i1 [ false, %while.cond496 ], [ %cmp500, %land.rhs499 ]
  br i1 %373, label %while.body503, label %while.end506

while.body503:                                    ; preds = %land.end502
  %374 = load ptr, ptr %pa, align 8
  %incdec.ptr504 = getelementptr inbounds i32, ptr %374, i32 -1
  store ptr %incdec.ptr504, ptr %pa, align 8
  %375 = load i32, ptr %incdec.ptr504, align 4
  %376 = load i32, ptr %a0, align 4
  %sub505 = sub i32 %376, %375
  store i32 %sub505, ptr %a0, align 4
  br label %while.cond496, !llvm.loop !17

while.end506:                                     ; preds = %land.end502
  %377 = load i32, ptr %a0, align 4
  %378 = load i32, ptr %lastx, align 4
  %cmp507 = icmp slt i32 %377, %378
  br i1 %cmp507, label %if.then509, label %if.else534

if.then509:                                       ; preds = %while.end506
  %379 = load i32, ptr %a0, align 4
  %cmp510 = icmp slt i32 %379, 0
  br i1 %cmp510, label %if.then512, label %if.end513

if.then512:                                       ; preds = %if.then509
  store i32 0, ptr %a0, align 4
  br label %if.end513

if.end513:                                        ; preds = %if.then512, %if.then509
  %380 = load ptr, ptr %pa, align 8
  %381 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast514 = ptrtoint ptr %380 to i64
  %sub.ptr.rhs.cast515 = ptrtoint ptr %381 to i64
  %sub.ptr.sub516 = sub i64 %sub.ptr.lhs.cast514, %sub.ptr.rhs.cast515
  %sub.ptr.div517 = sdiv exact i64 %sub.ptr.sub516, 4
  %and518 = and i64 %sub.ptr.div517, 1
  %tobool519 = icmp ne i64 %and518, 0
  br i1 %tobool519, label %if.then520, label %if.end526

if.then520:                                       ; preds = %if.end513
  br label %do.body521

do.body521:                                       ; preds = %if.then520
  %382 = load i32, ptr %RunLength, align 4
  %add522 = add nsw i32 %382, 0
  %383 = load ptr, ptr %pa, align 8
  %incdec.ptr523 = getelementptr inbounds i32, ptr %383, i32 1
  store ptr %incdec.ptr523, ptr %pa, align 8
  store i32 %add522, ptr %383, align 4
  %384 = load i32, ptr %a0, align 4
  %add524 = add nsw i32 %384, 0
  store i32 %add524, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end525

do.end525:                                        ; preds = %do.body521
  br label %if.end526

if.end526:                                        ; preds = %do.end525, %if.end513
  br label %do.body527

do.body527:                                       ; preds = %if.end526
  %385 = load i32, ptr %RunLength, align 4
  %386 = load i32, ptr %lastx, align 4
  %387 = load i32, ptr %a0, align 4
  %sub528 = sub nsw i32 %386, %387
  %add529 = add nsw i32 %385, %sub528
  %388 = load ptr, ptr %pa, align 8
  %incdec.ptr530 = getelementptr inbounds i32, ptr %388, i32 1
  store ptr %incdec.ptr530, ptr %pa, align 8
  store i32 %add529, ptr %388, align 4
  %389 = load i32, ptr %lastx, align 4
  %390 = load i32, ptr %a0, align 4
  %sub531 = sub nsw i32 %389, %390
  %391 = load i32, ptr %a0, align 4
  %add532 = add nsw i32 %391, %sub531
  store i32 %add532, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end533

do.end533:                                        ; preds = %do.body527
  br label %if.end549

if.else534:                                       ; preds = %while.end506
  %392 = load i32, ptr %a0, align 4
  %393 = load i32, ptr %lastx, align 4
  %cmp535 = icmp sgt i32 %392, %393
  br i1 %cmp535, label %if.then537, label %if.end548

if.then537:                                       ; preds = %if.else534
  br label %do.body538

do.body538:                                       ; preds = %if.then537
  %394 = load i32, ptr %RunLength, align 4
  %395 = load i32, ptr %lastx, align 4
  %add539 = add nsw i32 %394, %395
  %396 = load ptr, ptr %pa, align 8
  %incdec.ptr540 = getelementptr inbounds i32, ptr %396, i32 1
  store ptr %incdec.ptr540, ptr %pa, align 8
  store i32 %add539, ptr %396, align 4
  %397 = load i32, ptr %lastx, align 4
  %398 = load i32, ptr %a0, align 4
  %add541 = add nsw i32 %398, %397
  store i32 %add541, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end542

do.end542:                                        ; preds = %do.body538
  br label %do.body543

do.body543:                                       ; preds = %do.end542
  %399 = load i32, ptr %RunLength, align 4
  %add544 = add nsw i32 %399, 0
  %400 = load ptr, ptr %pa, align 8
  %incdec.ptr545 = getelementptr inbounds i32, ptr %400, i32 1
  store ptr %incdec.ptr545, ptr %pa, align 8
  store i32 %add544, ptr %400, align 4
  %401 = load i32, ptr %a0, align 4
  %add546 = add nsw i32 %401, 0
  store i32 %add546, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end547

do.end547:                                        ; preds = %do.body543
  br label %if.end548

if.end548:                                        ; preds = %do.end547, %if.else534
  br label %if.end549

if.end549:                                        ; preds = %if.end548, %do.end533
  br label %if.end550

if.end550:                                        ; preds = %if.end549, %if.end492
  br label %do.end551

do.end551:                                        ; preds = %if.end550
  br label %EOFG4

sw.epilog552:                                     ; preds = %do.end448, %do.end414, %do.end380, %do.end352, %do.end49
  br label %while.cond5, !llvm.loop !18

while.end553:                                     ; preds = %while.cond5
  %402 = load i32, ptr %RunLength, align 4
  %tobool554 = icmp ne i32 %402, 0
  br i1 %tobool554, label %if.then555, label %if.end596

if.then555:                                       ; preds = %while.end553
  %403 = load i32, ptr %RunLength, align 4
  %404 = load i32, ptr %a0, align 4
  %add556 = add nsw i32 %403, %404
  %405 = load i32, ptr %lastx, align 4
  %cmp557 = icmp slt i32 %add556, %405
  br i1 %cmp557, label %if.then559, label %if.end590

if.then559:                                       ; preds = %if.then555
  br label %do.body560

do.body560:                                       ; preds = %if.then559
  %406 = load i32, ptr %BitsAvail, align 4
  %cmp561 = icmp slt i32 %406, 1
  br i1 %cmp561, label %if.then563, label %if.end580

if.then563:                                       ; preds = %do.body560
  %407 = load ptr, ptr %cp, align 8
  %408 = load ptr, ptr %ep, align 8
  %cmp564 = icmp uge ptr %407, %408
  br i1 %cmp564, label %if.then566, label %if.else571

if.then566:                                       ; preds = %if.then563
  %409 = load i32, ptr %BitsAvail, align 4
  %cmp567 = icmp eq i32 %409, 0
  br i1 %cmp567, label %if.then569, label %if.end570

if.then569:                                       ; preds = %if.then566
  br label %eof2d

if.end570:                                        ; preds = %if.then566
  store i32 1, ptr %BitsAvail, align 4
  br label %if.end579

if.else571:                                       ; preds = %if.then563
  %410 = load ptr, ptr %bitmap, align 8
  %411 = load ptr, ptr %cp, align 8
  %incdec.ptr572 = getelementptr inbounds i8, ptr %411, i32 1
  store ptr %incdec.ptr572, ptr %cp, align 8
  %412 = load i8, ptr %411, align 1
  %idxprom573 = zext i8 %412 to i64
  %arrayidx574 = getelementptr inbounds i8, ptr %410, i64 %idxprom573
  %413 = load i8, ptr %arrayidx574, align 1
  %conv575 = zext i8 %413 to i32
  %414 = load i32, ptr %BitsAvail, align 4
  %shl576 = shl i32 %conv575, %414
  %415 = load i32, ptr %BitAcc, align 4
  %or577 = or i32 %415, %shl576
  store i32 %or577, ptr %BitAcc, align 4
  %416 = load i32, ptr %BitsAvail, align 4
  %add578 = add nsw i32 %416, 8
  store i32 %add578, ptr %BitsAvail, align 4
  br label %if.end579

if.end579:                                        ; preds = %if.else571, %if.end570
  br label %if.end580

if.end580:                                        ; preds = %if.end579, %do.body560
  br label %do.end581

do.end581:                                        ; preds = %if.end580
  %417 = load i32, ptr %BitAcc, align 4
  %and582 = and i32 %417, 1
  %tobool583 = icmp ne i32 %and582, 0
  br i1 %tobool583, label %if.end585, label %if.then584

if.then584:                                       ; preds = %do.end581
  br label %badMain2d

if.end585:                                        ; preds = %do.end581
  br label %do.body586

do.body586:                                       ; preds = %if.end585
  %418 = load i32, ptr %BitsAvail, align 4
  %sub587 = sub nsw i32 %418, 1
  store i32 %sub587, ptr %BitsAvail, align 4
  %419 = load i32, ptr %BitAcc, align 4
  %shr588 = lshr i32 %419, 1
  store i32 %shr588, ptr %BitAcc, align 4
  br label %do.end589

do.end589:                                        ; preds = %do.body586
  br label %if.end590

if.end590:                                        ; preds = %do.end589, %if.then555
  br label %do.body591

do.body591:                                       ; preds = %if.end590
  %420 = load i32, ptr %RunLength, align 4
  %add592 = add nsw i32 %420, 0
  %421 = load ptr, ptr %pa, align 8
  %incdec.ptr593 = getelementptr inbounds i32, ptr %421, i32 1
  store ptr %incdec.ptr593, ptr %pa, align 8
  store i32 %add592, ptr %421, align 4
  %422 = load i32, ptr %a0, align 4
  %add594 = add nsw i32 %422, 0
  store i32 %add594, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end595

do.end595:                                        ; preds = %do.body591
  br label %if.end596

if.end596:                                        ; preds = %do.end595, %while.end553
  br label %eol2d

eol2d:                                            ; preds = %if.end596, %badWhite2d, %badBlack2d, %badMain2d, %if.end482, %sw.bb451
  br label %do.body597

do.body597:                                       ; preds = %eol2d
  %423 = load i32, ptr %RunLength, align 4
  %tobool598 = icmp ne i32 %423, 0
  br i1 %tobool598, label %if.then599, label %if.end605

if.then599:                                       ; preds = %do.body597
  br label %do.body600

do.body600:                                       ; preds = %if.then599
  %424 = load i32, ptr %RunLength, align 4
  %add601 = add nsw i32 %424, 0
  %425 = load ptr, ptr %pa, align 8
  %incdec.ptr602 = getelementptr inbounds i32, ptr %425, i32 1
  store ptr %incdec.ptr602, ptr %pa, align 8
  store i32 %add601, ptr %425, align 4
  %426 = load i32, ptr %a0, align 4
  %add603 = add nsw i32 %426, 0
  store i32 %add603, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end604

do.end604:                                        ; preds = %do.body600
  br label %if.end605

if.end605:                                        ; preds = %do.end604, %do.body597
  %427 = load i32, ptr %a0, align 4
  %428 = load i32, ptr %lastx, align 4
  %cmp606 = icmp ne i32 %427, %428
  br i1 %cmp606, label %if.then608, label %if.end663

if.then608:                                       ; preds = %if.end605
  %429 = load ptr, ptr %tif.addr, align 8
  %430 = load i32, ptr %a0, align 4
  %431 = load i32, ptr %lastx, align 4
  call void @Fax3BadLength(ptr noundef @Fax4Decode.module, ptr noundef %429, i32 noundef %430, i32 noundef %431)
  br label %while.cond609

while.cond609:                                    ; preds = %while.body616, %if.then608
  %432 = load i32, ptr %a0, align 4
  %433 = load i32, ptr %lastx, align 4
  %cmp610 = icmp sgt i32 %432, %433
  br i1 %cmp610, label %land.rhs612, label %land.end615

land.rhs612:                                      ; preds = %while.cond609
  %434 = load ptr, ptr %pa, align 8
  %435 = load ptr, ptr %thisrun, align 8
  %cmp613 = icmp ugt ptr %434, %435
  br label %land.end615

land.end615:                                      ; preds = %land.rhs612, %while.cond609
  %436 = phi i1 [ false, %while.cond609 ], [ %cmp613, %land.rhs612 ]
  br i1 %436, label %while.body616, label %while.end619

while.body616:                                    ; preds = %land.end615
  %437 = load ptr, ptr %pa, align 8
  %incdec.ptr617 = getelementptr inbounds i32, ptr %437, i32 -1
  store ptr %incdec.ptr617, ptr %pa, align 8
  %438 = load i32, ptr %incdec.ptr617, align 4
  %439 = load i32, ptr %a0, align 4
  %sub618 = sub i32 %439, %438
  store i32 %sub618, ptr %a0, align 4
  br label %while.cond609, !llvm.loop !19

while.end619:                                     ; preds = %land.end615
  %440 = load i32, ptr %a0, align 4
  %441 = load i32, ptr %lastx, align 4
  %cmp620 = icmp slt i32 %440, %441
  br i1 %cmp620, label %if.then622, label %if.else647

if.then622:                                       ; preds = %while.end619
  %442 = load i32, ptr %a0, align 4
  %cmp623 = icmp slt i32 %442, 0
  br i1 %cmp623, label %if.then625, label %if.end626

if.then625:                                       ; preds = %if.then622
  store i32 0, ptr %a0, align 4
  br label %if.end626

if.end626:                                        ; preds = %if.then625, %if.then622
  %443 = load ptr, ptr %pa, align 8
  %444 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast627 = ptrtoint ptr %443 to i64
  %sub.ptr.rhs.cast628 = ptrtoint ptr %444 to i64
  %sub.ptr.sub629 = sub i64 %sub.ptr.lhs.cast627, %sub.ptr.rhs.cast628
  %sub.ptr.div630 = sdiv exact i64 %sub.ptr.sub629, 4
  %and631 = and i64 %sub.ptr.div630, 1
  %tobool632 = icmp ne i64 %and631, 0
  br i1 %tobool632, label %if.then633, label %if.end639

if.then633:                                       ; preds = %if.end626
  br label %do.body634

do.body634:                                       ; preds = %if.then633
  %445 = load i32, ptr %RunLength, align 4
  %add635 = add nsw i32 %445, 0
  %446 = load ptr, ptr %pa, align 8
  %incdec.ptr636 = getelementptr inbounds i32, ptr %446, i32 1
  store ptr %incdec.ptr636, ptr %pa, align 8
  store i32 %add635, ptr %446, align 4
  %447 = load i32, ptr %a0, align 4
  %add637 = add nsw i32 %447, 0
  store i32 %add637, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end638

do.end638:                                        ; preds = %do.body634
  br label %if.end639

if.end639:                                        ; preds = %do.end638, %if.end626
  br label %do.body640

do.body640:                                       ; preds = %if.end639
  %448 = load i32, ptr %RunLength, align 4
  %449 = load i32, ptr %lastx, align 4
  %450 = load i32, ptr %a0, align 4
  %sub641 = sub nsw i32 %449, %450
  %add642 = add nsw i32 %448, %sub641
  %451 = load ptr, ptr %pa, align 8
  %incdec.ptr643 = getelementptr inbounds i32, ptr %451, i32 1
  store ptr %incdec.ptr643, ptr %pa, align 8
  store i32 %add642, ptr %451, align 4
  %452 = load i32, ptr %lastx, align 4
  %453 = load i32, ptr %a0, align 4
  %sub644 = sub nsw i32 %452, %453
  %454 = load i32, ptr %a0, align 4
  %add645 = add nsw i32 %454, %sub644
  store i32 %add645, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end646

do.end646:                                        ; preds = %do.body640
  br label %if.end662

if.else647:                                       ; preds = %while.end619
  %455 = load i32, ptr %a0, align 4
  %456 = load i32, ptr %lastx, align 4
  %cmp648 = icmp sgt i32 %455, %456
  br i1 %cmp648, label %if.then650, label %if.end661

if.then650:                                       ; preds = %if.else647
  br label %do.body651

do.body651:                                       ; preds = %if.then650
  %457 = load i32, ptr %RunLength, align 4
  %458 = load i32, ptr %lastx, align 4
  %add652 = add nsw i32 %457, %458
  %459 = load ptr, ptr %pa, align 8
  %incdec.ptr653 = getelementptr inbounds i32, ptr %459, i32 1
  store ptr %incdec.ptr653, ptr %pa, align 8
  store i32 %add652, ptr %459, align 4
  %460 = load i32, ptr %lastx, align 4
  %461 = load i32, ptr %a0, align 4
  %add654 = add nsw i32 %461, %460
  store i32 %add654, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end655

do.end655:                                        ; preds = %do.body651
  br label %do.body656

do.body656:                                       ; preds = %do.end655
  %462 = load i32, ptr %RunLength, align 4
  %add657 = add nsw i32 %462, 0
  %463 = load ptr, ptr %pa, align 8
  %incdec.ptr658 = getelementptr inbounds i32, ptr %463, i32 1
  store ptr %incdec.ptr658, ptr %pa, align 8
  store i32 %add657, ptr %463, align 4
  %464 = load i32, ptr %a0, align 4
  %add659 = add nsw i32 %464, 0
  store i32 %add659, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end660

do.end660:                                        ; preds = %do.body656
  br label %if.end661

if.end661:                                        ; preds = %do.end660, %if.else647
  br label %if.end662

if.end662:                                        ; preds = %if.end661, %do.end646
  br label %if.end663

if.end663:                                        ; preds = %if.end662, %if.end605
  br label %do.end664

do.end664:                                        ; preds = %if.end663
  br label %do.end665

do.end665:                                        ; preds = %do.end664
  %465 = load ptr, ptr %sp, align 8
  %fill = getelementptr inbounds %struct.Fax3DecodeState, ptr %465, i32 0, i32 5
  %466 = load ptr, ptr %fill, align 8
  %467 = load ptr, ptr %buf.addr, align 8
  %468 = load ptr, ptr %thisrun, align 8
  %469 = load ptr, ptr %pa, align 8
  %470 = load i32, ptr %lastx, align 4
  call void %466(ptr noundef %467, ptr noundef %468, ptr noundef %469, i32 noundef %470)
  br label %do.body666

do.body666:                                       ; preds = %do.end665
  %471 = load i32, ptr %RunLength, align 4
  %add667 = add nsw i32 %471, 0
  %472 = load ptr, ptr %pa, align 8
  %incdec.ptr668 = getelementptr inbounds i32, ptr %472, i32 1
  store ptr %incdec.ptr668, ptr %pa, align 8
  store i32 %add667, ptr %472, align 4
  %473 = load i32, ptr %a0, align 4
  %add669 = add nsw i32 %473, 0
  store i32 %add669, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end670

do.end670:                                        ; preds = %do.body666
  %474 = load ptr, ptr %sp, align 8
  %curruns671 = getelementptr inbounds %struct.Fax3DecodeState, ptr %474, i32 0, i32 8
  %475 = load ptr, ptr %curruns671, align 8
  store ptr %475, ptr %x, align 8
  %476 = load ptr, ptr %sp, align 8
  %refruns672 = getelementptr inbounds %struct.Fax3DecodeState, ptr %476, i32 0, i32 7
  %477 = load ptr, ptr %refruns672, align 8
  %478 = load ptr, ptr %sp, align 8
  %curruns673 = getelementptr inbounds %struct.Fax3DecodeState, ptr %478, i32 0, i32 8
  store ptr %477, ptr %curruns673, align 8
  %479 = load ptr, ptr %x, align 8
  %480 = load ptr, ptr %sp, align 8
  %refruns674 = getelementptr inbounds %struct.Fax3DecodeState, ptr %480, i32 0, i32 7
  store ptr %479, ptr %refruns674, align 8
  %481 = load ptr, ptr %sp, align 8
  %b675 = getelementptr inbounds %struct.Fax3DecodeState, ptr %481, i32 0, i32 0
  %rowbytes = getelementptr inbounds %struct.Fax3BaseState, ptr %b675, i32 0, i32 1
  %482 = load i32, ptr %rowbytes, align 4
  %483 = load ptr, ptr %buf.addr, align 8
  %idx.ext676 = zext i32 %482 to i64
  %add.ptr677 = getelementptr inbounds i8, ptr %483, i64 %idx.ext676
  store ptr %add.ptr677, ptr %buf.addr, align 8
  %484 = load ptr, ptr %sp, align 8
  %b678 = getelementptr inbounds %struct.Fax3DecodeState, ptr %484, i32 0, i32 0
  %rowbytes679 = getelementptr inbounds %struct.Fax3BaseState, ptr %b678, i32 0, i32 1
  %485 = load i32, ptr %rowbytes679, align 4
  %486 = load i32, ptr %occ.addr, align 4
  %sub680 = sub i32 %486, %485
  store i32 %sub680, ptr %occ.addr, align 4
  %487 = load i32, ptr %occ.addr, align 4
  %cmp681 = icmp ne i32 %487, 0
  br i1 %cmp681, label %if.then683, label %if.end684

if.then683:                                       ; preds = %do.end670
  %488 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %488, i32 0, i32 11
  %489 = load i32, ptr %tif_row, align 8
  %inc = add i32 %489, 1
  store i32 %inc, ptr %tif_row, align 8
  br label %if.end684

if.end684:                                        ; preds = %if.then683, %do.end670
  br label %while.cond, !llvm.loop !20

EOFG4:                                            ; preds = %do.end551
  %490 = load ptr, ptr %sp, align 8
  %fill685 = getelementptr inbounds %struct.Fax3DecodeState, ptr %490, i32 0, i32 5
  %491 = load ptr, ptr %fill685, align 8
  %492 = load ptr, ptr %buf.addr, align 8
  %493 = load ptr, ptr %thisrun, align 8
  %494 = load ptr, ptr %pa, align 8
  %495 = load i32, ptr %lastx, align 4
  call void %491(ptr noundef %492, ptr noundef %493, ptr noundef %494, i32 noundef %495)
  br label %do.body686

do.body686:                                       ; preds = %EOFG4
  %496 = load i32, ptr %BitsAvail, align 4
  %497 = load ptr, ptr %sp, align 8
  %bit687 = getelementptr inbounds %struct.Fax3DecodeState, ptr %497, i32 0, i32 3
  store i32 %496, ptr %bit687, align 4
  %498 = load i32, ptr %BitAcc, align 4
  %499 = load ptr, ptr %sp, align 8
  %data688 = getelementptr inbounds %struct.Fax3DecodeState, ptr %499, i32 0, i32 2
  store i32 %498, ptr %data688, align 8
  %500 = load i32, ptr %EOLcnt, align 4
  %501 = load ptr, ptr %sp, align 8
  %EOLcnt689 = getelementptr inbounds %struct.Fax3DecodeState, ptr %501, i32 0, i32 4
  store i32 %500, ptr %EOLcnt689, align 8
  %502 = load ptr, ptr %cp, align 8
  %503 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp690 = getelementptr inbounds %struct.tiff, ptr %503, i32 0, i32 42
  %504 = load ptr, ptr %tif_rawcp690, align 8
  %sub.ptr.lhs.cast691 = ptrtoint ptr %502 to i64
  %sub.ptr.rhs.cast692 = ptrtoint ptr %504 to i64
  %sub.ptr.sub693 = sub i64 %sub.ptr.lhs.cast691, %sub.ptr.rhs.cast692
  %505 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc694 = getelementptr inbounds %struct.tiff, ptr %505, i32 0, i32 43
  %506 = load i32, ptr %tif_rawcc694, align 8
  %conv695 = sext i32 %506 to i64
  %sub696 = sub nsw i64 %conv695, %sub.ptr.sub693
  %conv697 = trunc i64 %sub696 to i32
  store i32 %conv697, ptr %tif_rawcc694, align 8
  %507 = load ptr, ptr %cp, align 8
  %508 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp698 = getelementptr inbounds %struct.tiff, ptr %508, i32 0, i32 42
  store ptr %507, ptr %tif_rawcp698, align 8
  br label %do.end699

do.end699:                                        ; preds = %do.body686
  store i32 -1, ptr %retval, align 4
  br label %return

while.end700:                                     ; preds = %while.cond
  br label %do.body701

do.body701:                                       ; preds = %while.end700
  %509 = load i32, ptr %BitsAvail, align 4
  %510 = load ptr, ptr %sp, align 8
  %bit702 = getelementptr inbounds %struct.Fax3DecodeState, ptr %510, i32 0, i32 3
  store i32 %509, ptr %bit702, align 4
  %511 = load i32, ptr %BitAcc, align 4
  %512 = load ptr, ptr %sp, align 8
  %data703 = getelementptr inbounds %struct.Fax3DecodeState, ptr %512, i32 0, i32 2
  store i32 %511, ptr %data703, align 8
  %513 = load i32, ptr %EOLcnt, align 4
  %514 = load ptr, ptr %sp, align 8
  %EOLcnt704 = getelementptr inbounds %struct.Fax3DecodeState, ptr %514, i32 0, i32 4
  store i32 %513, ptr %EOLcnt704, align 8
  %515 = load ptr, ptr %cp, align 8
  %516 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp705 = getelementptr inbounds %struct.tiff, ptr %516, i32 0, i32 42
  %517 = load ptr, ptr %tif_rawcp705, align 8
  %sub.ptr.lhs.cast706 = ptrtoint ptr %515 to i64
  %sub.ptr.rhs.cast707 = ptrtoint ptr %517 to i64
  %sub.ptr.sub708 = sub i64 %sub.ptr.lhs.cast706, %sub.ptr.rhs.cast707
  %518 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc709 = getelementptr inbounds %struct.tiff, ptr %518, i32 0, i32 43
  %519 = load i32, ptr %tif_rawcc709, align 8
  %conv710 = sext i32 %519 to i64
  %sub711 = sub nsw i64 %conv710, %sub.ptr.sub708
  %conv712 = trunc i64 %sub711 to i32
  store i32 %conv712, ptr %tif_rawcc709, align 8
  %520 = load ptr, ptr %cp, align 8
  %521 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp713 = getelementptr inbounds %struct.tiff, ptr %521, i32 0, i32 42
  store ptr %520, ptr %tif_rawcp713, align 8
  br label %do.end714

do.end714:                                        ; preds = %do.body701
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end714, %do.end699
  %522 = load i32, ptr %retval, align 4
  ret i32 %522
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @Fax4Encode(ptr noundef %tif, ptr noundef %bp, i32 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load i16, ptr %s.addr, align 2
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %entry
  %3 = load i32, ptr %cc.addr, align 4
  %conv = sext i32 %3 to i64
  %cmp = icmp sgt i64 %conv, 0
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
  %9 = load i32, ptr %rowpixels, align 8
  %call = call i32 @Fax3Encode2DRow(ptr noundef %4, ptr noundef %5, ptr noundef %7, i32 noundef %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %10 = load ptr, ptr %sp, align 8
  %refline2 = getelementptr inbounds %struct.Fax3EncodeState, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %refline2, align 8
  %12 = load ptr, ptr %bp.addr, align 8
  %13 = load ptr, ptr %sp, align 8
  %b3 = getelementptr inbounds %struct.Fax3EncodeState, ptr %13, i32 0, i32 0
  %rowbytes = getelementptr inbounds %struct.Fax3BaseState, ptr %b3, i32 0, i32 1
  %14 = load i32, ptr %rowbytes, align 4
  call void @_TIFFmemcpy(ptr noundef %11, ptr noundef %12, i32 noundef %14)
  %15 = load ptr, ptr %sp, align 8
  %b4 = getelementptr inbounds %struct.Fax3EncodeState, ptr %15, i32 0, i32 0
  %rowbytes5 = getelementptr inbounds %struct.Fax3BaseState, ptr %b4, i32 0, i32 1
  %16 = load i32, ptr %rowbytes5, align 4
  %17 = load ptr, ptr %bp.addr, align 8
  %idx.ext = zext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 %idx.ext
  store ptr %add.ptr, ptr %bp.addr, align 8
  %18 = load ptr, ptr %sp, align 8
  %b6 = getelementptr inbounds %struct.Fax3EncodeState, ptr %18, i32 0, i32 0
  %rowbytes7 = getelementptr inbounds %struct.Fax3BaseState, ptr %b6, i32 0, i32 1
  %19 = load i32, ptr %rowbytes7, align 4
  %20 = load i32, ptr %cc.addr, align 4
  %sub = sub i32 %20, %19
  store i32 %sub, ptr %cc.addr, align 4
  %21 = load i32, ptr %cc.addr, align 4
  %cmp8 = icmp ne i32 %21, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %22 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %22, i32 0, i32 11
  %23 = load i32, ptr %tif_row, align 8
  %inc = add i32 %23, 1
  store i32 %inc, ptr %tif_row, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %7 = load i32, ptr %tif_rawcc, align 8
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 41
  %9 = load i32, ptr %tif_rawdatasize, align 8
  %cmp1 = icmp sge i32 %7, %9
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
  %16 = load i32, ptr %tif_rawcc3, align 8
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %tif_rawcc3, align 8
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

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %call1 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %4, i32 noundef 65536, i32 noundef 7)
  store i32 %call1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @Fax3DecodeRLE(ptr noundef %tif, ptr noundef %buf, i32 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %occ.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
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
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load ptr, ptr %sp, align 8
  %b = getelementptr inbounds %struct.Fax3DecodeState, ptr %2, i32 0, i32 0
  %rowpixels = getelementptr inbounds %struct.Fax3BaseState, ptr %b, i32 0, i32 2
  %3 = load i32, ptr %rowpixels, align 8
  store i32 %3, ptr %lastx, align 4
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
  %10 = load i32, ptr %data, align 8
  store i32 %10, ptr %BitAcc, align 4
  %11 = load ptr, ptr %sp, align 8
  %bit = getelementptr inbounds %struct.Fax3DecodeState, ptr %11, i32 0, i32 3
  %12 = load i32, ptr %bit, align 4
  store i32 %12, ptr %BitsAvail, align 4
  %13 = load ptr, ptr %sp, align 8
  %EOLcnt4 = getelementptr inbounds %struct.Fax3DecodeState, ptr %13, i32 0, i32 4
  %14 = load i32, ptr %EOLcnt4, align 8
  store i32 %14, ptr %EOLcnt, align 4
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %15, i32 0, i32 42
  %16 = load ptr, ptr %tif_rawcp, align 8
  store ptr %16, ptr %cp, align 8
  %17 = load ptr, ptr %cp, align 8
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 43
  %19 = load i32, ptr %tif_rawcc, align 8
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 %idx.ext
  store ptr %add.ptr, ptr %ep, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  %20 = load ptr, ptr %sp, align 8
  %curruns = getelementptr inbounds %struct.Fax3DecodeState, ptr %20, i32 0, i32 8
  %21 = load ptr, ptr %curruns, align 8
  store ptr %21, ptr %thisrun, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end305, %do.end
  %22 = load i32, ptr %occ.addr, align 4
  %conv = sext i32 %22 to i64
  %cmp = icmp sgt i64 %conv, 0
  br i1 %cmp, label %while.body, label %while.end321

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %23 = load ptr, ptr %thisrun, align 8
  store ptr %23, ptr %pa, align 8
  br label %do.body6

do.body6:                                         ; preds = %while.body
  br label %for.cond

for.cond:                                         ; preds = %if.end136, %do.body6
  br label %for.cond7

for.cond7:                                        ; preds = %sw.epilog, %for.cond
  br label %do.body8

do.body8:                                         ; preds = %for.cond7
  br label %do.body9

do.body9:                                         ; preds = %do.body8
  %24 = load i32, ptr %BitsAvail, align 4
  %cmp10 = icmp slt i32 %24, 12
  br i1 %cmp10, label %if.then, label %if.end36

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
  br label %if.end35

if.else:                                          ; preds = %if.then
  %28 = load ptr, ptr %bitmap, align 8
  %29 = load ptr, ptr %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %29, i32 1
  store ptr %incdec.ptr, ptr %cp, align 8
  %30 = load i8, ptr %29, align 1
  %idxprom = zext i8 %30 to i64
  %arrayidx = getelementptr inbounds i8, ptr %28, i64 %idxprom
  %31 = load i8, ptr %arrayidx, align 1
  %conv18 = zext i8 %31 to i32
  %32 = load i32, ptr %BitsAvail, align 4
  %shl = shl i32 %conv18, %32
  %33 = load i32, ptr %BitAcc, align 4
  %or = or i32 %33, %shl
  store i32 %or, ptr %BitAcc, align 4
  %34 = load i32, ptr %BitsAvail, align 4
  %add = add nsw i32 %34, 8
  store i32 %add, ptr %BitsAvail, align 4
  %cmp19 = icmp slt i32 %add, 12
  br i1 %cmp19, label %if.then21, label %if.end34

if.then21:                                        ; preds = %if.else
  %35 = load ptr, ptr %cp, align 8
  %36 = load ptr, ptr %ep, align 8
  %cmp22 = icmp uge ptr %35, %36
  br i1 %cmp22, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.then21
  store i32 12, ptr %BitsAvail, align 4
  br label %if.end33

if.else25:                                        ; preds = %if.then21
  %37 = load ptr, ptr %bitmap, align 8
  %38 = load ptr, ptr %cp, align 8
  %incdec.ptr26 = getelementptr inbounds i8, ptr %38, i32 1
  store ptr %incdec.ptr26, ptr %cp, align 8
  %39 = load i8, ptr %38, align 1
  %idxprom27 = zext i8 %39 to i64
  %arrayidx28 = getelementptr inbounds i8, ptr %37, i64 %idxprom27
  %40 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %40 to i32
  %41 = load i32, ptr %BitsAvail, align 4
  %shl30 = shl i32 %conv29, %41
  %42 = load i32, ptr %BitAcc, align 4
  %or31 = or i32 %42, %shl30
  store i32 %or31, ptr %BitAcc, align 4
  %43 = load i32, ptr %BitsAvail, align 4
  %add32 = add nsw i32 %43, 8
  store i32 %add32, ptr %BitsAvail, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else25, %if.then24
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.else
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %do.body9
  br label %do.end37

do.end37:                                         ; preds = %if.end36
  %44 = load i32, ptr %BitAcc, align 4
  %and = and i32 %44, 4095
  %idx.ext38 = zext i32 %and to i64
  %add.ptr39 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %idx.ext38
  store ptr %add.ptr39, ptr %TabEnt, align 8
  br label %do.body40

do.body40:                                        ; preds = %do.end37
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
  %50 = load i32, ptr %BitAcc, align 4
  %shr = lshr i32 %50, %conv43
  store i32 %shr, ptr %BitAcc, align 4
  br label %do.end44

do.end44:                                         ; preds = %do.body40
  br label %do.end45

do.end45:                                         ; preds = %do.end44
  %51 = load ptr, ptr %TabEnt, align 8
  %State = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %51, i32 0, i32 0
  %52 = load i8, ptr %State, align 4
  %conv46 = zext i8 %52 to i32
  switch i32 %conv46, label %sw.default [
    i32 12, label %sw.bb
    i32 7, label %sw.bb47
    i32 9, label %sw.bb54
    i32 11, label %sw.bb54
  ]

sw.bb:                                            ; preds = %do.end45
  store i32 1, ptr %EOLcnt, align 4
  br label %done1d

sw.bb47:                                          ; preds = %do.end45
  br label %do.body48

do.body48:                                        ; preds = %sw.bb47
  %53 = load i32, ptr %RunLength, align 4
  %54 = load ptr, ptr %TabEnt, align 8
  %Param = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %54, i32 0, i32 2
  %55 = load i32, ptr %Param, align 4
  %add49 = add i32 %53, %55
  %56 = load ptr, ptr %pa, align 8
  %incdec.ptr50 = getelementptr inbounds i32, ptr %56, i32 1
  store ptr %incdec.ptr50, ptr %pa, align 8
  store i32 %add49, ptr %56, align 4
  %57 = load ptr, ptr %TabEnt, align 8
  %Param51 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %57, i32 0, i32 2
  %58 = load i32, ptr %Param51, align 4
  %59 = load i32, ptr %a0, align 4
  %add52 = add i32 %59, %58
  store i32 %add52, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end53

do.end53:                                         ; preds = %do.body48
  br label %doneWhite1d

sw.bb54:                                          ; preds = %do.end45, %do.end45
  %60 = load ptr, ptr %TabEnt, align 8
  %Param55 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %60, i32 0, i32 2
  %61 = load i32, ptr %Param55, align 4
  %62 = load i32, ptr %a0, align 4
  %add56 = add i32 %62, %61
  store i32 %add56, ptr %a0, align 4
  %63 = load ptr, ptr %TabEnt, align 8
  %Param57 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %63, i32 0, i32 2
  %64 = load i32, ptr %Param57, align 4
  %65 = load i32, ptr %RunLength, align 4
  %add58 = add i32 %65, %64
  store i32 %add58, ptr %RunLength, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end45
  %66 = load ptr, ptr %tif.addr, align 8
  %67 = load i32, ptr %a0, align 4
  call void @Fax3Unexpected(ptr noundef @Fax3DecodeRLE.module, ptr noundef %66, i32 noundef %67)
  br label %done1d

sw.epilog:                                        ; preds = %sw.bb54
  br label %for.cond7

doneWhite1d:                                      ; preds = %do.end53
  %68 = load i32, ptr %a0, align 4
  %69 = load i32, ptr %lastx, align 4
  %cmp59 = icmp sge i32 %68, %69
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %doneWhite1d
  br label %done1d

if.end62:                                         ; preds = %doneWhite1d
  br label %for.cond63

for.cond63:                                       ; preds = %sw.epilog132, %if.end62
  br label %do.body64

do.body64:                                        ; preds = %for.cond63
  br label %do.body65

do.body65:                                        ; preds = %do.body64
  %70 = load i32, ptr %BitsAvail, align 4
  %cmp66 = icmp slt i32 %70, 13
  br i1 %cmp66, label %if.then68, label %if.end101

if.then68:                                        ; preds = %do.body65
  %71 = load ptr, ptr %cp, align 8
  %72 = load ptr, ptr %ep, align 8
  %cmp69 = icmp uge ptr %71, %72
  br i1 %cmp69, label %if.then71, label %if.else76

if.then71:                                        ; preds = %if.then68
  %73 = load i32, ptr %BitsAvail, align 4
  %cmp72 = icmp eq i32 %73, 0
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.then71
  br label %eof1d

if.end75:                                         ; preds = %if.then71
  store i32 13, ptr %BitsAvail, align 4
  br label %if.end100

if.else76:                                        ; preds = %if.then68
  %74 = load ptr, ptr %bitmap, align 8
  %75 = load ptr, ptr %cp, align 8
  %incdec.ptr77 = getelementptr inbounds i8, ptr %75, i32 1
  store ptr %incdec.ptr77, ptr %cp, align 8
  %76 = load i8, ptr %75, align 1
  %idxprom78 = zext i8 %76 to i64
  %arrayidx79 = getelementptr inbounds i8, ptr %74, i64 %idxprom78
  %77 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %77 to i32
  %78 = load i32, ptr %BitsAvail, align 4
  %shl81 = shl i32 %conv80, %78
  %79 = load i32, ptr %BitAcc, align 4
  %or82 = or i32 %79, %shl81
  store i32 %or82, ptr %BitAcc, align 4
  %80 = load i32, ptr %BitsAvail, align 4
  %add83 = add nsw i32 %80, 8
  store i32 %add83, ptr %BitsAvail, align 4
  %cmp84 = icmp slt i32 %add83, 13
  br i1 %cmp84, label %if.then86, label %if.end99

if.then86:                                        ; preds = %if.else76
  %81 = load ptr, ptr %cp, align 8
  %82 = load ptr, ptr %ep, align 8
  %cmp87 = icmp uge ptr %81, %82
  br i1 %cmp87, label %if.then89, label %if.else90

if.then89:                                        ; preds = %if.then86
  store i32 13, ptr %BitsAvail, align 4
  br label %if.end98

if.else90:                                        ; preds = %if.then86
  %83 = load ptr, ptr %bitmap, align 8
  %84 = load ptr, ptr %cp, align 8
  %incdec.ptr91 = getelementptr inbounds i8, ptr %84, i32 1
  store ptr %incdec.ptr91, ptr %cp, align 8
  %85 = load i8, ptr %84, align 1
  %idxprom92 = zext i8 %85 to i64
  %arrayidx93 = getelementptr inbounds i8, ptr %83, i64 %idxprom92
  %86 = load i8, ptr %arrayidx93, align 1
  %conv94 = zext i8 %86 to i32
  %87 = load i32, ptr %BitsAvail, align 4
  %shl95 = shl i32 %conv94, %87
  %88 = load i32, ptr %BitAcc, align 4
  %or96 = or i32 %88, %shl95
  store i32 %or96, ptr %BitAcc, align 4
  %89 = load i32, ptr %BitsAvail, align 4
  %add97 = add nsw i32 %89, 8
  store i32 %add97, ptr %BitsAvail, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.else90, %if.then89
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.else76
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.end75
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %do.body65
  br label %do.end102

do.end102:                                        ; preds = %if.end101
  %90 = load i32, ptr %BitAcc, align 4
  %and103 = and i32 %90, 8191
  %idx.ext104 = zext i32 %and103 to i64
  %add.ptr105 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %idx.ext104
  store ptr %add.ptr105, ptr %TabEnt, align 8
  br label %do.body106

do.body106:                                       ; preds = %do.end102
  %91 = load ptr, ptr %TabEnt, align 8
  %Width107 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %91, i32 0, i32 1
  %92 = load i8, ptr %Width107, align 1
  %conv108 = zext i8 %92 to i32
  %93 = load i32, ptr %BitsAvail, align 4
  %sub109 = sub nsw i32 %93, %conv108
  store i32 %sub109, ptr %BitsAvail, align 4
  %94 = load ptr, ptr %TabEnt, align 8
  %Width110 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %94, i32 0, i32 1
  %95 = load i8, ptr %Width110, align 1
  %conv111 = zext i8 %95 to i32
  %96 = load i32, ptr %BitAcc, align 4
  %shr112 = lshr i32 %96, %conv111
  store i32 %shr112, ptr %BitAcc, align 4
  br label %do.end113

do.end113:                                        ; preds = %do.body106
  br label %do.end114

do.end114:                                        ; preds = %do.end113
  %97 = load ptr, ptr %TabEnt, align 8
  %State115 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %97, i32 0, i32 0
  %98 = load i8, ptr %State115, align 4
  %conv116 = zext i8 %98 to i32
  switch i32 %conv116, label %sw.default131 [
    i32 12, label %sw.bb117
    i32 8, label %sw.bb118
    i32 10, label %sw.bb126
    i32 11, label %sw.bb126
  ]

sw.bb117:                                         ; preds = %do.end114
  store i32 1, ptr %EOLcnt, align 4
  br label %done1d

sw.bb118:                                         ; preds = %do.end114
  br label %do.body119

do.body119:                                       ; preds = %sw.bb118
  %99 = load i32, ptr %RunLength, align 4
  %100 = load ptr, ptr %TabEnt, align 8
  %Param120 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %100, i32 0, i32 2
  %101 = load i32, ptr %Param120, align 4
  %add121 = add i32 %99, %101
  %102 = load ptr, ptr %pa, align 8
  %incdec.ptr122 = getelementptr inbounds i32, ptr %102, i32 1
  store ptr %incdec.ptr122, ptr %pa, align 8
  store i32 %add121, ptr %102, align 4
  %103 = load ptr, ptr %TabEnt, align 8
  %Param123 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %103, i32 0, i32 2
  %104 = load i32, ptr %Param123, align 4
  %105 = load i32, ptr %a0, align 4
  %add124 = add i32 %105, %104
  store i32 %add124, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end125

do.end125:                                        ; preds = %do.body119
  br label %doneBlack1d

sw.bb126:                                         ; preds = %do.end114, %do.end114
  %106 = load ptr, ptr %TabEnt, align 8
  %Param127 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %106, i32 0, i32 2
  %107 = load i32, ptr %Param127, align 4
  %108 = load i32, ptr %a0, align 4
  %add128 = add i32 %108, %107
  store i32 %add128, ptr %a0, align 4
  %109 = load ptr, ptr %TabEnt, align 8
  %Param129 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %109, i32 0, i32 2
  %110 = load i32, ptr %Param129, align 4
  %111 = load i32, ptr %RunLength, align 4
  %add130 = add i32 %111, %110
  store i32 %add130, ptr %RunLength, align 4
  br label %sw.epilog132

sw.default131:                                    ; preds = %do.end114
  %112 = load ptr, ptr %tif.addr, align 8
  %113 = load i32, ptr %a0, align 4
  call void @Fax3Unexpected(ptr noundef @Fax3DecodeRLE.module, ptr noundef %112, i32 noundef %113)
  br label %done1d

sw.epilog132:                                     ; preds = %sw.bb126
  br label %for.cond63

doneBlack1d:                                      ; preds = %do.end125
  %114 = load i32, ptr %a0, align 4
  %115 = load i32, ptr %lastx, align 4
  %cmp133 = icmp sge i32 %114, %115
  br i1 %cmp133, label %if.then135, label %if.end136

if.then135:                                       ; preds = %doneBlack1d
  br label %done1d

if.end136:                                        ; preds = %doneBlack1d
  br label %for.cond

eof1d:                                            ; preds = %if.then74, %if.then17
  %116 = load ptr, ptr %tif.addr, align 8
  %117 = load i32, ptr %a0, align 4
  call void @Fax3PrematureEOF(ptr noundef @Fax3DecodeRLE.module, ptr noundef %116, i32 noundef %117)
  br label %do.body137

do.body137:                                       ; preds = %eof1d
  %118 = load i32, ptr %RunLength, align 4
  %tobool = icmp ne i32 %118, 0
  br i1 %tobool, label %if.then138, label %if.end144

if.then138:                                       ; preds = %do.body137
  br label %do.body139

do.body139:                                       ; preds = %if.then138
  %119 = load i32, ptr %RunLength, align 4
  %add140 = add nsw i32 %119, 0
  %120 = load ptr, ptr %pa, align 8
  %incdec.ptr141 = getelementptr inbounds i32, ptr %120, i32 1
  store ptr %incdec.ptr141, ptr %pa, align 8
  store i32 %add140, ptr %120, align 4
  %121 = load i32, ptr %a0, align 4
  %add142 = add nsw i32 %121, 0
  store i32 %add142, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end143

do.end143:                                        ; preds = %do.body139
  br label %if.end144

if.end144:                                        ; preds = %do.end143, %do.body137
  %122 = load i32, ptr %a0, align 4
  %123 = load i32, ptr %lastx, align 4
  %cmp145 = icmp ne i32 %122, %123
  br i1 %cmp145, label %if.then147, label %if.end195

if.then147:                                       ; preds = %if.end144
  %124 = load ptr, ptr %tif.addr, align 8
  %125 = load i32, ptr %a0, align 4
  %126 = load i32, ptr %lastx, align 4
  call void @Fax3BadLength(ptr noundef @Fax3DecodeRLE.module, ptr noundef %124, i32 noundef %125, i32 noundef %126)
  br label %while.cond148

while.cond148:                                    ; preds = %while.body153, %if.then147
  %127 = load i32, ptr %a0, align 4
  %128 = load i32, ptr %lastx, align 4
  %cmp149 = icmp sgt i32 %127, %128
  br i1 %cmp149, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond148
  %129 = load ptr, ptr %pa, align 8
  %130 = load ptr, ptr %thisrun, align 8
  %cmp151 = icmp ugt ptr %129, %130
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond148
  %131 = phi i1 [ false, %while.cond148 ], [ %cmp151, %land.rhs ]
  br i1 %131, label %while.body153, label %while.end

while.body153:                                    ; preds = %land.end
  %132 = load ptr, ptr %pa, align 8
  %incdec.ptr154 = getelementptr inbounds i32, ptr %132, i32 -1
  store ptr %incdec.ptr154, ptr %pa, align 8
  %133 = load i32, ptr %incdec.ptr154, align 4
  %134 = load i32, ptr %a0, align 4
  %sub155 = sub i32 %134, %133
  store i32 %sub155, ptr %a0, align 4
  br label %while.cond148, !llvm.loop !22

while.end:                                        ; preds = %land.end
  %135 = load i32, ptr %a0, align 4
  %136 = load i32, ptr %lastx, align 4
  %cmp156 = icmp slt i32 %135, %136
  br i1 %cmp156, label %if.then158, label %if.else179

if.then158:                                       ; preds = %while.end
  %137 = load i32, ptr %a0, align 4
  %cmp159 = icmp slt i32 %137, 0
  br i1 %cmp159, label %if.then161, label %if.end162

if.then161:                                       ; preds = %if.then158
  store i32 0, ptr %a0, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.then161, %if.then158
  %138 = load ptr, ptr %pa, align 8
  %139 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %138 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %139 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %and163 = and i64 %sub.ptr.div, 1
  %tobool164 = icmp ne i64 %and163, 0
  br i1 %tobool164, label %if.then165, label %if.end171

if.then165:                                       ; preds = %if.end162
  br label %do.body166

do.body166:                                       ; preds = %if.then165
  %140 = load i32, ptr %RunLength, align 4
  %add167 = add nsw i32 %140, 0
  %141 = load ptr, ptr %pa, align 8
  %incdec.ptr168 = getelementptr inbounds i32, ptr %141, i32 1
  store ptr %incdec.ptr168, ptr %pa, align 8
  store i32 %add167, ptr %141, align 4
  %142 = load i32, ptr %a0, align 4
  %add169 = add nsw i32 %142, 0
  store i32 %add169, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end170

do.end170:                                        ; preds = %do.body166
  br label %if.end171

if.end171:                                        ; preds = %do.end170, %if.end162
  br label %do.body172

do.body172:                                       ; preds = %if.end171
  %143 = load i32, ptr %RunLength, align 4
  %144 = load i32, ptr %lastx, align 4
  %145 = load i32, ptr %a0, align 4
  %sub173 = sub nsw i32 %144, %145
  %add174 = add nsw i32 %143, %sub173
  %146 = load ptr, ptr %pa, align 8
  %incdec.ptr175 = getelementptr inbounds i32, ptr %146, i32 1
  store ptr %incdec.ptr175, ptr %pa, align 8
  store i32 %add174, ptr %146, align 4
  %147 = load i32, ptr %lastx, align 4
  %148 = load i32, ptr %a0, align 4
  %sub176 = sub nsw i32 %147, %148
  %149 = load i32, ptr %a0, align 4
  %add177 = add nsw i32 %149, %sub176
  store i32 %add177, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end178

do.end178:                                        ; preds = %do.body172
  br label %if.end194

if.else179:                                       ; preds = %while.end
  %150 = load i32, ptr %a0, align 4
  %151 = load i32, ptr %lastx, align 4
  %cmp180 = icmp sgt i32 %150, %151
  br i1 %cmp180, label %if.then182, label %if.end193

if.then182:                                       ; preds = %if.else179
  br label %do.body183

do.body183:                                       ; preds = %if.then182
  %152 = load i32, ptr %RunLength, align 4
  %153 = load i32, ptr %lastx, align 4
  %add184 = add nsw i32 %152, %153
  %154 = load ptr, ptr %pa, align 8
  %incdec.ptr185 = getelementptr inbounds i32, ptr %154, i32 1
  store ptr %incdec.ptr185, ptr %pa, align 8
  store i32 %add184, ptr %154, align 4
  %155 = load i32, ptr %lastx, align 4
  %156 = load i32, ptr %a0, align 4
  %add186 = add nsw i32 %156, %155
  store i32 %add186, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end187

do.end187:                                        ; preds = %do.body183
  br label %do.body188

do.body188:                                       ; preds = %do.end187
  %157 = load i32, ptr %RunLength, align 4
  %add189 = add nsw i32 %157, 0
  %158 = load ptr, ptr %pa, align 8
  %incdec.ptr190 = getelementptr inbounds i32, ptr %158, i32 1
  store ptr %incdec.ptr190, ptr %pa, align 8
  store i32 %add189, ptr %158, align 4
  %159 = load i32, ptr %a0, align 4
  %add191 = add nsw i32 %159, 0
  store i32 %add191, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end192

do.end192:                                        ; preds = %do.body188
  br label %if.end193

if.end193:                                        ; preds = %do.end192, %if.else179
  br label %if.end194

if.end194:                                        ; preds = %if.end193, %do.end178
  br label %if.end195

if.end195:                                        ; preds = %if.end194, %if.end144
  br label %do.end196

do.end196:                                        ; preds = %if.end195
  br label %EOFRLE

done1d:                                           ; preds = %if.then135, %sw.default131, %sw.bb117, %if.then61, %sw.default, %sw.bb
  br label %do.body197

do.body197:                                       ; preds = %done1d
  %160 = load i32, ptr %RunLength, align 4
  %tobool198 = icmp ne i32 %160, 0
  br i1 %tobool198, label %if.then199, label %if.end205

if.then199:                                       ; preds = %do.body197
  br label %do.body200

do.body200:                                       ; preds = %if.then199
  %161 = load i32, ptr %RunLength, align 4
  %add201 = add nsw i32 %161, 0
  %162 = load ptr, ptr %pa, align 8
  %incdec.ptr202 = getelementptr inbounds i32, ptr %162, i32 1
  store ptr %incdec.ptr202, ptr %pa, align 8
  store i32 %add201, ptr %162, align 4
  %163 = load i32, ptr %a0, align 4
  %add203 = add nsw i32 %163, 0
  store i32 %add203, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end204

do.end204:                                        ; preds = %do.body200
  br label %if.end205

if.end205:                                        ; preds = %do.end204, %do.body197
  %164 = load i32, ptr %a0, align 4
  %165 = load i32, ptr %lastx, align 4
  %cmp206 = icmp ne i32 %164, %165
  br i1 %cmp206, label %if.then208, label %if.end263

if.then208:                                       ; preds = %if.end205
  %166 = load ptr, ptr %tif.addr, align 8
  %167 = load i32, ptr %a0, align 4
  %168 = load i32, ptr %lastx, align 4
  call void @Fax3BadLength(ptr noundef @Fax3DecodeRLE.module, ptr noundef %166, i32 noundef %167, i32 noundef %168)
  br label %while.cond209

while.cond209:                                    ; preds = %while.body216, %if.then208
  %169 = load i32, ptr %a0, align 4
  %170 = load i32, ptr %lastx, align 4
  %cmp210 = icmp sgt i32 %169, %170
  br i1 %cmp210, label %land.rhs212, label %land.end215

land.rhs212:                                      ; preds = %while.cond209
  %171 = load ptr, ptr %pa, align 8
  %172 = load ptr, ptr %thisrun, align 8
  %cmp213 = icmp ugt ptr %171, %172
  br label %land.end215

land.end215:                                      ; preds = %land.rhs212, %while.cond209
  %173 = phi i1 [ false, %while.cond209 ], [ %cmp213, %land.rhs212 ]
  br i1 %173, label %while.body216, label %while.end219

while.body216:                                    ; preds = %land.end215
  %174 = load ptr, ptr %pa, align 8
  %incdec.ptr217 = getelementptr inbounds i32, ptr %174, i32 -1
  store ptr %incdec.ptr217, ptr %pa, align 8
  %175 = load i32, ptr %incdec.ptr217, align 4
  %176 = load i32, ptr %a0, align 4
  %sub218 = sub i32 %176, %175
  store i32 %sub218, ptr %a0, align 4
  br label %while.cond209, !llvm.loop !23

while.end219:                                     ; preds = %land.end215
  %177 = load i32, ptr %a0, align 4
  %178 = load i32, ptr %lastx, align 4
  %cmp220 = icmp slt i32 %177, %178
  br i1 %cmp220, label %if.then222, label %if.else247

if.then222:                                       ; preds = %while.end219
  %179 = load i32, ptr %a0, align 4
  %cmp223 = icmp slt i32 %179, 0
  br i1 %cmp223, label %if.then225, label %if.end226

if.then225:                                       ; preds = %if.then222
  store i32 0, ptr %a0, align 4
  br label %if.end226

if.end226:                                        ; preds = %if.then225, %if.then222
  %180 = load ptr, ptr %pa, align 8
  %181 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast227 = ptrtoint ptr %180 to i64
  %sub.ptr.rhs.cast228 = ptrtoint ptr %181 to i64
  %sub.ptr.sub229 = sub i64 %sub.ptr.lhs.cast227, %sub.ptr.rhs.cast228
  %sub.ptr.div230 = sdiv exact i64 %sub.ptr.sub229, 4
  %and231 = and i64 %sub.ptr.div230, 1
  %tobool232 = icmp ne i64 %and231, 0
  br i1 %tobool232, label %if.then233, label %if.end239

if.then233:                                       ; preds = %if.end226
  br label %do.body234

do.body234:                                       ; preds = %if.then233
  %182 = load i32, ptr %RunLength, align 4
  %add235 = add nsw i32 %182, 0
  %183 = load ptr, ptr %pa, align 8
  %incdec.ptr236 = getelementptr inbounds i32, ptr %183, i32 1
  store ptr %incdec.ptr236, ptr %pa, align 8
  store i32 %add235, ptr %183, align 4
  %184 = load i32, ptr %a0, align 4
  %add237 = add nsw i32 %184, 0
  store i32 %add237, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end238

do.end238:                                        ; preds = %do.body234
  br label %if.end239

if.end239:                                        ; preds = %do.end238, %if.end226
  br label %do.body240

do.body240:                                       ; preds = %if.end239
  %185 = load i32, ptr %RunLength, align 4
  %186 = load i32, ptr %lastx, align 4
  %187 = load i32, ptr %a0, align 4
  %sub241 = sub nsw i32 %186, %187
  %add242 = add nsw i32 %185, %sub241
  %188 = load ptr, ptr %pa, align 8
  %incdec.ptr243 = getelementptr inbounds i32, ptr %188, i32 1
  store ptr %incdec.ptr243, ptr %pa, align 8
  store i32 %add242, ptr %188, align 4
  %189 = load i32, ptr %lastx, align 4
  %190 = load i32, ptr %a0, align 4
  %sub244 = sub nsw i32 %189, %190
  %191 = load i32, ptr %a0, align 4
  %add245 = add nsw i32 %191, %sub244
  store i32 %add245, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end246

do.end246:                                        ; preds = %do.body240
  br label %if.end262

if.else247:                                       ; preds = %while.end219
  %192 = load i32, ptr %a0, align 4
  %193 = load i32, ptr %lastx, align 4
  %cmp248 = icmp sgt i32 %192, %193
  br i1 %cmp248, label %if.then250, label %if.end261

if.then250:                                       ; preds = %if.else247
  br label %do.body251

do.body251:                                       ; preds = %if.then250
  %194 = load i32, ptr %RunLength, align 4
  %195 = load i32, ptr %lastx, align 4
  %add252 = add nsw i32 %194, %195
  %196 = load ptr, ptr %pa, align 8
  %incdec.ptr253 = getelementptr inbounds i32, ptr %196, i32 1
  store ptr %incdec.ptr253, ptr %pa, align 8
  store i32 %add252, ptr %196, align 4
  %197 = load i32, ptr %lastx, align 4
  %198 = load i32, ptr %a0, align 4
  %add254 = add nsw i32 %198, %197
  store i32 %add254, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end255

do.end255:                                        ; preds = %do.body251
  br label %do.body256

do.body256:                                       ; preds = %do.end255
  %199 = load i32, ptr %RunLength, align 4
  %add257 = add nsw i32 %199, 0
  %200 = load ptr, ptr %pa, align 8
  %incdec.ptr258 = getelementptr inbounds i32, ptr %200, i32 1
  store ptr %incdec.ptr258, ptr %pa, align 8
  store i32 %add257, ptr %200, align 4
  %201 = load i32, ptr %a0, align 4
  %add259 = add nsw i32 %201, 0
  store i32 %add259, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end260

do.end260:                                        ; preds = %do.body256
  br label %if.end261

if.end261:                                        ; preds = %do.end260, %if.else247
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %do.end246
  br label %if.end263

if.end263:                                        ; preds = %if.end262, %if.end205
  br label %do.end264

do.end264:                                        ; preds = %if.end263
  br label %do.end265

do.end265:                                        ; preds = %do.end264
  %202 = load ptr, ptr %sp, align 8
  %fill = getelementptr inbounds %struct.Fax3DecodeState, ptr %202, i32 0, i32 5
  %203 = load ptr, ptr %fill, align 8
  %204 = load ptr, ptr %buf.addr, align 8
  %205 = load ptr, ptr %thisrun, align 8
  %206 = load ptr, ptr %pa, align 8
  %207 = load i32, ptr %lastx, align 4
  call void %203(ptr noundef %204, ptr noundef %205, ptr noundef %206, i32 noundef %207)
  %208 = load i32, ptr %mode, align 4
  %and266 = and i32 %208, 4
  %tobool267 = icmp ne i32 %and266, 0
  br i1 %tobool267, label %if.then268, label %if.else275

if.then268:                                       ; preds = %do.end265
  %209 = load i32, ptr %BitsAvail, align 4
  %210 = load i32, ptr %BitsAvail, align 4
  %and269 = and i32 %210, -8
  %sub270 = sub nsw i32 %209, %and269
  store i32 %sub270, ptr %n, align 4
  br label %do.body271

do.body271:                                       ; preds = %if.then268
  %211 = load i32, ptr %n, align 4
  %212 = load i32, ptr %BitsAvail, align 4
  %sub272 = sub nsw i32 %212, %211
  store i32 %sub272, ptr %BitsAvail, align 4
  %213 = load i32, ptr %n, align 4
  %214 = load i32, ptr %BitAcc, align 4
  %shr273 = lshr i32 %214, %213
  store i32 %shr273, ptr %BitAcc, align 4
  br label %do.end274

do.end274:                                        ; preds = %do.body271
  br label %if.end295

if.else275:                                       ; preds = %do.end265
  %215 = load i32, ptr %mode, align 4
  %and276 = and i32 %215, 8
  %tobool277 = icmp ne i32 %and276, 0
  br i1 %tobool277, label %if.then278, label %if.end294

if.then278:                                       ; preds = %if.else275
  %216 = load i32, ptr %BitsAvail, align 4
  %217 = load i32, ptr %BitsAvail, align 4
  %and280 = and i32 %217, -16
  %sub281 = sub nsw i32 %216, %and280
  store i32 %sub281, ptr %n279, align 4
  br label %do.body282

do.body282:                                       ; preds = %if.then278
  %218 = load i32, ptr %n279, align 4
  %219 = load i32, ptr %BitsAvail, align 4
  %sub283 = sub nsw i32 %219, %218
  store i32 %sub283, ptr %BitsAvail, align 4
  %220 = load i32, ptr %n279, align 4
  %221 = load i32, ptr %BitAcc, align 4
  %shr284 = lshr i32 %221, %220
  store i32 %shr284, ptr %BitAcc, align 4
  br label %do.end285

do.end285:                                        ; preds = %do.body282
  %222 = load i32, ptr %BitsAvail, align 4
  %cmp286 = icmp eq i32 %222, 0
  br i1 %cmp286, label %land.lhs.true, label %if.end293

land.lhs.true:                                    ; preds = %do.end285
  %223 = load ptr, ptr %cp, align 8
  %224 = ptrtoint ptr %223 to i64
  %and288 = and i64 %224, 1
  %cmp289 = icmp eq i64 %and288, 0
  br i1 %cmp289, label %if.end293, label %if.then291

if.then291:                                       ; preds = %land.lhs.true
  %225 = load ptr, ptr %cp, align 8
  %incdec.ptr292 = getelementptr inbounds i8, ptr %225, i32 1
  store ptr %incdec.ptr292, ptr %cp, align 8
  br label %if.end293

if.end293:                                        ; preds = %if.then291, %land.lhs.true, %do.end285
  br label %if.end294

if.end294:                                        ; preds = %if.end293, %if.else275
  br label %if.end295

if.end295:                                        ; preds = %if.end294, %do.end274
  %226 = load ptr, ptr %sp, align 8
  %b296 = getelementptr inbounds %struct.Fax3DecodeState, ptr %226, i32 0, i32 0
  %rowbytes = getelementptr inbounds %struct.Fax3BaseState, ptr %b296, i32 0, i32 1
  %227 = load i32, ptr %rowbytes, align 4
  %228 = load ptr, ptr %buf.addr, align 8
  %idx.ext297 = zext i32 %227 to i64
  %add.ptr298 = getelementptr inbounds i8, ptr %228, i64 %idx.ext297
  store ptr %add.ptr298, ptr %buf.addr, align 8
  %229 = load ptr, ptr %sp, align 8
  %b299 = getelementptr inbounds %struct.Fax3DecodeState, ptr %229, i32 0, i32 0
  %rowbytes300 = getelementptr inbounds %struct.Fax3BaseState, ptr %b299, i32 0, i32 1
  %230 = load i32, ptr %rowbytes300, align 4
  %231 = load i32, ptr %occ.addr, align 4
  %sub301 = sub i32 %231, %230
  store i32 %sub301, ptr %occ.addr, align 4
  %232 = load i32, ptr %occ.addr, align 4
  %cmp302 = icmp ne i32 %232, 0
  br i1 %cmp302, label %if.then304, label %if.end305

if.then304:                                       ; preds = %if.end295
  %233 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %233, i32 0, i32 11
  %234 = load i32, ptr %tif_row, align 8
  %inc = add i32 %234, 1
  store i32 %inc, ptr %tif_row, align 8
  br label %if.end305

if.end305:                                        ; preds = %if.then304, %if.end295
  br label %while.cond, !llvm.loop !24

EOFRLE:                                           ; preds = %do.end196
  %235 = load ptr, ptr %sp, align 8
  %fill306 = getelementptr inbounds %struct.Fax3DecodeState, ptr %235, i32 0, i32 5
  %236 = load ptr, ptr %fill306, align 8
  %237 = load ptr, ptr %buf.addr, align 8
  %238 = load ptr, ptr %thisrun, align 8
  %239 = load ptr, ptr %pa, align 8
  %240 = load i32, ptr %lastx, align 4
  call void %236(ptr noundef %237, ptr noundef %238, ptr noundef %239, i32 noundef %240)
  br label %do.body307

do.body307:                                       ; preds = %EOFRLE
  %241 = load i32, ptr %BitsAvail, align 4
  %242 = load ptr, ptr %sp, align 8
  %bit308 = getelementptr inbounds %struct.Fax3DecodeState, ptr %242, i32 0, i32 3
  store i32 %241, ptr %bit308, align 4
  %243 = load i32, ptr %BitAcc, align 4
  %244 = load ptr, ptr %sp, align 8
  %data309 = getelementptr inbounds %struct.Fax3DecodeState, ptr %244, i32 0, i32 2
  store i32 %243, ptr %data309, align 8
  %245 = load i32, ptr %EOLcnt, align 4
  %246 = load ptr, ptr %sp, align 8
  %EOLcnt310 = getelementptr inbounds %struct.Fax3DecodeState, ptr %246, i32 0, i32 4
  store i32 %245, ptr %EOLcnt310, align 8
  %247 = load ptr, ptr %cp, align 8
  %248 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp311 = getelementptr inbounds %struct.tiff, ptr %248, i32 0, i32 42
  %249 = load ptr, ptr %tif_rawcp311, align 8
  %sub.ptr.lhs.cast312 = ptrtoint ptr %247 to i64
  %sub.ptr.rhs.cast313 = ptrtoint ptr %249 to i64
  %sub.ptr.sub314 = sub i64 %sub.ptr.lhs.cast312, %sub.ptr.rhs.cast313
  %250 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc315 = getelementptr inbounds %struct.tiff, ptr %250, i32 0, i32 43
  %251 = load i32, ptr %tif_rawcc315, align 8
  %conv316 = sext i32 %251 to i64
  %sub317 = sub nsw i64 %conv316, %sub.ptr.sub314
  %conv318 = trunc i64 %sub317 to i32
  store i32 %conv318, ptr %tif_rawcc315, align 8
  %252 = load ptr, ptr %cp, align 8
  %253 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp319 = getelementptr inbounds %struct.tiff, ptr %253, i32 0, i32 42
  store ptr %252, ptr %tif_rawcp319, align 8
  br label %do.end320

do.end320:                                        ; preds = %do.body307
  store i32 -1, ptr %retval, align 4
  br label %return

while.end321:                                     ; preds = %while.cond
  br label %do.body322

do.body322:                                       ; preds = %while.end321
  %254 = load i32, ptr %BitsAvail, align 4
  %255 = load ptr, ptr %sp, align 8
  %bit323 = getelementptr inbounds %struct.Fax3DecodeState, ptr %255, i32 0, i32 3
  store i32 %254, ptr %bit323, align 4
  %256 = load i32, ptr %BitAcc, align 4
  %257 = load ptr, ptr %sp, align 8
  %data324 = getelementptr inbounds %struct.Fax3DecodeState, ptr %257, i32 0, i32 2
  store i32 %256, ptr %data324, align 8
  %258 = load i32, ptr %EOLcnt, align 4
  %259 = load ptr, ptr %sp, align 8
  %EOLcnt325 = getelementptr inbounds %struct.Fax3DecodeState, ptr %259, i32 0, i32 4
  store i32 %258, ptr %EOLcnt325, align 8
  %260 = load ptr, ptr %cp, align 8
  %261 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp326 = getelementptr inbounds %struct.tiff, ptr %261, i32 0, i32 42
  %262 = load ptr, ptr %tif_rawcp326, align 8
  %sub.ptr.lhs.cast327 = ptrtoint ptr %260 to i64
  %sub.ptr.rhs.cast328 = ptrtoint ptr %262 to i64
  %sub.ptr.sub329 = sub i64 %sub.ptr.lhs.cast327, %sub.ptr.rhs.cast328
  %263 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc330 = getelementptr inbounds %struct.tiff, ptr %263, i32 0, i32 43
  %264 = load i32, ptr %tif_rawcc330, align 8
  %conv331 = sext i32 %264 to i64
  %sub332 = sub nsw i64 %conv331, %sub.ptr.sub329
  %conv333 = trunc i64 %sub332 to i32
  store i32 %conv333, ptr %tif_rawcc330, align 8
  %265 = load ptr, ptr %cp, align 8
  %266 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp334 = getelementptr inbounds %struct.tiff, ptr %266, i32 0, i32 42
  store ptr %265, ptr %tif_rawcp334, align 8
  br label %do.end335

do.end335:                                        ; preds = %do.body322
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end335, %do.end320
  %267 = load i32, ptr %retval, align 4
  ret i32 %267
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %call1 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %4, i32 noundef 65536, i32 noundef 11)
  store i32 %call1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

declare ptr @_TIFFmalloc(i32 noundef) #2

declare void @TIFFError(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @Fax3VGetField(ptr noundef %tif, i32 noundef %tag, ptr noundef %ap) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
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
  store i32 %tag, ptr %tag.addr, align 4
  store ptr %ap, ptr %ap.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load i32, ptr %tag.addr, align 4
  switch i32 %2, label %sw.default [
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
  %15 = load i32, ptr %groupoptions, align 8
  %16 = va_arg ptr %ap.addr, ptr
  store ptr %16, ptr %varet5, align 8
  %17 = load ptr, ptr %varet5, align 8
  store i32 %15, ptr %17, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %18 = load ptr, ptr %sp, align 8
  %badfaxlines = getelementptr inbounds %struct.Fax3BaseState, ptr %18, i32 0, i32 5
  %19 = load i32, ptr %badfaxlines, align 4
  %20 = va_arg ptr %ap.addr, ptr
  store ptr %20, ptr %varet7, align 8
  %21 = load ptr, ptr %varet7, align 8
  store i32 %19, ptr %21, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %22 = load ptr, ptr %sp, align 8
  %cleanfaxdata = getelementptr inbounds %struct.Fax3BaseState, ptr %22, i32 0, i32 3
  %23 = load i16, ptr %cleanfaxdata, align 4
  %24 = va_arg ptr %ap.addr, ptr
  store ptr %24, ptr %varet9, align 8
  %25 = load ptr, ptr %varet9, align 8
  store i16 %23, ptr %25, align 2
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %26 = load ptr, ptr %sp, align 8
  %badfaxrun = getelementptr inbounds %struct.Fax3BaseState, ptr %26, i32 0, i32 4
  %27 = load i32, ptr %badfaxrun, align 8
  %28 = va_arg ptr %ap.addr, ptr
  store ptr %28, ptr %varet11, align 8
  %29 = load ptr, ptr %varet11, align 8
  store i32 %27, ptr %29, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %30 = load ptr, ptr %sp, align 8
  %recvparams = getelementptr inbounds %struct.Fax3BaseState, ptr %30, i32 0, i32 7
  %31 = load i32, ptr %recvparams, align 4
  %32 = va_arg ptr %ap.addr, ptr
  store ptr %32, ptr %varet13, align 8
  %33 = load ptr, ptr %varet13, align 8
  store i32 %31, ptr %33, align 4
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
  %39 = load i32, ptr %recvtime, align 8
  %40 = va_arg ptr %ap.addr, ptr
  store ptr %40, ptr %varet17, align 8
  %41 = load ptr, ptr %varet17, align 8
  store i32 %39, ptr %41, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %42 = load ptr, ptr %sp, align 8
  %vgetparent = getelementptr inbounds %struct.Fax3BaseState, ptr %42, i32 0, i32 10
  %43 = load ptr, ptr %vgetparent, align 8
  %44 = load ptr, ptr %tif.addr, align 8
  %45 = load i32, ptr %tag.addr, align 4
  %46 = load ptr, ptr %ap.addr, align 8
  %call = call i32 %43(ptr noundef %44, i32 noundef %45, ptr noundef %46)
  store i32 %call, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %if.end, %sw.bb
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %47 = load i32, ptr %retval, align 4
  ret i32 %47
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @Fax3VSetField(ptr noundef %tif, i32 noundef %tag, ptr noundef %ap) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %ap.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %varet = alloca i32, align 4
  %varet2 = alloca ptr, align 8
  %varet5 = alloca i32, align 4
  %varet7 = alloca i32, align 4
  %varet9 = alloca i32, align 4
  %varet11 = alloca i32, align 4
  %varet13 = alloca i32, align 4
  %varet15 = alloca ptr, align 8
  %varet17 = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %tag, ptr %tag.addr, align 4
  store ptr %ap, ptr %ap.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load i32, ptr %tag.addr, align 4
  switch i32 %2, label %sw.default [
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
  %12 = va_arg ptr %ap.addr, i32
  store i32 %12, ptr %varet5, align 4
  %13 = load i32, ptr %varet5, align 4
  %14 = load ptr, ptr %sp, align 8
  %groupoptions = getelementptr inbounds %struct.Fax3BaseState, ptr %14, i32 0, i32 6
  store i32 %13, ptr %groupoptions, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %15 = va_arg ptr %ap.addr, i32
  store i32 %15, ptr %varet7, align 4
  %16 = load i32, ptr %varet7, align 4
  %17 = load ptr, ptr %sp, align 8
  %badfaxlines = getelementptr inbounds %struct.Fax3BaseState, ptr %17, i32 0, i32 5
  store i32 %16, ptr %badfaxlines, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %18 = va_arg ptr %ap.addr, i32
  store i32 %18, ptr %varet9, align 4
  %19 = load i32, ptr %varet9, align 4
  %conv = trunc i32 %19 to i16
  %20 = load ptr, ptr %sp, align 8
  %cleanfaxdata = getelementptr inbounds %struct.Fax3BaseState, ptr %20, i32 0, i32 3
  store i16 %conv, ptr %cleanfaxdata, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %21 = va_arg ptr %ap.addr, i32
  store i32 %21, ptr %varet11, align 4
  %22 = load i32, ptr %varet11, align 4
  %23 = load ptr, ptr %sp, align 8
  %badfaxrun = getelementptr inbounds %struct.Fax3BaseState, ptr %23, i32 0, i32 4
  store i32 %22, ptr %badfaxrun, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %24 = va_arg ptr %ap.addr, i32
  store i32 %24, ptr %varet13, align 4
  %25 = load i32, ptr %varet13, align 4
  %26 = load ptr, ptr %sp, align 8
  %recvparams = getelementptr inbounds %struct.Fax3BaseState, ptr %26, i32 0, i32 7
  store i32 %25, ptr %recvparams, align 4
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
  %30 = va_arg ptr %ap.addr, i32
  store i32 %30, ptr %varet17, align 4
  %31 = load i32, ptr %varet17, align 4
  %32 = load ptr, ptr %sp, align 8
  %recvtime = getelementptr inbounds %struct.Fax3BaseState, ptr %32, i32 0, i32 9
  store i32 %31, ptr %recvtime, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %33 = load ptr, ptr %sp, align 8
  %vsetparent = getelementptr inbounds %struct.Fax3BaseState, ptr %33, i32 0, i32 11
  %34 = load ptr, ptr %vsetparent, align 8
  %35 = load ptr, ptr %tif.addr, align 8
  %36 = load i32, ptr %tag.addr, align 4
  %37 = load ptr, ptr %ap.addr, align 8
  %call = call i32 %34(ptr noundef %35, i32 noundef %36, ptr noundef %37)
  store i32 %call, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4
  %38 = load ptr, ptr %tif.addr, align 8
  %39 = load i32, ptr %tag.addr, align 4
  %call18 = call ptr @_TIFFFieldWithTag(ptr noundef %38, i32 noundef %39)
  %field_bit = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call18, i32 0, i32 4
  %40 = load i16, ptr %field_bit, align 4
  %conv19 = zext i16 %40 to i32
  %and = and i32 %conv19, 31
  %sh_prom = zext i32 %and to i64
  %shl = shl i64 1, %sh_prom
  %41 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %41, i32 0, i32 6
  %td_fieldsset = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir, i32 0, i32 0
  %42 = load ptr, ptr %tif.addr, align 8
  %43 = load i32, ptr %tag.addr, align 4
  %call20 = call ptr @_TIFFFieldWithTag(ptr noundef %42, i32 noundef %43)
  %field_bit21 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call20, i32 0, i32 4
  %44 = load i16, ptr %field_bit21, align 4
  %conv22 = zext i16 %44 to i32
  %div = sdiv i32 %conv22, 32
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds [3 x i64], ptr %td_fieldsset, i64 0, i64 %idxprom
  %45 = load i64, ptr %arrayidx, align 8
  %or = or i64 %45, %shl
  store i64 %or, ptr %arrayidx, align 8
  %46 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %46, i32 0, i32 3
  %47 = load i32, ptr %tif_flags, align 8
  %or23 = or i32 %47, 8
  store i32 %or23, ptr %tif_flags, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.end, %sw.bb
  %48 = load i32, ptr %retval, align 4
  ret i32 %48
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  br i1 %tobool, label %if.then, label %if.end33

if.then:                                          ; preds = %entry
  store ptr @.str.12, ptr %sep, align 8
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_dir1 = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 6
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir1, i32 0, i32 10
  %6 = load i16, ptr %td_compression, align 8
  %conv = zext i16 %6 to i32
  %cmp = icmp eq i32 %conv, 4
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %7 = load ptr, ptr %fd.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.13)
  %8 = load ptr, ptr %sp, align 8
  %groupoptions = getelementptr inbounds %struct.Fax3BaseState, ptr %8, i32 0, i32 6
  %9 = load i32, ptr %groupoptions, align 8
  %and4 = and i32 %9, 2
  %tobool5 = icmp ne i32 %and4, 0
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
  %14 = load i32, ptr %groupoptions9, align 8
  %and10 = and i32 %14, 1
  %tobool11 = icmp ne i32 %and10, 0
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
  %18 = load i32, ptr %groupoptions15, align 8
  %and16 = and i32 %18, 4
  %tobool17 = icmp ne i32 %and16, 0
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
  %22 = load i32, ptr %groupoptions21, align 8
  %and22 = and i32 %22, 2
  %tobool23 = icmp ne i32 %and22, 0
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
  %27 = load i32, ptr %groupoptions28, align 8
  %conv29 = zext i32 %27 to i64
  %28 = load ptr, ptr %sp, align 8
  %groupoptions30 = getelementptr inbounds %struct.Fax3BaseState, ptr %28, i32 0, i32 6
  %29 = load i32, ptr %groupoptions30, align 8
  %conv31 = zext i32 %29 to i64
  %call32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.19, i64 noundef %conv29, i64 noundef %conv31)
  br label %if.end33

if.end33:                                         ; preds = %if.end27, %entry
  %30 = load ptr, ptr %tif.addr, align 8
  %tif_dir34 = getelementptr inbounds %struct.tiff, ptr %30, i32 0, i32 6
  %td_fieldsset35 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir34, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [3 x i64], ptr %td_fieldsset35, i64 0, i64 1
  %31 = load i64, ptr %arrayidx36, align 8
  %and37 = and i64 %31, 2147483648
  %tobool38 = icmp ne i64 %and37, 0
  br i1 %tobool38, label %if.then39, label %if.end52

if.then39:                                        ; preds = %if.end33
  %32 = load ptr, ptr %fd.addr, align 8
  %call40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.20)
  %33 = load ptr, ptr %sp, align 8
  %cleanfaxdata = getelementptr inbounds %struct.Fax3BaseState, ptr %33, i32 0, i32 3
  %34 = load i16, ptr %cleanfaxdata, align 4
  %conv41 = zext i16 %34 to i32
  switch i32 %conv41, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb43
    i32 2, label %sw.bb45
  ]

sw.bb:                                            ; preds = %if.then39
  %35 = load ptr, ptr %fd.addr, align 8
  %call42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.21)
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.then39
  %36 = load ptr, ptr %fd.addr, align 8
  %call44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.22)
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.then39
  %37 = load ptr, ptr %fd.addr, align 8
  %call46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.23)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then39, %sw.bb45, %sw.bb43, %sw.bb
  %38 = load ptr, ptr %fd.addr, align 8
  %39 = load ptr, ptr %sp, align 8
  %cleanfaxdata47 = getelementptr inbounds %struct.Fax3BaseState, ptr %39, i32 0, i32 3
  %40 = load i16, ptr %cleanfaxdata47, align 4
  %conv48 = zext i16 %40 to i32
  %41 = load ptr, ptr %sp, align 8
  %cleanfaxdata49 = getelementptr inbounds %struct.Fax3BaseState, ptr %41, i32 0, i32 3
  %42 = load i16, ptr %cleanfaxdata49, align 4
  %conv50 = zext i16 %42 to i32
  %call51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef @.str.24, i32 noundef %conv48, i32 noundef %conv50)
  br label %if.end52

if.end52:                                         ; preds = %sw.epilog, %if.end33
  %43 = load ptr, ptr %tif.addr, align 8
  %tif_dir53 = getelementptr inbounds %struct.tiff, ptr %43, i32 0, i32 6
  %td_fieldsset54 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir53, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [3 x i64], ptr %td_fieldsset54, i64 0, i64 1
  %44 = load i64, ptr %arrayidx55, align 8
  %and56 = and i64 %44, 1073741824
  %tobool57 = icmp ne i64 %and56, 0
  br i1 %tobool57, label %if.then58, label %if.end61

if.then58:                                        ; preds = %if.end52
  %45 = load ptr, ptr %fd.addr, align 8
  %46 = load ptr, ptr %sp, align 8
  %badfaxlines = getelementptr inbounds %struct.Fax3BaseState, ptr %46, i32 0, i32 5
  %47 = load i32, ptr %badfaxlines, align 4
  %conv59 = zext i32 %47 to i64
  %call60 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef @.str.25, i64 noundef %conv59)
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end52
  %48 = load ptr, ptr %tif.addr, align 8
  %tif_dir62 = getelementptr inbounds %struct.tiff, ptr %48, i32 0, i32 6
  %td_fieldsset63 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir62, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [3 x i64], ptr %td_fieldsset63, i64 0, i64 2
  %49 = load i64, ptr %arrayidx64, align 8
  %and65 = and i64 %49, 1
  %tobool66 = icmp ne i64 %and65, 0
  br i1 %tobool66, label %if.then67, label %if.end70

if.then67:                                        ; preds = %if.end61
  %50 = load ptr, ptr %fd.addr, align 8
  %51 = load ptr, ptr %sp, align 8
  %badfaxrun = getelementptr inbounds %struct.Fax3BaseState, ptr %51, i32 0, i32 4
  %52 = load i32, ptr %badfaxrun, align 8
  %conv68 = zext i32 %52 to i64
  %call69 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.26, i64 noundef %conv68)
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.end61
  %53 = load ptr, ptr %tif.addr, align 8
  %tif_dir71 = getelementptr inbounds %struct.tiff, ptr %53, i32 0, i32 6
  %td_fieldsset72 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir71, i32 0, i32 0
  %arrayidx73 = getelementptr inbounds [3 x i64], ptr %td_fieldsset72, i64 0, i64 2
  %54 = load i64, ptr %arrayidx73, align 8
  %and74 = and i64 %54, 2
  %tobool75 = icmp ne i64 %and74, 0
  br i1 %tobool75, label %if.then76, label %if.end79

if.then76:                                        ; preds = %if.end70
  %55 = load ptr, ptr %fd.addr, align 8
  %56 = load ptr, ptr %sp, align 8
  %recvparams = getelementptr inbounds %struct.Fax3BaseState, ptr %56, i32 0, i32 7
  %57 = load i32, ptr %recvparams, align 4
  %conv77 = zext i32 %57 to i64
  %call78 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef @.str.27, i64 noundef %conv77)
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.end70
  %58 = load ptr, ptr %tif.addr, align 8
  %tif_dir80 = getelementptr inbounds %struct.tiff, ptr %58, i32 0, i32 6
  %td_fieldsset81 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir80, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [3 x i64], ptr %td_fieldsset81, i64 0, i64 2
  %59 = load i64, ptr %arrayidx82, align 8
  %and83 = and i64 %59, 4
  %tobool84 = icmp ne i64 %and83, 0
  br i1 %tobool84, label %if.then85, label %if.end87

if.then85:                                        ; preds = %if.end79
  %60 = load ptr, ptr %fd.addr, align 8
  %61 = load ptr, ptr %sp, align 8
  %subaddress = getelementptr inbounds %struct.Fax3BaseState, ptr %61, i32 0, i32 8
  %62 = load ptr, ptr %subaddress, align 8
  %call86 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef @.str.28, ptr noundef %62)
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %if.end79
  %63 = load ptr, ptr %tif.addr, align 8
  %tif_dir88 = getelementptr inbounds %struct.tiff, ptr %63, i32 0, i32 6
  %td_fieldsset89 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir88, i32 0, i32 0
  %arrayidx90 = getelementptr inbounds [3 x i64], ptr %td_fieldsset89, i64 0, i64 2
  %64 = load i64, ptr %arrayidx90, align 8
  %and91 = and i64 %64, 8
  %tobool92 = icmp ne i64 %and91, 0
  br i1 %tobool92, label %if.then93, label %if.end96

if.then93:                                        ; preds = %if.end87
  %65 = load ptr, ptr %fd.addr, align 8
  %66 = load ptr, ptr %sp, align 8
  %recvtime = getelementptr inbounds %struct.Fax3BaseState, ptr %66, i32 0, i32 9
  %67 = load i32, ptr %recvtime, align 8
  %conv94 = zext i32 %67 to i64
  %call95 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef @.str.29, i64 noundef %conv94)
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %if.end87
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %4 = load i16, ptr %td_bitspersample, align 4
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
  %8 = load i32, ptr %tif_flags, align 8
  %and = and i32 %8, 1024
  %cmp2 = icmp ne i32 %and, 0
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFTileRowSize(ptr noundef %9)
  %conv5 = sext i32 %call to i64
  store i64 %conv5, ptr %rowbytes, align 8
  %10 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i32 0, i32 4
  %11 = load i32, ptr %td_tilewidth, align 4
  %conv6 = zext i32 %11 to i64
  store i64 %conv6, ptr %rowpixels, align 8
  br label %if.end10

if.else:                                          ; preds = %if.end
  %12 = load ptr, ptr %tif.addr, align 8
  %call7 = call i32 @TIFFScanlineSize(ptr noundef %12)
  %conv8 = sext i32 %call7 to i64
  store i64 %conv8, ptr %rowbytes, align 8
  %13 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %td_imagewidth, align 8
  %conv9 = zext i32 %14 to i64
  store i64 %conv9, ptr %rowpixels, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then4
  %15 = load i64, ptr %rowbytes, align 8
  %conv11 = trunc i64 %15 to i32
  %16 = load ptr, ptr %sp, align 8
  %rowbytes12 = getelementptr inbounds %struct.Fax3BaseState, ptr %16, i32 0, i32 1
  store i32 %conv11, ptr %rowbytes12, align 4
  %17 = load i64, ptr %rowpixels, align 8
  %conv13 = trunc i64 %17 to i32
  %18 = load ptr, ptr %sp, align 8
  %rowpixels14 = getelementptr inbounds %struct.Fax3BaseState, ptr %18, i32 0, i32 2
  store i32 %conv13, ptr %rowpixels14, align 8
  %19 = load ptr, ptr %sp, align 8
  %groupoptions = getelementptr inbounds %struct.Fax3BaseState, ptr %19, i32 0, i32 6
  %20 = load i32, ptr %groupoptions, align 8
  %and15 = and i32 %20, 1
  %tobool = icmp ne i32 %and15, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end10
  %21 = load ptr, ptr %td, align 8
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %21, i32 0, i32 10
  %22 = load i16, ptr %td_compression, align 8
  %conv16 = zext i16 %22 to i32
  %cmp17 = icmp eq i32 %conv16, 4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end10
  %23 = phi i1 [ true, %if.end10 ], [ %cmp17, %lor.rhs ]
  %lor.ext = zext i1 %23 to i32
  store i32 %lor.ext, ptr %needsRefLine, align 4
  %24 = load ptr, ptr %tif.addr, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %24, i32 0, i32 2
  %25 = load i32, ptr %tif_mode, align 4
  %cmp19 = icmp eq i32 %25, 0
  br i1 %cmp19, label %if.then21, label %if.else50

if.then21:                                        ; preds = %lor.end
  %26 = load ptr, ptr %tif.addr, align 8
  %tif_data22 = getelementptr inbounds %struct.tiff, ptr %26, i32 0, i32 37
  %27 = load ptr, ptr %tif_data22, align 8
  store ptr %27, ptr %dsp, align 8
  %28 = load i32, ptr %needsRefLine, align 4
  %tobool23 = icmp ne i32 %28, 0
  br i1 %tobool23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then21
  %29 = load i64, ptr %rowpixels, align 8
  %conv24 = trunc i64 %29 to i32
  %add = add i32 %conv24, 31
  %div = udiv i32 %add, 32
  %mul = mul i32 %div, 32
  %mul25 = mul i32 2, %mul
  %conv26 = zext i32 %mul25 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.then21
  %30 = load i64, ptr %rowpixels, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv26, %cond.true ], [ %30, %cond.false ]
  %conv27 = trunc i64 %cond to i32
  store i32 %conv27, ptr %nruns, align 4
  %31 = load i32, ptr %nruns, align 4
  %conv28 = zext i32 %31 to i64
  %mul29 = mul i64 %conv28, 4
  %conv30 = trunc i64 %mul29 to i32
  %call31 = call ptr @_TIFFmalloc(i32 noundef %conv30)
  %32 = load ptr, ptr %dsp, align 8
  %runs = getelementptr inbounds %struct.Fax3DecodeState, ptr %32, i32 0, i32 6
  store ptr %call31, ptr %runs, align 8
  %33 = load ptr, ptr %dsp, align 8
  %runs32 = getelementptr inbounds %struct.Fax3DecodeState, ptr %33, i32 0, i32 6
  %34 = load ptr, ptr %runs32, align 8
  %cmp33 = icmp eq ptr %34, null
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %cond.end
  %35 = load ptr, ptr %tif.addr, align 8
  %tif_name36 = getelementptr inbounds %struct.tiff, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %tif_name36, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @.str.31, ptr noundef @.str.32, ptr noundef %36)
  store i32 0, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %cond.end
  %37 = load ptr, ptr %dsp, align 8
  %runs38 = getelementptr inbounds %struct.Fax3DecodeState, ptr %37, i32 0, i32 6
  %38 = load ptr, ptr %runs38, align 8
  %39 = load ptr, ptr %dsp, align 8
  %curruns = getelementptr inbounds %struct.Fax3DecodeState, ptr %39, i32 0, i32 8
  store ptr %38, ptr %curruns, align 8
  %40 = load i32, ptr %needsRefLine, align 4
  %tobool39 = icmp ne i32 %40, 0
  br i1 %tobool39, label %if.then40, label %if.else42

if.then40:                                        ; preds = %if.end37
  %41 = load ptr, ptr %dsp, align 8
  %runs41 = getelementptr inbounds %struct.Fax3DecodeState, ptr %41, i32 0, i32 6
  %42 = load ptr, ptr %runs41, align 8
  %43 = load i32, ptr %nruns, align 4
  %shr = lshr i32 %43, 1
  %idx.ext = zext i32 %shr to i64
  %add.ptr = getelementptr inbounds i32, ptr %42, i64 %idx.ext
  %44 = load ptr, ptr %dsp, align 8
  %refruns = getelementptr inbounds %struct.Fax3DecodeState, ptr %44, i32 0, i32 7
  store ptr %add.ptr, ptr %refruns, align 8
  br label %if.end44

if.else42:                                        ; preds = %if.end37
  %45 = load ptr, ptr %dsp, align 8
  %refruns43 = getelementptr inbounds %struct.Fax3DecodeState, ptr %45, i32 0, i32 7
  store ptr null, ptr %refruns43, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.else42, %if.then40
  %46 = load ptr, ptr %dsp, align 8
  %b = getelementptr inbounds %struct.Fax3DecodeState, ptr %46, i32 0, i32 0
  %groupoptions45 = getelementptr inbounds %struct.Fax3BaseState, ptr %b, i32 0, i32 6
  %47 = load i32, ptr %groupoptions45, align 8
  %and46 = and i32 %47, 1
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end44
  %48 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %48, i32 0, i32 26
  store ptr @Fax3Decode2D, ptr %tif_decoderow, align 8
  %49 = load ptr, ptr %tif.addr, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %49, i32 0, i32 28
  store ptr @Fax3Decode2D, ptr %tif_decodestrip, align 8
  %50 = load ptr, ptr %tif.addr, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %50, i32 0, i32 30
  store ptr @Fax3Decode2D, ptr %tif_decodetile, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end44
  br label %if.end66

if.else50:                                        ; preds = %lor.end
  %51 = load i32, ptr %needsRefLine, align 4
  %tobool51 = icmp ne i32 %51, 0
  br i1 %tobool51, label %if.then52, label %if.else62

if.then52:                                        ; preds = %if.else50
  %52 = load ptr, ptr %tif.addr, align 8
  %tif_data53 = getelementptr inbounds %struct.tiff, ptr %52, i32 0, i32 37
  %53 = load ptr, ptr %tif_data53, align 8
  store ptr %53, ptr %esp, align 8
  %54 = load i64, ptr %rowbytes, align 8
  %conv54 = trunc i64 %54 to i32
  %call55 = call ptr @_TIFFmalloc(i32 noundef %conv54)
  %55 = load ptr, ptr %esp, align 8
  %refline = getelementptr inbounds %struct.Fax3EncodeState, ptr %55, i32 0, i32 4
  store ptr %call55, ptr %refline, align 8
  %56 = load ptr, ptr %esp, align 8
  %refline56 = getelementptr inbounds %struct.Fax3EncodeState, ptr %56, i32 0, i32 4
  %57 = load ptr, ptr %refline56, align 8
  %cmp57 = icmp eq ptr %57, null
  br i1 %cmp57, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.then52
  %58 = load ptr, ptr %tif.addr, align 8
  %tif_name60 = getelementptr inbounds %struct.tiff, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %tif_name60, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @.str.31, ptr noundef @.str.33, ptr noundef %59)
  store i32 0, ptr %retval, align 4
  br label %return

if.end61:                                         ; preds = %if.then52
  br label %if.end65

if.else62:                                        ; preds = %if.else50
  %60 = load ptr, ptr %tif.addr, align 8
  %tif_data63 = getelementptr inbounds %struct.tiff, ptr %60, i32 0, i32 37
  %61 = load ptr, ptr %tif_data63, align 8
  %refline64 = getelementptr inbounds %struct.Fax3EncodeState, ptr %61, i32 0, i32 4
  store ptr null, ptr %refline64, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.else62, %if.end61
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end49
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end66, %if.then59, %if.then35, %if.then
  %62 = load i32, ptr %retval, align 4
  ret i32 %62
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  store i32 0, ptr %bit, align 4
  %6 = load ptr, ptr %sp, align 8
  %data = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i32 0, i32 2
  store i32 0, ptr %data, align 8
  %7 = load ptr, ptr %sp, align 8
  %EOLcnt = getelementptr inbounds %struct.Fax3DecodeState, ptr %7, i32 0, i32 4
  store i32 0, ptr %EOLcnt, align 8
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
  %14 = load i32, ptr %rowpixels, align 8
  %conv5 = trunc i32 %14 to i16
  %conv6 = zext i16 %conv5 to i32
  %15 = load ptr, ptr %sp, align 8
  %refruns7 = getelementptr inbounds %struct.Fax3DecodeState, ptr %15, i32 0, i32 7
  %16 = load ptr, ptr %refruns7, align 8
  %arrayidx = getelementptr inbounds i32, ptr %16, i64 0
  store i32 %conv6, ptr %arrayidx, align 4
  %17 = load ptr, ptr %sp, align 8
  %refruns8 = getelementptr inbounds %struct.Fax3DecodeState, ptr %17, i32 0, i32 7
  %18 = load ptr, ptr %refruns8, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %18, i64 1
  store i32 0, ptr %arrayidx9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @Fax3Decode1D(ptr noundef %tif, ptr noundef %buf, i32 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %occ.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
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
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load ptr, ptr %sp, align 8
  %b = getelementptr inbounds %struct.Fax3DecodeState, ptr %2, i32 0, i32 0
  %rowpixels = getelementptr inbounds %struct.Fax3BaseState, ptr %b, i32 0, i32 2
  %3 = load i32, ptr %rowpixels, align 8
  store i32 %3, ptr %lastx, align 4
  %4 = load ptr, ptr %sp, align 8
  %bitmap1 = getelementptr inbounds %struct.Fax3DecodeState, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %bitmap1, align 8
  store ptr %5, ptr %bitmap, align 8
  %6 = load i16, ptr %s.addr, align 2
  br label %do.body

do.body:                                          ; preds = %entry
  %7 = load ptr, ptr %sp, align 8
  %data = getelementptr inbounds %struct.Fax3DecodeState, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %data, align 8
  store i32 %8, ptr %BitAcc, align 4
  %9 = load ptr, ptr %sp, align 8
  %bit = getelementptr inbounds %struct.Fax3DecodeState, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %bit, align 4
  store i32 %10, ptr %BitsAvail, align 4
  %11 = load ptr, ptr %sp, align 8
  %EOLcnt2 = getelementptr inbounds %struct.Fax3DecodeState, ptr %11, i32 0, i32 4
  %12 = load i32, ptr %EOLcnt2, align 8
  store i32 %12, ptr %EOLcnt, align 4
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %13, i32 0, i32 42
  %14 = load ptr, ptr %tif_rawcp, align 8
  store ptr %14, ptr %cp, align 8
  %15 = load ptr, ptr %cp, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 43
  %17 = load i32, ptr %tif_rawcc, align 8
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, ptr %15, i64 %idx.ext
  store ptr %add.ptr, ptr %ep, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  %18 = load ptr, ptr %sp, align 8
  %curruns = getelementptr inbounds %struct.Fax3DecodeState, ptr %18, i32 0, i32 8
  %19 = load ptr, ptr %curruns, align 8
  store ptr %19, ptr %thisrun, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end373, %do.end
  %20 = load i32, ptr %occ.addr, align 4
  %conv = sext i32 %20 to i64
  %cmp = icmp sgt i64 %conv, 0
  br i1 %cmp, label %while.body, label %while.end457

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  %21 = load ptr, ptr %thisrun, align 8
  store ptr %21, ptr %pa, align 8
  br label %do.body4

do.body4:                                         ; preds = %while.body
  %22 = load i32, ptr %EOLcnt, align 4
  %cmp5 = icmp eq i32 %22, 0
  br i1 %cmp5, label %if.then, label %if.end43

if.then:                                          ; preds = %do.body4
  br label %for.cond

for.cond:                                         ; preds = %do.end42, %if.then
  br label %do.body7

do.body7:                                         ; preds = %for.cond
  %23 = load i32, ptr %BitsAvail, align 4
  %cmp8 = icmp slt i32 %23, 11
  br i1 %cmp8, label %if.then10, label %if.end35

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
  br label %if.end34

if.else:                                          ; preds = %if.then10
  %27 = load ptr, ptr %bitmap, align 8
  %28 = load ptr, ptr %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %28, i32 1
  store ptr %incdec.ptr, ptr %cp, align 8
  %29 = load i8, ptr %28, align 1
  %idxprom = zext i8 %29 to i64
  %arrayidx = getelementptr inbounds i8, ptr %27, i64 %idxprom
  %30 = load i8, ptr %arrayidx, align 1
  %conv17 = zext i8 %30 to i32
  %31 = load i32, ptr %BitsAvail, align 4
  %shl = shl i32 %conv17, %31
  %32 = load i32, ptr %BitAcc, align 4
  %or = or i32 %32, %shl
  store i32 %or, ptr %BitAcc, align 4
  %33 = load i32, ptr %BitsAvail, align 4
  %add = add nsw i32 %33, 8
  store i32 %add, ptr %BitsAvail, align 4
  %cmp18 = icmp slt i32 %add, 11
  br i1 %cmp18, label %if.then20, label %if.end33

if.then20:                                        ; preds = %if.else
  %34 = load ptr, ptr %cp, align 8
  %35 = load ptr, ptr %ep, align 8
  %cmp21 = icmp uge ptr %34, %35
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.then20
  store i32 11, ptr %BitsAvail, align 4
  br label %if.end32

if.else24:                                        ; preds = %if.then20
  %36 = load ptr, ptr %bitmap, align 8
  %37 = load ptr, ptr %cp, align 8
  %incdec.ptr25 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr25, ptr %cp, align 8
  %38 = load i8, ptr %37, align 1
  %idxprom26 = zext i8 %38 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %36, i64 %idxprom26
  %39 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %39 to i32
  %40 = load i32, ptr %BitsAvail, align 4
  %shl29 = shl i32 %conv28, %40
  %41 = load i32, ptr %BitAcc, align 4
  %or30 = or i32 %41, %shl29
  store i32 %or30, ptr %BitAcc, align 4
  %42 = load i32, ptr %BitsAvail, align 4
  %add31 = add nsw i32 %42, 8
  store i32 %add31, ptr %BitsAvail, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.else24, %if.then23
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.else
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %do.body7
  br label %do.end36

do.end36:                                         ; preds = %if.end35
  %43 = load i32, ptr %BitAcc, align 4
  %and = and i32 %43, 2047
  %cmp37 = icmp eq i32 %and, 0
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %do.end36
  br label %for.end

if.end40:                                         ; preds = %do.end36
  br label %do.body41

do.body41:                                        ; preds = %if.end40
  %44 = load i32, ptr %BitsAvail, align 4
  %sub = sub nsw i32 %44, 1
  store i32 %sub, ptr %BitsAvail, align 4
  %45 = load i32, ptr %BitAcc, align 4
  %shr = lshr i32 %45, 1
  store i32 %shr, ptr %BitAcc, align 4
  br label %do.end42

do.end42:                                         ; preds = %do.body41
  br label %for.cond

for.end:                                          ; preds = %if.then39
  br label %if.end43

if.end43:                                         ; preds = %for.end, %do.body4
  br label %for.cond44

for.cond44:                                       ; preds = %do.end73, %if.end43
  br label %do.body45

do.body45:                                        ; preds = %for.cond44
  %46 = load i32, ptr %BitsAvail, align 4
  %cmp46 = icmp slt i32 %46, 8
  br i1 %cmp46, label %if.then48, label %if.end65

if.then48:                                        ; preds = %do.body45
  %47 = load ptr, ptr %cp, align 8
  %48 = load ptr, ptr %ep, align 8
  %cmp49 = icmp uge ptr %47, %48
  br i1 %cmp49, label %if.then51, label %if.else56

if.then51:                                        ; preds = %if.then48
  %49 = load i32, ptr %BitsAvail, align 4
  %cmp52 = icmp eq i32 %49, 0
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.then51
  br label %EOF1D

if.end55:                                         ; preds = %if.then51
  store i32 8, ptr %BitsAvail, align 4
  br label %if.end64

if.else56:                                        ; preds = %if.then48
  %50 = load ptr, ptr %bitmap, align 8
  %51 = load ptr, ptr %cp, align 8
  %incdec.ptr57 = getelementptr inbounds i8, ptr %51, i32 1
  store ptr %incdec.ptr57, ptr %cp, align 8
  %52 = load i8, ptr %51, align 1
  %idxprom58 = zext i8 %52 to i64
  %arrayidx59 = getelementptr inbounds i8, ptr %50, i64 %idxprom58
  %53 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %53 to i32
  %54 = load i32, ptr %BitsAvail, align 4
  %shl61 = shl i32 %conv60, %54
  %55 = load i32, ptr %BitAcc, align 4
  %or62 = or i32 %55, %shl61
  store i32 %or62, ptr %BitAcc, align 4
  %56 = load i32, ptr %BitsAvail, align 4
  %add63 = add nsw i32 %56, 8
  store i32 %add63, ptr %BitsAvail, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.else56, %if.end55
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %do.body45
  br label %do.end66

do.end66:                                         ; preds = %if.end65
  %57 = load i32, ptr %BitAcc, align 4
  %and67 = and i32 %57, 255
  %tobool = icmp ne i32 %and67, 0
  br i1 %tobool, label %if.then68, label %if.end69

if.then68:                                        ; preds = %do.end66
  br label %for.end74

if.end69:                                         ; preds = %do.end66
  br label %do.body70

do.body70:                                        ; preds = %if.end69
  %58 = load i32, ptr %BitsAvail, align 4
  %sub71 = sub nsw i32 %58, 8
  store i32 %sub71, ptr %BitsAvail, align 4
  %59 = load i32, ptr %BitAcc, align 4
  %shr72 = lshr i32 %59, 8
  store i32 %shr72, ptr %BitAcc, align 4
  br label %do.end73

do.end73:                                         ; preds = %do.body70
  br label %for.cond44

for.end74:                                        ; preds = %if.then68
  br label %while.cond75

while.cond75:                                     ; preds = %do.end83, %for.end74
  %60 = load i32, ptr %BitAcc, align 4
  %and76 = and i32 %60, 1
  %cmp77 = icmp eq i32 %and76, 0
  br i1 %cmp77, label %while.body79, label %while.end

while.body79:                                     ; preds = %while.cond75
  br label %do.body80

do.body80:                                        ; preds = %while.body79
  %61 = load i32, ptr %BitsAvail, align 4
  %sub81 = sub nsw i32 %61, 1
  store i32 %sub81, ptr %BitsAvail, align 4
  %62 = load i32, ptr %BitAcc, align 4
  %shr82 = lshr i32 %62, 1
  store i32 %shr82, ptr %BitAcc, align 4
  br label %do.end83

do.end83:                                         ; preds = %do.body80
  br label %while.cond75, !llvm.loop !25

while.end:                                        ; preds = %while.cond75
  br label %do.body84

do.body84:                                        ; preds = %while.end
  %63 = load i32, ptr %BitsAvail, align 4
  %sub85 = sub nsw i32 %63, 1
  store i32 %sub85, ptr %BitsAvail, align 4
  %64 = load i32, ptr %BitAcc, align 4
  %shr86 = lshr i32 %64, 1
  store i32 %shr86, ptr %BitAcc, align 4
  br label %do.end87

do.end87:                                         ; preds = %do.body84
  store i32 0, ptr %EOLcnt, align 4
  br label %do.end88

do.end88:                                         ; preds = %do.end87
  br label %do.body89

do.body89:                                        ; preds = %do.end88
  br label %for.cond90

for.cond90:                                       ; preds = %if.end232, %do.body89
  br label %for.cond91

for.cond91:                                       ; preds = %sw.epilog, %for.cond90
  br label %do.body92

do.body92:                                        ; preds = %for.cond91
  br label %do.body93

do.body93:                                        ; preds = %do.body92
  %65 = load i32, ptr %BitsAvail, align 4
  %cmp94 = icmp slt i32 %65, 12
  br i1 %cmp94, label %if.then96, label %if.end129

if.then96:                                        ; preds = %do.body93
  %66 = load ptr, ptr %cp, align 8
  %67 = load ptr, ptr %ep, align 8
  %cmp97 = icmp uge ptr %66, %67
  br i1 %cmp97, label %if.then99, label %if.else104

if.then99:                                        ; preds = %if.then96
  %68 = load i32, ptr %BitsAvail, align 4
  %cmp100 = icmp eq i32 %68, 0
  br i1 %cmp100, label %if.then102, label %if.end103

if.then102:                                       ; preds = %if.then99
  br label %eof1d

if.end103:                                        ; preds = %if.then99
  store i32 12, ptr %BitsAvail, align 4
  br label %if.end128

if.else104:                                       ; preds = %if.then96
  %69 = load ptr, ptr %bitmap, align 8
  %70 = load ptr, ptr %cp, align 8
  %incdec.ptr105 = getelementptr inbounds i8, ptr %70, i32 1
  store ptr %incdec.ptr105, ptr %cp, align 8
  %71 = load i8, ptr %70, align 1
  %idxprom106 = zext i8 %71 to i64
  %arrayidx107 = getelementptr inbounds i8, ptr %69, i64 %idxprom106
  %72 = load i8, ptr %arrayidx107, align 1
  %conv108 = zext i8 %72 to i32
  %73 = load i32, ptr %BitsAvail, align 4
  %shl109 = shl i32 %conv108, %73
  %74 = load i32, ptr %BitAcc, align 4
  %or110 = or i32 %74, %shl109
  store i32 %or110, ptr %BitAcc, align 4
  %75 = load i32, ptr %BitsAvail, align 4
  %add111 = add nsw i32 %75, 8
  store i32 %add111, ptr %BitsAvail, align 4
  %cmp112 = icmp slt i32 %add111, 12
  br i1 %cmp112, label %if.then114, label %if.end127

if.then114:                                       ; preds = %if.else104
  %76 = load ptr, ptr %cp, align 8
  %77 = load ptr, ptr %ep, align 8
  %cmp115 = icmp uge ptr %76, %77
  br i1 %cmp115, label %if.then117, label %if.else118

if.then117:                                       ; preds = %if.then114
  store i32 12, ptr %BitsAvail, align 4
  br label %if.end126

if.else118:                                       ; preds = %if.then114
  %78 = load ptr, ptr %bitmap, align 8
  %79 = load ptr, ptr %cp, align 8
  %incdec.ptr119 = getelementptr inbounds i8, ptr %79, i32 1
  store ptr %incdec.ptr119, ptr %cp, align 8
  %80 = load i8, ptr %79, align 1
  %idxprom120 = zext i8 %80 to i64
  %arrayidx121 = getelementptr inbounds i8, ptr %78, i64 %idxprom120
  %81 = load i8, ptr %arrayidx121, align 1
  %conv122 = zext i8 %81 to i32
  %82 = load i32, ptr %BitsAvail, align 4
  %shl123 = shl i32 %conv122, %82
  %83 = load i32, ptr %BitAcc, align 4
  %or124 = or i32 %83, %shl123
  store i32 %or124, ptr %BitAcc, align 4
  %84 = load i32, ptr %BitsAvail, align 4
  %add125 = add nsw i32 %84, 8
  store i32 %add125, ptr %BitsAvail, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.else118, %if.then117
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %if.else104
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %if.end103
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %do.body93
  br label %do.end130

do.end130:                                        ; preds = %if.end129
  %85 = load i32, ptr %BitAcc, align 4
  %and131 = and i32 %85, 4095
  %idx.ext132 = zext i32 %and131 to i64
  %add.ptr133 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %idx.ext132
  store ptr %add.ptr133, ptr %TabEnt, align 8
  br label %do.body134

do.body134:                                       ; preds = %do.end130
  %86 = load ptr, ptr %TabEnt, align 8
  %Width = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %86, i32 0, i32 1
  %87 = load i8, ptr %Width, align 1
  %conv135 = zext i8 %87 to i32
  %88 = load i32, ptr %BitsAvail, align 4
  %sub136 = sub nsw i32 %88, %conv135
  store i32 %sub136, ptr %BitsAvail, align 4
  %89 = load ptr, ptr %TabEnt, align 8
  %Width137 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %89, i32 0, i32 1
  %90 = load i8, ptr %Width137, align 1
  %conv138 = zext i8 %90 to i32
  %91 = load i32, ptr %BitAcc, align 4
  %shr139 = lshr i32 %91, %conv138
  store i32 %shr139, ptr %BitAcc, align 4
  br label %do.end140

do.end140:                                        ; preds = %do.body134
  br label %do.end141

do.end141:                                        ; preds = %do.end140
  %92 = load ptr, ptr %TabEnt, align 8
  %State = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %92, i32 0, i32 0
  %93 = load i8, ptr %State, align 4
  %conv142 = zext i8 %93 to i32
  switch i32 %conv142, label %sw.default [
    i32 12, label %sw.bb
    i32 7, label %sw.bb143
    i32 9, label %sw.bb150
    i32 11, label %sw.bb150
  ]

sw.bb:                                            ; preds = %do.end141
  store i32 1, ptr %EOLcnt, align 4
  br label %done1d

sw.bb143:                                         ; preds = %do.end141
  br label %do.body144

do.body144:                                       ; preds = %sw.bb143
  %94 = load i32, ptr %RunLength, align 4
  %95 = load ptr, ptr %TabEnt, align 8
  %Param = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %95, i32 0, i32 2
  %96 = load i32, ptr %Param, align 4
  %add145 = add i32 %94, %96
  %97 = load ptr, ptr %pa, align 8
  %incdec.ptr146 = getelementptr inbounds i32, ptr %97, i32 1
  store ptr %incdec.ptr146, ptr %pa, align 8
  store i32 %add145, ptr %97, align 4
  %98 = load ptr, ptr %TabEnt, align 8
  %Param147 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %98, i32 0, i32 2
  %99 = load i32, ptr %Param147, align 4
  %100 = load i32, ptr %a0, align 4
  %add148 = add i32 %100, %99
  store i32 %add148, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end149

do.end149:                                        ; preds = %do.body144
  br label %doneWhite1d

sw.bb150:                                         ; preds = %do.end141, %do.end141
  %101 = load ptr, ptr %TabEnt, align 8
  %Param151 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %101, i32 0, i32 2
  %102 = load i32, ptr %Param151, align 4
  %103 = load i32, ptr %a0, align 4
  %add152 = add i32 %103, %102
  store i32 %add152, ptr %a0, align 4
  %104 = load ptr, ptr %TabEnt, align 8
  %Param153 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %104, i32 0, i32 2
  %105 = load i32, ptr %Param153, align 4
  %106 = load i32, ptr %RunLength, align 4
  %add154 = add i32 %106, %105
  store i32 %add154, ptr %RunLength, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end141
  %107 = load ptr, ptr %tif.addr, align 8
  %108 = load i32, ptr %a0, align 4
  call void @Fax3Unexpected(ptr noundef @Fax3Decode1D.module, ptr noundef %107, i32 noundef %108)
  br label %done1d

sw.epilog:                                        ; preds = %sw.bb150
  br label %for.cond91

doneWhite1d:                                      ; preds = %do.end149
  %109 = load i32, ptr %a0, align 4
  %110 = load i32, ptr %lastx, align 4
  %cmp155 = icmp sge i32 %109, %110
  br i1 %cmp155, label %if.then157, label %if.end158

if.then157:                                       ; preds = %doneWhite1d
  br label %done1d

if.end158:                                        ; preds = %doneWhite1d
  br label %for.cond159

for.cond159:                                      ; preds = %sw.epilog228, %if.end158
  br label %do.body160

do.body160:                                       ; preds = %for.cond159
  br label %do.body161

do.body161:                                       ; preds = %do.body160
  %111 = load i32, ptr %BitsAvail, align 4
  %cmp162 = icmp slt i32 %111, 13
  br i1 %cmp162, label %if.then164, label %if.end197

if.then164:                                       ; preds = %do.body161
  %112 = load ptr, ptr %cp, align 8
  %113 = load ptr, ptr %ep, align 8
  %cmp165 = icmp uge ptr %112, %113
  br i1 %cmp165, label %if.then167, label %if.else172

if.then167:                                       ; preds = %if.then164
  %114 = load i32, ptr %BitsAvail, align 4
  %cmp168 = icmp eq i32 %114, 0
  br i1 %cmp168, label %if.then170, label %if.end171

if.then170:                                       ; preds = %if.then167
  br label %eof1d

if.end171:                                        ; preds = %if.then167
  store i32 13, ptr %BitsAvail, align 4
  br label %if.end196

if.else172:                                       ; preds = %if.then164
  %115 = load ptr, ptr %bitmap, align 8
  %116 = load ptr, ptr %cp, align 8
  %incdec.ptr173 = getelementptr inbounds i8, ptr %116, i32 1
  store ptr %incdec.ptr173, ptr %cp, align 8
  %117 = load i8, ptr %116, align 1
  %idxprom174 = zext i8 %117 to i64
  %arrayidx175 = getelementptr inbounds i8, ptr %115, i64 %idxprom174
  %118 = load i8, ptr %arrayidx175, align 1
  %conv176 = zext i8 %118 to i32
  %119 = load i32, ptr %BitsAvail, align 4
  %shl177 = shl i32 %conv176, %119
  %120 = load i32, ptr %BitAcc, align 4
  %or178 = or i32 %120, %shl177
  store i32 %or178, ptr %BitAcc, align 4
  %121 = load i32, ptr %BitsAvail, align 4
  %add179 = add nsw i32 %121, 8
  store i32 %add179, ptr %BitsAvail, align 4
  %cmp180 = icmp slt i32 %add179, 13
  br i1 %cmp180, label %if.then182, label %if.end195

if.then182:                                       ; preds = %if.else172
  %122 = load ptr, ptr %cp, align 8
  %123 = load ptr, ptr %ep, align 8
  %cmp183 = icmp uge ptr %122, %123
  br i1 %cmp183, label %if.then185, label %if.else186

if.then185:                                       ; preds = %if.then182
  store i32 13, ptr %BitsAvail, align 4
  br label %if.end194

if.else186:                                       ; preds = %if.then182
  %124 = load ptr, ptr %bitmap, align 8
  %125 = load ptr, ptr %cp, align 8
  %incdec.ptr187 = getelementptr inbounds i8, ptr %125, i32 1
  store ptr %incdec.ptr187, ptr %cp, align 8
  %126 = load i8, ptr %125, align 1
  %idxprom188 = zext i8 %126 to i64
  %arrayidx189 = getelementptr inbounds i8, ptr %124, i64 %idxprom188
  %127 = load i8, ptr %arrayidx189, align 1
  %conv190 = zext i8 %127 to i32
  %128 = load i32, ptr %BitsAvail, align 4
  %shl191 = shl i32 %conv190, %128
  %129 = load i32, ptr %BitAcc, align 4
  %or192 = or i32 %129, %shl191
  store i32 %or192, ptr %BitAcc, align 4
  %130 = load i32, ptr %BitsAvail, align 4
  %add193 = add nsw i32 %130, 8
  store i32 %add193, ptr %BitsAvail, align 4
  br label %if.end194

if.end194:                                        ; preds = %if.else186, %if.then185
  br label %if.end195

if.end195:                                        ; preds = %if.end194, %if.else172
  br label %if.end196

if.end196:                                        ; preds = %if.end195, %if.end171
  br label %if.end197

if.end197:                                        ; preds = %if.end196, %do.body161
  br label %do.end198

do.end198:                                        ; preds = %if.end197
  %131 = load i32, ptr %BitAcc, align 4
  %and199 = and i32 %131, 8191
  %idx.ext200 = zext i32 %and199 to i64
  %add.ptr201 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %idx.ext200
  store ptr %add.ptr201, ptr %TabEnt, align 8
  br label %do.body202

do.body202:                                       ; preds = %do.end198
  %132 = load ptr, ptr %TabEnt, align 8
  %Width203 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %132, i32 0, i32 1
  %133 = load i8, ptr %Width203, align 1
  %conv204 = zext i8 %133 to i32
  %134 = load i32, ptr %BitsAvail, align 4
  %sub205 = sub nsw i32 %134, %conv204
  store i32 %sub205, ptr %BitsAvail, align 4
  %135 = load ptr, ptr %TabEnt, align 8
  %Width206 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %135, i32 0, i32 1
  %136 = load i8, ptr %Width206, align 1
  %conv207 = zext i8 %136 to i32
  %137 = load i32, ptr %BitAcc, align 4
  %shr208 = lshr i32 %137, %conv207
  store i32 %shr208, ptr %BitAcc, align 4
  br label %do.end209

do.end209:                                        ; preds = %do.body202
  br label %do.end210

do.end210:                                        ; preds = %do.end209
  %138 = load ptr, ptr %TabEnt, align 8
  %State211 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %138, i32 0, i32 0
  %139 = load i8, ptr %State211, align 4
  %conv212 = zext i8 %139 to i32
  switch i32 %conv212, label %sw.default227 [
    i32 12, label %sw.bb213
    i32 8, label %sw.bb214
    i32 10, label %sw.bb222
    i32 11, label %sw.bb222
  ]

sw.bb213:                                         ; preds = %do.end210
  store i32 1, ptr %EOLcnt, align 4
  br label %done1d

sw.bb214:                                         ; preds = %do.end210
  br label %do.body215

do.body215:                                       ; preds = %sw.bb214
  %140 = load i32, ptr %RunLength, align 4
  %141 = load ptr, ptr %TabEnt, align 8
  %Param216 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %141, i32 0, i32 2
  %142 = load i32, ptr %Param216, align 4
  %add217 = add i32 %140, %142
  %143 = load ptr, ptr %pa, align 8
  %incdec.ptr218 = getelementptr inbounds i32, ptr %143, i32 1
  store ptr %incdec.ptr218, ptr %pa, align 8
  store i32 %add217, ptr %143, align 4
  %144 = load ptr, ptr %TabEnt, align 8
  %Param219 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %144, i32 0, i32 2
  %145 = load i32, ptr %Param219, align 4
  %146 = load i32, ptr %a0, align 4
  %add220 = add i32 %146, %145
  store i32 %add220, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end221

do.end221:                                        ; preds = %do.body215
  br label %doneBlack1d

sw.bb222:                                         ; preds = %do.end210, %do.end210
  %147 = load ptr, ptr %TabEnt, align 8
  %Param223 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %147, i32 0, i32 2
  %148 = load i32, ptr %Param223, align 4
  %149 = load i32, ptr %a0, align 4
  %add224 = add i32 %149, %148
  store i32 %add224, ptr %a0, align 4
  %150 = load ptr, ptr %TabEnt, align 8
  %Param225 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %150, i32 0, i32 2
  %151 = load i32, ptr %Param225, align 4
  %152 = load i32, ptr %RunLength, align 4
  %add226 = add i32 %152, %151
  store i32 %add226, ptr %RunLength, align 4
  br label %sw.epilog228

sw.default227:                                    ; preds = %do.end210
  %153 = load ptr, ptr %tif.addr, align 8
  %154 = load i32, ptr %a0, align 4
  call void @Fax3Unexpected(ptr noundef @Fax3Decode1D.module, ptr noundef %153, i32 noundef %154)
  br label %done1d

sw.epilog228:                                     ; preds = %sw.bb222
  br label %for.cond159

doneBlack1d:                                      ; preds = %do.end221
  %155 = load i32, ptr %a0, align 4
  %156 = load i32, ptr %lastx, align 4
  %cmp229 = icmp sge i32 %155, %156
  br i1 %cmp229, label %if.then231, label %if.end232

if.then231:                                       ; preds = %doneBlack1d
  br label %done1d

if.end232:                                        ; preds = %doneBlack1d
  br label %for.cond90

eof1d:                                            ; preds = %if.then170, %if.then102
  %157 = load ptr, ptr %tif.addr, align 8
  %158 = load i32, ptr %a0, align 4
  call void @Fax3PrematureEOF(ptr noundef @Fax3Decode1D.module, ptr noundef %157, i32 noundef %158)
  br label %do.body233

do.body233:                                       ; preds = %eof1d
  %159 = load i32, ptr %RunLength, align 4
  %tobool234 = icmp ne i32 %159, 0
  br i1 %tobool234, label %if.then235, label %if.end241

if.then235:                                       ; preds = %do.body233
  br label %do.body236

do.body236:                                       ; preds = %if.then235
  %160 = load i32, ptr %RunLength, align 4
  %add237 = add nsw i32 %160, 0
  %161 = load ptr, ptr %pa, align 8
  %incdec.ptr238 = getelementptr inbounds i32, ptr %161, i32 1
  store ptr %incdec.ptr238, ptr %pa, align 8
  store i32 %add237, ptr %161, align 4
  %162 = load i32, ptr %a0, align 4
  %add239 = add nsw i32 %162, 0
  store i32 %add239, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end240

do.end240:                                        ; preds = %do.body236
  br label %if.end241

if.end241:                                        ; preds = %do.end240, %do.body233
  %163 = load i32, ptr %a0, align 4
  %164 = load i32, ptr %lastx, align 4
  %cmp242 = icmp ne i32 %163, %164
  br i1 %cmp242, label %if.then244, label %if.end293

if.then244:                                       ; preds = %if.end241
  %165 = load ptr, ptr %tif.addr, align 8
  %166 = load i32, ptr %a0, align 4
  %167 = load i32, ptr %lastx, align 4
  call void @Fax3BadLength(ptr noundef @Fax3Decode1D.module, ptr noundef %165, i32 noundef %166, i32 noundef %167)
  br label %while.cond245

while.cond245:                                    ; preds = %while.body250, %if.then244
  %168 = load i32, ptr %a0, align 4
  %169 = load i32, ptr %lastx, align 4
  %cmp246 = icmp sgt i32 %168, %169
  br i1 %cmp246, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond245
  %170 = load ptr, ptr %pa, align 8
  %171 = load ptr, ptr %thisrun, align 8
  %cmp248 = icmp ugt ptr %170, %171
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond245
  %172 = phi i1 [ false, %while.cond245 ], [ %cmp248, %land.rhs ]
  br i1 %172, label %while.body250, label %while.end253

while.body250:                                    ; preds = %land.end
  %173 = load ptr, ptr %pa, align 8
  %incdec.ptr251 = getelementptr inbounds i32, ptr %173, i32 -1
  store ptr %incdec.ptr251, ptr %pa, align 8
  %174 = load i32, ptr %incdec.ptr251, align 4
  %175 = load i32, ptr %a0, align 4
  %sub252 = sub i32 %175, %174
  store i32 %sub252, ptr %a0, align 4
  br label %while.cond245, !llvm.loop !26

while.end253:                                     ; preds = %land.end
  %176 = load i32, ptr %a0, align 4
  %177 = load i32, ptr %lastx, align 4
  %cmp254 = icmp slt i32 %176, %177
  br i1 %cmp254, label %if.then256, label %if.else277

if.then256:                                       ; preds = %while.end253
  %178 = load i32, ptr %a0, align 4
  %cmp257 = icmp slt i32 %178, 0
  br i1 %cmp257, label %if.then259, label %if.end260

if.then259:                                       ; preds = %if.then256
  store i32 0, ptr %a0, align 4
  br label %if.end260

if.end260:                                        ; preds = %if.then259, %if.then256
  %179 = load ptr, ptr %pa, align 8
  %180 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %179 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %180 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %and261 = and i64 %sub.ptr.div, 1
  %tobool262 = icmp ne i64 %and261, 0
  br i1 %tobool262, label %if.then263, label %if.end269

if.then263:                                       ; preds = %if.end260
  br label %do.body264

do.body264:                                       ; preds = %if.then263
  %181 = load i32, ptr %RunLength, align 4
  %add265 = add nsw i32 %181, 0
  %182 = load ptr, ptr %pa, align 8
  %incdec.ptr266 = getelementptr inbounds i32, ptr %182, i32 1
  store ptr %incdec.ptr266, ptr %pa, align 8
  store i32 %add265, ptr %182, align 4
  %183 = load i32, ptr %a0, align 4
  %add267 = add nsw i32 %183, 0
  store i32 %add267, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end268

do.end268:                                        ; preds = %do.body264
  br label %if.end269

if.end269:                                        ; preds = %do.end268, %if.end260
  br label %do.body270

do.body270:                                       ; preds = %if.end269
  %184 = load i32, ptr %RunLength, align 4
  %185 = load i32, ptr %lastx, align 4
  %186 = load i32, ptr %a0, align 4
  %sub271 = sub nsw i32 %185, %186
  %add272 = add nsw i32 %184, %sub271
  %187 = load ptr, ptr %pa, align 8
  %incdec.ptr273 = getelementptr inbounds i32, ptr %187, i32 1
  store ptr %incdec.ptr273, ptr %pa, align 8
  store i32 %add272, ptr %187, align 4
  %188 = load i32, ptr %lastx, align 4
  %189 = load i32, ptr %a0, align 4
  %sub274 = sub nsw i32 %188, %189
  %190 = load i32, ptr %a0, align 4
  %add275 = add nsw i32 %190, %sub274
  store i32 %add275, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end276

do.end276:                                        ; preds = %do.body270
  br label %if.end292

if.else277:                                       ; preds = %while.end253
  %191 = load i32, ptr %a0, align 4
  %192 = load i32, ptr %lastx, align 4
  %cmp278 = icmp sgt i32 %191, %192
  br i1 %cmp278, label %if.then280, label %if.end291

if.then280:                                       ; preds = %if.else277
  br label %do.body281

do.body281:                                       ; preds = %if.then280
  %193 = load i32, ptr %RunLength, align 4
  %194 = load i32, ptr %lastx, align 4
  %add282 = add nsw i32 %193, %194
  %195 = load ptr, ptr %pa, align 8
  %incdec.ptr283 = getelementptr inbounds i32, ptr %195, i32 1
  store ptr %incdec.ptr283, ptr %pa, align 8
  store i32 %add282, ptr %195, align 4
  %196 = load i32, ptr %lastx, align 4
  %197 = load i32, ptr %a0, align 4
  %add284 = add nsw i32 %197, %196
  store i32 %add284, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end285

do.end285:                                        ; preds = %do.body281
  br label %do.body286

do.body286:                                       ; preds = %do.end285
  %198 = load i32, ptr %RunLength, align 4
  %add287 = add nsw i32 %198, 0
  %199 = load ptr, ptr %pa, align 8
  %incdec.ptr288 = getelementptr inbounds i32, ptr %199, i32 1
  store ptr %incdec.ptr288, ptr %pa, align 8
  store i32 %add287, ptr %199, align 4
  %200 = load i32, ptr %a0, align 4
  %add289 = add nsw i32 %200, 0
  store i32 %add289, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end290

do.end290:                                        ; preds = %do.body286
  br label %if.end291

if.end291:                                        ; preds = %do.end290, %if.else277
  br label %if.end292

if.end292:                                        ; preds = %if.end291, %do.end276
  br label %if.end293

if.end293:                                        ; preds = %if.end292, %if.end241
  br label %do.end294

do.end294:                                        ; preds = %if.end293
  br label %EOF1Da

done1d:                                           ; preds = %if.then231, %sw.default227, %sw.bb213, %if.then157, %sw.default, %sw.bb
  br label %do.body295

do.body295:                                       ; preds = %done1d
  %201 = load i32, ptr %RunLength, align 4
  %tobool296 = icmp ne i32 %201, 0
  br i1 %tobool296, label %if.then297, label %if.end303

if.then297:                                       ; preds = %do.body295
  br label %do.body298

do.body298:                                       ; preds = %if.then297
  %202 = load i32, ptr %RunLength, align 4
  %add299 = add nsw i32 %202, 0
  %203 = load ptr, ptr %pa, align 8
  %incdec.ptr300 = getelementptr inbounds i32, ptr %203, i32 1
  store ptr %incdec.ptr300, ptr %pa, align 8
  store i32 %add299, ptr %203, align 4
  %204 = load i32, ptr %a0, align 4
  %add301 = add nsw i32 %204, 0
  store i32 %add301, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end302

do.end302:                                        ; preds = %do.body298
  br label %if.end303

if.end303:                                        ; preds = %do.end302, %do.body295
  %205 = load i32, ptr %a0, align 4
  %206 = load i32, ptr %lastx, align 4
  %cmp304 = icmp ne i32 %205, %206
  br i1 %cmp304, label %if.then306, label %if.end361

if.then306:                                       ; preds = %if.end303
  %207 = load ptr, ptr %tif.addr, align 8
  %208 = load i32, ptr %a0, align 4
  %209 = load i32, ptr %lastx, align 4
  call void @Fax3BadLength(ptr noundef @Fax3Decode1D.module, ptr noundef %207, i32 noundef %208, i32 noundef %209)
  br label %while.cond307

while.cond307:                                    ; preds = %while.body314, %if.then306
  %210 = load i32, ptr %a0, align 4
  %211 = load i32, ptr %lastx, align 4
  %cmp308 = icmp sgt i32 %210, %211
  br i1 %cmp308, label %land.rhs310, label %land.end313

land.rhs310:                                      ; preds = %while.cond307
  %212 = load ptr, ptr %pa, align 8
  %213 = load ptr, ptr %thisrun, align 8
  %cmp311 = icmp ugt ptr %212, %213
  br label %land.end313

land.end313:                                      ; preds = %land.rhs310, %while.cond307
  %214 = phi i1 [ false, %while.cond307 ], [ %cmp311, %land.rhs310 ]
  br i1 %214, label %while.body314, label %while.end317

while.body314:                                    ; preds = %land.end313
  %215 = load ptr, ptr %pa, align 8
  %incdec.ptr315 = getelementptr inbounds i32, ptr %215, i32 -1
  store ptr %incdec.ptr315, ptr %pa, align 8
  %216 = load i32, ptr %incdec.ptr315, align 4
  %217 = load i32, ptr %a0, align 4
  %sub316 = sub i32 %217, %216
  store i32 %sub316, ptr %a0, align 4
  br label %while.cond307, !llvm.loop !27

while.end317:                                     ; preds = %land.end313
  %218 = load i32, ptr %a0, align 4
  %219 = load i32, ptr %lastx, align 4
  %cmp318 = icmp slt i32 %218, %219
  br i1 %cmp318, label %if.then320, label %if.else345

if.then320:                                       ; preds = %while.end317
  %220 = load i32, ptr %a0, align 4
  %cmp321 = icmp slt i32 %220, 0
  br i1 %cmp321, label %if.then323, label %if.end324

if.then323:                                       ; preds = %if.then320
  store i32 0, ptr %a0, align 4
  br label %if.end324

if.end324:                                        ; preds = %if.then323, %if.then320
  %221 = load ptr, ptr %pa, align 8
  %222 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast325 = ptrtoint ptr %221 to i64
  %sub.ptr.rhs.cast326 = ptrtoint ptr %222 to i64
  %sub.ptr.sub327 = sub i64 %sub.ptr.lhs.cast325, %sub.ptr.rhs.cast326
  %sub.ptr.div328 = sdiv exact i64 %sub.ptr.sub327, 4
  %and329 = and i64 %sub.ptr.div328, 1
  %tobool330 = icmp ne i64 %and329, 0
  br i1 %tobool330, label %if.then331, label %if.end337

if.then331:                                       ; preds = %if.end324
  br label %do.body332

do.body332:                                       ; preds = %if.then331
  %223 = load i32, ptr %RunLength, align 4
  %add333 = add nsw i32 %223, 0
  %224 = load ptr, ptr %pa, align 8
  %incdec.ptr334 = getelementptr inbounds i32, ptr %224, i32 1
  store ptr %incdec.ptr334, ptr %pa, align 8
  store i32 %add333, ptr %224, align 4
  %225 = load i32, ptr %a0, align 4
  %add335 = add nsw i32 %225, 0
  store i32 %add335, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end336

do.end336:                                        ; preds = %do.body332
  br label %if.end337

if.end337:                                        ; preds = %do.end336, %if.end324
  br label %do.body338

do.body338:                                       ; preds = %if.end337
  %226 = load i32, ptr %RunLength, align 4
  %227 = load i32, ptr %lastx, align 4
  %228 = load i32, ptr %a0, align 4
  %sub339 = sub nsw i32 %227, %228
  %add340 = add nsw i32 %226, %sub339
  %229 = load ptr, ptr %pa, align 8
  %incdec.ptr341 = getelementptr inbounds i32, ptr %229, i32 1
  store ptr %incdec.ptr341, ptr %pa, align 8
  store i32 %add340, ptr %229, align 4
  %230 = load i32, ptr %lastx, align 4
  %231 = load i32, ptr %a0, align 4
  %sub342 = sub nsw i32 %230, %231
  %232 = load i32, ptr %a0, align 4
  %add343 = add nsw i32 %232, %sub342
  store i32 %add343, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end344

do.end344:                                        ; preds = %do.body338
  br label %if.end360

if.else345:                                       ; preds = %while.end317
  %233 = load i32, ptr %a0, align 4
  %234 = load i32, ptr %lastx, align 4
  %cmp346 = icmp sgt i32 %233, %234
  br i1 %cmp346, label %if.then348, label %if.end359

if.then348:                                       ; preds = %if.else345
  br label %do.body349

do.body349:                                       ; preds = %if.then348
  %235 = load i32, ptr %RunLength, align 4
  %236 = load i32, ptr %lastx, align 4
  %add350 = add nsw i32 %235, %236
  %237 = load ptr, ptr %pa, align 8
  %incdec.ptr351 = getelementptr inbounds i32, ptr %237, i32 1
  store ptr %incdec.ptr351, ptr %pa, align 8
  store i32 %add350, ptr %237, align 4
  %238 = load i32, ptr %lastx, align 4
  %239 = load i32, ptr %a0, align 4
  %add352 = add nsw i32 %239, %238
  store i32 %add352, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end353

do.end353:                                        ; preds = %do.body349
  br label %do.body354

do.body354:                                       ; preds = %do.end353
  %240 = load i32, ptr %RunLength, align 4
  %add355 = add nsw i32 %240, 0
  %241 = load ptr, ptr %pa, align 8
  %incdec.ptr356 = getelementptr inbounds i32, ptr %241, i32 1
  store ptr %incdec.ptr356, ptr %pa, align 8
  store i32 %add355, ptr %241, align 4
  %242 = load i32, ptr %a0, align 4
  %add357 = add nsw i32 %242, 0
  store i32 %add357, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end358

do.end358:                                        ; preds = %do.body354
  br label %if.end359

if.end359:                                        ; preds = %do.end358, %if.else345
  br label %if.end360

if.end360:                                        ; preds = %if.end359, %do.end344
  br label %if.end361

if.end361:                                        ; preds = %if.end360, %if.end303
  br label %do.end362

do.end362:                                        ; preds = %if.end361
  br label %do.end363

do.end363:                                        ; preds = %do.end362
  %243 = load ptr, ptr %sp, align 8
  %fill = getelementptr inbounds %struct.Fax3DecodeState, ptr %243, i32 0, i32 5
  %244 = load ptr, ptr %fill, align 8
  %245 = load ptr, ptr %buf.addr, align 8
  %246 = load ptr, ptr %thisrun, align 8
  %247 = load ptr, ptr %pa, align 8
  %248 = load i32, ptr %lastx, align 4
  call void %244(ptr noundef %245, ptr noundef %246, ptr noundef %247, i32 noundef %248)
  %249 = load ptr, ptr %sp, align 8
  %b364 = getelementptr inbounds %struct.Fax3DecodeState, ptr %249, i32 0, i32 0
  %rowbytes = getelementptr inbounds %struct.Fax3BaseState, ptr %b364, i32 0, i32 1
  %250 = load i32, ptr %rowbytes, align 4
  %251 = load ptr, ptr %buf.addr, align 8
  %idx.ext365 = zext i32 %250 to i64
  %add.ptr366 = getelementptr inbounds i8, ptr %251, i64 %idx.ext365
  store ptr %add.ptr366, ptr %buf.addr, align 8
  %252 = load ptr, ptr %sp, align 8
  %b367 = getelementptr inbounds %struct.Fax3DecodeState, ptr %252, i32 0, i32 0
  %rowbytes368 = getelementptr inbounds %struct.Fax3BaseState, ptr %b367, i32 0, i32 1
  %253 = load i32, ptr %rowbytes368, align 4
  %254 = load i32, ptr %occ.addr, align 4
  %sub369 = sub i32 %254, %253
  store i32 %sub369, ptr %occ.addr, align 4
  %255 = load i32, ptr %occ.addr, align 4
  %cmp370 = icmp ne i32 %255, 0
  br i1 %cmp370, label %if.then372, label %if.end373

if.then372:                                       ; preds = %do.end363
  %256 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %256, i32 0, i32 11
  %257 = load i32, ptr %tif_row, align 8
  %inc = add i32 %257, 1
  store i32 %inc, ptr %tif_row, align 8
  br label %if.end373

if.end373:                                        ; preds = %if.then372, %do.end363
  br label %while.cond, !llvm.loop !28

EOF1D:                                            ; preds = %if.then54, %if.then16
  br label %do.body374

do.body374:                                       ; preds = %EOF1D
  %258 = load i32, ptr %RunLength, align 4
  %tobool375 = icmp ne i32 %258, 0
  br i1 %tobool375, label %if.then376, label %if.end382

if.then376:                                       ; preds = %do.body374
  br label %do.body377

do.body377:                                       ; preds = %if.then376
  %259 = load i32, ptr %RunLength, align 4
  %add378 = add nsw i32 %259, 0
  %260 = load ptr, ptr %pa, align 8
  %incdec.ptr379 = getelementptr inbounds i32, ptr %260, i32 1
  store ptr %incdec.ptr379, ptr %pa, align 8
  store i32 %add378, ptr %260, align 4
  %261 = load i32, ptr %a0, align 4
  %add380 = add nsw i32 %261, 0
  store i32 %add380, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end381

do.end381:                                        ; preds = %do.body377
  br label %if.end382

if.end382:                                        ; preds = %do.end381, %do.body374
  %262 = load i32, ptr %a0, align 4
  %263 = load i32, ptr %lastx, align 4
  %cmp383 = icmp ne i32 %262, %263
  br i1 %cmp383, label %if.then385, label %if.end440

if.then385:                                       ; preds = %if.end382
  %264 = load ptr, ptr %tif.addr, align 8
  %265 = load i32, ptr %a0, align 4
  %266 = load i32, ptr %lastx, align 4
  call void @Fax3BadLength(ptr noundef @Fax3Decode1D.module, ptr noundef %264, i32 noundef %265, i32 noundef %266)
  br label %while.cond386

while.cond386:                                    ; preds = %while.body393, %if.then385
  %267 = load i32, ptr %a0, align 4
  %268 = load i32, ptr %lastx, align 4
  %cmp387 = icmp sgt i32 %267, %268
  br i1 %cmp387, label %land.rhs389, label %land.end392

land.rhs389:                                      ; preds = %while.cond386
  %269 = load ptr, ptr %pa, align 8
  %270 = load ptr, ptr %thisrun, align 8
  %cmp390 = icmp ugt ptr %269, %270
  br label %land.end392

land.end392:                                      ; preds = %land.rhs389, %while.cond386
  %271 = phi i1 [ false, %while.cond386 ], [ %cmp390, %land.rhs389 ]
  br i1 %271, label %while.body393, label %while.end396

while.body393:                                    ; preds = %land.end392
  %272 = load ptr, ptr %pa, align 8
  %incdec.ptr394 = getelementptr inbounds i32, ptr %272, i32 -1
  store ptr %incdec.ptr394, ptr %pa, align 8
  %273 = load i32, ptr %incdec.ptr394, align 4
  %274 = load i32, ptr %a0, align 4
  %sub395 = sub i32 %274, %273
  store i32 %sub395, ptr %a0, align 4
  br label %while.cond386, !llvm.loop !29

while.end396:                                     ; preds = %land.end392
  %275 = load i32, ptr %a0, align 4
  %276 = load i32, ptr %lastx, align 4
  %cmp397 = icmp slt i32 %275, %276
  br i1 %cmp397, label %if.then399, label %if.else424

if.then399:                                       ; preds = %while.end396
  %277 = load i32, ptr %a0, align 4
  %cmp400 = icmp slt i32 %277, 0
  br i1 %cmp400, label %if.then402, label %if.end403

if.then402:                                       ; preds = %if.then399
  store i32 0, ptr %a0, align 4
  br label %if.end403

if.end403:                                        ; preds = %if.then402, %if.then399
  %278 = load ptr, ptr %pa, align 8
  %279 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast404 = ptrtoint ptr %278 to i64
  %sub.ptr.rhs.cast405 = ptrtoint ptr %279 to i64
  %sub.ptr.sub406 = sub i64 %sub.ptr.lhs.cast404, %sub.ptr.rhs.cast405
  %sub.ptr.div407 = sdiv exact i64 %sub.ptr.sub406, 4
  %and408 = and i64 %sub.ptr.div407, 1
  %tobool409 = icmp ne i64 %and408, 0
  br i1 %tobool409, label %if.then410, label %if.end416

if.then410:                                       ; preds = %if.end403
  br label %do.body411

do.body411:                                       ; preds = %if.then410
  %280 = load i32, ptr %RunLength, align 4
  %add412 = add nsw i32 %280, 0
  %281 = load ptr, ptr %pa, align 8
  %incdec.ptr413 = getelementptr inbounds i32, ptr %281, i32 1
  store ptr %incdec.ptr413, ptr %pa, align 8
  store i32 %add412, ptr %281, align 4
  %282 = load i32, ptr %a0, align 4
  %add414 = add nsw i32 %282, 0
  store i32 %add414, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end415

do.end415:                                        ; preds = %do.body411
  br label %if.end416

if.end416:                                        ; preds = %do.end415, %if.end403
  br label %do.body417

do.body417:                                       ; preds = %if.end416
  %283 = load i32, ptr %RunLength, align 4
  %284 = load i32, ptr %lastx, align 4
  %285 = load i32, ptr %a0, align 4
  %sub418 = sub nsw i32 %284, %285
  %add419 = add nsw i32 %283, %sub418
  %286 = load ptr, ptr %pa, align 8
  %incdec.ptr420 = getelementptr inbounds i32, ptr %286, i32 1
  store ptr %incdec.ptr420, ptr %pa, align 8
  store i32 %add419, ptr %286, align 4
  %287 = load i32, ptr %lastx, align 4
  %288 = load i32, ptr %a0, align 4
  %sub421 = sub nsw i32 %287, %288
  %289 = load i32, ptr %a0, align 4
  %add422 = add nsw i32 %289, %sub421
  store i32 %add422, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end423

do.end423:                                        ; preds = %do.body417
  br label %if.end439

if.else424:                                       ; preds = %while.end396
  %290 = load i32, ptr %a0, align 4
  %291 = load i32, ptr %lastx, align 4
  %cmp425 = icmp sgt i32 %290, %291
  br i1 %cmp425, label %if.then427, label %if.end438

if.then427:                                       ; preds = %if.else424
  br label %do.body428

do.body428:                                       ; preds = %if.then427
  %292 = load i32, ptr %RunLength, align 4
  %293 = load i32, ptr %lastx, align 4
  %add429 = add nsw i32 %292, %293
  %294 = load ptr, ptr %pa, align 8
  %incdec.ptr430 = getelementptr inbounds i32, ptr %294, i32 1
  store ptr %incdec.ptr430, ptr %pa, align 8
  store i32 %add429, ptr %294, align 4
  %295 = load i32, ptr %lastx, align 4
  %296 = load i32, ptr %a0, align 4
  %add431 = add nsw i32 %296, %295
  store i32 %add431, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end432

do.end432:                                        ; preds = %do.body428
  br label %do.body433

do.body433:                                       ; preds = %do.end432
  %297 = load i32, ptr %RunLength, align 4
  %add434 = add nsw i32 %297, 0
  %298 = load ptr, ptr %pa, align 8
  %incdec.ptr435 = getelementptr inbounds i32, ptr %298, i32 1
  store ptr %incdec.ptr435, ptr %pa, align 8
  store i32 %add434, ptr %298, align 4
  %299 = load i32, ptr %a0, align 4
  %add436 = add nsw i32 %299, 0
  store i32 %add436, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end437

do.end437:                                        ; preds = %do.body433
  br label %if.end438

if.end438:                                        ; preds = %do.end437, %if.else424
  br label %if.end439

if.end439:                                        ; preds = %if.end438, %do.end423
  br label %if.end440

if.end440:                                        ; preds = %if.end439, %if.end382
  br label %do.end441

do.end441:                                        ; preds = %if.end440
  br label %EOF1Da

EOF1Da:                                           ; preds = %do.end441, %do.end294
  %300 = load ptr, ptr %sp, align 8
  %fill442 = getelementptr inbounds %struct.Fax3DecodeState, ptr %300, i32 0, i32 5
  %301 = load ptr, ptr %fill442, align 8
  %302 = load ptr, ptr %buf.addr, align 8
  %303 = load ptr, ptr %thisrun, align 8
  %304 = load ptr, ptr %pa, align 8
  %305 = load i32, ptr %lastx, align 4
  call void %301(ptr noundef %302, ptr noundef %303, ptr noundef %304, i32 noundef %305)
  br label %do.body443

do.body443:                                       ; preds = %EOF1Da
  %306 = load i32, ptr %BitsAvail, align 4
  %307 = load ptr, ptr %sp, align 8
  %bit444 = getelementptr inbounds %struct.Fax3DecodeState, ptr %307, i32 0, i32 3
  store i32 %306, ptr %bit444, align 4
  %308 = load i32, ptr %BitAcc, align 4
  %309 = load ptr, ptr %sp, align 8
  %data445 = getelementptr inbounds %struct.Fax3DecodeState, ptr %309, i32 0, i32 2
  store i32 %308, ptr %data445, align 8
  %310 = load i32, ptr %EOLcnt, align 4
  %311 = load ptr, ptr %sp, align 8
  %EOLcnt446 = getelementptr inbounds %struct.Fax3DecodeState, ptr %311, i32 0, i32 4
  store i32 %310, ptr %EOLcnt446, align 8
  %312 = load ptr, ptr %cp, align 8
  %313 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp447 = getelementptr inbounds %struct.tiff, ptr %313, i32 0, i32 42
  %314 = load ptr, ptr %tif_rawcp447, align 8
  %sub.ptr.lhs.cast448 = ptrtoint ptr %312 to i64
  %sub.ptr.rhs.cast449 = ptrtoint ptr %314 to i64
  %sub.ptr.sub450 = sub i64 %sub.ptr.lhs.cast448, %sub.ptr.rhs.cast449
  %315 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc451 = getelementptr inbounds %struct.tiff, ptr %315, i32 0, i32 43
  %316 = load i32, ptr %tif_rawcc451, align 8
  %conv452 = sext i32 %316 to i64
  %sub453 = sub nsw i64 %conv452, %sub.ptr.sub450
  %conv454 = trunc i64 %sub453 to i32
  store i32 %conv454, ptr %tif_rawcc451, align 8
  %317 = load ptr, ptr %cp, align 8
  %318 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp455 = getelementptr inbounds %struct.tiff, ptr %318, i32 0, i32 42
  store ptr %317, ptr %tif_rawcp455, align 8
  br label %do.end456

do.end456:                                        ; preds = %do.body443
  store i32 -1, ptr %retval, align 4
  br label %return

while.end457:                                     ; preds = %while.cond
  br label %do.body458

do.body458:                                       ; preds = %while.end457
  %319 = load i32, ptr %BitsAvail, align 4
  %320 = load ptr, ptr %sp, align 8
  %bit459 = getelementptr inbounds %struct.Fax3DecodeState, ptr %320, i32 0, i32 3
  store i32 %319, ptr %bit459, align 4
  %321 = load i32, ptr %BitAcc, align 4
  %322 = load ptr, ptr %sp, align 8
  %data460 = getelementptr inbounds %struct.Fax3DecodeState, ptr %322, i32 0, i32 2
  store i32 %321, ptr %data460, align 8
  %323 = load i32, ptr %EOLcnt, align 4
  %324 = load ptr, ptr %sp, align 8
  %EOLcnt461 = getelementptr inbounds %struct.Fax3DecodeState, ptr %324, i32 0, i32 4
  store i32 %323, ptr %EOLcnt461, align 8
  %325 = load ptr, ptr %cp, align 8
  %326 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp462 = getelementptr inbounds %struct.tiff, ptr %326, i32 0, i32 42
  %327 = load ptr, ptr %tif_rawcp462, align 8
  %sub.ptr.lhs.cast463 = ptrtoint ptr %325 to i64
  %sub.ptr.rhs.cast464 = ptrtoint ptr %327 to i64
  %sub.ptr.sub465 = sub i64 %sub.ptr.lhs.cast463, %sub.ptr.rhs.cast464
  %328 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc466 = getelementptr inbounds %struct.tiff, ptr %328, i32 0, i32 43
  %329 = load i32, ptr %tif_rawcc466, align 8
  %conv467 = sext i32 %329 to i64
  %sub468 = sub nsw i64 %conv467, %sub.ptr.sub465
  %conv469 = trunc i64 %sub468 to i32
  store i32 %conv469, ptr %tif_rawcc466, align 8
  %330 = load ptr, ptr %cp, align 8
  %331 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp470 = getelementptr inbounds %struct.tiff, ptr %331, i32 0, i32 42
  store ptr %330, ptr %tif_rawcp470, align 8
  br label %do.end471

do.end471:                                        ; preds = %do.body458
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end471, %do.end456
  %332 = load i32, ptr %retval, align 4
  ret i32 %332
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %13 = load i32, ptr %rowbytes, align 4
  call void @_TIFFmemset(ptr noundef %11, i32 noundef 0, i32 noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %14 = load ptr, ptr %sp, align 8
  %b3 = getelementptr inbounds %struct.Fax3EncodeState, ptr %14, i32 0, i32 0
  %groupoptions = getelementptr inbounds %struct.Fax3BaseState, ptr %b3, i32 0, i32 6
  %15 = load i32, ptr %groupoptions, align 8
  %and = and i32 %15, 1
  %tobool4 = icmp ne i32 %and, 0
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

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %5 = load i32, ptr %tif_rawcc, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 41
  %7 = load i32, ptr %tif_rawdatasize, align 8
  %cmp1 = icmp sge i32 %5, %7
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
  %14 = load i32, ptr %tif_rawcc3, align 8
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %tif_rawcc3, align 8
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @Fax3Encode(ptr noundef %tif, ptr noundef %bp, i32 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load i16, ptr %s.addr, align 2
  br label %while.cond

while.cond:                                       ; preds = %if.end48, %entry
  %3 = load i32, ptr %cc.addr, align 4
  %conv = sext i32 %3 to i64
  %cmp = icmp sgt i64 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %sp, align 8
  %b = getelementptr inbounds %struct.Fax3EncodeState, ptr %4, i32 0, i32 0
  %mode = getelementptr inbounds %struct.Fax3BaseState, ptr %b, i32 0, i32 0
  %5 = load i32, ptr %mode, align 8
  %and = and i32 %5, 2
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load ptr, ptr %tif.addr, align 8
  call void @Fax3PutEOL(ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %7 = load ptr, ptr %sp, align 8
  %b4 = getelementptr inbounds %struct.Fax3EncodeState, ptr %7, i32 0, i32 0
  %groupoptions = getelementptr inbounds %struct.Fax3BaseState, ptr %b4, i32 0, i32 6
  %8 = load i32, ptr %groupoptions, align 8
  %and5 = and i32 %8, 1
  %tobool = icmp ne i32 %and5, 0
  br i1 %tobool, label %if.then6, label %if.else32

if.then6:                                         ; preds = %if.end
  %9 = load ptr, ptr %sp, align 8
  %tag = getelementptr inbounds %struct.Fax3EncodeState, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %tag, align 8
  %cmp7 = icmp eq i32 %10, 0
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then6
  %11 = load ptr, ptr %tif.addr, align 8
  %12 = load ptr, ptr %bp.addr, align 8
  %13 = load ptr, ptr %sp, align 8
  %b10 = getelementptr inbounds %struct.Fax3EncodeState, ptr %13, i32 0, i32 0
  %rowpixels = getelementptr inbounds %struct.Fax3BaseState, ptr %b10, i32 0, i32 2
  %14 = load i32, ptr %rowpixels, align 8
  %call = call i32 @Fax3Encode1DRow(ptr noundef %11, ptr noundef %12, i32 noundef %14)
  %tobool11 = icmp ne i32 %call, 0
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.then9
  store i32 0, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.then9
  %15 = load ptr, ptr %sp, align 8
  %tag14 = getelementptr inbounds %struct.Fax3EncodeState, ptr %15, i32 0, i32 3
  store i32 1, ptr %tag14, align 8
  br label %if.end21

if.else:                                          ; preds = %if.then6
  %16 = load ptr, ptr %tif.addr, align 8
  %17 = load ptr, ptr %bp.addr, align 8
  %18 = load ptr, ptr %sp, align 8
  %refline = getelementptr inbounds %struct.Fax3EncodeState, ptr %18, i32 0, i32 4
  %19 = load ptr, ptr %refline, align 8
  %20 = load ptr, ptr %sp, align 8
  %b15 = getelementptr inbounds %struct.Fax3EncodeState, ptr %20, i32 0, i32 0
  %rowpixels16 = getelementptr inbounds %struct.Fax3BaseState, ptr %b15, i32 0, i32 2
  %21 = load i32, ptr %rowpixels16, align 8
  %call17 = call i32 @Fax3Encode2DRow(ptr noundef %16, ptr noundef %17, ptr noundef %19, i32 noundef %21)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.else
  %22 = load ptr, ptr %sp, align 8
  %k = getelementptr inbounds %struct.Fax3EncodeState, ptr %22, i32 0, i32 5
  %23 = load i32, ptr %k, align 8
  %dec = add nsw i32 %23, -1
  store i32 %dec, ptr %k, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end13
  %24 = load ptr, ptr %sp, align 8
  %k22 = getelementptr inbounds %struct.Fax3EncodeState, ptr %24, i32 0, i32 5
  %25 = load i32, ptr %k22, align 8
  %cmp23 = icmp eq i32 %25, 0
  br i1 %cmp23, label %if.then25, label %if.else28

if.then25:                                        ; preds = %if.end21
  %26 = load ptr, ptr %sp, align 8
  %tag26 = getelementptr inbounds %struct.Fax3EncodeState, ptr %26, i32 0, i32 3
  store i32 0, ptr %tag26, align 8
  %27 = load ptr, ptr %sp, align 8
  %maxk = getelementptr inbounds %struct.Fax3EncodeState, ptr %27, i32 0, i32 6
  %28 = load i32, ptr %maxk, align 4
  %sub = sub nsw i32 %28, 1
  %29 = load ptr, ptr %sp, align 8
  %k27 = getelementptr inbounds %struct.Fax3EncodeState, ptr %29, i32 0, i32 5
  store i32 %sub, ptr %k27, align 8
  br label %if.end31

if.else28:                                        ; preds = %if.end21
  %30 = load ptr, ptr %sp, align 8
  %refline29 = getelementptr inbounds %struct.Fax3EncodeState, ptr %30, i32 0, i32 4
  %31 = load ptr, ptr %refline29, align 8
  %32 = load ptr, ptr %bp.addr, align 8
  %33 = load ptr, ptr %sp, align 8
  %b30 = getelementptr inbounds %struct.Fax3EncodeState, ptr %33, i32 0, i32 0
  %rowbytes = getelementptr inbounds %struct.Fax3BaseState, ptr %b30, i32 0, i32 1
  %34 = load i32, ptr %rowbytes, align 4
  call void @_TIFFmemcpy(ptr noundef %31, ptr noundef %32, i32 noundef %34)
  br label %if.end31

if.end31:                                         ; preds = %if.else28, %if.then25
  br label %if.end39

if.else32:                                        ; preds = %if.end
  %35 = load ptr, ptr %tif.addr, align 8
  %36 = load ptr, ptr %bp.addr, align 8
  %37 = load ptr, ptr %sp, align 8
  %b33 = getelementptr inbounds %struct.Fax3EncodeState, ptr %37, i32 0, i32 0
  %rowpixels34 = getelementptr inbounds %struct.Fax3BaseState, ptr %b33, i32 0, i32 2
  %38 = load i32, ptr %rowpixels34, align 8
  %call35 = call i32 @Fax3Encode1DRow(ptr noundef %35, ptr noundef %36, i32 noundef %38)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.else32
  store i32 0, ptr %retval, align 4
  br label %return

if.end38:                                         ; preds = %if.else32
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end31
  %39 = load ptr, ptr %sp, align 8
  %b40 = getelementptr inbounds %struct.Fax3EncodeState, ptr %39, i32 0, i32 0
  %rowbytes41 = getelementptr inbounds %struct.Fax3BaseState, ptr %b40, i32 0, i32 1
  %40 = load i32, ptr %rowbytes41, align 4
  %41 = load ptr, ptr %bp.addr, align 8
  %idx.ext = zext i32 %40 to i64
  %add.ptr = getelementptr inbounds i8, ptr %41, i64 %idx.ext
  store ptr %add.ptr, ptr %bp.addr, align 8
  %42 = load ptr, ptr %sp, align 8
  %b42 = getelementptr inbounds %struct.Fax3EncodeState, ptr %42, i32 0, i32 0
  %rowbytes43 = getelementptr inbounds %struct.Fax3BaseState, ptr %b42, i32 0, i32 1
  %43 = load i32, ptr %rowbytes43, align 4
  %44 = load i32, ptr %cc.addr, align 4
  %sub44 = sub i32 %44, %43
  store i32 %sub44, ptr %cc.addr, align 4
  %45 = load i32, ptr %cc.addr, align 4
  %cmp45 = icmp ne i32 %45, 0
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end39
  %46 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %46, i32 0, i32 11
  %47 = load i32, ptr %tif_row, align 8
  %inc = add i32 %47, 1
  store i32 %inc, ptr %tif_row, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end39
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then37, %if.then19, %if.then12
  %48 = load i32, ptr %retval, align 4
  ret i32 %48
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %6 = load i32, ptr %groupoptions, align 8
  %and2 = and i32 %6, 1
  %tobool = icmp ne i32 %and2, 0
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
  %17 = load i32, ptr %tif_rawcc, align 8
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 41
  %19 = load i32, ptr %tif_rawdatasize, align 8
  %cmp8 = icmp sge i32 %17, %19
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
  %26 = load i32, ptr %tif_rawcc13, align 8
  %inc14 = add nsw i32 %26, 1
  store i32 %inc14, ptr %tif_rawcc13, align 8
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

; Function Attrs: noinline nounwind optnone ssp uwtable
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

declare ptr @_TIFFFieldWithTag(ptr noundef, i32 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i32 @TIFFTileRowSize(ptr noundef) #2

declare i32 @TIFFScanlineSize(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @Fax3Decode2D(ptr noundef %tif, ptr noundef %buf, i32 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %occ.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
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
  %x = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %occ, ptr %occ.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load ptr, ptr %sp, align 8
  %b = getelementptr inbounds %struct.Fax3DecodeState, ptr %2, i32 0, i32 0
  %rowpixels = getelementptr inbounds %struct.Fax3BaseState, ptr %b, i32 0, i32 2
  %3 = load i32, ptr %rowpixels, align 8
  store i32 %3, ptr %lastx, align 4
  %4 = load ptr, ptr %sp, align 8
  %bitmap1 = getelementptr inbounds %struct.Fax3DecodeState, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %bitmap1, align 8
  store ptr %5, ptr %bitmap, align 8
  %6 = load i16, ptr %s.addr, align 2
  br label %do.body

do.body:                                          ; preds = %entry
  %7 = load ptr, ptr %sp, align 8
  %data = getelementptr inbounds %struct.Fax3DecodeState, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %data, align 8
  store i32 %8, ptr %BitAcc, align 4
  %9 = load ptr, ptr %sp, align 8
  %bit = getelementptr inbounds %struct.Fax3DecodeState, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %bit, align 4
  store i32 %10, ptr %BitsAvail, align 4
  %11 = load ptr, ptr %sp, align 8
  %EOLcnt2 = getelementptr inbounds %struct.Fax3DecodeState, ptr %11, i32 0, i32 4
  %12 = load i32, ptr %EOLcnt2, align 8
  store i32 %12, ptr %EOLcnt, align 4
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %13, i32 0, i32 42
  %14 = load ptr, ptr %tif_rawcp, align 8
  store ptr %14, ptr %cp, align 8
  %15 = load ptr, ptr %cp, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 43
  %17 = load i32, ptr %tif_rawcc, align 8
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, ptr %15, i64 %idx.ext
  store ptr %add.ptr, ptr %ep, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %while.cond

while.cond:                                       ; preds = %if.end1102, %do.end
  %18 = load i32, ptr %occ.addr, align 4
  %conv = sext i32 %18 to i64
  %cmp = icmp sgt i64 %conv, 0
  br i1 %cmp, label %while.body, label %while.end1186

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
  br i1 %cmp5, label %if.then, label %if.end43

if.then:                                          ; preds = %do.body4
  br label %for.cond

for.cond:                                         ; preds = %do.end42, %if.then
  br label %do.body7

do.body7:                                         ; preds = %for.cond
  %22 = load i32, ptr %BitsAvail, align 4
  %cmp8 = icmp slt i32 %22, 11
  br i1 %cmp8, label %if.then10, label %if.end35

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
  br label %if.end34

if.else:                                          ; preds = %if.then10
  %26 = load ptr, ptr %bitmap, align 8
  %27 = load ptr, ptr %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr, ptr %cp, align 8
  %28 = load i8, ptr %27, align 1
  %idxprom = zext i8 %28 to i64
  %arrayidx = getelementptr inbounds i8, ptr %26, i64 %idxprom
  %29 = load i8, ptr %arrayidx, align 1
  %conv17 = zext i8 %29 to i32
  %30 = load i32, ptr %BitsAvail, align 4
  %shl = shl i32 %conv17, %30
  %31 = load i32, ptr %BitAcc, align 4
  %or = or i32 %31, %shl
  store i32 %or, ptr %BitAcc, align 4
  %32 = load i32, ptr %BitsAvail, align 4
  %add = add nsw i32 %32, 8
  store i32 %add, ptr %BitsAvail, align 4
  %cmp18 = icmp slt i32 %add, 11
  br i1 %cmp18, label %if.then20, label %if.end33

if.then20:                                        ; preds = %if.else
  %33 = load ptr, ptr %cp, align 8
  %34 = load ptr, ptr %ep, align 8
  %cmp21 = icmp uge ptr %33, %34
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.then20
  store i32 11, ptr %BitsAvail, align 4
  br label %if.end32

if.else24:                                        ; preds = %if.then20
  %35 = load ptr, ptr %bitmap, align 8
  %36 = load ptr, ptr %cp, align 8
  %incdec.ptr25 = getelementptr inbounds i8, ptr %36, i32 1
  store ptr %incdec.ptr25, ptr %cp, align 8
  %37 = load i8, ptr %36, align 1
  %idxprom26 = zext i8 %37 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %35, i64 %idxprom26
  %38 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %38 to i32
  %39 = load i32, ptr %BitsAvail, align 4
  %shl29 = shl i32 %conv28, %39
  %40 = load i32, ptr %BitAcc, align 4
  %or30 = or i32 %40, %shl29
  store i32 %or30, ptr %BitAcc, align 4
  %41 = load i32, ptr %BitsAvail, align 4
  %add31 = add nsw i32 %41, 8
  store i32 %add31, ptr %BitsAvail, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.else24, %if.then23
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.else
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %do.body7
  br label %do.end36

do.end36:                                         ; preds = %if.end35
  %42 = load i32, ptr %BitAcc, align 4
  %and = and i32 %42, 2047
  %cmp37 = icmp eq i32 %and, 0
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %do.end36
  br label %for.end

if.end40:                                         ; preds = %do.end36
  br label %do.body41

do.body41:                                        ; preds = %if.end40
  %43 = load i32, ptr %BitsAvail, align 4
  %sub = sub nsw i32 %43, 1
  store i32 %sub, ptr %BitsAvail, align 4
  %44 = load i32, ptr %BitAcc, align 4
  %shr = lshr i32 %44, 1
  store i32 %shr, ptr %BitAcc, align 4
  br label %do.end42

do.end42:                                         ; preds = %do.body41
  br label %for.cond

for.end:                                          ; preds = %if.then39
  br label %if.end43

if.end43:                                         ; preds = %for.end, %do.body4
  br label %for.cond44

for.cond44:                                       ; preds = %do.end73, %if.end43
  br label %do.body45

do.body45:                                        ; preds = %for.cond44
  %45 = load i32, ptr %BitsAvail, align 4
  %cmp46 = icmp slt i32 %45, 8
  br i1 %cmp46, label %if.then48, label %if.end65

if.then48:                                        ; preds = %do.body45
  %46 = load ptr, ptr %cp, align 8
  %47 = load ptr, ptr %ep, align 8
  %cmp49 = icmp uge ptr %46, %47
  br i1 %cmp49, label %if.then51, label %if.else56

if.then51:                                        ; preds = %if.then48
  %48 = load i32, ptr %BitsAvail, align 4
  %cmp52 = icmp eq i32 %48, 0
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.then51
  br label %EOF2D

if.end55:                                         ; preds = %if.then51
  store i32 8, ptr %BitsAvail, align 4
  br label %if.end64

if.else56:                                        ; preds = %if.then48
  %49 = load ptr, ptr %bitmap, align 8
  %50 = load ptr, ptr %cp, align 8
  %incdec.ptr57 = getelementptr inbounds i8, ptr %50, i32 1
  store ptr %incdec.ptr57, ptr %cp, align 8
  %51 = load i8, ptr %50, align 1
  %idxprom58 = zext i8 %51 to i64
  %arrayidx59 = getelementptr inbounds i8, ptr %49, i64 %idxprom58
  %52 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %52 to i32
  %53 = load i32, ptr %BitsAvail, align 4
  %shl61 = shl i32 %conv60, %53
  %54 = load i32, ptr %BitAcc, align 4
  %or62 = or i32 %54, %shl61
  store i32 %or62, ptr %BitAcc, align 4
  %55 = load i32, ptr %BitsAvail, align 4
  %add63 = add nsw i32 %55, 8
  store i32 %add63, ptr %BitsAvail, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.else56, %if.end55
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %do.body45
  br label %do.end66

do.end66:                                         ; preds = %if.end65
  %56 = load i32, ptr %BitAcc, align 4
  %and67 = and i32 %56, 255
  %tobool = icmp ne i32 %and67, 0
  br i1 %tobool, label %if.then68, label %if.end69

if.then68:                                        ; preds = %do.end66
  br label %for.end74

if.end69:                                         ; preds = %do.end66
  br label %do.body70

do.body70:                                        ; preds = %if.end69
  %57 = load i32, ptr %BitsAvail, align 4
  %sub71 = sub nsw i32 %57, 8
  store i32 %sub71, ptr %BitsAvail, align 4
  %58 = load i32, ptr %BitAcc, align 4
  %shr72 = lshr i32 %58, 8
  store i32 %shr72, ptr %BitAcc, align 4
  br label %do.end73

do.end73:                                         ; preds = %do.body70
  br label %for.cond44

for.end74:                                        ; preds = %if.then68
  br label %while.cond75

while.cond75:                                     ; preds = %do.end83, %for.end74
  %59 = load i32, ptr %BitAcc, align 4
  %and76 = and i32 %59, 1
  %cmp77 = icmp eq i32 %and76, 0
  br i1 %cmp77, label %while.body79, label %while.end

while.body79:                                     ; preds = %while.cond75
  br label %do.body80

do.body80:                                        ; preds = %while.body79
  %60 = load i32, ptr %BitsAvail, align 4
  %sub81 = sub nsw i32 %60, 1
  store i32 %sub81, ptr %BitsAvail, align 4
  %61 = load i32, ptr %BitAcc, align 4
  %shr82 = lshr i32 %61, 1
  store i32 %shr82, ptr %BitAcc, align 4
  br label %do.end83

do.end83:                                         ; preds = %do.body80
  br label %while.cond75, !llvm.loop !32

while.end:                                        ; preds = %while.cond75
  br label %do.body84

do.body84:                                        ; preds = %while.end
  %62 = load i32, ptr %BitsAvail, align 4
  %sub85 = sub nsw i32 %62, 1
  store i32 %sub85, ptr %BitsAvail, align 4
  %63 = load i32, ptr %BitAcc, align 4
  %shr86 = lshr i32 %63, 1
  store i32 %shr86, ptr %BitAcc, align 4
  br label %do.end87

do.end87:                                         ; preds = %do.body84
  store i32 0, ptr %EOLcnt, align 4
  br label %do.end88

do.end88:                                         ; preds = %do.end87
  br label %do.body89

do.body89:                                        ; preds = %do.end88
  %64 = load i32, ptr %BitsAvail, align 4
  %cmp90 = icmp slt i32 %64, 1
  br i1 %cmp90, label %if.then92, label %if.end109

if.then92:                                        ; preds = %do.body89
  %65 = load ptr, ptr %cp, align 8
  %66 = load ptr, ptr %ep, align 8
  %cmp93 = icmp uge ptr %65, %66
  br i1 %cmp93, label %if.then95, label %if.else100

if.then95:                                        ; preds = %if.then92
  %67 = load i32, ptr %BitsAvail, align 4
  %cmp96 = icmp eq i32 %67, 0
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.then95
  br label %EOF2D

if.end99:                                         ; preds = %if.then95
  store i32 1, ptr %BitsAvail, align 4
  br label %if.end108

if.else100:                                       ; preds = %if.then92
  %68 = load ptr, ptr %bitmap, align 8
  %69 = load ptr, ptr %cp, align 8
  %incdec.ptr101 = getelementptr inbounds i8, ptr %69, i32 1
  store ptr %incdec.ptr101, ptr %cp, align 8
  %70 = load i8, ptr %69, align 1
  %idxprom102 = zext i8 %70 to i64
  %arrayidx103 = getelementptr inbounds i8, ptr %68, i64 %idxprom102
  %71 = load i8, ptr %arrayidx103, align 1
  %conv104 = zext i8 %71 to i32
  %72 = load i32, ptr %BitsAvail, align 4
  %shl105 = shl i32 %conv104, %72
  %73 = load i32, ptr %BitAcc, align 4
  %or106 = or i32 %73, %shl105
  store i32 %or106, ptr %BitAcc, align 4
  %74 = load i32, ptr %BitsAvail, align 4
  %add107 = add nsw i32 %74, 8
  store i32 %add107, ptr %BitsAvail, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.else100, %if.end99
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %do.body89
  br label %do.end110

do.end110:                                        ; preds = %if.end109
  %75 = load i32, ptr %BitAcc, align 4
  %and111 = and i32 %75, 1
  store i32 %and111, ptr %is1D, align 4
  br label %do.body112

do.body112:                                       ; preds = %do.end110
  %76 = load i32, ptr %BitsAvail, align 4
  %sub113 = sub nsw i32 %76, 1
  store i32 %sub113, ptr %BitsAvail, align 4
  %77 = load i32, ptr %BitAcc, align 4
  %shr114 = lshr i32 %77, 1
  store i32 %shr114, ptr %BitAcc, align 4
  br label %do.end115

do.end115:                                        ; preds = %do.body112
  %78 = load ptr, ptr %sp, align 8
  %refruns = getelementptr inbounds %struct.Fax3DecodeState, ptr %78, i32 0, i32 7
  %79 = load ptr, ptr %refruns, align 8
  store ptr %79, ptr %pb, align 8
  %80 = load ptr, ptr %pb, align 8
  %incdec.ptr116 = getelementptr inbounds i32, ptr %80, i32 1
  store ptr %incdec.ptr116, ptr %pb, align 8
  %81 = load i32, ptr %80, align 4
  store i32 %81, ptr %b1, align 4
  %82 = load i32, ptr %is1D, align 4
  %tobool117 = icmp ne i32 %82, 0
  br i1 %tobool117, label %if.then118, label %if.else394

if.then118:                                       ; preds = %do.end115
  br label %do.body119

do.body119:                                       ; preds = %if.then118
  br label %for.cond120

for.cond120:                                      ; preds = %if.end262, %do.body119
  br label %for.cond121

for.cond121:                                      ; preds = %sw.epilog, %for.cond120
  br label %do.body122

do.body122:                                       ; preds = %for.cond121
  br label %do.body123

do.body123:                                       ; preds = %do.body122
  %83 = load i32, ptr %BitsAvail, align 4
  %cmp124 = icmp slt i32 %83, 12
  br i1 %cmp124, label %if.then126, label %if.end159

if.then126:                                       ; preds = %do.body123
  %84 = load ptr, ptr %cp, align 8
  %85 = load ptr, ptr %ep, align 8
  %cmp127 = icmp uge ptr %84, %85
  br i1 %cmp127, label %if.then129, label %if.else134

if.then129:                                       ; preds = %if.then126
  %86 = load i32, ptr %BitsAvail, align 4
  %cmp130 = icmp eq i32 %86, 0
  br i1 %cmp130, label %if.then132, label %if.end133

if.then132:                                       ; preds = %if.then129
  br label %eof1d

if.end133:                                        ; preds = %if.then129
  store i32 12, ptr %BitsAvail, align 4
  br label %if.end158

if.else134:                                       ; preds = %if.then126
  %87 = load ptr, ptr %bitmap, align 8
  %88 = load ptr, ptr %cp, align 8
  %incdec.ptr135 = getelementptr inbounds i8, ptr %88, i32 1
  store ptr %incdec.ptr135, ptr %cp, align 8
  %89 = load i8, ptr %88, align 1
  %idxprom136 = zext i8 %89 to i64
  %arrayidx137 = getelementptr inbounds i8, ptr %87, i64 %idxprom136
  %90 = load i8, ptr %arrayidx137, align 1
  %conv138 = zext i8 %90 to i32
  %91 = load i32, ptr %BitsAvail, align 4
  %shl139 = shl i32 %conv138, %91
  %92 = load i32, ptr %BitAcc, align 4
  %or140 = or i32 %92, %shl139
  store i32 %or140, ptr %BitAcc, align 4
  %93 = load i32, ptr %BitsAvail, align 4
  %add141 = add nsw i32 %93, 8
  store i32 %add141, ptr %BitsAvail, align 4
  %cmp142 = icmp slt i32 %add141, 12
  br i1 %cmp142, label %if.then144, label %if.end157

if.then144:                                       ; preds = %if.else134
  %94 = load ptr, ptr %cp, align 8
  %95 = load ptr, ptr %ep, align 8
  %cmp145 = icmp uge ptr %94, %95
  br i1 %cmp145, label %if.then147, label %if.else148

if.then147:                                       ; preds = %if.then144
  store i32 12, ptr %BitsAvail, align 4
  br label %if.end156

if.else148:                                       ; preds = %if.then144
  %96 = load ptr, ptr %bitmap, align 8
  %97 = load ptr, ptr %cp, align 8
  %incdec.ptr149 = getelementptr inbounds i8, ptr %97, i32 1
  store ptr %incdec.ptr149, ptr %cp, align 8
  %98 = load i8, ptr %97, align 1
  %idxprom150 = zext i8 %98 to i64
  %arrayidx151 = getelementptr inbounds i8, ptr %96, i64 %idxprom150
  %99 = load i8, ptr %arrayidx151, align 1
  %conv152 = zext i8 %99 to i32
  %100 = load i32, ptr %BitsAvail, align 4
  %shl153 = shl i32 %conv152, %100
  %101 = load i32, ptr %BitAcc, align 4
  %or154 = or i32 %101, %shl153
  store i32 %or154, ptr %BitAcc, align 4
  %102 = load i32, ptr %BitsAvail, align 4
  %add155 = add nsw i32 %102, 8
  store i32 %add155, ptr %BitsAvail, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.else148, %if.then147
  br label %if.end157

if.end157:                                        ; preds = %if.end156, %if.else134
  br label %if.end158

if.end158:                                        ; preds = %if.end157, %if.end133
  br label %if.end159

if.end159:                                        ; preds = %if.end158, %do.body123
  br label %do.end160

do.end160:                                        ; preds = %if.end159
  %103 = load i32, ptr %BitAcc, align 4
  %and161 = and i32 %103, 4095
  %idx.ext162 = zext i32 %and161 to i64
  %add.ptr163 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %idx.ext162
  store ptr %add.ptr163, ptr %TabEnt, align 8
  br label %do.body164

do.body164:                                       ; preds = %do.end160
  %104 = load ptr, ptr %TabEnt, align 8
  %Width = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %104, i32 0, i32 1
  %105 = load i8, ptr %Width, align 1
  %conv165 = zext i8 %105 to i32
  %106 = load i32, ptr %BitsAvail, align 4
  %sub166 = sub nsw i32 %106, %conv165
  store i32 %sub166, ptr %BitsAvail, align 4
  %107 = load ptr, ptr %TabEnt, align 8
  %Width167 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %107, i32 0, i32 1
  %108 = load i8, ptr %Width167, align 1
  %conv168 = zext i8 %108 to i32
  %109 = load i32, ptr %BitAcc, align 4
  %shr169 = lshr i32 %109, %conv168
  store i32 %shr169, ptr %BitAcc, align 4
  br label %do.end170

do.end170:                                        ; preds = %do.body164
  br label %do.end171

do.end171:                                        ; preds = %do.end170
  %110 = load ptr, ptr %TabEnt, align 8
  %State = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %110, i32 0, i32 0
  %111 = load i8, ptr %State, align 4
  %conv172 = zext i8 %111 to i32
  switch i32 %conv172, label %sw.default [
    i32 12, label %sw.bb
    i32 7, label %sw.bb173
    i32 9, label %sw.bb180
    i32 11, label %sw.bb180
  ]

sw.bb:                                            ; preds = %do.end171
  store i32 1, ptr %EOLcnt, align 4
  br label %done1d

sw.bb173:                                         ; preds = %do.end171
  br label %do.body174

do.body174:                                       ; preds = %sw.bb173
  %112 = load i32, ptr %RunLength, align 4
  %113 = load ptr, ptr %TabEnt, align 8
  %Param = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %113, i32 0, i32 2
  %114 = load i32, ptr %Param, align 4
  %add175 = add i32 %112, %114
  %115 = load ptr, ptr %pa, align 8
  %incdec.ptr176 = getelementptr inbounds i32, ptr %115, i32 1
  store ptr %incdec.ptr176, ptr %pa, align 8
  store i32 %add175, ptr %115, align 4
  %116 = load ptr, ptr %TabEnt, align 8
  %Param177 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %116, i32 0, i32 2
  %117 = load i32, ptr %Param177, align 4
  %118 = load i32, ptr %a0, align 4
  %add178 = add i32 %118, %117
  store i32 %add178, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end179

do.end179:                                        ; preds = %do.body174
  br label %doneWhite1d

sw.bb180:                                         ; preds = %do.end171, %do.end171
  %119 = load ptr, ptr %TabEnt, align 8
  %Param181 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %119, i32 0, i32 2
  %120 = load i32, ptr %Param181, align 4
  %121 = load i32, ptr %a0, align 4
  %add182 = add i32 %121, %120
  store i32 %add182, ptr %a0, align 4
  %122 = load ptr, ptr %TabEnt, align 8
  %Param183 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %122, i32 0, i32 2
  %123 = load i32, ptr %Param183, align 4
  %124 = load i32, ptr %RunLength, align 4
  %add184 = add i32 %124, %123
  store i32 %add184, ptr %RunLength, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end171
  %125 = load ptr, ptr %tif.addr, align 8
  %126 = load i32, ptr %a0, align 4
  call void @Fax3Unexpected(ptr noundef @Fax3Decode2D.module, ptr noundef %125, i32 noundef %126)
  br label %done1d

sw.epilog:                                        ; preds = %sw.bb180
  br label %for.cond121

doneWhite1d:                                      ; preds = %do.end179
  %127 = load i32, ptr %a0, align 4
  %128 = load i32, ptr %lastx, align 4
  %cmp185 = icmp sge i32 %127, %128
  br i1 %cmp185, label %if.then187, label %if.end188

if.then187:                                       ; preds = %doneWhite1d
  br label %done1d

if.end188:                                        ; preds = %doneWhite1d
  br label %for.cond189

for.cond189:                                      ; preds = %sw.epilog258, %if.end188
  br label %do.body190

do.body190:                                       ; preds = %for.cond189
  br label %do.body191

do.body191:                                       ; preds = %do.body190
  %129 = load i32, ptr %BitsAvail, align 4
  %cmp192 = icmp slt i32 %129, 13
  br i1 %cmp192, label %if.then194, label %if.end227

if.then194:                                       ; preds = %do.body191
  %130 = load ptr, ptr %cp, align 8
  %131 = load ptr, ptr %ep, align 8
  %cmp195 = icmp uge ptr %130, %131
  br i1 %cmp195, label %if.then197, label %if.else202

if.then197:                                       ; preds = %if.then194
  %132 = load i32, ptr %BitsAvail, align 4
  %cmp198 = icmp eq i32 %132, 0
  br i1 %cmp198, label %if.then200, label %if.end201

if.then200:                                       ; preds = %if.then197
  br label %eof1d

if.end201:                                        ; preds = %if.then197
  store i32 13, ptr %BitsAvail, align 4
  br label %if.end226

if.else202:                                       ; preds = %if.then194
  %133 = load ptr, ptr %bitmap, align 8
  %134 = load ptr, ptr %cp, align 8
  %incdec.ptr203 = getelementptr inbounds i8, ptr %134, i32 1
  store ptr %incdec.ptr203, ptr %cp, align 8
  %135 = load i8, ptr %134, align 1
  %idxprom204 = zext i8 %135 to i64
  %arrayidx205 = getelementptr inbounds i8, ptr %133, i64 %idxprom204
  %136 = load i8, ptr %arrayidx205, align 1
  %conv206 = zext i8 %136 to i32
  %137 = load i32, ptr %BitsAvail, align 4
  %shl207 = shl i32 %conv206, %137
  %138 = load i32, ptr %BitAcc, align 4
  %or208 = or i32 %138, %shl207
  store i32 %or208, ptr %BitAcc, align 4
  %139 = load i32, ptr %BitsAvail, align 4
  %add209 = add nsw i32 %139, 8
  store i32 %add209, ptr %BitsAvail, align 4
  %cmp210 = icmp slt i32 %add209, 13
  br i1 %cmp210, label %if.then212, label %if.end225

if.then212:                                       ; preds = %if.else202
  %140 = load ptr, ptr %cp, align 8
  %141 = load ptr, ptr %ep, align 8
  %cmp213 = icmp uge ptr %140, %141
  br i1 %cmp213, label %if.then215, label %if.else216

if.then215:                                       ; preds = %if.then212
  store i32 13, ptr %BitsAvail, align 4
  br label %if.end224

if.else216:                                       ; preds = %if.then212
  %142 = load ptr, ptr %bitmap, align 8
  %143 = load ptr, ptr %cp, align 8
  %incdec.ptr217 = getelementptr inbounds i8, ptr %143, i32 1
  store ptr %incdec.ptr217, ptr %cp, align 8
  %144 = load i8, ptr %143, align 1
  %idxprom218 = zext i8 %144 to i64
  %arrayidx219 = getelementptr inbounds i8, ptr %142, i64 %idxprom218
  %145 = load i8, ptr %arrayidx219, align 1
  %conv220 = zext i8 %145 to i32
  %146 = load i32, ptr %BitsAvail, align 4
  %shl221 = shl i32 %conv220, %146
  %147 = load i32, ptr %BitAcc, align 4
  %or222 = or i32 %147, %shl221
  store i32 %or222, ptr %BitAcc, align 4
  %148 = load i32, ptr %BitsAvail, align 4
  %add223 = add nsw i32 %148, 8
  store i32 %add223, ptr %BitsAvail, align 4
  br label %if.end224

if.end224:                                        ; preds = %if.else216, %if.then215
  br label %if.end225

if.end225:                                        ; preds = %if.end224, %if.else202
  br label %if.end226

if.end226:                                        ; preds = %if.end225, %if.end201
  br label %if.end227

if.end227:                                        ; preds = %if.end226, %do.body191
  br label %do.end228

do.end228:                                        ; preds = %if.end227
  %149 = load i32, ptr %BitAcc, align 4
  %and229 = and i32 %149, 8191
  %idx.ext230 = zext i32 %and229 to i64
  %add.ptr231 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %idx.ext230
  store ptr %add.ptr231, ptr %TabEnt, align 8
  br label %do.body232

do.body232:                                       ; preds = %do.end228
  %150 = load ptr, ptr %TabEnt, align 8
  %Width233 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %150, i32 0, i32 1
  %151 = load i8, ptr %Width233, align 1
  %conv234 = zext i8 %151 to i32
  %152 = load i32, ptr %BitsAvail, align 4
  %sub235 = sub nsw i32 %152, %conv234
  store i32 %sub235, ptr %BitsAvail, align 4
  %153 = load ptr, ptr %TabEnt, align 8
  %Width236 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %153, i32 0, i32 1
  %154 = load i8, ptr %Width236, align 1
  %conv237 = zext i8 %154 to i32
  %155 = load i32, ptr %BitAcc, align 4
  %shr238 = lshr i32 %155, %conv237
  store i32 %shr238, ptr %BitAcc, align 4
  br label %do.end239

do.end239:                                        ; preds = %do.body232
  br label %do.end240

do.end240:                                        ; preds = %do.end239
  %156 = load ptr, ptr %TabEnt, align 8
  %State241 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %156, i32 0, i32 0
  %157 = load i8, ptr %State241, align 4
  %conv242 = zext i8 %157 to i32
  switch i32 %conv242, label %sw.default257 [
    i32 12, label %sw.bb243
    i32 8, label %sw.bb244
    i32 10, label %sw.bb252
    i32 11, label %sw.bb252
  ]

sw.bb243:                                         ; preds = %do.end240
  store i32 1, ptr %EOLcnt, align 4
  br label %done1d

sw.bb244:                                         ; preds = %do.end240
  br label %do.body245

do.body245:                                       ; preds = %sw.bb244
  %158 = load i32, ptr %RunLength, align 4
  %159 = load ptr, ptr %TabEnt, align 8
  %Param246 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %159, i32 0, i32 2
  %160 = load i32, ptr %Param246, align 4
  %add247 = add i32 %158, %160
  %161 = load ptr, ptr %pa, align 8
  %incdec.ptr248 = getelementptr inbounds i32, ptr %161, i32 1
  store ptr %incdec.ptr248, ptr %pa, align 8
  store i32 %add247, ptr %161, align 4
  %162 = load ptr, ptr %TabEnt, align 8
  %Param249 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %162, i32 0, i32 2
  %163 = load i32, ptr %Param249, align 4
  %164 = load i32, ptr %a0, align 4
  %add250 = add i32 %164, %163
  store i32 %add250, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end251

do.end251:                                        ; preds = %do.body245
  br label %doneBlack1d

sw.bb252:                                         ; preds = %do.end240, %do.end240
  %165 = load ptr, ptr %TabEnt, align 8
  %Param253 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %165, i32 0, i32 2
  %166 = load i32, ptr %Param253, align 4
  %167 = load i32, ptr %a0, align 4
  %add254 = add i32 %167, %166
  store i32 %add254, ptr %a0, align 4
  %168 = load ptr, ptr %TabEnt, align 8
  %Param255 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %168, i32 0, i32 2
  %169 = load i32, ptr %Param255, align 4
  %170 = load i32, ptr %RunLength, align 4
  %add256 = add i32 %170, %169
  store i32 %add256, ptr %RunLength, align 4
  br label %sw.epilog258

sw.default257:                                    ; preds = %do.end240
  %171 = load ptr, ptr %tif.addr, align 8
  %172 = load i32, ptr %a0, align 4
  call void @Fax3Unexpected(ptr noundef @Fax3Decode2D.module, ptr noundef %171, i32 noundef %172)
  br label %done1d

sw.epilog258:                                     ; preds = %sw.bb252
  br label %for.cond189

doneBlack1d:                                      ; preds = %do.end251
  %173 = load i32, ptr %a0, align 4
  %174 = load i32, ptr %lastx, align 4
  %cmp259 = icmp sge i32 %173, %174
  br i1 %cmp259, label %if.then261, label %if.end262

if.then261:                                       ; preds = %doneBlack1d
  br label %done1d

if.end262:                                        ; preds = %doneBlack1d
  br label %for.cond120

eof1d:                                            ; preds = %if.then200, %if.then132
  %175 = load ptr, ptr %tif.addr, align 8
  %176 = load i32, ptr %a0, align 4
  call void @Fax3PrematureEOF(ptr noundef @Fax3Decode2D.module, ptr noundef %175, i32 noundef %176)
  br label %do.body263

do.body263:                                       ; preds = %eof1d
  %177 = load i32, ptr %RunLength, align 4
  %tobool264 = icmp ne i32 %177, 0
  br i1 %tobool264, label %if.then265, label %if.end271

if.then265:                                       ; preds = %do.body263
  br label %do.body266

do.body266:                                       ; preds = %if.then265
  %178 = load i32, ptr %RunLength, align 4
  %add267 = add nsw i32 %178, 0
  %179 = load ptr, ptr %pa, align 8
  %incdec.ptr268 = getelementptr inbounds i32, ptr %179, i32 1
  store ptr %incdec.ptr268, ptr %pa, align 8
  store i32 %add267, ptr %179, align 4
  %180 = load i32, ptr %a0, align 4
  %add269 = add nsw i32 %180, 0
  store i32 %add269, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end270

do.end270:                                        ; preds = %do.body266
  br label %if.end271

if.end271:                                        ; preds = %do.end270, %do.body263
  %181 = load i32, ptr %a0, align 4
  %182 = load i32, ptr %lastx, align 4
  %cmp272 = icmp ne i32 %181, %182
  br i1 %cmp272, label %if.then274, label %if.end323

if.then274:                                       ; preds = %if.end271
  %183 = load ptr, ptr %tif.addr, align 8
  %184 = load i32, ptr %a0, align 4
  %185 = load i32, ptr %lastx, align 4
  call void @Fax3BadLength(ptr noundef @Fax3Decode2D.module, ptr noundef %183, i32 noundef %184, i32 noundef %185)
  br label %while.cond275

while.cond275:                                    ; preds = %while.body280, %if.then274
  %186 = load i32, ptr %a0, align 4
  %187 = load i32, ptr %lastx, align 4
  %cmp276 = icmp sgt i32 %186, %187
  br i1 %cmp276, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond275
  %188 = load ptr, ptr %pa, align 8
  %189 = load ptr, ptr %thisrun, align 8
  %cmp278 = icmp ugt ptr %188, %189
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond275
  %190 = phi i1 [ false, %while.cond275 ], [ %cmp278, %land.rhs ]
  br i1 %190, label %while.body280, label %while.end283

while.body280:                                    ; preds = %land.end
  %191 = load ptr, ptr %pa, align 8
  %incdec.ptr281 = getelementptr inbounds i32, ptr %191, i32 -1
  store ptr %incdec.ptr281, ptr %pa, align 8
  %192 = load i32, ptr %incdec.ptr281, align 4
  %193 = load i32, ptr %a0, align 4
  %sub282 = sub i32 %193, %192
  store i32 %sub282, ptr %a0, align 4
  br label %while.cond275, !llvm.loop !33

while.end283:                                     ; preds = %land.end
  %194 = load i32, ptr %a0, align 4
  %195 = load i32, ptr %lastx, align 4
  %cmp284 = icmp slt i32 %194, %195
  br i1 %cmp284, label %if.then286, label %if.else307

if.then286:                                       ; preds = %while.end283
  %196 = load i32, ptr %a0, align 4
  %cmp287 = icmp slt i32 %196, 0
  br i1 %cmp287, label %if.then289, label %if.end290

if.then289:                                       ; preds = %if.then286
  store i32 0, ptr %a0, align 4
  br label %if.end290

if.end290:                                        ; preds = %if.then289, %if.then286
  %197 = load ptr, ptr %pa, align 8
  %198 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %197 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %198 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %and291 = and i64 %sub.ptr.div, 1
  %tobool292 = icmp ne i64 %and291, 0
  br i1 %tobool292, label %if.then293, label %if.end299

if.then293:                                       ; preds = %if.end290
  br label %do.body294

do.body294:                                       ; preds = %if.then293
  %199 = load i32, ptr %RunLength, align 4
  %add295 = add nsw i32 %199, 0
  %200 = load ptr, ptr %pa, align 8
  %incdec.ptr296 = getelementptr inbounds i32, ptr %200, i32 1
  store ptr %incdec.ptr296, ptr %pa, align 8
  store i32 %add295, ptr %200, align 4
  %201 = load i32, ptr %a0, align 4
  %add297 = add nsw i32 %201, 0
  store i32 %add297, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end298

do.end298:                                        ; preds = %do.body294
  br label %if.end299

if.end299:                                        ; preds = %do.end298, %if.end290
  br label %do.body300

do.body300:                                       ; preds = %if.end299
  %202 = load i32, ptr %RunLength, align 4
  %203 = load i32, ptr %lastx, align 4
  %204 = load i32, ptr %a0, align 4
  %sub301 = sub nsw i32 %203, %204
  %add302 = add nsw i32 %202, %sub301
  %205 = load ptr, ptr %pa, align 8
  %incdec.ptr303 = getelementptr inbounds i32, ptr %205, i32 1
  store ptr %incdec.ptr303, ptr %pa, align 8
  store i32 %add302, ptr %205, align 4
  %206 = load i32, ptr %lastx, align 4
  %207 = load i32, ptr %a0, align 4
  %sub304 = sub nsw i32 %206, %207
  %208 = load i32, ptr %a0, align 4
  %add305 = add nsw i32 %208, %sub304
  store i32 %add305, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end306

do.end306:                                        ; preds = %do.body300
  br label %if.end322

if.else307:                                       ; preds = %while.end283
  %209 = load i32, ptr %a0, align 4
  %210 = load i32, ptr %lastx, align 4
  %cmp308 = icmp sgt i32 %209, %210
  br i1 %cmp308, label %if.then310, label %if.end321

if.then310:                                       ; preds = %if.else307
  br label %do.body311

do.body311:                                       ; preds = %if.then310
  %211 = load i32, ptr %RunLength, align 4
  %212 = load i32, ptr %lastx, align 4
  %add312 = add nsw i32 %211, %212
  %213 = load ptr, ptr %pa, align 8
  %incdec.ptr313 = getelementptr inbounds i32, ptr %213, i32 1
  store ptr %incdec.ptr313, ptr %pa, align 8
  store i32 %add312, ptr %213, align 4
  %214 = load i32, ptr %lastx, align 4
  %215 = load i32, ptr %a0, align 4
  %add314 = add nsw i32 %215, %214
  store i32 %add314, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end315

do.end315:                                        ; preds = %do.body311
  br label %do.body316

do.body316:                                       ; preds = %do.end315
  %216 = load i32, ptr %RunLength, align 4
  %add317 = add nsw i32 %216, 0
  %217 = load ptr, ptr %pa, align 8
  %incdec.ptr318 = getelementptr inbounds i32, ptr %217, i32 1
  store ptr %incdec.ptr318, ptr %pa, align 8
  store i32 %add317, ptr %217, align 4
  %218 = load i32, ptr %a0, align 4
  %add319 = add nsw i32 %218, 0
  store i32 %add319, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end320

do.end320:                                        ; preds = %do.body316
  br label %if.end321

if.end321:                                        ; preds = %do.end320, %if.else307
  br label %if.end322

if.end322:                                        ; preds = %if.end321, %do.end306
  br label %if.end323

if.end323:                                        ; preds = %if.end322, %if.end271
  br label %do.end324

do.end324:                                        ; preds = %if.end323
  br label %EOF2Da

done1d:                                           ; preds = %if.then261, %sw.default257, %sw.bb243, %if.then187, %sw.default, %sw.bb
  br label %do.body325

do.body325:                                       ; preds = %done1d
  %219 = load i32, ptr %RunLength, align 4
  %tobool326 = icmp ne i32 %219, 0
  br i1 %tobool326, label %if.then327, label %if.end333

if.then327:                                       ; preds = %do.body325
  br label %do.body328

do.body328:                                       ; preds = %if.then327
  %220 = load i32, ptr %RunLength, align 4
  %add329 = add nsw i32 %220, 0
  %221 = load ptr, ptr %pa, align 8
  %incdec.ptr330 = getelementptr inbounds i32, ptr %221, i32 1
  store ptr %incdec.ptr330, ptr %pa, align 8
  store i32 %add329, ptr %221, align 4
  %222 = load i32, ptr %a0, align 4
  %add331 = add nsw i32 %222, 0
  store i32 %add331, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end332

do.end332:                                        ; preds = %do.body328
  br label %if.end333

if.end333:                                        ; preds = %do.end332, %do.body325
  %223 = load i32, ptr %a0, align 4
  %224 = load i32, ptr %lastx, align 4
  %cmp334 = icmp ne i32 %223, %224
  br i1 %cmp334, label %if.then336, label %if.end391

if.then336:                                       ; preds = %if.end333
  %225 = load ptr, ptr %tif.addr, align 8
  %226 = load i32, ptr %a0, align 4
  %227 = load i32, ptr %lastx, align 4
  call void @Fax3BadLength(ptr noundef @Fax3Decode2D.module, ptr noundef %225, i32 noundef %226, i32 noundef %227)
  br label %while.cond337

while.cond337:                                    ; preds = %while.body344, %if.then336
  %228 = load i32, ptr %a0, align 4
  %229 = load i32, ptr %lastx, align 4
  %cmp338 = icmp sgt i32 %228, %229
  br i1 %cmp338, label %land.rhs340, label %land.end343

land.rhs340:                                      ; preds = %while.cond337
  %230 = load ptr, ptr %pa, align 8
  %231 = load ptr, ptr %thisrun, align 8
  %cmp341 = icmp ugt ptr %230, %231
  br label %land.end343

land.end343:                                      ; preds = %land.rhs340, %while.cond337
  %232 = phi i1 [ false, %while.cond337 ], [ %cmp341, %land.rhs340 ]
  br i1 %232, label %while.body344, label %while.end347

while.body344:                                    ; preds = %land.end343
  %233 = load ptr, ptr %pa, align 8
  %incdec.ptr345 = getelementptr inbounds i32, ptr %233, i32 -1
  store ptr %incdec.ptr345, ptr %pa, align 8
  %234 = load i32, ptr %incdec.ptr345, align 4
  %235 = load i32, ptr %a0, align 4
  %sub346 = sub i32 %235, %234
  store i32 %sub346, ptr %a0, align 4
  br label %while.cond337, !llvm.loop !34

while.end347:                                     ; preds = %land.end343
  %236 = load i32, ptr %a0, align 4
  %237 = load i32, ptr %lastx, align 4
  %cmp348 = icmp slt i32 %236, %237
  br i1 %cmp348, label %if.then350, label %if.else375

if.then350:                                       ; preds = %while.end347
  %238 = load i32, ptr %a0, align 4
  %cmp351 = icmp slt i32 %238, 0
  br i1 %cmp351, label %if.then353, label %if.end354

if.then353:                                       ; preds = %if.then350
  store i32 0, ptr %a0, align 4
  br label %if.end354

if.end354:                                        ; preds = %if.then353, %if.then350
  %239 = load ptr, ptr %pa, align 8
  %240 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast355 = ptrtoint ptr %239 to i64
  %sub.ptr.rhs.cast356 = ptrtoint ptr %240 to i64
  %sub.ptr.sub357 = sub i64 %sub.ptr.lhs.cast355, %sub.ptr.rhs.cast356
  %sub.ptr.div358 = sdiv exact i64 %sub.ptr.sub357, 4
  %and359 = and i64 %sub.ptr.div358, 1
  %tobool360 = icmp ne i64 %and359, 0
  br i1 %tobool360, label %if.then361, label %if.end367

if.then361:                                       ; preds = %if.end354
  br label %do.body362

do.body362:                                       ; preds = %if.then361
  %241 = load i32, ptr %RunLength, align 4
  %add363 = add nsw i32 %241, 0
  %242 = load ptr, ptr %pa, align 8
  %incdec.ptr364 = getelementptr inbounds i32, ptr %242, i32 1
  store ptr %incdec.ptr364, ptr %pa, align 8
  store i32 %add363, ptr %242, align 4
  %243 = load i32, ptr %a0, align 4
  %add365 = add nsw i32 %243, 0
  store i32 %add365, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end366

do.end366:                                        ; preds = %do.body362
  br label %if.end367

if.end367:                                        ; preds = %do.end366, %if.end354
  br label %do.body368

do.body368:                                       ; preds = %if.end367
  %244 = load i32, ptr %RunLength, align 4
  %245 = load i32, ptr %lastx, align 4
  %246 = load i32, ptr %a0, align 4
  %sub369 = sub nsw i32 %245, %246
  %add370 = add nsw i32 %244, %sub369
  %247 = load ptr, ptr %pa, align 8
  %incdec.ptr371 = getelementptr inbounds i32, ptr %247, i32 1
  store ptr %incdec.ptr371, ptr %pa, align 8
  store i32 %add370, ptr %247, align 4
  %248 = load i32, ptr %lastx, align 4
  %249 = load i32, ptr %a0, align 4
  %sub372 = sub nsw i32 %248, %249
  %250 = load i32, ptr %a0, align 4
  %add373 = add nsw i32 %250, %sub372
  store i32 %add373, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end374

do.end374:                                        ; preds = %do.body368
  br label %if.end390

if.else375:                                       ; preds = %while.end347
  %251 = load i32, ptr %a0, align 4
  %252 = load i32, ptr %lastx, align 4
  %cmp376 = icmp sgt i32 %251, %252
  br i1 %cmp376, label %if.then378, label %if.end389

if.then378:                                       ; preds = %if.else375
  br label %do.body379

do.body379:                                       ; preds = %if.then378
  %253 = load i32, ptr %RunLength, align 4
  %254 = load i32, ptr %lastx, align 4
  %add380 = add nsw i32 %253, %254
  %255 = load ptr, ptr %pa, align 8
  %incdec.ptr381 = getelementptr inbounds i32, ptr %255, i32 1
  store ptr %incdec.ptr381, ptr %pa, align 8
  store i32 %add380, ptr %255, align 4
  %256 = load i32, ptr %lastx, align 4
  %257 = load i32, ptr %a0, align 4
  %add382 = add nsw i32 %257, %256
  store i32 %add382, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end383

do.end383:                                        ; preds = %do.body379
  br label %do.body384

do.body384:                                       ; preds = %do.end383
  %258 = load i32, ptr %RunLength, align 4
  %add385 = add nsw i32 %258, 0
  %259 = load ptr, ptr %pa, align 8
  %incdec.ptr386 = getelementptr inbounds i32, ptr %259, i32 1
  store ptr %incdec.ptr386, ptr %pa, align 8
  store i32 %add385, ptr %259, align 4
  %260 = load i32, ptr %a0, align 4
  %add387 = add nsw i32 %260, 0
  store i32 %add387, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end388

do.end388:                                        ; preds = %do.body384
  br label %if.end389

if.end389:                                        ; preds = %do.end388, %if.else375
  br label %if.end390

if.end390:                                        ; preds = %if.end389, %do.end374
  br label %if.end391

if.end391:                                        ; preds = %if.end390, %if.end333
  br label %do.end392

do.end392:                                        ; preds = %if.end391
  br label %do.end393

do.end393:                                        ; preds = %do.end392
  br label %if.end1083

if.else394:                                       ; preds = %do.end115
  br label %do.body395

do.body395:                                       ; preds = %if.else394
  br label %while.cond396

while.cond396:                                    ; preds = %sw.epilog969, %do.body395
  %261 = load i32, ptr %a0, align 4
  %262 = load i32, ptr %lastx, align 4
  %cmp397 = icmp slt i32 %261, %262
  br i1 %cmp397, label %while.body399, label %while.end970

while.body399:                                    ; preds = %while.cond396
  br label %do.body400

do.body400:                                       ; preds = %while.body399
  br label %do.body401

do.body401:                                       ; preds = %do.body400
  %263 = load i32, ptr %BitsAvail, align 4
  %cmp402 = icmp slt i32 %263, 7
  br i1 %cmp402, label %if.then404, label %if.end421

if.then404:                                       ; preds = %do.body401
  %264 = load ptr, ptr %cp, align 8
  %265 = load ptr, ptr %ep, align 8
  %cmp405 = icmp uge ptr %264, %265
  br i1 %cmp405, label %if.then407, label %if.else412

if.then407:                                       ; preds = %if.then404
  %266 = load i32, ptr %BitsAvail, align 4
  %cmp408 = icmp eq i32 %266, 0
  br i1 %cmp408, label %if.then410, label %if.end411

if.then410:                                       ; preds = %if.then407
  br label %eof2d

if.end411:                                        ; preds = %if.then407
  store i32 7, ptr %BitsAvail, align 4
  br label %if.end420

if.else412:                                       ; preds = %if.then404
  %267 = load ptr, ptr %bitmap, align 8
  %268 = load ptr, ptr %cp, align 8
  %incdec.ptr413 = getelementptr inbounds i8, ptr %268, i32 1
  store ptr %incdec.ptr413, ptr %cp, align 8
  %269 = load i8, ptr %268, align 1
  %idxprom414 = zext i8 %269 to i64
  %arrayidx415 = getelementptr inbounds i8, ptr %267, i64 %idxprom414
  %270 = load i8, ptr %arrayidx415, align 1
  %conv416 = zext i8 %270 to i32
  %271 = load i32, ptr %BitsAvail, align 4
  %shl417 = shl i32 %conv416, %271
  %272 = load i32, ptr %BitAcc, align 4
  %or418 = or i32 %272, %shl417
  store i32 %or418, ptr %BitAcc, align 4
  %273 = load i32, ptr %BitsAvail, align 4
  %add419 = add nsw i32 %273, 8
  store i32 %add419, ptr %BitsAvail, align 4
  br label %if.end420

if.end420:                                        ; preds = %if.else412, %if.end411
  br label %if.end421

if.end421:                                        ; preds = %if.end420, %do.body401
  br label %do.end422

do.end422:                                        ; preds = %if.end421
  %274 = load i32, ptr %BitAcc, align 4
  %and423 = and i32 %274, 127
  %idx.ext424 = zext i32 %and423 to i64
  %add.ptr425 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxMainTable, i64 %idx.ext424
  store ptr %add.ptr425, ptr %TabEnt, align 8
  br label %do.body426

do.body426:                                       ; preds = %do.end422
  %275 = load ptr, ptr %TabEnt, align 8
  %Width427 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %275, i32 0, i32 1
  %276 = load i8, ptr %Width427, align 1
  %conv428 = zext i8 %276 to i32
  %277 = load i32, ptr %BitsAvail, align 4
  %sub429 = sub nsw i32 %277, %conv428
  store i32 %sub429, ptr %BitsAvail, align 4
  %278 = load ptr, ptr %TabEnt, align 8
  %Width430 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %278, i32 0, i32 1
  %279 = load i8, ptr %Width430, align 1
  %conv431 = zext i8 %279 to i32
  %280 = load i32, ptr %BitAcc, align 4
  %shr432 = lshr i32 %280, %conv431
  store i32 %shr432, ptr %BitAcc, align 4
  br label %do.end433

do.end433:                                        ; preds = %do.body426
  br label %do.end434

do.end434:                                        ; preds = %do.end433
  %281 = load ptr, ptr %TabEnt, align 8
  %State435 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %281, i32 0, i32 0
  %282 = load i8, ptr %State435, align 4
  %conv436 = zext i8 %282 to i32
  switch i32 %conv436, label %sw.default900 [
    i32 1, label %sw.bb437
    i32 2, label %sw.bb464
    i32 3, label %sw.bb770
    i32 4, label %sw.bb800
    i32 5, label %sw.bb834
    i32 6, label %sw.bb868
    i32 12, label %sw.bb871
  ]

sw.bb437:                                         ; preds = %do.end434
  br label %do.body438

do.body438:                                       ; preds = %sw.bb437
  %283 = load ptr, ptr %pa, align 8
  %284 = load ptr, ptr %thisrun, align 8
  %cmp439 = icmp ne ptr %283, %284
  br i1 %cmp439, label %if.then441, label %if.end456

if.then441:                                       ; preds = %do.body438
  br label %while.cond442

while.cond442:                                    ; preds = %while.body449, %if.then441
  %285 = load i32, ptr %b1, align 4
  %286 = load i32, ptr %a0, align 4
  %cmp443 = icmp sle i32 %285, %286
  br i1 %cmp443, label %land.rhs445, label %land.end448

land.rhs445:                                      ; preds = %while.cond442
  %287 = load i32, ptr %b1, align 4
  %288 = load i32, ptr %lastx, align 4
  %cmp446 = icmp slt i32 %287, %288
  br label %land.end448

land.end448:                                      ; preds = %land.rhs445, %while.cond442
  %289 = phi i1 [ false, %while.cond442 ], [ %cmp446, %land.rhs445 ]
  br i1 %289, label %while.body449, label %while.end455

while.body449:                                    ; preds = %land.end448
  %290 = load ptr, ptr %pb, align 8
  %arrayidx450 = getelementptr inbounds i32, ptr %290, i64 0
  %291 = load i32, ptr %arrayidx450, align 4
  %292 = load ptr, ptr %pb, align 8
  %arrayidx451 = getelementptr inbounds i32, ptr %292, i64 1
  %293 = load i32, ptr %arrayidx451, align 4
  %add452 = add i32 %291, %293
  %294 = load i32, ptr %b1, align 4
  %add453 = add i32 %294, %add452
  store i32 %add453, ptr %b1, align 4
  %295 = load ptr, ptr %pb, align 8
  %add.ptr454 = getelementptr inbounds i32, ptr %295, i64 2
  store ptr %add.ptr454, ptr %pb, align 8
  br label %while.cond442, !llvm.loop !35

while.end455:                                     ; preds = %land.end448
  br label %if.end456

if.end456:                                        ; preds = %while.end455, %do.body438
  br label %do.end457

do.end457:                                        ; preds = %if.end456
  %296 = load ptr, ptr %pb, align 8
  %incdec.ptr458 = getelementptr inbounds i32, ptr %296, i32 1
  store ptr %incdec.ptr458, ptr %pb, align 8
  %297 = load i32, ptr %296, align 4
  %298 = load i32, ptr %b1, align 4
  %add459 = add i32 %298, %297
  store i32 %add459, ptr %b1, align 4
  %299 = load i32, ptr %b1, align 4
  %300 = load i32, ptr %a0, align 4
  %sub460 = sub nsw i32 %299, %300
  %301 = load i32, ptr %RunLength, align 4
  %add461 = add nsw i32 %301, %sub460
  store i32 %add461, ptr %RunLength, align 4
  %302 = load i32, ptr %b1, align 4
  store i32 %302, ptr %a0, align 4
  %303 = load ptr, ptr %pb, align 8
  %incdec.ptr462 = getelementptr inbounds i32, ptr %303, i32 1
  store ptr %incdec.ptr462, ptr %pb, align 8
  %304 = load i32, ptr %303, align 4
  %305 = load i32, ptr %b1, align 4
  %add463 = add i32 %305, %304
  store i32 %add463, ptr %b1, align 4
  br label %sw.epilog969

sw.bb464:                                         ; preds = %do.end434
  %306 = load ptr, ptr %pa, align 8
  %307 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast465 = ptrtoint ptr %306 to i64
  %sub.ptr.rhs.cast466 = ptrtoint ptr %307 to i64
  %sub.ptr.sub467 = sub i64 %sub.ptr.lhs.cast465, %sub.ptr.rhs.cast466
  %sub.ptr.div468 = sdiv exact i64 %sub.ptr.sub467, 4
  %and469 = and i64 %sub.ptr.div468, 1
  %tobool470 = icmp ne i64 %and469, 0
  br i1 %tobool470, label %if.then471, label %if.else610

if.then471:                                       ; preds = %sw.bb464
  br label %for.cond472

for.cond472:                                      ; preds = %sw.epilog540, %if.then471
  br label %do.body473

do.body473:                                       ; preds = %for.cond472
  br label %do.body474

do.body474:                                       ; preds = %do.body473
  %308 = load i32, ptr %BitsAvail, align 4
  %cmp475 = icmp slt i32 %308, 13
  br i1 %cmp475, label %if.then477, label %if.end510

if.then477:                                       ; preds = %do.body474
  %309 = load ptr, ptr %cp, align 8
  %310 = load ptr, ptr %ep, align 8
  %cmp478 = icmp uge ptr %309, %310
  br i1 %cmp478, label %if.then480, label %if.else485

if.then480:                                       ; preds = %if.then477
  %311 = load i32, ptr %BitsAvail, align 4
  %cmp481 = icmp eq i32 %311, 0
  br i1 %cmp481, label %if.then483, label %if.end484

if.then483:                                       ; preds = %if.then480
  br label %eof2d

if.end484:                                        ; preds = %if.then480
  store i32 13, ptr %BitsAvail, align 4
  br label %if.end509

if.else485:                                       ; preds = %if.then477
  %312 = load ptr, ptr %bitmap, align 8
  %313 = load ptr, ptr %cp, align 8
  %incdec.ptr486 = getelementptr inbounds i8, ptr %313, i32 1
  store ptr %incdec.ptr486, ptr %cp, align 8
  %314 = load i8, ptr %313, align 1
  %idxprom487 = zext i8 %314 to i64
  %arrayidx488 = getelementptr inbounds i8, ptr %312, i64 %idxprom487
  %315 = load i8, ptr %arrayidx488, align 1
  %conv489 = zext i8 %315 to i32
  %316 = load i32, ptr %BitsAvail, align 4
  %shl490 = shl i32 %conv489, %316
  %317 = load i32, ptr %BitAcc, align 4
  %or491 = or i32 %317, %shl490
  store i32 %or491, ptr %BitAcc, align 4
  %318 = load i32, ptr %BitsAvail, align 4
  %add492 = add nsw i32 %318, 8
  store i32 %add492, ptr %BitsAvail, align 4
  %cmp493 = icmp slt i32 %add492, 13
  br i1 %cmp493, label %if.then495, label %if.end508

if.then495:                                       ; preds = %if.else485
  %319 = load ptr, ptr %cp, align 8
  %320 = load ptr, ptr %ep, align 8
  %cmp496 = icmp uge ptr %319, %320
  br i1 %cmp496, label %if.then498, label %if.else499

if.then498:                                       ; preds = %if.then495
  store i32 13, ptr %BitsAvail, align 4
  br label %if.end507

if.else499:                                       ; preds = %if.then495
  %321 = load ptr, ptr %bitmap, align 8
  %322 = load ptr, ptr %cp, align 8
  %incdec.ptr500 = getelementptr inbounds i8, ptr %322, i32 1
  store ptr %incdec.ptr500, ptr %cp, align 8
  %323 = load i8, ptr %322, align 1
  %idxprom501 = zext i8 %323 to i64
  %arrayidx502 = getelementptr inbounds i8, ptr %321, i64 %idxprom501
  %324 = load i8, ptr %arrayidx502, align 1
  %conv503 = zext i8 %324 to i32
  %325 = load i32, ptr %BitsAvail, align 4
  %shl504 = shl i32 %conv503, %325
  %326 = load i32, ptr %BitAcc, align 4
  %or505 = or i32 %326, %shl504
  store i32 %or505, ptr %BitAcc, align 4
  %327 = load i32, ptr %BitsAvail, align 4
  %add506 = add nsw i32 %327, 8
  store i32 %add506, ptr %BitsAvail, align 4
  br label %if.end507

if.end507:                                        ; preds = %if.else499, %if.then498
  br label %if.end508

if.end508:                                        ; preds = %if.end507, %if.else485
  br label %if.end509

if.end509:                                        ; preds = %if.end508, %if.end484
  br label %if.end510

if.end510:                                        ; preds = %if.end509, %do.body474
  br label %do.end511

do.end511:                                        ; preds = %if.end510
  %328 = load i32, ptr %BitAcc, align 4
  %and512 = and i32 %328, 8191
  %idx.ext513 = zext i32 %and512 to i64
  %add.ptr514 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %idx.ext513
  store ptr %add.ptr514, ptr %TabEnt, align 8
  br label %do.body515

do.body515:                                       ; preds = %do.end511
  %329 = load ptr, ptr %TabEnt, align 8
  %Width516 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %329, i32 0, i32 1
  %330 = load i8, ptr %Width516, align 1
  %conv517 = zext i8 %330 to i32
  %331 = load i32, ptr %BitsAvail, align 4
  %sub518 = sub nsw i32 %331, %conv517
  store i32 %sub518, ptr %BitsAvail, align 4
  %332 = load ptr, ptr %TabEnt, align 8
  %Width519 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %332, i32 0, i32 1
  %333 = load i8, ptr %Width519, align 1
  %conv520 = zext i8 %333 to i32
  %334 = load i32, ptr %BitAcc, align 4
  %shr521 = lshr i32 %334, %conv520
  store i32 %shr521, ptr %BitAcc, align 4
  br label %do.end522

do.end522:                                        ; preds = %do.body515
  br label %do.end523

do.end523:                                        ; preds = %do.end522
  %335 = load ptr, ptr %TabEnt, align 8
  %State524 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %335, i32 0, i32 0
  %336 = load i8, ptr %State524, align 4
  %conv525 = zext i8 %336 to i32
  switch i32 %conv525, label %sw.default539 [
    i32 8, label %sw.bb526
    i32 10, label %sw.bb534
    i32 11, label %sw.bb534
  ]

sw.bb526:                                         ; preds = %do.end523
  br label %do.body527

do.body527:                                       ; preds = %sw.bb526
  %337 = load i32, ptr %RunLength, align 4
  %338 = load ptr, ptr %TabEnt, align 8
  %Param528 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %338, i32 0, i32 2
  %339 = load i32, ptr %Param528, align 4
  %add529 = add i32 %337, %339
  %340 = load ptr, ptr %pa, align 8
  %incdec.ptr530 = getelementptr inbounds i32, ptr %340, i32 1
  store ptr %incdec.ptr530, ptr %pa, align 8
  store i32 %add529, ptr %340, align 4
  %341 = load ptr, ptr %TabEnt, align 8
  %Param531 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %341, i32 0, i32 2
  %342 = load i32, ptr %Param531, align 4
  %343 = load i32, ptr %a0, align 4
  %add532 = add i32 %343, %342
  store i32 %add532, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end533

do.end533:                                        ; preds = %do.body527
  br label %doneWhite2da

sw.bb534:                                         ; preds = %do.end523, %do.end523
  %344 = load ptr, ptr %TabEnt, align 8
  %Param535 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %344, i32 0, i32 2
  %345 = load i32, ptr %Param535, align 4
  %346 = load i32, ptr %a0, align 4
  %add536 = add i32 %346, %345
  store i32 %add536, ptr %a0, align 4
  %347 = load ptr, ptr %TabEnt, align 8
  %Param537 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %347, i32 0, i32 2
  %348 = load i32, ptr %Param537, align 4
  %349 = load i32, ptr %RunLength, align 4
  %add538 = add i32 %349, %348
  store i32 %add538, ptr %RunLength, align 4
  br label %sw.epilog540

sw.default539:                                    ; preds = %do.end523
  br label %badBlack2d

sw.epilog540:                                     ; preds = %sw.bb534
  br label %for.cond472

doneWhite2da:                                     ; preds = %do.end533
  br label %for.cond541

for.cond541:                                      ; preds = %sw.epilog609, %doneWhite2da
  br label %do.body542

do.body542:                                       ; preds = %for.cond541
  br label %do.body543

do.body543:                                       ; preds = %do.body542
  %350 = load i32, ptr %BitsAvail, align 4
  %cmp544 = icmp slt i32 %350, 12
  br i1 %cmp544, label %if.then546, label %if.end579

if.then546:                                       ; preds = %do.body543
  %351 = load ptr, ptr %cp, align 8
  %352 = load ptr, ptr %ep, align 8
  %cmp547 = icmp uge ptr %351, %352
  br i1 %cmp547, label %if.then549, label %if.else554

if.then549:                                       ; preds = %if.then546
  %353 = load i32, ptr %BitsAvail, align 4
  %cmp550 = icmp eq i32 %353, 0
  br i1 %cmp550, label %if.then552, label %if.end553

if.then552:                                       ; preds = %if.then549
  br label %eof2d

if.end553:                                        ; preds = %if.then549
  store i32 12, ptr %BitsAvail, align 4
  br label %if.end578

if.else554:                                       ; preds = %if.then546
  %354 = load ptr, ptr %bitmap, align 8
  %355 = load ptr, ptr %cp, align 8
  %incdec.ptr555 = getelementptr inbounds i8, ptr %355, i32 1
  store ptr %incdec.ptr555, ptr %cp, align 8
  %356 = load i8, ptr %355, align 1
  %idxprom556 = zext i8 %356 to i64
  %arrayidx557 = getelementptr inbounds i8, ptr %354, i64 %idxprom556
  %357 = load i8, ptr %arrayidx557, align 1
  %conv558 = zext i8 %357 to i32
  %358 = load i32, ptr %BitsAvail, align 4
  %shl559 = shl i32 %conv558, %358
  %359 = load i32, ptr %BitAcc, align 4
  %or560 = or i32 %359, %shl559
  store i32 %or560, ptr %BitAcc, align 4
  %360 = load i32, ptr %BitsAvail, align 4
  %add561 = add nsw i32 %360, 8
  store i32 %add561, ptr %BitsAvail, align 4
  %cmp562 = icmp slt i32 %add561, 12
  br i1 %cmp562, label %if.then564, label %if.end577

if.then564:                                       ; preds = %if.else554
  %361 = load ptr, ptr %cp, align 8
  %362 = load ptr, ptr %ep, align 8
  %cmp565 = icmp uge ptr %361, %362
  br i1 %cmp565, label %if.then567, label %if.else568

if.then567:                                       ; preds = %if.then564
  store i32 12, ptr %BitsAvail, align 4
  br label %if.end576

if.else568:                                       ; preds = %if.then564
  %363 = load ptr, ptr %bitmap, align 8
  %364 = load ptr, ptr %cp, align 8
  %incdec.ptr569 = getelementptr inbounds i8, ptr %364, i32 1
  store ptr %incdec.ptr569, ptr %cp, align 8
  %365 = load i8, ptr %364, align 1
  %idxprom570 = zext i8 %365 to i64
  %arrayidx571 = getelementptr inbounds i8, ptr %363, i64 %idxprom570
  %366 = load i8, ptr %arrayidx571, align 1
  %conv572 = zext i8 %366 to i32
  %367 = load i32, ptr %BitsAvail, align 4
  %shl573 = shl i32 %conv572, %367
  %368 = load i32, ptr %BitAcc, align 4
  %or574 = or i32 %368, %shl573
  store i32 %or574, ptr %BitAcc, align 4
  %369 = load i32, ptr %BitsAvail, align 4
  %add575 = add nsw i32 %369, 8
  store i32 %add575, ptr %BitsAvail, align 4
  br label %if.end576

if.end576:                                        ; preds = %if.else568, %if.then567
  br label %if.end577

if.end577:                                        ; preds = %if.end576, %if.else554
  br label %if.end578

if.end578:                                        ; preds = %if.end577, %if.end553
  br label %if.end579

if.end579:                                        ; preds = %if.end578, %do.body543
  br label %do.end580

do.end580:                                        ; preds = %if.end579
  %370 = load i32, ptr %BitAcc, align 4
  %and581 = and i32 %370, 4095
  %idx.ext582 = zext i32 %and581 to i64
  %add.ptr583 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %idx.ext582
  store ptr %add.ptr583, ptr %TabEnt, align 8
  br label %do.body584

do.body584:                                       ; preds = %do.end580
  %371 = load ptr, ptr %TabEnt, align 8
  %Width585 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %371, i32 0, i32 1
  %372 = load i8, ptr %Width585, align 1
  %conv586 = zext i8 %372 to i32
  %373 = load i32, ptr %BitsAvail, align 4
  %sub587 = sub nsw i32 %373, %conv586
  store i32 %sub587, ptr %BitsAvail, align 4
  %374 = load ptr, ptr %TabEnt, align 8
  %Width588 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %374, i32 0, i32 1
  %375 = load i8, ptr %Width588, align 1
  %conv589 = zext i8 %375 to i32
  %376 = load i32, ptr %BitAcc, align 4
  %shr590 = lshr i32 %376, %conv589
  store i32 %shr590, ptr %BitAcc, align 4
  br label %do.end591

do.end591:                                        ; preds = %do.body584
  br label %do.end592

do.end592:                                        ; preds = %do.end591
  %377 = load ptr, ptr %TabEnt, align 8
  %State593 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %377, i32 0, i32 0
  %378 = load i8, ptr %State593, align 4
  %conv594 = zext i8 %378 to i32
  switch i32 %conv594, label %sw.default608 [
    i32 7, label %sw.bb595
    i32 9, label %sw.bb603
    i32 11, label %sw.bb603
  ]

sw.bb595:                                         ; preds = %do.end592
  br label %do.body596

do.body596:                                       ; preds = %sw.bb595
  %379 = load i32, ptr %RunLength, align 4
  %380 = load ptr, ptr %TabEnt, align 8
  %Param597 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %380, i32 0, i32 2
  %381 = load i32, ptr %Param597, align 4
  %add598 = add i32 %379, %381
  %382 = load ptr, ptr %pa, align 8
  %incdec.ptr599 = getelementptr inbounds i32, ptr %382, i32 1
  store ptr %incdec.ptr599, ptr %pa, align 8
  store i32 %add598, ptr %382, align 4
  %383 = load ptr, ptr %TabEnt, align 8
  %Param600 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %383, i32 0, i32 2
  %384 = load i32, ptr %Param600, align 4
  %385 = load i32, ptr %a0, align 4
  %add601 = add i32 %385, %384
  store i32 %add601, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end602

do.end602:                                        ; preds = %do.body596
  br label %doneBlack2da

sw.bb603:                                         ; preds = %do.end592, %do.end592
  %386 = load ptr, ptr %TabEnt, align 8
  %Param604 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %386, i32 0, i32 2
  %387 = load i32, ptr %Param604, align 4
  %388 = load i32, ptr %a0, align 4
  %add605 = add i32 %388, %387
  store i32 %add605, ptr %a0, align 4
  %389 = load ptr, ptr %TabEnt, align 8
  %Param606 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %389, i32 0, i32 2
  %390 = load i32, ptr %Param606, align 4
  %391 = load i32, ptr %RunLength, align 4
  %add607 = add i32 %391, %390
  store i32 %add607, ptr %RunLength, align 4
  br label %sw.epilog609

sw.default608:                                    ; preds = %do.end592
  br label %badWhite2d

sw.epilog609:                                     ; preds = %sw.bb603
  br label %for.cond541

doneBlack2da:                                     ; preds = %do.end602
  br label %if.end749

if.else610:                                       ; preds = %sw.bb464
  br label %for.cond611

for.cond611:                                      ; preds = %sw.epilog679, %if.else610
  br label %do.body612

do.body612:                                       ; preds = %for.cond611
  br label %do.body613

do.body613:                                       ; preds = %do.body612
  %392 = load i32, ptr %BitsAvail, align 4
  %cmp614 = icmp slt i32 %392, 12
  br i1 %cmp614, label %if.then616, label %if.end649

if.then616:                                       ; preds = %do.body613
  %393 = load ptr, ptr %cp, align 8
  %394 = load ptr, ptr %ep, align 8
  %cmp617 = icmp uge ptr %393, %394
  br i1 %cmp617, label %if.then619, label %if.else624

if.then619:                                       ; preds = %if.then616
  %395 = load i32, ptr %BitsAvail, align 4
  %cmp620 = icmp eq i32 %395, 0
  br i1 %cmp620, label %if.then622, label %if.end623

if.then622:                                       ; preds = %if.then619
  br label %eof2d

if.end623:                                        ; preds = %if.then619
  store i32 12, ptr %BitsAvail, align 4
  br label %if.end648

if.else624:                                       ; preds = %if.then616
  %396 = load ptr, ptr %bitmap, align 8
  %397 = load ptr, ptr %cp, align 8
  %incdec.ptr625 = getelementptr inbounds i8, ptr %397, i32 1
  store ptr %incdec.ptr625, ptr %cp, align 8
  %398 = load i8, ptr %397, align 1
  %idxprom626 = zext i8 %398 to i64
  %arrayidx627 = getelementptr inbounds i8, ptr %396, i64 %idxprom626
  %399 = load i8, ptr %arrayidx627, align 1
  %conv628 = zext i8 %399 to i32
  %400 = load i32, ptr %BitsAvail, align 4
  %shl629 = shl i32 %conv628, %400
  %401 = load i32, ptr %BitAcc, align 4
  %or630 = or i32 %401, %shl629
  store i32 %or630, ptr %BitAcc, align 4
  %402 = load i32, ptr %BitsAvail, align 4
  %add631 = add nsw i32 %402, 8
  store i32 %add631, ptr %BitsAvail, align 4
  %cmp632 = icmp slt i32 %add631, 12
  br i1 %cmp632, label %if.then634, label %if.end647

if.then634:                                       ; preds = %if.else624
  %403 = load ptr, ptr %cp, align 8
  %404 = load ptr, ptr %ep, align 8
  %cmp635 = icmp uge ptr %403, %404
  br i1 %cmp635, label %if.then637, label %if.else638

if.then637:                                       ; preds = %if.then634
  store i32 12, ptr %BitsAvail, align 4
  br label %if.end646

if.else638:                                       ; preds = %if.then634
  %405 = load ptr, ptr %bitmap, align 8
  %406 = load ptr, ptr %cp, align 8
  %incdec.ptr639 = getelementptr inbounds i8, ptr %406, i32 1
  store ptr %incdec.ptr639, ptr %cp, align 8
  %407 = load i8, ptr %406, align 1
  %idxprom640 = zext i8 %407 to i64
  %arrayidx641 = getelementptr inbounds i8, ptr %405, i64 %idxprom640
  %408 = load i8, ptr %arrayidx641, align 1
  %conv642 = zext i8 %408 to i32
  %409 = load i32, ptr %BitsAvail, align 4
  %shl643 = shl i32 %conv642, %409
  %410 = load i32, ptr %BitAcc, align 4
  %or644 = or i32 %410, %shl643
  store i32 %or644, ptr %BitAcc, align 4
  %411 = load i32, ptr %BitsAvail, align 4
  %add645 = add nsw i32 %411, 8
  store i32 %add645, ptr %BitsAvail, align 4
  br label %if.end646

if.end646:                                        ; preds = %if.else638, %if.then637
  br label %if.end647

if.end647:                                        ; preds = %if.end646, %if.else624
  br label %if.end648

if.end648:                                        ; preds = %if.end647, %if.end623
  br label %if.end649

if.end649:                                        ; preds = %if.end648, %do.body613
  br label %do.end650

do.end650:                                        ; preds = %if.end649
  %412 = load i32, ptr %BitAcc, align 4
  %and651 = and i32 %412, 4095
  %idx.ext652 = zext i32 %and651 to i64
  %add.ptr653 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %idx.ext652
  store ptr %add.ptr653, ptr %TabEnt, align 8
  br label %do.body654

do.body654:                                       ; preds = %do.end650
  %413 = load ptr, ptr %TabEnt, align 8
  %Width655 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %413, i32 0, i32 1
  %414 = load i8, ptr %Width655, align 1
  %conv656 = zext i8 %414 to i32
  %415 = load i32, ptr %BitsAvail, align 4
  %sub657 = sub nsw i32 %415, %conv656
  store i32 %sub657, ptr %BitsAvail, align 4
  %416 = load ptr, ptr %TabEnt, align 8
  %Width658 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %416, i32 0, i32 1
  %417 = load i8, ptr %Width658, align 1
  %conv659 = zext i8 %417 to i32
  %418 = load i32, ptr %BitAcc, align 4
  %shr660 = lshr i32 %418, %conv659
  store i32 %shr660, ptr %BitAcc, align 4
  br label %do.end661

do.end661:                                        ; preds = %do.body654
  br label %do.end662

do.end662:                                        ; preds = %do.end661
  %419 = load ptr, ptr %TabEnt, align 8
  %State663 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %419, i32 0, i32 0
  %420 = load i8, ptr %State663, align 4
  %conv664 = zext i8 %420 to i32
  switch i32 %conv664, label %sw.default678 [
    i32 7, label %sw.bb665
    i32 9, label %sw.bb673
    i32 11, label %sw.bb673
  ]

sw.bb665:                                         ; preds = %do.end662
  br label %do.body666

do.body666:                                       ; preds = %sw.bb665
  %421 = load i32, ptr %RunLength, align 4
  %422 = load ptr, ptr %TabEnt, align 8
  %Param667 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %422, i32 0, i32 2
  %423 = load i32, ptr %Param667, align 4
  %add668 = add i32 %421, %423
  %424 = load ptr, ptr %pa, align 8
  %incdec.ptr669 = getelementptr inbounds i32, ptr %424, i32 1
  store ptr %incdec.ptr669, ptr %pa, align 8
  store i32 %add668, ptr %424, align 4
  %425 = load ptr, ptr %TabEnt, align 8
  %Param670 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %425, i32 0, i32 2
  %426 = load i32, ptr %Param670, align 4
  %427 = load i32, ptr %a0, align 4
  %add671 = add i32 %427, %426
  store i32 %add671, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end672

do.end672:                                        ; preds = %do.body666
  br label %doneWhite2db

sw.bb673:                                         ; preds = %do.end662, %do.end662
  %428 = load ptr, ptr %TabEnt, align 8
  %Param674 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %428, i32 0, i32 2
  %429 = load i32, ptr %Param674, align 4
  %430 = load i32, ptr %a0, align 4
  %add675 = add i32 %430, %429
  store i32 %add675, ptr %a0, align 4
  %431 = load ptr, ptr %TabEnt, align 8
  %Param676 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %431, i32 0, i32 2
  %432 = load i32, ptr %Param676, align 4
  %433 = load i32, ptr %RunLength, align 4
  %add677 = add i32 %433, %432
  store i32 %add677, ptr %RunLength, align 4
  br label %sw.epilog679

sw.default678:                                    ; preds = %do.end662
  br label %badWhite2d

sw.epilog679:                                     ; preds = %sw.bb673
  br label %for.cond611

doneWhite2db:                                     ; preds = %do.end672
  br label %for.cond680

for.cond680:                                      ; preds = %sw.epilog748, %doneWhite2db
  br label %do.body681

do.body681:                                       ; preds = %for.cond680
  br label %do.body682

do.body682:                                       ; preds = %do.body681
  %434 = load i32, ptr %BitsAvail, align 4
  %cmp683 = icmp slt i32 %434, 13
  br i1 %cmp683, label %if.then685, label %if.end718

if.then685:                                       ; preds = %do.body682
  %435 = load ptr, ptr %cp, align 8
  %436 = load ptr, ptr %ep, align 8
  %cmp686 = icmp uge ptr %435, %436
  br i1 %cmp686, label %if.then688, label %if.else693

if.then688:                                       ; preds = %if.then685
  %437 = load i32, ptr %BitsAvail, align 4
  %cmp689 = icmp eq i32 %437, 0
  br i1 %cmp689, label %if.then691, label %if.end692

if.then691:                                       ; preds = %if.then688
  br label %eof2d

if.end692:                                        ; preds = %if.then688
  store i32 13, ptr %BitsAvail, align 4
  br label %if.end717

if.else693:                                       ; preds = %if.then685
  %438 = load ptr, ptr %bitmap, align 8
  %439 = load ptr, ptr %cp, align 8
  %incdec.ptr694 = getelementptr inbounds i8, ptr %439, i32 1
  store ptr %incdec.ptr694, ptr %cp, align 8
  %440 = load i8, ptr %439, align 1
  %idxprom695 = zext i8 %440 to i64
  %arrayidx696 = getelementptr inbounds i8, ptr %438, i64 %idxprom695
  %441 = load i8, ptr %arrayidx696, align 1
  %conv697 = zext i8 %441 to i32
  %442 = load i32, ptr %BitsAvail, align 4
  %shl698 = shl i32 %conv697, %442
  %443 = load i32, ptr %BitAcc, align 4
  %or699 = or i32 %443, %shl698
  store i32 %or699, ptr %BitAcc, align 4
  %444 = load i32, ptr %BitsAvail, align 4
  %add700 = add nsw i32 %444, 8
  store i32 %add700, ptr %BitsAvail, align 4
  %cmp701 = icmp slt i32 %add700, 13
  br i1 %cmp701, label %if.then703, label %if.end716

if.then703:                                       ; preds = %if.else693
  %445 = load ptr, ptr %cp, align 8
  %446 = load ptr, ptr %ep, align 8
  %cmp704 = icmp uge ptr %445, %446
  br i1 %cmp704, label %if.then706, label %if.else707

if.then706:                                       ; preds = %if.then703
  store i32 13, ptr %BitsAvail, align 4
  br label %if.end715

if.else707:                                       ; preds = %if.then703
  %447 = load ptr, ptr %bitmap, align 8
  %448 = load ptr, ptr %cp, align 8
  %incdec.ptr708 = getelementptr inbounds i8, ptr %448, i32 1
  store ptr %incdec.ptr708, ptr %cp, align 8
  %449 = load i8, ptr %448, align 1
  %idxprom709 = zext i8 %449 to i64
  %arrayidx710 = getelementptr inbounds i8, ptr %447, i64 %idxprom709
  %450 = load i8, ptr %arrayidx710, align 1
  %conv711 = zext i8 %450 to i32
  %451 = load i32, ptr %BitsAvail, align 4
  %shl712 = shl i32 %conv711, %451
  %452 = load i32, ptr %BitAcc, align 4
  %or713 = or i32 %452, %shl712
  store i32 %or713, ptr %BitAcc, align 4
  %453 = load i32, ptr %BitsAvail, align 4
  %add714 = add nsw i32 %453, 8
  store i32 %add714, ptr %BitsAvail, align 4
  br label %if.end715

if.end715:                                        ; preds = %if.else707, %if.then706
  br label %if.end716

if.end716:                                        ; preds = %if.end715, %if.else693
  br label %if.end717

if.end717:                                        ; preds = %if.end716, %if.end692
  br label %if.end718

if.end718:                                        ; preds = %if.end717, %do.body682
  br label %do.end719

do.end719:                                        ; preds = %if.end718
  %454 = load i32, ptr %BitAcc, align 4
  %and720 = and i32 %454, 8191
  %idx.ext721 = zext i32 %and720 to i64
  %add.ptr722 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %idx.ext721
  store ptr %add.ptr722, ptr %TabEnt, align 8
  br label %do.body723

do.body723:                                       ; preds = %do.end719
  %455 = load ptr, ptr %TabEnt, align 8
  %Width724 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %455, i32 0, i32 1
  %456 = load i8, ptr %Width724, align 1
  %conv725 = zext i8 %456 to i32
  %457 = load i32, ptr %BitsAvail, align 4
  %sub726 = sub nsw i32 %457, %conv725
  store i32 %sub726, ptr %BitsAvail, align 4
  %458 = load ptr, ptr %TabEnt, align 8
  %Width727 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %458, i32 0, i32 1
  %459 = load i8, ptr %Width727, align 1
  %conv728 = zext i8 %459 to i32
  %460 = load i32, ptr %BitAcc, align 4
  %shr729 = lshr i32 %460, %conv728
  store i32 %shr729, ptr %BitAcc, align 4
  br label %do.end730

do.end730:                                        ; preds = %do.body723
  br label %do.end731

do.end731:                                        ; preds = %do.end730
  %461 = load ptr, ptr %TabEnt, align 8
  %State732 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %461, i32 0, i32 0
  %462 = load i8, ptr %State732, align 4
  %conv733 = zext i8 %462 to i32
  switch i32 %conv733, label %sw.default747 [
    i32 8, label %sw.bb734
    i32 10, label %sw.bb742
    i32 11, label %sw.bb742
  ]

sw.bb734:                                         ; preds = %do.end731
  br label %do.body735

do.body735:                                       ; preds = %sw.bb734
  %463 = load i32, ptr %RunLength, align 4
  %464 = load ptr, ptr %TabEnt, align 8
  %Param736 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %464, i32 0, i32 2
  %465 = load i32, ptr %Param736, align 4
  %add737 = add i32 %463, %465
  %466 = load ptr, ptr %pa, align 8
  %incdec.ptr738 = getelementptr inbounds i32, ptr %466, i32 1
  store ptr %incdec.ptr738, ptr %pa, align 8
  store i32 %add737, ptr %466, align 4
  %467 = load ptr, ptr %TabEnt, align 8
  %Param739 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %467, i32 0, i32 2
  %468 = load i32, ptr %Param739, align 4
  %469 = load i32, ptr %a0, align 4
  %add740 = add i32 %469, %468
  store i32 %add740, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end741

do.end741:                                        ; preds = %do.body735
  br label %doneBlack2db

sw.bb742:                                         ; preds = %do.end731, %do.end731
  %470 = load ptr, ptr %TabEnt, align 8
  %Param743 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %470, i32 0, i32 2
  %471 = load i32, ptr %Param743, align 4
  %472 = load i32, ptr %a0, align 4
  %add744 = add i32 %472, %471
  store i32 %add744, ptr %a0, align 4
  %473 = load ptr, ptr %TabEnt, align 8
  %Param745 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %473, i32 0, i32 2
  %474 = load i32, ptr %Param745, align 4
  %475 = load i32, ptr %RunLength, align 4
  %add746 = add i32 %475, %474
  store i32 %add746, ptr %RunLength, align 4
  br label %sw.epilog748

sw.default747:                                    ; preds = %do.end731
  br label %badBlack2d

sw.epilog748:                                     ; preds = %sw.bb742
  br label %for.cond680

doneBlack2db:                                     ; preds = %do.end741
  br label %if.end749

if.end749:                                        ; preds = %doneBlack2db, %doneBlack2da
  br label %do.body750

do.body750:                                       ; preds = %if.end749
  %476 = load ptr, ptr %pa, align 8
  %477 = load ptr, ptr %thisrun, align 8
  %cmp751 = icmp ne ptr %476, %477
  br i1 %cmp751, label %if.then753, label %if.end768

if.then753:                                       ; preds = %do.body750
  br label %while.cond754

while.cond754:                                    ; preds = %while.body761, %if.then753
  %478 = load i32, ptr %b1, align 4
  %479 = load i32, ptr %a0, align 4
  %cmp755 = icmp sle i32 %478, %479
  br i1 %cmp755, label %land.rhs757, label %land.end760

land.rhs757:                                      ; preds = %while.cond754
  %480 = load i32, ptr %b1, align 4
  %481 = load i32, ptr %lastx, align 4
  %cmp758 = icmp slt i32 %480, %481
  br label %land.end760

land.end760:                                      ; preds = %land.rhs757, %while.cond754
  %482 = phi i1 [ false, %while.cond754 ], [ %cmp758, %land.rhs757 ]
  br i1 %482, label %while.body761, label %while.end767

while.body761:                                    ; preds = %land.end760
  %483 = load ptr, ptr %pb, align 8
  %arrayidx762 = getelementptr inbounds i32, ptr %483, i64 0
  %484 = load i32, ptr %arrayidx762, align 4
  %485 = load ptr, ptr %pb, align 8
  %arrayidx763 = getelementptr inbounds i32, ptr %485, i64 1
  %486 = load i32, ptr %arrayidx763, align 4
  %add764 = add i32 %484, %486
  %487 = load i32, ptr %b1, align 4
  %add765 = add i32 %487, %add764
  store i32 %add765, ptr %b1, align 4
  %488 = load ptr, ptr %pb, align 8
  %add.ptr766 = getelementptr inbounds i32, ptr %488, i64 2
  store ptr %add.ptr766, ptr %pb, align 8
  br label %while.cond754, !llvm.loop !36

while.end767:                                     ; preds = %land.end760
  br label %if.end768

if.end768:                                        ; preds = %while.end767, %do.body750
  br label %do.end769

do.end769:                                        ; preds = %if.end768
  br label %sw.epilog969

sw.bb770:                                         ; preds = %do.end434
  br label %do.body771

do.body771:                                       ; preds = %sw.bb770
  %489 = load ptr, ptr %pa, align 8
  %490 = load ptr, ptr %thisrun, align 8
  %cmp772 = icmp ne ptr %489, %490
  br i1 %cmp772, label %if.then774, label %if.end789

if.then774:                                       ; preds = %do.body771
  br label %while.cond775

while.cond775:                                    ; preds = %while.body782, %if.then774
  %491 = load i32, ptr %b1, align 4
  %492 = load i32, ptr %a0, align 4
  %cmp776 = icmp sle i32 %491, %492
  br i1 %cmp776, label %land.rhs778, label %land.end781

land.rhs778:                                      ; preds = %while.cond775
  %493 = load i32, ptr %b1, align 4
  %494 = load i32, ptr %lastx, align 4
  %cmp779 = icmp slt i32 %493, %494
  br label %land.end781

land.end781:                                      ; preds = %land.rhs778, %while.cond775
  %495 = phi i1 [ false, %while.cond775 ], [ %cmp779, %land.rhs778 ]
  br i1 %495, label %while.body782, label %while.end788

while.body782:                                    ; preds = %land.end781
  %496 = load ptr, ptr %pb, align 8
  %arrayidx783 = getelementptr inbounds i32, ptr %496, i64 0
  %497 = load i32, ptr %arrayidx783, align 4
  %498 = load ptr, ptr %pb, align 8
  %arrayidx784 = getelementptr inbounds i32, ptr %498, i64 1
  %499 = load i32, ptr %arrayidx784, align 4
  %add785 = add i32 %497, %499
  %500 = load i32, ptr %b1, align 4
  %add786 = add i32 %500, %add785
  store i32 %add786, ptr %b1, align 4
  %501 = load ptr, ptr %pb, align 8
  %add.ptr787 = getelementptr inbounds i32, ptr %501, i64 2
  store ptr %add.ptr787, ptr %pb, align 8
  br label %while.cond775, !llvm.loop !37

while.end788:                                     ; preds = %land.end781
  br label %if.end789

if.end789:                                        ; preds = %while.end788, %do.body771
  br label %do.end790

do.end790:                                        ; preds = %if.end789
  br label %do.body791

do.body791:                                       ; preds = %do.end790
  %502 = load i32, ptr %RunLength, align 4
  %503 = load i32, ptr %b1, align 4
  %504 = load i32, ptr %a0, align 4
  %sub792 = sub nsw i32 %503, %504
  %add793 = add nsw i32 %502, %sub792
  %505 = load ptr, ptr %pa, align 8
  %incdec.ptr794 = getelementptr inbounds i32, ptr %505, i32 1
  store ptr %incdec.ptr794, ptr %pa, align 8
  store i32 %add793, ptr %505, align 4
  %506 = load i32, ptr %b1, align 4
  %507 = load i32, ptr %a0, align 4
  %sub795 = sub nsw i32 %506, %507
  %508 = load i32, ptr %a0, align 4
  %add796 = add nsw i32 %508, %sub795
  store i32 %add796, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end797

do.end797:                                        ; preds = %do.body791
  %509 = load ptr, ptr %pb, align 8
  %incdec.ptr798 = getelementptr inbounds i32, ptr %509, i32 1
  store ptr %incdec.ptr798, ptr %pb, align 8
  %510 = load i32, ptr %509, align 4
  %511 = load i32, ptr %b1, align 4
  %add799 = add i32 %511, %510
  store i32 %add799, ptr %b1, align 4
  br label %sw.epilog969

sw.bb800:                                         ; preds = %do.end434
  br label %do.body801

do.body801:                                       ; preds = %sw.bb800
  %512 = load ptr, ptr %pa, align 8
  %513 = load ptr, ptr %thisrun, align 8
  %cmp802 = icmp ne ptr %512, %513
  br i1 %cmp802, label %if.then804, label %if.end819

if.then804:                                       ; preds = %do.body801
  br label %while.cond805

while.cond805:                                    ; preds = %while.body812, %if.then804
  %514 = load i32, ptr %b1, align 4
  %515 = load i32, ptr %a0, align 4
  %cmp806 = icmp sle i32 %514, %515
  br i1 %cmp806, label %land.rhs808, label %land.end811

land.rhs808:                                      ; preds = %while.cond805
  %516 = load i32, ptr %b1, align 4
  %517 = load i32, ptr %lastx, align 4
  %cmp809 = icmp slt i32 %516, %517
  br label %land.end811

land.end811:                                      ; preds = %land.rhs808, %while.cond805
  %518 = phi i1 [ false, %while.cond805 ], [ %cmp809, %land.rhs808 ]
  br i1 %518, label %while.body812, label %while.end818

while.body812:                                    ; preds = %land.end811
  %519 = load ptr, ptr %pb, align 8
  %arrayidx813 = getelementptr inbounds i32, ptr %519, i64 0
  %520 = load i32, ptr %arrayidx813, align 4
  %521 = load ptr, ptr %pb, align 8
  %arrayidx814 = getelementptr inbounds i32, ptr %521, i64 1
  %522 = load i32, ptr %arrayidx814, align 4
  %add815 = add i32 %520, %522
  %523 = load i32, ptr %b1, align 4
  %add816 = add i32 %523, %add815
  store i32 %add816, ptr %b1, align 4
  %524 = load ptr, ptr %pb, align 8
  %add.ptr817 = getelementptr inbounds i32, ptr %524, i64 2
  store ptr %add.ptr817, ptr %pb, align 8
  br label %while.cond805, !llvm.loop !38

while.end818:                                     ; preds = %land.end811
  br label %if.end819

if.end819:                                        ; preds = %while.end818, %do.body801
  br label %do.end820

do.end820:                                        ; preds = %if.end819
  br label %do.body821

do.body821:                                       ; preds = %do.end820
  %525 = load i32, ptr %RunLength, align 4
  %526 = load i32, ptr %b1, align 4
  %527 = load i32, ptr %a0, align 4
  %sub822 = sub nsw i32 %526, %527
  %528 = load ptr, ptr %TabEnt, align 8
  %Param823 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %528, i32 0, i32 2
  %529 = load i32, ptr %Param823, align 4
  %add824 = add i32 %sub822, %529
  %add825 = add i32 %525, %add824
  %530 = load ptr, ptr %pa, align 8
  %incdec.ptr826 = getelementptr inbounds i32, ptr %530, i32 1
  store ptr %incdec.ptr826, ptr %pa, align 8
  store i32 %add825, ptr %530, align 4
  %531 = load i32, ptr %b1, align 4
  %532 = load i32, ptr %a0, align 4
  %sub827 = sub nsw i32 %531, %532
  %533 = load ptr, ptr %TabEnt, align 8
  %Param828 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %533, i32 0, i32 2
  %534 = load i32, ptr %Param828, align 4
  %add829 = add i32 %sub827, %534
  %535 = load i32, ptr %a0, align 4
  %add830 = add i32 %535, %add829
  store i32 %add830, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end831

do.end831:                                        ; preds = %do.body821
  %536 = load ptr, ptr %pb, align 8
  %incdec.ptr832 = getelementptr inbounds i32, ptr %536, i32 1
  store ptr %incdec.ptr832, ptr %pb, align 8
  %537 = load i32, ptr %536, align 4
  %538 = load i32, ptr %b1, align 4
  %add833 = add i32 %538, %537
  store i32 %add833, ptr %b1, align 4
  br label %sw.epilog969

sw.bb834:                                         ; preds = %do.end434
  br label %do.body835

do.body835:                                       ; preds = %sw.bb834
  %539 = load ptr, ptr %pa, align 8
  %540 = load ptr, ptr %thisrun, align 8
  %cmp836 = icmp ne ptr %539, %540
  br i1 %cmp836, label %if.then838, label %if.end853

if.then838:                                       ; preds = %do.body835
  br label %while.cond839

while.cond839:                                    ; preds = %while.body846, %if.then838
  %541 = load i32, ptr %b1, align 4
  %542 = load i32, ptr %a0, align 4
  %cmp840 = icmp sle i32 %541, %542
  br i1 %cmp840, label %land.rhs842, label %land.end845

land.rhs842:                                      ; preds = %while.cond839
  %543 = load i32, ptr %b1, align 4
  %544 = load i32, ptr %lastx, align 4
  %cmp843 = icmp slt i32 %543, %544
  br label %land.end845

land.end845:                                      ; preds = %land.rhs842, %while.cond839
  %545 = phi i1 [ false, %while.cond839 ], [ %cmp843, %land.rhs842 ]
  br i1 %545, label %while.body846, label %while.end852

while.body846:                                    ; preds = %land.end845
  %546 = load ptr, ptr %pb, align 8
  %arrayidx847 = getelementptr inbounds i32, ptr %546, i64 0
  %547 = load i32, ptr %arrayidx847, align 4
  %548 = load ptr, ptr %pb, align 8
  %arrayidx848 = getelementptr inbounds i32, ptr %548, i64 1
  %549 = load i32, ptr %arrayidx848, align 4
  %add849 = add i32 %547, %549
  %550 = load i32, ptr %b1, align 4
  %add850 = add i32 %550, %add849
  store i32 %add850, ptr %b1, align 4
  %551 = load ptr, ptr %pb, align 8
  %add.ptr851 = getelementptr inbounds i32, ptr %551, i64 2
  store ptr %add.ptr851, ptr %pb, align 8
  br label %while.cond839, !llvm.loop !39

while.end852:                                     ; preds = %land.end845
  br label %if.end853

if.end853:                                        ; preds = %while.end852, %do.body835
  br label %do.end854

do.end854:                                        ; preds = %if.end853
  br label %do.body855

do.body855:                                       ; preds = %do.end854
  %552 = load i32, ptr %RunLength, align 4
  %553 = load i32, ptr %b1, align 4
  %554 = load i32, ptr %a0, align 4
  %sub856 = sub nsw i32 %553, %554
  %555 = load ptr, ptr %TabEnt, align 8
  %Param857 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %555, i32 0, i32 2
  %556 = load i32, ptr %Param857, align 4
  %sub858 = sub i32 %sub856, %556
  %add859 = add i32 %552, %sub858
  %557 = load ptr, ptr %pa, align 8
  %incdec.ptr860 = getelementptr inbounds i32, ptr %557, i32 1
  store ptr %incdec.ptr860, ptr %pa, align 8
  store i32 %add859, ptr %557, align 4
  %558 = load i32, ptr %b1, align 4
  %559 = load i32, ptr %a0, align 4
  %sub861 = sub nsw i32 %558, %559
  %560 = load ptr, ptr %TabEnt, align 8
  %Param862 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr %560, i32 0, i32 2
  %561 = load i32, ptr %Param862, align 4
  %sub863 = sub i32 %sub861, %561
  %562 = load i32, ptr %a0, align 4
  %add864 = add i32 %562, %sub863
  store i32 %add864, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end865

do.end865:                                        ; preds = %do.body855
  %563 = load ptr, ptr %pb, align 8
  %incdec.ptr866 = getelementptr inbounds i32, ptr %563, i32 -1
  store ptr %incdec.ptr866, ptr %pb, align 8
  %564 = load i32, ptr %incdec.ptr866, align 4
  %565 = load i32, ptr %b1, align 4
  %sub867 = sub i32 %565, %564
  store i32 %sub867, ptr %b1, align 4
  br label %sw.epilog969

sw.bb868:                                         ; preds = %do.end434
  %566 = load i32, ptr %lastx, align 4
  %567 = load i32, ptr %a0, align 4
  %sub869 = sub nsw i32 %566, %567
  %568 = load ptr, ptr %pa, align 8
  %incdec.ptr870 = getelementptr inbounds i32, ptr %568, i32 1
  store ptr %incdec.ptr870, ptr %pa, align 8
  store i32 %sub869, ptr %568, align 4
  %569 = load ptr, ptr %tif.addr, align 8
  %570 = load i32, ptr %a0, align 4
  call void @Fax3Extension(ptr noundef @Fax3Decode2D.module, ptr noundef %569, i32 noundef %570)
  br label %eol2d

sw.bb871:                                         ; preds = %do.end434
  %571 = load i32, ptr %lastx, align 4
  %572 = load i32, ptr %a0, align 4
  %sub872 = sub nsw i32 %571, %572
  %573 = load ptr, ptr %pa, align 8
  %incdec.ptr873 = getelementptr inbounds i32, ptr %573, i32 1
  store ptr %incdec.ptr873, ptr %pa, align 8
  store i32 %sub872, ptr %573, align 4
  br label %do.body874

do.body874:                                       ; preds = %sw.bb871
  %574 = load i32, ptr %BitsAvail, align 4
  %cmp875 = icmp slt i32 %574, 5
  br i1 %cmp875, label %if.then877, label %if.end894

if.then877:                                       ; preds = %do.body874
  %575 = load ptr, ptr %cp, align 8
  %576 = load ptr, ptr %ep, align 8
  %cmp878 = icmp uge ptr %575, %576
  br i1 %cmp878, label %if.then880, label %if.else885

if.then880:                                       ; preds = %if.then877
  %577 = load i32, ptr %BitsAvail, align 4
  %cmp881 = icmp eq i32 %577, 0
  br i1 %cmp881, label %if.then883, label %if.end884

if.then883:                                       ; preds = %if.then880
  br label %eof2d

if.end884:                                        ; preds = %if.then880
  store i32 5, ptr %BitsAvail, align 4
  br label %if.end893

if.else885:                                       ; preds = %if.then877
  %578 = load ptr, ptr %bitmap, align 8
  %579 = load ptr, ptr %cp, align 8
  %incdec.ptr886 = getelementptr inbounds i8, ptr %579, i32 1
  store ptr %incdec.ptr886, ptr %cp, align 8
  %580 = load i8, ptr %579, align 1
  %idxprom887 = zext i8 %580 to i64
  %arrayidx888 = getelementptr inbounds i8, ptr %578, i64 %idxprom887
  %581 = load i8, ptr %arrayidx888, align 1
  %conv889 = zext i8 %581 to i32
  %582 = load i32, ptr %BitsAvail, align 4
  %shl890 = shl i32 %conv889, %582
  %583 = load i32, ptr %BitAcc, align 4
  %or891 = or i32 %583, %shl890
  store i32 %or891, ptr %BitAcc, align 4
  %584 = load i32, ptr %BitsAvail, align 4
  %add892 = add nsw i32 %584, 8
  store i32 %add892, ptr %BitsAvail, align 4
  br label %if.end893

if.end893:                                        ; preds = %if.else885, %if.end884
  br label %if.end894

if.end894:                                        ; preds = %if.end893, %do.body874
  br label %do.end895

do.end895:                                        ; preds = %if.end894
  %585 = load i32, ptr %BitAcc, align 4
  %and896 = and i32 %585, 31
  %tobool897 = icmp ne i32 %and896, 0
  br i1 %tobool897, label %if.then898, label %if.end899

if.then898:                                       ; preds = %do.end895
  %586 = load ptr, ptr %tif.addr, align 8
  %587 = load i32, ptr %a0, align 4
  call void @Fax3Unexpected(ptr noundef @Fax3Decode2D.module, ptr noundef %586, i32 noundef %587)
  br label %if.end899

if.end899:                                        ; preds = %if.then898, %do.end895
  store i32 1, ptr %EOLcnt, align 4
  br label %eol2d

sw.default900:                                    ; preds = %do.end434
  br label %badMain2d

badMain2d:                                        ; preds = %if.then1001, %sw.default900
  %588 = load ptr, ptr %tif.addr, align 8
  %589 = load i32, ptr %a0, align 4
  call void @Fax3Unexpected(ptr noundef @Fax3Decode2D.module, ptr noundef %588, i32 noundef %589)
  br label %eol2d

badBlack2d:                                       ; preds = %sw.default747, %sw.default539
  %590 = load ptr, ptr %tif.addr, align 8
  %591 = load i32, ptr %a0, align 4
  call void @Fax3Unexpected(ptr noundef @Fax3Decode2D.module, ptr noundef %590, i32 noundef %591)
  br label %eol2d

badWhite2d:                                       ; preds = %sw.default678, %sw.default608
  %592 = load ptr, ptr %tif.addr, align 8
  %593 = load i32, ptr %a0, align 4
  call void @Fax3Unexpected(ptr noundef @Fax3Decode2D.module, ptr noundef %592, i32 noundef %593)
  br label %eol2d

eof2d:                                            ; preds = %if.then986, %if.then883, %if.then691, %if.then622, %if.then552, %if.then483, %if.then410
  %594 = load ptr, ptr %tif.addr, align 8
  %595 = load i32, ptr %a0, align 4
  call void @Fax3PrematureEOF(ptr noundef @Fax3Decode2D.module, ptr noundef %594, i32 noundef %595)
  br label %do.body901

do.body901:                                       ; preds = %eof2d
  %596 = load i32, ptr %RunLength, align 4
  %tobool902 = icmp ne i32 %596, 0
  br i1 %tobool902, label %if.then903, label %if.end909

if.then903:                                       ; preds = %do.body901
  br label %do.body904

do.body904:                                       ; preds = %if.then903
  %597 = load i32, ptr %RunLength, align 4
  %add905 = add nsw i32 %597, 0
  %598 = load ptr, ptr %pa, align 8
  %incdec.ptr906 = getelementptr inbounds i32, ptr %598, i32 1
  store ptr %incdec.ptr906, ptr %pa, align 8
  store i32 %add905, ptr %598, align 4
  %599 = load i32, ptr %a0, align 4
  %add907 = add nsw i32 %599, 0
  store i32 %add907, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end908

do.end908:                                        ; preds = %do.body904
  br label %if.end909

if.end909:                                        ; preds = %do.end908, %do.body901
  %600 = load i32, ptr %a0, align 4
  %601 = load i32, ptr %lastx, align 4
  %cmp910 = icmp ne i32 %600, %601
  br i1 %cmp910, label %if.then912, label %if.end967

if.then912:                                       ; preds = %if.end909
  %602 = load ptr, ptr %tif.addr, align 8
  %603 = load i32, ptr %a0, align 4
  %604 = load i32, ptr %lastx, align 4
  call void @Fax3BadLength(ptr noundef @Fax3Decode2D.module, ptr noundef %602, i32 noundef %603, i32 noundef %604)
  br label %while.cond913

while.cond913:                                    ; preds = %while.body920, %if.then912
  %605 = load i32, ptr %a0, align 4
  %606 = load i32, ptr %lastx, align 4
  %cmp914 = icmp sgt i32 %605, %606
  br i1 %cmp914, label %land.rhs916, label %land.end919

land.rhs916:                                      ; preds = %while.cond913
  %607 = load ptr, ptr %pa, align 8
  %608 = load ptr, ptr %thisrun, align 8
  %cmp917 = icmp ugt ptr %607, %608
  br label %land.end919

land.end919:                                      ; preds = %land.rhs916, %while.cond913
  %609 = phi i1 [ false, %while.cond913 ], [ %cmp917, %land.rhs916 ]
  br i1 %609, label %while.body920, label %while.end923

while.body920:                                    ; preds = %land.end919
  %610 = load ptr, ptr %pa, align 8
  %incdec.ptr921 = getelementptr inbounds i32, ptr %610, i32 -1
  store ptr %incdec.ptr921, ptr %pa, align 8
  %611 = load i32, ptr %incdec.ptr921, align 4
  %612 = load i32, ptr %a0, align 4
  %sub922 = sub i32 %612, %611
  store i32 %sub922, ptr %a0, align 4
  br label %while.cond913, !llvm.loop !40

while.end923:                                     ; preds = %land.end919
  %613 = load i32, ptr %a0, align 4
  %614 = load i32, ptr %lastx, align 4
  %cmp924 = icmp slt i32 %613, %614
  br i1 %cmp924, label %if.then926, label %if.else951

if.then926:                                       ; preds = %while.end923
  %615 = load i32, ptr %a0, align 4
  %cmp927 = icmp slt i32 %615, 0
  br i1 %cmp927, label %if.then929, label %if.end930

if.then929:                                       ; preds = %if.then926
  store i32 0, ptr %a0, align 4
  br label %if.end930

if.end930:                                        ; preds = %if.then929, %if.then926
  %616 = load ptr, ptr %pa, align 8
  %617 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast931 = ptrtoint ptr %616 to i64
  %sub.ptr.rhs.cast932 = ptrtoint ptr %617 to i64
  %sub.ptr.sub933 = sub i64 %sub.ptr.lhs.cast931, %sub.ptr.rhs.cast932
  %sub.ptr.div934 = sdiv exact i64 %sub.ptr.sub933, 4
  %and935 = and i64 %sub.ptr.div934, 1
  %tobool936 = icmp ne i64 %and935, 0
  br i1 %tobool936, label %if.then937, label %if.end943

if.then937:                                       ; preds = %if.end930
  br label %do.body938

do.body938:                                       ; preds = %if.then937
  %618 = load i32, ptr %RunLength, align 4
  %add939 = add nsw i32 %618, 0
  %619 = load ptr, ptr %pa, align 8
  %incdec.ptr940 = getelementptr inbounds i32, ptr %619, i32 1
  store ptr %incdec.ptr940, ptr %pa, align 8
  store i32 %add939, ptr %619, align 4
  %620 = load i32, ptr %a0, align 4
  %add941 = add nsw i32 %620, 0
  store i32 %add941, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end942

do.end942:                                        ; preds = %do.body938
  br label %if.end943

if.end943:                                        ; preds = %do.end942, %if.end930
  br label %do.body944

do.body944:                                       ; preds = %if.end943
  %621 = load i32, ptr %RunLength, align 4
  %622 = load i32, ptr %lastx, align 4
  %623 = load i32, ptr %a0, align 4
  %sub945 = sub nsw i32 %622, %623
  %add946 = add nsw i32 %621, %sub945
  %624 = load ptr, ptr %pa, align 8
  %incdec.ptr947 = getelementptr inbounds i32, ptr %624, i32 1
  store ptr %incdec.ptr947, ptr %pa, align 8
  store i32 %add946, ptr %624, align 4
  %625 = load i32, ptr %lastx, align 4
  %626 = load i32, ptr %a0, align 4
  %sub948 = sub nsw i32 %625, %626
  %627 = load i32, ptr %a0, align 4
  %add949 = add nsw i32 %627, %sub948
  store i32 %add949, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end950

do.end950:                                        ; preds = %do.body944
  br label %if.end966

if.else951:                                       ; preds = %while.end923
  %628 = load i32, ptr %a0, align 4
  %629 = load i32, ptr %lastx, align 4
  %cmp952 = icmp sgt i32 %628, %629
  br i1 %cmp952, label %if.then954, label %if.end965

if.then954:                                       ; preds = %if.else951
  br label %do.body955

do.body955:                                       ; preds = %if.then954
  %630 = load i32, ptr %RunLength, align 4
  %631 = load i32, ptr %lastx, align 4
  %add956 = add nsw i32 %630, %631
  %632 = load ptr, ptr %pa, align 8
  %incdec.ptr957 = getelementptr inbounds i32, ptr %632, i32 1
  store ptr %incdec.ptr957, ptr %pa, align 8
  store i32 %add956, ptr %632, align 4
  %633 = load i32, ptr %lastx, align 4
  %634 = load i32, ptr %a0, align 4
  %add958 = add nsw i32 %634, %633
  store i32 %add958, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end959

do.end959:                                        ; preds = %do.body955
  br label %do.body960

do.body960:                                       ; preds = %do.end959
  %635 = load i32, ptr %RunLength, align 4
  %add961 = add nsw i32 %635, 0
  %636 = load ptr, ptr %pa, align 8
  %incdec.ptr962 = getelementptr inbounds i32, ptr %636, i32 1
  store ptr %incdec.ptr962, ptr %pa, align 8
  store i32 %add961, ptr %636, align 4
  %637 = load i32, ptr %a0, align 4
  %add963 = add nsw i32 %637, 0
  store i32 %add963, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end964

do.end964:                                        ; preds = %do.body960
  br label %if.end965

if.end965:                                        ; preds = %do.end964, %if.else951
  br label %if.end966

if.end966:                                        ; preds = %if.end965, %do.end950
  br label %if.end967

if.end967:                                        ; preds = %if.end966, %if.end909
  br label %do.end968

do.end968:                                        ; preds = %if.end967
  br label %EOF2Da

sw.epilog969:                                     ; preds = %do.end865, %do.end831, %do.end797, %do.end769, %do.end457
  br label %while.cond396, !llvm.loop !41

while.end970:                                     ; preds = %while.cond396
  %638 = load i32, ptr %RunLength, align 4
  %tobool971 = icmp ne i32 %638, 0
  br i1 %tobool971, label %if.then972, label %if.end1013

if.then972:                                       ; preds = %while.end970
  %639 = load i32, ptr %RunLength, align 4
  %640 = load i32, ptr %a0, align 4
  %add973 = add nsw i32 %639, %640
  %641 = load i32, ptr %lastx, align 4
  %cmp974 = icmp slt i32 %add973, %641
  br i1 %cmp974, label %if.then976, label %if.end1007

if.then976:                                       ; preds = %if.then972
  br label %do.body977

do.body977:                                       ; preds = %if.then976
  %642 = load i32, ptr %BitsAvail, align 4
  %cmp978 = icmp slt i32 %642, 1
  br i1 %cmp978, label %if.then980, label %if.end997

if.then980:                                       ; preds = %do.body977
  %643 = load ptr, ptr %cp, align 8
  %644 = load ptr, ptr %ep, align 8
  %cmp981 = icmp uge ptr %643, %644
  br i1 %cmp981, label %if.then983, label %if.else988

if.then983:                                       ; preds = %if.then980
  %645 = load i32, ptr %BitsAvail, align 4
  %cmp984 = icmp eq i32 %645, 0
  br i1 %cmp984, label %if.then986, label %if.end987

if.then986:                                       ; preds = %if.then983
  br label %eof2d

if.end987:                                        ; preds = %if.then983
  store i32 1, ptr %BitsAvail, align 4
  br label %if.end996

if.else988:                                       ; preds = %if.then980
  %646 = load ptr, ptr %bitmap, align 8
  %647 = load ptr, ptr %cp, align 8
  %incdec.ptr989 = getelementptr inbounds i8, ptr %647, i32 1
  store ptr %incdec.ptr989, ptr %cp, align 8
  %648 = load i8, ptr %647, align 1
  %idxprom990 = zext i8 %648 to i64
  %arrayidx991 = getelementptr inbounds i8, ptr %646, i64 %idxprom990
  %649 = load i8, ptr %arrayidx991, align 1
  %conv992 = zext i8 %649 to i32
  %650 = load i32, ptr %BitsAvail, align 4
  %shl993 = shl i32 %conv992, %650
  %651 = load i32, ptr %BitAcc, align 4
  %or994 = or i32 %651, %shl993
  store i32 %or994, ptr %BitAcc, align 4
  %652 = load i32, ptr %BitsAvail, align 4
  %add995 = add nsw i32 %652, 8
  store i32 %add995, ptr %BitsAvail, align 4
  br label %if.end996

if.end996:                                        ; preds = %if.else988, %if.end987
  br label %if.end997

if.end997:                                        ; preds = %if.end996, %do.body977
  br label %do.end998

do.end998:                                        ; preds = %if.end997
  %653 = load i32, ptr %BitAcc, align 4
  %and999 = and i32 %653, 1
  %tobool1000 = icmp ne i32 %and999, 0
  br i1 %tobool1000, label %if.end1002, label %if.then1001

if.then1001:                                      ; preds = %do.end998
  br label %badMain2d

if.end1002:                                       ; preds = %do.end998
  br label %do.body1003

do.body1003:                                      ; preds = %if.end1002
  %654 = load i32, ptr %BitsAvail, align 4
  %sub1004 = sub nsw i32 %654, 1
  store i32 %sub1004, ptr %BitsAvail, align 4
  %655 = load i32, ptr %BitAcc, align 4
  %shr1005 = lshr i32 %655, 1
  store i32 %shr1005, ptr %BitAcc, align 4
  br label %do.end1006

do.end1006:                                       ; preds = %do.body1003
  br label %if.end1007

if.end1007:                                       ; preds = %do.end1006, %if.then972
  br label %do.body1008

do.body1008:                                      ; preds = %if.end1007
  %656 = load i32, ptr %RunLength, align 4
  %add1009 = add nsw i32 %656, 0
  %657 = load ptr, ptr %pa, align 8
  %incdec.ptr1010 = getelementptr inbounds i32, ptr %657, i32 1
  store ptr %incdec.ptr1010, ptr %pa, align 8
  store i32 %add1009, ptr %657, align 4
  %658 = load i32, ptr %a0, align 4
  %add1011 = add nsw i32 %658, 0
  store i32 %add1011, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1012

do.end1012:                                       ; preds = %do.body1008
  br label %if.end1013

if.end1013:                                       ; preds = %do.end1012, %while.end970
  br label %eol2d

eol2d:                                            ; preds = %if.end1013, %badWhite2d, %badBlack2d, %badMain2d, %if.end899, %sw.bb868
  br label %do.body1014

do.body1014:                                      ; preds = %eol2d
  %659 = load i32, ptr %RunLength, align 4
  %tobool1015 = icmp ne i32 %659, 0
  br i1 %tobool1015, label %if.then1016, label %if.end1022

if.then1016:                                      ; preds = %do.body1014
  br label %do.body1017

do.body1017:                                      ; preds = %if.then1016
  %660 = load i32, ptr %RunLength, align 4
  %add1018 = add nsw i32 %660, 0
  %661 = load ptr, ptr %pa, align 8
  %incdec.ptr1019 = getelementptr inbounds i32, ptr %661, i32 1
  store ptr %incdec.ptr1019, ptr %pa, align 8
  store i32 %add1018, ptr %661, align 4
  %662 = load i32, ptr %a0, align 4
  %add1020 = add nsw i32 %662, 0
  store i32 %add1020, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1021

do.end1021:                                       ; preds = %do.body1017
  br label %if.end1022

if.end1022:                                       ; preds = %do.end1021, %do.body1014
  %663 = load i32, ptr %a0, align 4
  %664 = load i32, ptr %lastx, align 4
  %cmp1023 = icmp ne i32 %663, %664
  br i1 %cmp1023, label %if.then1025, label %if.end1080

if.then1025:                                      ; preds = %if.end1022
  %665 = load ptr, ptr %tif.addr, align 8
  %666 = load i32, ptr %a0, align 4
  %667 = load i32, ptr %lastx, align 4
  call void @Fax3BadLength(ptr noundef @Fax3Decode2D.module, ptr noundef %665, i32 noundef %666, i32 noundef %667)
  br label %while.cond1026

while.cond1026:                                   ; preds = %while.body1033, %if.then1025
  %668 = load i32, ptr %a0, align 4
  %669 = load i32, ptr %lastx, align 4
  %cmp1027 = icmp sgt i32 %668, %669
  br i1 %cmp1027, label %land.rhs1029, label %land.end1032

land.rhs1029:                                     ; preds = %while.cond1026
  %670 = load ptr, ptr %pa, align 8
  %671 = load ptr, ptr %thisrun, align 8
  %cmp1030 = icmp ugt ptr %670, %671
  br label %land.end1032

land.end1032:                                     ; preds = %land.rhs1029, %while.cond1026
  %672 = phi i1 [ false, %while.cond1026 ], [ %cmp1030, %land.rhs1029 ]
  br i1 %672, label %while.body1033, label %while.end1036

while.body1033:                                   ; preds = %land.end1032
  %673 = load ptr, ptr %pa, align 8
  %incdec.ptr1034 = getelementptr inbounds i32, ptr %673, i32 -1
  store ptr %incdec.ptr1034, ptr %pa, align 8
  %674 = load i32, ptr %incdec.ptr1034, align 4
  %675 = load i32, ptr %a0, align 4
  %sub1035 = sub i32 %675, %674
  store i32 %sub1035, ptr %a0, align 4
  br label %while.cond1026, !llvm.loop !42

while.end1036:                                    ; preds = %land.end1032
  %676 = load i32, ptr %a0, align 4
  %677 = load i32, ptr %lastx, align 4
  %cmp1037 = icmp slt i32 %676, %677
  br i1 %cmp1037, label %if.then1039, label %if.else1064

if.then1039:                                      ; preds = %while.end1036
  %678 = load i32, ptr %a0, align 4
  %cmp1040 = icmp slt i32 %678, 0
  br i1 %cmp1040, label %if.then1042, label %if.end1043

if.then1042:                                      ; preds = %if.then1039
  store i32 0, ptr %a0, align 4
  br label %if.end1043

if.end1043:                                       ; preds = %if.then1042, %if.then1039
  %679 = load ptr, ptr %pa, align 8
  %680 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast1044 = ptrtoint ptr %679 to i64
  %sub.ptr.rhs.cast1045 = ptrtoint ptr %680 to i64
  %sub.ptr.sub1046 = sub i64 %sub.ptr.lhs.cast1044, %sub.ptr.rhs.cast1045
  %sub.ptr.div1047 = sdiv exact i64 %sub.ptr.sub1046, 4
  %and1048 = and i64 %sub.ptr.div1047, 1
  %tobool1049 = icmp ne i64 %and1048, 0
  br i1 %tobool1049, label %if.then1050, label %if.end1056

if.then1050:                                      ; preds = %if.end1043
  br label %do.body1051

do.body1051:                                      ; preds = %if.then1050
  %681 = load i32, ptr %RunLength, align 4
  %add1052 = add nsw i32 %681, 0
  %682 = load ptr, ptr %pa, align 8
  %incdec.ptr1053 = getelementptr inbounds i32, ptr %682, i32 1
  store ptr %incdec.ptr1053, ptr %pa, align 8
  store i32 %add1052, ptr %682, align 4
  %683 = load i32, ptr %a0, align 4
  %add1054 = add nsw i32 %683, 0
  store i32 %add1054, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1055

do.end1055:                                       ; preds = %do.body1051
  br label %if.end1056

if.end1056:                                       ; preds = %do.end1055, %if.end1043
  br label %do.body1057

do.body1057:                                      ; preds = %if.end1056
  %684 = load i32, ptr %RunLength, align 4
  %685 = load i32, ptr %lastx, align 4
  %686 = load i32, ptr %a0, align 4
  %sub1058 = sub nsw i32 %685, %686
  %add1059 = add nsw i32 %684, %sub1058
  %687 = load ptr, ptr %pa, align 8
  %incdec.ptr1060 = getelementptr inbounds i32, ptr %687, i32 1
  store ptr %incdec.ptr1060, ptr %pa, align 8
  store i32 %add1059, ptr %687, align 4
  %688 = load i32, ptr %lastx, align 4
  %689 = load i32, ptr %a0, align 4
  %sub1061 = sub nsw i32 %688, %689
  %690 = load i32, ptr %a0, align 4
  %add1062 = add nsw i32 %690, %sub1061
  store i32 %add1062, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1063

do.end1063:                                       ; preds = %do.body1057
  br label %if.end1079

if.else1064:                                      ; preds = %while.end1036
  %691 = load i32, ptr %a0, align 4
  %692 = load i32, ptr %lastx, align 4
  %cmp1065 = icmp sgt i32 %691, %692
  br i1 %cmp1065, label %if.then1067, label %if.end1078

if.then1067:                                      ; preds = %if.else1064
  br label %do.body1068

do.body1068:                                      ; preds = %if.then1067
  %693 = load i32, ptr %RunLength, align 4
  %694 = load i32, ptr %lastx, align 4
  %add1069 = add nsw i32 %693, %694
  %695 = load ptr, ptr %pa, align 8
  %incdec.ptr1070 = getelementptr inbounds i32, ptr %695, i32 1
  store ptr %incdec.ptr1070, ptr %pa, align 8
  store i32 %add1069, ptr %695, align 4
  %696 = load i32, ptr %lastx, align 4
  %697 = load i32, ptr %a0, align 4
  %add1071 = add nsw i32 %697, %696
  store i32 %add1071, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1072

do.end1072:                                       ; preds = %do.body1068
  br label %do.body1073

do.body1073:                                      ; preds = %do.end1072
  %698 = load i32, ptr %RunLength, align 4
  %add1074 = add nsw i32 %698, 0
  %699 = load ptr, ptr %pa, align 8
  %incdec.ptr1075 = getelementptr inbounds i32, ptr %699, i32 1
  store ptr %incdec.ptr1075, ptr %pa, align 8
  store i32 %add1074, ptr %699, align 4
  %700 = load i32, ptr %a0, align 4
  %add1076 = add nsw i32 %700, 0
  store i32 %add1076, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1077

do.end1077:                                       ; preds = %do.body1073
  br label %if.end1078

if.end1078:                                       ; preds = %do.end1077, %if.else1064
  br label %if.end1079

if.end1079:                                       ; preds = %if.end1078, %do.end1063
  br label %if.end1080

if.end1080:                                       ; preds = %if.end1079, %if.end1022
  br label %do.end1081

do.end1081:                                       ; preds = %if.end1080
  br label %do.end1082

do.end1082:                                       ; preds = %do.end1081
  br label %if.end1083

if.end1083:                                       ; preds = %do.end1082, %do.end393
  %701 = load ptr, ptr %sp, align 8
  %fill = getelementptr inbounds %struct.Fax3DecodeState, ptr %701, i32 0, i32 5
  %702 = load ptr, ptr %fill, align 8
  %703 = load ptr, ptr %buf.addr, align 8
  %704 = load ptr, ptr %thisrun, align 8
  %705 = load ptr, ptr %pa, align 8
  %706 = load i32, ptr %lastx, align 4
  call void %702(ptr noundef %703, ptr noundef %704, ptr noundef %705, i32 noundef %706)
  br label %do.body1084

do.body1084:                                      ; preds = %if.end1083
  %707 = load i32, ptr %RunLength, align 4
  %add1085 = add nsw i32 %707, 0
  %708 = load ptr, ptr %pa, align 8
  %incdec.ptr1086 = getelementptr inbounds i32, ptr %708, i32 1
  store ptr %incdec.ptr1086, ptr %pa, align 8
  store i32 %add1085, ptr %708, align 4
  %709 = load i32, ptr %a0, align 4
  %add1087 = add nsw i32 %709, 0
  store i32 %add1087, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1088

do.end1088:                                       ; preds = %do.body1084
  %710 = load ptr, ptr %sp, align 8
  %curruns1089 = getelementptr inbounds %struct.Fax3DecodeState, ptr %710, i32 0, i32 8
  %711 = load ptr, ptr %curruns1089, align 8
  store ptr %711, ptr %x, align 8
  %712 = load ptr, ptr %sp, align 8
  %refruns1090 = getelementptr inbounds %struct.Fax3DecodeState, ptr %712, i32 0, i32 7
  %713 = load ptr, ptr %refruns1090, align 8
  %714 = load ptr, ptr %sp, align 8
  %curruns1091 = getelementptr inbounds %struct.Fax3DecodeState, ptr %714, i32 0, i32 8
  store ptr %713, ptr %curruns1091, align 8
  %715 = load ptr, ptr %x, align 8
  %716 = load ptr, ptr %sp, align 8
  %refruns1092 = getelementptr inbounds %struct.Fax3DecodeState, ptr %716, i32 0, i32 7
  store ptr %715, ptr %refruns1092, align 8
  %717 = load ptr, ptr %sp, align 8
  %b1093 = getelementptr inbounds %struct.Fax3DecodeState, ptr %717, i32 0, i32 0
  %rowbytes = getelementptr inbounds %struct.Fax3BaseState, ptr %b1093, i32 0, i32 1
  %718 = load i32, ptr %rowbytes, align 4
  %719 = load ptr, ptr %buf.addr, align 8
  %idx.ext1094 = zext i32 %718 to i64
  %add.ptr1095 = getelementptr inbounds i8, ptr %719, i64 %idx.ext1094
  store ptr %add.ptr1095, ptr %buf.addr, align 8
  %720 = load ptr, ptr %sp, align 8
  %b1096 = getelementptr inbounds %struct.Fax3DecodeState, ptr %720, i32 0, i32 0
  %rowbytes1097 = getelementptr inbounds %struct.Fax3BaseState, ptr %b1096, i32 0, i32 1
  %721 = load i32, ptr %rowbytes1097, align 4
  %722 = load i32, ptr %occ.addr, align 4
  %sub1098 = sub i32 %722, %721
  store i32 %sub1098, ptr %occ.addr, align 4
  %723 = load i32, ptr %occ.addr, align 4
  %cmp1099 = icmp ne i32 %723, 0
  br i1 %cmp1099, label %if.then1101, label %if.end1102

if.then1101:                                      ; preds = %do.end1088
  %724 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %724, i32 0, i32 11
  %725 = load i32, ptr %tif_row, align 8
  %inc = add i32 %725, 1
  store i32 %inc, ptr %tif_row, align 8
  br label %if.end1102

if.end1102:                                       ; preds = %if.then1101, %do.end1088
  br label %while.cond, !llvm.loop !43

EOF2D:                                            ; preds = %if.then98, %if.then54, %if.then16
  br label %do.body1103

do.body1103:                                      ; preds = %EOF2D
  %726 = load i32, ptr %RunLength, align 4
  %tobool1104 = icmp ne i32 %726, 0
  br i1 %tobool1104, label %if.then1105, label %if.end1111

if.then1105:                                      ; preds = %do.body1103
  br label %do.body1106

do.body1106:                                      ; preds = %if.then1105
  %727 = load i32, ptr %RunLength, align 4
  %add1107 = add nsw i32 %727, 0
  %728 = load ptr, ptr %pa, align 8
  %incdec.ptr1108 = getelementptr inbounds i32, ptr %728, i32 1
  store ptr %incdec.ptr1108, ptr %pa, align 8
  store i32 %add1107, ptr %728, align 4
  %729 = load i32, ptr %a0, align 4
  %add1109 = add nsw i32 %729, 0
  store i32 %add1109, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1110

do.end1110:                                       ; preds = %do.body1106
  br label %if.end1111

if.end1111:                                       ; preds = %do.end1110, %do.body1103
  %730 = load i32, ptr %a0, align 4
  %731 = load i32, ptr %lastx, align 4
  %cmp1112 = icmp ne i32 %730, %731
  br i1 %cmp1112, label %if.then1114, label %if.end1169

if.then1114:                                      ; preds = %if.end1111
  %732 = load ptr, ptr %tif.addr, align 8
  %733 = load i32, ptr %a0, align 4
  %734 = load i32, ptr %lastx, align 4
  call void @Fax3BadLength(ptr noundef @Fax3Decode2D.module, ptr noundef %732, i32 noundef %733, i32 noundef %734)
  br label %while.cond1115

while.cond1115:                                   ; preds = %while.body1122, %if.then1114
  %735 = load i32, ptr %a0, align 4
  %736 = load i32, ptr %lastx, align 4
  %cmp1116 = icmp sgt i32 %735, %736
  br i1 %cmp1116, label %land.rhs1118, label %land.end1121

land.rhs1118:                                     ; preds = %while.cond1115
  %737 = load ptr, ptr %pa, align 8
  %738 = load ptr, ptr %thisrun, align 8
  %cmp1119 = icmp ugt ptr %737, %738
  br label %land.end1121

land.end1121:                                     ; preds = %land.rhs1118, %while.cond1115
  %739 = phi i1 [ false, %while.cond1115 ], [ %cmp1119, %land.rhs1118 ]
  br i1 %739, label %while.body1122, label %while.end1125

while.body1122:                                   ; preds = %land.end1121
  %740 = load ptr, ptr %pa, align 8
  %incdec.ptr1123 = getelementptr inbounds i32, ptr %740, i32 -1
  store ptr %incdec.ptr1123, ptr %pa, align 8
  %741 = load i32, ptr %incdec.ptr1123, align 4
  %742 = load i32, ptr %a0, align 4
  %sub1124 = sub i32 %742, %741
  store i32 %sub1124, ptr %a0, align 4
  br label %while.cond1115, !llvm.loop !44

while.end1125:                                    ; preds = %land.end1121
  %743 = load i32, ptr %a0, align 4
  %744 = load i32, ptr %lastx, align 4
  %cmp1126 = icmp slt i32 %743, %744
  br i1 %cmp1126, label %if.then1128, label %if.else1153

if.then1128:                                      ; preds = %while.end1125
  %745 = load i32, ptr %a0, align 4
  %cmp1129 = icmp slt i32 %745, 0
  br i1 %cmp1129, label %if.then1131, label %if.end1132

if.then1131:                                      ; preds = %if.then1128
  store i32 0, ptr %a0, align 4
  br label %if.end1132

if.end1132:                                       ; preds = %if.then1131, %if.then1128
  %746 = load ptr, ptr %pa, align 8
  %747 = load ptr, ptr %thisrun, align 8
  %sub.ptr.lhs.cast1133 = ptrtoint ptr %746 to i64
  %sub.ptr.rhs.cast1134 = ptrtoint ptr %747 to i64
  %sub.ptr.sub1135 = sub i64 %sub.ptr.lhs.cast1133, %sub.ptr.rhs.cast1134
  %sub.ptr.div1136 = sdiv exact i64 %sub.ptr.sub1135, 4
  %and1137 = and i64 %sub.ptr.div1136, 1
  %tobool1138 = icmp ne i64 %and1137, 0
  br i1 %tobool1138, label %if.then1139, label %if.end1145

if.then1139:                                      ; preds = %if.end1132
  br label %do.body1140

do.body1140:                                      ; preds = %if.then1139
  %748 = load i32, ptr %RunLength, align 4
  %add1141 = add nsw i32 %748, 0
  %749 = load ptr, ptr %pa, align 8
  %incdec.ptr1142 = getelementptr inbounds i32, ptr %749, i32 1
  store ptr %incdec.ptr1142, ptr %pa, align 8
  store i32 %add1141, ptr %749, align 4
  %750 = load i32, ptr %a0, align 4
  %add1143 = add nsw i32 %750, 0
  store i32 %add1143, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1144

do.end1144:                                       ; preds = %do.body1140
  br label %if.end1145

if.end1145:                                       ; preds = %do.end1144, %if.end1132
  br label %do.body1146

do.body1146:                                      ; preds = %if.end1145
  %751 = load i32, ptr %RunLength, align 4
  %752 = load i32, ptr %lastx, align 4
  %753 = load i32, ptr %a0, align 4
  %sub1147 = sub nsw i32 %752, %753
  %add1148 = add nsw i32 %751, %sub1147
  %754 = load ptr, ptr %pa, align 8
  %incdec.ptr1149 = getelementptr inbounds i32, ptr %754, i32 1
  store ptr %incdec.ptr1149, ptr %pa, align 8
  store i32 %add1148, ptr %754, align 4
  %755 = load i32, ptr %lastx, align 4
  %756 = load i32, ptr %a0, align 4
  %sub1150 = sub nsw i32 %755, %756
  %757 = load i32, ptr %a0, align 4
  %add1151 = add nsw i32 %757, %sub1150
  store i32 %add1151, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1152

do.end1152:                                       ; preds = %do.body1146
  br label %if.end1168

if.else1153:                                      ; preds = %while.end1125
  %758 = load i32, ptr %a0, align 4
  %759 = load i32, ptr %lastx, align 4
  %cmp1154 = icmp sgt i32 %758, %759
  br i1 %cmp1154, label %if.then1156, label %if.end1167

if.then1156:                                      ; preds = %if.else1153
  br label %do.body1157

do.body1157:                                      ; preds = %if.then1156
  %760 = load i32, ptr %RunLength, align 4
  %761 = load i32, ptr %lastx, align 4
  %add1158 = add nsw i32 %760, %761
  %762 = load ptr, ptr %pa, align 8
  %incdec.ptr1159 = getelementptr inbounds i32, ptr %762, i32 1
  store ptr %incdec.ptr1159, ptr %pa, align 8
  store i32 %add1158, ptr %762, align 4
  %763 = load i32, ptr %lastx, align 4
  %764 = load i32, ptr %a0, align 4
  %add1160 = add nsw i32 %764, %763
  store i32 %add1160, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1161

do.end1161:                                       ; preds = %do.body1157
  br label %do.body1162

do.body1162:                                      ; preds = %do.end1161
  %765 = load i32, ptr %RunLength, align 4
  %add1163 = add nsw i32 %765, 0
  %766 = load ptr, ptr %pa, align 8
  %incdec.ptr1164 = getelementptr inbounds i32, ptr %766, i32 1
  store ptr %incdec.ptr1164, ptr %pa, align 8
  store i32 %add1163, ptr %766, align 4
  %767 = load i32, ptr %a0, align 4
  %add1165 = add nsw i32 %767, 0
  store i32 %add1165, ptr %a0, align 4
  store i32 0, ptr %RunLength, align 4
  br label %do.end1166

do.end1166:                                       ; preds = %do.body1162
  br label %if.end1167

if.end1167:                                       ; preds = %do.end1166, %if.else1153
  br label %if.end1168

if.end1168:                                       ; preds = %if.end1167, %do.end1152
  br label %if.end1169

if.end1169:                                       ; preds = %if.end1168, %if.end1111
  br label %do.end1170

do.end1170:                                       ; preds = %if.end1169
  br label %EOF2Da

EOF2Da:                                           ; preds = %do.end1170, %do.end968, %do.end324
  %768 = load ptr, ptr %sp, align 8
  %fill1171 = getelementptr inbounds %struct.Fax3DecodeState, ptr %768, i32 0, i32 5
  %769 = load ptr, ptr %fill1171, align 8
  %770 = load ptr, ptr %buf.addr, align 8
  %771 = load ptr, ptr %thisrun, align 8
  %772 = load ptr, ptr %pa, align 8
  %773 = load i32, ptr %lastx, align 4
  call void %769(ptr noundef %770, ptr noundef %771, ptr noundef %772, i32 noundef %773)
  br label %do.body1172

do.body1172:                                      ; preds = %EOF2Da
  %774 = load i32, ptr %BitsAvail, align 4
  %775 = load ptr, ptr %sp, align 8
  %bit1173 = getelementptr inbounds %struct.Fax3DecodeState, ptr %775, i32 0, i32 3
  store i32 %774, ptr %bit1173, align 4
  %776 = load i32, ptr %BitAcc, align 4
  %777 = load ptr, ptr %sp, align 8
  %data1174 = getelementptr inbounds %struct.Fax3DecodeState, ptr %777, i32 0, i32 2
  store i32 %776, ptr %data1174, align 8
  %778 = load i32, ptr %EOLcnt, align 4
  %779 = load ptr, ptr %sp, align 8
  %EOLcnt1175 = getelementptr inbounds %struct.Fax3DecodeState, ptr %779, i32 0, i32 4
  store i32 %778, ptr %EOLcnt1175, align 8
  %780 = load ptr, ptr %cp, align 8
  %781 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp1176 = getelementptr inbounds %struct.tiff, ptr %781, i32 0, i32 42
  %782 = load ptr, ptr %tif_rawcp1176, align 8
  %sub.ptr.lhs.cast1177 = ptrtoint ptr %780 to i64
  %sub.ptr.rhs.cast1178 = ptrtoint ptr %782 to i64
  %sub.ptr.sub1179 = sub i64 %sub.ptr.lhs.cast1177, %sub.ptr.rhs.cast1178
  %783 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc1180 = getelementptr inbounds %struct.tiff, ptr %783, i32 0, i32 43
  %784 = load i32, ptr %tif_rawcc1180, align 8
  %conv1181 = sext i32 %784 to i64
  %sub1182 = sub nsw i64 %conv1181, %sub.ptr.sub1179
  %conv1183 = trunc i64 %sub1182 to i32
  store i32 %conv1183, ptr %tif_rawcc1180, align 8
  %785 = load ptr, ptr %cp, align 8
  %786 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp1184 = getelementptr inbounds %struct.tiff, ptr %786, i32 0, i32 42
  store ptr %785, ptr %tif_rawcp1184, align 8
  br label %do.end1185

do.end1185:                                       ; preds = %do.body1172
  store i32 -1, ptr %retval, align 4
  br label %return

while.end1186:                                    ; preds = %while.cond
  br label %do.body1187

do.body1187:                                      ; preds = %while.end1186
  %787 = load i32, ptr %BitsAvail, align 4
  %788 = load ptr, ptr %sp, align 8
  %bit1188 = getelementptr inbounds %struct.Fax3DecodeState, ptr %788, i32 0, i32 3
  store i32 %787, ptr %bit1188, align 4
  %789 = load i32, ptr %BitAcc, align 4
  %790 = load ptr, ptr %sp, align 8
  %data1189 = getelementptr inbounds %struct.Fax3DecodeState, ptr %790, i32 0, i32 2
  store i32 %789, ptr %data1189, align 8
  %791 = load i32, ptr %EOLcnt, align 4
  %792 = load ptr, ptr %sp, align 8
  %EOLcnt1190 = getelementptr inbounds %struct.Fax3DecodeState, ptr %792, i32 0, i32 4
  store i32 %791, ptr %EOLcnt1190, align 8
  %793 = load ptr, ptr %cp, align 8
  %794 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp1191 = getelementptr inbounds %struct.tiff, ptr %794, i32 0, i32 42
  %795 = load ptr, ptr %tif_rawcp1191, align 8
  %sub.ptr.lhs.cast1192 = ptrtoint ptr %793 to i64
  %sub.ptr.rhs.cast1193 = ptrtoint ptr %795 to i64
  %sub.ptr.sub1194 = sub i64 %sub.ptr.lhs.cast1192, %sub.ptr.rhs.cast1193
  %796 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc1195 = getelementptr inbounds %struct.tiff, ptr %796, i32 0, i32 43
  %797 = load i32, ptr %tif_rawcc1195, align 8
  %conv1196 = sext i32 %797 to i64
  %sub1197 = sub nsw i64 %conv1196, %sub.ptr.sub1194
  %conv1198 = trunc i64 %sub1197 to i32
  store i32 %conv1198, ptr %tif_rawcc1195, align 8
  %798 = load ptr, ptr %cp, align 8
  %799 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp1199 = getelementptr inbounds %struct.tiff, ptr %799, i32 0, i32 42
  store ptr %798, ptr %tif_rawcp1199, align 8
  br label %do.end1200

do.end1200:                                       ; preds = %do.body1187
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end1200, %do.end1185
  %800 = load i32, ptr %retval, align 4
  ret i32 %800
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @Fax3Unexpected(ptr noundef %module, ptr noundef %tif, i32 noundef %a0) #0 {
entry:
  %module.addr = alloca ptr, align 8
  %tif.addr = alloca ptr, align 8
  %a0.addr = alloca i32, align 4
  store ptr %module, ptr %module.addr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %a0, ptr %a0.addr, align 4
  %0 = load ptr, ptr %module.addr, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %tif_name, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 11
  %4 = load i32, ptr %tif_row, align 8
  %5 = load i32, ptr %a0.addr, align 4
  %conv = zext i32 %5 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %0, ptr noundef @.str.34, ptr noundef %2, i32 noundef %4, i64 noundef %conv)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @Fax3PrematureEOF(ptr noundef %module, ptr noundef %tif, i32 noundef %a0) #0 {
entry:
  %module.addr = alloca ptr, align 8
  %tif.addr = alloca ptr, align 8
  %a0.addr = alloca i32, align 4
  store ptr %module, ptr %module.addr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %a0, ptr %a0.addr, align 4
  %0 = load ptr, ptr %module.addr, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %tif_name, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 11
  %4 = load i32, ptr %tif_row, align 8
  %5 = load i32, ptr %a0.addr, align 4
  %conv = zext i32 %5 to i64
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %0, ptr noundef @.str.35, ptr noundef %2, i32 noundef %4, i64 noundef %conv)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @Fax3BadLength(ptr noundef %module, ptr noundef %tif, i32 noundef %a0, i32 noundef %lastx) #0 {
entry:
  %module.addr = alloca ptr, align 8
  %tif.addr = alloca ptr, align 8
  %a0.addr = alloca i32, align 4
  %lastx.addr = alloca i32, align 4
  store ptr %module, ptr %module.addr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %a0, ptr %a0.addr, align 4
  store i32 %lastx, ptr %lastx.addr, align 4
  %0 = load ptr, ptr %module.addr, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %tif_name, align 8
  %3 = load i32, ptr %a0.addr, align 4
  %4 = load i32, ptr %lastx.addr, align 4
  %cmp = icmp ult i32 %3, %4
  %5 = zext i1 %cmp to i64
  %cond = select i1 %cmp, ptr @.str.37, ptr @.str.38
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 11
  %7 = load i32, ptr %tif_row, align 8
  %8 = load i32, ptr %a0.addr, align 4
  %conv = zext i32 %8 to i64
  %9 = load i32, ptr %lastx.addr, align 4
  %conv1 = zext i32 %9 to i64
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %0, ptr noundef @.str.36, ptr noundef %2, ptr noundef %cond, i32 noundef %7, i64 noundef %conv, i64 noundef %conv1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @Fax3Extension(ptr noundef %module, ptr noundef %tif, i32 noundef %a0) #0 {
entry:
  %module.addr = alloca ptr, align 8
  %tif.addr = alloca ptr, align 8
  %a0.addr = alloca i32, align 4
  store ptr %module, ptr %module.addr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %a0, ptr %a0.addr, align 4
  %0 = load ptr, ptr %module.addr, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %tif_name, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 11
  %4 = load i32, ptr %tif_row, align 8
  %5 = load i32, ptr %a0.addr, align 4
  %conv = zext i32 %5 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %0, ptr noundef @.str.39, ptr noundef %2, i32 noundef %4, i64 noundef %conv)
  ret void
}

declare void @TIFFWarning(ptr noundef, ptr noundef, ...) #2

declare ptr @TIFFGetBitRevTable(i32 noundef) #2

declare void @_TIFFmemset(ptr noundef, i32 noundef, i32 noundef) #2

declare i32 @TIFFFlushData1(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %7 = load i32, ptr %groupoptions, align 8
  %and = and i32 %7, 4
  %tobool = icmp ne i32 %and, 0
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
  %29 = load i32, ptr %tif_rawcc, align 8
  %30 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %30, i32 0, i32 41
  %31 = load i32, ptr %tif_rawdatasize, align 8
  %cmp14 = icmp sge i32 %29, %31
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
  %37 = load i32, ptr %tif_rawcc17, align 8
  %inc = add nsw i32 %37, 1
  store i32 %inc, ptr %tif_rawcc17, align 8
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
  %47 = load i32, ptr %tif_rawcc25, align 8
  %48 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize26 = getelementptr inbounds %struct.tiff, ptr %48, i32 0, i32 41
  %49 = load i32, ptr %tif_rawdatasize26, align 8
  %cmp27 = icmp sge i32 %47, %49
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
  %55 = load i32, ptr %tif_rawcc35, align 8
  %inc36 = add nsw i32 %55, 1
  store i32 %inc36, ptr %tif_rawcc35, align 8
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
  %57 = load i32, ptr %groupoptions41, align 8
  %and42 = and i32 %57, 1
  %tobool43 = icmp ne i32 %and42, 0
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
  %71 = load i32, ptr %tif_rawcc59, align 8
  %72 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize60 = getelementptr inbounds %struct.tiff, ptr %72, i32 0, i32 41
  %73 = load i32, ptr %tif_rawdatasize60, align 8
  %cmp61 = icmp sge i32 %71, %73
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
  %79 = load i32, ptr %tif_rawcc69, align 8
  %inc70 = add nsw i32 %79, 1
  store i32 %inc70, ptr %tif_rawcc69, align 8
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
  %90 = load i32, ptr %tif_rawcc82, align 8
  %91 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize83 = getelementptr inbounds %struct.tiff, ptr %91, i32 0, i32 41
  %92 = load i32, ptr %tif_rawdatasize83, align 8
  %cmp84 = icmp sge i32 %90, %92
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
  %98 = load i32, ptr %tif_rawcc92, align 8
  %inc93 = add nsw i32 %98, 1
  store i32 %inc93, ptr %tif_rawcc92, align 8
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @Fax3Encode1DRow(ptr noundef %tif, ptr noundef %bp, i32 noundef %bits) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %bits.addr = alloca i32, align 4
  %sp = alloca ptr, align 8
  %span = alloca i32, align 4
  %bs = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %bits, ptr %bits.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  store i32 0, ptr %bs, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end5, %entry
  %2 = load ptr, ptr %bp.addr, align 8
  %3 = load i32, ptr %bs, align 4
  %4 = load i32, ptr %bits.addr, align 4
  %call = call i32 @find0span(ptr noundef %2, i32 noundef %3, i32 noundef %4)
  store i32 %call, ptr %span, align 4
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load i32, ptr %span, align 4
  call void @putspan(ptr noundef %5, i32 noundef %6, ptr noundef @TIFFFaxWhiteCodes)
  %7 = load i32, ptr %span, align 4
  %8 = load i32, ptr %bs, align 4
  %add = add i32 %8, %7
  store i32 %add, ptr %bs, align 4
  %9 = load i32, ptr %bs, align 4
  %10 = load i32, ptr %bits.addr, align 4
  %cmp = icmp uge i32 %9, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %11 = load ptr, ptr %bp.addr, align 8
  %12 = load i32, ptr %bs, align 4
  %13 = load i32, ptr %bits.addr, align 4
  %call1 = call i32 @find1span(ptr noundef %11, i32 noundef %12, i32 noundef %13)
  store i32 %call1, ptr %span, align 4
  %14 = load ptr, ptr %tif.addr, align 8
  %15 = load i32, ptr %span, align 4
  call void @putspan(ptr noundef %14, i32 noundef %15, ptr noundef @TIFFFaxBlackCodes)
  %16 = load i32, ptr %span, align 4
  %17 = load i32, ptr %bs, align 4
  %add2 = add i32 %17, %16
  store i32 %add2, ptr %bs, align 4
  %18 = load i32, ptr %bs, align 4
  %19 = load i32, ptr %bits.addr, align 4
  %cmp3 = icmp uge i32 %18, %19
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
  %25 = load i32, ptr %tif_rawcc, align 8
  %26 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %26, i32 0, i32 41
  %27 = load i32, ptr %tif_rawdatasize, align 8
  %cmp9 = icmp sge i32 %25, %27
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
  %34 = load i32, ptr %tif_rawcc13, align 8
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %tif_rawcc13, align 8
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
  %43 = load i32, ptr %tif_rawcc26, align 8
  %44 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize27 = getelementptr inbounds %struct.tiff, ptr %44, i32 0, i32 41
  %45 = load i32, ptr %tif_rawdatasize27, align 8
  %cmp28 = icmp sge i32 %43, %45
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
  %52 = load i32, ptr %tif_rawcc37, align 8
  %inc38 = add nsw i32 %52, 1
  store i32 %inc38, ptr %tif_rawcc37, align 8
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

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %3 = load i32, ptr %bits.addr, align 4
  %call = call i32 @find0span(ptr noundef %2, i32 noundef 0, i32 noundef %3)
  %add = add nsw i32 0, %call
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, ptr %a1, align 4
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
  %7 = load i32, ptr %bits.addr, align 4
  %call10 = call i32 @find0span(ptr noundef %6, i32 noundef 0, i32 noundef %7)
  %add11 = add nsw i32 0, %call10
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false9, %cond.true8
  %cond13 = phi i32 [ 0, %cond.true8 ], [ %add11, %cond.false9 ]
  store i32 %cond13, ptr %b1, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end146, %cond.end12
  %8 = load i32, ptr %b1, align 4
  %9 = load i32, ptr %bits.addr, align 4
  %cmp14 = icmp ult i32 %8, %9
  br i1 %cmp14, label %cond.true16, label %cond.false30

cond.true16:                                      ; preds = %for.cond
  %10 = load i32, ptr %b1, align 4
  %11 = load ptr, ptr %rp.addr, align 8
  %12 = load i32, ptr %b1, align 4
  %shr17 = lshr i32 %12, 3
  %idxprom = zext i32 %shr17 to i64
  %arrayidx18 = getelementptr inbounds i8, ptr %11, i64 %idxprom
  %13 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %13 to i32
  %14 = load i32, ptr %b1, align 4
  %and20 = and i32 %14, 7
  %sub = sub i32 7, %and20
  %shr21 = ashr i32 %conv19, %sub
  %and22 = and i32 %shr21, 1
  %tobool = icmp ne i32 %and22, 0
  br i1 %tobool, label %cond.true23, label %cond.false25

cond.true23:                                      ; preds = %cond.true16
  %15 = load ptr, ptr %rp.addr, align 8
  %16 = load i32, ptr %b1, align 4
  %17 = load i32, ptr %bits.addr, align 4
  %call24 = call i32 @find1span(ptr noundef %15, i32 noundef %16, i32 noundef %17)
  br label %cond.end27

cond.false25:                                     ; preds = %cond.true16
  %18 = load ptr, ptr %rp.addr, align 8
  %19 = load i32, ptr %b1, align 4
  %20 = load i32, ptr %bits.addr, align 4
  %call26 = call i32 @find0span(ptr noundef %18, i32 noundef %19, i32 noundef %20)
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false25, %cond.true23
  %cond28 = phi i32 [ %call24, %cond.true23 ], [ %call26, %cond.false25 ]
  %add29 = add i32 %10, %cond28
  br label %cond.end31

cond.false30:                                     ; preds = %for.cond
  %21 = load i32, ptr %bits.addr, align 4
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false30, %cond.end27
  %cond32 = phi i32 [ %add29, %cond.end27 ], [ %21, %cond.false30 ]
  store i32 %cond32, ptr %b2, align 4
  %22 = load i32, ptr %b2, align 4
  %23 = load i32, ptr %a1, align 4
  %cmp33 = icmp uge i32 %22, %23
  br i1 %cmp33, label %if.then, label %if.else93

if.then:                                          ; preds = %cond.end31
  %24 = load i32, ptr %b1, align 4
  %25 = load i32, ptr %a1, align 4
  %sub35 = sub i32 %24, %25
  store i32 %sub35, ptr %d, align 4
  %26 = load i32, ptr %d, align 4
  %cmp36 = icmp sle i32 -3, %26
  br i1 %cmp36, label %land.lhs.true, label %if.then40

land.lhs.true:                                    ; preds = %if.then
  %27 = load i32, ptr %d, align 4
  %cmp38 = icmp sle i32 %27, 3
  br i1 %cmp38, label %if.else83, label %if.then40

if.then40:                                        ; preds = %land.lhs.true, %if.then
  %28 = load i32, ptr %a1, align 4
  %29 = load i32, ptr %bits.addr, align 4
  %cmp41 = icmp ult i32 %28, %29
  br i1 %cmp41, label %cond.true43, label %cond.false60

cond.true43:                                      ; preds = %if.then40
  %30 = load i32, ptr %a1, align 4
  %31 = load ptr, ptr %bp.addr, align 8
  %32 = load i32, ptr %a1, align 4
  %shr44 = lshr i32 %32, 3
  %idxprom45 = zext i32 %shr44 to i64
  %arrayidx46 = getelementptr inbounds i8, ptr %31, i64 %idxprom45
  %33 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %33 to i32
  %34 = load i32, ptr %a1, align 4
  %and48 = and i32 %34, 7
  %sub49 = sub i32 7, %and48
  %shr50 = ashr i32 %conv47, %sub49
  %and51 = and i32 %shr50, 1
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %cond.true53, label %cond.false55

cond.true53:                                      ; preds = %cond.true43
  %35 = load ptr, ptr %bp.addr, align 8
  %36 = load i32, ptr %a1, align 4
  %37 = load i32, ptr %bits.addr, align 4
  %call54 = call i32 @find1span(ptr noundef %35, i32 noundef %36, i32 noundef %37)
  br label %cond.end57

cond.false55:                                     ; preds = %cond.true43
  %38 = load ptr, ptr %bp.addr, align 8
  %39 = load i32, ptr %a1, align 4
  %40 = load i32, ptr %bits.addr, align 4
  %call56 = call i32 @find0span(ptr noundef %38, i32 noundef %39, i32 noundef %40)
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false55, %cond.true53
  %cond58 = phi i32 [ %call54, %cond.true53 ], [ %call56, %cond.false55 ]
  %add59 = add i32 %30, %cond58
  br label %cond.end61

cond.false60:                                     ; preds = %if.then40
  %41 = load i32, ptr %bits.addr, align 4
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false60, %cond.end57
  %cond62 = phi i32 [ %add59, %cond.end57 ], [ %41, %cond.false60 ]
  store i32 %cond62, ptr %a2, align 4
  %42 = load ptr, ptr %tif.addr, align 8
  %43 = load i16, ptr getelementptr inbounds (%struct.tableentry, ptr @horizcode, i32 0, i32 1), align 2
  %conv63 = zext i16 %43 to i32
  %44 = load i16, ptr @horizcode, align 2
  %conv64 = zext i16 %44 to i32
  call void @Fax3PutBits(ptr noundef %42, i32 noundef %conv63, i32 noundef %conv64)
  %45 = load i32, ptr %a0, align 4
  %46 = load i32, ptr %a1, align 4
  %add65 = add i32 %45, %46
  %cmp66 = icmp eq i32 %add65, 0
  br i1 %cmp66, label %if.then78, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end61
  %47 = load ptr, ptr %bp.addr, align 8
  %48 = load i32, ptr %a0, align 4
  %shr68 = lshr i32 %48, 3
  %idxprom69 = zext i32 %shr68 to i64
  %arrayidx70 = getelementptr inbounds i8, ptr %47, i64 %idxprom69
  %49 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %49 to i32
  %50 = load i32, ptr %a0, align 4
  %and72 = and i32 %50, 7
  %sub73 = sub i32 7, %and72
  %shr74 = ashr i32 %conv71, %sub73
  %and75 = and i32 %shr74, 1
  %cmp76 = icmp eq i32 %and75, 0
  br i1 %cmp76, label %if.then78, label %if.else

if.then78:                                        ; preds = %lor.lhs.false, %cond.end61
  %51 = load ptr, ptr %tif.addr, align 8
  %52 = load i32, ptr %a1, align 4
  %53 = load i32, ptr %a0, align 4
  %sub79 = sub i32 %52, %53
  call void @putspan(ptr noundef %51, i32 noundef %sub79, ptr noundef @TIFFFaxWhiteCodes)
  %54 = load ptr, ptr %tif.addr, align 8
  %55 = load i32, ptr %a2, align 4
  %56 = load i32, ptr %a1, align 4
  %sub80 = sub i32 %55, %56
  call void @putspan(ptr noundef %54, i32 noundef %sub80, ptr noundef @TIFFFaxBlackCodes)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %57 = load ptr, ptr %tif.addr, align 8
  %58 = load i32, ptr %a1, align 4
  %59 = load i32, ptr %a0, align 4
  %sub81 = sub i32 %58, %59
  call void @putspan(ptr noundef %57, i32 noundef %sub81, ptr noundef @TIFFFaxBlackCodes)
  %60 = load ptr, ptr %tif.addr, align 8
  %61 = load i32, ptr %a2, align 4
  %62 = load i32, ptr %a1, align 4
  %sub82 = sub i32 %61, %62
  call void @putspan(ptr noundef %60, i32 noundef %sub82, ptr noundef @TIFFFaxWhiteCodes)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then78
  %63 = load i32, ptr %a2, align 4
  store i32 %63, ptr %a0, align 4
  br label %if.end92

if.else83:                                        ; preds = %land.lhs.true
  %64 = load ptr, ptr %tif.addr, align 8
  %65 = load i32, ptr %d, align 4
  %add84 = add nsw i32 %65, 3
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds [7 x %struct.tableentry], ptr @vcodes, i64 0, i64 %idxprom85
  %code = getelementptr inbounds %struct.tableentry, ptr %arrayidx86, i32 0, i32 1
  %66 = load i16, ptr %code, align 2
  %conv87 = zext i16 %66 to i32
  %67 = load i32, ptr %d, align 4
  %add88 = add nsw i32 %67, 3
  %idxprom89 = sext i32 %add88 to i64
  %arrayidx90 = getelementptr inbounds [7 x %struct.tableentry], ptr @vcodes, i64 0, i64 %idxprom89
  %length = getelementptr inbounds %struct.tableentry, ptr %arrayidx90, i32 0, i32 0
  %68 = load i16, ptr %length, align 2
  %conv91 = zext i16 %68 to i32
  call void @Fax3PutBits(ptr noundef %64, i32 noundef %conv87, i32 noundef %conv91)
  %69 = load i32, ptr %a1, align 4
  store i32 %69, ptr %a0, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.else83, %if.end
  br label %if.end96

if.else93:                                        ; preds = %cond.end31
  %70 = load ptr, ptr %tif.addr, align 8
  %71 = load i16, ptr getelementptr inbounds (%struct.tableentry, ptr @passcode, i32 0, i32 1), align 2
  %conv94 = zext i16 %71 to i32
  %72 = load i16, ptr @passcode, align 2
  %conv95 = zext i16 %72 to i32
  call void @Fax3PutBits(ptr noundef %70, i32 noundef %conv94, i32 noundef %conv95)
  %73 = load i32, ptr %b2, align 4
  store i32 %73, ptr %a0, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.else93, %if.end92
  %74 = load i32, ptr %a0, align 4
  %75 = load i32, ptr %bits.addr, align 4
  %cmp97 = icmp uge i32 %74, %75
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.end96
  br label %for.end

if.end100:                                        ; preds = %if.end96
  %76 = load i32, ptr %a0, align 4
  %77 = load ptr, ptr %bp.addr, align 8
  %78 = load i32, ptr %a0, align 4
  %shr101 = lshr i32 %78, 3
  %idxprom102 = zext i32 %shr101 to i64
  %arrayidx103 = getelementptr inbounds i8, ptr %77, i64 %idxprom102
  %79 = load i8, ptr %arrayidx103, align 1
  %conv104 = zext i8 %79 to i32
  %80 = load i32, ptr %a0, align 4
  %and105 = and i32 %80, 7
  %sub106 = sub i32 7, %and105
  %shr107 = ashr i32 %conv104, %sub106
  %and108 = and i32 %shr107, 1
  %tobool109 = icmp ne i32 %and108, 0
  br i1 %tobool109, label %cond.true110, label %cond.false112

cond.true110:                                     ; preds = %if.end100
  %81 = load ptr, ptr %bp.addr, align 8
  %82 = load i32, ptr %a0, align 4
  %83 = load i32, ptr %bits.addr, align 4
  %call111 = call i32 @find1span(ptr noundef %81, i32 noundef %82, i32 noundef %83)
  br label %cond.end114

cond.false112:                                    ; preds = %if.end100
  %84 = load ptr, ptr %bp.addr, align 8
  %85 = load i32, ptr %a0, align 4
  %86 = load i32, ptr %bits.addr, align 4
  %call113 = call i32 @find0span(ptr noundef %84, i32 noundef %85, i32 noundef %86)
  br label %cond.end114

cond.end114:                                      ; preds = %cond.false112, %cond.true110
  %cond115 = phi i32 [ %call111, %cond.true110 ], [ %call113, %cond.false112 ]
  %add116 = add i32 %76, %cond115
  store i32 %add116, ptr %a1, align 4
  %87 = load i32, ptr %a0, align 4
  %88 = load ptr, ptr %bp.addr, align 8
  %89 = load i32, ptr %a0, align 4
  %shr117 = lshr i32 %89, 3
  %idxprom118 = zext i32 %shr117 to i64
  %arrayidx119 = getelementptr inbounds i8, ptr %88, i64 %idxprom118
  %90 = load i8, ptr %arrayidx119, align 1
  %conv120 = zext i8 %90 to i32
  %91 = load i32, ptr %a0, align 4
  %and121 = and i32 %91, 7
  %sub122 = sub i32 7, %and121
  %shr123 = ashr i32 %conv120, %sub122
  %and124 = and i32 %shr123, 1
  %tobool125 = icmp ne i32 %and124, 0
  br i1 %tobool125, label %cond.false128, label %cond.true126

cond.true126:                                     ; preds = %cond.end114
  %92 = load ptr, ptr %rp.addr, align 8
  %93 = load i32, ptr %a0, align 4
  %94 = load i32, ptr %bits.addr, align 4
  %call127 = call i32 @find1span(ptr noundef %92, i32 noundef %93, i32 noundef %94)
  br label %cond.end130

cond.false128:                                    ; preds = %cond.end114
  %95 = load ptr, ptr %rp.addr, align 8
  %96 = load i32, ptr %a0, align 4
  %97 = load i32, ptr %bits.addr, align 4
  %call129 = call i32 @find0span(ptr noundef %95, i32 noundef %96, i32 noundef %97)
  br label %cond.end130

cond.end130:                                      ; preds = %cond.false128, %cond.true126
  %cond131 = phi i32 [ %call127, %cond.true126 ], [ %call129, %cond.false128 ]
  %add132 = add i32 %87, %cond131
  store i32 %add132, ptr %b1, align 4
  %98 = load i32, ptr %b1, align 4
  %99 = load ptr, ptr %bp.addr, align 8
  %100 = load i32, ptr %a0, align 4
  %shr133 = lshr i32 %100, 3
  %idxprom134 = zext i32 %shr133 to i64
  %arrayidx135 = getelementptr inbounds i8, ptr %99, i64 %idxprom134
  %101 = load i8, ptr %arrayidx135, align 1
  %conv136 = zext i8 %101 to i32
  %102 = load i32, ptr %a0, align 4
  %and137 = and i32 %102, 7
  %sub138 = sub i32 7, %and137
  %shr139 = ashr i32 %conv136, %sub138
  %and140 = and i32 %shr139, 1
  %tobool141 = icmp ne i32 %and140, 0
  br i1 %tobool141, label %cond.true142, label %cond.false144

cond.true142:                                     ; preds = %cond.end130
  %103 = load ptr, ptr %rp.addr, align 8
  %104 = load i32, ptr %b1, align 4
  %105 = load i32, ptr %bits.addr, align 4
  %call143 = call i32 @find1span(ptr noundef %103, i32 noundef %104, i32 noundef %105)
  br label %cond.end146

cond.false144:                                    ; preds = %cond.end130
  %106 = load ptr, ptr %rp.addr, align 8
  %107 = load i32, ptr %b1, align 4
  %108 = load i32, ptr %bits.addr, align 4
  %call145 = call i32 @find0span(ptr noundef %106, i32 noundef %107, i32 noundef %108)
  br label %cond.end146

cond.end146:                                      ; preds = %cond.false144, %cond.true142
  %cond147 = phi i32 [ %call143, %cond.true142 ], [ %call145, %cond.false144 ]
  %add148 = add i32 %98, %cond147
  store i32 %add148, ptr %b1, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then99
  ret i32 1
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @find0span(ptr noundef %bp, i32 noundef %bs, i32 noundef %be) #0 {
entry:
  %retval = alloca i32, align 4
  %bp.addr = alloca ptr, align 8
  %bs.addr = alloca i32, align 4
  %be.addr = alloca i32, align 4
  %bits = alloca i32, align 4
  %n = alloca i32, align 4
  %span = alloca i32, align 4
  %lp = alloca ptr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %bs, ptr %bs.addr, align 4
  store i32 %be, ptr %be.addr, align 4
  %0 = load i32, ptr %be.addr, align 4
  %1 = load i32, ptr %bs.addr, align 4
  %sub = sub nsw i32 %0, %1
  store i32 %sub, ptr %bits, align 4
  %2 = load i32, ptr %bs.addr, align 4
  %shr = ashr i32 %2, 3
  %3 = load ptr, ptr %bp.addr, align 8
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.ext
  store ptr %add.ptr, ptr %bp.addr, align 8
  %4 = load i32, ptr %bits, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, ptr %bs.addr, align 4
  %and = and i32 %5, 7
  store i32 %and, ptr %n, align 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %bp.addr, align 8
  %7 = load i8, ptr %6, align 1
  %conv = zext i8 %7 to i32
  %8 = load i32, ptr %n, align 4
  %shl = shl i32 %conv, %8
  %and1 = and i32 %shl, 255
  %idxprom = sext i32 %and1 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %idxprom
  %9 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %9 to i32
  store i32 %conv2, ptr %span, align 4
  %10 = load i32, ptr %span, align 4
  %11 = load i32, ptr %n, align 4
  %sub3 = sub nsw i32 8, %11
  %cmp4 = icmp sgt i32 %10, %sub3
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %12 = load i32, ptr %n, align 4
  %sub7 = sub nsw i32 8, %12
  store i32 %sub7, ptr %span, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %13 = load i32, ptr %span, align 4
  %14 = load i32, ptr %bits, align 4
  %cmp8 = icmp sgt i32 %13, %14
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %15 = load i32, ptr %bits, align 4
  store i32 %15, ptr %span, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %16 = load i32, ptr %n, align 4
  %17 = load i32, ptr %span, align 4
  %add = add nsw i32 %16, %17
  %cmp12 = icmp slt i32 %add, 8
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  %18 = load i32, ptr %span, align 4
  store i32 %18, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end11
  %19 = load i32, ptr %span, align 4
  %20 = load i32, ptr %bits, align 4
  %sub16 = sub nsw i32 %20, %19
  store i32 %sub16, ptr %bits, align 4
  %21 = load ptr, ptr %bp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr, ptr %bp.addr, align 8
  br label %if.end17

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 0, ptr %span, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end15
  %22 = load i32, ptr %bits, align 4
  %conv18 = sext i32 %22 to i64
  %cmp19 = icmp uge i64 %conv18, 128
  br i1 %cmp19, label %if.then21, label %if.end52

if.then21:                                        ; preds = %if.end17
  br label %while.cond

while.cond:                                       ; preds = %if.end33, %if.then21
  %23 = load ptr, ptr %bp.addr, align 8
  %24 = ptrtoint ptr %23 to i64
  %and22 = and i64 %24, 7
  %cmp23 = icmp eq i64 %and22, 0
  %lnot = xor i1 %cmp23, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load ptr, ptr %bp.addr, align 8
  %26 = load i8, ptr %25, align 1
  %conv25 = zext i8 %26 to i32
  %cmp26 = icmp ne i32 %conv25, 0
  br i1 %cmp26, label %if.then28, label %if.end33

if.then28:                                        ; preds = %while.body
  %27 = load i32, ptr %span, align 4
  %28 = load ptr, ptr %bp.addr, align 8
  %29 = load i8, ptr %28, align 1
  %idxprom29 = zext i8 %29 to i64
  %arrayidx30 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %idxprom29
  %30 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %30 to i32
  %add32 = add nsw i32 %27, %conv31
  store i32 %add32, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %while.body
  %31 = load i32, ptr %span, align 4
  %add34 = add nsw i32 %31, 8
  store i32 %add34, ptr %span, align 4
  %32 = load i32, ptr %bits, align 4
  %sub35 = sub nsw i32 %32, 8
  store i32 %sub35, ptr %bits, align 4
  %33 = load ptr, ptr %bp.addr, align 8
  %incdec.ptr36 = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr36, ptr %bp.addr, align 8
  br label %while.cond, !llvm.loop !47

while.end:                                        ; preds = %while.cond
  %34 = load ptr, ptr %bp.addr, align 8
  store ptr %34, ptr %lp, align 8
  br label %while.cond37

while.cond37:                                     ; preds = %while.body43, %while.end
  %35 = load i32, ptr %bits, align 4
  %conv38 = sext i32 %35 to i64
  %cmp39 = icmp uge i64 %conv38, 64
  br i1 %cmp39, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond37
  %36 = load ptr, ptr %lp, align 8
  %37 = load i64, ptr %36, align 8
  %cmp41 = icmp eq i64 %37, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond37
  %38 = phi i1 [ false, %while.cond37 ], [ %cmp41, %land.rhs ]
  br i1 %38, label %while.body43, label %while.end51

while.body43:                                     ; preds = %land.end
  %39 = load i32, ptr %span, align 4
  %conv44 = sext i32 %39 to i64
  %add45 = add i64 %conv44, 64
  %conv46 = trunc i64 %add45 to i32
  store i32 %conv46, ptr %span, align 4
  %40 = load i32, ptr %bits, align 4
  %conv47 = sext i32 %40 to i64
  %sub48 = sub i64 %conv47, 64
  %conv49 = trunc i64 %sub48 to i32
  store i32 %conv49, ptr %bits, align 4
  %41 = load ptr, ptr %lp, align 8
  %incdec.ptr50 = getelementptr inbounds i64, ptr %41, i32 1
  store ptr %incdec.ptr50, ptr %lp, align 8
  br label %while.cond37, !llvm.loop !48

while.end51:                                      ; preds = %land.end
  %42 = load ptr, ptr %lp, align 8
  store ptr %42, ptr %bp.addr, align 8
  br label %if.end52

if.end52:                                         ; preds = %while.end51, %if.end17
  br label %while.cond53

while.cond53:                                     ; preds = %if.end65, %if.end52
  %43 = load i32, ptr %bits, align 4
  %cmp54 = icmp sge i32 %43, 8
  br i1 %cmp54, label %while.body56, label %while.end69

while.body56:                                     ; preds = %while.cond53
  %44 = load ptr, ptr %bp.addr, align 8
  %45 = load i8, ptr %44, align 1
  %conv57 = zext i8 %45 to i32
  %cmp58 = icmp ne i32 %conv57, 0
  br i1 %cmp58, label %if.then60, label %if.end65

if.then60:                                        ; preds = %while.body56
  %46 = load i32, ptr %span, align 4
  %47 = load ptr, ptr %bp.addr, align 8
  %48 = load i8, ptr %47, align 1
  %idxprom61 = zext i8 %48 to i64
  %arrayidx62 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %idxprom61
  %49 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %49 to i32
  %add64 = add nsw i32 %46, %conv63
  store i32 %add64, ptr %retval, align 4
  br label %return

if.end65:                                         ; preds = %while.body56
  %50 = load i32, ptr %span, align 4
  %add66 = add nsw i32 %50, 8
  store i32 %add66, ptr %span, align 4
  %51 = load i32, ptr %bits, align 4
  %sub67 = sub nsw i32 %51, 8
  store i32 %sub67, ptr %bits, align 4
  %52 = load ptr, ptr %bp.addr, align 8
  %incdec.ptr68 = getelementptr inbounds i8, ptr %52, i32 1
  store ptr %incdec.ptr68, ptr %bp.addr, align 8
  br label %while.cond53, !llvm.loop !49

while.end69:                                      ; preds = %while.cond53
  %53 = load i32, ptr %bits, align 4
  %cmp70 = icmp sgt i32 %53, 0
  br i1 %cmp70, label %if.then72, label %if.end79

if.then72:                                        ; preds = %while.end69
  %54 = load ptr, ptr %bp.addr, align 8
  %55 = load i8, ptr %54, align 1
  %idxprom73 = zext i8 %55 to i64
  %arrayidx74 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %idxprom73
  %56 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %56 to i32
  store i32 %conv75, ptr %n, align 4
  %57 = load i32, ptr %n, align 4
  %58 = load i32, ptr %bits, align 4
  %cmp76 = icmp sgt i32 %57, %58
  br i1 %cmp76, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then72
  %59 = load i32, ptr %bits, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then72
  %60 = load i32, ptr %n, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %59, %cond.true ], [ %60, %cond.false ]
  %61 = load i32, ptr %span, align 4
  %add78 = add nsw i32 %61, %cond
  store i32 %add78, ptr %span, align 4
  br label %if.end79

if.end79:                                         ; preds = %cond.end, %while.end69
  %62 = load i32, ptr %span, align 4
  store i32 %62, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end79, %if.then60, %if.then28, %if.then14
  %63 = load i32, ptr %retval, align 4
  ret i32 %63
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %6 = load i32, ptr %span.addr, align 4
  %cmp = icmp sge i32 %6, 2624
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
  %21 = load i32, ptr %tif_rawcc, align 8
  %22 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %22, i32 0, i32 41
  %23 = load i32, ptr %tif_rawdatasize, align 8
  %cmp11 = icmp sge i32 %21, %23
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
  %29 = load i32, ptr %tif_rawcc14, align 8
  %inc = add nsw i32 %29, 1
  store i32 %inc, ptr %tif_rawcc14, align 8
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
  %40 = load i32, ptr %tif_rawcc22, align 8
  %41 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize23 = getelementptr inbounds %struct.tiff, ptr %41, i32 0, i32 41
  %42 = load i32, ptr %tif_rawdatasize23, align 8
  %cmp24 = icmp sge i32 %40, %42
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
  %48 = load i32, ptr %tif_rawcc32, align 8
  %inc33 = add nsw i32 %48, 1
  store i32 %inc33, ptr %tif_rawcc32, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end28, %while.end
  %49 = load ptr, ptr %te, align 8
  %runlen = getelementptr inbounds %struct.tableentry, ptr %49, i32 0, i32 2
  %50 = load i16, ptr %runlen, align 2
  %conv35 = sext i16 %50 to i32
  %51 = load i32, ptr %span.addr, align 4
  %sub36 = sub nsw i32 %51, %conv35
  store i32 %sub36, ptr %span.addr, align 4
  br label %while.cond, !llvm.loop !51

while.end37:                                      ; preds = %while.cond
  %52 = load i32, ptr %span.addr, align 4
  %cmp38 = icmp sge i32 %52, 64
  br i1 %cmp38, label %if.then40, label %if.end102

if.then40:                                        ; preds = %while.end37
  %53 = load ptr, ptr %tab.addr, align 8
  %54 = load i32, ptr %span.addr, align 4
  %shr42 = ashr i32 %54, 6
  %add = add nsw i32 63, %shr42
  %idxprom43 = sext i32 %add to i64
  %arrayidx44 = getelementptr inbounds %struct.tableentry, ptr %53, i64 %idxprom43
  store ptr %arrayidx44, ptr %te41, align 8
  %55 = load ptr, ptr %te41, align 8
  %runlen45 = getelementptr inbounds %struct.tableentry, ptr %55, i32 0, i32 2
  %56 = load i16, ptr %runlen45, align 2
  %conv46 = sext i16 %56 to i32
  %57 = load i32, ptr %span.addr, align 4
  %shr47 = ashr i32 %57, 6
  %mul = mul nsw i32 64, %shr47
  %cmp48 = icmp eq i32 %conv46, %mul
  %lnot = xor i1 %cmp48, true
  %lnot.ext = zext i1 %lnot to i32
  %conv50 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv50, 0
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
  %code51 = getelementptr inbounds %struct.tableentry, ptr %59, i32 0, i32 1
  %60 = load i16, ptr %code51, align 2
  %conv52 = zext i16 %60 to i32
  store i32 %conv52, ptr %code, align 4
  %61 = load ptr, ptr %te41, align 8
  %length53 = getelementptr inbounds %struct.tableentry, ptr %61, i32 0, i32 0
  %62 = load i16, ptr %length53, align 2
  %conv54 = zext i16 %62 to i32
  store i32 %conv54, ptr %length, align 4
  br label %while.cond55

while.cond55:                                     ; preds = %if.end69, %cond.end
  %63 = load i32, ptr %length, align 4
  %64 = load i32, ptr %bit, align 4
  %cmp56 = icmp ugt i32 %63, %64
  br i1 %cmp56, label %while.body58, label %while.end75

while.body58:                                     ; preds = %while.cond55
  %65 = load i32, ptr %code, align 4
  %66 = load i32, ptr %length, align 4
  %67 = load i32, ptr %bit, align 4
  %sub59 = sub i32 %66, %67
  %shr60 = lshr i32 %65, %sub59
  %68 = load i32, ptr %data, align 4
  %or61 = or i32 %68, %shr60
  store i32 %or61, ptr %data, align 4
  %69 = load i32, ptr %bit, align 4
  %70 = load i32, ptr %length, align 4
  %sub62 = sub i32 %70, %69
  store i32 %sub62, ptr %length, align 4
  %71 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc63 = getelementptr inbounds %struct.tiff, ptr %71, i32 0, i32 43
  %72 = load i32, ptr %tif_rawcc63, align 8
  %73 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize64 = getelementptr inbounds %struct.tiff, ptr %73, i32 0, i32 41
  %74 = load i32, ptr %tif_rawdatasize64, align 8
  %cmp65 = icmp sge i32 %72, %74
  br i1 %cmp65, label %if.then67, label %if.end69

if.then67:                                        ; preds = %while.body58
  %75 = load ptr, ptr %tif.addr, align 8
  %call68 = call i32 @TIFFFlushData1(ptr noundef %75)
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %while.body58
  %76 = load i32, ptr %data, align 4
  %conv70 = trunc i32 %76 to i8
  %77 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp71 = getelementptr inbounds %struct.tiff, ptr %77, i32 0, i32 42
  %78 = load ptr, ptr %tif_rawcp71, align 8
  %incdec.ptr72 = getelementptr inbounds i8, ptr %78, i32 1
  store ptr %incdec.ptr72, ptr %tif_rawcp71, align 8
  store i8 %conv70, ptr %78, align 1
  %79 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc73 = getelementptr inbounds %struct.tiff, ptr %79, i32 0, i32 43
  %80 = load i32, ptr %tif_rawcc73, align 8
  %inc74 = add nsw i32 %80, 1
  store i32 %inc74, ptr %tif_rawcc73, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %while.cond55, !llvm.loop !52

while.end75:                                      ; preds = %while.cond55
  %81 = load i32, ptr %code, align 4
  %82 = load i32, ptr %length, align 4
  %idxprom76 = zext i32 %82 to i64
  %arrayidx77 = getelementptr inbounds [9 x i32], ptr @_msbmask, i64 0, i64 %idxprom76
  %83 = load i32, ptr %arrayidx77, align 4
  %and78 = and i32 %81, %83
  %84 = load i32, ptr %bit, align 4
  %85 = load i32, ptr %length, align 4
  %sub79 = sub i32 %84, %85
  %shl80 = shl i32 %and78, %sub79
  %86 = load i32, ptr %data, align 4
  %or81 = or i32 %86, %shl80
  store i32 %or81, ptr %data, align 4
  %87 = load i32, ptr %length, align 4
  %88 = load i32, ptr %bit, align 4
  %sub82 = sub i32 %88, %87
  store i32 %sub82, ptr %bit, align 4
  %89 = load i32, ptr %bit, align 4
  %cmp83 = icmp eq i32 %89, 0
  br i1 %cmp83, label %if.then85, label %if.end98

if.then85:                                        ; preds = %while.end75
  %90 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc86 = getelementptr inbounds %struct.tiff, ptr %90, i32 0, i32 43
  %91 = load i32, ptr %tif_rawcc86, align 8
  %92 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize87 = getelementptr inbounds %struct.tiff, ptr %92, i32 0, i32 41
  %93 = load i32, ptr %tif_rawdatasize87, align 8
  %cmp88 = icmp sge i32 %91, %93
  br i1 %cmp88, label %if.then90, label %if.end92

if.then90:                                        ; preds = %if.then85
  %94 = load ptr, ptr %tif.addr, align 8
  %call91 = call i32 @TIFFFlushData1(ptr noundef %94)
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %if.then85
  %95 = load i32, ptr %data, align 4
  %conv93 = trunc i32 %95 to i8
  %96 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp94 = getelementptr inbounds %struct.tiff, ptr %96, i32 0, i32 42
  %97 = load ptr, ptr %tif_rawcp94, align 8
  %incdec.ptr95 = getelementptr inbounds i8, ptr %97, i32 1
  store ptr %incdec.ptr95, ptr %tif_rawcp94, align 8
  store i8 %conv93, ptr %97, align 1
  %98 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc96 = getelementptr inbounds %struct.tiff, ptr %98, i32 0, i32 43
  %99 = load i32, ptr %tif_rawcc96, align 8
  %inc97 = add nsw i32 %99, 1
  store i32 %inc97, ptr %tif_rawcc96, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.end92, %while.end75
  %100 = load ptr, ptr %te41, align 8
  %runlen99 = getelementptr inbounds %struct.tableentry, ptr %100, i32 0, i32 2
  %101 = load i16, ptr %runlen99, align 2
  %conv100 = sext i16 %101 to i32
  %102 = load i32, ptr %span.addr, align 4
  %sub101 = sub nsw i32 %102, %conv100
  store i32 %sub101, ptr %span.addr, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.end98, %while.end37
  %103 = load ptr, ptr %tab.addr, align 8
  %104 = load i32, ptr %span.addr, align 4
  %idxprom103 = sext i32 %104 to i64
  %arrayidx104 = getelementptr inbounds %struct.tableentry, ptr %103, i64 %idxprom103
  %code105 = getelementptr inbounds %struct.tableentry, ptr %arrayidx104, i32 0, i32 1
  %105 = load i16, ptr %code105, align 2
  %conv106 = zext i16 %105 to i32
  store i32 %conv106, ptr %code, align 4
  %106 = load ptr, ptr %tab.addr, align 8
  %107 = load i32, ptr %span.addr, align 4
  %idxprom107 = sext i32 %107 to i64
  %arrayidx108 = getelementptr inbounds %struct.tableentry, ptr %106, i64 %idxprom107
  %length109 = getelementptr inbounds %struct.tableentry, ptr %arrayidx108, i32 0, i32 0
  %108 = load i16, ptr %length109, align 2
  %conv110 = zext i16 %108 to i32
  store i32 %conv110, ptr %length, align 4
  br label %while.cond111

while.cond111:                                    ; preds = %if.end125, %if.end102
  %109 = load i32, ptr %length, align 4
  %110 = load i32, ptr %bit, align 4
  %cmp112 = icmp ugt i32 %109, %110
  br i1 %cmp112, label %while.body114, label %while.end131

while.body114:                                    ; preds = %while.cond111
  %111 = load i32, ptr %code, align 4
  %112 = load i32, ptr %length, align 4
  %113 = load i32, ptr %bit, align 4
  %sub115 = sub i32 %112, %113
  %shr116 = lshr i32 %111, %sub115
  %114 = load i32, ptr %data, align 4
  %or117 = or i32 %114, %shr116
  store i32 %or117, ptr %data, align 4
  %115 = load i32, ptr %bit, align 4
  %116 = load i32, ptr %length, align 4
  %sub118 = sub i32 %116, %115
  store i32 %sub118, ptr %length, align 4
  %117 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc119 = getelementptr inbounds %struct.tiff, ptr %117, i32 0, i32 43
  %118 = load i32, ptr %tif_rawcc119, align 8
  %119 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize120 = getelementptr inbounds %struct.tiff, ptr %119, i32 0, i32 41
  %120 = load i32, ptr %tif_rawdatasize120, align 8
  %cmp121 = icmp sge i32 %118, %120
  br i1 %cmp121, label %if.then123, label %if.end125

if.then123:                                       ; preds = %while.body114
  %121 = load ptr, ptr %tif.addr, align 8
  %call124 = call i32 @TIFFFlushData1(ptr noundef %121)
  br label %if.end125

if.end125:                                        ; preds = %if.then123, %while.body114
  %122 = load i32, ptr %data, align 4
  %conv126 = trunc i32 %122 to i8
  %123 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp127 = getelementptr inbounds %struct.tiff, ptr %123, i32 0, i32 42
  %124 = load ptr, ptr %tif_rawcp127, align 8
  %incdec.ptr128 = getelementptr inbounds i8, ptr %124, i32 1
  store ptr %incdec.ptr128, ptr %tif_rawcp127, align 8
  store i8 %conv126, ptr %124, align 1
  %125 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc129 = getelementptr inbounds %struct.tiff, ptr %125, i32 0, i32 43
  %126 = load i32, ptr %tif_rawcc129, align 8
  %inc130 = add nsw i32 %126, 1
  store i32 %inc130, ptr %tif_rawcc129, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %while.cond111, !llvm.loop !53

while.end131:                                     ; preds = %while.cond111
  %127 = load i32, ptr %code, align 4
  %128 = load i32, ptr %length, align 4
  %idxprom132 = zext i32 %128 to i64
  %arrayidx133 = getelementptr inbounds [9 x i32], ptr @_msbmask, i64 0, i64 %idxprom132
  %129 = load i32, ptr %arrayidx133, align 4
  %and134 = and i32 %127, %129
  %130 = load i32, ptr %bit, align 4
  %131 = load i32, ptr %length, align 4
  %sub135 = sub i32 %130, %131
  %shl136 = shl i32 %and134, %sub135
  %132 = load i32, ptr %data, align 4
  %or137 = or i32 %132, %shl136
  store i32 %or137, ptr %data, align 4
  %133 = load i32, ptr %length, align 4
  %134 = load i32, ptr %bit, align 4
  %sub138 = sub i32 %134, %133
  store i32 %sub138, ptr %bit, align 4
  %135 = load i32, ptr %bit, align 4
  %cmp139 = icmp eq i32 %135, 0
  br i1 %cmp139, label %if.then141, label %if.end154

if.then141:                                       ; preds = %while.end131
  %136 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc142 = getelementptr inbounds %struct.tiff, ptr %136, i32 0, i32 43
  %137 = load i32, ptr %tif_rawcc142, align 8
  %138 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize143 = getelementptr inbounds %struct.tiff, ptr %138, i32 0, i32 41
  %139 = load i32, ptr %tif_rawdatasize143, align 8
  %cmp144 = icmp sge i32 %137, %139
  br i1 %cmp144, label %if.then146, label %if.end148

if.then146:                                       ; preds = %if.then141
  %140 = load ptr, ptr %tif.addr, align 8
  %call147 = call i32 @TIFFFlushData1(ptr noundef %140)
  br label %if.end148

if.end148:                                        ; preds = %if.then146, %if.then141
  %141 = load i32, ptr %data, align 4
  %conv149 = trunc i32 %141 to i8
  %142 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp150 = getelementptr inbounds %struct.tiff, ptr %142, i32 0, i32 42
  %143 = load ptr, ptr %tif_rawcp150, align 8
  %incdec.ptr151 = getelementptr inbounds i8, ptr %143, i32 1
  store ptr %incdec.ptr151, ptr %tif_rawcp150, align 8
  store i8 %conv149, ptr %143, align 1
  %144 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc152 = getelementptr inbounds %struct.tiff, ptr %144, i32 0, i32 43
  %145 = load i32, ptr %tif_rawcc152, align 8
  %inc153 = add nsw i32 %145, 1
  store i32 %inc153, ptr %tif_rawcc152, align 8
  store i32 0, ptr %data, align 4
  store i32 8, ptr %bit, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.end148, %while.end131
  %146 = load i32, ptr %data, align 4
  %147 = load ptr, ptr %sp, align 8
  %data155 = getelementptr inbounds %struct.Fax3EncodeState, ptr %147, i32 0, i32 1
  store i32 %146, ptr %data155, align 8
  %148 = load i32, ptr %bit, align 4
  %149 = load ptr, ptr %sp, align 8
  %bit156 = getelementptr inbounds %struct.Fax3EncodeState, ptr %149, i32 0, i32 2
  store i32 %148, ptr %bit156, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @find1span(ptr noundef %bp, i32 noundef %bs, i32 noundef %be) #0 {
entry:
  %retval = alloca i32, align 4
  %bp.addr = alloca ptr, align 8
  %bs.addr = alloca i32, align 4
  %be.addr = alloca i32, align 4
  %bits = alloca i32, align 4
  %n = alloca i32, align 4
  %span = alloca i32, align 4
  %lp = alloca ptr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %bs, ptr %bs.addr, align 4
  store i32 %be, ptr %be.addr, align 4
  %0 = load i32, ptr %be.addr, align 4
  %1 = load i32, ptr %bs.addr, align 4
  %sub = sub nsw i32 %0, %1
  store i32 %sub, ptr %bits, align 4
  %2 = load i32, ptr %bs.addr, align 4
  %shr = ashr i32 %2, 3
  %3 = load ptr, ptr %bp.addr, align 8
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.ext
  store ptr %add.ptr, ptr %bp.addr, align 8
  %4 = load i32, ptr %bits, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, ptr %bs.addr, align 4
  %and = and i32 %5, 7
  store i32 %and, ptr %n, align 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %bp.addr, align 8
  %7 = load i8, ptr %6, align 1
  %conv = zext i8 %7 to i32
  %8 = load i32, ptr %n, align 4
  %shl = shl i32 %conv, %8
  %and1 = and i32 %shl, 255
  %idxprom = sext i32 %and1 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %idxprom
  %9 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %9 to i32
  store i32 %conv2, ptr %span, align 4
  %10 = load i32, ptr %span, align 4
  %11 = load i32, ptr %n, align 4
  %sub3 = sub nsw i32 8, %11
  %cmp4 = icmp sgt i32 %10, %sub3
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %12 = load i32, ptr %n, align 4
  %sub7 = sub nsw i32 8, %12
  store i32 %sub7, ptr %span, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %13 = load i32, ptr %span, align 4
  %14 = load i32, ptr %bits, align 4
  %cmp8 = icmp sgt i32 %13, %14
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %15 = load i32, ptr %bits, align 4
  store i32 %15, ptr %span, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %16 = load i32, ptr %n, align 4
  %17 = load i32, ptr %span, align 4
  %add = add nsw i32 %16, %17
  %cmp12 = icmp slt i32 %add, 8
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  %18 = load i32, ptr %span, align 4
  store i32 %18, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end11
  %19 = load i32, ptr %span, align 4
  %20 = load i32, ptr %bits, align 4
  %sub16 = sub nsw i32 %20, %19
  store i32 %sub16, ptr %bits, align 4
  %21 = load ptr, ptr %bp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr, ptr %bp.addr, align 8
  br label %if.end17

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 0, ptr %span, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end15
  %22 = load i32, ptr %bits, align 4
  %conv18 = sext i32 %22 to i64
  %cmp19 = icmp uge i64 %conv18, 128
  br i1 %cmp19, label %if.then21, label %if.end52

if.then21:                                        ; preds = %if.end17
  br label %while.cond

while.cond:                                       ; preds = %if.end33, %if.then21
  %23 = load ptr, ptr %bp.addr, align 8
  %24 = ptrtoint ptr %23 to i64
  %and22 = and i64 %24, 7
  %cmp23 = icmp eq i64 %and22, 0
  %lnot = xor i1 %cmp23, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load ptr, ptr %bp.addr, align 8
  %26 = load i8, ptr %25, align 1
  %conv25 = zext i8 %26 to i32
  %cmp26 = icmp ne i32 %conv25, 255
  br i1 %cmp26, label %if.then28, label %if.end33

if.then28:                                        ; preds = %while.body
  %27 = load i32, ptr %span, align 4
  %28 = load ptr, ptr %bp.addr, align 8
  %29 = load i8, ptr %28, align 1
  %idxprom29 = zext i8 %29 to i64
  %arrayidx30 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %idxprom29
  %30 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %30 to i32
  %add32 = add nsw i32 %27, %conv31
  store i32 %add32, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %while.body
  %31 = load i32, ptr %span, align 4
  %add34 = add nsw i32 %31, 8
  store i32 %add34, ptr %span, align 4
  %32 = load i32, ptr %bits, align 4
  %sub35 = sub nsw i32 %32, 8
  store i32 %sub35, ptr %bits, align 4
  %33 = load ptr, ptr %bp.addr, align 8
  %incdec.ptr36 = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr36, ptr %bp.addr, align 8
  br label %while.cond, !llvm.loop !54

while.end:                                        ; preds = %while.cond
  %34 = load ptr, ptr %bp.addr, align 8
  store ptr %34, ptr %lp, align 8
  br label %while.cond37

while.cond37:                                     ; preds = %while.body43, %while.end
  %35 = load i32, ptr %bits, align 4
  %conv38 = sext i32 %35 to i64
  %cmp39 = icmp uge i64 %conv38, 64
  br i1 %cmp39, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond37
  %36 = load ptr, ptr %lp, align 8
  %37 = load i64, ptr %36, align 8
  %cmp41 = icmp eq i64 %37, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond37
  %38 = phi i1 [ false, %while.cond37 ], [ %cmp41, %land.rhs ]
  br i1 %38, label %while.body43, label %while.end51

while.body43:                                     ; preds = %land.end
  %39 = load i32, ptr %span, align 4
  %conv44 = sext i32 %39 to i64
  %add45 = add i64 %conv44, 64
  %conv46 = trunc i64 %add45 to i32
  store i32 %conv46, ptr %span, align 4
  %40 = load i32, ptr %bits, align 4
  %conv47 = sext i32 %40 to i64
  %sub48 = sub i64 %conv47, 64
  %conv49 = trunc i64 %sub48 to i32
  store i32 %conv49, ptr %bits, align 4
  %41 = load ptr, ptr %lp, align 8
  %incdec.ptr50 = getelementptr inbounds i64, ptr %41, i32 1
  store ptr %incdec.ptr50, ptr %lp, align 8
  br label %while.cond37, !llvm.loop !55

while.end51:                                      ; preds = %land.end
  %42 = load ptr, ptr %lp, align 8
  store ptr %42, ptr %bp.addr, align 8
  br label %if.end52

if.end52:                                         ; preds = %while.end51, %if.end17
  br label %while.cond53

while.cond53:                                     ; preds = %if.end65, %if.end52
  %43 = load i32, ptr %bits, align 4
  %cmp54 = icmp sge i32 %43, 8
  br i1 %cmp54, label %while.body56, label %while.end69

while.body56:                                     ; preds = %while.cond53
  %44 = load ptr, ptr %bp.addr, align 8
  %45 = load i8, ptr %44, align 1
  %conv57 = zext i8 %45 to i32
  %cmp58 = icmp ne i32 %conv57, 255
  br i1 %cmp58, label %if.then60, label %if.end65

if.then60:                                        ; preds = %while.body56
  %46 = load i32, ptr %span, align 4
  %47 = load ptr, ptr %bp.addr, align 8
  %48 = load i8, ptr %47, align 1
  %idxprom61 = zext i8 %48 to i64
  %arrayidx62 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %idxprom61
  %49 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %49 to i32
  %add64 = add nsw i32 %46, %conv63
  store i32 %add64, ptr %retval, align 4
  br label %return

if.end65:                                         ; preds = %while.body56
  %50 = load i32, ptr %span, align 4
  %add66 = add nsw i32 %50, 8
  store i32 %add66, ptr %span, align 4
  %51 = load i32, ptr %bits, align 4
  %sub67 = sub nsw i32 %51, 8
  store i32 %sub67, ptr %bits, align 4
  %52 = load ptr, ptr %bp.addr, align 8
  %incdec.ptr68 = getelementptr inbounds i8, ptr %52, i32 1
  store ptr %incdec.ptr68, ptr %bp.addr, align 8
  br label %while.cond53, !llvm.loop !56

while.end69:                                      ; preds = %while.cond53
  %53 = load i32, ptr %bits, align 4
  %cmp70 = icmp sgt i32 %53, 0
  br i1 %cmp70, label %if.then72, label %if.end79

if.then72:                                        ; preds = %while.end69
  %54 = load ptr, ptr %bp.addr, align 8
  %55 = load i8, ptr %54, align 1
  %idxprom73 = zext i8 %55 to i64
  %arrayidx74 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %idxprom73
  %56 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %56 to i32
  store i32 %conv75, ptr %n, align 4
  %57 = load i32, ptr %n, align 4
  %58 = load i32, ptr %bits, align 4
  %cmp76 = icmp sgt i32 %57, %58
  br i1 %cmp76, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then72
  %59 = load i32, ptr %bits, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then72
  %60 = load i32, ptr %n, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %59, %cond.true ], [ %60, %cond.false ]
  %61 = load i32, ptr %span, align 4
  %add78 = add nsw i32 %61, %cond
  store i32 %add78, ptr %span, align 4
  br label %if.end79

if.end79:                                         ; preds = %cond.end, %while.end69
  %62 = load i32, ptr %span, align 4
  store i32 %62, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end79, %if.then60, %if.then28, %if.then14
  %63 = load i32, ptr %retval, align 4
  ret i32 %63
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %15 = load i32, ptr %tif_rawcc, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 41
  %17 = load i32, ptr %tif_rawdatasize, align 8
  %cmp4 = icmp sge i32 %15, %17
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
  %23 = load i32, ptr %tif_rawcc5, align 8
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %tif_rawcc5, align 8
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
  %34 = load i32, ptr %tif_rawcc12, align 8
  %35 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize13 = getelementptr inbounds %struct.tiff, ptr %35, i32 0, i32 41
  %36 = load i32, ptr %tif_rawdatasize13, align 8
  %cmp14 = icmp sge i32 %34, %36
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
  %42 = load i32, ptr %tif_rawcc22, align 8
  %inc23 = add nsw i32 %42, 1
  store i32 %inc23, ptr %tif_rawcc22, align 8
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

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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
