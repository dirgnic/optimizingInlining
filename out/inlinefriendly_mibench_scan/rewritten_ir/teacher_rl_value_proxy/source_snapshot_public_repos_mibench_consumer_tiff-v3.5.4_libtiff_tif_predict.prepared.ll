; ModuleID = './source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_predict.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_predict.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.TIFFFieldInfo = type { i64, i16, i16, i32, i16, i8, i8, ptr }
%struct.tiff = type { ptr, i32, i32, i64, i64, i64, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i64, i16, i64, i64, i64, i16, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, ptr, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i64, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i64, ptr, i64, ptr, i64, ptr, i64, i64, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i64 }
%struct.TIFFPredictorState = type { i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@predictFieldInfo = internal constant [1 x %struct.TIFFFieldInfo] [%struct.TIFFFieldInfo { i64 317, i16 1, i16 1, i32 3, i16 62, i8 0, i8 0, ptr @.str }], align 8
@.str = private unnamed_addr constant [10 x i8] c"Predictor\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"  Predictor: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"none \00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"horizontal differencing \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%u (0x%x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"\22Predictor\22 value %d not supported\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"Horizontal differencing \22Predictor\22 not supported with %d-bit samples\00", align 1
@__func__.PredictorDecodeRow = private unnamed_addr constant [19 x i8] c"PredictorDecodeRow\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"tif_predict.c\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"sp != NULL\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"sp->coderow != NULL\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"sp->pfunc != NULL\00", align 1
@__func__.PredictorDecodeTile = private unnamed_addr constant [20 x i8] c"PredictorDecodeTile\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"sp->codetile != NULL\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"rowsize > 0\00", align 1
@__func__.PredictorEncodeRow = private unnamed_addr constant [19 x i8] c"PredictorEncodeRow\00", align 1
@__func__.PredictorEncodeTile = private unnamed_addr constant [20 x i8] c"PredictorEncodeTile\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFPredictorInit(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  call void @_TIFFMergeFieldInfo(ptr noundef %2, ptr noundef @predictFieldInfo, i32 noundef 1)
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_vgetfield = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 58
  %4 = load ptr, ptr %tif_vgetfield, align 8
  %5 = load ptr, ptr %sp, align 8
  %vgetparent = getelementptr inbounds %struct.TIFFPredictorState, ptr %5, i32 0, i32 7
  store ptr %4, ptr %vgetparent, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_vgetfield1 = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 58
  store ptr @PredictorVGetField, ptr %tif_vgetfield1, align 8
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_vsetfield = getelementptr inbounds %struct.tiff, ptr %7, i32 0, i32 57
  %8 = load ptr, ptr %tif_vsetfield, align 8
  %9 = load ptr, ptr %sp, align 8
  %vsetparent = getelementptr inbounds %struct.TIFFPredictorState, ptr %9, i32 0, i32 8
  store ptr %8, ptr %vsetparent, align 8
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_vsetfield2 = getelementptr inbounds %struct.tiff, ptr %10, i32 0, i32 57
  store ptr @PredictorVSetField, ptr %tif_vsetfield2, align 8
  %11 = load ptr, ptr %tif.addr, align 8
  %tif_printdir = getelementptr inbounds %struct.tiff, ptr %11, i32 0, i32 59
  %12 = load ptr, ptr %tif_printdir, align 8
  %13 = load ptr, ptr %sp, align 8
  %printdir = getelementptr inbounds %struct.TIFFPredictorState, ptr %13, i32 0, i32 9
  store ptr %12, ptr %printdir, align 8
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_printdir3 = getelementptr inbounds %struct.tiff, ptr %14, i32 0, i32 59
  store ptr @PredictorPrintDir, ptr %tif_printdir3, align 8
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_setupdecode = getelementptr inbounds %struct.tiff, ptr %15, i32 0, i32 21
  %16 = load ptr, ptr %tif_setupdecode, align 8
  %17 = load ptr, ptr %sp, align 8
  %setupdecode = getelementptr inbounds %struct.TIFFPredictorState, ptr %17, i32 0, i32 10
  store ptr %16, ptr %setupdecode, align 8
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_setupdecode4 = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 21
  store ptr @PredictorSetupDecode, ptr %tif_setupdecode4, align 8
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_setupencode = getelementptr inbounds %struct.tiff, ptr %19, i32 0, i32 23
  %20 = load ptr, ptr %tif_setupencode, align 8
  %21 = load ptr, ptr %sp, align 8
  %setupencode = getelementptr inbounds %struct.TIFFPredictorState, ptr %21, i32 0, i32 11
  store ptr %20, ptr %setupencode, align 8
  %22 = load ptr, ptr %tif.addr, align 8
  %tif_setupencode5 = getelementptr inbounds %struct.tiff, ptr %22, i32 0, i32 23
  store ptr @PredictorSetupEncode, ptr %tif_setupencode5, align 8
  %23 = load ptr, ptr %sp, align 8
  %predictor = getelementptr inbounds %struct.TIFFPredictorState, ptr %23, i32 0, i32 0
  store i32 1, ptr %predictor, align 8
  %24 = load ptr, ptr %sp, align 8
  %pfunc = getelementptr inbounds %struct.TIFFPredictorState, ptr %24, i32 0, i32 3
  store ptr null, ptr %pfunc, align 8
  ret i32 1
}

declare void @_TIFFMergeFieldInfo(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @PredictorVGetField(ptr noundef %tif, i64 noundef %tag, ptr noundef %ap) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i64, align 8
  %ap.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %varet = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tag, ptr %tag.addr, align 8
  store ptr %ap, ptr %ap.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load i64, ptr %tag.addr, align 8
  switch i64 %2, label %sw.default [
    i64 317, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %sp, align 8
  %predictor = getelementptr inbounds %struct.TIFFPredictorState, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %predictor, align 8
  %conv = trunc i32 %4 to i16
  %5 = va_arg ptr %ap.addr, ptr
  store ptr %5, ptr %varet, align 8
  %6 = load ptr, ptr %varet, align 8
  store i16 %conv, ptr %6, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %7 = load ptr, ptr %sp, align 8
  %vgetparent = getelementptr inbounds %struct.TIFFPredictorState, ptr %7, i32 0, i32 7
  %8 = load ptr, ptr %vgetparent, align 8
  %9 = load ptr, ptr %tif.addr, align 8
  %10 = load i64, ptr %tag.addr, align 8
  %11 = load ptr, ptr %ap.addr, align 8
  %call = call i32 %8(ptr noundef %9, i64 noundef %10, ptr noundef %11)
  store i32 %call, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @PredictorVSetField(ptr noundef %tif, i64 noundef %tag, ptr noundef %ap) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i64, align 8
  %ap.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %varet = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tag, ptr %tag.addr, align 8
  store ptr %ap, ptr %ap.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load i64, ptr %tag.addr, align 8
  switch i64 %2, label %sw.default [
    i64 317, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %3 = va_arg ptr %ap.addr, i32
  store i32 %3, ptr %varet, align 4
  %4 = load i32, ptr %varet, align 4
  %conv = trunc i32 %4 to i16
  %conv1 = zext i16 %conv to i32
  %5 = load ptr, ptr %sp, align 8
  %predictor = getelementptr inbounds %struct.TIFFPredictorState, ptr %5, i32 0, i32 0
  store i32 %conv1, ptr %predictor, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 6
  %td_fieldsset = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x i64], ptr %td_fieldsset, i64 0, i64 1
  %7 = load i64, ptr %arrayidx, align 8
  %or = or i64 %7, 1073741824
  store i64 %or, ptr %arrayidx, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %8 = load ptr, ptr %sp, align 8
  %vsetparent = getelementptr inbounds %struct.TIFFPredictorState, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %vsetparent, align 8
  %10 = load ptr, ptr %tif.addr, align 8
  %11 = load i64, ptr %tag.addr, align 8
  %12 = load ptr, ptr %ap.addr, align 8
  %call = call i32 %9(ptr noundef %10, i64 noundef %11, ptr noundef %12)
  store i32 %call, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %13, i32 0, i32 3
  %14 = load i64, ptr %tif_flags, align 8
  %or2 = or i64 %14, 8
  store i64 %or2, ptr %tif_flags, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nounwind ssp uwtable
define internal void @PredictorPrintDir(ptr noundef %tif, ptr noundef %fd, i64 noundef %flags) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %fd.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %sp = alloca ptr, align 8
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
  %arrayidx = getelementptr inbounds [3 x i64], ptr %td_fieldsset, i64 0, i64 1
  %4 = load i64, ptr %arrayidx, align 8
  %and = and i64 %4, 1073741824
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %fd.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.1)
  %6 = load ptr, ptr %sp, align 8
  %predictor = getelementptr inbounds %struct.TIFFPredictorState, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %predictor, align 8
  switch i32 %7, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %if.then
  %8 = load ptr, ptr %fd.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.2)
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.then
  %9 = load ptr, ptr %fd.addr, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.3)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb2, %sw.bb
  %10 = load ptr, ptr %fd.addr, align 8
  %11 = load ptr, ptr %sp, align 8
  %predictor4 = getelementptr inbounds %struct.TIFFPredictorState, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %predictor4, align 8
  %13 = load ptr, ptr %sp, align 8
  %predictor5 = getelementptr inbounds %struct.TIFFPredictorState, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %predictor5, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.4, i32 noundef %12, i32 noundef %14)
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  %15 = load ptr, ptr %sp, align 8
  %printdir = getelementptr inbounds %struct.TIFFPredictorState, ptr %15, i32 0, i32 9
  %16 = load ptr, ptr %printdir, align 8
  %tobool7 = icmp ne ptr %16, null
  br i1 %tobool7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %17 = load ptr, ptr %sp, align 8
  %printdir9 = getelementptr inbounds %struct.TIFFPredictorState, ptr %17, i32 0, i32 9
  %18 = load ptr, ptr %printdir9, align 8
  %19 = load ptr, ptr %tif.addr, align 8
  %20 = load ptr, ptr %fd.addr, align 8
  %21 = load i64, ptr %flags.addr, align 8
  call void %18(ptr noundef %19, ptr noundef %20, i64 noundef %21)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @PredictorSetupDecode(ptr noundef %tif) #0 {
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
  %3 = load ptr, ptr %sp, align 8
  %setupdecode = getelementptr inbounds %struct.TIFFPredictorState, ptr %3, i32 0, i32 10
  %4 = load ptr, ptr %setupdecode, align 8
  %5 = load ptr, ptr %tif.addr, align 8
  %call = call i32 %4(ptr noundef %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %6 = load ptr, ptr %tif.addr, align 8
  %call1 = call i32 @PredictorSetup(ptr noundef %6)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load ptr, ptr %sp, align 8
  %predictor = getelementptr inbounds %struct.TIFFPredictorState, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %predictor, align 8
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %if.then3, label %if.end18

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %9, i32 0, i32 8
  %10 = load i16, ptr %td_bitspersample, align 8
  %conv = zext i16 %10 to i32
  switch i32 %conv, label %sw.epilog [
    i32 8, label %sw.bb
    i32 16, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.then3
  %11 = load ptr, ptr %sp, align 8
  %pfunc = getelementptr inbounds %struct.TIFFPredictorState, ptr %11, i32 0, i32 3
  store ptr @horAcc8, ptr %pfunc, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.then3
  %12 = load ptr, ptr %sp, align 8
  %pfunc5 = getelementptr inbounds %struct.TIFFPredictorState, ptr %12, i32 0, i32 3
  store ptr @horAcc16, ptr %pfunc5, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then3, %sw.bb4, %sw.bb
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %13, i32 0, i32 26
  %14 = load ptr, ptr %tif_decoderow, align 8
  %15 = load ptr, ptr %sp, align 8
  %coderow = getelementptr inbounds %struct.TIFFPredictorState, ptr %15, i32 0, i32 4
  store ptr %14, ptr %coderow, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow6 = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 26
  store ptr @PredictorDecodeRow, ptr %tif_decoderow6, align 8
  %17 = load ptr, ptr %tif.addr, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %17, i32 0, i32 28
  %18 = load ptr, ptr %tif_decodestrip, align 8
  %19 = load ptr, ptr %sp, align 8
  %codestrip = getelementptr inbounds %struct.TIFFPredictorState, ptr %19, i32 0, i32 5
  store ptr %18, ptr %codestrip, align 8
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_decodestrip7 = getelementptr inbounds %struct.tiff, ptr %20, i32 0, i32 28
  store ptr @PredictorDecodeTile, ptr %tif_decodestrip7, align 8
  %21 = load ptr, ptr %tif.addr, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %21, i32 0, i32 30
  %22 = load ptr, ptr %tif_decodetile, align 8
  %23 = load ptr, ptr %sp, align 8
  %codetile = getelementptr inbounds %struct.TIFFPredictorState, ptr %23, i32 0, i32 6
  store ptr %22, ptr %codetile, align 8
  %24 = load ptr, ptr %tif.addr, align 8
  %tif_decodetile8 = getelementptr inbounds %struct.tiff, ptr %24, i32 0, i32 30
  store ptr @PredictorDecodeTile, ptr %tif_decodetile8, align 8
  %25 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %25, i32 0, i32 3
  %26 = load i64, ptr %tif_flags, align 8
  %and = and i64 %26, 128
  %tobool9 = icmp ne i64 %and, 0
  br i1 %tobool9, label %if.then10, label %if.end17

if.then10:                                        ; preds = %sw.epilog
  %27 = load ptr, ptr %sp, align 8
  %pfunc11 = getelementptr inbounds %struct.TIFFPredictorState, ptr %27, i32 0, i32 3
  %28 = load ptr, ptr %pfunc11, align 8
  %cmp12 = icmp eq ptr %28, @horAcc16
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.then10
  %29 = load ptr, ptr %sp, align 8
  %pfunc15 = getelementptr inbounds %struct.TIFFPredictorState, ptr %29, i32 0, i32 3
  store ptr @swabHorAcc16, ptr %pfunc15, align 8
  %30 = load ptr, ptr %tif.addr, align 8
  %tif_postdecode = getelementptr inbounds %struct.tiff, ptr %30, i32 0, i32 54
  store ptr @_TIFFNoPostDecode, ptr %tif_postdecode, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then10
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %sw.epilog
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.then
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @PredictorSetupEncode(ptr noundef %tif) #0 {
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
  %3 = load ptr, ptr %sp, align 8
  %setupencode = getelementptr inbounds %struct.TIFFPredictorState, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %setupencode, align 8
  %5 = load ptr, ptr %tif.addr, align 8
  %call = call i32 %4(ptr noundef %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %6 = load ptr, ptr %tif.addr, align 8
  %call1 = call i32 @PredictorSetup(ptr noundef %6)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load ptr, ptr %sp, align 8
  %predictor = getelementptr inbounds %struct.TIFFPredictorState, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %predictor, align 8
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %if.then3, label %if.end9

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %9, i32 0, i32 8
  %10 = load i16, ptr %td_bitspersample, align 8
  %conv = zext i16 %10 to i32
  switch i32 %conv, label %sw.epilog [
    i32 8, label %sw.bb
    i32 16, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.then3
  %11 = load ptr, ptr %sp, align 8
  %pfunc = getelementptr inbounds %struct.TIFFPredictorState, ptr %11, i32 0, i32 3
  store ptr @horDiff8, ptr %pfunc, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.then3
  %12 = load ptr, ptr %sp, align 8
  %pfunc5 = getelementptr inbounds %struct.TIFFPredictorState, ptr %12, i32 0, i32 3
  store ptr @horDiff16, ptr %pfunc5, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then3, %sw.bb4, %sw.bb
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_encoderow = getelementptr inbounds %struct.tiff, ptr %13, i32 0, i32 27
  %14 = load ptr, ptr %tif_encoderow, align 8
  %15 = load ptr, ptr %sp, align 8
  %coderow = getelementptr inbounds %struct.TIFFPredictorState, ptr %15, i32 0, i32 4
  store ptr %14, ptr %coderow, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_encoderow6 = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 27
  store ptr @PredictorEncodeRow, ptr %tif_encoderow6, align 8
  %17 = load ptr, ptr %tif.addr, align 8
  %tif_encodestrip = getelementptr inbounds %struct.tiff, ptr %17, i32 0, i32 29
  %18 = load ptr, ptr %tif_encodestrip, align 8
  %19 = load ptr, ptr %sp, align 8
  %codestrip = getelementptr inbounds %struct.TIFFPredictorState, ptr %19, i32 0, i32 5
  store ptr %18, ptr %codestrip, align 8
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_encodestrip7 = getelementptr inbounds %struct.tiff, ptr %20, i32 0, i32 29
  store ptr @PredictorEncodeTile, ptr %tif_encodestrip7, align 8
  %21 = load ptr, ptr %tif.addr, align 8
  %tif_encodetile = getelementptr inbounds %struct.tiff, ptr %21, i32 0, i32 31
  %22 = load ptr, ptr %tif_encodetile, align 8
  %23 = load ptr, ptr %sp, align 8
  %codetile = getelementptr inbounds %struct.TIFFPredictorState, ptr %23, i32 0, i32 6
  store ptr %22, ptr %codetile, align 8
  %24 = load ptr, ptr %tif.addr, align 8
  %tif_encodetile8 = getelementptr inbounds %struct.tiff, ptr %24, i32 0, i32 31
  store ptr @PredictorEncodeTile, ptr %tif_encodetile8, align 8
  br label %if.end9

if.end9:                                          ; preds = %sw.epilog, %if.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @PredictorSetup(ptr noundef %tif) #0 {
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
  %3 = load ptr, ptr %sp, align 8
  %predictor = getelementptr inbounds %struct.TIFFPredictorState, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %predictor, align 8
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %sp, align 8
  %predictor1 = getelementptr inbounds %struct.TIFFPredictorState, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %predictor1, align 8
  %cmp2 = icmp ne i32 %6, 2
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %tif_name, align 8
  %9 = load ptr, ptr %sp, align 8
  %predictor4 = getelementptr inbounds %struct.TIFFPredictorState, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %predictor4, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %8, ptr noundef @.str.5, i32 noundef %10)
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %11 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i32 0, i32 8
  %12 = load i16, ptr %td_bitspersample, align 8
  %conv = zext i16 %12 to i32
  %cmp6 = icmp ne i32 %conv, 8
  br i1 %cmp6, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.end5
  %13 = load ptr, ptr %td, align 8
  %td_bitspersample8 = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i32 0, i32 8
  %14 = load i16, ptr %td_bitspersample8, align 8
  %conv9 = zext i16 %14 to i32
  %cmp10 = icmp ne i32 %conv9, 16
  br i1 %cmp10, label %if.then12, label %if.end16

if.then12:                                        ; preds = %land.lhs.true
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_name13 = getelementptr inbounds %struct.tiff, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %tif_name13, align 8
  %17 = load ptr, ptr %td, align 8
  %td_bitspersample14 = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i32 0, i32 8
  %18 = load i16, ptr %td_bitspersample14, align 8
  %conv15 = zext i16 %18 to i32
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %16, ptr noundef @.str.6, i32 noundef %conv15)
  store i32 0, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %land.lhs.true, %if.end5
  %19 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %19, i32 0, i32 24
  %20 = load i16, ptr %td_planarconfig, align 2
  %conv17 = zext i16 %20 to i32
  %cmp18 = icmp eq i32 %conv17, 1
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end16
  %21 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %21, i32 0, i32 15
  %22 = load i16, ptr %td_samplesperpixel, align 2
  %conv20 = zext i16 %22 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv20, %cond.true ], [ 1, %cond.false ]
  %23 = load ptr, ptr %sp, align 8
  %stride = getelementptr inbounds %struct.TIFFPredictorState, ptr %23, i32 0, i32 1
  store i32 %cond, ptr %stride, align 4
  %24 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %24, i32 0, i32 3
  %25 = load i64, ptr %tif_flags, align 8
  %and = and i64 %25, 1024
  %cmp21 = icmp ne i64 %and, 0
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %cond.end
  %26 = load ptr, ptr %tif.addr, align 8
  %call = call i64 @TIFFTileRowSize(ptr noundef %26)
  %27 = load ptr, ptr %sp, align 8
  %rowsize = getelementptr inbounds %struct.TIFFPredictorState, ptr %27, i32 0, i32 2
  store i64 %call, ptr %rowsize, align 8
  br label %if.end26

if.else:                                          ; preds = %cond.end
  %28 = load ptr, ptr %tif.addr, align 8
  %call24 = call i64 @TIFFScanlineSize(ptr noundef %28)
  %29 = load ptr, ptr %sp, align 8
  %rowsize25 = getelementptr inbounds %struct.TIFFPredictorState, ptr %29, i32 0, i32 2
  store i64 %call24, ptr %rowsize25, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then23
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end26, %if.then12, %if.then3, %if.then
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

; Function Attrs: nounwind ssp uwtable
define internal void @horAcc8(ptr noundef %tif, ptr noundef %cp0, i64 noundef %cc) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %cp0.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  %sp = alloca ptr, align 8
  %stride = alloca i64, align 8
  %cp = alloca ptr, align 8
  %cr = alloca i32, align 4
  %cg = alloca i32, align 4
  %cb = alloca i32, align 4
  %cr31 = alloca i32, align 4
  %cg34 = alloca i32, align 4
  %cb37 = alloca i32, align 4
  %ca = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %cp0, ptr %cp0.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load ptr, ptr %sp, align 8
  %stride1 = getelementptr inbounds %struct.TIFFPredictorState, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %stride1, align 4
  %conv = sext i32 %3 to i64
  store i64 %conv, ptr %stride, align 8
  %4 = load ptr, ptr %cp0.addr, align 8
  store ptr %4, ptr %cp, align 8
  %5 = load i64, ptr %cc.addr, align 8
  %6 = load i64, ptr %stride, align 8
  %cmp = icmp sgt i64 %5, %6
  br i1 %cmp, label %if.then, label %if.end114

if.then:                                          ; preds = %entry
  %7 = load i64, ptr %stride, align 8
  %8 = load i64, ptr %cc.addr, align 8
  %sub = sub nsw i64 %8, %7
  store i64 %sub, ptr %cc.addr, align 8
  %9 = load i64, ptr %stride, align 8
  %cmp3 = icmp eq i64 %9, 3
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %10 = load ptr, ptr %cp, align 8
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx, align 1
  %conv6 = sext i8 %11 to i32
  store i32 %conv6, ptr %cr, align 4
  %12 = load ptr, ptr %cp, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %12, i64 1
  %13 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %13 to i32
  store i32 %conv8, ptr %cg, align 4
  %14 = load ptr, ptr %cp, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %14, i64 2
  %15 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %15 to i32
  store i32 %conv10, ptr %cb, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then5
  %16 = load i64, ptr %cc.addr, align 8
  %sub11 = sub nsw i64 %16, 3
  store i64 %sub11, ptr %cc.addr, align 8
  %17 = load ptr, ptr %cp, align 8
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 3
  store ptr %add.ptr, ptr %cp, align 8
  %18 = load ptr, ptr %cp, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %18, i64 0
  %19 = load i8, ptr %arrayidx12, align 1
  %conv13 = sext i8 %19 to i32
  %20 = load i32, ptr %cr, align 4
  %add = add i32 %20, %conv13
  store i32 %add, ptr %cr, align 4
  %conv14 = trunc i32 %add to i8
  %21 = load ptr, ptr %cp, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %21, i64 0
  store i8 %conv14, ptr %arrayidx15, align 1
  %22 = load ptr, ptr %cp, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %22, i64 1
  %23 = load i8, ptr %arrayidx16, align 1
  %conv17 = sext i8 %23 to i32
  %24 = load i32, ptr %cg, align 4
  %add18 = add i32 %24, %conv17
  store i32 %add18, ptr %cg, align 4
  %conv19 = trunc i32 %add18 to i8
  %25 = load ptr, ptr %cp, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %25, i64 1
  store i8 %conv19, ptr %arrayidx20, align 1
  %26 = load ptr, ptr %cp, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %26, i64 2
  %27 = load i8, ptr %arrayidx21, align 1
  %conv22 = sext i8 %27 to i32
  %28 = load i32, ptr %cb, align 4
  %add23 = add i32 %28, %conv22
  store i32 %add23, ptr %cb, align 4
  %conv24 = trunc i32 %add23 to i8
  %29 = load ptr, ptr %cp, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %29, i64 2
  store i8 %conv24, ptr %arrayidx25, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %30 = load i64, ptr %cc.addr, align 8
  %cmp26 = icmp sgt i64 %30, 0
  br i1 %cmp26, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  br label %if.end113

if.else:                                          ; preds = %if.then
  %31 = load i64, ptr %stride, align 8
  %cmp28 = icmp eq i64 %31, 4
  br i1 %cmp28, label %if.then30, label %if.else69

if.then30:                                        ; preds = %if.else
  %32 = load ptr, ptr %cp, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %32, i64 0
  %33 = load i8, ptr %arrayidx32, align 1
  %conv33 = sext i8 %33 to i32
  store i32 %conv33, ptr %cr31, align 4
  %34 = load ptr, ptr %cp, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %34, i64 1
  %35 = load i8, ptr %arrayidx35, align 1
  %conv36 = sext i8 %35 to i32
  store i32 %conv36, ptr %cg34, align 4
  %36 = load ptr, ptr %cp, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %36, i64 2
  %37 = load i8, ptr %arrayidx38, align 1
  %conv39 = sext i8 %37 to i32
  store i32 %conv39, ptr %cb37, align 4
  %38 = load ptr, ptr %cp, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %38, i64 3
  %39 = load i8, ptr %arrayidx40, align 1
  %conv41 = sext i8 %39 to i32
  store i32 %conv41, ptr %ca, align 4
  br label %do.body42

do.body42:                                        ; preds = %do.cond65, %if.then30
  %40 = load i64, ptr %cc.addr, align 8
  %sub43 = sub nsw i64 %40, 4
  store i64 %sub43, ptr %cc.addr, align 8
  %41 = load ptr, ptr %cp, align 8
  %add.ptr44 = getelementptr inbounds i8, ptr %41, i64 4
  store ptr %add.ptr44, ptr %cp, align 8
  %42 = load ptr, ptr %cp, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %42, i64 0
  %43 = load i8, ptr %arrayidx45, align 1
  %conv46 = sext i8 %43 to i32
  %44 = load i32, ptr %cr31, align 4
  %add47 = add i32 %44, %conv46
  store i32 %add47, ptr %cr31, align 4
  %conv48 = trunc i32 %add47 to i8
  %45 = load ptr, ptr %cp, align 8
  %arrayidx49 = getelementptr inbounds i8, ptr %45, i64 0
  store i8 %conv48, ptr %arrayidx49, align 1
  %46 = load ptr, ptr %cp, align 8
  %arrayidx50 = getelementptr inbounds i8, ptr %46, i64 1
  %47 = load i8, ptr %arrayidx50, align 1
  %conv51 = sext i8 %47 to i32
  %48 = load i32, ptr %cg34, align 4
  %add52 = add i32 %48, %conv51
  store i32 %add52, ptr %cg34, align 4
  %conv53 = trunc i32 %add52 to i8
  %49 = load ptr, ptr %cp, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %49, i64 1
  store i8 %conv53, ptr %arrayidx54, align 1
  %50 = load ptr, ptr %cp, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %50, i64 2
  %51 = load i8, ptr %arrayidx55, align 1
  %conv56 = sext i8 %51 to i32
  %52 = load i32, ptr %cb37, align 4
  %add57 = add i32 %52, %conv56
  store i32 %add57, ptr %cb37, align 4
  %conv58 = trunc i32 %add57 to i8
  %53 = load ptr, ptr %cp, align 8
  %arrayidx59 = getelementptr inbounds i8, ptr %53, i64 2
  store i8 %conv58, ptr %arrayidx59, align 1
  %54 = load ptr, ptr %cp, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %54, i64 3
  %55 = load i8, ptr %arrayidx60, align 1
  %conv61 = sext i8 %55 to i32
  %56 = load i32, ptr %ca, align 4
  %add62 = add i32 %56, %conv61
  store i32 %add62, ptr %ca, align 4
  %conv63 = trunc i32 %add62 to i8
  %57 = load ptr, ptr %cp, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %57, i64 3
  store i8 %conv63, ptr %arrayidx64, align 1
  br label %do.cond65

do.cond65:                                        ; preds = %do.body42
  %58 = load i64, ptr %cc.addr, align 8
  %cmp66 = icmp sgt i64 %58, 0
  br i1 %cmp66, label %do.body42, label %do.end68, !llvm.loop !8

do.end68:                                         ; preds = %do.cond65
  br label %if.end

if.else69:                                        ; preds = %if.else
  br label %do.body70

do.body70:                                        ; preds = %do.cond109, %if.else69
  %59 = load i64, ptr %stride, align 8
  switch i64 %59, label %sw.default [
    i64 4, label %sw.bb
    i64 3, label %sw.bb86
    i64 2, label %sw.bb93
    i64 1, label %sw.bb100
    i64 0, label %sw.bb107
  ]

sw.default:                                       ; preds = %do.body70
  %60 = load i64, ptr %stride, align 8
  %sub71 = sub nsw i64 %60, 4
  %conv72 = trunc i64 %sub71 to i32
  store i32 %conv72, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.default
  %61 = load i32, ptr %i, align 4
  %cmp73 = icmp sgt i32 %61, 0
  br i1 %cmp73, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %62 = load ptr, ptr %cp, align 8
  %63 = load i8, ptr %62, align 1
  %conv75 = sext i8 %63 to i32
  %64 = load ptr, ptr %cp, align 8
  %65 = load i64, ptr %stride, align 8
  %arrayidx76 = getelementptr inbounds i8, ptr %64, i64 %65
  %66 = load i8, ptr %arrayidx76, align 1
  %conv77 = sext i8 %66 to i32
  %add78 = add nsw i32 %conv77, %conv75
  %conv79 = trunc i32 %add78 to i8
  store i8 %conv79, ptr %arrayidx76, align 1
  %67 = load ptr, ptr %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %67, i32 1
  store ptr %incdec.ptr, ptr %cp, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %68 = load i32, ptr %i, align 4
  %dec = add nsw i32 %68, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %sw.bb

sw.bb:                                            ; preds = %do.body70, %for.end
  %69 = load ptr, ptr %cp, align 8
  %70 = load i8, ptr %69, align 1
  %conv80 = sext i8 %70 to i32
  %71 = load ptr, ptr %cp, align 8
  %72 = load i64, ptr %stride, align 8
  %arrayidx81 = getelementptr inbounds i8, ptr %71, i64 %72
  %73 = load i8, ptr %arrayidx81, align 1
  %conv82 = sext i8 %73 to i32
  %add83 = add nsw i32 %conv82, %conv80
  %conv84 = trunc i32 %add83 to i8
  store i8 %conv84, ptr %arrayidx81, align 1
  %74 = load ptr, ptr %cp, align 8
  %incdec.ptr85 = getelementptr inbounds i8, ptr %74, i32 1
  store ptr %incdec.ptr85, ptr %cp, align 8
  br label %sw.bb86

sw.bb86:                                          ; preds = %do.body70, %sw.bb
  %75 = load ptr, ptr %cp, align 8
  %76 = load i8, ptr %75, align 1
  %conv87 = sext i8 %76 to i32
  %77 = load ptr, ptr %cp, align 8
  %78 = load i64, ptr %stride, align 8
  %arrayidx88 = getelementptr inbounds i8, ptr %77, i64 %78
  %79 = load i8, ptr %arrayidx88, align 1
  %conv89 = sext i8 %79 to i32
  %add90 = add nsw i32 %conv89, %conv87
  %conv91 = trunc i32 %add90 to i8
  store i8 %conv91, ptr %arrayidx88, align 1
  %80 = load ptr, ptr %cp, align 8
  %incdec.ptr92 = getelementptr inbounds i8, ptr %80, i32 1
  store ptr %incdec.ptr92, ptr %cp, align 8
  br label %sw.bb93

sw.bb93:                                          ; preds = %do.body70, %sw.bb86
  %81 = load ptr, ptr %cp, align 8
  %82 = load i8, ptr %81, align 1
  %conv94 = sext i8 %82 to i32
  %83 = load ptr, ptr %cp, align 8
  %84 = load i64, ptr %stride, align 8
  %arrayidx95 = getelementptr inbounds i8, ptr %83, i64 %84
  %85 = load i8, ptr %arrayidx95, align 1
  %conv96 = sext i8 %85 to i32
  %add97 = add nsw i32 %conv96, %conv94
  %conv98 = trunc i32 %add97 to i8
  store i8 %conv98, ptr %arrayidx95, align 1
  %86 = load ptr, ptr %cp, align 8
  %incdec.ptr99 = getelementptr inbounds i8, ptr %86, i32 1
  store ptr %incdec.ptr99, ptr %cp, align 8
  br label %sw.bb100

sw.bb100:                                         ; preds = %do.body70, %sw.bb93
  %87 = load ptr, ptr %cp, align 8
  %88 = load i8, ptr %87, align 1
  %conv101 = sext i8 %88 to i32
  %89 = load ptr, ptr %cp, align 8
  %90 = load i64, ptr %stride, align 8
  %arrayidx102 = getelementptr inbounds i8, ptr %89, i64 %90
  %91 = load i8, ptr %arrayidx102, align 1
  %conv103 = sext i8 %91 to i32
  %add104 = add nsw i32 %conv103, %conv101
  %conv105 = trunc i32 %add104 to i8
  store i8 %conv105, ptr %arrayidx102, align 1
  %92 = load ptr, ptr %cp, align 8
  %incdec.ptr106 = getelementptr inbounds i8, ptr %92, i32 1
  store ptr %incdec.ptr106, ptr %cp, align 8
  br label %sw.bb107

sw.bb107:                                         ; preds = %do.body70, %sw.bb100
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb107
  %93 = load i64, ptr %stride, align 8
  %94 = load i64, ptr %cc.addr, align 8
  %sub108 = sub nsw i64 %94, %93
  store i64 %sub108, ptr %cc.addr, align 8
  br label %do.cond109

do.cond109:                                       ; preds = %sw.epilog
  %95 = load i64, ptr %cc.addr, align 8
  %cmp110 = icmp sgt i64 %95, 0
  br i1 %cmp110, label %do.body70, label %do.end112, !llvm.loop !10

do.end112:                                        ; preds = %do.cond109
  br label %if.end

if.end:                                           ; preds = %do.end112, %do.end68
  br label %if.end113

if.end113:                                        ; preds = %if.end, %do.end
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @horAcc16(ptr noundef %tif, ptr noundef %cp0, i64 noundef %cc) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %cp0.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  %stride = alloca i64, align 8
  %wp = alloca ptr, align 8
  %wc = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %cp0, ptr %cp0.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  %stride1 = getelementptr inbounds %struct.TIFFPredictorState, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %stride1, align 4
  %conv = sext i32 %2 to i64
  store i64 %conv, ptr %stride, align 8
  %3 = load ptr, ptr %cp0.addr, align 8
  store ptr %3, ptr %wp, align 8
  %4 = load i64, ptr %cc.addr, align 8
  %div = sdiv i64 %4, 2
  store i64 %div, ptr %wc, align 8
  %5 = load i64, ptr %wc, align 8
  %6 = load i64, ptr %stride, align 8
  %cmp = icmp sgt i64 %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i64, ptr %stride, align 8
  %8 = load i64, ptr %wc, align 8
  %sub = sub nsw i64 %8, %7
  store i64 %sub, ptr %wc, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %9 = load i64, ptr %stride, align 8
  switch i64 %9, label %sw.default [
    i64 4, label %sw.bb
    i64 3, label %sw.bb18
    i64 2, label %sw.bb26
    i64 1, label %sw.bb34
    i64 0, label %sw.bb42
  ]

sw.default:                                       ; preds = %do.body
  %10 = load i64, ptr %stride, align 8
  %sub3 = sub nsw i64 %10, 4
  %conv4 = trunc i64 %sub3 to i32
  store i32 %conv4, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.default
  %11 = load i32, ptr %i, align 4
  %cmp5 = icmp sgt i32 %11, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %wp, align 8
  %arrayidx = getelementptr inbounds i16, ptr %12, i64 0
  %13 = load i16, ptr %arrayidx, align 2
  %conv7 = zext i16 %13 to i32
  %14 = load ptr, ptr %wp, align 8
  %15 = load i64, ptr %stride, align 8
  %arrayidx8 = getelementptr inbounds i16, ptr %14, i64 %15
  %16 = load i16, ptr %arrayidx8, align 2
  %conv9 = zext i16 %16 to i32
  %add = add nsw i32 %conv9, %conv7
  %conv10 = trunc i32 %add to i16
  store i16 %conv10, ptr %arrayidx8, align 2
  %17 = load ptr, ptr %wp, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %17, i32 1
  store ptr %incdec.ptr, ptr %wp, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %i, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  br label %sw.bb

sw.bb:                                            ; preds = %do.body, %for.end
  %19 = load ptr, ptr %wp, align 8
  %arrayidx11 = getelementptr inbounds i16, ptr %19, i64 0
  %20 = load i16, ptr %arrayidx11, align 2
  %conv12 = zext i16 %20 to i32
  %21 = load ptr, ptr %wp, align 8
  %22 = load i64, ptr %stride, align 8
  %arrayidx13 = getelementptr inbounds i16, ptr %21, i64 %22
  %23 = load i16, ptr %arrayidx13, align 2
  %conv14 = zext i16 %23 to i32
  %add15 = add nsw i32 %conv14, %conv12
  %conv16 = trunc i32 %add15 to i16
  store i16 %conv16, ptr %arrayidx13, align 2
  %24 = load ptr, ptr %wp, align 8
  %incdec.ptr17 = getelementptr inbounds i16, ptr %24, i32 1
  store ptr %incdec.ptr17, ptr %wp, align 8
  br label %sw.bb18

sw.bb18:                                          ; preds = %do.body, %sw.bb
  %25 = load ptr, ptr %wp, align 8
  %arrayidx19 = getelementptr inbounds i16, ptr %25, i64 0
  %26 = load i16, ptr %arrayidx19, align 2
  %conv20 = zext i16 %26 to i32
  %27 = load ptr, ptr %wp, align 8
  %28 = load i64, ptr %stride, align 8
  %arrayidx21 = getelementptr inbounds i16, ptr %27, i64 %28
  %29 = load i16, ptr %arrayidx21, align 2
  %conv22 = zext i16 %29 to i32
  %add23 = add nsw i32 %conv22, %conv20
  %conv24 = trunc i32 %add23 to i16
  store i16 %conv24, ptr %arrayidx21, align 2
  %30 = load ptr, ptr %wp, align 8
  %incdec.ptr25 = getelementptr inbounds i16, ptr %30, i32 1
  store ptr %incdec.ptr25, ptr %wp, align 8
  br label %sw.bb26

sw.bb26:                                          ; preds = %do.body, %sw.bb18
  %31 = load ptr, ptr %wp, align 8
  %arrayidx27 = getelementptr inbounds i16, ptr %31, i64 0
  %32 = load i16, ptr %arrayidx27, align 2
  %conv28 = zext i16 %32 to i32
  %33 = load ptr, ptr %wp, align 8
  %34 = load i64, ptr %stride, align 8
  %arrayidx29 = getelementptr inbounds i16, ptr %33, i64 %34
  %35 = load i16, ptr %arrayidx29, align 2
  %conv30 = zext i16 %35 to i32
  %add31 = add nsw i32 %conv30, %conv28
  %conv32 = trunc i32 %add31 to i16
  store i16 %conv32, ptr %arrayidx29, align 2
  %36 = load ptr, ptr %wp, align 8
  %incdec.ptr33 = getelementptr inbounds i16, ptr %36, i32 1
  store ptr %incdec.ptr33, ptr %wp, align 8
  br label %sw.bb34

sw.bb34:                                          ; preds = %do.body, %sw.bb26
  %37 = load ptr, ptr %wp, align 8
  %arrayidx35 = getelementptr inbounds i16, ptr %37, i64 0
  %38 = load i16, ptr %arrayidx35, align 2
  %conv36 = zext i16 %38 to i32
  %39 = load ptr, ptr %wp, align 8
  %40 = load i64, ptr %stride, align 8
  %arrayidx37 = getelementptr inbounds i16, ptr %39, i64 %40
  %41 = load i16, ptr %arrayidx37, align 2
  %conv38 = zext i16 %41 to i32
  %add39 = add nsw i32 %conv38, %conv36
  %conv40 = trunc i32 %add39 to i16
  store i16 %conv40, ptr %arrayidx37, align 2
  %42 = load ptr, ptr %wp, align 8
  %incdec.ptr41 = getelementptr inbounds i16, ptr %42, i32 1
  store ptr %incdec.ptr41, ptr %wp, align 8
  br label %sw.bb42

sw.bb42:                                          ; preds = %do.body, %sw.bb34
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb42
  %43 = load i64, ptr %stride, align 8
  %44 = load i64, ptr %wc, align 8
  %sub43 = sub nsw i64 %44, %43
  store i64 %sub43, ptr %wc, align 8
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  %45 = load i64, ptr %wc, align 8
  %cmp44 = icmp sgt i64 %45, 0
  br i1 %cmp44, label %do.body, label %do.end, !llvm.loop !12

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @PredictorDecodeRow(ptr noundef %tif, ptr noundef %op0, i64 noundef %occ0, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %op0.addr = alloca ptr, align 8
  %occ0.addr = alloca i64, align 8
  %s.addr = alloca i16, align 2
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %op0, ptr %op0.addr, align 8
  store i64 %occ0, ptr %occ0.addr, align 8
  store i16 %s, ptr %s.addr, align 2
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
  call void @__assert_rtn(ptr noundef @__func__.PredictorDecodeRow, ptr noundef @.str.7, i32 noundef 244, ptr noundef @.str.8) #3
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  %4 = load ptr, ptr %sp, align 8
  %coderow = getelementptr inbounds %struct.TIFFPredictorState, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %coderow, align 8
  %cmp1 = icmp ne ptr %5, null
  %lnot3 = xor i1 %cmp1, true
  %lnot.ext4 = zext i1 %lnot3 to i32
  %conv5 = sext i32 %lnot.ext4 to i64
  %tobool6 = icmp ne i64 %conv5, 0
  br i1 %tobool6, label %cond.true7, label %cond.false8

cond.true7:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.PredictorDecodeRow, ptr noundef @.str.7, i32 noundef 245, ptr noundef @.str.9) #3
  unreachable

6:                                                ; No predecessors!
  br label %cond.end9

cond.false8:                                      ; preds = %cond.end
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false8, %6
  %7 = load ptr, ptr %sp, align 8
  %pfunc = getelementptr inbounds %struct.TIFFPredictorState, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %pfunc, align 8
  %cmp10 = icmp ne ptr %8, null
  %lnot12 = xor i1 %cmp10, true
  %lnot.ext13 = zext i1 %lnot12 to i32
  %conv14 = sext i32 %lnot.ext13 to i64
  %tobool15 = icmp ne i64 %conv14, 0
  br i1 %tobool15, label %cond.true16, label %cond.false17

cond.true16:                                      ; preds = %cond.end9
  call void @__assert_rtn(ptr noundef @__func__.PredictorDecodeRow, ptr noundef @.str.7, i32 noundef 246, ptr noundef @.str.10) #3
  unreachable

9:                                                ; No predecessors!
  br label %cond.end18

cond.false17:                                     ; preds = %cond.end9
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false17, %9
  %10 = load ptr, ptr %sp, align 8
  %coderow19 = getelementptr inbounds %struct.TIFFPredictorState, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %coderow19, align 8
  %12 = load ptr, ptr %tif.addr, align 8
  %13 = load ptr, ptr %op0.addr, align 8
  %14 = load i64, ptr %occ0.addr, align 8
  %15 = load i16, ptr %s.addr, align 2
  %call = call i32 %11(ptr noundef %12, ptr noundef %13, i64 noundef %14, i16 noundef zeroext %15)
  %tobool20 = icmp ne i32 %call, 0
  br i1 %tobool20, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end18
  %16 = load ptr, ptr %sp, align 8
  %pfunc21 = getelementptr inbounds %struct.TIFFPredictorState, ptr %16, i32 0, i32 3
  %17 = load ptr, ptr %pfunc21, align 8
  %18 = load ptr, ptr %tif.addr, align 8
  %19 = load ptr, ptr %op0.addr, align 8
  %20 = load i64, ptr %occ0.addr, align 8
  call void %17(ptr noundef %18, ptr noundef %19, i64 noundef %20)
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %cond.end18
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @PredictorDecodeTile(ptr noundef %tif, ptr noundef %op0, i64 noundef %occ0, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %op0.addr = alloca ptr, align 8
  %occ0.addr = alloca i64, align 8
  %s.addr = alloca i16, align 2
  %sp = alloca ptr, align 8
  %rowsize = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %op0, ptr %op0.addr, align 8
  store i64 %occ0, ptr %occ0.addr, align 8
  store i16 %s, ptr %s.addr, align 2
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
  call void @__assert_rtn(ptr noundef @__func__.PredictorDecodeTile, ptr noundef @.str.7, i32 noundef 266, ptr noundef @.str.8) #3
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  %4 = load ptr, ptr %sp, align 8
  %codetile = getelementptr inbounds %struct.TIFFPredictorState, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %codetile, align 8
  %cmp1 = icmp ne ptr %5, null
  %lnot3 = xor i1 %cmp1, true
  %lnot.ext4 = zext i1 %lnot3 to i32
  %conv5 = sext i32 %lnot.ext4 to i64
  %tobool6 = icmp ne i64 %conv5, 0
  br i1 %tobool6, label %cond.true7, label %cond.false8

cond.true7:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.PredictorDecodeTile, ptr noundef @.str.7, i32 noundef 267, ptr noundef @.str.11) #3
  unreachable

6:                                                ; No predecessors!
  br label %cond.end9

cond.false8:                                      ; preds = %cond.end
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false8, %6
  %7 = load ptr, ptr %sp, align 8
  %codetile10 = getelementptr inbounds %struct.TIFFPredictorState, ptr %7, i32 0, i32 6
  %8 = load ptr, ptr %codetile10, align 8
  %9 = load ptr, ptr %tif.addr, align 8
  %10 = load ptr, ptr %op0.addr, align 8
  %11 = load i64, ptr %occ0.addr, align 8
  %12 = load i16, ptr %s.addr, align 2
  %call = call i32 %8(ptr noundef %9, ptr noundef %10, i64 noundef %11, i16 noundef zeroext %12)
  %tobool11 = icmp ne i32 %call, 0
  br i1 %tobool11, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end9
  %13 = load ptr, ptr %sp, align 8
  %rowsize12 = getelementptr inbounds %struct.TIFFPredictorState, ptr %13, i32 0, i32 2
  %14 = load i64, ptr %rowsize12, align 8
  store i64 %14, ptr %rowsize, align 8
  %15 = load i64, ptr %rowsize, align 8
  %cmp13 = icmp sgt i64 %15, 0
  %lnot15 = xor i1 %cmp13, true
  %lnot.ext16 = zext i1 %lnot15 to i32
  %conv17 = sext i32 %lnot.ext16 to i64
  %tobool18 = icmp ne i64 %conv17, 0
  br i1 %tobool18, label %cond.true19, label %cond.false20

cond.true19:                                      ; preds = %if.then
  call void @__assert_rtn(ptr noundef @__func__.PredictorDecodeTile, ptr noundef @.str.7, i32 noundef 270, ptr noundef @.str.12) #3
  unreachable

16:                                               ; No predecessors!
  br label %cond.end21

cond.false20:                                     ; preds = %if.then
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false20, %16
  %17 = load ptr, ptr %sp, align 8
  %pfunc = getelementptr inbounds %struct.TIFFPredictorState, ptr %17, i32 0, i32 3
  %18 = load ptr, ptr %pfunc, align 8
  %cmp22 = icmp ne ptr %18, null
  %lnot24 = xor i1 %cmp22, true
  %lnot.ext25 = zext i1 %lnot24 to i32
  %conv26 = sext i32 %lnot.ext25 to i64
  %tobool27 = icmp ne i64 %conv26, 0
  br i1 %tobool27, label %cond.true28, label %cond.false29

cond.true28:                                      ; preds = %cond.end21
  call void @__assert_rtn(ptr noundef @__func__.PredictorDecodeTile, ptr noundef @.str.7, i32 noundef 271, ptr noundef @.str.10) #3
  unreachable

19:                                               ; No predecessors!
  br label %cond.end30

cond.false29:                                     ; preds = %cond.end21
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false29, %19
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end30
  %20 = load i64, ptr %occ0.addr, align 8
  %cmp31 = icmp sgt i64 %20, 0
  br i1 %cmp31, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load ptr, ptr %sp, align 8
  %pfunc33 = getelementptr inbounds %struct.TIFFPredictorState, ptr %21, i32 0, i32 3
  %22 = load ptr, ptr %pfunc33, align 8
  %23 = load ptr, ptr %tif.addr, align 8
  %24 = load ptr, ptr %op0.addr, align 8
  %25 = load i64, ptr %rowsize, align 8
  call void %22(ptr noundef %23, ptr noundef %24, i64 noundef %25)
  %26 = load i64, ptr %rowsize, align 8
  %27 = load i64, ptr %occ0.addr, align 8
  %sub = sub nsw i64 %27, %26
  store i64 %sub, ptr %occ0.addr, align 8
  %28 = load i64, ptr %rowsize, align 8
  %29 = load ptr, ptr %op0.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %29, i64 %28
  store ptr %add.ptr, ptr %op0.addr, align 8
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %cond.end9
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %while.end
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

; Function Attrs: nounwind ssp uwtable
define internal void @swabHorAcc16(ptr noundef %tif, ptr noundef %cp0, i64 noundef %cc) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %cp0.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  %sp = alloca ptr, align 8
  %stride = alloca i64, align 8
  %wp = alloca ptr, align 8
  %wc = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %cp0, ptr %cp0.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load ptr, ptr %sp, align 8
  %stride1 = getelementptr inbounds %struct.TIFFPredictorState, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %stride1, align 4
  %conv = sext i32 %3 to i64
  store i64 %conv, ptr %stride, align 8
  %4 = load ptr, ptr %cp0.addr, align 8
  store ptr %4, ptr %wp, align 8
  %5 = load i64, ptr %cc.addr, align 8
  %div = sdiv i64 %5, 2
  store i64 %div, ptr %wc, align 8
  %6 = load i64, ptr %wc, align 8
  %7 = load i64, ptr %stride, align 8
  %cmp = icmp sgt i64 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %wp, align 8
  %9 = load i64, ptr %wc, align 8
  call void @TIFFSwabArrayOfShort(ptr noundef %8, i64 noundef %9)
  %10 = load i64, ptr %stride, align 8
  %11 = load i64, ptr %wc, align 8
  %sub = sub nsw i64 %11, %10
  store i64 %sub, ptr %wc, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %12 = load i64, ptr %stride, align 8
  switch i64 %12, label %sw.default [
    i64 4, label %sw.bb
    i64 3, label %sw.bb18
    i64 2, label %sw.bb26
    i64 1, label %sw.bb34
    i64 0, label %sw.bb42
  ]

sw.default:                                       ; preds = %do.body
  %13 = load i64, ptr %stride, align 8
  %sub3 = sub nsw i64 %13, 4
  %conv4 = trunc i64 %sub3 to i32
  store i32 %conv4, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.default
  %14 = load i32, ptr %i, align 4
  %cmp5 = icmp sgt i32 %14, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %wp, align 8
  %arrayidx = getelementptr inbounds i16, ptr %15, i64 0
  %16 = load i16, ptr %arrayidx, align 2
  %conv7 = zext i16 %16 to i32
  %17 = load ptr, ptr %wp, align 8
  %18 = load i64, ptr %stride, align 8
  %arrayidx8 = getelementptr inbounds i16, ptr %17, i64 %18
  %19 = load i16, ptr %arrayidx8, align 2
  %conv9 = zext i16 %19 to i32
  %add = add nsw i32 %conv9, %conv7
  %conv10 = trunc i32 %add to i16
  store i16 %conv10, ptr %arrayidx8, align 2
  %20 = load ptr, ptr %wp, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %20, i32 1
  store ptr %incdec.ptr, ptr %wp, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %i, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  br label %sw.bb

sw.bb:                                            ; preds = %do.body, %for.end
  %22 = load ptr, ptr %wp, align 8
  %arrayidx11 = getelementptr inbounds i16, ptr %22, i64 0
  %23 = load i16, ptr %arrayidx11, align 2
  %conv12 = zext i16 %23 to i32
  %24 = load ptr, ptr %wp, align 8
  %25 = load i64, ptr %stride, align 8
  %arrayidx13 = getelementptr inbounds i16, ptr %24, i64 %25
  %26 = load i16, ptr %arrayidx13, align 2
  %conv14 = zext i16 %26 to i32
  %add15 = add nsw i32 %conv14, %conv12
  %conv16 = trunc i32 %add15 to i16
  store i16 %conv16, ptr %arrayidx13, align 2
  %27 = load ptr, ptr %wp, align 8
  %incdec.ptr17 = getelementptr inbounds i16, ptr %27, i32 1
  store ptr %incdec.ptr17, ptr %wp, align 8
  br label %sw.bb18

sw.bb18:                                          ; preds = %do.body, %sw.bb
  %28 = load ptr, ptr %wp, align 8
  %arrayidx19 = getelementptr inbounds i16, ptr %28, i64 0
  %29 = load i16, ptr %arrayidx19, align 2
  %conv20 = zext i16 %29 to i32
  %30 = load ptr, ptr %wp, align 8
  %31 = load i64, ptr %stride, align 8
  %arrayidx21 = getelementptr inbounds i16, ptr %30, i64 %31
  %32 = load i16, ptr %arrayidx21, align 2
  %conv22 = zext i16 %32 to i32
  %add23 = add nsw i32 %conv22, %conv20
  %conv24 = trunc i32 %add23 to i16
  store i16 %conv24, ptr %arrayidx21, align 2
  %33 = load ptr, ptr %wp, align 8
  %incdec.ptr25 = getelementptr inbounds i16, ptr %33, i32 1
  store ptr %incdec.ptr25, ptr %wp, align 8
  br label %sw.bb26

sw.bb26:                                          ; preds = %do.body, %sw.bb18
  %34 = load ptr, ptr %wp, align 8
  %arrayidx27 = getelementptr inbounds i16, ptr %34, i64 0
  %35 = load i16, ptr %arrayidx27, align 2
  %conv28 = zext i16 %35 to i32
  %36 = load ptr, ptr %wp, align 8
  %37 = load i64, ptr %stride, align 8
  %arrayidx29 = getelementptr inbounds i16, ptr %36, i64 %37
  %38 = load i16, ptr %arrayidx29, align 2
  %conv30 = zext i16 %38 to i32
  %add31 = add nsw i32 %conv30, %conv28
  %conv32 = trunc i32 %add31 to i16
  store i16 %conv32, ptr %arrayidx29, align 2
  %39 = load ptr, ptr %wp, align 8
  %incdec.ptr33 = getelementptr inbounds i16, ptr %39, i32 1
  store ptr %incdec.ptr33, ptr %wp, align 8
  br label %sw.bb34

sw.bb34:                                          ; preds = %do.body, %sw.bb26
  %40 = load ptr, ptr %wp, align 8
  %arrayidx35 = getelementptr inbounds i16, ptr %40, i64 0
  %41 = load i16, ptr %arrayidx35, align 2
  %conv36 = zext i16 %41 to i32
  %42 = load ptr, ptr %wp, align 8
  %43 = load i64, ptr %stride, align 8
  %arrayidx37 = getelementptr inbounds i16, ptr %42, i64 %43
  %44 = load i16, ptr %arrayidx37, align 2
  %conv38 = zext i16 %44 to i32
  %add39 = add nsw i32 %conv38, %conv36
  %conv40 = trunc i32 %add39 to i16
  store i16 %conv40, ptr %arrayidx37, align 2
  %45 = load ptr, ptr %wp, align 8
  %incdec.ptr41 = getelementptr inbounds i16, ptr %45, i32 1
  store ptr %incdec.ptr41, ptr %wp, align 8
  br label %sw.bb42

sw.bb42:                                          ; preds = %do.body, %sw.bb34
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb42
  %46 = load i64, ptr %stride, align 8
  %47 = load i64, ptr %wc, align 8
  %sub43 = sub nsw i64 %47, %46
  store i64 %sub43, ptr %wc, align 8
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  %48 = load i64, ptr %wc, align 8
  %cmp44 = icmp sgt i64 %48, 0
  br i1 %cmp44, label %do.body, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret void
}

declare void @_TIFFNoPostDecode(ptr noundef, ptr noundef, i64 noundef) #1

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

declare i64 @TIFFTileRowSize(ptr noundef) #1

declare i64 @TIFFScanlineSize(ptr noundef) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare void @TIFFSwabArrayOfShort(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @horDiff8(ptr noundef %tif, ptr noundef %cp0, i64 noundef %cc) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %cp0.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  %sp = alloca ptr, align 8
  %stride = alloca i64, align 8
  %cp = alloca ptr, align 8
  %r1 = alloca i32, align 4
  %g1 = alloca i32, align 4
  %b1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %g2 = alloca i32, align 4
  %b2 = alloca i32, align 4
  %r132 = alloca i32, align 4
  %g133 = alloca i32, align 4
  %b134 = alloca i32, align 4
  %a1 = alloca i32, align 4
  %r235 = alloca i32, align 4
  %g238 = alloca i32, align 4
  %b241 = alloca i32, align 4
  %a2 = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %cp0, ptr %cp0.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load ptr, ptr %sp, align 8
  %stride1 = getelementptr inbounds %struct.TIFFPredictorState, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %stride1, align 4
  %conv = sext i32 %3 to i64
  store i64 %conv, ptr %stride, align 8
  %4 = load ptr, ptr %cp0.addr, align 8
  store ptr %4, ptr %cp, align 8
  %5 = load i64, ptr %cc.addr, align 8
  %6 = load i64, ptr %stride, align 8
  %cmp = icmp sgt i64 %5, %6
  br i1 %cmp, label %if.then, label %if.end125

if.then:                                          ; preds = %entry
  %7 = load i64, ptr %stride, align 8
  %8 = load i64, ptr %cc.addr, align 8
  %sub = sub nsw i64 %8, %7
  store i64 %sub, ptr %cc.addr, align 8
  %9 = load i64, ptr %stride, align 8
  %cmp3 = icmp eq i64 %9, 3
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %10 = load ptr, ptr %cp, align 8
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx, align 1
  %conv6 = sext i8 %11 to i32
  store i32 %conv6, ptr %r2, align 4
  %12 = load ptr, ptr %cp, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %12, i64 1
  %13 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %13 to i32
  store i32 %conv8, ptr %g2, align 4
  %14 = load ptr, ptr %cp, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %14, i64 2
  %15 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %15 to i32
  store i32 %conv10, ptr %b2, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then5
  %16 = load ptr, ptr %cp, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %16, i64 3
  %17 = load i8, ptr %arrayidx11, align 1
  %conv12 = sext i8 %17 to i32
  store i32 %conv12, ptr %r1, align 4
  %18 = load i32, ptr %r1, align 4
  %19 = load i32, ptr %r2, align 4
  %sub13 = sub nsw i32 %18, %19
  %conv14 = trunc i32 %sub13 to i8
  %20 = load ptr, ptr %cp, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %20, i64 3
  store i8 %conv14, ptr %arrayidx15, align 1
  %21 = load i32, ptr %r1, align 4
  store i32 %21, ptr %r2, align 4
  %22 = load ptr, ptr %cp, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %22, i64 4
  %23 = load i8, ptr %arrayidx16, align 1
  %conv17 = sext i8 %23 to i32
  store i32 %conv17, ptr %g1, align 4
  %24 = load i32, ptr %g1, align 4
  %25 = load i32, ptr %g2, align 4
  %sub18 = sub nsw i32 %24, %25
  %conv19 = trunc i32 %sub18 to i8
  %26 = load ptr, ptr %cp, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %26, i64 4
  store i8 %conv19, ptr %arrayidx20, align 1
  %27 = load i32, ptr %g1, align 4
  store i32 %27, ptr %g2, align 4
  %28 = load ptr, ptr %cp, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %28, i64 5
  %29 = load i8, ptr %arrayidx21, align 1
  %conv22 = sext i8 %29 to i32
  store i32 %conv22, ptr %b1, align 4
  %30 = load i32, ptr %b1, align 4
  %31 = load i32, ptr %b2, align 4
  %sub23 = sub nsw i32 %30, %31
  %conv24 = trunc i32 %sub23 to i8
  %32 = load ptr, ptr %cp, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %32, i64 5
  store i8 %conv24, ptr %arrayidx25, align 1
  %33 = load i32, ptr %b1, align 4
  store i32 %33, ptr %b2, align 4
  %34 = load ptr, ptr %cp, align 8
  %add.ptr = getelementptr inbounds i8, ptr %34, i64 3
  store ptr %add.ptr, ptr %cp, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %35 = load i64, ptr %cc.addr, align 8
  %sub26 = sub nsw i64 %35, 3
  store i64 %sub26, ptr %cc.addr, align 8
  %cmp27 = icmp sgt i64 %sub26, 0
  br i1 %cmp27, label %do.body, label %do.end, !llvm.loop !16

do.end:                                           ; preds = %do.cond
  br label %if.end124

if.else:                                          ; preds = %if.then
  %36 = load i64, ptr %stride, align 8
  %cmp29 = icmp eq i64 %36, 4
  br i1 %cmp29, label %if.then31, label %if.else73

if.then31:                                        ; preds = %if.else
  %37 = load ptr, ptr %cp, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %37, i64 0
  %38 = load i8, ptr %arrayidx36, align 1
  %conv37 = sext i8 %38 to i32
  store i32 %conv37, ptr %r235, align 4
  %39 = load ptr, ptr %cp, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %39, i64 1
  %40 = load i8, ptr %arrayidx39, align 1
  %conv40 = sext i8 %40 to i32
  store i32 %conv40, ptr %g238, align 4
  %41 = load ptr, ptr %cp, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %41, i64 2
  %42 = load i8, ptr %arrayidx42, align 1
  %conv43 = sext i8 %42 to i32
  store i32 %conv43, ptr %b241, align 4
  %43 = load ptr, ptr %cp, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %43, i64 3
  %44 = load i8, ptr %arrayidx44, align 1
  %conv45 = sext i8 %44 to i32
  store i32 %conv45, ptr %a2, align 4
  br label %do.body46

do.body46:                                        ; preds = %do.cond68, %if.then31
  %45 = load ptr, ptr %cp, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %45, i64 4
  %46 = load i8, ptr %arrayidx47, align 1
  %conv48 = sext i8 %46 to i32
  store i32 %conv48, ptr %r132, align 4
  %47 = load i32, ptr %r132, align 4
  %48 = load i32, ptr %r235, align 4
  %sub49 = sub nsw i32 %47, %48
  %conv50 = trunc i32 %sub49 to i8
  %49 = load ptr, ptr %cp, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %49, i64 4
  store i8 %conv50, ptr %arrayidx51, align 1
  %50 = load i32, ptr %r132, align 4
  store i32 %50, ptr %r235, align 4
  %51 = load ptr, ptr %cp, align 8
  %arrayidx52 = getelementptr inbounds i8, ptr %51, i64 5
  %52 = load i8, ptr %arrayidx52, align 1
  %conv53 = sext i8 %52 to i32
  store i32 %conv53, ptr %g133, align 4
  %53 = load i32, ptr %g133, align 4
  %54 = load i32, ptr %g238, align 4
  %sub54 = sub nsw i32 %53, %54
  %conv55 = trunc i32 %sub54 to i8
  %55 = load ptr, ptr %cp, align 8
  %arrayidx56 = getelementptr inbounds i8, ptr %55, i64 5
  store i8 %conv55, ptr %arrayidx56, align 1
  %56 = load i32, ptr %g133, align 4
  store i32 %56, ptr %g238, align 4
  %57 = load ptr, ptr %cp, align 8
  %arrayidx57 = getelementptr inbounds i8, ptr %57, i64 6
  %58 = load i8, ptr %arrayidx57, align 1
  %conv58 = sext i8 %58 to i32
  store i32 %conv58, ptr %b134, align 4
  %59 = load i32, ptr %b134, align 4
  %60 = load i32, ptr %b241, align 4
  %sub59 = sub nsw i32 %59, %60
  %conv60 = trunc i32 %sub59 to i8
  %61 = load ptr, ptr %cp, align 8
  %arrayidx61 = getelementptr inbounds i8, ptr %61, i64 6
  store i8 %conv60, ptr %arrayidx61, align 1
  %62 = load i32, ptr %b134, align 4
  store i32 %62, ptr %b241, align 4
  %63 = load ptr, ptr %cp, align 8
  %arrayidx62 = getelementptr inbounds i8, ptr %63, i64 7
  %64 = load i8, ptr %arrayidx62, align 1
  %conv63 = sext i8 %64 to i32
  store i32 %conv63, ptr %a1, align 4
  %65 = load i32, ptr %a1, align 4
  %66 = load i32, ptr %a2, align 4
  %sub64 = sub nsw i32 %65, %66
  %conv65 = trunc i32 %sub64 to i8
  %67 = load ptr, ptr %cp, align 8
  %arrayidx66 = getelementptr inbounds i8, ptr %67, i64 7
  store i8 %conv65, ptr %arrayidx66, align 1
  %68 = load i32, ptr %a1, align 4
  store i32 %68, ptr %a2, align 4
  %69 = load ptr, ptr %cp, align 8
  %add.ptr67 = getelementptr inbounds i8, ptr %69, i64 4
  store ptr %add.ptr67, ptr %cp, align 8
  br label %do.cond68

do.cond68:                                        ; preds = %do.body46
  %70 = load i64, ptr %cc.addr, align 8
  %sub69 = sub nsw i64 %70, 4
  store i64 %sub69, ptr %cc.addr, align 8
  %cmp70 = icmp sgt i64 %sub69, 0
  br i1 %cmp70, label %do.body46, label %do.end72, !llvm.loop !17

do.end72:                                         ; preds = %do.cond68
  br label %if.end

if.else73:                                        ; preds = %if.else
  %71 = load i64, ptr %cc.addr, align 8
  %sub74 = sub nsw i64 %71, 1
  %72 = load ptr, ptr %cp, align 8
  %add.ptr75 = getelementptr inbounds i8, ptr %72, i64 %sub74
  store ptr %add.ptr75, ptr %cp, align 8
  br label %do.body76

do.body76:                                        ; preds = %do.cond119, %if.else73
  %73 = load i64, ptr %stride, align 8
  switch i64 %73, label %sw.default [
    i64 4, label %sw.bb
    i64 3, label %sw.bb94
    i64 2, label %sw.bb102
    i64 1, label %sw.bb110
    i64 0, label %sw.bb118
  ]

sw.default:                                       ; preds = %do.body76
  %74 = load i64, ptr %stride, align 8
  %sub77 = sub nsw i64 %74, 4
  %conv78 = trunc i64 %sub77 to i32
  store i32 %conv78, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.default
  %75 = load i32, ptr %i, align 4
  %cmp79 = icmp sgt i32 %75, 0
  br i1 %cmp79, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %76 = load ptr, ptr %cp, align 8
  %arrayidx81 = getelementptr inbounds i8, ptr %76, i64 0
  %77 = load i8, ptr %arrayidx81, align 1
  %conv82 = sext i8 %77 to i32
  %78 = load ptr, ptr %cp, align 8
  %79 = load i64, ptr %stride, align 8
  %arrayidx83 = getelementptr inbounds i8, ptr %78, i64 %79
  %80 = load i8, ptr %arrayidx83, align 1
  %conv84 = sext i8 %80 to i32
  %sub85 = sub nsw i32 %conv84, %conv82
  %conv86 = trunc i32 %sub85 to i8
  store i8 %conv86, ptr %arrayidx83, align 1
  %81 = load ptr, ptr %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %81, i32 -1
  store ptr %incdec.ptr, ptr %cp, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %82 = load i32, ptr %i, align 4
  %dec = add nsw i32 %82, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  br label %sw.bb

sw.bb:                                            ; preds = %do.body76, %for.end
  %83 = load ptr, ptr %cp, align 8
  %arrayidx87 = getelementptr inbounds i8, ptr %83, i64 0
  %84 = load i8, ptr %arrayidx87, align 1
  %conv88 = sext i8 %84 to i32
  %85 = load ptr, ptr %cp, align 8
  %86 = load i64, ptr %stride, align 8
  %arrayidx89 = getelementptr inbounds i8, ptr %85, i64 %86
  %87 = load i8, ptr %arrayidx89, align 1
  %conv90 = sext i8 %87 to i32
  %sub91 = sub nsw i32 %conv90, %conv88
  %conv92 = trunc i32 %sub91 to i8
  store i8 %conv92, ptr %arrayidx89, align 1
  %88 = load ptr, ptr %cp, align 8
  %incdec.ptr93 = getelementptr inbounds i8, ptr %88, i32 -1
  store ptr %incdec.ptr93, ptr %cp, align 8
  br label %sw.bb94

sw.bb94:                                          ; preds = %do.body76, %sw.bb
  %89 = load ptr, ptr %cp, align 8
  %arrayidx95 = getelementptr inbounds i8, ptr %89, i64 0
  %90 = load i8, ptr %arrayidx95, align 1
  %conv96 = sext i8 %90 to i32
  %91 = load ptr, ptr %cp, align 8
  %92 = load i64, ptr %stride, align 8
  %arrayidx97 = getelementptr inbounds i8, ptr %91, i64 %92
  %93 = load i8, ptr %arrayidx97, align 1
  %conv98 = sext i8 %93 to i32
  %sub99 = sub nsw i32 %conv98, %conv96
  %conv100 = trunc i32 %sub99 to i8
  store i8 %conv100, ptr %arrayidx97, align 1
  %94 = load ptr, ptr %cp, align 8
  %incdec.ptr101 = getelementptr inbounds i8, ptr %94, i32 -1
  store ptr %incdec.ptr101, ptr %cp, align 8
  br label %sw.bb102

sw.bb102:                                         ; preds = %do.body76, %sw.bb94
  %95 = load ptr, ptr %cp, align 8
  %arrayidx103 = getelementptr inbounds i8, ptr %95, i64 0
  %96 = load i8, ptr %arrayidx103, align 1
  %conv104 = sext i8 %96 to i32
  %97 = load ptr, ptr %cp, align 8
  %98 = load i64, ptr %stride, align 8
  %arrayidx105 = getelementptr inbounds i8, ptr %97, i64 %98
  %99 = load i8, ptr %arrayidx105, align 1
  %conv106 = sext i8 %99 to i32
  %sub107 = sub nsw i32 %conv106, %conv104
  %conv108 = trunc i32 %sub107 to i8
  store i8 %conv108, ptr %arrayidx105, align 1
  %100 = load ptr, ptr %cp, align 8
  %incdec.ptr109 = getelementptr inbounds i8, ptr %100, i32 -1
  store ptr %incdec.ptr109, ptr %cp, align 8
  br label %sw.bb110

sw.bb110:                                         ; preds = %do.body76, %sw.bb102
  %101 = load ptr, ptr %cp, align 8
  %arrayidx111 = getelementptr inbounds i8, ptr %101, i64 0
  %102 = load i8, ptr %arrayidx111, align 1
  %conv112 = sext i8 %102 to i32
  %103 = load ptr, ptr %cp, align 8
  %104 = load i64, ptr %stride, align 8
  %arrayidx113 = getelementptr inbounds i8, ptr %103, i64 %104
  %105 = load i8, ptr %arrayidx113, align 1
  %conv114 = sext i8 %105 to i32
  %sub115 = sub nsw i32 %conv114, %conv112
  %conv116 = trunc i32 %sub115 to i8
  store i8 %conv116, ptr %arrayidx113, align 1
  %106 = load ptr, ptr %cp, align 8
  %incdec.ptr117 = getelementptr inbounds i8, ptr %106, i32 -1
  store ptr %incdec.ptr117, ptr %cp, align 8
  br label %sw.bb118

sw.bb118:                                         ; preds = %do.body76, %sw.bb110
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb118
  br label %do.cond119

do.cond119:                                       ; preds = %sw.epilog
  %107 = load i64, ptr %stride, align 8
  %108 = load i64, ptr %cc.addr, align 8
  %sub120 = sub nsw i64 %108, %107
  store i64 %sub120, ptr %cc.addr, align 8
  %cmp121 = icmp sgt i64 %sub120, 0
  br i1 %cmp121, label %do.body76, label %do.end123, !llvm.loop !19

do.end123:                                        ; preds = %do.cond119
  br label %if.end

if.end:                                           ; preds = %do.end123, %do.end72
  br label %if.end124

if.end124:                                        ; preds = %if.end, %do.end
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @horDiff16(ptr noundef %tif, ptr noundef %cp0, i64 noundef %cc) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %cp0.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  %sp = alloca ptr, align 8
  %stride = alloca i64, align 8
  %wp = alloca ptr, align 8
  %wc = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %cp0, ptr %cp0.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load ptr, ptr %sp, align 8
  %stride1 = getelementptr inbounds %struct.TIFFPredictorState, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %stride1, align 4
  %conv = sext i32 %3 to i64
  store i64 %conv, ptr %stride, align 8
  %4 = load ptr, ptr %cp0.addr, align 8
  store ptr %4, ptr %wp, align 8
  %5 = load i64, ptr %cc.addr, align 8
  %div = sdiv i64 %5, 2
  store i64 %div, ptr %wc, align 8
  %6 = load i64, ptr %wc, align 8
  %7 = load i64, ptr %stride, align 8
  %cmp = icmp sgt i64 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i64, ptr %stride, align 8
  %9 = load i64, ptr %wc, align 8
  %sub = sub nsw i64 %9, %8
  store i64 %sub, ptr %wc, align 8
  %10 = load i64, ptr %wc, align 8
  %sub3 = sub nsw i64 %10, 1
  %11 = load ptr, ptr %wp, align 8
  %add.ptr = getelementptr inbounds i16, ptr %11, i64 %sub3
  store ptr %add.ptr, ptr %wp, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %12 = load i64, ptr %stride, align 8
  switch i64 %12, label %sw.default [
    i64 4, label %sw.bb
    i64 3, label %sw.bb20
    i64 2, label %sw.bb28
    i64 1, label %sw.bb36
    i64 0, label %sw.bb44
  ]

sw.default:                                       ; preds = %do.body
  %13 = load i64, ptr %stride, align 8
  %sub4 = sub nsw i64 %13, 4
  %conv5 = trunc i64 %sub4 to i32
  store i32 %conv5, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.default
  %14 = load i32, ptr %i, align 4
  %cmp6 = icmp sgt i32 %14, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %wp, align 8
  %arrayidx = getelementptr inbounds i16, ptr %15, i64 0
  %16 = load i16, ptr %arrayidx, align 2
  %conv8 = sext i16 %16 to i32
  %17 = load ptr, ptr %wp, align 8
  %18 = load i64, ptr %stride, align 8
  %arrayidx9 = getelementptr inbounds i16, ptr %17, i64 %18
  %19 = load i16, ptr %arrayidx9, align 2
  %conv10 = sext i16 %19 to i32
  %sub11 = sub nsw i32 %conv10, %conv8
  %conv12 = trunc i32 %sub11 to i16
  store i16 %conv12, ptr %arrayidx9, align 2
  %20 = load ptr, ptr %wp, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %20, i32 -1
  store ptr %incdec.ptr, ptr %wp, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %i, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  br label %sw.bb

sw.bb:                                            ; preds = %do.body, %for.end
  %22 = load ptr, ptr %wp, align 8
  %arrayidx13 = getelementptr inbounds i16, ptr %22, i64 0
  %23 = load i16, ptr %arrayidx13, align 2
  %conv14 = sext i16 %23 to i32
  %24 = load ptr, ptr %wp, align 8
  %25 = load i64, ptr %stride, align 8
  %arrayidx15 = getelementptr inbounds i16, ptr %24, i64 %25
  %26 = load i16, ptr %arrayidx15, align 2
  %conv16 = sext i16 %26 to i32
  %sub17 = sub nsw i32 %conv16, %conv14
  %conv18 = trunc i32 %sub17 to i16
  store i16 %conv18, ptr %arrayidx15, align 2
  %27 = load ptr, ptr %wp, align 8
  %incdec.ptr19 = getelementptr inbounds i16, ptr %27, i32 -1
  store ptr %incdec.ptr19, ptr %wp, align 8
  br label %sw.bb20

sw.bb20:                                          ; preds = %do.body, %sw.bb
  %28 = load ptr, ptr %wp, align 8
  %arrayidx21 = getelementptr inbounds i16, ptr %28, i64 0
  %29 = load i16, ptr %arrayidx21, align 2
  %conv22 = sext i16 %29 to i32
  %30 = load ptr, ptr %wp, align 8
  %31 = load i64, ptr %stride, align 8
  %arrayidx23 = getelementptr inbounds i16, ptr %30, i64 %31
  %32 = load i16, ptr %arrayidx23, align 2
  %conv24 = sext i16 %32 to i32
  %sub25 = sub nsw i32 %conv24, %conv22
  %conv26 = trunc i32 %sub25 to i16
  store i16 %conv26, ptr %arrayidx23, align 2
  %33 = load ptr, ptr %wp, align 8
  %incdec.ptr27 = getelementptr inbounds i16, ptr %33, i32 -1
  store ptr %incdec.ptr27, ptr %wp, align 8
  br label %sw.bb28

sw.bb28:                                          ; preds = %do.body, %sw.bb20
  %34 = load ptr, ptr %wp, align 8
  %arrayidx29 = getelementptr inbounds i16, ptr %34, i64 0
  %35 = load i16, ptr %arrayidx29, align 2
  %conv30 = sext i16 %35 to i32
  %36 = load ptr, ptr %wp, align 8
  %37 = load i64, ptr %stride, align 8
  %arrayidx31 = getelementptr inbounds i16, ptr %36, i64 %37
  %38 = load i16, ptr %arrayidx31, align 2
  %conv32 = sext i16 %38 to i32
  %sub33 = sub nsw i32 %conv32, %conv30
  %conv34 = trunc i32 %sub33 to i16
  store i16 %conv34, ptr %arrayidx31, align 2
  %39 = load ptr, ptr %wp, align 8
  %incdec.ptr35 = getelementptr inbounds i16, ptr %39, i32 -1
  store ptr %incdec.ptr35, ptr %wp, align 8
  br label %sw.bb36

sw.bb36:                                          ; preds = %do.body, %sw.bb28
  %40 = load ptr, ptr %wp, align 8
  %arrayidx37 = getelementptr inbounds i16, ptr %40, i64 0
  %41 = load i16, ptr %arrayidx37, align 2
  %conv38 = sext i16 %41 to i32
  %42 = load ptr, ptr %wp, align 8
  %43 = load i64, ptr %stride, align 8
  %arrayidx39 = getelementptr inbounds i16, ptr %42, i64 %43
  %44 = load i16, ptr %arrayidx39, align 2
  %conv40 = sext i16 %44 to i32
  %sub41 = sub nsw i32 %conv40, %conv38
  %conv42 = trunc i32 %sub41 to i16
  store i16 %conv42, ptr %arrayidx39, align 2
  %45 = load ptr, ptr %wp, align 8
  %incdec.ptr43 = getelementptr inbounds i16, ptr %45, i32 -1
  store ptr %incdec.ptr43, ptr %wp, align 8
  br label %sw.bb44

sw.bb44:                                          ; preds = %do.body, %sw.bb36
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb44
  %46 = load i64, ptr %stride, align 8
  %47 = load i64, ptr %wc, align 8
  %sub45 = sub nsw i64 %47, %46
  store i64 %sub45, ptr %wc, align 8
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  %48 = load i64, ptr %wc, align 8
  %cmp46 = icmp sgt i64 %48, 0
  br i1 %cmp46, label %do.body, label %do.end, !llvm.loop !21

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @PredictorEncodeRow(ptr noundef %tif, ptr noundef %bp, i64 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
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
  %2 = load ptr, ptr %sp, align 8
  %cmp = icmp ne ptr %2, null
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.PredictorEncodeRow, ptr noundef @.str.7, i32 noundef 350, ptr noundef @.str.8) #3
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  %4 = load ptr, ptr %sp, align 8
  %pfunc = getelementptr inbounds %struct.TIFFPredictorState, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %pfunc, align 8
  %cmp1 = icmp ne ptr %5, null
  %lnot3 = xor i1 %cmp1, true
  %lnot.ext4 = zext i1 %lnot3 to i32
  %conv5 = sext i32 %lnot.ext4 to i64
  %tobool6 = icmp ne i64 %conv5, 0
  br i1 %tobool6, label %cond.true7, label %cond.false8

cond.true7:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.PredictorEncodeRow, ptr noundef @.str.7, i32 noundef 351, ptr noundef @.str.10) #3
  unreachable

6:                                                ; No predecessors!
  br label %cond.end9

cond.false8:                                      ; preds = %cond.end
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false8, %6
  %7 = load ptr, ptr %sp, align 8
  %coderow = getelementptr inbounds %struct.TIFFPredictorState, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %coderow, align 8
  %cmp10 = icmp ne ptr %8, null
  %lnot12 = xor i1 %cmp10, true
  %lnot.ext13 = zext i1 %lnot12 to i32
  %conv14 = sext i32 %lnot.ext13 to i64
  %tobool15 = icmp ne i64 %conv14, 0
  br i1 %tobool15, label %cond.true16, label %cond.false17

cond.true16:                                      ; preds = %cond.end9
  call void @__assert_rtn(ptr noundef @__func__.PredictorEncodeRow, ptr noundef @.str.7, i32 noundef 352, ptr noundef @.str.9) #3
  unreachable

9:                                                ; No predecessors!
  br label %cond.end18

cond.false17:                                     ; preds = %cond.end9
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false17, %9
  %10 = load ptr, ptr %sp, align 8
  %pfunc19 = getelementptr inbounds %struct.TIFFPredictorState, ptr %10, i32 0, i32 3
  %11 = load ptr, ptr %pfunc19, align 8
  %12 = load ptr, ptr %tif.addr, align 8
  %13 = load ptr, ptr %bp.addr, align 8
  %14 = load i64, ptr %cc.addr, align 8
  call void %11(ptr noundef %12, ptr noundef %13, i64 noundef %14)
  %15 = load ptr, ptr %sp, align 8
  %coderow20 = getelementptr inbounds %struct.TIFFPredictorState, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %coderow20, align 8
  %17 = load ptr, ptr %tif.addr, align 8
  %18 = load ptr, ptr %bp.addr, align 8
  %19 = load i64, ptr %cc.addr, align 8
  %20 = load i16, ptr %s.addr, align 2
  %call = call i32 %16(ptr noundef %17, ptr noundef %18, i64 noundef %19, i16 noundef zeroext %20)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @PredictorEncodeTile(ptr noundef %tif, ptr noundef %bp0, i64 noundef %cc0, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %bp0.addr = alloca ptr, align 8
  %cc0.addr = alloca i64, align 8
  %s.addr = alloca i16, align 2
  %sp = alloca ptr, align 8
  %cc = alloca i64, align 8
  %rowsize = alloca i64, align 8
  %bp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp0, ptr %bp0.addr, align 8
  store i64 %cc0, ptr %cc0.addr, align 8
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 37
  %1 = load ptr, ptr %tif_data, align 8
  store ptr %1, ptr %sp, align 8
  %2 = load i64, ptr %cc0.addr, align 8
  store i64 %2, ptr %cc, align 8
  %3 = load ptr, ptr %bp0.addr, align 8
  store ptr %3, ptr %bp, align 8
  %4 = load ptr, ptr %sp, align 8
  %cmp = icmp ne ptr %4, null
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.PredictorEncodeTile, ptr noundef @.str.7, i32 noundef 365, ptr noundef @.str.8) #3
  unreachable

5:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %5
  %6 = load ptr, ptr %sp, align 8
  %pfunc = getelementptr inbounds %struct.TIFFPredictorState, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %pfunc, align 8
  %cmp1 = icmp ne ptr %7, null
  %lnot3 = xor i1 %cmp1, true
  %lnot.ext4 = zext i1 %lnot3 to i32
  %conv5 = sext i32 %lnot.ext4 to i64
  %tobool6 = icmp ne i64 %conv5, 0
  br i1 %tobool6, label %cond.true7, label %cond.false8

cond.true7:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.PredictorEncodeTile, ptr noundef @.str.7, i32 noundef 366, ptr noundef @.str.10) #3
  unreachable

8:                                                ; No predecessors!
  br label %cond.end9

cond.false8:                                      ; preds = %cond.end
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false8, %8
  %9 = load ptr, ptr %sp, align 8
  %codetile = getelementptr inbounds %struct.TIFFPredictorState, ptr %9, i32 0, i32 6
  %10 = load ptr, ptr %codetile, align 8
  %cmp10 = icmp ne ptr %10, null
  %lnot12 = xor i1 %cmp10, true
  %lnot.ext13 = zext i1 %lnot12 to i32
  %conv14 = sext i32 %lnot.ext13 to i64
  %tobool15 = icmp ne i64 %conv14, 0
  br i1 %tobool15, label %cond.true16, label %cond.false17

cond.true16:                                      ; preds = %cond.end9
  call void @__assert_rtn(ptr noundef @__func__.PredictorEncodeTile, ptr noundef @.str.7, i32 noundef 367, ptr noundef @.str.11) #3
  unreachable

11:                                               ; No predecessors!
  br label %cond.end18

cond.false17:                                     ; preds = %cond.end9
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false17, %11
  %12 = load ptr, ptr %sp, align 8
  %rowsize19 = getelementptr inbounds %struct.TIFFPredictorState, ptr %12, i32 0, i32 2
  %13 = load i64, ptr %rowsize19, align 8
  store i64 %13, ptr %rowsize, align 8
  %14 = load i64, ptr %rowsize, align 8
  %cmp20 = icmp sgt i64 %14, 0
  %lnot22 = xor i1 %cmp20, true
  %lnot.ext23 = zext i1 %lnot22 to i32
  %conv24 = sext i32 %lnot.ext23 to i64
  %tobool25 = icmp ne i64 %conv24, 0
  br i1 %tobool25, label %cond.true26, label %cond.false27

cond.true26:                                      ; preds = %cond.end18
  call void @__assert_rtn(ptr noundef @__func__.PredictorEncodeTile, ptr noundef @.str.7, i32 noundef 369, ptr noundef @.str.12) #3
  unreachable

15:                                               ; No predecessors!
  br label %cond.end28

cond.false27:                                     ; preds = %cond.end18
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false27, %15
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end28
  %16 = load i64, ptr %cc, align 8
  %cmp29 = icmp sgt i64 %16, 0
  br i1 %cmp29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load ptr, ptr %sp, align 8
  %pfunc31 = getelementptr inbounds %struct.TIFFPredictorState, ptr %17, i32 0, i32 3
  %18 = load ptr, ptr %pfunc31, align 8
  %19 = load ptr, ptr %tif.addr, align 8
  %20 = load ptr, ptr %bp, align 8
  %21 = load i64, ptr %rowsize, align 8
  call void %18(ptr noundef %19, ptr noundef %20, i64 noundef %21)
  %22 = load i64, ptr %rowsize, align 8
  %23 = load i64, ptr %cc, align 8
  %sub = sub nsw i64 %23, %22
  store i64 %sub, ptr %cc, align 8
  %24 = load i64, ptr %rowsize, align 8
  %25 = load ptr, ptr %bp, align 8
  %add.ptr = getelementptr inbounds i8, ptr %25, i64 %24
  store ptr %add.ptr, ptr %bp, align 8
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %while.cond
  %26 = load ptr, ptr %sp, align 8
  %codetile32 = getelementptr inbounds %struct.TIFFPredictorState, ptr %26, i32 0, i32 6
  %27 = load ptr, ptr %codetile32, align 8
  %28 = load ptr, ptr %tif.addr, align 8
  %29 = load ptr, ptr %bp0.addr, align 8
  %30 = load i64, ptr %cc0.addr, align 8
  %31 = load i16, ptr %s.addr, align 2
  %call = call i32 %27(ptr noundef %28, ptr noundef %29, i64 noundef %30, i16 noundef zeroext %31)
  ret i32 %call
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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
