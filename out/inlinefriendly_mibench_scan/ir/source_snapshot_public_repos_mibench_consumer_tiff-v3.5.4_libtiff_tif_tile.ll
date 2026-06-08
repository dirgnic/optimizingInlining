; ModuleID = './source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_tile.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_tile.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i64, i64, i64, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i64, i16, i64, i64, i64, i16, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, ptr, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i64, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i64, ptr, i64, ptr, i64, ptr, i64, i64, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i64 }

@.str = private unnamed_addr constant [30 x i8] c"Col %ld out of range, max %lu\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Row %ld out of range, max %lu\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Depth %ld out of range, max %lu\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Sample %d out of range, max %u\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @TIFFComputeTile(ptr noundef %tif, i64 noundef %x, i64 noundef %y, i64 noundef %z, i16 noundef zeroext %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %z.addr = alloca i64, align 8
  %s.addr = alloca i16, align 2
  %td = alloca ptr, align 8
  %dx = alloca i64, align 8
  %dy = alloca i64, align 8
  %dz = alloca i64, align 8
  %tile = alloca i64, align 8
  %xpt = alloca i64, align 8
  %ypt = alloca i64, align 8
  %zpt = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  store i64 %z, ptr %z.addr, align 8
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 4
  %2 = load i64, ptr %td_tilewidth, align 8
  store i64 %2, ptr %dx, align 8
  %3 = load ptr, ptr %td, align 8
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 5
  %4 = load i64, ptr %td_tilelength, align 8
  store i64 %4, ptr %dy, align 8
  %5 = load ptr, ptr %td, align 8
  %td_tiledepth = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i32 0, i32 6
  %6 = load i64, ptr %td_tiledepth, align 8
  store i64 %6, ptr %dz, align 8
  store i64 1, ptr %tile, align 8
  %7 = load ptr, ptr %td, align 8
  %td_imagedepth = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i32 0, i32 3
  %8 = load i64, ptr %td_imagedepth, align 8
  %cmp = icmp eq i64 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %z.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64, ptr %dx, align 8
  %cmp1 = icmp eq i64 %9, -1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %10 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i32 0, i32 1
  %11 = load i64, ptr %td_imagewidth, align 8
  store i64 %11, ptr %dx, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %12 = load i64, ptr %dy, align 8
  %cmp4 = icmp eq i64 %12, -1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %13 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i32 0, i32 2
  %14 = load i64, ptr %td_imagelength, align 8
  store i64 %14, ptr %dy, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %15 = load i64, ptr %dz, align 8
  %cmp7 = icmp eq i64 %15, -1
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %16 = load ptr, ptr %td, align 8
  %td_imagedepth9 = getelementptr inbounds %struct.TIFFDirectory, ptr %16, i32 0, i32 3
  %17 = load i64, ptr %td_imagedepth9, align 8
  store i64 %17, ptr %dz, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6
  %18 = load i64, ptr %dx, align 8
  %cmp11 = icmp ne i64 %18, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end51

land.lhs.true:                                    ; preds = %if.end10
  %19 = load i64, ptr %dy, align 8
  %cmp12 = icmp ne i64 %19, 0
  br i1 %cmp12, label %land.lhs.true13, label %if.end51

land.lhs.true13:                                  ; preds = %land.lhs.true
  %20 = load i64, ptr %dz, align 8
  %cmp14 = icmp ne i64 %20, 0
  br i1 %cmp14, label %if.then15, label %if.end51

if.then15:                                        ; preds = %land.lhs.true13
  %21 = load ptr, ptr %td, align 8
  %td_imagewidth16 = getelementptr inbounds %struct.TIFFDirectory, ptr %21, i32 0, i32 1
  %22 = load i64, ptr %td_imagewidth16, align 8
  %23 = load i64, ptr %dx, align 8
  %sub = sub i64 %23, 1
  %add = add i64 %22, %sub
  %24 = load i64, ptr %dx, align 8
  %div = udiv i64 %add, %24
  store i64 %div, ptr %xpt, align 8
  %25 = load ptr, ptr %td, align 8
  %td_imagelength17 = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i32 0, i32 2
  %26 = load i64, ptr %td_imagelength17, align 8
  %27 = load i64, ptr %dy, align 8
  %sub18 = sub i64 %27, 1
  %add19 = add i64 %26, %sub18
  %28 = load i64, ptr %dy, align 8
  %div20 = udiv i64 %add19, %28
  store i64 %div20, ptr %ypt, align 8
  %29 = load ptr, ptr %td, align 8
  %td_imagedepth21 = getelementptr inbounds %struct.TIFFDirectory, ptr %29, i32 0, i32 3
  %30 = load i64, ptr %td_imagedepth21, align 8
  %31 = load i64, ptr %dz, align 8
  %sub22 = sub i64 %31, 1
  %add23 = add i64 %30, %sub22
  %32 = load i64, ptr %dz, align 8
  %div24 = udiv i64 %add23, %32
  store i64 %div24, ptr %zpt, align 8
  %33 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %33, i32 0, i32 24
  %34 = load i16, ptr %td_planarconfig, align 2
  %conv = zext i16 %34 to i32
  %cmp25 = icmp eq i32 %conv, 2
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.then15
  %35 = load i64, ptr %xpt, align 8
  %36 = load i64, ptr %ypt, align 8
  %mul = mul i64 %35, %36
  %37 = load i64, ptr %zpt, align 8
  %mul28 = mul i64 %mul, %37
  %38 = load i16, ptr %s.addr, align 2
  %conv29 = zext i16 %38 to i64
  %mul30 = mul i64 %mul28, %conv29
  %39 = load i64, ptr %xpt, align 8
  %40 = load i64, ptr %ypt, align 8
  %mul31 = mul i64 %39, %40
  %41 = load i64, ptr %z.addr, align 8
  %42 = load i64, ptr %dz, align 8
  %div32 = udiv i64 %41, %42
  %mul33 = mul i64 %mul31, %div32
  %add34 = add i64 %mul30, %mul33
  %43 = load i64, ptr %xpt, align 8
  %44 = load i64, ptr %y.addr, align 8
  %45 = load i64, ptr %dy, align 8
  %div35 = udiv i64 %44, %45
  %mul36 = mul i64 %43, %div35
  %add37 = add i64 %add34, %mul36
  %46 = load i64, ptr %x.addr, align 8
  %47 = load i64, ptr %dx, align 8
  %div38 = udiv i64 %46, %47
  %add39 = add i64 %add37, %div38
  store i64 %add39, ptr %tile, align 8
  br label %if.end50

if.else:                                          ; preds = %if.then15
  %48 = load i64, ptr %xpt, align 8
  %49 = load i64, ptr %ypt, align 8
  %mul40 = mul i64 %48, %49
  %50 = load i64, ptr %z.addr, align 8
  %51 = load i64, ptr %dz, align 8
  %div41 = udiv i64 %50, %51
  %mul42 = mul i64 %mul40, %div41
  %52 = load i64, ptr %xpt, align 8
  %53 = load i64, ptr %y.addr, align 8
  %54 = load i64, ptr %dy, align 8
  %div43 = udiv i64 %53, %54
  %mul44 = mul i64 %52, %div43
  %add45 = add i64 %mul42, %mul44
  %55 = load i64, ptr %x.addr, align 8
  %56 = load i64, ptr %dx, align 8
  %div46 = udiv i64 %55, %56
  %add47 = add i64 %add45, %div46
  %57 = load i16, ptr %s.addr, align 2
  %conv48 = zext i16 %57 to i64
  %add49 = add i64 %add47, %conv48
  store i64 %add49, ptr %tile, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then27
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %land.lhs.true13, %land.lhs.true, %if.end10
  %58 = load i64, ptr %tile, align 8
  ret i64 %58
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFCheckTile(ptr noundef %tif, i64 noundef %x, i64 noundef %y, i64 noundef %z, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %z.addr = alloca i64, align 8
  %s.addr = alloca i16, align 2
  %td = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  store i64 %z, ptr %z.addr, align 8
  store i16 %s, ptr %s.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load i64, ptr %x.addr, align 8
  %2 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %2, i32 0, i32 1
  %3 = load i64, ptr %td_imagewidth, align 8
  %cmp = icmp uge i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %tif_name, align 8
  %6 = load i64, ptr %x.addr, align 8
  %7 = load ptr, ptr %td, align 8
  %td_imagewidth1 = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i32 0, i32 1
  %8 = load i64, ptr %td_imagewidth1, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %5, ptr noundef @.str, i64 noundef %6, i64 noundef %8)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i64, ptr %y.addr, align 8
  %10 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i32 0, i32 2
  %11 = load i64, ptr %td_imagelength, align 8
  %cmp2 = icmp uge i64 %9, %11
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_name4 = getelementptr inbounds %struct.tiff, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %tif_name4, align 8
  %14 = load i64, ptr %y.addr, align 8
  %15 = load ptr, ptr %td, align 8
  %td_imagelength5 = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i32 0, i32 2
  %16 = load i64, ptr %td_imagelength5, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %13, ptr noundef @.str.1, i64 noundef %14, i64 noundef %16)
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %17 = load i64, ptr %z.addr, align 8
  %18 = load ptr, ptr %td, align 8
  %td_imagedepth = getelementptr inbounds %struct.TIFFDirectory, ptr %18, i32 0, i32 3
  %19 = load i64, ptr %td_imagedepth, align 8
  %cmp7 = icmp uge i64 %17, %19
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end6
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_name9 = getelementptr inbounds %struct.tiff, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %tif_name9, align 8
  %22 = load i64, ptr %z.addr, align 8
  %23 = load ptr, ptr %td, align 8
  %td_imagedepth10 = getelementptr inbounds %struct.TIFFDirectory, ptr %23, i32 0, i32 3
  %24 = load i64, ptr %td_imagedepth10, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %21, ptr noundef @.str.2, i64 noundef %22, i64 noundef %24)
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end6
  %25 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i32 0, i32 24
  %26 = load i16, ptr %td_planarconfig, align 2
  %conv = zext i16 %26 to i32
  %cmp12 = icmp eq i32 %conv, 2
  br i1 %cmp12, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %if.end11
  %27 = load i16, ptr %s.addr, align 2
  %conv14 = zext i16 %27 to i32
  %28 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %28, i32 0, i32 15
  %29 = load i16, ptr %td_samplesperpixel, align 2
  %conv15 = zext i16 %29 to i32
  %cmp16 = icmp sge i32 %conv14, %conv15
  br i1 %cmp16, label %if.then18, label %if.end23

if.then18:                                        ; preds = %land.lhs.true
  %30 = load ptr, ptr %tif.addr, align 8
  %tif_name19 = getelementptr inbounds %struct.tiff, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %tif_name19, align 8
  %32 = load i16, ptr %s.addr, align 2
  %conv20 = zext i16 %32 to i32
  %33 = load ptr, ptr %td, align 8
  %td_samplesperpixel21 = getelementptr inbounds %struct.TIFFDirectory, ptr %33, i32 0, i32 15
  %34 = load i16, ptr %td_samplesperpixel21, align 2
  %conv22 = zext i16 %34 to i32
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %31, ptr noundef @.str.3, i32 noundef %conv20, i32 noundef %conv22)
  store i32 0, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %land.lhs.true, %if.end11
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then18, %if.then8, %if.then3, %if.then
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @TIFFNumberOfTiles(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %dx = alloca i64, align 8
  %dy = alloca i64, align 8
  %dz = alloca i64, align 8
  %ntiles = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 4
  %2 = load i64, ptr %td_tilewidth, align 8
  store i64 %2, ptr %dx, align 8
  %3 = load ptr, ptr %td, align 8
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 5
  %4 = load i64, ptr %td_tilelength, align 8
  store i64 %4, ptr %dy, align 8
  %5 = load ptr, ptr %td, align 8
  %td_tiledepth = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i32 0, i32 6
  %6 = load i64, ptr %td_tiledepth, align 8
  store i64 %6, ptr %dz, align 8
  %7 = load i64, ptr %dx, align 8
  %cmp = icmp eq i64 %7, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i32 0, i32 1
  %9 = load i64, ptr %td_imagewidth, align 8
  store i64 %9, ptr %dx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i64, ptr %dy, align 8
  %cmp1 = icmp eq i64 %10, -1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %11 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i32 0, i32 2
  %12 = load i64, ptr %td_imagelength, align 8
  store i64 %12, ptr %dy, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %13 = load i64, ptr %dz, align 8
  %cmp4 = icmp eq i64 %13, -1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %14 = load ptr, ptr %td, align 8
  %td_imagedepth = getelementptr inbounds %struct.TIFFDirectory, ptr %14, i32 0, i32 3
  %15 = load i64, ptr %td_imagedepth, align 8
  store i64 %15, ptr %dz, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %16 = load i64, ptr %dx, align 8
  %cmp7 = icmp eq i64 %16, 0
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %17 = load i64, ptr %dy, align 8
  %cmp8 = icmp eq i64 %17, 0
  br i1 %cmp8, label %cond.true, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %18 = load i64, ptr %dz, align 8
  %cmp10 = icmp eq i64 %18, 0
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false9, %lor.lhs.false, %if.end6
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false9
  %19 = load ptr, ptr %td, align 8
  %td_imagewidth11 = getelementptr inbounds %struct.TIFFDirectory, ptr %19, i32 0, i32 1
  %20 = load i64, ptr %td_imagewidth11, align 8
  %21 = load i64, ptr %dx, align 8
  %sub = sub i64 %21, 1
  %add = add i64 %20, %sub
  %22 = load i64, ptr %dx, align 8
  %div = udiv i64 %add, %22
  %23 = load ptr, ptr %td, align 8
  %td_imagelength12 = getelementptr inbounds %struct.TIFFDirectory, ptr %23, i32 0, i32 2
  %24 = load i64, ptr %td_imagelength12, align 8
  %25 = load i64, ptr %dy, align 8
  %sub13 = sub i64 %25, 1
  %add14 = add i64 %24, %sub13
  %26 = load i64, ptr %dy, align 8
  %div15 = udiv i64 %add14, %26
  %mul = mul i64 %div, %div15
  %27 = load ptr, ptr %td, align 8
  %td_imagedepth16 = getelementptr inbounds %struct.TIFFDirectory, ptr %27, i32 0, i32 3
  %28 = load i64, ptr %td_imagedepth16, align 8
  %29 = load i64, ptr %dz, align 8
  %sub17 = sub i64 %29, 1
  %add18 = add i64 %28, %sub17
  %30 = load i64, ptr %dz, align 8
  %div19 = udiv i64 %add18, %30
  %mul20 = mul i64 %mul, %div19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %mul20, %cond.false ]
  store i64 %cond, ptr %ntiles, align 8
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
  %conv24 = zext i16 %34 to i64
  %35 = load i64, ptr %ntiles, align 8
  %mul25 = mul i64 %35, %conv24
  store i64 %mul25, ptr %ntiles, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %cond.end
  %36 = load i64, ptr %ntiles, align 8
  ret i64 %36
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @TIFFTileRowSize(ptr noundef %tif) #0 {
entry:
  %retval = alloca i64, align 8
  %tif.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %rowsize = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 5
  %2 = load i64, ptr %td_tilelength, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 4
  %4 = load i64, ptr %td_tilewidth, align 8
  %cmp1 = icmp eq i64 %4, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i32 0, i32 8
  %6 = load i16, ptr %td_bitspersample, align 8
  %conv = zext i16 %6 to i64
  %7 = load ptr, ptr %td, align 8
  %td_tilewidth2 = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i32 0, i32 4
  %8 = load i64, ptr %td_tilewidth2, align 8
  %mul = mul i64 %conv, %8
  store i64 %mul, ptr %rowsize, align 8
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
  %conv7 = zext i16 %12 to i64
  %13 = load i64, ptr %rowsize, align 8
  %mul8 = mul nsw i64 %13, %conv7
  store i64 %mul8, ptr %rowsize, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  %14 = load i64, ptr %rowsize, align 8
  %add = add i64 %14, 7
  %div = udiv i64 %add, 8
  store i64 %div, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.then
  %15 = load i64, ptr %retval, align 8
  ret i64 %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @TIFFVTileSize(ptr noundef %tif, i64 noundef %nrows) #0 {
entry:
  %retval = alloca i64, align 8
  %tif.addr = alloca ptr, align 8
  %nrows.addr = alloca i64, align 8
  %td = alloca ptr, align 8
  %tilesize = alloca i64, align 8
  %w = alloca i64, align 8
  %rowsize = alloca i64, align 8
  %samplingarea = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %nrows, ptr %nrows.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 5
  %2 = load i64, ptr %td_tilelength, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 4
  %4 = load i64, ptr %td_tilewidth, align 8
  %cmp1 = icmp eq i64 %4, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %td, align 8
  %td_tiledepth = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i32 0, i32 6
  %6 = load i64, ptr %td_tiledepth, align 8
  %cmp3 = icmp eq i64 %6, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i64 0, ptr %retval, align 8
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
  %12 = load i64, ptr %tif_flags, align 8
  %and = and i64 %12, 16384
  %cmp10 = icmp ne i64 %and, 0
  br i1 %cmp10, label %if.else, label %if.then12

if.then12:                                        ; preds = %land.lhs.true9
  %13 = load ptr, ptr %td, align 8
  %td_tilewidth13 = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i32 0, i32 4
  %14 = load i64, ptr %td_tilewidth13, align 8
  %15 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i32 0, i32 49
  %arrayidx = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling, i64 0, i64 0
  %16 = load i16, ptr %arrayidx, align 8
  %conv14 = zext i16 %16 to i64
  %sub = sub i64 %conv14, 1
  %add = add i64 %14, %sub
  %17 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling15 = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i32 0, i32 49
  %arrayidx16 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling15, i64 0, i64 0
  %18 = load i16, ptr %arrayidx16, align 8
  %conv17 = zext i16 %18 to i64
  %div = udiv i64 %add, %conv17
  %19 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling18 = getelementptr inbounds %struct.TIFFDirectory, ptr %19, i32 0, i32 49
  %arrayidx19 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling18, i64 0, i64 0
  %20 = load i16, ptr %arrayidx19, align 8
  %conv20 = zext i16 %20 to i64
  %mul = mul i64 %div, %conv20
  store i64 %mul, ptr %w, align 8
  %21 = load i64, ptr %w, align 8
  %22 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i32 0, i32 8
  %23 = load i16, ptr %td_bitspersample, align 8
  %conv21 = zext i16 %23 to i64
  %mul22 = mul nsw i64 %21, %conv21
  %add23 = add i64 %mul22, 7
  %div24 = udiv i64 %add23, 8
  store i64 %div24, ptr %rowsize, align 8
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
  %conv32 = sext i32 %mul31 to i64
  store i64 %conv32, ptr %samplingarea, align 8
  %28 = load i64, ptr %nrows.addr, align 8
  %29 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling33 = getelementptr inbounds %struct.TIFFDirectory, ptr %29, i32 0, i32 49
  %arrayidx34 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling33, i64 0, i64 1
  %30 = load i16, ptr %arrayidx34, align 2
  %conv35 = zext i16 %30 to i64
  %sub36 = sub i64 %conv35, 1
  %add37 = add i64 %28, %sub36
  %31 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling38 = getelementptr inbounds %struct.TIFFDirectory, ptr %31, i32 0, i32 49
  %arrayidx39 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling38, i64 0, i64 1
  %32 = load i16, ptr %arrayidx39, align 2
  %conv40 = zext i16 %32 to i64
  %div41 = udiv i64 %add37, %conv40
  %33 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling42 = getelementptr inbounds %struct.TIFFDirectory, ptr %33, i32 0, i32 49
  %arrayidx43 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling42, i64 0, i64 1
  %34 = load i16, ptr %arrayidx43, align 2
  %conv44 = zext i16 %34 to i64
  %mul45 = mul i64 %div41, %conv44
  store i64 %mul45, ptr %nrows.addr, align 8
  %35 = load i64, ptr %nrows.addr, align 8
  %36 = load i64, ptr %rowsize, align 8
  %mul46 = mul i64 %35, %36
  %37 = load i64, ptr %nrows.addr, align 8
  %38 = load i64, ptr %rowsize, align 8
  %mul47 = mul i64 %37, %38
  %39 = load i64, ptr %samplingarea, align 8
  %div48 = udiv i64 %mul47, %39
  %mul49 = mul i64 2, %div48
  %add50 = add i64 %mul46, %mul49
  store i64 %add50, ptr %tilesize, align 8
  br label %if.end52

if.else:                                          ; preds = %land.lhs.true9, %land.lhs.true, %if.end
  %40 = load i64, ptr %nrows.addr, align 8
  %41 = load ptr, ptr %tif.addr, align 8
  %call = call i64 @TIFFTileRowSize(ptr noundef %41)
  %mul51 = mul i64 %40, %call
  store i64 %mul51, ptr %tilesize, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then12
  %42 = load i64, ptr %tilesize, align 8
  %43 = load ptr, ptr %td, align 8
  %td_tiledepth53 = getelementptr inbounds %struct.TIFFDirectory, ptr %43, i32 0, i32 6
  %44 = load i64, ptr %td_tiledepth53, align 8
  %mul54 = mul i64 %42, %44
  store i64 %mul54, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end52, %if.then
  %45 = load i64, ptr %retval, align 8
  ret i64 %45
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @TIFFTileSize(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 6
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir, i32 0, i32 5
  %2 = load i64, ptr %td_tilelength, align 8
  %call = call i64 @TIFFVTileSize(ptr noundef %0, i64 noundef %2)
  ret i64 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %2 = load i64, ptr %1, align 8
  %cmp = icmp slt i64 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tw.addr, align 8
  store i64 256, ptr %3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %th.addr, align 8
  %5 = load i64, ptr %4, align 8
  %cmp1 = icmp slt i64 %5, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %th.addr, align 8
  store i64 256, ptr %6, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %7 = load ptr, ptr %tw.addr, align 8
  %8 = load i64, ptr %7, align 8
  %and = and i64 %8, 15
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end3
  %9 = load ptr, ptr %tw.addr, align 8
  %10 = load i64, ptr %9, align 8
  %add = add i64 %10, 15
  %div = udiv i64 %add, 16
  %mul = mul i64 %div, 16
  %11 = load ptr, ptr %tw.addr, align 8
  store i64 %mul, ptr %11, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end3
  %12 = load ptr, ptr %th.addr, align 8
  %13 = load i64, ptr %12, align 8
  %and6 = and i64 %13, 15
  %tobool7 = icmp ne i64 %and6, 0
  br i1 %tobool7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end5
  %14 = load ptr, ptr %th.addr, align 8
  %15 = load i64, ptr %14, align 8
  %add9 = add i64 %15, 15
  %div10 = udiv i64 %add9, 16
  %mul11 = mul i64 %div10, 16
  %16 = load ptr, ptr %th.addr, align 8
  store i64 %mul11, ptr %16, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end5
  ret void
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
