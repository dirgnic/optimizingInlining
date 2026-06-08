; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_loop_averse/source_snapshot_public_repos_mibench_consumer_tiff-v3.5.4_libtiff_tif_lzw.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_lzw.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i64, i64, i64, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i64, i16, i64, i64, i64, i16, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, ptr, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i64, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i64, ptr, i64, ptr, i64, ptr, i64, i64, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i64 }
%struct.LZWDecodeState = type { %struct.LZWBaseState, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.LZWBaseState = type { %struct.TIFFPredictorState, i16, i16, i16, i64, i64 }
%struct.TIFFPredictorState = type { i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
  call void @__assert_rtn(ptr noundef nonnull @__func__.TIFFInitLZW, ptr noundef nonnull @.str, i32 noundef 664, ptr noundef nonnull @.str.1) #4
  unreachable

cond.end:                                         ; preds = %entry
  %call = call ptr @_TIFFmalloc(i64 noundef 184) #5
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
  %call10 = call i32 @TIFFPredictorInit(ptr noundef %10) #5
  br label %return

bad:                                              ; preds = %cond.end
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @__func__.TIFFInitLZW, ptr noundef nonnull @.str.2) #5
  br label %return

return:                                           ; preds = %bad, %if.end9
  %storemerge = phi i32 [ 1, %if.end9 ], [ 0, %bad ]
  ret i32 %storemerge
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare ptr @_TIFFmalloc(i64 noundef) #2

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
  call void @__assert_rtn(ptr noundef nonnull @__func__.LZWSetupDecode, ptr noundef nonnull @.str, i32 noundef 197, ptr noundef nonnull @.str.3) #4
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load ptr, ptr %sp, align 8
  %dec_codetab = getelementptr inbounds %struct.LZWDecodeState, ptr %1, i64 0, i32 9
  %2 = load ptr, ptr %dec_codetab, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %return

if.then:                                          ; preds = %cond.end
  %call = call ptr @_TIFFmalloc(i64 noundef 81904) #5
  %3 = load ptr, ptr %sp, align 8
  %dec_codetab3 = getelementptr inbounds %struct.LZWDecodeState, ptr %3, i64 0, i32 9
  store ptr %call, ptr %dec_codetab3, align 8
  %cmp5 = icmp eq ptr %call, null
  br i1 %cmp5, label %if.then7, label %for.cond

if.then7:                                         ; preds = %if.then
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @LZWSetupDecode.module, ptr noundef nonnull @.str.4) #5
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
  call void @__assert_rtn(ptr noundef nonnull @__func__.LZWPreDecode, ptr noundef nonnull @.str, i32 noundef 226, ptr noundef nonnull @.str.3) #4
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
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %11, ptr noundef nonnull @.str.5) #5
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 26
  store ptr @LZWDecodeCompat, ptr %tif_decoderow, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 28
  store ptr @LZWDecodeCompat, ptr %tif_decodestrip, align 8
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %12, i64 0, i32 30
  store ptr @LZWDecodeCompat, ptr %tif_decodetile, align 8
  %tif_setupdecode = getelementptr inbounds %struct.tiff, ptr %12, i64 0, i32 21
  %13 = load ptr, ptr %tif_setupdecode, align 8
  %call = call i32 %13(ptr noundef %12) #5
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
  %20 = load i64, ptr %tif_rawcc, align 8
  %shl = shl i64 %20, 3
  %21 = load ptr, ptr %sp, align 8
  %dec_bitsleft = getelementptr inbounds %struct.LZWDecodeState, ptr %21, i64 0, i32 3
  store i64 %shl, ptr %dec_bitsleft, align 8
  %dec_codetab = getelementptr inbounds %struct.LZWDecodeState, ptr %21, i64 0, i32 9
  %22 = load ptr, ptr %dec_codetab, align 8
  %add.ptr = getelementptr inbounds %struct.code_ent, ptr %22, i64 258
  %dec_free_entp = getelementptr inbounds %struct.LZWDecodeState, ptr %21, i64 0, i32 7
  store ptr %add.ptr, ptr %dec_free_entp, align 8
  %23 = load ptr, ptr %sp, align 8
  %dec_free_entp18 = getelementptr inbounds %struct.LZWDecodeState, ptr %23, i64 0, i32 7
  %24 = load ptr, ptr %dec_free_entp18, align 8
  call void @_TIFFmemset(ptr noundef %24, i32 noundef 0, i64 noundef 77776) #5
  %dec_codetab19 = getelementptr inbounds %struct.LZWDecodeState, ptr %23, i64 0, i32 9
  %25 = load ptr, ptr %dec_codetab19, align 8
  %arrayidx20 = getelementptr inbounds %struct.code_ent, ptr %25, i64 -1
  %26 = load ptr, ptr %sp, align 8
  %dec_oldcodep = getelementptr inbounds %struct.LZWDecodeState, ptr %26, i64 0, i32 6
  store ptr %arrayidx20, ptr %dec_oldcodep, align 8
  %dec_codetab21 = getelementptr inbounds %struct.LZWDecodeState, ptr %26, i64 0, i32 9
  %27 = load ptr, ptr %dec_codetab21, align 8
  %dec_nbitsmask22 = getelementptr inbounds %struct.LZWDecodeState, ptr %26, i64 0, i32 1
  %28 = load i64, ptr %dec_nbitsmask22, align 8
  %sub = add nsw i64 %28, -1
  %arrayidx23 = getelementptr inbounds %struct.code_ent, ptr %27, i64 %sub
  %29 = load ptr, ptr %sp, align 8
  %dec_maxcodep = getelementptr inbounds %struct.LZWDecodeState, ptr %29, i64 0, i32 8
  store ptr %arrayidx23, ptr %dec_maxcodep, align 8
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LZWDecode(ptr noundef %tif, ptr noundef %op0, i64 noundef %occ0, i16 noundef zeroext %s) #0 {
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
  store i64 %occ0, ptr %occ, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.LZWDecode, ptr noundef nonnull @.str, i32 noundef 325, ptr noundef nonnull @.str.3) #4
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load ptr, ptr %sp, align 8
  %dec_restart = getelementptr inbounds %struct.LZWDecodeState, ptr %1, i64 0, i32 2
  %2 = load i64, ptr %dec_restart, align 8
  %tobool1.not = icmp eq i64 %2, 0
  br i1 %tobool1.not, label %if.end39, label %if.then

if.then:                                          ; preds = %cond.end
  %3 = load ptr, ptr %sp, align 8
  %dec_codep = getelementptr inbounds %struct.LZWDecodeState, ptr %3, i64 0, i32 5
  %4 = load ptr, ptr %dec_codep, align 8
  store ptr %4, ptr %codep, align 8
  %length = getelementptr inbounds %struct.code_ent, ptr %4, i64 0, i32 1
  %5 = load i16, ptr %length, align 8
  %conv2 = zext i16 %5 to i64
  %6 = load ptr, ptr %sp, align 8
  %dec_restart3 = getelementptr inbounds %struct.LZWDecodeState, ptr %6, i64 0, i32 2
  %7 = load i64, ptr %dec_restart3, align 8
  %sub = sub nsw i64 %conv2, %7
  store i64 %sub, ptr %residue, align 8
  %8 = load i64, ptr %occ, align 8
  %cmp4 = icmp sgt i64 %sub, %8
  br i1 %cmp4, label %if.then6, label %if.end22

if.then6:                                         ; preds = %if.then
  %9 = load i64, ptr %occ, align 8
  %10 = load ptr, ptr %sp, align 8
  %dec_restart7 = getelementptr inbounds %struct.LZWDecodeState, ptr %10, i64 0, i32 2
  %11 = load i64, ptr %dec_restart7, align 8
  %add = add nsw i64 %11, %9
  store i64 %add, ptr %dec_restart7, align 8
  br label %do.body

do.body:                                          ; preds = %do.body, %if.then6
  %12 = load ptr, ptr %codep, align 8
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %codep, align 8
  %14 = load i64, ptr %residue, align 8
  %dec = add nsw i64 %14, -1
  store i64 %dec, ptr %residue, align 8
  %15 = load i64, ptr %occ, align 8
  %cmp8 = icmp sgt i64 %dec, %15
  %16 = load ptr, ptr %codep, align 8
  %tobool10 = icmp ne ptr %16, null
  %17 = select i1 %cmp8, i1 %tobool10, i1 false
  br i1 %17, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.body
  %18 = load ptr, ptr %codep, align 8
  %tobool11.not = icmp eq ptr %18, null
  br i1 %tobool11.not, label %if.end, label %if.then12

if.then12:                                        ; preds = %do.end
  %19 = load ptr, ptr %op, align 8
  %20 = load i64, ptr %occ, align 8
  %add.ptr = getelementptr inbounds i8, ptr %19, i64 %20
  store ptr %add.ptr, ptr %tp, align 8
  br label %do.body13

do.body13:                                        ; preds = %do.body13, %if.then12
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
  %dec16 = add nsw i64 %26, -1
  store i64 %dec16, ptr %occ, align 8
  %tobool17.not = icmp eq i64 %dec16, 0
  %27 = load ptr, ptr %codep, align 8
  %tobool19 = icmp ne ptr %27, null
  %28 = select i1 %tobool17.not, i1 false, i1 %tobool19
  br i1 %28, label %do.body13, label %if.end, !llvm.loop !9

if.end:                                           ; preds = %do.body13, %do.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.then
  %29 = load i64, ptr %residue, align 8
  %30 = load ptr, ptr %op, align 8
  %add.ptr23 = getelementptr inbounds i8, ptr %30, i64 %29
  store ptr %add.ptr23, ptr %op, align 8
  %31 = load i64, ptr %occ, align 8
  %sub24 = sub nsw i64 %31, %29
  store i64 %sub24, ptr %occ, align 8
  store ptr %add.ptr23, ptr %tp, align 8
  br label %do.body25

do.body25:                                        ; preds = %do.body25, %if.end22
  %32 = load ptr, ptr %tp, align 8
  %incdec.ptr26 = getelementptr inbounds i8, ptr %32, i64 -1
  store ptr %incdec.ptr26, ptr %tp, align 8
  %33 = load ptr, ptr %codep, align 8
  %value27 = getelementptr inbounds %struct.code_ent, ptr %33, i64 0, i32 2
  %34 = load i8, ptr %value27, align 2
  %35 = load ptr, ptr %33, align 8
  store ptr %35, ptr %codep, align 8
  store i8 %34, ptr %incdec.ptr26, align 1
  %36 = load i64, ptr %residue, align 8
  %dec32 = add nsw i64 %36, -1
  store i64 %dec32, ptr %residue, align 8
  %tobool33.not = icmp eq i64 %dec32, 0
  %37 = load ptr, ptr %codep, align 8
  %tobool35 = icmp ne ptr %37, null
  %38 = select i1 %tobool33.not, i1 false, i1 %tobool35
  br i1 %38, label %do.body25, label %do.end37, !llvm.loop !10

do.end37:                                         ; preds = %do.body25
  %39 = load ptr, ptr %sp, align 8
  %dec_restart38 = getelementptr inbounds %struct.LZWDecodeState, ptr %39, i64 0, i32 2
  store i64 0, ptr %dec_restart38, align 8
  br label %if.end39

if.end39:                                         ; preds = %do.end37, %cond.end
  %40 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %40, i64 0, i32 42
  %41 = load ptr, ptr %tif_rawcp, align 8
  store ptr %41, ptr %bp, align 8
  %42 = load ptr, ptr %sp, align 8
  %nbits40 = getelementptr inbounds %struct.LZWBaseState, ptr %42, i64 0, i32 1
  %43 = load i16, ptr %nbits40, align 8
  %conv41 = zext i16 %43 to i64
  store i64 %conv41, ptr %nbits, align 8
  %nextdata43 = getelementptr inbounds %struct.LZWBaseState, ptr %42, i64 0, i32 4
  %44 = load i64, ptr %nextdata43, align 8
  store i64 %44, ptr %nextdata, align 8
  %45 = load ptr, ptr %sp, align 8
  %nextbits45 = getelementptr inbounds %struct.LZWBaseState, ptr %45, i64 0, i32 5
  %46 = load i64, ptr %nextbits45, align 8
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

while.cond:                                       ; preds = %if.end247, %if.end115, %if.end39
  %53 = load i64, ptr %occ, align 8
  %cmp46 = icmp sgt i64 %53, 0
  br i1 %cmp46, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %54 = load ptr, ptr %sp, align 8
  %dec_bitsleft = getelementptr inbounds %struct.LZWDecodeState, ptr %54, i64 0, i32 3
  %55 = load i64, ptr %dec_bitsleft, align 8
  %56 = load i64, ptr %nbits, align 8
  %cmp48 = icmp slt i64 %55, %56
  br i1 %cmp48, label %if.then50, label %if.else

if.then50:                                        ; preds = %while.body
  %57 = load ptr, ptr %tif.addr, align 8
  %58 = load ptr, ptr %57, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %57, i64 0, i32 13
  %59 = load i64, ptr %tif_curstrip, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %58, ptr noundef nonnull @.str.6, i64 noundef %59) #5
  store i16 257, ptr %code, align 2
  br label %if.end68

if.else:                                          ; preds = %while.body
  %60 = load i64, ptr %nextdata, align 8
  %shl = shl i64 %60, 8
  %61 = load ptr, ptr %bp, align 8
  %incdec.ptr51 = getelementptr inbounds i8, ptr %61, i64 1
  store ptr %incdec.ptr51, ptr %bp, align 8
  %62 = load i8, ptr %61, align 1
  %conv52 = zext i8 %62 to i64
  %or = or i64 %shl, %conv52
  store i64 %or, ptr %nextdata, align 8
  %63 = load i64, ptr %nextbits, align 8
  %add53 = add nsw i64 %63, 8
  store i64 %add53, ptr %nextbits, align 8
  %64 = load i64, ptr %nbits, align 8
  %cmp54 = icmp slt i64 %add53, %64
  br i1 %cmp54, label %if.then56, label %if.end62

if.then56:                                        ; preds = %if.else
  %65 = load i64, ptr %nextdata, align 8
  %shl57 = shl i64 %65, 8
  %66 = load ptr, ptr %bp, align 8
  %incdec.ptr58 = getelementptr inbounds i8, ptr %66, i64 1
  store ptr %incdec.ptr58, ptr %bp, align 8
  %67 = load i8, ptr %66, align 1
  %conv59 = zext i8 %67 to i64
  %or60 = or i64 %shl57, %conv59
  store i64 %or60, ptr %nextdata, align 8
  %68 = load i64, ptr %nextbits, align 8
  %add61 = add nsw i64 %68, 8
  store i64 %add61, ptr %nextbits, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then56, %if.else
  %69 = load i64, ptr %nextdata, align 8
  %70 = load i64, ptr %nextbits, align 8
  %71 = load i64, ptr %nbits, align 8
  %sub63 = sub nsw i64 %70, %71
  %shr = ashr i64 %69, %sub63
  %72 = load i64, ptr %nbitsmask, align 8
  %and = and i64 %shr, %72
  %conv64 = trunc i64 %and to i16
  store i16 %conv64, ptr %code, align 2
  %73 = load i64, ptr %nbits, align 8
  %74 = load i64, ptr %nextbits, align 8
  %sub65 = sub nsw i64 %74, %73
  store i64 %sub65, ptr %nextbits, align 8
  %75 = load ptr, ptr %sp, align 8
  %dec_bitsleft66 = getelementptr inbounds %struct.LZWDecodeState, ptr %75, i64 0, i32 3
  %76 = load i64, ptr %dec_bitsleft66, align 8
  %sub67 = sub nsw i64 %76, %73
  store i64 %sub67, ptr %dec_bitsleft66, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.end62, %if.then50
  %77 = load i16, ptr %code, align 2
  %cmp70 = icmp eq i16 %77, 257
  br i1 %cmp70, label %while.end, label %if.end73

if.end73:                                         ; preds = %if.end68
  %78 = load i16, ptr %code, align 2
  %cmp75 = icmp eq i16 %78, 256
  br i1 %cmp75, label %if.then77, label %if.end122

if.then77:                                        ; preds = %if.end73
  %79 = load ptr, ptr %sp, align 8
  %dec_codetab = getelementptr inbounds %struct.LZWDecodeState, ptr %79, i64 0, i32 9
  %80 = load ptr, ptr %dec_codetab, align 8
  %add.ptr78 = getelementptr inbounds %struct.code_ent, ptr %80, i64 258
  store ptr %add.ptr78, ptr %free_entp, align 8
  store i64 9, ptr %nbits, align 8
  store i64 511, ptr %nbitsmask, align 8
  %81 = load ptr, ptr %sp, align 8
  %dec_codetab79 = getelementptr inbounds %struct.LZWDecodeState, ptr %81, i64 0, i32 9
  %82 = load ptr, ptr %dec_codetab79, align 8
  %add.ptr81 = getelementptr inbounds %struct.code_ent, ptr %82, i64 510
  store ptr %add.ptr81, ptr %maxcodep, align 8
  %dec_bitsleft82 = getelementptr inbounds %struct.LZWDecodeState, ptr %81, i64 0, i32 3
  %83 = load i64, ptr %dec_bitsleft82, align 8
  %84 = load i64, ptr %nbits, align 8
  %cmp83 = icmp slt i64 %83, %84
  br i1 %cmp83, label %if.then85, label %if.else88

if.then85:                                        ; preds = %if.then77
  %85 = load ptr, ptr %tif.addr, align 8
  %86 = load ptr, ptr %85, align 8
  %tif_curstrip87 = getelementptr inbounds %struct.tiff, ptr %85, i64 0, i32 13
  %87 = load i64, ptr %tif_curstrip87, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %86, ptr noundef nonnull @.str.6, i64 noundef %87) #5
  store i16 257, ptr %code, align 2
  br label %if.end110

if.else88:                                        ; preds = %if.then77
  %88 = load i64, ptr %nextdata, align 8
  %shl89 = shl i64 %88, 8
  %89 = load ptr, ptr %bp, align 8
  %incdec.ptr90 = getelementptr inbounds i8, ptr %89, i64 1
  store ptr %incdec.ptr90, ptr %bp, align 8
  %90 = load i8, ptr %89, align 1
  %conv91 = zext i8 %90 to i64
  %or92 = or i64 %shl89, %conv91
  store i64 %or92, ptr %nextdata, align 8
  %91 = load i64, ptr %nextbits, align 8
  %add93 = add nsw i64 %91, 8
  store i64 %add93, ptr %nextbits, align 8
  %92 = load i64, ptr %nbits, align 8
  %cmp94 = icmp slt i64 %add93, %92
  br i1 %cmp94, label %if.then96, label %if.end102

if.then96:                                        ; preds = %if.else88
  %93 = load i64, ptr %nextdata, align 8
  %shl97 = shl i64 %93, 8
  %94 = load ptr, ptr %bp, align 8
  %incdec.ptr98 = getelementptr inbounds i8, ptr %94, i64 1
  store ptr %incdec.ptr98, ptr %bp, align 8
  %95 = load i8, ptr %94, align 1
  %conv99 = zext i8 %95 to i64
  %or100 = or i64 %shl97, %conv99
  store i64 %or100, ptr %nextdata, align 8
  %96 = load i64, ptr %nextbits, align 8
  %add101 = add nsw i64 %96, 8
  store i64 %add101, ptr %nextbits, align 8
  br label %if.end102

if.end102:                                        ; preds = %if.then96, %if.else88
  %97 = load i64, ptr %nextdata, align 8
  %98 = load i64, ptr %nextbits, align 8
  %99 = load i64, ptr %nbits, align 8
  %sub103 = sub nsw i64 %98, %99
  %shr104 = ashr i64 %97, %sub103
  %100 = load i64, ptr %nbitsmask, align 8
  %and105 = and i64 %shr104, %100
  %conv106 = trunc i64 %and105 to i16
  store i16 %conv106, ptr %code, align 2
  %101 = load i64, ptr %nbits, align 8
  %102 = load i64, ptr %nextbits, align 8
  %sub107 = sub nsw i64 %102, %101
  store i64 %sub107, ptr %nextbits, align 8
  %103 = load ptr, ptr %sp, align 8
  %dec_bitsleft108 = getelementptr inbounds %struct.LZWDecodeState, ptr %103, i64 0, i32 3
  %104 = load i64, ptr %dec_bitsleft108, align 8
  %sub109 = sub nsw i64 %104, %101
  store i64 %sub109, ptr %dec_bitsleft108, align 8
  br label %if.end110

if.end110:                                        ; preds = %if.end102, %if.then85
  %105 = load i16, ptr %code, align 2
  %cmp112 = icmp eq i16 %105, 257
  br i1 %cmp112, label %while.end, label %if.end115

if.end115:                                        ; preds = %if.end110
  %106 = load i16, ptr %code, align 2
  %conv116 = trunc i16 %106 to i8
  %107 = load ptr, ptr %op, align 8
  %incdec.ptr117 = getelementptr inbounds i8, ptr %107, i64 1
  store ptr %incdec.ptr117, ptr %op, align 8
  store i8 %conv116, ptr %107, align 1
  %108 = load i64, ptr %occ, align 8
  %dec118 = add nsw i64 %108, -1
  store i64 %dec118, ptr %occ, align 8
  %109 = load ptr, ptr %sp, align 8
  %dec_codetab119 = getelementptr inbounds %struct.LZWDecodeState, ptr %109, i64 0, i32 9
  %110 = load ptr, ptr %dec_codetab119, align 8
  %111 = load i16, ptr %code, align 2
  %idx.ext = zext i16 %111 to i64
  %add.ptr121 = getelementptr inbounds %struct.code_ent, ptr %110, i64 %idx.ext
  store ptr %add.ptr121, ptr %oldcodep, align 8
  br label %while.cond, !llvm.loop !11

if.end122:                                        ; preds = %if.end73
  %112 = load ptr, ptr %sp, align 8
  %dec_codetab123 = getelementptr inbounds %struct.LZWDecodeState, ptr %112, i64 0, i32 9
  %113 = load ptr, ptr %dec_codetab123, align 8
  %114 = load i16, ptr %code, align 2
  %idx.ext125 = zext i16 %114 to i64
  %add.ptr126 = getelementptr inbounds %struct.code_ent, ptr %113, i64 %idx.ext125
  store ptr %add.ptr126, ptr %codep, align 8
  %115 = load ptr, ptr %sp, align 8
  %dec_codetab127 = getelementptr inbounds %struct.LZWDecodeState, ptr %115, i64 0, i32 9
  %116 = load ptr, ptr %dec_codetab127, align 8
  %117 = load ptr, ptr %free_entp, align 8
  %cmp128.not = icmp ugt ptr %116, %117
  br i1 %cmp128.not, label %cond.true140, label %land.rhs130

land.rhs130:                                      ; preds = %if.end122
  %118 = load ptr, ptr %free_entp, align 8
  %119 = load ptr, ptr %sp, align 8
  %dec_codetab131 = getelementptr inbounds %struct.LZWDecodeState, ptr %119, i64 0, i32 9
  %120 = load ptr, ptr %dec_codetab131, align 8
  %arrayidx132 = getelementptr inbounds %struct.code_ent, ptr %120, i64 5119
  %cmp133 = icmp ult ptr %118, %arrayidx132
  br i1 %cmp133, label %cond.end142, label %cond.true140

cond.true140:                                     ; preds = %if.end122, %land.rhs130
  call void @__assert_rtn(ptr noundef nonnull @__func__.LZWDecode, ptr noundef nonnull @.str, i32 noundef 399, ptr noundef nonnull @.str.7) #4
  unreachable

cond.end142:                                      ; preds = %land.rhs130
  %121 = load ptr, ptr %oldcodep, align 8
  %122 = load ptr, ptr %free_entp, align 8
  store ptr %121, ptr %122, align 8
  %firstchar = getelementptr inbounds %struct.code_ent, ptr %121, i64 0, i32 3
  %123 = load i8, ptr %firstchar, align 1
  %firstchar145 = getelementptr inbounds %struct.code_ent, ptr %122, i64 0, i32 3
  store i8 %123, ptr %firstchar145, align 1
  %length147 = getelementptr inbounds %struct.code_ent, ptr %121, i64 0, i32 1
  %124 = load i16, ptr %length147, align 8
  %add149 = add i16 %124, 1
  %125 = load ptr, ptr %free_entp, align 8
  %length151 = getelementptr inbounds %struct.code_ent, ptr %125, i64 0, i32 1
  store i16 %add149, ptr %length151, align 8
  %126 = load ptr, ptr %codep, align 8
  %cmp152 = icmp ult ptr %126, %125
  %127 = load ptr, ptr %codep, align 8
  %128 = load ptr, ptr %free_entp, align 8
  %.pn = select i1 %cmp152, ptr %127, ptr %128
  %cond.in.in = getelementptr inbounds %struct.code_ent, ptr %.pn, i64 0, i32 3
  %cond.in3 = load i8, ptr %cond.in.in, align 1
  %129 = load ptr, ptr %free_entp, align 8
  %value162 = getelementptr inbounds %struct.code_ent, ptr %129, i64 0, i32 2
  store i8 %cond.in3, ptr %value162, align 2
  %incdec.ptr163 = getelementptr inbounds %struct.code_ent, ptr %129, i64 1
  store ptr %incdec.ptr163, ptr %free_entp, align 8
  %130 = load ptr, ptr %maxcodep, align 8
  %cmp164 = icmp ugt ptr %incdec.ptr163, %130
  br i1 %cmp164, label %if.then166, label %if.end176

if.then166:                                       ; preds = %cond.end142
  %131 = load i64, ptr %nbits, align 8
  %inc = add nsw i64 %131, 1
  %cmp167 = icmp sgt i64 %131, 11
  %spec.select = select i1 %cmp167, i64 12, i64 %inc
  store i64 %spec.select, ptr %nbits, align 8
  %notmask = shl nsw i64 -1, %spec.select
  %sub172 = xor i64 %notmask, -1
  store i64 %sub172, ptr %nbitsmask, align 8
  %132 = load ptr, ptr %sp, align 8
  %dec_codetab173 = getelementptr inbounds %struct.LZWDecodeState, ptr %132, i64 0, i32 9
  %133 = load ptr, ptr %dec_codetab173, align 8
  %add.ptr174 = getelementptr inbounds %struct.code_ent, ptr %133, i64 %sub172
  %add.ptr175 = getelementptr inbounds %struct.code_ent, ptr %add.ptr174, i64 -1
  store ptr %add.ptr175, ptr %maxcodep, align 8
  br label %if.end176

if.end176:                                        ; preds = %if.then166, %cond.end142
  %134 = load ptr, ptr %codep, align 8
  store ptr %134, ptr %oldcodep, align 8
  %135 = load i16, ptr %code, align 2
  %cmp178 = icmp ugt i16 %135, 255
  br i1 %cmp178, label %if.then180, label %if.else243

if.then180:                                       ; preds = %if.end176
  %136 = load ptr, ptr %codep, align 8
  %length181 = getelementptr inbounds %struct.code_ent, ptr %136, i64 0, i32 1
  %137 = load i16, ptr %length181, align 8
  %conv182 = zext i16 %137 to i64
  %138 = load i64, ptr %occ, align 8
  %cmp183 = icmp slt i64 %138, %conv182
  br i1 %cmp183, label %if.then185, label %if.end217

if.then185:                                       ; preds = %if.then180
  %139 = load ptr, ptr %codep, align 8
  %140 = load ptr, ptr %sp, align 8
  %dec_codep186 = getelementptr inbounds %struct.LZWDecodeState, ptr %140, i64 0, i32 5
  store ptr %139, ptr %dec_codep186, align 8
  br label %do.body187

do.body187:                                       ; preds = %land.rhs191, %if.then185
  %141 = load ptr, ptr %codep, align 8
  %142 = load ptr, ptr %141, align 8
  store ptr %142, ptr %codep, align 8
  %143 = load ptr, ptr %codep, align 8
  %tobool190.not = icmp eq ptr %143, null
  br i1 %tobool190.not, label %do.end197, label %land.rhs191

land.rhs191:                                      ; preds = %do.body187
  %144 = load ptr, ptr %codep, align 8
  %length192 = getelementptr inbounds %struct.code_ent, ptr %144, i64 0, i32 1
  %145 = load i16, ptr %length192, align 8
  %conv193 = zext i16 %145 to i64
  %146 = load i64, ptr %occ, align 8
  %cmp194 = icmp slt i64 %146, %conv193
  br i1 %cmp194, label %do.body187, label %do.end197, !llvm.loop !12

do.end197:                                        ; preds = %do.body187, %land.rhs191
  %147 = load ptr, ptr %codep, align 8
  %tobool198.not = icmp eq ptr %147, null
  br i1 %tobool198.not, label %while.end, label %if.then199

if.then199:                                       ; preds = %do.end197
  %148 = load i64, ptr %occ, align 8
  %149 = load ptr, ptr %sp, align 8
  %dec_restart200 = getelementptr inbounds %struct.LZWDecodeState, ptr %149, i64 0, i32 2
  store i64 %148, ptr %dec_restart200, align 8
  %150 = load ptr, ptr %op, align 8
  %add.ptr201 = getelementptr inbounds i8, ptr %150, i64 %148
  store ptr %add.ptr201, ptr %tp, align 8
  br label %do.body202

do.body202:                                       ; preds = %do.body202, %if.then199
  %151 = load ptr, ptr %codep, align 8
  %value203 = getelementptr inbounds %struct.code_ent, ptr %151, i64 0, i32 2
  %152 = load i8, ptr %value203, align 2
  %153 = load ptr, ptr %tp, align 8
  %incdec.ptr204 = getelementptr inbounds i8, ptr %153, i64 -1
  store ptr %incdec.ptr204, ptr %tp, align 8
  store i8 %152, ptr %incdec.ptr204, align 1
  %154 = load ptr, ptr %codep, align 8
  %155 = load ptr, ptr %154, align 8
  store ptr %155, ptr %codep, align 8
  %156 = load i64, ptr %occ, align 8
  %dec207 = add nsw i64 %156, -1
  store i64 %dec207, ptr %occ, align 8
  %tobool208.not = icmp eq i64 %dec207, 0
  %157 = load ptr, ptr %codep, align 8
  %tobool210 = icmp ne ptr %157, null
  %158 = select i1 %tobool208.not, i1 false, i1 %tobool210
  br i1 %158, label %do.body202, label %do.end212, !llvm.loop !13

do.end212:                                        ; preds = %do.body202
  %159 = load ptr, ptr %codep, align 8
  %tobool213.not = icmp eq ptr %159, null
  br i1 %tobool213.not, label %while.end, label %if.then214

if.then214:                                       ; preds = %do.end212
  %160 = load ptr, ptr %tif.addr, align 8
  %161 = load ptr, ptr %160, align 8
  %tif_row.i = getelementptr inbounds %struct.tiff, ptr %160, i64 0, i32 11
  %162 = load i64, ptr %tif_row.i, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %161, ptr noundef nonnull @.str.10, i64 noundef %162) #5
  br label %while.end

if.end217:                                        ; preds = %if.then180
  %163 = load ptr, ptr %codep, align 8
  %length218 = getelementptr inbounds %struct.code_ent, ptr %163, i64 0, i32 1
  %164 = load i16, ptr %length218, align 8
  %conv219 = zext i16 %164 to i32
  store i32 %conv219, ptr %len, align 4
  %165 = load ptr, ptr %op, align 8
  %idx.ext220 = zext i16 %164 to i64
  %add.ptr221 = getelementptr inbounds i8, ptr %165, i64 %idx.ext220
  store ptr %add.ptr221, ptr %tp, align 8
  br label %do.body222

do.body222:                                       ; preds = %do.body222, %if.end217
  %166 = load ptr, ptr %tp, align 8
  %incdec.ptr224 = getelementptr inbounds i8, ptr %166, i64 -1
  store ptr %incdec.ptr224, ptr %tp, align 8
  %167 = load ptr, ptr %codep, align 8
  %value225 = getelementptr inbounds %struct.code_ent, ptr %167, i64 0, i32 2
  %168 = load i8, ptr %value225, align 2
  %169 = load ptr, ptr %167, align 8
  store ptr %169, ptr %codep, align 8
  store i8 %168, ptr %incdec.ptr224, align 1
  %170 = load ptr, ptr %codep, align 8
  %tobool230.not = icmp eq ptr %170, null
  %171 = load ptr, ptr %tp, align 8
  %172 = load ptr, ptr %op, align 8
  %cmp232 = icmp ugt ptr %171, %172
  %173 = select i1 %tobool230.not, i1 false, i1 %cmp232
  br i1 %173, label %do.body222, label %do.end235, !llvm.loop !14

do.end235:                                        ; preds = %do.body222
  %174 = load ptr, ptr %codep, align 8
  %tobool236.not = icmp eq ptr %174, null
  br i1 %tobool236.not, label %if.end238, label %if.then237

if.then237:                                       ; preds = %do.end235
  %175 = load ptr, ptr %tif.addr, align 8
  %176 = load ptr, ptr %175, align 8
  %tif_row.i2 = getelementptr inbounds %struct.tiff, ptr %175, i64 0, i32 11
  %177 = load i64, ptr %tif_row.i2, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %176, ptr noundef nonnull @.str.10, i64 noundef %177) #5
  br label %while.end

if.end238:                                        ; preds = %do.end235
  %178 = load i32, ptr %len, align 4
  %179 = load ptr, ptr %op, align 8
  %idx.ext239 = sext i32 %178 to i64
  %add.ptr240 = getelementptr inbounds i8, ptr %179, i64 %idx.ext239
  store ptr %add.ptr240, ptr %op, align 8
  %conv241 = sext i32 %178 to i64
  %180 = load i64, ptr %occ, align 8
  %sub242 = sub nsw i64 %180, %conv241
  br label %if.end247

if.else243:                                       ; preds = %if.end176
  %181 = load i16, ptr %code, align 2
  %conv244 = trunc i16 %181 to i8
  %182 = load ptr, ptr %op, align 8
  %incdec.ptr245 = getelementptr inbounds i8, ptr %182, i64 1
  store ptr %incdec.ptr245, ptr %op, align 8
  store i8 %conv244, ptr %182, align 1
  %183 = load i64, ptr %occ, align 8
  %dec246 = add nsw i64 %183, -1
  br label %if.end247

if.end247:                                        ; preds = %if.else243, %if.end238
  %storemerge = phi i64 [ %dec246, %if.else243 ], [ %sub242, %if.end238 ]
  store i64 %storemerge, ptr %occ, align 8
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %do.end197, %if.then214, %do.end212, %if.end110, %if.end68, %if.then237, %while.cond
  %184 = load ptr, ptr %bp, align 8
  %185 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp248 = getelementptr inbounds %struct.tiff, ptr %185, i64 0, i32 42
  store ptr %184, ptr %tif_rawcp248, align 8
  %186 = load i64, ptr %nbits, align 8
  %conv249 = trunc i64 %186 to i16
  %187 = load ptr, ptr %sp, align 8
  %nbits251 = getelementptr inbounds %struct.LZWBaseState, ptr %187, i64 0, i32 1
  store i16 %conv249, ptr %nbits251, align 8
  %188 = load i64, ptr %nextdata, align 8
  %nextdata253 = getelementptr inbounds %struct.LZWBaseState, ptr %187, i64 0, i32 4
  store i64 %188, ptr %nextdata253, align 8
  %189 = load i64, ptr %nextbits, align 8
  %190 = load ptr, ptr %sp, align 8
  %nextbits255 = getelementptr inbounds %struct.LZWBaseState, ptr %190, i64 0, i32 5
  store i64 %189, ptr %nextbits255, align 8
  %191 = load i64, ptr %nbitsmask, align 8
  %dec_nbitsmask256 = getelementptr inbounds %struct.LZWDecodeState, ptr %190, i64 0, i32 1
  store i64 %191, ptr %dec_nbitsmask256, align 8
  %192 = load ptr, ptr %oldcodep, align 8
  %193 = load ptr, ptr %sp, align 8
  %dec_oldcodep257 = getelementptr inbounds %struct.LZWDecodeState, ptr %193, i64 0, i32 6
  store ptr %192, ptr %dec_oldcodep257, align 8
  %194 = load ptr, ptr %free_entp, align 8
  %dec_free_entp258 = getelementptr inbounds %struct.LZWDecodeState, ptr %193, i64 0, i32 7
  store ptr %194, ptr %dec_free_entp258, align 8
  %195 = load ptr, ptr %maxcodep, align 8
  %196 = load ptr, ptr %sp, align 8
  %dec_maxcodep259 = getelementptr inbounds %struct.LZWDecodeState, ptr %196, i64 0, i32 8
  store ptr %195, ptr %dec_maxcodep259, align 8
  %197 = load i64, ptr %occ, align 8
  %cmp260 = icmp sgt i64 %197, 0
  br i1 %cmp260, label %if.then262, label %if.end264

if.then262:                                       ; preds = %while.end
  %198 = load ptr, ptr %tif.addr, align 8
  %199 = load ptr, ptr %198, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %198, i64 0, i32 11
  %200 = load i64, ptr %tif_row, align 8
  %201 = load i64, ptr %occ, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %199, ptr noundef nonnull @.str.9, i64 noundef %200, i64 noundef %201) #5
  store i32 0, ptr %retval, align 4
  br label %return

if.end264:                                        ; preds = %while.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end264, %if.then262, %if.end
  %202 = load i32, ptr %retval, align 4
  ret i32 %202
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @_LZWtrue(ptr noundef %tif) #0 {
entry:
  ret i32 1
}

declare i32 @_TIFFNoPreCode(ptr noundef, i16 noundef zeroext) #2

declare i32 @_TIFFNoRowEncode(ptr noundef, ptr noundef, i64 noundef, i16 noundef zeroext) #2

declare i32 @_TIFFNoStripEncode(ptr noundef, ptr noundef, i64 noundef, i16 noundef zeroext) #2

declare i32 @_TIFFNoTileEncode(ptr noundef, ptr noundef, i64 noundef, i16 noundef zeroext) #2

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
  call void @_TIFFfree(ptr noundef %8) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then1, %if.then4, %if.then
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_data8 = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 37
  %10 = load ptr, ptr %tif_data8, align 8
  call void @_TIFFfree(ptr noundef %10) #5
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
define internal i32 @LZWDecodeCompat(ptr noundef %tif, ptr noundef %op0, i64 noundef %occ0, i16 noundef zeroext %s) #0 {
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
  store i64 %occ0, ptr %occ, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.LZWDecodeCompat, ptr noundef nonnull @.str, i32 noundef 505, ptr noundef nonnull @.str.3) #4
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load ptr, ptr %sp, align 8
  %dec_restart = getelementptr inbounds %struct.LZWDecodeState, ptr %1, i64 0, i32 2
  %2 = load i64, ptr %dec_restart, align 8
  %tobool1.not = icmp eq i64 %2, 0
  br i1 %tobool1.not, label %if.end27, label %if.then

if.then:                                          ; preds = %cond.end
  %3 = load ptr, ptr %sp, align 8
  %dec_codep = getelementptr inbounds %struct.LZWDecodeState, ptr %3, i64 0, i32 5
  %4 = load ptr, ptr %dec_codep, align 8
  store ptr %4, ptr %codep, align 8
  %length = getelementptr inbounds %struct.code_ent, ptr %4, i64 0, i32 1
  %5 = load i16, ptr %length, align 8
  %conv2 = zext i16 %5 to i64
  %6 = load ptr, ptr %sp, align 8
  %dec_restart3 = getelementptr inbounds %struct.LZWDecodeState, ptr %6, i64 0, i32 2
  %7 = load i64, ptr %dec_restart3, align 8
  %sub = sub nsw i64 %conv2, %7
  store i64 %sub, ptr %residue, align 8
  %8 = load i64, ptr %occ, align 8
  %cmp4 = icmp sgt i64 %sub, %8
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %9 = load i64, ptr %occ, align 8
  %10 = load ptr, ptr %sp, align 8
  %dec_restart7 = getelementptr inbounds %struct.LZWDecodeState, ptr %10, i64 0, i32 2
  %11 = load i64, ptr %dec_restart7, align 8
  %add = add nsw i64 %11, %9
  store i64 %add, ptr %dec_restart7, align 8
  br label %do.body

do.body:                                          ; preds = %do.body, %if.then6
  %12 = load ptr, ptr %codep, align 8
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %codep, align 8
  %14 = load i64, ptr %residue, align 8
  %dec = add nsw i64 %14, -1
  store i64 %dec, ptr %residue, align 8
  %15 = load i64, ptr %occ, align 8
  %cmp8 = icmp sgt i64 %dec, %15
  br i1 %cmp8, label %do.body, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %do.body
  %16 = load ptr, ptr %op, align 8
  %17 = load i64, ptr %occ, align 8
  %add.ptr = getelementptr inbounds i8, ptr %16, i64 %17
  store ptr %add.ptr, ptr %tp, align 8
  br label %do.body10

do.body10:                                        ; preds = %do.body10, %do.end
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
  %dec13 = add nsw i64 %23, -1
  store i64 %dec13, ptr %occ, align 8
  %tobool14.not = icmp eq i64 %dec13, 0
  br i1 %tobool14.not, label %do.end15, label %do.body10, !llvm.loop !16

do.end15:                                         ; preds = %do.body10
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %24 = load i64, ptr %residue, align 8
  %25 = load ptr, ptr %op, align 8
  %add.ptr16 = getelementptr inbounds i8, ptr %25, i64 %24
  store ptr %add.ptr16, ptr %op, align 8
  %26 = load i64, ptr %occ, align 8
  %sub17 = sub nsw i64 %26, %24
  store i64 %sub17, ptr %occ, align 8
  store ptr %add.ptr16, ptr %tp, align 8
  br label %do.body18

do.body18:                                        ; preds = %do.body18, %if.end
  %27 = load ptr, ptr %codep, align 8
  %value19 = getelementptr inbounds %struct.code_ent, ptr %27, i64 0, i32 2
  %28 = load i8, ptr %value19, align 2
  %29 = load ptr, ptr %tp, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %29, i64 -1
  store ptr %incdec.ptr20, ptr %tp, align 8
  store i8 %28, ptr %incdec.ptr20, align 1
  %30 = load ptr, ptr %codep, align 8
  %31 = load ptr, ptr %30, align 8
  store ptr %31, ptr %codep, align 8
  %32 = load i64, ptr %residue, align 8
  %dec23 = add nsw i64 %32, -1
  store i64 %dec23, ptr %residue, align 8
  %tobool24.not = icmp eq i64 %dec23, 0
  br i1 %tobool24.not, label %do.end25, label %do.body18, !llvm.loop !17

do.end25:                                         ; preds = %do.body18
  %33 = load ptr, ptr %sp, align 8
  %dec_restart26 = getelementptr inbounds %struct.LZWDecodeState, ptr %33, i64 0, i32 2
  store i64 0, ptr %dec_restart26, align 8
  br label %if.end27

if.end27:                                         ; preds = %do.end25, %cond.end
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 42
  %35 = load ptr, ptr %tif_rawcp, align 8
  store ptr %35, ptr %bp, align 8
  %36 = load ptr, ptr %sp, align 8
  %nbits28 = getelementptr inbounds %struct.LZWBaseState, ptr %36, i64 0, i32 1
  %37 = load i16, ptr %nbits28, align 8
  %conv29 = zext i16 %37 to i32
  store i32 %conv29, ptr %nbits, align 4
  %nextdata31 = getelementptr inbounds %struct.LZWBaseState, ptr %36, i64 0, i32 4
  %38 = load i64, ptr %nextdata31, align 8
  store i64 %38, ptr %nextdata, align 8
  %39 = load ptr, ptr %sp, align 8
  %nextbits33 = getelementptr inbounds %struct.LZWBaseState, ptr %39, i64 0, i32 5
  %40 = load i64, ptr %nextbits33, align 8
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

while.cond:                                       ; preds = %if.end213, %if.end108, %if.end27
  %47 = load i64, ptr %occ, align 8
  %cmp34 = icmp sgt i64 %47, 0
  br i1 %cmp34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %48 = load ptr, ptr %sp, align 8
  %dec_bitsleft = getelementptr inbounds %struct.LZWDecodeState, ptr %48, i64 0, i32 3
  %49 = load i64, ptr %dec_bitsleft, align 8
  %50 = load i32, ptr %nbits, align 4
  %conv36 = sext i32 %50 to i64
  %cmp37 = icmp slt i64 %49, %conv36
  br i1 %cmp37, label %if.then39, label %if.else

if.then39:                                        ; preds = %while.body
  %51 = load ptr, ptr %tif.addr, align 8
  %52 = load ptr, ptr %51, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %51, i64 0, i32 13
  %53 = load i64, ptr %tif_curstrip, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %52, ptr noundef nonnull @.str.6, i64 noundef %53) #5
  store i32 257, ptr %code, align 4
  br label %if.end60

if.else:                                          ; preds = %while.body
  %54 = load ptr, ptr %bp, align 8
  %incdec.ptr40 = getelementptr inbounds i8, ptr %54, i64 1
  store ptr %incdec.ptr40, ptr %bp, align 8
  %55 = load i8, ptr %54, align 1
  %conv41 = zext i8 %55 to i64
  %56 = load i64, ptr %nextbits, align 8
  %shl = shl i64 %conv41, %56
  %57 = load i64, ptr %nextdata, align 8
  %or = or i64 %57, %shl
  store i64 %or, ptr %nextdata, align 8
  %add42 = add nsw i64 %56, 8
  store i64 %add42, ptr %nextbits, align 8
  %58 = load i32, ptr %nbits, align 4
  %conv43 = sext i32 %58 to i64
  %cmp44 = icmp slt i64 %add42, %conv43
  br i1 %cmp44, label %if.then46, label %if.end52

if.then46:                                        ; preds = %if.else
  %59 = load ptr, ptr %bp, align 8
  %incdec.ptr47 = getelementptr inbounds i8, ptr %59, i64 1
  store ptr %incdec.ptr47, ptr %bp, align 8
  %60 = load i8, ptr %59, align 1
  %conv48 = zext i8 %60 to i64
  %61 = load i64, ptr %nextbits, align 8
  %shl49 = shl i64 %conv48, %61
  %62 = load i64, ptr %nextdata, align 8
  %or50 = or i64 %62, %shl49
  store i64 %or50, ptr %nextdata, align 8
  %add51 = add nsw i64 %61, 8
  store i64 %add51, ptr %nextbits, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then46, %if.else
  %63 = load i64, ptr %nextdata, align 8
  %64 = load i64, ptr %nbitsmask, align 8
  %and = and i64 %63, %64
  %conv53 = trunc i64 %and to i32
  %conv54 = and i32 %conv53, 65535
  store i32 %conv54, ptr %code, align 4
  %65 = load i32, ptr %nbits, align 4
  %66 = load i64, ptr %nextdata, align 8
  %sh_prom = zext i32 %65 to i64
  %shr = ashr i64 %66, %sh_prom
  store i64 %shr, ptr %nextdata, align 8
  %conv55 = sext i32 %65 to i64
  %67 = load i64, ptr %nextbits, align 8
  %sub56 = sub nsw i64 %67, %conv55
  store i64 %sub56, ptr %nextbits, align 8
  %68 = load i32, ptr %nbits, align 4
  %conv57 = sext i32 %68 to i64
  %69 = load ptr, ptr %sp, align 8
  %dec_bitsleft58 = getelementptr inbounds %struct.LZWDecodeState, ptr %69, i64 0, i32 3
  %70 = load i64, ptr %dec_bitsleft58, align 8
  %sub59 = sub nsw i64 %70, %conv57
  store i64 %sub59, ptr %dec_bitsleft58, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.end52, %if.then39
  %71 = load i32, ptr %code, align 4
  %cmp61 = icmp eq i32 %71, 257
  br i1 %cmp61, label %while.end, label %if.end64

if.end64:                                         ; preds = %if.end60
  %72 = load i32, ptr %code, align 4
  %cmp65 = icmp eq i32 %72, 256
  br i1 %cmp65, label %if.then67, label %if.end114

if.then67:                                        ; preds = %if.end64
  %73 = load ptr, ptr %sp, align 8
  %dec_codetab = getelementptr inbounds %struct.LZWDecodeState, ptr %73, i64 0, i32 9
  %74 = load ptr, ptr %dec_codetab, align 8
  %add.ptr68 = getelementptr inbounds %struct.code_ent, ptr %74, i64 258
  store ptr %add.ptr68, ptr %free_entp, align 8
  store i32 9, ptr %nbits, align 4
  store i64 511, ptr %nbitsmask, align 8
  %75 = load ptr, ptr %sp, align 8
  %dec_codetab69 = getelementptr inbounds %struct.LZWDecodeState, ptr %75, i64 0, i32 9
  %76 = load ptr, ptr %dec_codetab69, align 8
  %add.ptr70 = getelementptr inbounds %struct.code_ent, ptr %76, i64 511
  store ptr %add.ptr70, ptr %maxcodep, align 8
  %dec_bitsleft71 = getelementptr inbounds %struct.LZWDecodeState, ptr %75, i64 0, i32 3
  %77 = load i64, ptr %dec_bitsleft71, align 8
  %78 = load i32, ptr %nbits, align 4
  %conv72 = sext i32 %78 to i64
  %cmp73 = icmp slt i64 %77, %conv72
  br i1 %cmp73, label %if.then75, label %if.else78

if.then75:                                        ; preds = %if.then67
  %79 = load ptr, ptr %tif.addr, align 8
  %80 = load ptr, ptr %79, align 8
  %tif_curstrip77 = getelementptr inbounds %struct.tiff, ptr %79, i64 0, i32 13
  %81 = load i64, ptr %tif_curstrip77, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %80, ptr noundef nonnull @.str.6, i64 noundef %81) #5
  store i32 257, ptr %code, align 4
  br label %if.end104

if.else78:                                        ; preds = %if.then67
  %82 = load ptr, ptr %bp, align 8
  %incdec.ptr79 = getelementptr inbounds i8, ptr %82, i64 1
  store ptr %incdec.ptr79, ptr %bp, align 8
  %83 = load i8, ptr %82, align 1
  %conv80 = zext i8 %83 to i64
  %84 = load i64, ptr %nextbits, align 8
  %shl81 = shl i64 %conv80, %84
  %85 = load i64, ptr %nextdata, align 8
  %or82 = or i64 %85, %shl81
  store i64 %or82, ptr %nextdata, align 8
  %add83 = add nsw i64 %84, 8
  store i64 %add83, ptr %nextbits, align 8
  %86 = load i32, ptr %nbits, align 4
  %conv84 = sext i32 %86 to i64
  %cmp85 = icmp slt i64 %add83, %conv84
  br i1 %cmp85, label %if.then87, label %if.end93

if.then87:                                        ; preds = %if.else78
  %87 = load ptr, ptr %bp, align 8
  %incdec.ptr88 = getelementptr inbounds i8, ptr %87, i64 1
  store ptr %incdec.ptr88, ptr %bp, align 8
  %88 = load i8, ptr %87, align 1
  %conv89 = zext i8 %88 to i64
  %89 = load i64, ptr %nextbits, align 8
  %shl90 = shl i64 %conv89, %89
  %90 = load i64, ptr %nextdata, align 8
  %or91 = or i64 %90, %shl90
  store i64 %or91, ptr %nextdata, align 8
  %add92 = add nsw i64 %89, 8
  store i64 %add92, ptr %nextbits, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.then87, %if.else78
  %91 = load i64, ptr %nextdata, align 8
  %92 = load i64, ptr %nbitsmask, align 8
  %and94 = and i64 %91, %92
  %conv95 = trunc i64 %and94 to i32
  %conv96 = and i32 %conv95, 65535
  store i32 %conv96, ptr %code, align 4
  %93 = load i32, ptr %nbits, align 4
  %94 = load i64, ptr %nextdata, align 8
  %sh_prom97 = zext i32 %93 to i64
  %shr98 = ashr i64 %94, %sh_prom97
  store i64 %shr98, ptr %nextdata, align 8
  %conv99 = sext i32 %93 to i64
  %95 = load i64, ptr %nextbits, align 8
  %sub100 = sub nsw i64 %95, %conv99
  store i64 %sub100, ptr %nextbits, align 8
  %96 = load i32, ptr %nbits, align 4
  %conv101 = sext i32 %96 to i64
  %97 = load ptr, ptr %sp, align 8
  %dec_bitsleft102 = getelementptr inbounds %struct.LZWDecodeState, ptr %97, i64 0, i32 3
  %98 = load i64, ptr %dec_bitsleft102, align 8
  %sub103 = sub nsw i64 %98, %conv101
  store i64 %sub103, ptr %dec_bitsleft102, align 8
  br label %if.end104

if.end104:                                        ; preds = %if.end93, %if.then75
  %99 = load i32, ptr %code, align 4
  %cmp105 = icmp eq i32 %99, 257
  br i1 %cmp105, label %while.end, label %if.end108

if.end108:                                        ; preds = %if.end104
  %100 = load i32, ptr %code, align 4
  %conv109 = trunc i32 %100 to i8
  %101 = load ptr, ptr %op, align 8
  %incdec.ptr110 = getelementptr inbounds i8, ptr %101, i64 1
  store ptr %incdec.ptr110, ptr %op, align 8
  store i8 %conv109, ptr %101, align 1
  %102 = load i64, ptr %occ, align 8
  %dec111 = add nsw i64 %102, -1
  store i64 %dec111, ptr %occ, align 8
  %103 = load ptr, ptr %sp, align 8
  %dec_codetab112 = getelementptr inbounds %struct.LZWDecodeState, ptr %103, i64 0, i32 9
  %104 = load ptr, ptr %dec_codetab112, align 8
  %105 = load i32, ptr %code, align 4
  %idx.ext = sext i32 %105 to i64
  %add.ptr113 = getelementptr inbounds %struct.code_ent, ptr %104, i64 %idx.ext
  store ptr %add.ptr113, ptr %oldcodep, align 8
  br label %while.cond, !llvm.loop !18

if.end114:                                        ; preds = %if.end64
  %106 = load ptr, ptr %sp, align 8
  %dec_codetab115 = getelementptr inbounds %struct.LZWDecodeState, ptr %106, i64 0, i32 9
  %107 = load ptr, ptr %dec_codetab115, align 8
  %108 = load i32, ptr %code, align 4
  %idx.ext116 = sext i32 %108 to i64
  %add.ptr117 = getelementptr inbounds %struct.code_ent, ptr %107, i64 %idx.ext116
  store ptr %add.ptr117, ptr %codep, align 8
  %109 = load ptr, ptr %sp, align 8
  %dec_codetab118 = getelementptr inbounds %struct.LZWDecodeState, ptr %109, i64 0, i32 9
  %110 = load ptr, ptr %dec_codetab118, align 8
  %111 = load ptr, ptr %free_entp, align 8
  %cmp119.not = icmp ugt ptr %110, %111
  br i1 %cmp119.not, label %cond.true129, label %land.rhs

land.rhs:                                         ; preds = %if.end114
  %112 = load ptr, ptr %free_entp, align 8
  %113 = load ptr, ptr %sp, align 8
  %dec_codetab121 = getelementptr inbounds %struct.LZWDecodeState, ptr %113, i64 0, i32 9
  %114 = load ptr, ptr %dec_codetab121, align 8
  %arrayidx122 = getelementptr inbounds %struct.code_ent, ptr %114, i64 5119
  %cmp123 = icmp ult ptr %112, %arrayidx122
  br i1 %cmp123, label %cond.end131, label %cond.true129

cond.true129:                                     ; preds = %if.end114, %land.rhs
  call void @__assert_rtn(ptr noundef nonnull @__func__.LZWDecodeCompat, ptr noundef nonnull @.str, i32 noundef 574, ptr noundef nonnull @.str.7) #4
  unreachable

cond.end131:                                      ; preds = %land.rhs
  %115 = load ptr, ptr %oldcodep, align 8
  %116 = load ptr, ptr %free_entp, align 8
  store ptr %115, ptr %116, align 8
  %firstchar = getelementptr inbounds %struct.code_ent, ptr %115, i64 0, i32 3
  %117 = load i8, ptr %firstchar, align 1
  %firstchar134 = getelementptr inbounds %struct.code_ent, ptr %116, i64 0, i32 3
  store i8 %117, ptr %firstchar134, align 1
  %length136 = getelementptr inbounds %struct.code_ent, ptr %115, i64 0, i32 1
  %118 = load i16, ptr %length136, align 8
  %add138 = add i16 %118, 1
  %119 = load ptr, ptr %free_entp, align 8
  %length140 = getelementptr inbounds %struct.code_ent, ptr %119, i64 0, i32 1
  store i16 %add138, ptr %length140, align 8
  %120 = load ptr, ptr %codep, align 8
  %cmp141 = icmp ult ptr %120, %119
  %121 = load ptr, ptr %codep, align 8
  %122 = load ptr, ptr %free_entp, align 8
  %.pn = select i1 %cmp141, ptr %121, ptr %122
  %cond.in.in = getelementptr inbounds %struct.code_ent, ptr %.pn, i64 0, i32 3
  %cond.in1 = load i8, ptr %cond.in.in, align 1
  %123 = load ptr, ptr %free_entp, align 8
  %value151 = getelementptr inbounds %struct.code_ent, ptr %123, i64 0, i32 2
  store i8 %cond.in1, ptr %value151, align 2
  %incdec.ptr152 = getelementptr inbounds %struct.code_ent, ptr %123, i64 1
  store ptr %incdec.ptr152, ptr %free_entp, align 8
  %124 = load ptr, ptr %maxcodep, align 8
  %cmp153 = icmp ugt ptr %incdec.ptr152, %124
  br i1 %cmp153, label %if.then155, label %if.end165

if.then155:                                       ; preds = %cond.end131
  %125 = load i32, ptr %nbits, align 4
  %inc = add nsw i32 %125, 1
  %cmp156 = icmp sgt i32 %125, 11
  %spec.select = select i1 %cmp156, i32 12, i32 %inc
  store i32 %spec.select, ptr %nbits, align 4
  %sh_prom160 = zext i32 %spec.select to i64
  %notmask = shl nsw i64 -1, %sh_prom160
  %sub162 = xor i64 %notmask, -1
  store i64 %sub162, ptr %nbitsmask, align 8
  %126 = load ptr, ptr %sp, align 8
  %dec_codetab163 = getelementptr inbounds %struct.LZWDecodeState, ptr %126, i64 0, i32 9
  %127 = load ptr, ptr %dec_codetab163, align 8
  %add.ptr164 = getelementptr inbounds %struct.code_ent, ptr %127, i64 %sub162
  store ptr %add.ptr164, ptr %maxcodep, align 8
  br label %if.end165

if.end165:                                        ; preds = %if.then155, %cond.end131
  %128 = load ptr, ptr %codep, align 8
  store ptr %128, ptr %oldcodep, align 8
  %129 = load i32, ptr %code, align 4
  %cmp166 = icmp sgt i32 %129, 255
  br i1 %cmp166, label %if.then168, label %if.else209

if.then168:                                       ; preds = %if.end165
  %130 = load ptr, ptr %codep, align 8
  %length169 = getelementptr inbounds %struct.code_ent, ptr %130, i64 0, i32 1
  %131 = load i16, ptr %length169, align 8
  %conv170 = zext i16 %131 to i64
  %132 = load i64, ptr %occ, align 8
  %cmp171 = icmp slt i64 %132, %conv170
  br i1 %cmp171, label %if.then173, label %if.end193

if.then173:                                       ; preds = %if.then168
  %133 = load ptr, ptr %codep, align 8
  %134 = load ptr, ptr %sp, align 8
  %dec_codep174 = getelementptr inbounds %struct.LZWDecodeState, ptr %134, i64 0, i32 5
  store ptr %133, ptr %dec_codep174, align 8
  br label %do.body175

do.body175:                                       ; preds = %do.body175, %if.then173
  %135 = load ptr, ptr %codep, align 8
  %136 = load ptr, ptr %135, align 8
  store ptr %136, ptr %codep, align 8
  %137 = load ptr, ptr %codep, align 8
  %length178 = getelementptr inbounds %struct.code_ent, ptr %137, i64 0, i32 1
  %138 = load i16, ptr %length178, align 8
  %conv179 = zext i16 %138 to i64
  %139 = load i64, ptr %occ, align 8
  %cmp180 = icmp slt i64 %139, %conv179
  br i1 %cmp180, label %do.body175, label %do.end182, !llvm.loop !19

do.end182:                                        ; preds = %do.body175
  %140 = load i64, ptr %occ, align 8
  %141 = load ptr, ptr %sp, align 8
  %dec_restart183 = getelementptr inbounds %struct.LZWDecodeState, ptr %141, i64 0, i32 2
  store i64 %140, ptr %dec_restart183, align 8
  %142 = load ptr, ptr %op, align 8
  %add.ptr184 = getelementptr inbounds i8, ptr %142, i64 %140
  store ptr %add.ptr184, ptr %tp, align 8
  br label %do.body185

do.body185:                                       ; preds = %do.body185, %do.end182
  %143 = load ptr, ptr %codep, align 8
  %value186 = getelementptr inbounds %struct.code_ent, ptr %143, i64 0, i32 2
  %144 = load i8, ptr %value186, align 2
  %145 = load ptr, ptr %tp, align 8
  %incdec.ptr187 = getelementptr inbounds i8, ptr %145, i64 -1
  store ptr %incdec.ptr187, ptr %tp, align 8
  store i8 %144, ptr %incdec.ptr187, align 1
  %146 = load ptr, ptr %codep, align 8
  %147 = load ptr, ptr %146, align 8
  store ptr %147, ptr %codep, align 8
  %148 = load i64, ptr %occ, align 8
  %dec190 = add nsw i64 %148, -1
  store i64 %dec190, ptr %occ, align 8
  %tobool191.not = icmp eq i64 %dec190, 0
  br i1 %tobool191.not, label %while.end, label %do.body185, !llvm.loop !20

if.end193:                                        ; preds = %if.then168
  %149 = load ptr, ptr %codep, align 8
  %length194 = getelementptr inbounds %struct.code_ent, ptr %149, i64 0, i32 1
  %150 = load i16, ptr %length194, align 8
  %151 = load ptr, ptr %op, align 8
  %idx.ext196 = zext i16 %150 to i64
  %add.ptr197 = getelementptr inbounds i8, ptr %151, i64 %idx.ext196
  store ptr %add.ptr197, ptr %op, align 8
  %152 = load ptr, ptr %codep, align 8
  %length198 = getelementptr inbounds %struct.code_ent, ptr %152, i64 0, i32 1
  %153 = load i16, ptr %length198, align 8
  %conv199 = zext i16 %153 to i64
  %154 = load i64, ptr %occ, align 8
  %sub200 = sub nsw i64 %154, %conv199
  store i64 %sub200, ptr %occ, align 8
  %155 = load ptr, ptr %op, align 8
  store ptr %155, ptr %tp, align 8
  br label %do.body201

do.body201:                                       ; preds = %do.body201, %if.end193
  %156 = load ptr, ptr %codep, align 8
  %value202 = getelementptr inbounds %struct.code_ent, ptr %156, i64 0, i32 2
  %157 = load i8, ptr %value202, align 2
  %158 = load ptr, ptr %tp, align 8
  %incdec.ptr203 = getelementptr inbounds i8, ptr %158, i64 -1
  store ptr %incdec.ptr203, ptr %tp, align 8
  store i8 %157, ptr %incdec.ptr203, align 1
  %159 = load ptr, ptr %codep, align 8
  %160 = load ptr, ptr %159, align 8
  store ptr %160, ptr %codep, align 8
  %cmp206.not = icmp eq ptr %160, null
  br i1 %cmp206.not, label %if.end213, label %do.body201, !llvm.loop !21

if.else209:                                       ; preds = %if.end165
  %161 = load i32, ptr %code, align 4
  %conv210 = trunc i32 %161 to i8
  %162 = load ptr, ptr %op, align 8
  %incdec.ptr211 = getelementptr inbounds i8, ptr %162, i64 1
  store ptr %incdec.ptr211, ptr %op, align 8
  store i8 %conv210, ptr %162, align 1
  %163 = load i64, ptr %occ, align 8
  %dec212 = add nsw i64 %163, -1
  store i64 %dec212, ptr %occ, align 8
  br label %if.end213

if.end213:                                        ; preds = %do.body201, %if.else209
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %do.body185, %if.end104, %if.end60, %while.cond
  %164 = load ptr, ptr %bp, align 8
  %165 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp214 = getelementptr inbounds %struct.tiff, ptr %165, i64 0, i32 42
  store ptr %164, ptr %tif_rawcp214, align 8
  %166 = load i32, ptr %nbits, align 4
  %conv215 = trunc i32 %166 to i16
  %167 = load ptr, ptr %sp, align 8
  %nbits217 = getelementptr inbounds %struct.LZWBaseState, ptr %167, i64 0, i32 1
  store i16 %conv215, ptr %nbits217, align 8
  %168 = load i64, ptr %nextdata, align 8
  %nextdata219 = getelementptr inbounds %struct.LZWBaseState, ptr %167, i64 0, i32 4
  store i64 %168, ptr %nextdata219, align 8
  %169 = load i64, ptr %nextbits, align 8
  %170 = load ptr, ptr %sp, align 8
  %nextbits221 = getelementptr inbounds %struct.LZWBaseState, ptr %170, i64 0, i32 5
  store i64 %169, ptr %nextbits221, align 8
  %171 = load i64, ptr %nbitsmask, align 8
  %dec_nbitsmask222 = getelementptr inbounds %struct.LZWDecodeState, ptr %170, i64 0, i32 1
  store i64 %171, ptr %dec_nbitsmask222, align 8
  %172 = load ptr, ptr %oldcodep, align 8
  %173 = load ptr, ptr %sp, align 8
  %dec_oldcodep223 = getelementptr inbounds %struct.LZWDecodeState, ptr %173, i64 0, i32 6
  store ptr %172, ptr %dec_oldcodep223, align 8
  %174 = load ptr, ptr %free_entp, align 8
  %dec_free_entp224 = getelementptr inbounds %struct.LZWDecodeState, ptr %173, i64 0, i32 7
  store ptr %174, ptr %dec_free_entp224, align 8
  %175 = load ptr, ptr %maxcodep, align 8
  %176 = load ptr, ptr %sp, align 8
  %dec_maxcodep225 = getelementptr inbounds %struct.LZWDecodeState, ptr %176, i64 0, i32 8
  store ptr %175, ptr %dec_maxcodep225, align 8
  %177 = load i64, ptr %occ, align 8
  %cmp226 = icmp sgt i64 %177, 0
  br i1 %cmp226, label %if.then228, label %if.end230

if.then228:                                       ; preds = %while.end
  %178 = load ptr, ptr %tif.addr, align 8
  %179 = load ptr, ptr %178, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %178, i64 0, i32 11
  %180 = load i64, ptr %tif_row, align 8
  %181 = load i64, ptr %occ, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %179, ptr noundef nonnull @.str.8, i64 noundef %180, i64 noundef %181) #5
  store i32 0, ptr %retval, align 4
  br label %return

if.end230:                                        ; preds = %while.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end230, %if.then228, %do.end15
  %182 = load i32, ptr %retval, align 4
  ret i32 %182
}

declare void @_TIFFmemset(ptr noundef, i32 noundef, i64 noundef) #2

declare void @_TIFFfree(ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
