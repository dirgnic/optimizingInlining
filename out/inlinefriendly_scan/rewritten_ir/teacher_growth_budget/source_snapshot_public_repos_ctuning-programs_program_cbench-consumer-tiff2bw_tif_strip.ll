; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_growth_budget/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-tiff2bw_tif_strip.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2bw/tif_strip.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }

@.str = private unnamed_addr constant [32 x i8] c"%u: Sample out of range, max %u\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFComputeStrip(ptr noundef %tif, i32 noundef %row, i16 noundef zeroext %sample) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %sample.addr = alloca i16, align 2
  %td = alloca ptr, align 8
  %strip = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i16 %sample, ptr %sample.addr, align 2
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 16
  %0 = load i32, ptr %td_rowsperstrip, align 4
  %div = udiv i32 %row, %0
  store i32 %div, ptr %strip, align 4
  %td_planarconfig = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 24
  %1 = load i16, ptr %td_planarconfig, align 2
  %cmp = icmp eq i16 %1, 2
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %2 = load i16, ptr %sample.addr, align 2
  %3 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i64 0, i32 15
  %4 = load i16, ptr %td_samplesperpixel, align 2
  %cmp4.not = icmp ult i16 %2, %4
  br i1 %cmp4.not, label %if.end, label %if.then6

if.then6:                                         ; preds = %if.then
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i16, ptr %sample.addr, align 2
  %conv7 = zext i16 %7 to i32
  %8 = load ptr, ptr %td, align 8
  %td_samplesperpixel8 = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i64 0, i32 15
  %9 = load i16, ptr %td_samplesperpixel8, align 2
  %conv9 = zext i16 %9 to i32
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %6, ptr noundef nonnull @.str, i32 noundef %conv7, i32 noundef %conv9) #2
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load i16, ptr %sample.addr, align 2
  %conv10 = zext i16 %10 to i32
  %11 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i64 0, i32 42
  %12 = load i32, ptr %td_stripsperimage, align 8
  %mul = mul i32 %12, %conv10
  %13 = load i32, ptr %strip, align 4
  %add = add i32 %13, %mul
  store i32 %add, ptr %strip, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry
  %14 = load i32, ptr %strip, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then6
  %storemerge = phi i32 [ %14, %if.end11 ], [ 0, %if.then6 ]
  ret i32 %storemerge
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFNumberOfStrips(ptr noundef %tif) #0 {
entry:
  %td = alloca ptr, align 8
  %nstrips = alloca i32, align 4
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 16
  %0 = load i32, ptr %td_rowsperstrip, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i64 0, i32 2
  %2 = load i32, ptr %td_imagelength, align 4
  %cmp1.not = icmp ne i32 %2, 0
  %cond = zext i1 %cmp1.not to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load ptr, ptr %td, align 8
  %td_imagelength2 = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i64 0, i32 2
  %4 = load i32, ptr %td_imagelength2, align 4
  %td_rowsperstrip3 = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %td_rowsperstrip3, align 4
  %sub = add i32 %5, -1
  %add = add i32 %4, %sub
  %6 = load ptr, ptr %td, align 8
  %td_rowsperstrip4 = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i64 0, i32 16
  %7 = load i32, ptr %td_rowsperstrip4, align 4
  %div = udiv i32 %add, %7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi i32 [ %cond, %cond.true ], [ %div, %cond.false ]
  store i32 %cond5, ptr %nstrips, align 4
  %8 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i64 0, i32 24
  %9 = load i16, ptr %td_planarconfig, align 2
  %cmp6 = icmp eq i16 %9, 2
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %10 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i64 0, i32 15
  %11 = load i16, ptr %td_samplesperpixel, align 2
  %conv8 = zext i16 %11 to i32
  %12 = load i32, ptr %nstrips, align 4
  %mul = mul i32 %12, %conv8
  store i32 %mul, ptr %nstrips, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %13 = load i32, ptr %nstrips, align 4
  ret i32 %13
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFVStripSize(ptr noundef %tif, i32 noundef %nrows) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %nrows.addr = alloca i32, align 4
  %td = alloca ptr, align 8
  %scanline = alloca i32, align 4
  %samplingarea = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %nrows, ptr %nrows.addr, align 4
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %cmp = icmp eq i32 %nrows, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %0, i64 0, i32 2
  %1 = load i32, ptr %td_imagelength, align 4
  store i32 %1, ptr %nrows.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %2, i64 0, i32 24
  %3 = load i16, ptr %td_planarconfig, align 2
  %cmp1 = icmp eq i16 %3, 1
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %td, align 8
  %td_photometric = getelementptr inbounds %struct.TIFFDirectory, ptr %4, i64 0, i32 11
  %5 = load i16, ptr %td_photometric, align 2
  %cmp4 = icmp eq i16 %5, 6
  br i1 %cmp4, label %land.lhs.true6, label %if.else

land.lhs.true6:                                   ; preds = %land.lhs.true
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 3
  %7 = load i32, ptr %tif_flags, align 8
  %and = and i32 %7, 16384
  %cmp7.not = icmp eq i32 %and, 0
  br i1 %cmp7.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %land.lhs.true6
  %8 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i64 0, i32 1
  %9 = load i32, ptr %td_imagewidth, align 8
  %td_ycbcrsubsampling = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i64 0, i32 49
  %10 = load i16, ptr %td_ycbcrsubsampling, align 8
  %conv10 = zext i16 %10 to i32
  %sub = add nsw i32 %conv10, -1
  %add = add i32 %9, %sub
  %11 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling11 = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i64 0, i32 49
  %12 = load i16, ptr %td_ycbcrsubsampling11, align 8
  %conv13 = zext i16 %12 to i32
  %div = udiv i32 %add, %conv13
  %conv16 = zext i16 %12 to i32
  %mul = mul i32 %div, %conv16
  %13 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i64 0, i32 8
  %14 = load i16, ptr %td_bitspersample, align 4
  %conv17 = zext i16 %14 to i32
  %mul18 = mul nsw i32 %mul, %conv17
  %add19 = add i32 %mul18, 7
  %div201 = lshr i32 %add19, 3
  store i32 %div201, ptr %scanline, align 4
  %15 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling21 = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i64 0, i32 49
  %16 = load i16, ptr %td_ycbcrsubsampling21, align 8
  %conv23 = zext i16 %16 to i32
  %arrayidx25 = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i64 0, i32 49, i64 1
  %17 = load i16, ptr %arrayidx25, align 2
  %conv26 = zext i16 %17 to i32
  %mul27 = mul nuw nsw i32 %conv23, %conv26
  store i32 %mul27, ptr %samplingarea, align 4
  %18 = load i32, ptr %nrows.addr, align 4
  %19 = load ptr, ptr %td, align 8
  %arrayidx29 = getelementptr inbounds %struct.TIFFDirectory, ptr %19, i64 0, i32 49, i64 1
  %20 = load i16, ptr %arrayidx29, align 2
  %conv30 = zext i16 %20 to i32
  %sub31 = add nsw i32 %conv30, -1
  %add32 = add i32 %18, %sub31
  %conv35 = zext i16 %20 to i32
  %div36 = udiv i32 %add32, %conv35
  %21 = load ptr, ptr %td, align 8
  %arrayidx38 = getelementptr inbounds %struct.TIFFDirectory, ptr %21, i64 0, i32 49, i64 1
  %22 = load i16, ptr %arrayidx38, align 2
  %conv39 = zext i16 %22 to i32
  %mul40 = mul i32 %div36, %conv39
  store i32 %mul40, ptr %nrows.addr, align 4
  %23 = load i32, ptr %scanline, align 4
  %mul41 = mul i32 %mul40, %23
  %mul42 = mul i32 %mul40, %23
  %24 = load i32, ptr %samplingarea, align 4
  %div43 = udiv i32 %mul42, %24
  %mul44 = shl i32 %div43, 1
  %add45 = add i32 %mul41, %mul44
  br label %return

if.else:                                          ; preds = %land.lhs.true6, %land.lhs.true, %if.end
  %25 = load i32, ptr %nrows.addr, align 4
  %26 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFScanlineSize(ptr noundef %26)
  %mul46 = mul i32 %25, %call
  br label %return

return:                                           ; preds = %if.else, %if.then9
  %storemerge = phi i32 [ %mul46, %if.else ], [ %add45, %if.then9 ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFScanlineSize(ptr noundef %tif) #0 {
entry:
  %td = alloca ptr, align 8
  %scanline = alloca i32, align 4
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 8
  %0 = load i16, ptr %td_bitspersample, align 4
  %conv = zext i16 %0 to i32
  %td_imagewidth = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 1
  %1 = load i32, ptr %td_imagewidth, align 8
  %mul = mul i32 %1, %conv
  store i32 %mul, ptr %scanline, align 4
  %2 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %2, i64 0, i32 24
  %3 = load i16, ptr %td_planarconfig, align 2
  %cmp = icmp eq i16 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %4, i64 0, i32 15
  %5 = load i16, ptr %td_samplesperpixel, align 2
  %conv3 = zext i16 %5 to i32
  %6 = load i32, ptr %scanline, align 4
  %mul4 = mul nsw i32 %6, %conv3
  store i32 %mul4, ptr %scanline, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr %scanline, align 4
  %add = add i32 %7, 7
  %div1 = lshr i32 %add, 3
  ret i32 %div1
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFStripSize(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %rps = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 16
  %0 = load i32, ptr %td_rowsperstrip, align 4
  store i32 %0, ptr %rps, align 4
  %td_imagelength = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 2
  %1 = load i32, ptr %td_imagelength, align 4
  %cmp = icmp ugt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %td, align 8
  %td_imagelength1 = getelementptr inbounds %struct.TIFFDirectory, ptr %2, i64 0, i32 2
  %3 = load i32, ptr %td_imagelength1, align 4
  store i32 %3, ptr %rps, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %tif.addr, align 8
  %5 = load i32, ptr %rps, align 4
  %call = call i32 @TIFFVStripSize(ptr noundef %4, i32 noundef %5)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFDefaultStripSize(ptr noundef %tif, i32 noundef %request) #0 {
entry:
  %tif_defstripsize = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 35
  %0 = load ptr, ptr %tif_defstripsize, align 8
  %call = call i32 %0(ptr noundef %tif, i32 noundef %request) #2
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @_TIFFDefaultStripSize(ptr noundef %tif, i32 noundef %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %s.addr = alloca i32, align 4
  %scanline = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %s, ptr %s.addr, align 4
  %cmp = icmp slt i32 %s, 1
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFScanlineSize(ptr noundef %0)
  store i32 %call, ptr %scanline, align 4
  %cmp1 = icmp eq i32 %call, 0
  %1 = load i32, ptr %scanline, align 4
  %cond = select i1 %cmp1, i32 1, i32 %1
  %div = udiv i32 8192, %cond
  %cmp2 = icmp ugt i32 %cond, 8192
  %storemerge = select i1 %cmp2, i32 1, i32 %div
  store i32 %storemerge, ptr %s.addr, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then, %entry
  %2 = load i32, ptr %s.addr, align 4
  ret i32 %2
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFRasterScanlineSize(ptr noundef %tif) #0 {
entry:
  %td = alloca ptr, align 8
  %scanline = alloca i32, align 4
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 8
  %0 = load i16, ptr %td_bitspersample, align 4
  %conv = zext i16 %0 to i32
  %td_imagewidth = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 1
  %1 = load i32, ptr %td_imagewidth, align 8
  %mul = mul i32 %1, %conv
  store i32 %mul, ptr %scanline, align 4
  %2 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %2, i64 0, i32 24
  %3 = load i16, ptr %td_planarconfig, align 2
  %cmp = icmp eq i16 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %4, i64 0, i32 15
  %5 = load i16, ptr %td_samplesperpixel, align 2
  %conv3 = zext i16 %5 to i32
  %6 = load i32, ptr %scanline, align 4
  %mul4 = mul nsw i32 %6, %conv3
  store i32 %mul4, ptr %scanline, align 4
  %add = add i32 %mul4, 7
  %div2 = lshr i32 %add, 3
  br label %return

if.else:                                          ; preds = %entry
  %7 = load i32, ptr %scanline, align 4
  %add5 = add i32 %7, 7
  %div61 = lshr i32 %add5, 3
  %8 = load ptr, ptr %td, align 8
  %td_samplesperpixel7 = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i64 0, i32 15
  %9 = load i16, ptr %td_samplesperpixel7, align 2
  %conv8 = zext i16 %9 to i32
  %mul9 = mul nsw i32 %div61, %conv8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %mul9, %if.else ], [ %div2, %if.then ]
  ret i32 %storemerge
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
