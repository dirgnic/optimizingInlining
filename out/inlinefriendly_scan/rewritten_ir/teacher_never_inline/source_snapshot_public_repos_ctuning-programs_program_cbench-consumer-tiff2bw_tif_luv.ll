; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_never_inline/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-tiff2bw_tif_luv.prepared.ll'
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
  %call = call ptr @_TIFFmalloc(i32 noundef 48) #6
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

declare ptr @_TIFFmalloc(i32 noundef) #2

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
  %4 = load i16, ptr %td_compression, align 8
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
  %call = call i32 @TIFFScanlineSize(ptr noundef %tif) #6
  store i32 %call, ptr %rowlen, align 4
  %rem = srem i32 %cc, %call
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %while.cond, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogLuvDecodeStrip, ptr noundef nonnull @.str, i32 noundef 324, ptr noundef nonnull @.str.17) #5
  unreachable

while.cond:                                       ; preds = %entry, %while.body
  %0 = load i32, ptr %cc.addr, align 4
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 26
  %2 = load ptr, ptr %tif_decoderow, align 8
  %3 = load ptr, ptr %bp.addr, align 8
  %4 = load i32, ptr %rowlen, align 4
  %5 = load i16, ptr %s.addr, align 2
  %call2 = call i32 %2(ptr noundef %1, ptr noundef %3, i32 noundef %4, i16 noundef zeroext %5) #6
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %6 = load i32, ptr %rowlen, align 4
  %7 = load ptr, ptr %bp.addr, align 8
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %idx.ext
  store ptr %add.ptr, ptr %bp.addr, align 8
  %8 = load i32, ptr %cc.addr, align 4
  %sub = sub nsw i32 %8, %6
  store i32 %sub, ptr %cc.addr, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond, %land.rhs
  %9 = load i32, ptr %cc.addr, align 4
  %cmp4 = icmp eq i32 %9, 0
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
  %call = call i32 @TIFFTileRowSize(ptr noundef %tif) #6
  store i32 %call, ptr %rowlen, align 4
  %rem = srem i32 %cc, %call
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %while.cond, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogLuvDecodeTile, ptr noundef nonnull @.str, i32 noundef 340, ptr noundef nonnull @.str.17) #5
  unreachable

while.cond:                                       ; preds = %entry, %while.body
  %0 = load i32, ptr %cc.addr, align 4
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 26
  %2 = load ptr, ptr %tif_decoderow, align 8
  %3 = load ptr, ptr %bp.addr, align 8
  %4 = load i32, ptr %rowlen, align 4
  %5 = load i16, ptr %s.addr, align 2
  %call2 = call i32 %2(ptr noundef %1, ptr noundef %3, i32 noundef %4, i16 noundef zeroext %5) #6
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %6 = load i32, ptr %rowlen, align 4
  %7 = load ptr, ptr %bp.addr, align 8
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %idx.ext
  store ptr %add.ptr, ptr %bp.addr, align 8
  %8 = load i32, ptr %cc.addr, align 4
  %sub = sub nsw i32 %8, %6
  store i32 %sub, ptr %cc.addr, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond, %land.rhs
  %9 = load i32, ptr %cc.addr, align 4
  %cmp4 = icmp eq i32 %9, 0
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
  %4 = load i16, ptr %td_compression, align 8
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
  %call = call i32 @TIFFScanlineSize(ptr noundef %tif) #6
  store i32 %call, ptr %rowlen, align 4
  %rem = srem i32 %cc, %call
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %while.cond, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogLuvEncodeStrip, ptr noundef nonnull @.str, i32 noundef 577, ptr noundef nonnull @.str.17) #5
  unreachable

while.cond:                                       ; preds = %entry, %while.body
  %0 = load i32, ptr %cc.addr, align 4
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_encoderow = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 27
  %2 = load ptr, ptr %tif_encoderow, align 8
  %3 = load ptr, ptr %bp.addr, align 8
  %4 = load i32, ptr %rowlen, align 4
  %5 = load i16, ptr %s.addr, align 2
  %call2 = call i32 %2(ptr noundef %1, ptr noundef %3, i32 noundef %4, i16 noundef zeroext %5) #6
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %6 = load i32, ptr %rowlen, align 4
  %7 = load ptr, ptr %bp.addr, align 8
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %idx.ext
  store ptr %add.ptr, ptr %bp.addr, align 8
  %8 = load i32, ptr %cc.addr, align 4
  %sub = sub nsw i32 %8, %6
  store i32 %sub, ptr %cc.addr, align 4
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond, %land.rhs
  %9 = load i32, ptr %cc.addr, align 4
  %cmp5 = icmp eq i32 %9, 0
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
  %call = call i32 @TIFFTileRowSize(ptr noundef %tif) #6
  store i32 %call, ptr %rowlen, align 4
  %rem = srem i32 %cc, %call
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %while.cond, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogLuvEncodeTile, ptr noundef nonnull @.str, i32 noundef 592, ptr noundef nonnull @.str.17) #5
  unreachable

while.cond:                                       ; preds = %entry, %while.body
  %0 = load i32, ptr %cc.addr, align 4
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_encoderow = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 27
  %2 = load ptr, ptr %tif_encoderow, align 8
  %3 = load ptr, ptr %bp.addr, align 8
  %4 = load i32, ptr %rowlen, align 4
  %5 = load i16, ptr %s.addr, align 2
  %call2 = call i32 %2(ptr noundef %1, ptr noundef %3, i32 noundef %4, i16 noundef zeroext %5) #6
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %6 = load i32, ptr %rowlen, align 4
  %7 = load ptr, ptr %bp.addr, align 8
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %idx.ext
  store ptr %add.ptr, ptr %bp.addr, align 8
  %8 = load i32, ptr %cc.addr, align 4
  %sub = sub nsw i32 %8, %6
  store i32 %sub, ptr %cc.addr, align 4
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond, %land.rhs
  %9 = load i32, ptr %cc.addr, align 4
  %cmp5 = icmp eq i32 %9, 0
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
  store i16 16, ptr %td_bitspersample, align 4
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
define internal i32 @LogLuvVGetField(ptr noundef %tif, i32 noundef %tag, ptr noundef %ap) #0 {
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
  %cond = icmp eq i32 %tag, 65560
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
  %7 = load i32, ptr %tag.addr, align 4
  %8 = load ptr, ptr %ap.addr, align 8
  %call = call i32 %5(ptr noundef %6, i32 noundef %7, ptr noundef %8) #6
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %storemerge = phi i32 [ 1, %sw.bb ], [ %call, %sw.default ]
  ret i32 %storemerge
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
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %tag, ptr %tag.addr, align 4
  store ptr %ap, ptr %ap.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %cond = icmp eq i32 %tag, 65560
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
  %call = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %7, i32 noundef 258, i32 noundef %8) #6
  %9 = load i32, ptr %fmt, align 4
  %call7 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %7, i32 noundef 339, i32 noundef %9) #6
  %call8 = call i32 @TIFFTileSize(ptr noundef %7) #6
  %tif_tilesize = getelementptr inbounds %struct.tiff, ptr %7, i64 0, i32 20
  store i32 %call8, ptr %tif_tilesize, align 4
  %10 = load ptr, ptr %tif.addr, align 8
  %call9 = call i32 @TIFFScanlineSize(ptr noundef %10) #6
  %tif_scanlinesize = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 38
  store i32 %call9, ptr %tif_scanlinesize, align 8
  store i32 1, ptr %retval, align 4
  br label %return

sw.default10:                                     ; preds = %entry
  %11 = load ptr, ptr %sp, align 8
  %vsetparent = getelementptr inbounds %struct.logLuvState, ptr %11, i64 0, i32 6
  %12 = load ptr, ptr %vsetparent, align 8
  %13 = load ptr, ptr %tif.addr, align 8
  %14 = load i32, ptr %tag.addr, align 4
  %15 = load ptr, ptr %ap.addr, align 8
  %call11 = call i32 %12(ptr noundef %13, i32 noundef %14, ptr noundef %15) #6
  store i32 %call11, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default10, %sw.epilog, %sw.default
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
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
  store i32 4, ptr %pixel_size23, align 4
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
  %18 = load i32, ptr %td_imagewidth, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i64 0, i32 16
  %19 = load i32, ptr %td_rowsperstrip, align 4
  %mul = mul i32 %18, %19
  %conv26 = trunc i32 %mul to i16
  %20 = load ptr, ptr %sp, align 8
  %tbuflen = getelementptr inbounds %struct.logLuvState, ptr %20, i64 0, i32 3
  store i16 %conv26, ptr %tbuflen, align 8
  %sext = shl i32 %mul, 16
  %mul29 = ashr exact i32 %sext, 14
  %call31 = call ptr @_TIFFmalloc(i32 noundef %mul29) #6
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %20, i64 0, i32 2
  store ptr %call31, ptr %tbuf, align 8
  %21 = load ptr, ptr %sp, align 8
  %tbuf32 = getelementptr inbounds %struct.logLuvState, ptr %21, i64 0, i32 2
  %22 = load ptr, ptr %tbuf32, align 8
  %cmp33 = icmp eq ptr %22, null
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %sw.epilog
  %23 = load ptr, ptr %tif.addr, align 8
  %24 = load ptr, ptr %23, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @LogLuvInitState.module, ptr noundef nonnull @.str.9, ptr noundef %24) #6
  store i32 0, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %sw.epilog
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end37, %if.then35, %sw.default, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvDecode24(ptr noundef %tif, ptr noundef %op, i32 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %occ.addr = alloca i32, align 4
  %sp = alloca ptr, align 8
  %cc = alloca i32, align 4
  %i = alloca i32, align 4
  %npixels = alloca i32, align 4
  %bp = alloca ptr, align 8
  %tp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i32 %occ, ptr %occ.addr, align 4
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
  %2 = load i32, ptr %occ.addr, align 4
  %3 = load ptr, ptr %sp, align 8
  %pixel_size = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 1
  %4 = load i32, ptr %pixel_size, align 4
  %div = sdiv i32 %2, %4
  store i32 %div, ptr %npixels, align 4
  %5 = load i32, ptr %3, align 8
  %cmp12 = icmp eq i32 %5, 2
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end11
  %6 = load ptr, ptr %op.addr, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end11
  %7 = load ptr, ptr %sp, align 8
  %tbuflen = getelementptr inbounds %struct.logLuvState, ptr %7, i64 0, i32 3
  %8 = load i16, ptr %tbuflen, align 8
  %conv14 = sext i16 %8 to i32
  %9 = load i32, ptr %npixels, align 4
  %cmp15.not = icmp sgt i32 %9, %conv14
  br i1 %cmp15.not, label %cond.true21, label %cond.end23

cond.true21:                                      ; preds = %if.else
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogLuvDecode24, ptr noundef nonnull @.str, i32 noundef 232, ptr noundef nonnull @.str.11) #5
  unreachable

cond.end23:                                       ; preds = %if.else
  %10 = load ptr, ptr %sp, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %10, i64 0, i32 2
  %11 = load ptr, ptr %tbuf, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end23, %if.then
  %storemerge = phi ptr [ %11, %cond.end23 ], [ %6, %if.then ]
  store ptr %storemerge, ptr %tp, align 8
  %12 = load i32, ptr %npixels, align 4
  %mul = shl i32 %12, 2
  call void @_TIFFmemset(ptr noundef %storemerge, i32 noundef 0, i32 noundef %mul) #6
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %13, i64 0, i32 42
  %14 = load ptr, ptr %tif_rawcp, align 8
  store ptr %14, ptr %bp, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %13, i64 0, i32 43
  %15 = load i32, ptr %tif_rawcc, align 8
  store i32 %15, ptr %cc, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %storemerge1 = phi i32 [ 0, %if.end ], [ %inc, %for.body ]
  store i32 %storemerge1, ptr %i, align 4
  %16 = load i32, ptr %npixels, align 4
  %cmp26 = icmp slt i32 %storemerge1, %16
  %17 = load i32, ptr %cc, align 4
  %cmp28 = icmp sgt i32 %17, 0
  %18 = select i1 %cmp26, i1 %cmp28, i1 false
  br i1 %18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %bp, align 8
  %20 = load i8, ptr %19, align 1
  %conv30 = zext i8 %20 to i32
  %shl = shl nuw nsw i32 %conv30, 16
  %arrayidx31 = getelementptr inbounds i8, ptr %19, i64 1
  %21 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %21 to i32
  %shl33 = shl nuw nsw i32 %conv32, 8
  %or = or i32 %shl, %shl33
  %22 = load ptr, ptr %bp, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %22, i64 2
  %23 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %23 to i32
  %or36 = or i32 %or, %conv35
  %24 = load ptr, ptr %tp, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx37 = getelementptr inbounds i32, ptr %24, i64 %idxprom
  store i32 %or36, ptr %arrayidx37, align 4
  %26 = load ptr, ptr %bp, align 8
  %add.ptr = getelementptr inbounds i8, ptr %26, i64 3
  store ptr %add.ptr, ptr %bp, align 8
  %27 = load i32, ptr %cc, align 4
  %sub = add nsw i32 %27, -3
  store i32 %sub, ptr %cc, align 4
  %28 = load i32, ptr %i, align 4
  %inc = add nsw i32 %28, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %29 = load ptr, ptr %bp, align 8
  %30 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp38 = getelementptr inbounds %struct.tiff, ptr %30, i64 0, i32 42
  store ptr %29, ptr %tif_rawcp38, align 8
  %31 = load i32, ptr %cc, align 4
  %tif_rawcc39 = getelementptr inbounds %struct.tiff, ptr %30, i64 0, i32 43
  store i32 %31, ptr %tif_rawcc39, align 8
  %32 = load i32, ptr %i, align 4
  %33 = load i32, ptr %npixels, align 4
  %cmp40.not = icmp eq i32 %32, %33
  br i1 %cmp40.not, label %if.end44, label %if.then42

if.then42:                                        ; preds = %for.end
  %34 = load ptr, ptr %tif.addr, align 8
  %35 = load ptr, ptr %34, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 11
  %36 = load i32, ptr %tif_row, align 8
  %37 = load i32, ptr %npixels, align 4
  %38 = load i32, ptr %i, align 4
  %sub43 = sub nsw i32 %37, %38
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %35, ptr noundef nonnull @.str.12, i32 noundef %36, i32 noundef %sub43) #6
  br label %return

if.end44:                                         ; preds = %for.end
  %39 = load ptr, ptr %sp, align 8
  %tfunc = getelementptr inbounds %struct.logLuvState, ptr %39, i64 0, i32 4
  %40 = load ptr, ptr %tfunc, align 8
  %41 = load ptr, ptr %op.addr, align 8
  %42 = load i32, ptr %npixels, align 4
  call void %40(ptr noundef %39, ptr noundef %41, i32 noundef %42) #6
  br label %return

return:                                           ; preds = %if.end44, %if.then42
  %storemerge2 = phi i32 [ 1, %if.end44 ], [ 0, %if.then42 ]
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
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr %xyz, align 8
  call void @pix24toXYZ(i32 noundef %3, ptr noundef %4)
  %add.ptr = getelementptr inbounds float, ptr %4, i64 3
  store ptr %add.ptr, ptr %xyz, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %2, i64 1
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
  %3 = load i32, ptr %2, align 4
  %shr = lshr i32 %3, 12
  %4 = trunc i32 %shr to i16
  %5 = and i16 %4, 4093
  %conv = add nuw nsw i16 %5, 13314
  %6 = load ptr, ptr %luv3, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %6, i64 1
  store ptr %incdec.ptr, ptr %luv3, align 8
  store i16 %conv, ptr %6, align 2
  %7 = load ptr, ptr %luv, align 8
  %8 = load i32, ptr %7, align 4
  %and1 = and i32 %8, 16383
  %call = call i32 @uv_decode(ptr noundef nonnull %u, ptr noundef nonnull %v, i32 noundef %and1)
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
  %incdec.ptr5 = getelementptr inbounds i16, ptr %10, i64 1
  store ptr %incdec.ptr5, ptr %luv3, align 8
  store i16 %conv4, ptr %10, align 2
  %11 = load double, ptr %v, align 8
  %mul6 = fmul double %11, 3.276800e+04
  %conv7 = fptosi double %mul6 to i16
  %incdec.ptr8 = getelementptr inbounds i16, ptr %10, i64 2
  store ptr %incdec.ptr8, ptr %luv3, align 8
  store i16 %conv7, ptr %incdec.ptr5, align 2
  %12 = load ptr, ptr %luv, align 8
  %incdec.ptr9 = getelementptr inbounds i32, ptr %12, i64 1
  store ptr %incdec.ptr9, ptr %luv, align 8
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
  %incdec.ptr = getelementptr inbounds i32, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %luv, align 8
  %3 = load i32, ptr %2, align 4
  call void @pix24toXYZ(i32 noundef %3, ptr noundef nonnull %xyz)
  %4 = load ptr, ptr %rgb, align 8
  call void @XYZtoRGB24(ptr noundef nonnull %xyz, ptr noundef %4)
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 3
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvDecode32(ptr noundef %tif, ptr noundef %op, i32 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %occ.addr = alloca i32, align 4
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
  %2 = load i32, ptr %occ.addr, align 4
  %3 = load ptr, ptr %sp, align 8
  %pixel_size = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 1
  %4 = load i32, ptr %pixel_size, align 4
  %div = sdiv i32 %2, %4
  store i32 %div, ptr %npixels, align 4
  %5 = load i32, ptr %3, align 8
  %cmp12 = icmp eq i32 %5, 2
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end11
  %6 = load ptr, ptr %op.addr, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end11
  %7 = load ptr, ptr %sp, align 8
  %tbuflen = getelementptr inbounds %struct.logLuvState, ptr %7, i64 0, i32 3
  %8 = load i16, ptr %tbuflen, align 8
  %conv14 = sext i16 %8 to i32
  %9 = load i32, ptr %npixels, align 4
  %cmp15.not = icmp sgt i32 %9, %conv14
  br i1 %cmp15.not, label %cond.true21, label %cond.end23

cond.true21:                                      ; preds = %if.else
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogLuvDecode32, ptr noundef nonnull @.str, i32 noundef 278, ptr noundef nonnull @.str.11) #5
  unreachable

cond.end23:                                       ; preds = %if.else
  %10 = load ptr, ptr %sp, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %10, i64 0, i32 2
  %11 = load ptr, ptr %tbuf, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end23, %if.then
  %storemerge = phi ptr [ %11, %cond.end23 ], [ %6, %if.then ]
  store ptr %storemerge, ptr %tp, align 8
  %12 = load i32, ptr %npixels, align 4
  %mul = shl i32 %12, 2
  call void @_TIFFmemset(ptr noundef %storemerge, i32 noundef 0, i32 noundef %mul) #6
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %13, i64 0, i32 42
  %14 = load ptr, ptr %tif_rawcp, align 8
  store ptr %14, ptr %bp, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %13, i64 0, i32 43
  %15 = load i32, ptr %tif_rawcc, align 8
  store i32 %15, ptr %cc, align 4
  store i32 32, ptr %shft, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.end, %if.end
  %16 = load i32, ptr %shft, align 4
  %sub = add nsw i32 %16, -8
  store i32 %sub, ptr %shft, align 4
  %cmp26 = icmp sgt i32 %16, 7
  br i1 %cmp26, label %for.body, label %for.end70

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %if.end62, %for.body
  %17 = load i32, ptr %i, align 4
  %18 = load i32, ptr %npixels, align 4
  %cmp29 = icmp slt i32 %17, %18
  %19 = load i32, ptr %cc, align 4
  %cmp31 = icmp sgt i32 %19, 0
  %20 = select i1 %cmp29, i1 %cmp31, i1 false
  br i1 %20, label %for.body33, label %for.end

for.body33:                                       ; preds = %for.cond28
  %21 = load ptr, ptr %bp, align 8
  %22 = load i8, ptr %21, align 1
  %cmp35 = icmp slt i8 %22, 0
  br i1 %cmp35, label %if.then37, label %if.else43

if.then37:                                        ; preds = %for.body33
  %23 = load ptr, ptr %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %23, i64 1
  store ptr %incdec.ptr, ptr %bp, align 8
  %24 = load i8, ptr %23, align 1
  %conv38 = zext i8 %24 to i32
  %add = add nsw i32 %conv38, -126
  store i32 %add, ptr %rc, align 4
  %incdec.ptr39 = getelementptr inbounds i8, ptr %23, i64 2
  store ptr %incdec.ptr39, ptr %bp, align 8
  %25 = load i8, ptr %incdec.ptr, align 1
  %conv40 = zext i8 %25 to i32
  %26 = load i32, ptr %shft, align 4
  %shl = shl i32 %conv40, %26
  store i32 %shl, ptr %b, align 4
  %27 = load i32, ptr %cc, align 4
  %sub41 = add nsw i32 %27, -2
  store i32 %sub41, ptr %cc, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then37
  %28 = load i32, ptr %rc, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, ptr %rc, align 4
  %tobool42.not = icmp eq i32 %28, 0
  br i1 %tobool42.not, label %if.end62, label %while.body

while.body:                                       ; preds = %while.cond
  %29 = load i32, ptr %b, align 4
  %30 = load ptr, ptr %tp, align 8
  %31 = load i32, ptr %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %i, align 4
  %idxprom = sext i32 %31 to i64
  %arrayidx = getelementptr inbounds i32, ptr %30, i64 %idxprom
  %32 = load i32, ptr %arrayidx, align 4
  %or = or i32 %32, %29
  store i32 %or, ptr %arrayidx, align 4
  br label %while.cond, !llvm.loop !15

if.else43:                                        ; preds = %for.body33
  %33 = load ptr, ptr %bp, align 8
  %incdec.ptr44 = getelementptr inbounds i8, ptr %33, i64 1
  store ptr %incdec.ptr44, ptr %bp, align 8
  %34 = load i8, ptr %33, align 1
  %conv45 = zext i8 %34 to i32
  store i32 %conv45, ptr %rc, align 4
  br label %while.cond46

while.cond46:                                     ; preds = %while.body53, %if.else43
  %35 = load i32, ptr %cc, align 4
  %dec47 = add nsw i32 %35, -1
  store i32 %dec47, ptr %cc, align 4
  %tobool48.not = icmp eq i32 %dec47, 0
  br i1 %tobool48.not, label %if.end62, label %land.rhs49

land.rhs49:                                       ; preds = %while.cond46
  %36 = load i32, ptr %rc, align 4
  %dec50 = add nsw i32 %36, -1
  store i32 %dec50, ptr %rc, align 4
  %tobool51 = icmp ne i32 %36, 0
  br i1 %tobool51, label %while.body53, label %if.end62

while.body53:                                     ; preds = %land.rhs49
  %37 = load ptr, ptr %bp, align 8
  %incdec.ptr54 = getelementptr inbounds i8, ptr %37, i64 1
  store ptr %incdec.ptr54, ptr %bp, align 8
  %38 = load i8, ptr %37, align 1
  %conv55 = zext i8 %38 to i32
  %39 = load i32, ptr %shft, align 4
  %shl56 = shl i32 %conv55, %39
  %40 = load ptr, ptr %tp, align 8
  %41 = load i32, ptr %i, align 4
  %inc57 = add nsw i32 %41, 1
  store i32 %inc57, ptr %i, align 4
  %idxprom58 = sext i32 %41 to i64
  %arrayidx59 = getelementptr inbounds i32, ptr %40, i64 %idxprom58
  %42 = load i32, ptr %arrayidx59, align 4
  %or60 = or i32 %42, %shl56
  store i32 %or60, ptr %arrayidx59, align 4
  br label %while.cond46, !llvm.loop !16

if.end62:                                         ; preds = %land.rhs49, %while.cond46, %while.cond
  br label %for.cond28, !llvm.loop !17

for.end:                                          ; preds = %for.cond28
  %43 = load i32, ptr %i, align 4
  %44 = load i32, ptr %npixels, align 4
  %cmp63.not = icmp eq i32 %43, %44
  br i1 %cmp63.not, label %for.cond, label %if.then65, !llvm.loop !18

if.then65:                                        ; preds = %for.end
  %45 = load ptr, ptr %tif.addr, align 8
  %46 = load ptr, ptr %45, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %45, i64 0, i32 11
  %47 = load i32, ptr %tif_row, align 8
  %48 = load i32, ptr %npixels, align 4
  %49 = load i32, ptr %i, align 4
  %sub66 = sub nsw i32 %48, %49
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %46, ptr noundef nonnull @.str.13, i32 noundef %47, i32 noundef %sub66) #6
  %50 = load ptr, ptr %bp, align 8
  %51 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp67 = getelementptr inbounds %struct.tiff, ptr %51, i64 0, i32 42
  store ptr %50, ptr %tif_rawcp67, align 8
  %52 = load i32, ptr %cc, align 4
  %tif_rawcc68 = getelementptr inbounds %struct.tiff, ptr %51, i64 0, i32 43
  store i32 %52, ptr %tif_rawcc68, align 8
  br label %return

for.end70:                                        ; preds = %for.cond
  %53 = load ptr, ptr %sp, align 8
  %tfunc = getelementptr inbounds %struct.logLuvState, ptr %53, i64 0, i32 4
  %54 = load ptr, ptr %tfunc, align 8
  %55 = load ptr, ptr %op.addr, align 8
  %56 = load i32, ptr %npixels, align 4
  call void %54(ptr noundef %53, ptr noundef %55, i32 noundef %56) #6
  %57 = load ptr, ptr %bp, align 8
  %58 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp71 = getelementptr inbounds %struct.tiff, ptr %58, i64 0, i32 42
  store ptr %57, ptr %tif_rawcp71, align 8
  %59 = load i32, ptr %cc, align 4
  %tif_rawcc72 = getelementptr inbounds %struct.tiff, ptr %58, i64 0, i32 43
  store i32 %59, ptr %tif_rawcc72, align 8
  br label %return

return:                                           ; preds = %for.end70, %if.then65
  %storemerge1 = phi i32 [ 1, %for.end70 ], [ 0, %if.then65 ]
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
  %incdec.ptr = getelementptr inbounds i32, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %luv, align 8
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr %xyz, align 8
  call void @pix32toXYZ(i32 noundef %3, ptr noundef %4)
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
  %3 = load i32, ptr %2, align 4
  %shr = lshr i32 %3, 16
  %conv = trunc i32 %shr to i16
  %4 = load ptr, ptr %luv3, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %4, i64 1
  store ptr %incdec.ptr, ptr %luv3, align 8
  store i16 %conv, ptr %4, align 2
  %5 = load ptr, ptr %luv, align 8
  %6 = load i32, ptr %5, align 4
  %shr1 = lshr i32 %6, 8
  %and = and i32 %shr1, 255
  %conv2 = uitofp i32 %and to double
  %add = fadd double %conv2, 5.000000e-01
  %mul = fmul double %add, 0x3F63FB013FB013FB
  store double %mul, ptr %u, align 8
  %7 = load ptr, ptr %luv, align 8
  %8 = load i32, ptr %7, align 4
  %and3 = and i32 %8, 255
  %conv4 = uitofp i32 %and3 to double
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
  %incdec.ptr13 = getelementptr inbounds i32, ptr %12, i64 1
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
  %incdec.ptr = getelementptr inbounds i32, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %luv, align 8
  %3 = load i32, ptr %2, align 4
  call void @pix32toXYZ(i32 noundef %3, ptr noundef nonnull %xyz)
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
  %15 = load i32, ptr %td_imagewidth, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %14, i64 0, i32 16
  %16 = load i32, ptr %td_rowsperstrip, align 4
  %mul = mul i32 %15, %16
  %conv19 = trunc i32 %mul to i16
  %17 = load ptr, ptr %sp, align 8
  %tbuflen = getelementptr inbounds %struct.logLuvState, ptr %17, i64 0, i32 3
  store i16 %conv19, ptr %tbuflen, align 8
  %sext = shl i32 %mul, 16
  %mul22 = ashr exact i32 %sext, 15
  %call24 = call ptr @_TIFFmalloc(i32 noundef %mul22) #6
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %17, i64 0, i32 2
  store ptr %call24, ptr %tbuf, align 8
  %18 = load ptr, ptr %sp, align 8
  %tbuf25 = getelementptr inbounds %struct.logLuvState, ptr %18, i64 0, i32 2
  %19 = load ptr, ptr %tbuf25, align 8
  %cmp26 = icmp eq ptr %19, null
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %sw.epilog
  %20 = load ptr, ptr %tif.addr, align 8
  %21 = load ptr, ptr %20, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @LogL16InitState.module, ptr noundef nonnull @.str.9, ptr noundef %21) #6
  store i32 0, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %sw.epilog
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end30, %if.then28, %sw.default
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogL16Decode(ptr noundef %tif, ptr noundef %op, i32 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %occ.addr = alloca i32, align 4
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
  %2 = load i32, ptr %occ.addr, align 4
  %3 = load ptr, ptr %sp, align 8
  %pixel_size = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 1
  %4 = load i32, ptr %pixel_size, align 4
  %div = sdiv i32 %2, %4
  store i32 %div, ptr %npixels, align 4
  %5 = load i32, ptr %3, align 8
  %cmp12 = icmp eq i32 %5, 1
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end11
  %6 = load ptr, ptr %op.addr, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end11
  %7 = load ptr, ptr %sp, align 8
  %tbuflen = getelementptr inbounds %struct.logLuvState, ptr %7, i64 0, i32 3
  %8 = load i16, ptr %tbuflen, align 8
  %conv14 = sext i16 %8 to i32
  %9 = load i32, ptr %npixels, align 4
  %cmp15.not = icmp sgt i32 %9, %conv14
  br i1 %cmp15.not, label %cond.true21, label %cond.end23

cond.true21:                                      ; preds = %if.else
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogL16Decode, ptr noundef nonnull @.str, i32 noundef 177, ptr noundef nonnull @.str.11) #5
  unreachable

cond.end23:                                       ; preds = %if.else
  %10 = load ptr, ptr %sp, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %10, i64 0, i32 2
  %11 = load ptr, ptr %tbuf, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end23, %if.then
  %storemerge = phi ptr [ %11, %cond.end23 ], [ %6, %if.then ]
  store ptr %storemerge, ptr %tp, align 8
  %12 = load i32, ptr %npixels, align 4
  %mul = shl i32 %12, 1
  call void @_TIFFmemset(ptr noundef %storemerge, i32 noundef 0, i32 noundef %mul) #6
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %13, i64 0, i32 42
  %14 = load ptr, ptr %tif_rawcp, align 8
  store ptr %14, ptr %bp, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %13, i64 0, i32 43
  %15 = load i32, ptr %tif_rawcc, align 8
  store i32 %15, ptr %cc, align 4
  store i32 16, ptr %shft, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.end, %if.end
  %16 = load i32, ptr %shft, align 4
  %sub = add nsw i32 %16, -8
  store i32 %sub, ptr %shft, align 4
  %cmp26 = icmp sgt i32 %16, 7
  br i1 %cmp26, label %for.body, label %for.end78

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %if.end70, %for.body
  %17 = load i32, ptr %i, align 4
  %18 = load i32, ptr %npixels, align 4
  %cmp29 = icmp slt i32 %17, %18
  %19 = load i32, ptr %cc, align 4
  %cmp31 = icmp sgt i32 %19, 0
  %20 = select i1 %cmp29, i1 %cmp31, i1 false
  br i1 %20, label %for.body33, label %for.end

for.body33:                                       ; preds = %for.cond28
  %21 = load ptr, ptr %bp, align 8
  %22 = load i8, ptr %21, align 1
  %cmp35 = icmp slt i8 %22, 0
  br i1 %cmp35, label %if.then37, label %if.else48

if.then37:                                        ; preds = %for.body33
  %23 = load ptr, ptr %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %23, i64 1
  store ptr %incdec.ptr, ptr %bp, align 8
  %24 = load i8, ptr %23, align 1
  %conv38 = zext i8 %24 to i32
  %add = add nsw i32 %conv38, -126
  store i32 %add, ptr %rc, align 4
  %incdec.ptr39 = getelementptr inbounds i8, ptr %23, i64 2
  store ptr %incdec.ptr39, ptr %bp, align 8
  %25 = load i8, ptr %incdec.ptr, align 1
  %conv41 = zext i8 %25 to i32
  %26 = load i32, ptr %shft, align 4
  %shl = shl i32 %conv41, %26
  %conv42 = trunc i32 %shl to i16
  store i16 %conv42, ptr %b, align 2
  %27 = load i32, ptr %cc, align 4
  %sub43 = add nsw i32 %27, -2
  store i32 %sub43, ptr %cc, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then37
  %28 = load i32, ptr %rc, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, ptr %rc, align 4
  %tobool44.not = icmp eq i32 %28, 0
  br i1 %tobool44.not, label %if.end70, label %while.body

while.body:                                       ; preds = %while.cond
  %29 = load i16, ptr %b, align 2
  %30 = load ptr, ptr %tp, align 8
  %31 = load i32, ptr %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %i, align 4
  %idxprom = sext i32 %31 to i64
  %arrayidx = getelementptr inbounds i16, ptr %30, i64 %idxprom
  %32 = load i16, ptr %arrayidx, align 2
  %or3 = or i16 %32, %29
  store i16 %or3, ptr %arrayidx, align 2
  br label %while.cond, !llvm.loop !22

if.else48:                                        ; preds = %for.body33
  %33 = load ptr, ptr %bp, align 8
  %incdec.ptr49 = getelementptr inbounds i8, ptr %33, i64 1
  store ptr %incdec.ptr49, ptr %bp, align 8
  %34 = load i8, ptr %33, align 1
  %conv50 = zext i8 %34 to i32
  store i32 %conv50, ptr %rc, align 4
  br label %while.cond51

while.cond51:                                     ; preds = %while.body58, %if.else48
  %35 = load i32, ptr %cc, align 4
  %dec52 = add nsw i32 %35, -1
  store i32 %dec52, ptr %cc, align 4
  %tobool53.not = icmp eq i32 %dec52, 0
  br i1 %tobool53.not, label %if.end70, label %land.rhs54

land.rhs54:                                       ; preds = %while.cond51
  %36 = load i32, ptr %rc, align 4
  %dec55 = add nsw i32 %36, -1
  store i32 %dec55, ptr %rc, align 4
  %tobool56 = icmp ne i32 %36, 0
  br i1 %tobool56, label %while.body58, label %if.end70

while.body58:                                     ; preds = %land.rhs54
  %37 = load ptr, ptr %bp, align 8
  %incdec.ptr59 = getelementptr inbounds i8, ptr %37, i64 1
  store ptr %incdec.ptr59, ptr %bp, align 8
  %38 = load i8, ptr %37, align 1
  %conv61 = zext i8 %38 to i32
  %39 = load i32, ptr %shft, align 4
  %shl62 = shl i32 %conv61, %39
  %40 = load ptr, ptr %tp, align 8
  %41 = load i32, ptr %i, align 4
  %inc63 = add nsw i32 %41, 1
  store i32 %inc63, ptr %i, align 4
  %idxprom64 = sext i32 %41 to i64
  %arrayidx65 = getelementptr inbounds i16, ptr %40, i64 %idxprom64
  %42 = load i16, ptr %arrayidx65, align 2
  %43 = trunc i32 %shl62 to i16
  %conv68 = or i16 %42, %43
  store i16 %conv68, ptr %arrayidx65, align 2
  br label %while.cond51, !llvm.loop !23

if.end70:                                         ; preds = %land.rhs54, %while.cond51, %while.cond
  br label %for.cond28, !llvm.loop !24

for.end:                                          ; preds = %for.cond28
  %44 = load i32, ptr %i, align 4
  %45 = load i32, ptr %npixels, align 4
  %cmp71.not = icmp eq i32 %44, %45
  br i1 %cmp71.not, label %for.cond, label %if.then73, !llvm.loop !25

if.then73:                                        ; preds = %for.end
  %46 = load ptr, ptr %tif.addr, align 8
  %47 = load ptr, ptr %46, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %46, i64 0, i32 11
  %48 = load i32, ptr %tif_row, align 8
  %49 = load i32, ptr %npixels, align 4
  %50 = load i32, ptr %i, align 4
  %sub74 = sub nsw i32 %49, %50
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %47, ptr noundef nonnull @.str.16, i32 noundef %48, i32 noundef %sub74) #6
  %51 = load ptr, ptr %bp, align 8
  %52 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp75 = getelementptr inbounds %struct.tiff, ptr %52, i64 0, i32 42
  store ptr %51, ptr %tif_rawcp75, align 8
  %53 = load i32, ptr %cc, align 4
  %tif_rawcc76 = getelementptr inbounds %struct.tiff, ptr %52, i64 0, i32 43
  store i32 %53, ptr %tif_rawcc76, align 8
  br label %return

for.end78:                                        ; preds = %for.cond
  %54 = load ptr, ptr %sp, align 8
  %tfunc = getelementptr inbounds %struct.logLuvState, ptr %54, i64 0, i32 4
  %55 = load ptr, ptr %tfunc, align 8
  %56 = load ptr, ptr %op.addr, align 8
  %57 = load i32, ptr %npixels, align 4
  call void %55(ptr noundef %54, ptr noundef %56, i32 noundef %57) #6
  %58 = load ptr, ptr %bp, align 8
  %59 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp79 = getelementptr inbounds %struct.tiff, ptr %59, i64 0, i32 42
  store ptr %58, ptr %tif_rawcp79, align 8
  %60 = load i32, ptr %cc, align 4
  %tif_rawcc80 = getelementptr inbounds %struct.tiff, ptr %59, i64 0, i32 43
  store i32 %60, ptr %tif_rawcc80, align 8
  br label %return

return:                                           ; preds = %for.end78, %if.then73
  %storemerge1 = phi i32 [ 1, %for.end78 ], [ 0, %if.then73 ]
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
  %0 = load i16, ptr %td_bitspersample, align 4
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

declare void @_TIFFmemset(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @pix24toXYZ(i32 noundef %p, ptr noundef %XYZ) #0 {
entry:
  %p.addr = alloca i32, align 4
  %XYZ.addr = alloca ptr, align 8
  %Le = alloca i32, align 4
  %L = alloca double, align 8
  %u = alloca double, align 8
  %v = alloca double, align 8
  %s = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  store i32 %p, ptr %p.addr, align 4
  store ptr %XYZ, ptr %XYZ.addr, align 8
  %shr = lshr i32 %p, 14
  %and = and i32 %shr, 1023
  store i32 %and, ptr %Le, align 4
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds float, ptr %0, i64 1
  store float 0.000000e+00, ptr %arrayidx1, align 4
  store float 0.000000e+00, ptr %0, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %Le, align 4
  %conv = sitofp i32 %1 to double
  %add = fadd double %conv, 5.000000e-01
  %2 = call double @llvm.fmuladd.f64(double %add, double 0x3F862E42FEFA39EF, double 0xC020A2B23F3BAB73)
  %3 = call double @llvm.exp.f64(double %2)
  store double %3, ptr %L, align 8
  %4 = load i32, ptr %p.addr, align 4
  %and3 = and i32 %4, 16383
  %call = call i32 @uv_decode(ptr noundef nonnull %u, ptr noundef nonnull %v, i32 noundef %and3)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store double 0x3FCAF286BD156C1A, ptr %u, align 8
  store double 0x3FDE50D794B8199E, ptr %v, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %5 = load double, ptr %u, align 8
  %6 = load double, ptr %v, align 8
  %neg = fmul double %6, -1.600000e+01
  %7 = call double @llvm.fmuladd.f64(double %5, double 6.000000e+00, double %neg)
  %add9 = fadd double %7, 1.200000e+01
  %div = fdiv double 1.000000e+00, %add9
  store double %div, ptr %s, align 8
  %8 = load double, ptr %u, align 8
  %mul = fmul double %8, 9.000000e+00
  %mul10 = fmul double %mul, %div
  store double %mul10, ptr %x, align 8
  %9 = load double, ptr %v, align 8
  %mul11 = fmul double %9, 4.000000e+00
  %10 = load double, ptr %s, align 8
  %mul12 = fmul double %mul11, %10
  store double %mul12, ptr %y, align 8
  %div13 = fdiv double %mul10, %mul12
  %11 = load double, ptr %L, align 8
  %mul14 = fmul double %div13, %11
  %conv15 = fptrunc double %mul14 to float
  %12 = load ptr, ptr %XYZ.addr, align 8
  store float %conv15, ptr %12, align 4
  %conv17 = fptrunc double %11 to float
  %arrayidx18 = getelementptr inbounds float, ptr %12, i64 1
  store float %conv17, ptr %arrayidx18, align 4
  %13 = load double, ptr %x, align 8
  %sub = fsub double 1.000000e+00, %13
  %14 = load double, ptr %y, align 8
  %sub19 = fsub double %sub, %14
  %div20 = fdiv double %sub19, %14
  %15 = load double, ptr %L, align 8
  %mul21 = fmul double %div20, %15
  %conv22 = fptrunc double %mul21 to float
  %16 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx23 = getelementptr inbounds float, ptr %16, i64 2
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
define internal void @pix32toXYZ(i32 noundef %p, ptr noundef %XYZ) #0 {
entry:
  %p.addr = alloca i32, align 4
  %XYZ.addr = alloca ptr, align 8
  %L = alloca double, align 8
  %u = alloca double, align 8
  %v = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  store i32 %p, ptr %p.addr, align 4
  store ptr %XYZ, ptr %XYZ.addr, align 8
  %shr = ashr i32 %p, 16
  %call = call double @pix16toY(i32 noundef %shr)
  store double %call, ptr %L, align 8
  %cmp = fcmp oeq double %call, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds float, ptr %0, i64 1
  store float 0.000000e+00, ptr %arrayidx1, align 4
  store float 0.000000e+00, ptr %0, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %p.addr, align 4
  %shr3 = lshr i32 %1, 8
  %and = and i32 %shr3, 255
  %conv = uitofp i32 %and to double
  %add = fadd double %conv, 5.000000e-01
  %mul = fmul double %add, 0x3F63FB013FB013FB
  store double %mul, ptr %u, align 8
  %2 = load i32, ptr %p.addr, align 4
  %and4 = and i32 %2, 255
  %conv5 = uitofp i32 %and4 to double
  %add6 = fadd double %conv5, 5.000000e-01
  %mul7 = fmul double %add6, 0x3F63FB013FB013FB
  store double %mul7, ptr %v, align 8
  %3 = load double, ptr %u, align 8
  %neg = fmul double %mul7, -1.600000e+01
  %4 = call double @llvm.fmuladd.f64(double %3, double 6.000000e+00, double %neg)
  %add10 = fadd double %4, 1.200000e+01
  %div = fdiv double 1.000000e+00, %add10
  %mul11 = fmul double %3, 9.000000e+00
  %mul12 = fmul double %mul11, %div
  store double %mul12, ptr %x, align 8
  %5 = load double, ptr %v, align 8
  %mul13 = fmul double %5, 4.000000e+00
  %mul14 = fmul double %mul13, %div
  store double %mul14, ptr %y, align 8
  %div15 = fdiv double %mul12, %mul14
  %6 = load double, ptr %L, align 8
  %mul16 = fmul double %div15, %6
  %conv17 = fptrunc double %mul16 to float
  %7 = load ptr, ptr %XYZ.addr, align 8
  store float %conv17, ptr %7, align 4
  %conv19 = fptrunc double %6 to float
  %arrayidx20 = getelementptr inbounds float, ptr %7, i64 1
  store float %conv19, ptr %arrayidx20, align 4
  %8 = load double, ptr %x, align 8
  %sub = fsub double 1.000000e+00, %8
  %9 = load double, ptr %y, align 8
  %sub21 = fsub double %sub, %9
  %div22 = fdiv double %sub21, %9
  %10 = load double, ptr %L, align 8
  %mul23 = fmul double %div22, %10
  %conv24 = fptrunc double %mul23 to float
  %11 = load ptr, ptr %XYZ.addr, align 8
  %arrayidx25 = getelementptr inbounds float, ptr %11, i64 2
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
  %0 = load i16, ptr %td_bitspersample, align 4
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

declare i32 @TIFFScanlineSize(ptr noundef) #2

declare i32 @TIFFTileRowSize(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @LogLuvEncode24(ptr noundef %tif, ptr noundef %bp, i32 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %sp = alloca ptr, align 8
  %i = alloca i32, align 4
  %npixels = alloca i32, align 4
  %occ = alloca i32, align 4
  %op = alloca ptr, align 8
  %tp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
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
  %2 = load i32, ptr %cc.addr, align 4
  %3 = load ptr, ptr %sp, align 8
  %pixel_size = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 1
  %4 = load i32, ptr %pixel_size, align 4
  %div = sdiv i32 %2, %4
  store i32 %div, ptr %npixels, align 4
  %5 = load i32, ptr %3, align 8
  %cmp12 = icmp eq i32 %5, 2
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end11
  %6 = load ptr, ptr %bp.addr, align 8
  store ptr %6, ptr %tp, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end11
  %7 = load ptr, ptr %sp, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %7, i64 0, i32 2
  %8 = load ptr, ptr %tbuf, align 8
  store ptr %8, ptr %tp, align 8
  %tbuflen = getelementptr inbounds %struct.logLuvState, ptr %7, i64 0, i32 3
  %9 = load i16, ptr %tbuflen, align 8
  %conv14 = sext i16 %9 to i32
  %10 = load i32, ptr %npixels, align 4
  %cmp15.not = icmp sgt i32 %10, %conv14
  br i1 %cmp15.not, label %cond.true21, label %cond.end23

cond.true21:                                      ; preds = %if.else
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogLuvEncode24, ptr noundef nonnull @.str, i32 noundef 453, ptr noundef nonnull @.str.11) #5
  unreachable

cond.end23:                                       ; preds = %if.else
  %11 = load ptr, ptr %sp, align 8
  %tfunc = getelementptr inbounds %struct.logLuvState, ptr %11, i64 0, i32 4
  %12 = load ptr, ptr %tfunc, align 8
  %13 = load ptr, ptr %bp.addr, align 8
  %14 = load i32, ptr %npixels, align 4
  call void %12(ptr noundef %11, ptr noundef %13, i32 noundef %14) #6
  br label %if.end

if.end:                                           ; preds = %cond.end23, %if.then
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %15, i64 0, i32 42
  %16 = load ptr, ptr %tif_rawcp, align 8
  store ptr %16, ptr %op, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %15, i64 0, i32 41
  %17 = load i32, ptr %tif_rawdatasize, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %15, i64 0, i32 43
  %18 = load i32, ptr %tif_rawcc, align 8
  %sub = sub nsw i32 %17, %18
  store i32 %sub, ptr %occ, align 4
  %19 = load i32, ptr %npixels, align 4
  store i32 %19, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end39, %if.end
  %20 = load i32, ptr %i, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, ptr %i, align 4
  %tobool24.not = icmp eq i32 %20, 0
  br i1 %tobool24.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %21 = load i32, ptr %occ, align 4
  %cmp25 = icmp slt i32 %21, 3
  br i1 %cmp25, label %if.then27, label %if.end39

if.then27:                                        ; preds = %for.body
  %22 = load ptr, ptr %op, align 8
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp28 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 42
  store ptr %22, ptr %tif_rawcp28, align 8
  %tif_rawdatasize29 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 41
  %24 = load i32, ptr %tif_rawdatasize29, align 8
  %25 = load i32, ptr %occ, align 4
  %sub30 = sub nsw i32 %24, %25
  %26 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc31 = getelementptr inbounds %struct.tiff, ptr %26, i64 0, i32 43
  store i32 %sub30, ptr %tif_rawcc31, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %26) #6
  %tobool32.not = icmp eq i32 %call, 0
  br i1 %tobool32.not, label %return, label %if.end34

if.end34:                                         ; preds = %if.then27
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp35 = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 42
  %28 = load ptr, ptr %tif_rawcp35, align 8
  store ptr %28, ptr %op, align 8
  %tif_rawdatasize36 = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 41
  %29 = load i32, ptr %tif_rawdatasize36, align 8
  %tif_rawcc37 = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 43
  %30 = load i32, ptr %tif_rawcc37, align 8
  %sub38 = sub nsw i32 %29, %30
  store i32 %sub38, ptr %occ, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end34, %for.body
  %31 = load ptr, ptr %tp, align 8
  %32 = load i32, ptr %31, align 4
  %shr = lshr i32 %32, 16
  %conv40 = trunc i32 %shr to i8
  %33 = load ptr, ptr %op, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %33, i64 1
  store ptr %incdec.ptr, ptr %op, align 8
  store i8 %conv40, ptr %33, align 1
  %34 = load ptr, ptr %tp, align 8
  %35 = load i32, ptr %34, align 4
  %shr41 = lshr i32 %35, 8
  %conv42 = trunc i32 %shr41 to i8
  %incdec.ptr43 = getelementptr inbounds i8, ptr %33, i64 2
  store ptr %incdec.ptr43, ptr %op, align 8
  store i8 %conv42, ptr %incdec.ptr, align 1
  %36 = load ptr, ptr %tp, align 8
  %incdec.ptr44 = getelementptr inbounds i32, ptr %36, i64 1
  store ptr %incdec.ptr44, ptr %tp, align 8
  %37 = load i32, ptr %36, align 4
  %conv46 = trunc i32 %37 to i8
  %38 = load ptr, ptr %op, align 8
  %incdec.ptr47 = getelementptr inbounds i8, ptr %38, i64 1
  store ptr %incdec.ptr47, ptr %op, align 8
  store i8 %conv46, ptr %38, align 1
  %39 = load i32, ptr %occ, align 4
  %sub48 = add nsw i32 %39, -3
  store i32 %sub48, ptr %occ, align 4
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  %40 = load ptr, ptr %op, align 8
  %41 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp49 = getelementptr inbounds %struct.tiff, ptr %41, i64 0, i32 42
  store ptr %40, ptr %tif_rawcp49, align 8
  %tif_rawdatasize50 = getelementptr inbounds %struct.tiff, ptr %41, i64 0, i32 41
  %42 = load i32, ptr %tif_rawdatasize50, align 8
  %43 = load i32, ptr %occ, align 4
  %sub51 = sub nsw i32 %42, %43
  %44 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc52 = getelementptr inbounds %struct.tiff, ptr %44, i64 0, i32 43
  store i32 %sub51, ptr %tif_rawcc52, align 8
  br label %return

return:                                           ; preds = %if.then27, %for.end
  %storemerge = phi i32 [ 0, %for.end ], [ -1, %if.then27 ]
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
  %call = call i32 @pix24fromXYZ(ptr noundef %2)
  %3 = load ptr, ptr %luv, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %3, i64 1
  store ptr %incdec.ptr, ptr %luv, align 8
  store i32 %call, ptr %3, align 4
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
  %arrayidx12 = getelementptr inbounds i32, ptr %8, i64 1
  %9 = load i32, ptr %arrayidx12, align 4
  %conv13 = uitofp i32 %9 to double
  %add = fadd double %conv13, 5.000000e-01
  %div = fmul double %add, 0x3F00000000000000
  %arrayidx14 = getelementptr inbounds i32, ptr %8, i64 2
  %10 = load i32, ptr %arrayidx14, align 4
  %conv15 = uitofp i32 %10 to double
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
  %shl = shl i32 %11, 14
  %12 = load i32, ptr %Ce, align 4
  %or = or i32 %shl, %12
  %13 = load ptr, ptr %luv, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %13, i64 1
  store ptr %incdec.ptr, ptr %luv, align 8
  store i32 %or, ptr %13, align 4
  %14 = load ptr, ptr %luv3, align 8
  %add.ptr = getelementptr inbounds i16, ptr %14, i64 3
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
  %2 = load i32, ptr %cc.addr, align 4
  %3 = load ptr, ptr %sp, align 8
  %pixel_size = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 1
  %4 = load i32, ptr %pixel_size, align 4
  %div = sdiv i32 %2, %4
  store i32 %div, ptr %npixels, align 4
  %5 = load i32, ptr %3, align 8
  %cmp12 = icmp eq i32 %5, 2
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end11
  %6 = load ptr, ptr %bp.addr, align 8
  store ptr %6, ptr %tp, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end11
  %7 = load ptr, ptr %sp, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %7, i64 0, i32 2
  %8 = load ptr, ptr %tbuf, align 8
  store ptr %8, ptr %tp, align 8
  %tbuflen = getelementptr inbounds %struct.logLuvState, ptr %7, i64 0, i32 3
  %9 = load i16, ptr %tbuflen, align 8
  %conv14 = sext i16 %9 to i32
  %10 = load i32, ptr %npixels, align 4
  %cmp15.not = icmp sgt i32 %10, %conv14
  br i1 %cmp15.not, label %cond.true21, label %cond.end23

cond.true21:                                      ; preds = %if.else
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogLuvEncode32, ptr noundef nonnull @.str, i32 noundef 501, ptr noundef nonnull @.str.11) #5
  unreachable

cond.end23:                                       ; preds = %if.else
  %11 = load ptr, ptr %sp, align 8
  %tfunc = getelementptr inbounds %struct.logLuvState, ptr %11, i64 0, i32 4
  %12 = load ptr, ptr %tfunc, align 8
  %13 = load ptr, ptr %bp.addr, align 8
  %14 = load i32, ptr %npixels, align 4
  call void %12(ptr noundef %11, ptr noundef %13, i32 noundef %14) #6
  br label %if.end

if.end:                                           ; preds = %cond.end23, %if.then
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %15, i64 0, i32 42
  %16 = load ptr, ptr %tif_rawcp, align 8
  store ptr %16, ptr %op, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %15, i64 0, i32 41
  %17 = load i32, ptr %tif_rawdatasize, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %15, i64 0, i32 43
  %18 = load i32, ptr %tif_rawcc, align 8
  %sub = sub nsw i32 %17, %18
  store i32 %sub, ptr %occ, align 4
  store i32 32, ptr %shft, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.cond27, %if.end
  %19 = load i32, ptr %shft, align 4
  %sub24 = add nsw i32 %19, -8
  store i32 %sub24, ptr %shft, align 4
  %cmp25 = icmp sgt i32 %19, 7
  br i1 %cmp25, label %for.cond27, label %for.end157

for.cond27:                                       ; preds = %for.cond, %for.inc154
  %storemerge = phi i32 [ %add155, %for.inc154 ], [ 0, %for.cond ]
  store i32 %storemerge, ptr %i, align 4
  %20 = load i32, ptr %npixels, align 4
  %cmp28 = icmp slt i32 %storemerge, %20
  br i1 %cmp28, label %for.body30, label %for.cond, !llvm.loop !32

for.body30:                                       ; preds = %for.cond27
  %21 = load i32, ptr %occ, align 4
  %cmp31 = icmp slt i32 %21, 4
  br i1 %cmp31, label %if.then33, label %if.end45

if.then33:                                        ; preds = %for.body30
  %22 = load ptr, ptr %op, align 8
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp34 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 42
  store ptr %22, ptr %tif_rawcp34, align 8
  %tif_rawdatasize35 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 41
  %24 = load i32, ptr %tif_rawdatasize35, align 8
  %25 = load i32, ptr %occ, align 4
  %sub36 = sub nsw i32 %24, %25
  %26 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc37 = getelementptr inbounds %struct.tiff, ptr %26, i64 0, i32 43
  store i32 %sub36, ptr %tif_rawcc37, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %26) #6
  %tobool38.not = icmp eq i32 %call, 0
  br i1 %tobool38.not, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.then33
  store i32 -1, ptr %retval, align 4
  br label %return

if.end40:                                         ; preds = %if.then33
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp41 = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 42
  %28 = load ptr, ptr %tif_rawcp41, align 8
  store ptr %28, ptr %op, align 8
  %tif_rawdatasize42 = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 41
  %29 = load i32, ptr %tif_rawdatasize42, align 8
  %tif_rawcc43 = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 43
  %30 = load i32, ptr %tif_rawcc43, align 8
  %sub44 = sub nsw i32 %29, %30
  store i32 %sub44, ptr %occ, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end40, %for.body30
  %31 = load i32, ptr %shft, align 4
  %shl = shl i32 255, %31
  store i32 %shl, ptr %mask, align 4
  %32 = load i32, ptr %i, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc, %if.end45
  %storemerge1 = phi i32 [ %32, %if.end45 ], [ %add64, %for.inc ]
  store i32 %storemerge1, ptr %beg, align 4
  %33 = load i32, ptr %npixels, align 4
  %cmp47 = icmp slt i32 %storemerge1, %33
  br i1 %cmp47, label %for.body49, label %for.end

for.body49:                                       ; preds = %for.cond46
  %34 = load ptr, ptr %tp, align 8
  %35 = load i32, ptr %beg, align 4
  %idxprom = sext i32 %35 to i64
  %arrayidx = getelementptr inbounds i32, ptr %34, i64 %idxprom
  %36 = load i32, ptr %arrayidx, align 4
  %37 = load i32, ptr %mask, align 4
  %and = and i32 %36, %37
  store i32 %and, ptr %b, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body49
  %storemerge4 = phi i32 [ 1, %for.body49 ], [ %inc, %while.body ]
  store i32 %storemerge4, ptr %rc, align 4
  %cmp50 = icmp slt i32 %storemerge4, 129
  br i1 %cmp50, label %land.lhs.true, label %while.end

land.lhs.true:                                    ; preds = %while.cond
  %38 = load i32, ptr %beg, align 4
  %39 = load i32, ptr %rc, align 4
  %add = add nsw i32 %38, %39
  %40 = load i32, ptr %npixels, align 4
  %cmp52 = icmp slt i32 %add, %40
  br i1 %cmp52, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %land.lhs.true
  %41 = load ptr, ptr %tp, align 8
  %42 = load i32, ptr %beg, align 4
  %43 = load i32, ptr %rc, align 4
  %add54 = add nsw i32 %42, %43
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds i32, ptr %41, i64 %idxprom55
  %44 = load i32, ptr %arrayidx56, align 4
  %45 = load i32, ptr %mask, align 4
  %and57 = and i32 %44, %45
  %46 = load i32, ptr %b, align 4
  %cmp58 = icmp eq i32 %and57, %46
  br i1 %cmp58, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %47 = load i32, ptr %rc, align 4
  %inc = add nsw i32 %47, 1
  br label %while.cond, !llvm.loop !33

while.end:                                        ; preds = %land.lhs.true, %while.cond, %land.rhs
  %48 = load i32, ptr %rc, align 4
  %cmp60 = icmp sgt i32 %48, 3
  br i1 %cmp60, label %for.end, label %for.inc

for.inc:                                          ; preds = %while.end
  %49 = load i32, ptr %rc, align 4
  %50 = load i32, ptr %beg, align 4
  %add64 = add nsw i32 %50, %49
  br label %for.cond46, !llvm.loop !34

for.end:                                          ; preds = %while.end, %for.cond46
  %51 = load i32, ptr %beg, align 4
  %52 = load i32, ptr %i, align 4
  %sub65 = sub nsw i32 %51, %52
  %cmp66 = icmp sgt i32 %sub65, 1
  br i1 %cmp66, label %land.lhs.true68, label %if.end96

land.lhs.true68:                                  ; preds = %for.end
  %53 = load i32, ptr %beg, align 4
  %54 = load i32, ptr %i, align 4
  %sub69 = sub nsw i32 %53, %54
  %cmp70 = icmp slt i32 %sub69, 4
  br i1 %cmp70, label %if.then72, label %if.end96

if.then72:                                        ; preds = %land.lhs.true68
  %55 = load ptr, ptr %tp, align 8
  %56 = load i32, ptr %i, align 4
  %idxprom73 = sext i32 %56 to i64
  %arrayidx74 = getelementptr inbounds i32, ptr %55, i64 %idxprom73
  %57 = load i32, ptr %arrayidx74, align 4
  %58 = load i32, ptr %mask, align 4
  %and75 = and i32 %57, %58
  store i32 %and75, ptr %b, align 4
  %59 = load i32, ptr %i, align 4
  %add76 = add nsw i32 %59, 1
  store i32 %add76, ptr %j, align 4
  br label %while.cond77

while.cond77:                                     ; preds = %while.body84, %if.then72
  %60 = load ptr, ptr %tp, align 8
  %61 = load i32, ptr %j, align 4
  %inc78 = add nsw i32 %61, 1
  store i32 %inc78, ptr %j, align 4
  %idxprom79 = sext i32 %61 to i64
  %arrayidx80 = getelementptr inbounds i32, ptr %60, i64 %idxprom79
  %62 = load i32, ptr %arrayidx80, align 4
  %63 = load i32, ptr %mask, align 4
  %and81 = and i32 %62, %63
  %64 = load i32, ptr %b, align 4
  %cmp82 = icmp eq i32 %and81, %64
  br i1 %cmp82, label %while.body84, label %if.end96

while.body84:                                     ; preds = %while.cond77
  %65 = load i32, ptr %j, align 4
  %66 = load i32, ptr %beg, align 4
  %cmp85 = icmp eq i32 %65, %66
  br i1 %cmp85, label %if.then87, label %while.cond77, !llvm.loop !35

if.then87:                                        ; preds = %while.body84
  %67 = load i32, ptr %j, align 4
  %add88 = add nsw i32 %67, 126
  %68 = load i32, ptr %i, align 4
  %sub89 = sub nsw i32 %add88, %68
  %conv90 = trunc i32 %sub89 to i8
  %69 = load ptr, ptr %op, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %69, i64 1
  store ptr %incdec.ptr, ptr %op, align 8
  store i8 %conv90, ptr %69, align 1
  %70 = load i32, ptr %b, align 4
  %71 = load i32, ptr %shft, align 4
  %shr = lshr i32 %70, %71
  %conv91 = trunc i32 %shr to i8
  %incdec.ptr92 = getelementptr inbounds i8, ptr %69, i64 2
  store ptr %incdec.ptr92, ptr %op, align 8
  store i8 %conv91, ptr %incdec.ptr, align 1
  %72 = load i32, ptr %occ, align 4
  %sub93 = add nsw i32 %72, -2
  store i32 %sub93, ptr %occ, align 4
  %73 = load i32, ptr %beg, align 4
  store i32 %73, ptr %i, align 4
  br label %if.end96

if.end96:                                         ; preds = %while.cond77, %if.then87, %land.lhs.true68, %for.end
  br label %while.cond97

while.cond97:                                     ; preds = %while.cond125, %if.end96
  %74 = load i32, ptr %i, align 4
  %75 = load i32, ptr %beg, align 4
  %cmp98 = icmp slt i32 %74, %75
  br i1 %cmp98, label %while.body100, label %while.end138

while.body100:                                    ; preds = %while.cond97
  %76 = load i32, ptr %beg, align 4
  %77 = load i32, ptr %i, align 4
  %sub101 = sub nsw i32 %76, %77
  %cmp102 = icmp sgt i32 %sub101, 127
  %spec.select = select i1 %cmp102, i32 127, i32 %sub101
  store i32 %spec.select, ptr %j, align 4
  %78 = load i32, ptr %occ, align 4
  %add106 = add nsw i32 %spec.select, 3
  %cmp107 = icmp slt i32 %78, %add106
  br i1 %cmp107, label %if.then109, label %if.end122

if.then109:                                       ; preds = %while.body100
  %79 = load ptr, ptr %op, align 8
  %80 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp110 = getelementptr inbounds %struct.tiff, ptr %80, i64 0, i32 42
  store ptr %79, ptr %tif_rawcp110, align 8
  %tif_rawdatasize111 = getelementptr inbounds %struct.tiff, ptr %80, i64 0, i32 41
  %81 = load i32, ptr %tif_rawdatasize111, align 8
  %82 = load i32, ptr %occ, align 4
  %sub112 = sub nsw i32 %81, %82
  %83 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc113 = getelementptr inbounds %struct.tiff, ptr %83, i64 0, i32 43
  store i32 %sub112, ptr %tif_rawcc113, align 8
  %call114 = call i32 @TIFFFlushData1(ptr noundef %83) #6
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.then116, label %if.end117

if.then116:                                       ; preds = %if.then109
  store i32 -1, ptr %retval, align 4
  br label %return

if.end117:                                        ; preds = %if.then109
  %84 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp118 = getelementptr inbounds %struct.tiff, ptr %84, i64 0, i32 42
  %85 = load ptr, ptr %tif_rawcp118, align 8
  store ptr %85, ptr %op, align 8
  %tif_rawdatasize119 = getelementptr inbounds %struct.tiff, ptr %84, i64 0, i32 41
  %86 = load i32, ptr %tif_rawdatasize119, align 8
  %tif_rawcc120 = getelementptr inbounds %struct.tiff, ptr %84, i64 0, i32 43
  %87 = load i32, ptr %tif_rawcc120, align 8
  %sub121 = sub nsw i32 %86, %87
  store i32 %sub121, ptr %occ, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.end117, %while.body100
  %88 = load i32, ptr %j, align 4
  %conv123 = trunc i32 %88 to i8
  %89 = load ptr, ptr %op, align 8
  %incdec.ptr124 = getelementptr inbounds i8, ptr %89, i64 1
  store ptr %incdec.ptr124, ptr %op, align 8
  store i8 %conv123, ptr %89, align 1
  %90 = load i32, ptr %occ, align 4
  br label %while.cond125

while.cond125:                                    ; preds = %while.body128, %if.end122
  %storemerge2.in = phi i32 [ %90, %if.end122 ], [ %97, %while.body128 ]
  %storemerge2 = add nsw i32 %storemerge2.in, -1
  store i32 %storemerge2, ptr %occ, align 4
  %91 = load i32, ptr %j, align 4
  %dec126 = add nsw i32 %91, -1
  store i32 %dec126, ptr %j, align 4
  %tobool127.not = icmp eq i32 %91, 0
  br i1 %tobool127.not, label %while.cond97, label %while.body128, !llvm.loop !36

while.body128:                                    ; preds = %while.cond125
  %92 = load ptr, ptr %tp, align 8
  %93 = load i32, ptr %i, align 4
  %inc129 = add nsw i32 %93, 1
  store i32 %inc129, ptr %i, align 4
  %idxprom130 = sext i32 %93 to i64
  %arrayidx131 = getelementptr inbounds i32, ptr %92, i64 %idxprom130
  %94 = load i32, ptr %arrayidx131, align 4
  %95 = load i32, ptr %shft, align 4
  %shr132 = lshr i32 %94, %95
  %conv134 = trunc i32 %shr132 to i8
  %96 = load ptr, ptr %op, align 8
  %incdec.ptr135 = getelementptr inbounds i8, ptr %96, i64 1
  store ptr %incdec.ptr135, ptr %op, align 8
  store i8 %conv134, ptr %96, align 1
  %97 = load i32, ptr %occ, align 4
  br label %while.cond125, !llvm.loop !37

while.end138:                                     ; preds = %while.cond97
  %98 = load i32, ptr %rc, align 4
  %cmp139 = icmp sgt i32 %98, 3
  br i1 %cmp139, label %if.then141, label %if.else152

if.then141:                                       ; preds = %while.end138
  %99 = load i32, ptr %rc, align 4
  %100 = trunc i32 %99 to i8
  %conv143 = add i8 %100, 126
  %101 = load ptr, ptr %op, align 8
  %incdec.ptr144 = getelementptr inbounds i8, ptr %101, i64 1
  store ptr %incdec.ptr144, ptr %op, align 8
  store i8 %conv143, ptr %101, align 1
  %102 = load ptr, ptr %tp, align 8
  %103 = load i32, ptr %beg, align 4
  %idxprom145 = sext i32 %103 to i64
  %arrayidx146 = getelementptr inbounds i32, ptr %102, i64 %idxprom145
  %104 = load i32, ptr %arrayidx146, align 4
  %105 = load i32, ptr %shft, align 4
  %shr147 = lshr i32 %104, %105
  %conv149 = trunc i32 %shr147 to i8
  %106 = load ptr, ptr %op, align 8
  %incdec.ptr150 = getelementptr inbounds i8, ptr %106, i64 1
  store ptr %incdec.ptr150, ptr %op, align 8
  store i8 %conv149, ptr %106, align 1
  %107 = load i32, ptr %occ, align 4
  %sub151 = add nsw i32 %107, -2
  store i32 %sub151, ptr %occ, align 4
  br label %for.inc154

if.else152:                                       ; preds = %while.end138
  store i32 0, ptr %rc, align 4
  br label %for.inc154

for.inc154:                                       ; preds = %if.then141, %if.else152
  %108 = load i32, ptr %rc, align 4
  %109 = load i32, ptr %i, align 4
  %add155 = add nsw i32 %109, %108
  br label %for.cond27, !llvm.loop !38

for.end157:                                       ; preds = %for.cond
  %110 = load ptr, ptr %op, align 8
  %111 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp158 = getelementptr inbounds %struct.tiff, ptr %111, i64 0, i32 42
  store ptr %110, ptr %tif_rawcp158, align 8
  %tif_rawdatasize159 = getelementptr inbounds %struct.tiff, ptr %111, i64 0, i32 41
  %112 = load i32, ptr %tif_rawdatasize159, align 8
  %113 = load i32, ptr %occ, align 4
  %sub160 = sub nsw i32 %112, %113
  %114 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc161 = getelementptr inbounds %struct.tiff, ptr %114, i64 0, i32 43
  store i32 %sub160, ptr %tif_rawcc161, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end157, %if.then116, %if.then39
  %115 = load i32, ptr %retval, align 4
  ret i32 %115
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
  %call = call i32 @pix32fromXYZ(ptr noundef %2)
  %3 = load ptr, ptr %luv, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %3, i64 1
  store ptr %incdec.ptr, ptr %luv, align 8
  store i32 %call, ptr %3, align 4
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
  %conv1 = zext i16 %3 to i32
  %shl = shl nuw i32 %conv1, 16
  %arrayidx1 = getelementptr inbounds i16, ptr %2, i64 1
  %4 = load i16, ptr %arrayidx1, align 2
  %conv2 = sext i16 %4 to i32
  %mul = mul nsw i32 %conv2, 410
  %shr = lshr i32 %mul, 7
  %and = and i32 %shr, 65280
  %or = or i32 %shl, %and
  %5 = load ptr, ptr %luv3, align 8
  %arrayidx3 = getelementptr inbounds i16, ptr %5, i64 2
  %6 = load i16, ptr %arrayidx3, align 2
  %conv4 = sext i16 %6 to i32
  %mul5 = mul nsw i32 %conv4, 410
  %shr6 = lshr i32 %mul5, 15
  %and7 = and i32 %shr6, 255
  %or8 = or i32 %or, %and7
  %7 = load ptr, ptr %luv, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %7, i64 1
  store ptr %incdec.ptr, ptr %luv, align 8
  store i32 %or8, ptr %7, align 4
  %8 = load ptr, ptr %luv3, align 8
  %add.ptr = getelementptr inbounds i16, ptr %8, i64 3
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
  %2 = load i32, ptr %cc.addr, align 4
  %3 = load ptr, ptr %sp, align 8
  %pixel_size = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 1
  %4 = load i32, ptr %pixel_size, align 4
  %div = sdiv i32 %2, %4
  store i32 %div, ptr %npixels, align 4
  %5 = load i32, ptr %3, align 8
  %cmp12 = icmp eq i32 %5, 1
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end11
  %6 = load ptr, ptr %bp.addr, align 8
  store ptr %6, ptr %tp, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end11
  %7 = load ptr, ptr %sp, align 8
  %tbuf = getelementptr inbounds %struct.logLuvState, ptr %7, i64 0, i32 2
  %8 = load ptr, ptr %tbuf, align 8
  store ptr %8, ptr %tp, align 8
  %tbuflen = getelementptr inbounds %struct.logLuvState, ptr %7, i64 0, i32 3
  %9 = load i16, ptr %tbuflen, align 8
  %conv14 = sext i16 %9 to i32
  %10 = load i32, ptr %npixels, align 4
  %cmp15.not = icmp sgt i32 %10, %conv14
  br i1 %cmp15.not, label %cond.true21, label %cond.end23

cond.true21:                                      ; preds = %if.else
  call void @__assert_rtn(ptr noundef nonnull @__func__.LogL16Encode, ptr noundef nonnull @.str, i32 noundef 367, ptr noundef nonnull @.str.11) #5
  unreachable

cond.end23:                                       ; preds = %if.else
  %11 = load ptr, ptr %sp, align 8
  %tfunc = getelementptr inbounds %struct.logLuvState, ptr %11, i64 0, i32 4
  %12 = load ptr, ptr %tfunc, align 8
  %13 = load ptr, ptr %bp.addr, align 8
  %14 = load i32, ptr %npixels, align 4
  call void %12(ptr noundef %11, ptr noundef %13, i32 noundef %14) #6
  br label %if.end

if.end:                                           ; preds = %cond.end23, %if.then
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %15, i64 0, i32 42
  %16 = load ptr, ptr %tif_rawcp, align 8
  store ptr %16, ptr %op, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %15, i64 0, i32 41
  %17 = load i32, ptr %tif_rawdatasize, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %15, i64 0, i32 43
  %18 = load i32, ptr %tif_rawcc, align 8
  %sub = sub nsw i32 %17, %18
  store i32 %sub, ptr %occ, align 4
  store i32 16, ptr %shft, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.cond27, %if.end
  %19 = load i32, ptr %shft, align 4
  %sub24 = add nsw i32 %19, -8
  store i32 %sub24, ptr %shft, align 4
  %cmp25 = icmp sgt i32 %19, 7
  br i1 %cmp25, label %for.cond27, label %for.end168

for.cond27:                                       ; preds = %for.cond, %for.inc165
  %storemerge = phi i32 [ %add166, %for.inc165 ], [ 0, %for.cond ]
  store i32 %storemerge, ptr %i, align 4
  %20 = load i32, ptr %npixels, align 4
  %cmp28 = icmp slt i32 %storemerge, %20
  br i1 %cmp28, label %for.body30, label %for.cond, !llvm.loop !41

for.body30:                                       ; preds = %for.cond27
  %21 = load i32, ptr %occ, align 4
  %cmp31 = icmp slt i32 %21, 4
  br i1 %cmp31, label %if.then33, label %if.end45

if.then33:                                        ; preds = %for.body30
  %22 = load ptr, ptr %op, align 8
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp34 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 42
  store ptr %22, ptr %tif_rawcp34, align 8
  %tif_rawdatasize35 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 41
  %24 = load i32, ptr %tif_rawdatasize35, align 8
  %25 = load i32, ptr %occ, align 4
  %sub36 = sub nsw i32 %24, %25
  %26 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc37 = getelementptr inbounds %struct.tiff, ptr %26, i64 0, i32 43
  store i32 %sub36, ptr %tif_rawcc37, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %26) #6
  %tobool38.not = icmp eq i32 %call, 0
  br i1 %tobool38.not, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.then33
  store i32 -1, ptr %retval, align 4
  br label %return

if.end40:                                         ; preds = %if.then33
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp41 = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 42
  %28 = load ptr, ptr %tif_rawcp41, align 8
  store ptr %28, ptr %op, align 8
  %tif_rawdatasize42 = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 41
  %29 = load i32, ptr %tif_rawdatasize42, align 8
  %tif_rawcc43 = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 43
  %30 = load i32, ptr %tif_rawcc43, align 8
  %sub44 = sub nsw i32 %29, %30
  store i32 %sub44, ptr %occ, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end40, %for.body30
  %31 = load i32, ptr %shft, align 4
  %shl = shl i32 255, %31
  store i32 %shl, ptr %mask, align 4
  %32 = load i32, ptr %i, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc, %if.end45
  %storemerge1 = phi i32 [ %32, %if.end45 ], [ %add68, %for.inc ]
  store i32 %storemerge1, ptr %beg, align 4
  %33 = load i32, ptr %npixels, align 4
  %cmp47 = icmp slt i32 %storemerge1, %33
  br i1 %cmp47, label %for.body49, label %for.end

for.body49:                                       ; preds = %for.cond46
  %34 = load ptr, ptr %tp, align 8
  %35 = load i32, ptr %beg, align 4
  %idxprom = sext i32 %35 to i64
  %arrayidx = getelementptr inbounds i16, ptr %34, i64 %idxprom
  %36 = load i16, ptr %arrayidx, align 2
  %37 = load i32, ptr %mask, align 4
  %38 = trunc i32 %37 to i16
  %conv51 = and i16 %36, %38
  store i16 %conv51, ptr %b, align 2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body49
  %storemerge6 = phi i32 [ 1, %for.body49 ], [ %inc, %while.body ]
  store i32 %storemerge6, ptr %rc, align 4
  %cmp52 = icmp slt i32 %storemerge6, 129
  br i1 %cmp52, label %land.lhs.true, label %while.end

land.lhs.true:                                    ; preds = %while.cond
  %39 = load i32, ptr %beg, align 4
  %40 = load i32, ptr %rc, align 4
  %add = add nsw i32 %39, %40
  %41 = load i32, ptr %npixels, align 4
  %cmp54 = icmp slt i32 %add, %41
  br i1 %cmp54, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %land.lhs.true
  %42 = load ptr, ptr %tp, align 8
  %43 = load i32, ptr %beg, align 4
  %44 = load i32, ptr %rc, align 4
  %add56 = add nsw i32 %43, %44
  %idxprom57 = sext i32 %add56 to i64
  %arrayidx58 = getelementptr inbounds i16, ptr %42, i64 %idxprom57
  %45 = load i16, ptr %arrayidx58, align 2
  %conv59 = sext i16 %45 to i32
  %46 = load i32, ptr %mask, align 4
  %and60 = and i32 %46, %conv59
  %47 = load i16, ptr %b, align 2
  %conv61 = sext i16 %47 to i32
  %cmp62 = icmp eq i32 %and60, %conv61
  br i1 %cmp62, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %48 = load i32, ptr %rc, align 4
  %inc = add nsw i32 %48, 1
  br label %while.cond, !llvm.loop !42

while.end:                                        ; preds = %land.lhs.true, %while.cond, %land.rhs
  %49 = load i32, ptr %rc, align 4
  %cmp64 = icmp sgt i32 %49, 3
  br i1 %cmp64, label %for.end, label %for.inc

for.inc:                                          ; preds = %while.end
  %50 = load i32, ptr %rc, align 4
  %51 = load i32, ptr %beg, align 4
  %add68 = add nsw i32 %51, %50
  br label %for.cond46, !llvm.loop !43

for.end:                                          ; preds = %while.end, %for.cond46
  %52 = load i32, ptr %beg, align 4
  %53 = load i32, ptr %i, align 4
  %sub69 = sub nsw i32 %52, %53
  %cmp70 = icmp sgt i32 %sub69, 1
  br i1 %cmp70, label %land.lhs.true72, label %if.end105

land.lhs.true72:                                  ; preds = %for.end
  %54 = load i32, ptr %beg, align 4
  %55 = load i32, ptr %i, align 4
  %sub73 = sub nsw i32 %54, %55
  %cmp74 = icmp slt i32 %sub73, 4
  br i1 %cmp74, label %if.then76, label %if.end105

if.then76:                                        ; preds = %land.lhs.true72
  %56 = load ptr, ptr %tp, align 8
  %57 = load i32, ptr %i, align 4
  %idxprom77 = sext i32 %57 to i64
  %arrayidx78 = getelementptr inbounds i16, ptr %56, i64 %idxprom77
  %58 = load i16, ptr %arrayidx78, align 2
  %59 = load i32, ptr %mask, align 4
  %60 = trunc i32 %59 to i16
  %conv81 = and i16 %58, %60
  store i16 %conv81, ptr %b, align 2
  %61 = load i32, ptr %i, align 4
  %add82 = add nsw i32 %61, 1
  store i32 %add82, ptr %j, align 4
  br label %while.cond83

while.cond83:                                     ; preds = %while.body92, %if.then76
  %62 = load ptr, ptr %tp, align 8
  %63 = load i32, ptr %j, align 4
  %inc84 = add nsw i32 %63, 1
  store i32 %inc84, ptr %j, align 4
  %idxprom85 = sext i32 %63 to i64
  %arrayidx86 = getelementptr inbounds i16, ptr %62, i64 %idxprom85
  %64 = load i16, ptr %arrayidx86, align 2
  %conv87 = sext i16 %64 to i32
  %65 = load i32, ptr %mask, align 4
  %and88 = and i32 %65, %conv87
  %66 = load i16, ptr %b, align 2
  %conv89 = sext i16 %66 to i32
  %cmp90 = icmp eq i32 %and88, %conv89
  br i1 %cmp90, label %while.body92, label %if.end105

while.body92:                                     ; preds = %while.cond83
  %67 = load i32, ptr %j, align 4
  %68 = load i32, ptr %beg, align 4
  %cmp93 = icmp eq i32 %67, %68
  br i1 %cmp93, label %if.then95, label %while.cond83, !llvm.loop !44

if.then95:                                        ; preds = %while.body92
  %69 = load i32, ptr %j, align 4
  %add96 = add nsw i32 %69, 126
  %70 = load i32, ptr %i, align 4
  %sub97 = sub nsw i32 %add96, %70
  %conv98 = trunc i32 %sub97 to i8
  %71 = load ptr, ptr %op, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %71, i64 1
  store ptr %incdec.ptr, ptr %op, align 8
  store i8 %conv98, ptr %71, align 1
  %72 = load i16, ptr %b, align 2
  %conv99 = sext i16 %72 to i32
  %73 = load i32, ptr %shft, align 4
  %shr = ashr i32 %conv99, %73
  %conv100 = trunc i32 %shr to i8
  %74 = load ptr, ptr %op, align 8
  %incdec.ptr101 = getelementptr inbounds i8, ptr %74, i64 1
  store ptr %incdec.ptr101, ptr %op, align 8
  store i8 %conv100, ptr %74, align 1
  %75 = load i32, ptr %occ, align 4
  %sub102 = add nsw i32 %75, -2
  store i32 %sub102, ptr %occ, align 4
  %76 = load i32, ptr %beg, align 4
  store i32 %76, ptr %i, align 4
  br label %if.end105

if.end105:                                        ; preds = %while.cond83, %if.then95, %land.lhs.true72, %for.end
  br label %while.cond106

while.cond106:                                    ; preds = %while.cond134, %if.end105
  %77 = load i32, ptr %i, align 4
  %78 = load i32, ptr %beg, align 4
  %cmp107 = icmp slt i32 %77, %78
  br i1 %cmp107, label %while.body109, label %while.end148

while.body109:                                    ; preds = %while.cond106
  %79 = load i32, ptr %beg, align 4
  %80 = load i32, ptr %i, align 4
  %sub110 = sub nsw i32 %79, %80
  %cmp111 = icmp sgt i32 %sub110, 127
  %spec.select = select i1 %cmp111, i32 127, i32 %sub110
  store i32 %spec.select, ptr %j, align 4
  %81 = load i32, ptr %occ, align 4
  %add115 = add nsw i32 %spec.select, 3
  %cmp116 = icmp slt i32 %81, %add115
  br i1 %cmp116, label %if.then118, label %if.end131

if.then118:                                       ; preds = %while.body109
  %82 = load ptr, ptr %op, align 8
  %83 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp119 = getelementptr inbounds %struct.tiff, ptr %83, i64 0, i32 42
  store ptr %82, ptr %tif_rawcp119, align 8
  %tif_rawdatasize120 = getelementptr inbounds %struct.tiff, ptr %83, i64 0, i32 41
  %84 = load i32, ptr %tif_rawdatasize120, align 8
  %85 = load i32, ptr %occ, align 4
  %sub121 = sub nsw i32 %84, %85
  %86 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc122 = getelementptr inbounds %struct.tiff, ptr %86, i64 0, i32 43
  store i32 %sub121, ptr %tif_rawcc122, align 8
  %call123 = call i32 @TIFFFlushData1(ptr noundef %86) #6
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.then125, label %if.end126

if.then125:                                       ; preds = %if.then118
  store i32 -1, ptr %retval, align 4
  br label %return

if.end126:                                        ; preds = %if.then118
  %87 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp127 = getelementptr inbounds %struct.tiff, ptr %87, i64 0, i32 42
  %88 = load ptr, ptr %tif_rawcp127, align 8
  store ptr %88, ptr %op, align 8
  %tif_rawdatasize128 = getelementptr inbounds %struct.tiff, ptr %87, i64 0, i32 41
  %89 = load i32, ptr %tif_rawdatasize128, align 8
  %tif_rawcc129 = getelementptr inbounds %struct.tiff, ptr %87, i64 0, i32 43
  %90 = load i32, ptr %tif_rawcc129, align 8
  %sub130 = sub nsw i32 %89, %90
  store i32 %sub130, ptr %occ, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.end126, %while.body109
  %91 = load i32, ptr %j, align 4
  %conv132 = trunc i32 %91 to i8
  %92 = load ptr, ptr %op, align 8
  %incdec.ptr133 = getelementptr inbounds i8, ptr %92, i64 1
  store ptr %incdec.ptr133, ptr %op, align 8
  store i8 %conv132, ptr %92, align 1
  %93 = load i32, ptr %occ, align 4
  br label %while.cond134

while.cond134:                                    ; preds = %while.body137, %if.end131
  %storemerge2.in = phi i32 [ %93, %if.end131 ], [ %100, %while.body137 ]
  %storemerge2 = add nsw i32 %storemerge2.in, -1
  store i32 %storemerge2, ptr %occ, align 4
  %94 = load i32, ptr %j, align 4
  %dec135 = add nsw i32 %94, -1
  store i32 %dec135, ptr %j, align 4
  %tobool136.not = icmp eq i32 %94, 0
  br i1 %tobool136.not, label %while.cond106, label %while.body137, !llvm.loop !45

while.body137:                                    ; preds = %while.cond134
  %95 = load ptr, ptr %tp, align 8
  %96 = load i32, ptr %i, align 4
  %inc138 = add nsw i32 %96, 1
  store i32 %inc138, ptr %i, align 4
  %idxprom139 = sext i32 %96 to i64
  %arrayidx140 = getelementptr inbounds i16, ptr %95, i64 %idxprom139
  %97 = load i16, ptr %arrayidx140, align 2
  %conv141 = sext i16 %97 to i32
  %98 = load i32, ptr %shft, align 4
  %shr142 = ashr i32 %conv141, %98
  %conv144 = trunc i32 %shr142 to i8
  %99 = load ptr, ptr %op, align 8
  %incdec.ptr145 = getelementptr inbounds i8, ptr %99, i64 1
  store ptr %incdec.ptr145, ptr %op, align 8
  store i8 %conv144, ptr %99, align 1
  %100 = load i32, ptr %occ, align 4
  br label %while.cond134, !llvm.loop !46

while.end148:                                     ; preds = %while.cond106
  %101 = load i32, ptr %rc, align 4
  %cmp149 = icmp sgt i32 %101, 3
  br i1 %cmp149, label %if.then151, label %if.else163

if.then151:                                       ; preds = %while.end148
  %102 = load i32, ptr %rc, align 4
  %103 = trunc i32 %102 to i8
  %conv153 = add i8 %103, 126
  %104 = load ptr, ptr %op, align 8
  %incdec.ptr154 = getelementptr inbounds i8, ptr %104, i64 1
  store ptr %incdec.ptr154, ptr %op, align 8
  store i8 %conv153, ptr %104, align 1
  %105 = load ptr, ptr %tp, align 8
  %106 = load i32, ptr %beg, align 4
  %idxprom155 = sext i32 %106 to i64
  %arrayidx156 = getelementptr inbounds i16, ptr %105, i64 %idxprom155
  %107 = load i16, ptr %arrayidx156, align 2
  %conv157 = sext i16 %107 to i32
  %108 = load i32, ptr %shft, align 4
  %shr158 = ashr i32 %conv157, %108
  %conv160 = trunc i32 %shr158 to i8
  %109 = load ptr, ptr %op, align 8
  %incdec.ptr161 = getelementptr inbounds i8, ptr %109, i64 1
  store ptr %incdec.ptr161, ptr %op, align 8
  store i8 %conv160, ptr %109, align 1
  %110 = load i32, ptr %occ, align 4
  %sub162 = add nsw i32 %110, -2
  store i32 %sub162, ptr %occ, align 4
  br label %for.inc165

if.else163:                                       ; preds = %while.end148
  store i32 0, ptr %rc, align 4
  br label %for.inc165

for.inc165:                                       ; preds = %if.then151, %if.else163
  %111 = load i32, ptr %rc, align 4
  %112 = load i32, ptr %i, align 4
  %add166 = add nsw i32 %112, %111
  br label %for.cond27, !llvm.loop !47

for.end168:                                       ; preds = %for.cond
  %113 = load ptr, ptr %op, align 8
  %114 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp169 = getelementptr inbounds %struct.tiff, ptr %114, i64 0, i32 42
  store ptr %113, ptr %tif_rawcp169, align 8
  %tif_rawdatasize170 = getelementptr inbounds %struct.tiff, ptr %114, i64 0, i32 41
  %115 = load i32, ptr %tif_rawdatasize170, align 8
  %116 = load i32, ptr %occ, align 4
  %sub171 = sub nsw i32 %115, %116
  %117 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc172 = getelementptr inbounds %struct.tiff, ptr %117, i64 0, i32 43
  store i32 %sub171, ptr %tif_rawcc172, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end168, %if.then125, %if.then39
  %118 = load i32, ptr %retval, align 4
  ret i32 %118
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
define internal i32 @pix24fromXYZ(ptr noundef %XYZ) #0 {
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
define internal i32 @pix32fromXYZ(ptr noundef %XYZ) #0 {
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
  ret i32 %or37
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

declare i32 @TIFFSetField(ptr noundef, i32 noundef, ...) #2

declare i32 @TIFFTileSize(ptr noundef) #2

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
