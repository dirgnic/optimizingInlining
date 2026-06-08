; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2bw/tif_tile.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2bw/tif_tile.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Col %ld out of range, max %lu\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Row %ld out of range, max %lu\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Depth %ld out of range, max %lu\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Sample %d out of range, max %u\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFComputeTile(ptr noundef %tif, i32 noundef %x, i32 noundef %y, i32 noundef %z, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  %td = alloca ptr, align 8
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %dz = alloca i32, align 4
  %tile = alloca i32, align 4
  %xpt = alloca i32, align 4
  %ypt = alloca i32, align 4
  %zpt = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %z, ptr %z.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 4
  %2 = load i32, ptr %td_tilewidth, align 4
  store i32 %2, ptr %dx, align 4
  %3 = load ptr, ptr %td, align 8
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 5
  %4 = load i32, ptr %td_tilelength, align 8
  store i32 %4, ptr %dy, align 4
  %5 = load ptr, ptr %td, align 8
  %td_tiledepth = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i32 0, i32 6
  %6 = load i32, ptr %td_tiledepth, align 4
  store i32 %6, ptr %dz, align 4
  store i32 1, ptr %tile, align 4
  %7 = load ptr, ptr %td, align 8
  %td_imagedepth = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i32 0, i32 3
  %8 = load i32, ptr %td_imagedepth, align 8
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %z.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, ptr %dx, align 4
  %cmp1 = icmp eq i32 %9, -1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %10 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %td_imagewidth, align 8
  store i32 %11, ptr %dx, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %12 = load i32, ptr %dy, align 4
  %cmp4 = icmp eq i32 %12, -1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %13 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %td_imagelength, align 4
  store i32 %14, ptr %dy, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %15 = load i32, ptr %dz, align 4
  %cmp7 = icmp eq i32 %15, -1
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %16 = load ptr, ptr %td, align 8
  %td_imagedepth9 = getelementptr inbounds %struct.TIFFDirectory, ptr %16, i32 0, i32 3
  %17 = load i32, ptr %td_imagedepth9, align 8
  store i32 %17, ptr %dz, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6
  %18 = load i32, ptr %dx, align 4
  %cmp11 = icmp ne i32 %18, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end51

land.lhs.true:                                    ; preds = %if.end10
  %19 = load i32, ptr %dy, align 4
  %cmp12 = icmp ne i32 %19, 0
  br i1 %cmp12, label %land.lhs.true13, label %if.end51

land.lhs.true13:                                  ; preds = %land.lhs.true
  %20 = load i32, ptr %dz, align 4
  %cmp14 = icmp ne i32 %20, 0
  br i1 %cmp14, label %if.then15, label %if.end51

if.then15:                                        ; preds = %land.lhs.true13
  %21 = load ptr, ptr %td, align 8
  %td_imagewidth16 = getelementptr inbounds %struct.TIFFDirectory, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %td_imagewidth16, align 8
  %23 = load i32, ptr %dx, align 4
  %sub = sub i32 %23, 1
  %add = add i32 %22, %sub
  %24 = load i32, ptr %dx, align 4
  %div = udiv i32 %add, %24
  store i32 %div, ptr %xpt, align 4
  %25 = load ptr, ptr %td, align 8
  %td_imagelength17 = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i32 0, i32 2
  %26 = load i32, ptr %td_imagelength17, align 4
  %27 = load i32, ptr %dy, align 4
  %sub18 = sub i32 %27, 1
  %add19 = add i32 %26, %sub18
  %28 = load i32, ptr %dy, align 4
  %div20 = udiv i32 %add19, %28
  store i32 %div20, ptr %ypt, align 4
  %29 = load ptr, ptr %td, align 8
  %td_imagedepth21 = getelementptr inbounds %struct.TIFFDirectory, ptr %29, i32 0, i32 3
  %30 = load i32, ptr %td_imagedepth21, align 8
  %31 = load i32, ptr %dz, align 4
  %sub22 = sub i32 %31, 1
  %add23 = add i32 %30, %sub22
  %32 = load i32, ptr %dz, align 4
  %div24 = udiv i32 %add23, %32
  store i32 %div24, ptr %zpt, align 4
  %33 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %33, i32 0, i32 24
  %34 = load i16, ptr %td_planarconfig, align 2
  %conv = zext i16 %34 to i32
  %cmp25 = icmp eq i32 %conv, 2
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.then15
  %35 = load i32, ptr %xpt, align 4
  %36 = load i32, ptr %ypt, align 4
  %mul = mul i32 %35, %36
  %37 = load i32, ptr %zpt, align 4
  %mul28 = mul i32 %mul, %37
  %38 = load i16, ptr %s.addr, align 2
  %conv29 = zext i16 %38 to i32
  %mul30 = mul i32 %mul28, %conv29
  %39 = load i32, ptr %xpt, align 4
  %40 = load i32, ptr %ypt, align 4
  %mul31 = mul i32 %39, %40
  %41 = load i32, ptr %z.addr, align 4
  %42 = load i32, ptr %dz, align 4
  %div32 = udiv i32 %41, %42
  %mul33 = mul i32 %mul31, %div32
  %add34 = add i32 %mul30, %mul33
  %43 = load i32, ptr %xpt, align 4
  %44 = load i32, ptr %y.addr, align 4
  %45 = load i32, ptr %dy, align 4
  %div35 = udiv i32 %44, %45
  %mul36 = mul i32 %43, %div35
  %add37 = add i32 %add34, %mul36
  %46 = load i32, ptr %x.addr, align 4
  %47 = load i32, ptr %dx, align 4
  %div38 = udiv i32 %46, %47
  %add39 = add i32 %add37, %div38
  store i32 %add39, ptr %tile, align 4
  br label %if.end50

if.else:                                          ; preds = %if.then15
  %48 = load i32, ptr %xpt, align 4
  %49 = load i32, ptr %ypt, align 4
  %mul40 = mul i32 %48, %49
  %50 = load i32, ptr %z.addr, align 4
  %51 = load i32, ptr %dz, align 4
  %div41 = udiv i32 %50, %51
  %mul42 = mul i32 %mul40, %div41
  %52 = load i32, ptr %xpt, align 4
  %53 = load i32, ptr %y.addr, align 4
  %54 = load i32, ptr %dy, align 4
  %div43 = udiv i32 %53, %54
  %mul44 = mul i32 %52, %div43
  %add45 = add i32 %mul42, %mul44
  %55 = load i32, ptr %x.addr, align 4
  %56 = load i32, ptr %dx, align 4
  %div46 = udiv i32 %55, %56
  %add47 = add i32 %add45, %div46
  %57 = load i16, ptr %s.addr, align 2
  %conv48 = zext i16 %57 to i32
  %add49 = add i32 %add47, %conv48
  store i32 %add49, ptr %tile, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then27
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %land.lhs.true13, %land.lhs.true, %if.end10
  %58 = load i32, ptr %tile, align 4
  ret i32 %58
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFCheckTile(ptr noundef %tif, i32 noundef %x, i32 noundef %y, i32 noundef %z, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  %td = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %z, ptr %z.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load i32, ptr %x.addr, align 4
  %2 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %td_imagewidth, align 8
  %cmp = icmp uge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %tif_name, align 8
  %6 = load i32, ptr %x.addr, align 4
  %conv = zext i32 %6 to i64
  %7 = load ptr, ptr %td, align 8
  %td_imagewidth1 = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %td_imagewidth1, align 8
  %conv2 = zext i32 %8 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %5, ptr noundef @.str, i64 noundef %conv, i64 noundef %conv2)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i32, ptr %y.addr, align 4
  %10 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %td_imagelength, align 4
  %cmp3 = icmp uge i32 %9, %11
  br i1 %cmp3, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_name6 = getelementptr inbounds %struct.tiff, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %tif_name6, align 8
  %14 = load i32, ptr %y.addr, align 4
  %conv7 = zext i32 %14 to i64
  %15 = load ptr, ptr %td, align 8
  %td_imagelength8 = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %td_imagelength8, align 4
  %conv9 = zext i32 %16 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %13, ptr noundef @.str.1, i64 noundef %conv7, i64 noundef %conv9)
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %17 = load i32, ptr %z.addr, align 4
  %18 = load ptr, ptr %td, align 8
  %td_imagedepth = getelementptr inbounds %struct.TIFFDirectory, ptr %18, i32 0, i32 3
  %19 = load i32, ptr %td_imagedepth, align 8
  %cmp11 = icmp uge i32 %17, %19
  br i1 %cmp11, label %if.then13, label %if.end18

if.then13:                                        ; preds = %if.end10
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_name14 = getelementptr inbounds %struct.tiff, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %tif_name14, align 8
  %22 = load i32, ptr %z.addr, align 4
  %conv15 = zext i32 %22 to i64
  %23 = load ptr, ptr %td, align 8
  %td_imagedepth16 = getelementptr inbounds %struct.TIFFDirectory, ptr %23, i32 0, i32 3
  %24 = load i32, ptr %td_imagedepth16, align 8
  %conv17 = zext i32 %24 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %21, ptr noundef @.str.2, i64 noundef %conv15, i64 noundef %conv17)
  store i32 0, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end10
  %25 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i32 0, i32 24
  %26 = load i16, ptr %td_planarconfig, align 2
  %conv19 = zext i16 %26 to i32
  %cmp20 = icmp eq i32 %conv19, 2
  br i1 %cmp20, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %if.end18
  %27 = load i16, ptr %s.addr, align 2
  %conv22 = zext i16 %27 to i32
  %28 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %28, i32 0, i32 15
  %29 = load i16, ptr %td_samplesperpixel, align 2
  %conv23 = zext i16 %29 to i32
  %cmp24 = icmp sge i32 %conv22, %conv23
  br i1 %cmp24, label %if.then26, label %if.end31

if.then26:                                        ; preds = %land.lhs.true
  %30 = load ptr, ptr %tif.addr, align 8
  %tif_name27 = getelementptr inbounds %struct.tiff, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %tif_name27, align 8
  %32 = load i16, ptr %s.addr, align 2
  %conv28 = zext i16 %32 to i32
  %33 = load ptr, ptr %td, align 8
  %td_samplesperpixel29 = getelementptr inbounds %struct.TIFFDirectory, ptr %33, i32 0, i32 15
  %34 = load i16, ptr %td_samplesperpixel29, align 2
  %conv30 = zext i16 %34 to i32
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %31, ptr noundef @.str.3, i32 noundef %conv28, i32 noundef %conv30)
  store i32 0, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %land.lhs.true, %if.end18
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.then26, %if.then13, %if.then5, %if.then
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFNumberOfTiles(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %dz = alloca i32, align 4
  %ntiles = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 4
  %2 = load i32, ptr %td_tilewidth, align 4
  store i32 %2, ptr %dx, align 4
  %3 = load ptr, ptr %td, align 8
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 5
  %4 = load i32, ptr %td_tilelength, align 8
  store i32 %4, ptr %dy, align 4
  %5 = load ptr, ptr %td, align 8
  %td_tiledepth = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i32 0, i32 6
  %6 = load i32, ptr %td_tiledepth, align 4
  store i32 %6, ptr %dz, align 4
  %7 = load i32, ptr %dx, align 4
  %cmp = icmp eq i32 %7, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %td_imagewidth, align 8
  store i32 %9, ptr %dx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, ptr %dy, align 4
  %cmp1 = icmp eq i32 %10, -1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %11 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %td_imagelength, align 4
  store i32 %12, ptr %dy, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %13 = load i32, ptr %dz, align 4
  %cmp4 = icmp eq i32 %13, -1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %14 = load ptr, ptr %td, align 8
  %td_imagedepth = getelementptr inbounds %struct.TIFFDirectory, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %td_imagedepth, align 8
  store i32 %15, ptr %dz, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %16 = load i32, ptr %dx, align 4
  %cmp7 = icmp eq i32 %16, 0
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %17 = load i32, ptr %dy, align 4
  %cmp8 = icmp eq i32 %17, 0
  br i1 %cmp8, label %cond.true, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %18 = load i32, ptr %dz, align 4
  %cmp10 = icmp eq i32 %18, 0
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false9, %lor.lhs.false, %if.end6
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false9
  %19 = load ptr, ptr %td, align 8
  %td_imagewidth11 = getelementptr inbounds %struct.TIFFDirectory, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %td_imagewidth11, align 8
  %21 = load i32, ptr %dx, align 4
  %sub = sub i32 %21, 1
  %add = add i32 %20, %sub
  %22 = load i32, ptr %dx, align 4
  %div = udiv i32 %add, %22
  %23 = load ptr, ptr %td, align 8
  %td_imagelength12 = getelementptr inbounds %struct.TIFFDirectory, ptr %23, i32 0, i32 2
  %24 = load i32, ptr %td_imagelength12, align 4
  %25 = load i32, ptr %dy, align 4
  %sub13 = sub i32 %25, 1
  %add14 = add i32 %24, %sub13
  %26 = load i32, ptr %dy, align 4
  %div15 = udiv i32 %add14, %26
  %mul = mul i32 %div, %div15
  %27 = load ptr, ptr %td, align 8
  %td_imagedepth16 = getelementptr inbounds %struct.TIFFDirectory, ptr %27, i32 0, i32 3
  %28 = load i32, ptr %td_imagedepth16, align 8
  %29 = load i32, ptr %dz, align 4
  %sub17 = sub i32 %29, 1
  %add18 = add i32 %28, %sub17
  %30 = load i32, ptr %dz, align 4
  %div19 = udiv i32 %add18, %30
  %mul20 = mul i32 %mul, %div19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %mul20, %cond.false ]
  store i32 %cond, ptr %ntiles, align 4
  %31 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %31, i32 0, i32 24
  %32 = load i16, ptr %td_planarconfig, align 2
  %conv = zext i16 %32 to i32
  %cmp21 = icmp eq i32 %conv, 2
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %cond.end
  %33 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %33, i32 0, i32 15
  %34 = load i16, ptr %td_samplesperpixel, align 2
  %conv24 = zext i16 %34 to i32
  %35 = load i32, ptr %ntiles, align 4
  %mul25 = mul i32 %35, %conv24
  store i32 %mul25, ptr %ntiles, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %cond.end
  %36 = load i32, ptr %ntiles, align 4
  ret i32 %36
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFTileRowSize(ptr noundef %tif) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %rowsize = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %td_tilelength, align 8
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 4
  %4 = load i32, ptr %td_tilewidth, align 4
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i32 0, i32 8
  %6 = load i16, ptr %td_bitspersample, align 4
  %conv = zext i16 %6 to i32
  %7 = load ptr, ptr %td, align 8
  %td_tilewidth2 = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i32 0, i32 4
  %8 = load i32, ptr %td_tilewidth2, align 4
  %mul = mul i32 %conv, %8
  store i32 %mul, ptr %rowsize, align 4
  %9 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %9, i32 0, i32 24
  %10 = load i16, ptr %td_planarconfig, align 2
  %conv3 = zext i16 %10 to i32
  %cmp4 = icmp eq i32 %conv3, 1
  br i1 %cmp4, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %11 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i32 0, i32 15
  %12 = load i16, ptr %td_samplesperpixel, align 2
  %conv7 = zext i16 %12 to i32
  %13 = load i32, ptr %rowsize, align 4
  %mul8 = mul nsw i32 %13, %conv7
  store i32 %mul8, ptr %rowsize, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  %14 = load i32, ptr %rowsize, align 4
  %add = add i32 %14, 7
  %div = udiv i32 %add, 8
  store i32 %div, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFVTileSize(ptr noundef %tif, i32 noundef %nrows) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %nrows.addr = alloca i32, align 4
  %td = alloca ptr, align 8
  %tilesize = alloca i32, align 4
  %w = alloca i32, align 4
  %rowsize = alloca i32, align 4
  %samplingarea = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %nrows, ptr %nrows.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %td_tilelength, align 8
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 4
  %4 = load i32, ptr %td_tilewidth, align 4
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %td, align 8
  %td_tiledepth = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i32 0, i32 6
  %6 = load i32, ptr %td_tiledepth, align 4
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %7 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i32 0, i32 24
  %8 = load i16, ptr %td_planarconfig, align 2
  %conv = zext i16 %8 to i32
  %cmp4 = icmp eq i32 %conv, 1
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %9 = load ptr, ptr %td, align 8
  %td_photometric = getelementptr inbounds %struct.TIFFDirectory, ptr %9, i32 0, i32 11
  %10 = load i16, ptr %td_photometric, align 2
  %conv6 = zext i16 %10 to i32
  %cmp7 = icmp eq i32 %conv6, 6
  br i1 %cmp7, label %land.lhs.true9, label %if.else

land.lhs.true9:                                   ; preds = %land.lhs.true
  %11 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %11, i32 0, i32 3
  %12 = load i32, ptr %tif_flags, align 8
  %and = and i32 %12, 16384
  %cmp10 = icmp ne i32 %and, 0
  br i1 %cmp10, label %if.else, label %if.then12

if.then12:                                        ; preds = %land.lhs.true9
  %13 = load ptr, ptr %td, align 8
  %td_tilewidth13 = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i32 0, i32 4
  %14 = load i32, ptr %td_tilewidth13, align 4
  %15 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i32 0, i32 49
  %arrayidx = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling, i64 0, i64 0
  %16 = load i16, ptr %arrayidx, align 8
  %conv14 = zext i16 %16 to i32
  %sub = sub i32 %conv14, 1
  %add = add i32 %14, %sub
  %17 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling15 = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i32 0, i32 49
  %arrayidx16 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling15, i64 0, i64 0
  %18 = load i16, ptr %arrayidx16, align 8
  %conv17 = zext i16 %18 to i32
  %div = udiv i32 %add, %conv17
  %19 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling18 = getelementptr inbounds %struct.TIFFDirectory, ptr %19, i32 0, i32 49
  %arrayidx19 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling18, i64 0, i64 0
  %20 = load i16, ptr %arrayidx19, align 8
  %conv20 = zext i16 %20 to i32
  %mul = mul i32 %div, %conv20
  store i32 %mul, ptr %w, align 4
  %21 = load i32, ptr %w, align 4
  %22 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i32 0, i32 8
  %23 = load i16, ptr %td_bitspersample, align 4
  %conv21 = zext i16 %23 to i32
  %mul22 = mul nsw i32 %21, %conv21
  %add23 = add i32 %mul22, 7
  %div24 = udiv i32 %add23, 8
  store i32 %div24, ptr %rowsize, align 4
  %24 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling25 = getelementptr inbounds %struct.TIFFDirectory, ptr %24, i32 0, i32 49
  %arrayidx26 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling25, i64 0, i64 0
  %25 = load i16, ptr %arrayidx26, align 8
  %conv27 = zext i16 %25 to i32
  %26 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling28 = getelementptr inbounds %struct.TIFFDirectory, ptr %26, i32 0, i32 49
  %arrayidx29 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling28, i64 0, i64 1
  %27 = load i16, ptr %arrayidx29, align 2
  %conv30 = zext i16 %27 to i32
  %mul31 = mul nsw i32 %conv27, %conv30
  store i32 %mul31, ptr %samplingarea, align 4
  %28 = load i32, ptr %nrows.addr, align 4
  %29 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling32 = getelementptr inbounds %struct.TIFFDirectory, ptr %29, i32 0, i32 49
  %arrayidx33 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling32, i64 0, i64 1
  %30 = load i16, ptr %arrayidx33, align 2
  %conv34 = zext i16 %30 to i32
  %sub35 = sub i32 %conv34, 1
  %add36 = add i32 %28, %sub35
  %31 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling37 = getelementptr inbounds %struct.TIFFDirectory, ptr %31, i32 0, i32 49
  %arrayidx38 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling37, i64 0, i64 1
  %32 = load i16, ptr %arrayidx38, align 2
  %conv39 = zext i16 %32 to i32
  %div40 = udiv i32 %add36, %conv39
  %33 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling41 = getelementptr inbounds %struct.TIFFDirectory, ptr %33, i32 0, i32 49
  %arrayidx42 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling41, i64 0, i64 1
  %34 = load i16, ptr %arrayidx42, align 2
  %conv43 = zext i16 %34 to i32
  %mul44 = mul i32 %div40, %conv43
  store i32 %mul44, ptr %nrows.addr, align 4
  %35 = load i32, ptr %nrows.addr, align 4
  %36 = load i32, ptr %rowsize, align 4
  %mul45 = mul i32 %35, %36
  %37 = load i32, ptr %nrows.addr, align 4
  %38 = load i32, ptr %rowsize, align 4
  %mul46 = mul i32 %37, %38
  %39 = load i32, ptr %samplingarea, align 4
  %div47 = udiv i32 %mul46, %39
  %mul48 = mul i32 2, %div47
  %add49 = add i32 %mul45, %mul48
  store i32 %add49, ptr %tilesize, align 4
  br label %if.end51

if.else:                                          ; preds = %land.lhs.true9, %land.lhs.true, %if.end
  %40 = load i32, ptr %nrows.addr, align 4
  %41 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFTileRowSize(ptr noundef %41)
  %mul50 = mul i32 %40, %call
  store i32 %mul50, ptr %tilesize, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then12
  %42 = load i32, ptr %tilesize, align 4
  %43 = load ptr, ptr %td, align 8
  %td_tiledepth52 = getelementptr inbounds %struct.TIFFDirectory, ptr %43, i32 0, i32 6
  %44 = load i32, ptr %td_tiledepth52, align 4
  %mul53 = mul i32 %42, %44
  store i32 %mul53, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end51, %if.then
  %45 = load i32, ptr %retval, align 4
  ret i32 %45
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFTileSize(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 6
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir, i32 0, i32 5
  %2 = load i32, ptr %td_tilelength, align 8
  %call = call i32 @TIFFVTileSize(ptr noundef %0, i32 noundef %2)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define void @TIFFDefaultTileSize(ptr noundef %tif, ptr noundef %tw, ptr noundef %th) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %tw.addr = alloca ptr, align 8
  %th.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %tw, ptr %tw.addr, align 8
  store ptr %th, ptr %th.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_deftilesize = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 36
  %1 = load ptr, ptr %tif_deftilesize, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load ptr, ptr %tw.addr, align 8
  %4 = load ptr, ptr %th.addr, align 8
  call void %1(ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_TIFFDefaultTileSize(ptr noundef %tif, ptr noundef %tw, ptr noundef %th) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %tw.addr = alloca ptr, align 8
  %th.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %tw, ptr %tw.addr, align 8
  store ptr %th, ptr %th.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load ptr, ptr %tw.addr, align 8
  %2 = load i32, ptr %1, align 4
  %cmp = icmp slt i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tw.addr, align 8
  store i32 256, ptr %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %th.addr, align 8
  %5 = load i32, ptr %4, align 4
  %cmp1 = icmp slt i32 %5, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %th.addr, align 8
  store i32 256, ptr %6, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %7 = load ptr, ptr %tw.addr, align 8
  %8 = load i32, ptr %7, align 4
  %and = and i32 %8, 15
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end3
  %9 = load ptr, ptr %tw.addr, align 8
  %10 = load i32, ptr %9, align 4
  %add = add i32 %10, 15
  %div = udiv i32 %add, 16
  %mul = mul i32 %div, 16
  %11 = load ptr, ptr %tw.addr, align 8
  store i32 %mul, ptr %11, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end3
  %12 = load ptr, ptr %th.addr, align 8
  %13 = load i32, ptr %12, align 4
  %and6 = and i32 %13, 15
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end5
  %14 = load ptr, ptr %th.addr, align 8
  %15 = load i32, ptr %14, align 4
  %add9 = add i32 %15, 15
  %div10 = udiv i32 %add9, 16
  %mul11 = mul i32 %div10, 16
  %16 = load ptr, ptr %th.addr, align 8
  store i32 %mul11, ptr %16, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end5
  ret void
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
