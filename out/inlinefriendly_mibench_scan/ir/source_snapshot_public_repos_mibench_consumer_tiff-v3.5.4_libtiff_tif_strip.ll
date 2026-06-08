; ModuleID = './source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_strip.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_strip.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i64, i64, i64, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i64, i16, i64, i64, i64, i16, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, ptr, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i64, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i64, ptr, i64, ptr, i64, ptr, i64, i64, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i64 }

@.str = private unnamed_addr constant [32 x i8] c"%u: Sample out of range, max %u\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @TIFFComputeStrip(ptr noundef %tif, i64 noundef %row, i16 noundef zeroext %sample) #0 {
entry:
  %retval = alloca i64, align 8
  %tif.addr = alloca ptr, align 8
  %row.addr = alloca i64, align 8
  %sample.addr = alloca i16, align 2
  %td = alloca ptr, align 8
  %strip = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %row, ptr %row.addr, align 8
  store i16 %sample, ptr %sample.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load i64, ptr %row.addr, align 8
  %2 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %2, i32 0, i32 16
  %3 = load i64, ptr %td_rowsperstrip, align 8
  %div = udiv i64 %1, %3
  store i64 %div, ptr %strip, align 8
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
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %14 = load i16, ptr %sample.addr, align 2
  %conv10 = zext i16 %14 to i64
  %15 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i32 0, i32 42
  %16 = load i64, ptr %td_stripsperimage, align 8
  %mul = mul i64 %conv10, %16
  %17 = load i64, ptr %strip, align 8
  %add = add i64 %17, %mul
  store i64 %add, ptr %strip, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry
  %18 = load i64, ptr %strip, align 8
  store i64 %18, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end11, %if.then6
  %19 = load i64, ptr %retval, align 8
  ret i64 %19
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @TIFFNumberOfStrips(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %nstrips = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 16
  %2 = load i64, ptr %td_rowsperstrip, align 8
  %cmp = icmp eq i64 %2, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 2
  %4 = load i64, ptr %td_imagelength, align 8
  %cmp1 = icmp ne i64 %4, 0
  %5 = zext i1 %cmp1 to i64
  %cond = select i1 %cmp1, i32 1, i32 0
  %conv = sext i32 %cond to i64
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load ptr, ptr %td, align 8
  %td_imagelength2 = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i32 0, i32 2
  %7 = load i64, ptr %td_imagelength2, align 8
  %8 = load ptr, ptr %td, align 8
  %td_rowsperstrip3 = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i32 0, i32 16
  %9 = load i64, ptr %td_rowsperstrip3, align 8
  %sub = sub i64 %9, 1
  %add = add i64 %7, %sub
  %10 = load ptr, ptr %td, align 8
  %td_rowsperstrip4 = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i32 0, i32 16
  %11 = load i64, ptr %td_rowsperstrip4, align 8
  %div = udiv i64 %add, %11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi i64 [ %conv, %cond.true ], [ %div, %cond.false ]
  store i64 %cond5, ptr %nstrips, align 8
  %12 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %12, i32 0, i32 24
  %13 = load i16, ptr %td_planarconfig, align 2
  %conv6 = zext i16 %13 to i32
  %cmp7 = icmp eq i32 %conv6, 2
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %14 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %14, i32 0, i32 15
  %15 = load i16, ptr %td_samplesperpixel, align 2
  %conv9 = zext i16 %15 to i64
  %16 = load i64, ptr %nstrips, align 8
  %mul = mul i64 %16, %conv9
  store i64 %mul, ptr %nstrips, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %17 = load i64, ptr %nstrips, align 8
  ret i64 %17
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @TIFFVStripSize(ptr noundef %tif, i64 noundef %nrows) #0 {
entry:
  %retval = alloca i64, align 8
  %tif.addr = alloca ptr, align 8
  %nrows.addr = alloca i64, align 8
  %td = alloca ptr, align 8
  %w = alloca i64, align 8
  %scanline = alloca i64, align 8
  %samplingarea = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %nrows, ptr %nrows.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load i64, ptr %nrows.addr, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %2, i32 0, i32 2
  %3 = load i64, ptr %td_imagelength, align 8
  store i64 %3, ptr %nrows.addr, align 8
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
  %9 = load i64, ptr %tif_flags, align 8
  %and = and i64 %9, 16384
  %cmp7 = icmp ne i64 %and, 0
  br i1 %cmp7, label %if.else, label %if.then9

if.then9:                                         ; preds = %land.lhs.true6
  %10 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i32 0, i32 1
  %11 = load i64, ptr %td_imagewidth, align 8
  %12 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling = getelementptr inbounds %struct.TIFFDirectory, ptr %12, i32 0, i32 49
  %arrayidx = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling, i64 0, i64 0
  %13 = load i16, ptr %arrayidx, align 8
  %conv10 = zext i16 %13 to i64
  %sub = sub i64 %conv10, 1
  %add = add i64 %11, %sub
  %14 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling11 = getelementptr inbounds %struct.TIFFDirectory, ptr %14, i32 0, i32 49
  %arrayidx12 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling11, i64 0, i64 0
  %15 = load i16, ptr %arrayidx12, align 8
  %conv13 = zext i16 %15 to i64
  %div = udiv i64 %add, %conv13
  %16 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling14 = getelementptr inbounds %struct.TIFFDirectory, ptr %16, i32 0, i32 49
  %arrayidx15 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling14, i64 0, i64 0
  %17 = load i16, ptr %arrayidx15, align 8
  %conv16 = zext i16 %17 to i64
  %mul = mul i64 %div, %conv16
  store i64 %mul, ptr %w, align 8
  %18 = load i64, ptr %w, align 8
  %19 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %19, i32 0, i32 8
  %20 = load i16, ptr %td_bitspersample, align 8
  %conv17 = zext i16 %20 to i64
  %mul18 = mul nsw i64 %18, %conv17
  %add19 = add i64 %mul18, 7
  %div20 = udiv i64 %add19, 8
  store i64 %div20, ptr %scanline, align 8
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
  %conv28 = sext i32 %mul27 to i64
  store i64 %conv28, ptr %samplingarea, align 8
  %25 = load i64, ptr %nrows.addr, align 8
  %26 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling29 = getelementptr inbounds %struct.TIFFDirectory, ptr %26, i32 0, i32 49
  %arrayidx30 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling29, i64 0, i64 1
  %27 = load i16, ptr %arrayidx30, align 2
  %conv31 = zext i16 %27 to i64
  %sub32 = sub i64 %conv31, 1
  %add33 = add i64 %25, %sub32
  %28 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling34 = getelementptr inbounds %struct.TIFFDirectory, ptr %28, i32 0, i32 49
  %arrayidx35 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling34, i64 0, i64 1
  %29 = load i16, ptr %arrayidx35, align 2
  %conv36 = zext i16 %29 to i64
  %div37 = udiv i64 %add33, %conv36
  %30 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling38 = getelementptr inbounds %struct.TIFFDirectory, ptr %30, i32 0, i32 49
  %arrayidx39 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling38, i64 0, i64 1
  %31 = load i16, ptr %arrayidx39, align 2
  %conv40 = zext i16 %31 to i64
  %mul41 = mul i64 %div37, %conv40
  store i64 %mul41, ptr %nrows.addr, align 8
  %32 = load i64, ptr %nrows.addr, align 8
  %33 = load i64, ptr %scanline, align 8
  %mul42 = mul i64 %32, %33
  %34 = load i64, ptr %nrows.addr, align 8
  %35 = load i64, ptr %scanline, align 8
  %mul43 = mul i64 %34, %35
  %36 = load i64, ptr %samplingarea, align 8
  %div44 = udiv i64 %mul43, %36
  %mul45 = mul i64 2, %div44
  %add46 = add i64 %mul42, %mul45
  store i64 %add46, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %land.lhs.true6, %land.lhs.true, %if.end
  %37 = load i64, ptr %nrows.addr, align 8
  %38 = load ptr, ptr %tif.addr, align 8
  %call = call i64 @TIFFScanlineSize(ptr noundef %38)
  %mul47 = mul i64 %37, %call
  store i64 %mul47, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then9
  %39 = load i64, ptr %retval, align 8
  ret i64 %39
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @TIFFScanlineSize(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %scanline = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 8
  %2 = load i16, ptr %td_bitspersample, align 8
  %conv = zext i16 %2 to i64
  %3 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 1
  %4 = load i64, ptr %td_imagewidth, align 8
  %mul = mul i64 %conv, %4
  store i64 %mul, ptr %scanline, align 8
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
  %conv3 = zext i16 %8 to i64
  %9 = load i64, ptr %scanline, align 8
  %mul4 = mul nsw i64 %9, %conv3
  store i64 %mul4, ptr %scanline, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i64, ptr %scanline, align 8
  %add = add i64 %10, 7
  %div = udiv i64 %add, 8
  ret i64 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @TIFFStripSize(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %rps = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 16
  %2 = load i64, ptr %td_rowsperstrip, align 8
  store i64 %2, ptr %rps, align 8
  %3 = load i64, ptr %rps, align 8
  %4 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %td_imagelength, align 8
  %cmp = icmp ugt i64 %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %td, align 8
  %td_imagelength1 = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i32 0, i32 2
  %7 = load i64, ptr %td_imagelength1, align 8
  store i64 %7, ptr %rps, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %tif.addr, align 8
  %9 = load i64, ptr %rps, align 8
  %call = call i64 @TIFFVStripSize(ptr noundef %8, i64 noundef %9)
  ret i64 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @TIFFDefaultStripSize(ptr noundef %tif, i64 noundef %request) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %request.addr = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %request, ptr %request.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_defstripsize = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 35
  %1 = load ptr, ptr %tif_defstripsize, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load i64, ptr %request.addr, align 8
  %call = call i64 %1(ptr noundef %2, i64 noundef %3)
  ret i64 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @_TIFFDefaultStripSize(ptr noundef %tif, i64 noundef %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %s.addr = alloca i64, align 8
  %scanline = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %s, ptr %s.addr, align 8
  %0 = load i64, ptr %s.addr, align 8
  %cmp = icmp slt i64 %0, 1
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %call = call i64 @TIFFScanlineSize(ptr noundef %1)
  store i64 %call, ptr %scanline, align 8
  %2 = load i64, ptr %scanline, align 8
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %3 = load i64, ptr %scanline, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 1, %cond.true ], [ %3, %cond.false ]
  %div = udiv i64 8192, %cond
  store i64 %div, ptr %s.addr, align 8
  %4 = load i64, ptr %s.addr, align 8
  %cmp2 = icmp eq i64 %4, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %cond.end
  store i64 1, ptr %s.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %cond.end
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %5 = load i64, ptr %s.addr, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @TIFFRasterScanlineSize(ptr noundef %tif) #0 {
entry:
  %retval = alloca i64, align 8
  %tif.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %scanline = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 8
  %2 = load i16, ptr %td_bitspersample, align 8
  %conv = zext i16 %2 to i64
  %3 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 1
  %4 = load i64, ptr %td_imagewidth, align 8
  %mul = mul i64 %conv, %4
  store i64 %mul, ptr %scanline, align 8
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
  %conv3 = zext i16 %8 to i64
  %9 = load i64, ptr %scanline, align 8
  %mul4 = mul nsw i64 %9, %conv3
  store i64 %mul4, ptr %scanline, align 8
  %10 = load i64, ptr %scanline, align 8
  %add = add i64 %10, 7
  %div = udiv i64 %add, 8
  store i64 %div, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %11 = load i64, ptr %scanline, align 8
  %add5 = add i64 %11, 7
  %div6 = udiv i64 %add5, 8
  %12 = load ptr, ptr %td, align 8
  %td_samplesperpixel7 = getelementptr inbounds %struct.TIFFDirectory, ptr %12, i32 0, i32 15
  %13 = load i16, ptr %td_samplesperpixel7, align 2
  %conv8 = zext i16 %13 to i64
  %mul9 = mul nsw i64 %div6, %conv8
  store i64 %mul9, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %14 = load i64, ptr %retval, align 8
  ret i64 %14
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
