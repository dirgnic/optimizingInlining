; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_llvm_like_size/source_snapshot_public_repos_mibench_consumer_tiff-v3.5.4_libtiff_tif_getimage.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_getimage.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i64, i64, i64, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i64, i16, i64, i64, i64, i16, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, ptr, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i64, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i64, ptr, i64, ptr, i64, ptr, i64, i64, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i64 }
%struct._TIFFRGBAImage = type { ptr, i32, i32, i32, i64, i64, i16, i16, i16, i16, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { ptr }
%struct.TIFFYCbCrToRGB = type { ptr, ptr, ptr, ptr, ptr, [3 x float] }

@.str = private unnamed_addr constant [49 x i8] c"Sorry, can not handle images with %d-bit samples\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Missing needed %s tag\00", align 1
@photoTag = internal constant [26 x i8] c"PhotometricInterpretation\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Sorry, can not handle contiguous data with %s=%d, and %s=%d\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Samples/pixel\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Sorry, can not handle YCbCr images with %s=%d\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Planarconfiguration\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Sorry, can not handle RGB image with %s=%d\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Color channels\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"Sorry, can not handle separated image with %s=%d\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"InkSet\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Sorry, LogL data must have %s=%d\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Compression\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Sorry, LogLuv data must have %s=%d or %d\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"Sorry, can not handle LogLuv images with %s=%d\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"Sorry, can not handle image with %s=%d\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"Sorry, can not image with %d-bit samples\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Missing required \22Colormap\22 tag\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Out of memory for colormap copy\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"No \22get\22 routine setup\00", align 1
@.str.19 = private unnamed_addr constant [62 x i8] c"No \22put\22 routine setupl; probably can not handle image format\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"Can't use TIFFReadRGBAStrip() with tiled file.\00", align 1
@.str.21 = private unnamed_addr constant [60 x i8] c"Row passed to TIFFReadRGBAStrip() must be first in a strip.\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"Can't use TIFFReadRGBATile() with stripped file.\00", align 1
@.str.23 = private unnamed_addr constant [71 x i8] c"Row/col passed to TIFFReadRGBATile() must be topleft corner of a tile.\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"No space for tile buffer\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"using bottom-left orientation\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"using top-left orientation\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"No space for strip buffer\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"Assuming 8-bit colormap\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"No space for photometric conversion table\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"No space for B&W mapping table\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"No space for Palette mapping table\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"No space for YCbCr->RGB conversion state\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFRGBAImageOK(ptr noundef %tif, ptr noundef %emsg) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %emsg.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %photometric = alloca i16, align 2
  %colorchannels = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %emsg, ptr %emsg.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 8
  %0 = load i16, ptr %td_bitspersample, align 8
  switch i16 %0, label %sw.default [
    i16 1, label %sw.epilog
    i16 2, label %sw.epilog
    i16 4, label %sw.epilog
    i16 8, label %sw.epilog
    i16 16, label %sw.epilog
  ]

sw.default:                                       ; preds = %entry
  %1 = load ptr, ptr %emsg.addr, align 8
  %2 = call i64 @llvm.objectsize.i64.p0(ptr %1, i1 false, i1 true, i1 false)
  %3 = load ptr, ptr %td, align 8
  %td_bitspersample1 = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i64 0, i32 8
  %4 = load i16, ptr %td_bitspersample1, align 8
  %conv2 = zext i16 %4 to i32
  %call = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %1, i32 noundef 0, i64 noundef %2, ptr noundef nonnull @.str, i32 noundef %conv2) #4
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %entry, %entry, %entry, %entry, %entry
  %5 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i64 0, i32 15
  %6 = load i16, ptr %td_samplesperpixel, align 2
  %conv3 = zext i16 %6 to i32
  %td_extrasamples = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i64 0, i32 30
  %7 = load i16, ptr %td_extrasamples, align 4
  %conv4 = zext i16 %7 to i32
  %sub = sub nsw i32 %conv3, %conv4
  store i32 %sub, ptr %colorchannels, align 4
  %8 = load ptr, ptr %tif.addr, align 8
  %call5 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %8, i64 noundef 262, ptr noundef nonnull %photometric) #4
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %9 = load i32, ptr %colorchannels, align 4
  switch i32 %9, label %sw.default8 [
    i32 1, label %sw.epilog10
    i32 3, label %sw.bb7
  ]

sw.bb7:                                           ; preds = %if.then
  br label %sw.epilog10

sw.default8:                                      ; preds = %if.then
  %10 = load ptr, ptr %emsg.addr, align 8
  %11 = call i64 @llvm.objectsize.i64.p0(ptr %10, i1 false, i1 true, i1 false)
  %call9 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %10, i32 noundef 0, i64 noundef %11, ptr noundef nonnull @.str.1, ptr noundef nonnull @photoTag) #4
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog10:                                      ; preds = %if.then, %sw.bb7
  %storemerge = phi i16 [ 2, %sw.bb7 ], [ 1, %if.then ]
  store i16 %storemerge, ptr %photometric, align 2
  br label %if.end

if.end:                                           ; preds = %sw.epilog10, %sw.epilog
  %12 = load i16, ptr %photometric, align 2
  switch i16 %12, label %sw.default88 [
    i16 0, label %sw.bb12
    i16 1, label %sw.bb12
    i16 3, label %sw.bb12
    i16 6, label %sw.bb25
    i16 2, label %sw.bb35
    i16 5, label %sw.bb41
    i16 -32692, label %sw.bb59
    i16 -32691, label %sw.bb66
  ]

sw.bb12:                                          ; preds = %if.end, %if.end, %if.end
  %13 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i64 0, i32 24
  %14 = load i16, ptr %td_planarconfig, align 2
  %cmp = icmp eq i16 %14, 1
  br i1 %cmp, label %land.lhs.true, label %sw.epilog91

land.lhs.true:                                    ; preds = %sw.bb12
  %15 = load ptr, ptr %td, align 8
  %td_samplesperpixel15 = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i64 0, i32 15
  %16 = load i16, ptr %td_samplesperpixel15, align 2
  %cmp17.not = icmp eq i16 %16, 1
  br i1 %cmp17.not, label %sw.epilog91, label %if.then19

if.then19:                                        ; preds = %land.lhs.true
  %17 = load ptr, ptr %emsg.addr, align 8
  %18 = call i64 @llvm.objectsize.i64.p0(ptr %17, i1 false, i1 true, i1 false)
  %19 = load i16, ptr %photometric, align 2
  %conv20 = zext i16 %19 to i32
  %20 = load ptr, ptr %td, align 8
  %td_samplesperpixel21 = getelementptr inbounds %struct.TIFFDirectory, ptr %20, i64 0, i32 15
  %21 = load i16, ptr %td_samplesperpixel21, align 2
  %conv22 = zext i16 %21 to i32
  %call23 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %17, i32 noundef 0, i64 noundef %18, ptr noundef nonnull @.str.2, ptr noundef nonnull @photoTag, i32 noundef %conv20, ptr noundef nonnull @.str.3, i32 noundef %conv22) #4
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb25:                                          ; preds = %if.end
  %22 = load ptr, ptr %td, align 8
  %td_planarconfig26 = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i64 0, i32 24
  %23 = load i16, ptr %td_planarconfig26, align 2
  %cmp28.not = icmp eq i16 %23, 1
  br i1 %cmp28.not, label %sw.epilog91, label %if.then30

if.then30:                                        ; preds = %sw.bb25
  %24 = load ptr, ptr %emsg.addr, align 8
  %25 = call i64 @llvm.objectsize.i64.p0(ptr %24, i1 false, i1 true, i1 false)
  %26 = load ptr, ptr %td, align 8
  %td_planarconfig31 = getelementptr inbounds %struct.TIFFDirectory, ptr %26, i64 0, i32 24
  %27 = load i16, ptr %td_planarconfig31, align 2
  %conv32 = zext i16 %27 to i32
  %call33 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %24, i32 noundef 0, i64 noundef %25, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %conv32) #4
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb35:                                          ; preds = %if.end
  %28 = load i32, ptr %colorchannels, align 4
  %cmp36 = icmp slt i32 %28, 3
  br i1 %cmp36, label %if.then38, label %sw.epilog91

if.then38:                                        ; preds = %sw.bb35
  %29 = load ptr, ptr %emsg.addr, align 8
  %30 = call i64 @llvm.objectsize.i64.p0(ptr %29, i1 false, i1 true, i1 false)
  %31 = load i32, ptr %colorchannels, align 4
  %call39 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %29, i32 noundef 0, i64 noundef %30, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %31) #4
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb41:                                          ; preds = %if.end
  %32 = load ptr, ptr %td, align 8
  %td_inkset = getelementptr inbounds %struct.TIFFDirectory, ptr %32, i64 0, i32 55
  %33 = load i16, ptr %td_inkset, align 8
  %cmp43.not = icmp eq i16 %33, 1
  br i1 %cmp43.not, label %if.end49, label %if.then45

if.then45:                                        ; preds = %sw.bb41
  %34 = load ptr, ptr %emsg.addr, align 8
  %35 = call i64 @llvm.objectsize.i64.p0(ptr %34, i1 false, i1 true, i1 false)
  %36 = load ptr, ptr %td, align 8
  %td_inkset46 = getelementptr inbounds %struct.TIFFDirectory, ptr %36, i64 0, i32 55
  %37 = load i16, ptr %td_inkset46, align 8
  %conv47 = zext i16 %37 to i32
  %call48 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %34, i32 noundef 0, i64 noundef %35, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv47) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end49:                                         ; preds = %sw.bb41
  %38 = load ptr, ptr %td, align 8
  %td_samplesperpixel50 = getelementptr inbounds %struct.TIFFDirectory, ptr %38, i64 0, i32 15
  %39 = load i16, ptr %td_samplesperpixel50, align 2
  %cmp52.not = icmp eq i16 %39, 4
  br i1 %cmp52.not, label %sw.epilog91, label %if.then54

if.then54:                                        ; preds = %if.end49
  %40 = load ptr, ptr %emsg.addr, align 8
  %41 = call i64 @llvm.objectsize.i64.p0(ptr %40, i1 false, i1 true, i1 false)
  %42 = load ptr, ptr %td, align 8
  %td_samplesperpixel55 = getelementptr inbounds %struct.TIFFDirectory, ptr %42, i64 0, i32 15
  %43 = load i16, ptr %td_samplesperpixel55, align 2
  %conv56 = zext i16 %43 to i32
  %call57 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %40, i32 noundef 0, i64 noundef %41, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef %conv56) #4
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb59:                                          ; preds = %if.end
  %44 = load ptr, ptr %td, align 8
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %44, i64 0, i32 10
  %45 = load i16, ptr %td_compression, align 4
  %cmp61.not = icmp eq i16 %45, -30860
  br i1 %cmp61.not, label %sw.epilog91, label %if.then63

if.then63:                                        ; preds = %sw.bb59
  %46 = load ptr, ptr %emsg.addr, align 8
  %47 = call i64 @llvm.objectsize.i64.p0(ptr %46, i1 false, i1 true, i1 false)
  %call64 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %46, i32 noundef 0, i64 noundef %47, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 34676) #4
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb66:                                          ; preds = %if.end
  %48 = load ptr, ptr %td, align 8
  %td_compression67 = getelementptr inbounds %struct.TIFFDirectory, ptr %48, i64 0, i32 10
  %49 = load i16, ptr %td_compression67, align 4
  %cmp69.not = icmp eq i16 %49, -30860
  br i1 %cmp69.not, label %if.end78, label %land.lhs.true71

land.lhs.true71:                                  ; preds = %sw.bb66
  %50 = load ptr, ptr %td, align 8
  %td_compression72 = getelementptr inbounds %struct.TIFFDirectory, ptr %50, i64 0, i32 10
  %51 = load i16, ptr %td_compression72, align 4
  %cmp74.not = icmp eq i16 %51, -30859
  br i1 %cmp74.not, label %if.end78, label %if.then76

if.then76:                                        ; preds = %land.lhs.true71
  %52 = load ptr, ptr %emsg.addr, align 8
  %53 = call i64 @llvm.objectsize.i64.p0(ptr %52, i1 false, i1 true, i1 false)
  %call77 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %52, i32 noundef 0, i64 noundef %53, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef 34676, i32 noundef 34677) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end78:                                         ; preds = %land.lhs.true71, %sw.bb66
  %54 = load ptr, ptr %td, align 8
  %td_planarconfig79 = getelementptr inbounds %struct.TIFFDirectory, ptr %54, i64 0, i32 24
  %55 = load i16, ptr %td_planarconfig79, align 2
  %cmp81.not = icmp eq i16 %55, 1
  br i1 %cmp81.not, label %sw.epilog91, label %if.then83

if.then83:                                        ; preds = %if.end78
  %56 = load ptr, ptr %emsg.addr, align 8
  %57 = call i64 @llvm.objectsize.i64.p0(ptr %56, i1 false, i1 true, i1 false)
  %58 = load ptr, ptr %td, align 8
  %td_planarconfig84 = getelementptr inbounds %struct.TIFFDirectory, ptr %58, i64 0, i32 24
  %59 = load i16, ptr %td_planarconfig84, align 2
  %conv85 = zext i16 %59 to i32
  %call86 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %56, i32 noundef 0, i64 noundef %57, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5, i32 noundef %conv85) #4
  store i32 0, ptr %retval, align 4
  br label %return

sw.default88:                                     ; preds = %if.end
  %60 = load ptr, ptr %emsg.addr, align 8
  %61 = call i64 @llvm.objectsize.i64.p0(ptr %60, i1 false, i1 true, i1 false)
  %62 = load i16, ptr %photometric, align 2
  %conv89 = zext i16 %62 to i32
  %call90 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %60, i32 noundef 0, i64 noundef %61, ptr noundef nonnull @.str.14, ptr noundef nonnull @photoTag, i32 noundef %conv89) #4
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog91:                                      ; preds = %if.end78, %sw.bb59, %if.end49, %sw.bb35, %sw.bb25, %sw.bb12, %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog91, %sw.default88, %if.then83, %if.then76, %if.then63, %if.then54, %if.then45, %if.then38, %if.then30, %if.then19, %sw.default8, %sw.default
  %63 = load i32, ptr %retval, align 4
  ret i32 %63
}

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #2

declare i32 @TIFFGetField(ptr noundef, i64 noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define void @TIFFRGBAImageEnd(ptr noundef %img) #0 {
entry:
  %img.addr = alloca ptr, align 8
  store ptr %img, ptr %img.addr, align 8
  %Map = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 15
  %0 = load ptr, ptr %Map, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %img.addr, align 8
  %Map1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %1, i64 0, i32 15
  %2 = load ptr, ptr %Map1, align 8
  call void @_TIFFfree(ptr noundef %2) #4
  %Map2 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %1, i64 0, i32 15
  store ptr null, ptr %Map2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %img.addr, align 8
  %BWmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %3, i64 0, i32 16
  %4 = load ptr, ptr %BWmap, align 8
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %img.addr, align 8
  %BWmap5 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %5, i64 0, i32 16
  %6 = load ptr, ptr %BWmap5, align 8
  call void @_TIFFfree(ptr noundef %6) #4
  %BWmap6 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %5, i64 0, i32 16
  store ptr null, ptr %BWmap6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %7 = load ptr, ptr %img.addr, align 8
  %PALmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %7, i64 0, i32 17
  %8 = load ptr, ptr %PALmap, align 8
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end7
  %9 = load ptr, ptr %img.addr, align 8
  %PALmap10 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %9, i64 0, i32 17
  %10 = load ptr, ptr %PALmap10, align 8
  call void @_TIFFfree(ptr noundef %10) #4
  %PALmap11 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %9, i64 0, i32 17
  store ptr null, ptr %PALmap11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7
  %11 = load ptr, ptr %img.addr, align 8
  %ycbcr = getelementptr inbounds %struct._TIFFRGBAImage, ptr %11, i64 0, i32 18
  %12 = load ptr, ptr %ycbcr, align 8
  %tobool13.not = icmp eq ptr %12, null
  br i1 %tobool13.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end12
  %13 = load ptr, ptr %img.addr, align 8
  %ycbcr15 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %13, i64 0, i32 18
  %14 = load ptr, ptr %ycbcr15, align 8
  call void @_TIFFfree(ptr noundef %14) #4
  %ycbcr16 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %13, i64 0, i32 18
  store ptr null, ptr %ycbcr16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12
  %15 = load ptr, ptr %img.addr, align 8
  %redcmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %15, i64 0, i32 10
  %16 = load ptr, ptr %redcmap, align 8
  %tobool18.not = icmp eq ptr %16, null
  br i1 %tobool18.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end17
  %17 = load ptr, ptr %img.addr, align 8
  %redcmap20 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %17, i64 0, i32 10
  %18 = load ptr, ptr %redcmap20, align 8
  call void @_TIFFfree(ptr noundef %18) #4
  %greencmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %17, i64 0, i32 11
  %19 = load ptr, ptr %greencmap, align 8
  call void @_TIFFfree(ptr noundef %19) #4
  %20 = load ptr, ptr %img.addr, align 8
  %bluecmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %20, i64 0, i32 12
  %21 = load ptr, ptr %bluecmap, align 8
  call void @_TIFFfree(ptr noundef %21) #4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17
  ret void
}

declare void @_TIFFfree(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFRGBAImageBegin(ptr noundef %img, ptr noundef %tif, i32 noundef %stop, ptr noundef %emsg) #0 {
entry:
  %retval = alloca i32, align 4
  %img.addr = alloca ptr, align 8
  %tif.addr = alloca ptr, align 8
  %stop.addr = alloca i32, align 4
  %emsg.addr = alloca ptr, align 8
  %sampleinfo = alloca ptr, align 8
  %extrasamples = alloca i16, align 2
  %planarconfig = alloca i16, align 2
  %compress = alloca i16, align 2
  %colorchannels = alloca i32, align 4
  %red_orig = alloca ptr, align 8
  %green_orig = alloca ptr, align 8
  %blue_orig = alloca ptr, align 8
  %n_color = alloca i32, align 4
  %inkset = alloca i16, align 2
  store ptr %img, ptr %img.addr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %stop, ptr %stop.addr, align 4
  store ptr %emsg, ptr %emsg.addr, align 8
  %row_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 19
  store i32 0, ptr %row_offset, align 8
  %col_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 20
  store i32 0, ptr %col_offset, align 4
  %0 = load ptr, ptr %img.addr, align 8
  %redcmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 10
  store ptr null, ptr %redcmap, align 8
  %greencmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 11
  store ptr null, ptr %greencmap, align 8
  %bluecmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 12
  store ptr null, ptr %bluecmap, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %2 = load ptr, ptr %img.addr, align 8
  store ptr %1, ptr %2, align 8
  %3 = load i32, ptr %stop.addr, align 4
  %stoponerr = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i64 0, i32 1
  store i32 %3, ptr %stoponerr, align 8
  %bitspersample = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i64 0, i32 6
  %call = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %1, i64 noundef 258, ptr noundef nonnull %bitspersample) #4
  %4 = load ptr, ptr %img.addr, align 8
  %bitspersample2 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %4, i64 0, i32 6
  %5 = load i16, ptr %bitspersample2, align 8
  switch i16 %5, label %sw.default [
    i16 1, label %sw.epilog
    i16 2, label %sw.epilog
    i16 4, label %sw.epilog
    i16 8, label %sw.epilog
    i16 16, label %sw.epilog
  ]

sw.default:                                       ; preds = %entry
  %6 = load ptr, ptr %emsg.addr, align 8
  %7 = call i64 @llvm.objectsize.i64.p0(ptr %6, i1 false, i1 true, i1 false)
  %8 = load ptr, ptr %img.addr, align 8
  %bitspersample3 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %8, i64 0, i32 6
  %9 = load i16, ptr %bitspersample3, align 8
  %conv4 = zext i16 %9 to i32
  %call5 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %6, i32 noundef 0, i64 noundef %7, ptr noundef nonnull @.str.15, i32 noundef %conv4) #4
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %entry, %entry, %entry, %entry, %entry
  %10 = load ptr, ptr %img.addr, align 8
  %alpha = getelementptr inbounds %struct._TIFFRGBAImage, ptr %10, i64 0, i32 3
  store i32 0, ptr %alpha, align 8
  %11 = load ptr, ptr %tif.addr, align 8
  %samplesperpixel = getelementptr inbounds %struct._TIFFRGBAImage, ptr %10, i64 0, i32 7
  %call6 = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %11, i64 noundef 277, ptr noundef nonnull %samplesperpixel) #4
  %call7 = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %11, i64 noundef 338, ptr noundef nonnull %extrasamples, ptr noundef nonnull %sampleinfo) #4
  %12 = load i16, ptr %extrasamples, align 2
  %cmp = icmp eq i16 %12, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %13 = load ptr, ptr %sampleinfo, align 8
  %14 = load i16, ptr %13, align 2
  switch i16 %14, label %if.end [
    i16 1, label %sw.bb11
    i16 2, label %sw.bb11
  ]

sw.bb11:                                          ; preds = %if.then, %if.then
  %15 = load ptr, ptr %sampleinfo, align 8
  %16 = load i16, ptr %15, align 2
  %conv13 = zext i16 %16 to i32
  %17 = load ptr, ptr %img.addr, align 8
  %alpha14 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %17, i64 0, i32 3
  store i32 %conv13, ptr %alpha14, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb11, %sw.epilog
  %18 = load ptr, ptr %img.addr, align 8
  %samplesperpixel16 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %18, i64 0, i32 7
  %19 = load i16, ptr %samplesperpixel16, align 2
  %conv17 = zext i16 %19 to i32
  %20 = load i16, ptr %extrasamples, align 2
  %conv18 = zext i16 %20 to i32
  %sub = sub nsw i32 %conv17, %conv18
  store i32 %sub, ptr %colorchannels, align 4
  %21 = load ptr, ptr %tif.addr, align 8
  %call19 = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %21, i64 noundef 259, ptr noundef nonnull %compress) #4
  %call20 = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %21, i64 noundef 284, ptr noundef nonnull %planarconfig) #4
  %22 = load ptr, ptr %img.addr, align 8
  %photometric = getelementptr inbounds %struct._TIFFRGBAImage, ptr %22, i64 0, i32 9
  %call21 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %21, i64 noundef 262, ptr noundef nonnull %photometric) #4
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %if.then22, label %if.end35

if.then22:                                        ; preds = %if.end
  %23 = load i32, ptr %colorchannels, align 4
  switch i32 %23, label %sw.default32 [
    i32 1, label %sw.bb23
    i32 3, label %sw.bb30
  ]

sw.bb23:                                          ; preds = %if.then22
  %24 = load ptr, ptr %tif.addr, align 8
  %call24 = call i32 @isCCITTCompression(ptr noundef %24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %sw.bb23
  %25 = load ptr, ptr %img.addr, align 8
  %photometric27 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %25, i64 0, i32 9
  store i16 0, ptr %photometric27, align 2
  br label %if.end35

if.else:                                          ; preds = %sw.bb23
  %26 = load ptr, ptr %img.addr, align 8
  %photometric28 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %26, i64 0, i32 9
  store i16 1, ptr %photometric28, align 2
  br label %if.end35

sw.bb30:                                          ; preds = %if.then22
  %27 = load ptr, ptr %img.addr, align 8
  %photometric31 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %27, i64 0, i32 9
  store i16 2, ptr %photometric31, align 2
  br label %if.end35

sw.default32:                                     ; preds = %if.then22
  %28 = load ptr, ptr %emsg.addr, align 8
  %29 = call i64 @llvm.objectsize.i64.p0(ptr %28, i1 false, i1 true, i1 false)
  %call33 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %28, i32 noundef 0, i64 noundef %29, ptr noundef nonnull @.str.1, ptr noundef nonnull @photoTag) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %sw.bb30, %if.else, %if.then26, %if.end
  %30 = load ptr, ptr %img.addr, align 8
  %photometric36 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %30, i64 0, i32 9
  %31 = load i16, ptr %photometric36, align 2
  switch i16 %31, label %sw.default172 [
    i16 3, label %sw.bb38
    i16 0, label %sw.bb83
    i16 1, label %sw.bb83
    i16 6, label %sw.bb98
    i16 2, label %sw.bb117
    i16 5, label %sw.bb123
    i16 -32692, label %sw.bb141
    i16 -32691, label %sw.bb151
  ]

sw.bb38:                                          ; preds = %if.end35
  %32 = load ptr, ptr %tif.addr, align 8
  %call39 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %32, i64 noundef 320, ptr noundef nonnull %red_orig, ptr noundef nonnull %green_orig, ptr noundef nonnull %blue_orig) #4
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then41, label %if.end43

if.then41:                                        ; preds = %sw.bb38
  %33 = load ptr, ptr %tif.addr, align 8
  %call42 = call ptr @TIFFFileName(ptr noundef %33) #4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call42, ptr noundef nonnull @.str.16) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %sw.bb38
  %34 = load ptr, ptr %img.addr, align 8
  %bitspersample44 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %34, i64 0, i32 6
  %35 = load i16, ptr %bitspersample44, align 8
  %sh_prom = zext i16 %35 to i64
  %shl = shl i64 1, %sh_prom
  %conv46 = trunc i64 %shl to i32
  store i32 %conv46, ptr %n_color, align 4
  %sext = shl i64 4294967296, %sh_prom
  %mul = ashr exact i64 %sext, 31
  %call48 = call ptr @_TIFFmalloc(i64 noundef %mul) #4
  %36 = load ptr, ptr %img.addr, align 8
  %redcmap49 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %36, i64 0, i32 10
  store ptr %call48, ptr %redcmap49, align 8
  %37 = load i32, ptr %n_color, align 4
  %conv50 = sext i32 %37 to i64
  %mul51 = shl nsw i64 %conv50, 1
  %call52 = call ptr @_TIFFmalloc(i64 noundef %mul51) #4
  %38 = load ptr, ptr %img.addr, align 8
  %greencmap53 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %38, i64 0, i32 11
  store ptr %call52, ptr %greencmap53, align 8
  %39 = load i32, ptr %n_color, align 4
  %conv54 = sext i32 %39 to i64
  %mul55 = shl nsw i64 %conv54, 1
  %call56 = call ptr @_TIFFmalloc(i64 noundef %mul55) #4
  %40 = load ptr, ptr %img.addr, align 8
  %bluecmap57 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %40, i64 0, i32 12
  store ptr %call56, ptr %bluecmap57, align 8
  %redcmap58 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %40, i64 0, i32 10
  %41 = load ptr, ptr %redcmap58, align 8
  %tobool59.not = icmp eq ptr %41, null
  br i1 %tobool59.not, label %if.then65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end43
  %42 = load ptr, ptr %img.addr, align 8
  %greencmap60 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %42, i64 0, i32 11
  %43 = load ptr, ptr %greencmap60, align 8
  %tobool61.not = icmp eq ptr %43, null
  br i1 %tobool61.not, label %if.then65, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %lor.lhs.false
  %44 = load ptr, ptr %img.addr, align 8
  %bluecmap63 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %44, i64 0, i32 12
  %45 = load ptr, ptr %bluecmap63, align 8
  %tobool64.not = icmp eq ptr %45, null
  br i1 %tobool64.not, label %if.then65, label %if.end67

if.then65:                                        ; preds = %lor.lhs.false62, %lor.lhs.false, %if.end43
  %46 = load ptr, ptr %tif.addr, align 8
  %call66 = call ptr @TIFFFileName(ptr noundef %46) #4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call66, ptr noundef nonnull @.str.17) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end67:                                         ; preds = %lor.lhs.false62
  %47 = load ptr, ptr %img.addr, align 8
  %redcmap68 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %47, i64 0, i32 10
  %48 = load ptr, ptr %redcmap68, align 8
  %49 = load ptr, ptr %red_orig, align 8
  %50 = load i32, ptr %n_color, align 4
  %mul69 = shl nsw i32 %50, 1
  %conv70 = sext i32 %mul69 to i64
  %51 = load ptr, ptr %img.addr, align 8
  %redcmap71 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %51, i64 0, i32 10
  %52 = load ptr, ptr %redcmap71, align 8
  %53 = call i64 @llvm.objectsize.i64.p0(ptr %52, i1 false, i1 true, i1 false)
  %call72 = call ptr @__memcpy_chk(ptr noundef %48, ptr noundef %49, i64 noundef %conv70, i64 noundef %53) #4
  %greencmap73 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %51, i64 0, i32 11
  %54 = load ptr, ptr %greencmap73, align 8
  %55 = load ptr, ptr %green_orig, align 8
  %56 = load i32, ptr %n_color, align 4
  %mul74 = shl nsw i32 %56, 1
  %conv75 = sext i32 %mul74 to i64
  %57 = load ptr, ptr %img.addr, align 8
  %greencmap76 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %57, i64 0, i32 11
  %58 = load ptr, ptr %greencmap76, align 8
  %59 = call i64 @llvm.objectsize.i64.p0(ptr %58, i1 false, i1 true, i1 false)
  %call77 = call ptr @__memcpy_chk(ptr noundef %54, ptr noundef %55, i64 noundef %conv75, i64 noundef %59) #4
  %bluecmap78 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %57, i64 0, i32 12
  %60 = load ptr, ptr %bluecmap78, align 8
  %61 = load ptr, ptr %blue_orig, align 8
  %62 = load i32, ptr %n_color, align 4
  %mul79 = shl nsw i32 %62, 1
  %conv80 = sext i32 %mul79 to i64
  %63 = load ptr, ptr %img.addr, align 8
  %bluecmap81 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %63, i64 0, i32 12
  %64 = load ptr, ptr %bluecmap81, align 8
  %65 = call i64 @llvm.objectsize.i64.p0(ptr %64, i1 false, i1 true, i1 false)
  %call82 = call ptr @__memcpy_chk(ptr noundef %60, ptr noundef %61, i64 noundef %conv80, i64 noundef %65) #4
  br label %sw.bb83

sw.bb83:                                          ; preds = %if.end67, %if.end35, %if.end35
  %66 = load i16, ptr %planarconfig, align 2
  %cmp85 = icmp eq i16 %66, 1
  br i1 %cmp85, label %land.lhs.true, label %sw.epilog176

land.lhs.true:                                    ; preds = %sw.bb83
  %67 = load ptr, ptr %img.addr, align 8
  %samplesperpixel87 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %67, i64 0, i32 7
  %68 = load i16, ptr %samplesperpixel87, align 2
  %cmp89.not = icmp eq i16 %68, 1
  br i1 %cmp89.not, label %sw.epilog176, label %if.then91

if.then91:                                        ; preds = %land.lhs.true
  %69 = load ptr, ptr %emsg.addr, align 8
  %70 = call i64 @llvm.objectsize.i64.p0(ptr %69, i1 false, i1 true, i1 false)
  %71 = load ptr, ptr %img.addr, align 8
  %photometric92 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %71, i64 0, i32 9
  %72 = load i16, ptr %photometric92, align 2
  %conv93 = zext i16 %72 to i32
  %samplesperpixel94 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %71, i64 0, i32 7
  %73 = load i16, ptr %samplesperpixel94, align 2
  %conv95 = zext i16 %73 to i32
  %call96 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %69, i32 noundef 0, i64 noundef %70, ptr noundef nonnull @.str.2, ptr noundef nonnull @photoTag, i32 noundef %conv93, ptr noundef nonnull @.str.3, i32 noundef %conv95) #4
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb98:                                          ; preds = %if.end35
  %74 = load i16, ptr %planarconfig, align 2
  %cmp100.not = icmp eq i16 %74, 1
  br i1 %cmp100.not, label %if.end105, label %if.then102

if.then102:                                       ; preds = %sw.bb98
  %75 = load ptr, ptr %emsg.addr, align 8
  %76 = call i64 @llvm.objectsize.i64.p0(ptr %75, i1 false, i1 true, i1 false)
  %77 = load i16, ptr %planarconfig, align 2
  %conv103 = zext i16 %77 to i32
  %call104 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %75, i32 noundef 0, i64 noundef %76, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %conv103) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end105:                                        ; preds = %sw.bb98
  %78 = load i16, ptr %compress, align 2
  %cmp107 = icmp eq i16 %78, 7
  %79 = load i16, ptr %planarconfig, align 2
  %cmp111 = icmp eq i16 %79, 1
  %or.cond = select i1 %cmp107, i1 %cmp111, i1 false
  br i1 %or.cond, label %if.then113, label %sw.epilog176

if.then113:                                       ; preds = %if.end105
  %80 = load ptr, ptr %tif.addr, align 8
  %call114 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %80, i64 noundef 65538, i32 noundef 1) #4
  %81 = load ptr, ptr %img.addr, align 8
  %photometric115 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %81, i64 0, i32 9
  store i16 2, ptr %photometric115, align 2
  br label %sw.epilog176

sw.bb117:                                         ; preds = %if.end35
  %82 = load i32, ptr %colorchannels, align 4
  %cmp118 = icmp slt i32 %82, 3
  br i1 %cmp118, label %if.then120, label %sw.epilog176

if.then120:                                       ; preds = %sw.bb117
  %83 = load ptr, ptr %emsg.addr, align 8
  %84 = call i64 @llvm.objectsize.i64.p0(ptr %83, i1 false, i1 true, i1 false)
  %85 = load i32, ptr %colorchannels, align 4
  %call121 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %83, i32 noundef 0, i64 noundef %84, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %85) #4
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb123:                                         ; preds = %if.end35
  %86 = load ptr, ptr %tif.addr, align 8
  %call124 = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %86, i64 noundef 332, ptr noundef nonnull %inkset) #4
  %87 = load i16, ptr %inkset, align 2
  %cmp126.not = icmp eq i16 %87, 1
  br i1 %cmp126.not, label %if.end131, label %if.then128

if.then128:                                       ; preds = %sw.bb123
  %88 = load ptr, ptr %emsg.addr, align 8
  %89 = call i64 @llvm.objectsize.i64.p0(ptr %88, i1 false, i1 true, i1 false)
  %90 = load i16, ptr %inkset, align 2
  %conv129 = zext i16 %90 to i32
  %call130 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %88, i32 noundef 0, i64 noundef %89, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv129) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end131:                                        ; preds = %sw.bb123
  %91 = load ptr, ptr %img.addr, align 8
  %samplesperpixel132 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %91, i64 0, i32 7
  %92 = load i16, ptr %samplesperpixel132, align 2
  %cmp134.not = icmp eq i16 %92, 4
  br i1 %cmp134.not, label %sw.epilog176, label %if.then136

if.then136:                                       ; preds = %if.end131
  %93 = load ptr, ptr %emsg.addr, align 8
  %94 = call i64 @llvm.objectsize.i64.p0(ptr %93, i1 false, i1 true, i1 false)
  %95 = load ptr, ptr %img.addr, align 8
  %samplesperpixel137 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %95, i64 0, i32 7
  %96 = load i16, ptr %samplesperpixel137, align 2
  %conv138 = zext i16 %96 to i32
  %call139 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %93, i32 noundef 0, i64 noundef %94, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef %conv138) #4
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb141:                                         ; preds = %if.end35
  %97 = load i16, ptr %compress, align 2
  %cmp143.not = icmp eq i16 %97, -30860
  br i1 %cmp143.not, label %if.end147, label %if.then145

if.then145:                                       ; preds = %sw.bb141
  %98 = load ptr, ptr %emsg.addr, align 8
  %99 = call i64 @llvm.objectsize.i64.p0(ptr %98, i1 false, i1 true, i1 false)
  %call146 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %98, i32 noundef 0, i64 noundef %99, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 34676) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end147:                                        ; preds = %sw.bb141
  %100 = load ptr, ptr %tif.addr, align 8
  %call148 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %100, i64 noundef 65560, i32 noundef 3) #4
  %101 = load ptr, ptr %img.addr, align 8
  %photometric149 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %101, i64 0, i32 9
  store i16 1, ptr %photometric149, align 2
  %bitspersample150 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %101, i64 0, i32 6
  store i16 8, ptr %bitspersample150, align 8
  br label %sw.epilog176

sw.bb151:                                         ; preds = %if.end35
  %102 = load i16, ptr %compress, align 2
  %cmp153.not = icmp eq i16 %102, -30860
  %103 = load i16, ptr %compress, align 2
  %cmp157.not = icmp eq i16 %103, -30859
  %or.cond1 = select i1 %cmp153.not, i1 true, i1 %cmp157.not
  br i1 %or.cond1, label %if.end161, label %if.then159

if.then159:                                       ; preds = %sw.bb151
  %104 = load ptr, ptr %emsg.addr, align 8
  %105 = call i64 @llvm.objectsize.i64.p0(ptr %104, i1 false, i1 true, i1 false)
  %call160 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %104, i32 noundef 0, i64 noundef %105, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef 34676, i32 noundef 34677) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end161:                                        ; preds = %sw.bb151
  %106 = load i16, ptr %planarconfig, align 2
  %cmp163.not = icmp eq i16 %106, 1
  br i1 %cmp163.not, label %if.end168, label %if.then165

if.then165:                                       ; preds = %if.end161
  %107 = load ptr, ptr %emsg.addr, align 8
  %108 = call i64 @llvm.objectsize.i64.p0(ptr %107, i1 false, i1 true, i1 false)
  %109 = load i16, ptr %planarconfig, align 2
  %conv166 = zext i16 %109 to i32
  %call167 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %107, i32 noundef 0, i64 noundef %108, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5, i32 noundef %conv166) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end168:                                        ; preds = %if.end161
  %110 = load ptr, ptr %tif.addr, align 8
  %call169 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %110, i64 noundef 65560, i32 noundef 3) #4
  %111 = load ptr, ptr %img.addr, align 8
  %photometric170 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %111, i64 0, i32 9
  store i16 2, ptr %photometric170, align 2
  %bitspersample171 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %111, i64 0, i32 6
  store i16 8, ptr %bitspersample171, align 8
  br label %sw.epilog176

sw.default172:                                    ; preds = %if.end35
  %112 = load ptr, ptr %emsg.addr, align 8
  %113 = call i64 @llvm.objectsize.i64.p0(ptr %112, i1 false, i1 true, i1 false)
  %114 = load ptr, ptr %img.addr, align 8
  %photometric173 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %114, i64 0, i32 9
  %115 = load i16, ptr %photometric173, align 2
  %conv174 = zext i16 %115 to i32
  %call175 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %112, i32 noundef 0, i64 noundef %113, ptr noundef nonnull @.str.14, ptr noundef nonnull @photoTag, i32 noundef %conv174) #4
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog176:                                     ; preds = %if.end131, %sw.bb117, %if.end105, %if.then113, %sw.bb83, %land.lhs.true, %if.end168, %if.end147
  %116 = load ptr, ptr %img.addr, align 8
  %Map = getelementptr inbounds %struct._TIFFRGBAImage, ptr %116, i64 0, i32 15
  store ptr null, ptr %Map, align 8
  %BWmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %116, i64 0, i32 16
  store ptr null, ptr %BWmap, align 8
  %PALmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %116, i64 0, i32 17
  store ptr null, ptr %PALmap, align 8
  %117 = load ptr, ptr %img.addr, align 8
  %ycbcr = getelementptr inbounds %struct._TIFFRGBAImage, ptr %117, i64 0, i32 18
  store ptr null, ptr %ycbcr, align 8
  %118 = load ptr, ptr %tif.addr, align 8
  %width = getelementptr inbounds %struct._TIFFRGBAImage, ptr %117, i64 0, i32 4
  %call177 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %118, i64 noundef 256, ptr noundef nonnull %width) #4
  %height = getelementptr inbounds %struct._TIFFRGBAImage, ptr %117, i64 0, i32 5
  %call178 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %118, i64 noundef 257, ptr noundef nonnull %height) #4
  %119 = load ptr, ptr %img.addr, align 8
  %orientation = getelementptr inbounds %struct._TIFFRGBAImage, ptr %119, i64 0, i32 8
  %call179 = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %118, i64 noundef 274, ptr noundef nonnull %orientation) #4
  %120 = load i16, ptr %planarconfig, align 2
  %cmp181 = icmp eq i16 %120, 2
  %121 = load i32, ptr %colorchannels, align 4
  %cmp183 = icmp slt i32 %121, 2
  %phi.cast = zext i1 %cmp183 to i32
  %122 = select i1 %cmp181, i32 %phi.cast, i32 1
  %123 = load ptr, ptr %img.addr, align 8
  %isContig = getelementptr inbounds %struct._TIFFRGBAImage, ptr %123, i64 0, i32 2
  store i32 %122, ptr %isContig, align 4
  %tobool186.not = icmp eq i32 %122, 0
  br i1 %tobool186.not, label %if.else191, label %if.then187

if.then187:                                       ; preds = %sw.epilog176
  %124 = load ptr, ptr %tif.addr, align 8
  %call188 = call i32 @TIFFIsTiled(ptr noundef %124) #4
  %tobool189.not = icmp eq i32 %call188, 0
  %cond = select i1 %tobool189.not, ptr @gtStripContig, ptr @gtTileContig
  %125 = load ptr, ptr %img.addr, align 8
  %get = getelementptr inbounds %struct._TIFFRGBAImage, ptr %125, i64 0, i32 13
  store ptr %cond, ptr %get, align 8
  %call190 = call i32 @pickTileContigCase(ptr noundef %125)
  br label %if.end197

if.else191:                                       ; preds = %sw.epilog176
  %126 = load ptr, ptr %tif.addr, align 8
  %call192 = call i32 @TIFFIsTiled(ptr noundef %126) #4
  %tobool193.not = icmp eq i32 %call192, 0
  %cond194 = select i1 %tobool193.not, ptr @gtStripSeparate, ptr @gtTileSeparate
  %127 = load ptr, ptr %img.addr, align 8
  %get195 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %127, i64 0, i32 13
  store ptr %cond194, ptr %get195, align 8
  %call196 = call i32 @pickTileSeparateCase(ptr noundef %127)
  br label %if.end197

if.end197:                                        ; preds = %if.else191, %if.then187
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end197, %sw.default172, %if.then165, %if.then159, %if.then145, %if.then136, %if.then128, %if.then120, %if.then102, %if.then91, %if.then65, %if.then41, %sw.default32, %sw.default
  %128 = load i32, ptr %retval, align 4
  ret i32 %128
}

declare i32 @TIFFGetFieldDefaulted(ptr noundef, i64 noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @isCCITTCompression(ptr noundef %tif) #0 {
entry:
  %compress = alloca i16, align 2
  %call = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %tif, i64 noundef 259, ptr noundef nonnull %compress) #4
  %0 = load i16, ptr %compress, align 2
  %cmp = icmp eq i16 %0, 3
  %1 = load i16, ptr %compress, align 2
  %cmp3 = icmp eq i16 %1, 4
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  %2 = load i16, ptr %compress, align 2
  %cmp7 = icmp eq i16 %2, 2
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp7
  %3 = load i16, ptr %compress, align 2
  %cmp10 = icmp eq i16 %3, -32765
  %phi.cast = zext i1 %cmp10 to i32
  %4 = select i1 %or.cond1, i32 1, i32 %phi.cast
  ret i32 %4
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

declare ptr @TIFFFileName(ptr noundef) #1

declare ptr @_TIFFmalloc(i64 noundef) #1

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

declare i32 @TIFFSetField(ptr noundef, i64 noundef, ...) #1

declare i32 @TIFFIsTiled(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @gtTileContig(ptr noundef %img, ptr noundef %raster, i64 noundef %w, i64 noundef %h) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %raster.addr = alloca ptr, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %tif = alloca ptr, align 8
  %put = alloca ptr, align 8
  %orientation = alloca i16, align 2
  %col = alloca i64, align 8
  %row = alloca i64, align 8
  %y = alloca i64, align 8
  %tw = alloca i64, align 8
  %th = alloca i64, align 8
  %buf = alloca ptr, align 8
  %fromskew = alloca i64, align 8
  %toskew = alloca i64, align 8
  %nrow = alloca i64, align 8
  %npix = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %raster, ptr %raster.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  %0 = load ptr, ptr %img, align 8
  store ptr %0, ptr %tif, align 8
  %put2 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 14
  %1 = load ptr, ptr %put2, align 8
  store ptr %1, ptr %put, align 8
  %call = call i64 @TIFFTileSize(ptr noundef %0) #4
  %call3 = call ptr @_TIFFmalloc(i64 noundef %call) #4
  store ptr %call3, ptr %buf, align 8
  %cmp = icmp eq ptr %call3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tif, align 8
  %call4 = call ptr @TIFFFileName(ptr noundef %2) #4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call4, ptr noundef nonnull @.str.24) #4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %tif, align 8
  %call5 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %3, i64 noundef 322, ptr noundef nonnull %tw) #4
  %call6 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %3, i64 noundef 323, ptr noundef nonnull %th) #4
  %4 = load ptr, ptr %img.addr, align 8
  %5 = load i64, ptr %h.addr, align 8
  %call7 = call i64 @setorientation(ptr noundef %4, i64 noundef %5)
  store i64 %call7, ptr %y, align 8
  %orientation8 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %4, i64 0, i32 8
  %6 = load i16, ptr %orientation8, align 4
  store i16 %6, ptr %orientation, align 2
  %cmp9 = icmp eq i16 %6, 1
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load i64, ptr %tw, align 8
  %8 = load i64, ptr %w.addr, align 8
  %add = add i64 %7, %8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %9 = load i64, ptr %tw, align 8
  %10 = load i64, ptr %w.addr, align 8
  %sub = sub i64 %9, %10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add, %cond.true ], [ %sub, %cond.false ]
  %sub11 = sub nsw i64 0, %cond
  store i64 %sub11, ptr %toskew, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end, %cond.end
  %storemerge = phi i64 [ 0, %cond.end ], [ %add58, %for.end ]
  store i64 %storemerge, ptr %row, align 8
  %11 = load i64, ptr %h.addr, align 8
  %cmp12 = icmp ult i64 %storemerge, %11
  br i1 %cmp12, label %for.body, label %for.end59

for.body:                                         ; preds = %for.cond
  %12 = load i64, ptr %row, align 8
  %13 = load i64, ptr %th, align 8
  %add14 = add i64 %12, %13
  %14 = load i64, ptr %h.addr, align 8
  %cmp15 = icmp ugt i64 %add14, %14
  %15 = load i64, ptr %h.addr, align 8
  %16 = load i64, ptr %row, align 8
  %sub18 = sub i64 %15, %16
  %17 = load i64, ptr %th, align 8
  %cond21 = select i1 %cmp15, i64 %sub18, i64 %17
  store i64 %cond21, ptr %nrow, align 8
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc, %for.body
  %storemerge2 = phi i64 [ 0, %for.body ], [ %add47, %for.inc ]
  store i64 %storemerge2, ptr %col, align 8
  %18 = load i64, ptr %w.addr, align 8
  %cmp23 = icmp ult i64 %storemerge2, %18
  br i1 %cmp23, label %for.body25, label %for.end

for.body25:                                       ; preds = %for.cond22
  %19 = load ptr, ptr %tif, align 8
  %20 = load ptr, ptr %buf, align 8
  %21 = load i64, ptr %col, align 8
  %22 = load ptr, ptr %img.addr, align 8
  %col_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %22, i64 0, i32 20
  %23 = load i32, ptr %col_offset, align 4
  %conv26 = sext i32 %23 to i64
  %add27 = add i64 %21, %conv26
  %24 = load i64, ptr %row, align 8
  %row_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %22, i64 0, i32 19
  %25 = load i32, ptr %row_offset, align 8
  %conv28 = sext i32 %25 to i64
  %add29 = add i64 %24, %conv28
  %call30 = call i64 @TIFFReadTile(ptr noundef %19, ptr noundef %20, i64 noundef %add27, i64 noundef %add29, i64 noundef 0, i16 noundef zeroext 0) #4
  %cmp31 = icmp slt i64 %call30, 0
  br i1 %cmp31, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %for.body25
  %26 = load ptr, ptr %img.addr, align 8
  %stoponerr = getelementptr inbounds %struct._TIFFRGBAImage, ptr %26, i64 0, i32 1
  %27 = load i32, ptr %stoponerr, align 8
  %tobool.not = icmp eq i32 %27, 0
  br i1 %tobool.not, label %if.end34, label %for.end

if.end34:                                         ; preds = %land.lhs.true, %for.body25
  %28 = load i64, ptr %col, align 8
  %29 = load i64, ptr %tw, align 8
  %add35 = add i64 %28, %29
  %30 = load i64, ptr %w.addr, align 8
  %cmp36 = icmp ugt i64 %add35, %30
  br i1 %cmp36, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end34
  %31 = load i64, ptr %w.addr, align 8
  %32 = load i64, ptr %col, align 8
  %sub39 = sub i64 %31, %32
  store i64 %sub39, ptr %npix, align 8
  %33 = load i64, ptr %tw, align 8
  %sub40 = sub i64 %33, %sub39
  store i64 %sub40, ptr %fromskew, align 8
  %34 = load ptr, ptr %put, align 8
  %35 = load ptr, ptr %img.addr, align 8
  %36 = load ptr, ptr %raster.addr, align 8
  %37 = load i64, ptr %y, align 8
  %38 = load i64, ptr %w.addr, align 8
  %mul = mul i64 %37, %38
  %add.ptr = getelementptr inbounds i64, ptr %36, i64 %mul
  %39 = load i64, ptr %col, align 8
  %add.ptr41 = getelementptr inbounds i64, ptr %add.ptr, i64 %39
  %40 = load i64, ptr %npix, align 8
  %41 = load i64, ptr %nrow, align 8
  %42 = load i64, ptr %fromskew, align 8
  %43 = load i64, ptr %toskew, align 8
  %add42 = add nsw i64 %43, %42
  %44 = load ptr, ptr %buf, align 8
  call void %34(ptr noundef %35, ptr noundef %add.ptr41, i64 noundef %39, i64 noundef %37, i64 noundef %40, i64 noundef %41, i64 noundef %42, i64 noundef %add42, ptr noundef %44) #4
  br label %for.inc

if.else:                                          ; preds = %if.end34
  %45 = load ptr, ptr %put, align 8
  %46 = load ptr, ptr %img.addr, align 8
  %47 = load ptr, ptr %raster.addr, align 8
  %48 = load i64, ptr %y, align 8
  %49 = load i64, ptr %w.addr, align 8
  %mul43 = mul i64 %48, %49
  %add.ptr44 = getelementptr inbounds i64, ptr %47, i64 %mul43
  %50 = load i64, ptr %col, align 8
  %add.ptr45 = getelementptr inbounds i64, ptr %add.ptr44, i64 %50
  %51 = load i64, ptr %tw, align 8
  %52 = load i64, ptr %nrow, align 8
  %53 = load i64, ptr %toskew, align 8
  %54 = load ptr, ptr %buf, align 8
  call void %45(ptr noundef %46, ptr noundef %add.ptr45, i64 noundef %50, i64 noundef %48, i64 noundef %51, i64 noundef %52, i64 noundef 0, i64 noundef %53, ptr noundef %54) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then38, %if.else
  %55 = load i64, ptr %tw, align 8
  %56 = load i64, ptr %col, align 8
  %add47 = add i64 %56, %55
  br label %for.cond22, !llvm.loop !6

for.end:                                          ; preds = %land.lhs.true, %for.cond22
  %57 = load i16, ptr %orientation, align 2
  %cmp49 = icmp eq i16 %57, 1
  %58 = load i64, ptr %nrow, align 8
  %sub52 = sub nsw i64 0, %58
  %59 = load i64, ptr %nrow, align 8
  %cond55 = select i1 %cmp49, i64 %sub52, i64 %59
  %60 = load i64, ptr %y, align 8
  %add56 = add i64 %60, %cond55
  store i64 %add56, ptr %y, align 8
  %61 = load i64, ptr %th, align 8
  %62 = load i64, ptr %row, align 8
  %add58 = add i64 %62, %61
  br label %for.cond, !llvm.loop !8

for.end59:                                        ; preds = %for.cond
  %63 = load ptr, ptr %buf, align 8
  call void @_TIFFfree(ptr noundef %63) #4
  br label %return

return:                                           ; preds = %for.end59, %if.then
  %storemerge1 = phi i32 [ 1, %for.end59 ], [ 0, %if.then ]
  ret i32 %storemerge1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @gtStripContig(ptr noundef %img, ptr noundef %raster, i64 noundef %w, i64 noundef %h) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %raster.addr = alloca ptr, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %tif = alloca ptr, align 8
  %put = alloca ptr, align 8
  %orientation = alloca i16, align 2
  %row = alloca i64, align 8
  %y = alloca i64, align 8
  %nrow = alloca i64, align 8
  %buf = alloca ptr, align 8
  %rowsperstrip = alloca i64, align 8
  %imagewidth = alloca i64, align 8
  %scanline = alloca i64, align 8
  %fromskew = alloca i64, align 8
  %toskew = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %raster, ptr %raster.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  %0 = load ptr, ptr %img, align 8
  store ptr %0, ptr %tif, align 8
  %put2 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 14
  %1 = load ptr, ptr %put2, align 8
  store ptr %1, ptr %put, align 8
  %2 = load ptr, ptr %img.addr, align 8
  %width = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i64 0, i32 4
  %3 = load i64, ptr %width, align 8
  store i64 %3, ptr %imagewidth, align 8
  %4 = load ptr, ptr %tif, align 8
  %call = call i64 @TIFFStripSize(ptr noundef %4) #4
  %call3 = call ptr @_TIFFmalloc(i64 noundef %call) #4
  store ptr %call3, ptr %buf, align 8
  %cmp = icmp eq ptr %call3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %tif, align 8
  %call4 = call ptr @TIFFFileName(ptr noundef %5) #4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call4, ptr noundef nonnull @.str.27) #4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %img.addr, align 8
  %7 = load i64, ptr %h.addr, align 8
  %call5 = call i64 @setorientation(ptr noundef %6, i64 noundef %7)
  store i64 %call5, ptr %y, align 8
  %orientation6 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %6, i64 0, i32 8
  %8 = load i16, ptr %orientation6, align 4
  store i16 %8, ptr %orientation, align 2
  %cmp7 = icmp eq i16 %8, 1
  %9 = load i64, ptr %w.addr, align 8
  %add.neg = mul i64 %9, -2
  %cond.neg = select i1 %cmp7, i64 %add.neg, i64 0
  store i64 %cond.neg, ptr %toskew, align 8
  %10 = load ptr, ptr %tif, align 8
  %call10 = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %10, i64 noundef 278, ptr noundef nonnull %rowsperstrip) #4
  %call11 = call i64 @TIFFScanlineSize(ptr noundef %10) #4
  store i64 %call11, ptr %scanline, align 8
  %11 = load i64, ptr %w.addr, align 8
  %12 = load i64, ptr %imagewidth, align 8
  %cmp12 = icmp ult i64 %11, %12
  %13 = load i64, ptr %imagewidth, align 8
  %14 = load i64, ptr %w.addr, align 8
  %sub15 = sub i64 %13, %14
  %cond18 = select i1 %cmp12, i64 %sub15, i64 0
  store i64 %cond18, ptr %fromskew, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end36, %if.end
  %storemerge = phi i64 [ 0, %if.end ], [ %add47, %if.end36 ]
  store i64 %storemerge, ptr %row, align 8
  %15 = load i64, ptr %h.addr, align 8
  %cmp19 = icmp ult i64 %storemerge, %15
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, ptr %row, align 8
  %17 = load i64, ptr %rowsperstrip, align 8
  %add21 = add i64 %16, %17
  %18 = load i64, ptr %h.addr, align 8
  %cmp22 = icmp ugt i64 %add21, %18
  %19 = load i64, ptr %h.addr, align 8
  %20 = load i64, ptr %row, align 8
  %sub25 = sub i64 %19, %20
  %21 = load i64, ptr %rowsperstrip, align 8
  %cond28 = select i1 %cmp22, i64 %sub25, i64 %21
  store i64 %cond28, ptr %nrow, align 8
  %22 = load ptr, ptr %tif, align 8
  %23 = load i64, ptr %row, align 8
  %24 = load ptr, ptr %img.addr, align 8
  %row_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %24, i64 0, i32 19
  %25 = load i32, ptr %row_offset, align 8
  %conv29 = sext i32 %25 to i64
  %add30 = add i64 %23, %conv29
  %call31 = call i64 @TIFFComputeStrip(ptr noundef %22, i64 noundef %add30, i16 noundef zeroext 0) #4
  %26 = load ptr, ptr %buf, align 8
  %27 = load i64, ptr %nrow, align 8
  %28 = load i64, ptr %scanline, align 8
  %mul = mul i64 %27, %28
  %call32 = call i64 @TIFFReadEncodedStrip(ptr noundef %22, i64 noundef %call31, ptr noundef %26, i64 noundef %mul) #4
  %cmp33 = icmp slt i64 %call32, 0
  br i1 %cmp33, label %land.lhs.true, label %if.end36

land.lhs.true:                                    ; preds = %for.body
  %29 = load ptr, ptr %img.addr, align 8
  %stoponerr = getelementptr inbounds %struct._TIFFRGBAImage, ptr %29, i64 0, i32 1
  %30 = load i32, ptr %stoponerr, align 8
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %if.end36, label %for.end

if.end36:                                         ; preds = %land.lhs.true, %for.body
  %31 = load ptr, ptr %put, align 8
  %32 = load ptr, ptr %img.addr, align 8
  %33 = load ptr, ptr %raster.addr, align 8
  %34 = load i64, ptr %y, align 8
  %35 = load i64, ptr %w.addr, align 8
  %mul37 = mul i64 %34, %35
  %add.ptr = getelementptr inbounds i64, ptr %33, i64 %mul37
  %36 = load i64, ptr %nrow, align 8
  %37 = load i64, ptr %fromskew, align 8
  %38 = load i64, ptr %toskew, align 8
  %39 = load ptr, ptr %buf, align 8
  call void %31(ptr noundef %32, ptr noundef %add.ptr, i64 noundef 0, i64 noundef %34, i64 noundef %35, i64 noundef %36, i64 noundef %37, i64 noundef %38, ptr noundef %39) #4
  %40 = load i16, ptr %orientation, align 2
  %cmp39 = icmp eq i16 %40, 1
  %41 = load i64, ptr %nrow, align 8
  %sub42 = sub nsw i64 0, %41
  %42 = load i64, ptr %nrow, align 8
  %cond45 = select i1 %cmp39, i64 %sub42, i64 %42
  %43 = load i64, ptr %y, align 8
  %add46 = add i64 %43, %cond45
  store i64 %add46, ptr %y, align 8
  %44 = load i64, ptr %rowsperstrip, align 8
  %45 = load i64, ptr %row, align 8
  %add47 = add i64 %45, %44
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %land.lhs.true, %for.cond
  %46 = load ptr, ptr %buf, align 8
  call void @_TIFFfree(ptr noundef %46) #4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %storemerge1 = phi i32 [ 1, %for.end ], [ 0, %if.then ]
  ret i32 %storemerge1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @pickTileContigCase(ptr noundef %img) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %put = alloca ptr, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr null, ptr %put, align 8
  %call = call i32 @buildMap(ptr noundef %img)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end68, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %img.addr, align 8
  %photometric = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 9
  %1 = load i16, ptr %photometric, align 2
  switch i16 %1, label %if.end68 [
    i16 2, label %sw.bb
    i16 5, label %sw.bb31
    i16 3, label %sw.bb43
    i16 0, label %sw.bb51
    i16 1, label %sw.bb51
    i16 6, label %sw.bb59
  ]

sw.bb:                                            ; preds = %if.then
  %2 = load ptr, ptr %img.addr, align 8
  %bitspersample = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i64 0, i32 6
  %3 = load i16, ptr %bitspersample, align 8
  switch i16 %3, label %if.end68 [
    i16 8, label %sw.bb2
    i16 16, label %sw.bb15
  ]

sw.bb2:                                           ; preds = %sw.bb
  %4 = load ptr, ptr %img.addr, align 8
  %Map = getelementptr inbounds %struct._TIFFRGBAImage, ptr %4, i64 0, i32 15
  %5 = load ptr, ptr %Map, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.then4, label %if.end14

if.then4:                                         ; preds = %sw.bb2
  %6 = load ptr, ptr %img.addr, align 8
  %alpha = getelementptr inbounds %struct._TIFFRGBAImage, ptr %6, i64 0, i32 3
  %7 = load i32, ptr %alpha, align 8
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.end14, label %if.else

if.else:                                          ; preds = %if.then4
  %8 = load ptr, ptr %img.addr, align 8
  %alpha7 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %8, i64 0, i32 3
  %9 = load i32, ptr %alpha7, align 8
  %cmp8 = icmp eq i32 %9, 2
  %putRGBUAcontig8bittile.putRGBcontig8bittile = select i1 %cmp8, ptr @putRGBUAcontig8bittile, ptr @putRGBcontig8bittile
  br label %if.end14

if.end14:                                         ; preds = %sw.bb2, %if.else, %if.then4
  %storemerge3 = phi ptr [ %putRGBUAcontig8bittile.putRGBcontig8bittile, %if.else ], [ @putRGBAAcontig8bittile, %if.then4 ], [ @putRGBcontig8bitMaptile, %sw.bb2 ]
  store ptr %storemerge3, ptr %put, align 8
  br label %if.end68

sw.bb15:                                          ; preds = %sw.bb
  store ptr @putRGBcontig16bittile, ptr %put, align 8
  %10 = load ptr, ptr %img.addr, align 8
  %Map16 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %10, i64 0, i32 15
  %11 = load ptr, ptr %Map16, align 8
  %tobool17.not = icmp eq ptr %11, null
  br i1 %tobool17.not, label %if.then18, label %if.end68

if.then18:                                        ; preds = %sw.bb15
  %12 = load ptr, ptr %img.addr, align 8
  %alpha19 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %12, i64 0, i32 3
  %13 = load i32, ptr %alpha19, align 8
  %cmp20 = icmp eq i32 %13, 1
  br i1 %cmp20, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.then18
  store ptr @putRGBAAcontig16bittile, ptr %put, align 8
  br label %if.end68

if.else23:                                        ; preds = %if.then18
  %14 = load ptr, ptr %img.addr, align 8
  %alpha24 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %14, i64 0, i32 3
  %15 = load i32, ptr %alpha24, align 8
  %cmp25 = icmp eq i32 %15, 2
  br i1 %cmp25, label %if.then27, label %if.end68

if.then27:                                        ; preds = %if.else23
  store ptr @putRGBUAcontig16bittile, ptr %put, align 8
  br label %if.end68

sw.bb31:                                          ; preds = %if.then
  %16 = load ptr, ptr %img.addr, align 8
  %bitspersample32 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %16, i64 0, i32 6
  %17 = load i16, ptr %bitspersample32, align 8
  %cmp34 = icmp eq i16 %17, 8
  br i1 %cmp34, label %if.then36, label %if.end68

if.then36:                                        ; preds = %sw.bb31
  %18 = load ptr, ptr %img.addr, align 8
  %Map37 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %18, i64 0, i32 15
  %19 = load ptr, ptr %Map37, align 8
  %tobool38.not = icmp eq ptr %19, null
  %putRGBcontig8bitCMYKtile.putRGBcontig8bitCMYKMaptile = select i1 %tobool38.not, ptr @putRGBcontig8bitCMYKtile, ptr @putRGBcontig8bitCMYKMaptile
  store ptr %putRGBcontig8bitCMYKtile.putRGBcontig8bitCMYKMaptile, ptr %put, align 8
  br label %if.end68

sw.bb43:                                          ; preds = %if.then
  %20 = load ptr, ptr %img.addr, align 8
  %bitspersample44 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %20, i64 0, i32 6
  %21 = load i16, ptr %bitspersample44, align 8
  switch i16 %21, label %if.end68 [
    i16 8, label %sw.bb46
    i16 4, label %sw.bb47
    i16 2, label %sw.bb48
    i16 1, label %sw.bb49
  ]

sw.bb46:                                          ; preds = %sw.bb43
  store ptr @put8bitcmaptile, ptr %put, align 8
  br label %if.end68

sw.bb47:                                          ; preds = %sw.bb43
  store ptr @put4bitcmaptile, ptr %put, align 8
  br label %if.end68

sw.bb48:                                          ; preds = %sw.bb43
  store ptr @put2bitcmaptile, ptr %put, align 8
  br label %if.end68

sw.bb49:                                          ; preds = %sw.bb43
  store ptr @put1bitcmaptile, ptr %put, align 8
  br label %if.end68

sw.bb51:                                          ; preds = %if.then, %if.then
  %22 = load ptr, ptr %img.addr, align 8
  %bitspersample52 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %22, i64 0, i32 6
  %23 = load i16, ptr %bitspersample52, align 8
  switch i16 %23, label %if.end68 [
    i16 8, label %sw.bb54
    i16 4, label %sw.bb55
    i16 2, label %sw.bb56
    i16 1, label %sw.bb57
  ]

sw.bb54:                                          ; preds = %sw.bb51
  store ptr @putgreytile, ptr %put, align 8
  br label %if.end68

sw.bb55:                                          ; preds = %sw.bb51
  store ptr @put4bitbwtile, ptr %put, align 8
  br label %if.end68

sw.bb56:                                          ; preds = %sw.bb51
  store ptr @put2bitbwtile, ptr %put, align 8
  br label %if.end68

sw.bb57:                                          ; preds = %sw.bb51
  store ptr @put1bitbwtile, ptr %put, align 8
  br label %if.end68

sw.bb59:                                          ; preds = %if.then
  %24 = load ptr, ptr %img.addr, align 8
  %bitspersample60 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %24, i64 0, i32 6
  %25 = load i16, ptr %bitspersample60, align 8
  %cmp62 = icmp eq i16 %25, 8
  br i1 %cmp62, label %if.then64, label %if.end68

if.then64:                                        ; preds = %sw.bb59
  %26 = load ptr, ptr %img.addr, align 8
  %call65 = call ptr @initYCbCrConversion(ptr noundef %26)
  store ptr %call65, ptr %put, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then, %sw.bb15, %if.else23, %if.then27, %if.then22, %if.end14, %sw.bb, %if.then36, %sw.bb31, %sw.bb49, %sw.bb48, %sw.bb47, %sw.bb46, %sw.bb43, %sw.bb57, %sw.bb56, %sw.bb55, %sw.bb54, %sw.bb51, %if.then64, %sw.bb59, %entry
  %27 = load ptr, ptr %put, align 8
  %28 = load ptr, ptr %img.addr, align 8
  %put69 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %28, i64 0, i32 14
  store ptr %27, ptr %put69, align 8
  %cmp70 = icmp ne ptr %27, null
  %conv71 = zext i1 %cmp70 to i32
  ret i32 %conv71
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @gtTileSeparate(ptr noundef %img, ptr noundef %raster, i64 noundef %w, i64 noundef %h) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %raster.addr = alloca ptr, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %tif = alloca ptr, align 8
  %put = alloca ptr, align 8
  %orientation = alloca i16, align 2
  %col = alloca i64, align 8
  %row = alloca i64, align 8
  %y = alloca i64, align 8
  %tw = alloca i64, align 8
  %th = alloca i64, align 8
  %buf = alloca ptr, align 8
  %r = alloca ptr, align 8
  %g = alloca ptr, align 8
  %b = alloca ptr, align 8
  %a = alloca ptr, align 8
  %tilesize = alloca i64, align 8
  %fromskew = alloca i64, align 8
  %toskew = alloca i64, align 8
  %alpha = alloca i32, align 4
  %nrow = alloca i64, align 8
  %npix = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %raster, ptr %raster.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  %0 = load ptr, ptr %img, align 8
  store ptr %0, ptr %tif, align 8
  %put2 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 14
  %1 = load ptr, ptr %put2, align 8
  store ptr %1, ptr %put, align 8
  %2 = load ptr, ptr %img.addr, align 8
  %alpha3 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i64 0, i32 3
  %3 = load i32, ptr %alpha3, align 8
  store i32 %3, ptr %alpha, align 4
  %4 = load ptr, ptr %tif, align 8
  %call = call i64 @TIFFTileSize(ptr noundef %4) #4
  store i64 %call, ptr %tilesize, align 8
  %mul = shl nsw i64 %call, 2
  %call4 = call ptr @_TIFFmalloc(i64 noundef %mul) #4
  store ptr %call4, ptr %buf, align 8
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %tif, align 8
  %call5 = call ptr @TIFFFileName(ptr noundef %5) #4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call5, ptr noundef nonnull @.str.24) #4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %buf, align 8
  store ptr %6, ptr %r, align 8
  %7 = load i64, ptr %tilesize, align 8
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %7
  store ptr %add.ptr, ptr %g, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %add.ptr, i64 %7
  store ptr %add.ptr6, ptr %b, align 8
  %add.ptr7 = getelementptr inbounds i8, ptr %add.ptr6, i64 %7
  store ptr %add.ptr7, ptr %a, align 8
  %8 = load i32, ptr %alpha, align 4
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %9 = load ptr, ptr %a, align 8
  %10 = load i64, ptr %tilesize, align 8
  %11 = call i64 @llvm.objectsize.i64.p0(ptr %9, i1 false, i1 true, i1 false)
  %call9 = call ptr @__memset_chk(ptr noundef %9, i32 noundef 255, i64 noundef %10, i64 noundef %11) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  %12 = load ptr, ptr %tif, align 8
  %call11 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %12, i64 noundef 322, ptr noundef nonnull %tw) #4
  %call12 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %12, i64 noundef 323, ptr noundef nonnull %th) #4
  %13 = load ptr, ptr %img.addr, align 8
  %14 = load i64, ptr %h.addr, align 8
  %call13 = call i64 @setorientation(ptr noundef %13, i64 noundef %14)
  store i64 %call13, ptr %y, align 8
  %orientation14 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %13, i64 0, i32 8
  %15 = load i16, ptr %orientation14, align 4
  store i16 %15, ptr %orientation, align 2
  %cmp15 = icmp eq i16 %15, 1
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end10
  %16 = load i64, ptr %tw, align 8
  %17 = load i64, ptr %w.addr, align 8
  %add = add i64 %16, %17
  br label %cond.end

cond.false:                                       ; preds = %if.end10
  %18 = load i64, ptr %tw, align 8
  %19 = load i64, ptr %w.addr, align 8
  %sub = sub i64 %18, %19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add, %cond.true ], [ %sub, %cond.false ]
  %sub17 = sub nsw i64 0, %cond
  store i64 %sub17, ptr %toskew, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end, %cond.end
  %storemerge = phi i64 [ 0, %cond.end ], [ %add111, %for.end ]
  store i64 %storemerge, ptr %row, align 8
  %20 = load i64, ptr %h.addr, align 8
  %cmp18 = icmp ult i64 %storemerge, %20
  br i1 %cmp18, label %for.body, label %for.end112

for.body:                                         ; preds = %for.cond
  %21 = load i64, ptr %row, align 8
  %22 = load i64, ptr %th, align 8
  %add20 = add i64 %21, %22
  %23 = load i64, ptr %h.addr, align 8
  %cmp21 = icmp ugt i64 %add20, %23
  %24 = load i64, ptr %h.addr, align 8
  %25 = load i64, ptr %row, align 8
  %sub24 = sub i64 %24, %25
  %26 = load i64, ptr %th, align 8
  %cond27 = select i1 %cmp21, i64 %sub24, i64 %26
  store i64 %cond27, ptr %nrow, align 8
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc, %for.body
  %storemerge2 = phi i64 [ 0, %for.body ], [ %add100, %for.inc ]
  store i64 %storemerge2, ptr %col, align 8
  %27 = load i64, ptr %w.addr, align 8
  %cmp29 = icmp ult i64 %storemerge2, %27
  br i1 %cmp29, label %for.body31, label %for.end

for.body31:                                       ; preds = %for.cond28
  %28 = load ptr, ptr %tif, align 8
  %29 = load ptr, ptr %r, align 8
  %30 = load i64, ptr %col, align 8
  %31 = load ptr, ptr %img.addr, align 8
  %col_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %31, i64 0, i32 20
  %32 = load i32, ptr %col_offset, align 4
  %conv32 = sext i32 %32 to i64
  %add33 = add i64 %30, %conv32
  %33 = load i64, ptr %row, align 8
  %row_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %31, i64 0, i32 19
  %34 = load i32, ptr %row_offset, align 8
  %conv34 = sext i32 %34 to i64
  %add35 = add i64 %33, %conv34
  %call36 = call i64 @TIFFReadTile(ptr noundef %28, ptr noundef %29, i64 noundef %add33, i64 noundef %add35, i64 noundef 0, i16 noundef zeroext 0) #4
  %cmp37 = icmp slt i64 %call36, 0
  br i1 %cmp37, label %land.lhs.true, label %if.end41

land.lhs.true:                                    ; preds = %for.body31
  %35 = load ptr, ptr %img.addr, align 8
  %stoponerr = getelementptr inbounds %struct._TIFFRGBAImage, ptr %35, i64 0, i32 1
  %36 = load i32, ptr %stoponerr, align 8
  %tobool39.not = icmp eq i32 %36, 0
  br i1 %tobool39.not, label %if.end41, label %for.end

if.end41:                                         ; preds = %land.lhs.true, %for.body31
  %37 = load ptr, ptr %tif, align 8
  %38 = load ptr, ptr %g, align 8
  %39 = load i64, ptr %col, align 8
  %40 = load ptr, ptr %img.addr, align 8
  %col_offset42 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %40, i64 0, i32 20
  %41 = load i32, ptr %col_offset42, align 4
  %conv43 = sext i32 %41 to i64
  %add44 = add i64 %39, %conv43
  %42 = load i64, ptr %row, align 8
  %row_offset45 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %40, i64 0, i32 19
  %43 = load i32, ptr %row_offset45, align 8
  %conv46 = sext i32 %43 to i64
  %add47 = add i64 %42, %conv46
  %call48 = call i64 @TIFFReadTile(ptr noundef %37, ptr noundef %38, i64 noundef %add44, i64 noundef %add47, i64 noundef 0, i16 noundef zeroext 1) #4
  %cmp49 = icmp slt i64 %call48, 0
  br i1 %cmp49, label %land.lhs.true51, label %if.end55

land.lhs.true51:                                  ; preds = %if.end41
  %44 = load ptr, ptr %img.addr, align 8
  %stoponerr52 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %44, i64 0, i32 1
  %45 = load i32, ptr %stoponerr52, align 8
  %tobool53.not = icmp eq i32 %45, 0
  br i1 %tobool53.not, label %if.end55, label %for.end

if.end55:                                         ; preds = %land.lhs.true51, %if.end41
  %46 = load ptr, ptr %tif, align 8
  %47 = load ptr, ptr %b, align 8
  %48 = load i64, ptr %col, align 8
  %49 = load ptr, ptr %img.addr, align 8
  %col_offset56 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %49, i64 0, i32 20
  %50 = load i32, ptr %col_offset56, align 4
  %conv57 = sext i32 %50 to i64
  %add58 = add i64 %48, %conv57
  %51 = load i64, ptr %row, align 8
  %row_offset59 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %49, i64 0, i32 19
  %52 = load i32, ptr %row_offset59, align 8
  %conv60 = sext i32 %52 to i64
  %add61 = add i64 %51, %conv60
  %call62 = call i64 @TIFFReadTile(ptr noundef %46, ptr noundef %47, i64 noundef %add58, i64 noundef %add61, i64 noundef 0, i16 noundef zeroext 2) #4
  %cmp63 = icmp slt i64 %call62, 0
  br i1 %cmp63, label %land.lhs.true65, label %if.end69

land.lhs.true65:                                  ; preds = %if.end55
  %53 = load ptr, ptr %img.addr, align 8
  %stoponerr66 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %53, i64 0, i32 1
  %54 = load i32, ptr %stoponerr66, align 8
  %tobool67.not = icmp eq i32 %54, 0
  br i1 %tobool67.not, label %if.end69, label %for.end

if.end69:                                         ; preds = %land.lhs.true65, %if.end55
  %55 = load i32, ptr %alpha, align 4
  %tobool70.not = icmp eq i32 %55, 0
  br i1 %tobool70.not, label %if.end85, label %land.lhs.true71

land.lhs.true71:                                  ; preds = %if.end69
  %56 = load ptr, ptr %tif, align 8
  %57 = load ptr, ptr %a, align 8
  %58 = load i64, ptr %col, align 8
  %59 = load ptr, ptr %img.addr, align 8
  %col_offset72 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %59, i64 0, i32 20
  %60 = load i32, ptr %col_offset72, align 4
  %conv73 = sext i32 %60 to i64
  %add74 = add i64 %58, %conv73
  %61 = load i64, ptr %row, align 8
  %row_offset75 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %59, i64 0, i32 19
  %62 = load i32, ptr %row_offset75, align 8
  %conv76 = sext i32 %62 to i64
  %add77 = add i64 %61, %conv76
  %call78 = call i64 @TIFFReadTile(ptr noundef %56, ptr noundef %57, i64 noundef %add74, i64 noundef %add77, i64 noundef 0, i16 noundef zeroext 3) #4
  %cmp79 = icmp slt i64 %call78, 0
  br i1 %cmp79, label %land.lhs.true81, label %if.end85

land.lhs.true81:                                  ; preds = %land.lhs.true71
  %63 = load ptr, ptr %img.addr, align 8
  %stoponerr82 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %63, i64 0, i32 1
  %64 = load i32, ptr %stoponerr82, align 8
  %tobool83.not = icmp eq i32 %64, 0
  br i1 %tobool83.not, label %if.end85, label %for.end

if.end85:                                         ; preds = %land.lhs.true81, %land.lhs.true71, %if.end69
  %65 = load i64, ptr %col, align 8
  %66 = load i64, ptr %tw, align 8
  %add86 = add i64 %65, %66
  %67 = load i64, ptr %w.addr, align 8
  %cmp87 = icmp ugt i64 %add86, %67
  br i1 %cmp87, label %if.then89, label %if.else

if.then89:                                        ; preds = %if.end85
  %68 = load i64, ptr %w.addr, align 8
  %69 = load i64, ptr %col, align 8
  %sub90 = sub i64 %68, %69
  store i64 %sub90, ptr %npix, align 8
  %70 = load i64, ptr %tw, align 8
  %sub91 = sub i64 %70, %sub90
  store i64 %sub91, ptr %fromskew, align 8
  %71 = load ptr, ptr %put, align 8
  %72 = load ptr, ptr %img.addr, align 8
  %73 = load ptr, ptr %raster.addr, align 8
  %74 = load i64, ptr %y, align 8
  %75 = load i64, ptr %w.addr, align 8
  %mul92 = mul i64 %74, %75
  %add.ptr93 = getelementptr inbounds i64, ptr %73, i64 %mul92
  %76 = load i64, ptr %col, align 8
  %add.ptr94 = getelementptr inbounds i64, ptr %add.ptr93, i64 %76
  %77 = load i64, ptr %npix, align 8
  %78 = load i64, ptr %nrow, align 8
  %79 = load i64, ptr %fromskew, align 8
  %80 = load i64, ptr %toskew, align 8
  %add95 = add nsw i64 %80, %79
  %81 = load ptr, ptr %r, align 8
  %82 = load ptr, ptr %g, align 8
  %83 = load ptr, ptr %b, align 8
  %84 = load ptr, ptr %a, align 8
  call void %71(ptr noundef %72, ptr noundef %add.ptr94, i64 noundef %76, i64 noundef %74, i64 noundef %77, i64 noundef %78, i64 noundef %79, i64 noundef %add95, ptr noundef %81, ptr noundef %82, ptr noundef %83, ptr noundef %84) #4
  br label %for.inc

if.else:                                          ; preds = %if.end85
  %85 = load ptr, ptr %put, align 8
  %86 = load ptr, ptr %img.addr, align 8
  %87 = load ptr, ptr %raster.addr, align 8
  %88 = load i64, ptr %y, align 8
  %89 = load i64, ptr %w.addr, align 8
  %mul96 = mul i64 %88, %89
  %add.ptr97 = getelementptr inbounds i64, ptr %87, i64 %mul96
  %90 = load i64, ptr %col, align 8
  %add.ptr98 = getelementptr inbounds i64, ptr %add.ptr97, i64 %90
  %91 = load i64, ptr %tw, align 8
  %92 = load i64, ptr %nrow, align 8
  %93 = load i64, ptr %toskew, align 8
  %94 = load ptr, ptr %r, align 8
  %95 = load ptr, ptr %g, align 8
  %96 = load ptr, ptr %b, align 8
  %97 = load ptr, ptr %a, align 8
  call void %85(ptr noundef %86, ptr noundef %add.ptr98, i64 noundef %90, i64 noundef %88, i64 noundef %91, i64 noundef %92, i64 noundef 0, i64 noundef %93, ptr noundef %94, ptr noundef %95, ptr noundef %96, ptr noundef %97) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then89, %if.else
  %98 = load i64, ptr %tw, align 8
  %99 = load i64, ptr %col, align 8
  %add100 = add i64 %99, %98
  br label %for.cond28, !llvm.loop !10

for.end:                                          ; preds = %land.lhs.true81, %land.lhs.true65, %land.lhs.true51, %land.lhs.true, %for.cond28
  %100 = load i16, ptr %orientation, align 2
  %cmp102 = icmp eq i16 %100, 1
  %101 = load i64, ptr %nrow, align 8
  %sub105 = sub nsw i64 0, %101
  %102 = load i64, ptr %nrow, align 8
  %cond108 = select i1 %cmp102, i64 %sub105, i64 %102
  %103 = load i64, ptr %y, align 8
  %add109 = add i64 %103, %cond108
  store i64 %add109, ptr %y, align 8
  %104 = load i64, ptr %th, align 8
  %105 = load i64, ptr %row, align 8
  %add111 = add i64 %105, %104
  br label %for.cond, !llvm.loop !11

for.end112:                                       ; preds = %for.cond
  %106 = load ptr, ptr %buf, align 8
  call void @_TIFFfree(ptr noundef %106) #4
  br label %return

return:                                           ; preds = %for.end112, %if.then
  %storemerge1 = phi i32 [ 1, %for.end112 ], [ 0, %if.then ]
  ret i32 %storemerge1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @gtStripSeparate(ptr noundef %img, ptr noundef %raster, i64 noundef %w, i64 noundef %h) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %raster.addr = alloca ptr, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %tif = alloca ptr, align 8
  %put = alloca ptr, align 8
  %orientation = alloca i16, align 2
  %buf = alloca ptr, align 8
  %r = alloca ptr, align 8
  %g = alloca ptr, align 8
  %b = alloca ptr, align 8
  %a = alloca ptr, align 8
  %row = alloca i64, align 8
  %y = alloca i64, align 8
  %nrow = alloca i64, align 8
  %scanline = alloca i64, align 8
  %rowsperstrip = alloca i64, align 8
  %offset_row = alloca i64, align 8
  %imagewidth = alloca i64, align 8
  %stripsize = alloca i64, align 8
  %fromskew = alloca i64, align 8
  %toskew = alloca i64, align 8
  %alpha = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %raster, ptr %raster.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  %0 = load ptr, ptr %img, align 8
  store ptr %0, ptr %tif, align 8
  %put2 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 14
  %1 = load ptr, ptr %put2, align 8
  store ptr %1, ptr %put, align 8
  %2 = load ptr, ptr %img.addr, align 8
  %width = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i64 0, i32 4
  %3 = load i64, ptr %width, align 8
  store i64 %3, ptr %imagewidth, align 8
  %alpha3 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i64 0, i32 3
  %4 = load i32, ptr %alpha3, align 8
  store i32 %4, ptr %alpha, align 4
  %5 = load ptr, ptr %tif, align 8
  %call = call i64 @TIFFStripSize(ptr noundef %5) #4
  store i64 %call, ptr %stripsize, align 8
  %mul = shl nsw i64 %call, 2
  %call4 = call ptr @_TIFFmalloc(i64 noundef %mul) #4
  store ptr %call4, ptr %buf, align 8
  store ptr %call4, ptr %r, align 8
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %tif, align 8
  %call5 = call ptr @TIFFFileName(ptr noundef %6) #4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call5, ptr noundef nonnull @.str.24) #4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %r, align 8
  %8 = load i64, ptr %stripsize, align 8
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %8
  store ptr %add.ptr, ptr %g, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %add.ptr, i64 %8
  store ptr %add.ptr6, ptr %b, align 8
  %add.ptr7 = getelementptr inbounds i8, ptr %add.ptr6, i64 %8
  store ptr %add.ptr7, ptr %a, align 8
  %9 = load i32, ptr %alpha, align 4
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %10 = load ptr, ptr %a, align 8
  %11 = load i64, ptr %stripsize, align 8
  %12 = call i64 @llvm.objectsize.i64.p0(ptr %10, i1 false, i1 true, i1 false)
  %call9 = call ptr @__memset_chk(ptr noundef %10, i32 noundef 255, i64 noundef %11, i64 noundef %12) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  %13 = load ptr, ptr %img.addr, align 8
  %14 = load i64, ptr %h.addr, align 8
  %call11 = call i64 @setorientation(ptr noundef %13, i64 noundef %14)
  store i64 %call11, ptr %y, align 8
  %orientation12 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %13, i64 0, i32 8
  %15 = load i16, ptr %orientation12, align 4
  store i16 %15, ptr %orientation, align 2
  %cmp13 = icmp eq i16 %15, 1
  %16 = load i64, ptr %w.addr, align 8
  %add.neg = mul i64 %16, -2
  %cond.neg = select i1 %cmp13, i64 %add.neg, i64 0
  store i64 %cond.neg, ptr %toskew, align 8
  %17 = load ptr, ptr %tif, align 8
  %call16 = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %17, i64 noundef 278, ptr noundef nonnull %rowsperstrip) #4
  %call17 = call i64 @TIFFScanlineSize(ptr noundef %17) #4
  store i64 %call17, ptr %scanline, align 8
  %18 = load i64, ptr %w.addr, align 8
  %19 = load i64, ptr %imagewidth, align 8
  %cmp18 = icmp ult i64 %18, %19
  %20 = load i64, ptr %imagewidth, align 8
  %21 = load i64, ptr %w.addr, align 8
  %sub21 = sub i64 %20, %21
  %cond24 = select i1 %cmp18, i64 %sub21, i64 0
  store i64 %cond24, ptr %fromskew, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end76, %if.end10
  %storemerge = phi i64 [ 0, %if.end10 ], [ %add88, %if.end76 ]
  store i64 %storemerge, ptr %row, align 8
  %22 = load i64, ptr %h.addr, align 8
  %cmp25 = icmp ult i64 %storemerge, %22
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i64, ptr %row, align 8
  %24 = load i64, ptr %rowsperstrip, align 8
  %add27 = add i64 %23, %24
  %25 = load i64, ptr %h.addr, align 8
  %cmp28 = icmp ugt i64 %add27, %25
  %26 = load i64, ptr %h.addr, align 8
  %27 = load i64, ptr %row, align 8
  %sub31 = sub i64 %26, %27
  %28 = load i64, ptr %rowsperstrip, align 8
  %cond34 = select i1 %cmp28, i64 %sub31, i64 %28
  store i64 %cond34, ptr %nrow, align 8
  %29 = load i64, ptr %row, align 8
  %30 = load ptr, ptr %img.addr, align 8
  %row_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %30, i64 0, i32 19
  %31 = load i32, ptr %row_offset, align 8
  %conv35 = sext i32 %31 to i64
  %add36 = add i64 %29, %conv35
  store i64 %add36, ptr %offset_row, align 8
  %32 = load ptr, ptr %tif, align 8
  %call37 = call i64 @TIFFComputeStrip(ptr noundef %32, i64 noundef %add36, i16 noundef zeroext 0) #4
  %33 = load ptr, ptr %r, align 8
  %34 = load i64, ptr %nrow, align 8
  %35 = load i64, ptr %scanline, align 8
  %mul38 = mul i64 %34, %35
  %call39 = call i64 @TIFFReadEncodedStrip(ptr noundef %32, i64 noundef %call37, ptr noundef %33, i64 noundef %mul38) #4
  %cmp40 = icmp slt i64 %call39, 0
  br i1 %cmp40, label %land.lhs.true, label %if.end44

land.lhs.true:                                    ; preds = %for.body
  %36 = load ptr, ptr %img.addr, align 8
  %stoponerr = getelementptr inbounds %struct._TIFFRGBAImage, ptr %36, i64 0, i32 1
  %37 = load i32, ptr %stoponerr, align 8
  %tobool42.not = icmp eq i32 %37, 0
  br i1 %tobool42.not, label %if.end44, label %for.end

if.end44:                                         ; preds = %land.lhs.true, %for.body
  %38 = load ptr, ptr %tif, align 8
  %39 = load i64, ptr %offset_row, align 8
  %call45 = call i64 @TIFFComputeStrip(ptr noundef %38, i64 noundef %39, i16 noundef zeroext 1) #4
  %40 = load ptr, ptr %g, align 8
  %41 = load i64, ptr %nrow, align 8
  %42 = load i64, ptr %scanline, align 8
  %mul46 = mul i64 %41, %42
  %call47 = call i64 @TIFFReadEncodedStrip(ptr noundef %38, i64 noundef %call45, ptr noundef %40, i64 noundef %mul46) #4
  %cmp48 = icmp slt i64 %call47, 0
  br i1 %cmp48, label %land.lhs.true50, label %if.end54

land.lhs.true50:                                  ; preds = %if.end44
  %43 = load ptr, ptr %img.addr, align 8
  %stoponerr51 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %43, i64 0, i32 1
  %44 = load i32, ptr %stoponerr51, align 8
  %tobool52.not = icmp eq i32 %44, 0
  br i1 %tobool52.not, label %if.end54, label %for.end

if.end54:                                         ; preds = %land.lhs.true50, %if.end44
  %45 = load ptr, ptr %tif, align 8
  %46 = load i64, ptr %offset_row, align 8
  %call55 = call i64 @TIFFComputeStrip(ptr noundef %45, i64 noundef %46, i16 noundef zeroext 2) #4
  %47 = load ptr, ptr %b, align 8
  %48 = load i64, ptr %nrow, align 8
  %49 = load i64, ptr %scanline, align 8
  %mul56 = mul i64 %48, %49
  %call57 = call i64 @TIFFReadEncodedStrip(ptr noundef %45, i64 noundef %call55, ptr noundef %47, i64 noundef %mul56) #4
  %cmp58 = icmp slt i64 %call57, 0
  br i1 %cmp58, label %land.lhs.true60, label %if.end64

land.lhs.true60:                                  ; preds = %if.end54
  %50 = load ptr, ptr %img.addr, align 8
  %stoponerr61 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %50, i64 0, i32 1
  %51 = load i32, ptr %stoponerr61, align 8
  %tobool62.not = icmp eq i32 %51, 0
  br i1 %tobool62.not, label %if.end64, label %for.end

if.end64:                                         ; preds = %land.lhs.true60, %if.end54
  %52 = load i32, ptr %alpha, align 4
  %tobool65.not = icmp eq i32 %52, 0
  br i1 %tobool65.not, label %if.end76, label %land.lhs.true66

land.lhs.true66:                                  ; preds = %if.end64
  %53 = load ptr, ptr %tif, align 8
  %54 = load i64, ptr %offset_row, align 8
  %call67 = call i64 @TIFFComputeStrip(ptr noundef %53, i64 noundef %54, i16 noundef zeroext 3) #4
  %55 = load ptr, ptr %a, align 8
  %56 = load i64, ptr %nrow, align 8
  %57 = load i64, ptr %scanline, align 8
  %mul68 = mul i64 %56, %57
  %call69 = call i64 @TIFFReadEncodedStrip(ptr noundef %53, i64 noundef %call67, ptr noundef %55, i64 noundef %mul68) #4
  %cmp70 = icmp slt i64 %call69, 0
  br i1 %cmp70, label %land.lhs.true72, label %if.end76

land.lhs.true72:                                  ; preds = %land.lhs.true66
  %58 = load ptr, ptr %img.addr, align 8
  %stoponerr73 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %58, i64 0, i32 1
  %59 = load i32, ptr %stoponerr73, align 8
  %tobool74.not = icmp eq i32 %59, 0
  br i1 %tobool74.not, label %if.end76, label %for.end

if.end76:                                         ; preds = %land.lhs.true72, %land.lhs.true66, %if.end64
  %60 = load ptr, ptr %put, align 8
  %61 = load ptr, ptr %img.addr, align 8
  %62 = load ptr, ptr %raster.addr, align 8
  %63 = load i64, ptr %y, align 8
  %64 = load i64, ptr %w.addr, align 8
  %mul77 = mul i64 %63, %64
  %add.ptr78 = getelementptr inbounds i64, ptr %62, i64 %mul77
  %65 = load i64, ptr %nrow, align 8
  %66 = load i64, ptr %fromskew, align 8
  %67 = load i64, ptr %toskew, align 8
  %68 = load ptr, ptr %r, align 8
  %69 = load ptr, ptr %g, align 8
  %70 = load ptr, ptr %b, align 8
  %71 = load ptr, ptr %a, align 8
  call void %60(ptr noundef %61, ptr noundef %add.ptr78, i64 noundef 0, i64 noundef %63, i64 noundef %64, i64 noundef %65, i64 noundef %66, i64 noundef %67, ptr noundef %68, ptr noundef %69, ptr noundef %70, ptr noundef %71) #4
  %72 = load i16, ptr %orientation, align 2
  %cmp80 = icmp eq i16 %72, 1
  %73 = load i64, ptr %nrow, align 8
  %sub83 = sub nsw i64 0, %73
  %74 = load i64, ptr %nrow, align 8
  %cond86 = select i1 %cmp80, i64 %sub83, i64 %74
  %75 = load i64, ptr %y, align 8
  %add87 = add i64 %75, %cond86
  store i64 %add87, ptr %y, align 8
  %76 = load i64, ptr %rowsperstrip, align 8
  %77 = load i64, ptr %row, align 8
  %add88 = add i64 %77, %76
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %land.lhs.true72, %land.lhs.true60, %land.lhs.true50, %land.lhs.true, %for.cond
  %78 = load ptr, ptr %buf, align 8
  call void @_TIFFfree(ptr noundef %78) #4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %storemerge1 = phi i32 [ 1, %for.end ], [ 0, %if.then ]
  ret i32 %storemerge1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @pickTileSeparateCase(ptr noundef %img) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %put = alloca ptr, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr null, ptr %put, align 8
  %call = call i32 @buildMap(ptr noundef %img)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end32, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %img.addr, align 8
  %photometric = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 9
  %1 = load i16, ptr %photometric, align 2
  %cond = icmp eq i16 %1, 2
  br i1 %cond, label %sw.bb, label %if.end32

sw.bb:                                            ; preds = %if.then
  %2 = load ptr, ptr %img.addr, align 8
  %bitspersample = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i64 0, i32 6
  %3 = load i16, ptr %bitspersample, align 8
  switch i16 %3, label %if.end32 [
    i16 8, label %sw.bb2
    i16 16, label %sw.bb15
  ]

sw.bb2:                                           ; preds = %sw.bb
  %4 = load ptr, ptr %img.addr, align 8
  %Map = getelementptr inbounds %struct._TIFFRGBAImage, ptr %4, i64 0, i32 15
  %5 = load ptr, ptr %Map, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.then4, label %if.end14

if.then4:                                         ; preds = %sw.bb2
  %6 = load ptr, ptr %img.addr, align 8
  %alpha = getelementptr inbounds %struct._TIFFRGBAImage, ptr %6, i64 0, i32 3
  %7 = load i32, ptr %alpha, align 8
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.end14, label %if.else

if.else:                                          ; preds = %if.then4
  %8 = load ptr, ptr %img.addr, align 8
  %alpha7 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %8, i64 0, i32 3
  %9 = load i32, ptr %alpha7, align 8
  %cmp8 = icmp eq i32 %9, 2
  %putRGBUAseparate8bittile.putRGBseparate8bittile = select i1 %cmp8, ptr @putRGBUAseparate8bittile, ptr @putRGBseparate8bittile
  br label %if.end14

if.end14:                                         ; preds = %sw.bb2, %if.else, %if.then4
  %storemerge2 = phi ptr [ %putRGBUAseparate8bittile.putRGBseparate8bittile, %if.else ], [ @putRGBAAseparate8bittile, %if.then4 ], [ @putRGBseparate8bitMaptile, %sw.bb2 ]
  store ptr %storemerge2, ptr %put, align 8
  br label %if.end32

sw.bb15:                                          ; preds = %sw.bb
  store ptr @putRGBseparate16bittile, ptr %put, align 8
  %10 = load ptr, ptr %img.addr, align 8
  %Map16 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %10, i64 0, i32 15
  %11 = load ptr, ptr %Map16, align 8
  %tobool17.not = icmp eq ptr %11, null
  br i1 %tobool17.not, label %if.then18, label %if.end32

if.then18:                                        ; preds = %sw.bb15
  %12 = load ptr, ptr %img.addr, align 8
  %alpha19 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %12, i64 0, i32 3
  %13 = load i32, ptr %alpha19, align 8
  %cmp20 = icmp eq i32 %13, 1
  br i1 %cmp20, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.then18
  store ptr @putRGBAAseparate16bittile, ptr %put, align 8
  br label %if.end32

if.else23:                                        ; preds = %if.then18
  %14 = load ptr, ptr %img.addr, align 8
  %alpha24 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %14, i64 0, i32 3
  %15 = load i32, ptr %alpha24, align 8
  %cmp25 = icmp eq i32 %15, 2
  br i1 %cmp25, label %if.then27, label %if.end32

if.then27:                                        ; preds = %if.else23
  store ptr @putRGBUAseparate16bittile, ptr %put, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then, %sw.bb15, %if.else23, %if.then27, %if.then22, %if.end14, %sw.bb, %entry
  %16 = load ptr, ptr %put, align 8
  %17 = load ptr, ptr %img.addr, align 8
  %put33 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %17, i64 0, i32 14
  store ptr %16, ptr %put33, align 8
  %cmp34 = icmp ne ptr %16, null
  %conv35 = zext i1 %cmp34 to i32
  ret i32 %conv35
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFRGBAImageGet(ptr noundef %img, ptr noundef %raster, i64 noundef %w, i64 noundef %h) #0 {
entry:
  %retval = alloca i32, align 4
  %img.addr = alloca ptr, align 8
  %raster.addr = alloca ptr, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %raster, ptr %raster.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  %get = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 13
  %0 = load ptr, ptr %get, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %img.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %call = call ptr @TIFFFileName(ptr noundef %2) #4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call, ptr noundef nonnull @.str.18) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %img.addr, align 8
  %put = getelementptr inbounds %struct._TIFFRGBAImage, ptr %3, i64 0, i32 14
  %4 = load ptr, ptr %put, align 8
  %cmp1 = icmp eq ptr %4, null
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %img.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %call4 = call ptr @TIFFFileName(ptr noundef %6) #4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call4, ptr noundef nonnull @.str.19) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %img.addr, align 8
  %get6 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %7, i64 0, i32 13
  %8 = load ptr, ptr %get6, align 8
  %9 = load ptr, ptr %raster.addr, align 8
  %10 = load i64, ptr %w.addr, align 8
  %11 = load i64, ptr %h.addr, align 8
  %call7 = call i32 %8(ptr noundef %7, ptr noundef %9, i64 noundef %10, i64 noundef %11) #4
  store i32 %call7, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then2, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFReadRGBAImage(ptr noundef %tif, i64 noundef %rwidth, i64 noundef %rheight, ptr noundef %raster, i32 noundef %stop) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %rwidth.addr = alloca i64, align 8
  %rheight.addr = alloca i64, align 8
  %raster.addr = alloca ptr, align 8
  %emsg = alloca [1024 x i8], align 1
  %img = alloca %struct._TIFFRGBAImage, align 8
  %ok = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %rwidth, ptr %rwidth.addr, align 8
  store i64 %rheight, ptr %rheight.addr, align 8
  store ptr %raster, ptr %raster.addr, align 8
  %call = call i32 @TIFFRGBAImageBegin(ptr noundef nonnull %img, ptr noundef %tif, i32 noundef %stop, ptr noundef nonnull %emsg)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %raster.addr, align 8
  %1 = load i64, ptr %rheight.addr, align 8
  %height = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 5
  %2 = load i64, ptr %height, align 8
  %sub = sub i64 %1, %2
  %3 = load i64, ptr %rwidth.addr, align 8
  %mul = mul i64 %sub, %3
  %add.ptr = getelementptr inbounds i64, ptr %0, i64 %mul
  %call2 = call i32 @TIFFRGBAImageGet(ptr noundef nonnull %img, ptr noundef %add.ptr, i64 noundef %3, i64 noundef %2)
  store i32 %call2, ptr %ok, align 4
  call void @TIFFRGBAImageEnd(ptr noundef nonnull %img)
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %tif.addr, align 8
  %call3 = call ptr @TIFFFileName(ptr noundef %4) #4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call3, ptr noundef nonnull %emsg) #4
  store i32 0, ptr %ok, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, ptr %ok, align 4
  ret i32 %5
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFReadRGBAStrip(ptr noundef %tif, i64 noundef %row, ptr noundef %raster) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %row.addr = alloca i64, align 8
  %raster.addr = alloca ptr, align 8
  %emsg = alloca [1024 x i8], align 1
  %img = alloca %struct._TIFFRGBAImage, align 8
  %ok = alloca i32, align 4
  %rowsperstrip = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %row, ptr %row.addr, align 8
  store ptr %raster, ptr %raster.addr, align 8
  %call = call i32 @TIFFIsTiled(ptr noundef %tif) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %tif.addr, align 8
  %call1 = call ptr @TIFFFileName(ptr noundef %0) #4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call1, ptr noundef nonnull @.str.20) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %call2 = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %1, i64 noundef 278, ptr noundef nonnull %rowsperstrip) #4
  %2 = load i64, ptr %row.addr, align 8
  %3 = load i64, ptr %rowsperstrip, align 8
  %rem = urem i64 %2, %3
  %cmp.not = icmp eq i64 %rem, 0
  br i1 %cmp.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %tif.addr, align 8
  %call4 = call ptr @TIFFFileName(ptr noundef %4) #4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call4, ptr noundef nonnull @.str.21) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %5 = load ptr, ptr %tif.addr, align 8
  %call6 = call i32 @TIFFRGBAImageBegin(ptr noundef nonnull %img, ptr noundef %5, i32 noundef 0, ptr noundef nonnull %emsg)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.else15, label %if.then8

if.then8:                                         ; preds = %if.end5
  %6 = load i64, ptr %row.addr, align 8
  %conv = trunc i64 %6 to i32
  %row_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 19
  store i32 %conv, ptr %row_offset, align 8
  %col_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 20
  store i32 0, ptr %col_offset, align 4
  %7 = load i64, ptr %rowsperstrip, align 8
  %add = add i64 %6, %7
  %height = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 5
  %8 = load i64, ptr %height, align 8
  %cmp9 = icmp ugt i64 %add, %8
  %9 = load i64, ptr %rowsperstrip, align 8
  %height12 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 5
  %10 = load i64, ptr %height12, align 8
  %11 = load i64, ptr %row.addr, align 8
  %sub = sub i64 %10, %11
  %storemerge = select i1 %cmp9, i64 %sub, i64 %9
  %12 = load ptr, ptr %raster.addr, align 8
  %width = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 4
  %13 = load i64, ptr %width, align 8
  %call14 = call i32 @TIFFRGBAImageGet(ptr noundef nonnull %img, ptr noundef %12, i64 noundef %13, i64 noundef %storemerge)
  store i32 %call14, ptr %ok, align 4
  call void @TIFFRGBAImageEnd(ptr noundef nonnull %img)
  br label %if.end18

if.else15:                                        ; preds = %if.end5
  %14 = load ptr, ptr %tif.addr, align 8
  %call16 = call ptr @TIFFFileName(ptr noundef %14) #4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call16, ptr noundef nonnull %emsg) #4
  store i32 0, ptr %ok, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else15, %if.then8
  %15 = load i32, ptr %ok, align 4
  store i32 %15, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.then3, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFReadRGBATile(ptr noundef %tif, i64 noundef %col, i64 noundef %row, ptr noundef %raster) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %col.addr = alloca i64, align 8
  %row.addr = alloca i64, align 8
  %raster.addr = alloca ptr, align 8
  %emsg = alloca [1024 x i8], align 1
  %img = alloca %struct._TIFFRGBAImage, align 8
  %ok = alloca i32, align 4
  %tile_xsize = alloca i64, align 8
  %tile_ysize = alloca i64, align 8
  %read_xsize = alloca i64, align 8
  %read_ysize = alloca i64, align 8
  %i_row = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %col, ptr %col.addr, align 8
  store i64 %row, ptr %row.addr, align 8
  store ptr %raster, ptr %raster.addr, align 8
  %call = call i32 @TIFFIsTiled(ptr noundef %tif) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %tif.addr, align 8
  %call1 = call ptr @TIFFFileName(ptr noundef %0) #4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call1, ptr noundef nonnull @.str.22) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %call2 = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %1, i64 noundef 322, ptr noundef nonnull %tile_xsize) #4
  %call3 = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %1, i64 noundef 323, ptr noundef nonnull %tile_ysize) #4
  %2 = load i64, ptr %col.addr, align 8
  %3 = load i64, ptr %tile_xsize, align 8
  %rem = urem i64 %2, %3
  %cmp.not = icmp eq i64 %rem, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, ptr %row.addr, align 8
  %5 = load i64, ptr %tile_ysize, align 8
  %rem4 = urem i64 %4, %5
  %cmp5.not = icmp eq i64 %rem4, 0
  br i1 %cmp5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  %6 = load ptr, ptr %tif.addr, align 8
  %call7 = call ptr @TIFFFileName(ptr noundef %6) #4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call7, ptr noundef nonnull @.str.23) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %lor.lhs.false
  %7 = load ptr, ptr %tif.addr, align 8
  %call9 = call i32 @TIFFRGBAImageBegin(ptr noundef nonnull %img, ptr noundef %7, i32 noundef 0, ptr noundef nonnull %emsg)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end8
  %8 = load ptr, ptr %tif.addr, align 8
  %call12 = call ptr @TIFFFileName(ptr noundef %8) #4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call12, ptr noundef nonnull %emsg) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end8
  %9 = load i64, ptr %row.addr, align 8
  %10 = load i64, ptr %tile_ysize, align 8
  %add = add i64 %9, %10
  %height = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 5
  %11 = load i64, ptr %height, align 8
  %cmp15 = icmp ugt i64 %add, %11
  %12 = load i64, ptr %tile_ysize, align 8
  %height17 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 5
  %13 = load i64, ptr %height17, align 8
  %14 = load i64, ptr %row.addr, align 8
  %sub = sub i64 %13, %14
  %storemerge = select i1 %cmp15, i64 %sub, i64 %12
  store i64 %storemerge, ptr %read_ysize, align 8
  %15 = load i64, ptr %col.addr, align 8
  %16 = load i64, ptr %tile_xsize, align 8
  %add19 = add i64 %15, %16
  %width = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 4
  %17 = load i64, ptr %width, align 8
  %cmp20 = icmp ugt i64 %add19, %17
  %18 = load i64, ptr %tile_xsize, align 8
  %width22 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 4
  %19 = load i64, ptr %width22, align 8
  %20 = load i64, ptr %col.addr, align 8
  %sub23 = sub i64 %19, %20
  %storemerge1 = select i1 %cmp20, i64 %sub23, i64 %18
  store i64 %storemerge1, ptr %read_xsize, align 8
  %21 = load i64, ptr %row.addr, align 8
  %conv = trunc i64 %21 to i32
  %row_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 19
  store i32 %conv, ptr %row_offset, align 8
  %22 = load i64, ptr %col.addr, align 8
  %conv26 = trunc i64 %22 to i32
  %col_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 20
  store i32 %conv26, ptr %col_offset, align 4
  %23 = load ptr, ptr %raster.addr, align 8
  %24 = load i64, ptr %read_xsize, align 8
  %25 = load i64, ptr %read_ysize, align 8
  %call27 = call i32 @TIFFRGBAImageGet(ptr noundef nonnull %img, ptr noundef %23, i64 noundef %24, i64 noundef %25)
  store i32 %call27, ptr %ok, align 4
  call void @TIFFRGBAImageEnd(ptr noundef nonnull %img)
  %26 = load i64, ptr %tile_xsize, align 8
  %cmp28 = icmp eq i64 %24, %26
  br i1 %cmp28, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %if.end14
  %27 = load i64, ptr %read_ysize, align 8
  %28 = load i64, ptr %tile_ysize, align 8
  %cmp30 = icmp eq i64 %27, %28
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %land.lhs.true
  %29 = load i32, ptr %ok, align 4
  store i32 %29, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %land.lhs.true, %if.end14
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end33
  %storemerge2 = phi i64 [ 0, %if.end33 ], [ %inc, %for.body ]
  store i64 %storemerge2, ptr %i_row, align 8
  %30 = load i64, ptr %read_ysize, align 8
  %cmp34 = icmp ult i64 %storemerge2, %30
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load ptr, ptr %raster.addr, align 8
  %32 = load i64, ptr %tile_ysize, align 8
  %33 = load i64, ptr %i_row, align 8
  %34 = xor i64 %33, -1
  %sub37 = add i64 %32, %34
  %35 = load i64, ptr %tile_xsize, align 8
  %mul = mul i64 %sub37, %35
  %add.ptr = getelementptr inbounds i64, ptr %31, i64 %mul
  %36 = load ptr, ptr %raster.addr, align 8
  %37 = load i64, ptr %read_ysize, align 8
  %38 = load i64, ptr %i_row, align 8
  %39 = xor i64 %38, -1
  %sub39 = add i64 %37, %39
  %40 = load i64, ptr %read_xsize, align 8
  %mul40 = mul i64 %sub39, %40
  %add.ptr41 = getelementptr inbounds i64, ptr %36, i64 %mul40
  %mul42 = shl i64 %40, 3
  call void @_TIFFmemcpy(ptr noundef %add.ptr, ptr noundef %add.ptr41, i64 noundef %mul42) #4
  %41 = load ptr, ptr %raster.addr, align 8
  %42 = load i64, ptr %tile_ysize, align 8
  %43 = load i64, ptr %i_row, align 8
  %44 = xor i64 %43, -1
  %sub44 = add i64 %42, %44
  %45 = load i64, ptr %tile_xsize, align 8
  %mul45 = mul i64 %sub44, %45
  %add.ptr46 = getelementptr inbounds i64, ptr %41, i64 %mul45
  %46 = load i64, ptr %read_xsize, align 8
  %add.ptr47 = getelementptr inbounds i64, ptr %add.ptr46, i64 %46
  %sub48 = sub i64 %45, %46
  %mul49 = shl i64 %sub48, 3
  call void @_TIFFmemset(ptr noundef %add.ptr47, i32 noundef 0, i64 noundef %mul49) #4
  %47 = load i64, ptr %i_row, align 8
  %inc = add i64 %47, 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %48 = load i64, ptr %read_ysize, align 8
  br label %for.cond50

for.cond50:                                       ; preds = %for.body53, %for.end
  %storemerge3 = phi i64 [ %48, %for.end ], [ %inc60, %for.body53 ]
  store i64 %storemerge3, ptr %i_row, align 8
  %49 = load i64, ptr %tile_ysize, align 8
  %cmp51 = icmp ult i64 %storemerge3, %49
  br i1 %cmp51, label %for.body53, label %for.end61

for.body53:                                       ; preds = %for.cond50
  %50 = load ptr, ptr %raster.addr, align 8
  %51 = load i64, ptr %tile_ysize, align 8
  %52 = load i64, ptr %i_row, align 8
  %53 = xor i64 %52, -1
  %sub55 = add i64 %51, %53
  %54 = load i64, ptr %tile_xsize, align 8
  %mul56 = mul i64 %sub55, %54
  %add.ptr57 = getelementptr inbounds i64, ptr %50, i64 %mul56
  %mul58 = shl i64 %54, 3
  call void @_TIFFmemset(ptr noundef %add.ptr57, i32 noundef 0, i64 noundef %mul58) #4
  %55 = load i64, ptr %i_row, align 8
  %inc60 = add i64 %55, 1
  br label %for.cond50, !llvm.loop !14

for.end61:                                        ; preds = %for.cond50
  %56 = load i32, ptr %ok, align 4
  store i32 %56, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end61, %if.then32, %if.then11, %if.then6, %if.then
  %57 = load i32, ptr %retval, align 4
  ret i32 %57
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i64 noundef) #1

declare void @_TIFFmemset(ptr noundef, i32 noundef, i64 noundef) #1

declare i64 @TIFFTileSize(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i64 @setorientation(ptr noundef %img, i64 noundef %h) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %h.addr = alloca i64, align 8
  %tif = alloca ptr, align 8
  store ptr %img, ptr %img.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  %0 = load ptr, ptr %img, align 8
  store ptr %0, ptr %tif, align 8
  %orientation = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 8
  %1 = load i16, ptr %orientation, align 4
  switch i16 %1, label %sw.default [
    i16 3, label %sw.bb
    i16 7, label %sw.bb
    i16 8, label %sw.bb
    i16 4, label %sw.epilog
    i16 1, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %2 = load ptr, ptr %tif, align 8
  %call = call ptr @TIFFFileName(ptr noundef %2) #4
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %call, ptr noundef nonnull @.str.25) #4
  %3 = load ptr, ptr %img.addr, align 8
  %orientation2 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %3, i64 0, i32 8
  store i16 4, ptr %orientation2, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %4 = load ptr, ptr %tif, align 8
  %call5 = call ptr @TIFFFileName(ptr noundef %4) #4
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %call5, ptr noundef nonnull @.str.26) #4
  %5 = load ptr, ptr %img.addr, align 8
  %orientation6 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %5, i64 0, i32 8
  store i16 1, ptr %orientation6, align 4
  br label %sw.bb7

sw.bb7:                                           ; preds = %entry, %sw.default
  %6 = load i64, ptr %h.addr, align 8
  %sub = add i64 %6, -1
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb, %sw.bb7
  %storemerge = phi i64 [ %sub, %sw.bb7 ], [ 0, %sw.bb ], [ 0, %entry ]
  ret i64 %storemerge
}

declare i64 @TIFFReadTile(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i16 noundef zeroext) #1

declare void @TIFFWarning(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #3

declare i64 @TIFFStripSize(ptr noundef) #1

declare i64 @TIFFScanlineSize(ptr noundef) #1

declare i64 @TIFFReadEncodedStrip(ptr noundef, i64 noundef, ptr noundef, i64 noundef) #1

declare i64 @TIFFComputeStrip(ptr noundef, i64 noundef, i16 noundef zeroext) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @buildMap(ptr noundef %img) #0 {
entry:
  %retval = alloca i32, align 4
  %img.addr = alloca ptr, align 8
  store ptr %img, ptr %img.addr, align 8
  %photometric = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 9
  %0 = load i16, ptr %photometric, align 2
  switch i16 %0, label %sw.epilog [
    i16 2, label %sw.bb
    i16 6, label %sw.bb
    i16 5, label %sw.bb
    i16 1, label %sw.bb3
    i16 0, label %sw.bb3
    i16 3, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %1 = load ptr, ptr %img.addr, align 8
  %bitspersample = getelementptr inbounds %struct._TIFFRGBAImage, ptr %1, i64 0, i32 6
  %2 = load i16, ptr %bitspersample, align 8
  %cmp = icmp eq i16 %2, 8
  br i1 %cmp, label %sw.epilog, label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb, %entry, %entry
  %3 = load ptr, ptr %img.addr, align 8
  %call = call i32 @setupMap(ptr noundef %3)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then4, label %sw.epilog

if.then4:                                         ; preds = %sw.bb3
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %entry
  %4 = load ptr, ptr %img.addr, align 8
  %call7 = call i32 @checkcmap(ptr noundef %4)
  %cmp8 = icmp eq i32 %call7, 16
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %sw.bb6
  %5 = load ptr, ptr %img.addr, align 8
  call void @cvtcmap(ptr noundef %5)
  br label %if.end12

if.else:                                          ; preds = %sw.bb6
  %6 = load ptr, ptr %img.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %call11 = call ptr @TIFFFileName(ptr noundef %7) #4
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %call11, ptr noundef nonnull @.str.28) #4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then10
  %8 = load ptr, ptr %img.addr, align 8
  %bitspersample13 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %8, i64 0, i32 6
  %9 = load i16, ptr %bitspersample13, align 8
  %cmp15 = icmp ult i16 %9, 9
  br i1 %cmp15, label %land.lhs.true, label %sw.epilog

land.lhs.true:                                    ; preds = %if.end12
  %10 = load ptr, ptr %img.addr, align 8
  %call17 = call i32 @makecmap(ptr noundef %10)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %sw.epilog

if.then19:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end12, %land.lhs.true, %sw.bb3, %sw.bb, %entry
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then19, %if.then4
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind ssp uwtable
define internal void @putRGBAAcontig8bittile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %pp.addr = alloca ptr, align 8
  %samplesperpixel = alloca i32, align 4
  %_x = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %samplesperpixel1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 7
  %1 = load i16, ptr %samplesperpixel1, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %samplesperpixel, align 4
  %conv2 = zext i16 %1 to i64
  %2 = load i64, ptr %fromskew.addr, align 8
  %mul = mul nsw i64 %2, %conv2
  store i64 %mul, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i64, ptr %h.addr, align 8
  %dec = add i64 %3, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp.not = icmp eq i64 %3, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load i64, ptr %w.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %storemerge = phi i64 [ %4, %while.body ], [ %sub, %for.body ]
  store i64 %storemerge, ptr %_x, align 8
  %cmp4 = icmp ugt i64 %storemerge, 7
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pp.addr, align 8
  %6 = load i8, ptr %5, align 1
  %conv6 = zext i8 %6 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %5, i64 1
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i64
  %shl = shl nuw nsw i64 %conv8, 8
  %or = or i64 %shl, %conv6
  %8 = load ptr, ptr %pp.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %8, i64 2
  %9 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %9 to i64
  %shl11 = shl nuw nsw i64 %conv10, 16
  %or12 = or i64 %or, %shl11
  %arrayidx13 = getelementptr inbounds i8, ptr %8, i64 3
  %10 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %10 to i64
  %shl15 = shl nuw nsw i64 %conv14, 24
  %or16 = or i64 %or12, %shl15
  %11 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %11, i64 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i64 %or16, ptr %11, align 8
  %12 = load i32, ptr %samplesperpixel, align 4
  %13 = load ptr, ptr %pp.addr, align 8
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %idx.ext
  store ptr %add.ptr, ptr %pp.addr, align 8
  %14 = load i8, ptr %add.ptr, align 1
  %conv18 = zext i8 %14 to i64
  %arrayidx19 = getelementptr inbounds i8, ptr %add.ptr, i64 1
  %15 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %15 to i64
  %shl21 = shl nuw nsw i64 %conv20, 8
  %or22 = or i64 %shl21, %conv18
  %16 = load ptr, ptr %pp.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %16, i64 2
  %17 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %17 to i64
  %shl25 = shl nuw nsw i64 %conv24, 16
  %or26 = or i64 %or22, %shl25
  %arrayidx27 = getelementptr inbounds i8, ptr %16, i64 3
  %18 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %18 to i64
  %shl29 = shl nuw nsw i64 %conv28, 24
  %or30 = or i64 %or26, %shl29
  %19 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr31 = getelementptr inbounds i64, ptr %19, i64 1
  store ptr %incdec.ptr31, ptr %cp.addr, align 8
  store i64 %or30, ptr %19, align 8
  %20 = load i32, ptr %samplesperpixel, align 4
  %21 = load ptr, ptr %pp.addr, align 8
  %idx.ext32 = sext i32 %20 to i64
  %add.ptr33 = getelementptr inbounds i8, ptr %21, i64 %idx.ext32
  store ptr %add.ptr33, ptr %pp.addr, align 8
  %22 = load i8, ptr %add.ptr33, align 1
  %conv35 = zext i8 %22 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %add.ptr33, i64 1
  %23 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %23 to i64
  %shl38 = shl nuw nsw i64 %conv37, 8
  %or39 = or i64 %shl38, %conv35
  %24 = load ptr, ptr %pp.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %24, i64 2
  %25 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %25 to i64
  %shl42 = shl nuw nsw i64 %conv41, 16
  %or43 = or i64 %or39, %shl42
  %arrayidx44 = getelementptr inbounds i8, ptr %24, i64 3
  %26 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %26 to i64
  %shl46 = shl nuw nsw i64 %conv45, 24
  %or47 = or i64 %or43, %shl46
  %27 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr48 = getelementptr inbounds i64, ptr %27, i64 1
  store ptr %incdec.ptr48, ptr %cp.addr, align 8
  store i64 %or47, ptr %27, align 8
  %28 = load i32, ptr %samplesperpixel, align 4
  %29 = load ptr, ptr %pp.addr, align 8
  %idx.ext49 = sext i32 %28 to i64
  %add.ptr50 = getelementptr inbounds i8, ptr %29, i64 %idx.ext49
  store ptr %add.ptr50, ptr %pp.addr, align 8
  %30 = load i8, ptr %add.ptr50, align 1
  %conv52 = zext i8 %30 to i64
  %arrayidx53 = getelementptr inbounds i8, ptr %add.ptr50, i64 1
  %31 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %31 to i64
  %shl55 = shl nuw nsw i64 %conv54, 8
  %or56 = or i64 %shl55, %conv52
  %32 = load ptr, ptr %pp.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, ptr %32, i64 2
  %33 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %33 to i64
  %shl59 = shl nuw nsw i64 %conv58, 16
  %or60 = or i64 %or56, %shl59
  %arrayidx61 = getelementptr inbounds i8, ptr %32, i64 3
  %34 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %34 to i64
  %shl63 = shl nuw nsw i64 %conv62, 24
  %or64 = or i64 %or60, %shl63
  %35 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr65 = getelementptr inbounds i64, ptr %35, i64 1
  store ptr %incdec.ptr65, ptr %cp.addr, align 8
  store i64 %or64, ptr %35, align 8
  %36 = load i32, ptr %samplesperpixel, align 4
  %37 = load ptr, ptr %pp.addr, align 8
  %idx.ext66 = sext i32 %36 to i64
  %add.ptr67 = getelementptr inbounds i8, ptr %37, i64 %idx.ext66
  store ptr %add.ptr67, ptr %pp.addr, align 8
  %38 = load i8, ptr %add.ptr67, align 1
  %conv69 = zext i8 %38 to i64
  %arrayidx70 = getelementptr inbounds i8, ptr %add.ptr67, i64 1
  %39 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %39 to i64
  %shl72 = shl nuw nsw i64 %conv71, 8
  %or73 = or i64 %shl72, %conv69
  %40 = load ptr, ptr %pp.addr, align 8
  %arrayidx74 = getelementptr inbounds i8, ptr %40, i64 2
  %41 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %41 to i64
  %shl76 = shl nuw nsw i64 %conv75, 16
  %or77 = or i64 %or73, %shl76
  %arrayidx78 = getelementptr inbounds i8, ptr %40, i64 3
  %42 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %42 to i64
  %shl80 = shl nuw nsw i64 %conv79, 24
  %or81 = or i64 %or77, %shl80
  %43 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr82 = getelementptr inbounds i64, ptr %43, i64 1
  store ptr %incdec.ptr82, ptr %cp.addr, align 8
  store i64 %or81, ptr %43, align 8
  %44 = load i32, ptr %samplesperpixel, align 4
  %45 = load ptr, ptr %pp.addr, align 8
  %idx.ext83 = sext i32 %44 to i64
  %add.ptr84 = getelementptr inbounds i8, ptr %45, i64 %idx.ext83
  store ptr %add.ptr84, ptr %pp.addr, align 8
  %46 = load i8, ptr %add.ptr84, align 1
  %conv86 = zext i8 %46 to i64
  %arrayidx87 = getelementptr inbounds i8, ptr %add.ptr84, i64 1
  %47 = load i8, ptr %arrayidx87, align 1
  %conv88 = zext i8 %47 to i64
  %shl89 = shl nuw nsw i64 %conv88, 8
  %or90 = or i64 %shl89, %conv86
  %48 = load ptr, ptr %pp.addr, align 8
  %arrayidx91 = getelementptr inbounds i8, ptr %48, i64 2
  %49 = load i8, ptr %arrayidx91, align 1
  %conv92 = zext i8 %49 to i64
  %shl93 = shl nuw nsw i64 %conv92, 16
  %or94 = or i64 %or90, %shl93
  %arrayidx95 = getelementptr inbounds i8, ptr %48, i64 3
  %50 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %50 to i64
  %shl97 = shl nuw nsw i64 %conv96, 24
  %or98 = or i64 %or94, %shl97
  %51 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr99 = getelementptr inbounds i64, ptr %51, i64 1
  store ptr %incdec.ptr99, ptr %cp.addr, align 8
  store i64 %or98, ptr %51, align 8
  %52 = load i32, ptr %samplesperpixel, align 4
  %53 = load ptr, ptr %pp.addr, align 8
  %idx.ext100 = sext i32 %52 to i64
  %add.ptr101 = getelementptr inbounds i8, ptr %53, i64 %idx.ext100
  store ptr %add.ptr101, ptr %pp.addr, align 8
  %54 = load i8, ptr %add.ptr101, align 1
  %conv103 = zext i8 %54 to i64
  %arrayidx104 = getelementptr inbounds i8, ptr %add.ptr101, i64 1
  %55 = load i8, ptr %arrayidx104, align 1
  %conv105 = zext i8 %55 to i64
  %shl106 = shl nuw nsw i64 %conv105, 8
  %or107 = or i64 %shl106, %conv103
  %56 = load ptr, ptr %pp.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, ptr %56, i64 2
  %57 = load i8, ptr %arrayidx108, align 1
  %conv109 = zext i8 %57 to i64
  %shl110 = shl nuw nsw i64 %conv109, 16
  %or111 = or i64 %or107, %shl110
  %arrayidx112 = getelementptr inbounds i8, ptr %56, i64 3
  %58 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %58 to i64
  %shl114 = shl nuw nsw i64 %conv113, 24
  %or115 = or i64 %or111, %shl114
  %59 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr116 = getelementptr inbounds i64, ptr %59, i64 1
  store ptr %incdec.ptr116, ptr %cp.addr, align 8
  store i64 %or115, ptr %59, align 8
  %60 = load i32, ptr %samplesperpixel, align 4
  %61 = load ptr, ptr %pp.addr, align 8
  %idx.ext117 = sext i32 %60 to i64
  %add.ptr118 = getelementptr inbounds i8, ptr %61, i64 %idx.ext117
  store ptr %add.ptr118, ptr %pp.addr, align 8
  %62 = load i8, ptr %add.ptr118, align 1
  %conv120 = zext i8 %62 to i64
  %arrayidx121 = getelementptr inbounds i8, ptr %add.ptr118, i64 1
  %63 = load i8, ptr %arrayidx121, align 1
  %conv122 = zext i8 %63 to i64
  %shl123 = shl nuw nsw i64 %conv122, 8
  %or124 = or i64 %shl123, %conv120
  %64 = load ptr, ptr %pp.addr, align 8
  %arrayidx125 = getelementptr inbounds i8, ptr %64, i64 2
  %65 = load i8, ptr %arrayidx125, align 1
  %conv126 = zext i8 %65 to i64
  %shl127 = shl nuw nsw i64 %conv126, 16
  %or128 = or i64 %or124, %shl127
  %arrayidx129 = getelementptr inbounds i8, ptr %64, i64 3
  %66 = load i8, ptr %arrayidx129, align 1
  %conv130 = zext i8 %66 to i64
  %shl131 = shl nuw nsw i64 %conv130, 24
  %or132 = or i64 %or128, %shl131
  %67 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr133 = getelementptr inbounds i64, ptr %67, i64 1
  store ptr %incdec.ptr133, ptr %cp.addr, align 8
  store i64 %or132, ptr %67, align 8
  %68 = load i32, ptr %samplesperpixel, align 4
  %69 = load ptr, ptr %pp.addr, align 8
  %idx.ext134 = sext i32 %68 to i64
  %add.ptr135 = getelementptr inbounds i8, ptr %69, i64 %idx.ext134
  store ptr %add.ptr135, ptr %pp.addr, align 8
  %70 = load i64, ptr %_x, align 8
  %sub = add i64 %70, -8
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %71 = load i64, ptr %_x, align 8
  %cmp136.not = icmp eq i64 %71, 0
  br i1 %cmp136.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %72 = load i64, ptr %_x, align 8
  switch i64 %72, label %if.end [
    i64 7, label %sw.bb
    i64 6, label %sw.bb155
    i64 5, label %sw.bb173
    i64 4, label %sw.bb191
    i64 3, label %sw.bb209
    i64 2, label %sw.bb227
    i64 1, label %sw.bb245
  ]

sw.bb:                                            ; preds = %if.then
  %73 = load ptr, ptr %pp.addr, align 8
  %74 = load i8, ptr %73, align 1
  %conv139 = zext i8 %74 to i64
  %arrayidx140 = getelementptr inbounds i8, ptr %73, i64 1
  %75 = load i8, ptr %arrayidx140, align 1
  %conv141 = zext i8 %75 to i64
  %shl142 = shl nuw nsw i64 %conv141, 8
  %or143 = or i64 %shl142, %conv139
  %76 = load ptr, ptr %pp.addr, align 8
  %arrayidx144 = getelementptr inbounds i8, ptr %76, i64 2
  %77 = load i8, ptr %arrayidx144, align 1
  %conv145 = zext i8 %77 to i64
  %shl146 = shl nuw nsw i64 %conv145, 16
  %or147 = or i64 %or143, %shl146
  %arrayidx148 = getelementptr inbounds i8, ptr %76, i64 3
  %78 = load i8, ptr %arrayidx148, align 1
  %conv149 = zext i8 %78 to i64
  %shl150 = shl nuw nsw i64 %conv149, 24
  %or151 = or i64 %or147, %shl150
  %79 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr152 = getelementptr inbounds i64, ptr %79, i64 1
  store ptr %incdec.ptr152, ptr %cp.addr, align 8
  store i64 %or151, ptr %79, align 8
  %80 = load i32, ptr %samplesperpixel, align 4
  %81 = load ptr, ptr %pp.addr, align 8
  %idx.ext153 = sext i32 %80 to i64
  %add.ptr154 = getelementptr inbounds i8, ptr %81, i64 %idx.ext153
  store ptr %add.ptr154, ptr %pp.addr, align 8
  br label %sw.bb155

sw.bb155:                                         ; preds = %sw.bb, %if.then
  %82 = load ptr, ptr %pp.addr, align 8
  %83 = load i8, ptr %82, align 1
  %conv157 = zext i8 %83 to i64
  %arrayidx158 = getelementptr inbounds i8, ptr %82, i64 1
  %84 = load i8, ptr %arrayidx158, align 1
  %conv159 = zext i8 %84 to i64
  %shl160 = shl nuw nsw i64 %conv159, 8
  %or161 = or i64 %shl160, %conv157
  %85 = load ptr, ptr %pp.addr, align 8
  %arrayidx162 = getelementptr inbounds i8, ptr %85, i64 2
  %86 = load i8, ptr %arrayidx162, align 1
  %conv163 = zext i8 %86 to i64
  %shl164 = shl nuw nsw i64 %conv163, 16
  %or165 = or i64 %or161, %shl164
  %arrayidx166 = getelementptr inbounds i8, ptr %85, i64 3
  %87 = load i8, ptr %arrayidx166, align 1
  %conv167 = zext i8 %87 to i64
  %shl168 = shl nuw nsw i64 %conv167, 24
  %or169 = or i64 %or165, %shl168
  %88 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr170 = getelementptr inbounds i64, ptr %88, i64 1
  store ptr %incdec.ptr170, ptr %cp.addr, align 8
  store i64 %or169, ptr %88, align 8
  %89 = load i32, ptr %samplesperpixel, align 4
  %90 = load ptr, ptr %pp.addr, align 8
  %idx.ext171 = sext i32 %89 to i64
  %add.ptr172 = getelementptr inbounds i8, ptr %90, i64 %idx.ext171
  store ptr %add.ptr172, ptr %pp.addr, align 8
  br label %sw.bb173

sw.bb173:                                         ; preds = %sw.bb155, %if.then
  %91 = load ptr, ptr %pp.addr, align 8
  %92 = load i8, ptr %91, align 1
  %conv175 = zext i8 %92 to i64
  %arrayidx176 = getelementptr inbounds i8, ptr %91, i64 1
  %93 = load i8, ptr %arrayidx176, align 1
  %conv177 = zext i8 %93 to i64
  %shl178 = shl nuw nsw i64 %conv177, 8
  %or179 = or i64 %shl178, %conv175
  %94 = load ptr, ptr %pp.addr, align 8
  %arrayidx180 = getelementptr inbounds i8, ptr %94, i64 2
  %95 = load i8, ptr %arrayidx180, align 1
  %conv181 = zext i8 %95 to i64
  %shl182 = shl nuw nsw i64 %conv181, 16
  %or183 = or i64 %or179, %shl182
  %arrayidx184 = getelementptr inbounds i8, ptr %94, i64 3
  %96 = load i8, ptr %arrayidx184, align 1
  %conv185 = zext i8 %96 to i64
  %shl186 = shl nuw nsw i64 %conv185, 24
  %or187 = or i64 %or183, %shl186
  %97 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr188 = getelementptr inbounds i64, ptr %97, i64 1
  store ptr %incdec.ptr188, ptr %cp.addr, align 8
  store i64 %or187, ptr %97, align 8
  %98 = load i32, ptr %samplesperpixel, align 4
  %99 = load ptr, ptr %pp.addr, align 8
  %idx.ext189 = sext i32 %98 to i64
  %add.ptr190 = getelementptr inbounds i8, ptr %99, i64 %idx.ext189
  store ptr %add.ptr190, ptr %pp.addr, align 8
  br label %sw.bb191

sw.bb191:                                         ; preds = %sw.bb173, %if.then
  %100 = load ptr, ptr %pp.addr, align 8
  %101 = load i8, ptr %100, align 1
  %conv193 = zext i8 %101 to i64
  %arrayidx194 = getelementptr inbounds i8, ptr %100, i64 1
  %102 = load i8, ptr %arrayidx194, align 1
  %conv195 = zext i8 %102 to i64
  %shl196 = shl nuw nsw i64 %conv195, 8
  %or197 = or i64 %shl196, %conv193
  %103 = load ptr, ptr %pp.addr, align 8
  %arrayidx198 = getelementptr inbounds i8, ptr %103, i64 2
  %104 = load i8, ptr %arrayidx198, align 1
  %conv199 = zext i8 %104 to i64
  %shl200 = shl nuw nsw i64 %conv199, 16
  %or201 = or i64 %or197, %shl200
  %arrayidx202 = getelementptr inbounds i8, ptr %103, i64 3
  %105 = load i8, ptr %arrayidx202, align 1
  %conv203 = zext i8 %105 to i64
  %shl204 = shl nuw nsw i64 %conv203, 24
  %or205 = or i64 %or201, %shl204
  %106 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr206 = getelementptr inbounds i64, ptr %106, i64 1
  store ptr %incdec.ptr206, ptr %cp.addr, align 8
  store i64 %or205, ptr %106, align 8
  %107 = load i32, ptr %samplesperpixel, align 4
  %108 = load ptr, ptr %pp.addr, align 8
  %idx.ext207 = sext i32 %107 to i64
  %add.ptr208 = getelementptr inbounds i8, ptr %108, i64 %idx.ext207
  store ptr %add.ptr208, ptr %pp.addr, align 8
  br label %sw.bb209

sw.bb209:                                         ; preds = %sw.bb191, %if.then
  %109 = load ptr, ptr %pp.addr, align 8
  %110 = load i8, ptr %109, align 1
  %conv211 = zext i8 %110 to i64
  %arrayidx212 = getelementptr inbounds i8, ptr %109, i64 1
  %111 = load i8, ptr %arrayidx212, align 1
  %conv213 = zext i8 %111 to i64
  %shl214 = shl nuw nsw i64 %conv213, 8
  %or215 = or i64 %shl214, %conv211
  %112 = load ptr, ptr %pp.addr, align 8
  %arrayidx216 = getelementptr inbounds i8, ptr %112, i64 2
  %113 = load i8, ptr %arrayidx216, align 1
  %conv217 = zext i8 %113 to i64
  %shl218 = shl nuw nsw i64 %conv217, 16
  %or219 = or i64 %or215, %shl218
  %arrayidx220 = getelementptr inbounds i8, ptr %112, i64 3
  %114 = load i8, ptr %arrayidx220, align 1
  %conv221 = zext i8 %114 to i64
  %shl222 = shl nuw nsw i64 %conv221, 24
  %or223 = or i64 %or219, %shl222
  %115 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr224 = getelementptr inbounds i64, ptr %115, i64 1
  store ptr %incdec.ptr224, ptr %cp.addr, align 8
  store i64 %or223, ptr %115, align 8
  %116 = load i32, ptr %samplesperpixel, align 4
  %117 = load ptr, ptr %pp.addr, align 8
  %idx.ext225 = sext i32 %116 to i64
  %add.ptr226 = getelementptr inbounds i8, ptr %117, i64 %idx.ext225
  store ptr %add.ptr226, ptr %pp.addr, align 8
  br label %sw.bb227

sw.bb227:                                         ; preds = %sw.bb209, %if.then
  %118 = load ptr, ptr %pp.addr, align 8
  %119 = load i8, ptr %118, align 1
  %conv229 = zext i8 %119 to i64
  %arrayidx230 = getelementptr inbounds i8, ptr %118, i64 1
  %120 = load i8, ptr %arrayidx230, align 1
  %conv231 = zext i8 %120 to i64
  %shl232 = shl nuw nsw i64 %conv231, 8
  %or233 = or i64 %shl232, %conv229
  %121 = load ptr, ptr %pp.addr, align 8
  %arrayidx234 = getelementptr inbounds i8, ptr %121, i64 2
  %122 = load i8, ptr %arrayidx234, align 1
  %conv235 = zext i8 %122 to i64
  %shl236 = shl nuw nsw i64 %conv235, 16
  %or237 = or i64 %or233, %shl236
  %arrayidx238 = getelementptr inbounds i8, ptr %121, i64 3
  %123 = load i8, ptr %arrayidx238, align 1
  %conv239 = zext i8 %123 to i64
  %shl240 = shl nuw nsw i64 %conv239, 24
  %or241 = or i64 %or237, %shl240
  %124 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr242 = getelementptr inbounds i64, ptr %124, i64 1
  store ptr %incdec.ptr242, ptr %cp.addr, align 8
  store i64 %or241, ptr %124, align 8
  %125 = load i32, ptr %samplesperpixel, align 4
  %126 = load ptr, ptr %pp.addr, align 8
  %idx.ext243 = sext i32 %125 to i64
  %add.ptr244 = getelementptr inbounds i8, ptr %126, i64 %idx.ext243
  store ptr %add.ptr244, ptr %pp.addr, align 8
  br label %sw.bb245

sw.bb245:                                         ; preds = %sw.bb227, %if.then
  %127 = load ptr, ptr %pp.addr, align 8
  %128 = load i8, ptr %127, align 1
  %conv247 = zext i8 %128 to i64
  %arrayidx248 = getelementptr inbounds i8, ptr %127, i64 1
  %129 = load i8, ptr %arrayidx248, align 1
  %conv249 = zext i8 %129 to i64
  %shl250 = shl nuw nsw i64 %conv249, 8
  %or251 = or i64 %shl250, %conv247
  %130 = load ptr, ptr %pp.addr, align 8
  %arrayidx252 = getelementptr inbounds i8, ptr %130, i64 2
  %131 = load i8, ptr %arrayidx252, align 1
  %conv253 = zext i8 %131 to i64
  %shl254 = shl nuw nsw i64 %conv253, 16
  %or255 = or i64 %or251, %shl254
  %arrayidx256 = getelementptr inbounds i8, ptr %130, i64 3
  %132 = load i8, ptr %arrayidx256, align 1
  %conv257 = zext i8 %132 to i64
  %shl258 = shl nuw nsw i64 %conv257, 24
  %or259 = or i64 %or255, %shl258
  %133 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr260 = getelementptr inbounds i64, ptr %133, i64 1
  store ptr %incdec.ptr260, ptr %cp.addr, align 8
  store i64 %or259, ptr %133, align 8
  %134 = load i32, ptr %samplesperpixel, align 4
  %135 = load ptr, ptr %pp.addr, align 8
  %idx.ext261 = sext i32 %134 to i64
  %add.ptr262 = getelementptr inbounds i8, ptr %135, i64 %idx.ext261
  store ptr %add.ptr262, ptr %pp.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb245, %for.end
  %136 = load i64, ptr %toskew.addr, align 8
  %137 = load ptr, ptr %cp.addr, align 8
  %add.ptr263 = getelementptr inbounds i64, ptr %137, i64 %136
  store ptr %add.ptr263, ptr %cp.addr, align 8
  %138 = load i64, ptr %fromskew.addr, align 8
  %139 = load ptr, ptr %pp.addr, align 8
  %add.ptr264 = getelementptr inbounds i8, ptr %139, i64 %138
  store ptr %add.ptr264, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @putRGBUAcontig8bittile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %pp.addr = alloca ptr, align 8
  %samplesperpixel = alloca i32, align 4
  %r = alloca i64, align 8
  %g = alloca i64, align 8
  %a = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %samplesperpixel1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 7
  %1 = load i16, ptr %samplesperpixel1, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %samplesperpixel, align 4
  %conv2 = zext i16 %1 to i64
  %2 = load i64, ptr %fromskew.addr, align 8
  %mul = mul nsw i64 %2, %conv2
  store i64 %mul, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %3 = load i64, ptr %h.addr, align 8
  %dec = add i64 %3, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp.not = icmp eq i64 %3, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load i64, ptr %w.addr, align 8
  store i64 %4, ptr %x.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %5 = load i64, ptr %x.addr, align 8
  %dec4 = add i64 %5, -1
  store i64 %dec4, ptr %x.addr, align 8
  %cmp5.not = icmp eq i64 %5, 0
  br i1 %cmp5.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 3
  %7 = load i8, ptr %arrayidx, align 1
  %conv7 = zext i8 %7 to i64
  store i64 %conv7, ptr %a, align 8
  %8 = load i8, ptr %6, align 1
  %conv9 = zext i8 %8 to i64
  %mul10 = mul nuw nsw i64 %conv9, %conv7
  %div = udiv i64 %mul10, 255
  store i64 %div, ptr %r, align 8
  %9 = load ptr, ptr %pp.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %9, i64 1
  %10 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %10 to i64
  %11 = load i64, ptr %a, align 8
  %mul13 = mul i64 %11, %conv12
  %div14 = udiv i64 %mul13, 255
  store i64 %div14, ptr %g, align 8
  %12 = load ptr, ptr %pp.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %12, i64 2
  %13 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %13 to i64
  %14 = load i64, ptr %a, align 8
  %mul17 = mul i64 %14, %conv16
  %div18 = udiv i64 %mul17, 255
  %15 = load i64, ptr %r, align 8
  %16 = load i64, ptr %g, align 8
  %shl = shl i64 %16, 8
  %or = or i64 %15, %shl
  %shl19 = shl i64 %div18, 16
  %or20 = or i64 %or, %shl19
  %17 = load i64, ptr %a, align 8
  %shl21 = shl i64 %17, 24
  %or22 = or i64 %or20, %shl21
  %18 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %18, i64 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i64 %or22, ptr %18, align 8
  %19 = load i32, ptr %samplesperpixel, align 4
  %20 = load ptr, ptr %pp.addr, align 8
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, ptr %20, i64 %idx.ext
  store ptr %add.ptr, ptr %pp.addr, align 8
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %21 = load i64, ptr %toskew.addr, align 8
  %22 = load ptr, ptr %cp.addr, align 8
  %add.ptr23 = getelementptr inbounds i64, ptr %22, i64 %21
  store ptr %add.ptr23, ptr %cp.addr, align 8
  %23 = load i64, ptr %fromskew.addr, align 8
  %24 = load ptr, ptr %pp.addr, align 8
  %add.ptr24 = getelementptr inbounds i8, ptr %24, i64 %23
  store ptr %add.ptr24, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @putRGBcontig8bittile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %pp.addr = alloca ptr, align 8
  %samplesperpixel = alloca i32, align 4
  %_x = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %samplesperpixel1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 7
  %1 = load i16, ptr %samplesperpixel1, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %samplesperpixel, align 4
  %conv2 = zext i16 %1 to i64
  %2 = load i64, ptr %fromskew.addr, align 8
  %mul = mul nsw i64 %2, %conv2
  store i64 %mul, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i64, ptr %h.addr, align 8
  %dec = add i64 %3, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp.not = icmp eq i64 %3, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load i64, ptr %w.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %storemerge = phi i64 [ %4, %while.body ], [ %sub, %for.body ]
  store i64 %storemerge, ptr %_x, align 8
  %cmp4 = icmp ugt i64 %storemerge, 7
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pp.addr, align 8
  %6 = load i8, ptr %5, align 1
  %conv6 = zext i8 %6 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %5, i64 1
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i64
  %shl = shl nuw nsw i64 %conv8, 8
  %or = or i64 %shl, %conv6
  %8 = load ptr, ptr %pp.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %8, i64 2
  %9 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %9 to i64
  %shl11 = shl nuw nsw i64 %conv10, 16
  %or12 = or i64 %or, %shl11
  %or13 = or i64 %or12, 4278190080
  %10 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %10, i64 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i64 %or13, ptr %10, align 8
  %11 = load i32, ptr %samplesperpixel, align 4
  %12 = load ptr, ptr %pp.addr, align 8
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 %idx.ext
  store ptr %add.ptr, ptr %pp.addr, align 8
  %13 = load i8, ptr %add.ptr, align 1
  %conv15 = zext i8 %13 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %add.ptr, i64 1
  %14 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %14 to i64
  %shl18 = shl nuw nsw i64 %conv17, 8
  %or19 = or i64 %shl18, %conv15
  %15 = load ptr, ptr %pp.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %15, i64 2
  %16 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %16 to i64
  %shl22 = shl nuw nsw i64 %conv21, 16
  %or23 = or i64 %or19, %shl22
  %or24 = or i64 %or23, 4278190080
  %17 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr25 = getelementptr inbounds i64, ptr %17, i64 1
  store ptr %incdec.ptr25, ptr %cp.addr, align 8
  store i64 %or24, ptr %17, align 8
  %18 = load i32, ptr %samplesperpixel, align 4
  %19 = load ptr, ptr %pp.addr, align 8
  %idx.ext26 = sext i32 %18 to i64
  %add.ptr27 = getelementptr inbounds i8, ptr %19, i64 %idx.ext26
  store ptr %add.ptr27, ptr %pp.addr, align 8
  %20 = load i8, ptr %add.ptr27, align 1
  %conv29 = zext i8 %20 to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %add.ptr27, i64 1
  %21 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %21 to i64
  %shl32 = shl nuw nsw i64 %conv31, 8
  %or33 = or i64 %shl32, %conv29
  %22 = load ptr, ptr %pp.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %22, i64 2
  %23 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %23 to i64
  %shl36 = shl nuw nsw i64 %conv35, 16
  %or37 = or i64 %or33, %shl36
  %or38 = or i64 %or37, 4278190080
  %24 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr39 = getelementptr inbounds i64, ptr %24, i64 1
  store ptr %incdec.ptr39, ptr %cp.addr, align 8
  store i64 %or38, ptr %24, align 8
  %25 = load i32, ptr %samplesperpixel, align 4
  %26 = load ptr, ptr %pp.addr, align 8
  %idx.ext40 = sext i32 %25 to i64
  %add.ptr41 = getelementptr inbounds i8, ptr %26, i64 %idx.ext40
  store ptr %add.ptr41, ptr %pp.addr, align 8
  %27 = load i8, ptr %add.ptr41, align 1
  %conv43 = zext i8 %27 to i64
  %arrayidx44 = getelementptr inbounds i8, ptr %add.ptr41, i64 1
  %28 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %28 to i64
  %shl46 = shl nuw nsw i64 %conv45, 8
  %or47 = or i64 %shl46, %conv43
  %29 = load ptr, ptr %pp.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %29, i64 2
  %30 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %30 to i64
  %shl50 = shl nuw nsw i64 %conv49, 16
  %or51 = or i64 %or47, %shl50
  %or52 = or i64 %or51, 4278190080
  %31 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr53 = getelementptr inbounds i64, ptr %31, i64 1
  store ptr %incdec.ptr53, ptr %cp.addr, align 8
  store i64 %or52, ptr %31, align 8
  %32 = load i32, ptr %samplesperpixel, align 4
  %33 = load ptr, ptr %pp.addr, align 8
  %idx.ext54 = sext i32 %32 to i64
  %add.ptr55 = getelementptr inbounds i8, ptr %33, i64 %idx.ext54
  store ptr %add.ptr55, ptr %pp.addr, align 8
  %34 = load i8, ptr %add.ptr55, align 1
  %conv57 = zext i8 %34 to i64
  %arrayidx58 = getelementptr inbounds i8, ptr %add.ptr55, i64 1
  %35 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %35 to i64
  %shl60 = shl nuw nsw i64 %conv59, 8
  %or61 = or i64 %shl60, %conv57
  %36 = load ptr, ptr %pp.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, ptr %36, i64 2
  %37 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %37 to i64
  %shl64 = shl nuw nsw i64 %conv63, 16
  %or65 = or i64 %or61, %shl64
  %or66 = or i64 %or65, 4278190080
  %38 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr67 = getelementptr inbounds i64, ptr %38, i64 1
  store ptr %incdec.ptr67, ptr %cp.addr, align 8
  store i64 %or66, ptr %38, align 8
  %39 = load i32, ptr %samplesperpixel, align 4
  %40 = load ptr, ptr %pp.addr, align 8
  %idx.ext68 = sext i32 %39 to i64
  %add.ptr69 = getelementptr inbounds i8, ptr %40, i64 %idx.ext68
  store ptr %add.ptr69, ptr %pp.addr, align 8
  %41 = load i8, ptr %add.ptr69, align 1
  %conv71 = zext i8 %41 to i64
  %arrayidx72 = getelementptr inbounds i8, ptr %add.ptr69, i64 1
  %42 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %42 to i64
  %shl74 = shl nuw nsw i64 %conv73, 8
  %or75 = or i64 %shl74, %conv71
  %43 = load ptr, ptr %pp.addr, align 8
  %arrayidx76 = getelementptr inbounds i8, ptr %43, i64 2
  %44 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %44 to i64
  %shl78 = shl nuw nsw i64 %conv77, 16
  %or79 = or i64 %or75, %shl78
  %or80 = or i64 %or79, 4278190080
  %45 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr81 = getelementptr inbounds i64, ptr %45, i64 1
  store ptr %incdec.ptr81, ptr %cp.addr, align 8
  store i64 %or80, ptr %45, align 8
  %46 = load i32, ptr %samplesperpixel, align 4
  %47 = load ptr, ptr %pp.addr, align 8
  %idx.ext82 = sext i32 %46 to i64
  %add.ptr83 = getelementptr inbounds i8, ptr %47, i64 %idx.ext82
  store ptr %add.ptr83, ptr %pp.addr, align 8
  %48 = load i8, ptr %add.ptr83, align 1
  %conv85 = zext i8 %48 to i64
  %arrayidx86 = getelementptr inbounds i8, ptr %add.ptr83, i64 1
  %49 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %49 to i64
  %shl88 = shl nuw nsw i64 %conv87, 8
  %or89 = or i64 %shl88, %conv85
  %50 = load ptr, ptr %pp.addr, align 8
  %arrayidx90 = getelementptr inbounds i8, ptr %50, i64 2
  %51 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %51 to i64
  %shl92 = shl nuw nsw i64 %conv91, 16
  %or93 = or i64 %or89, %shl92
  %or94 = or i64 %or93, 4278190080
  %52 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr95 = getelementptr inbounds i64, ptr %52, i64 1
  store ptr %incdec.ptr95, ptr %cp.addr, align 8
  store i64 %or94, ptr %52, align 8
  %53 = load i32, ptr %samplesperpixel, align 4
  %54 = load ptr, ptr %pp.addr, align 8
  %idx.ext96 = sext i32 %53 to i64
  %add.ptr97 = getelementptr inbounds i8, ptr %54, i64 %idx.ext96
  store ptr %add.ptr97, ptr %pp.addr, align 8
  %55 = load i8, ptr %add.ptr97, align 1
  %conv99 = zext i8 %55 to i64
  %arrayidx100 = getelementptr inbounds i8, ptr %add.ptr97, i64 1
  %56 = load i8, ptr %arrayidx100, align 1
  %conv101 = zext i8 %56 to i64
  %shl102 = shl nuw nsw i64 %conv101, 8
  %or103 = or i64 %shl102, %conv99
  %57 = load ptr, ptr %pp.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, ptr %57, i64 2
  %58 = load i8, ptr %arrayidx104, align 1
  %conv105 = zext i8 %58 to i64
  %shl106 = shl nuw nsw i64 %conv105, 16
  %or107 = or i64 %or103, %shl106
  %or108 = or i64 %or107, 4278190080
  %59 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr109 = getelementptr inbounds i64, ptr %59, i64 1
  store ptr %incdec.ptr109, ptr %cp.addr, align 8
  store i64 %or108, ptr %59, align 8
  %60 = load i32, ptr %samplesperpixel, align 4
  %61 = load ptr, ptr %pp.addr, align 8
  %idx.ext110 = sext i32 %60 to i64
  %add.ptr111 = getelementptr inbounds i8, ptr %61, i64 %idx.ext110
  store ptr %add.ptr111, ptr %pp.addr, align 8
  %62 = load i64, ptr %_x, align 8
  %sub = add i64 %62, -8
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %63 = load i64, ptr %_x, align 8
  %cmp112.not = icmp eq i64 %63, 0
  br i1 %cmp112.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %64 = load i64, ptr %_x, align 8
  switch i64 %64, label %if.end [
    i64 7, label %sw.bb
    i64 6, label %sw.bb128
    i64 5, label %sw.bb143
    i64 4, label %sw.bb158
    i64 3, label %sw.bb173
    i64 2, label %sw.bb188
    i64 1, label %sw.bb203
  ]

sw.bb:                                            ; preds = %if.then
  %65 = load ptr, ptr %pp.addr, align 8
  %66 = load i8, ptr %65, align 1
  %conv115 = zext i8 %66 to i64
  %arrayidx116 = getelementptr inbounds i8, ptr %65, i64 1
  %67 = load i8, ptr %arrayidx116, align 1
  %conv117 = zext i8 %67 to i64
  %shl118 = shl nuw nsw i64 %conv117, 8
  %or119 = or i64 %shl118, %conv115
  %68 = load ptr, ptr %pp.addr, align 8
  %arrayidx120 = getelementptr inbounds i8, ptr %68, i64 2
  %69 = load i8, ptr %arrayidx120, align 1
  %conv121 = zext i8 %69 to i64
  %shl122 = shl nuw nsw i64 %conv121, 16
  %or123 = or i64 %or119, %shl122
  %or124 = or i64 %or123, 4278190080
  %70 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr125 = getelementptr inbounds i64, ptr %70, i64 1
  store ptr %incdec.ptr125, ptr %cp.addr, align 8
  store i64 %or124, ptr %70, align 8
  %71 = load i32, ptr %samplesperpixel, align 4
  %72 = load ptr, ptr %pp.addr, align 8
  %idx.ext126 = sext i32 %71 to i64
  %add.ptr127 = getelementptr inbounds i8, ptr %72, i64 %idx.ext126
  store ptr %add.ptr127, ptr %pp.addr, align 8
  br label %sw.bb128

sw.bb128:                                         ; preds = %sw.bb, %if.then
  %73 = load ptr, ptr %pp.addr, align 8
  %74 = load i8, ptr %73, align 1
  %conv130 = zext i8 %74 to i64
  %arrayidx131 = getelementptr inbounds i8, ptr %73, i64 1
  %75 = load i8, ptr %arrayidx131, align 1
  %conv132 = zext i8 %75 to i64
  %shl133 = shl nuw nsw i64 %conv132, 8
  %or134 = or i64 %shl133, %conv130
  %76 = load ptr, ptr %pp.addr, align 8
  %arrayidx135 = getelementptr inbounds i8, ptr %76, i64 2
  %77 = load i8, ptr %arrayidx135, align 1
  %conv136 = zext i8 %77 to i64
  %shl137 = shl nuw nsw i64 %conv136, 16
  %or138 = or i64 %or134, %shl137
  %or139 = or i64 %or138, 4278190080
  %78 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr140 = getelementptr inbounds i64, ptr %78, i64 1
  store ptr %incdec.ptr140, ptr %cp.addr, align 8
  store i64 %or139, ptr %78, align 8
  %79 = load i32, ptr %samplesperpixel, align 4
  %80 = load ptr, ptr %pp.addr, align 8
  %idx.ext141 = sext i32 %79 to i64
  %add.ptr142 = getelementptr inbounds i8, ptr %80, i64 %idx.ext141
  store ptr %add.ptr142, ptr %pp.addr, align 8
  br label %sw.bb143

sw.bb143:                                         ; preds = %sw.bb128, %if.then
  %81 = load ptr, ptr %pp.addr, align 8
  %82 = load i8, ptr %81, align 1
  %conv145 = zext i8 %82 to i64
  %arrayidx146 = getelementptr inbounds i8, ptr %81, i64 1
  %83 = load i8, ptr %arrayidx146, align 1
  %conv147 = zext i8 %83 to i64
  %shl148 = shl nuw nsw i64 %conv147, 8
  %or149 = or i64 %shl148, %conv145
  %84 = load ptr, ptr %pp.addr, align 8
  %arrayidx150 = getelementptr inbounds i8, ptr %84, i64 2
  %85 = load i8, ptr %arrayidx150, align 1
  %conv151 = zext i8 %85 to i64
  %shl152 = shl nuw nsw i64 %conv151, 16
  %or153 = or i64 %or149, %shl152
  %or154 = or i64 %or153, 4278190080
  %86 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr155 = getelementptr inbounds i64, ptr %86, i64 1
  store ptr %incdec.ptr155, ptr %cp.addr, align 8
  store i64 %or154, ptr %86, align 8
  %87 = load i32, ptr %samplesperpixel, align 4
  %88 = load ptr, ptr %pp.addr, align 8
  %idx.ext156 = sext i32 %87 to i64
  %add.ptr157 = getelementptr inbounds i8, ptr %88, i64 %idx.ext156
  store ptr %add.ptr157, ptr %pp.addr, align 8
  br label %sw.bb158

sw.bb158:                                         ; preds = %sw.bb143, %if.then
  %89 = load ptr, ptr %pp.addr, align 8
  %90 = load i8, ptr %89, align 1
  %conv160 = zext i8 %90 to i64
  %arrayidx161 = getelementptr inbounds i8, ptr %89, i64 1
  %91 = load i8, ptr %arrayidx161, align 1
  %conv162 = zext i8 %91 to i64
  %shl163 = shl nuw nsw i64 %conv162, 8
  %or164 = or i64 %shl163, %conv160
  %92 = load ptr, ptr %pp.addr, align 8
  %arrayidx165 = getelementptr inbounds i8, ptr %92, i64 2
  %93 = load i8, ptr %arrayidx165, align 1
  %conv166 = zext i8 %93 to i64
  %shl167 = shl nuw nsw i64 %conv166, 16
  %or168 = or i64 %or164, %shl167
  %or169 = or i64 %or168, 4278190080
  %94 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr170 = getelementptr inbounds i64, ptr %94, i64 1
  store ptr %incdec.ptr170, ptr %cp.addr, align 8
  store i64 %or169, ptr %94, align 8
  %95 = load i32, ptr %samplesperpixel, align 4
  %96 = load ptr, ptr %pp.addr, align 8
  %idx.ext171 = sext i32 %95 to i64
  %add.ptr172 = getelementptr inbounds i8, ptr %96, i64 %idx.ext171
  store ptr %add.ptr172, ptr %pp.addr, align 8
  br label %sw.bb173

sw.bb173:                                         ; preds = %sw.bb158, %if.then
  %97 = load ptr, ptr %pp.addr, align 8
  %98 = load i8, ptr %97, align 1
  %conv175 = zext i8 %98 to i64
  %arrayidx176 = getelementptr inbounds i8, ptr %97, i64 1
  %99 = load i8, ptr %arrayidx176, align 1
  %conv177 = zext i8 %99 to i64
  %shl178 = shl nuw nsw i64 %conv177, 8
  %or179 = or i64 %shl178, %conv175
  %100 = load ptr, ptr %pp.addr, align 8
  %arrayidx180 = getelementptr inbounds i8, ptr %100, i64 2
  %101 = load i8, ptr %arrayidx180, align 1
  %conv181 = zext i8 %101 to i64
  %shl182 = shl nuw nsw i64 %conv181, 16
  %or183 = or i64 %or179, %shl182
  %or184 = or i64 %or183, 4278190080
  %102 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr185 = getelementptr inbounds i64, ptr %102, i64 1
  store ptr %incdec.ptr185, ptr %cp.addr, align 8
  store i64 %or184, ptr %102, align 8
  %103 = load i32, ptr %samplesperpixel, align 4
  %104 = load ptr, ptr %pp.addr, align 8
  %idx.ext186 = sext i32 %103 to i64
  %add.ptr187 = getelementptr inbounds i8, ptr %104, i64 %idx.ext186
  store ptr %add.ptr187, ptr %pp.addr, align 8
  br label %sw.bb188

sw.bb188:                                         ; preds = %sw.bb173, %if.then
  %105 = load ptr, ptr %pp.addr, align 8
  %106 = load i8, ptr %105, align 1
  %conv190 = zext i8 %106 to i64
  %arrayidx191 = getelementptr inbounds i8, ptr %105, i64 1
  %107 = load i8, ptr %arrayidx191, align 1
  %conv192 = zext i8 %107 to i64
  %shl193 = shl nuw nsw i64 %conv192, 8
  %or194 = or i64 %shl193, %conv190
  %108 = load ptr, ptr %pp.addr, align 8
  %arrayidx195 = getelementptr inbounds i8, ptr %108, i64 2
  %109 = load i8, ptr %arrayidx195, align 1
  %conv196 = zext i8 %109 to i64
  %shl197 = shl nuw nsw i64 %conv196, 16
  %or198 = or i64 %or194, %shl197
  %or199 = or i64 %or198, 4278190080
  %110 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr200 = getelementptr inbounds i64, ptr %110, i64 1
  store ptr %incdec.ptr200, ptr %cp.addr, align 8
  store i64 %or199, ptr %110, align 8
  %111 = load i32, ptr %samplesperpixel, align 4
  %112 = load ptr, ptr %pp.addr, align 8
  %idx.ext201 = sext i32 %111 to i64
  %add.ptr202 = getelementptr inbounds i8, ptr %112, i64 %idx.ext201
  store ptr %add.ptr202, ptr %pp.addr, align 8
  br label %sw.bb203

sw.bb203:                                         ; preds = %sw.bb188, %if.then
  %113 = load ptr, ptr %pp.addr, align 8
  %114 = load i8, ptr %113, align 1
  %conv205 = zext i8 %114 to i64
  %arrayidx206 = getelementptr inbounds i8, ptr %113, i64 1
  %115 = load i8, ptr %arrayidx206, align 1
  %conv207 = zext i8 %115 to i64
  %shl208 = shl nuw nsw i64 %conv207, 8
  %or209 = or i64 %shl208, %conv205
  %116 = load ptr, ptr %pp.addr, align 8
  %arrayidx210 = getelementptr inbounds i8, ptr %116, i64 2
  %117 = load i8, ptr %arrayidx210, align 1
  %conv211 = zext i8 %117 to i64
  %shl212 = shl nuw nsw i64 %conv211, 16
  %or213 = or i64 %or209, %shl212
  %or214 = or i64 %or213, 4278190080
  %118 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr215 = getelementptr inbounds i64, ptr %118, i64 1
  store ptr %incdec.ptr215, ptr %cp.addr, align 8
  store i64 %or214, ptr %118, align 8
  %119 = load i32, ptr %samplesperpixel, align 4
  %120 = load ptr, ptr %pp.addr, align 8
  %idx.ext216 = sext i32 %119 to i64
  %add.ptr217 = getelementptr inbounds i8, ptr %120, i64 %idx.ext216
  store ptr %add.ptr217, ptr %pp.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb203, %for.end
  %121 = load i64, ptr %toskew.addr, align 8
  %122 = load ptr, ptr %cp.addr, align 8
  %add.ptr218 = getelementptr inbounds i64, ptr %122, i64 %121
  store ptr %add.ptr218, ptr %cp.addr, align 8
  %123 = load i64, ptr %fromskew.addr, align 8
  %124 = load ptr, ptr %pp.addr, align 8
  %add.ptr219 = getelementptr inbounds i8, ptr %124, i64 %123
  store ptr %add.ptr219, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @putRGBcontig8bitMaptile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %pp.addr = alloca ptr, align 8
  %Map = alloca ptr, align 8
  %samplesperpixel = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %Map1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 15
  %1 = load ptr, ptr %Map1, align 8
  store ptr %1, ptr %Map, align 8
  %samplesperpixel2 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 7
  %2 = load i16, ptr %samplesperpixel2, align 2
  %conv = zext i16 %2 to i32
  store i32 %conv, ptr %samplesperpixel, align 4
  %conv3 = zext i16 %2 to i64
  %3 = load i64, ptr %fromskew.addr, align 8
  %mul = mul nsw i64 %3, %conv3
  store i64 %mul, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %4 = load i64, ptr %h.addr, align 8
  %dec = add i64 %4, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp.not = icmp eq i64 %4, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %5 = load i64, ptr %w.addr, align 8
  store i64 %5, ptr %x.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %6 = load i64, ptr %x.addr, align 8
  %dec5 = add i64 %6, -1
  store i64 %dec5, ptr %x.addr, align 8
  %cmp6.not = icmp eq i64 %6, 0
  br i1 %cmp6.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %Map, align 8
  %8 = load ptr, ptr %pp.addr, align 8
  %9 = load i8, ptr %8, align 1
  %idxprom = zext i8 %9 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %7, i64 %idxprom
  %10 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %10 to i64
  %11 = load ptr, ptr %Map, align 8
  %12 = load ptr, ptr %pp.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %12, i64 1
  %13 = load i8, ptr %arrayidx10, align 1
  %idxprom11 = zext i8 %13 to i64
  %arrayidx12 = getelementptr inbounds i8, ptr %11, i64 %idxprom11
  %14 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %14 to i64
  %shl = shl nuw nsw i64 %conv13, 8
  %or = or i64 %shl, %conv9
  %15 = load ptr, ptr %Map, align 8
  %16 = load ptr, ptr %pp.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %16, i64 2
  %17 = load i8, ptr %arrayidx14, align 1
  %idxprom15 = zext i8 %17 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %15, i64 %idxprom15
  %18 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %18 to i64
  %shl18 = shl nuw nsw i64 %conv17, 16
  %or19 = or i64 %or, %shl18
  %or20 = or i64 %or19, 4278190080
  %19 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %19, i64 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i64 %or20, ptr %19, align 8
  %20 = load i32, ptr %samplesperpixel, align 4
  %21 = load ptr, ptr %pp.addr, align 8
  %idx.ext = sext i32 %20 to i64
  %add.ptr = getelementptr inbounds i8, ptr %21, i64 %idx.ext
  store ptr %add.ptr, ptr %pp.addr, align 8
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %22 = load i64, ptr %fromskew.addr, align 8
  %23 = load ptr, ptr %pp.addr, align 8
  %add.ptr21 = getelementptr inbounds i8, ptr %23, i64 %22
  store ptr %add.ptr21, ptr %pp.addr, align 8
  %24 = load i64, ptr %toskew.addr, align 8
  %25 = load ptr, ptr %cp.addr, align 8
  %add.ptr22 = getelementptr inbounds i64, ptr %25, i64 %24
  store ptr %add.ptr22, ptr %cp.addr, align 8
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @putRGBcontig16bittile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %samplesperpixel = alloca i32, align 4
  %wp = alloca ptr, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %samplesperpixel1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 7
  %1 = load i16, ptr %samplesperpixel1, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %samplesperpixel, align 4
  store ptr %pp, ptr %wp, align 8
  %conv2 = zext i16 %1 to i64
  %2 = load i64, ptr %fromskew.addr, align 8
  %mul = mul nsw i64 %2, %conv2
  store i64 %mul, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %3 = load i64, ptr %h.addr, align 8
  %dec = add i64 %3, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp.not = icmp eq i64 %3, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load i64, ptr %w.addr, align 8
  store i64 %4, ptr %x.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %5 = load i64, ptr %x.addr, align 8
  %dec4 = add i64 %5, -1
  store i64 %dec4, ptr %x.addr, align 8
  %cmp5.not = icmp eq i64 %5, 0
  br i1 %cmp5.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %wp, align 8
  %7 = load i16, ptr %6, align 2
  %8 = lshr i16 %7, 8
  %arrayidx9 = getelementptr inbounds i16, ptr %6, i64 1
  %9 = load i16, ptr %arrayidx9, align 2
  %10 = and i16 %9, -256
  %or1 = or i16 %8, %10
  %or = zext i16 %or1 to i64
  %11 = load ptr, ptr %wp, align 8
  %arrayidx14 = getelementptr inbounds i16, ptr %11, i64 2
  %12 = load i16, ptr %arrayidx14, align 2
  %13 = lshr i16 %12, 8
  %conv18 = zext i16 %13 to i64
  %shl19 = shl nuw nsw i64 %conv18, 16
  %or20 = or i64 %shl19, %or
  %or21 = or i64 %or20, 4278190080
  %14 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %14, i64 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i64 %or21, ptr %14, align 8
  %15 = load i32, ptr %samplesperpixel, align 4
  %16 = load ptr, ptr %wp, align 8
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i16, ptr %16, i64 %idx.ext
  store ptr %add.ptr, ptr %wp, align 8
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  %17 = load i64, ptr %toskew.addr, align 8
  %18 = load ptr, ptr %cp.addr, align 8
  %add.ptr22 = getelementptr inbounds i64, ptr %18, i64 %17
  store ptr %add.ptr22, ptr %cp.addr, align 8
  %19 = load i64, ptr %fromskew.addr, align 8
  %20 = load ptr, ptr %wp, align 8
  %add.ptr23 = getelementptr inbounds i16, ptr %20, i64 %19
  store ptr %add.ptr23, ptr %wp, align 8
  br label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @putRGBAAcontig16bittile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %samplesperpixel = alloca i32, align 4
  %wp = alloca ptr, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %samplesperpixel1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 7
  %1 = load i16, ptr %samplesperpixel1, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %samplesperpixel, align 4
  store ptr %pp, ptr %wp, align 8
  %conv2 = zext i16 %1 to i64
  %2 = load i64, ptr %fromskew.addr, align 8
  %mul = mul nsw i64 %2, %conv2
  store i64 %mul, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %3 = load i64, ptr %h.addr, align 8
  %dec = add i64 %3, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp.not = icmp eq i64 %3, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load i64, ptr %w.addr, align 8
  store i64 %4, ptr %x.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %5 = load i64, ptr %x.addr, align 8
  %dec4 = add i64 %5, -1
  store i64 %dec4, ptr %x.addr, align 8
  %cmp5.not = icmp eq i64 %5, 0
  br i1 %cmp5.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %wp, align 8
  %7 = load i16, ptr %6, align 2
  %8 = lshr i16 %7, 8
  %arrayidx9 = getelementptr inbounds i16, ptr %6, i64 1
  %9 = load i16, ptr %arrayidx9, align 2
  %10 = and i16 %9, -256
  %or1 = or i16 %8, %10
  %or = zext i16 %or1 to i64
  %11 = load ptr, ptr %wp, align 8
  %arrayidx14 = getelementptr inbounds i16, ptr %11, i64 2
  %12 = load i16, ptr %arrayidx14, align 2
  %13 = lshr i16 %12, 8
  %conv18 = zext i16 %13 to i64
  %shl19 = shl nuw nsw i64 %conv18, 16
  %or20 = or i64 %shl19, %or
  %14 = load ptr, ptr %wp, align 8
  %arrayidx21 = getelementptr inbounds i16, ptr %14, i64 3
  %15 = load i16, ptr %arrayidx21, align 2
  %16 = lshr i16 %15, 8
  %conv25 = zext i16 %16 to i64
  %shl26 = shl nuw nsw i64 %conv25, 24
  %or27 = or i64 %or20, %shl26
  %17 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %17, i64 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i64 %or27, ptr %17, align 8
  %18 = load i32, ptr %samplesperpixel, align 4
  %19 = load ptr, ptr %wp, align 8
  %idx.ext = sext i32 %18 to i64
  %add.ptr = getelementptr inbounds i16, ptr %19, i64 %idx.ext
  store ptr %add.ptr, ptr %wp, align 8
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %for.cond
  %20 = load i64, ptr %toskew.addr, align 8
  %21 = load ptr, ptr %cp.addr, align 8
  %add.ptr28 = getelementptr inbounds i64, ptr %21, i64 %20
  store ptr %add.ptr28, ptr %cp.addr, align 8
  %22 = load i64, ptr %fromskew.addr, align 8
  %23 = load ptr, ptr %wp, align 8
  %add.ptr29 = getelementptr inbounds i16, ptr %23, i64 %22
  store ptr %add.ptr29, ptr %wp, align 8
  br label %while.cond, !llvm.loop !26

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @putRGBUAcontig16bittile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %samplesperpixel = alloca i32, align 4
  %wp = alloca ptr, align 8
  %r = alloca i64, align 8
  %g = alloca i64, align 8
  %a = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %samplesperpixel1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 7
  %1 = load i16, ptr %samplesperpixel1, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %samplesperpixel, align 4
  store ptr %pp, ptr %wp, align 8
  %conv2 = zext i16 %1 to i64
  %2 = load i64, ptr %fromskew.addr, align 8
  %mul = mul nsw i64 %2, %conv2
  store i64 %mul, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %3 = load i64, ptr %h.addr, align 8
  %dec = add i64 %3, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp.not = icmp eq i64 %3, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load i64, ptr %w.addr, align 8
  store i64 %4, ptr %x.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %5 = load i64, ptr %x.addr, align 8
  %dec4 = add i64 %5, -1
  store i64 %dec4, ptr %x.addr, align 8
  %cmp5.not = icmp eq i64 %5, 0
  br i1 %cmp5.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %wp, align 8
  %arrayidx = getelementptr inbounds i16, ptr %6, i64 3
  %7 = load i16, ptr %arrayidx, align 2
  %8 = lshr i16 %7, 4
  %conv8 = zext i16 %8 to i64
  store i64 %conv8, ptr %a, align 8
  %9 = load i16, ptr %6, align 2
  %conv10 = zext i16 %9 to i64
  %mul11 = mul nuw nsw i64 %conv10, %conv8
  %div = udiv i64 %mul11, 69375
  store i64 %div, ptr %r, align 8
  %10 = load ptr, ptr %wp, align 8
  %arrayidx12 = getelementptr inbounds i16, ptr %10, i64 1
  %11 = load i16, ptr %arrayidx12, align 2
  %conv13 = zext i16 %11 to i64
  %12 = load i64, ptr %a, align 8
  %mul14 = mul i64 %12, %conv13
  %div15 = udiv i64 %mul14, 69375
  store i64 %div15, ptr %g, align 8
  %13 = load ptr, ptr %wp, align 8
  %arrayidx16 = getelementptr inbounds i16, ptr %13, i64 2
  %14 = load i16, ptr %arrayidx16, align 2
  %conv17 = zext i16 %14 to i64
  %15 = load i64, ptr %a, align 8
  %mul18 = mul i64 %15, %conv17
  %div19 = udiv i64 %mul18, 69375
  %16 = load i64, ptr %r, align 8
  %17 = load i64, ptr %g, align 8
  %shl = shl i64 %17, 8
  %or = or i64 %16, %shl
  %shl20 = shl nuw i64 %div19, 16
  %or21 = or i64 %or, %shl20
  %18 = load i64, ptr %a, align 8
  %shl22 = shl i64 %18, 24
  %or23 = or i64 %or21, %shl22
  %19 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %19, i64 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i64 %or23, ptr %19, align 8
  %20 = load i32, ptr %samplesperpixel, align 4
  %21 = load ptr, ptr %wp, align 8
  %idx.ext = sext i32 %20 to i64
  %add.ptr = getelementptr inbounds i16, ptr %21, i64 %idx.ext
  store ptr %add.ptr, ptr %wp, align 8
  br label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  %22 = load i64, ptr %toskew.addr, align 8
  %23 = load ptr, ptr %cp.addr, align 8
  %add.ptr24 = getelementptr inbounds i64, ptr %23, i64 %22
  store ptr %add.ptr24, ptr %cp.addr, align 8
  %24 = load i64, ptr %fromskew.addr, align 8
  %25 = load ptr, ptr %wp, align 8
  %add.ptr25 = getelementptr inbounds i16, ptr %25, i64 %24
  store ptr %add.ptr25, ptr %wp, align 8
  br label %while.cond, !llvm.loop !28

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @putRGBcontig8bitCMYKtile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %pp.addr = alloca ptr, align 8
  %samplesperpixel = alloca i32, align 4
  %r = alloca i16, align 2
  %g = alloca i16, align 2
  %b = alloca i16, align 2
  %k = alloca i16, align 2
  %_x = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %samplesperpixel1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 7
  %1 = load i16, ptr %samplesperpixel1, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %samplesperpixel, align 4
  %conv2 = zext i16 %1 to i64
  %2 = load i64, ptr %fromskew.addr, align 8
  %mul = mul nsw i64 %2, %conv2
  store i64 %mul, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i64, ptr %h.addr, align 8
  %dec = add i64 %3, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp.not = icmp eq i64 %3, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load i64, ptr %w.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %storemerge = phi i64 [ %4, %while.body ], [ %sub286, %for.body ]
  store i64 %storemerge, ptr %_x, align 8
  %cmp4 = icmp ugt i64 %storemerge, 7
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 3
  %6 = load i8, ptr %arrayidx, align 1
  %7 = xor i8 %6, -1
  %conv7 = zext i8 %7 to i16
  store i16 %conv7, ptr %k, align 2
  %conv8 = zext i8 %7 to i16
  %8 = load ptr, ptr %pp.addr, align 8
  %9 = load i8, ptr %8, align 1
  %10 = xor i8 %9, -1
  %sub11 = zext i8 %10 to i16
  %mul12 = mul nuw i16 %conv8, %sub11
  %div = udiv i16 %mul12, 255
  store i16 %div, ptr %r, align 2
  %11 = load i16, ptr %k, align 2
  %conv14 = zext i16 %11 to i32
  %12 = load ptr, ptr %pp.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %12, i64 1
  %13 = load i8, ptr %arrayidx15, align 1
  %14 = xor i8 %13, -1
  %sub17 = zext i8 %14 to i32
  %mul18 = mul nuw nsw i32 %conv14, %sub17
  %div19 = udiv i32 %mul18, 255
  %conv20 = trunc i32 %div19 to i16
  store i16 %conv20, ptr %g, align 2
  %15 = load i16, ptr %k, align 2
  %conv21 = zext i16 %15 to i32
  %16 = load ptr, ptr %pp.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %16, i64 2
  %17 = load i8, ptr %arrayidx22, align 1
  %18 = xor i8 %17, -1
  %sub24 = zext i8 %18 to i32
  %mul25 = mul nuw nsw i32 %conv21, %sub24
  %div26 = udiv i32 %mul25, 255
  %conv27 = trunc i32 %div26 to i16
  store i16 %conv27, ptr %b, align 2
  %19 = load i16, ptr %r, align 2
  %conv28 = zext i16 %19 to i64
  %20 = load i16, ptr %g, align 2
  %conv29 = zext i16 %20 to i64
  %shl = shl nuw nsw i64 %conv29, 8
  %or = or i64 %shl, %conv28
  %21 = load i16, ptr %b, align 2
  %conv30 = zext i16 %21 to i64
  %shl31 = shl nuw nsw i64 %conv30, 16
  %or32 = or i64 %or, %shl31
  %or33 = or i64 %or32, 4278190080
  %22 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %22, i64 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i64 %or33, ptr %22, align 8
  %23 = load i32, ptr %samplesperpixel, align 4
  %24 = load ptr, ptr %pp.addr, align 8
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, ptr %24, i64 %idx.ext
  store ptr %add.ptr, ptr %pp.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %add.ptr, i64 3
  %25 = load i8, ptr %arrayidx34, align 1
  %26 = xor i8 %25, -1
  %conv37 = zext i8 %26 to i16
  store i16 %conv37, ptr %k, align 2
  %conv38 = zext i8 %26 to i16
  %27 = load ptr, ptr %pp.addr, align 8
  %28 = load i8, ptr %27, align 1
  %29 = xor i8 %28, -1
  %sub41 = zext i8 %29 to i16
  %mul42 = mul nuw i16 %conv38, %sub41
  %div43 = udiv i16 %mul42, 255
  store i16 %div43, ptr %r, align 2
  %30 = load i16, ptr %k, align 2
  %conv45 = zext i16 %30 to i32
  %31 = load ptr, ptr %pp.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, ptr %31, i64 1
  %32 = load i8, ptr %arrayidx46, align 1
  %33 = xor i8 %32, -1
  %sub48 = zext i8 %33 to i32
  %mul49 = mul nuw nsw i32 %conv45, %sub48
  %div50 = udiv i32 %mul49, 255
  %conv51 = trunc i32 %div50 to i16
  store i16 %conv51, ptr %g, align 2
  %34 = load i16, ptr %k, align 2
  %conv52 = zext i16 %34 to i32
  %35 = load ptr, ptr %pp.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, ptr %35, i64 2
  %36 = load i8, ptr %arrayidx53, align 1
  %37 = xor i8 %36, -1
  %sub55 = zext i8 %37 to i32
  %mul56 = mul nuw nsw i32 %conv52, %sub55
  %div57 = udiv i32 %mul56, 255
  %conv58 = trunc i32 %div57 to i16
  store i16 %conv58, ptr %b, align 2
  %38 = load i16, ptr %r, align 2
  %conv59 = zext i16 %38 to i64
  %39 = load i16, ptr %g, align 2
  %conv60 = zext i16 %39 to i64
  %shl61 = shl nuw nsw i64 %conv60, 8
  %or62 = or i64 %shl61, %conv59
  %40 = load i16, ptr %b, align 2
  %conv63 = zext i16 %40 to i64
  %shl64 = shl nuw nsw i64 %conv63, 16
  %or65 = or i64 %or62, %shl64
  %or66 = or i64 %or65, 4278190080
  %41 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr67 = getelementptr inbounds i64, ptr %41, i64 1
  store ptr %incdec.ptr67, ptr %cp.addr, align 8
  store i64 %or66, ptr %41, align 8
  %42 = load i32, ptr %samplesperpixel, align 4
  %43 = load ptr, ptr %pp.addr, align 8
  %idx.ext68 = sext i32 %42 to i64
  %add.ptr69 = getelementptr inbounds i8, ptr %43, i64 %idx.ext68
  store ptr %add.ptr69, ptr %pp.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %add.ptr69, i64 3
  %44 = load i8, ptr %arrayidx70, align 1
  %45 = xor i8 %44, -1
  %conv73 = zext i8 %45 to i16
  store i16 %conv73, ptr %k, align 2
  %conv74 = zext i8 %45 to i16
  %46 = load ptr, ptr %pp.addr, align 8
  %47 = load i8, ptr %46, align 1
  %48 = xor i8 %47, -1
  %sub77 = zext i8 %48 to i16
  %mul78 = mul nuw i16 %conv74, %sub77
  %div79 = udiv i16 %mul78, 255
  store i16 %div79, ptr %r, align 2
  %49 = load i16, ptr %k, align 2
  %conv81 = zext i16 %49 to i32
  %50 = load ptr, ptr %pp.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, ptr %50, i64 1
  %51 = load i8, ptr %arrayidx82, align 1
  %52 = xor i8 %51, -1
  %sub84 = zext i8 %52 to i32
  %mul85 = mul nuw nsw i32 %conv81, %sub84
  %div86 = udiv i32 %mul85, 255
  %conv87 = trunc i32 %div86 to i16
  store i16 %conv87, ptr %g, align 2
  %53 = load i16, ptr %k, align 2
  %conv88 = zext i16 %53 to i32
  %54 = load ptr, ptr %pp.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, ptr %54, i64 2
  %55 = load i8, ptr %arrayidx89, align 1
  %56 = xor i8 %55, -1
  %sub91 = zext i8 %56 to i32
  %mul92 = mul nuw nsw i32 %conv88, %sub91
  %div93 = udiv i32 %mul92, 255
  %conv94 = trunc i32 %div93 to i16
  store i16 %conv94, ptr %b, align 2
  %57 = load i16, ptr %r, align 2
  %conv95 = zext i16 %57 to i64
  %58 = load i16, ptr %g, align 2
  %conv96 = zext i16 %58 to i64
  %shl97 = shl nuw nsw i64 %conv96, 8
  %or98 = or i64 %shl97, %conv95
  %59 = load i16, ptr %b, align 2
  %conv99 = zext i16 %59 to i64
  %shl100 = shl nuw nsw i64 %conv99, 16
  %or101 = or i64 %or98, %shl100
  %or102 = or i64 %or101, 4278190080
  %60 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr103 = getelementptr inbounds i64, ptr %60, i64 1
  store ptr %incdec.ptr103, ptr %cp.addr, align 8
  store i64 %or102, ptr %60, align 8
  %61 = load i32, ptr %samplesperpixel, align 4
  %62 = load ptr, ptr %pp.addr, align 8
  %idx.ext104 = sext i32 %61 to i64
  %add.ptr105 = getelementptr inbounds i8, ptr %62, i64 %idx.ext104
  store ptr %add.ptr105, ptr %pp.addr, align 8
  %arrayidx106 = getelementptr inbounds i8, ptr %add.ptr105, i64 3
  %63 = load i8, ptr %arrayidx106, align 1
  %64 = xor i8 %63, -1
  %conv109 = zext i8 %64 to i16
  store i16 %conv109, ptr %k, align 2
  %conv110 = zext i8 %64 to i16
  %65 = load ptr, ptr %pp.addr, align 8
  %66 = load i8, ptr %65, align 1
  %67 = xor i8 %66, -1
  %sub113 = zext i8 %67 to i16
  %mul114 = mul nuw i16 %conv110, %sub113
  %div115 = udiv i16 %mul114, 255
  store i16 %div115, ptr %r, align 2
  %68 = load i16, ptr %k, align 2
  %conv117 = zext i16 %68 to i32
  %69 = load ptr, ptr %pp.addr, align 8
  %arrayidx118 = getelementptr inbounds i8, ptr %69, i64 1
  %70 = load i8, ptr %arrayidx118, align 1
  %71 = xor i8 %70, -1
  %sub120 = zext i8 %71 to i32
  %mul121 = mul nuw nsw i32 %conv117, %sub120
  %div122 = udiv i32 %mul121, 255
  %conv123 = trunc i32 %div122 to i16
  store i16 %conv123, ptr %g, align 2
  %72 = load i16, ptr %k, align 2
  %conv124 = zext i16 %72 to i32
  %73 = load ptr, ptr %pp.addr, align 8
  %arrayidx125 = getelementptr inbounds i8, ptr %73, i64 2
  %74 = load i8, ptr %arrayidx125, align 1
  %75 = xor i8 %74, -1
  %sub127 = zext i8 %75 to i32
  %mul128 = mul nuw nsw i32 %conv124, %sub127
  %div129 = udiv i32 %mul128, 255
  %conv130 = trunc i32 %div129 to i16
  store i16 %conv130, ptr %b, align 2
  %76 = load i16, ptr %r, align 2
  %conv131 = zext i16 %76 to i64
  %77 = load i16, ptr %g, align 2
  %conv132 = zext i16 %77 to i64
  %shl133 = shl nuw nsw i64 %conv132, 8
  %or134 = or i64 %shl133, %conv131
  %78 = load i16, ptr %b, align 2
  %conv135 = zext i16 %78 to i64
  %shl136 = shl nuw nsw i64 %conv135, 16
  %or137 = or i64 %or134, %shl136
  %or138 = or i64 %or137, 4278190080
  %79 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr139 = getelementptr inbounds i64, ptr %79, i64 1
  store ptr %incdec.ptr139, ptr %cp.addr, align 8
  store i64 %or138, ptr %79, align 8
  %80 = load i32, ptr %samplesperpixel, align 4
  %81 = load ptr, ptr %pp.addr, align 8
  %idx.ext140 = sext i32 %80 to i64
  %add.ptr141 = getelementptr inbounds i8, ptr %81, i64 %idx.ext140
  store ptr %add.ptr141, ptr %pp.addr, align 8
  %arrayidx142 = getelementptr inbounds i8, ptr %add.ptr141, i64 3
  %82 = load i8, ptr %arrayidx142, align 1
  %83 = xor i8 %82, -1
  %conv145 = zext i8 %83 to i16
  store i16 %conv145, ptr %k, align 2
  %conv146 = zext i8 %83 to i16
  %84 = load ptr, ptr %pp.addr, align 8
  %85 = load i8, ptr %84, align 1
  %86 = xor i8 %85, -1
  %sub149 = zext i8 %86 to i16
  %mul150 = mul nuw i16 %conv146, %sub149
  %div151 = udiv i16 %mul150, 255
  store i16 %div151, ptr %r, align 2
  %87 = load i16, ptr %k, align 2
  %conv153 = zext i16 %87 to i32
  %88 = load ptr, ptr %pp.addr, align 8
  %arrayidx154 = getelementptr inbounds i8, ptr %88, i64 1
  %89 = load i8, ptr %arrayidx154, align 1
  %90 = xor i8 %89, -1
  %sub156 = zext i8 %90 to i32
  %mul157 = mul nuw nsw i32 %conv153, %sub156
  %div158 = udiv i32 %mul157, 255
  %conv159 = trunc i32 %div158 to i16
  store i16 %conv159, ptr %g, align 2
  %91 = load i16, ptr %k, align 2
  %conv160 = zext i16 %91 to i32
  %92 = load ptr, ptr %pp.addr, align 8
  %arrayidx161 = getelementptr inbounds i8, ptr %92, i64 2
  %93 = load i8, ptr %arrayidx161, align 1
  %94 = xor i8 %93, -1
  %sub163 = zext i8 %94 to i32
  %mul164 = mul nuw nsw i32 %conv160, %sub163
  %div165 = udiv i32 %mul164, 255
  %conv166 = trunc i32 %div165 to i16
  store i16 %conv166, ptr %b, align 2
  %95 = load i16, ptr %r, align 2
  %conv167 = zext i16 %95 to i64
  %96 = load i16, ptr %g, align 2
  %conv168 = zext i16 %96 to i64
  %shl169 = shl nuw nsw i64 %conv168, 8
  %or170 = or i64 %shl169, %conv167
  %97 = load i16, ptr %b, align 2
  %conv171 = zext i16 %97 to i64
  %shl172 = shl nuw nsw i64 %conv171, 16
  %or173 = or i64 %or170, %shl172
  %or174 = or i64 %or173, 4278190080
  %98 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr175 = getelementptr inbounds i64, ptr %98, i64 1
  store ptr %incdec.ptr175, ptr %cp.addr, align 8
  store i64 %or174, ptr %98, align 8
  %99 = load i32, ptr %samplesperpixel, align 4
  %100 = load ptr, ptr %pp.addr, align 8
  %idx.ext176 = sext i32 %99 to i64
  %add.ptr177 = getelementptr inbounds i8, ptr %100, i64 %idx.ext176
  store ptr %add.ptr177, ptr %pp.addr, align 8
  %arrayidx178 = getelementptr inbounds i8, ptr %add.ptr177, i64 3
  %101 = load i8, ptr %arrayidx178, align 1
  %102 = xor i8 %101, -1
  %conv181 = zext i8 %102 to i16
  store i16 %conv181, ptr %k, align 2
  %conv182 = zext i8 %102 to i16
  %103 = load ptr, ptr %pp.addr, align 8
  %104 = load i8, ptr %103, align 1
  %105 = xor i8 %104, -1
  %sub185 = zext i8 %105 to i16
  %mul186 = mul nuw i16 %conv182, %sub185
  %div187 = udiv i16 %mul186, 255
  store i16 %div187, ptr %r, align 2
  %106 = load i16, ptr %k, align 2
  %conv189 = zext i16 %106 to i32
  %107 = load ptr, ptr %pp.addr, align 8
  %arrayidx190 = getelementptr inbounds i8, ptr %107, i64 1
  %108 = load i8, ptr %arrayidx190, align 1
  %109 = xor i8 %108, -1
  %sub192 = zext i8 %109 to i32
  %mul193 = mul nuw nsw i32 %conv189, %sub192
  %div194 = udiv i32 %mul193, 255
  %conv195 = trunc i32 %div194 to i16
  store i16 %conv195, ptr %g, align 2
  %110 = load i16, ptr %k, align 2
  %conv196 = zext i16 %110 to i32
  %111 = load ptr, ptr %pp.addr, align 8
  %arrayidx197 = getelementptr inbounds i8, ptr %111, i64 2
  %112 = load i8, ptr %arrayidx197, align 1
  %113 = xor i8 %112, -1
  %sub199 = zext i8 %113 to i32
  %mul200 = mul nuw nsw i32 %conv196, %sub199
  %div201 = udiv i32 %mul200, 255
  %conv202 = trunc i32 %div201 to i16
  store i16 %conv202, ptr %b, align 2
  %114 = load i16, ptr %r, align 2
  %conv203 = zext i16 %114 to i64
  %115 = load i16, ptr %g, align 2
  %conv204 = zext i16 %115 to i64
  %shl205 = shl nuw nsw i64 %conv204, 8
  %or206 = or i64 %shl205, %conv203
  %116 = load i16, ptr %b, align 2
  %conv207 = zext i16 %116 to i64
  %shl208 = shl nuw nsw i64 %conv207, 16
  %or209 = or i64 %or206, %shl208
  %or210 = or i64 %or209, 4278190080
  %117 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr211 = getelementptr inbounds i64, ptr %117, i64 1
  store ptr %incdec.ptr211, ptr %cp.addr, align 8
  store i64 %or210, ptr %117, align 8
  %118 = load i32, ptr %samplesperpixel, align 4
  %119 = load ptr, ptr %pp.addr, align 8
  %idx.ext212 = sext i32 %118 to i64
  %add.ptr213 = getelementptr inbounds i8, ptr %119, i64 %idx.ext212
  store ptr %add.ptr213, ptr %pp.addr, align 8
  %arrayidx214 = getelementptr inbounds i8, ptr %add.ptr213, i64 3
  %120 = load i8, ptr %arrayidx214, align 1
  %121 = xor i8 %120, -1
  %conv217 = zext i8 %121 to i16
  store i16 %conv217, ptr %k, align 2
  %conv218 = zext i8 %121 to i16
  %122 = load ptr, ptr %pp.addr, align 8
  %123 = load i8, ptr %122, align 1
  %124 = xor i8 %123, -1
  %sub221 = zext i8 %124 to i16
  %mul222 = mul nuw i16 %conv218, %sub221
  %div223 = udiv i16 %mul222, 255
  store i16 %div223, ptr %r, align 2
  %125 = load i16, ptr %k, align 2
  %conv225 = zext i16 %125 to i32
  %126 = load ptr, ptr %pp.addr, align 8
  %arrayidx226 = getelementptr inbounds i8, ptr %126, i64 1
  %127 = load i8, ptr %arrayidx226, align 1
  %128 = xor i8 %127, -1
  %sub228 = zext i8 %128 to i32
  %mul229 = mul nuw nsw i32 %conv225, %sub228
  %div230 = udiv i32 %mul229, 255
  %conv231 = trunc i32 %div230 to i16
  store i16 %conv231, ptr %g, align 2
  %129 = load i16, ptr %k, align 2
  %conv232 = zext i16 %129 to i32
  %130 = load ptr, ptr %pp.addr, align 8
  %arrayidx233 = getelementptr inbounds i8, ptr %130, i64 2
  %131 = load i8, ptr %arrayidx233, align 1
  %132 = xor i8 %131, -1
  %sub235 = zext i8 %132 to i32
  %mul236 = mul nuw nsw i32 %conv232, %sub235
  %div237 = udiv i32 %mul236, 255
  %conv238 = trunc i32 %div237 to i16
  store i16 %conv238, ptr %b, align 2
  %133 = load i16, ptr %r, align 2
  %conv239 = zext i16 %133 to i64
  %134 = load i16, ptr %g, align 2
  %conv240 = zext i16 %134 to i64
  %shl241 = shl nuw nsw i64 %conv240, 8
  %or242 = or i64 %shl241, %conv239
  %135 = load i16, ptr %b, align 2
  %conv243 = zext i16 %135 to i64
  %shl244 = shl nuw nsw i64 %conv243, 16
  %or245 = or i64 %or242, %shl244
  %or246 = or i64 %or245, 4278190080
  %136 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr247 = getelementptr inbounds i64, ptr %136, i64 1
  store ptr %incdec.ptr247, ptr %cp.addr, align 8
  store i64 %or246, ptr %136, align 8
  %137 = load i32, ptr %samplesperpixel, align 4
  %138 = load ptr, ptr %pp.addr, align 8
  %idx.ext248 = sext i32 %137 to i64
  %add.ptr249 = getelementptr inbounds i8, ptr %138, i64 %idx.ext248
  store ptr %add.ptr249, ptr %pp.addr, align 8
  %arrayidx250 = getelementptr inbounds i8, ptr %add.ptr249, i64 3
  %139 = load i8, ptr %arrayidx250, align 1
  %140 = xor i8 %139, -1
  %conv253 = zext i8 %140 to i16
  store i16 %conv253, ptr %k, align 2
  %conv254 = zext i8 %140 to i16
  %141 = load ptr, ptr %pp.addr, align 8
  %142 = load i8, ptr %141, align 1
  %143 = xor i8 %142, -1
  %sub257 = zext i8 %143 to i16
  %mul258 = mul nuw i16 %conv254, %sub257
  %div259 = udiv i16 %mul258, 255
  store i16 %div259, ptr %r, align 2
  %144 = load i16, ptr %k, align 2
  %conv261 = zext i16 %144 to i32
  %145 = load ptr, ptr %pp.addr, align 8
  %arrayidx262 = getelementptr inbounds i8, ptr %145, i64 1
  %146 = load i8, ptr %arrayidx262, align 1
  %147 = xor i8 %146, -1
  %sub264 = zext i8 %147 to i32
  %mul265 = mul nuw nsw i32 %conv261, %sub264
  %div266 = udiv i32 %mul265, 255
  %conv267 = trunc i32 %div266 to i16
  store i16 %conv267, ptr %g, align 2
  %148 = load i16, ptr %k, align 2
  %conv268 = zext i16 %148 to i32
  %149 = load ptr, ptr %pp.addr, align 8
  %arrayidx269 = getelementptr inbounds i8, ptr %149, i64 2
  %150 = load i8, ptr %arrayidx269, align 1
  %151 = xor i8 %150, -1
  %sub271 = zext i8 %151 to i32
  %mul272 = mul nuw nsw i32 %conv268, %sub271
  %div273 = udiv i32 %mul272, 255
  %conv274 = trunc i32 %div273 to i16
  store i16 %conv274, ptr %b, align 2
  %152 = load i16, ptr %r, align 2
  %conv275 = zext i16 %152 to i64
  %153 = load i16, ptr %g, align 2
  %conv276 = zext i16 %153 to i64
  %shl277 = shl nuw nsw i64 %conv276, 8
  %or278 = or i64 %shl277, %conv275
  %154 = load i16, ptr %b, align 2
  %conv279 = zext i16 %154 to i64
  %shl280 = shl nuw nsw i64 %conv279, 16
  %or281 = or i64 %or278, %shl280
  %or282 = or i64 %or281, 4278190080
  %155 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr283 = getelementptr inbounds i64, ptr %155, i64 1
  store ptr %incdec.ptr283, ptr %cp.addr, align 8
  store i64 %or282, ptr %155, align 8
  %156 = load i32, ptr %samplesperpixel, align 4
  %157 = load ptr, ptr %pp.addr, align 8
  %idx.ext284 = sext i32 %156 to i64
  %add.ptr285 = getelementptr inbounds i8, ptr %157, i64 %idx.ext284
  store ptr %add.ptr285, ptr %pp.addr, align 8
  %158 = load i64, ptr %_x, align 8
  %sub286 = add i64 %158, -8
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  %159 = load i64, ptr %_x, align 8
  %cmp287.not = icmp eq i64 %159, 0
  br i1 %cmp287.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %160 = load i64, ptr %_x, align 8
  switch i64 %160, label %if.end [
    i64 7, label %sw.bb
    i64 6, label %sw.bb325
    i64 5, label %sw.bb362
    i64 4, label %sw.bb399
    i64 3, label %sw.bb436
    i64 2, label %sw.bb473
    i64 1, label %sw.bb510
  ]

sw.bb:                                            ; preds = %if.then
  %161 = load ptr, ptr %pp.addr, align 8
  %arrayidx289 = getelementptr inbounds i8, ptr %161, i64 3
  %162 = load i8, ptr %arrayidx289, align 1
  %163 = xor i8 %162, -1
  %conv292 = zext i8 %163 to i16
  store i16 %conv292, ptr %k, align 2
  %conv293 = zext i8 %163 to i16
  %164 = load ptr, ptr %pp.addr, align 8
  %165 = load i8, ptr %164, align 1
  %166 = xor i8 %165, -1
  %sub296 = zext i8 %166 to i16
  %mul297 = mul nuw i16 %conv293, %sub296
  %div298 = udiv i16 %mul297, 255
  store i16 %div298, ptr %r, align 2
  %167 = load i16, ptr %k, align 2
  %conv300 = zext i16 %167 to i32
  %168 = load ptr, ptr %pp.addr, align 8
  %arrayidx301 = getelementptr inbounds i8, ptr %168, i64 1
  %169 = load i8, ptr %arrayidx301, align 1
  %170 = xor i8 %169, -1
  %sub303 = zext i8 %170 to i32
  %mul304 = mul nuw nsw i32 %conv300, %sub303
  %div305 = udiv i32 %mul304, 255
  %conv306 = trunc i32 %div305 to i16
  store i16 %conv306, ptr %g, align 2
  %171 = load i16, ptr %k, align 2
  %conv307 = zext i16 %171 to i32
  %172 = load ptr, ptr %pp.addr, align 8
  %arrayidx308 = getelementptr inbounds i8, ptr %172, i64 2
  %173 = load i8, ptr %arrayidx308, align 1
  %174 = xor i8 %173, -1
  %sub310 = zext i8 %174 to i32
  %mul311 = mul nuw nsw i32 %conv307, %sub310
  %div312 = udiv i32 %mul311, 255
  %conv313 = trunc i32 %div312 to i16
  store i16 %conv313, ptr %b, align 2
  %175 = load i16, ptr %r, align 2
  %conv314 = zext i16 %175 to i64
  %176 = load i16, ptr %g, align 2
  %conv315 = zext i16 %176 to i64
  %shl316 = shl nuw nsw i64 %conv315, 8
  %or317 = or i64 %shl316, %conv314
  %177 = load i16, ptr %b, align 2
  %conv318 = zext i16 %177 to i64
  %shl319 = shl nuw nsw i64 %conv318, 16
  %or320 = or i64 %or317, %shl319
  %or321 = or i64 %or320, 4278190080
  %178 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr322 = getelementptr inbounds i64, ptr %178, i64 1
  store ptr %incdec.ptr322, ptr %cp.addr, align 8
  store i64 %or321, ptr %178, align 8
  %179 = load i32, ptr %samplesperpixel, align 4
  %180 = load ptr, ptr %pp.addr, align 8
  %idx.ext323 = sext i32 %179 to i64
  %add.ptr324 = getelementptr inbounds i8, ptr %180, i64 %idx.ext323
  store ptr %add.ptr324, ptr %pp.addr, align 8
  br label %sw.bb325

sw.bb325:                                         ; preds = %sw.bb, %if.then
  %181 = load ptr, ptr %pp.addr, align 8
  %arrayidx326 = getelementptr inbounds i8, ptr %181, i64 3
  %182 = load i8, ptr %arrayidx326, align 1
  %183 = xor i8 %182, -1
  %conv329 = zext i8 %183 to i16
  store i16 %conv329, ptr %k, align 2
  %conv330 = zext i8 %183 to i16
  %184 = load ptr, ptr %pp.addr, align 8
  %185 = load i8, ptr %184, align 1
  %186 = xor i8 %185, -1
  %sub333 = zext i8 %186 to i16
  %mul334 = mul nuw i16 %conv330, %sub333
  %div335 = udiv i16 %mul334, 255
  store i16 %div335, ptr %r, align 2
  %187 = load i16, ptr %k, align 2
  %conv337 = zext i16 %187 to i32
  %188 = load ptr, ptr %pp.addr, align 8
  %arrayidx338 = getelementptr inbounds i8, ptr %188, i64 1
  %189 = load i8, ptr %arrayidx338, align 1
  %190 = xor i8 %189, -1
  %sub340 = zext i8 %190 to i32
  %mul341 = mul nuw nsw i32 %conv337, %sub340
  %div342 = udiv i32 %mul341, 255
  %conv343 = trunc i32 %div342 to i16
  store i16 %conv343, ptr %g, align 2
  %191 = load i16, ptr %k, align 2
  %conv344 = zext i16 %191 to i32
  %192 = load ptr, ptr %pp.addr, align 8
  %arrayidx345 = getelementptr inbounds i8, ptr %192, i64 2
  %193 = load i8, ptr %arrayidx345, align 1
  %194 = xor i8 %193, -1
  %sub347 = zext i8 %194 to i32
  %mul348 = mul nuw nsw i32 %conv344, %sub347
  %div349 = udiv i32 %mul348, 255
  %conv350 = trunc i32 %div349 to i16
  store i16 %conv350, ptr %b, align 2
  %195 = load i16, ptr %r, align 2
  %conv351 = zext i16 %195 to i64
  %196 = load i16, ptr %g, align 2
  %conv352 = zext i16 %196 to i64
  %shl353 = shl nuw nsw i64 %conv352, 8
  %or354 = or i64 %shl353, %conv351
  %197 = load i16, ptr %b, align 2
  %conv355 = zext i16 %197 to i64
  %shl356 = shl nuw nsw i64 %conv355, 16
  %or357 = or i64 %or354, %shl356
  %or358 = or i64 %or357, 4278190080
  %198 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr359 = getelementptr inbounds i64, ptr %198, i64 1
  store ptr %incdec.ptr359, ptr %cp.addr, align 8
  store i64 %or358, ptr %198, align 8
  %199 = load i32, ptr %samplesperpixel, align 4
  %200 = load ptr, ptr %pp.addr, align 8
  %idx.ext360 = sext i32 %199 to i64
  %add.ptr361 = getelementptr inbounds i8, ptr %200, i64 %idx.ext360
  store ptr %add.ptr361, ptr %pp.addr, align 8
  br label %sw.bb362

sw.bb362:                                         ; preds = %sw.bb325, %if.then
  %201 = load ptr, ptr %pp.addr, align 8
  %arrayidx363 = getelementptr inbounds i8, ptr %201, i64 3
  %202 = load i8, ptr %arrayidx363, align 1
  %203 = xor i8 %202, -1
  %conv366 = zext i8 %203 to i16
  store i16 %conv366, ptr %k, align 2
  %conv367 = zext i8 %203 to i16
  %204 = load ptr, ptr %pp.addr, align 8
  %205 = load i8, ptr %204, align 1
  %206 = xor i8 %205, -1
  %sub370 = zext i8 %206 to i16
  %mul371 = mul nuw i16 %conv367, %sub370
  %div372 = udiv i16 %mul371, 255
  store i16 %div372, ptr %r, align 2
  %207 = load i16, ptr %k, align 2
  %conv374 = zext i16 %207 to i32
  %208 = load ptr, ptr %pp.addr, align 8
  %arrayidx375 = getelementptr inbounds i8, ptr %208, i64 1
  %209 = load i8, ptr %arrayidx375, align 1
  %210 = xor i8 %209, -1
  %sub377 = zext i8 %210 to i32
  %mul378 = mul nuw nsw i32 %conv374, %sub377
  %div379 = udiv i32 %mul378, 255
  %conv380 = trunc i32 %div379 to i16
  store i16 %conv380, ptr %g, align 2
  %211 = load i16, ptr %k, align 2
  %conv381 = zext i16 %211 to i32
  %212 = load ptr, ptr %pp.addr, align 8
  %arrayidx382 = getelementptr inbounds i8, ptr %212, i64 2
  %213 = load i8, ptr %arrayidx382, align 1
  %214 = xor i8 %213, -1
  %sub384 = zext i8 %214 to i32
  %mul385 = mul nuw nsw i32 %conv381, %sub384
  %div386 = udiv i32 %mul385, 255
  %conv387 = trunc i32 %div386 to i16
  store i16 %conv387, ptr %b, align 2
  %215 = load i16, ptr %r, align 2
  %conv388 = zext i16 %215 to i64
  %216 = load i16, ptr %g, align 2
  %conv389 = zext i16 %216 to i64
  %shl390 = shl nuw nsw i64 %conv389, 8
  %or391 = or i64 %shl390, %conv388
  %217 = load i16, ptr %b, align 2
  %conv392 = zext i16 %217 to i64
  %shl393 = shl nuw nsw i64 %conv392, 16
  %or394 = or i64 %or391, %shl393
  %or395 = or i64 %or394, 4278190080
  %218 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr396 = getelementptr inbounds i64, ptr %218, i64 1
  store ptr %incdec.ptr396, ptr %cp.addr, align 8
  store i64 %or395, ptr %218, align 8
  %219 = load i32, ptr %samplesperpixel, align 4
  %220 = load ptr, ptr %pp.addr, align 8
  %idx.ext397 = sext i32 %219 to i64
  %add.ptr398 = getelementptr inbounds i8, ptr %220, i64 %idx.ext397
  store ptr %add.ptr398, ptr %pp.addr, align 8
  br label %sw.bb399

sw.bb399:                                         ; preds = %sw.bb362, %if.then
  %221 = load ptr, ptr %pp.addr, align 8
  %arrayidx400 = getelementptr inbounds i8, ptr %221, i64 3
  %222 = load i8, ptr %arrayidx400, align 1
  %223 = xor i8 %222, -1
  %conv403 = zext i8 %223 to i16
  store i16 %conv403, ptr %k, align 2
  %conv404 = zext i8 %223 to i16
  %224 = load ptr, ptr %pp.addr, align 8
  %225 = load i8, ptr %224, align 1
  %226 = xor i8 %225, -1
  %sub407 = zext i8 %226 to i16
  %mul408 = mul nuw i16 %conv404, %sub407
  %div409 = udiv i16 %mul408, 255
  store i16 %div409, ptr %r, align 2
  %227 = load i16, ptr %k, align 2
  %conv411 = zext i16 %227 to i32
  %228 = load ptr, ptr %pp.addr, align 8
  %arrayidx412 = getelementptr inbounds i8, ptr %228, i64 1
  %229 = load i8, ptr %arrayidx412, align 1
  %230 = xor i8 %229, -1
  %sub414 = zext i8 %230 to i32
  %mul415 = mul nuw nsw i32 %conv411, %sub414
  %div416 = udiv i32 %mul415, 255
  %conv417 = trunc i32 %div416 to i16
  store i16 %conv417, ptr %g, align 2
  %231 = load i16, ptr %k, align 2
  %conv418 = zext i16 %231 to i32
  %232 = load ptr, ptr %pp.addr, align 8
  %arrayidx419 = getelementptr inbounds i8, ptr %232, i64 2
  %233 = load i8, ptr %arrayidx419, align 1
  %234 = xor i8 %233, -1
  %sub421 = zext i8 %234 to i32
  %mul422 = mul nuw nsw i32 %conv418, %sub421
  %div423 = udiv i32 %mul422, 255
  %conv424 = trunc i32 %div423 to i16
  store i16 %conv424, ptr %b, align 2
  %235 = load i16, ptr %r, align 2
  %conv425 = zext i16 %235 to i64
  %236 = load i16, ptr %g, align 2
  %conv426 = zext i16 %236 to i64
  %shl427 = shl nuw nsw i64 %conv426, 8
  %or428 = or i64 %shl427, %conv425
  %237 = load i16, ptr %b, align 2
  %conv429 = zext i16 %237 to i64
  %shl430 = shl nuw nsw i64 %conv429, 16
  %or431 = or i64 %or428, %shl430
  %or432 = or i64 %or431, 4278190080
  %238 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr433 = getelementptr inbounds i64, ptr %238, i64 1
  store ptr %incdec.ptr433, ptr %cp.addr, align 8
  store i64 %or432, ptr %238, align 8
  %239 = load i32, ptr %samplesperpixel, align 4
  %240 = load ptr, ptr %pp.addr, align 8
  %idx.ext434 = sext i32 %239 to i64
  %add.ptr435 = getelementptr inbounds i8, ptr %240, i64 %idx.ext434
  store ptr %add.ptr435, ptr %pp.addr, align 8
  br label %sw.bb436

sw.bb436:                                         ; preds = %sw.bb399, %if.then
  %241 = load ptr, ptr %pp.addr, align 8
  %arrayidx437 = getelementptr inbounds i8, ptr %241, i64 3
  %242 = load i8, ptr %arrayidx437, align 1
  %243 = xor i8 %242, -1
  %conv440 = zext i8 %243 to i16
  store i16 %conv440, ptr %k, align 2
  %conv441 = zext i8 %243 to i16
  %244 = load ptr, ptr %pp.addr, align 8
  %245 = load i8, ptr %244, align 1
  %246 = xor i8 %245, -1
  %sub444 = zext i8 %246 to i16
  %mul445 = mul nuw i16 %conv441, %sub444
  %div446 = udiv i16 %mul445, 255
  store i16 %div446, ptr %r, align 2
  %247 = load i16, ptr %k, align 2
  %conv448 = zext i16 %247 to i32
  %248 = load ptr, ptr %pp.addr, align 8
  %arrayidx449 = getelementptr inbounds i8, ptr %248, i64 1
  %249 = load i8, ptr %arrayidx449, align 1
  %250 = xor i8 %249, -1
  %sub451 = zext i8 %250 to i32
  %mul452 = mul nuw nsw i32 %conv448, %sub451
  %div453 = udiv i32 %mul452, 255
  %conv454 = trunc i32 %div453 to i16
  store i16 %conv454, ptr %g, align 2
  %251 = load i16, ptr %k, align 2
  %conv455 = zext i16 %251 to i32
  %252 = load ptr, ptr %pp.addr, align 8
  %arrayidx456 = getelementptr inbounds i8, ptr %252, i64 2
  %253 = load i8, ptr %arrayidx456, align 1
  %254 = xor i8 %253, -1
  %sub458 = zext i8 %254 to i32
  %mul459 = mul nuw nsw i32 %conv455, %sub458
  %div460 = udiv i32 %mul459, 255
  %conv461 = trunc i32 %div460 to i16
  store i16 %conv461, ptr %b, align 2
  %255 = load i16, ptr %r, align 2
  %conv462 = zext i16 %255 to i64
  %256 = load i16, ptr %g, align 2
  %conv463 = zext i16 %256 to i64
  %shl464 = shl nuw nsw i64 %conv463, 8
  %or465 = or i64 %shl464, %conv462
  %257 = load i16, ptr %b, align 2
  %conv466 = zext i16 %257 to i64
  %shl467 = shl nuw nsw i64 %conv466, 16
  %or468 = or i64 %or465, %shl467
  %or469 = or i64 %or468, 4278190080
  %258 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr470 = getelementptr inbounds i64, ptr %258, i64 1
  store ptr %incdec.ptr470, ptr %cp.addr, align 8
  store i64 %or469, ptr %258, align 8
  %259 = load i32, ptr %samplesperpixel, align 4
  %260 = load ptr, ptr %pp.addr, align 8
  %idx.ext471 = sext i32 %259 to i64
  %add.ptr472 = getelementptr inbounds i8, ptr %260, i64 %idx.ext471
  store ptr %add.ptr472, ptr %pp.addr, align 8
  br label %sw.bb473

sw.bb473:                                         ; preds = %sw.bb436, %if.then
  %261 = load ptr, ptr %pp.addr, align 8
  %arrayidx474 = getelementptr inbounds i8, ptr %261, i64 3
  %262 = load i8, ptr %arrayidx474, align 1
  %263 = xor i8 %262, -1
  %conv477 = zext i8 %263 to i16
  store i16 %conv477, ptr %k, align 2
  %conv478 = zext i8 %263 to i16
  %264 = load ptr, ptr %pp.addr, align 8
  %265 = load i8, ptr %264, align 1
  %266 = xor i8 %265, -1
  %sub481 = zext i8 %266 to i16
  %mul482 = mul nuw i16 %conv478, %sub481
  %div483 = udiv i16 %mul482, 255
  store i16 %div483, ptr %r, align 2
  %267 = load i16, ptr %k, align 2
  %conv485 = zext i16 %267 to i32
  %268 = load ptr, ptr %pp.addr, align 8
  %arrayidx486 = getelementptr inbounds i8, ptr %268, i64 1
  %269 = load i8, ptr %arrayidx486, align 1
  %270 = xor i8 %269, -1
  %sub488 = zext i8 %270 to i32
  %mul489 = mul nuw nsw i32 %conv485, %sub488
  %div490 = udiv i32 %mul489, 255
  %conv491 = trunc i32 %div490 to i16
  store i16 %conv491, ptr %g, align 2
  %271 = load i16, ptr %k, align 2
  %conv492 = zext i16 %271 to i32
  %272 = load ptr, ptr %pp.addr, align 8
  %arrayidx493 = getelementptr inbounds i8, ptr %272, i64 2
  %273 = load i8, ptr %arrayidx493, align 1
  %274 = xor i8 %273, -1
  %sub495 = zext i8 %274 to i32
  %mul496 = mul nuw nsw i32 %conv492, %sub495
  %div497 = udiv i32 %mul496, 255
  %conv498 = trunc i32 %div497 to i16
  store i16 %conv498, ptr %b, align 2
  %275 = load i16, ptr %r, align 2
  %conv499 = zext i16 %275 to i64
  %276 = load i16, ptr %g, align 2
  %conv500 = zext i16 %276 to i64
  %shl501 = shl nuw nsw i64 %conv500, 8
  %or502 = or i64 %shl501, %conv499
  %277 = load i16, ptr %b, align 2
  %conv503 = zext i16 %277 to i64
  %shl504 = shl nuw nsw i64 %conv503, 16
  %or505 = or i64 %or502, %shl504
  %or506 = or i64 %or505, 4278190080
  %278 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr507 = getelementptr inbounds i64, ptr %278, i64 1
  store ptr %incdec.ptr507, ptr %cp.addr, align 8
  store i64 %or506, ptr %278, align 8
  %279 = load i32, ptr %samplesperpixel, align 4
  %280 = load ptr, ptr %pp.addr, align 8
  %idx.ext508 = sext i32 %279 to i64
  %add.ptr509 = getelementptr inbounds i8, ptr %280, i64 %idx.ext508
  store ptr %add.ptr509, ptr %pp.addr, align 8
  br label %sw.bb510

sw.bb510:                                         ; preds = %sw.bb473, %if.then
  %281 = load ptr, ptr %pp.addr, align 8
  %arrayidx511 = getelementptr inbounds i8, ptr %281, i64 3
  %282 = load i8, ptr %arrayidx511, align 1
  %283 = xor i8 %282, -1
  %conv514 = zext i8 %283 to i16
  store i16 %conv514, ptr %k, align 2
  %conv515 = zext i8 %283 to i16
  %284 = load ptr, ptr %pp.addr, align 8
  %285 = load i8, ptr %284, align 1
  %286 = xor i8 %285, -1
  %sub518 = zext i8 %286 to i16
  %mul519 = mul nuw i16 %conv515, %sub518
  %div520 = udiv i16 %mul519, 255
  store i16 %div520, ptr %r, align 2
  %287 = load i16, ptr %k, align 2
  %conv522 = zext i16 %287 to i32
  %288 = load ptr, ptr %pp.addr, align 8
  %arrayidx523 = getelementptr inbounds i8, ptr %288, i64 1
  %289 = load i8, ptr %arrayidx523, align 1
  %290 = xor i8 %289, -1
  %sub525 = zext i8 %290 to i32
  %mul526 = mul nuw nsw i32 %conv522, %sub525
  %div527 = udiv i32 %mul526, 255
  %conv528 = trunc i32 %div527 to i16
  store i16 %conv528, ptr %g, align 2
  %291 = load i16, ptr %k, align 2
  %conv529 = zext i16 %291 to i32
  %292 = load ptr, ptr %pp.addr, align 8
  %arrayidx530 = getelementptr inbounds i8, ptr %292, i64 2
  %293 = load i8, ptr %arrayidx530, align 1
  %294 = xor i8 %293, -1
  %sub532 = zext i8 %294 to i32
  %mul533 = mul nuw nsw i32 %conv529, %sub532
  %div534 = udiv i32 %mul533, 255
  %conv535 = trunc i32 %div534 to i16
  store i16 %conv535, ptr %b, align 2
  %295 = load i16, ptr %r, align 2
  %conv536 = zext i16 %295 to i64
  %296 = load i16, ptr %g, align 2
  %conv537 = zext i16 %296 to i64
  %shl538 = shl nuw nsw i64 %conv537, 8
  %or539 = or i64 %shl538, %conv536
  %297 = load i16, ptr %b, align 2
  %conv540 = zext i16 %297 to i64
  %shl541 = shl nuw nsw i64 %conv540, 16
  %or542 = or i64 %or539, %shl541
  %or543 = or i64 %or542, 4278190080
  %298 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr544 = getelementptr inbounds i64, ptr %298, i64 1
  store ptr %incdec.ptr544, ptr %cp.addr, align 8
  store i64 %or543, ptr %298, align 8
  %299 = load i32, ptr %samplesperpixel, align 4
  %300 = load ptr, ptr %pp.addr, align 8
  %idx.ext545 = sext i32 %299 to i64
  %add.ptr546 = getelementptr inbounds i8, ptr %300, i64 %idx.ext545
  store ptr %add.ptr546, ptr %pp.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb510, %for.end
  %301 = load i64, ptr %toskew.addr, align 8
  %302 = load ptr, ptr %cp.addr, align 8
  %add.ptr547 = getelementptr inbounds i64, ptr %302, i64 %301
  store ptr %add.ptr547, ptr %cp.addr, align 8
  %303 = load i64, ptr %fromskew.addr, align 8
  %304 = load ptr, ptr %pp.addr, align 8
  %add.ptr548 = getelementptr inbounds i8, ptr %304, i64 %303
  store ptr %add.ptr548, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @putRGBcontig8bitCMYKMaptile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %pp.addr = alloca ptr, align 8
  %samplesperpixel = alloca i32, align 4
  %Map = alloca ptr, align 8
  %r = alloca i16, align 2
  %g = alloca i16, align 2
  %b = alloca i16, align 2
  %k = alloca i16, align 2
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %samplesperpixel1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 7
  %1 = load i16, ptr %samplesperpixel1, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %samplesperpixel, align 4
  %Map2 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 15
  %2 = load ptr, ptr %Map2, align 8
  store ptr %2, ptr %Map, align 8
  %conv3 = zext i16 %1 to i64
  %3 = load i64, ptr %fromskew.addr, align 8
  %mul = mul nsw i64 %3, %conv3
  store i64 %mul, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %4 = load i64, ptr %h.addr, align 8
  %dec = add i64 %4, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp.not = icmp eq i64 %4, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %5 = load i64, ptr %w.addr, align 8
  store i64 %5, ptr %x.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %6 = load i64, ptr %x.addr, align 8
  %dec5 = add i64 %6, -1
  store i64 %dec5, ptr %x.addr, align 8
  %cmp6.not = icmp eq i64 %6, 0
  br i1 %cmp6.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %7, i64 3
  %8 = load i8, ptr %arrayidx, align 1
  %9 = xor i8 %8, -1
  %conv9 = zext i8 %9 to i16
  store i16 %conv9, ptr %k, align 2
  %conv10 = zext i8 %9 to i16
  %10 = load ptr, ptr %pp.addr, align 8
  %11 = load i8, ptr %10, align 1
  %12 = xor i8 %11, -1
  %sub13 = zext i8 %12 to i16
  %mul14 = mul nuw i16 %conv10, %sub13
  %div = udiv i16 %mul14, 255
  store i16 %div, ptr %r, align 2
  %13 = load i16, ptr %k, align 2
  %conv16 = zext i16 %13 to i32
  %14 = load ptr, ptr %pp.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %14, i64 1
  %15 = load i8, ptr %arrayidx17, align 1
  %16 = xor i8 %15, -1
  %sub19 = zext i8 %16 to i32
  %mul20 = mul nuw nsw i32 %conv16, %sub19
  %div21 = udiv i32 %mul20, 255
  %conv22 = trunc i32 %div21 to i16
  store i16 %conv22, ptr %g, align 2
  %17 = load i16, ptr %k, align 2
  %conv23 = zext i16 %17 to i32
  %18 = load ptr, ptr %pp.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %18, i64 2
  %19 = load i8, ptr %arrayidx24, align 1
  %20 = xor i8 %19, -1
  %sub26 = zext i8 %20 to i32
  %mul27 = mul nuw nsw i32 %conv23, %sub26
  %div28 = udiv i32 %mul27, 255
  %conv29 = trunc i32 %div28 to i16
  store i16 %conv29, ptr %b, align 2
  %21 = load ptr, ptr %Map, align 8
  %22 = load i16, ptr %r, align 2
  %idxprom = zext i16 %22 to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %21, i64 %idxprom
  %23 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %23 to i64
  %24 = load i16, ptr %g, align 2
  %idxprom32 = zext i16 %24 to i64
  %arrayidx33 = getelementptr inbounds i8, ptr %21, i64 %idxprom32
  %25 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %25 to i64
  %shl = shl nuw nsw i64 %conv34, 8
  %or = or i64 %shl, %conv31
  %26 = load ptr, ptr %Map, align 8
  %27 = load i16, ptr %b, align 2
  %idxprom35 = zext i16 %27 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %26, i64 %idxprom35
  %28 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %28 to i64
  %shl38 = shl nuw nsw i64 %conv37, 16
  %or39 = or i64 %or, %shl38
  %or40 = or i64 %or39, 4278190080
  %29 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %29, i64 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i64 %or40, ptr %29, align 8
  %30 = load i32, ptr %samplesperpixel, align 4
  %31 = load ptr, ptr %pp.addr, align 8
  %idx.ext = sext i32 %30 to i64
  %add.ptr = getelementptr inbounds i8, ptr %31, i64 %idx.ext
  store ptr %add.ptr, ptr %pp.addr, align 8
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  %32 = load i64, ptr %fromskew.addr, align 8
  %33 = load ptr, ptr %pp.addr, align 8
  %add.ptr41 = getelementptr inbounds i8, ptr %33, i64 %32
  store ptr %add.ptr41, ptr %pp.addr, align 8
  %34 = load i64, ptr %toskew.addr, align 8
  %35 = load ptr, ptr %cp.addr, align 8
  %add.ptr42 = getelementptr inbounds i64, ptr %35, i64 %34
  store ptr %add.ptr42, ptr %cp.addr, align 8
  br label %while.cond, !llvm.loop !32

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @put8bitcmaptile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %pp.addr = alloca ptr, align 8
  %PALmap = alloca ptr, align 8
  %_x = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %PALmap1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 17
  %1 = load ptr, ptr %PALmap1, align 8
  store ptr %1, ptr %PALmap, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i64, ptr %h.addr, align 8
  %dec = add i64 %2, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp.not = icmp eq i64 %2, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %3 = load i64, ptr %w.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %storemerge = phi i64 [ %3, %while.body ], [ %sub, %for.body ]
  store i64 %storemerge, ptr %_x, align 8
  %cmp2 = icmp ugt i64 %storemerge, 7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %PALmap, align 8
  %5 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %incdec.ptr, ptr %pp.addr, align 8
  %6 = load i8, ptr %5, align 1
  %idxprom = zext i8 %6 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = load i64, ptr %7, align 8
  %9 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i64, ptr %9, i64 1
  store ptr %incdec.ptr4, ptr %cp.addr, align 8
  store i64 %8, ptr %9, align 8
  %10 = load ptr, ptr %PALmap, align 8
  %11 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %incdec.ptr5, ptr %pp.addr, align 8
  %12 = load i8, ptr %11, align 1
  %idxprom6 = zext i8 %12 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %10, i64 %idxprom6
  %13 = load ptr, ptr %arrayidx7, align 8
  %14 = load i64, ptr %13, align 8
  %15 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i64, ptr %15, i64 1
  store ptr %incdec.ptr9, ptr %cp.addr, align 8
  store i64 %14, ptr %15, align 8
  %16 = load ptr, ptr %PALmap, align 8
  %17 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %incdec.ptr10, ptr %pp.addr, align 8
  %18 = load i8, ptr %17, align 1
  %idxprom11 = zext i8 %18 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %16, i64 %idxprom11
  %19 = load ptr, ptr %arrayidx12, align 8
  %20 = load i64, ptr %19, align 8
  %21 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i64, ptr %21, i64 1
  store ptr %incdec.ptr14, ptr %cp.addr, align 8
  store i64 %20, ptr %21, align 8
  %22 = load ptr, ptr %PALmap, align 8
  %23 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr15 = getelementptr inbounds i8, ptr %23, i64 1
  store ptr %incdec.ptr15, ptr %pp.addr, align 8
  %24 = load i8, ptr %23, align 1
  %idxprom16 = zext i8 %24 to i64
  %arrayidx17 = getelementptr inbounds ptr, ptr %22, i64 %idxprom16
  %25 = load ptr, ptr %arrayidx17, align 8
  %26 = load i64, ptr %25, align 8
  %27 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr19 = getelementptr inbounds i64, ptr %27, i64 1
  store ptr %incdec.ptr19, ptr %cp.addr, align 8
  store i64 %26, ptr %27, align 8
  %28 = load ptr, ptr %PALmap, align 8
  %29 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %29, i64 1
  store ptr %incdec.ptr20, ptr %pp.addr, align 8
  %30 = load i8, ptr %29, align 1
  %idxprom21 = zext i8 %30 to i64
  %arrayidx22 = getelementptr inbounds ptr, ptr %28, i64 %idxprom21
  %31 = load ptr, ptr %arrayidx22, align 8
  %32 = load i64, ptr %31, align 8
  %33 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr24 = getelementptr inbounds i64, ptr %33, i64 1
  store ptr %incdec.ptr24, ptr %cp.addr, align 8
  store i64 %32, ptr %33, align 8
  %34 = load ptr, ptr %PALmap, align 8
  %35 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr25 = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %incdec.ptr25, ptr %pp.addr, align 8
  %36 = load i8, ptr %35, align 1
  %idxprom26 = zext i8 %36 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %34, i64 %idxprom26
  %37 = load ptr, ptr %arrayidx27, align 8
  %38 = load i64, ptr %37, align 8
  %39 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr29 = getelementptr inbounds i64, ptr %39, i64 1
  store ptr %incdec.ptr29, ptr %cp.addr, align 8
  store i64 %38, ptr %39, align 8
  %40 = load ptr, ptr %PALmap, align 8
  %41 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i8, ptr %41, i64 1
  store ptr %incdec.ptr30, ptr %pp.addr, align 8
  %42 = load i8, ptr %41, align 1
  %idxprom31 = zext i8 %42 to i64
  %arrayidx32 = getelementptr inbounds ptr, ptr %40, i64 %idxprom31
  %43 = load ptr, ptr %arrayidx32, align 8
  %44 = load i64, ptr %43, align 8
  %45 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr34 = getelementptr inbounds i64, ptr %45, i64 1
  store ptr %incdec.ptr34, ptr %cp.addr, align 8
  store i64 %44, ptr %45, align 8
  %46 = load ptr, ptr %PALmap, align 8
  %47 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr35 = getelementptr inbounds i8, ptr %47, i64 1
  store ptr %incdec.ptr35, ptr %pp.addr, align 8
  %48 = load i8, ptr %47, align 1
  %idxprom36 = zext i8 %48 to i64
  %arrayidx37 = getelementptr inbounds ptr, ptr %46, i64 %idxprom36
  %49 = load ptr, ptr %arrayidx37, align 8
  %50 = load i64, ptr %49, align 8
  %51 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr39 = getelementptr inbounds i64, ptr %51, i64 1
  store ptr %incdec.ptr39, ptr %cp.addr, align 8
  store i64 %50, ptr %51, align 8
  %52 = load i64, ptr %_x, align 8
  %sub = add i64 %52, -8
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  %53 = load i64, ptr %_x, align 8
  %cmp40.not = icmp eq i64 %53, 0
  br i1 %cmp40.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %54 = load i64, ptr %_x, align 8
  switch i64 %54, label %if.end [
    i64 7, label %sw.bb
    i64 6, label %sw.bb46
    i64 5, label %sw.bb52
    i64 4, label %sw.bb58
    i64 3, label %sw.bb64
    i64 2, label %sw.bb70
    i64 1, label %sw.bb76
  ]

sw.bb:                                            ; preds = %if.then
  %55 = load ptr, ptr %PALmap, align 8
  %56 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr41 = getelementptr inbounds i8, ptr %56, i64 1
  store ptr %incdec.ptr41, ptr %pp.addr, align 8
  %57 = load i8, ptr %56, align 1
  %idxprom42 = zext i8 %57 to i64
  %arrayidx43 = getelementptr inbounds ptr, ptr %55, i64 %idxprom42
  %58 = load ptr, ptr %arrayidx43, align 8
  %59 = load i64, ptr %58, align 8
  %60 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr45 = getelementptr inbounds i64, ptr %60, i64 1
  store ptr %incdec.ptr45, ptr %cp.addr, align 8
  store i64 %59, ptr %60, align 8
  br label %sw.bb46

sw.bb46:                                          ; preds = %sw.bb, %if.then
  %61 = load ptr, ptr %PALmap, align 8
  %62 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr47 = getelementptr inbounds i8, ptr %62, i64 1
  store ptr %incdec.ptr47, ptr %pp.addr, align 8
  %63 = load i8, ptr %62, align 1
  %idxprom48 = zext i8 %63 to i64
  %arrayidx49 = getelementptr inbounds ptr, ptr %61, i64 %idxprom48
  %64 = load ptr, ptr %arrayidx49, align 8
  %65 = load i64, ptr %64, align 8
  %66 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr51 = getelementptr inbounds i64, ptr %66, i64 1
  store ptr %incdec.ptr51, ptr %cp.addr, align 8
  store i64 %65, ptr %66, align 8
  br label %sw.bb52

sw.bb52:                                          ; preds = %sw.bb46, %if.then
  %67 = load ptr, ptr %PALmap, align 8
  %68 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr53 = getelementptr inbounds i8, ptr %68, i64 1
  store ptr %incdec.ptr53, ptr %pp.addr, align 8
  %69 = load i8, ptr %68, align 1
  %idxprom54 = zext i8 %69 to i64
  %arrayidx55 = getelementptr inbounds ptr, ptr %67, i64 %idxprom54
  %70 = load ptr, ptr %arrayidx55, align 8
  %71 = load i64, ptr %70, align 8
  %72 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr57 = getelementptr inbounds i64, ptr %72, i64 1
  store ptr %incdec.ptr57, ptr %cp.addr, align 8
  store i64 %71, ptr %72, align 8
  br label %sw.bb58

sw.bb58:                                          ; preds = %sw.bb52, %if.then
  %73 = load ptr, ptr %PALmap, align 8
  %74 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr59 = getelementptr inbounds i8, ptr %74, i64 1
  store ptr %incdec.ptr59, ptr %pp.addr, align 8
  %75 = load i8, ptr %74, align 1
  %idxprom60 = zext i8 %75 to i64
  %arrayidx61 = getelementptr inbounds ptr, ptr %73, i64 %idxprom60
  %76 = load ptr, ptr %arrayidx61, align 8
  %77 = load i64, ptr %76, align 8
  %78 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr63 = getelementptr inbounds i64, ptr %78, i64 1
  store ptr %incdec.ptr63, ptr %cp.addr, align 8
  store i64 %77, ptr %78, align 8
  br label %sw.bb64

sw.bb64:                                          ; preds = %sw.bb58, %if.then
  %79 = load ptr, ptr %PALmap, align 8
  %80 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr65 = getelementptr inbounds i8, ptr %80, i64 1
  store ptr %incdec.ptr65, ptr %pp.addr, align 8
  %81 = load i8, ptr %80, align 1
  %idxprom66 = zext i8 %81 to i64
  %arrayidx67 = getelementptr inbounds ptr, ptr %79, i64 %idxprom66
  %82 = load ptr, ptr %arrayidx67, align 8
  %83 = load i64, ptr %82, align 8
  %84 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr69 = getelementptr inbounds i64, ptr %84, i64 1
  store ptr %incdec.ptr69, ptr %cp.addr, align 8
  store i64 %83, ptr %84, align 8
  br label %sw.bb70

sw.bb70:                                          ; preds = %sw.bb64, %if.then
  %85 = load ptr, ptr %PALmap, align 8
  %86 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr71 = getelementptr inbounds i8, ptr %86, i64 1
  store ptr %incdec.ptr71, ptr %pp.addr, align 8
  %87 = load i8, ptr %86, align 1
  %idxprom72 = zext i8 %87 to i64
  %arrayidx73 = getelementptr inbounds ptr, ptr %85, i64 %idxprom72
  %88 = load ptr, ptr %arrayidx73, align 8
  %89 = load i64, ptr %88, align 8
  %90 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr75 = getelementptr inbounds i64, ptr %90, i64 1
  store ptr %incdec.ptr75, ptr %cp.addr, align 8
  store i64 %89, ptr %90, align 8
  br label %sw.bb76

sw.bb76:                                          ; preds = %sw.bb70, %if.then
  %91 = load ptr, ptr %PALmap, align 8
  %92 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr77 = getelementptr inbounds i8, ptr %92, i64 1
  store ptr %incdec.ptr77, ptr %pp.addr, align 8
  %93 = load i8, ptr %92, align 1
  %idxprom78 = zext i8 %93 to i64
  %arrayidx79 = getelementptr inbounds ptr, ptr %91, i64 %idxprom78
  %94 = load ptr, ptr %arrayidx79, align 8
  %95 = load i64, ptr %94, align 8
  %96 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr81 = getelementptr inbounds i64, ptr %96, i64 1
  store ptr %incdec.ptr81, ptr %cp.addr, align 8
  store i64 %95, ptr %96, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb76, %for.end
  %97 = load i64, ptr %toskew.addr, align 8
  %98 = load ptr, ptr %cp.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %98, i64 %97
  store ptr %add.ptr, ptr %cp.addr, align 8
  %99 = load i64, ptr %fromskew.addr, align 8
  %100 = load ptr, ptr %pp.addr, align 8
  %add.ptr82 = getelementptr inbounds i8, ptr %100, i64 %99
  store ptr %add.ptr82, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !34

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @put4bitcmaptile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %pp.addr = alloca ptr, align 8
  %PALmap = alloca ptr, align 8
  %_x = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %PALmap1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 17
  %1 = load ptr, ptr %PALmap1, align 8
  store ptr %1, ptr %PALmap, align 8
  %2 = load i64, ptr %fromskew.addr, align 8
  %div = sdiv i64 %2, 2
  store i64 %div, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i64, ptr %h.addr, align 8
  %dec = add i64 %3, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp.not = icmp eq i64 %3, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load i64, ptr %w.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %storemerge = phi i64 [ %4, %while.body ], [ %sub, %for.body ]
  store i64 %storemerge, ptr %_x, align 8
  %cmp2 = icmp ugt i64 %storemerge, 1
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %PALmap, align 8
  %6 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr, ptr %pp.addr, align 8
  %7 = load i8, ptr %6, align 1
  %idxprom = zext i8 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  %incdec.ptr3 = getelementptr inbounds i64, ptr %8, i64 1
  %9 = load i64, ptr %8, align 8
  %10 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i64, ptr %10, i64 1
  store ptr %incdec.ptr4, ptr %cp.addr, align 8
  store i64 %9, ptr %10, align 8
  %11 = load i64, ptr %incdec.ptr3, align 8
  %incdec.ptr6 = getelementptr inbounds i64, ptr %10, i64 2
  store ptr %incdec.ptr6, ptr %cp.addr, align 8
  store i64 %11, ptr %incdec.ptr4, align 8
  %12 = load i64, ptr %_x, align 8
  %sub = add i64 %12, -2
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %for.cond
  %13 = load i64, ptr %_x, align 8
  %tobool.not = icmp eq i64 %13, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %14 = load ptr, ptr %PALmap, align 8
  %15 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %incdec.ptr7, ptr %pp.addr, align 8
  %16 = load i8, ptr %15, align 1
  %idxprom8 = zext i8 %16 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %14, i64 %idxprom8
  %17 = load ptr, ptr %arrayidx9, align 8
  %18 = load i64, ptr %17, align 8
  %19 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i64, ptr %19, i64 1
  store ptr %incdec.ptr11, ptr %cp.addr, align 8
  store i64 %18, ptr %19, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %20 = load i64, ptr %toskew.addr, align 8
  %21 = load ptr, ptr %cp.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %21, i64 %20
  store ptr %add.ptr, ptr %cp.addr, align 8
  %22 = load i64, ptr %fromskew.addr, align 8
  %23 = load ptr, ptr %pp.addr, align 8
  %add.ptr12 = getelementptr inbounds i8, ptr %23, i64 %22
  store ptr %add.ptr12, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !36

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @put2bitcmaptile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %pp.addr = alloca ptr, align 8
  %PALmap = alloca ptr, align 8
  %bw = alloca ptr, align 8
  %_x = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %PALmap1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 17
  %1 = load ptr, ptr %PALmap1, align 8
  store ptr %1, ptr %PALmap, align 8
  %2 = load i64, ptr %fromskew.addr, align 8
  %div = sdiv i64 %2, 4
  store i64 %div, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i64, ptr %h.addr, align 8
  %dec = add i64 %3, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp.not = icmp eq i64 %3, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load i64, ptr %w.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %storemerge = phi i64 [ %4, %while.body ], [ %sub, %for.body ]
  store i64 %storemerge, ptr %_x, align 8
  %cmp2 = icmp ugt i64 %storemerge, 3
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %PALmap, align 8
  %6 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr, ptr %pp.addr, align 8
  %7 = load i8, ptr %6, align 1
  %idxprom = zext i8 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  %incdec.ptr3 = getelementptr inbounds i64, ptr %8, i64 1
  store ptr %incdec.ptr3, ptr %bw, align 8
  %9 = load i64, ptr %8, align 8
  %10 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i64, ptr %10, i64 1
  store ptr %incdec.ptr4, ptr %cp.addr, align 8
  store i64 %9, ptr %10, align 8
  %incdec.ptr5 = getelementptr inbounds i64, ptr %8, i64 2
  store ptr %incdec.ptr5, ptr %bw, align 8
  %11 = load i64, ptr %incdec.ptr3, align 8
  %incdec.ptr6 = getelementptr inbounds i64, ptr %10, i64 2
  store ptr %incdec.ptr6, ptr %cp.addr, align 8
  store i64 %11, ptr %incdec.ptr4, align 8
  %incdec.ptr7 = getelementptr inbounds i64, ptr %8, i64 3
  store ptr %incdec.ptr7, ptr %bw, align 8
  %12 = load i64, ptr %incdec.ptr5, align 8
  %incdec.ptr8 = getelementptr inbounds i64, ptr %10, i64 3
  store ptr %incdec.ptr8, ptr %cp.addr, align 8
  store i64 %12, ptr %incdec.ptr6, align 8
  %incdec.ptr9 = getelementptr inbounds i64, ptr %8, i64 4
  store ptr %incdec.ptr9, ptr %bw, align 8
  %13 = load i64, ptr %incdec.ptr7, align 8
  %incdec.ptr10 = getelementptr inbounds i64, ptr %10, i64 4
  store ptr %incdec.ptr10, ptr %cp.addr, align 8
  store i64 %13, ptr %incdec.ptr8, align 8
  %14 = load i64, ptr %_x, align 8
  %sub = add i64 %14, -4
  br label %for.cond, !llvm.loop !37

for.end:                                          ; preds = %for.cond
  %15 = load i64, ptr %_x, align 8
  %cmp11.not = icmp eq i64 %15, 0
  br i1 %cmp11.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %16 = load ptr, ptr %PALmap, align 8
  %17 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %incdec.ptr12, ptr %pp.addr, align 8
  %18 = load i8, ptr %17, align 1
  %idxprom13 = zext i8 %18 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %16, i64 %idxprom13
  %19 = load ptr, ptr %arrayidx14, align 8
  store ptr %19, ptr %bw, align 8
  %20 = load i64, ptr %_x, align 8
  switch i64 %20, label %if.end [
    i64 3, label %sw.bb
    i64 2, label %sw.bb17
    i64 1, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.then
  %21 = load ptr, ptr %bw, align 8
  %incdec.ptr15 = getelementptr inbounds i64, ptr %21, i64 1
  store ptr %incdec.ptr15, ptr %bw, align 8
  %22 = load i64, ptr %21, align 8
  %23 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i64, ptr %23, i64 1
  store ptr %incdec.ptr16, ptr %cp.addr, align 8
  store i64 %22, ptr %23, align 8
  br label %sw.bb17

sw.bb17:                                          ; preds = %sw.bb, %if.then
  %24 = load ptr, ptr %bw, align 8
  %incdec.ptr18 = getelementptr inbounds i64, ptr %24, i64 1
  store ptr %incdec.ptr18, ptr %bw, align 8
  %25 = load i64, ptr %24, align 8
  %26 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr19 = getelementptr inbounds i64, ptr %26, i64 1
  store ptr %incdec.ptr19, ptr %cp.addr, align 8
  store i64 %25, ptr %26, align 8
  br label %sw.bb20

sw.bb20:                                          ; preds = %sw.bb17, %if.then
  %27 = load ptr, ptr %bw, align 8
  %incdec.ptr21 = getelementptr inbounds i64, ptr %27, i64 1
  store ptr %incdec.ptr21, ptr %bw, align 8
  %28 = load i64, ptr %27, align 8
  %29 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i64, ptr %29, i64 1
  store ptr %incdec.ptr22, ptr %cp.addr, align 8
  store i64 %28, ptr %29, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb20, %for.end
  %30 = load i64, ptr %toskew.addr, align 8
  %31 = load ptr, ptr %cp.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %31, i64 %30
  store ptr %add.ptr, ptr %cp.addr, align 8
  %32 = load i64, ptr %fromskew.addr, align 8
  %33 = load ptr, ptr %pp.addr, align 8
  %add.ptr23 = getelementptr inbounds i8, ptr %33, i64 %32
  store ptr %add.ptr23, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !38

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @put1bitcmaptile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %pp.addr = alloca ptr, align 8
  %PALmap = alloca ptr, align 8
  %bw = alloca ptr, align 8
  %_x = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %PALmap1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 17
  %1 = load ptr, ptr %PALmap1, align 8
  store ptr %1, ptr %PALmap, align 8
  %2 = load i64, ptr %fromskew.addr, align 8
  %div = sdiv i64 %2, 8
  store i64 %div, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i64, ptr %h.addr, align 8
  %dec = add i64 %3, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp.not = icmp eq i64 %3, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load i64, ptr %w.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %storemerge = phi i64 [ %4, %while.body ], [ %sub, %for.body ]
  store i64 %storemerge, ptr %_x, align 8
  %cmp2 = icmp ugt i64 %storemerge, 7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %PALmap, align 8
  %6 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr, ptr %pp.addr, align 8
  %7 = load i8, ptr %6, align 1
  %idxprom = zext i8 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  %incdec.ptr3 = getelementptr inbounds i64, ptr %8, i64 1
  store ptr %incdec.ptr3, ptr %bw, align 8
  %9 = load i64, ptr %8, align 8
  %10 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i64, ptr %10, i64 1
  store ptr %incdec.ptr4, ptr %cp.addr, align 8
  store i64 %9, ptr %10, align 8
  %incdec.ptr5 = getelementptr inbounds i64, ptr %8, i64 2
  store ptr %incdec.ptr5, ptr %bw, align 8
  %11 = load i64, ptr %incdec.ptr3, align 8
  %incdec.ptr6 = getelementptr inbounds i64, ptr %10, i64 2
  store ptr %incdec.ptr6, ptr %cp.addr, align 8
  store i64 %11, ptr %incdec.ptr4, align 8
  %incdec.ptr7 = getelementptr inbounds i64, ptr %8, i64 3
  store ptr %incdec.ptr7, ptr %bw, align 8
  %12 = load i64, ptr %incdec.ptr5, align 8
  %incdec.ptr8 = getelementptr inbounds i64, ptr %10, i64 3
  store ptr %incdec.ptr8, ptr %cp.addr, align 8
  store i64 %12, ptr %incdec.ptr6, align 8
  %incdec.ptr9 = getelementptr inbounds i64, ptr %8, i64 4
  store ptr %incdec.ptr9, ptr %bw, align 8
  %13 = load i64, ptr %incdec.ptr7, align 8
  %incdec.ptr10 = getelementptr inbounds i64, ptr %10, i64 4
  store ptr %incdec.ptr10, ptr %cp.addr, align 8
  store i64 %13, ptr %incdec.ptr8, align 8
  %incdec.ptr11 = getelementptr inbounds i64, ptr %8, i64 5
  store ptr %incdec.ptr11, ptr %bw, align 8
  %14 = load i64, ptr %incdec.ptr9, align 8
  %incdec.ptr12 = getelementptr inbounds i64, ptr %10, i64 5
  store ptr %incdec.ptr12, ptr %cp.addr, align 8
  store i64 %14, ptr %incdec.ptr10, align 8
  %incdec.ptr13 = getelementptr inbounds i64, ptr %8, i64 6
  store ptr %incdec.ptr13, ptr %bw, align 8
  %15 = load i64, ptr %incdec.ptr11, align 8
  %incdec.ptr14 = getelementptr inbounds i64, ptr %10, i64 6
  store ptr %incdec.ptr14, ptr %cp.addr, align 8
  store i64 %15, ptr %incdec.ptr12, align 8
  %incdec.ptr15 = getelementptr inbounds i64, ptr %8, i64 7
  store ptr %incdec.ptr15, ptr %bw, align 8
  %16 = load i64, ptr %incdec.ptr13, align 8
  %incdec.ptr16 = getelementptr inbounds i64, ptr %10, i64 7
  store ptr %incdec.ptr16, ptr %cp.addr, align 8
  store i64 %16, ptr %incdec.ptr14, align 8
  %incdec.ptr17 = getelementptr inbounds i64, ptr %8, i64 8
  store ptr %incdec.ptr17, ptr %bw, align 8
  %17 = load i64, ptr %incdec.ptr15, align 8
  %incdec.ptr18 = getelementptr inbounds i64, ptr %10, i64 8
  store ptr %incdec.ptr18, ptr %cp.addr, align 8
  store i64 %17, ptr %incdec.ptr16, align 8
  %18 = load i64, ptr %_x, align 8
  %sub = add i64 %18, -8
  br label %for.cond, !llvm.loop !39

for.end:                                          ; preds = %for.cond
  %19 = load i64, ptr %_x, align 8
  %cmp19.not = icmp eq i64 %19, 0
  br i1 %cmp19.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %20 = load ptr, ptr %PALmap, align 8
  %21 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %incdec.ptr20, ptr %pp.addr, align 8
  %22 = load i8, ptr %21, align 1
  %idxprom21 = zext i8 %22 to i64
  %arrayidx22 = getelementptr inbounds ptr, ptr %20, i64 %idxprom21
  %23 = load ptr, ptr %arrayidx22, align 8
  store ptr %23, ptr %bw, align 8
  %24 = load i64, ptr %_x, align 8
  switch i64 %24, label %if.end [
    i64 7, label %sw.bb
    i64 6, label %sw.bb25
    i64 5, label %sw.bb28
    i64 4, label %sw.bb31
    i64 3, label %sw.bb34
    i64 2, label %sw.bb37
    i64 1, label %sw.bb40
  ]

sw.bb:                                            ; preds = %if.then
  %25 = load ptr, ptr %bw, align 8
  %incdec.ptr23 = getelementptr inbounds i64, ptr %25, i64 1
  store ptr %incdec.ptr23, ptr %bw, align 8
  %26 = load i64, ptr %25, align 8
  %27 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr24 = getelementptr inbounds i64, ptr %27, i64 1
  store ptr %incdec.ptr24, ptr %cp.addr, align 8
  store i64 %26, ptr %27, align 8
  br label %sw.bb25

sw.bb25:                                          ; preds = %sw.bb, %if.then
  %28 = load ptr, ptr %bw, align 8
  %incdec.ptr26 = getelementptr inbounds i64, ptr %28, i64 1
  store ptr %incdec.ptr26, ptr %bw, align 8
  %29 = load i64, ptr %28, align 8
  %30 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr27 = getelementptr inbounds i64, ptr %30, i64 1
  store ptr %incdec.ptr27, ptr %cp.addr, align 8
  store i64 %29, ptr %30, align 8
  br label %sw.bb28

sw.bb28:                                          ; preds = %sw.bb25, %if.then
  %31 = load ptr, ptr %bw, align 8
  %incdec.ptr29 = getelementptr inbounds i64, ptr %31, i64 1
  store ptr %incdec.ptr29, ptr %bw, align 8
  %32 = load i64, ptr %31, align 8
  %33 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i64, ptr %33, i64 1
  store ptr %incdec.ptr30, ptr %cp.addr, align 8
  store i64 %32, ptr %33, align 8
  br label %sw.bb31

sw.bb31:                                          ; preds = %sw.bb28, %if.then
  %34 = load ptr, ptr %bw, align 8
  %incdec.ptr32 = getelementptr inbounds i64, ptr %34, i64 1
  store ptr %incdec.ptr32, ptr %bw, align 8
  %35 = load i64, ptr %34, align 8
  %36 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr33 = getelementptr inbounds i64, ptr %36, i64 1
  store ptr %incdec.ptr33, ptr %cp.addr, align 8
  store i64 %35, ptr %36, align 8
  br label %sw.bb34

sw.bb34:                                          ; preds = %sw.bb31, %if.then
  %37 = load ptr, ptr %bw, align 8
  %incdec.ptr35 = getelementptr inbounds i64, ptr %37, i64 1
  store ptr %incdec.ptr35, ptr %bw, align 8
  %38 = load i64, ptr %37, align 8
  %39 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr36 = getelementptr inbounds i64, ptr %39, i64 1
  store ptr %incdec.ptr36, ptr %cp.addr, align 8
  store i64 %38, ptr %39, align 8
  br label %sw.bb37

sw.bb37:                                          ; preds = %sw.bb34, %if.then
  %40 = load ptr, ptr %bw, align 8
  %incdec.ptr38 = getelementptr inbounds i64, ptr %40, i64 1
  store ptr %incdec.ptr38, ptr %bw, align 8
  %41 = load i64, ptr %40, align 8
  %42 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr39 = getelementptr inbounds i64, ptr %42, i64 1
  store ptr %incdec.ptr39, ptr %cp.addr, align 8
  store i64 %41, ptr %42, align 8
  br label %sw.bb40

sw.bb40:                                          ; preds = %sw.bb37, %if.then
  %43 = load ptr, ptr %bw, align 8
  %incdec.ptr41 = getelementptr inbounds i64, ptr %43, i64 1
  store ptr %incdec.ptr41, ptr %bw, align 8
  %44 = load i64, ptr %43, align 8
  %45 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr42 = getelementptr inbounds i64, ptr %45, i64 1
  store ptr %incdec.ptr42, ptr %cp.addr, align 8
  store i64 %44, ptr %45, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb40, %for.end
  %46 = load i64, ptr %toskew.addr, align 8
  %47 = load ptr, ptr %cp.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %47, i64 %46
  store ptr %add.ptr, ptr %cp.addr, align 8
  %48 = load i64, ptr %fromskew.addr, align 8
  %49 = load ptr, ptr %pp.addr, align 8
  %add.ptr43 = getelementptr inbounds i8, ptr %49, i64 %48
  store ptr %add.ptr43, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !40

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @putgreytile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %pp.addr = alloca ptr, align 8
  %BWmap = alloca ptr, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %BWmap1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 16
  %1 = load ptr, ptr %BWmap1, align 8
  store ptr %1, ptr %BWmap, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %2 = load i64, ptr %h.addr, align 8
  %dec = add i64 %2, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp.not = icmp eq i64 %2, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %3 = load i64, ptr %w.addr, align 8
  store i64 %3, ptr %x.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %4 = load i64, ptr %x.addr, align 8
  %dec2 = add i64 %4, -1
  store i64 %dec2, ptr %x.addr, align 8
  %cmp3.not = icmp eq i64 %4, 0
  br i1 %cmp3.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %BWmap, align 8
  %6 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr, ptr %pp.addr, align 8
  %7 = load i8, ptr %6, align 1
  %idxprom = zext i8 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  %9 = load i64, ptr %8, align 8
  %10 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i64, ptr %10, i64 1
  store ptr %incdec.ptr5, ptr %cp.addr, align 8
  store i64 %9, ptr %10, align 8
  br label %for.cond, !llvm.loop !41

for.end:                                          ; preds = %for.cond
  %11 = load i64, ptr %toskew.addr, align 8
  %12 = load ptr, ptr %cp.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %12, i64 %11
  store ptr %add.ptr, ptr %cp.addr, align 8
  %13 = load i64, ptr %fromskew.addr, align 8
  %14 = load ptr, ptr %pp.addr, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %14, i64 %13
  store ptr %add.ptr6, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !42

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @put4bitbwtile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %pp.addr = alloca ptr, align 8
  %BWmap = alloca ptr, align 8
  %_x = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %BWmap1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 16
  %1 = load ptr, ptr %BWmap1, align 8
  store ptr %1, ptr %BWmap, align 8
  %2 = load i64, ptr %fromskew.addr, align 8
  %div = sdiv i64 %2, 2
  store i64 %div, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i64, ptr %h.addr, align 8
  %dec = add i64 %3, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp.not = icmp eq i64 %3, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load i64, ptr %w.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %storemerge = phi i64 [ %4, %while.body ], [ %sub, %for.body ]
  store i64 %storemerge, ptr %_x, align 8
  %cmp2 = icmp ugt i64 %storemerge, 1
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %BWmap, align 8
  %6 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr, ptr %pp.addr, align 8
  %7 = load i8, ptr %6, align 1
  %idxprom = zext i8 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  %incdec.ptr3 = getelementptr inbounds i64, ptr %8, i64 1
  %9 = load i64, ptr %8, align 8
  %10 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i64, ptr %10, i64 1
  store ptr %incdec.ptr4, ptr %cp.addr, align 8
  store i64 %9, ptr %10, align 8
  %11 = load i64, ptr %incdec.ptr3, align 8
  %incdec.ptr6 = getelementptr inbounds i64, ptr %10, i64 2
  store ptr %incdec.ptr6, ptr %cp.addr, align 8
  store i64 %11, ptr %incdec.ptr4, align 8
  %12 = load i64, ptr %_x, align 8
  %sub = add i64 %12, -2
  br label %for.cond, !llvm.loop !43

for.end:                                          ; preds = %for.cond
  %13 = load i64, ptr %_x, align 8
  %tobool.not = icmp eq i64 %13, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %14 = load ptr, ptr %BWmap, align 8
  %15 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %incdec.ptr7, ptr %pp.addr, align 8
  %16 = load i8, ptr %15, align 1
  %idxprom8 = zext i8 %16 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %14, i64 %idxprom8
  %17 = load ptr, ptr %arrayidx9, align 8
  %18 = load i64, ptr %17, align 8
  %19 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i64, ptr %19, i64 1
  store ptr %incdec.ptr11, ptr %cp.addr, align 8
  store i64 %18, ptr %19, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %20 = load i64, ptr %toskew.addr, align 8
  %21 = load ptr, ptr %cp.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %21, i64 %20
  store ptr %add.ptr, ptr %cp.addr, align 8
  %22 = load i64, ptr %fromskew.addr, align 8
  %23 = load ptr, ptr %pp.addr, align 8
  %add.ptr12 = getelementptr inbounds i8, ptr %23, i64 %22
  store ptr %add.ptr12, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !44

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @put2bitbwtile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %pp.addr = alloca ptr, align 8
  %BWmap = alloca ptr, align 8
  %bw = alloca ptr, align 8
  %_x = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %BWmap1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 16
  %1 = load ptr, ptr %BWmap1, align 8
  store ptr %1, ptr %BWmap, align 8
  %2 = load i64, ptr %fromskew.addr, align 8
  %div = sdiv i64 %2, 4
  store i64 %div, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i64, ptr %h.addr, align 8
  %dec = add i64 %3, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp.not = icmp eq i64 %3, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load i64, ptr %w.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %storemerge = phi i64 [ %4, %while.body ], [ %sub, %for.body ]
  store i64 %storemerge, ptr %_x, align 8
  %cmp2 = icmp ugt i64 %storemerge, 3
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %BWmap, align 8
  %6 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr, ptr %pp.addr, align 8
  %7 = load i8, ptr %6, align 1
  %idxprom = zext i8 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  %incdec.ptr3 = getelementptr inbounds i64, ptr %8, i64 1
  store ptr %incdec.ptr3, ptr %bw, align 8
  %9 = load i64, ptr %8, align 8
  %10 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i64, ptr %10, i64 1
  store ptr %incdec.ptr4, ptr %cp.addr, align 8
  store i64 %9, ptr %10, align 8
  %incdec.ptr5 = getelementptr inbounds i64, ptr %8, i64 2
  store ptr %incdec.ptr5, ptr %bw, align 8
  %11 = load i64, ptr %incdec.ptr3, align 8
  %incdec.ptr6 = getelementptr inbounds i64, ptr %10, i64 2
  store ptr %incdec.ptr6, ptr %cp.addr, align 8
  store i64 %11, ptr %incdec.ptr4, align 8
  %incdec.ptr7 = getelementptr inbounds i64, ptr %8, i64 3
  store ptr %incdec.ptr7, ptr %bw, align 8
  %12 = load i64, ptr %incdec.ptr5, align 8
  %incdec.ptr8 = getelementptr inbounds i64, ptr %10, i64 3
  store ptr %incdec.ptr8, ptr %cp.addr, align 8
  store i64 %12, ptr %incdec.ptr6, align 8
  %incdec.ptr9 = getelementptr inbounds i64, ptr %8, i64 4
  store ptr %incdec.ptr9, ptr %bw, align 8
  %13 = load i64, ptr %incdec.ptr7, align 8
  %incdec.ptr10 = getelementptr inbounds i64, ptr %10, i64 4
  store ptr %incdec.ptr10, ptr %cp.addr, align 8
  store i64 %13, ptr %incdec.ptr8, align 8
  %14 = load i64, ptr %_x, align 8
  %sub = add i64 %14, -4
  br label %for.cond, !llvm.loop !45

for.end:                                          ; preds = %for.cond
  %15 = load i64, ptr %_x, align 8
  %cmp11.not = icmp eq i64 %15, 0
  br i1 %cmp11.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %16 = load ptr, ptr %BWmap, align 8
  %17 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %incdec.ptr12, ptr %pp.addr, align 8
  %18 = load i8, ptr %17, align 1
  %idxprom13 = zext i8 %18 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %16, i64 %idxprom13
  %19 = load ptr, ptr %arrayidx14, align 8
  store ptr %19, ptr %bw, align 8
  %20 = load i64, ptr %_x, align 8
  switch i64 %20, label %if.end [
    i64 3, label %sw.bb
    i64 2, label %sw.bb17
    i64 1, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.then
  %21 = load ptr, ptr %bw, align 8
  %incdec.ptr15 = getelementptr inbounds i64, ptr %21, i64 1
  store ptr %incdec.ptr15, ptr %bw, align 8
  %22 = load i64, ptr %21, align 8
  %23 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i64, ptr %23, i64 1
  store ptr %incdec.ptr16, ptr %cp.addr, align 8
  store i64 %22, ptr %23, align 8
  br label %sw.bb17

sw.bb17:                                          ; preds = %sw.bb, %if.then
  %24 = load ptr, ptr %bw, align 8
  %incdec.ptr18 = getelementptr inbounds i64, ptr %24, i64 1
  store ptr %incdec.ptr18, ptr %bw, align 8
  %25 = load i64, ptr %24, align 8
  %26 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr19 = getelementptr inbounds i64, ptr %26, i64 1
  store ptr %incdec.ptr19, ptr %cp.addr, align 8
  store i64 %25, ptr %26, align 8
  br label %sw.bb20

sw.bb20:                                          ; preds = %sw.bb17, %if.then
  %27 = load ptr, ptr %bw, align 8
  %incdec.ptr21 = getelementptr inbounds i64, ptr %27, i64 1
  store ptr %incdec.ptr21, ptr %bw, align 8
  %28 = load i64, ptr %27, align 8
  %29 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i64, ptr %29, i64 1
  store ptr %incdec.ptr22, ptr %cp.addr, align 8
  store i64 %28, ptr %29, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb20, %for.end
  %30 = load i64, ptr %toskew.addr, align 8
  %31 = load ptr, ptr %cp.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %31, i64 %30
  store ptr %add.ptr, ptr %cp.addr, align 8
  %32 = load i64, ptr %fromskew.addr, align 8
  %33 = load ptr, ptr %pp.addr, align 8
  %add.ptr23 = getelementptr inbounds i8, ptr %33, i64 %32
  store ptr %add.ptr23, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !46

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @put1bitbwtile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %pp.addr = alloca ptr, align 8
  %BWmap = alloca ptr, align 8
  %bw = alloca ptr, align 8
  %_x = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %BWmap1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 16
  %1 = load ptr, ptr %BWmap1, align 8
  store ptr %1, ptr %BWmap, align 8
  %2 = load i64, ptr %fromskew.addr, align 8
  %div = sdiv i64 %2, 8
  store i64 %div, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i64, ptr %h.addr, align 8
  %dec = add i64 %3, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp.not = icmp eq i64 %3, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load i64, ptr %w.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %storemerge = phi i64 [ %4, %while.body ], [ %sub, %for.body ]
  store i64 %storemerge, ptr %_x, align 8
  %cmp2 = icmp ugt i64 %storemerge, 7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %BWmap, align 8
  %6 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr, ptr %pp.addr, align 8
  %7 = load i8, ptr %6, align 1
  %idxprom = zext i8 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  %incdec.ptr3 = getelementptr inbounds i64, ptr %8, i64 1
  store ptr %incdec.ptr3, ptr %bw, align 8
  %9 = load i64, ptr %8, align 8
  %10 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i64, ptr %10, i64 1
  store ptr %incdec.ptr4, ptr %cp.addr, align 8
  store i64 %9, ptr %10, align 8
  %incdec.ptr5 = getelementptr inbounds i64, ptr %8, i64 2
  store ptr %incdec.ptr5, ptr %bw, align 8
  %11 = load i64, ptr %incdec.ptr3, align 8
  %incdec.ptr6 = getelementptr inbounds i64, ptr %10, i64 2
  store ptr %incdec.ptr6, ptr %cp.addr, align 8
  store i64 %11, ptr %incdec.ptr4, align 8
  %incdec.ptr7 = getelementptr inbounds i64, ptr %8, i64 3
  store ptr %incdec.ptr7, ptr %bw, align 8
  %12 = load i64, ptr %incdec.ptr5, align 8
  %incdec.ptr8 = getelementptr inbounds i64, ptr %10, i64 3
  store ptr %incdec.ptr8, ptr %cp.addr, align 8
  store i64 %12, ptr %incdec.ptr6, align 8
  %incdec.ptr9 = getelementptr inbounds i64, ptr %8, i64 4
  store ptr %incdec.ptr9, ptr %bw, align 8
  %13 = load i64, ptr %incdec.ptr7, align 8
  %incdec.ptr10 = getelementptr inbounds i64, ptr %10, i64 4
  store ptr %incdec.ptr10, ptr %cp.addr, align 8
  store i64 %13, ptr %incdec.ptr8, align 8
  %incdec.ptr11 = getelementptr inbounds i64, ptr %8, i64 5
  store ptr %incdec.ptr11, ptr %bw, align 8
  %14 = load i64, ptr %incdec.ptr9, align 8
  %incdec.ptr12 = getelementptr inbounds i64, ptr %10, i64 5
  store ptr %incdec.ptr12, ptr %cp.addr, align 8
  store i64 %14, ptr %incdec.ptr10, align 8
  %incdec.ptr13 = getelementptr inbounds i64, ptr %8, i64 6
  store ptr %incdec.ptr13, ptr %bw, align 8
  %15 = load i64, ptr %incdec.ptr11, align 8
  %incdec.ptr14 = getelementptr inbounds i64, ptr %10, i64 6
  store ptr %incdec.ptr14, ptr %cp.addr, align 8
  store i64 %15, ptr %incdec.ptr12, align 8
  %incdec.ptr15 = getelementptr inbounds i64, ptr %8, i64 7
  store ptr %incdec.ptr15, ptr %bw, align 8
  %16 = load i64, ptr %incdec.ptr13, align 8
  %incdec.ptr16 = getelementptr inbounds i64, ptr %10, i64 7
  store ptr %incdec.ptr16, ptr %cp.addr, align 8
  store i64 %16, ptr %incdec.ptr14, align 8
  %incdec.ptr17 = getelementptr inbounds i64, ptr %8, i64 8
  store ptr %incdec.ptr17, ptr %bw, align 8
  %17 = load i64, ptr %incdec.ptr15, align 8
  %incdec.ptr18 = getelementptr inbounds i64, ptr %10, i64 8
  store ptr %incdec.ptr18, ptr %cp.addr, align 8
  store i64 %17, ptr %incdec.ptr16, align 8
  %18 = load i64, ptr %_x, align 8
  %sub = add i64 %18, -8
  br label %for.cond, !llvm.loop !47

for.end:                                          ; preds = %for.cond
  %19 = load i64, ptr %_x, align 8
  %cmp19.not = icmp eq i64 %19, 0
  br i1 %cmp19.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %20 = load ptr, ptr %BWmap, align 8
  %21 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %incdec.ptr20, ptr %pp.addr, align 8
  %22 = load i8, ptr %21, align 1
  %idxprom21 = zext i8 %22 to i64
  %arrayidx22 = getelementptr inbounds ptr, ptr %20, i64 %idxprom21
  %23 = load ptr, ptr %arrayidx22, align 8
  store ptr %23, ptr %bw, align 8
  %24 = load i64, ptr %_x, align 8
  switch i64 %24, label %if.end [
    i64 7, label %sw.bb
    i64 6, label %sw.bb25
    i64 5, label %sw.bb28
    i64 4, label %sw.bb31
    i64 3, label %sw.bb34
    i64 2, label %sw.bb37
    i64 1, label %sw.bb40
  ]

sw.bb:                                            ; preds = %if.then
  %25 = load ptr, ptr %bw, align 8
  %incdec.ptr23 = getelementptr inbounds i64, ptr %25, i64 1
  store ptr %incdec.ptr23, ptr %bw, align 8
  %26 = load i64, ptr %25, align 8
  %27 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr24 = getelementptr inbounds i64, ptr %27, i64 1
  store ptr %incdec.ptr24, ptr %cp.addr, align 8
  store i64 %26, ptr %27, align 8
  br label %sw.bb25

sw.bb25:                                          ; preds = %sw.bb, %if.then
  %28 = load ptr, ptr %bw, align 8
  %incdec.ptr26 = getelementptr inbounds i64, ptr %28, i64 1
  store ptr %incdec.ptr26, ptr %bw, align 8
  %29 = load i64, ptr %28, align 8
  %30 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr27 = getelementptr inbounds i64, ptr %30, i64 1
  store ptr %incdec.ptr27, ptr %cp.addr, align 8
  store i64 %29, ptr %30, align 8
  br label %sw.bb28

sw.bb28:                                          ; preds = %sw.bb25, %if.then
  %31 = load ptr, ptr %bw, align 8
  %incdec.ptr29 = getelementptr inbounds i64, ptr %31, i64 1
  store ptr %incdec.ptr29, ptr %bw, align 8
  %32 = load i64, ptr %31, align 8
  %33 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i64, ptr %33, i64 1
  store ptr %incdec.ptr30, ptr %cp.addr, align 8
  store i64 %32, ptr %33, align 8
  br label %sw.bb31

sw.bb31:                                          ; preds = %sw.bb28, %if.then
  %34 = load ptr, ptr %bw, align 8
  %incdec.ptr32 = getelementptr inbounds i64, ptr %34, i64 1
  store ptr %incdec.ptr32, ptr %bw, align 8
  %35 = load i64, ptr %34, align 8
  %36 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr33 = getelementptr inbounds i64, ptr %36, i64 1
  store ptr %incdec.ptr33, ptr %cp.addr, align 8
  store i64 %35, ptr %36, align 8
  br label %sw.bb34

sw.bb34:                                          ; preds = %sw.bb31, %if.then
  %37 = load ptr, ptr %bw, align 8
  %incdec.ptr35 = getelementptr inbounds i64, ptr %37, i64 1
  store ptr %incdec.ptr35, ptr %bw, align 8
  %38 = load i64, ptr %37, align 8
  %39 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr36 = getelementptr inbounds i64, ptr %39, i64 1
  store ptr %incdec.ptr36, ptr %cp.addr, align 8
  store i64 %38, ptr %39, align 8
  br label %sw.bb37

sw.bb37:                                          ; preds = %sw.bb34, %if.then
  %40 = load ptr, ptr %bw, align 8
  %incdec.ptr38 = getelementptr inbounds i64, ptr %40, i64 1
  store ptr %incdec.ptr38, ptr %bw, align 8
  %41 = load i64, ptr %40, align 8
  %42 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr39 = getelementptr inbounds i64, ptr %42, i64 1
  store ptr %incdec.ptr39, ptr %cp.addr, align 8
  store i64 %41, ptr %42, align 8
  br label %sw.bb40

sw.bb40:                                          ; preds = %sw.bb37, %if.then
  %43 = load ptr, ptr %bw, align 8
  %incdec.ptr41 = getelementptr inbounds i64, ptr %43, i64 1
  store ptr %incdec.ptr41, ptr %bw, align 8
  %44 = load i64, ptr %43, align 8
  %45 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr42 = getelementptr inbounds i64, ptr %45, i64 1
  store ptr %incdec.ptr42, ptr %cp.addr, align 8
  store i64 %44, ptr %45, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb40, %for.end
  %46 = load i64, ptr %toskew.addr, align 8
  %47 = load ptr, ptr %cp.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %47, i64 %46
  store ptr %add.ptr, ptr %cp.addr, align 8
  %48 = load i64, ptr %fromskew.addr, align 8
  %49 = load ptr, ptr %pp.addr, align 8
  %add.ptr43 = getelementptr inbounds i8, ptr %49, i64 %48
  store ptr %add.ptr43, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !48

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @initYCbCrConversion(ptr noundef %img) #0 {
entry:
  %retval = alloca ptr, align 8
  %img.addr = alloca ptr, align 8
  %hs = alloca i16, align 2
  %vs = alloca i16, align 2
  %coeffs = alloca ptr, align 8
  store ptr %img, ptr %img.addr, align 8
  %ycbcr = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 18
  %0 = load ptr, ptr %ycbcr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call ptr @_TIFFmalloc(i64 noundef 7224) #4
  %1 = load ptr, ptr %img.addr, align 8
  %ycbcr1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %1, i64 0, i32 18
  store ptr %call, ptr %ycbcr1, align 8
  %cmp3 = icmp eq ptr %call, null
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %2 = load ptr, ptr %img.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %call5 = call ptr @TIFFFileName(ptr noundef %3) #4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call5, ptr noundef nonnull @.str.32) #4
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %img.addr, align 8
  %ycbcr6 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %4, i64 0, i32 18
  %5 = load ptr, ptr %ycbcr6, align 8
  %6 = load ptr, ptr %4, align 8
  call void @TIFFYCbCrToRGBInit(ptr noundef %5, ptr noundef %6)
  br label %if.end18

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %img.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %call9 = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %8, i64 noundef 529, ptr noundef nonnull %coeffs) #4
  %9 = load ptr, ptr %coeffs, align 8
  %ycbcr10 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %7, i64 0, i32 18
  %10 = load ptr, ptr %ycbcr10, align 8
  %coeffs11 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %10, i64 0, i32 5
  %call12 = call i32 @_TIFFmemcmp(ptr noundef %9, ptr noundef nonnull %coeffs11, i64 noundef 12) #4
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end18, label %if.then14

if.then14:                                        ; preds = %if.else
  %11 = load ptr, ptr %img.addr, align 8
  %ycbcr15 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %11, i64 0, i32 18
  %12 = load ptr, ptr %ycbcr15, align 8
  %13 = load ptr, ptr %11, align 8
  call void @TIFFYCbCrToRGBInit(ptr noundef %12, ptr noundef %13)
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then14, %if.end
  %14 = load ptr, ptr %img.addr, align 8
  %15 = load ptr, ptr %14, align 8
  %call20 = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %15, i64 noundef 530, ptr noundef nonnull %hs, ptr noundef nonnull %vs) #4
  %16 = load i16, ptr %hs, align 2
  %conv = zext i16 %16 to i32
  %shl = shl nuw nsw i32 %conv, 4
  %17 = load i16, ptr %vs, align 2
  %conv21 = zext i16 %17 to i32
  %or = or i32 %shl, %conv21
  switch i32 %or, label %sw.epilog [
    i32 68, label %sw.bb
    i32 66, label %sw.bb22
    i32 65, label %sw.bb23
    i32 34, label %sw.bb24
    i32 33, label %sw.bb25
    i32 17, label %sw.bb26
  ]

sw.bb:                                            ; preds = %if.end18
  store ptr @putcontig8bitYCbCr44tile, ptr %retval, align 8
  br label %return

sw.bb22:                                          ; preds = %if.end18
  store ptr @putcontig8bitYCbCr42tile, ptr %retval, align 8
  br label %return

sw.bb23:                                          ; preds = %if.end18
  store ptr @putcontig8bitYCbCr41tile, ptr %retval, align 8
  br label %return

sw.bb24:                                          ; preds = %if.end18
  store ptr @putcontig8bitYCbCr22tile, ptr %retval, align 8
  br label %return

sw.bb25:                                          ; preds = %if.end18
  store ptr @putcontig8bitYCbCr21tile, ptr %retval, align 8
  br label %return

sw.bb26:                                          ; preds = %if.end18
  store ptr @putcontig8bitYCbCr11tile, ptr %retval, align 8
  br label %return

sw.epilog:                                        ; preds = %if.end18
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb, %if.then4
  %18 = load ptr, ptr %retval, align 8
  ret ptr %18
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @setupMap(ptr noundef %img) #0 {
entry:
  %retval = alloca i32, align 4
  %img.addr = alloca ptr, align 8
  %x = alloca i64, align 8
  %range = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  %bitspersample = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 6
  %0 = load i16, ptr %bitspersample, align 8
  %sh_prom = zext i16 %0 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  store i64 %sub, ptr %range, align 8
  %add = sub i64 0, %notmask
  %call = call ptr @_TIFFmalloc(i64 noundef %add) #4
  %1 = load ptr, ptr %img.addr, align 8
  %Map = getelementptr inbounds %struct._TIFFRGBAImage, ptr %1, i64 0, i32 15
  store ptr %call, ptr %Map, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %img.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %call3 = call ptr @TIFFFileName(ptr noundef %3) #4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call3, ptr noundef nonnull @.str.29) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %img.addr, align 8
  %photometric = getelementptr inbounds %struct._TIFFRGBAImage, ptr %4, i64 0, i32 9
  %5 = load i16, ptr %photometric, align 2
  %cmp5 = icmp eq i16 %5, 0
  br i1 %cmp5, label %for.cond, label %for.cond14

for.cond:                                         ; preds = %if.end, %for.body
  %storemerge1 = phi i64 [ %inc, %for.body ], [ 0, %if.end ]
  store i64 %storemerge1, ptr %x, align 8
  %6 = load i64, ptr %range, align 8
  %cmp8.not = icmp sgt i64 %storemerge1, %6
  br i1 %cmp8.not, label %if.end26, label %for.body

for.body:                                         ; preds = %for.cond
  %7 = load i64, ptr %range, align 8
  %8 = load i64, ptr %x, align 8
  %sub10 = sub nsw i64 %7, %8
  %mul11 = mul nsw i64 %sub10, 255
  %div = sdiv i64 %mul11, %7
  %conv12 = trunc i64 %div to i8
  %9 = load ptr, ptr %img.addr, align 8
  %Map13 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %9, i64 0, i32 15
  %10 = load ptr, ptr %Map13, align 8
  %11 = load i64, ptr %x, align 8
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 %11
  store i8 %conv12, ptr %arrayidx, align 1
  %12 = load i64, ptr %x, align 8
  %inc = add nsw i64 %12, 1
  br label %for.cond, !llvm.loop !49

for.cond14:                                       ; preds = %if.end, %for.body17
  %storemerge = phi i64 [ %inc24, %for.body17 ], [ 0, %if.end ]
  store i64 %storemerge, ptr %x, align 8
  %13 = load i64, ptr %range, align 8
  %cmp15.not = icmp sgt i64 %storemerge, %13
  br i1 %cmp15.not, label %if.end26, label %for.body17

for.body17:                                       ; preds = %for.cond14
  %14 = load i64, ptr %x, align 8
  %mul18 = mul nsw i64 %14, 255
  %15 = load i64, ptr %range, align 8
  %div19 = sdiv i64 %mul18, %15
  %conv20 = trunc i64 %div19 to i8
  %16 = load ptr, ptr %img.addr, align 8
  %Map21 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %16, i64 0, i32 15
  %17 = load ptr, ptr %Map21, align 8
  %18 = load i64, ptr %x, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %17, i64 %18
  store i8 %conv20, ptr %arrayidx22, align 1
  %19 = load i64, ptr %x, align 8
  %inc24 = add nsw i64 %19, 1
  br label %for.cond14, !llvm.loop !50

if.end26:                                         ; preds = %for.cond14, %for.cond
  %20 = load ptr, ptr %img.addr, align 8
  %bitspersample27 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %20, i64 0, i32 6
  %21 = load i16, ptr %bitspersample27, align 8
  %cmp29 = icmp ult i16 %21, 9
  br i1 %cmp29, label %land.lhs.true, label %if.end45

land.lhs.true:                                    ; preds = %if.end26
  %22 = load ptr, ptr %img.addr, align 8
  %photometric31 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %22, i64 0, i32 9
  %23 = load i16, ptr %photometric31, align 2
  %cmp33 = icmp eq i16 %23, 1
  br i1 %cmp33, label %if.then39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %24 = load ptr, ptr %img.addr, align 8
  %photometric35 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %24, i64 0, i32 9
  %25 = load i16, ptr %photometric35, align 2
  %cmp37 = icmp eq i16 %25, 0
  br i1 %cmp37, label %if.then39, label %if.end45

if.then39:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %26 = load ptr, ptr %img.addr, align 8
  %call40 = call i32 @makebwmap(ptr noundef %26)
  %tobool.not = icmp eq i32 %call40, 0
  br i1 %tobool.not, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.then39
  store i32 0, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.then39
  %27 = load ptr, ptr %img.addr, align 8
  %Map43 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %27, i64 0, i32 15
  %28 = load ptr, ptr %Map43, align 8
  call void @_TIFFfree(ptr noundef %28) #4
  %Map44 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %27, i64 0, i32 15
  store ptr null, ptr %Map44, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.end42, %lor.lhs.false, %if.end26
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end45, %if.then41, %if.then
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @checkcmap(ptr noundef %img) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %r = alloca ptr, align 8
  %g = alloca ptr, align 8
  %b = alloca ptr, align 8
  %n = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  %redcmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 10
  %0 = load ptr, ptr %redcmap, align 8
  store ptr %0, ptr %r, align 8
  %greencmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 11
  %1 = load ptr, ptr %greencmap, align 8
  store ptr %1, ptr %g, align 8
  %2 = load ptr, ptr %img.addr, align 8
  %bluecmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i64 0, i32 12
  %3 = load ptr, ptr %bluecmap, align 8
  store ptr %3, ptr %b, align 8
  %bitspersample = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i64 0, i32 6
  %4 = load i16, ptr %bitspersample, align 8
  %sh_prom = zext i16 %4 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, ptr %n, align 8
  br label %while.cond

while.cond:                                       ; preds = %lor.lhs.false9, %entry
  %5 = load i64, ptr %n, align 8
  %dec = add nsw i64 %5, -1
  store i64 %dec, ptr %n, align 8
  %cmp = icmp sgt i64 %5, 0
  br i1 %cmp, label %while.body, label %return

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %r, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %6, i64 1
  store ptr %incdec.ptr, ptr %r, align 8
  %7 = load i16, ptr %6, align 2
  %cmp3 = icmp ugt i16 %7, 255
  br i1 %cmp3, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %8 = load ptr, ptr %g, align 8
  %incdec.ptr5 = getelementptr inbounds i16, ptr %8, i64 1
  store ptr %incdec.ptr5, ptr %g, align 8
  %9 = load i16, ptr %8, align 2
  %cmp7 = icmp ugt i16 %9, 255
  br i1 %cmp7, label %return, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %10 = load ptr, ptr %b, align 8
  %incdec.ptr10 = getelementptr inbounds i16, ptr %10, i64 1
  store ptr %incdec.ptr10, ptr %b, align 8
  %11 = load i16, ptr %10, align 2
  %cmp12 = icmp ugt i16 %11, 255
  br i1 %cmp12, label %return, label %while.cond, !llvm.loop !51

return:                                           ; preds = %while.cond, %while.body, %lor.lhs.false, %lor.lhs.false9
  %storemerge = phi i32 [ 16, %lor.lhs.false9 ], [ 16, %lor.lhs.false ], [ 16, %while.body ], [ 8, %while.cond ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal void @cvtcmap(ptr noundef %img) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %r = alloca ptr, align 8
  %g = alloca ptr, align 8
  %b = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  %redcmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 10
  %0 = load ptr, ptr %redcmap, align 8
  store ptr %0, ptr %r, align 8
  %greencmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 11
  %1 = load ptr, ptr %greencmap, align 8
  store ptr %1, ptr %g, align 8
  %2 = load ptr, ptr %img.addr, align 8
  %bluecmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i64 0, i32 12
  %3 = load ptr, ptr %bluecmap, align 8
  store ptr %3, ptr %b, align 8
  %bitspersample = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i64 0, i32 6
  %4 = load i16, ptr %bitspersample, align 8
  %sh_prom = zext i16 %4 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i64 [ %sub, %entry ], [ %dec, %for.body ]
  store i64 %storemerge, ptr %i, align 8
  %cmp = icmp sgt i64 %storemerge, -1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %r, align 8
  %6 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i16, ptr %5, i64 %6
  %7 = load i16, ptr %arrayidx, align 2
  %8 = lshr i16 %7, 8
  %arrayidx4 = getelementptr inbounds i16, ptr %5, i64 %6
  store i16 %8, ptr %arrayidx4, align 2
  %9 = load ptr, ptr %g, align 8
  %10 = load i64, ptr %i, align 8
  %arrayidx5 = getelementptr inbounds i16, ptr %9, i64 %10
  %11 = load i16, ptr %arrayidx5, align 2
  %12 = lshr i16 %11, 8
  %arrayidx9 = getelementptr inbounds i16, ptr %9, i64 %10
  store i16 %12, ptr %arrayidx9, align 2
  %13 = load ptr, ptr %b, align 8
  %14 = load i64, ptr %i, align 8
  %arrayidx10 = getelementptr inbounds i16, ptr %13, i64 %14
  %15 = load i16, ptr %arrayidx10, align 2
  %16 = lshr i16 %15, 8
  %arrayidx14 = getelementptr inbounds i16, ptr %13, i64 %14
  store i16 %16, ptr %arrayidx14, align 2
  %17 = load i64, ptr %i, align 8
  %dec = add nsw i64 %17, -1
  br label %for.cond, !llvm.loop !52

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @makecmap(ptr noundef %img) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %bitspersample = alloca i32, align 4
  %nsamples = alloca i32, align 4
  %r = alloca ptr, align 8
  %g = alloca ptr, align 8
  %b = alloca ptr, align 8
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  %c = alloca i8, align 1
  store ptr %img, ptr %img.addr, align 8
  %bitspersample1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 6
  %0 = load i16, ptr %bitspersample1, align 8
  %conv = zext i16 %0 to i32
  store i32 %conv, ptr %bitspersample, align 4
  %div = udiv i32 8, %conv
  store i32 %div, ptr %nsamples, align 4
  %1 = load ptr, ptr %img.addr, align 8
  %redcmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %1, i64 0, i32 10
  %2 = load ptr, ptr %redcmap, align 8
  store ptr %2, ptr %r, align 8
  %greencmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %1, i64 0, i32 11
  %3 = load ptr, ptr %greencmap, align 8
  store ptr %3, ptr %g, align 8
  %4 = load ptr, ptr %img.addr, align 8
  %bluecmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %4, i64 0, i32 12
  %5 = load ptr, ptr %bluecmap, align 8
  store ptr %5, ptr %b, align 8
  %6 = load i32, ptr %nsamples, align 4
  %mul = shl nsw i32 %6, 8
  %conv2 = sext i32 %mul to i64
  %mul3 = shl nsw i64 %conv2, 3
  %add = add nsw i64 %mul3, 2048
  %call = call ptr @_TIFFmalloc(i64 noundef %add) #4
  %7 = load ptr, ptr %img.addr, align 8
  %PALmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %7, i64 0, i32 17
  store ptr %call, ptr %PALmap, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %img.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %call6 = call ptr @TIFFFileName(ptr noundef %9) #4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call6, ptr noundef nonnull @.str.31) #4
  br label %return

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %img.addr, align 8
  %PALmap7 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %10, i64 0, i32 17
  %11 = load ptr, ptr %PALmap7, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %11, i64 256
  store ptr %add.ptr, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %cmp8 = icmp slt i32 %storemerge, 256
  br i1 %cmp8, label %for.body, label %return

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %p, align 8
  %13 = load ptr, ptr %img.addr, align 8
  %PALmap10 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %13, i64 0, i32 17
  %14 = load ptr, ptr %PALmap10, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %14, i64 %idxprom
  store ptr %12, ptr %arrayidx, align 8
  %16 = load i32, ptr %bitspersample, align 4
  switch i32 %16, label %for.inc [
    i32 1, label %sw.bb
    i32 2, label %sw.bb196
    i32 4, label %sw.bb291
    i32 8, label %sw.bb338
  ]

sw.bb:                                            ; preds = %for.body
  %17 = load i32, ptr %i, align 4
  %18 = lshr i32 %17, 7
  %conv11 = trunc i32 %18 to i8
  store i8 %conv11, ptr %c, align 1
  %19 = load ptr, ptr %r, align 8
  %conv11.mask = and i32 %18, 255
  %idxprom12 = zext i32 %conv11.mask to i64
  %arrayidx13 = getelementptr inbounds i16, ptr %19, i64 %idxprom12
  %20 = load i16, ptr %arrayidx13, align 2
  %21 = and i16 %20, 255
  %22 = load ptr, ptr %g, align 8
  %23 = load i8, ptr %c, align 1
  %idxprom16 = zext i8 %23 to i64
  %arrayidx17 = getelementptr inbounds i16, ptr %22, i64 %idxprom16
  %24 = load i16, ptr %arrayidx17, align 2
  %25 = shl i16 %24, 8
  %or9 = or i16 %21, %25
  %or = zext i16 %or9 to i64
  %26 = load ptr, ptr %b, align 8
  %27 = load i8, ptr %c, align 1
  %idxprom21 = zext i8 %27 to i64
  %arrayidx22 = getelementptr inbounds i16, ptr %26, i64 %idxprom21
  %28 = load i16, ptr %arrayidx22, align 2
  %conv25 = zext i16 %28 to i64
  %shl26 = shl nuw nsw i64 %conv25, 16
  %or27 = or i64 %shl26, %or
  %or28 = or i64 %or27, 4278190080
  %29 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %29, i64 1
  store ptr %incdec.ptr, ptr %p, align 8
  store i64 %or28, ptr %29, align 8
  %30 = load i32, ptr %i, align 4
  %31 = trunc i32 %30 to i8
  %32 = lshr i8 %31, 6
  %conv31 = and i8 %32, 1
  store i8 %conv31, ptr %c, align 1
  %33 = load ptr, ptr %r, align 8
  %idxprom32 = zext i8 %conv31 to i64
  %arrayidx33 = getelementptr inbounds i16, ptr %33, i64 %idxprom32
  %34 = load i16, ptr %arrayidx33, align 2
  %35 = and i16 %34, 255
  %36 = load ptr, ptr %g, align 8
  %37 = load i8, ptr %c, align 1
  %idxprom37 = zext i8 %37 to i64
  %arrayidx38 = getelementptr inbounds i16, ptr %36, i64 %idxprom37
  %38 = load i16, ptr %arrayidx38, align 2
  %39 = shl i16 %38, 8
  %or4311 = or i16 %35, %39
  %or43 = zext i16 %or4311 to i64
  %40 = load ptr, ptr %b, align 8
  %41 = load i8, ptr %c, align 1
  %idxprom44 = zext i8 %41 to i64
  %arrayidx45 = getelementptr inbounds i16, ptr %40, i64 %idxprom44
  %42 = load i16, ptr %arrayidx45, align 2
  %conv48 = zext i16 %42 to i64
  %shl49 = shl nuw nsw i64 %conv48, 16
  %or50 = or i64 %shl49, %or43
  %or51 = or i64 %or50, 4278190080
  %43 = load ptr, ptr %p, align 8
  %incdec.ptr52 = getelementptr inbounds i64, ptr %43, i64 1
  store ptr %incdec.ptr52, ptr %p, align 8
  store i64 %or51, ptr %43, align 8
  %44 = load i32, ptr %i, align 4
  %45 = trunc i32 %44 to i8
  %46 = lshr i8 %45, 5
  %conv55 = and i8 %46, 1
  store i8 %conv55, ptr %c, align 1
  %47 = load ptr, ptr %r, align 8
  %idxprom56 = zext i8 %conv55 to i64
  %arrayidx57 = getelementptr inbounds i16, ptr %47, i64 %idxprom56
  %48 = load i16, ptr %arrayidx57, align 2
  %49 = and i16 %48, 255
  %50 = load ptr, ptr %g, align 8
  %51 = load i8, ptr %c, align 1
  %idxprom61 = zext i8 %51 to i64
  %arrayidx62 = getelementptr inbounds i16, ptr %50, i64 %idxprom61
  %52 = load i16, ptr %arrayidx62, align 2
  %53 = shl i16 %52, 8
  %or6713 = or i16 %49, %53
  %or67 = zext i16 %or6713 to i64
  %54 = load ptr, ptr %b, align 8
  %55 = load i8, ptr %c, align 1
  %idxprom68 = zext i8 %55 to i64
  %arrayidx69 = getelementptr inbounds i16, ptr %54, i64 %idxprom68
  %56 = load i16, ptr %arrayidx69, align 2
  %conv72 = zext i16 %56 to i64
  %shl73 = shl nuw nsw i64 %conv72, 16
  %or74 = or i64 %shl73, %or67
  %or75 = or i64 %or74, 4278190080
  %57 = load ptr, ptr %p, align 8
  %incdec.ptr76 = getelementptr inbounds i64, ptr %57, i64 1
  store ptr %incdec.ptr76, ptr %p, align 8
  store i64 %or75, ptr %57, align 8
  %58 = load i32, ptr %i, align 4
  %59 = trunc i32 %58 to i8
  %60 = lshr i8 %59, 4
  %conv79 = and i8 %60, 1
  store i8 %conv79, ptr %c, align 1
  %61 = load ptr, ptr %r, align 8
  %idxprom80 = zext i8 %conv79 to i64
  %arrayidx81 = getelementptr inbounds i16, ptr %61, i64 %idxprom80
  %62 = load i16, ptr %arrayidx81, align 2
  %63 = and i16 %62, 255
  %64 = load ptr, ptr %g, align 8
  %65 = load i8, ptr %c, align 1
  %idxprom85 = zext i8 %65 to i64
  %arrayidx86 = getelementptr inbounds i16, ptr %64, i64 %idxprom85
  %66 = load i16, ptr %arrayidx86, align 2
  %67 = shl i16 %66, 8
  %or9115 = or i16 %63, %67
  %or91 = zext i16 %or9115 to i64
  %68 = load ptr, ptr %b, align 8
  %69 = load i8, ptr %c, align 1
  %idxprom92 = zext i8 %69 to i64
  %arrayidx93 = getelementptr inbounds i16, ptr %68, i64 %idxprom92
  %70 = load i16, ptr %arrayidx93, align 2
  %conv96 = zext i16 %70 to i64
  %shl97 = shl nuw nsw i64 %conv96, 16
  %or98 = or i64 %shl97, %or91
  %or99 = or i64 %or98, 4278190080
  %71 = load ptr, ptr %p, align 8
  %incdec.ptr100 = getelementptr inbounds i64, ptr %71, i64 1
  store ptr %incdec.ptr100, ptr %p, align 8
  store i64 %or99, ptr %71, align 8
  %72 = load i32, ptr %i, align 4
  %73 = trunc i32 %72 to i8
  %74 = lshr i8 %73, 3
  %conv103 = and i8 %74, 1
  store i8 %conv103, ptr %c, align 1
  %75 = load ptr, ptr %r, align 8
  %idxprom104 = zext i8 %conv103 to i64
  %arrayidx105 = getelementptr inbounds i16, ptr %75, i64 %idxprom104
  %76 = load i16, ptr %arrayidx105, align 2
  %77 = and i16 %76, 255
  %78 = load ptr, ptr %g, align 8
  %79 = load i8, ptr %c, align 1
  %idxprom109 = zext i8 %79 to i64
  %arrayidx110 = getelementptr inbounds i16, ptr %78, i64 %idxprom109
  %80 = load i16, ptr %arrayidx110, align 2
  %81 = shl i16 %80, 8
  %or11517 = or i16 %77, %81
  %or115 = zext i16 %or11517 to i64
  %82 = load ptr, ptr %b, align 8
  %83 = load i8, ptr %c, align 1
  %idxprom116 = zext i8 %83 to i64
  %arrayidx117 = getelementptr inbounds i16, ptr %82, i64 %idxprom116
  %84 = load i16, ptr %arrayidx117, align 2
  %conv120 = zext i16 %84 to i64
  %shl121 = shl nuw nsw i64 %conv120, 16
  %or122 = or i64 %shl121, %or115
  %or123 = or i64 %or122, 4278190080
  %85 = load ptr, ptr %p, align 8
  %incdec.ptr124 = getelementptr inbounds i64, ptr %85, i64 1
  store ptr %incdec.ptr124, ptr %p, align 8
  store i64 %or123, ptr %85, align 8
  %86 = load i32, ptr %i, align 4
  %87 = trunc i32 %86 to i8
  %88 = lshr i8 %87, 2
  %conv127 = and i8 %88, 1
  store i8 %conv127, ptr %c, align 1
  %89 = load ptr, ptr %r, align 8
  %idxprom128 = zext i8 %conv127 to i64
  %arrayidx129 = getelementptr inbounds i16, ptr %89, i64 %idxprom128
  %90 = load i16, ptr %arrayidx129, align 2
  %91 = and i16 %90, 255
  %92 = load ptr, ptr %g, align 8
  %93 = load i8, ptr %c, align 1
  %idxprom133 = zext i8 %93 to i64
  %arrayidx134 = getelementptr inbounds i16, ptr %92, i64 %idxprom133
  %94 = load i16, ptr %arrayidx134, align 2
  %95 = shl i16 %94, 8
  %or13919 = or i16 %91, %95
  %or139 = zext i16 %or13919 to i64
  %96 = load ptr, ptr %b, align 8
  %97 = load i8, ptr %c, align 1
  %idxprom140 = zext i8 %97 to i64
  %arrayidx141 = getelementptr inbounds i16, ptr %96, i64 %idxprom140
  %98 = load i16, ptr %arrayidx141, align 2
  %conv144 = zext i16 %98 to i64
  %shl145 = shl nuw nsw i64 %conv144, 16
  %or146 = or i64 %shl145, %or139
  %or147 = or i64 %or146, 4278190080
  %99 = load ptr, ptr %p, align 8
  %incdec.ptr148 = getelementptr inbounds i64, ptr %99, i64 1
  store ptr %incdec.ptr148, ptr %p, align 8
  store i64 %or147, ptr %99, align 8
  %100 = load i32, ptr %i, align 4
  %101 = trunc i32 %100 to i8
  %102 = lshr i8 %101, 1
  %conv151 = and i8 %102, 1
  store i8 %conv151, ptr %c, align 1
  %103 = load ptr, ptr %r, align 8
  %idxprom152 = zext i8 %conv151 to i64
  %arrayidx153 = getelementptr inbounds i16, ptr %103, i64 %idxprom152
  %104 = load i16, ptr %arrayidx153, align 2
  %105 = and i16 %104, 255
  %106 = load ptr, ptr %g, align 8
  %107 = load i8, ptr %c, align 1
  %idxprom157 = zext i8 %107 to i64
  %arrayidx158 = getelementptr inbounds i16, ptr %106, i64 %idxprom157
  %108 = load i16, ptr %arrayidx158, align 2
  %109 = shl i16 %108, 8
  %or16321 = or i16 %105, %109
  %or163 = zext i16 %or16321 to i64
  %110 = load ptr, ptr %b, align 8
  %111 = load i8, ptr %c, align 1
  %idxprom164 = zext i8 %111 to i64
  %arrayidx165 = getelementptr inbounds i16, ptr %110, i64 %idxprom164
  %112 = load i16, ptr %arrayidx165, align 2
  %conv168 = zext i16 %112 to i64
  %shl169 = shl nuw nsw i64 %conv168, 16
  %or170 = or i64 %shl169, %or163
  %or171 = or i64 %or170, 4278190080
  %113 = load ptr, ptr %p, align 8
  %incdec.ptr172 = getelementptr inbounds i64, ptr %113, i64 1
  store ptr %incdec.ptr172, ptr %p, align 8
  store i64 %or171, ptr %113, align 8
  %114 = load i32, ptr %i, align 4
  %115 = trunc i32 %114 to i8
  %conv174 = and i8 %115, 1
  store i8 %conv174, ptr %c, align 1
  %116 = load ptr, ptr %r, align 8
  %idxprom175 = zext i8 %conv174 to i64
  %arrayidx176 = getelementptr inbounds i16, ptr %116, i64 %idxprom175
  %117 = load i16, ptr %arrayidx176, align 2
  %118 = and i16 %117, 255
  %119 = load ptr, ptr %g, align 8
  %120 = load i8, ptr %c, align 1
  %idxprom180 = zext i8 %120 to i64
  %arrayidx181 = getelementptr inbounds i16, ptr %119, i64 %idxprom180
  %121 = load i16, ptr %arrayidx181, align 2
  %122 = shl i16 %121, 8
  %or18622 = or i16 %118, %122
  %or186 = zext i16 %or18622 to i64
  %123 = load ptr, ptr %b, align 8
  %124 = load i8, ptr %c, align 1
  %idxprom187 = zext i8 %124 to i64
  %arrayidx188 = getelementptr inbounds i16, ptr %123, i64 %idxprom187
  %125 = load i16, ptr %arrayidx188, align 2
  %conv191 = zext i16 %125 to i64
  %shl192 = shl nuw nsw i64 %conv191, 16
  %or193 = or i64 %shl192, %or186
  %or194 = or i64 %or193, 4278190080
  %126 = load ptr, ptr %p, align 8
  %incdec.ptr195 = getelementptr inbounds i64, ptr %126, i64 1
  store ptr %incdec.ptr195, ptr %p, align 8
  store i64 %or194, ptr %126, align 8
  br label %for.inc

sw.bb196:                                         ; preds = %for.body
  %127 = load i32, ptr %i, align 4
  %128 = lshr i32 %127, 6
  %conv198 = trunc i32 %128 to i8
  store i8 %conv198, ptr %c, align 1
  %129 = load ptr, ptr %r, align 8
  %conv198.mask = and i32 %128, 255
  %idxprom199 = zext i32 %conv198.mask to i64
  %arrayidx200 = getelementptr inbounds i16, ptr %129, i64 %idxprom199
  %130 = load i16, ptr %arrayidx200, align 2
  %131 = and i16 %130, 255
  %132 = load ptr, ptr %g, align 8
  %133 = load i8, ptr %c, align 1
  %idxprom204 = zext i8 %133 to i64
  %arrayidx205 = getelementptr inbounds i16, ptr %132, i64 %idxprom204
  %134 = load i16, ptr %arrayidx205, align 2
  %135 = shl i16 %134, 8
  %or2105 = or i16 %131, %135
  %or210 = zext i16 %or2105 to i64
  %136 = load ptr, ptr %b, align 8
  %137 = load i8, ptr %c, align 1
  %idxprom211 = zext i8 %137 to i64
  %arrayidx212 = getelementptr inbounds i16, ptr %136, i64 %idxprom211
  %138 = load i16, ptr %arrayidx212, align 2
  %conv215 = zext i16 %138 to i64
  %shl216 = shl nuw nsw i64 %conv215, 16
  %or217 = or i64 %shl216, %or210
  %or218 = or i64 %or217, 4278190080
  %139 = load ptr, ptr %p, align 8
  %incdec.ptr219 = getelementptr inbounds i64, ptr %139, i64 1
  store ptr %incdec.ptr219, ptr %p, align 8
  store i64 %or218, ptr %139, align 8
  %140 = load i32, ptr %i, align 4
  %141 = trunc i32 %140 to i8
  %142 = lshr i8 %141, 4
  %conv222 = and i8 %142, 3
  store i8 %conv222, ptr %c, align 1
  %143 = load ptr, ptr %r, align 8
  %idxprom223 = zext i8 %conv222 to i64
  %arrayidx224 = getelementptr inbounds i16, ptr %143, i64 %idxprom223
  %144 = load i16, ptr %arrayidx224, align 2
  %145 = and i16 %144, 255
  %146 = load ptr, ptr %g, align 8
  %147 = load i8, ptr %c, align 1
  %idxprom228 = zext i8 %147 to i64
  %arrayidx229 = getelementptr inbounds i16, ptr %146, i64 %idxprom228
  %148 = load i16, ptr %arrayidx229, align 2
  %149 = shl i16 %148, 8
  %or2346 = or i16 %145, %149
  %or234 = zext i16 %or2346 to i64
  %150 = load ptr, ptr %b, align 8
  %151 = load i8, ptr %c, align 1
  %idxprom235 = zext i8 %151 to i64
  %arrayidx236 = getelementptr inbounds i16, ptr %150, i64 %idxprom235
  %152 = load i16, ptr %arrayidx236, align 2
  %conv239 = zext i16 %152 to i64
  %shl240 = shl nuw nsw i64 %conv239, 16
  %or241 = or i64 %shl240, %or234
  %or242 = or i64 %or241, 4278190080
  %153 = load ptr, ptr %p, align 8
  %incdec.ptr243 = getelementptr inbounds i64, ptr %153, i64 1
  store ptr %incdec.ptr243, ptr %p, align 8
  store i64 %or242, ptr %153, align 8
  %154 = load i32, ptr %i, align 4
  %155 = trunc i32 %154 to i8
  %156 = lshr i8 %155, 2
  %conv246 = and i8 %156, 3
  store i8 %conv246, ptr %c, align 1
  %157 = load ptr, ptr %r, align 8
  %idxprom247 = zext i8 %conv246 to i64
  %arrayidx248 = getelementptr inbounds i16, ptr %157, i64 %idxprom247
  %158 = load i16, ptr %arrayidx248, align 2
  %159 = and i16 %158, 255
  %160 = load ptr, ptr %g, align 8
  %161 = load i8, ptr %c, align 1
  %idxprom252 = zext i8 %161 to i64
  %arrayidx253 = getelementptr inbounds i16, ptr %160, i64 %idxprom252
  %162 = load i16, ptr %arrayidx253, align 2
  %163 = shl i16 %162, 8
  %or2587 = or i16 %159, %163
  %or258 = zext i16 %or2587 to i64
  %164 = load ptr, ptr %b, align 8
  %165 = load i8, ptr %c, align 1
  %idxprom259 = zext i8 %165 to i64
  %arrayidx260 = getelementptr inbounds i16, ptr %164, i64 %idxprom259
  %166 = load i16, ptr %arrayidx260, align 2
  %conv263 = zext i16 %166 to i64
  %shl264 = shl nuw nsw i64 %conv263, 16
  %or265 = or i64 %shl264, %or258
  %or266 = or i64 %or265, 4278190080
  %167 = load ptr, ptr %p, align 8
  %incdec.ptr267 = getelementptr inbounds i64, ptr %167, i64 1
  store ptr %incdec.ptr267, ptr %p, align 8
  store i64 %or266, ptr %167, align 8
  %168 = load i32, ptr %i, align 4
  %169 = trunc i32 %168 to i8
  %conv269 = and i8 %169, 3
  store i8 %conv269, ptr %c, align 1
  %170 = load ptr, ptr %r, align 8
  %idxprom270 = zext i8 %conv269 to i64
  %arrayidx271 = getelementptr inbounds i16, ptr %170, i64 %idxprom270
  %171 = load i16, ptr %arrayidx271, align 2
  %172 = and i16 %171, 255
  %173 = load ptr, ptr %g, align 8
  %174 = load i8, ptr %c, align 1
  %idxprom275 = zext i8 %174 to i64
  %arrayidx276 = getelementptr inbounds i16, ptr %173, i64 %idxprom275
  %175 = load i16, ptr %arrayidx276, align 2
  %176 = shl i16 %175, 8
  %or2818 = or i16 %172, %176
  %or281 = zext i16 %or2818 to i64
  %177 = load ptr, ptr %b, align 8
  %178 = load i8, ptr %c, align 1
  %idxprom282 = zext i8 %178 to i64
  %arrayidx283 = getelementptr inbounds i16, ptr %177, i64 %idxprom282
  %179 = load i16, ptr %arrayidx283, align 2
  %conv286 = zext i16 %179 to i64
  %shl287 = shl nuw nsw i64 %conv286, 16
  %or288 = or i64 %shl287, %or281
  %or289 = or i64 %or288, 4278190080
  %180 = load ptr, ptr %p, align 8
  %incdec.ptr290 = getelementptr inbounds i64, ptr %180, i64 1
  store ptr %incdec.ptr290, ptr %p, align 8
  store i64 %or289, ptr %180, align 8
  br label %for.inc

sw.bb291:                                         ; preds = %for.body
  %181 = load i32, ptr %i, align 4
  %182 = lshr i32 %181, 4
  %conv293 = trunc i32 %182 to i8
  store i8 %conv293, ptr %c, align 1
  %183 = load ptr, ptr %r, align 8
  %conv293.mask = and i32 %182, 255
  %idxprom294 = zext i32 %conv293.mask to i64
  %arrayidx295 = getelementptr inbounds i16, ptr %183, i64 %idxprom294
  %184 = load i16, ptr %arrayidx295, align 2
  %185 = and i16 %184, 255
  %186 = load ptr, ptr %g, align 8
  %187 = load i8, ptr %c, align 1
  %idxprom299 = zext i8 %187 to i64
  %arrayidx300 = getelementptr inbounds i16, ptr %186, i64 %idxprom299
  %188 = load i16, ptr %arrayidx300, align 2
  %189 = shl i16 %188, 8
  %or3053 = or i16 %185, %189
  %or305 = zext i16 %or3053 to i64
  %190 = load ptr, ptr %b, align 8
  %191 = load i8, ptr %c, align 1
  %idxprom306 = zext i8 %191 to i64
  %arrayidx307 = getelementptr inbounds i16, ptr %190, i64 %idxprom306
  %192 = load i16, ptr %arrayidx307, align 2
  %conv310 = zext i16 %192 to i64
  %shl311 = shl nuw nsw i64 %conv310, 16
  %or312 = or i64 %shl311, %or305
  %or313 = or i64 %or312, 4278190080
  %193 = load ptr, ptr %p, align 8
  %incdec.ptr314 = getelementptr inbounds i64, ptr %193, i64 1
  store ptr %incdec.ptr314, ptr %p, align 8
  store i64 %or313, ptr %193, align 8
  %194 = load i32, ptr %i, align 4
  %195 = trunc i32 %194 to i8
  %conv316 = and i8 %195, 15
  store i8 %conv316, ptr %c, align 1
  %196 = load ptr, ptr %r, align 8
  %idxprom317 = zext i8 %conv316 to i64
  %arrayidx318 = getelementptr inbounds i16, ptr %196, i64 %idxprom317
  %197 = load i16, ptr %arrayidx318, align 2
  %198 = and i16 %197, 255
  %199 = load ptr, ptr %g, align 8
  %200 = load i8, ptr %c, align 1
  %idxprom322 = zext i8 %200 to i64
  %arrayidx323 = getelementptr inbounds i16, ptr %199, i64 %idxprom322
  %201 = load i16, ptr %arrayidx323, align 2
  %202 = shl i16 %201, 8
  %or3284 = or i16 %198, %202
  %or328 = zext i16 %or3284 to i64
  %203 = load ptr, ptr %b, align 8
  %204 = load i8, ptr %c, align 1
  %idxprom329 = zext i8 %204 to i64
  %arrayidx330 = getelementptr inbounds i16, ptr %203, i64 %idxprom329
  %205 = load i16, ptr %arrayidx330, align 2
  %conv333 = zext i16 %205 to i64
  %shl334 = shl nuw nsw i64 %conv333, 16
  %or335 = or i64 %shl334, %or328
  %or336 = or i64 %or335, 4278190080
  %206 = load ptr, ptr %p, align 8
  %incdec.ptr337 = getelementptr inbounds i64, ptr %206, i64 1
  store ptr %incdec.ptr337, ptr %p, align 8
  store i64 %or336, ptr %206, align 8
  br label %for.inc

sw.bb338:                                         ; preds = %for.body
  %207 = load i32, ptr %i, align 4
  %conv339 = trunc i32 %207 to i8
  store i8 %conv339, ptr %c, align 1
  %208 = load ptr, ptr %r, align 8
  %conv339.mask = and i32 %207, 255
  %idxprom340 = zext i32 %conv339.mask to i64
  %arrayidx341 = getelementptr inbounds i16, ptr %208, i64 %idxprom340
  %209 = load i16, ptr %arrayidx341, align 2
  %210 = and i16 %209, 255
  %211 = load ptr, ptr %g, align 8
  %212 = load i8, ptr %c, align 1
  %idxprom345 = zext i8 %212 to i64
  %arrayidx346 = getelementptr inbounds i16, ptr %211, i64 %idxprom345
  %213 = load i16, ptr %arrayidx346, align 2
  %214 = shl i16 %213, 8
  %or3512 = or i16 %210, %214
  %or351 = zext i16 %or3512 to i64
  %215 = load ptr, ptr %b, align 8
  %216 = load i8, ptr %c, align 1
  %idxprom352 = zext i8 %216 to i64
  %arrayidx353 = getelementptr inbounds i16, ptr %215, i64 %idxprom352
  %217 = load i16, ptr %arrayidx353, align 2
  %conv356 = zext i16 %217 to i64
  %shl357 = shl nuw nsw i64 %conv356, 16
  %or358 = or i64 %shl357, %or351
  %or359 = or i64 %or358, 4278190080
  %218 = load ptr, ptr %p, align 8
  %incdec.ptr360 = getelementptr inbounds i64, ptr %218, i64 1
  store ptr %incdec.ptr360, ptr %p, align 8
  store i64 %or359, ptr %218, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %sw.bb, %sw.bb196, %sw.bb291, %sw.bb338
  %219 = load i32, ptr %i, align 4
  %inc = add nsw i32 %219, 1
  br label %for.cond, !llvm.loop !53

return:                                           ; preds = %for.cond, %if.then
  %storemerge1 = phi i32 [ 0, %if.then ], [ 1, %for.cond ]
  ret i32 %storemerge1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @makebwmap(ptr noundef %img) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %Map = alloca ptr, align 8
  %bitspersample = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %img, ptr %img.addr, align 8
  %Map1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 15
  %0 = load ptr, ptr %Map1, align 8
  store ptr %0, ptr %Map, align 8
  %bitspersample2 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i64 0, i32 6
  %1 = load i16, ptr %bitspersample2, align 8
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %bitspersample, align 4
  %div = udiv i32 8, %conv
  %mul = shl nuw nsw i32 %div, 11
  %narrow = add nuw nsw i32 %mul, 2048
  %add = zext i32 %narrow to i64
  %call = call ptr @_TIFFmalloc(i64 noundef %add) #4
  %2 = load ptr, ptr %img.addr, align 8
  %BWmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i64 0, i32 16
  store ptr %call, ptr %BWmap, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %img.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %call7 = call ptr @TIFFFileName(ptr noundef %4) #4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call7, ptr noundef nonnull @.str.30) #4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %img.addr, align 8
  %BWmap8 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %5, i64 0, i32 16
  %6 = load ptr, ptr %BWmap8, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %6, i64 256
  store ptr %add.ptr, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %cmp9 = icmp slt i32 %storemerge, 256
  br i1 %cmp9, label %for.body, label %return

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %p, align 8
  %8 = load ptr, ptr %img.addr, align 8
  %BWmap11 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %8, i64 0, i32 16
  %9 = load ptr, ptr %BWmap11, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 %idxprom
  store ptr %7, ptr %arrayidx, align 8
  %11 = load i32, ptr %bitspersample, align 4
  switch i32 %11, label %for.inc [
    i32 1, label %sw.bb
    i32 2, label %sw.bb109
    i32 4, label %sw.bb160
    i32 8, label %sw.bb185
  ]

sw.bb:                                            ; preds = %for.body
  %12 = load ptr, ptr %Map, align 8
  %13 = load i32, ptr %i, align 4
  %shr = ashr i32 %13, 7
  %idxprom12 = sext i32 %shr to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %12, i64 %idxprom12
  %14 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %14 to i64
  %conv15 = zext i8 %14 to i64
  %shl = shl nuw nsw i64 %conv15, 8
  %or = or i64 %shl, %conv14
  %conv16 = zext i8 %14 to i64
  %shl17 = shl nuw nsw i64 %conv16, 16
  %or18 = or i64 %or, %shl17
  %or19 = or i64 %or18, 4278190080
  %15 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %15, i64 1
  store ptr %incdec.ptr, ptr %p, align 8
  store i64 %or19, ptr %15, align 8
  %16 = load ptr, ptr %Map, align 8
  %17 = load i32, ptr %i, align 4
  %shr202 = lshr i32 %17, 6
  %and = and i32 %shr202, 1
  %idxprom21 = zext i32 %and to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %16, i64 %idxprom21
  %18 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %18 to i64
  %conv24 = zext i8 %18 to i64
  %shl25 = shl nuw nsw i64 %conv24, 8
  %or26 = or i64 %shl25, %conv23
  %conv27 = zext i8 %18 to i64
  %shl28 = shl nuw nsw i64 %conv27, 16
  %or29 = or i64 %or26, %shl28
  %or30 = or i64 %or29, 4278190080
  %19 = load ptr, ptr %p, align 8
  %incdec.ptr31 = getelementptr inbounds i64, ptr %19, i64 1
  store ptr %incdec.ptr31, ptr %p, align 8
  store i64 %or30, ptr %19, align 8
  %20 = load ptr, ptr %Map, align 8
  %21 = load i32, ptr %i, align 4
  %shr323 = lshr i32 %21, 5
  %and33 = and i32 %shr323, 1
  %idxprom34 = zext i32 %and33 to i64
  %arrayidx35 = getelementptr inbounds i8, ptr %20, i64 %idxprom34
  %22 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %22 to i64
  %conv37 = zext i8 %22 to i64
  %shl38 = shl nuw nsw i64 %conv37, 8
  %or39 = or i64 %shl38, %conv36
  %conv40 = zext i8 %22 to i64
  %shl41 = shl nuw nsw i64 %conv40, 16
  %or42 = or i64 %or39, %shl41
  %or43 = or i64 %or42, 4278190080
  %23 = load ptr, ptr %p, align 8
  %incdec.ptr44 = getelementptr inbounds i64, ptr %23, i64 1
  store ptr %incdec.ptr44, ptr %p, align 8
  store i64 %or43, ptr %23, align 8
  %24 = load ptr, ptr %Map, align 8
  %25 = load i32, ptr %i, align 4
  %shr454 = lshr i32 %25, 4
  %and46 = and i32 %shr454, 1
  %idxprom47 = zext i32 %and46 to i64
  %arrayidx48 = getelementptr inbounds i8, ptr %24, i64 %idxprom47
  %26 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %26 to i64
  %conv50 = zext i8 %26 to i64
  %shl51 = shl nuw nsw i64 %conv50, 8
  %or52 = or i64 %shl51, %conv49
  %conv53 = zext i8 %26 to i64
  %shl54 = shl nuw nsw i64 %conv53, 16
  %or55 = or i64 %or52, %shl54
  %or56 = or i64 %or55, 4278190080
  %27 = load ptr, ptr %p, align 8
  %incdec.ptr57 = getelementptr inbounds i64, ptr %27, i64 1
  store ptr %incdec.ptr57, ptr %p, align 8
  store i64 %or56, ptr %27, align 8
  %28 = load ptr, ptr %Map, align 8
  %29 = load i32, ptr %i, align 4
  %shr585 = lshr i32 %29, 3
  %and59 = and i32 %shr585, 1
  %idxprom60 = zext i32 %and59 to i64
  %arrayidx61 = getelementptr inbounds i8, ptr %28, i64 %idxprom60
  %30 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %30 to i64
  %conv63 = zext i8 %30 to i64
  %shl64 = shl nuw nsw i64 %conv63, 8
  %or65 = or i64 %shl64, %conv62
  %conv66 = zext i8 %30 to i64
  %shl67 = shl nuw nsw i64 %conv66, 16
  %or68 = or i64 %or65, %shl67
  %or69 = or i64 %or68, 4278190080
  %31 = load ptr, ptr %p, align 8
  %incdec.ptr70 = getelementptr inbounds i64, ptr %31, i64 1
  store ptr %incdec.ptr70, ptr %p, align 8
  store i64 %or69, ptr %31, align 8
  %32 = load ptr, ptr %Map, align 8
  %33 = load i32, ptr %i, align 4
  %shr716 = lshr i32 %33, 2
  %and72 = and i32 %shr716, 1
  %idxprom73 = zext i32 %and72 to i64
  %arrayidx74 = getelementptr inbounds i8, ptr %32, i64 %idxprom73
  %34 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %34 to i64
  %conv76 = zext i8 %34 to i64
  %shl77 = shl nuw nsw i64 %conv76, 8
  %or78 = or i64 %shl77, %conv75
  %conv79 = zext i8 %34 to i64
  %shl80 = shl nuw nsw i64 %conv79, 16
  %or81 = or i64 %or78, %shl80
  %or82 = or i64 %or81, 4278190080
  %35 = load ptr, ptr %p, align 8
  %incdec.ptr83 = getelementptr inbounds i64, ptr %35, i64 1
  store ptr %incdec.ptr83, ptr %p, align 8
  store i64 %or82, ptr %35, align 8
  %36 = load ptr, ptr %Map, align 8
  %37 = load i32, ptr %i, align 4
  %shr847 = lshr i32 %37, 1
  %and85 = and i32 %shr847, 1
  %idxprom86 = zext i32 %and85 to i64
  %arrayidx87 = getelementptr inbounds i8, ptr %36, i64 %idxprom86
  %38 = load i8, ptr %arrayidx87, align 1
  %conv88 = zext i8 %38 to i64
  %conv89 = zext i8 %38 to i64
  %shl90 = shl nuw nsw i64 %conv89, 8
  %or91 = or i64 %shl90, %conv88
  %conv92 = zext i8 %38 to i64
  %shl93 = shl nuw nsw i64 %conv92, 16
  %or94 = or i64 %or91, %shl93
  %or95 = or i64 %or94, 4278190080
  %39 = load ptr, ptr %p, align 8
  %incdec.ptr96 = getelementptr inbounds i64, ptr %39, i64 1
  store ptr %incdec.ptr96, ptr %p, align 8
  store i64 %or95, ptr %39, align 8
  %40 = load ptr, ptr %Map, align 8
  %41 = load i32, ptr %i, align 4
  %and97 = and i32 %41, 1
  %idxprom98 = zext i32 %and97 to i64
  %arrayidx99 = getelementptr inbounds i8, ptr %40, i64 %idxprom98
  %42 = load i8, ptr %arrayidx99, align 1
  %conv100 = zext i8 %42 to i64
  %conv101 = zext i8 %42 to i64
  %shl102 = shl nuw nsw i64 %conv101, 8
  %or103 = or i64 %shl102, %conv100
  %conv104 = zext i8 %42 to i64
  %shl105 = shl nuw nsw i64 %conv104, 16
  %or106 = or i64 %or103, %shl105
  %or107 = or i64 %or106, 4278190080
  %43 = load ptr, ptr %p, align 8
  %incdec.ptr108 = getelementptr inbounds i64, ptr %43, i64 1
  store ptr %incdec.ptr108, ptr %p, align 8
  store i64 %or107, ptr %43, align 8
  br label %for.inc

sw.bb109:                                         ; preds = %for.body
  %44 = load ptr, ptr %Map, align 8
  %45 = load i32, ptr %i, align 4
  %shr110 = ashr i32 %45, 6
  %idxprom111 = sext i32 %shr110 to i64
  %arrayidx112 = getelementptr inbounds i8, ptr %44, i64 %idxprom111
  %46 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %46 to i64
  %conv114 = zext i8 %46 to i64
  %shl115 = shl nuw nsw i64 %conv114, 8
  %or116 = or i64 %shl115, %conv113
  %conv117 = zext i8 %46 to i64
  %shl118 = shl nuw nsw i64 %conv117, 16
  %or119 = or i64 %or116, %shl118
  %or120 = or i64 %or119, 4278190080
  %47 = load ptr, ptr %p, align 8
  %incdec.ptr121 = getelementptr inbounds i64, ptr %47, i64 1
  store ptr %incdec.ptr121, ptr %p, align 8
  store i64 %or120, ptr %47, align 8
  %48 = load ptr, ptr %Map, align 8
  %49 = load i32, ptr %i, align 4
  %50 = lshr i32 %49, 4
  %and123 = and i32 %50, 3
  %idxprom124 = zext i32 %and123 to i64
  %arrayidx125 = getelementptr inbounds i8, ptr %48, i64 %idxprom124
  %51 = load i8, ptr %arrayidx125, align 1
  %conv126 = zext i8 %51 to i64
  %conv127 = zext i8 %51 to i64
  %shl128 = shl nuw nsw i64 %conv127, 8
  %or129 = or i64 %shl128, %conv126
  %conv130 = zext i8 %51 to i64
  %shl131 = shl nuw nsw i64 %conv130, 16
  %or132 = or i64 %or129, %shl131
  %or133 = or i64 %or132, 4278190080
  %52 = load ptr, ptr %p, align 8
  %incdec.ptr134 = getelementptr inbounds i64, ptr %52, i64 1
  store ptr %incdec.ptr134, ptr %p, align 8
  store i64 %or133, ptr %52, align 8
  %53 = load ptr, ptr %Map, align 8
  %54 = load i32, ptr %i, align 4
  %55 = lshr i32 %54, 2
  %and136 = and i32 %55, 3
  %idxprom137 = zext i32 %and136 to i64
  %arrayidx138 = getelementptr inbounds i8, ptr %53, i64 %idxprom137
  %56 = load i8, ptr %arrayidx138, align 1
  %conv139 = zext i8 %56 to i64
  %conv140 = zext i8 %56 to i64
  %shl141 = shl nuw nsw i64 %conv140, 8
  %or142 = or i64 %shl141, %conv139
  %conv143 = zext i8 %56 to i64
  %shl144 = shl nuw nsw i64 %conv143, 16
  %or145 = or i64 %or142, %shl144
  %or146 = or i64 %or145, 4278190080
  %57 = load ptr, ptr %p, align 8
  %incdec.ptr147 = getelementptr inbounds i64, ptr %57, i64 1
  store ptr %incdec.ptr147, ptr %p, align 8
  store i64 %or146, ptr %57, align 8
  %58 = load ptr, ptr %Map, align 8
  %59 = load i32, ptr %i, align 4
  %and148 = and i32 %59, 3
  %idxprom149 = zext i32 %and148 to i64
  %arrayidx150 = getelementptr inbounds i8, ptr %58, i64 %idxprom149
  %60 = load i8, ptr %arrayidx150, align 1
  %conv151 = zext i8 %60 to i64
  %conv152 = zext i8 %60 to i64
  %shl153 = shl nuw nsw i64 %conv152, 8
  %or154 = or i64 %shl153, %conv151
  %conv155 = zext i8 %60 to i64
  %shl156 = shl nuw nsw i64 %conv155, 16
  %or157 = or i64 %or154, %shl156
  %or158 = or i64 %or157, 4278190080
  %61 = load ptr, ptr %p, align 8
  %incdec.ptr159 = getelementptr inbounds i64, ptr %61, i64 1
  store ptr %incdec.ptr159, ptr %p, align 8
  store i64 %or158, ptr %61, align 8
  br label %for.inc

sw.bb160:                                         ; preds = %for.body
  %62 = load ptr, ptr %Map, align 8
  %63 = load i32, ptr %i, align 4
  %shr161 = ashr i32 %63, 4
  %idxprom162 = sext i32 %shr161 to i64
  %arrayidx163 = getelementptr inbounds i8, ptr %62, i64 %idxprom162
  %64 = load i8, ptr %arrayidx163, align 1
  %conv164 = zext i8 %64 to i64
  %conv165 = zext i8 %64 to i64
  %shl166 = shl nuw nsw i64 %conv165, 8
  %or167 = or i64 %shl166, %conv164
  %conv168 = zext i8 %64 to i64
  %shl169 = shl nuw nsw i64 %conv168, 16
  %or170 = or i64 %or167, %shl169
  %or171 = or i64 %or170, 4278190080
  %65 = load ptr, ptr %p, align 8
  %incdec.ptr172 = getelementptr inbounds i64, ptr %65, i64 1
  store ptr %incdec.ptr172, ptr %p, align 8
  store i64 %or171, ptr %65, align 8
  %66 = load ptr, ptr %Map, align 8
  %67 = load i32, ptr %i, align 4
  %and173 = and i32 %67, 15
  %idxprom174 = zext i32 %and173 to i64
  %arrayidx175 = getelementptr inbounds i8, ptr %66, i64 %idxprom174
  %68 = load i8, ptr %arrayidx175, align 1
  %conv176 = zext i8 %68 to i64
  %conv177 = zext i8 %68 to i64
  %shl178 = shl nuw nsw i64 %conv177, 8
  %or179 = or i64 %shl178, %conv176
  %conv180 = zext i8 %68 to i64
  %shl181 = shl nuw nsw i64 %conv180, 16
  %or182 = or i64 %or179, %shl181
  %or183 = or i64 %or182, 4278190080
  %69 = load ptr, ptr %p, align 8
  %incdec.ptr184 = getelementptr inbounds i64, ptr %69, i64 1
  store ptr %incdec.ptr184, ptr %p, align 8
  store i64 %or183, ptr %69, align 8
  br label %for.inc

sw.bb185:                                         ; preds = %for.body
  %70 = load ptr, ptr %Map, align 8
  %71 = load i32, ptr %i, align 4
  %idxprom186 = sext i32 %71 to i64
  %arrayidx187 = getelementptr inbounds i8, ptr %70, i64 %idxprom186
  %72 = load i8, ptr %arrayidx187, align 1
  %conv188 = zext i8 %72 to i64
  %conv189 = zext i8 %72 to i64
  %shl190 = shl nuw nsw i64 %conv189, 8
  %or191 = or i64 %shl190, %conv188
  %conv192 = zext i8 %72 to i64
  %shl193 = shl nuw nsw i64 %conv192, 16
  %or194 = or i64 %or191, %shl193
  %or195 = or i64 %or194, 4278190080
  %73 = load ptr, ptr %p, align 8
  %incdec.ptr196 = getelementptr inbounds i64, ptr %73, i64 1
  store ptr %incdec.ptr196, ptr %p, align 8
  store i64 %or195, ptr %73, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %sw.bb, %sw.bb109, %sw.bb160, %sw.bb185
  %74 = load i32, ptr %i, align 4
  %inc = add nsw i32 %74, 1
  br label %for.cond, !llvm.loop !54

return:                                           ; preds = %for.cond, %if.then
  %storemerge1 = phi i32 [ 0, %if.then ], [ 1, %for.cond ]
  ret i32 %storemerge1
}

; Function Attrs: nounwind ssp uwtable
define internal void @TIFFYCbCrToRGBInit(ptr noundef %ycbcr, ptr noundef %tif) #0 {
entry:
  %ycbcr.addr = alloca ptr, align 8
  %tif.addr = alloca ptr, align 8
  %clamptab = alloca ptr, align 8
  %coeffs = alloca ptr, align 8
  %i = alloca i32, align 4
  %f1 = alloca float, align 4
  %D1 = alloca i64, align 8
  %D2 = alloca i64, align 8
  %f3 = alloca float, align 4
  %D3 = alloca i64, align 8
  %D4 = alloca i64, align 8
  %x = alloca i32, align 4
  store ptr %ycbcr, ptr %ycbcr.addr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %ycbcr, i64 56
  store ptr %add.ptr, ptr %clamptab, align 8
  call void @_TIFFmemset(ptr noundef nonnull %add.ptr, i32 noundef 0, i64 noundef 256) #4
  %add.ptr1 = getelementptr inbounds i8, ptr %ycbcr, i64 312
  store ptr %add.ptr1, ptr %clamptab, align 8
  %0 = load ptr, ptr %ycbcr.addr, align 8
  store ptr %add.ptr1, ptr %0, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %conv = trunc i32 %1 to i8
  %2 = load ptr, ptr %clamptab, align 8
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  br label %for.cond, !llvm.loop !55

for.end:                                          ; preds = %for.cond
  %4 = load ptr, ptr %clamptab, align 8
  %add.ptr3 = getelementptr inbounds i8, ptr %4, i64 256
  call void @_TIFFmemset(ptr noundef nonnull %add.ptr3, i32 noundef 255, i64 noundef 512) #4
  %5 = load ptr, ptr %tif.addr, align 8
  %call = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %5, i64 noundef 529, ptr noundef nonnull %coeffs) #4
  %6 = load ptr, ptr %ycbcr.addr, align 8
  %coeffs4 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %6, i64 0, i32 5
  %7 = load ptr, ptr %coeffs, align 8
  call void @_TIFFmemcpy(ptr noundef nonnull %coeffs4, ptr noundef %7, i64 noundef 12) #4
  %8 = load ptr, ptr %coeffs, align 8
  %9 = load float, ptr %8, align 4
  %10 = call float @llvm.fmuladd.f32(float %9, float -2.000000e+00, float 2.000000e+00)
  store float %10, ptr %f1, align 4
  %mul = fmul float %10, 6.553600e+04
  %conv6 = fpext float %mul to double
  %add = fadd double %conv6, 5.000000e-01
  %conv7 = fptosi double %add to i64
  store i64 %conv7, ptr %D1, align 8
  %11 = load ptr, ptr %coeffs, align 8
  %12 = load float, ptr %11, align 4
  %13 = load float, ptr %f1, align 4
  %mul9 = fmul float %12, %13
  %arrayidx10 = getelementptr inbounds float, ptr %11, i64 1
  %14 = load float, ptr %arrayidx10, align 4
  %div = fdiv float %mul9, %14
  %mul11 = fmul float %div, 6.553600e+04
  %conv12 = fpext float %mul11 to double
  %add13 = fadd double %conv12, 5.000000e-01
  %conv14 = fptosi double %add13 to i64
  %sub = sub nsw i64 0, %conv14
  store i64 %sub, ptr %D2, align 8
  %15 = load ptr, ptr %coeffs, align 8
  %arrayidx15 = getelementptr inbounds float, ptr %15, i64 2
  %16 = load float, ptr %arrayidx15, align 4
  %17 = call float @llvm.fmuladd.f32(float %16, float -2.000000e+00, float 2.000000e+00)
  store float %17, ptr %f3, align 4
  %mul17 = fmul float %17, 6.553600e+04
  %conv18 = fpext float %mul17 to double
  %add19 = fadd double %conv18, 5.000000e-01
  %conv20 = fptosi double %add19 to i64
  store i64 %conv20, ptr %D3, align 8
  %18 = load ptr, ptr %coeffs, align 8
  %arrayidx21 = getelementptr inbounds float, ptr %18, i64 2
  %19 = load float, ptr %arrayidx21, align 4
  %20 = load float, ptr %f3, align 4
  %mul22 = fmul float %19, %20
  %arrayidx23 = getelementptr inbounds float, ptr %18, i64 1
  %21 = load float, ptr %arrayidx23, align 4
  %div24 = fdiv float %mul22, %21
  %mul25 = fmul float %div24, 6.553600e+04
  %conv26 = fpext float %mul25 to double
  %add27 = fadd double %conv26, 5.000000e-01
  %conv28 = fptosi double %add27 to i64
  %sub29 = sub nsw i64 0, %conv28
  store i64 %sub29, ptr %D4, align 8
  %22 = load ptr, ptr %clamptab, align 8
  %add.ptr30 = getelementptr inbounds i8, ptr %22, i64 768
  %23 = load ptr, ptr %ycbcr.addr, align 8
  %Cr_r_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %23, i64 0, i32 1
  store ptr %add.ptr30, ptr %Cr_r_tab, align 8
  %add.ptr32 = getelementptr inbounds i8, ptr %22, i64 1792
  %Cb_b_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %23, i64 0, i32 2
  store ptr %add.ptr32, ptr %Cb_b_tab, align 8
  %add.ptr34 = getelementptr inbounds i8, ptr %22, i64 2816
  %24 = load ptr, ptr %ycbcr.addr, align 8
  %Cr_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %24, i64 0, i32 3
  store ptr %add.ptr34, ptr %Cr_g_tab, align 8
  %add.ptr36 = getelementptr inbounds i8, ptr %22, i64 4864
  %Cb_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %24, i64 0, i32 4
  store ptr %add.ptr36, ptr %Cb_g_tab, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.body40, %for.end
  %storemerge1 = phi i32 [ -128, %for.end ], [ %inc69, %for.body40 ]
  store i32 %storemerge1, ptr %x, align 4
  %25 = load i32, ptr %i, align 4
  %cmp38 = icmp slt i32 %25, 256
  br i1 %cmp38, label %for.body40, label %for.end70

for.body40:                                       ; preds = %for.cond37
  %26 = load i64, ptr %D1, align 8
  %27 = load i32, ptr %x, align 4
  %conv41 = sext i32 %27 to i64
  %mul42 = mul nsw i64 %26, %conv41
  %add43 = add nsw i64 %mul42, 32768
  %28 = lshr i64 %add43, 16
  %conv44 = trunc i64 %28 to i32
  %29 = load ptr, ptr %ycbcr.addr, align 8
  %Cr_r_tab45 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %29, i64 0, i32 1
  %30 = load ptr, ptr %Cr_r_tab45, align 8
  %31 = load i32, ptr %i, align 4
  %idxprom46 = sext i32 %31 to i64
  %arrayidx47 = getelementptr inbounds i32, ptr %30, i64 %idxprom46
  store i32 %conv44, ptr %arrayidx47, align 4
  %32 = load i64, ptr %D3, align 8
  %33 = load i32, ptr %x, align 4
  %conv48 = sext i32 %33 to i64
  %mul49 = mul nsw i64 %32, %conv48
  %add50 = add nsw i64 %mul49, 32768
  %34 = lshr i64 %add50, 16
  %conv52 = trunc i64 %34 to i32
  %35 = load ptr, ptr %ycbcr.addr, align 8
  %Cb_b_tab53 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %35, i64 0, i32 2
  %36 = load ptr, ptr %Cb_b_tab53, align 8
  %37 = load i32, ptr %i, align 4
  %idxprom54 = sext i32 %37 to i64
  %arrayidx55 = getelementptr inbounds i32, ptr %36, i64 %idxprom54
  store i32 %conv52, ptr %arrayidx55, align 4
  %38 = load i64, ptr %D2, align 8
  %39 = load i32, ptr %x, align 4
  %conv56 = sext i32 %39 to i64
  %mul57 = mul nsw i64 %38, %conv56
  %40 = load ptr, ptr %ycbcr.addr, align 8
  %Cr_g_tab58 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %40, i64 0, i32 3
  %41 = load ptr, ptr %Cr_g_tab58, align 8
  %42 = load i32, ptr %i, align 4
  %idxprom59 = sext i32 %42 to i64
  %arrayidx60 = getelementptr inbounds i64, ptr %41, i64 %idxprom59
  store i64 %mul57, ptr %arrayidx60, align 8
  %43 = load i64, ptr %D4, align 8
  %44 = load i32, ptr %x, align 4
  %conv61 = sext i32 %44 to i64
  %mul62 = mul nsw i64 %43, %conv61
  %add63 = add nsw i64 %mul62, 32768
  %45 = load ptr, ptr %ycbcr.addr, align 8
  %Cb_g_tab64 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %45, i64 0, i32 4
  %46 = load ptr, ptr %Cb_g_tab64, align 8
  %47 = load i32, ptr %i, align 4
  %idxprom65 = sext i32 %47 to i64
  %arrayidx66 = getelementptr inbounds i64, ptr %46, i64 %idxprom65
  store i64 %add63, ptr %arrayidx66, align 8
  %48 = load i32, ptr %i, align 4
  %inc68 = add nsw i32 %48, 1
  store i32 %inc68, ptr %i, align 4
  %49 = load i32, ptr %x, align 4
  %inc69 = add nsw i32 %49, 1
  br label %for.cond37, !llvm.loop !56

for.end70:                                        ; preds = %for.cond37
  ret void
}

declare i32 @_TIFFmemcmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @putcontig8bitYCbCr44tile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %pp.addr = alloca ptr, align 8
  %ycbcr = alloca ptr, align 8
  %Crrtab = alloca ptr, align 8
  %Cbbtab = alloca ptr, align 8
  %Crgtab = alloca ptr, align 8
  %Cbgtab = alloca ptr, align 8
  %clamptab = alloca ptr, align 8
  %cp1 = alloca ptr, align 8
  %cp2 = alloca ptr, align 8
  %cp3 = alloca ptr, align 8
  %incr = alloca i64, align 8
  %Cb = alloca i32, align 4
  %Cr = alloca i32, align 4
  %Y = alloca i32, align 4
  %Y39 = alloca i32, align 4
  %Y71 = alloca i32, align 4
  %Y103 = alloca i32, align 4
  %Y135 = alloca i32, align 4
  %Y167 = alloca i32, align 4
  %Y199 = alloca i32, align 4
  %Y231 = alloca i32, align 4
  %Y263 = alloca i32, align 4
  %Y295 = alloca i32, align 4
  %Y327 = alloca i32, align 4
  %Y359 = alloca i32, align 4
  %Y391 = alloca i32, align 4
  %Y423 = alloca i32, align 4
  %Y455 = alloca i32, align 4
  %Y487 = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %ycbcr1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 18
  %1 = load ptr, ptr %ycbcr1, align 8
  store ptr %1, ptr %ycbcr, align 8
  %Cr_r_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %Cr_r_tab, align 8
  store ptr %2, ptr %Crrtab, align 8
  %Cb_b_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %1, i64 0, i32 2
  %3 = load ptr, ptr %Cb_b_tab, align 8
  store ptr %3, ptr %Cbbtab, align 8
  %4 = load ptr, ptr %ycbcr, align 8
  %Cr_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %4, i64 0, i32 3
  %5 = load ptr, ptr %Cr_g_tab, align 8
  store ptr %5, ptr %Crgtab, align 8
  %Cb_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %Cb_g_tab, align 8
  store ptr %6, ptr %Cbgtab, align 8
  %7 = load ptr, ptr %ycbcr, align 8
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %clamptab, align 8
  %9 = load ptr, ptr %cp.addr, align 8
  %10 = load i64, ptr %w.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %9, i64 %10
  %11 = load i64, ptr %toskew.addr, align 8
  %add.ptr3 = getelementptr inbounds i64, ptr %add.ptr, i64 %11
  store ptr %add.ptr3, ptr %cp1, align 8
  %add.ptr4 = getelementptr inbounds i64, ptr %add.ptr3, i64 %10
  %add.ptr5 = getelementptr inbounds i64, ptr %add.ptr4, i64 %11
  store ptr %add.ptr5, ptr %cp2, align 8
  %12 = load i64, ptr %w.addr, align 8
  %add.ptr6 = getelementptr inbounds i64, ptr %add.ptr5, i64 %12
  %13 = load i64, ptr %toskew.addr, align 8
  %add.ptr7 = getelementptr inbounds i64, ptr %add.ptr6, i64 %13
  store ptr %add.ptr7, ptr %cp3, align 8
  %mul = mul i64 %12, 3
  %mul8 = shl nsw i64 %13, 2
  %add = add i64 %mul, %mul8
  store i64 %add, ptr %incr, align 8
  br label %for.cond

for.cond:                                         ; preds = %do.end, %entry
  %14 = load i64, ptr %h.addr, align 8
  %cmp = icmp ugt i64 %14, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i64, ptr %w.addr, align 8
  %shr = lshr i64 %15, 2
  store i64 %shr, ptr %x.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.body, %for.body
  %16 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %16, i64 16
  %17 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %17 to i32
  store i32 %conv, ptr %Cb, align 4
  %arrayidx9 = getelementptr inbounds i8, ptr %16, i64 17
  %18 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %18 to i32
  store i32 %conv10, ptr %Cr, align 4
  %19 = load ptr, ptr %pp.addr, align 8
  %20 = load i8, ptr %19, align 1
  %conv12 = zext i8 %20 to i32
  store i32 %conv12, ptr %Y, align 4
  %21 = load ptr, ptr %clamptab, align 8
  %22 = load ptr, ptr %Crrtab, align 8
  %23 = load i32, ptr %Cr, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %22, i64 %idxprom
  %24 = load i32, ptr %arrayidx13, align 4
  %add14 = add nsw i32 %24, %conv12
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %21, i64 %idxprom15
  %25 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %25 to i64
  %26 = load ptr, ptr %clamptab, align 8
  %27 = load i32, ptr %Y, align 4
  %28 = load ptr, ptr %Cbgtab, align 8
  %29 = load i32, ptr %Cb, align 4
  %idxprom18 = sext i32 %29 to i64
  %arrayidx19 = getelementptr inbounds i64, ptr %28, i64 %idxprom18
  %30 = load i64, ptr %arrayidx19, align 8
  %31 = load ptr, ptr %Crgtab, align 8
  %32 = load i32, ptr %Cr, align 4
  %idxprom20 = sext i32 %32 to i64
  %arrayidx21 = getelementptr inbounds i64, ptr %31, i64 %idxprom20
  %33 = load i64, ptr %arrayidx21, align 8
  %add22 = add nsw i64 %30, %33
  %34 = lshr i64 %add22, 16
  %conv24 = trunc i64 %34 to i32
  %add25 = add nsw i32 %27, %conv24
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %26, i64 %idxprom26
  %35 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %35 to i64
  %shl = shl nuw nsw i64 %conv28, 8
  %or = or i64 %shl, %conv17
  %36 = load ptr, ptr %clamptab, align 8
  %37 = load i32, ptr %Y, align 4
  %38 = load ptr, ptr %Cbbtab, align 8
  %39 = load i32, ptr %Cb, align 4
  %idxprom29 = sext i32 %39 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %38, i64 %idxprom29
  %40 = load i32, ptr %arrayidx30, align 4
  %add31 = add nsw i32 %37, %40
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds i8, ptr %36, i64 %idxprom32
  %41 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %41 to i64
  %shl35 = shl nuw nsw i64 %conv34, 16
  %or36 = or i64 %or, %shl35
  %or37 = or i64 %or36, 4278190080
  %42 = load ptr, ptr %cp.addr, align 8
  store i64 %or37, ptr %42, align 8
  %43 = load ptr, ptr %pp.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %43, i64 1
  %44 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %44 to i32
  store i32 %conv41, ptr %Y39, align 4
  %45 = load ptr, ptr %clamptab, align 8
  %46 = load ptr, ptr %Crrtab, align 8
  %47 = load i32, ptr %Cr, align 4
  %idxprom42 = sext i32 %47 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %46, i64 %idxprom42
  %48 = load i32, ptr %arrayidx43, align 4
  %add44 = add nsw i32 %48, %conv41
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds i8, ptr %45, i64 %idxprom45
  %49 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %49 to i64
  %50 = load ptr, ptr %clamptab, align 8
  %51 = load i32, ptr %Y39, align 4
  %52 = load ptr, ptr %Cbgtab, align 8
  %53 = load i32, ptr %Cb, align 4
  %idxprom48 = sext i32 %53 to i64
  %arrayidx49 = getelementptr inbounds i64, ptr %52, i64 %idxprom48
  %54 = load i64, ptr %arrayidx49, align 8
  %55 = load ptr, ptr %Crgtab, align 8
  %56 = load i32, ptr %Cr, align 4
  %idxprom50 = sext i32 %56 to i64
  %arrayidx51 = getelementptr inbounds i64, ptr %55, i64 %idxprom50
  %57 = load i64, ptr %arrayidx51, align 8
  %add52 = add nsw i64 %54, %57
  %58 = lshr i64 %add52, 16
  %conv54 = trunc i64 %58 to i32
  %add55 = add nsw i32 %51, %conv54
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds i8, ptr %50, i64 %idxprom56
  %59 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %59 to i64
  %shl59 = shl nuw nsw i64 %conv58, 8
  %or60 = or i64 %shl59, %conv47
  %60 = load ptr, ptr %clamptab, align 8
  %61 = load i32, ptr %Y39, align 4
  %62 = load ptr, ptr %Cbbtab, align 8
  %63 = load i32, ptr %Cb, align 4
  %idxprom61 = sext i32 %63 to i64
  %arrayidx62 = getelementptr inbounds i32, ptr %62, i64 %idxprom61
  %64 = load i32, ptr %arrayidx62, align 4
  %add63 = add nsw i32 %61, %64
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds i8, ptr %60, i64 %idxprom64
  %65 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %65 to i64
  %shl67 = shl nuw nsw i64 %conv66, 16
  %or68 = or i64 %or60, %shl67
  %or69 = or i64 %or68, 4278190080
  %66 = load ptr, ptr %cp.addr, align 8
  %arrayidx70 = getelementptr inbounds i64, ptr %66, i64 1
  store i64 %or69, ptr %arrayidx70, align 8
  %67 = load ptr, ptr %pp.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, ptr %67, i64 2
  %68 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %68 to i32
  store i32 %conv73, ptr %Y71, align 4
  %69 = load ptr, ptr %clamptab, align 8
  %70 = load ptr, ptr %Crrtab, align 8
  %71 = load i32, ptr %Cr, align 4
  %idxprom74 = sext i32 %71 to i64
  %arrayidx75 = getelementptr inbounds i32, ptr %70, i64 %idxprom74
  %72 = load i32, ptr %arrayidx75, align 4
  %add76 = add nsw i32 %72, %conv73
  %idxprom77 = sext i32 %add76 to i64
  %arrayidx78 = getelementptr inbounds i8, ptr %69, i64 %idxprom77
  %73 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %73 to i64
  %74 = load ptr, ptr %clamptab, align 8
  %75 = load i32, ptr %Y71, align 4
  %76 = load ptr, ptr %Cbgtab, align 8
  %77 = load i32, ptr %Cb, align 4
  %idxprom80 = sext i32 %77 to i64
  %arrayidx81 = getelementptr inbounds i64, ptr %76, i64 %idxprom80
  %78 = load i64, ptr %arrayidx81, align 8
  %79 = load ptr, ptr %Crgtab, align 8
  %80 = load i32, ptr %Cr, align 4
  %idxprom82 = sext i32 %80 to i64
  %arrayidx83 = getelementptr inbounds i64, ptr %79, i64 %idxprom82
  %81 = load i64, ptr %arrayidx83, align 8
  %add84 = add nsw i64 %78, %81
  %82 = lshr i64 %add84, 16
  %conv86 = trunc i64 %82 to i32
  %add87 = add nsw i32 %75, %conv86
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds i8, ptr %74, i64 %idxprom88
  %83 = load i8, ptr %arrayidx89, align 1
  %conv90 = zext i8 %83 to i64
  %shl91 = shl nuw nsw i64 %conv90, 8
  %or92 = or i64 %shl91, %conv79
  %84 = load ptr, ptr %clamptab, align 8
  %85 = load i32, ptr %Y71, align 4
  %86 = load ptr, ptr %Cbbtab, align 8
  %87 = load i32, ptr %Cb, align 4
  %idxprom93 = sext i32 %87 to i64
  %arrayidx94 = getelementptr inbounds i32, ptr %86, i64 %idxprom93
  %88 = load i32, ptr %arrayidx94, align 4
  %add95 = add nsw i32 %85, %88
  %idxprom96 = sext i32 %add95 to i64
  %arrayidx97 = getelementptr inbounds i8, ptr %84, i64 %idxprom96
  %89 = load i8, ptr %arrayidx97, align 1
  %conv98 = zext i8 %89 to i64
  %shl99 = shl nuw nsw i64 %conv98, 16
  %or100 = or i64 %or92, %shl99
  %or101 = or i64 %or100, 4278190080
  %90 = load ptr, ptr %cp.addr, align 8
  %arrayidx102 = getelementptr inbounds i64, ptr %90, i64 2
  store i64 %or101, ptr %arrayidx102, align 8
  %91 = load ptr, ptr %pp.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, ptr %91, i64 3
  %92 = load i8, ptr %arrayidx104, align 1
  %conv105 = zext i8 %92 to i32
  store i32 %conv105, ptr %Y103, align 4
  %93 = load ptr, ptr %clamptab, align 8
  %94 = load ptr, ptr %Crrtab, align 8
  %95 = load i32, ptr %Cr, align 4
  %idxprom106 = sext i32 %95 to i64
  %arrayidx107 = getelementptr inbounds i32, ptr %94, i64 %idxprom106
  %96 = load i32, ptr %arrayidx107, align 4
  %add108 = add nsw i32 %96, %conv105
  %idxprom109 = sext i32 %add108 to i64
  %arrayidx110 = getelementptr inbounds i8, ptr %93, i64 %idxprom109
  %97 = load i8, ptr %arrayidx110, align 1
  %conv111 = zext i8 %97 to i64
  %98 = load ptr, ptr %clamptab, align 8
  %99 = load i32, ptr %Y103, align 4
  %100 = load ptr, ptr %Cbgtab, align 8
  %101 = load i32, ptr %Cb, align 4
  %idxprom112 = sext i32 %101 to i64
  %arrayidx113 = getelementptr inbounds i64, ptr %100, i64 %idxprom112
  %102 = load i64, ptr %arrayidx113, align 8
  %103 = load ptr, ptr %Crgtab, align 8
  %104 = load i32, ptr %Cr, align 4
  %idxprom114 = sext i32 %104 to i64
  %arrayidx115 = getelementptr inbounds i64, ptr %103, i64 %idxprom114
  %105 = load i64, ptr %arrayidx115, align 8
  %add116 = add nsw i64 %102, %105
  %106 = lshr i64 %add116, 16
  %conv118 = trunc i64 %106 to i32
  %add119 = add nsw i32 %99, %conv118
  %idxprom120 = sext i32 %add119 to i64
  %arrayidx121 = getelementptr inbounds i8, ptr %98, i64 %idxprom120
  %107 = load i8, ptr %arrayidx121, align 1
  %conv122 = zext i8 %107 to i64
  %shl123 = shl nuw nsw i64 %conv122, 8
  %or124 = or i64 %shl123, %conv111
  %108 = load ptr, ptr %clamptab, align 8
  %109 = load i32, ptr %Y103, align 4
  %110 = load ptr, ptr %Cbbtab, align 8
  %111 = load i32, ptr %Cb, align 4
  %idxprom125 = sext i32 %111 to i64
  %arrayidx126 = getelementptr inbounds i32, ptr %110, i64 %idxprom125
  %112 = load i32, ptr %arrayidx126, align 4
  %add127 = add nsw i32 %109, %112
  %idxprom128 = sext i32 %add127 to i64
  %arrayidx129 = getelementptr inbounds i8, ptr %108, i64 %idxprom128
  %113 = load i8, ptr %arrayidx129, align 1
  %conv130 = zext i8 %113 to i64
  %shl131 = shl nuw nsw i64 %conv130, 16
  %or132 = or i64 %or124, %shl131
  %or133 = or i64 %or132, 4278190080
  %114 = load ptr, ptr %cp.addr, align 8
  %arrayidx134 = getelementptr inbounds i64, ptr %114, i64 3
  store i64 %or133, ptr %arrayidx134, align 8
  %115 = load ptr, ptr %pp.addr, align 8
  %arrayidx136 = getelementptr inbounds i8, ptr %115, i64 4
  %116 = load i8, ptr %arrayidx136, align 1
  %conv137 = zext i8 %116 to i32
  store i32 %conv137, ptr %Y135, align 4
  %117 = load ptr, ptr %clamptab, align 8
  %118 = load ptr, ptr %Crrtab, align 8
  %119 = load i32, ptr %Cr, align 4
  %idxprom138 = sext i32 %119 to i64
  %arrayidx139 = getelementptr inbounds i32, ptr %118, i64 %idxprom138
  %120 = load i32, ptr %arrayidx139, align 4
  %add140 = add nsw i32 %120, %conv137
  %idxprom141 = sext i32 %add140 to i64
  %arrayidx142 = getelementptr inbounds i8, ptr %117, i64 %idxprom141
  %121 = load i8, ptr %arrayidx142, align 1
  %conv143 = zext i8 %121 to i64
  %122 = load ptr, ptr %clamptab, align 8
  %123 = load i32, ptr %Y135, align 4
  %124 = load ptr, ptr %Cbgtab, align 8
  %125 = load i32, ptr %Cb, align 4
  %idxprom144 = sext i32 %125 to i64
  %arrayidx145 = getelementptr inbounds i64, ptr %124, i64 %idxprom144
  %126 = load i64, ptr %arrayidx145, align 8
  %127 = load ptr, ptr %Crgtab, align 8
  %128 = load i32, ptr %Cr, align 4
  %idxprom146 = sext i32 %128 to i64
  %arrayidx147 = getelementptr inbounds i64, ptr %127, i64 %idxprom146
  %129 = load i64, ptr %arrayidx147, align 8
  %add148 = add nsw i64 %126, %129
  %130 = lshr i64 %add148, 16
  %conv150 = trunc i64 %130 to i32
  %add151 = add nsw i32 %123, %conv150
  %idxprom152 = sext i32 %add151 to i64
  %arrayidx153 = getelementptr inbounds i8, ptr %122, i64 %idxprom152
  %131 = load i8, ptr %arrayidx153, align 1
  %conv154 = zext i8 %131 to i64
  %shl155 = shl nuw nsw i64 %conv154, 8
  %or156 = or i64 %shl155, %conv143
  %132 = load ptr, ptr %clamptab, align 8
  %133 = load i32, ptr %Y135, align 4
  %134 = load ptr, ptr %Cbbtab, align 8
  %135 = load i32, ptr %Cb, align 4
  %idxprom157 = sext i32 %135 to i64
  %arrayidx158 = getelementptr inbounds i32, ptr %134, i64 %idxprom157
  %136 = load i32, ptr %arrayidx158, align 4
  %add159 = add nsw i32 %133, %136
  %idxprom160 = sext i32 %add159 to i64
  %arrayidx161 = getelementptr inbounds i8, ptr %132, i64 %idxprom160
  %137 = load i8, ptr %arrayidx161, align 1
  %conv162 = zext i8 %137 to i64
  %shl163 = shl nuw nsw i64 %conv162, 16
  %or164 = or i64 %or156, %shl163
  %or165 = or i64 %or164, 4278190080
  %138 = load ptr, ptr %cp1, align 8
  store i64 %or165, ptr %138, align 8
  %139 = load ptr, ptr %pp.addr, align 8
  %arrayidx168 = getelementptr inbounds i8, ptr %139, i64 5
  %140 = load i8, ptr %arrayidx168, align 1
  %conv169 = zext i8 %140 to i32
  store i32 %conv169, ptr %Y167, align 4
  %141 = load ptr, ptr %clamptab, align 8
  %142 = load ptr, ptr %Crrtab, align 8
  %143 = load i32, ptr %Cr, align 4
  %idxprom170 = sext i32 %143 to i64
  %arrayidx171 = getelementptr inbounds i32, ptr %142, i64 %idxprom170
  %144 = load i32, ptr %arrayidx171, align 4
  %add172 = add nsw i32 %144, %conv169
  %idxprom173 = sext i32 %add172 to i64
  %arrayidx174 = getelementptr inbounds i8, ptr %141, i64 %idxprom173
  %145 = load i8, ptr %arrayidx174, align 1
  %conv175 = zext i8 %145 to i64
  %146 = load ptr, ptr %clamptab, align 8
  %147 = load i32, ptr %Y167, align 4
  %148 = load ptr, ptr %Cbgtab, align 8
  %149 = load i32, ptr %Cb, align 4
  %idxprom176 = sext i32 %149 to i64
  %arrayidx177 = getelementptr inbounds i64, ptr %148, i64 %idxprom176
  %150 = load i64, ptr %arrayidx177, align 8
  %151 = load ptr, ptr %Crgtab, align 8
  %152 = load i32, ptr %Cr, align 4
  %idxprom178 = sext i32 %152 to i64
  %arrayidx179 = getelementptr inbounds i64, ptr %151, i64 %idxprom178
  %153 = load i64, ptr %arrayidx179, align 8
  %add180 = add nsw i64 %150, %153
  %154 = lshr i64 %add180, 16
  %conv182 = trunc i64 %154 to i32
  %add183 = add nsw i32 %147, %conv182
  %idxprom184 = sext i32 %add183 to i64
  %arrayidx185 = getelementptr inbounds i8, ptr %146, i64 %idxprom184
  %155 = load i8, ptr %arrayidx185, align 1
  %conv186 = zext i8 %155 to i64
  %shl187 = shl nuw nsw i64 %conv186, 8
  %or188 = or i64 %shl187, %conv175
  %156 = load ptr, ptr %clamptab, align 8
  %157 = load i32, ptr %Y167, align 4
  %158 = load ptr, ptr %Cbbtab, align 8
  %159 = load i32, ptr %Cb, align 4
  %idxprom189 = sext i32 %159 to i64
  %arrayidx190 = getelementptr inbounds i32, ptr %158, i64 %idxprom189
  %160 = load i32, ptr %arrayidx190, align 4
  %add191 = add nsw i32 %157, %160
  %idxprom192 = sext i32 %add191 to i64
  %arrayidx193 = getelementptr inbounds i8, ptr %156, i64 %idxprom192
  %161 = load i8, ptr %arrayidx193, align 1
  %conv194 = zext i8 %161 to i64
  %shl195 = shl nuw nsw i64 %conv194, 16
  %or196 = or i64 %or188, %shl195
  %or197 = or i64 %or196, 4278190080
  %162 = load ptr, ptr %cp1, align 8
  %arrayidx198 = getelementptr inbounds i64, ptr %162, i64 1
  store i64 %or197, ptr %arrayidx198, align 8
  %163 = load ptr, ptr %pp.addr, align 8
  %arrayidx200 = getelementptr inbounds i8, ptr %163, i64 6
  %164 = load i8, ptr %arrayidx200, align 1
  %conv201 = zext i8 %164 to i32
  store i32 %conv201, ptr %Y199, align 4
  %165 = load ptr, ptr %clamptab, align 8
  %166 = load ptr, ptr %Crrtab, align 8
  %167 = load i32, ptr %Cr, align 4
  %idxprom202 = sext i32 %167 to i64
  %arrayidx203 = getelementptr inbounds i32, ptr %166, i64 %idxprom202
  %168 = load i32, ptr %arrayidx203, align 4
  %add204 = add nsw i32 %168, %conv201
  %idxprom205 = sext i32 %add204 to i64
  %arrayidx206 = getelementptr inbounds i8, ptr %165, i64 %idxprom205
  %169 = load i8, ptr %arrayidx206, align 1
  %conv207 = zext i8 %169 to i64
  %170 = load ptr, ptr %clamptab, align 8
  %171 = load i32, ptr %Y199, align 4
  %172 = load ptr, ptr %Cbgtab, align 8
  %173 = load i32, ptr %Cb, align 4
  %idxprom208 = sext i32 %173 to i64
  %arrayidx209 = getelementptr inbounds i64, ptr %172, i64 %idxprom208
  %174 = load i64, ptr %arrayidx209, align 8
  %175 = load ptr, ptr %Crgtab, align 8
  %176 = load i32, ptr %Cr, align 4
  %idxprom210 = sext i32 %176 to i64
  %arrayidx211 = getelementptr inbounds i64, ptr %175, i64 %idxprom210
  %177 = load i64, ptr %arrayidx211, align 8
  %add212 = add nsw i64 %174, %177
  %178 = lshr i64 %add212, 16
  %conv214 = trunc i64 %178 to i32
  %add215 = add nsw i32 %171, %conv214
  %idxprom216 = sext i32 %add215 to i64
  %arrayidx217 = getelementptr inbounds i8, ptr %170, i64 %idxprom216
  %179 = load i8, ptr %arrayidx217, align 1
  %conv218 = zext i8 %179 to i64
  %shl219 = shl nuw nsw i64 %conv218, 8
  %or220 = or i64 %shl219, %conv207
  %180 = load ptr, ptr %clamptab, align 8
  %181 = load i32, ptr %Y199, align 4
  %182 = load ptr, ptr %Cbbtab, align 8
  %183 = load i32, ptr %Cb, align 4
  %idxprom221 = sext i32 %183 to i64
  %arrayidx222 = getelementptr inbounds i32, ptr %182, i64 %idxprom221
  %184 = load i32, ptr %arrayidx222, align 4
  %add223 = add nsw i32 %181, %184
  %idxprom224 = sext i32 %add223 to i64
  %arrayidx225 = getelementptr inbounds i8, ptr %180, i64 %idxprom224
  %185 = load i8, ptr %arrayidx225, align 1
  %conv226 = zext i8 %185 to i64
  %shl227 = shl nuw nsw i64 %conv226, 16
  %or228 = or i64 %or220, %shl227
  %or229 = or i64 %or228, 4278190080
  %186 = load ptr, ptr %cp1, align 8
  %arrayidx230 = getelementptr inbounds i64, ptr %186, i64 2
  store i64 %or229, ptr %arrayidx230, align 8
  %187 = load ptr, ptr %pp.addr, align 8
  %arrayidx232 = getelementptr inbounds i8, ptr %187, i64 7
  %188 = load i8, ptr %arrayidx232, align 1
  %conv233 = zext i8 %188 to i32
  store i32 %conv233, ptr %Y231, align 4
  %189 = load ptr, ptr %clamptab, align 8
  %190 = load ptr, ptr %Crrtab, align 8
  %191 = load i32, ptr %Cr, align 4
  %idxprom234 = sext i32 %191 to i64
  %arrayidx235 = getelementptr inbounds i32, ptr %190, i64 %idxprom234
  %192 = load i32, ptr %arrayidx235, align 4
  %add236 = add nsw i32 %192, %conv233
  %idxprom237 = sext i32 %add236 to i64
  %arrayidx238 = getelementptr inbounds i8, ptr %189, i64 %idxprom237
  %193 = load i8, ptr %arrayidx238, align 1
  %conv239 = zext i8 %193 to i64
  %194 = load ptr, ptr %clamptab, align 8
  %195 = load i32, ptr %Y231, align 4
  %196 = load ptr, ptr %Cbgtab, align 8
  %197 = load i32, ptr %Cb, align 4
  %idxprom240 = sext i32 %197 to i64
  %arrayidx241 = getelementptr inbounds i64, ptr %196, i64 %idxprom240
  %198 = load i64, ptr %arrayidx241, align 8
  %199 = load ptr, ptr %Crgtab, align 8
  %200 = load i32, ptr %Cr, align 4
  %idxprom242 = sext i32 %200 to i64
  %arrayidx243 = getelementptr inbounds i64, ptr %199, i64 %idxprom242
  %201 = load i64, ptr %arrayidx243, align 8
  %add244 = add nsw i64 %198, %201
  %202 = lshr i64 %add244, 16
  %conv246 = trunc i64 %202 to i32
  %add247 = add nsw i32 %195, %conv246
  %idxprom248 = sext i32 %add247 to i64
  %arrayidx249 = getelementptr inbounds i8, ptr %194, i64 %idxprom248
  %203 = load i8, ptr %arrayidx249, align 1
  %conv250 = zext i8 %203 to i64
  %shl251 = shl nuw nsw i64 %conv250, 8
  %or252 = or i64 %shl251, %conv239
  %204 = load ptr, ptr %clamptab, align 8
  %205 = load i32, ptr %Y231, align 4
  %206 = load ptr, ptr %Cbbtab, align 8
  %207 = load i32, ptr %Cb, align 4
  %idxprom253 = sext i32 %207 to i64
  %arrayidx254 = getelementptr inbounds i32, ptr %206, i64 %idxprom253
  %208 = load i32, ptr %arrayidx254, align 4
  %add255 = add nsw i32 %205, %208
  %idxprom256 = sext i32 %add255 to i64
  %arrayidx257 = getelementptr inbounds i8, ptr %204, i64 %idxprom256
  %209 = load i8, ptr %arrayidx257, align 1
  %conv258 = zext i8 %209 to i64
  %shl259 = shl nuw nsw i64 %conv258, 16
  %or260 = or i64 %or252, %shl259
  %or261 = or i64 %or260, 4278190080
  %210 = load ptr, ptr %cp1, align 8
  %arrayidx262 = getelementptr inbounds i64, ptr %210, i64 3
  store i64 %or261, ptr %arrayidx262, align 8
  %211 = load ptr, ptr %pp.addr, align 8
  %arrayidx264 = getelementptr inbounds i8, ptr %211, i64 8
  %212 = load i8, ptr %arrayidx264, align 1
  %conv265 = zext i8 %212 to i32
  store i32 %conv265, ptr %Y263, align 4
  %213 = load ptr, ptr %clamptab, align 8
  %214 = load ptr, ptr %Crrtab, align 8
  %215 = load i32, ptr %Cr, align 4
  %idxprom266 = sext i32 %215 to i64
  %arrayidx267 = getelementptr inbounds i32, ptr %214, i64 %idxprom266
  %216 = load i32, ptr %arrayidx267, align 4
  %add268 = add nsw i32 %216, %conv265
  %idxprom269 = sext i32 %add268 to i64
  %arrayidx270 = getelementptr inbounds i8, ptr %213, i64 %idxprom269
  %217 = load i8, ptr %arrayidx270, align 1
  %conv271 = zext i8 %217 to i64
  %218 = load ptr, ptr %clamptab, align 8
  %219 = load i32, ptr %Y263, align 4
  %220 = load ptr, ptr %Cbgtab, align 8
  %221 = load i32, ptr %Cb, align 4
  %idxprom272 = sext i32 %221 to i64
  %arrayidx273 = getelementptr inbounds i64, ptr %220, i64 %idxprom272
  %222 = load i64, ptr %arrayidx273, align 8
  %223 = load ptr, ptr %Crgtab, align 8
  %224 = load i32, ptr %Cr, align 4
  %idxprom274 = sext i32 %224 to i64
  %arrayidx275 = getelementptr inbounds i64, ptr %223, i64 %idxprom274
  %225 = load i64, ptr %arrayidx275, align 8
  %add276 = add nsw i64 %222, %225
  %226 = lshr i64 %add276, 16
  %conv278 = trunc i64 %226 to i32
  %add279 = add nsw i32 %219, %conv278
  %idxprom280 = sext i32 %add279 to i64
  %arrayidx281 = getelementptr inbounds i8, ptr %218, i64 %idxprom280
  %227 = load i8, ptr %arrayidx281, align 1
  %conv282 = zext i8 %227 to i64
  %shl283 = shl nuw nsw i64 %conv282, 8
  %or284 = or i64 %shl283, %conv271
  %228 = load ptr, ptr %clamptab, align 8
  %229 = load i32, ptr %Y263, align 4
  %230 = load ptr, ptr %Cbbtab, align 8
  %231 = load i32, ptr %Cb, align 4
  %idxprom285 = sext i32 %231 to i64
  %arrayidx286 = getelementptr inbounds i32, ptr %230, i64 %idxprom285
  %232 = load i32, ptr %arrayidx286, align 4
  %add287 = add nsw i32 %229, %232
  %idxprom288 = sext i32 %add287 to i64
  %arrayidx289 = getelementptr inbounds i8, ptr %228, i64 %idxprom288
  %233 = load i8, ptr %arrayidx289, align 1
  %conv290 = zext i8 %233 to i64
  %shl291 = shl nuw nsw i64 %conv290, 16
  %or292 = or i64 %or284, %shl291
  %or293 = or i64 %or292, 4278190080
  %234 = load ptr, ptr %cp2, align 8
  store i64 %or293, ptr %234, align 8
  %235 = load ptr, ptr %pp.addr, align 8
  %arrayidx296 = getelementptr inbounds i8, ptr %235, i64 9
  %236 = load i8, ptr %arrayidx296, align 1
  %conv297 = zext i8 %236 to i32
  store i32 %conv297, ptr %Y295, align 4
  %237 = load ptr, ptr %clamptab, align 8
  %238 = load ptr, ptr %Crrtab, align 8
  %239 = load i32, ptr %Cr, align 4
  %idxprom298 = sext i32 %239 to i64
  %arrayidx299 = getelementptr inbounds i32, ptr %238, i64 %idxprom298
  %240 = load i32, ptr %arrayidx299, align 4
  %add300 = add nsw i32 %240, %conv297
  %idxprom301 = sext i32 %add300 to i64
  %arrayidx302 = getelementptr inbounds i8, ptr %237, i64 %idxprom301
  %241 = load i8, ptr %arrayidx302, align 1
  %conv303 = zext i8 %241 to i64
  %242 = load ptr, ptr %clamptab, align 8
  %243 = load i32, ptr %Y295, align 4
  %244 = load ptr, ptr %Cbgtab, align 8
  %245 = load i32, ptr %Cb, align 4
  %idxprom304 = sext i32 %245 to i64
  %arrayidx305 = getelementptr inbounds i64, ptr %244, i64 %idxprom304
  %246 = load i64, ptr %arrayidx305, align 8
  %247 = load ptr, ptr %Crgtab, align 8
  %248 = load i32, ptr %Cr, align 4
  %idxprom306 = sext i32 %248 to i64
  %arrayidx307 = getelementptr inbounds i64, ptr %247, i64 %idxprom306
  %249 = load i64, ptr %arrayidx307, align 8
  %add308 = add nsw i64 %246, %249
  %250 = lshr i64 %add308, 16
  %conv310 = trunc i64 %250 to i32
  %add311 = add nsw i32 %243, %conv310
  %idxprom312 = sext i32 %add311 to i64
  %arrayidx313 = getelementptr inbounds i8, ptr %242, i64 %idxprom312
  %251 = load i8, ptr %arrayidx313, align 1
  %conv314 = zext i8 %251 to i64
  %shl315 = shl nuw nsw i64 %conv314, 8
  %or316 = or i64 %shl315, %conv303
  %252 = load ptr, ptr %clamptab, align 8
  %253 = load i32, ptr %Y295, align 4
  %254 = load ptr, ptr %Cbbtab, align 8
  %255 = load i32, ptr %Cb, align 4
  %idxprom317 = sext i32 %255 to i64
  %arrayidx318 = getelementptr inbounds i32, ptr %254, i64 %idxprom317
  %256 = load i32, ptr %arrayidx318, align 4
  %add319 = add nsw i32 %253, %256
  %idxprom320 = sext i32 %add319 to i64
  %arrayidx321 = getelementptr inbounds i8, ptr %252, i64 %idxprom320
  %257 = load i8, ptr %arrayidx321, align 1
  %conv322 = zext i8 %257 to i64
  %shl323 = shl nuw nsw i64 %conv322, 16
  %or324 = or i64 %or316, %shl323
  %or325 = or i64 %or324, 4278190080
  %258 = load ptr, ptr %cp2, align 8
  %arrayidx326 = getelementptr inbounds i64, ptr %258, i64 1
  store i64 %or325, ptr %arrayidx326, align 8
  %259 = load ptr, ptr %pp.addr, align 8
  %arrayidx328 = getelementptr inbounds i8, ptr %259, i64 10
  %260 = load i8, ptr %arrayidx328, align 1
  %conv329 = zext i8 %260 to i32
  store i32 %conv329, ptr %Y327, align 4
  %261 = load ptr, ptr %clamptab, align 8
  %262 = load ptr, ptr %Crrtab, align 8
  %263 = load i32, ptr %Cr, align 4
  %idxprom330 = sext i32 %263 to i64
  %arrayidx331 = getelementptr inbounds i32, ptr %262, i64 %idxprom330
  %264 = load i32, ptr %arrayidx331, align 4
  %add332 = add nsw i32 %264, %conv329
  %idxprom333 = sext i32 %add332 to i64
  %arrayidx334 = getelementptr inbounds i8, ptr %261, i64 %idxprom333
  %265 = load i8, ptr %arrayidx334, align 1
  %conv335 = zext i8 %265 to i64
  %266 = load ptr, ptr %clamptab, align 8
  %267 = load i32, ptr %Y327, align 4
  %268 = load ptr, ptr %Cbgtab, align 8
  %269 = load i32, ptr %Cb, align 4
  %idxprom336 = sext i32 %269 to i64
  %arrayidx337 = getelementptr inbounds i64, ptr %268, i64 %idxprom336
  %270 = load i64, ptr %arrayidx337, align 8
  %271 = load ptr, ptr %Crgtab, align 8
  %272 = load i32, ptr %Cr, align 4
  %idxprom338 = sext i32 %272 to i64
  %arrayidx339 = getelementptr inbounds i64, ptr %271, i64 %idxprom338
  %273 = load i64, ptr %arrayidx339, align 8
  %add340 = add nsw i64 %270, %273
  %274 = lshr i64 %add340, 16
  %conv342 = trunc i64 %274 to i32
  %add343 = add nsw i32 %267, %conv342
  %idxprom344 = sext i32 %add343 to i64
  %arrayidx345 = getelementptr inbounds i8, ptr %266, i64 %idxprom344
  %275 = load i8, ptr %arrayidx345, align 1
  %conv346 = zext i8 %275 to i64
  %shl347 = shl nuw nsw i64 %conv346, 8
  %or348 = or i64 %shl347, %conv335
  %276 = load ptr, ptr %clamptab, align 8
  %277 = load i32, ptr %Y327, align 4
  %278 = load ptr, ptr %Cbbtab, align 8
  %279 = load i32, ptr %Cb, align 4
  %idxprom349 = sext i32 %279 to i64
  %arrayidx350 = getelementptr inbounds i32, ptr %278, i64 %idxprom349
  %280 = load i32, ptr %arrayidx350, align 4
  %add351 = add nsw i32 %277, %280
  %idxprom352 = sext i32 %add351 to i64
  %arrayidx353 = getelementptr inbounds i8, ptr %276, i64 %idxprom352
  %281 = load i8, ptr %arrayidx353, align 1
  %conv354 = zext i8 %281 to i64
  %shl355 = shl nuw nsw i64 %conv354, 16
  %or356 = or i64 %or348, %shl355
  %or357 = or i64 %or356, 4278190080
  %282 = load ptr, ptr %cp2, align 8
  %arrayidx358 = getelementptr inbounds i64, ptr %282, i64 2
  store i64 %or357, ptr %arrayidx358, align 8
  %283 = load ptr, ptr %pp.addr, align 8
  %arrayidx360 = getelementptr inbounds i8, ptr %283, i64 11
  %284 = load i8, ptr %arrayidx360, align 1
  %conv361 = zext i8 %284 to i32
  store i32 %conv361, ptr %Y359, align 4
  %285 = load ptr, ptr %clamptab, align 8
  %286 = load ptr, ptr %Crrtab, align 8
  %287 = load i32, ptr %Cr, align 4
  %idxprom362 = sext i32 %287 to i64
  %arrayidx363 = getelementptr inbounds i32, ptr %286, i64 %idxprom362
  %288 = load i32, ptr %arrayidx363, align 4
  %add364 = add nsw i32 %288, %conv361
  %idxprom365 = sext i32 %add364 to i64
  %arrayidx366 = getelementptr inbounds i8, ptr %285, i64 %idxprom365
  %289 = load i8, ptr %arrayidx366, align 1
  %conv367 = zext i8 %289 to i64
  %290 = load ptr, ptr %clamptab, align 8
  %291 = load i32, ptr %Y359, align 4
  %292 = load ptr, ptr %Cbgtab, align 8
  %293 = load i32, ptr %Cb, align 4
  %idxprom368 = sext i32 %293 to i64
  %arrayidx369 = getelementptr inbounds i64, ptr %292, i64 %idxprom368
  %294 = load i64, ptr %arrayidx369, align 8
  %295 = load ptr, ptr %Crgtab, align 8
  %296 = load i32, ptr %Cr, align 4
  %idxprom370 = sext i32 %296 to i64
  %arrayidx371 = getelementptr inbounds i64, ptr %295, i64 %idxprom370
  %297 = load i64, ptr %arrayidx371, align 8
  %add372 = add nsw i64 %294, %297
  %298 = lshr i64 %add372, 16
  %conv374 = trunc i64 %298 to i32
  %add375 = add nsw i32 %291, %conv374
  %idxprom376 = sext i32 %add375 to i64
  %arrayidx377 = getelementptr inbounds i8, ptr %290, i64 %idxprom376
  %299 = load i8, ptr %arrayidx377, align 1
  %conv378 = zext i8 %299 to i64
  %shl379 = shl nuw nsw i64 %conv378, 8
  %or380 = or i64 %shl379, %conv367
  %300 = load ptr, ptr %clamptab, align 8
  %301 = load i32, ptr %Y359, align 4
  %302 = load ptr, ptr %Cbbtab, align 8
  %303 = load i32, ptr %Cb, align 4
  %idxprom381 = sext i32 %303 to i64
  %arrayidx382 = getelementptr inbounds i32, ptr %302, i64 %idxprom381
  %304 = load i32, ptr %arrayidx382, align 4
  %add383 = add nsw i32 %301, %304
  %idxprom384 = sext i32 %add383 to i64
  %arrayidx385 = getelementptr inbounds i8, ptr %300, i64 %idxprom384
  %305 = load i8, ptr %arrayidx385, align 1
  %conv386 = zext i8 %305 to i64
  %shl387 = shl nuw nsw i64 %conv386, 16
  %or388 = or i64 %or380, %shl387
  %or389 = or i64 %or388, 4278190080
  %306 = load ptr, ptr %cp2, align 8
  %arrayidx390 = getelementptr inbounds i64, ptr %306, i64 3
  store i64 %or389, ptr %arrayidx390, align 8
  %307 = load ptr, ptr %pp.addr, align 8
  %arrayidx392 = getelementptr inbounds i8, ptr %307, i64 12
  %308 = load i8, ptr %arrayidx392, align 1
  %conv393 = zext i8 %308 to i32
  store i32 %conv393, ptr %Y391, align 4
  %309 = load ptr, ptr %clamptab, align 8
  %310 = load ptr, ptr %Crrtab, align 8
  %311 = load i32, ptr %Cr, align 4
  %idxprom394 = sext i32 %311 to i64
  %arrayidx395 = getelementptr inbounds i32, ptr %310, i64 %idxprom394
  %312 = load i32, ptr %arrayidx395, align 4
  %add396 = add nsw i32 %312, %conv393
  %idxprom397 = sext i32 %add396 to i64
  %arrayidx398 = getelementptr inbounds i8, ptr %309, i64 %idxprom397
  %313 = load i8, ptr %arrayidx398, align 1
  %conv399 = zext i8 %313 to i64
  %314 = load ptr, ptr %clamptab, align 8
  %315 = load i32, ptr %Y391, align 4
  %316 = load ptr, ptr %Cbgtab, align 8
  %317 = load i32, ptr %Cb, align 4
  %idxprom400 = sext i32 %317 to i64
  %arrayidx401 = getelementptr inbounds i64, ptr %316, i64 %idxprom400
  %318 = load i64, ptr %arrayidx401, align 8
  %319 = load ptr, ptr %Crgtab, align 8
  %320 = load i32, ptr %Cr, align 4
  %idxprom402 = sext i32 %320 to i64
  %arrayidx403 = getelementptr inbounds i64, ptr %319, i64 %idxprom402
  %321 = load i64, ptr %arrayidx403, align 8
  %add404 = add nsw i64 %318, %321
  %322 = lshr i64 %add404, 16
  %conv406 = trunc i64 %322 to i32
  %add407 = add nsw i32 %315, %conv406
  %idxprom408 = sext i32 %add407 to i64
  %arrayidx409 = getelementptr inbounds i8, ptr %314, i64 %idxprom408
  %323 = load i8, ptr %arrayidx409, align 1
  %conv410 = zext i8 %323 to i64
  %shl411 = shl nuw nsw i64 %conv410, 8
  %or412 = or i64 %shl411, %conv399
  %324 = load ptr, ptr %clamptab, align 8
  %325 = load i32, ptr %Y391, align 4
  %326 = load ptr, ptr %Cbbtab, align 8
  %327 = load i32, ptr %Cb, align 4
  %idxprom413 = sext i32 %327 to i64
  %arrayidx414 = getelementptr inbounds i32, ptr %326, i64 %idxprom413
  %328 = load i32, ptr %arrayidx414, align 4
  %add415 = add nsw i32 %325, %328
  %idxprom416 = sext i32 %add415 to i64
  %arrayidx417 = getelementptr inbounds i8, ptr %324, i64 %idxprom416
  %329 = load i8, ptr %arrayidx417, align 1
  %conv418 = zext i8 %329 to i64
  %shl419 = shl nuw nsw i64 %conv418, 16
  %or420 = or i64 %or412, %shl419
  %or421 = or i64 %or420, 4278190080
  %330 = load ptr, ptr %cp3, align 8
  store i64 %or421, ptr %330, align 8
  %331 = load ptr, ptr %pp.addr, align 8
  %arrayidx424 = getelementptr inbounds i8, ptr %331, i64 13
  %332 = load i8, ptr %arrayidx424, align 1
  %conv425 = zext i8 %332 to i32
  store i32 %conv425, ptr %Y423, align 4
  %333 = load ptr, ptr %clamptab, align 8
  %334 = load ptr, ptr %Crrtab, align 8
  %335 = load i32, ptr %Cr, align 4
  %idxprom426 = sext i32 %335 to i64
  %arrayidx427 = getelementptr inbounds i32, ptr %334, i64 %idxprom426
  %336 = load i32, ptr %arrayidx427, align 4
  %add428 = add nsw i32 %336, %conv425
  %idxprom429 = sext i32 %add428 to i64
  %arrayidx430 = getelementptr inbounds i8, ptr %333, i64 %idxprom429
  %337 = load i8, ptr %arrayidx430, align 1
  %conv431 = zext i8 %337 to i64
  %338 = load ptr, ptr %clamptab, align 8
  %339 = load i32, ptr %Y423, align 4
  %340 = load ptr, ptr %Cbgtab, align 8
  %341 = load i32, ptr %Cb, align 4
  %idxprom432 = sext i32 %341 to i64
  %arrayidx433 = getelementptr inbounds i64, ptr %340, i64 %idxprom432
  %342 = load i64, ptr %arrayidx433, align 8
  %343 = load ptr, ptr %Crgtab, align 8
  %344 = load i32, ptr %Cr, align 4
  %idxprom434 = sext i32 %344 to i64
  %arrayidx435 = getelementptr inbounds i64, ptr %343, i64 %idxprom434
  %345 = load i64, ptr %arrayidx435, align 8
  %add436 = add nsw i64 %342, %345
  %346 = lshr i64 %add436, 16
  %conv438 = trunc i64 %346 to i32
  %add439 = add nsw i32 %339, %conv438
  %idxprom440 = sext i32 %add439 to i64
  %arrayidx441 = getelementptr inbounds i8, ptr %338, i64 %idxprom440
  %347 = load i8, ptr %arrayidx441, align 1
  %conv442 = zext i8 %347 to i64
  %shl443 = shl nuw nsw i64 %conv442, 8
  %or444 = or i64 %shl443, %conv431
  %348 = load ptr, ptr %clamptab, align 8
  %349 = load i32, ptr %Y423, align 4
  %350 = load ptr, ptr %Cbbtab, align 8
  %351 = load i32, ptr %Cb, align 4
  %idxprom445 = sext i32 %351 to i64
  %arrayidx446 = getelementptr inbounds i32, ptr %350, i64 %idxprom445
  %352 = load i32, ptr %arrayidx446, align 4
  %add447 = add nsw i32 %349, %352
  %idxprom448 = sext i32 %add447 to i64
  %arrayidx449 = getelementptr inbounds i8, ptr %348, i64 %idxprom448
  %353 = load i8, ptr %arrayidx449, align 1
  %conv450 = zext i8 %353 to i64
  %shl451 = shl nuw nsw i64 %conv450, 16
  %or452 = or i64 %or444, %shl451
  %or453 = or i64 %or452, 4278190080
  %354 = load ptr, ptr %cp3, align 8
  %arrayidx454 = getelementptr inbounds i64, ptr %354, i64 1
  store i64 %or453, ptr %arrayidx454, align 8
  %355 = load ptr, ptr %pp.addr, align 8
  %arrayidx456 = getelementptr inbounds i8, ptr %355, i64 14
  %356 = load i8, ptr %arrayidx456, align 1
  %conv457 = zext i8 %356 to i32
  store i32 %conv457, ptr %Y455, align 4
  %357 = load ptr, ptr %clamptab, align 8
  %358 = load ptr, ptr %Crrtab, align 8
  %359 = load i32, ptr %Cr, align 4
  %idxprom458 = sext i32 %359 to i64
  %arrayidx459 = getelementptr inbounds i32, ptr %358, i64 %idxprom458
  %360 = load i32, ptr %arrayidx459, align 4
  %add460 = add nsw i32 %360, %conv457
  %idxprom461 = sext i32 %add460 to i64
  %arrayidx462 = getelementptr inbounds i8, ptr %357, i64 %idxprom461
  %361 = load i8, ptr %arrayidx462, align 1
  %conv463 = zext i8 %361 to i64
  %362 = load ptr, ptr %clamptab, align 8
  %363 = load i32, ptr %Y455, align 4
  %364 = load ptr, ptr %Cbgtab, align 8
  %365 = load i32, ptr %Cb, align 4
  %idxprom464 = sext i32 %365 to i64
  %arrayidx465 = getelementptr inbounds i64, ptr %364, i64 %idxprom464
  %366 = load i64, ptr %arrayidx465, align 8
  %367 = load ptr, ptr %Crgtab, align 8
  %368 = load i32, ptr %Cr, align 4
  %idxprom466 = sext i32 %368 to i64
  %arrayidx467 = getelementptr inbounds i64, ptr %367, i64 %idxprom466
  %369 = load i64, ptr %arrayidx467, align 8
  %add468 = add nsw i64 %366, %369
  %370 = lshr i64 %add468, 16
  %conv470 = trunc i64 %370 to i32
  %add471 = add nsw i32 %363, %conv470
  %idxprom472 = sext i32 %add471 to i64
  %arrayidx473 = getelementptr inbounds i8, ptr %362, i64 %idxprom472
  %371 = load i8, ptr %arrayidx473, align 1
  %conv474 = zext i8 %371 to i64
  %shl475 = shl nuw nsw i64 %conv474, 8
  %or476 = or i64 %shl475, %conv463
  %372 = load ptr, ptr %clamptab, align 8
  %373 = load i32, ptr %Y455, align 4
  %374 = load ptr, ptr %Cbbtab, align 8
  %375 = load i32, ptr %Cb, align 4
  %idxprom477 = sext i32 %375 to i64
  %arrayidx478 = getelementptr inbounds i32, ptr %374, i64 %idxprom477
  %376 = load i32, ptr %arrayidx478, align 4
  %add479 = add nsw i32 %373, %376
  %idxprom480 = sext i32 %add479 to i64
  %arrayidx481 = getelementptr inbounds i8, ptr %372, i64 %idxprom480
  %377 = load i8, ptr %arrayidx481, align 1
  %conv482 = zext i8 %377 to i64
  %shl483 = shl nuw nsw i64 %conv482, 16
  %or484 = or i64 %or476, %shl483
  %or485 = or i64 %or484, 4278190080
  %378 = load ptr, ptr %cp3, align 8
  %arrayidx486 = getelementptr inbounds i64, ptr %378, i64 2
  store i64 %or485, ptr %arrayidx486, align 8
  %379 = load ptr, ptr %pp.addr, align 8
  %arrayidx488 = getelementptr inbounds i8, ptr %379, i64 15
  %380 = load i8, ptr %arrayidx488, align 1
  %conv489 = zext i8 %380 to i32
  store i32 %conv489, ptr %Y487, align 4
  %381 = load ptr, ptr %clamptab, align 8
  %382 = load ptr, ptr %Crrtab, align 8
  %383 = load i32, ptr %Cr, align 4
  %idxprom490 = sext i32 %383 to i64
  %arrayidx491 = getelementptr inbounds i32, ptr %382, i64 %idxprom490
  %384 = load i32, ptr %arrayidx491, align 4
  %add492 = add nsw i32 %384, %conv489
  %idxprom493 = sext i32 %add492 to i64
  %arrayidx494 = getelementptr inbounds i8, ptr %381, i64 %idxprom493
  %385 = load i8, ptr %arrayidx494, align 1
  %conv495 = zext i8 %385 to i64
  %386 = load ptr, ptr %clamptab, align 8
  %387 = load i32, ptr %Y487, align 4
  %388 = load ptr, ptr %Cbgtab, align 8
  %389 = load i32, ptr %Cb, align 4
  %idxprom496 = sext i32 %389 to i64
  %arrayidx497 = getelementptr inbounds i64, ptr %388, i64 %idxprom496
  %390 = load i64, ptr %arrayidx497, align 8
  %391 = load ptr, ptr %Crgtab, align 8
  %392 = load i32, ptr %Cr, align 4
  %idxprom498 = sext i32 %392 to i64
  %arrayidx499 = getelementptr inbounds i64, ptr %391, i64 %idxprom498
  %393 = load i64, ptr %arrayidx499, align 8
  %add500 = add nsw i64 %390, %393
  %394 = lshr i64 %add500, 16
  %conv502 = trunc i64 %394 to i32
  %add503 = add nsw i32 %387, %conv502
  %idxprom504 = sext i32 %add503 to i64
  %arrayidx505 = getelementptr inbounds i8, ptr %386, i64 %idxprom504
  %395 = load i8, ptr %arrayidx505, align 1
  %conv506 = zext i8 %395 to i64
  %shl507 = shl nuw nsw i64 %conv506, 8
  %or508 = or i64 %shl507, %conv495
  %396 = load ptr, ptr %clamptab, align 8
  %397 = load i32, ptr %Y487, align 4
  %398 = load ptr, ptr %Cbbtab, align 8
  %399 = load i32, ptr %Cb, align 4
  %idxprom509 = sext i32 %399 to i64
  %arrayidx510 = getelementptr inbounds i32, ptr %398, i64 %idxprom509
  %400 = load i32, ptr %arrayidx510, align 4
  %add511 = add nsw i32 %397, %400
  %idxprom512 = sext i32 %add511 to i64
  %arrayidx513 = getelementptr inbounds i8, ptr %396, i64 %idxprom512
  %401 = load i8, ptr %arrayidx513, align 1
  %conv514 = zext i8 %401 to i64
  %shl515 = shl nuw nsw i64 %conv514, 16
  %or516 = or i64 %or508, %shl515
  %or517 = or i64 %or516, 4278190080
  %402 = load ptr, ptr %cp3, align 8
  %arrayidx518 = getelementptr inbounds i64, ptr %402, i64 3
  store i64 %or517, ptr %arrayidx518, align 8
  %403 = load ptr, ptr %cp.addr, align 8
  %add.ptr519 = getelementptr inbounds i64, ptr %403, i64 4
  store ptr %add.ptr519, ptr %cp.addr, align 8
  %404 = load ptr, ptr %cp1, align 8
  %add.ptr520 = getelementptr inbounds i64, ptr %404, i64 4
  store ptr %add.ptr520, ptr %cp1, align 8
  %405 = load ptr, ptr %cp2, align 8
  %add.ptr521 = getelementptr inbounds i64, ptr %405, i64 4
  store ptr %add.ptr521, ptr %cp2, align 8
  %406 = load ptr, ptr %cp3, align 8
  %add.ptr522 = getelementptr inbounds i64, ptr %406, i64 4
  store ptr %add.ptr522, ptr %cp3, align 8
  %407 = load ptr, ptr %pp.addr, align 8
  %add.ptr523 = getelementptr inbounds i8, ptr %407, i64 18
  store ptr %add.ptr523, ptr %pp.addr, align 8
  %408 = load i64, ptr %x.addr, align 8
  %dec = add i64 %408, -1
  store i64 %dec, ptr %x.addr, align 8
  %tobool.not = icmp eq i64 %dec, 0
  br i1 %tobool.not, label %do.end, label %do.body, !llvm.loop !57

do.end:                                           ; preds = %do.body
  %409 = load i64, ptr %incr, align 8
  %410 = load ptr, ptr %cp.addr, align 8
  %add.ptr524 = getelementptr inbounds i64, ptr %410, i64 %409
  store ptr %add.ptr524, ptr %cp.addr, align 8
  %411 = load ptr, ptr %cp1, align 8
  %add.ptr525 = getelementptr inbounds i64, ptr %411, i64 %409
  store ptr %add.ptr525, ptr %cp1, align 8
  %412 = load i64, ptr %incr, align 8
  %413 = load ptr, ptr %cp2, align 8
  %add.ptr526 = getelementptr inbounds i64, ptr %413, i64 %412
  store ptr %add.ptr526, ptr %cp2, align 8
  %414 = load ptr, ptr %cp3, align 8
  %add.ptr527 = getelementptr inbounds i64, ptr %414, i64 %412
  store ptr %add.ptr527, ptr %cp3, align 8
  %415 = load i64, ptr %fromskew.addr, align 8
  %416 = load ptr, ptr %pp.addr, align 8
  %add.ptr528 = getelementptr inbounds i8, ptr %416, i64 %415
  store ptr %add.ptr528, ptr %pp.addr, align 8
  %417 = load i64, ptr %h.addr, align 8
  %sub = add i64 %417, -4
  store i64 %sub, ptr %h.addr, align 8
  br label %for.cond, !llvm.loop !58

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @putcontig8bitYCbCr42tile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %pp.addr = alloca ptr, align 8
  %ycbcr = alloca ptr, align 8
  %Crrtab = alloca ptr, align 8
  %Cbbtab = alloca ptr, align 8
  %Crgtab = alloca ptr, align 8
  %Cbgtab = alloca ptr, align 8
  %clamptab = alloca ptr, align 8
  %cp1 = alloca ptr, align 8
  %incr = alloca i64, align 8
  %Cb = alloca i32, align 4
  %Cr = alloca i32, align 4
  %Y = alloca i32, align 4
  %Y34 = alloca i32, align 4
  %Y66 = alloca i32, align 4
  %Y98 = alloca i32, align 4
  %Y130 = alloca i32, align 4
  %Y162 = alloca i32, align 4
  %Y194 = alloca i32, align 4
  %Y226 = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %ycbcr1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 18
  %1 = load ptr, ptr %ycbcr1, align 8
  store ptr %1, ptr %ycbcr, align 8
  %Cr_r_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %Cr_r_tab, align 8
  store ptr %2, ptr %Crrtab, align 8
  %Cb_b_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %1, i64 0, i32 2
  %3 = load ptr, ptr %Cb_b_tab, align 8
  store ptr %3, ptr %Cbbtab, align 8
  %4 = load ptr, ptr %ycbcr, align 8
  %Cr_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %4, i64 0, i32 3
  %5 = load ptr, ptr %Cr_g_tab, align 8
  store ptr %5, ptr %Crgtab, align 8
  %Cb_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %Cb_g_tab, align 8
  store ptr %6, ptr %Cbgtab, align 8
  %7 = load ptr, ptr %ycbcr, align 8
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %clamptab, align 8
  %9 = load ptr, ptr %cp.addr, align 8
  %10 = load i64, ptr %w.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %9, i64 %10
  %11 = load i64, ptr %toskew.addr, align 8
  %add.ptr3 = getelementptr inbounds i64, ptr %add.ptr, i64 %11
  store ptr %add.ptr3, ptr %cp1, align 8
  %mul = shl nsw i64 %11, 1
  %add = add i64 %mul, %10
  store i64 %add, ptr %incr, align 8
  br label %for.cond

for.cond:                                         ; preds = %do.end, %entry
  %12 = load i64, ptr %h.addr, align 8
  %cmp = icmp ugt i64 %12, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i64, ptr %w.addr, align 8
  %shr = lshr i64 %13, 2
  store i64 %shr, ptr %x.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.body, %for.body
  %14 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 8
  %15 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %15 to i32
  store i32 %conv, ptr %Cb, align 4
  %arrayidx4 = getelementptr inbounds i8, ptr %14, i64 9
  %16 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %16 to i32
  store i32 %conv5, ptr %Cr, align 4
  %17 = load ptr, ptr %pp.addr, align 8
  %18 = load i8, ptr %17, align 1
  %conv7 = zext i8 %18 to i32
  store i32 %conv7, ptr %Y, align 4
  %19 = load ptr, ptr %clamptab, align 8
  %20 = load ptr, ptr %Crrtab, align 8
  %21 = load i32, ptr %Cr, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %20, i64 %idxprom
  %22 = load i32, ptr %arrayidx8, align 4
  %add9 = add nsw i32 %22, %conv7
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %19, i64 %idxprom10
  %23 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %23 to i64
  %24 = load ptr, ptr %clamptab, align 8
  %25 = load i32, ptr %Y, align 4
  %26 = load ptr, ptr %Cbgtab, align 8
  %27 = load i32, ptr %Cb, align 4
  %idxprom13 = sext i32 %27 to i64
  %arrayidx14 = getelementptr inbounds i64, ptr %26, i64 %idxprom13
  %28 = load i64, ptr %arrayidx14, align 8
  %29 = load ptr, ptr %Crgtab, align 8
  %30 = load i32, ptr %Cr, align 4
  %idxprom15 = sext i32 %30 to i64
  %arrayidx16 = getelementptr inbounds i64, ptr %29, i64 %idxprom15
  %31 = load i64, ptr %arrayidx16, align 8
  %add17 = add nsw i64 %28, %31
  %32 = lshr i64 %add17, 16
  %conv19 = trunc i64 %32 to i32
  %add20 = add nsw i32 %25, %conv19
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %24, i64 %idxprom21
  %33 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %33 to i64
  %shl = shl nuw nsw i64 %conv23, 8
  %or = or i64 %shl, %conv12
  %34 = load ptr, ptr %clamptab, align 8
  %35 = load i32, ptr %Y, align 4
  %36 = load ptr, ptr %Cbbtab, align 8
  %37 = load i32, ptr %Cb, align 4
  %idxprom24 = sext i32 %37 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %36, i64 %idxprom24
  %38 = load i32, ptr %arrayidx25, align 4
  %add26 = add nsw i32 %35, %38
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds i8, ptr %34, i64 %idxprom27
  %39 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %39 to i64
  %shl30 = shl nuw nsw i64 %conv29, 16
  %or31 = or i64 %or, %shl30
  %or32 = or i64 %or31, 4278190080
  %40 = load ptr, ptr %cp.addr, align 8
  store i64 %or32, ptr %40, align 8
  %41 = load ptr, ptr %pp.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %41, i64 1
  %42 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %42 to i32
  store i32 %conv36, ptr %Y34, align 4
  %43 = load ptr, ptr %clamptab, align 8
  %44 = load ptr, ptr %Crrtab, align 8
  %45 = load i32, ptr %Cr, align 4
  %idxprom37 = sext i32 %45 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %44, i64 %idxprom37
  %46 = load i32, ptr %arrayidx38, align 4
  %add39 = add nsw i32 %46, %conv36
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds i8, ptr %43, i64 %idxprom40
  %47 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %47 to i64
  %48 = load ptr, ptr %clamptab, align 8
  %49 = load i32, ptr %Y34, align 4
  %50 = load ptr, ptr %Cbgtab, align 8
  %51 = load i32, ptr %Cb, align 4
  %idxprom43 = sext i32 %51 to i64
  %arrayidx44 = getelementptr inbounds i64, ptr %50, i64 %idxprom43
  %52 = load i64, ptr %arrayidx44, align 8
  %53 = load ptr, ptr %Crgtab, align 8
  %54 = load i32, ptr %Cr, align 4
  %idxprom45 = sext i32 %54 to i64
  %arrayidx46 = getelementptr inbounds i64, ptr %53, i64 %idxprom45
  %55 = load i64, ptr %arrayidx46, align 8
  %add47 = add nsw i64 %52, %55
  %56 = lshr i64 %add47, 16
  %conv49 = trunc i64 %56 to i32
  %add50 = add nsw i32 %49, %conv49
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds i8, ptr %48, i64 %idxprom51
  %57 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %57 to i64
  %shl54 = shl nuw nsw i64 %conv53, 8
  %or55 = or i64 %shl54, %conv42
  %58 = load ptr, ptr %clamptab, align 8
  %59 = load i32, ptr %Y34, align 4
  %60 = load ptr, ptr %Cbbtab, align 8
  %61 = load i32, ptr %Cb, align 4
  %idxprom56 = sext i32 %61 to i64
  %arrayidx57 = getelementptr inbounds i32, ptr %60, i64 %idxprom56
  %62 = load i32, ptr %arrayidx57, align 4
  %add58 = add nsw i32 %59, %62
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds i8, ptr %58, i64 %idxprom59
  %63 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %63 to i64
  %shl62 = shl nuw nsw i64 %conv61, 16
  %or63 = or i64 %or55, %shl62
  %or64 = or i64 %or63, 4278190080
  %64 = load ptr, ptr %cp.addr, align 8
  %arrayidx65 = getelementptr inbounds i64, ptr %64, i64 1
  store i64 %or64, ptr %arrayidx65, align 8
  %65 = load ptr, ptr %pp.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %65, i64 2
  %66 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %66 to i32
  store i32 %conv68, ptr %Y66, align 4
  %67 = load ptr, ptr %clamptab, align 8
  %68 = load ptr, ptr %Crrtab, align 8
  %69 = load i32, ptr %Cr, align 4
  %idxprom69 = sext i32 %69 to i64
  %arrayidx70 = getelementptr inbounds i32, ptr %68, i64 %idxprom69
  %70 = load i32, ptr %arrayidx70, align 4
  %add71 = add nsw i32 %70, %conv68
  %idxprom72 = sext i32 %add71 to i64
  %arrayidx73 = getelementptr inbounds i8, ptr %67, i64 %idxprom72
  %71 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %71 to i64
  %72 = load ptr, ptr %clamptab, align 8
  %73 = load i32, ptr %Y66, align 4
  %74 = load ptr, ptr %Cbgtab, align 8
  %75 = load i32, ptr %Cb, align 4
  %idxprom75 = sext i32 %75 to i64
  %arrayidx76 = getelementptr inbounds i64, ptr %74, i64 %idxprom75
  %76 = load i64, ptr %arrayidx76, align 8
  %77 = load ptr, ptr %Crgtab, align 8
  %78 = load i32, ptr %Cr, align 4
  %idxprom77 = sext i32 %78 to i64
  %arrayidx78 = getelementptr inbounds i64, ptr %77, i64 %idxprom77
  %79 = load i64, ptr %arrayidx78, align 8
  %add79 = add nsw i64 %76, %79
  %80 = lshr i64 %add79, 16
  %conv81 = trunc i64 %80 to i32
  %add82 = add nsw i32 %73, %conv81
  %idxprom83 = sext i32 %add82 to i64
  %arrayidx84 = getelementptr inbounds i8, ptr %72, i64 %idxprom83
  %81 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %81 to i64
  %shl86 = shl nuw nsw i64 %conv85, 8
  %or87 = or i64 %shl86, %conv74
  %82 = load ptr, ptr %clamptab, align 8
  %83 = load i32, ptr %Y66, align 4
  %84 = load ptr, ptr %Cbbtab, align 8
  %85 = load i32, ptr %Cb, align 4
  %idxprom88 = sext i32 %85 to i64
  %arrayidx89 = getelementptr inbounds i32, ptr %84, i64 %idxprom88
  %86 = load i32, ptr %arrayidx89, align 4
  %add90 = add nsw i32 %83, %86
  %idxprom91 = sext i32 %add90 to i64
  %arrayidx92 = getelementptr inbounds i8, ptr %82, i64 %idxprom91
  %87 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %87 to i64
  %shl94 = shl nuw nsw i64 %conv93, 16
  %or95 = or i64 %or87, %shl94
  %or96 = or i64 %or95, 4278190080
  %88 = load ptr, ptr %cp.addr, align 8
  %arrayidx97 = getelementptr inbounds i64, ptr %88, i64 2
  store i64 %or96, ptr %arrayidx97, align 8
  %89 = load ptr, ptr %pp.addr, align 8
  %arrayidx99 = getelementptr inbounds i8, ptr %89, i64 3
  %90 = load i8, ptr %arrayidx99, align 1
  %conv100 = zext i8 %90 to i32
  store i32 %conv100, ptr %Y98, align 4
  %91 = load ptr, ptr %clamptab, align 8
  %92 = load ptr, ptr %Crrtab, align 8
  %93 = load i32, ptr %Cr, align 4
  %idxprom101 = sext i32 %93 to i64
  %arrayidx102 = getelementptr inbounds i32, ptr %92, i64 %idxprom101
  %94 = load i32, ptr %arrayidx102, align 4
  %add103 = add nsw i32 %94, %conv100
  %idxprom104 = sext i32 %add103 to i64
  %arrayidx105 = getelementptr inbounds i8, ptr %91, i64 %idxprom104
  %95 = load i8, ptr %arrayidx105, align 1
  %conv106 = zext i8 %95 to i64
  %96 = load ptr, ptr %clamptab, align 8
  %97 = load i32, ptr %Y98, align 4
  %98 = load ptr, ptr %Cbgtab, align 8
  %99 = load i32, ptr %Cb, align 4
  %idxprom107 = sext i32 %99 to i64
  %arrayidx108 = getelementptr inbounds i64, ptr %98, i64 %idxprom107
  %100 = load i64, ptr %arrayidx108, align 8
  %101 = load ptr, ptr %Crgtab, align 8
  %102 = load i32, ptr %Cr, align 4
  %idxprom109 = sext i32 %102 to i64
  %arrayidx110 = getelementptr inbounds i64, ptr %101, i64 %idxprom109
  %103 = load i64, ptr %arrayidx110, align 8
  %add111 = add nsw i64 %100, %103
  %104 = lshr i64 %add111, 16
  %conv113 = trunc i64 %104 to i32
  %add114 = add nsw i32 %97, %conv113
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds i8, ptr %96, i64 %idxprom115
  %105 = load i8, ptr %arrayidx116, align 1
  %conv117 = zext i8 %105 to i64
  %shl118 = shl nuw nsw i64 %conv117, 8
  %or119 = or i64 %shl118, %conv106
  %106 = load ptr, ptr %clamptab, align 8
  %107 = load i32, ptr %Y98, align 4
  %108 = load ptr, ptr %Cbbtab, align 8
  %109 = load i32, ptr %Cb, align 4
  %idxprom120 = sext i32 %109 to i64
  %arrayidx121 = getelementptr inbounds i32, ptr %108, i64 %idxprom120
  %110 = load i32, ptr %arrayidx121, align 4
  %add122 = add nsw i32 %107, %110
  %idxprom123 = sext i32 %add122 to i64
  %arrayidx124 = getelementptr inbounds i8, ptr %106, i64 %idxprom123
  %111 = load i8, ptr %arrayidx124, align 1
  %conv125 = zext i8 %111 to i64
  %shl126 = shl nuw nsw i64 %conv125, 16
  %or127 = or i64 %or119, %shl126
  %or128 = or i64 %or127, 4278190080
  %112 = load ptr, ptr %cp.addr, align 8
  %arrayidx129 = getelementptr inbounds i64, ptr %112, i64 3
  store i64 %or128, ptr %arrayidx129, align 8
  %113 = load ptr, ptr %pp.addr, align 8
  %arrayidx131 = getelementptr inbounds i8, ptr %113, i64 4
  %114 = load i8, ptr %arrayidx131, align 1
  %conv132 = zext i8 %114 to i32
  store i32 %conv132, ptr %Y130, align 4
  %115 = load ptr, ptr %clamptab, align 8
  %116 = load ptr, ptr %Crrtab, align 8
  %117 = load i32, ptr %Cr, align 4
  %idxprom133 = sext i32 %117 to i64
  %arrayidx134 = getelementptr inbounds i32, ptr %116, i64 %idxprom133
  %118 = load i32, ptr %arrayidx134, align 4
  %add135 = add nsw i32 %118, %conv132
  %idxprom136 = sext i32 %add135 to i64
  %arrayidx137 = getelementptr inbounds i8, ptr %115, i64 %idxprom136
  %119 = load i8, ptr %arrayidx137, align 1
  %conv138 = zext i8 %119 to i64
  %120 = load ptr, ptr %clamptab, align 8
  %121 = load i32, ptr %Y130, align 4
  %122 = load ptr, ptr %Cbgtab, align 8
  %123 = load i32, ptr %Cb, align 4
  %idxprom139 = sext i32 %123 to i64
  %arrayidx140 = getelementptr inbounds i64, ptr %122, i64 %idxprom139
  %124 = load i64, ptr %arrayidx140, align 8
  %125 = load ptr, ptr %Crgtab, align 8
  %126 = load i32, ptr %Cr, align 4
  %idxprom141 = sext i32 %126 to i64
  %arrayidx142 = getelementptr inbounds i64, ptr %125, i64 %idxprom141
  %127 = load i64, ptr %arrayidx142, align 8
  %add143 = add nsw i64 %124, %127
  %128 = lshr i64 %add143, 16
  %conv145 = trunc i64 %128 to i32
  %add146 = add nsw i32 %121, %conv145
  %idxprom147 = sext i32 %add146 to i64
  %arrayidx148 = getelementptr inbounds i8, ptr %120, i64 %idxprom147
  %129 = load i8, ptr %arrayidx148, align 1
  %conv149 = zext i8 %129 to i64
  %shl150 = shl nuw nsw i64 %conv149, 8
  %or151 = or i64 %shl150, %conv138
  %130 = load ptr, ptr %clamptab, align 8
  %131 = load i32, ptr %Y130, align 4
  %132 = load ptr, ptr %Cbbtab, align 8
  %133 = load i32, ptr %Cb, align 4
  %idxprom152 = sext i32 %133 to i64
  %arrayidx153 = getelementptr inbounds i32, ptr %132, i64 %idxprom152
  %134 = load i32, ptr %arrayidx153, align 4
  %add154 = add nsw i32 %131, %134
  %idxprom155 = sext i32 %add154 to i64
  %arrayidx156 = getelementptr inbounds i8, ptr %130, i64 %idxprom155
  %135 = load i8, ptr %arrayidx156, align 1
  %conv157 = zext i8 %135 to i64
  %shl158 = shl nuw nsw i64 %conv157, 16
  %or159 = or i64 %or151, %shl158
  %or160 = or i64 %or159, 4278190080
  %136 = load ptr, ptr %cp1, align 8
  store i64 %or160, ptr %136, align 8
  %137 = load ptr, ptr %pp.addr, align 8
  %arrayidx163 = getelementptr inbounds i8, ptr %137, i64 5
  %138 = load i8, ptr %arrayidx163, align 1
  %conv164 = zext i8 %138 to i32
  store i32 %conv164, ptr %Y162, align 4
  %139 = load ptr, ptr %clamptab, align 8
  %140 = load ptr, ptr %Crrtab, align 8
  %141 = load i32, ptr %Cr, align 4
  %idxprom165 = sext i32 %141 to i64
  %arrayidx166 = getelementptr inbounds i32, ptr %140, i64 %idxprom165
  %142 = load i32, ptr %arrayidx166, align 4
  %add167 = add nsw i32 %142, %conv164
  %idxprom168 = sext i32 %add167 to i64
  %arrayidx169 = getelementptr inbounds i8, ptr %139, i64 %idxprom168
  %143 = load i8, ptr %arrayidx169, align 1
  %conv170 = zext i8 %143 to i64
  %144 = load ptr, ptr %clamptab, align 8
  %145 = load i32, ptr %Y162, align 4
  %146 = load ptr, ptr %Cbgtab, align 8
  %147 = load i32, ptr %Cb, align 4
  %idxprom171 = sext i32 %147 to i64
  %arrayidx172 = getelementptr inbounds i64, ptr %146, i64 %idxprom171
  %148 = load i64, ptr %arrayidx172, align 8
  %149 = load ptr, ptr %Crgtab, align 8
  %150 = load i32, ptr %Cr, align 4
  %idxprom173 = sext i32 %150 to i64
  %arrayidx174 = getelementptr inbounds i64, ptr %149, i64 %idxprom173
  %151 = load i64, ptr %arrayidx174, align 8
  %add175 = add nsw i64 %148, %151
  %152 = lshr i64 %add175, 16
  %conv177 = trunc i64 %152 to i32
  %add178 = add nsw i32 %145, %conv177
  %idxprom179 = sext i32 %add178 to i64
  %arrayidx180 = getelementptr inbounds i8, ptr %144, i64 %idxprom179
  %153 = load i8, ptr %arrayidx180, align 1
  %conv181 = zext i8 %153 to i64
  %shl182 = shl nuw nsw i64 %conv181, 8
  %or183 = or i64 %shl182, %conv170
  %154 = load ptr, ptr %clamptab, align 8
  %155 = load i32, ptr %Y162, align 4
  %156 = load ptr, ptr %Cbbtab, align 8
  %157 = load i32, ptr %Cb, align 4
  %idxprom184 = sext i32 %157 to i64
  %arrayidx185 = getelementptr inbounds i32, ptr %156, i64 %idxprom184
  %158 = load i32, ptr %arrayidx185, align 4
  %add186 = add nsw i32 %155, %158
  %idxprom187 = sext i32 %add186 to i64
  %arrayidx188 = getelementptr inbounds i8, ptr %154, i64 %idxprom187
  %159 = load i8, ptr %arrayidx188, align 1
  %conv189 = zext i8 %159 to i64
  %shl190 = shl nuw nsw i64 %conv189, 16
  %or191 = or i64 %or183, %shl190
  %or192 = or i64 %or191, 4278190080
  %160 = load ptr, ptr %cp1, align 8
  %arrayidx193 = getelementptr inbounds i64, ptr %160, i64 1
  store i64 %or192, ptr %arrayidx193, align 8
  %161 = load ptr, ptr %pp.addr, align 8
  %arrayidx195 = getelementptr inbounds i8, ptr %161, i64 6
  %162 = load i8, ptr %arrayidx195, align 1
  %conv196 = zext i8 %162 to i32
  store i32 %conv196, ptr %Y194, align 4
  %163 = load ptr, ptr %clamptab, align 8
  %164 = load ptr, ptr %Crrtab, align 8
  %165 = load i32, ptr %Cr, align 4
  %idxprom197 = sext i32 %165 to i64
  %arrayidx198 = getelementptr inbounds i32, ptr %164, i64 %idxprom197
  %166 = load i32, ptr %arrayidx198, align 4
  %add199 = add nsw i32 %166, %conv196
  %idxprom200 = sext i32 %add199 to i64
  %arrayidx201 = getelementptr inbounds i8, ptr %163, i64 %idxprom200
  %167 = load i8, ptr %arrayidx201, align 1
  %conv202 = zext i8 %167 to i64
  %168 = load ptr, ptr %clamptab, align 8
  %169 = load i32, ptr %Y194, align 4
  %170 = load ptr, ptr %Cbgtab, align 8
  %171 = load i32, ptr %Cb, align 4
  %idxprom203 = sext i32 %171 to i64
  %arrayidx204 = getelementptr inbounds i64, ptr %170, i64 %idxprom203
  %172 = load i64, ptr %arrayidx204, align 8
  %173 = load ptr, ptr %Crgtab, align 8
  %174 = load i32, ptr %Cr, align 4
  %idxprom205 = sext i32 %174 to i64
  %arrayidx206 = getelementptr inbounds i64, ptr %173, i64 %idxprom205
  %175 = load i64, ptr %arrayidx206, align 8
  %add207 = add nsw i64 %172, %175
  %176 = lshr i64 %add207, 16
  %conv209 = trunc i64 %176 to i32
  %add210 = add nsw i32 %169, %conv209
  %idxprom211 = sext i32 %add210 to i64
  %arrayidx212 = getelementptr inbounds i8, ptr %168, i64 %idxprom211
  %177 = load i8, ptr %arrayidx212, align 1
  %conv213 = zext i8 %177 to i64
  %shl214 = shl nuw nsw i64 %conv213, 8
  %or215 = or i64 %shl214, %conv202
  %178 = load ptr, ptr %clamptab, align 8
  %179 = load i32, ptr %Y194, align 4
  %180 = load ptr, ptr %Cbbtab, align 8
  %181 = load i32, ptr %Cb, align 4
  %idxprom216 = sext i32 %181 to i64
  %arrayidx217 = getelementptr inbounds i32, ptr %180, i64 %idxprom216
  %182 = load i32, ptr %arrayidx217, align 4
  %add218 = add nsw i32 %179, %182
  %idxprom219 = sext i32 %add218 to i64
  %arrayidx220 = getelementptr inbounds i8, ptr %178, i64 %idxprom219
  %183 = load i8, ptr %arrayidx220, align 1
  %conv221 = zext i8 %183 to i64
  %shl222 = shl nuw nsw i64 %conv221, 16
  %or223 = or i64 %or215, %shl222
  %or224 = or i64 %or223, 4278190080
  %184 = load ptr, ptr %cp1, align 8
  %arrayidx225 = getelementptr inbounds i64, ptr %184, i64 2
  store i64 %or224, ptr %arrayidx225, align 8
  %185 = load ptr, ptr %pp.addr, align 8
  %arrayidx227 = getelementptr inbounds i8, ptr %185, i64 7
  %186 = load i8, ptr %arrayidx227, align 1
  %conv228 = zext i8 %186 to i32
  store i32 %conv228, ptr %Y226, align 4
  %187 = load ptr, ptr %clamptab, align 8
  %188 = load ptr, ptr %Crrtab, align 8
  %189 = load i32, ptr %Cr, align 4
  %idxprom229 = sext i32 %189 to i64
  %arrayidx230 = getelementptr inbounds i32, ptr %188, i64 %idxprom229
  %190 = load i32, ptr %arrayidx230, align 4
  %add231 = add nsw i32 %190, %conv228
  %idxprom232 = sext i32 %add231 to i64
  %arrayidx233 = getelementptr inbounds i8, ptr %187, i64 %idxprom232
  %191 = load i8, ptr %arrayidx233, align 1
  %conv234 = zext i8 %191 to i64
  %192 = load ptr, ptr %clamptab, align 8
  %193 = load i32, ptr %Y226, align 4
  %194 = load ptr, ptr %Cbgtab, align 8
  %195 = load i32, ptr %Cb, align 4
  %idxprom235 = sext i32 %195 to i64
  %arrayidx236 = getelementptr inbounds i64, ptr %194, i64 %idxprom235
  %196 = load i64, ptr %arrayidx236, align 8
  %197 = load ptr, ptr %Crgtab, align 8
  %198 = load i32, ptr %Cr, align 4
  %idxprom237 = sext i32 %198 to i64
  %arrayidx238 = getelementptr inbounds i64, ptr %197, i64 %idxprom237
  %199 = load i64, ptr %arrayidx238, align 8
  %add239 = add nsw i64 %196, %199
  %200 = lshr i64 %add239, 16
  %conv241 = trunc i64 %200 to i32
  %add242 = add nsw i32 %193, %conv241
  %idxprom243 = sext i32 %add242 to i64
  %arrayidx244 = getelementptr inbounds i8, ptr %192, i64 %idxprom243
  %201 = load i8, ptr %arrayidx244, align 1
  %conv245 = zext i8 %201 to i64
  %shl246 = shl nuw nsw i64 %conv245, 8
  %or247 = or i64 %shl246, %conv234
  %202 = load ptr, ptr %clamptab, align 8
  %203 = load i32, ptr %Y226, align 4
  %204 = load ptr, ptr %Cbbtab, align 8
  %205 = load i32, ptr %Cb, align 4
  %idxprom248 = sext i32 %205 to i64
  %arrayidx249 = getelementptr inbounds i32, ptr %204, i64 %idxprom248
  %206 = load i32, ptr %arrayidx249, align 4
  %add250 = add nsw i32 %203, %206
  %idxprom251 = sext i32 %add250 to i64
  %arrayidx252 = getelementptr inbounds i8, ptr %202, i64 %idxprom251
  %207 = load i8, ptr %arrayidx252, align 1
  %conv253 = zext i8 %207 to i64
  %shl254 = shl nuw nsw i64 %conv253, 16
  %or255 = or i64 %or247, %shl254
  %or256 = or i64 %or255, 4278190080
  %208 = load ptr, ptr %cp1, align 8
  %arrayidx257 = getelementptr inbounds i64, ptr %208, i64 3
  store i64 %or256, ptr %arrayidx257, align 8
  %209 = load ptr, ptr %cp.addr, align 8
  %add.ptr258 = getelementptr inbounds i64, ptr %209, i64 4
  store ptr %add.ptr258, ptr %cp.addr, align 8
  %add.ptr259 = getelementptr inbounds i64, ptr %208, i64 4
  store ptr %add.ptr259, ptr %cp1, align 8
  %210 = load ptr, ptr %pp.addr, align 8
  %add.ptr260 = getelementptr inbounds i8, ptr %210, i64 10
  store ptr %add.ptr260, ptr %pp.addr, align 8
  %211 = load i64, ptr %x.addr, align 8
  %dec = add i64 %211, -1
  store i64 %dec, ptr %x.addr, align 8
  %tobool.not = icmp eq i64 %dec, 0
  br i1 %tobool.not, label %do.end, label %do.body, !llvm.loop !59

do.end:                                           ; preds = %do.body
  %212 = load i64, ptr %incr, align 8
  %213 = load ptr, ptr %cp.addr, align 8
  %add.ptr261 = getelementptr inbounds i64, ptr %213, i64 %212
  store ptr %add.ptr261, ptr %cp.addr, align 8
  %214 = load ptr, ptr %cp1, align 8
  %add.ptr262 = getelementptr inbounds i64, ptr %214, i64 %212
  store ptr %add.ptr262, ptr %cp1, align 8
  %215 = load i64, ptr %fromskew.addr, align 8
  %216 = load ptr, ptr %pp.addr, align 8
  %add.ptr263 = getelementptr inbounds i8, ptr %216, i64 %215
  store ptr %add.ptr263, ptr %pp.addr, align 8
  %217 = load i64, ptr %h.addr, align 8
  %sub = add i64 %217, -2
  store i64 %sub, ptr %h.addr, align 8
  br label %for.cond, !llvm.loop !60

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @putcontig8bitYCbCr41tile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %pp.addr = alloca ptr, align 8
  %ycbcr = alloca ptr, align 8
  %Crrtab = alloca ptr, align 8
  %Cbbtab = alloca ptr, align 8
  %Crgtab = alloca ptr, align 8
  %Cbgtab = alloca ptr, align 8
  %clamptab = alloca ptr, align 8
  %Cb = alloca i32, align 4
  %Cr = alloca i32, align 4
  %Y = alloca i32, align 4
  %Y33 = alloca i32, align 4
  %Y65 = alloca i32, align 4
  %Y97 = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %ycbcr1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 18
  %1 = load ptr, ptr %ycbcr1, align 8
  store ptr %1, ptr %ycbcr, align 8
  %Cr_r_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %Cr_r_tab, align 8
  store ptr %2, ptr %Crrtab, align 8
  %Cb_b_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %1, i64 0, i32 2
  %3 = load ptr, ptr %Cb_b_tab, align 8
  store ptr %3, ptr %Cbbtab, align 8
  %4 = load ptr, ptr %ycbcr, align 8
  %Cr_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %4, i64 0, i32 3
  %5 = load ptr, ptr %Cr_g_tab, align 8
  store ptr %5, ptr %Crgtab, align 8
  %Cb_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %Cb_g_tab, align 8
  store ptr %6, ptr %Cbgtab, align 8
  %7 = load ptr, ptr %ycbcr, align 8
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %clamptab, align 8
  br label %do.body

do.body:                                          ; preds = %do.end, %entry
  %9 = load i64, ptr %w.addr, align 8
  %shr = lshr i64 %9, 2
  store i64 %shr, ptr %x.addr, align 8
  br label %do.body3

do.body3:                                         ; preds = %do.body3, %do.body
  %10 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 4
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  store i32 %conv, ptr %Cb, align 4
  %arrayidx4 = getelementptr inbounds i8, ptr %10, i64 5
  %12 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %12 to i32
  store i32 %conv5, ptr %Cr, align 4
  %13 = load ptr, ptr %pp.addr, align 8
  %14 = load i8, ptr %13, align 1
  %conv7 = zext i8 %14 to i32
  store i32 %conv7, ptr %Y, align 4
  %15 = load ptr, ptr %clamptab, align 8
  %16 = load ptr, ptr %Crrtab, align 8
  %17 = load i32, ptr %Cr, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %16, i64 %idxprom
  %18 = load i32, ptr %arrayidx8, align 4
  %add = add nsw i32 %18, %conv7
  %idxprom9 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %15, i64 %idxprom9
  %19 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %19 to i64
  %20 = load ptr, ptr %clamptab, align 8
  %21 = load i32, ptr %Y, align 4
  %22 = load ptr, ptr %Cbgtab, align 8
  %23 = load i32, ptr %Cb, align 4
  %idxprom12 = sext i32 %23 to i64
  %arrayidx13 = getelementptr inbounds i64, ptr %22, i64 %idxprom12
  %24 = load i64, ptr %arrayidx13, align 8
  %25 = load ptr, ptr %Crgtab, align 8
  %26 = load i32, ptr %Cr, align 4
  %idxprom14 = sext i32 %26 to i64
  %arrayidx15 = getelementptr inbounds i64, ptr %25, i64 %idxprom14
  %27 = load i64, ptr %arrayidx15, align 8
  %add16 = add nsw i64 %24, %27
  %28 = lshr i64 %add16, 16
  %conv18 = trunc i64 %28 to i32
  %add19 = add nsw i32 %21, %conv18
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %20, i64 %idxprom20
  %29 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %29 to i64
  %shl = shl nuw nsw i64 %conv22, 8
  %or = or i64 %shl, %conv11
  %30 = load ptr, ptr %clamptab, align 8
  %31 = load i32, ptr %Y, align 4
  %32 = load ptr, ptr %Cbbtab, align 8
  %33 = load i32, ptr %Cb, align 4
  %idxprom23 = sext i32 %33 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %32, i64 %idxprom23
  %34 = load i32, ptr %arrayidx24, align 4
  %add25 = add nsw i32 %31, %34
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %30, i64 %idxprom26
  %35 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %35 to i64
  %shl29 = shl nuw nsw i64 %conv28, 16
  %or30 = or i64 %or, %shl29
  %or31 = or i64 %or30, 4278190080
  %36 = load ptr, ptr %cp.addr, align 8
  store i64 %or31, ptr %36, align 8
  %37 = load ptr, ptr %pp.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %37, i64 1
  %38 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %38 to i32
  store i32 %conv35, ptr %Y33, align 4
  %39 = load ptr, ptr %clamptab, align 8
  %40 = load ptr, ptr %Crrtab, align 8
  %41 = load i32, ptr %Cr, align 4
  %idxprom36 = sext i32 %41 to i64
  %arrayidx37 = getelementptr inbounds i32, ptr %40, i64 %idxprom36
  %42 = load i32, ptr %arrayidx37, align 4
  %add38 = add nsw i32 %42, %conv35
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %39, i64 %idxprom39
  %43 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %43 to i64
  %44 = load ptr, ptr %clamptab, align 8
  %45 = load i32, ptr %Y33, align 4
  %46 = load ptr, ptr %Cbgtab, align 8
  %47 = load i32, ptr %Cb, align 4
  %idxprom42 = sext i32 %47 to i64
  %arrayidx43 = getelementptr inbounds i64, ptr %46, i64 %idxprom42
  %48 = load i64, ptr %arrayidx43, align 8
  %49 = load ptr, ptr %Crgtab, align 8
  %50 = load i32, ptr %Cr, align 4
  %idxprom44 = sext i32 %50 to i64
  %arrayidx45 = getelementptr inbounds i64, ptr %49, i64 %idxprom44
  %51 = load i64, ptr %arrayidx45, align 8
  %add46 = add nsw i64 %48, %51
  %52 = lshr i64 %add46, 16
  %conv48 = trunc i64 %52 to i32
  %add49 = add nsw i32 %45, %conv48
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds i8, ptr %44, i64 %idxprom50
  %53 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %53 to i64
  %shl53 = shl nuw nsw i64 %conv52, 8
  %or54 = or i64 %shl53, %conv41
  %54 = load ptr, ptr %clamptab, align 8
  %55 = load i32, ptr %Y33, align 4
  %56 = load ptr, ptr %Cbbtab, align 8
  %57 = load i32, ptr %Cb, align 4
  %idxprom55 = sext i32 %57 to i64
  %arrayidx56 = getelementptr inbounds i32, ptr %56, i64 %idxprom55
  %58 = load i32, ptr %arrayidx56, align 4
  %add57 = add nsw i32 %55, %58
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds i8, ptr %54, i64 %idxprom58
  %59 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %59 to i64
  %shl61 = shl nuw nsw i64 %conv60, 16
  %or62 = or i64 %or54, %shl61
  %or63 = or i64 %or62, 4278190080
  %60 = load ptr, ptr %cp.addr, align 8
  %arrayidx64 = getelementptr inbounds i64, ptr %60, i64 1
  store i64 %or63, ptr %arrayidx64, align 8
  %61 = load ptr, ptr %pp.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, ptr %61, i64 2
  %62 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %62 to i32
  store i32 %conv67, ptr %Y65, align 4
  %63 = load ptr, ptr %clamptab, align 8
  %64 = load ptr, ptr %Crrtab, align 8
  %65 = load i32, ptr %Cr, align 4
  %idxprom68 = sext i32 %65 to i64
  %arrayidx69 = getelementptr inbounds i32, ptr %64, i64 %idxprom68
  %66 = load i32, ptr %arrayidx69, align 4
  %add70 = add nsw i32 %66, %conv67
  %idxprom71 = sext i32 %add70 to i64
  %arrayidx72 = getelementptr inbounds i8, ptr %63, i64 %idxprom71
  %67 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %67 to i64
  %68 = load ptr, ptr %clamptab, align 8
  %69 = load i32, ptr %Y65, align 4
  %70 = load ptr, ptr %Cbgtab, align 8
  %71 = load i32, ptr %Cb, align 4
  %idxprom74 = sext i32 %71 to i64
  %arrayidx75 = getelementptr inbounds i64, ptr %70, i64 %idxprom74
  %72 = load i64, ptr %arrayidx75, align 8
  %73 = load ptr, ptr %Crgtab, align 8
  %74 = load i32, ptr %Cr, align 4
  %idxprom76 = sext i32 %74 to i64
  %arrayidx77 = getelementptr inbounds i64, ptr %73, i64 %idxprom76
  %75 = load i64, ptr %arrayidx77, align 8
  %add78 = add nsw i64 %72, %75
  %76 = lshr i64 %add78, 16
  %conv80 = trunc i64 %76 to i32
  %add81 = add nsw i32 %69, %conv80
  %idxprom82 = sext i32 %add81 to i64
  %arrayidx83 = getelementptr inbounds i8, ptr %68, i64 %idxprom82
  %77 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %77 to i64
  %shl85 = shl nuw nsw i64 %conv84, 8
  %or86 = or i64 %shl85, %conv73
  %78 = load ptr, ptr %clamptab, align 8
  %79 = load i32, ptr %Y65, align 4
  %80 = load ptr, ptr %Cbbtab, align 8
  %81 = load i32, ptr %Cb, align 4
  %idxprom87 = sext i32 %81 to i64
  %arrayidx88 = getelementptr inbounds i32, ptr %80, i64 %idxprom87
  %82 = load i32, ptr %arrayidx88, align 4
  %add89 = add nsw i32 %79, %82
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds i8, ptr %78, i64 %idxprom90
  %83 = load i8, ptr %arrayidx91, align 1
  %conv92 = zext i8 %83 to i64
  %shl93 = shl nuw nsw i64 %conv92, 16
  %or94 = or i64 %or86, %shl93
  %or95 = or i64 %or94, 4278190080
  %84 = load ptr, ptr %cp.addr, align 8
  %arrayidx96 = getelementptr inbounds i64, ptr %84, i64 2
  store i64 %or95, ptr %arrayidx96, align 8
  %85 = load ptr, ptr %pp.addr, align 8
  %arrayidx98 = getelementptr inbounds i8, ptr %85, i64 3
  %86 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %86 to i32
  store i32 %conv99, ptr %Y97, align 4
  %87 = load ptr, ptr %clamptab, align 8
  %88 = load ptr, ptr %Crrtab, align 8
  %89 = load i32, ptr %Cr, align 4
  %idxprom100 = sext i32 %89 to i64
  %arrayidx101 = getelementptr inbounds i32, ptr %88, i64 %idxprom100
  %90 = load i32, ptr %arrayidx101, align 4
  %add102 = add nsw i32 %90, %conv99
  %idxprom103 = sext i32 %add102 to i64
  %arrayidx104 = getelementptr inbounds i8, ptr %87, i64 %idxprom103
  %91 = load i8, ptr %arrayidx104, align 1
  %conv105 = zext i8 %91 to i64
  %92 = load ptr, ptr %clamptab, align 8
  %93 = load i32, ptr %Y97, align 4
  %94 = load ptr, ptr %Cbgtab, align 8
  %95 = load i32, ptr %Cb, align 4
  %idxprom106 = sext i32 %95 to i64
  %arrayidx107 = getelementptr inbounds i64, ptr %94, i64 %idxprom106
  %96 = load i64, ptr %arrayidx107, align 8
  %97 = load ptr, ptr %Crgtab, align 8
  %98 = load i32, ptr %Cr, align 4
  %idxprom108 = sext i32 %98 to i64
  %arrayidx109 = getelementptr inbounds i64, ptr %97, i64 %idxprom108
  %99 = load i64, ptr %arrayidx109, align 8
  %add110 = add nsw i64 %96, %99
  %100 = lshr i64 %add110, 16
  %conv112 = trunc i64 %100 to i32
  %add113 = add nsw i32 %93, %conv112
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds i8, ptr %92, i64 %idxprom114
  %101 = load i8, ptr %arrayidx115, align 1
  %conv116 = zext i8 %101 to i64
  %shl117 = shl nuw nsw i64 %conv116, 8
  %or118 = or i64 %shl117, %conv105
  %102 = load ptr, ptr %clamptab, align 8
  %103 = load i32, ptr %Y97, align 4
  %104 = load ptr, ptr %Cbbtab, align 8
  %105 = load i32, ptr %Cb, align 4
  %idxprom119 = sext i32 %105 to i64
  %arrayidx120 = getelementptr inbounds i32, ptr %104, i64 %idxprom119
  %106 = load i32, ptr %arrayidx120, align 4
  %add121 = add nsw i32 %103, %106
  %idxprom122 = sext i32 %add121 to i64
  %arrayidx123 = getelementptr inbounds i8, ptr %102, i64 %idxprom122
  %107 = load i8, ptr %arrayidx123, align 1
  %conv124 = zext i8 %107 to i64
  %shl125 = shl nuw nsw i64 %conv124, 16
  %or126 = or i64 %or118, %shl125
  %or127 = or i64 %or126, 4278190080
  %108 = load ptr, ptr %cp.addr, align 8
  %arrayidx128 = getelementptr inbounds i64, ptr %108, i64 3
  store i64 %or127, ptr %arrayidx128, align 8
  %add.ptr = getelementptr inbounds i64, ptr %108, i64 4
  store ptr %add.ptr, ptr %cp.addr, align 8
  %109 = load ptr, ptr %pp.addr, align 8
  %add.ptr129 = getelementptr inbounds i8, ptr %109, i64 6
  store ptr %add.ptr129, ptr %pp.addr, align 8
  %110 = load i64, ptr %x.addr, align 8
  %dec = add i64 %110, -1
  store i64 %dec, ptr %x.addr, align 8
  %tobool.not = icmp eq i64 %dec, 0
  br i1 %tobool.not, label %do.end, label %do.body3, !llvm.loop !61

do.end:                                           ; preds = %do.body3
  %111 = load i64, ptr %toskew.addr, align 8
  %112 = load ptr, ptr %cp.addr, align 8
  %add.ptr130 = getelementptr inbounds i64, ptr %112, i64 %111
  store ptr %add.ptr130, ptr %cp.addr, align 8
  %113 = load i64, ptr %fromskew.addr, align 8
  %114 = load ptr, ptr %pp.addr, align 8
  %add.ptr131 = getelementptr inbounds i8, ptr %114, i64 %113
  store ptr %add.ptr131, ptr %pp.addr, align 8
  %115 = load i64, ptr %h.addr, align 8
  %dec133 = add i64 %115, -1
  store i64 %dec133, ptr %h.addr, align 8
  %tobool134.not = icmp eq i64 %dec133, 0
  br i1 %tobool134.not, label %do.end135, label %do.body, !llvm.loop !62

do.end135:                                        ; preds = %do.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @putcontig8bitYCbCr22tile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %pp.addr = alloca ptr, align 8
  %ycbcr = alloca ptr, align 8
  %Crrtab = alloca ptr, align 8
  %Cbbtab = alloca ptr, align 8
  %Crgtab = alloca ptr, align 8
  %Cbgtab = alloca ptr, align 8
  %clamptab = alloca ptr, align 8
  %cp1 = alloca ptr, align 8
  %incr = alloca i64, align 8
  %Cb = alloca i32, align 4
  %Cr = alloca i32, align 4
  %Y = alloca i32, align 4
  %Y34 = alloca i32, align 4
  %Y66 = alloca i32, align 4
  %Y98 = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %ycbcr1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 18
  %1 = load ptr, ptr %ycbcr1, align 8
  store ptr %1, ptr %ycbcr, align 8
  %Cr_r_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %Cr_r_tab, align 8
  store ptr %2, ptr %Crrtab, align 8
  %Cb_b_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %1, i64 0, i32 2
  %3 = load ptr, ptr %Cb_b_tab, align 8
  store ptr %3, ptr %Cbbtab, align 8
  %4 = load ptr, ptr %ycbcr, align 8
  %Cr_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %4, i64 0, i32 3
  %5 = load ptr, ptr %Cr_g_tab, align 8
  store ptr %5, ptr %Crgtab, align 8
  %Cb_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %Cb_g_tab, align 8
  store ptr %6, ptr %Cbgtab, align 8
  %7 = load ptr, ptr %ycbcr, align 8
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %clamptab, align 8
  %9 = load ptr, ptr %cp.addr, align 8
  %10 = load i64, ptr %w.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %9, i64 %10
  %11 = load i64, ptr %toskew.addr, align 8
  %add.ptr3 = getelementptr inbounds i64, ptr %add.ptr, i64 %11
  store ptr %add.ptr3, ptr %cp1, align 8
  %mul = shl nsw i64 %11, 1
  %add = add i64 %mul, %10
  store i64 %add, ptr %incr, align 8
  br label %for.cond

for.cond:                                         ; preds = %do.end, %entry
  %12 = load i64, ptr %h.addr, align 8
  %cmp = icmp ugt i64 %12, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i64, ptr %w.addr, align 8
  %shr = lshr i64 %13, 1
  store i64 %shr, ptr %x.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.body, %for.body
  %14 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 4
  %15 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %15 to i32
  store i32 %conv, ptr %Cb, align 4
  %arrayidx4 = getelementptr inbounds i8, ptr %14, i64 5
  %16 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %16 to i32
  store i32 %conv5, ptr %Cr, align 4
  %17 = load ptr, ptr %pp.addr, align 8
  %18 = load i8, ptr %17, align 1
  %conv7 = zext i8 %18 to i32
  store i32 %conv7, ptr %Y, align 4
  %19 = load ptr, ptr %clamptab, align 8
  %20 = load ptr, ptr %Crrtab, align 8
  %21 = load i32, ptr %Cr, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %20, i64 %idxprom
  %22 = load i32, ptr %arrayidx8, align 4
  %add9 = add nsw i32 %22, %conv7
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %19, i64 %idxprom10
  %23 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %23 to i64
  %24 = load ptr, ptr %clamptab, align 8
  %25 = load i32, ptr %Y, align 4
  %26 = load ptr, ptr %Cbgtab, align 8
  %27 = load i32, ptr %Cb, align 4
  %idxprom13 = sext i32 %27 to i64
  %arrayidx14 = getelementptr inbounds i64, ptr %26, i64 %idxprom13
  %28 = load i64, ptr %arrayidx14, align 8
  %29 = load ptr, ptr %Crgtab, align 8
  %30 = load i32, ptr %Cr, align 4
  %idxprom15 = sext i32 %30 to i64
  %arrayidx16 = getelementptr inbounds i64, ptr %29, i64 %idxprom15
  %31 = load i64, ptr %arrayidx16, align 8
  %add17 = add nsw i64 %28, %31
  %32 = lshr i64 %add17, 16
  %conv19 = trunc i64 %32 to i32
  %add20 = add nsw i32 %25, %conv19
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %24, i64 %idxprom21
  %33 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %33 to i64
  %shl = shl nuw nsw i64 %conv23, 8
  %or = or i64 %shl, %conv12
  %34 = load ptr, ptr %clamptab, align 8
  %35 = load i32, ptr %Y, align 4
  %36 = load ptr, ptr %Cbbtab, align 8
  %37 = load i32, ptr %Cb, align 4
  %idxprom24 = sext i32 %37 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %36, i64 %idxprom24
  %38 = load i32, ptr %arrayidx25, align 4
  %add26 = add nsw i32 %35, %38
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds i8, ptr %34, i64 %idxprom27
  %39 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %39 to i64
  %shl30 = shl nuw nsw i64 %conv29, 16
  %or31 = or i64 %or, %shl30
  %or32 = or i64 %or31, 4278190080
  %40 = load ptr, ptr %cp.addr, align 8
  store i64 %or32, ptr %40, align 8
  %41 = load ptr, ptr %pp.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %41, i64 1
  %42 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %42 to i32
  store i32 %conv36, ptr %Y34, align 4
  %43 = load ptr, ptr %clamptab, align 8
  %44 = load ptr, ptr %Crrtab, align 8
  %45 = load i32, ptr %Cr, align 4
  %idxprom37 = sext i32 %45 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %44, i64 %idxprom37
  %46 = load i32, ptr %arrayidx38, align 4
  %add39 = add nsw i32 %46, %conv36
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds i8, ptr %43, i64 %idxprom40
  %47 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %47 to i64
  %48 = load ptr, ptr %clamptab, align 8
  %49 = load i32, ptr %Y34, align 4
  %50 = load ptr, ptr %Cbgtab, align 8
  %51 = load i32, ptr %Cb, align 4
  %idxprom43 = sext i32 %51 to i64
  %arrayidx44 = getelementptr inbounds i64, ptr %50, i64 %idxprom43
  %52 = load i64, ptr %arrayidx44, align 8
  %53 = load ptr, ptr %Crgtab, align 8
  %54 = load i32, ptr %Cr, align 4
  %idxprom45 = sext i32 %54 to i64
  %arrayidx46 = getelementptr inbounds i64, ptr %53, i64 %idxprom45
  %55 = load i64, ptr %arrayidx46, align 8
  %add47 = add nsw i64 %52, %55
  %56 = lshr i64 %add47, 16
  %conv49 = trunc i64 %56 to i32
  %add50 = add nsw i32 %49, %conv49
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds i8, ptr %48, i64 %idxprom51
  %57 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %57 to i64
  %shl54 = shl nuw nsw i64 %conv53, 8
  %or55 = or i64 %shl54, %conv42
  %58 = load ptr, ptr %clamptab, align 8
  %59 = load i32, ptr %Y34, align 4
  %60 = load ptr, ptr %Cbbtab, align 8
  %61 = load i32, ptr %Cb, align 4
  %idxprom56 = sext i32 %61 to i64
  %arrayidx57 = getelementptr inbounds i32, ptr %60, i64 %idxprom56
  %62 = load i32, ptr %arrayidx57, align 4
  %add58 = add nsw i32 %59, %62
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds i8, ptr %58, i64 %idxprom59
  %63 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %63 to i64
  %shl62 = shl nuw nsw i64 %conv61, 16
  %or63 = or i64 %or55, %shl62
  %or64 = or i64 %or63, 4278190080
  %64 = load ptr, ptr %cp.addr, align 8
  %arrayidx65 = getelementptr inbounds i64, ptr %64, i64 1
  store i64 %or64, ptr %arrayidx65, align 8
  %65 = load ptr, ptr %pp.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %65, i64 2
  %66 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %66 to i32
  store i32 %conv68, ptr %Y66, align 4
  %67 = load ptr, ptr %clamptab, align 8
  %68 = load ptr, ptr %Crrtab, align 8
  %69 = load i32, ptr %Cr, align 4
  %idxprom69 = sext i32 %69 to i64
  %arrayidx70 = getelementptr inbounds i32, ptr %68, i64 %idxprom69
  %70 = load i32, ptr %arrayidx70, align 4
  %add71 = add nsw i32 %70, %conv68
  %idxprom72 = sext i32 %add71 to i64
  %arrayidx73 = getelementptr inbounds i8, ptr %67, i64 %idxprom72
  %71 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %71 to i64
  %72 = load ptr, ptr %clamptab, align 8
  %73 = load i32, ptr %Y66, align 4
  %74 = load ptr, ptr %Cbgtab, align 8
  %75 = load i32, ptr %Cb, align 4
  %idxprom75 = sext i32 %75 to i64
  %arrayidx76 = getelementptr inbounds i64, ptr %74, i64 %idxprom75
  %76 = load i64, ptr %arrayidx76, align 8
  %77 = load ptr, ptr %Crgtab, align 8
  %78 = load i32, ptr %Cr, align 4
  %idxprom77 = sext i32 %78 to i64
  %arrayidx78 = getelementptr inbounds i64, ptr %77, i64 %idxprom77
  %79 = load i64, ptr %arrayidx78, align 8
  %add79 = add nsw i64 %76, %79
  %80 = lshr i64 %add79, 16
  %conv81 = trunc i64 %80 to i32
  %add82 = add nsw i32 %73, %conv81
  %idxprom83 = sext i32 %add82 to i64
  %arrayidx84 = getelementptr inbounds i8, ptr %72, i64 %idxprom83
  %81 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %81 to i64
  %shl86 = shl nuw nsw i64 %conv85, 8
  %or87 = or i64 %shl86, %conv74
  %82 = load ptr, ptr %clamptab, align 8
  %83 = load i32, ptr %Y66, align 4
  %84 = load ptr, ptr %Cbbtab, align 8
  %85 = load i32, ptr %Cb, align 4
  %idxprom88 = sext i32 %85 to i64
  %arrayidx89 = getelementptr inbounds i32, ptr %84, i64 %idxprom88
  %86 = load i32, ptr %arrayidx89, align 4
  %add90 = add nsw i32 %83, %86
  %idxprom91 = sext i32 %add90 to i64
  %arrayidx92 = getelementptr inbounds i8, ptr %82, i64 %idxprom91
  %87 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %87 to i64
  %shl94 = shl nuw nsw i64 %conv93, 16
  %or95 = or i64 %or87, %shl94
  %or96 = or i64 %or95, 4278190080
  %88 = load ptr, ptr %cp1, align 8
  store i64 %or96, ptr %88, align 8
  %89 = load ptr, ptr %pp.addr, align 8
  %arrayidx99 = getelementptr inbounds i8, ptr %89, i64 3
  %90 = load i8, ptr %arrayidx99, align 1
  %conv100 = zext i8 %90 to i32
  store i32 %conv100, ptr %Y98, align 4
  %91 = load ptr, ptr %clamptab, align 8
  %92 = load ptr, ptr %Crrtab, align 8
  %93 = load i32, ptr %Cr, align 4
  %idxprom101 = sext i32 %93 to i64
  %arrayidx102 = getelementptr inbounds i32, ptr %92, i64 %idxprom101
  %94 = load i32, ptr %arrayidx102, align 4
  %add103 = add nsw i32 %94, %conv100
  %idxprom104 = sext i32 %add103 to i64
  %arrayidx105 = getelementptr inbounds i8, ptr %91, i64 %idxprom104
  %95 = load i8, ptr %arrayidx105, align 1
  %conv106 = zext i8 %95 to i64
  %96 = load ptr, ptr %clamptab, align 8
  %97 = load i32, ptr %Y98, align 4
  %98 = load ptr, ptr %Cbgtab, align 8
  %99 = load i32, ptr %Cb, align 4
  %idxprom107 = sext i32 %99 to i64
  %arrayidx108 = getelementptr inbounds i64, ptr %98, i64 %idxprom107
  %100 = load i64, ptr %arrayidx108, align 8
  %101 = load ptr, ptr %Crgtab, align 8
  %102 = load i32, ptr %Cr, align 4
  %idxprom109 = sext i32 %102 to i64
  %arrayidx110 = getelementptr inbounds i64, ptr %101, i64 %idxprom109
  %103 = load i64, ptr %arrayidx110, align 8
  %add111 = add nsw i64 %100, %103
  %104 = lshr i64 %add111, 16
  %conv113 = trunc i64 %104 to i32
  %add114 = add nsw i32 %97, %conv113
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds i8, ptr %96, i64 %idxprom115
  %105 = load i8, ptr %arrayidx116, align 1
  %conv117 = zext i8 %105 to i64
  %shl118 = shl nuw nsw i64 %conv117, 8
  %or119 = or i64 %shl118, %conv106
  %106 = load ptr, ptr %clamptab, align 8
  %107 = load i32, ptr %Y98, align 4
  %108 = load ptr, ptr %Cbbtab, align 8
  %109 = load i32, ptr %Cb, align 4
  %idxprom120 = sext i32 %109 to i64
  %arrayidx121 = getelementptr inbounds i32, ptr %108, i64 %idxprom120
  %110 = load i32, ptr %arrayidx121, align 4
  %add122 = add nsw i32 %107, %110
  %idxprom123 = sext i32 %add122 to i64
  %arrayidx124 = getelementptr inbounds i8, ptr %106, i64 %idxprom123
  %111 = load i8, ptr %arrayidx124, align 1
  %conv125 = zext i8 %111 to i64
  %shl126 = shl nuw nsw i64 %conv125, 16
  %or127 = or i64 %or119, %shl126
  %or128 = or i64 %or127, 4278190080
  %112 = load ptr, ptr %cp1, align 8
  %arrayidx129 = getelementptr inbounds i64, ptr %112, i64 1
  store i64 %or128, ptr %arrayidx129, align 8
  %113 = load ptr, ptr %cp.addr, align 8
  %add.ptr130 = getelementptr inbounds i64, ptr %113, i64 2
  store ptr %add.ptr130, ptr %cp.addr, align 8
  %add.ptr131 = getelementptr inbounds i64, ptr %112, i64 2
  store ptr %add.ptr131, ptr %cp1, align 8
  %114 = load ptr, ptr %pp.addr, align 8
  %add.ptr132 = getelementptr inbounds i8, ptr %114, i64 6
  store ptr %add.ptr132, ptr %pp.addr, align 8
  %115 = load i64, ptr %x.addr, align 8
  %dec = add i64 %115, -1
  store i64 %dec, ptr %x.addr, align 8
  %tobool.not = icmp eq i64 %dec, 0
  br i1 %tobool.not, label %do.end, label %do.body, !llvm.loop !63

do.end:                                           ; preds = %do.body
  %116 = load i64, ptr %incr, align 8
  %117 = load ptr, ptr %cp.addr, align 8
  %add.ptr133 = getelementptr inbounds i64, ptr %117, i64 %116
  store ptr %add.ptr133, ptr %cp.addr, align 8
  %118 = load ptr, ptr %cp1, align 8
  %add.ptr134 = getelementptr inbounds i64, ptr %118, i64 %116
  store ptr %add.ptr134, ptr %cp1, align 8
  %119 = load i64, ptr %fromskew.addr, align 8
  %120 = load ptr, ptr %pp.addr, align 8
  %add.ptr135 = getelementptr inbounds i8, ptr %120, i64 %119
  store ptr %add.ptr135, ptr %pp.addr, align 8
  %121 = load i64, ptr %h.addr, align 8
  %sub = add i64 %121, -2
  store i64 %sub, ptr %h.addr, align 8
  br label %for.cond, !llvm.loop !64

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @putcontig8bitYCbCr21tile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %pp.addr = alloca ptr, align 8
  %ycbcr = alloca ptr, align 8
  %Crrtab = alloca ptr, align 8
  %Cbbtab = alloca ptr, align 8
  %Crgtab = alloca ptr, align 8
  %Cbgtab = alloca ptr, align 8
  %clamptab = alloca ptr, align 8
  %Cb = alloca i32, align 4
  %Cr = alloca i32, align 4
  %Y = alloca i32, align 4
  %Y33 = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %ycbcr1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 18
  %1 = load ptr, ptr %ycbcr1, align 8
  store ptr %1, ptr %ycbcr, align 8
  %Cr_r_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %Cr_r_tab, align 8
  store ptr %2, ptr %Crrtab, align 8
  %Cb_b_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %1, i64 0, i32 2
  %3 = load ptr, ptr %Cb_b_tab, align 8
  store ptr %3, ptr %Cbbtab, align 8
  %4 = load ptr, ptr %ycbcr, align 8
  %Cr_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %4, i64 0, i32 3
  %5 = load ptr, ptr %Cr_g_tab, align 8
  store ptr %5, ptr %Crgtab, align 8
  %Cb_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %Cb_g_tab, align 8
  store ptr %6, ptr %Cbgtab, align 8
  %7 = load ptr, ptr %ycbcr, align 8
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %clamptab, align 8
  br label %do.body

do.body:                                          ; preds = %do.end, %entry
  %9 = load i64, ptr %w.addr, align 8
  %shr = lshr i64 %9, 1
  store i64 %shr, ptr %x.addr, align 8
  br label %do.body3

do.body3:                                         ; preds = %do.body3, %do.body
  %10 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 2
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  store i32 %conv, ptr %Cb, align 4
  %arrayidx4 = getelementptr inbounds i8, ptr %10, i64 3
  %12 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %12 to i32
  store i32 %conv5, ptr %Cr, align 4
  %13 = load ptr, ptr %pp.addr, align 8
  %14 = load i8, ptr %13, align 1
  %conv7 = zext i8 %14 to i32
  store i32 %conv7, ptr %Y, align 4
  %15 = load ptr, ptr %clamptab, align 8
  %16 = load ptr, ptr %Crrtab, align 8
  %17 = load i32, ptr %Cr, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %16, i64 %idxprom
  %18 = load i32, ptr %arrayidx8, align 4
  %add = add nsw i32 %18, %conv7
  %idxprom9 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %15, i64 %idxprom9
  %19 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %19 to i64
  %20 = load ptr, ptr %clamptab, align 8
  %21 = load i32, ptr %Y, align 4
  %22 = load ptr, ptr %Cbgtab, align 8
  %23 = load i32, ptr %Cb, align 4
  %idxprom12 = sext i32 %23 to i64
  %arrayidx13 = getelementptr inbounds i64, ptr %22, i64 %idxprom12
  %24 = load i64, ptr %arrayidx13, align 8
  %25 = load ptr, ptr %Crgtab, align 8
  %26 = load i32, ptr %Cr, align 4
  %idxprom14 = sext i32 %26 to i64
  %arrayidx15 = getelementptr inbounds i64, ptr %25, i64 %idxprom14
  %27 = load i64, ptr %arrayidx15, align 8
  %add16 = add nsw i64 %24, %27
  %28 = lshr i64 %add16, 16
  %conv18 = trunc i64 %28 to i32
  %add19 = add nsw i32 %21, %conv18
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %20, i64 %idxprom20
  %29 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %29 to i64
  %shl = shl nuw nsw i64 %conv22, 8
  %or = or i64 %shl, %conv11
  %30 = load ptr, ptr %clamptab, align 8
  %31 = load i32, ptr %Y, align 4
  %32 = load ptr, ptr %Cbbtab, align 8
  %33 = load i32, ptr %Cb, align 4
  %idxprom23 = sext i32 %33 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %32, i64 %idxprom23
  %34 = load i32, ptr %arrayidx24, align 4
  %add25 = add nsw i32 %31, %34
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %30, i64 %idxprom26
  %35 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %35 to i64
  %shl29 = shl nuw nsw i64 %conv28, 16
  %or30 = or i64 %or, %shl29
  %or31 = or i64 %or30, 4278190080
  %36 = load ptr, ptr %cp.addr, align 8
  store i64 %or31, ptr %36, align 8
  %37 = load ptr, ptr %pp.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %37, i64 1
  %38 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %38 to i32
  store i32 %conv35, ptr %Y33, align 4
  %39 = load ptr, ptr %clamptab, align 8
  %40 = load ptr, ptr %Crrtab, align 8
  %41 = load i32, ptr %Cr, align 4
  %idxprom36 = sext i32 %41 to i64
  %arrayidx37 = getelementptr inbounds i32, ptr %40, i64 %idxprom36
  %42 = load i32, ptr %arrayidx37, align 4
  %add38 = add nsw i32 %42, %conv35
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %39, i64 %idxprom39
  %43 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %43 to i64
  %44 = load ptr, ptr %clamptab, align 8
  %45 = load i32, ptr %Y33, align 4
  %46 = load ptr, ptr %Cbgtab, align 8
  %47 = load i32, ptr %Cb, align 4
  %idxprom42 = sext i32 %47 to i64
  %arrayidx43 = getelementptr inbounds i64, ptr %46, i64 %idxprom42
  %48 = load i64, ptr %arrayidx43, align 8
  %49 = load ptr, ptr %Crgtab, align 8
  %50 = load i32, ptr %Cr, align 4
  %idxprom44 = sext i32 %50 to i64
  %arrayidx45 = getelementptr inbounds i64, ptr %49, i64 %idxprom44
  %51 = load i64, ptr %arrayidx45, align 8
  %add46 = add nsw i64 %48, %51
  %52 = lshr i64 %add46, 16
  %conv48 = trunc i64 %52 to i32
  %add49 = add nsw i32 %45, %conv48
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds i8, ptr %44, i64 %idxprom50
  %53 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %53 to i64
  %shl53 = shl nuw nsw i64 %conv52, 8
  %or54 = or i64 %shl53, %conv41
  %54 = load ptr, ptr %clamptab, align 8
  %55 = load i32, ptr %Y33, align 4
  %56 = load ptr, ptr %Cbbtab, align 8
  %57 = load i32, ptr %Cb, align 4
  %idxprom55 = sext i32 %57 to i64
  %arrayidx56 = getelementptr inbounds i32, ptr %56, i64 %idxprom55
  %58 = load i32, ptr %arrayidx56, align 4
  %add57 = add nsw i32 %55, %58
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds i8, ptr %54, i64 %idxprom58
  %59 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %59 to i64
  %shl61 = shl nuw nsw i64 %conv60, 16
  %or62 = or i64 %or54, %shl61
  %or63 = or i64 %or62, 4278190080
  %60 = load ptr, ptr %cp.addr, align 8
  %arrayidx64 = getelementptr inbounds i64, ptr %60, i64 1
  store i64 %or63, ptr %arrayidx64, align 8
  %add.ptr = getelementptr inbounds i64, ptr %60, i64 2
  store ptr %add.ptr, ptr %cp.addr, align 8
  %61 = load ptr, ptr %pp.addr, align 8
  %add.ptr65 = getelementptr inbounds i8, ptr %61, i64 4
  store ptr %add.ptr65, ptr %pp.addr, align 8
  %62 = load i64, ptr %x.addr, align 8
  %dec = add i64 %62, -1
  store i64 %dec, ptr %x.addr, align 8
  %tobool.not = icmp eq i64 %dec, 0
  br i1 %tobool.not, label %do.end, label %do.body3, !llvm.loop !65

do.end:                                           ; preds = %do.body3
  %63 = load i64, ptr %toskew.addr, align 8
  %64 = load ptr, ptr %cp.addr, align 8
  %add.ptr66 = getelementptr inbounds i64, ptr %64, i64 %63
  store ptr %add.ptr66, ptr %cp.addr, align 8
  %65 = load i64, ptr %fromskew.addr, align 8
  %66 = load ptr, ptr %pp.addr, align 8
  %add.ptr67 = getelementptr inbounds i8, ptr %66, i64 %65
  store ptr %add.ptr67, ptr %pp.addr, align 8
  %67 = load i64, ptr %h.addr, align 8
  %dec69 = add i64 %67, -1
  store i64 %dec69, ptr %h.addr, align 8
  %tobool70.not = icmp eq i64 %dec69, 0
  br i1 %tobool70.not, label %do.end71, label %do.body, !llvm.loop !66

do.end71:                                         ; preds = %do.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @putcontig8bitYCbCr11tile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %pp.addr = alloca ptr, align 8
  %ycbcr = alloca ptr, align 8
  %Crrtab = alloca ptr, align 8
  %Cbbtab = alloca ptr, align 8
  %Crgtab = alloca ptr, align 8
  %Cbgtab = alloca ptr, align 8
  %clamptab = alloca ptr, align 8
  %Cb = alloca i32, align 4
  %Cr = alloca i32, align 4
  %Y = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %ycbcr1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 18
  %1 = load ptr, ptr %ycbcr1, align 8
  store ptr %1, ptr %ycbcr, align 8
  %Cr_r_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %Cr_r_tab, align 8
  store ptr %2, ptr %Crrtab, align 8
  %Cb_b_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %1, i64 0, i32 2
  %3 = load ptr, ptr %Cb_b_tab, align 8
  store ptr %3, ptr %Cbbtab, align 8
  %4 = load ptr, ptr %ycbcr, align 8
  %Cr_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %4, i64 0, i32 3
  %5 = load ptr, ptr %Cr_g_tab, align 8
  store ptr %5, ptr %Crgtab, align 8
  %Cb_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %Cb_g_tab, align 8
  store ptr %6, ptr %Cbgtab, align 8
  %7 = load ptr, ptr %ycbcr, align 8
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %clamptab, align 8
  br label %do.body

do.body:                                          ; preds = %do.end, %entry
  %9 = load i64, ptr %w.addr, align 8
  %shr = lshr i64 %9, 1
  store i64 %shr, ptr %x.addr, align 8
  br label %do.body3

do.body3:                                         ; preds = %do.body3, %do.body
  %10 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 1
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  store i32 %conv, ptr %Cb, align 4
  %arrayidx4 = getelementptr inbounds i8, ptr %10, i64 2
  %12 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %12 to i32
  store i32 %conv5, ptr %Cr, align 4
  %13 = load ptr, ptr %pp.addr, align 8
  %14 = load i8, ptr %13, align 1
  %conv7 = zext i8 %14 to i32
  store i32 %conv7, ptr %Y, align 4
  %15 = load ptr, ptr %clamptab, align 8
  %16 = load ptr, ptr %Crrtab, align 8
  %17 = load i32, ptr %Cr, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %16, i64 %idxprom
  %18 = load i32, ptr %arrayidx8, align 4
  %add = add nsw i32 %18, %conv7
  %idxprom9 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %15, i64 %idxprom9
  %19 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %19 to i64
  %20 = load ptr, ptr %clamptab, align 8
  %21 = load i32, ptr %Y, align 4
  %22 = load ptr, ptr %Cbgtab, align 8
  %23 = load i32, ptr %Cb, align 4
  %idxprom12 = sext i32 %23 to i64
  %arrayidx13 = getelementptr inbounds i64, ptr %22, i64 %idxprom12
  %24 = load i64, ptr %arrayidx13, align 8
  %25 = load ptr, ptr %Crgtab, align 8
  %26 = load i32, ptr %Cr, align 4
  %idxprom14 = sext i32 %26 to i64
  %arrayidx15 = getelementptr inbounds i64, ptr %25, i64 %idxprom14
  %27 = load i64, ptr %arrayidx15, align 8
  %add16 = add nsw i64 %24, %27
  %28 = lshr i64 %add16, 16
  %conv18 = trunc i64 %28 to i32
  %add19 = add nsw i32 %21, %conv18
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %20, i64 %idxprom20
  %29 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %29 to i64
  %shl = shl nuw nsw i64 %conv22, 8
  %or = or i64 %shl, %conv11
  %30 = load ptr, ptr %clamptab, align 8
  %31 = load i32, ptr %Y, align 4
  %32 = load ptr, ptr %Cbbtab, align 8
  %33 = load i32, ptr %Cb, align 4
  %idxprom23 = sext i32 %33 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %32, i64 %idxprom23
  %34 = load i32, ptr %arrayidx24, align 4
  %add25 = add nsw i32 %31, %34
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %30, i64 %idxprom26
  %35 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %35 to i64
  %shl29 = shl nuw nsw i64 %conv28, 16
  %or30 = or i64 %or, %shl29
  %or31 = or i64 %or30, 4278190080
  %36 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %36, i64 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i64 %or31, ptr %36, align 8
  %37 = load ptr, ptr %pp.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %37, i64 3
  store ptr %add.ptr, ptr %pp.addr, align 8
  %38 = load i64, ptr %x.addr, align 8
  %dec = add i64 %38, -1
  store i64 %dec, ptr %x.addr, align 8
  %tobool.not = icmp eq i64 %dec, 0
  br i1 %tobool.not, label %do.end, label %do.body3, !llvm.loop !67

do.end:                                           ; preds = %do.body3
  %39 = load i64, ptr %toskew.addr, align 8
  %40 = load ptr, ptr %cp.addr, align 8
  %add.ptr32 = getelementptr inbounds i64, ptr %40, i64 %39
  store ptr %add.ptr32, ptr %cp.addr, align 8
  %41 = load i64, ptr %fromskew.addr, align 8
  %42 = load ptr, ptr %pp.addr, align 8
  %add.ptr33 = getelementptr inbounds i8, ptr %42, i64 %41
  store ptr %add.ptr33, ptr %pp.addr, align 8
  %43 = load i64, ptr %h.addr, align 8
  %dec35 = add i64 %43, -1
  store i64 %dec35, ptr %h.addr, align 8
  %tobool36.not = icmp eq i64 %dec35, 0
  br i1 %tobool36.not, label %do.end37, label %do.body, !llvm.loop !68

do.end37:                                         ; preds = %do.end
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nounwind ssp uwtable
define internal void @putRGBAAseparate8bittile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %r, ptr noundef %g, ptr noundef %b, ptr noundef %a) #0 {
entry:
  %cp.addr = alloca ptr, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %_x = alloca i64, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %r, ptr %r.addr, align 8
  store ptr %g, ptr %g.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i64, ptr %h.addr, align 8
  %dec = add i64 %0, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp.not = icmp eq i64 %0, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %1 = load i64, ptr %w.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %storemerge = phi i64 [ %1, %while.body ], [ %sub, %for.body ]
  store i64 %storemerge, ptr %_x, align 8
  %cmp1 = icmp ugt i64 %storemerge, 7
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %r.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %r.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv = zext i8 %3 to i64
  %4 = load ptr, ptr %g.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %incdec.ptr2, ptr %g.addr, align 8
  %5 = load i8, ptr %4, align 1
  %conv3 = zext i8 %5 to i64
  %shl = shl nuw nsw i64 %conv3, 8
  %or = or i64 %shl, %conv
  %6 = load ptr, ptr %b.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr4, ptr %b.addr, align 8
  %7 = load i8, ptr %6, align 1
  %conv5 = zext i8 %7 to i64
  %shl6 = shl nuw nsw i64 %conv5, 16
  %or7 = or i64 %or, %shl6
  %8 = load ptr, ptr %a.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %incdec.ptr8, ptr %a.addr, align 8
  %9 = load i8, ptr %8, align 1
  %conv9 = zext i8 %9 to i64
  %shl10 = shl nuw nsw i64 %conv9, 24
  %or11 = or i64 %or7, %shl10
  %10 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i64, ptr %10, i64 1
  store ptr %incdec.ptr12, ptr %cp.addr, align 8
  store i64 %or11, ptr %10, align 8
  %11 = load ptr, ptr %r.addr, align 8
  %incdec.ptr13 = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %incdec.ptr13, ptr %r.addr, align 8
  %12 = load i8, ptr %11, align 1
  %conv14 = zext i8 %12 to i64
  %13 = load ptr, ptr %g.addr, align 8
  %incdec.ptr15 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %incdec.ptr15, ptr %g.addr, align 8
  %14 = load i8, ptr %13, align 1
  %conv16 = zext i8 %14 to i64
  %shl17 = shl nuw nsw i64 %conv16, 8
  %or18 = or i64 %shl17, %conv14
  %15 = load ptr, ptr %b.addr, align 8
  %incdec.ptr19 = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %incdec.ptr19, ptr %b.addr, align 8
  %16 = load i8, ptr %15, align 1
  %conv20 = zext i8 %16 to i64
  %shl21 = shl nuw nsw i64 %conv20, 16
  %or22 = or i64 %or18, %shl21
  %17 = load ptr, ptr %a.addr, align 8
  %incdec.ptr23 = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %incdec.ptr23, ptr %a.addr, align 8
  %18 = load i8, ptr %17, align 1
  %conv24 = zext i8 %18 to i64
  %shl25 = shl nuw nsw i64 %conv24, 24
  %or26 = or i64 %or22, %shl25
  %19 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr27 = getelementptr inbounds i64, ptr %19, i64 1
  store ptr %incdec.ptr27, ptr %cp.addr, align 8
  store i64 %or26, ptr %19, align 8
  %20 = load ptr, ptr %r.addr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %incdec.ptr28, ptr %r.addr, align 8
  %21 = load i8, ptr %20, align 1
  %conv29 = zext i8 %21 to i64
  %22 = load ptr, ptr %g.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %incdec.ptr30, ptr %g.addr, align 8
  %23 = load i8, ptr %22, align 1
  %conv31 = zext i8 %23 to i64
  %shl32 = shl nuw nsw i64 %conv31, 8
  %or33 = or i64 %shl32, %conv29
  %24 = load ptr, ptr %b.addr, align 8
  %incdec.ptr34 = getelementptr inbounds i8, ptr %24, i64 1
  store ptr %incdec.ptr34, ptr %b.addr, align 8
  %25 = load i8, ptr %24, align 1
  %conv35 = zext i8 %25 to i64
  %shl36 = shl nuw nsw i64 %conv35, 16
  %or37 = or i64 %or33, %shl36
  %26 = load ptr, ptr %a.addr, align 8
  %incdec.ptr38 = getelementptr inbounds i8, ptr %26, i64 1
  store ptr %incdec.ptr38, ptr %a.addr, align 8
  %27 = load i8, ptr %26, align 1
  %conv39 = zext i8 %27 to i64
  %shl40 = shl nuw nsw i64 %conv39, 24
  %or41 = or i64 %or37, %shl40
  %28 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr42 = getelementptr inbounds i64, ptr %28, i64 1
  store ptr %incdec.ptr42, ptr %cp.addr, align 8
  store i64 %or41, ptr %28, align 8
  %29 = load ptr, ptr %r.addr, align 8
  %incdec.ptr43 = getelementptr inbounds i8, ptr %29, i64 1
  store ptr %incdec.ptr43, ptr %r.addr, align 8
  %30 = load i8, ptr %29, align 1
  %conv44 = zext i8 %30 to i64
  %31 = load ptr, ptr %g.addr, align 8
  %incdec.ptr45 = getelementptr inbounds i8, ptr %31, i64 1
  store ptr %incdec.ptr45, ptr %g.addr, align 8
  %32 = load i8, ptr %31, align 1
  %conv46 = zext i8 %32 to i64
  %shl47 = shl nuw nsw i64 %conv46, 8
  %or48 = or i64 %shl47, %conv44
  %33 = load ptr, ptr %b.addr, align 8
  %incdec.ptr49 = getelementptr inbounds i8, ptr %33, i64 1
  store ptr %incdec.ptr49, ptr %b.addr, align 8
  %34 = load i8, ptr %33, align 1
  %conv50 = zext i8 %34 to i64
  %shl51 = shl nuw nsw i64 %conv50, 16
  %or52 = or i64 %or48, %shl51
  %35 = load ptr, ptr %a.addr, align 8
  %incdec.ptr53 = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %incdec.ptr53, ptr %a.addr, align 8
  %36 = load i8, ptr %35, align 1
  %conv54 = zext i8 %36 to i64
  %shl55 = shl nuw nsw i64 %conv54, 24
  %or56 = or i64 %or52, %shl55
  %37 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr57 = getelementptr inbounds i64, ptr %37, i64 1
  store ptr %incdec.ptr57, ptr %cp.addr, align 8
  store i64 %or56, ptr %37, align 8
  %38 = load ptr, ptr %r.addr, align 8
  %incdec.ptr58 = getelementptr inbounds i8, ptr %38, i64 1
  store ptr %incdec.ptr58, ptr %r.addr, align 8
  %39 = load i8, ptr %38, align 1
  %conv59 = zext i8 %39 to i64
  %40 = load ptr, ptr %g.addr, align 8
  %incdec.ptr60 = getelementptr inbounds i8, ptr %40, i64 1
  store ptr %incdec.ptr60, ptr %g.addr, align 8
  %41 = load i8, ptr %40, align 1
  %conv61 = zext i8 %41 to i64
  %shl62 = shl nuw nsw i64 %conv61, 8
  %or63 = or i64 %shl62, %conv59
  %42 = load ptr, ptr %b.addr, align 8
  %incdec.ptr64 = getelementptr inbounds i8, ptr %42, i64 1
  store ptr %incdec.ptr64, ptr %b.addr, align 8
  %43 = load i8, ptr %42, align 1
  %conv65 = zext i8 %43 to i64
  %shl66 = shl nuw nsw i64 %conv65, 16
  %or67 = or i64 %or63, %shl66
  %44 = load ptr, ptr %a.addr, align 8
  %incdec.ptr68 = getelementptr inbounds i8, ptr %44, i64 1
  store ptr %incdec.ptr68, ptr %a.addr, align 8
  %45 = load i8, ptr %44, align 1
  %conv69 = zext i8 %45 to i64
  %shl70 = shl nuw nsw i64 %conv69, 24
  %or71 = or i64 %or67, %shl70
  %46 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr72 = getelementptr inbounds i64, ptr %46, i64 1
  store ptr %incdec.ptr72, ptr %cp.addr, align 8
  store i64 %or71, ptr %46, align 8
  %47 = load ptr, ptr %r.addr, align 8
  %incdec.ptr73 = getelementptr inbounds i8, ptr %47, i64 1
  store ptr %incdec.ptr73, ptr %r.addr, align 8
  %48 = load i8, ptr %47, align 1
  %conv74 = zext i8 %48 to i64
  %49 = load ptr, ptr %g.addr, align 8
  %incdec.ptr75 = getelementptr inbounds i8, ptr %49, i64 1
  store ptr %incdec.ptr75, ptr %g.addr, align 8
  %50 = load i8, ptr %49, align 1
  %conv76 = zext i8 %50 to i64
  %shl77 = shl nuw nsw i64 %conv76, 8
  %or78 = or i64 %shl77, %conv74
  %51 = load ptr, ptr %b.addr, align 8
  %incdec.ptr79 = getelementptr inbounds i8, ptr %51, i64 1
  store ptr %incdec.ptr79, ptr %b.addr, align 8
  %52 = load i8, ptr %51, align 1
  %conv80 = zext i8 %52 to i64
  %shl81 = shl nuw nsw i64 %conv80, 16
  %or82 = or i64 %or78, %shl81
  %53 = load ptr, ptr %a.addr, align 8
  %incdec.ptr83 = getelementptr inbounds i8, ptr %53, i64 1
  store ptr %incdec.ptr83, ptr %a.addr, align 8
  %54 = load i8, ptr %53, align 1
  %conv84 = zext i8 %54 to i64
  %shl85 = shl nuw nsw i64 %conv84, 24
  %or86 = or i64 %or82, %shl85
  %55 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr87 = getelementptr inbounds i64, ptr %55, i64 1
  store ptr %incdec.ptr87, ptr %cp.addr, align 8
  store i64 %or86, ptr %55, align 8
  %56 = load ptr, ptr %r.addr, align 8
  %incdec.ptr88 = getelementptr inbounds i8, ptr %56, i64 1
  store ptr %incdec.ptr88, ptr %r.addr, align 8
  %57 = load i8, ptr %56, align 1
  %conv89 = zext i8 %57 to i64
  %58 = load ptr, ptr %g.addr, align 8
  %incdec.ptr90 = getelementptr inbounds i8, ptr %58, i64 1
  store ptr %incdec.ptr90, ptr %g.addr, align 8
  %59 = load i8, ptr %58, align 1
  %conv91 = zext i8 %59 to i64
  %shl92 = shl nuw nsw i64 %conv91, 8
  %or93 = or i64 %shl92, %conv89
  %60 = load ptr, ptr %b.addr, align 8
  %incdec.ptr94 = getelementptr inbounds i8, ptr %60, i64 1
  store ptr %incdec.ptr94, ptr %b.addr, align 8
  %61 = load i8, ptr %60, align 1
  %conv95 = zext i8 %61 to i64
  %shl96 = shl nuw nsw i64 %conv95, 16
  %or97 = or i64 %or93, %shl96
  %62 = load ptr, ptr %a.addr, align 8
  %incdec.ptr98 = getelementptr inbounds i8, ptr %62, i64 1
  store ptr %incdec.ptr98, ptr %a.addr, align 8
  %63 = load i8, ptr %62, align 1
  %conv99 = zext i8 %63 to i64
  %shl100 = shl nuw nsw i64 %conv99, 24
  %or101 = or i64 %or97, %shl100
  %64 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr102 = getelementptr inbounds i64, ptr %64, i64 1
  store ptr %incdec.ptr102, ptr %cp.addr, align 8
  store i64 %or101, ptr %64, align 8
  %65 = load ptr, ptr %r.addr, align 8
  %incdec.ptr103 = getelementptr inbounds i8, ptr %65, i64 1
  store ptr %incdec.ptr103, ptr %r.addr, align 8
  %66 = load i8, ptr %65, align 1
  %conv104 = zext i8 %66 to i64
  %67 = load ptr, ptr %g.addr, align 8
  %incdec.ptr105 = getelementptr inbounds i8, ptr %67, i64 1
  store ptr %incdec.ptr105, ptr %g.addr, align 8
  %68 = load i8, ptr %67, align 1
  %conv106 = zext i8 %68 to i64
  %shl107 = shl nuw nsw i64 %conv106, 8
  %or108 = or i64 %shl107, %conv104
  %69 = load ptr, ptr %b.addr, align 8
  %incdec.ptr109 = getelementptr inbounds i8, ptr %69, i64 1
  store ptr %incdec.ptr109, ptr %b.addr, align 8
  %70 = load i8, ptr %69, align 1
  %conv110 = zext i8 %70 to i64
  %shl111 = shl nuw nsw i64 %conv110, 16
  %or112 = or i64 %or108, %shl111
  %71 = load ptr, ptr %a.addr, align 8
  %incdec.ptr113 = getelementptr inbounds i8, ptr %71, i64 1
  store ptr %incdec.ptr113, ptr %a.addr, align 8
  %72 = load i8, ptr %71, align 1
  %conv114 = zext i8 %72 to i64
  %shl115 = shl nuw nsw i64 %conv114, 24
  %or116 = or i64 %or112, %shl115
  %73 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr117 = getelementptr inbounds i64, ptr %73, i64 1
  store ptr %incdec.ptr117, ptr %cp.addr, align 8
  store i64 %or116, ptr %73, align 8
  %74 = load i64, ptr %_x, align 8
  %sub = add i64 %74, -8
  br label %for.cond, !llvm.loop !69

for.end:                                          ; preds = %for.cond
  %75 = load i64, ptr %_x, align 8
  %cmp118.not = icmp eq i64 %75, 0
  br i1 %cmp118.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %76 = load i64, ptr %_x, align 8
  switch i64 %76, label %if.end [
    i64 7, label %sw.bb
    i64 6, label %sw.bb135
    i64 5, label %sw.bb151
    i64 4, label %sw.bb167
    i64 3, label %sw.bb183
    i64 2, label %sw.bb199
    i64 1, label %sw.bb215
  ]

sw.bb:                                            ; preds = %if.then
  %77 = load ptr, ptr %r.addr, align 8
  %incdec.ptr120 = getelementptr inbounds i8, ptr %77, i64 1
  store ptr %incdec.ptr120, ptr %r.addr, align 8
  %78 = load i8, ptr %77, align 1
  %conv121 = zext i8 %78 to i64
  %79 = load ptr, ptr %g.addr, align 8
  %incdec.ptr122 = getelementptr inbounds i8, ptr %79, i64 1
  store ptr %incdec.ptr122, ptr %g.addr, align 8
  %80 = load i8, ptr %79, align 1
  %conv123 = zext i8 %80 to i64
  %shl124 = shl nuw nsw i64 %conv123, 8
  %or125 = or i64 %shl124, %conv121
  %81 = load ptr, ptr %b.addr, align 8
  %incdec.ptr126 = getelementptr inbounds i8, ptr %81, i64 1
  store ptr %incdec.ptr126, ptr %b.addr, align 8
  %82 = load i8, ptr %81, align 1
  %conv127 = zext i8 %82 to i64
  %shl128 = shl nuw nsw i64 %conv127, 16
  %or129 = or i64 %or125, %shl128
  %83 = load ptr, ptr %a.addr, align 8
  %incdec.ptr130 = getelementptr inbounds i8, ptr %83, i64 1
  store ptr %incdec.ptr130, ptr %a.addr, align 8
  %84 = load i8, ptr %83, align 1
  %conv131 = zext i8 %84 to i64
  %shl132 = shl nuw nsw i64 %conv131, 24
  %or133 = or i64 %or129, %shl132
  %85 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr134 = getelementptr inbounds i64, ptr %85, i64 1
  store ptr %incdec.ptr134, ptr %cp.addr, align 8
  store i64 %or133, ptr %85, align 8
  br label %sw.bb135

sw.bb135:                                         ; preds = %sw.bb, %if.then
  %86 = load ptr, ptr %r.addr, align 8
  %incdec.ptr136 = getelementptr inbounds i8, ptr %86, i64 1
  store ptr %incdec.ptr136, ptr %r.addr, align 8
  %87 = load i8, ptr %86, align 1
  %conv137 = zext i8 %87 to i64
  %88 = load ptr, ptr %g.addr, align 8
  %incdec.ptr138 = getelementptr inbounds i8, ptr %88, i64 1
  store ptr %incdec.ptr138, ptr %g.addr, align 8
  %89 = load i8, ptr %88, align 1
  %conv139 = zext i8 %89 to i64
  %shl140 = shl nuw nsw i64 %conv139, 8
  %or141 = or i64 %shl140, %conv137
  %90 = load ptr, ptr %b.addr, align 8
  %incdec.ptr142 = getelementptr inbounds i8, ptr %90, i64 1
  store ptr %incdec.ptr142, ptr %b.addr, align 8
  %91 = load i8, ptr %90, align 1
  %conv143 = zext i8 %91 to i64
  %shl144 = shl nuw nsw i64 %conv143, 16
  %or145 = or i64 %or141, %shl144
  %92 = load ptr, ptr %a.addr, align 8
  %incdec.ptr146 = getelementptr inbounds i8, ptr %92, i64 1
  store ptr %incdec.ptr146, ptr %a.addr, align 8
  %93 = load i8, ptr %92, align 1
  %conv147 = zext i8 %93 to i64
  %shl148 = shl nuw nsw i64 %conv147, 24
  %or149 = or i64 %or145, %shl148
  %94 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr150 = getelementptr inbounds i64, ptr %94, i64 1
  store ptr %incdec.ptr150, ptr %cp.addr, align 8
  store i64 %or149, ptr %94, align 8
  br label %sw.bb151

sw.bb151:                                         ; preds = %sw.bb135, %if.then
  %95 = load ptr, ptr %r.addr, align 8
  %incdec.ptr152 = getelementptr inbounds i8, ptr %95, i64 1
  store ptr %incdec.ptr152, ptr %r.addr, align 8
  %96 = load i8, ptr %95, align 1
  %conv153 = zext i8 %96 to i64
  %97 = load ptr, ptr %g.addr, align 8
  %incdec.ptr154 = getelementptr inbounds i8, ptr %97, i64 1
  store ptr %incdec.ptr154, ptr %g.addr, align 8
  %98 = load i8, ptr %97, align 1
  %conv155 = zext i8 %98 to i64
  %shl156 = shl nuw nsw i64 %conv155, 8
  %or157 = or i64 %shl156, %conv153
  %99 = load ptr, ptr %b.addr, align 8
  %incdec.ptr158 = getelementptr inbounds i8, ptr %99, i64 1
  store ptr %incdec.ptr158, ptr %b.addr, align 8
  %100 = load i8, ptr %99, align 1
  %conv159 = zext i8 %100 to i64
  %shl160 = shl nuw nsw i64 %conv159, 16
  %or161 = or i64 %or157, %shl160
  %101 = load ptr, ptr %a.addr, align 8
  %incdec.ptr162 = getelementptr inbounds i8, ptr %101, i64 1
  store ptr %incdec.ptr162, ptr %a.addr, align 8
  %102 = load i8, ptr %101, align 1
  %conv163 = zext i8 %102 to i64
  %shl164 = shl nuw nsw i64 %conv163, 24
  %or165 = or i64 %or161, %shl164
  %103 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr166 = getelementptr inbounds i64, ptr %103, i64 1
  store ptr %incdec.ptr166, ptr %cp.addr, align 8
  store i64 %or165, ptr %103, align 8
  br label %sw.bb167

sw.bb167:                                         ; preds = %sw.bb151, %if.then
  %104 = load ptr, ptr %r.addr, align 8
  %incdec.ptr168 = getelementptr inbounds i8, ptr %104, i64 1
  store ptr %incdec.ptr168, ptr %r.addr, align 8
  %105 = load i8, ptr %104, align 1
  %conv169 = zext i8 %105 to i64
  %106 = load ptr, ptr %g.addr, align 8
  %incdec.ptr170 = getelementptr inbounds i8, ptr %106, i64 1
  store ptr %incdec.ptr170, ptr %g.addr, align 8
  %107 = load i8, ptr %106, align 1
  %conv171 = zext i8 %107 to i64
  %shl172 = shl nuw nsw i64 %conv171, 8
  %or173 = or i64 %shl172, %conv169
  %108 = load ptr, ptr %b.addr, align 8
  %incdec.ptr174 = getelementptr inbounds i8, ptr %108, i64 1
  store ptr %incdec.ptr174, ptr %b.addr, align 8
  %109 = load i8, ptr %108, align 1
  %conv175 = zext i8 %109 to i64
  %shl176 = shl nuw nsw i64 %conv175, 16
  %or177 = or i64 %or173, %shl176
  %110 = load ptr, ptr %a.addr, align 8
  %incdec.ptr178 = getelementptr inbounds i8, ptr %110, i64 1
  store ptr %incdec.ptr178, ptr %a.addr, align 8
  %111 = load i8, ptr %110, align 1
  %conv179 = zext i8 %111 to i64
  %shl180 = shl nuw nsw i64 %conv179, 24
  %or181 = or i64 %or177, %shl180
  %112 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr182 = getelementptr inbounds i64, ptr %112, i64 1
  store ptr %incdec.ptr182, ptr %cp.addr, align 8
  store i64 %or181, ptr %112, align 8
  br label %sw.bb183

sw.bb183:                                         ; preds = %sw.bb167, %if.then
  %113 = load ptr, ptr %r.addr, align 8
  %incdec.ptr184 = getelementptr inbounds i8, ptr %113, i64 1
  store ptr %incdec.ptr184, ptr %r.addr, align 8
  %114 = load i8, ptr %113, align 1
  %conv185 = zext i8 %114 to i64
  %115 = load ptr, ptr %g.addr, align 8
  %incdec.ptr186 = getelementptr inbounds i8, ptr %115, i64 1
  store ptr %incdec.ptr186, ptr %g.addr, align 8
  %116 = load i8, ptr %115, align 1
  %conv187 = zext i8 %116 to i64
  %shl188 = shl nuw nsw i64 %conv187, 8
  %or189 = or i64 %shl188, %conv185
  %117 = load ptr, ptr %b.addr, align 8
  %incdec.ptr190 = getelementptr inbounds i8, ptr %117, i64 1
  store ptr %incdec.ptr190, ptr %b.addr, align 8
  %118 = load i8, ptr %117, align 1
  %conv191 = zext i8 %118 to i64
  %shl192 = shl nuw nsw i64 %conv191, 16
  %or193 = or i64 %or189, %shl192
  %119 = load ptr, ptr %a.addr, align 8
  %incdec.ptr194 = getelementptr inbounds i8, ptr %119, i64 1
  store ptr %incdec.ptr194, ptr %a.addr, align 8
  %120 = load i8, ptr %119, align 1
  %conv195 = zext i8 %120 to i64
  %shl196 = shl nuw nsw i64 %conv195, 24
  %or197 = or i64 %or193, %shl196
  %121 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr198 = getelementptr inbounds i64, ptr %121, i64 1
  store ptr %incdec.ptr198, ptr %cp.addr, align 8
  store i64 %or197, ptr %121, align 8
  br label %sw.bb199

sw.bb199:                                         ; preds = %sw.bb183, %if.then
  %122 = load ptr, ptr %r.addr, align 8
  %incdec.ptr200 = getelementptr inbounds i8, ptr %122, i64 1
  store ptr %incdec.ptr200, ptr %r.addr, align 8
  %123 = load i8, ptr %122, align 1
  %conv201 = zext i8 %123 to i64
  %124 = load ptr, ptr %g.addr, align 8
  %incdec.ptr202 = getelementptr inbounds i8, ptr %124, i64 1
  store ptr %incdec.ptr202, ptr %g.addr, align 8
  %125 = load i8, ptr %124, align 1
  %conv203 = zext i8 %125 to i64
  %shl204 = shl nuw nsw i64 %conv203, 8
  %or205 = or i64 %shl204, %conv201
  %126 = load ptr, ptr %b.addr, align 8
  %incdec.ptr206 = getelementptr inbounds i8, ptr %126, i64 1
  store ptr %incdec.ptr206, ptr %b.addr, align 8
  %127 = load i8, ptr %126, align 1
  %conv207 = zext i8 %127 to i64
  %shl208 = shl nuw nsw i64 %conv207, 16
  %or209 = or i64 %or205, %shl208
  %128 = load ptr, ptr %a.addr, align 8
  %incdec.ptr210 = getelementptr inbounds i8, ptr %128, i64 1
  store ptr %incdec.ptr210, ptr %a.addr, align 8
  %129 = load i8, ptr %128, align 1
  %conv211 = zext i8 %129 to i64
  %shl212 = shl nuw nsw i64 %conv211, 24
  %or213 = or i64 %or209, %shl212
  %130 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr214 = getelementptr inbounds i64, ptr %130, i64 1
  store ptr %incdec.ptr214, ptr %cp.addr, align 8
  store i64 %or213, ptr %130, align 8
  br label %sw.bb215

sw.bb215:                                         ; preds = %sw.bb199, %if.then
  %131 = load ptr, ptr %r.addr, align 8
  %incdec.ptr216 = getelementptr inbounds i8, ptr %131, i64 1
  store ptr %incdec.ptr216, ptr %r.addr, align 8
  %132 = load i8, ptr %131, align 1
  %conv217 = zext i8 %132 to i64
  %133 = load ptr, ptr %g.addr, align 8
  %incdec.ptr218 = getelementptr inbounds i8, ptr %133, i64 1
  store ptr %incdec.ptr218, ptr %g.addr, align 8
  %134 = load i8, ptr %133, align 1
  %conv219 = zext i8 %134 to i64
  %shl220 = shl nuw nsw i64 %conv219, 8
  %or221 = or i64 %shl220, %conv217
  %135 = load ptr, ptr %b.addr, align 8
  %incdec.ptr222 = getelementptr inbounds i8, ptr %135, i64 1
  store ptr %incdec.ptr222, ptr %b.addr, align 8
  %136 = load i8, ptr %135, align 1
  %conv223 = zext i8 %136 to i64
  %shl224 = shl nuw nsw i64 %conv223, 16
  %or225 = or i64 %or221, %shl224
  %137 = load ptr, ptr %a.addr, align 8
  %incdec.ptr226 = getelementptr inbounds i8, ptr %137, i64 1
  store ptr %incdec.ptr226, ptr %a.addr, align 8
  %138 = load i8, ptr %137, align 1
  %conv227 = zext i8 %138 to i64
  %shl228 = shl nuw nsw i64 %conv227, 24
  %or229 = or i64 %or225, %shl228
  %139 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr230 = getelementptr inbounds i64, ptr %139, i64 1
  store ptr %incdec.ptr230, ptr %cp.addr, align 8
  store i64 %or229, ptr %139, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb215, %for.end
  %140 = load i64, ptr %fromskew.addr, align 8
  %141 = load ptr, ptr %r.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %141, i64 %140
  store ptr %add.ptr, ptr %r.addr, align 8
  %142 = load ptr, ptr %g.addr, align 8
  %add.ptr231 = getelementptr inbounds i8, ptr %142, i64 %140
  store ptr %add.ptr231, ptr %g.addr, align 8
  %143 = load i64, ptr %fromskew.addr, align 8
  %144 = load ptr, ptr %b.addr, align 8
  %add.ptr232 = getelementptr inbounds i8, ptr %144, i64 %143
  store ptr %add.ptr232, ptr %b.addr, align 8
  %145 = load ptr, ptr %a.addr, align 8
  %add.ptr233 = getelementptr inbounds i8, ptr %145, i64 %143
  store ptr %add.ptr233, ptr %a.addr, align 8
  %146 = load i64, ptr %toskew.addr, align 8
  %147 = load ptr, ptr %cp.addr, align 8
  %add.ptr234 = getelementptr inbounds i64, ptr %147, i64 %146
  store ptr %add.ptr234, ptr %cp.addr, align 8
  br label %while.cond, !llvm.loop !70

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @putRGBUAseparate8bittile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %r, ptr noundef %g, ptr noundef %b, ptr noundef %a) #0 {
entry:
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i64, align 8
  %gv = alloca i64, align 8
  %av = alloca i64, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %r, ptr %r.addr, align 8
  store ptr %g, ptr %g.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = load i64, ptr %h.addr, align 8
  %dec = add i64 %0, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp.not = icmp eq i64 %0, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %1 = load i64, ptr %w.addr, align 8
  store i64 %1, ptr %x.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %2 = load i64, ptr %x.addr, align 8
  %dec1 = add i64 %2, -1
  store i64 %dec1, ptr %x.addr, align 8
  %cmp2.not = icmp eq i64 %2, 0
  br i1 %cmp2.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %a.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %incdec.ptr, ptr %a.addr, align 8
  %4 = load i8, ptr %3, align 1
  %conv = zext i8 %4 to i64
  store i64 %conv, ptr %av, align 8
  %5 = load ptr, ptr %r.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %incdec.ptr3, ptr %r.addr, align 8
  %6 = load i8, ptr %5, align 1
  %conv4 = zext i8 %6 to i64
  %mul = mul nuw nsw i64 %conv4, %conv
  %div = udiv i64 %mul, 255
  store i64 %div, ptr %rv, align 8
  %7 = load ptr, ptr %g.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %incdec.ptr5, ptr %g.addr, align 8
  %8 = load i8, ptr %7, align 1
  %conv6 = zext i8 %8 to i64
  %9 = load i64, ptr %av, align 8
  %mul7 = mul i64 %9, %conv6
  %div8 = udiv i64 %mul7, 255
  store i64 %div8, ptr %gv, align 8
  %10 = load ptr, ptr %b.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %incdec.ptr9, ptr %b.addr, align 8
  %11 = load i8, ptr %10, align 1
  %conv10 = zext i8 %11 to i64
  %12 = load i64, ptr %av, align 8
  %mul11 = mul i64 %12, %conv10
  %div12 = udiv i64 %mul11, 255
  %13 = load i64, ptr %rv, align 8
  %14 = load i64, ptr %gv, align 8
  %shl = shl i64 %14, 8
  %or = or i64 %13, %shl
  %shl13 = shl i64 %div12, 16
  %or14 = or i64 %or, %shl13
  %15 = load i64, ptr %av, align 8
  %shl15 = shl i64 %15, 24
  %or16 = or i64 %or14, %shl15
  %16 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr17 = getelementptr inbounds i64, ptr %16, i64 1
  store ptr %incdec.ptr17, ptr %cp.addr, align 8
  store i64 %or16, ptr %16, align 8
  br label %for.cond, !llvm.loop !71

for.end:                                          ; preds = %for.cond
  %17 = load i64, ptr %fromskew.addr, align 8
  %18 = load ptr, ptr %r.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %18, i64 %17
  store ptr %add.ptr, ptr %r.addr, align 8
  %19 = load ptr, ptr %g.addr, align 8
  %add.ptr18 = getelementptr inbounds i8, ptr %19, i64 %17
  store ptr %add.ptr18, ptr %g.addr, align 8
  %20 = load i64, ptr %fromskew.addr, align 8
  %21 = load ptr, ptr %b.addr, align 8
  %add.ptr19 = getelementptr inbounds i8, ptr %21, i64 %20
  store ptr %add.ptr19, ptr %b.addr, align 8
  %22 = load ptr, ptr %a.addr, align 8
  %add.ptr20 = getelementptr inbounds i8, ptr %22, i64 %20
  store ptr %add.ptr20, ptr %a.addr, align 8
  %23 = load i64, ptr %toskew.addr, align 8
  %24 = load ptr, ptr %cp.addr, align 8
  %add.ptr21 = getelementptr inbounds i64, ptr %24, i64 %23
  store ptr %add.ptr21, ptr %cp.addr, align 8
  br label %while.cond, !llvm.loop !72

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @putRGBseparate8bittile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %r, ptr noundef %g, ptr noundef %b, ptr noundef %a) #0 {
entry:
  %cp.addr = alloca ptr, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %_x = alloca i64, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %r, ptr %r.addr, align 8
  store ptr %g, ptr %g.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i64, ptr %h.addr, align 8
  %dec = add i64 %0, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp.not = icmp eq i64 %0, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %1 = load i64, ptr %w.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %storemerge = phi i64 [ %1, %while.body ], [ %sub, %for.body ]
  store i64 %storemerge, ptr %_x, align 8
  %cmp1 = icmp ugt i64 %storemerge, 7
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %r.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %r.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv = zext i8 %3 to i64
  %4 = load ptr, ptr %g.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %incdec.ptr2, ptr %g.addr, align 8
  %5 = load i8, ptr %4, align 1
  %conv3 = zext i8 %5 to i64
  %shl = shl nuw nsw i64 %conv3, 8
  %or = or i64 %shl, %conv
  %6 = load ptr, ptr %b.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr4, ptr %b.addr, align 8
  %7 = load i8, ptr %6, align 1
  %conv5 = zext i8 %7 to i64
  %shl6 = shl nuw nsw i64 %conv5, 16
  %or7 = or i64 %or, %shl6
  %or8 = or i64 %or7, 4278190080
  %8 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i64, ptr %8, i64 1
  store ptr %incdec.ptr9, ptr %cp.addr, align 8
  store i64 %or8, ptr %8, align 8
  %9 = load ptr, ptr %r.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %incdec.ptr10, ptr %r.addr, align 8
  %10 = load i8, ptr %9, align 1
  %conv11 = zext i8 %10 to i64
  %11 = load ptr, ptr %g.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %incdec.ptr12, ptr %g.addr, align 8
  %12 = load i8, ptr %11, align 1
  %conv13 = zext i8 %12 to i64
  %shl14 = shl nuw nsw i64 %conv13, 8
  %or15 = or i64 %shl14, %conv11
  %13 = load ptr, ptr %b.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %incdec.ptr16, ptr %b.addr, align 8
  %14 = load i8, ptr %13, align 1
  %conv17 = zext i8 %14 to i64
  %shl18 = shl nuw nsw i64 %conv17, 16
  %or19 = or i64 %or15, %shl18
  %or20 = or i64 %or19, 4278190080
  %15 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr21 = getelementptr inbounds i64, ptr %15, i64 1
  store ptr %incdec.ptr21, ptr %cp.addr, align 8
  store i64 %or20, ptr %15, align 8
  %16 = load ptr, ptr %r.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %incdec.ptr22, ptr %r.addr, align 8
  %17 = load i8, ptr %16, align 1
  %conv23 = zext i8 %17 to i64
  %18 = load ptr, ptr %g.addr, align 8
  %incdec.ptr24 = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %incdec.ptr24, ptr %g.addr, align 8
  %19 = load i8, ptr %18, align 1
  %conv25 = zext i8 %19 to i64
  %shl26 = shl nuw nsw i64 %conv25, 8
  %or27 = or i64 %shl26, %conv23
  %20 = load ptr, ptr %b.addr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %incdec.ptr28, ptr %b.addr, align 8
  %21 = load i8, ptr %20, align 1
  %conv29 = zext i8 %21 to i64
  %shl30 = shl nuw nsw i64 %conv29, 16
  %or31 = or i64 %or27, %shl30
  %or32 = or i64 %or31, 4278190080
  %22 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr33 = getelementptr inbounds i64, ptr %22, i64 1
  store ptr %incdec.ptr33, ptr %cp.addr, align 8
  store i64 %or32, ptr %22, align 8
  %23 = load ptr, ptr %r.addr, align 8
  %incdec.ptr34 = getelementptr inbounds i8, ptr %23, i64 1
  store ptr %incdec.ptr34, ptr %r.addr, align 8
  %24 = load i8, ptr %23, align 1
  %conv35 = zext i8 %24 to i64
  %25 = load ptr, ptr %g.addr, align 8
  %incdec.ptr36 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %incdec.ptr36, ptr %g.addr, align 8
  %26 = load i8, ptr %25, align 1
  %conv37 = zext i8 %26 to i64
  %shl38 = shl nuw nsw i64 %conv37, 8
  %or39 = or i64 %shl38, %conv35
  %27 = load ptr, ptr %b.addr, align 8
  %incdec.ptr40 = getelementptr inbounds i8, ptr %27, i64 1
  store ptr %incdec.ptr40, ptr %b.addr, align 8
  %28 = load i8, ptr %27, align 1
  %conv41 = zext i8 %28 to i64
  %shl42 = shl nuw nsw i64 %conv41, 16
  %or43 = or i64 %or39, %shl42
  %or44 = or i64 %or43, 4278190080
  %29 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr45 = getelementptr inbounds i64, ptr %29, i64 1
  store ptr %incdec.ptr45, ptr %cp.addr, align 8
  store i64 %or44, ptr %29, align 8
  %30 = load ptr, ptr %r.addr, align 8
  %incdec.ptr46 = getelementptr inbounds i8, ptr %30, i64 1
  store ptr %incdec.ptr46, ptr %r.addr, align 8
  %31 = load i8, ptr %30, align 1
  %conv47 = zext i8 %31 to i64
  %32 = load ptr, ptr %g.addr, align 8
  %incdec.ptr48 = getelementptr inbounds i8, ptr %32, i64 1
  store ptr %incdec.ptr48, ptr %g.addr, align 8
  %33 = load i8, ptr %32, align 1
  %conv49 = zext i8 %33 to i64
  %shl50 = shl nuw nsw i64 %conv49, 8
  %or51 = or i64 %shl50, %conv47
  %34 = load ptr, ptr %b.addr, align 8
  %incdec.ptr52 = getelementptr inbounds i8, ptr %34, i64 1
  store ptr %incdec.ptr52, ptr %b.addr, align 8
  %35 = load i8, ptr %34, align 1
  %conv53 = zext i8 %35 to i64
  %shl54 = shl nuw nsw i64 %conv53, 16
  %or55 = or i64 %or51, %shl54
  %or56 = or i64 %or55, 4278190080
  %36 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr57 = getelementptr inbounds i64, ptr %36, i64 1
  store ptr %incdec.ptr57, ptr %cp.addr, align 8
  store i64 %or56, ptr %36, align 8
  %37 = load ptr, ptr %r.addr, align 8
  %incdec.ptr58 = getelementptr inbounds i8, ptr %37, i64 1
  store ptr %incdec.ptr58, ptr %r.addr, align 8
  %38 = load i8, ptr %37, align 1
  %conv59 = zext i8 %38 to i64
  %39 = load ptr, ptr %g.addr, align 8
  %incdec.ptr60 = getelementptr inbounds i8, ptr %39, i64 1
  store ptr %incdec.ptr60, ptr %g.addr, align 8
  %40 = load i8, ptr %39, align 1
  %conv61 = zext i8 %40 to i64
  %shl62 = shl nuw nsw i64 %conv61, 8
  %or63 = or i64 %shl62, %conv59
  %41 = load ptr, ptr %b.addr, align 8
  %incdec.ptr64 = getelementptr inbounds i8, ptr %41, i64 1
  store ptr %incdec.ptr64, ptr %b.addr, align 8
  %42 = load i8, ptr %41, align 1
  %conv65 = zext i8 %42 to i64
  %shl66 = shl nuw nsw i64 %conv65, 16
  %or67 = or i64 %or63, %shl66
  %or68 = or i64 %or67, 4278190080
  %43 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr69 = getelementptr inbounds i64, ptr %43, i64 1
  store ptr %incdec.ptr69, ptr %cp.addr, align 8
  store i64 %or68, ptr %43, align 8
  %44 = load ptr, ptr %r.addr, align 8
  %incdec.ptr70 = getelementptr inbounds i8, ptr %44, i64 1
  store ptr %incdec.ptr70, ptr %r.addr, align 8
  %45 = load i8, ptr %44, align 1
  %conv71 = zext i8 %45 to i64
  %46 = load ptr, ptr %g.addr, align 8
  %incdec.ptr72 = getelementptr inbounds i8, ptr %46, i64 1
  store ptr %incdec.ptr72, ptr %g.addr, align 8
  %47 = load i8, ptr %46, align 1
  %conv73 = zext i8 %47 to i64
  %shl74 = shl nuw nsw i64 %conv73, 8
  %or75 = or i64 %shl74, %conv71
  %48 = load ptr, ptr %b.addr, align 8
  %incdec.ptr76 = getelementptr inbounds i8, ptr %48, i64 1
  store ptr %incdec.ptr76, ptr %b.addr, align 8
  %49 = load i8, ptr %48, align 1
  %conv77 = zext i8 %49 to i64
  %shl78 = shl nuw nsw i64 %conv77, 16
  %or79 = or i64 %or75, %shl78
  %or80 = or i64 %or79, 4278190080
  %50 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr81 = getelementptr inbounds i64, ptr %50, i64 1
  store ptr %incdec.ptr81, ptr %cp.addr, align 8
  store i64 %or80, ptr %50, align 8
  %51 = load ptr, ptr %r.addr, align 8
  %incdec.ptr82 = getelementptr inbounds i8, ptr %51, i64 1
  store ptr %incdec.ptr82, ptr %r.addr, align 8
  %52 = load i8, ptr %51, align 1
  %conv83 = zext i8 %52 to i64
  %53 = load ptr, ptr %g.addr, align 8
  %incdec.ptr84 = getelementptr inbounds i8, ptr %53, i64 1
  store ptr %incdec.ptr84, ptr %g.addr, align 8
  %54 = load i8, ptr %53, align 1
  %conv85 = zext i8 %54 to i64
  %shl86 = shl nuw nsw i64 %conv85, 8
  %or87 = or i64 %shl86, %conv83
  %55 = load ptr, ptr %b.addr, align 8
  %incdec.ptr88 = getelementptr inbounds i8, ptr %55, i64 1
  store ptr %incdec.ptr88, ptr %b.addr, align 8
  %56 = load i8, ptr %55, align 1
  %conv89 = zext i8 %56 to i64
  %shl90 = shl nuw nsw i64 %conv89, 16
  %or91 = or i64 %or87, %shl90
  %or92 = or i64 %or91, 4278190080
  %57 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr93 = getelementptr inbounds i64, ptr %57, i64 1
  store ptr %incdec.ptr93, ptr %cp.addr, align 8
  store i64 %or92, ptr %57, align 8
  %58 = load i64, ptr %_x, align 8
  %sub = add i64 %58, -8
  br label %for.cond, !llvm.loop !73

for.end:                                          ; preds = %for.cond
  %59 = load i64, ptr %_x, align 8
  %cmp94.not = icmp eq i64 %59, 0
  br i1 %cmp94.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %60 = load i64, ptr %_x, align 8
  switch i64 %60, label %if.end [
    i64 7, label %sw.bb
    i64 6, label %sw.bb108
    i64 5, label %sw.bb121
    i64 4, label %sw.bb134
    i64 3, label %sw.bb147
    i64 2, label %sw.bb160
    i64 1, label %sw.bb173
  ]

sw.bb:                                            ; preds = %if.then
  %61 = load ptr, ptr %r.addr, align 8
  %incdec.ptr96 = getelementptr inbounds i8, ptr %61, i64 1
  store ptr %incdec.ptr96, ptr %r.addr, align 8
  %62 = load i8, ptr %61, align 1
  %conv97 = zext i8 %62 to i64
  %63 = load ptr, ptr %g.addr, align 8
  %incdec.ptr98 = getelementptr inbounds i8, ptr %63, i64 1
  store ptr %incdec.ptr98, ptr %g.addr, align 8
  %64 = load i8, ptr %63, align 1
  %conv99 = zext i8 %64 to i64
  %shl100 = shl nuw nsw i64 %conv99, 8
  %or101 = or i64 %shl100, %conv97
  %65 = load ptr, ptr %b.addr, align 8
  %incdec.ptr102 = getelementptr inbounds i8, ptr %65, i64 1
  store ptr %incdec.ptr102, ptr %b.addr, align 8
  %66 = load i8, ptr %65, align 1
  %conv103 = zext i8 %66 to i64
  %shl104 = shl nuw nsw i64 %conv103, 16
  %or105 = or i64 %or101, %shl104
  %or106 = or i64 %or105, 4278190080
  %67 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr107 = getelementptr inbounds i64, ptr %67, i64 1
  store ptr %incdec.ptr107, ptr %cp.addr, align 8
  store i64 %or106, ptr %67, align 8
  br label %sw.bb108

sw.bb108:                                         ; preds = %sw.bb, %if.then
  %68 = load ptr, ptr %r.addr, align 8
  %incdec.ptr109 = getelementptr inbounds i8, ptr %68, i64 1
  store ptr %incdec.ptr109, ptr %r.addr, align 8
  %69 = load i8, ptr %68, align 1
  %conv110 = zext i8 %69 to i64
  %70 = load ptr, ptr %g.addr, align 8
  %incdec.ptr111 = getelementptr inbounds i8, ptr %70, i64 1
  store ptr %incdec.ptr111, ptr %g.addr, align 8
  %71 = load i8, ptr %70, align 1
  %conv112 = zext i8 %71 to i64
  %shl113 = shl nuw nsw i64 %conv112, 8
  %or114 = or i64 %shl113, %conv110
  %72 = load ptr, ptr %b.addr, align 8
  %incdec.ptr115 = getelementptr inbounds i8, ptr %72, i64 1
  store ptr %incdec.ptr115, ptr %b.addr, align 8
  %73 = load i8, ptr %72, align 1
  %conv116 = zext i8 %73 to i64
  %shl117 = shl nuw nsw i64 %conv116, 16
  %or118 = or i64 %or114, %shl117
  %or119 = or i64 %or118, 4278190080
  %74 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr120 = getelementptr inbounds i64, ptr %74, i64 1
  store ptr %incdec.ptr120, ptr %cp.addr, align 8
  store i64 %or119, ptr %74, align 8
  br label %sw.bb121

sw.bb121:                                         ; preds = %sw.bb108, %if.then
  %75 = load ptr, ptr %r.addr, align 8
  %incdec.ptr122 = getelementptr inbounds i8, ptr %75, i64 1
  store ptr %incdec.ptr122, ptr %r.addr, align 8
  %76 = load i8, ptr %75, align 1
  %conv123 = zext i8 %76 to i64
  %77 = load ptr, ptr %g.addr, align 8
  %incdec.ptr124 = getelementptr inbounds i8, ptr %77, i64 1
  store ptr %incdec.ptr124, ptr %g.addr, align 8
  %78 = load i8, ptr %77, align 1
  %conv125 = zext i8 %78 to i64
  %shl126 = shl nuw nsw i64 %conv125, 8
  %or127 = or i64 %shl126, %conv123
  %79 = load ptr, ptr %b.addr, align 8
  %incdec.ptr128 = getelementptr inbounds i8, ptr %79, i64 1
  store ptr %incdec.ptr128, ptr %b.addr, align 8
  %80 = load i8, ptr %79, align 1
  %conv129 = zext i8 %80 to i64
  %shl130 = shl nuw nsw i64 %conv129, 16
  %or131 = or i64 %or127, %shl130
  %or132 = or i64 %or131, 4278190080
  %81 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr133 = getelementptr inbounds i64, ptr %81, i64 1
  store ptr %incdec.ptr133, ptr %cp.addr, align 8
  store i64 %or132, ptr %81, align 8
  br label %sw.bb134

sw.bb134:                                         ; preds = %sw.bb121, %if.then
  %82 = load ptr, ptr %r.addr, align 8
  %incdec.ptr135 = getelementptr inbounds i8, ptr %82, i64 1
  store ptr %incdec.ptr135, ptr %r.addr, align 8
  %83 = load i8, ptr %82, align 1
  %conv136 = zext i8 %83 to i64
  %84 = load ptr, ptr %g.addr, align 8
  %incdec.ptr137 = getelementptr inbounds i8, ptr %84, i64 1
  store ptr %incdec.ptr137, ptr %g.addr, align 8
  %85 = load i8, ptr %84, align 1
  %conv138 = zext i8 %85 to i64
  %shl139 = shl nuw nsw i64 %conv138, 8
  %or140 = or i64 %shl139, %conv136
  %86 = load ptr, ptr %b.addr, align 8
  %incdec.ptr141 = getelementptr inbounds i8, ptr %86, i64 1
  store ptr %incdec.ptr141, ptr %b.addr, align 8
  %87 = load i8, ptr %86, align 1
  %conv142 = zext i8 %87 to i64
  %shl143 = shl nuw nsw i64 %conv142, 16
  %or144 = or i64 %or140, %shl143
  %or145 = or i64 %or144, 4278190080
  %88 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr146 = getelementptr inbounds i64, ptr %88, i64 1
  store ptr %incdec.ptr146, ptr %cp.addr, align 8
  store i64 %or145, ptr %88, align 8
  br label %sw.bb147

sw.bb147:                                         ; preds = %sw.bb134, %if.then
  %89 = load ptr, ptr %r.addr, align 8
  %incdec.ptr148 = getelementptr inbounds i8, ptr %89, i64 1
  store ptr %incdec.ptr148, ptr %r.addr, align 8
  %90 = load i8, ptr %89, align 1
  %conv149 = zext i8 %90 to i64
  %91 = load ptr, ptr %g.addr, align 8
  %incdec.ptr150 = getelementptr inbounds i8, ptr %91, i64 1
  store ptr %incdec.ptr150, ptr %g.addr, align 8
  %92 = load i8, ptr %91, align 1
  %conv151 = zext i8 %92 to i64
  %shl152 = shl nuw nsw i64 %conv151, 8
  %or153 = or i64 %shl152, %conv149
  %93 = load ptr, ptr %b.addr, align 8
  %incdec.ptr154 = getelementptr inbounds i8, ptr %93, i64 1
  store ptr %incdec.ptr154, ptr %b.addr, align 8
  %94 = load i8, ptr %93, align 1
  %conv155 = zext i8 %94 to i64
  %shl156 = shl nuw nsw i64 %conv155, 16
  %or157 = or i64 %or153, %shl156
  %or158 = or i64 %or157, 4278190080
  %95 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr159 = getelementptr inbounds i64, ptr %95, i64 1
  store ptr %incdec.ptr159, ptr %cp.addr, align 8
  store i64 %or158, ptr %95, align 8
  br label %sw.bb160

sw.bb160:                                         ; preds = %sw.bb147, %if.then
  %96 = load ptr, ptr %r.addr, align 8
  %incdec.ptr161 = getelementptr inbounds i8, ptr %96, i64 1
  store ptr %incdec.ptr161, ptr %r.addr, align 8
  %97 = load i8, ptr %96, align 1
  %conv162 = zext i8 %97 to i64
  %98 = load ptr, ptr %g.addr, align 8
  %incdec.ptr163 = getelementptr inbounds i8, ptr %98, i64 1
  store ptr %incdec.ptr163, ptr %g.addr, align 8
  %99 = load i8, ptr %98, align 1
  %conv164 = zext i8 %99 to i64
  %shl165 = shl nuw nsw i64 %conv164, 8
  %or166 = or i64 %shl165, %conv162
  %100 = load ptr, ptr %b.addr, align 8
  %incdec.ptr167 = getelementptr inbounds i8, ptr %100, i64 1
  store ptr %incdec.ptr167, ptr %b.addr, align 8
  %101 = load i8, ptr %100, align 1
  %conv168 = zext i8 %101 to i64
  %shl169 = shl nuw nsw i64 %conv168, 16
  %or170 = or i64 %or166, %shl169
  %or171 = or i64 %or170, 4278190080
  %102 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr172 = getelementptr inbounds i64, ptr %102, i64 1
  store ptr %incdec.ptr172, ptr %cp.addr, align 8
  store i64 %or171, ptr %102, align 8
  br label %sw.bb173

sw.bb173:                                         ; preds = %sw.bb160, %if.then
  %103 = load ptr, ptr %r.addr, align 8
  %incdec.ptr174 = getelementptr inbounds i8, ptr %103, i64 1
  store ptr %incdec.ptr174, ptr %r.addr, align 8
  %104 = load i8, ptr %103, align 1
  %conv175 = zext i8 %104 to i64
  %105 = load ptr, ptr %g.addr, align 8
  %incdec.ptr176 = getelementptr inbounds i8, ptr %105, i64 1
  store ptr %incdec.ptr176, ptr %g.addr, align 8
  %106 = load i8, ptr %105, align 1
  %conv177 = zext i8 %106 to i64
  %shl178 = shl nuw nsw i64 %conv177, 8
  %or179 = or i64 %shl178, %conv175
  %107 = load ptr, ptr %b.addr, align 8
  %incdec.ptr180 = getelementptr inbounds i8, ptr %107, i64 1
  store ptr %incdec.ptr180, ptr %b.addr, align 8
  %108 = load i8, ptr %107, align 1
  %conv181 = zext i8 %108 to i64
  %shl182 = shl nuw nsw i64 %conv181, 16
  %or183 = or i64 %or179, %shl182
  %or184 = or i64 %or183, 4278190080
  %109 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr185 = getelementptr inbounds i64, ptr %109, i64 1
  store ptr %incdec.ptr185, ptr %cp.addr, align 8
  store i64 %or184, ptr %109, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb173, %for.end
  %110 = load i64, ptr %fromskew.addr, align 8
  %111 = load ptr, ptr %r.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %111, i64 %110
  store ptr %add.ptr, ptr %r.addr, align 8
  %112 = load ptr, ptr %g.addr, align 8
  %add.ptr186 = getelementptr inbounds i8, ptr %112, i64 %110
  store ptr %add.ptr186, ptr %g.addr, align 8
  %113 = load i64, ptr %fromskew.addr, align 8
  %114 = load ptr, ptr %b.addr, align 8
  %add.ptr187 = getelementptr inbounds i8, ptr %114, i64 %113
  store ptr %add.ptr187, ptr %b.addr, align 8
  %115 = load i64, ptr %toskew.addr, align 8
  %116 = load ptr, ptr %cp.addr, align 8
  %add.ptr188 = getelementptr inbounds i64, ptr %116, i64 %115
  store ptr %add.ptr188, ptr %cp.addr, align 8
  br label %while.cond, !llvm.loop !74

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @putRGBseparate8bitMaptile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %r, ptr noundef %g, ptr noundef %b, ptr noundef %a) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %Map = alloca ptr, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %r, ptr %r.addr, align 8
  store ptr %g, ptr %g.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %Map1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i64 0, i32 15
  %1 = load ptr, ptr %Map1, align 8
  store ptr %1, ptr %Map, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %2 = load i64, ptr %h.addr, align 8
  %dec = add i64 %2, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp.not = icmp eq i64 %2, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %3 = load i64, ptr %w.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %storemerge = phi i64 [ %3, %while.body ], [ %dec15, %for.body ]
  store i64 %storemerge, ptr %x.addr, align 8
  %cmp2.not = icmp eq i64 %storemerge, 0
  br i1 %cmp2.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %Map, align 8
  %5 = load ptr, ptr %r.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %incdec.ptr, ptr %r.addr, align 8
  %6 = load i8, ptr %5, align 1
  %idxprom = zext i8 %6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i64
  %8 = load ptr, ptr %Map, align 8
  %9 = load ptr, ptr %g.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %incdec.ptr3, ptr %g.addr, align 8
  %10 = load i8, ptr %9, align 1
  %idxprom4 = zext i8 %10 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %8, i64 %idxprom4
  %11 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %11 to i64
  %shl = shl nuw nsw i64 %conv6, 8
  %or = or i64 %shl, %conv
  %12 = load ptr, ptr %Map, align 8
  %13 = load ptr, ptr %b.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %incdec.ptr7, ptr %b.addr, align 8
  %14 = load i8, ptr %13, align 1
  %idxprom8 = zext i8 %14 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %12, i64 %idxprom8
  %15 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %15 to i64
  %shl11 = shl nuw nsw i64 %conv10, 16
  %or12 = or i64 %or, %shl11
  %or13 = or i64 %or12, 4278190080
  %16 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i64, ptr %16, i64 1
  store ptr %incdec.ptr14, ptr %cp.addr, align 8
  store i64 %or13, ptr %16, align 8
  %17 = load i64, ptr %x.addr, align 8
  %dec15 = add i64 %17, -1
  br label %for.cond, !llvm.loop !75

for.end:                                          ; preds = %for.cond
  %18 = load i64, ptr %fromskew.addr, align 8
  %19 = load ptr, ptr %r.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %19, i64 %18
  store ptr %add.ptr, ptr %r.addr, align 8
  %20 = load ptr, ptr %g.addr, align 8
  %add.ptr16 = getelementptr inbounds i8, ptr %20, i64 %18
  store ptr %add.ptr16, ptr %g.addr, align 8
  %21 = load i64, ptr %fromskew.addr, align 8
  %22 = load ptr, ptr %b.addr, align 8
  %add.ptr17 = getelementptr inbounds i8, ptr %22, i64 %21
  store ptr %add.ptr17, ptr %b.addr, align 8
  %23 = load i64, ptr %toskew.addr, align 8
  %24 = load ptr, ptr %cp.addr, align 8
  %add.ptr18 = getelementptr inbounds i64, ptr %24, i64 %23
  store ptr %add.ptr18, ptr %cp.addr, align 8
  br label %while.cond, !llvm.loop !76

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @putRGBseparate16bittile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %r, ptr noundef %g, ptr noundef %b, ptr noundef %a) #0 {
entry:
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %wr = alloca ptr, align 8
  %wg = alloca ptr, align 8
  %wb = alloca ptr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %r, ptr %wr, align 8
  store ptr %g, ptr %wg, align 8
  store ptr %b, ptr %wb, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = load i64, ptr %h.addr, align 8
  %dec = add i64 %0, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp.not = icmp eq i64 %0, 0
  br i1 %cmp.not, label %while.end, label %for.cond

for.cond:                                         ; preds = %while.cond, %for.body
  %storemerge = phi i64 [ %inc, %for.body ], [ 0, %while.cond ]
  store i64 %storemerge, ptr %x.addr, align 8
  %1 = load i64, ptr %w.addr, align 8
  %cmp1 = icmp ult i64 %storemerge, %1
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %wr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %wr, align 8
  %3 = load i16, ptr %2, align 2
  %4 = lshr i16 %3, 8
  %5 = load ptr, ptr %wg, align 8
  %incdec.ptr3 = getelementptr inbounds i16, ptr %5, i64 1
  store ptr %incdec.ptr3, ptr %wg, align 8
  %6 = load i16, ptr %5, align 2
  %7 = and i16 %6, -256
  %or1 = or i16 %4, %7
  %or = zext i16 %or1 to i64
  %8 = load ptr, ptr %wb, align 8
  %incdec.ptr8 = getelementptr inbounds i16, ptr %8, i64 1
  store ptr %incdec.ptr8, ptr %wb, align 8
  %9 = load i16, ptr %8, align 2
  %10 = lshr i16 %9, 8
  %conv12 = zext i16 %10 to i64
  %shl13 = shl nuw nsw i64 %conv12, 16
  %or14 = or i64 %shl13, %or
  %or15 = or i64 %or14, 4278190080
  %11 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i64, ptr %11, i64 1
  store ptr %incdec.ptr16, ptr %cp.addr, align 8
  store i64 %or15, ptr %11, align 8
  %12 = load i64, ptr %x.addr, align 8
  %inc = add i64 %12, 1
  br label %for.cond, !llvm.loop !77

for.end:                                          ; preds = %for.cond
  %13 = load i64, ptr %fromskew.addr, align 8
  %14 = load ptr, ptr %wr, align 8
  %add.ptr = getelementptr inbounds i16, ptr %14, i64 %13
  store ptr %add.ptr, ptr %wr, align 8
  %15 = load ptr, ptr %wg, align 8
  %add.ptr17 = getelementptr inbounds i16, ptr %15, i64 %13
  store ptr %add.ptr17, ptr %wg, align 8
  %16 = load i64, ptr %fromskew.addr, align 8
  %17 = load ptr, ptr %wb, align 8
  %add.ptr18 = getelementptr inbounds i16, ptr %17, i64 %16
  store ptr %add.ptr18, ptr %wb, align 8
  %18 = load i64, ptr %toskew.addr, align 8
  %19 = load ptr, ptr %cp.addr, align 8
  %add.ptr19 = getelementptr inbounds i64, ptr %19, i64 %18
  store ptr %add.ptr19, ptr %cp.addr, align 8
  br label %while.cond, !llvm.loop !78

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @putRGBAAseparate16bittile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %r, ptr noundef %g, ptr noundef %b, ptr noundef %a) #0 {
entry:
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %wr = alloca ptr, align 8
  %wg = alloca ptr, align 8
  %wb = alloca ptr, align 8
  %wa = alloca ptr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %r, ptr %wr, align 8
  store ptr %g, ptr %wg, align 8
  store ptr %b, ptr %wb, align 8
  store ptr %a, ptr %wa, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = load i64, ptr %h.addr, align 8
  %dec = add i64 %0, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp.not = icmp eq i64 %0, 0
  br i1 %cmp.not, label %while.end, label %for.cond

for.cond:                                         ; preds = %while.cond, %for.body
  %storemerge = phi i64 [ %inc, %for.body ], [ 0, %while.cond ]
  store i64 %storemerge, ptr %x.addr, align 8
  %1 = load i64, ptr %w.addr, align 8
  %cmp1 = icmp ult i64 %storemerge, %1
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %wr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %wr, align 8
  %3 = load i16, ptr %2, align 2
  %4 = lshr i16 %3, 8
  %5 = load ptr, ptr %wg, align 8
  %incdec.ptr3 = getelementptr inbounds i16, ptr %5, i64 1
  store ptr %incdec.ptr3, ptr %wg, align 8
  %6 = load i16, ptr %5, align 2
  %7 = and i16 %6, -256
  %or1 = or i16 %4, %7
  %or = zext i16 %or1 to i64
  %8 = load ptr, ptr %wb, align 8
  %incdec.ptr8 = getelementptr inbounds i16, ptr %8, i64 1
  store ptr %incdec.ptr8, ptr %wb, align 8
  %9 = load i16, ptr %8, align 2
  %10 = lshr i16 %9, 8
  %conv12 = zext i16 %10 to i64
  %shl13 = shl nuw nsw i64 %conv12, 16
  %or14 = or i64 %shl13, %or
  %11 = load ptr, ptr %wa, align 8
  %incdec.ptr15 = getelementptr inbounds i16, ptr %11, i64 1
  store ptr %incdec.ptr15, ptr %wa, align 8
  %12 = load i16, ptr %11, align 2
  %13 = lshr i16 %12, 8
  %conv19 = zext i16 %13 to i64
  %shl20 = shl nuw nsw i64 %conv19, 24
  %or21 = or i64 %or14, %shl20
  %14 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i64, ptr %14, i64 1
  store ptr %incdec.ptr22, ptr %cp.addr, align 8
  store i64 %or21, ptr %14, align 8
  %15 = load i64, ptr %x.addr, align 8
  %inc = add i64 %15, 1
  br label %for.cond, !llvm.loop !79

for.end:                                          ; preds = %for.cond
  %16 = load i64, ptr %fromskew.addr, align 8
  %17 = load ptr, ptr %wr, align 8
  %add.ptr = getelementptr inbounds i16, ptr %17, i64 %16
  store ptr %add.ptr, ptr %wr, align 8
  %18 = load ptr, ptr %wg, align 8
  %add.ptr23 = getelementptr inbounds i16, ptr %18, i64 %16
  store ptr %add.ptr23, ptr %wg, align 8
  %19 = load i64, ptr %fromskew.addr, align 8
  %20 = load ptr, ptr %wb, align 8
  %add.ptr24 = getelementptr inbounds i16, ptr %20, i64 %19
  store ptr %add.ptr24, ptr %wb, align 8
  %21 = load ptr, ptr %wa, align 8
  %add.ptr25 = getelementptr inbounds i16, ptr %21, i64 %19
  store ptr %add.ptr25, ptr %wa, align 8
  %22 = load i64, ptr %toskew.addr, align 8
  %23 = load ptr, ptr %cp.addr, align 8
  %add.ptr26 = getelementptr inbounds i64, ptr %23, i64 %22
  store ptr %add.ptr26, ptr %cp.addr, align 8
  br label %while.cond, !llvm.loop !80

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @putRGBUAseparate16bittile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %r, ptr noundef %g, ptr noundef %b, ptr noundef %a) #0 {
entry:
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %wr = alloca ptr, align 8
  %wg = alloca ptr, align 8
  %wb = alloca ptr, align 8
  %wa = alloca ptr, align 8
  %r1 = alloca i64, align 8
  %g2 = alloca i64, align 8
  %a4 = alloca i64, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %r, ptr %wr, align 8
  store ptr %g, ptr %wg, align 8
  store ptr %b, ptr %wb, align 8
  store ptr %a, ptr %wa, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = load i64, ptr %h.addr, align 8
  %dec = add i64 %0, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp.not = icmp eq i64 %0, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %1 = load i64, ptr %w.addr, align 8
  store i64 %1, ptr %x.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %2 = load i64, ptr %x.addr, align 8
  %dec5 = add i64 %2, -1
  store i64 %dec5, ptr %x.addr, align 8
  %cmp6.not = icmp eq i64 %2, 0
  br i1 %cmp6.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %wa, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %3, i64 1
  store ptr %incdec.ptr, ptr %wa, align 8
  %4 = load i16, ptr %3, align 2
  %5 = lshr i16 %4, 4
  %conv7 = zext i16 %5 to i64
  store i64 %conv7, ptr %a4, align 8
  %6 = load ptr, ptr %wr, align 8
  %incdec.ptr8 = getelementptr inbounds i16, ptr %6, i64 1
  store ptr %incdec.ptr8, ptr %wr, align 8
  %7 = load i16, ptr %6, align 2
  %conv9 = zext i16 %7 to i64
  %mul = mul nuw nsw i64 %conv9, %conv7
  %div = udiv i64 %mul, 69375
  store i64 %div, ptr %r1, align 8
  %8 = load ptr, ptr %wg, align 8
  %incdec.ptr10 = getelementptr inbounds i16, ptr %8, i64 1
  store ptr %incdec.ptr10, ptr %wg, align 8
  %9 = load i16, ptr %8, align 2
  %conv11 = zext i16 %9 to i64
  %10 = load i64, ptr %a4, align 8
  %mul12 = mul i64 %10, %conv11
  %div13 = udiv i64 %mul12, 69375
  store i64 %div13, ptr %g2, align 8
  %11 = load ptr, ptr %wb, align 8
  %incdec.ptr14 = getelementptr inbounds i16, ptr %11, i64 1
  store ptr %incdec.ptr14, ptr %wb, align 8
  %12 = load i16, ptr %11, align 2
  %conv15 = zext i16 %12 to i64
  %13 = load i64, ptr %a4, align 8
  %mul16 = mul i64 %13, %conv15
  %div17 = udiv i64 %mul16, 69375
  %14 = load i64, ptr %r1, align 8
  %15 = load i64, ptr %g2, align 8
  %shl = shl i64 %15, 8
  %or = or i64 %14, %shl
  %shl18 = shl nuw i64 %div17, 16
  %or19 = or i64 %or, %shl18
  %16 = load i64, ptr %a4, align 8
  %shl20 = shl i64 %16, 24
  %or21 = or i64 %or19, %shl20
  %17 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i64, ptr %17, i64 1
  store ptr %incdec.ptr22, ptr %cp.addr, align 8
  store i64 %or21, ptr %17, align 8
  br label %for.cond, !llvm.loop !81

for.end:                                          ; preds = %for.cond
  %18 = load i64, ptr %fromskew.addr, align 8
  %19 = load ptr, ptr %wr, align 8
  %add.ptr = getelementptr inbounds i16, ptr %19, i64 %18
  store ptr %add.ptr, ptr %wr, align 8
  %20 = load ptr, ptr %wg, align 8
  %add.ptr23 = getelementptr inbounds i16, ptr %20, i64 %18
  store ptr %add.ptr23, ptr %wg, align 8
  %21 = load i64, ptr %fromskew.addr, align 8
  %22 = load ptr, ptr %wb, align 8
  %add.ptr24 = getelementptr inbounds i16, ptr %22, i64 %21
  store ptr %add.ptr24, ptr %wb, align 8
  %23 = load ptr, ptr %wa, align 8
  %add.ptr25 = getelementptr inbounds i16, ptr %23, i64 %21
  store ptr %add.ptr25, ptr %wa, align 8
  %24 = load i64, ptr %toskew.addr, align 8
  %25 = load ptr, ptr %cp.addr, align 8
  %add.ptr26 = getelementptr inbounds i64, ptr %25, i64 %24
  store ptr %add.ptr26, ptr %cp.addr, align 8
  br label %while.cond, !llvm.loop !82

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !7}
!48 = distinct !{!48, !7}
!49 = distinct !{!49, !7}
!50 = distinct !{!50, !7}
!51 = distinct !{!51, !7}
!52 = distinct !{!52, !7}
!53 = distinct !{!53, !7}
!54 = distinct !{!54, !7}
!55 = distinct !{!55, !7}
!56 = distinct !{!56, !7}
!57 = distinct !{!57, !7}
!58 = distinct !{!58, !7}
!59 = distinct !{!59, !7}
!60 = distinct !{!60, !7}
!61 = distinct !{!61, !7}
!62 = distinct !{!62, !7}
!63 = distinct !{!63, !7}
!64 = distinct !{!64, !7}
!65 = distinct !{!65, !7}
!66 = distinct !{!66, !7}
!67 = distinct !{!67, !7}
!68 = distinct !{!68, !7}
!69 = distinct !{!69, !7}
!70 = distinct !{!70, !7}
!71 = distinct !{!71, !7}
!72 = distinct !{!72, !7}
!73 = distinct !{!73, !7}
!74 = distinct !{!74, !7}
!75 = distinct !{!75, !7}
!76 = distinct !{!76, !7}
!77 = distinct !{!77, !7}
!78 = distinct !{!78, !7}
!79 = distinct !{!79, !7}
!80 = distinct !{!80, !7}
!81 = distinct !{!81, !7}
!82 = distinct !{!82, !7}
