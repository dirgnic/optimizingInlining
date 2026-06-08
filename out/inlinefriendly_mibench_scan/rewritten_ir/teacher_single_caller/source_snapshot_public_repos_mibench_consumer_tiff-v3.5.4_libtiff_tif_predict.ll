; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_single_caller/source_snapshot_public_repos_mibench_consumer_tiff-v3.5.4_libtiff_tif_predict.prepared.ll'
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
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  call void @_TIFFMergeFieldInfo(ptr noundef %tif, ptr noundef nonnull @predictFieldInfo, i32 noundef 1) #4
  %tif_vgetfield = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 58
  %1 = load ptr, ptr %tif_vgetfield, align 8
  %vgetparent = getelementptr inbounds %struct.TIFFPredictorState, ptr %0, i64 0, i32 7
  store ptr %1, ptr %vgetparent, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_vgetfield1 = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 58
  store ptr @PredictorVGetField, ptr %tif_vgetfield1, align 8
  %tif_vsetfield = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 57
  %3 = load ptr, ptr %tif_vsetfield, align 8
  %4 = load ptr, ptr %sp, align 8
  %vsetparent = getelementptr inbounds %struct.TIFFPredictorState, ptr %4, i64 0, i32 8
  store ptr %3, ptr %vsetparent, align 8
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_vsetfield2 = getelementptr inbounds %struct.tiff, ptr %5, i64 0, i32 57
  store ptr @PredictorVSetField, ptr %tif_vsetfield2, align 8
  %tif_printdir = getelementptr inbounds %struct.tiff, ptr %5, i64 0, i32 59
  %6 = load ptr, ptr %tif_printdir, align 8
  %7 = load ptr, ptr %sp, align 8
  %printdir = getelementptr inbounds %struct.TIFFPredictorState, ptr %7, i64 0, i32 9
  store ptr %6, ptr %printdir, align 8
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_printdir3 = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 59
  store ptr @PredictorPrintDir, ptr %tif_printdir3, align 8
  %tif_setupdecode = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 21
  %9 = load ptr, ptr %tif_setupdecode, align 8
  %10 = load ptr, ptr %sp, align 8
  %setupdecode = getelementptr inbounds %struct.TIFFPredictorState, ptr %10, i64 0, i32 10
  store ptr %9, ptr %setupdecode, align 8
  %11 = load ptr, ptr %tif.addr, align 8
  %tif_setupdecode4 = getelementptr inbounds %struct.tiff, ptr %11, i64 0, i32 21
  store ptr @PredictorSetupDecode, ptr %tif_setupdecode4, align 8
  %tif_setupencode = getelementptr inbounds %struct.tiff, ptr %11, i64 0, i32 23
  %12 = load ptr, ptr %tif_setupencode, align 8
  %13 = load ptr, ptr %sp, align 8
  %setupencode = getelementptr inbounds %struct.TIFFPredictorState, ptr %13, i64 0, i32 11
  store ptr %12, ptr %setupencode, align 8
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_setupencode5 = getelementptr inbounds %struct.tiff, ptr %14, i64 0, i32 23
  store ptr @PredictorSetupEncode, ptr %tif_setupencode5, align 8
  store i32 1, ptr %13, align 8
  %15 = load ptr, ptr %sp, align 8
  %pfunc = getelementptr inbounds %struct.TIFFPredictorState, ptr %15, i64 0, i32 3
  store ptr null, ptr %pfunc, align 8
  ret i32 1
}

declare void @_TIFFMergeFieldInfo(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @PredictorVGetField(ptr noundef %tif, i64 noundef %tag, ptr noundef %ap) #0 {
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
  %cond = icmp eq i64 %tag, 317
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %sp, align 8
  %2 = load i32, ptr %1, align 8
  %conv = trunc i32 %2 to i16
  %3 = va_arg ptr %ap.addr, ptr
  store i16 %conv, ptr %3, align 2
  br label %return

sw.default:                                       ; preds = %entry
  %4 = load ptr, ptr %sp, align 8
  %vgetparent = getelementptr inbounds %struct.TIFFPredictorState, ptr %4, i64 0, i32 7
  %5 = load ptr, ptr %vgetparent, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %7 = load i64, ptr %tag.addr, align 8
  %8 = load ptr, ptr %ap.addr, align 8
  %call = call i32 %5(ptr noundef %6, i64 noundef %7, ptr noundef %8) #4
  br label %return

return:                                           ; preds = %sw.bb, %sw.default
  %storemerge = phi i32 [ 1, %sw.bb ], [ %call, %sw.default ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @PredictorVSetField(ptr noundef %tif, i64 noundef %tag, ptr noundef %ap) #0 {
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
  %cond = icmp eq i64 %tag, 317
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %1 = va_arg ptr %ap.addr, i32
  %conv1 = and i32 %1, 65535
  %2 = load ptr, ptr %sp, align 8
  store i32 %conv1, ptr %2, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %arrayidx = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 6, i32 0, i64 1
  %4 = load i64, ptr %arrayidx, align 8
  %or = or i64 %4, 1073741824
  store i64 %or, ptr %arrayidx, align 8
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %5, i64 0, i32 3
  %6 = load i64, ptr %tif_flags, align 8
  %or2 = or i64 %6, 8
  store i64 %or2, ptr %tif_flags, align 8
  br label %return

sw.default:                                       ; preds = %entry
  %7 = load ptr, ptr %sp, align 8
  %vsetparent = getelementptr inbounds %struct.TIFFPredictorState, ptr %7, i64 0, i32 8
  %8 = load ptr, ptr %vsetparent, align 8
  %9 = load ptr, ptr %tif.addr, align 8
  %10 = load i64, ptr %tag.addr, align 8
  %11 = load ptr, ptr %ap.addr, align 8
  %call = call i32 %8(ptr noundef %9, i64 noundef %10, ptr noundef %11) #4
  br label %return

return:                                           ; preds = %sw.bb, %sw.default
  %storemerge = phi i32 [ 1, %sw.bb ], [ %call, %sw.default ]
  ret i32 %storemerge
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
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %arrayidx = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 0, i64 1
  %1 = load i64, ptr %arrayidx, align 8
  %and = and i64 %1, 1073741824
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %fd.addr, align 8
  %3 = call i64 @fwrite(ptr nonnull @.str.1, i64 13, i64 1, ptr %2)
  %4 = load ptr, ptr %sp, align 8
  %5 = load i32, ptr %4, align 8
  switch i32 %5, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %if.then
  %6 = load ptr, ptr %fd.addr, align 8
  %7 = call i64 @fwrite(ptr nonnull @.str.2, i64 5, i64 1, ptr %6)
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.then
  %8 = load ptr, ptr %fd.addr, align 8
  %9 = call i64 @fwrite(ptr nonnull @.str.3, i64 24, i64 1, ptr %8)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %if.then
  %10 = load ptr, ptr %fd.addr, align 8
  %11 = load ptr, ptr %sp, align 8
  %12 = load i32, ptr %11, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.4, i32 noundef %12, i32 noundef %12) #4
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  %13 = load ptr, ptr %sp, align 8
  %printdir = getelementptr inbounds %struct.TIFFPredictorState, ptr %13, i64 0, i32 9
  %14 = load ptr, ptr %printdir, align 8
  %tobool7.not = icmp eq ptr %14, null
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  %15 = load ptr, ptr %sp, align 8
  %printdir9 = getelementptr inbounds %struct.TIFFPredictorState, ptr %15, i64 0, i32 9
  %16 = load ptr, ptr %printdir9, align 8
  %17 = load ptr, ptr %tif.addr, align 8
  %18 = load ptr, ptr %fd.addr, align 8
  %19 = load i64, ptr %flags.addr, align 8
  call void %16(ptr noundef %17, ptr noundef %18, i64 noundef %19) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @PredictorSetupDecode(ptr noundef %tif) #0 {
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
  %setupdecode = getelementptr inbounds %struct.TIFFPredictorState, ptr %0, i64 0, i32 10
  %1 = load ptr, ptr %setupdecode, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %call = call i32 %1(ptr noundef %2) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %call1 = call i32 @PredictorSetup(ptr noundef %3)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %sp, align 8
  %5 = load i32, ptr %4, align 8
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then3, label %return

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i64 0, i32 8
  %7 = load i16, ptr %td_bitspersample, align 8
  switch i16 %7, label %sw.epilog [
    i16 8, label %sw.bb
    i16 16, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.then3
  %8 = load ptr, ptr %sp, align 8
  %pfunc = getelementptr inbounds %struct.TIFFPredictorState, ptr %8, i64 0, i32 3
  store ptr @horAcc8, ptr %pfunc, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.then3
  %9 = load ptr, ptr %sp, align 8
  %pfunc5 = getelementptr inbounds %struct.TIFFPredictorState, ptr %9, i64 0, i32 3
  store ptr @horAcc16, ptr %pfunc5, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb, %if.then3
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 26
  %11 = load ptr, ptr %tif_decoderow, align 8
  %12 = load ptr, ptr %sp, align 8
  %coderow = getelementptr inbounds %struct.TIFFPredictorState, ptr %12, i64 0, i32 4
  store ptr %11, ptr %coderow, align 8
  %tif_decoderow6 = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 26
  store ptr @PredictorDecodeRow, ptr %tif_decoderow6, align 8
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %13, i64 0, i32 28
  %14 = load ptr, ptr %tif_decodestrip, align 8
  %15 = load ptr, ptr %sp, align 8
  %codestrip = getelementptr inbounds %struct.TIFFPredictorState, ptr %15, i64 0, i32 5
  store ptr %14, ptr %codestrip, align 8
  %tif_decodestrip7 = getelementptr inbounds %struct.tiff, ptr %13, i64 0, i32 28
  store ptr @PredictorDecodeTile, ptr %tif_decodestrip7, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 30
  %17 = load ptr, ptr %tif_decodetile, align 8
  %18 = load ptr, ptr %sp, align 8
  %codetile = getelementptr inbounds %struct.TIFFPredictorState, ptr %18, i64 0, i32 6
  store ptr %17, ptr %codetile, align 8
  %tif_decodetile8 = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 30
  store ptr @PredictorDecodeTile, ptr %tif_decodetile8, align 8
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %19, i64 0, i32 3
  %20 = load i64, ptr %tif_flags, align 8
  %and = and i64 %20, 128
  %tobool9.not = icmp eq i64 %and, 0
  br i1 %tobool9.not, label %return, label %if.then10

if.then10:                                        ; preds = %sw.epilog
  %21 = load ptr, ptr %sp, align 8
  %pfunc11 = getelementptr inbounds %struct.TIFFPredictorState, ptr %21, i64 0, i32 3
  %22 = load ptr, ptr %pfunc11, align 8
  %cmp12 = icmp eq ptr %22, @horAcc16
  br i1 %cmp12, label %if.then14, label %return

if.then14:                                        ; preds = %if.then10
  %23 = load ptr, ptr %sp, align 8
  %pfunc15 = getelementptr inbounds %struct.TIFFPredictorState, ptr %23, i64 0, i32 3
  store ptr @swabHorAcc16, ptr %pfunc15, align 8
  %24 = load ptr, ptr %tif.addr, align 8
  %tif_postdecode = getelementptr inbounds %struct.tiff, ptr %24, i64 0, i32 54
  store ptr @_TIFFNoPostDecode, ptr %tif_postdecode, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then10, %if.then14, %sw.epilog, %entry, %lor.lhs.false
  %storemerge = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %sw.epilog ], [ 1, %if.then14 ], [ 1, %if.then10 ], [ 1, %if.end ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @PredictorSetupEncode(ptr noundef %tif) #0 {
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
  %setupencode = getelementptr inbounds %struct.TIFFPredictorState, ptr %0, i64 0, i32 11
  %1 = load ptr, ptr %setupencode, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %call = call i32 %1(ptr noundef %2) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %call1 = call i32 @PredictorSetup(ptr noundef %3)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %sp, align 8
  %5 = load i32, ptr %4, align 8
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then3, label %return

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i64 0, i32 8
  %7 = load i16, ptr %td_bitspersample, align 8
  switch i16 %7, label %sw.epilog [
    i16 8, label %sw.bb
    i16 16, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.then3
  %8 = load ptr, ptr %sp, align 8
  %pfunc = getelementptr inbounds %struct.TIFFPredictorState, ptr %8, i64 0, i32 3
  store ptr @horDiff8, ptr %pfunc, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.then3
  %9 = load ptr, ptr %sp, align 8
  %pfunc5 = getelementptr inbounds %struct.TIFFPredictorState, ptr %9, i64 0, i32 3
  store ptr @horDiff16, ptr %pfunc5, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb, %if.then3
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_encoderow = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 27
  %11 = load ptr, ptr %tif_encoderow, align 8
  %12 = load ptr, ptr %sp, align 8
  %coderow = getelementptr inbounds %struct.TIFFPredictorState, ptr %12, i64 0, i32 4
  store ptr %11, ptr %coderow, align 8
  %tif_encoderow6 = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 27
  store ptr @PredictorEncodeRow, ptr %tif_encoderow6, align 8
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_encodestrip = getelementptr inbounds %struct.tiff, ptr %13, i64 0, i32 29
  %14 = load ptr, ptr %tif_encodestrip, align 8
  %15 = load ptr, ptr %sp, align 8
  %codestrip = getelementptr inbounds %struct.TIFFPredictorState, ptr %15, i64 0, i32 5
  store ptr %14, ptr %codestrip, align 8
  %tif_encodestrip7 = getelementptr inbounds %struct.tiff, ptr %13, i64 0, i32 29
  store ptr @PredictorEncodeTile, ptr %tif_encodestrip7, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_encodetile = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 31
  %17 = load ptr, ptr %tif_encodetile, align 8
  %18 = load ptr, ptr %sp, align 8
  %codetile = getelementptr inbounds %struct.TIFFPredictorState, ptr %18, i64 0, i32 6
  store ptr %17, ptr %codetile, align 8
  %tif_encodetile8 = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 31
  store ptr @PredictorEncodeTile, ptr %tif_encodetile8, align 8
  br label %return

return:                                           ; preds = %if.end, %sw.epilog, %entry, %lor.lhs.false
  %storemerge = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %sw.epilog ], [ 1, %if.end ]
  ret i32 %storemerge
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
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load i32, ptr %0, align 8
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %sp, align 8
  %3 = load i32, ptr %2, align 8
  %cmp2.not = icmp eq i32 %3, 2
  br i1 %cmp2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %tif.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %sp, align 8
  %7 = load i32, ptr %6, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef %7) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i64 0, i32 8
  %9 = load i16, ptr %td_bitspersample, align 8
  %cmp6.not = icmp eq i16 %9, 8
  br i1 %cmp6.not, label %if.end16, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end5
  %10 = load ptr, ptr %td, align 8
  %td_bitspersample8 = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i64 0, i32 8
  %11 = load i16, ptr %td_bitspersample8, align 8
  %cmp10.not = icmp eq i16 %11, 16
  br i1 %cmp10.not, label %if.end16, label %if.then12

if.then12:                                        ; preds = %land.lhs.true
  %12 = load ptr, ptr %tif.addr, align 8
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %td, align 8
  %td_bitspersample14 = getelementptr inbounds %struct.TIFFDirectory, ptr %14, i64 0, i32 8
  %15 = load i16, ptr %td_bitspersample14, align 8
  %conv15 = zext i16 %15 to i32
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %13, ptr noundef nonnull @.str.6, i32 noundef %conv15) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %land.lhs.true, %if.end5
  %16 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %16, i64 0, i32 24
  %17 = load i16, ptr %td_planarconfig, align 2
  %cmp18 = icmp eq i16 %17, 1
  br i1 %cmp18, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.end16
  %18 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %18, i64 0, i32 15
  %19 = load i16, ptr %td_samplesperpixel, align 2
  %conv20 = zext i16 %19 to i32
  br label %cond.end

cond.end:                                         ; preds = %if.end16, %cond.true
  %cond = phi i32 [ %conv20, %cond.true ], [ 1, %if.end16 ]
  %20 = load ptr, ptr %sp, align 8
  %stride = getelementptr inbounds %struct.TIFFPredictorState, ptr %20, i64 0, i32 1
  store i32 %cond, ptr %stride, align 4
  %21 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %21, i64 0, i32 3
  %22 = load i64, ptr %tif_flags, align 8
  %and = and i64 %22, 1024
  %cmp21.not = icmp eq i64 %and, 0
  br i1 %cmp21.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %cond.end
  %23 = load ptr, ptr %tif.addr, align 8
  %call = call i64 @TIFFTileRowSize(ptr noundef %23) #4
  %24 = load ptr, ptr %sp, align 8
  %rowsize = getelementptr inbounds %struct.TIFFPredictorState, ptr %24, i64 0, i32 2
  store i64 %call, ptr %rowsize, align 8
  br label %if.end26

if.else:                                          ; preds = %cond.end
  %25 = load ptr, ptr %tif.addr, align 8
  %call24 = call i64 @TIFFScanlineSize(ptr noundef %25) #4
  %26 = load ptr, ptr %sp, align 8
  %rowsize25 = getelementptr inbounds %struct.TIFFPredictorState, ptr %26, i64 0, i32 2
  store i64 %call24, ptr %rowsize25, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then23
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end26, %if.then12, %if.then3, %if.then
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

; Function Attrs: nounwind ssp uwtable
define internal void @horAcc8(ptr noundef %tif, ptr noundef %cp0, i64 noundef %cc) #0 {
entry:
  %cp0.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
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
  store ptr %cp0, ptr %cp0.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  %stride1 = getelementptr inbounds %struct.TIFFPredictorState, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %stride1, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, ptr %stride, align 8
  %2 = load ptr, ptr %cp0.addr, align 8
  store ptr %2, ptr %cp, align 8
  %3 = load i64, ptr %cc.addr, align 8
  %cmp = icmp sgt i64 %3, %conv
  br i1 %cmp, label %if.then, label %if.end114

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %stride, align 8
  %5 = load i64, ptr %cc.addr, align 8
  %sub = sub nsw i64 %5, %4
  store i64 %sub, ptr %cc.addr, align 8
  %cmp3 = icmp eq i64 %4, 3
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %6 = load ptr, ptr %cp, align 8
  %7 = load i8, ptr %6, align 1
  %conv6 = sext i8 %7 to i32
  store i32 %conv6, ptr %cr, align 4
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %8 to i32
  store i32 %conv8, ptr %cg, align 4
  %9 = load ptr, ptr %cp, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %9, i64 2
  %10 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %10 to i32
  store i32 %conv10, ptr %cb, align 4
  br label %do.body

do.body:                                          ; preds = %do.body, %if.then5
  %11 = load i64, ptr %cc.addr, align 8
  %sub11 = add nsw i64 %11, -3
  store i64 %sub11, ptr %cc.addr, align 8
  %12 = load ptr, ptr %cp, align 8
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 3
  store ptr %add.ptr, ptr %cp, align 8
  %13 = load i8, ptr %add.ptr, align 1
  %conv13 = sext i8 %13 to i32
  %14 = load i32, ptr %cr, align 4
  %add = add i32 %14, %conv13
  store i32 %add, ptr %cr, align 4
  %conv14 = trunc i32 %add to i8
  %15 = load ptr, ptr %cp, align 8
  store i8 %conv14, ptr %15, align 1
  %arrayidx16 = getelementptr inbounds i8, ptr %15, i64 1
  %16 = load i8, ptr %arrayidx16, align 1
  %conv17 = sext i8 %16 to i32
  %17 = load i32, ptr %cg, align 4
  %add18 = add i32 %17, %conv17
  store i32 %add18, ptr %cg, align 4
  %conv19 = trunc i32 %add18 to i8
  %18 = load ptr, ptr %cp, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %18, i64 1
  store i8 %conv19, ptr %arrayidx20, align 1
  %arrayidx21 = getelementptr inbounds i8, ptr %18, i64 2
  %19 = load i8, ptr %arrayidx21, align 1
  %conv22 = sext i8 %19 to i32
  %20 = load i32, ptr %cb, align 4
  %add23 = add i32 %20, %conv22
  store i32 %add23, ptr %cb, align 4
  %conv24 = trunc i32 %add23 to i8
  %21 = load ptr, ptr %cp, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %21, i64 2
  store i8 %conv24, ptr %arrayidx25, align 1
  %22 = load i64, ptr %cc.addr, align 8
  %cmp26 = icmp sgt i64 %22, 0
  br i1 %cmp26, label %do.body, label %if.end114, !llvm.loop !6

if.else:                                          ; preds = %if.then
  %23 = load i64, ptr %stride, align 8
  %cmp28 = icmp eq i64 %23, 4
  br i1 %cmp28, label %if.then30, label %do.body70

if.then30:                                        ; preds = %if.else
  %24 = load ptr, ptr %cp, align 8
  %25 = load i8, ptr %24, align 1
  %conv33 = sext i8 %25 to i32
  store i32 %conv33, ptr %cr31, align 4
  %arrayidx35 = getelementptr inbounds i8, ptr %24, i64 1
  %26 = load i8, ptr %arrayidx35, align 1
  %conv36 = sext i8 %26 to i32
  store i32 %conv36, ptr %cg34, align 4
  %27 = load ptr, ptr %cp, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %27, i64 2
  %28 = load i8, ptr %arrayidx38, align 1
  %conv39 = sext i8 %28 to i32
  store i32 %conv39, ptr %cb37, align 4
  %arrayidx40 = getelementptr inbounds i8, ptr %27, i64 3
  %29 = load i8, ptr %arrayidx40, align 1
  %conv41 = sext i8 %29 to i32
  store i32 %conv41, ptr %ca, align 4
  br label %do.body42

do.body42:                                        ; preds = %do.body42, %if.then30
  %30 = load i64, ptr %cc.addr, align 8
  %sub43 = add nsw i64 %30, -4
  store i64 %sub43, ptr %cc.addr, align 8
  %31 = load ptr, ptr %cp, align 8
  %add.ptr44 = getelementptr inbounds i8, ptr %31, i64 4
  store ptr %add.ptr44, ptr %cp, align 8
  %32 = load i8, ptr %add.ptr44, align 1
  %conv46 = sext i8 %32 to i32
  %33 = load i32, ptr %cr31, align 4
  %add47 = add i32 %33, %conv46
  store i32 %add47, ptr %cr31, align 4
  %conv48 = trunc i32 %add47 to i8
  %34 = load ptr, ptr %cp, align 8
  store i8 %conv48, ptr %34, align 1
  %arrayidx50 = getelementptr inbounds i8, ptr %34, i64 1
  %35 = load i8, ptr %arrayidx50, align 1
  %conv51 = sext i8 %35 to i32
  %36 = load i32, ptr %cg34, align 4
  %add52 = add i32 %36, %conv51
  store i32 %add52, ptr %cg34, align 4
  %conv53 = trunc i32 %add52 to i8
  %37 = load ptr, ptr %cp, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %37, i64 1
  store i8 %conv53, ptr %arrayidx54, align 1
  %arrayidx55 = getelementptr inbounds i8, ptr %37, i64 2
  %38 = load i8, ptr %arrayidx55, align 1
  %conv56 = sext i8 %38 to i32
  %39 = load i32, ptr %cb37, align 4
  %add57 = add i32 %39, %conv56
  store i32 %add57, ptr %cb37, align 4
  %conv58 = trunc i32 %add57 to i8
  %40 = load ptr, ptr %cp, align 8
  %arrayidx59 = getelementptr inbounds i8, ptr %40, i64 2
  store i8 %conv58, ptr %arrayidx59, align 1
  %arrayidx60 = getelementptr inbounds i8, ptr %40, i64 3
  %41 = load i8, ptr %arrayidx60, align 1
  %conv61 = sext i8 %41 to i32
  %42 = load i32, ptr %ca, align 4
  %add62 = add i32 %42, %conv61
  store i32 %add62, ptr %ca, align 4
  %conv63 = trunc i32 %add62 to i8
  %43 = load ptr, ptr %cp, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %43, i64 3
  store i8 %conv63, ptr %arrayidx64, align 1
  %44 = load i64, ptr %cc.addr, align 8
  %cmp66 = icmp sgt i64 %44, 0
  br i1 %cmp66, label %do.body42, label %if.end114, !llvm.loop !8

do.body70:                                        ; preds = %if.else, %sw.epilog
  %45 = load i64, ptr %stride, align 8
  switch i64 %45, label %sw.default [
    i64 4, label %sw.bb
    i64 3, label %sw.bb86
    i64 2, label %sw.bb93
    i64 1, label %sw.bb100
    i64 0, label %sw.epilog
  ]

sw.default:                                       ; preds = %do.body70
  %46 = load i64, ptr %stride, align 8
  %47 = trunc i64 %46 to i32
  %conv72 = add i32 %47, -4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %sw.default
  %storemerge = phi i32 [ %conv72, %sw.default ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp73 = icmp sgt i32 %storemerge, 0
  br i1 %cmp73, label %for.body, label %sw.bb

for.body:                                         ; preds = %for.cond
  %48 = load ptr, ptr %cp, align 8
  %49 = load i8, ptr %48, align 1
  %50 = load i64, ptr %stride, align 8
  %arrayidx76 = getelementptr inbounds i8, ptr %48, i64 %50
  %51 = load i8, ptr %arrayidx76, align 1
  %add78 = add i8 %51, %49
  store i8 %add78, ptr %arrayidx76, align 1
  %52 = load ptr, ptr %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %52, i64 1
  store ptr %incdec.ptr, ptr %cp, align 8
  %53 = load i32, ptr %i, align 4
  %dec = add nsw i32 %53, -1
  br label %for.cond, !llvm.loop !9

sw.bb:                                            ; preds = %for.cond, %do.body70
  %54 = load ptr, ptr %cp, align 8
  %55 = load i8, ptr %54, align 1
  %56 = load i64, ptr %stride, align 8
  %arrayidx81 = getelementptr inbounds i8, ptr %54, i64 %56
  %57 = load i8, ptr %arrayidx81, align 1
  %add83 = add i8 %57, %55
  store i8 %add83, ptr %arrayidx81, align 1
  %58 = load ptr, ptr %cp, align 8
  %incdec.ptr85 = getelementptr inbounds i8, ptr %58, i64 1
  store ptr %incdec.ptr85, ptr %cp, align 8
  br label %sw.bb86

sw.bb86:                                          ; preds = %sw.bb, %do.body70
  %59 = load ptr, ptr %cp, align 8
  %60 = load i8, ptr %59, align 1
  %61 = load i64, ptr %stride, align 8
  %arrayidx88 = getelementptr inbounds i8, ptr %59, i64 %61
  %62 = load i8, ptr %arrayidx88, align 1
  %add90 = add i8 %62, %60
  store i8 %add90, ptr %arrayidx88, align 1
  %63 = load ptr, ptr %cp, align 8
  %incdec.ptr92 = getelementptr inbounds i8, ptr %63, i64 1
  store ptr %incdec.ptr92, ptr %cp, align 8
  br label %sw.bb93

sw.bb93:                                          ; preds = %sw.bb86, %do.body70
  %64 = load ptr, ptr %cp, align 8
  %65 = load i8, ptr %64, align 1
  %66 = load i64, ptr %stride, align 8
  %arrayidx95 = getelementptr inbounds i8, ptr %64, i64 %66
  %67 = load i8, ptr %arrayidx95, align 1
  %add97 = add i8 %67, %65
  store i8 %add97, ptr %arrayidx95, align 1
  %68 = load ptr, ptr %cp, align 8
  %incdec.ptr99 = getelementptr inbounds i8, ptr %68, i64 1
  store ptr %incdec.ptr99, ptr %cp, align 8
  br label %sw.bb100

sw.bb100:                                         ; preds = %sw.bb93, %do.body70
  %69 = load ptr, ptr %cp, align 8
  %70 = load i8, ptr %69, align 1
  %71 = load i64, ptr %stride, align 8
  %arrayidx102 = getelementptr inbounds i8, ptr %69, i64 %71
  %72 = load i8, ptr %arrayidx102, align 1
  %add104 = add i8 %72, %70
  store i8 %add104, ptr %arrayidx102, align 1
  %73 = load ptr, ptr %cp, align 8
  %incdec.ptr106 = getelementptr inbounds i8, ptr %73, i64 1
  store ptr %incdec.ptr106, ptr %cp, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body70, %sw.bb100
  %74 = load i64, ptr %stride, align 8
  %75 = load i64, ptr %cc.addr, align 8
  %sub108 = sub nsw i64 %75, %74
  store i64 %sub108, ptr %cc.addr, align 8
  %76 = load i64, ptr %cc.addr, align 8
  %cmp110 = icmp sgt i64 %76, 0
  br i1 %cmp110, label %do.body70, label %if.end114, !llvm.loop !10

if.end114:                                        ; preds = %do.body, %sw.epilog, %do.body42, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @horAcc16(ptr noundef %tif, ptr noundef %cp0, i64 noundef %cc) #0 {
entry:
  %cp0.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  %stride = alloca i64, align 8
  %wp = alloca ptr, align 8
  %wc = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %cp0, ptr %cp0.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  %stride1 = getelementptr inbounds %struct.TIFFPredictorState, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %stride1, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, ptr %stride, align 8
  %2 = load ptr, ptr %cp0.addr, align 8
  store ptr %2, ptr %wp, align 8
  %3 = load i64, ptr %cc.addr, align 8
  %div = sdiv i64 %3, 2
  store i64 %div, ptr %wc, align 8
  %cmp = icmp sgt i64 %div, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %stride, align 8
  %5 = load i64, ptr %wc, align 8
  %sub = sub nsw i64 %5, %4
  store i64 %sub, ptr %wc, align 8
  br label %do.body

do.body:                                          ; preds = %sw.epilog, %if.then
  %6 = load i64, ptr %stride, align 8
  switch i64 %6, label %sw.default [
    i64 4, label %sw.bb
    i64 3, label %sw.bb18
    i64 2, label %sw.bb26
    i64 1, label %sw.bb34
    i64 0, label %sw.epilog
  ]

sw.default:                                       ; preds = %do.body
  %7 = load i64, ptr %stride, align 8
  %8 = trunc i64 %7 to i32
  %conv4 = add i32 %8, -4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %sw.default
  %storemerge = phi i32 [ %conv4, %sw.default ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp5 = icmp sgt i32 %storemerge, 0
  br i1 %cmp5, label %for.body, label %sw.bb

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %wp, align 8
  %10 = load i16, ptr %9, align 2
  %11 = load i64, ptr %stride, align 8
  %arrayidx8 = getelementptr inbounds i16, ptr %9, i64 %11
  %12 = load i16, ptr %arrayidx8, align 2
  %add = add i16 %12, %10
  store i16 %add, ptr %arrayidx8, align 2
  %13 = load ptr, ptr %wp, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %13, i64 1
  store ptr %incdec.ptr, ptr %wp, align 8
  %14 = load i32, ptr %i, align 4
  %dec = add nsw i32 %14, -1
  br label %for.cond, !llvm.loop !11

sw.bb:                                            ; preds = %for.cond, %do.body
  %15 = load ptr, ptr %wp, align 8
  %16 = load i16, ptr %15, align 2
  %17 = load i64, ptr %stride, align 8
  %arrayidx13 = getelementptr inbounds i16, ptr %15, i64 %17
  %18 = load i16, ptr %arrayidx13, align 2
  %add15 = add i16 %18, %16
  store i16 %add15, ptr %arrayidx13, align 2
  %19 = load ptr, ptr %wp, align 8
  %incdec.ptr17 = getelementptr inbounds i16, ptr %19, i64 1
  store ptr %incdec.ptr17, ptr %wp, align 8
  br label %sw.bb18

sw.bb18:                                          ; preds = %sw.bb, %do.body
  %20 = load ptr, ptr %wp, align 8
  %21 = load i16, ptr %20, align 2
  %22 = load i64, ptr %stride, align 8
  %arrayidx21 = getelementptr inbounds i16, ptr %20, i64 %22
  %23 = load i16, ptr %arrayidx21, align 2
  %add23 = add i16 %23, %21
  store i16 %add23, ptr %arrayidx21, align 2
  %24 = load ptr, ptr %wp, align 8
  %incdec.ptr25 = getelementptr inbounds i16, ptr %24, i64 1
  store ptr %incdec.ptr25, ptr %wp, align 8
  br label %sw.bb26

sw.bb26:                                          ; preds = %sw.bb18, %do.body
  %25 = load ptr, ptr %wp, align 8
  %26 = load i16, ptr %25, align 2
  %27 = load i64, ptr %stride, align 8
  %arrayidx29 = getelementptr inbounds i16, ptr %25, i64 %27
  %28 = load i16, ptr %arrayidx29, align 2
  %add31 = add i16 %28, %26
  store i16 %add31, ptr %arrayidx29, align 2
  %29 = load ptr, ptr %wp, align 8
  %incdec.ptr33 = getelementptr inbounds i16, ptr %29, i64 1
  store ptr %incdec.ptr33, ptr %wp, align 8
  br label %sw.bb34

sw.bb34:                                          ; preds = %sw.bb26, %do.body
  %30 = load ptr, ptr %wp, align 8
  %31 = load i16, ptr %30, align 2
  %32 = load i64, ptr %stride, align 8
  %arrayidx37 = getelementptr inbounds i16, ptr %30, i64 %32
  %33 = load i16, ptr %arrayidx37, align 2
  %add39 = add i16 %33, %31
  store i16 %add39, ptr %arrayidx37, align 2
  %34 = load ptr, ptr %wp, align 8
  %incdec.ptr41 = getelementptr inbounds i16, ptr %34, i64 1
  store ptr %incdec.ptr41, ptr %wp, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb34
  %35 = load i64, ptr %stride, align 8
  %36 = load i64, ptr %wc, align 8
  %sub43 = sub nsw i64 %36, %35
  store i64 %sub43, ptr %wc, align 8
  %37 = load i64, ptr %wc, align 8
  %cmp44 = icmp sgt i64 %37, 0
  br i1 %cmp44, label %do.body, label %if.end, !llvm.loop !12

if.end:                                           ; preds = %sw.epilog, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @PredictorDecodeRow(ptr noundef %tif, ptr noundef %op0, i64 noundef %occ0, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %op0.addr = alloca ptr, align 8
  %occ0.addr = alloca i64, align 8
  %s.addr = alloca i16, align 2
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %op0, ptr %op0.addr, align 8
  store i64 %occ0, ptr %occ0.addr, align 8
  store i16 %s, ptr %s.addr, align 2
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.PredictorDecodeRow, ptr noundef nonnull @.str.7, i32 noundef 244, ptr noundef nonnull @.str.8) #5
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load ptr, ptr %sp, align 8
  %coderow = getelementptr inbounds %struct.TIFFPredictorState, ptr %1, i64 0, i32 4
  %2 = load ptr, ptr %coderow, align 8
  %cmp1.not = icmp eq ptr %2, null
  br i1 %cmp1.not, label %cond.true7, label %cond.end9

cond.true7:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.PredictorDecodeRow, ptr noundef nonnull @.str.7, i32 noundef 245, ptr noundef nonnull @.str.9) #5
  unreachable

cond.end9:                                        ; preds = %cond.end
  %3 = load ptr, ptr %sp, align 8
  %pfunc = getelementptr inbounds %struct.TIFFPredictorState, ptr %3, i64 0, i32 3
  %4 = load ptr, ptr %pfunc, align 8
  %cmp10.not = icmp eq ptr %4, null
  br i1 %cmp10.not, label %cond.true16, label %cond.end18

cond.true16:                                      ; preds = %cond.end9
  call void @__assert_rtn(ptr noundef nonnull @__func__.PredictorDecodeRow, ptr noundef nonnull @.str.7, i32 noundef 246, ptr noundef nonnull @.str.10) #5
  unreachable

cond.end18:                                       ; preds = %cond.end9
  %5 = load ptr, ptr %sp, align 8
  %coderow19 = getelementptr inbounds %struct.TIFFPredictorState, ptr %5, i64 0, i32 4
  %6 = load ptr, ptr %coderow19, align 8
  %7 = load ptr, ptr %tif.addr, align 8
  %8 = load ptr, ptr %op0.addr, align 8
  %9 = load i64, ptr %occ0.addr, align 8
  %10 = load i16, ptr %s.addr, align 2
  %call = call i32 %6(ptr noundef %7, ptr noundef %8, i64 noundef %9, i16 noundef zeroext %10) #4
  %tobool20.not = icmp eq i32 %call, 0
  br i1 %tobool20.not, label %return, label %if.then

if.then:                                          ; preds = %cond.end18
  %11 = load ptr, ptr %sp, align 8
  %pfunc21 = getelementptr inbounds %struct.TIFFPredictorState, ptr %11, i64 0, i32 3
  %12 = load ptr, ptr %pfunc21, align 8
  %13 = load ptr, ptr %tif.addr, align 8
  %14 = load ptr, ptr %op0.addr, align 8
  %15 = load i64, ptr %occ0.addr, align 8
  call void %12(ptr noundef %13, ptr noundef %14, i64 noundef %15) #4
  br label %return

return:                                           ; preds = %cond.end18, %if.then
  %storemerge = phi i32 [ 1, %if.then ], [ 0, %cond.end18 ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @PredictorDecodeTile(ptr noundef %tif, ptr noundef %op0, i64 noundef %occ0, i16 noundef zeroext %s) #0 {
entry:
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
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.PredictorDecodeTile, ptr noundef nonnull @.str.7, i32 noundef 266, ptr noundef nonnull @.str.8) #5
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load ptr, ptr %sp, align 8
  %codetile = getelementptr inbounds %struct.TIFFPredictorState, ptr %1, i64 0, i32 6
  %2 = load ptr, ptr %codetile, align 8
  %cmp1.not = icmp eq ptr %2, null
  br i1 %cmp1.not, label %cond.true7, label %cond.end9

cond.true7:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.PredictorDecodeTile, ptr noundef nonnull @.str.7, i32 noundef 267, ptr noundef nonnull @.str.11) #5
  unreachable

cond.end9:                                        ; preds = %cond.end
  %3 = load ptr, ptr %sp, align 8
  %codetile10 = getelementptr inbounds %struct.TIFFPredictorState, ptr %3, i64 0, i32 6
  %4 = load ptr, ptr %codetile10, align 8
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load ptr, ptr %op0.addr, align 8
  %7 = load i64, ptr %occ0.addr, align 8
  %8 = load i16, ptr %s.addr, align 2
  %call = call i32 %4(ptr noundef %5, ptr noundef %6, i64 noundef %7, i16 noundef zeroext %8) #4
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %return, label %if.then

if.then:                                          ; preds = %cond.end9
  %9 = load ptr, ptr %sp, align 8
  %rowsize12 = getelementptr inbounds %struct.TIFFPredictorState, ptr %9, i64 0, i32 2
  %10 = load i64, ptr %rowsize12, align 8
  store i64 %10, ptr %rowsize, align 8
  %cmp13 = icmp slt i64 %10, 1
  br i1 %cmp13, label %cond.true19, label %cond.end21

cond.true19:                                      ; preds = %if.then
  call void @__assert_rtn(ptr noundef nonnull @__func__.PredictorDecodeTile, ptr noundef nonnull @.str.7, i32 noundef 270, ptr noundef nonnull @.str.12) #5
  unreachable

cond.end21:                                       ; preds = %if.then
  %11 = load ptr, ptr %sp, align 8
  %pfunc = getelementptr inbounds %struct.TIFFPredictorState, ptr %11, i64 0, i32 3
  %12 = load ptr, ptr %pfunc, align 8
  %cmp22.not = icmp eq ptr %12, null
  br i1 %cmp22.not, label %cond.true28, label %while.cond

cond.true28:                                      ; preds = %cond.end21
  call void @__assert_rtn(ptr noundef nonnull @__func__.PredictorDecodeTile, ptr noundef nonnull @.str.7, i32 noundef 271, ptr noundef nonnull @.str.10) #5
  unreachable

while.cond:                                       ; preds = %cond.end21, %while.body
  %13 = load i64, ptr %occ0.addr, align 8
  %cmp31 = icmp sgt i64 %13, 0
  br i1 %cmp31, label %while.body, label %return

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %sp, align 8
  %pfunc33 = getelementptr inbounds %struct.TIFFPredictorState, ptr %14, i64 0, i32 3
  %15 = load ptr, ptr %pfunc33, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %17 = load ptr, ptr %op0.addr, align 8
  %18 = load i64, ptr %rowsize, align 8
  call void %15(ptr noundef %16, ptr noundef %17, i64 noundef %18) #4
  %19 = load i64, ptr %occ0.addr, align 8
  %sub = sub nsw i64 %19, %18
  store i64 %sub, ptr %occ0.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 %18
  store ptr %add.ptr, ptr %op0.addr, align 8
  br label %while.cond, !llvm.loop !13

return:                                           ; preds = %cond.end9, %while.cond
  %storemerge = phi i32 [ 1, %while.cond ], [ 0, %cond.end9 ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal void @swabHorAcc16(ptr noundef %tif, ptr noundef %cp0, i64 noundef %cc) #0 {
entry:
  %cp0.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  %stride = alloca i64, align 8
  %wp = alloca ptr, align 8
  %wc = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %cp0, ptr %cp0.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  %stride1 = getelementptr inbounds %struct.TIFFPredictorState, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %stride1, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, ptr %stride, align 8
  %2 = load ptr, ptr %cp0.addr, align 8
  store ptr %2, ptr %wp, align 8
  %3 = load i64, ptr %cc.addr, align 8
  %div = sdiv i64 %3, 2
  store i64 %div, ptr %wc, align 8
  %cmp = icmp sgt i64 %div, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %wp, align 8
  %5 = load i64, ptr %wc, align 8
  call void @TIFFSwabArrayOfShort(ptr noundef %4, i64 noundef %5) #4
  %6 = load i64, ptr %stride, align 8
  %sub = sub nsw i64 %5, %6
  store i64 %sub, ptr %wc, align 8
  br label %do.body

do.body:                                          ; preds = %sw.epilog, %if.then
  %7 = load i64, ptr %stride, align 8
  switch i64 %7, label %sw.default [
    i64 4, label %sw.bb
    i64 3, label %sw.bb18
    i64 2, label %sw.bb26
    i64 1, label %sw.bb34
    i64 0, label %sw.epilog
  ]

sw.default:                                       ; preds = %do.body
  %8 = load i64, ptr %stride, align 8
  %9 = trunc i64 %8 to i32
  %conv4 = add i32 %9, -4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %sw.default
  %storemerge = phi i32 [ %conv4, %sw.default ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp5 = icmp sgt i32 %storemerge, 0
  br i1 %cmp5, label %for.body, label %sw.bb

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %wp, align 8
  %11 = load i16, ptr %10, align 2
  %12 = load i64, ptr %stride, align 8
  %arrayidx8 = getelementptr inbounds i16, ptr %10, i64 %12
  %13 = load i16, ptr %arrayidx8, align 2
  %add = add i16 %13, %11
  store i16 %add, ptr %arrayidx8, align 2
  %14 = load ptr, ptr %wp, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %14, i64 1
  store ptr %incdec.ptr, ptr %wp, align 8
  %15 = load i32, ptr %i, align 4
  %dec = add nsw i32 %15, -1
  br label %for.cond, !llvm.loop !14

sw.bb:                                            ; preds = %for.cond, %do.body
  %16 = load ptr, ptr %wp, align 8
  %17 = load i16, ptr %16, align 2
  %18 = load i64, ptr %stride, align 8
  %arrayidx13 = getelementptr inbounds i16, ptr %16, i64 %18
  %19 = load i16, ptr %arrayidx13, align 2
  %add15 = add i16 %19, %17
  store i16 %add15, ptr %arrayidx13, align 2
  %20 = load ptr, ptr %wp, align 8
  %incdec.ptr17 = getelementptr inbounds i16, ptr %20, i64 1
  store ptr %incdec.ptr17, ptr %wp, align 8
  br label %sw.bb18

sw.bb18:                                          ; preds = %sw.bb, %do.body
  %21 = load ptr, ptr %wp, align 8
  %22 = load i16, ptr %21, align 2
  %23 = load i64, ptr %stride, align 8
  %arrayidx21 = getelementptr inbounds i16, ptr %21, i64 %23
  %24 = load i16, ptr %arrayidx21, align 2
  %add23 = add i16 %24, %22
  store i16 %add23, ptr %arrayidx21, align 2
  %25 = load ptr, ptr %wp, align 8
  %incdec.ptr25 = getelementptr inbounds i16, ptr %25, i64 1
  store ptr %incdec.ptr25, ptr %wp, align 8
  br label %sw.bb26

sw.bb26:                                          ; preds = %sw.bb18, %do.body
  %26 = load ptr, ptr %wp, align 8
  %27 = load i16, ptr %26, align 2
  %28 = load i64, ptr %stride, align 8
  %arrayidx29 = getelementptr inbounds i16, ptr %26, i64 %28
  %29 = load i16, ptr %arrayidx29, align 2
  %add31 = add i16 %29, %27
  store i16 %add31, ptr %arrayidx29, align 2
  %30 = load ptr, ptr %wp, align 8
  %incdec.ptr33 = getelementptr inbounds i16, ptr %30, i64 1
  store ptr %incdec.ptr33, ptr %wp, align 8
  br label %sw.bb34

sw.bb34:                                          ; preds = %sw.bb26, %do.body
  %31 = load ptr, ptr %wp, align 8
  %32 = load i16, ptr %31, align 2
  %33 = load i64, ptr %stride, align 8
  %arrayidx37 = getelementptr inbounds i16, ptr %31, i64 %33
  %34 = load i16, ptr %arrayidx37, align 2
  %add39 = add i16 %34, %32
  store i16 %add39, ptr %arrayidx37, align 2
  %35 = load ptr, ptr %wp, align 8
  %incdec.ptr41 = getelementptr inbounds i16, ptr %35, i64 1
  store ptr %incdec.ptr41, ptr %wp, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb34
  %36 = load i64, ptr %stride, align 8
  %37 = load i64, ptr %wc, align 8
  %sub43 = sub nsw i64 %37, %36
  store i64 %sub43, ptr %wc, align 8
  %38 = load i64, ptr %wc, align 8
  %cmp44 = icmp sgt i64 %38, 0
  br i1 %cmp44, label %do.body, label %if.end, !llvm.loop !15

if.end:                                           ; preds = %sw.epilog, %entry
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
  %cp0.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
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
  store ptr %cp0, ptr %cp0.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  %stride1 = getelementptr inbounds %struct.TIFFPredictorState, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %stride1, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, ptr %stride, align 8
  %2 = load ptr, ptr %cp0.addr, align 8
  store ptr %2, ptr %cp, align 8
  %3 = load i64, ptr %cc.addr, align 8
  %cmp = icmp sgt i64 %3, %conv
  br i1 %cmp, label %if.then, label %if.end125

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %stride, align 8
  %5 = load i64, ptr %cc.addr, align 8
  %sub = sub nsw i64 %5, %4
  store i64 %sub, ptr %cc.addr, align 8
  %cmp3 = icmp eq i64 %4, 3
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %6 = load ptr, ptr %cp, align 8
  %7 = load i8, ptr %6, align 1
  %conv6 = sext i8 %7 to i32
  store i32 %conv6, ptr %r2, align 4
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %8 to i32
  store i32 %conv8, ptr %g2, align 4
  %9 = load ptr, ptr %cp, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %9, i64 2
  %10 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %10 to i32
  store i32 %conv10, ptr %b2, align 4
  br label %do.body

do.body:                                          ; preds = %do.body, %if.then5
  %11 = load ptr, ptr %cp, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %11, i64 3
  %12 = load i8, ptr %arrayidx11, align 1
  %conv12 = sext i8 %12 to i32
  store i32 %conv12, ptr %r1, align 4
  %13 = load i32, ptr %r2, align 4
  %14 = trunc i32 %13 to i8
  %conv14 = sub i8 %12, %14
  %15 = load ptr, ptr %cp, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %15, i64 3
  store i8 %conv14, ptr %arrayidx15, align 1
  %16 = load i32, ptr %r1, align 4
  store i32 %16, ptr %r2, align 4
  %arrayidx16 = getelementptr inbounds i8, ptr %15, i64 4
  %17 = load i8, ptr %arrayidx16, align 1
  %conv17 = sext i8 %17 to i32
  store i32 %conv17, ptr %g1, align 4
  %18 = load i32, ptr %g2, align 4
  %19 = trunc i32 %18 to i8
  %conv19 = sub i8 %17, %19
  %20 = load ptr, ptr %cp, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %20, i64 4
  store i8 %conv19, ptr %arrayidx20, align 1
  %21 = load i32, ptr %g1, align 4
  store i32 %21, ptr %g2, align 4
  %arrayidx21 = getelementptr inbounds i8, ptr %20, i64 5
  %22 = load i8, ptr %arrayidx21, align 1
  %conv22 = sext i8 %22 to i32
  store i32 %conv22, ptr %b1, align 4
  %23 = load i32, ptr %b2, align 4
  %24 = trunc i32 %23 to i8
  %conv24 = sub i8 %22, %24
  %25 = load ptr, ptr %cp, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %25, i64 5
  store i8 %conv24, ptr %arrayidx25, align 1
  %26 = load i32, ptr %b1, align 4
  store i32 %26, ptr %b2, align 4
  %add.ptr = getelementptr inbounds i8, ptr %25, i64 3
  store ptr %add.ptr, ptr %cp, align 8
  %27 = load i64, ptr %cc.addr, align 8
  %sub26 = add nsw i64 %27, -3
  store i64 %sub26, ptr %cc.addr, align 8
  %cmp27 = icmp sgt i64 %27, 3
  br i1 %cmp27, label %do.body, label %if.end125, !llvm.loop !16

if.else:                                          ; preds = %if.then
  %28 = load i64, ptr %stride, align 8
  %cmp29 = icmp eq i64 %28, 4
  br i1 %cmp29, label %if.then31, label %if.else73

if.then31:                                        ; preds = %if.else
  %29 = load ptr, ptr %cp, align 8
  %30 = load i8, ptr %29, align 1
  %conv37 = sext i8 %30 to i32
  store i32 %conv37, ptr %r235, align 4
  %arrayidx39 = getelementptr inbounds i8, ptr %29, i64 1
  %31 = load i8, ptr %arrayidx39, align 1
  %conv40 = sext i8 %31 to i32
  store i32 %conv40, ptr %g238, align 4
  %32 = load ptr, ptr %cp, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %32, i64 2
  %33 = load i8, ptr %arrayidx42, align 1
  %conv43 = sext i8 %33 to i32
  store i32 %conv43, ptr %b241, align 4
  %arrayidx44 = getelementptr inbounds i8, ptr %32, i64 3
  %34 = load i8, ptr %arrayidx44, align 1
  %conv45 = sext i8 %34 to i32
  store i32 %conv45, ptr %a2, align 4
  br label %do.body46

do.body46:                                        ; preds = %do.body46, %if.then31
  %35 = load ptr, ptr %cp, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %35, i64 4
  %36 = load i8, ptr %arrayidx47, align 1
  %conv48 = sext i8 %36 to i32
  store i32 %conv48, ptr %r132, align 4
  %37 = load i32, ptr %r235, align 4
  %38 = trunc i32 %37 to i8
  %conv50 = sub i8 %36, %38
  %39 = load ptr, ptr %cp, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %39, i64 4
  store i8 %conv50, ptr %arrayidx51, align 1
  %40 = load i32, ptr %r132, align 4
  store i32 %40, ptr %r235, align 4
  %arrayidx52 = getelementptr inbounds i8, ptr %39, i64 5
  %41 = load i8, ptr %arrayidx52, align 1
  %conv53 = sext i8 %41 to i32
  store i32 %conv53, ptr %g133, align 4
  %42 = load i32, ptr %g238, align 4
  %43 = trunc i32 %42 to i8
  %conv55 = sub i8 %41, %43
  %44 = load ptr, ptr %cp, align 8
  %arrayidx56 = getelementptr inbounds i8, ptr %44, i64 5
  store i8 %conv55, ptr %arrayidx56, align 1
  %45 = load i32, ptr %g133, align 4
  store i32 %45, ptr %g238, align 4
  %arrayidx57 = getelementptr inbounds i8, ptr %44, i64 6
  %46 = load i8, ptr %arrayidx57, align 1
  %conv58 = sext i8 %46 to i32
  store i32 %conv58, ptr %b134, align 4
  %47 = load i32, ptr %b241, align 4
  %48 = trunc i32 %47 to i8
  %conv60 = sub i8 %46, %48
  %49 = load ptr, ptr %cp, align 8
  %arrayidx61 = getelementptr inbounds i8, ptr %49, i64 6
  store i8 %conv60, ptr %arrayidx61, align 1
  %50 = load i32, ptr %b134, align 4
  store i32 %50, ptr %b241, align 4
  %arrayidx62 = getelementptr inbounds i8, ptr %49, i64 7
  %51 = load i8, ptr %arrayidx62, align 1
  %conv63 = sext i8 %51 to i32
  store i32 %conv63, ptr %a1, align 4
  %52 = load i32, ptr %a2, align 4
  %53 = trunc i32 %52 to i8
  %conv65 = sub i8 %51, %53
  %54 = load ptr, ptr %cp, align 8
  %arrayidx66 = getelementptr inbounds i8, ptr %54, i64 7
  store i8 %conv65, ptr %arrayidx66, align 1
  %55 = load i32, ptr %a1, align 4
  store i32 %55, ptr %a2, align 4
  %add.ptr67 = getelementptr inbounds i8, ptr %54, i64 4
  store ptr %add.ptr67, ptr %cp, align 8
  %56 = load i64, ptr %cc.addr, align 8
  %sub69 = add nsw i64 %56, -4
  store i64 %sub69, ptr %cc.addr, align 8
  %cmp70 = icmp sgt i64 %56, 4
  br i1 %cmp70, label %do.body46, label %if.end125, !llvm.loop !17

if.else73:                                        ; preds = %if.else
  %57 = load i64, ptr %cc.addr, align 8
  %sub74 = add nsw i64 %57, -1
  %58 = load ptr, ptr %cp, align 8
  %add.ptr75 = getelementptr inbounds i8, ptr %58, i64 %sub74
  store ptr %add.ptr75, ptr %cp, align 8
  br label %do.body76

do.body76:                                        ; preds = %do.cond119, %if.else73
  %59 = load i64, ptr %stride, align 8
  switch i64 %59, label %sw.default [
    i64 4, label %sw.bb
    i64 3, label %sw.bb94
    i64 2, label %sw.bb102
    i64 1, label %sw.bb110
    i64 0, label %do.cond119
  ]

sw.default:                                       ; preds = %do.body76
  %60 = load i64, ptr %stride, align 8
  %61 = trunc i64 %60 to i32
  %conv78 = add i32 %61, -4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %sw.default
  %storemerge = phi i32 [ %conv78, %sw.default ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp79 = icmp sgt i32 %storemerge, 0
  br i1 %cmp79, label %for.body, label %sw.bb

for.body:                                         ; preds = %for.cond
  %62 = load ptr, ptr %cp, align 8
  %63 = load i8, ptr %62, align 1
  %64 = load i64, ptr %stride, align 8
  %arrayidx83 = getelementptr inbounds i8, ptr %62, i64 %64
  %65 = load i8, ptr %arrayidx83, align 1
  %sub85 = sub i8 %65, %63
  store i8 %sub85, ptr %arrayidx83, align 1
  %66 = load ptr, ptr %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %66, i64 -1
  store ptr %incdec.ptr, ptr %cp, align 8
  %67 = load i32, ptr %i, align 4
  %dec = add nsw i32 %67, -1
  br label %for.cond, !llvm.loop !18

sw.bb:                                            ; preds = %for.cond, %do.body76
  %68 = load ptr, ptr %cp, align 8
  %69 = load i8, ptr %68, align 1
  %70 = load i64, ptr %stride, align 8
  %arrayidx89 = getelementptr inbounds i8, ptr %68, i64 %70
  %71 = load i8, ptr %arrayidx89, align 1
  %sub91 = sub i8 %71, %69
  store i8 %sub91, ptr %arrayidx89, align 1
  %72 = load ptr, ptr %cp, align 8
  %incdec.ptr93 = getelementptr inbounds i8, ptr %72, i64 -1
  store ptr %incdec.ptr93, ptr %cp, align 8
  br label %sw.bb94

sw.bb94:                                          ; preds = %sw.bb, %do.body76
  %73 = load ptr, ptr %cp, align 8
  %74 = load i8, ptr %73, align 1
  %75 = load i64, ptr %stride, align 8
  %arrayidx97 = getelementptr inbounds i8, ptr %73, i64 %75
  %76 = load i8, ptr %arrayidx97, align 1
  %sub99 = sub i8 %76, %74
  store i8 %sub99, ptr %arrayidx97, align 1
  %77 = load ptr, ptr %cp, align 8
  %incdec.ptr101 = getelementptr inbounds i8, ptr %77, i64 -1
  store ptr %incdec.ptr101, ptr %cp, align 8
  br label %sw.bb102

sw.bb102:                                         ; preds = %sw.bb94, %do.body76
  %78 = load ptr, ptr %cp, align 8
  %79 = load i8, ptr %78, align 1
  %80 = load i64, ptr %stride, align 8
  %arrayidx105 = getelementptr inbounds i8, ptr %78, i64 %80
  %81 = load i8, ptr %arrayidx105, align 1
  %sub107 = sub i8 %81, %79
  store i8 %sub107, ptr %arrayidx105, align 1
  %82 = load ptr, ptr %cp, align 8
  %incdec.ptr109 = getelementptr inbounds i8, ptr %82, i64 -1
  store ptr %incdec.ptr109, ptr %cp, align 8
  br label %sw.bb110

sw.bb110:                                         ; preds = %sw.bb102, %do.body76
  %83 = load ptr, ptr %cp, align 8
  %84 = load i8, ptr %83, align 1
  %85 = load i64, ptr %stride, align 8
  %arrayidx113 = getelementptr inbounds i8, ptr %83, i64 %85
  %86 = load i8, ptr %arrayidx113, align 1
  %sub115 = sub i8 %86, %84
  store i8 %sub115, ptr %arrayidx113, align 1
  %87 = load ptr, ptr %cp, align 8
  %incdec.ptr117 = getelementptr inbounds i8, ptr %87, i64 -1
  store ptr %incdec.ptr117, ptr %cp, align 8
  br label %do.cond119

do.cond119:                                       ; preds = %sw.bb110, %do.body76
  %88 = load i64, ptr %stride, align 8
  %89 = load i64, ptr %cc.addr, align 8
  %sub120 = sub nsw i64 %89, %88
  store i64 %sub120, ptr %cc.addr, align 8
  %cmp121 = icmp sgt i64 %sub120, 0
  br i1 %cmp121, label %do.body76, label %if.end125, !llvm.loop !19

if.end125:                                        ; preds = %do.body, %do.cond119, %do.body46, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @horDiff16(ptr noundef %tif, ptr noundef %cp0, i64 noundef %cc) #0 {
entry:
  %cp0.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  %stride = alloca i64, align 8
  %wp = alloca ptr, align 8
  %wc = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %cp0, ptr %cp0.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  %stride1 = getelementptr inbounds %struct.TIFFPredictorState, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %stride1, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, ptr %stride, align 8
  %2 = load ptr, ptr %cp0.addr, align 8
  store ptr %2, ptr %wp, align 8
  %3 = load i64, ptr %cc.addr, align 8
  %div = sdiv i64 %3, 2
  store i64 %div, ptr %wc, align 8
  %cmp = icmp sgt i64 %div, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %stride, align 8
  %5 = load i64, ptr %wc, align 8
  %sub = sub nsw i64 %5, %4
  store i64 %sub, ptr %wc, align 8
  %sub3 = add nsw i64 %sub, -1
  %6 = load ptr, ptr %wp, align 8
  %add.ptr = getelementptr inbounds i16, ptr %6, i64 %sub3
  store ptr %add.ptr, ptr %wp, align 8
  br label %do.body

do.body:                                          ; preds = %sw.epilog, %if.then
  %7 = load i64, ptr %stride, align 8
  switch i64 %7, label %sw.default [
    i64 4, label %sw.bb
    i64 3, label %sw.bb20
    i64 2, label %sw.bb28
    i64 1, label %sw.bb36
    i64 0, label %sw.epilog
  ]

sw.default:                                       ; preds = %do.body
  %8 = load i64, ptr %stride, align 8
  %9 = trunc i64 %8 to i32
  %conv5 = add i32 %9, -4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %sw.default
  %storemerge = phi i32 [ %conv5, %sw.default ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp6 = icmp sgt i32 %storemerge, 0
  br i1 %cmp6, label %for.body, label %sw.bb

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %wp, align 8
  %11 = load i16, ptr %10, align 2
  %12 = load i64, ptr %stride, align 8
  %arrayidx9 = getelementptr inbounds i16, ptr %10, i64 %12
  %13 = load i16, ptr %arrayidx9, align 2
  %sub11 = sub i16 %13, %11
  store i16 %sub11, ptr %arrayidx9, align 2
  %14 = load ptr, ptr %wp, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %14, i64 -1
  store ptr %incdec.ptr, ptr %wp, align 8
  %15 = load i32, ptr %i, align 4
  %dec = add nsw i32 %15, -1
  br label %for.cond, !llvm.loop !20

sw.bb:                                            ; preds = %for.cond, %do.body
  %16 = load ptr, ptr %wp, align 8
  %17 = load i16, ptr %16, align 2
  %18 = load i64, ptr %stride, align 8
  %arrayidx15 = getelementptr inbounds i16, ptr %16, i64 %18
  %19 = load i16, ptr %arrayidx15, align 2
  %sub17 = sub i16 %19, %17
  store i16 %sub17, ptr %arrayidx15, align 2
  %20 = load ptr, ptr %wp, align 8
  %incdec.ptr19 = getelementptr inbounds i16, ptr %20, i64 -1
  store ptr %incdec.ptr19, ptr %wp, align 8
  br label %sw.bb20

sw.bb20:                                          ; preds = %sw.bb, %do.body
  %21 = load ptr, ptr %wp, align 8
  %22 = load i16, ptr %21, align 2
  %23 = load i64, ptr %stride, align 8
  %arrayidx23 = getelementptr inbounds i16, ptr %21, i64 %23
  %24 = load i16, ptr %arrayidx23, align 2
  %sub25 = sub i16 %24, %22
  store i16 %sub25, ptr %arrayidx23, align 2
  %25 = load ptr, ptr %wp, align 8
  %incdec.ptr27 = getelementptr inbounds i16, ptr %25, i64 -1
  store ptr %incdec.ptr27, ptr %wp, align 8
  br label %sw.bb28

sw.bb28:                                          ; preds = %sw.bb20, %do.body
  %26 = load ptr, ptr %wp, align 8
  %27 = load i16, ptr %26, align 2
  %28 = load i64, ptr %stride, align 8
  %arrayidx31 = getelementptr inbounds i16, ptr %26, i64 %28
  %29 = load i16, ptr %arrayidx31, align 2
  %sub33 = sub i16 %29, %27
  store i16 %sub33, ptr %arrayidx31, align 2
  %30 = load ptr, ptr %wp, align 8
  %incdec.ptr35 = getelementptr inbounds i16, ptr %30, i64 -1
  store ptr %incdec.ptr35, ptr %wp, align 8
  br label %sw.bb36

sw.bb36:                                          ; preds = %sw.bb28, %do.body
  %31 = load ptr, ptr %wp, align 8
  %32 = load i16, ptr %31, align 2
  %33 = load i64, ptr %stride, align 8
  %arrayidx39 = getelementptr inbounds i16, ptr %31, i64 %33
  %34 = load i16, ptr %arrayidx39, align 2
  %sub41 = sub i16 %34, %32
  store i16 %sub41, ptr %arrayidx39, align 2
  %35 = load ptr, ptr %wp, align 8
  %incdec.ptr43 = getelementptr inbounds i16, ptr %35, i64 -1
  store ptr %incdec.ptr43, ptr %wp, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb36
  %36 = load i64, ptr %stride, align 8
  %37 = load i64, ptr %wc, align 8
  %sub45 = sub nsw i64 %37, %36
  store i64 %sub45, ptr %wc, align 8
  %38 = load i64, ptr %wc, align 8
  %cmp46 = icmp sgt i64 %38, 0
  br i1 %cmp46, label %do.body, label %if.end, !llvm.loop !21

if.end:                                           ; preds = %sw.epilog, %entry
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
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.PredictorEncodeRow, ptr noundef nonnull @.str.7, i32 noundef 350, ptr noundef nonnull @.str.8) #5
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load ptr, ptr %sp, align 8
  %pfunc = getelementptr inbounds %struct.TIFFPredictorState, ptr %1, i64 0, i32 3
  %2 = load ptr, ptr %pfunc, align 8
  %cmp1.not = icmp eq ptr %2, null
  br i1 %cmp1.not, label %cond.true7, label %cond.end9

cond.true7:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.PredictorEncodeRow, ptr noundef nonnull @.str.7, i32 noundef 351, ptr noundef nonnull @.str.10) #5
  unreachable

cond.end9:                                        ; preds = %cond.end
  %3 = load ptr, ptr %sp, align 8
  %coderow = getelementptr inbounds %struct.TIFFPredictorState, ptr %3, i64 0, i32 4
  %4 = load ptr, ptr %coderow, align 8
  %cmp10.not = icmp eq ptr %4, null
  br i1 %cmp10.not, label %cond.true16, label %cond.end18

cond.true16:                                      ; preds = %cond.end9
  call void @__assert_rtn(ptr noundef nonnull @__func__.PredictorEncodeRow, ptr noundef nonnull @.str.7, i32 noundef 352, ptr noundef nonnull @.str.9) #5
  unreachable

cond.end18:                                       ; preds = %cond.end9
  %5 = load ptr, ptr %sp, align 8
  %pfunc19 = getelementptr inbounds %struct.TIFFPredictorState, ptr %5, i64 0, i32 3
  %6 = load ptr, ptr %pfunc19, align 8
  %7 = load ptr, ptr %tif.addr, align 8
  %8 = load ptr, ptr %bp.addr, align 8
  %9 = load i64, ptr %cc.addr, align 8
  call void %6(ptr noundef %7, ptr noundef %8, i64 noundef %9) #4
  %10 = load ptr, ptr %sp, align 8
  %coderow20 = getelementptr inbounds %struct.TIFFPredictorState, ptr %10, i64 0, i32 4
  %11 = load ptr, ptr %coderow20, align 8
  %12 = load ptr, ptr %tif.addr, align 8
  %13 = load ptr, ptr %bp.addr, align 8
  %14 = load i64, ptr %cc.addr, align 8
  %15 = load i16, ptr %s.addr, align 2
  %call = call i32 %11(ptr noundef %12, ptr noundef %13, i64 noundef %14, i16 noundef zeroext %15) #4
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
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  store i64 %cc0, ptr %cc, align 8
  %1 = load ptr, ptr %bp0.addr, align 8
  store ptr %1, ptr %bp, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.PredictorEncodeTile, ptr noundef nonnull @.str.7, i32 noundef 365, ptr noundef nonnull @.str.8) #5
  unreachable

cond.end:                                         ; preds = %entry
  %2 = load ptr, ptr %sp, align 8
  %pfunc = getelementptr inbounds %struct.TIFFPredictorState, ptr %2, i64 0, i32 3
  %3 = load ptr, ptr %pfunc, align 8
  %cmp1.not = icmp eq ptr %3, null
  br i1 %cmp1.not, label %cond.true7, label %cond.end9

cond.true7:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.PredictorEncodeTile, ptr noundef nonnull @.str.7, i32 noundef 366, ptr noundef nonnull @.str.10) #5
  unreachable

cond.end9:                                        ; preds = %cond.end
  %4 = load ptr, ptr %sp, align 8
  %codetile = getelementptr inbounds %struct.TIFFPredictorState, ptr %4, i64 0, i32 6
  %5 = load ptr, ptr %codetile, align 8
  %cmp10.not = icmp eq ptr %5, null
  br i1 %cmp10.not, label %cond.true16, label %cond.end18

cond.true16:                                      ; preds = %cond.end9
  call void @__assert_rtn(ptr noundef nonnull @__func__.PredictorEncodeTile, ptr noundef nonnull @.str.7, i32 noundef 367, ptr noundef nonnull @.str.11) #5
  unreachable

cond.end18:                                       ; preds = %cond.end9
  %6 = load ptr, ptr %sp, align 8
  %rowsize19 = getelementptr inbounds %struct.TIFFPredictorState, ptr %6, i64 0, i32 2
  %7 = load i64, ptr %rowsize19, align 8
  store i64 %7, ptr %rowsize, align 8
  %cmp20 = icmp slt i64 %7, 1
  br i1 %cmp20, label %cond.true26, label %while.cond

cond.true26:                                      ; preds = %cond.end18
  call void @__assert_rtn(ptr noundef nonnull @__func__.PredictorEncodeTile, ptr noundef nonnull @.str.7, i32 noundef 369, ptr noundef nonnull @.str.12) #5
  unreachable

while.cond:                                       ; preds = %cond.end18, %while.body
  %8 = load i64, ptr %cc, align 8
  %cmp29 = icmp sgt i64 %8, 0
  br i1 %cmp29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %sp, align 8
  %pfunc31 = getelementptr inbounds %struct.TIFFPredictorState, ptr %9, i64 0, i32 3
  %10 = load ptr, ptr %pfunc31, align 8
  %11 = load ptr, ptr %tif.addr, align 8
  %12 = load ptr, ptr %bp, align 8
  %13 = load i64, ptr %rowsize, align 8
  call void %10(ptr noundef %11, ptr noundef %12, i64 noundef %13) #4
  %14 = load i64, ptr %cc, align 8
  %sub = sub nsw i64 %14, %13
  store i64 %sub, ptr %cc, align 8
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 %13
  store ptr %add.ptr, ptr %bp, align 8
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %while.cond
  %15 = load ptr, ptr %sp, align 8
  %codetile32 = getelementptr inbounds %struct.TIFFPredictorState, ptr %15, i64 0, i32 6
  %16 = load ptr, ptr %codetile32, align 8
  %17 = load ptr, ptr %tif.addr, align 8
  %18 = load ptr, ptr %bp0.addr, align 8
  %19 = load i64, ptr %cc0.addr, align 8
  %20 = load i16, ptr %s.addr, align 2
  %call = call i32 %16(ptr noundef %17, ptr noundef %18, i64 noundef %19, i16 noundef zeroext %20) #4
  ret i32 %call
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #3

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }
attributes #5 = { cold noreturn nounwind }

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
