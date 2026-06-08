; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_balanced_score/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-tiff2dither_tif_lzw.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2dither/tif_lzw.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }
%struct.LZWDecodeState = type { %struct.LZWBaseState, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.LZWBaseState = type { %struct.TIFFPredictorState, i16, i16, i16, i64, i64 }
%struct.TIFFPredictorState = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.code_ent = type { ptr, i16, i8, i8 }

@__func__.TIFFInitLZW = private unnamed_addr constant [12 x i8] c"TIFFInitLZW\00", align 1
@.str = private unnamed_addr constant [10 x i8] c"tif_lzw.c\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"scheme == COMPRESSION_LZW\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"No space for LZW state block\00", align 1
@LZWSetupDecode.module = internal constant [16 x i8] c" LZWSetupDecode\00", align 1
@__func__.LZWSetupDecode = private unnamed_addr constant [15 x i8] c"LZWSetupDecode\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"sp != NULL\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"No space for LZW code table\00", align 1
@__func__.LZWPreDecode = private unnamed_addr constant [13 x i8] c"LZWPreDecode\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Old-style LZW codes, convert file\00", align 1
@__func__.LZWDecodeCompat = private unnamed_addr constant [16 x i8] c"LZWDecodeCompat\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"LZWDecode: Strip %d not terminated with EOI code\00", align 1
@.str.7 = private unnamed_addr constant [72 x i8] c"&sp->dec_codetab[0] <= free_entp && free_entp < &sp->dec_codetab[CSIZE]\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"LZWDecodeCompat: Not enough data at scanline %d (short %d bytes)\00", align 1
@__func__.LZWDecode = private unnamed_addr constant [10 x i8] c"LZWDecode\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"LZWDecode: Not enough data at scanline %d (short %d bytes)\00", align 1
@.str.10 = private unnamed_addr constant [63 x i8] c"LZWDecode: Bogus encoding, loop in the code table; scanline %d\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFInitLZW(ptr noundef %tif, i32 noundef %scheme) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %cmp.not = icmp eq i32 %scheme, 5
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.TIFFInitLZW, ptr noundef nonnull @.str, i32 noundef 663, ptr noundef nonnull @.str.1) #3
  unreachable

cond.end:                                         ; preds = %entry
  %call = call ptr @_TIFFmalloc(i32 noundef 184) #4
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  store ptr %call, ptr %tif_data, align 8
  %cmp2 = icmp eq ptr %call, null
  br i1 %cmp2, label %bad, label %if.end

if.end:                                           ; preds = %cond.end
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 2
  %2 = load i32, ptr %tif_mode, align 4
  %cmp4 = icmp eq i32 %2, 0
  br i1 %cmp4, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_data7 = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 37
  %4 = load ptr, ptr %tif_data7, align 8
  %dec_codetab = getelementptr inbounds %struct.LZWDecodeState, ptr %4, i64 0, i32 9
  store ptr null, ptr %dec_codetab, align 8
  %tif_data8 = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 37
  %5 = load ptr, ptr %tif_data8, align 8
  %dec_decode = getelementptr inbounds %struct.LZWDecodeState, ptr %5, i64 0, i32 4
  store ptr null, ptr %dec_decode, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_setupdecode = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 21
  store ptr @LZWSetupDecode, ptr %tif_setupdecode, align 8
  %tif_predecode = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 22
  store ptr @LZWPreDecode, ptr %tif_predecode, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 26
  store ptr @LZWDecode, ptr %tif_decoderow, align 8
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %7, i64 0, i32 28
  store ptr @LZWDecode, ptr %tif_decodestrip, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %7, i64 0, i32 30
  store ptr @LZWDecode, ptr %tif_decodetile, align 8
  %tif_setupencode = getelementptr inbounds %struct.tiff, ptr %7, i64 0, i32 23
  store ptr @_LZWtrue, ptr %tif_setupencode, align 8
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_preencode = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 24
  store ptr @_TIFFNoPreCode, ptr %tif_preencode, align 8
  %tif_postencode = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 25
  store ptr @_LZWtrue, ptr %tif_postencode, align 8
  %tif_encoderow = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 27
  store ptr @_TIFFNoRowEncode, ptr %tif_encoderow, align 8
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_encodestrip = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 29
  store ptr @_TIFFNoStripEncode, ptr %tif_encodestrip, align 8
  %tif_encodetile = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 31
  store ptr @_TIFFNoTileEncode, ptr %tif_encodetile, align 8
  %tif_cleanup = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 34
  store ptr @LZWCleanup, ptr %tif_cleanup, align 8
  %10 = load ptr, ptr %tif.addr, align 8
  %call10 = call i32 @TIFFPredictorInit(ptr noundef %10) #4
  br label %return

bad:                                              ; preds = %cond.end
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @__func__.TIFFInitLZW, ptr noundef nonnull @.str.2) #4
  br label %return

return:                                           ; preds = %bad, %if.end9
  %storemerge = phi i32 [ 1, %if.end9 ], [ 0, %bad ]
  ret i32 %storemerge
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare ptr @_TIFFmalloc(i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @LZWSetupDecode(ptr noundef %tif) #0 {
entry:
  %sp = alloca ptr, align 8
  %code = alloca i32, align 4
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.LZWSetupDecode, ptr noundef nonnull @.str, i32 noundef 196, ptr noundef nonnull @.str.3) #3
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load ptr, ptr %sp, align 8
  %dec_codetab = getelementptr inbounds %struct.LZWDecodeState, ptr %1, i64 0, i32 9
  %2 = load ptr, ptr %dec_codetab, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %return

if.then:                                          ; preds = %cond.end
  %call = call ptr @_TIFFmalloc(i32 noundef 81904) #4
  %3 = load ptr, ptr %sp, align 8
  %dec_codetab3 = getelementptr inbounds %struct.LZWDecodeState, ptr %3, i64 0, i32 9
  store ptr %call, ptr %dec_codetab3, align 8
  %cmp5 = icmp eq ptr %call, null
  br i1 %cmp5, label %if.then7, label %for.cond

if.then7:                                         ; preds = %if.then
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @LZWSetupDecode.module, ptr noundef nonnull @.str.4) #4
  br label %return

for.cond:                                         ; preds = %if.then, %for.body
  %storemerge1 = phi i32 [ %dec, %for.body ], [ 255, %if.then ]
  store i32 %storemerge1, ptr %code, align 4
  %cmp8 = icmp sgt i32 %storemerge1, -1
  br i1 %cmp8, label %for.body, label %return

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %code, align 4
  %conv10 = trunc i32 %4 to i8
  %5 = load ptr, ptr %sp, align 8
  %dec_codetab11 = getelementptr inbounds %struct.LZWDecodeState, ptr %5, i64 0, i32 9
  %6 = load ptr, ptr %dec_codetab11, align 8
  %idxprom = sext i32 %4 to i64
  %value = getelementptr inbounds %struct.code_ent, ptr %6, i64 %idxprom, i32 2
  store i8 %conv10, ptr %value, align 2
  %7 = load i32, ptr %code, align 4
  %conv12 = trunc i32 %7 to i8
  %8 = load ptr, ptr %sp, align 8
  %dec_codetab13 = getelementptr inbounds %struct.LZWDecodeState, ptr %8, i64 0, i32 9
  %9 = load ptr, ptr %dec_codetab13, align 8
  %idxprom14 = sext i32 %7 to i64
  %firstchar = getelementptr inbounds %struct.code_ent, ptr %9, i64 %idxprom14, i32 3
  store i8 %conv12, ptr %firstchar, align 1
  %dec_codetab16 = getelementptr inbounds %struct.LZWDecodeState, ptr %8, i64 0, i32 9
  %10 = load ptr, ptr %dec_codetab16, align 8
  %11 = load i32, ptr %code, align 4
  %idxprom17 = sext i32 %11 to i64
  %length = getelementptr inbounds %struct.code_ent, ptr %10, i64 %idxprom17, i32 1
  store i16 1, ptr %length, align 8
  %12 = load ptr, ptr %sp, align 8
  %dec_codetab19 = getelementptr inbounds %struct.LZWDecodeState, ptr %12, i64 0, i32 9
  %13 = load ptr, ptr %dec_codetab19, align 8
  %14 = load i32, ptr %code, align 4
  %idxprom20 = sext i32 %14 to i64
  %arrayidx21 = getelementptr inbounds %struct.code_ent, ptr %13, i64 %idxprom20
  store ptr null, ptr %arrayidx21, align 8
  %15 = load i32, ptr %code, align 4
  %dec = add nsw i32 %15, -1
  br label %for.cond, !llvm.loop !6

return:                                           ; preds = %cond.end, %for.cond, %if.then7
  %storemerge = phi i32 [ 0, %if.then7 ], [ 1, %for.cond ], [ 1, %cond.end ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LZWPreDecode(ptr noundef %tif, i16 noundef zeroext %s) #0 {
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
  call void @__assert_rtn(ptr noundef nonnull @__func__.LZWPreDecode, ptr noundef nonnull @.str, i32 noundef 225, ptr noundef nonnull @.str.3) #3
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 40
  %2 = load ptr, ptr %tif_rawdata, align 8
  %3 = load i8, ptr %2, align 1
  %cmp2 = icmp eq i8 %3, 0
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata4 = getelementptr inbounds %struct.tiff, ptr %4, i64 0, i32 40
  %5 = load ptr, ptr %tif_rawdata4, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %5, i64 1
  %6 = load i8, ptr %arrayidx5, align 1
  %7 = and i8 %6, 1
  %tobool7.not = icmp eq i8 %7, 0
  br i1 %tobool7.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %sp, align 8
  %dec_decode = getelementptr inbounds %struct.LZWDecodeState, ptr %8, i64 0, i32 4
  %9 = load ptr, ptr %dec_decode, align 8
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %10 = load ptr, ptr %tif.addr, align 8
  %11 = load ptr, ptr %10, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %11, ptr noundef nonnull @.str.5) #4
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 26
  store ptr @LZWDecodeCompat, ptr %tif_decoderow, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 28
  store ptr @LZWDecodeCompat, ptr %tif_decodestrip, align 8
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %12, i64 0, i32 30
  store ptr @LZWDecodeCompat, ptr %tif_decodetile, align 8
  %tif_setupdecode = getelementptr inbounds %struct.tiff, ptr %12, i64 0, i32 21
  %13 = load ptr, ptr %tif_setupdecode, align 8
  %call = call i32 %13(ptr noundef %12) #4
  %14 = load ptr, ptr %sp, align 8
  %dec_decode10 = getelementptr inbounds %struct.LZWDecodeState, ptr %14, i64 0, i32 4
  store ptr @LZWDecodeCompat, ptr %dec_decode10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  %15 = load ptr, ptr %sp, align 8
  %maxcode = getelementptr inbounds %struct.LZWBaseState, ptr %15, i64 0, i32 2
  store i16 511, ptr %maxcode, align 2
  br label %if.end14

if.else:                                          ; preds = %land.lhs.true, %cond.end
  %16 = load ptr, ptr %sp, align 8
  %maxcode12 = getelementptr inbounds %struct.LZWBaseState, ptr %16, i64 0, i32 2
  store i16 510, ptr %maxcode12, align 2
  %dec_decode13 = getelementptr inbounds %struct.LZWDecodeState, ptr %16, i64 0, i32 4
  store ptr @LZWDecode, ptr %dec_decode13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end
  %17 = load ptr, ptr %sp, align 8
  %nbits = getelementptr inbounds %struct.LZWBaseState, ptr %17, i64 0, i32 1
  store i16 9, ptr %nbits, align 8
  %nextbits = getelementptr inbounds %struct.LZWBaseState, ptr %17, i64 0, i32 5
  store i64 0, ptr %nextbits, align 8
  %nextdata = getelementptr inbounds %struct.LZWBaseState, ptr %17, i64 0, i32 4
  store i64 0, ptr %nextdata, align 8
  %18 = load ptr, ptr %sp, align 8
  %dec_restart = getelementptr inbounds %struct.LZWDecodeState, ptr %18, i64 0, i32 2
  store i64 0, ptr %dec_restart, align 8
  %dec_nbitsmask = getelementptr inbounds %struct.LZWDecodeState, ptr %18, i64 0, i32 1
  store i64 511, ptr %dec_nbitsmask, align 8
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %19, i64 0, i32 43
  %20 = load i32, ptr %tif_rawcc, align 8
  %shl = shl i32 %20, 3
  %conv18 = sext i32 %shl to i64
  %21 = load ptr, ptr %sp, align 8
  %dec_bitsleft = getelementptr inbounds %struct.LZWDecodeState, ptr %21, i64 0, i32 3
  store i64 %conv18, ptr %dec_bitsleft, align 8
  %dec_codetab = getelementptr inbounds %struct.LZWDecodeState, ptr %21, i64 0, i32 9
  %22 = load ptr, ptr %dec_codetab, align 8
  %add.ptr = getelementptr inbounds %struct.code_ent, ptr %22, i64 258
  %dec_free_entp = getelementptr inbounds %struct.LZWDecodeState, ptr %21, i64 0, i32 7
  store ptr %add.ptr, ptr %dec_free_entp, align 8
  %23 = load ptr, ptr %sp, align 8
  %dec_free_entp19 = getelementptr inbounds %struct.LZWDecodeState, ptr %23, i64 0, i32 7
  %24 = load ptr, ptr %dec_free_entp19, align 8
  call void @_TIFFmemset(ptr noundef %24, i32 noundef 0, i32 noundef 77776) #4
  %dec_codetab20 = getelementptr inbounds %struct.LZWDecodeState, ptr %23, i64 0, i32 9
  %25 = load ptr, ptr %dec_codetab20, align 8
  %arrayidx21 = getelementptr inbounds %struct.code_ent, ptr %25, i64 -1
  %26 = load ptr, ptr %sp, align 8
  %dec_oldcodep = getelementptr inbounds %struct.LZWDecodeState, ptr %26, i64 0, i32 6
  store ptr %arrayidx21, ptr %dec_oldcodep, align 8
  %dec_codetab22 = getelementptr inbounds %struct.LZWDecodeState, ptr %26, i64 0, i32 9
  %27 = load ptr, ptr %dec_codetab22, align 8
  %dec_nbitsmask23 = getelementptr inbounds %struct.LZWDecodeState, ptr %26, i64 0, i32 1
  %28 = load i64, ptr %dec_nbitsmask23, align 8
  %sub = add nsw i64 %28, -1
  %arrayidx24 = getelementptr inbounds %struct.code_ent, ptr %27, i64 %sub
  %29 = load ptr, ptr %sp, align 8
  %dec_maxcodep = getelementptr inbounds %struct.LZWDecodeState, ptr %29, i64 0, i32 8
  store ptr %arrayidx24, ptr %dec_maxcodep, align 8
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LZWDecode(ptr noundef %tif, ptr noundef %op0, i32 noundef %occ0, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %op = alloca ptr, align 8
  %occ = alloca i64, align 8
  %tp = alloca ptr, align 8
  %bp = alloca ptr, align 8
  %code = alloca i16, align 2
  %len = alloca i32, align 4
  %nbits = alloca i64, align 8
  %nextbits = alloca i64, align 8
  %nextdata = alloca i64, align 8
  %nbitsmask = alloca i64, align 8
  %codep = alloca ptr, align 8
  %free_entp = alloca ptr, align 8
  %maxcodep = alloca ptr, align 8
  %oldcodep = alloca ptr, align 8
  %residue = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  store ptr %op0, ptr %op, align 8
  %conv = sext i32 %occ0 to i64
  store i64 %conv, ptr %occ, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.LZWDecode, ptr noundef nonnull @.str, i32 noundef 324, ptr noundef nonnull @.str.3) #3
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load ptr, ptr %sp, align 8
  %dec_restart = getelementptr inbounds %struct.LZWDecodeState, ptr %1, i64 0, i32 2
  %2 = load i64, ptr %dec_restart, align 8
  %tobool3.not = icmp eq i64 %2, 0
  br i1 %tobool3.not, label %if.end41, label %if.then

if.then:                                          ; preds = %cond.end
  %3 = load ptr, ptr %sp, align 8
  %dec_codep = getelementptr inbounds %struct.LZWDecodeState, ptr %3, i64 0, i32 5
  %4 = load ptr, ptr %dec_codep, align 8
  store ptr %4, ptr %codep, align 8
  %length = getelementptr inbounds %struct.code_ent, ptr %4, i64 0, i32 1
  %5 = load i16, ptr %length, align 8
  %conv4 = zext i16 %5 to i64
  %6 = load ptr, ptr %sp, align 8
  %dec_restart5 = getelementptr inbounds %struct.LZWDecodeState, ptr %6, i64 0, i32 2
  %7 = load i64, ptr %dec_restart5, align 8
  %sub = sub nsw i64 %conv4, %7
  store i64 %sub, ptr %residue, align 8
  %8 = load i64, ptr %occ, align 8
  %cmp6 = icmp sgt i64 %sub, %8
  br i1 %cmp6, label %if.then8, label %if.end24

if.then8:                                         ; preds = %if.then
  %9 = load i64, ptr %occ, align 8
  %10 = load ptr, ptr %sp, align 8
  %dec_restart9 = getelementptr inbounds %struct.LZWDecodeState, ptr %10, i64 0, i32 2
  %11 = load i64, ptr %dec_restart9, align 8
  %add = add nsw i64 %11, %9
  store i64 %add, ptr %dec_restart9, align 8
  br label %do.body

do.body:                                          ; preds = %do.body, %if.then8
  %12 = load ptr, ptr %codep, align 8
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %codep, align 8
  %14 = load i64, ptr %residue, align 8
  %dec = add nsw i64 %14, -1
  store i64 %dec, ptr %residue, align 8
  %15 = load i64, ptr %occ, align 8
  %cmp10 = icmp sgt i64 %dec, %15
  %16 = load ptr, ptr %codep, align 8
  %tobool12 = icmp ne ptr %16, null
  %17 = select i1 %cmp10, i1 %tobool12, i1 false
  br i1 %17, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.body
  %18 = load ptr, ptr %codep, align 8
  %tobool13.not = icmp eq ptr %18, null
  br i1 %tobool13.not, label %if.end, label %if.then14

if.then14:                                        ; preds = %do.end
  %19 = load ptr, ptr %op, align 8
  %20 = load i64, ptr %occ, align 8
  %add.ptr = getelementptr inbounds i8, ptr %19, i64 %20
  store ptr %add.ptr, ptr %tp, align 8
  br label %do.body15

do.body15:                                        ; preds = %do.body15, %if.then14
  %21 = load ptr, ptr %codep, align 8
  %value = getelementptr inbounds %struct.code_ent, ptr %21, i64 0, i32 2
  %22 = load i8, ptr %value, align 2
  %23 = load ptr, ptr %tp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %23, i64 -1
  store ptr %incdec.ptr, ptr %tp, align 8
  store i8 %22, ptr %incdec.ptr, align 1
  %24 = load ptr, ptr %codep, align 8
  %25 = load ptr, ptr %24, align 8
  store ptr %25, ptr %codep, align 8
  %26 = load i64, ptr %occ, align 8
  %dec18 = add nsw i64 %26, -1
  store i64 %dec18, ptr %occ, align 8
  %tobool19.not = icmp eq i64 %dec18, 0
  %27 = load ptr, ptr %codep, align 8
  %tobool21 = icmp ne ptr %27, null
  %28 = select i1 %tobool19.not, i1 false, i1 %tobool21
  br i1 %28, label %do.body15, label %if.end, !llvm.loop !9

if.end:                                           ; preds = %do.body15, %do.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.then
  %29 = load i64, ptr %residue, align 8
  %30 = load ptr, ptr %op, align 8
  %add.ptr25 = getelementptr inbounds i8, ptr %30, i64 %29
  store ptr %add.ptr25, ptr %op, align 8
  %31 = load i64, ptr %occ, align 8
  %sub26 = sub nsw i64 %31, %29
  store i64 %sub26, ptr %occ, align 8
  store ptr %add.ptr25, ptr %tp, align 8
  br label %do.body27

do.body27:                                        ; preds = %do.body27, %if.end24
  %32 = load ptr, ptr %tp, align 8
  %incdec.ptr28 = getelementptr inbounds i8, ptr %32, i64 -1
  store ptr %incdec.ptr28, ptr %tp, align 8
  %33 = load ptr, ptr %codep, align 8
  %value29 = getelementptr inbounds %struct.code_ent, ptr %33, i64 0, i32 2
  %34 = load i8, ptr %value29, align 2
  %35 = load ptr, ptr %33, align 8
  store ptr %35, ptr %codep, align 8
  store i8 %34, ptr %incdec.ptr28, align 1
  %36 = load i64, ptr %residue, align 8
  %dec34 = add nsw i64 %36, -1
  store i64 %dec34, ptr %residue, align 8
  %tobool35.not = icmp eq i64 %dec34, 0
  %37 = load ptr, ptr %codep, align 8
  %tobool37 = icmp ne ptr %37, null
  %38 = select i1 %tobool35.not, i1 false, i1 %tobool37
  br i1 %38, label %do.body27, label %do.end39, !llvm.loop !10

do.end39:                                         ; preds = %do.body27
  %39 = load ptr, ptr %sp, align 8
  %dec_restart40 = getelementptr inbounds %struct.LZWDecodeState, ptr %39, i64 0, i32 2
  store i64 0, ptr %dec_restart40, align 8
  br label %if.end41

if.end41:                                         ; preds = %do.end39, %cond.end
  %40 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %40, i64 0, i32 42
  %41 = load ptr, ptr %tif_rawcp, align 8
  store ptr %41, ptr %bp, align 8
  %42 = load ptr, ptr %sp, align 8
  %nbits42 = getelementptr inbounds %struct.LZWBaseState, ptr %42, i64 0, i32 1
  %43 = load i16, ptr %nbits42, align 8
  %conv43 = zext i16 %43 to i64
  store i64 %conv43, ptr %nbits, align 8
  %nextdata45 = getelementptr inbounds %struct.LZWBaseState, ptr %42, i64 0, i32 4
  %44 = load i64, ptr %nextdata45, align 8
  store i64 %44, ptr %nextdata, align 8
  %45 = load ptr, ptr %sp, align 8
  %nextbits47 = getelementptr inbounds %struct.LZWBaseState, ptr %45, i64 0, i32 5
  %46 = load i64, ptr %nextbits47, align 8
  store i64 %46, ptr %nextbits, align 8
  %dec_nbitsmask = getelementptr inbounds %struct.LZWDecodeState, ptr %45, i64 0, i32 1
  %47 = load i64, ptr %dec_nbitsmask, align 8
  store i64 %47, ptr %nbitsmask, align 8
  %48 = load ptr, ptr %sp, align 8
  %dec_oldcodep = getelementptr inbounds %struct.LZWDecodeState, ptr %48, i64 0, i32 6
  %49 = load ptr, ptr %dec_oldcodep, align 8
  store ptr %49, ptr %oldcodep, align 8
  %dec_free_entp = getelementptr inbounds %struct.LZWDecodeState, ptr %48, i64 0, i32 7
  %50 = load ptr, ptr %dec_free_entp, align 8
  store ptr %50, ptr %free_entp, align 8
  %51 = load ptr, ptr %sp, align 8
  %dec_maxcodep = getelementptr inbounds %struct.LZWDecodeState, ptr %51, i64 0, i32 8
  %52 = load ptr, ptr %dec_maxcodep, align 8
  store ptr %52, ptr %maxcodep, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end249, %if.end117, %if.end41
  %53 = load i64, ptr %occ, align 8
  %cmp48 = icmp sgt i64 %53, 0
  br i1 %cmp48, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %54 = load ptr, ptr %sp, align 8
  %dec_bitsleft = getelementptr inbounds %struct.LZWDecodeState, ptr %54, i64 0, i32 3
  %55 = load i64, ptr %dec_bitsleft, align 8
  %56 = load i64, ptr %nbits, align 8
  %cmp50 = icmp slt i64 %55, %56
  br i1 %cmp50, label %if.then52, label %if.else

if.then52:                                        ; preds = %while.body
  %57 = load ptr, ptr %tif.addr, align 8
  %58 = load ptr, ptr %57, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %57, i64 0, i32 13
  %59 = load i32, ptr %tif_curstrip, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %58, ptr noundef nonnull @.str.6, i32 noundef %59) #4
  store i16 257, ptr %code, align 2
  br label %if.end70

if.else:                                          ; preds = %while.body
  %60 = load i64, ptr %nextdata, align 8
  %shl = shl i64 %60, 8
  %61 = load ptr, ptr %bp, align 8
  %incdec.ptr53 = getelementptr inbounds i8, ptr %61, i64 1
  store ptr %incdec.ptr53, ptr %bp, align 8
  %62 = load i8, ptr %61, align 1
  %conv54 = zext i8 %62 to i64
  %or = or i64 %shl, %conv54
  store i64 %or, ptr %nextdata, align 8
  %63 = load i64, ptr %nextbits, align 8
  %add55 = add nsw i64 %63, 8
  store i64 %add55, ptr %nextbits, align 8
  %64 = load i64, ptr %nbits, align 8
  %cmp56 = icmp slt i64 %add55, %64
  br i1 %cmp56, label %if.then58, label %if.end64

if.then58:                                        ; preds = %if.else
  %65 = load i64, ptr %nextdata, align 8
  %shl59 = shl i64 %65, 8
  %66 = load ptr, ptr %bp, align 8
  %incdec.ptr60 = getelementptr inbounds i8, ptr %66, i64 1
  store ptr %incdec.ptr60, ptr %bp, align 8
  %67 = load i8, ptr %66, align 1
  %conv61 = zext i8 %67 to i64
  %or62 = or i64 %shl59, %conv61
  store i64 %or62, ptr %nextdata, align 8
  %68 = load i64, ptr %nextbits, align 8
  %add63 = add nsw i64 %68, 8
  store i64 %add63, ptr %nextbits, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then58, %if.else
  %69 = load i64, ptr %nextdata, align 8
  %70 = load i64, ptr %nextbits, align 8
  %71 = load i64, ptr %nbits, align 8
  %sub65 = sub nsw i64 %70, %71
  %shr = ashr i64 %69, %sub65
  %72 = load i64, ptr %nbitsmask, align 8
  %and = and i64 %shr, %72
  %conv66 = trunc i64 %and to i16
  store i16 %conv66, ptr %code, align 2
  %73 = load i64, ptr %nbits, align 8
  %74 = load i64, ptr %nextbits, align 8
  %sub67 = sub nsw i64 %74, %73
  store i64 %sub67, ptr %nextbits, align 8
  %75 = load ptr, ptr %sp, align 8
  %dec_bitsleft68 = getelementptr inbounds %struct.LZWDecodeState, ptr %75, i64 0, i32 3
  %76 = load i64, ptr %dec_bitsleft68, align 8
  %sub69 = sub nsw i64 %76, %73
  store i64 %sub69, ptr %dec_bitsleft68, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.end64, %if.then52
  %77 = load i16, ptr %code, align 2
  %cmp72 = icmp eq i16 %77, 257
  br i1 %cmp72, label %while.end, label %if.end75

if.end75:                                         ; preds = %if.end70
  %78 = load i16, ptr %code, align 2
  %cmp77 = icmp eq i16 %78, 256
  br i1 %cmp77, label %if.then79, label %if.end124

if.then79:                                        ; preds = %if.end75
  %79 = load ptr, ptr %sp, align 8
  %dec_codetab = getelementptr inbounds %struct.LZWDecodeState, ptr %79, i64 0, i32 9
  %80 = load ptr, ptr %dec_codetab, align 8
  %add.ptr80 = getelementptr inbounds %struct.code_ent, ptr %80, i64 258
  store ptr %add.ptr80, ptr %free_entp, align 8
  store i64 9, ptr %nbits, align 8
  store i64 511, ptr %nbitsmask, align 8
  %81 = load ptr, ptr %sp, align 8
  %dec_codetab81 = getelementptr inbounds %struct.LZWDecodeState, ptr %81, i64 0, i32 9
  %82 = load ptr, ptr %dec_codetab81, align 8
  %add.ptr83 = getelementptr inbounds %struct.code_ent, ptr %82, i64 510
  store ptr %add.ptr83, ptr %maxcodep, align 8
  %dec_bitsleft84 = getelementptr inbounds %struct.LZWDecodeState, ptr %81, i64 0, i32 3
  %83 = load i64, ptr %dec_bitsleft84, align 8
  %84 = load i64, ptr %nbits, align 8
  %cmp85 = icmp slt i64 %83, %84
  br i1 %cmp85, label %if.then87, label %if.else90

if.then87:                                        ; preds = %if.then79
  %85 = load ptr, ptr %tif.addr, align 8
  %86 = load ptr, ptr %85, align 8
  %tif_curstrip89 = getelementptr inbounds %struct.tiff, ptr %85, i64 0, i32 13
  %87 = load i32, ptr %tif_curstrip89, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %86, ptr noundef nonnull @.str.6, i32 noundef %87) #4
  store i16 257, ptr %code, align 2
  br label %if.end112

if.else90:                                        ; preds = %if.then79
  %88 = load i64, ptr %nextdata, align 8
  %shl91 = shl i64 %88, 8
  %89 = load ptr, ptr %bp, align 8
  %incdec.ptr92 = getelementptr inbounds i8, ptr %89, i64 1
  store ptr %incdec.ptr92, ptr %bp, align 8
  %90 = load i8, ptr %89, align 1
  %conv93 = zext i8 %90 to i64
  %or94 = or i64 %shl91, %conv93
  store i64 %or94, ptr %nextdata, align 8
  %91 = load i64, ptr %nextbits, align 8
  %add95 = add nsw i64 %91, 8
  store i64 %add95, ptr %nextbits, align 8
  %92 = load i64, ptr %nbits, align 8
  %cmp96 = icmp slt i64 %add95, %92
  br i1 %cmp96, label %if.then98, label %if.end104

if.then98:                                        ; preds = %if.else90
  %93 = load i64, ptr %nextdata, align 8
  %shl99 = shl i64 %93, 8
  %94 = load ptr, ptr %bp, align 8
  %incdec.ptr100 = getelementptr inbounds i8, ptr %94, i64 1
  store ptr %incdec.ptr100, ptr %bp, align 8
  %95 = load i8, ptr %94, align 1
  %conv101 = zext i8 %95 to i64
  %or102 = or i64 %shl99, %conv101
  store i64 %or102, ptr %nextdata, align 8
  %96 = load i64, ptr %nextbits, align 8
  %add103 = add nsw i64 %96, 8
  store i64 %add103, ptr %nextbits, align 8
  br label %if.end104

if.end104:                                        ; preds = %if.then98, %if.else90
  %97 = load i64, ptr %nextdata, align 8
  %98 = load i64, ptr %nextbits, align 8
  %99 = load i64, ptr %nbits, align 8
  %sub105 = sub nsw i64 %98, %99
  %shr106 = ashr i64 %97, %sub105
  %100 = load i64, ptr %nbitsmask, align 8
  %and107 = and i64 %shr106, %100
  %conv108 = trunc i64 %and107 to i16
  store i16 %conv108, ptr %code, align 2
  %101 = load i64, ptr %nbits, align 8
  %102 = load i64, ptr %nextbits, align 8
  %sub109 = sub nsw i64 %102, %101
  store i64 %sub109, ptr %nextbits, align 8
  %103 = load ptr, ptr %sp, align 8
  %dec_bitsleft110 = getelementptr inbounds %struct.LZWDecodeState, ptr %103, i64 0, i32 3
  %104 = load i64, ptr %dec_bitsleft110, align 8
  %sub111 = sub nsw i64 %104, %101
  store i64 %sub111, ptr %dec_bitsleft110, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.end104, %if.then87
  %105 = load i16, ptr %code, align 2
  %cmp114 = icmp eq i16 %105, 257
  br i1 %cmp114, label %while.end, label %if.end117

if.end117:                                        ; preds = %if.end112
  %106 = load i16, ptr %code, align 2
  %conv118 = trunc i16 %106 to i8
  %107 = load ptr, ptr %op, align 8
  %incdec.ptr119 = getelementptr inbounds i8, ptr %107, i64 1
  store ptr %incdec.ptr119, ptr %op, align 8
  store i8 %conv118, ptr %107, align 1
  %108 = load i64, ptr %occ, align 8
  %dec120 = add nsw i64 %108, -1
  store i64 %dec120, ptr %occ, align 8
  %109 = load ptr, ptr %sp, align 8
  %dec_codetab121 = getelementptr inbounds %struct.LZWDecodeState, ptr %109, i64 0, i32 9
  %110 = load ptr, ptr %dec_codetab121, align 8
  %111 = load i16, ptr %code, align 2
  %idx.ext = zext i16 %111 to i64
  %add.ptr123 = getelementptr inbounds %struct.code_ent, ptr %110, i64 %idx.ext
  store ptr %add.ptr123, ptr %oldcodep, align 8
  br label %while.cond, !llvm.loop !11

if.end124:                                        ; preds = %if.end75
  %112 = load ptr, ptr %sp, align 8
  %dec_codetab125 = getelementptr inbounds %struct.LZWDecodeState, ptr %112, i64 0, i32 9
  %113 = load ptr, ptr %dec_codetab125, align 8
  %114 = load i16, ptr %code, align 2
  %idx.ext127 = zext i16 %114 to i64
  %add.ptr128 = getelementptr inbounds %struct.code_ent, ptr %113, i64 %idx.ext127
  store ptr %add.ptr128, ptr %codep, align 8
  %115 = load ptr, ptr %sp, align 8
  %dec_codetab129 = getelementptr inbounds %struct.LZWDecodeState, ptr %115, i64 0, i32 9
  %116 = load ptr, ptr %dec_codetab129, align 8
  %117 = load ptr, ptr %free_entp, align 8
  %cmp130.not = icmp ugt ptr %116, %117
  br i1 %cmp130.not, label %cond.true142, label %land.rhs132

land.rhs132:                                      ; preds = %if.end124
  %118 = load ptr, ptr %free_entp, align 8
  %119 = load ptr, ptr %sp, align 8
  %dec_codetab133 = getelementptr inbounds %struct.LZWDecodeState, ptr %119, i64 0, i32 9
  %120 = load ptr, ptr %dec_codetab133, align 8
  %arrayidx134 = getelementptr inbounds %struct.code_ent, ptr %120, i64 5119
  %cmp135 = icmp ult ptr %118, %arrayidx134
  br i1 %cmp135, label %cond.end144, label %cond.true142

cond.true142:                                     ; preds = %if.end124, %land.rhs132
  call void @__assert_rtn(ptr noundef nonnull @__func__.LZWDecode, ptr noundef nonnull @.str, i32 noundef 398, ptr noundef nonnull @.str.7) #3
  unreachable

cond.end144:                                      ; preds = %land.rhs132
  %121 = load ptr, ptr %oldcodep, align 8
  %122 = load ptr, ptr %free_entp, align 8
  store ptr %121, ptr %122, align 8
  %firstchar = getelementptr inbounds %struct.code_ent, ptr %121, i64 0, i32 3
  %123 = load i8, ptr %firstchar, align 1
  %firstchar147 = getelementptr inbounds %struct.code_ent, ptr %122, i64 0, i32 3
  store i8 %123, ptr %firstchar147, align 1
  %length149 = getelementptr inbounds %struct.code_ent, ptr %121, i64 0, i32 1
  %124 = load i16, ptr %length149, align 8
  %add151 = add i16 %124, 1
  %125 = load ptr, ptr %free_entp, align 8
  %length153 = getelementptr inbounds %struct.code_ent, ptr %125, i64 0, i32 1
  store i16 %add151, ptr %length153, align 8
  %126 = load ptr, ptr %codep, align 8
  %cmp154 = icmp ult ptr %126, %125
  %127 = load ptr, ptr %codep, align 8
  %128 = load ptr, ptr %free_entp, align 8
  %.pn = select i1 %cmp154, ptr %127, ptr %128
  %cond.in.in = getelementptr inbounds %struct.code_ent, ptr %.pn, i64 0, i32 3
  %cond.in1 = load i8, ptr %cond.in.in, align 1
  %129 = load ptr, ptr %free_entp, align 8
  %value164 = getelementptr inbounds %struct.code_ent, ptr %129, i64 0, i32 2
  store i8 %cond.in1, ptr %value164, align 2
  %incdec.ptr165 = getelementptr inbounds %struct.code_ent, ptr %129, i64 1
  store ptr %incdec.ptr165, ptr %free_entp, align 8
  %130 = load ptr, ptr %maxcodep, align 8
  %cmp166 = icmp ugt ptr %incdec.ptr165, %130
  br i1 %cmp166, label %if.then168, label %if.end178

if.then168:                                       ; preds = %cond.end144
  %131 = load i64, ptr %nbits, align 8
  %inc = add nsw i64 %131, 1
  %cmp169 = icmp sgt i64 %131, 11
  %spec.select = select i1 %cmp169, i64 12, i64 %inc
  store i64 %spec.select, ptr %nbits, align 8
  %notmask = shl nsw i64 -1, %spec.select
  %sub174 = xor i64 %notmask, -1
  store i64 %sub174, ptr %nbitsmask, align 8
  %132 = load ptr, ptr %sp, align 8
  %dec_codetab175 = getelementptr inbounds %struct.LZWDecodeState, ptr %132, i64 0, i32 9
  %133 = load ptr, ptr %dec_codetab175, align 8
  %add.ptr176 = getelementptr inbounds %struct.code_ent, ptr %133, i64 %sub174
  %add.ptr177 = getelementptr inbounds %struct.code_ent, ptr %add.ptr176, i64 -1
  store ptr %add.ptr177, ptr %maxcodep, align 8
  br label %if.end178

if.end178:                                        ; preds = %if.then168, %cond.end144
  %134 = load ptr, ptr %codep, align 8
  store ptr %134, ptr %oldcodep, align 8
  %135 = load i16, ptr %code, align 2
  %cmp180 = icmp ugt i16 %135, 255
  br i1 %cmp180, label %if.then182, label %if.else245

if.then182:                                       ; preds = %if.end178
  %136 = load ptr, ptr %codep, align 8
  %length183 = getelementptr inbounds %struct.code_ent, ptr %136, i64 0, i32 1
  %137 = load i16, ptr %length183, align 8
  %conv184 = zext i16 %137 to i64
  %138 = load i64, ptr %occ, align 8
  %cmp185 = icmp slt i64 %138, %conv184
  br i1 %cmp185, label %if.then187, label %if.end219

if.then187:                                       ; preds = %if.then182
  %139 = load ptr, ptr %codep, align 8
  %140 = load ptr, ptr %sp, align 8
  %dec_codep188 = getelementptr inbounds %struct.LZWDecodeState, ptr %140, i64 0, i32 5
  store ptr %139, ptr %dec_codep188, align 8
  br label %do.body189

do.body189:                                       ; preds = %land.rhs193, %if.then187
  %141 = load ptr, ptr %codep, align 8
  %142 = load ptr, ptr %141, align 8
  store ptr %142, ptr %codep, align 8
  %143 = load ptr, ptr %codep, align 8
  %tobool192.not = icmp eq ptr %143, null
  br i1 %tobool192.not, label %do.end199, label %land.rhs193

land.rhs193:                                      ; preds = %do.body189
  %144 = load ptr, ptr %codep, align 8
  %length194 = getelementptr inbounds %struct.code_ent, ptr %144, i64 0, i32 1
  %145 = load i16, ptr %length194, align 8
  %conv195 = zext i16 %145 to i64
  %146 = load i64, ptr %occ, align 8
  %cmp196 = icmp slt i64 %146, %conv195
  br i1 %cmp196, label %do.body189, label %do.end199, !llvm.loop !12

do.end199:                                        ; preds = %do.body189, %land.rhs193
  %147 = load ptr, ptr %codep, align 8
  %tobool200.not = icmp eq ptr %147, null
  br i1 %tobool200.not, label %while.end, label %if.then201

if.then201:                                       ; preds = %do.end199
  %148 = load i64, ptr %occ, align 8
  %149 = load ptr, ptr %sp, align 8
  %dec_restart202 = getelementptr inbounds %struct.LZWDecodeState, ptr %149, i64 0, i32 2
  store i64 %148, ptr %dec_restart202, align 8
  %150 = load ptr, ptr %op, align 8
  %add.ptr203 = getelementptr inbounds i8, ptr %150, i64 %148
  store ptr %add.ptr203, ptr %tp, align 8
  br label %do.body204

do.body204:                                       ; preds = %do.body204, %if.then201
  %151 = load ptr, ptr %codep, align 8
  %value205 = getelementptr inbounds %struct.code_ent, ptr %151, i64 0, i32 2
  %152 = load i8, ptr %value205, align 2
  %153 = load ptr, ptr %tp, align 8
  %incdec.ptr206 = getelementptr inbounds i8, ptr %153, i64 -1
  store ptr %incdec.ptr206, ptr %tp, align 8
  store i8 %152, ptr %incdec.ptr206, align 1
  %154 = load ptr, ptr %codep, align 8
  %155 = load ptr, ptr %154, align 8
  store ptr %155, ptr %codep, align 8
  %156 = load i64, ptr %occ, align 8
  %dec209 = add nsw i64 %156, -1
  store i64 %dec209, ptr %occ, align 8
  %tobool210.not = icmp eq i64 %dec209, 0
  %157 = load ptr, ptr %codep, align 8
  %tobool212 = icmp ne ptr %157, null
  %158 = select i1 %tobool210.not, i1 false, i1 %tobool212
  br i1 %158, label %do.body204, label %do.end214, !llvm.loop !13

do.end214:                                        ; preds = %do.body204
  %159 = load ptr, ptr %codep, align 8
  %tobool215.not = icmp eq ptr %159, null
  br i1 %tobool215.not, label %while.end, label %if.then216

if.then216:                                       ; preds = %do.end214
  %160 = load ptr, ptr %tif.addr, align 8
  call void @codeLoop(ptr noundef %160)
  br label %while.end

if.end219:                                        ; preds = %if.then182
  %161 = load ptr, ptr %codep, align 8
  %length220 = getelementptr inbounds %struct.code_ent, ptr %161, i64 0, i32 1
  %162 = load i16, ptr %length220, align 8
  %conv221 = zext i16 %162 to i32
  store i32 %conv221, ptr %len, align 4
  %163 = load ptr, ptr %op, align 8
  %idx.ext222 = zext i16 %162 to i64
  %add.ptr223 = getelementptr inbounds i8, ptr %163, i64 %idx.ext222
  store ptr %add.ptr223, ptr %tp, align 8
  br label %do.body224

do.body224:                                       ; preds = %do.body224, %if.end219
  %164 = load ptr, ptr %tp, align 8
  %incdec.ptr226 = getelementptr inbounds i8, ptr %164, i64 -1
  store ptr %incdec.ptr226, ptr %tp, align 8
  %165 = load ptr, ptr %codep, align 8
  %value227 = getelementptr inbounds %struct.code_ent, ptr %165, i64 0, i32 2
  %166 = load i8, ptr %value227, align 2
  %167 = load ptr, ptr %165, align 8
  store ptr %167, ptr %codep, align 8
  store i8 %166, ptr %incdec.ptr226, align 1
  %168 = load ptr, ptr %codep, align 8
  %tobool232.not = icmp eq ptr %168, null
  %169 = load ptr, ptr %tp, align 8
  %170 = load ptr, ptr %op, align 8
  %cmp234 = icmp ugt ptr %169, %170
  %171 = select i1 %tobool232.not, i1 false, i1 %cmp234
  br i1 %171, label %do.body224, label %do.end237, !llvm.loop !14

do.end237:                                        ; preds = %do.body224
  %172 = load ptr, ptr %codep, align 8
  %tobool238.not = icmp eq ptr %172, null
  br i1 %tobool238.not, label %if.end240, label %if.then239

if.then239:                                       ; preds = %do.end237
  %173 = load ptr, ptr %tif.addr, align 8
  call void @codeLoop(ptr noundef %173)
  br label %while.end

if.end240:                                        ; preds = %do.end237
  %174 = load i32, ptr %len, align 4
  %175 = load ptr, ptr %op, align 8
  %idx.ext241 = sext i32 %174 to i64
  %add.ptr242 = getelementptr inbounds i8, ptr %175, i64 %idx.ext241
  store ptr %add.ptr242, ptr %op, align 8
  %conv243 = sext i32 %174 to i64
  %176 = load i64, ptr %occ, align 8
  %sub244 = sub nsw i64 %176, %conv243
  br label %if.end249

if.else245:                                       ; preds = %if.end178
  %177 = load i16, ptr %code, align 2
  %conv246 = trunc i16 %177 to i8
  %178 = load ptr, ptr %op, align 8
  %incdec.ptr247 = getelementptr inbounds i8, ptr %178, i64 1
  store ptr %incdec.ptr247, ptr %op, align 8
  store i8 %conv246, ptr %178, align 1
  %179 = load i64, ptr %occ, align 8
  %dec248 = add nsw i64 %179, -1
  br label %if.end249

if.end249:                                        ; preds = %if.else245, %if.end240
  %storemerge = phi i64 [ %dec248, %if.else245 ], [ %sub244, %if.end240 ]
  store i64 %storemerge, ptr %occ, align 8
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %do.end199, %if.then216, %do.end214, %if.end112, %if.end70, %if.then239, %while.cond
  %180 = load ptr, ptr %bp, align 8
  %181 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp250 = getelementptr inbounds %struct.tiff, ptr %181, i64 0, i32 42
  store ptr %180, ptr %tif_rawcp250, align 8
  %182 = load i64, ptr %nbits, align 8
  %conv251 = trunc i64 %182 to i16
  %183 = load ptr, ptr %sp, align 8
  %nbits253 = getelementptr inbounds %struct.LZWBaseState, ptr %183, i64 0, i32 1
  store i16 %conv251, ptr %nbits253, align 8
  %184 = load i64, ptr %nextdata, align 8
  %nextdata255 = getelementptr inbounds %struct.LZWBaseState, ptr %183, i64 0, i32 4
  store i64 %184, ptr %nextdata255, align 8
  %185 = load i64, ptr %nextbits, align 8
  %186 = load ptr, ptr %sp, align 8
  %nextbits257 = getelementptr inbounds %struct.LZWBaseState, ptr %186, i64 0, i32 5
  store i64 %185, ptr %nextbits257, align 8
  %187 = load i64, ptr %nbitsmask, align 8
  %dec_nbitsmask258 = getelementptr inbounds %struct.LZWDecodeState, ptr %186, i64 0, i32 1
  store i64 %187, ptr %dec_nbitsmask258, align 8
  %188 = load ptr, ptr %oldcodep, align 8
  %189 = load ptr, ptr %sp, align 8
  %dec_oldcodep259 = getelementptr inbounds %struct.LZWDecodeState, ptr %189, i64 0, i32 6
  store ptr %188, ptr %dec_oldcodep259, align 8
  %190 = load ptr, ptr %free_entp, align 8
  %dec_free_entp260 = getelementptr inbounds %struct.LZWDecodeState, ptr %189, i64 0, i32 7
  store ptr %190, ptr %dec_free_entp260, align 8
  %191 = load ptr, ptr %maxcodep, align 8
  %192 = load ptr, ptr %sp, align 8
  %dec_maxcodep261 = getelementptr inbounds %struct.LZWDecodeState, ptr %192, i64 0, i32 8
  store ptr %191, ptr %dec_maxcodep261, align 8
  %193 = load i64, ptr %occ, align 8
  %cmp262 = icmp sgt i64 %193, 0
  br i1 %cmp262, label %if.then264, label %if.end266

if.then264:                                       ; preds = %while.end
  %194 = load ptr, ptr %tif.addr, align 8
  %195 = load ptr, ptr %194, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %194, i64 0, i32 11
  %196 = load i32, ptr %tif_row, align 8
  %197 = load i64, ptr %occ, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %195, ptr noundef nonnull @.str.9, i32 noundef %196, i64 noundef %197) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end266:                                        ; preds = %while.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end266, %if.then264, %if.end
  %198 = load i32, ptr %retval, align 4
  ret i32 %198
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @_LZWtrue(ptr noundef %tif) #0 {
entry:
  ret i32 1
}

declare i32 @_TIFFNoPreCode(ptr noundef, i16 noundef zeroext) #2

declare i32 @_TIFFNoRowEncode(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) #2

declare i32 @_TIFFNoStripEncode(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) #2

declare i32 @_TIFFNoTileEncode(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: nounwind ssp uwtable
define internal void @LZWCleanup(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 2
  %2 = load i32, ptr %tif_mode, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then1, label %if.end7

if.then1:                                         ; preds = %if.then
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_data2 = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 37
  %4 = load ptr, ptr %tif_data2, align 8
  %dec_codetab = getelementptr inbounds %struct.LZWDecodeState, ptr %4, i64 0, i32 9
  %5 = load ptr, ptr %dec_codetab, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.then1
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_data5 = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 37
  %7 = load ptr, ptr %tif_data5, align 8
  %dec_codetab6 = getelementptr inbounds %struct.LZWDecodeState, ptr %7, i64 0, i32 9
  %8 = load ptr, ptr %dec_codetab6, align 8
  call void @_TIFFfree(ptr noundef %8) #4
  br label %if.end7

if.end7:                                          ; preds = %if.then1, %if.then4, %if.then
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_data8 = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 37
  %10 = load ptr, ptr %tif_data8, align 8
  call void @_TIFFfree(ptr noundef %10) #4
  %tif_data9 = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 37
  store ptr null, ptr %tif_data9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.end7, %entry
  ret void
}

declare i32 @TIFFPredictorInit(ptr noundef) #2

declare void @TIFFError(ptr noundef, ptr noundef, ...) #2

declare void @TIFFWarning(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @LZWDecodeCompat(ptr noundef %tif, ptr noundef %op0, i32 noundef %occ0, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %op = alloca ptr, align 8
  %occ = alloca i64, align 8
  %tp = alloca ptr, align 8
  %bp = alloca ptr, align 8
  %code = alloca i32, align 4
  %nbits = alloca i32, align 4
  %nextbits = alloca i64, align 8
  %nextdata = alloca i64, align 8
  %nbitsmask = alloca i64, align 8
  %codep = alloca ptr, align 8
  %free_entp = alloca ptr, align 8
  %maxcodep = alloca ptr, align 8
  %oldcodep = alloca ptr, align 8
  %residue = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  store ptr %op0, ptr %op, align 8
  %conv = sext i32 %occ0 to i64
  store i64 %conv, ptr %occ, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.LZWDecodeCompat, ptr noundef nonnull @.str, i32 noundef 504, ptr noundef nonnull @.str.3) #3
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load ptr, ptr %sp, align 8
  %dec_restart = getelementptr inbounds %struct.LZWDecodeState, ptr %1, i64 0, i32 2
  %2 = load i64, ptr %dec_restart, align 8
  %tobool3.not = icmp eq i64 %2, 0
  br i1 %tobool3.not, label %if.end29, label %if.then

if.then:                                          ; preds = %cond.end
  %3 = load ptr, ptr %sp, align 8
  %dec_codep = getelementptr inbounds %struct.LZWDecodeState, ptr %3, i64 0, i32 5
  %4 = load ptr, ptr %dec_codep, align 8
  store ptr %4, ptr %codep, align 8
  %length = getelementptr inbounds %struct.code_ent, ptr %4, i64 0, i32 1
  %5 = load i16, ptr %length, align 8
  %conv4 = zext i16 %5 to i64
  %6 = load ptr, ptr %sp, align 8
  %dec_restart5 = getelementptr inbounds %struct.LZWDecodeState, ptr %6, i64 0, i32 2
  %7 = load i64, ptr %dec_restart5, align 8
  %sub = sub nsw i64 %conv4, %7
  store i64 %sub, ptr %residue, align 8
  %8 = load i64, ptr %occ, align 8
  %cmp6 = icmp sgt i64 %sub, %8
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  %9 = load i64, ptr %occ, align 8
  %10 = load ptr, ptr %sp, align 8
  %dec_restart9 = getelementptr inbounds %struct.LZWDecodeState, ptr %10, i64 0, i32 2
  %11 = load i64, ptr %dec_restart9, align 8
  %add = add nsw i64 %11, %9
  store i64 %add, ptr %dec_restart9, align 8
  br label %do.body

do.body:                                          ; preds = %do.body, %if.then8
  %12 = load ptr, ptr %codep, align 8
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %codep, align 8
  %14 = load i64, ptr %residue, align 8
  %dec = add nsw i64 %14, -1
  store i64 %dec, ptr %residue, align 8
  %15 = load i64, ptr %occ, align 8
  %cmp10 = icmp sgt i64 %dec, %15
  br i1 %cmp10, label %do.body, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %do.body
  %16 = load ptr, ptr %op, align 8
  %17 = load i64, ptr %occ, align 8
  %add.ptr = getelementptr inbounds i8, ptr %16, i64 %17
  store ptr %add.ptr, ptr %tp, align 8
  br label %do.body12

do.body12:                                        ; preds = %do.body12, %do.end
  %18 = load ptr, ptr %codep, align 8
  %value = getelementptr inbounds %struct.code_ent, ptr %18, i64 0, i32 2
  %19 = load i8, ptr %value, align 2
  %20 = load ptr, ptr %tp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %20, i64 -1
  store ptr %incdec.ptr, ptr %tp, align 8
  store i8 %19, ptr %incdec.ptr, align 1
  %21 = load ptr, ptr %codep, align 8
  %22 = load ptr, ptr %21, align 8
  store ptr %22, ptr %codep, align 8
  %23 = load i64, ptr %occ, align 8
  %dec15 = add nsw i64 %23, -1
  store i64 %dec15, ptr %occ, align 8
  %tobool16.not = icmp eq i64 %dec15, 0
  br i1 %tobool16.not, label %do.end17, label %do.body12, !llvm.loop !16

do.end17:                                         ; preds = %do.body12
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %24 = load i64, ptr %residue, align 8
  %25 = load ptr, ptr %op, align 8
  %add.ptr18 = getelementptr inbounds i8, ptr %25, i64 %24
  store ptr %add.ptr18, ptr %op, align 8
  %26 = load i64, ptr %occ, align 8
  %sub19 = sub nsw i64 %26, %24
  store i64 %sub19, ptr %occ, align 8
  store ptr %add.ptr18, ptr %tp, align 8
  br label %do.body20

do.body20:                                        ; preds = %do.body20, %if.end
  %27 = load ptr, ptr %codep, align 8
  %value21 = getelementptr inbounds %struct.code_ent, ptr %27, i64 0, i32 2
  %28 = load i8, ptr %value21, align 2
  %29 = load ptr, ptr %tp, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %29, i64 -1
  store ptr %incdec.ptr22, ptr %tp, align 8
  store i8 %28, ptr %incdec.ptr22, align 1
  %30 = load ptr, ptr %codep, align 8
  %31 = load ptr, ptr %30, align 8
  store ptr %31, ptr %codep, align 8
  %32 = load i64, ptr %residue, align 8
  %dec25 = add nsw i64 %32, -1
  store i64 %dec25, ptr %residue, align 8
  %tobool26.not = icmp eq i64 %dec25, 0
  br i1 %tobool26.not, label %do.end27, label %do.body20, !llvm.loop !17

do.end27:                                         ; preds = %do.body20
  %33 = load ptr, ptr %sp, align 8
  %dec_restart28 = getelementptr inbounds %struct.LZWDecodeState, ptr %33, i64 0, i32 2
  store i64 0, ptr %dec_restart28, align 8
  br label %if.end29

if.end29:                                         ; preds = %do.end27, %cond.end
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 42
  %35 = load ptr, ptr %tif_rawcp, align 8
  store ptr %35, ptr %bp, align 8
  %36 = load ptr, ptr %sp, align 8
  %nbits30 = getelementptr inbounds %struct.LZWBaseState, ptr %36, i64 0, i32 1
  %37 = load i16, ptr %nbits30, align 8
  %conv31 = zext i16 %37 to i32
  store i32 %conv31, ptr %nbits, align 4
  %nextdata33 = getelementptr inbounds %struct.LZWBaseState, ptr %36, i64 0, i32 4
  %38 = load i64, ptr %nextdata33, align 8
  store i64 %38, ptr %nextdata, align 8
  %39 = load ptr, ptr %sp, align 8
  %nextbits35 = getelementptr inbounds %struct.LZWBaseState, ptr %39, i64 0, i32 5
  %40 = load i64, ptr %nextbits35, align 8
  store i64 %40, ptr %nextbits, align 8
  %dec_nbitsmask = getelementptr inbounds %struct.LZWDecodeState, ptr %39, i64 0, i32 1
  %41 = load i64, ptr %dec_nbitsmask, align 8
  store i64 %41, ptr %nbitsmask, align 8
  %42 = load ptr, ptr %sp, align 8
  %dec_oldcodep = getelementptr inbounds %struct.LZWDecodeState, ptr %42, i64 0, i32 6
  %43 = load ptr, ptr %dec_oldcodep, align 8
  store ptr %43, ptr %oldcodep, align 8
  %dec_free_entp = getelementptr inbounds %struct.LZWDecodeState, ptr %42, i64 0, i32 7
  %44 = load ptr, ptr %dec_free_entp, align 8
  store ptr %44, ptr %free_entp, align 8
  %45 = load ptr, ptr %sp, align 8
  %dec_maxcodep = getelementptr inbounds %struct.LZWDecodeState, ptr %45, i64 0, i32 8
  %46 = load ptr, ptr %dec_maxcodep, align 8
  store ptr %46, ptr %maxcodep, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end215, %if.end110, %if.end29
  %47 = load i64, ptr %occ, align 8
  %cmp36 = icmp sgt i64 %47, 0
  br i1 %cmp36, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %48 = load ptr, ptr %sp, align 8
  %dec_bitsleft = getelementptr inbounds %struct.LZWDecodeState, ptr %48, i64 0, i32 3
  %49 = load i64, ptr %dec_bitsleft, align 8
  %50 = load i32, ptr %nbits, align 4
  %conv38 = sext i32 %50 to i64
  %cmp39 = icmp slt i64 %49, %conv38
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %while.body
  %51 = load ptr, ptr %tif.addr, align 8
  %52 = load ptr, ptr %51, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %51, i64 0, i32 13
  %53 = load i32, ptr %tif_curstrip, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %52, ptr noundef nonnull @.str.6, i32 noundef %53) #4
  store i32 257, ptr %code, align 4
  br label %if.end62

if.else:                                          ; preds = %while.body
  %54 = load ptr, ptr %bp, align 8
  %incdec.ptr42 = getelementptr inbounds i8, ptr %54, i64 1
  store ptr %incdec.ptr42, ptr %bp, align 8
  %55 = load i8, ptr %54, align 1
  %conv43 = zext i8 %55 to i64
  %56 = load i64, ptr %nextbits, align 8
  %shl = shl i64 %conv43, %56
  %57 = load i64, ptr %nextdata, align 8
  %or = or i64 %57, %shl
  store i64 %or, ptr %nextdata, align 8
  %add44 = add nsw i64 %56, 8
  store i64 %add44, ptr %nextbits, align 8
  %58 = load i32, ptr %nbits, align 4
  %conv45 = sext i32 %58 to i64
  %cmp46 = icmp slt i64 %add44, %conv45
  br i1 %cmp46, label %if.then48, label %if.end54

if.then48:                                        ; preds = %if.else
  %59 = load ptr, ptr %bp, align 8
  %incdec.ptr49 = getelementptr inbounds i8, ptr %59, i64 1
  store ptr %incdec.ptr49, ptr %bp, align 8
  %60 = load i8, ptr %59, align 1
  %conv50 = zext i8 %60 to i64
  %61 = load i64, ptr %nextbits, align 8
  %shl51 = shl i64 %conv50, %61
  %62 = load i64, ptr %nextdata, align 8
  %or52 = or i64 %62, %shl51
  store i64 %or52, ptr %nextdata, align 8
  %add53 = add nsw i64 %61, 8
  store i64 %add53, ptr %nextbits, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %if.else
  %63 = load i64, ptr %nextdata, align 8
  %64 = load i64, ptr %nbitsmask, align 8
  %and = and i64 %63, %64
  %conv55 = trunc i64 %and to i32
  %conv56 = and i32 %conv55, 65535
  store i32 %conv56, ptr %code, align 4
  %65 = load i32, ptr %nbits, align 4
  %66 = load i64, ptr %nextdata, align 8
  %sh_prom = zext i32 %65 to i64
  %shr = ashr i64 %66, %sh_prom
  store i64 %shr, ptr %nextdata, align 8
  %conv57 = sext i32 %65 to i64
  %67 = load i64, ptr %nextbits, align 8
  %sub58 = sub nsw i64 %67, %conv57
  store i64 %sub58, ptr %nextbits, align 8
  %68 = load i32, ptr %nbits, align 4
  %conv59 = sext i32 %68 to i64
  %69 = load ptr, ptr %sp, align 8
  %dec_bitsleft60 = getelementptr inbounds %struct.LZWDecodeState, ptr %69, i64 0, i32 3
  %70 = load i64, ptr %dec_bitsleft60, align 8
  %sub61 = sub nsw i64 %70, %conv59
  store i64 %sub61, ptr %dec_bitsleft60, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.end54, %if.then41
  %71 = load i32, ptr %code, align 4
  %cmp63 = icmp eq i32 %71, 257
  br i1 %cmp63, label %while.end, label %if.end66

if.end66:                                         ; preds = %if.end62
  %72 = load i32, ptr %code, align 4
  %cmp67 = icmp eq i32 %72, 256
  br i1 %cmp67, label %if.then69, label %if.end116

if.then69:                                        ; preds = %if.end66
  %73 = load ptr, ptr %sp, align 8
  %dec_codetab = getelementptr inbounds %struct.LZWDecodeState, ptr %73, i64 0, i32 9
  %74 = load ptr, ptr %dec_codetab, align 8
  %add.ptr70 = getelementptr inbounds %struct.code_ent, ptr %74, i64 258
  store ptr %add.ptr70, ptr %free_entp, align 8
  store i32 9, ptr %nbits, align 4
  store i64 511, ptr %nbitsmask, align 8
  %75 = load ptr, ptr %sp, align 8
  %dec_codetab71 = getelementptr inbounds %struct.LZWDecodeState, ptr %75, i64 0, i32 9
  %76 = load ptr, ptr %dec_codetab71, align 8
  %add.ptr72 = getelementptr inbounds %struct.code_ent, ptr %76, i64 511
  store ptr %add.ptr72, ptr %maxcodep, align 8
  %dec_bitsleft73 = getelementptr inbounds %struct.LZWDecodeState, ptr %75, i64 0, i32 3
  %77 = load i64, ptr %dec_bitsleft73, align 8
  %78 = load i32, ptr %nbits, align 4
  %conv74 = sext i32 %78 to i64
  %cmp75 = icmp slt i64 %77, %conv74
  br i1 %cmp75, label %if.then77, label %if.else80

if.then77:                                        ; preds = %if.then69
  %79 = load ptr, ptr %tif.addr, align 8
  %80 = load ptr, ptr %79, align 8
  %tif_curstrip79 = getelementptr inbounds %struct.tiff, ptr %79, i64 0, i32 13
  %81 = load i32, ptr %tif_curstrip79, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %80, ptr noundef nonnull @.str.6, i32 noundef %81) #4
  store i32 257, ptr %code, align 4
  br label %if.end106

if.else80:                                        ; preds = %if.then69
  %82 = load ptr, ptr %bp, align 8
  %incdec.ptr81 = getelementptr inbounds i8, ptr %82, i64 1
  store ptr %incdec.ptr81, ptr %bp, align 8
  %83 = load i8, ptr %82, align 1
  %conv82 = zext i8 %83 to i64
  %84 = load i64, ptr %nextbits, align 8
  %shl83 = shl i64 %conv82, %84
  %85 = load i64, ptr %nextdata, align 8
  %or84 = or i64 %85, %shl83
  store i64 %or84, ptr %nextdata, align 8
  %add85 = add nsw i64 %84, 8
  store i64 %add85, ptr %nextbits, align 8
  %86 = load i32, ptr %nbits, align 4
  %conv86 = sext i32 %86 to i64
  %cmp87 = icmp slt i64 %add85, %conv86
  br i1 %cmp87, label %if.then89, label %if.end95

if.then89:                                        ; preds = %if.else80
  %87 = load ptr, ptr %bp, align 8
  %incdec.ptr90 = getelementptr inbounds i8, ptr %87, i64 1
  store ptr %incdec.ptr90, ptr %bp, align 8
  %88 = load i8, ptr %87, align 1
  %conv91 = zext i8 %88 to i64
  %89 = load i64, ptr %nextbits, align 8
  %shl92 = shl i64 %conv91, %89
  %90 = load i64, ptr %nextdata, align 8
  %or93 = or i64 %90, %shl92
  store i64 %or93, ptr %nextdata, align 8
  %add94 = add nsw i64 %89, 8
  store i64 %add94, ptr %nextbits, align 8
  br label %if.end95

if.end95:                                         ; preds = %if.then89, %if.else80
  %91 = load i64, ptr %nextdata, align 8
  %92 = load i64, ptr %nbitsmask, align 8
  %and96 = and i64 %91, %92
  %conv97 = trunc i64 %and96 to i32
  %conv98 = and i32 %conv97, 65535
  store i32 %conv98, ptr %code, align 4
  %93 = load i32, ptr %nbits, align 4
  %94 = load i64, ptr %nextdata, align 8
  %sh_prom99 = zext i32 %93 to i64
  %shr100 = ashr i64 %94, %sh_prom99
  store i64 %shr100, ptr %nextdata, align 8
  %conv101 = sext i32 %93 to i64
  %95 = load i64, ptr %nextbits, align 8
  %sub102 = sub nsw i64 %95, %conv101
  store i64 %sub102, ptr %nextbits, align 8
  %96 = load i32, ptr %nbits, align 4
  %conv103 = sext i32 %96 to i64
  %97 = load ptr, ptr %sp, align 8
  %dec_bitsleft104 = getelementptr inbounds %struct.LZWDecodeState, ptr %97, i64 0, i32 3
  %98 = load i64, ptr %dec_bitsleft104, align 8
  %sub105 = sub nsw i64 %98, %conv103
  store i64 %sub105, ptr %dec_bitsleft104, align 8
  br label %if.end106

if.end106:                                        ; preds = %if.end95, %if.then77
  %99 = load i32, ptr %code, align 4
  %cmp107 = icmp eq i32 %99, 257
  br i1 %cmp107, label %while.end, label %if.end110

if.end110:                                        ; preds = %if.end106
  %100 = load i32, ptr %code, align 4
  %conv111 = trunc i32 %100 to i8
  %101 = load ptr, ptr %op, align 8
  %incdec.ptr112 = getelementptr inbounds i8, ptr %101, i64 1
  store ptr %incdec.ptr112, ptr %op, align 8
  store i8 %conv111, ptr %101, align 1
  %102 = load i64, ptr %occ, align 8
  %dec113 = add nsw i64 %102, -1
  store i64 %dec113, ptr %occ, align 8
  %103 = load ptr, ptr %sp, align 8
  %dec_codetab114 = getelementptr inbounds %struct.LZWDecodeState, ptr %103, i64 0, i32 9
  %104 = load ptr, ptr %dec_codetab114, align 8
  %105 = load i32, ptr %code, align 4
  %idx.ext = sext i32 %105 to i64
  %add.ptr115 = getelementptr inbounds %struct.code_ent, ptr %104, i64 %idx.ext
  store ptr %add.ptr115, ptr %oldcodep, align 8
  br label %while.cond, !llvm.loop !18

if.end116:                                        ; preds = %if.end66
  %106 = load ptr, ptr %sp, align 8
  %dec_codetab117 = getelementptr inbounds %struct.LZWDecodeState, ptr %106, i64 0, i32 9
  %107 = load ptr, ptr %dec_codetab117, align 8
  %108 = load i32, ptr %code, align 4
  %idx.ext118 = sext i32 %108 to i64
  %add.ptr119 = getelementptr inbounds %struct.code_ent, ptr %107, i64 %idx.ext118
  store ptr %add.ptr119, ptr %codep, align 8
  %109 = load ptr, ptr %sp, align 8
  %dec_codetab120 = getelementptr inbounds %struct.LZWDecodeState, ptr %109, i64 0, i32 9
  %110 = load ptr, ptr %dec_codetab120, align 8
  %111 = load ptr, ptr %free_entp, align 8
  %cmp121.not = icmp ugt ptr %110, %111
  br i1 %cmp121.not, label %cond.true131, label %land.rhs

land.rhs:                                         ; preds = %if.end116
  %112 = load ptr, ptr %free_entp, align 8
  %113 = load ptr, ptr %sp, align 8
  %dec_codetab123 = getelementptr inbounds %struct.LZWDecodeState, ptr %113, i64 0, i32 9
  %114 = load ptr, ptr %dec_codetab123, align 8
  %arrayidx124 = getelementptr inbounds %struct.code_ent, ptr %114, i64 5119
  %cmp125 = icmp ult ptr %112, %arrayidx124
  br i1 %cmp125, label %cond.end133, label %cond.true131

cond.true131:                                     ; preds = %if.end116, %land.rhs
  call void @__assert_rtn(ptr noundef nonnull @__func__.LZWDecodeCompat, ptr noundef nonnull @.str, i32 noundef 573, ptr noundef nonnull @.str.7) #3
  unreachable

cond.end133:                                      ; preds = %land.rhs
  %115 = load ptr, ptr %oldcodep, align 8
  %116 = load ptr, ptr %free_entp, align 8
  store ptr %115, ptr %116, align 8
  %firstchar = getelementptr inbounds %struct.code_ent, ptr %115, i64 0, i32 3
  %117 = load i8, ptr %firstchar, align 1
  %firstchar136 = getelementptr inbounds %struct.code_ent, ptr %116, i64 0, i32 3
  store i8 %117, ptr %firstchar136, align 1
  %length138 = getelementptr inbounds %struct.code_ent, ptr %115, i64 0, i32 1
  %118 = load i16, ptr %length138, align 8
  %add140 = add i16 %118, 1
  %119 = load ptr, ptr %free_entp, align 8
  %length142 = getelementptr inbounds %struct.code_ent, ptr %119, i64 0, i32 1
  store i16 %add140, ptr %length142, align 8
  %120 = load ptr, ptr %codep, align 8
  %cmp143 = icmp ult ptr %120, %119
  %121 = load ptr, ptr %codep, align 8
  %122 = load ptr, ptr %free_entp, align 8
  %.pn = select i1 %cmp143, ptr %121, ptr %122
  %cond.in.in = getelementptr inbounds %struct.code_ent, ptr %.pn, i64 0, i32 3
  %cond.in1 = load i8, ptr %cond.in.in, align 1
  %123 = load ptr, ptr %free_entp, align 8
  %value153 = getelementptr inbounds %struct.code_ent, ptr %123, i64 0, i32 2
  store i8 %cond.in1, ptr %value153, align 2
  %incdec.ptr154 = getelementptr inbounds %struct.code_ent, ptr %123, i64 1
  store ptr %incdec.ptr154, ptr %free_entp, align 8
  %124 = load ptr, ptr %maxcodep, align 8
  %cmp155 = icmp ugt ptr %incdec.ptr154, %124
  br i1 %cmp155, label %if.then157, label %if.end167

if.then157:                                       ; preds = %cond.end133
  %125 = load i32, ptr %nbits, align 4
  %inc = add nsw i32 %125, 1
  %cmp158 = icmp sgt i32 %125, 11
  %spec.select = select i1 %cmp158, i32 12, i32 %inc
  store i32 %spec.select, ptr %nbits, align 4
  %sh_prom162 = zext i32 %spec.select to i64
  %notmask = shl nsw i64 -1, %sh_prom162
  %sub164 = xor i64 %notmask, -1
  store i64 %sub164, ptr %nbitsmask, align 8
  %126 = load ptr, ptr %sp, align 8
  %dec_codetab165 = getelementptr inbounds %struct.LZWDecodeState, ptr %126, i64 0, i32 9
  %127 = load ptr, ptr %dec_codetab165, align 8
  %add.ptr166 = getelementptr inbounds %struct.code_ent, ptr %127, i64 %sub164
  store ptr %add.ptr166, ptr %maxcodep, align 8
  br label %if.end167

if.end167:                                        ; preds = %if.then157, %cond.end133
  %128 = load ptr, ptr %codep, align 8
  store ptr %128, ptr %oldcodep, align 8
  %129 = load i32, ptr %code, align 4
  %cmp168 = icmp sgt i32 %129, 255
  br i1 %cmp168, label %if.then170, label %if.else211

if.then170:                                       ; preds = %if.end167
  %130 = load ptr, ptr %codep, align 8
  %length171 = getelementptr inbounds %struct.code_ent, ptr %130, i64 0, i32 1
  %131 = load i16, ptr %length171, align 8
  %conv172 = zext i16 %131 to i64
  %132 = load i64, ptr %occ, align 8
  %cmp173 = icmp slt i64 %132, %conv172
  br i1 %cmp173, label %if.then175, label %if.end195

if.then175:                                       ; preds = %if.then170
  %133 = load ptr, ptr %codep, align 8
  %134 = load ptr, ptr %sp, align 8
  %dec_codep176 = getelementptr inbounds %struct.LZWDecodeState, ptr %134, i64 0, i32 5
  store ptr %133, ptr %dec_codep176, align 8
  br label %do.body177

do.body177:                                       ; preds = %do.body177, %if.then175
  %135 = load ptr, ptr %codep, align 8
  %136 = load ptr, ptr %135, align 8
  store ptr %136, ptr %codep, align 8
  %137 = load ptr, ptr %codep, align 8
  %length180 = getelementptr inbounds %struct.code_ent, ptr %137, i64 0, i32 1
  %138 = load i16, ptr %length180, align 8
  %conv181 = zext i16 %138 to i64
  %139 = load i64, ptr %occ, align 8
  %cmp182 = icmp slt i64 %139, %conv181
  br i1 %cmp182, label %do.body177, label %do.end184, !llvm.loop !19

do.end184:                                        ; preds = %do.body177
  %140 = load i64, ptr %occ, align 8
  %141 = load ptr, ptr %sp, align 8
  %dec_restart185 = getelementptr inbounds %struct.LZWDecodeState, ptr %141, i64 0, i32 2
  store i64 %140, ptr %dec_restart185, align 8
  %142 = load ptr, ptr %op, align 8
  %add.ptr186 = getelementptr inbounds i8, ptr %142, i64 %140
  store ptr %add.ptr186, ptr %tp, align 8
  br label %do.body187

do.body187:                                       ; preds = %do.body187, %do.end184
  %143 = load ptr, ptr %codep, align 8
  %value188 = getelementptr inbounds %struct.code_ent, ptr %143, i64 0, i32 2
  %144 = load i8, ptr %value188, align 2
  %145 = load ptr, ptr %tp, align 8
  %incdec.ptr189 = getelementptr inbounds i8, ptr %145, i64 -1
  store ptr %incdec.ptr189, ptr %tp, align 8
  store i8 %144, ptr %incdec.ptr189, align 1
  %146 = load ptr, ptr %codep, align 8
  %147 = load ptr, ptr %146, align 8
  store ptr %147, ptr %codep, align 8
  %148 = load i64, ptr %occ, align 8
  %dec192 = add nsw i64 %148, -1
  store i64 %dec192, ptr %occ, align 8
  %tobool193.not = icmp eq i64 %dec192, 0
  br i1 %tobool193.not, label %while.end, label %do.body187, !llvm.loop !20

if.end195:                                        ; preds = %if.then170
  %149 = load ptr, ptr %codep, align 8
  %length196 = getelementptr inbounds %struct.code_ent, ptr %149, i64 0, i32 1
  %150 = load i16, ptr %length196, align 8
  %151 = load ptr, ptr %op, align 8
  %idx.ext198 = zext i16 %150 to i64
  %add.ptr199 = getelementptr inbounds i8, ptr %151, i64 %idx.ext198
  store ptr %add.ptr199, ptr %op, align 8
  %152 = load ptr, ptr %codep, align 8
  %length200 = getelementptr inbounds %struct.code_ent, ptr %152, i64 0, i32 1
  %153 = load i16, ptr %length200, align 8
  %conv201 = zext i16 %153 to i64
  %154 = load i64, ptr %occ, align 8
  %sub202 = sub nsw i64 %154, %conv201
  store i64 %sub202, ptr %occ, align 8
  %155 = load ptr, ptr %op, align 8
  store ptr %155, ptr %tp, align 8
  br label %do.body203

do.body203:                                       ; preds = %do.body203, %if.end195
  %156 = load ptr, ptr %codep, align 8
  %value204 = getelementptr inbounds %struct.code_ent, ptr %156, i64 0, i32 2
  %157 = load i8, ptr %value204, align 2
  %158 = load ptr, ptr %tp, align 8
  %incdec.ptr205 = getelementptr inbounds i8, ptr %158, i64 -1
  store ptr %incdec.ptr205, ptr %tp, align 8
  store i8 %157, ptr %incdec.ptr205, align 1
  %159 = load ptr, ptr %codep, align 8
  %160 = load ptr, ptr %159, align 8
  store ptr %160, ptr %codep, align 8
  %cmp208.not = icmp eq ptr %160, null
  br i1 %cmp208.not, label %if.end215, label %do.body203, !llvm.loop !21

if.else211:                                       ; preds = %if.end167
  %161 = load i32, ptr %code, align 4
  %conv212 = trunc i32 %161 to i8
  %162 = load ptr, ptr %op, align 8
  %incdec.ptr213 = getelementptr inbounds i8, ptr %162, i64 1
  store ptr %incdec.ptr213, ptr %op, align 8
  store i8 %conv212, ptr %162, align 1
  %163 = load i64, ptr %occ, align 8
  %dec214 = add nsw i64 %163, -1
  store i64 %dec214, ptr %occ, align 8
  br label %if.end215

if.end215:                                        ; preds = %do.body203, %if.else211
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %do.body187, %if.end106, %if.end62, %while.cond
  %164 = load ptr, ptr %bp, align 8
  %165 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp216 = getelementptr inbounds %struct.tiff, ptr %165, i64 0, i32 42
  store ptr %164, ptr %tif_rawcp216, align 8
  %166 = load i32, ptr %nbits, align 4
  %conv217 = trunc i32 %166 to i16
  %167 = load ptr, ptr %sp, align 8
  %nbits219 = getelementptr inbounds %struct.LZWBaseState, ptr %167, i64 0, i32 1
  store i16 %conv217, ptr %nbits219, align 8
  %168 = load i64, ptr %nextdata, align 8
  %nextdata221 = getelementptr inbounds %struct.LZWBaseState, ptr %167, i64 0, i32 4
  store i64 %168, ptr %nextdata221, align 8
  %169 = load i64, ptr %nextbits, align 8
  %170 = load ptr, ptr %sp, align 8
  %nextbits223 = getelementptr inbounds %struct.LZWBaseState, ptr %170, i64 0, i32 5
  store i64 %169, ptr %nextbits223, align 8
  %171 = load i64, ptr %nbitsmask, align 8
  %dec_nbitsmask224 = getelementptr inbounds %struct.LZWDecodeState, ptr %170, i64 0, i32 1
  store i64 %171, ptr %dec_nbitsmask224, align 8
  %172 = load ptr, ptr %oldcodep, align 8
  %173 = load ptr, ptr %sp, align 8
  %dec_oldcodep225 = getelementptr inbounds %struct.LZWDecodeState, ptr %173, i64 0, i32 6
  store ptr %172, ptr %dec_oldcodep225, align 8
  %174 = load ptr, ptr %free_entp, align 8
  %dec_free_entp226 = getelementptr inbounds %struct.LZWDecodeState, ptr %173, i64 0, i32 7
  store ptr %174, ptr %dec_free_entp226, align 8
  %175 = load ptr, ptr %maxcodep, align 8
  %176 = load ptr, ptr %sp, align 8
  %dec_maxcodep227 = getelementptr inbounds %struct.LZWDecodeState, ptr %176, i64 0, i32 8
  store ptr %175, ptr %dec_maxcodep227, align 8
  %177 = load i64, ptr %occ, align 8
  %cmp228 = icmp sgt i64 %177, 0
  br i1 %cmp228, label %if.then230, label %if.end232

if.then230:                                       ; preds = %while.end
  %178 = load ptr, ptr %tif.addr, align 8
  %179 = load ptr, ptr %178, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %178, i64 0, i32 11
  %180 = load i32, ptr %tif_row, align 8
  %181 = load i64, ptr %occ, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %179, ptr noundef nonnull @.str.8, i32 noundef %180, i64 noundef %181) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end232:                                        ; preds = %while.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end232, %if.then230, %do.end17
  %182 = load i32, ptr %retval, align 4
  ret i32 %182
}

declare void @_TIFFmemset(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @codeLoop(ptr noundef %tif) #0 {
entry:
  %0 = load ptr, ptr %tif, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 11
  %1 = load i32, ptr %tif_row, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %1) #4
  ret void
}

declare void @_TIFFfree(ptr noundef) #2

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { cold noreturn nounwind }
attributes #4 = { nounwind }

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
