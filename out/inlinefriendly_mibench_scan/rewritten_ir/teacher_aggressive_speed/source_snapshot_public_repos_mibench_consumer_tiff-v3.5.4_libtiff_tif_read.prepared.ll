; ModuleID = './source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_read.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_read.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i64, i64, i64, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i64, i16, i64, i64, i64, i16, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, ptr, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i64, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i64, ptr, i64, ptr, i64, ptr, i64, i64, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i64 }

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

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFReadScanline(ptr noundef %tif, ptr noundef %buf, i64 noundef %row, i16 noundef zeroext %sample) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %row.addr = alloca i64, align 8
  %sample.addr = alloca i16, align 2
  %e = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %row, ptr %row.addr, align 8
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
  %2 = load i64, ptr %row.addr, align 8
  %3 = load i16, ptr %sample.addr, align 2
  %call1 = call i32 @TIFFSeek(ptr noundef %1, i64 noundef %2, i16 noundef zeroext %3)
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
  %9 = load i64, ptr %tif_scanlinesize, align 8
  %10 = load i16, ptr %sample.addr, align 2
  %call3 = call i32 %5(ptr noundef %6, ptr noundef %7, i64 noundef %9, i16 noundef zeroext %10)
  store i32 %call3, ptr %e, align 4
  %11 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %11, i32 0, i32 11
  %12 = load i64, ptr %tif_row, align 8
  %inc = add i64 %12, 1
  store i64 %inc, ptr %tif_row, align 8
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
  %19 = load i64, ptr %tif_scanlinesize6, align 8
  call void %15(ptr noundef %16, ptr noundef %17, i64 noundef %19)
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

; Function Attrs: nounwind ssp uwtable
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
  %6 = load i64, ptr %tif_flags, align 8
  %and = and i64 %6, 1024
  %cmp1 = icmp ne i64 %and, 0
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

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFSeek(ptr noundef %tif, i64 noundef %row, i16 noundef zeroext %sample) #0 {
entry:
  %retval = alloca i32, align 4
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
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %2, i32 0, i32 2
  %3 = load i64, ptr %td_imagelength, align 8
  %cmp = icmp uge i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %tif_name, align 8
  %6 = load i64, ptr %row.addr, align 8
  %7 = load ptr, ptr %td, align 8
  %td_imagelength1 = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i32 0, i32 2
  %8 = load i64, ptr %td_imagelength1, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %5, ptr noundef @.str.10, i64 noundef %6, i64 noundef %8)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %9, i32 0, i32 24
  %10 = load i16, ptr %td_planarconfig, align 2
  %conv = zext i16 %10 to i32
  %cmp2 = icmp eq i32 %conv, 2
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %11 = load i16, ptr %sample.addr, align 2
  %conv5 = zext i16 %11 to i32
  %12 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %12, i32 0, i32 15
  %13 = load i16, ptr %td_samplesperpixel, align 2
  %conv6 = zext i16 %13 to i32
  %cmp7 = icmp sge i32 %conv5, %conv6
  br i1 %cmp7, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.then4
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_name10 = getelementptr inbounds %struct.tiff, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %tif_name10, align 8
  %16 = load i16, ptr %sample.addr, align 2
  %conv11 = zext i16 %16 to i64
  %17 = load ptr, ptr %td, align 8
  %td_samplesperpixel12 = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i32 0, i32 15
  %18 = load i16, ptr %td_samplesperpixel12, align 2
  %conv13 = zext i16 %18 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %15, ptr noundef @.str.11, i64 noundef %conv11, i64 noundef %conv13)
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.then4
  %19 = load i16, ptr %sample.addr, align 2
  %conv15 = zext i16 %19 to i64
  %20 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %20, i32 0, i32 42
  %21 = load i64, ptr %td_stripsperimage, align 8
  %mul = mul i64 %conv15, %21
  %22 = load i64, ptr %row.addr, align 8
  %23 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %23, i32 0, i32 16
  %24 = load i64, ptr %td_rowsperstrip, align 8
  %div = udiv i64 %22, %24
  %add = add i64 %mul, %div
  store i64 %add, ptr %strip, align 8
  br label %if.end18

if.else:                                          ; preds = %if.end
  %25 = load i64, ptr %row.addr, align 8
  %26 = load ptr, ptr %td, align 8
  %td_rowsperstrip16 = getelementptr inbounds %struct.TIFFDirectory, ptr %26, i32 0, i32 16
  %27 = load i64, ptr %td_rowsperstrip16, align 8
  %div17 = udiv i64 %25, %27
  store i64 %div17, ptr %strip, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end14
  %28 = load i64, ptr %strip, align 8
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %29, i32 0, i32 13
  %30 = load i64, ptr %tif_curstrip, align 8
  %cmp19 = icmp ne i64 %28, %30
  br i1 %cmp19, label %if.then21, label %if.else24

if.then21:                                        ; preds = %if.end18
  %31 = load ptr, ptr %tif.addr, align 8
  %32 = load i64, ptr %strip, align 8
  %call = call i32 @TIFFFillStrip(ptr noundef %31, i64 noundef %32)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.then21
  store i32 0, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.then21
  br label %if.end33

if.else24:                                        ; preds = %if.end18
  %33 = load i64, ptr %row.addr, align 8
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %34, i32 0, i32 11
  %35 = load i64, ptr %tif_row, align 8
  %cmp25 = icmp ult i64 %33, %35
  br i1 %cmp25, label %if.then27, label %if.end32

if.then27:                                        ; preds = %if.else24
  %36 = load ptr, ptr %tif.addr, align 8
  %37 = load i64, ptr %strip, align 8
  %call28 = call i32 @TIFFStartStrip(ptr noundef %36, i64 noundef %37)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.then27
  store i32 0, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.then27
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.else24
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end23
  %38 = load i64, ptr %row.addr, align 8
  %39 = load ptr, ptr %tif.addr, align 8
  %tif_row34 = getelementptr inbounds %struct.tiff, ptr %39, i32 0, i32 11
  %40 = load i64, ptr %tif_row34, align 8
  %cmp35 = icmp ne i64 %38, %40
  br i1 %cmp35, label %if.then37, label %if.end44

if.then37:                                        ; preds = %if.end33
  %41 = load ptr, ptr %tif.addr, align 8
  %tif_seek = getelementptr inbounds %struct.tiff, ptr %41, i32 0, i32 33
  %42 = load ptr, ptr %tif_seek, align 8
  %43 = load ptr, ptr %tif.addr, align 8
  %44 = load i64, ptr %row.addr, align 8
  %45 = load ptr, ptr %tif.addr, align 8
  %tif_row38 = getelementptr inbounds %struct.tiff, ptr %45, i32 0, i32 11
  %46 = load i64, ptr %tif_row38, align 8
  %sub = sub i64 %44, %46
  %call39 = call i32 %42(ptr noundef %43, i64 noundef %sub)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.then37
  store i32 0, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.then37
  %47 = load i64, ptr %row.addr, align 8
  %48 = load ptr, ptr %tif.addr, align 8
  %tif_row43 = getelementptr inbounds %struct.tiff, ptr %48, i32 0, i32 11
  store i64 %47, ptr %tif_row43, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.end42, %if.end33
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end44, %if.then41, %if.then30, %if.then22, %if.then9, %if.then
  %49 = load i32, ptr %retval, align 4
  ret i32 %49
}

; Function Attrs: nounwind ssp uwtable
define i64 @TIFFReadEncodedStrip(ptr noundef %tif, i64 noundef %strip, ptr noundef %buf, i64 noundef %size) #0 {
entry:
  %retval = alloca i64, align 8
  %tif.addr = alloca ptr, align 8
  %strip.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %td = alloca ptr, align 8
  %nrows = alloca i64, align 8
  %stripsize = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %strip, ptr %strip.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %size, ptr %size.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFCheckRead(ptr noundef %1, i32 noundef 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %strip.addr, align 8
  %3 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 43
  %4 = load i64, ptr %td_nstrips, align 8
  %cmp = icmp uge i64 %2, %4
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %tif_name, align 8
  %7 = load i64, ptr %strip.addr, align 8
  %8 = load ptr, ptr %td, align 8
  %td_nstrips2 = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i32 0, i32 43
  %9 = load i64, ptr %td_nstrips2, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %6, ptr noundef @.str, i64 noundef %7, i64 noundef %9)
  store i64 -1, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %10 = load i64, ptr %strip.addr, align 8
  %11 = load ptr, ptr %td, align 8
  %td_nstrips4 = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i32 0, i32 43
  %12 = load i64, ptr %td_nstrips4, align 8
  %sub = sub i64 %12, 1
  %cmp5 = icmp ne i64 %10, %sub
  br i1 %cmp5, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %13 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i32 0, i32 2
  %14 = load i64, ptr %td_imagelength, align 8
  %15 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i32 0, i32 16
  %16 = load i64, ptr %td_rowsperstrip, align 8
  %rem = urem i64 %14, %16
  store i64 %rem, ptr %nrows, align 8
  %cmp6 = icmp eq i64 %rem, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %lor.lhs.false, %if.end3
  %17 = load ptr, ptr %td, align 8
  %td_rowsperstrip8 = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i32 0, i32 16
  %18 = load i64, ptr %td_rowsperstrip8, align 8
  store i64 %18, ptr %nrows, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %lor.lhs.false
  %19 = load ptr, ptr %tif.addr, align 8
  %20 = load i64, ptr %nrows, align 8
  %call10 = call i64 @TIFFVStripSize(ptr noundef %19, i64 noundef %20)
  store i64 %call10, ptr %stripsize, align 8
  %21 = load i64, ptr %size.addr, align 8
  %cmp11 = icmp eq i64 %21, -1
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end9
  %22 = load i64, ptr %stripsize, align 8
  store i64 %22, ptr %size.addr, align 8
  br label %if.end16

if.else:                                          ; preds = %if.end9
  %23 = load i64, ptr %size.addr, align 8
  %24 = load i64, ptr %stripsize, align 8
  %cmp13 = icmp sgt i64 %23, %24
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.else
  %25 = load i64, ptr %stripsize, align 8
  store i64 %25, ptr %size.addr, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then12
  %26 = load ptr, ptr %tif.addr, align 8
  %27 = load i64, ptr %strip.addr, align 8
  %call17 = call i32 @TIFFFillStrip(ptr noundef %26, i64 noundef %27)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %land.lhs.true, label %if.else22

land.lhs.true:                                    ; preds = %if.end16
  %28 = load ptr, ptr %tif.addr, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %28, i32 0, i32 28
  %29 = load ptr, ptr %tif_decodestrip, align 8
  %30 = load ptr, ptr %tif.addr, align 8
  %31 = load ptr, ptr %buf.addr, align 8
  %32 = load i64, ptr %size.addr, align 8
  %33 = load i64, ptr %strip.addr, align 8
  %34 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %34, i32 0, i32 42
  %35 = load i64, ptr %td_stripsperimage, align 8
  %div = udiv i64 %33, %35
  %conv = trunc i64 %div to i16
  %call19 = call i32 %29(ptr noundef %30, ptr noundef %31, i64 noundef %32, i16 noundef zeroext %conv)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then21, label %if.else22

if.then21:                                        ; preds = %land.lhs.true
  %36 = load ptr, ptr %tif.addr, align 8
  %tif_postdecode = getelementptr inbounds %struct.tiff, ptr %36, i32 0, i32 54
  %37 = load ptr, ptr %tif_postdecode, align 8
  %38 = load ptr, ptr %tif.addr, align 8
  %39 = load ptr, ptr %buf.addr, align 8
  %40 = load i64, ptr %size.addr, align 8
  call void %37(ptr noundef %38, ptr noundef %39, i64 noundef %40)
  %41 = load i64, ptr %size.addr, align 8
  store i64 %41, ptr %retval, align 8
  br label %return

if.else22:                                        ; preds = %land.lhs.true, %if.end16
  store i64 -1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else22, %if.then21, %if.then1, %if.then
  %42 = load i64, ptr %retval, align 8
  ret i64 %42
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

declare i64 @TIFFVStripSize(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFFillStrip(ptr noundef %tif, i64 noundef %strip) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %strip.addr = alloca i64, align 8
  %td = alloca ptr, align 8
  %bytecount = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %strip, ptr %strip.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 45
  %2 = load ptr, ptr %td_stripbytecount, align 8
  %3 = load i64, ptr %strip.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 %3
  %4 = load i64, ptr %arrayidx, align 8
  store i64 %4, ptr %bytecount, align 8
  %5 = load i64, ptr %bytecount, align 8
  %cmp = icmp sle i64 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %tif_name, align 8
  %8 = load i64, ptr %bytecount, align 8
  %9 = load i64, ptr %strip.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %7, ptr noundef @.str.2, i64 noundef %8, i64 noundef %9)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %10, i32 0, i32 3
  %11 = load i64, ptr %tif_flags, align 8
  %and = and i64 %11, 2048
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_flags2 = getelementptr inbounds %struct.tiff, ptr %12, i32 0, i32 3
  %13 = load i64, ptr %tif_flags2, align 8
  %14 = load ptr, ptr %td, align 8
  %td_fillorder = getelementptr inbounds %struct.TIFFDirectory, ptr %14, i32 0, i32 13
  %15 = load i16, ptr %td_fillorder, align 2
  %conv = zext i16 %15 to i64
  %and3 = and i64 %13, %conv
  %cmp4 = icmp ne i64 %and3, 0
  br i1 %cmp4, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_flags6 = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 3
  %17 = load i64, ptr %tif_flags6, align 8
  %and7 = and i64 %17, 256
  %tobool = icmp ne i64 %and7, 0
  br i1 %tobool, label %if.then8, label %if.else

if.then8:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_flags9 = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 3
  %19 = load i64, ptr %tif_flags9, align 8
  %and10 = and i64 %19, 512
  %tobool11 = icmp ne i64 %and10, 0
  br i1 %tobool11, label %land.lhs.true12, label %if.end16

land.lhs.true12:                                  ; preds = %if.then8
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %20, i32 0, i32 40
  %21 = load ptr, ptr %tif_rawdata, align 8
  %tobool13 = icmp ne ptr %21, null
  br i1 %tobool13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %land.lhs.true12
  %22 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata15 = getelementptr inbounds %struct.tiff, ptr %22, i32 0, i32 40
  %23 = load ptr, ptr %tif_rawdata15, align 8
  call void @_TIFFfree(ptr noundef %23)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %land.lhs.true12, %if.then8
  %24 = load ptr, ptr %tif.addr, align 8
  %tif_flags17 = getelementptr inbounds %struct.tiff, ptr %24, i32 0, i32 3
  %25 = load i64, ptr %tif_flags17, align 8
  %and18 = and i64 %25, -513
  store i64 %and18, ptr %tif_flags17, align 8
  %26 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %26, i32 0, i32 44
  %27 = load ptr, ptr %td_stripoffset, align 8
  %28 = load i64, ptr %strip.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %27, i64 %28
  %29 = load i64, ptr %arrayidx19, align 8
  %30 = load i64, ptr %bytecount, align 8
  %add = add nsw i64 %29, %30
  %31 = load ptr, ptr %tif.addr, align 8
  %tif_size = getelementptr inbounds %struct.tiff, ptr %31, i32 0, i32 45
  %32 = load i64, ptr %tif_size, align 8
  %cmp20 = icmp sgt i64 %add, %32
  br i1 %cmp20, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.end16
  %33 = load ptr, ptr %tif.addr, align 8
  %tif_name23 = getelementptr inbounds %struct.tiff, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %tif_name23, align 8
  %35 = load i64, ptr %strip.addr, align 8
  %36 = load ptr, ptr %tif.addr, align 8
  %tif_size24 = getelementptr inbounds %struct.tiff, ptr %36, i32 0, i32 45
  %37 = load i64, ptr %tif_size24, align 8
  %38 = load ptr, ptr %td, align 8
  %td_stripoffset25 = getelementptr inbounds %struct.TIFFDirectory, ptr %38, i32 0, i32 44
  %39 = load ptr, ptr %td_stripoffset25, align 8
  %40 = load i64, ptr %strip.addr, align 8
  %arrayidx26 = getelementptr inbounds i64, ptr %39, i64 %40
  %41 = load i64, ptr %arrayidx26, align 8
  %sub = sub i64 %37, %41
  %42 = load i64, ptr %bytecount, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFFillStrip.module, ptr noundef @.str.15, ptr noundef %34, i64 noundef %35, i64 noundef %sub, i64 noundef %42)
  %43 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %43, i32 0, i32 13
  store i64 -1, ptr %tif_curstrip, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end16
  %44 = load i64, ptr %bytecount, align 8
  %45 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %45, i32 0, i32 41
  store i64 %44, ptr %tif_rawdatasize, align 8
  %46 = load ptr, ptr %tif.addr, align 8
  %tif_base = getelementptr inbounds %struct.tiff, ptr %46, i32 0, i32 44
  %47 = load ptr, ptr %tif_base, align 8
  %48 = load ptr, ptr %td, align 8
  %td_stripoffset28 = getelementptr inbounds %struct.TIFFDirectory, ptr %48, i32 0, i32 44
  %49 = load ptr, ptr %td_stripoffset28, align 8
  %50 = load i64, ptr %strip.addr, align 8
  %arrayidx29 = getelementptr inbounds i64, ptr %49, i64 %50
  %51 = load i64, ptr %arrayidx29, align 8
  %add.ptr = getelementptr inbounds i8, ptr %47, i64 %51
  %52 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata30 = getelementptr inbounds %struct.tiff, ptr %52, i32 0, i32 40
  store ptr %add.ptr, ptr %tif_rawdata30, align 8
  br label %if.end68

if.else:                                          ; preds = %lor.lhs.false, %if.end
  %53 = load i64, ptr %bytecount, align 8
  %54 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize31 = getelementptr inbounds %struct.tiff, ptr %54, i32 0, i32 41
  %55 = load i64, ptr %tif_rawdatasize31, align 8
  %cmp32 = icmp sgt i64 %53, %55
  br i1 %cmp32, label %if.then34, label %if.end47

if.then34:                                        ; preds = %if.else
  %56 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip35 = getelementptr inbounds %struct.tiff, ptr %56, i32 0, i32 13
  store i64 -1, ptr %tif_curstrip35, align 8
  %57 = load ptr, ptr %tif.addr, align 8
  %tif_flags36 = getelementptr inbounds %struct.tiff, ptr %57, i32 0, i32 3
  %58 = load i64, ptr %tif_flags36, align 8
  %and37 = and i64 %58, 512
  %cmp38 = icmp eq i64 %and37, 0
  br i1 %cmp38, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.then34
  %59 = load ptr, ptr %tif.addr, align 8
  %tif_name41 = getelementptr inbounds %struct.tiff, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %tif_name41, align 8
  %61 = load i64, ptr %strip.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFFillStrip.module, ptr noundef @.str.16, ptr noundef %60, i64 noundef %61)
  store i32 0, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.then34
  %62 = load ptr, ptr %tif.addr, align 8
  %63 = load i64, ptr %bytecount, align 8
  %add43 = add i64 %63, 1023
  %div = udiv i64 %add43, 1024
  %mul = mul i64 %div, 1024
  %call = call i32 @TIFFReadBufferSetup(ptr noundef %62, ptr noundef null, i64 noundef %mul)
  %tobool44 = icmp ne i32 %call, 0
  br i1 %tobool44, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end42
  store i32 0, ptr %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.end42
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.else
  %64 = load ptr, ptr %tif.addr, align 8
  %65 = load i64, ptr %strip.addr, align 8
  %66 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata48 = getelementptr inbounds %struct.tiff, ptr %66, i32 0, i32 40
  %67 = load ptr, ptr %tif_rawdata48, align 8
  %68 = load i64, ptr %bytecount, align 8
  %call49 = call i64 @TIFFReadRawStrip1(ptr noundef %64, i64 noundef %65, ptr noundef %67, i64 noundef %68, ptr noundef @TIFFFillStrip.module)
  %69 = load i64, ptr %bytecount, align 8
  %cmp50 = icmp ne i64 %call49, %69
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end47
  store i32 0, ptr %retval, align 4
  br label %return

if.end53:                                         ; preds = %if.end47
  %70 = load ptr, ptr %tif.addr, align 8
  %tif_flags54 = getelementptr inbounds %struct.tiff, ptr %70, i32 0, i32 3
  %71 = load i64, ptr %tif_flags54, align 8
  %72 = load ptr, ptr %td, align 8
  %td_fillorder55 = getelementptr inbounds %struct.TIFFDirectory, ptr %72, i32 0, i32 13
  %73 = load i16, ptr %td_fillorder55, align 2
  %conv56 = zext i16 %73 to i64
  %and57 = and i64 %71, %conv56
  %cmp58 = icmp ne i64 %and57, 0
  br i1 %cmp58, label %if.end67, label %land.lhs.true60

land.lhs.true60:                                  ; preds = %if.end53
  %74 = load ptr, ptr %tif.addr, align 8
  %tif_flags61 = getelementptr inbounds %struct.tiff, ptr %74, i32 0, i32 3
  %75 = load i64, ptr %tif_flags61, align 8
  %and62 = and i64 %75, 256
  %cmp63 = icmp eq i64 %and62, 0
  br i1 %cmp63, label %if.then65, label %if.end67

if.then65:                                        ; preds = %land.lhs.true60
  %76 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata66 = getelementptr inbounds %struct.tiff, ptr %76, i32 0, i32 40
  %77 = load ptr, ptr %tif_rawdata66, align 8
  %78 = load i64, ptr %bytecount, align 8
  call void @TIFFReverseBits(ptr noundef %77, i64 noundef %78)
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %land.lhs.true60, %if.end53
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.end27
  %79 = load ptr, ptr %tif.addr, align 8
  %80 = load i64, ptr %strip.addr, align 8
  %call69 = call i32 @TIFFStartStrip(ptr noundef %79, i64 noundef %80)
  store i32 %call69, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end68, %if.then52, %if.then45, %if.then40, %if.then22, %if.then
  %81 = load i32, ptr %retval, align 4
  ret i32 %81
}

; Function Attrs: nounwind ssp uwtable
define i64 @TIFFReadRawStrip(ptr noundef %tif, i64 noundef %strip, ptr noundef %buf, i64 noundef %size) #0 {
entry:
  %retval = alloca i64, align 8
  %tif.addr = alloca ptr, align 8
  %strip.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %td = alloca ptr, align 8
  %bytecount = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %strip, ptr %strip.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %size, ptr %size.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFCheckRead(ptr noundef %1, i32 noundef 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %strip.addr, align 8
  %3 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 43
  %4 = load i64, ptr %td_nstrips, align 8
  %cmp = icmp uge i64 %2, %4
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %tif_name, align 8
  %7 = load i64, ptr %strip.addr, align 8
  %8 = load ptr, ptr %td, align 8
  %td_nstrips2 = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i32 0, i32 43
  %9 = load i64, ptr %td_nstrips2, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %6, ptr noundef @.str.1, i64 noundef %7, i64 noundef %9)
  store i64 -1, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %10 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i32 0, i32 45
  %11 = load ptr, ptr %td_stripbytecount, align 8
  %12 = load i64, ptr %strip.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %11, i64 %12
  %13 = load i64, ptr %arrayidx, align 8
  store i64 %13, ptr %bytecount, align 8
  %14 = load i64, ptr %bytecount, align 8
  %cmp4 = icmp sle i64 %14, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end3
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_name6 = getelementptr inbounds %struct.tiff, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %tif_name6, align 8
  %17 = load i64, ptr %bytecount, align 8
  %18 = load i64, ptr %strip.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %16, ptr noundef @.str.2, i64 noundef %17, i64 noundef %18)
  store i64 -1, ptr %retval, align 8
  br label %return

if.end7:                                          ; preds = %if.end3
  %19 = load i64, ptr %size.addr, align 8
  %cmp8 = icmp ne i64 %19, -1
  br i1 %cmp8, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end7
  %20 = load i64, ptr %size.addr, align 8
  %21 = load i64, ptr %bytecount, align 8
  %cmp9 = icmp slt i64 %20, %21
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  %22 = load i64, ptr %size.addr, align 8
  store i64 %22, ptr %bytecount, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true, %if.end7
  %23 = load ptr, ptr %tif.addr, align 8
  %24 = load i64, ptr %strip.addr, align 8
  %25 = load ptr, ptr %buf.addr, align 8
  %26 = load i64, ptr %bytecount, align 8
  %call12 = call i64 @TIFFReadRawStrip1(ptr noundef %23, i64 noundef %24, ptr noundef %25, i64 noundef %26, ptr noundef @TIFFReadRawStrip.module)
  store i64 %call12, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end11, %if.then5, %if.then1, %if.then
  %27 = load i64, ptr %retval, align 8
  ret i64 %27
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @TIFFReadRawStrip1(ptr noundef %tif, i64 noundef %strip, ptr noundef %buf, i64 noundef %size, ptr noundef %module) #0 {
entry:
  %retval = alloca i64, align 8
  %tif.addr = alloca ptr, align 8
  %strip.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %module.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %cc = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %strip, ptr %strip.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %size, ptr %size.addr, align 8
  store ptr %module, ptr %module.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 3
  %2 = load i64, ptr %tif_flags, align 8
  %and = and i64 %2, 2048
  %cmp = icmp ne i64 %and, 0
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
  %9 = load i64, ptr %strip.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %8, i64 %9
  %10 = load i64, ptr %arrayidx, align 8
  %call = call i64 %4(ptr noundef %6, i64 noundef %10, i32 noundef 0)
  %11 = load ptr, ptr %td, align 8
  %td_stripoffset1 = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i32 0, i32 44
  %12 = load ptr, ptr %td_stripoffset1, align 8
  %13 = load i64, ptr %strip.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %12, i64 %13
  %14 = load i64, ptr %arrayidx2, align 8
  %cmp3 = icmp eq i64 %call, %14
  br i1 %cmp3, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %15 = load ptr, ptr %module.addr, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %tif_name, align 8
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 11
  %19 = load i64, ptr %tif_row, align 8
  %20 = load i64, ptr %strip.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %15, ptr noundef @.str.12, ptr noundef %17, i64 noundef %19, i64 noundef %20)
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %21 = load ptr, ptr %tif.addr, align 8
  %tif_readproc = getelementptr inbounds %struct.tiff, ptr %21, i32 0, i32 49
  %22 = load ptr, ptr %tif_readproc, align 8
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata5 = getelementptr inbounds %struct.tiff, ptr %23, i32 0, i32 48
  %24 = load ptr, ptr %tif_clientdata5, align 8
  %25 = load ptr, ptr %buf.addr, align 8
  %26 = load i64, ptr %size.addr, align 8
  %call6 = call i64 %22(ptr noundef %24, ptr noundef %25, i64 noundef %26)
  store i64 %call6, ptr %cc, align 8
  %27 = load i64, ptr %cc, align 8
  %28 = load i64, ptr %size.addr, align 8
  %cmp7 = icmp ne i64 %27, %28
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  %29 = load ptr, ptr %module.addr, align 8
  %30 = load ptr, ptr %tif.addr, align 8
  %tif_name9 = getelementptr inbounds %struct.tiff, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %tif_name9, align 8
  %32 = load ptr, ptr %tif.addr, align 8
  %tif_row10 = getelementptr inbounds %struct.tiff, ptr %32, i32 0, i32 11
  %33 = load i64, ptr %tif_row10, align 8
  %34 = load i64, ptr %cc, align 8
  %35 = load i64, ptr %size.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %29, ptr noundef @.str.13, ptr noundef %31, i64 noundef %33, i64 noundef %34, i64 noundef %35)
  store i64 -1, ptr %retval, align 8
  br label %return

if.end11:                                         ; preds = %if.end
  br label %if.end24

if.else:                                          ; preds = %entry
  %36 = load ptr, ptr %td, align 8
  %td_stripoffset12 = getelementptr inbounds %struct.TIFFDirectory, ptr %36, i32 0, i32 44
  %37 = load ptr, ptr %td_stripoffset12, align 8
  %38 = load i64, ptr %strip.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %37, i64 %38
  %39 = load i64, ptr %arrayidx13, align 8
  %40 = load i64, ptr %size.addr, align 8
  %add = add i64 %39, %40
  %41 = load ptr, ptr %tif.addr, align 8
  %tif_size = getelementptr inbounds %struct.tiff, ptr %41, i32 0, i32 45
  %42 = load i64, ptr %tif_size, align 8
  %cmp14 = icmp sgt i64 %add, %42
  br i1 %cmp14, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.else
  %43 = load ptr, ptr %module.addr, align 8
  %44 = load ptr, ptr %tif.addr, align 8
  %tif_name16 = getelementptr inbounds %struct.tiff, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %tif_name16, align 8
  %46 = load ptr, ptr %tif.addr, align 8
  %tif_row17 = getelementptr inbounds %struct.tiff, ptr %46, i32 0, i32 11
  %47 = load i64, ptr %tif_row17, align 8
  %48 = load i64, ptr %strip.addr, align 8
  %49 = load ptr, ptr %tif.addr, align 8
  %tif_size18 = getelementptr inbounds %struct.tiff, ptr %49, i32 0, i32 45
  %50 = load i64, ptr %tif_size18, align 8
  %51 = load ptr, ptr %td, align 8
  %td_stripoffset19 = getelementptr inbounds %struct.TIFFDirectory, ptr %51, i32 0, i32 44
  %52 = load ptr, ptr %td_stripoffset19, align 8
  %53 = load i64, ptr %strip.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %52, i64 %53
  %54 = load i64, ptr %arrayidx20, align 8
  %sub = sub i64 %50, %54
  %55 = load i64, ptr %size.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %43, ptr noundef @.str.14, ptr noundef %45, i64 noundef %47, i64 noundef %48, i64 noundef %sub, i64 noundef %55)
  store i64 -1, ptr %retval, align 8
  br label %return

if.end21:                                         ; preds = %if.else
  %56 = load ptr, ptr %buf.addr, align 8
  %57 = load ptr, ptr %tif.addr, align 8
  %tif_base = getelementptr inbounds %struct.tiff, ptr %57, i32 0, i32 44
  %58 = load ptr, ptr %tif_base, align 8
  %59 = load ptr, ptr %td, align 8
  %td_stripoffset22 = getelementptr inbounds %struct.TIFFDirectory, ptr %59, i32 0, i32 44
  %60 = load ptr, ptr %td_stripoffset22, align 8
  %61 = load i64, ptr %strip.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %60, i64 %61
  %62 = load i64, ptr %arrayidx23, align 8
  %add.ptr = getelementptr inbounds i8, ptr %58, i64 %62
  %63 = load i64, ptr %size.addr, align 8
  call void @_TIFFmemcpy(ptr noundef %56, ptr noundef %add.ptr, i64 noundef %63)
  br label %if.end24

if.end24:                                         ; preds = %if.end21, %if.end11
  %64 = load i64, ptr %size.addr, align 8
  store i64 %64, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end24, %if.then15, %if.then8, %if.then4
  %65 = load i64, ptr %retval, align 8
  ret i64 %65
}

; Function Attrs: nounwind ssp uwtable
define i64 @TIFFReadTile(ptr noundef %tif, ptr noundef %buf, i64 noundef %x, i64 noundef %y, i64 noundef %z, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i64, align 8
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %z.addr = alloca i64, align 8
  %s.addr = alloca i16, align 2
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  store i64 %z, ptr %z.addr, align 8
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFCheckRead(ptr noundef %0, i32 noundef 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %2 = load i64, ptr %x.addr, align 8
  %3 = load i64, ptr %y.addr, align 8
  %4 = load i64, ptr %z.addr, align 8
  %5 = load i16, ptr %s.addr, align 2
  %call1 = call i32 @TIFFCheckTile(ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i16 noundef zeroext %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %tif.addr, align 8
  %7 = load ptr, ptr %tif.addr, align 8
  %8 = load i64, ptr %x.addr, align 8
  %9 = load i64, ptr %y.addr, align 8
  %10 = load i64, ptr %z.addr, align 8
  %11 = load i16, ptr %s.addr, align 2
  %call3 = call i64 @TIFFComputeTile(ptr noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i16 noundef zeroext %11)
  %12 = load ptr, ptr %buf.addr, align 8
  %call4 = call i64 @TIFFReadEncodedTile(ptr noundef %6, i64 noundef %call3, ptr noundef %12, i64 noundef -1)
  store i64 %call4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i64, ptr %retval, align 8
  ret i64 %13
}

declare i32 @TIFFCheckTile(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i16 noundef zeroext) #1

; Function Attrs: nounwind ssp uwtable
define i64 @TIFFReadEncodedTile(ptr noundef %tif, i64 noundef %tile, ptr noundef %buf, i64 noundef %size) #0 {
entry:
  %retval = alloca i64, align 8
  %tif.addr = alloca ptr, align 8
  %tile.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %td = alloca ptr, align 8
  %tilesize = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tile, ptr %tile.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %size, ptr %size.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_tilesize = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 20
  %2 = load i64, ptr %tif_tilesize, align 8
  store i64 %2, ptr %tilesize, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFCheckRead(ptr noundef %3, i32 noundef 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %tile.addr, align 8
  %5 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i32 0, i32 43
  %6 = load i64, ptr %td_nstrips, align 8
  %cmp = icmp uge i64 %4, %6
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %tif_name, align 8
  %9 = load i64, ptr %tile.addr, align 8
  %10 = load ptr, ptr %td, align 8
  %td_nstrips2 = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i32 0, i32 43
  %11 = load i64, ptr %td_nstrips2, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %8, ptr noundef @.str.3, i64 noundef %9, i64 noundef %11)
  store i64 -1, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %12 = load i64, ptr %size.addr, align 8
  %cmp4 = icmp eq i64 %12, -1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  %13 = load i64, ptr %tilesize, align 8
  store i64 %13, ptr %size.addr, align 8
  br label %if.end9

if.else:                                          ; preds = %if.end3
  %14 = load i64, ptr %size.addr, align 8
  %15 = load i64, ptr %tilesize, align 8
  %cmp6 = icmp sgt i64 %14, %15
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.else
  %16 = load i64, ptr %tilesize, align 8
  store i64 %16, ptr %size.addr, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then5
  %17 = load ptr, ptr %tif.addr, align 8
  %18 = load i64, ptr %tile.addr, align 8
  %call10 = call i32 @TIFFFillTile(ptr noundef %17, i64 noundef %18)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.lhs.true, label %if.else15

land.lhs.true:                                    ; preds = %if.end9
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %19, i32 0, i32 30
  %20 = load ptr, ptr %tif_decodetile, align 8
  %21 = load ptr, ptr %tif.addr, align 8
  %22 = load ptr, ptr %buf.addr, align 8
  %23 = load i64, ptr %size.addr, align 8
  %24 = load i64, ptr %tile.addr, align 8
  %25 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i32 0, i32 42
  %26 = load i64, ptr %td_stripsperimage, align 8
  %div = udiv i64 %24, %26
  %conv = trunc i64 %div to i16
  %call12 = call i32 %20(ptr noundef %21, ptr noundef %22, i64 noundef %23, i16 noundef zeroext %conv)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %land.lhs.true
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_postdecode = getelementptr inbounds %struct.tiff, ptr %27, i32 0, i32 54
  %28 = load ptr, ptr %tif_postdecode, align 8
  %29 = load ptr, ptr %tif.addr, align 8
  %30 = load ptr, ptr %buf.addr, align 8
  %31 = load i64, ptr %size.addr, align 8
  call void %28(ptr noundef %29, ptr noundef %30, i64 noundef %31)
  %32 = load i64, ptr %size.addr, align 8
  store i64 %32, ptr %retval, align 8
  br label %return

if.else15:                                        ; preds = %land.lhs.true, %if.end9
  store i64 -1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else15, %if.then14, %if.then1, %if.then
  %33 = load i64, ptr %retval, align 8
  ret i64 %33
}

declare i64 @TIFFComputeTile(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i16 noundef zeroext) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFFillTile(ptr noundef %tif, i64 noundef %tile) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tile.addr = alloca i64, align 8
  %td = alloca ptr, align 8
  %bytecount = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tile, ptr %tile.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 45
  %2 = load ptr, ptr %td_stripbytecount, align 8
  %3 = load i64, ptr %tile.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 %3
  %4 = load i64, ptr %arrayidx, align 8
  store i64 %4, ptr %bytecount, align 8
  %5 = load i64, ptr %bytecount, align 8
  %cmp = icmp sle i64 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %tif_name, align 8
  %8 = load i64, ptr %bytecount, align 8
  %9 = load i64, ptr %tile.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %7, ptr noundef @.str.20, i64 noundef %8, i64 noundef %9)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %10, i32 0, i32 3
  %11 = load i64, ptr %tif_flags, align 8
  %and = and i64 %11, 2048
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_flags2 = getelementptr inbounds %struct.tiff, ptr %12, i32 0, i32 3
  %13 = load i64, ptr %tif_flags2, align 8
  %14 = load ptr, ptr %td, align 8
  %td_fillorder = getelementptr inbounds %struct.TIFFDirectory, ptr %14, i32 0, i32 13
  %15 = load i16, ptr %td_fillorder, align 2
  %conv = zext i16 %15 to i64
  %and3 = and i64 %13, %conv
  %cmp4 = icmp ne i64 %and3, 0
  br i1 %cmp4, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_flags6 = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 3
  %17 = load i64, ptr %tif_flags6, align 8
  %and7 = and i64 %17, 256
  %tobool = icmp ne i64 %and7, 0
  br i1 %tobool, label %if.then8, label %if.else

if.then8:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_flags9 = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 3
  %19 = load i64, ptr %tif_flags9, align 8
  %and10 = and i64 %19, 512
  %tobool11 = icmp ne i64 %and10, 0
  br i1 %tobool11, label %land.lhs.true12, label %if.end16

land.lhs.true12:                                  ; preds = %if.then8
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %20, i32 0, i32 40
  %21 = load ptr, ptr %tif_rawdata, align 8
  %tobool13 = icmp ne ptr %21, null
  br i1 %tobool13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %land.lhs.true12
  %22 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata15 = getelementptr inbounds %struct.tiff, ptr %22, i32 0, i32 40
  %23 = load ptr, ptr %tif_rawdata15, align 8
  call void @_TIFFfree(ptr noundef %23)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %land.lhs.true12, %if.then8
  %24 = load ptr, ptr %tif.addr, align 8
  %tif_flags17 = getelementptr inbounds %struct.tiff, ptr %24, i32 0, i32 3
  %25 = load i64, ptr %tif_flags17, align 8
  %and18 = and i64 %25, -513
  store i64 %and18, ptr %tif_flags17, align 8
  %26 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %26, i32 0, i32 44
  %27 = load ptr, ptr %td_stripoffset, align 8
  %28 = load i64, ptr %tile.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %27, i64 %28
  %29 = load i64, ptr %arrayidx19, align 8
  %30 = load i64, ptr %bytecount, align 8
  %add = add i64 %29, %30
  %31 = load ptr, ptr %tif.addr, align 8
  %tif_size = getelementptr inbounds %struct.tiff, ptr %31, i32 0, i32 45
  %32 = load i64, ptr %tif_size, align 8
  %cmp20 = icmp sgt i64 %add, %32
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end16
  %33 = load ptr, ptr %tif.addr, align 8
  %tif_curtile = getelementptr inbounds %struct.tiff, ptr %33, i32 0, i32 19
  store i64 -1, ptr %tif_curtile, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end16
  %34 = load i64, ptr %bytecount, align 8
  %35 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %35, i32 0, i32 41
  store i64 %34, ptr %tif_rawdatasize, align 8
  %36 = load ptr, ptr %tif.addr, align 8
  %tif_base = getelementptr inbounds %struct.tiff, ptr %36, i32 0, i32 44
  %37 = load ptr, ptr %tif_base, align 8
  %38 = load ptr, ptr %td, align 8
  %td_stripoffset24 = getelementptr inbounds %struct.TIFFDirectory, ptr %38, i32 0, i32 44
  %39 = load ptr, ptr %td_stripoffset24, align 8
  %40 = load i64, ptr %tile.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %39, i64 %40
  %41 = load i64, ptr %arrayidx25, align 8
  %add.ptr = getelementptr inbounds i8, ptr %37, i64 %41
  %42 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata26 = getelementptr inbounds %struct.tiff, ptr %42, i32 0, i32 40
  store ptr %add.ptr, ptr %tif_rawdata26, align 8
  br label %if.end64

if.else:                                          ; preds = %lor.lhs.false, %if.end
  %43 = load i64, ptr %bytecount, align 8
  %44 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize27 = getelementptr inbounds %struct.tiff, ptr %44, i32 0, i32 41
  %45 = load i64, ptr %tif_rawdatasize27, align 8
  %cmp28 = icmp sgt i64 %43, %45
  br i1 %cmp28, label %if.then30, label %if.end43

if.then30:                                        ; preds = %if.else
  %46 = load ptr, ptr %tif.addr, align 8
  %tif_curtile31 = getelementptr inbounds %struct.tiff, ptr %46, i32 0, i32 19
  store i64 -1, ptr %tif_curtile31, align 8
  %47 = load ptr, ptr %tif.addr, align 8
  %tif_flags32 = getelementptr inbounds %struct.tiff, ptr %47, i32 0, i32 3
  %48 = load i64, ptr %tif_flags32, align 8
  %and33 = and i64 %48, 512
  %cmp34 = icmp eq i64 %and33, 0
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.then30
  %49 = load ptr, ptr %tif.addr, align 8
  %tif_name37 = getelementptr inbounds %struct.tiff, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %tif_name37, align 8
  %51 = load i64, ptr %tile.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFFillTile.module, ptr noundef @.str.21, ptr noundef %50, i64 noundef %51)
  store i32 0, ptr %retval, align 4
  br label %return

if.end38:                                         ; preds = %if.then30
  %52 = load ptr, ptr %tif.addr, align 8
  %53 = load i64, ptr %bytecount, align 8
  %add39 = add i64 %53, 1023
  %div = udiv i64 %add39, 1024
  %mul = mul i64 %div, 1024
  %call = call i32 @TIFFReadBufferSetup(ptr noundef %52, ptr noundef null, i64 noundef %mul)
  %tobool40 = icmp ne i32 %call, 0
  br i1 %tobool40, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.end38
  store i32 0, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.end38
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.else
  %54 = load ptr, ptr %tif.addr, align 8
  %55 = load i64, ptr %tile.addr, align 8
  %56 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata44 = getelementptr inbounds %struct.tiff, ptr %56, i32 0, i32 40
  %57 = load ptr, ptr %tif_rawdata44, align 8
  %58 = load i64, ptr %bytecount, align 8
  %call45 = call i64 @TIFFReadRawTile1(ptr noundef %54, i64 noundef %55, ptr noundef %57, i64 noundef %58, ptr noundef @TIFFFillTile.module)
  %59 = load i64, ptr %bytecount, align 8
  %cmp46 = icmp ne i64 %call45, %59
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end43
  store i32 0, ptr %retval, align 4
  br label %return

if.end49:                                         ; preds = %if.end43
  %60 = load ptr, ptr %tif.addr, align 8
  %tif_flags50 = getelementptr inbounds %struct.tiff, ptr %60, i32 0, i32 3
  %61 = load i64, ptr %tif_flags50, align 8
  %62 = load ptr, ptr %td, align 8
  %td_fillorder51 = getelementptr inbounds %struct.TIFFDirectory, ptr %62, i32 0, i32 13
  %63 = load i16, ptr %td_fillorder51, align 2
  %conv52 = zext i16 %63 to i64
  %and53 = and i64 %61, %conv52
  %cmp54 = icmp ne i64 %and53, 0
  br i1 %cmp54, label %if.end63, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %if.end49
  %64 = load ptr, ptr %tif.addr, align 8
  %tif_flags57 = getelementptr inbounds %struct.tiff, ptr %64, i32 0, i32 3
  %65 = load i64, ptr %tif_flags57, align 8
  %and58 = and i64 %65, 256
  %cmp59 = icmp eq i64 %and58, 0
  br i1 %cmp59, label %if.then61, label %if.end63

if.then61:                                        ; preds = %land.lhs.true56
  %66 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata62 = getelementptr inbounds %struct.tiff, ptr %66, i32 0, i32 40
  %67 = load ptr, ptr %tif_rawdata62, align 8
  %68 = load i64, ptr %bytecount, align 8
  call void @TIFFReverseBits(ptr noundef %67, i64 noundef %68)
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %land.lhs.true56, %if.end49
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end23
  %69 = load ptr, ptr %tif.addr, align 8
  %70 = load i64, ptr %tile.addr, align 8
  %call65 = call i32 @TIFFStartTile(ptr noundef %69, i64 noundef %70)
  store i32 %call65, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end64, %if.then48, %if.then41, %if.then36, %if.then22, %if.then
  %71 = load i32, ptr %retval, align 4
  ret i32 %71
}

; Function Attrs: nounwind ssp uwtable
define i64 @TIFFReadRawTile(ptr noundef %tif, i64 noundef %tile, ptr noundef %buf, i64 noundef %size) #0 {
entry:
  %retval = alloca i64, align 8
  %tif.addr = alloca ptr, align 8
  %tile.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %td = alloca ptr, align 8
  %bytecount = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tile, ptr %tile.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %size, ptr %size.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFCheckRead(ptr noundef %1, i32 noundef 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %tile.addr, align 8
  %3 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 43
  %4 = load i64, ptr %td_nstrips, align 8
  %cmp = icmp uge i64 %2, %4
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %tif_name, align 8
  %7 = load i64, ptr %tile.addr, align 8
  %8 = load ptr, ptr %td, align 8
  %td_nstrips2 = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i32 0, i32 43
  %9 = load i64, ptr %td_nstrips2, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %6, ptr noundef @.str.4, i64 noundef %7, i64 noundef %9)
  store i64 -1, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %10 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i32 0, i32 45
  %11 = load ptr, ptr %td_stripbytecount, align 8
  %12 = load i64, ptr %tile.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %11, i64 %12
  %13 = load i64, ptr %arrayidx, align 8
  store i64 %13, ptr %bytecount, align 8
  %14 = load i64, ptr %size.addr, align 8
  %cmp4 = icmp ne i64 %14, -1
  br i1 %cmp4, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end3
  %15 = load i64, ptr %size.addr, align 8
  %16 = load i64, ptr %bytecount, align 8
  %cmp5 = icmp slt i64 %15, %16
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  %17 = load i64, ptr %size.addr, align 8
  store i64 %17, ptr %bytecount, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %land.lhs.true, %if.end3
  %18 = load ptr, ptr %tif.addr, align 8
  %19 = load i64, ptr %tile.addr, align 8
  %20 = load ptr, ptr %buf.addr, align 8
  %21 = load i64, ptr %bytecount, align 8
  %call8 = call i64 @TIFFReadRawTile1(ptr noundef %18, i64 noundef %19, ptr noundef %20, i64 noundef %21, ptr noundef @TIFFReadRawTile.module)
  store i64 %call8, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end7, %if.then1, %if.then
  %22 = load i64, ptr %retval, align 8
  ret i64 %22
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @TIFFReadRawTile1(ptr noundef %tif, i64 noundef %tile, ptr noundef %buf, i64 noundef %size, ptr noundef %module) #0 {
entry:
  %retval = alloca i64, align 8
  %tif.addr = alloca ptr, align 8
  %tile.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %module.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %cc = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tile, ptr %tile.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %size, ptr %size.addr, align 8
  store ptr %module, ptr %module.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 3
  %2 = load i64, ptr %tif_flags, align 8
  %and = and i64 %2, 2048
  %cmp = icmp ne i64 %and, 0
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
  %9 = load i64, ptr %tile.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %8, i64 %9
  %10 = load i64, ptr %arrayidx, align 8
  %call = call i64 %4(ptr noundef %6, i64 noundef %10, i32 noundef 0)
  %11 = load ptr, ptr %td, align 8
  %td_stripoffset1 = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i32 0, i32 44
  %12 = load ptr, ptr %td_stripoffset1, align 8
  %13 = load i64, ptr %tile.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %12, i64 %13
  %14 = load i64, ptr %arrayidx2, align 8
  %cmp3 = icmp eq i64 %call, %14
  br i1 %cmp3, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %15 = load ptr, ptr %module.addr, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %tif_name, align 8
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 11
  %19 = load i64, ptr %tif_row, align 8
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_col = getelementptr inbounds %struct.tiff, ptr %20, i32 0, i32 18
  %21 = load i64, ptr %tif_col, align 8
  %22 = load i64, ptr %tile.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %15, ptr noundef @.str.17, ptr noundef %17, i64 noundef %19, i64 noundef %21, i64 noundef %22)
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_readproc = getelementptr inbounds %struct.tiff, ptr %23, i32 0, i32 49
  %24 = load ptr, ptr %tif_readproc, align 8
  %25 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata5 = getelementptr inbounds %struct.tiff, ptr %25, i32 0, i32 48
  %26 = load ptr, ptr %tif_clientdata5, align 8
  %27 = load ptr, ptr %buf.addr, align 8
  %28 = load i64, ptr %size.addr, align 8
  %call6 = call i64 %24(ptr noundef %26, ptr noundef %27, i64 noundef %28)
  store i64 %call6, ptr %cc, align 8
  %29 = load i64, ptr %cc, align 8
  %30 = load i64, ptr %size.addr, align 8
  %cmp7 = icmp ne i64 %29, %30
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end
  %31 = load ptr, ptr %module.addr, align 8
  %32 = load ptr, ptr %tif.addr, align 8
  %tif_name9 = getelementptr inbounds %struct.tiff, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %tif_name9, align 8
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_row10 = getelementptr inbounds %struct.tiff, ptr %34, i32 0, i32 11
  %35 = load i64, ptr %tif_row10, align 8
  %36 = load ptr, ptr %tif.addr, align 8
  %tif_col11 = getelementptr inbounds %struct.tiff, ptr %36, i32 0, i32 18
  %37 = load i64, ptr %tif_col11, align 8
  %38 = load i64, ptr %cc, align 8
  %39 = load i64, ptr %size.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %31, ptr noundef @.str.18, ptr noundef %33, i64 noundef %35, i64 noundef %37, i64 noundef %38, i64 noundef %39)
  store i64 -1, ptr %retval, align 8
  br label %return

if.end12:                                         ; preds = %if.end
  br label %if.end26

if.else:                                          ; preds = %entry
  %40 = load ptr, ptr %td, align 8
  %td_stripoffset13 = getelementptr inbounds %struct.TIFFDirectory, ptr %40, i32 0, i32 44
  %41 = load ptr, ptr %td_stripoffset13, align 8
  %42 = load i64, ptr %tile.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %41, i64 %42
  %43 = load i64, ptr %arrayidx14, align 8
  %44 = load i64, ptr %size.addr, align 8
  %add = add i64 %43, %44
  %45 = load ptr, ptr %tif.addr, align 8
  %tif_size = getelementptr inbounds %struct.tiff, ptr %45, i32 0, i32 45
  %46 = load i64, ptr %tif_size, align 8
  %cmp15 = icmp sgt i64 %add, %46
  br i1 %cmp15, label %if.then16, label %if.end23

if.then16:                                        ; preds = %if.else
  %47 = load ptr, ptr %module.addr, align 8
  %48 = load ptr, ptr %tif.addr, align 8
  %tif_name17 = getelementptr inbounds %struct.tiff, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %tif_name17, align 8
  %50 = load ptr, ptr %tif.addr, align 8
  %tif_row18 = getelementptr inbounds %struct.tiff, ptr %50, i32 0, i32 11
  %51 = load i64, ptr %tif_row18, align 8
  %52 = load ptr, ptr %tif.addr, align 8
  %tif_col19 = getelementptr inbounds %struct.tiff, ptr %52, i32 0, i32 18
  %53 = load i64, ptr %tif_col19, align 8
  %54 = load i64, ptr %tile.addr, align 8
  %55 = load ptr, ptr %tif.addr, align 8
  %tif_size20 = getelementptr inbounds %struct.tiff, ptr %55, i32 0, i32 45
  %56 = load i64, ptr %tif_size20, align 8
  %57 = load ptr, ptr %td, align 8
  %td_stripoffset21 = getelementptr inbounds %struct.TIFFDirectory, ptr %57, i32 0, i32 44
  %58 = load ptr, ptr %td_stripoffset21, align 8
  %59 = load i64, ptr %tile.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %58, i64 %59
  %60 = load i64, ptr %arrayidx22, align 8
  %sub = sub i64 %56, %60
  %61 = load i64, ptr %size.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %47, ptr noundef @.str.19, ptr noundef %49, i64 noundef %51, i64 noundef %53, i64 noundef %54, i64 noundef %sub, i64 noundef %61)
  store i64 -1, ptr %retval, align 8
  br label %return

if.end23:                                         ; preds = %if.else
  %62 = load ptr, ptr %buf.addr, align 8
  %63 = load ptr, ptr %tif.addr, align 8
  %tif_base = getelementptr inbounds %struct.tiff, ptr %63, i32 0, i32 44
  %64 = load ptr, ptr %tif_base, align 8
  %65 = load ptr, ptr %td, align 8
  %td_stripoffset24 = getelementptr inbounds %struct.TIFFDirectory, ptr %65, i32 0, i32 44
  %66 = load ptr, ptr %td_stripoffset24, align 8
  %67 = load i64, ptr %tile.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %66, i64 %67
  %68 = load i64, ptr %arrayidx25, align 8
  %add.ptr = getelementptr inbounds i8, ptr %64, i64 %68
  %69 = load i64, ptr %size.addr, align 8
  call void @_TIFFmemcpy(ptr noundef %62, ptr noundef %add.ptr, i64 noundef %69)
  br label %if.end26

if.end26:                                         ; preds = %if.end23, %if.end12
  %70 = load i64, ptr %size.addr, align 8
  store i64 %70, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end26, %if.then16, %if.then8, %if.then4
  %71 = load i64, ptr %retval, align 8
  ret i64 %71
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFReadBufferSetup(ptr noundef %tif, ptr noundef %bp, i64 noundef %size) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i64 %size, ptr %size.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 40
  %1 = load ptr, ptr %tif_rawdata, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 3
  %3 = load i64, ptr %tif_flags, align 8
  %and = and i64 %3, 512
  %tobool1 = icmp ne i64 %and, 0
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
  %8 = load i64, ptr %size.addr, align 8
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %9, i32 0, i32 41
  store i64 %8, ptr %tif_rawdatasize, align 8
  %10 = load ptr, ptr %bp.addr, align 8
  %11 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata8 = getelementptr inbounds %struct.tiff, ptr %11, i32 0, i32 40
  store ptr %10, ptr %tif_rawdata8, align 8
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_flags9 = getelementptr inbounds %struct.tiff, ptr %12, i32 0, i32 3
  %13 = load i64, ptr %tif_flags9, align 8
  %and10 = and i64 %13, -513
  store i64 %and10, ptr %tif_flags9, align 8
  br label %if.end15

if.else:                                          ; preds = %if.end5
  %14 = load i64, ptr %size.addr, align 8
  %add = add i64 %14, 1023
  %div = udiv i64 %add, 1024
  %mul = mul i64 %div, 1024
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize11 = getelementptr inbounds %struct.tiff, ptr %15, i32 0, i32 41
  store i64 %mul, ptr %tif_rawdatasize11, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize12 = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 41
  %17 = load i64, ptr %tif_rawdatasize12, align 8
  %call = call ptr @_TIFFmalloc(i64 noundef %17)
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata13 = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 40
  store ptr %call, ptr %tif_rawdata13, align 8
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_flags14 = getelementptr inbounds %struct.tiff, ptr %19, i32 0, i32 3
  %20 = load i64, ptr %tif_flags14, align 8
  %or = or i64 %20, 512
  store i64 %or, ptr %tif_flags14, align 8
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
  %26 = load i64, ptr %tif_row, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFReadBufferSetup.module, ptr noundef @.str.5, ptr noundef %24, i64 noundef %26)
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize18 = getelementptr inbounds %struct.tiff, ptr %27, i32 0, i32 41
  store i64 0, ptr %tif_rawdatasize18, align 8
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

declare ptr @_TIFFmalloc(i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @_TIFFNoPostDecode(ptr noundef %tif, ptr noundef %buf, i64 noundef %cc) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load ptr, ptr %buf.addr, align 8
  %2 = load i64, ptr %cc.addr, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_TIFFSwab16BitData(ptr noundef %tif, ptr noundef %buf, i64 noundef %cc) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load i64, ptr %cc.addr, align 8
  %and = and i64 %1, 1
  %cmp = icmp eq i64 %and, 0
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
  %4 = load i64, ptr %cc.addr, align 8
  %div = sdiv i64 %4, 2
  call void @TIFFSwabArrayOfShort(ptr noundef %3, i64 noundef %div)
  ret void
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare void @TIFFSwabArrayOfShort(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @_TIFFSwab32BitData(ptr noundef %tif, ptr noundef %buf, i64 noundef %cc) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load i64, ptr %cc.addr, align 8
  %and = and i64 %1, 3
  %cmp = icmp eq i64 %and, 0
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
  %4 = load i64, ptr %cc.addr, align 8
  %div = sdiv i64 %4, 4
  call void @TIFFSwabArrayOfLong(ptr noundef %3, i64 noundef %div)
  ret void
}

declare void @TIFFSwabArrayOfLong(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @_TIFFSwab64BitData(ptr noundef %tif, ptr noundef %buf, i64 noundef %cc) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load i64, ptr %cc.addr, align 8
  %and = and i64 %1, 7
  %cmp = icmp eq i64 %and, 0
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
  %4 = load i64, ptr %cc.addr, align 8
  %div = sdiv i64 %4, 8
  call void @TIFFSwabArrayOfDouble(ptr noundef %3, i64 noundef %div)
  ret void
}

declare void @TIFFSwabArrayOfDouble(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFStartStrip(ptr noundef %tif, i64 noundef %strip) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %strip.addr = alloca i64, align 8
  %td = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %strip, ptr %strip.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 3
  %2 = load i64, ptr %tif_flags, align 8
  %and = and i64 %2, 32
  %cmp = icmp eq i64 %and, 0
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
  %7 = load i64, ptr %tif_flags2, align 8
  %or = or i64 %7, 32
  store i64 %or, ptr %tif_flags2, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %8 = load i64, ptr %strip.addr, align 8
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %9, i32 0, i32 13
  store i64 %8, ptr %tif_curstrip, align 8
  %10 = load i64, ptr %strip.addr, align 8
  %11 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i32 0, i32 42
  %12 = load i64, ptr %td_stripsperimage, align 8
  %rem = urem i64 %10, %12
  %13 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i32 0, i32 16
  %14 = load i64, ptr %td_rowsperstrip, align 8
  %mul = mul i64 %rem, %14
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %15, i32 0, i32 11
  store i64 %mul, ptr %tif_row, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 40
  %17 = load ptr, ptr %tif_rawdata, align 8
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 42
  store ptr %17, ptr %tif_rawcp, align 8
  %19 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %19, i32 0, i32 45
  %20 = load ptr, ptr %td_stripbytecount, align 8
  %21 = load i64, ptr %strip.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %20, i64 %21
  %22 = load i64, ptr %arrayidx, align 8
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %23, i32 0, i32 43
  store i64 %22, ptr %tif_rawcc, align 8
  %24 = load ptr, ptr %tif.addr, align 8
  %tif_predecode = getelementptr inbounds %struct.tiff, ptr %24, i32 0, i32 22
  %25 = load ptr, ptr %tif_predecode, align 8
  %26 = load ptr, ptr %tif.addr, align 8
  %27 = load i64, ptr %strip.addr, align 8
  %28 = load ptr, ptr %td, align 8
  %td_stripsperimage4 = getelementptr inbounds %struct.TIFFDirectory, ptr %28, i32 0, i32 42
  %29 = load i64, ptr %td_stripsperimage4, align 8
  %div = udiv i64 %27, %29
  %conv = trunc i64 %div to i16
  %call5 = call i32 %25(ptr noundef %26, i16 noundef zeroext %conv)
  store i32 %call5, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then1
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i64 noundef) #1

declare void @TIFFReverseBits(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFStartTile(ptr noundef %tif, i64 noundef %tile) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tile.addr = alloca i64, align 8
  %td = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tile, ptr %tile.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 3
  %2 = load i64, ptr %tif_flags, align 8
  %and = and i64 %2, 32
  %cmp = icmp eq i64 %and, 0
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
  %7 = load i64, ptr %tif_flags2, align 8
  %or = or i64 %7, 32
  store i64 %or, ptr %tif_flags2, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %8 = load i64, ptr %tile.addr, align 8
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_curtile = getelementptr inbounds %struct.tiff, ptr %9, i32 0, i32 19
  store i64 %8, ptr %tif_curtile, align 8
  %10 = load i64, ptr %tile.addr, align 8
  %11 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i32 0, i32 1
  %12 = load i64, ptr %td_imagewidth, align 8
  %13 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i32 0, i32 4
  %14 = load i64, ptr %td_tilewidth, align 8
  %sub = sub i64 %14, 1
  %add = add i64 %12, %sub
  %15 = load ptr, ptr %td, align 8
  %td_tilewidth4 = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i32 0, i32 4
  %16 = load i64, ptr %td_tilewidth4, align 8
  %div = udiv i64 %add, %16
  %rem = urem i64 %10, %div
  %17 = load ptr, ptr %td, align 8
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i32 0, i32 5
  %18 = load i64, ptr %td_tilelength, align 8
  %mul = mul i64 %rem, %18
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %19, i32 0, i32 11
  store i64 %mul, ptr %tif_row, align 8
  %20 = load i64, ptr %tile.addr, align 8
  %21 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %21, i32 0, i32 2
  %22 = load i64, ptr %td_imagelength, align 8
  %23 = load ptr, ptr %td, align 8
  %td_tilelength5 = getelementptr inbounds %struct.TIFFDirectory, ptr %23, i32 0, i32 5
  %24 = load i64, ptr %td_tilelength5, align 8
  %sub6 = sub i64 %24, 1
  %add7 = add i64 %22, %sub6
  %25 = load ptr, ptr %td, align 8
  %td_tilelength8 = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i32 0, i32 5
  %26 = load i64, ptr %td_tilelength8, align 8
  %div9 = udiv i64 %add7, %26
  %rem10 = urem i64 %20, %div9
  %27 = load ptr, ptr %td, align 8
  %td_tilewidth11 = getelementptr inbounds %struct.TIFFDirectory, ptr %27, i32 0, i32 4
  %28 = load i64, ptr %td_tilewidth11, align 8
  %mul12 = mul i64 %rem10, %28
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_col = getelementptr inbounds %struct.tiff, ptr %29, i32 0, i32 18
  store i64 %mul12, ptr %tif_col, align 8
  %30 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %30, i32 0, i32 40
  %31 = load ptr, ptr %tif_rawdata, align 8
  %32 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %32, i32 0, i32 42
  store ptr %31, ptr %tif_rawcp, align 8
  %33 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %33, i32 0, i32 45
  %34 = load ptr, ptr %td_stripbytecount, align 8
  %35 = load i64, ptr %tile.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %34, i64 %35
  %36 = load i64, ptr %arrayidx, align 8
  %37 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %37, i32 0, i32 43
  store i64 %36, ptr %tif_rawcc, align 8
  %38 = load ptr, ptr %tif.addr, align 8
  %tif_predecode = getelementptr inbounds %struct.tiff, ptr %38, i32 0, i32 22
  %39 = load ptr, ptr %tif_predecode, align 8
  %40 = load ptr, ptr %tif.addr, align 8
  %41 = load i64, ptr %tile.addr, align 8
  %42 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %42, i32 0, i32 42
  %43 = load i64, ptr %td_stripsperimage, align 8
  %div13 = udiv i64 %41, %43
  %conv = trunc i64 %div13 to i16
  %call14 = call i32 %39(ptr noundef %40, i16 noundef zeroext %conv)
  store i32 %call14, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then1
  %44 = load i32, ptr %retval, align 4
  ret i32 %44
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
