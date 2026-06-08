; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2dither/tif_lzw.c'
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFInitLZW(ptr noundef %tif, i32 noundef %scheme) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %scheme.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %scheme, ptr %scheme.addr, align 4
  %0 = load i32, ptr %scheme.addr, align 4
  %cmp = icmp eq i32 %0, 5
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.TIFFInitLZW, ptr noundef @.str, i32 noundef 663, ptr noundef @.str.1) #3
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  %call = call ptr @_TIFFmalloc(i32 noundef 184)
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 37
  store ptr %call, ptr %tif_data, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_data1 = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 37
  %4 = load ptr, ptr %tif_data1, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %bad

if.end:                                           ; preds = %cond.end
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %tif_mode, align 4
  %cmp4 = icmp eq i32 %6, 0
  br i1 %cmp4, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_data7 = getelementptr inbounds %struct.tiff, ptr %7, i32 0, i32 37
  %8 = load ptr, ptr %tif_data7, align 8
  %dec_codetab = getelementptr inbounds %struct.LZWDecodeState, ptr %8, i32 0, i32 9
  store ptr null, ptr %dec_codetab, align 8
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_data8 = getelementptr inbounds %struct.tiff, ptr %9, i32 0, i32 37
  %10 = load ptr, ptr %tif_data8, align 8
  %dec_decode = getelementptr inbounds %struct.LZWDecodeState, ptr %10, i32 0, i32 4
  store ptr null, ptr %dec_decode, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  %11 = load ptr, ptr %tif.addr, align 8
  %tif_setupdecode = getelementptr inbounds %struct.tiff, ptr %11, i32 0, i32 21
  store ptr @LZWSetupDecode, ptr %tif_setupdecode, align 8
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_predecode = getelementptr inbounds %struct.tiff, ptr %12, i32 0, i32 22
  store ptr @LZWPreDecode, ptr %tif_predecode, align 8
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %13, i32 0, i32 26
  store ptr @LZWDecode, ptr %tif_decoderow, align 8
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %14, i32 0, i32 28
  store ptr @LZWDecode, ptr %tif_decodestrip, align 8
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %15, i32 0, i32 30
  store ptr @LZWDecode, ptr %tif_decodetile, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_setupencode = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 23
  store ptr @_LZWtrue, ptr %tif_setupencode, align 8
  %17 = load ptr, ptr %tif.addr, align 8
  %tif_preencode = getelementptr inbounds %struct.tiff, ptr %17, i32 0, i32 24
  store ptr @_TIFFNoPreCode, ptr %tif_preencode, align 8
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_postencode = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 25
  store ptr @_LZWtrue, ptr %tif_postencode, align 8
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_encoderow = getelementptr inbounds %struct.tiff, ptr %19, i32 0, i32 27
  store ptr @_TIFFNoRowEncode, ptr %tif_encoderow, align 8
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_encodestrip = getelementptr inbounds %struct.tiff, ptr %20, i32 0, i32 29
  store ptr @_TIFFNoStripEncode, ptr %tif_encodestrip, align 8
  %21 = load ptr, ptr %tif.addr, align 8
  %tif_encodetile = getelementptr inbounds %struct.tiff, ptr %21, i32 0, i32 31
  store ptr @_TIFFNoTileEncode, ptr %tif_encodetile, align 8
  %22 = load ptr, ptr %tif.addr, align 8
  %tif_cleanup = getelementptr inbounds %struct.tiff, ptr %22, i32 0, i32 34
  store ptr @LZWCleanup, ptr %tif_cleanup, align 8
  %23 = load ptr, ptr %tif.addr, align 8
  %call10 = call i32 @TIFFPredictorInit(ptr noundef %23)
  store i32 1, ptr %retval, align 4
  br label %return

bad:                                              ; preds = %if.then
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @__func__.TIFFInitLZW, ptr noundef @.str.2)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %bad, %if.end9
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare ptr @_TIFFmalloc(i32 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @LZWSetupDecode(ptr noundef %tif) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %code = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load ptr, ptr %sp, align 8
  %cmp = icmp ne ptr %2, null
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.LZWSetupDecode, ptr noundef @.str, i32 noundef 196, ptr noundef @.str.3) #3
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  %4 = load ptr, ptr %sp, align 8
  %dec_codetab = getelementptr inbounds %struct.LZWDecodeState, ptr %4, i32 0, i32 9
  %5 = load ptr, ptr %dec_codetab, align 8
  %cmp1 = icmp eq ptr %5, null
  br i1 %cmp1, label %if.then, label %if.end22

if.then:                                          ; preds = %cond.end
  %call = call ptr @_TIFFmalloc(i32 noundef 81904)
  %6 = load ptr, ptr %sp, align 8
  %dec_codetab3 = getelementptr inbounds %struct.LZWDecodeState, ptr %6, i32 0, i32 9
  store ptr %call, ptr %dec_codetab3, align 8
  %7 = load ptr, ptr %sp, align 8
  %dec_codetab4 = getelementptr inbounds %struct.LZWDecodeState, ptr %7, i32 0, i32 9
  %8 = load ptr, ptr %dec_codetab4, align 8
  %cmp5 = icmp eq ptr %8, null
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @LZWSetupDecode.module, ptr noundef @.str.4)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  store i32 255, ptr %code, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, ptr %code, align 4
  %cmp8 = icmp sge i32 %9, 0
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, ptr %code, align 4
  %conv10 = trunc i32 %10 to i8
  %11 = load ptr, ptr %sp, align 8
  %dec_codetab11 = getelementptr inbounds %struct.LZWDecodeState, ptr %11, i32 0, i32 9
  %12 = load ptr, ptr %dec_codetab11, align 8
  %13 = load i32, ptr %code, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds %struct.code_ent, ptr %12, i64 %idxprom
  %value = getelementptr inbounds %struct.code_ent, ptr %arrayidx, i32 0, i32 2
  store i8 %conv10, ptr %value, align 2
  %14 = load i32, ptr %code, align 4
  %conv12 = trunc i32 %14 to i8
  %15 = load ptr, ptr %sp, align 8
  %dec_codetab13 = getelementptr inbounds %struct.LZWDecodeState, ptr %15, i32 0, i32 9
  %16 = load ptr, ptr %dec_codetab13, align 8
  %17 = load i32, ptr %code, align 4
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds %struct.code_ent, ptr %16, i64 %idxprom14
  %firstchar = getelementptr inbounds %struct.code_ent, ptr %arrayidx15, i32 0, i32 3
  store i8 %conv12, ptr %firstchar, align 1
  %18 = load ptr, ptr %sp, align 8
  %dec_codetab16 = getelementptr inbounds %struct.LZWDecodeState, ptr %18, i32 0, i32 9
  %19 = load ptr, ptr %dec_codetab16, align 8
  %20 = load i32, ptr %code, align 4
  %idxprom17 = sext i32 %20 to i64
  %arrayidx18 = getelementptr inbounds %struct.code_ent, ptr %19, i64 %idxprom17
  %length = getelementptr inbounds %struct.code_ent, ptr %arrayidx18, i32 0, i32 1
  store i16 1, ptr %length, align 8
  %21 = load ptr, ptr %sp, align 8
  %dec_codetab19 = getelementptr inbounds %struct.LZWDecodeState, ptr %21, i32 0, i32 9
  %22 = load ptr, ptr %dec_codetab19, align 8
  %23 = load i32, ptr %code, align 4
  %idxprom20 = sext i32 %23 to i64
  %arrayidx21 = getelementptr inbounds %struct.code_ent, ptr %22, i64 %idxprom20
  %next = getelementptr inbounds %struct.code_ent, ptr %arrayidx21, i32 0, i32 0
  store ptr null, ptr %next, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, ptr %code, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, ptr %code, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end22

if.end22:                                         ; preds = %for.end, %cond.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end22, %if.then7
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @LZWPreDecode(ptr noundef %tif, i16 noundef zeroext %s) #0 {
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
  call void @__assert_rtn(ptr noundef @__func__.LZWPreDecode, ptr noundef @.str, i32 noundef 225, ptr noundef @.str.3) #3
  unreachable

4:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %4
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 40
  %6 = load ptr, ptr %tif_rawdata, align 8
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx, align 1
  %conv1 = zext i8 %7 to i32
  %cmp2 = icmp eq i32 %conv1, 0
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata4 = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 40
  %9 = load ptr, ptr %tif_rawdata4, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %9, i64 1
  %10 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %10 to i32
  %and = and i32 %conv6, 1
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %11 = load ptr, ptr %sp, align 8
  %dec_decode = getelementptr inbounds %struct.LZWDecodeState, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %dec_decode, align 8
  %tobool8 = icmp ne ptr %12, null
  br i1 %tobool8, label %if.end, label %if.then9

if.then9:                                         ; preds = %if.then
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %tif_name, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %14, ptr noundef @.str.5)
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %15, i32 0, i32 26
  store ptr @LZWDecodeCompat, ptr %tif_decoderow, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 28
  store ptr @LZWDecodeCompat, ptr %tif_decodestrip, align 8
  %17 = load ptr, ptr %tif.addr, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %17, i32 0, i32 30
  store ptr @LZWDecodeCompat, ptr %tif_decodetile, align 8
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_setupdecode = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 21
  %19 = load ptr, ptr %tif_setupdecode, align 8
  %20 = load ptr, ptr %tif.addr, align 8
  %call = call i32 %19(ptr noundef %20)
  %21 = load ptr, ptr %sp, align 8
  %dec_decode10 = getelementptr inbounds %struct.LZWDecodeState, ptr %21, i32 0, i32 4
  store ptr @LZWDecodeCompat, ptr %dec_decode10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  %22 = load ptr, ptr %sp, align 8
  %base = getelementptr inbounds %struct.LZWDecodeState, ptr %22, i32 0, i32 0
  %maxcode = getelementptr inbounds %struct.LZWBaseState, ptr %base, i32 0, i32 2
  store i16 511, ptr %maxcode, align 2
  br label %if.end14

if.else:                                          ; preds = %land.lhs.true, %cond.end
  %23 = load ptr, ptr %sp, align 8
  %base11 = getelementptr inbounds %struct.LZWDecodeState, ptr %23, i32 0, i32 0
  %maxcode12 = getelementptr inbounds %struct.LZWBaseState, ptr %base11, i32 0, i32 2
  store i16 510, ptr %maxcode12, align 2
  %24 = load ptr, ptr %sp, align 8
  %dec_decode13 = getelementptr inbounds %struct.LZWDecodeState, ptr %24, i32 0, i32 4
  store ptr @LZWDecode, ptr %dec_decode13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end
  %25 = load ptr, ptr %sp, align 8
  %base15 = getelementptr inbounds %struct.LZWDecodeState, ptr %25, i32 0, i32 0
  %nbits = getelementptr inbounds %struct.LZWBaseState, ptr %base15, i32 0, i32 1
  store i16 9, ptr %nbits, align 8
  %26 = load ptr, ptr %sp, align 8
  %base16 = getelementptr inbounds %struct.LZWDecodeState, ptr %26, i32 0, i32 0
  %nextbits = getelementptr inbounds %struct.LZWBaseState, ptr %base16, i32 0, i32 5
  store i64 0, ptr %nextbits, align 8
  %27 = load ptr, ptr %sp, align 8
  %base17 = getelementptr inbounds %struct.LZWDecodeState, ptr %27, i32 0, i32 0
  %nextdata = getelementptr inbounds %struct.LZWBaseState, ptr %base17, i32 0, i32 4
  store i64 0, ptr %nextdata, align 8
  %28 = load ptr, ptr %sp, align 8
  %dec_restart = getelementptr inbounds %struct.LZWDecodeState, ptr %28, i32 0, i32 2
  store i64 0, ptr %dec_restart, align 8
  %29 = load ptr, ptr %sp, align 8
  %dec_nbitsmask = getelementptr inbounds %struct.LZWDecodeState, ptr %29, i32 0, i32 1
  store i64 511, ptr %dec_nbitsmask, align 8
  %30 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %30, i32 0, i32 43
  %31 = load i32, ptr %tif_rawcc, align 8
  %shl = shl i32 %31, 3
  %conv18 = sext i32 %shl to i64
  %32 = load ptr, ptr %sp, align 8
  %dec_bitsleft = getelementptr inbounds %struct.LZWDecodeState, ptr %32, i32 0, i32 3
  store i64 %conv18, ptr %dec_bitsleft, align 8
  %33 = load ptr, ptr %sp, align 8
  %dec_codetab = getelementptr inbounds %struct.LZWDecodeState, ptr %33, i32 0, i32 9
  %34 = load ptr, ptr %dec_codetab, align 8
  %add.ptr = getelementptr inbounds %struct.code_ent, ptr %34, i64 258
  %35 = load ptr, ptr %sp, align 8
  %dec_free_entp = getelementptr inbounds %struct.LZWDecodeState, ptr %35, i32 0, i32 7
  store ptr %add.ptr, ptr %dec_free_entp, align 8
  %36 = load ptr, ptr %sp, align 8
  %dec_free_entp19 = getelementptr inbounds %struct.LZWDecodeState, ptr %36, i32 0, i32 7
  %37 = load ptr, ptr %dec_free_entp19, align 8
  call void @_TIFFmemset(ptr noundef %37, i32 noundef 0, i32 noundef 77776)
  %38 = load ptr, ptr %sp, align 8
  %dec_codetab20 = getelementptr inbounds %struct.LZWDecodeState, ptr %38, i32 0, i32 9
  %39 = load ptr, ptr %dec_codetab20, align 8
  %arrayidx21 = getelementptr inbounds %struct.code_ent, ptr %39, i64 -1
  %40 = load ptr, ptr %sp, align 8
  %dec_oldcodep = getelementptr inbounds %struct.LZWDecodeState, ptr %40, i32 0, i32 6
  store ptr %arrayidx21, ptr %dec_oldcodep, align 8
  %41 = load ptr, ptr %sp, align 8
  %dec_codetab22 = getelementptr inbounds %struct.LZWDecodeState, ptr %41, i32 0, i32 9
  %42 = load ptr, ptr %dec_codetab22, align 8
  %43 = load ptr, ptr %sp, align 8
  %dec_nbitsmask23 = getelementptr inbounds %struct.LZWDecodeState, ptr %43, i32 0, i32 1
  %44 = load i64, ptr %dec_nbitsmask23, align 8
  %sub = sub nsw i64 %44, 1
  %arrayidx24 = getelementptr inbounds %struct.code_ent, ptr %42, i64 %sub
  %45 = load ptr, ptr %sp, align 8
  %dec_maxcodep = getelementptr inbounds %struct.LZWDecodeState, ptr %45, i32 0, i32 8
  store ptr %arrayidx24, ptr %dec_maxcodep, align 8
  ret i32 1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @LZWDecode(ptr noundef %tif, ptr noundef %op0, i32 noundef %occ0, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %op0.addr = alloca ptr, align 8
  %occ0.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
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
  %t = alloca i32, align 4
  %t225 = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %op0, ptr %op0.addr, align 8
  store i32 %occ0, ptr %occ0.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load ptr, ptr %op0.addr, align 8
  store ptr %2, ptr %op, align 8
  %3 = load i32, ptr %occ0.addr, align 4
  %conv = sext i32 %3 to i64
  store i64 %conv, ptr %occ, align 8
  %4 = load i16, ptr %s.addr, align 2
  %5 = load ptr, ptr %sp, align 8
  %cmp = icmp ne ptr %5, null
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv2 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.LZWDecode, ptr noundef @.str, i32 noundef 324, ptr noundef @.str.3) #3
  unreachable

6:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %6
  %7 = load ptr, ptr %sp, align 8
  %dec_restart = getelementptr inbounds %struct.LZWDecodeState, ptr %7, i32 0, i32 2
  %8 = load i64, ptr %dec_restart, align 8
  %tobool3 = icmp ne i64 %8, 0
  br i1 %tobool3, label %if.then, label %if.end41

if.then:                                          ; preds = %cond.end
  %9 = load ptr, ptr %sp, align 8
  %dec_codep = getelementptr inbounds %struct.LZWDecodeState, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %dec_codep, align 8
  store ptr %10, ptr %codep, align 8
  %11 = load ptr, ptr %codep, align 8
  %length = getelementptr inbounds %struct.code_ent, ptr %11, i32 0, i32 1
  %12 = load i16, ptr %length, align 8
  %conv4 = zext i16 %12 to i64
  %13 = load ptr, ptr %sp, align 8
  %dec_restart5 = getelementptr inbounds %struct.LZWDecodeState, ptr %13, i32 0, i32 2
  %14 = load i64, ptr %dec_restart5, align 8
  %sub = sub nsw i64 %conv4, %14
  store i64 %sub, ptr %residue, align 8
  %15 = load i64, ptr %residue, align 8
  %16 = load i64, ptr %occ, align 8
  %cmp6 = icmp sgt i64 %15, %16
  br i1 %cmp6, label %if.then8, label %if.end24

if.then8:                                         ; preds = %if.then
  %17 = load i64, ptr %occ, align 8
  %18 = load ptr, ptr %sp, align 8
  %dec_restart9 = getelementptr inbounds %struct.LZWDecodeState, ptr %18, i32 0, i32 2
  %19 = load i64, ptr %dec_restart9, align 8
  %add = add nsw i64 %19, %17
  store i64 %add, ptr %dec_restart9, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then8
  %20 = load ptr, ptr %codep, align 8
  %next = getelementptr inbounds %struct.code_ent, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %next, align 8
  store ptr %21, ptr %codep, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %22 = load i64, ptr %residue, align 8
  %dec = add nsw i64 %22, -1
  store i64 %dec, ptr %residue, align 8
  %23 = load i64, ptr %occ, align 8
  %cmp10 = icmp sgt i64 %dec, %23
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %24 = load ptr, ptr %codep, align 8
  %tobool12 = icmp ne ptr %24, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %25 = phi i1 [ false, %do.cond ], [ %tobool12, %land.rhs ]
  br i1 %25, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %land.end
  %26 = load ptr, ptr %codep, align 8
  %tobool13 = icmp ne ptr %26, null
  br i1 %tobool13, label %if.then14, label %if.end

if.then14:                                        ; preds = %do.end
  %27 = load ptr, ptr %op, align 8
  %28 = load i64, ptr %occ, align 8
  %add.ptr = getelementptr inbounds i8, ptr %27, i64 %28
  store ptr %add.ptr, ptr %tp, align 8
  br label %do.body15

do.body15:                                        ; preds = %land.end22, %if.then14
  %29 = load ptr, ptr %codep, align 8
  %value = getelementptr inbounds %struct.code_ent, ptr %29, i32 0, i32 2
  %30 = load i8, ptr %value, align 2
  %31 = load ptr, ptr %tp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %31, i32 -1
  store ptr %incdec.ptr, ptr %tp, align 8
  store i8 %30, ptr %incdec.ptr, align 1
  %32 = load ptr, ptr %codep, align 8
  %next16 = getelementptr inbounds %struct.code_ent, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %next16, align 8
  store ptr %33, ptr %codep, align 8
  br label %do.cond17

do.cond17:                                        ; preds = %do.body15
  %34 = load i64, ptr %occ, align 8
  %dec18 = add nsw i64 %34, -1
  store i64 %dec18, ptr %occ, align 8
  %tobool19 = icmp ne i64 %dec18, 0
  br i1 %tobool19, label %land.rhs20, label %land.end22

land.rhs20:                                       ; preds = %do.cond17
  %35 = load ptr, ptr %codep, align 8
  %tobool21 = icmp ne ptr %35, null
  br label %land.end22

land.end22:                                       ; preds = %land.rhs20, %do.cond17
  %36 = phi i1 [ false, %do.cond17 ], [ %tobool21, %land.rhs20 ]
  br i1 %36, label %do.body15, label %do.end23, !llvm.loop !9

do.end23:                                         ; preds = %land.end22
  br label %if.end

if.end:                                           ; preds = %do.end23, %do.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.then
  %37 = load i64, ptr %residue, align 8
  %38 = load ptr, ptr %op, align 8
  %add.ptr25 = getelementptr inbounds i8, ptr %38, i64 %37
  store ptr %add.ptr25, ptr %op, align 8
  %39 = load i64, ptr %residue, align 8
  %40 = load i64, ptr %occ, align 8
  %sub26 = sub nsw i64 %40, %39
  store i64 %sub26, ptr %occ, align 8
  %41 = load ptr, ptr %op, align 8
  store ptr %41, ptr %tp, align 8
  br label %do.body27

do.body27:                                        ; preds = %land.end38, %if.end24
  %42 = load ptr, ptr %tp, align 8
  %incdec.ptr28 = getelementptr inbounds i8, ptr %42, i32 -1
  store ptr %incdec.ptr28, ptr %tp, align 8
  %43 = load ptr, ptr %codep, align 8
  %value29 = getelementptr inbounds %struct.code_ent, ptr %43, i32 0, i32 2
  %44 = load i8, ptr %value29, align 2
  %conv30 = zext i8 %44 to i32
  store i32 %conv30, ptr %t, align 4
  %45 = load ptr, ptr %codep, align 8
  %next31 = getelementptr inbounds %struct.code_ent, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %next31, align 8
  store ptr %46, ptr %codep, align 8
  %47 = load i32, ptr %t, align 4
  %conv32 = trunc i32 %47 to i8
  %48 = load ptr, ptr %tp, align 8
  store i8 %conv32, ptr %48, align 1
  br label %do.cond33

do.cond33:                                        ; preds = %do.body27
  %49 = load i64, ptr %residue, align 8
  %dec34 = add nsw i64 %49, -1
  store i64 %dec34, ptr %residue, align 8
  %tobool35 = icmp ne i64 %dec34, 0
  br i1 %tobool35, label %land.rhs36, label %land.end38

land.rhs36:                                       ; preds = %do.cond33
  %50 = load ptr, ptr %codep, align 8
  %tobool37 = icmp ne ptr %50, null
  br label %land.end38

land.end38:                                       ; preds = %land.rhs36, %do.cond33
  %51 = phi i1 [ false, %do.cond33 ], [ %tobool37, %land.rhs36 ]
  br i1 %51, label %do.body27, label %do.end39, !llvm.loop !10

do.end39:                                         ; preds = %land.end38
  %52 = load ptr, ptr %sp, align 8
  %dec_restart40 = getelementptr inbounds %struct.LZWDecodeState, ptr %52, i32 0, i32 2
  store i64 0, ptr %dec_restart40, align 8
  br label %if.end41

if.end41:                                         ; preds = %do.end39, %cond.end
  %53 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %53, i32 0, i32 42
  %54 = load ptr, ptr %tif_rawcp, align 8
  store ptr %54, ptr %bp, align 8
  %55 = load ptr, ptr %sp, align 8
  %base = getelementptr inbounds %struct.LZWDecodeState, ptr %55, i32 0, i32 0
  %nbits42 = getelementptr inbounds %struct.LZWBaseState, ptr %base, i32 0, i32 1
  %56 = load i16, ptr %nbits42, align 8
  %conv43 = zext i16 %56 to i64
  store i64 %conv43, ptr %nbits, align 8
  %57 = load ptr, ptr %sp, align 8
  %base44 = getelementptr inbounds %struct.LZWDecodeState, ptr %57, i32 0, i32 0
  %nextdata45 = getelementptr inbounds %struct.LZWBaseState, ptr %base44, i32 0, i32 4
  %58 = load i64, ptr %nextdata45, align 8
  store i64 %58, ptr %nextdata, align 8
  %59 = load ptr, ptr %sp, align 8
  %base46 = getelementptr inbounds %struct.LZWDecodeState, ptr %59, i32 0, i32 0
  %nextbits47 = getelementptr inbounds %struct.LZWBaseState, ptr %base46, i32 0, i32 5
  %60 = load i64, ptr %nextbits47, align 8
  store i64 %60, ptr %nextbits, align 8
  %61 = load ptr, ptr %sp, align 8
  %dec_nbitsmask = getelementptr inbounds %struct.LZWDecodeState, ptr %61, i32 0, i32 1
  %62 = load i64, ptr %dec_nbitsmask, align 8
  store i64 %62, ptr %nbitsmask, align 8
  %63 = load ptr, ptr %sp, align 8
  %dec_oldcodep = getelementptr inbounds %struct.LZWDecodeState, ptr %63, i32 0, i32 6
  %64 = load ptr, ptr %dec_oldcodep, align 8
  store ptr %64, ptr %oldcodep, align 8
  %65 = load ptr, ptr %sp, align 8
  %dec_free_entp = getelementptr inbounds %struct.LZWDecodeState, ptr %65, i32 0, i32 7
  %66 = load ptr, ptr %dec_free_entp, align 8
  store ptr %66, ptr %free_entp, align 8
  %67 = load ptr, ptr %sp, align 8
  %dec_maxcodep = getelementptr inbounds %struct.LZWDecodeState, ptr %67, i32 0, i32 8
  %68 = load ptr, ptr %dec_maxcodep, align 8
  store ptr %68, ptr %maxcodep, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end249, %if.end117, %if.end41
  %69 = load i64, ptr %occ, align 8
  %cmp48 = icmp sgt i64 %69, 0
  br i1 %cmp48, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %70 = load ptr, ptr %sp, align 8
  %dec_bitsleft = getelementptr inbounds %struct.LZWDecodeState, ptr %70, i32 0, i32 3
  %71 = load i64, ptr %dec_bitsleft, align 8
  %72 = load i64, ptr %nbits, align 8
  %cmp50 = icmp slt i64 %71, %72
  br i1 %cmp50, label %if.then52, label %if.else

if.then52:                                        ; preds = %while.body
  %73 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %73, i32 0, i32 0
  %74 = load ptr, ptr %tif_name, align 8
  %75 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %75, i32 0, i32 13
  %76 = load i32, ptr %tif_curstrip, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %74, ptr noundef @.str.6, i32 noundef %76)
  store i16 257, ptr %code, align 2
  br label %if.end70

if.else:                                          ; preds = %while.body
  %77 = load i64, ptr %nextdata, align 8
  %shl = shl i64 %77, 8
  %78 = load ptr, ptr %bp, align 8
  %incdec.ptr53 = getelementptr inbounds i8, ptr %78, i32 1
  store ptr %incdec.ptr53, ptr %bp, align 8
  %79 = load i8, ptr %78, align 1
  %conv54 = zext i8 %79 to i64
  %or = or i64 %shl, %conv54
  store i64 %or, ptr %nextdata, align 8
  %80 = load i64, ptr %nextbits, align 8
  %add55 = add nsw i64 %80, 8
  store i64 %add55, ptr %nextbits, align 8
  %81 = load i64, ptr %nextbits, align 8
  %82 = load i64, ptr %nbits, align 8
  %cmp56 = icmp slt i64 %81, %82
  br i1 %cmp56, label %if.then58, label %if.end64

if.then58:                                        ; preds = %if.else
  %83 = load i64, ptr %nextdata, align 8
  %shl59 = shl i64 %83, 8
  %84 = load ptr, ptr %bp, align 8
  %incdec.ptr60 = getelementptr inbounds i8, ptr %84, i32 1
  store ptr %incdec.ptr60, ptr %bp, align 8
  %85 = load i8, ptr %84, align 1
  %conv61 = zext i8 %85 to i64
  %or62 = or i64 %shl59, %conv61
  store i64 %or62, ptr %nextdata, align 8
  %86 = load i64, ptr %nextbits, align 8
  %add63 = add nsw i64 %86, 8
  store i64 %add63, ptr %nextbits, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then58, %if.else
  %87 = load i64, ptr %nextdata, align 8
  %88 = load i64, ptr %nextbits, align 8
  %89 = load i64, ptr %nbits, align 8
  %sub65 = sub nsw i64 %88, %89
  %shr = ashr i64 %87, %sub65
  %90 = load i64, ptr %nbitsmask, align 8
  %and = and i64 %shr, %90
  %conv66 = trunc i64 %and to i16
  store i16 %conv66, ptr %code, align 2
  %91 = load i64, ptr %nbits, align 8
  %92 = load i64, ptr %nextbits, align 8
  %sub67 = sub nsw i64 %92, %91
  store i64 %sub67, ptr %nextbits, align 8
  %93 = load i64, ptr %nbits, align 8
  %94 = load ptr, ptr %sp, align 8
  %dec_bitsleft68 = getelementptr inbounds %struct.LZWDecodeState, ptr %94, i32 0, i32 3
  %95 = load i64, ptr %dec_bitsleft68, align 8
  %sub69 = sub nsw i64 %95, %93
  store i64 %sub69, ptr %dec_bitsleft68, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.end64, %if.then52
  %96 = load i16, ptr %code, align 2
  %conv71 = zext i16 %96 to i32
  %cmp72 = icmp eq i32 %conv71, 257
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end70
  br label %while.end

if.end75:                                         ; preds = %if.end70
  %97 = load i16, ptr %code, align 2
  %conv76 = zext i16 %97 to i32
  %cmp77 = icmp eq i32 %conv76, 256
  br i1 %cmp77, label %if.then79, label %if.end124

if.then79:                                        ; preds = %if.end75
  %98 = load ptr, ptr %sp, align 8
  %dec_codetab = getelementptr inbounds %struct.LZWDecodeState, ptr %98, i32 0, i32 9
  %99 = load ptr, ptr %dec_codetab, align 8
  %add.ptr80 = getelementptr inbounds %struct.code_ent, ptr %99, i64 258
  store ptr %add.ptr80, ptr %free_entp, align 8
  store i64 9, ptr %nbits, align 8
  store i64 511, ptr %nbitsmask, align 8
  %100 = load ptr, ptr %sp, align 8
  %dec_codetab81 = getelementptr inbounds %struct.LZWDecodeState, ptr %100, i32 0, i32 9
  %101 = load ptr, ptr %dec_codetab81, align 8
  %102 = load i64, ptr %nbitsmask, align 8
  %add.ptr82 = getelementptr inbounds %struct.code_ent, ptr %101, i64 %102
  %add.ptr83 = getelementptr inbounds %struct.code_ent, ptr %add.ptr82, i64 -1
  store ptr %add.ptr83, ptr %maxcodep, align 8
  %103 = load ptr, ptr %sp, align 8
  %dec_bitsleft84 = getelementptr inbounds %struct.LZWDecodeState, ptr %103, i32 0, i32 3
  %104 = load i64, ptr %dec_bitsleft84, align 8
  %105 = load i64, ptr %nbits, align 8
  %cmp85 = icmp slt i64 %104, %105
  br i1 %cmp85, label %if.then87, label %if.else90

if.then87:                                        ; preds = %if.then79
  %106 = load ptr, ptr %tif.addr, align 8
  %tif_name88 = getelementptr inbounds %struct.tiff, ptr %106, i32 0, i32 0
  %107 = load ptr, ptr %tif_name88, align 8
  %108 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip89 = getelementptr inbounds %struct.tiff, ptr %108, i32 0, i32 13
  %109 = load i32, ptr %tif_curstrip89, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %107, ptr noundef @.str.6, i32 noundef %109)
  store i16 257, ptr %code, align 2
  br label %if.end112

if.else90:                                        ; preds = %if.then79
  %110 = load i64, ptr %nextdata, align 8
  %shl91 = shl i64 %110, 8
  %111 = load ptr, ptr %bp, align 8
  %incdec.ptr92 = getelementptr inbounds i8, ptr %111, i32 1
  store ptr %incdec.ptr92, ptr %bp, align 8
  %112 = load i8, ptr %111, align 1
  %conv93 = zext i8 %112 to i64
  %or94 = or i64 %shl91, %conv93
  store i64 %or94, ptr %nextdata, align 8
  %113 = load i64, ptr %nextbits, align 8
  %add95 = add nsw i64 %113, 8
  store i64 %add95, ptr %nextbits, align 8
  %114 = load i64, ptr %nextbits, align 8
  %115 = load i64, ptr %nbits, align 8
  %cmp96 = icmp slt i64 %114, %115
  br i1 %cmp96, label %if.then98, label %if.end104

if.then98:                                        ; preds = %if.else90
  %116 = load i64, ptr %nextdata, align 8
  %shl99 = shl i64 %116, 8
  %117 = load ptr, ptr %bp, align 8
  %incdec.ptr100 = getelementptr inbounds i8, ptr %117, i32 1
  store ptr %incdec.ptr100, ptr %bp, align 8
  %118 = load i8, ptr %117, align 1
  %conv101 = zext i8 %118 to i64
  %or102 = or i64 %shl99, %conv101
  store i64 %or102, ptr %nextdata, align 8
  %119 = load i64, ptr %nextbits, align 8
  %add103 = add nsw i64 %119, 8
  store i64 %add103, ptr %nextbits, align 8
  br label %if.end104

if.end104:                                        ; preds = %if.then98, %if.else90
  %120 = load i64, ptr %nextdata, align 8
  %121 = load i64, ptr %nextbits, align 8
  %122 = load i64, ptr %nbits, align 8
  %sub105 = sub nsw i64 %121, %122
  %shr106 = ashr i64 %120, %sub105
  %123 = load i64, ptr %nbitsmask, align 8
  %and107 = and i64 %shr106, %123
  %conv108 = trunc i64 %and107 to i16
  store i16 %conv108, ptr %code, align 2
  %124 = load i64, ptr %nbits, align 8
  %125 = load i64, ptr %nextbits, align 8
  %sub109 = sub nsw i64 %125, %124
  store i64 %sub109, ptr %nextbits, align 8
  %126 = load i64, ptr %nbits, align 8
  %127 = load ptr, ptr %sp, align 8
  %dec_bitsleft110 = getelementptr inbounds %struct.LZWDecodeState, ptr %127, i32 0, i32 3
  %128 = load i64, ptr %dec_bitsleft110, align 8
  %sub111 = sub nsw i64 %128, %126
  store i64 %sub111, ptr %dec_bitsleft110, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.end104, %if.then87
  %129 = load i16, ptr %code, align 2
  %conv113 = zext i16 %129 to i32
  %cmp114 = icmp eq i32 %conv113, 257
  br i1 %cmp114, label %if.then116, label %if.end117

if.then116:                                       ; preds = %if.end112
  br label %while.end

if.end117:                                        ; preds = %if.end112
  %130 = load i16, ptr %code, align 2
  %conv118 = trunc i16 %130 to i8
  %131 = load ptr, ptr %op, align 8
  %incdec.ptr119 = getelementptr inbounds i8, ptr %131, i32 1
  store ptr %incdec.ptr119, ptr %op, align 8
  store i8 %conv118, ptr %131, align 1
  %132 = load i64, ptr %occ, align 8
  %dec120 = add nsw i64 %132, -1
  store i64 %dec120, ptr %occ, align 8
  %133 = load ptr, ptr %sp, align 8
  %dec_codetab121 = getelementptr inbounds %struct.LZWDecodeState, ptr %133, i32 0, i32 9
  %134 = load ptr, ptr %dec_codetab121, align 8
  %135 = load i16, ptr %code, align 2
  %conv122 = zext i16 %135 to i32
  %idx.ext = sext i32 %conv122 to i64
  %add.ptr123 = getelementptr inbounds %struct.code_ent, ptr %134, i64 %idx.ext
  store ptr %add.ptr123, ptr %oldcodep, align 8
  br label %while.cond, !llvm.loop !11

if.end124:                                        ; preds = %if.end75
  %136 = load ptr, ptr %sp, align 8
  %dec_codetab125 = getelementptr inbounds %struct.LZWDecodeState, ptr %136, i32 0, i32 9
  %137 = load ptr, ptr %dec_codetab125, align 8
  %138 = load i16, ptr %code, align 2
  %conv126 = zext i16 %138 to i32
  %idx.ext127 = sext i32 %conv126 to i64
  %add.ptr128 = getelementptr inbounds %struct.code_ent, ptr %137, i64 %idx.ext127
  store ptr %add.ptr128, ptr %codep, align 8
  %139 = load ptr, ptr %sp, align 8
  %dec_codetab129 = getelementptr inbounds %struct.LZWDecodeState, ptr %139, i32 0, i32 9
  %140 = load ptr, ptr %dec_codetab129, align 8
  %arrayidx = getelementptr inbounds %struct.code_ent, ptr %140, i64 0
  %141 = load ptr, ptr %free_entp, align 8
  %cmp130 = icmp ule ptr %arrayidx, %141
  br i1 %cmp130, label %land.rhs132, label %land.end137

land.rhs132:                                      ; preds = %if.end124
  %142 = load ptr, ptr %free_entp, align 8
  %143 = load ptr, ptr %sp, align 8
  %dec_codetab133 = getelementptr inbounds %struct.LZWDecodeState, ptr %143, i32 0, i32 9
  %144 = load ptr, ptr %dec_codetab133, align 8
  %arrayidx134 = getelementptr inbounds %struct.code_ent, ptr %144, i64 5119
  %cmp135 = icmp ult ptr %142, %arrayidx134
  br label %land.end137

land.end137:                                      ; preds = %land.rhs132, %if.end124
  %145 = phi i1 [ false, %if.end124 ], [ %cmp135, %land.rhs132 ]
  %lnot138 = xor i1 %145, true
  %lnot.ext139 = zext i1 %lnot138 to i32
  %conv140 = sext i32 %lnot.ext139 to i64
  %tobool141 = icmp ne i64 %conv140, 0
  br i1 %tobool141, label %cond.true142, label %cond.false143

cond.true142:                                     ; preds = %land.end137
  call void @__assert_rtn(ptr noundef @__func__.LZWDecode, ptr noundef @.str, i32 noundef 398, ptr noundef @.str.7) #3
  unreachable

146:                                              ; No predecessors!
  br label %cond.end144

cond.false143:                                    ; preds = %land.end137
  br label %cond.end144

cond.end144:                                      ; preds = %cond.false143, %146
  %147 = load ptr, ptr %oldcodep, align 8
  %148 = load ptr, ptr %free_entp, align 8
  %next145 = getelementptr inbounds %struct.code_ent, ptr %148, i32 0, i32 0
  store ptr %147, ptr %next145, align 8
  %149 = load ptr, ptr %free_entp, align 8
  %next146 = getelementptr inbounds %struct.code_ent, ptr %149, i32 0, i32 0
  %150 = load ptr, ptr %next146, align 8
  %firstchar = getelementptr inbounds %struct.code_ent, ptr %150, i32 0, i32 3
  %151 = load i8, ptr %firstchar, align 1
  %152 = load ptr, ptr %free_entp, align 8
  %firstchar147 = getelementptr inbounds %struct.code_ent, ptr %152, i32 0, i32 3
  store i8 %151, ptr %firstchar147, align 1
  %153 = load ptr, ptr %free_entp, align 8
  %next148 = getelementptr inbounds %struct.code_ent, ptr %153, i32 0, i32 0
  %154 = load ptr, ptr %next148, align 8
  %length149 = getelementptr inbounds %struct.code_ent, ptr %154, i32 0, i32 1
  %155 = load i16, ptr %length149, align 8
  %conv150 = zext i16 %155 to i32
  %add151 = add nsw i32 %conv150, 1
  %conv152 = trunc i32 %add151 to i16
  %156 = load ptr, ptr %free_entp, align 8
  %length153 = getelementptr inbounds %struct.code_ent, ptr %156, i32 0, i32 1
  store i16 %conv152, ptr %length153, align 8
  %157 = load ptr, ptr %codep, align 8
  %158 = load ptr, ptr %free_entp, align 8
  %cmp154 = icmp ult ptr %157, %158
  br i1 %cmp154, label %cond.true156, label %cond.false159

cond.true156:                                     ; preds = %cond.end144
  %159 = load ptr, ptr %codep, align 8
  %firstchar157 = getelementptr inbounds %struct.code_ent, ptr %159, i32 0, i32 3
  %160 = load i8, ptr %firstchar157, align 1
  %conv158 = zext i8 %160 to i32
  br label %cond.end162

cond.false159:                                    ; preds = %cond.end144
  %161 = load ptr, ptr %free_entp, align 8
  %firstchar160 = getelementptr inbounds %struct.code_ent, ptr %161, i32 0, i32 3
  %162 = load i8, ptr %firstchar160, align 1
  %conv161 = zext i8 %162 to i32
  br label %cond.end162

cond.end162:                                      ; preds = %cond.false159, %cond.true156
  %cond = phi i32 [ %conv158, %cond.true156 ], [ %conv161, %cond.false159 ]
  %conv163 = trunc i32 %cond to i8
  %163 = load ptr, ptr %free_entp, align 8
  %value164 = getelementptr inbounds %struct.code_ent, ptr %163, i32 0, i32 2
  store i8 %conv163, ptr %value164, align 2
  %164 = load ptr, ptr %free_entp, align 8
  %incdec.ptr165 = getelementptr inbounds %struct.code_ent, ptr %164, i32 1
  store ptr %incdec.ptr165, ptr %free_entp, align 8
  %165 = load ptr, ptr %maxcodep, align 8
  %cmp166 = icmp ugt ptr %incdec.ptr165, %165
  br i1 %cmp166, label %if.then168, label %if.end178

if.then168:                                       ; preds = %cond.end162
  %166 = load i64, ptr %nbits, align 8
  %inc = add nsw i64 %166, 1
  store i64 %inc, ptr %nbits, align 8
  %cmp169 = icmp sgt i64 %inc, 12
  br i1 %cmp169, label %if.then171, label %if.end172

if.then171:                                       ; preds = %if.then168
  store i64 12, ptr %nbits, align 8
  br label %if.end172

if.end172:                                        ; preds = %if.then171, %if.then168
  %167 = load i64, ptr %nbits, align 8
  %shl173 = shl i64 1, %167
  %sub174 = sub nsw i64 %shl173, 1
  store i64 %sub174, ptr %nbitsmask, align 8
  %168 = load ptr, ptr %sp, align 8
  %dec_codetab175 = getelementptr inbounds %struct.LZWDecodeState, ptr %168, i32 0, i32 9
  %169 = load ptr, ptr %dec_codetab175, align 8
  %170 = load i64, ptr %nbitsmask, align 8
  %add.ptr176 = getelementptr inbounds %struct.code_ent, ptr %169, i64 %170
  %add.ptr177 = getelementptr inbounds %struct.code_ent, ptr %add.ptr176, i64 -1
  store ptr %add.ptr177, ptr %maxcodep, align 8
  br label %if.end178

if.end178:                                        ; preds = %if.end172, %cond.end162
  %171 = load ptr, ptr %codep, align 8
  store ptr %171, ptr %oldcodep, align 8
  %172 = load i16, ptr %code, align 2
  %conv179 = zext i16 %172 to i32
  %cmp180 = icmp sge i32 %conv179, 256
  br i1 %cmp180, label %if.then182, label %if.else245

if.then182:                                       ; preds = %if.end178
  %173 = load ptr, ptr %codep, align 8
  %length183 = getelementptr inbounds %struct.code_ent, ptr %173, i32 0, i32 1
  %174 = load i16, ptr %length183, align 8
  %conv184 = zext i16 %174 to i64
  %175 = load i64, ptr %occ, align 8
  %cmp185 = icmp sgt i64 %conv184, %175
  br i1 %cmp185, label %if.then187, label %if.end219

if.then187:                                       ; preds = %if.then182
  %176 = load ptr, ptr %codep, align 8
  %177 = load ptr, ptr %sp, align 8
  %dec_codep188 = getelementptr inbounds %struct.LZWDecodeState, ptr %177, i32 0, i32 5
  store ptr %176, ptr %dec_codep188, align 8
  br label %do.body189

do.body189:                                       ; preds = %land.end198, %if.then187
  %178 = load ptr, ptr %codep, align 8
  %next190 = getelementptr inbounds %struct.code_ent, ptr %178, i32 0, i32 0
  %179 = load ptr, ptr %next190, align 8
  store ptr %179, ptr %codep, align 8
  br label %do.cond191

do.cond191:                                       ; preds = %do.body189
  %180 = load ptr, ptr %codep, align 8
  %tobool192 = icmp ne ptr %180, null
  br i1 %tobool192, label %land.rhs193, label %land.end198

land.rhs193:                                      ; preds = %do.cond191
  %181 = load ptr, ptr %codep, align 8
  %length194 = getelementptr inbounds %struct.code_ent, ptr %181, i32 0, i32 1
  %182 = load i16, ptr %length194, align 8
  %conv195 = zext i16 %182 to i64
  %183 = load i64, ptr %occ, align 8
  %cmp196 = icmp sgt i64 %conv195, %183
  br label %land.end198

land.end198:                                      ; preds = %land.rhs193, %do.cond191
  %184 = phi i1 [ false, %do.cond191 ], [ %cmp196, %land.rhs193 ]
  br i1 %184, label %do.body189, label %do.end199, !llvm.loop !12

do.end199:                                        ; preds = %land.end198
  %185 = load ptr, ptr %codep, align 8
  %tobool200 = icmp ne ptr %185, null
  br i1 %tobool200, label %if.then201, label %if.end218

if.then201:                                       ; preds = %do.end199
  %186 = load i64, ptr %occ, align 8
  %187 = load ptr, ptr %sp, align 8
  %dec_restart202 = getelementptr inbounds %struct.LZWDecodeState, ptr %187, i32 0, i32 2
  store i64 %186, ptr %dec_restart202, align 8
  %188 = load ptr, ptr %op, align 8
  %189 = load i64, ptr %occ, align 8
  %add.ptr203 = getelementptr inbounds i8, ptr %188, i64 %189
  store ptr %add.ptr203, ptr %tp, align 8
  br label %do.body204

do.body204:                                       ; preds = %land.end213, %if.then201
  %190 = load ptr, ptr %codep, align 8
  %value205 = getelementptr inbounds %struct.code_ent, ptr %190, i32 0, i32 2
  %191 = load i8, ptr %value205, align 2
  %192 = load ptr, ptr %tp, align 8
  %incdec.ptr206 = getelementptr inbounds i8, ptr %192, i32 -1
  store ptr %incdec.ptr206, ptr %tp, align 8
  store i8 %191, ptr %incdec.ptr206, align 1
  %193 = load ptr, ptr %codep, align 8
  %next207 = getelementptr inbounds %struct.code_ent, ptr %193, i32 0, i32 0
  %194 = load ptr, ptr %next207, align 8
  store ptr %194, ptr %codep, align 8
  br label %do.cond208

do.cond208:                                       ; preds = %do.body204
  %195 = load i64, ptr %occ, align 8
  %dec209 = add nsw i64 %195, -1
  store i64 %dec209, ptr %occ, align 8
  %tobool210 = icmp ne i64 %dec209, 0
  br i1 %tobool210, label %land.rhs211, label %land.end213

land.rhs211:                                      ; preds = %do.cond208
  %196 = load ptr, ptr %codep, align 8
  %tobool212 = icmp ne ptr %196, null
  br label %land.end213

land.end213:                                      ; preds = %land.rhs211, %do.cond208
  %197 = phi i1 [ false, %do.cond208 ], [ %tobool212, %land.rhs211 ]
  br i1 %197, label %do.body204, label %do.end214, !llvm.loop !13

do.end214:                                        ; preds = %land.end213
  %198 = load ptr, ptr %codep, align 8
  %tobool215 = icmp ne ptr %198, null
  br i1 %tobool215, label %if.then216, label %if.end217

if.then216:                                       ; preds = %do.end214
  %199 = load ptr, ptr %tif.addr, align 8
  call void @codeLoop(ptr noundef %199)
  br label %if.end217

if.end217:                                        ; preds = %if.then216, %do.end214
  br label %if.end218

if.end218:                                        ; preds = %if.end217, %do.end199
  br label %while.end

if.end219:                                        ; preds = %if.then182
  %200 = load ptr, ptr %codep, align 8
  %length220 = getelementptr inbounds %struct.code_ent, ptr %200, i32 0, i32 1
  %201 = load i16, ptr %length220, align 8
  %conv221 = zext i16 %201 to i32
  store i32 %conv221, ptr %len, align 4
  %202 = load ptr, ptr %op, align 8
  %203 = load i32, ptr %len, align 4
  %idx.ext222 = sext i32 %203 to i64
  %add.ptr223 = getelementptr inbounds i8, ptr %202, i64 %idx.ext222
  store ptr %add.ptr223, ptr %tp, align 8
  br label %do.body224

do.body224:                                       ; preds = %land.end236, %if.end219
  %204 = load ptr, ptr %tp, align 8
  %incdec.ptr226 = getelementptr inbounds i8, ptr %204, i32 -1
  store ptr %incdec.ptr226, ptr %tp, align 8
  %205 = load ptr, ptr %codep, align 8
  %value227 = getelementptr inbounds %struct.code_ent, ptr %205, i32 0, i32 2
  %206 = load i8, ptr %value227, align 2
  %conv228 = zext i8 %206 to i32
  store i32 %conv228, ptr %t225, align 4
  %207 = load ptr, ptr %codep, align 8
  %next229 = getelementptr inbounds %struct.code_ent, ptr %207, i32 0, i32 0
  %208 = load ptr, ptr %next229, align 8
  store ptr %208, ptr %codep, align 8
  %209 = load i32, ptr %t225, align 4
  %conv230 = trunc i32 %209 to i8
  %210 = load ptr, ptr %tp, align 8
  store i8 %conv230, ptr %210, align 1
  br label %do.cond231

do.cond231:                                       ; preds = %do.body224
  %211 = load ptr, ptr %codep, align 8
  %tobool232 = icmp ne ptr %211, null
  br i1 %tobool232, label %land.rhs233, label %land.end236

land.rhs233:                                      ; preds = %do.cond231
  %212 = load ptr, ptr %tp, align 8
  %213 = load ptr, ptr %op, align 8
  %cmp234 = icmp ugt ptr %212, %213
  br label %land.end236

land.end236:                                      ; preds = %land.rhs233, %do.cond231
  %214 = phi i1 [ false, %do.cond231 ], [ %cmp234, %land.rhs233 ]
  br i1 %214, label %do.body224, label %do.end237, !llvm.loop !14

do.end237:                                        ; preds = %land.end236
  %215 = load ptr, ptr %codep, align 8
  %tobool238 = icmp ne ptr %215, null
  br i1 %tobool238, label %if.then239, label %if.end240

if.then239:                                       ; preds = %do.end237
  %216 = load ptr, ptr %tif.addr, align 8
  call void @codeLoop(ptr noundef %216)
  br label %while.end

if.end240:                                        ; preds = %do.end237
  %217 = load i32, ptr %len, align 4
  %218 = load ptr, ptr %op, align 8
  %idx.ext241 = sext i32 %217 to i64
  %add.ptr242 = getelementptr inbounds i8, ptr %218, i64 %idx.ext241
  store ptr %add.ptr242, ptr %op, align 8
  %219 = load i32, ptr %len, align 4
  %conv243 = sext i32 %219 to i64
  %220 = load i64, ptr %occ, align 8
  %sub244 = sub nsw i64 %220, %conv243
  store i64 %sub244, ptr %occ, align 8
  br label %if.end249

if.else245:                                       ; preds = %if.end178
  %221 = load i16, ptr %code, align 2
  %conv246 = trunc i16 %221 to i8
  %222 = load ptr, ptr %op, align 8
  %incdec.ptr247 = getelementptr inbounds i8, ptr %222, i32 1
  store ptr %incdec.ptr247, ptr %op, align 8
  store i8 %conv246, ptr %222, align 1
  %223 = load i64, ptr %occ, align 8
  %dec248 = add nsw i64 %223, -1
  store i64 %dec248, ptr %occ, align 8
  br label %if.end249

if.end249:                                        ; preds = %if.else245, %if.end240
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %if.then239, %if.end218, %if.then116, %if.then74, %while.cond
  %224 = load ptr, ptr %bp, align 8
  %225 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp250 = getelementptr inbounds %struct.tiff, ptr %225, i32 0, i32 42
  store ptr %224, ptr %tif_rawcp250, align 8
  %226 = load i64, ptr %nbits, align 8
  %conv251 = trunc i64 %226 to i16
  %227 = load ptr, ptr %sp, align 8
  %base252 = getelementptr inbounds %struct.LZWDecodeState, ptr %227, i32 0, i32 0
  %nbits253 = getelementptr inbounds %struct.LZWBaseState, ptr %base252, i32 0, i32 1
  store i16 %conv251, ptr %nbits253, align 8
  %228 = load i64, ptr %nextdata, align 8
  %229 = load ptr, ptr %sp, align 8
  %base254 = getelementptr inbounds %struct.LZWDecodeState, ptr %229, i32 0, i32 0
  %nextdata255 = getelementptr inbounds %struct.LZWBaseState, ptr %base254, i32 0, i32 4
  store i64 %228, ptr %nextdata255, align 8
  %230 = load i64, ptr %nextbits, align 8
  %231 = load ptr, ptr %sp, align 8
  %base256 = getelementptr inbounds %struct.LZWDecodeState, ptr %231, i32 0, i32 0
  %nextbits257 = getelementptr inbounds %struct.LZWBaseState, ptr %base256, i32 0, i32 5
  store i64 %230, ptr %nextbits257, align 8
  %232 = load i64, ptr %nbitsmask, align 8
  %233 = load ptr, ptr %sp, align 8
  %dec_nbitsmask258 = getelementptr inbounds %struct.LZWDecodeState, ptr %233, i32 0, i32 1
  store i64 %232, ptr %dec_nbitsmask258, align 8
  %234 = load ptr, ptr %oldcodep, align 8
  %235 = load ptr, ptr %sp, align 8
  %dec_oldcodep259 = getelementptr inbounds %struct.LZWDecodeState, ptr %235, i32 0, i32 6
  store ptr %234, ptr %dec_oldcodep259, align 8
  %236 = load ptr, ptr %free_entp, align 8
  %237 = load ptr, ptr %sp, align 8
  %dec_free_entp260 = getelementptr inbounds %struct.LZWDecodeState, ptr %237, i32 0, i32 7
  store ptr %236, ptr %dec_free_entp260, align 8
  %238 = load ptr, ptr %maxcodep, align 8
  %239 = load ptr, ptr %sp, align 8
  %dec_maxcodep261 = getelementptr inbounds %struct.LZWDecodeState, ptr %239, i32 0, i32 8
  store ptr %238, ptr %dec_maxcodep261, align 8
  %240 = load i64, ptr %occ, align 8
  %cmp262 = icmp sgt i64 %240, 0
  br i1 %cmp262, label %if.then264, label %if.end266

if.then264:                                       ; preds = %while.end
  %241 = load ptr, ptr %tif.addr, align 8
  %tif_name265 = getelementptr inbounds %struct.tiff, ptr %241, i32 0, i32 0
  %242 = load ptr, ptr %tif_name265, align 8
  %243 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %243, i32 0, i32 11
  %244 = load i32, ptr %tif_row, align 8
  %245 = load i64, ptr %occ, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %242, ptr noundef @.str.9, i32 noundef %244, i64 noundef %245)
  store i32 0, ptr %retval, align 4
  br label %return

if.end266:                                        ; preds = %while.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end266, %if.then264, %if.end
  %246 = load i32, ptr %retval, align 4
  ret i32 %246
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @_LZWtrue(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  ret i32 1
}

declare i32 @_TIFFNoPreCode(ptr noundef, i16 noundef zeroext) #2

declare i32 @_TIFFNoRowEncode(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) #2

declare i32 @_TIFFNoStripEncode(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) #2

declare i32 @_TIFFNoTileEncode(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @LZWCleanup(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %tif_mode, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then1, label %if.end7

if.then1:                                         ; preds = %if.then
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_data2 = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 37
  %5 = load ptr, ptr %tif_data2, align 8
  %dec_codetab = getelementptr inbounds %struct.LZWDecodeState, ptr %5, i32 0, i32 9
  %6 = load ptr, ptr %dec_codetab, align 8
  %tobool3 = icmp ne ptr %6, null
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then1
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_data5 = getelementptr inbounds %struct.tiff, ptr %7, i32 0, i32 37
  %8 = load ptr, ptr %tif_data5, align 8
  %dec_codetab6 = getelementptr inbounds %struct.LZWDecodeState, ptr %8, i32 0, i32 9
  %9 = load ptr, ptr %dec_codetab6, align 8
  call void @_TIFFfree(ptr noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then1
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_data8 = getelementptr inbounds %struct.tiff, ptr %10, i32 0, i32 37
  %11 = load ptr, ptr %tif_data8, align 8
  call void @_TIFFfree(ptr noundef %11)
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_data9 = getelementptr inbounds %struct.tiff, ptr %12, i32 0, i32 37
  store ptr null, ptr %tif_data9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.end7, %entry
  ret void
}

declare i32 @TIFFPredictorInit(ptr noundef) #2

declare void @TIFFError(ptr noundef, ptr noundef, ...) #2

declare void @TIFFWarning(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @LZWDecodeCompat(ptr noundef %tif, ptr noundef %op0, i32 noundef %occ0, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %op0.addr = alloca ptr, align 8
  %occ0.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
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
  store ptr %op0, ptr %op0.addr, align 8
  store i32 %occ0, ptr %occ0.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load ptr, ptr %op0.addr, align 8
  store ptr %2, ptr %op, align 8
  %3 = load i32, ptr %occ0.addr, align 4
  %conv = sext i32 %3 to i64
  store i64 %conv, ptr %occ, align 8
  %4 = load i16, ptr %s.addr, align 2
  %5 = load ptr, ptr %sp, align 8
  %cmp = icmp ne ptr %5, null
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv2 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.LZWDecodeCompat, ptr noundef @.str, i32 noundef 504, ptr noundef @.str.3) #3
  unreachable

6:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %6
  %7 = load ptr, ptr %sp, align 8
  %dec_restart = getelementptr inbounds %struct.LZWDecodeState, ptr %7, i32 0, i32 2
  %8 = load i64, ptr %dec_restart, align 8
  %tobool3 = icmp ne i64 %8, 0
  br i1 %tobool3, label %if.then, label %if.end29

if.then:                                          ; preds = %cond.end
  %9 = load ptr, ptr %sp, align 8
  %dec_codep = getelementptr inbounds %struct.LZWDecodeState, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %dec_codep, align 8
  store ptr %10, ptr %codep, align 8
  %11 = load ptr, ptr %codep, align 8
  %length = getelementptr inbounds %struct.code_ent, ptr %11, i32 0, i32 1
  %12 = load i16, ptr %length, align 8
  %conv4 = zext i16 %12 to i64
  %13 = load ptr, ptr %sp, align 8
  %dec_restart5 = getelementptr inbounds %struct.LZWDecodeState, ptr %13, i32 0, i32 2
  %14 = load i64, ptr %dec_restart5, align 8
  %sub = sub nsw i64 %conv4, %14
  store i64 %sub, ptr %residue, align 8
  %15 = load i64, ptr %residue, align 8
  %16 = load i64, ptr %occ, align 8
  %cmp6 = icmp sgt i64 %15, %16
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  %17 = load i64, ptr %occ, align 8
  %18 = load ptr, ptr %sp, align 8
  %dec_restart9 = getelementptr inbounds %struct.LZWDecodeState, ptr %18, i32 0, i32 2
  %19 = load i64, ptr %dec_restart9, align 8
  %add = add nsw i64 %19, %17
  store i64 %add, ptr %dec_restart9, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then8
  %20 = load ptr, ptr %codep, align 8
  %next = getelementptr inbounds %struct.code_ent, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %next, align 8
  store ptr %21, ptr %codep, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %22 = load i64, ptr %residue, align 8
  %dec = add nsw i64 %22, -1
  store i64 %dec, ptr %residue, align 8
  %23 = load i64, ptr %occ, align 8
  %cmp10 = icmp sgt i64 %dec, %23
  br i1 %cmp10, label %do.body, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %do.cond
  %24 = load ptr, ptr %op, align 8
  %25 = load i64, ptr %occ, align 8
  %add.ptr = getelementptr inbounds i8, ptr %24, i64 %25
  store ptr %add.ptr, ptr %tp, align 8
  br label %do.body12

do.body12:                                        ; preds = %do.cond14, %do.end
  %26 = load ptr, ptr %codep, align 8
  %value = getelementptr inbounds %struct.code_ent, ptr %26, i32 0, i32 2
  %27 = load i8, ptr %value, align 2
  %28 = load ptr, ptr %tp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %28, i32 -1
  store ptr %incdec.ptr, ptr %tp, align 8
  store i8 %27, ptr %incdec.ptr, align 1
  %29 = load ptr, ptr %codep, align 8
  %next13 = getelementptr inbounds %struct.code_ent, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %next13, align 8
  store ptr %30, ptr %codep, align 8
  br label %do.cond14

do.cond14:                                        ; preds = %do.body12
  %31 = load i64, ptr %occ, align 8
  %dec15 = add nsw i64 %31, -1
  store i64 %dec15, ptr %occ, align 8
  %tobool16 = icmp ne i64 %dec15, 0
  br i1 %tobool16, label %do.body12, label %do.end17, !llvm.loop !16

do.end17:                                         ; preds = %do.cond14
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %32 = load i64, ptr %residue, align 8
  %33 = load ptr, ptr %op, align 8
  %add.ptr18 = getelementptr inbounds i8, ptr %33, i64 %32
  store ptr %add.ptr18, ptr %op, align 8
  %34 = load i64, ptr %residue, align 8
  %35 = load i64, ptr %occ, align 8
  %sub19 = sub nsw i64 %35, %34
  store i64 %sub19, ptr %occ, align 8
  %36 = load ptr, ptr %op, align 8
  store ptr %36, ptr %tp, align 8
  br label %do.body20

do.body20:                                        ; preds = %do.cond24, %if.end
  %37 = load ptr, ptr %codep, align 8
  %value21 = getelementptr inbounds %struct.code_ent, ptr %37, i32 0, i32 2
  %38 = load i8, ptr %value21, align 2
  %39 = load ptr, ptr %tp, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %39, i32 -1
  store ptr %incdec.ptr22, ptr %tp, align 8
  store i8 %38, ptr %incdec.ptr22, align 1
  %40 = load ptr, ptr %codep, align 8
  %next23 = getelementptr inbounds %struct.code_ent, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %next23, align 8
  store ptr %41, ptr %codep, align 8
  br label %do.cond24

do.cond24:                                        ; preds = %do.body20
  %42 = load i64, ptr %residue, align 8
  %dec25 = add nsw i64 %42, -1
  store i64 %dec25, ptr %residue, align 8
  %tobool26 = icmp ne i64 %dec25, 0
  br i1 %tobool26, label %do.body20, label %do.end27, !llvm.loop !17

do.end27:                                         ; preds = %do.cond24
  %43 = load ptr, ptr %sp, align 8
  %dec_restart28 = getelementptr inbounds %struct.LZWDecodeState, ptr %43, i32 0, i32 2
  store i64 0, ptr %dec_restart28, align 8
  br label %if.end29

if.end29:                                         ; preds = %do.end27, %cond.end
  %44 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %44, i32 0, i32 42
  %45 = load ptr, ptr %tif_rawcp, align 8
  store ptr %45, ptr %bp, align 8
  %46 = load ptr, ptr %sp, align 8
  %base = getelementptr inbounds %struct.LZWDecodeState, ptr %46, i32 0, i32 0
  %nbits30 = getelementptr inbounds %struct.LZWBaseState, ptr %base, i32 0, i32 1
  %47 = load i16, ptr %nbits30, align 8
  %conv31 = zext i16 %47 to i32
  store i32 %conv31, ptr %nbits, align 4
  %48 = load ptr, ptr %sp, align 8
  %base32 = getelementptr inbounds %struct.LZWDecodeState, ptr %48, i32 0, i32 0
  %nextdata33 = getelementptr inbounds %struct.LZWBaseState, ptr %base32, i32 0, i32 4
  %49 = load i64, ptr %nextdata33, align 8
  store i64 %49, ptr %nextdata, align 8
  %50 = load ptr, ptr %sp, align 8
  %base34 = getelementptr inbounds %struct.LZWDecodeState, ptr %50, i32 0, i32 0
  %nextbits35 = getelementptr inbounds %struct.LZWBaseState, ptr %base34, i32 0, i32 5
  %51 = load i64, ptr %nextbits35, align 8
  store i64 %51, ptr %nextbits, align 8
  %52 = load ptr, ptr %sp, align 8
  %dec_nbitsmask = getelementptr inbounds %struct.LZWDecodeState, ptr %52, i32 0, i32 1
  %53 = load i64, ptr %dec_nbitsmask, align 8
  store i64 %53, ptr %nbitsmask, align 8
  %54 = load ptr, ptr %sp, align 8
  %dec_oldcodep = getelementptr inbounds %struct.LZWDecodeState, ptr %54, i32 0, i32 6
  %55 = load ptr, ptr %dec_oldcodep, align 8
  store ptr %55, ptr %oldcodep, align 8
  %56 = load ptr, ptr %sp, align 8
  %dec_free_entp = getelementptr inbounds %struct.LZWDecodeState, ptr %56, i32 0, i32 7
  %57 = load ptr, ptr %dec_free_entp, align 8
  store ptr %57, ptr %free_entp, align 8
  %58 = load ptr, ptr %sp, align 8
  %dec_maxcodep = getelementptr inbounds %struct.LZWDecodeState, ptr %58, i32 0, i32 8
  %59 = load ptr, ptr %dec_maxcodep, align 8
  store ptr %59, ptr %maxcodep, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end215, %if.end110, %if.end29
  %60 = load i64, ptr %occ, align 8
  %cmp36 = icmp sgt i64 %60, 0
  br i1 %cmp36, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %61 = load ptr, ptr %sp, align 8
  %dec_bitsleft = getelementptr inbounds %struct.LZWDecodeState, ptr %61, i32 0, i32 3
  %62 = load i64, ptr %dec_bitsleft, align 8
  %63 = load i32, ptr %nbits, align 4
  %conv38 = sext i32 %63 to i64
  %cmp39 = icmp slt i64 %62, %conv38
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %while.body
  %64 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %tif_name, align 8
  %66 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %66, i32 0, i32 13
  %67 = load i32, ptr %tif_curstrip, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %65, ptr noundef @.str.6, i32 noundef %67)
  store i32 257, ptr %code, align 4
  br label %if.end62

if.else:                                          ; preds = %while.body
  %68 = load ptr, ptr %bp, align 8
  %incdec.ptr42 = getelementptr inbounds i8, ptr %68, i32 1
  store ptr %incdec.ptr42, ptr %bp, align 8
  %69 = load i8, ptr %68, align 1
  %conv43 = zext i8 %69 to i64
  %70 = load i64, ptr %nextbits, align 8
  %shl = shl i64 %conv43, %70
  %71 = load i64, ptr %nextdata, align 8
  %or = or i64 %71, %shl
  store i64 %or, ptr %nextdata, align 8
  %72 = load i64, ptr %nextbits, align 8
  %add44 = add nsw i64 %72, 8
  store i64 %add44, ptr %nextbits, align 8
  %73 = load i64, ptr %nextbits, align 8
  %74 = load i32, ptr %nbits, align 4
  %conv45 = sext i32 %74 to i64
  %cmp46 = icmp slt i64 %73, %conv45
  br i1 %cmp46, label %if.then48, label %if.end54

if.then48:                                        ; preds = %if.else
  %75 = load ptr, ptr %bp, align 8
  %incdec.ptr49 = getelementptr inbounds i8, ptr %75, i32 1
  store ptr %incdec.ptr49, ptr %bp, align 8
  %76 = load i8, ptr %75, align 1
  %conv50 = zext i8 %76 to i64
  %77 = load i64, ptr %nextbits, align 8
  %shl51 = shl i64 %conv50, %77
  %78 = load i64, ptr %nextdata, align 8
  %or52 = or i64 %78, %shl51
  store i64 %or52, ptr %nextdata, align 8
  %79 = load i64, ptr %nextbits, align 8
  %add53 = add nsw i64 %79, 8
  store i64 %add53, ptr %nextbits, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %if.else
  %80 = load i64, ptr %nextdata, align 8
  %81 = load i64, ptr %nbitsmask, align 8
  %and = and i64 %80, %81
  %conv55 = trunc i64 %and to i16
  %conv56 = zext i16 %conv55 to i32
  store i32 %conv56, ptr %code, align 4
  %82 = load i32, ptr %nbits, align 4
  %83 = load i64, ptr %nextdata, align 8
  %sh_prom = zext i32 %82 to i64
  %shr = ashr i64 %83, %sh_prom
  store i64 %shr, ptr %nextdata, align 8
  %84 = load i32, ptr %nbits, align 4
  %conv57 = sext i32 %84 to i64
  %85 = load i64, ptr %nextbits, align 8
  %sub58 = sub nsw i64 %85, %conv57
  store i64 %sub58, ptr %nextbits, align 8
  %86 = load i32, ptr %nbits, align 4
  %conv59 = sext i32 %86 to i64
  %87 = load ptr, ptr %sp, align 8
  %dec_bitsleft60 = getelementptr inbounds %struct.LZWDecodeState, ptr %87, i32 0, i32 3
  %88 = load i64, ptr %dec_bitsleft60, align 8
  %sub61 = sub nsw i64 %88, %conv59
  store i64 %sub61, ptr %dec_bitsleft60, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.end54, %if.then41
  %89 = load i32, ptr %code, align 4
  %cmp63 = icmp eq i32 %89, 257
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end62
  br label %while.end

if.end66:                                         ; preds = %if.end62
  %90 = load i32, ptr %code, align 4
  %cmp67 = icmp eq i32 %90, 256
  br i1 %cmp67, label %if.then69, label %if.end116

if.then69:                                        ; preds = %if.end66
  %91 = load ptr, ptr %sp, align 8
  %dec_codetab = getelementptr inbounds %struct.LZWDecodeState, ptr %91, i32 0, i32 9
  %92 = load ptr, ptr %dec_codetab, align 8
  %add.ptr70 = getelementptr inbounds %struct.code_ent, ptr %92, i64 258
  store ptr %add.ptr70, ptr %free_entp, align 8
  store i32 9, ptr %nbits, align 4
  store i64 511, ptr %nbitsmask, align 8
  %93 = load ptr, ptr %sp, align 8
  %dec_codetab71 = getelementptr inbounds %struct.LZWDecodeState, ptr %93, i32 0, i32 9
  %94 = load ptr, ptr %dec_codetab71, align 8
  %95 = load i64, ptr %nbitsmask, align 8
  %add.ptr72 = getelementptr inbounds %struct.code_ent, ptr %94, i64 %95
  store ptr %add.ptr72, ptr %maxcodep, align 8
  %96 = load ptr, ptr %sp, align 8
  %dec_bitsleft73 = getelementptr inbounds %struct.LZWDecodeState, ptr %96, i32 0, i32 3
  %97 = load i64, ptr %dec_bitsleft73, align 8
  %98 = load i32, ptr %nbits, align 4
  %conv74 = sext i32 %98 to i64
  %cmp75 = icmp slt i64 %97, %conv74
  br i1 %cmp75, label %if.then77, label %if.else80

if.then77:                                        ; preds = %if.then69
  %99 = load ptr, ptr %tif.addr, align 8
  %tif_name78 = getelementptr inbounds %struct.tiff, ptr %99, i32 0, i32 0
  %100 = load ptr, ptr %tif_name78, align 8
  %101 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip79 = getelementptr inbounds %struct.tiff, ptr %101, i32 0, i32 13
  %102 = load i32, ptr %tif_curstrip79, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %100, ptr noundef @.str.6, i32 noundef %102)
  store i32 257, ptr %code, align 4
  br label %if.end106

if.else80:                                        ; preds = %if.then69
  %103 = load ptr, ptr %bp, align 8
  %incdec.ptr81 = getelementptr inbounds i8, ptr %103, i32 1
  store ptr %incdec.ptr81, ptr %bp, align 8
  %104 = load i8, ptr %103, align 1
  %conv82 = zext i8 %104 to i64
  %105 = load i64, ptr %nextbits, align 8
  %shl83 = shl i64 %conv82, %105
  %106 = load i64, ptr %nextdata, align 8
  %or84 = or i64 %106, %shl83
  store i64 %or84, ptr %nextdata, align 8
  %107 = load i64, ptr %nextbits, align 8
  %add85 = add nsw i64 %107, 8
  store i64 %add85, ptr %nextbits, align 8
  %108 = load i64, ptr %nextbits, align 8
  %109 = load i32, ptr %nbits, align 4
  %conv86 = sext i32 %109 to i64
  %cmp87 = icmp slt i64 %108, %conv86
  br i1 %cmp87, label %if.then89, label %if.end95

if.then89:                                        ; preds = %if.else80
  %110 = load ptr, ptr %bp, align 8
  %incdec.ptr90 = getelementptr inbounds i8, ptr %110, i32 1
  store ptr %incdec.ptr90, ptr %bp, align 8
  %111 = load i8, ptr %110, align 1
  %conv91 = zext i8 %111 to i64
  %112 = load i64, ptr %nextbits, align 8
  %shl92 = shl i64 %conv91, %112
  %113 = load i64, ptr %nextdata, align 8
  %or93 = or i64 %113, %shl92
  store i64 %or93, ptr %nextdata, align 8
  %114 = load i64, ptr %nextbits, align 8
  %add94 = add nsw i64 %114, 8
  store i64 %add94, ptr %nextbits, align 8
  br label %if.end95

if.end95:                                         ; preds = %if.then89, %if.else80
  %115 = load i64, ptr %nextdata, align 8
  %116 = load i64, ptr %nbitsmask, align 8
  %and96 = and i64 %115, %116
  %conv97 = trunc i64 %and96 to i16
  %conv98 = zext i16 %conv97 to i32
  store i32 %conv98, ptr %code, align 4
  %117 = load i32, ptr %nbits, align 4
  %118 = load i64, ptr %nextdata, align 8
  %sh_prom99 = zext i32 %117 to i64
  %shr100 = ashr i64 %118, %sh_prom99
  store i64 %shr100, ptr %nextdata, align 8
  %119 = load i32, ptr %nbits, align 4
  %conv101 = sext i32 %119 to i64
  %120 = load i64, ptr %nextbits, align 8
  %sub102 = sub nsw i64 %120, %conv101
  store i64 %sub102, ptr %nextbits, align 8
  %121 = load i32, ptr %nbits, align 4
  %conv103 = sext i32 %121 to i64
  %122 = load ptr, ptr %sp, align 8
  %dec_bitsleft104 = getelementptr inbounds %struct.LZWDecodeState, ptr %122, i32 0, i32 3
  %123 = load i64, ptr %dec_bitsleft104, align 8
  %sub105 = sub nsw i64 %123, %conv103
  store i64 %sub105, ptr %dec_bitsleft104, align 8
  br label %if.end106

if.end106:                                        ; preds = %if.end95, %if.then77
  %124 = load i32, ptr %code, align 4
  %cmp107 = icmp eq i32 %124, 257
  br i1 %cmp107, label %if.then109, label %if.end110

if.then109:                                       ; preds = %if.end106
  br label %while.end

if.end110:                                        ; preds = %if.end106
  %125 = load i32, ptr %code, align 4
  %conv111 = trunc i32 %125 to i8
  %126 = load ptr, ptr %op, align 8
  %incdec.ptr112 = getelementptr inbounds i8, ptr %126, i32 1
  store ptr %incdec.ptr112, ptr %op, align 8
  store i8 %conv111, ptr %126, align 1
  %127 = load i64, ptr %occ, align 8
  %dec113 = add nsw i64 %127, -1
  store i64 %dec113, ptr %occ, align 8
  %128 = load ptr, ptr %sp, align 8
  %dec_codetab114 = getelementptr inbounds %struct.LZWDecodeState, ptr %128, i32 0, i32 9
  %129 = load ptr, ptr %dec_codetab114, align 8
  %130 = load i32, ptr %code, align 4
  %idx.ext = sext i32 %130 to i64
  %add.ptr115 = getelementptr inbounds %struct.code_ent, ptr %129, i64 %idx.ext
  store ptr %add.ptr115, ptr %oldcodep, align 8
  br label %while.cond, !llvm.loop !18

if.end116:                                        ; preds = %if.end66
  %131 = load ptr, ptr %sp, align 8
  %dec_codetab117 = getelementptr inbounds %struct.LZWDecodeState, ptr %131, i32 0, i32 9
  %132 = load ptr, ptr %dec_codetab117, align 8
  %133 = load i32, ptr %code, align 4
  %idx.ext118 = sext i32 %133 to i64
  %add.ptr119 = getelementptr inbounds %struct.code_ent, ptr %132, i64 %idx.ext118
  store ptr %add.ptr119, ptr %codep, align 8
  %134 = load ptr, ptr %sp, align 8
  %dec_codetab120 = getelementptr inbounds %struct.LZWDecodeState, ptr %134, i32 0, i32 9
  %135 = load ptr, ptr %dec_codetab120, align 8
  %arrayidx = getelementptr inbounds %struct.code_ent, ptr %135, i64 0
  %136 = load ptr, ptr %free_entp, align 8
  %cmp121 = icmp ule ptr %arrayidx, %136
  br i1 %cmp121, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end116
  %137 = load ptr, ptr %free_entp, align 8
  %138 = load ptr, ptr %sp, align 8
  %dec_codetab123 = getelementptr inbounds %struct.LZWDecodeState, ptr %138, i32 0, i32 9
  %139 = load ptr, ptr %dec_codetab123, align 8
  %arrayidx124 = getelementptr inbounds %struct.code_ent, ptr %139, i64 5119
  %cmp125 = icmp ult ptr %137, %arrayidx124
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end116
  %140 = phi i1 [ false, %if.end116 ], [ %cmp125, %land.rhs ]
  %lnot127 = xor i1 %140, true
  %lnot.ext128 = zext i1 %lnot127 to i32
  %conv129 = sext i32 %lnot.ext128 to i64
  %tobool130 = icmp ne i64 %conv129, 0
  br i1 %tobool130, label %cond.true131, label %cond.false132

cond.true131:                                     ; preds = %land.end
  call void @__assert_rtn(ptr noundef @__func__.LZWDecodeCompat, ptr noundef @.str, i32 noundef 573, ptr noundef @.str.7) #3
  unreachable

141:                                              ; No predecessors!
  br label %cond.end133

cond.false132:                                    ; preds = %land.end
  br label %cond.end133

cond.end133:                                      ; preds = %cond.false132, %141
  %142 = load ptr, ptr %oldcodep, align 8
  %143 = load ptr, ptr %free_entp, align 8
  %next134 = getelementptr inbounds %struct.code_ent, ptr %143, i32 0, i32 0
  store ptr %142, ptr %next134, align 8
  %144 = load ptr, ptr %free_entp, align 8
  %next135 = getelementptr inbounds %struct.code_ent, ptr %144, i32 0, i32 0
  %145 = load ptr, ptr %next135, align 8
  %firstchar = getelementptr inbounds %struct.code_ent, ptr %145, i32 0, i32 3
  %146 = load i8, ptr %firstchar, align 1
  %147 = load ptr, ptr %free_entp, align 8
  %firstchar136 = getelementptr inbounds %struct.code_ent, ptr %147, i32 0, i32 3
  store i8 %146, ptr %firstchar136, align 1
  %148 = load ptr, ptr %free_entp, align 8
  %next137 = getelementptr inbounds %struct.code_ent, ptr %148, i32 0, i32 0
  %149 = load ptr, ptr %next137, align 8
  %length138 = getelementptr inbounds %struct.code_ent, ptr %149, i32 0, i32 1
  %150 = load i16, ptr %length138, align 8
  %conv139 = zext i16 %150 to i32
  %add140 = add nsw i32 %conv139, 1
  %conv141 = trunc i32 %add140 to i16
  %151 = load ptr, ptr %free_entp, align 8
  %length142 = getelementptr inbounds %struct.code_ent, ptr %151, i32 0, i32 1
  store i16 %conv141, ptr %length142, align 8
  %152 = load ptr, ptr %codep, align 8
  %153 = load ptr, ptr %free_entp, align 8
  %cmp143 = icmp ult ptr %152, %153
  br i1 %cmp143, label %cond.true145, label %cond.false148

cond.true145:                                     ; preds = %cond.end133
  %154 = load ptr, ptr %codep, align 8
  %firstchar146 = getelementptr inbounds %struct.code_ent, ptr %154, i32 0, i32 3
  %155 = load i8, ptr %firstchar146, align 1
  %conv147 = zext i8 %155 to i32
  br label %cond.end151

cond.false148:                                    ; preds = %cond.end133
  %156 = load ptr, ptr %free_entp, align 8
  %firstchar149 = getelementptr inbounds %struct.code_ent, ptr %156, i32 0, i32 3
  %157 = load i8, ptr %firstchar149, align 1
  %conv150 = zext i8 %157 to i32
  br label %cond.end151

cond.end151:                                      ; preds = %cond.false148, %cond.true145
  %cond = phi i32 [ %conv147, %cond.true145 ], [ %conv150, %cond.false148 ]
  %conv152 = trunc i32 %cond to i8
  %158 = load ptr, ptr %free_entp, align 8
  %value153 = getelementptr inbounds %struct.code_ent, ptr %158, i32 0, i32 2
  store i8 %conv152, ptr %value153, align 2
  %159 = load ptr, ptr %free_entp, align 8
  %incdec.ptr154 = getelementptr inbounds %struct.code_ent, ptr %159, i32 1
  store ptr %incdec.ptr154, ptr %free_entp, align 8
  %160 = load ptr, ptr %maxcodep, align 8
  %cmp155 = icmp ugt ptr %incdec.ptr154, %160
  br i1 %cmp155, label %if.then157, label %if.end167

if.then157:                                       ; preds = %cond.end151
  %161 = load i32, ptr %nbits, align 4
  %inc = add nsw i32 %161, 1
  store i32 %inc, ptr %nbits, align 4
  %cmp158 = icmp sgt i32 %inc, 12
  br i1 %cmp158, label %if.then160, label %if.end161

if.then160:                                       ; preds = %if.then157
  store i32 12, ptr %nbits, align 4
  br label %if.end161

if.end161:                                        ; preds = %if.then160, %if.then157
  %162 = load i32, ptr %nbits, align 4
  %sh_prom162 = zext i32 %162 to i64
  %shl163 = shl i64 1, %sh_prom162
  %sub164 = sub nsw i64 %shl163, 1
  store i64 %sub164, ptr %nbitsmask, align 8
  %163 = load ptr, ptr %sp, align 8
  %dec_codetab165 = getelementptr inbounds %struct.LZWDecodeState, ptr %163, i32 0, i32 9
  %164 = load ptr, ptr %dec_codetab165, align 8
  %165 = load i64, ptr %nbitsmask, align 8
  %add.ptr166 = getelementptr inbounds %struct.code_ent, ptr %164, i64 %165
  store ptr %add.ptr166, ptr %maxcodep, align 8
  br label %if.end167

if.end167:                                        ; preds = %if.end161, %cond.end151
  %166 = load ptr, ptr %codep, align 8
  store ptr %166, ptr %oldcodep, align 8
  %167 = load i32, ptr %code, align 4
  %cmp168 = icmp sge i32 %167, 256
  br i1 %cmp168, label %if.then170, label %if.else211

if.then170:                                       ; preds = %if.end167
  %168 = load ptr, ptr %codep, align 8
  %length171 = getelementptr inbounds %struct.code_ent, ptr %168, i32 0, i32 1
  %169 = load i16, ptr %length171, align 8
  %conv172 = zext i16 %169 to i64
  %170 = load i64, ptr %occ, align 8
  %cmp173 = icmp sgt i64 %conv172, %170
  br i1 %cmp173, label %if.then175, label %if.end195

if.then175:                                       ; preds = %if.then170
  %171 = load ptr, ptr %codep, align 8
  %172 = load ptr, ptr %sp, align 8
  %dec_codep176 = getelementptr inbounds %struct.LZWDecodeState, ptr %172, i32 0, i32 5
  store ptr %171, ptr %dec_codep176, align 8
  br label %do.body177

do.body177:                                       ; preds = %do.cond179, %if.then175
  %173 = load ptr, ptr %codep, align 8
  %next178 = getelementptr inbounds %struct.code_ent, ptr %173, i32 0, i32 0
  %174 = load ptr, ptr %next178, align 8
  store ptr %174, ptr %codep, align 8
  br label %do.cond179

do.cond179:                                       ; preds = %do.body177
  %175 = load ptr, ptr %codep, align 8
  %length180 = getelementptr inbounds %struct.code_ent, ptr %175, i32 0, i32 1
  %176 = load i16, ptr %length180, align 8
  %conv181 = zext i16 %176 to i64
  %177 = load i64, ptr %occ, align 8
  %cmp182 = icmp sgt i64 %conv181, %177
  br i1 %cmp182, label %do.body177, label %do.end184, !llvm.loop !19

do.end184:                                        ; preds = %do.cond179
  %178 = load i64, ptr %occ, align 8
  %179 = load ptr, ptr %sp, align 8
  %dec_restart185 = getelementptr inbounds %struct.LZWDecodeState, ptr %179, i32 0, i32 2
  store i64 %178, ptr %dec_restart185, align 8
  %180 = load ptr, ptr %op, align 8
  %181 = load i64, ptr %occ, align 8
  %add.ptr186 = getelementptr inbounds i8, ptr %180, i64 %181
  store ptr %add.ptr186, ptr %tp, align 8
  br label %do.body187

do.body187:                                       ; preds = %do.cond191, %do.end184
  %182 = load ptr, ptr %codep, align 8
  %value188 = getelementptr inbounds %struct.code_ent, ptr %182, i32 0, i32 2
  %183 = load i8, ptr %value188, align 2
  %184 = load ptr, ptr %tp, align 8
  %incdec.ptr189 = getelementptr inbounds i8, ptr %184, i32 -1
  store ptr %incdec.ptr189, ptr %tp, align 8
  store i8 %183, ptr %incdec.ptr189, align 1
  %185 = load ptr, ptr %codep, align 8
  %next190 = getelementptr inbounds %struct.code_ent, ptr %185, i32 0, i32 0
  %186 = load ptr, ptr %next190, align 8
  store ptr %186, ptr %codep, align 8
  br label %do.cond191

do.cond191:                                       ; preds = %do.body187
  %187 = load i64, ptr %occ, align 8
  %dec192 = add nsw i64 %187, -1
  store i64 %dec192, ptr %occ, align 8
  %tobool193 = icmp ne i64 %dec192, 0
  br i1 %tobool193, label %do.body187, label %do.end194, !llvm.loop !20

do.end194:                                        ; preds = %do.cond191
  br label %while.end

if.end195:                                        ; preds = %if.then170
  %188 = load ptr, ptr %codep, align 8
  %length196 = getelementptr inbounds %struct.code_ent, ptr %188, i32 0, i32 1
  %189 = load i16, ptr %length196, align 8
  %conv197 = zext i16 %189 to i32
  %190 = load ptr, ptr %op, align 8
  %idx.ext198 = sext i32 %conv197 to i64
  %add.ptr199 = getelementptr inbounds i8, ptr %190, i64 %idx.ext198
  store ptr %add.ptr199, ptr %op, align 8
  %191 = load ptr, ptr %codep, align 8
  %length200 = getelementptr inbounds %struct.code_ent, ptr %191, i32 0, i32 1
  %192 = load i16, ptr %length200, align 8
  %conv201 = zext i16 %192 to i64
  %193 = load i64, ptr %occ, align 8
  %sub202 = sub nsw i64 %193, %conv201
  store i64 %sub202, ptr %occ, align 8
  %194 = load ptr, ptr %op, align 8
  store ptr %194, ptr %tp, align 8
  br label %do.body203

do.body203:                                       ; preds = %do.cond206, %if.end195
  %195 = load ptr, ptr %codep, align 8
  %value204 = getelementptr inbounds %struct.code_ent, ptr %195, i32 0, i32 2
  %196 = load i8, ptr %value204, align 2
  %197 = load ptr, ptr %tp, align 8
  %incdec.ptr205 = getelementptr inbounds i8, ptr %197, i32 -1
  store ptr %incdec.ptr205, ptr %tp, align 8
  store i8 %196, ptr %incdec.ptr205, align 1
  br label %do.cond206

do.cond206:                                       ; preds = %do.body203
  %198 = load ptr, ptr %codep, align 8
  %next207 = getelementptr inbounds %struct.code_ent, ptr %198, i32 0, i32 0
  %199 = load ptr, ptr %next207, align 8
  store ptr %199, ptr %codep, align 8
  %cmp208 = icmp ne ptr %199, null
  br i1 %cmp208, label %do.body203, label %do.end210, !llvm.loop !21

do.end210:                                        ; preds = %do.cond206
  br label %if.end215

if.else211:                                       ; preds = %if.end167
  %200 = load i32, ptr %code, align 4
  %conv212 = trunc i32 %200 to i8
  %201 = load ptr, ptr %op, align 8
  %incdec.ptr213 = getelementptr inbounds i8, ptr %201, i32 1
  store ptr %incdec.ptr213, ptr %op, align 8
  store i8 %conv212, ptr %201, align 1
  %202 = load i64, ptr %occ, align 8
  %dec214 = add nsw i64 %202, -1
  store i64 %dec214, ptr %occ, align 8
  br label %if.end215

if.end215:                                        ; preds = %if.else211, %do.end210
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %do.end194, %if.then109, %if.then65, %while.cond
  %203 = load ptr, ptr %bp, align 8
  %204 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp216 = getelementptr inbounds %struct.tiff, ptr %204, i32 0, i32 42
  store ptr %203, ptr %tif_rawcp216, align 8
  %205 = load i32, ptr %nbits, align 4
  %conv217 = trunc i32 %205 to i16
  %206 = load ptr, ptr %sp, align 8
  %base218 = getelementptr inbounds %struct.LZWDecodeState, ptr %206, i32 0, i32 0
  %nbits219 = getelementptr inbounds %struct.LZWBaseState, ptr %base218, i32 0, i32 1
  store i16 %conv217, ptr %nbits219, align 8
  %207 = load i64, ptr %nextdata, align 8
  %208 = load ptr, ptr %sp, align 8
  %base220 = getelementptr inbounds %struct.LZWDecodeState, ptr %208, i32 0, i32 0
  %nextdata221 = getelementptr inbounds %struct.LZWBaseState, ptr %base220, i32 0, i32 4
  store i64 %207, ptr %nextdata221, align 8
  %209 = load i64, ptr %nextbits, align 8
  %210 = load ptr, ptr %sp, align 8
  %base222 = getelementptr inbounds %struct.LZWDecodeState, ptr %210, i32 0, i32 0
  %nextbits223 = getelementptr inbounds %struct.LZWBaseState, ptr %base222, i32 0, i32 5
  store i64 %209, ptr %nextbits223, align 8
  %211 = load i64, ptr %nbitsmask, align 8
  %212 = load ptr, ptr %sp, align 8
  %dec_nbitsmask224 = getelementptr inbounds %struct.LZWDecodeState, ptr %212, i32 0, i32 1
  store i64 %211, ptr %dec_nbitsmask224, align 8
  %213 = load ptr, ptr %oldcodep, align 8
  %214 = load ptr, ptr %sp, align 8
  %dec_oldcodep225 = getelementptr inbounds %struct.LZWDecodeState, ptr %214, i32 0, i32 6
  store ptr %213, ptr %dec_oldcodep225, align 8
  %215 = load ptr, ptr %free_entp, align 8
  %216 = load ptr, ptr %sp, align 8
  %dec_free_entp226 = getelementptr inbounds %struct.LZWDecodeState, ptr %216, i32 0, i32 7
  store ptr %215, ptr %dec_free_entp226, align 8
  %217 = load ptr, ptr %maxcodep, align 8
  %218 = load ptr, ptr %sp, align 8
  %dec_maxcodep227 = getelementptr inbounds %struct.LZWDecodeState, ptr %218, i32 0, i32 8
  store ptr %217, ptr %dec_maxcodep227, align 8
  %219 = load i64, ptr %occ, align 8
  %cmp228 = icmp sgt i64 %219, 0
  br i1 %cmp228, label %if.then230, label %if.end232

if.then230:                                       ; preds = %while.end
  %220 = load ptr, ptr %tif.addr, align 8
  %tif_name231 = getelementptr inbounds %struct.tiff, ptr %220, i32 0, i32 0
  %221 = load ptr, ptr %tif_name231, align 8
  %222 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %222, i32 0, i32 11
  %223 = load i32, ptr %tif_row, align 8
  %224 = load i64, ptr %occ, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %221, ptr noundef @.str.8, i32 noundef %223, i64 noundef %224)
  store i32 0, ptr %retval, align 4
  br label %return

if.end232:                                        ; preds = %while.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end232, %if.then230, %do.end17
  %225 = load i32, ptr %retval, align 4
  ret i32 %225
}

declare void @_TIFFmemset(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @codeLoop(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %tif_name, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 11
  %3 = load i32, ptr %tif_row, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %1, ptr noundef @.str.10, i32 noundef %3)
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
