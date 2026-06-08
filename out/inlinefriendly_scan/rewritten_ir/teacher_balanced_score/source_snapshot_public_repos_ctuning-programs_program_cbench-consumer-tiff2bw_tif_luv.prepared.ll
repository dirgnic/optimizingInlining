; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2bw/tif_luv.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2bw/tif_luv.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.TIFFFieldInfo = type { i32, i16, i16, i32, i16, i8, i8, ptr }
%struct.anon = type { float, i16, i16 }
%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }
%struct.logLuvState = type { i32, i32, ptr, i16, ptr, ptr, ptr }

@TIFFInitSGILog.module = internal constant [15 x i8] c"TIFFInitSGILog\00", align 1
@__func__.TIFFInitSGILog = private unnamed_addr constant [15 x i8] c"TIFFInitSGILog\00", align 1
@.str = private unnamed_addr constant [10 x i8] c"tif_luv.c\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"scheme == COMPRESSION_SGILOG24 || scheme == COMPRESSION_SGILOG\00", align 1
@LogLuvFieldInfo = internal constant [1 x %struct.TIFFFieldInfo] [%struct.TIFFFieldInfo { i32 65560, i16 0, i16 0, i32 3, i16 0, i8 1, i8 0, ptr @.str.21 }], align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"%s: No space for LogLuv state block\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"Inappropriate photometric interpretation %d for SGILog compression; %s\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"must be either LogLUV or LogL\00", align 1
@LogLuvInitState.module = internal constant [16 x i8] c"LogLuvInitState\00", align 1
@__func__.LogLuvInitState = private unnamed_addr constant [16 x i8] c"LogLuvInitState\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"sp != NULL\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"td->td_photometric == PHOTOMETRIC_LOGLUV\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"SGILog compression cannot handle non-contiguous data\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"No support for converting user data format to LogLuv\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"%s: No space for SGILog translation buffer\00", align 1
@__func__.LogLuvDecode24 = private unnamed_addr constant [15 x i8] c"LogLuvDecode24\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"s == 0\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"sp->tbuflen >= npixels\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"LogLuvDecode24: Not enough data at row %d (short %d pixels)\00", align 1
@uv_row = internal global [163 x %struct.anon] [%struct.anon { float 0x3FCFB36BE0000000, i16 4, i16 0 }, %struct.anon { float 0x3FCF342680000000, i16 6, i16 4 }, %struct.anon { float 0x3FCEEF8060000000, i16 7, i16 10 }, %struct.anon { float 0x3FCE72A7C0000000, i16 9, i16 17 }, %struct.anon { float 0x3FCE322B00000000, i16 10, i16 26 }, %struct.anon { float 0x3FCDB73080000000, i16 12, i16 36 }, %struct.anon { float 0x3FCD3AA360000000, i16 14, i16 48 }, %struct.anon { float 0x3FCCF60E00000000, i16 15, i16 62 }, %struct.anon { float 0x3FCC76A720000000, i16 17, i16 77 }, %struct.anon { float 0x3FCC366520000000, i16 18, i16 94 }, %struct.anon { float 0x3FCB7B9E00000000, i16 21, i16 112 }, %struct.anon { float 0x3FCB3A3660000000, i16 22, i16 133 }, %struct.anon { float 0x3FCAF8E7E0000000, i16 23, i16 155 }, %struct.anon { float 0x3FCA3CA760000000, i16 26, i16 178 }, %struct.anon { float 0x3FC9FB7200000000, i16 27, i16 204 }, %struct.anon { float 0x3FC980DC40000000, i16 29, i16 231 }, %struct.anon { float 0x3FC906F6A0000000, i16 31, i16 260 }, %struct.anon { float 0x3FC8C69300000000, i16 32, i16 291 }, %struct.anon { float 0x3FC84DEC20000000, i16 34, i16 323 }, %struct.anon { float 0x3FC7D5ED00000000, i16 36, i16 357 }, %struct.anon { float 0x3FC7D5ED00000000, i16 36, i16 393 }, %struct.anon { float 0x3FC75F2CC0000000, i16 38, i16 429 }, %struct.anon { float 0x3FC6E99200000000, i16 40, i16 467 }, %struct.anon { float 0x3FC675AB80000000, i16 42, i16 507 }, %struct.anon { float 0x3FC6042100000000, i16 44, i16 549 }, %struct.anon { float 0x3FC6042100000000, i16 44, i16 593 }, %struct.anon { float 0x3FC5951400000000, i16 46, i16 637 }, %struct.anon { float 0x3FC5951400000000, i16 46, i16 683 }, %struct.anon { float 0x3FC4F00680000000, i16 49, i16 729 }, %struct.anon { float 0x3FC44E6180000000, i16 52, i16 778 }, %struct.anon { float 0x3FC44E6180000000, i16 52, i16 830 }, %struct.anon { float 0x3FC44E6180000000, i16 52, i16 882 }, %struct.anon { float 0x3FC3B035C0000000, i16 55, i16 934 }, %struct.anon { float 0x3FC3B035C0000000, i16 55, i16 989 }, %struct.anon { float 0x3FC3159C40000000, i16 58, i16 1044 }, %struct.anon { float 0x3FC3159C40000000, i16 58, i16 1102 }, %struct.anon { float 0x3FC2458040000000, i16 62, i16 1160 }, %struct.anon { float 0x3FC2458040000000, i16 62, i16 1222 }, %struct.anon { float 0x3FC2458040000000, i16 62, i16 1284 }, %struct.anon { float 0x3FC1B2D4E0000000, i16 65, i16 1346 }, %struct.anon { float 0x3FC1B2D4E0000000, i16 65, i16 1411 }, %struct.anon { float 0x3FC1B2D4E0000000, i16 65, i16 1476 }, %struct.anon { float 0x3FC0EAD0C0000000, i16 69, i16 1541 }, %struct.anon { float 0x3FC0EAD0C0000000, i16 69, i16 1610 }, %struct.anon { float 0x3FC02773E0000000, i16 73, i16 1679 }, %struct.anon { float 0x3FC02773E0000000, i16 73, i16 1752 }, %struct.anon { float 0x3FC02773E0000000, i16 73, i16 1825 }, %struct.anon { float 0x3FBED14A00000000, i16 77, i16 1898 }, %struct.anon { float 0x3FBED14A00000000, i16 77, i16 1975 }, %struct.anon { float 0x3FBED14A00000000, i16 77, i16 2052 }, %struct.anon { float 0x3FBED14A00000000, i16 77, i16 2129 }, %struct.anon { float 0x3FBCEB13E0000000, i16 82, i16 2206 }, %struct.anon { float 0x3FBCEB13E0000000, i16 82, i16 2288 }, %struct.anon { float 0x3FBCEB13E0000000, i16 82, i16 2370 }, %struct.anon { float 0x3FBB81D7E0000000, i16 86, i16 2452 }, %struct.anon { float 0x3FBB81D7E0000000, i16 86, i16 2538 }, %struct.anon { float 0x3FBB81D7E0000000, i16 86, i16 2624 }, %struct.anon { float 0x3FBB81D7E0000000, i16 86, i16 2710 }, %struct.anon { float 0x3FB9B01420000000, i16 91, i16 2796 }, %struct.anon { float 0x3FB9B01420000000, i16 91, i16 2887 }, %struct.anon { float 0x3FB9B01420000000, i16 91, i16 2978 }, %struct.anon { float 0x3FB85A2D80000000, i16 95, i16 3069 }, %struct.anon { float 0x3FB85A2D80000000, i16 95, i16 3164 }, %struct.anon { float 0x3FB85A2D80000000, i16 95, i16 3259 }, %struct.anon { float 0x3FB85A2D80000000, i16 95, i16 3354 }, %struct.anon { float 0x3FB6994180000000, i16 100, i16 3449 }, %struct.anon { float 0x3FB6994180000000, i16 100, i16 3549 }, %struct.anon { float 0x3FB6994180000000, i16 100, i16 3649 }, %struct.anon { float 0x3FB6994180000000, i16 100, i16 3749 }, %struct.anon { float 0x3FB4DEB100000000, i16 105, i16 3849 }, %struct.anon { float 0x3FB4DEB100000000, i16 105, i16 3954 }, %struct.anon { float 0x3FB4DEB100000000, i16 105, i16 4059 }, %struct.anon { float 0x3FB4DEB100000000, i16 105, i16 4164 }, %struct.anon { float 0x3FB32A1720000000, i16 110, i16 4269 }, %struct.anon { float 0x3FB32A1720000000, i16 110, i16 4379 }, %struct.anon { float 0x3FB32A1720000000, i16 110, i16 4489 }, %struct.anon { float 0x3FB32A1720000000, i16 110, i16 4599 }, %struct.anon { float 0x3FB17B7420000000, i16 115, i16 4709 }, %struct.anon { float 0x3FB17B7420000000, i16 115, i16 4824 }, %struct.anon { float 0x3FB17B7420000000, i16 115, i16 4939 }, %struct.anon { float 0x3FB17B7420000000, i16 115, i16 5054 }, %struct.anon { float 0x3FB0465200000000, i16 119, i16 5169 }, %struct.anon { float 0x3FB0465200000000, i16 119, i16 5288 }, %struct.anon { float 0x3FB0465200000000, i16 119, i16 5407 }, %struct.anon { float 0x3FB0465200000000, i16 119, i16 5526 }, %struct.anon { float 0x3FAD4BCF00000000, i16 124, i16 5645 }, %struct.anon { float 0x3FAD4BCF00000000, i16 124, i16 5769 }, %struct.anon { float 0x3FAD4BCF00000000, i16 124, i16 5893 }, %struct.anon { float 0x3FAD4BCF00000000, i16 124, i16 6017 }, %struct.anon { float 0x3FAA1AB4C0000000, i16 129, i16 6141 }, %struct.anon { float 0x3FAA1AB4C0000000, i16 129, i16 6270 }, %struct.anon { float 0x3FAA1AB4C0000000, i16 129, i16 6399 }, %struct.anon { float 0x3FAA1AB4C0000000, i16 129, i16 6528 }, %struct.anon { float 0x3FAA1AB4C0000000, i16 129, i16 6657 }, %struct.anon { float 0x3FA6F7C240000000, i16 134, i16 6786 }, %struct.anon { float 0x3FA6F7C240000000, i16 134, i16 6920 }, %struct.anon { float 0x3FA6F7C240000000, i16 134, i16 7054 }, %struct.anon { float 0x3FA6F7C240000000, i16 134, i16 7188 }, %struct.anon { float 0x3FA4C5B8E0000000, i16 138, i16 7322 }, %struct.anon { float 0x3FA4C5B8E0000000, i16 138, i16 7460 }, %struct.anon { float 0x3FA4C5B8E0000000, i16 138, i16 7598 }, %struct.anon { float 0x3FA4C5B8E0000000, i16 138, i16 7736 }, %struct.anon { float 0x3FA29B0680000000, i16 142, i16 7874 }, %struct.anon { float 0x3FA29B0680000000, i16 142, i16 8016 }, %struct.anon { float 0x3FA29B0680000000, i16 142, i16 8158 }, %struct.anon { float 0x3FA29B0680000000, i16 142, i16 8300 }, %struct.anon { float 0x3FA07485E0000000, i16 146, i16 8442 }, %struct.anon { float 0x3FA07485E0000000, i16 146, i16 8588 }, %struct.anon { float 0x3FA07485E0000000, i16 146, i16 8734 }, %struct.anon { float 0x3FA07485E0000000, i16 146, i16 8880 }, %struct.anon { float 0x3F9C9E2360000000, i16 150, i16 9026 }, %struct.anon { float 0x3F9C9E2360000000, i16 150, i16 9176 }, %struct.anon { float 0x3F9C9E2360000000, i16 150, i16 9326 }, %struct.anon { float 0x3F984F0960000000, i16 154, i16 9476 }, %struct.anon { float 0x3F984F0960000000, i16 154, i16 9630 }, %struct.anon { float 0x3F984F0960000000, i16 154, i16 9784 }, %struct.anon { float 0x3F984F0960000000, i16 154, i16 9938 }, %struct.anon { float 0x3F93F8DB40000000, i16 158, i16 10092 }, %struct.anon { float 0x3F93F8DB40000000, i16 158, i16 10250 }, %struct.anon { float 0x3F93F8DB40000000, i16 158, i16 10408 }, %struct.anon { float 0x3F91622820000000, i16 161, i16 10566 }, %struct.anon { float 0x3F91622820000000, i16 161, i16 10727 }, %struct.anon { float 0x3F91622820000000, i16 161, i16 10888 }, %struct.anon { float 0x3F91622820000000, i16 161, i16 11049 }, %struct.anon { float 0x3F89E279E0000000, i16 165, i16 11210 }, %struct.anon { float 0x3F89E279E0000000, i16 165, i16 11375 }, %struct.anon { float 0x3F89E279E0000000, i16 165, i16 11540 }, %struct.anon { float 0x3F84762960000000, i16 168, i16 11705 }, %struct.anon { float 0x3F84762960000000, i16 168, i16 11873 }, %struct.anon { float 0x3F84762960000000, i16 168, i16 12041 }, %struct.anon { float 0x3F8276FB00000000, i16 170, i16 12209 }, %struct.anon { float 0x3F8276FB00000000, i16 170, i16 12379 }, %struct.anon { float 0x3F8276FB00000000, i16 170, i16 12549 }, %struct.anon { float 0x3F7976FF40000000, i16 173, i16 12719 }, %struct.anon { float 0x3F7976FF40000000, i16 173, i16 12892 }, %struct.anon { float 0x3F74E09780000000, i16 175, i16 13065 }, %struct.anon { float 0x3F74E09780000000, i16 175, i16 13240 }, %struct.anon { float 0x3F74E09780000000, i16 175, i16 13415 }, %struct.anon { float 0x3F7002E240000000, i16 177, i16 13590 }, %struct.anon { float 0x3F7002E240000000, i16 177, i16 13767 }, %struct.anon { float 0x3F632B55E0000000, i16 177, i16 13944 }, %struct.anon { float 0x3F639218A0000000, i16 170, i16 14121 }, %struct.anon { float 0x3F517F8440000000, i16 164, i16 14291 }, %struct.anon { float 0x3F5B152F40000000, i16 157, i16 14455 }, %struct.anon { float 0x3F477EA1C0000000, i16 150, i16 14612 }, %struct.anon { float 0x3F5A719B40000000, i16 143, i16 14762 }, %struct.anon { float 0x3F31B1D920000000, i16 136, i16 14905 }, %struct.anon { float 0x3F3FB82C20000000, i16 129, i16 15041 }, %struct.anon { float 0x3F52125140000000, i16 123, i16 15170 }, %struct.anon { float 0x3F54595360000000, i16 115, i16 15293 }, %struct.anon { float 0x3F5376D540000000, i16 109, i16 15408 }, %struct.anon { float 0x3F50907100000000, i16 103, i16 15517 }, %struct.anon { float 0x3F473B85E0000000, i16 97, i16 15620 }, %struct.anon { float 0x3F33B9F120000000, i16 89, i16 15717 }, %struct.anon { float 0x3F63CAB820000000, i16 82, i16 15806 }, %struct.anon { float 0x3F6AA1D760000000, i16 76, i16 15888 }, %struct.anon { float 0x3F6A975B00000000, i16 69, i16 15964 }, %struct.anon { float 0x3F70F62740000000, i16 62, i16 16033 }, %struct.anon { float 0x3F786CA8A0000000, i16 55, i16 16095 }, %struct.anon { float 0x3F821A2E80000000, i16 47, i16 16150 }, %struct.anon { float 0x3F857BC800000000, i16 40, i16 16197 }, %struct.anon { float 0x3F9166E000000000, i16 31, i16 16237 }, %struct.anon { float 0x3F983A10A0000000, i16 21, i16 16268 }], align 4
@__func__.LogLuvDecode32 = private unnamed_addr constant [15 x i8] c"LogLuvDecode32\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"LogLuvDecode32: Not enough data at row %d (short %d pixels)\00", align 1
@LogL16InitState.module = internal constant [16 x i8] c"LogL16InitState\00", align 1
@__func__.LogL16InitState = private unnamed_addr constant [16 x i8] c"LogL16InitState\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"td->td_photometric == PHOTOMETRIC_LOGL\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"No support for converting user data format to LogL\00", align 1
@__func__.LogL16Decode = private unnamed_addr constant [13 x i8] c"LogL16Decode\00", align 1
@.str.16 = private unnamed_addr constant [58 x i8] c"LogL16Decode: Not enough data at row %d (short %d pixels)\00", align 1
@__func__.LogLuvDecodeStrip = private unnamed_addr constant [18 x i8] c"LogLuvDecodeStrip\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"cc%rowlen == 0\00", align 1
@__func__.LogLuvDecodeTile = private unnamed_addr constant [17 x i8] c"LogLuvDecodeTile\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"SGILog compression supported only for %s, or raw data\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"Y, L\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"XYZ, Luv\00", align 1
@__func__.LogLuvEncode24 = private unnamed_addr constant [15 x i8] c"LogLuvEncode24\00", align 1
@__func__.LogLuvEncode32 = private unnamed_addr constant [15 x i8] c"LogLuvEncode32\00", align 1
@__func__.LogL16Encode = private unnamed_addr constant [13 x i8] c"LogL16Encode\00", align 1
@__func__.LogLuvEncodeStrip = private unnamed_addr constant [18 x i8] c"LogLuvEncodeStrip\00", align 1
@__func__.LogLuvEncodeTile = private unnamed_addr constant [17 x i8] c"LogLuvEncodeTile\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"SGILogDataFmt\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"Unknown data format %d for LogLuv compression\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFInitSGILog(ptr noundef %tif, i32 noundef %scheme) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %scheme.addr = alloca i32, align 4
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %scheme, ptr %scheme.addr, align 4
  %0 = load i32, ptr %scheme.addr, align 4
  %cmp = icmp eq i32 %0, 34677
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, ptr %scheme.addr, align 4
  %cmp1 = icmp eq i32 %1, 34676
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lnot = xor i1 %2, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.end
  call void @__assert_rtn(ptr noundef @__func__.TIFFInitSGILog, ptr noundef @.str, i32 noundef 1386, ptr noundef @.str.1) #5
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %lor.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  %call = call ptr @_TIFFmalloc(i32 noundef 48)
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 37
  store ptr %call, ptr %tif_data, align 8
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_data2 = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 37
  %6 = load ptr, ptr %tif_data2, align 8
  %cmp3 = icmp eq ptr %6, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %bad

if.end:                                           ; preds = %cond.end
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_data5 = getelementptr inbounds %struct.tiff, ptr %7, i32 0, i32 37
  %8 = load ptr, ptr %tif_data5, align 8
  store ptr %8, ptr %sp, align 8
  %9 = load ptr, ptr %sp, align 8
  %10 = load ptr, ptr %sp, align 8
  %11 = call i64 @llvm.objectsize.i64.p0(ptr %10, i1 false, i1 true, i1 false)
  %call6 = call ptr @__memset_chk(ptr noundef %9, i32 noundef 0, i64 noundef 48, i64 noundef %11) #6
  %12 = load ptr, ptr %sp, align 8
  %user_datafmt = getelementptr inbounds %struct.logLuvState, ptr %12, i32 0, i32 0
  store i32 -1, ptr %user_datafmt, align 8
  %13 = load ptr, ptr %sp, align 8
  %tfunc = getelementptr inbounds %struct.logLuvState, ptr %13, i32 0, i32 4
  store ptr @_logLuvNop, ptr %tfunc, align 8
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_setupdecode = getelementptr inbounds %struct.tiff, ptr %14, i32 0, i32 21
  store ptr @LogLuvSetupDecode, ptr %tif_setupdecode, align 8
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %15, i32 0, i32 28
  store ptr @LogLuvDecodeStrip, ptr %tif_decodestrip, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 30
  store ptr @LogLuvDecodeTile, ptr %tif_decodetile, align 8
  %17 = load ptr, ptr %tif.addr, align 8
  %tif_setupencode = getelementptr inbounds %struct.tiff, ptr %17, i32 0, i32 23
  store ptr @LogLuvSetupEncode, ptr %tif_setupencode, align 8
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_encodestrip = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 29
  store ptr @LogLuvEncodeStrip, ptr %tif_encodestrip, align 8
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_encodetile = getelementptr inbounds %struct.tiff, ptr %19, i32 0, i32 31
  store ptr @LogLuvEncodeTile, ptr %tif_encodetile, align 8
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_close = getelementptr inbounds %struct.tiff, ptr %20, i32 0, i32 32
  store ptr @LogLuvClose, ptr %tif_close, align 8
  %21 = load ptr, ptr %tif.addr, align 8
  %tif_cleanup = getelementptr inbounds %struct.tiff, ptr %21, i32 0, i32 34
  store ptr @LogLuvCleanup, ptr %tif_cleanup, align 8
  %22 = load ptr, ptr %tif.addr, align 8
  call void @_TIFFMergeFieldInfo(ptr noundef %22, ptr noundef @LogLuvFieldInfo, i32 noundef 1)
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_vgetfield = getelementptr inbounds %struct.tiff, ptr %23, i32 0, i32 58
  %24 = load ptr, ptr %tif_vgetfield, align 8
  %25 = load ptr, ptr %sp, align 8
  %vgetparent = getelementptr inbounds %struct.logLuvState, ptr %25, i32 0, i32 5
  store ptr %24, ptr %vgetparent, align 8
  %26 = load ptr, ptr %tif.addr, align 8
  %tif_vgetfield7 = getelementptr inbounds %struct.tiff, ptr %26, i32 0, i32 58
  store ptr @LogLuvVGetField, ptr %tif_vgetfield7, align 8
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_vsetfield = getelementptr inbounds %struct.tiff, ptr %27, i32 0, i32 57
  %28 = load ptr, ptr %tif_vsetfield, align 8
  %29 = load ptr, ptr %sp, align 8
  %vsetparent = getelementptr inbounds %struct.logLuvState, ptr %29, i32 0, i32 6
  store ptr %28, ptr %vsetparent, align 8
  %30 = load ptr, ptr %tif.addr, align 8
  %tif_vsetfield8 = getelementptr inbounds %struct.tiff, ptr %30, i32 0, i32 57
  store ptr @LogLuvVSetField, ptr %tif_vsetfield8, align 8
  store i32 1, ptr %retval, align 4
  br label %return

bad:                                              ; preds = %if.then
  %31 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %tif_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFInitSGILog.module, ptr noundef @.str.2, ptr noundef %32)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %bad, %if.end
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare ptr @_TIFFmalloc(i32 noundef) #2

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: nounwind ssp uwtable
define internal void @_logLuvNop(ptr noundef %sp, ptr noundef %op, i32 noundef %n) #0 {
entry:
  %sp.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %sp, ptr %sp.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr %sp.addr, align 8
  %1 = load ptr, ptr %op.addr, align 8
  %2 = load i32, ptr %n.addr, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvSetupDecode(ptr noundef %tif) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %td = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_postdecode = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 54
  store ptr @_TIFFNoPostDecode, ptr %tif_postdecode, align 8
  %4 = load ptr, ptr %td, align 8
  %td_photometric = getelementptr inbounds %struct.TIFFDirectory, ptr %4, i32 0, i32 11
  %5 = load i16, ptr %td_photometric, align 2
  %conv = zext i16 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 32845, label %sw.bb
    i32 32844, label %sw.bb19
  ]

sw.bb:                                            ; preds = %entry
  %6 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @LogLuvInitState(ptr noundef %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %sw.epilog33

if.end:                                           ; preds = %sw.bb
  %7 = load ptr, ptr %td, align 8
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i32 0, i32 10
  %8 = load i16, ptr %td_compression, align 8
  %conv1 = zext i16 %8 to i32
  %cmp = icmp eq i32 %conv1, 34677
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %9, i32 0, i32 26
  store ptr @LogLuvDecode24, ptr %tif_decoderow, align 8
  %10 = load ptr, ptr %sp, align 8
  %user_datafmt = getelementptr inbounds %struct.logLuvState, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %user_datafmt, align 8
  switch i32 %11, label %sw.epilog [
    i32 0, label %sw.bb4
    i32 1, label %sw.bb5
    i32 3, label %sw.bb7
  ]

sw.bb4:                                           ; preds = %if.then3
  %12 = load ptr, ptr %sp, align 8
  %tfunc = getelementptr inbounds %struct.logLuvState, ptr %12, i32 0, i32 4
  store ptr @Luv24toXYZ, ptr %tfunc, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.then3
  %13 = load ptr, ptr %sp, align 8
  %tfunc6 = getelementptr inbounds %struct.logLuvState, ptr %13, i32 0, i32 4
  store ptr @Luv24toLuv48, ptr %tfunc6, align 8
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.then3
  %14 = load ptr, ptr %sp, align 8
  %tfunc8 = getelementptr inbounds %struct.logLuvState, ptr %14, i32 0, i32 4
  store ptr @Luv24toRGB, ptr %tfunc8, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then3, %sw.bb7, %sw.bb5, %sw.bb4
  br label %if.end18

if.else:                                          ; preds = %if.end
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow9 = getelementptr inbounds %struct.tiff, ptr %15, i32 0, i32 26
  store ptr @LogLuvDecode32, ptr %tif_decoderow9, align 8
  %16 = load ptr, ptr %sp, align 8
  %user_datafmt10 = getelementptr inbounds %struct.logLuvState, ptr %16, i32 0, i32 0
  %17 = load i32, ptr %user_datafmt10, align 8
  switch i32 %17, label %sw.epilog17 [
    i32 0, label %sw.bb11
    i32 1, label %sw.bb13
    i32 3, label %sw.bb15
  ]

sw.bb11:                                          ; preds = %if.else
  %18 = load ptr, ptr %sp, align 8
  %tfunc12 = getelementptr inbounds %struct.logLuvState, ptr %18, i32 0, i32 4
  store ptr @Luv32toXYZ, ptr %tfunc12, align 8
  br label %sw.epilog17

sw.bb13:                                          ; preds = %if.else
  %19 = load ptr, ptr %sp, align 8
  %tfunc14 = getelementptr inbounds %struct.logLuvState, ptr %19, i32 0, i32 4
  store ptr @Luv32toLuv48, ptr %tfunc14, align 8
  br label %sw.epilog17

sw.bb15:                                          ; preds = %if.else
  %20 = load ptr, ptr %sp, align 8
  %tfunc16 = getelementptr inbounds %struct.logLuvState, ptr %20, i32 0, i32 4
  store ptr @Luv32toRGB, ptr %tfunc16, align 8
  br label %sw.epilog17

sw.epilog17:                                      ; preds = %if.else, %sw.bb15, %sw.bb13, %sw.bb11
  br label %if.end18

if.end18:                                         ; preds = %sw.epilog17, %sw.epilog
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb19:                                          ; preds = %entry
  %21 = load ptr, ptr %tif.addr, align 8
  %call20 = call i32 @LogL16InitState(ptr noundef %21)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end23, label %if.then22

if.then22:                                        ; preds = %sw.bb19
  br label %sw.epilog33

if.end23:                                         ; preds = %sw.bb19
  %22 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow24 = getelementptr inbounds %struct.tiff, ptr %22, i32 0, i32 26
  store ptr @LogL16Decode, ptr %tif_decoderow24, align 8
  %23 = load ptr, ptr %sp, align 8
  %user_datafmt25 = getelementptr inbounds %struct.logLuvState, ptr %23, i32 0, i32 0
  %24 = load i32, ptr %user_datafmt25, align 8
  switch i32 %24, label %sw.epilog30 [
    i32 0, label %sw.bb26
    i32 3, label %sw.bb28
  ]

sw.bb26:                                          ; preds = %if.end23
  %25 = load ptr, ptr %sp, align 8
  %tfunc27 = getelementptr inbounds %struct.logLuvState, ptr %25, i32 0, i32 4
  store ptr @L16toY, ptr %tfunc27, align 8
  br label %sw.epilog30

sw.bb28:                                          ; preds = %if.end23
  %26 = load ptr, ptr %sp, align 8
  %tfunc29 = getelementptr inbounds %struct.logLuvState, ptr %26, i32 0, i32 4
  store ptr @L16toGry, ptr %tfunc29, align 8
  br label %sw.epilog30

sw.epilog30:                                      ; preds = %if.end23, %sw.bb28, %sw.bb26
  store i32 1, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %tif_name, align 8
  %29 = load ptr, ptr %td, align 8
  %td_photometric31 = getelementptr inbounds %struct.TIFFDirectory, ptr %29, i32 0, i32 11
  %30 = load i16, ptr %td_photometric31, align 2
  %conv32 = zext i16 %30 to i32
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %28, ptr noundef @.str.3, i32 noundef %conv32, ptr noundef @.str.4)
  br label %sw.epilog33

sw.epilog33:                                      ; preds = %sw.default, %if.then22, %if.then
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog33, %sw.epilog30, %if.end18
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvDecodeStrip(ptr noundef %tif, ptr noundef %bp, i32 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  %rowlen = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFScanlineSize(ptr noundef %0)
  store i32 %call, ptr %rowlen, align 4
  %1 = load i32, ptr %cc.addr, align 4
  %2 = load i32, ptr %rowlen, align 4
  %rem = srem i32 %1, %2
  %cmp = icmp eq i32 %rem, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.LogLuvDecodeStrip, ptr noundef @.str, i32 noundef 324, ptr noundef @.str.17) #5
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %4 = load i32, ptr %cc.addr, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 26
  %6 = load ptr, ptr %tif_decoderow, align 8
  %7 = load ptr, ptr %tif.addr, align 8
  %8 = load ptr, ptr %bp.addr, align 8
  %9 = load i32, ptr %rowlen, align 4
  %10 = load i16, ptr %s.addr, align 2
  %call2 = call i32 %6(ptr noundef %7, ptr noundef %8, i32 noundef %9, i16 noundef zeroext %10)
  %tobool3 = icmp ne i32 %call2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %tobool3, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i32, ptr %rowlen, align 4
  %13 = load ptr, ptr %bp.addr, align 8
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %idx.ext
  store ptr %add.ptr, ptr %bp.addr, align 8
  %14 = load i32, ptr %rowlen, align 4
  %15 = load i32, ptr %cc.addr, align 4
  %sub = sub nsw i32 %15, %14
  store i32 %sub, ptr %cc.addr, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %16 = load i32, ptr %cc.addr, align 4
  %cmp4 = icmp eq i32 %16, 0
  %conv5 = zext i1 %cmp4 to i32
  ret i32 %conv5
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvDecodeTile(ptr noundef %tif, ptr noundef %bp, i32 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  %rowlen = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFTileRowSize(ptr noundef %0)
  store i32 %call, ptr %rowlen, align 4
  %1 = load i32, ptr %cc.addr, align 4
  %2 = load i32, ptr %rowlen, align 4
  %rem = srem i32 %1, %2
  %cmp = icmp eq i32 %rem, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.LogLuvDecodeTile, ptr noundef @.str, i32 noundef 340, ptr noundef @.str.17) #5
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %4 = load i32, ptr %cc.addr, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 26
  %6 = load ptr, ptr %tif_decoderow, align 8
  %7 = load ptr, ptr %tif.addr, align 8
  %8 = load ptr, ptr %bp.addr, align 8
  %9 = load i32, ptr %rowlen, align 4
  %10 = load i16, ptr %s.addr, align 2
  %call2 = call i32 %6(ptr noundef %7, ptr noundef %8, i32 noundef %9, i16 noundef zeroext %10)
  %tobool3 = icmp ne i32 %call2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %tobool3, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i32, ptr %rowlen, align 4
  %13 = load ptr, ptr %bp.addr, align 8
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %idx.ext
  store ptr %add.ptr, ptr %bp.addr, align 8
  %14 = load i32, ptr %rowlen, align 4
  %15 = load i32, ptr %cc.addr, align 4
  %sub = sub nsw i32 %15, %14
  store i32 %sub, ptr %cc.addr, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end
  %16 = load i32, ptr %cc.addr, align 4
  %cmp4 = icmp eq i32 %16, 0
  %conv5 = zext i1 %cmp4 to i32
  ret i32 %conv5
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvSetupEncode(ptr noundef %tif) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %td = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %3 = load ptr, ptr %td, align 8
  %td_photometric = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 11
  %4 = load i16, ptr %td_photometric, align 2
  %conv = zext i16 %4 to i32
  switch i32 %conv, label %sw.default30 [
    i32 32845, label %sw.bb
    i32 32844, label %sw.bb18
  ]

sw.bb:                                            ; preds = %entry
  %5 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @LogLuvInitState(ptr noundef %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %sw.epilog33

if.end:                                           ; preds = %sw.bb
  %6 = load ptr, ptr %td, align 8
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i32 0, i32 10
  %7 = load i16, ptr %td_compression, align 8
  %conv1 = zext i16 %7 to i32
  %cmp = icmp eq i32 %conv1, 34677
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_encoderow = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 27
  store ptr @LogLuvEncode24, ptr %tif_encoderow, align 8
  %9 = load ptr, ptr %sp, align 8
  %user_datafmt = getelementptr inbounds %struct.logLuvState, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %user_datafmt, align 8
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb4
    i32 1, label %sw.bb5
    i32 2, label %sw.bb7
  ]

sw.bb4:                                           ; preds = %if.then3
  %11 = load ptr, ptr %sp, align 8
  %tfunc = getelementptr inbounds %struct.logLuvState, ptr %11, i32 0, i32 4
  store ptr @Luv24fromXYZ, ptr %tfunc, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.then3
  %12 = load ptr, ptr %sp, align 8
  %tfunc6 = getelementptr inbounds %struct.logLuvState, ptr %12, i32 0, i32 4
  store ptr @Luv24fromLuv48, ptr %tfunc6, align 8
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.then3
  br label %sw.epilog

sw.default:                                       ; preds = %if.then3
  br label %notsupported

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb5, %sw.bb4
  br label %if.end17

if.else:                                          ; preds = %if.end
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_encoderow8 = getelementptr inbounds %struct.tiff, ptr %13, i32 0, i32 27
  store ptr @LogLuvEncode32, ptr %tif_encoderow8, align 8
  %14 = load ptr, ptr %sp, align 8
  %user_datafmt9 = getelementptr inbounds %struct.logLuvState, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %user_datafmt9, align 8
  switch i32 %15, label %sw.default15 [
    i32 0, label %sw.bb10
    i32 1, label %sw.bb12
    i32 2, label %sw.bb14
  ]

sw.bb10:                                          ; preds = %if.else
  %16 = load ptr, ptr %sp, align 8
  %tfunc11 = getelementptr inbounds %struct.logLuvState, ptr %16, i32 0, i32 4
  store ptr @Luv32fromXYZ, ptr %tfunc11, align 8
  br label %sw.epilog16

sw.bb12:                                          ; preds = %if.else
  %17 = load ptr, ptr %sp, align 8
  %tfunc13 = getelementptr inbounds %struct.logLuvState, ptr %17, i32 0, i32 4
  store ptr @Luv32fromLuv48, ptr %tfunc13, align 8
  br label %sw.epilog16

sw.bb14:                                          ; preds = %if.else
  br label %sw.epilog16

sw.default15:                                     ; preds = %if.else
  br label %notsupported

sw.epilog16:                                      ; preds = %sw.bb14, %sw.bb12, %sw.bb10
  br label %if.end17

if.end17:                                         ; preds = %sw.epilog16, %sw.epilog
  br label %sw.epilog33

sw.bb18:                                          ; preds = %entry
  %18 = load ptr, ptr %tif.addr, align 8
  %call19 = call i32 @LogL16InitState(ptr noundef %18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %sw.bb18
  br label %sw.epilog33

if.end22:                                         ; preds = %sw.bb18
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_encoderow23 = getelementptr inbounds %struct.tiff, ptr %19, i32 0, i32 27
  store ptr @LogL16Encode, ptr %tif_encoderow23, align 8
  %20 = load ptr, ptr %sp, align 8
  %user_datafmt24 = getelementptr inbounds %struct.logLuvState, ptr %20, i32 0, i32 0
  %21 = load i32, ptr %user_datafmt24, align 8
  switch i32 %21, label %sw.default28 [
    i32 0, label %sw.bb25
    i32 1, label %sw.bb27
  ]

sw.bb25:                                          ; preds = %if.end22
  %22 = load ptr, ptr %sp, align 8
  %tfunc26 = getelementptr inbounds %struct.logLuvState, ptr %22, i32 0, i32 4
  store ptr @L16fromY, ptr %tfunc26, align 8
  br label %sw.epilog29

sw.bb27:                                          ; preds = %if.end22
  br label %sw.epilog29

sw.default28:                                     ; preds = %if.end22
  br label %notsupported

sw.epilog29:                                      ; preds = %sw.bb27, %sw.bb25
  br label %sw.epilog33

sw.default30:                                     ; preds = %entry
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %tif_name, align 8
  %25 = load ptr, ptr %td, align 8
  %td_photometric31 = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i32 0, i32 11
  %26 = load i16, ptr %td_photometric31, align 2
  %conv32 = zext i16 %26 to i32
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %24, ptr noundef @.str.3, i32 noundef %conv32, ptr noundef @.str.4)
  br label %sw.epilog33

sw.epilog33:                                      ; preds = %sw.default30, %sw.epilog29, %if.then21, %if.end17, %if.then
  store i32 1, ptr %retval, align 4
  br label %return

notsupported:                                     ; preds = %sw.default28, %sw.default15, %sw.default
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_name34 = getelementptr inbounds %struct.tiff, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %tif_name34, align 8
  %29 = load ptr, ptr %td, align 8
  %td_photometric35 = getelementptr inbounds %struct.TIFFDirectory, ptr %29, i32 0, i32 11
  %30 = load i16, ptr %td_photometric35, align 2
  %conv36 = zext i16 %30 to i32
  %cmp37 = icmp eq i32 %conv36, 32844
  %31 = zext i1 %cmp37 to i64
  %cond = select i1 %cmp37, ptr @.str.19, ptr @.str.20
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %28, ptr noundef @.str.18, ptr noundef %cond)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %notsupported, %sw.epilog33
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvEncodeStrip(ptr noundef %tif, ptr noundef %bp, i32 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  %rowlen = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFScanlineSize(ptr noundef %0)
  store i32 %call, ptr %rowlen, align 4
  %1 = load i32, ptr %cc.addr, align 4
  %2 = load i32, ptr %rowlen, align 4
  %rem = srem i32 %1, %2
  %cmp = icmp eq i32 %rem, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.LogLuvEncodeStrip, ptr noundef @.str, i32 noundef 577, ptr noundef @.str.17) #5
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %4 = load i32, ptr %cc.addr, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_encoderow = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 27
  %6 = load ptr, ptr %tif_encoderow, align 8
  %7 = load ptr, ptr %tif.addr, align 8
  %8 = load ptr, ptr %bp.addr, align 8
  %9 = load i32, ptr %rowlen, align 4
  %10 = load i16, ptr %s.addr, align 2
  %call2 = call i32 %6(ptr noundef %7, ptr noundef %8, i32 noundef %9, i16 noundef zeroext %10)
  %cmp3 = icmp eq i32 %call2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i32, ptr %rowlen, align 4
  %13 = load ptr, ptr %bp.addr, align 8
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %idx.ext
  store ptr %add.ptr, ptr %bp.addr, align 8
  %14 = load i32, ptr %rowlen, align 4
  %15 = load i32, ptr %cc.addr, align 4
  %sub = sub nsw i32 %15, %14
  store i32 %sub, ptr %cc.addr, align 4
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %land.end
  %16 = load i32, ptr %cc.addr, align 4
  %cmp5 = icmp eq i32 %16, 0
  %conv6 = zext i1 %cmp5 to i32
  ret i32 %conv6
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvEncodeTile(ptr noundef %tif, ptr noundef %bp, i32 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  %rowlen = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFTileRowSize(ptr noundef %0)
  store i32 %call, ptr %rowlen, align 4
  %1 = load i32, ptr %cc.addr, align 4
  %2 = load i32, ptr %rowlen, align 4
  %rem = srem i32 %1, %2
  %cmp = icmp eq i32 %rem, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.LogLuvEncodeTile, ptr noundef @.str, i32 noundef 592, ptr noundef @.str.17) #5
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %4 = load i32, ptr %cc.addr, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_encoderow = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 27
  %6 = load ptr, ptr %tif_encoderow, align 8
  %7 = load ptr, ptr %tif.addr, align 8
  %8 = load ptr, ptr %bp.addr, align 8
  %9 = load i32, ptr %rowlen, align 4
  %10 = load i16, ptr %s.addr, align 2
  %call2 = call i32 %6(ptr noundef %7, ptr noundef %8, i32 noundef %9, i16 noundef zeroext %10)
  %cmp3 = icmp eq i32 %call2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i32, ptr %rowlen, align 4
  %13 = load ptr, ptr %bp.addr, align 8
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %idx.ext
  store ptr %add.ptr, ptr %bp.addr, align 8
  %14 = load i32, ptr %rowlen, align 4
  %15 = load i32, ptr %cc.addr, align 4
  %sub = sub nsw i32 %15, %14
  store i32 %sub, ptr %cc.addr, align 4
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %land.end
  %16 = load i32, ptr %cc.addr, align 4
  %cmp5 = icmp eq i32 %16, 0
  %conv6 = zext i1 %cmp5 to i32
  ret i32 %conv6
}

; Function Attrs: nounwind ssp uwtable
define internal void @LogLuvClose(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_photometric = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 11
  %2 = load i16, ptr %td_photometric, align 2
  %conv = zext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 32844
  %3 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 3
  %conv2 = trunc i32 %cond to i16
  %4 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %4, i32 0, i32 15
  store i16 %conv2, ptr %td_samplesperpixel, align 2
  %5 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i32 0, i32 8
  store i16 16, ptr %td_bitspersample, align 4
  %6 = load ptr, ptr %td, align 8
  %td_sampleformat = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i32 0, i32 9
  store i16 2, ptr %td_sampleformat, align 2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @LogLuvCleanup(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load ptr, ptr %sp, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %sp, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %tbuf, align 8
  %tobool1 = icmp ne ptr %4, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %sp, align 8
  %tbuf3 = getelementptr inbounds %struct.logLuvState, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %tbuf3, align 8
  call void @_TIFFfree(ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %7 = load ptr, ptr %sp, align 8
  call void @_TIFFfree(ptr noundef %7)
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_data4 = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 37
  store ptr null, ptr %tif_data4, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  ret void
}

declare void @_TIFFMergeFieldInfo(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvVGetField(ptr noundef %tif, i32 noundef %tag, ptr noundef %ap) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %ap.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %varet = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %tag, ptr %tag.addr, align 4
  store ptr %ap, ptr %ap.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load i32, ptr %tag.addr, align 4
  switch i32 %2, label %sw.default [
    i32 65560, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %sp, align 8
  %user_datafmt = getelementptr inbounds %struct.logLuvState, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %user_datafmt, align 8
  %5 = va_arg ptr %ap.addr, ptr
  store ptr %5, ptr %varet, align 8
  %6 = load ptr, ptr %varet, align 8
  store i32 %4, ptr %6, align 4
  store i32 1, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %7 = load ptr, ptr %sp, align 8
  %vgetparent = getelementptr inbounds %struct.logLuvState, ptr %7, i32 0, i32 5
  %8 = load ptr, ptr %vgetparent, align 8
  %9 = load ptr, ptr %tif.addr, align 8
  %10 = load i32, ptr %tag.addr, align 4
  %11 = load ptr, ptr %ap.addr, align 8
  %call = call i32 %8(ptr noundef %9, i32 noundef %10, ptr noundef %11)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvVSetField(ptr noundef %tif, i32 noundef %tag, ptr noundef %ap) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %ap.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %bps = alloca i32, align 4
  %fmt = alloca i32, align 4
  %varet = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %tag, ptr %tag.addr, align 4
  store ptr %ap, ptr %ap.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load i32, ptr %tag.addr, align 4
  switch i32 %2, label %sw.default10 [
    i32 65560, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %3 = va_arg ptr %ap.addr, i32
  store i32 %3, ptr %varet, align 4
  %4 = load i32, ptr %varet, align 4
  %5 = load ptr, ptr %sp, align 8
  %user_datafmt = getelementptr inbounds %struct.logLuvState, ptr %5, i32 0, i32 0
  store i32 %4, ptr %user_datafmt, align 8
  %6 = load ptr, ptr %sp, align 8
  %user_datafmt1 = getelementptr inbounds %struct.logLuvState, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %user_datafmt1, align 8
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb2
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 3, label %sw.bb5
  ]

sw.bb2:                                           ; preds = %sw.bb
  store i32 32, ptr %bps, align 4
  store i32 3, ptr %fmt, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %sw.bb
  store i32 16, ptr %bps, align 4
  store i32 2, ptr %fmt, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %sw.bb
  store i32 32, ptr %bps, align 4
  store i32 1, ptr %fmt, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %sw.bb
  store i32 8, ptr %bps, align 4
  store i32 1, ptr %fmt, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %tif_name, align 8
  %10 = load ptr, ptr %sp, align 8
  %user_datafmt6 = getelementptr inbounds %struct.logLuvState, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %user_datafmt6, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %9, ptr noundef @.str.22, i32 noundef %11)
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2
  %12 = load ptr, ptr %tif.addr, align 8
  %13 = load i32, ptr %bps, align 4
  %call = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %12, i32 noundef 258, i32 noundef %13)
  %14 = load ptr, ptr %tif.addr, align 8
  %15 = load i32, ptr %fmt, align 4
  %call7 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %14, i32 noundef 339, i32 noundef %15)
  %16 = load ptr, ptr %tif.addr, align 8
  %call8 = call i32 @TIFFTileSize(ptr noundef %16)
  %17 = load ptr, ptr %tif.addr, align 8
  %tif_tilesize = getelementptr inbounds %struct.tiff, ptr %17, i32 0, i32 20
  store i32 %call8, ptr %tif_tilesize, align 4
  %18 = load ptr, ptr %tif.addr, align 8
  %call9 = call i32 @TIFFScanlineSize(ptr noundef %18)
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_scanlinesize = getelementptr inbounds %struct.tiff, ptr %19, i32 0, i32 38
  store i32 %call9, ptr %tif_scanlinesize, align 8
  store i32 1, ptr %retval, align 4
  br label %return

sw.default10:                                     ; preds = %entry
  %20 = load ptr, ptr %sp, align 8
  %vsetparent = getelementptr inbounds %struct.logLuvState, ptr %20, i32 0, i32 6
  %21 = load ptr, ptr %vsetparent, align 8
  %22 = load ptr, ptr %tif.addr, align 8
  %23 = load i32, ptr %tag.addr, align 4
  %24 = load ptr, ptr %ap.addr, align 8
  %call11 = call i32 %21(ptr noundef %22, i32 noundef %23, ptr noundef %24)
  store i32 %call11, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default10, %sw.epilog, %sw.default
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #2

declare void @_TIFFNoPostDecode(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvInitState(ptr noundef %tif) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 37
  %2 = load ptr, ptr %tif_data, align 8
  store ptr %2, ptr %sp, align 8
  %3 = load ptr, ptr %sp, align 8
  %cmp = icmp ne ptr %3, null
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.LogLuvInitState, ptr noundef @.str, i32 noundef 1115, ptr noundef @.str.5) #5
  unreachable

4:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %4
  %5 = load ptr, ptr %td, align 8
  %td_photometric = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i32 0, i32 11
  %6 = load i16, ptr %td_photometric, align 2
  %conv1 = zext i16 %6 to i32
  %cmp2 = icmp eq i32 %conv1, 32845
  %lnot4 = xor i1 %cmp2, true
  %lnot.ext5 = zext i1 %lnot4 to i32
  %conv6 = sext i32 %lnot.ext5 to i64
  %tobool7 = icmp ne i64 %conv6, 0
  br i1 %tobool7, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.LogLuvInitState, ptr noundef @.str, i32 noundef 1116, ptr noundef @.str.6) #5
  unreachable

7:                                                ; No predecessors!
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %7
  %8 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i32 0, i32 24
  %9 = load i16, ptr %td_planarconfig, align 2
  %conv11 = zext i16 %9 to i32
  %cmp12 = icmp ne i32 %conv11, 1
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end10
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @LogLuvInitState.module, ptr noundef @.str.7)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end10
  %10 = load ptr, ptr %sp, align 8
  %user_datafmt = getelementptr inbounds %struct.logLuvState, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %user_datafmt, align 8
  %cmp14 = icmp eq i32 %11, -1
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end
  %12 = load ptr, ptr %td, align 8
  %call = call i32 @LogLuvGuessDataFmt(ptr noundef %12)
  %13 = load ptr, ptr %sp, align 8
  %user_datafmt17 = getelementptr inbounds %struct.logLuvState, ptr %13, i32 0, i32 0
  store i32 %call, ptr %user_datafmt17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  %14 = load ptr, ptr %sp, align 8
  %user_datafmt19 = getelementptr inbounds %struct.logLuvState, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %user_datafmt19, align 8
  switch i32 %15, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb20
    i32 2, label %sw.bb22
    i32 3, label %sw.bb24
  ]

sw.bb:                                            ; preds = %if.end18
  %16 = load ptr, ptr %sp, align 8
  %pixel_size = getelementptr inbounds %struct.logLuvState, ptr %16, i32 0, i32 1
  store i32 12, ptr %pixel_size, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end18
  %17 = load ptr, ptr %sp, align 8
  %pixel_size21 = getelementptr inbounds %struct.logLuvState, ptr %17, i32 0, i32 1
  store i32 6, ptr %pixel_size21, align 4
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end18
  %18 = load ptr, ptr %sp, align 8
  %pixel_size23 = getelementptr inbounds %struct.logLuvState, ptr %18, i32 0, i32 1
  store i32 4, ptr %pixel_size23, align 4
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end18
  %19 = load ptr, ptr %sp, align 8
  %pixel_size25 = getelementptr inbounds %struct.logLuvState, ptr %19, i32 0, i32 1
  store i32 3, ptr %pixel_size25, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end18
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %tif_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %21, ptr noundef @.str.8)
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb
  %22 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %td_imagewidth, align 8
  %24 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %24, i32 0, i32 16
  %25 = load i32, ptr %td_rowsperstrip, align 4
  %mul = mul i32 %23, %25
  %conv26 = trunc i32 %mul to i16
  %26 = load ptr, ptr %sp, align 8
  %tbuflen = getelementptr inbounds %struct.logLuvState, ptr %26, i32 0, i32 3
  store i16 %conv26, ptr %tbuflen, align 8
  %27 = load ptr, ptr %sp, align 8
  %tbuflen27 = getelementptr inbounds %struct.logLuvState, ptr %27, i32 0, i32 3
  %28 = load i16, ptr %tbuflen27, align 8
  %conv28 = sext i16 %28 to i64
  %mul29 = mul i64 %conv28, 4
  %conv30 = trunc i64 %mul29 to i32
  %call31 = call ptr @_TIFFmalloc(i32 noundef %conv30)
  %29 = load ptr, ptr %sp, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %29, i32 0, i32 2
  store ptr %call31, ptr %tbuf, align 8
  %30 = load ptr, ptr %sp, align 8
  %tbuf32 = getelementptr inbounds %struct.logLuvState, ptr %30, i32 0, i32 2
  %31 = load ptr, ptr %tbuf32, align 8
  %cmp33 = icmp eq ptr %31, null
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %sw.epilog
  %32 = load ptr, ptr %tif.addr, align 8
  %tif_name36 = getelementptr inbounds %struct.tiff, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %tif_name36, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @LogLuvInitState.module, ptr noundef @.str.9, ptr noundef %33)
  store i32 0, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %sw.epilog
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end37, %if.then35, %sw.default, %if.then
  %34 = load i32, ptr %retval, align 4
  ret i32 %34
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvDecode24(ptr noundef %tif, ptr noundef %op, i32 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %occ.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  %sp = alloca ptr, align 8
  %cc = alloca i32, align 4
  %i = alloca i32, align 4
  %npixels = alloca i32, align 4
  %bp = alloca ptr, align 8
  %tp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i32 %occ, ptr %occ.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load i16, ptr %s.addr, align 2
  %conv = zext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv2 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.LogLuvDecode24, ptr noundef @.str, i32 noundef 224, ptr noundef @.str.10) #5
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  %4 = load ptr, ptr %sp, align 8
  %cmp3 = icmp ne ptr %4, null
  %lnot5 = xor i1 %cmp3, true
  %lnot.ext6 = zext i1 %lnot5 to i32
  %conv7 = sext i32 %lnot.ext6 to i64
  %tobool8 = icmp ne i64 %conv7, 0
  br i1 %tobool8, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.LogLuvDecode24, ptr noundef @.str, i32 noundef 225, ptr noundef @.str.5) #5
  unreachable

5:                                                ; No predecessors!
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %5
  %6 = load i32, ptr %occ.addr, align 4
  %7 = load ptr, ptr %sp, align 8
  %pixel_size = getelementptr inbounds %struct.logLuvState, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %pixel_size, align 4
  %div = sdiv i32 %6, %8
  store i32 %div, ptr %npixels, align 4
  %9 = load ptr, ptr %sp, align 8
  %user_datafmt = getelementptr inbounds %struct.logLuvState, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %user_datafmt, align 8
  %cmp12 = icmp eq i32 %10, 2
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end11
  %11 = load ptr, ptr %op.addr, align 8
  store ptr %11, ptr %tp, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end11
  %12 = load ptr, ptr %sp, align 8
  %tbuflen = getelementptr inbounds %struct.logLuvState, ptr %12, i32 0, i32 3
  %13 = load i16, ptr %tbuflen, align 8
  %conv14 = sext i16 %13 to i32
  %14 = load i32, ptr %npixels, align 4
  %cmp15 = icmp sge i32 %conv14, %14
  %lnot17 = xor i1 %cmp15, true
  %lnot.ext18 = zext i1 %lnot17 to i32
  %conv19 = sext i32 %lnot.ext18 to i64
  %tobool20 = icmp ne i64 %conv19, 0
  br i1 %tobool20, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %if.else
  call void @__assert_rtn(ptr noundef @__func__.LogLuvDecode24, ptr noundef @.str, i32 noundef 232, ptr noundef @.str.11) #5
  unreachable

15:                                               ; No predecessors!
  br label %cond.end23

cond.false22:                                     ; preds = %if.else
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %15
  %16 = load ptr, ptr %sp, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %tbuf, align 8
  store ptr %17, ptr %tp, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end23, %if.then
  %18 = load ptr, ptr %tp, align 8
  %19 = load i32, ptr %npixels, align 4
  %conv24 = sext i32 %19 to i64
  %mul = mul i64 %conv24, 4
  %conv25 = trunc i64 %mul to i32
  call void @_TIFFmemset(ptr noundef %18, i32 noundef 0, i32 noundef %conv25)
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %20, i32 0, i32 42
  %21 = load ptr, ptr %tif_rawcp, align 8
  store ptr %21, ptr %bp, align 8
  %22 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %22, i32 0, i32 43
  %23 = load i32, ptr %tif_rawcc, align 8
  store i32 %23, ptr %cc, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %24 = load i32, ptr %i, align 4
  %25 = load i32, ptr %npixels, align 4
  %cmp26 = icmp slt i32 %24, %25
  br i1 %cmp26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %26 = load i32, ptr %cc, align 4
  %cmp28 = icmp sgt i32 %26, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %27 = phi i1 [ false, %for.cond ], [ %cmp28, %land.rhs ]
  br i1 %27, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %28 = load ptr, ptr %bp, align 8
  %arrayidx = getelementptr inbounds i8, ptr %28, i64 0
  %29 = load i8, ptr %arrayidx, align 1
  %conv30 = zext i8 %29 to i32
  %shl = shl i32 %conv30, 16
  %30 = load ptr, ptr %bp, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %30, i64 1
  %31 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %31 to i32
  %shl33 = shl i32 %conv32, 8
  %or = or i32 %shl, %shl33
  %32 = load ptr, ptr %bp, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %32, i64 2
  %33 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %33 to i32
  %or36 = or i32 %or, %conv35
  %34 = load ptr, ptr %tp, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom = sext i32 %35 to i64
  %arrayidx37 = getelementptr inbounds i32, ptr %34, i64 %idxprom
  store i32 %or36, ptr %arrayidx37, align 4
  %36 = load ptr, ptr %bp, align 8
  %add.ptr = getelementptr inbounds i8, ptr %36, i64 3
  store ptr %add.ptr, ptr %bp, align 8
  %37 = load i32, ptr %cc, align 4
  %sub = sub nsw i32 %37, 3
  store i32 %sub, ptr %cc, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, ptr %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %land.end
  %39 = load ptr, ptr %bp, align 8
  %40 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp38 = getelementptr inbounds %struct.tiff, ptr %40, i32 0, i32 42
  store ptr %39, ptr %tif_rawcp38, align 8
  %41 = load i32, ptr %cc, align 4
  %42 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc39 = getelementptr inbounds %struct.tiff, ptr %42, i32 0, i32 43
  store i32 %41, ptr %tif_rawcc39, align 8
  %43 = load i32, ptr %i, align 4
  %44 = load i32, ptr %npixels, align 4
  %cmp40 = icmp ne i32 %43, %44
  br i1 %cmp40, label %if.then42, label %if.end44

if.then42:                                        ; preds = %for.end
  %45 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %tif_name, align 8
  %47 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %47, i32 0, i32 11
  %48 = load i32, ptr %tif_row, align 8
  %49 = load i32, ptr %npixels, align 4
  %50 = load i32, ptr %i, align 4
  %sub43 = sub nsw i32 %49, %50
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %46, ptr noundef @.str.12, i32 noundef %48, i32 noundef %sub43)
  store i32 0, ptr %retval, align 4
  br label %return

if.end44:                                         ; preds = %for.end
  %51 = load ptr, ptr %sp, align 8
  %tfunc = getelementptr inbounds %struct.logLuvState, ptr %51, i32 0, i32 4
  %52 = load ptr, ptr %tfunc, align 8
  %53 = load ptr, ptr %sp, align 8
  %54 = load ptr, ptr %op.addr, align 8
  %55 = load i32, ptr %npixels, align 4
  call void %52(ptr noundef %53, ptr noundef %54, i32 noundef %55)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end44, %if.then42
  %56 = load i32, ptr %retval, align 4
  ret i32 %56
}

; Function Attrs: nounwind ssp uwtable
define internal void @Luv24toXYZ(ptr noundef %sp, ptr noundef %op, i32 noundef %n) #0 {
entry:
  %sp.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %luv = alloca ptr, align 8
  %xyz = alloca ptr, align 8
  store ptr %sp, ptr %sp.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr %sp.addr, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %tbuf, align 8
  store ptr %1, ptr %luv, align 8
  %2 = load ptr, ptr %op.addr, align 8
  store ptr %2, ptr %xyz, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %luv, align 8
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr %xyz, align 8
  call void @pix24toXYZ(i32 noundef %5, ptr noundef %6)
  %7 = load ptr, ptr %xyz, align 8
  %add.ptr = getelementptr inbounds float, ptr %7, i64 3
  store ptr %add.ptr, ptr %xyz, align 8
  %8 = load ptr, ptr %luv, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %luv, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @Luv24toLuv48(ptr noundef %sp, ptr noundef %op, i32 noundef %n) #0 {
entry:
  %sp.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %luv = alloca ptr, align 8
  %luv3 = alloca ptr, align 8
  %u = alloca double, align 8
  %v = alloca double, align 8
  store ptr %sp, ptr %sp.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr %sp.addr, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %tbuf, align 8
  store ptr %1, ptr %luv, align 8
  %2 = load ptr, ptr %op.addr, align 8
  store ptr %2, ptr %luv3, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %luv, align 8
  %5 = load i32, ptr %4, align 4
  %shr = lshr i32 %5, 12
  %and = and i32 %shr, 4093
  %add = add i32 %and, 13314
  %conv = trunc i32 %add to i16
  %6 = load ptr, ptr %luv3, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %luv3, align 8
  store i16 %conv, ptr %6, align 2
  %7 = load ptr, ptr %luv, align 8
  %8 = load i32, ptr %7, align 4
  %and1 = and i32 %8, 16383
  %call = call i32 @uv_decode(ptr noundef %u, ptr noundef %v, i32 noundef %and1)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store double 0x3FCAF286BD156C1A, ptr %u, align 8
  store double 0x3FDE50D794B8199E, ptr %v, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %9 = load double, ptr %u, align 8
  %mul = fmul double %9, 3.276800e+04
  %conv4 = fptosi double %mul to i16
  %10 = load ptr, ptr %luv3, align 8
  %incdec.ptr5 = getelementptr inbounds i16, ptr %10, i32 1
  store ptr %incdec.ptr5, ptr %luv3, align 8
  store i16 %conv4, ptr %10, align 2
  %11 = load double, ptr %v, align 8
  %mul6 = fmul double %11, 3.276800e+04
  %conv7 = fptosi double %mul6 to i16
  %12 = load ptr, ptr %luv3, align 8
  %incdec.ptr8 = getelementptr inbounds i16, ptr %12, i32 1
  store ptr %incdec.ptr8, ptr %luv3, align 8
  store i16 %conv7, ptr %12, align 2
  %13 = load ptr, ptr %luv, align 8
  %incdec.ptr9 = getelementptr inbounds i32, ptr %13, i32 1
  store ptr %incdec.ptr9, ptr %luv, align 8
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @Luv24toRGB(ptr noundef %sp, ptr noundef %op, i32 noundef %n) #0 {
entry:
  %sp.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %luv = alloca ptr, align 8
  %rgb = alloca ptr, align 8
  %xyz = alloca [3 x float], align 4
  store ptr %sp, ptr %sp.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr %sp.addr, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %tbuf, align 8
  store ptr %1, ptr %luv, align 8
  %2 = load ptr, ptr %op.addr, align 8
  store ptr %2, ptr %rgb, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %luv, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %luv, align 8
  %5 = load i32, ptr %4, align 4
  %arraydecay = getelementptr inbounds [3 x float], ptr %xyz, i64 0, i64 0
  call void @pix24toXYZ(i32 noundef %5, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [3 x float], ptr %xyz, i64 0, i64 0
  %6 = load ptr, ptr %rgb, align 8
  call void @XYZtoRGB24(ptr noundef %arraydecay1, ptr noundef %6)
  %7 = load ptr, ptr %rgb, align 8
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 3
  store ptr %add.ptr, ptr %rgb, align 8
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvDecode32(ptr noundef %tif, ptr noundef %op, i32 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %occ.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  %sp = alloca ptr, align 8
  %shft = alloca i32, align 4
  %i = alloca i32, align 4
  %npixels = alloca i32, align 4
  %bp = alloca ptr, align 8
  %tp = alloca ptr, align 8
  %b = alloca i32, align 4
  %cc = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i32 %occ, ptr %occ.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load i16, ptr %s.addr, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp eq i32 %conv, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv2 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.LogLuvDecode32, ptr noundef @.str, i32 noundef 269, ptr noundef @.str.10) #5
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 37
  %3 = load ptr, ptr %tif_data, align 8
  store ptr %3, ptr %sp, align 8
  %4 = load ptr, ptr %sp, align 8
  %cmp3 = icmp ne ptr %4, null
  %lnot5 = xor i1 %cmp3, true
  %lnot.ext6 = zext i1 %lnot5 to i32
  %conv7 = sext i32 %lnot.ext6 to i64
  %tobool8 = icmp ne i64 %conv7, 0
  br i1 %tobool8, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.LogLuvDecode32, ptr noundef @.str, i32 noundef 271, ptr noundef @.str.5) #5
  unreachable

5:                                                ; No predecessors!
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %5
  %6 = load i32, ptr %occ.addr, align 4
  %7 = load ptr, ptr %sp, align 8
  %pixel_size = getelementptr inbounds %struct.logLuvState, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %pixel_size, align 4
  %div = sdiv i32 %6, %8
  store i32 %div, ptr %npixels, align 4
  %9 = load ptr, ptr %sp, align 8
  %user_datafmt = getelementptr inbounds %struct.logLuvState, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %user_datafmt, align 8
  %cmp12 = icmp eq i32 %10, 2
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end11
  %11 = load ptr, ptr %op.addr, align 8
  store ptr %11, ptr %tp, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end11
  %12 = load ptr, ptr %sp, align 8
  %tbuflen = getelementptr inbounds %struct.logLuvState, ptr %12, i32 0, i32 3
  %13 = load i16, ptr %tbuflen, align 8
  %conv14 = sext i16 %13 to i32
  %14 = load i32, ptr %npixels, align 4
  %cmp15 = icmp sge i32 %conv14, %14
  %lnot17 = xor i1 %cmp15, true
  %lnot.ext18 = zext i1 %lnot17 to i32
  %conv19 = sext i32 %lnot.ext18 to i64
  %tobool20 = icmp ne i64 %conv19, 0
  br i1 %tobool20, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %if.else
  call void @__assert_rtn(ptr noundef @__func__.LogLuvDecode32, ptr noundef @.str, i32 noundef 278, ptr noundef @.str.11) #5
  unreachable

15:                                               ; No predecessors!
  br label %cond.end23

cond.false22:                                     ; preds = %if.else
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %15
  %16 = load ptr, ptr %sp, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %tbuf, align 8
  store ptr %17, ptr %tp, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end23, %if.then
  %18 = load ptr, ptr %tp, align 8
  %19 = load i32, ptr %npixels, align 4
  %conv24 = sext i32 %19 to i64
  %mul = mul i64 %conv24, 4
  %conv25 = trunc i64 %mul to i32
  call void @_TIFFmemset(ptr noundef %18, i32 noundef 0, i32 noundef %conv25)
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %20, i32 0, i32 42
  %21 = load ptr, ptr %tif_rawcp, align 8
  store ptr %21, ptr %bp, align 8
  %22 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %22, i32 0, i32 43
  %23 = load i32, ptr %tif_rawcc, align 8
  store i32 %23, ptr %cc, align 4
  store i32 32, ptr %shft, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end69, %if.end
  %24 = load i32, ptr %shft, align 4
  %sub = sub nsw i32 %24, 8
  store i32 %sub, ptr %shft, align 4
  %cmp26 = icmp sge i32 %sub, 0
  br i1 %cmp26, label %for.body, label %for.end70

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %if.end62, %for.body
  %25 = load i32, ptr %i, align 4
  %26 = load i32, ptr %npixels, align 4
  %cmp29 = icmp slt i32 %25, %26
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond28
  %27 = load i32, ptr %cc, align 4
  %cmp31 = icmp sgt i32 %27, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond28
  %28 = phi i1 [ false, %for.cond28 ], [ %cmp31, %land.rhs ]
  br i1 %28, label %for.body33, label %for.end

for.body33:                                       ; preds = %land.end
  %29 = load ptr, ptr %bp, align 8
  %30 = load i8, ptr %29, align 1
  %conv34 = zext i8 %30 to i32
  %cmp35 = icmp sge i32 %conv34, 128
  br i1 %cmp35, label %if.then37, label %if.else43

if.then37:                                        ; preds = %for.body33
  %31 = load ptr, ptr %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %31, i32 1
  store ptr %incdec.ptr, ptr %bp, align 8
  %32 = load i8, ptr %31, align 1
  %conv38 = zext i8 %32 to i32
  %add = add nsw i32 %conv38, -126
  store i32 %add, ptr %rc, align 4
  %33 = load ptr, ptr %bp, align 8
  %incdec.ptr39 = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr39, ptr %bp, align 8
  %34 = load i8, ptr %33, align 1
  %conv40 = zext i8 %34 to i32
  %35 = load i32, ptr %shft, align 4
  %shl = shl i32 %conv40, %35
  store i32 %shl, ptr %b, align 4
  %36 = load i32, ptr %cc, align 4
  %sub41 = sub nsw i32 %36, 2
  store i32 %sub41, ptr %cc, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then37
  %37 = load i32, ptr %rc, align 4
  %dec = add nsw i32 %37, -1
  store i32 %dec, ptr %rc, align 4
  %tobool42 = icmp ne i32 %37, 0
  br i1 %tobool42, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %38 = load i32, ptr %b, align 4
  %39 = load ptr, ptr %tp, align 8
  %40 = load i32, ptr %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, ptr %i, align 4
  %idxprom = sext i32 %40 to i64
  %arrayidx = getelementptr inbounds i32, ptr %39, i64 %idxprom
  %41 = load i32, ptr %arrayidx, align 4
  %or = or i32 %41, %38
  store i32 %or, ptr %arrayidx, align 4
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  br label %if.end62

if.else43:                                        ; preds = %for.body33
  %42 = load ptr, ptr %bp, align 8
  %incdec.ptr44 = getelementptr inbounds i8, ptr %42, i32 1
  store ptr %incdec.ptr44, ptr %bp, align 8
  %43 = load i8, ptr %42, align 1
  %conv45 = zext i8 %43 to i32
  store i32 %conv45, ptr %rc, align 4
  br label %while.cond46

while.cond46:                                     ; preds = %while.body53, %if.else43
  %44 = load i32, ptr %cc, align 4
  %dec47 = add nsw i32 %44, -1
  store i32 %dec47, ptr %cc, align 4
  %tobool48 = icmp ne i32 %dec47, 0
  br i1 %tobool48, label %land.rhs49, label %land.end52

land.rhs49:                                       ; preds = %while.cond46
  %45 = load i32, ptr %rc, align 4
  %dec50 = add nsw i32 %45, -1
  store i32 %dec50, ptr %rc, align 4
  %tobool51 = icmp ne i32 %45, 0
  br label %land.end52

land.end52:                                       ; preds = %land.rhs49, %while.cond46
  %46 = phi i1 [ false, %while.cond46 ], [ %tobool51, %land.rhs49 ]
  br i1 %46, label %while.body53, label %while.end61

while.body53:                                     ; preds = %land.end52
  %47 = load ptr, ptr %bp, align 8
  %incdec.ptr54 = getelementptr inbounds i8, ptr %47, i32 1
  store ptr %incdec.ptr54, ptr %bp, align 8
  %48 = load i8, ptr %47, align 1
  %conv55 = zext i8 %48 to i32
  %49 = load i32, ptr %shft, align 4
  %shl56 = shl i32 %conv55, %49
  %50 = load ptr, ptr %tp, align 8
  %51 = load i32, ptr %i, align 4
  %inc57 = add nsw i32 %51, 1
  store i32 %inc57, ptr %i, align 4
  %idxprom58 = sext i32 %51 to i64
  %arrayidx59 = getelementptr inbounds i32, ptr %50, i64 %idxprom58
  %52 = load i32, ptr %arrayidx59, align 4
  %or60 = or i32 %52, %shl56
  store i32 %or60, ptr %arrayidx59, align 4
  br label %while.cond46, !llvm.loop !16

while.end61:                                      ; preds = %land.end52
  br label %if.end62

if.end62:                                         ; preds = %while.end61, %while.end
  br label %for.cond28, !llvm.loop !17

for.end:                                          ; preds = %land.end
  %53 = load i32, ptr %i, align 4
  %54 = load i32, ptr %npixels, align 4
  %cmp63 = icmp ne i32 %53, %54
  br i1 %cmp63, label %if.then65, label %if.end69

if.then65:                                        ; preds = %for.end
  %55 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %tif_name, align 8
  %57 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %57, i32 0, i32 11
  %58 = load i32, ptr %tif_row, align 8
  %59 = load i32, ptr %npixels, align 4
  %60 = load i32, ptr %i, align 4
  %sub66 = sub nsw i32 %59, %60
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %56, ptr noundef @.str.13, i32 noundef %58, i32 noundef %sub66)
  %61 = load ptr, ptr %bp, align 8
  %62 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp67 = getelementptr inbounds %struct.tiff, ptr %62, i32 0, i32 42
  store ptr %61, ptr %tif_rawcp67, align 8
  %63 = load i32, ptr %cc, align 4
  %64 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc68 = getelementptr inbounds %struct.tiff, ptr %64, i32 0, i32 43
  store i32 %63, ptr %tif_rawcc68, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end69:                                         ; preds = %for.end
  br label %for.cond, !llvm.loop !18

for.end70:                                        ; preds = %for.cond
  %65 = load ptr, ptr %sp, align 8
  %tfunc = getelementptr inbounds %struct.logLuvState, ptr %65, i32 0, i32 4
  %66 = load ptr, ptr %tfunc, align 8
  %67 = load ptr, ptr %sp, align 8
  %68 = load ptr, ptr %op.addr, align 8
  %69 = load i32, ptr %npixels, align 4
  call void %66(ptr noundef %67, ptr noundef %68, i32 noundef %69)
  %70 = load ptr, ptr %bp, align 8
  %71 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp71 = getelementptr inbounds %struct.tiff, ptr %71, i32 0, i32 42
  store ptr %70, ptr %tif_rawcp71, align 8
  %72 = load i32, ptr %cc, align 4
  %73 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc72 = getelementptr inbounds %struct.tiff, ptr %73, i32 0, i32 43
  store i32 %72, ptr %tif_rawcc72, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end70, %if.then65
  %74 = load i32, ptr %retval, align 4
  ret i32 %74
}

; Function Attrs: nounwind ssp uwtable
define internal void @Luv32toXYZ(ptr noundef %sp, ptr noundef %op, i32 noundef %n) #0 {
entry:
  %sp.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %luv = alloca ptr, align 8
  %xyz = alloca ptr, align 8
  store ptr %sp, ptr %sp.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr %sp.addr, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %tbuf, align 8
  store ptr %1, ptr %luv, align 8
  %2 = load ptr, ptr %op.addr, align 8
  store ptr %2, ptr %xyz, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %luv, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %luv, align 8
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr %xyz, align 8
  call void @pix32toXYZ(i32 noundef %5, ptr noundef %6)
  %7 = load ptr, ptr %xyz, align 8
  %add.ptr = getelementptr inbounds float, ptr %7, i64 3
  store ptr %add.ptr, ptr %xyz, align 8
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @Luv32toLuv48(ptr noundef %sp, ptr noundef %op, i32 noundef %n) #0 {
entry:
  %sp.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %luv = alloca ptr, align 8
  %luv3 = alloca ptr, align 8
  %u = alloca double, align 8
  %v = alloca double, align 8
  store ptr %sp, ptr %sp.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr %sp.addr, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %tbuf, align 8
  store ptr %1, ptr %luv, align 8
  %2 = load ptr, ptr %op.addr, align 8
  store ptr %2, ptr %luv3, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %luv, align 8
  %5 = load i32, ptr %4, align 4
  %shr = lshr i32 %5, 16
  %conv = trunc i32 %shr to i16
  %6 = load ptr, ptr %luv3, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %luv3, align 8
  store i16 %conv, ptr %6, align 2
  %7 = load ptr, ptr %luv, align 8
  %8 = load i32, ptr %7, align 4
  %shr1 = lshr i32 %8, 8
  %and = and i32 %shr1, 255
  %conv2 = uitofp i32 %and to double
  %add = fadd double %conv2, 5.000000e-01
  %mul = fmul double 0x3F63FB013FB013FB, %add
  store double %mul, ptr %u, align 8
  %9 = load ptr, ptr %luv, align 8
  %10 = load i32, ptr %9, align 4
  %and3 = and i32 %10, 255
  %conv4 = uitofp i32 %and3 to double
  %add5 = fadd double %conv4, 5.000000e-01
  %mul6 = fmul double 0x3F63FB013FB013FB, %add5
  store double %mul6, ptr %v, align 8
  %11 = load double, ptr %u, align 8
  %mul7 = fmul double %11, 3.276800e+04
  %conv8 = fptosi double %mul7 to i16
  %12 = load ptr, ptr %luv3, align 8
  %incdec.ptr9 = getelementptr inbounds i16, ptr %12, i32 1
  store ptr %incdec.ptr9, ptr %luv3, align 8
  store i16 %conv8, ptr %12, align 2
  %13 = load double, ptr %v, align 8
  %mul10 = fmul double %13, 3.276800e+04
  %conv11 = fptosi double %mul10 to i16
  %14 = load ptr, ptr %luv3, align 8
  %incdec.ptr12 = getelementptr inbounds i16, ptr %14, i32 1
  store ptr %incdec.ptr12, ptr %luv3, align 8
  store i16 %conv11, ptr %14, align 2
  %15 = load ptr, ptr %luv, align 8
  %incdec.ptr13 = getelementptr inbounds i32, ptr %15, i32 1
  store ptr %incdec.ptr13, ptr %luv, align 8
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @Luv32toRGB(ptr noundef %sp, ptr noundef %op, i32 noundef %n) #0 {
entry:
  %sp.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %luv = alloca ptr, align 8
  %rgb = alloca ptr, align 8
  %xyz = alloca [3 x float], align 4
  store ptr %sp, ptr %sp.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr %sp.addr, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %tbuf, align 8
  store ptr %1, ptr %luv, align 8
  %2 = load ptr, ptr %op.addr, align 8
  store ptr %2, ptr %rgb, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %luv, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %luv, align 8
  %5 = load i32, ptr %4, align 4
  %arraydecay = getelementptr inbounds [3 x float], ptr %xyz, i64 0, i64 0
  call void @pix32toXYZ(i32 noundef %5, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [3 x float], ptr %xyz, i64 0, i64 0
  %6 = load ptr, ptr %rgb, align 8
  call void @XYZtoRGB24(ptr noundef %arraydecay1, ptr noundef %6)
  %7 = load ptr, ptr %rgb, align 8
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 3
  store ptr %add.ptr, ptr %rgb, align 8
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogL16InitState(ptr noundef %tif) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 37
  %2 = load ptr, ptr %tif_data, align 8
  store ptr %2, ptr %sp, align 8
  %3 = load ptr, ptr %sp, align 8
  %cmp = icmp ne ptr %3, null
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.LogL16InitState, ptr noundef @.str, i32 noundef 1025, ptr noundef @.str.5) #5
  unreachable

4:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %4
  %5 = load ptr, ptr %td, align 8
  %td_photometric = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i32 0, i32 11
  %6 = load i16, ptr %td_photometric, align 2
  %conv1 = zext i16 %6 to i32
  %cmp2 = icmp eq i32 %conv1, 32844
  %lnot4 = xor i1 %cmp2, true
  %lnot.ext5 = zext i1 %lnot4 to i32
  %conv6 = sext i32 %lnot.ext5 to i64
  %tobool7 = icmp ne i64 %conv6, 0
  br i1 %tobool7, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.LogL16InitState, ptr noundef @.str, i32 noundef 1026, ptr noundef @.str.14) #5
  unreachable

7:                                                ; No predecessors!
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %7
  %8 = load ptr, ptr %sp, align 8
  %user_datafmt = getelementptr inbounds %struct.logLuvState, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %user_datafmt, align 8
  %cmp11 = icmp eq i32 %9, -1
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end10
  %10 = load ptr, ptr %td, align 8
  %call = call i32 @LogL16GuessDataFmt(ptr noundef %10)
  %11 = load ptr, ptr %sp, align 8
  %user_datafmt13 = getelementptr inbounds %struct.logLuvState, ptr %11, i32 0, i32 0
  store i32 %call, ptr %user_datafmt13, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end10
  %12 = load ptr, ptr %sp, align 8
  %user_datafmt14 = getelementptr inbounds %struct.logLuvState, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %user_datafmt14, align 8
  switch i32 %13, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb15
    i32 3, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.end
  %14 = load ptr, ptr %sp, align 8
  %pixel_size = getelementptr inbounds %struct.logLuvState, ptr %14, i32 0, i32 1
  store i32 4, ptr %pixel_size, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  %15 = load ptr, ptr %sp, align 8
  %pixel_size16 = getelementptr inbounds %struct.logLuvState, ptr %15, i32 0, i32 1
  store i32 2, ptr %pixel_size16, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  %16 = load ptr, ptr %sp, align 8
  %pixel_size18 = getelementptr inbounds %struct.logLuvState, ptr %16, i32 0, i32 1
  store i32 1, ptr %pixel_size18, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %17 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %tif_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %18, ptr noundef @.str.15)
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb15, %sw.bb
  %19 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %td_imagewidth, align 8
  %21 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %21, i32 0, i32 16
  %22 = load i32, ptr %td_rowsperstrip, align 4
  %mul = mul i32 %20, %22
  %conv19 = trunc i32 %mul to i16
  %23 = load ptr, ptr %sp, align 8
  %tbuflen = getelementptr inbounds %struct.logLuvState, ptr %23, i32 0, i32 3
  store i16 %conv19, ptr %tbuflen, align 8
  %24 = load ptr, ptr %sp, align 8
  %tbuflen20 = getelementptr inbounds %struct.logLuvState, ptr %24, i32 0, i32 3
  %25 = load i16, ptr %tbuflen20, align 8
  %conv21 = sext i16 %25 to i64
  %mul22 = mul i64 %conv21, 2
  %conv23 = trunc i64 %mul22 to i32
  %call24 = call ptr @_TIFFmalloc(i32 noundef %conv23)
  %26 = load ptr, ptr %sp, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %26, i32 0, i32 2
  store ptr %call24, ptr %tbuf, align 8
  %27 = load ptr, ptr %sp, align 8
  %tbuf25 = getelementptr inbounds %struct.logLuvState, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %tbuf25, align 8
  %cmp26 = icmp eq ptr %28, null
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %sw.epilog
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_name29 = getelementptr inbounds %struct.tiff, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %tif_name29, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @LogL16InitState.module, ptr noundef @.str.9, ptr noundef %30)
  store i32 0, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %sw.epilog
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end30, %if.then28, %sw.default
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogL16Decode(ptr noundef %tif, ptr noundef %op, i32 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %occ.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  %sp = alloca ptr, align 8
  %shft = alloca i32, align 4
  %i = alloca i32, align 4
  %npixels = alloca i32, align 4
  %bp = alloca ptr, align 8
  %tp = alloca ptr, align 8
  %b = alloca i16, align 2
  %cc = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i32 %occ, ptr %occ.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load i16, ptr %s.addr, align 2
  %conv = zext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv2 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.LogL16Decode, ptr noundef @.str, i32 noundef 169, ptr noundef @.str.10) #5
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  %4 = load ptr, ptr %sp, align 8
  %cmp3 = icmp ne ptr %4, null
  %lnot5 = xor i1 %cmp3, true
  %lnot.ext6 = zext i1 %lnot5 to i32
  %conv7 = sext i32 %lnot.ext6 to i64
  %tobool8 = icmp ne i64 %conv7, 0
  br i1 %tobool8, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.LogL16Decode, ptr noundef @.str, i32 noundef 170, ptr noundef @.str.5) #5
  unreachable

5:                                                ; No predecessors!
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %5
  %6 = load i32, ptr %occ.addr, align 4
  %7 = load ptr, ptr %sp, align 8
  %pixel_size = getelementptr inbounds %struct.logLuvState, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %pixel_size, align 4
  %div = sdiv i32 %6, %8
  store i32 %div, ptr %npixels, align 4
  %9 = load ptr, ptr %sp, align 8
  %user_datafmt = getelementptr inbounds %struct.logLuvState, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %user_datafmt, align 8
  %cmp12 = icmp eq i32 %10, 1
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end11
  %11 = load ptr, ptr %op.addr, align 8
  store ptr %11, ptr %tp, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end11
  %12 = load ptr, ptr %sp, align 8
  %tbuflen = getelementptr inbounds %struct.logLuvState, ptr %12, i32 0, i32 3
  %13 = load i16, ptr %tbuflen, align 8
  %conv14 = sext i16 %13 to i32
  %14 = load i32, ptr %npixels, align 4
  %cmp15 = icmp sge i32 %conv14, %14
  %lnot17 = xor i1 %cmp15, true
  %lnot.ext18 = zext i1 %lnot17 to i32
  %conv19 = sext i32 %lnot.ext18 to i64
  %tobool20 = icmp ne i64 %conv19, 0
  br i1 %tobool20, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %if.else
  call void @__assert_rtn(ptr noundef @__func__.LogL16Decode, ptr noundef @.str, i32 noundef 177, ptr noundef @.str.11) #5
  unreachable

15:                                               ; No predecessors!
  br label %cond.end23

cond.false22:                                     ; preds = %if.else
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %15
  %16 = load ptr, ptr %sp, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %tbuf, align 8
  store ptr %17, ptr %tp, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end23, %if.then
  %18 = load ptr, ptr %tp, align 8
  %19 = load i32, ptr %npixels, align 4
  %conv24 = sext i32 %19 to i64
  %mul = mul i64 %conv24, 2
  %conv25 = trunc i64 %mul to i32
  call void @_TIFFmemset(ptr noundef %18, i32 noundef 0, i32 noundef %conv25)
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %20, i32 0, i32 42
  %21 = load ptr, ptr %tif_rawcp, align 8
  store ptr %21, ptr %bp, align 8
  %22 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %22, i32 0, i32 43
  %23 = load i32, ptr %tif_rawcc, align 8
  store i32 %23, ptr %cc, align 4
  store i32 16, ptr %shft, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end77, %if.end
  %24 = load i32, ptr %shft, align 4
  %sub = sub nsw i32 %24, 8
  store i32 %sub, ptr %shft, align 4
  %cmp26 = icmp sge i32 %sub, 0
  br i1 %cmp26, label %for.body, label %for.end78

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %if.end70, %for.body
  %25 = load i32, ptr %i, align 4
  %26 = load i32, ptr %npixels, align 4
  %cmp29 = icmp slt i32 %25, %26
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond28
  %27 = load i32, ptr %cc, align 4
  %cmp31 = icmp sgt i32 %27, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond28
  %28 = phi i1 [ false, %for.cond28 ], [ %cmp31, %land.rhs ]
  br i1 %28, label %for.body33, label %for.end

for.body33:                                       ; preds = %land.end
  %29 = load ptr, ptr %bp, align 8
  %30 = load i8, ptr %29, align 1
  %conv34 = zext i8 %30 to i32
  %cmp35 = icmp sge i32 %conv34, 128
  br i1 %cmp35, label %if.then37, label %if.else48

if.then37:                                        ; preds = %for.body33
  %31 = load ptr, ptr %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %31, i32 1
  store ptr %incdec.ptr, ptr %bp, align 8
  %32 = load i8, ptr %31, align 1
  %conv38 = zext i8 %32 to i32
  %add = add nsw i32 %conv38, -126
  store i32 %add, ptr %rc, align 4
  %33 = load ptr, ptr %bp, align 8
  %incdec.ptr39 = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr39, ptr %bp, align 8
  %34 = load i8, ptr %33, align 1
  %conv40 = zext i8 %34 to i16
  %conv41 = sext i16 %conv40 to i32
  %35 = load i32, ptr %shft, align 4
  %shl = shl i32 %conv41, %35
  %conv42 = trunc i32 %shl to i16
  store i16 %conv42, ptr %b, align 2
  %36 = load i32, ptr %cc, align 4
  %sub43 = sub nsw i32 %36, 2
  store i32 %sub43, ptr %cc, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then37
  %37 = load i32, ptr %rc, align 4
  %dec = add nsw i32 %37, -1
  store i32 %dec, ptr %rc, align 4
  %tobool44 = icmp ne i32 %37, 0
  br i1 %tobool44, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %38 = load i16, ptr %b, align 2
  %conv45 = sext i16 %38 to i32
  %39 = load ptr, ptr %tp, align 8
  %40 = load i32, ptr %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, ptr %i, align 4
  %idxprom = sext i32 %40 to i64
  %arrayidx = getelementptr inbounds i16, ptr %39, i64 %idxprom
  %41 = load i16, ptr %arrayidx, align 2
  %conv46 = sext i16 %41 to i32
  %or = or i32 %conv46, %conv45
  %conv47 = trunc i32 %or to i16
  store i16 %conv47, ptr %arrayidx, align 2
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %while.cond
  br label %if.end70

if.else48:                                        ; preds = %for.body33
  %42 = load ptr, ptr %bp, align 8
  %incdec.ptr49 = getelementptr inbounds i8, ptr %42, i32 1
  store ptr %incdec.ptr49, ptr %bp, align 8
  %43 = load i8, ptr %42, align 1
  %conv50 = zext i8 %43 to i32
  store i32 %conv50, ptr %rc, align 4
  br label %while.cond51

while.cond51:                                     ; preds = %while.body58, %if.else48
  %44 = load i32, ptr %cc, align 4
  %dec52 = add nsw i32 %44, -1
  store i32 %dec52, ptr %cc, align 4
  %tobool53 = icmp ne i32 %dec52, 0
  br i1 %tobool53, label %land.rhs54, label %land.end57

land.rhs54:                                       ; preds = %while.cond51
  %45 = load i32, ptr %rc, align 4
  %dec55 = add nsw i32 %45, -1
  store i32 %dec55, ptr %rc, align 4
  %tobool56 = icmp ne i32 %45, 0
  br label %land.end57

land.end57:                                       ; preds = %land.rhs54, %while.cond51
  %46 = phi i1 [ false, %while.cond51 ], [ %tobool56, %land.rhs54 ]
  br i1 %46, label %while.body58, label %while.end69

while.body58:                                     ; preds = %land.end57
  %47 = load ptr, ptr %bp, align 8
  %incdec.ptr59 = getelementptr inbounds i8, ptr %47, i32 1
  store ptr %incdec.ptr59, ptr %bp, align 8
  %48 = load i8, ptr %47, align 1
  %conv60 = zext i8 %48 to i16
  %conv61 = sext i16 %conv60 to i32
  %49 = load i32, ptr %shft, align 4
  %shl62 = shl i32 %conv61, %49
  %50 = load ptr, ptr %tp, align 8
  %51 = load i32, ptr %i, align 4
  %inc63 = add nsw i32 %51, 1
  store i32 %inc63, ptr %i, align 4
  %idxprom64 = sext i32 %51 to i64
  %arrayidx65 = getelementptr inbounds i16, ptr %50, i64 %idxprom64
  %52 = load i16, ptr %arrayidx65, align 2
  %conv66 = sext i16 %52 to i32
  %or67 = or i32 %conv66, %shl62
  %conv68 = trunc i32 %or67 to i16
  store i16 %conv68, ptr %arrayidx65, align 2
  br label %while.cond51, !llvm.loop !23

while.end69:                                      ; preds = %land.end57
  br label %if.end70

if.end70:                                         ; preds = %while.end69, %while.end
  br label %for.cond28, !llvm.loop !24

for.end:                                          ; preds = %land.end
  %53 = load i32, ptr %i, align 4
  %54 = load i32, ptr %npixels, align 4
  %cmp71 = icmp ne i32 %53, %54
  br i1 %cmp71, label %if.then73, label %if.end77

if.then73:                                        ; preds = %for.end
  %55 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %tif_name, align 8
  %57 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %57, i32 0, i32 11
  %58 = load i32, ptr %tif_row, align 8
  %59 = load i32, ptr %npixels, align 4
  %60 = load i32, ptr %i, align 4
  %sub74 = sub nsw i32 %59, %60
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %56, ptr noundef @.str.16, i32 noundef %58, i32 noundef %sub74)
  %61 = load ptr, ptr %bp, align 8
  %62 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp75 = getelementptr inbounds %struct.tiff, ptr %62, i32 0, i32 42
  store ptr %61, ptr %tif_rawcp75, align 8
  %63 = load i32, ptr %cc, align 4
  %64 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc76 = getelementptr inbounds %struct.tiff, ptr %64, i32 0, i32 43
  store i32 %63, ptr %tif_rawcc76, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end77:                                         ; preds = %for.end
  br label %for.cond, !llvm.loop !25

for.end78:                                        ; preds = %for.cond
  %65 = load ptr, ptr %sp, align 8
  %tfunc = getelementptr inbounds %struct.logLuvState, ptr %65, i32 0, i32 4
  %66 = load ptr, ptr %tfunc, align 8
  %67 = load ptr, ptr %sp, align 8
  %68 = load ptr, ptr %op.addr, align 8
  %69 = load i32, ptr %npixels, align 4
  call void %66(ptr noundef %67, ptr noundef %68, i32 noundef %69)
  %70 = load ptr, ptr %bp, align 8
  %71 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp79 = getelementptr inbounds %struct.tiff, ptr %71, i32 0, i32 42
  store ptr %70, ptr %tif_rawcp79, align 8
  %72 = load i32, ptr %cc, align 4
  %73 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc80 = getelementptr inbounds %struct.tiff, ptr %73, i32 0, i32 43
  store i32 %72, ptr %tif_rawcc80, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end78, %if.then73
  %74 = load i32, ptr %retval, align 4
  ret i32 %74
}

; Function Attrs: nounwind ssp uwtable
define internal void @L16toY(ptr noundef %sp, ptr noundef %op, i32 noundef %n) #0 {
entry:
  %sp.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %l16 = alloca ptr, align 8
  %yp = alloca ptr, align 8
  store ptr %sp, ptr %sp.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr %sp.addr, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %tbuf, align 8
  store ptr %1, ptr %l16, align 8
  %2 = load ptr, ptr %op.addr, align 8
  store ptr %2, ptr %yp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %l16, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %l16, align 8
  %5 = load i16, ptr %4, align 2
  %conv = sext i16 %5 to i32
  %call = call double @pix16toY(i32 noundef %conv)
  %conv1 = fptrunc double %call to float
  %6 = load ptr, ptr %yp, align 8
  %incdec.ptr2 = getelementptr inbounds float, ptr %6, i32 1
  store ptr %incdec.ptr2, ptr %yp, align 8
  store float %conv1, ptr %6, align 4
  br label %while.cond, !llvm.loop !26

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @L16toGry(ptr noundef %sp, ptr noundef %op, i32 noundef %n) #0 {
entry:
  %sp.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %l16 = alloca ptr, align 8
  %gp = alloca ptr, align 8
  %Y = alloca double, align 8
  store ptr %sp, ptr %sp.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr %sp.addr, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %tbuf, align 8
  store ptr %1, ptr %l16, align 8
  %2 = load ptr, ptr %op.addr, align 8
  store ptr %2, ptr %gp, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end8, %entry
  %3 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %l16, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %l16, align 8
  %5 = load i16, ptr %4, align 2
  %conv = sext i16 %5 to i32
  %call = call double @pix16toY(i32 noundef %conv)
  store double %call, ptr %Y, align 8
  %6 = load double, ptr %Y, align 8
  %cmp1 = fcmp ole double %6, 0.000000e+00
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end8

cond.false:                                       ; preds = %while.body
  %7 = load double, ptr %Y, align 8
  %cmp3 = fcmp oge double %7, 1.000000e+00
  br i1 %cmp3, label %cond.true5, label %cond.false6

cond.true5:                                       ; preds = %cond.false
  br label %cond.end

cond.false6:                                      ; preds = %cond.false
  %8 = load double, ptr %Y, align 8
  %9 = call double @llvm.sqrt.f64(double %8)
  %mul = fmul double 2.560000e+02, %9
  %conv7 = fptosi double %mul to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false6, %cond.true5
  %cond = phi i32 [ 255, %cond.true5 ], [ %conv7, %cond.false6 ]
  br label %cond.end8

cond.end8:                                        ; preds = %cond.end, %cond.true
  %cond9 = phi i32 [ 0, %cond.true ], [ %cond, %cond.end ]
  %conv10 = trunc i32 %cond9 to i8
  %10 = load ptr, ptr %gp, align 8
  %incdec.ptr11 = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr11, ptr %gp, align 8
  store i8 %conv10, ptr %10, align 1
  br label %while.cond, !llvm.loop !27

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvGuessDataFmt(ptr noundef %td) #0 {
entry:
  %td.addr = alloca ptr, align 8
  %guess = alloca i32, align 4
  store ptr %td, ptr %td.addr, align 8
  %0 = load ptr, ptr %td.addr, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %0, i32 0, i32 8
  %1 = load i16, ptr %td_bitspersample, align 4
  %conv = zext i16 %1 to i32
  %shl = shl i32 %conv, 3
  %2 = load ptr, ptr %td.addr, align 8
  %td_sampleformat = getelementptr inbounds %struct.TIFFDirectory, ptr %2, i32 0, i32 9
  %3 = load i16, ptr %td_sampleformat, align 2
  %conv1 = zext i16 %3 to i32
  %or = or i32 %shl, %conv1
  switch i32 %or, label %sw.default [
    i32 259, label %sw.bb
    i32 260, label %sw.bb2
    i32 257, label %sw.bb2
    i32 258, label %sw.bb2
    i32 132, label %sw.bb3
    i32 130, label %sw.bb3
    i32 129, label %sw.bb3
    i32 68, label %sw.bb4
    i32 65, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, ptr %guess, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry, %entry, %entry
  store i32 2, ptr %guess, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry, %entry, %entry
  store i32 1, ptr %guess, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry, %entry
  store i32 3, ptr %guess, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -1, ptr %guess, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  %4 = load ptr, ptr %td.addr, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %4, i32 0, i32 15
  %5 = load i16, ptr %td_samplesperpixel, align 2
  %conv5 = zext i16 %5 to i32
  switch i32 %conv5, label %sw.default13 [
    i32 1, label %sw.bb6
    i32 3, label %sw.bb8
  ]

sw.bb6:                                           ; preds = %sw.epilog
  %6 = load i32, ptr %guess, align 4
  %cmp = icmp ne i32 %6, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb6
  store i32 -1, ptr %guess, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb6
  br label %sw.epilog14

sw.bb8:                                           ; preds = %sw.epilog
  %7 = load i32, ptr %guess, align 4
  %cmp9 = icmp eq i32 %7, 2
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %sw.bb8
  store i32 -1, ptr %guess, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %sw.bb8
  br label %sw.epilog14

sw.default13:                                     ; preds = %sw.epilog
  store i32 -1, ptr %guess, align 4
  br label %sw.epilog14

sw.epilog14:                                      ; preds = %sw.default13, %if.end12, %if.end
  %8 = load i32, ptr %guess, align 4
  ret i32 %8
}

declare void @_TIFFmemset(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @pix24toXYZ(i32 noundef %p, ptr noundef %XYZ) #0 {
entry:
  %p.addr = alloca i32, align 4
  %XYZ.addr = alloca ptr, align 8
  %Le = alloca i32, align 4
  %Ce = alloca i32, align 4
  %L = alloca double, align 8
  %u = alloca double, align 8
  %v = alloca double, align 8
  %s = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  store i32 %p, ptr %p.addr, align 4
  store ptr %XYZ, ptr %XYZ.addr, align 8
  %0 = load i32, ptr %p.addr, align 4
  %shr = lshr i32 %0, 14
  %and = and i32 %shr, 1023
  store i32 %and, ptr %Le, align 4
  %1 = load i32, ptr %Le, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %arrayidx, align 4
  %3 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx1 = getelementptr inbounds float, ptr %3, i64 1
  store float 0.000000e+00, ptr %arrayidx1, align 4
  %4 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx2 = getelementptr inbounds float, ptr %4, i64 0
  store float 0.000000e+00, ptr %arrayidx2, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %Le, align 4
  %conv = sitofp i32 %5 to double
  %add = fadd double %conv, 5.000000e-01
  %6 = call double @llvm.fmuladd.f64(double 0x3F862E42FEFA39EF, double %add, double 0xC020A2B23F3BAB73)
  %7 = call double @llvm.exp.f64(double %6)
  store double %7, ptr %L, align 8
  %8 = load i32, ptr %p.addr, align 4
  %and3 = and i32 %8, 16383
  store i32 %and3, ptr %Ce, align 4
  %9 = load i32, ptr %Ce, align 4
  %call = call i32 @uv_decode(ptr noundef %u, ptr noundef %v, i32 noundef %9)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store double 0x3FCAF286BD156C1A, ptr %u, align 8
  store double 0x3FDE50D794B8199E, ptr %v, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %10 = load double, ptr %u, align 8
  %11 = load double, ptr %v, align 8
  %mul8 = fmul double 1.600000e+01, %11
  %neg = fneg double %mul8
  %12 = call double @llvm.fmuladd.f64(double 6.000000e+00, double %10, double %neg)
  %add9 = fadd double %12, 1.200000e+01
  %div = fdiv double 1.000000e+00, %add9
  store double %div, ptr %s, align 8
  %13 = load double, ptr %u, align 8
  %mul = fmul double 9.000000e+00, %13
  %14 = load double, ptr %s, align 8
  %mul10 = fmul double %mul, %14
  store double %mul10, ptr %x, align 8
  %15 = load double, ptr %v, align 8
  %mul11 = fmul double 4.000000e+00, %15
  %16 = load double, ptr %s, align 8
  %mul12 = fmul double %mul11, %16
  store double %mul12, ptr %y, align 8
  %17 = load double, ptr %x, align 8
  %18 = load double, ptr %y, align 8
  %div13 = fdiv double %17, %18
  %19 = load double, ptr %L, align 8
  %mul14 = fmul double %div13, %19
  %conv15 = fptrunc double %mul14 to float
  %20 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx16 = getelementptr inbounds float, ptr %20, i64 0
  store float %conv15, ptr %arrayidx16, align 4
  %21 = load double, ptr %L, align 8
  %conv17 = fptrunc double %21 to float
  %22 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx18 = getelementptr inbounds float, ptr %22, i64 1
  store float %conv17, ptr %arrayidx18, align 4
  %23 = load double, ptr %x, align 8
  %sub = fsub double 1.000000e+00, %23
  %24 = load double, ptr %y, align 8
  %sub19 = fsub double %sub, %24
  %25 = load double, ptr %y, align 8
  %div20 = fdiv double %sub19, %25
  %26 = load double, ptr %L, align 8
  %mul21 = fmul double %div20, %26
  %conv22 = fptrunc double %mul21 to float
  %27 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx23 = getelementptr inbounds float, ptr %27, i64 2
  store float %conv22, ptr %arrayidx23, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.exp.f64(double) #4

; Function Attrs: nounwind ssp uwtable
define internal i32 @uv_decode(ptr noundef %up, ptr noundef %vp, i32 noundef %c) #0 {
entry:
  %retval = alloca i32, align 4
  %up.addr = alloca ptr, align 8
  %vp.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  %upper = alloca i32, align 4
  %lower = alloca i32, align 4
  %ui = alloca i32, align 4
  %vi = alloca i32, align 4
  store ptr %up, ptr %up.addr, align 8
  store ptr %vp, ptr %vp.addr, align 8
  store i32 %c, ptr %c.addr, align 4
  %0 = load i32, ptr %c.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %c.addr, align 4
  %cmp1 = icmp sge i32 %1, 16289
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %lower, align 4
  store i32 163, ptr %upper, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %2 = load i32, ptr %lower, align 4
  %3 = load i32, ptr %upper, align 4
  %add = add nsw i32 %2, %3
  %shr = ashr i32 %add, 1
  store i32 %shr, ptr %vi, align 4
  %4 = load i32, ptr %c.addr, align 4
  %5 = load i32, ptr %vi, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [163 x %struct.anon], ptr @uv_row, i64 0, i64 %idxprom
  %ncum = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 2
  %6 = load i16, ptr %ncum, align 2
  %conv = sext i16 %6 to i32
  %sub = sub nsw i32 %4, %conv
  store i32 %sub, ptr %ui, align 4
  %7 = load i32, ptr %ui, align 4
  %cmp2 = icmp sgt i32 %7, 0
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %do.body
  %8 = load i32, ptr %vi, align 4
  store i32 %8, ptr %lower, align 4
  br label %if.end10

if.else:                                          ; preds = %do.body
  %9 = load i32, ptr %ui, align 4
  %cmp5 = icmp slt i32 %9, 0
  br i1 %cmp5, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  %10 = load i32, ptr %vi, align 4
  store i32 %10, ptr %upper, align 4
  br label %if.end9

if.else8:                                         ; preds = %if.else
  br label %do.end

if.end9:                                          ; preds = %if.then7
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then4
  br label %do.cond

do.cond:                                          ; preds = %if.end10
  %11 = load i32, ptr %upper, align 4
  %12 = load i32, ptr %lower, align 4
  %sub11 = sub nsw i32 %11, %12
  %cmp12 = icmp sgt i32 %sub11, 1
  br i1 %cmp12, label %do.body, label %do.end, !llvm.loop !28

do.end:                                           ; preds = %do.cond, %if.else8
  %13 = load i32, ptr %lower, align 4
  store i32 %13, ptr %vi, align 4
  %14 = load i32, ptr %c.addr, align 4
  %15 = load i32, ptr %vi, align 4
  %idxprom14 = sext i32 %15 to i64
  %arrayidx15 = getelementptr inbounds [163 x %struct.anon], ptr @uv_row, i64 0, i64 %idxprom14
  %ncum16 = getelementptr inbounds %struct.anon, ptr %arrayidx15, i32 0, i32 2
  %16 = load i16, ptr %ncum16, align 2
  %conv17 = sext i16 %16 to i32
  %sub18 = sub nsw i32 %14, %conv17
  store i32 %sub18, ptr %ui, align 4
  %17 = load i32, ptr %vi, align 4
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds [163 x %struct.anon], ptr @uv_row, i64 0, i64 %idxprom19
  %ustart = getelementptr inbounds %struct.anon, ptr %arrayidx20, i32 0, i32 0
  %18 = load float, ptr %ustart, align 4
  %conv21 = fpext float %18 to double
  %19 = load i32, ptr %ui, align 4
  %conv22 = sitofp i32 %19 to double
  %add23 = fadd double %conv22, 5.000000e-01
  %20 = call double @llvm.fmuladd.f64(double %add23, double 0x3F6CAC0840000000, double %conv21)
  %21 = load ptr, ptr %up.addr, align 8
  store double %20, ptr %21, align 8
  %22 = load i32, ptr %vi, align 4
  %conv24 = sitofp i32 %22 to double
  %add25 = fadd double %conv24, 5.000000e-01
  %23 = call double @llvm.fmuladd.f64(double %add25, double 0x3F6CAC0840000000, double 0x3F9158B820000000)
  %24 = load ptr, ptr %vp.addr, align 8
  store double %23, ptr %24, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind ssp uwtable
define internal void @XYZtoRGB24(ptr noundef %xyz, ptr noundef %rgb) #0 {
entry:
  %xyz.addr = alloca ptr, align 8
  %rgb.addr = alloca ptr, align 8
  %r = alloca double, align 8
  %g = alloca double, align 8
  %b = alloca double, align 8
  store ptr %xyz, ptr %xyz.addr, align 8
  store ptr %rgb, ptr %rgb.addr, align 8
  %0 = load ptr, ptr %xyz.addr, align 8
  %arrayidx = getelementptr inbounds float, ptr %0, i64 0
  %1 = load float, ptr %arrayidx, align 4
  %conv = fpext float %1 to double
  %2 = load ptr, ptr %xyz.addr, align 8
  %arrayidx1 = getelementptr inbounds float, ptr %2, i64 1
  %3 = load float, ptr %arrayidx1, align 4
  %conv2 = fpext float %3 to double
  %mul3 = fmul double -1.276000e+00, %conv2
  %4 = call double @llvm.fmuladd.f64(double 2.690000e+00, double %conv, double %mul3)
  %5 = load ptr, ptr %xyz.addr, align 8
  %arrayidx4 = getelementptr inbounds float, ptr %5, i64 2
  %6 = load float, ptr %arrayidx4, align 4
  %conv5 = fpext float %6 to double
  %7 = call double @llvm.fmuladd.f64(double -4.140000e-01, double %conv5, double %4)
  store double %7, ptr %r, align 8
  %8 = load ptr, ptr %xyz.addr, align 8
  %arrayidx6 = getelementptr inbounds float, ptr %8, i64 0
  %9 = load float, ptr %arrayidx6, align 4
  %conv7 = fpext float %9 to double
  %10 = load ptr, ptr %xyz.addr, align 8
  %arrayidx8 = getelementptr inbounds float, ptr %10, i64 1
  %11 = load float, ptr %arrayidx8, align 4
  %conv9 = fpext float %11 to double
  %mul10 = fmul double 1.978000e+00, %conv9
  %12 = call double @llvm.fmuladd.f64(double -1.022000e+00, double %conv7, double %mul10)
  %13 = load ptr, ptr %xyz.addr, align 8
  %arrayidx11 = getelementptr inbounds float, ptr %13, i64 2
  %14 = load float, ptr %arrayidx11, align 4
  %conv12 = fpext float %14 to double
  %15 = call double @llvm.fmuladd.f64(double 4.400000e-02, double %conv12, double %12)
  store double %15, ptr %g, align 8
  %16 = load ptr, ptr %xyz.addr, align 8
  %arrayidx13 = getelementptr inbounds float, ptr %16, i64 0
  %17 = load float, ptr %arrayidx13, align 4
  %conv14 = fpext float %17 to double
  %18 = load ptr, ptr %xyz.addr, align 8
  %arrayidx15 = getelementptr inbounds float, ptr %18, i64 1
  %19 = load float, ptr %arrayidx15, align 4
  %conv16 = fpext float %19 to double
  %mul17 = fmul double -2.240000e-01, %conv16
  %20 = call double @llvm.fmuladd.f64(double 6.100000e-02, double %conv14, double %mul17)
  %21 = load ptr, ptr %xyz.addr, align 8
  %arrayidx18 = getelementptr inbounds float, ptr %21, i64 2
  %22 = load float, ptr %arrayidx18, align 4
  %conv19 = fpext float %22 to double
  %23 = call double @llvm.fmuladd.f64(double 1.163000e+00, double %conv19, double %20)
  store double %23, ptr %b, align 8
  %24 = load double, ptr %r, align 8
  %cmp = fcmp ole double %24, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end26

cond.false:                                       ; preds = %entry
  %25 = load double, ptr %r, align 8
  %cmp21 = fcmp oge double %25, 1.000000e+00
  br i1 %cmp21, label %cond.true23, label %cond.false24

cond.true23:                                      ; preds = %cond.false
  br label %cond.end

cond.false24:                                     ; preds = %cond.false
  %26 = load double, ptr %r, align 8
  %27 = call double @llvm.sqrt.f64(double %26)
  %mul = fmul double 2.560000e+02, %27
  %conv25 = fptosi double %mul to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false24, %cond.true23
  %cond = phi i32 [ 255, %cond.true23 ], [ %conv25, %cond.false24 ]
  br label %cond.end26

cond.end26:                                       ; preds = %cond.end, %cond.true
  %cond27 = phi i32 [ 0, %cond.true ], [ %cond, %cond.end ]
  %conv28 = trunc i32 %cond27 to i8
  %28 = load ptr, ptr %rgb.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %28, i64 0
  store i8 %conv28, ptr %arrayidx29, align 1
  %29 = load double, ptr %g, align 8
  %cmp30 = fcmp ole double %29, 0.000000e+00
  br i1 %cmp30, label %cond.true32, label %cond.false33

cond.true32:                                      ; preds = %cond.end26
  br label %cond.end42

cond.false33:                                     ; preds = %cond.end26
  %30 = load double, ptr %g, align 8
  %cmp34 = fcmp oge double %30, 1.000000e+00
  br i1 %cmp34, label %cond.true36, label %cond.false37

cond.true36:                                      ; preds = %cond.false33
  br label %cond.end40

cond.false37:                                     ; preds = %cond.false33
  %31 = load double, ptr %g, align 8
  %32 = call double @llvm.sqrt.f64(double %31)
  %mul38 = fmul double 2.560000e+02, %32
  %conv39 = fptosi double %mul38 to i32
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false37, %cond.true36
  %cond41 = phi i32 [ 255, %cond.true36 ], [ %conv39, %cond.false37 ]
  br label %cond.end42

cond.end42:                                       ; preds = %cond.end40, %cond.true32
  %cond43 = phi i32 [ 0, %cond.true32 ], [ %cond41, %cond.end40 ]
  %conv44 = trunc i32 %cond43 to i8
  %33 = load ptr, ptr %rgb.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %33, i64 1
  store i8 %conv44, ptr %arrayidx45, align 1
  %34 = load double, ptr %b, align 8
  %cmp46 = fcmp ole double %34, 0.000000e+00
  br i1 %cmp46, label %cond.true48, label %cond.false49

cond.true48:                                      ; preds = %cond.end42
  br label %cond.end58

cond.false49:                                     ; preds = %cond.end42
  %35 = load double, ptr %b, align 8
  %cmp50 = fcmp oge double %35, 1.000000e+00
  br i1 %cmp50, label %cond.true52, label %cond.false53

cond.true52:                                      ; preds = %cond.false49
  br label %cond.end56

cond.false53:                                     ; preds = %cond.false49
  %36 = load double, ptr %b, align 8
  %37 = call double @llvm.sqrt.f64(double %36)
  %mul54 = fmul double 2.560000e+02, %37
  %conv55 = fptosi double %mul54 to i32
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false53, %cond.true52
  %cond57 = phi i32 [ 255, %cond.true52 ], [ %conv55, %cond.false53 ]
  br label %cond.end58

cond.end58:                                       ; preds = %cond.end56, %cond.true48
  %cond59 = phi i32 [ 0, %cond.true48 ], [ %cond57, %cond.end56 ]
  %conv60 = trunc i32 %cond59 to i8
  %38 = load ptr, ptr %rgb.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, ptr %38, i64 2
  store i8 %conv60, ptr %arrayidx61, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nounwind ssp uwtable
define internal void @pix32toXYZ(i32 noundef %p, ptr noundef %XYZ) #0 {
entry:
  %p.addr = alloca i32, align 4
  %XYZ.addr = alloca ptr, align 8
  %L = alloca double, align 8
  %u = alloca double, align 8
  %v = alloca double, align 8
  %s = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  store i32 %p, ptr %p.addr, align 4
  store ptr %XYZ, ptr %XYZ.addr, align 8
  %0 = load i32, ptr %p.addr, align 4
  %shr = ashr i32 %0, 16
  %call = call double @pix16toY(i32 noundef %shr)
  store double %call, ptr %L, align 8
  %1 = load double, ptr %L, align 8
  %cmp = fcmp oeq double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %arrayidx, align 4
  %3 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx1 = getelementptr inbounds float, ptr %3, i64 1
  store float 0.000000e+00, ptr %arrayidx1, align 4
  %4 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx2 = getelementptr inbounds float, ptr %4, i64 0
  store float 0.000000e+00, ptr %arrayidx2, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %p.addr, align 4
  %shr3 = lshr i32 %5, 8
  %and = and i32 %shr3, 255
  %conv = uitofp i32 %and to double
  %add = fadd double %conv, 5.000000e-01
  %mul = fmul double 0x3F63FB013FB013FB, %add
  store double %mul, ptr %u, align 8
  %6 = load i32, ptr %p.addr, align 4
  %and4 = and i32 %6, 255
  %conv5 = uitofp i32 %and4 to double
  %add6 = fadd double %conv5, 5.000000e-01
  %mul7 = fmul double 0x3F63FB013FB013FB, %add6
  store double %mul7, ptr %v, align 8
  %7 = load double, ptr %u, align 8
  %8 = load double, ptr %v, align 8
  %mul9 = fmul double 1.600000e+01, %8
  %neg = fneg double %mul9
  %9 = call double @llvm.fmuladd.f64(double 6.000000e+00, double %7, double %neg)
  %add10 = fadd double %9, 1.200000e+01
  %div = fdiv double 1.000000e+00, %add10
  store double %div, ptr %s, align 8
  %10 = load double, ptr %u, align 8
  %mul11 = fmul double 9.000000e+00, %10
  %11 = load double, ptr %s, align 8
  %mul12 = fmul double %mul11, %11
  store double %mul12, ptr %x, align 8
  %12 = load double, ptr %v, align 8
  %mul13 = fmul double 4.000000e+00, %12
  %13 = load double, ptr %s, align 8
  %mul14 = fmul double %mul13, %13
  store double %mul14, ptr %y, align 8
  %14 = load double, ptr %x, align 8
  %15 = load double, ptr %y, align 8
  %div15 = fdiv double %14, %15
  %16 = load double, ptr %L, align 8
  %mul16 = fmul double %div15, %16
  %conv17 = fptrunc double %mul16 to float
  %17 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx18 = getelementptr inbounds float, ptr %17, i64 0
  store float %conv17, ptr %arrayidx18, align 4
  %18 = load double, ptr %L, align 8
  %conv19 = fptrunc double %18 to float
  %19 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx20 = getelementptr inbounds float, ptr %19, i64 1
  store float %conv19, ptr %arrayidx20, align 4
  %20 = load double, ptr %x, align 8
  %sub = fsub double 1.000000e+00, %20
  %21 = load double, ptr %y, align 8
  %sub21 = fsub double %sub, %21
  %22 = load double, ptr %y, align 8
  %div22 = fdiv double %sub21, %22
  %23 = load double, ptr %L, align 8
  %mul23 = fmul double %div22, %23
  %conv24 = fptrunc double %mul23 to float
  %24 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx25 = getelementptr inbounds float, ptr %24, i64 2
  store float %conv24, ptr %arrayidx25, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal double @pix16toY(i32 noundef %p16) #0 {
entry:
  %retval = alloca double, align 8
  %p16.addr = alloca i32, align 4
  %Le = alloca i32, align 4
  %Y = alloca double, align 8
  store i32 %p16, ptr %p16.addr, align 4
  %0 = load i32, ptr %p16.addr, align 4
  %and = and i32 %0, 32767
  store i32 %and, ptr %Le, align 4
  %1 = load i32, ptr %Le, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store double 0.000000e+00, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %Le, align 4
  %conv = sitofp i32 %2 to double
  %add = fadd double %conv, 5.000000e-01
  %3 = call double @llvm.fmuladd.f64(double 0x3F662E42FEFA39EF, double %add, double 0xC0462E42FEFA39EF)
  %4 = call double @llvm.exp.f64(double %3)
  store double %4, ptr %Y, align 8
  %5 = load i32, ptr %p16.addr, align 4
  %and1 = and i32 %5, 32768
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %6 = load double, ptr %Y, align 8
  %fneg = fneg double %6
  store double %fneg, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %7 = load double, ptr %Y, align 8
  store double %7, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %8 = load double, ptr %retval, align 8
  ret double %8
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogL16GuessDataFmt(ptr noundef %td) #0 {
entry:
  %retval = alloca i32, align 4
  %td.addr = alloca ptr, align 8
  store ptr %td, ptr %td.addr, align 8
  %0 = load ptr, ptr %td.addr, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %0, i32 0, i32 8
  %1 = load i16, ptr %td_bitspersample, align 4
  %conv = zext i16 %1 to i32
  %shl = shl i32 %conv, 6
  %2 = load ptr, ptr %td.addr, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %2, i32 0, i32 15
  %3 = load i16, ptr %td_samplesperpixel, align 2
  %conv1 = zext i16 %3 to i32
  %shl2 = shl i32 %conv1, 3
  %or = or i32 %shl, %shl2
  %4 = load ptr, ptr %td.addr, align 8
  %td_sampleformat = getelementptr inbounds %struct.TIFFDirectory, ptr %4, i32 0, i32 9
  %5 = load i16, ptr %td_sampleformat, align 2
  %conv3 = zext i16 %5 to i32
  %or4 = or i32 %or, %conv3
  switch i32 %or4, label %sw.epilog [
    i32 2059, label %sw.bb
    i32 1036, label %sw.bb5
    i32 1034, label %sw.bb5
    i32 1033, label %sw.bb5
    i32 524, label %sw.bb6
    i32 521, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %entry, %entry, %entry
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %entry, %entry
  store i32 3, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb6, %sw.bb5, %sw.bb
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

declare i32 @TIFFScanlineSize(ptr noundef) #2

declare i32 @TIFFTileRowSize(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvEncode24(ptr noundef %tif, ptr noundef %bp, i32 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  %sp = alloca ptr, align 8
  %i = alloca i32, align 4
  %npixels = alloca i32, align 4
  %occ = alloca i32, align 4
  %op = alloca ptr, align 8
  %tp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load i16, ptr %s.addr, align 2
  %conv = zext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv2 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.LogLuvEncode24, ptr noundef @.str, i32 noundef 445, ptr noundef @.str.10) #5
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  %4 = load ptr, ptr %sp, align 8
  %cmp3 = icmp ne ptr %4, null
  %lnot5 = xor i1 %cmp3, true
  %lnot.ext6 = zext i1 %lnot5 to i32
  %conv7 = sext i32 %lnot.ext6 to i64
  %tobool8 = icmp ne i64 %conv7, 0
  br i1 %tobool8, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.LogLuvEncode24, ptr noundef @.str, i32 noundef 446, ptr noundef @.str.5) #5
  unreachable

5:                                                ; No predecessors!
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %5
  %6 = load i32, ptr %cc.addr, align 4
  %7 = load ptr, ptr %sp, align 8
  %pixel_size = getelementptr inbounds %struct.logLuvState, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %pixel_size, align 4
  %div = sdiv i32 %6, %8
  store i32 %div, ptr %npixels, align 4
  %9 = load ptr, ptr %sp, align 8
  %user_datafmt = getelementptr inbounds %struct.logLuvState, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %user_datafmt, align 8
  %cmp12 = icmp eq i32 %10, 2
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end11
  %11 = load ptr, ptr %bp.addr, align 8
  store ptr %11, ptr %tp, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end11
  %12 = load ptr, ptr %sp, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %tbuf, align 8
  store ptr %13, ptr %tp, align 8
  %14 = load ptr, ptr %sp, align 8
  %tbuflen = getelementptr inbounds %struct.logLuvState, ptr %14, i32 0, i32 3
  %15 = load i16, ptr %tbuflen, align 8
  %conv14 = sext i16 %15 to i32
  %16 = load i32, ptr %npixels, align 4
  %cmp15 = icmp sge i32 %conv14, %16
  %lnot17 = xor i1 %cmp15, true
  %lnot.ext18 = zext i1 %lnot17 to i32
  %conv19 = sext i32 %lnot.ext18 to i64
  %tobool20 = icmp ne i64 %conv19, 0
  br i1 %tobool20, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %if.else
  call void @__assert_rtn(ptr noundef @__func__.LogLuvEncode24, ptr noundef @.str, i32 noundef 453, ptr noundef @.str.11) #5
  unreachable

17:                                               ; No predecessors!
  br label %cond.end23

cond.false22:                                     ; preds = %if.else
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %17
  %18 = load ptr, ptr %sp, align 8
  %tfunc = getelementptr inbounds %struct.logLuvState, ptr %18, i32 0, i32 4
  %19 = load ptr, ptr %tfunc, align 8
  %20 = load ptr, ptr %sp, align 8
  %21 = load ptr, ptr %bp.addr, align 8
  %22 = load i32, ptr %npixels, align 4
  call void %19(ptr noundef %20, ptr noundef %21, i32 noundef %22)
  br label %if.end

if.end:                                           ; preds = %cond.end23, %if.then
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %23, i32 0, i32 42
  %24 = load ptr, ptr %tif_rawcp, align 8
  store ptr %24, ptr %op, align 8
  %25 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %25, i32 0, i32 41
  %26 = load i32, ptr %tif_rawdatasize, align 8
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %27, i32 0, i32 43
  %28 = load i32, ptr %tif_rawcc, align 8
  %sub = sub nsw i32 %26, %28
  store i32 %sub, ptr %occ, align 4
  %29 = load i32, ptr %npixels, align 4
  store i32 %29, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end39, %if.end
  %30 = load i32, ptr %i, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, ptr %i, align 4
  %tobool24 = icmp ne i32 %30, 0
  br i1 %tobool24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, ptr %occ, align 4
  %cmp25 = icmp slt i32 %31, 3
  br i1 %cmp25, label %if.then27, label %if.end39

if.then27:                                        ; preds = %for.body
  %32 = load ptr, ptr %op, align 8
  %33 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp28 = getelementptr inbounds %struct.tiff, ptr %33, i32 0, i32 42
  store ptr %32, ptr %tif_rawcp28, align 8
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize29 = getelementptr inbounds %struct.tiff, ptr %34, i32 0, i32 41
  %35 = load i32, ptr %tif_rawdatasize29, align 8
  %36 = load i32, ptr %occ, align 4
  %sub30 = sub nsw i32 %35, %36
  %37 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc31 = getelementptr inbounds %struct.tiff, ptr %37, i32 0, i32 43
  store i32 %sub30, ptr %tif_rawcc31, align 8
  %38 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %38)
  %tobool32 = icmp ne i32 %call, 0
  br i1 %tobool32, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.then27
  store i32 -1, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.then27
  %39 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp35 = getelementptr inbounds %struct.tiff, ptr %39, i32 0, i32 42
  %40 = load ptr, ptr %tif_rawcp35, align 8
  store ptr %40, ptr %op, align 8
  %41 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize36 = getelementptr inbounds %struct.tiff, ptr %41, i32 0, i32 41
  %42 = load i32, ptr %tif_rawdatasize36, align 8
  %43 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc37 = getelementptr inbounds %struct.tiff, ptr %43, i32 0, i32 43
  %44 = load i32, ptr %tif_rawcc37, align 8
  %sub38 = sub nsw i32 %42, %44
  store i32 %sub38, ptr %occ, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end34, %for.body
  %45 = load ptr, ptr %tp, align 8
  %46 = load i32, ptr %45, align 4
  %shr = lshr i32 %46, 16
  %conv40 = trunc i32 %shr to i8
  %47 = load ptr, ptr %op, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %47, i32 1
  store ptr %incdec.ptr, ptr %op, align 8
  store i8 %conv40, ptr %47, align 1
  %48 = load ptr, ptr %tp, align 8
  %49 = load i32, ptr %48, align 4
  %shr41 = lshr i32 %49, 8
  %and = and i32 %shr41, 255
  %conv42 = trunc i32 %and to i8
  %50 = load ptr, ptr %op, align 8
  %incdec.ptr43 = getelementptr inbounds i8, ptr %50, i32 1
  store ptr %incdec.ptr43, ptr %op, align 8
  store i8 %conv42, ptr %50, align 1
  %51 = load ptr, ptr %tp, align 8
  %incdec.ptr44 = getelementptr inbounds i32, ptr %51, i32 1
  store ptr %incdec.ptr44, ptr %tp, align 8
  %52 = load i32, ptr %51, align 4
  %and45 = and i32 %52, 255
  %conv46 = trunc i32 %and45 to i8
  %53 = load ptr, ptr %op, align 8
  %incdec.ptr47 = getelementptr inbounds i8, ptr %53, i32 1
  store ptr %incdec.ptr47, ptr %op, align 8
  store i8 %conv46, ptr %53, align 1
  %54 = load i32, ptr %occ, align 4
  %sub48 = sub nsw i32 %54, 3
  store i32 %sub48, ptr %occ, align 4
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  %55 = load ptr, ptr %op, align 8
  %56 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp49 = getelementptr inbounds %struct.tiff, ptr %56, i32 0, i32 42
  store ptr %55, ptr %tif_rawcp49, align 8
  %57 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize50 = getelementptr inbounds %struct.tiff, ptr %57, i32 0, i32 41
  %58 = load i32, ptr %tif_rawdatasize50, align 8
  %59 = load i32, ptr %occ, align 4
  %sub51 = sub nsw i32 %58, %59
  %60 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc52 = getelementptr inbounds %struct.tiff, ptr %60, i32 0, i32 43
  store i32 %sub51, ptr %tif_rawcc52, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then33
  %61 = load i32, ptr %retval, align 4
  ret i32 %61
}

; Function Attrs: nounwind ssp uwtable
define internal void @Luv24fromXYZ(ptr noundef %sp, ptr noundef %op, i32 noundef %n) #0 {
entry:
  %sp.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %luv = alloca ptr, align 8
  %xyz = alloca ptr, align 8
  store ptr %sp, ptr %sp.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr %sp.addr, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %tbuf, align 8
  store ptr %1, ptr %luv, align 8
  %2 = load ptr, ptr %op.addr, align 8
  store ptr %2, ptr %xyz, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %xyz, align 8
  %call = call i32 @pix24fromXYZ(ptr noundef %4)
  %5 = load ptr, ptr %luv, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %luv, align 8
  store i32 %call, ptr %5, align 4
  %6 = load ptr, ptr %xyz, align 8
  %add.ptr = getelementptr inbounds float, ptr %6, i64 3
  store ptr %add.ptr, ptr %xyz, align 8
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @Luv24fromLuv48(ptr noundef %sp, ptr noundef %op, i32 noundef %n) #0 {
entry:
  %sp.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %luv = alloca ptr, align 8
  %luv3 = alloca ptr, align 8
  %Le = alloca i32, align 4
  %Ce = alloca i32, align 4
  store ptr %sp, ptr %sp.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr %sp.addr, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %tbuf, align 8
  store ptr %1, ptr %luv, align 8
  %2 = load ptr, ptr %op.addr, align 8
  store ptr %2, ptr %luv3, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end22, %entry
  %3 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %luv3, align 8
  %arrayidx = getelementptr inbounds i16, ptr %4, i64 0
  %5 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %5 to i32
  %cmp1 = icmp sle i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 0, ptr %Le, align 4
  br label %if.end11

if.else:                                          ; preds = %while.body
  %6 = load ptr, ptr %luv3, align 8
  %arrayidx3 = getelementptr inbounds i16, ptr %6, i64 0
  %7 = load i16, ptr %arrayidx3, align 2
  %conv4 = sext i16 %7 to i32
  %cmp5 = icmp sge i32 %conv4, 7410
  br i1 %cmp5, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  store i32 1023, ptr %Le, align 4
  br label %if.end

if.else8:                                         ; preds = %if.else
  %8 = load ptr, ptr %luv3, align 8
  %arrayidx9 = getelementptr inbounds i16, ptr %8, i64 0
  %9 = load i16, ptr %arrayidx9, align 2
  %conv10 = sext i16 %9 to i32
  %sub = sub nsw i32 %conv10, 3314
  %shr = ashr i32 %sub, 2
  store i32 %shr, ptr %Le, align 4
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then7
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then
  %10 = load ptr, ptr %luv, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %10, i64 1
  %11 = load i32, ptr %arrayidx12, align 4
  %conv13 = uitofp i32 %11 to double
  %add = fadd double %conv13, 5.000000e-01
  %div = fdiv double %add, 3.276800e+04
  %12 = load ptr, ptr %luv, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %12, i64 2
  %13 = load i32, ptr %arrayidx14, align 4
  %conv15 = uitofp i32 %13 to double
  %add16 = fadd double %conv15, 5.000000e-01
  %div17 = fdiv double %add16, 3.276800e+04
  %call = call i32 @uv_encode(double noundef %div, double noundef %div17)
  store i32 %call, ptr %Ce, align 4
  %14 = load i32, ptr %Ce, align 4
  %cmp18 = icmp slt i32 %14, 0
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end11
  %call21 = call i32 @uv_encode(double noundef 0x3FCAF286BD156C1A, double noundef 0x3FDE50D794B8199E)
  store i32 %call21, ptr %Ce, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end11
  %15 = load i32, ptr %Le, align 4
  %shl = shl i32 %15, 14
  %16 = load i32, ptr %Ce, align 4
  %or = or i32 %shl, %16
  %17 = load ptr, ptr %luv, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %17, i32 1
  store ptr %incdec.ptr, ptr %luv, align 8
  store i32 %or, ptr %17, align 4
  %18 = load ptr, ptr %luv3, align 8
  %add.ptr = getelementptr inbounds i16, ptr %18, i64 3
  store ptr %add.ptr, ptr %luv3, align 8
  br label %while.cond, !llvm.loop !31

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvEncode32(ptr noundef %tif, ptr noundef %bp, i32 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  %sp = alloca ptr, align 8
  %shft = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %npixels = alloca i32, align 4
  %op = alloca ptr, align 8
  %tp = alloca ptr, align 8
  %b = alloca i32, align 4
  %occ = alloca i32, align 4
  %rc = alloca i32, align 4
  %mask = alloca i32, align 4
  %beg = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  store i32 0, ptr %rc, align 4
  %2 = load i16, ptr %s.addr, align 2
  %conv = zext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv2 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.LogLuvEncode32, ptr noundef @.str, i32 noundef 492, ptr noundef @.str.10) #5
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  %4 = load ptr, ptr %sp, align 8
  %cmp3 = icmp ne ptr %4, null
  %lnot5 = xor i1 %cmp3, true
  %lnot.ext6 = zext i1 %lnot5 to i32
  %conv7 = sext i32 %lnot.ext6 to i64
  %tobool8 = icmp ne i64 %conv7, 0
  br i1 %tobool8, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.LogLuvEncode32, ptr noundef @.str, i32 noundef 493, ptr noundef @.str.5) #5
  unreachable

5:                                                ; No predecessors!
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %5
  %6 = load i32, ptr %cc.addr, align 4
  %7 = load ptr, ptr %sp, align 8
  %pixel_size = getelementptr inbounds %struct.logLuvState, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %pixel_size, align 4
  %div = sdiv i32 %6, %8
  store i32 %div, ptr %npixels, align 4
  %9 = load ptr, ptr %sp, align 8
  %user_datafmt = getelementptr inbounds %struct.logLuvState, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %user_datafmt, align 8
  %cmp12 = icmp eq i32 %10, 2
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end11
  %11 = load ptr, ptr %bp.addr, align 8
  store ptr %11, ptr %tp, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end11
  %12 = load ptr, ptr %sp, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %tbuf, align 8
  store ptr %13, ptr %tp, align 8
  %14 = load ptr, ptr %sp, align 8
  %tbuflen = getelementptr inbounds %struct.logLuvState, ptr %14, i32 0, i32 3
  %15 = load i16, ptr %tbuflen, align 8
  %conv14 = sext i16 %15 to i32
  %16 = load i32, ptr %npixels, align 4
  %cmp15 = icmp sge i32 %conv14, %16
  %lnot17 = xor i1 %cmp15, true
  %lnot.ext18 = zext i1 %lnot17 to i32
  %conv19 = sext i32 %lnot.ext18 to i64
  %tobool20 = icmp ne i64 %conv19, 0
  br i1 %tobool20, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %if.else
  call void @__assert_rtn(ptr noundef @__func__.LogLuvEncode32, ptr noundef @.str, i32 noundef 501, ptr noundef @.str.11) #5
  unreachable

17:                                               ; No predecessors!
  br label %cond.end23

cond.false22:                                     ; preds = %if.else
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %17
  %18 = load ptr, ptr %sp, align 8
  %tfunc = getelementptr inbounds %struct.logLuvState, ptr %18, i32 0, i32 4
  %19 = load ptr, ptr %tfunc, align 8
  %20 = load ptr, ptr %sp, align 8
  %21 = load ptr, ptr %bp.addr, align 8
  %22 = load i32, ptr %npixels, align 4
  call void %19(ptr noundef %20, ptr noundef %21, i32 noundef %22)
  br label %if.end

if.end:                                           ; preds = %cond.end23, %if.then
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %23, i32 0, i32 42
  %24 = load ptr, ptr %tif_rawcp, align 8
  store ptr %24, ptr %op, align 8
  %25 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %25, i32 0, i32 41
  %26 = load i32, ptr %tif_rawdatasize, align 8
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %27, i32 0, i32 43
  %28 = load i32, ptr %tif_rawcc, align 8
  %sub = sub nsw i32 %26, %28
  store i32 %sub, ptr %occ, align 4
  store i32 32, ptr %shft, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.end156, %if.end
  %29 = load i32, ptr %shft, align 4
  %sub24 = sub nsw i32 %29, 8
  store i32 %sub24, ptr %shft, align 4
  %cmp25 = icmp sge i32 %sub24, 0
  br i1 %cmp25, label %for.body, label %for.end157

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc154, %for.body
  %30 = load i32, ptr %i, align 4
  %31 = load i32, ptr %npixels, align 4
  %cmp28 = icmp slt i32 %30, %31
  br i1 %cmp28, label %for.body30, label %for.end156

for.body30:                                       ; preds = %for.cond27
  %32 = load i32, ptr %occ, align 4
  %cmp31 = icmp slt i32 %32, 4
  br i1 %cmp31, label %if.then33, label %if.end45

if.then33:                                        ; preds = %for.body30
  %33 = load ptr, ptr %op, align 8
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp34 = getelementptr inbounds %struct.tiff, ptr %34, i32 0, i32 42
  store ptr %33, ptr %tif_rawcp34, align 8
  %35 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize35 = getelementptr inbounds %struct.tiff, ptr %35, i32 0, i32 41
  %36 = load i32, ptr %tif_rawdatasize35, align 8
  %37 = load i32, ptr %occ, align 4
  %sub36 = sub nsw i32 %36, %37
  %38 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc37 = getelementptr inbounds %struct.tiff, ptr %38, i32 0, i32 43
  store i32 %sub36, ptr %tif_rawcc37, align 8
  %39 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %39)
  %tobool38 = icmp ne i32 %call, 0
  br i1 %tobool38, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.then33
  store i32 -1, ptr %retval, align 4
  br label %return

if.end40:                                         ; preds = %if.then33
  %40 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp41 = getelementptr inbounds %struct.tiff, ptr %40, i32 0, i32 42
  %41 = load ptr, ptr %tif_rawcp41, align 8
  store ptr %41, ptr %op, align 8
  %42 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize42 = getelementptr inbounds %struct.tiff, ptr %42, i32 0, i32 41
  %43 = load i32, ptr %tif_rawdatasize42, align 8
  %44 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc43 = getelementptr inbounds %struct.tiff, ptr %44, i32 0, i32 43
  %45 = load i32, ptr %tif_rawcc43, align 8
  %sub44 = sub nsw i32 %43, %45
  store i32 %sub44, ptr %occ, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end40, %for.body30
  %46 = load i32, ptr %shft, align 4
  %shl = shl i32 255, %46
  store i32 %shl, ptr %mask, align 4
  %47 = load i32, ptr %i, align 4
  store i32 %47, ptr %beg, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc, %if.end45
  %48 = load i32, ptr %beg, align 4
  %49 = load i32, ptr %npixels, align 4
  %cmp47 = icmp slt i32 %48, %49
  br i1 %cmp47, label %for.body49, label %for.end

for.body49:                                       ; preds = %for.cond46
  %50 = load ptr, ptr %tp, align 8
  %51 = load i32, ptr %beg, align 4
  %idxprom = sext i32 %51 to i64
  %arrayidx = getelementptr inbounds i32, ptr %50, i64 %idxprom
  %52 = load i32, ptr %arrayidx, align 4
  %53 = load i32, ptr %mask, align 4
  %and = and i32 %52, %53
  store i32 %and, ptr %b, align 4
  store i32 1, ptr %rc, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body49
  %54 = load i32, ptr %rc, align 4
  %cmp50 = icmp slt i32 %54, 129
  br i1 %cmp50, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %55 = load i32, ptr %beg, align 4
  %56 = load i32, ptr %rc, align 4
  %add = add nsw i32 %55, %56
  %57 = load i32, ptr %npixels, align 4
  %cmp52 = icmp slt i32 %add, %57
  br i1 %cmp52, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %58 = load ptr, ptr %tp, align 8
  %59 = load i32, ptr %beg, align 4
  %60 = load i32, ptr %rc, align 4
  %add54 = add nsw i32 %59, %60
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds i32, ptr %58, i64 %idxprom55
  %61 = load i32, ptr %arrayidx56, align 4
  %62 = load i32, ptr %mask, align 4
  %and57 = and i32 %61, %62
  %63 = load i32, ptr %b, align 4
  %cmp58 = icmp eq i32 %and57, %63
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %64 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp58, %land.rhs ]
  br i1 %64, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %65 = load i32, ptr %rc, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, ptr %rc, align 4
  br label %while.cond, !llvm.loop !32

while.end:                                        ; preds = %land.end
  %66 = load i32, ptr %rc, align 4
  %cmp60 = icmp sge i32 %66, 4
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %while.end
  br label %for.end

if.end63:                                         ; preds = %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end63
  %67 = load i32, ptr %rc, align 4
  %68 = load i32, ptr %beg, align 4
  %add64 = add nsw i32 %68, %67
  store i32 %add64, ptr %beg, align 4
  br label %for.cond46, !llvm.loop !33

for.end:                                          ; preds = %if.then62, %for.cond46
  %69 = load i32, ptr %beg, align 4
  %70 = load i32, ptr %i, align 4
  %sub65 = sub nsw i32 %69, %70
  %cmp66 = icmp sgt i32 %sub65, 1
  br i1 %cmp66, label %land.lhs.true68, label %if.end96

land.lhs.true68:                                  ; preds = %for.end
  %71 = load i32, ptr %beg, align 4
  %72 = load i32, ptr %i, align 4
  %sub69 = sub nsw i32 %71, %72
  %cmp70 = icmp slt i32 %sub69, 4
  br i1 %cmp70, label %if.then72, label %if.end96

if.then72:                                        ; preds = %land.lhs.true68
  %73 = load ptr, ptr %tp, align 8
  %74 = load i32, ptr %i, align 4
  %idxprom73 = sext i32 %74 to i64
  %arrayidx74 = getelementptr inbounds i32, ptr %73, i64 %idxprom73
  %75 = load i32, ptr %arrayidx74, align 4
  %76 = load i32, ptr %mask, align 4
  %and75 = and i32 %75, %76
  store i32 %and75, ptr %b, align 4
  %77 = load i32, ptr %i, align 4
  %add76 = add nsw i32 %77, 1
  store i32 %add76, ptr %j, align 4
  br label %while.cond77

while.cond77:                                     ; preds = %if.end94, %if.then72
  %78 = load ptr, ptr %tp, align 8
  %79 = load i32, ptr %j, align 4
  %inc78 = add nsw i32 %79, 1
  store i32 %inc78, ptr %j, align 4
  %idxprom79 = sext i32 %79 to i64
  %arrayidx80 = getelementptr inbounds i32, ptr %78, i64 %idxprom79
  %80 = load i32, ptr %arrayidx80, align 4
  %81 = load i32, ptr %mask, align 4
  %and81 = and i32 %80, %81
  %82 = load i32, ptr %b, align 4
  %cmp82 = icmp eq i32 %and81, %82
  br i1 %cmp82, label %while.body84, label %while.end95

while.body84:                                     ; preds = %while.cond77
  %83 = load i32, ptr %j, align 4
  %84 = load i32, ptr %beg, align 4
  %cmp85 = icmp eq i32 %83, %84
  br i1 %cmp85, label %if.then87, label %if.end94

if.then87:                                        ; preds = %while.body84
  %85 = load i32, ptr %j, align 4
  %add88 = add nsw i32 126, %85
  %86 = load i32, ptr %i, align 4
  %sub89 = sub nsw i32 %add88, %86
  %conv90 = trunc i32 %sub89 to i8
  %87 = load ptr, ptr %op, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %87, i32 1
  store ptr %incdec.ptr, ptr %op, align 8
  store i8 %conv90, ptr %87, align 1
  %88 = load i32, ptr %b, align 4
  %89 = load i32, ptr %shft, align 4
  %shr = lshr i32 %88, %89
  %conv91 = trunc i32 %shr to i8
  %90 = load ptr, ptr %op, align 8
  %incdec.ptr92 = getelementptr inbounds i8, ptr %90, i32 1
  store ptr %incdec.ptr92, ptr %op, align 8
  store i8 %conv91, ptr %90, align 1
  %91 = load i32, ptr %occ, align 4
  %sub93 = sub nsw i32 %91, 2
  store i32 %sub93, ptr %occ, align 4
  %92 = load i32, ptr %beg, align 4
  store i32 %92, ptr %i, align 4
  br label %while.end95

if.end94:                                         ; preds = %while.body84
  br label %while.cond77, !llvm.loop !34

while.end95:                                      ; preds = %if.then87, %while.cond77
  br label %if.end96

if.end96:                                         ; preds = %while.end95, %land.lhs.true68, %for.end
  br label %while.cond97

while.cond97:                                     ; preds = %while.end137, %if.end96
  %93 = load i32, ptr %i, align 4
  %94 = load i32, ptr %beg, align 4
  %cmp98 = icmp slt i32 %93, %94
  br i1 %cmp98, label %while.body100, label %while.end138

while.body100:                                    ; preds = %while.cond97
  %95 = load i32, ptr %beg, align 4
  %96 = load i32, ptr %i, align 4
  %sub101 = sub nsw i32 %95, %96
  store i32 %sub101, ptr %j, align 4
  %cmp102 = icmp sgt i32 %sub101, 127
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %while.body100
  store i32 127, ptr %j, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %while.body100
  %97 = load i32, ptr %occ, align 4
  %98 = load i32, ptr %j, align 4
  %add106 = add nsw i32 %98, 3
  %cmp107 = icmp slt i32 %97, %add106
  br i1 %cmp107, label %if.then109, label %if.end122

if.then109:                                       ; preds = %if.end105
  %99 = load ptr, ptr %op, align 8
  %100 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp110 = getelementptr inbounds %struct.tiff, ptr %100, i32 0, i32 42
  store ptr %99, ptr %tif_rawcp110, align 8
  %101 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize111 = getelementptr inbounds %struct.tiff, ptr %101, i32 0, i32 41
  %102 = load i32, ptr %tif_rawdatasize111, align 8
  %103 = load i32, ptr %occ, align 4
  %sub112 = sub nsw i32 %102, %103
  %104 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc113 = getelementptr inbounds %struct.tiff, ptr %104, i32 0, i32 43
  store i32 %sub112, ptr %tif_rawcc113, align 8
  %105 = load ptr, ptr %tif.addr, align 8
  %call114 = call i32 @TIFFFlushData1(ptr noundef %105)
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %if.end117, label %if.then116

if.then116:                                       ; preds = %if.then109
  store i32 -1, ptr %retval, align 4
  br label %return

if.end117:                                        ; preds = %if.then109
  %106 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp118 = getelementptr inbounds %struct.tiff, ptr %106, i32 0, i32 42
  %107 = load ptr, ptr %tif_rawcp118, align 8
  store ptr %107, ptr %op, align 8
  %108 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize119 = getelementptr inbounds %struct.tiff, ptr %108, i32 0, i32 41
  %109 = load i32, ptr %tif_rawdatasize119, align 8
  %110 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc120 = getelementptr inbounds %struct.tiff, ptr %110, i32 0, i32 43
  %111 = load i32, ptr %tif_rawcc120, align 8
  %sub121 = sub nsw i32 %109, %111
  store i32 %sub121, ptr %occ, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.end117, %if.end105
  %112 = load i32, ptr %j, align 4
  %conv123 = trunc i32 %112 to i8
  %113 = load ptr, ptr %op, align 8
  %incdec.ptr124 = getelementptr inbounds i8, ptr %113, i32 1
  store ptr %incdec.ptr124, ptr %op, align 8
  store i8 %conv123, ptr %113, align 1
  %114 = load i32, ptr %occ, align 4
  %dec = add nsw i32 %114, -1
  store i32 %dec, ptr %occ, align 4
  br label %while.cond125

while.cond125:                                    ; preds = %while.body128, %if.end122
  %115 = load i32, ptr %j, align 4
  %dec126 = add nsw i32 %115, -1
  store i32 %dec126, ptr %j, align 4
  %tobool127 = icmp ne i32 %115, 0
  br i1 %tobool127, label %while.body128, label %while.end137

while.body128:                                    ; preds = %while.cond125
  %116 = load ptr, ptr %tp, align 8
  %117 = load i32, ptr %i, align 4
  %inc129 = add nsw i32 %117, 1
  store i32 %inc129, ptr %i, align 4
  %idxprom130 = sext i32 %117 to i64
  %arrayidx131 = getelementptr inbounds i32, ptr %116, i64 %idxprom130
  %118 = load i32, ptr %arrayidx131, align 4
  %119 = load i32, ptr %shft, align 4
  %shr132 = lshr i32 %118, %119
  %and133 = and i32 %shr132, 255
  %conv134 = trunc i32 %and133 to i8
  %120 = load ptr, ptr %op, align 8
  %incdec.ptr135 = getelementptr inbounds i8, ptr %120, i32 1
  store ptr %incdec.ptr135, ptr %op, align 8
  store i8 %conv134, ptr %120, align 1
  %121 = load i32, ptr %occ, align 4
  %dec136 = add nsw i32 %121, -1
  store i32 %dec136, ptr %occ, align 4
  br label %while.cond125, !llvm.loop !35

while.end137:                                     ; preds = %while.cond125
  br label %while.cond97, !llvm.loop !36

while.end138:                                     ; preds = %while.cond97
  %122 = load i32, ptr %rc, align 4
  %cmp139 = icmp sge i32 %122, 4
  br i1 %cmp139, label %if.then141, label %if.else152

if.then141:                                       ; preds = %while.end138
  %123 = load i32, ptr %rc, align 4
  %add142 = add nsw i32 126, %123
  %conv143 = trunc i32 %add142 to i8
  %124 = load ptr, ptr %op, align 8
  %incdec.ptr144 = getelementptr inbounds i8, ptr %124, i32 1
  store ptr %incdec.ptr144, ptr %op, align 8
  store i8 %conv143, ptr %124, align 1
  %125 = load ptr, ptr %tp, align 8
  %126 = load i32, ptr %beg, align 4
  %idxprom145 = sext i32 %126 to i64
  %arrayidx146 = getelementptr inbounds i32, ptr %125, i64 %idxprom145
  %127 = load i32, ptr %arrayidx146, align 4
  %128 = load i32, ptr %shft, align 4
  %shr147 = lshr i32 %127, %128
  %and148 = and i32 %shr147, 255
  %conv149 = trunc i32 %and148 to i8
  %129 = load ptr, ptr %op, align 8
  %incdec.ptr150 = getelementptr inbounds i8, ptr %129, i32 1
  store ptr %incdec.ptr150, ptr %op, align 8
  store i8 %conv149, ptr %129, align 1
  %130 = load i32, ptr %occ, align 4
  %sub151 = sub nsw i32 %130, 2
  store i32 %sub151, ptr %occ, align 4
  br label %if.end153

if.else152:                                       ; preds = %while.end138
  store i32 0, ptr %rc, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.else152, %if.then141
  br label %for.inc154

for.inc154:                                       ; preds = %if.end153
  %131 = load i32, ptr %rc, align 4
  %132 = load i32, ptr %i, align 4
  %add155 = add nsw i32 %132, %131
  store i32 %add155, ptr %i, align 4
  br label %for.cond27, !llvm.loop !37

for.end156:                                       ; preds = %for.cond27
  br label %for.cond, !llvm.loop !38

for.end157:                                       ; preds = %for.cond
  %133 = load ptr, ptr %op, align 8
  %134 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp158 = getelementptr inbounds %struct.tiff, ptr %134, i32 0, i32 42
  store ptr %133, ptr %tif_rawcp158, align 8
  %135 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize159 = getelementptr inbounds %struct.tiff, ptr %135, i32 0, i32 41
  %136 = load i32, ptr %tif_rawdatasize159, align 8
  %137 = load i32, ptr %occ, align 4
  %sub160 = sub nsw i32 %136, %137
  %138 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc161 = getelementptr inbounds %struct.tiff, ptr %138, i32 0, i32 43
  store i32 %sub160, ptr %tif_rawcc161, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end157, %if.then116, %if.then39
  %139 = load i32, ptr %retval, align 4
  ret i32 %139
}

; Function Attrs: nounwind ssp uwtable
define internal void @Luv32fromXYZ(ptr noundef %sp, ptr noundef %op, i32 noundef %n) #0 {
entry:
  %sp.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %luv = alloca ptr, align 8
  %xyz = alloca ptr, align 8
  store ptr %sp, ptr %sp.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr %sp.addr, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %tbuf, align 8
  store ptr %1, ptr %luv, align 8
  %2 = load ptr, ptr %op.addr, align 8
  store ptr %2, ptr %xyz, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %xyz, align 8
  %call = call i32 @pix32fromXYZ(ptr noundef %4)
  %5 = load ptr, ptr %luv, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %luv, align 8
  store i32 %call, ptr %5, align 4
  %6 = load ptr, ptr %xyz, align 8
  %add.ptr = getelementptr inbounds float, ptr %6, i64 3
  store ptr %add.ptr, ptr %xyz, align 8
  br label %while.cond, !llvm.loop !39

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @Luv32fromLuv48(ptr noundef %sp, ptr noundef %op, i32 noundef %n) #0 {
entry:
  %sp.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %luv = alloca ptr, align 8
  %luv3 = alloca ptr, align 8
  store ptr %sp, ptr %sp.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr %sp.addr, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %tbuf, align 8
  store ptr %1, ptr %luv, align 8
  %2 = load ptr, ptr %op.addr, align 8
  store ptr %2, ptr %luv3, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %luv3, align 8
  %arrayidx = getelementptr inbounds i16, ptr %4, i64 0
  %5 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %5 to i32
  %shl = shl i32 %conv, 16
  %6 = load ptr, ptr %luv3, align 8
  %arrayidx1 = getelementptr inbounds i16, ptr %6, i64 1
  %7 = load i16, ptr %arrayidx1, align 2
  %conv2 = sext i16 %7 to i32
  %mul = mul i32 %conv2, 410
  %shr = lshr i32 %mul, 7
  %and = and i32 %shr, 65280
  %or = or i32 %shl, %and
  %8 = load ptr, ptr %luv3, align 8
  %arrayidx3 = getelementptr inbounds i16, ptr %8, i64 2
  %9 = load i16, ptr %arrayidx3, align 2
  %conv4 = sext i16 %9 to i32
  %mul5 = mul i32 %conv4, 410
  %shr6 = lshr i32 %mul5, 15
  %and7 = and i32 %shr6, 255
  %or8 = or i32 %or, %and7
  %10 = load ptr, ptr %luv, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %10, i32 1
  store ptr %incdec.ptr, ptr %luv, align 8
  store i32 %or8, ptr %10, align 4
  %11 = load ptr, ptr %luv3, align 8
  %add.ptr = getelementptr inbounds i16, ptr %11, i64 3
  store ptr %add.ptr, ptr %luv3, align 8
  br label %while.cond, !llvm.loop !40

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogL16Encode(ptr noundef %tif, ptr noundef %bp, i32 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  %sp = alloca ptr, align 8
  %shft = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %npixels = alloca i32, align 4
  %op = alloca ptr, align 8
  %tp = alloca ptr, align 8
  %b = alloca i16, align 2
  %occ = alloca i32, align 4
  %rc = alloca i32, align 4
  %mask = alloca i32, align 4
  %beg = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  store i32 0, ptr %rc, align 4
  %2 = load i16, ptr %s.addr, align 2
  %conv = zext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv2 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.LogL16Encode, ptr noundef @.str, i32 noundef 359, ptr noundef @.str.10) #5
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  %4 = load ptr, ptr %sp, align 8
  %cmp3 = icmp ne ptr %4, null
  %lnot5 = xor i1 %cmp3, true
  %lnot.ext6 = zext i1 %lnot5 to i32
  %conv7 = sext i32 %lnot.ext6 to i64
  %tobool8 = icmp ne i64 %conv7, 0
  br i1 %tobool8, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.LogL16Encode, ptr noundef @.str, i32 noundef 360, ptr noundef @.str.5) #5
  unreachable

5:                                                ; No predecessors!
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %5
  %6 = load i32, ptr %cc.addr, align 4
  %7 = load ptr, ptr %sp, align 8
  %pixel_size = getelementptr inbounds %struct.logLuvState, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %pixel_size, align 4
  %div = sdiv i32 %6, %8
  store i32 %div, ptr %npixels, align 4
  %9 = load ptr, ptr %sp, align 8
  %user_datafmt = getelementptr inbounds %struct.logLuvState, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %user_datafmt, align 8
  %cmp12 = icmp eq i32 %10, 1
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end11
  %11 = load ptr, ptr %bp.addr, align 8
  store ptr %11, ptr %tp, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end11
  %12 = load ptr, ptr %sp, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %tbuf, align 8
  store ptr %13, ptr %tp, align 8
  %14 = load ptr, ptr %sp, align 8
  %tbuflen = getelementptr inbounds %struct.logLuvState, ptr %14, i32 0, i32 3
  %15 = load i16, ptr %tbuflen, align 8
  %conv14 = sext i16 %15 to i32
  %16 = load i32, ptr %npixels, align 4
  %cmp15 = icmp sge i32 %conv14, %16
  %lnot17 = xor i1 %cmp15, true
  %lnot.ext18 = zext i1 %lnot17 to i32
  %conv19 = sext i32 %lnot.ext18 to i64
  %tobool20 = icmp ne i64 %conv19, 0
  br i1 %tobool20, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %if.else
  call void @__assert_rtn(ptr noundef @__func__.LogL16Encode, ptr noundef @.str, i32 noundef 367, ptr noundef @.str.11) #5
  unreachable

17:                                               ; No predecessors!
  br label %cond.end23

cond.false22:                                     ; preds = %if.else
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %17
  %18 = load ptr, ptr %sp, align 8
  %tfunc = getelementptr inbounds %struct.logLuvState, ptr %18, i32 0, i32 4
  %19 = load ptr, ptr %tfunc, align 8
  %20 = load ptr, ptr %sp, align 8
  %21 = load ptr, ptr %bp.addr, align 8
  %22 = load i32, ptr %npixels, align 4
  call void %19(ptr noundef %20, ptr noundef %21, i32 noundef %22)
  br label %if.end

if.end:                                           ; preds = %cond.end23, %if.then
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %23, i32 0, i32 42
  %24 = load ptr, ptr %tif_rawcp, align 8
  store ptr %24, ptr %op, align 8
  %25 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %25, i32 0, i32 41
  %26 = load i32, ptr %tif_rawdatasize, align 8
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %27, i32 0, i32 43
  %28 = load i32, ptr %tif_rawcc, align 8
  %sub = sub nsw i32 %26, %28
  store i32 %sub, ptr %occ, align 4
  store i32 16, ptr %shft, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.end167, %if.end
  %29 = load i32, ptr %shft, align 4
  %sub24 = sub nsw i32 %29, 8
  store i32 %sub24, ptr %shft, align 4
  %cmp25 = icmp sge i32 %sub24, 0
  br i1 %cmp25, label %for.body, label %for.end168

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc165, %for.body
  %30 = load i32, ptr %i, align 4
  %31 = load i32, ptr %npixels, align 4
  %cmp28 = icmp slt i32 %30, %31
  br i1 %cmp28, label %for.body30, label %for.end167

for.body30:                                       ; preds = %for.cond27
  %32 = load i32, ptr %occ, align 4
  %cmp31 = icmp slt i32 %32, 4
  br i1 %cmp31, label %if.then33, label %if.end45

if.then33:                                        ; preds = %for.body30
  %33 = load ptr, ptr %op, align 8
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp34 = getelementptr inbounds %struct.tiff, ptr %34, i32 0, i32 42
  store ptr %33, ptr %tif_rawcp34, align 8
  %35 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize35 = getelementptr inbounds %struct.tiff, ptr %35, i32 0, i32 41
  %36 = load i32, ptr %tif_rawdatasize35, align 8
  %37 = load i32, ptr %occ, align 4
  %sub36 = sub nsw i32 %36, %37
  %38 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc37 = getelementptr inbounds %struct.tiff, ptr %38, i32 0, i32 43
  store i32 %sub36, ptr %tif_rawcc37, align 8
  %39 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %39)
  %tobool38 = icmp ne i32 %call, 0
  br i1 %tobool38, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.then33
  store i32 -1, ptr %retval, align 4
  br label %return

if.end40:                                         ; preds = %if.then33
  %40 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp41 = getelementptr inbounds %struct.tiff, ptr %40, i32 0, i32 42
  %41 = load ptr, ptr %tif_rawcp41, align 8
  store ptr %41, ptr %op, align 8
  %42 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize42 = getelementptr inbounds %struct.tiff, ptr %42, i32 0, i32 41
  %43 = load i32, ptr %tif_rawdatasize42, align 8
  %44 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc43 = getelementptr inbounds %struct.tiff, ptr %44, i32 0, i32 43
  %45 = load i32, ptr %tif_rawcc43, align 8
  %sub44 = sub nsw i32 %43, %45
  store i32 %sub44, ptr %occ, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end40, %for.body30
  %46 = load i32, ptr %shft, align 4
  %shl = shl i32 255, %46
  store i32 %shl, ptr %mask, align 4
  %47 = load i32, ptr %i, align 4
  store i32 %47, ptr %beg, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc, %if.end45
  %48 = load i32, ptr %beg, align 4
  %49 = load i32, ptr %npixels, align 4
  %cmp47 = icmp slt i32 %48, %49
  br i1 %cmp47, label %for.body49, label %for.end

for.body49:                                       ; preds = %for.cond46
  %50 = load ptr, ptr %tp, align 8
  %51 = load i32, ptr %beg, align 4
  %idxprom = sext i32 %51 to i64
  %arrayidx = getelementptr inbounds i16, ptr %50, i64 %idxprom
  %52 = load i16, ptr %arrayidx, align 2
  %conv50 = sext i16 %52 to i32
  %53 = load i32, ptr %mask, align 4
  %and = and i32 %conv50, %53
  %conv51 = trunc i32 %and to i16
  store i16 %conv51, ptr %b, align 2
  store i32 1, ptr %rc, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body49
  %54 = load i32, ptr %rc, align 4
  %cmp52 = icmp slt i32 %54, 129
  br i1 %cmp52, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %55 = load i32, ptr %beg, align 4
  %56 = load i32, ptr %rc, align 4
  %add = add nsw i32 %55, %56
  %57 = load i32, ptr %npixels, align 4
  %cmp54 = icmp slt i32 %add, %57
  br i1 %cmp54, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %58 = load ptr, ptr %tp, align 8
  %59 = load i32, ptr %beg, align 4
  %60 = load i32, ptr %rc, align 4
  %add56 = add nsw i32 %59, %60
  %idxprom57 = sext i32 %add56 to i64
  %arrayidx58 = getelementptr inbounds i16, ptr %58, i64 %idxprom57
  %61 = load i16, ptr %arrayidx58, align 2
  %conv59 = sext i16 %61 to i32
  %62 = load i32, ptr %mask, align 4
  %and60 = and i32 %conv59, %62
  %63 = load i16, ptr %b, align 2
  %conv61 = sext i16 %63 to i32
  %cmp62 = icmp eq i32 %and60, %conv61
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %64 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp62, %land.rhs ]
  br i1 %64, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %65 = load i32, ptr %rc, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, ptr %rc, align 4
  br label %while.cond, !llvm.loop !41

while.end:                                        ; preds = %land.end
  %66 = load i32, ptr %rc, align 4
  %cmp64 = icmp sge i32 %66, 4
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %while.end
  br label %for.end

if.end67:                                         ; preds = %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end67
  %67 = load i32, ptr %rc, align 4
  %68 = load i32, ptr %beg, align 4
  %add68 = add nsw i32 %68, %67
  store i32 %add68, ptr %beg, align 4
  br label %for.cond46, !llvm.loop !42

for.end:                                          ; preds = %if.then66, %for.cond46
  %69 = load i32, ptr %beg, align 4
  %70 = load i32, ptr %i, align 4
  %sub69 = sub nsw i32 %69, %70
  %cmp70 = icmp sgt i32 %sub69, 1
  br i1 %cmp70, label %land.lhs.true72, label %if.end105

land.lhs.true72:                                  ; preds = %for.end
  %71 = load i32, ptr %beg, align 4
  %72 = load i32, ptr %i, align 4
  %sub73 = sub nsw i32 %71, %72
  %cmp74 = icmp slt i32 %sub73, 4
  br i1 %cmp74, label %if.then76, label %if.end105

if.then76:                                        ; preds = %land.lhs.true72
  %73 = load ptr, ptr %tp, align 8
  %74 = load i32, ptr %i, align 4
  %idxprom77 = sext i32 %74 to i64
  %arrayidx78 = getelementptr inbounds i16, ptr %73, i64 %idxprom77
  %75 = load i16, ptr %arrayidx78, align 2
  %conv79 = sext i16 %75 to i32
  %76 = load i32, ptr %mask, align 4
  %and80 = and i32 %conv79, %76
  %conv81 = trunc i32 %and80 to i16
  store i16 %conv81, ptr %b, align 2
  %77 = load i32, ptr %i, align 4
  %add82 = add nsw i32 %77, 1
  store i32 %add82, ptr %j, align 4
  br label %while.cond83

while.cond83:                                     ; preds = %if.end103, %if.then76
  %78 = load ptr, ptr %tp, align 8
  %79 = load i32, ptr %j, align 4
  %inc84 = add nsw i32 %79, 1
  store i32 %inc84, ptr %j, align 4
  %idxprom85 = sext i32 %79 to i64
  %arrayidx86 = getelementptr inbounds i16, ptr %78, i64 %idxprom85
  %80 = load i16, ptr %arrayidx86, align 2
  %conv87 = sext i16 %80 to i32
  %81 = load i32, ptr %mask, align 4
  %and88 = and i32 %conv87, %81
  %82 = load i16, ptr %b, align 2
  %conv89 = sext i16 %82 to i32
  %cmp90 = icmp eq i32 %and88, %conv89
  br i1 %cmp90, label %while.body92, label %while.end104

while.body92:                                     ; preds = %while.cond83
  %83 = load i32, ptr %j, align 4
  %84 = load i32, ptr %beg, align 4
  %cmp93 = icmp eq i32 %83, %84
  br i1 %cmp93, label %if.then95, label %if.end103

if.then95:                                        ; preds = %while.body92
  %85 = load i32, ptr %j, align 4
  %add96 = add nsw i32 126, %85
  %86 = load i32, ptr %i, align 4
  %sub97 = sub nsw i32 %add96, %86
  %conv98 = trunc i32 %sub97 to i8
  %87 = load ptr, ptr %op, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %87, i32 1
  store ptr %incdec.ptr, ptr %op, align 8
  store i8 %conv98, ptr %87, align 1
  %88 = load i16, ptr %b, align 2
  %conv99 = sext i16 %88 to i32
  %89 = load i32, ptr %shft, align 4
  %shr = ashr i32 %conv99, %89
  %conv100 = trunc i32 %shr to i8
  %90 = load ptr, ptr %op, align 8
  %incdec.ptr101 = getelementptr inbounds i8, ptr %90, i32 1
  store ptr %incdec.ptr101, ptr %op, align 8
  store i8 %conv100, ptr %90, align 1
  %91 = load i32, ptr %occ, align 4
  %sub102 = sub nsw i32 %91, 2
  store i32 %sub102, ptr %occ, align 4
  %92 = load i32, ptr %beg, align 4
  store i32 %92, ptr %i, align 4
  br label %while.end104

if.end103:                                        ; preds = %while.body92
  br label %while.cond83, !llvm.loop !43

while.end104:                                     ; preds = %if.then95, %while.cond83
  br label %if.end105

if.end105:                                        ; preds = %while.end104, %land.lhs.true72, %for.end
  br label %while.cond106

while.cond106:                                    ; preds = %while.end147, %if.end105
  %93 = load i32, ptr %i, align 4
  %94 = load i32, ptr %beg, align 4
  %cmp107 = icmp slt i32 %93, %94
  br i1 %cmp107, label %while.body109, label %while.end148

while.body109:                                    ; preds = %while.cond106
  %95 = load i32, ptr %beg, align 4
  %96 = load i32, ptr %i, align 4
  %sub110 = sub nsw i32 %95, %96
  store i32 %sub110, ptr %j, align 4
  %cmp111 = icmp sgt i32 %sub110, 127
  br i1 %cmp111, label %if.then113, label %if.end114

if.then113:                                       ; preds = %while.body109
  store i32 127, ptr %j, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %while.body109
  %97 = load i32, ptr %occ, align 4
  %98 = load i32, ptr %j, align 4
  %add115 = add nsw i32 %98, 3
  %cmp116 = icmp slt i32 %97, %add115
  br i1 %cmp116, label %if.then118, label %if.end131

if.then118:                                       ; preds = %if.end114
  %99 = load ptr, ptr %op, align 8
  %100 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp119 = getelementptr inbounds %struct.tiff, ptr %100, i32 0, i32 42
  store ptr %99, ptr %tif_rawcp119, align 8
  %101 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize120 = getelementptr inbounds %struct.tiff, ptr %101, i32 0, i32 41
  %102 = load i32, ptr %tif_rawdatasize120, align 8
  %103 = load i32, ptr %occ, align 4
  %sub121 = sub nsw i32 %102, %103
  %104 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc122 = getelementptr inbounds %struct.tiff, ptr %104, i32 0, i32 43
  store i32 %sub121, ptr %tif_rawcc122, align 8
  %105 = load ptr, ptr %tif.addr, align 8
  %call123 = call i32 @TIFFFlushData1(ptr noundef %105)
  %tobool124 = icmp ne i32 %call123, 0
  br i1 %tobool124, label %if.end126, label %if.then125

if.then125:                                       ; preds = %if.then118
  store i32 -1, ptr %retval, align 4
  br label %return

if.end126:                                        ; preds = %if.then118
  %106 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp127 = getelementptr inbounds %struct.tiff, ptr %106, i32 0, i32 42
  %107 = load ptr, ptr %tif_rawcp127, align 8
  store ptr %107, ptr %op, align 8
  %108 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize128 = getelementptr inbounds %struct.tiff, ptr %108, i32 0, i32 41
  %109 = load i32, ptr %tif_rawdatasize128, align 8
  %110 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc129 = getelementptr inbounds %struct.tiff, ptr %110, i32 0, i32 43
  %111 = load i32, ptr %tif_rawcc129, align 8
  %sub130 = sub nsw i32 %109, %111
  store i32 %sub130, ptr %occ, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.end126, %if.end114
  %112 = load i32, ptr %j, align 4
  %conv132 = trunc i32 %112 to i8
  %113 = load ptr, ptr %op, align 8
  %incdec.ptr133 = getelementptr inbounds i8, ptr %113, i32 1
  store ptr %incdec.ptr133, ptr %op, align 8
  store i8 %conv132, ptr %113, align 1
  %114 = load i32, ptr %occ, align 4
  %dec = add nsw i32 %114, -1
  store i32 %dec, ptr %occ, align 4
  br label %while.cond134

while.cond134:                                    ; preds = %while.body137, %if.end131
  %115 = load i32, ptr %j, align 4
  %dec135 = add nsw i32 %115, -1
  store i32 %dec135, ptr %j, align 4
  %tobool136 = icmp ne i32 %115, 0
  br i1 %tobool136, label %while.body137, label %while.end147

while.body137:                                    ; preds = %while.cond134
  %116 = load ptr, ptr %tp, align 8
  %117 = load i32, ptr %i, align 4
  %inc138 = add nsw i32 %117, 1
  store i32 %inc138, ptr %i, align 4
  %idxprom139 = sext i32 %117 to i64
  %arrayidx140 = getelementptr inbounds i16, ptr %116, i64 %idxprom139
  %118 = load i16, ptr %arrayidx140, align 2
  %conv141 = sext i16 %118 to i32
  %119 = load i32, ptr %shft, align 4
  %shr142 = ashr i32 %conv141, %119
  %and143 = and i32 %shr142, 255
  %conv144 = trunc i32 %and143 to i8
  %120 = load ptr, ptr %op, align 8
  %incdec.ptr145 = getelementptr inbounds i8, ptr %120, i32 1
  store ptr %incdec.ptr145, ptr %op, align 8
  store i8 %conv144, ptr %120, align 1
  %121 = load i32, ptr %occ, align 4
  %dec146 = add nsw i32 %121, -1
  store i32 %dec146, ptr %occ, align 4
  br label %while.cond134, !llvm.loop !44

while.end147:                                     ; preds = %while.cond134
  br label %while.cond106, !llvm.loop !45

while.end148:                                     ; preds = %while.cond106
  %122 = load i32, ptr %rc, align 4
  %cmp149 = icmp sge i32 %122, 4
  br i1 %cmp149, label %if.then151, label %if.else163

if.then151:                                       ; preds = %while.end148
  %123 = load i32, ptr %rc, align 4
  %add152 = add nsw i32 126, %123
  %conv153 = trunc i32 %add152 to i8
  %124 = load ptr, ptr %op, align 8
  %incdec.ptr154 = getelementptr inbounds i8, ptr %124, i32 1
  store ptr %incdec.ptr154, ptr %op, align 8
  store i8 %conv153, ptr %124, align 1
  %125 = load ptr, ptr %tp, align 8
  %126 = load i32, ptr %beg, align 4
  %idxprom155 = sext i32 %126 to i64
  %arrayidx156 = getelementptr inbounds i16, ptr %125, i64 %idxprom155
  %127 = load i16, ptr %arrayidx156, align 2
  %conv157 = sext i16 %127 to i32
  %128 = load i32, ptr %shft, align 4
  %shr158 = ashr i32 %conv157, %128
  %and159 = and i32 %shr158, 255
  %conv160 = trunc i32 %and159 to i8
  %129 = load ptr, ptr %op, align 8
  %incdec.ptr161 = getelementptr inbounds i8, ptr %129, i32 1
  store ptr %incdec.ptr161, ptr %op, align 8
  store i8 %conv160, ptr %129, align 1
  %130 = load i32, ptr %occ, align 4
  %sub162 = sub nsw i32 %130, 2
  store i32 %sub162, ptr %occ, align 4
  br label %if.end164

if.else163:                                       ; preds = %while.end148
  store i32 0, ptr %rc, align 4
  br label %if.end164

if.end164:                                        ; preds = %if.else163, %if.then151
  br label %for.inc165

for.inc165:                                       ; preds = %if.end164
  %131 = load i32, ptr %rc, align 4
  %132 = load i32, ptr %i, align 4
  %add166 = add nsw i32 %132, %131
  store i32 %add166, ptr %i, align 4
  br label %for.cond27, !llvm.loop !46

for.end167:                                       ; preds = %for.cond27
  br label %for.cond, !llvm.loop !47

for.end168:                                       ; preds = %for.cond
  %133 = load ptr, ptr %op, align 8
  %134 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp169 = getelementptr inbounds %struct.tiff, ptr %134, i32 0, i32 42
  store ptr %133, ptr %tif_rawcp169, align 8
  %135 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize170 = getelementptr inbounds %struct.tiff, ptr %135, i32 0, i32 41
  %136 = load i32, ptr %tif_rawdatasize170, align 8
  %137 = load i32, ptr %occ, align 4
  %sub171 = sub nsw i32 %136, %137
  %138 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc172 = getelementptr inbounds %struct.tiff, ptr %138, i32 0, i32 43
  store i32 %sub171, ptr %tif_rawcc172, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end168, %if.then125, %if.then39
  %139 = load i32, ptr %retval, align 4
  ret i32 %139
}

; Function Attrs: nounwind ssp uwtable
define internal void @L16fromY(ptr noundef %sp, ptr noundef %op, i32 noundef %n) #0 {
entry:
  %sp.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %l16 = alloca ptr, align 8
  %yp = alloca ptr, align 8
  store ptr %sp, ptr %sp.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr %sp.addr, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %tbuf, align 8
  store ptr %1, ptr %l16, align 8
  %2 = load ptr, ptr %op.addr, align 8
  store ptr %2, ptr %yp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %yp, align 8
  %incdec.ptr = getelementptr inbounds float, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %yp, align 8
  %5 = load float, ptr %4, align 4
  %conv = fpext float %5 to double
  %call = call i32 @pix16fromY(double noundef %conv)
  %conv1 = trunc i32 %call to i16
  %6 = load ptr, ptr %l16, align 8
  %incdec.ptr2 = getelementptr inbounds i16, ptr %6, i32 1
  store ptr %incdec.ptr2, ptr %l16, align 8
  store i16 %conv1, ptr %6, align 2
  br label %while.cond, !llvm.loop !48

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @TIFFFlushData1(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @pix24fromXYZ(ptr noundef %XYZ) #0 {
entry:
  %XYZ.addr = alloca ptr, align 8
  %Le = alloca i32, align 4
  %Ce = alloca i32, align 4
  %L = alloca double, align 8
  %u = alloca double, align 8
  %v = alloca double, align 8
  %s = alloca double, align 8
  store ptr %XYZ, ptr %XYZ.addr, align 8
  %0 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx = getelementptr inbounds float, ptr %0, i64 1
  %1 = load float, ptr %arrayidx, align 4
  %conv = fpext float %1 to double
  store double %conv, ptr %L, align 8
  %2 = load double, ptr %L, align 8
  %cmp = fcmp oge double %2, 1.600000e+01
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1023, ptr %Le, align 4
  br label %if.end7

if.else:                                          ; preds = %entry
  %3 = load double, ptr %L, align 8
  %cmp2 = fcmp ole double %3, 0x3F30000000000000
  br i1 %cmp2, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  store i32 0, ptr %Le, align 4
  br label %if.end

if.else5:                                         ; preds = %if.else
  %4 = load double, ptr %L, align 8
  %5 = call double @llvm.log.f64(double %4)
  %6 = call double @llvm.fmuladd.f64(double 0x3FF71547652B82FE, double %5, double 1.200000e+01)
  %mul = fmul double 6.400000e+01, %6
  %conv6 = fptosi double %mul to i32
  store i32 %conv6, ptr %Le, align 4
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %7 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx8 = getelementptr inbounds float, ptr %7, i64 0
  %8 = load float, ptr %arrayidx8, align 4
  %conv9 = fpext float %8 to double
  %9 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx10 = getelementptr inbounds float, ptr %9, i64 1
  %10 = load float, ptr %arrayidx10, align 4
  %conv11 = fpext float %10 to double
  %11 = call double @llvm.fmuladd.f64(double 1.500000e+01, double %conv11, double %conv9)
  %12 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx13 = getelementptr inbounds float, ptr %12, i64 2
  %13 = load float, ptr %arrayidx13, align 4
  %conv14 = fpext float %13 to double
  %14 = call double @llvm.fmuladd.f64(double 3.000000e+00, double %conv14, double %11)
  store double %14, ptr %s, align 8
  %15 = load double, ptr %s, align 8
  %cmp16 = fcmp oeq double %15, 0.000000e+00
  br i1 %cmp16, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.end7
  store double 0x3FCAF286BD156C1A, ptr %u, align 8
  store double 0x3FDE50D794B8199E, ptr %v, align 8
  br label %if.end27

if.else19:                                        ; preds = %if.end7
  %16 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx20 = getelementptr inbounds float, ptr %16, i64 0
  %17 = load float, ptr %arrayidx20, align 4
  %conv21 = fpext float %17 to double
  %mul22 = fmul double 4.000000e+00, %conv21
  %18 = load double, ptr %s, align 8
  %div = fdiv double %mul22, %18
  store double %div, ptr %u, align 8
  %19 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx23 = getelementptr inbounds float, ptr %19, i64 1
  %20 = load float, ptr %arrayidx23, align 4
  %conv24 = fpext float %20 to double
  %mul25 = fmul double 9.000000e+00, %conv24
  %21 = load double, ptr %s, align 8
  %div26 = fdiv double %mul25, %21
  store double %div26, ptr %v, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.else19, %if.then18
  %22 = load double, ptr %u, align 8
  %23 = load double, ptr %v, align 8
  %call = call i32 @uv_encode(double noundef %22, double noundef %23)
  store i32 %call, ptr %Ce, align 4
  %24 = load i32, ptr %Ce, align 4
  %cmp28 = icmp slt i32 %24, 0
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end27
  %call31 = call i32 @uv_encode(double noundef 0x3FCAF286BD156C1A, double noundef 0x3FDE50D794B8199E)
  store i32 %call31, ptr %Ce, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end27
  %25 = load i32, ptr %Le, align 4
  %shl = shl i32 %25, 14
  %26 = load i32, ptr %Ce, align 4
  %or = or i32 %shl, %26
  ret i32 %or
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.log.f64(double) #4

; Function Attrs: nounwind ssp uwtable
define internal i32 @uv_encode(double noundef %u, double noundef %v) #0 {
entry:
  %retval = alloca i32, align 4
  %u.addr = alloca double, align 8
  %v.addr = alloca double, align 8
  %vi = alloca i32, align 4
  %ui = alloca i32, align 4
  store double %u, ptr %u.addr, align 8
  store double %v, ptr %v.addr, align 8
  %0 = load double, ptr %v.addr, align 8
  %cmp = fcmp olt double %0, 0x3F9158B820000000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load double, ptr %v.addr, align 8
  %sub = fsub double %1, 0x3F9158B820000000
  %mul = fmul double %sub, 0x4071DB6DAD9C14EB
  %conv = fptosi double %mul to i32
  store i32 %conv, ptr %vi, align 4
  %2 = load i32, ptr %vi, align 4
  %cmp1 = icmp sge i32 %2, 163
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %3 = load double, ptr %u.addr, align 8
  %4 = load i32, ptr %vi, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [163 x %struct.anon], ptr @uv_row, i64 0, i64 %idxprom
  %ustart = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 0
  %5 = load float, ptr %ustart, align 4
  %conv5 = fpext float %5 to double
  %cmp6 = fcmp olt double %3, %conv5
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  store i32 -1, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end4
  %6 = load double, ptr %u.addr, align 8
  %7 = load i32, ptr %vi, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [163 x %struct.anon], ptr @uv_row, i64 0, i64 %idxprom10
  %ustart12 = getelementptr inbounds %struct.anon, ptr %arrayidx11, i32 0, i32 0
  %8 = load float, ptr %ustart12, align 4
  %conv13 = fpext float %8 to double
  %sub14 = fsub double %6, %conv13
  %mul15 = fmul double %sub14, 0x4071DB6DAD9C14EB
  %conv16 = fptosi double %mul15 to i32
  store i32 %conv16, ptr %ui, align 4
  %9 = load i32, ptr %ui, align 4
  %10 = load i32, ptr %vi, align 4
  %idxprom17 = sext i32 %10 to i64
  %arrayidx18 = getelementptr inbounds [163 x %struct.anon], ptr @uv_row, i64 0, i64 %idxprom17
  %nus = getelementptr inbounds %struct.anon, ptr %arrayidx18, i32 0, i32 1
  %11 = load i16, ptr %nus, align 4
  %conv19 = sext i16 %11 to i32
  %cmp20 = icmp sge i32 %9, %conv19
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end9
  store i32 -1, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end9
  %12 = load i32, ptr %vi, align 4
  %idxprom24 = sext i32 %12 to i64
  %arrayidx25 = getelementptr inbounds [163 x %struct.anon], ptr @uv_row, i64 0, i64 %idxprom24
  %ncum = getelementptr inbounds %struct.anon, ptr %arrayidx25, i32 0, i32 2
  %13 = load i16, ptr %ncum, align 2
  %conv26 = sext i16 %13 to i32
  %14 = load i32, ptr %ui, align 4
  %add = add nsw i32 %conv26, %14
  store i32 %add, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then22, %if.then8, %if.then3, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @pix32fromXYZ(ptr noundef %XYZ) #0 {
entry:
  %XYZ.addr = alloca ptr, align 8
  %Le = alloca i32, align 4
  %ue = alloca i32, align 4
  %ve = alloca i32, align 4
  %u = alloca double, align 8
  %v = alloca double, align 8
  %s = alloca double, align 8
  store ptr %XYZ, ptr %XYZ.addr, align 8
  %0 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx = getelementptr inbounds float, ptr %0, i64 1
  %1 = load float, ptr %arrayidx, align 4
  %conv = fpext float %1 to double
  %call = call i32 @pix16fromY(double noundef %conv)
  store i32 %call, ptr %Le, align 4
  %2 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx1 = getelementptr inbounds float, ptr %2, i64 0
  %3 = load float, ptr %arrayidx1, align 4
  %conv2 = fpext float %3 to double
  %4 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx3 = getelementptr inbounds float, ptr %4, i64 1
  %5 = load float, ptr %arrayidx3, align 4
  %conv4 = fpext float %5 to double
  %6 = call double @llvm.fmuladd.f64(double 1.500000e+01, double %conv4, double %conv2)
  %7 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx5 = getelementptr inbounds float, ptr %7, i64 2
  %8 = load float, ptr %arrayidx5, align 4
  %conv6 = fpext float %8 to double
  %9 = call double @llvm.fmuladd.f64(double 3.000000e+00, double %conv6, double %6)
  store double %9, ptr %s, align 8
  %10 = load double, ptr %s, align 8
  %cmp = fcmp oeq double %10, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 0x3FCAF286BD156C1A, ptr %u, align 8
  store double 0x3FDE50D794B8199E, ptr %v, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx8 = getelementptr inbounds float, ptr %11, i64 0
  %12 = load float, ptr %arrayidx8, align 4
  %conv9 = fpext float %12 to double
  %mul = fmul double 4.000000e+00, %conv9
  %13 = load double, ptr %s, align 8
  %div = fdiv double %mul, %13
  store double %div, ptr %u, align 8
  %14 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx10 = getelementptr inbounds float, ptr %14, i64 1
  %15 = load float, ptr %arrayidx10, align 4
  %conv11 = fpext float %15 to double
  %mul12 = fmul double 9.000000e+00, %conv11
  %16 = load double, ptr %s, align 8
  %div13 = fdiv double %mul12, %16
  store double %div13, ptr %v, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load double, ptr %u, align 8
  %cmp14 = fcmp ole double %17, 0.000000e+00
  br i1 %cmp14, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.end
  store i32 0, ptr %ue, align 4
  br label %if.end20

if.else17:                                        ; preds = %if.end
  %18 = load double, ptr %u, align 8
  %mul18 = fmul double 4.100000e+02, %18
  %conv19 = fptoui double %mul18 to i32
  store i32 %conv19, ptr %ue, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else17, %if.then16
  %19 = load i32, ptr %ue, align 4
  %cmp21 = icmp ugt i32 %19, 255
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  store i32 255, ptr %ue, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20
  %20 = load double, ptr %v, align 8
  %cmp25 = fcmp ole double %20, 0.000000e+00
  br i1 %cmp25, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.end24
  store i32 0, ptr %ve, align 4
  br label %if.end31

if.else28:                                        ; preds = %if.end24
  %21 = load double, ptr %v, align 8
  %mul29 = fmul double 4.100000e+02, %21
  %conv30 = fptoui double %mul29 to i32
  store i32 %conv30, ptr %ve, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else28, %if.then27
  %22 = load i32, ptr %ve, align 4
  %cmp32 = icmp ugt i32 %22, 255
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end31
  store i32 255, ptr %ve, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end31
  %23 = load i32, ptr %Le, align 4
  %shl = shl i32 %23, 16
  %24 = load i32, ptr %ue, align 4
  %shl36 = shl i32 %24, 8
  %or = or i32 %shl, %shl36
  %25 = load i32, ptr %ve, align 4
  %or37 = or i32 %or, %25
  ret i32 %or37
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @pix16fromY(double noundef %Y) #0 {
entry:
  %retval = alloca i32, align 4
  %Y.addr = alloca double, align 8
  store double %Y, ptr %Y.addr, align 8
  %0 = load double, ptr %Y.addr, align 8
  %cmp = fcmp oge double %0, 1.844670e+19
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 32767, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load double, ptr %Y.addr, align 8
  %cmp1 = fcmp ole double %1, -1.844670e+19
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 65535, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = load double, ptr %Y.addr, align 8
  %cmp4 = fcmp ogt double %2, 5.435710e-20
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %3 = load double, ptr %Y.addr, align 8
  %4 = call double @llvm.log.f64(double %3)
  %5 = call double @llvm.fmuladd.f64(double 0x3FF71547652B82FE, double %4, double 6.400000e+01)
  %mul = fmul double 2.560000e+02, %5
  %conv = fptosi double %mul to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  %6 = load double, ptr %Y.addr, align 8
  %cmp7 = fcmp olt double %6, -5.435710e-20
  br i1 %cmp7, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end6
  %7 = load double, ptr %Y.addr, align 8
  %fneg = fneg double %7
  %8 = call double @llvm.log.f64(double %fneg)
  %9 = call double @llvm.fmuladd.f64(double 0x3FF71547652B82FE, double %8, double 6.400000e+01)
  %mul11 = fmul double 2.560000e+02, %9
  %conv12 = fptosi double %mul11 to i32
  %or = or i32 -32768, %conv12
  store i32 %or, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end6
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then9, %if.then5, %if.then2, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

declare void @_TIFFfree(ptr noundef) #2

declare i32 @TIFFSetField(ptr noundef, i32 noundef, ...) #2

declare i32 @TIFFTileSize(ptr noundef) #2

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold noreturn }
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
