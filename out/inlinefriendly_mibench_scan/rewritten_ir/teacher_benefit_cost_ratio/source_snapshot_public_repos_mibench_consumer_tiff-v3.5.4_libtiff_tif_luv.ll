; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_benefit_cost_ratio/source_snapshot_public_repos_mibench_consumer_tiff-v3.5.4_libtiff_tif_luv.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_luv.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.TIFFFieldInfo = type { i64, i16, i16, i32, i16, i8, i8, ptr }
%struct.anon = type { float, i16, i16 }
%struct.tiff = type { ptr, i32, i32, i64, i64, i64, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i64, i16, i64, i64, i64, i16, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, ptr, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i64, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i64, ptr, i64, ptr, i64, ptr, i64, i64, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i64 }
%struct.logLuvState = type { i32, i32, ptr, i16, ptr, ptr, ptr }

@TIFFInitSGILog.module = internal constant [15 x i8] c"TIFFInitSGILog\00", align 1
@__func__.TIFFInitSGILog = private unnamed_addr constant [15 x i8] c"TIFFInitSGILog\00", align 1
@.str = private unnamed_addr constant [10 x i8] c"tif_luv.c\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"scheme == COMPRESSION_SGILOG24 || scheme == COMPRESSION_SGILOG\00", align 1
@LogLuvFieldInfo = internal constant [1 x %struct.TIFFFieldInfo] [%struct.TIFFFieldInfo { i64 65560, i16 0, i16 0, i32 3, i16 0, i8 1, i8 0, ptr @.str.21 }], align 8
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
  %tif.addr = alloca ptr, align 8
  %scheme.addr = alloca i32, align 4
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %scheme, ptr %scheme.addr, align 4
  %cmp = icmp eq i32 %scheme, 34677
  %0 = load i32, ptr %scheme.addr, align 4
  %cmp1.not = icmp eq i32 %0, 34676
  %1 = select i1 %cmp, i1 true, i1 %cmp1.not
  br i1 %1, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.TIFFInitSGILog, ptr noundef nonnull @.str, i32 noundef 1386, ptr noundef nonnull @.str.1) #5
  unreachable

cond.end:                                         ; preds = %entry
  %call = call ptr @_TIFFmalloc(i64 noundef 48) #6
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 37
  store ptr %call, ptr %tif_data, align 8
  %cmp3 = icmp eq ptr %call, null
  br i1 %cmp3, label %bad, label %if.end

if.end:                                           ; preds = %cond.end
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_data5 = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 37
  %4 = load ptr, ptr %tif_data5, align 8
  store ptr %4, ptr %sp, align 8
  %5 = call i64 @llvm.objectsize.i64.p0(ptr %4, i1 false, i1 true, i1 false)
  %call6 = call ptr @__memset_chk(ptr noundef %4, i32 noundef 0, i64 noundef 48, i64 noundef %5) #6
  store i32 -1, ptr %4, align 8
  %tfunc = getelementptr inbounds %struct.logLuvState, ptr %4, i64 0, i32 4
  store ptr @_logLuvNop, ptr %tfunc, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_setupdecode = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 21
  store ptr @LogLuvSetupDecode, ptr %tif_setupdecode, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 28
  store ptr @LogLuvDecodeStrip, ptr %tif_decodestrip, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 30
  store ptr @LogLuvDecodeTile, ptr %tif_decodetile, align 8
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_setupencode = getelementptr inbounds %struct.tiff, ptr %7, i64 0, i32 23
  store ptr @LogLuvSetupEncode, ptr %tif_setupencode, align 8
  %tif_encodestrip = getelementptr inbounds %struct.tiff, ptr %7, i64 0, i32 29
  store ptr @LogLuvEncodeStrip, ptr %tif_encodestrip, align 8
  %tif_encodetile = getelementptr inbounds %struct.tiff, ptr %7, i64 0, i32 31
  store ptr @LogLuvEncodeTile, ptr %tif_encodetile, align 8
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_close = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 32
  store ptr @LogLuvClose, ptr %tif_close, align 8
  %tif_cleanup = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 34
  store ptr @LogLuvCleanup, ptr %tif_cleanup, align 8
  call void @_TIFFMergeFieldInfo(ptr noundef %8, ptr noundef nonnull @LogLuvFieldInfo, i32 noundef 1) #6
  %tif_vgetfield = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 58
  %9 = load ptr, ptr %tif_vgetfield, align 8
  %10 = load ptr, ptr %sp, align 8
  %vgetparent = getelementptr inbounds %struct.logLuvState, ptr %10, i64 0, i32 5
  store ptr %9, ptr %vgetparent, align 8
  %11 = load ptr, ptr %tif.addr, align 8
  %tif_vgetfield7 = getelementptr inbounds %struct.tiff, ptr %11, i64 0, i32 58
  store ptr @LogLuvVGetField, ptr %tif_vgetfield7, align 8
  %tif_vsetfield = getelementptr inbounds %struct.tiff, ptr %11, i64 0, i32 57
  %12 = load ptr, ptr %tif_vsetfield, align 8
  %13 = load ptr, ptr %sp, align 8
  %vsetparent = getelementptr inbounds %struct.logLuvState, ptr %13, i64 0, i32 6
  store ptr %12, ptr %vsetparent, align 8
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_vsetfield8 = getelementptr inbounds %struct.tiff, ptr %14, i64 0, i32 57
  store ptr @LogLuvVSetField, ptr %tif_vsetfield8, align 8
  br label %return

bad:                                              ; preds = %cond.end
  %15 = load ptr, ptr %tif.addr, align 8
  %16 = load ptr, ptr %15, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFInitSGILog.module, ptr noundef nonnull @.str.2, ptr noundef %16) #6
  br label %return

return:                                           ; preds = %bad, %if.end
  %storemerge = phi i32 [ 1, %if.end ], [ 0, %bad ]
  ret i32 %storemerge
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare ptr @_TIFFmalloc(i64 noundef) #2

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: nounwind ssp uwtable
define internal void @_logLuvNop(ptr noundef %sp, ptr noundef %op, i32 noundef %n) #0 {
entry:
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
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %tif_postdecode = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 54
  store ptr @_TIFFNoPostDecode, ptr %tif_postdecode, align 8
  %td_photometric = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 11
  %1 = load i16, ptr %td_photometric, align 2
  switch i16 %1, label %sw.default [
    i16 -32691, label %sw.bb
    i16 -32692, label %sw.bb19
  ]

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @LogLuvInitState(ptr noundef %2)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %sw.epilog33, label %if.end

if.end:                                           ; preds = %sw.bb
  %3 = load ptr, ptr %td, align 8
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i64 0, i32 10
  %4 = load i16, ptr %td_compression, align 4
  %cmp = icmp eq i16 %4, -30859
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %5, i64 0, i32 26
  store ptr @LogLuvDecode24, ptr %tif_decoderow, align 8
  %6 = load ptr, ptr %sp, align 8
  %7 = load i32, ptr %6, align 8
  switch i32 %7, label %if.end18 [
    i32 0, label %sw.bb4
    i32 1, label %sw.bb5
    i32 3, label %sw.bb7
  ]

sw.bb4:                                           ; preds = %if.then3
  %8 = load ptr, ptr %sp, align 8
  %tfunc = getelementptr inbounds %struct.logLuvState, ptr %8, i64 0, i32 4
  store ptr @Luv24toXYZ, ptr %tfunc, align 8
  br label %if.end18

sw.bb5:                                           ; preds = %if.then3
  %9 = load ptr, ptr %sp, align 8
  %tfunc6 = getelementptr inbounds %struct.logLuvState, ptr %9, i64 0, i32 4
  store ptr @Luv24toLuv48, ptr %tfunc6, align 8
  br label %if.end18

sw.bb7:                                           ; preds = %if.then3
  %10 = load ptr, ptr %sp, align 8
  %tfunc8 = getelementptr inbounds %struct.logLuvState, ptr %10, i64 0, i32 4
  store ptr @Luv24toRGB, ptr %tfunc8, align 8
  br label %if.end18

if.else:                                          ; preds = %if.end
  %11 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow9 = getelementptr inbounds %struct.tiff, ptr %11, i64 0, i32 26
  store ptr @LogLuvDecode32, ptr %tif_decoderow9, align 8
  %12 = load ptr, ptr %sp, align 8
  %13 = load i32, ptr %12, align 8
  switch i32 %13, label %if.end18 [
    i32 0, label %sw.bb11
    i32 1, label %sw.bb13
    i32 3, label %sw.bb15
  ]

sw.bb11:                                          ; preds = %if.else
  %14 = load ptr, ptr %sp, align 8
  %tfunc12 = getelementptr inbounds %struct.logLuvState, ptr %14, i64 0, i32 4
  store ptr @Luv32toXYZ, ptr %tfunc12, align 8
  br label %if.end18

sw.bb13:                                          ; preds = %if.else
  %15 = load ptr, ptr %sp, align 8
  %tfunc14 = getelementptr inbounds %struct.logLuvState, ptr %15, i64 0, i32 4
  store ptr @Luv32toLuv48, ptr %tfunc14, align 8
  br label %if.end18

sw.bb15:                                          ; preds = %if.else
  %16 = load ptr, ptr %sp, align 8
  %tfunc16 = getelementptr inbounds %struct.logLuvState, ptr %16, i64 0, i32 4
  store ptr @Luv32toRGB, ptr %tfunc16, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.else, %sw.bb11, %sw.bb13, %sw.bb15, %if.then3, %sw.bb4, %sw.bb5, %sw.bb7
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb19:                                          ; preds = %entry
  %17 = load ptr, ptr %tif.addr, align 8
  %call20 = call i32 @LogL16InitState(ptr noundef %17)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %sw.epilog33, label %if.end23

if.end23:                                         ; preds = %sw.bb19
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow24 = getelementptr inbounds %struct.tiff, ptr %18, i64 0, i32 26
  store ptr @LogL16Decode, ptr %tif_decoderow24, align 8
  %19 = load ptr, ptr %sp, align 8
  %20 = load i32, ptr %19, align 8
  switch i32 %20, label %sw.epilog30 [
    i32 0, label %sw.bb26
    i32 3, label %sw.bb28
  ]

sw.bb26:                                          ; preds = %if.end23
  %21 = load ptr, ptr %sp, align 8
  %tfunc27 = getelementptr inbounds %struct.logLuvState, ptr %21, i64 0, i32 4
  store ptr @L16toY, ptr %tfunc27, align 8
  br label %sw.epilog30

sw.bb28:                                          ; preds = %if.end23
  %22 = load ptr, ptr %sp, align 8
  %tfunc29 = getelementptr inbounds %struct.logLuvState, ptr %22, i64 0, i32 4
  store ptr @L16toGry, ptr %tfunc29, align 8
  br label %sw.epilog30

sw.epilog30:                                      ; preds = %sw.bb28, %sw.bb26, %if.end23
  store i32 1, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %23 = load ptr, ptr %tif.addr, align 8
  %24 = load ptr, ptr %23, align 8
  %25 = load ptr, ptr %td, align 8
  %td_photometric31 = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i64 0, i32 11
  %26 = load i16, ptr %td_photometric31, align 2
  %conv32 = zext i16 %26 to i32
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %24, ptr noundef nonnull @.str.3, i32 noundef %conv32, ptr noundef nonnull @.str.4) #6
  br label %sw.epilog33

sw.epilog33:                                      ; preds = %sw.bb19, %sw.bb, %sw.default
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog33, %sw.epilog30, %if.end18
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvDecodeStrip(ptr noundef %tif, ptr noundef %bp, i64 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  %s.addr = alloca i16, align 2
  %rowlen = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  store i16 %s, ptr %s.addr, align 2
  %call = call i64 @TIFFScanlineSize(ptr noundef %tif) #6
  store i64 %call, ptr %rowlen, align 8
  %rem = srem i64 %cc, %call
  %cmp.not = icmp eq i64 %rem, 0
  br i1 %cmp.not, label %while.cond, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogLuvDecodeStrip, ptr noundef nonnull @.str, i32 noundef 324, ptr noundef nonnull @.str.17) #5
  unreachable

while.cond:                                       ; preds = %entry, %while.body
  %0 = load i64, ptr %cc.addr, align 8
  %tobool1.not = icmp eq i64 %0, 0
  br i1 %tobool1.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 26
  %2 = load ptr, ptr %tif_decoderow, align 8
  %3 = load ptr, ptr %bp.addr, align 8
  %4 = load i64, ptr %rowlen, align 8
  %5 = load i16, ptr %s.addr, align 2
  %call2 = call i32 %2(ptr noundef %1, ptr noundef %3, i64 noundef %4, i16 noundef zeroext %5) #6
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %6 = load i64, ptr %rowlen, align 8
  %7 = load ptr, ptr %bp.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %6
  store ptr %add.ptr, ptr %bp.addr, align 8
  %8 = load i64, ptr %cc.addr, align 8
  %sub = sub nsw i64 %8, %6
  store i64 %sub, ptr %cc.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond, %land.rhs
  %9 = load i64, ptr %cc.addr, align 8
  %cmp4 = icmp eq i64 %9, 0
  %conv5 = zext i1 %cmp4 to i32
  ret i32 %conv5
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvDecodeTile(ptr noundef %tif, ptr noundef %bp, i64 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  %s.addr = alloca i16, align 2
  %rowlen = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  store i16 %s, ptr %s.addr, align 2
  %call = call i64 @TIFFTileRowSize(ptr noundef %tif) #6
  store i64 %call, ptr %rowlen, align 8
  %rem = srem i64 %cc, %call
  %cmp.not = icmp eq i64 %rem, 0
  br i1 %cmp.not, label %while.cond, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogLuvDecodeTile, ptr noundef nonnull @.str, i32 noundef 340, ptr noundef nonnull @.str.17) #5
  unreachable

while.cond:                                       ; preds = %entry, %while.body
  %0 = load i64, ptr %cc.addr, align 8
  %tobool1.not = icmp eq i64 %0, 0
  br i1 %tobool1.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 26
  %2 = load ptr, ptr %tif_decoderow, align 8
  %3 = load ptr, ptr %bp.addr, align 8
  %4 = load i64, ptr %rowlen, align 8
  %5 = load i16, ptr %s.addr, align 2
  %call2 = call i32 %2(ptr noundef %1, ptr noundef %3, i64 noundef %4, i16 noundef zeroext %5) #6
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %6 = load i64, ptr %rowlen, align 8
  %7 = load ptr, ptr %bp.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %6
  store ptr %add.ptr, ptr %bp.addr, align 8
  %8 = load i64, ptr %cc.addr, align 8
  %sub = sub nsw i64 %8, %6
  store i64 %sub, ptr %cc.addr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond, %land.rhs
  %9 = load i64, ptr %cc.addr, align 8
  %cmp4 = icmp eq i64 %9, 0
  %conv5 = zext i1 %cmp4 to i32
  ret i32 %conv5
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvSetupEncode(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %td = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_photometric = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 11
  %1 = load i16, ptr %td_photometric, align 2
  switch i16 %1, label %sw.default30 [
    i16 -32691, label %sw.bb
    i16 -32692, label %sw.bb18
  ]

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @LogLuvInitState(ptr noundef %2)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %sw.bb
  %3 = load ptr, ptr %td, align 8
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i64 0, i32 10
  %4 = load i16, ptr %td_compression, align 4
  %cmp = icmp eq i16 %4, -30859
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_encoderow = getelementptr inbounds %struct.tiff, ptr %5, i64 0, i32 27
  store ptr @LogLuvEncode24, ptr %tif_encoderow, align 8
  %6 = load ptr, ptr %sp, align 8
  %7 = load i32, ptr %6, align 8
  switch i32 %7, label %notsupported [
    i32 0, label %sw.bb4
    i32 1, label %sw.bb5
    i32 2, label %return
  ]

sw.bb4:                                           ; preds = %if.then3
  %8 = load ptr, ptr %sp, align 8
  %tfunc = getelementptr inbounds %struct.logLuvState, ptr %8, i64 0, i32 4
  store ptr @Luv24fromXYZ, ptr %tfunc, align 8
  br label %return

sw.bb5:                                           ; preds = %if.then3
  %9 = load ptr, ptr %sp, align 8
  %tfunc6 = getelementptr inbounds %struct.logLuvState, ptr %9, i64 0, i32 4
  store ptr @Luv24fromLuv48, ptr %tfunc6, align 8
  br label %return

if.else:                                          ; preds = %if.end
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_encoderow8 = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 27
  store ptr @LogLuvEncode32, ptr %tif_encoderow8, align 8
  %11 = load ptr, ptr %sp, align 8
  %12 = load i32, ptr %11, align 8
  switch i32 %12, label %notsupported [
    i32 0, label %sw.bb10
    i32 1, label %sw.bb12
    i32 2, label %return
  ]

sw.bb10:                                          ; preds = %if.else
  %13 = load ptr, ptr %sp, align 8
  %tfunc11 = getelementptr inbounds %struct.logLuvState, ptr %13, i64 0, i32 4
  store ptr @Luv32fromXYZ, ptr %tfunc11, align 8
  br label %return

sw.bb12:                                          ; preds = %if.else
  %14 = load ptr, ptr %sp, align 8
  %tfunc13 = getelementptr inbounds %struct.logLuvState, ptr %14, i64 0, i32 4
  store ptr @Luv32fromLuv48, ptr %tfunc13, align 8
  br label %return

sw.bb18:                                          ; preds = %entry
  %15 = load ptr, ptr %tif.addr, align 8
  %call19 = call i32 @LogL16InitState(ptr noundef %15)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %return, label %if.end22

if.end22:                                         ; preds = %sw.bb18
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_encoderow23 = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 27
  store ptr @LogL16Encode, ptr %tif_encoderow23, align 8
  %17 = load ptr, ptr %sp, align 8
  %18 = load i32, ptr %17, align 8
  switch i32 %18, label %notsupported [
    i32 0, label %sw.bb25
    i32 1, label %return
  ]

sw.bb25:                                          ; preds = %if.end22
  %19 = load ptr, ptr %sp, align 8
  %tfunc26 = getelementptr inbounds %struct.logLuvState, ptr %19, i64 0, i32 4
  store ptr @L16fromY, ptr %tfunc26, align 8
  br label %return

sw.default30:                                     ; preds = %entry
  %20 = load ptr, ptr %tif.addr, align 8
  %21 = load ptr, ptr %20, align 8
  %22 = load ptr, ptr %td, align 8
  %td_photometric31 = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i64 0, i32 11
  %23 = load i16, ptr %td_photometric31, align 2
  %conv32 = zext i16 %23 to i32
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %21, ptr noundef nonnull @.str.3, i32 noundef %conv32, ptr noundef nonnull @.str.4) #6
  br label %return

notsupported:                                     ; preds = %if.end22, %if.else, %if.then3
  %24 = load ptr, ptr %tif.addr, align 8
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %td, align 8
  %td_photometric35 = getelementptr inbounds %struct.TIFFDirectory, ptr %26, i64 0, i32 11
  %27 = load i16, ptr %td_photometric35, align 2
  %cmp37 = icmp eq i16 %27, -32692
  %cond = select i1 %cmp37, ptr @.str.19, ptr @.str.20
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %25, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond) #6
  br label %return

return:                                           ; preds = %sw.default30, %sw.bb, %sw.bb10, %sw.bb12, %if.else, %sw.bb4, %sw.bb5, %if.then3, %sw.bb18, %if.end22, %sw.bb25, %notsupported
  %storemerge = phi i32 [ 0, %notsupported ], [ 1, %sw.bb25 ], [ 1, %if.end22 ], [ 1, %sw.bb18 ], [ 1, %if.then3 ], [ 1, %sw.bb5 ], [ 1, %sw.bb4 ], [ 1, %if.else ], [ 1, %sw.bb12 ], [ 1, %sw.bb10 ], [ 1, %sw.bb ], [ 1, %sw.default30 ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvEncodeStrip(ptr noundef %tif, ptr noundef %bp, i64 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  %s.addr = alloca i16, align 2
  %rowlen = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  store i16 %s, ptr %s.addr, align 2
  %call = call i64 @TIFFScanlineSize(ptr noundef %tif) #6
  store i64 %call, ptr %rowlen, align 8
  %rem = srem i64 %cc, %call
  %cmp.not = icmp eq i64 %rem, 0
  br i1 %cmp.not, label %while.cond, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogLuvEncodeStrip, ptr noundef nonnull @.str, i32 noundef 577, ptr noundef nonnull @.str.17) #5
  unreachable

while.cond:                                       ; preds = %entry, %while.body
  %0 = load i64, ptr %cc.addr, align 8
  %tobool1.not = icmp eq i64 %0, 0
  br i1 %tobool1.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_encoderow = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 27
  %2 = load ptr, ptr %tif_encoderow, align 8
  %3 = load ptr, ptr %bp.addr, align 8
  %4 = load i64, ptr %rowlen, align 8
  %5 = load i16, ptr %s.addr, align 2
  %call2 = call i32 %2(ptr noundef %1, ptr noundef %3, i64 noundef %4, i16 noundef zeroext %5) #6
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %6 = load i64, ptr %rowlen, align 8
  %7 = load ptr, ptr %bp.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %6
  store ptr %add.ptr, ptr %bp.addr, align 8
  %8 = load i64, ptr %cc.addr, align 8
  %sub = sub nsw i64 %8, %6
  store i64 %sub, ptr %cc.addr, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond, %land.rhs
  %9 = load i64, ptr %cc.addr, align 8
  %cmp5 = icmp eq i64 %9, 0
  %conv6 = zext i1 %cmp5 to i32
  ret i32 %conv6
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvEncodeTile(ptr noundef %tif, ptr noundef %bp, i64 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  %s.addr = alloca i16, align 2
  %rowlen = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  store i16 %s, ptr %s.addr, align 2
  %call = call i64 @TIFFTileRowSize(ptr noundef %tif) #6
  store i64 %call, ptr %rowlen, align 8
  %rem = srem i64 %cc, %call
  %cmp.not = icmp eq i64 %rem, 0
  br i1 %cmp.not, label %while.cond, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogLuvEncodeTile, ptr noundef nonnull @.str, i32 noundef 592, ptr noundef nonnull @.str.17) #5
  unreachable

while.cond:                                       ; preds = %entry, %while.body
  %0 = load i64, ptr %cc.addr, align 8
  %tobool1.not = icmp eq i64 %0, 0
  br i1 %tobool1.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_encoderow = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 27
  %2 = load ptr, ptr %tif_encoderow, align 8
  %3 = load ptr, ptr %bp.addr, align 8
  %4 = load i64, ptr %rowlen, align 8
  %5 = load i16, ptr %s.addr, align 2
  %call2 = call i32 %2(ptr noundef %1, ptr noundef %3, i64 noundef %4, i16 noundef zeroext %5) #6
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %6 = load i64, ptr %rowlen, align 8
  %7 = load ptr, ptr %bp.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %6
  store ptr %add.ptr, ptr %bp.addr, align 8
  %8 = load i64, ptr %cc.addr, align 8
  %sub = sub nsw i64 %8, %6
  store i64 %sub, ptr %cc.addr, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond, %land.rhs
  %9 = load i64, ptr %cc.addr, align 8
  %cmp5 = icmp eq i64 %9, 0
  %conv6 = zext i1 %cmp5 to i32
  ret i32 %conv6
}

; Function Attrs: nounwind ssp uwtable
define internal void @LogLuvClose(ptr noundef %tif) #0 {
entry:
  %td = alloca ptr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_photometric = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 11
  %0 = load i16, ptr %td_photometric, align 2
  %cmp = icmp eq i16 %0, -32692
  %conv2 = select i1 %cmp, i16 1, i16 3
  %td_samplesperpixel = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 15
  store i16 %conv2, ptr %td_samplesperpixel, align 2
  %1 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i64 0, i32 8
  store i16 16, ptr %td_bitspersample, align 8
  %td_sampleformat = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i64 0, i32 9
  store i16 2, ptr %td_sampleformat, align 2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @LogLuvCleanup(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %sp, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %1, i64 0, i32 2
  %2 = load ptr, ptr %tbuf, align 8
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %sp, align 8
  %tbuf3 = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 2
  %4 = load ptr, ptr %tbuf3, align 8
  call void @_TIFFfree(ptr noundef %4) #6
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load ptr, ptr %sp, align 8
  call void @_TIFFfree(ptr noundef %5) #6
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_data4 = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 37
  store ptr null, ptr %tif_data4, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  ret void
}

declare void @_TIFFMergeFieldInfo(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvVGetField(ptr noundef %tif, i64 noundef %tag, ptr noundef %ap) #0 {
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
  %cond = icmp eq i64 %tag, 65560
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %sp, align 8
  %2 = load i32, ptr %1, align 8
  %3 = va_arg ptr %ap.addr, ptr
  store i32 %2, ptr %3, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %4 = load ptr, ptr %sp, align 8
  %vgetparent = getelementptr inbounds %struct.logLuvState, ptr %4, i64 0, i32 5
  %5 = load ptr, ptr %vgetparent, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %7 = load i64, ptr %tag.addr, align 8
  %8 = load ptr, ptr %ap.addr, align 8
  %call = call i32 %5(ptr noundef %6, i64 noundef %7, ptr noundef %8) #6
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %storemerge = phi i32 [ 1, %sw.bb ], [ %call, %sw.default ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvVSetField(ptr noundef %tif, i64 noundef %tag, ptr noundef %ap) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i64, align 8
  %ap.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %bps = alloca i32, align 4
  %fmt = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tag, ptr %tag.addr, align 8
  store ptr %ap, ptr %ap.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %cond = icmp eq i64 %tag, 65560
  br i1 %cond, label %sw.bb, label %sw.default10

sw.bb:                                            ; preds = %entry
  %1 = va_arg ptr %ap.addr, i32
  %2 = load ptr, ptr %sp, align 8
  store i32 %1, ptr %2, align 8
  switch i32 %1, label %sw.default [
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
  %3 = load ptr, ptr %tif.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %sp, align 8
  %6 = load i32, ptr %5, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %4, ptr noundef nonnull @.str.22, i32 noundef %6) #6
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2
  %7 = load ptr, ptr %tif.addr, align 8
  %8 = load i32, ptr %bps, align 4
  %call = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %7, i64 noundef 258, i32 noundef %8) #6
  %9 = load i32, ptr %fmt, align 4
  %call7 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %7, i64 noundef 339, i32 noundef %9) #6
  %call8 = call i64 @TIFFTileSize(ptr noundef %7) #6
  %tif_tilesize = getelementptr inbounds %struct.tiff, ptr %7, i64 0, i32 20
  store i64 %call8, ptr %tif_tilesize, align 8
  %10 = load ptr, ptr %tif.addr, align 8
  %call9 = call i64 @TIFFScanlineSize(ptr noundef %10) #6
  %tif_scanlinesize = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 38
  store i64 %call9, ptr %tif_scanlinesize, align 8
  store i32 1, ptr %retval, align 4
  br label %return

sw.default10:                                     ; preds = %entry
  %11 = load ptr, ptr %sp, align 8
  %vsetparent = getelementptr inbounds %struct.logLuvState, ptr %11, i64 0, i32 6
  %12 = load ptr, ptr %vsetparent, align 8
  %13 = load ptr, ptr %tif.addr, align 8
  %14 = load i64, ptr %tag.addr, align 8
  %15 = load ptr, ptr %ap.addr, align 8
  %call11 = call i32 %12(ptr noundef %13, i64 noundef %14, ptr noundef %15) #6
  store i32 %call11, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default10, %sw.epilog, %sw.default
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #2

declare void @_TIFFNoPostDecode(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvInitState(ptr noundef %tif) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogLuvInitState, ptr noundef nonnull @.str, i32 noundef 1115, ptr noundef nonnull @.str.5) #5
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load ptr, ptr %td, align 8
  %td_photometric = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i64 0, i32 11
  %2 = load i16, ptr %td_photometric, align 2
  %cmp2.not = icmp eq i16 %2, -32691
  br i1 %cmp2.not, label %cond.end10, label %cond.true8

cond.true8:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogLuvInitState, ptr noundef nonnull @.str, i32 noundef 1116, ptr noundef nonnull @.str.6) #5
  unreachable

cond.end10:                                       ; preds = %cond.end
  %3 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i64 0, i32 24
  %4 = load i16, ptr %td_planarconfig, align 2
  %cmp12.not = icmp eq i16 %4, 1
  br i1 %cmp12.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end10
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @LogLuvInitState.module, ptr noundef nonnull @.str.7) #6
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end10
  %5 = load ptr, ptr %sp, align 8
  %6 = load i32, ptr %5, align 8
  %cmp14 = icmp eq i32 %6, -1
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end
  %7 = load ptr, ptr %td, align 8
  %call = call i32 @LogLuvGuessDataFmt(ptr noundef %7)
  %8 = load ptr, ptr %sp, align 8
  store i32 %call, ptr %8, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  %9 = load ptr, ptr %sp, align 8
  %10 = load i32, ptr %9, align 8
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb20
    i32 2, label %sw.bb22
    i32 3, label %sw.bb24
  ]

sw.bb:                                            ; preds = %if.end18
  %11 = load ptr, ptr %sp, align 8
  %pixel_size = getelementptr inbounds %struct.logLuvState, ptr %11, i64 0, i32 1
  store i32 12, ptr %pixel_size, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end18
  %12 = load ptr, ptr %sp, align 8
  %pixel_size21 = getelementptr inbounds %struct.logLuvState, ptr %12, i64 0, i32 1
  store i32 6, ptr %pixel_size21, align 4
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end18
  %13 = load ptr, ptr %sp, align 8
  %pixel_size23 = getelementptr inbounds %struct.logLuvState, ptr %13, i64 0, i32 1
  store i32 8, ptr %pixel_size23, align 4
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end18
  %14 = load ptr, ptr %sp, align 8
  %pixel_size25 = getelementptr inbounds %struct.logLuvState, ptr %14, i64 0, i32 1
  store i32 3, ptr %pixel_size25, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end18
  %15 = load ptr, ptr %tif.addr, align 8
  %16 = load ptr, ptr %15, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %16, ptr noundef nonnull @.str.8) #6
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb
  %17 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i64 0, i32 1
  %18 = load i64, ptr %td_imagewidth, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i64 0, i32 16
  %19 = load i64, ptr %td_rowsperstrip, align 8
  %mul = mul i64 %18, %19
  %conv26 = trunc i64 %mul to i16
  %20 = load ptr, ptr %sp, align 8
  %tbuflen = getelementptr inbounds %struct.logLuvState, ptr %20, i64 0, i32 3
  store i16 %conv26, ptr %tbuflen, align 8
  %sext = shl i64 %mul, 48
  %mul29 = ashr exact i64 %sext, 45
  %call30 = call ptr @_TIFFmalloc(i64 noundef %mul29) #6
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %20, i64 0, i32 2
  store ptr %call30, ptr %tbuf, align 8
  %21 = load ptr, ptr %sp, align 8
  %tbuf31 = getelementptr inbounds %struct.logLuvState, ptr %21, i64 0, i32 2
  %22 = load ptr, ptr %tbuf31, align 8
  %cmp32 = icmp eq ptr %22, null
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %sw.epilog
  %23 = load ptr, ptr %tif.addr, align 8
  %24 = load ptr, ptr %23, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @LogLuvInitState.module, ptr noundef nonnull @.str.9, ptr noundef %24) #6
  store i32 0, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %sw.epilog
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end36, %if.then34, %sw.default, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvDecode24(ptr noundef %tif, ptr noundef %op, i64 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %occ.addr = alloca i64, align 8
  %sp = alloca ptr, align 8
  %cc = alloca i32, align 4
  %i = alloca i32, align 4
  %npixels = alloca i32, align 4
  %bp = alloca ptr, align 8
  %tp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i64 %occ, ptr %occ.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %cmp.not = icmp eq i16 %s, 0
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogLuvDecode24, ptr noundef nonnull @.str, i32 noundef 224, ptr noundef nonnull @.str.10) #5
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load ptr, ptr %sp, align 8
  %cmp3.not = icmp eq ptr %1, null
  br i1 %cmp3.not, label %cond.true9, label %cond.end11

cond.true9:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogLuvDecode24, ptr noundef nonnull @.str, i32 noundef 225, ptr noundef nonnull @.str.5) #5
  unreachable

cond.end11:                                       ; preds = %cond.end
  %2 = load i64, ptr %occ.addr, align 8
  %3 = load ptr, ptr %sp, align 8
  %pixel_size = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 1
  %4 = load i32, ptr %pixel_size, align 4
  %conv12 = sext i32 %4 to i64
  %div = sdiv i64 %2, %conv12
  %conv13 = trunc i64 %div to i32
  store i32 %conv13, ptr %npixels, align 4
  %5 = load ptr, ptr %sp, align 8
  %6 = load i32, ptr %5, align 8
  %cmp14 = icmp eq i32 %6, 2
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end11
  %7 = load ptr, ptr %op.addr, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end11
  %8 = load ptr, ptr %sp, align 8
  %tbuflen = getelementptr inbounds %struct.logLuvState, ptr %8, i64 0, i32 3
  %9 = load i16, ptr %tbuflen, align 8
  %conv16 = sext i16 %9 to i32
  %10 = load i32, ptr %npixels, align 4
  %cmp17.not = icmp sgt i32 %10, %conv16
  br i1 %cmp17.not, label %cond.true23, label %cond.end25

cond.true23:                                      ; preds = %if.else
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogLuvDecode24, ptr noundef nonnull @.str, i32 noundef 232, ptr noundef nonnull @.str.11) #5
  unreachable

cond.end25:                                       ; preds = %if.else
  %11 = load ptr, ptr %sp, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %11, i64 0, i32 2
  %12 = load ptr, ptr %tbuf, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end25, %if.then
  %storemerge = phi ptr [ %12, %cond.end25 ], [ %7, %if.then ]
  store ptr %storemerge, ptr %tp, align 8
  %13 = load i32, ptr %npixels, align 4
  %conv26 = sext i32 %13 to i64
  %mul = shl nsw i64 %conv26, 3
  call void @_TIFFmemset(ptr noundef %storemerge, i32 noundef 0, i64 noundef %mul) #6
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %14, i64 0, i32 42
  %15 = load ptr, ptr %tif_rawcp, align 8
  store ptr %15, ptr %bp, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %14, i64 0, i32 43
  %16 = load i64, ptr %tif_rawcc, align 8
  %conv27 = trunc i64 %16 to i32
  store i32 %conv27, ptr %cc, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %storemerge1 = phi i32 [ 0, %if.end ], [ %inc, %for.body ]
  store i32 %storemerge1, ptr %i, align 4
  %17 = load i32, ptr %npixels, align 4
  %cmp28 = icmp slt i32 %storemerge1, %17
  %18 = load i32, ptr %cc, align 4
  %cmp30 = icmp sgt i32 %18, 0
  %19 = select i1 %cmp28, i1 %cmp30, i1 false
  br i1 %19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load ptr, ptr %bp, align 8
  %21 = load i8, ptr %20, align 1
  %conv32 = zext i8 %21 to i64
  %shl = shl nuw nsw i64 %conv32, 16
  %arrayidx33 = getelementptr inbounds i8, ptr %20, i64 1
  %22 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %22 to i64
  %shl35 = shl nuw nsw i64 %conv34, 8
  %or = or i64 %shl, %shl35
  %23 = load ptr, ptr %bp, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %23, i64 2
  %24 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %24 to i64
  %or38 = or i64 %or, %conv37
  %25 = load ptr, ptr %tp, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom = sext i32 %26 to i64
  %arrayidx40 = getelementptr inbounds i64, ptr %25, i64 %idxprom
  store i64 %or38, ptr %arrayidx40, align 8
  %27 = load ptr, ptr %bp, align 8
  %add.ptr = getelementptr inbounds i8, ptr %27, i64 3
  store ptr %add.ptr, ptr %bp, align 8
  %28 = load i32, ptr %cc, align 4
  %sub = add nsw i32 %28, -3
  store i32 %sub, ptr %cc, align 4
  %29 = load i32, ptr %i, align 4
  %inc = add nsw i32 %29, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %30 = load ptr, ptr %bp, align 8
  %31 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp41 = getelementptr inbounds %struct.tiff, ptr %31, i64 0, i32 42
  store ptr %30, ptr %tif_rawcp41, align 8
  %32 = load i32, ptr %cc, align 4
  %conv42 = sext i32 %32 to i64
  %tif_rawcc43 = getelementptr inbounds %struct.tiff, ptr %31, i64 0, i32 43
  store i64 %conv42, ptr %tif_rawcc43, align 8
  %33 = load i32, ptr %i, align 4
  %34 = load i32, ptr %npixels, align 4
  %cmp44.not = icmp eq i32 %33, %34
  br i1 %cmp44.not, label %if.end48, label %if.then46

if.then46:                                        ; preds = %for.end
  %35 = load ptr, ptr %tif.addr, align 8
  %36 = load ptr, ptr %35, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %35, i64 0, i32 11
  %37 = load i64, ptr %tif_row, align 8
  %38 = load i32, ptr %npixels, align 4
  %39 = load i32, ptr %i, align 4
  %sub47 = sub nsw i32 %38, %39
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %36, ptr noundef nonnull @.str.12, i64 noundef %37, i32 noundef %sub47) #6
  br label %return

if.end48:                                         ; preds = %for.end
  %40 = load ptr, ptr %sp, align 8
  %tfunc = getelementptr inbounds %struct.logLuvState, ptr %40, i64 0, i32 4
  %41 = load ptr, ptr %tfunc, align 8
  %42 = load ptr, ptr %op.addr, align 8
  %43 = load i32, ptr %npixels, align 4
  call void %41(ptr noundef %40, ptr noundef %42, i32 noundef %43) #6
  br label %return

return:                                           ; preds = %if.end48, %if.then46
  %storemerge2 = phi i32 [ 1, %if.end48 ], [ 0, %if.then46 ]
  ret i32 %storemerge2
}

; Function Attrs: nounwind ssp uwtable
define internal void @Luv24toXYZ(ptr noundef %sp, ptr noundef %op, i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %luv = alloca ptr, align 8
  %xyz = alloca ptr, align 8
  store i32 %n, ptr %n.addr, align 4
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %sp, i64 0, i32 2
  %0 = load ptr, ptr %tbuf, align 8
  store ptr %0, ptr %luv, align 8
  store ptr %op, ptr %xyz, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %luv, align 8
  %3 = load i64, ptr %2, align 8
  %4 = load ptr, ptr %xyz, align 8
  call void @pix24toXYZ(i64 noundef %3, ptr noundef %4)
  %add.ptr = getelementptr inbounds float, ptr %4, i64 3
  store ptr %add.ptr, ptr %xyz, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %luv, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @Luv24toLuv48(ptr noundef %sp, ptr noundef %op, i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %luv = alloca ptr, align 8
  %luv3 = alloca ptr, align 8
  %u = alloca double, align 8
  %v = alloca double, align 8
  store i32 %n, ptr %n.addr, align 4
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %sp, i64 0, i32 2
  %0 = load ptr, ptr %tbuf, align 8
  store ptr %0, ptr %luv, align 8
  store ptr %op, ptr %luv3, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %luv, align 8
  %3 = load i64, ptr %2, align 8
  %shr = lshr i64 %3, 12
  %4 = trunc i64 %shr to i16
  %5 = and i16 %4, 4093
  %conv = add nuw nsw i16 %5, 13314
  %6 = load ptr, ptr %luv3, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %6, i64 1
  store ptr %incdec.ptr, ptr %luv3, align 8
  store i16 %conv, ptr %6, align 2
  %7 = load ptr, ptr %luv, align 8
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i32
  %conv2 = and i32 %9, 16383
  %call = call i32 @uv_decode(ptr noundef nonnull %u, ptr noundef nonnull %v, i32 noundef %conv2)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store double 0x3FCAF286BD156C1A, ptr %u, align 8
  store double 0x3FDE50D794B8199E, ptr %v, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %10 = load double, ptr %u, align 8
  %mul = fmul double %10, 3.276800e+04
  %conv5 = fptosi double %mul to i16
  %11 = load ptr, ptr %luv3, align 8
  %incdec.ptr6 = getelementptr inbounds i16, ptr %11, i64 1
  store ptr %incdec.ptr6, ptr %luv3, align 8
  store i16 %conv5, ptr %11, align 2
  %12 = load double, ptr %v, align 8
  %mul7 = fmul double %12, 3.276800e+04
  %conv8 = fptosi double %mul7 to i16
  %incdec.ptr9 = getelementptr inbounds i16, ptr %11, i64 2
  store ptr %incdec.ptr9, ptr %luv3, align 8
  store i16 %conv8, ptr %incdec.ptr6, align 2
  %13 = load ptr, ptr %luv, align 8
  %incdec.ptr10 = getelementptr inbounds i64, ptr %13, i64 1
  store ptr %incdec.ptr10, ptr %luv, align 8
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @Luv24toRGB(ptr noundef %sp, ptr noundef %op, i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %luv = alloca ptr, align 8
  %rgb = alloca ptr, align 8
  %xyz = alloca [3 x float], align 4
  store i32 %n, ptr %n.addr, align 4
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %sp, i64 0, i32 2
  %0 = load ptr, ptr %tbuf, align 8
  store ptr %0, ptr %luv, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %storemerge = phi ptr [ %op, %entry ], [ %add.ptr, %while.body ]
  store ptr %storemerge, ptr %rgb, align 8
  %1 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %luv, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %luv, align 8
  %3 = load i64, ptr %2, align 8
  call void @pix24toXYZ(i64 noundef %3, ptr noundef nonnull %xyz)
  %4 = load ptr, ptr %rgb, align 8
  call void @XYZtoRGB24(ptr noundef nonnull %xyz, ptr noundef %4)
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 3
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvDecode32(ptr noundef %tif, ptr noundef %op, i64 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %occ.addr = alloca i64, align 8
  %sp = alloca ptr, align 8
  %shft = alloca i32, align 4
  %i = alloca i32, align 4
  %npixels = alloca i32, align 4
  %bp = alloca ptr, align 8
  %tp = alloca ptr, align 8
  %b = alloca i64, align 8
  %cc = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i64 %occ, ptr %occ.addr, align 8
  %cmp.not = icmp eq i16 %s, 0
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogLuvDecode32, ptr noundef nonnull @.str, i32 noundef 269, ptr noundef nonnull @.str.10) #5
  unreachable

cond.end:                                         ; preds = %entry
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %cmp3.not = icmp eq ptr %1, null
  br i1 %cmp3.not, label %cond.true9, label %cond.end11

cond.true9:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogLuvDecode32, ptr noundef nonnull @.str, i32 noundef 271, ptr noundef nonnull @.str.5) #5
  unreachable

cond.end11:                                       ; preds = %cond.end
  %2 = load i64, ptr %occ.addr, align 8
  %3 = load ptr, ptr %sp, align 8
  %pixel_size = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 1
  %4 = load i32, ptr %pixel_size, align 4
  %conv12 = sext i32 %4 to i64
  %div = sdiv i64 %2, %conv12
  %conv13 = trunc i64 %div to i32
  store i32 %conv13, ptr %npixels, align 4
  %5 = load ptr, ptr %sp, align 8
  %6 = load i32, ptr %5, align 8
  %cmp14 = icmp eq i32 %6, 2
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end11
  %7 = load ptr, ptr %op.addr, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end11
  %8 = load ptr, ptr %sp, align 8
  %tbuflen = getelementptr inbounds %struct.logLuvState, ptr %8, i64 0, i32 3
  %9 = load i16, ptr %tbuflen, align 8
  %conv16 = sext i16 %9 to i32
  %10 = load i32, ptr %npixels, align 4
  %cmp17.not = icmp sgt i32 %10, %conv16
  br i1 %cmp17.not, label %cond.true23, label %cond.end25

cond.true23:                                      ; preds = %if.else
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogLuvDecode32, ptr noundef nonnull @.str, i32 noundef 278, ptr noundef nonnull @.str.11) #5
  unreachable

cond.end25:                                       ; preds = %if.else
  %11 = load ptr, ptr %sp, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %11, i64 0, i32 2
  %12 = load ptr, ptr %tbuf, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end25, %if.then
  %storemerge = phi ptr [ %12, %cond.end25 ], [ %7, %if.then ]
  store ptr %storemerge, ptr %tp, align 8
  %13 = load i32, ptr %npixels, align 4
  %conv26 = sext i32 %13 to i64
  %mul = shl nsw i64 %conv26, 3
  call void @_TIFFmemset(ptr noundef %storemerge, i32 noundef 0, i64 noundef %mul) #6
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %14, i64 0, i32 42
  %15 = load ptr, ptr %tif_rawcp, align 8
  store ptr %15, ptr %bp, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %14, i64 0, i32 43
  %16 = load i64, ptr %tif_rawcc, align 8
  %conv27 = trunc i64 %16 to i32
  store i32 %conv27, ptr %cc, align 4
  store i32 32, ptr %shft, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.end, %if.end
  %17 = load i32, ptr %shft, align 4
  %sub = add nsw i32 %17, -8
  store i32 %sub, ptr %shft, align 4
  %cmp28 = icmp sgt i32 %17, 7
  br i1 %cmp28, label %for.body, label %for.end74

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %if.end65, %for.body
  %18 = load i32, ptr %i, align 4
  %19 = load i32, ptr %npixels, align 4
  %cmp31 = icmp slt i32 %18, %19
  %20 = load i32, ptr %cc, align 4
  %cmp33 = icmp sgt i32 %20, 0
  %21 = select i1 %cmp31, i1 %cmp33, i1 false
  br i1 %21, label %for.body35, label %for.end

for.body35:                                       ; preds = %for.cond30
  %22 = load ptr, ptr %bp, align 8
  %23 = load i8, ptr %22, align 1
  %cmp37 = icmp slt i8 %23, 0
  br i1 %cmp37, label %if.then39, label %if.else45

if.then39:                                        ; preds = %for.body35
  %24 = load ptr, ptr %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %24, i64 1
  store ptr %incdec.ptr, ptr %bp, align 8
  %25 = load i8, ptr %24, align 1
  %conv40 = zext i8 %25 to i32
  %add = add nsw i32 %conv40, -126
  store i32 %add, ptr %rc, align 4
  %incdec.ptr41 = getelementptr inbounds i8, ptr %24, i64 2
  store ptr %incdec.ptr41, ptr %bp, align 8
  %26 = load i8, ptr %incdec.ptr, align 1
  %conv42 = zext i8 %26 to i64
  %27 = load i32, ptr %shft, align 4
  %sh_prom = zext i32 %27 to i64
  %shl = shl i64 %conv42, %sh_prom
  store i64 %shl, ptr %b, align 8
  %28 = load i32, ptr %cc, align 4
  %sub43 = add nsw i32 %28, -2
  store i32 %sub43, ptr %cc, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then39
  %29 = load i32, ptr %rc, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, ptr %rc, align 4
  %tobool44.not = icmp eq i32 %29, 0
  br i1 %tobool44.not, label %if.end65, label %while.body

while.body:                                       ; preds = %while.cond
  %30 = load i64, ptr %b, align 8
  %31 = load ptr, ptr %tp, align 8
  %32 = load i32, ptr %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %i, align 4
  %idxprom = sext i32 %32 to i64
  %arrayidx = getelementptr inbounds i64, ptr %31, i64 %idxprom
  %33 = load i64, ptr %arrayidx, align 8
  %or = or i64 %33, %30
  store i64 %or, ptr %arrayidx, align 8
  br label %while.cond, !llvm.loop !15

if.else45:                                        ; preds = %for.body35
  %34 = load ptr, ptr %bp, align 8
  %incdec.ptr46 = getelementptr inbounds i8, ptr %34, i64 1
  store ptr %incdec.ptr46, ptr %bp, align 8
  %35 = load i8, ptr %34, align 1
  %conv47 = zext i8 %35 to i32
  store i32 %conv47, ptr %rc, align 4
  br label %while.cond48

while.cond48:                                     ; preds = %while.body55, %if.else45
  %36 = load i32, ptr %cc, align 4
  %dec49 = add nsw i32 %36, -1
  store i32 %dec49, ptr %cc, align 4
  %tobool50.not = icmp eq i32 %dec49, 0
  br i1 %tobool50.not, label %if.end65, label %land.rhs51

land.rhs51:                                       ; preds = %while.cond48
  %37 = load i32, ptr %rc, align 4
  %dec52 = add nsw i32 %37, -1
  store i32 %dec52, ptr %rc, align 4
  %tobool53 = icmp ne i32 %37, 0
  br i1 %tobool53, label %while.body55, label %if.end65

while.body55:                                     ; preds = %land.rhs51
  %38 = load ptr, ptr %bp, align 8
  %incdec.ptr56 = getelementptr inbounds i8, ptr %38, i64 1
  store ptr %incdec.ptr56, ptr %bp, align 8
  %39 = load i8, ptr %38, align 1
  %conv57 = zext i8 %39 to i64
  %40 = load i32, ptr %shft, align 4
  %sh_prom58 = zext i32 %40 to i64
  %shl59 = shl i64 %conv57, %sh_prom58
  %41 = load ptr, ptr %tp, align 8
  %42 = load i32, ptr %i, align 4
  %inc60 = add nsw i32 %42, 1
  store i32 %inc60, ptr %i, align 4
  %idxprom61 = sext i32 %42 to i64
  %arrayidx62 = getelementptr inbounds i64, ptr %41, i64 %idxprom61
  %43 = load i64, ptr %arrayidx62, align 8
  %or63 = or i64 %43, %shl59
  store i64 %or63, ptr %arrayidx62, align 8
  br label %while.cond48, !llvm.loop !16

if.end65:                                         ; preds = %land.rhs51, %while.cond48, %while.cond
  br label %for.cond30, !llvm.loop !17

for.end:                                          ; preds = %for.cond30
  %44 = load i32, ptr %i, align 4
  %45 = load i32, ptr %npixels, align 4
  %cmp66.not = icmp eq i32 %44, %45
  br i1 %cmp66.not, label %for.cond, label %if.then68, !llvm.loop !18

if.then68:                                        ; preds = %for.end
  %46 = load ptr, ptr %tif.addr, align 8
  %47 = load ptr, ptr %46, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %46, i64 0, i32 11
  %48 = load i64, ptr %tif_row, align 8
  %49 = load i32, ptr %npixels, align 4
  %50 = load i32, ptr %i, align 4
  %sub69 = sub nsw i32 %49, %50
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %47, ptr noundef nonnull @.str.13, i64 noundef %48, i32 noundef %sub69) #6
  %51 = load ptr, ptr %bp, align 8
  %52 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp70 = getelementptr inbounds %struct.tiff, ptr %52, i64 0, i32 42
  store ptr %51, ptr %tif_rawcp70, align 8
  %53 = load i32, ptr %cc, align 4
  %conv71 = sext i32 %53 to i64
  %tif_rawcc72 = getelementptr inbounds %struct.tiff, ptr %52, i64 0, i32 43
  store i64 %conv71, ptr %tif_rawcc72, align 8
  br label %return

for.end74:                                        ; preds = %for.cond
  %54 = load ptr, ptr %sp, align 8
  %tfunc = getelementptr inbounds %struct.logLuvState, ptr %54, i64 0, i32 4
  %55 = load ptr, ptr %tfunc, align 8
  %56 = load ptr, ptr %op.addr, align 8
  %57 = load i32, ptr %npixels, align 4
  call void %55(ptr noundef %54, ptr noundef %56, i32 noundef %57) #6
  %58 = load ptr, ptr %bp, align 8
  %59 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp75 = getelementptr inbounds %struct.tiff, ptr %59, i64 0, i32 42
  store ptr %58, ptr %tif_rawcp75, align 8
  %60 = load i32, ptr %cc, align 4
  %conv76 = sext i32 %60 to i64
  %tif_rawcc77 = getelementptr inbounds %struct.tiff, ptr %59, i64 0, i32 43
  store i64 %conv76, ptr %tif_rawcc77, align 8
  br label %return

return:                                           ; preds = %for.end74, %if.then68
  %storemerge1 = phi i32 [ 1, %for.end74 ], [ 0, %if.then68 ]
  ret i32 %storemerge1
}

; Function Attrs: nounwind ssp uwtable
define internal void @Luv32toXYZ(ptr noundef %sp, ptr noundef %op, i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %luv = alloca ptr, align 8
  %xyz = alloca ptr, align 8
  store i32 %n, ptr %n.addr, align 4
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %sp, i64 0, i32 2
  %0 = load ptr, ptr %tbuf, align 8
  store ptr %0, ptr %luv, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %storemerge = phi ptr [ %op, %entry ], [ %add.ptr, %while.body ]
  store ptr %storemerge, ptr %xyz, align 8
  %1 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %luv, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %luv, align 8
  %3 = load i64, ptr %2, align 8
  %4 = load ptr, ptr %xyz, align 8
  call void @pix32toXYZ(i64 noundef %3, ptr noundef %4)
  %add.ptr = getelementptr inbounds float, ptr %4, i64 3
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @Luv32toLuv48(ptr noundef %sp, ptr noundef %op, i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %luv = alloca ptr, align 8
  %luv3 = alloca ptr, align 8
  %u = alloca double, align 8
  %v = alloca double, align 8
  store i32 %n, ptr %n.addr, align 4
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %sp, i64 0, i32 2
  %0 = load ptr, ptr %tbuf, align 8
  store ptr %0, ptr %luv, align 8
  store ptr %op, ptr %luv3, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %luv, align 8
  %3 = load i64, ptr %2, align 8
  %shr = lshr i64 %3, 16
  %conv = trunc i64 %shr to i16
  %4 = load ptr, ptr %luv3, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %4, i64 1
  store ptr %incdec.ptr, ptr %luv3, align 8
  store i16 %conv, ptr %4, align 2
  %5 = load ptr, ptr %luv, align 8
  %6 = load i64, ptr %5, align 8
  %shr1 = lshr i64 %6, 8
  %and = and i64 %shr1, 255
  %conv2 = uitofp i64 %and to double
  %add = fadd double %conv2, 5.000000e-01
  %mul = fmul double %add, 0x3F63FB013FB013FB
  store double %mul, ptr %u, align 8
  %7 = load ptr, ptr %luv, align 8
  %8 = load i64, ptr %7, align 8
  %and3 = and i64 %8, 255
  %conv4 = uitofp i64 %and3 to double
  %add5 = fadd double %conv4, 5.000000e-01
  %mul6 = fmul double %add5, 0x3F63FB013FB013FB
  store double %mul6, ptr %v, align 8
  %9 = load double, ptr %u, align 8
  %mul7 = fmul double %9, 3.276800e+04
  %conv8 = fptosi double %mul7 to i16
  %10 = load ptr, ptr %luv3, align 8
  %incdec.ptr9 = getelementptr inbounds i16, ptr %10, i64 1
  store ptr %incdec.ptr9, ptr %luv3, align 8
  store i16 %conv8, ptr %10, align 2
  %11 = load double, ptr %v, align 8
  %mul10 = fmul double %11, 3.276800e+04
  %conv11 = fptosi double %mul10 to i16
  %incdec.ptr12 = getelementptr inbounds i16, ptr %10, i64 2
  store ptr %incdec.ptr12, ptr %luv3, align 8
  store i16 %conv11, ptr %incdec.ptr9, align 2
  %12 = load ptr, ptr %luv, align 8
  %incdec.ptr13 = getelementptr inbounds i64, ptr %12, i64 1
  store ptr %incdec.ptr13, ptr %luv, align 8
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @Luv32toRGB(ptr noundef %sp, ptr noundef %op, i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %luv = alloca ptr, align 8
  %rgb = alloca ptr, align 8
  %xyz = alloca [3 x float], align 4
  store i32 %n, ptr %n.addr, align 4
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %sp, i64 0, i32 2
  %0 = load ptr, ptr %tbuf, align 8
  store ptr %0, ptr %luv, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %storemerge = phi ptr [ %op, %entry ], [ %add.ptr, %while.body ]
  store ptr %storemerge, ptr %rgb, align 8
  %1 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %luv, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %luv, align 8
  %3 = load i64, ptr %2, align 8
  call void @pix32toXYZ(i64 noundef %3, ptr noundef nonnull %xyz)
  %4 = load ptr, ptr %rgb, align 8
  call void @XYZtoRGB24(ptr noundef nonnull %xyz, ptr noundef %4)
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 3
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
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogL16InitState, ptr noundef nonnull @.str, i32 noundef 1025, ptr noundef nonnull @.str.5) #5
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load ptr, ptr %td, align 8
  %td_photometric = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i64 0, i32 11
  %2 = load i16, ptr %td_photometric, align 2
  %cmp2.not = icmp eq i16 %2, -32692
  br i1 %cmp2.not, label %cond.end10, label %cond.true8

cond.true8:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogL16InitState, ptr noundef nonnull @.str, i32 noundef 1026, ptr noundef nonnull @.str.14) #5
  unreachable

cond.end10:                                       ; preds = %cond.end
  %3 = load ptr, ptr %sp, align 8
  %4 = load i32, ptr %3, align 8
  %cmp11 = icmp eq i32 %4, -1
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end10
  %5 = load ptr, ptr %td, align 8
  %call = call i32 @LogL16GuessDataFmt(ptr noundef %5)
  %6 = load ptr, ptr %sp, align 8
  store i32 %call, ptr %6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end10
  %7 = load ptr, ptr %sp, align 8
  %8 = load i32, ptr %7, align 8
  switch i32 %8, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb15
    i32 3, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.end
  %9 = load ptr, ptr %sp, align 8
  %pixel_size = getelementptr inbounds %struct.logLuvState, ptr %9, i64 0, i32 1
  store i32 4, ptr %pixel_size, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  %10 = load ptr, ptr %sp, align 8
  %pixel_size16 = getelementptr inbounds %struct.logLuvState, ptr %10, i64 0, i32 1
  store i32 2, ptr %pixel_size16, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  %11 = load ptr, ptr %sp, align 8
  %pixel_size18 = getelementptr inbounds %struct.logLuvState, ptr %11, i64 0, i32 1
  store i32 1, ptr %pixel_size18, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %12 = load ptr, ptr %tif.addr, align 8
  %13 = load ptr, ptr %12, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %13, ptr noundef nonnull @.str.15) #6
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb15, %sw.bb
  %14 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %14, i64 0, i32 1
  %15 = load i64, ptr %td_imagewidth, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %14, i64 0, i32 16
  %16 = load i64, ptr %td_rowsperstrip, align 8
  %mul = mul i64 %15, %16
  %conv19 = trunc i64 %mul to i16
  %17 = load ptr, ptr %sp, align 8
  %tbuflen = getelementptr inbounds %struct.logLuvState, ptr %17, i64 0, i32 3
  store i16 %conv19, ptr %tbuflen, align 8
  %sext = shl i64 %mul, 48
  %mul22 = ashr exact i64 %sext, 47
  %call23 = call ptr @_TIFFmalloc(i64 noundef %mul22) #6
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %17, i64 0, i32 2
  store ptr %call23, ptr %tbuf, align 8
  %18 = load ptr, ptr %sp, align 8
  %tbuf24 = getelementptr inbounds %struct.logLuvState, ptr %18, i64 0, i32 2
  %19 = load ptr, ptr %tbuf24, align 8
  %cmp25 = icmp eq ptr %19, null
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %sw.epilog
  %20 = load ptr, ptr %tif.addr, align 8
  %21 = load ptr, ptr %20, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @LogL16InitState.module, ptr noundef nonnull @.str.9, ptr noundef %21) #6
  store i32 0, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %sw.epilog
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.then27, %sw.default
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogL16Decode(ptr noundef %tif, ptr noundef %op, i64 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %occ.addr = alloca i64, align 8
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
  store i64 %occ, ptr %occ.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %cmp.not = icmp eq i16 %s, 0
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogL16Decode, ptr noundef nonnull @.str, i32 noundef 169, ptr noundef nonnull @.str.10) #5
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load ptr, ptr %sp, align 8
  %cmp3.not = icmp eq ptr %1, null
  br i1 %cmp3.not, label %cond.true9, label %cond.end11

cond.true9:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogL16Decode, ptr noundef nonnull @.str, i32 noundef 170, ptr noundef nonnull @.str.5) #5
  unreachable

cond.end11:                                       ; preds = %cond.end
  %2 = load i64, ptr %occ.addr, align 8
  %3 = load ptr, ptr %sp, align 8
  %pixel_size = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 1
  %4 = load i32, ptr %pixel_size, align 4
  %conv12 = sext i32 %4 to i64
  %div = sdiv i64 %2, %conv12
  %conv13 = trunc i64 %div to i32
  store i32 %conv13, ptr %npixels, align 4
  %5 = load ptr, ptr %sp, align 8
  %6 = load i32, ptr %5, align 8
  %cmp14 = icmp eq i32 %6, 1
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end11
  %7 = load ptr, ptr %op.addr, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end11
  %8 = load ptr, ptr %sp, align 8
  %tbuflen = getelementptr inbounds %struct.logLuvState, ptr %8, i64 0, i32 3
  %9 = load i16, ptr %tbuflen, align 8
  %conv16 = sext i16 %9 to i32
  %10 = load i32, ptr %npixels, align 4
  %cmp17.not = icmp sgt i32 %10, %conv16
  br i1 %cmp17.not, label %cond.true23, label %cond.end25

cond.true23:                                      ; preds = %if.else
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogL16Decode, ptr noundef nonnull @.str, i32 noundef 177, ptr noundef nonnull @.str.11) #5
  unreachable

cond.end25:                                       ; preds = %if.else
  %11 = load ptr, ptr %sp, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %11, i64 0, i32 2
  %12 = load ptr, ptr %tbuf, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end25, %if.then
  %storemerge = phi ptr [ %12, %cond.end25 ], [ %7, %if.then ]
  store ptr %storemerge, ptr %tp, align 8
  %13 = load i32, ptr %npixels, align 4
  %conv26 = sext i32 %13 to i64
  %mul = shl nsw i64 %conv26, 1
  call void @_TIFFmemset(ptr noundef %storemerge, i32 noundef 0, i64 noundef %mul) #6
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %14, i64 0, i32 42
  %15 = load ptr, ptr %tif_rawcp, align 8
  store ptr %15, ptr %bp, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %14, i64 0, i32 43
  %16 = load i64, ptr %tif_rawcc, align 8
  %conv27 = trunc i64 %16 to i32
  store i32 %conv27, ptr %cc, align 4
  store i32 16, ptr %shft, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.end, %if.end
  %17 = load i32, ptr %shft, align 4
  %sub = add nsw i32 %17, -8
  store i32 %sub, ptr %shft, align 4
  %cmp28 = icmp sgt i32 %17, 7
  br i1 %cmp28, label %for.body, label %for.end81

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %if.end72, %for.body
  %18 = load i32, ptr %i, align 4
  %19 = load i32, ptr %npixels, align 4
  %cmp31 = icmp slt i32 %18, %19
  %20 = load i32, ptr %cc, align 4
  %cmp33 = icmp sgt i32 %20, 0
  %21 = select i1 %cmp31, i1 %cmp33, i1 false
  br i1 %21, label %for.body35, label %for.end

for.body35:                                       ; preds = %for.cond30
  %22 = load ptr, ptr %bp, align 8
  %23 = load i8, ptr %22, align 1
  %cmp37 = icmp slt i8 %23, 0
  br i1 %cmp37, label %if.then39, label %if.else50

if.then39:                                        ; preds = %for.body35
  %24 = load ptr, ptr %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %24, i64 1
  store ptr %incdec.ptr, ptr %bp, align 8
  %25 = load i8, ptr %24, align 1
  %conv40 = zext i8 %25 to i32
  %add = add nsw i32 %conv40, -126
  store i32 %add, ptr %rc, align 4
  %incdec.ptr41 = getelementptr inbounds i8, ptr %24, i64 2
  store ptr %incdec.ptr41, ptr %bp, align 8
  %26 = load i8, ptr %incdec.ptr, align 1
  %conv43 = zext i8 %26 to i32
  %27 = load i32, ptr %shft, align 4
  %shl = shl i32 %conv43, %27
  %conv44 = trunc i32 %shl to i16
  store i16 %conv44, ptr %b, align 2
  %28 = load i32, ptr %cc, align 4
  %sub45 = add nsw i32 %28, -2
  store i32 %sub45, ptr %cc, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then39
  %29 = load i32, ptr %rc, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, ptr %rc, align 4
  %tobool46.not = icmp eq i32 %29, 0
  br i1 %tobool46.not, label %if.end72, label %while.body

while.body:                                       ; preds = %while.cond
  %30 = load i16, ptr %b, align 2
  %31 = load ptr, ptr %tp, align 8
  %32 = load i32, ptr %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %i, align 4
  %idxprom = sext i32 %32 to i64
  %arrayidx = getelementptr inbounds i16, ptr %31, i64 %idxprom
  %33 = load i16, ptr %arrayidx, align 2
  %or3 = or i16 %33, %30
  store i16 %or3, ptr %arrayidx, align 2
  br label %while.cond, !llvm.loop !22

if.else50:                                        ; preds = %for.body35
  %34 = load ptr, ptr %bp, align 8
  %incdec.ptr51 = getelementptr inbounds i8, ptr %34, i64 1
  store ptr %incdec.ptr51, ptr %bp, align 8
  %35 = load i8, ptr %34, align 1
  %conv52 = zext i8 %35 to i32
  store i32 %conv52, ptr %rc, align 4
  br label %while.cond53

while.cond53:                                     ; preds = %while.body60, %if.else50
  %36 = load i32, ptr %cc, align 4
  %dec54 = add nsw i32 %36, -1
  store i32 %dec54, ptr %cc, align 4
  %tobool55.not = icmp eq i32 %dec54, 0
  br i1 %tobool55.not, label %if.end72, label %land.rhs56

land.rhs56:                                       ; preds = %while.cond53
  %37 = load i32, ptr %rc, align 4
  %dec57 = add nsw i32 %37, -1
  store i32 %dec57, ptr %rc, align 4
  %tobool58 = icmp ne i32 %37, 0
  br i1 %tobool58, label %while.body60, label %if.end72

while.body60:                                     ; preds = %land.rhs56
  %38 = load ptr, ptr %bp, align 8
  %incdec.ptr61 = getelementptr inbounds i8, ptr %38, i64 1
  store ptr %incdec.ptr61, ptr %bp, align 8
  %39 = load i8, ptr %38, align 1
  %conv63 = zext i8 %39 to i32
  %40 = load i32, ptr %shft, align 4
  %shl64 = shl i32 %conv63, %40
  %41 = load ptr, ptr %tp, align 8
  %42 = load i32, ptr %i, align 4
  %inc65 = add nsw i32 %42, 1
  store i32 %inc65, ptr %i, align 4
  %idxprom66 = sext i32 %42 to i64
  %arrayidx67 = getelementptr inbounds i16, ptr %41, i64 %idxprom66
  %43 = load i16, ptr %arrayidx67, align 2
  %44 = trunc i32 %shl64 to i16
  %conv70 = or i16 %43, %44
  store i16 %conv70, ptr %arrayidx67, align 2
  br label %while.cond53, !llvm.loop !23

if.end72:                                         ; preds = %land.rhs56, %while.cond53, %while.cond
  br label %for.cond30, !llvm.loop !24

for.end:                                          ; preds = %for.cond30
  %45 = load i32, ptr %i, align 4
  %46 = load i32, ptr %npixels, align 4
  %cmp73.not = icmp eq i32 %45, %46
  br i1 %cmp73.not, label %for.cond, label %if.then75, !llvm.loop !25

if.then75:                                        ; preds = %for.end
  %47 = load ptr, ptr %tif.addr, align 8
  %48 = load ptr, ptr %47, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %47, i64 0, i32 11
  %49 = load i64, ptr %tif_row, align 8
  %50 = load i32, ptr %npixels, align 4
  %51 = load i32, ptr %i, align 4
  %sub76 = sub nsw i32 %50, %51
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %48, ptr noundef nonnull @.str.16, i64 noundef %49, i32 noundef %sub76) #6
  %52 = load ptr, ptr %bp, align 8
  %53 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp77 = getelementptr inbounds %struct.tiff, ptr %53, i64 0, i32 42
  store ptr %52, ptr %tif_rawcp77, align 8
  %54 = load i32, ptr %cc, align 4
  %conv78 = sext i32 %54 to i64
  %tif_rawcc79 = getelementptr inbounds %struct.tiff, ptr %53, i64 0, i32 43
  store i64 %conv78, ptr %tif_rawcc79, align 8
  br label %return

for.end81:                                        ; preds = %for.cond
  %55 = load ptr, ptr %sp, align 8
  %tfunc = getelementptr inbounds %struct.logLuvState, ptr %55, i64 0, i32 4
  %56 = load ptr, ptr %tfunc, align 8
  %57 = load ptr, ptr %op.addr, align 8
  %58 = load i32, ptr %npixels, align 4
  call void %56(ptr noundef %55, ptr noundef %57, i32 noundef %58) #6
  %59 = load ptr, ptr %bp, align 8
  %60 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp82 = getelementptr inbounds %struct.tiff, ptr %60, i64 0, i32 42
  store ptr %59, ptr %tif_rawcp82, align 8
  %61 = load i32, ptr %cc, align 4
  %conv83 = sext i32 %61 to i64
  %tif_rawcc84 = getelementptr inbounds %struct.tiff, ptr %60, i64 0, i32 43
  store i64 %conv83, ptr %tif_rawcc84, align 8
  br label %return

return:                                           ; preds = %for.end81, %if.then75
  %storemerge1 = phi i32 [ 1, %for.end81 ], [ 0, %if.then75 ]
  ret i32 %storemerge1
}

; Function Attrs: nounwind ssp uwtable
define internal void @L16toY(ptr noundef %sp, ptr noundef %op, i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %l16 = alloca ptr, align 8
  %yp = alloca ptr, align 8
  store i32 %n, ptr %n.addr, align 4
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %sp, i64 0, i32 2
  %0 = load ptr, ptr %tbuf, align 8
  store ptr %0, ptr %l16, align 8
  store ptr %op, ptr %yp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %l16, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %l16, align 8
  %3 = load i16, ptr %2, align 2
  %conv = sext i16 %3 to i32
  %call = call double @pix16toY(i32 noundef %conv)
  %conv1 = fptrunc double %call to float
  %4 = load ptr, ptr %yp, align 8
  %incdec.ptr2 = getelementptr inbounds float, ptr %4, i64 1
  store ptr %incdec.ptr2, ptr %yp, align 8
  store float %conv1, ptr %4, align 4
  br label %while.cond, !llvm.loop !26

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @L16toGry(ptr noundef %sp, ptr noundef %op, i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %l16 = alloca ptr, align 8
  %gp = alloca ptr, align 8
  %Y = alloca double, align 8
  store i32 %n, ptr %n.addr, align 4
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %sp, i64 0, i32 2
  %0 = load ptr, ptr %tbuf, align 8
  store ptr %0, ptr %l16, align 8
  store ptr %op, ptr %gp, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end8, %entry
  %1 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %l16, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %l16, align 8
  %3 = load i16, ptr %2, align 2
  %conv = sext i16 %3 to i32
  %call = call double @pix16toY(i32 noundef %conv)
  store double %call, ptr %Y, align 8
  %cmp1 = fcmp ugt double %call, 0.000000e+00
  br i1 %cmp1, label %cond.false, label %cond.end8

cond.false:                                       ; preds = %while.body
  %4 = load double, ptr %Y, align 8
  %cmp3 = fcmp ult double %4, 1.000000e+00
  %5 = load double, ptr %Y, align 8
  %6 = call double @llvm.sqrt.f64(double %5)
  %mul = fmul double %6, 2.560000e+02
  %conv7 = fptosi double %mul to i32
  %cond = select i1 %cmp3, i32 %conv7, i32 255
  br label %cond.end8

cond.end8:                                        ; preds = %while.body, %cond.false
  %cond9 = phi i32 [ %cond, %cond.false ], [ 0, %while.body ]
  %conv10 = trunc i32 %cond9 to i8
  %7 = load ptr, ptr %gp, align 8
  %incdec.ptr11 = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %incdec.ptr11, ptr %gp, align 8
  store i8 %conv10, ptr %7, align 1
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
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %td, i64 0, i32 8
  %0 = load i16, ptr %td_bitspersample, align 8
  %conv = zext i16 %0 to i32
  %shl = shl nuw nsw i32 %conv, 3
  %td_sampleformat = getelementptr inbounds %struct.TIFFDirectory, ptr %td, i64 0, i32 9
  %1 = load i16, ptr %td_sampleformat, align 2
  %conv1 = zext i16 %1 to i32
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
  %2 = load ptr, ptr %td.addr, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %2, i64 0, i32 15
  %3 = load i16, ptr %td_samplesperpixel, align 2
  switch i16 %3, label %sw.default13 [
    i16 1, label %sw.bb6
    i16 3, label %sw.bb8
  ]

sw.bb6:                                           ; preds = %sw.epilog
  %4 = load i32, ptr %guess, align 4
  %cmp.not = icmp eq i32 %4, 2
  %spec.store.select = select i1 %cmp.not, i32 %4, i32 -1
  store i32 %spec.store.select, ptr %guess, align 4
  br label %sw.epilog14

sw.bb8:                                           ; preds = %sw.epilog
  %5 = load i32, ptr %guess, align 4
  %cmp9 = icmp eq i32 %5, 2
  %spec.store.select1 = select i1 %cmp9, i32 -1, i32 %5
  store i32 %spec.store.select1, ptr %guess, align 4
  br label %sw.epilog14

sw.default13:                                     ; preds = %sw.epilog
  store i32 -1, ptr %guess, align 4
  br label %sw.epilog14

sw.epilog14:                                      ; preds = %sw.default13, %sw.bb8, %sw.bb6
  %6 = load i32, ptr %guess, align 4
  ret i32 %6
}

declare void @_TIFFmemset(ptr noundef, i32 noundef, i64 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @pix24toXYZ(i64 noundef %p, ptr noundef %XYZ) #0 {
entry:
  %p.addr = alloca i64, align 8
  %XYZ.addr = alloca ptr, align 8
  %Le = alloca i32, align 4
  %L = alloca double, align 8
  %u = alloca double, align 8
  %v = alloca double, align 8
  %s = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  store i64 %p, ptr %p.addr, align 8
  store ptr %XYZ, ptr %XYZ.addr, align 8
  %0 = trunc i64 %p to i32
  %1 = lshr i32 %0, 14
  %conv = and i32 %1, 1023
  store i32 %conv, ptr %Le, align 4
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr inbounds float, ptr %2, i64 1
  store float 0.000000e+00, ptr %arrayidx2, align 4
  store float 0.000000e+00, ptr %2, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %Le, align 4
  %conv4 = sitofp i32 %3 to double
  %add = fadd double %conv4, 5.000000e-01
  %4 = call double @llvm.fmuladd.f64(double %add, double 0x3F862E42FEFA39EF, double 0xC020A2B23F3BAB73)
  %5 = call double @llvm.exp.f64(double %4)
  store double %5, ptr %L, align 8
  %6 = load i64, ptr %p.addr, align 8
  %7 = trunc i64 %6 to i32
  %conv6 = and i32 %7, 16383
  %call = call i32 @uv_decode(ptr noundef nonnull %u, ptr noundef nonnull %v, i32 noundef %conv6)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store double 0x3FCAF286BD156C1A, ptr %u, align 8
  store double 0x3FDE50D794B8199E, ptr %v, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end
  %8 = load double, ptr %u, align 8
  %9 = load double, ptr %v, align 8
  %neg = fmul double %9, -1.600000e+01
  %10 = call double @llvm.fmuladd.f64(double %8, double 6.000000e+00, double %neg)
  %add12 = fadd double %10, 1.200000e+01
  %div = fdiv double 1.000000e+00, %add12
  store double %div, ptr %s, align 8
  %11 = load double, ptr %u, align 8
  %mul = fmul double %11, 9.000000e+00
  %mul13 = fmul double %mul, %div
  store double %mul13, ptr %x, align 8
  %12 = load double, ptr %v, align 8
  %mul14 = fmul double %12, 4.000000e+00
  %13 = load double, ptr %s, align 8
  %mul15 = fmul double %mul14, %13
  store double %mul15, ptr %y, align 8
  %div16 = fdiv double %mul13, %mul15
  %14 = load double, ptr %L, align 8
  %mul17 = fmul double %div16, %14
  %conv18 = fptrunc double %mul17 to float
  %15 = load ptr, ptr %XYZ.addr, align 8
  store float %conv18, ptr %15, align 4
  %conv20 = fptrunc double %14 to float
  %arrayidx21 = getelementptr inbounds float, ptr %15, i64 1
  store float %conv20, ptr %arrayidx21, align 4
  %16 = load double, ptr %x, align 8
  %sub = fsub double 1.000000e+00, %16
  %17 = load double, ptr %y, align 8
  %sub22 = fsub double %sub, %17
  %div23 = fdiv double %sub22, %17
  %18 = load double, ptr %L, align 8
  %mul24 = fmul double %div23, %18
  %conv25 = fptrunc double %mul24 to float
  %19 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx26 = getelementptr inbounds float, ptr %19, i64 2
  store float %conv25, ptr %arrayidx26, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.exp.f64(double) #4

; Function Attrs: nounwind ssp uwtable
define internal i32 @uv_decode(ptr noundef %up, ptr noundef %vp, i32 noundef %c) #0 {
entry:
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
  %cmp = icmp slt i32 %c, 0
  %0 = load i32, ptr %c.addr, align 4
  %cmp1 = icmp sgt i32 %0, 16288
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  store i32 0, ptr %lower, align 4
  store i32 163, ptr %upper, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %1 = load i32, ptr %lower, align 4
  %2 = load i32, ptr %upper, align 4
  %add = add nsw i32 %1, %2
  %shr = ashr i32 %add, 1
  store i32 %shr, ptr %vi, align 4
  %3 = load i32, ptr %c.addr, align 4
  %idxprom = sext i32 %shr to i64
  %ncum = getelementptr inbounds [163 x %struct.anon], ptr @uv_row, i64 0, i64 %idxprom, i32 2
  %4 = load i16, ptr %ncum, align 2
  %conv = sext i16 %4 to i32
  %sub = sub nsw i32 %3, %conv
  store i32 %sub, ptr %ui, align 4
  %cmp2 = icmp sgt i32 %sub, 0
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %do.body
  %5 = load i32, ptr %vi, align 4
  store i32 %5, ptr %lower, align 4
  br label %do.cond

if.else:                                          ; preds = %do.body
  %6 = load i32, ptr %ui, align 4
  %cmp5 = icmp slt i32 %6, 0
  br i1 %cmp5, label %if.then7, label %do.end

if.then7:                                         ; preds = %if.else
  %7 = load i32, ptr %vi, align 4
  store i32 %7, ptr %upper, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.then4, %if.then7
  %8 = load i32, ptr %upper, align 4
  %9 = load i32, ptr %lower, align 4
  %sub11 = sub nsw i32 %8, %9
  %cmp12 = icmp sgt i32 %sub11, 1
  br i1 %cmp12, label %do.body, label %do.end, !llvm.loop !28

do.end:                                           ; preds = %if.else, %do.cond
  %10 = load i32, ptr %lower, align 4
  store i32 %10, ptr %vi, align 4
  %11 = load i32, ptr %c.addr, align 4
  %idxprom14 = sext i32 %10 to i64
  %ncum16 = getelementptr inbounds [163 x %struct.anon], ptr @uv_row, i64 0, i64 %idxprom14, i32 2
  %12 = load i16, ptr %ncum16, align 2
  %conv17 = sext i16 %12 to i32
  %sub18 = sub nsw i32 %11, %conv17
  store i32 %sub18, ptr %ui, align 4
  %13 = load i32, ptr %vi, align 4
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds [163 x %struct.anon], ptr @uv_row, i64 0, i64 %idxprom19
  %14 = load float, ptr %arrayidx20, align 4
  %conv21 = fpext float %14 to double
  %conv22 = sitofp i32 %sub18 to double
  %add23 = fadd double %conv22, 5.000000e-01
  %15 = call double @llvm.fmuladd.f64(double %add23, double 0x3F6CAC0840000000, double %conv21)
  %16 = load ptr, ptr %up.addr, align 8
  store double %15, ptr %16, align 8
  %17 = load i32, ptr %vi, align 4
  %conv24 = sitofp i32 %17 to double
  %add25 = fadd double %conv24, 5.000000e-01
  %18 = call double @llvm.fmuladd.f64(double %add25, double 0x3F6CAC0840000000, double 0x3F9158B820000000)
  %19 = load ptr, ptr %vp.addr, align 8
  store double %18, ptr %19, align 8
  br label %return

return:                                           ; preds = %entry, %do.end
  %storemerge = phi i32 [ 0, %do.end ], [ -1, %entry ]
  ret i32 %storemerge
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
  %0 = load float, ptr %xyz, align 4
  %conv = fpext float %0 to double
  %arrayidx1 = getelementptr inbounds float, ptr %xyz, i64 1
  %1 = load float, ptr %arrayidx1, align 4
  %conv2 = fpext float %1 to double
  %mul3 = fmul double %conv2, -1.276000e+00
  %2 = call double @llvm.fmuladd.f64(double %conv, double 2.690000e+00, double %mul3)
  %3 = load ptr, ptr %xyz.addr, align 8
  %arrayidx4 = getelementptr inbounds float, ptr %3, i64 2
  %4 = load float, ptr %arrayidx4, align 4
  %conv5 = fpext float %4 to double
  %5 = call double @llvm.fmuladd.f64(double %conv5, double -4.140000e-01, double %2)
  store double %5, ptr %r, align 8
  %6 = load float, ptr %3, align 4
  %conv7 = fpext float %6 to double
  %7 = load ptr, ptr %xyz.addr, align 8
  %arrayidx8 = getelementptr inbounds float, ptr %7, i64 1
  %8 = load float, ptr %arrayidx8, align 4
  %conv9 = fpext float %8 to double
  %mul10 = fmul double %conv9, 1.978000e+00
  %9 = call double @llvm.fmuladd.f64(double %conv7, double -1.022000e+00, double %mul10)
  %arrayidx11 = getelementptr inbounds float, ptr %7, i64 2
  %10 = load float, ptr %arrayidx11, align 4
  %conv12 = fpext float %10 to double
  %11 = call double @llvm.fmuladd.f64(double %conv12, double 4.400000e-02, double %9)
  store double %11, ptr %g, align 8
  %12 = load ptr, ptr %xyz.addr, align 8
  %13 = load float, ptr %12, align 4
  %conv14 = fpext float %13 to double
  %arrayidx15 = getelementptr inbounds float, ptr %12, i64 1
  %14 = load float, ptr %arrayidx15, align 4
  %conv16 = fpext float %14 to double
  %mul17 = fmul double %conv16, -2.240000e-01
  %15 = call double @llvm.fmuladd.f64(double %conv14, double 6.100000e-02, double %mul17)
  %16 = load ptr, ptr %xyz.addr, align 8
  %arrayidx18 = getelementptr inbounds float, ptr %16, i64 2
  %17 = load float, ptr %arrayidx18, align 4
  %conv19 = fpext float %17 to double
  %18 = call double @llvm.fmuladd.f64(double %conv19, double 1.163000e+00, double %15)
  store double %18, ptr %b, align 8
  %19 = load double, ptr %r, align 8
  %cmp = fcmp ugt double %19, 0.000000e+00
  br i1 %cmp, label %cond.false, label %cond.end26

cond.false:                                       ; preds = %entry
  %20 = load double, ptr %r, align 8
  %cmp21 = fcmp ult double %20, 1.000000e+00
  %21 = load double, ptr %r, align 8
  %22 = call double @llvm.sqrt.f64(double %21)
  %mul = fmul double %22, 2.560000e+02
  %conv25 = fptosi double %mul to i32
  %cond = select i1 %cmp21, i32 %conv25, i32 255
  br label %cond.end26

cond.end26:                                       ; preds = %entry, %cond.false
  %cond27 = phi i32 [ %cond, %cond.false ], [ 0, %entry ]
  %conv28 = trunc i32 %cond27 to i8
  %23 = load ptr, ptr %rgb.addr, align 8
  store i8 %conv28, ptr %23, align 1
  %24 = load double, ptr %g, align 8
  %cmp30 = fcmp ugt double %24, 0.000000e+00
  br i1 %cmp30, label %cond.false33, label %cond.end42

cond.false33:                                     ; preds = %cond.end26
  %25 = load double, ptr %g, align 8
  %cmp34 = fcmp ult double %25, 1.000000e+00
  %26 = load double, ptr %g, align 8
  %27 = call double @llvm.sqrt.f64(double %26)
  %mul38 = fmul double %27, 2.560000e+02
  %conv39 = fptosi double %mul38 to i32
  %cond41 = select i1 %cmp34, i32 %conv39, i32 255
  br label %cond.end42

cond.end42:                                       ; preds = %cond.end26, %cond.false33
  %cond43 = phi i32 [ %cond41, %cond.false33 ], [ 0, %cond.end26 ]
  %conv44 = trunc i32 %cond43 to i8
  %28 = load ptr, ptr %rgb.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %28, i64 1
  store i8 %conv44, ptr %arrayidx45, align 1
  %29 = load double, ptr %b, align 8
  %cmp46 = fcmp ugt double %29, 0.000000e+00
  br i1 %cmp46, label %cond.false49, label %cond.end58

cond.false49:                                     ; preds = %cond.end42
  %30 = load double, ptr %b, align 8
  %cmp50 = fcmp ult double %30, 1.000000e+00
  %31 = load double, ptr %b, align 8
  %32 = call double @llvm.sqrt.f64(double %31)
  %mul54 = fmul double %32, 2.560000e+02
  %conv55 = fptosi double %mul54 to i32
  %cond57 = select i1 %cmp50, i32 %conv55, i32 255
  br label %cond.end58

cond.end58:                                       ; preds = %cond.end42, %cond.false49
  %cond59 = phi i32 [ %cond57, %cond.false49 ], [ 0, %cond.end42 ]
  %conv60 = trunc i32 %cond59 to i8
  %33 = load ptr, ptr %rgb.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, ptr %33, i64 2
  store i8 %conv60, ptr %arrayidx61, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nounwind ssp uwtable
define internal void @pix32toXYZ(i64 noundef %p, ptr noundef %XYZ) #0 {
entry:
  %p.addr = alloca i64, align 8
  %XYZ.addr = alloca ptr, align 8
  %L = alloca double, align 8
  %u = alloca double, align 8
  %v = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  store i64 %p, ptr %p.addr, align 8
  store ptr %XYZ, ptr %XYZ.addr, align 8
  %conv = trunc i64 %p to i32
  %shr = ashr i32 %conv, 16
  %call = call double @pix16toY(i32 noundef %shr)
  store double %call, ptr %L, align 8
  %cmp = fcmp oeq double %call, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr inbounds float, ptr %0, i64 1
  store float 0.000000e+00, ptr %arrayidx2, align 4
  store float 0.000000e+00, ptr %0, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %p.addr, align 8
  %shr4 = lshr i64 %1, 8
  %and = and i64 %shr4, 255
  %conv5 = uitofp i64 %and to double
  %add = fadd double %conv5, 5.000000e-01
  %mul = fmul double %add, 0x3F63FB013FB013FB
  store double %mul, ptr %u, align 8
  %2 = load i64, ptr %p.addr, align 8
  %and6 = and i64 %2, 255
  %conv7 = uitofp i64 %and6 to double
  %add8 = fadd double %conv7, 5.000000e-01
  %mul9 = fmul double %add8, 0x3F63FB013FB013FB
  store double %mul9, ptr %v, align 8
  %3 = load double, ptr %u, align 8
  %neg = fmul double %mul9, -1.600000e+01
  %4 = call double @llvm.fmuladd.f64(double %3, double 6.000000e+00, double %neg)
  %add12 = fadd double %4, 1.200000e+01
  %div = fdiv double 1.000000e+00, %add12
  %mul13 = fmul double %3, 9.000000e+00
  %mul14 = fmul double %mul13, %div
  store double %mul14, ptr %x, align 8
  %5 = load double, ptr %v, align 8
  %mul15 = fmul double %5, 4.000000e+00
  %mul16 = fmul double %mul15, %div
  store double %mul16, ptr %y, align 8
  %div17 = fdiv double %mul14, %mul16
  %6 = load double, ptr %L, align 8
  %mul18 = fmul double %div17, %6
  %conv19 = fptrunc double %mul18 to float
  %7 = load ptr, ptr %XYZ.addr, align 8
  store float %conv19, ptr %7, align 4
  %conv21 = fptrunc double %6 to float
  %arrayidx22 = getelementptr inbounds float, ptr %7, i64 1
  store float %conv21, ptr %arrayidx22, align 4
  %8 = load double, ptr %x, align 8
  %sub = fsub double 1.000000e+00, %8
  %9 = load double, ptr %y, align 8
  %sub23 = fsub double %sub, %9
  %div24 = fdiv double %sub23, %9
  %10 = load double, ptr %L, align 8
  %mul25 = fmul double %div24, %10
  %conv26 = fptrunc double %mul25 to float
  %11 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx27 = getelementptr inbounds float, ptr %11, i64 2
  store float %conv26, ptr %arrayidx27, align 4
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
  %and = and i32 %p16, 32767
  store i32 %and, ptr %Le, align 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0.000000e+00, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %Le, align 4
  %conv = sitofp i32 %0 to double
  %add = fadd double %conv, 5.000000e-01
  %1 = call double @llvm.fmuladd.f64(double %add, double 0x3F662E42FEFA39EF, double 0xC0462E42FEFA39EF)
  %2 = call double @llvm.exp.f64(double %1)
  store double %2, ptr %Y, align 8
  %3 = load i32, ptr %p16.addr, align 4
  %and1 = and i32 %3, 32768
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %4 = load double, ptr %Y, align 8
  %fneg = fneg double %4
  store double %fneg, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load double, ptr %Y, align 8
  store double %5, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %6 = load double, ptr %retval, align 8
  ret double %6
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogL16GuessDataFmt(ptr noundef %td) #0 {
entry:
  %retval = alloca i32, align 4
  %td.addr = alloca ptr, align 8
  store ptr %td, ptr %td.addr, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %td, i64 0, i32 8
  %0 = load i16, ptr %td_bitspersample, align 8
  %conv = zext i16 %0 to i32
  %shl = shl nuw nsw i32 %conv, 6
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %td, i64 0, i32 15
  %1 = load i16, ptr %td_samplesperpixel, align 2
  %conv1 = zext i16 %1 to i32
  %shl2 = shl nuw nsw i32 %conv1, 3
  %or = or i32 %shl, %shl2
  %2 = load ptr, ptr %td.addr, align 8
  %td_sampleformat = getelementptr inbounds %struct.TIFFDirectory, ptr %2, i64 0, i32 9
  %3 = load i16, ptr %td_sampleformat, align 2
  %conv3 = zext i16 %3 to i32
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
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

declare i64 @TIFFScanlineSize(ptr noundef) #2

declare i64 @TIFFTileRowSize(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvEncode24(ptr noundef %tif, ptr noundef %bp, i64 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  %sp = alloca ptr, align 8
  %i = alloca i32, align 4
  %npixels = alloca i32, align 4
  %occ = alloca i32, align 4
  %op = alloca ptr, align 8
  %tp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %cmp.not = icmp eq i16 %s, 0
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogLuvEncode24, ptr noundef nonnull @.str, i32 noundef 445, ptr noundef nonnull @.str.10) #5
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load ptr, ptr %sp, align 8
  %cmp3.not = icmp eq ptr %1, null
  br i1 %cmp3.not, label %cond.true9, label %cond.end11

cond.true9:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogLuvEncode24, ptr noundef nonnull @.str, i32 noundef 446, ptr noundef nonnull @.str.5) #5
  unreachable

cond.end11:                                       ; preds = %cond.end
  %2 = load i64, ptr %cc.addr, align 8
  %3 = load ptr, ptr %sp, align 8
  %pixel_size = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 1
  %4 = load i32, ptr %pixel_size, align 4
  %conv12 = sext i32 %4 to i64
  %div = sdiv i64 %2, %conv12
  %conv13 = trunc i64 %div to i32
  store i32 %conv13, ptr %npixels, align 4
  %5 = load ptr, ptr %sp, align 8
  %6 = load i32, ptr %5, align 8
  %cmp14 = icmp eq i32 %6, 2
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end11
  %7 = load ptr, ptr %bp.addr, align 8
  store ptr %7, ptr %tp, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end11
  %8 = load ptr, ptr %sp, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %8, i64 0, i32 2
  %9 = load ptr, ptr %tbuf, align 8
  store ptr %9, ptr %tp, align 8
  %tbuflen = getelementptr inbounds %struct.logLuvState, ptr %8, i64 0, i32 3
  %10 = load i16, ptr %tbuflen, align 8
  %conv16 = sext i16 %10 to i32
  %11 = load i32, ptr %npixels, align 4
  %cmp17.not = icmp sgt i32 %11, %conv16
  br i1 %cmp17.not, label %cond.true23, label %cond.end25

cond.true23:                                      ; preds = %if.else
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogLuvEncode24, ptr noundef nonnull @.str, i32 noundef 453, ptr noundef nonnull @.str.11) #5
  unreachable

cond.end25:                                       ; preds = %if.else
  %12 = load ptr, ptr %sp, align 8
  %tfunc = getelementptr inbounds %struct.logLuvState, ptr %12, i64 0, i32 4
  %13 = load ptr, ptr %tfunc, align 8
  %14 = load ptr, ptr %bp.addr, align 8
  %15 = load i32, ptr %npixels, align 4
  call void %13(ptr noundef %12, ptr noundef %14, i32 noundef %15) #6
  br label %if.end

if.end:                                           ; preds = %cond.end25, %if.then
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 42
  %17 = load ptr, ptr %tif_rawcp, align 8
  store ptr %17, ptr %op, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 41
  %18 = load i64, ptr %tif_rawdatasize, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 43
  %19 = load i64, ptr %tif_rawcc, align 8
  %sub = sub nsw i64 %18, %19
  %conv26 = trunc i64 %sub to i32
  store i32 %conv26, ptr %occ, align 4
  %20 = load i32, ptr %npixels, align 4
  store i32 %20, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end44, %if.end
  %21 = load i32, ptr %i, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, ptr %i, align 4
  %tobool27.not = icmp eq i32 %21, 0
  br i1 %tobool27.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %22 = load i32, ptr %occ, align 4
  %cmp28 = icmp slt i32 %22, 3
  br i1 %cmp28, label %if.then30, label %if.end44

if.then30:                                        ; preds = %for.body
  %23 = load ptr, ptr %op, align 8
  %24 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp31 = getelementptr inbounds %struct.tiff, ptr %24, i64 0, i32 42
  store ptr %23, ptr %tif_rawcp31, align 8
  %tif_rawdatasize32 = getelementptr inbounds %struct.tiff, ptr %24, i64 0, i32 41
  %25 = load i64, ptr %tif_rawdatasize32, align 8
  %26 = load i32, ptr %occ, align 4
  %conv33 = sext i32 %26 to i64
  %sub34 = sub nsw i64 %25, %conv33
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc35 = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 43
  store i64 %sub34, ptr %tif_rawcc35, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %27) #6
  %tobool36.not = icmp eq i32 %call, 0
  br i1 %tobool36.not, label %return, label %if.end38

if.end38:                                         ; preds = %if.then30
  %28 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp39 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 42
  %29 = load ptr, ptr %tif_rawcp39, align 8
  store ptr %29, ptr %op, align 8
  %tif_rawdatasize40 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 41
  %30 = load i64, ptr %tif_rawdatasize40, align 8
  %tif_rawcc41 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 43
  %31 = load i64, ptr %tif_rawcc41, align 8
  %sub42 = sub nsw i64 %30, %31
  %conv43 = trunc i64 %sub42 to i32
  store i32 %conv43, ptr %occ, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end38, %for.body
  %32 = load ptr, ptr %tp, align 8
  %33 = load i64, ptr %32, align 8
  %shr = lshr i64 %33, 16
  %conv45 = trunc i64 %shr to i8
  %34 = load ptr, ptr %op, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %34, i64 1
  store ptr %incdec.ptr, ptr %op, align 8
  store i8 %conv45, ptr %34, align 1
  %35 = load ptr, ptr %tp, align 8
  %36 = load i64, ptr %35, align 8
  %shr46 = lshr i64 %36, 8
  %conv47 = trunc i64 %shr46 to i8
  %incdec.ptr48 = getelementptr inbounds i8, ptr %34, i64 2
  store ptr %incdec.ptr48, ptr %op, align 8
  store i8 %conv47, ptr %incdec.ptr, align 1
  %37 = load ptr, ptr %tp, align 8
  %incdec.ptr49 = getelementptr inbounds i64, ptr %37, i64 1
  store ptr %incdec.ptr49, ptr %tp, align 8
  %38 = load i64, ptr %37, align 8
  %conv51 = trunc i64 %38 to i8
  %39 = load ptr, ptr %op, align 8
  %incdec.ptr52 = getelementptr inbounds i8, ptr %39, i64 1
  store ptr %incdec.ptr52, ptr %op, align 8
  store i8 %conv51, ptr %39, align 1
  %40 = load i32, ptr %occ, align 4
  %sub53 = add nsw i32 %40, -3
  store i32 %sub53, ptr %occ, align 4
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  %41 = load ptr, ptr %op, align 8
  %42 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp54 = getelementptr inbounds %struct.tiff, ptr %42, i64 0, i32 42
  store ptr %41, ptr %tif_rawcp54, align 8
  %tif_rawdatasize55 = getelementptr inbounds %struct.tiff, ptr %42, i64 0, i32 41
  %43 = load i64, ptr %tif_rawdatasize55, align 8
  %44 = load i32, ptr %occ, align 4
  %conv56 = sext i32 %44 to i64
  %sub57 = sub nsw i64 %43, %conv56
  %45 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc58 = getelementptr inbounds %struct.tiff, ptr %45, i64 0, i32 43
  store i64 %sub57, ptr %tif_rawcc58, align 8
  br label %return

return:                                           ; preds = %if.then30, %for.end
  %storemerge = phi i32 [ 0, %for.end ], [ -1, %if.then30 ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal void @Luv24fromXYZ(ptr noundef %sp, ptr noundef %op, i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %luv = alloca ptr, align 8
  %xyz = alloca ptr, align 8
  store i32 %n, ptr %n.addr, align 4
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %sp, i64 0, i32 2
  %0 = load ptr, ptr %tbuf, align 8
  store ptr %0, ptr %luv, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %storemerge = phi ptr [ %op, %entry ], [ %add.ptr, %while.body ]
  store ptr %storemerge, ptr %xyz, align 8
  %1 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %xyz, align 8
  %call = call i64 @pix24fromXYZ(ptr noundef %2)
  %3 = load ptr, ptr %luv, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %3, i64 1
  store ptr %incdec.ptr, ptr %luv, align 8
  store i64 %call, ptr %3, align 8
  %add.ptr = getelementptr inbounds float, ptr %2, i64 3
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @Luv24fromLuv48(ptr noundef %sp, ptr noundef %op, i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %luv = alloca ptr, align 8
  %luv3 = alloca ptr, align 8
  %Le = alloca i32, align 4
  %Ce = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %sp, i64 0, i32 2
  %0 = load ptr, ptr %tbuf, align 8
  store ptr %0, ptr %luv, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end22, %entry
  %storemerge = phi ptr [ %op, %entry ], [ %add.ptr, %if.end22 ]
  store ptr %storemerge, ptr %luv3, align 8
  %1 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %luv3, align 8
  %3 = load i16, ptr %2, align 2
  %cmp1 = icmp slt i16 %3, 1
  br i1 %cmp1, label %if.end11, label %if.else

if.else:                                          ; preds = %while.body
  %4 = load ptr, ptr %luv3, align 8
  %5 = load i16, ptr %4, align 2
  %cmp5 = icmp sgt i16 %5, 7409
  br i1 %cmp5, label %if.end11, label %if.else8

if.else8:                                         ; preds = %if.else
  %6 = load ptr, ptr %luv3, align 8
  %7 = load i16, ptr %6, align 2
  %conv10 = sext i16 %7 to i32
  %sub = add nsw i32 %conv10, -3314
  %shr = ashr i32 %sub, 2
  br label %if.end11

if.end11:                                         ; preds = %if.else8, %if.else, %while.body
  %storemerge2 = phi i32 [ 0, %while.body ], [ %shr, %if.else8 ], [ 1023, %if.else ]
  store i32 %storemerge2, ptr %Le, align 4
  %8 = load ptr, ptr %luv, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %8, i64 1
  %9 = load i64, ptr %arrayidx12, align 8
  %conv13 = uitofp i64 %9 to double
  %add = fadd double %conv13, 5.000000e-01
  %div = fmul double %add, 0x3F00000000000000
  %arrayidx14 = getelementptr inbounds i64, ptr %8, i64 2
  %10 = load i64, ptr %arrayidx14, align 8
  %conv15 = uitofp i64 %10 to double
  %add16 = fadd double %conv15, 5.000000e-01
  %div17 = fmul double %add16, 0x3F00000000000000
  %call = call i32 @uv_encode(double noundef %div, double noundef %div17)
  store i32 %call, ptr %Ce, align 4
  %cmp18 = icmp slt i32 %call, 0
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end11
  %call21 = call i32 @uv_encode(double noundef 0x3FCAF286BD156C1A, double noundef 0x3FDE50D794B8199E)
  store i32 %call21, ptr %Ce, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end11
  %11 = load i32, ptr %Le, align 4
  %conv23 = sext i32 %11 to i64
  %shl = shl nsw i64 %conv23, 14
  %12 = load i32, ptr %Ce, align 4
  %conv24 = sext i32 %12 to i64
  %or = or i64 %shl, %conv24
  %13 = load ptr, ptr %luv, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %13, i64 1
  store ptr %incdec.ptr, ptr %luv, align 8
  store i64 %or, ptr %13, align 8
  %14 = load ptr, ptr %luv3, align 8
  %add.ptr = getelementptr inbounds i16, ptr %14, i64 3
  br label %while.cond, !llvm.loop !31

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvEncode32(ptr noundef %tif, ptr noundef %bp, i64 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  %sp = alloca ptr, align 8
  %shft = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %npixels = alloca i32, align 4
  %op = alloca ptr, align 8
  %tp = alloca ptr, align 8
  %b = alloca i64, align 8
  %occ = alloca i32, align 4
  %rc = alloca i32, align 4
  %mask = alloca i32, align 4
  %beg = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  store i32 0, ptr %rc, align 4
  %cmp.not = icmp eq i16 %s, 0
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogLuvEncode32, ptr noundef nonnull @.str, i32 noundef 492, ptr noundef nonnull @.str.10) #5
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load ptr, ptr %sp, align 8
  %cmp3.not = icmp eq ptr %1, null
  br i1 %cmp3.not, label %cond.true9, label %cond.end11

cond.true9:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogLuvEncode32, ptr noundef nonnull @.str, i32 noundef 493, ptr noundef nonnull @.str.5) #5
  unreachable

cond.end11:                                       ; preds = %cond.end
  %2 = load i64, ptr %cc.addr, align 8
  %3 = load ptr, ptr %sp, align 8
  %pixel_size = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 1
  %4 = load i32, ptr %pixel_size, align 4
  %conv12 = sext i32 %4 to i64
  %div = sdiv i64 %2, %conv12
  %conv13 = trunc i64 %div to i32
  store i32 %conv13, ptr %npixels, align 4
  %5 = load ptr, ptr %sp, align 8
  %6 = load i32, ptr %5, align 8
  %cmp14 = icmp eq i32 %6, 2
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end11
  %7 = load ptr, ptr %bp.addr, align 8
  store ptr %7, ptr %tp, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end11
  %8 = load ptr, ptr %sp, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %8, i64 0, i32 2
  %9 = load ptr, ptr %tbuf, align 8
  store ptr %9, ptr %tp, align 8
  %tbuflen = getelementptr inbounds %struct.logLuvState, ptr %8, i64 0, i32 3
  %10 = load i16, ptr %tbuflen, align 8
  %conv16 = sext i16 %10 to i32
  %11 = load i32, ptr %npixels, align 4
  %cmp17.not = icmp sgt i32 %11, %conv16
  br i1 %cmp17.not, label %cond.true23, label %cond.end25

cond.true23:                                      ; preds = %if.else
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogLuvEncode32, ptr noundef nonnull @.str, i32 noundef 501, ptr noundef nonnull @.str.11) #5
  unreachable

cond.end25:                                       ; preds = %if.else
  %12 = load ptr, ptr %sp, align 8
  %tfunc = getelementptr inbounds %struct.logLuvState, ptr %12, i64 0, i32 4
  %13 = load ptr, ptr %tfunc, align 8
  %14 = load ptr, ptr %bp.addr, align 8
  %15 = load i32, ptr %npixels, align 4
  call void %13(ptr noundef %12, ptr noundef %14, i32 noundef %15) #6
  br label %if.end

if.end:                                           ; preds = %cond.end25, %if.then
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 42
  %17 = load ptr, ptr %tif_rawcp, align 8
  store ptr %17, ptr %op, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 41
  %18 = load i64, ptr %tif_rawdatasize, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 43
  %19 = load i64, ptr %tif_rawcc, align 8
  %sub = sub nsw i64 %18, %19
  %conv26 = trunc i64 %sub to i32
  store i32 %conv26, ptr %occ, align 4
  store i32 32, ptr %shft, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.cond30, %if.end
  %20 = load i32, ptr %shft, align 4
  %sub27 = add nsw i32 %20, -8
  store i32 %sub27, ptr %shft, align 4
  %cmp28 = icmp sgt i32 %20, 7
  br i1 %cmp28, label %for.cond30, label %for.end170

for.cond30:                                       ; preds = %for.cond, %for.inc167
  %storemerge = phi i32 [ %add168, %for.inc167 ], [ 0, %for.cond ]
  store i32 %storemerge, ptr %i, align 4
  %21 = load i32, ptr %npixels, align 4
  %cmp31 = icmp slt i32 %storemerge, %21
  br i1 %cmp31, label %for.body33, label %for.cond, !llvm.loop !32

for.body33:                                       ; preds = %for.cond30
  %22 = load i32, ptr %occ, align 4
  %cmp34 = icmp slt i32 %22, 4
  br i1 %cmp34, label %if.then36, label %if.end50

if.then36:                                        ; preds = %for.body33
  %23 = load ptr, ptr %op, align 8
  %24 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp37 = getelementptr inbounds %struct.tiff, ptr %24, i64 0, i32 42
  store ptr %23, ptr %tif_rawcp37, align 8
  %tif_rawdatasize38 = getelementptr inbounds %struct.tiff, ptr %24, i64 0, i32 41
  %25 = load i64, ptr %tif_rawdatasize38, align 8
  %26 = load i32, ptr %occ, align 4
  %conv39 = sext i32 %26 to i64
  %sub40 = sub nsw i64 %25, %conv39
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc41 = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 43
  store i64 %sub40, ptr %tif_rawcc41, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %27) #6
  %tobool42.not = icmp eq i32 %call, 0
  br i1 %tobool42.not, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.then36
  store i32 -1, ptr %retval, align 4
  br label %return

if.end44:                                         ; preds = %if.then36
  %28 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp45 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 42
  %29 = load ptr, ptr %tif_rawcp45, align 8
  store ptr %29, ptr %op, align 8
  %tif_rawdatasize46 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 41
  %30 = load i64, ptr %tif_rawdatasize46, align 8
  %tif_rawcc47 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 43
  %31 = load i64, ptr %tif_rawcc47, align 8
  %sub48 = sub nsw i64 %30, %31
  %conv49 = trunc i64 %sub48 to i32
  store i32 %conv49, ptr %occ, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end44, %for.body33
  %32 = load i32, ptr %shft, align 4
  %shl = shl i32 255, %32
  store i32 %shl, ptr %mask, align 4
  %33 = load i32, ptr %i, align 4
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc, %if.end50
  %storemerge1 = phi i32 [ %33, %if.end50 ], [ %add71, %for.inc ]
  store i32 %storemerge1, ptr %beg, align 4
  %34 = load i32, ptr %npixels, align 4
  %cmp52 = icmp slt i32 %storemerge1, %34
  br i1 %cmp52, label %for.body54, label %for.end

for.body54:                                       ; preds = %for.cond51
  %35 = load ptr, ptr %tp, align 8
  %36 = load i32, ptr %beg, align 4
  %idxprom = sext i32 %36 to i64
  %arrayidx = getelementptr inbounds i64, ptr %35, i64 %idxprom
  %37 = load i64, ptr %arrayidx, align 8
  %38 = load i32, ptr %mask, align 4
  %conv55 = sext i32 %38 to i64
  %and = and i64 %37, %conv55
  store i64 %and, ptr %b, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body54
  %storemerge4 = phi i32 [ 1, %for.body54 ], [ %inc, %while.body ]
  store i32 %storemerge4, ptr %rc, align 4
  %cmp56 = icmp slt i32 %storemerge4, 129
  br i1 %cmp56, label %land.lhs.true, label %while.end

land.lhs.true:                                    ; preds = %while.cond
  %39 = load i32, ptr %beg, align 4
  %40 = load i32, ptr %rc, align 4
  %add = add nsw i32 %39, %40
  %41 = load i32, ptr %npixels, align 4
  %cmp58 = icmp slt i32 %add, %41
  br i1 %cmp58, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %land.lhs.true
  %42 = load ptr, ptr %tp, align 8
  %43 = load i32, ptr %beg, align 4
  %44 = load i32, ptr %rc, align 4
  %add60 = add nsw i32 %43, %44
  %idxprom61 = sext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds i64, ptr %42, i64 %idxprom61
  %45 = load i64, ptr %arrayidx62, align 8
  %46 = load i32, ptr %mask, align 4
  %conv63 = sext i32 %46 to i64
  %and64 = and i64 %45, %conv63
  %47 = load i64, ptr %b, align 8
  %cmp65 = icmp eq i64 %and64, %47
  br i1 %cmp65, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %48 = load i32, ptr %rc, align 4
  %inc = add nsw i32 %48, 1
  br label %while.cond, !llvm.loop !33

while.end:                                        ; preds = %land.lhs.true, %while.cond, %land.rhs
  %49 = load i32, ptr %rc, align 4
  %cmp67 = icmp sgt i32 %49, 3
  br i1 %cmp67, label %for.end, label %for.inc

for.inc:                                          ; preds = %while.end
  %50 = load i32, ptr %rc, align 4
  %51 = load i32, ptr %beg, align 4
  %add71 = add nsw i32 %51, %50
  br label %for.cond51, !llvm.loop !34

for.end:                                          ; preds = %while.end, %for.cond51
  %52 = load i32, ptr %beg, align 4
  %53 = load i32, ptr %i, align 4
  %sub72 = sub nsw i32 %52, %53
  %cmp73 = icmp sgt i32 %sub72, 1
  br i1 %cmp73, label %land.lhs.true75, label %if.end105

land.lhs.true75:                                  ; preds = %for.end
  %54 = load i32, ptr %beg, align 4
  %55 = load i32, ptr %i, align 4
  %sub76 = sub nsw i32 %54, %55
  %cmp77 = icmp slt i32 %sub76, 4
  br i1 %cmp77, label %if.then79, label %if.end105

if.then79:                                        ; preds = %land.lhs.true75
  %56 = load ptr, ptr %tp, align 8
  %57 = load i32, ptr %i, align 4
  %idxprom80 = sext i32 %57 to i64
  %arrayidx81 = getelementptr inbounds i64, ptr %56, i64 %idxprom80
  %58 = load i64, ptr %arrayidx81, align 8
  %59 = load i32, ptr %mask, align 4
  %conv82 = sext i32 %59 to i64
  %and83 = and i64 %58, %conv82
  store i64 %and83, ptr %b, align 8
  %60 = load i32, ptr %i, align 4
  %add84 = add nsw i32 %60, 1
  store i32 %add84, ptr %j, align 4
  br label %while.cond85

while.cond85:                                     ; preds = %while.body93, %if.then79
  %61 = load ptr, ptr %tp, align 8
  %62 = load i32, ptr %j, align 4
  %inc86 = add nsw i32 %62, 1
  store i32 %inc86, ptr %j, align 4
  %idxprom87 = sext i32 %62 to i64
  %arrayidx88 = getelementptr inbounds i64, ptr %61, i64 %idxprom87
  %63 = load i64, ptr %arrayidx88, align 8
  %64 = load i32, ptr %mask, align 4
  %conv89 = sext i32 %64 to i64
  %and90 = and i64 %63, %conv89
  %65 = load i64, ptr %b, align 8
  %cmp91 = icmp eq i64 %and90, %65
  br i1 %cmp91, label %while.body93, label %if.end105

while.body93:                                     ; preds = %while.cond85
  %66 = load i32, ptr %j, align 4
  %67 = load i32, ptr %beg, align 4
  %cmp94 = icmp eq i32 %66, %67
  br i1 %cmp94, label %if.then96, label %while.cond85, !llvm.loop !35

if.then96:                                        ; preds = %while.body93
  %68 = load i32, ptr %j, align 4
  %add97 = add nsw i32 %68, 126
  %69 = load i32, ptr %i, align 4
  %sub98 = sub nsw i32 %add97, %69
  %conv99 = trunc i32 %sub98 to i8
  %70 = load ptr, ptr %op, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %70, i64 1
  store ptr %incdec.ptr, ptr %op, align 8
  store i8 %conv99, ptr %70, align 1
  %71 = load i64, ptr %b, align 8
  %72 = load i32, ptr %shft, align 4
  %sh_prom = zext i32 %72 to i64
  %shr = lshr i64 %71, %sh_prom
  %conv100 = trunc i64 %shr to i8
  %73 = load ptr, ptr %op, align 8
  %incdec.ptr101 = getelementptr inbounds i8, ptr %73, i64 1
  store ptr %incdec.ptr101, ptr %op, align 8
  store i8 %conv100, ptr %73, align 1
  %74 = load i32, ptr %occ, align 4
  %sub102 = add nsw i32 %74, -2
  store i32 %sub102, ptr %occ, align 4
  %75 = load i32, ptr %beg, align 4
  store i32 %75, ptr %i, align 4
  br label %if.end105

if.end105:                                        ; preds = %while.cond85, %if.then96, %land.lhs.true75, %for.end
  br label %while.cond106

while.cond106:                                    ; preds = %while.cond136, %if.end105
  %76 = load i32, ptr %i, align 4
  %77 = load i32, ptr %beg, align 4
  %cmp107 = icmp slt i32 %76, %77
  br i1 %cmp107, label %while.body109, label %while.end150

while.body109:                                    ; preds = %while.cond106
  %78 = load i32, ptr %beg, align 4
  %79 = load i32, ptr %i, align 4
  %sub110 = sub nsw i32 %78, %79
  %cmp111 = icmp sgt i32 %sub110, 127
  %spec.select = select i1 %cmp111, i32 127, i32 %sub110
  store i32 %spec.select, ptr %j, align 4
  %80 = load i32, ptr %occ, align 4
  %add115 = add nsw i32 %spec.select, 3
  %cmp116 = icmp slt i32 %80, %add115
  br i1 %cmp116, label %if.then118, label %if.end133

if.then118:                                       ; preds = %while.body109
  %81 = load ptr, ptr %op, align 8
  %82 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp119 = getelementptr inbounds %struct.tiff, ptr %82, i64 0, i32 42
  store ptr %81, ptr %tif_rawcp119, align 8
  %tif_rawdatasize120 = getelementptr inbounds %struct.tiff, ptr %82, i64 0, i32 41
  %83 = load i64, ptr %tif_rawdatasize120, align 8
  %84 = load i32, ptr %occ, align 4
  %conv121 = sext i32 %84 to i64
  %sub122 = sub nsw i64 %83, %conv121
  %85 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc123 = getelementptr inbounds %struct.tiff, ptr %85, i64 0, i32 43
  store i64 %sub122, ptr %tif_rawcc123, align 8
  %call124 = call i32 @TIFFFlushData1(ptr noundef %85) #6
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.then126, label %if.end127

if.then126:                                       ; preds = %if.then118
  store i32 -1, ptr %retval, align 4
  br label %return

if.end127:                                        ; preds = %if.then118
  %86 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp128 = getelementptr inbounds %struct.tiff, ptr %86, i64 0, i32 42
  %87 = load ptr, ptr %tif_rawcp128, align 8
  store ptr %87, ptr %op, align 8
  %tif_rawdatasize129 = getelementptr inbounds %struct.tiff, ptr %86, i64 0, i32 41
  %88 = load i64, ptr %tif_rawdatasize129, align 8
  %tif_rawcc130 = getelementptr inbounds %struct.tiff, ptr %86, i64 0, i32 43
  %89 = load i64, ptr %tif_rawcc130, align 8
  %sub131 = sub nsw i64 %88, %89
  %conv132 = trunc i64 %sub131 to i32
  store i32 %conv132, ptr %occ, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.end127, %while.body109
  %90 = load i32, ptr %j, align 4
  %conv134 = trunc i32 %90 to i8
  %91 = load ptr, ptr %op, align 8
  %incdec.ptr135 = getelementptr inbounds i8, ptr %91, i64 1
  store ptr %incdec.ptr135, ptr %op, align 8
  store i8 %conv134, ptr %91, align 1
  %92 = load i32, ptr %occ, align 4
  br label %while.cond136

while.cond136:                                    ; preds = %while.body139, %if.end133
  %storemerge2.in = phi i32 [ %92, %if.end133 ], [ %99, %while.body139 ]
  %storemerge2 = add nsw i32 %storemerge2.in, -1
  store i32 %storemerge2, ptr %occ, align 4
  %93 = load i32, ptr %j, align 4
  %dec137 = add nsw i32 %93, -1
  store i32 %dec137, ptr %j, align 4
  %tobool138.not = icmp eq i32 %93, 0
  br i1 %tobool138.not, label %while.cond106, label %while.body139, !llvm.loop !36

while.body139:                                    ; preds = %while.cond136
  %94 = load ptr, ptr %tp, align 8
  %95 = load i32, ptr %i, align 4
  %inc140 = add nsw i32 %95, 1
  store i32 %inc140, ptr %i, align 4
  %idxprom141 = sext i32 %95 to i64
  %arrayidx142 = getelementptr inbounds i64, ptr %94, i64 %idxprom141
  %96 = load i64, ptr %arrayidx142, align 8
  %97 = load i32, ptr %shft, align 4
  %sh_prom143 = zext i32 %97 to i64
  %shr144 = lshr i64 %96, %sh_prom143
  %conv146 = trunc i64 %shr144 to i8
  %98 = load ptr, ptr %op, align 8
  %incdec.ptr147 = getelementptr inbounds i8, ptr %98, i64 1
  store ptr %incdec.ptr147, ptr %op, align 8
  store i8 %conv146, ptr %98, align 1
  %99 = load i32, ptr %occ, align 4
  br label %while.cond136, !llvm.loop !37

while.end150:                                     ; preds = %while.cond106
  %100 = load i32, ptr %rc, align 4
  %cmp151 = icmp sgt i32 %100, 3
  br i1 %cmp151, label %if.then153, label %if.else165

if.then153:                                       ; preds = %while.end150
  %101 = load i32, ptr %rc, align 4
  %102 = trunc i32 %101 to i8
  %conv155 = add i8 %102, 126
  %103 = load ptr, ptr %op, align 8
  %incdec.ptr156 = getelementptr inbounds i8, ptr %103, i64 1
  store ptr %incdec.ptr156, ptr %op, align 8
  store i8 %conv155, ptr %103, align 1
  %104 = load ptr, ptr %tp, align 8
  %105 = load i32, ptr %beg, align 4
  %idxprom157 = sext i32 %105 to i64
  %arrayidx158 = getelementptr inbounds i64, ptr %104, i64 %idxprom157
  %106 = load i64, ptr %arrayidx158, align 8
  %107 = load i32, ptr %shft, align 4
  %sh_prom159 = zext i32 %107 to i64
  %shr160 = lshr i64 %106, %sh_prom159
  %conv162 = trunc i64 %shr160 to i8
  %108 = load ptr, ptr %op, align 8
  %incdec.ptr163 = getelementptr inbounds i8, ptr %108, i64 1
  store ptr %incdec.ptr163, ptr %op, align 8
  store i8 %conv162, ptr %108, align 1
  %109 = load i32, ptr %occ, align 4
  %sub164 = add nsw i32 %109, -2
  store i32 %sub164, ptr %occ, align 4
  br label %for.inc167

if.else165:                                       ; preds = %while.end150
  store i32 0, ptr %rc, align 4
  br label %for.inc167

for.inc167:                                       ; preds = %if.then153, %if.else165
  %110 = load i32, ptr %rc, align 4
  %111 = load i32, ptr %i, align 4
  %add168 = add nsw i32 %111, %110
  br label %for.cond30, !llvm.loop !38

for.end170:                                       ; preds = %for.cond
  %112 = load ptr, ptr %op, align 8
  %113 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp171 = getelementptr inbounds %struct.tiff, ptr %113, i64 0, i32 42
  store ptr %112, ptr %tif_rawcp171, align 8
  %tif_rawdatasize172 = getelementptr inbounds %struct.tiff, ptr %113, i64 0, i32 41
  %114 = load i64, ptr %tif_rawdatasize172, align 8
  %115 = load i32, ptr %occ, align 4
  %conv173 = sext i32 %115 to i64
  %sub174 = sub nsw i64 %114, %conv173
  %116 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc175 = getelementptr inbounds %struct.tiff, ptr %116, i64 0, i32 43
  store i64 %sub174, ptr %tif_rawcc175, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end170, %if.then126, %if.then43
  %117 = load i32, ptr %retval, align 4
  ret i32 %117
}

; Function Attrs: nounwind ssp uwtable
define internal void @Luv32fromXYZ(ptr noundef %sp, ptr noundef %op, i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %luv = alloca ptr, align 8
  %xyz = alloca ptr, align 8
  store i32 %n, ptr %n.addr, align 4
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %sp, i64 0, i32 2
  %0 = load ptr, ptr %tbuf, align 8
  store ptr %0, ptr %luv, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %storemerge = phi ptr [ %op, %entry ], [ %add.ptr, %while.body ]
  store ptr %storemerge, ptr %xyz, align 8
  %1 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %xyz, align 8
  %call = call i64 @pix32fromXYZ(ptr noundef %2)
  %3 = load ptr, ptr %luv, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %3, i64 1
  store ptr %incdec.ptr, ptr %luv, align 8
  store i64 %call, ptr %3, align 8
  %add.ptr = getelementptr inbounds float, ptr %2, i64 3
  br label %while.cond, !llvm.loop !39

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @Luv32fromLuv48(ptr noundef %sp, ptr noundef %op, i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %luv = alloca ptr, align 8
  %luv3 = alloca ptr, align 8
  store i32 %n, ptr %n.addr, align 4
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %sp, i64 0, i32 2
  %0 = load ptr, ptr %tbuf, align 8
  store ptr %0, ptr %luv, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %storemerge = phi ptr [ %op, %entry ], [ %add.ptr, %while.body ]
  store ptr %storemerge, ptr %luv3, align 8
  %1 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %luv3, align 8
  %3 = load i16, ptr %2, align 2
  %conv = sext i16 %3 to i64
  %shl = shl nsw i64 %conv, 16
  %arrayidx1 = getelementptr inbounds i16, ptr %2, i64 1
  %4 = load i16, ptr %arrayidx1, align 2
  %conv2 = sext i16 %4 to i64
  %mul = mul nsw i64 %conv2, 410
  %shr = lshr i64 %mul, 7
  %and = and i64 %shr, 65280
  %or = or i64 %shl, %and
  %5 = load ptr, ptr %luv3, align 8
  %arrayidx3 = getelementptr inbounds i16, ptr %5, i64 2
  %6 = load i16, ptr %arrayidx3, align 2
  %conv4 = sext i16 %6 to i64
  %mul5 = mul nsw i64 %conv4, 410
  %shr6 = lshr i64 %mul5, 15
  %and7 = and i64 %shr6, 255
  %or8 = or i64 %or, %and7
  %7 = load ptr, ptr %luv, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %7, i64 1
  store ptr %incdec.ptr, ptr %luv, align 8
  store i64 %or8, ptr %7, align 8
  %8 = load ptr, ptr %luv3, align 8
  %add.ptr = getelementptr inbounds i16, ptr %8, i64 3
  br label %while.cond, !llvm.loop !40

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogL16Encode(ptr noundef %tif, ptr noundef %bp, i64 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
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
  store i64 %cc, ptr %cc.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  store i32 0, ptr %rc, align 4
  %cmp.not = icmp eq i16 %s, 0
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogL16Encode, ptr noundef nonnull @.str, i32 noundef 359, ptr noundef nonnull @.str.10) #5
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load ptr, ptr %sp, align 8
  %cmp3.not = icmp eq ptr %1, null
  br i1 %cmp3.not, label %cond.true9, label %cond.end11

cond.true9:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogL16Encode, ptr noundef nonnull @.str, i32 noundef 360, ptr noundef nonnull @.str.5) #5
  unreachable

cond.end11:                                       ; preds = %cond.end
  %2 = load i64, ptr %cc.addr, align 8
  %3 = load ptr, ptr %sp, align 8
  %pixel_size = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 1
  %4 = load i32, ptr %pixel_size, align 4
  %conv12 = sext i32 %4 to i64
  %div = sdiv i64 %2, %conv12
  %conv13 = trunc i64 %div to i32
  store i32 %conv13, ptr %npixels, align 4
  %5 = load ptr, ptr %sp, align 8
  %6 = load i32, ptr %5, align 8
  %cmp14 = icmp eq i32 %6, 1
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end11
  %7 = load ptr, ptr %bp.addr, align 8
  store ptr %7, ptr %tp, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end11
  %8 = load ptr, ptr %sp, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %8, i64 0, i32 2
  %9 = load ptr, ptr %tbuf, align 8
  store ptr %9, ptr %tp, align 8
  %tbuflen = getelementptr inbounds %struct.logLuvState, ptr %8, i64 0, i32 3
  %10 = load i16, ptr %tbuflen, align 8
  %conv16 = sext i16 %10 to i32
  %11 = load i32, ptr %npixels, align 4
  %cmp17.not = icmp sgt i32 %11, %conv16
  br i1 %cmp17.not, label %cond.true23, label %cond.end25

cond.true23:                                      ; preds = %if.else
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogL16Encode, ptr noundef nonnull @.str, i32 noundef 367, ptr noundef nonnull @.str.11) #5
  unreachable

cond.end25:                                       ; preds = %if.else
  %12 = load ptr, ptr %sp, align 8
  %tfunc = getelementptr inbounds %struct.logLuvState, ptr %12, i64 0, i32 4
  %13 = load ptr, ptr %tfunc, align 8
  %14 = load ptr, ptr %bp.addr, align 8
  %15 = load i32, ptr %npixels, align 4
  call void %13(ptr noundef %12, ptr noundef %14, i32 noundef %15) #6
  br label %if.end

if.end:                                           ; preds = %cond.end25, %if.then
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 42
  %17 = load ptr, ptr %tif_rawcp, align 8
  store ptr %17, ptr %op, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 41
  %18 = load i64, ptr %tif_rawdatasize, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 43
  %19 = load i64, ptr %tif_rawcc, align 8
  %sub = sub nsw i64 %18, %19
  %conv26 = trunc i64 %sub to i32
  store i32 %conv26, ptr %occ, align 4
  store i32 16, ptr %shft, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.cond30, %if.end
  %20 = load i32, ptr %shft, align 4
  %sub27 = add nsw i32 %20, -8
  store i32 %sub27, ptr %shft, align 4
  %cmp28 = icmp sgt i32 %20, 7
  br i1 %cmp28, label %for.cond30, label %for.end175

for.cond30:                                       ; preds = %for.cond, %for.inc172
  %storemerge = phi i32 [ %add173, %for.inc172 ], [ 0, %for.cond ]
  store i32 %storemerge, ptr %i, align 4
  %21 = load i32, ptr %npixels, align 4
  %cmp31 = icmp slt i32 %storemerge, %21
  br i1 %cmp31, label %for.body33, label %for.cond, !llvm.loop !41

for.body33:                                       ; preds = %for.cond30
  %22 = load i32, ptr %occ, align 4
  %cmp34 = icmp slt i32 %22, 4
  br i1 %cmp34, label %if.then36, label %if.end50

if.then36:                                        ; preds = %for.body33
  %23 = load ptr, ptr %op, align 8
  %24 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp37 = getelementptr inbounds %struct.tiff, ptr %24, i64 0, i32 42
  store ptr %23, ptr %tif_rawcp37, align 8
  %tif_rawdatasize38 = getelementptr inbounds %struct.tiff, ptr %24, i64 0, i32 41
  %25 = load i64, ptr %tif_rawdatasize38, align 8
  %26 = load i32, ptr %occ, align 4
  %conv39 = sext i32 %26 to i64
  %sub40 = sub nsw i64 %25, %conv39
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc41 = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 43
  store i64 %sub40, ptr %tif_rawcc41, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %27) #6
  %tobool42.not = icmp eq i32 %call, 0
  br i1 %tobool42.not, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.then36
  store i32 -1, ptr %retval, align 4
  br label %return

if.end44:                                         ; preds = %if.then36
  %28 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp45 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 42
  %29 = load ptr, ptr %tif_rawcp45, align 8
  store ptr %29, ptr %op, align 8
  %tif_rawdatasize46 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 41
  %30 = load i64, ptr %tif_rawdatasize46, align 8
  %tif_rawcc47 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 43
  %31 = load i64, ptr %tif_rawcc47, align 8
  %sub48 = sub nsw i64 %30, %31
  %conv49 = trunc i64 %sub48 to i32
  store i32 %conv49, ptr %occ, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end44, %for.body33
  %32 = load i32, ptr %shft, align 4
  %shl = shl i32 255, %32
  store i32 %shl, ptr %mask, align 4
  %33 = load i32, ptr %i, align 4
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc, %if.end50
  %storemerge1 = phi i32 [ %33, %if.end50 ], [ %add73, %for.inc ]
  store i32 %storemerge1, ptr %beg, align 4
  %34 = load i32, ptr %npixels, align 4
  %cmp52 = icmp slt i32 %storemerge1, %34
  br i1 %cmp52, label %for.body54, label %for.end

for.body54:                                       ; preds = %for.cond51
  %35 = load ptr, ptr %tp, align 8
  %36 = load i32, ptr %beg, align 4
  %idxprom = sext i32 %36 to i64
  %arrayidx = getelementptr inbounds i16, ptr %35, i64 %idxprom
  %37 = load i16, ptr %arrayidx, align 2
  %38 = load i32, ptr %mask, align 4
  %39 = trunc i32 %38 to i16
  %conv56 = and i16 %37, %39
  store i16 %conv56, ptr %b, align 2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body54
  %storemerge6 = phi i32 [ 1, %for.body54 ], [ %inc, %while.body ]
  store i32 %storemerge6, ptr %rc, align 4
  %cmp57 = icmp slt i32 %storemerge6, 129
  br i1 %cmp57, label %land.lhs.true, label %while.end

land.lhs.true:                                    ; preds = %while.cond
  %40 = load i32, ptr %beg, align 4
  %41 = load i32, ptr %rc, align 4
  %add = add nsw i32 %40, %41
  %42 = load i32, ptr %npixels, align 4
  %cmp59 = icmp slt i32 %add, %42
  br i1 %cmp59, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %land.lhs.true
  %43 = load ptr, ptr %tp, align 8
  %44 = load i32, ptr %beg, align 4
  %45 = load i32, ptr %rc, align 4
  %add61 = add nsw i32 %44, %45
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds i16, ptr %43, i64 %idxprom62
  %46 = load i16, ptr %arrayidx63, align 2
  %conv64 = sext i16 %46 to i32
  %47 = load i32, ptr %mask, align 4
  %and65 = and i32 %47, %conv64
  %48 = load i16, ptr %b, align 2
  %conv66 = sext i16 %48 to i32
  %cmp67 = icmp eq i32 %and65, %conv66
  br i1 %cmp67, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %49 = load i32, ptr %rc, align 4
  %inc = add nsw i32 %49, 1
  br label %while.cond, !llvm.loop !42

while.end:                                        ; preds = %land.lhs.true, %while.cond, %land.rhs
  %50 = load i32, ptr %rc, align 4
  %cmp69 = icmp sgt i32 %50, 3
  br i1 %cmp69, label %for.end, label %for.inc

for.inc:                                          ; preds = %while.end
  %51 = load i32, ptr %rc, align 4
  %52 = load i32, ptr %beg, align 4
  %add73 = add nsw i32 %52, %51
  br label %for.cond51, !llvm.loop !43

for.end:                                          ; preds = %while.end, %for.cond51
  %53 = load i32, ptr %beg, align 4
  %54 = load i32, ptr %i, align 4
  %sub74 = sub nsw i32 %53, %54
  %cmp75 = icmp sgt i32 %sub74, 1
  br i1 %cmp75, label %land.lhs.true77, label %if.end110

land.lhs.true77:                                  ; preds = %for.end
  %55 = load i32, ptr %beg, align 4
  %56 = load i32, ptr %i, align 4
  %sub78 = sub nsw i32 %55, %56
  %cmp79 = icmp slt i32 %sub78, 4
  br i1 %cmp79, label %if.then81, label %if.end110

if.then81:                                        ; preds = %land.lhs.true77
  %57 = load ptr, ptr %tp, align 8
  %58 = load i32, ptr %i, align 4
  %idxprom82 = sext i32 %58 to i64
  %arrayidx83 = getelementptr inbounds i16, ptr %57, i64 %idxprom82
  %59 = load i16, ptr %arrayidx83, align 2
  %60 = load i32, ptr %mask, align 4
  %61 = trunc i32 %60 to i16
  %conv86 = and i16 %59, %61
  store i16 %conv86, ptr %b, align 2
  %62 = load i32, ptr %i, align 4
  %add87 = add nsw i32 %62, 1
  store i32 %add87, ptr %j, align 4
  br label %while.cond88

while.cond88:                                     ; preds = %while.body97, %if.then81
  %63 = load ptr, ptr %tp, align 8
  %64 = load i32, ptr %j, align 4
  %inc89 = add nsw i32 %64, 1
  store i32 %inc89, ptr %j, align 4
  %idxprom90 = sext i32 %64 to i64
  %arrayidx91 = getelementptr inbounds i16, ptr %63, i64 %idxprom90
  %65 = load i16, ptr %arrayidx91, align 2
  %conv92 = sext i16 %65 to i32
  %66 = load i32, ptr %mask, align 4
  %and93 = and i32 %66, %conv92
  %67 = load i16, ptr %b, align 2
  %conv94 = sext i16 %67 to i32
  %cmp95 = icmp eq i32 %and93, %conv94
  br i1 %cmp95, label %while.body97, label %if.end110

while.body97:                                     ; preds = %while.cond88
  %68 = load i32, ptr %j, align 4
  %69 = load i32, ptr %beg, align 4
  %cmp98 = icmp eq i32 %68, %69
  br i1 %cmp98, label %if.then100, label %while.cond88, !llvm.loop !44

if.then100:                                       ; preds = %while.body97
  %70 = load i32, ptr %j, align 4
  %add101 = add nsw i32 %70, 126
  %71 = load i32, ptr %i, align 4
  %sub102 = sub nsw i32 %add101, %71
  %conv103 = trunc i32 %sub102 to i8
  %72 = load ptr, ptr %op, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %72, i64 1
  store ptr %incdec.ptr, ptr %op, align 8
  store i8 %conv103, ptr %72, align 1
  %73 = load i16, ptr %b, align 2
  %conv104 = sext i16 %73 to i32
  %74 = load i32, ptr %shft, align 4
  %shr = ashr i32 %conv104, %74
  %conv105 = trunc i32 %shr to i8
  %75 = load ptr, ptr %op, align 8
  %incdec.ptr106 = getelementptr inbounds i8, ptr %75, i64 1
  store ptr %incdec.ptr106, ptr %op, align 8
  store i8 %conv105, ptr %75, align 1
  %76 = load i32, ptr %occ, align 4
  %sub107 = add nsw i32 %76, -2
  store i32 %sub107, ptr %occ, align 4
  %77 = load i32, ptr %beg, align 4
  store i32 %77, ptr %i, align 4
  br label %if.end110

if.end110:                                        ; preds = %while.cond88, %if.then100, %land.lhs.true77, %for.end
  br label %while.cond111

while.cond111:                                    ; preds = %while.cond141, %if.end110
  %78 = load i32, ptr %i, align 4
  %79 = load i32, ptr %beg, align 4
  %cmp112 = icmp slt i32 %78, %79
  br i1 %cmp112, label %while.body114, label %while.end155

while.body114:                                    ; preds = %while.cond111
  %80 = load i32, ptr %beg, align 4
  %81 = load i32, ptr %i, align 4
  %sub115 = sub nsw i32 %80, %81
  %cmp116 = icmp sgt i32 %sub115, 127
  %spec.select = select i1 %cmp116, i32 127, i32 %sub115
  store i32 %spec.select, ptr %j, align 4
  %82 = load i32, ptr %occ, align 4
  %add120 = add nsw i32 %spec.select, 3
  %cmp121 = icmp slt i32 %82, %add120
  br i1 %cmp121, label %if.then123, label %if.end138

if.then123:                                       ; preds = %while.body114
  %83 = load ptr, ptr %op, align 8
  %84 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp124 = getelementptr inbounds %struct.tiff, ptr %84, i64 0, i32 42
  store ptr %83, ptr %tif_rawcp124, align 8
  %tif_rawdatasize125 = getelementptr inbounds %struct.tiff, ptr %84, i64 0, i32 41
  %85 = load i64, ptr %tif_rawdatasize125, align 8
  %86 = load i32, ptr %occ, align 4
  %conv126 = sext i32 %86 to i64
  %sub127 = sub nsw i64 %85, %conv126
  %87 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc128 = getelementptr inbounds %struct.tiff, ptr %87, i64 0, i32 43
  store i64 %sub127, ptr %tif_rawcc128, align 8
  %call129 = call i32 @TIFFFlushData1(ptr noundef %87) #6
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.then131, label %if.end132

if.then131:                                       ; preds = %if.then123
  store i32 -1, ptr %retval, align 4
  br label %return

if.end132:                                        ; preds = %if.then123
  %88 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp133 = getelementptr inbounds %struct.tiff, ptr %88, i64 0, i32 42
  %89 = load ptr, ptr %tif_rawcp133, align 8
  store ptr %89, ptr %op, align 8
  %tif_rawdatasize134 = getelementptr inbounds %struct.tiff, ptr %88, i64 0, i32 41
  %90 = load i64, ptr %tif_rawdatasize134, align 8
  %tif_rawcc135 = getelementptr inbounds %struct.tiff, ptr %88, i64 0, i32 43
  %91 = load i64, ptr %tif_rawcc135, align 8
  %sub136 = sub nsw i64 %90, %91
  %conv137 = trunc i64 %sub136 to i32
  store i32 %conv137, ptr %occ, align 4
  br label %if.end138

if.end138:                                        ; preds = %if.end132, %while.body114
  %92 = load i32, ptr %j, align 4
  %conv139 = trunc i32 %92 to i8
  %93 = load ptr, ptr %op, align 8
  %incdec.ptr140 = getelementptr inbounds i8, ptr %93, i64 1
  store ptr %incdec.ptr140, ptr %op, align 8
  store i8 %conv139, ptr %93, align 1
  %94 = load i32, ptr %occ, align 4
  br label %while.cond141

while.cond141:                                    ; preds = %while.body144, %if.end138
  %storemerge2.in = phi i32 [ %94, %if.end138 ], [ %101, %while.body144 ]
  %storemerge2 = add nsw i32 %storemerge2.in, -1
  store i32 %storemerge2, ptr %occ, align 4
  %95 = load i32, ptr %j, align 4
  %dec142 = add nsw i32 %95, -1
  store i32 %dec142, ptr %j, align 4
  %tobool143.not = icmp eq i32 %95, 0
  br i1 %tobool143.not, label %while.cond111, label %while.body144, !llvm.loop !45

while.body144:                                    ; preds = %while.cond141
  %96 = load ptr, ptr %tp, align 8
  %97 = load i32, ptr %i, align 4
  %inc145 = add nsw i32 %97, 1
  store i32 %inc145, ptr %i, align 4
  %idxprom146 = sext i32 %97 to i64
  %arrayidx147 = getelementptr inbounds i16, ptr %96, i64 %idxprom146
  %98 = load i16, ptr %arrayidx147, align 2
  %conv148 = sext i16 %98 to i32
  %99 = load i32, ptr %shft, align 4
  %shr149 = ashr i32 %conv148, %99
  %conv151 = trunc i32 %shr149 to i8
  %100 = load ptr, ptr %op, align 8
  %incdec.ptr152 = getelementptr inbounds i8, ptr %100, i64 1
  store ptr %incdec.ptr152, ptr %op, align 8
  store i8 %conv151, ptr %100, align 1
  %101 = load i32, ptr %occ, align 4
  br label %while.cond141, !llvm.loop !46

while.end155:                                     ; preds = %while.cond111
  %102 = load i32, ptr %rc, align 4
  %cmp156 = icmp sgt i32 %102, 3
  br i1 %cmp156, label %if.then158, label %if.else170

if.then158:                                       ; preds = %while.end155
  %103 = load i32, ptr %rc, align 4
  %104 = trunc i32 %103 to i8
  %conv160 = add i8 %104, 126
  %105 = load ptr, ptr %op, align 8
  %incdec.ptr161 = getelementptr inbounds i8, ptr %105, i64 1
  store ptr %incdec.ptr161, ptr %op, align 8
  store i8 %conv160, ptr %105, align 1
  %106 = load ptr, ptr %tp, align 8
  %107 = load i32, ptr %beg, align 4
  %idxprom162 = sext i32 %107 to i64
  %arrayidx163 = getelementptr inbounds i16, ptr %106, i64 %idxprom162
  %108 = load i16, ptr %arrayidx163, align 2
  %conv164 = sext i16 %108 to i32
  %109 = load i32, ptr %shft, align 4
  %shr165 = ashr i32 %conv164, %109
  %conv167 = trunc i32 %shr165 to i8
  %110 = load ptr, ptr %op, align 8
  %incdec.ptr168 = getelementptr inbounds i8, ptr %110, i64 1
  store ptr %incdec.ptr168, ptr %op, align 8
  store i8 %conv167, ptr %110, align 1
  %111 = load i32, ptr %occ, align 4
  %sub169 = add nsw i32 %111, -2
  store i32 %sub169, ptr %occ, align 4
  br label %for.inc172

if.else170:                                       ; preds = %while.end155
  store i32 0, ptr %rc, align 4
  br label %for.inc172

for.inc172:                                       ; preds = %if.then158, %if.else170
  %112 = load i32, ptr %rc, align 4
  %113 = load i32, ptr %i, align 4
  %add173 = add nsw i32 %113, %112
  br label %for.cond30, !llvm.loop !47

for.end175:                                       ; preds = %for.cond
  %114 = load ptr, ptr %op, align 8
  %115 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp176 = getelementptr inbounds %struct.tiff, ptr %115, i64 0, i32 42
  store ptr %114, ptr %tif_rawcp176, align 8
  %tif_rawdatasize177 = getelementptr inbounds %struct.tiff, ptr %115, i64 0, i32 41
  %116 = load i64, ptr %tif_rawdatasize177, align 8
  %117 = load i32, ptr %occ, align 4
  %conv178 = sext i32 %117 to i64
  %sub179 = sub nsw i64 %116, %conv178
  %118 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc180 = getelementptr inbounds %struct.tiff, ptr %118, i64 0, i32 43
  store i64 %sub179, ptr %tif_rawcc180, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end175, %if.then131, %if.then43
  %119 = load i32, ptr %retval, align 4
  ret i32 %119
}

; Function Attrs: nounwind ssp uwtable
define internal void @L16fromY(ptr noundef %sp, ptr noundef %op, i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %l16 = alloca ptr, align 8
  %yp = alloca ptr, align 8
  store i32 %n, ptr %n.addr, align 4
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %sp, i64 0, i32 2
  %0 = load ptr, ptr %tbuf, align 8
  store ptr %0, ptr %l16, align 8
  store ptr %op, ptr %yp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %yp, align 8
  %incdec.ptr = getelementptr inbounds float, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %yp, align 8
  %3 = load float, ptr %2, align 4
  %conv = fpext float %3 to double
  %call = call i32 @pix16fromY(double noundef %conv)
  %conv1 = trunc i32 %call to i16
  %4 = load ptr, ptr %l16, align 8
  %incdec.ptr2 = getelementptr inbounds i16, ptr %4, i64 1
  store ptr %incdec.ptr2, ptr %l16, align 8
  store i16 %conv1, ptr %4, align 2
  br label %while.cond, !llvm.loop !48

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @TIFFFlushData1(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal i64 @pix24fromXYZ(ptr noundef %XYZ) #0 {
entry:
  %XYZ.addr = alloca ptr, align 8
  %Le = alloca i32, align 4
  %Ce = alloca i32, align 4
  %L = alloca double, align 8
  %u = alloca double, align 8
  %s = alloca double, align 8
  store ptr %XYZ, ptr %XYZ.addr, align 8
  %arrayidx = getelementptr inbounds float, ptr %XYZ, i64 1
  %0 = load float, ptr %arrayidx, align 4
  %conv = fpext float %0 to double
  store double %conv, ptr %L, align 8
  %cmp = fcmp ult float %0, 1.600000e+01
  br i1 %cmp, label %if.else, label %if.end7

if.else:                                          ; preds = %entry
  %1 = load double, ptr %L, align 8
  %cmp2 = fcmp ugt double %1, 0x3F30000000000000
  br i1 %cmp2, label %if.else5, label %if.end7

if.else5:                                         ; preds = %if.else
  %2 = load double, ptr %L, align 8
  %3 = call double @llvm.log.f64(double %2)
  %4 = call double @llvm.fmuladd.f64(double %3, double 0x3FF71547652B82FE, double 1.200000e+01)
  %mul = fmul double %4, 6.400000e+01
  %conv6 = fptosi double %mul to i32
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %if.else, %entry
  %storemerge1 = phi i32 [ 1023, %entry ], [ %conv6, %if.else5 ], [ 0, %if.else ]
  store i32 %storemerge1, ptr %Le, align 4
  %5 = load ptr, ptr %XYZ.addr, align 8
  %6 = load float, ptr %5, align 4
  %conv9 = fpext float %6 to double
  %arrayidx10 = getelementptr inbounds float, ptr %5, i64 1
  %7 = load float, ptr %arrayidx10, align 4
  %conv11 = fpext float %7 to double
  %8 = call double @llvm.fmuladd.f64(double %conv11, double 1.500000e+01, double %conv9)
  %9 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx13 = getelementptr inbounds float, ptr %9, i64 2
  %10 = load float, ptr %arrayidx13, align 4
  %conv14 = fpext float %10 to double
  %11 = call double @llvm.fmuladd.f64(double %conv14, double 3.000000e+00, double %8)
  store double %11, ptr %s, align 8
  %cmp16 = fcmp oeq double %11, 0.000000e+00
  br i1 %cmp16, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.end7
  store double 0x3FCAF286BD156C1A, ptr %u, align 8
  br label %if.end27

if.else19:                                        ; preds = %if.end7
  %12 = load ptr, ptr %XYZ.addr, align 8
  %13 = load float, ptr %12, align 4
  %conv21 = fpext float %13 to double
  %mul22 = fmul double %conv21, 4.000000e+00
  %14 = load double, ptr %s, align 8
  %div = fdiv double %mul22, %14
  store double %div, ptr %u, align 8
  %15 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx23 = getelementptr inbounds float, ptr %15, i64 1
  %16 = load float, ptr %arrayidx23, align 4
  %conv24 = fpext float %16 to double
  %mul25 = fmul double %conv24, 9.000000e+00
  %17 = load double, ptr %s, align 8
  %div26 = fdiv double %mul25, %17
  br label %if.end27

if.end27:                                         ; preds = %if.else19, %if.then18
  %storemerge2 = phi double [ %div26, %if.else19 ], [ 0x3FDE50D794B8199E, %if.then18 ]
  %18 = load double, ptr %u, align 8
  %call = call i32 @uv_encode(double noundef %18, double noundef %storemerge2)
  store i32 %call, ptr %Ce, align 4
  %cmp28 = icmp slt i32 %call, 0
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end27
  %call31 = call i32 @uv_encode(double noundef 0x3FCAF286BD156C1A, double noundef 0x3FDE50D794B8199E)
  store i32 %call31, ptr %Ce, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end27
  %19 = load i32, ptr %Le, align 4
  %shl = shl i32 %19, 14
  %20 = load i32, ptr %Ce, align 4
  %or = or i32 %shl, %20
  %conv33 = sext i32 %or to i64
  ret i64 %conv33
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
  %cmp = fcmp olt double %v, 0x3F9158B820000000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load double, ptr %v.addr, align 8
  %sub = fadd double %0, 0xBF9158B820000000
  %mul = fmul double %sub, 0x4071DB6DAD9C14EB
  %conv = fptosi double %mul to i32
  store i32 %conv, ptr %vi, align 4
  %cmp1 = icmp sgt i32 %conv, 162
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %1 = load double, ptr %u.addr, align 8
  %2 = load i32, ptr %vi, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [163 x %struct.anon], ptr @uv_row, i64 0, i64 %idxprom
  %3 = load float, ptr %arrayidx, align 4
  %conv5 = fpext float %3 to double
  %cmp6 = fcmp olt double %1, %conv5
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  store i32 -1, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end4
  %4 = load double, ptr %u.addr, align 8
  %5 = load i32, ptr %vi, align 4
  %idxprom10 = sext i32 %5 to i64
  %arrayidx11 = getelementptr inbounds [163 x %struct.anon], ptr @uv_row, i64 0, i64 %idxprom10
  %6 = load float, ptr %arrayidx11, align 4
  %conv13 = fpext float %6 to double
  %sub14 = fsub double %4, %conv13
  %mul15 = fmul double %sub14, 0x4071DB6DAD9C14EB
  %conv16 = fptosi double %mul15 to i32
  store i32 %conv16, ptr %ui, align 4
  %7 = load i32, ptr %vi, align 4
  %idxprom17 = sext i32 %7 to i64
  %nus = getelementptr inbounds [163 x %struct.anon], ptr @uv_row, i64 0, i64 %idxprom17, i32 1
  %8 = load i16, ptr %nus, align 4
  %conv19 = sext i16 %8 to i32
  %cmp20.not = icmp slt i32 %conv16, %conv19
  br i1 %cmp20.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end9
  store i32 -1, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end9
  %9 = load i32, ptr %vi, align 4
  %idxprom24 = sext i32 %9 to i64
  %ncum = getelementptr inbounds [163 x %struct.anon], ptr @uv_row, i64 0, i64 %idxprom24, i32 2
  %10 = load i16, ptr %ncum, align 2
  %conv26 = sext i16 %10 to i32
  %11 = load i32, ptr %ui, align 4
  %add = add nsw i32 %11, %conv26
  store i32 %add, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then22, %if.then8, %if.then3, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @pix32fromXYZ(ptr noundef %XYZ) #0 {
entry:
  %XYZ.addr = alloca ptr, align 8
  %Le = alloca i32, align 4
  %ue = alloca i32, align 4
  %u = alloca double, align 8
  %v = alloca double, align 8
  %s = alloca double, align 8
  store ptr %XYZ, ptr %XYZ.addr, align 8
  %arrayidx = getelementptr inbounds float, ptr %XYZ, i64 1
  %0 = load float, ptr %arrayidx, align 4
  %conv = fpext float %0 to double
  %call = call i32 @pix16fromY(double noundef %conv)
  store i32 %call, ptr %Le, align 4
  %1 = load float, ptr %XYZ, align 4
  %conv2 = fpext float %1 to double
  %2 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx3 = getelementptr inbounds float, ptr %2, i64 1
  %3 = load float, ptr %arrayidx3, align 4
  %conv4 = fpext float %3 to double
  %4 = call double @llvm.fmuladd.f64(double %conv4, double 1.500000e+01, double %conv2)
  %arrayidx5 = getelementptr inbounds float, ptr %2, i64 2
  %5 = load float, ptr %arrayidx5, align 4
  %conv6 = fpext float %5 to double
  %6 = call double @llvm.fmuladd.f64(double %conv6, double 3.000000e+00, double %4)
  store double %6, ptr %s, align 8
  %cmp = fcmp oeq double %6, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 0x3FCAF286BD156C1A, ptr %u, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %XYZ.addr, align 8
  %8 = load float, ptr %7, align 4
  %conv9 = fpext float %8 to double
  %mul = fmul double %conv9, 4.000000e+00
  %9 = load double, ptr %s, align 8
  %div = fdiv double %mul, %9
  store double %div, ptr %u, align 8
  %10 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx10 = getelementptr inbounds float, ptr %10, i64 1
  %11 = load float, ptr %arrayidx10, align 4
  %conv11 = fpext float %11 to double
  %mul12 = fmul double %conv11, 9.000000e+00
  %12 = load double, ptr %s, align 8
  %div13 = fdiv double %mul12, %12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi double [ %div13, %if.else ], [ 0x3FDE50D794B8199E, %if.then ]
  store double %storemerge, ptr %v, align 8
  %13 = load double, ptr %u, align 8
  %cmp14 = fcmp ugt double %13, 0.000000e+00
  %14 = load double, ptr %u, align 8
  %mul18 = fmul double %14, 4.100000e+02
  %conv19 = fptoui double %mul18 to i32
  %storemerge1 = select i1 %cmp14, i32 %conv19, i32 0
  %cmp21 = icmp ugt i32 %storemerge1, 255
  %storemerge4 = select i1 %cmp21, i32 255, i32 %storemerge1
  store i32 %storemerge4, ptr %ue, align 4
  %15 = load double, ptr %v, align 8
  %cmp25 = fcmp ugt double %15, 0.000000e+00
  %16 = load double, ptr %v, align 8
  %mul29 = fmul double %16, 4.100000e+02
  %conv30 = fptoui double %mul29 to i32
  %storemerge2 = select i1 %cmp25, i32 %conv30, i32 0
  %cmp32 = icmp ugt i32 %storemerge2, 255
  %storemerge3 = select i1 %cmp32, i32 255, i32 %storemerge2
  %17 = load i32, ptr %Le, align 4
  %shl = shl i32 %17, 16
  %18 = load i32, ptr %ue, align 4
  %shl36 = shl i32 %18, 8
  %or = or i32 %shl, %shl36
  %or37 = or i32 %or, %storemerge3
  %conv38 = zext i32 %or37 to i64
  ret i64 %conv38
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @pix16fromY(double noundef %Y) #0 {
entry:
  %retval = alloca i32, align 4
  %Y.addr = alloca double, align 8
  store double %Y, ptr %Y.addr, align 8
  %cmp = fcmp ult double %Y, 1.844670e+19
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 32767, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load double, ptr %Y.addr, align 8
  %cmp1 = fcmp ugt double %0, -1.844670e+19
  br i1 %cmp1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i32 65535, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %1 = load double, ptr %Y.addr, align 8
  %cmp4 = fcmp ogt double %1, 5.435710e-20
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %2 = load double, ptr %Y.addr, align 8
  %3 = call double @llvm.log.f64(double %2)
  %4 = call double @llvm.fmuladd.f64(double %3, double 0x3FF71547652B82FE, double 6.400000e+01)
  %mul = fmul double %4, 2.560000e+02
  %conv = fptosi double %mul to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  %5 = load double, ptr %Y.addr, align 8
  %cmp7 = fcmp olt double %5, -5.435710e-20
  br i1 %cmp7, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end6
  %6 = load double, ptr %Y.addr, align 8
  %fneg = fneg double %6
  %7 = call double @llvm.log.f64(double %fneg)
  %8 = call double @llvm.fmuladd.f64(double %7, double 0x3FF71547652B82FE, double 6.400000e+01)
  %mul11 = fmul double %8, 2.560000e+02
  %conv12 = fptosi double %mul11 to i32
  %or = or i32 %conv12, -32768
  store i32 %or, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end6
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then9, %if.then5, %if.then2, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

declare void @_TIFFfree(ptr noundef) #2

declare i32 @TIFFSetField(ptr noundef, i64 noundef, ...) #2

declare i64 @TIFFTileSize(ptr noundef) #2

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
