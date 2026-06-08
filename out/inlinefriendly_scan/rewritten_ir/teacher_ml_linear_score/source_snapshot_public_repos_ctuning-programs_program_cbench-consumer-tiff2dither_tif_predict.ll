; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_ml_linear_score/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-tiff2dither_tif_predict.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2dither/tif_predict.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.TIFFFieldInfo = type { i32, i16, i16, i32, i16, i8, i8, ptr }
%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }
%struct.TIFFPredictorState = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@predictFieldInfo = internal constant [1 x %struct.TIFFFieldInfo] [%struct.TIFFFieldInfo { i32 317, i16 1, i16 1, i32 3, i16 62, i8 0, i8 0, ptr @.str }], align 8
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
define internal i32 @PredictorVGetField(ptr noundef %tif, i32 noundef %tag, ptr noundef %ap) #0 {
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
  %cond = icmp eq i32 %tag, 317
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
  %7 = load i32, ptr %tag.addr, align 4
  %8 = load ptr, ptr %ap.addr, align 8
  %call = call i32 %5(ptr noundef %6, i32 noundef %7, ptr noundef %8) #4
  br label %return

return:                                           ; preds = %sw.bb, %sw.default
  %storemerge = phi i32 [ 1, %sw.bb ], [ %call, %sw.default ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @PredictorVSetField(ptr noundef %tif, i32 noundef %tag, ptr noundef %ap) #0 {
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
  %cond = icmp eq i32 %tag, 317
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
  %6 = load i32, ptr %tif_flags, align 8
  %or2 = or i32 %6, 8
  store i32 %or2, ptr %tif_flags, align 8
  br label %return

sw.default:                                       ; preds = %entry
  %7 = load ptr, ptr %sp, align 8
  %vsetparent = getelementptr inbounds %struct.TIFFPredictorState, ptr %7, i64 0, i32 8
  %8 = load ptr, ptr %vsetparent, align 8
  %9 = load ptr, ptr %tif.addr, align 8
  %10 = load i32, ptr %tag.addr, align 4
  %11 = load ptr, ptr %ap.addr, align 8
  %call = call i32 %8(ptr noundef %9, i32 noundef %10, ptr noundef %11) #4
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
  %7 = load i16, ptr %td_bitspersample, align 4
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
  %20 = load i32, ptr %tif_flags, align 8
  %and = and i32 %20, 128
  %tobool9.not = icmp eq i32 %and, 0
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
  %7 = load i16, ptr %td_bitspersample, align 4
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
  %9 = load i16, ptr %td_bitspersample, align 4
  %cmp6.not = icmp eq i16 %9, 8
  br i1 %cmp6.not, label %if.end16, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end5
  %10 = load ptr, ptr %td, align 8
  %td_bitspersample8 = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i64 0, i32 8
  %11 = load i16, ptr %td_bitspersample8, align 4
  %cmp10.not = icmp eq i16 %11, 16
  br i1 %cmp10.not, label %if.end16, label %if.then12

if.then12:                                        ; preds = %land.lhs.true
  %12 = load ptr, ptr %tif.addr, align 8
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %td, align 8
  %td_bitspersample14 = getelementptr inbounds %struct.TIFFDirectory, ptr %14, i64 0, i32 8
  %15 = load i16, ptr %td_bitspersample14, align 4
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
  %22 = load i32, ptr %tif_flags, align 8
  %and = and i32 %22, 1024
  %cmp21.not = icmp eq i32 %and, 0
  br i1 %cmp21.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %cond.end
  %23 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFTileRowSize(ptr noundef %23) #4
  %24 = load ptr, ptr %sp, align 8
  %rowsize = getelementptr inbounds %struct.TIFFPredictorState, ptr %24, i64 0, i32 2
  store i32 %call, ptr %rowsize, align 8
  br label %if.end26

if.else:                                          ; preds = %cond.end
  %25 = load ptr, ptr %tif.addr, align 8
  %call24 = call i32 @TIFFScanlineSize(ptr noundef %25) #4
  %26 = load ptr, ptr %sp, align 8
  %rowsize25 = getelementptr inbounds %struct.TIFFPredictorState, ptr %26, i64 0, i32 2
  store i32 %call24, ptr %rowsize25, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then23
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end26, %if.then12, %if.then3, %if.then
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

; Function Attrs: nounwind ssp uwtable
define internal void @horAcc8(ptr noundef %tif, ptr noundef %cp0, i32 noundef %cc) #0 {
entry:
  %cp0.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %stride = alloca i32, align 4
  %cp = alloca ptr, align 8
  %cr = alloca i32, align 4
  %cg = alloca i32, align 4
  %cb = alloca i32, align 4
  %cr28 = alloca i32, align 4
  %cg31 = alloca i32, align 4
  %cb34 = alloca i32, align 4
  %ca = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %cp0, ptr %cp0.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  %stride1 = getelementptr inbounds %struct.TIFFPredictorState, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %stride1, align 4
  store i32 %1, ptr %stride, align 4
  %2 = load ptr, ptr %cp0.addr, align 8
  store ptr %2, ptr %cp, align 8
  %3 = load i32, ptr %cc.addr, align 4
  %cmp = icmp sgt i32 %3, %1
  br i1 %cmp, label %if.then, label %if.end114

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %stride, align 4
  %5 = load i32, ptr %cc.addr, align 4
  %sub = sub nsw i32 %5, %4
  store i32 %sub, ptr %cc.addr, align 4
  %cmp2 = icmp eq i32 %4, 3
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %6 = load ptr, ptr %cp, align 8
  %7 = load i8, ptr %6, align 1
  %conv = sext i8 %7 to i32
  store i32 %conv, ptr %cr, align 4
  %arrayidx4 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = load i8, ptr %arrayidx4, align 1
  %conv5 = sext i8 %8 to i32
  store i32 %conv5, ptr %cg, align 4
  %9 = load ptr, ptr %cp, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %9, i64 2
  %10 = load i8, ptr %arrayidx6, align 1
  %conv7 = sext i8 %10 to i32
  store i32 %conv7, ptr %cb, align 4
  br label %do.body

do.body:                                          ; preds = %do.body, %if.then3
  %11 = load i32, ptr %cc.addr, align 4
  %sub8 = add nsw i32 %11, -3
  store i32 %sub8, ptr %cc.addr, align 4
  %12 = load ptr, ptr %cp, align 8
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 3
  store ptr %add.ptr, ptr %cp, align 8
  %13 = load i8, ptr %add.ptr, align 1
  %conv10 = sext i8 %13 to i32
  %14 = load i32, ptr %cr, align 4
  %add = add i32 %14, %conv10
  store i32 %add, ptr %cr, align 4
  %conv11 = trunc i32 %add to i8
  %15 = load ptr, ptr %cp, align 8
  store i8 %conv11, ptr %15, align 1
  %arrayidx13 = getelementptr inbounds i8, ptr %15, i64 1
  %16 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %16 to i32
  %17 = load i32, ptr %cg, align 4
  %add15 = add i32 %17, %conv14
  store i32 %add15, ptr %cg, align 4
  %conv16 = trunc i32 %add15 to i8
  %18 = load ptr, ptr %cp, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %18, i64 1
  store i8 %conv16, ptr %arrayidx17, align 1
  %arrayidx18 = getelementptr inbounds i8, ptr %18, i64 2
  %19 = load i8, ptr %arrayidx18, align 1
  %conv19 = sext i8 %19 to i32
  %20 = load i32, ptr %cb, align 4
  %add20 = add i32 %20, %conv19
  store i32 %add20, ptr %cb, align 4
  %conv21 = trunc i32 %add20 to i8
  %21 = load ptr, ptr %cp, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %21, i64 2
  store i8 %conv21, ptr %arrayidx22, align 1
  %22 = load i32, ptr %cc.addr, align 4
  %cmp23 = icmp sgt i32 %22, 0
  br i1 %cmp23, label %do.body, label %if.end114, !llvm.loop !6

if.else:                                          ; preds = %if.then
  %23 = load i32, ptr %stride, align 4
  %cmp25 = icmp eq i32 %23, 4
  br i1 %cmp25, label %if.then27, label %do.body67

if.then27:                                        ; preds = %if.else
  %24 = load ptr, ptr %cp, align 8
  %25 = load i8, ptr %24, align 1
  %conv30 = sext i8 %25 to i32
  store i32 %conv30, ptr %cr28, align 4
  %arrayidx32 = getelementptr inbounds i8, ptr %24, i64 1
  %26 = load i8, ptr %arrayidx32, align 1
  %conv33 = sext i8 %26 to i32
  store i32 %conv33, ptr %cg31, align 4
  %27 = load ptr, ptr %cp, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %27, i64 2
  %28 = load i8, ptr %arrayidx35, align 1
  %conv36 = sext i8 %28 to i32
  store i32 %conv36, ptr %cb34, align 4
  %arrayidx37 = getelementptr inbounds i8, ptr %27, i64 3
  %29 = load i8, ptr %arrayidx37, align 1
  %conv38 = sext i8 %29 to i32
  store i32 %conv38, ptr %ca, align 4
  br label %do.body39

do.body39:                                        ; preds = %do.body39, %if.then27
  %30 = load i32, ptr %cc.addr, align 4
  %sub40 = add nsw i32 %30, -4
  store i32 %sub40, ptr %cc.addr, align 4
  %31 = load ptr, ptr %cp, align 8
  %add.ptr41 = getelementptr inbounds i8, ptr %31, i64 4
  store ptr %add.ptr41, ptr %cp, align 8
  %32 = load i8, ptr %add.ptr41, align 1
  %conv43 = sext i8 %32 to i32
  %33 = load i32, ptr %cr28, align 4
  %add44 = add i32 %33, %conv43
  store i32 %add44, ptr %cr28, align 4
  %conv45 = trunc i32 %add44 to i8
  %34 = load ptr, ptr %cp, align 8
  store i8 %conv45, ptr %34, align 1
  %arrayidx47 = getelementptr inbounds i8, ptr %34, i64 1
  %35 = load i8, ptr %arrayidx47, align 1
  %conv48 = sext i8 %35 to i32
  %36 = load i32, ptr %cg31, align 4
  %add49 = add i32 %36, %conv48
  store i32 %add49, ptr %cg31, align 4
  %conv50 = trunc i32 %add49 to i8
  %37 = load ptr, ptr %cp, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %37, i64 1
  store i8 %conv50, ptr %arrayidx51, align 1
  %arrayidx52 = getelementptr inbounds i8, ptr %37, i64 2
  %38 = load i8, ptr %arrayidx52, align 1
  %conv53 = sext i8 %38 to i32
  %39 = load i32, ptr %cb34, align 4
  %add54 = add i32 %39, %conv53
  store i32 %add54, ptr %cb34, align 4
  %conv55 = trunc i32 %add54 to i8
  %40 = load ptr, ptr %cp, align 8
  %arrayidx56 = getelementptr inbounds i8, ptr %40, i64 2
  store i8 %conv55, ptr %arrayidx56, align 1
  %arrayidx57 = getelementptr inbounds i8, ptr %40, i64 3
  %41 = load i8, ptr %arrayidx57, align 1
  %conv58 = sext i8 %41 to i32
  %42 = load i32, ptr %ca, align 4
  %add59 = add i32 %42, %conv58
  store i32 %add59, ptr %ca, align 4
  %conv60 = trunc i32 %add59 to i8
  %43 = load ptr, ptr %cp, align 8
  %arrayidx61 = getelementptr inbounds i8, ptr %43, i64 3
  store i8 %conv60, ptr %arrayidx61, align 1
  %44 = load i32, ptr %cc.addr, align 4
  %cmp63 = icmp sgt i32 %44, 0
  br i1 %cmp63, label %do.body39, label %if.end114, !llvm.loop !8

do.body67:                                        ; preds = %if.else, %sw.epilog
  %45 = load i32, ptr %stride, align 4
  switch i32 %45, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb83
    i32 2, label %sw.bb91
    i32 1, label %sw.bb99
    i32 0, label %sw.epilog
  ]

sw.default:                                       ; preds = %do.body67
  %46 = load i32, ptr %stride, align 4
  %sub68 = add nsw i32 %46, -4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %sw.default
  %storemerge = phi i32 [ %sub68, %sw.default ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp69 = icmp sgt i32 %storemerge, 0
  br i1 %cmp69, label %for.body, label %sw.bb

for.body:                                         ; preds = %for.cond
  %47 = load ptr, ptr %cp, align 8
  %48 = load i8, ptr %47, align 1
  %49 = load i32, ptr %stride, align 4
  %idxprom = sext i32 %49 to i64
  %arrayidx72 = getelementptr inbounds i8, ptr %47, i64 %idxprom
  %50 = load i8, ptr %arrayidx72, align 1
  %add74 = add i8 %50, %48
  store i8 %add74, ptr %arrayidx72, align 1
  %51 = load ptr, ptr %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %51, i64 1
  store ptr %incdec.ptr, ptr %cp, align 8
  %52 = load i32, ptr %i, align 4
  %dec = add nsw i32 %52, -1
  br label %for.cond, !llvm.loop !9

sw.bb:                                            ; preds = %for.cond, %do.body67
  %53 = load ptr, ptr %cp, align 8
  %54 = load i8, ptr %53, align 1
  %55 = load i32, ptr %stride, align 4
  %idxprom77 = sext i32 %55 to i64
  %arrayidx78 = getelementptr inbounds i8, ptr %53, i64 %idxprom77
  %56 = load i8, ptr %arrayidx78, align 1
  %add80 = add i8 %56, %54
  store i8 %add80, ptr %arrayidx78, align 1
  %57 = load ptr, ptr %cp, align 8
  %incdec.ptr82 = getelementptr inbounds i8, ptr %57, i64 1
  store ptr %incdec.ptr82, ptr %cp, align 8
  br label %sw.bb83

sw.bb83:                                          ; preds = %sw.bb, %do.body67
  %58 = load ptr, ptr %cp, align 8
  %59 = load i8, ptr %58, align 1
  %60 = load i32, ptr %stride, align 4
  %idxprom85 = sext i32 %60 to i64
  %arrayidx86 = getelementptr inbounds i8, ptr %58, i64 %idxprom85
  %61 = load i8, ptr %arrayidx86, align 1
  %add88 = add i8 %61, %59
  store i8 %add88, ptr %arrayidx86, align 1
  %62 = load ptr, ptr %cp, align 8
  %incdec.ptr90 = getelementptr inbounds i8, ptr %62, i64 1
  store ptr %incdec.ptr90, ptr %cp, align 8
  br label %sw.bb91

sw.bb91:                                          ; preds = %sw.bb83, %do.body67
  %63 = load ptr, ptr %cp, align 8
  %64 = load i8, ptr %63, align 1
  %65 = load i32, ptr %stride, align 4
  %idxprom93 = sext i32 %65 to i64
  %arrayidx94 = getelementptr inbounds i8, ptr %63, i64 %idxprom93
  %66 = load i8, ptr %arrayidx94, align 1
  %add96 = add i8 %66, %64
  store i8 %add96, ptr %arrayidx94, align 1
  %67 = load ptr, ptr %cp, align 8
  %incdec.ptr98 = getelementptr inbounds i8, ptr %67, i64 1
  store ptr %incdec.ptr98, ptr %cp, align 8
  br label %sw.bb99

sw.bb99:                                          ; preds = %sw.bb91, %do.body67
  %68 = load ptr, ptr %cp, align 8
  %69 = load i8, ptr %68, align 1
  %70 = load i32, ptr %stride, align 4
  %idxprom101 = sext i32 %70 to i64
  %arrayidx102 = getelementptr inbounds i8, ptr %68, i64 %idxprom101
  %71 = load i8, ptr %arrayidx102, align 1
  %add104 = add i8 %71, %69
  store i8 %add104, ptr %arrayidx102, align 1
  %72 = load ptr, ptr %cp, align 8
  %incdec.ptr106 = getelementptr inbounds i8, ptr %72, i64 1
  store ptr %incdec.ptr106, ptr %cp, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body67, %sw.bb99
  %73 = load i32, ptr %stride, align 4
  %74 = load i32, ptr %cc.addr, align 4
  %sub108 = sub nsw i32 %74, %73
  store i32 %sub108, ptr %cc.addr, align 4
  %75 = load i32, ptr %cc.addr, align 4
  %cmp110 = icmp sgt i32 %75, 0
  br i1 %cmp110, label %do.body67, label %if.end114, !llvm.loop !10

if.end114:                                        ; preds = %do.body, %sw.epilog, %do.body39, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @horAcc16(ptr noundef %tif, ptr noundef %cp0, i32 noundef %cc) #0 {
entry:
  %cp0.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %stride = alloca i32, align 4
  %wp = alloca ptr, align 8
  %wc = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %cp0, ptr %cp0.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  %stride1 = getelementptr inbounds %struct.TIFFPredictorState, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %stride1, align 4
  store i32 %1, ptr %stride, align 4
  %2 = load ptr, ptr %cp0.addr, align 8
  store ptr %2, ptr %wp, align 8
  %3 = load i32, ptr %cc.addr, align 4
  %div = sdiv i32 %3, 2
  store i32 %div, ptr %wc, align 4
  %cmp = icmp sgt i32 %div, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %stride, align 4
  %5 = load i32, ptr %wc, align 4
  %sub = sub nsw i32 %5, %4
  store i32 %sub, ptr %wc, align 4
  br label %do.body

do.body:                                          ; preds = %sw.epilog, %if.then
  %6 = load i32, ptr %stride, align 4
  switch i32 %6, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb15
    i32 2, label %sw.bb24
    i32 1, label %sw.bb33
    i32 0, label %sw.epilog
  ]

sw.default:                                       ; preds = %do.body
  %7 = load i32, ptr %stride, align 4
  %sub2 = add nsw i32 %7, -4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %sw.default
  %storemerge = phi i32 [ %sub2, %sw.default ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp3 = icmp sgt i32 %storemerge, 0
  br i1 %cmp3, label %for.body, label %sw.bb

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %wp, align 8
  %9 = load i16, ptr %8, align 2
  %10 = load i32, ptr %stride, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds i16, ptr %8, i64 %idxprom
  %11 = load i16, ptr %arrayidx4, align 2
  %add = add i16 %11, %9
  store i16 %add, ptr %arrayidx4, align 2
  %12 = load ptr, ptr %wp, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %12, i64 1
  store ptr %incdec.ptr, ptr %wp, align 8
  %13 = load i32, ptr %i, align 4
  %dec = add nsw i32 %13, -1
  br label %for.cond, !llvm.loop !11

sw.bb:                                            ; preds = %for.cond, %do.body
  %14 = load ptr, ptr %wp, align 8
  %15 = load i16, ptr %14, align 2
  %16 = load i32, ptr %stride, align 4
  %idxprom9 = sext i32 %16 to i64
  %arrayidx10 = getelementptr inbounds i16, ptr %14, i64 %idxprom9
  %17 = load i16, ptr %arrayidx10, align 2
  %add12 = add i16 %17, %15
  store i16 %add12, ptr %arrayidx10, align 2
  %18 = load ptr, ptr %wp, align 8
  %incdec.ptr14 = getelementptr inbounds i16, ptr %18, i64 1
  store ptr %incdec.ptr14, ptr %wp, align 8
  br label %sw.bb15

sw.bb15:                                          ; preds = %sw.bb, %do.body
  %19 = load ptr, ptr %wp, align 8
  %20 = load i16, ptr %19, align 2
  %21 = load i32, ptr %stride, align 4
  %idxprom18 = sext i32 %21 to i64
  %arrayidx19 = getelementptr inbounds i16, ptr %19, i64 %idxprom18
  %22 = load i16, ptr %arrayidx19, align 2
  %add21 = add i16 %22, %20
  store i16 %add21, ptr %arrayidx19, align 2
  %23 = load ptr, ptr %wp, align 8
  %incdec.ptr23 = getelementptr inbounds i16, ptr %23, i64 1
  store ptr %incdec.ptr23, ptr %wp, align 8
  br label %sw.bb24

sw.bb24:                                          ; preds = %sw.bb15, %do.body
  %24 = load ptr, ptr %wp, align 8
  %25 = load i16, ptr %24, align 2
  %26 = load i32, ptr %stride, align 4
  %idxprom27 = sext i32 %26 to i64
  %arrayidx28 = getelementptr inbounds i16, ptr %24, i64 %idxprom27
  %27 = load i16, ptr %arrayidx28, align 2
  %add30 = add i16 %27, %25
  store i16 %add30, ptr %arrayidx28, align 2
  %28 = load ptr, ptr %wp, align 8
  %incdec.ptr32 = getelementptr inbounds i16, ptr %28, i64 1
  store ptr %incdec.ptr32, ptr %wp, align 8
  br label %sw.bb33

sw.bb33:                                          ; preds = %sw.bb24, %do.body
  %29 = load ptr, ptr %wp, align 8
  %30 = load i16, ptr %29, align 2
  %31 = load i32, ptr %stride, align 4
  %idxprom36 = sext i32 %31 to i64
  %arrayidx37 = getelementptr inbounds i16, ptr %29, i64 %idxprom36
  %32 = load i16, ptr %arrayidx37, align 2
  %add39 = add i16 %32, %30
  store i16 %add39, ptr %arrayidx37, align 2
  %33 = load ptr, ptr %wp, align 8
  %incdec.ptr41 = getelementptr inbounds i16, ptr %33, i64 1
  store ptr %incdec.ptr41, ptr %wp, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb33
  %34 = load i32, ptr %stride, align 4
  %35 = load i32, ptr %wc, align 4
  %sub43 = sub nsw i32 %35, %34
  store i32 %sub43, ptr %wc, align 4
  %36 = load i32, ptr %wc, align 4
  %cmp44 = icmp sgt i32 %36, 0
  br i1 %cmp44, label %do.body, label %if.end, !llvm.loop !12

if.end:                                           ; preds = %sw.epilog, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @PredictorDecodeRow(ptr noundef %tif, ptr noundef %op0, i32 noundef %occ0, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %op0.addr = alloca ptr, align 8
  %occ0.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %op0, ptr %op0.addr, align 8
  store i32 %occ0, ptr %occ0.addr, align 4
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
  %9 = load i32, ptr %occ0.addr, align 4
  %10 = load i16, ptr %s.addr, align 2
  %call = call i32 %6(ptr noundef %7, ptr noundef %8, i32 noundef %9, i16 noundef zeroext %10) #4
  %tobool20.not = icmp eq i32 %call, 0
  br i1 %tobool20.not, label %return, label %if.then

if.then:                                          ; preds = %cond.end18
  %11 = load ptr, ptr %sp, align 8
  %pfunc21 = getelementptr inbounds %struct.TIFFPredictorState, ptr %11, i64 0, i32 3
  %12 = load ptr, ptr %pfunc21, align 8
  %13 = load ptr, ptr %tif.addr, align 8
  %14 = load ptr, ptr %op0.addr, align 8
  %15 = load i32, ptr %occ0.addr, align 4
  call void %12(ptr noundef %13, ptr noundef %14, i32 noundef %15) #4
  br label %return

return:                                           ; preds = %cond.end18, %if.then
  %storemerge = phi i32 [ 1, %if.then ], [ 0, %cond.end18 ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @PredictorDecodeTile(ptr noundef %tif, ptr noundef %op0, i32 noundef %occ0, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %op0.addr = alloca ptr, align 8
  %occ0.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  %sp = alloca ptr, align 8
  %rowsize = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %op0, ptr %op0.addr, align 8
  store i32 %occ0, ptr %occ0.addr, align 4
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
  %7 = load i32, ptr %occ0.addr, align 4
  %8 = load i16, ptr %s.addr, align 2
  %call = call i32 %4(ptr noundef %5, ptr noundef %6, i32 noundef %7, i16 noundef zeroext %8) #4
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %return, label %if.then

if.then:                                          ; preds = %cond.end9
  %9 = load ptr, ptr %sp, align 8
  %rowsize12 = getelementptr inbounds %struct.TIFFPredictorState, ptr %9, i64 0, i32 2
  %10 = load i32, ptr %rowsize12, align 8
  store i32 %10, ptr %rowsize, align 4
  %cmp13 = icmp slt i32 %10, 1
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
  %13 = load i32, ptr %occ0.addr, align 4
  %cmp32 = icmp sgt i32 %13, 0
  br i1 %cmp32, label %while.body, label %return

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %sp, align 8
  %pfunc34 = getelementptr inbounds %struct.TIFFPredictorState, ptr %14, i64 0, i32 3
  %15 = load ptr, ptr %pfunc34, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %17 = load ptr, ptr %op0.addr, align 8
  %18 = load i32, ptr %rowsize, align 4
  call void %15(ptr noundef %16, ptr noundef %17, i32 noundef %18) #4
  %19 = load i32, ptr %occ0.addr, align 4
  %sub = sub nsw i32 %19, %18
  store i32 %sub, ptr %occ0.addr, align 4
  %idx.ext = sext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 %idx.ext
  store ptr %add.ptr, ptr %op0.addr, align 8
  br label %while.cond, !llvm.loop !13

return:                                           ; preds = %cond.end9, %while.cond
  %storemerge = phi i32 [ 1, %while.cond ], [ 0, %cond.end9 ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal void @swabHorAcc16(ptr noundef %tif, ptr noundef %cp0, i32 noundef %cc) #0 {
entry:
  %cp0.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %stride = alloca i32, align 4
  %wp = alloca ptr, align 8
  %wc = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %cp0, ptr %cp0.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  %stride1 = getelementptr inbounds %struct.TIFFPredictorState, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %stride1, align 4
  store i32 %1, ptr %stride, align 4
  %2 = load ptr, ptr %cp0.addr, align 8
  store ptr %2, ptr %wp, align 8
  %3 = load i32, ptr %cc.addr, align 4
  %div = sdiv i32 %3, 2
  store i32 %div, ptr %wc, align 4
  %cmp = icmp sgt i32 %div, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %wp, align 8
  %5 = load i32, ptr %wc, align 4
  %conv = sext i32 %5 to i64
  call void @TIFFSwabArrayOfShort(ptr noundef %4, i64 noundef %conv) #4
  %6 = load i32, ptr %stride, align 4
  %sub = sub nsw i32 %5, %6
  store i32 %sub, ptr %wc, align 4
  br label %do.body

do.body:                                          ; preds = %sw.epilog, %if.then
  %7 = load i32, ptr %stride, align 4
  switch i32 %7, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb17
    i32 2, label %sw.bb26
    i32 1, label %sw.bb35
    i32 0, label %sw.epilog
  ]

sw.default:                                       ; preds = %do.body
  %8 = load i32, ptr %stride, align 4
  %sub2 = add nsw i32 %8, -4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %sw.default
  %storemerge = phi i32 [ %sub2, %sw.default ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp3 = icmp sgt i32 %storemerge, 0
  br i1 %cmp3, label %for.body, label %sw.bb

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %wp, align 8
  %10 = load i16, ptr %9, align 2
  %11 = load i32, ptr %stride, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %9, i64 %idxprom
  %12 = load i16, ptr %arrayidx6, align 2
  %add = add i16 %12, %10
  store i16 %add, ptr %arrayidx6, align 2
  %13 = load ptr, ptr %wp, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %13, i64 1
  store ptr %incdec.ptr, ptr %wp, align 8
  %14 = load i32, ptr %i, align 4
  %dec = add nsw i32 %14, -1
  br label %for.cond, !llvm.loop !14

sw.bb:                                            ; preds = %for.cond, %do.body
  %15 = load ptr, ptr %wp, align 8
  %16 = load i16, ptr %15, align 2
  %17 = load i32, ptr %stride, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds i16, ptr %15, i64 %idxprom11
  %18 = load i16, ptr %arrayidx12, align 2
  %add14 = add i16 %18, %16
  store i16 %add14, ptr %arrayidx12, align 2
  %19 = load ptr, ptr %wp, align 8
  %incdec.ptr16 = getelementptr inbounds i16, ptr %19, i64 1
  store ptr %incdec.ptr16, ptr %wp, align 8
  br label %sw.bb17

sw.bb17:                                          ; preds = %sw.bb, %do.body
  %20 = load ptr, ptr %wp, align 8
  %21 = load i16, ptr %20, align 2
  %22 = load i32, ptr %stride, align 4
  %idxprom20 = sext i32 %22 to i64
  %arrayidx21 = getelementptr inbounds i16, ptr %20, i64 %idxprom20
  %23 = load i16, ptr %arrayidx21, align 2
  %add23 = add i16 %23, %21
  store i16 %add23, ptr %arrayidx21, align 2
  %24 = load ptr, ptr %wp, align 8
  %incdec.ptr25 = getelementptr inbounds i16, ptr %24, i64 1
  store ptr %incdec.ptr25, ptr %wp, align 8
  br label %sw.bb26

sw.bb26:                                          ; preds = %sw.bb17, %do.body
  %25 = load ptr, ptr %wp, align 8
  %26 = load i16, ptr %25, align 2
  %27 = load i32, ptr %stride, align 4
  %idxprom29 = sext i32 %27 to i64
  %arrayidx30 = getelementptr inbounds i16, ptr %25, i64 %idxprom29
  %28 = load i16, ptr %arrayidx30, align 2
  %add32 = add i16 %28, %26
  store i16 %add32, ptr %arrayidx30, align 2
  %29 = load ptr, ptr %wp, align 8
  %incdec.ptr34 = getelementptr inbounds i16, ptr %29, i64 1
  store ptr %incdec.ptr34, ptr %wp, align 8
  br label %sw.bb35

sw.bb35:                                          ; preds = %sw.bb26, %do.body
  %30 = load ptr, ptr %wp, align 8
  %31 = load i16, ptr %30, align 2
  %32 = load i32, ptr %stride, align 4
  %idxprom38 = sext i32 %32 to i64
  %arrayidx39 = getelementptr inbounds i16, ptr %30, i64 %idxprom38
  %33 = load i16, ptr %arrayidx39, align 2
  %add41 = add i16 %33, %31
  store i16 %add41, ptr %arrayidx39, align 2
  %34 = load ptr, ptr %wp, align 8
  %incdec.ptr43 = getelementptr inbounds i16, ptr %34, i64 1
  store ptr %incdec.ptr43, ptr %wp, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb35
  %35 = load i32, ptr %stride, align 4
  %36 = load i32, ptr %wc, align 4
  %sub45 = sub nsw i32 %36, %35
  store i32 %sub45, ptr %wc, align 4
  %37 = load i32, ptr %wc, align 4
  %cmp46 = icmp sgt i32 %37, 0
  br i1 %cmp46, label %do.body, label %if.end, !llvm.loop !15

if.end:                                           ; preds = %sw.epilog, %entry
  ret void
}

declare void @_TIFFNoPostDecode(ptr noundef, ptr noundef, i32 noundef) #1

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

declare i32 @TIFFTileRowSize(ptr noundef) #1

declare i32 @TIFFScanlineSize(ptr noundef) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare void @TIFFSwabArrayOfShort(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @horDiff8(ptr noundef %tif, ptr noundef %cp0, i32 noundef %cc) #0 {
entry:
  %cp0.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %stride = alloca i32, align 4
  %cp = alloca ptr, align 8
  %r1 = alloca i32, align 4
  %g1 = alloca i32, align 4
  %b1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %g2 = alloca i32, align 4
  %b2 = alloca i32, align 4
  %r129 = alloca i32, align 4
  %g130 = alloca i32, align 4
  %b131 = alloca i32, align 4
  %a1 = alloca i32, align 4
  %r232 = alloca i32, align 4
  %g235 = alloca i32, align 4
  %b238 = alloca i32, align 4
  %a2 = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %cp0, ptr %cp0.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  %stride1 = getelementptr inbounds %struct.TIFFPredictorState, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %stride1, align 4
  store i32 %1, ptr %stride, align 4
  %2 = load ptr, ptr %cp0.addr, align 8
  store ptr %2, ptr %cp, align 8
  %3 = load i32, ptr %cc.addr, align 4
  %cmp = icmp sgt i32 %3, %1
  br i1 %cmp, label %if.then, label %if.end125

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %stride, align 4
  %5 = load i32, ptr %cc.addr, align 4
  %sub = sub nsw i32 %5, %4
  store i32 %sub, ptr %cc.addr, align 4
  %cmp2 = icmp eq i32 %4, 3
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %6 = load ptr, ptr %cp, align 8
  %7 = load i8, ptr %6, align 1
  %conv = sext i8 %7 to i32
  store i32 %conv, ptr %r2, align 4
  %arrayidx4 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = load i8, ptr %arrayidx4, align 1
  %conv5 = sext i8 %8 to i32
  store i32 %conv5, ptr %g2, align 4
  %9 = load ptr, ptr %cp, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %9, i64 2
  %10 = load i8, ptr %arrayidx6, align 1
  %conv7 = sext i8 %10 to i32
  store i32 %conv7, ptr %b2, align 4
  br label %do.body

do.body:                                          ; preds = %do.body, %if.then3
  %11 = load ptr, ptr %cp, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %11, i64 3
  %12 = load i8, ptr %arrayidx8, align 1
  %conv9 = sext i8 %12 to i32
  store i32 %conv9, ptr %r1, align 4
  %13 = load i32, ptr %r2, align 4
  %14 = trunc i32 %13 to i8
  %conv11 = sub i8 %12, %14
  %15 = load ptr, ptr %cp, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %15, i64 3
  store i8 %conv11, ptr %arrayidx12, align 1
  %16 = load i32, ptr %r1, align 4
  store i32 %16, ptr %r2, align 4
  %arrayidx13 = getelementptr inbounds i8, ptr %15, i64 4
  %17 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %17 to i32
  store i32 %conv14, ptr %g1, align 4
  %18 = load i32, ptr %g2, align 4
  %19 = trunc i32 %18 to i8
  %conv16 = sub i8 %17, %19
  %20 = load ptr, ptr %cp, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %20, i64 4
  store i8 %conv16, ptr %arrayidx17, align 1
  %21 = load i32, ptr %g1, align 4
  store i32 %21, ptr %g2, align 4
  %arrayidx18 = getelementptr inbounds i8, ptr %20, i64 5
  %22 = load i8, ptr %arrayidx18, align 1
  %conv19 = sext i8 %22 to i32
  store i32 %conv19, ptr %b1, align 4
  %23 = load i32, ptr %b2, align 4
  %24 = trunc i32 %23 to i8
  %conv21 = sub i8 %22, %24
  %25 = load ptr, ptr %cp, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %25, i64 5
  store i8 %conv21, ptr %arrayidx22, align 1
  %26 = load i32, ptr %b1, align 4
  store i32 %26, ptr %b2, align 4
  %add.ptr = getelementptr inbounds i8, ptr %25, i64 3
  store ptr %add.ptr, ptr %cp, align 8
  %27 = load i32, ptr %cc.addr, align 4
  %sub23 = add nsw i32 %27, -3
  store i32 %sub23, ptr %cc.addr, align 4
  %cmp24 = icmp sgt i32 %27, 3
  br i1 %cmp24, label %do.body, label %if.end125, !llvm.loop !16

if.else:                                          ; preds = %if.then
  %28 = load i32, ptr %stride, align 4
  %cmp26 = icmp eq i32 %28, 4
  br i1 %cmp26, label %if.then28, label %if.else70

if.then28:                                        ; preds = %if.else
  %29 = load ptr, ptr %cp, align 8
  %30 = load i8, ptr %29, align 1
  %conv34 = sext i8 %30 to i32
  store i32 %conv34, ptr %r232, align 4
  %arrayidx36 = getelementptr inbounds i8, ptr %29, i64 1
  %31 = load i8, ptr %arrayidx36, align 1
  %conv37 = sext i8 %31 to i32
  store i32 %conv37, ptr %g235, align 4
  %32 = load ptr, ptr %cp, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %32, i64 2
  %33 = load i8, ptr %arrayidx39, align 1
  %conv40 = sext i8 %33 to i32
  store i32 %conv40, ptr %b238, align 4
  %arrayidx41 = getelementptr inbounds i8, ptr %32, i64 3
  %34 = load i8, ptr %arrayidx41, align 1
  %conv42 = sext i8 %34 to i32
  store i32 %conv42, ptr %a2, align 4
  br label %do.body43

do.body43:                                        ; preds = %do.body43, %if.then28
  %35 = load ptr, ptr %cp, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %35, i64 4
  %36 = load i8, ptr %arrayidx44, align 1
  %conv45 = sext i8 %36 to i32
  store i32 %conv45, ptr %r129, align 4
  %37 = load i32, ptr %r232, align 4
  %38 = trunc i32 %37 to i8
  %conv47 = sub i8 %36, %38
  %39 = load ptr, ptr %cp, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %39, i64 4
  store i8 %conv47, ptr %arrayidx48, align 1
  %40 = load i32, ptr %r129, align 4
  store i32 %40, ptr %r232, align 4
  %arrayidx49 = getelementptr inbounds i8, ptr %39, i64 5
  %41 = load i8, ptr %arrayidx49, align 1
  %conv50 = sext i8 %41 to i32
  store i32 %conv50, ptr %g130, align 4
  %42 = load i32, ptr %g235, align 4
  %43 = trunc i32 %42 to i8
  %conv52 = sub i8 %41, %43
  %44 = load ptr, ptr %cp, align 8
  %arrayidx53 = getelementptr inbounds i8, ptr %44, i64 5
  store i8 %conv52, ptr %arrayidx53, align 1
  %45 = load i32, ptr %g130, align 4
  store i32 %45, ptr %g235, align 4
  %arrayidx54 = getelementptr inbounds i8, ptr %44, i64 6
  %46 = load i8, ptr %arrayidx54, align 1
  %conv55 = sext i8 %46 to i32
  store i32 %conv55, ptr %b131, align 4
  %47 = load i32, ptr %b238, align 4
  %48 = trunc i32 %47 to i8
  %conv57 = sub i8 %46, %48
  %49 = load ptr, ptr %cp, align 8
  %arrayidx58 = getelementptr inbounds i8, ptr %49, i64 6
  store i8 %conv57, ptr %arrayidx58, align 1
  %50 = load i32, ptr %b131, align 4
  store i32 %50, ptr %b238, align 4
  %arrayidx59 = getelementptr inbounds i8, ptr %49, i64 7
  %51 = load i8, ptr %arrayidx59, align 1
  %conv60 = sext i8 %51 to i32
  store i32 %conv60, ptr %a1, align 4
  %52 = load i32, ptr %a2, align 4
  %53 = trunc i32 %52 to i8
  %conv62 = sub i8 %51, %53
  %54 = load ptr, ptr %cp, align 8
  %arrayidx63 = getelementptr inbounds i8, ptr %54, i64 7
  store i8 %conv62, ptr %arrayidx63, align 1
  %55 = load i32, ptr %a1, align 4
  store i32 %55, ptr %a2, align 4
  %add.ptr64 = getelementptr inbounds i8, ptr %54, i64 4
  store ptr %add.ptr64, ptr %cp, align 8
  %56 = load i32, ptr %cc.addr, align 4
  %sub66 = add nsw i32 %56, -4
  store i32 %sub66, ptr %cc.addr, align 4
  %cmp67 = icmp sgt i32 %56, 4
  br i1 %cmp67, label %do.body43, label %if.end125, !llvm.loop !17

if.else70:                                        ; preds = %if.else
  %57 = load i32, ptr %cc.addr, align 4
  %sub71 = add nsw i32 %57, -1
  %58 = load ptr, ptr %cp, align 8
  %idx.ext = sext i32 %sub71 to i64
  %add.ptr72 = getelementptr inbounds i8, ptr %58, i64 %idx.ext
  store ptr %add.ptr72, ptr %cp, align 8
  br label %do.body73

do.body73:                                        ; preds = %do.cond119, %if.else70
  %59 = load i32, ptr %stride, align 4
  switch i32 %59, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb91
    i32 2, label %sw.bb100
    i32 1, label %sw.bb109
    i32 0, label %do.cond119
  ]

sw.default:                                       ; preds = %do.body73
  %60 = load i32, ptr %stride, align 4
  %sub74 = add nsw i32 %60, -4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %sw.default
  %storemerge = phi i32 [ %sub74, %sw.default ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp75 = icmp sgt i32 %storemerge, 0
  br i1 %cmp75, label %for.body, label %sw.bb

for.body:                                         ; preds = %for.cond
  %61 = load ptr, ptr %cp, align 8
  %62 = load i8, ptr %61, align 1
  %63 = load i32, ptr %stride, align 4
  %idxprom = sext i32 %63 to i64
  %arrayidx79 = getelementptr inbounds i8, ptr %61, i64 %idxprom
  %64 = load i8, ptr %arrayidx79, align 1
  %sub81 = sub i8 %64, %62
  store i8 %sub81, ptr %arrayidx79, align 1
  %65 = load ptr, ptr %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %65, i64 -1
  store ptr %incdec.ptr, ptr %cp, align 8
  %66 = load i32, ptr %i, align 4
  %dec = add nsw i32 %66, -1
  br label %for.cond, !llvm.loop !18

sw.bb:                                            ; preds = %for.cond, %do.body73
  %67 = load ptr, ptr %cp, align 8
  %68 = load i8, ptr %67, align 1
  %69 = load i32, ptr %stride, align 4
  %idxprom85 = sext i32 %69 to i64
  %arrayidx86 = getelementptr inbounds i8, ptr %67, i64 %idxprom85
  %70 = load i8, ptr %arrayidx86, align 1
  %sub88 = sub i8 %70, %68
  store i8 %sub88, ptr %arrayidx86, align 1
  %71 = load ptr, ptr %cp, align 8
  %incdec.ptr90 = getelementptr inbounds i8, ptr %71, i64 -1
  store ptr %incdec.ptr90, ptr %cp, align 8
  br label %sw.bb91

sw.bb91:                                          ; preds = %sw.bb, %do.body73
  %72 = load ptr, ptr %cp, align 8
  %73 = load i8, ptr %72, align 1
  %74 = load i32, ptr %stride, align 4
  %idxprom94 = sext i32 %74 to i64
  %arrayidx95 = getelementptr inbounds i8, ptr %72, i64 %idxprom94
  %75 = load i8, ptr %arrayidx95, align 1
  %sub97 = sub i8 %75, %73
  store i8 %sub97, ptr %arrayidx95, align 1
  %76 = load ptr, ptr %cp, align 8
  %incdec.ptr99 = getelementptr inbounds i8, ptr %76, i64 -1
  store ptr %incdec.ptr99, ptr %cp, align 8
  br label %sw.bb100

sw.bb100:                                         ; preds = %sw.bb91, %do.body73
  %77 = load ptr, ptr %cp, align 8
  %78 = load i8, ptr %77, align 1
  %79 = load i32, ptr %stride, align 4
  %idxprom103 = sext i32 %79 to i64
  %arrayidx104 = getelementptr inbounds i8, ptr %77, i64 %idxprom103
  %80 = load i8, ptr %arrayidx104, align 1
  %sub106 = sub i8 %80, %78
  store i8 %sub106, ptr %arrayidx104, align 1
  %81 = load ptr, ptr %cp, align 8
  %incdec.ptr108 = getelementptr inbounds i8, ptr %81, i64 -1
  store ptr %incdec.ptr108, ptr %cp, align 8
  br label %sw.bb109

sw.bb109:                                         ; preds = %sw.bb100, %do.body73
  %82 = load ptr, ptr %cp, align 8
  %83 = load i8, ptr %82, align 1
  %84 = load i32, ptr %stride, align 4
  %idxprom112 = sext i32 %84 to i64
  %arrayidx113 = getelementptr inbounds i8, ptr %82, i64 %idxprom112
  %85 = load i8, ptr %arrayidx113, align 1
  %sub115 = sub i8 %85, %83
  store i8 %sub115, ptr %arrayidx113, align 1
  %86 = load ptr, ptr %cp, align 8
  %incdec.ptr117 = getelementptr inbounds i8, ptr %86, i64 -1
  store ptr %incdec.ptr117, ptr %cp, align 8
  br label %do.cond119

do.cond119:                                       ; preds = %sw.bb109, %do.body73
  %87 = load i32, ptr %stride, align 4
  %88 = load i32, ptr %cc.addr, align 4
  %sub120 = sub nsw i32 %88, %87
  store i32 %sub120, ptr %cc.addr, align 4
  %cmp121 = icmp sgt i32 %sub120, 0
  br i1 %cmp121, label %do.body73, label %if.end125, !llvm.loop !19

if.end125:                                        ; preds = %do.body, %do.cond119, %do.body43, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @horDiff16(ptr noundef %tif, ptr noundef %cp0, i32 noundef %cc) #0 {
entry:
  %cp0.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %stride = alloca i32, align 4
  %wp = alloca ptr, align 8
  %wc = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %cp0, ptr %cp0.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  %stride1 = getelementptr inbounds %struct.TIFFPredictorState, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %stride1, align 4
  store i32 %1, ptr %stride, align 4
  %2 = load ptr, ptr %cp0.addr, align 8
  store ptr %2, ptr %wp, align 8
  %3 = load i32, ptr %cc.addr, align 4
  %div = sdiv i32 %3, 2
  store i32 %div, ptr %wc, align 4
  %cmp = icmp sgt i32 %div, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %stride, align 4
  %5 = load i32, ptr %wc, align 4
  %sub = sub nsw i32 %5, %4
  store i32 %sub, ptr %wc, align 4
  %sub2 = add nsw i32 %sub, -1
  %6 = load ptr, ptr %wp, align 8
  %idx.ext = sext i32 %sub2 to i64
  %add.ptr = getelementptr inbounds i16, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %wp, align 8
  br label %do.body

do.body:                                          ; preds = %sw.epilog, %if.then
  %7 = load i32, ptr %stride, align 4
  switch i32 %7, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb17
    i32 2, label %sw.bb26
    i32 1, label %sw.bb35
    i32 0, label %sw.epilog
  ]

sw.default:                                       ; preds = %do.body
  %8 = load i32, ptr %stride, align 4
  %sub3 = add nsw i32 %8, -4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %sw.default
  %storemerge = phi i32 [ %sub3, %sw.default ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp4 = icmp sgt i32 %storemerge, 0
  br i1 %cmp4, label %for.body, label %sw.bb

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %wp, align 8
  %10 = load i16, ptr %9, align 2
  %11 = load i32, ptr %stride, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds i16, ptr %9, i64 %idxprom
  %12 = load i16, ptr %arrayidx5, align 2
  %sub7 = sub i16 %12, %10
  store i16 %sub7, ptr %arrayidx5, align 2
  %13 = load ptr, ptr %wp, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %13, i64 -1
  store ptr %incdec.ptr, ptr %wp, align 8
  %14 = load i32, ptr %i, align 4
  %dec = add nsw i32 %14, -1
  br label %for.cond, !llvm.loop !20

sw.bb:                                            ; preds = %for.cond, %do.body
  %15 = load ptr, ptr %wp, align 8
  %16 = load i16, ptr %15, align 2
  %17 = load i32, ptr %stride, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds i16, ptr %15, i64 %idxprom11
  %18 = load i16, ptr %arrayidx12, align 2
  %sub14 = sub i16 %18, %16
  store i16 %sub14, ptr %arrayidx12, align 2
  %19 = load ptr, ptr %wp, align 8
  %incdec.ptr16 = getelementptr inbounds i16, ptr %19, i64 -1
  store ptr %incdec.ptr16, ptr %wp, align 8
  br label %sw.bb17

sw.bb17:                                          ; preds = %sw.bb, %do.body
  %20 = load ptr, ptr %wp, align 8
  %21 = load i16, ptr %20, align 2
  %22 = load i32, ptr %stride, align 4
  %idxprom20 = sext i32 %22 to i64
  %arrayidx21 = getelementptr inbounds i16, ptr %20, i64 %idxprom20
  %23 = load i16, ptr %arrayidx21, align 2
  %sub23 = sub i16 %23, %21
  store i16 %sub23, ptr %arrayidx21, align 2
  %24 = load ptr, ptr %wp, align 8
  %incdec.ptr25 = getelementptr inbounds i16, ptr %24, i64 -1
  store ptr %incdec.ptr25, ptr %wp, align 8
  br label %sw.bb26

sw.bb26:                                          ; preds = %sw.bb17, %do.body
  %25 = load ptr, ptr %wp, align 8
  %26 = load i16, ptr %25, align 2
  %27 = load i32, ptr %stride, align 4
  %idxprom29 = sext i32 %27 to i64
  %arrayidx30 = getelementptr inbounds i16, ptr %25, i64 %idxprom29
  %28 = load i16, ptr %arrayidx30, align 2
  %sub32 = sub i16 %28, %26
  store i16 %sub32, ptr %arrayidx30, align 2
  %29 = load ptr, ptr %wp, align 8
  %incdec.ptr34 = getelementptr inbounds i16, ptr %29, i64 -1
  store ptr %incdec.ptr34, ptr %wp, align 8
  br label %sw.bb35

sw.bb35:                                          ; preds = %sw.bb26, %do.body
  %30 = load ptr, ptr %wp, align 8
  %31 = load i16, ptr %30, align 2
  %32 = load i32, ptr %stride, align 4
  %idxprom38 = sext i32 %32 to i64
  %arrayidx39 = getelementptr inbounds i16, ptr %30, i64 %idxprom38
  %33 = load i16, ptr %arrayidx39, align 2
  %sub41 = sub i16 %33, %31
  store i16 %sub41, ptr %arrayidx39, align 2
  %34 = load ptr, ptr %wp, align 8
  %incdec.ptr43 = getelementptr inbounds i16, ptr %34, i64 -1
  store ptr %incdec.ptr43, ptr %wp, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb35
  %35 = load i32, ptr %stride, align 4
  %36 = load i32, ptr %wc, align 4
  %sub45 = sub nsw i32 %36, %35
  store i32 %sub45, ptr %wc, align 4
  %37 = load i32, ptr %wc, align 4
  %cmp46 = icmp sgt i32 %37, 0
  br i1 %cmp46, label %do.body, label %if.end, !llvm.loop !21

if.end:                                           ; preds = %sw.epilog, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @PredictorEncodeRow(ptr noundef %tif, ptr noundef %bp, i32 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  %sp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
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
  %9 = load i32, ptr %cc.addr, align 4
  call void %6(ptr noundef %7, ptr noundef %8, i32 noundef %9) #4
  %10 = load ptr, ptr %sp, align 8
  %coderow20 = getelementptr inbounds %struct.TIFFPredictorState, ptr %10, i64 0, i32 4
  %11 = load ptr, ptr %coderow20, align 8
  %12 = load ptr, ptr %tif.addr, align 8
  %13 = load ptr, ptr %bp.addr, align 8
  %14 = load i32, ptr %cc.addr, align 4
  %15 = load i16, ptr %s.addr, align 2
  %call = call i32 %11(ptr noundef %12, ptr noundef %13, i32 noundef %14, i16 noundef zeroext %15) #4
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @PredictorEncodeTile(ptr noundef %tif, ptr noundef %bp0, i32 noundef %cc0, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %bp0.addr = alloca ptr, align 8
  %cc0.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  %sp = alloca ptr, align 8
  %cc = alloca i32, align 4
  %rowsize = alloca i32, align 4
  %bp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp0, ptr %bp0.addr, align 8
  store i32 %cc0, ptr %cc0.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %tif_data = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 37
  %0 = load ptr, ptr %tif_data, align 8
  store ptr %0, ptr %sp, align 8
  store i32 %cc0, ptr %cc, align 4
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
  %7 = load i32, ptr %rowsize19, align 8
  store i32 %7, ptr %rowsize, align 4
  %cmp20 = icmp slt i32 %7, 1
  br i1 %cmp20, label %cond.true26, label %while.cond

cond.true26:                                      ; preds = %cond.end18
  call void @__assert_rtn(ptr noundef nonnull @__func__.PredictorEncodeTile, ptr noundef nonnull @.str.7, i32 noundef 369, ptr noundef nonnull @.str.12) #5
  unreachable

while.cond:                                       ; preds = %cond.end18, %while.body
  %8 = load i32, ptr %cc, align 4
  %cmp30 = icmp sgt i32 %8, 0
  br i1 %cmp30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %sp, align 8
  %pfunc32 = getelementptr inbounds %struct.TIFFPredictorState, ptr %9, i64 0, i32 3
  %10 = load ptr, ptr %pfunc32, align 8
  %11 = load ptr, ptr %tif.addr, align 8
  %12 = load ptr, ptr %bp, align 8
  %13 = load i32, ptr %rowsize, align 4
  call void %10(ptr noundef %11, ptr noundef %12, i32 noundef %13) #4
  %14 = load i32, ptr %cc, align 4
  %sub = sub nsw i32 %14, %13
  store i32 %sub, ptr %cc, align 4
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 %idx.ext
  store ptr %add.ptr, ptr %bp, align 8
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %while.cond
  %15 = load ptr, ptr %sp, align 8
  %codetile33 = getelementptr inbounds %struct.TIFFPredictorState, ptr %15, i64 0, i32 6
  %16 = load ptr, ptr %codetile33, align 8
  %17 = load ptr, ptr %tif.addr, align 8
  %18 = load ptr, ptr %bp0.addr, align 8
  %19 = load i32, ptr %cc0.addr, align 4
  %20 = load i16, ptr %s.addr, align 2
  %call = call i32 %16(ptr noundef %17, ptr noundef %18, i32 noundef %19, i16 noundef zeroext %20) #4
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
