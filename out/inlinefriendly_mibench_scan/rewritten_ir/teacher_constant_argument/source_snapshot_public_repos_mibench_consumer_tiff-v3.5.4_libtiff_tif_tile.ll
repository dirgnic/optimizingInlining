; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_constant_argument/source_snapshot_public_repos_mibench_consumer_tiff-v3.5.4_libtiff_tif_tile.prepared.ll'
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

; Function Attrs: nounwind ssp uwtable
define i64 @TIFFComputeTile(ptr noundef %tif, i64 noundef %x, i64 noundef %y, i64 noundef %z, i16 noundef zeroext %s) #0 {
entry:
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
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  store i64 %z, ptr %z.addr, align 8
  store i16 %s, ptr %s.addr, align 2
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 4
  %0 = load i64, ptr %td_tilewidth, align 8
  store i64 %0, ptr %dx, align 8
  %td_tilelength = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 5
  %1 = load i64, ptr %td_tilelength, align 8
  store i64 %1, ptr %dy, align 8
  %2 = load ptr, ptr %td, align 8
  %td_tiledepth = getelementptr inbounds %struct.TIFFDirectory, ptr %2, i64 0, i32 6
  %3 = load i64, ptr %td_tiledepth, align 8
  store i64 %3, ptr %dz, align 8
  store i64 1, ptr %tile, align 8
  %td_imagedepth = getelementptr inbounds %struct.TIFFDirectory, ptr %2, i64 0, i32 3
  %4 = load i64, ptr %td_imagedepth, align 8
  %cmp = icmp eq i64 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %z.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %dx, align 8
  %cmp1 = icmp eq i64 %5, -1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i64 0, i32 1
  %7 = load i64, ptr %td_imagewidth, align 8
  store i64 %7, ptr %dx, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %8 = load i64, ptr %dy, align 8
  %cmp4 = icmp eq i64 %8, -1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %9 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %9, i64 0, i32 2
  %10 = load i64, ptr %td_imagelength, align 8
  store i64 %10, ptr %dy, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %11 = load i64, ptr %dz, align 8
  %cmp7 = icmp eq i64 %11, -1
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %12 = load ptr, ptr %td, align 8
  %td_imagedepth9 = getelementptr inbounds %struct.TIFFDirectory, ptr %12, i64 0, i32 3
  %13 = load i64, ptr %td_imagedepth9, align 8
  store i64 %13, ptr %dz, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6
  %14 = load i64, ptr %dx, align 8
  %cmp11.not = icmp eq i64 %14, 0
  %15 = load i64, ptr %dy, align 8
  %cmp12.not = icmp eq i64 %15, 0
  %or.cond = select i1 %cmp11.not, i1 true, i1 %cmp12.not
  %16 = load i64, ptr %dz, align 8
  %cmp14.not = icmp eq i64 %16, 0
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp14.not
  br i1 %or.cond1, label %if.end51, label %if.then15

if.then15:                                        ; preds = %if.end10
  %17 = load ptr, ptr %td, align 8
  %td_imagewidth16 = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i64 0, i32 1
  %18 = load i64, ptr %td_imagewidth16, align 8
  %19 = load i64, ptr %dx, align 8
  %sub = add i64 %19, -1
  %add = add i64 %18, %sub
  %div = udiv i64 %add, %19
  store i64 %div, ptr %xpt, align 8
  %20 = load ptr, ptr %td, align 8
  %td_imagelength17 = getelementptr inbounds %struct.TIFFDirectory, ptr %20, i64 0, i32 2
  %21 = load i64, ptr %td_imagelength17, align 8
  %22 = load i64, ptr %dy, align 8
  %sub18 = add i64 %22, -1
  %add19 = add i64 %21, %sub18
  %div20 = udiv i64 %add19, %22
  store i64 %div20, ptr %ypt, align 8
  %23 = load ptr, ptr %td, align 8
  %td_imagedepth21 = getelementptr inbounds %struct.TIFFDirectory, ptr %23, i64 0, i32 3
  %24 = load i64, ptr %td_imagedepth21, align 8
  %25 = load i64, ptr %dz, align 8
  %sub22 = add i64 %25, -1
  %add23 = add i64 %24, %sub22
  %div24 = udiv i64 %add23, %25
  store i64 %div24, ptr %zpt, align 8
  %26 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %26, i64 0, i32 24
  %27 = load i16, ptr %td_planarconfig, align 2
  %cmp25 = icmp eq i16 %27, 2
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.then15
  %28 = load i64, ptr %xpt, align 8
  %29 = load i64, ptr %ypt, align 8
  %mul = mul i64 %28, %29
  %30 = load i64, ptr %zpt, align 8
  %mul28 = mul i64 %mul, %30
  %31 = load i16, ptr %s.addr, align 2
  %conv29 = zext i16 %31 to i64
  %mul30 = mul i64 %mul28, %conv29
  %32 = load i64, ptr %xpt, align 8
  %33 = load i64, ptr %ypt, align 8
  %mul31 = mul i64 %32, %33
  %34 = load i64, ptr %z.addr, align 8
  %35 = load i64, ptr %dz, align 8
  %div32 = udiv i64 %34, %35
  %mul33 = mul i64 %mul31, %div32
  %add34 = add i64 %mul30, %mul33
  %36 = load i64, ptr %xpt, align 8
  %37 = load i64, ptr %y.addr, align 8
  %38 = load i64, ptr %dy, align 8
  %div35 = udiv i64 %37, %38
  %mul36 = mul i64 %36, %div35
  %add37 = add i64 %add34, %mul36
  %39 = load i64, ptr %x.addr, align 8
  %40 = load i64, ptr %dx, align 8
  %div38 = udiv i64 %39, %40
  %add39 = add i64 %add37, %div38
  br label %if.end50

if.else:                                          ; preds = %if.then15
  %41 = load i64, ptr %xpt, align 8
  %42 = load i64, ptr %ypt, align 8
  %mul40 = mul i64 %41, %42
  %43 = load i64, ptr %z.addr, align 8
  %44 = load i64, ptr %dz, align 8
  %div41 = udiv i64 %43, %44
  %mul42 = mul i64 %mul40, %div41
  %45 = load i64, ptr %xpt, align 8
  %46 = load i64, ptr %y.addr, align 8
  %47 = load i64, ptr %dy, align 8
  %div43 = udiv i64 %46, %47
  %mul44 = mul i64 %45, %div43
  %add45 = add i64 %mul42, %mul44
  %48 = load i64, ptr %x.addr, align 8
  %49 = load i64, ptr %dx, align 8
  %div46 = udiv i64 %48, %49
  %add47 = add i64 %add45, %div46
  %50 = load i16, ptr %s.addr, align 2
  %conv48 = zext i16 %50 to i64
  %add49 = add i64 %add47, %conv48
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then27
  %storemerge = phi i64 [ %add49, %if.else ], [ %add39, %if.then27 ]
  store i64 %storemerge, ptr %tile, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end10
  %51 = load i64, ptr %tile, align 8
  ret i64 %51
}

; Function Attrs: nounwind ssp uwtable
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
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 1
  %0 = load i64, ptr %td_imagewidth, align 8
  %cmp.not = icmp ugt i64 %0, %x
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %3 = load i64, ptr %x.addr, align 8
  %4 = load ptr, ptr %td, align 8
  %td_imagewidth1 = getelementptr inbounds %struct.TIFFDirectory, ptr %4, i64 0, i32 1
  %5 = load i64, ptr %td_imagewidth1, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %2, ptr noundef nonnull @.str, i64 noundef %3, i64 noundef %5) #2
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64, ptr %y.addr, align 8
  %7 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i64 0, i32 2
  %8 = load i64, ptr %td_imagelength, align 8
  %cmp2.not = icmp ult i64 %6, %8
  br i1 %cmp2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %tif.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = load i64, ptr %y.addr, align 8
  %12 = load ptr, ptr %td, align 8
  %td_imagelength5 = getelementptr inbounds %struct.TIFFDirectory, ptr %12, i64 0, i32 2
  %13 = load i64, ptr %td_imagelength5, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %10, ptr noundef nonnull @.str.1, i64 noundef %11, i64 noundef %13) #2
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %14 = load i64, ptr %z.addr, align 8
  %15 = load ptr, ptr %td, align 8
  %td_imagedepth = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i64 0, i32 3
  %16 = load i64, ptr %td_imagedepth, align 8
  %cmp7.not = icmp ult i64 %14, %16
  br i1 %cmp7.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end6
  %17 = load ptr, ptr %tif.addr, align 8
  %18 = load ptr, ptr %17, align 8
  %19 = load i64, ptr %z.addr, align 8
  %20 = load ptr, ptr %td, align 8
  %td_imagedepth10 = getelementptr inbounds %struct.TIFFDirectory, ptr %20, i64 0, i32 3
  %21 = load i64, ptr %td_imagedepth10, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %18, ptr noundef nonnull @.str.2, i64 noundef %19, i64 noundef %21) #2
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end6
  %22 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i64 0, i32 24
  %23 = load i16, ptr %td_planarconfig, align 2
  %cmp12 = icmp eq i16 %23, 2
  br i1 %cmp12, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %if.end11
  %24 = load i16, ptr %s.addr, align 2
  %25 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i64 0, i32 15
  %26 = load i16, ptr %td_samplesperpixel, align 2
  %cmp16.not = icmp ult i16 %24, %26
  br i1 %cmp16.not, label %if.end23, label %if.then18

if.then18:                                        ; preds = %land.lhs.true
  %27 = load ptr, ptr %tif.addr, align 8
  %28 = load ptr, ptr %27, align 8
  %29 = load i16, ptr %s.addr, align 2
  %conv20 = zext i16 %29 to i32
  %30 = load ptr, ptr %td, align 8
  %td_samplesperpixel21 = getelementptr inbounds %struct.TIFFDirectory, ptr %30, i64 0, i32 15
  %31 = load i16, ptr %td_samplesperpixel21, align 2
  %conv22 = zext i16 %31 to i32
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %28, ptr noundef nonnull @.str.3, i32 noundef %conv20, i32 noundef %conv22) #2
  store i32 0, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %land.lhs.true, %if.end11
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then18, %if.then8, %if.then3, %if.then
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define i64 @TIFFNumberOfTiles(ptr noundef %tif) #0 {
entry:
  %td = alloca ptr, align 8
  %dx = alloca i64, align 8
  %dy = alloca i64, align 8
  %dz = alloca i64, align 8
  %ntiles = alloca i64, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 4
  %0 = load i64, ptr %td_tilewidth, align 8
  store i64 %0, ptr %dx, align 8
  %td_tilelength = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 5
  %1 = load i64, ptr %td_tilelength, align 8
  store i64 %1, ptr %dy, align 8
  %2 = load ptr, ptr %td, align 8
  %td_tiledepth = getelementptr inbounds %struct.TIFFDirectory, ptr %2, i64 0, i32 6
  %3 = load i64, ptr %td_tiledepth, align 8
  store i64 %3, ptr %dz, align 8
  %4 = load i64, ptr %dx, align 8
  %cmp = icmp eq i64 %4, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i64 0, i32 1
  %6 = load i64, ptr %td_imagewidth, align 8
  store i64 %6, ptr %dx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i64, ptr %dy, align 8
  %cmp1 = icmp eq i64 %7, -1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i64 0, i32 2
  %9 = load i64, ptr %td_imagelength, align 8
  store i64 %9, ptr %dy, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %10 = load i64, ptr %dz, align 8
  %cmp4 = icmp eq i64 %10, -1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %11 = load ptr, ptr %td, align 8
  %td_imagedepth = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i64 0, i32 3
  %12 = load i64, ptr %td_imagedepth, align 8
  store i64 %12, ptr %dz, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %13 = load i64, ptr %dx, align 8
  %cmp7 = icmp eq i64 %13, 0
  %14 = load i64, ptr %dy, align 8
  %cmp8 = icmp eq i64 %14, 0
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp8
  %15 = load i64, ptr %dz, align 8
  %cmp10 = icmp eq i64 %15, 0
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp10
  br i1 %or.cond1, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end6
  %16 = load ptr, ptr %td, align 8
  %td_imagewidth11 = getelementptr inbounds %struct.TIFFDirectory, ptr %16, i64 0, i32 1
  %17 = load i64, ptr %td_imagewidth11, align 8
  %18 = load i64, ptr %dx, align 8
  %sub = add i64 %18, -1
  %add = add i64 %17, %sub
  %div = udiv i64 %add, %18
  %19 = load ptr, ptr %td, align 8
  %td_imagelength12 = getelementptr inbounds %struct.TIFFDirectory, ptr %19, i64 0, i32 2
  %20 = load i64, ptr %td_imagelength12, align 8
  %21 = load i64, ptr %dy, align 8
  %sub13 = add i64 %21, -1
  %add14 = add i64 %20, %sub13
  %div15 = udiv i64 %add14, %21
  %mul = mul i64 %div, %div15
  %22 = load ptr, ptr %td, align 8
  %td_imagedepth16 = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i64 0, i32 3
  %23 = load i64, ptr %td_imagedepth16, align 8
  %24 = load i64, ptr %dz, align 8
  %sub17 = add i64 %24, -1
  %add18 = add i64 %23, %sub17
  %div19 = udiv i64 %add18, %24
  %mul20 = mul i64 %mul, %div19
  br label %cond.end

cond.end:                                         ; preds = %if.end6, %cond.false
  %cond = phi i64 [ %mul20, %cond.false ], [ 0, %if.end6 ]
  store i64 %cond, ptr %ntiles, align 8
  %25 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i64 0, i32 24
  %26 = load i16, ptr %td_planarconfig, align 2
  %cmp21 = icmp eq i16 %26, 2
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %cond.end
  %27 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %27, i64 0, i32 15
  %28 = load i16, ptr %td_samplesperpixel, align 2
  %conv24 = zext i16 %28 to i64
  %29 = load i64, ptr %ntiles, align 8
  %mul25 = mul i64 %29, %conv24
  store i64 %mul25, ptr %ntiles, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %cond.end
  %30 = load i64, ptr %ntiles, align 8
  ret i64 %30
}

; Function Attrs: nounwind ssp uwtable
define i64 @TIFFTileRowSize(ptr noundef %tif) #0 {
entry:
  %td = alloca ptr, align 8
  %rowsize = alloca i64, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_tilelength = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 5
  %0 = load i64, ptr %td_tilelength, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i64 0, i32 4
  %2 = load i64, ptr %td_tilewidth, align 8
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i64 0, i32 8
  %4 = load i16, ptr %td_bitspersample, align 8
  %conv = zext i16 %4 to i64
  %td_tilewidth2 = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i64 0, i32 4
  %5 = load i64, ptr %td_tilewidth2, align 8
  %mul = mul i64 %5, %conv
  store i64 %mul, ptr %rowsize, align 8
  %6 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i64 0, i32 24
  %7 = load i16, ptr %td_planarconfig, align 2
  %cmp4 = icmp eq i16 %7, 1
  br i1 %cmp4, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %8 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i64 0, i32 15
  %9 = load i16, ptr %td_samplesperpixel, align 2
  %conv7 = zext i16 %9 to i64
  %10 = load i64, ptr %rowsize, align 8
  %mul8 = mul nsw i64 %10, %conv7
  store i64 %mul8, ptr %rowsize, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  %11 = load i64, ptr %rowsize, align 8
  %add = add i64 %11, 7
  %div1 = lshr i64 %add, 3
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end9
  %storemerge = phi i64 [ %div1, %if.end9 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i64 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i64 @TIFFVTileSize(ptr noundef %tif, i64 noundef %nrows) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %nrows.addr = alloca i64, align 8
  %td = alloca ptr, align 8
  %rowsize = alloca i64, align 8
  %samplingarea = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %nrows, ptr %nrows.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_tilelength = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 5
  %0 = load i64, ptr %td_tilelength, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i64 0, i32 4
  %2 = load i64, ptr %td_tilewidth, align 8
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %return, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %td, align 8
  %td_tiledepth = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i64 0, i32 6
  %4 = load i64, ptr %td_tiledepth, align 8
  %cmp3 = icmp eq i64 %4, 0
  br i1 %cmp3, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false2
  %5 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i64 0, i32 24
  %6 = load i16, ptr %td_planarconfig, align 2
  %cmp4 = icmp eq i16 %6, 1
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %td, align 8
  %td_photometric = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i64 0, i32 11
  %8 = load i16, ptr %td_photometric, align 2
  %cmp7 = icmp eq i16 %8, 6
  br i1 %cmp7, label %land.lhs.true9, label %if.else

land.lhs.true9:                                   ; preds = %land.lhs.true
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 3
  %10 = load i64, ptr %tif_flags, align 8
  %and = and i64 %10, 16384
  %cmp10.not = icmp eq i64 %and, 0
  br i1 %cmp10.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %land.lhs.true9
  %11 = load ptr, ptr %td, align 8
  %td_tilewidth13 = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i64 0, i32 4
  %12 = load i64, ptr %td_tilewidth13, align 8
  %td_ycbcrsubsampling = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i64 0, i32 49
  %13 = load i16, ptr %td_ycbcrsubsampling, align 8
  %conv14 = zext i16 %13 to i64
  %sub = add nsw i64 %conv14, -1
  %add = add i64 %12, %sub
  %14 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling15 = getelementptr inbounds %struct.TIFFDirectory, ptr %14, i64 0, i32 49
  %15 = load i16, ptr %td_ycbcrsubsampling15, align 8
  %conv17 = zext i16 %15 to i64
  %div = udiv i64 %add, %conv17
  %conv20 = zext i16 %15 to i64
  %mul = mul i64 %div, %conv20
  %16 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %16, i64 0, i32 8
  %17 = load i16, ptr %td_bitspersample, align 8
  %conv21 = zext i16 %17 to i64
  %mul22 = mul nsw i64 %mul, %conv21
  %add23 = add i64 %mul22, 7
  %div242 = lshr i64 %add23, 3
  store i64 %div242, ptr %rowsize, align 8
  %18 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling25 = getelementptr inbounds %struct.TIFFDirectory, ptr %18, i64 0, i32 49
  %19 = load i16, ptr %td_ycbcrsubsampling25, align 8
  %conv27 = zext i16 %19 to i64
  %arrayidx29 = getelementptr inbounds %struct.TIFFDirectory, ptr %18, i64 0, i32 49, i64 1
  %20 = load i16, ptr %arrayidx29, align 2
  %conv30 = zext i16 %20 to i64
  %mul31 = mul nuw nsw i64 %conv27, %conv30
  store i64 %mul31, ptr %samplingarea, align 8
  %21 = load i64, ptr %nrows.addr, align 8
  %22 = load ptr, ptr %td, align 8
  %arrayidx34 = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i64 0, i32 49, i64 1
  %23 = load i16, ptr %arrayidx34, align 2
  %conv35 = zext i16 %23 to i64
  %sub36 = add nsw i64 %conv35, -1
  %add37 = add i64 %21, %sub36
  %conv40 = zext i16 %23 to i64
  %div41 = udiv i64 %add37, %conv40
  %24 = load ptr, ptr %td, align 8
  %arrayidx43 = getelementptr inbounds %struct.TIFFDirectory, ptr %24, i64 0, i32 49, i64 1
  %25 = load i16, ptr %arrayidx43, align 2
  %conv44 = zext i16 %25 to i64
  %mul45 = mul i64 %div41, %conv44
  store i64 %mul45, ptr %nrows.addr, align 8
  %26 = load i64, ptr %rowsize, align 8
  %mul46 = mul i64 %mul45, %26
  %mul47 = mul i64 %mul45, %26
  %27 = load i64, ptr %samplingarea, align 8
  %div48 = udiv i64 %mul47, %27
  %mul49 = shl i64 %div48, 1
  %add50 = add i64 %mul46, %mul49
  br label %if.end52

if.else:                                          ; preds = %land.lhs.true9, %land.lhs.true, %if.end
  %28 = load i64, ptr %nrows.addr, align 8
  %29 = load ptr, ptr %tif.addr, align 8
  %call = call i64 @TIFFTileRowSize(ptr noundef %29)
  %mul51 = mul i64 %28, %call
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then12
  %storemerge = phi i64 [ %mul51, %if.else ], [ %add50, %if.then12 ]
  %30 = load ptr, ptr %td, align 8
  %td_tiledepth53 = getelementptr inbounds %struct.TIFFDirectory, ptr %30, i64 0, i32 6
  %31 = load i64, ptr %td_tiledepth53, align 8
  %mul54 = mul i64 %storemerge, %31
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %lor.lhs.false2, %if.end52
  %storemerge1 = phi i64 [ %mul54, %if.end52 ], [ 0, %lor.lhs.false2 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i64 %storemerge1
}

; Function Attrs: nounwind ssp uwtable
define i64 @TIFFTileSize(ptr noundef %tif) #0 {
entry:
  %td_tilelength = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 5
  %0 = load i64, ptr %td_tilelength, align 8
  %call = call i64 @TIFFVTileSize(ptr noundef %tif, i64 noundef %0)
  ret i64 %call
}

; Function Attrs: nounwind ssp uwtable
define void @TIFFDefaultTileSize(ptr noundef %tif, ptr noundef %tw, ptr noundef %th) #0 {
entry:
  %tif_deftilesize = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 36
  %0 = load ptr, ptr %tif_deftilesize, align 8
  call void %0(ptr noundef %tif, ptr noundef %tw, ptr noundef %th) #2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_TIFFDefaultTileSize(ptr noundef %tif, ptr noundef %tw, ptr noundef %th) #0 {
entry:
  %tw.addr = alloca ptr, align 8
  %th.addr = alloca ptr, align 8
  store ptr %tw, ptr %tw.addr, align 8
  store ptr %th, ptr %th.addr, align 8
  %0 = load i64, ptr %tw, align 8
  %cmp = icmp slt i64 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tw.addr, align 8
  store i64 256, ptr %1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %th.addr, align 8
  %3 = load i64, ptr %2, align 8
  %cmp1 = icmp slt i64 %3, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %th.addr, align 8
  store i64 256, ptr %4, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load ptr, ptr %tw.addr, align 8
  %6 = load i64, ptr %5, align 8
  %and = and i64 %6, 15
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end3
  %7 = load ptr, ptr %tw.addr, align 8
  %8 = load i64, ptr %7, align 8
  %add = add i64 %8, 15
  %div2 = and i64 %add, -16
  store i64 %div2, ptr %7, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end3
  %9 = load ptr, ptr %th.addr, align 8
  %10 = load i64, ptr %9, align 8
  %and6 = and i64 %10, 15
  %tobool7.not = icmp eq i64 %and6, 0
  br i1 %tobool7.not, label %if.end12, label %if.then8

if.then8:                                         ; preds = %if.end5
  %11 = load ptr, ptr %th.addr, align 8
  %12 = load i64, ptr %11, align 8
  %add9 = add i64 %12, 15
  %div101 = and i64 %add9, -16
  store i64 %div101, ptr %11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end5
  ret void
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
