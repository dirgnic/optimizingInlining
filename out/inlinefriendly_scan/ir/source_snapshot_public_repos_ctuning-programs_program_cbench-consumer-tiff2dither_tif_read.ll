; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2dither/tif_read.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2dither/tif_read.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }

@.str = private unnamed_addr constant [33 x i8] c"%ld: Strip out of range, max %ld\00", align 1
@TIFFReadRawStrip.module = internal constant [17 x i8] c"TIFFReadRawStrip\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"%lu: Strip out of range, max %lu\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"%lu: Invalid strip byte count, strip %lu\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"%ld: Tile out of range, max %ld\00", align 1
@TIFFReadRawTile.module = internal constant [16 x i8] c"TIFFReadRawTile\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%lu: Tile out of range, max %lu\00", align 1
@TIFFReadBufferSetup.module = internal constant [20 x i8] c"TIFFReadBufferSetup\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"%s: No space for data buffer at scanline %ld\00", align 1
@__func__._TIFFSwab16BitData = private unnamed_addr constant [19 x i8] c"_TIFFSwab16BitData\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"tif_read.c\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"(cc & 1) == 0\00", align 1
@__func__._TIFFSwab32BitData = private unnamed_addr constant [19 x i8] c"_TIFFSwab32BitData\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"(cc & 3) == 0\00", align 1
@__func__._TIFFSwab64BitData = private unnamed_addr constant [19 x i8] c"_TIFFSwab64BitData\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"(cc & 7) == 0\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"%lu: Row out of range, max %lu\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"%lu: Sample out of range, max %lu\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"%s: Seek error at scanline %lu, strip %lu\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"%s: Read error at scanline %lu; got %lu bytes, expected %lu\00", align 1
@.str.14 = private unnamed_addr constant [71 x i8] c"%s: Read error at scanline %lu, strip %lu; got %lu bytes, expected %lu\00", align 1
@TIFFFillStrip.module = internal constant [14 x i8] c"TIFFFillStrip\00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"%s: Read error on strip %lu; got %lu bytes, expected %lu\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"%s: Data buffer too small to hold strip %lu\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"%s: Seek error at row %ld, col %ld, tile %ld\00", align 1
@.str.18 = private unnamed_addr constant [64 x i8] c"%s: Read error at row %ld, col %ld; got %lu bytes, expected %lu\00", align 1
@.str.19 = private unnamed_addr constant [74 x i8] c"%s: Read error at row %ld, col %ld, tile %ld; got %lu bytes, expected %lu\00", align 1
@TIFFFillTile.module = internal constant [13 x i8] c"TIFFFillTile\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"%lu: Invalid tile byte count, tile %lu\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"%s: Data buffer too small to hold tile %ld\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"File not open for reading\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"Can not read tiles from a stripped image\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"Can not read scanlines from a tiled image\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFReadScanline(ptr noundef %tif, ptr noundef %buf, i32 noundef %row, i16 noundef zeroext %sample) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %row.addr = alloca i32, align 4
  %sample.addr = alloca i16, align 2
  %e = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %row, ptr %row.addr, align 4
  store i16 %sample, ptr %sample.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFCheckRead(ptr noundef %0, i32 noundef 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %2 = load i32, ptr %row.addr, align 4
  %3 = load i16, ptr %sample.addr, align 2
  %call1 = call i32 @TIFFSeek(ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3)
  store i32 %call1, ptr %e, align 4
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end8

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 26
  %5 = load ptr, ptr %tif_decoderow, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %7 = load ptr, ptr %buf.addr, align 8
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_scanlinesize = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 38
  %9 = load i32, ptr %tif_scanlinesize, align 8
  %10 = load i16, ptr %sample.addr, align 2
  %call3 = call i32 %5(ptr noundef %6, ptr noundef %7, i32 noundef %9, i16 noundef zeroext %10)
  store i32 %call3, ptr %e, align 4
  %11 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %11, i32 0, i32 11
  %12 = load i32, ptr %tif_row, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %tif_row, align 8
  %13 = load i32, ptr %e, align 4
  %tobool4 = icmp ne i32 %13, 0
  br i1 %tobool4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then2
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_postdecode = getelementptr inbounds %struct.tiff, ptr %14, i32 0, i32 54
  %15 = load ptr, ptr %tif_postdecode, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %17 = load ptr, ptr %buf.addr, align 8
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_scanlinesize6 = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 38
  %19 = load i32, ptr %tif_scanlinesize6, align 8
  call void %15(ptr noundef %16, ptr noundef %17, i32 noundef %19)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then2
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  %20 = load i32, ptr %e, align 4
  %cmp9 = icmp sgt i32 %20, 0
  %21 = zext i1 %cmp9 to i64
  %cond = select i1 %cmp9, i32 1, i32 -1
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @TIFFCheckRead(ptr noundef %tif, i32 noundef %tiles) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tiles.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %tiles, ptr %tiles.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %tif_mode, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %tif_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %3, ptr noundef @.str.22)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %tiles.addr, align 4
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 3
  %6 = load i32, ptr %tif_flags, align 8
  %and = and i32 %6, 1024
  %cmp1 = icmp ne i32 %and, 0
  %conv = zext i1 %cmp1 to i32
  %xor = xor i32 %4, %conv
  %tobool = icmp ne i32 %xor, 0
  br i1 %tobool, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_name3 = getelementptr inbounds %struct.tiff, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %tif_name3, align 8
  %9 = load i32, ptr %tiles.addr, align 4
  %tobool4 = icmp ne i32 %9, 0
  %10 = zext i1 %tobool4 to i64
  %cond = select i1 %tobool4, ptr @.str.23, ptr @.str.24
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %8, ptr noundef %cond)
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then2, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @TIFFSeek(ptr noundef %tif, i32 noundef %row, i16 noundef zeroext %sample) #0 {
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
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %td_imagelength, align 4
  %cmp = icmp uge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %tif_name, align 8
  %6 = load i32, ptr %row.addr, align 4
  %conv = zext i32 %6 to i64
  %7 = load ptr, ptr %td, align 8
  %td_imagelength1 = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %td_imagelength1, align 4
  %conv2 = zext i32 %8 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %5, ptr noundef @.str.10, i64 noundef %conv, i64 noundef %conv2)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %9, i32 0, i32 24
  %10 = load i16, ptr %td_planarconfig, align 2
  %conv3 = zext i16 %10 to i32
  %cmp4 = icmp eq i32 %conv3, 2
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %11 = load i16, ptr %sample.addr, align 2
  %conv7 = zext i16 %11 to i32
  %12 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %12, i32 0, i32 15
  %13 = load i16, ptr %td_samplesperpixel, align 2
  %conv8 = zext i16 %13 to i32
  %cmp9 = icmp sge i32 %conv7, %conv8
  br i1 %cmp9, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.then6
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_name12 = getelementptr inbounds %struct.tiff, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %tif_name12, align 8
  %16 = load i16, ptr %sample.addr, align 2
  %conv13 = zext i16 %16 to i64
  %17 = load ptr, ptr %td, align 8
  %td_samplesperpixel14 = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i32 0, i32 15
  %18 = load i16, ptr %td_samplesperpixel14, align 2
  %conv15 = zext i16 %18 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %15, ptr noundef @.str.11, i64 noundef %conv13, i64 noundef %conv15)
  store i32 0, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.then6
  %19 = load i16, ptr %sample.addr, align 2
  %conv17 = zext i16 %19 to i32
  %20 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %20, i32 0, i32 42
  %21 = load i32, ptr %td_stripsperimage, align 8
  %mul = mul i32 %conv17, %21
  %22 = load i32, ptr %row.addr, align 4
  %23 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %23, i32 0, i32 16
  %24 = load i32, ptr %td_rowsperstrip, align 4
  %div = udiv i32 %22, %24
  %add = add i32 %mul, %div
  store i32 %add, ptr %strip, align 4
  br label %if.end20

if.else:                                          ; preds = %if.end
  %25 = load i32, ptr %row.addr, align 4
  %26 = load ptr, ptr %td, align 8
  %td_rowsperstrip18 = getelementptr inbounds %struct.TIFFDirectory, ptr %26, i32 0, i32 16
  %27 = load i32, ptr %td_rowsperstrip18, align 4
  %div19 = udiv i32 %25, %27
  store i32 %div19, ptr %strip, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.end16
  %28 = load i32, ptr %strip, align 4
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %29, i32 0, i32 13
  %30 = load i32, ptr %tif_curstrip, align 8
  %cmp21 = icmp ne i32 %28, %30
  br i1 %cmp21, label %if.then23, label %if.else26

if.then23:                                        ; preds = %if.end20
  %31 = load ptr, ptr %tif.addr, align 8
  %32 = load i32, ptr %strip, align 4
  %call = call i32 @TIFFFillStrip(ptr noundef %31, i32 noundef %32)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.then23
  store i32 0, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.then23
  br label %if.end35

if.else26:                                        ; preds = %if.end20
  %33 = load i32, ptr %row.addr, align 4
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %34, i32 0, i32 11
  %35 = load i32, ptr %tif_row, align 8
  %cmp27 = icmp ult i32 %33, %35
  br i1 %cmp27, label %if.then29, label %if.end34

if.then29:                                        ; preds = %if.else26
  %36 = load ptr, ptr %tif.addr, align 8
  %37 = load i32, ptr %strip, align 4
  %call30 = call i32 @TIFFStartStrip(ptr noundef %36, i32 noundef %37)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.then29
  store i32 0, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.then29
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.else26
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end25
  %38 = load i32, ptr %row.addr, align 4
  %39 = load ptr, ptr %tif.addr, align 8
  %tif_row36 = getelementptr inbounds %struct.tiff, ptr %39, i32 0, i32 11
  %40 = load i32, ptr %tif_row36, align 8
  %cmp37 = icmp ne i32 %38, %40
  br i1 %cmp37, label %if.then39, label %if.end46

if.then39:                                        ; preds = %if.end35
  %41 = load ptr, ptr %tif.addr, align 8
  %tif_seek = getelementptr inbounds %struct.tiff, ptr %41, i32 0, i32 33
  %42 = load ptr, ptr %tif_seek, align 8
  %43 = load ptr, ptr %tif.addr, align 8
  %44 = load i32, ptr %row.addr, align 4
  %45 = load ptr, ptr %tif.addr, align 8
  %tif_row40 = getelementptr inbounds %struct.tiff, ptr %45, i32 0, i32 11
  %46 = load i32, ptr %tif_row40, align 8
  %sub = sub i32 %44, %46
  %call41 = call i32 %42(ptr noundef %43, i32 noundef %sub)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.then39
  store i32 0, ptr %retval, align 4
  br label %return

if.end44:                                         ; preds = %if.then39
  %47 = load i32, ptr %row.addr, align 4
  %48 = load ptr, ptr %tif.addr, align 8
  %tif_row45 = getelementptr inbounds %struct.tiff, ptr %48, i32 0, i32 11
  store i32 %47, ptr %tif_row45, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.end44, %if.end35
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end46, %if.then43, %if.then32, %if.then24, %if.then11, %if.then
  %49 = load i32, ptr %retval, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFReadEncodedStrip(ptr noundef %tif, i32 noundef %strip, ptr noundef %buf, i32 noundef %size) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %strip.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %td = alloca ptr, align 8
  %nrows = alloca i32, align 4
  %stripsize = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %strip, ptr %strip.addr, align 4
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFCheckRead(ptr noundef %1, i32 noundef 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %strip.addr, align 4
  %3 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 43
  %4 = load i32, ptr %td_nstrips, align 4
  %cmp = icmp uge i32 %2, %4
  br i1 %cmp, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %tif_name, align 8
  %7 = load i32, ptr %strip.addr, align 4
  %conv = zext i32 %7 to i64
  %8 = load ptr, ptr %td, align 8
  %td_nstrips2 = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i32 0, i32 43
  %9 = load i32, ptr %td_nstrips2, align 4
  %conv3 = zext i32 %9 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %6, ptr noundef @.str, i64 noundef %conv, i64 noundef %conv3)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %10 = load i32, ptr %strip.addr, align 4
  %11 = load ptr, ptr %td, align 8
  %td_nstrips5 = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i32 0, i32 43
  %12 = load i32, ptr %td_nstrips5, align 4
  %sub = sub i32 %12, 1
  %cmp6 = icmp ne i32 %10, %sub
  br i1 %cmp6, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %13 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %td_imagelength, align 4
  %15 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i32 0, i32 16
  %16 = load i32, ptr %td_rowsperstrip, align 4
  %rem = urem i32 %14, %16
  store i32 %rem, ptr %nrows, align 4
  %cmp8 = icmp eq i32 %rem, 0
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %lor.lhs.false, %if.end4
  %17 = load ptr, ptr %td, align 8
  %td_rowsperstrip11 = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i32 0, i32 16
  %18 = load i32, ptr %td_rowsperstrip11, align 4
  store i32 %18, ptr %nrows, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %lor.lhs.false
  %19 = load ptr, ptr %tif.addr, align 8
  %20 = load i32, ptr %nrows, align 4
  %call13 = call i32 @TIFFVStripSize(ptr noundef %19, i32 noundef %20)
  store i32 %call13, ptr %stripsize, align 4
  %21 = load i32, ptr %size.addr, align 4
  %cmp14 = icmp eq i32 %21, -1
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end12
  %22 = load i32, ptr %stripsize, align 4
  store i32 %22, ptr %size.addr, align 4
  br label %if.end21

if.else:                                          ; preds = %if.end12
  %23 = load i32, ptr %size.addr, align 4
  %24 = load i32, ptr %stripsize, align 4
  %cmp17 = icmp sgt i32 %23, %24
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.else
  %25 = load i32, ptr %stripsize, align 4
  store i32 %25, ptr %size.addr, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.else
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then16
  %26 = load ptr, ptr %tif.addr, align 8
  %27 = load i32, ptr %strip.addr, align 4
  %call22 = call i32 @TIFFFillStrip(ptr noundef %26, i32 noundef %27)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %land.lhs.true, label %if.else28

land.lhs.true:                                    ; preds = %if.end21
  %28 = load ptr, ptr %tif.addr, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %28, i32 0, i32 28
  %29 = load ptr, ptr %tif_decodestrip, align 8
  %30 = load ptr, ptr %tif.addr, align 8
  %31 = load ptr, ptr %buf.addr, align 8
  %32 = load i32, ptr %size.addr, align 4
  %33 = load i32, ptr %strip.addr, align 4
  %34 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %34, i32 0, i32 42
  %35 = load i32, ptr %td_stripsperimage, align 8
  %div = udiv i32 %33, %35
  %conv24 = trunc i32 %div to i16
  %call25 = call i32 %29(ptr noundef %30, ptr noundef %31, i32 noundef %32, i16 noundef zeroext %conv24)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %land.lhs.true
  %36 = load ptr, ptr %tif.addr, align 8
  %tif_postdecode = getelementptr inbounds %struct.tiff, ptr %36, i32 0, i32 54
  %37 = load ptr, ptr %tif_postdecode, align 8
  %38 = load ptr, ptr %tif.addr, align 8
  %39 = load ptr, ptr %buf.addr, align 8
  %40 = load i32, ptr %size.addr, align 4
  call void %37(ptr noundef %38, ptr noundef %39, i32 noundef %40)
  %41 = load i32, ptr %size.addr, align 4
  store i32 %41, ptr %retval, align 4
  br label %return

if.else28:                                        ; preds = %land.lhs.true, %if.end21
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else28, %if.then27, %if.then1, %if.then
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

declare i32 @TIFFVStripSize(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @TIFFFillStrip(ptr noundef %tif, i32 noundef %strip) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %strip.addr = alloca i32, align 4
  %td = alloca ptr, align 8
  %bytecount = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %strip, ptr %strip.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 45
  %2 = load ptr, ptr %td_stripbytecount, align 8
  %3 = load i32, ptr %strip.addr, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  store i32 %4, ptr %bytecount, align 4
  %5 = load i32, ptr %bytecount, align 4
  %cmp = icmp sle i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %tif_name, align 8
  %8 = load i32, ptr %bytecount, align 4
  %conv = sext i32 %8 to i64
  %9 = load i32, ptr %strip.addr, align 4
  %conv1 = zext i32 %9 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %7, ptr noundef @.str.2, i64 noundef %conv, i64 noundef %conv1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %tif_flags, align 8
  %and = and i32 %11, 2048
  %cmp2 = icmp ne i32 %and, 0
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_flags4 = getelementptr inbounds %struct.tiff, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %tif_flags4, align 8
  %14 = load ptr, ptr %td, align 8
  %td_fillorder = getelementptr inbounds %struct.TIFFDirectory, ptr %14, i32 0, i32 13
  %15 = load i16, ptr %td_fillorder, align 2
  %conv5 = zext i16 %15 to i32
  %and6 = and i32 %13, %conv5
  %cmp7 = icmp ne i32 %and6, 0
  br i1 %cmp7, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_flags9 = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 3
  %17 = load i32, ptr %tif_flags9, align 8
  %and10 = and i32 %17, 256
  %tobool = icmp ne i32 %and10, 0
  br i1 %tobool, label %if.then11, label %if.else

if.then11:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_flags12 = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 3
  %19 = load i32, ptr %tif_flags12, align 8
  %and13 = and i32 %19, 512
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %land.lhs.true15, label %if.end19

land.lhs.true15:                                  ; preds = %if.then11
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %20, i32 0, i32 40
  %21 = load ptr, ptr %tif_rawdata, align 8
  %tobool16 = icmp ne ptr %21, null
  br i1 %tobool16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %land.lhs.true15
  %22 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata18 = getelementptr inbounds %struct.tiff, ptr %22, i32 0, i32 40
  %23 = load ptr, ptr %tif_rawdata18, align 8
  call void @_TIFFfree(ptr noundef %23)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %land.lhs.true15, %if.then11
  %24 = load ptr, ptr %tif.addr, align 8
  %tif_flags20 = getelementptr inbounds %struct.tiff, ptr %24, i32 0, i32 3
  %25 = load i32, ptr %tif_flags20, align 8
  %and21 = and i32 %25, -513
  store i32 %and21, ptr %tif_flags20, align 8
  %26 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %26, i32 0, i32 44
  %27 = load ptr, ptr %td_stripoffset, align 8
  %28 = load i32, ptr %strip.addr, align 4
  %idxprom22 = zext i32 %28 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %27, i64 %idxprom22
  %29 = load i32, ptr %arrayidx23, align 4
  %30 = load i32, ptr %bytecount, align 4
  %add = add nsw i32 %29, %30
  %31 = load ptr, ptr %tif.addr, align 8
  %tif_size = getelementptr inbounds %struct.tiff, ptr %31, i32 0, i32 45
  %32 = load i32, ptr %tif_size, align 8
  %cmp24 = icmp sgt i32 %add, %32
  br i1 %cmp24, label %if.then26, label %if.end36

if.then26:                                        ; preds = %if.end19
  %33 = load ptr, ptr %tif.addr, align 8
  %tif_name27 = getelementptr inbounds %struct.tiff, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %tif_name27, align 8
  %35 = load i32, ptr %strip.addr, align 4
  %conv28 = zext i32 %35 to i64
  %36 = load ptr, ptr %tif.addr, align 8
  %tif_size29 = getelementptr inbounds %struct.tiff, ptr %36, i32 0, i32 45
  %37 = load i32, ptr %tif_size29, align 8
  %conv30 = sext i32 %37 to i64
  %38 = load ptr, ptr %td, align 8
  %td_stripoffset31 = getelementptr inbounds %struct.TIFFDirectory, ptr %38, i32 0, i32 44
  %39 = load ptr, ptr %td_stripoffset31, align 8
  %40 = load i32, ptr %strip.addr, align 4
  %idxprom32 = zext i32 %40 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %39, i64 %idxprom32
  %41 = load i32, ptr %arrayidx33, align 4
  %conv34 = zext i32 %41 to i64
  %sub = sub i64 %conv30, %conv34
  %42 = load i32, ptr %bytecount, align 4
  %conv35 = sext i32 %42 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFFillStrip.module, ptr noundef @.str.15, ptr noundef %34, i64 noundef %conv28, i64 noundef %sub, i64 noundef %conv35)
  %43 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %43, i32 0, i32 13
  store i32 -1, ptr %tif_curstrip, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.end19
  %44 = load i32, ptr %bytecount, align 4
  %45 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %45, i32 0, i32 41
  store i32 %44, ptr %tif_rawdatasize, align 8
  %46 = load ptr, ptr %tif.addr, align 8
  %tif_base = getelementptr inbounds %struct.tiff, ptr %46, i32 0, i32 44
  %47 = load ptr, ptr %tif_base, align 8
  %48 = load ptr, ptr %td, align 8
  %td_stripoffset37 = getelementptr inbounds %struct.TIFFDirectory, ptr %48, i32 0, i32 44
  %49 = load ptr, ptr %td_stripoffset37, align 8
  %50 = load i32, ptr %strip.addr, align 4
  %idxprom38 = zext i32 %50 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %49, i64 %idxprom38
  %51 = load i32, ptr %arrayidx39, align 4
  %idx.ext = zext i32 %51 to i64
  %add.ptr = getelementptr inbounds i8, ptr %47, i64 %idx.ext
  %52 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata40 = getelementptr inbounds %struct.tiff, ptr %52, i32 0, i32 40
  store ptr %add.ptr, ptr %tif_rawdata40, align 8
  br label %if.end80

if.else:                                          ; preds = %lor.lhs.false, %if.end
  %53 = load i32, ptr %bytecount, align 4
  %54 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize41 = getelementptr inbounds %struct.tiff, ptr %54, i32 0, i32 41
  %55 = load i32, ptr %tif_rawdatasize41, align 8
  %cmp42 = icmp sgt i32 %53, %55
  br i1 %cmp42, label %if.then44, label %if.end58

if.then44:                                        ; preds = %if.else
  %56 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip45 = getelementptr inbounds %struct.tiff, ptr %56, i32 0, i32 13
  store i32 -1, ptr %tif_curstrip45, align 8
  %57 = load ptr, ptr %tif.addr, align 8
  %tif_flags46 = getelementptr inbounds %struct.tiff, ptr %57, i32 0, i32 3
  %58 = load i32, ptr %tif_flags46, align 8
  %and47 = and i32 %58, 512
  %cmp48 = icmp eq i32 %and47, 0
  br i1 %cmp48, label %if.then50, label %if.end53

if.then50:                                        ; preds = %if.then44
  %59 = load ptr, ptr %tif.addr, align 8
  %tif_name51 = getelementptr inbounds %struct.tiff, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %tif_name51, align 8
  %61 = load i32, ptr %strip.addr, align 4
  %conv52 = zext i32 %61 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFFillStrip.module, ptr noundef @.str.16, ptr noundef %60, i64 noundef %conv52)
  store i32 0, ptr %retval, align 4
  br label %return

if.end53:                                         ; preds = %if.then44
  %62 = load ptr, ptr %tif.addr, align 8
  %63 = load i32, ptr %bytecount, align 4
  %add54 = add i32 %63, 1023
  %div = udiv i32 %add54, 1024
  %mul = mul i32 %div, 1024
  %call = call i32 @TIFFReadBufferSetup(ptr noundef %62, ptr noundef null, i32 noundef %mul)
  %tobool55 = icmp ne i32 %call, 0
  br i1 %tobool55, label %if.end57, label %if.then56

if.then56:                                        ; preds = %if.end53
  store i32 0, ptr %retval, align 4
  br label %return

if.end57:                                         ; preds = %if.end53
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.else
  %64 = load ptr, ptr %tif.addr, align 8
  %65 = load i32, ptr %strip.addr, align 4
  %66 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata59 = getelementptr inbounds %struct.tiff, ptr %66, i32 0, i32 40
  %67 = load ptr, ptr %tif_rawdata59, align 8
  %68 = load i32, ptr %bytecount, align 4
  %call60 = call i32 @TIFFReadRawStrip1(ptr noundef %64, i32 noundef %65, ptr noundef %67, i32 noundef %68, ptr noundef @TIFFFillStrip.module)
  %69 = load i32, ptr %bytecount, align 4
  %cmp61 = icmp ne i32 %call60, %69
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end58
  store i32 0, ptr %retval, align 4
  br label %return

if.end64:                                         ; preds = %if.end58
  %70 = load ptr, ptr %tif.addr, align 8
  %tif_flags65 = getelementptr inbounds %struct.tiff, ptr %70, i32 0, i32 3
  %71 = load i32, ptr %tif_flags65, align 8
  %72 = load ptr, ptr %td, align 8
  %td_fillorder66 = getelementptr inbounds %struct.TIFFDirectory, ptr %72, i32 0, i32 13
  %73 = load i16, ptr %td_fillorder66, align 2
  %conv67 = zext i16 %73 to i32
  %and68 = and i32 %71, %conv67
  %cmp69 = icmp ne i32 %and68, 0
  br i1 %cmp69, label %if.end79, label %land.lhs.true71

land.lhs.true71:                                  ; preds = %if.end64
  %74 = load ptr, ptr %tif.addr, align 8
  %tif_flags72 = getelementptr inbounds %struct.tiff, ptr %74, i32 0, i32 3
  %75 = load i32, ptr %tif_flags72, align 8
  %and73 = and i32 %75, 256
  %cmp74 = icmp eq i32 %and73, 0
  br i1 %cmp74, label %if.then76, label %if.end79

if.then76:                                        ; preds = %land.lhs.true71
  %76 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata77 = getelementptr inbounds %struct.tiff, ptr %76, i32 0, i32 40
  %77 = load ptr, ptr %tif_rawdata77, align 8
  %78 = load i32, ptr %bytecount, align 4
  %conv78 = sext i32 %78 to i64
  call void @TIFFReverseBits(ptr noundef %77, i64 noundef %conv78)
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %land.lhs.true71, %if.end64
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.end36
  %79 = load ptr, ptr %tif.addr, align 8
  %80 = load i32, ptr %strip.addr, align 4
  %call81 = call i32 @TIFFStartStrip(ptr noundef %79, i32 noundef %80)
  store i32 %call81, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end80, %if.then63, %if.then56, %if.then50, %if.then26, %if.then
  %81 = load i32, ptr %retval, align 4
  ret i32 %81
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFReadRawStrip(ptr noundef %tif, i32 noundef %strip, ptr noundef %buf, i32 noundef %size) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %strip.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %td = alloca ptr, align 8
  %bytecount = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %strip, ptr %strip.addr, align 4
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFCheckRead(ptr noundef %1, i32 noundef 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %strip.addr, align 4
  %3 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 43
  %4 = load i32, ptr %td_nstrips, align 4
  %cmp = icmp uge i32 %2, %4
  br i1 %cmp, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %tif_name, align 8
  %7 = load i32, ptr %strip.addr, align 4
  %conv = zext i32 %7 to i64
  %8 = load ptr, ptr %td, align 8
  %td_nstrips2 = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i32 0, i32 43
  %9 = load i32, ptr %td_nstrips2, align 4
  %conv3 = zext i32 %9 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %6, ptr noundef @.str.1, i64 noundef %conv, i64 noundef %conv3)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %10 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i32 0, i32 45
  %11 = load ptr, ptr %td_stripbytecount, align 8
  %12 = load i32, ptr %strip.addr, align 4
  %idxprom = zext i32 %12 to i64
  %arrayidx = getelementptr inbounds i32, ptr %11, i64 %idxprom
  %13 = load i32, ptr %arrayidx, align 4
  store i32 %13, ptr %bytecount, align 4
  %14 = load i32, ptr %bytecount, align 4
  %cmp5 = icmp sle i32 %14, 0
  br i1 %cmp5, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.end4
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_name8 = getelementptr inbounds %struct.tiff, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %tif_name8, align 8
  %17 = load i32, ptr %bytecount, align 4
  %conv9 = sext i32 %17 to i64
  %18 = load i32, ptr %strip.addr, align 4
  %conv10 = zext i32 %18 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %16, ptr noundef @.str.2, i64 noundef %conv9, i64 noundef %conv10)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end4
  %19 = load i32, ptr %size.addr, align 4
  %cmp12 = icmp ne i32 %19, -1
  br i1 %cmp12, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.end11
  %20 = load i32, ptr %size.addr, align 4
  %21 = load i32, ptr %bytecount, align 4
  %cmp14 = icmp slt i32 %20, %21
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %land.lhs.true
  %22 = load i32, ptr %size.addr, align 4
  store i32 %22, ptr %bytecount, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %land.lhs.true, %if.end11
  %23 = load ptr, ptr %tif.addr, align 8
  %24 = load i32, ptr %strip.addr, align 4
  %25 = load ptr, ptr %buf.addr, align 8
  %26 = load i32, ptr %bytecount, align 4
  %call18 = call i32 @TIFFReadRawStrip1(ptr noundef %23, i32 noundef %24, ptr noundef %25, i32 noundef %26, ptr noundef @TIFFReadRawStrip.module)
  store i32 %call18, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then7, %if.then1, %if.then
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @TIFFReadRawStrip1(ptr noundef %tif, i32 noundef %strip, ptr noundef %buf, i32 noundef %size, ptr noundef %module) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %strip.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %module.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %cc = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %strip, ptr %strip.addr, align 4
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  store ptr %module, ptr %module.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %tif_flags, align 8
  %and = and i32 %2, 2048
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 51
  %4 = load ptr, ptr %tif_seekproc, align 8
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 48
  %6 = load ptr, ptr %tif_clientdata, align 8
  %7 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i32 0, i32 44
  %8 = load ptr, ptr %td_stripoffset, align 8
  %9 = load i32, ptr %strip.addr, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, ptr %8, i64 %idxprom
  %10 = load i32, ptr %arrayidx, align 4
  %call = call i32 %4(ptr noundef %6, i32 noundef %10, i32 noundef 0)
  %11 = load ptr, ptr %td, align 8
  %td_stripoffset1 = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i32 0, i32 44
  %12 = load ptr, ptr %td_stripoffset1, align 8
  %13 = load i32, ptr %strip.addr, align 4
  %idxprom2 = zext i32 %13 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %12, i64 %idxprom2
  %14 = load i32, ptr %arrayidx3, align 4
  %cmp4 = icmp eq i32 %call, %14
  br i1 %cmp4, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then
  %15 = load ptr, ptr %module.addr, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %tif_name, align 8
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 11
  %19 = load i32, ptr %tif_row, align 8
  %conv = zext i32 %19 to i64
  %20 = load i32, ptr %strip.addr, align 4
  %conv6 = zext i32 %20 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %15, ptr noundef @.str.12, ptr noundef %17, i64 noundef %conv, i64 noundef %conv6)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %21 = load ptr, ptr %tif.addr, align 8
  %tif_readproc = getelementptr inbounds %struct.tiff, ptr %21, i32 0, i32 49
  %22 = load ptr, ptr %tif_readproc, align 8
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata7 = getelementptr inbounds %struct.tiff, ptr %23, i32 0, i32 48
  %24 = load ptr, ptr %tif_clientdata7, align 8
  %25 = load ptr, ptr %buf.addr, align 8
  %26 = load i32, ptr %size.addr, align 4
  %call8 = call i32 %22(ptr noundef %24, ptr noundef %25, i32 noundef %26)
  store i32 %call8, ptr %cc, align 4
  %27 = load i32, ptr %cc, align 4
  %28 = load i32, ptr %size.addr, align 4
  %cmp9 = icmp ne i32 %27, %28
  br i1 %cmp9, label %if.then11, label %if.end17

if.then11:                                        ; preds = %if.end
  %29 = load ptr, ptr %module.addr, align 8
  %30 = load ptr, ptr %tif.addr, align 8
  %tif_name12 = getelementptr inbounds %struct.tiff, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %tif_name12, align 8
  %32 = load ptr, ptr %tif.addr, align 8
  %tif_row13 = getelementptr inbounds %struct.tiff, ptr %32, i32 0, i32 11
  %33 = load i32, ptr %tif_row13, align 8
  %conv14 = zext i32 %33 to i64
  %34 = load i32, ptr %cc, align 4
  %conv15 = sext i32 %34 to i64
  %35 = load i32, ptr %size.addr, align 4
  %conv16 = sext i32 %35 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %29, ptr noundef @.str.13, ptr noundef %31, i64 noundef %conv14, i64 noundef %conv15, i64 noundef %conv16)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end
  br label %if.end39

if.else:                                          ; preds = %entry
  %36 = load ptr, ptr %td, align 8
  %td_stripoffset18 = getelementptr inbounds %struct.TIFFDirectory, ptr %36, i32 0, i32 44
  %37 = load ptr, ptr %td_stripoffset18, align 8
  %38 = load i32, ptr %strip.addr, align 4
  %idxprom19 = zext i32 %38 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %37, i64 %idxprom19
  %39 = load i32, ptr %arrayidx20, align 4
  %40 = load i32, ptr %size.addr, align 4
  %add = add i32 %39, %40
  %41 = load ptr, ptr %tif.addr, align 8
  %tif_size = getelementptr inbounds %struct.tiff, ptr %41, i32 0, i32 45
  %42 = load i32, ptr %tif_size, align 8
  %cmp21 = icmp sgt i32 %add, %42
  br i1 %cmp21, label %if.then23, label %if.end35

if.then23:                                        ; preds = %if.else
  %43 = load ptr, ptr %module.addr, align 8
  %44 = load ptr, ptr %tif.addr, align 8
  %tif_name24 = getelementptr inbounds %struct.tiff, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %tif_name24, align 8
  %46 = load ptr, ptr %tif.addr, align 8
  %tif_row25 = getelementptr inbounds %struct.tiff, ptr %46, i32 0, i32 11
  %47 = load i32, ptr %tif_row25, align 8
  %conv26 = zext i32 %47 to i64
  %48 = load i32, ptr %strip.addr, align 4
  %conv27 = zext i32 %48 to i64
  %49 = load ptr, ptr %tif.addr, align 8
  %tif_size28 = getelementptr inbounds %struct.tiff, ptr %49, i32 0, i32 45
  %50 = load i32, ptr %tif_size28, align 8
  %conv29 = sext i32 %50 to i64
  %51 = load ptr, ptr %td, align 8
  %td_stripoffset30 = getelementptr inbounds %struct.TIFFDirectory, ptr %51, i32 0, i32 44
  %52 = load ptr, ptr %td_stripoffset30, align 8
  %53 = load i32, ptr %strip.addr, align 4
  %idxprom31 = zext i32 %53 to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %52, i64 %idxprom31
  %54 = load i32, ptr %arrayidx32, align 4
  %conv33 = zext i32 %54 to i64
  %sub = sub i64 %conv29, %conv33
  %55 = load i32, ptr %size.addr, align 4
  %conv34 = sext i32 %55 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %43, ptr noundef @.str.14, ptr noundef %45, i64 noundef %conv26, i64 noundef %conv27, i64 noundef %sub, i64 noundef %conv34)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.else
  %56 = load ptr, ptr %buf.addr, align 8
  %57 = load ptr, ptr %tif.addr, align 8
  %tif_base = getelementptr inbounds %struct.tiff, ptr %57, i32 0, i32 44
  %58 = load ptr, ptr %tif_base, align 8
  %59 = load ptr, ptr %td, align 8
  %td_stripoffset36 = getelementptr inbounds %struct.TIFFDirectory, ptr %59, i32 0, i32 44
  %60 = load ptr, ptr %td_stripoffset36, align 8
  %61 = load i32, ptr %strip.addr, align 4
  %idxprom37 = zext i32 %61 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %60, i64 %idxprom37
  %62 = load i32, ptr %arrayidx38, align 4
  %idx.ext = zext i32 %62 to i64
  %add.ptr = getelementptr inbounds i8, ptr %58, i64 %idx.ext
  %63 = load i32, ptr %size.addr, align 4
  call void @_TIFFmemcpy(ptr noundef %56, ptr noundef %add.ptr, i32 noundef %63)
  br label %if.end39

if.end39:                                         ; preds = %if.end35, %if.end17
  %64 = load i32, ptr %size.addr, align 4
  store i32 %64, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end39, %if.then23, %if.then11, %if.then5
  %65 = load i32, ptr %retval, align 4
  ret i32 %65
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFReadTile(ptr noundef %tif, ptr noundef %buf, i32 noundef %x, i32 noundef %y, i32 noundef %z, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %z, ptr %z.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFCheckRead(ptr noundef %0, i32 noundef 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %y.addr, align 4
  %4 = load i32, ptr %z.addr, align 4
  %5 = load i16, ptr %s.addr, align 2
  %call1 = call i32 @TIFFCheckTile(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i16 noundef zeroext %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %tif.addr, align 8
  %7 = load ptr, ptr %tif.addr, align 8
  %8 = load i32, ptr %x.addr, align 4
  %9 = load i32, ptr %y.addr, align 4
  %10 = load i32, ptr %z.addr, align 4
  %11 = load i16, ptr %s.addr, align 2
  %call3 = call i32 @TIFFComputeTile(ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i16 noundef zeroext %11)
  %12 = load ptr, ptr %buf.addr, align 8
  %call4 = call i32 @TIFFReadEncodedTile(ptr noundef %6, i32 noundef %call3, ptr noundef %12, i32 noundef -1)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

declare i32 @TIFFCheckTile(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFReadEncodedTile(ptr noundef %tif, i32 noundef %tile, ptr noundef %buf, i32 noundef %size) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tile.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %td = alloca ptr, align 8
  %tilesize = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %tile, ptr %tile.addr, align 4
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_tilesize = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 20
  %2 = load i32, ptr %tif_tilesize, align 4
  store i32 %2, ptr %tilesize, align 4
  %3 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFCheckRead(ptr noundef %3, i32 noundef 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %tile.addr, align 4
  %5 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i32 0, i32 43
  %6 = load i32, ptr %td_nstrips, align 4
  %cmp = icmp uge i32 %4, %6
  br i1 %cmp, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %tif_name, align 8
  %9 = load i32, ptr %tile.addr, align 4
  %conv = zext i32 %9 to i64
  %10 = load ptr, ptr %td, align 8
  %td_nstrips2 = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i32 0, i32 43
  %11 = load i32, ptr %td_nstrips2, align 4
  %conv3 = zext i32 %11 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %8, ptr noundef @.str.3, i64 noundef %conv, i64 noundef %conv3)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %12 = load i32, ptr %size.addr, align 4
  %cmp5 = icmp eq i32 %12, -1
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  %13 = load i32, ptr %tilesize, align 4
  store i32 %13, ptr %size.addr, align 4
  br label %if.end12

if.else:                                          ; preds = %if.end4
  %14 = load i32, ptr %size.addr, align 4
  %15 = load i32, ptr %tilesize, align 4
  %cmp8 = icmp sgt i32 %14, %15
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.else
  %16 = load i32, ptr %tilesize, align 4
  store i32 %16, ptr %size.addr, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then7
  %17 = load ptr, ptr %tif.addr, align 8
  %18 = load i32, ptr %tile.addr, align 4
  %call13 = call i32 @TIFFFillTile(ptr noundef %17, i32 noundef %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.lhs.true, label %if.else19

land.lhs.true:                                    ; preds = %if.end12
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %19, i32 0, i32 30
  %20 = load ptr, ptr %tif_decodetile, align 8
  %21 = load ptr, ptr %tif.addr, align 8
  %22 = load ptr, ptr %buf.addr, align 8
  %23 = load i32, ptr %size.addr, align 4
  %24 = load i32, ptr %tile.addr, align 4
  %25 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i32 0, i32 42
  %26 = load i32, ptr %td_stripsperimage, align 8
  %div = udiv i32 %24, %26
  %conv15 = trunc i32 %div to i16
  %call16 = call i32 %20(ptr noundef %21, ptr noundef %22, i32 noundef %23, i16 noundef zeroext %conv15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %land.lhs.true
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_postdecode = getelementptr inbounds %struct.tiff, ptr %27, i32 0, i32 54
  %28 = load ptr, ptr %tif_postdecode, align 8
  %29 = load ptr, ptr %tif.addr, align 8
  %30 = load ptr, ptr %buf.addr, align 8
  %31 = load i32, ptr %size.addr, align 4
  call void %28(ptr noundef %29, ptr noundef %30, i32 noundef %31)
  %32 = load i32, ptr %size.addr, align 4
  store i32 %32, ptr %retval, align 4
  br label %return

if.else19:                                        ; preds = %land.lhs.true, %if.end12
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else19, %if.then18, %if.then1, %if.then
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

declare i32 @TIFFComputeTile(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @TIFFFillTile(ptr noundef %tif, i32 noundef %tile) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tile.addr = alloca i32, align 4
  %td = alloca ptr, align 8
  %bytecount = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %tile, ptr %tile.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 45
  %2 = load ptr, ptr %td_stripbytecount, align 8
  %3 = load i32, ptr %tile.addr, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  store i32 %4, ptr %bytecount, align 4
  %5 = load i32, ptr %bytecount, align 4
  %cmp = icmp sle i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %tif_name, align 8
  %8 = load i32, ptr %bytecount, align 4
  %conv = sext i32 %8 to i64
  %9 = load i32, ptr %tile.addr, align 4
  %conv1 = zext i32 %9 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %7, ptr noundef @.str.20, i64 noundef %conv, i64 noundef %conv1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %tif_flags, align 8
  %and = and i32 %11, 2048
  %cmp2 = icmp ne i32 %and, 0
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_flags4 = getelementptr inbounds %struct.tiff, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %tif_flags4, align 8
  %14 = load ptr, ptr %td, align 8
  %td_fillorder = getelementptr inbounds %struct.TIFFDirectory, ptr %14, i32 0, i32 13
  %15 = load i16, ptr %td_fillorder, align 2
  %conv5 = zext i16 %15 to i32
  %and6 = and i32 %13, %conv5
  %cmp7 = icmp ne i32 %and6, 0
  br i1 %cmp7, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_flags9 = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 3
  %17 = load i32, ptr %tif_flags9, align 8
  %and10 = and i32 %17, 256
  %tobool = icmp ne i32 %and10, 0
  br i1 %tobool, label %if.then11, label %if.else

if.then11:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_flags12 = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 3
  %19 = load i32, ptr %tif_flags12, align 8
  %and13 = and i32 %19, 512
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %land.lhs.true15, label %if.end19

land.lhs.true15:                                  ; preds = %if.then11
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %20, i32 0, i32 40
  %21 = load ptr, ptr %tif_rawdata, align 8
  %tobool16 = icmp ne ptr %21, null
  br i1 %tobool16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %land.lhs.true15
  %22 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata18 = getelementptr inbounds %struct.tiff, ptr %22, i32 0, i32 40
  %23 = load ptr, ptr %tif_rawdata18, align 8
  call void @_TIFFfree(ptr noundef %23)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %land.lhs.true15, %if.then11
  %24 = load ptr, ptr %tif.addr, align 8
  %tif_flags20 = getelementptr inbounds %struct.tiff, ptr %24, i32 0, i32 3
  %25 = load i32, ptr %tif_flags20, align 8
  %and21 = and i32 %25, -513
  store i32 %and21, ptr %tif_flags20, align 8
  %26 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %26, i32 0, i32 44
  %27 = load ptr, ptr %td_stripoffset, align 8
  %28 = load i32, ptr %tile.addr, align 4
  %idxprom22 = zext i32 %28 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %27, i64 %idxprom22
  %29 = load i32, ptr %arrayidx23, align 4
  %30 = load i32, ptr %bytecount, align 4
  %add = add i32 %29, %30
  %31 = load ptr, ptr %tif.addr, align 8
  %tif_size = getelementptr inbounds %struct.tiff, ptr %31, i32 0, i32 45
  %32 = load i32, ptr %tif_size, align 8
  %cmp24 = icmp sgt i32 %add, %32
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end19
  %33 = load ptr, ptr %tif.addr, align 8
  %tif_curtile = getelementptr inbounds %struct.tiff, ptr %33, i32 0, i32 19
  store i32 -1, ptr %tif_curtile, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end19
  %34 = load i32, ptr %bytecount, align 4
  %35 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %35, i32 0, i32 41
  store i32 %34, ptr %tif_rawdatasize, align 8
  %36 = load ptr, ptr %tif.addr, align 8
  %tif_base = getelementptr inbounds %struct.tiff, ptr %36, i32 0, i32 44
  %37 = load ptr, ptr %tif_base, align 8
  %38 = load ptr, ptr %td, align 8
  %td_stripoffset28 = getelementptr inbounds %struct.TIFFDirectory, ptr %38, i32 0, i32 44
  %39 = load ptr, ptr %td_stripoffset28, align 8
  %40 = load i32, ptr %tile.addr, align 4
  %idxprom29 = zext i32 %40 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %39, i64 %idxprom29
  %41 = load i32, ptr %arrayidx30, align 4
  %idx.ext = zext i32 %41 to i64
  %add.ptr = getelementptr inbounds i8, ptr %37, i64 %idx.ext
  %42 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata31 = getelementptr inbounds %struct.tiff, ptr %42, i32 0, i32 40
  store ptr %add.ptr, ptr %tif_rawdata31, align 8
  br label %if.end71

if.else:                                          ; preds = %lor.lhs.false, %if.end
  %43 = load i32, ptr %bytecount, align 4
  %44 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize32 = getelementptr inbounds %struct.tiff, ptr %44, i32 0, i32 41
  %45 = load i32, ptr %tif_rawdatasize32, align 8
  %cmp33 = icmp sgt i32 %43, %45
  br i1 %cmp33, label %if.then35, label %if.end49

if.then35:                                        ; preds = %if.else
  %46 = load ptr, ptr %tif.addr, align 8
  %tif_curtile36 = getelementptr inbounds %struct.tiff, ptr %46, i32 0, i32 19
  store i32 -1, ptr %tif_curtile36, align 8
  %47 = load ptr, ptr %tif.addr, align 8
  %tif_flags37 = getelementptr inbounds %struct.tiff, ptr %47, i32 0, i32 3
  %48 = load i32, ptr %tif_flags37, align 8
  %and38 = and i32 %48, 512
  %cmp39 = icmp eq i32 %and38, 0
  br i1 %cmp39, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.then35
  %49 = load ptr, ptr %tif.addr, align 8
  %tif_name42 = getelementptr inbounds %struct.tiff, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %tif_name42, align 8
  %51 = load i32, ptr %tile.addr, align 4
  %conv43 = zext i32 %51 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFFillTile.module, ptr noundef @.str.21, ptr noundef %50, i64 noundef %conv43)
  store i32 0, ptr %retval, align 4
  br label %return

if.end44:                                         ; preds = %if.then35
  %52 = load ptr, ptr %tif.addr, align 8
  %53 = load i32, ptr %bytecount, align 4
  %add45 = add i32 %53, 1023
  %div = udiv i32 %add45, 1024
  %mul = mul i32 %div, 1024
  %call = call i32 @TIFFReadBufferSetup(ptr noundef %52, ptr noundef null, i32 noundef %mul)
  %tobool46 = icmp ne i32 %call, 0
  br i1 %tobool46, label %if.end48, label %if.then47

if.then47:                                        ; preds = %if.end44
  store i32 0, ptr %retval, align 4
  br label %return

if.end48:                                         ; preds = %if.end44
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.else
  %54 = load ptr, ptr %tif.addr, align 8
  %55 = load i32, ptr %tile.addr, align 4
  %56 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata50 = getelementptr inbounds %struct.tiff, ptr %56, i32 0, i32 40
  %57 = load ptr, ptr %tif_rawdata50, align 8
  %58 = load i32, ptr %bytecount, align 4
  %call51 = call i32 @TIFFReadRawTile1(ptr noundef %54, i32 noundef %55, ptr noundef %57, i32 noundef %58, ptr noundef @TIFFFillTile.module)
  %59 = load i32, ptr %bytecount, align 4
  %cmp52 = icmp ne i32 %call51, %59
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end49
  store i32 0, ptr %retval, align 4
  br label %return

if.end55:                                         ; preds = %if.end49
  %60 = load ptr, ptr %tif.addr, align 8
  %tif_flags56 = getelementptr inbounds %struct.tiff, ptr %60, i32 0, i32 3
  %61 = load i32, ptr %tif_flags56, align 8
  %62 = load ptr, ptr %td, align 8
  %td_fillorder57 = getelementptr inbounds %struct.TIFFDirectory, ptr %62, i32 0, i32 13
  %63 = load i16, ptr %td_fillorder57, align 2
  %conv58 = zext i16 %63 to i32
  %and59 = and i32 %61, %conv58
  %cmp60 = icmp ne i32 %and59, 0
  br i1 %cmp60, label %if.end70, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %if.end55
  %64 = load ptr, ptr %tif.addr, align 8
  %tif_flags63 = getelementptr inbounds %struct.tiff, ptr %64, i32 0, i32 3
  %65 = load i32, ptr %tif_flags63, align 8
  %and64 = and i32 %65, 256
  %cmp65 = icmp eq i32 %and64, 0
  br i1 %cmp65, label %if.then67, label %if.end70

if.then67:                                        ; preds = %land.lhs.true62
  %66 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata68 = getelementptr inbounds %struct.tiff, ptr %66, i32 0, i32 40
  %67 = load ptr, ptr %tif_rawdata68, align 8
  %68 = load i32, ptr %bytecount, align 4
  %conv69 = sext i32 %68 to i64
  call void @TIFFReverseBits(ptr noundef %67, i64 noundef %conv69)
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %land.lhs.true62, %if.end55
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.end27
  %69 = load ptr, ptr %tif.addr, align 8
  %70 = load i32, ptr %tile.addr, align 4
  %call72 = call i32 @TIFFStartTile(ptr noundef %69, i32 noundef %70)
  store i32 %call72, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end71, %if.then54, %if.then47, %if.then41, %if.then26, %if.then
  %71 = load i32, ptr %retval, align 4
  ret i32 %71
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFReadRawTile(ptr noundef %tif, i32 noundef %tile, ptr noundef %buf, i32 noundef %size) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tile.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %td = alloca ptr, align 8
  %bytecount = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %tile, ptr %tile.addr, align 4
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFCheckRead(ptr noundef %1, i32 noundef 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %tile.addr, align 4
  %3 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 43
  %4 = load i32, ptr %td_nstrips, align 4
  %cmp = icmp uge i32 %2, %4
  br i1 %cmp, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %tif_name, align 8
  %7 = load i32, ptr %tile.addr, align 4
  %conv = zext i32 %7 to i64
  %8 = load ptr, ptr %td, align 8
  %td_nstrips2 = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i32 0, i32 43
  %9 = load i32, ptr %td_nstrips2, align 4
  %conv3 = zext i32 %9 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %6, ptr noundef @.str.4, i64 noundef %conv, i64 noundef %conv3)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %10 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i32 0, i32 45
  %11 = load ptr, ptr %td_stripbytecount, align 8
  %12 = load i32, ptr %tile.addr, align 4
  %idxprom = zext i32 %12 to i64
  %arrayidx = getelementptr inbounds i32, ptr %11, i64 %idxprom
  %13 = load i32, ptr %arrayidx, align 4
  store i32 %13, ptr %bytecount, align 4
  %14 = load i32, ptr %size.addr, align 4
  %cmp5 = icmp ne i32 %14, -1
  br i1 %cmp5, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end4
  %15 = load i32, ptr %size.addr, align 4
  %16 = load i32, ptr %bytecount, align 4
  %cmp7 = icmp slt i32 %15, %16
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  %17 = load i32, ptr %size.addr, align 4
  store i32 %17, ptr %bytecount, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %land.lhs.true, %if.end4
  %18 = load ptr, ptr %tif.addr, align 8
  %19 = load i32, ptr %tile.addr, align 4
  %20 = load ptr, ptr %buf.addr, align 8
  %21 = load i32, ptr %bytecount, align 4
  %call11 = call i32 @TIFFReadRawTile1(ptr noundef %18, i32 noundef %19, ptr noundef %20, i32 noundef %21, ptr noundef @TIFFReadRawTile.module)
  store i32 %call11, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then1, %if.then
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @TIFFReadRawTile1(ptr noundef %tif, i32 noundef %tile, ptr noundef %buf, i32 noundef %size, ptr noundef %module) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tile.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %module.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %cc = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %tile, ptr %tile.addr, align 4
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  store ptr %module, ptr %module.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %tif_flags, align 8
  %and = and i32 %2, 2048
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 51
  %4 = load ptr, ptr %tif_seekproc, align 8
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 48
  %6 = load ptr, ptr %tif_clientdata, align 8
  %7 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i32 0, i32 44
  %8 = load ptr, ptr %td_stripoffset, align 8
  %9 = load i32, ptr %tile.addr, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, ptr %8, i64 %idxprom
  %10 = load i32, ptr %arrayidx, align 4
  %call = call i32 %4(ptr noundef %6, i32 noundef %10, i32 noundef 0)
  %11 = load ptr, ptr %td, align 8
  %td_stripoffset1 = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i32 0, i32 44
  %12 = load ptr, ptr %td_stripoffset1, align 8
  %13 = load i32, ptr %tile.addr, align 4
  %idxprom2 = zext i32 %13 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %12, i64 %idxprom2
  %14 = load i32, ptr %arrayidx3, align 4
  %cmp4 = icmp eq i32 %call, %14
  br i1 %cmp4, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then
  %15 = load ptr, ptr %module.addr, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %tif_name, align 8
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 11
  %19 = load i32, ptr %tif_row, align 8
  %conv = zext i32 %19 to i64
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_col = getelementptr inbounds %struct.tiff, ptr %20, i32 0, i32 18
  %21 = load i32, ptr %tif_col, align 4
  %conv6 = zext i32 %21 to i64
  %22 = load i32, ptr %tile.addr, align 4
  %conv7 = zext i32 %22 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %15, ptr noundef @.str.17, ptr noundef %17, i64 noundef %conv, i64 noundef %conv6, i64 noundef %conv7)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_readproc = getelementptr inbounds %struct.tiff, ptr %23, i32 0, i32 49
  %24 = load ptr, ptr %tif_readproc, align 8
  %25 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata8 = getelementptr inbounds %struct.tiff, ptr %25, i32 0, i32 48
  %26 = load ptr, ptr %tif_clientdata8, align 8
  %27 = load ptr, ptr %buf.addr, align 8
  %28 = load i32, ptr %size.addr, align 4
  %call9 = call i32 %24(ptr noundef %26, ptr noundef %27, i32 noundef %28)
  store i32 %call9, ptr %cc, align 4
  %29 = load i32, ptr %cc, align 4
  %30 = load i32, ptr %size.addr, align 4
  %cmp10 = icmp ne i32 %29, %30
  br i1 %cmp10, label %if.then12, label %if.end20

if.then12:                                        ; preds = %if.end
  %31 = load ptr, ptr %module.addr, align 8
  %32 = load ptr, ptr %tif.addr, align 8
  %tif_name13 = getelementptr inbounds %struct.tiff, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %tif_name13, align 8
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_row14 = getelementptr inbounds %struct.tiff, ptr %34, i32 0, i32 11
  %35 = load i32, ptr %tif_row14, align 8
  %conv15 = zext i32 %35 to i64
  %36 = load ptr, ptr %tif.addr, align 8
  %tif_col16 = getelementptr inbounds %struct.tiff, ptr %36, i32 0, i32 18
  %37 = load i32, ptr %tif_col16, align 4
  %conv17 = zext i32 %37 to i64
  %38 = load i32, ptr %cc, align 4
  %conv18 = sext i32 %38 to i64
  %39 = load i32, ptr %size.addr, align 4
  %conv19 = sext i32 %39 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %31, ptr noundef @.str.18, ptr noundef %33, i64 noundef %conv15, i64 noundef %conv17, i64 noundef %conv18, i64 noundef %conv19)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end
  br label %if.end44

if.else:                                          ; preds = %entry
  %40 = load ptr, ptr %td, align 8
  %td_stripoffset21 = getelementptr inbounds %struct.TIFFDirectory, ptr %40, i32 0, i32 44
  %41 = load ptr, ptr %td_stripoffset21, align 8
  %42 = load i32, ptr %tile.addr, align 4
  %idxprom22 = zext i32 %42 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %41, i64 %idxprom22
  %43 = load i32, ptr %arrayidx23, align 4
  %44 = load i32, ptr %size.addr, align 4
  %add = add i32 %43, %44
  %45 = load ptr, ptr %tif.addr, align 8
  %tif_size = getelementptr inbounds %struct.tiff, ptr %45, i32 0, i32 45
  %46 = load i32, ptr %tif_size, align 8
  %cmp24 = icmp sgt i32 %add, %46
  br i1 %cmp24, label %if.then26, label %if.end40

if.then26:                                        ; preds = %if.else
  %47 = load ptr, ptr %module.addr, align 8
  %48 = load ptr, ptr %tif.addr, align 8
  %tif_name27 = getelementptr inbounds %struct.tiff, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %tif_name27, align 8
  %50 = load ptr, ptr %tif.addr, align 8
  %tif_row28 = getelementptr inbounds %struct.tiff, ptr %50, i32 0, i32 11
  %51 = load i32, ptr %tif_row28, align 8
  %conv29 = zext i32 %51 to i64
  %52 = load ptr, ptr %tif.addr, align 8
  %tif_col30 = getelementptr inbounds %struct.tiff, ptr %52, i32 0, i32 18
  %53 = load i32, ptr %tif_col30, align 4
  %conv31 = zext i32 %53 to i64
  %54 = load i32, ptr %tile.addr, align 4
  %conv32 = zext i32 %54 to i64
  %55 = load ptr, ptr %tif.addr, align 8
  %tif_size33 = getelementptr inbounds %struct.tiff, ptr %55, i32 0, i32 45
  %56 = load i32, ptr %tif_size33, align 8
  %conv34 = sext i32 %56 to i64
  %57 = load ptr, ptr %td, align 8
  %td_stripoffset35 = getelementptr inbounds %struct.TIFFDirectory, ptr %57, i32 0, i32 44
  %58 = load ptr, ptr %td_stripoffset35, align 8
  %59 = load i32, ptr %tile.addr, align 4
  %idxprom36 = zext i32 %59 to i64
  %arrayidx37 = getelementptr inbounds i32, ptr %58, i64 %idxprom36
  %60 = load i32, ptr %arrayidx37, align 4
  %conv38 = zext i32 %60 to i64
  %sub = sub i64 %conv34, %conv38
  %61 = load i32, ptr %size.addr, align 4
  %conv39 = sext i32 %61 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %47, ptr noundef @.str.19, ptr noundef %49, i64 noundef %conv29, i64 noundef %conv31, i64 noundef %conv32, i64 noundef %sub, i64 noundef %conv39)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end40:                                         ; preds = %if.else
  %62 = load ptr, ptr %buf.addr, align 8
  %63 = load ptr, ptr %tif.addr, align 8
  %tif_base = getelementptr inbounds %struct.tiff, ptr %63, i32 0, i32 44
  %64 = load ptr, ptr %tif_base, align 8
  %65 = load ptr, ptr %td, align 8
  %td_stripoffset41 = getelementptr inbounds %struct.TIFFDirectory, ptr %65, i32 0, i32 44
  %66 = load ptr, ptr %td_stripoffset41, align 8
  %67 = load i32, ptr %tile.addr, align 4
  %idxprom42 = zext i32 %67 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %66, i64 %idxprom42
  %68 = load i32, ptr %arrayidx43, align 4
  %idx.ext = zext i32 %68 to i64
  %add.ptr = getelementptr inbounds i8, ptr %64, i64 %idx.ext
  %69 = load i32, ptr %size.addr, align 4
  call void @_TIFFmemcpy(ptr noundef %62, ptr noundef %add.ptr, i32 noundef %69)
  br label %if.end44

if.end44:                                         ; preds = %if.end40, %if.end20
  %70 = load i32, ptr %size.addr, align 4
  store i32 %70, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end44, %if.then26, %if.then12, %if.then5
  %71 = load i32, ptr %retval, align 4
  ret i32 %71
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFReadBufferSetup(ptr noundef %tif, ptr noundef %bp, i32 noundef %size) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 40
  %1 = load ptr, ptr %tif_rawdata, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %tif_flags, align 8
  %and = and i32 %3, 512
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata3 = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 40
  %5 = load ptr, ptr %tif_rawdata3, align 8
  call void @_TIFFfree(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata4 = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 40
  store ptr null, ptr %tif_rawdata4, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %7 = load ptr, ptr %bp.addr, align 8
  %tobool6 = icmp ne ptr %7, null
  br i1 %tobool6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %8 = load i32, ptr %size.addr, align 4
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %9, i32 0, i32 41
  store i32 %8, ptr %tif_rawdatasize, align 8
  %10 = load ptr, ptr %bp.addr, align 8
  %11 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata8 = getelementptr inbounds %struct.tiff, ptr %11, i32 0, i32 40
  store ptr %10, ptr %tif_rawdata8, align 8
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_flags9 = getelementptr inbounds %struct.tiff, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %tif_flags9, align 8
  %and10 = and i32 %13, -513
  store i32 %and10, ptr %tif_flags9, align 8
  br label %if.end15

if.else:                                          ; preds = %if.end5
  %14 = load i32, ptr %size.addr, align 4
  %add = add i32 %14, 1023
  %div = udiv i32 %add, 1024
  %mul = mul i32 %div, 1024
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize11 = getelementptr inbounds %struct.tiff, ptr %15, i32 0, i32 41
  store i32 %mul, ptr %tif_rawdatasize11, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize12 = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 41
  %17 = load i32, ptr %tif_rawdatasize12, align 8
  %call = call ptr @_TIFFmalloc(i32 noundef %17)
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata13 = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 40
  store ptr %call, ptr %tif_rawdata13, align 8
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_flags14 = getelementptr inbounds %struct.tiff, ptr %19, i32 0, i32 3
  %20 = load i32, ptr %tif_flags14, align 8
  %or = or i32 %20, 512
  store i32 %or, ptr %tif_flags14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then7
  %21 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata16 = getelementptr inbounds %struct.tiff, ptr %21, i32 0, i32 40
  %22 = load ptr, ptr %tif_rawdata16, align 8
  %cmp = icmp eq ptr %22, null
  br i1 %cmp, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end15
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %tif_name, align 8
  %25 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %25, i32 0, i32 11
  %26 = load i32, ptr %tif_row, align 8
  %conv = zext i32 %26 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFReadBufferSetup.module, ptr noundef @.str.5, ptr noundef %24, i64 noundef %conv)
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize18 = getelementptr inbounds %struct.tiff, ptr %27, i32 0, i32 41
  store i32 0, ptr %tif_rawdatasize18, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end15
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.then17
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

declare void @_TIFFfree(ptr noundef) #1

declare ptr @_TIFFmalloc(i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_TIFFNoPostDecode(ptr noundef %tif, ptr noundef %buf, i32 noundef %cc) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load ptr, ptr %buf.addr, align 8
  %2 = load i32, ptr %cc.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_TIFFSwab16BitData(ptr noundef %tif, ptr noundef %buf, i32 noundef %cc) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load i32, ptr %cc.addr, align 4
  %and = and i32 %1, 1
  %cmp = icmp eq i32 %and, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__._TIFFSwab16BitData, ptr noundef @.str.6, i32 noundef 608, ptr noundef @.str.7) #3
  unreachable

2:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %2
  %3 = load ptr, ptr %buf.addr, align 8
  %4 = load i32, ptr %cc.addr, align 4
  %div = sdiv i32 %4, 2
  %conv1 = sext i32 %div to i64
  call void @TIFFSwabArrayOfShort(ptr noundef %3, i64 noundef %conv1)
  ret void
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare void @TIFFSwabArrayOfShort(ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_TIFFSwab32BitData(ptr noundef %tif, ptr noundef %buf, i32 noundef %cc) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load i32, ptr %cc.addr, align 4
  %and = and i32 %1, 3
  %cmp = icmp eq i32 %and, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__._TIFFSwab32BitData, ptr noundef @.str.6, i32 noundef 616, ptr noundef @.str.8) #3
  unreachable

2:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %2
  %3 = load ptr, ptr %buf.addr, align 8
  %4 = load i32, ptr %cc.addr, align 4
  %div = sdiv i32 %4, 4
  %conv1 = sext i32 %div to i64
  call void @TIFFSwabArrayOfLong(ptr noundef %3, i64 noundef %conv1)
  ret void
}

declare void @TIFFSwabArrayOfLong(ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_TIFFSwab64BitData(ptr noundef %tif, ptr noundef %buf, i32 noundef %cc) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load i32, ptr %cc.addr, align 4
  %and = and i32 %1, 7
  %cmp = icmp eq i32 %and, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__._TIFFSwab64BitData, ptr noundef @.str.6, i32 noundef 624, ptr noundef @.str.9) #3
  unreachable

2:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %2
  %3 = load ptr, ptr %buf.addr, align 8
  %4 = load i32, ptr %cc.addr, align 4
  %div = sdiv i32 %4, 8
  %conv1 = sext i32 %div to i64
  call void @TIFFSwabArrayOfDouble(ptr noundef %3, i64 noundef %conv1)
  ret void
}

declare void @TIFFSwabArrayOfDouble(ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @TIFFStartStrip(ptr noundef %tif, i32 noundef %strip) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %strip.addr = alloca i32, align 4
  %td = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %strip, ptr %strip.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %tif_flags, align 8
  %and = and i32 %2, 32
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_setupdecode = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 21
  %4 = load ptr, ptr %tif_setupdecode, align 8
  %5 = load ptr, ptr %tif.addr, align 8
  %call = call i32 %4(ptr noundef %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_flags2 = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %tif_flags2, align 8
  %or = or i32 %7, 32
  store i32 %or, ptr %tif_flags2, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %8 = load i32, ptr %strip.addr, align 4
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %9, i32 0, i32 13
  store i32 %8, ptr %tif_curstrip, align 8
  %10 = load i32, ptr %strip.addr, align 4
  %11 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i32 0, i32 42
  %12 = load i32, ptr %td_stripsperimage, align 8
  %rem = urem i32 %10, %12
  %13 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i32 0, i32 16
  %14 = load i32, ptr %td_rowsperstrip, align 4
  %mul = mul i32 %rem, %14
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %15, i32 0, i32 11
  store i32 %mul, ptr %tif_row, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 40
  %17 = load ptr, ptr %tif_rawdata, align 8
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 42
  store ptr %17, ptr %tif_rawcp, align 8
  %19 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %19, i32 0, i32 45
  %20 = load ptr, ptr %td_stripbytecount, align 8
  %21 = load i32, ptr %strip.addr, align 4
  %idxprom = zext i32 %21 to i64
  %arrayidx = getelementptr inbounds i32, ptr %20, i64 %idxprom
  %22 = load i32, ptr %arrayidx, align 4
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %23, i32 0, i32 43
  store i32 %22, ptr %tif_rawcc, align 8
  %24 = load ptr, ptr %tif.addr, align 8
  %tif_predecode = getelementptr inbounds %struct.tiff, ptr %24, i32 0, i32 22
  %25 = load ptr, ptr %tif_predecode, align 8
  %26 = load ptr, ptr %tif.addr, align 8
  %27 = load i32, ptr %strip.addr, align 4
  %28 = load ptr, ptr %td, align 8
  %td_stripsperimage4 = getelementptr inbounds %struct.TIFFDirectory, ptr %28, i32 0, i32 42
  %29 = load i32, ptr %td_stripsperimage4, align 8
  %div = udiv i32 %27, %29
  %conv = trunc i32 %div to i16
  %call5 = call i32 %25(ptr noundef %26, i16 noundef zeroext %conv)
  store i32 %call5, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then1
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i32 noundef) #1

declare void @TIFFReverseBits(ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @TIFFStartTile(ptr noundef %tif, i32 noundef %tile) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tile.addr = alloca i32, align 4
  %td = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %tile, ptr %tile.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %tif_flags, align 8
  %and = and i32 %2, 32
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_setupdecode = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 21
  %4 = load ptr, ptr %tif_setupdecode, align 8
  %5 = load ptr, ptr %tif.addr, align 8
  %call = call i32 %4(ptr noundef %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_flags2 = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %tif_flags2, align 8
  %or = or i32 %7, 32
  store i32 %or, ptr %tif_flags2, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %8 = load i32, ptr %tile.addr, align 4
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_curtile = getelementptr inbounds %struct.tiff, ptr %9, i32 0, i32 19
  store i32 %8, ptr %tif_curtile, align 8
  %10 = load i32, ptr %tile.addr, align 4
  %11 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %td_imagewidth, align 8
  %13 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i32 0, i32 4
  %14 = load i32, ptr %td_tilewidth, align 4
  %sub = sub i32 %14, 1
  %add = add i32 %12, %sub
  %15 = load ptr, ptr %td, align 8
  %td_tilewidth4 = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i32 0, i32 4
  %16 = load i32, ptr %td_tilewidth4, align 4
  %div = udiv i32 %add, %16
  %rem = urem i32 %10, %div
  %17 = load ptr, ptr %td, align 8
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i32 0, i32 5
  %18 = load i32, ptr %td_tilelength, align 8
  %mul = mul i32 %rem, %18
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %19, i32 0, i32 11
  store i32 %mul, ptr %tif_row, align 8
  %20 = load i32, ptr %tile.addr, align 4
  %21 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %21, i32 0, i32 2
  %22 = load i32, ptr %td_imagelength, align 4
  %23 = load ptr, ptr %td, align 8
  %td_tilelength5 = getelementptr inbounds %struct.TIFFDirectory, ptr %23, i32 0, i32 5
  %24 = load i32, ptr %td_tilelength5, align 8
  %sub6 = sub i32 %24, 1
  %add7 = add i32 %22, %sub6
  %25 = load ptr, ptr %td, align 8
  %td_tilelength8 = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i32 0, i32 5
  %26 = load i32, ptr %td_tilelength8, align 8
  %div9 = udiv i32 %add7, %26
  %rem10 = urem i32 %20, %div9
  %27 = load ptr, ptr %td, align 8
  %td_tilewidth11 = getelementptr inbounds %struct.TIFFDirectory, ptr %27, i32 0, i32 4
  %28 = load i32, ptr %td_tilewidth11, align 4
  %mul12 = mul i32 %rem10, %28
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_col = getelementptr inbounds %struct.tiff, ptr %29, i32 0, i32 18
  store i32 %mul12, ptr %tif_col, align 4
  %30 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %30, i32 0, i32 40
  %31 = load ptr, ptr %tif_rawdata, align 8
  %32 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %32, i32 0, i32 42
  store ptr %31, ptr %tif_rawcp, align 8
  %33 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %33, i32 0, i32 45
  %34 = load ptr, ptr %td_stripbytecount, align 8
  %35 = load i32, ptr %tile.addr, align 4
  %idxprom = zext i32 %35 to i64
  %arrayidx = getelementptr inbounds i32, ptr %34, i64 %idxprom
  %36 = load i32, ptr %arrayidx, align 4
  %37 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %37, i32 0, i32 43
  store i32 %36, ptr %tif_rawcc, align 8
  %38 = load ptr, ptr %tif.addr, align 8
  %tif_predecode = getelementptr inbounds %struct.tiff, ptr %38, i32 0, i32 22
  %39 = load ptr, ptr %tif_predecode, align 8
  %40 = load ptr, ptr %tif.addr, align 8
  %41 = load i32, ptr %tile.addr, align 4
  %42 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %42, i32 0, i32 42
  %43 = load i32, ptr %td_stripsperimage, align 8
  %div13 = udiv i32 %41, %43
  %conv = trunc i32 %div13 to i16
  %call14 = call i32 %39(ptr noundef %40, i16 noundef zeroext %conv)
  store i32 %call14, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then1
  %44 = load i32, ptr %retval, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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
