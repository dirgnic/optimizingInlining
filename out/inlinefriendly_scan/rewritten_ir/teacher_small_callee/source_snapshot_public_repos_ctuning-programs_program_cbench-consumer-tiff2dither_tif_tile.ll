; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_small_callee/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-tiff2dither_tif_tile.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2dither/tif_tile.c"
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
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %z, ptr %z.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 4
  %0 = load i32, ptr %td_tilewidth, align 4
  store i32 %0, ptr %dx, align 4
  %td_tilelength = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 5
  %1 = load i32, ptr %td_tilelength, align 8
  store i32 %1, ptr %dy, align 4
  %2 = load ptr, ptr %td, align 8
  %td_tiledepth = getelementptr inbounds %struct.TIFFDirectory, ptr %2, i64 0, i32 6
  %3 = load i32, ptr %td_tiledepth, align 4
  store i32 %3, ptr %dz, align 4
  store i32 1, ptr %tile, align 4
  %td_imagedepth = getelementptr inbounds %struct.TIFFDirectory, ptr %2, i64 0, i32 3
  %4 = load i32, ptr %td_imagedepth, align 8
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %z.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %dx, align 4
  %cmp1 = icmp eq i32 %5, -1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i64 0, i32 1
  %7 = load i32, ptr %td_imagewidth, align 8
  store i32 %7, ptr %dx, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %8 = load i32, ptr %dy, align 4
  %cmp4 = icmp eq i32 %8, -1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %9 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %9, i64 0, i32 2
  %10 = load i32, ptr %td_imagelength, align 4
  store i32 %10, ptr %dy, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %11 = load i32, ptr %dz, align 4
  %cmp7 = icmp eq i32 %11, -1
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %12 = load ptr, ptr %td, align 8
  %td_imagedepth9 = getelementptr inbounds %struct.TIFFDirectory, ptr %12, i64 0, i32 3
  %13 = load i32, ptr %td_imagedepth9, align 8
  store i32 %13, ptr %dz, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6
  %14 = load i32, ptr %dx, align 4
  %cmp11.not = icmp eq i32 %14, 0
  %15 = load i32, ptr %dy, align 4
  %cmp12.not = icmp eq i32 %15, 0
  %or.cond = select i1 %cmp11.not, i1 true, i1 %cmp12.not
  %16 = load i32, ptr %dz, align 4
  %cmp14.not = icmp eq i32 %16, 0
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp14.not
  br i1 %or.cond1, label %if.end51, label %if.then15

if.then15:                                        ; preds = %if.end10
  %17 = load ptr, ptr %td, align 8
  %td_imagewidth16 = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i64 0, i32 1
  %18 = load i32, ptr %td_imagewidth16, align 8
  %19 = load i32, ptr %dx, align 4
  %sub = add i32 %19, -1
  %add = add i32 %18, %sub
  %div = udiv i32 %add, %19
  store i32 %div, ptr %xpt, align 4
  %20 = load ptr, ptr %td, align 8
  %td_imagelength17 = getelementptr inbounds %struct.TIFFDirectory, ptr %20, i64 0, i32 2
  %21 = load i32, ptr %td_imagelength17, align 4
  %22 = load i32, ptr %dy, align 4
  %sub18 = add i32 %22, -1
  %add19 = add i32 %21, %sub18
  %div20 = udiv i32 %add19, %22
  store i32 %div20, ptr %ypt, align 4
  %23 = load ptr, ptr %td, align 8
  %td_imagedepth21 = getelementptr inbounds %struct.TIFFDirectory, ptr %23, i64 0, i32 3
  %24 = load i32, ptr %td_imagedepth21, align 8
  %25 = load i32, ptr %dz, align 4
  %sub22 = add i32 %25, -1
  %add23 = add i32 %24, %sub22
  %div24 = udiv i32 %add23, %25
  store i32 %div24, ptr %zpt, align 4
  %26 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %26, i64 0, i32 24
  %27 = load i16, ptr %td_planarconfig, align 2
  %cmp25 = icmp eq i16 %27, 2
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.then15
  %28 = load i32, ptr %xpt, align 4
  %29 = load i32, ptr %ypt, align 4
  %mul = mul i32 %28, %29
  %30 = load i32, ptr %zpt, align 4
  %mul28 = mul i32 %mul, %30
  %31 = load i16, ptr %s.addr, align 2
  %conv29 = zext i16 %31 to i32
  %mul30 = mul i32 %mul28, %conv29
  %32 = load i32, ptr %xpt, align 4
  %33 = load i32, ptr %ypt, align 4
  %mul31 = mul i32 %32, %33
  %34 = load i32, ptr %z.addr, align 4
  %35 = load i32, ptr %dz, align 4
  %div32 = udiv i32 %34, %35
  %mul33 = mul i32 %mul31, %div32
  %add34 = add i32 %mul30, %mul33
  %36 = load i32, ptr %xpt, align 4
  %37 = load i32, ptr %y.addr, align 4
  %38 = load i32, ptr %dy, align 4
  %div35 = udiv i32 %37, %38
  %mul36 = mul i32 %36, %div35
  %add37 = add i32 %add34, %mul36
  %39 = load i32, ptr %x.addr, align 4
  %40 = load i32, ptr %dx, align 4
  %div38 = udiv i32 %39, %40
  %add39 = add i32 %add37, %div38
  br label %if.end50

if.else:                                          ; preds = %if.then15
  %41 = load i32, ptr %xpt, align 4
  %42 = load i32, ptr %ypt, align 4
  %mul40 = mul i32 %41, %42
  %43 = load i32, ptr %z.addr, align 4
  %44 = load i32, ptr %dz, align 4
  %div41 = udiv i32 %43, %44
  %mul42 = mul i32 %mul40, %div41
  %45 = load i32, ptr %xpt, align 4
  %46 = load i32, ptr %y.addr, align 4
  %47 = load i32, ptr %dy, align 4
  %div43 = udiv i32 %46, %47
  %mul44 = mul i32 %45, %div43
  %add45 = add i32 %mul42, %mul44
  %48 = load i32, ptr %x.addr, align 4
  %49 = load i32, ptr %dx, align 4
  %div46 = udiv i32 %48, %49
  %add47 = add i32 %add45, %div46
  %50 = load i16, ptr %s.addr, align 2
  %conv48 = zext i16 %50 to i32
  %add49 = add i32 %add47, %conv48
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then27
  %storemerge = phi i32 [ %add49, %if.else ], [ %add39, %if.then27 ]
  store i32 %storemerge, ptr %tile, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end10
  %51 = load i32, ptr %tile, align 4
  ret i32 %51
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
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 1
  %0 = load i32, ptr %td_imagewidth, align 8
  %cmp.not = icmp ugt i32 %0, %x
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %3 = load i32, ptr %x.addr, align 4
  %conv = zext i32 %3 to i64
  %4 = load ptr, ptr %td, align 8
  %td_imagewidth1 = getelementptr inbounds %struct.TIFFDirectory, ptr %4, i64 0, i32 1
  %5 = load i32, ptr %td_imagewidth1, align 8
  %conv2 = zext i32 %5 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %2, ptr noundef nonnull @.str, i64 noundef %conv, i64 noundef %conv2) #2
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, ptr %y.addr, align 4
  %7 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i64 0, i32 2
  %8 = load i32, ptr %td_imagelength, align 4
  %cmp3.not = icmp ult i32 %6, %8
  br i1 %cmp3.not, label %if.end10, label %if.then5

if.then5:                                         ; preds = %if.end
  %9 = load ptr, ptr %tif.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = load i32, ptr %y.addr, align 4
  %conv7 = zext i32 %11 to i64
  %12 = load ptr, ptr %td, align 8
  %td_imagelength8 = getelementptr inbounds %struct.TIFFDirectory, ptr %12, i64 0, i32 2
  %13 = load i32, ptr %td_imagelength8, align 4
  %conv9 = zext i32 %13 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %10, ptr noundef nonnull @.str.1, i64 noundef %conv7, i64 noundef %conv9) #2
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %14 = load i32, ptr %z.addr, align 4
  %15 = load ptr, ptr %td, align 8
  %td_imagedepth = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i64 0, i32 3
  %16 = load i32, ptr %td_imagedepth, align 8
  %cmp11.not = icmp ult i32 %14, %16
  br i1 %cmp11.not, label %if.end18, label %if.then13

if.then13:                                        ; preds = %if.end10
  %17 = load ptr, ptr %tif.addr, align 8
  %18 = load ptr, ptr %17, align 8
  %19 = load i32, ptr %z.addr, align 4
  %conv15 = zext i32 %19 to i64
  %20 = load ptr, ptr %td, align 8
  %td_imagedepth16 = getelementptr inbounds %struct.TIFFDirectory, ptr %20, i64 0, i32 3
  %21 = load i32, ptr %td_imagedepth16, align 8
  %conv17 = zext i32 %21 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %18, ptr noundef nonnull @.str.2, i64 noundef %conv15, i64 noundef %conv17) #2
  store i32 0, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end10
  %22 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i64 0, i32 24
  %23 = load i16, ptr %td_planarconfig, align 2
  %cmp20 = icmp eq i16 %23, 2
  br i1 %cmp20, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %if.end18
  %24 = load i16, ptr %s.addr, align 2
  %25 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i64 0, i32 15
  %26 = load i16, ptr %td_samplesperpixel, align 2
  %cmp24.not = icmp ult i16 %24, %26
  br i1 %cmp24.not, label %if.end31, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  %27 = load ptr, ptr %tif.addr, align 8
  %28 = load ptr, ptr %27, align 8
  %29 = load i16, ptr %s.addr, align 2
  %conv28 = zext i16 %29 to i32
  %30 = load ptr, ptr %td, align 8
  %td_samplesperpixel29 = getelementptr inbounds %struct.TIFFDirectory, ptr %30, i64 0, i32 15
  %31 = load i16, ptr %td_samplesperpixel29, align 2
  %conv30 = zext i16 %31 to i32
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %28, ptr noundef nonnull @.str.3, i32 noundef %conv28, i32 noundef %conv30) #2
  store i32 0, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %land.lhs.true, %if.end18
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.then26, %if.then13, %if.then5, %if.then
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFNumberOfTiles(ptr noundef %tif) #0 {
entry:
  %td = alloca ptr, align 8
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %dz = alloca i32, align 4
  %ntiles = alloca i32, align 4
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 4
  %0 = load i32, ptr %td_tilewidth, align 4
  store i32 %0, ptr %dx, align 4
  %td_tilelength = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 5
  %1 = load i32, ptr %td_tilelength, align 8
  store i32 %1, ptr %dy, align 4
  %2 = load ptr, ptr %td, align 8
  %td_tiledepth = getelementptr inbounds %struct.TIFFDirectory, ptr %2, i64 0, i32 6
  %3 = load i32, ptr %td_tiledepth, align 4
  store i32 %3, ptr %dz, align 4
  %4 = load i32, ptr %dx, align 4
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i64 0, i32 1
  %6 = load i32, ptr %td_imagewidth, align 8
  store i32 %6, ptr %dx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr %dy, align 4
  %cmp1 = icmp eq i32 %7, -1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i64 0, i32 2
  %9 = load i32, ptr %td_imagelength, align 4
  store i32 %9, ptr %dy, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %10 = load i32, ptr %dz, align 4
  %cmp4 = icmp eq i32 %10, -1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %11 = load ptr, ptr %td, align 8
  %td_imagedepth = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i64 0, i32 3
  %12 = load i32, ptr %td_imagedepth, align 8
  store i32 %12, ptr %dz, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %13 = load i32, ptr %dx, align 4
  %cmp7 = icmp eq i32 %13, 0
  %14 = load i32, ptr %dy, align 4
  %cmp8 = icmp eq i32 %14, 0
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp8
  %15 = load i32, ptr %dz, align 4
  %cmp10 = icmp eq i32 %15, 0
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp10
  br i1 %or.cond1, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end6
  %16 = load ptr, ptr %td, align 8
  %td_imagewidth11 = getelementptr inbounds %struct.TIFFDirectory, ptr %16, i64 0, i32 1
  %17 = load i32, ptr %td_imagewidth11, align 8
  %18 = load i32, ptr %dx, align 4
  %sub = add i32 %18, -1
  %add = add i32 %17, %sub
  %div = udiv i32 %add, %18
  %19 = load ptr, ptr %td, align 8
  %td_imagelength12 = getelementptr inbounds %struct.TIFFDirectory, ptr %19, i64 0, i32 2
  %20 = load i32, ptr %td_imagelength12, align 4
  %21 = load i32, ptr %dy, align 4
  %sub13 = add i32 %21, -1
  %add14 = add i32 %20, %sub13
  %div15 = udiv i32 %add14, %21
  %mul = mul i32 %div, %div15
  %22 = load ptr, ptr %td, align 8
  %td_imagedepth16 = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i64 0, i32 3
  %23 = load i32, ptr %td_imagedepth16, align 8
  %24 = load i32, ptr %dz, align 4
  %sub17 = add i32 %24, -1
  %add18 = add i32 %23, %sub17
  %div19 = udiv i32 %add18, %24
  %mul20 = mul i32 %mul, %div19
  br label %cond.end

cond.end:                                         ; preds = %if.end6, %cond.false
  %cond = phi i32 [ %mul20, %cond.false ], [ 0, %if.end6 ]
  store i32 %cond, ptr %ntiles, align 4
  %25 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i64 0, i32 24
  %26 = load i16, ptr %td_planarconfig, align 2
  %cmp21 = icmp eq i16 %26, 2
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %cond.end
  %27 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %27, i64 0, i32 15
  %28 = load i16, ptr %td_samplesperpixel, align 2
  %conv24 = zext i16 %28 to i32
  %29 = load i32, ptr %ntiles, align 4
  %mul25 = mul i32 %29, %conv24
  store i32 %mul25, ptr %ntiles, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %cond.end
  %30 = load i32, ptr %ntiles, align 4
  ret i32 %30
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFTileRowSize(ptr noundef %tif) #0 {
entry:
  %td = alloca ptr, align 8
  %rowsize = alloca i32, align 4
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_tilelength = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 5
  %0 = load i32, ptr %td_tilelength, align 8
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i64 0, i32 4
  %2 = load i32, ptr %td_tilewidth, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i64 0, i32 8
  %4 = load i16, ptr %td_bitspersample, align 4
  %conv = zext i16 %4 to i32
  %td_tilewidth2 = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %td_tilewidth2, align 4
  %mul = mul i32 %5, %conv
  store i32 %mul, ptr %rowsize, align 4
  %6 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i64 0, i32 24
  %7 = load i16, ptr %td_planarconfig, align 2
  %cmp4 = icmp eq i16 %7, 1
  br i1 %cmp4, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %8 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i64 0, i32 15
  %9 = load i16, ptr %td_samplesperpixel, align 2
  %conv7 = zext i16 %9 to i32
  %10 = load i32, ptr %rowsize, align 4
  %mul8 = mul nsw i32 %10, %conv7
  store i32 %mul8, ptr %rowsize, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  %11 = load i32, ptr %rowsize, align 4
  %add = add i32 %11, 7
  %div1 = lshr i32 %add, 3
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end9
  %storemerge = phi i32 [ %div1, %if.end9 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFVTileSize(ptr noundef %tif, i32 noundef %nrows) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %nrows.addr = alloca i32, align 4
  %td = alloca ptr, align 8
  %rowsize = alloca i32, align 4
  %samplingarea = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %nrows, ptr %nrows.addr, align 4
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_tilelength = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 5
  %0 = load i32, ptr %td_tilelength, align 8
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i64 0, i32 4
  %2 = load i32, ptr %td_tilewidth, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %return, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %td, align 8
  %td_tiledepth = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i64 0, i32 6
  %4 = load i32, ptr %td_tiledepth, align 4
  %cmp3 = icmp eq i32 %4, 0
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
  %10 = load i32, ptr %tif_flags, align 8
  %and = and i32 %10, 16384
  %cmp10.not = icmp eq i32 %and, 0
  br i1 %cmp10.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %land.lhs.true9
  %11 = load ptr, ptr %td, align 8
  %td_tilewidth13 = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i64 0, i32 4
  %12 = load i32, ptr %td_tilewidth13, align 4
  %td_ycbcrsubsampling = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i64 0, i32 49
  %13 = load i16, ptr %td_ycbcrsubsampling, align 8
  %conv14 = zext i16 %13 to i32
  %sub = add nsw i32 %conv14, -1
  %add = add i32 %12, %sub
  %14 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling15 = getelementptr inbounds %struct.TIFFDirectory, ptr %14, i64 0, i32 49
  %15 = load i16, ptr %td_ycbcrsubsampling15, align 8
  %conv17 = zext i16 %15 to i32
  %div = udiv i32 %add, %conv17
  %conv20 = zext i16 %15 to i32
  %mul = mul i32 %div, %conv20
  %16 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %16, i64 0, i32 8
  %17 = load i16, ptr %td_bitspersample, align 4
  %conv21 = zext i16 %17 to i32
  %mul22 = mul nsw i32 %mul, %conv21
  %add23 = add i32 %mul22, 7
  %div242 = lshr i32 %add23, 3
  store i32 %div242, ptr %rowsize, align 4
  %18 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling25 = getelementptr inbounds %struct.TIFFDirectory, ptr %18, i64 0, i32 49
  %19 = load i16, ptr %td_ycbcrsubsampling25, align 8
  %conv27 = zext i16 %19 to i32
  %arrayidx29 = getelementptr inbounds %struct.TIFFDirectory, ptr %18, i64 0, i32 49, i64 1
  %20 = load i16, ptr %arrayidx29, align 2
  %conv30 = zext i16 %20 to i32
  %mul31 = mul nuw nsw i32 %conv27, %conv30
  store i32 %mul31, ptr %samplingarea, align 4
  %21 = load i32, ptr %nrows.addr, align 4
  %22 = load ptr, ptr %td, align 8
  %arrayidx33 = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i64 0, i32 49, i64 1
  %23 = load i16, ptr %arrayidx33, align 2
  %conv34 = zext i16 %23 to i32
  %sub35 = add nsw i32 %conv34, -1
  %add36 = add i32 %21, %sub35
  %conv39 = zext i16 %23 to i32
  %div40 = udiv i32 %add36, %conv39
  %24 = load ptr, ptr %td, align 8
  %arrayidx42 = getelementptr inbounds %struct.TIFFDirectory, ptr %24, i64 0, i32 49, i64 1
  %25 = load i16, ptr %arrayidx42, align 2
  %conv43 = zext i16 %25 to i32
  %mul44 = mul i32 %div40, %conv43
  store i32 %mul44, ptr %nrows.addr, align 4
  %26 = load i32, ptr %rowsize, align 4
  %mul45 = mul i32 %mul44, %26
  %mul46 = mul i32 %mul44, %26
  %27 = load i32, ptr %samplingarea, align 4
  %div47 = udiv i32 %mul46, %27
  %mul48 = shl i32 %div47, 1
  %add49 = add i32 %mul45, %mul48
  br label %if.end51

if.else:                                          ; preds = %land.lhs.true9, %land.lhs.true, %if.end
  %28 = load i32, ptr %nrows.addr, align 4
  %29 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFTileRowSize(ptr noundef %29)
  %mul50 = mul i32 %28, %call
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then12
  %storemerge = phi i32 [ %mul50, %if.else ], [ %add49, %if.then12 ]
  %30 = load ptr, ptr %td, align 8
  %td_tiledepth52 = getelementptr inbounds %struct.TIFFDirectory, ptr %30, i64 0, i32 6
  %31 = load i32, ptr %td_tiledepth52, align 4
  %mul53 = mul i32 %storemerge, %31
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %lor.lhs.false2, %if.end51
  %storemerge1 = phi i32 [ %mul53, %if.end51 ], [ 0, %lor.lhs.false2 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %storemerge1
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFTileSize(ptr noundef %tif) #0 {
entry:
  %td_tilelength = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 5
  %0 = load i32, ptr %td_tilelength, align 8
  %call = call i32 @TIFFVTileSize(ptr noundef %tif, i32 noundef %0)
  ret i32 %call
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
  %0 = load i32, ptr %tw, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tw.addr, align 8
  store i32 256, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %th.addr, align 8
  %3 = load i32, ptr %2, align 4
  %cmp1 = icmp slt i32 %3, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %th.addr, align 8
  store i32 256, ptr %4, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load ptr, ptr %tw.addr, align 8
  %6 = load i32, ptr %5, align 4
  %and = and i32 %6, 15
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end3
  %7 = load ptr, ptr %tw.addr, align 8
  %8 = load i32, ptr %7, align 4
  %add = add i32 %8, 15
  %div2 = and i32 %add, -16
  store i32 %div2, ptr %7, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end3
  %9 = load ptr, ptr %th.addr, align 8
  %10 = load i32, ptr %9, align 4
  %and6 = and i32 %10, 15
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end12, label %if.then8

if.then8:                                         ; preds = %if.end5
  %11 = load ptr, ptr %th.addr, align 8
  %12 = load i32, ptr %11, align 4
  %add9 = add i32 %12, 15
  %div101 = and i32 %add9, -16
  store i32 %div101, ptr %11, align 4
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
