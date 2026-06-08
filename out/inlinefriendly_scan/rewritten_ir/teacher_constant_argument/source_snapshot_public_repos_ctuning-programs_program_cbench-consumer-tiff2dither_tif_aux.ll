; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_constant_argument/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-tiff2dither_tif_aux.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2dither/tif_aux.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFVGetFieldDefaulted(ptr noundef %tif, i32 noundef %tag, ptr noundef %ap) #0 {
entry:
  %retval = alloca i32, align 4
  %tag.addr = alloca i32, align 4
  %ap.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  store i32 %tag, ptr %tag.addr, align 4
  store ptr %ap, ptr %ap.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %call = call i32 @TIFFVGetField(ptr noundef %tif, i32 noundef %tag, ptr noundef %ap) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %tag.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 254, label %sw.bb
    i32 258, label %sw.bb1
    i32 263, label %sw.bb3
    i32 266, label %sw.bb5
    i32 274, label %sw.bb7
    i32 277, label %sw.bb9
    i32 278, label %sw.bb11
    i32 280, label %sw.bb13
    i32 281, label %sw.bb15
    i32 284, label %sw.bb17
    i32 296, label %sw.bb19
    i32 336, label %sw.bb21
    i32 332, label %sw.bb26
    i32 334, label %sw.bb28
    i32 338, label %sw.bb30
    i32 32995, label %sw.bb33
    i32 32998, label %sw.bb43
    i32 32996, label %sw.bb45
    i32 32997, label %sw.bb50
    i32 529, label %sw.bb52
    i32 530, label %sw.bb66
    i32 531, label %sw.bb72
    i32 301, label %sw.bb74
    i32 532, label %sw.bb97
  ]

sw.bb:                                            ; preds = %if.end
  %1 = load ptr, ptr %td, align 8
  %td_subfiletype = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i64 0, i32 7
  %2 = load i32, ptr %td_subfiletype, align 8
  %3 = va_arg ptr %ap.addr, ptr
  store i32 %2, ptr %3, align 4
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %if.end
  %4 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %4, i64 0, i32 8
  %5 = load i16, ptr %td_bitspersample, align 4
  %6 = va_arg ptr %ap.addr, ptr
  store i16 %5, ptr %6, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %if.end
  %7 = load ptr, ptr %td, align 8
  %td_threshholding = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i64 0, i32 12
  %8 = load i16, ptr %td_threshholding, align 4
  %9 = va_arg ptr %ap.addr, ptr
  store i16 %8, ptr %9, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %if.end
  %10 = load ptr, ptr %td, align 8
  %td_fillorder = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i64 0, i32 13
  %11 = load i16, ptr %td_fillorder, align 2
  %12 = va_arg ptr %ap.addr, ptr
  store i16 %11, ptr %12, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb7:                                           ; preds = %if.end
  %13 = load ptr, ptr %td, align 8
  %td_orientation = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i64 0, i32 14
  %14 = load i16, ptr %td_orientation, align 8
  %15 = va_arg ptr %ap.addr, ptr
  store i16 %14, ptr %15, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb9:                                           ; preds = %if.end
  %16 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %16, i64 0, i32 15
  %17 = load i16, ptr %td_samplesperpixel, align 2
  %18 = va_arg ptr %ap.addr, ptr
  store i16 %17, ptr %18, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb11:                                          ; preds = %if.end
  %19 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %19, i64 0, i32 16
  %20 = load i32, ptr %td_rowsperstrip, align 4
  %21 = va_arg ptr %ap.addr, ptr
  store i32 %20, ptr %21, align 4
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb13:                                          ; preds = %if.end
  %22 = load ptr, ptr %td, align 8
  %td_minsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i64 0, i32 17
  %23 = load i16, ptr %td_minsamplevalue, align 8
  %24 = va_arg ptr %ap.addr, ptr
  store i16 %23, ptr %24, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb15:                                          ; preds = %if.end
  %25 = load ptr, ptr %td, align 8
  %td_maxsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i64 0, i32 18
  %26 = load i16, ptr %td_maxsamplevalue, align 2
  %27 = va_arg ptr %ap.addr, ptr
  store i16 %26, ptr %27, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb17:                                          ; preds = %if.end
  %28 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %28, i64 0, i32 24
  %29 = load i16, ptr %td_planarconfig, align 2
  %30 = va_arg ptr %ap.addr, ptr
  store i16 %29, ptr %30, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb19:                                          ; preds = %if.end
  %31 = load ptr, ptr %td, align 8
  %td_resolutionunit = getelementptr inbounds %struct.TIFFDirectory, ptr %31, i64 0, i32 23
  %32 = load i16, ptr %td_resolutionunit, align 8
  %33 = va_arg ptr %ap.addr, ptr
  store i16 %32, ptr %33, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb21:                                          ; preds = %if.end
  %34 = va_arg ptr %ap.addr, ptr
  store i16 0, ptr %34, align 2
  %35 = load ptr, ptr %td, align 8
  %td_bitspersample23 = getelementptr inbounds %struct.TIFFDirectory, ptr %35, i64 0, i32 8
  %36 = load i16, ptr %td_bitspersample23, align 4
  %conv = zext i16 %36 to i32
  %notmask = shl nsw i32 -1, %conv
  %37 = trunc i32 %notmask to i16
  %conv24 = xor i16 %37, -1
  %38 = va_arg ptr %ap.addr, ptr
  store i16 %conv24, ptr %38, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb26:                                          ; preds = %if.end
  %39 = load ptr, ptr %td, align 8
  %td_inkset = getelementptr inbounds %struct.TIFFDirectory, ptr %39, i64 0, i32 55
  %40 = load i16, ptr %td_inkset, align 8
  %41 = va_arg ptr %ap.addr, ptr
  store i16 %40, ptr %41, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb28:                                          ; preds = %if.end
  %42 = load ptr, ptr %td, align 8
  %td_ninks = getelementptr inbounds %struct.TIFFDirectory, ptr %42, i64 0, i32 56
  %43 = load i16, ptr %td_ninks, align 2
  %44 = va_arg ptr %ap.addr, ptr
  store i16 %43, ptr %44, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb30:                                          ; preds = %if.end
  %45 = load ptr, ptr %td, align 8
  %td_extrasamples = getelementptr inbounds %struct.TIFFDirectory, ptr %45, i64 0, i32 30
  %46 = load i16, ptr %td_extrasamples, align 4
  %47 = va_arg ptr %ap.addr, ptr
  store i16 %46, ptr %47, align 2
  %48 = load ptr, ptr %td, align 8
  %td_sampleinfo = getelementptr inbounds %struct.TIFFDirectory, ptr %48, i64 0, i32 31
  %49 = load ptr, ptr %td_sampleinfo, align 8
  %50 = va_arg ptr %ap.addr, ptr
  store ptr %49, ptr %50, align 8
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb33:                                          ; preds = %if.end
  %51 = load ptr, ptr %td, align 8
  %td_extrasamples34 = getelementptr inbounds %struct.TIFFDirectory, ptr %51, i64 0, i32 30
  %52 = load i16, ptr %td_extrasamples34, align 4
  %cmp = icmp eq i16 %52, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb33
  %53 = load ptr, ptr %td, align 8
  %td_sampleinfo37 = getelementptr inbounds %struct.TIFFDirectory, ptr %53, i64 0, i32 31
  %54 = load ptr, ptr %td_sampleinfo37, align 8
  %55 = load i16, ptr %54, align 2
  %cmp39 = icmp eq i16 %55, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb33
  %56 = phi i1 [ false, %sw.bb33 ], [ %cmp39, %land.rhs ]
  %conv41 = zext i1 %56 to i16
  %57 = va_arg ptr %ap.addr, ptr
  store i16 %conv41, ptr %57, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb43:                                          ; preds = %if.end
  %58 = load ptr, ptr %td, align 8
  %td_tiledepth = getelementptr inbounds %struct.TIFFDirectory, ptr %58, i64 0, i32 6
  %59 = load i32, ptr %td_tiledepth, align 4
  %60 = va_arg ptr %ap.addr, ptr
  store i32 %59, ptr %60, align 4
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb45:                                          ; preds = %if.end
  %61 = load ptr, ptr %td, align 8
  %td_sampleformat = getelementptr inbounds %struct.TIFFDirectory, ptr %61, i64 0, i32 9
  %62 = load i16, ptr %td_sampleformat, align 2
  %sub47 = add i16 %62, -1
  %63 = va_arg ptr %ap.addr, ptr
  store i16 %sub47, ptr %63, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb50:                                          ; preds = %if.end
  %64 = load ptr, ptr %td, align 8
  %td_imagedepth = getelementptr inbounds %struct.TIFFDirectory, ptr %64, i64 0, i32 3
  %65 = load i32, ptr %td_imagedepth, align 8
  %66 = va_arg ptr %ap.addr, ptr
  store i32 %65, ptr %66, align 4
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb52:                                          ; preds = %if.end
  %67 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs = getelementptr inbounds %struct.TIFFDirectory, ptr %67, i64 0, i32 48
  %68 = load ptr, ptr %td_ycbcrcoeffs, align 8
  %tobool53.not = icmp eq ptr %68, null
  br i1 %tobool53.not, label %if.then54, label %if.end63

if.then54:                                        ; preds = %sw.bb52
  %call55 = call ptr @_TIFFmalloc(i32 noundef 12) #4
  %69 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs56 = getelementptr inbounds %struct.TIFFDirectory, ptr %69, i64 0, i32 48
  store ptr %call55, ptr %td_ycbcrcoeffs56, align 8
  store float 0x3FD322D0E0000000, ptr %call55, align 4
  %td_ycbcrcoeffs59 = getelementptr inbounds %struct.TIFFDirectory, ptr %69, i64 0, i32 48
  %70 = load ptr, ptr %td_ycbcrcoeffs59, align 8
  %arrayidx60 = getelementptr inbounds float, ptr %70, i64 1
  store float 0x3FE2C8B440000000, ptr %arrayidx60, align 4
  %71 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs61 = getelementptr inbounds %struct.TIFFDirectory, ptr %71, i64 0, i32 48
  %72 = load ptr, ptr %td_ycbcrcoeffs61, align 8
  %arrayidx62 = getelementptr inbounds float, ptr %72, i64 2
  store float 0x3FBD2F1AA0000000, ptr %arrayidx62, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then54, %sw.bb52
  %73 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs64 = getelementptr inbounds %struct.TIFFDirectory, ptr %73, i64 0, i32 48
  %74 = load ptr, ptr %td_ycbcrcoeffs64, align 8
  %75 = va_arg ptr %ap.addr, ptr
  store ptr %74, ptr %75, align 8
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb66:                                          ; preds = %if.end
  %76 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling = getelementptr inbounds %struct.TIFFDirectory, ptr %76, i64 0, i32 49
  %77 = load i16, ptr %td_ycbcrsubsampling, align 8
  %78 = va_arg ptr %ap.addr, ptr
  store i16 %77, ptr %78, align 2
  %79 = load ptr, ptr %td, align 8
  %arrayidx70 = getelementptr inbounds %struct.TIFFDirectory, ptr %79, i64 0, i32 49, i64 1
  %80 = load i16, ptr %arrayidx70, align 2
  %81 = va_arg ptr %ap.addr, ptr
  store i16 %80, ptr %81, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb72:                                          ; preds = %if.end
  %82 = load ptr, ptr %td, align 8
  %td_ycbcrpositioning = getelementptr inbounds %struct.TIFFDirectory, ptr %82, i64 0, i32 50
  %83 = load i16, ptr %td_ycbcrpositioning, align 4
  %84 = va_arg ptr %ap.addr, ptr
  store i16 %83, ptr %84, align 2
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb74:                                          ; preds = %if.end
  %85 = load ptr, ptr %td, align 8
  %td_transferfunction = getelementptr inbounds %struct.TIFFDirectory, ptr %85, i64 0, i32 54
  %86 = load ptr, ptr %td_transferfunction, align 8
  %tobool76.not = icmp eq ptr %86, null
  br i1 %tobool76.not, label %if.then77, label %if.end78

if.then77:                                        ; preds = %sw.bb74
  %87 = load ptr, ptr %td, align 8
  call void @TIFFDefaultTransferFunction(ptr noundef %87)
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %sw.bb74
  %88 = load ptr, ptr %td, align 8
  %td_transferfunction79 = getelementptr inbounds %struct.TIFFDirectory, ptr %88, i64 0, i32 54
  %89 = load ptr, ptr %td_transferfunction79, align 8
  %90 = va_arg ptr %ap.addr, ptr
  store ptr %89, ptr %90, align 8
  %91 = load ptr, ptr %td, align 8
  %td_samplesperpixel82 = getelementptr inbounds %struct.TIFFDirectory, ptr %91, i64 0, i32 15
  %92 = load i16, ptr %td_samplesperpixel82, align 2
  %conv83 = zext i16 %92 to i32
  %td_extrasamples84 = getelementptr inbounds %struct.TIFFDirectory, ptr %91, i64 0, i32 30
  %93 = load i16, ptr %td_extrasamples84, align 4
  %conv85 = zext i16 %93 to i32
  %sub86 = sub nsw i32 %conv83, %conv85
  %cmp87 = icmp sgt i32 %sub86, 1
  br i1 %cmp87, label %if.then89, label %if.end96

if.then89:                                        ; preds = %if.end78
  %94 = load ptr, ptr %td, align 8
  %arrayidx91 = getelementptr inbounds %struct.TIFFDirectory, ptr %94, i64 0, i32 54, i64 1
  %95 = load ptr, ptr %arrayidx91, align 8
  %96 = va_arg ptr %ap.addr, ptr
  store ptr %95, ptr %96, align 8
  %97 = load ptr, ptr %td, align 8
  %arrayidx94 = getelementptr inbounds %struct.TIFFDirectory, ptr %97, i64 0, i32 54, i64 2
  %98 = load ptr, ptr %arrayidx94, align 8
  %99 = va_arg ptr %ap.addr, ptr
  store ptr %98, ptr %99, align 8
  br label %if.end96

if.end96:                                         ; preds = %if.then89, %if.end78
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb97:                                          ; preds = %if.end
  %100 = load ptr, ptr %td, align 8
  %td_refblackwhite = getelementptr inbounds %struct.TIFFDirectory, ptr %100, i64 0, i32 53
  %101 = load ptr, ptr %td_refblackwhite, align 8
  %tobool98.not = icmp eq ptr %101, null
  br i1 %tobool98.not, label %if.then99, label %if.end100

if.then99:                                        ; preds = %sw.bb97
  %102 = load ptr, ptr %td, align 8
  call void @TIFFDefaultRefBlackWhite(ptr noundef %102)
  br label %if.end100

if.end100:                                        ; preds = %if.then99, %sw.bb97
  %103 = load ptr, ptr %td, align 8
  %td_refblackwhite101 = getelementptr inbounds %struct.TIFFDirectory, ptr %103, i64 0, i32 53
  %104 = load ptr, ptr %td_refblackwhite101, align 8
  %105 = va_arg ptr %ap.addr, ptr
  store ptr %104, ptr %105, align 8
  store i32 1, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.end100, %if.end96, %sw.bb72, %sw.bb66, %if.end63, %sw.bb50, %sw.bb45, %sw.bb43, %land.end, %sw.bb30, %sw.bb28, %sw.bb26, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb, %if.then
  %106 = load i32, ptr %retval, align 4
  ret i32 %106
}

declare i32 @TIFFVGetField(ptr noundef, i32 noundef, ptr noundef) #1

declare ptr @_TIFFmalloc(i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @TIFFDefaultTransferFunction(ptr noundef %td) #0 {
entry:
  %td.addr = alloca ptr, align 8
  %tf = alloca ptr, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  store ptr %td, ptr %td.addr, align 8
  %td_transferfunction = getelementptr inbounds %struct.TIFFDirectory, ptr %td, i64 0, i32 54
  store ptr %td_transferfunction, ptr %tf, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %td, i64 0, i32 8
  %0 = load i16, ptr %td_bitspersample, align 4
  %conv = zext i16 %0 to i32
  %shl = shl i32 1, %conv
  %conv1 = sext i32 %shl to i64
  store i64 %conv1, ptr %n, align 8
  %mul = shl i32 2, %conv
  %call = call ptr @_TIFFmalloc(i32 noundef %mul) #4
  %1 = load ptr, ptr %tf, align 8
  store ptr %call, ptr %1, align 8
  store i16 0, ptr %call, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i64 [ 1, %entry ], [ %inc, %for.body ]
  store i64 %storemerge, ptr %i, align 8
  %2 = load i64, ptr %n, align 8
  %cmp = icmp slt i64 %storemerge, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %i, align 8
  %conv6 = sitofp i64 %3 to double
  %4 = load i64, ptr %n, align 8
  %conv7 = sitofp i64 %4 to double
  %sub = fadd double %conv7, -1.000000e+00
  %div = fdiv double %conv6, %sub
  %5 = call double @llvm.pow.f64(double %div, double 2.200000e+00)
  %6 = call double @llvm.fmuladd.f64(double %5, double 6.553500e+04, double 5.000000e-01)
  %7 = call double @llvm.floor.f64(double %6)
  %conv9 = fptoui double %7 to i16
  %8 = load ptr, ptr %tf, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load i64, ptr %i, align 8
  %arrayidx11 = getelementptr inbounds i16, ptr %9, i64 %10
  store i16 %conv9, ptr %arrayidx11, align 2
  %11 = load i64, ptr %i, align 8
  %inc = add nsw i64 %11, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %td.addr, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %12, i64 0, i32 15
  %13 = load i16, ptr %td_samplesperpixel, align 2
  %conv12 = zext i16 %13 to i32
  %td_extrasamples = getelementptr inbounds %struct.TIFFDirectory, ptr %12, i64 0, i32 30
  %14 = load i16, ptr %td_extrasamples, align 4
  %conv13 = zext i16 %14 to i32
  %sub14 = sub nsw i32 %conv12, %conv13
  %cmp15 = icmp sgt i32 %sub14, 1
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %15 = load i64, ptr %n, align 8
  %.tr = trunc i64 %15 to i32
  %conv18 = shl i32 %.tr, 1
  %call19 = call ptr @_TIFFmalloc(i32 noundef %conv18) #4
  %16 = load ptr, ptr %tf, align 8
  %arrayidx20 = getelementptr inbounds ptr, ptr %16, i64 1
  store ptr %call19, ptr %arrayidx20, align 8
  %17 = load ptr, ptr %16, align 8
  %18 = load i64, ptr %n, align 8
  %.tr1 = trunc i64 %18 to i32
  %conv24 = shl i32 %.tr1, 1
  call void @_TIFFmemcpy(ptr noundef %call19, ptr noundef %17, i32 noundef %conv24) #4
  %.tr2 = trunc i64 %18 to i32
  %conv26 = shl i32 %.tr2, 1
  %call27 = call ptr @_TIFFmalloc(i32 noundef %conv26) #4
  %19 = load ptr, ptr %tf, align 8
  %arrayidx28 = getelementptr inbounds ptr, ptr %19, i64 2
  store ptr %call27, ptr %arrayidx28, align 8
  %20 = load ptr, ptr %19, align 8
  %21 = load i64, ptr %n, align 8
  %.tr3 = trunc i64 %21 to i32
  %conv32 = shl i32 %.tr3, 1
  call void @_TIFFmemcpy(ptr noundef %call27, ptr noundef %20, i32 noundef %conv32) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @TIFFDefaultRefBlackWhite(ptr noundef %td) #0 {
entry:
  %td.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %td, ptr %td.addr, align 8
  %call = call ptr @_TIFFmalloc(i32 noundef 24) #4
  %td_refblackwhite = getelementptr inbounds %struct.TIFFDirectory, ptr %td, i64 0, i32 53
  store ptr %call, ptr %td_refblackwhite, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %td.addr, align 8
  %td_refblackwhite1 = getelementptr inbounds %struct.TIFFDirectory, ptr %0, i64 0, i32 53
  %1 = load ptr, ptr %td_refblackwhite1, align 8
  %2 = load i32, ptr %i, align 4
  %mul = shl nsw i32 %2, 1
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds float, ptr %1, i64 %idxprom
  store float 0.000000e+00, ptr %arrayidx, align 4
  %3 = load ptr, ptr %td.addr, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i64 0, i32 8
  %4 = load i16, ptr %td_bitspersample, align 4
  %sh_prom = zext i16 %4 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %conv2 = sitofp i64 %sub to float
  %5 = load ptr, ptr %td.addr, align 8
  %td_refblackwhite3 = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i64 0, i32 53
  %6 = load ptr, ptr %td_refblackwhite3, align 8
  %7 = load i32, ptr %i, align 4
  %mul4 = shl nsw i32 %7, 1
  %add5 = or i32 %mul4, 1
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds float, ptr %6, i64 %idxprom6
  store float %conv2, ptr %arrayidx7, align 4
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFGetFieldDefaulted(ptr noundef %tif, i32 noundef %tag, ...) #0 {
entry:
  %ap = alloca ptr, align 8
  call void @llvm.va_start(ptr nonnull %ap)
  %0 = load ptr, ptr %ap, align 8
  %call = call i32 @TIFFVGetFieldDefaulted(ptr noundef %tif, i32 noundef %tag, ptr noundef %0)
  call void @llvm.va_end(ptr %ap)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.pow.f64(double, double) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #3

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i32 noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
