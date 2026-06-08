; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2bw/tif_strip.c'
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
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %row.addr = alloca i32, align 4
  %sample.addr = alloca i16, align 2
  %td = alloca ptr, align 8
  %strip = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %row, ptr %row.addr, align 4
  store i16 %sample, ptr %sample.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load i32, ptr %row.addr, align 4
  %2 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %2, i32 0, i32 16
  %3 = load i32, ptr %td_rowsperstrip, align 4
  %div = udiv i32 %1, %3
  store i32 %div, ptr %strip, align 4
  %4 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %4, i32 0, i32 24
  %5 = load i16, ptr %td_planarconfig, align 2
  %conv = zext i16 %5 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %6 = load i16, ptr %sample.addr, align 2
  %conv2 = zext i16 %6 to i32
  %7 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i32 0, i32 15
  %8 = load i16, ptr %td_samplesperpixel, align 2
  %conv3 = zext i16 %8 to i32
  %cmp4 = icmp sge i32 %conv2, %conv3
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %tif_name, align 8
  %11 = load i16, ptr %sample.addr, align 2
  %conv7 = zext i16 %11 to i32
  %12 = load ptr, ptr %td, align 8
  %td_samplesperpixel8 = getelementptr inbounds %struct.TIFFDirectory, ptr %12, i32 0, i32 15
  %13 = load i16, ptr %td_samplesperpixel8, align 2
  %conv9 = zext i16 %13 to i32
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %10, ptr noundef @.str, i32 noundef %conv7, i32 noundef %conv9)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %14 = load i16, ptr %sample.addr, align 2
  %conv10 = zext i16 %14 to i32
  %15 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i32 0, i32 42
  %16 = load i32, ptr %td_stripsperimage, align 8
  %mul = mul i32 %conv10, %16
  %17 = load i32, ptr %strip, align 4
  %add = add i32 %17, %mul
  store i32 %add, ptr %strip, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry
  %18 = load i32, ptr %strip, align 4
  store i32 %18, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then6
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFNumberOfStrips(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %nstrips = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 16
  %2 = load i32, ptr %td_rowsperstrip, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %td_imagelength, align 4
  %cmp1 = icmp ne i32 %4, 0
  %5 = zext i1 %cmp1 to i64
  %cond = select i1 %cmp1, i32 1, i32 0
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load ptr, ptr %td, align 8
  %td_imagelength2 = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %td_imagelength2, align 4
  %8 = load ptr, ptr %td, align 8
  %td_rowsperstrip3 = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i32 0, i32 16
  %9 = load i32, ptr %td_rowsperstrip3, align 4
  %sub = sub i32 %9, 1
  %add = add i32 %7, %sub
  %10 = load ptr, ptr %td, align 8
  %td_rowsperstrip4 = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i32 0, i32 16
  %11 = load i32, ptr %td_rowsperstrip4, align 4
  %div = udiv i32 %add, %11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi i32 [ %cond, %cond.true ], [ %div, %cond.false ]
  store i32 %cond5, ptr %nstrips, align 4
  %12 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %12, i32 0, i32 24
  %13 = load i16, ptr %td_planarconfig, align 2
  %conv = zext i16 %13 to i32
  %cmp6 = icmp eq i32 %conv, 2
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %14 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %14, i32 0, i32 15
  %15 = load i16, ptr %td_samplesperpixel, align 2
  %conv8 = zext i16 %15 to i32
  %16 = load i32, ptr %nstrips, align 4
  %mul = mul i32 %16, %conv8
  store i32 %mul, ptr %nstrips, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %17 = load i32, ptr %nstrips, align 4
  ret i32 %17
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFVStripSize(ptr noundef %tif, i32 noundef %nrows) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %nrows.addr = alloca i32, align 4
  %td = alloca ptr, align 8
  %w = alloca i32, align 4
  %scanline = alloca i32, align 4
  %samplingarea = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %nrows, ptr %nrows.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load i32, ptr %nrows.addr, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %td_imagelength, align 4
  store i32 %3, ptr %nrows.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %4, i32 0, i32 24
  %5 = load i16, ptr %td_planarconfig, align 2
  %conv = zext i16 %5 to i32
  %cmp1 = icmp eq i32 %conv, 1
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %td, align 8
  %td_photometric = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i32 0, i32 11
  %7 = load i16, ptr %td_photometric, align 2
  %conv3 = zext i16 %7 to i32
  %cmp4 = icmp eq i32 %conv3, 6
  br i1 %cmp4, label %land.lhs.true6, label %if.else

land.lhs.true6:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %tif_flags, align 8
  %and = and i32 %9, 16384
  %cmp7 = icmp ne i32 %and, 0
  br i1 %cmp7, label %if.else, label %if.then9

if.then9:                                         ; preds = %land.lhs.true6
  %10 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %td_imagewidth, align 8
  %12 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling = getelementptr inbounds %struct.TIFFDirectory, ptr %12, i32 0, i32 49
  %arrayidx = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling, i64 0, i64 0
  %13 = load i16, ptr %arrayidx, align 8
  %conv10 = zext i16 %13 to i32
  %sub = sub i32 %conv10, 1
  %add = add i32 %11, %sub
  %14 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling11 = getelementptr inbounds %struct.TIFFDirectory, ptr %14, i32 0, i32 49
  %arrayidx12 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling11, i64 0, i64 0
  %15 = load i16, ptr %arrayidx12, align 8
  %conv13 = zext i16 %15 to i32
  %div = udiv i32 %add, %conv13
  %16 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling14 = getelementptr inbounds %struct.TIFFDirectory, ptr %16, i32 0, i32 49
  %arrayidx15 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling14, i64 0, i64 0
  %17 = load i16, ptr %arrayidx15, align 8
  %conv16 = zext i16 %17 to i32
  %mul = mul i32 %div, %conv16
  store i32 %mul, ptr %w, align 4
  %18 = load i32, ptr %w, align 4
  %19 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %19, i32 0, i32 8
  %20 = load i16, ptr %td_bitspersample, align 4
  %conv17 = zext i16 %20 to i32
  %mul18 = mul nsw i32 %18, %conv17
  %add19 = add i32 %mul18, 7
  %div20 = udiv i32 %add19, 8
  store i32 %div20, ptr %scanline, align 4
  %21 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling21 = getelementptr inbounds %struct.TIFFDirectory, ptr %21, i32 0, i32 49
  %arrayidx22 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling21, i64 0, i64 0
  %22 = load i16, ptr %arrayidx22, align 8
  %conv23 = zext i16 %22 to i32
  %23 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling24 = getelementptr inbounds %struct.TIFFDirectory, ptr %23, i32 0, i32 49
  %arrayidx25 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling24, i64 0, i64 1
  %24 = load i16, ptr %arrayidx25, align 2
  %conv26 = zext i16 %24 to i32
  %mul27 = mul nsw i32 %conv23, %conv26
  store i32 %mul27, ptr %samplingarea, align 4
  %25 = load i32, ptr %nrows.addr, align 4
  %26 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling28 = getelementptr inbounds %struct.TIFFDirectory, ptr %26, i32 0, i32 49
  %arrayidx29 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling28, i64 0, i64 1
  %27 = load i16, ptr %arrayidx29, align 2
  %conv30 = zext i16 %27 to i32
  %sub31 = sub i32 %conv30, 1
  %add32 = add i32 %25, %sub31
  %28 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling33 = getelementptr inbounds %struct.TIFFDirectory, ptr %28, i32 0, i32 49
  %arrayidx34 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling33, i64 0, i64 1
  %29 = load i16, ptr %arrayidx34, align 2
  %conv35 = zext i16 %29 to i32
  %div36 = udiv i32 %add32, %conv35
  %30 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling37 = getelementptr inbounds %struct.TIFFDirectory, ptr %30, i32 0, i32 49
  %arrayidx38 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling37, i64 0, i64 1
  %31 = load i16, ptr %arrayidx38, align 2
  %conv39 = zext i16 %31 to i32
  %mul40 = mul i32 %div36, %conv39
  store i32 %mul40, ptr %nrows.addr, align 4
  %32 = load i32, ptr %nrows.addr, align 4
  %33 = load i32, ptr %scanline, align 4
  %mul41 = mul i32 %32, %33
  %34 = load i32, ptr %nrows.addr, align 4
  %35 = load i32, ptr %scanline, align 4
  %mul42 = mul i32 %34, %35
  %36 = load i32, ptr %samplingarea, align 4
  %div43 = udiv i32 %mul42, %36
  %mul44 = mul i32 2, %div43
  %add45 = add i32 %mul41, %mul44
  store i32 %add45, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true6, %land.lhs.true, %if.end
  %37 = load i32, ptr %nrows.addr, align 4
  %38 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFScanlineSize(ptr noundef %38)
  %mul46 = mul i32 %37, %call
  store i32 %mul46, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then9
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFScanlineSize(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %scanline = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 8
  %2 = load i16, ptr %td_bitspersample, align 4
  %conv = zext i16 %2 to i32
  %3 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %td_imagewidth, align 8
  %mul = mul i32 %conv, %4
  store i32 %mul, ptr %scanline, align 4
  %5 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i32 0, i32 24
  %6 = load i16, ptr %td_planarconfig, align 2
  %conv1 = zext i16 %6 to i32
  %cmp = icmp eq i32 %conv1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i32 0, i32 15
  %8 = load i16, ptr %td_samplesperpixel, align 2
  %conv3 = zext i16 %8 to i32
  %9 = load i32, ptr %scanline, align 4
  %mul4 = mul nsw i32 %9, %conv3
  store i32 %mul4, ptr %scanline, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, ptr %scanline, align 4
  %add = add i32 %10, 7
  %div = udiv i32 %add, 8
  ret i32 %div
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFStripSize(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %rps = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 16
  %2 = load i32, ptr %td_rowsperstrip, align 4
  store i32 %2, ptr %rps, align 4
  %3 = load i32, ptr %rps, align 4
  %4 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %td_imagelength, align 4
  %cmp = icmp ugt i32 %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %td, align 8
  %td_imagelength1 = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %td_imagelength1, align 4
  store i32 %7, ptr %rps, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %tif.addr, align 8
  %9 = load i32, ptr %rps, align 4
  %call = call i32 @TIFFVStripSize(ptr noundef %8, i32 noundef %9)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFDefaultStripSize(ptr noundef %tif, i32 noundef %request) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %request.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %request, ptr %request.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_defstripsize = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 35
  %1 = load ptr, ptr %tif_defstripsize, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load i32, ptr %request.addr, align 4
  %call = call i32 %1(ptr noundef %2, i32 noundef %3)
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
  %0 = load i32, ptr %s.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFScanlineSize(ptr noundef %1)
  store i32 %call, ptr %scanline, align 4
  %2 = load i32, ptr %scanline, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %3 = load i32, ptr %scanline, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %3, %cond.false ]
  %div = udiv i32 8192, %cond
  store i32 %div, ptr %s.addr, align 4
  %4 = load i32, ptr %s.addr, align 4
  %cmp2 = icmp eq i32 %4, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %cond.end
  store i32 1, ptr %s.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %cond.end
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %5 = load i32, ptr %s.addr, align 4
  ret i32 %5
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFRasterScanlineSize(ptr noundef %tif) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %scanline = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 8
  %2 = load i16, ptr %td_bitspersample, align 4
  %conv = zext i16 %2 to i32
  %3 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %td_imagewidth, align 8
  %mul = mul i32 %conv, %4
  store i32 %mul, ptr %scanline, align 4
  %5 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i32 0, i32 24
  %6 = load i16, ptr %td_planarconfig, align 2
  %conv1 = zext i16 %6 to i32
  %cmp = icmp eq i32 %conv1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i32 0, i32 15
  %8 = load i16, ptr %td_samplesperpixel, align 2
  %conv3 = zext i16 %8 to i32
  %9 = load i32, ptr %scanline, align 4
  %mul4 = mul nsw i32 %9, %conv3
  store i32 %mul4, ptr %scanline, align 4
  %10 = load i32, ptr %scanline, align 4
  %add = add i32 %10, 7
  %div = udiv i32 %add, 8
  store i32 %div, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %11 = load i32, ptr %scanline, align 4
  %add5 = add i32 %11, 7
  %div6 = udiv i32 %add5, 8
  %12 = load ptr, ptr %td, align 8
  %td_samplesperpixel7 = getelementptr inbounds %struct.TIFFDirectory, ptr %12, i32 0, i32 15
  %13 = load i16, ptr %td_samplesperpixel7, align 2
  %conv8 = zext i16 %13 to i32
  %mul9 = mul nsw i32 %div6, %conv8
  store i32 %mul9, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
