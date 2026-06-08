; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_single_caller/source_snapshot_public_repos_mibench_consumer_tiff-v3.5.4_libtiff_tif_read.prepared.ll'
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
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %row.addr = alloca i64, align 8
  %sample.addr = alloca i16, align 2
  %e = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %row, ptr %row.addr, align 8
  store i16 %sample, ptr %sample.addr, align 2
  %call = call i32 @TIFFCheckRead(ptr noundef %tif, i32 noundef 0)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load i64, ptr %row.addr, align 8
  %2 = load i16, ptr %sample.addr, align 2
  %call1 = call i32 @TIFFSeek(ptr noundef %0, i64 noundef %1, i16 noundef zeroext %2)
  store i32 %call1, ptr %e, align 4
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end8, label %if.then2

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 26
  %4 = load ptr, ptr %tif_decoderow, align 8
  %5 = load ptr, ptr %buf.addr, align 8
  %tif_scanlinesize = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 38
  %6 = load i64, ptr %tif_scanlinesize, align 8
  %7 = load i16, ptr %sample.addr, align 2
  %call3 = call i32 %4(ptr noundef %3, ptr noundef %5, i64 noundef %6, i16 noundef zeroext %7) #3
  store i32 %call3, ptr %e, align 4
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 11
  %9 = load i64, ptr %tif_row, align 8
  %inc = add i64 %9, 1
  store i64 %inc, ptr %tif_row, align 8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.then2
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_postdecode = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 54
  %11 = load ptr, ptr %tif_postdecode, align 8
  %12 = load ptr, ptr %buf.addr, align 8
  %tif_scanlinesize6 = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 38
  %13 = load i64, ptr %tif_scanlinesize6, align 8
  call void %11(ptr noundef %10, ptr noundef %12, i64 noundef %13) #3
  br label %if.end8

if.end8:                                          ; preds = %if.then2, %if.then5, %if.end
  %14 = load i32, ptr %e, align 4
  %cmp9.inv = icmp slt i32 %14, 1
  %cond = select i1 %cmp9.inv, i32 -1, i32 1
  br label %return

return:                                           ; preds = %entry, %if.end8
  %storemerge = phi i32 [ %cond, %if.end8 ], [ -1, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFCheckRead(ptr noundef %tif, i32 noundef %tiles) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tiles.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %tiles, ptr %tiles.addr, align 4
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 2
  %0 = load i32, ptr %tif_mode, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %2 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %2, ptr noundef nonnull @.str.22) #3
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %tiles.addr, align 4
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %4, i64 0, i32 3
  %5 = load i64, ptr %tif_flags, align 8
  %6 = trunc i64 %5 to i32
  %7 = lshr i32 %6, 10
  %8 = and i32 %7, 1
  %tobool.not = icmp eq i32 %3, %8
  br i1 %tobool.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  %9 = load ptr, ptr %tif.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = load i32, ptr %tiles.addr, align 4
  %tobool4.not = icmp eq i32 %11, 0
  %cond = select i1 %tobool4.not, ptr @.str.24, ptr @.str.23
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %10, ptr noundef nonnull %cond) #3
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then2, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
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
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 2
  %0 = load i64, ptr %td_imagelength, align 8
  %cmp.not = icmp ugt i64 %0, %row
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %3 = load i64, ptr %row.addr, align 8
  %4 = load ptr, ptr %td, align 8
  %td_imagelength1 = getelementptr inbounds %struct.TIFFDirectory, ptr %4, i64 0, i32 2
  %5 = load i64, ptr %td_imagelength1, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %2, ptr noundef nonnull @.str.10, i64 noundef %3, i64 noundef %5) #3
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i64 0, i32 24
  %7 = load i16, ptr %td_planarconfig, align 2
  %cmp2 = icmp eq i16 %7, 2
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %8 = load i16, ptr %sample.addr, align 2
  %9 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %9, i64 0, i32 15
  %10 = load i16, ptr %td_samplesperpixel, align 2
  %cmp7.not = icmp ult i16 %8, %10
  br i1 %cmp7.not, label %if.end14, label %if.then9

if.then9:                                         ; preds = %if.then4
  %11 = load ptr, ptr %tif.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %13 = load i16, ptr %sample.addr, align 2
  %conv11 = zext i16 %13 to i64
  %14 = load ptr, ptr %td, align 8
  %td_samplesperpixel12 = getelementptr inbounds %struct.TIFFDirectory, ptr %14, i64 0, i32 15
  %15 = load i16, ptr %td_samplesperpixel12, align 2
  %conv13 = zext i16 %15 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %12, ptr noundef nonnull @.str.11, i64 noundef %conv11, i64 noundef %conv13) #3
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.then4
  %16 = load i16, ptr %sample.addr, align 2
  %conv15 = zext i16 %16 to i64
  %17 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i64 0, i32 42
  %18 = load i64, ptr %td_stripsperimage, align 8
  %mul = mul i64 %18, %conv15
  %19 = load i64, ptr %row.addr, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i64 0, i32 16
  %20 = load i64, ptr %td_rowsperstrip, align 8
  %div = udiv i64 %19, %20
  %add = add i64 %mul, %div
  br label %if.end18

if.else:                                          ; preds = %if.end
  %21 = load i64, ptr %row.addr, align 8
  %22 = load ptr, ptr %td, align 8
  %td_rowsperstrip16 = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i64 0, i32 16
  %23 = load i64, ptr %td_rowsperstrip16, align 8
  %div17 = udiv i64 %21, %23
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end14
  %storemerge = phi i64 [ %div17, %if.else ], [ %add, %if.end14 ]
  store i64 %storemerge, ptr %strip, align 8
  %24 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %24, i64 0, i32 13
  %25 = load i64, ptr %tif_curstrip, align 8
  %cmp19.not = icmp eq i64 %storemerge, %25
  br i1 %cmp19.not, label %if.else24, label %if.then21

if.then21:                                        ; preds = %if.end18
  %26 = load ptr, ptr %tif.addr, align 8
  %27 = load i64, ptr %strip, align 8
  %call = call i32 @TIFFFillStrip(ptr noundef %26, i64 noundef %27)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then22, label %if.end33

if.then22:                                        ; preds = %if.then21
  store i32 0, ptr %retval, align 4
  br label %return

if.else24:                                        ; preds = %if.end18
  %28 = load i64, ptr %row.addr, align 8
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %29, i64 0, i32 11
  %30 = load i64, ptr %tif_row, align 8
  %cmp25 = icmp ult i64 %28, %30
  br i1 %cmp25, label %if.then27, label %if.end33

if.then27:                                        ; preds = %if.else24
  %31 = load ptr, ptr %tif.addr, align 8
  %32 = load i64, ptr %strip, align 8
  %call28 = call i32 @TIFFStartStrip(ptr noundef %31, i64 noundef %32)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.then27
  store i32 0, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.else24, %if.then27, %if.then21
  %33 = load i64, ptr %row.addr, align 8
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_row34 = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 11
  %35 = load i64, ptr %tif_row34, align 8
  %cmp35.not = icmp eq i64 %33, %35
  br i1 %cmp35.not, label %if.end44, label %if.then37

if.then37:                                        ; preds = %if.end33
  %36 = load ptr, ptr %tif.addr, align 8
  %tif_seek = getelementptr inbounds %struct.tiff, ptr %36, i64 0, i32 33
  %37 = load ptr, ptr %tif_seek, align 8
  %38 = load i64, ptr %row.addr, align 8
  %tif_row38 = getelementptr inbounds %struct.tiff, ptr %36, i64 0, i32 11
  %39 = load i64, ptr %tif_row38, align 8
  %sub = sub i64 %38, %39
  %call39 = call i32 %37(ptr noundef %36, i64 noundef %sub) #3
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.then37
  store i32 0, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.then37
  %40 = load i64, ptr %row.addr, align 8
  %41 = load ptr, ptr %tif.addr, align 8
  %tif_row43 = getelementptr inbounds %struct.tiff, ptr %41, i64 0, i32 11
  store i64 %40, ptr %tif_row43, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.end42, %if.end33
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end44, %if.then41, %if.then30, %if.then22, %if.then9, %if.then
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
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
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %call = call i32 @TIFFCheckRead(ptr noundef %tif, i32 noundef 0)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i64, ptr %strip.addr, align 8
  %1 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i64 0, i32 43
  %2 = load i64, ptr %td_nstrips, align 8
  %cmp.not = icmp ult i64 %0, %2
  br i1 %cmp.not, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %tif.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = load i64, ptr %strip.addr, align 8
  %6 = load ptr, ptr %td, align 8
  %td_nstrips2 = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i64 0, i32 43
  %7 = load i64, ptr %td_nstrips2, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %4, ptr noundef nonnull @.str, i64 noundef %5, i64 noundef %7) #3
  store i64 -1, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %8 = load i64, ptr %strip.addr, align 8
  %9 = load ptr, ptr %td, align 8
  %td_nstrips4 = getelementptr inbounds %struct.TIFFDirectory, ptr %9, i64 0, i32 43
  %10 = load i64, ptr %td_nstrips4, align 8
  %sub = add i64 %10, -1
  %cmp5.not = icmp eq i64 %8, %sub
  br i1 %cmp5.not, label %lor.lhs.false, label %if.then7

lor.lhs.false:                                    ; preds = %if.end3
  %11 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i64 0, i32 2
  %12 = load i64, ptr %td_imagelength, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i64 0, i32 16
  %13 = load i64, ptr %td_rowsperstrip, align 8
  %rem = urem i64 %12, %13
  store i64 %rem, ptr %nrows, align 8
  %cmp6 = icmp eq i64 %rem, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %lor.lhs.false, %if.end3
  %14 = load ptr, ptr %td, align 8
  %td_rowsperstrip8 = getelementptr inbounds %struct.TIFFDirectory, ptr %14, i64 0, i32 16
  %15 = load i64, ptr %td_rowsperstrip8, align 8
  store i64 %15, ptr %nrows, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %lor.lhs.false
  %16 = load ptr, ptr %tif.addr, align 8
  %17 = load i64, ptr %nrows, align 8
  %call10 = call i64 @TIFFVStripSize(ptr noundef %16, i64 noundef %17) #3
  store i64 %call10, ptr %stripsize, align 8
  %18 = load i64, ptr %size.addr, align 8
  %cmp11 = icmp eq i64 %18, -1
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end9
  %19 = load i64, ptr %stripsize, align 8
  store i64 %19, ptr %size.addr, align 8
  br label %if.end16

if.else:                                          ; preds = %if.end9
  %20 = load i64, ptr %size.addr, align 8
  %21 = load i64, ptr %stripsize, align 8
  %cmp13 = icmp sgt i64 %20, %21
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.else
  %22 = load i64, ptr %stripsize, align 8
  store i64 %22, ptr %size.addr, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then14, %if.then12
  %23 = load ptr, ptr %tif.addr, align 8
  %24 = load i64, ptr %strip.addr, align 8
  %call17 = call i32 @TIFFFillStrip(ptr noundef %23, i64 noundef %24)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.else22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end16
  %25 = load ptr, ptr %tif.addr, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %25, i64 0, i32 28
  %26 = load ptr, ptr %tif_decodestrip, align 8
  %27 = load ptr, ptr %buf.addr, align 8
  %28 = load i64, ptr %size.addr, align 8
  %29 = load i64, ptr %strip.addr, align 8
  %30 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %30, i64 0, i32 42
  %31 = load i64, ptr %td_stripsperimage, align 8
  %div = udiv i64 %29, %31
  %conv = trunc i64 %div to i16
  %call19 = call i32 %26(ptr noundef %25, ptr noundef %27, i64 noundef %28, i16 noundef zeroext %conv) #3
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.else22, label %if.then21

if.then21:                                        ; preds = %land.lhs.true
  %32 = load ptr, ptr %tif.addr, align 8
  %tif_postdecode = getelementptr inbounds %struct.tiff, ptr %32, i64 0, i32 54
  %33 = load ptr, ptr %tif_postdecode, align 8
  %34 = load ptr, ptr %buf.addr, align 8
  %35 = load i64, ptr %size.addr, align 8
  call void %33(ptr noundef %32, ptr noundef %34, i64 noundef %35) #3
  store i64 %35, ptr %retval, align 8
  br label %return

if.else22:                                        ; preds = %land.lhs.true, %if.end16
  store i64 -1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else22, %if.then21, %if.then1, %if.then
  %36 = load i64, ptr %retval, align 8
  ret i64 %36
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
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 45
  %0 = load ptr, ptr %td_stripbytecount, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 %strip
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %bytecount, align 8
  %cmp = icmp slt i64 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i64, ptr %bytecount, align 8
  %5 = load i64, ptr %strip.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %3, ptr noundef nonnull @.str.2, i64 noundef %4, i64 noundef %5) #3
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 3
  %7 = load i64, ptr %tif_flags, align 8
  %and = and i64 %7, 2048
  %cmp1.not = icmp eq i64 %and, 0
  br i1 %cmp1.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_flags2 = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 3
  %9 = load i64, ptr %tif_flags2, align 8
  %10 = load ptr, ptr %td, align 8
  %td_fillorder = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i64 0, i32 13
  %11 = load i16, ptr %td_fillorder, align 2
  %conv = zext i16 %11 to i64
  %and3 = and i64 %9, %conv
  %cmp4.not = icmp eq i64 %and3, 0
  br i1 %cmp4.not, label %lor.lhs.false, label %if.then8

lor.lhs.false:                                    ; preds = %land.lhs.true
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_flags6 = getelementptr inbounds %struct.tiff, ptr %12, i64 0, i32 3
  %13 = load i64, ptr %tif_flags6, align 8
  %and7 = and i64 %13, 256
  %tobool.not = icmp eq i64 %and7, 0
  br i1 %tobool.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_flags9 = getelementptr inbounds %struct.tiff, ptr %14, i64 0, i32 3
  %15 = load i64, ptr %tif_flags9, align 8
  %and10 = and i64 %15, 512
  %tobool11.not = icmp eq i64 %and10, 0
  br i1 %tobool11.not, label %if.end16, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %if.then8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 40
  %17 = load ptr, ptr %tif_rawdata, align 8
  %tobool13.not = icmp eq ptr %17, null
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %land.lhs.true12
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata15 = getelementptr inbounds %struct.tiff, ptr %18, i64 0, i32 40
  %19 = load ptr, ptr %tif_rawdata15, align 8
  call void @_TIFFfree(ptr noundef %19) #3
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %land.lhs.true12, %if.then8
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_flags17 = getelementptr inbounds %struct.tiff, ptr %20, i64 0, i32 3
  %21 = load i64, ptr %tif_flags17, align 8
  %and18 = and i64 %21, -513
  store i64 %and18, ptr %tif_flags17, align 8
  %22 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i64 0, i32 44
  %23 = load ptr, ptr %td_stripoffset, align 8
  %24 = load i64, ptr %strip.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %23, i64 %24
  %25 = load i64, ptr %arrayidx19, align 8
  %26 = load i64, ptr %bytecount, align 8
  %add = add nsw i64 %25, %26
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_size = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 45
  %28 = load i64, ptr %tif_size, align 8
  %cmp20 = icmp sgt i64 %add, %28
  br i1 %cmp20, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.end16
  %29 = load ptr, ptr %tif.addr, align 8
  %30 = load ptr, ptr %29, align 8
  %31 = load i64, ptr %strip.addr, align 8
  %tif_size24 = getelementptr inbounds %struct.tiff, ptr %29, i64 0, i32 45
  %32 = load i64, ptr %tif_size24, align 8
  %33 = load ptr, ptr %td, align 8
  %td_stripoffset25 = getelementptr inbounds %struct.TIFFDirectory, ptr %33, i64 0, i32 44
  %34 = load ptr, ptr %td_stripoffset25, align 8
  %arrayidx26 = getelementptr inbounds i64, ptr %34, i64 %31
  %35 = load i64, ptr %arrayidx26, align 8
  %sub = sub i64 %32, %35
  %36 = load i64, ptr %bytecount, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFFillStrip.module, ptr noundef nonnull @.str.15, ptr noundef %30, i64 noundef %31, i64 noundef %sub, i64 noundef %36) #3
  %37 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %37, i64 0, i32 13
  store i64 -1, ptr %tif_curstrip, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end16
  %38 = load i64, ptr %bytecount, align 8
  %39 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %39, i64 0, i32 41
  store i64 %38, ptr %tif_rawdatasize, align 8
  %tif_base = getelementptr inbounds %struct.tiff, ptr %39, i64 0, i32 44
  %40 = load ptr, ptr %tif_base, align 8
  %41 = load ptr, ptr %td, align 8
  %td_stripoffset28 = getelementptr inbounds %struct.TIFFDirectory, ptr %41, i64 0, i32 44
  %42 = load ptr, ptr %td_stripoffset28, align 8
  %43 = load i64, ptr %strip.addr, align 8
  %arrayidx29 = getelementptr inbounds i64, ptr %42, i64 %43
  %44 = load i64, ptr %arrayidx29, align 8
  %add.ptr = getelementptr inbounds i8, ptr %40, i64 %44
  %45 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata30 = getelementptr inbounds %struct.tiff, ptr %45, i64 0, i32 40
  store ptr %add.ptr, ptr %tif_rawdata30, align 8
  br label %if.end68

if.else:                                          ; preds = %lor.lhs.false, %if.end
  %46 = load i64, ptr %bytecount, align 8
  %47 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize31 = getelementptr inbounds %struct.tiff, ptr %47, i64 0, i32 41
  %48 = load i64, ptr %tif_rawdatasize31, align 8
  %cmp32 = icmp sgt i64 %46, %48
  br i1 %cmp32, label %if.then34, label %if.end47

if.then34:                                        ; preds = %if.else
  %49 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip35 = getelementptr inbounds %struct.tiff, ptr %49, i64 0, i32 13
  store i64 -1, ptr %tif_curstrip35, align 8
  %tif_flags36 = getelementptr inbounds %struct.tiff, ptr %49, i64 0, i32 3
  %50 = load i64, ptr %tif_flags36, align 8
  %and37 = and i64 %50, 512
  %cmp38 = icmp eq i64 %and37, 0
  br i1 %cmp38, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.then34
  %51 = load ptr, ptr %tif.addr, align 8
  %52 = load ptr, ptr %51, align 8
  %53 = load i64, ptr %strip.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFFillStrip.module, ptr noundef nonnull @.str.16, ptr noundef %52, i64 noundef %53) #3
  store i32 0, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.then34
  %54 = load ptr, ptr %tif.addr, align 8
  %55 = load i64, ptr %bytecount, align 8
  %add43 = add i64 %55, 1023
  %div1 = and i64 %add43, -1024
  %call = call i32 @TIFFReadBufferSetup(ptr noundef %54, ptr noundef null, i64 noundef %div1)
  %tobool44.not = icmp eq i32 %call, 0
  br i1 %tobool44.not, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.end42
  store i32 0, ptr %retval, align 4
  br label %return

if.end47:                                         ; preds = %if.end42, %if.else
  %56 = load ptr, ptr %tif.addr, align 8
  %57 = load i64, ptr %strip.addr, align 8
  %tif_rawdata48 = getelementptr inbounds %struct.tiff, ptr %56, i64 0, i32 40
  %58 = load ptr, ptr %tif_rawdata48, align 8
  %59 = load i64, ptr %bytecount, align 8
  %call49 = call i64 @TIFFReadRawStrip1(ptr noundef %56, i64 noundef %57, ptr noundef %58, i64 noundef %59, ptr noundef nonnull @TIFFFillStrip.module)
  %cmp50.not = icmp eq i64 %call49, %59
  br i1 %cmp50.not, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.end47
  store i32 0, ptr %retval, align 4
  br label %return

if.end53:                                         ; preds = %if.end47
  %60 = load ptr, ptr %tif.addr, align 8
  %tif_flags54 = getelementptr inbounds %struct.tiff, ptr %60, i64 0, i32 3
  %61 = load i64, ptr %tif_flags54, align 8
  %62 = load ptr, ptr %td, align 8
  %td_fillorder55 = getelementptr inbounds %struct.TIFFDirectory, ptr %62, i64 0, i32 13
  %63 = load i16, ptr %td_fillorder55, align 2
  %conv56 = zext i16 %63 to i64
  %and57 = and i64 %61, %conv56
  %cmp58.not = icmp eq i64 %and57, 0
  br i1 %cmp58.not, label %land.lhs.true60, label %if.end68

land.lhs.true60:                                  ; preds = %if.end53
  %64 = load ptr, ptr %tif.addr, align 8
  %tif_flags61 = getelementptr inbounds %struct.tiff, ptr %64, i64 0, i32 3
  %65 = load i64, ptr %tif_flags61, align 8
  %and62 = and i64 %65, 256
  %cmp63 = icmp eq i64 %and62, 0
  br i1 %cmp63, label %if.then65, label %if.end68

if.then65:                                        ; preds = %land.lhs.true60
  %66 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata66 = getelementptr inbounds %struct.tiff, ptr %66, i64 0, i32 40
  %67 = load ptr, ptr %tif_rawdata66, align 8
  %68 = load i64, ptr %bytecount, align 8
  call void @TIFFReverseBits(ptr noundef %67, i64 noundef %68) #3
  br label %if.end68

if.end68:                                         ; preds = %if.end53, %land.lhs.true60, %if.then65, %if.end27
  %69 = load ptr, ptr %tif.addr, align 8
  %70 = load i64, ptr %strip.addr, align 8
  %call69 = call i32 @TIFFStartStrip(ptr noundef %69, i64 noundef %70)
  store i32 %call69, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end68, %if.then52, %if.then45, %if.then40, %if.then22, %if.then
  %71 = load i32, ptr %retval, align 4
  ret i32 %71
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
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %call = call i32 @TIFFCheckRead(ptr noundef %tif, i32 noundef 0)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i64, ptr %strip.addr, align 8
  %1 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i64 0, i32 43
  %2 = load i64, ptr %td_nstrips, align 8
  %cmp.not = icmp ult i64 %0, %2
  br i1 %cmp.not, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %tif.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = load i64, ptr %strip.addr, align 8
  %6 = load ptr, ptr %td, align 8
  %td_nstrips2 = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i64 0, i32 43
  %7 = load i64, ptr %td_nstrips2, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %4, ptr noundef nonnull @.str.1, i64 noundef %5, i64 noundef %7) #3
  store i64 -1, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %8 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i64 0, i32 45
  %9 = load ptr, ptr %td_stripbytecount, align 8
  %10 = load i64, ptr %strip.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %9, i64 %10
  %11 = load i64, ptr %arrayidx, align 8
  store i64 %11, ptr %bytecount, align 8
  %cmp4 = icmp slt i64 %11, 1
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end3
  %12 = load ptr, ptr %tif.addr, align 8
  %13 = load ptr, ptr %12, align 8
  %14 = load i64, ptr %bytecount, align 8
  %15 = load i64, ptr %strip.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %13, ptr noundef nonnull @.str.2, i64 noundef %14, i64 noundef %15) #3
  store i64 -1, ptr %retval, align 8
  br label %return

if.end7:                                          ; preds = %if.end3
  %16 = load i64, ptr %size.addr, align 8
  %cmp8.not = icmp eq i64 %16, -1
  br i1 %cmp8.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end7
  %17 = load i64, ptr %size.addr, align 8
  %18 = load i64, ptr %bytecount, align 8
  %cmp9 = icmp slt i64 %17, %18
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  %19 = load i64, ptr %size.addr, align 8
  store i64 %19, ptr %bytecount, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true, %if.end7
  %20 = load ptr, ptr %tif.addr, align 8
  %21 = load i64, ptr %strip.addr, align 8
  %22 = load ptr, ptr %buf.addr, align 8
  %23 = load i64, ptr %bytecount, align 8
  %call12 = call i64 @TIFFReadRawStrip1(ptr noundef %20, i64 noundef %21, ptr noundef %22, i64 noundef %23, ptr noundef nonnull @TIFFReadRawStrip.module)
  store i64 %call12, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end11, %if.then5, %if.then1, %if.then
  %24 = load i64, ptr %retval, align 8
  ret i64 %24
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
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %1 = load i64, ptr %tif_flags, align 8
  %and = and i64 %1, 2048
  %cmp.not = icmp eq i64 %and, 0
  br i1 %cmp.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 51
  %3 = load ptr, ptr %tif_seekproc, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 48
  %4 = load ptr, ptr %tif_clientdata, align 8
  %5 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i64 0, i32 44
  %6 = load ptr, ptr %td_stripoffset, align 8
  %7 = load i64, ptr %strip.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %6, i64 %7
  %8 = load i64, ptr %arrayidx, align 8
  %call = call i64 %3(ptr noundef %4, i64 noundef %8, i32 noundef 0) #3
  %9 = load ptr, ptr %td, align 8
  %td_stripoffset1 = getelementptr inbounds %struct.TIFFDirectory, ptr %9, i64 0, i32 44
  %10 = load ptr, ptr %td_stripoffset1, align 8
  %11 = load i64, ptr %strip.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %10, i64 %11
  %12 = load i64, ptr %arrayidx2, align 8
  %cmp3 = icmp eq i64 %call, %12
  br i1 %cmp3, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %13 = load ptr, ptr %module.addr, align 8
  %14 = load ptr, ptr %tif.addr, align 8
  %15 = load ptr, ptr %14, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %14, i64 0, i32 11
  %16 = load i64, ptr %tif_row, align 8
  %17 = load i64, ptr %strip.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %13, ptr noundef nonnull @.str.12, ptr noundef %15, i64 noundef %16, i64 noundef %17) #3
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_readproc = getelementptr inbounds %struct.tiff, ptr %18, i64 0, i32 49
  %19 = load ptr, ptr %tif_readproc, align 8
  %tif_clientdata5 = getelementptr inbounds %struct.tiff, ptr %18, i64 0, i32 48
  %20 = load ptr, ptr %tif_clientdata5, align 8
  %21 = load ptr, ptr %buf.addr, align 8
  %22 = load i64, ptr %size.addr, align 8
  %call6 = call i64 %19(ptr noundef %20, ptr noundef %21, i64 noundef %22) #3
  store i64 %call6, ptr %cc, align 8
  %cmp7.not = icmp eq i64 %call6, %22
  br i1 %cmp7.not, label %if.end24, label %if.then8

if.then8:                                         ; preds = %if.end
  %23 = load ptr, ptr %module.addr, align 8
  %24 = load ptr, ptr %tif.addr, align 8
  %25 = load ptr, ptr %24, align 8
  %tif_row10 = getelementptr inbounds %struct.tiff, ptr %24, i64 0, i32 11
  %26 = load i64, ptr %tif_row10, align 8
  %27 = load i64, ptr %cc, align 8
  %28 = load i64, ptr %size.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %23, ptr noundef nonnull @.str.13, ptr noundef %25, i64 noundef %26, i64 noundef %27, i64 noundef %28) #3
  store i64 -1, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %29 = load ptr, ptr %td, align 8
  %td_stripoffset12 = getelementptr inbounds %struct.TIFFDirectory, ptr %29, i64 0, i32 44
  %30 = load ptr, ptr %td_stripoffset12, align 8
  %31 = load i64, ptr %strip.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %30, i64 %31
  %32 = load i64, ptr %arrayidx13, align 8
  %33 = load i64, ptr %size.addr, align 8
  %add = add i64 %32, %33
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_size = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 45
  %35 = load i64, ptr %tif_size, align 8
  %cmp14 = icmp sgt i64 %add, %35
  br i1 %cmp14, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.else
  %36 = load ptr, ptr %module.addr, align 8
  %37 = load ptr, ptr %tif.addr, align 8
  %38 = load ptr, ptr %37, align 8
  %tif_row17 = getelementptr inbounds %struct.tiff, ptr %37, i64 0, i32 11
  %39 = load i64, ptr %tif_row17, align 8
  %40 = load i64, ptr %strip.addr, align 8
  %tif_size18 = getelementptr inbounds %struct.tiff, ptr %37, i64 0, i32 45
  %41 = load i64, ptr %tif_size18, align 8
  %42 = load ptr, ptr %td, align 8
  %td_stripoffset19 = getelementptr inbounds %struct.TIFFDirectory, ptr %42, i64 0, i32 44
  %43 = load ptr, ptr %td_stripoffset19, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %43, i64 %40
  %44 = load i64, ptr %arrayidx20, align 8
  %sub = sub i64 %41, %44
  %45 = load i64, ptr %size.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %36, ptr noundef nonnull @.str.14, ptr noundef %38, i64 noundef %39, i64 noundef %40, i64 noundef %sub, i64 noundef %45) #3
  store i64 -1, ptr %retval, align 8
  br label %return

if.end21:                                         ; preds = %if.else
  %46 = load ptr, ptr %buf.addr, align 8
  %47 = load ptr, ptr %tif.addr, align 8
  %tif_base = getelementptr inbounds %struct.tiff, ptr %47, i64 0, i32 44
  %48 = load ptr, ptr %tif_base, align 8
  %49 = load ptr, ptr %td, align 8
  %td_stripoffset22 = getelementptr inbounds %struct.TIFFDirectory, ptr %49, i64 0, i32 44
  %50 = load ptr, ptr %td_stripoffset22, align 8
  %51 = load i64, ptr %strip.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %50, i64 %51
  %52 = load i64, ptr %arrayidx23, align 8
  %add.ptr = getelementptr inbounds i8, ptr %48, i64 %52
  %53 = load i64, ptr %size.addr, align 8
  call void @_TIFFmemcpy(ptr noundef %46, ptr noundef %add.ptr, i64 noundef %53) #3
  br label %if.end24

if.end24:                                         ; preds = %if.end, %if.end21
  %54 = load i64, ptr %size.addr, align 8
  store i64 %54, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end24, %if.then15, %if.then8, %if.then4
  %55 = load i64, ptr %retval, align 8
  ret i64 %55
}

; Function Attrs: nounwind ssp uwtable
define i64 @TIFFReadTile(ptr noundef %tif, ptr noundef %buf, i64 noundef %x, i64 noundef %y, i64 noundef %z, i16 noundef zeroext %s) #0 {
entry:
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
  %call = call i32 @TIFFCheckRead(ptr noundef %tif, i32 noundef 1)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load i64, ptr %x.addr, align 8
  %2 = load i64, ptr %y.addr, align 8
  %3 = load i64, ptr %z.addr, align 8
  %4 = load i16, ptr %s.addr, align 2
  %call1 = call i32 @TIFFCheckTile(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i16 noundef zeroext %4) #3
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load i64, ptr %x.addr, align 8
  %7 = load i64, ptr %y.addr, align 8
  %8 = load i64, ptr %z.addr, align 8
  %9 = load i16, ptr %s.addr, align 2
  %call3 = call i64 @TIFFComputeTile(ptr noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i16 noundef zeroext %9) #3
  %10 = load ptr, ptr %buf.addr, align 8
  %call4 = call i64 @TIFFReadEncodedTile(ptr noundef %5, i64 noundef %call3, ptr noundef %10, i64 noundef -1)
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %storemerge = phi i64 [ %call4, %if.end ], [ -1, %lor.lhs.false ], [ -1, %entry ]
  ret i64 %storemerge
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
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %tif_tilesize = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 20
  %0 = load i64, ptr %tif_tilesize, align 8
  store i64 %0, ptr %tilesize, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFCheckRead(ptr noundef %1, i32 noundef 1)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %tile.addr, align 8
  %3 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i64 0, i32 43
  %4 = load i64, ptr %td_nstrips, align 8
  %cmp.not = icmp ult i64 %2, %4
  br i1 %cmp.not, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i64, ptr %tile.addr, align 8
  %8 = load ptr, ptr %td, align 8
  %td_nstrips2 = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i64 0, i32 43
  %9 = load i64, ptr %td_nstrips2, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %6, ptr noundef nonnull @.str.3, i64 noundef %7, i64 noundef %9) #3
  store i64 -1, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %10 = load i64, ptr %size.addr, align 8
  %cmp4 = icmp eq i64 %10, -1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  %11 = load i64, ptr %tilesize, align 8
  store i64 %11, ptr %size.addr, align 8
  br label %if.end9

if.else:                                          ; preds = %if.end3
  %12 = load i64, ptr %size.addr, align 8
  %13 = load i64, ptr %tilesize, align 8
  %cmp6 = icmp sgt i64 %12, %13
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.else
  %14 = load i64, ptr %tilesize, align 8
  store i64 %14, ptr %size.addr, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7, %if.then5
  %15 = load ptr, ptr %tif.addr, align 8
  %16 = load i64, ptr %tile.addr, align 8
  %call10 = call i32 @TIFFFillTile(ptr noundef %15, i64 noundef %16)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.else15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end9
  %17 = load ptr, ptr %tif.addr, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %17, i64 0, i32 30
  %18 = load ptr, ptr %tif_decodetile, align 8
  %19 = load ptr, ptr %buf.addr, align 8
  %20 = load i64, ptr %size.addr, align 8
  %21 = load i64, ptr %tile.addr, align 8
  %22 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i64 0, i32 42
  %23 = load i64, ptr %td_stripsperimage, align 8
  %div = udiv i64 %21, %23
  %conv = trunc i64 %div to i16
  %call12 = call i32 %18(ptr noundef %17, ptr noundef %19, i64 noundef %20, i16 noundef zeroext %conv) #3
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.else15, label %if.then14

if.then14:                                        ; preds = %land.lhs.true
  %24 = load ptr, ptr %tif.addr, align 8
  %tif_postdecode = getelementptr inbounds %struct.tiff, ptr %24, i64 0, i32 54
  %25 = load ptr, ptr %tif_postdecode, align 8
  %26 = load ptr, ptr %buf.addr, align 8
  %27 = load i64, ptr %size.addr, align 8
  call void %25(ptr noundef %24, ptr noundef %26, i64 noundef %27) #3
  store i64 %27, ptr %retval, align 8
  br label %return

if.else15:                                        ; preds = %land.lhs.true, %if.end9
  store i64 -1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else15, %if.then14, %if.then1, %if.then
  %28 = load i64, ptr %retval, align 8
  ret i64 %28
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
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 45
  %0 = load ptr, ptr %td_stripbytecount, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 %tile
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %bytecount, align 8
  %cmp = icmp slt i64 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i64, ptr %bytecount, align 8
  %5 = load i64, ptr %tile.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %3, ptr noundef nonnull @.str.20, i64 noundef %4, i64 noundef %5) #3
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 3
  %7 = load i64, ptr %tif_flags, align 8
  %and = and i64 %7, 2048
  %cmp1.not = icmp eq i64 %and, 0
  br i1 %cmp1.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_flags2 = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 3
  %9 = load i64, ptr %tif_flags2, align 8
  %10 = load ptr, ptr %td, align 8
  %td_fillorder = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i64 0, i32 13
  %11 = load i16, ptr %td_fillorder, align 2
  %conv = zext i16 %11 to i64
  %and3 = and i64 %9, %conv
  %cmp4.not = icmp eq i64 %and3, 0
  br i1 %cmp4.not, label %lor.lhs.false, label %if.then8

lor.lhs.false:                                    ; preds = %land.lhs.true
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_flags6 = getelementptr inbounds %struct.tiff, ptr %12, i64 0, i32 3
  %13 = load i64, ptr %tif_flags6, align 8
  %and7 = and i64 %13, 256
  %tobool.not = icmp eq i64 %and7, 0
  br i1 %tobool.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_flags9 = getelementptr inbounds %struct.tiff, ptr %14, i64 0, i32 3
  %15 = load i64, ptr %tif_flags9, align 8
  %and10 = and i64 %15, 512
  %tobool11.not = icmp eq i64 %and10, 0
  br i1 %tobool11.not, label %if.end16, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %if.then8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 40
  %17 = load ptr, ptr %tif_rawdata, align 8
  %tobool13.not = icmp eq ptr %17, null
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %land.lhs.true12
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata15 = getelementptr inbounds %struct.tiff, ptr %18, i64 0, i32 40
  %19 = load ptr, ptr %tif_rawdata15, align 8
  call void @_TIFFfree(ptr noundef %19) #3
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %land.lhs.true12, %if.then8
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_flags17 = getelementptr inbounds %struct.tiff, ptr %20, i64 0, i32 3
  %21 = load i64, ptr %tif_flags17, align 8
  %and18 = and i64 %21, -513
  store i64 %and18, ptr %tif_flags17, align 8
  %22 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i64 0, i32 44
  %23 = load ptr, ptr %td_stripoffset, align 8
  %24 = load i64, ptr %tile.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %23, i64 %24
  %25 = load i64, ptr %arrayidx19, align 8
  %26 = load i64, ptr %bytecount, align 8
  %add = add i64 %25, %26
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_size = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 45
  %28 = load i64, ptr %tif_size, align 8
  %cmp20 = icmp sgt i64 %add, %28
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end16
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_curtile = getelementptr inbounds %struct.tiff, ptr %29, i64 0, i32 19
  store i64 -1, ptr %tif_curtile, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end16
  %30 = load i64, ptr %bytecount, align 8
  %31 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %31, i64 0, i32 41
  store i64 %30, ptr %tif_rawdatasize, align 8
  %tif_base = getelementptr inbounds %struct.tiff, ptr %31, i64 0, i32 44
  %32 = load ptr, ptr %tif_base, align 8
  %33 = load ptr, ptr %td, align 8
  %td_stripoffset24 = getelementptr inbounds %struct.TIFFDirectory, ptr %33, i64 0, i32 44
  %34 = load ptr, ptr %td_stripoffset24, align 8
  %35 = load i64, ptr %tile.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %34, i64 %35
  %36 = load i64, ptr %arrayidx25, align 8
  %add.ptr = getelementptr inbounds i8, ptr %32, i64 %36
  %37 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata26 = getelementptr inbounds %struct.tiff, ptr %37, i64 0, i32 40
  store ptr %add.ptr, ptr %tif_rawdata26, align 8
  br label %if.end64

if.else:                                          ; preds = %lor.lhs.false, %if.end
  %38 = load i64, ptr %bytecount, align 8
  %39 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize27 = getelementptr inbounds %struct.tiff, ptr %39, i64 0, i32 41
  %40 = load i64, ptr %tif_rawdatasize27, align 8
  %cmp28 = icmp sgt i64 %38, %40
  br i1 %cmp28, label %if.then30, label %if.end43

if.then30:                                        ; preds = %if.else
  %41 = load ptr, ptr %tif.addr, align 8
  %tif_curtile31 = getelementptr inbounds %struct.tiff, ptr %41, i64 0, i32 19
  store i64 -1, ptr %tif_curtile31, align 8
  %tif_flags32 = getelementptr inbounds %struct.tiff, ptr %41, i64 0, i32 3
  %42 = load i64, ptr %tif_flags32, align 8
  %and33 = and i64 %42, 512
  %cmp34 = icmp eq i64 %and33, 0
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.then30
  %43 = load ptr, ptr %tif.addr, align 8
  %44 = load ptr, ptr %43, align 8
  %45 = load i64, ptr %tile.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFFillTile.module, ptr noundef nonnull @.str.21, ptr noundef %44, i64 noundef %45) #3
  store i32 0, ptr %retval, align 4
  br label %return

if.end38:                                         ; preds = %if.then30
  %46 = load ptr, ptr %tif.addr, align 8
  %47 = load i64, ptr %bytecount, align 8
  %add39 = add i64 %47, 1023
  %div1 = and i64 %add39, -1024
  %call = call i32 @TIFFReadBufferSetup(ptr noundef %46, ptr noundef null, i64 noundef %div1)
  %tobool40.not = icmp eq i32 %call, 0
  br i1 %tobool40.not, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end38
  store i32 0, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %if.end38, %if.else
  %48 = load ptr, ptr %tif.addr, align 8
  %49 = load i64, ptr %tile.addr, align 8
  %tif_rawdata44 = getelementptr inbounds %struct.tiff, ptr %48, i64 0, i32 40
  %50 = load ptr, ptr %tif_rawdata44, align 8
  %51 = load i64, ptr %bytecount, align 8
  %call45 = call i64 @TIFFReadRawTile1(ptr noundef %48, i64 noundef %49, ptr noundef %50, i64 noundef %51, ptr noundef nonnull @TIFFFillTile.module)
  %cmp46.not = icmp eq i64 %call45, %51
  br i1 %cmp46.not, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end43
  store i32 0, ptr %retval, align 4
  br label %return

if.end49:                                         ; preds = %if.end43
  %52 = load ptr, ptr %tif.addr, align 8
  %tif_flags50 = getelementptr inbounds %struct.tiff, ptr %52, i64 0, i32 3
  %53 = load i64, ptr %tif_flags50, align 8
  %54 = load ptr, ptr %td, align 8
  %td_fillorder51 = getelementptr inbounds %struct.TIFFDirectory, ptr %54, i64 0, i32 13
  %55 = load i16, ptr %td_fillorder51, align 2
  %conv52 = zext i16 %55 to i64
  %and53 = and i64 %53, %conv52
  %cmp54.not = icmp eq i64 %and53, 0
  br i1 %cmp54.not, label %land.lhs.true56, label %if.end64

land.lhs.true56:                                  ; preds = %if.end49
  %56 = load ptr, ptr %tif.addr, align 8
  %tif_flags57 = getelementptr inbounds %struct.tiff, ptr %56, i64 0, i32 3
  %57 = load i64, ptr %tif_flags57, align 8
  %and58 = and i64 %57, 256
  %cmp59 = icmp eq i64 %and58, 0
  br i1 %cmp59, label %if.then61, label %if.end64

if.then61:                                        ; preds = %land.lhs.true56
  %58 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata62 = getelementptr inbounds %struct.tiff, ptr %58, i64 0, i32 40
  %59 = load ptr, ptr %tif_rawdata62, align 8
  %60 = load i64, ptr %bytecount, align 8
  call void @TIFFReverseBits(ptr noundef %59, i64 noundef %60) #3
  br label %if.end64

if.end64:                                         ; preds = %if.end49, %land.lhs.true56, %if.then61, %if.end23
  %61 = load ptr, ptr %tif.addr, align 8
  %62 = load i64, ptr %tile.addr, align 8
  %call65 = call i32 @TIFFStartTile(ptr noundef %61, i64 noundef %62)
  store i32 %call65, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end64, %if.then48, %if.then41, %if.then36, %if.then22, %if.then
  %63 = load i32, ptr %retval, align 4
  ret i32 %63
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
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %call = call i32 @TIFFCheckRead(ptr noundef %tif, i32 noundef 1)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i64, ptr %tile.addr, align 8
  %1 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i64 0, i32 43
  %2 = load i64, ptr %td_nstrips, align 8
  %cmp.not = icmp ult i64 %0, %2
  br i1 %cmp.not, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %tif.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = load i64, ptr %tile.addr, align 8
  %6 = load ptr, ptr %td, align 8
  %td_nstrips2 = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i64 0, i32 43
  %7 = load i64, ptr %td_nstrips2, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %4, ptr noundef nonnull @.str.4, i64 noundef %5, i64 noundef %7) #3
  store i64 -1, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %8 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i64 0, i32 45
  %9 = load ptr, ptr %td_stripbytecount, align 8
  %10 = load i64, ptr %tile.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %9, i64 %10
  %11 = load i64, ptr %arrayidx, align 8
  store i64 %11, ptr %bytecount, align 8
  %12 = load i64, ptr %size.addr, align 8
  %cmp4.not = icmp eq i64 %12, -1
  br i1 %cmp4.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %13 = load i64, ptr %size.addr, align 8
  %14 = load i64, ptr %bytecount, align 8
  %cmp5 = icmp slt i64 %13, %14
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  %15 = load i64, ptr %size.addr, align 8
  store i64 %15, ptr %bytecount, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %land.lhs.true, %if.end3
  %16 = load ptr, ptr %tif.addr, align 8
  %17 = load i64, ptr %tile.addr, align 8
  %18 = load ptr, ptr %buf.addr, align 8
  %19 = load i64, ptr %bytecount, align 8
  %call8 = call i64 @TIFFReadRawTile1(ptr noundef %16, i64 noundef %17, ptr noundef %18, i64 noundef %19, ptr noundef nonnull @TIFFReadRawTile.module)
  store i64 %call8, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end7, %if.then1, %if.then
  %20 = load i64, ptr %retval, align 8
  ret i64 %20
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
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %1 = load i64, ptr %tif_flags, align 8
  %and = and i64 %1, 2048
  %cmp.not = icmp eq i64 %and, 0
  br i1 %cmp.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 51
  %3 = load ptr, ptr %tif_seekproc, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 48
  %4 = load ptr, ptr %tif_clientdata, align 8
  %5 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i64 0, i32 44
  %6 = load ptr, ptr %td_stripoffset, align 8
  %7 = load i64, ptr %tile.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %6, i64 %7
  %8 = load i64, ptr %arrayidx, align 8
  %call = call i64 %3(ptr noundef %4, i64 noundef %8, i32 noundef 0) #3
  %9 = load ptr, ptr %td, align 8
  %td_stripoffset1 = getelementptr inbounds %struct.TIFFDirectory, ptr %9, i64 0, i32 44
  %10 = load ptr, ptr %td_stripoffset1, align 8
  %11 = load i64, ptr %tile.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %10, i64 %11
  %12 = load i64, ptr %arrayidx2, align 8
  %cmp3 = icmp eq i64 %call, %12
  br i1 %cmp3, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %13 = load ptr, ptr %module.addr, align 8
  %14 = load ptr, ptr %tif.addr, align 8
  %15 = load ptr, ptr %14, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %14, i64 0, i32 11
  %16 = load i64, ptr %tif_row, align 8
  %tif_col = getelementptr inbounds %struct.tiff, ptr %14, i64 0, i32 18
  %17 = load i64, ptr %tif_col, align 8
  %18 = load i64, ptr %tile.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %13, ptr noundef nonnull @.str.17, ptr noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18) #3
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_readproc = getelementptr inbounds %struct.tiff, ptr %19, i64 0, i32 49
  %20 = load ptr, ptr %tif_readproc, align 8
  %tif_clientdata5 = getelementptr inbounds %struct.tiff, ptr %19, i64 0, i32 48
  %21 = load ptr, ptr %tif_clientdata5, align 8
  %22 = load ptr, ptr %buf.addr, align 8
  %23 = load i64, ptr %size.addr, align 8
  %call6 = call i64 %20(ptr noundef %21, ptr noundef %22, i64 noundef %23) #3
  store i64 %call6, ptr %cc, align 8
  %cmp7.not = icmp eq i64 %call6, %23
  br i1 %cmp7.not, label %if.end26, label %if.then8

if.then8:                                         ; preds = %if.end
  %24 = load ptr, ptr %module.addr, align 8
  %25 = load ptr, ptr %tif.addr, align 8
  %26 = load ptr, ptr %25, align 8
  %tif_row10 = getelementptr inbounds %struct.tiff, ptr %25, i64 0, i32 11
  %27 = load i64, ptr %tif_row10, align 8
  %tif_col11 = getelementptr inbounds %struct.tiff, ptr %25, i64 0, i32 18
  %28 = load i64, ptr %tif_col11, align 8
  %29 = load i64, ptr %cc, align 8
  %30 = load i64, ptr %size.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %24, ptr noundef nonnull @.str.18, ptr noundef %26, i64 noundef %27, i64 noundef %28, i64 noundef %29, i64 noundef %30) #3
  store i64 -1, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %31 = load ptr, ptr %td, align 8
  %td_stripoffset13 = getelementptr inbounds %struct.TIFFDirectory, ptr %31, i64 0, i32 44
  %32 = load ptr, ptr %td_stripoffset13, align 8
  %33 = load i64, ptr %tile.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %32, i64 %33
  %34 = load i64, ptr %arrayidx14, align 8
  %35 = load i64, ptr %size.addr, align 8
  %add = add i64 %34, %35
  %36 = load ptr, ptr %tif.addr, align 8
  %tif_size = getelementptr inbounds %struct.tiff, ptr %36, i64 0, i32 45
  %37 = load i64, ptr %tif_size, align 8
  %cmp15 = icmp sgt i64 %add, %37
  br i1 %cmp15, label %if.then16, label %if.end23

if.then16:                                        ; preds = %if.else
  %38 = load ptr, ptr %module.addr, align 8
  %39 = load ptr, ptr %tif.addr, align 8
  %40 = load ptr, ptr %39, align 8
  %tif_row18 = getelementptr inbounds %struct.tiff, ptr %39, i64 0, i32 11
  %41 = load i64, ptr %tif_row18, align 8
  %tif_col19 = getelementptr inbounds %struct.tiff, ptr %39, i64 0, i32 18
  %42 = load i64, ptr %tif_col19, align 8
  %43 = load i64, ptr %tile.addr, align 8
  %44 = load ptr, ptr %tif.addr, align 8
  %tif_size20 = getelementptr inbounds %struct.tiff, ptr %44, i64 0, i32 45
  %45 = load i64, ptr %tif_size20, align 8
  %46 = load ptr, ptr %td, align 8
  %td_stripoffset21 = getelementptr inbounds %struct.TIFFDirectory, ptr %46, i64 0, i32 44
  %47 = load ptr, ptr %td_stripoffset21, align 8
  %48 = load i64, ptr %tile.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %47, i64 %48
  %49 = load i64, ptr %arrayidx22, align 8
  %sub = sub i64 %45, %49
  %50 = load i64, ptr %size.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %38, ptr noundef nonnull @.str.19, ptr noundef %40, i64 noundef %41, i64 noundef %42, i64 noundef %43, i64 noundef %sub, i64 noundef %50) #3
  store i64 -1, ptr %retval, align 8
  br label %return

if.end23:                                         ; preds = %if.else
  %51 = load ptr, ptr %buf.addr, align 8
  %52 = load ptr, ptr %tif.addr, align 8
  %tif_base = getelementptr inbounds %struct.tiff, ptr %52, i64 0, i32 44
  %53 = load ptr, ptr %tif_base, align 8
  %54 = load ptr, ptr %td, align 8
  %td_stripoffset24 = getelementptr inbounds %struct.TIFFDirectory, ptr %54, i64 0, i32 44
  %55 = load ptr, ptr %td_stripoffset24, align 8
  %56 = load i64, ptr %tile.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %55, i64 %56
  %57 = load i64, ptr %arrayidx25, align 8
  %add.ptr = getelementptr inbounds i8, ptr %53, i64 %57
  %58 = load i64, ptr %size.addr, align 8
  call void @_TIFFmemcpy(ptr noundef %51, ptr noundef %add.ptr, i64 noundef %58) #3
  br label %if.end26

if.end26:                                         ; preds = %if.end, %if.end23
  %59 = load i64, ptr %size.addr, align 8
  store i64 %59, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end26, %if.then16, %if.then8, %if.then4
  %60 = load i64, ptr %retval, align 8
  ret i64 %60
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFReadBufferSetup(ptr noundef %tif, ptr noundef %bp, i64 noundef %size) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i64 %size, ptr %size.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 40
  %0 = load ptr, ptr %tif_rawdata, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 3
  %2 = load i64, ptr %tif_flags, align 8
  %and = and i64 %2, 512
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata3 = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 40
  %4 = load ptr, ptr %tif_rawdata3, align 8
  call void @_TIFFfree(ptr noundef %4) #3
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata4 = getelementptr inbounds %struct.tiff, ptr %5, i64 0, i32 40
  store ptr null, ptr %tif_rawdata4, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %6 = load ptr, ptr %bp.addr, align 8
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end5
  %7 = load i64, ptr %size.addr, align 8
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 41
  store i64 %7, ptr %tif_rawdatasize, align 8
  %9 = load ptr, ptr %bp.addr, align 8
  %tif_rawdata8 = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 40
  store ptr %9, ptr %tif_rawdata8, align 8
  %tif_flags9 = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 3
  %10 = load i64, ptr %tif_flags9, align 8
  %and10 = and i64 %10, -513
  store i64 %and10, ptr %tif_flags9, align 8
  br label %if.end15

if.else:                                          ; preds = %if.end5
  %11 = load i64, ptr %size.addr, align 8
  %add = add i64 %11, 1023
  %div1 = and i64 %add, -1024
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize11 = getelementptr inbounds %struct.tiff, ptr %12, i64 0, i32 41
  store i64 %div1, ptr %tif_rawdatasize11, align 8
  %call = call ptr @_TIFFmalloc(i64 noundef %div1) #3
  %tif_rawdata13 = getelementptr inbounds %struct.tiff, ptr %12, i64 0, i32 40
  store ptr %call, ptr %tif_rawdata13, align 8
  %tif_flags14 = getelementptr inbounds %struct.tiff, ptr %12, i64 0, i32 3
  %13 = load i64, ptr %tif_flags14, align 8
  %or = or i64 %13, 512
  store i64 %or, ptr %tif_flags14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then7
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata16 = getelementptr inbounds %struct.tiff, ptr %14, i64 0, i32 40
  %15 = load ptr, ptr %tif_rawdata16, align 8
  %cmp = icmp eq ptr %15, null
  br i1 %cmp, label %if.then17, label %return

if.then17:                                        ; preds = %if.end15
  %16 = load ptr, ptr %tif.addr, align 8
  %17 = load ptr, ptr %16, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 11
  %18 = load i64, ptr %tif_row, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFReadBufferSetup.module, ptr noundef nonnull @.str.5, ptr noundef %17, i64 noundef %18) #3
  %tif_rawdatasize18 = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 41
  store i64 0, ptr %tif_rawdatasize18, align 8
  br label %return

return:                                           ; preds = %if.end15, %if.then17
  %storemerge = phi i32 [ 0, %if.then17 ], [ 1, %if.end15 ]
  ret i32 %storemerge
}

declare void @_TIFFfree(ptr noundef) #1

declare ptr @_TIFFmalloc(i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @_TIFFNoPostDecode(ptr noundef %tif, ptr noundef %buf, i64 noundef %cc) #0 {
entry:
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_TIFFSwab16BitData(ptr noundef %tif, ptr noundef %buf, i64 noundef %cc) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  %0 = and i64 %cc, 1
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__._TIFFSwab16BitData, ptr noundef nonnull @.str.6, i32 noundef 608, ptr noundef nonnull @.str.7) #4
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load ptr, ptr %buf.addr, align 8
  %2 = load i64, ptr %cc.addr, align 8
  %div = sdiv i64 %2, 2
  call void @TIFFSwabArrayOfShort(ptr noundef %1, i64 noundef %div) #3
  ret void
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare void @TIFFSwabArrayOfShort(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @_TIFFSwab32BitData(ptr noundef %tif, ptr noundef %buf, i64 noundef %cc) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  %and = and i64 %cc, 3
  %cmp.not = icmp eq i64 %and, 0
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__._TIFFSwab32BitData, ptr noundef nonnull @.str.6, i32 noundef 616, ptr noundef nonnull @.str.8) #4
  unreachable

cond.end:                                         ; preds = %entry
  %0 = load ptr, ptr %buf.addr, align 8
  %1 = load i64, ptr %cc.addr, align 8
  %div = sdiv i64 %1, 4
  call void @TIFFSwabArrayOfLong(ptr noundef %0, i64 noundef %div) #3
  ret void
}

declare void @TIFFSwabArrayOfLong(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @_TIFFSwab64BitData(ptr noundef %tif, ptr noundef %buf, i64 noundef %cc) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  %and = and i64 %cc, 7
  %cmp.not = icmp eq i64 %and, 0
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__._TIFFSwab64BitData, ptr noundef nonnull @.str.6, i32 noundef 624, ptr noundef nonnull @.str.9) #4
  unreachable

cond.end:                                         ; preds = %entry
  %0 = load ptr, ptr %buf.addr, align 8
  %1 = load i64, ptr %cc.addr, align 8
  %div = sdiv i64 %1, 8
  call void @TIFFSwabArrayOfDouble(ptr noundef %0, i64 noundef %div) #3
  ret void
}

declare void @TIFFSwabArrayOfDouble(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFStartStrip(ptr noundef %tif, i64 noundef %strip) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %strip.addr = alloca i64, align 8
  %td = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %strip, ptr %strip.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 3
  %0 = load i64, ptr %tif_flags, align 8
  %and = and i64 %0, 32
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_setupdecode = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 21
  %2 = load ptr, ptr %tif_setupdecode, align 8
  %call = call i32 %2(ptr noundef %1) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_flags2 = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 3
  %4 = load i64, ptr %tif_flags2, align 8
  %or = or i64 %4, 32
  store i64 %or, ptr %tif_flags2, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %5 = load i64, ptr %strip.addr, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 13
  store i64 %5, ptr %tif_curstrip, align 8
  %7 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i64 0, i32 42
  %8 = load i64, ptr %td_stripsperimage, align 8
  %rem = urem i64 %5, %8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i64 0, i32 16
  %9 = load i64, ptr %td_rowsperstrip, align 8
  %mul = mul i64 %rem, %9
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 11
  store i64 %mul, ptr %tif_row, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 40
  %11 = load ptr, ptr %tif_rawdata, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 42
  store ptr %11, ptr %tif_rawcp, align 8
  %12 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %12, i64 0, i32 45
  %13 = load ptr, ptr %td_stripbytecount, align 8
  %14 = load i64, ptr %strip.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %13, i64 %14
  %15 = load i64, ptr %arrayidx, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 43
  store i64 %15, ptr %tif_rawcc, align 8
  %tif_predecode = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 22
  %17 = load ptr, ptr %tif_predecode, align 8
  %18 = load i64, ptr %strip.addr, align 8
  %19 = load ptr, ptr %td, align 8
  %td_stripsperimage4 = getelementptr inbounds %struct.TIFFDirectory, ptr %19, i64 0, i32 42
  %20 = load i64, ptr %td_stripsperimage4, align 8
  %div = udiv i64 %18, %20
  %conv = trunc i64 %div to i16
  %call5 = call i32 %17(ptr noundef %16, i16 noundef zeroext %conv) #3
  br label %return

return:                                           ; preds = %if.then, %if.end3
  %storemerge = phi i32 [ %call5, %if.end3 ], [ 0, %if.then ]
  ret i32 %storemerge
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i64 noundef) #1

declare void @TIFFReverseBits(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFStartTile(ptr noundef %tif, i64 noundef %tile) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %tile.addr = alloca i64, align 8
  %td = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tile, ptr %tile.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 3
  %0 = load i64, ptr %tif_flags, align 8
  %and = and i64 %0, 32
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_setupdecode = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 21
  %2 = load ptr, ptr %tif_setupdecode, align 8
  %call = call i32 %2(ptr noundef %1) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_flags2 = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 3
  %4 = load i64, ptr %tif_flags2, align 8
  %or = or i64 %4, 32
  store i64 %or, ptr %tif_flags2, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %5 = load i64, ptr %tile.addr, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_curtile = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 19
  store i64 %5, ptr %tif_curtile, align 8
  %7 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i64 0, i32 1
  %8 = load i64, ptr %td_imagewidth, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i64 0, i32 4
  %9 = load i64, ptr %td_tilewidth, align 8
  %sub = add i64 %9, -1
  %add = add i64 %8, %sub
  %10 = load ptr, ptr %td, align 8
  %td_tilewidth4 = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i64 0, i32 4
  %11 = load i64, ptr %td_tilewidth4, align 8
  %div = udiv i64 %add, %11
  %rem = urem i64 %5, %div
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i64 0, i32 5
  %12 = load i64, ptr %td_tilelength, align 8
  %mul = mul i64 %rem, %12
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %13, i64 0, i32 11
  store i64 %mul, ptr %tif_row, align 8
  %14 = load i64, ptr %tile.addr, align 8
  %15 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i64 0, i32 2
  %16 = load i64, ptr %td_imagelength, align 8
  %td_tilelength5 = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i64 0, i32 5
  %17 = load i64, ptr %td_tilelength5, align 8
  %sub6 = add i64 %17, -1
  %add7 = add i64 %16, %sub6
  %18 = load ptr, ptr %td, align 8
  %td_tilelength8 = getelementptr inbounds %struct.TIFFDirectory, ptr %18, i64 0, i32 5
  %19 = load i64, ptr %td_tilelength8, align 8
  %div9 = udiv i64 %add7, %19
  %rem10 = urem i64 %14, %div9
  %td_tilewidth11 = getelementptr inbounds %struct.TIFFDirectory, ptr %18, i64 0, i32 4
  %20 = load i64, ptr %td_tilewidth11, align 8
  %mul12 = mul i64 %rem10, %20
  %21 = load ptr, ptr %tif.addr, align 8
  %tif_col = getelementptr inbounds %struct.tiff, ptr %21, i64 0, i32 18
  store i64 %mul12, ptr %tif_col, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %21, i64 0, i32 40
  %22 = load ptr, ptr %tif_rawdata, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %21, i64 0, i32 42
  store ptr %22, ptr %tif_rawcp, align 8
  %23 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %23, i64 0, i32 45
  %24 = load ptr, ptr %td_stripbytecount, align 8
  %25 = load i64, ptr %tile.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %24, i64 %25
  %26 = load i64, ptr %arrayidx, align 8
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 43
  store i64 %26, ptr %tif_rawcc, align 8
  %tif_predecode = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 22
  %28 = load ptr, ptr %tif_predecode, align 8
  %29 = load i64, ptr %tile.addr, align 8
  %30 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %30, i64 0, i32 42
  %31 = load i64, ptr %td_stripsperimage, align 8
  %div13 = udiv i64 %29, %31
  %conv = trunc i64 %div13 to i16
  %call14 = call i32 %28(ptr noundef %27, i16 noundef zeroext %conv) #3
  br label %return

return:                                           ; preds = %if.then, %if.end3
  %storemerge = phi i32 [ %call14, %if.end3 ], [ 0, %if.then ]
  ret i32 %storemerge
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind }
attributes #4 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
