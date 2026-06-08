; ModuleID = './source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_getimage.c'
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

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 8
  %2 = load i16, ptr %td_bitspersample, align 8
  %conv = zext i16 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 4, label %sw.bb
    i32 8, label %sw.bb
    i32 16, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %3 = load ptr, ptr %emsg.addr, align 8
  %4 = load ptr, ptr %emsg.addr, align 8
  %5 = call i64 @llvm.objectsize.i64.p0(ptr %4, i1 false, i1 true, i1 false)
  %6 = load ptr, ptr %td, align 8
  %td_bitspersample1 = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i32 0, i32 8
  %7 = load i16, ptr %td_bitspersample1, align 8
  %conv2 = zext i16 %7 to i32
  %call = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %3, i32 noundef 0, i64 noundef %5, ptr noundef @.str, i32 noundef %conv2)
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb
  %8 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i32 0, i32 15
  %9 = load i16, ptr %td_samplesperpixel, align 2
  %conv3 = zext i16 %9 to i32
  %10 = load ptr, ptr %td, align 8
  %td_extrasamples = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i32 0, i32 30
  %11 = load i16, ptr %td_extrasamples, align 4
  %conv4 = zext i16 %11 to i32
  %sub = sub nsw i32 %conv3, %conv4
  store i32 %sub, ptr %colorchannels, align 4
  %12 = load ptr, ptr %tif.addr, align 8
  %call5 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %12, i64 noundef 262, ptr noundef %photometric)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.epilog
  %13 = load i32, ptr %colorchannels, align 4
  switch i32 %13, label %sw.default8 [
    i32 1, label %sw.bb6
    i32 3, label %sw.bb7
  ]

sw.bb6:                                           ; preds = %if.then
  store i16 1, ptr %photometric, align 2
  br label %sw.epilog10

sw.bb7:                                           ; preds = %if.then
  store i16 2, ptr %photometric, align 2
  br label %sw.epilog10

sw.default8:                                      ; preds = %if.then
  %14 = load ptr, ptr %emsg.addr, align 8
  %15 = load ptr, ptr %emsg.addr, align 8
  %16 = call i64 @llvm.objectsize.i64.p0(ptr %15, i1 false, i1 true, i1 false)
  %call9 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %14, i32 noundef 0, i64 noundef %16, ptr noundef @.str.1, ptr noundef @photoTag)
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog10:                                      ; preds = %sw.bb7, %sw.bb6
  br label %if.end

if.end:                                           ; preds = %sw.epilog10, %sw.epilog
  %17 = load i16, ptr %photometric, align 2
  %conv11 = zext i16 %17 to i32
  switch i32 %conv11, label %sw.default88 [
    i32 0, label %sw.bb12
    i32 1, label %sw.bb12
    i32 3, label %sw.bb12
    i32 6, label %sw.bb25
    i32 2, label %sw.bb35
    i32 5, label %sw.bb41
    i32 32844, label %sw.bb59
    i32 32845, label %sw.bb66
  ]

sw.bb12:                                          ; preds = %if.end, %if.end, %if.end
  %18 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %18, i32 0, i32 24
  %19 = load i16, ptr %td_planarconfig, align 2
  %conv13 = zext i16 %19 to i32
  %cmp = icmp eq i32 %conv13, 1
  br i1 %cmp, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %sw.bb12
  %20 = load ptr, ptr %td, align 8
  %td_samplesperpixel15 = getelementptr inbounds %struct.TIFFDirectory, ptr %20, i32 0, i32 15
  %21 = load i16, ptr %td_samplesperpixel15, align 2
  %conv16 = zext i16 %21 to i32
  %cmp17 = icmp ne i32 %conv16, 1
  br i1 %cmp17, label %if.then19, label %if.end24

if.then19:                                        ; preds = %land.lhs.true
  %22 = load ptr, ptr %emsg.addr, align 8
  %23 = load ptr, ptr %emsg.addr, align 8
  %24 = call i64 @llvm.objectsize.i64.p0(ptr %23, i1 false, i1 true, i1 false)
  %25 = load i16, ptr %photometric, align 2
  %conv20 = zext i16 %25 to i32
  %26 = load ptr, ptr %td, align 8
  %td_samplesperpixel21 = getelementptr inbounds %struct.TIFFDirectory, ptr %26, i32 0, i32 15
  %27 = load i16, ptr %td_samplesperpixel21, align 2
  %conv22 = zext i16 %27 to i32
  %call23 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %22, i32 noundef 0, i64 noundef %24, ptr noundef @.str.2, ptr noundef @photoTag, i32 noundef %conv20, ptr noundef @.str.3, i32 noundef %conv22)
  store i32 0, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %land.lhs.true, %sw.bb12
  br label %sw.epilog91

sw.bb25:                                          ; preds = %if.end
  %28 = load ptr, ptr %td, align 8
  %td_planarconfig26 = getelementptr inbounds %struct.TIFFDirectory, ptr %28, i32 0, i32 24
  %29 = load i16, ptr %td_planarconfig26, align 2
  %conv27 = zext i16 %29 to i32
  %cmp28 = icmp ne i32 %conv27, 1
  br i1 %cmp28, label %if.then30, label %if.end34

if.then30:                                        ; preds = %sw.bb25
  %30 = load ptr, ptr %emsg.addr, align 8
  %31 = load ptr, ptr %emsg.addr, align 8
  %32 = call i64 @llvm.objectsize.i64.p0(ptr %31, i1 false, i1 true, i1 false)
  %33 = load ptr, ptr %td, align 8
  %td_planarconfig31 = getelementptr inbounds %struct.TIFFDirectory, ptr %33, i32 0, i32 24
  %34 = load i16, ptr %td_planarconfig31, align 2
  %conv32 = zext i16 %34 to i32
  %call33 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %30, i32 noundef 0, i64 noundef %32, ptr noundef @.str.4, ptr noundef @.str.5, i32 noundef %conv32)
  store i32 0, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %sw.bb25
  br label %sw.epilog91

sw.bb35:                                          ; preds = %if.end
  %35 = load i32, ptr %colorchannels, align 4
  %cmp36 = icmp slt i32 %35, 3
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %sw.bb35
  %36 = load ptr, ptr %emsg.addr, align 8
  %37 = load ptr, ptr %emsg.addr, align 8
  %38 = call i64 @llvm.objectsize.i64.p0(ptr %37, i1 false, i1 true, i1 false)
  %39 = load i32, ptr %colorchannels, align 4
  %call39 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %36, i32 noundef 0, i64 noundef %38, ptr noundef @.str.6, ptr noundef @.str.7, i32 noundef %39)
  store i32 0, ptr %retval, align 4
  br label %return

if.end40:                                         ; preds = %sw.bb35
  br label %sw.epilog91

sw.bb41:                                          ; preds = %if.end
  %40 = load ptr, ptr %td, align 8
  %td_inkset = getelementptr inbounds %struct.TIFFDirectory, ptr %40, i32 0, i32 55
  %41 = load i16, ptr %td_inkset, align 8
  %conv42 = zext i16 %41 to i32
  %cmp43 = icmp ne i32 %conv42, 1
  br i1 %cmp43, label %if.then45, label %if.end49

if.then45:                                        ; preds = %sw.bb41
  %42 = load ptr, ptr %emsg.addr, align 8
  %43 = load ptr, ptr %emsg.addr, align 8
  %44 = call i64 @llvm.objectsize.i64.p0(ptr %43, i1 false, i1 true, i1 false)
  %45 = load ptr, ptr %td, align 8
  %td_inkset46 = getelementptr inbounds %struct.TIFFDirectory, ptr %45, i32 0, i32 55
  %46 = load i16, ptr %td_inkset46, align 8
  %conv47 = zext i16 %46 to i32
  %call48 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %42, i32 noundef 0, i64 noundef %44, ptr noundef @.str.8, ptr noundef @.str.9, i32 noundef %conv47)
  store i32 0, ptr %retval, align 4
  br label %return

if.end49:                                         ; preds = %sw.bb41
  %47 = load ptr, ptr %td, align 8
  %td_samplesperpixel50 = getelementptr inbounds %struct.TIFFDirectory, ptr %47, i32 0, i32 15
  %48 = load i16, ptr %td_samplesperpixel50, align 2
  %conv51 = zext i16 %48 to i32
  %cmp52 = icmp ne i32 %conv51, 4
  br i1 %cmp52, label %if.then54, label %if.end58

if.then54:                                        ; preds = %if.end49
  %49 = load ptr, ptr %emsg.addr, align 8
  %50 = load ptr, ptr %emsg.addr, align 8
  %51 = call i64 @llvm.objectsize.i64.p0(ptr %50, i1 false, i1 true, i1 false)
  %52 = load ptr, ptr %td, align 8
  %td_samplesperpixel55 = getelementptr inbounds %struct.TIFFDirectory, ptr %52, i32 0, i32 15
  %53 = load i16, ptr %td_samplesperpixel55, align 2
  %conv56 = zext i16 %53 to i32
  %call57 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %49, i32 noundef 0, i64 noundef %51, ptr noundef @.str.8, ptr noundef @.str.3, i32 noundef %conv56)
  store i32 0, ptr %retval, align 4
  br label %return

if.end58:                                         ; preds = %if.end49
  br label %sw.epilog91

sw.bb59:                                          ; preds = %if.end
  %54 = load ptr, ptr %td, align 8
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %54, i32 0, i32 10
  %55 = load i16, ptr %td_compression, align 4
  %conv60 = zext i16 %55 to i32
  %cmp61 = icmp ne i32 %conv60, 34676
  br i1 %cmp61, label %if.then63, label %if.end65

if.then63:                                        ; preds = %sw.bb59
  %56 = load ptr, ptr %emsg.addr, align 8
  %57 = load ptr, ptr %emsg.addr, align 8
  %58 = call i64 @llvm.objectsize.i64.p0(ptr %57, i1 false, i1 true, i1 false)
  %call64 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %56, i32 noundef 0, i64 noundef %58, ptr noundef @.str.10, ptr noundef @.str.11, i32 noundef 34676)
  store i32 0, ptr %retval, align 4
  br label %return

if.end65:                                         ; preds = %sw.bb59
  br label %sw.epilog91

sw.bb66:                                          ; preds = %if.end
  %59 = load ptr, ptr %td, align 8
  %td_compression67 = getelementptr inbounds %struct.TIFFDirectory, ptr %59, i32 0, i32 10
  %60 = load i16, ptr %td_compression67, align 4
  %conv68 = zext i16 %60 to i32
  %cmp69 = icmp ne i32 %conv68, 34676
  br i1 %cmp69, label %land.lhs.true71, label %if.end78

land.lhs.true71:                                  ; preds = %sw.bb66
  %61 = load ptr, ptr %td, align 8
  %td_compression72 = getelementptr inbounds %struct.TIFFDirectory, ptr %61, i32 0, i32 10
  %62 = load i16, ptr %td_compression72, align 4
  %conv73 = zext i16 %62 to i32
  %cmp74 = icmp ne i32 %conv73, 34677
  br i1 %cmp74, label %if.then76, label %if.end78

if.then76:                                        ; preds = %land.lhs.true71
  %63 = load ptr, ptr %emsg.addr, align 8
  %64 = load ptr, ptr %emsg.addr, align 8
  %65 = call i64 @llvm.objectsize.i64.p0(ptr %64, i1 false, i1 true, i1 false)
  %call77 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %63, i32 noundef 0, i64 noundef %65, ptr noundef @.str.12, ptr noundef @.str.11, i32 noundef 34676, i32 noundef 34677)
  store i32 0, ptr %retval, align 4
  br label %return

if.end78:                                         ; preds = %land.lhs.true71, %sw.bb66
  %66 = load ptr, ptr %td, align 8
  %td_planarconfig79 = getelementptr inbounds %struct.TIFFDirectory, ptr %66, i32 0, i32 24
  %67 = load i16, ptr %td_planarconfig79, align 2
  %conv80 = zext i16 %67 to i32
  %cmp81 = icmp ne i32 %conv80, 1
  br i1 %cmp81, label %if.then83, label %if.end87

if.then83:                                        ; preds = %if.end78
  %68 = load ptr, ptr %emsg.addr, align 8
  %69 = load ptr, ptr %emsg.addr, align 8
  %70 = call i64 @llvm.objectsize.i64.p0(ptr %69, i1 false, i1 true, i1 false)
  %71 = load ptr, ptr %td, align 8
  %td_planarconfig84 = getelementptr inbounds %struct.TIFFDirectory, ptr %71, i32 0, i32 24
  %72 = load i16, ptr %td_planarconfig84, align 2
  %conv85 = zext i16 %72 to i32
  %call86 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %68, i32 noundef 0, i64 noundef %70, ptr noundef @.str.13, ptr noundef @.str.5, i32 noundef %conv85)
  store i32 0, ptr %retval, align 4
  br label %return

if.end87:                                         ; preds = %if.end78
  br label %sw.epilog91

sw.default88:                                     ; preds = %if.end
  %73 = load ptr, ptr %emsg.addr, align 8
  %74 = load ptr, ptr %emsg.addr, align 8
  %75 = call i64 @llvm.objectsize.i64.p0(ptr %74, i1 false, i1 true, i1 false)
  %76 = load i16, ptr %photometric, align 2
  %conv89 = zext i16 %76 to i32
  %call90 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %73, i32 noundef 0, i64 noundef %75, ptr noundef @.str.14, ptr noundef @photoTag, i32 noundef %conv89)
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog91:                                      ; preds = %if.end87, %if.end65, %if.end58, %if.end40, %if.end34, %if.end24
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog91, %sw.default88, %if.then83, %if.then76, %if.then63, %if.then54, %if.then45, %if.then38, %if.then30, %if.then19, %sw.default8, %sw.default
  %77 = load i32, ptr %retval, align 4
  ret i32 %77
}

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #2

declare i32 @TIFFGetField(ptr noundef, i64 noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @TIFFRGBAImageEnd(ptr noundef %img) #0 {
entry:
  %img.addr = alloca ptr, align 8
  store ptr %img, ptr %img.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %Map = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 15
  %1 = load ptr, ptr %Map, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %img.addr, align 8
  %Map1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i32 0, i32 15
  %3 = load ptr, ptr %Map1, align 8
  call void @_TIFFfree(ptr noundef %3)
  %4 = load ptr, ptr %img.addr, align 8
  %Map2 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %4, i32 0, i32 15
  store ptr null, ptr %Map2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %img.addr, align 8
  %BWmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %5, i32 0, i32 16
  %6 = load ptr, ptr %BWmap, align 8
  %tobool3 = icmp ne ptr %6, null
  br i1 %tobool3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %img.addr, align 8
  %BWmap5 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %7, i32 0, i32 16
  %8 = load ptr, ptr %BWmap5, align 8
  call void @_TIFFfree(ptr noundef %8)
  %9 = load ptr, ptr %img.addr, align 8
  %BWmap6 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %9, i32 0, i32 16
  store ptr null, ptr %BWmap6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %10 = load ptr, ptr %img.addr, align 8
  %PALmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %10, i32 0, i32 17
  %11 = load ptr, ptr %PALmap, align 8
  %tobool8 = icmp ne ptr %11, null
  br i1 %tobool8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end7
  %12 = load ptr, ptr %img.addr, align 8
  %PALmap10 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %12, i32 0, i32 17
  %13 = load ptr, ptr %PALmap10, align 8
  call void @_TIFFfree(ptr noundef %13)
  %14 = load ptr, ptr %img.addr, align 8
  %PALmap11 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %14, i32 0, i32 17
  store ptr null, ptr %PALmap11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7
  %15 = load ptr, ptr %img.addr, align 8
  %ycbcr = getelementptr inbounds %struct._TIFFRGBAImage, ptr %15, i32 0, i32 18
  %16 = load ptr, ptr %ycbcr, align 8
  %tobool13 = icmp ne ptr %16, null
  br i1 %tobool13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end12
  %17 = load ptr, ptr %img.addr, align 8
  %ycbcr15 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %17, i32 0, i32 18
  %18 = load ptr, ptr %ycbcr15, align 8
  call void @_TIFFfree(ptr noundef %18)
  %19 = load ptr, ptr %img.addr, align 8
  %ycbcr16 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %19, i32 0, i32 18
  store ptr null, ptr %ycbcr16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12
  %20 = load ptr, ptr %img.addr, align 8
  %redcmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %20, i32 0, i32 10
  %21 = load ptr, ptr %redcmap, align 8
  %tobool18 = icmp ne ptr %21, null
  br i1 %tobool18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end17
  %22 = load ptr, ptr %img.addr, align 8
  %redcmap20 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %22, i32 0, i32 10
  %23 = load ptr, ptr %redcmap20, align 8
  call void @_TIFFfree(ptr noundef %23)
  %24 = load ptr, ptr %img.addr, align 8
  %greencmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %24, i32 0, i32 11
  %25 = load ptr, ptr %greencmap, align 8
  call void @_TIFFfree(ptr noundef %25)
  %26 = load ptr, ptr %img.addr, align 8
  %bluecmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %bluecmap, align 8
  call void @_TIFFfree(ptr noundef %27)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17
  ret void
}

declare void @_TIFFfree(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %img.addr, align 8
  %row_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 19
  store i32 0, ptr %row_offset, align 8
  %1 = load ptr, ptr %img.addr, align 8
  %col_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %1, i32 0, i32 20
  store i32 0, ptr %col_offset, align 4
  %2 = load ptr, ptr %img.addr, align 8
  %redcmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i32 0, i32 10
  store ptr null, ptr %redcmap, align 8
  %3 = load ptr, ptr %img.addr, align 8
  %greencmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %3, i32 0, i32 11
  store ptr null, ptr %greencmap, align 8
  %4 = load ptr, ptr %img.addr, align 8
  %bluecmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %4, i32 0, i32 12
  store ptr null, ptr %bluecmap, align 8
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load ptr, ptr %img.addr, align 8
  %tif1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %6, i32 0, i32 0
  store ptr %5, ptr %tif1, align 8
  %7 = load i32, ptr %stop.addr, align 4
  %8 = load ptr, ptr %img.addr, align 8
  %stoponerr = getelementptr inbounds %struct._TIFFRGBAImage, ptr %8, i32 0, i32 1
  store i32 %7, ptr %stoponerr, align 8
  %9 = load ptr, ptr %tif.addr, align 8
  %10 = load ptr, ptr %img.addr, align 8
  %bitspersample = getelementptr inbounds %struct._TIFFRGBAImage, ptr %10, i32 0, i32 6
  %call = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %9, i64 noundef 258, ptr noundef %bitspersample)
  %11 = load ptr, ptr %img.addr, align 8
  %bitspersample2 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %11, i32 0, i32 6
  %12 = load i16, ptr %bitspersample2, align 8
  %conv = zext i16 %12 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 4, label %sw.bb
    i32 8, label %sw.bb
    i32 16, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %13 = load ptr, ptr %emsg.addr, align 8
  %14 = load ptr, ptr %emsg.addr, align 8
  %15 = call i64 @llvm.objectsize.i64.p0(ptr %14, i1 false, i1 true, i1 false)
  %16 = load ptr, ptr %img.addr, align 8
  %bitspersample3 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %16, i32 0, i32 6
  %17 = load i16, ptr %bitspersample3, align 8
  %conv4 = zext i16 %17 to i32
  %call5 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %13, i32 noundef 0, i64 noundef %15, ptr noundef @.str.15, i32 noundef %conv4)
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb
  %18 = load ptr, ptr %img.addr, align 8
  %alpha = getelementptr inbounds %struct._TIFFRGBAImage, ptr %18, i32 0, i32 3
  store i32 0, ptr %alpha, align 8
  %19 = load ptr, ptr %tif.addr, align 8
  %20 = load ptr, ptr %img.addr, align 8
  %samplesperpixel = getelementptr inbounds %struct._TIFFRGBAImage, ptr %20, i32 0, i32 7
  %call6 = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %19, i64 noundef 277, ptr noundef %samplesperpixel)
  %21 = load ptr, ptr %tif.addr, align 8
  %call7 = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %21, i64 noundef 338, ptr noundef %extrasamples, ptr noundef %sampleinfo)
  %22 = load i16, ptr %extrasamples, align 2
  %conv8 = zext i16 %22 to i32
  %cmp = icmp eq i32 %conv8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %23 = load ptr, ptr %sampleinfo, align 8
  %arrayidx = getelementptr inbounds i16, ptr %23, i64 0
  %24 = load i16, ptr %arrayidx, align 2
  %conv10 = zext i16 %24 to i32
  switch i32 %conv10, label %sw.epilog15 [
    i32 1, label %sw.bb11
    i32 2, label %sw.bb11
  ]

sw.bb11:                                          ; preds = %if.then, %if.then
  %25 = load ptr, ptr %sampleinfo, align 8
  %arrayidx12 = getelementptr inbounds i16, ptr %25, i64 0
  %26 = load i16, ptr %arrayidx12, align 2
  %conv13 = zext i16 %26 to i32
  %27 = load ptr, ptr %img.addr, align 8
  %alpha14 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %27, i32 0, i32 3
  store i32 %conv13, ptr %alpha14, align 8
  br label %sw.epilog15

sw.epilog15:                                      ; preds = %if.then, %sw.bb11
  br label %if.end

if.end:                                           ; preds = %sw.epilog15, %sw.epilog
  %28 = load ptr, ptr %img.addr, align 8
  %samplesperpixel16 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %28, i32 0, i32 7
  %29 = load i16, ptr %samplesperpixel16, align 2
  %conv17 = zext i16 %29 to i32
  %30 = load i16, ptr %extrasamples, align 2
  %conv18 = zext i16 %30 to i32
  %sub = sub nsw i32 %conv17, %conv18
  store i32 %sub, ptr %colorchannels, align 4
  %31 = load ptr, ptr %tif.addr, align 8
  %call19 = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %31, i64 noundef 259, ptr noundef %compress)
  %32 = load ptr, ptr %tif.addr, align 8
  %call20 = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %32, i64 noundef 284, ptr noundef %planarconfig)
  %33 = load ptr, ptr %tif.addr, align 8
  %34 = load ptr, ptr %img.addr, align 8
  %photometric = getelementptr inbounds %struct._TIFFRGBAImage, ptr %34, i32 0, i32 9
  %call21 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %33, i64 noundef 262, ptr noundef %photometric)
  %tobool = icmp ne i32 %call21, 0
  br i1 %tobool, label %if.end35, label %if.then22

if.then22:                                        ; preds = %if.end
  %35 = load i32, ptr %colorchannels, align 4
  switch i32 %35, label %sw.default32 [
    i32 1, label %sw.bb23
    i32 3, label %sw.bb30
  ]

sw.bb23:                                          ; preds = %if.then22
  %36 = load ptr, ptr %tif.addr, align 8
  %call24 = call i32 @isCCITTCompression(ptr noundef %36)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then26, label %if.else

if.then26:                                        ; preds = %sw.bb23
  %37 = load ptr, ptr %img.addr, align 8
  %photometric27 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %37, i32 0, i32 9
  store i16 0, ptr %photometric27, align 2
  br label %if.end29

if.else:                                          ; preds = %sw.bb23
  %38 = load ptr, ptr %img.addr, align 8
  %photometric28 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %38, i32 0, i32 9
  store i16 1, ptr %photometric28, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then26
  br label %sw.epilog34

sw.bb30:                                          ; preds = %if.then22
  %39 = load ptr, ptr %img.addr, align 8
  %photometric31 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %39, i32 0, i32 9
  store i16 2, ptr %photometric31, align 2
  br label %sw.epilog34

sw.default32:                                     ; preds = %if.then22
  %40 = load ptr, ptr %emsg.addr, align 8
  %41 = load ptr, ptr %emsg.addr, align 8
  %42 = call i64 @llvm.objectsize.i64.p0(ptr %41, i1 false, i1 true, i1 false)
  %call33 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %40, i32 noundef 0, i64 noundef %42, ptr noundef @.str.1, ptr noundef @photoTag)
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog34:                                      ; preds = %sw.bb30, %if.end29
  br label %if.end35

if.end35:                                         ; preds = %sw.epilog34, %if.end
  %43 = load ptr, ptr %img.addr, align 8
  %photometric36 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %43, i32 0, i32 9
  %44 = load i16, ptr %photometric36, align 2
  %conv37 = zext i16 %44 to i32
  switch i32 %conv37, label %sw.default172 [
    i32 3, label %sw.bb38
    i32 0, label %sw.bb83
    i32 1, label %sw.bb83
    i32 6, label %sw.bb98
    i32 2, label %sw.bb117
    i32 5, label %sw.bb123
    i32 32844, label %sw.bb141
    i32 32845, label %sw.bb151
  ]

sw.bb38:                                          ; preds = %if.end35
  %45 = load ptr, ptr %tif.addr, align 8
  %call39 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %45, i64 noundef 320, ptr noundef %red_orig, ptr noundef %green_orig, ptr noundef %blue_orig)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end43, label %if.then41

if.then41:                                        ; preds = %sw.bb38
  %46 = load ptr, ptr %tif.addr, align 8
  %call42 = call ptr @TIFFFileName(ptr noundef %46)
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call42, ptr noundef @.str.16)
  store i32 0, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %sw.bb38
  %47 = load ptr, ptr %img.addr, align 8
  %bitspersample44 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %47, i32 0, i32 6
  %48 = load i16, ptr %bitspersample44, align 8
  %conv45 = zext i16 %48 to i32
  %sh_prom = zext i32 %conv45 to i64
  %shl = shl i64 1, %sh_prom
  %conv46 = trunc i64 %shl to i32
  store i32 %conv46, ptr %n_color, align 4
  %49 = load i32, ptr %n_color, align 4
  %conv47 = sext i32 %49 to i64
  %mul = mul i64 2, %conv47
  %call48 = call ptr @_TIFFmalloc(i64 noundef %mul)
  %50 = load ptr, ptr %img.addr, align 8
  %redcmap49 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %50, i32 0, i32 10
  store ptr %call48, ptr %redcmap49, align 8
  %51 = load i32, ptr %n_color, align 4
  %conv50 = sext i32 %51 to i64
  %mul51 = mul i64 2, %conv50
  %call52 = call ptr @_TIFFmalloc(i64 noundef %mul51)
  %52 = load ptr, ptr %img.addr, align 8
  %greencmap53 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %52, i32 0, i32 11
  store ptr %call52, ptr %greencmap53, align 8
  %53 = load i32, ptr %n_color, align 4
  %conv54 = sext i32 %53 to i64
  %mul55 = mul i64 2, %conv54
  %call56 = call ptr @_TIFFmalloc(i64 noundef %mul55)
  %54 = load ptr, ptr %img.addr, align 8
  %bluecmap57 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %54, i32 0, i32 12
  store ptr %call56, ptr %bluecmap57, align 8
  %55 = load ptr, ptr %img.addr, align 8
  %redcmap58 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %55, i32 0, i32 10
  %56 = load ptr, ptr %redcmap58, align 8
  %tobool59 = icmp ne ptr %56, null
  br i1 %tobool59, label %lor.lhs.false, label %if.then65

lor.lhs.false:                                    ; preds = %if.end43
  %57 = load ptr, ptr %img.addr, align 8
  %greencmap60 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %57, i32 0, i32 11
  %58 = load ptr, ptr %greencmap60, align 8
  %tobool61 = icmp ne ptr %58, null
  br i1 %tobool61, label %lor.lhs.false62, label %if.then65

lor.lhs.false62:                                  ; preds = %lor.lhs.false
  %59 = load ptr, ptr %img.addr, align 8
  %bluecmap63 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %59, i32 0, i32 12
  %60 = load ptr, ptr %bluecmap63, align 8
  %tobool64 = icmp ne ptr %60, null
  br i1 %tobool64, label %if.end67, label %if.then65

if.then65:                                        ; preds = %lor.lhs.false62, %lor.lhs.false, %if.end43
  %61 = load ptr, ptr %tif.addr, align 8
  %call66 = call ptr @TIFFFileName(ptr noundef %61)
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call66, ptr noundef @.str.17)
  store i32 0, ptr %retval, align 4
  br label %return

if.end67:                                         ; preds = %lor.lhs.false62
  %62 = load ptr, ptr %img.addr, align 8
  %redcmap68 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %62, i32 0, i32 10
  %63 = load ptr, ptr %redcmap68, align 8
  %64 = load ptr, ptr %red_orig, align 8
  %65 = load i32, ptr %n_color, align 4
  %mul69 = mul nsw i32 %65, 2
  %conv70 = sext i32 %mul69 to i64
  %66 = load ptr, ptr %img.addr, align 8
  %redcmap71 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %66, i32 0, i32 10
  %67 = load ptr, ptr %redcmap71, align 8
  %68 = call i64 @llvm.objectsize.i64.p0(ptr %67, i1 false, i1 true, i1 false)
  %call72 = call ptr @__memcpy_chk(ptr noundef %63, ptr noundef %64, i64 noundef %conv70, i64 noundef %68) #4
  %69 = load ptr, ptr %img.addr, align 8
  %greencmap73 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %69, i32 0, i32 11
  %70 = load ptr, ptr %greencmap73, align 8
  %71 = load ptr, ptr %green_orig, align 8
  %72 = load i32, ptr %n_color, align 4
  %mul74 = mul nsw i32 %72, 2
  %conv75 = sext i32 %mul74 to i64
  %73 = load ptr, ptr %img.addr, align 8
  %greencmap76 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %73, i32 0, i32 11
  %74 = load ptr, ptr %greencmap76, align 8
  %75 = call i64 @llvm.objectsize.i64.p0(ptr %74, i1 false, i1 true, i1 false)
  %call77 = call ptr @__memcpy_chk(ptr noundef %70, ptr noundef %71, i64 noundef %conv75, i64 noundef %75) #4
  %76 = load ptr, ptr %img.addr, align 8
  %bluecmap78 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %76, i32 0, i32 12
  %77 = load ptr, ptr %bluecmap78, align 8
  %78 = load ptr, ptr %blue_orig, align 8
  %79 = load i32, ptr %n_color, align 4
  %mul79 = mul nsw i32 %79, 2
  %conv80 = sext i32 %mul79 to i64
  %80 = load ptr, ptr %img.addr, align 8
  %bluecmap81 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %80, i32 0, i32 12
  %81 = load ptr, ptr %bluecmap81, align 8
  %82 = call i64 @llvm.objectsize.i64.p0(ptr %81, i1 false, i1 true, i1 false)
  %call82 = call ptr @__memcpy_chk(ptr noundef %77, ptr noundef %78, i64 noundef %conv80, i64 noundef %82) #4
  br label %sw.bb83

sw.bb83:                                          ; preds = %if.end35, %if.end35, %if.end67
  %83 = load i16, ptr %planarconfig, align 2
  %conv84 = zext i16 %83 to i32
  %cmp85 = icmp eq i32 %conv84, 1
  br i1 %cmp85, label %land.lhs.true, label %if.end97

land.lhs.true:                                    ; preds = %sw.bb83
  %84 = load ptr, ptr %img.addr, align 8
  %samplesperpixel87 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %84, i32 0, i32 7
  %85 = load i16, ptr %samplesperpixel87, align 2
  %conv88 = zext i16 %85 to i32
  %cmp89 = icmp ne i32 %conv88, 1
  br i1 %cmp89, label %if.then91, label %if.end97

if.then91:                                        ; preds = %land.lhs.true
  %86 = load ptr, ptr %emsg.addr, align 8
  %87 = load ptr, ptr %emsg.addr, align 8
  %88 = call i64 @llvm.objectsize.i64.p0(ptr %87, i1 false, i1 true, i1 false)
  %89 = load ptr, ptr %img.addr, align 8
  %photometric92 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %89, i32 0, i32 9
  %90 = load i16, ptr %photometric92, align 2
  %conv93 = zext i16 %90 to i32
  %91 = load ptr, ptr %img.addr, align 8
  %samplesperpixel94 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %91, i32 0, i32 7
  %92 = load i16, ptr %samplesperpixel94, align 2
  %conv95 = zext i16 %92 to i32
  %call96 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %86, i32 noundef 0, i64 noundef %88, ptr noundef @.str.2, ptr noundef @photoTag, i32 noundef %conv93, ptr noundef @.str.3, i32 noundef %conv95)
  store i32 0, ptr %retval, align 4
  br label %return

if.end97:                                         ; preds = %land.lhs.true, %sw.bb83
  br label %sw.epilog176

sw.bb98:                                          ; preds = %if.end35
  %93 = load i16, ptr %planarconfig, align 2
  %conv99 = zext i16 %93 to i32
  %cmp100 = icmp ne i32 %conv99, 1
  br i1 %cmp100, label %if.then102, label %if.end105

if.then102:                                       ; preds = %sw.bb98
  %94 = load ptr, ptr %emsg.addr, align 8
  %95 = load ptr, ptr %emsg.addr, align 8
  %96 = call i64 @llvm.objectsize.i64.p0(ptr %95, i1 false, i1 true, i1 false)
  %97 = load i16, ptr %planarconfig, align 2
  %conv103 = zext i16 %97 to i32
  %call104 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %94, i32 noundef 0, i64 noundef %96, ptr noundef @.str.4, ptr noundef @.str.5, i32 noundef %conv103)
  store i32 0, ptr %retval, align 4
  br label %return

if.end105:                                        ; preds = %sw.bb98
  %98 = load i16, ptr %compress, align 2
  %conv106 = zext i16 %98 to i32
  %cmp107 = icmp eq i32 %conv106, 7
  br i1 %cmp107, label %land.lhs.true109, label %if.end116

land.lhs.true109:                                 ; preds = %if.end105
  %99 = load i16, ptr %planarconfig, align 2
  %conv110 = zext i16 %99 to i32
  %cmp111 = icmp eq i32 %conv110, 1
  br i1 %cmp111, label %if.then113, label %if.end116

if.then113:                                       ; preds = %land.lhs.true109
  %100 = load ptr, ptr %tif.addr, align 8
  %call114 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %100, i64 noundef 65538, i32 noundef 1)
  %101 = load ptr, ptr %img.addr, align 8
  %photometric115 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %101, i32 0, i32 9
  store i16 2, ptr %photometric115, align 2
  br label %if.end116

if.end116:                                        ; preds = %if.then113, %land.lhs.true109, %if.end105
  br label %sw.epilog176

sw.bb117:                                         ; preds = %if.end35
  %102 = load i32, ptr %colorchannels, align 4
  %cmp118 = icmp slt i32 %102, 3
  br i1 %cmp118, label %if.then120, label %if.end122

if.then120:                                       ; preds = %sw.bb117
  %103 = load ptr, ptr %emsg.addr, align 8
  %104 = load ptr, ptr %emsg.addr, align 8
  %105 = call i64 @llvm.objectsize.i64.p0(ptr %104, i1 false, i1 true, i1 false)
  %106 = load i32, ptr %colorchannels, align 4
  %call121 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %103, i32 noundef 0, i64 noundef %105, ptr noundef @.str.6, ptr noundef @.str.7, i32 noundef %106)
  store i32 0, ptr %retval, align 4
  br label %return

if.end122:                                        ; preds = %sw.bb117
  br label %sw.epilog176

sw.bb123:                                         ; preds = %if.end35
  %107 = load ptr, ptr %tif.addr, align 8
  %call124 = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %107, i64 noundef 332, ptr noundef %inkset)
  %108 = load i16, ptr %inkset, align 2
  %conv125 = zext i16 %108 to i32
  %cmp126 = icmp ne i32 %conv125, 1
  br i1 %cmp126, label %if.then128, label %if.end131

if.then128:                                       ; preds = %sw.bb123
  %109 = load ptr, ptr %emsg.addr, align 8
  %110 = load ptr, ptr %emsg.addr, align 8
  %111 = call i64 @llvm.objectsize.i64.p0(ptr %110, i1 false, i1 true, i1 false)
  %112 = load i16, ptr %inkset, align 2
  %conv129 = zext i16 %112 to i32
  %call130 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %109, i32 noundef 0, i64 noundef %111, ptr noundef @.str.8, ptr noundef @.str.9, i32 noundef %conv129)
  store i32 0, ptr %retval, align 4
  br label %return

if.end131:                                        ; preds = %sw.bb123
  %113 = load ptr, ptr %img.addr, align 8
  %samplesperpixel132 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %113, i32 0, i32 7
  %114 = load i16, ptr %samplesperpixel132, align 2
  %conv133 = zext i16 %114 to i32
  %cmp134 = icmp ne i32 %conv133, 4
  br i1 %cmp134, label %if.then136, label %if.end140

if.then136:                                       ; preds = %if.end131
  %115 = load ptr, ptr %emsg.addr, align 8
  %116 = load ptr, ptr %emsg.addr, align 8
  %117 = call i64 @llvm.objectsize.i64.p0(ptr %116, i1 false, i1 true, i1 false)
  %118 = load ptr, ptr %img.addr, align 8
  %samplesperpixel137 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %118, i32 0, i32 7
  %119 = load i16, ptr %samplesperpixel137, align 2
  %conv138 = zext i16 %119 to i32
  %call139 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %115, i32 noundef 0, i64 noundef %117, ptr noundef @.str.8, ptr noundef @.str.3, i32 noundef %conv138)
  store i32 0, ptr %retval, align 4
  br label %return

if.end140:                                        ; preds = %if.end131
  br label %sw.epilog176

sw.bb141:                                         ; preds = %if.end35
  %120 = load i16, ptr %compress, align 2
  %conv142 = zext i16 %120 to i32
  %cmp143 = icmp ne i32 %conv142, 34676
  br i1 %cmp143, label %if.then145, label %if.end147

if.then145:                                       ; preds = %sw.bb141
  %121 = load ptr, ptr %emsg.addr, align 8
  %122 = load ptr, ptr %emsg.addr, align 8
  %123 = call i64 @llvm.objectsize.i64.p0(ptr %122, i1 false, i1 true, i1 false)
  %call146 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %121, i32 noundef 0, i64 noundef %123, ptr noundef @.str.10, ptr noundef @.str.11, i32 noundef 34676)
  store i32 0, ptr %retval, align 4
  br label %return

if.end147:                                        ; preds = %sw.bb141
  %124 = load ptr, ptr %tif.addr, align 8
  %call148 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %124, i64 noundef 65560, i32 noundef 3)
  %125 = load ptr, ptr %img.addr, align 8
  %photometric149 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %125, i32 0, i32 9
  store i16 1, ptr %photometric149, align 2
  %126 = load ptr, ptr %img.addr, align 8
  %bitspersample150 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %126, i32 0, i32 6
  store i16 8, ptr %bitspersample150, align 8
  br label %sw.epilog176

sw.bb151:                                         ; preds = %if.end35
  %127 = load i16, ptr %compress, align 2
  %conv152 = zext i16 %127 to i32
  %cmp153 = icmp ne i32 %conv152, 34676
  br i1 %cmp153, label %land.lhs.true155, label %if.end161

land.lhs.true155:                                 ; preds = %sw.bb151
  %128 = load i16, ptr %compress, align 2
  %conv156 = zext i16 %128 to i32
  %cmp157 = icmp ne i32 %conv156, 34677
  br i1 %cmp157, label %if.then159, label %if.end161

if.then159:                                       ; preds = %land.lhs.true155
  %129 = load ptr, ptr %emsg.addr, align 8
  %130 = load ptr, ptr %emsg.addr, align 8
  %131 = call i64 @llvm.objectsize.i64.p0(ptr %130, i1 false, i1 true, i1 false)
  %call160 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %129, i32 noundef 0, i64 noundef %131, ptr noundef @.str.12, ptr noundef @.str.11, i32 noundef 34676, i32 noundef 34677)
  store i32 0, ptr %retval, align 4
  br label %return

if.end161:                                        ; preds = %land.lhs.true155, %sw.bb151
  %132 = load i16, ptr %planarconfig, align 2
  %conv162 = zext i16 %132 to i32
  %cmp163 = icmp ne i32 %conv162, 1
  br i1 %cmp163, label %if.then165, label %if.end168

if.then165:                                       ; preds = %if.end161
  %133 = load ptr, ptr %emsg.addr, align 8
  %134 = load ptr, ptr %emsg.addr, align 8
  %135 = call i64 @llvm.objectsize.i64.p0(ptr %134, i1 false, i1 true, i1 false)
  %136 = load i16, ptr %planarconfig, align 2
  %conv166 = zext i16 %136 to i32
  %call167 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %133, i32 noundef 0, i64 noundef %135, ptr noundef @.str.13, ptr noundef @.str.5, i32 noundef %conv166)
  store i32 0, ptr %retval, align 4
  br label %return

if.end168:                                        ; preds = %if.end161
  %137 = load ptr, ptr %tif.addr, align 8
  %call169 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %137, i64 noundef 65560, i32 noundef 3)
  %138 = load ptr, ptr %img.addr, align 8
  %photometric170 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %138, i32 0, i32 9
  store i16 2, ptr %photometric170, align 2
  %139 = load ptr, ptr %img.addr, align 8
  %bitspersample171 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %139, i32 0, i32 6
  store i16 8, ptr %bitspersample171, align 8
  br label %sw.epilog176

sw.default172:                                    ; preds = %if.end35
  %140 = load ptr, ptr %emsg.addr, align 8
  %141 = load ptr, ptr %emsg.addr, align 8
  %142 = call i64 @llvm.objectsize.i64.p0(ptr %141, i1 false, i1 true, i1 false)
  %143 = load ptr, ptr %img.addr, align 8
  %photometric173 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %143, i32 0, i32 9
  %144 = load i16, ptr %photometric173, align 2
  %conv174 = zext i16 %144 to i32
  %call175 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %140, i32 noundef 0, i64 noundef %142, ptr noundef @.str.14, ptr noundef @photoTag, i32 noundef %conv174)
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog176:                                     ; preds = %if.end168, %if.end147, %if.end140, %if.end122, %if.end116, %if.end97
  %145 = load ptr, ptr %img.addr, align 8
  %Map = getelementptr inbounds %struct._TIFFRGBAImage, ptr %145, i32 0, i32 15
  store ptr null, ptr %Map, align 8
  %146 = load ptr, ptr %img.addr, align 8
  %BWmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %146, i32 0, i32 16
  store ptr null, ptr %BWmap, align 8
  %147 = load ptr, ptr %img.addr, align 8
  %PALmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %147, i32 0, i32 17
  store ptr null, ptr %PALmap, align 8
  %148 = load ptr, ptr %img.addr, align 8
  %ycbcr = getelementptr inbounds %struct._TIFFRGBAImage, ptr %148, i32 0, i32 18
  store ptr null, ptr %ycbcr, align 8
  %149 = load ptr, ptr %tif.addr, align 8
  %150 = load ptr, ptr %img.addr, align 8
  %width = getelementptr inbounds %struct._TIFFRGBAImage, ptr %150, i32 0, i32 4
  %call177 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %149, i64 noundef 256, ptr noundef %width)
  %151 = load ptr, ptr %tif.addr, align 8
  %152 = load ptr, ptr %img.addr, align 8
  %height = getelementptr inbounds %struct._TIFFRGBAImage, ptr %152, i32 0, i32 5
  %call178 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %151, i64 noundef 257, ptr noundef %height)
  %153 = load ptr, ptr %tif.addr, align 8
  %154 = load ptr, ptr %img.addr, align 8
  %orientation = getelementptr inbounds %struct._TIFFRGBAImage, ptr %154, i32 0, i32 8
  %call179 = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %153, i64 noundef 274, ptr noundef %orientation)
  %155 = load i16, ptr %planarconfig, align 2
  %conv180 = zext i16 %155 to i32
  %cmp181 = icmp eq i32 %conv180, 2
  br i1 %cmp181, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.epilog176
  %156 = load i32, ptr %colorchannels, align 4
  %cmp183 = icmp sgt i32 %156, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.epilog176
  %157 = phi i1 [ false, %sw.epilog176 ], [ %cmp183, %land.rhs ]
  %lnot = xor i1 %157, true
  %lnot.ext = zext i1 %lnot to i32
  %158 = load ptr, ptr %img.addr, align 8
  %isContig = getelementptr inbounds %struct._TIFFRGBAImage, ptr %158, i32 0, i32 2
  store i32 %lnot.ext, ptr %isContig, align 4
  %159 = load ptr, ptr %img.addr, align 8
  %isContig185 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %159, i32 0, i32 2
  %160 = load i32, ptr %isContig185, align 4
  %tobool186 = icmp ne i32 %160, 0
  br i1 %tobool186, label %if.then187, label %if.else191

if.then187:                                       ; preds = %land.end
  %161 = load ptr, ptr %tif.addr, align 8
  %call188 = call i32 @TIFFIsTiled(ptr noundef %161)
  %tobool189 = icmp ne i32 %call188, 0
  %162 = zext i1 %tobool189 to i64
  %cond = select i1 %tobool189, ptr @gtTileContig, ptr @gtStripContig
  %163 = load ptr, ptr %img.addr, align 8
  %get = getelementptr inbounds %struct._TIFFRGBAImage, ptr %163, i32 0, i32 13
  store ptr %cond, ptr %get, align 8
  %164 = load ptr, ptr %img.addr, align 8
  %call190 = call i32 @pickTileContigCase(ptr noundef %164)
  br label %if.end197

if.else191:                                       ; preds = %land.end
  %165 = load ptr, ptr %tif.addr, align 8
  %call192 = call i32 @TIFFIsTiled(ptr noundef %165)
  %tobool193 = icmp ne i32 %call192, 0
  %166 = zext i1 %tobool193 to i64
  %cond194 = select i1 %tobool193, ptr @gtTileSeparate, ptr @gtStripSeparate
  %167 = load ptr, ptr %img.addr, align 8
  %get195 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %167, i32 0, i32 13
  store ptr %cond194, ptr %get195, align 8
  %168 = load ptr, ptr %img.addr, align 8
  %call196 = call i32 @pickTileSeparateCase(ptr noundef %168)
  br label %if.end197

if.end197:                                        ; preds = %if.else191, %if.then187
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end197, %sw.default172, %if.then165, %if.then159, %if.then145, %if.then136, %if.then128, %if.then120, %if.then102, %if.then91, %if.then65, %if.then41, %sw.default32, %sw.default
  %169 = load i32, ptr %retval, align 4
  ret i32 %169
}

declare i32 @TIFFGetFieldDefaulted(ptr noundef, i64 noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @isCCITTCompression(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %compress = alloca i16, align 2
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %call = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %0, i64 noundef 259, ptr noundef %compress)
  %1 = load i16, ptr %compress, align 2
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i16, ptr %compress, align 2
  %conv2 = zext i16 %2 to i32
  %cmp3 = icmp eq i32 %conv2, 4
  br i1 %cmp3, label %lor.end, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %3 = load i16, ptr %compress, align 2
  %conv6 = zext i16 %3 to i32
  %cmp7 = icmp eq i32 %conv6, 2
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false5
  %4 = load i16, ptr %compress, align 2
  %conv9 = zext i16 %4 to i32
  %cmp10 = icmp eq i32 %conv9, 32771
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false5, %lor.lhs.false, %entry
  %5 = phi i1 [ true, %lor.lhs.false5 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp10, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  ret i32 %lor.ext
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

declare ptr @TIFFFileName(ptr noundef) #1

declare ptr @_TIFFmalloc(i64 noundef) #1

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

declare i32 @TIFFSetField(ptr noundef, i64 noundef, ...) #1

declare i32 @TIFFIsTiled(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @gtTileContig(ptr noundef %img, ptr noundef %raster, i64 noundef %w, i64 noundef %h) #0 {
entry:
  %retval = alloca i32, align 4
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
  %0 = load ptr, ptr %img.addr, align 8
  %tif1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %tif1, align 8
  store ptr %1, ptr %tif, align 8
  %2 = load ptr, ptr %img.addr, align 8
  %put2 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i32 0, i32 14
  %3 = load ptr, ptr %put2, align 8
  store ptr %3, ptr %put, align 8
  %4 = load ptr, ptr %tif, align 8
  %call = call i64 @TIFFTileSize(ptr noundef %4)
  %call3 = call ptr @_TIFFmalloc(i64 noundef %call)
  store ptr %call3, ptr %buf, align 8
  %5 = load ptr, ptr %buf, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %tif, align 8
  %call4 = call ptr @TIFFFileName(ptr noundef %6)
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call4, ptr noundef @.str.24)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %tif, align 8
  %call5 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %7, i64 noundef 322, ptr noundef %tw)
  %8 = load ptr, ptr %tif, align 8
  %call6 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %8, i64 noundef 323, ptr noundef %th)
  %9 = load ptr, ptr %img.addr, align 8
  %10 = load i64, ptr %h.addr, align 8
  %call7 = call i64 @setorientation(ptr noundef %9, i64 noundef %10)
  store i64 %call7, ptr %y, align 8
  %11 = load ptr, ptr %img.addr, align 8
  %orientation8 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %11, i32 0, i32 8
  %12 = load i16, ptr %orientation8, align 4
  store i16 %12, ptr %orientation, align 2
  %13 = load i16, ptr %orientation, align 2
  %conv = zext i16 %13 to i32
  %cmp9 = icmp eq i32 %conv, 1
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %14 = load i64, ptr %tw, align 8
  %15 = load i64, ptr %w.addr, align 8
  %add = add i64 %14, %15
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %16 = load i64, ptr %tw, align 8
  %17 = load i64, ptr %w.addr, align 8
  %sub = sub i64 %16, %17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add, %cond.true ], [ %sub, %cond.false ]
  %sub11 = sub nsw i64 0, %cond
  store i64 %sub11, ptr %toskew, align 8
  store i64 0, ptr %row, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc57, %cond.end
  %18 = load i64, ptr %row, align 8
  %19 = load i64, ptr %h.addr, align 8
  %cmp12 = icmp ult i64 %18, %19
  br i1 %cmp12, label %for.body, label %for.end59

for.body:                                         ; preds = %for.cond
  %20 = load i64, ptr %row, align 8
  %21 = load i64, ptr %th, align 8
  %add14 = add i64 %20, %21
  %22 = load i64, ptr %h.addr, align 8
  %cmp15 = icmp ugt i64 %add14, %22
  br i1 %cmp15, label %cond.true17, label %cond.false19

cond.true17:                                      ; preds = %for.body
  %23 = load i64, ptr %h.addr, align 8
  %24 = load i64, ptr %row, align 8
  %sub18 = sub i64 %23, %24
  br label %cond.end20

cond.false19:                                     ; preds = %for.body
  %25 = load i64, ptr %th, align 8
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %cond.true17
  %cond21 = phi i64 [ %sub18, %cond.true17 ], [ %25, %cond.false19 ]
  store i64 %cond21, ptr %nrow, align 8
  store i64 0, ptr %col, align 8
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc, %cond.end20
  %26 = load i64, ptr %col, align 8
  %27 = load i64, ptr %w.addr, align 8
  %cmp23 = icmp ult i64 %26, %27
  br i1 %cmp23, label %for.body25, label %for.end

for.body25:                                       ; preds = %for.cond22
  %28 = load ptr, ptr %tif, align 8
  %29 = load ptr, ptr %buf, align 8
  %30 = load i64, ptr %col, align 8
  %31 = load ptr, ptr %img.addr, align 8
  %col_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %31, i32 0, i32 20
  %32 = load i32, ptr %col_offset, align 4
  %conv26 = sext i32 %32 to i64
  %add27 = add i64 %30, %conv26
  %33 = load i64, ptr %row, align 8
  %34 = load ptr, ptr %img.addr, align 8
  %row_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %34, i32 0, i32 19
  %35 = load i32, ptr %row_offset, align 8
  %conv28 = sext i32 %35 to i64
  %add29 = add i64 %33, %conv28
  %call30 = call i64 @TIFFReadTile(ptr noundef %28, ptr noundef %29, i64 noundef %add27, i64 noundef %add29, i64 noundef 0, i16 noundef zeroext 0)
  %cmp31 = icmp slt i64 %call30, 0
  br i1 %cmp31, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %for.body25
  %36 = load ptr, ptr %img.addr, align 8
  %stoponerr = getelementptr inbounds %struct._TIFFRGBAImage, ptr %36, i32 0, i32 1
  %37 = load i32, ptr %stoponerr, align 8
  %tobool = icmp ne i32 %37, 0
  br i1 %tobool, label %if.then33, label %if.end34

if.then33:                                        ; preds = %land.lhs.true
  br label %for.end

if.end34:                                         ; preds = %land.lhs.true, %for.body25
  %38 = load i64, ptr %col, align 8
  %39 = load i64, ptr %tw, align 8
  %add35 = add i64 %38, %39
  %40 = load i64, ptr %w.addr, align 8
  %cmp36 = icmp ugt i64 %add35, %40
  br i1 %cmp36, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end34
  %41 = load i64, ptr %w.addr, align 8
  %42 = load i64, ptr %col, align 8
  %sub39 = sub i64 %41, %42
  store i64 %sub39, ptr %npix, align 8
  %43 = load i64, ptr %tw, align 8
  %44 = load i64, ptr %npix, align 8
  %sub40 = sub i64 %43, %44
  store i64 %sub40, ptr %fromskew, align 8
  %45 = load ptr, ptr %put, align 8
  %46 = load ptr, ptr %img.addr, align 8
  %47 = load ptr, ptr %raster.addr, align 8
  %48 = load i64, ptr %y, align 8
  %49 = load i64, ptr %w.addr, align 8
  %mul = mul i64 %48, %49
  %add.ptr = getelementptr inbounds i64, ptr %47, i64 %mul
  %50 = load i64, ptr %col, align 8
  %add.ptr41 = getelementptr inbounds i64, ptr %add.ptr, i64 %50
  %51 = load i64, ptr %col, align 8
  %52 = load i64, ptr %y, align 8
  %53 = load i64, ptr %npix, align 8
  %54 = load i64, ptr %nrow, align 8
  %55 = load i64, ptr %fromskew, align 8
  %56 = load i64, ptr %toskew, align 8
  %57 = load i64, ptr %fromskew, align 8
  %add42 = add nsw i64 %56, %57
  %58 = load ptr, ptr %buf, align 8
  call void %45(ptr noundef %46, ptr noundef %add.ptr41, i64 noundef %51, i64 noundef %52, i64 noundef %53, i64 noundef %54, i64 noundef %55, i64 noundef %add42, ptr noundef %58)
  br label %if.end46

if.else:                                          ; preds = %if.end34
  %59 = load ptr, ptr %put, align 8
  %60 = load ptr, ptr %img.addr, align 8
  %61 = load ptr, ptr %raster.addr, align 8
  %62 = load i64, ptr %y, align 8
  %63 = load i64, ptr %w.addr, align 8
  %mul43 = mul i64 %62, %63
  %add.ptr44 = getelementptr inbounds i64, ptr %61, i64 %mul43
  %64 = load i64, ptr %col, align 8
  %add.ptr45 = getelementptr inbounds i64, ptr %add.ptr44, i64 %64
  %65 = load i64, ptr %col, align 8
  %66 = load i64, ptr %y, align 8
  %67 = load i64, ptr %tw, align 8
  %68 = load i64, ptr %nrow, align 8
  %69 = load i64, ptr %toskew, align 8
  %70 = load ptr, ptr %buf, align 8
  call void %59(ptr noundef %60, ptr noundef %add.ptr45, i64 noundef %65, i64 noundef %66, i64 noundef %67, i64 noundef %68, i64 noundef 0, i64 noundef %69, ptr noundef %70)
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then38
  br label %for.inc

for.inc:                                          ; preds = %if.end46
  %71 = load i64, ptr %tw, align 8
  %72 = load i64, ptr %col, align 8
  %add47 = add i64 %72, %71
  store i64 %add47, ptr %col, align 8
  br label %for.cond22, !llvm.loop !6

for.end:                                          ; preds = %if.then33, %for.cond22
  %73 = load i16, ptr %orientation, align 2
  %conv48 = zext i16 %73 to i32
  %cmp49 = icmp eq i32 %conv48, 1
  br i1 %cmp49, label %cond.true51, label %cond.false53

cond.true51:                                      ; preds = %for.end
  %74 = load i64, ptr %nrow, align 8
  %sub52 = sub nsw i64 0, %74
  br label %cond.end54

cond.false53:                                     ; preds = %for.end
  %75 = load i64, ptr %nrow, align 8
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false53, %cond.true51
  %cond55 = phi i64 [ %sub52, %cond.true51 ], [ %75, %cond.false53 ]
  %76 = load i64, ptr %y, align 8
  %add56 = add i64 %76, %cond55
  store i64 %add56, ptr %y, align 8
  br label %for.inc57

for.inc57:                                        ; preds = %cond.end54
  %77 = load i64, ptr %th, align 8
  %78 = load i64, ptr %row, align 8
  %add58 = add i64 %78, %77
  store i64 %add58, ptr %row, align 8
  br label %for.cond, !llvm.loop !8

for.end59:                                        ; preds = %for.cond
  %79 = load ptr, ptr %buf, align 8
  call void @_TIFFfree(ptr noundef %79)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end59, %if.then
  %80 = load i32, ptr %retval, align 4
  ret i32 %80
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @gtStripContig(ptr noundef %img, ptr noundef %raster, i64 noundef %w, i64 noundef %h) #0 {
entry:
  %retval = alloca i32, align 4
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
  %0 = load ptr, ptr %img.addr, align 8
  %tif1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %tif1, align 8
  store ptr %1, ptr %tif, align 8
  %2 = load ptr, ptr %img.addr, align 8
  %put2 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i32 0, i32 14
  %3 = load ptr, ptr %put2, align 8
  store ptr %3, ptr %put, align 8
  %4 = load ptr, ptr %img.addr, align 8
  %width = getelementptr inbounds %struct._TIFFRGBAImage, ptr %4, i32 0, i32 4
  %5 = load i64, ptr %width, align 8
  store i64 %5, ptr %imagewidth, align 8
  %6 = load ptr, ptr %tif, align 8
  %call = call i64 @TIFFStripSize(ptr noundef %6)
  %call3 = call ptr @_TIFFmalloc(i64 noundef %call)
  store ptr %call3, ptr %buf, align 8
  %7 = load ptr, ptr %buf, align 8
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %tif, align 8
  %call4 = call ptr @TIFFFileName(ptr noundef %8)
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call4, ptr noundef @.str.27)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %img.addr, align 8
  %10 = load i64, ptr %h.addr, align 8
  %call5 = call i64 @setorientation(ptr noundef %9, i64 noundef %10)
  store i64 %call5, ptr %y, align 8
  %11 = load ptr, ptr %img.addr, align 8
  %orientation6 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %11, i32 0, i32 8
  %12 = load i16, ptr %orientation6, align 4
  store i16 %12, ptr %orientation, align 2
  %13 = load i16, ptr %orientation, align 2
  %conv = zext i16 %13 to i32
  %cmp7 = icmp eq i32 %conv, 1
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %14 = load i64, ptr %w.addr, align 8
  %15 = load i64, ptr %w.addr, align 8
  %add = add i64 %14, %15
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %16 = load i64, ptr %w.addr, align 8
  %17 = load i64, ptr %w.addr, align 8
  %sub = sub i64 %16, %17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add, %cond.true ], [ %sub, %cond.false ]
  %sub9 = sub nsw i64 0, %cond
  store i64 %sub9, ptr %toskew, align 8
  %18 = load ptr, ptr %tif, align 8
  %call10 = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %18, i64 noundef 278, ptr noundef %rowsperstrip)
  %19 = load ptr, ptr %tif, align 8
  %call11 = call i64 @TIFFScanlineSize(ptr noundef %19)
  store i64 %call11, ptr %scanline, align 8
  %20 = load i64, ptr %w.addr, align 8
  %21 = load i64, ptr %imagewidth, align 8
  %cmp12 = icmp ult i64 %20, %21
  br i1 %cmp12, label %cond.true14, label %cond.false16

cond.true14:                                      ; preds = %cond.end
  %22 = load i64, ptr %imagewidth, align 8
  %23 = load i64, ptr %w.addr, align 8
  %sub15 = sub i64 %22, %23
  br label %cond.end17

cond.false16:                                     ; preds = %cond.end
  br label %cond.end17

cond.end17:                                       ; preds = %cond.false16, %cond.true14
  %cond18 = phi i64 [ %sub15, %cond.true14 ], [ 0, %cond.false16 ]
  store i64 %cond18, ptr %fromskew, align 8
  store i64 0, ptr %row, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end17
  %24 = load i64, ptr %row, align 8
  %25 = load i64, ptr %h.addr, align 8
  %cmp19 = icmp ult i64 %24, %25
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i64, ptr %row, align 8
  %27 = load i64, ptr %rowsperstrip, align 8
  %add21 = add i64 %26, %27
  %28 = load i64, ptr %h.addr, align 8
  %cmp22 = icmp ugt i64 %add21, %28
  br i1 %cmp22, label %cond.true24, label %cond.false26

cond.true24:                                      ; preds = %for.body
  %29 = load i64, ptr %h.addr, align 8
  %30 = load i64, ptr %row, align 8
  %sub25 = sub i64 %29, %30
  br label %cond.end27

cond.false26:                                     ; preds = %for.body
  %31 = load i64, ptr %rowsperstrip, align 8
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false26, %cond.true24
  %cond28 = phi i64 [ %sub25, %cond.true24 ], [ %31, %cond.false26 ]
  store i64 %cond28, ptr %nrow, align 8
  %32 = load ptr, ptr %tif, align 8
  %33 = load ptr, ptr %tif, align 8
  %34 = load i64, ptr %row, align 8
  %35 = load ptr, ptr %img.addr, align 8
  %row_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %35, i32 0, i32 19
  %36 = load i32, ptr %row_offset, align 8
  %conv29 = sext i32 %36 to i64
  %add30 = add i64 %34, %conv29
  %call31 = call i64 @TIFFComputeStrip(ptr noundef %33, i64 noundef %add30, i16 noundef zeroext 0)
  %37 = load ptr, ptr %buf, align 8
  %38 = load i64, ptr %nrow, align 8
  %39 = load i64, ptr %scanline, align 8
  %mul = mul i64 %38, %39
  %call32 = call i64 @TIFFReadEncodedStrip(ptr noundef %32, i64 noundef %call31, ptr noundef %37, i64 noundef %mul)
  %cmp33 = icmp slt i64 %call32, 0
  br i1 %cmp33, label %land.lhs.true, label %if.end36

land.lhs.true:                                    ; preds = %cond.end27
  %40 = load ptr, ptr %img.addr, align 8
  %stoponerr = getelementptr inbounds %struct._TIFFRGBAImage, ptr %40, i32 0, i32 1
  %41 = load i32, ptr %stoponerr, align 8
  %tobool = icmp ne i32 %41, 0
  br i1 %tobool, label %if.then35, label %if.end36

if.then35:                                        ; preds = %land.lhs.true
  br label %for.end

if.end36:                                         ; preds = %land.lhs.true, %cond.end27
  %42 = load ptr, ptr %put, align 8
  %43 = load ptr, ptr %img.addr, align 8
  %44 = load ptr, ptr %raster.addr, align 8
  %45 = load i64, ptr %y, align 8
  %46 = load i64, ptr %w.addr, align 8
  %mul37 = mul i64 %45, %46
  %add.ptr = getelementptr inbounds i64, ptr %44, i64 %mul37
  %47 = load i64, ptr %y, align 8
  %48 = load i64, ptr %w.addr, align 8
  %49 = load i64, ptr %nrow, align 8
  %50 = load i64, ptr %fromskew, align 8
  %51 = load i64, ptr %toskew, align 8
  %52 = load ptr, ptr %buf, align 8
  call void %42(ptr noundef %43, ptr noundef %add.ptr, i64 noundef 0, i64 noundef %47, i64 noundef %48, i64 noundef %49, i64 noundef %50, i64 noundef %51, ptr noundef %52)
  %53 = load i16, ptr %orientation, align 2
  %conv38 = zext i16 %53 to i32
  %cmp39 = icmp eq i32 %conv38, 1
  br i1 %cmp39, label %cond.true41, label %cond.false43

cond.true41:                                      ; preds = %if.end36
  %54 = load i64, ptr %nrow, align 8
  %sub42 = sub nsw i64 0, %54
  br label %cond.end44

cond.false43:                                     ; preds = %if.end36
  %55 = load i64, ptr %nrow, align 8
  br label %cond.end44

cond.end44:                                       ; preds = %cond.false43, %cond.true41
  %cond45 = phi i64 [ %sub42, %cond.true41 ], [ %55, %cond.false43 ]
  %56 = load i64, ptr %y, align 8
  %add46 = add i64 %56, %cond45
  store i64 %add46, ptr %y, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end44
  %57 = load i64, ptr %rowsperstrip, align 8
  %58 = load i64, ptr %row, align 8
  %add47 = add i64 %58, %57
  store i64 %add47, ptr %row, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %if.then35, %for.cond
  %59 = load ptr, ptr %buf, align 8
  call void @_TIFFfree(ptr noundef %59)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %60 = load i32, ptr %retval, align 4
  ret i32 %60
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @pickTileContigCase(ptr noundef %img) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %put = alloca ptr, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr null, ptr %put, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %call = call i32 @buildMap(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end68

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %img.addr, align 8
  %photometric = getelementptr inbounds %struct._TIFFRGBAImage, ptr %1, i32 0, i32 9
  %2 = load i16, ptr %photometric, align 2
  %conv = zext i16 %2 to i32
  switch i32 %conv, label %sw.epilog67 [
    i32 2, label %sw.bb
    i32 5, label %sw.bb31
    i32 3, label %sw.bb43
    i32 0, label %sw.bb51
    i32 1, label %sw.bb51
    i32 6, label %sw.bb59
  ]

sw.bb:                                            ; preds = %if.then
  %3 = load ptr, ptr %img.addr, align 8
  %bitspersample = getelementptr inbounds %struct._TIFFRGBAImage, ptr %3, i32 0, i32 6
  %4 = load i16, ptr %bitspersample, align 8
  %conv1 = zext i16 %4 to i32
  switch i32 %conv1, label %sw.epilog [
    i32 8, label %sw.bb2
    i32 16, label %sw.bb15
  ]

sw.bb2:                                           ; preds = %sw.bb
  %5 = load ptr, ptr %img.addr, align 8
  %Map = getelementptr inbounds %struct._TIFFRGBAImage, ptr %5, i32 0, i32 15
  %6 = load ptr, ptr %Map, align 8
  %tobool3 = icmp ne ptr %6, null
  br i1 %tobool3, label %if.else13, label %if.then4

if.then4:                                         ; preds = %sw.bb2
  %7 = load ptr, ptr %img.addr, align 8
  %alpha = getelementptr inbounds %struct._TIFFRGBAImage, ptr %7, i32 0, i32 3
  %8 = load i32, ptr %alpha, align 8
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then4
  store ptr @putRGBAAcontig8bittile, ptr %put, align 8
  br label %if.end12

if.else:                                          ; preds = %if.then4
  %9 = load ptr, ptr %img.addr, align 8
  %alpha7 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %alpha7, align 8
  %cmp8 = icmp eq i32 %10, 2
  br i1 %cmp8, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else
  store ptr @putRGBUAcontig8bittile, ptr %put, align 8
  br label %if.end

if.else11:                                        ; preds = %if.else
  store ptr @putRGBcontig8bittile, ptr %put, align 8
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then10
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then6
  br label %if.end14

if.else13:                                        ; preds = %sw.bb2
  store ptr @putRGBcontig8bitMaptile, ptr %put, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.end12
  br label %sw.epilog

sw.bb15:                                          ; preds = %sw.bb
  store ptr @putRGBcontig16bittile, ptr %put, align 8
  %11 = load ptr, ptr %img.addr, align 8
  %Map16 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %11, i32 0, i32 15
  %12 = load ptr, ptr %Map16, align 8
  %tobool17 = icmp ne ptr %12, null
  br i1 %tobool17, label %if.end30, label %if.then18

if.then18:                                        ; preds = %sw.bb15
  %13 = load ptr, ptr %img.addr, align 8
  %alpha19 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %13, i32 0, i32 3
  %14 = load i32, ptr %alpha19, align 8
  %cmp20 = icmp eq i32 %14, 1
  br i1 %cmp20, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.then18
  store ptr @putRGBAAcontig16bittile, ptr %put, align 8
  br label %if.end29

if.else23:                                        ; preds = %if.then18
  %15 = load ptr, ptr %img.addr, align 8
  %alpha24 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %15, i32 0, i32 3
  %16 = load i32, ptr %alpha24, align 8
  %cmp25 = icmp eq i32 %16, 2
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.else23
  store ptr @putRGBUAcontig16bittile, ptr %put, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.else23
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then22
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %sw.bb15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end30, %if.end14
  br label %sw.epilog67

sw.bb31:                                          ; preds = %if.then
  %17 = load ptr, ptr %img.addr, align 8
  %bitspersample32 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %17, i32 0, i32 6
  %18 = load i16, ptr %bitspersample32, align 8
  %conv33 = zext i16 %18 to i32
  %cmp34 = icmp eq i32 %conv33, 8
  br i1 %cmp34, label %if.then36, label %if.end42

if.then36:                                        ; preds = %sw.bb31
  %19 = load ptr, ptr %img.addr, align 8
  %Map37 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %19, i32 0, i32 15
  %20 = load ptr, ptr %Map37, align 8
  %tobool38 = icmp ne ptr %20, null
  br i1 %tobool38, label %if.else40, label %if.then39

if.then39:                                        ; preds = %if.then36
  store ptr @putRGBcontig8bitCMYKtile, ptr %put, align 8
  br label %if.end41

if.else40:                                        ; preds = %if.then36
  store ptr @putRGBcontig8bitCMYKMaptile, ptr %put, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.else40, %if.then39
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %sw.bb31
  br label %sw.epilog67

sw.bb43:                                          ; preds = %if.then
  %21 = load ptr, ptr %img.addr, align 8
  %bitspersample44 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %21, i32 0, i32 6
  %22 = load i16, ptr %bitspersample44, align 8
  %conv45 = zext i16 %22 to i32
  switch i32 %conv45, label %sw.epilog50 [
    i32 8, label %sw.bb46
    i32 4, label %sw.bb47
    i32 2, label %sw.bb48
    i32 1, label %sw.bb49
  ]

sw.bb46:                                          ; preds = %sw.bb43
  store ptr @put8bitcmaptile, ptr %put, align 8
  br label %sw.epilog50

sw.bb47:                                          ; preds = %sw.bb43
  store ptr @put4bitcmaptile, ptr %put, align 8
  br label %sw.epilog50

sw.bb48:                                          ; preds = %sw.bb43
  store ptr @put2bitcmaptile, ptr %put, align 8
  br label %sw.epilog50

sw.bb49:                                          ; preds = %sw.bb43
  store ptr @put1bitcmaptile, ptr %put, align 8
  br label %sw.epilog50

sw.epilog50:                                      ; preds = %sw.bb43, %sw.bb49, %sw.bb48, %sw.bb47, %sw.bb46
  br label %sw.epilog67

sw.bb51:                                          ; preds = %if.then, %if.then
  %23 = load ptr, ptr %img.addr, align 8
  %bitspersample52 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %23, i32 0, i32 6
  %24 = load i16, ptr %bitspersample52, align 8
  %conv53 = zext i16 %24 to i32
  switch i32 %conv53, label %sw.epilog58 [
    i32 8, label %sw.bb54
    i32 4, label %sw.bb55
    i32 2, label %sw.bb56
    i32 1, label %sw.bb57
  ]

sw.bb54:                                          ; preds = %sw.bb51
  store ptr @putgreytile, ptr %put, align 8
  br label %sw.epilog58

sw.bb55:                                          ; preds = %sw.bb51
  store ptr @put4bitbwtile, ptr %put, align 8
  br label %sw.epilog58

sw.bb56:                                          ; preds = %sw.bb51
  store ptr @put2bitbwtile, ptr %put, align 8
  br label %sw.epilog58

sw.bb57:                                          ; preds = %sw.bb51
  store ptr @put1bitbwtile, ptr %put, align 8
  br label %sw.epilog58

sw.epilog58:                                      ; preds = %sw.bb51, %sw.bb57, %sw.bb56, %sw.bb55, %sw.bb54
  br label %sw.epilog67

sw.bb59:                                          ; preds = %if.then
  %25 = load ptr, ptr %img.addr, align 8
  %bitspersample60 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %25, i32 0, i32 6
  %26 = load i16, ptr %bitspersample60, align 8
  %conv61 = zext i16 %26 to i32
  %cmp62 = icmp eq i32 %conv61, 8
  br i1 %cmp62, label %if.then64, label %if.end66

if.then64:                                        ; preds = %sw.bb59
  %27 = load ptr, ptr %img.addr, align 8
  %call65 = call ptr @initYCbCrConversion(ptr noundef %27)
  store ptr %call65, ptr %put, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %sw.bb59
  br label %sw.epilog67

sw.epilog67:                                      ; preds = %if.then, %if.end66, %sw.epilog58, %sw.epilog50, %if.end42, %sw.epilog
  br label %if.end68

if.end68:                                         ; preds = %sw.epilog67, %entry
  %28 = load ptr, ptr %put, align 8
  %29 = load ptr, ptr %img.addr, align 8
  %put69 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %29, i32 0, i32 14
  store ptr %28, ptr %put69, align 8
  %cmp70 = icmp ne ptr %28, null
  %conv71 = zext i1 %cmp70 to i32
  ret i32 %conv71
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @gtTileSeparate(ptr noundef %img, ptr noundef %raster, i64 noundef %w, i64 noundef %h) #0 {
entry:
  %retval = alloca i32, align 4
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
  %0 = load ptr, ptr %img.addr, align 8
  %tif1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %tif1, align 8
  store ptr %1, ptr %tif, align 8
  %2 = load ptr, ptr %img.addr, align 8
  %put2 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i32 0, i32 14
  %3 = load ptr, ptr %put2, align 8
  store ptr %3, ptr %put, align 8
  %4 = load ptr, ptr %img.addr, align 8
  %alpha3 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %alpha3, align 8
  store i32 %5, ptr %alpha, align 4
  %6 = load ptr, ptr %tif, align 8
  %call = call i64 @TIFFTileSize(ptr noundef %6)
  store i64 %call, ptr %tilesize, align 8
  %7 = load i64, ptr %tilesize, align 8
  %mul = mul nsw i64 4, %7
  %call4 = call ptr @_TIFFmalloc(i64 noundef %mul)
  store ptr %call4, ptr %buf, align 8
  %8 = load ptr, ptr %buf, align 8
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %tif, align 8
  %call5 = call ptr @TIFFFileName(ptr noundef %9)
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call5, ptr noundef @.str.24)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %buf, align 8
  store ptr %10, ptr %r, align 8
  %11 = load ptr, ptr %r, align 8
  %12 = load i64, ptr %tilesize, align 8
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %12
  store ptr %add.ptr, ptr %g, align 8
  %13 = load ptr, ptr %g, align 8
  %14 = load i64, ptr %tilesize, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %13, i64 %14
  store ptr %add.ptr6, ptr %b, align 8
  %15 = load ptr, ptr %b, align 8
  %16 = load i64, ptr %tilesize, align 8
  %add.ptr7 = getelementptr inbounds i8, ptr %15, i64 %16
  store ptr %add.ptr7, ptr %a, align 8
  %17 = load i32, ptr %alpha, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  %18 = load ptr, ptr %a, align 8
  %19 = load i64, ptr %tilesize, align 8
  %20 = load ptr, ptr %a, align 8
  %21 = call i64 @llvm.objectsize.i64.p0(ptr %20, i1 false, i1 true, i1 false)
  %call9 = call ptr @__memset_chk(ptr noundef %18, i32 noundef 255, i64 noundef %19, i64 noundef %21) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  %22 = load ptr, ptr %tif, align 8
  %call11 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %22, i64 noundef 322, ptr noundef %tw)
  %23 = load ptr, ptr %tif, align 8
  %call12 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %23, i64 noundef 323, ptr noundef %th)
  %24 = load ptr, ptr %img.addr, align 8
  %25 = load i64, ptr %h.addr, align 8
  %call13 = call i64 @setorientation(ptr noundef %24, i64 noundef %25)
  store i64 %call13, ptr %y, align 8
  %26 = load ptr, ptr %img.addr, align 8
  %orientation14 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %26, i32 0, i32 8
  %27 = load i16, ptr %orientation14, align 4
  store i16 %27, ptr %orientation, align 2
  %28 = load i16, ptr %orientation, align 2
  %conv = zext i16 %28 to i32
  %cmp15 = icmp eq i32 %conv, 1
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end10
  %29 = load i64, ptr %tw, align 8
  %30 = load i64, ptr %w.addr, align 8
  %add = add i64 %29, %30
  br label %cond.end

cond.false:                                       ; preds = %if.end10
  %31 = load i64, ptr %tw, align 8
  %32 = load i64, ptr %w.addr, align 8
  %sub = sub i64 %31, %32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add, %cond.true ], [ %sub, %cond.false ]
  %sub17 = sub nsw i64 0, %cond
  store i64 %sub17, ptr %toskew, align 8
  store i64 0, ptr %row, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc110, %cond.end
  %33 = load i64, ptr %row, align 8
  %34 = load i64, ptr %h.addr, align 8
  %cmp18 = icmp ult i64 %33, %34
  br i1 %cmp18, label %for.body, label %for.end112

for.body:                                         ; preds = %for.cond
  %35 = load i64, ptr %row, align 8
  %36 = load i64, ptr %th, align 8
  %add20 = add i64 %35, %36
  %37 = load i64, ptr %h.addr, align 8
  %cmp21 = icmp ugt i64 %add20, %37
  br i1 %cmp21, label %cond.true23, label %cond.false25

cond.true23:                                      ; preds = %for.body
  %38 = load i64, ptr %h.addr, align 8
  %39 = load i64, ptr %row, align 8
  %sub24 = sub i64 %38, %39
  br label %cond.end26

cond.false25:                                     ; preds = %for.body
  %40 = load i64, ptr %th, align 8
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false25, %cond.true23
  %cond27 = phi i64 [ %sub24, %cond.true23 ], [ %40, %cond.false25 ]
  store i64 %cond27, ptr %nrow, align 8
  store i64 0, ptr %col, align 8
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc, %cond.end26
  %41 = load i64, ptr %col, align 8
  %42 = load i64, ptr %w.addr, align 8
  %cmp29 = icmp ult i64 %41, %42
  br i1 %cmp29, label %for.body31, label %for.end

for.body31:                                       ; preds = %for.cond28
  %43 = load ptr, ptr %tif, align 8
  %44 = load ptr, ptr %r, align 8
  %45 = load i64, ptr %col, align 8
  %46 = load ptr, ptr %img.addr, align 8
  %col_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %46, i32 0, i32 20
  %47 = load i32, ptr %col_offset, align 4
  %conv32 = sext i32 %47 to i64
  %add33 = add i64 %45, %conv32
  %48 = load i64, ptr %row, align 8
  %49 = load ptr, ptr %img.addr, align 8
  %row_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %49, i32 0, i32 19
  %50 = load i32, ptr %row_offset, align 8
  %conv34 = sext i32 %50 to i64
  %add35 = add i64 %48, %conv34
  %call36 = call i64 @TIFFReadTile(ptr noundef %43, ptr noundef %44, i64 noundef %add33, i64 noundef %add35, i64 noundef 0, i16 noundef zeroext 0)
  %cmp37 = icmp slt i64 %call36, 0
  br i1 %cmp37, label %land.lhs.true, label %if.end41

land.lhs.true:                                    ; preds = %for.body31
  %51 = load ptr, ptr %img.addr, align 8
  %stoponerr = getelementptr inbounds %struct._TIFFRGBAImage, ptr %51, i32 0, i32 1
  %52 = load i32, ptr %stoponerr, align 8
  %tobool39 = icmp ne i32 %52, 0
  br i1 %tobool39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %land.lhs.true
  br label %for.end

if.end41:                                         ; preds = %land.lhs.true, %for.body31
  %53 = load ptr, ptr %tif, align 8
  %54 = load ptr, ptr %g, align 8
  %55 = load i64, ptr %col, align 8
  %56 = load ptr, ptr %img.addr, align 8
  %col_offset42 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %56, i32 0, i32 20
  %57 = load i32, ptr %col_offset42, align 4
  %conv43 = sext i32 %57 to i64
  %add44 = add i64 %55, %conv43
  %58 = load i64, ptr %row, align 8
  %59 = load ptr, ptr %img.addr, align 8
  %row_offset45 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %59, i32 0, i32 19
  %60 = load i32, ptr %row_offset45, align 8
  %conv46 = sext i32 %60 to i64
  %add47 = add i64 %58, %conv46
  %call48 = call i64 @TIFFReadTile(ptr noundef %53, ptr noundef %54, i64 noundef %add44, i64 noundef %add47, i64 noundef 0, i16 noundef zeroext 1)
  %cmp49 = icmp slt i64 %call48, 0
  br i1 %cmp49, label %land.lhs.true51, label %if.end55

land.lhs.true51:                                  ; preds = %if.end41
  %61 = load ptr, ptr %img.addr, align 8
  %stoponerr52 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %61, i32 0, i32 1
  %62 = load i32, ptr %stoponerr52, align 8
  %tobool53 = icmp ne i32 %62, 0
  br i1 %tobool53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %land.lhs.true51
  br label %for.end

if.end55:                                         ; preds = %land.lhs.true51, %if.end41
  %63 = load ptr, ptr %tif, align 8
  %64 = load ptr, ptr %b, align 8
  %65 = load i64, ptr %col, align 8
  %66 = load ptr, ptr %img.addr, align 8
  %col_offset56 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %66, i32 0, i32 20
  %67 = load i32, ptr %col_offset56, align 4
  %conv57 = sext i32 %67 to i64
  %add58 = add i64 %65, %conv57
  %68 = load i64, ptr %row, align 8
  %69 = load ptr, ptr %img.addr, align 8
  %row_offset59 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %69, i32 0, i32 19
  %70 = load i32, ptr %row_offset59, align 8
  %conv60 = sext i32 %70 to i64
  %add61 = add i64 %68, %conv60
  %call62 = call i64 @TIFFReadTile(ptr noundef %63, ptr noundef %64, i64 noundef %add58, i64 noundef %add61, i64 noundef 0, i16 noundef zeroext 2)
  %cmp63 = icmp slt i64 %call62, 0
  br i1 %cmp63, label %land.lhs.true65, label %if.end69

land.lhs.true65:                                  ; preds = %if.end55
  %71 = load ptr, ptr %img.addr, align 8
  %stoponerr66 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %71, i32 0, i32 1
  %72 = load i32, ptr %stoponerr66, align 8
  %tobool67 = icmp ne i32 %72, 0
  br i1 %tobool67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %land.lhs.true65
  br label %for.end

if.end69:                                         ; preds = %land.lhs.true65, %if.end55
  %73 = load i32, ptr %alpha, align 4
  %tobool70 = icmp ne i32 %73, 0
  br i1 %tobool70, label %land.lhs.true71, label %if.end85

land.lhs.true71:                                  ; preds = %if.end69
  %74 = load ptr, ptr %tif, align 8
  %75 = load ptr, ptr %a, align 8
  %76 = load i64, ptr %col, align 8
  %77 = load ptr, ptr %img.addr, align 8
  %col_offset72 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %77, i32 0, i32 20
  %78 = load i32, ptr %col_offset72, align 4
  %conv73 = sext i32 %78 to i64
  %add74 = add i64 %76, %conv73
  %79 = load i64, ptr %row, align 8
  %80 = load ptr, ptr %img.addr, align 8
  %row_offset75 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %80, i32 0, i32 19
  %81 = load i32, ptr %row_offset75, align 8
  %conv76 = sext i32 %81 to i64
  %add77 = add i64 %79, %conv76
  %call78 = call i64 @TIFFReadTile(ptr noundef %74, ptr noundef %75, i64 noundef %add74, i64 noundef %add77, i64 noundef 0, i16 noundef zeroext 3)
  %cmp79 = icmp slt i64 %call78, 0
  br i1 %cmp79, label %land.lhs.true81, label %if.end85

land.lhs.true81:                                  ; preds = %land.lhs.true71
  %82 = load ptr, ptr %img.addr, align 8
  %stoponerr82 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %82, i32 0, i32 1
  %83 = load i32, ptr %stoponerr82, align 8
  %tobool83 = icmp ne i32 %83, 0
  br i1 %tobool83, label %if.then84, label %if.end85

if.then84:                                        ; preds = %land.lhs.true81
  br label %for.end

if.end85:                                         ; preds = %land.lhs.true81, %land.lhs.true71, %if.end69
  %84 = load i64, ptr %col, align 8
  %85 = load i64, ptr %tw, align 8
  %add86 = add i64 %84, %85
  %86 = load i64, ptr %w.addr, align 8
  %cmp87 = icmp ugt i64 %add86, %86
  br i1 %cmp87, label %if.then89, label %if.else

if.then89:                                        ; preds = %if.end85
  %87 = load i64, ptr %w.addr, align 8
  %88 = load i64, ptr %col, align 8
  %sub90 = sub i64 %87, %88
  store i64 %sub90, ptr %npix, align 8
  %89 = load i64, ptr %tw, align 8
  %90 = load i64, ptr %npix, align 8
  %sub91 = sub i64 %89, %90
  store i64 %sub91, ptr %fromskew, align 8
  %91 = load ptr, ptr %put, align 8
  %92 = load ptr, ptr %img.addr, align 8
  %93 = load ptr, ptr %raster.addr, align 8
  %94 = load i64, ptr %y, align 8
  %95 = load i64, ptr %w.addr, align 8
  %mul92 = mul i64 %94, %95
  %add.ptr93 = getelementptr inbounds i64, ptr %93, i64 %mul92
  %96 = load i64, ptr %col, align 8
  %add.ptr94 = getelementptr inbounds i64, ptr %add.ptr93, i64 %96
  %97 = load i64, ptr %col, align 8
  %98 = load i64, ptr %y, align 8
  %99 = load i64, ptr %npix, align 8
  %100 = load i64, ptr %nrow, align 8
  %101 = load i64, ptr %fromskew, align 8
  %102 = load i64, ptr %toskew, align 8
  %103 = load i64, ptr %fromskew, align 8
  %add95 = add nsw i64 %102, %103
  %104 = load ptr, ptr %r, align 8
  %105 = load ptr, ptr %g, align 8
  %106 = load ptr, ptr %b, align 8
  %107 = load ptr, ptr %a, align 8
  call void %91(ptr noundef %92, ptr noundef %add.ptr94, i64 noundef %97, i64 noundef %98, i64 noundef %99, i64 noundef %100, i64 noundef %101, i64 noundef %add95, ptr noundef %104, ptr noundef %105, ptr noundef %106, ptr noundef %107)
  br label %if.end99

if.else:                                          ; preds = %if.end85
  %108 = load ptr, ptr %put, align 8
  %109 = load ptr, ptr %img.addr, align 8
  %110 = load ptr, ptr %raster.addr, align 8
  %111 = load i64, ptr %y, align 8
  %112 = load i64, ptr %w.addr, align 8
  %mul96 = mul i64 %111, %112
  %add.ptr97 = getelementptr inbounds i64, ptr %110, i64 %mul96
  %113 = load i64, ptr %col, align 8
  %add.ptr98 = getelementptr inbounds i64, ptr %add.ptr97, i64 %113
  %114 = load i64, ptr %col, align 8
  %115 = load i64, ptr %y, align 8
  %116 = load i64, ptr %tw, align 8
  %117 = load i64, ptr %nrow, align 8
  %118 = load i64, ptr %toskew, align 8
  %119 = load ptr, ptr %r, align 8
  %120 = load ptr, ptr %g, align 8
  %121 = load ptr, ptr %b, align 8
  %122 = load ptr, ptr %a, align 8
  call void %108(ptr noundef %109, ptr noundef %add.ptr98, i64 noundef %114, i64 noundef %115, i64 noundef %116, i64 noundef %117, i64 noundef 0, i64 noundef %118, ptr noundef %119, ptr noundef %120, ptr noundef %121, ptr noundef %122)
  br label %if.end99

if.end99:                                         ; preds = %if.else, %if.then89
  br label %for.inc

for.inc:                                          ; preds = %if.end99
  %123 = load i64, ptr %tw, align 8
  %124 = load i64, ptr %col, align 8
  %add100 = add i64 %124, %123
  store i64 %add100, ptr %col, align 8
  br label %for.cond28, !llvm.loop !10

for.end:                                          ; preds = %if.then84, %if.then68, %if.then54, %if.then40, %for.cond28
  %125 = load i16, ptr %orientation, align 2
  %conv101 = zext i16 %125 to i32
  %cmp102 = icmp eq i32 %conv101, 1
  br i1 %cmp102, label %cond.true104, label %cond.false106

cond.true104:                                     ; preds = %for.end
  %126 = load i64, ptr %nrow, align 8
  %sub105 = sub nsw i64 0, %126
  br label %cond.end107

cond.false106:                                    ; preds = %for.end
  %127 = load i64, ptr %nrow, align 8
  br label %cond.end107

cond.end107:                                      ; preds = %cond.false106, %cond.true104
  %cond108 = phi i64 [ %sub105, %cond.true104 ], [ %127, %cond.false106 ]
  %128 = load i64, ptr %y, align 8
  %add109 = add i64 %128, %cond108
  store i64 %add109, ptr %y, align 8
  br label %for.inc110

for.inc110:                                       ; preds = %cond.end107
  %129 = load i64, ptr %th, align 8
  %130 = load i64, ptr %row, align 8
  %add111 = add i64 %130, %129
  store i64 %add111, ptr %row, align 8
  br label %for.cond, !llvm.loop !11

for.end112:                                       ; preds = %for.cond
  %131 = load ptr, ptr %buf, align 8
  call void @_TIFFfree(ptr noundef %131)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end112, %if.then
  %132 = load i32, ptr %retval, align 4
  ret i32 %132
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @gtStripSeparate(ptr noundef %img, ptr noundef %raster, i64 noundef %w, i64 noundef %h) #0 {
entry:
  %retval = alloca i32, align 4
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
  %0 = load ptr, ptr %img.addr, align 8
  %tif1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %tif1, align 8
  store ptr %1, ptr %tif, align 8
  %2 = load ptr, ptr %img.addr, align 8
  %put2 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i32 0, i32 14
  %3 = load ptr, ptr %put2, align 8
  store ptr %3, ptr %put, align 8
  %4 = load ptr, ptr %img.addr, align 8
  %width = getelementptr inbounds %struct._TIFFRGBAImage, ptr %4, i32 0, i32 4
  %5 = load i64, ptr %width, align 8
  store i64 %5, ptr %imagewidth, align 8
  %6 = load ptr, ptr %img.addr, align 8
  %alpha3 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %alpha3, align 8
  store i32 %7, ptr %alpha, align 4
  %8 = load ptr, ptr %tif, align 8
  %call = call i64 @TIFFStripSize(ptr noundef %8)
  store i64 %call, ptr %stripsize, align 8
  %9 = load i64, ptr %stripsize, align 8
  %mul = mul nsw i64 4, %9
  %call4 = call ptr @_TIFFmalloc(i64 noundef %mul)
  store ptr %call4, ptr %buf, align 8
  store ptr %call4, ptr %r, align 8
  %10 = load ptr, ptr %buf, align 8
  %cmp = icmp eq ptr %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %tif, align 8
  %call5 = call ptr @TIFFFileName(ptr noundef %11)
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call5, ptr noundef @.str.24)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %12 = load ptr, ptr %r, align 8
  %13 = load i64, ptr %stripsize, align 8
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 %13
  store ptr %add.ptr, ptr %g, align 8
  %14 = load ptr, ptr %g, align 8
  %15 = load i64, ptr %stripsize, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %14, i64 %15
  store ptr %add.ptr6, ptr %b, align 8
  %16 = load ptr, ptr %b, align 8
  %17 = load i64, ptr %stripsize, align 8
  %add.ptr7 = getelementptr inbounds i8, ptr %16, i64 %17
  store ptr %add.ptr7, ptr %a, align 8
  %18 = load i32, ptr %alpha, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  %19 = load ptr, ptr %a, align 8
  %20 = load i64, ptr %stripsize, align 8
  %21 = load ptr, ptr %a, align 8
  %22 = call i64 @llvm.objectsize.i64.p0(ptr %21, i1 false, i1 true, i1 false)
  %call9 = call ptr @__memset_chk(ptr noundef %19, i32 noundef 255, i64 noundef %20, i64 noundef %22) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  %23 = load ptr, ptr %img.addr, align 8
  %24 = load i64, ptr %h.addr, align 8
  %call11 = call i64 @setorientation(ptr noundef %23, i64 noundef %24)
  store i64 %call11, ptr %y, align 8
  %25 = load ptr, ptr %img.addr, align 8
  %orientation12 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %25, i32 0, i32 8
  %26 = load i16, ptr %orientation12, align 4
  store i16 %26, ptr %orientation, align 2
  %27 = load i16, ptr %orientation, align 2
  %conv = zext i16 %27 to i32
  %cmp13 = icmp eq i32 %conv, 1
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end10
  %28 = load i64, ptr %w.addr, align 8
  %29 = load i64, ptr %w.addr, align 8
  %add = add i64 %28, %29
  br label %cond.end

cond.false:                                       ; preds = %if.end10
  %30 = load i64, ptr %w.addr, align 8
  %31 = load i64, ptr %w.addr, align 8
  %sub = sub i64 %30, %31
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add, %cond.true ], [ %sub, %cond.false ]
  %sub15 = sub nsw i64 0, %cond
  store i64 %sub15, ptr %toskew, align 8
  %32 = load ptr, ptr %tif, align 8
  %call16 = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %32, i64 noundef 278, ptr noundef %rowsperstrip)
  %33 = load ptr, ptr %tif, align 8
  %call17 = call i64 @TIFFScanlineSize(ptr noundef %33)
  store i64 %call17, ptr %scanline, align 8
  %34 = load i64, ptr %w.addr, align 8
  %35 = load i64, ptr %imagewidth, align 8
  %cmp18 = icmp ult i64 %34, %35
  br i1 %cmp18, label %cond.true20, label %cond.false22

cond.true20:                                      ; preds = %cond.end
  %36 = load i64, ptr %imagewidth, align 8
  %37 = load i64, ptr %w.addr, align 8
  %sub21 = sub i64 %36, %37
  br label %cond.end23

cond.false22:                                     ; preds = %cond.end
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %cond.true20
  %cond24 = phi i64 [ %sub21, %cond.true20 ], [ 0, %cond.false22 ]
  store i64 %cond24, ptr %fromskew, align 8
  store i64 0, ptr %row, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end23
  %38 = load i64, ptr %row, align 8
  %39 = load i64, ptr %h.addr, align 8
  %cmp25 = icmp ult i64 %38, %39
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i64, ptr %row, align 8
  %41 = load i64, ptr %rowsperstrip, align 8
  %add27 = add i64 %40, %41
  %42 = load i64, ptr %h.addr, align 8
  %cmp28 = icmp ugt i64 %add27, %42
  br i1 %cmp28, label %cond.true30, label %cond.false32

cond.true30:                                      ; preds = %for.body
  %43 = load i64, ptr %h.addr, align 8
  %44 = load i64, ptr %row, align 8
  %sub31 = sub i64 %43, %44
  br label %cond.end33

cond.false32:                                     ; preds = %for.body
  %45 = load i64, ptr %rowsperstrip, align 8
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false32, %cond.true30
  %cond34 = phi i64 [ %sub31, %cond.true30 ], [ %45, %cond.false32 ]
  store i64 %cond34, ptr %nrow, align 8
  %46 = load i64, ptr %row, align 8
  %47 = load ptr, ptr %img.addr, align 8
  %row_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %47, i32 0, i32 19
  %48 = load i32, ptr %row_offset, align 8
  %conv35 = sext i32 %48 to i64
  %add36 = add i64 %46, %conv35
  store i64 %add36, ptr %offset_row, align 8
  %49 = load ptr, ptr %tif, align 8
  %50 = load ptr, ptr %tif, align 8
  %51 = load i64, ptr %offset_row, align 8
  %call37 = call i64 @TIFFComputeStrip(ptr noundef %50, i64 noundef %51, i16 noundef zeroext 0)
  %52 = load ptr, ptr %r, align 8
  %53 = load i64, ptr %nrow, align 8
  %54 = load i64, ptr %scanline, align 8
  %mul38 = mul i64 %53, %54
  %call39 = call i64 @TIFFReadEncodedStrip(ptr noundef %49, i64 noundef %call37, ptr noundef %52, i64 noundef %mul38)
  %cmp40 = icmp slt i64 %call39, 0
  br i1 %cmp40, label %land.lhs.true, label %if.end44

land.lhs.true:                                    ; preds = %cond.end33
  %55 = load ptr, ptr %img.addr, align 8
  %stoponerr = getelementptr inbounds %struct._TIFFRGBAImage, ptr %55, i32 0, i32 1
  %56 = load i32, ptr %stoponerr, align 8
  %tobool42 = icmp ne i32 %56, 0
  br i1 %tobool42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %land.lhs.true
  br label %for.end

if.end44:                                         ; preds = %land.lhs.true, %cond.end33
  %57 = load ptr, ptr %tif, align 8
  %58 = load ptr, ptr %tif, align 8
  %59 = load i64, ptr %offset_row, align 8
  %call45 = call i64 @TIFFComputeStrip(ptr noundef %58, i64 noundef %59, i16 noundef zeroext 1)
  %60 = load ptr, ptr %g, align 8
  %61 = load i64, ptr %nrow, align 8
  %62 = load i64, ptr %scanline, align 8
  %mul46 = mul i64 %61, %62
  %call47 = call i64 @TIFFReadEncodedStrip(ptr noundef %57, i64 noundef %call45, ptr noundef %60, i64 noundef %mul46)
  %cmp48 = icmp slt i64 %call47, 0
  br i1 %cmp48, label %land.lhs.true50, label %if.end54

land.lhs.true50:                                  ; preds = %if.end44
  %63 = load ptr, ptr %img.addr, align 8
  %stoponerr51 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %63, i32 0, i32 1
  %64 = load i32, ptr %stoponerr51, align 8
  %tobool52 = icmp ne i32 %64, 0
  br i1 %tobool52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %land.lhs.true50
  br label %for.end

if.end54:                                         ; preds = %land.lhs.true50, %if.end44
  %65 = load ptr, ptr %tif, align 8
  %66 = load ptr, ptr %tif, align 8
  %67 = load i64, ptr %offset_row, align 8
  %call55 = call i64 @TIFFComputeStrip(ptr noundef %66, i64 noundef %67, i16 noundef zeroext 2)
  %68 = load ptr, ptr %b, align 8
  %69 = load i64, ptr %nrow, align 8
  %70 = load i64, ptr %scanline, align 8
  %mul56 = mul i64 %69, %70
  %call57 = call i64 @TIFFReadEncodedStrip(ptr noundef %65, i64 noundef %call55, ptr noundef %68, i64 noundef %mul56)
  %cmp58 = icmp slt i64 %call57, 0
  br i1 %cmp58, label %land.lhs.true60, label %if.end64

land.lhs.true60:                                  ; preds = %if.end54
  %71 = load ptr, ptr %img.addr, align 8
  %stoponerr61 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %71, i32 0, i32 1
  %72 = load i32, ptr %stoponerr61, align 8
  %tobool62 = icmp ne i32 %72, 0
  br i1 %tobool62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %land.lhs.true60
  br label %for.end

if.end64:                                         ; preds = %land.lhs.true60, %if.end54
  %73 = load i32, ptr %alpha, align 4
  %tobool65 = icmp ne i32 %73, 0
  br i1 %tobool65, label %land.lhs.true66, label %if.end76

land.lhs.true66:                                  ; preds = %if.end64
  %74 = load ptr, ptr %tif, align 8
  %75 = load ptr, ptr %tif, align 8
  %76 = load i64, ptr %offset_row, align 8
  %call67 = call i64 @TIFFComputeStrip(ptr noundef %75, i64 noundef %76, i16 noundef zeroext 3)
  %77 = load ptr, ptr %a, align 8
  %78 = load i64, ptr %nrow, align 8
  %79 = load i64, ptr %scanline, align 8
  %mul68 = mul i64 %78, %79
  %call69 = call i64 @TIFFReadEncodedStrip(ptr noundef %74, i64 noundef %call67, ptr noundef %77, i64 noundef %mul68)
  %cmp70 = icmp slt i64 %call69, 0
  br i1 %cmp70, label %land.lhs.true72, label %if.end76

land.lhs.true72:                                  ; preds = %land.lhs.true66
  %80 = load ptr, ptr %img.addr, align 8
  %stoponerr73 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %80, i32 0, i32 1
  %81 = load i32, ptr %stoponerr73, align 8
  %tobool74 = icmp ne i32 %81, 0
  br i1 %tobool74, label %if.then75, label %if.end76

if.then75:                                        ; preds = %land.lhs.true72
  br label %for.end

if.end76:                                         ; preds = %land.lhs.true72, %land.lhs.true66, %if.end64
  %82 = load ptr, ptr %put, align 8
  %83 = load ptr, ptr %img.addr, align 8
  %84 = load ptr, ptr %raster.addr, align 8
  %85 = load i64, ptr %y, align 8
  %86 = load i64, ptr %w.addr, align 8
  %mul77 = mul i64 %85, %86
  %add.ptr78 = getelementptr inbounds i64, ptr %84, i64 %mul77
  %87 = load i64, ptr %y, align 8
  %88 = load i64, ptr %w.addr, align 8
  %89 = load i64, ptr %nrow, align 8
  %90 = load i64, ptr %fromskew, align 8
  %91 = load i64, ptr %toskew, align 8
  %92 = load ptr, ptr %r, align 8
  %93 = load ptr, ptr %g, align 8
  %94 = load ptr, ptr %b, align 8
  %95 = load ptr, ptr %a, align 8
  call void %82(ptr noundef %83, ptr noundef %add.ptr78, i64 noundef 0, i64 noundef %87, i64 noundef %88, i64 noundef %89, i64 noundef %90, i64 noundef %91, ptr noundef %92, ptr noundef %93, ptr noundef %94, ptr noundef %95)
  %96 = load i16, ptr %orientation, align 2
  %conv79 = zext i16 %96 to i32
  %cmp80 = icmp eq i32 %conv79, 1
  br i1 %cmp80, label %cond.true82, label %cond.false84

cond.true82:                                      ; preds = %if.end76
  %97 = load i64, ptr %nrow, align 8
  %sub83 = sub nsw i64 0, %97
  br label %cond.end85

cond.false84:                                     ; preds = %if.end76
  %98 = load i64, ptr %nrow, align 8
  br label %cond.end85

cond.end85:                                       ; preds = %cond.false84, %cond.true82
  %cond86 = phi i64 [ %sub83, %cond.true82 ], [ %98, %cond.false84 ]
  %99 = load i64, ptr %y, align 8
  %add87 = add i64 %99, %cond86
  store i64 %add87, ptr %y, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end85
  %100 = load i64, ptr %rowsperstrip, align 8
  %101 = load i64, ptr %row, align 8
  %add88 = add i64 %101, %100
  store i64 %add88, ptr %row, align 8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %if.then75, %if.then63, %if.then53, %if.then43, %for.cond
  %102 = load ptr, ptr %buf, align 8
  call void @_TIFFfree(ptr noundef %102)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %103 = load i32, ptr %retval, align 4
  ret i32 %103
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @pickTileSeparateCase(ptr noundef %img) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %put = alloca ptr, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr null, ptr %put, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %call = call i32 @buildMap(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end32

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %img.addr, align 8
  %photometric = getelementptr inbounds %struct._TIFFRGBAImage, ptr %1, i32 0, i32 9
  %2 = load i16, ptr %photometric, align 2
  %conv = zext i16 %2 to i32
  switch i32 %conv, label %sw.epilog31 [
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then
  %3 = load ptr, ptr %img.addr, align 8
  %bitspersample = getelementptr inbounds %struct._TIFFRGBAImage, ptr %3, i32 0, i32 6
  %4 = load i16, ptr %bitspersample, align 8
  %conv1 = zext i16 %4 to i32
  switch i32 %conv1, label %sw.epilog [
    i32 8, label %sw.bb2
    i32 16, label %sw.bb15
  ]

sw.bb2:                                           ; preds = %sw.bb
  %5 = load ptr, ptr %img.addr, align 8
  %Map = getelementptr inbounds %struct._TIFFRGBAImage, ptr %5, i32 0, i32 15
  %6 = load ptr, ptr %Map, align 8
  %tobool3 = icmp ne ptr %6, null
  br i1 %tobool3, label %if.else13, label %if.then4

if.then4:                                         ; preds = %sw.bb2
  %7 = load ptr, ptr %img.addr, align 8
  %alpha = getelementptr inbounds %struct._TIFFRGBAImage, ptr %7, i32 0, i32 3
  %8 = load i32, ptr %alpha, align 8
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then4
  store ptr @putRGBAAseparate8bittile, ptr %put, align 8
  br label %if.end12

if.else:                                          ; preds = %if.then4
  %9 = load ptr, ptr %img.addr, align 8
  %alpha7 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %alpha7, align 8
  %cmp8 = icmp eq i32 %10, 2
  br i1 %cmp8, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else
  store ptr @putRGBUAseparate8bittile, ptr %put, align 8
  br label %if.end

if.else11:                                        ; preds = %if.else
  store ptr @putRGBseparate8bittile, ptr %put, align 8
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then10
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then6
  br label %if.end14

if.else13:                                        ; preds = %sw.bb2
  store ptr @putRGBseparate8bitMaptile, ptr %put, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.end12
  br label %sw.epilog

sw.bb15:                                          ; preds = %sw.bb
  store ptr @putRGBseparate16bittile, ptr %put, align 8
  %11 = load ptr, ptr %img.addr, align 8
  %Map16 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %11, i32 0, i32 15
  %12 = load ptr, ptr %Map16, align 8
  %tobool17 = icmp ne ptr %12, null
  br i1 %tobool17, label %if.end30, label %if.then18

if.then18:                                        ; preds = %sw.bb15
  %13 = load ptr, ptr %img.addr, align 8
  %alpha19 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %13, i32 0, i32 3
  %14 = load i32, ptr %alpha19, align 8
  %cmp20 = icmp eq i32 %14, 1
  br i1 %cmp20, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.then18
  store ptr @putRGBAAseparate16bittile, ptr %put, align 8
  br label %if.end29

if.else23:                                        ; preds = %if.then18
  %15 = load ptr, ptr %img.addr, align 8
  %alpha24 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %15, i32 0, i32 3
  %16 = load i32, ptr %alpha24, align 8
  %cmp25 = icmp eq i32 %16, 2
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.else23
  store ptr @putRGBUAseparate16bittile, ptr %put, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.else23
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then22
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %sw.bb15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end30, %if.end14
  br label %sw.epilog31

sw.epilog31:                                      ; preds = %if.then, %sw.epilog
  br label %if.end32

if.end32:                                         ; preds = %sw.epilog31, %entry
  %17 = load ptr, ptr %put, align 8
  %18 = load ptr, ptr %img.addr, align 8
  %put33 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %18, i32 0, i32 14
  store ptr %17, ptr %put33, align 8
  %cmp34 = icmp ne ptr %17, null
  %conv35 = zext i1 %cmp34 to i32
  ret i32 %conv35
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %img.addr, align 8
  %get = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 13
  %1 = load ptr, ptr %get, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %img.addr, align 8
  %tif = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %tif, align 8
  %call = call ptr @TIFFFileName(ptr noundef %3)
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call, ptr noundef @.str.18)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %img.addr, align 8
  %put = getelementptr inbounds %struct._TIFFRGBAImage, ptr %4, i32 0, i32 14
  %5 = load ptr, ptr %put, align 8
  %cmp1 = icmp eq ptr %5, null
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %img.addr, align 8
  %tif3 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %tif3, align 8
  %call4 = call ptr @TIFFFileName(ptr noundef %7)
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call4, ptr noundef @.str.19)
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %img.addr, align 8
  %get6 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %8, i32 0, i32 13
  %9 = load ptr, ptr %get6, align 8
  %10 = load ptr, ptr %img.addr, align 8
  %11 = load ptr, ptr %raster.addr, align 8
  %12 = load i64, ptr %w.addr, align 8
  %13 = load i64, ptr %h.addr, align 8
  %call7 = call i32 %9(ptr noundef %10, ptr noundef %11, i64 noundef %12, i64 noundef %13)
  store i32 %call7, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then2, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFReadRGBAImage(ptr noundef %tif, i64 noundef %rwidth, i64 noundef %rheight, ptr noundef %raster, i32 noundef %stop) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %rwidth.addr = alloca i64, align 8
  %rheight.addr = alloca i64, align 8
  %raster.addr = alloca ptr, align 8
  %stop.addr = alloca i32, align 4
  %emsg = alloca [1024 x i8], align 1
  %img = alloca %struct._TIFFRGBAImage, align 8
  %ok = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %rwidth, ptr %rwidth.addr, align 8
  store i64 %rheight, ptr %rheight.addr, align 8
  store ptr %raster, ptr %raster.addr, align 8
  store i32 %stop, ptr %stop.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load i32, ptr %stop.addr, align 4
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %emsg, i64 0, i64 0
  %call = call i32 @TIFFRGBAImageBegin(ptr noundef %img, ptr noundef %0, i32 noundef %1, ptr noundef %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %raster.addr, align 8
  %3 = load i64, ptr %rheight.addr, align 8
  %height = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i32 0, i32 5
  %4 = load i64, ptr %height, align 8
  %sub = sub i64 %3, %4
  %5 = load i64, ptr %rwidth.addr, align 8
  %mul = mul i64 %sub, %5
  %add.ptr = getelementptr inbounds i64, ptr %2, i64 %mul
  %6 = load i64, ptr %rwidth.addr, align 8
  %height1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i32 0, i32 5
  %7 = load i64, ptr %height1, align 8
  %call2 = call i32 @TIFFRGBAImageGet(ptr noundef %img, ptr noundef %add.ptr, i64 noundef %6, i64 noundef %7)
  store i32 %call2, ptr %ok, align 4
  call void @TIFFRGBAImageEnd(ptr noundef %img)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %tif.addr, align 8
  %call3 = call ptr @TIFFFileName(ptr noundef %8)
  %arraydecay4 = getelementptr inbounds [1024 x i8], ptr %emsg, i64 0, i64 0
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call3, ptr noundef %arraydecay4)
  store i32 0, ptr %ok, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, ptr %ok, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %rows_to_read = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %row, ptr %row.addr, align 8
  store ptr %raster, ptr %raster.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFIsTiled(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %call1 = call ptr @TIFFFileName(ptr noundef %1)
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call1, ptr noundef @.str.20)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %call2 = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %2, i64 noundef 278, ptr noundef %rowsperstrip)
  %3 = load i64, ptr %row.addr, align 8
  %4 = load i64, ptr %rowsperstrip, align 8
  %rem = urem i64 %3, %4
  %cmp = icmp ne i64 %rem, 0
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %tif.addr, align 8
  %call4 = call ptr @TIFFFileName(ptr noundef %5)
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call4, ptr noundef @.str.21)
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %tif.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %emsg, i64 0, i64 0
  %call6 = call i32 @TIFFRGBAImageBegin(ptr noundef %img, ptr noundef %6, i32 noundef 0, ptr noundef %arraydecay)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.else15

if.then8:                                         ; preds = %if.end5
  %7 = load i64, ptr %row.addr, align 8
  %conv = trunc i64 %7 to i32
  %row_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i32 0, i32 19
  store i32 %conv, ptr %row_offset, align 8
  %col_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i32 0, i32 20
  store i32 0, ptr %col_offset, align 4
  %8 = load i64, ptr %row.addr, align 8
  %9 = load i64, ptr %rowsperstrip, align 8
  %add = add i64 %8, %9
  %height = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i32 0, i32 5
  %10 = load i64, ptr %height, align 8
  %cmp9 = icmp ugt i64 %add, %10
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then8
  %height12 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i32 0, i32 5
  %11 = load i64, ptr %height12, align 8
  %12 = load i64, ptr %row.addr, align 8
  %sub = sub i64 %11, %12
  store i64 %sub, ptr %rows_to_read, align 8
  br label %if.end13

if.else:                                          ; preds = %if.then8
  %13 = load i64, ptr %rowsperstrip, align 8
  store i64 %13, ptr %rows_to_read, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11
  %14 = load ptr, ptr %raster.addr, align 8
  %width = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i32 0, i32 4
  %15 = load i64, ptr %width, align 8
  %16 = load i64, ptr %rows_to_read, align 8
  %call14 = call i32 @TIFFRGBAImageGet(ptr noundef %img, ptr noundef %14, i64 noundef %15, i64 noundef %16)
  store i32 %call14, ptr %ok, align 4
  call void @TIFFRGBAImageEnd(ptr noundef %img)
  br label %if.end18

if.else15:                                        ; preds = %if.end5
  %17 = load ptr, ptr %tif.addr, align 8
  %call16 = call ptr @TIFFFileName(ptr noundef %17)
  %arraydecay17 = getelementptr inbounds [1024 x i8], ptr %emsg, i64 0, i64 0
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call16, ptr noundef %arraydecay17)
  store i32 0, ptr %ok, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else15, %if.end13
  %18 = load i32, ptr %ok, align 4
  store i32 %18, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.then3, %if.then
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFIsTiled(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %call1 = call ptr @TIFFFileName(ptr noundef %1)
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call1, ptr noundef @.str.22)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %call2 = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %2, i64 noundef 322, ptr noundef %tile_xsize)
  %3 = load ptr, ptr %tif.addr, align 8
  %call3 = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %3, i64 noundef 323, ptr noundef %tile_ysize)
  %4 = load i64, ptr %col.addr, align 8
  %5 = load i64, ptr %tile_xsize, align 8
  %rem = urem i64 %4, %5
  %cmp = icmp ne i64 %rem, 0
  br i1 %cmp, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i64, ptr %row.addr, align 8
  %7 = load i64, ptr %tile_ysize, align 8
  %rem4 = urem i64 %6, %7
  %cmp5 = icmp ne i64 %rem4, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  %8 = load ptr, ptr %tif.addr, align 8
  %call7 = call ptr @TIFFFileName(ptr noundef %8)
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call7, ptr noundef @.str.23)
  store i32 0, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %lor.lhs.false
  %9 = load ptr, ptr %tif.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %emsg, i64 0, i64 0
  %call9 = call i32 @TIFFRGBAImageBegin(ptr noundef %img, ptr noundef %9, i32 noundef 0, ptr noundef %arraydecay)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end8
  %10 = load ptr, ptr %tif.addr, align 8
  %call12 = call ptr @TIFFFileName(ptr noundef %10)
  %arraydecay13 = getelementptr inbounds [1024 x i8], ptr %emsg, i64 0, i64 0
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call12, ptr noundef %arraydecay13)
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end8
  %11 = load i64, ptr %row.addr, align 8
  %12 = load i64, ptr %tile_ysize, align 8
  %add = add i64 %11, %12
  %height = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i32 0, i32 5
  %13 = load i64, ptr %height, align 8
  %cmp15 = icmp ugt i64 %add, %13
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end14
  %height17 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i32 0, i32 5
  %14 = load i64, ptr %height17, align 8
  %15 = load i64, ptr %row.addr, align 8
  %sub = sub i64 %14, %15
  store i64 %sub, ptr %read_ysize, align 8
  br label %if.end18

if.else:                                          ; preds = %if.end14
  %16 = load i64, ptr %tile_ysize, align 8
  store i64 %16, ptr %read_ysize, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then16
  %17 = load i64, ptr %col.addr, align 8
  %18 = load i64, ptr %tile_xsize, align 8
  %add19 = add i64 %17, %18
  %width = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i32 0, i32 4
  %19 = load i64, ptr %width, align 8
  %cmp20 = icmp ugt i64 %add19, %19
  br i1 %cmp20, label %if.then21, label %if.else24

if.then21:                                        ; preds = %if.end18
  %width22 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i32 0, i32 4
  %20 = load i64, ptr %width22, align 8
  %21 = load i64, ptr %col.addr, align 8
  %sub23 = sub i64 %20, %21
  store i64 %sub23, ptr %read_xsize, align 8
  br label %if.end25

if.else24:                                        ; preds = %if.end18
  %22 = load i64, ptr %tile_xsize, align 8
  store i64 %22, ptr %read_xsize, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.else24, %if.then21
  %23 = load i64, ptr %row.addr, align 8
  %conv = trunc i64 %23 to i32
  %row_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i32 0, i32 19
  store i32 %conv, ptr %row_offset, align 8
  %24 = load i64, ptr %col.addr, align 8
  %conv26 = trunc i64 %24 to i32
  %col_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i32 0, i32 20
  store i32 %conv26, ptr %col_offset, align 4
  %25 = load ptr, ptr %raster.addr, align 8
  %26 = load i64, ptr %read_xsize, align 8
  %27 = load i64, ptr %read_ysize, align 8
  %call27 = call i32 @TIFFRGBAImageGet(ptr noundef %img, ptr noundef %25, i64 noundef %26, i64 noundef %27)
  store i32 %call27, ptr %ok, align 4
  call void @TIFFRGBAImageEnd(ptr noundef %img)
  %28 = load i64, ptr %read_xsize, align 8
  %29 = load i64, ptr %tile_xsize, align 8
  %cmp28 = icmp eq i64 %28, %29
  br i1 %cmp28, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %if.end25
  %30 = load i64, ptr %read_ysize, align 8
  %31 = load i64, ptr %tile_ysize, align 8
  %cmp30 = icmp eq i64 %30, %31
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %land.lhs.true
  %32 = load i32, ptr %ok, align 4
  store i32 %32, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %land.lhs.true, %if.end25
  store i64 0, ptr %i_row, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end33
  %33 = load i64, ptr %i_row, align 8
  %34 = load i64, ptr %read_ysize, align 8
  %cmp34 = icmp ult i64 %33, %34
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load ptr, ptr %raster.addr, align 8
  %36 = load i64, ptr %tile_ysize, align 8
  %37 = load i64, ptr %i_row, align 8
  %sub36 = sub i64 %36, %37
  %sub37 = sub i64 %sub36, 1
  %38 = load i64, ptr %tile_xsize, align 8
  %mul = mul i64 %sub37, %38
  %add.ptr = getelementptr inbounds i64, ptr %35, i64 %mul
  %39 = load ptr, ptr %raster.addr, align 8
  %40 = load i64, ptr %read_ysize, align 8
  %41 = load i64, ptr %i_row, align 8
  %sub38 = sub i64 %40, %41
  %sub39 = sub i64 %sub38, 1
  %42 = load i64, ptr %read_xsize, align 8
  %mul40 = mul i64 %sub39, %42
  %add.ptr41 = getelementptr inbounds i64, ptr %39, i64 %mul40
  %43 = load i64, ptr %read_xsize, align 8
  %mul42 = mul i64 %43, 8
  call void @_TIFFmemcpy(ptr noundef %add.ptr, ptr noundef %add.ptr41, i64 noundef %mul42)
  %44 = load ptr, ptr %raster.addr, align 8
  %45 = load i64, ptr %tile_ysize, align 8
  %46 = load i64, ptr %i_row, align 8
  %sub43 = sub i64 %45, %46
  %sub44 = sub i64 %sub43, 1
  %47 = load i64, ptr %tile_xsize, align 8
  %mul45 = mul i64 %sub44, %47
  %add.ptr46 = getelementptr inbounds i64, ptr %44, i64 %mul45
  %48 = load i64, ptr %read_xsize, align 8
  %add.ptr47 = getelementptr inbounds i64, ptr %add.ptr46, i64 %48
  %49 = load i64, ptr %tile_xsize, align 8
  %50 = load i64, ptr %read_xsize, align 8
  %sub48 = sub i64 %49, %50
  %mul49 = mul i64 8, %sub48
  call void @_TIFFmemset(ptr noundef %add.ptr47, i32 noundef 0, i64 noundef %mul49)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i64, ptr %i_row, align 8
  %inc = add i64 %51, 1
  store i64 %inc, ptr %i_row, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %52 = load i64, ptr %read_ysize, align 8
  store i64 %52, ptr %i_row, align 8
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc59, %for.end
  %53 = load i64, ptr %i_row, align 8
  %54 = load i64, ptr %tile_ysize, align 8
  %cmp51 = icmp ult i64 %53, %54
  br i1 %cmp51, label %for.body53, label %for.end61

for.body53:                                       ; preds = %for.cond50
  %55 = load ptr, ptr %raster.addr, align 8
  %56 = load i64, ptr %tile_ysize, align 8
  %57 = load i64, ptr %i_row, align 8
  %sub54 = sub i64 %56, %57
  %sub55 = sub i64 %sub54, 1
  %58 = load i64, ptr %tile_xsize, align 8
  %mul56 = mul i64 %sub55, %58
  %add.ptr57 = getelementptr inbounds i64, ptr %55, i64 %mul56
  %59 = load i64, ptr %tile_xsize, align 8
  %mul58 = mul i64 8, %59
  call void @_TIFFmemset(ptr noundef %add.ptr57, i32 noundef 0, i64 noundef %mul58)
  br label %for.inc59

for.inc59:                                        ; preds = %for.body53
  %60 = load i64, ptr %i_row, align 8
  %inc60 = add i64 %60, 1
  store i64 %inc60, ptr %i_row, align 8
  br label %for.cond50, !llvm.loop !14

for.end61:                                        ; preds = %for.cond50
  %61 = load i32, ptr %ok, align 4
  store i32 %61, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end61, %if.then32, %if.then11, %if.then6, %if.then
  %62 = load i32, ptr %retval, align 4
  ret i32 %62
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i64 noundef) #1

declare void @_TIFFmemset(ptr noundef, i32 noundef, i64 noundef) #1

declare i64 @TIFFTileSize(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @setorientation(ptr noundef %img, i64 noundef %h) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %h.addr = alloca i64, align 8
  %tif = alloca ptr, align 8
  %y = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %tif1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %tif1, align 8
  store ptr %1, ptr %tif, align 8
  %2 = load ptr, ptr %img.addr, align 8
  %orientation = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i32 0, i32 8
  %3 = load i16, ptr %orientation, align 4
  %conv = zext i16 %3 to i32
  switch i32 %conv, label %sw.default [
    i32 3, label %sw.bb
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 4, label %sw.bb3
    i32 2, label %sw.bb4
    i32 6, label %sw.bb4
    i32 5, label %sw.bb4
    i32 1, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %4 = load ptr, ptr %tif, align 8
  %call = call ptr @TIFFFileName(ptr noundef %4)
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %call, ptr noundef @.str.25)
  %5 = load ptr, ptr %img.addr, align 8
  %orientation2 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %5, i32 0, i32 8
  store i16 4, ptr %orientation2, align 4
  br label %sw.bb3

sw.bb3:                                           ; preds = %entry, %sw.bb
  store i64 0, ptr %y, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry, %entry, %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb4
  %6 = load ptr, ptr %tif, align 8
  %call5 = call ptr @TIFFFileName(ptr noundef %6)
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %call5, ptr noundef @.str.26)
  %7 = load ptr, ptr %img.addr, align 8
  %orientation6 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %7, i32 0, i32 8
  store i16 1, ptr %orientation6, align 4
  br label %sw.bb7

sw.bb7:                                           ; preds = %entry, %sw.default
  %8 = load i64, ptr %h.addr, align 8
  %sub = sub i64 %8, 1
  store i64 %sub, ptr %y, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb3
  %9 = load i64, ptr %y, align 8
  ret i64 %9
}

declare i64 @TIFFReadTile(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i16 noundef zeroext) #1

declare void @TIFFWarning(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #3

declare i64 @TIFFStripSize(ptr noundef) #1

declare i64 @TIFFScanlineSize(ptr noundef) #1

declare i64 @TIFFReadEncodedStrip(ptr noundef, i64 noundef, ptr noundef, i64 noundef) #1

declare i64 @TIFFComputeStrip(ptr noundef, i64 noundef, i16 noundef zeroext) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @buildMap(ptr noundef %img) #0 {
entry:
  %retval = alloca i32, align 4
  %img.addr = alloca ptr, align 8
  store ptr %img, ptr %img.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %photometric = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 9
  %1 = load i16, ptr %photometric, align 2
  %conv = zext i16 %1 to i32
  switch i32 %conv, label %sw.epilog [
    i32 2, label %sw.bb
    i32 6, label %sw.bb
    i32 5, label %sw.bb
    i32 1, label %sw.bb3
    i32 0, label %sw.bb3
    i32 3, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %2 = load ptr, ptr %img.addr, align 8
  %bitspersample = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i32 0, i32 6
  %3 = load i16, ptr %bitspersample, align 8
  %conv1 = zext i16 %3 to i32
  %cmp = icmp eq i32 %conv1, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  br label %sw.bb3

sw.bb3:                                           ; preds = %entry, %entry, %if.end
  %4 = load ptr, ptr %img.addr, align 8
  %call = call i32 @setupMap(ptr noundef %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end5, label %if.then4

if.then4:                                         ; preds = %sw.bb3
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %sw.bb3
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %5 = load ptr, ptr %img.addr, align 8
  %call7 = call i32 @checkcmap(ptr noundef %5)
  %cmp8 = icmp eq i32 %call7, 16
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %sw.bb6
  %6 = load ptr, ptr %img.addr, align 8
  call void @cvtcmap(ptr noundef %6)
  br label %if.end12

if.else:                                          ; preds = %sw.bb6
  %7 = load ptr, ptr %img.addr, align 8
  %tif = getelementptr inbounds %struct._TIFFRGBAImage, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %tif, align 8
  %call11 = call ptr @TIFFFileName(ptr noundef %8)
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %call11, ptr noundef @.str.28)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then10
  %9 = load ptr, ptr %img.addr, align 8
  %bitspersample13 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %9, i32 0, i32 6
  %10 = load i16, ptr %bitspersample13, align 8
  %conv14 = zext i16 %10 to i32
  %cmp15 = icmp sle i32 %conv14, 8
  br i1 %cmp15, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %if.end12
  %11 = load ptr, ptr %img.addr, align 8
  %call17 = call i32 @makecmap(ptr noundef %11)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end20, label %if.then19

if.then19:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %land.lhs.true, %if.end12
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end20, %if.end5, %if.then
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then19, %if.then4
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBAAcontig8bittile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %pp.addr = alloca ptr, align 8
  %samplesperpixel = alloca i32, align 4
  %_x = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %samplesperpixel1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 7
  %1 = load i16, ptr %samplesperpixel1, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %samplesperpixel, align 4
  %2 = load i64, ptr %x.addr, align 8
  %3 = load i64, ptr %y.addr, align 8
  %4 = load i32, ptr %samplesperpixel, align 4
  %conv2 = sext i32 %4 to i64
  %5 = load i64, ptr %fromskew.addr, align 8
  %mul = mul nsw i64 %5, %conv2
  store i64 %mul, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load i64, ptr %h.addr, align 8
  %dec = add i64 %6, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp = icmp ugt i64 %6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i64, ptr %w.addr, align 8
  store i64 %7, ptr %_x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %8 = load i64, ptr %_x, align 8
  %cmp4 = icmp uge i64 %8, 8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %10 to i64
  %11 = load ptr, ptr %pp.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %11, i64 1
  %12 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %12 to i64
  %shl = shl i64 %conv8, 8
  %or = or i64 %conv6, %shl
  %13 = load ptr, ptr %pp.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %13, i64 2
  %14 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %14 to i64
  %shl11 = shl i64 %conv10, 16
  %or12 = or i64 %or, %shl11
  %15 = load ptr, ptr %pp.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %15, i64 3
  %16 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %16 to i64
  %shl15 = shl i64 %conv14, 24
  %or16 = or i64 %or12, %shl15
  %17 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %17, i32 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i64 %or16, ptr %17, align 8
  %18 = load i32, ptr %samplesperpixel, align 4
  %19 = load ptr, ptr %pp.addr, align 8
  %idx.ext = sext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8, ptr %19, i64 %idx.ext
  store ptr %add.ptr, ptr %pp.addr, align 8
  %20 = load ptr, ptr %pp.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %20, i64 0
  %21 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %21 to i64
  %22 = load ptr, ptr %pp.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %22, i64 1
  %23 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %23 to i64
  %shl21 = shl i64 %conv20, 8
  %or22 = or i64 %conv18, %shl21
  %24 = load ptr, ptr %pp.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %24, i64 2
  %25 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %25 to i64
  %shl25 = shl i64 %conv24, 16
  %or26 = or i64 %or22, %shl25
  %26 = load ptr, ptr %pp.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %26, i64 3
  %27 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %27 to i64
  %shl29 = shl i64 %conv28, 24
  %or30 = or i64 %or26, %shl29
  %28 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr31 = getelementptr inbounds i64, ptr %28, i32 1
  store ptr %incdec.ptr31, ptr %cp.addr, align 8
  store i64 %or30, ptr %28, align 8
  %29 = load i32, ptr %samplesperpixel, align 4
  %30 = load ptr, ptr %pp.addr, align 8
  %idx.ext32 = sext i32 %29 to i64
  %add.ptr33 = getelementptr inbounds i8, ptr %30, i64 %idx.ext32
  store ptr %add.ptr33, ptr %pp.addr, align 8
  %31 = load ptr, ptr %pp.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %31, i64 0
  %32 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %32 to i64
  %33 = load ptr, ptr %pp.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %33, i64 1
  %34 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %34 to i64
  %shl38 = shl i64 %conv37, 8
  %or39 = or i64 %conv35, %shl38
  %35 = load ptr, ptr %pp.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %35, i64 2
  %36 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %36 to i64
  %shl42 = shl i64 %conv41, 16
  %or43 = or i64 %or39, %shl42
  %37 = load ptr, ptr %pp.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %37, i64 3
  %38 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %38 to i64
  %shl46 = shl i64 %conv45, 24
  %or47 = or i64 %or43, %shl46
  %39 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr48 = getelementptr inbounds i64, ptr %39, i32 1
  store ptr %incdec.ptr48, ptr %cp.addr, align 8
  store i64 %or47, ptr %39, align 8
  %40 = load i32, ptr %samplesperpixel, align 4
  %41 = load ptr, ptr %pp.addr, align 8
  %idx.ext49 = sext i32 %40 to i64
  %add.ptr50 = getelementptr inbounds i8, ptr %41, i64 %idx.ext49
  store ptr %add.ptr50, ptr %pp.addr, align 8
  %42 = load ptr, ptr %pp.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %42, i64 0
  %43 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %43 to i64
  %44 = load ptr, ptr %pp.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, ptr %44, i64 1
  %45 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %45 to i64
  %shl55 = shl i64 %conv54, 8
  %or56 = or i64 %conv52, %shl55
  %46 = load ptr, ptr %pp.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, ptr %46, i64 2
  %47 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %47 to i64
  %shl59 = shl i64 %conv58, 16
  %or60 = or i64 %or56, %shl59
  %48 = load ptr, ptr %pp.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, ptr %48, i64 3
  %49 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %49 to i64
  %shl63 = shl i64 %conv62, 24
  %or64 = or i64 %or60, %shl63
  %50 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr65 = getelementptr inbounds i64, ptr %50, i32 1
  store ptr %incdec.ptr65, ptr %cp.addr, align 8
  store i64 %or64, ptr %50, align 8
  %51 = load i32, ptr %samplesperpixel, align 4
  %52 = load ptr, ptr %pp.addr, align 8
  %idx.ext66 = sext i32 %51 to i64
  %add.ptr67 = getelementptr inbounds i8, ptr %52, i64 %idx.ext66
  store ptr %add.ptr67, ptr %pp.addr, align 8
  %53 = load ptr, ptr %pp.addr, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %53, i64 0
  %54 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %54 to i64
  %55 = load ptr, ptr %pp.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %55, i64 1
  %56 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %56 to i64
  %shl72 = shl i64 %conv71, 8
  %or73 = or i64 %conv69, %shl72
  %57 = load ptr, ptr %pp.addr, align 8
  %arrayidx74 = getelementptr inbounds i8, ptr %57, i64 2
  %58 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %58 to i64
  %shl76 = shl i64 %conv75, 16
  %or77 = or i64 %or73, %shl76
  %59 = load ptr, ptr %pp.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, ptr %59, i64 3
  %60 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %60 to i64
  %shl80 = shl i64 %conv79, 24
  %or81 = or i64 %or77, %shl80
  %61 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr82 = getelementptr inbounds i64, ptr %61, i32 1
  store ptr %incdec.ptr82, ptr %cp.addr, align 8
  store i64 %or81, ptr %61, align 8
  %62 = load i32, ptr %samplesperpixel, align 4
  %63 = load ptr, ptr %pp.addr, align 8
  %idx.ext83 = sext i32 %62 to i64
  %add.ptr84 = getelementptr inbounds i8, ptr %63, i64 %idx.ext83
  store ptr %add.ptr84, ptr %pp.addr, align 8
  %64 = load ptr, ptr %pp.addr, align 8
  %arrayidx85 = getelementptr inbounds i8, ptr %64, i64 0
  %65 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %65 to i64
  %66 = load ptr, ptr %pp.addr, align 8
  %arrayidx87 = getelementptr inbounds i8, ptr %66, i64 1
  %67 = load i8, ptr %arrayidx87, align 1
  %conv88 = zext i8 %67 to i64
  %shl89 = shl i64 %conv88, 8
  %or90 = or i64 %conv86, %shl89
  %68 = load ptr, ptr %pp.addr, align 8
  %arrayidx91 = getelementptr inbounds i8, ptr %68, i64 2
  %69 = load i8, ptr %arrayidx91, align 1
  %conv92 = zext i8 %69 to i64
  %shl93 = shl i64 %conv92, 16
  %or94 = or i64 %or90, %shl93
  %70 = load ptr, ptr %pp.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, ptr %70, i64 3
  %71 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %71 to i64
  %shl97 = shl i64 %conv96, 24
  %or98 = or i64 %or94, %shl97
  %72 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr99 = getelementptr inbounds i64, ptr %72, i32 1
  store ptr %incdec.ptr99, ptr %cp.addr, align 8
  store i64 %or98, ptr %72, align 8
  %73 = load i32, ptr %samplesperpixel, align 4
  %74 = load ptr, ptr %pp.addr, align 8
  %idx.ext100 = sext i32 %73 to i64
  %add.ptr101 = getelementptr inbounds i8, ptr %74, i64 %idx.ext100
  store ptr %add.ptr101, ptr %pp.addr, align 8
  %75 = load ptr, ptr %pp.addr, align 8
  %arrayidx102 = getelementptr inbounds i8, ptr %75, i64 0
  %76 = load i8, ptr %arrayidx102, align 1
  %conv103 = zext i8 %76 to i64
  %77 = load ptr, ptr %pp.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, ptr %77, i64 1
  %78 = load i8, ptr %arrayidx104, align 1
  %conv105 = zext i8 %78 to i64
  %shl106 = shl i64 %conv105, 8
  %or107 = or i64 %conv103, %shl106
  %79 = load ptr, ptr %pp.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, ptr %79, i64 2
  %80 = load i8, ptr %arrayidx108, align 1
  %conv109 = zext i8 %80 to i64
  %shl110 = shl i64 %conv109, 16
  %or111 = or i64 %or107, %shl110
  %81 = load ptr, ptr %pp.addr, align 8
  %arrayidx112 = getelementptr inbounds i8, ptr %81, i64 3
  %82 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %82 to i64
  %shl114 = shl i64 %conv113, 24
  %or115 = or i64 %or111, %shl114
  %83 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr116 = getelementptr inbounds i64, ptr %83, i32 1
  store ptr %incdec.ptr116, ptr %cp.addr, align 8
  store i64 %or115, ptr %83, align 8
  %84 = load i32, ptr %samplesperpixel, align 4
  %85 = load ptr, ptr %pp.addr, align 8
  %idx.ext117 = sext i32 %84 to i64
  %add.ptr118 = getelementptr inbounds i8, ptr %85, i64 %idx.ext117
  store ptr %add.ptr118, ptr %pp.addr, align 8
  %86 = load ptr, ptr %pp.addr, align 8
  %arrayidx119 = getelementptr inbounds i8, ptr %86, i64 0
  %87 = load i8, ptr %arrayidx119, align 1
  %conv120 = zext i8 %87 to i64
  %88 = load ptr, ptr %pp.addr, align 8
  %arrayidx121 = getelementptr inbounds i8, ptr %88, i64 1
  %89 = load i8, ptr %arrayidx121, align 1
  %conv122 = zext i8 %89 to i64
  %shl123 = shl i64 %conv122, 8
  %or124 = or i64 %conv120, %shl123
  %90 = load ptr, ptr %pp.addr, align 8
  %arrayidx125 = getelementptr inbounds i8, ptr %90, i64 2
  %91 = load i8, ptr %arrayidx125, align 1
  %conv126 = zext i8 %91 to i64
  %shl127 = shl i64 %conv126, 16
  %or128 = or i64 %or124, %shl127
  %92 = load ptr, ptr %pp.addr, align 8
  %arrayidx129 = getelementptr inbounds i8, ptr %92, i64 3
  %93 = load i8, ptr %arrayidx129, align 1
  %conv130 = zext i8 %93 to i64
  %shl131 = shl i64 %conv130, 24
  %or132 = or i64 %or128, %shl131
  %94 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr133 = getelementptr inbounds i64, ptr %94, i32 1
  store ptr %incdec.ptr133, ptr %cp.addr, align 8
  store i64 %or132, ptr %94, align 8
  %95 = load i32, ptr %samplesperpixel, align 4
  %96 = load ptr, ptr %pp.addr, align 8
  %idx.ext134 = sext i32 %95 to i64
  %add.ptr135 = getelementptr inbounds i8, ptr %96, i64 %idx.ext134
  store ptr %add.ptr135, ptr %pp.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %97 = load i64, ptr %_x, align 8
  %sub = sub i64 %97, 8
  store i64 %sub, ptr %_x, align 8
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %98 = load i64, ptr %_x, align 8
  %cmp136 = icmp ugt i64 %98, 0
  br i1 %cmp136, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %99 = load i64, ptr %_x, align 8
  switch i64 %99, label %sw.epilog [
    i64 7, label %sw.bb
    i64 6, label %sw.bb155
    i64 5, label %sw.bb173
    i64 4, label %sw.bb191
    i64 3, label %sw.bb209
    i64 2, label %sw.bb227
    i64 1, label %sw.bb245
  ]

sw.bb:                                            ; preds = %if.then
  %100 = load ptr, ptr %pp.addr, align 8
  %arrayidx138 = getelementptr inbounds i8, ptr %100, i64 0
  %101 = load i8, ptr %arrayidx138, align 1
  %conv139 = zext i8 %101 to i64
  %102 = load ptr, ptr %pp.addr, align 8
  %arrayidx140 = getelementptr inbounds i8, ptr %102, i64 1
  %103 = load i8, ptr %arrayidx140, align 1
  %conv141 = zext i8 %103 to i64
  %shl142 = shl i64 %conv141, 8
  %or143 = or i64 %conv139, %shl142
  %104 = load ptr, ptr %pp.addr, align 8
  %arrayidx144 = getelementptr inbounds i8, ptr %104, i64 2
  %105 = load i8, ptr %arrayidx144, align 1
  %conv145 = zext i8 %105 to i64
  %shl146 = shl i64 %conv145, 16
  %or147 = or i64 %or143, %shl146
  %106 = load ptr, ptr %pp.addr, align 8
  %arrayidx148 = getelementptr inbounds i8, ptr %106, i64 3
  %107 = load i8, ptr %arrayidx148, align 1
  %conv149 = zext i8 %107 to i64
  %shl150 = shl i64 %conv149, 24
  %or151 = or i64 %or147, %shl150
  %108 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr152 = getelementptr inbounds i64, ptr %108, i32 1
  store ptr %incdec.ptr152, ptr %cp.addr, align 8
  store i64 %or151, ptr %108, align 8
  %109 = load i32, ptr %samplesperpixel, align 4
  %110 = load ptr, ptr %pp.addr, align 8
  %idx.ext153 = sext i32 %109 to i64
  %add.ptr154 = getelementptr inbounds i8, ptr %110, i64 %idx.ext153
  store ptr %add.ptr154, ptr %pp.addr, align 8
  br label %sw.bb155

sw.bb155:                                         ; preds = %if.then, %sw.bb
  %111 = load ptr, ptr %pp.addr, align 8
  %arrayidx156 = getelementptr inbounds i8, ptr %111, i64 0
  %112 = load i8, ptr %arrayidx156, align 1
  %conv157 = zext i8 %112 to i64
  %113 = load ptr, ptr %pp.addr, align 8
  %arrayidx158 = getelementptr inbounds i8, ptr %113, i64 1
  %114 = load i8, ptr %arrayidx158, align 1
  %conv159 = zext i8 %114 to i64
  %shl160 = shl i64 %conv159, 8
  %or161 = or i64 %conv157, %shl160
  %115 = load ptr, ptr %pp.addr, align 8
  %arrayidx162 = getelementptr inbounds i8, ptr %115, i64 2
  %116 = load i8, ptr %arrayidx162, align 1
  %conv163 = zext i8 %116 to i64
  %shl164 = shl i64 %conv163, 16
  %or165 = or i64 %or161, %shl164
  %117 = load ptr, ptr %pp.addr, align 8
  %arrayidx166 = getelementptr inbounds i8, ptr %117, i64 3
  %118 = load i8, ptr %arrayidx166, align 1
  %conv167 = zext i8 %118 to i64
  %shl168 = shl i64 %conv167, 24
  %or169 = or i64 %or165, %shl168
  %119 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr170 = getelementptr inbounds i64, ptr %119, i32 1
  store ptr %incdec.ptr170, ptr %cp.addr, align 8
  store i64 %or169, ptr %119, align 8
  %120 = load i32, ptr %samplesperpixel, align 4
  %121 = load ptr, ptr %pp.addr, align 8
  %idx.ext171 = sext i32 %120 to i64
  %add.ptr172 = getelementptr inbounds i8, ptr %121, i64 %idx.ext171
  store ptr %add.ptr172, ptr %pp.addr, align 8
  br label %sw.bb173

sw.bb173:                                         ; preds = %if.then, %sw.bb155
  %122 = load ptr, ptr %pp.addr, align 8
  %arrayidx174 = getelementptr inbounds i8, ptr %122, i64 0
  %123 = load i8, ptr %arrayidx174, align 1
  %conv175 = zext i8 %123 to i64
  %124 = load ptr, ptr %pp.addr, align 8
  %arrayidx176 = getelementptr inbounds i8, ptr %124, i64 1
  %125 = load i8, ptr %arrayidx176, align 1
  %conv177 = zext i8 %125 to i64
  %shl178 = shl i64 %conv177, 8
  %or179 = or i64 %conv175, %shl178
  %126 = load ptr, ptr %pp.addr, align 8
  %arrayidx180 = getelementptr inbounds i8, ptr %126, i64 2
  %127 = load i8, ptr %arrayidx180, align 1
  %conv181 = zext i8 %127 to i64
  %shl182 = shl i64 %conv181, 16
  %or183 = or i64 %or179, %shl182
  %128 = load ptr, ptr %pp.addr, align 8
  %arrayidx184 = getelementptr inbounds i8, ptr %128, i64 3
  %129 = load i8, ptr %arrayidx184, align 1
  %conv185 = zext i8 %129 to i64
  %shl186 = shl i64 %conv185, 24
  %or187 = or i64 %or183, %shl186
  %130 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr188 = getelementptr inbounds i64, ptr %130, i32 1
  store ptr %incdec.ptr188, ptr %cp.addr, align 8
  store i64 %or187, ptr %130, align 8
  %131 = load i32, ptr %samplesperpixel, align 4
  %132 = load ptr, ptr %pp.addr, align 8
  %idx.ext189 = sext i32 %131 to i64
  %add.ptr190 = getelementptr inbounds i8, ptr %132, i64 %idx.ext189
  store ptr %add.ptr190, ptr %pp.addr, align 8
  br label %sw.bb191

sw.bb191:                                         ; preds = %if.then, %sw.bb173
  %133 = load ptr, ptr %pp.addr, align 8
  %arrayidx192 = getelementptr inbounds i8, ptr %133, i64 0
  %134 = load i8, ptr %arrayidx192, align 1
  %conv193 = zext i8 %134 to i64
  %135 = load ptr, ptr %pp.addr, align 8
  %arrayidx194 = getelementptr inbounds i8, ptr %135, i64 1
  %136 = load i8, ptr %arrayidx194, align 1
  %conv195 = zext i8 %136 to i64
  %shl196 = shl i64 %conv195, 8
  %or197 = or i64 %conv193, %shl196
  %137 = load ptr, ptr %pp.addr, align 8
  %arrayidx198 = getelementptr inbounds i8, ptr %137, i64 2
  %138 = load i8, ptr %arrayidx198, align 1
  %conv199 = zext i8 %138 to i64
  %shl200 = shl i64 %conv199, 16
  %or201 = or i64 %or197, %shl200
  %139 = load ptr, ptr %pp.addr, align 8
  %arrayidx202 = getelementptr inbounds i8, ptr %139, i64 3
  %140 = load i8, ptr %arrayidx202, align 1
  %conv203 = zext i8 %140 to i64
  %shl204 = shl i64 %conv203, 24
  %or205 = or i64 %or201, %shl204
  %141 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr206 = getelementptr inbounds i64, ptr %141, i32 1
  store ptr %incdec.ptr206, ptr %cp.addr, align 8
  store i64 %or205, ptr %141, align 8
  %142 = load i32, ptr %samplesperpixel, align 4
  %143 = load ptr, ptr %pp.addr, align 8
  %idx.ext207 = sext i32 %142 to i64
  %add.ptr208 = getelementptr inbounds i8, ptr %143, i64 %idx.ext207
  store ptr %add.ptr208, ptr %pp.addr, align 8
  br label %sw.bb209

sw.bb209:                                         ; preds = %if.then, %sw.bb191
  %144 = load ptr, ptr %pp.addr, align 8
  %arrayidx210 = getelementptr inbounds i8, ptr %144, i64 0
  %145 = load i8, ptr %arrayidx210, align 1
  %conv211 = zext i8 %145 to i64
  %146 = load ptr, ptr %pp.addr, align 8
  %arrayidx212 = getelementptr inbounds i8, ptr %146, i64 1
  %147 = load i8, ptr %arrayidx212, align 1
  %conv213 = zext i8 %147 to i64
  %shl214 = shl i64 %conv213, 8
  %or215 = or i64 %conv211, %shl214
  %148 = load ptr, ptr %pp.addr, align 8
  %arrayidx216 = getelementptr inbounds i8, ptr %148, i64 2
  %149 = load i8, ptr %arrayidx216, align 1
  %conv217 = zext i8 %149 to i64
  %shl218 = shl i64 %conv217, 16
  %or219 = or i64 %or215, %shl218
  %150 = load ptr, ptr %pp.addr, align 8
  %arrayidx220 = getelementptr inbounds i8, ptr %150, i64 3
  %151 = load i8, ptr %arrayidx220, align 1
  %conv221 = zext i8 %151 to i64
  %shl222 = shl i64 %conv221, 24
  %or223 = or i64 %or219, %shl222
  %152 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr224 = getelementptr inbounds i64, ptr %152, i32 1
  store ptr %incdec.ptr224, ptr %cp.addr, align 8
  store i64 %or223, ptr %152, align 8
  %153 = load i32, ptr %samplesperpixel, align 4
  %154 = load ptr, ptr %pp.addr, align 8
  %idx.ext225 = sext i32 %153 to i64
  %add.ptr226 = getelementptr inbounds i8, ptr %154, i64 %idx.ext225
  store ptr %add.ptr226, ptr %pp.addr, align 8
  br label %sw.bb227

sw.bb227:                                         ; preds = %if.then, %sw.bb209
  %155 = load ptr, ptr %pp.addr, align 8
  %arrayidx228 = getelementptr inbounds i8, ptr %155, i64 0
  %156 = load i8, ptr %arrayidx228, align 1
  %conv229 = zext i8 %156 to i64
  %157 = load ptr, ptr %pp.addr, align 8
  %arrayidx230 = getelementptr inbounds i8, ptr %157, i64 1
  %158 = load i8, ptr %arrayidx230, align 1
  %conv231 = zext i8 %158 to i64
  %shl232 = shl i64 %conv231, 8
  %or233 = or i64 %conv229, %shl232
  %159 = load ptr, ptr %pp.addr, align 8
  %arrayidx234 = getelementptr inbounds i8, ptr %159, i64 2
  %160 = load i8, ptr %arrayidx234, align 1
  %conv235 = zext i8 %160 to i64
  %shl236 = shl i64 %conv235, 16
  %or237 = or i64 %or233, %shl236
  %161 = load ptr, ptr %pp.addr, align 8
  %arrayidx238 = getelementptr inbounds i8, ptr %161, i64 3
  %162 = load i8, ptr %arrayidx238, align 1
  %conv239 = zext i8 %162 to i64
  %shl240 = shl i64 %conv239, 24
  %or241 = or i64 %or237, %shl240
  %163 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr242 = getelementptr inbounds i64, ptr %163, i32 1
  store ptr %incdec.ptr242, ptr %cp.addr, align 8
  store i64 %or241, ptr %163, align 8
  %164 = load i32, ptr %samplesperpixel, align 4
  %165 = load ptr, ptr %pp.addr, align 8
  %idx.ext243 = sext i32 %164 to i64
  %add.ptr244 = getelementptr inbounds i8, ptr %165, i64 %idx.ext243
  store ptr %add.ptr244, ptr %pp.addr, align 8
  br label %sw.bb245

sw.bb245:                                         ; preds = %if.then, %sw.bb227
  %166 = load ptr, ptr %pp.addr, align 8
  %arrayidx246 = getelementptr inbounds i8, ptr %166, i64 0
  %167 = load i8, ptr %arrayidx246, align 1
  %conv247 = zext i8 %167 to i64
  %168 = load ptr, ptr %pp.addr, align 8
  %arrayidx248 = getelementptr inbounds i8, ptr %168, i64 1
  %169 = load i8, ptr %arrayidx248, align 1
  %conv249 = zext i8 %169 to i64
  %shl250 = shl i64 %conv249, 8
  %or251 = or i64 %conv247, %shl250
  %170 = load ptr, ptr %pp.addr, align 8
  %arrayidx252 = getelementptr inbounds i8, ptr %170, i64 2
  %171 = load i8, ptr %arrayidx252, align 1
  %conv253 = zext i8 %171 to i64
  %shl254 = shl i64 %conv253, 16
  %or255 = or i64 %or251, %shl254
  %172 = load ptr, ptr %pp.addr, align 8
  %arrayidx256 = getelementptr inbounds i8, ptr %172, i64 3
  %173 = load i8, ptr %arrayidx256, align 1
  %conv257 = zext i8 %173 to i64
  %shl258 = shl i64 %conv257, 24
  %or259 = or i64 %or255, %shl258
  %174 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr260 = getelementptr inbounds i64, ptr %174, i32 1
  store ptr %incdec.ptr260, ptr %cp.addr, align 8
  store i64 %or259, ptr %174, align 8
  %175 = load i32, ptr %samplesperpixel, align 4
  %176 = load ptr, ptr %pp.addr, align 8
  %idx.ext261 = sext i32 %175 to i64
  %add.ptr262 = getelementptr inbounds i8, ptr %176, i64 %idx.ext261
  store ptr %add.ptr262, ptr %pp.addr, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb245, %if.then
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %for.end
  %177 = load i64, ptr %toskew.addr, align 8
  %178 = load ptr, ptr %cp.addr, align 8
  %add.ptr263 = getelementptr inbounds i64, ptr %178, i64 %177
  store ptr %add.ptr263, ptr %cp.addr, align 8
  %179 = load i64, ptr %fromskew.addr, align 8
  %180 = load ptr, ptr %pp.addr, align 8
  %add.ptr264 = getelementptr inbounds i8, ptr %180, i64 %179
  store ptr %add.ptr264, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBUAcontig8bittile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %pp.addr = alloca ptr, align 8
  %samplesperpixel = alloca i32, align 4
  %r = alloca i64, align 8
  %g = alloca i64, align 8
  %b = alloca i64, align 8
  %a = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %samplesperpixel1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 7
  %1 = load i16, ptr %samplesperpixel1, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %samplesperpixel, align 4
  %2 = load i64, ptr %y.addr, align 8
  %3 = load i32, ptr %samplesperpixel, align 4
  %conv2 = sext i32 %3 to i64
  %4 = load i64, ptr %fromskew.addr, align 8
  %mul = mul nsw i64 %4, %conv2
  store i64 %mul, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %5 = load i64, ptr %h.addr, align 8
  %dec = add i64 %5, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp = icmp ugt i64 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i64, ptr %w.addr, align 8
  store i64 %6, ptr %x.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %7 = load i64, ptr %x.addr, align 8
  %dec4 = add i64 %7, -1
  store i64 %dec4, ptr %x.addr, align 8
  %cmp5 = icmp ugt i64 %7, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 3
  %9 = load i8, ptr %arrayidx, align 1
  %conv7 = zext i8 %9 to i64
  store i64 %conv7, ptr %a, align 8
  %10 = load ptr, ptr %pp.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %11 to i64
  %12 = load i64, ptr %a, align 8
  %mul10 = mul i64 %conv9, %12
  %div = udiv i64 %mul10, 255
  store i64 %div, ptr %r, align 8
  %13 = load ptr, ptr %pp.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %13, i64 1
  %14 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %14 to i64
  %15 = load i64, ptr %a, align 8
  %mul13 = mul i64 %conv12, %15
  %div14 = udiv i64 %mul13, 255
  store i64 %div14, ptr %g, align 8
  %16 = load ptr, ptr %pp.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %16, i64 2
  %17 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %17 to i64
  %18 = load i64, ptr %a, align 8
  %mul17 = mul i64 %conv16, %18
  %div18 = udiv i64 %mul17, 255
  store i64 %div18, ptr %b, align 8
  %19 = load i64, ptr %r, align 8
  %20 = load i64, ptr %g, align 8
  %shl = shl i64 %20, 8
  %or = or i64 %19, %shl
  %21 = load i64, ptr %b, align 8
  %shl19 = shl i64 %21, 16
  %or20 = or i64 %or, %shl19
  %22 = load i64, ptr %a, align 8
  %shl21 = shl i64 %22, 24
  %or22 = or i64 %or20, %shl21
  %23 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %23, i32 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i64 %or22, ptr %23, align 8
  %24 = load i32, ptr %samplesperpixel, align 4
  %25 = load ptr, ptr %pp.addr, align 8
  %idx.ext = sext i32 %24 to i64
  %add.ptr = getelementptr inbounds i8, ptr %25, i64 %idx.ext
  store ptr %add.ptr, ptr %pp.addr, align 8
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %26 = load i64, ptr %toskew.addr, align 8
  %27 = load ptr, ptr %cp.addr, align 8
  %add.ptr23 = getelementptr inbounds i64, ptr %27, i64 %26
  store ptr %add.ptr23, ptr %cp.addr, align 8
  %28 = load i64, ptr %fromskew.addr, align 8
  %29 = load ptr, ptr %pp.addr, align 8
  %add.ptr24 = getelementptr inbounds i8, ptr %29, i64 %28
  store ptr %add.ptr24, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBcontig8bittile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %pp.addr = alloca ptr, align 8
  %samplesperpixel = alloca i32, align 4
  %_x = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %samplesperpixel1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 7
  %1 = load i16, ptr %samplesperpixel1, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %samplesperpixel, align 4
  %2 = load i64, ptr %x.addr, align 8
  %3 = load i64, ptr %y.addr, align 8
  %4 = load i32, ptr %samplesperpixel, align 4
  %conv2 = sext i32 %4 to i64
  %5 = load i64, ptr %fromskew.addr, align 8
  %mul = mul nsw i64 %5, %conv2
  store i64 %mul, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load i64, ptr %h.addr, align 8
  %dec = add i64 %6, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp = icmp ugt i64 %6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i64, ptr %w.addr, align 8
  store i64 %7, ptr %_x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %8 = load i64, ptr %_x, align 8
  %cmp4 = icmp uge i64 %8, 8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %10 to i64
  %11 = load ptr, ptr %pp.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %11, i64 1
  %12 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %12 to i64
  %shl = shl i64 %conv8, 8
  %or = or i64 %conv6, %shl
  %13 = load ptr, ptr %pp.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %13, i64 2
  %14 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %14 to i64
  %shl11 = shl i64 %conv10, 16
  %or12 = or i64 %or, %shl11
  %or13 = or i64 %or12, 4278190080
  %15 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i64 %or13, ptr %15, align 8
  %16 = load i32, ptr %samplesperpixel, align 4
  %17 = load ptr, ptr %pp.addr, align 8
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 %idx.ext
  store ptr %add.ptr, ptr %pp.addr, align 8
  %18 = load ptr, ptr %pp.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %18, i64 0
  %19 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %19 to i64
  %20 = load ptr, ptr %pp.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %20, i64 1
  %21 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %21 to i64
  %shl18 = shl i64 %conv17, 8
  %or19 = or i64 %conv15, %shl18
  %22 = load ptr, ptr %pp.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %22, i64 2
  %23 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %23 to i64
  %shl22 = shl i64 %conv21, 16
  %or23 = or i64 %or19, %shl22
  %or24 = or i64 %or23, 4278190080
  %24 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr25 = getelementptr inbounds i64, ptr %24, i32 1
  store ptr %incdec.ptr25, ptr %cp.addr, align 8
  store i64 %or24, ptr %24, align 8
  %25 = load i32, ptr %samplesperpixel, align 4
  %26 = load ptr, ptr %pp.addr, align 8
  %idx.ext26 = sext i32 %25 to i64
  %add.ptr27 = getelementptr inbounds i8, ptr %26, i64 %idx.ext26
  store ptr %add.ptr27, ptr %pp.addr, align 8
  %27 = load ptr, ptr %pp.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, ptr %27, i64 0
  %28 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %28 to i64
  %29 = load ptr, ptr %pp.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %29, i64 1
  %30 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %30 to i64
  %shl32 = shl i64 %conv31, 8
  %or33 = or i64 %conv29, %shl32
  %31 = load ptr, ptr %pp.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %31, i64 2
  %32 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %32 to i64
  %shl36 = shl i64 %conv35, 16
  %or37 = or i64 %or33, %shl36
  %or38 = or i64 %or37, 4278190080
  %33 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr39 = getelementptr inbounds i64, ptr %33, i32 1
  store ptr %incdec.ptr39, ptr %cp.addr, align 8
  store i64 %or38, ptr %33, align 8
  %34 = load i32, ptr %samplesperpixel, align 4
  %35 = load ptr, ptr %pp.addr, align 8
  %idx.ext40 = sext i32 %34 to i64
  %add.ptr41 = getelementptr inbounds i8, ptr %35, i64 %idx.ext40
  store ptr %add.ptr41, ptr %pp.addr, align 8
  %36 = load ptr, ptr %pp.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %36, i64 0
  %37 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %37 to i64
  %38 = load ptr, ptr %pp.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %38, i64 1
  %39 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %39 to i64
  %shl46 = shl i64 %conv45, 8
  %or47 = or i64 %conv43, %shl46
  %40 = load ptr, ptr %pp.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %40, i64 2
  %41 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %41 to i64
  %shl50 = shl i64 %conv49, 16
  %or51 = or i64 %or47, %shl50
  %or52 = or i64 %or51, 4278190080
  %42 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr53 = getelementptr inbounds i64, ptr %42, i32 1
  store ptr %incdec.ptr53, ptr %cp.addr, align 8
  store i64 %or52, ptr %42, align 8
  %43 = load i32, ptr %samplesperpixel, align 4
  %44 = load ptr, ptr %pp.addr, align 8
  %idx.ext54 = sext i32 %43 to i64
  %add.ptr55 = getelementptr inbounds i8, ptr %44, i64 %idx.ext54
  store ptr %add.ptr55, ptr %pp.addr, align 8
  %45 = load ptr, ptr %pp.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, ptr %45, i64 0
  %46 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %46 to i64
  %47 = load ptr, ptr %pp.addr, align 8
  %arrayidx58 = getelementptr inbounds i8, ptr %47, i64 1
  %48 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %48 to i64
  %shl60 = shl i64 %conv59, 8
  %or61 = or i64 %conv57, %shl60
  %49 = load ptr, ptr %pp.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, ptr %49, i64 2
  %50 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %50 to i64
  %shl64 = shl i64 %conv63, 16
  %or65 = or i64 %or61, %shl64
  %or66 = or i64 %or65, 4278190080
  %51 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr67 = getelementptr inbounds i64, ptr %51, i32 1
  store ptr %incdec.ptr67, ptr %cp.addr, align 8
  store i64 %or66, ptr %51, align 8
  %52 = load i32, ptr %samplesperpixel, align 4
  %53 = load ptr, ptr %pp.addr, align 8
  %idx.ext68 = sext i32 %52 to i64
  %add.ptr69 = getelementptr inbounds i8, ptr %53, i64 %idx.ext68
  store ptr %add.ptr69, ptr %pp.addr, align 8
  %54 = load ptr, ptr %pp.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %54, i64 0
  %55 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %55 to i64
  %56 = load ptr, ptr %pp.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, ptr %56, i64 1
  %57 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %57 to i64
  %shl74 = shl i64 %conv73, 8
  %or75 = or i64 %conv71, %shl74
  %58 = load ptr, ptr %pp.addr, align 8
  %arrayidx76 = getelementptr inbounds i8, ptr %58, i64 2
  %59 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %59 to i64
  %shl78 = shl i64 %conv77, 16
  %or79 = or i64 %or75, %shl78
  %or80 = or i64 %or79, 4278190080
  %60 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr81 = getelementptr inbounds i64, ptr %60, i32 1
  store ptr %incdec.ptr81, ptr %cp.addr, align 8
  store i64 %or80, ptr %60, align 8
  %61 = load i32, ptr %samplesperpixel, align 4
  %62 = load ptr, ptr %pp.addr, align 8
  %idx.ext82 = sext i32 %61 to i64
  %add.ptr83 = getelementptr inbounds i8, ptr %62, i64 %idx.ext82
  store ptr %add.ptr83, ptr %pp.addr, align 8
  %63 = load ptr, ptr %pp.addr, align 8
  %arrayidx84 = getelementptr inbounds i8, ptr %63, i64 0
  %64 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %64 to i64
  %65 = load ptr, ptr %pp.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, ptr %65, i64 1
  %66 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %66 to i64
  %shl88 = shl i64 %conv87, 8
  %or89 = or i64 %conv85, %shl88
  %67 = load ptr, ptr %pp.addr, align 8
  %arrayidx90 = getelementptr inbounds i8, ptr %67, i64 2
  %68 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %68 to i64
  %shl92 = shl i64 %conv91, 16
  %or93 = or i64 %or89, %shl92
  %or94 = or i64 %or93, 4278190080
  %69 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr95 = getelementptr inbounds i64, ptr %69, i32 1
  store ptr %incdec.ptr95, ptr %cp.addr, align 8
  store i64 %or94, ptr %69, align 8
  %70 = load i32, ptr %samplesperpixel, align 4
  %71 = load ptr, ptr %pp.addr, align 8
  %idx.ext96 = sext i32 %70 to i64
  %add.ptr97 = getelementptr inbounds i8, ptr %71, i64 %idx.ext96
  store ptr %add.ptr97, ptr %pp.addr, align 8
  %72 = load ptr, ptr %pp.addr, align 8
  %arrayidx98 = getelementptr inbounds i8, ptr %72, i64 0
  %73 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %73 to i64
  %74 = load ptr, ptr %pp.addr, align 8
  %arrayidx100 = getelementptr inbounds i8, ptr %74, i64 1
  %75 = load i8, ptr %arrayidx100, align 1
  %conv101 = zext i8 %75 to i64
  %shl102 = shl i64 %conv101, 8
  %or103 = or i64 %conv99, %shl102
  %76 = load ptr, ptr %pp.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, ptr %76, i64 2
  %77 = load i8, ptr %arrayidx104, align 1
  %conv105 = zext i8 %77 to i64
  %shl106 = shl i64 %conv105, 16
  %or107 = or i64 %or103, %shl106
  %or108 = or i64 %or107, 4278190080
  %78 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr109 = getelementptr inbounds i64, ptr %78, i32 1
  store ptr %incdec.ptr109, ptr %cp.addr, align 8
  store i64 %or108, ptr %78, align 8
  %79 = load i32, ptr %samplesperpixel, align 4
  %80 = load ptr, ptr %pp.addr, align 8
  %idx.ext110 = sext i32 %79 to i64
  %add.ptr111 = getelementptr inbounds i8, ptr %80, i64 %idx.ext110
  store ptr %add.ptr111, ptr %pp.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %81 = load i64, ptr %_x, align 8
  %sub = sub i64 %81, 8
  store i64 %sub, ptr %_x, align 8
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %82 = load i64, ptr %_x, align 8
  %cmp112 = icmp ugt i64 %82, 0
  br i1 %cmp112, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %83 = load i64, ptr %_x, align 8
  switch i64 %83, label %sw.epilog [
    i64 7, label %sw.bb
    i64 6, label %sw.bb128
    i64 5, label %sw.bb143
    i64 4, label %sw.bb158
    i64 3, label %sw.bb173
    i64 2, label %sw.bb188
    i64 1, label %sw.bb203
  ]

sw.bb:                                            ; preds = %if.then
  %84 = load ptr, ptr %pp.addr, align 8
  %arrayidx114 = getelementptr inbounds i8, ptr %84, i64 0
  %85 = load i8, ptr %arrayidx114, align 1
  %conv115 = zext i8 %85 to i64
  %86 = load ptr, ptr %pp.addr, align 8
  %arrayidx116 = getelementptr inbounds i8, ptr %86, i64 1
  %87 = load i8, ptr %arrayidx116, align 1
  %conv117 = zext i8 %87 to i64
  %shl118 = shl i64 %conv117, 8
  %or119 = or i64 %conv115, %shl118
  %88 = load ptr, ptr %pp.addr, align 8
  %arrayidx120 = getelementptr inbounds i8, ptr %88, i64 2
  %89 = load i8, ptr %arrayidx120, align 1
  %conv121 = zext i8 %89 to i64
  %shl122 = shl i64 %conv121, 16
  %or123 = or i64 %or119, %shl122
  %or124 = or i64 %or123, 4278190080
  %90 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr125 = getelementptr inbounds i64, ptr %90, i32 1
  store ptr %incdec.ptr125, ptr %cp.addr, align 8
  store i64 %or124, ptr %90, align 8
  %91 = load i32, ptr %samplesperpixel, align 4
  %92 = load ptr, ptr %pp.addr, align 8
  %idx.ext126 = sext i32 %91 to i64
  %add.ptr127 = getelementptr inbounds i8, ptr %92, i64 %idx.ext126
  store ptr %add.ptr127, ptr %pp.addr, align 8
  br label %sw.bb128

sw.bb128:                                         ; preds = %if.then, %sw.bb
  %93 = load ptr, ptr %pp.addr, align 8
  %arrayidx129 = getelementptr inbounds i8, ptr %93, i64 0
  %94 = load i8, ptr %arrayidx129, align 1
  %conv130 = zext i8 %94 to i64
  %95 = load ptr, ptr %pp.addr, align 8
  %arrayidx131 = getelementptr inbounds i8, ptr %95, i64 1
  %96 = load i8, ptr %arrayidx131, align 1
  %conv132 = zext i8 %96 to i64
  %shl133 = shl i64 %conv132, 8
  %or134 = or i64 %conv130, %shl133
  %97 = load ptr, ptr %pp.addr, align 8
  %arrayidx135 = getelementptr inbounds i8, ptr %97, i64 2
  %98 = load i8, ptr %arrayidx135, align 1
  %conv136 = zext i8 %98 to i64
  %shl137 = shl i64 %conv136, 16
  %or138 = or i64 %or134, %shl137
  %or139 = or i64 %or138, 4278190080
  %99 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr140 = getelementptr inbounds i64, ptr %99, i32 1
  store ptr %incdec.ptr140, ptr %cp.addr, align 8
  store i64 %or139, ptr %99, align 8
  %100 = load i32, ptr %samplesperpixel, align 4
  %101 = load ptr, ptr %pp.addr, align 8
  %idx.ext141 = sext i32 %100 to i64
  %add.ptr142 = getelementptr inbounds i8, ptr %101, i64 %idx.ext141
  store ptr %add.ptr142, ptr %pp.addr, align 8
  br label %sw.bb143

sw.bb143:                                         ; preds = %if.then, %sw.bb128
  %102 = load ptr, ptr %pp.addr, align 8
  %arrayidx144 = getelementptr inbounds i8, ptr %102, i64 0
  %103 = load i8, ptr %arrayidx144, align 1
  %conv145 = zext i8 %103 to i64
  %104 = load ptr, ptr %pp.addr, align 8
  %arrayidx146 = getelementptr inbounds i8, ptr %104, i64 1
  %105 = load i8, ptr %arrayidx146, align 1
  %conv147 = zext i8 %105 to i64
  %shl148 = shl i64 %conv147, 8
  %or149 = or i64 %conv145, %shl148
  %106 = load ptr, ptr %pp.addr, align 8
  %arrayidx150 = getelementptr inbounds i8, ptr %106, i64 2
  %107 = load i8, ptr %arrayidx150, align 1
  %conv151 = zext i8 %107 to i64
  %shl152 = shl i64 %conv151, 16
  %or153 = or i64 %or149, %shl152
  %or154 = or i64 %or153, 4278190080
  %108 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr155 = getelementptr inbounds i64, ptr %108, i32 1
  store ptr %incdec.ptr155, ptr %cp.addr, align 8
  store i64 %or154, ptr %108, align 8
  %109 = load i32, ptr %samplesperpixel, align 4
  %110 = load ptr, ptr %pp.addr, align 8
  %idx.ext156 = sext i32 %109 to i64
  %add.ptr157 = getelementptr inbounds i8, ptr %110, i64 %idx.ext156
  store ptr %add.ptr157, ptr %pp.addr, align 8
  br label %sw.bb158

sw.bb158:                                         ; preds = %if.then, %sw.bb143
  %111 = load ptr, ptr %pp.addr, align 8
  %arrayidx159 = getelementptr inbounds i8, ptr %111, i64 0
  %112 = load i8, ptr %arrayidx159, align 1
  %conv160 = zext i8 %112 to i64
  %113 = load ptr, ptr %pp.addr, align 8
  %arrayidx161 = getelementptr inbounds i8, ptr %113, i64 1
  %114 = load i8, ptr %arrayidx161, align 1
  %conv162 = zext i8 %114 to i64
  %shl163 = shl i64 %conv162, 8
  %or164 = or i64 %conv160, %shl163
  %115 = load ptr, ptr %pp.addr, align 8
  %arrayidx165 = getelementptr inbounds i8, ptr %115, i64 2
  %116 = load i8, ptr %arrayidx165, align 1
  %conv166 = zext i8 %116 to i64
  %shl167 = shl i64 %conv166, 16
  %or168 = or i64 %or164, %shl167
  %or169 = or i64 %or168, 4278190080
  %117 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr170 = getelementptr inbounds i64, ptr %117, i32 1
  store ptr %incdec.ptr170, ptr %cp.addr, align 8
  store i64 %or169, ptr %117, align 8
  %118 = load i32, ptr %samplesperpixel, align 4
  %119 = load ptr, ptr %pp.addr, align 8
  %idx.ext171 = sext i32 %118 to i64
  %add.ptr172 = getelementptr inbounds i8, ptr %119, i64 %idx.ext171
  store ptr %add.ptr172, ptr %pp.addr, align 8
  br label %sw.bb173

sw.bb173:                                         ; preds = %if.then, %sw.bb158
  %120 = load ptr, ptr %pp.addr, align 8
  %arrayidx174 = getelementptr inbounds i8, ptr %120, i64 0
  %121 = load i8, ptr %arrayidx174, align 1
  %conv175 = zext i8 %121 to i64
  %122 = load ptr, ptr %pp.addr, align 8
  %arrayidx176 = getelementptr inbounds i8, ptr %122, i64 1
  %123 = load i8, ptr %arrayidx176, align 1
  %conv177 = zext i8 %123 to i64
  %shl178 = shl i64 %conv177, 8
  %or179 = or i64 %conv175, %shl178
  %124 = load ptr, ptr %pp.addr, align 8
  %arrayidx180 = getelementptr inbounds i8, ptr %124, i64 2
  %125 = load i8, ptr %arrayidx180, align 1
  %conv181 = zext i8 %125 to i64
  %shl182 = shl i64 %conv181, 16
  %or183 = or i64 %or179, %shl182
  %or184 = or i64 %or183, 4278190080
  %126 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr185 = getelementptr inbounds i64, ptr %126, i32 1
  store ptr %incdec.ptr185, ptr %cp.addr, align 8
  store i64 %or184, ptr %126, align 8
  %127 = load i32, ptr %samplesperpixel, align 4
  %128 = load ptr, ptr %pp.addr, align 8
  %idx.ext186 = sext i32 %127 to i64
  %add.ptr187 = getelementptr inbounds i8, ptr %128, i64 %idx.ext186
  store ptr %add.ptr187, ptr %pp.addr, align 8
  br label %sw.bb188

sw.bb188:                                         ; preds = %if.then, %sw.bb173
  %129 = load ptr, ptr %pp.addr, align 8
  %arrayidx189 = getelementptr inbounds i8, ptr %129, i64 0
  %130 = load i8, ptr %arrayidx189, align 1
  %conv190 = zext i8 %130 to i64
  %131 = load ptr, ptr %pp.addr, align 8
  %arrayidx191 = getelementptr inbounds i8, ptr %131, i64 1
  %132 = load i8, ptr %arrayidx191, align 1
  %conv192 = zext i8 %132 to i64
  %shl193 = shl i64 %conv192, 8
  %or194 = or i64 %conv190, %shl193
  %133 = load ptr, ptr %pp.addr, align 8
  %arrayidx195 = getelementptr inbounds i8, ptr %133, i64 2
  %134 = load i8, ptr %arrayidx195, align 1
  %conv196 = zext i8 %134 to i64
  %shl197 = shl i64 %conv196, 16
  %or198 = or i64 %or194, %shl197
  %or199 = or i64 %or198, 4278190080
  %135 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr200 = getelementptr inbounds i64, ptr %135, i32 1
  store ptr %incdec.ptr200, ptr %cp.addr, align 8
  store i64 %or199, ptr %135, align 8
  %136 = load i32, ptr %samplesperpixel, align 4
  %137 = load ptr, ptr %pp.addr, align 8
  %idx.ext201 = sext i32 %136 to i64
  %add.ptr202 = getelementptr inbounds i8, ptr %137, i64 %idx.ext201
  store ptr %add.ptr202, ptr %pp.addr, align 8
  br label %sw.bb203

sw.bb203:                                         ; preds = %if.then, %sw.bb188
  %138 = load ptr, ptr %pp.addr, align 8
  %arrayidx204 = getelementptr inbounds i8, ptr %138, i64 0
  %139 = load i8, ptr %arrayidx204, align 1
  %conv205 = zext i8 %139 to i64
  %140 = load ptr, ptr %pp.addr, align 8
  %arrayidx206 = getelementptr inbounds i8, ptr %140, i64 1
  %141 = load i8, ptr %arrayidx206, align 1
  %conv207 = zext i8 %141 to i64
  %shl208 = shl i64 %conv207, 8
  %or209 = or i64 %conv205, %shl208
  %142 = load ptr, ptr %pp.addr, align 8
  %arrayidx210 = getelementptr inbounds i8, ptr %142, i64 2
  %143 = load i8, ptr %arrayidx210, align 1
  %conv211 = zext i8 %143 to i64
  %shl212 = shl i64 %conv211, 16
  %or213 = or i64 %or209, %shl212
  %or214 = or i64 %or213, 4278190080
  %144 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr215 = getelementptr inbounds i64, ptr %144, i32 1
  store ptr %incdec.ptr215, ptr %cp.addr, align 8
  store i64 %or214, ptr %144, align 8
  %145 = load i32, ptr %samplesperpixel, align 4
  %146 = load ptr, ptr %pp.addr, align 8
  %idx.ext216 = sext i32 %145 to i64
  %add.ptr217 = getelementptr inbounds i8, ptr %146, i64 %idx.ext216
  store ptr %add.ptr217, ptr %pp.addr, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb203, %if.then
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %for.end
  %147 = load i64, ptr %toskew.addr, align 8
  %148 = load ptr, ptr %cp.addr, align 8
  %add.ptr218 = getelementptr inbounds i64, ptr %148, i64 %147
  store ptr %add.ptr218, ptr %cp.addr, align 8
  %149 = load i64, ptr %fromskew.addr, align 8
  %150 = load ptr, ptr %pp.addr, align 8
  %add.ptr219 = getelementptr inbounds i8, ptr %150, i64 %149
  store ptr %add.ptr219, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBcontig8bitMaptile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
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
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %Map1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 15
  %1 = load ptr, ptr %Map1, align 8
  store ptr %1, ptr %Map, align 8
  %2 = load ptr, ptr %img.addr, align 8
  %samplesperpixel2 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i32 0, i32 7
  %3 = load i16, ptr %samplesperpixel2, align 2
  %conv = zext i16 %3 to i32
  store i32 %conv, ptr %samplesperpixel, align 4
  %4 = load i64, ptr %y.addr, align 8
  %5 = load i32, ptr %samplesperpixel, align 4
  %conv3 = sext i32 %5 to i64
  %6 = load i64, ptr %fromskew.addr, align 8
  %mul = mul nsw i64 %6, %conv3
  store i64 %mul, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %7 = load i64, ptr %h.addr, align 8
  %dec = add i64 %7, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp = icmp ugt i64 %7, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i64, ptr %w.addr, align 8
  store i64 %8, ptr %x.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %9 = load i64, ptr %x.addr, align 8
  %dec5 = add i64 %9, -1
  store i64 %dec5, ptr %x.addr, align 8
  %cmp6 = icmp ugt i64 %9, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %Map, align 8
  %11 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %11, i64 0
  %12 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %12 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %10, i64 %idxprom
  %13 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %13 to i64
  %14 = load ptr, ptr %Map, align 8
  %15 = load ptr, ptr %pp.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %15, i64 1
  %16 = load i8, ptr %arrayidx10, align 1
  %idxprom11 = zext i8 %16 to i64
  %arrayidx12 = getelementptr inbounds i8, ptr %14, i64 %idxprom11
  %17 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %17 to i64
  %shl = shl i64 %conv13, 8
  %or = or i64 %conv9, %shl
  %18 = load ptr, ptr %Map, align 8
  %19 = load ptr, ptr %pp.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %19, i64 2
  %20 = load i8, ptr %arrayidx14, align 1
  %idxprom15 = zext i8 %20 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %18, i64 %idxprom15
  %21 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %21 to i64
  %shl18 = shl i64 %conv17, 16
  %or19 = or i64 %or, %shl18
  %or20 = or i64 %or19, 4278190080
  %22 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %22, i32 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i64 %or20, ptr %22, align 8
  %23 = load i32, ptr %samplesperpixel, align 4
  %24 = load ptr, ptr %pp.addr, align 8
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, ptr %24, i64 %idx.ext
  store ptr %add.ptr, ptr %pp.addr, align 8
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %25 = load i64, ptr %fromskew.addr, align 8
  %26 = load ptr, ptr %pp.addr, align 8
  %add.ptr21 = getelementptr inbounds i8, ptr %26, i64 %25
  store ptr %add.ptr21, ptr %pp.addr, align 8
  %27 = load i64, ptr %toskew.addr, align 8
  %28 = load ptr, ptr %cp.addr, align 8
  %add.ptr22 = getelementptr inbounds i64, ptr %28, i64 %27
  store ptr %add.ptr22, ptr %cp.addr, align 8
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBcontig16bittile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %pp.addr = alloca ptr, align 8
  %samplesperpixel = alloca i32, align 4
  %wp = alloca ptr, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %samplesperpixel1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 7
  %1 = load i16, ptr %samplesperpixel1, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %samplesperpixel, align 4
  %2 = load ptr, ptr %pp.addr, align 8
  store ptr %2, ptr %wp, align 8
  %3 = load i64, ptr %y.addr, align 8
  %4 = load i32, ptr %samplesperpixel, align 4
  %conv2 = sext i32 %4 to i64
  %5 = load i64, ptr %fromskew.addr, align 8
  %mul = mul nsw i64 %5, %conv2
  store i64 %mul, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %6 = load i64, ptr %h.addr, align 8
  %dec = add i64 %6, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp = icmp ugt i64 %6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i64, ptr %w.addr, align 8
  store i64 %7, ptr %x.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %8 = load i64, ptr %x.addr, align 8
  %dec4 = add i64 %8, -1
  store i64 %dec4, ptr %x.addr, align 8
  %cmp5 = icmp ugt i64 %8, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %wp, align 8
  %arrayidx = getelementptr inbounds i16, ptr %9, i64 0
  %10 = load i16, ptr %arrayidx, align 2
  %conv7 = zext i16 %10 to i32
  %shr = ashr i32 %conv7, 8
  %and = and i32 %shr, 255
  %conv8 = sext i32 %and to i64
  %11 = load ptr, ptr %wp, align 8
  %arrayidx9 = getelementptr inbounds i16, ptr %11, i64 1
  %12 = load i16, ptr %arrayidx9, align 2
  %conv10 = zext i16 %12 to i32
  %shr11 = ashr i32 %conv10, 8
  %and12 = and i32 %shr11, 255
  %conv13 = sext i32 %and12 to i64
  %shl = shl i64 %conv13, 8
  %or = or i64 %conv8, %shl
  %13 = load ptr, ptr %wp, align 8
  %arrayidx14 = getelementptr inbounds i16, ptr %13, i64 2
  %14 = load i16, ptr %arrayidx14, align 2
  %conv15 = zext i16 %14 to i32
  %shr16 = ashr i32 %conv15, 8
  %and17 = and i32 %shr16, 255
  %conv18 = sext i32 %and17 to i64
  %shl19 = shl i64 %conv18, 16
  %or20 = or i64 %or, %shl19
  %or21 = or i64 %or20, 4278190080
  %15 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i64 %or21, ptr %15, align 8
  %16 = load i32, ptr %samplesperpixel, align 4
  %17 = load ptr, ptr %wp, align 8
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds i16, ptr %17, i64 %idx.ext
  store ptr %add.ptr, ptr %wp, align 8
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  %18 = load i64, ptr %toskew.addr, align 8
  %19 = load ptr, ptr %cp.addr, align 8
  %add.ptr22 = getelementptr inbounds i64, ptr %19, i64 %18
  store ptr %add.ptr22, ptr %cp.addr, align 8
  %20 = load i64, ptr %fromskew.addr, align 8
  %21 = load ptr, ptr %wp, align 8
  %add.ptr23 = getelementptr inbounds i16, ptr %21, i64 %20
  store ptr %add.ptr23, ptr %wp, align 8
  br label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBAAcontig16bittile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %pp.addr = alloca ptr, align 8
  %samplesperpixel = alloca i32, align 4
  %wp = alloca ptr, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %samplesperpixel1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 7
  %1 = load i16, ptr %samplesperpixel1, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %samplesperpixel, align 4
  %2 = load ptr, ptr %pp.addr, align 8
  store ptr %2, ptr %wp, align 8
  %3 = load i64, ptr %y.addr, align 8
  %4 = load i32, ptr %samplesperpixel, align 4
  %conv2 = sext i32 %4 to i64
  %5 = load i64, ptr %fromskew.addr, align 8
  %mul = mul nsw i64 %5, %conv2
  store i64 %mul, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %6 = load i64, ptr %h.addr, align 8
  %dec = add i64 %6, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp = icmp ugt i64 %6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i64, ptr %w.addr, align 8
  store i64 %7, ptr %x.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %8 = load i64, ptr %x.addr, align 8
  %dec4 = add i64 %8, -1
  store i64 %dec4, ptr %x.addr, align 8
  %cmp5 = icmp ugt i64 %8, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %wp, align 8
  %arrayidx = getelementptr inbounds i16, ptr %9, i64 0
  %10 = load i16, ptr %arrayidx, align 2
  %conv7 = zext i16 %10 to i32
  %shr = ashr i32 %conv7, 8
  %and = and i32 %shr, 255
  %conv8 = sext i32 %and to i64
  %11 = load ptr, ptr %wp, align 8
  %arrayidx9 = getelementptr inbounds i16, ptr %11, i64 1
  %12 = load i16, ptr %arrayidx9, align 2
  %conv10 = zext i16 %12 to i32
  %shr11 = ashr i32 %conv10, 8
  %and12 = and i32 %shr11, 255
  %conv13 = sext i32 %and12 to i64
  %shl = shl i64 %conv13, 8
  %or = or i64 %conv8, %shl
  %13 = load ptr, ptr %wp, align 8
  %arrayidx14 = getelementptr inbounds i16, ptr %13, i64 2
  %14 = load i16, ptr %arrayidx14, align 2
  %conv15 = zext i16 %14 to i32
  %shr16 = ashr i32 %conv15, 8
  %and17 = and i32 %shr16, 255
  %conv18 = sext i32 %and17 to i64
  %shl19 = shl i64 %conv18, 16
  %or20 = or i64 %or, %shl19
  %15 = load ptr, ptr %wp, align 8
  %arrayidx21 = getelementptr inbounds i16, ptr %15, i64 3
  %16 = load i16, ptr %arrayidx21, align 2
  %conv22 = zext i16 %16 to i32
  %shr23 = ashr i32 %conv22, 8
  %and24 = and i32 %shr23, 255
  %conv25 = sext i32 %and24 to i64
  %shl26 = shl i64 %conv25, 24
  %or27 = or i64 %or20, %shl26
  %17 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %17, i32 1
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBUAcontig16bittile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %pp.addr = alloca ptr, align 8
  %samplesperpixel = alloca i32, align 4
  %wp = alloca ptr, align 8
  %r = alloca i64, align 8
  %g = alloca i64, align 8
  %b = alloca i64, align 8
  %a = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %samplesperpixel1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 7
  %1 = load i16, ptr %samplesperpixel1, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %samplesperpixel, align 4
  %2 = load ptr, ptr %pp.addr, align 8
  store ptr %2, ptr %wp, align 8
  %3 = load i64, ptr %y.addr, align 8
  %4 = load i32, ptr %samplesperpixel, align 4
  %conv2 = sext i32 %4 to i64
  %5 = load i64, ptr %fromskew.addr, align 8
  %mul = mul nsw i64 %5, %conv2
  store i64 %mul, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %6 = load i64, ptr %h.addr, align 8
  %dec = add i64 %6, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp = icmp ugt i64 %6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i64, ptr %w.addr, align 8
  store i64 %7, ptr %x.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %8 = load i64, ptr %x.addr, align 8
  %dec4 = add i64 %8, -1
  store i64 %dec4, ptr %x.addr, align 8
  %cmp5 = icmp ugt i64 %8, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %wp, align 8
  %arrayidx = getelementptr inbounds i16, ptr %9, i64 3
  %10 = load i16, ptr %arrayidx, align 2
  %conv7 = zext i16 %10 to i32
  %shr = ashr i32 %conv7, 4
  %conv8 = sext i32 %shr to i64
  store i64 %conv8, ptr %a, align 8
  %11 = load ptr, ptr %wp, align 8
  %arrayidx9 = getelementptr inbounds i16, ptr %11, i64 0
  %12 = load i16, ptr %arrayidx9, align 2
  %conv10 = zext i16 %12 to i64
  %13 = load i64, ptr %a, align 8
  %mul11 = mul i64 %conv10, %13
  %div = udiv i64 %mul11, 69375
  store i64 %div, ptr %r, align 8
  %14 = load ptr, ptr %wp, align 8
  %arrayidx12 = getelementptr inbounds i16, ptr %14, i64 1
  %15 = load i16, ptr %arrayidx12, align 2
  %conv13 = zext i16 %15 to i64
  %16 = load i64, ptr %a, align 8
  %mul14 = mul i64 %conv13, %16
  %div15 = udiv i64 %mul14, 69375
  store i64 %div15, ptr %g, align 8
  %17 = load ptr, ptr %wp, align 8
  %arrayidx16 = getelementptr inbounds i16, ptr %17, i64 2
  %18 = load i16, ptr %arrayidx16, align 2
  %conv17 = zext i16 %18 to i64
  %19 = load i64, ptr %a, align 8
  %mul18 = mul i64 %conv17, %19
  %div19 = udiv i64 %mul18, 69375
  store i64 %div19, ptr %b, align 8
  %20 = load i64, ptr %r, align 8
  %21 = load i64, ptr %g, align 8
  %shl = shl i64 %21, 8
  %or = or i64 %20, %shl
  %22 = load i64, ptr %b, align 8
  %shl20 = shl i64 %22, 16
  %or21 = or i64 %or, %shl20
  %23 = load i64, ptr %a, align 8
  %shl22 = shl i64 %23, 24
  %or23 = or i64 %or21, %shl22
  %24 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i64 %or23, ptr %24, align 8
  %25 = load i32, ptr %samplesperpixel, align 4
  %26 = load ptr, ptr %wp, align 8
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds i16, ptr %26, i64 %idx.ext
  store ptr %add.ptr, ptr %wp, align 8
  br label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  %27 = load i64, ptr %toskew.addr, align 8
  %28 = load ptr, ptr %cp.addr, align 8
  %add.ptr24 = getelementptr inbounds i64, ptr %28, i64 %27
  store ptr %add.ptr24, ptr %cp.addr, align 8
  %29 = load i64, ptr %fromskew.addr, align 8
  %30 = load ptr, ptr %wp, align 8
  %add.ptr25 = getelementptr inbounds i16, ptr %30, i64 %29
  store ptr %add.ptr25, ptr %wp, align 8
  br label %while.cond, !llvm.loop !28

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBcontig8bitCMYKtile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
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
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %samplesperpixel1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 7
  %1 = load i16, ptr %samplesperpixel1, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %samplesperpixel, align 4
  %2 = load i64, ptr %x.addr, align 8
  %3 = load i64, ptr %y.addr, align 8
  %4 = load i32, ptr %samplesperpixel, align 4
  %conv2 = sext i32 %4 to i64
  %5 = load i64, ptr %fromskew.addr, align 8
  %mul = mul nsw i64 %5, %conv2
  store i64 %mul, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load i64, ptr %h.addr, align 8
  %dec = add i64 %6, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp = icmp ugt i64 %6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i64, ptr %w.addr, align 8
  store i64 %7, ptr %_x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %8 = load i64, ptr %_x, align 8
  %cmp4 = icmp uge i64 %8, 8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 3
  %10 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %10 to i32
  %sub = sub nsw i32 255, %conv6
  %conv7 = trunc i32 %sub to i16
  store i16 %conv7, ptr %k, align 2
  %11 = load i16, ptr %k, align 2
  %conv8 = zext i16 %11 to i32
  %12 = load ptr, ptr %pp.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %13 to i32
  %sub11 = sub nsw i32 255, %conv10
  %mul12 = mul nsw i32 %conv8, %sub11
  %div = sdiv i32 %mul12, 255
  %conv13 = trunc i32 %div to i16
  store i16 %conv13, ptr %r, align 2
  %14 = load i16, ptr %k, align 2
  %conv14 = zext i16 %14 to i32
  %15 = load ptr, ptr %pp.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %15, i64 1
  %16 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %16 to i32
  %sub17 = sub nsw i32 255, %conv16
  %mul18 = mul nsw i32 %conv14, %sub17
  %div19 = sdiv i32 %mul18, 255
  %conv20 = trunc i32 %div19 to i16
  store i16 %conv20, ptr %g, align 2
  %17 = load i16, ptr %k, align 2
  %conv21 = zext i16 %17 to i32
  %18 = load ptr, ptr %pp.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %18, i64 2
  %19 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %19 to i32
  %sub24 = sub nsw i32 255, %conv23
  %mul25 = mul nsw i32 %conv21, %sub24
  %div26 = sdiv i32 %mul25, 255
  %conv27 = trunc i32 %div26 to i16
  store i16 %conv27, ptr %b, align 2
  %20 = load i16, ptr %r, align 2
  %conv28 = zext i16 %20 to i64
  %21 = load i16, ptr %g, align 2
  %conv29 = zext i16 %21 to i64
  %shl = shl i64 %conv29, 8
  %or = or i64 %conv28, %shl
  %22 = load i16, ptr %b, align 2
  %conv30 = zext i16 %22 to i64
  %shl31 = shl i64 %conv30, 16
  %or32 = or i64 %or, %shl31
  %or33 = or i64 %or32, 4278190080
  %23 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %23, i32 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i64 %or33, ptr %23, align 8
  %24 = load i32, ptr %samplesperpixel, align 4
  %25 = load ptr, ptr %pp.addr, align 8
  %idx.ext = sext i32 %24 to i64
  %add.ptr = getelementptr inbounds i8, ptr %25, i64 %idx.ext
  store ptr %add.ptr, ptr %pp.addr, align 8
  %26 = load ptr, ptr %pp.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %26, i64 3
  %27 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %27 to i32
  %sub36 = sub nsw i32 255, %conv35
  %conv37 = trunc i32 %sub36 to i16
  store i16 %conv37, ptr %k, align 2
  %28 = load i16, ptr %k, align 2
  %conv38 = zext i16 %28 to i32
  %29 = load ptr, ptr %pp.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %29, i64 0
  %30 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %30 to i32
  %sub41 = sub nsw i32 255, %conv40
  %mul42 = mul nsw i32 %conv38, %sub41
  %div43 = sdiv i32 %mul42, 255
  %conv44 = trunc i32 %div43 to i16
  store i16 %conv44, ptr %r, align 2
  %31 = load i16, ptr %k, align 2
  %conv45 = zext i16 %31 to i32
  %32 = load ptr, ptr %pp.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, ptr %32, i64 1
  %33 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %33 to i32
  %sub48 = sub nsw i32 255, %conv47
  %mul49 = mul nsw i32 %conv45, %sub48
  %div50 = sdiv i32 %mul49, 255
  %conv51 = trunc i32 %div50 to i16
  store i16 %conv51, ptr %g, align 2
  %34 = load i16, ptr %k, align 2
  %conv52 = zext i16 %34 to i32
  %35 = load ptr, ptr %pp.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, ptr %35, i64 2
  %36 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %36 to i32
  %sub55 = sub nsw i32 255, %conv54
  %mul56 = mul nsw i32 %conv52, %sub55
  %div57 = sdiv i32 %mul56, 255
  %conv58 = trunc i32 %div57 to i16
  store i16 %conv58, ptr %b, align 2
  %37 = load i16, ptr %r, align 2
  %conv59 = zext i16 %37 to i64
  %38 = load i16, ptr %g, align 2
  %conv60 = zext i16 %38 to i64
  %shl61 = shl i64 %conv60, 8
  %or62 = or i64 %conv59, %shl61
  %39 = load i16, ptr %b, align 2
  %conv63 = zext i16 %39 to i64
  %shl64 = shl i64 %conv63, 16
  %or65 = or i64 %or62, %shl64
  %or66 = or i64 %or65, 4278190080
  %40 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr67 = getelementptr inbounds i64, ptr %40, i32 1
  store ptr %incdec.ptr67, ptr %cp.addr, align 8
  store i64 %or66, ptr %40, align 8
  %41 = load i32, ptr %samplesperpixel, align 4
  %42 = load ptr, ptr %pp.addr, align 8
  %idx.ext68 = sext i32 %41 to i64
  %add.ptr69 = getelementptr inbounds i8, ptr %42, i64 %idx.ext68
  store ptr %add.ptr69, ptr %pp.addr, align 8
  %43 = load ptr, ptr %pp.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %43, i64 3
  %44 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %44 to i32
  %sub72 = sub nsw i32 255, %conv71
  %conv73 = trunc i32 %sub72 to i16
  store i16 %conv73, ptr %k, align 2
  %45 = load i16, ptr %k, align 2
  %conv74 = zext i16 %45 to i32
  %46 = load ptr, ptr %pp.addr, align 8
  %arrayidx75 = getelementptr inbounds i8, ptr %46, i64 0
  %47 = load i8, ptr %arrayidx75, align 1
  %conv76 = zext i8 %47 to i32
  %sub77 = sub nsw i32 255, %conv76
  %mul78 = mul nsw i32 %conv74, %sub77
  %div79 = sdiv i32 %mul78, 255
  %conv80 = trunc i32 %div79 to i16
  store i16 %conv80, ptr %r, align 2
  %48 = load i16, ptr %k, align 2
  %conv81 = zext i16 %48 to i32
  %49 = load ptr, ptr %pp.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, ptr %49, i64 1
  %50 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %50 to i32
  %sub84 = sub nsw i32 255, %conv83
  %mul85 = mul nsw i32 %conv81, %sub84
  %div86 = sdiv i32 %mul85, 255
  %conv87 = trunc i32 %div86 to i16
  store i16 %conv87, ptr %g, align 2
  %51 = load i16, ptr %k, align 2
  %conv88 = zext i16 %51 to i32
  %52 = load ptr, ptr %pp.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, ptr %52, i64 2
  %53 = load i8, ptr %arrayidx89, align 1
  %conv90 = zext i8 %53 to i32
  %sub91 = sub nsw i32 255, %conv90
  %mul92 = mul nsw i32 %conv88, %sub91
  %div93 = sdiv i32 %mul92, 255
  %conv94 = trunc i32 %div93 to i16
  store i16 %conv94, ptr %b, align 2
  %54 = load i16, ptr %r, align 2
  %conv95 = zext i16 %54 to i64
  %55 = load i16, ptr %g, align 2
  %conv96 = zext i16 %55 to i64
  %shl97 = shl i64 %conv96, 8
  %or98 = or i64 %conv95, %shl97
  %56 = load i16, ptr %b, align 2
  %conv99 = zext i16 %56 to i64
  %shl100 = shl i64 %conv99, 16
  %or101 = or i64 %or98, %shl100
  %or102 = or i64 %or101, 4278190080
  %57 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr103 = getelementptr inbounds i64, ptr %57, i32 1
  store ptr %incdec.ptr103, ptr %cp.addr, align 8
  store i64 %or102, ptr %57, align 8
  %58 = load i32, ptr %samplesperpixel, align 4
  %59 = load ptr, ptr %pp.addr, align 8
  %idx.ext104 = sext i32 %58 to i64
  %add.ptr105 = getelementptr inbounds i8, ptr %59, i64 %idx.ext104
  store ptr %add.ptr105, ptr %pp.addr, align 8
  %60 = load ptr, ptr %pp.addr, align 8
  %arrayidx106 = getelementptr inbounds i8, ptr %60, i64 3
  %61 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %61 to i32
  %sub108 = sub nsw i32 255, %conv107
  %conv109 = trunc i32 %sub108 to i16
  store i16 %conv109, ptr %k, align 2
  %62 = load i16, ptr %k, align 2
  %conv110 = zext i16 %62 to i32
  %63 = load ptr, ptr %pp.addr, align 8
  %arrayidx111 = getelementptr inbounds i8, ptr %63, i64 0
  %64 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %64 to i32
  %sub113 = sub nsw i32 255, %conv112
  %mul114 = mul nsw i32 %conv110, %sub113
  %div115 = sdiv i32 %mul114, 255
  %conv116 = trunc i32 %div115 to i16
  store i16 %conv116, ptr %r, align 2
  %65 = load i16, ptr %k, align 2
  %conv117 = zext i16 %65 to i32
  %66 = load ptr, ptr %pp.addr, align 8
  %arrayidx118 = getelementptr inbounds i8, ptr %66, i64 1
  %67 = load i8, ptr %arrayidx118, align 1
  %conv119 = zext i8 %67 to i32
  %sub120 = sub nsw i32 255, %conv119
  %mul121 = mul nsw i32 %conv117, %sub120
  %div122 = sdiv i32 %mul121, 255
  %conv123 = trunc i32 %div122 to i16
  store i16 %conv123, ptr %g, align 2
  %68 = load i16, ptr %k, align 2
  %conv124 = zext i16 %68 to i32
  %69 = load ptr, ptr %pp.addr, align 8
  %arrayidx125 = getelementptr inbounds i8, ptr %69, i64 2
  %70 = load i8, ptr %arrayidx125, align 1
  %conv126 = zext i8 %70 to i32
  %sub127 = sub nsw i32 255, %conv126
  %mul128 = mul nsw i32 %conv124, %sub127
  %div129 = sdiv i32 %mul128, 255
  %conv130 = trunc i32 %div129 to i16
  store i16 %conv130, ptr %b, align 2
  %71 = load i16, ptr %r, align 2
  %conv131 = zext i16 %71 to i64
  %72 = load i16, ptr %g, align 2
  %conv132 = zext i16 %72 to i64
  %shl133 = shl i64 %conv132, 8
  %or134 = or i64 %conv131, %shl133
  %73 = load i16, ptr %b, align 2
  %conv135 = zext i16 %73 to i64
  %shl136 = shl i64 %conv135, 16
  %or137 = or i64 %or134, %shl136
  %or138 = or i64 %or137, 4278190080
  %74 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr139 = getelementptr inbounds i64, ptr %74, i32 1
  store ptr %incdec.ptr139, ptr %cp.addr, align 8
  store i64 %or138, ptr %74, align 8
  %75 = load i32, ptr %samplesperpixel, align 4
  %76 = load ptr, ptr %pp.addr, align 8
  %idx.ext140 = sext i32 %75 to i64
  %add.ptr141 = getelementptr inbounds i8, ptr %76, i64 %idx.ext140
  store ptr %add.ptr141, ptr %pp.addr, align 8
  %77 = load ptr, ptr %pp.addr, align 8
  %arrayidx142 = getelementptr inbounds i8, ptr %77, i64 3
  %78 = load i8, ptr %arrayidx142, align 1
  %conv143 = zext i8 %78 to i32
  %sub144 = sub nsw i32 255, %conv143
  %conv145 = trunc i32 %sub144 to i16
  store i16 %conv145, ptr %k, align 2
  %79 = load i16, ptr %k, align 2
  %conv146 = zext i16 %79 to i32
  %80 = load ptr, ptr %pp.addr, align 8
  %arrayidx147 = getelementptr inbounds i8, ptr %80, i64 0
  %81 = load i8, ptr %arrayidx147, align 1
  %conv148 = zext i8 %81 to i32
  %sub149 = sub nsw i32 255, %conv148
  %mul150 = mul nsw i32 %conv146, %sub149
  %div151 = sdiv i32 %mul150, 255
  %conv152 = trunc i32 %div151 to i16
  store i16 %conv152, ptr %r, align 2
  %82 = load i16, ptr %k, align 2
  %conv153 = zext i16 %82 to i32
  %83 = load ptr, ptr %pp.addr, align 8
  %arrayidx154 = getelementptr inbounds i8, ptr %83, i64 1
  %84 = load i8, ptr %arrayidx154, align 1
  %conv155 = zext i8 %84 to i32
  %sub156 = sub nsw i32 255, %conv155
  %mul157 = mul nsw i32 %conv153, %sub156
  %div158 = sdiv i32 %mul157, 255
  %conv159 = trunc i32 %div158 to i16
  store i16 %conv159, ptr %g, align 2
  %85 = load i16, ptr %k, align 2
  %conv160 = zext i16 %85 to i32
  %86 = load ptr, ptr %pp.addr, align 8
  %arrayidx161 = getelementptr inbounds i8, ptr %86, i64 2
  %87 = load i8, ptr %arrayidx161, align 1
  %conv162 = zext i8 %87 to i32
  %sub163 = sub nsw i32 255, %conv162
  %mul164 = mul nsw i32 %conv160, %sub163
  %div165 = sdiv i32 %mul164, 255
  %conv166 = trunc i32 %div165 to i16
  store i16 %conv166, ptr %b, align 2
  %88 = load i16, ptr %r, align 2
  %conv167 = zext i16 %88 to i64
  %89 = load i16, ptr %g, align 2
  %conv168 = zext i16 %89 to i64
  %shl169 = shl i64 %conv168, 8
  %or170 = or i64 %conv167, %shl169
  %90 = load i16, ptr %b, align 2
  %conv171 = zext i16 %90 to i64
  %shl172 = shl i64 %conv171, 16
  %or173 = or i64 %or170, %shl172
  %or174 = or i64 %or173, 4278190080
  %91 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr175 = getelementptr inbounds i64, ptr %91, i32 1
  store ptr %incdec.ptr175, ptr %cp.addr, align 8
  store i64 %or174, ptr %91, align 8
  %92 = load i32, ptr %samplesperpixel, align 4
  %93 = load ptr, ptr %pp.addr, align 8
  %idx.ext176 = sext i32 %92 to i64
  %add.ptr177 = getelementptr inbounds i8, ptr %93, i64 %idx.ext176
  store ptr %add.ptr177, ptr %pp.addr, align 8
  %94 = load ptr, ptr %pp.addr, align 8
  %arrayidx178 = getelementptr inbounds i8, ptr %94, i64 3
  %95 = load i8, ptr %arrayidx178, align 1
  %conv179 = zext i8 %95 to i32
  %sub180 = sub nsw i32 255, %conv179
  %conv181 = trunc i32 %sub180 to i16
  store i16 %conv181, ptr %k, align 2
  %96 = load i16, ptr %k, align 2
  %conv182 = zext i16 %96 to i32
  %97 = load ptr, ptr %pp.addr, align 8
  %arrayidx183 = getelementptr inbounds i8, ptr %97, i64 0
  %98 = load i8, ptr %arrayidx183, align 1
  %conv184 = zext i8 %98 to i32
  %sub185 = sub nsw i32 255, %conv184
  %mul186 = mul nsw i32 %conv182, %sub185
  %div187 = sdiv i32 %mul186, 255
  %conv188 = trunc i32 %div187 to i16
  store i16 %conv188, ptr %r, align 2
  %99 = load i16, ptr %k, align 2
  %conv189 = zext i16 %99 to i32
  %100 = load ptr, ptr %pp.addr, align 8
  %arrayidx190 = getelementptr inbounds i8, ptr %100, i64 1
  %101 = load i8, ptr %arrayidx190, align 1
  %conv191 = zext i8 %101 to i32
  %sub192 = sub nsw i32 255, %conv191
  %mul193 = mul nsw i32 %conv189, %sub192
  %div194 = sdiv i32 %mul193, 255
  %conv195 = trunc i32 %div194 to i16
  store i16 %conv195, ptr %g, align 2
  %102 = load i16, ptr %k, align 2
  %conv196 = zext i16 %102 to i32
  %103 = load ptr, ptr %pp.addr, align 8
  %arrayidx197 = getelementptr inbounds i8, ptr %103, i64 2
  %104 = load i8, ptr %arrayidx197, align 1
  %conv198 = zext i8 %104 to i32
  %sub199 = sub nsw i32 255, %conv198
  %mul200 = mul nsw i32 %conv196, %sub199
  %div201 = sdiv i32 %mul200, 255
  %conv202 = trunc i32 %div201 to i16
  store i16 %conv202, ptr %b, align 2
  %105 = load i16, ptr %r, align 2
  %conv203 = zext i16 %105 to i64
  %106 = load i16, ptr %g, align 2
  %conv204 = zext i16 %106 to i64
  %shl205 = shl i64 %conv204, 8
  %or206 = or i64 %conv203, %shl205
  %107 = load i16, ptr %b, align 2
  %conv207 = zext i16 %107 to i64
  %shl208 = shl i64 %conv207, 16
  %or209 = or i64 %or206, %shl208
  %or210 = or i64 %or209, 4278190080
  %108 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr211 = getelementptr inbounds i64, ptr %108, i32 1
  store ptr %incdec.ptr211, ptr %cp.addr, align 8
  store i64 %or210, ptr %108, align 8
  %109 = load i32, ptr %samplesperpixel, align 4
  %110 = load ptr, ptr %pp.addr, align 8
  %idx.ext212 = sext i32 %109 to i64
  %add.ptr213 = getelementptr inbounds i8, ptr %110, i64 %idx.ext212
  store ptr %add.ptr213, ptr %pp.addr, align 8
  %111 = load ptr, ptr %pp.addr, align 8
  %arrayidx214 = getelementptr inbounds i8, ptr %111, i64 3
  %112 = load i8, ptr %arrayidx214, align 1
  %conv215 = zext i8 %112 to i32
  %sub216 = sub nsw i32 255, %conv215
  %conv217 = trunc i32 %sub216 to i16
  store i16 %conv217, ptr %k, align 2
  %113 = load i16, ptr %k, align 2
  %conv218 = zext i16 %113 to i32
  %114 = load ptr, ptr %pp.addr, align 8
  %arrayidx219 = getelementptr inbounds i8, ptr %114, i64 0
  %115 = load i8, ptr %arrayidx219, align 1
  %conv220 = zext i8 %115 to i32
  %sub221 = sub nsw i32 255, %conv220
  %mul222 = mul nsw i32 %conv218, %sub221
  %div223 = sdiv i32 %mul222, 255
  %conv224 = trunc i32 %div223 to i16
  store i16 %conv224, ptr %r, align 2
  %116 = load i16, ptr %k, align 2
  %conv225 = zext i16 %116 to i32
  %117 = load ptr, ptr %pp.addr, align 8
  %arrayidx226 = getelementptr inbounds i8, ptr %117, i64 1
  %118 = load i8, ptr %arrayidx226, align 1
  %conv227 = zext i8 %118 to i32
  %sub228 = sub nsw i32 255, %conv227
  %mul229 = mul nsw i32 %conv225, %sub228
  %div230 = sdiv i32 %mul229, 255
  %conv231 = trunc i32 %div230 to i16
  store i16 %conv231, ptr %g, align 2
  %119 = load i16, ptr %k, align 2
  %conv232 = zext i16 %119 to i32
  %120 = load ptr, ptr %pp.addr, align 8
  %arrayidx233 = getelementptr inbounds i8, ptr %120, i64 2
  %121 = load i8, ptr %arrayidx233, align 1
  %conv234 = zext i8 %121 to i32
  %sub235 = sub nsw i32 255, %conv234
  %mul236 = mul nsw i32 %conv232, %sub235
  %div237 = sdiv i32 %mul236, 255
  %conv238 = trunc i32 %div237 to i16
  store i16 %conv238, ptr %b, align 2
  %122 = load i16, ptr %r, align 2
  %conv239 = zext i16 %122 to i64
  %123 = load i16, ptr %g, align 2
  %conv240 = zext i16 %123 to i64
  %shl241 = shl i64 %conv240, 8
  %or242 = or i64 %conv239, %shl241
  %124 = load i16, ptr %b, align 2
  %conv243 = zext i16 %124 to i64
  %shl244 = shl i64 %conv243, 16
  %or245 = or i64 %or242, %shl244
  %or246 = or i64 %or245, 4278190080
  %125 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr247 = getelementptr inbounds i64, ptr %125, i32 1
  store ptr %incdec.ptr247, ptr %cp.addr, align 8
  store i64 %or246, ptr %125, align 8
  %126 = load i32, ptr %samplesperpixel, align 4
  %127 = load ptr, ptr %pp.addr, align 8
  %idx.ext248 = sext i32 %126 to i64
  %add.ptr249 = getelementptr inbounds i8, ptr %127, i64 %idx.ext248
  store ptr %add.ptr249, ptr %pp.addr, align 8
  %128 = load ptr, ptr %pp.addr, align 8
  %arrayidx250 = getelementptr inbounds i8, ptr %128, i64 3
  %129 = load i8, ptr %arrayidx250, align 1
  %conv251 = zext i8 %129 to i32
  %sub252 = sub nsw i32 255, %conv251
  %conv253 = trunc i32 %sub252 to i16
  store i16 %conv253, ptr %k, align 2
  %130 = load i16, ptr %k, align 2
  %conv254 = zext i16 %130 to i32
  %131 = load ptr, ptr %pp.addr, align 8
  %arrayidx255 = getelementptr inbounds i8, ptr %131, i64 0
  %132 = load i8, ptr %arrayidx255, align 1
  %conv256 = zext i8 %132 to i32
  %sub257 = sub nsw i32 255, %conv256
  %mul258 = mul nsw i32 %conv254, %sub257
  %div259 = sdiv i32 %mul258, 255
  %conv260 = trunc i32 %div259 to i16
  store i16 %conv260, ptr %r, align 2
  %133 = load i16, ptr %k, align 2
  %conv261 = zext i16 %133 to i32
  %134 = load ptr, ptr %pp.addr, align 8
  %arrayidx262 = getelementptr inbounds i8, ptr %134, i64 1
  %135 = load i8, ptr %arrayidx262, align 1
  %conv263 = zext i8 %135 to i32
  %sub264 = sub nsw i32 255, %conv263
  %mul265 = mul nsw i32 %conv261, %sub264
  %div266 = sdiv i32 %mul265, 255
  %conv267 = trunc i32 %div266 to i16
  store i16 %conv267, ptr %g, align 2
  %136 = load i16, ptr %k, align 2
  %conv268 = zext i16 %136 to i32
  %137 = load ptr, ptr %pp.addr, align 8
  %arrayidx269 = getelementptr inbounds i8, ptr %137, i64 2
  %138 = load i8, ptr %arrayidx269, align 1
  %conv270 = zext i8 %138 to i32
  %sub271 = sub nsw i32 255, %conv270
  %mul272 = mul nsw i32 %conv268, %sub271
  %div273 = sdiv i32 %mul272, 255
  %conv274 = trunc i32 %div273 to i16
  store i16 %conv274, ptr %b, align 2
  %139 = load i16, ptr %r, align 2
  %conv275 = zext i16 %139 to i64
  %140 = load i16, ptr %g, align 2
  %conv276 = zext i16 %140 to i64
  %shl277 = shl i64 %conv276, 8
  %or278 = or i64 %conv275, %shl277
  %141 = load i16, ptr %b, align 2
  %conv279 = zext i16 %141 to i64
  %shl280 = shl i64 %conv279, 16
  %or281 = or i64 %or278, %shl280
  %or282 = or i64 %or281, 4278190080
  %142 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr283 = getelementptr inbounds i64, ptr %142, i32 1
  store ptr %incdec.ptr283, ptr %cp.addr, align 8
  store i64 %or282, ptr %142, align 8
  %143 = load i32, ptr %samplesperpixel, align 4
  %144 = load ptr, ptr %pp.addr, align 8
  %idx.ext284 = sext i32 %143 to i64
  %add.ptr285 = getelementptr inbounds i8, ptr %144, i64 %idx.ext284
  store ptr %add.ptr285, ptr %pp.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %145 = load i64, ptr %_x, align 8
  %sub286 = sub i64 %145, 8
  store i64 %sub286, ptr %_x, align 8
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  %146 = load i64, ptr %_x, align 8
  %cmp287 = icmp ugt i64 %146, 0
  br i1 %cmp287, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %147 = load i64, ptr %_x, align 8
  switch i64 %147, label %sw.epilog [
    i64 7, label %sw.bb
    i64 6, label %sw.bb325
    i64 5, label %sw.bb362
    i64 4, label %sw.bb399
    i64 3, label %sw.bb436
    i64 2, label %sw.bb473
    i64 1, label %sw.bb510
  ]

sw.bb:                                            ; preds = %if.then
  %148 = load ptr, ptr %pp.addr, align 8
  %arrayidx289 = getelementptr inbounds i8, ptr %148, i64 3
  %149 = load i8, ptr %arrayidx289, align 1
  %conv290 = zext i8 %149 to i32
  %sub291 = sub nsw i32 255, %conv290
  %conv292 = trunc i32 %sub291 to i16
  store i16 %conv292, ptr %k, align 2
  %150 = load i16, ptr %k, align 2
  %conv293 = zext i16 %150 to i32
  %151 = load ptr, ptr %pp.addr, align 8
  %arrayidx294 = getelementptr inbounds i8, ptr %151, i64 0
  %152 = load i8, ptr %arrayidx294, align 1
  %conv295 = zext i8 %152 to i32
  %sub296 = sub nsw i32 255, %conv295
  %mul297 = mul nsw i32 %conv293, %sub296
  %div298 = sdiv i32 %mul297, 255
  %conv299 = trunc i32 %div298 to i16
  store i16 %conv299, ptr %r, align 2
  %153 = load i16, ptr %k, align 2
  %conv300 = zext i16 %153 to i32
  %154 = load ptr, ptr %pp.addr, align 8
  %arrayidx301 = getelementptr inbounds i8, ptr %154, i64 1
  %155 = load i8, ptr %arrayidx301, align 1
  %conv302 = zext i8 %155 to i32
  %sub303 = sub nsw i32 255, %conv302
  %mul304 = mul nsw i32 %conv300, %sub303
  %div305 = sdiv i32 %mul304, 255
  %conv306 = trunc i32 %div305 to i16
  store i16 %conv306, ptr %g, align 2
  %156 = load i16, ptr %k, align 2
  %conv307 = zext i16 %156 to i32
  %157 = load ptr, ptr %pp.addr, align 8
  %arrayidx308 = getelementptr inbounds i8, ptr %157, i64 2
  %158 = load i8, ptr %arrayidx308, align 1
  %conv309 = zext i8 %158 to i32
  %sub310 = sub nsw i32 255, %conv309
  %mul311 = mul nsw i32 %conv307, %sub310
  %div312 = sdiv i32 %mul311, 255
  %conv313 = trunc i32 %div312 to i16
  store i16 %conv313, ptr %b, align 2
  %159 = load i16, ptr %r, align 2
  %conv314 = zext i16 %159 to i64
  %160 = load i16, ptr %g, align 2
  %conv315 = zext i16 %160 to i64
  %shl316 = shl i64 %conv315, 8
  %or317 = or i64 %conv314, %shl316
  %161 = load i16, ptr %b, align 2
  %conv318 = zext i16 %161 to i64
  %shl319 = shl i64 %conv318, 16
  %or320 = or i64 %or317, %shl319
  %or321 = or i64 %or320, 4278190080
  %162 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr322 = getelementptr inbounds i64, ptr %162, i32 1
  store ptr %incdec.ptr322, ptr %cp.addr, align 8
  store i64 %or321, ptr %162, align 8
  %163 = load i32, ptr %samplesperpixel, align 4
  %164 = load ptr, ptr %pp.addr, align 8
  %idx.ext323 = sext i32 %163 to i64
  %add.ptr324 = getelementptr inbounds i8, ptr %164, i64 %idx.ext323
  store ptr %add.ptr324, ptr %pp.addr, align 8
  br label %sw.bb325

sw.bb325:                                         ; preds = %if.then, %sw.bb
  %165 = load ptr, ptr %pp.addr, align 8
  %arrayidx326 = getelementptr inbounds i8, ptr %165, i64 3
  %166 = load i8, ptr %arrayidx326, align 1
  %conv327 = zext i8 %166 to i32
  %sub328 = sub nsw i32 255, %conv327
  %conv329 = trunc i32 %sub328 to i16
  store i16 %conv329, ptr %k, align 2
  %167 = load i16, ptr %k, align 2
  %conv330 = zext i16 %167 to i32
  %168 = load ptr, ptr %pp.addr, align 8
  %arrayidx331 = getelementptr inbounds i8, ptr %168, i64 0
  %169 = load i8, ptr %arrayidx331, align 1
  %conv332 = zext i8 %169 to i32
  %sub333 = sub nsw i32 255, %conv332
  %mul334 = mul nsw i32 %conv330, %sub333
  %div335 = sdiv i32 %mul334, 255
  %conv336 = trunc i32 %div335 to i16
  store i16 %conv336, ptr %r, align 2
  %170 = load i16, ptr %k, align 2
  %conv337 = zext i16 %170 to i32
  %171 = load ptr, ptr %pp.addr, align 8
  %arrayidx338 = getelementptr inbounds i8, ptr %171, i64 1
  %172 = load i8, ptr %arrayidx338, align 1
  %conv339 = zext i8 %172 to i32
  %sub340 = sub nsw i32 255, %conv339
  %mul341 = mul nsw i32 %conv337, %sub340
  %div342 = sdiv i32 %mul341, 255
  %conv343 = trunc i32 %div342 to i16
  store i16 %conv343, ptr %g, align 2
  %173 = load i16, ptr %k, align 2
  %conv344 = zext i16 %173 to i32
  %174 = load ptr, ptr %pp.addr, align 8
  %arrayidx345 = getelementptr inbounds i8, ptr %174, i64 2
  %175 = load i8, ptr %arrayidx345, align 1
  %conv346 = zext i8 %175 to i32
  %sub347 = sub nsw i32 255, %conv346
  %mul348 = mul nsw i32 %conv344, %sub347
  %div349 = sdiv i32 %mul348, 255
  %conv350 = trunc i32 %div349 to i16
  store i16 %conv350, ptr %b, align 2
  %176 = load i16, ptr %r, align 2
  %conv351 = zext i16 %176 to i64
  %177 = load i16, ptr %g, align 2
  %conv352 = zext i16 %177 to i64
  %shl353 = shl i64 %conv352, 8
  %or354 = or i64 %conv351, %shl353
  %178 = load i16, ptr %b, align 2
  %conv355 = zext i16 %178 to i64
  %shl356 = shl i64 %conv355, 16
  %or357 = or i64 %or354, %shl356
  %or358 = or i64 %or357, 4278190080
  %179 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr359 = getelementptr inbounds i64, ptr %179, i32 1
  store ptr %incdec.ptr359, ptr %cp.addr, align 8
  store i64 %or358, ptr %179, align 8
  %180 = load i32, ptr %samplesperpixel, align 4
  %181 = load ptr, ptr %pp.addr, align 8
  %idx.ext360 = sext i32 %180 to i64
  %add.ptr361 = getelementptr inbounds i8, ptr %181, i64 %idx.ext360
  store ptr %add.ptr361, ptr %pp.addr, align 8
  br label %sw.bb362

sw.bb362:                                         ; preds = %if.then, %sw.bb325
  %182 = load ptr, ptr %pp.addr, align 8
  %arrayidx363 = getelementptr inbounds i8, ptr %182, i64 3
  %183 = load i8, ptr %arrayidx363, align 1
  %conv364 = zext i8 %183 to i32
  %sub365 = sub nsw i32 255, %conv364
  %conv366 = trunc i32 %sub365 to i16
  store i16 %conv366, ptr %k, align 2
  %184 = load i16, ptr %k, align 2
  %conv367 = zext i16 %184 to i32
  %185 = load ptr, ptr %pp.addr, align 8
  %arrayidx368 = getelementptr inbounds i8, ptr %185, i64 0
  %186 = load i8, ptr %arrayidx368, align 1
  %conv369 = zext i8 %186 to i32
  %sub370 = sub nsw i32 255, %conv369
  %mul371 = mul nsw i32 %conv367, %sub370
  %div372 = sdiv i32 %mul371, 255
  %conv373 = trunc i32 %div372 to i16
  store i16 %conv373, ptr %r, align 2
  %187 = load i16, ptr %k, align 2
  %conv374 = zext i16 %187 to i32
  %188 = load ptr, ptr %pp.addr, align 8
  %arrayidx375 = getelementptr inbounds i8, ptr %188, i64 1
  %189 = load i8, ptr %arrayidx375, align 1
  %conv376 = zext i8 %189 to i32
  %sub377 = sub nsw i32 255, %conv376
  %mul378 = mul nsw i32 %conv374, %sub377
  %div379 = sdiv i32 %mul378, 255
  %conv380 = trunc i32 %div379 to i16
  store i16 %conv380, ptr %g, align 2
  %190 = load i16, ptr %k, align 2
  %conv381 = zext i16 %190 to i32
  %191 = load ptr, ptr %pp.addr, align 8
  %arrayidx382 = getelementptr inbounds i8, ptr %191, i64 2
  %192 = load i8, ptr %arrayidx382, align 1
  %conv383 = zext i8 %192 to i32
  %sub384 = sub nsw i32 255, %conv383
  %mul385 = mul nsw i32 %conv381, %sub384
  %div386 = sdiv i32 %mul385, 255
  %conv387 = trunc i32 %div386 to i16
  store i16 %conv387, ptr %b, align 2
  %193 = load i16, ptr %r, align 2
  %conv388 = zext i16 %193 to i64
  %194 = load i16, ptr %g, align 2
  %conv389 = zext i16 %194 to i64
  %shl390 = shl i64 %conv389, 8
  %or391 = or i64 %conv388, %shl390
  %195 = load i16, ptr %b, align 2
  %conv392 = zext i16 %195 to i64
  %shl393 = shl i64 %conv392, 16
  %or394 = or i64 %or391, %shl393
  %or395 = or i64 %or394, 4278190080
  %196 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr396 = getelementptr inbounds i64, ptr %196, i32 1
  store ptr %incdec.ptr396, ptr %cp.addr, align 8
  store i64 %or395, ptr %196, align 8
  %197 = load i32, ptr %samplesperpixel, align 4
  %198 = load ptr, ptr %pp.addr, align 8
  %idx.ext397 = sext i32 %197 to i64
  %add.ptr398 = getelementptr inbounds i8, ptr %198, i64 %idx.ext397
  store ptr %add.ptr398, ptr %pp.addr, align 8
  br label %sw.bb399

sw.bb399:                                         ; preds = %if.then, %sw.bb362
  %199 = load ptr, ptr %pp.addr, align 8
  %arrayidx400 = getelementptr inbounds i8, ptr %199, i64 3
  %200 = load i8, ptr %arrayidx400, align 1
  %conv401 = zext i8 %200 to i32
  %sub402 = sub nsw i32 255, %conv401
  %conv403 = trunc i32 %sub402 to i16
  store i16 %conv403, ptr %k, align 2
  %201 = load i16, ptr %k, align 2
  %conv404 = zext i16 %201 to i32
  %202 = load ptr, ptr %pp.addr, align 8
  %arrayidx405 = getelementptr inbounds i8, ptr %202, i64 0
  %203 = load i8, ptr %arrayidx405, align 1
  %conv406 = zext i8 %203 to i32
  %sub407 = sub nsw i32 255, %conv406
  %mul408 = mul nsw i32 %conv404, %sub407
  %div409 = sdiv i32 %mul408, 255
  %conv410 = trunc i32 %div409 to i16
  store i16 %conv410, ptr %r, align 2
  %204 = load i16, ptr %k, align 2
  %conv411 = zext i16 %204 to i32
  %205 = load ptr, ptr %pp.addr, align 8
  %arrayidx412 = getelementptr inbounds i8, ptr %205, i64 1
  %206 = load i8, ptr %arrayidx412, align 1
  %conv413 = zext i8 %206 to i32
  %sub414 = sub nsw i32 255, %conv413
  %mul415 = mul nsw i32 %conv411, %sub414
  %div416 = sdiv i32 %mul415, 255
  %conv417 = trunc i32 %div416 to i16
  store i16 %conv417, ptr %g, align 2
  %207 = load i16, ptr %k, align 2
  %conv418 = zext i16 %207 to i32
  %208 = load ptr, ptr %pp.addr, align 8
  %arrayidx419 = getelementptr inbounds i8, ptr %208, i64 2
  %209 = load i8, ptr %arrayidx419, align 1
  %conv420 = zext i8 %209 to i32
  %sub421 = sub nsw i32 255, %conv420
  %mul422 = mul nsw i32 %conv418, %sub421
  %div423 = sdiv i32 %mul422, 255
  %conv424 = trunc i32 %div423 to i16
  store i16 %conv424, ptr %b, align 2
  %210 = load i16, ptr %r, align 2
  %conv425 = zext i16 %210 to i64
  %211 = load i16, ptr %g, align 2
  %conv426 = zext i16 %211 to i64
  %shl427 = shl i64 %conv426, 8
  %or428 = or i64 %conv425, %shl427
  %212 = load i16, ptr %b, align 2
  %conv429 = zext i16 %212 to i64
  %shl430 = shl i64 %conv429, 16
  %or431 = or i64 %or428, %shl430
  %or432 = or i64 %or431, 4278190080
  %213 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr433 = getelementptr inbounds i64, ptr %213, i32 1
  store ptr %incdec.ptr433, ptr %cp.addr, align 8
  store i64 %or432, ptr %213, align 8
  %214 = load i32, ptr %samplesperpixel, align 4
  %215 = load ptr, ptr %pp.addr, align 8
  %idx.ext434 = sext i32 %214 to i64
  %add.ptr435 = getelementptr inbounds i8, ptr %215, i64 %idx.ext434
  store ptr %add.ptr435, ptr %pp.addr, align 8
  br label %sw.bb436

sw.bb436:                                         ; preds = %if.then, %sw.bb399
  %216 = load ptr, ptr %pp.addr, align 8
  %arrayidx437 = getelementptr inbounds i8, ptr %216, i64 3
  %217 = load i8, ptr %arrayidx437, align 1
  %conv438 = zext i8 %217 to i32
  %sub439 = sub nsw i32 255, %conv438
  %conv440 = trunc i32 %sub439 to i16
  store i16 %conv440, ptr %k, align 2
  %218 = load i16, ptr %k, align 2
  %conv441 = zext i16 %218 to i32
  %219 = load ptr, ptr %pp.addr, align 8
  %arrayidx442 = getelementptr inbounds i8, ptr %219, i64 0
  %220 = load i8, ptr %arrayidx442, align 1
  %conv443 = zext i8 %220 to i32
  %sub444 = sub nsw i32 255, %conv443
  %mul445 = mul nsw i32 %conv441, %sub444
  %div446 = sdiv i32 %mul445, 255
  %conv447 = trunc i32 %div446 to i16
  store i16 %conv447, ptr %r, align 2
  %221 = load i16, ptr %k, align 2
  %conv448 = zext i16 %221 to i32
  %222 = load ptr, ptr %pp.addr, align 8
  %arrayidx449 = getelementptr inbounds i8, ptr %222, i64 1
  %223 = load i8, ptr %arrayidx449, align 1
  %conv450 = zext i8 %223 to i32
  %sub451 = sub nsw i32 255, %conv450
  %mul452 = mul nsw i32 %conv448, %sub451
  %div453 = sdiv i32 %mul452, 255
  %conv454 = trunc i32 %div453 to i16
  store i16 %conv454, ptr %g, align 2
  %224 = load i16, ptr %k, align 2
  %conv455 = zext i16 %224 to i32
  %225 = load ptr, ptr %pp.addr, align 8
  %arrayidx456 = getelementptr inbounds i8, ptr %225, i64 2
  %226 = load i8, ptr %arrayidx456, align 1
  %conv457 = zext i8 %226 to i32
  %sub458 = sub nsw i32 255, %conv457
  %mul459 = mul nsw i32 %conv455, %sub458
  %div460 = sdiv i32 %mul459, 255
  %conv461 = trunc i32 %div460 to i16
  store i16 %conv461, ptr %b, align 2
  %227 = load i16, ptr %r, align 2
  %conv462 = zext i16 %227 to i64
  %228 = load i16, ptr %g, align 2
  %conv463 = zext i16 %228 to i64
  %shl464 = shl i64 %conv463, 8
  %or465 = or i64 %conv462, %shl464
  %229 = load i16, ptr %b, align 2
  %conv466 = zext i16 %229 to i64
  %shl467 = shl i64 %conv466, 16
  %or468 = or i64 %or465, %shl467
  %or469 = or i64 %or468, 4278190080
  %230 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr470 = getelementptr inbounds i64, ptr %230, i32 1
  store ptr %incdec.ptr470, ptr %cp.addr, align 8
  store i64 %or469, ptr %230, align 8
  %231 = load i32, ptr %samplesperpixel, align 4
  %232 = load ptr, ptr %pp.addr, align 8
  %idx.ext471 = sext i32 %231 to i64
  %add.ptr472 = getelementptr inbounds i8, ptr %232, i64 %idx.ext471
  store ptr %add.ptr472, ptr %pp.addr, align 8
  br label %sw.bb473

sw.bb473:                                         ; preds = %if.then, %sw.bb436
  %233 = load ptr, ptr %pp.addr, align 8
  %arrayidx474 = getelementptr inbounds i8, ptr %233, i64 3
  %234 = load i8, ptr %arrayidx474, align 1
  %conv475 = zext i8 %234 to i32
  %sub476 = sub nsw i32 255, %conv475
  %conv477 = trunc i32 %sub476 to i16
  store i16 %conv477, ptr %k, align 2
  %235 = load i16, ptr %k, align 2
  %conv478 = zext i16 %235 to i32
  %236 = load ptr, ptr %pp.addr, align 8
  %arrayidx479 = getelementptr inbounds i8, ptr %236, i64 0
  %237 = load i8, ptr %arrayidx479, align 1
  %conv480 = zext i8 %237 to i32
  %sub481 = sub nsw i32 255, %conv480
  %mul482 = mul nsw i32 %conv478, %sub481
  %div483 = sdiv i32 %mul482, 255
  %conv484 = trunc i32 %div483 to i16
  store i16 %conv484, ptr %r, align 2
  %238 = load i16, ptr %k, align 2
  %conv485 = zext i16 %238 to i32
  %239 = load ptr, ptr %pp.addr, align 8
  %arrayidx486 = getelementptr inbounds i8, ptr %239, i64 1
  %240 = load i8, ptr %arrayidx486, align 1
  %conv487 = zext i8 %240 to i32
  %sub488 = sub nsw i32 255, %conv487
  %mul489 = mul nsw i32 %conv485, %sub488
  %div490 = sdiv i32 %mul489, 255
  %conv491 = trunc i32 %div490 to i16
  store i16 %conv491, ptr %g, align 2
  %241 = load i16, ptr %k, align 2
  %conv492 = zext i16 %241 to i32
  %242 = load ptr, ptr %pp.addr, align 8
  %arrayidx493 = getelementptr inbounds i8, ptr %242, i64 2
  %243 = load i8, ptr %arrayidx493, align 1
  %conv494 = zext i8 %243 to i32
  %sub495 = sub nsw i32 255, %conv494
  %mul496 = mul nsw i32 %conv492, %sub495
  %div497 = sdiv i32 %mul496, 255
  %conv498 = trunc i32 %div497 to i16
  store i16 %conv498, ptr %b, align 2
  %244 = load i16, ptr %r, align 2
  %conv499 = zext i16 %244 to i64
  %245 = load i16, ptr %g, align 2
  %conv500 = zext i16 %245 to i64
  %shl501 = shl i64 %conv500, 8
  %or502 = or i64 %conv499, %shl501
  %246 = load i16, ptr %b, align 2
  %conv503 = zext i16 %246 to i64
  %shl504 = shl i64 %conv503, 16
  %or505 = or i64 %or502, %shl504
  %or506 = or i64 %or505, 4278190080
  %247 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr507 = getelementptr inbounds i64, ptr %247, i32 1
  store ptr %incdec.ptr507, ptr %cp.addr, align 8
  store i64 %or506, ptr %247, align 8
  %248 = load i32, ptr %samplesperpixel, align 4
  %249 = load ptr, ptr %pp.addr, align 8
  %idx.ext508 = sext i32 %248 to i64
  %add.ptr509 = getelementptr inbounds i8, ptr %249, i64 %idx.ext508
  store ptr %add.ptr509, ptr %pp.addr, align 8
  br label %sw.bb510

sw.bb510:                                         ; preds = %if.then, %sw.bb473
  %250 = load ptr, ptr %pp.addr, align 8
  %arrayidx511 = getelementptr inbounds i8, ptr %250, i64 3
  %251 = load i8, ptr %arrayidx511, align 1
  %conv512 = zext i8 %251 to i32
  %sub513 = sub nsw i32 255, %conv512
  %conv514 = trunc i32 %sub513 to i16
  store i16 %conv514, ptr %k, align 2
  %252 = load i16, ptr %k, align 2
  %conv515 = zext i16 %252 to i32
  %253 = load ptr, ptr %pp.addr, align 8
  %arrayidx516 = getelementptr inbounds i8, ptr %253, i64 0
  %254 = load i8, ptr %arrayidx516, align 1
  %conv517 = zext i8 %254 to i32
  %sub518 = sub nsw i32 255, %conv517
  %mul519 = mul nsw i32 %conv515, %sub518
  %div520 = sdiv i32 %mul519, 255
  %conv521 = trunc i32 %div520 to i16
  store i16 %conv521, ptr %r, align 2
  %255 = load i16, ptr %k, align 2
  %conv522 = zext i16 %255 to i32
  %256 = load ptr, ptr %pp.addr, align 8
  %arrayidx523 = getelementptr inbounds i8, ptr %256, i64 1
  %257 = load i8, ptr %arrayidx523, align 1
  %conv524 = zext i8 %257 to i32
  %sub525 = sub nsw i32 255, %conv524
  %mul526 = mul nsw i32 %conv522, %sub525
  %div527 = sdiv i32 %mul526, 255
  %conv528 = trunc i32 %div527 to i16
  store i16 %conv528, ptr %g, align 2
  %258 = load i16, ptr %k, align 2
  %conv529 = zext i16 %258 to i32
  %259 = load ptr, ptr %pp.addr, align 8
  %arrayidx530 = getelementptr inbounds i8, ptr %259, i64 2
  %260 = load i8, ptr %arrayidx530, align 1
  %conv531 = zext i8 %260 to i32
  %sub532 = sub nsw i32 255, %conv531
  %mul533 = mul nsw i32 %conv529, %sub532
  %div534 = sdiv i32 %mul533, 255
  %conv535 = trunc i32 %div534 to i16
  store i16 %conv535, ptr %b, align 2
  %261 = load i16, ptr %r, align 2
  %conv536 = zext i16 %261 to i64
  %262 = load i16, ptr %g, align 2
  %conv537 = zext i16 %262 to i64
  %shl538 = shl i64 %conv537, 8
  %or539 = or i64 %conv536, %shl538
  %263 = load i16, ptr %b, align 2
  %conv540 = zext i16 %263 to i64
  %shl541 = shl i64 %conv540, 16
  %or542 = or i64 %or539, %shl541
  %or543 = or i64 %or542, 4278190080
  %264 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr544 = getelementptr inbounds i64, ptr %264, i32 1
  store ptr %incdec.ptr544, ptr %cp.addr, align 8
  store i64 %or543, ptr %264, align 8
  %265 = load i32, ptr %samplesperpixel, align 4
  %266 = load ptr, ptr %pp.addr, align 8
  %idx.ext545 = sext i32 %265 to i64
  %add.ptr546 = getelementptr inbounds i8, ptr %266, i64 %idx.ext545
  store ptr %add.ptr546, ptr %pp.addr, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb510, %if.then
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %for.end
  %267 = load i64, ptr %toskew.addr, align 8
  %268 = load ptr, ptr %cp.addr, align 8
  %add.ptr547 = getelementptr inbounds i64, ptr %268, i64 %267
  store ptr %add.ptr547, ptr %cp.addr, align 8
  %269 = load i64, ptr %fromskew.addr, align 8
  %270 = load ptr, ptr %pp.addr, align 8
  %add.ptr548 = getelementptr inbounds i8, ptr %270, i64 %269
  store ptr %add.ptr548, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBcontig8bitCMYKMaptile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
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
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %samplesperpixel1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 7
  %1 = load i16, ptr %samplesperpixel1, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %samplesperpixel, align 4
  %2 = load ptr, ptr %img.addr, align 8
  %Map2 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i32 0, i32 15
  %3 = load ptr, ptr %Map2, align 8
  store ptr %3, ptr %Map, align 8
  %4 = load i64, ptr %y.addr, align 8
  %5 = load i32, ptr %samplesperpixel, align 4
  %conv3 = sext i32 %5 to i64
  %6 = load i64, ptr %fromskew.addr, align 8
  %mul = mul nsw i64 %6, %conv3
  store i64 %mul, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %7 = load i64, ptr %h.addr, align 8
  %dec = add i64 %7, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp = icmp ugt i64 %7, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i64, ptr %w.addr, align 8
  store i64 %8, ptr %x.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %9 = load i64, ptr %x.addr, align 8
  %dec5 = add i64 %9, -1
  store i64 %dec5, ptr %x.addr, align 8
  %cmp6 = icmp ugt i64 %9, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 3
  %11 = load i8, ptr %arrayidx, align 1
  %conv8 = zext i8 %11 to i32
  %sub = sub nsw i32 255, %conv8
  %conv9 = trunc i32 %sub to i16
  store i16 %conv9, ptr %k, align 2
  %12 = load i16, ptr %k, align 2
  %conv10 = zext i16 %12 to i32
  %13 = load ptr, ptr %pp.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %14 to i32
  %sub13 = sub nsw i32 255, %conv12
  %mul14 = mul nsw i32 %conv10, %sub13
  %div = sdiv i32 %mul14, 255
  %conv15 = trunc i32 %div to i16
  store i16 %conv15, ptr %r, align 2
  %15 = load i16, ptr %k, align 2
  %conv16 = zext i16 %15 to i32
  %16 = load ptr, ptr %pp.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %16, i64 1
  %17 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %17 to i32
  %sub19 = sub nsw i32 255, %conv18
  %mul20 = mul nsw i32 %conv16, %sub19
  %div21 = sdiv i32 %mul20, 255
  %conv22 = trunc i32 %div21 to i16
  store i16 %conv22, ptr %g, align 2
  %18 = load i16, ptr %k, align 2
  %conv23 = zext i16 %18 to i32
  %19 = load ptr, ptr %pp.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %19, i64 2
  %20 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %20 to i32
  %sub26 = sub nsw i32 255, %conv25
  %mul27 = mul nsw i32 %conv23, %sub26
  %div28 = sdiv i32 %mul27, 255
  %conv29 = trunc i32 %div28 to i16
  store i16 %conv29, ptr %b, align 2
  %21 = load ptr, ptr %Map, align 8
  %22 = load i16, ptr %r, align 2
  %idxprom = zext i16 %22 to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %21, i64 %idxprom
  %23 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %23 to i64
  %24 = load ptr, ptr %Map, align 8
  %25 = load i16, ptr %g, align 2
  %idxprom32 = zext i16 %25 to i64
  %arrayidx33 = getelementptr inbounds i8, ptr %24, i64 %idxprom32
  %26 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %26 to i64
  %shl = shl i64 %conv34, 8
  %or = or i64 %conv31, %shl
  %27 = load ptr, ptr %Map, align 8
  %28 = load i16, ptr %b, align 2
  %idxprom35 = zext i16 %28 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %27, i64 %idxprom35
  %29 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %29 to i64
  %shl38 = shl i64 %conv37, 16
  %or39 = or i64 %or, %shl38
  %or40 = or i64 %or39, 4278190080
  %30 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %30, i32 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i64 %or40, ptr %30, align 8
  %31 = load i32, ptr %samplesperpixel, align 4
  %32 = load ptr, ptr %pp.addr, align 8
  %idx.ext = sext i32 %31 to i64
  %add.ptr = getelementptr inbounds i8, ptr %32, i64 %idx.ext
  store ptr %add.ptr, ptr %pp.addr, align 8
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  %33 = load i64, ptr %fromskew.addr, align 8
  %34 = load ptr, ptr %pp.addr, align 8
  %add.ptr41 = getelementptr inbounds i8, ptr %34, i64 %33
  store ptr %add.ptr41, ptr %pp.addr, align 8
  %35 = load i64, ptr %toskew.addr, align 8
  %36 = load ptr, ptr %cp.addr, align 8
  %add.ptr42 = getelementptr inbounds i64, ptr %36, i64 %35
  store ptr %add.ptr42, ptr %cp.addr, align 8
  br label %while.cond, !llvm.loop !32

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @put8bitcmaptile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %pp.addr = alloca ptr, align 8
  %PALmap = alloca ptr, align 8
  %_x = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %PALmap1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 17
  %1 = load ptr, ptr %PALmap1, align 8
  store ptr %1, ptr %PALmap, align 8
  %2 = load i64, ptr %x.addr, align 8
  %3 = load i64, ptr %y.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = load i64, ptr %h.addr, align 8
  %dec = add i64 %4, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp = icmp ugt i64 %4, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i64, ptr %w.addr, align 8
  store i64 %5, ptr %_x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %6 = load i64, ptr %_x, align 8
  %cmp2 = icmp uge i64 %6, 8
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %PALmap, align 8
  %8 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %pp.addr, align 8
  %9 = load i8, ptr %8, align 1
  %idxprom = zext i8 %9 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %10, i64 0
  %11 = load i64, ptr %arrayidx3, align 8
  %12 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i64, ptr %12, i32 1
  store ptr %incdec.ptr4, ptr %cp.addr, align 8
  store i64 %11, ptr %12, align 8
  %13 = load ptr, ptr %PALmap, align 8
  %14 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr5, ptr %pp.addr, align 8
  %15 = load i8, ptr %14, align 1
  %idxprom6 = zext i8 %15 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %13, i64 %idxprom6
  %16 = load ptr, ptr %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %16, i64 0
  %17 = load i64, ptr %arrayidx8, align 8
  %18 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i64, ptr %18, i32 1
  store ptr %incdec.ptr9, ptr %cp.addr, align 8
  store i64 %17, ptr %18, align 8
  %19 = load ptr, ptr %PALmap, align 8
  %20 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr10, ptr %pp.addr, align 8
  %21 = load i8, ptr %20, align 1
  %idxprom11 = zext i8 %21 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %19, i64 %idxprom11
  %22 = load ptr, ptr %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %22, i64 0
  %23 = load i64, ptr %arrayidx13, align 8
  %24 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i64, ptr %24, i32 1
  store ptr %incdec.ptr14, ptr %cp.addr, align 8
  store i64 %23, ptr %24, align 8
  %25 = load ptr, ptr %PALmap, align 8
  %26 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr15 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr15, ptr %pp.addr, align 8
  %27 = load i8, ptr %26, align 1
  %idxprom16 = zext i8 %27 to i64
  %arrayidx17 = getelementptr inbounds ptr, ptr %25, i64 %idxprom16
  %28 = load ptr, ptr %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %28, i64 0
  %29 = load i64, ptr %arrayidx18, align 8
  %30 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr19 = getelementptr inbounds i64, ptr %30, i32 1
  store ptr %incdec.ptr19, ptr %cp.addr, align 8
  store i64 %29, ptr %30, align 8
  %31 = load ptr, ptr %PALmap, align 8
  %32 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr20, ptr %pp.addr, align 8
  %33 = load i8, ptr %32, align 1
  %idxprom21 = zext i8 %33 to i64
  %arrayidx22 = getelementptr inbounds ptr, ptr %31, i64 %idxprom21
  %34 = load ptr, ptr %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %34, i64 0
  %35 = load i64, ptr %arrayidx23, align 8
  %36 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr24 = getelementptr inbounds i64, ptr %36, i32 1
  store ptr %incdec.ptr24, ptr %cp.addr, align 8
  store i64 %35, ptr %36, align 8
  %37 = load ptr, ptr %PALmap, align 8
  %38 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr25 = getelementptr inbounds i8, ptr %38, i32 1
  store ptr %incdec.ptr25, ptr %pp.addr, align 8
  %39 = load i8, ptr %38, align 1
  %idxprom26 = zext i8 %39 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %37, i64 %idxprom26
  %40 = load ptr, ptr %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i64, ptr %40, i64 0
  %41 = load i64, ptr %arrayidx28, align 8
  %42 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr29 = getelementptr inbounds i64, ptr %42, i32 1
  store ptr %incdec.ptr29, ptr %cp.addr, align 8
  store i64 %41, ptr %42, align 8
  %43 = load ptr, ptr %PALmap, align 8
  %44 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i8, ptr %44, i32 1
  store ptr %incdec.ptr30, ptr %pp.addr, align 8
  %45 = load i8, ptr %44, align 1
  %idxprom31 = zext i8 %45 to i64
  %arrayidx32 = getelementptr inbounds ptr, ptr %43, i64 %idxprom31
  %46 = load ptr, ptr %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds i64, ptr %46, i64 0
  %47 = load i64, ptr %arrayidx33, align 8
  %48 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr34 = getelementptr inbounds i64, ptr %48, i32 1
  store ptr %incdec.ptr34, ptr %cp.addr, align 8
  store i64 %47, ptr %48, align 8
  %49 = load ptr, ptr %PALmap, align 8
  %50 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr35 = getelementptr inbounds i8, ptr %50, i32 1
  store ptr %incdec.ptr35, ptr %pp.addr, align 8
  %51 = load i8, ptr %50, align 1
  %idxprom36 = zext i8 %51 to i64
  %arrayidx37 = getelementptr inbounds ptr, ptr %49, i64 %idxprom36
  %52 = load ptr, ptr %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds i64, ptr %52, i64 0
  %53 = load i64, ptr %arrayidx38, align 8
  %54 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr39 = getelementptr inbounds i64, ptr %54, i32 1
  store ptr %incdec.ptr39, ptr %cp.addr, align 8
  store i64 %53, ptr %54, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %55 = load i64, ptr %_x, align 8
  %sub = sub i64 %55, 8
  store i64 %sub, ptr %_x, align 8
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  %56 = load i64, ptr %_x, align 8
  %cmp40 = icmp ugt i64 %56, 0
  br i1 %cmp40, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %57 = load i64, ptr %_x, align 8
  switch i64 %57, label %sw.epilog [
    i64 7, label %sw.bb
    i64 6, label %sw.bb46
    i64 5, label %sw.bb52
    i64 4, label %sw.bb58
    i64 3, label %sw.bb64
    i64 2, label %sw.bb70
    i64 1, label %sw.bb76
  ]

sw.bb:                                            ; preds = %if.then
  %58 = load ptr, ptr %PALmap, align 8
  %59 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr41 = getelementptr inbounds i8, ptr %59, i32 1
  store ptr %incdec.ptr41, ptr %pp.addr, align 8
  %60 = load i8, ptr %59, align 1
  %idxprom42 = zext i8 %60 to i64
  %arrayidx43 = getelementptr inbounds ptr, ptr %58, i64 %idxprom42
  %61 = load ptr, ptr %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds i64, ptr %61, i64 0
  %62 = load i64, ptr %arrayidx44, align 8
  %63 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr45 = getelementptr inbounds i64, ptr %63, i32 1
  store ptr %incdec.ptr45, ptr %cp.addr, align 8
  store i64 %62, ptr %63, align 8
  br label %sw.bb46

sw.bb46:                                          ; preds = %if.then, %sw.bb
  %64 = load ptr, ptr %PALmap, align 8
  %65 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr47 = getelementptr inbounds i8, ptr %65, i32 1
  store ptr %incdec.ptr47, ptr %pp.addr, align 8
  %66 = load i8, ptr %65, align 1
  %idxprom48 = zext i8 %66 to i64
  %arrayidx49 = getelementptr inbounds ptr, ptr %64, i64 %idxprom48
  %67 = load ptr, ptr %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds i64, ptr %67, i64 0
  %68 = load i64, ptr %arrayidx50, align 8
  %69 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr51 = getelementptr inbounds i64, ptr %69, i32 1
  store ptr %incdec.ptr51, ptr %cp.addr, align 8
  store i64 %68, ptr %69, align 8
  br label %sw.bb52

sw.bb52:                                          ; preds = %if.then, %sw.bb46
  %70 = load ptr, ptr %PALmap, align 8
  %71 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr53 = getelementptr inbounds i8, ptr %71, i32 1
  store ptr %incdec.ptr53, ptr %pp.addr, align 8
  %72 = load i8, ptr %71, align 1
  %idxprom54 = zext i8 %72 to i64
  %arrayidx55 = getelementptr inbounds ptr, ptr %70, i64 %idxprom54
  %73 = load ptr, ptr %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i64, ptr %73, i64 0
  %74 = load i64, ptr %arrayidx56, align 8
  %75 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr57 = getelementptr inbounds i64, ptr %75, i32 1
  store ptr %incdec.ptr57, ptr %cp.addr, align 8
  store i64 %74, ptr %75, align 8
  br label %sw.bb58

sw.bb58:                                          ; preds = %if.then, %sw.bb52
  %76 = load ptr, ptr %PALmap, align 8
  %77 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr59 = getelementptr inbounds i8, ptr %77, i32 1
  store ptr %incdec.ptr59, ptr %pp.addr, align 8
  %78 = load i8, ptr %77, align 1
  %idxprom60 = zext i8 %78 to i64
  %arrayidx61 = getelementptr inbounds ptr, ptr %76, i64 %idxprom60
  %79 = load ptr, ptr %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds i64, ptr %79, i64 0
  %80 = load i64, ptr %arrayidx62, align 8
  %81 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr63 = getelementptr inbounds i64, ptr %81, i32 1
  store ptr %incdec.ptr63, ptr %cp.addr, align 8
  store i64 %80, ptr %81, align 8
  br label %sw.bb64

sw.bb64:                                          ; preds = %if.then, %sw.bb58
  %82 = load ptr, ptr %PALmap, align 8
  %83 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr65 = getelementptr inbounds i8, ptr %83, i32 1
  store ptr %incdec.ptr65, ptr %pp.addr, align 8
  %84 = load i8, ptr %83, align 1
  %idxprom66 = zext i8 %84 to i64
  %arrayidx67 = getelementptr inbounds ptr, ptr %82, i64 %idxprom66
  %85 = load ptr, ptr %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds i64, ptr %85, i64 0
  %86 = load i64, ptr %arrayidx68, align 8
  %87 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr69 = getelementptr inbounds i64, ptr %87, i32 1
  store ptr %incdec.ptr69, ptr %cp.addr, align 8
  store i64 %86, ptr %87, align 8
  br label %sw.bb70

sw.bb70:                                          ; preds = %if.then, %sw.bb64
  %88 = load ptr, ptr %PALmap, align 8
  %89 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr71 = getelementptr inbounds i8, ptr %89, i32 1
  store ptr %incdec.ptr71, ptr %pp.addr, align 8
  %90 = load i8, ptr %89, align 1
  %idxprom72 = zext i8 %90 to i64
  %arrayidx73 = getelementptr inbounds ptr, ptr %88, i64 %idxprom72
  %91 = load ptr, ptr %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds i64, ptr %91, i64 0
  %92 = load i64, ptr %arrayidx74, align 8
  %93 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr75 = getelementptr inbounds i64, ptr %93, i32 1
  store ptr %incdec.ptr75, ptr %cp.addr, align 8
  store i64 %92, ptr %93, align 8
  br label %sw.bb76

sw.bb76:                                          ; preds = %if.then, %sw.bb70
  %94 = load ptr, ptr %PALmap, align 8
  %95 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr77 = getelementptr inbounds i8, ptr %95, i32 1
  store ptr %incdec.ptr77, ptr %pp.addr, align 8
  %96 = load i8, ptr %95, align 1
  %idxprom78 = zext i8 %96 to i64
  %arrayidx79 = getelementptr inbounds ptr, ptr %94, i64 %idxprom78
  %97 = load ptr, ptr %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i64, ptr %97, i64 0
  %98 = load i64, ptr %arrayidx80, align 8
  %99 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr81 = getelementptr inbounds i64, ptr %99, i32 1
  store ptr %incdec.ptr81, ptr %cp.addr, align 8
  store i64 %98, ptr %99, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb76, %if.then
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %for.end
  %100 = load i64, ptr %toskew.addr, align 8
  %101 = load ptr, ptr %cp.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %101, i64 %100
  store ptr %add.ptr, ptr %cp.addr, align 8
  %102 = load i64, ptr %fromskew.addr, align 8
  %103 = load ptr, ptr %pp.addr, align 8
  %add.ptr82 = getelementptr inbounds i8, ptr %103, i64 %102
  store ptr %add.ptr82, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !34

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @put4bitcmaptile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
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
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %PALmap1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 17
  %1 = load ptr, ptr %PALmap1, align 8
  store ptr %1, ptr %PALmap, align 8
  %2 = load i64, ptr %x.addr, align 8
  %3 = load i64, ptr %y.addr, align 8
  %4 = load i64, ptr %fromskew.addr, align 8
  %div = sdiv i64 %4, 2
  store i64 %div, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load i64, ptr %h.addr, align 8
  %dec = add i64 %5, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp = icmp ugt i64 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i64, ptr %w.addr, align 8
  store i64 %6, ptr %_x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %7 = load i64, ptr %_x, align 8
  %cmp2 = icmp uge i64 %7, 2
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %PALmap, align 8
  %9 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %pp.addr, align 8
  %10 = load i8, ptr %9, align 1
  %idxprom = zext i8 %10 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %11 = load ptr, ptr %arrayidx, align 8
  store ptr %11, ptr %bw, align 8
  %12 = load ptr, ptr %bw, align 8
  %incdec.ptr3 = getelementptr inbounds i64, ptr %12, i32 1
  store ptr %incdec.ptr3, ptr %bw, align 8
  %13 = load i64, ptr %12, align 8
  %14 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i64, ptr %14, i32 1
  store ptr %incdec.ptr4, ptr %cp.addr, align 8
  store i64 %13, ptr %14, align 8
  %15 = load ptr, ptr %bw, align 8
  %incdec.ptr5 = getelementptr inbounds i64, ptr %15, i32 1
  store ptr %incdec.ptr5, ptr %bw, align 8
  %16 = load i64, ptr %15, align 8
  %17 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i64, ptr %17, i32 1
  store ptr %incdec.ptr6, ptr %cp.addr, align 8
  store i64 %16, ptr %17, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, ptr %_x, align 8
  %sub = sub i64 %18, 2
  store i64 %sub, ptr %_x, align 8
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %for.cond
  %19 = load i64, ptr %_x, align 8
  %tobool = icmp ne i64 %19, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %20 = load ptr, ptr %PALmap, align 8
  %21 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr7, ptr %pp.addr, align 8
  %22 = load i8, ptr %21, align 1
  %idxprom8 = zext i8 %22 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %20, i64 %idxprom8
  %23 = load ptr, ptr %arrayidx9, align 8
  store ptr %23, ptr %bw, align 8
  %24 = load ptr, ptr %bw, align 8
  %incdec.ptr10 = getelementptr inbounds i64, ptr %24, i32 1
  store ptr %incdec.ptr10, ptr %bw, align 8
  %25 = load i64, ptr %24, align 8
  %26 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i64, ptr %26, i32 1
  store ptr %incdec.ptr11, ptr %cp.addr, align 8
  store i64 %25, ptr %26, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %27 = load i64, ptr %toskew.addr, align 8
  %28 = load ptr, ptr %cp.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %28, i64 %27
  store ptr %add.ptr, ptr %cp.addr, align 8
  %29 = load i64, ptr %fromskew.addr, align 8
  %30 = load ptr, ptr %pp.addr, align 8
  %add.ptr12 = getelementptr inbounds i8, ptr %30, i64 %29
  store ptr %add.ptr12, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !36

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @put2bitcmaptile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
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
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %PALmap1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 17
  %1 = load ptr, ptr %PALmap1, align 8
  store ptr %1, ptr %PALmap, align 8
  %2 = load i64, ptr %x.addr, align 8
  %3 = load i64, ptr %y.addr, align 8
  %4 = load i64, ptr %fromskew.addr, align 8
  %div = sdiv i64 %4, 4
  store i64 %div, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load i64, ptr %h.addr, align 8
  %dec = add i64 %5, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp = icmp ugt i64 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i64, ptr %w.addr, align 8
  store i64 %6, ptr %_x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %7 = load i64, ptr %_x, align 8
  %cmp2 = icmp uge i64 %7, 4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %PALmap, align 8
  %9 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %pp.addr, align 8
  %10 = load i8, ptr %9, align 1
  %idxprom = zext i8 %10 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %11 = load ptr, ptr %arrayidx, align 8
  store ptr %11, ptr %bw, align 8
  %12 = load ptr, ptr %bw, align 8
  %incdec.ptr3 = getelementptr inbounds i64, ptr %12, i32 1
  store ptr %incdec.ptr3, ptr %bw, align 8
  %13 = load i64, ptr %12, align 8
  %14 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i64, ptr %14, i32 1
  store ptr %incdec.ptr4, ptr %cp.addr, align 8
  store i64 %13, ptr %14, align 8
  %15 = load ptr, ptr %bw, align 8
  %incdec.ptr5 = getelementptr inbounds i64, ptr %15, i32 1
  store ptr %incdec.ptr5, ptr %bw, align 8
  %16 = load i64, ptr %15, align 8
  %17 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i64, ptr %17, i32 1
  store ptr %incdec.ptr6, ptr %cp.addr, align 8
  store i64 %16, ptr %17, align 8
  %18 = load ptr, ptr %bw, align 8
  %incdec.ptr7 = getelementptr inbounds i64, ptr %18, i32 1
  store ptr %incdec.ptr7, ptr %bw, align 8
  %19 = load i64, ptr %18, align 8
  %20 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i64, ptr %20, i32 1
  store ptr %incdec.ptr8, ptr %cp.addr, align 8
  store i64 %19, ptr %20, align 8
  %21 = load ptr, ptr %bw, align 8
  %incdec.ptr9 = getelementptr inbounds i64, ptr %21, i32 1
  store ptr %incdec.ptr9, ptr %bw, align 8
  %22 = load i64, ptr %21, align 8
  %23 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i64, ptr %23, i32 1
  store ptr %incdec.ptr10, ptr %cp.addr, align 8
  store i64 %22, ptr %23, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i64, ptr %_x, align 8
  %sub = sub i64 %24, 4
  store i64 %sub, ptr %_x, align 8
  br label %for.cond, !llvm.loop !37

for.end:                                          ; preds = %for.cond
  %25 = load i64, ptr %_x, align 8
  %cmp11 = icmp ugt i64 %25, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %26 = load ptr, ptr %PALmap, align 8
  %27 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr12, ptr %pp.addr, align 8
  %28 = load i8, ptr %27, align 1
  %idxprom13 = zext i8 %28 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %26, i64 %idxprom13
  %29 = load ptr, ptr %arrayidx14, align 8
  store ptr %29, ptr %bw, align 8
  %30 = load i64, ptr %_x, align 8
  switch i64 %30, label %sw.epilog [
    i64 3, label %sw.bb
    i64 2, label %sw.bb17
    i64 1, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.then
  %31 = load ptr, ptr %bw, align 8
  %incdec.ptr15 = getelementptr inbounds i64, ptr %31, i32 1
  store ptr %incdec.ptr15, ptr %bw, align 8
  %32 = load i64, ptr %31, align 8
  %33 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i64, ptr %33, i32 1
  store ptr %incdec.ptr16, ptr %cp.addr, align 8
  store i64 %32, ptr %33, align 8
  br label %sw.bb17

sw.bb17:                                          ; preds = %if.then, %sw.bb
  %34 = load ptr, ptr %bw, align 8
  %incdec.ptr18 = getelementptr inbounds i64, ptr %34, i32 1
  store ptr %incdec.ptr18, ptr %bw, align 8
  %35 = load i64, ptr %34, align 8
  %36 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr19 = getelementptr inbounds i64, ptr %36, i32 1
  store ptr %incdec.ptr19, ptr %cp.addr, align 8
  store i64 %35, ptr %36, align 8
  br label %sw.bb20

sw.bb20:                                          ; preds = %if.then, %sw.bb17
  %37 = load ptr, ptr %bw, align 8
  %incdec.ptr21 = getelementptr inbounds i64, ptr %37, i32 1
  store ptr %incdec.ptr21, ptr %bw, align 8
  %38 = load i64, ptr %37, align 8
  %39 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i64, ptr %39, i32 1
  store ptr %incdec.ptr22, ptr %cp.addr, align 8
  store i64 %38, ptr %39, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %if.then
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %for.end
  %40 = load i64, ptr %toskew.addr, align 8
  %41 = load ptr, ptr %cp.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %41, i64 %40
  store ptr %add.ptr, ptr %cp.addr, align 8
  %42 = load i64, ptr %fromskew.addr, align 8
  %43 = load ptr, ptr %pp.addr, align 8
  %add.ptr23 = getelementptr inbounds i8, ptr %43, i64 %42
  store ptr %add.ptr23, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !38

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @put1bitcmaptile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
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
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %PALmap1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 17
  %1 = load ptr, ptr %PALmap1, align 8
  store ptr %1, ptr %PALmap, align 8
  %2 = load i64, ptr %x.addr, align 8
  %3 = load i64, ptr %y.addr, align 8
  %4 = load i64, ptr %fromskew.addr, align 8
  %div = sdiv i64 %4, 8
  store i64 %div, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load i64, ptr %h.addr, align 8
  %dec = add i64 %5, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp = icmp ugt i64 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i64, ptr %w.addr, align 8
  store i64 %6, ptr %_x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %7 = load i64, ptr %_x, align 8
  %cmp2 = icmp uge i64 %7, 8
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %PALmap, align 8
  %9 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %pp.addr, align 8
  %10 = load i8, ptr %9, align 1
  %idxprom = zext i8 %10 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %11 = load ptr, ptr %arrayidx, align 8
  store ptr %11, ptr %bw, align 8
  %12 = load ptr, ptr %bw, align 8
  %incdec.ptr3 = getelementptr inbounds i64, ptr %12, i32 1
  store ptr %incdec.ptr3, ptr %bw, align 8
  %13 = load i64, ptr %12, align 8
  %14 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i64, ptr %14, i32 1
  store ptr %incdec.ptr4, ptr %cp.addr, align 8
  store i64 %13, ptr %14, align 8
  %15 = load ptr, ptr %bw, align 8
  %incdec.ptr5 = getelementptr inbounds i64, ptr %15, i32 1
  store ptr %incdec.ptr5, ptr %bw, align 8
  %16 = load i64, ptr %15, align 8
  %17 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i64, ptr %17, i32 1
  store ptr %incdec.ptr6, ptr %cp.addr, align 8
  store i64 %16, ptr %17, align 8
  %18 = load ptr, ptr %bw, align 8
  %incdec.ptr7 = getelementptr inbounds i64, ptr %18, i32 1
  store ptr %incdec.ptr7, ptr %bw, align 8
  %19 = load i64, ptr %18, align 8
  %20 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i64, ptr %20, i32 1
  store ptr %incdec.ptr8, ptr %cp.addr, align 8
  store i64 %19, ptr %20, align 8
  %21 = load ptr, ptr %bw, align 8
  %incdec.ptr9 = getelementptr inbounds i64, ptr %21, i32 1
  store ptr %incdec.ptr9, ptr %bw, align 8
  %22 = load i64, ptr %21, align 8
  %23 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i64, ptr %23, i32 1
  store ptr %incdec.ptr10, ptr %cp.addr, align 8
  store i64 %22, ptr %23, align 8
  %24 = load ptr, ptr %bw, align 8
  %incdec.ptr11 = getelementptr inbounds i64, ptr %24, i32 1
  store ptr %incdec.ptr11, ptr %bw, align 8
  %25 = load i64, ptr %24, align 8
  %26 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i64, ptr %26, i32 1
  store ptr %incdec.ptr12, ptr %cp.addr, align 8
  store i64 %25, ptr %26, align 8
  %27 = load ptr, ptr %bw, align 8
  %incdec.ptr13 = getelementptr inbounds i64, ptr %27, i32 1
  store ptr %incdec.ptr13, ptr %bw, align 8
  %28 = load i64, ptr %27, align 8
  %29 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i64, ptr %29, i32 1
  store ptr %incdec.ptr14, ptr %cp.addr, align 8
  store i64 %28, ptr %29, align 8
  %30 = load ptr, ptr %bw, align 8
  %incdec.ptr15 = getelementptr inbounds i64, ptr %30, i32 1
  store ptr %incdec.ptr15, ptr %bw, align 8
  %31 = load i64, ptr %30, align 8
  %32 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i64, ptr %32, i32 1
  store ptr %incdec.ptr16, ptr %cp.addr, align 8
  store i64 %31, ptr %32, align 8
  %33 = load ptr, ptr %bw, align 8
  %incdec.ptr17 = getelementptr inbounds i64, ptr %33, i32 1
  store ptr %incdec.ptr17, ptr %bw, align 8
  %34 = load i64, ptr %33, align 8
  %35 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr18 = getelementptr inbounds i64, ptr %35, i32 1
  store ptr %incdec.ptr18, ptr %cp.addr, align 8
  store i64 %34, ptr %35, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i64, ptr %_x, align 8
  %sub = sub i64 %36, 8
  store i64 %sub, ptr %_x, align 8
  br label %for.cond, !llvm.loop !39

for.end:                                          ; preds = %for.cond
  %37 = load i64, ptr %_x, align 8
  %cmp19 = icmp ugt i64 %37, 0
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %38 = load ptr, ptr %PALmap, align 8
  %39 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %39, i32 1
  store ptr %incdec.ptr20, ptr %pp.addr, align 8
  %40 = load i8, ptr %39, align 1
  %idxprom21 = zext i8 %40 to i64
  %arrayidx22 = getelementptr inbounds ptr, ptr %38, i64 %idxprom21
  %41 = load ptr, ptr %arrayidx22, align 8
  store ptr %41, ptr %bw, align 8
  %42 = load i64, ptr %_x, align 8
  switch i64 %42, label %sw.epilog [
    i64 7, label %sw.bb
    i64 6, label %sw.bb25
    i64 5, label %sw.bb28
    i64 4, label %sw.bb31
    i64 3, label %sw.bb34
    i64 2, label %sw.bb37
    i64 1, label %sw.bb40
  ]

sw.bb:                                            ; preds = %if.then
  %43 = load ptr, ptr %bw, align 8
  %incdec.ptr23 = getelementptr inbounds i64, ptr %43, i32 1
  store ptr %incdec.ptr23, ptr %bw, align 8
  %44 = load i64, ptr %43, align 8
  %45 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr24 = getelementptr inbounds i64, ptr %45, i32 1
  store ptr %incdec.ptr24, ptr %cp.addr, align 8
  store i64 %44, ptr %45, align 8
  br label %sw.bb25

sw.bb25:                                          ; preds = %if.then, %sw.bb
  %46 = load ptr, ptr %bw, align 8
  %incdec.ptr26 = getelementptr inbounds i64, ptr %46, i32 1
  store ptr %incdec.ptr26, ptr %bw, align 8
  %47 = load i64, ptr %46, align 8
  %48 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr27 = getelementptr inbounds i64, ptr %48, i32 1
  store ptr %incdec.ptr27, ptr %cp.addr, align 8
  store i64 %47, ptr %48, align 8
  br label %sw.bb28

sw.bb28:                                          ; preds = %if.then, %sw.bb25
  %49 = load ptr, ptr %bw, align 8
  %incdec.ptr29 = getelementptr inbounds i64, ptr %49, i32 1
  store ptr %incdec.ptr29, ptr %bw, align 8
  %50 = load i64, ptr %49, align 8
  %51 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i64, ptr %51, i32 1
  store ptr %incdec.ptr30, ptr %cp.addr, align 8
  store i64 %50, ptr %51, align 8
  br label %sw.bb31

sw.bb31:                                          ; preds = %if.then, %sw.bb28
  %52 = load ptr, ptr %bw, align 8
  %incdec.ptr32 = getelementptr inbounds i64, ptr %52, i32 1
  store ptr %incdec.ptr32, ptr %bw, align 8
  %53 = load i64, ptr %52, align 8
  %54 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr33 = getelementptr inbounds i64, ptr %54, i32 1
  store ptr %incdec.ptr33, ptr %cp.addr, align 8
  store i64 %53, ptr %54, align 8
  br label %sw.bb34

sw.bb34:                                          ; preds = %if.then, %sw.bb31
  %55 = load ptr, ptr %bw, align 8
  %incdec.ptr35 = getelementptr inbounds i64, ptr %55, i32 1
  store ptr %incdec.ptr35, ptr %bw, align 8
  %56 = load i64, ptr %55, align 8
  %57 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr36 = getelementptr inbounds i64, ptr %57, i32 1
  store ptr %incdec.ptr36, ptr %cp.addr, align 8
  store i64 %56, ptr %57, align 8
  br label %sw.bb37

sw.bb37:                                          ; preds = %if.then, %sw.bb34
  %58 = load ptr, ptr %bw, align 8
  %incdec.ptr38 = getelementptr inbounds i64, ptr %58, i32 1
  store ptr %incdec.ptr38, ptr %bw, align 8
  %59 = load i64, ptr %58, align 8
  %60 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr39 = getelementptr inbounds i64, ptr %60, i32 1
  store ptr %incdec.ptr39, ptr %cp.addr, align 8
  store i64 %59, ptr %60, align 8
  br label %sw.bb40

sw.bb40:                                          ; preds = %if.then, %sw.bb37
  %61 = load ptr, ptr %bw, align 8
  %incdec.ptr41 = getelementptr inbounds i64, ptr %61, i32 1
  store ptr %incdec.ptr41, ptr %bw, align 8
  %62 = load i64, ptr %61, align 8
  %63 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr42 = getelementptr inbounds i64, ptr %63, i32 1
  store ptr %incdec.ptr42, ptr %cp.addr, align 8
  store i64 %62, ptr %63, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb40, %if.then
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %for.end
  %64 = load i64, ptr %toskew.addr, align 8
  %65 = load ptr, ptr %cp.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %65, i64 %64
  store ptr %add.ptr, ptr %cp.addr, align 8
  %66 = load i64, ptr %fromskew.addr, align 8
  %67 = load ptr, ptr %pp.addr, align 8
  %add.ptr43 = getelementptr inbounds i8, ptr %67, i64 %66
  store ptr %add.ptr43, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !40

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putgreytile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %pp.addr = alloca ptr, align 8
  %BWmap = alloca ptr, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %BWmap1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 16
  %1 = load ptr, ptr %BWmap1, align 8
  store ptr %1, ptr %BWmap, align 8
  %2 = load i64, ptr %y.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %3 = load i64, ptr %h.addr, align 8
  %dec = add i64 %3, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp = icmp ugt i64 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i64, ptr %w.addr, align 8
  store i64 %4, ptr %x.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %5 = load i64, ptr %x.addr, align 8
  %dec2 = add i64 %5, -1
  store i64 %dec2, ptr %x.addr, align 8
  %cmp3 = icmp ugt i64 %5, 0
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %BWmap, align 8
  %7 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %pp.addr, align 8
  %8 = load i8, ptr %7, align 1
  %idxprom = zext i8 %8 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %9, i64 0
  %10 = load i64, ptr %arrayidx4, align 8
  %11 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i64, ptr %11, i32 1
  store ptr %incdec.ptr5, ptr %cp.addr, align 8
  store i64 %10, ptr %11, align 8
  br label %for.cond, !llvm.loop !41

for.end:                                          ; preds = %for.cond
  %12 = load i64, ptr %toskew.addr, align 8
  %13 = load ptr, ptr %cp.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %13, i64 %12
  store ptr %add.ptr, ptr %cp.addr, align 8
  %14 = load i64, ptr %fromskew.addr, align 8
  %15 = load ptr, ptr %pp.addr, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %15, i64 %14
  store ptr %add.ptr6, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !42

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @put4bitbwtile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
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
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %BWmap1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 16
  %1 = load ptr, ptr %BWmap1, align 8
  store ptr %1, ptr %BWmap, align 8
  %2 = load i64, ptr %x.addr, align 8
  %3 = load i64, ptr %y.addr, align 8
  %4 = load i64, ptr %fromskew.addr, align 8
  %div = sdiv i64 %4, 2
  store i64 %div, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load i64, ptr %h.addr, align 8
  %dec = add i64 %5, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp = icmp ugt i64 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i64, ptr %w.addr, align 8
  store i64 %6, ptr %_x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %7 = load i64, ptr %_x, align 8
  %cmp2 = icmp uge i64 %7, 2
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %BWmap, align 8
  %9 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %pp.addr, align 8
  %10 = load i8, ptr %9, align 1
  %idxprom = zext i8 %10 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %11 = load ptr, ptr %arrayidx, align 8
  store ptr %11, ptr %bw, align 8
  %12 = load ptr, ptr %bw, align 8
  %incdec.ptr3 = getelementptr inbounds i64, ptr %12, i32 1
  store ptr %incdec.ptr3, ptr %bw, align 8
  %13 = load i64, ptr %12, align 8
  %14 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i64, ptr %14, i32 1
  store ptr %incdec.ptr4, ptr %cp.addr, align 8
  store i64 %13, ptr %14, align 8
  %15 = load ptr, ptr %bw, align 8
  %incdec.ptr5 = getelementptr inbounds i64, ptr %15, i32 1
  store ptr %incdec.ptr5, ptr %bw, align 8
  %16 = load i64, ptr %15, align 8
  %17 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i64, ptr %17, i32 1
  store ptr %incdec.ptr6, ptr %cp.addr, align 8
  store i64 %16, ptr %17, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, ptr %_x, align 8
  %sub = sub i64 %18, 2
  store i64 %sub, ptr %_x, align 8
  br label %for.cond, !llvm.loop !43

for.end:                                          ; preds = %for.cond
  %19 = load i64, ptr %_x, align 8
  %tobool = icmp ne i64 %19, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %20 = load ptr, ptr %BWmap, align 8
  %21 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr7, ptr %pp.addr, align 8
  %22 = load i8, ptr %21, align 1
  %idxprom8 = zext i8 %22 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %20, i64 %idxprom8
  %23 = load ptr, ptr %arrayidx9, align 8
  store ptr %23, ptr %bw, align 8
  %24 = load ptr, ptr %bw, align 8
  %incdec.ptr10 = getelementptr inbounds i64, ptr %24, i32 1
  store ptr %incdec.ptr10, ptr %bw, align 8
  %25 = load i64, ptr %24, align 8
  %26 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i64, ptr %26, i32 1
  store ptr %incdec.ptr11, ptr %cp.addr, align 8
  store i64 %25, ptr %26, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %27 = load i64, ptr %toskew.addr, align 8
  %28 = load ptr, ptr %cp.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %28, i64 %27
  store ptr %add.ptr, ptr %cp.addr, align 8
  %29 = load i64, ptr %fromskew.addr, align 8
  %30 = load ptr, ptr %pp.addr, align 8
  %add.ptr12 = getelementptr inbounds i8, ptr %30, i64 %29
  store ptr %add.ptr12, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !44

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @put2bitbwtile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
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
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %BWmap1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 16
  %1 = load ptr, ptr %BWmap1, align 8
  store ptr %1, ptr %BWmap, align 8
  %2 = load i64, ptr %x.addr, align 8
  %3 = load i64, ptr %y.addr, align 8
  %4 = load i64, ptr %fromskew.addr, align 8
  %div = sdiv i64 %4, 4
  store i64 %div, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load i64, ptr %h.addr, align 8
  %dec = add i64 %5, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp = icmp ugt i64 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i64, ptr %w.addr, align 8
  store i64 %6, ptr %_x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %7 = load i64, ptr %_x, align 8
  %cmp2 = icmp uge i64 %7, 4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %BWmap, align 8
  %9 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %pp.addr, align 8
  %10 = load i8, ptr %9, align 1
  %idxprom = zext i8 %10 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %11 = load ptr, ptr %arrayidx, align 8
  store ptr %11, ptr %bw, align 8
  %12 = load ptr, ptr %bw, align 8
  %incdec.ptr3 = getelementptr inbounds i64, ptr %12, i32 1
  store ptr %incdec.ptr3, ptr %bw, align 8
  %13 = load i64, ptr %12, align 8
  %14 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i64, ptr %14, i32 1
  store ptr %incdec.ptr4, ptr %cp.addr, align 8
  store i64 %13, ptr %14, align 8
  %15 = load ptr, ptr %bw, align 8
  %incdec.ptr5 = getelementptr inbounds i64, ptr %15, i32 1
  store ptr %incdec.ptr5, ptr %bw, align 8
  %16 = load i64, ptr %15, align 8
  %17 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i64, ptr %17, i32 1
  store ptr %incdec.ptr6, ptr %cp.addr, align 8
  store i64 %16, ptr %17, align 8
  %18 = load ptr, ptr %bw, align 8
  %incdec.ptr7 = getelementptr inbounds i64, ptr %18, i32 1
  store ptr %incdec.ptr7, ptr %bw, align 8
  %19 = load i64, ptr %18, align 8
  %20 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i64, ptr %20, i32 1
  store ptr %incdec.ptr8, ptr %cp.addr, align 8
  store i64 %19, ptr %20, align 8
  %21 = load ptr, ptr %bw, align 8
  %incdec.ptr9 = getelementptr inbounds i64, ptr %21, i32 1
  store ptr %incdec.ptr9, ptr %bw, align 8
  %22 = load i64, ptr %21, align 8
  %23 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i64, ptr %23, i32 1
  store ptr %incdec.ptr10, ptr %cp.addr, align 8
  store i64 %22, ptr %23, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i64, ptr %_x, align 8
  %sub = sub i64 %24, 4
  store i64 %sub, ptr %_x, align 8
  br label %for.cond, !llvm.loop !45

for.end:                                          ; preds = %for.cond
  %25 = load i64, ptr %_x, align 8
  %cmp11 = icmp ugt i64 %25, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %26 = load ptr, ptr %BWmap, align 8
  %27 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr12, ptr %pp.addr, align 8
  %28 = load i8, ptr %27, align 1
  %idxprom13 = zext i8 %28 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %26, i64 %idxprom13
  %29 = load ptr, ptr %arrayidx14, align 8
  store ptr %29, ptr %bw, align 8
  %30 = load i64, ptr %_x, align 8
  switch i64 %30, label %sw.epilog [
    i64 3, label %sw.bb
    i64 2, label %sw.bb17
    i64 1, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.then
  %31 = load ptr, ptr %bw, align 8
  %incdec.ptr15 = getelementptr inbounds i64, ptr %31, i32 1
  store ptr %incdec.ptr15, ptr %bw, align 8
  %32 = load i64, ptr %31, align 8
  %33 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i64, ptr %33, i32 1
  store ptr %incdec.ptr16, ptr %cp.addr, align 8
  store i64 %32, ptr %33, align 8
  br label %sw.bb17

sw.bb17:                                          ; preds = %if.then, %sw.bb
  %34 = load ptr, ptr %bw, align 8
  %incdec.ptr18 = getelementptr inbounds i64, ptr %34, i32 1
  store ptr %incdec.ptr18, ptr %bw, align 8
  %35 = load i64, ptr %34, align 8
  %36 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr19 = getelementptr inbounds i64, ptr %36, i32 1
  store ptr %incdec.ptr19, ptr %cp.addr, align 8
  store i64 %35, ptr %36, align 8
  br label %sw.bb20

sw.bb20:                                          ; preds = %if.then, %sw.bb17
  %37 = load ptr, ptr %bw, align 8
  %incdec.ptr21 = getelementptr inbounds i64, ptr %37, i32 1
  store ptr %incdec.ptr21, ptr %bw, align 8
  %38 = load i64, ptr %37, align 8
  %39 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i64, ptr %39, i32 1
  store ptr %incdec.ptr22, ptr %cp.addr, align 8
  store i64 %38, ptr %39, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %if.then
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %for.end
  %40 = load i64, ptr %toskew.addr, align 8
  %41 = load ptr, ptr %cp.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %41, i64 %40
  store ptr %add.ptr, ptr %cp.addr, align 8
  %42 = load i64, ptr %fromskew.addr, align 8
  %43 = load ptr, ptr %pp.addr, align 8
  %add.ptr23 = getelementptr inbounds i8, ptr %43, i64 %42
  store ptr %add.ptr23, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !46

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @put1bitbwtile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
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
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %BWmap1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 16
  %1 = load ptr, ptr %BWmap1, align 8
  store ptr %1, ptr %BWmap, align 8
  %2 = load i64, ptr %x.addr, align 8
  %3 = load i64, ptr %y.addr, align 8
  %4 = load i64, ptr %fromskew.addr, align 8
  %div = sdiv i64 %4, 8
  store i64 %div, ptr %fromskew.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load i64, ptr %h.addr, align 8
  %dec = add i64 %5, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp = icmp ugt i64 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i64, ptr %w.addr, align 8
  store i64 %6, ptr %_x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %7 = load i64, ptr %_x, align 8
  %cmp2 = icmp uge i64 %7, 8
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %BWmap, align 8
  %9 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %pp.addr, align 8
  %10 = load i8, ptr %9, align 1
  %idxprom = zext i8 %10 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %11 = load ptr, ptr %arrayidx, align 8
  store ptr %11, ptr %bw, align 8
  %12 = load ptr, ptr %bw, align 8
  %incdec.ptr3 = getelementptr inbounds i64, ptr %12, i32 1
  store ptr %incdec.ptr3, ptr %bw, align 8
  %13 = load i64, ptr %12, align 8
  %14 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i64, ptr %14, i32 1
  store ptr %incdec.ptr4, ptr %cp.addr, align 8
  store i64 %13, ptr %14, align 8
  %15 = load ptr, ptr %bw, align 8
  %incdec.ptr5 = getelementptr inbounds i64, ptr %15, i32 1
  store ptr %incdec.ptr5, ptr %bw, align 8
  %16 = load i64, ptr %15, align 8
  %17 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i64, ptr %17, i32 1
  store ptr %incdec.ptr6, ptr %cp.addr, align 8
  store i64 %16, ptr %17, align 8
  %18 = load ptr, ptr %bw, align 8
  %incdec.ptr7 = getelementptr inbounds i64, ptr %18, i32 1
  store ptr %incdec.ptr7, ptr %bw, align 8
  %19 = load i64, ptr %18, align 8
  %20 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i64, ptr %20, i32 1
  store ptr %incdec.ptr8, ptr %cp.addr, align 8
  store i64 %19, ptr %20, align 8
  %21 = load ptr, ptr %bw, align 8
  %incdec.ptr9 = getelementptr inbounds i64, ptr %21, i32 1
  store ptr %incdec.ptr9, ptr %bw, align 8
  %22 = load i64, ptr %21, align 8
  %23 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i64, ptr %23, i32 1
  store ptr %incdec.ptr10, ptr %cp.addr, align 8
  store i64 %22, ptr %23, align 8
  %24 = load ptr, ptr %bw, align 8
  %incdec.ptr11 = getelementptr inbounds i64, ptr %24, i32 1
  store ptr %incdec.ptr11, ptr %bw, align 8
  %25 = load i64, ptr %24, align 8
  %26 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i64, ptr %26, i32 1
  store ptr %incdec.ptr12, ptr %cp.addr, align 8
  store i64 %25, ptr %26, align 8
  %27 = load ptr, ptr %bw, align 8
  %incdec.ptr13 = getelementptr inbounds i64, ptr %27, i32 1
  store ptr %incdec.ptr13, ptr %bw, align 8
  %28 = load i64, ptr %27, align 8
  %29 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i64, ptr %29, i32 1
  store ptr %incdec.ptr14, ptr %cp.addr, align 8
  store i64 %28, ptr %29, align 8
  %30 = load ptr, ptr %bw, align 8
  %incdec.ptr15 = getelementptr inbounds i64, ptr %30, i32 1
  store ptr %incdec.ptr15, ptr %bw, align 8
  %31 = load i64, ptr %30, align 8
  %32 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i64, ptr %32, i32 1
  store ptr %incdec.ptr16, ptr %cp.addr, align 8
  store i64 %31, ptr %32, align 8
  %33 = load ptr, ptr %bw, align 8
  %incdec.ptr17 = getelementptr inbounds i64, ptr %33, i32 1
  store ptr %incdec.ptr17, ptr %bw, align 8
  %34 = load i64, ptr %33, align 8
  %35 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr18 = getelementptr inbounds i64, ptr %35, i32 1
  store ptr %incdec.ptr18, ptr %cp.addr, align 8
  store i64 %34, ptr %35, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i64, ptr %_x, align 8
  %sub = sub i64 %36, 8
  store i64 %sub, ptr %_x, align 8
  br label %for.cond, !llvm.loop !47

for.end:                                          ; preds = %for.cond
  %37 = load i64, ptr %_x, align 8
  %cmp19 = icmp ugt i64 %37, 0
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %38 = load ptr, ptr %BWmap, align 8
  %39 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %39, i32 1
  store ptr %incdec.ptr20, ptr %pp.addr, align 8
  %40 = load i8, ptr %39, align 1
  %idxprom21 = zext i8 %40 to i64
  %arrayidx22 = getelementptr inbounds ptr, ptr %38, i64 %idxprom21
  %41 = load ptr, ptr %arrayidx22, align 8
  store ptr %41, ptr %bw, align 8
  %42 = load i64, ptr %_x, align 8
  switch i64 %42, label %sw.epilog [
    i64 7, label %sw.bb
    i64 6, label %sw.bb25
    i64 5, label %sw.bb28
    i64 4, label %sw.bb31
    i64 3, label %sw.bb34
    i64 2, label %sw.bb37
    i64 1, label %sw.bb40
  ]

sw.bb:                                            ; preds = %if.then
  %43 = load ptr, ptr %bw, align 8
  %incdec.ptr23 = getelementptr inbounds i64, ptr %43, i32 1
  store ptr %incdec.ptr23, ptr %bw, align 8
  %44 = load i64, ptr %43, align 8
  %45 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr24 = getelementptr inbounds i64, ptr %45, i32 1
  store ptr %incdec.ptr24, ptr %cp.addr, align 8
  store i64 %44, ptr %45, align 8
  br label %sw.bb25

sw.bb25:                                          ; preds = %if.then, %sw.bb
  %46 = load ptr, ptr %bw, align 8
  %incdec.ptr26 = getelementptr inbounds i64, ptr %46, i32 1
  store ptr %incdec.ptr26, ptr %bw, align 8
  %47 = load i64, ptr %46, align 8
  %48 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr27 = getelementptr inbounds i64, ptr %48, i32 1
  store ptr %incdec.ptr27, ptr %cp.addr, align 8
  store i64 %47, ptr %48, align 8
  br label %sw.bb28

sw.bb28:                                          ; preds = %if.then, %sw.bb25
  %49 = load ptr, ptr %bw, align 8
  %incdec.ptr29 = getelementptr inbounds i64, ptr %49, i32 1
  store ptr %incdec.ptr29, ptr %bw, align 8
  %50 = load i64, ptr %49, align 8
  %51 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i64, ptr %51, i32 1
  store ptr %incdec.ptr30, ptr %cp.addr, align 8
  store i64 %50, ptr %51, align 8
  br label %sw.bb31

sw.bb31:                                          ; preds = %if.then, %sw.bb28
  %52 = load ptr, ptr %bw, align 8
  %incdec.ptr32 = getelementptr inbounds i64, ptr %52, i32 1
  store ptr %incdec.ptr32, ptr %bw, align 8
  %53 = load i64, ptr %52, align 8
  %54 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr33 = getelementptr inbounds i64, ptr %54, i32 1
  store ptr %incdec.ptr33, ptr %cp.addr, align 8
  store i64 %53, ptr %54, align 8
  br label %sw.bb34

sw.bb34:                                          ; preds = %if.then, %sw.bb31
  %55 = load ptr, ptr %bw, align 8
  %incdec.ptr35 = getelementptr inbounds i64, ptr %55, i32 1
  store ptr %incdec.ptr35, ptr %bw, align 8
  %56 = load i64, ptr %55, align 8
  %57 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr36 = getelementptr inbounds i64, ptr %57, i32 1
  store ptr %incdec.ptr36, ptr %cp.addr, align 8
  store i64 %56, ptr %57, align 8
  br label %sw.bb37

sw.bb37:                                          ; preds = %if.then, %sw.bb34
  %58 = load ptr, ptr %bw, align 8
  %incdec.ptr38 = getelementptr inbounds i64, ptr %58, i32 1
  store ptr %incdec.ptr38, ptr %bw, align 8
  %59 = load i64, ptr %58, align 8
  %60 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr39 = getelementptr inbounds i64, ptr %60, i32 1
  store ptr %incdec.ptr39, ptr %cp.addr, align 8
  store i64 %59, ptr %60, align 8
  br label %sw.bb40

sw.bb40:                                          ; preds = %if.then, %sw.bb37
  %61 = load ptr, ptr %bw, align 8
  %incdec.ptr41 = getelementptr inbounds i64, ptr %61, i32 1
  store ptr %incdec.ptr41, ptr %bw, align 8
  %62 = load i64, ptr %61, align 8
  %63 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr42 = getelementptr inbounds i64, ptr %63, i32 1
  store ptr %incdec.ptr42, ptr %cp.addr, align 8
  store i64 %62, ptr %63, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb40, %if.then
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %for.end
  %64 = load i64, ptr %toskew.addr, align 8
  %65 = load ptr, ptr %cp.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %65, i64 %64
  store ptr %add.ptr, ptr %cp.addr, align 8
  %66 = load i64, ptr %fromskew.addr, align 8
  %67 = load ptr, ptr %pp.addr, align 8
  %add.ptr43 = getelementptr inbounds i8, ptr %67, i64 %66
  store ptr %add.ptr43, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !48

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @initYCbCrConversion(ptr noundef %img) #0 {
entry:
  %retval = alloca ptr, align 8
  %img.addr = alloca ptr, align 8
  %hs = alloca i16, align 2
  %vs = alloca i16, align 2
  %coeffs = alloca ptr, align 8
  store ptr %img, ptr %img.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %ycbcr = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 18
  %1 = load ptr, ptr %ycbcr, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call ptr @_TIFFmalloc(i64 noundef 7224)
  %2 = load ptr, ptr %img.addr, align 8
  %ycbcr1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i32 0, i32 18
  store ptr %call, ptr %ycbcr1, align 8
  %3 = load ptr, ptr %img.addr, align 8
  %ycbcr2 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %3, i32 0, i32 18
  %4 = load ptr, ptr %ycbcr2, align 8
  %cmp3 = icmp eq ptr %4, null
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %5 = load ptr, ptr %img.addr, align 8
  %tif = getelementptr inbounds %struct._TIFFRGBAImage, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %tif, align 8
  %call5 = call ptr @TIFFFileName(ptr noundef %6)
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call5, ptr noundef @.str.32)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %img.addr, align 8
  %ycbcr6 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %7, i32 0, i32 18
  %8 = load ptr, ptr %ycbcr6, align 8
  %9 = load ptr, ptr %img.addr, align 8
  %tif7 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %tif7, align 8
  call void @TIFFYCbCrToRGBInit(ptr noundef %8, ptr noundef %10)
  br label %if.end18

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %img.addr, align 8
  %tif8 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %tif8, align 8
  %call9 = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %12, i64 noundef 529, ptr noundef %coeffs)
  %13 = load ptr, ptr %coeffs, align 8
  %14 = load ptr, ptr %img.addr, align 8
  %ycbcr10 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %14, i32 0, i32 18
  %15 = load ptr, ptr %ycbcr10, align 8
  %coeffs11 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %15, i32 0, i32 5
  %arraydecay = getelementptr inbounds [3 x float], ptr %coeffs11, i64 0, i64 0
  %call12 = call i32 @_TIFFmemcmp(ptr noundef %13, ptr noundef %arraydecay, i64 noundef 12)
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.else
  %16 = load ptr, ptr %img.addr, align 8
  %ycbcr15 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %16, i32 0, i32 18
  %17 = load ptr, ptr %ycbcr15, align 8
  %18 = load ptr, ptr %img.addr, align 8
  %tif16 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %tif16, align 8
  call void @TIFFYCbCrToRGBInit(ptr noundef %17, ptr noundef %19)
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end
  %20 = load ptr, ptr %img.addr, align 8
  %tif19 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %tif19, align 8
  %call20 = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %21, i64 noundef 530, ptr noundef %hs, ptr noundef %vs)
  %22 = load i16, ptr %hs, align 2
  %conv = zext i16 %22 to i32
  %shl = shl i32 %conv, 4
  %23 = load i16, ptr %vs, align 2
  %conv21 = zext i16 %23 to i32
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
  %24 = load ptr, ptr %retval, align 8
  ret ptr %24
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @setupMap(ptr noundef %img) #0 {
entry:
  %retval = alloca i32, align 4
  %img.addr = alloca ptr, align 8
  %x = alloca i64, align 8
  %range = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %bitspersample = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 6
  %1 = load i16, ptr %bitspersample, align 8
  %conv = zext i16 %1 to i32
  %sh_prom = zext i32 %conv to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub nsw i64 %shl, 1
  store i64 %sub, ptr %range, align 8
  %2 = load i64, ptr %range, align 8
  %add = add nsw i64 %2, 1
  %mul = mul i64 %add, 1
  %call = call ptr @_TIFFmalloc(i64 noundef %mul)
  %3 = load ptr, ptr %img.addr, align 8
  %Map = getelementptr inbounds %struct._TIFFRGBAImage, ptr %3, i32 0, i32 15
  store ptr %call, ptr %Map, align 8
  %4 = load ptr, ptr %img.addr, align 8
  %Map1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %4, i32 0, i32 15
  %5 = load ptr, ptr %Map1, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %img.addr, align 8
  %tif = getelementptr inbounds %struct._TIFFRGBAImage, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %tif, align 8
  %call3 = call ptr @TIFFFileName(ptr noundef %7)
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call3, ptr noundef @.str.29)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %img.addr, align 8
  %photometric = getelementptr inbounds %struct._TIFFRGBAImage, ptr %8, i32 0, i32 9
  %9 = load i16, ptr %photometric, align 2
  %conv4 = zext i16 %9 to i32
  %cmp5 = icmp eq i32 %conv4, 0
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  store i64 0, ptr %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then7
  %10 = load i64, ptr %x, align 8
  %11 = load i64, ptr %range, align 8
  %cmp8 = icmp sle i64 %10, %11
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64, ptr %range, align 8
  %13 = load i64, ptr %x, align 8
  %sub10 = sub nsw i64 %12, %13
  %mul11 = mul nsw i64 %sub10, 255
  %14 = load i64, ptr %range, align 8
  %div = sdiv i64 %mul11, %14
  %conv12 = trunc i64 %div to i8
  %15 = load ptr, ptr %img.addr, align 8
  %Map13 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %15, i32 0, i32 15
  %16 = load ptr, ptr %Map13, align 8
  %17 = load i64, ptr %x, align 8
  %arrayidx = getelementptr inbounds i8, ptr %16, i64 %17
  store i8 %conv12, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, ptr %x, align 8
  %inc = add nsw i64 %18, 1
  store i64 %inc, ptr %x, align 8
  br label %for.cond, !llvm.loop !49

for.end:                                          ; preds = %for.cond
  br label %if.end26

if.else:                                          ; preds = %if.end
  store i64 0, ptr %x, align 8
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc23, %if.else
  %19 = load i64, ptr %x, align 8
  %20 = load i64, ptr %range, align 8
  %cmp15 = icmp sle i64 %19, %20
  br i1 %cmp15, label %for.body17, label %for.end25

for.body17:                                       ; preds = %for.cond14
  %21 = load i64, ptr %x, align 8
  %mul18 = mul nsw i64 %21, 255
  %22 = load i64, ptr %range, align 8
  %div19 = sdiv i64 %mul18, %22
  %conv20 = trunc i64 %div19 to i8
  %23 = load ptr, ptr %img.addr, align 8
  %Map21 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %23, i32 0, i32 15
  %24 = load ptr, ptr %Map21, align 8
  %25 = load i64, ptr %x, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %24, i64 %25
  store i8 %conv20, ptr %arrayidx22, align 1
  br label %for.inc23

for.inc23:                                        ; preds = %for.body17
  %26 = load i64, ptr %x, align 8
  %inc24 = add nsw i64 %26, 1
  store i64 %inc24, ptr %x, align 8
  br label %for.cond14, !llvm.loop !50

for.end25:                                        ; preds = %for.cond14
  br label %if.end26

if.end26:                                         ; preds = %for.end25, %for.end
  %27 = load ptr, ptr %img.addr, align 8
  %bitspersample27 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %27, i32 0, i32 6
  %28 = load i16, ptr %bitspersample27, align 8
  %conv28 = zext i16 %28 to i32
  %cmp29 = icmp sle i32 %conv28, 8
  br i1 %cmp29, label %land.lhs.true, label %if.end45

land.lhs.true:                                    ; preds = %if.end26
  %29 = load ptr, ptr %img.addr, align 8
  %photometric31 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %29, i32 0, i32 9
  %30 = load i16, ptr %photometric31, align 2
  %conv32 = zext i16 %30 to i32
  %cmp33 = icmp eq i32 %conv32, 1
  br i1 %cmp33, label %if.then39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %31 = load ptr, ptr %img.addr, align 8
  %photometric35 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %31, i32 0, i32 9
  %32 = load i16, ptr %photometric35, align 2
  %conv36 = zext i16 %32 to i32
  %cmp37 = icmp eq i32 %conv36, 0
  br i1 %cmp37, label %if.then39, label %if.end45

if.then39:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %33 = load ptr, ptr %img.addr, align 8
  %call40 = call i32 @makebwmap(ptr noundef %33)
  %tobool = icmp ne i32 %call40, 0
  br i1 %tobool, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.then39
  store i32 0, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.then39
  %34 = load ptr, ptr %img.addr, align 8
  %Map43 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %34, i32 0, i32 15
  %35 = load ptr, ptr %Map43, align 8
  call void @_TIFFfree(ptr noundef %35)
  %36 = load ptr, ptr %img.addr, align 8
  %Map44 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %36, i32 0, i32 15
  store ptr null, ptr %Map44, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.end42, %lor.lhs.false, %if.end26
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end45, %if.then41, %if.then
  %37 = load i32, ptr %retval, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @checkcmap(ptr noundef %img) #0 {
entry:
  %retval = alloca i32, align 4
  %img.addr = alloca ptr, align 8
  %r = alloca ptr, align 8
  %g = alloca ptr, align 8
  %b = alloca ptr, align 8
  %n = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %redcmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 10
  %1 = load ptr, ptr %redcmap, align 8
  store ptr %1, ptr %r, align 8
  %2 = load ptr, ptr %img.addr, align 8
  %greencmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i32 0, i32 11
  %3 = load ptr, ptr %greencmap, align 8
  store ptr %3, ptr %g, align 8
  %4 = load ptr, ptr %img.addr, align 8
  %bluecmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %bluecmap, align 8
  store ptr %5, ptr %b, align 8
  %6 = load ptr, ptr %img.addr, align 8
  %bitspersample = getelementptr inbounds %struct._TIFFRGBAImage, ptr %6, i32 0, i32 6
  %7 = load i16, ptr %bitspersample, align 8
  %conv = zext i16 %7 to i32
  %sh_prom = zext i32 %conv to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, ptr %n, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %8 = load i64, ptr %n, align 8
  %dec = add nsw i64 %8, -1
  store i64 %dec, ptr %n, align 8
  %cmp = icmp sgt i64 %8, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %r, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %r, align 8
  %10 = load i16, ptr %9, align 2
  %conv2 = zext i16 %10 to i32
  %cmp3 = icmp sge i32 %conv2, 256
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %11 = load ptr, ptr %g, align 8
  %incdec.ptr5 = getelementptr inbounds i16, ptr %11, i32 1
  store ptr %incdec.ptr5, ptr %g, align 8
  %12 = load i16, ptr %11, align 2
  %conv6 = zext i16 %12 to i32
  %cmp7 = icmp sge i32 %conv6, 256
  br i1 %cmp7, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %13 = load ptr, ptr %b, align 8
  %incdec.ptr10 = getelementptr inbounds i16, ptr %13, i32 1
  store ptr %incdec.ptr10, ptr %b, align 8
  %14 = load i16, ptr %13, align 2
  %conv11 = zext i16 %14 to i32
  %cmp12 = icmp sge i32 %conv11, 256
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false9, %lor.lhs.false, %while.body
  store i32 16, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false9
  br label %while.cond, !llvm.loop !51

while.end:                                        ; preds = %while.cond
  store i32 8, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @cvtcmap(ptr noundef %img) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %r = alloca ptr, align 8
  %g = alloca ptr, align 8
  %b = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %redcmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 10
  %1 = load ptr, ptr %redcmap, align 8
  store ptr %1, ptr %r, align 8
  %2 = load ptr, ptr %img.addr, align 8
  %greencmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i32 0, i32 11
  %3 = load ptr, ptr %greencmap, align 8
  store ptr %3, ptr %g, align 8
  %4 = load ptr, ptr %img.addr, align 8
  %bluecmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %bluecmap, align 8
  store ptr %5, ptr %b, align 8
  %6 = load ptr, ptr %img.addr, align 8
  %bitspersample = getelementptr inbounds %struct._TIFFRGBAImage, ptr %6, i32 0, i32 6
  %7 = load i16, ptr %bitspersample, align 8
  %conv = zext i16 %7 to i32
  %sh_prom = zext i32 %conv to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub nsw i64 %shl, 1
  store i64 %sub, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i64, ptr %i, align 8
  %cmp = icmp sge i64 %8, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %r, align 8
  %10 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i16, ptr %9, i64 %10
  %11 = load i16, ptr %arrayidx, align 2
  %conv2 = zext i16 %11 to i32
  %shr = ashr i32 %conv2, 8
  %conv3 = trunc i32 %shr to i16
  %12 = load ptr, ptr %r, align 8
  %13 = load i64, ptr %i, align 8
  %arrayidx4 = getelementptr inbounds i16, ptr %12, i64 %13
  store i16 %conv3, ptr %arrayidx4, align 2
  %14 = load ptr, ptr %g, align 8
  %15 = load i64, ptr %i, align 8
  %arrayidx5 = getelementptr inbounds i16, ptr %14, i64 %15
  %16 = load i16, ptr %arrayidx5, align 2
  %conv6 = zext i16 %16 to i32
  %shr7 = ashr i32 %conv6, 8
  %conv8 = trunc i32 %shr7 to i16
  %17 = load ptr, ptr %g, align 8
  %18 = load i64, ptr %i, align 8
  %arrayidx9 = getelementptr inbounds i16, ptr %17, i64 %18
  store i16 %conv8, ptr %arrayidx9, align 2
  %19 = load ptr, ptr %b, align 8
  %20 = load i64, ptr %i, align 8
  %arrayidx10 = getelementptr inbounds i16, ptr %19, i64 %20
  %21 = load i16, ptr %arrayidx10, align 2
  %conv11 = zext i16 %21 to i32
  %shr12 = ashr i32 %conv11, 8
  %conv13 = trunc i32 %shr12 to i16
  %22 = load ptr, ptr %b, align 8
  %23 = load i64, ptr %i, align 8
  %arrayidx14 = getelementptr inbounds i16, ptr %22, i64 %23
  store i16 %conv13, ptr %arrayidx14, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i64, ptr %i, align 8
  %dec = add nsw i64 %24, -1
  store i64 %dec, ptr %i, align 8
  br label %for.cond, !llvm.loop !52

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @makecmap(ptr noundef %img) #0 {
entry:
  %retval = alloca i32, align 4
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
  %0 = load ptr, ptr %img.addr, align 8
  %bitspersample1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 6
  %1 = load i16, ptr %bitspersample1, align 8
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %bitspersample, align 4
  %2 = load i32, ptr %bitspersample, align 4
  %div = sdiv i32 8, %2
  store i32 %div, ptr %nsamples, align 4
  %3 = load ptr, ptr %img.addr, align 8
  %redcmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %3, i32 0, i32 10
  %4 = load ptr, ptr %redcmap, align 8
  store ptr %4, ptr %r, align 8
  %5 = load ptr, ptr %img.addr, align 8
  %greencmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %5, i32 0, i32 11
  %6 = load ptr, ptr %greencmap, align 8
  store ptr %6, ptr %g, align 8
  %7 = load ptr, ptr %img.addr, align 8
  %bluecmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %7, i32 0, i32 12
  %8 = load ptr, ptr %bluecmap, align 8
  store ptr %8, ptr %b, align 8
  %9 = load i32, ptr %nsamples, align 4
  %mul = mul nsw i32 256, %9
  %conv2 = sext i32 %mul to i64
  %mul3 = mul i64 %conv2, 8
  %add = add i64 2048, %mul3
  %call = call ptr @_TIFFmalloc(i64 noundef %add)
  %10 = load ptr, ptr %img.addr, align 8
  %PALmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %10, i32 0, i32 17
  store ptr %call, ptr %PALmap, align 8
  %11 = load ptr, ptr %img.addr, align 8
  %PALmap4 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %11, i32 0, i32 17
  %12 = load ptr, ptr %PALmap4, align 8
  %cmp = icmp eq ptr %12, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load ptr, ptr %img.addr, align 8
  %tif = getelementptr inbounds %struct._TIFFRGBAImage, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %tif, align 8
  %call6 = call ptr @TIFFFileName(ptr noundef %14)
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call6, ptr noundef @.str.31)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %15 = load ptr, ptr %img.addr, align 8
  %PALmap7 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %15, i32 0, i32 17
  %16 = load ptr, ptr %PALmap7, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %16, i64 256
  store ptr %add.ptr, ptr %p, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i32, ptr %i, align 4
  %cmp8 = icmp slt i32 %17, 256
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %p, align 8
  %19 = load ptr, ptr %img.addr, align 8
  %PALmap10 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %19, i32 0, i32 17
  %20 = load ptr, ptr %PALmap10, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %20, i64 %idxprom
  store ptr %18, ptr %arrayidx, align 8
  %22 = load i32, ptr %bitspersample, align 4
  switch i32 %22, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb196
    i32 4, label %sw.bb291
    i32 8, label %sw.bb338
  ]

sw.bb:                                            ; preds = %for.body
  %23 = load i32, ptr %i, align 4
  %shr = ashr i32 %23, 7
  %conv11 = trunc i32 %shr to i8
  store i8 %conv11, ptr %c, align 1
  %24 = load ptr, ptr %r, align 8
  %25 = load i8, ptr %c, align 1
  %idxprom12 = zext i8 %25 to i64
  %arrayidx13 = getelementptr inbounds i16, ptr %24, i64 %idxprom12
  %26 = load i16, ptr %arrayidx13, align 2
  %conv14 = zext i16 %26 to i32
  %and = and i32 %conv14, 255
  %conv15 = sext i32 %and to i64
  %27 = load ptr, ptr %g, align 8
  %28 = load i8, ptr %c, align 1
  %idxprom16 = zext i8 %28 to i64
  %arrayidx17 = getelementptr inbounds i16, ptr %27, i64 %idxprom16
  %29 = load i16, ptr %arrayidx17, align 2
  %conv18 = zext i16 %29 to i32
  %and19 = and i32 %conv18, 255
  %conv20 = sext i32 %and19 to i64
  %shl = shl i64 %conv20, 8
  %or = or i64 %conv15, %shl
  %30 = load ptr, ptr %b, align 8
  %31 = load i8, ptr %c, align 1
  %idxprom21 = zext i8 %31 to i64
  %arrayidx22 = getelementptr inbounds i16, ptr %30, i64 %idxprom21
  %32 = load i16, ptr %arrayidx22, align 2
  %conv23 = zext i16 %32 to i32
  %and24 = and i32 %conv23, 255
  %conv25 = sext i32 %and24 to i64
  %shl26 = shl i64 %conv25, 16
  %or27 = or i64 %or, %shl26
  %or28 = or i64 %or27, 4278190080
  %33 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %33, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  store i64 %or28, ptr %33, align 8
  %34 = load i32, ptr %i, align 4
  %shr29 = ashr i32 %34, 6
  %and30 = and i32 %shr29, 1
  %conv31 = trunc i32 %and30 to i8
  store i8 %conv31, ptr %c, align 1
  %35 = load ptr, ptr %r, align 8
  %36 = load i8, ptr %c, align 1
  %idxprom32 = zext i8 %36 to i64
  %arrayidx33 = getelementptr inbounds i16, ptr %35, i64 %idxprom32
  %37 = load i16, ptr %arrayidx33, align 2
  %conv34 = zext i16 %37 to i32
  %and35 = and i32 %conv34, 255
  %conv36 = sext i32 %and35 to i64
  %38 = load ptr, ptr %g, align 8
  %39 = load i8, ptr %c, align 1
  %idxprom37 = zext i8 %39 to i64
  %arrayidx38 = getelementptr inbounds i16, ptr %38, i64 %idxprom37
  %40 = load i16, ptr %arrayidx38, align 2
  %conv39 = zext i16 %40 to i32
  %and40 = and i32 %conv39, 255
  %conv41 = sext i32 %and40 to i64
  %shl42 = shl i64 %conv41, 8
  %or43 = or i64 %conv36, %shl42
  %41 = load ptr, ptr %b, align 8
  %42 = load i8, ptr %c, align 1
  %idxprom44 = zext i8 %42 to i64
  %arrayidx45 = getelementptr inbounds i16, ptr %41, i64 %idxprom44
  %43 = load i16, ptr %arrayidx45, align 2
  %conv46 = zext i16 %43 to i32
  %and47 = and i32 %conv46, 255
  %conv48 = sext i32 %and47 to i64
  %shl49 = shl i64 %conv48, 16
  %or50 = or i64 %or43, %shl49
  %or51 = or i64 %or50, 4278190080
  %44 = load ptr, ptr %p, align 8
  %incdec.ptr52 = getelementptr inbounds i64, ptr %44, i32 1
  store ptr %incdec.ptr52, ptr %p, align 8
  store i64 %or51, ptr %44, align 8
  %45 = load i32, ptr %i, align 4
  %shr53 = ashr i32 %45, 5
  %and54 = and i32 %shr53, 1
  %conv55 = trunc i32 %and54 to i8
  store i8 %conv55, ptr %c, align 1
  %46 = load ptr, ptr %r, align 8
  %47 = load i8, ptr %c, align 1
  %idxprom56 = zext i8 %47 to i64
  %arrayidx57 = getelementptr inbounds i16, ptr %46, i64 %idxprom56
  %48 = load i16, ptr %arrayidx57, align 2
  %conv58 = zext i16 %48 to i32
  %and59 = and i32 %conv58, 255
  %conv60 = sext i32 %and59 to i64
  %49 = load ptr, ptr %g, align 8
  %50 = load i8, ptr %c, align 1
  %idxprom61 = zext i8 %50 to i64
  %arrayidx62 = getelementptr inbounds i16, ptr %49, i64 %idxprom61
  %51 = load i16, ptr %arrayidx62, align 2
  %conv63 = zext i16 %51 to i32
  %and64 = and i32 %conv63, 255
  %conv65 = sext i32 %and64 to i64
  %shl66 = shl i64 %conv65, 8
  %or67 = or i64 %conv60, %shl66
  %52 = load ptr, ptr %b, align 8
  %53 = load i8, ptr %c, align 1
  %idxprom68 = zext i8 %53 to i64
  %arrayidx69 = getelementptr inbounds i16, ptr %52, i64 %idxprom68
  %54 = load i16, ptr %arrayidx69, align 2
  %conv70 = zext i16 %54 to i32
  %and71 = and i32 %conv70, 255
  %conv72 = sext i32 %and71 to i64
  %shl73 = shl i64 %conv72, 16
  %or74 = or i64 %or67, %shl73
  %or75 = or i64 %or74, 4278190080
  %55 = load ptr, ptr %p, align 8
  %incdec.ptr76 = getelementptr inbounds i64, ptr %55, i32 1
  store ptr %incdec.ptr76, ptr %p, align 8
  store i64 %or75, ptr %55, align 8
  %56 = load i32, ptr %i, align 4
  %shr77 = ashr i32 %56, 4
  %and78 = and i32 %shr77, 1
  %conv79 = trunc i32 %and78 to i8
  store i8 %conv79, ptr %c, align 1
  %57 = load ptr, ptr %r, align 8
  %58 = load i8, ptr %c, align 1
  %idxprom80 = zext i8 %58 to i64
  %arrayidx81 = getelementptr inbounds i16, ptr %57, i64 %idxprom80
  %59 = load i16, ptr %arrayidx81, align 2
  %conv82 = zext i16 %59 to i32
  %and83 = and i32 %conv82, 255
  %conv84 = sext i32 %and83 to i64
  %60 = load ptr, ptr %g, align 8
  %61 = load i8, ptr %c, align 1
  %idxprom85 = zext i8 %61 to i64
  %arrayidx86 = getelementptr inbounds i16, ptr %60, i64 %idxprom85
  %62 = load i16, ptr %arrayidx86, align 2
  %conv87 = zext i16 %62 to i32
  %and88 = and i32 %conv87, 255
  %conv89 = sext i32 %and88 to i64
  %shl90 = shl i64 %conv89, 8
  %or91 = or i64 %conv84, %shl90
  %63 = load ptr, ptr %b, align 8
  %64 = load i8, ptr %c, align 1
  %idxprom92 = zext i8 %64 to i64
  %arrayidx93 = getelementptr inbounds i16, ptr %63, i64 %idxprom92
  %65 = load i16, ptr %arrayidx93, align 2
  %conv94 = zext i16 %65 to i32
  %and95 = and i32 %conv94, 255
  %conv96 = sext i32 %and95 to i64
  %shl97 = shl i64 %conv96, 16
  %or98 = or i64 %or91, %shl97
  %or99 = or i64 %or98, 4278190080
  %66 = load ptr, ptr %p, align 8
  %incdec.ptr100 = getelementptr inbounds i64, ptr %66, i32 1
  store ptr %incdec.ptr100, ptr %p, align 8
  store i64 %or99, ptr %66, align 8
  %67 = load i32, ptr %i, align 4
  %shr101 = ashr i32 %67, 3
  %and102 = and i32 %shr101, 1
  %conv103 = trunc i32 %and102 to i8
  store i8 %conv103, ptr %c, align 1
  %68 = load ptr, ptr %r, align 8
  %69 = load i8, ptr %c, align 1
  %idxprom104 = zext i8 %69 to i64
  %arrayidx105 = getelementptr inbounds i16, ptr %68, i64 %idxprom104
  %70 = load i16, ptr %arrayidx105, align 2
  %conv106 = zext i16 %70 to i32
  %and107 = and i32 %conv106, 255
  %conv108 = sext i32 %and107 to i64
  %71 = load ptr, ptr %g, align 8
  %72 = load i8, ptr %c, align 1
  %idxprom109 = zext i8 %72 to i64
  %arrayidx110 = getelementptr inbounds i16, ptr %71, i64 %idxprom109
  %73 = load i16, ptr %arrayidx110, align 2
  %conv111 = zext i16 %73 to i32
  %and112 = and i32 %conv111, 255
  %conv113 = sext i32 %and112 to i64
  %shl114 = shl i64 %conv113, 8
  %or115 = or i64 %conv108, %shl114
  %74 = load ptr, ptr %b, align 8
  %75 = load i8, ptr %c, align 1
  %idxprom116 = zext i8 %75 to i64
  %arrayidx117 = getelementptr inbounds i16, ptr %74, i64 %idxprom116
  %76 = load i16, ptr %arrayidx117, align 2
  %conv118 = zext i16 %76 to i32
  %and119 = and i32 %conv118, 255
  %conv120 = sext i32 %and119 to i64
  %shl121 = shl i64 %conv120, 16
  %or122 = or i64 %or115, %shl121
  %or123 = or i64 %or122, 4278190080
  %77 = load ptr, ptr %p, align 8
  %incdec.ptr124 = getelementptr inbounds i64, ptr %77, i32 1
  store ptr %incdec.ptr124, ptr %p, align 8
  store i64 %or123, ptr %77, align 8
  %78 = load i32, ptr %i, align 4
  %shr125 = ashr i32 %78, 2
  %and126 = and i32 %shr125, 1
  %conv127 = trunc i32 %and126 to i8
  store i8 %conv127, ptr %c, align 1
  %79 = load ptr, ptr %r, align 8
  %80 = load i8, ptr %c, align 1
  %idxprom128 = zext i8 %80 to i64
  %arrayidx129 = getelementptr inbounds i16, ptr %79, i64 %idxprom128
  %81 = load i16, ptr %arrayidx129, align 2
  %conv130 = zext i16 %81 to i32
  %and131 = and i32 %conv130, 255
  %conv132 = sext i32 %and131 to i64
  %82 = load ptr, ptr %g, align 8
  %83 = load i8, ptr %c, align 1
  %idxprom133 = zext i8 %83 to i64
  %arrayidx134 = getelementptr inbounds i16, ptr %82, i64 %idxprom133
  %84 = load i16, ptr %arrayidx134, align 2
  %conv135 = zext i16 %84 to i32
  %and136 = and i32 %conv135, 255
  %conv137 = sext i32 %and136 to i64
  %shl138 = shl i64 %conv137, 8
  %or139 = or i64 %conv132, %shl138
  %85 = load ptr, ptr %b, align 8
  %86 = load i8, ptr %c, align 1
  %idxprom140 = zext i8 %86 to i64
  %arrayidx141 = getelementptr inbounds i16, ptr %85, i64 %idxprom140
  %87 = load i16, ptr %arrayidx141, align 2
  %conv142 = zext i16 %87 to i32
  %and143 = and i32 %conv142, 255
  %conv144 = sext i32 %and143 to i64
  %shl145 = shl i64 %conv144, 16
  %or146 = or i64 %or139, %shl145
  %or147 = or i64 %or146, 4278190080
  %88 = load ptr, ptr %p, align 8
  %incdec.ptr148 = getelementptr inbounds i64, ptr %88, i32 1
  store ptr %incdec.ptr148, ptr %p, align 8
  store i64 %or147, ptr %88, align 8
  %89 = load i32, ptr %i, align 4
  %shr149 = ashr i32 %89, 1
  %and150 = and i32 %shr149, 1
  %conv151 = trunc i32 %and150 to i8
  store i8 %conv151, ptr %c, align 1
  %90 = load ptr, ptr %r, align 8
  %91 = load i8, ptr %c, align 1
  %idxprom152 = zext i8 %91 to i64
  %arrayidx153 = getelementptr inbounds i16, ptr %90, i64 %idxprom152
  %92 = load i16, ptr %arrayidx153, align 2
  %conv154 = zext i16 %92 to i32
  %and155 = and i32 %conv154, 255
  %conv156 = sext i32 %and155 to i64
  %93 = load ptr, ptr %g, align 8
  %94 = load i8, ptr %c, align 1
  %idxprom157 = zext i8 %94 to i64
  %arrayidx158 = getelementptr inbounds i16, ptr %93, i64 %idxprom157
  %95 = load i16, ptr %arrayidx158, align 2
  %conv159 = zext i16 %95 to i32
  %and160 = and i32 %conv159, 255
  %conv161 = sext i32 %and160 to i64
  %shl162 = shl i64 %conv161, 8
  %or163 = or i64 %conv156, %shl162
  %96 = load ptr, ptr %b, align 8
  %97 = load i8, ptr %c, align 1
  %idxprom164 = zext i8 %97 to i64
  %arrayidx165 = getelementptr inbounds i16, ptr %96, i64 %idxprom164
  %98 = load i16, ptr %arrayidx165, align 2
  %conv166 = zext i16 %98 to i32
  %and167 = and i32 %conv166, 255
  %conv168 = sext i32 %and167 to i64
  %shl169 = shl i64 %conv168, 16
  %or170 = or i64 %or163, %shl169
  %or171 = or i64 %or170, 4278190080
  %99 = load ptr, ptr %p, align 8
  %incdec.ptr172 = getelementptr inbounds i64, ptr %99, i32 1
  store ptr %incdec.ptr172, ptr %p, align 8
  store i64 %or171, ptr %99, align 8
  %100 = load i32, ptr %i, align 4
  %and173 = and i32 %100, 1
  %conv174 = trunc i32 %and173 to i8
  store i8 %conv174, ptr %c, align 1
  %101 = load ptr, ptr %r, align 8
  %102 = load i8, ptr %c, align 1
  %idxprom175 = zext i8 %102 to i64
  %arrayidx176 = getelementptr inbounds i16, ptr %101, i64 %idxprom175
  %103 = load i16, ptr %arrayidx176, align 2
  %conv177 = zext i16 %103 to i32
  %and178 = and i32 %conv177, 255
  %conv179 = sext i32 %and178 to i64
  %104 = load ptr, ptr %g, align 8
  %105 = load i8, ptr %c, align 1
  %idxprom180 = zext i8 %105 to i64
  %arrayidx181 = getelementptr inbounds i16, ptr %104, i64 %idxprom180
  %106 = load i16, ptr %arrayidx181, align 2
  %conv182 = zext i16 %106 to i32
  %and183 = and i32 %conv182, 255
  %conv184 = sext i32 %and183 to i64
  %shl185 = shl i64 %conv184, 8
  %or186 = or i64 %conv179, %shl185
  %107 = load ptr, ptr %b, align 8
  %108 = load i8, ptr %c, align 1
  %idxprom187 = zext i8 %108 to i64
  %arrayidx188 = getelementptr inbounds i16, ptr %107, i64 %idxprom187
  %109 = load i16, ptr %arrayidx188, align 2
  %conv189 = zext i16 %109 to i32
  %and190 = and i32 %conv189, 255
  %conv191 = sext i32 %and190 to i64
  %shl192 = shl i64 %conv191, 16
  %or193 = or i64 %or186, %shl192
  %or194 = or i64 %or193, 4278190080
  %110 = load ptr, ptr %p, align 8
  %incdec.ptr195 = getelementptr inbounds i64, ptr %110, i32 1
  store ptr %incdec.ptr195, ptr %p, align 8
  store i64 %or194, ptr %110, align 8
  br label %sw.epilog

sw.bb196:                                         ; preds = %for.body
  %111 = load i32, ptr %i, align 4
  %shr197 = ashr i32 %111, 6
  %conv198 = trunc i32 %shr197 to i8
  store i8 %conv198, ptr %c, align 1
  %112 = load ptr, ptr %r, align 8
  %113 = load i8, ptr %c, align 1
  %idxprom199 = zext i8 %113 to i64
  %arrayidx200 = getelementptr inbounds i16, ptr %112, i64 %idxprom199
  %114 = load i16, ptr %arrayidx200, align 2
  %conv201 = zext i16 %114 to i32
  %and202 = and i32 %conv201, 255
  %conv203 = sext i32 %and202 to i64
  %115 = load ptr, ptr %g, align 8
  %116 = load i8, ptr %c, align 1
  %idxprom204 = zext i8 %116 to i64
  %arrayidx205 = getelementptr inbounds i16, ptr %115, i64 %idxprom204
  %117 = load i16, ptr %arrayidx205, align 2
  %conv206 = zext i16 %117 to i32
  %and207 = and i32 %conv206, 255
  %conv208 = sext i32 %and207 to i64
  %shl209 = shl i64 %conv208, 8
  %or210 = or i64 %conv203, %shl209
  %118 = load ptr, ptr %b, align 8
  %119 = load i8, ptr %c, align 1
  %idxprom211 = zext i8 %119 to i64
  %arrayidx212 = getelementptr inbounds i16, ptr %118, i64 %idxprom211
  %120 = load i16, ptr %arrayidx212, align 2
  %conv213 = zext i16 %120 to i32
  %and214 = and i32 %conv213, 255
  %conv215 = sext i32 %and214 to i64
  %shl216 = shl i64 %conv215, 16
  %or217 = or i64 %or210, %shl216
  %or218 = or i64 %or217, 4278190080
  %121 = load ptr, ptr %p, align 8
  %incdec.ptr219 = getelementptr inbounds i64, ptr %121, i32 1
  store ptr %incdec.ptr219, ptr %p, align 8
  store i64 %or218, ptr %121, align 8
  %122 = load i32, ptr %i, align 4
  %shr220 = ashr i32 %122, 4
  %and221 = and i32 %shr220, 3
  %conv222 = trunc i32 %and221 to i8
  store i8 %conv222, ptr %c, align 1
  %123 = load ptr, ptr %r, align 8
  %124 = load i8, ptr %c, align 1
  %idxprom223 = zext i8 %124 to i64
  %arrayidx224 = getelementptr inbounds i16, ptr %123, i64 %idxprom223
  %125 = load i16, ptr %arrayidx224, align 2
  %conv225 = zext i16 %125 to i32
  %and226 = and i32 %conv225, 255
  %conv227 = sext i32 %and226 to i64
  %126 = load ptr, ptr %g, align 8
  %127 = load i8, ptr %c, align 1
  %idxprom228 = zext i8 %127 to i64
  %arrayidx229 = getelementptr inbounds i16, ptr %126, i64 %idxprom228
  %128 = load i16, ptr %arrayidx229, align 2
  %conv230 = zext i16 %128 to i32
  %and231 = and i32 %conv230, 255
  %conv232 = sext i32 %and231 to i64
  %shl233 = shl i64 %conv232, 8
  %or234 = or i64 %conv227, %shl233
  %129 = load ptr, ptr %b, align 8
  %130 = load i8, ptr %c, align 1
  %idxprom235 = zext i8 %130 to i64
  %arrayidx236 = getelementptr inbounds i16, ptr %129, i64 %idxprom235
  %131 = load i16, ptr %arrayidx236, align 2
  %conv237 = zext i16 %131 to i32
  %and238 = and i32 %conv237, 255
  %conv239 = sext i32 %and238 to i64
  %shl240 = shl i64 %conv239, 16
  %or241 = or i64 %or234, %shl240
  %or242 = or i64 %or241, 4278190080
  %132 = load ptr, ptr %p, align 8
  %incdec.ptr243 = getelementptr inbounds i64, ptr %132, i32 1
  store ptr %incdec.ptr243, ptr %p, align 8
  store i64 %or242, ptr %132, align 8
  %133 = load i32, ptr %i, align 4
  %shr244 = ashr i32 %133, 2
  %and245 = and i32 %shr244, 3
  %conv246 = trunc i32 %and245 to i8
  store i8 %conv246, ptr %c, align 1
  %134 = load ptr, ptr %r, align 8
  %135 = load i8, ptr %c, align 1
  %idxprom247 = zext i8 %135 to i64
  %arrayidx248 = getelementptr inbounds i16, ptr %134, i64 %idxprom247
  %136 = load i16, ptr %arrayidx248, align 2
  %conv249 = zext i16 %136 to i32
  %and250 = and i32 %conv249, 255
  %conv251 = sext i32 %and250 to i64
  %137 = load ptr, ptr %g, align 8
  %138 = load i8, ptr %c, align 1
  %idxprom252 = zext i8 %138 to i64
  %arrayidx253 = getelementptr inbounds i16, ptr %137, i64 %idxprom252
  %139 = load i16, ptr %arrayidx253, align 2
  %conv254 = zext i16 %139 to i32
  %and255 = and i32 %conv254, 255
  %conv256 = sext i32 %and255 to i64
  %shl257 = shl i64 %conv256, 8
  %or258 = or i64 %conv251, %shl257
  %140 = load ptr, ptr %b, align 8
  %141 = load i8, ptr %c, align 1
  %idxprom259 = zext i8 %141 to i64
  %arrayidx260 = getelementptr inbounds i16, ptr %140, i64 %idxprom259
  %142 = load i16, ptr %arrayidx260, align 2
  %conv261 = zext i16 %142 to i32
  %and262 = and i32 %conv261, 255
  %conv263 = sext i32 %and262 to i64
  %shl264 = shl i64 %conv263, 16
  %or265 = or i64 %or258, %shl264
  %or266 = or i64 %or265, 4278190080
  %143 = load ptr, ptr %p, align 8
  %incdec.ptr267 = getelementptr inbounds i64, ptr %143, i32 1
  store ptr %incdec.ptr267, ptr %p, align 8
  store i64 %or266, ptr %143, align 8
  %144 = load i32, ptr %i, align 4
  %and268 = and i32 %144, 3
  %conv269 = trunc i32 %and268 to i8
  store i8 %conv269, ptr %c, align 1
  %145 = load ptr, ptr %r, align 8
  %146 = load i8, ptr %c, align 1
  %idxprom270 = zext i8 %146 to i64
  %arrayidx271 = getelementptr inbounds i16, ptr %145, i64 %idxprom270
  %147 = load i16, ptr %arrayidx271, align 2
  %conv272 = zext i16 %147 to i32
  %and273 = and i32 %conv272, 255
  %conv274 = sext i32 %and273 to i64
  %148 = load ptr, ptr %g, align 8
  %149 = load i8, ptr %c, align 1
  %idxprom275 = zext i8 %149 to i64
  %arrayidx276 = getelementptr inbounds i16, ptr %148, i64 %idxprom275
  %150 = load i16, ptr %arrayidx276, align 2
  %conv277 = zext i16 %150 to i32
  %and278 = and i32 %conv277, 255
  %conv279 = sext i32 %and278 to i64
  %shl280 = shl i64 %conv279, 8
  %or281 = or i64 %conv274, %shl280
  %151 = load ptr, ptr %b, align 8
  %152 = load i8, ptr %c, align 1
  %idxprom282 = zext i8 %152 to i64
  %arrayidx283 = getelementptr inbounds i16, ptr %151, i64 %idxprom282
  %153 = load i16, ptr %arrayidx283, align 2
  %conv284 = zext i16 %153 to i32
  %and285 = and i32 %conv284, 255
  %conv286 = sext i32 %and285 to i64
  %shl287 = shl i64 %conv286, 16
  %or288 = or i64 %or281, %shl287
  %or289 = or i64 %or288, 4278190080
  %154 = load ptr, ptr %p, align 8
  %incdec.ptr290 = getelementptr inbounds i64, ptr %154, i32 1
  store ptr %incdec.ptr290, ptr %p, align 8
  store i64 %or289, ptr %154, align 8
  br label %sw.epilog

sw.bb291:                                         ; preds = %for.body
  %155 = load i32, ptr %i, align 4
  %shr292 = ashr i32 %155, 4
  %conv293 = trunc i32 %shr292 to i8
  store i8 %conv293, ptr %c, align 1
  %156 = load ptr, ptr %r, align 8
  %157 = load i8, ptr %c, align 1
  %idxprom294 = zext i8 %157 to i64
  %arrayidx295 = getelementptr inbounds i16, ptr %156, i64 %idxprom294
  %158 = load i16, ptr %arrayidx295, align 2
  %conv296 = zext i16 %158 to i32
  %and297 = and i32 %conv296, 255
  %conv298 = sext i32 %and297 to i64
  %159 = load ptr, ptr %g, align 8
  %160 = load i8, ptr %c, align 1
  %idxprom299 = zext i8 %160 to i64
  %arrayidx300 = getelementptr inbounds i16, ptr %159, i64 %idxprom299
  %161 = load i16, ptr %arrayidx300, align 2
  %conv301 = zext i16 %161 to i32
  %and302 = and i32 %conv301, 255
  %conv303 = sext i32 %and302 to i64
  %shl304 = shl i64 %conv303, 8
  %or305 = or i64 %conv298, %shl304
  %162 = load ptr, ptr %b, align 8
  %163 = load i8, ptr %c, align 1
  %idxprom306 = zext i8 %163 to i64
  %arrayidx307 = getelementptr inbounds i16, ptr %162, i64 %idxprom306
  %164 = load i16, ptr %arrayidx307, align 2
  %conv308 = zext i16 %164 to i32
  %and309 = and i32 %conv308, 255
  %conv310 = sext i32 %and309 to i64
  %shl311 = shl i64 %conv310, 16
  %or312 = or i64 %or305, %shl311
  %or313 = or i64 %or312, 4278190080
  %165 = load ptr, ptr %p, align 8
  %incdec.ptr314 = getelementptr inbounds i64, ptr %165, i32 1
  store ptr %incdec.ptr314, ptr %p, align 8
  store i64 %or313, ptr %165, align 8
  %166 = load i32, ptr %i, align 4
  %and315 = and i32 %166, 15
  %conv316 = trunc i32 %and315 to i8
  store i8 %conv316, ptr %c, align 1
  %167 = load ptr, ptr %r, align 8
  %168 = load i8, ptr %c, align 1
  %idxprom317 = zext i8 %168 to i64
  %arrayidx318 = getelementptr inbounds i16, ptr %167, i64 %idxprom317
  %169 = load i16, ptr %arrayidx318, align 2
  %conv319 = zext i16 %169 to i32
  %and320 = and i32 %conv319, 255
  %conv321 = sext i32 %and320 to i64
  %170 = load ptr, ptr %g, align 8
  %171 = load i8, ptr %c, align 1
  %idxprom322 = zext i8 %171 to i64
  %arrayidx323 = getelementptr inbounds i16, ptr %170, i64 %idxprom322
  %172 = load i16, ptr %arrayidx323, align 2
  %conv324 = zext i16 %172 to i32
  %and325 = and i32 %conv324, 255
  %conv326 = sext i32 %and325 to i64
  %shl327 = shl i64 %conv326, 8
  %or328 = or i64 %conv321, %shl327
  %173 = load ptr, ptr %b, align 8
  %174 = load i8, ptr %c, align 1
  %idxprom329 = zext i8 %174 to i64
  %arrayidx330 = getelementptr inbounds i16, ptr %173, i64 %idxprom329
  %175 = load i16, ptr %arrayidx330, align 2
  %conv331 = zext i16 %175 to i32
  %and332 = and i32 %conv331, 255
  %conv333 = sext i32 %and332 to i64
  %shl334 = shl i64 %conv333, 16
  %or335 = or i64 %or328, %shl334
  %or336 = or i64 %or335, 4278190080
  %176 = load ptr, ptr %p, align 8
  %incdec.ptr337 = getelementptr inbounds i64, ptr %176, i32 1
  store ptr %incdec.ptr337, ptr %p, align 8
  store i64 %or336, ptr %176, align 8
  br label %sw.epilog

sw.bb338:                                         ; preds = %for.body
  %177 = load i32, ptr %i, align 4
  %conv339 = trunc i32 %177 to i8
  store i8 %conv339, ptr %c, align 1
  %178 = load ptr, ptr %r, align 8
  %179 = load i8, ptr %c, align 1
  %idxprom340 = zext i8 %179 to i64
  %arrayidx341 = getelementptr inbounds i16, ptr %178, i64 %idxprom340
  %180 = load i16, ptr %arrayidx341, align 2
  %conv342 = zext i16 %180 to i32
  %and343 = and i32 %conv342, 255
  %conv344 = sext i32 %and343 to i64
  %181 = load ptr, ptr %g, align 8
  %182 = load i8, ptr %c, align 1
  %idxprom345 = zext i8 %182 to i64
  %arrayidx346 = getelementptr inbounds i16, ptr %181, i64 %idxprom345
  %183 = load i16, ptr %arrayidx346, align 2
  %conv347 = zext i16 %183 to i32
  %and348 = and i32 %conv347, 255
  %conv349 = sext i32 %and348 to i64
  %shl350 = shl i64 %conv349, 8
  %or351 = or i64 %conv344, %shl350
  %184 = load ptr, ptr %b, align 8
  %185 = load i8, ptr %c, align 1
  %idxprom352 = zext i8 %185 to i64
  %arrayidx353 = getelementptr inbounds i16, ptr %184, i64 %idxprom352
  %186 = load i16, ptr %arrayidx353, align 2
  %conv354 = zext i16 %186 to i32
  %and355 = and i32 %conv354, 255
  %conv356 = sext i32 %and355 to i64
  %shl357 = shl i64 %conv356, 16
  %or358 = or i64 %or351, %shl357
  %or359 = or i64 %or358, 4278190080
  %187 = load ptr, ptr %p, align 8
  %incdec.ptr360 = getelementptr inbounds i64, ptr %187, i32 1
  store ptr %incdec.ptr360, ptr %p, align 8
  store i64 %or359, ptr %187, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb338, %sw.bb291, %sw.bb196, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %188 = load i32, ptr %i, align 4
  %inc = add nsw i32 %188, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !53

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %189 = load i32, ptr %retval, align 4
  ret i32 %189
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @makebwmap(ptr noundef %img) #0 {
entry:
  %retval = alloca i32, align 4
  %img.addr = alloca ptr, align 8
  %Map = alloca ptr, align 8
  %bitspersample = alloca i32, align 4
  %nsamples = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca ptr, align 8
  %c = alloca i8, align 1
  store ptr %img, ptr %img.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %Map1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 15
  %1 = load ptr, ptr %Map1, align 8
  store ptr %1, ptr %Map, align 8
  %2 = load ptr, ptr %img.addr, align 8
  %bitspersample2 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i32 0, i32 6
  %3 = load i16, ptr %bitspersample2, align 8
  %conv = zext i16 %3 to i32
  store i32 %conv, ptr %bitspersample, align 4
  %4 = load i32, ptr %bitspersample, align 4
  %div = sdiv i32 8, %4
  store i32 %div, ptr %nsamples, align 4
  %5 = load i32, ptr %nsamples, align 4
  %mul = mul nsw i32 256, %5
  %conv3 = sext i32 %mul to i64
  %mul4 = mul i64 %conv3, 8
  %add = add i64 2048, %mul4
  %call = call ptr @_TIFFmalloc(i64 noundef %add)
  %6 = load ptr, ptr %img.addr, align 8
  %BWmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %6, i32 0, i32 16
  store ptr %call, ptr %BWmap, align 8
  %7 = load ptr, ptr %img.addr, align 8
  %BWmap5 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %7, i32 0, i32 16
  %8 = load ptr, ptr %BWmap5, align 8
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %img.addr, align 8
  %tif = getelementptr inbounds %struct._TIFFRGBAImage, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %tif, align 8
  %call7 = call ptr @TIFFFileName(ptr noundef %10)
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call7, ptr noundef @.str.30)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %img.addr, align 8
  %BWmap8 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %11, i32 0, i32 16
  %12 = load ptr, ptr %BWmap8, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %12, i64 256
  store ptr %add.ptr, ptr %p, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, ptr %i, align 4
  %cmp9 = icmp slt i32 %13, 256
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %p, align 8
  %15 = load ptr, ptr %img.addr, align 8
  %BWmap11 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %15, i32 0, i32 16
  %16 = load ptr, ptr %BWmap11, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %16, i64 %idxprom
  store ptr %14, ptr %arrayidx, align 8
  %18 = load i32, ptr %bitspersample, align 4
  switch i32 %18, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb109
    i32 4, label %sw.bb160
    i32 8, label %sw.bb185
  ]

sw.bb:                                            ; preds = %for.body
  %19 = load ptr, ptr %Map, align 8
  %20 = load i32, ptr %i, align 4
  %shr = ashr i32 %20, 7
  %idxprom12 = sext i32 %shr to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %19, i64 %idxprom12
  %21 = load i8, ptr %arrayidx13, align 1
  store i8 %21, ptr %c, align 1
  %22 = load i8, ptr %c, align 1
  %conv14 = zext i8 %22 to i64
  %23 = load i8, ptr %c, align 1
  %conv15 = zext i8 %23 to i64
  %shl = shl i64 %conv15, 8
  %or = or i64 %conv14, %shl
  %24 = load i8, ptr %c, align 1
  %conv16 = zext i8 %24 to i64
  %shl17 = shl i64 %conv16, 16
  %or18 = or i64 %or, %shl17
  %or19 = or i64 %or18, 4278190080
  %25 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %25, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  store i64 %or19, ptr %25, align 8
  %26 = load ptr, ptr %Map, align 8
  %27 = load i32, ptr %i, align 4
  %shr20 = ashr i32 %27, 6
  %and = and i32 %shr20, 1
  %idxprom21 = sext i32 %and to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %26, i64 %idxprom21
  %28 = load i8, ptr %arrayidx22, align 1
  store i8 %28, ptr %c, align 1
  %29 = load i8, ptr %c, align 1
  %conv23 = zext i8 %29 to i64
  %30 = load i8, ptr %c, align 1
  %conv24 = zext i8 %30 to i64
  %shl25 = shl i64 %conv24, 8
  %or26 = or i64 %conv23, %shl25
  %31 = load i8, ptr %c, align 1
  %conv27 = zext i8 %31 to i64
  %shl28 = shl i64 %conv27, 16
  %or29 = or i64 %or26, %shl28
  %or30 = or i64 %or29, 4278190080
  %32 = load ptr, ptr %p, align 8
  %incdec.ptr31 = getelementptr inbounds i64, ptr %32, i32 1
  store ptr %incdec.ptr31, ptr %p, align 8
  store i64 %or30, ptr %32, align 8
  %33 = load ptr, ptr %Map, align 8
  %34 = load i32, ptr %i, align 4
  %shr32 = ashr i32 %34, 5
  %and33 = and i32 %shr32, 1
  %idxprom34 = sext i32 %and33 to i64
  %arrayidx35 = getelementptr inbounds i8, ptr %33, i64 %idxprom34
  %35 = load i8, ptr %arrayidx35, align 1
  store i8 %35, ptr %c, align 1
  %36 = load i8, ptr %c, align 1
  %conv36 = zext i8 %36 to i64
  %37 = load i8, ptr %c, align 1
  %conv37 = zext i8 %37 to i64
  %shl38 = shl i64 %conv37, 8
  %or39 = or i64 %conv36, %shl38
  %38 = load i8, ptr %c, align 1
  %conv40 = zext i8 %38 to i64
  %shl41 = shl i64 %conv40, 16
  %or42 = or i64 %or39, %shl41
  %or43 = or i64 %or42, 4278190080
  %39 = load ptr, ptr %p, align 8
  %incdec.ptr44 = getelementptr inbounds i64, ptr %39, i32 1
  store ptr %incdec.ptr44, ptr %p, align 8
  store i64 %or43, ptr %39, align 8
  %40 = load ptr, ptr %Map, align 8
  %41 = load i32, ptr %i, align 4
  %shr45 = ashr i32 %41, 4
  %and46 = and i32 %shr45, 1
  %idxprom47 = sext i32 %and46 to i64
  %arrayidx48 = getelementptr inbounds i8, ptr %40, i64 %idxprom47
  %42 = load i8, ptr %arrayidx48, align 1
  store i8 %42, ptr %c, align 1
  %43 = load i8, ptr %c, align 1
  %conv49 = zext i8 %43 to i64
  %44 = load i8, ptr %c, align 1
  %conv50 = zext i8 %44 to i64
  %shl51 = shl i64 %conv50, 8
  %or52 = or i64 %conv49, %shl51
  %45 = load i8, ptr %c, align 1
  %conv53 = zext i8 %45 to i64
  %shl54 = shl i64 %conv53, 16
  %or55 = or i64 %or52, %shl54
  %or56 = or i64 %or55, 4278190080
  %46 = load ptr, ptr %p, align 8
  %incdec.ptr57 = getelementptr inbounds i64, ptr %46, i32 1
  store ptr %incdec.ptr57, ptr %p, align 8
  store i64 %or56, ptr %46, align 8
  %47 = load ptr, ptr %Map, align 8
  %48 = load i32, ptr %i, align 4
  %shr58 = ashr i32 %48, 3
  %and59 = and i32 %shr58, 1
  %idxprom60 = sext i32 %and59 to i64
  %arrayidx61 = getelementptr inbounds i8, ptr %47, i64 %idxprom60
  %49 = load i8, ptr %arrayidx61, align 1
  store i8 %49, ptr %c, align 1
  %50 = load i8, ptr %c, align 1
  %conv62 = zext i8 %50 to i64
  %51 = load i8, ptr %c, align 1
  %conv63 = zext i8 %51 to i64
  %shl64 = shl i64 %conv63, 8
  %or65 = or i64 %conv62, %shl64
  %52 = load i8, ptr %c, align 1
  %conv66 = zext i8 %52 to i64
  %shl67 = shl i64 %conv66, 16
  %or68 = or i64 %or65, %shl67
  %or69 = or i64 %or68, 4278190080
  %53 = load ptr, ptr %p, align 8
  %incdec.ptr70 = getelementptr inbounds i64, ptr %53, i32 1
  store ptr %incdec.ptr70, ptr %p, align 8
  store i64 %or69, ptr %53, align 8
  %54 = load ptr, ptr %Map, align 8
  %55 = load i32, ptr %i, align 4
  %shr71 = ashr i32 %55, 2
  %and72 = and i32 %shr71, 1
  %idxprom73 = sext i32 %and72 to i64
  %arrayidx74 = getelementptr inbounds i8, ptr %54, i64 %idxprom73
  %56 = load i8, ptr %arrayidx74, align 1
  store i8 %56, ptr %c, align 1
  %57 = load i8, ptr %c, align 1
  %conv75 = zext i8 %57 to i64
  %58 = load i8, ptr %c, align 1
  %conv76 = zext i8 %58 to i64
  %shl77 = shl i64 %conv76, 8
  %or78 = or i64 %conv75, %shl77
  %59 = load i8, ptr %c, align 1
  %conv79 = zext i8 %59 to i64
  %shl80 = shl i64 %conv79, 16
  %or81 = or i64 %or78, %shl80
  %or82 = or i64 %or81, 4278190080
  %60 = load ptr, ptr %p, align 8
  %incdec.ptr83 = getelementptr inbounds i64, ptr %60, i32 1
  store ptr %incdec.ptr83, ptr %p, align 8
  store i64 %or82, ptr %60, align 8
  %61 = load ptr, ptr %Map, align 8
  %62 = load i32, ptr %i, align 4
  %shr84 = ashr i32 %62, 1
  %and85 = and i32 %shr84, 1
  %idxprom86 = sext i32 %and85 to i64
  %arrayidx87 = getelementptr inbounds i8, ptr %61, i64 %idxprom86
  %63 = load i8, ptr %arrayidx87, align 1
  store i8 %63, ptr %c, align 1
  %64 = load i8, ptr %c, align 1
  %conv88 = zext i8 %64 to i64
  %65 = load i8, ptr %c, align 1
  %conv89 = zext i8 %65 to i64
  %shl90 = shl i64 %conv89, 8
  %or91 = or i64 %conv88, %shl90
  %66 = load i8, ptr %c, align 1
  %conv92 = zext i8 %66 to i64
  %shl93 = shl i64 %conv92, 16
  %or94 = or i64 %or91, %shl93
  %or95 = or i64 %or94, 4278190080
  %67 = load ptr, ptr %p, align 8
  %incdec.ptr96 = getelementptr inbounds i64, ptr %67, i32 1
  store ptr %incdec.ptr96, ptr %p, align 8
  store i64 %or95, ptr %67, align 8
  %68 = load ptr, ptr %Map, align 8
  %69 = load i32, ptr %i, align 4
  %and97 = and i32 %69, 1
  %idxprom98 = sext i32 %and97 to i64
  %arrayidx99 = getelementptr inbounds i8, ptr %68, i64 %idxprom98
  %70 = load i8, ptr %arrayidx99, align 1
  store i8 %70, ptr %c, align 1
  %71 = load i8, ptr %c, align 1
  %conv100 = zext i8 %71 to i64
  %72 = load i8, ptr %c, align 1
  %conv101 = zext i8 %72 to i64
  %shl102 = shl i64 %conv101, 8
  %or103 = or i64 %conv100, %shl102
  %73 = load i8, ptr %c, align 1
  %conv104 = zext i8 %73 to i64
  %shl105 = shl i64 %conv104, 16
  %or106 = or i64 %or103, %shl105
  %or107 = or i64 %or106, 4278190080
  %74 = load ptr, ptr %p, align 8
  %incdec.ptr108 = getelementptr inbounds i64, ptr %74, i32 1
  store ptr %incdec.ptr108, ptr %p, align 8
  store i64 %or107, ptr %74, align 8
  br label %sw.epilog

sw.bb109:                                         ; preds = %for.body
  %75 = load ptr, ptr %Map, align 8
  %76 = load i32, ptr %i, align 4
  %shr110 = ashr i32 %76, 6
  %idxprom111 = sext i32 %shr110 to i64
  %arrayidx112 = getelementptr inbounds i8, ptr %75, i64 %idxprom111
  %77 = load i8, ptr %arrayidx112, align 1
  store i8 %77, ptr %c, align 1
  %78 = load i8, ptr %c, align 1
  %conv113 = zext i8 %78 to i64
  %79 = load i8, ptr %c, align 1
  %conv114 = zext i8 %79 to i64
  %shl115 = shl i64 %conv114, 8
  %or116 = or i64 %conv113, %shl115
  %80 = load i8, ptr %c, align 1
  %conv117 = zext i8 %80 to i64
  %shl118 = shl i64 %conv117, 16
  %or119 = or i64 %or116, %shl118
  %or120 = or i64 %or119, 4278190080
  %81 = load ptr, ptr %p, align 8
  %incdec.ptr121 = getelementptr inbounds i64, ptr %81, i32 1
  store ptr %incdec.ptr121, ptr %p, align 8
  store i64 %or120, ptr %81, align 8
  %82 = load ptr, ptr %Map, align 8
  %83 = load i32, ptr %i, align 4
  %shr122 = ashr i32 %83, 4
  %and123 = and i32 %shr122, 3
  %idxprom124 = sext i32 %and123 to i64
  %arrayidx125 = getelementptr inbounds i8, ptr %82, i64 %idxprom124
  %84 = load i8, ptr %arrayidx125, align 1
  store i8 %84, ptr %c, align 1
  %85 = load i8, ptr %c, align 1
  %conv126 = zext i8 %85 to i64
  %86 = load i8, ptr %c, align 1
  %conv127 = zext i8 %86 to i64
  %shl128 = shl i64 %conv127, 8
  %or129 = or i64 %conv126, %shl128
  %87 = load i8, ptr %c, align 1
  %conv130 = zext i8 %87 to i64
  %shl131 = shl i64 %conv130, 16
  %or132 = or i64 %or129, %shl131
  %or133 = or i64 %or132, 4278190080
  %88 = load ptr, ptr %p, align 8
  %incdec.ptr134 = getelementptr inbounds i64, ptr %88, i32 1
  store ptr %incdec.ptr134, ptr %p, align 8
  store i64 %or133, ptr %88, align 8
  %89 = load ptr, ptr %Map, align 8
  %90 = load i32, ptr %i, align 4
  %shr135 = ashr i32 %90, 2
  %and136 = and i32 %shr135, 3
  %idxprom137 = sext i32 %and136 to i64
  %arrayidx138 = getelementptr inbounds i8, ptr %89, i64 %idxprom137
  %91 = load i8, ptr %arrayidx138, align 1
  store i8 %91, ptr %c, align 1
  %92 = load i8, ptr %c, align 1
  %conv139 = zext i8 %92 to i64
  %93 = load i8, ptr %c, align 1
  %conv140 = zext i8 %93 to i64
  %shl141 = shl i64 %conv140, 8
  %or142 = or i64 %conv139, %shl141
  %94 = load i8, ptr %c, align 1
  %conv143 = zext i8 %94 to i64
  %shl144 = shl i64 %conv143, 16
  %or145 = or i64 %or142, %shl144
  %or146 = or i64 %or145, 4278190080
  %95 = load ptr, ptr %p, align 8
  %incdec.ptr147 = getelementptr inbounds i64, ptr %95, i32 1
  store ptr %incdec.ptr147, ptr %p, align 8
  store i64 %or146, ptr %95, align 8
  %96 = load ptr, ptr %Map, align 8
  %97 = load i32, ptr %i, align 4
  %and148 = and i32 %97, 3
  %idxprom149 = sext i32 %and148 to i64
  %arrayidx150 = getelementptr inbounds i8, ptr %96, i64 %idxprom149
  %98 = load i8, ptr %arrayidx150, align 1
  store i8 %98, ptr %c, align 1
  %99 = load i8, ptr %c, align 1
  %conv151 = zext i8 %99 to i64
  %100 = load i8, ptr %c, align 1
  %conv152 = zext i8 %100 to i64
  %shl153 = shl i64 %conv152, 8
  %or154 = or i64 %conv151, %shl153
  %101 = load i8, ptr %c, align 1
  %conv155 = zext i8 %101 to i64
  %shl156 = shl i64 %conv155, 16
  %or157 = or i64 %or154, %shl156
  %or158 = or i64 %or157, 4278190080
  %102 = load ptr, ptr %p, align 8
  %incdec.ptr159 = getelementptr inbounds i64, ptr %102, i32 1
  store ptr %incdec.ptr159, ptr %p, align 8
  store i64 %or158, ptr %102, align 8
  br label %sw.epilog

sw.bb160:                                         ; preds = %for.body
  %103 = load ptr, ptr %Map, align 8
  %104 = load i32, ptr %i, align 4
  %shr161 = ashr i32 %104, 4
  %idxprom162 = sext i32 %shr161 to i64
  %arrayidx163 = getelementptr inbounds i8, ptr %103, i64 %idxprom162
  %105 = load i8, ptr %arrayidx163, align 1
  store i8 %105, ptr %c, align 1
  %106 = load i8, ptr %c, align 1
  %conv164 = zext i8 %106 to i64
  %107 = load i8, ptr %c, align 1
  %conv165 = zext i8 %107 to i64
  %shl166 = shl i64 %conv165, 8
  %or167 = or i64 %conv164, %shl166
  %108 = load i8, ptr %c, align 1
  %conv168 = zext i8 %108 to i64
  %shl169 = shl i64 %conv168, 16
  %or170 = or i64 %or167, %shl169
  %or171 = or i64 %or170, 4278190080
  %109 = load ptr, ptr %p, align 8
  %incdec.ptr172 = getelementptr inbounds i64, ptr %109, i32 1
  store ptr %incdec.ptr172, ptr %p, align 8
  store i64 %or171, ptr %109, align 8
  %110 = load ptr, ptr %Map, align 8
  %111 = load i32, ptr %i, align 4
  %and173 = and i32 %111, 15
  %idxprom174 = sext i32 %and173 to i64
  %arrayidx175 = getelementptr inbounds i8, ptr %110, i64 %idxprom174
  %112 = load i8, ptr %arrayidx175, align 1
  store i8 %112, ptr %c, align 1
  %113 = load i8, ptr %c, align 1
  %conv176 = zext i8 %113 to i64
  %114 = load i8, ptr %c, align 1
  %conv177 = zext i8 %114 to i64
  %shl178 = shl i64 %conv177, 8
  %or179 = or i64 %conv176, %shl178
  %115 = load i8, ptr %c, align 1
  %conv180 = zext i8 %115 to i64
  %shl181 = shl i64 %conv180, 16
  %or182 = or i64 %or179, %shl181
  %or183 = or i64 %or182, 4278190080
  %116 = load ptr, ptr %p, align 8
  %incdec.ptr184 = getelementptr inbounds i64, ptr %116, i32 1
  store ptr %incdec.ptr184, ptr %p, align 8
  store i64 %or183, ptr %116, align 8
  br label %sw.epilog

sw.bb185:                                         ; preds = %for.body
  %117 = load ptr, ptr %Map, align 8
  %118 = load i32, ptr %i, align 4
  %idxprom186 = sext i32 %118 to i64
  %arrayidx187 = getelementptr inbounds i8, ptr %117, i64 %idxprom186
  %119 = load i8, ptr %arrayidx187, align 1
  store i8 %119, ptr %c, align 1
  %120 = load i8, ptr %c, align 1
  %conv188 = zext i8 %120 to i64
  %121 = load i8, ptr %c, align 1
  %conv189 = zext i8 %121 to i64
  %shl190 = shl i64 %conv189, 8
  %or191 = or i64 %conv188, %shl190
  %122 = load i8, ptr %c, align 1
  %conv192 = zext i8 %122 to i64
  %shl193 = shl i64 %conv192, 16
  %or194 = or i64 %or191, %shl193
  %or195 = or i64 %or194, 4278190080
  %123 = load ptr, ptr %p, align 8
  %incdec.ptr196 = getelementptr inbounds i64, ptr %123, i32 1
  store ptr %incdec.ptr196, ptr %p, align 8
  store i64 %or195, ptr %123, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb185, %sw.bb160, %sw.bb109, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %124 = load i32, ptr %i, align 4
  %inc = add nsw i32 %124, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !54

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %125 = load i32, ptr %retval, align 4
  ret i32 %125
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @TIFFYCbCrToRGBInit(ptr noundef %ycbcr, ptr noundef %tif) #0 {
entry:
  %ycbcr.addr = alloca ptr, align 8
  %tif.addr = alloca ptr, align 8
  %clamptab = alloca ptr, align 8
  %coeffs = alloca ptr, align 8
  %i = alloca i32, align 4
  %f1 = alloca float, align 4
  %D1 = alloca i64, align 8
  %f2 = alloca float, align 4
  %D2 = alloca i64, align 8
  %f3 = alloca float, align 4
  %D3 = alloca i64, align 8
  %f4 = alloca float, align 4
  %D4 = alloca i64, align 8
  %x = alloca i32, align 4
  store ptr %ycbcr, ptr %ycbcr.addr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %ycbcr.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 56
  store ptr %add.ptr, ptr %clamptab, align 8
  %1 = load ptr, ptr %clamptab, align 8
  call void @_TIFFmemset(ptr noundef %1, i32 noundef 0, i64 noundef 256)
  %2 = load ptr, ptr %clamptab, align 8
  %add.ptr1 = getelementptr inbounds i8, ptr %2, i64 256
  store ptr %add.ptr1, ptr %clamptab, align 8
  %3 = load ptr, ptr %ycbcr.addr, align 8
  %clamptab2 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %3, i32 0, i32 0
  store ptr %add.ptr1, ptr %clamptab2, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %4, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4
  %conv = trunc i32 %5 to i8
  %6 = load ptr, ptr %clamptab, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !55

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %clamptab, align 8
  %add.ptr3 = getelementptr inbounds i8, ptr %9, i64 256
  call void @_TIFFmemset(ptr noundef %add.ptr3, i32 noundef 255, i64 noundef 512)
  %10 = load ptr, ptr %tif.addr, align 8
  %call = call i32 (ptr, i64, ...) @TIFFGetFieldDefaulted(ptr noundef %10, i64 noundef 529, ptr noundef %coeffs)
  %11 = load ptr, ptr %ycbcr.addr, align 8
  %coeffs4 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %11, i32 0, i32 5
  %arraydecay = getelementptr inbounds [3 x float], ptr %coeffs4, i64 0, i64 0
  %12 = load ptr, ptr %coeffs, align 8
  call void @_TIFFmemcpy(ptr noundef %arraydecay, ptr noundef %12, i64 noundef 12)
  %13 = load ptr, ptr %coeffs, align 8
  %arrayidx5 = getelementptr inbounds float, ptr %13, i64 0
  %14 = load float, ptr %arrayidx5, align 4
  %15 = call float @llvm.fmuladd.f32(float -2.000000e+00, float %14, float 2.000000e+00)
  store float %15, ptr %f1, align 4
  %16 = load float, ptr %f1, align 4
  %mul = fmul float %16, 6.553600e+04
  %conv6 = fpext float %mul to double
  %add = fadd double %conv6, 5.000000e-01
  %conv7 = fptosi double %add to i64
  store i64 %conv7, ptr %D1, align 8
  %17 = load ptr, ptr %coeffs, align 8
  %arrayidx8 = getelementptr inbounds float, ptr %17, i64 0
  %18 = load float, ptr %arrayidx8, align 4
  %19 = load float, ptr %f1, align 4
  %mul9 = fmul float %18, %19
  %20 = load ptr, ptr %coeffs, align 8
  %arrayidx10 = getelementptr inbounds float, ptr %20, i64 1
  %21 = load float, ptr %arrayidx10, align 4
  %div = fdiv float %mul9, %21
  store float %div, ptr %f2, align 4
  %22 = load float, ptr %f2, align 4
  %mul11 = fmul float %22, 6.553600e+04
  %conv12 = fpext float %mul11 to double
  %add13 = fadd double %conv12, 5.000000e-01
  %conv14 = fptosi double %add13 to i64
  %sub = sub nsw i64 0, %conv14
  store i64 %sub, ptr %D2, align 8
  %23 = load ptr, ptr %coeffs, align 8
  %arrayidx15 = getelementptr inbounds float, ptr %23, i64 2
  %24 = load float, ptr %arrayidx15, align 4
  %25 = call float @llvm.fmuladd.f32(float -2.000000e+00, float %24, float 2.000000e+00)
  store float %25, ptr %f3, align 4
  %26 = load float, ptr %f3, align 4
  %mul17 = fmul float %26, 6.553600e+04
  %conv18 = fpext float %mul17 to double
  %add19 = fadd double %conv18, 5.000000e-01
  %conv20 = fptosi double %add19 to i64
  store i64 %conv20, ptr %D3, align 8
  %27 = load ptr, ptr %coeffs, align 8
  %arrayidx21 = getelementptr inbounds float, ptr %27, i64 2
  %28 = load float, ptr %arrayidx21, align 4
  %29 = load float, ptr %f3, align 4
  %mul22 = fmul float %28, %29
  %30 = load ptr, ptr %coeffs, align 8
  %arrayidx23 = getelementptr inbounds float, ptr %30, i64 1
  %31 = load float, ptr %arrayidx23, align 4
  %div24 = fdiv float %mul22, %31
  store float %div24, ptr %f4, align 4
  %32 = load float, ptr %f4, align 4
  %mul25 = fmul float %32, 6.553600e+04
  %conv26 = fpext float %mul25 to double
  %add27 = fadd double %conv26, 5.000000e-01
  %conv28 = fptosi double %add27 to i64
  %sub29 = sub nsw i64 0, %conv28
  store i64 %sub29, ptr %D4, align 8
  %33 = load ptr, ptr %clamptab, align 8
  %add.ptr30 = getelementptr inbounds i8, ptr %33, i64 768
  %34 = load ptr, ptr %ycbcr.addr, align 8
  %Cr_r_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %34, i32 0, i32 1
  store ptr %add.ptr30, ptr %Cr_r_tab, align 8
  %35 = load ptr, ptr %ycbcr.addr, align 8
  %Cr_r_tab31 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %Cr_r_tab31, align 8
  %add.ptr32 = getelementptr inbounds i32, ptr %36, i64 256
  %37 = load ptr, ptr %ycbcr.addr, align 8
  %Cb_b_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %37, i32 0, i32 2
  store ptr %add.ptr32, ptr %Cb_b_tab, align 8
  %38 = load ptr, ptr %ycbcr.addr, align 8
  %Cb_b_tab33 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %38, i32 0, i32 2
  %39 = load ptr, ptr %Cb_b_tab33, align 8
  %add.ptr34 = getelementptr inbounds i32, ptr %39, i64 256
  %40 = load ptr, ptr %ycbcr.addr, align 8
  %Cr_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %40, i32 0, i32 3
  store ptr %add.ptr34, ptr %Cr_g_tab, align 8
  %41 = load ptr, ptr %ycbcr.addr, align 8
  %Cr_g_tab35 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %41, i32 0, i32 3
  %42 = load ptr, ptr %Cr_g_tab35, align 8
  %add.ptr36 = getelementptr inbounds i64, ptr %42, i64 256
  %43 = load ptr, ptr %ycbcr.addr, align 8
  %Cb_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %43, i32 0, i32 4
  store ptr %add.ptr36, ptr %Cb_g_tab, align 8
  store i32 0, ptr %i, align 4
  store i32 -128, ptr %x, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc67, %for.end
  %44 = load i32, ptr %i, align 4
  %cmp38 = icmp slt i32 %44, 256
  br i1 %cmp38, label %for.body40, label %for.end70

for.body40:                                       ; preds = %for.cond37
  %45 = load i64, ptr %D1, align 8
  %46 = load i32, ptr %x, align 4
  %conv41 = sext i32 %46 to i64
  %mul42 = mul nsw i64 %45, %conv41
  %add43 = add nsw i64 %mul42, 32768
  %shr = ashr i64 %add43, 16
  %conv44 = trunc i64 %shr to i32
  %47 = load ptr, ptr %ycbcr.addr, align 8
  %Cr_r_tab45 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %47, i32 0, i32 1
  %48 = load ptr, ptr %Cr_r_tab45, align 8
  %49 = load i32, ptr %i, align 4
  %idxprom46 = sext i32 %49 to i64
  %arrayidx47 = getelementptr inbounds i32, ptr %48, i64 %idxprom46
  store i32 %conv44, ptr %arrayidx47, align 4
  %50 = load i64, ptr %D3, align 8
  %51 = load i32, ptr %x, align 4
  %conv48 = sext i32 %51 to i64
  %mul49 = mul nsw i64 %50, %conv48
  %add50 = add nsw i64 %mul49, 32768
  %shr51 = ashr i64 %add50, 16
  %conv52 = trunc i64 %shr51 to i32
  %52 = load ptr, ptr %ycbcr.addr, align 8
  %Cb_b_tab53 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %52, i32 0, i32 2
  %53 = load ptr, ptr %Cb_b_tab53, align 8
  %54 = load i32, ptr %i, align 4
  %idxprom54 = sext i32 %54 to i64
  %arrayidx55 = getelementptr inbounds i32, ptr %53, i64 %idxprom54
  store i32 %conv52, ptr %arrayidx55, align 4
  %55 = load i64, ptr %D2, align 8
  %56 = load i32, ptr %x, align 4
  %conv56 = sext i32 %56 to i64
  %mul57 = mul nsw i64 %55, %conv56
  %57 = load ptr, ptr %ycbcr.addr, align 8
  %Cr_g_tab58 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %57, i32 0, i32 3
  %58 = load ptr, ptr %Cr_g_tab58, align 8
  %59 = load i32, ptr %i, align 4
  %idxprom59 = sext i32 %59 to i64
  %arrayidx60 = getelementptr inbounds i64, ptr %58, i64 %idxprom59
  store i64 %mul57, ptr %arrayidx60, align 8
  %60 = load i64, ptr %D4, align 8
  %61 = load i32, ptr %x, align 4
  %conv61 = sext i32 %61 to i64
  %mul62 = mul nsw i64 %60, %conv61
  %add63 = add nsw i64 %mul62, 32768
  %62 = load ptr, ptr %ycbcr.addr, align 8
  %Cb_g_tab64 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %62, i32 0, i32 4
  %63 = load ptr, ptr %Cb_g_tab64, align 8
  %64 = load i32, ptr %i, align 4
  %idxprom65 = sext i32 %64 to i64
  %arrayidx66 = getelementptr inbounds i64, ptr %63, i64 %idxprom65
  store i64 %add63, ptr %arrayidx66, align 8
  br label %for.inc67

for.inc67:                                        ; preds = %for.body40
  %65 = load i32, ptr %i, align 4
  %inc68 = add nsw i32 %65, 1
  store i32 %inc68, ptr %i, align 4
  %66 = load i32, ptr %x, align 4
  %inc69 = add nsw i32 %66, 1
  store i32 %inc69, ptr %x, align 4
  br label %for.cond37, !llvm.loop !56

for.end70:                                        ; preds = %for.cond37
  ret void
}

declare i32 @_TIFFmemcmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putcontig8bitYCbCr44tile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
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
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %ycbcr1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 18
  %1 = load ptr, ptr %ycbcr1, align 8
  store ptr %1, ptr %ycbcr, align 8
  %2 = load ptr, ptr %ycbcr, align 8
  %Cr_r_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %Cr_r_tab, align 8
  store ptr %3, ptr %Crrtab, align 8
  %4 = load ptr, ptr %ycbcr, align 8
  %Cb_b_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %Cb_b_tab, align 8
  store ptr %5, ptr %Cbbtab, align 8
  %6 = load ptr, ptr %ycbcr, align 8
  %Cr_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %Cr_g_tab, align 8
  store ptr %7, ptr %Crgtab, align 8
  %8 = load ptr, ptr %ycbcr, align 8
  %Cb_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %Cb_g_tab, align 8
  store ptr %9, ptr %Cbgtab, align 8
  %10 = load ptr, ptr %ycbcr, align 8
  %clamptab2 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %clamptab2, align 8
  store ptr %11, ptr %clamptab, align 8
  %12 = load ptr, ptr %cp.addr, align 8
  %13 = load i64, ptr %w.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %12, i64 %13
  %14 = load i64, ptr %toskew.addr, align 8
  %add.ptr3 = getelementptr inbounds i64, ptr %add.ptr, i64 %14
  store ptr %add.ptr3, ptr %cp1, align 8
  %15 = load ptr, ptr %cp1, align 8
  %16 = load i64, ptr %w.addr, align 8
  %add.ptr4 = getelementptr inbounds i64, ptr %15, i64 %16
  %17 = load i64, ptr %toskew.addr, align 8
  %add.ptr5 = getelementptr inbounds i64, ptr %add.ptr4, i64 %17
  store ptr %add.ptr5, ptr %cp2, align 8
  %18 = load ptr, ptr %cp2, align 8
  %19 = load i64, ptr %w.addr, align 8
  %add.ptr6 = getelementptr inbounds i64, ptr %18, i64 %19
  %20 = load i64, ptr %toskew.addr, align 8
  %add.ptr7 = getelementptr inbounds i64, ptr %add.ptr6, i64 %20
  store ptr %add.ptr7, ptr %cp3, align 8
  %21 = load i64, ptr %w.addr, align 8
  %mul = mul i64 3, %21
  %22 = load i64, ptr %toskew.addr, align 8
  %mul8 = mul nsw i64 4, %22
  %add = add i64 %mul, %mul8
  store i64 %add, ptr %incr, align 8
  %23 = load i64, ptr %y.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %24 = load i64, ptr %h.addr, align 8
  %cmp = icmp uge i64 %24, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i64, ptr %w.addr, align 8
  %shr = lshr i64 %25, 2
  store i64 %shr, ptr %x.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body
  %26 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %26, i64 16
  %27 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %27 to i32
  store i32 %conv, ptr %Cb, align 4
  %28 = load ptr, ptr %pp.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %28, i64 17
  %29 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %29 to i32
  store i32 %conv10, ptr %Cr, align 4
  %30 = load ptr, ptr %pp.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %30, i64 0
  %31 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %31 to i32
  store i32 %conv12, ptr %Y, align 4
  %32 = load ptr, ptr %clamptab, align 8
  %33 = load i32, ptr %Y, align 4
  %34 = load ptr, ptr %Crrtab, align 8
  %35 = load i32, ptr %Cr, align 4
  %idxprom = sext i32 %35 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %34, i64 %idxprom
  %36 = load i32, ptr %arrayidx13, align 4
  %add14 = add nsw i32 %33, %36
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %32, i64 %idxprom15
  %37 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %37 to i64
  %38 = load ptr, ptr %clamptab, align 8
  %39 = load i32, ptr %Y, align 4
  %40 = load ptr, ptr %Cbgtab, align 8
  %41 = load i32, ptr %Cb, align 4
  %idxprom18 = sext i32 %41 to i64
  %arrayidx19 = getelementptr inbounds i64, ptr %40, i64 %idxprom18
  %42 = load i64, ptr %arrayidx19, align 8
  %43 = load ptr, ptr %Crgtab, align 8
  %44 = load i32, ptr %Cr, align 4
  %idxprom20 = sext i32 %44 to i64
  %arrayidx21 = getelementptr inbounds i64, ptr %43, i64 %idxprom20
  %45 = load i64, ptr %arrayidx21, align 8
  %add22 = add nsw i64 %42, %45
  %shr23 = ashr i64 %add22, 16
  %conv24 = trunc i64 %shr23 to i32
  %add25 = add nsw i32 %39, %conv24
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %38, i64 %idxprom26
  %46 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %46 to i64
  %shl = shl i64 %conv28, 8
  %or = or i64 %conv17, %shl
  %47 = load ptr, ptr %clamptab, align 8
  %48 = load i32, ptr %Y, align 4
  %49 = load ptr, ptr %Cbbtab, align 8
  %50 = load i32, ptr %Cb, align 4
  %idxprom29 = sext i32 %50 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %49, i64 %idxprom29
  %51 = load i32, ptr %arrayidx30, align 4
  %add31 = add nsw i32 %48, %51
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds i8, ptr %47, i64 %idxprom32
  %52 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %52 to i64
  %shl35 = shl i64 %conv34, 16
  %or36 = or i64 %or, %shl35
  %or37 = or i64 %or36, 4278190080
  %53 = load ptr, ptr %cp.addr, align 8
  %arrayidx38 = getelementptr inbounds i64, ptr %53, i64 0
  store i64 %or37, ptr %arrayidx38, align 8
  %54 = load ptr, ptr %pp.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %54, i64 1
  %55 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %55 to i32
  store i32 %conv41, ptr %Y39, align 4
  %56 = load ptr, ptr %clamptab, align 8
  %57 = load i32, ptr %Y39, align 4
  %58 = load ptr, ptr %Crrtab, align 8
  %59 = load i32, ptr %Cr, align 4
  %idxprom42 = sext i32 %59 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %58, i64 %idxprom42
  %60 = load i32, ptr %arrayidx43, align 4
  %add44 = add nsw i32 %57, %60
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds i8, ptr %56, i64 %idxprom45
  %61 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %61 to i64
  %62 = load ptr, ptr %clamptab, align 8
  %63 = load i32, ptr %Y39, align 4
  %64 = load ptr, ptr %Cbgtab, align 8
  %65 = load i32, ptr %Cb, align 4
  %idxprom48 = sext i32 %65 to i64
  %arrayidx49 = getelementptr inbounds i64, ptr %64, i64 %idxprom48
  %66 = load i64, ptr %arrayidx49, align 8
  %67 = load ptr, ptr %Crgtab, align 8
  %68 = load i32, ptr %Cr, align 4
  %idxprom50 = sext i32 %68 to i64
  %arrayidx51 = getelementptr inbounds i64, ptr %67, i64 %idxprom50
  %69 = load i64, ptr %arrayidx51, align 8
  %add52 = add nsw i64 %66, %69
  %shr53 = ashr i64 %add52, 16
  %conv54 = trunc i64 %shr53 to i32
  %add55 = add nsw i32 %63, %conv54
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds i8, ptr %62, i64 %idxprom56
  %70 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %70 to i64
  %shl59 = shl i64 %conv58, 8
  %or60 = or i64 %conv47, %shl59
  %71 = load ptr, ptr %clamptab, align 8
  %72 = load i32, ptr %Y39, align 4
  %73 = load ptr, ptr %Cbbtab, align 8
  %74 = load i32, ptr %Cb, align 4
  %idxprom61 = sext i32 %74 to i64
  %arrayidx62 = getelementptr inbounds i32, ptr %73, i64 %idxprom61
  %75 = load i32, ptr %arrayidx62, align 4
  %add63 = add nsw i32 %72, %75
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds i8, ptr %71, i64 %idxprom64
  %76 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %76 to i64
  %shl67 = shl i64 %conv66, 16
  %or68 = or i64 %or60, %shl67
  %or69 = or i64 %or68, 4278190080
  %77 = load ptr, ptr %cp.addr, align 8
  %arrayidx70 = getelementptr inbounds i64, ptr %77, i64 1
  store i64 %or69, ptr %arrayidx70, align 8
  %78 = load ptr, ptr %pp.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, ptr %78, i64 2
  %79 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %79 to i32
  store i32 %conv73, ptr %Y71, align 4
  %80 = load ptr, ptr %clamptab, align 8
  %81 = load i32, ptr %Y71, align 4
  %82 = load ptr, ptr %Crrtab, align 8
  %83 = load i32, ptr %Cr, align 4
  %idxprom74 = sext i32 %83 to i64
  %arrayidx75 = getelementptr inbounds i32, ptr %82, i64 %idxprom74
  %84 = load i32, ptr %arrayidx75, align 4
  %add76 = add nsw i32 %81, %84
  %idxprom77 = sext i32 %add76 to i64
  %arrayidx78 = getelementptr inbounds i8, ptr %80, i64 %idxprom77
  %85 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %85 to i64
  %86 = load ptr, ptr %clamptab, align 8
  %87 = load i32, ptr %Y71, align 4
  %88 = load ptr, ptr %Cbgtab, align 8
  %89 = load i32, ptr %Cb, align 4
  %idxprom80 = sext i32 %89 to i64
  %arrayidx81 = getelementptr inbounds i64, ptr %88, i64 %idxprom80
  %90 = load i64, ptr %arrayidx81, align 8
  %91 = load ptr, ptr %Crgtab, align 8
  %92 = load i32, ptr %Cr, align 4
  %idxprom82 = sext i32 %92 to i64
  %arrayidx83 = getelementptr inbounds i64, ptr %91, i64 %idxprom82
  %93 = load i64, ptr %arrayidx83, align 8
  %add84 = add nsw i64 %90, %93
  %shr85 = ashr i64 %add84, 16
  %conv86 = trunc i64 %shr85 to i32
  %add87 = add nsw i32 %87, %conv86
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds i8, ptr %86, i64 %idxprom88
  %94 = load i8, ptr %arrayidx89, align 1
  %conv90 = zext i8 %94 to i64
  %shl91 = shl i64 %conv90, 8
  %or92 = or i64 %conv79, %shl91
  %95 = load ptr, ptr %clamptab, align 8
  %96 = load i32, ptr %Y71, align 4
  %97 = load ptr, ptr %Cbbtab, align 8
  %98 = load i32, ptr %Cb, align 4
  %idxprom93 = sext i32 %98 to i64
  %arrayidx94 = getelementptr inbounds i32, ptr %97, i64 %idxprom93
  %99 = load i32, ptr %arrayidx94, align 4
  %add95 = add nsw i32 %96, %99
  %idxprom96 = sext i32 %add95 to i64
  %arrayidx97 = getelementptr inbounds i8, ptr %95, i64 %idxprom96
  %100 = load i8, ptr %arrayidx97, align 1
  %conv98 = zext i8 %100 to i64
  %shl99 = shl i64 %conv98, 16
  %or100 = or i64 %or92, %shl99
  %or101 = or i64 %or100, 4278190080
  %101 = load ptr, ptr %cp.addr, align 8
  %arrayidx102 = getelementptr inbounds i64, ptr %101, i64 2
  store i64 %or101, ptr %arrayidx102, align 8
  %102 = load ptr, ptr %pp.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, ptr %102, i64 3
  %103 = load i8, ptr %arrayidx104, align 1
  %conv105 = zext i8 %103 to i32
  store i32 %conv105, ptr %Y103, align 4
  %104 = load ptr, ptr %clamptab, align 8
  %105 = load i32, ptr %Y103, align 4
  %106 = load ptr, ptr %Crrtab, align 8
  %107 = load i32, ptr %Cr, align 4
  %idxprom106 = sext i32 %107 to i64
  %arrayidx107 = getelementptr inbounds i32, ptr %106, i64 %idxprom106
  %108 = load i32, ptr %arrayidx107, align 4
  %add108 = add nsw i32 %105, %108
  %idxprom109 = sext i32 %add108 to i64
  %arrayidx110 = getelementptr inbounds i8, ptr %104, i64 %idxprom109
  %109 = load i8, ptr %arrayidx110, align 1
  %conv111 = zext i8 %109 to i64
  %110 = load ptr, ptr %clamptab, align 8
  %111 = load i32, ptr %Y103, align 4
  %112 = load ptr, ptr %Cbgtab, align 8
  %113 = load i32, ptr %Cb, align 4
  %idxprom112 = sext i32 %113 to i64
  %arrayidx113 = getelementptr inbounds i64, ptr %112, i64 %idxprom112
  %114 = load i64, ptr %arrayidx113, align 8
  %115 = load ptr, ptr %Crgtab, align 8
  %116 = load i32, ptr %Cr, align 4
  %idxprom114 = sext i32 %116 to i64
  %arrayidx115 = getelementptr inbounds i64, ptr %115, i64 %idxprom114
  %117 = load i64, ptr %arrayidx115, align 8
  %add116 = add nsw i64 %114, %117
  %shr117 = ashr i64 %add116, 16
  %conv118 = trunc i64 %shr117 to i32
  %add119 = add nsw i32 %111, %conv118
  %idxprom120 = sext i32 %add119 to i64
  %arrayidx121 = getelementptr inbounds i8, ptr %110, i64 %idxprom120
  %118 = load i8, ptr %arrayidx121, align 1
  %conv122 = zext i8 %118 to i64
  %shl123 = shl i64 %conv122, 8
  %or124 = or i64 %conv111, %shl123
  %119 = load ptr, ptr %clamptab, align 8
  %120 = load i32, ptr %Y103, align 4
  %121 = load ptr, ptr %Cbbtab, align 8
  %122 = load i32, ptr %Cb, align 4
  %idxprom125 = sext i32 %122 to i64
  %arrayidx126 = getelementptr inbounds i32, ptr %121, i64 %idxprom125
  %123 = load i32, ptr %arrayidx126, align 4
  %add127 = add nsw i32 %120, %123
  %idxprom128 = sext i32 %add127 to i64
  %arrayidx129 = getelementptr inbounds i8, ptr %119, i64 %idxprom128
  %124 = load i8, ptr %arrayidx129, align 1
  %conv130 = zext i8 %124 to i64
  %shl131 = shl i64 %conv130, 16
  %or132 = or i64 %or124, %shl131
  %or133 = or i64 %or132, 4278190080
  %125 = load ptr, ptr %cp.addr, align 8
  %arrayidx134 = getelementptr inbounds i64, ptr %125, i64 3
  store i64 %or133, ptr %arrayidx134, align 8
  %126 = load ptr, ptr %pp.addr, align 8
  %arrayidx136 = getelementptr inbounds i8, ptr %126, i64 4
  %127 = load i8, ptr %arrayidx136, align 1
  %conv137 = zext i8 %127 to i32
  store i32 %conv137, ptr %Y135, align 4
  %128 = load ptr, ptr %clamptab, align 8
  %129 = load i32, ptr %Y135, align 4
  %130 = load ptr, ptr %Crrtab, align 8
  %131 = load i32, ptr %Cr, align 4
  %idxprom138 = sext i32 %131 to i64
  %arrayidx139 = getelementptr inbounds i32, ptr %130, i64 %idxprom138
  %132 = load i32, ptr %arrayidx139, align 4
  %add140 = add nsw i32 %129, %132
  %idxprom141 = sext i32 %add140 to i64
  %arrayidx142 = getelementptr inbounds i8, ptr %128, i64 %idxprom141
  %133 = load i8, ptr %arrayidx142, align 1
  %conv143 = zext i8 %133 to i64
  %134 = load ptr, ptr %clamptab, align 8
  %135 = load i32, ptr %Y135, align 4
  %136 = load ptr, ptr %Cbgtab, align 8
  %137 = load i32, ptr %Cb, align 4
  %idxprom144 = sext i32 %137 to i64
  %arrayidx145 = getelementptr inbounds i64, ptr %136, i64 %idxprom144
  %138 = load i64, ptr %arrayidx145, align 8
  %139 = load ptr, ptr %Crgtab, align 8
  %140 = load i32, ptr %Cr, align 4
  %idxprom146 = sext i32 %140 to i64
  %arrayidx147 = getelementptr inbounds i64, ptr %139, i64 %idxprom146
  %141 = load i64, ptr %arrayidx147, align 8
  %add148 = add nsw i64 %138, %141
  %shr149 = ashr i64 %add148, 16
  %conv150 = trunc i64 %shr149 to i32
  %add151 = add nsw i32 %135, %conv150
  %idxprom152 = sext i32 %add151 to i64
  %arrayidx153 = getelementptr inbounds i8, ptr %134, i64 %idxprom152
  %142 = load i8, ptr %arrayidx153, align 1
  %conv154 = zext i8 %142 to i64
  %shl155 = shl i64 %conv154, 8
  %or156 = or i64 %conv143, %shl155
  %143 = load ptr, ptr %clamptab, align 8
  %144 = load i32, ptr %Y135, align 4
  %145 = load ptr, ptr %Cbbtab, align 8
  %146 = load i32, ptr %Cb, align 4
  %idxprom157 = sext i32 %146 to i64
  %arrayidx158 = getelementptr inbounds i32, ptr %145, i64 %idxprom157
  %147 = load i32, ptr %arrayidx158, align 4
  %add159 = add nsw i32 %144, %147
  %idxprom160 = sext i32 %add159 to i64
  %arrayidx161 = getelementptr inbounds i8, ptr %143, i64 %idxprom160
  %148 = load i8, ptr %arrayidx161, align 1
  %conv162 = zext i8 %148 to i64
  %shl163 = shl i64 %conv162, 16
  %or164 = or i64 %or156, %shl163
  %or165 = or i64 %or164, 4278190080
  %149 = load ptr, ptr %cp1, align 8
  %arrayidx166 = getelementptr inbounds i64, ptr %149, i64 0
  store i64 %or165, ptr %arrayidx166, align 8
  %150 = load ptr, ptr %pp.addr, align 8
  %arrayidx168 = getelementptr inbounds i8, ptr %150, i64 5
  %151 = load i8, ptr %arrayidx168, align 1
  %conv169 = zext i8 %151 to i32
  store i32 %conv169, ptr %Y167, align 4
  %152 = load ptr, ptr %clamptab, align 8
  %153 = load i32, ptr %Y167, align 4
  %154 = load ptr, ptr %Crrtab, align 8
  %155 = load i32, ptr %Cr, align 4
  %idxprom170 = sext i32 %155 to i64
  %arrayidx171 = getelementptr inbounds i32, ptr %154, i64 %idxprom170
  %156 = load i32, ptr %arrayidx171, align 4
  %add172 = add nsw i32 %153, %156
  %idxprom173 = sext i32 %add172 to i64
  %arrayidx174 = getelementptr inbounds i8, ptr %152, i64 %idxprom173
  %157 = load i8, ptr %arrayidx174, align 1
  %conv175 = zext i8 %157 to i64
  %158 = load ptr, ptr %clamptab, align 8
  %159 = load i32, ptr %Y167, align 4
  %160 = load ptr, ptr %Cbgtab, align 8
  %161 = load i32, ptr %Cb, align 4
  %idxprom176 = sext i32 %161 to i64
  %arrayidx177 = getelementptr inbounds i64, ptr %160, i64 %idxprom176
  %162 = load i64, ptr %arrayidx177, align 8
  %163 = load ptr, ptr %Crgtab, align 8
  %164 = load i32, ptr %Cr, align 4
  %idxprom178 = sext i32 %164 to i64
  %arrayidx179 = getelementptr inbounds i64, ptr %163, i64 %idxprom178
  %165 = load i64, ptr %arrayidx179, align 8
  %add180 = add nsw i64 %162, %165
  %shr181 = ashr i64 %add180, 16
  %conv182 = trunc i64 %shr181 to i32
  %add183 = add nsw i32 %159, %conv182
  %idxprom184 = sext i32 %add183 to i64
  %arrayidx185 = getelementptr inbounds i8, ptr %158, i64 %idxprom184
  %166 = load i8, ptr %arrayidx185, align 1
  %conv186 = zext i8 %166 to i64
  %shl187 = shl i64 %conv186, 8
  %or188 = or i64 %conv175, %shl187
  %167 = load ptr, ptr %clamptab, align 8
  %168 = load i32, ptr %Y167, align 4
  %169 = load ptr, ptr %Cbbtab, align 8
  %170 = load i32, ptr %Cb, align 4
  %idxprom189 = sext i32 %170 to i64
  %arrayidx190 = getelementptr inbounds i32, ptr %169, i64 %idxprom189
  %171 = load i32, ptr %arrayidx190, align 4
  %add191 = add nsw i32 %168, %171
  %idxprom192 = sext i32 %add191 to i64
  %arrayidx193 = getelementptr inbounds i8, ptr %167, i64 %idxprom192
  %172 = load i8, ptr %arrayidx193, align 1
  %conv194 = zext i8 %172 to i64
  %shl195 = shl i64 %conv194, 16
  %or196 = or i64 %or188, %shl195
  %or197 = or i64 %or196, 4278190080
  %173 = load ptr, ptr %cp1, align 8
  %arrayidx198 = getelementptr inbounds i64, ptr %173, i64 1
  store i64 %or197, ptr %arrayidx198, align 8
  %174 = load ptr, ptr %pp.addr, align 8
  %arrayidx200 = getelementptr inbounds i8, ptr %174, i64 6
  %175 = load i8, ptr %arrayidx200, align 1
  %conv201 = zext i8 %175 to i32
  store i32 %conv201, ptr %Y199, align 4
  %176 = load ptr, ptr %clamptab, align 8
  %177 = load i32, ptr %Y199, align 4
  %178 = load ptr, ptr %Crrtab, align 8
  %179 = load i32, ptr %Cr, align 4
  %idxprom202 = sext i32 %179 to i64
  %arrayidx203 = getelementptr inbounds i32, ptr %178, i64 %idxprom202
  %180 = load i32, ptr %arrayidx203, align 4
  %add204 = add nsw i32 %177, %180
  %idxprom205 = sext i32 %add204 to i64
  %arrayidx206 = getelementptr inbounds i8, ptr %176, i64 %idxprom205
  %181 = load i8, ptr %arrayidx206, align 1
  %conv207 = zext i8 %181 to i64
  %182 = load ptr, ptr %clamptab, align 8
  %183 = load i32, ptr %Y199, align 4
  %184 = load ptr, ptr %Cbgtab, align 8
  %185 = load i32, ptr %Cb, align 4
  %idxprom208 = sext i32 %185 to i64
  %arrayidx209 = getelementptr inbounds i64, ptr %184, i64 %idxprom208
  %186 = load i64, ptr %arrayidx209, align 8
  %187 = load ptr, ptr %Crgtab, align 8
  %188 = load i32, ptr %Cr, align 4
  %idxprom210 = sext i32 %188 to i64
  %arrayidx211 = getelementptr inbounds i64, ptr %187, i64 %idxprom210
  %189 = load i64, ptr %arrayidx211, align 8
  %add212 = add nsw i64 %186, %189
  %shr213 = ashr i64 %add212, 16
  %conv214 = trunc i64 %shr213 to i32
  %add215 = add nsw i32 %183, %conv214
  %idxprom216 = sext i32 %add215 to i64
  %arrayidx217 = getelementptr inbounds i8, ptr %182, i64 %idxprom216
  %190 = load i8, ptr %arrayidx217, align 1
  %conv218 = zext i8 %190 to i64
  %shl219 = shl i64 %conv218, 8
  %or220 = or i64 %conv207, %shl219
  %191 = load ptr, ptr %clamptab, align 8
  %192 = load i32, ptr %Y199, align 4
  %193 = load ptr, ptr %Cbbtab, align 8
  %194 = load i32, ptr %Cb, align 4
  %idxprom221 = sext i32 %194 to i64
  %arrayidx222 = getelementptr inbounds i32, ptr %193, i64 %idxprom221
  %195 = load i32, ptr %arrayidx222, align 4
  %add223 = add nsw i32 %192, %195
  %idxprom224 = sext i32 %add223 to i64
  %arrayidx225 = getelementptr inbounds i8, ptr %191, i64 %idxprom224
  %196 = load i8, ptr %arrayidx225, align 1
  %conv226 = zext i8 %196 to i64
  %shl227 = shl i64 %conv226, 16
  %or228 = or i64 %or220, %shl227
  %or229 = or i64 %or228, 4278190080
  %197 = load ptr, ptr %cp1, align 8
  %arrayidx230 = getelementptr inbounds i64, ptr %197, i64 2
  store i64 %or229, ptr %arrayidx230, align 8
  %198 = load ptr, ptr %pp.addr, align 8
  %arrayidx232 = getelementptr inbounds i8, ptr %198, i64 7
  %199 = load i8, ptr %arrayidx232, align 1
  %conv233 = zext i8 %199 to i32
  store i32 %conv233, ptr %Y231, align 4
  %200 = load ptr, ptr %clamptab, align 8
  %201 = load i32, ptr %Y231, align 4
  %202 = load ptr, ptr %Crrtab, align 8
  %203 = load i32, ptr %Cr, align 4
  %idxprom234 = sext i32 %203 to i64
  %arrayidx235 = getelementptr inbounds i32, ptr %202, i64 %idxprom234
  %204 = load i32, ptr %arrayidx235, align 4
  %add236 = add nsw i32 %201, %204
  %idxprom237 = sext i32 %add236 to i64
  %arrayidx238 = getelementptr inbounds i8, ptr %200, i64 %idxprom237
  %205 = load i8, ptr %arrayidx238, align 1
  %conv239 = zext i8 %205 to i64
  %206 = load ptr, ptr %clamptab, align 8
  %207 = load i32, ptr %Y231, align 4
  %208 = load ptr, ptr %Cbgtab, align 8
  %209 = load i32, ptr %Cb, align 4
  %idxprom240 = sext i32 %209 to i64
  %arrayidx241 = getelementptr inbounds i64, ptr %208, i64 %idxprom240
  %210 = load i64, ptr %arrayidx241, align 8
  %211 = load ptr, ptr %Crgtab, align 8
  %212 = load i32, ptr %Cr, align 4
  %idxprom242 = sext i32 %212 to i64
  %arrayidx243 = getelementptr inbounds i64, ptr %211, i64 %idxprom242
  %213 = load i64, ptr %arrayidx243, align 8
  %add244 = add nsw i64 %210, %213
  %shr245 = ashr i64 %add244, 16
  %conv246 = trunc i64 %shr245 to i32
  %add247 = add nsw i32 %207, %conv246
  %idxprom248 = sext i32 %add247 to i64
  %arrayidx249 = getelementptr inbounds i8, ptr %206, i64 %idxprom248
  %214 = load i8, ptr %arrayidx249, align 1
  %conv250 = zext i8 %214 to i64
  %shl251 = shl i64 %conv250, 8
  %or252 = or i64 %conv239, %shl251
  %215 = load ptr, ptr %clamptab, align 8
  %216 = load i32, ptr %Y231, align 4
  %217 = load ptr, ptr %Cbbtab, align 8
  %218 = load i32, ptr %Cb, align 4
  %idxprom253 = sext i32 %218 to i64
  %arrayidx254 = getelementptr inbounds i32, ptr %217, i64 %idxprom253
  %219 = load i32, ptr %arrayidx254, align 4
  %add255 = add nsw i32 %216, %219
  %idxprom256 = sext i32 %add255 to i64
  %arrayidx257 = getelementptr inbounds i8, ptr %215, i64 %idxprom256
  %220 = load i8, ptr %arrayidx257, align 1
  %conv258 = zext i8 %220 to i64
  %shl259 = shl i64 %conv258, 16
  %or260 = or i64 %or252, %shl259
  %or261 = or i64 %or260, 4278190080
  %221 = load ptr, ptr %cp1, align 8
  %arrayidx262 = getelementptr inbounds i64, ptr %221, i64 3
  store i64 %or261, ptr %arrayidx262, align 8
  %222 = load ptr, ptr %pp.addr, align 8
  %arrayidx264 = getelementptr inbounds i8, ptr %222, i64 8
  %223 = load i8, ptr %arrayidx264, align 1
  %conv265 = zext i8 %223 to i32
  store i32 %conv265, ptr %Y263, align 4
  %224 = load ptr, ptr %clamptab, align 8
  %225 = load i32, ptr %Y263, align 4
  %226 = load ptr, ptr %Crrtab, align 8
  %227 = load i32, ptr %Cr, align 4
  %idxprom266 = sext i32 %227 to i64
  %arrayidx267 = getelementptr inbounds i32, ptr %226, i64 %idxprom266
  %228 = load i32, ptr %arrayidx267, align 4
  %add268 = add nsw i32 %225, %228
  %idxprom269 = sext i32 %add268 to i64
  %arrayidx270 = getelementptr inbounds i8, ptr %224, i64 %idxprom269
  %229 = load i8, ptr %arrayidx270, align 1
  %conv271 = zext i8 %229 to i64
  %230 = load ptr, ptr %clamptab, align 8
  %231 = load i32, ptr %Y263, align 4
  %232 = load ptr, ptr %Cbgtab, align 8
  %233 = load i32, ptr %Cb, align 4
  %idxprom272 = sext i32 %233 to i64
  %arrayidx273 = getelementptr inbounds i64, ptr %232, i64 %idxprom272
  %234 = load i64, ptr %arrayidx273, align 8
  %235 = load ptr, ptr %Crgtab, align 8
  %236 = load i32, ptr %Cr, align 4
  %idxprom274 = sext i32 %236 to i64
  %arrayidx275 = getelementptr inbounds i64, ptr %235, i64 %idxprom274
  %237 = load i64, ptr %arrayidx275, align 8
  %add276 = add nsw i64 %234, %237
  %shr277 = ashr i64 %add276, 16
  %conv278 = trunc i64 %shr277 to i32
  %add279 = add nsw i32 %231, %conv278
  %idxprom280 = sext i32 %add279 to i64
  %arrayidx281 = getelementptr inbounds i8, ptr %230, i64 %idxprom280
  %238 = load i8, ptr %arrayidx281, align 1
  %conv282 = zext i8 %238 to i64
  %shl283 = shl i64 %conv282, 8
  %or284 = or i64 %conv271, %shl283
  %239 = load ptr, ptr %clamptab, align 8
  %240 = load i32, ptr %Y263, align 4
  %241 = load ptr, ptr %Cbbtab, align 8
  %242 = load i32, ptr %Cb, align 4
  %idxprom285 = sext i32 %242 to i64
  %arrayidx286 = getelementptr inbounds i32, ptr %241, i64 %idxprom285
  %243 = load i32, ptr %arrayidx286, align 4
  %add287 = add nsw i32 %240, %243
  %idxprom288 = sext i32 %add287 to i64
  %arrayidx289 = getelementptr inbounds i8, ptr %239, i64 %idxprom288
  %244 = load i8, ptr %arrayidx289, align 1
  %conv290 = zext i8 %244 to i64
  %shl291 = shl i64 %conv290, 16
  %or292 = or i64 %or284, %shl291
  %or293 = or i64 %or292, 4278190080
  %245 = load ptr, ptr %cp2, align 8
  %arrayidx294 = getelementptr inbounds i64, ptr %245, i64 0
  store i64 %or293, ptr %arrayidx294, align 8
  %246 = load ptr, ptr %pp.addr, align 8
  %arrayidx296 = getelementptr inbounds i8, ptr %246, i64 9
  %247 = load i8, ptr %arrayidx296, align 1
  %conv297 = zext i8 %247 to i32
  store i32 %conv297, ptr %Y295, align 4
  %248 = load ptr, ptr %clamptab, align 8
  %249 = load i32, ptr %Y295, align 4
  %250 = load ptr, ptr %Crrtab, align 8
  %251 = load i32, ptr %Cr, align 4
  %idxprom298 = sext i32 %251 to i64
  %arrayidx299 = getelementptr inbounds i32, ptr %250, i64 %idxprom298
  %252 = load i32, ptr %arrayidx299, align 4
  %add300 = add nsw i32 %249, %252
  %idxprom301 = sext i32 %add300 to i64
  %arrayidx302 = getelementptr inbounds i8, ptr %248, i64 %idxprom301
  %253 = load i8, ptr %arrayidx302, align 1
  %conv303 = zext i8 %253 to i64
  %254 = load ptr, ptr %clamptab, align 8
  %255 = load i32, ptr %Y295, align 4
  %256 = load ptr, ptr %Cbgtab, align 8
  %257 = load i32, ptr %Cb, align 4
  %idxprom304 = sext i32 %257 to i64
  %arrayidx305 = getelementptr inbounds i64, ptr %256, i64 %idxprom304
  %258 = load i64, ptr %arrayidx305, align 8
  %259 = load ptr, ptr %Crgtab, align 8
  %260 = load i32, ptr %Cr, align 4
  %idxprom306 = sext i32 %260 to i64
  %arrayidx307 = getelementptr inbounds i64, ptr %259, i64 %idxprom306
  %261 = load i64, ptr %arrayidx307, align 8
  %add308 = add nsw i64 %258, %261
  %shr309 = ashr i64 %add308, 16
  %conv310 = trunc i64 %shr309 to i32
  %add311 = add nsw i32 %255, %conv310
  %idxprom312 = sext i32 %add311 to i64
  %arrayidx313 = getelementptr inbounds i8, ptr %254, i64 %idxprom312
  %262 = load i8, ptr %arrayidx313, align 1
  %conv314 = zext i8 %262 to i64
  %shl315 = shl i64 %conv314, 8
  %or316 = or i64 %conv303, %shl315
  %263 = load ptr, ptr %clamptab, align 8
  %264 = load i32, ptr %Y295, align 4
  %265 = load ptr, ptr %Cbbtab, align 8
  %266 = load i32, ptr %Cb, align 4
  %idxprom317 = sext i32 %266 to i64
  %arrayidx318 = getelementptr inbounds i32, ptr %265, i64 %idxprom317
  %267 = load i32, ptr %arrayidx318, align 4
  %add319 = add nsw i32 %264, %267
  %idxprom320 = sext i32 %add319 to i64
  %arrayidx321 = getelementptr inbounds i8, ptr %263, i64 %idxprom320
  %268 = load i8, ptr %arrayidx321, align 1
  %conv322 = zext i8 %268 to i64
  %shl323 = shl i64 %conv322, 16
  %or324 = or i64 %or316, %shl323
  %or325 = or i64 %or324, 4278190080
  %269 = load ptr, ptr %cp2, align 8
  %arrayidx326 = getelementptr inbounds i64, ptr %269, i64 1
  store i64 %or325, ptr %arrayidx326, align 8
  %270 = load ptr, ptr %pp.addr, align 8
  %arrayidx328 = getelementptr inbounds i8, ptr %270, i64 10
  %271 = load i8, ptr %arrayidx328, align 1
  %conv329 = zext i8 %271 to i32
  store i32 %conv329, ptr %Y327, align 4
  %272 = load ptr, ptr %clamptab, align 8
  %273 = load i32, ptr %Y327, align 4
  %274 = load ptr, ptr %Crrtab, align 8
  %275 = load i32, ptr %Cr, align 4
  %idxprom330 = sext i32 %275 to i64
  %arrayidx331 = getelementptr inbounds i32, ptr %274, i64 %idxprom330
  %276 = load i32, ptr %arrayidx331, align 4
  %add332 = add nsw i32 %273, %276
  %idxprom333 = sext i32 %add332 to i64
  %arrayidx334 = getelementptr inbounds i8, ptr %272, i64 %idxprom333
  %277 = load i8, ptr %arrayidx334, align 1
  %conv335 = zext i8 %277 to i64
  %278 = load ptr, ptr %clamptab, align 8
  %279 = load i32, ptr %Y327, align 4
  %280 = load ptr, ptr %Cbgtab, align 8
  %281 = load i32, ptr %Cb, align 4
  %idxprom336 = sext i32 %281 to i64
  %arrayidx337 = getelementptr inbounds i64, ptr %280, i64 %idxprom336
  %282 = load i64, ptr %arrayidx337, align 8
  %283 = load ptr, ptr %Crgtab, align 8
  %284 = load i32, ptr %Cr, align 4
  %idxprom338 = sext i32 %284 to i64
  %arrayidx339 = getelementptr inbounds i64, ptr %283, i64 %idxprom338
  %285 = load i64, ptr %arrayidx339, align 8
  %add340 = add nsw i64 %282, %285
  %shr341 = ashr i64 %add340, 16
  %conv342 = trunc i64 %shr341 to i32
  %add343 = add nsw i32 %279, %conv342
  %idxprom344 = sext i32 %add343 to i64
  %arrayidx345 = getelementptr inbounds i8, ptr %278, i64 %idxprom344
  %286 = load i8, ptr %arrayidx345, align 1
  %conv346 = zext i8 %286 to i64
  %shl347 = shl i64 %conv346, 8
  %or348 = or i64 %conv335, %shl347
  %287 = load ptr, ptr %clamptab, align 8
  %288 = load i32, ptr %Y327, align 4
  %289 = load ptr, ptr %Cbbtab, align 8
  %290 = load i32, ptr %Cb, align 4
  %idxprom349 = sext i32 %290 to i64
  %arrayidx350 = getelementptr inbounds i32, ptr %289, i64 %idxprom349
  %291 = load i32, ptr %arrayidx350, align 4
  %add351 = add nsw i32 %288, %291
  %idxprom352 = sext i32 %add351 to i64
  %arrayidx353 = getelementptr inbounds i8, ptr %287, i64 %idxprom352
  %292 = load i8, ptr %arrayidx353, align 1
  %conv354 = zext i8 %292 to i64
  %shl355 = shl i64 %conv354, 16
  %or356 = or i64 %or348, %shl355
  %or357 = or i64 %or356, 4278190080
  %293 = load ptr, ptr %cp2, align 8
  %arrayidx358 = getelementptr inbounds i64, ptr %293, i64 2
  store i64 %or357, ptr %arrayidx358, align 8
  %294 = load ptr, ptr %pp.addr, align 8
  %arrayidx360 = getelementptr inbounds i8, ptr %294, i64 11
  %295 = load i8, ptr %arrayidx360, align 1
  %conv361 = zext i8 %295 to i32
  store i32 %conv361, ptr %Y359, align 4
  %296 = load ptr, ptr %clamptab, align 8
  %297 = load i32, ptr %Y359, align 4
  %298 = load ptr, ptr %Crrtab, align 8
  %299 = load i32, ptr %Cr, align 4
  %idxprom362 = sext i32 %299 to i64
  %arrayidx363 = getelementptr inbounds i32, ptr %298, i64 %idxprom362
  %300 = load i32, ptr %arrayidx363, align 4
  %add364 = add nsw i32 %297, %300
  %idxprom365 = sext i32 %add364 to i64
  %arrayidx366 = getelementptr inbounds i8, ptr %296, i64 %idxprom365
  %301 = load i8, ptr %arrayidx366, align 1
  %conv367 = zext i8 %301 to i64
  %302 = load ptr, ptr %clamptab, align 8
  %303 = load i32, ptr %Y359, align 4
  %304 = load ptr, ptr %Cbgtab, align 8
  %305 = load i32, ptr %Cb, align 4
  %idxprom368 = sext i32 %305 to i64
  %arrayidx369 = getelementptr inbounds i64, ptr %304, i64 %idxprom368
  %306 = load i64, ptr %arrayidx369, align 8
  %307 = load ptr, ptr %Crgtab, align 8
  %308 = load i32, ptr %Cr, align 4
  %idxprom370 = sext i32 %308 to i64
  %arrayidx371 = getelementptr inbounds i64, ptr %307, i64 %idxprom370
  %309 = load i64, ptr %arrayidx371, align 8
  %add372 = add nsw i64 %306, %309
  %shr373 = ashr i64 %add372, 16
  %conv374 = trunc i64 %shr373 to i32
  %add375 = add nsw i32 %303, %conv374
  %idxprom376 = sext i32 %add375 to i64
  %arrayidx377 = getelementptr inbounds i8, ptr %302, i64 %idxprom376
  %310 = load i8, ptr %arrayidx377, align 1
  %conv378 = zext i8 %310 to i64
  %shl379 = shl i64 %conv378, 8
  %or380 = or i64 %conv367, %shl379
  %311 = load ptr, ptr %clamptab, align 8
  %312 = load i32, ptr %Y359, align 4
  %313 = load ptr, ptr %Cbbtab, align 8
  %314 = load i32, ptr %Cb, align 4
  %idxprom381 = sext i32 %314 to i64
  %arrayidx382 = getelementptr inbounds i32, ptr %313, i64 %idxprom381
  %315 = load i32, ptr %arrayidx382, align 4
  %add383 = add nsw i32 %312, %315
  %idxprom384 = sext i32 %add383 to i64
  %arrayidx385 = getelementptr inbounds i8, ptr %311, i64 %idxprom384
  %316 = load i8, ptr %arrayidx385, align 1
  %conv386 = zext i8 %316 to i64
  %shl387 = shl i64 %conv386, 16
  %or388 = or i64 %or380, %shl387
  %or389 = or i64 %or388, 4278190080
  %317 = load ptr, ptr %cp2, align 8
  %arrayidx390 = getelementptr inbounds i64, ptr %317, i64 3
  store i64 %or389, ptr %arrayidx390, align 8
  %318 = load ptr, ptr %pp.addr, align 8
  %arrayidx392 = getelementptr inbounds i8, ptr %318, i64 12
  %319 = load i8, ptr %arrayidx392, align 1
  %conv393 = zext i8 %319 to i32
  store i32 %conv393, ptr %Y391, align 4
  %320 = load ptr, ptr %clamptab, align 8
  %321 = load i32, ptr %Y391, align 4
  %322 = load ptr, ptr %Crrtab, align 8
  %323 = load i32, ptr %Cr, align 4
  %idxprom394 = sext i32 %323 to i64
  %arrayidx395 = getelementptr inbounds i32, ptr %322, i64 %idxprom394
  %324 = load i32, ptr %arrayidx395, align 4
  %add396 = add nsw i32 %321, %324
  %idxprom397 = sext i32 %add396 to i64
  %arrayidx398 = getelementptr inbounds i8, ptr %320, i64 %idxprom397
  %325 = load i8, ptr %arrayidx398, align 1
  %conv399 = zext i8 %325 to i64
  %326 = load ptr, ptr %clamptab, align 8
  %327 = load i32, ptr %Y391, align 4
  %328 = load ptr, ptr %Cbgtab, align 8
  %329 = load i32, ptr %Cb, align 4
  %idxprom400 = sext i32 %329 to i64
  %arrayidx401 = getelementptr inbounds i64, ptr %328, i64 %idxprom400
  %330 = load i64, ptr %arrayidx401, align 8
  %331 = load ptr, ptr %Crgtab, align 8
  %332 = load i32, ptr %Cr, align 4
  %idxprom402 = sext i32 %332 to i64
  %arrayidx403 = getelementptr inbounds i64, ptr %331, i64 %idxprom402
  %333 = load i64, ptr %arrayidx403, align 8
  %add404 = add nsw i64 %330, %333
  %shr405 = ashr i64 %add404, 16
  %conv406 = trunc i64 %shr405 to i32
  %add407 = add nsw i32 %327, %conv406
  %idxprom408 = sext i32 %add407 to i64
  %arrayidx409 = getelementptr inbounds i8, ptr %326, i64 %idxprom408
  %334 = load i8, ptr %arrayidx409, align 1
  %conv410 = zext i8 %334 to i64
  %shl411 = shl i64 %conv410, 8
  %or412 = or i64 %conv399, %shl411
  %335 = load ptr, ptr %clamptab, align 8
  %336 = load i32, ptr %Y391, align 4
  %337 = load ptr, ptr %Cbbtab, align 8
  %338 = load i32, ptr %Cb, align 4
  %idxprom413 = sext i32 %338 to i64
  %arrayidx414 = getelementptr inbounds i32, ptr %337, i64 %idxprom413
  %339 = load i32, ptr %arrayidx414, align 4
  %add415 = add nsw i32 %336, %339
  %idxprom416 = sext i32 %add415 to i64
  %arrayidx417 = getelementptr inbounds i8, ptr %335, i64 %idxprom416
  %340 = load i8, ptr %arrayidx417, align 1
  %conv418 = zext i8 %340 to i64
  %shl419 = shl i64 %conv418, 16
  %or420 = or i64 %or412, %shl419
  %or421 = or i64 %or420, 4278190080
  %341 = load ptr, ptr %cp3, align 8
  %arrayidx422 = getelementptr inbounds i64, ptr %341, i64 0
  store i64 %or421, ptr %arrayidx422, align 8
  %342 = load ptr, ptr %pp.addr, align 8
  %arrayidx424 = getelementptr inbounds i8, ptr %342, i64 13
  %343 = load i8, ptr %arrayidx424, align 1
  %conv425 = zext i8 %343 to i32
  store i32 %conv425, ptr %Y423, align 4
  %344 = load ptr, ptr %clamptab, align 8
  %345 = load i32, ptr %Y423, align 4
  %346 = load ptr, ptr %Crrtab, align 8
  %347 = load i32, ptr %Cr, align 4
  %idxprom426 = sext i32 %347 to i64
  %arrayidx427 = getelementptr inbounds i32, ptr %346, i64 %idxprom426
  %348 = load i32, ptr %arrayidx427, align 4
  %add428 = add nsw i32 %345, %348
  %idxprom429 = sext i32 %add428 to i64
  %arrayidx430 = getelementptr inbounds i8, ptr %344, i64 %idxprom429
  %349 = load i8, ptr %arrayidx430, align 1
  %conv431 = zext i8 %349 to i64
  %350 = load ptr, ptr %clamptab, align 8
  %351 = load i32, ptr %Y423, align 4
  %352 = load ptr, ptr %Cbgtab, align 8
  %353 = load i32, ptr %Cb, align 4
  %idxprom432 = sext i32 %353 to i64
  %arrayidx433 = getelementptr inbounds i64, ptr %352, i64 %idxprom432
  %354 = load i64, ptr %arrayidx433, align 8
  %355 = load ptr, ptr %Crgtab, align 8
  %356 = load i32, ptr %Cr, align 4
  %idxprom434 = sext i32 %356 to i64
  %arrayidx435 = getelementptr inbounds i64, ptr %355, i64 %idxprom434
  %357 = load i64, ptr %arrayidx435, align 8
  %add436 = add nsw i64 %354, %357
  %shr437 = ashr i64 %add436, 16
  %conv438 = trunc i64 %shr437 to i32
  %add439 = add nsw i32 %351, %conv438
  %idxprom440 = sext i32 %add439 to i64
  %arrayidx441 = getelementptr inbounds i8, ptr %350, i64 %idxprom440
  %358 = load i8, ptr %arrayidx441, align 1
  %conv442 = zext i8 %358 to i64
  %shl443 = shl i64 %conv442, 8
  %or444 = or i64 %conv431, %shl443
  %359 = load ptr, ptr %clamptab, align 8
  %360 = load i32, ptr %Y423, align 4
  %361 = load ptr, ptr %Cbbtab, align 8
  %362 = load i32, ptr %Cb, align 4
  %idxprom445 = sext i32 %362 to i64
  %arrayidx446 = getelementptr inbounds i32, ptr %361, i64 %idxprom445
  %363 = load i32, ptr %arrayidx446, align 4
  %add447 = add nsw i32 %360, %363
  %idxprom448 = sext i32 %add447 to i64
  %arrayidx449 = getelementptr inbounds i8, ptr %359, i64 %idxprom448
  %364 = load i8, ptr %arrayidx449, align 1
  %conv450 = zext i8 %364 to i64
  %shl451 = shl i64 %conv450, 16
  %or452 = or i64 %or444, %shl451
  %or453 = or i64 %or452, 4278190080
  %365 = load ptr, ptr %cp3, align 8
  %arrayidx454 = getelementptr inbounds i64, ptr %365, i64 1
  store i64 %or453, ptr %arrayidx454, align 8
  %366 = load ptr, ptr %pp.addr, align 8
  %arrayidx456 = getelementptr inbounds i8, ptr %366, i64 14
  %367 = load i8, ptr %arrayidx456, align 1
  %conv457 = zext i8 %367 to i32
  store i32 %conv457, ptr %Y455, align 4
  %368 = load ptr, ptr %clamptab, align 8
  %369 = load i32, ptr %Y455, align 4
  %370 = load ptr, ptr %Crrtab, align 8
  %371 = load i32, ptr %Cr, align 4
  %idxprom458 = sext i32 %371 to i64
  %arrayidx459 = getelementptr inbounds i32, ptr %370, i64 %idxprom458
  %372 = load i32, ptr %arrayidx459, align 4
  %add460 = add nsw i32 %369, %372
  %idxprom461 = sext i32 %add460 to i64
  %arrayidx462 = getelementptr inbounds i8, ptr %368, i64 %idxprom461
  %373 = load i8, ptr %arrayidx462, align 1
  %conv463 = zext i8 %373 to i64
  %374 = load ptr, ptr %clamptab, align 8
  %375 = load i32, ptr %Y455, align 4
  %376 = load ptr, ptr %Cbgtab, align 8
  %377 = load i32, ptr %Cb, align 4
  %idxprom464 = sext i32 %377 to i64
  %arrayidx465 = getelementptr inbounds i64, ptr %376, i64 %idxprom464
  %378 = load i64, ptr %arrayidx465, align 8
  %379 = load ptr, ptr %Crgtab, align 8
  %380 = load i32, ptr %Cr, align 4
  %idxprom466 = sext i32 %380 to i64
  %arrayidx467 = getelementptr inbounds i64, ptr %379, i64 %idxprom466
  %381 = load i64, ptr %arrayidx467, align 8
  %add468 = add nsw i64 %378, %381
  %shr469 = ashr i64 %add468, 16
  %conv470 = trunc i64 %shr469 to i32
  %add471 = add nsw i32 %375, %conv470
  %idxprom472 = sext i32 %add471 to i64
  %arrayidx473 = getelementptr inbounds i8, ptr %374, i64 %idxprom472
  %382 = load i8, ptr %arrayidx473, align 1
  %conv474 = zext i8 %382 to i64
  %shl475 = shl i64 %conv474, 8
  %or476 = or i64 %conv463, %shl475
  %383 = load ptr, ptr %clamptab, align 8
  %384 = load i32, ptr %Y455, align 4
  %385 = load ptr, ptr %Cbbtab, align 8
  %386 = load i32, ptr %Cb, align 4
  %idxprom477 = sext i32 %386 to i64
  %arrayidx478 = getelementptr inbounds i32, ptr %385, i64 %idxprom477
  %387 = load i32, ptr %arrayidx478, align 4
  %add479 = add nsw i32 %384, %387
  %idxprom480 = sext i32 %add479 to i64
  %arrayidx481 = getelementptr inbounds i8, ptr %383, i64 %idxprom480
  %388 = load i8, ptr %arrayidx481, align 1
  %conv482 = zext i8 %388 to i64
  %shl483 = shl i64 %conv482, 16
  %or484 = or i64 %or476, %shl483
  %or485 = or i64 %or484, 4278190080
  %389 = load ptr, ptr %cp3, align 8
  %arrayidx486 = getelementptr inbounds i64, ptr %389, i64 2
  store i64 %or485, ptr %arrayidx486, align 8
  %390 = load ptr, ptr %pp.addr, align 8
  %arrayidx488 = getelementptr inbounds i8, ptr %390, i64 15
  %391 = load i8, ptr %arrayidx488, align 1
  %conv489 = zext i8 %391 to i32
  store i32 %conv489, ptr %Y487, align 4
  %392 = load ptr, ptr %clamptab, align 8
  %393 = load i32, ptr %Y487, align 4
  %394 = load ptr, ptr %Crrtab, align 8
  %395 = load i32, ptr %Cr, align 4
  %idxprom490 = sext i32 %395 to i64
  %arrayidx491 = getelementptr inbounds i32, ptr %394, i64 %idxprom490
  %396 = load i32, ptr %arrayidx491, align 4
  %add492 = add nsw i32 %393, %396
  %idxprom493 = sext i32 %add492 to i64
  %arrayidx494 = getelementptr inbounds i8, ptr %392, i64 %idxprom493
  %397 = load i8, ptr %arrayidx494, align 1
  %conv495 = zext i8 %397 to i64
  %398 = load ptr, ptr %clamptab, align 8
  %399 = load i32, ptr %Y487, align 4
  %400 = load ptr, ptr %Cbgtab, align 8
  %401 = load i32, ptr %Cb, align 4
  %idxprom496 = sext i32 %401 to i64
  %arrayidx497 = getelementptr inbounds i64, ptr %400, i64 %idxprom496
  %402 = load i64, ptr %arrayidx497, align 8
  %403 = load ptr, ptr %Crgtab, align 8
  %404 = load i32, ptr %Cr, align 4
  %idxprom498 = sext i32 %404 to i64
  %arrayidx499 = getelementptr inbounds i64, ptr %403, i64 %idxprom498
  %405 = load i64, ptr %arrayidx499, align 8
  %add500 = add nsw i64 %402, %405
  %shr501 = ashr i64 %add500, 16
  %conv502 = trunc i64 %shr501 to i32
  %add503 = add nsw i32 %399, %conv502
  %idxprom504 = sext i32 %add503 to i64
  %arrayidx505 = getelementptr inbounds i8, ptr %398, i64 %idxprom504
  %406 = load i8, ptr %arrayidx505, align 1
  %conv506 = zext i8 %406 to i64
  %shl507 = shl i64 %conv506, 8
  %or508 = or i64 %conv495, %shl507
  %407 = load ptr, ptr %clamptab, align 8
  %408 = load i32, ptr %Y487, align 4
  %409 = load ptr, ptr %Cbbtab, align 8
  %410 = load i32, ptr %Cb, align 4
  %idxprom509 = sext i32 %410 to i64
  %arrayidx510 = getelementptr inbounds i32, ptr %409, i64 %idxprom509
  %411 = load i32, ptr %arrayidx510, align 4
  %add511 = add nsw i32 %408, %411
  %idxprom512 = sext i32 %add511 to i64
  %arrayidx513 = getelementptr inbounds i8, ptr %407, i64 %idxprom512
  %412 = load i8, ptr %arrayidx513, align 1
  %conv514 = zext i8 %412 to i64
  %shl515 = shl i64 %conv514, 16
  %or516 = or i64 %or508, %shl515
  %or517 = or i64 %or516, 4278190080
  %413 = load ptr, ptr %cp3, align 8
  %arrayidx518 = getelementptr inbounds i64, ptr %413, i64 3
  store i64 %or517, ptr %arrayidx518, align 8
  %414 = load ptr, ptr %cp.addr, align 8
  %add.ptr519 = getelementptr inbounds i64, ptr %414, i64 4
  store ptr %add.ptr519, ptr %cp.addr, align 8
  %415 = load ptr, ptr %cp1, align 8
  %add.ptr520 = getelementptr inbounds i64, ptr %415, i64 4
  store ptr %add.ptr520, ptr %cp1, align 8
  %416 = load ptr, ptr %cp2, align 8
  %add.ptr521 = getelementptr inbounds i64, ptr %416, i64 4
  store ptr %add.ptr521, ptr %cp2, align 8
  %417 = load ptr, ptr %cp3, align 8
  %add.ptr522 = getelementptr inbounds i64, ptr %417, i64 4
  store ptr %add.ptr522, ptr %cp3, align 8
  %418 = load ptr, ptr %pp.addr, align 8
  %add.ptr523 = getelementptr inbounds i8, ptr %418, i64 18
  store ptr %add.ptr523, ptr %pp.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %419 = load i64, ptr %x.addr, align 8
  %dec = add i64 %419, -1
  store i64 %dec, ptr %x.addr, align 8
  %tobool = icmp ne i64 %dec, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !57

do.end:                                           ; preds = %do.cond
  %420 = load i64, ptr %incr, align 8
  %421 = load ptr, ptr %cp.addr, align 8
  %add.ptr524 = getelementptr inbounds i64, ptr %421, i64 %420
  store ptr %add.ptr524, ptr %cp.addr, align 8
  %422 = load i64, ptr %incr, align 8
  %423 = load ptr, ptr %cp1, align 8
  %add.ptr525 = getelementptr inbounds i64, ptr %423, i64 %422
  store ptr %add.ptr525, ptr %cp1, align 8
  %424 = load i64, ptr %incr, align 8
  %425 = load ptr, ptr %cp2, align 8
  %add.ptr526 = getelementptr inbounds i64, ptr %425, i64 %424
  store ptr %add.ptr526, ptr %cp2, align 8
  %426 = load i64, ptr %incr, align 8
  %427 = load ptr, ptr %cp3, align 8
  %add.ptr527 = getelementptr inbounds i64, ptr %427, i64 %426
  store ptr %add.ptr527, ptr %cp3, align 8
  %428 = load i64, ptr %fromskew.addr, align 8
  %429 = load ptr, ptr %pp.addr, align 8
  %add.ptr528 = getelementptr inbounds i8, ptr %429, i64 %428
  store ptr %add.ptr528, ptr %pp.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %430 = load i64, ptr %h.addr, align 8
  %sub = sub i64 %430, 4
  store i64 %sub, ptr %h.addr, align 8
  br label %for.cond, !llvm.loop !58

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putcontig8bitYCbCr42tile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
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
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %ycbcr1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 18
  %1 = load ptr, ptr %ycbcr1, align 8
  store ptr %1, ptr %ycbcr, align 8
  %2 = load ptr, ptr %ycbcr, align 8
  %Cr_r_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %Cr_r_tab, align 8
  store ptr %3, ptr %Crrtab, align 8
  %4 = load ptr, ptr %ycbcr, align 8
  %Cb_b_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %Cb_b_tab, align 8
  store ptr %5, ptr %Cbbtab, align 8
  %6 = load ptr, ptr %ycbcr, align 8
  %Cr_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %Cr_g_tab, align 8
  store ptr %7, ptr %Crgtab, align 8
  %8 = load ptr, ptr %ycbcr, align 8
  %Cb_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %Cb_g_tab, align 8
  store ptr %9, ptr %Cbgtab, align 8
  %10 = load ptr, ptr %ycbcr, align 8
  %clamptab2 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %clamptab2, align 8
  store ptr %11, ptr %clamptab, align 8
  %12 = load ptr, ptr %cp.addr, align 8
  %13 = load i64, ptr %w.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %12, i64 %13
  %14 = load i64, ptr %toskew.addr, align 8
  %add.ptr3 = getelementptr inbounds i64, ptr %add.ptr, i64 %14
  store ptr %add.ptr3, ptr %cp1, align 8
  %15 = load i64, ptr %toskew.addr, align 8
  %mul = mul nsw i64 2, %15
  %16 = load i64, ptr %w.addr, align 8
  %add = add i64 %mul, %16
  store i64 %add, ptr %incr, align 8
  %17 = load i64, ptr %y.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i64, ptr %h.addr, align 8
  %cmp = icmp uge i64 %18, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i64, ptr %w.addr, align 8
  %shr = lshr i64 %19, 2
  store i64 %shr, ptr %x.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body
  %20 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %20, i64 8
  %21 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %21 to i32
  store i32 %conv, ptr %Cb, align 4
  %22 = load ptr, ptr %pp.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %22, i64 9
  %23 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %23 to i32
  store i32 %conv5, ptr %Cr, align 4
  %24 = load ptr, ptr %pp.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %24, i64 0
  %25 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %25 to i32
  store i32 %conv7, ptr %Y, align 4
  %26 = load ptr, ptr %clamptab, align 8
  %27 = load i32, ptr %Y, align 4
  %28 = load ptr, ptr %Crrtab, align 8
  %29 = load i32, ptr %Cr, align 4
  %idxprom = sext i32 %29 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %28, i64 %idxprom
  %30 = load i32, ptr %arrayidx8, align 4
  %add9 = add nsw i32 %27, %30
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %26, i64 %idxprom10
  %31 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %31 to i64
  %32 = load ptr, ptr %clamptab, align 8
  %33 = load i32, ptr %Y, align 4
  %34 = load ptr, ptr %Cbgtab, align 8
  %35 = load i32, ptr %Cb, align 4
  %idxprom13 = sext i32 %35 to i64
  %arrayidx14 = getelementptr inbounds i64, ptr %34, i64 %idxprom13
  %36 = load i64, ptr %arrayidx14, align 8
  %37 = load ptr, ptr %Crgtab, align 8
  %38 = load i32, ptr %Cr, align 4
  %idxprom15 = sext i32 %38 to i64
  %arrayidx16 = getelementptr inbounds i64, ptr %37, i64 %idxprom15
  %39 = load i64, ptr %arrayidx16, align 8
  %add17 = add nsw i64 %36, %39
  %shr18 = ashr i64 %add17, 16
  %conv19 = trunc i64 %shr18 to i32
  %add20 = add nsw i32 %33, %conv19
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %32, i64 %idxprom21
  %40 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %40 to i64
  %shl = shl i64 %conv23, 8
  %or = or i64 %conv12, %shl
  %41 = load ptr, ptr %clamptab, align 8
  %42 = load i32, ptr %Y, align 4
  %43 = load ptr, ptr %Cbbtab, align 8
  %44 = load i32, ptr %Cb, align 4
  %idxprom24 = sext i32 %44 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %43, i64 %idxprom24
  %45 = load i32, ptr %arrayidx25, align 4
  %add26 = add nsw i32 %42, %45
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds i8, ptr %41, i64 %idxprom27
  %46 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %46 to i64
  %shl30 = shl i64 %conv29, 16
  %or31 = or i64 %or, %shl30
  %or32 = or i64 %or31, 4278190080
  %47 = load ptr, ptr %cp.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, ptr %47, i64 0
  store i64 %or32, ptr %arrayidx33, align 8
  %48 = load ptr, ptr %pp.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %48, i64 1
  %49 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %49 to i32
  store i32 %conv36, ptr %Y34, align 4
  %50 = load ptr, ptr %clamptab, align 8
  %51 = load i32, ptr %Y34, align 4
  %52 = load ptr, ptr %Crrtab, align 8
  %53 = load i32, ptr %Cr, align 4
  %idxprom37 = sext i32 %53 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %52, i64 %idxprom37
  %54 = load i32, ptr %arrayidx38, align 4
  %add39 = add nsw i32 %51, %54
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds i8, ptr %50, i64 %idxprom40
  %55 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %55 to i64
  %56 = load ptr, ptr %clamptab, align 8
  %57 = load i32, ptr %Y34, align 4
  %58 = load ptr, ptr %Cbgtab, align 8
  %59 = load i32, ptr %Cb, align 4
  %idxprom43 = sext i32 %59 to i64
  %arrayidx44 = getelementptr inbounds i64, ptr %58, i64 %idxprom43
  %60 = load i64, ptr %arrayidx44, align 8
  %61 = load ptr, ptr %Crgtab, align 8
  %62 = load i32, ptr %Cr, align 4
  %idxprom45 = sext i32 %62 to i64
  %arrayidx46 = getelementptr inbounds i64, ptr %61, i64 %idxprom45
  %63 = load i64, ptr %arrayidx46, align 8
  %add47 = add nsw i64 %60, %63
  %shr48 = ashr i64 %add47, 16
  %conv49 = trunc i64 %shr48 to i32
  %add50 = add nsw i32 %57, %conv49
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds i8, ptr %56, i64 %idxprom51
  %64 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %64 to i64
  %shl54 = shl i64 %conv53, 8
  %or55 = or i64 %conv42, %shl54
  %65 = load ptr, ptr %clamptab, align 8
  %66 = load i32, ptr %Y34, align 4
  %67 = load ptr, ptr %Cbbtab, align 8
  %68 = load i32, ptr %Cb, align 4
  %idxprom56 = sext i32 %68 to i64
  %arrayidx57 = getelementptr inbounds i32, ptr %67, i64 %idxprom56
  %69 = load i32, ptr %arrayidx57, align 4
  %add58 = add nsw i32 %66, %69
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds i8, ptr %65, i64 %idxprom59
  %70 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %70 to i64
  %shl62 = shl i64 %conv61, 16
  %or63 = or i64 %or55, %shl62
  %or64 = or i64 %or63, 4278190080
  %71 = load ptr, ptr %cp.addr, align 8
  %arrayidx65 = getelementptr inbounds i64, ptr %71, i64 1
  store i64 %or64, ptr %arrayidx65, align 8
  %72 = load ptr, ptr %pp.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %72, i64 2
  %73 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %73 to i32
  store i32 %conv68, ptr %Y66, align 4
  %74 = load ptr, ptr %clamptab, align 8
  %75 = load i32, ptr %Y66, align 4
  %76 = load ptr, ptr %Crrtab, align 8
  %77 = load i32, ptr %Cr, align 4
  %idxprom69 = sext i32 %77 to i64
  %arrayidx70 = getelementptr inbounds i32, ptr %76, i64 %idxprom69
  %78 = load i32, ptr %arrayidx70, align 4
  %add71 = add nsw i32 %75, %78
  %idxprom72 = sext i32 %add71 to i64
  %arrayidx73 = getelementptr inbounds i8, ptr %74, i64 %idxprom72
  %79 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %79 to i64
  %80 = load ptr, ptr %clamptab, align 8
  %81 = load i32, ptr %Y66, align 4
  %82 = load ptr, ptr %Cbgtab, align 8
  %83 = load i32, ptr %Cb, align 4
  %idxprom75 = sext i32 %83 to i64
  %arrayidx76 = getelementptr inbounds i64, ptr %82, i64 %idxprom75
  %84 = load i64, ptr %arrayidx76, align 8
  %85 = load ptr, ptr %Crgtab, align 8
  %86 = load i32, ptr %Cr, align 4
  %idxprom77 = sext i32 %86 to i64
  %arrayidx78 = getelementptr inbounds i64, ptr %85, i64 %idxprom77
  %87 = load i64, ptr %arrayidx78, align 8
  %add79 = add nsw i64 %84, %87
  %shr80 = ashr i64 %add79, 16
  %conv81 = trunc i64 %shr80 to i32
  %add82 = add nsw i32 %81, %conv81
  %idxprom83 = sext i32 %add82 to i64
  %arrayidx84 = getelementptr inbounds i8, ptr %80, i64 %idxprom83
  %88 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %88 to i64
  %shl86 = shl i64 %conv85, 8
  %or87 = or i64 %conv74, %shl86
  %89 = load ptr, ptr %clamptab, align 8
  %90 = load i32, ptr %Y66, align 4
  %91 = load ptr, ptr %Cbbtab, align 8
  %92 = load i32, ptr %Cb, align 4
  %idxprom88 = sext i32 %92 to i64
  %arrayidx89 = getelementptr inbounds i32, ptr %91, i64 %idxprom88
  %93 = load i32, ptr %arrayidx89, align 4
  %add90 = add nsw i32 %90, %93
  %idxprom91 = sext i32 %add90 to i64
  %arrayidx92 = getelementptr inbounds i8, ptr %89, i64 %idxprom91
  %94 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %94 to i64
  %shl94 = shl i64 %conv93, 16
  %or95 = or i64 %or87, %shl94
  %or96 = or i64 %or95, 4278190080
  %95 = load ptr, ptr %cp.addr, align 8
  %arrayidx97 = getelementptr inbounds i64, ptr %95, i64 2
  store i64 %or96, ptr %arrayidx97, align 8
  %96 = load ptr, ptr %pp.addr, align 8
  %arrayidx99 = getelementptr inbounds i8, ptr %96, i64 3
  %97 = load i8, ptr %arrayidx99, align 1
  %conv100 = zext i8 %97 to i32
  store i32 %conv100, ptr %Y98, align 4
  %98 = load ptr, ptr %clamptab, align 8
  %99 = load i32, ptr %Y98, align 4
  %100 = load ptr, ptr %Crrtab, align 8
  %101 = load i32, ptr %Cr, align 4
  %idxprom101 = sext i32 %101 to i64
  %arrayidx102 = getelementptr inbounds i32, ptr %100, i64 %idxprom101
  %102 = load i32, ptr %arrayidx102, align 4
  %add103 = add nsw i32 %99, %102
  %idxprom104 = sext i32 %add103 to i64
  %arrayidx105 = getelementptr inbounds i8, ptr %98, i64 %idxprom104
  %103 = load i8, ptr %arrayidx105, align 1
  %conv106 = zext i8 %103 to i64
  %104 = load ptr, ptr %clamptab, align 8
  %105 = load i32, ptr %Y98, align 4
  %106 = load ptr, ptr %Cbgtab, align 8
  %107 = load i32, ptr %Cb, align 4
  %idxprom107 = sext i32 %107 to i64
  %arrayidx108 = getelementptr inbounds i64, ptr %106, i64 %idxprom107
  %108 = load i64, ptr %arrayidx108, align 8
  %109 = load ptr, ptr %Crgtab, align 8
  %110 = load i32, ptr %Cr, align 4
  %idxprom109 = sext i32 %110 to i64
  %arrayidx110 = getelementptr inbounds i64, ptr %109, i64 %idxprom109
  %111 = load i64, ptr %arrayidx110, align 8
  %add111 = add nsw i64 %108, %111
  %shr112 = ashr i64 %add111, 16
  %conv113 = trunc i64 %shr112 to i32
  %add114 = add nsw i32 %105, %conv113
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds i8, ptr %104, i64 %idxprom115
  %112 = load i8, ptr %arrayidx116, align 1
  %conv117 = zext i8 %112 to i64
  %shl118 = shl i64 %conv117, 8
  %or119 = or i64 %conv106, %shl118
  %113 = load ptr, ptr %clamptab, align 8
  %114 = load i32, ptr %Y98, align 4
  %115 = load ptr, ptr %Cbbtab, align 8
  %116 = load i32, ptr %Cb, align 4
  %idxprom120 = sext i32 %116 to i64
  %arrayidx121 = getelementptr inbounds i32, ptr %115, i64 %idxprom120
  %117 = load i32, ptr %arrayidx121, align 4
  %add122 = add nsw i32 %114, %117
  %idxprom123 = sext i32 %add122 to i64
  %arrayidx124 = getelementptr inbounds i8, ptr %113, i64 %idxprom123
  %118 = load i8, ptr %arrayidx124, align 1
  %conv125 = zext i8 %118 to i64
  %shl126 = shl i64 %conv125, 16
  %or127 = or i64 %or119, %shl126
  %or128 = or i64 %or127, 4278190080
  %119 = load ptr, ptr %cp.addr, align 8
  %arrayidx129 = getelementptr inbounds i64, ptr %119, i64 3
  store i64 %or128, ptr %arrayidx129, align 8
  %120 = load ptr, ptr %pp.addr, align 8
  %arrayidx131 = getelementptr inbounds i8, ptr %120, i64 4
  %121 = load i8, ptr %arrayidx131, align 1
  %conv132 = zext i8 %121 to i32
  store i32 %conv132, ptr %Y130, align 4
  %122 = load ptr, ptr %clamptab, align 8
  %123 = load i32, ptr %Y130, align 4
  %124 = load ptr, ptr %Crrtab, align 8
  %125 = load i32, ptr %Cr, align 4
  %idxprom133 = sext i32 %125 to i64
  %arrayidx134 = getelementptr inbounds i32, ptr %124, i64 %idxprom133
  %126 = load i32, ptr %arrayidx134, align 4
  %add135 = add nsw i32 %123, %126
  %idxprom136 = sext i32 %add135 to i64
  %arrayidx137 = getelementptr inbounds i8, ptr %122, i64 %idxprom136
  %127 = load i8, ptr %arrayidx137, align 1
  %conv138 = zext i8 %127 to i64
  %128 = load ptr, ptr %clamptab, align 8
  %129 = load i32, ptr %Y130, align 4
  %130 = load ptr, ptr %Cbgtab, align 8
  %131 = load i32, ptr %Cb, align 4
  %idxprom139 = sext i32 %131 to i64
  %arrayidx140 = getelementptr inbounds i64, ptr %130, i64 %idxprom139
  %132 = load i64, ptr %arrayidx140, align 8
  %133 = load ptr, ptr %Crgtab, align 8
  %134 = load i32, ptr %Cr, align 4
  %idxprom141 = sext i32 %134 to i64
  %arrayidx142 = getelementptr inbounds i64, ptr %133, i64 %idxprom141
  %135 = load i64, ptr %arrayidx142, align 8
  %add143 = add nsw i64 %132, %135
  %shr144 = ashr i64 %add143, 16
  %conv145 = trunc i64 %shr144 to i32
  %add146 = add nsw i32 %129, %conv145
  %idxprom147 = sext i32 %add146 to i64
  %arrayidx148 = getelementptr inbounds i8, ptr %128, i64 %idxprom147
  %136 = load i8, ptr %arrayidx148, align 1
  %conv149 = zext i8 %136 to i64
  %shl150 = shl i64 %conv149, 8
  %or151 = or i64 %conv138, %shl150
  %137 = load ptr, ptr %clamptab, align 8
  %138 = load i32, ptr %Y130, align 4
  %139 = load ptr, ptr %Cbbtab, align 8
  %140 = load i32, ptr %Cb, align 4
  %idxprom152 = sext i32 %140 to i64
  %arrayidx153 = getelementptr inbounds i32, ptr %139, i64 %idxprom152
  %141 = load i32, ptr %arrayidx153, align 4
  %add154 = add nsw i32 %138, %141
  %idxprom155 = sext i32 %add154 to i64
  %arrayidx156 = getelementptr inbounds i8, ptr %137, i64 %idxprom155
  %142 = load i8, ptr %arrayidx156, align 1
  %conv157 = zext i8 %142 to i64
  %shl158 = shl i64 %conv157, 16
  %or159 = or i64 %or151, %shl158
  %or160 = or i64 %or159, 4278190080
  %143 = load ptr, ptr %cp1, align 8
  %arrayidx161 = getelementptr inbounds i64, ptr %143, i64 0
  store i64 %or160, ptr %arrayidx161, align 8
  %144 = load ptr, ptr %pp.addr, align 8
  %arrayidx163 = getelementptr inbounds i8, ptr %144, i64 5
  %145 = load i8, ptr %arrayidx163, align 1
  %conv164 = zext i8 %145 to i32
  store i32 %conv164, ptr %Y162, align 4
  %146 = load ptr, ptr %clamptab, align 8
  %147 = load i32, ptr %Y162, align 4
  %148 = load ptr, ptr %Crrtab, align 8
  %149 = load i32, ptr %Cr, align 4
  %idxprom165 = sext i32 %149 to i64
  %arrayidx166 = getelementptr inbounds i32, ptr %148, i64 %idxprom165
  %150 = load i32, ptr %arrayidx166, align 4
  %add167 = add nsw i32 %147, %150
  %idxprom168 = sext i32 %add167 to i64
  %arrayidx169 = getelementptr inbounds i8, ptr %146, i64 %idxprom168
  %151 = load i8, ptr %arrayidx169, align 1
  %conv170 = zext i8 %151 to i64
  %152 = load ptr, ptr %clamptab, align 8
  %153 = load i32, ptr %Y162, align 4
  %154 = load ptr, ptr %Cbgtab, align 8
  %155 = load i32, ptr %Cb, align 4
  %idxprom171 = sext i32 %155 to i64
  %arrayidx172 = getelementptr inbounds i64, ptr %154, i64 %idxprom171
  %156 = load i64, ptr %arrayidx172, align 8
  %157 = load ptr, ptr %Crgtab, align 8
  %158 = load i32, ptr %Cr, align 4
  %idxprom173 = sext i32 %158 to i64
  %arrayidx174 = getelementptr inbounds i64, ptr %157, i64 %idxprom173
  %159 = load i64, ptr %arrayidx174, align 8
  %add175 = add nsw i64 %156, %159
  %shr176 = ashr i64 %add175, 16
  %conv177 = trunc i64 %shr176 to i32
  %add178 = add nsw i32 %153, %conv177
  %idxprom179 = sext i32 %add178 to i64
  %arrayidx180 = getelementptr inbounds i8, ptr %152, i64 %idxprom179
  %160 = load i8, ptr %arrayidx180, align 1
  %conv181 = zext i8 %160 to i64
  %shl182 = shl i64 %conv181, 8
  %or183 = or i64 %conv170, %shl182
  %161 = load ptr, ptr %clamptab, align 8
  %162 = load i32, ptr %Y162, align 4
  %163 = load ptr, ptr %Cbbtab, align 8
  %164 = load i32, ptr %Cb, align 4
  %idxprom184 = sext i32 %164 to i64
  %arrayidx185 = getelementptr inbounds i32, ptr %163, i64 %idxprom184
  %165 = load i32, ptr %arrayidx185, align 4
  %add186 = add nsw i32 %162, %165
  %idxprom187 = sext i32 %add186 to i64
  %arrayidx188 = getelementptr inbounds i8, ptr %161, i64 %idxprom187
  %166 = load i8, ptr %arrayidx188, align 1
  %conv189 = zext i8 %166 to i64
  %shl190 = shl i64 %conv189, 16
  %or191 = or i64 %or183, %shl190
  %or192 = or i64 %or191, 4278190080
  %167 = load ptr, ptr %cp1, align 8
  %arrayidx193 = getelementptr inbounds i64, ptr %167, i64 1
  store i64 %or192, ptr %arrayidx193, align 8
  %168 = load ptr, ptr %pp.addr, align 8
  %arrayidx195 = getelementptr inbounds i8, ptr %168, i64 6
  %169 = load i8, ptr %arrayidx195, align 1
  %conv196 = zext i8 %169 to i32
  store i32 %conv196, ptr %Y194, align 4
  %170 = load ptr, ptr %clamptab, align 8
  %171 = load i32, ptr %Y194, align 4
  %172 = load ptr, ptr %Crrtab, align 8
  %173 = load i32, ptr %Cr, align 4
  %idxprom197 = sext i32 %173 to i64
  %arrayidx198 = getelementptr inbounds i32, ptr %172, i64 %idxprom197
  %174 = load i32, ptr %arrayidx198, align 4
  %add199 = add nsw i32 %171, %174
  %idxprom200 = sext i32 %add199 to i64
  %arrayidx201 = getelementptr inbounds i8, ptr %170, i64 %idxprom200
  %175 = load i8, ptr %arrayidx201, align 1
  %conv202 = zext i8 %175 to i64
  %176 = load ptr, ptr %clamptab, align 8
  %177 = load i32, ptr %Y194, align 4
  %178 = load ptr, ptr %Cbgtab, align 8
  %179 = load i32, ptr %Cb, align 4
  %idxprom203 = sext i32 %179 to i64
  %arrayidx204 = getelementptr inbounds i64, ptr %178, i64 %idxprom203
  %180 = load i64, ptr %arrayidx204, align 8
  %181 = load ptr, ptr %Crgtab, align 8
  %182 = load i32, ptr %Cr, align 4
  %idxprom205 = sext i32 %182 to i64
  %arrayidx206 = getelementptr inbounds i64, ptr %181, i64 %idxprom205
  %183 = load i64, ptr %arrayidx206, align 8
  %add207 = add nsw i64 %180, %183
  %shr208 = ashr i64 %add207, 16
  %conv209 = trunc i64 %shr208 to i32
  %add210 = add nsw i32 %177, %conv209
  %idxprom211 = sext i32 %add210 to i64
  %arrayidx212 = getelementptr inbounds i8, ptr %176, i64 %idxprom211
  %184 = load i8, ptr %arrayidx212, align 1
  %conv213 = zext i8 %184 to i64
  %shl214 = shl i64 %conv213, 8
  %or215 = or i64 %conv202, %shl214
  %185 = load ptr, ptr %clamptab, align 8
  %186 = load i32, ptr %Y194, align 4
  %187 = load ptr, ptr %Cbbtab, align 8
  %188 = load i32, ptr %Cb, align 4
  %idxprom216 = sext i32 %188 to i64
  %arrayidx217 = getelementptr inbounds i32, ptr %187, i64 %idxprom216
  %189 = load i32, ptr %arrayidx217, align 4
  %add218 = add nsw i32 %186, %189
  %idxprom219 = sext i32 %add218 to i64
  %arrayidx220 = getelementptr inbounds i8, ptr %185, i64 %idxprom219
  %190 = load i8, ptr %arrayidx220, align 1
  %conv221 = zext i8 %190 to i64
  %shl222 = shl i64 %conv221, 16
  %or223 = or i64 %or215, %shl222
  %or224 = or i64 %or223, 4278190080
  %191 = load ptr, ptr %cp1, align 8
  %arrayidx225 = getelementptr inbounds i64, ptr %191, i64 2
  store i64 %or224, ptr %arrayidx225, align 8
  %192 = load ptr, ptr %pp.addr, align 8
  %arrayidx227 = getelementptr inbounds i8, ptr %192, i64 7
  %193 = load i8, ptr %arrayidx227, align 1
  %conv228 = zext i8 %193 to i32
  store i32 %conv228, ptr %Y226, align 4
  %194 = load ptr, ptr %clamptab, align 8
  %195 = load i32, ptr %Y226, align 4
  %196 = load ptr, ptr %Crrtab, align 8
  %197 = load i32, ptr %Cr, align 4
  %idxprom229 = sext i32 %197 to i64
  %arrayidx230 = getelementptr inbounds i32, ptr %196, i64 %idxprom229
  %198 = load i32, ptr %arrayidx230, align 4
  %add231 = add nsw i32 %195, %198
  %idxprom232 = sext i32 %add231 to i64
  %arrayidx233 = getelementptr inbounds i8, ptr %194, i64 %idxprom232
  %199 = load i8, ptr %arrayidx233, align 1
  %conv234 = zext i8 %199 to i64
  %200 = load ptr, ptr %clamptab, align 8
  %201 = load i32, ptr %Y226, align 4
  %202 = load ptr, ptr %Cbgtab, align 8
  %203 = load i32, ptr %Cb, align 4
  %idxprom235 = sext i32 %203 to i64
  %arrayidx236 = getelementptr inbounds i64, ptr %202, i64 %idxprom235
  %204 = load i64, ptr %arrayidx236, align 8
  %205 = load ptr, ptr %Crgtab, align 8
  %206 = load i32, ptr %Cr, align 4
  %idxprom237 = sext i32 %206 to i64
  %arrayidx238 = getelementptr inbounds i64, ptr %205, i64 %idxprom237
  %207 = load i64, ptr %arrayidx238, align 8
  %add239 = add nsw i64 %204, %207
  %shr240 = ashr i64 %add239, 16
  %conv241 = trunc i64 %shr240 to i32
  %add242 = add nsw i32 %201, %conv241
  %idxprom243 = sext i32 %add242 to i64
  %arrayidx244 = getelementptr inbounds i8, ptr %200, i64 %idxprom243
  %208 = load i8, ptr %arrayidx244, align 1
  %conv245 = zext i8 %208 to i64
  %shl246 = shl i64 %conv245, 8
  %or247 = or i64 %conv234, %shl246
  %209 = load ptr, ptr %clamptab, align 8
  %210 = load i32, ptr %Y226, align 4
  %211 = load ptr, ptr %Cbbtab, align 8
  %212 = load i32, ptr %Cb, align 4
  %idxprom248 = sext i32 %212 to i64
  %arrayidx249 = getelementptr inbounds i32, ptr %211, i64 %idxprom248
  %213 = load i32, ptr %arrayidx249, align 4
  %add250 = add nsw i32 %210, %213
  %idxprom251 = sext i32 %add250 to i64
  %arrayidx252 = getelementptr inbounds i8, ptr %209, i64 %idxprom251
  %214 = load i8, ptr %arrayidx252, align 1
  %conv253 = zext i8 %214 to i64
  %shl254 = shl i64 %conv253, 16
  %or255 = or i64 %or247, %shl254
  %or256 = or i64 %or255, 4278190080
  %215 = load ptr, ptr %cp1, align 8
  %arrayidx257 = getelementptr inbounds i64, ptr %215, i64 3
  store i64 %or256, ptr %arrayidx257, align 8
  %216 = load ptr, ptr %cp.addr, align 8
  %add.ptr258 = getelementptr inbounds i64, ptr %216, i64 4
  store ptr %add.ptr258, ptr %cp.addr, align 8
  %217 = load ptr, ptr %cp1, align 8
  %add.ptr259 = getelementptr inbounds i64, ptr %217, i64 4
  store ptr %add.ptr259, ptr %cp1, align 8
  %218 = load ptr, ptr %pp.addr, align 8
  %add.ptr260 = getelementptr inbounds i8, ptr %218, i64 10
  store ptr %add.ptr260, ptr %pp.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %219 = load i64, ptr %x.addr, align 8
  %dec = add i64 %219, -1
  store i64 %dec, ptr %x.addr, align 8
  %tobool = icmp ne i64 %dec, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !59

do.end:                                           ; preds = %do.cond
  %220 = load i64, ptr %incr, align 8
  %221 = load ptr, ptr %cp.addr, align 8
  %add.ptr261 = getelementptr inbounds i64, ptr %221, i64 %220
  store ptr %add.ptr261, ptr %cp.addr, align 8
  %222 = load i64, ptr %incr, align 8
  %223 = load ptr, ptr %cp1, align 8
  %add.ptr262 = getelementptr inbounds i64, ptr %223, i64 %222
  store ptr %add.ptr262, ptr %cp1, align 8
  %224 = load i64, ptr %fromskew.addr, align 8
  %225 = load ptr, ptr %pp.addr, align 8
  %add.ptr263 = getelementptr inbounds i8, ptr %225, i64 %224
  store ptr %add.ptr263, ptr %pp.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %226 = load i64, ptr %h.addr, align 8
  %sub = sub i64 %226, 2
  store i64 %sub, ptr %h.addr, align 8
  br label %for.cond, !llvm.loop !60

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putcontig8bitYCbCr41tile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
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
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %ycbcr1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 18
  %1 = load ptr, ptr %ycbcr1, align 8
  store ptr %1, ptr %ycbcr, align 8
  %2 = load ptr, ptr %ycbcr, align 8
  %Cr_r_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %Cr_r_tab, align 8
  store ptr %3, ptr %Crrtab, align 8
  %4 = load ptr, ptr %ycbcr, align 8
  %Cb_b_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %Cb_b_tab, align 8
  store ptr %5, ptr %Cbbtab, align 8
  %6 = load ptr, ptr %ycbcr, align 8
  %Cr_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %Cr_g_tab, align 8
  store ptr %7, ptr %Crgtab, align 8
  %8 = load ptr, ptr %ycbcr, align 8
  %Cb_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %Cb_g_tab, align 8
  store ptr %9, ptr %Cbgtab, align 8
  %10 = load ptr, ptr %ycbcr, align 8
  %clamptab2 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %clamptab2, align 8
  store ptr %11, ptr %clamptab, align 8
  %12 = load i64, ptr %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond132, %entry
  %13 = load i64, ptr %w.addr, align 8
  %shr = lshr i64 %13, 2
  store i64 %shr, ptr %x.addr, align 8
  br label %do.body3

do.body3:                                         ; preds = %do.cond, %do.body
  %14 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 4
  %15 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %15 to i32
  store i32 %conv, ptr %Cb, align 4
  %16 = load ptr, ptr %pp.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %16, i64 5
  %17 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %17 to i32
  store i32 %conv5, ptr %Cr, align 4
  %18 = load ptr, ptr %pp.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %18, i64 0
  %19 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %19 to i32
  store i32 %conv7, ptr %Y, align 4
  %20 = load ptr, ptr %clamptab, align 8
  %21 = load i32, ptr %Y, align 4
  %22 = load ptr, ptr %Crrtab, align 8
  %23 = load i32, ptr %Cr, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %22, i64 %idxprom
  %24 = load i32, ptr %arrayidx8, align 4
  %add = add nsw i32 %21, %24
  %idxprom9 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %20, i64 %idxprom9
  %25 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %25 to i64
  %26 = load ptr, ptr %clamptab, align 8
  %27 = load i32, ptr %Y, align 4
  %28 = load ptr, ptr %Cbgtab, align 8
  %29 = load i32, ptr %Cb, align 4
  %idxprom12 = sext i32 %29 to i64
  %arrayidx13 = getelementptr inbounds i64, ptr %28, i64 %idxprom12
  %30 = load i64, ptr %arrayidx13, align 8
  %31 = load ptr, ptr %Crgtab, align 8
  %32 = load i32, ptr %Cr, align 4
  %idxprom14 = sext i32 %32 to i64
  %arrayidx15 = getelementptr inbounds i64, ptr %31, i64 %idxprom14
  %33 = load i64, ptr %arrayidx15, align 8
  %add16 = add nsw i64 %30, %33
  %shr17 = ashr i64 %add16, 16
  %conv18 = trunc i64 %shr17 to i32
  %add19 = add nsw i32 %27, %conv18
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %26, i64 %idxprom20
  %34 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %34 to i64
  %shl = shl i64 %conv22, 8
  %or = or i64 %conv11, %shl
  %35 = load ptr, ptr %clamptab, align 8
  %36 = load i32, ptr %Y, align 4
  %37 = load ptr, ptr %Cbbtab, align 8
  %38 = load i32, ptr %Cb, align 4
  %idxprom23 = sext i32 %38 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %37, i64 %idxprom23
  %39 = load i32, ptr %arrayidx24, align 4
  %add25 = add nsw i32 %36, %39
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %35, i64 %idxprom26
  %40 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %40 to i64
  %shl29 = shl i64 %conv28, 16
  %or30 = or i64 %or, %shl29
  %or31 = or i64 %or30, 4278190080
  %41 = load ptr, ptr %cp.addr, align 8
  %arrayidx32 = getelementptr inbounds i64, ptr %41, i64 0
  store i64 %or31, ptr %arrayidx32, align 8
  %42 = load ptr, ptr %pp.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %42, i64 1
  %43 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %43 to i32
  store i32 %conv35, ptr %Y33, align 4
  %44 = load ptr, ptr %clamptab, align 8
  %45 = load i32, ptr %Y33, align 4
  %46 = load ptr, ptr %Crrtab, align 8
  %47 = load i32, ptr %Cr, align 4
  %idxprom36 = sext i32 %47 to i64
  %arrayidx37 = getelementptr inbounds i32, ptr %46, i64 %idxprom36
  %48 = load i32, ptr %arrayidx37, align 4
  %add38 = add nsw i32 %45, %48
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %44, i64 %idxprom39
  %49 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %49 to i64
  %50 = load ptr, ptr %clamptab, align 8
  %51 = load i32, ptr %Y33, align 4
  %52 = load ptr, ptr %Cbgtab, align 8
  %53 = load i32, ptr %Cb, align 4
  %idxprom42 = sext i32 %53 to i64
  %arrayidx43 = getelementptr inbounds i64, ptr %52, i64 %idxprom42
  %54 = load i64, ptr %arrayidx43, align 8
  %55 = load ptr, ptr %Crgtab, align 8
  %56 = load i32, ptr %Cr, align 4
  %idxprom44 = sext i32 %56 to i64
  %arrayidx45 = getelementptr inbounds i64, ptr %55, i64 %idxprom44
  %57 = load i64, ptr %arrayidx45, align 8
  %add46 = add nsw i64 %54, %57
  %shr47 = ashr i64 %add46, 16
  %conv48 = trunc i64 %shr47 to i32
  %add49 = add nsw i32 %51, %conv48
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds i8, ptr %50, i64 %idxprom50
  %58 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %58 to i64
  %shl53 = shl i64 %conv52, 8
  %or54 = or i64 %conv41, %shl53
  %59 = load ptr, ptr %clamptab, align 8
  %60 = load i32, ptr %Y33, align 4
  %61 = load ptr, ptr %Cbbtab, align 8
  %62 = load i32, ptr %Cb, align 4
  %idxprom55 = sext i32 %62 to i64
  %arrayidx56 = getelementptr inbounds i32, ptr %61, i64 %idxprom55
  %63 = load i32, ptr %arrayidx56, align 4
  %add57 = add nsw i32 %60, %63
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds i8, ptr %59, i64 %idxprom58
  %64 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %64 to i64
  %shl61 = shl i64 %conv60, 16
  %or62 = or i64 %or54, %shl61
  %or63 = or i64 %or62, 4278190080
  %65 = load ptr, ptr %cp.addr, align 8
  %arrayidx64 = getelementptr inbounds i64, ptr %65, i64 1
  store i64 %or63, ptr %arrayidx64, align 8
  %66 = load ptr, ptr %pp.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, ptr %66, i64 2
  %67 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %67 to i32
  store i32 %conv67, ptr %Y65, align 4
  %68 = load ptr, ptr %clamptab, align 8
  %69 = load i32, ptr %Y65, align 4
  %70 = load ptr, ptr %Crrtab, align 8
  %71 = load i32, ptr %Cr, align 4
  %idxprom68 = sext i32 %71 to i64
  %arrayidx69 = getelementptr inbounds i32, ptr %70, i64 %idxprom68
  %72 = load i32, ptr %arrayidx69, align 4
  %add70 = add nsw i32 %69, %72
  %idxprom71 = sext i32 %add70 to i64
  %arrayidx72 = getelementptr inbounds i8, ptr %68, i64 %idxprom71
  %73 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %73 to i64
  %74 = load ptr, ptr %clamptab, align 8
  %75 = load i32, ptr %Y65, align 4
  %76 = load ptr, ptr %Cbgtab, align 8
  %77 = load i32, ptr %Cb, align 4
  %idxprom74 = sext i32 %77 to i64
  %arrayidx75 = getelementptr inbounds i64, ptr %76, i64 %idxprom74
  %78 = load i64, ptr %arrayidx75, align 8
  %79 = load ptr, ptr %Crgtab, align 8
  %80 = load i32, ptr %Cr, align 4
  %idxprom76 = sext i32 %80 to i64
  %arrayidx77 = getelementptr inbounds i64, ptr %79, i64 %idxprom76
  %81 = load i64, ptr %arrayidx77, align 8
  %add78 = add nsw i64 %78, %81
  %shr79 = ashr i64 %add78, 16
  %conv80 = trunc i64 %shr79 to i32
  %add81 = add nsw i32 %75, %conv80
  %idxprom82 = sext i32 %add81 to i64
  %arrayidx83 = getelementptr inbounds i8, ptr %74, i64 %idxprom82
  %82 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %82 to i64
  %shl85 = shl i64 %conv84, 8
  %or86 = or i64 %conv73, %shl85
  %83 = load ptr, ptr %clamptab, align 8
  %84 = load i32, ptr %Y65, align 4
  %85 = load ptr, ptr %Cbbtab, align 8
  %86 = load i32, ptr %Cb, align 4
  %idxprom87 = sext i32 %86 to i64
  %arrayidx88 = getelementptr inbounds i32, ptr %85, i64 %idxprom87
  %87 = load i32, ptr %arrayidx88, align 4
  %add89 = add nsw i32 %84, %87
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds i8, ptr %83, i64 %idxprom90
  %88 = load i8, ptr %arrayidx91, align 1
  %conv92 = zext i8 %88 to i64
  %shl93 = shl i64 %conv92, 16
  %or94 = or i64 %or86, %shl93
  %or95 = or i64 %or94, 4278190080
  %89 = load ptr, ptr %cp.addr, align 8
  %arrayidx96 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %or95, ptr %arrayidx96, align 8
  %90 = load ptr, ptr %pp.addr, align 8
  %arrayidx98 = getelementptr inbounds i8, ptr %90, i64 3
  %91 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %91 to i32
  store i32 %conv99, ptr %Y97, align 4
  %92 = load ptr, ptr %clamptab, align 8
  %93 = load i32, ptr %Y97, align 4
  %94 = load ptr, ptr %Crrtab, align 8
  %95 = load i32, ptr %Cr, align 4
  %idxprom100 = sext i32 %95 to i64
  %arrayidx101 = getelementptr inbounds i32, ptr %94, i64 %idxprom100
  %96 = load i32, ptr %arrayidx101, align 4
  %add102 = add nsw i32 %93, %96
  %idxprom103 = sext i32 %add102 to i64
  %arrayidx104 = getelementptr inbounds i8, ptr %92, i64 %idxprom103
  %97 = load i8, ptr %arrayidx104, align 1
  %conv105 = zext i8 %97 to i64
  %98 = load ptr, ptr %clamptab, align 8
  %99 = load i32, ptr %Y97, align 4
  %100 = load ptr, ptr %Cbgtab, align 8
  %101 = load i32, ptr %Cb, align 4
  %idxprom106 = sext i32 %101 to i64
  %arrayidx107 = getelementptr inbounds i64, ptr %100, i64 %idxprom106
  %102 = load i64, ptr %arrayidx107, align 8
  %103 = load ptr, ptr %Crgtab, align 8
  %104 = load i32, ptr %Cr, align 4
  %idxprom108 = sext i32 %104 to i64
  %arrayidx109 = getelementptr inbounds i64, ptr %103, i64 %idxprom108
  %105 = load i64, ptr %arrayidx109, align 8
  %add110 = add nsw i64 %102, %105
  %shr111 = ashr i64 %add110, 16
  %conv112 = trunc i64 %shr111 to i32
  %add113 = add nsw i32 %99, %conv112
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds i8, ptr %98, i64 %idxprom114
  %106 = load i8, ptr %arrayidx115, align 1
  %conv116 = zext i8 %106 to i64
  %shl117 = shl i64 %conv116, 8
  %or118 = or i64 %conv105, %shl117
  %107 = load ptr, ptr %clamptab, align 8
  %108 = load i32, ptr %Y97, align 4
  %109 = load ptr, ptr %Cbbtab, align 8
  %110 = load i32, ptr %Cb, align 4
  %idxprom119 = sext i32 %110 to i64
  %arrayidx120 = getelementptr inbounds i32, ptr %109, i64 %idxprom119
  %111 = load i32, ptr %arrayidx120, align 4
  %add121 = add nsw i32 %108, %111
  %idxprom122 = sext i32 %add121 to i64
  %arrayidx123 = getelementptr inbounds i8, ptr %107, i64 %idxprom122
  %112 = load i8, ptr %arrayidx123, align 1
  %conv124 = zext i8 %112 to i64
  %shl125 = shl i64 %conv124, 16
  %or126 = or i64 %or118, %shl125
  %or127 = or i64 %or126, 4278190080
  %113 = load ptr, ptr %cp.addr, align 8
  %arrayidx128 = getelementptr inbounds i64, ptr %113, i64 3
  store i64 %or127, ptr %arrayidx128, align 8
  %114 = load ptr, ptr %cp.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %114, i64 4
  store ptr %add.ptr, ptr %cp.addr, align 8
  %115 = load ptr, ptr %pp.addr, align 8
  %add.ptr129 = getelementptr inbounds i8, ptr %115, i64 6
  store ptr %add.ptr129, ptr %pp.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body3
  %116 = load i64, ptr %x.addr, align 8
  %dec = add i64 %116, -1
  store i64 %dec, ptr %x.addr, align 8
  %tobool = icmp ne i64 %dec, 0
  br i1 %tobool, label %do.body3, label %do.end, !llvm.loop !61

do.end:                                           ; preds = %do.cond
  %117 = load i64, ptr %toskew.addr, align 8
  %118 = load ptr, ptr %cp.addr, align 8
  %add.ptr130 = getelementptr inbounds i64, ptr %118, i64 %117
  store ptr %add.ptr130, ptr %cp.addr, align 8
  %119 = load i64, ptr %fromskew.addr, align 8
  %120 = load ptr, ptr %pp.addr, align 8
  %add.ptr131 = getelementptr inbounds i8, ptr %120, i64 %119
  store ptr %add.ptr131, ptr %pp.addr, align 8
  br label %do.cond132

do.cond132:                                       ; preds = %do.end
  %121 = load i64, ptr %h.addr, align 8
  %dec133 = add i64 %121, -1
  store i64 %dec133, ptr %h.addr, align 8
  %tobool134 = icmp ne i64 %dec133, 0
  br i1 %tobool134, label %do.body, label %do.end135, !llvm.loop !62

do.end135:                                        ; preds = %do.cond132
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putcontig8bitYCbCr22tile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
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
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %ycbcr1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 18
  %1 = load ptr, ptr %ycbcr1, align 8
  store ptr %1, ptr %ycbcr, align 8
  %2 = load ptr, ptr %ycbcr, align 8
  %Cr_r_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %Cr_r_tab, align 8
  store ptr %3, ptr %Crrtab, align 8
  %4 = load ptr, ptr %ycbcr, align 8
  %Cb_b_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %Cb_b_tab, align 8
  store ptr %5, ptr %Cbbtab, align 8
  %6 = load ptr, ptr %ycbcr, align 8
  %Cr_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %Cr_g_tab, align 8
  store ptr %7, ptr %Crgtab, align 8
  %8 = load ptr, ptr %ycbcr, align 8
  %Cb_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %Cb_g_tab, align 8
  store ptr %9, ptr %Cbgtab, align 8
  %10 = load ptr, ptr %ycbcr, align 8
  %clamptab2 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %clamptab2, align 8
  store ptr %11, ptr %clamptab, align 8
  %12 = load ptr, ptr %cp.addr, align 8
  %13 = load i64, ptr %w.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %12, i64 %13
  %14 = load i64, ptr %toskew.addr, align 8
  %add.ptr3 = getelementptr inbounds i64, ptr %add.ptr, i64 %14
  store ptr %add.ptr3, ptr %cp1, align 8
  %15 = load i64, ptr %toskew.addr, align 8
  %mul = mul nsw i64 2, %15
  %16 = load i64, ptr %w.addr, align 8
  %add = add i64 %mul, %16
  store i64 %add, ptr %incr, align 8
  %17 = load i64, ptr %y.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i64, ptr %h.addr, align 8
  %cmp = icmp uge i64 %18, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i64, ptr %w.addr, align 8
  %shr = lshr i64 %19, 1
  store i64 %shr, ptr %x.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body
  %20 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %20, i64 4
  %21 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %21 to i32
  store i32 %conv, ptr %Cb, align 4
  %22 = load ptr, ptr %pp.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %22, i64 5
  %23 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %23 to i32
  store i32 %conv5, ptr %Cr, align 4
  %24 = load ptr, ptr %pp.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %24, i64 0
  %25 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %25 to i32
  store i32 %conv7, ptr %Y, align 4
  %26 = load ptr, ptr %clamptab, align 8
  %27 = load i32, ptr %Y, align 4
  %28 = load ptr, ptr %Crrtab, align 8
  %29 = load i32, ptr %Cr, align 4
  %idxprom = sext i32 %29 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %28, i64 %idxprom
  %30 = load i32, ptr %arrayidx8, align 4
  %add9 = add nsw i32 %27, %30
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %26, i64 %idxprom10
  %31 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %31 to i64
  %32 = load ptr, ptr %clamptab, align 8
  %33 = load i32, ptr %Y, align 4
  %34 = load ptr, ptr %Cbgtab, align 8
  %35 = load i32, ptr %Cb, align 4
  %idxprom13 = sext i32 %35 to i64
  %arrayidx14 = getelementptr inbounds i64, ptr %34, i64 %idxprom13
  %36 = load i64, ptr %arrayidx14, align 8
  %37 = load ptr, ptr %Crgtab, align 8
  %38 = load i32, ptr %Cr, align 4
  %idxprom15 = sext i32 %38 to i64
  %arrayidx16 = getelementptr inbounds i64, ptr %37, i64 %idxprom15
  %39 = load i64, ptr %arrayidx16, align 8
  %add17 = add nsw i64 %36, %39
  %shr18 = ashr i64 %add17, 16
  %conv19 = trunc i64 %shr18 to i32
  %add20 = add nsw i32 %33, %conv19
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %32, i64 %idxprom21
  %40 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %40 to i64
  %shl = shl i64 %conv23, 8
  %or = or i64 %conv12, %shl
  %41 = load ptr, ptr %clamptab, align 8
  %42 = load i32, ptr %Y, align 4
  %43 = load ptr, ptr %Cbbtab, align 8
  %44 = load i32, ptr %Cb, align 4
  %idxprom24 = sext i32 %44 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %43, i64 %idxprom24
  %45 = load i32, ptr %arrayidx25, align 4
  %add26 = add nsw i32 %42, %45
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds i8, ptr %41, i64 %idxprom27
  %46 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %46 to i64
  %shl30 = shl i64 %conv29, 16
  %or31 = or i64 %or, %shl30
  %or32 = or i64 %or31, 4278190080
  %47 = load ptr, ptr %cp.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, ptr %47, i64 0
  store i64 %or32, ptr %arrayidx33, align 8
  %48 = load ptr, ptr %pp.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %48, i64 1
  %49 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %49 to i32
  store i32 %conv36, ptr %Y34, align 4
  %50 = load ptr, ptr %clamptab, align 8
  %51 = load i32, ptr %Y34, align 4
  %52 = load ptr, ptr %Crrtab, align 8
  %53 = load i32, ptr %Cr, align 4
  %idxprom37 = sext i32 %53 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %52, i64 %idxprom37
  %54 = load i32, ptr %arrayidx38, align 4
  %add39 = add nsw i32 %51, %54
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds i8, ptr %50, i64 %idxprom40
  %55 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %55 to i64
  %56 = load ptr, ptr %clamptab, align 8
  %57 = load i32, ptr %Y34, align 4
  %58 = load ptr, ptr %Cbgtab, align 8
  %59 = load i32, ptr %Cb, align 4
  %idxprom43 = sext i32 %59 to i64
  %arrayidx44 = getelementptr inbounds i64, ptr %58, i64 %idxprom43
  %60 = load i64, ptr %arrayidx44, align 8
  %61 = load ptr, ptr %Crgtab, align 8
  %62 = load i32, ptr %Cr, align 4
  %idxprom45 = sext i32 %62 to i64
  %arrayidx46 = getelementptr inbounds i64, ptr %61, i64 %idxprom45
  %63 = load i64, ptr %arrayidx46, align 8
  %add47 = add nsw i64 %60, %63
  %shr48 = ashr i64 %add47, 16
  %conv49 = trunc i64 %shr48 to i32
  %add50 = add nsw i32 %57, %conv49
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds i8, ptr %56, i64 %idxprom51
  %64 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %64 to i64
  %shl54 = shl i64 %conv53, 8
  %or55 = or i64 %conv42, %shl54
  %65 = load ptr, ptr %clamptab, align 8
  %66 = load i32, ptr %Y34, align 4
  %67 = load ptr, ptr %Cbbtab, align 8
  %68 = load i32, ptr %Cb, align 4
  %idxprom56 = sext i32 %68 to i64
  %arrayidx57 = getelementptr inbounds i32, ptr %67, i64 %idxprom56
  %69 = load i32, ptr %arrayidx57, align 4
  %add58 = add nsw i32 %66, %69
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds i8, ptr %65, i64 %idxprom59
  %70 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %70 to i64
  %shl62 = shl i64 %conv61, 16
  %or63 = or i64 %or55, %shl62
  %or64 = or i64 %or63, 4278190080
  %71 = load ptr, ptr %cp.addr, align 8
  %arrayidx65 = getelementptr inbounds i64, ptr %71, i64 1
  store i64 %or64, ptr %arrayidx65, align 8
  %72 = load ptr, ptr %pp.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %72, i64 2
  %73 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %73 to i32
  store i32 %conv68, ptr %Y66, align 4
  %74 = load ptr, ptr %clamptab, align 8
  %75 = load i32, ptr %Y66, align 4
  %76 = load ptr, ptr %Crrtab, align 8
  %77 = load i32, ptr %Cr, align 4
  %idxprom69 = sext i32 %77 to i64
  %arrayidx70 = getelementptr inbounds i32, ptr %76, i64 %idxprom69
  %78 = load i32, ptr %arrayidx70, align 4
  %add71 = add nsw i32 %75, %78
  %idxprom72 = sext i32 %add71 to i64
  %arrayidx73 = getelementptr inbounds i8, ptr %74, i64 %idxprom72
  %79 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %79 to i64
  %80 = load ptr, ptr %clamptab, align 8
  %81 = load i32, ptr %Y66, align 4
  %82 = load ptr, ptr %Cbgtab, align 8
  %83 = load i32, ptr %Cb, align 4
  %idxprom75 = sext i32 %83 to i64
  %arrayidx76 = getelementptr inbounds i64, ptr %82, i64 %idxprom75
  %84 = load i64, ptr %arrayidx76, align 8
  %85 = load ptr, ptr %Crgtab, align 8
  %86 = load i32, ptr %Cr, align 4
  %idxprom77 = sext i32 %86 to i64
  %arrayidx78 = getelementptr inbounds i64, ptr %85, i64 %idxprom77
  %87 = load i64, ptr %arrayidx78, align 8
  %add79 = add nsw i64 %84, %87
  %shr80 = ashr i64 %add79, 16
  %conv81 = trunc i64 %shr80 to i32
  %add82 = add nsw i32 %81, %conv81
  %idxprom83 = sext i32 %add82 to i64
  %arrayidx84 = getelementptr inbounds i8, ptr %80, i64 %idxprom83
  %88 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %88 to i64
  %shl86 = shl i64 %conv85, 8
  %or87 = or i64 %conv74, %shl86
  %89 = load ptr, ptr %clamptab, align 8
  %90 = load i32, ptr %Y66, align 4
  %91 = load ptr, ptr %Cbbtab, align 8
  %92 = load i32, ptr %Cb, align 4
  %idxprom88 = sext i32 %92 to i64
  %arrayidx89 = getelementptr inbounds i32, ptr %91, i64 %idxprom88
  %93 = load i32, ptr %arrayidx89, align 4
  %add90 = add nsw i32 %90, %93
  %idxprom91 = sext i32 %add90 to i64
  %arrayidx92 = getelementptr inbounds i8, ptr %89, i64 %idxprom91
  %94 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %94 to i64
  %shl94 = shl i64 %conv93, 16
  %or95 = or i64 %or87, %shl94
  %or96 = or i64 %or95, 4278190080
  %95 = load ptr, ptr %cp1, align 8
  %arrayidx97 = getelementptr inbounds i64, ptr %95, i64 0
  store i64 %or96, ptr %arrayidx97, align 8
  %96 = load ptr, ptr %pp.addr, align 8
  %arrayidx99 = getelementptr inbounds i8, ptr %96, i64 3
  %97 = load i8, ptr %arrayidx99, align 1
  %conv100 = zext i8 %97 to i32
  store i32 %conv100, ptr %Y98, align 4
  %98 = load ptr, ptr %clamptab, align 8
  %99 = load i32, ptr %Y98, align 4
  %100 = load ptr, ptr %Crrtab, align 8
  %101 = load i32, ptr %Cr, align 4
  %idxprom101 = sext i32 %101 to i64
  %arrayidx102 = getelementptr inbounds i32, ptr %100, i64 %idxprom101
  %102 = load i32, ptr %arrayidx102, align 4
  %add103 = add nsw i32 %99, %102
  %idxprom104 = sext i32 %add103 to i64
  %arrayidx105 = getelementptr inbounds i8, ptr %98, i64 %idxprom104
  %103 = load i8, ptr %arrayidx105, align 1
  %conv106 = zext i8 %103 to i64
  %104 = load ptr, ptr %clamptab, align 8
  %105 = load i32, ptr %Y98, align 4
  %106 = load ptr, ptr %Cbgtab, align 8
  %107 = load i32, ptr %Cb, align 4
  %idxprom107 = sext i32 %107 to i64
  %arrayidx108 = getelementptr inbounds i64, ptr %106, i64 %idxprom107
  %108 = load i64, ptr %arrayidx108, align 8
  %109 = load ptr, ptr %Crgtab, align 8
  %110 = load i32, ptr %Cr, align 4
  %idxprom109 = sext i32 %110 to i64
  %arrayidx110 = getelementptr inbounds i64, ptr %109, i64 %idxprom109
  %111 = load i64, ptr %arrayidx110, align 8
  %add111 = add nsw i64 %108, %111
  %shr112 = ashr i64 %add111, 16
  %conv113 = trunc i64 %shr112 to i32
  %add114 = add nsw i32 %105, %conv113
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds i8, ptr %104, i64 %idxprom115
  %112 = load i8, ptr %arrayidx116, align 1
  %conv117 = zext i8 %112 to i64
  %shl118 = shl i64 %conv117, 8
  %or119 = or i64 %conv106, %shl118
  %113 = load ptr, ptr %clamptab, align 8
  %114 = load i32, ptr %Y98, align 4
  %115 = load ptr, ptr %Cbbtab, align 8
  %116 = load i32, ptr %Cb, align 4
  %idxprom120 = sext i32 %116 to i64
  %arrayidx121 = getelementptr inbounds i32, ptr %115, i64 %idxprom120
  %117 = load i32, ptr %arrayidx121, align 4
  %add122 = add nsw i32 %114, %117
  %idxprom123 = sext i32 %add122 to i64
  %arrayidx124 = getelementptr inbounds i8, ptr %113, i64 %idxprom123
  %118 = load i8, ptr %arrayidx124, align 1
  %conv125 = zext i8 %118 to i64
  %shl126 = shl i64 %conv125, 16
  %or127 = or i64 %or119, %shl126
  %or128 = or i64 %or127, 4278190080
  %119 = load ptr, ptr %cp1, align 8
  %arrayidx129 = getelementptr inbounds i64, ptr %119, i64 1
  store i64 %or128, ptr %arrayidx129, align 8
  %120 = load ptr, ptr %cp.addr, align 8
  %add.ptr130 = getelementptr inbounds i64, ptr %120, i64 2
  store ptr %add.ptr130, ptr %cp.addr, align 8
  %121 = load ptr, ptr %cp1, align 8
  %add.ptr131 = getelementptr inbounds i64, ptr %121, i64 2
  store ptr %add.ptr131, ptr %cp1, align 8
  %122 = load ptr, ptr %pp.addr, align 8
  %add.ptr132 = getelementptr inbounds i8, ptr %122, i64 6
  store ptr %add.ptr132, ptr %pp.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %123 = load i64, ptr %x.addr, align 8
  %dec = add i64 %123, -1
  store i64 %dec, ptr %x.addr, align 8
  %tobool = icmp ne i64 %dec, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !63

do.end:                                           ; preds = %do.cond
  %124 = load i64, ptr %incr, align 8
  %125 = load ptr, ptr %cp.addr, align 8
  %add.ptr133 = getelementptr inbounds i64, ptr %125, i64 %124
  store ptr %add.ptr133, ptr %cp.addr, align 8
  %126 = load i64, ptr %incr, align 8
  %127 = load ptr, ptr %cp1, align 8
  %add.ptr134 = getelementptr inbounds i64, ptr %127, i64 %126
  store ptr %add.ptr134, ptr %cp1, align 8
  %128 = load i64, ptr %fromskew.addr, align 8
  %129 = load ptr, ptr %pp.addr, align 8
  %add.ptr135 = getelementptr inbounds i8, ptr %129, i64 %128
  store ptr %add.ptr135, ptr %pp.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %130 = load i64, ptr %h.addr, align 8
  %sub = sub i64 %130, 2
  store i64 %sub, ptr %h.addr, align 8
  br label %for.cond, !llvm.loop !64

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putcontig8bitYCbCr21tile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
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
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %ycbcr1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 18
  %1 = load ptr, ptr %ycbcr1, align 8
  store ptr %1, ptr %ycbcr, align 8
  %2 = load ptr, ptr %ycbcr, align 8
  %Cr_r_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %Cr_r_tab, align 8
  store ptr %3, ptr %Crrtab, align 8
  %4 = load ptr, ptr %ycbcr, align 8
  %Cb_b_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %Cb_b_tab, align 8
  store ptr %5, ptr %Cbbtab, align 8
  %6 = load ptr, ptr %ycbcr, align 8
  %Cr_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %Cr_g_tab, align 8
  store ptr %7, ptr %Crgtab, align 8
  %8 = load ptr, ptr %ycbcr, align 8
  %Cb_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %Cb_g_tab, align 8
  store ptr %9, ptr %Cbgtab, align 8
  %10 = load ptr, ptr %ycbcr, align 8
  %clamptab2 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %clamptab2, align 8
  store ptr %11, ptr %clamptab, align 8
  %12 = load i64, ptr %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond68, %entry
  %13 = load i64, ptr %w.addr, align 8
  %shr = lshr i64 %13, 1
  store i64 %shr, ptr %x.addr, align 8
  br label %do.body3

do.body3:                                         ; preds = %do.cond, %do.body
  %14 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 2
  %15 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %15 to i32
  store i32 %conv, ptr %Cb, align 4
  %16 = load ptr, ptr %pp.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %16, i64 3
  %17 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %17 to i32
  store i32 %conv5, ptr %Cr, align 4
  %18 = load ptr, ptr %pp.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %18, i64 0
  %19 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %19 to i32
  store i32 %conv7, ptr %Y, align 4
  %20 = load ptr, ptr %clamptab, align 8
  %21 = load i32, ptr %Y, align 4
  %22 = load ptr, ptr %Crrtab, align 8
  %23 = load i32, ptr %Cr, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %22, i64 %idxprom
  %24 = load i32, ptr %arrayidx8, align 4
  %add = add nsw i32 %21, %24
  %idxprom9 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %20, i64 %idxprom9
  %25 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %25 to i64
  %26 = load ptr, ptr %clamptab, align 8
  %27 = load i32, ptr %Y, align 4
  %28 = load ptr, ptr %Cbgtab, align 8
  %29 = load i32, ptr %Cb, align 4
  %idxprom12 = sext i32 %29 to i64
  %arrayidx13 = getelementptr inbounds i64, ptr %28, i64 %idxprom12
  %30 = load i64, ptr %arrayidx13, align 8
  %31 = load ptr, ptr %Crgtab, align 8
  %32 = load i32, ptr %Cr, align 4
  %idxprom14 = sext i32 %32 to i64
  %arrayidx15 = getelementptr inbounds i64, ptr %31, i64 %idxprom14
  %33 = load i64, ptr %arrayidx15, align 8
  %add16 = add nsw i64 %30, %33
  %shr17 = ashr i64 %add16, 16
  %conv18 = trunc i64 %shr17 to i32
  %add19 = add nsw i32 %27, %conv18
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %26, i64 %idxprom20
  %34 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %34 to i64
  %shl = shl i64 %conv22, 8
  %or = or i64 %conv11, %shl
  %35 = load ptr, ptr %clamptab, align 8
  %36 = load i32, ptr %Y, align 4
  %37 = load ptr, ptr %Cbbtab, align 8
  %38 = load i32, ptr %Cb, align 4
  %idxprom23 = sext i32 %38 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %37, i64 %idxprom23
  %39 = load i32, ptr %arrayidx24, align 4
  %add25 = add nsw i32 %36, %39
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %35, i64 %idxprom26
  %40 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %40 to i64
  %shl29 = shl i64 %conv28, 16
  %or30 = or i64 %or, %shl29
  %or31 = or i64 %or30, 4278190080
  %41 = load ptr, ptr %cp.addr, align 8
  %arrayidx32 = getelementptr inbounds i64, ptr %41, i64 0
  store i64 %or31, ptr %arrayidx32, align 8
  %42 = load ptr, ptr %pp.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %42, i64 1
  %43 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %43 to i32
  store i32 %conv35, ptr %Y33, align 4
  %44 = load ptr, ptr %clamptab, align 8
  %45 = load i32, ptr %Y33, align 4
  %46 = load ptr, ptr %Crrtab, align 8
  %47 = load i32, ptr %Cr, align 4
  %idxprom36 = sext i32 %47 to i64
  %arrayidx37 = getelementptr inbounds i32, ptr %46, i64 %idxprom36
  %48 = load i32, ptr %arrayidx37, align 4
  %add38 = add nsw i32 %45, %48
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %44, i64 %idxprom39
  %49 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %49 to i64
  %50 = load ptr, ptr %clamptab, align 8
  %51 = load i32, ptr %Y33, align 4
  %52 = load ptr, ptr %Cbgtab, align 8
  %53 = load i32, ptr %Cb, align 4
  %idxprom42 = sext i32 %53 to i64
  %arrayidx43 = getelementptr inbounds i64, ptr %52, i64 %idxprom42
  %54 = load i64, ptr %arrayidx43, align 8
  %55 = load ptr, ptr %Crgtab, align 8
  %56 = load i32, ptr %Cr, align 4
  %idxprom44 = sext i32 %56 to i64
  %arrayidx45 = getelementptr inbounds i64, ptr %55, i64 %idxprom44
  %57 = load i64, ptr %arrayidx45, align 8
  %add46 = add nsw i64 %54, %57
  %shr47 = ashr i64 %add46, 16
  %conv48 = trunc i64 %shr47 to i32
  %add49 = add nsw i32 %51, %conv48
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds i8, ptr %50, i64 %idxprom50
  %58 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %58 to i64
  %shl53 = shl i64 %conv52, 8
  %or54 = or i64 %conv41, %shl53
  %59 = load ptr, ptr %clamptab, align 8
  %60 = load i32, ptr %Y33, align 4
  %61 = load ptr, ptr %Cbbtab, align 8
  %62 = load i32, ptr %Cb, align 4
  %idxprom55 = sext i32 %62 to i64
  %arrayidx56 = getelementptr inbounds i32, ptr %61, i64 %idxprom55
  %63 = load i32, ptr %arrayidx56, align 4
  %add57 = add nsw i32 %60, %63
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds i8, ptr %59, i64 %idxprom58
  %64 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %64 to i64
  %shl61 = shl i64 %conv60, 16
  %or62 = or i64 %or54, %shl61
  %or63 = or i64 %or62, 4278190080
  %65 = load ptr, ptr %cp.addr, align 8
  %arrayidx64 = getelementptr inbounds i64, ptr %65, i64 1
  store i64 %or63, ptr %arrayidx64, align 8
  %66 = load ptr, ptr %cp.addr, align 8
  %add.ptr = getelementptr inbounds i64, ptr %66, i64 2
  store ptr %add.ptr, ptr %cp.addr, align 8
  %67 = load ptr, ptr %pp.addr, align 8
  %add.ptr65 = getelementptr inbounds i8, ptr %67, i64 4
  store ptr %add.ptr65, ptr %pp.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body3
  %68 = load i64, ptr %x.addr, align 8
  %dec = add i64 %68, -1
  store i64 %dec, ptr %x.addr, align 8
  %tobool = icmp ne i64 %dec, 0
  br i1 %tobool, label %do.body3, label %do.end, !llvm.loop !65

do.end:                                           ; preds = %do.cond
  %69 = load i64, ptr %toskew.addr, align 8
  %70 = load ptr, ptr %cp.addr, align 8
  %add.ptr66 = getelementptr inbounds i64, ptr %70, i64 %69
  store ptr %add.ptr66, ptr %cp.addr, align 8
  %71 = load i64, ptr %fromskew.addr, align 8
  %72 = load ptr, ptr %pp.addr, align 8
  %add.ptr67 = getelementptr inbounds i8, ptr %72, i64 %71
  store ptr %add.ptr67, ptr %pp.addr, align 8
  br label %do.cond68

do.cond68:                                        ; preds = %do.end
  %73 = load i64, ptr %h.addr, align 8
  %dec69 = add i64 %73, -1
  store i64 %dec69, ptr %h.addr, align 8
  %tobool70 = icmp ne i64 %dec69, 0
  br i1 %tobool70, label %do.body, label %do.end71, !llvm.loop !66

do.end71:                                         ; preds = %do.cond68
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putcontig8bitYCbCr11tile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
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
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %ycbcr1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 18
  %1 = load ptr, ptr %ycbcr1, align 8
  store ptr %1, ptr %ycbcr, align 8
  %2 = load ptr, ptr %ycbcr, align 8
  %Cr_r_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %Cr_r_tab, align 8
  store ptr %3, ptr %Crrtab, align 8
  %4 = load ptr, ptr %ycbcr, align 8
  %Cb_b_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %Cb_b_tab, align 8
  store ptr %5, ptr %Cbbtab, align 8
  %6 = load ptr, ptr %ycbcr, align 8
  %Cr_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %Cr_g_tab, align 8
  store ptr %7, ptr %Crgtab, align 8
  %8 = load ptr, ptr %ycbcr, align 8
  %Cb_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %Cb_g_tab, align 8
  store ptr %9, ptr %Cbgtab, align 8
  %10 = load ptr, ptr %ycbcr, align 8
  %clamptab2 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %clamptab2, align 8
  store ptr %11, ptr %clamptab, align 8
  %12 = load i64, ptr %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond34, %entry
  %13 = load i64, ptr %w.addr, align 8
  %shr = lshr i64 %13, 1
  store i64 %shr, ptr %x.addr, align 8
  br label %do.body3

do.body3:                                         ; preds = %do.cond, %do.body
  %14 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 1
  %15 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %15 to i32
  store i32 %conv, ptr %Cb, align 4
  %16 = load ptr, ptr %pp.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %16, i64 2
  %17 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %17 to i32
  store i32 %conv5, ptr %Cr, align 4
  %18 = load ptr, ptr %pp.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %18, i64 0
  %19 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %19 to i32
  store i32 %conv7, ptr %Y, align 4
  %20 = load ptr, ptr %clamptab, align 8
  %21 = load i32, ptr %Y, align 4
  %22 = load ptr, ptr %Crrtab, align 8
  %23 = load i32, ptr %Cr, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %22, i64 %idxprom
  %24 = load i32, ptr %arrayidx8, align 4
  %add = add nsw i32 %21, %24
  %idxprom9 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %20, i64 %idxprom9
  %25 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %25 to i64
  %26 = load ptr, ptr %clamptab, align 8
  %27 = load i32, ptr %Y, align 4
  %28 = load ptr, ptr %Cbgtab, align 8
  %29 = load i32, ptr %Cb, align 4
  %idxprom12 = sext i32 %29 to i64
  %arrayidx13 = getelementptr inbounds i64, ptr %28, i64 %idxprom12
  %30 = load i64, ptr %arrayidx13, align 8
  %31 = load ptr, ptr %Crgtab, align 8
  %32 = load i32, ptr %Cr, align 4
  %idxprom14 = sext i32 %32 to i64
  %arrayidx15 = getelementptr inbounds i64, ptr %31, i64 %idxprom14
  %33 = load i64, ptr %arrayidx15, align 8
  %add16 = add nsw i64 %30, %33
  %shr17 = ashr i64 %add16, 16
  %conv18 = trunc i64 %shr17 to i32
  %add19 = add nsw i32 %27, %conv18
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %26, i64 %idxprom20
  %34 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %34 to i64
  %shl = shl i64 %conv22, 8
  %or = or i64 %conv11, %shl
  %35 = load ptr, ptr %clamptab, align 8
  %36 = load i32, ptr %Y, align 4
  %37 = load ptr, ptr %Cbbtab, align 8
  %38 = load i32, ptr %Cb, align 4
  %idxprom23 = sext i32 %38 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %37, i64 %idxprom23
  %39 = load i32, ptr %arrayidx24, align 4
  %add25 = add nsw i32 %36, %39
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %35, i64 %idxprom26
  %40 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %40 to i64
  %shl29 = shl i64 %conv28, 16
  %or30 = or i64 %or, %shl29
  %or31 = or i64 %or30, 4278190080
  %41 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %41, i32 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i64 %or31, ptr %41, align 8
  %42 = load ptr, ptr %pp.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %42, i64 3
  store ptr %add.ptr, ptr %pp.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body3
  %43 = load i64, ptr %x.addr, align 8
  %dec = add i64 %43, -1
  store i64 %dec, ptr %x.addr, align 8
  %tobool = icmp ne i64 %dec, 0
  br i1 %tobool, label %do.body3, label %do.end, !llvm.loop !67

do.end:                                           ; preds = %do.cond
  %44 = load i64, ptr %toskew.addr, align 8
  %45 = load ptr, ptr %cp.addr, align 8
  %add.ptr32 = getelementptr inbounds i64, ptr %45, i64 %44
  store ptr %add.ptr32, ptr %cp.addr, align 8
  %46 = load i64, ptr %fromskew.addr, align 8
  %47 = load ptr, ptr %pp.addr, align 8
  %add.ptr33 = getelementptr inbounds i8, ptr %47, i64 %46
  store ptr %add.ptr33, ptr %pp.addr, align 8
  br label %do.cond34

do.cond34:                                        ; preds = %do.end
  %48 = load i64, ptr %h.addr, align 8
  %dec35 = add i64 %48, -1
  store i64 %dec35, ptr %h.addr, align 8
  %tobool36 = icmp ne i64 %dec35, 0
  br i1 %tobool36, label %do.body, label %do.end37, !llvm.loop !68

do.end37:                                         ; preds = %do.cond34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBAAseparate8bittile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %r, ptr noundef %g, ptr noundef %b, ptr noundef %a) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %_x = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %r, ptr %r.addr, align 8
  store ptr %g, ptr %g.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %1 = load i64, ptr %x.addr, align 8
  %2 = load i64, ptr %y.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i64, ptr %h.addr, align 8
  %dec = add i64 %3, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp = icmp ugt i64 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i64, ptr %w.addr, align 8
  store i64 %4, ptr %_x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %5 = load i64, ptr %_x, align 8
  %cmp1 = icmp uge i64 %5, 8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %r.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %r.addr, align 8
  %7 = load i8, ptr %6, align 1
  %conv = zext i8 %7 to i64
  %8 = load ptr, ptr %g.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr2, ptr %g.addr, align 8
  %9 = load i8, ptr %8, align 1
  %conv3 = zext i8 %9 to i64
  %shl = shl i64 %conv3, 8
  %or = or i64 %conv, %shl
  %10 = load ptr, ptr %b.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr4, ptr %b.addr, align 8
  %11 = load i8, ptr %10, align 1
  %conv5 = zext i8 %11 to i64
  %shl6 = shl i64 %conv5, 16
  %or7 = or i64 %or, %shl6
  %12 = load ptr, ptr %a.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr8, ptr %a.addr, align 8
  %13 = load i8, ptr %12, align 1
  %conv9 = zext i8 %13 to i64
  %shl10 = shl i64 %conv9, 24
  %or11 = or i64 %or7, %shl10
  %14 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i64, ptr %14, i32 1
  store ptr %incdec.ptr12, ptr %cp.addr, align 8
  store i64 %or11, ptr %14, align 8
  %15 = load ptr, ptr %r.addr, align 8
  %incdec.ptr13 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr13, ptr %r.addr, align 8
  %16 = load i8, ptr %15, align 1
  %conv14 = zext i8 %16 to i64
  %17 = load ptr, ptr %g.addr, align 8
  %incdec.ptr15 = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr15, ptr %g.addr, align 8
  %18 = load i8, ptr %17, align 1
  %conv16 = zext i8 %18 to i64
  %shl17 = shl i64 %conv16, 8
  %or18 = or i64 %conv14, %shl17
  %19 = load ptr, ptr %b.addr, align 8
  %incdec.ptr19 = getelementptr inbounds i8, ptr %19, i32 1
  store ptr %incdec.ptr19, ptr %b.addr, align 8
  %20 = load i8, ptr %19, align 1
  %conv20 = zext i8 %20 to i64
  %shl21 = shl i64 %conv20, 16
  %or22 = or i64 %or18, %shl21
  %21 = load ptr, ptr %a.addr, align 8
  %incdec.ptr23 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr23, ptr %a.addr, align 8
  %22 = load i8, ptr %21, align 1
  %conv24 = zext i8 %22 to i64
  %shl25 = shl i64 %conv24, 24
  %or26 = or i64 %or22, %shl25
  %23 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr27 = getelementptr inbounds i64, ptr %23, i32 1
  store ptr %incdec.ptr27, ptr %cp.addr, align 8
  store i64 %or26, ptr %23, align 8
  %24 = load ptr, ptr %r.addr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr28, ptr %r.addr, align 8
  %25 = load i8, ptr %24, align 1
  %conv29 = zext i8 %25 to i64
  %26 = load ptr, ptr %g.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr30, ptr %g.addr, align 8
  %27 = load i8, ptr %26, align 1
  %conv31 = zext i8 %27 to i64
  %shl32 = shl i64 %conv31, 8
  %or33 = or i64 %conv29, %shl32
  %28 = load ptr, ptr %b.addr, align 8
  %incdec.ptr34 = getelementptr inbounds i8, ptr %28, i32 1
  store ptr %incdec.ptr34, ptr %b.addr, align 8
  %29 = load i8, ptr %28, align 1
  %conv35 = zext i8 %29 to i64
  %shl36 = shl i64 %conv35, 16
  %or37 = or i64 %or33, %shl36
  %30 = load ptr, ptr %a.addr, align 8
  %incdec.ptr38 = getelementptr inbounds i8, ptr %30, i32 1
  store ptr %incdec.ptr38, ptr %a.addr, align 8
  %31 = load i8, ptr %30, align 1
  %conv39 = zext i8 %31 to i64
  %shl40 = shl i64 %conv39, 24
  %or41 = or i64 %or37, %shl40
  %32 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr42 = getelementptr inbounds i64, ptr %32, i32 1
  store ptr %incdec.ptr42, ptr %cp.addr, align 8
  store i64 %or41, ptr %32, align 8
  %33 = load ptr, ptr %r.addr, align 8
  %incdec.ptr43 = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr43, ptr %r.addr, align 8
  %34 = load i8, ptr %33, align 1
  %conv44 = zext i8 %34 to i64
  %35 = load ptr, ptr %g.addr, align 8
  %incdec.ptr45 = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr45, ptr %g.addr, align 8
  %36 = load i8, ptr %35, align 1
  %conv46 = zext i8 %36 to i64
  %shl47 = shl i64 %conv46, 8
  %or48 = or i64 %conv44, %shl47
  %37 = load ptr, ptr %b.addr, align 8
  %incdec.ptr49 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr49, ptr %b.addr, align 8
  %38 = load i8, ptr %37, align 1
  %conv50 = zext i8 %38 to i64
  %shl51 = shl i64 %conv50, 16
  %or52 = or i64 %or48, %shl51
  %39 = load ptr, ptr %a.addr, align 8
  %incdec.ptr53 = getelementptr inbounds i8, ptr %39, i32 1
  store ptr %incdec.ptr53, ptr %a.addr, align 8
  %40 = load i8, ptr %39, align 1
  %conv54 = zext i8 %40 to i64
  %shl55 = shl i64 %conv54, 24
  %or56 = or i64 %or52, %shl55
  %41 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr57 = getelementptr inbounds i64, ptr %41, i32 1
  store ptr %incdec.ptr57, ptr %cp.addr, align 8
  store i64 %or56, ptr %41, align 8
  %42 = load ptr, ptr %r.addr, align 8
  %incdec.ptr58 = getelementptr inbounds i8, ptr %42, i32 1
  store ptr %incdec.ptr58, ptr %r.addr, align 8
  %43 = load i8, ptr %42, align 1
  %conv59 = zext i8 %43 to i64
  %44 = load ptr, ptr %g.addr, align 8
  %incdec.ptr60 = getelementptr inbounds i8, ptr %44, i32 1
  store ptr %incdec.ptr60, ptr %g.addr, align 8
  %45 = load i8, ptr %44, align 1
  %conv61 = zext i8 %45 to i64
  %shl62 = shl i64 %conv61, 8
  %or63 = or i64 %conv59, %shl62
  %46 = load ptr, ptr %b.addr, align 8
  %incdec.ptr64 = getelementptr inbounds i8, ptr %46, i32 1
  store ptr %incdec.ptr64, ptr %b.addr, align 8
  %47 = load i8, ptr %46, align 1
  %conv65 = zext i8 %47 to i64
  %shl66 = shl i64 %conv65, 16
  %or67 = or i64 %or63, %shl66
  %48 = load ptr, ptr %a.addr, align 8
  %incdec.ptr68 = getelementptr inbounds i8, ptr %48, i32 1
  store ptr %incdec.ptr68, ptr %a.addr, align 8
  %49 = load i8, ptr %48, align 1
  %conv69 = zext i8 %49 to i64
  %shl70 = shl i64 %conv69, 24
  %or71 = or i64 %or67, %shl70
  %50 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr72 = getelementptr inbounds i64, ptr %50, i32 1
  store ptr %incdec.ptr72, ptr %cp.addr, align 8
  store i64 %or71, ptr %50, align 8
  %51 = load ptr, ptr %r.addr, align 8
  %incdec.ptr73 = getelementptr inbounds i8, ptr %51, i32 1
  store ptr %incdec.ptr73, ptr %r.addr, align 8
  %52 = load i8, ptr %51, align 1
  %conv74 = zext i8 %52 to i64
  %53 = load ptr, ptr %g.addr, align 8
  %incdec.ptr75 = getelementptr inbounds i8, ptr %53, i32 1
  store ptr %incdec.ptr75, ptr %g.addr, align 8
  %54 = load i8, ptr %53, align 1
  %conv76 = zext i8 %54 to i64
  %shl77 = shl i64 %conv76, 8
  %or78 = or i64 %conv74, %shl77
  %55 = load ptr, ptr %b.addr, align 8
  %incdec.ptr79 = getelementptr inbounds i8, ptr %55, i32 1
  store ptr %incdec.ptr79, ptr %b.addr, align 8
  %56 = load i8, ptr %55, align 1
  %conv80 = zext i8 %56 to i64
  %shl81 = shl i64 %conv80, 16
  %or82 = or i64 %or78, %shl81
  %57 = load ptr, ptr %a.addr, align 8
  %incdec.ptr83 = getelementptr inbounds i8, ptr %57, i32 1
  store ptr %incdec.ptr83, ptr %a.addr, align 8
  %58 = load i8, ptr %57, align 1
  %conv84 = zext i8 %58 to i64
  %shl85 = shl i64 %conv84, 24
  %or86 = or i64 %or82, %shl85
  %59 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr87 = getelementptr inbounds i64, ptr %59, i32 1
  store ptr %incdec.ptr87, ptr %cp.addr, align 8
  store i64 %or86, ptr %59, align 8
  %60 = load ptr, ptr %r.addr, align 8
  %incdec.ptr88 = getelementptr inbounds i8, ptr %60, i32 1
  store ptr %incdec.ptr88, ptr %r.addr, align 8
  %61 = load i8, ptr %60, align 1
  %conv89 = zext i8 %61 to i64
  %62 = load ptr, ptr %g.addr, align 8
  %incdec.ptr90 = getelementptr inbounds i8, ptr %62, i32 1
  store ptr %incdec.ptr90, ptr %g.addr, align 8
  %63 = load i8, ptr %62, align 1
  %conv91 = zext i8 %63 to i64
  %shl92 = shl i64 %conv91, 8
  %or93 = or i64 %conv89, %shl92
  %64 = load ptr, ptr %b.addr, align 8
  %incdec.ptr94 = getelementptr inbounds i8, ptr %64, i32 1
  store ptr %incdec.ptr94, ptr %b.addr, align 8
  %65 = load i8, ptr %64, align 1
  %conv95 = zext i8 %65 to i64
  %shl96 = shl i64 %conv95, 16
  %or97 = or i64 %or93, %shl96
  %66 = load ptr, ptr %a.addr, align 8
  %incdec.ptr98 = getelementptr inbounds i8, ptr %66, i32 1
  store ptr %incdec.ptr98, ptr %a.addr, align 8
  %67 = load i8, ptr %66, align 1
  %conv99 = zext i8 %67 to i64
  %shl100 = shl i64 %conv99, 24
  %or101 = or i64 %or97, %shl100
  %68 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr102 = getelementptr inbounds i64, ptr %68, i32 1
  store ptr %incdec.ptr102, ptr %cp.addr, align 8
  store i64 %or101, ptr %68, align 8
  %69 = load ptr, ptr %r.addr, align 8
  %incdec.ptr103 = getelementptr inbounds i8, ptr %69, i32 1
  store ptr %incdec.ptr103, ptr %r.addr, align 8
  %70 = load i8, ptr %69, align 1
  %conv104 = zext i8 %70 to i64
  %71 = load ptr, ptr %g.addr, align 8
  %incdec.ptr105 = getelementptr inbounds i8, ptr %71, i32 1
  store ptr %incdec.ptr105, ptr %g.addr, align 8
  %72 = load i8, ptr %71, align 1
  %conv106 = zext i8 %72 to i64
  %shl107 = shl i64 %conv106, 8
  %or108 = or i64 %conv104, %shl107
  %73 = load ptr, ptr %b.addr, align 8
  %incdec.ptr109 = getelementptr inbounds i8, ptr %73, i32 1
  store ptr %incdec.ptr109, ptr %b.addr, align 8
  %74 = load i8, ptr %73, align 1
  %conv110 = zext i8 %74 to i64
  %shl111 = shl i64 %conv110, 16
  %or112 = or i64 %or108, %shl111
  %75 = load ptr, ptr %a.addr, align 8
  %incdec.ptr113 = getelementptr inbounds i8, ptr %75, i32 1
  store ptr %incdec.ptr113, ptr %a.addr, align 8
  %76 = load i8, ptr %75, align 1
  %conv114 = zext i8 %76 to i64
  %shl115 = shl i64 %conv114, 24
  %or116 = or i64 %or112, %shl115
  %77 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr117 = getelementptr inbounds i64, ptr %77, i32 1
  store ptr %incdec.ptr117, ptr %cp.addr, align 8
  store i64 %or116, ptr %77, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %78 = load i64, ptr %_x, align 8
  %sub = sub i64 %78, 8
  store i64 %sub, ptr %_x, align 8
  br label %for.cond, !llvm.loop !69

for.end:                                          ; preds = %for.cond
  %79 = load i64, ptr %_x, align 8
  %cmp118 = icmp ugt i64 %79, 0
  br i1 %cmp118, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %80 = load i64, ptr %_x, align 8
  switch i64 %80, label %sw.epilog [
    i64 7, label %sw.bb
    i64 6, label %sw.bb135
    i64 5, label %sw.bb151
    i64 4, label %sw.bb167
    i64 3, label %sw.bb183
    i64 2, label %sw.bb199
    i64 1, label %sw.bb215
  ]

sw.bb:                                            ; preds = %if.then
  %81 = load ptr, ptr %r.addr, align 8
  %incdec.ptr120 = getelementptr inbounds i8, ptr %81, i32 1
  store ptr %incdec.ptr120, ptr %r.addr, align 8
  %82 = load i8, ptr %81, align 1
  %conv121 = zext i8 %82 to i64
  %83 = load ptr, ptr %g.addr, align 8
  %incdec.ptr122 = getelementptr inbounds i8, ptr %83, i32 1
  store ptr %incdec.ptr122, ptr %g.addr, align 8
  %84 = load i8, ptr %83, align 1
  %conv123 = zext i8 %84 to i64
  %shl124 = shl i64 %conv123, 8
  %or125 = or i64 %conv121, %shl124
  %85 = load ptr, ptr %b.addr, align 8
  %incdec.ptr126 = getelementptr inbounds i8, ptr %85, i32 1
  store ptr %incdec.ptr126, ptr %b.addr, align 8
  %86 = load i8, ptr %85, align 1
  %conv127 = zext i8 %86 to i64
  %shl128 = shl i64 %conv127, 16
  %or129 = or i64 %or125, %shl128
  %87 = load ptr, ptr %a.addr, align 8
  %incdec.ptr130 = getelementptr inbounds i8, ptr %87, i32 1
  store ptr %incdec.ptr130, ptr %a.addr, align 8
  %88 = load i8, ptr %87, align 1
  %conv131 = zext i8 %88 to i64
  %shl132 = shl i64 %conv131, 24
  %or133 = or i64 %or129, %shl132
  %89 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr134 = getelementptr inbounds i64, ptr %89, i32 1
  store ptr %incdec.ptr134, ptr %cp.addr, align 8
  store i64 %or133, ptr %89, align 8
  br label %sw.bb135

sw.bb135:                                         ; preds = %if.then, %sw.bb
  %90 = load ptr, ptr %r.addr, align 8
  %incdec.ptr136 = getelementptr inbounds i8, ptr %90, i32 1
  store ptr %incdec.ptr136, ptr %r.addr, align 8
  %91 = load i8, ptr %90, align 1
  %conv137 = zext i8 %91 to i64
  %92 = load ptr, ptr %g.addr, align 8
  %incdec.ptr138 = getelementptr inbounds i8, ptr %92, i32 1
  store ptr %incdec.ptr138, ptr %g.addr, align 8
  %93 = load i8, ptr %92, align 1
  %conv139 = zext i8 %93 to i64
  %shl140 = shl i64 %conv139, 8
  %or141 = or i64 %conv137, %shl140
  %94 = load ptr, ptr %b.addr, align 8
  %incdec.ptr142 = getelementptr inbounds i8, ptr %94, i32 1
  store ptr %incdec.ptr142, ptr %b.addr, align 8
  %95 = load i8, ptr %94, align 1
  %conv143 = zext i8 %95 to i64
  %shl144 = shl i64 %conv143, 16
  %or145 = or i64 %or141, %shl144
  %96 = load ptr, ptr %a.addr, align 8
  %incdec.ptr146 = getelementptr inbounds i8, ptr %96, i32 1
  store ptr %incdec.ptr146, ptr %a.addr, align 8
  %97 = load i8, ptr %96, align 1
  %conv147 = zext i8 %97 to i64
  %shl148 = shl i64 %conv147, 24
  %or149 = or i64 %or145, %shl148
  %98 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr150 = getelementptr inbounds i64, ptr %98, i32 1
  store ptr %incdec.ptr150, ptr %cp.addr, align 8
  store i64 %or149, ptr %98, align 8
  br label %sw.bb151

sw.bb151:                                         ; preds = %if.then, %sw.bb135
  %99 = load ptr, ptr %r.addr, align 8
  %incdec.ptr152 = getelementptr inbounds i8, ptr %99, i32 1
  store ptr %incdec.ptr152, ptr %r.addr, align 8
  %100 = load i8, ptr %99, align 1
  %conv153 = zext i8 %100 to i64
  %101 = load ptr, ptr %g.addr, align 8
  %incdec.ptr154 = getelementptr inbounds i8, ptr %101, i32 1
  store ptr %incdec.ptr154, ptr %g.addr, align 8
  %102 = load i8, ptr %101, align 1
  %conv155 = zext i8 %102 to i64
  %shl156 = shl i64 %conv155, 8
  %or157 = or i64 %conv153, %shl156
  %103 = load ptr, ptr %b.addr, align 8
  %incdec.ptr158 = getelementptr inbounds i8, ptr %103, i32 1
  store ptr %incdec.ptr158, ptr %b.addr, align 8
  %104 = load i8, ptr %103, align 1
  %conv159 = zext i8 %104 to i64
  %shl160 = shl i64 %conv159, 16
  %or161 = or i64 %or157, %shl160
  %105 = load ptr, ptr %a.addr, align 8
  %incdec.ptr162 = getelementptr inbounds i8, ptr %105, i32 1
  store ptr %incdec.ptr162, ptr %a.addr, align 8
  %106 = load i8, ptr %105, align 1
  %conv163 = zext i8 %106 to i64
  %shl164 = shl i64 %conv163, 24
  %or165 = or i64 %or161, %shl164
  %107 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr166 = getelementptr inbounds i64, ptr %107, i32 1
  store ptr %incdec.ptr166, ptr %cp.addr, align 8
  store i64 %or165, ptr %107, align 8
  br label %sw.bb167

sw.bb167:                                         ; preds = %if.then, %sw.bb151
  %108 = load ptr, ptr %r.addr, align 8
  %incdec.ptr168 = getelementptr inbounds i8, ptr %108, i32 1
  store ptr %incdec.ptr168, ptr %r.addr, align 8
  %109 = load i8, ptr %108, align 1
  %conv169 = zext i8 %109 to i64
  %110 = load ptr, ptr %g.addr, align 8
  %incdec.ptr170 = getelementptr inbounds i8, ptr %110, i32 1
  store ptr %incdec.ptr170, ptr %g.addr, align 8
  %111 = load i8, ptr %110, align 1
  %conv171 = zext i8 %111 to i64
  %shl172 = shl i64 %conv171, 8
  %or173 = or i64 %conv169, %shl172
  %112 = load ptr, ptr %b.addr, align 8
  %incdec.ptr174 = getelementptr inbounds i8, ptr %112, i32 1
  store ptr %incdec.ptr174, ptr %b.addr, align 8
  %113 = load i8, ptr %112, align 1
  %conv175 = zext i8 %113 to i64
  %shl176 = shl i64 %conv175, 16
  %or177 = or i64 %or173, %shl176
  %114 = load ptr, ptr %a.addr, align 8
  %incdec.ptr178 = getelementptr inbounds i8, ptr %114, i32 1
  store ptr %incdec.ptr178, ptr %a.addr, align 8
  %115 = load i8, ptr %114, align 1
  %conv179 = zext i8 %115 to i64
  %shl180 = shl i64 %conv179, 24
  %or181 = or i64 %or177, %shl180
  %116 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr182 = getelementptr inbounds i64, ptr %116, i32 1
  store ptr %incdec.ptr182, ptr %cp.addr, align 8
  store i64 %or181, ptr %116, align 8
  br label %sw.bb183

sw.bb183:                                         ; preds = %if.then, %sw.bb167
  %117 = load ptr, ptr %r.addr, align 8
  %incdec.ptr184 = getelementptr inbounds i8, ptr %117, i32 1
  store ptr %incdec.ptr184, ptr %r.addr, align 8
  %118 = load i8, ptr %117, align 1
  %conv185 = zext i8 %118 to i64
  %119 = load ptr, ptr %g.addr, align 8
  %incdec.ptr186 = getelementptr inbounds i8, ptr %119, i32 1
  store ptr %incdec.ptr186, ptr %g.addr, align 8
  %120 = load i8, ptr %119, align 1
  %conv187 = zext i8 %120 to i64
  %shl188 = shl i64 %conv187, 8
  %or189 = or i64 %conv185, %shl188
  %121 = load ptr, ptr %b.addr, align 8
  %incdec.ptr190 = getelementptr inbounds i8, ptr %121, i32 1
  store ptr %incdec.ptr190, ptr %b.addr, align 8
  %122 = load i8, ptr %121, align 1
  %conv191 = zext i8 %122 to i64
  %shl192 = shl i64 %conv191, 16
  %or193 = or i64 %or189, %shl192
  %123 = load ptr, ptr %a.addr, align 8
  %incdec.ptr194 = getelementptr inbounds i8, ptr %123, i32 1
  store ptr %incdec.ptr194, ptr %a.addr, align 8
  %124 = load i8, ptr %123, align 1
  %conv195 = zext i8 %124 to i64
  %shl196 = shl i64 %conv195, 24
  %or197 = or i64 %or193, %shl196
  %125 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr198 = getelementptr inbounds i64, ptr %125, i32 1
  store ptr %incdec.ptr198, ptr %cp.addr, align 8
  store i64 %or197, ptr %125, align 8
  br label %sw.bb199

sw.bb199:                                         ; preds = %if.then, %sw.bb183
  %126 = load ptr, ptr %r.addr, align 8
  %incdec.ptr200 = getelementptr inbounds i8, ptr %126, i32 1
  store ptr %incdec.ptr200, ptr %r.addr, align 8
  %127 = load i8, ptr %126, align 1
  %conv201 = zext i8 %127 to i64
  %128 = load ptr, ptr %g.addr, align 8
  %incdec.ptr202 = getelementptr inbounds i8, ptr %128, i32 1
  store ptr %incdec.ptr202, ptr %g.addr, align 8
  %129 = load i8, ptr %128, align 1
  %conv203 = zext i8 %129 to i64
  %shl204 = shl i64 %conv203, 8
  %or205 = or i64 %conv201, %shl204
  %130 = load ptr, ptr %b.addr, align 8
  %incdec.ptr206 = getelementptr inbounds i8, ptr %130, i32 1
  store ptr %incdec.ptr206, ptr %b.addr, align 8
  %131 = load i8, ptr %130, align 1
  %conv207 = zext i8 %131 to i64
  %shl208 = shl i64 %conv207, 16
  %or209 = or i64 %or205, %shl208
  %132 = load ptr, ptr %a.addr, align 8
  %incdec.ptr210 = getelementptr inbounds i8, ptr %132, i32 1
  store ptr %incdec.ptr210, ptr %a.addr, align 8
  %133 = load i8, ptr %132, align 1
  %conv211 = zext i8 %133 to i64
  %shl212 = shl i64 %conv211, 24
  %or213 = or i64 %or209, %shl212
  %134 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr214 = getelementptr inbounds i64, ptr %134, i32 1
  store ptr %incdec.ptr214, ptr %cp.addr, align 8
  store i64 %or213, ptr %134, align 8
  br label %sw.bb215

sw.bb215:                                         ; preds = %if.then, %sw.bb199
  %135 = load ptr, ptr %r.addr, align 8
  %incdec.ptr216 = getelementptr inbounds i8, ptr %135, i32 1
  store ptr %incdec.ptr216, ptr %r.addr, align 8
  %136 = load i8, ptr %135, align 1
  %conv217 = zext i8 %136 to i64
  %137 = load ptr, ptr %g.addr, align 8
  %incdec.ptr218 = getelementptr inbounds i8, ptr %137, i32 1
  store ptr %incdec.ptr218, ptr %g.addr, align 8
  %138 = load i8, ptr %137, align 1
  %conv219 = zext i8 %138 to i64
  %shl220 = shl i64 %conv219, 8
  %or221 = or i64 %conv217, %shl220
  %139 = load ptr, ptr %b.addr, align 8
  %incdec.ptr222 = getelementptr inbounds i8, ptr %139, i32 1
  store ptr %incdec.ptr222, ptr %b.addr, align 8
  %140 = load i8, ptr %139, align 1
  %conv223 = zext i8 %140 to i64
  %shl224 = shl i64 %conv223, 16
  %or225 = or i64 %or221, %shl224
  %141 = load ptr, ptr %a.addr, align 8
  %incdec.ptr226 = getelementptr inbounds i8, ptr %141, i32 1
  store ptr %incdec.ptr226, ptr %a.addr, align 8
  %142 = load i8, ptr %141, align 1
  %conv227 = zext i8 %142 to i64
  %shl228 = shl i64 %conv227, 24
  %or229 = or i64 %or225, %shl228
  %143 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr230 = getelementptr inbounds i64, ptr %143, i32 1
  store ptr %incdec.ptr230, ptr %cp.addr, align 8
  store i64 %or229, ptr %143, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb215, %if.then
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %for.end
  %144 = load i64, ptr %fromskew.addr, align 8
  %145 = load ptr, ptr %r.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %145, i64 %144
  store ptr %add.ptr, ptr %r.addr, align 8
  %146 = load i64, ptr %fromskew.addr, align 8
  %147 = load ptr, ptr %g.addr, align 8
  %add.ptr231 = getelementptr inbounds i8, ptr %147, i64 %146
  store ptr %add.ptr231, ptr %g.addr, align 8
  %148 = load i64, ptr %fromskew.addr, align 8
  %149 = load ptr, ptr %b.addr, align 8
  %add.ptr232 = getelementptr inbounds i8, ptr %149, i64 %148
  store ptr %add.ptr232, ptr %b.addr, align 8
  %150 = load i64, ptr %fromskew.addr, align 8
  %151 = load ptr, ptr %a.addr, align 8
  %add.ptr233 = getelementptr inbounds i8, ptr %151, i64 %150
  store ptr %add.ptr233, ptr %a.addr, align 8
  %152 = load i64, ptr %toskew.addr, align 8
  %153 = load ptr, ptr %cp.addr, align 8
  %add.ptr234 = getelementptr inbounds i64, ptr %153, i64 %152
  store ptr %add.ptr234, ptr %cp.addr, align 8
  br label %while.cond, !llvm.loop !70

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBUAseparate8bittile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %r, ptr noundef %g, ptr noundef %b, ptr noundef %a) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
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
  %bv = alloca i64, align 8
  %av = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %r, ptr %r.addr, align 8
  store ptr %g, ptr %g.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %1 = load i64, ptr %y.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %2 = load i64, ptr %h.addr, align 8
  %dec = add i64 %2, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, ptr %w.addr, align 8
  store i64 %3, ptr %x.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %4 = load i64, ptr %x.addr, align 8
  %dec1 = add i64 %4, -1
  store i64 %dec1, ptr %x.addr, align 8
  %cmp2 = icmp ugt i64 %4, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %a.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %a.addr, align 8
  %6 = load i8, ptr %5, align 1
  %conv = zext i8 %6 to i64
  store i64 %conv, ptr %av, align 8
  %7 = load ptr, ptr %r.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr3, ptr %r.addr, align 8
  %8 = load i8, ptr %7, align 1
  %conv4 = zext i8 %8 to i64
  %9 = load i64, ptr %av, align 8
  %mul = mul i64 %conv4, %9
  %div = udiv i64 %mul, 255
  store i64 %div, ptr %rv, align 8
  %10 = load ptr, ptr %g.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr5, ptr %g.addr, align 8
  %11 = load i8, ptr %10, align 1
  %conv6 = zext i8 %11 to i64
  %12 = load i64, ptr %av, align 8
  %mul7 = mul i64 %conv6, %12
  %div8 = udiv i64 %mul7, 255
  store i64 %div8, ptr %gv, align 8
  %13 = load ptr, ptr %b.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr9, ptr %b.addr, align 8
  %14 = load i8, ptr %13, align 1
  %conv10 = zext i8 %14 to i64
  %15 = load i64, ptr %av, align 8
  %mul11 = mul i64 %conv10, %15
  %div12 = udiv i64 %mul11, 255
  store i64 %div12, ptr %bv, align 8
  %16 = load i64, ptr %rv, align 8
  %17 = load i64, ptr %gv, align 8
  %shl = shl i64 %17, 8
  %or = or i64 %16, %shl
  %18 = load i64, ptr %bv, align 8
  %shl13 = shl i64 %18, 16
  %or14 = or i64 %or, %shl13
  %19 = load i64, ptr %av, align 8
  %shl15 = shl i64 %19, 24
  %or16 = or i64 %or14, %shl15
  %20 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr17 = getelementptr inbounds i64, ptr %20, i32 1
  store ptr %incdec.ptr17, ptr %cp.addr, align 8
  store i64 %or16, ptr %20, align 8
  br label %for.cond, !llvm.loop !71

for.end:                                          ; preds = %for.cond
  %21 = load i64, ptr %fromskew.addr, align 8
  %22 = load ptr, ptr %r.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %22, i64 %21
  store ptr %add.ptr, ptr %r.addr, align 8
  %23 = load i64, ptr %fromskew.addr, align 8
  %24 = load ptr, ptr %g.addr, align 8
  %add.ptr18 = getelementptr inbounds i8, ptr %24, i64 %23
  store ptr %add.ptr18, ptr %g.addr, align 8
  %25 = load i64, ptr %fromskew.addr, align 8
  %26 = load ptr, ptr %b.addr, align 8
  %add.ptr19 = getelementptr inbounds i8, ptr %26, i64 %25
  store ptr %add.ptr19, ptr %b.addr, align 8
  %27 = load i64, ptr %fromskew.addr, align 8
  %28 = load ptr, ptr %a.addr, align 8
  %add.ptr20 = getelementptr inbounds i8, ptr %28, i64 %27
  store ptr %add.ptr20, ptr %a.addr, align 8
  %29 = load i64, ptr %toskew.addr, align 8
  %30 = load ptr, ptr %cp.addr, align 8
  %add.ptr21 = getelementptr inbounds i64, ptr %30, i64 %29
  store ptr %add.ptr21, ptr %cp.addr, align 8
  br label %while.cond, !llvm.loop !72

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBseparate8bittile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %r, ptr noundef %g, ptr noundef %b, ptr noundef %a) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %_x = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %r, ptr %r.addr, align 8
  store ptr %g, ptr %g.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %1 = load i64, ptr %x.addr, align 8
  %2 = load i64, ptr %y.addr, align 8
  %3 = load ptr, ptr %a.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = load i64, ptr %h.addr, align 8
  %dec = add i64 %4, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp = icmp ugt i64 %4, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i64, ptr %w.addr, align 8
  store i64 %5, ptr %_x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %6 = load i64, ptr %_x, align 8
  %cmp1 = icmp uge i64 %6, 8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %r.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %r.addr, align 8
  %8 = load i8, ptr %7, align 1
  %conv = zext i8 %8 to i64
  %9 = load ptr, ptr %g.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr2, ptr %g.addr, align 8
  %10 = load i8, ptr %9, align 1
  %conv3 = zext i8 %10 to i64
  %shl = shl i64 %conv3, 8
  %or = or i64 %conv, %shl
  %11 = load ptr, ptr %b.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr4, ptr %b.addr, align 8
  %12 = load i8, ptr %11, align 1
  %conv5 = zext i8 %12 to i64
  %shl6 = shl i64 %conv5, 16
  %or7 = or i64 %or, %shl6
  %or8 = or i64 %or7, 4278190080
  %13 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i64, ptr %13, i32 1
  store ptr %incdec.ptr9, ptr %cp.addr, align 8
  store i64 %or8, ptr %13, align 8
  %14 = load ptr, ptr %r.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr10, ptr %r.addr, align 8
  %15 = load i8, ptr %14, align 1
  %conv11 = zext i8 %15 to i64
  %16 = load ptr, ptr %g.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr12, ptr %g.addr, align 8
  %17 = load i8, ptr %16, align 1
  %conv13 = zext i8 %17 to i64
  %shl14 = shl i64 %conv13, 8
  %or15 = or i64 %conv11, %shl14
  %18 = load ptr, ptr %b.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, ptr %18, i32 1
  store ptr %incdec.ptr16, ptr %b.addr, align 8
  %19 = load i8, ptr %18, align 1
  %conv17 = zext i8 %19 to i64
  %shl18 = shl i64 %conv17, 16
  %or19 = or i64 %or15, %shl18
  %or20 = or i64 %or19, 4278190080
  %20 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr21 = getelementptr inbounds i64, ptr %20, i32 1
  store ptr %incdec.ptr21, ptr %cp.addr, align 8
  store i64 %or20, ptr %20, align 8
  %21 = load ptr, ptr %r.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr22, ptr %r.addr, align 8
  %22 = load i8, ptr %21, align 1
  %conv23 = zext i8 %22 to i64
  %23 = load ptr, ptr %g.addr, align 8
  %incdec.ptr24 = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %incdec.ptr24, ptr %g.addr, align 8
  %24 = load i8, ptr %23, align 1
  %conv25 = zext i8 %24 to i64
  %shl26 = shl i64 %conv25, 8
  %or27 = or i64 %conv23, %shl26
  %25 = load ptr, ptr %b.addr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr28, ptr %b.addr, align 8
  %26 = load i8, ptr %25, align 1
  %conv29 = zext i8 %26 to i64
  %shl30 = shl i64 %conv29, 16
  %or31 = or i64 %or27, %shl30
  %or32 = or i64 %or31, 4278190080
  %27 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr33 = getelementptr inbounds i64, ptr %27, i32 1
  store ptr %incdec.ptr33, ptr %cp.addr, align 8
  store i64 %or32, ptr %27, align 8
  %28 = load ptr, ptr %r.addr, align 8
  %incdec.ptr34 = getelementptr inbounds i8, ptr %28, i32 1
  store ptr %incdec.ptr34, ptr %r.addr, align 8
  %29 = load i8, ptr %28, align 1
  %conv35 = zext i8 %29 to i64
  %30 = load ptr, ptr %g.addr, align 8
  %incdec.ptr36 = getelementptr inbounds i8, ptr %30, i32 1
  store ptr %incdec.ptr36, ptr %g.addr, align 8
  %31 = load i8, ptr %30, align 1
  %conv37 = zext i8 %31 to i64
  %shl38 = shl i64 %conv37, 8
  %or39 = or i64 %conv35, %shl38
  %32 = load ptr, ptr %b.addr, align 8
  %incdec.ptr40 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr40, ptr %b.addr, align 8
  %33 = load i8, ptr %32, align 1
  %conv41 = zext i8 %33 to i64
  %shl42 = shl i64 %conv41, 16
  %or43 = or i64 %or39, %shl42
  %or44 = or i64 %or43, 4278190080
  %34 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr45 = getelementptr inbounds i64, ptr %34, i32 1
  store ptr %incdec.ptr45, ptr %cp.addr, align 8
  store i64 %or44, ptr %34, align 8
  %35 = load ptr, ptr %r.addr, align 8
  %incdec.ptr46 = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr46, ptr %r.addr, align 8
  %36 = load i8, ptr %35, align 1
  %conv47 = zext i8 %36 to i64
  %37 = load ptr, ptr %g.addr, align 8
  %incdec.ptr48 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr48, ptr %g.addr, align 8
  %38 = load i8, ptr %37, align 1
  %conv49 = zext i8 %38 to i64
  %shl50 = shl i64 %conv49, 8
  %or51 = or i64 %conv47, %shl50
  %39 = load ptr, ptr %b.addr, align 8
  %incdec.ptr52 = getelementptr inbounds i8, ptr %39, i32 1
  store ptr %incdec.ptr52, ptr %b.addr, align 8
  %40 = load i8, ptr %39, align 1
  %conv53 = zext i8 %40 to i64
  %shl54 = shl i64 %conv53, 16
  %or55 = or i64 %or51, %shl54
  %or56 = or i64 %or55, 4278190080
  %41 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr57 = getelementptr inbounds i64, ptr %41, i32 1
  store ptr %incdec.ptr57, ptr %cp.addr, align 8
  store i64 %or56, ptr %41, align 8
  %42 = load ptr, ptr %r.addr, align 8
  %incdec.ptr58 = getelementptr inbounds i8, ptr %42, i32 1
  store ptr %incdec.ptr58, ptr %r.addr, align 8
  %43 = load i8, ptr %42, align 1
  %conv59 = zext i8 %43 to i64
  %44 = load ptr, ptr %g.addr, align 8
  %incdec.ptr60 = getelementptr inbounds i8, ptr %44, i32 1
  store ptr %incdec.ptr60, ptr %g.addr, align 8
  %45 = load i8, ptr %44, align 1
  %conv61 = zext i8 %45 to i64
  %shl62 = shl i64 %conv61, 8
  %or63 = or i64 %conv59, %shl62
  %46 = load ptr, ptr %b.addr, align 8
  %incdec.ptr64 = getelementptr inbounds i8, ptr %46, i32 1
  store ptr %incdec.ptr64, ptr %b.addr, align 8
  %47 = load i8, ptr %46, align 1
  %conv65 = zext i8 %47 to i64
  %shl66 = shl i64 %conv65, 16
  %or67 = or i64 %or63, %shl66
  %or68 = or i64 %or67, 4278190080
  %48 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr69 = getelementptr inbounds i64, ptr %48, i32 1
  store ptr %incdec.ptr69, ptr %cp.addr, align 8
  store i64 %or68, ptr %48, align 8
  %49 = load ptr, ptr %r.addr, align 8
  %incdec.ptr70 = getelementptr inbounds i8, ptr %49, i32 1
  store ptr %incdec.ptr70, ptr %r.addr, align 8
  %50 = load i8, ptr %49, align 1
  %conv71 = zext i8 %50 to i64
  %51 = load ptr, ptr %g.addr, align 8
  %incdec.ptr72 = getelementptr inbounds i8, ptr %51, i32 1
  store ptr %incdec.ptr72, ptr %g.addr, align 8
  %52 = load i8, ptr %51, align 1
  %conv73 = zext i8 %52 to i64
  %shl74 = shl i64 %conv73, 8
  %or75 = or i64 %conv71, %shl74
  %53 = load ptr, ptr %b.addr, align 8
  %incdec.ptr76 = getelementptr inbounds i8, ptr %53, i32 1
  store ptr %incdec.ptr76, ptr %b.addr, align 8
  %54 = load i8, ptr %53, align 1
  %conv77 = zext i8 %54 to i64
  %shl78 = shl i64 %conv77, 16
  %or79 = or i64 %or75, %shl78
  %or80 = or i64 %or79, 4278190080
  %55 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr81 = getelementptr inbounds i64, ptr %55, i32 1
  store ptr %incdec.ptr81, ptr %cp.addr, align 8
  store i64 %or80, ptr %55, align 8
  %56 = load ptr, ptr %r.addr, align 8
  %incdec.ptr82 = getelementptr inbounds i8, ptr %56, i32 1
  store ptr %incdec.ptr82, ptr %r.addr, align 8
  %57 = load i8, ptr %56, align 1
  %conv83 = zext i8 %57 to i64
  %58 = load ptr, ptr %g.addr, align 8
  %incdec.ptr84 = getelementptr inbounds i8, ptr %58, i32 1
  store ptr %incdec.ptr84, ptr %g.addr, align 8
  %59 = load i8, ptr %58, align 1
  %conv85 = zext i8 %59 to i64
  %shl86 = shl i64 %conv85, 8
  %or87 = or i64 %conv83, %shl86
  %60 = load ptr, ptr %b.addr, align 8
  %incdec.ptr88 = getelementptr inbounds i8, ptr %60, i32 1
  store ptr %incdec.ptr88, ptr %b.addr, align 8
  %61 = load i8, ptr %60, align 1
  %conv89 = zext i8 %61 to i64
  %shl90 = shl i64 %conv89, 16
  %or91 = or i64 %or87, %shl90
  %or92 = or i64 %or91, 4278190080
  %62 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr93 = getelementptr inbounds i64, ptr %62, i32 1
  store ptr %incdec.ptr93, ptr %cp.addr, align 8
  store i64 %or92, ptr %62, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %63 = load i64, ptr %_x, align 8
  %sub = sub i64 %63, 8
  store i64 %sub, ptr %_x, align 8
  br label %for.cond, !llvm.loop !73

for.end:                                          ; preds = %for.cond
  %64 = load i64, ptr %_x, align 8
  %cmp94 = icmp ugt i64 %64, 0
  br i1 %cmp94, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %65 = load i64, ptr %_x, align 8
  switch i64 %65, label %sw.epilog [
    i64 7, label %sw.bb
    i64 6, label %sw.bb108
    i64 5, label %sw.bb121
    i64 4, label %sw.bb134
    i64 3, label %sw.bb147
    i64 2, label %sw.bb160
    i64 1, label %sw.bb173
  ]

sw.bb:                                            ; preds = %if.then
  %66 = load ptr, ptr %r.addr, align 8
  %incdec.ptr96 = getelementptr inbounds i8, ptr %66, i32 1
  store ptr %incdec.ptr96, ptr %r.addr, align 8
  %67 = load i8, ptr %66, align 1
  %conv97 = zext i8 %67 to i64
  %68 = load ptr, ptr %g.addr, align 8
  %incdec.ptr98 = getelementptr inbounds i8, ptr %68, i32 1
  store ptr %incdec.ptr98, ptr %g.addr, align 8
  %69 = load i8, ptr %68, align 1
  %conv99 = zext i8 %69 to i64
  %shl100 = shl i64 %conv99, 8
  %or101 = or i64 %conv97, %shl100
  %70 = load ptr, ptr %b.addr, align 8
  %incdec.ptr102 = getelementptr inbounds i8, ptr %70, i32 1
  store ptr %incdec.ptr102, ptr %b.addr, align 8
  %71 = load i8, ptr %70, align 1
  %conv103 = zext i8 %71 to i64
  %shl104 = shl i64 %conv103, 16
  %or105 = or i64 %or101, %shl104
  %or106 = or i64 %or105, 4278190080
  %72 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr107 = getelementptr inbounds i64, ptr %72, i32 1
  store ptr %incdec.ptr107, ptr %cp.addr, align 8
  store i64 %or106, ptr %72, align 8
  br label %sw.bb108

sw.bb108:                                         ; preds = %if.then, %sw.bb
  %73 = load ptr, ptr %r.addr, align 8
  %incdec.ptr109 = getelementptr inbounds i8, ptr %73, i32 1
  store ptr %incdec.ptr109, ptr %r.addr, align 8
  %74 = load i8, ptr %73, align 1
  %conv110 = zext i8 %74 to i64
  %75 = load ptr, ptr %g.addr, align 8
  %incdec.ptr111 = getelementptr inbounds i8, ptr %75, i32 1
  store ptr %incdec.ptr111, ptr %g.addr, align 8
  %76 = load i8, ptr %75, align 1
  %conv112 = zext i8 %76 to i64
  %shl113 = shl i64 %conv112, 8
  %or114 = or i64 %conv110, %shl113
  %77 = load ptr, ptr %b.addr, align 8
  %incdec.ptr115 = getelementptr inbounds i8, ptr %77, i32 1
  store ptr %incdec.ptr115, ptr %b.addr, align 8
  %78 = load i8, ptr %77, align 1
  %conv116 = zext i8 %78 to i64
  %shl117 = shl i64 %conv116, 16
  %or118 = or i64 %or114, %shl117
  %or119 = or i64 %or118, 4278190080
  %79 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr120 = getelementptr inbounds i64, ptr %79, i32 1
  store ptr %incdec.ptr120, ptr %cp.addr, align 8
  store i64 %or119, ptr %79, align 8
  br label %sw.bb121

sw.bb121:                                         ; preds = %if.then, %sw.bb108
  %80 = load ptr, ptr %r.addr, align 8
  %incdec.ptr122 = getelementptr inbounds i8, ptr %80, i32 1
  store ptr %incdec.ptr122, ptr %r.addr, align 8
  %81 = load i8, ptr %80, align 1
  %conv123 = zext i8 %81 to i64
  %82 = load ptr, ptr %g.addr, align 8
  %incdec.ptr124 = getelementptr inbounds i8, ptr %82, i32 1
  store ptr %incdec.ptr124, ptr %g.addr, align 8
  %83 = load i8, ptr %82, align 1
  %conv125 = zext i8 %83 to i64
  %shl126 = shl i64 %conv125, 8
  %or127 = or i64 %conv123, %shl126
  %84 = load ptr, ptr %b.addr, align 8
  %incdec.ptr128 = getelementptr inbounds i8, ptr %84, i32 1
  store ptr %incdec.ptr128, ptr %b.addr, align 8
  %85 = load i8, ptr %84, align 1
  %conv129 = zext i8 %85 to i64
  %shl130 = shl i64 %conv129, 16
  %or131 = or i64 %or127, %shl130
  %or132 = or i64 %or131, 4278190080
  %86 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr133 = getelementptr inbounds i64, ptr %86, i32 1
  store ptr %incdec.ptr133, ptr %cp.addr, align 8
  store i64 %or132, ptr %86, align 8
  br label %sw.bb134

sw.bb134:                                         ; preds = %if.then, %sw.bb121
  %87 = load ptr, ptr %r.addr, align 8
  %incdec.ptr135 = getelementptr inbounds i8, ptr %87, i32 1
  store ptr %incdec.ptr135, ptr %r.addr, align 8
  %88 = load i8, ptr %87, align 1
  %conv136 = zext i8 %88 to i64
  %89 = load ptr, ptr %g.addr, align 8
  %incdec.ptr137 = getelementptr inbounds i8, ptr %89, i32 1
  store ptr %incdec.ptr137, ptr %g.addr, align 8
  %90 = load i8, ptr %89, align 1
  %conv138 = zext i8 %90 to i64
  %shl139 = shl i64 %conv138, 8
  %or140 = or i64 %conv136, %shl139
  %91 = load ptr, ptr %b.addr, align 8
  %incdec.ptr141 = getelementptr inbounds i8, ptr %91, i32 1
  store ptr %incdec.ptr141, ptr %b.addr, align 8
  %92 = load i8, ptr %91, align 1
  %conv142 = zext i8 %92 to i64
  %shl143 = shl i64 %conv142, 16
  %or144 = or i64 %or140, %shl143
  %or145 = or i64 %or144, 4278190080
  %93 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr146 = getelementptr inbounds i64, ptr %93, i32 1
  store ptr %incdec.ptr146, ptr %cp.addr, align 8
  store i64 %or145, ptr %93, align 8
  br label %sw.bb147

sw.bb147:                                         ; preds = %if.then, %sw.bb134
  %94 = load ptr, ptr %r.addr, align 8
  %incdec.ptr148 = getelementptr inbounds i8, ptr %94, i32 1
  store ptr %incdec.ptr148, ptr %r.addr, align 8
  %95 = load i8, ptr %94, align 1
  %conv149 = zext i8 %95 to i64
  %96 = load ptr, ptr %g.addr, align 8
  %incdec.ptr150 = getelementptr inbounds i8, ptr %96, i32 1
  store ptr %incdec.ptr150, ptr %g.addr, align 8
  %97 = load i8, ptr %96, align 1
  %conv151 = zext i8 %97 to i64
  %shl152 = shl i64 %conv151, 8
  %or153 = or i64 %conv149, %shl152
  %98 = load ptr, ptr %b.addr, align 8
  %incdec.ptr154 = getelementptr inbounds i8, ptr %98, i32 1
  store ptr %incdec.ptr154, ptr %b.addr, align 8
  %99 = load i8, ptr %98, align 1
  %conv155 = zext i8 %99 to i64
  %shl156 = shl i64 %conv155, 16
  %or157 = or i64 %or153, %shl156
  %or158 = or i64 %or157, 4278190080
  %100 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr159 = getelementptr inbounds i64, ptr %100, i32 1
  store ptr %incdec.ptr159, ptr %cp.addr, align 8
  store i64 %or158, ptr %100, align 8
  br label %sw.bb160

sw.bb160:                                         ; preds = %if.then, %sw.bb147
  %101 = load ptr, ptr %r.addr, align 8
  %incdec.ptr161 = getelementptr inbounds i8, ptr %101, i32 1
  store ptr %incdec.ptr161, ptr %r.addr, align 8
  %102 = load i8, ptr %101, align 1
  %conv162 = zext i8 %102 to i64
  %103 = load ptr, ptr %g.addr, align 8
  %incdec.ptr163 = getelementptr inbounds i8, ptr %103, i32 1
  store ptr %incdec.ptr163, ptr %g.addr, align 8
  %104 = load i8, ptr %103, align 1
  %conv164 = zext i8 %104 to i64
  %shl165 = shl i64 %conv164, 8
  %or166 = or i64 %conv162, %shl165
  %105 = load ptr, ptr %b.addr, align 8
  %incdec.ptr167 = getelementptr inbounds i8, ptr %105, i32 1
  store ptr %incdec.ptr167, ptr %b.addr, align 8
  %106 = load i8, ptr %105, align 1
  %conv168 = zext i8 %106 to i64
  %shl169 = shl i64 %conv168, 16
  %or170 = or i64 %or166, %shl169
  %or171 = or i64 %or170, 4278190080
  %107 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr172 = getelementptr inbounds i64, ptr %107, i32 1
  store ptr %incdec.ptr172, ptr %cp.addr, align 8
  store i64 %or171, ptr %107, align 8
  br label %sw.bb173

sw.bb173:                                         ; preds = %if.then, %sw.bb160
  %108 = load ptr, ptr %r.addr, align 8
  %incdec.ptr174 = getelementptr inbounds i8, ptr %108, i32 1
  store ptr %incdec.ptr174, ptr %r.addr, align 8
  %109 = load i8, ptr %108, align 1
  %conv175 = zext i8 %109 to i64
  %110 = load ptr, ptr %g.addr, align 8
  %incdec.ptr176 = getelementptr inbounds i8, ptr %110, i32 1
  store ptr %incdec.ptr176, ptr %g.addr, align 8
  %111 = load i8, ptr %110, align 1
  %conv177 = zext i8 %111 to i64
  %shl178 = shl i64 %conv177, 8
  %or179 = or i64 %conv175, %shl178
  %112 = load ptr, ptr %b.addr, align 8
  %incdec.ptr180 = getelementptr inbounds i8, ptr %112, i32 1
  store ptr %incdec.ptr180, ptr %b.addr, align 8
  %113 = load i8, ptr %112, align 1
  %conv181 = zext i8 %113 to i64
  %shl182 = shl i64 %conv181, 16
  %or183 = or i64 %or179, %shl182
  %or184 = or i64 %or183, 4278190080
  %114 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr185 = getelementptr inbounds i64, ptr %114, i32 1
  store ptr %incdec.ptr185, ptr %cp.addr, align 8
  store i64 %or184, ptr %114, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb173, %if.then
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %for.end
  %115 = load i64, ptr %fromskew.addr, align 8
  %116 = load ptr, ptr %r.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %116, i64 %115
  store ptr %add.ptr, ptr %r.addr, align 8
  %117 = load i64, ptr %fromskew.addr, align 8
  %118 = load ptr, ptr %g.addr, align 8
  %add.ptr186 = getelementptr inbounds i8, ptr %118, i64 %117
  store ptr %add.ptr186, ptr %g.addr, align 8
  %119 = load i64, ptr %fromskew.addr, align 8
  %120 = load ptr, ptr %b.addr, align 8
  %add.ptr187 = getelementptr inbounds i8, ptr %120, i64 %119
  store ptr %add.ptr187, ptr %b.addr, align 8
  %121 = load i64, ptr %toskew.addr, align 8
  %122 = load ptr, ptr %cp.addr, align 8
  %add.ptr188 = getelementptr inbounds i64, ptr %122, i64 %121
  store ptr %add.ptr188, ptr %cp.addr, align 8
  br label %while.cond, !llvm.loop !74

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBseparate8bitMaptile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %r, ptr noundef %g, ptr noundef %b, ptr noundef %a) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %Map = alloca ptr, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %r, ptr %r.addr, align 8
  store ptr %g, ptr %g.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %Map1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 15
  %1 = load ptr, ptr %Map1, align 8
  store ptr %1, ptr %Map, align 8
  %2 = load i64, ptr %y.addr, align 8
  %3 = load ptr, ptr %a.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %4 = load i64, ptr %h.addr, align 8
  %dec = add i64 %4, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp = icmp ugt i64 %4, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i64, ptr %w.addr, align 8
  store i64 %5, ptr %x.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %6 = load i64, ptr %x.addr, align 8
  %cmp2 = icmp ugt i64 %6, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %Map, align 8
  %8 = load ptr, ptr %r.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %r.addr, align 8
  %9 = load i8, ptr %8, align 1
  %idxprom = zext i8 %9 to i64
  %arrayidx = getelementptr inbounds i8, ptr %7, i64 %idxprom
  %10 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %10 to i64
  %11 = load ptr, ptr %Map, align 8
  %12 = load ptr, ptr %g.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr3, ptr %g.addr, align 8
  %13 = load i8, ptr %12, align 1
  %idxprom4 = zext i8 %13 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %11, i64 %idxprom4
  %14 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %14 to i64
  %shl = shl i64 %conv6, 8
  %or = or i64 %conv, %shl
  %15 = load ptr, ptr %Map, align 8
  %16 = load ptr, ptr %b.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr7, ptr %b.addr, align 8
  %17 = load i8, ptr %16, align 1
  %idxprom8 = zext i8 %17 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %15, i64 %idxprom8
  %18 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %18 to i64
  %shl11 = shl i64 %conv10, 16
  %or12 = or i64 %or, %shl11
  %or13 = or i64 %or12, 4278190080
  %19 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i64, ptr %19, i32 1
  store ptr %incdec.ptr14, ptr %cp.addr, align 8
  store i64 %or13, ptr %19, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i64, ptr %x.addr, align 8
  %dec15 = add i64 %20, -1
  store i64 %dec15, ptr %x.addr, align 8
  br label %for.cond, !llvm.loop !75

for.end:                                          ; preds = %for.cond
  %21 = load i64, ptr %fromskew.addr, align 8
  %22 = load ptr, ptr %r.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %22, i64 %21
  store ptr %add.ptr, ptr %r.addr, align 8
  %23 = load i64, ptr %fromskew.addr, align 8
  %24 = load ptr, ptr %g.addr, align 8
  %add.ptr16 = getelementptr inbounds i8, ptr %24, i64 %23
  store ptr %add.ptr16, ptr %g.addr, align 8
  %25 = load i64, ptr %fromskew.addr, align 8
  %26 = load ptr, ptr %b.addr, align 8
  %add.ptr17 = getelementptr inbounds i8, ptr %26, i64 %25
  store ptr %add.ptr17, ptr %b.addr, align 8
  %27 = load i64, ptr %toskew.addr, align 8
  %28 = load ptr, ptr %cp.addr, align 8
  %add.ptr18 = getelementptr inbounds i64, ptr %28, i64 %27
  store ptr %add.ptr18, ptr %cp.addr, align 8
  br label %while.cond, !llvm.loop !76

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBseparate16bittile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %r, ptr noundef %g, ptr noundef %b, ptr noundef %a) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %wr = alloca ptr, align 8
  %wg = alloca ptr, align 8
  %wb = alloca ptr, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %r, ptr %r.addr, align 8
  store ptr %g, ptr %g.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  %0 = load ptr, ptr %r.addr, align 8
  store ptr %0, ptr %wr, align 8
  %1 = load ptr, ptr %g.addr, align 8
  store ptr %1, ptr %wg, align 8
  %2 = load ptr, ptr %b.addr, align 8
  store ptr %2, ptr %wb, align 8
  %3 = load ptr, ptr %img.addr, align 8
  %4 = load i64, ptr %y.addr, align 8
  %5 = load ptr, ptr %a.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %6 = load i64, ptr %h.addr, align 8
  %dec = add i64 %6, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp = icmp ugt i64 %6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i64 0, ptr %x.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %7 = load i64, ptr %x.addr, align 8
  %8 = load i64, ptr %w.addr, align 8
  %cmp1 = icmp ult i64 %7, %8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %wr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %wr, align 8
  %10 = load i16, ptr %9, align 2
  %conv = zext i16 %10 to i32
  %shr = ashr i32 %conv, 8
  %and = and i32 %shr, 255
  %conv2 = sext i32 %and to i64
  %11 = load ptr, ptr %wg, align 8
  %incdec.ptr3 = getelementptr inbounds i16, ptr %11, i32 1
  store ptr %incdec.ptr3, ptr %wg, align 8
  %12 = load i16, ptr %11, align 2
  %conv4 = zext i16 %12 to i32
  %shr5 = ashr i32 %conv4, 8
  %and6 = and i32 %shr5, 255
  %conv7 = sext i32 %and6 to i64
  %shl = shl i64 %conv7, 8
  %or = or i64 %conv2, %shl
  %13 = load ptr, ptr %wb, align 8
  %incdec.ptr8 = getelementptr inbounds i16, ptr %13, i32 1
  store ptr %incdec.ptr8, ptr %wb, align 8
  %14 = load i16, ptr %13, align 2
  %conv9 = zext i16 %14 to i32
  %shr10 = ashr i32 %conv9, 8
  %and11 = and i32 %shr10, 255
  %conv12 = sext i32 %and11 to i64
  %shl13 = shl i64 %conv12, 16
  %or14 = or i64 %or, %shl13
  %or15 = or i64 %or14, 4278190080
  %15 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i64, ptr %15, i32 1
  store ptr %incdec.ptr16, ptr %cp.addr, align 8
  store i64 %or15, ptr %15, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i64, ptr %x.addr, align 8
  %inc = add i64 %16, 1
  store i64 %inc, ptr %x.addr, align 8
  br label %for.cond, !llvm.loop !77

for.end:                                          ; preds = %for.cond
  %17 = load i64, ptr %fromskew.addr, align 8
  %18 = load ptr, ptr %wr, align 8
  %add.ptr = getelementptr inbounds i16, ptr %18, i64 %17
  store ptr %add.ptr, ptr %wr, align 8
  %19 = load i64, ptr %fromskew.addr, align 8
  %20 = load ptr, ptr %wg, align 8
  %add.ptr17 = getelementptr inbounds i16, ptr %20, i64 %19
  store ptr %add.ptr17, ptr %wg, align 8
  %21 = load i64, ptr %fromskew.addr, align 8
  %22 = load ptr, ptr %wb, align 8
  %add.ptr18 = getelementptr inbounds i16, ptr %22, i64 %21
  store ptr %add.ptr18, ptr %wb, align 8
  %23 = load i64, ptr %toskew.addr, align 8
  %24 = load ptr, ptr %cp.addr, align 8
  %add.ptr19 = getelementptr inbounds i64, ptr %24, i64 %23
  store ptr %add.ptr19, ptr %cp.addr, align 8
  br label %while.cond, !llvm.loop !78

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBAAseparate16bittile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %r, ptr noundef %g, ptr noundef %b, ptr noundef %a) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %wr = alloca ptr, align 8
  %wg = alloca ptr, align 8
  %wb = alloca ptr, align 8
  %wa = alloca ptr, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %r, ptr %r.addr, align 8
  store ptr %g, ptr %g.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  %0 = load ptr, ptr %r.addr, align 8
  store ptr %0, ptr %wr, align 8
  %1 = load ptr, ptr %g.addr, align 8
  store ptr %1, ptr %wg, align 8
  %2 = load ptr, ptr %b.addr, align 8
  store ptr %2, ptr %wb, align 8
  %3 = load ptr, ptr %a.addr, align 8
  store ptr %3, ptr %wa, align 8
  %4 = load ptr, ptr %img.addr, align 8
  %5 = load i64, ptr %y.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %6 = load i64, ptr %h.addr, align 8
  %dec = add i64 %6, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp = icmp ugt i64 %6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i64 0, ptr %x.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %7 = load i64, ptr %x.addr, align 8
  %8 = load i64, ptr %w.addr, align 8
  %cmp1 = icmp ult i64 %7, %8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %wr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %wr, align 8
  %10 = load i16, ptr %9, align 2
  %conv = zext i16 %10 to i32
  %shr = ashr i32 %conv, 8
  %and = and i32 %shr, 255
  %conv2 = sext i32 %and to i64
  %11 = load ptr, ptr %wg, align 8
  %incdec.ptr3 = getelementptr inbounds i16, ptr %11, i32 1
  store ptr %incdec.ptr3, ptr %wg, align 8
  %12 = load i16, ptr %11, align 2
  %conv4 = zext i16 %12 to i32
  %shr5 = ashr i32 %conv4, 8
  %and6 = and i32 %shr5, 255
  %conv7 = sext i32 %and6 to i64
  %shl = shl i64 %conv7, 8
  %or = or i64 %conv2, %shl
  %13 = load ptr, ptr %wb, align 8
  %incdec.ptr8 = getelementptr inbounds i16, ptr %13, i32 1
  store ptr %incdec.ptr8, ptr %wb, align 8
  %14 = load i16, ptr %13, align 2
  %conv9 = zext i16 %14 to i32
  %shr10 = ashr i32 %conv9, 8
  %and11 = and i32 %shr10, 255
  %conv12 = sext i32 %and11 to i64
  %shl13 = shl i64 %conv12, 16
  %or14 = or i64 %or, %shl13
  %15 = load ptr, ptr %wa, align 8
  %incdec.ptr15 = getelementptr inbounds i16, ptr %15, i32 1
  store ptr %incdec.ptr15, ptr %wa, align 8
  %16 = load i16, ptr %15, align 2
  %conv16 = zext i16 %16 to i32
  %shr17 = ashr i32 %conv16, 8
  %and18 = and i32 %shr17, 255
  %conv19 = sext i32 %and18 to i64
  %shl20 = shl i64 %conv19, 24
  %or21 = or i64 %or14, %shl20
  %17 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i64, ptr %17, i32 1
  store ptr %incdec.ptr22, ptr %cp.addr, align 8
  store i64 %or21, ptr %17, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, ptr %x.addr, align 8
  %inc = add i64 %18, 1
  store i64 %inc, ptr %x.addr, align 8
  br label %for.cond, !llvm.loop !79

for.end:                                          ; preds = %for.cond
  %19 = load i64, ptr %fromskew.addr, align 8
  %20 = load ptr, ptr %wr, align 8
  %add.ptr = getelementptr inbounds i16, ptr %20, i64 %19
  store ptr %add.ptr, ptr %wr, align 8
  %21 = load i64, ptr %fromskew.addr, align 8
  %22 = load ptr, ptr %wg, align 8
  %add.ptr23 = getelementptr inbounds i16, ptr %22, i64 %21
  store ptr %add.ptr23, ptr %wg, align 8
  %23 = load i64, ptr %fromskew.addr, align 8
  %24 = load ptr, ptr %wb, align 8
  %add.ptr24 = getelementptr inbounds i16, ptr %24, i64 %23
  store ptr %add.ptr24, ptr %wb, align 8
  %25 = load i64, ptr %fromskew.addr, align 8
  %26 = load ptr, ptr %wa, align 8
  %add.ptr25 = getelementptr inbounds i16, ptr %26, i64 %25
  store ptr %add.ptr25, ptr %wa, align 8
  %27 = load i64, ptr %toskew.addr, align 8
  %28 = load ptr, ptr %cp.addr, align 8
  %add.ptr26 = getelementptr inbounds i64, ptr %28, i64 %27
  store ptr %add.ptr26, ptr %cp.addr, align 8
  br label %while.cond, !llvm.loop !80

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBUAseparate16bittile(ptr noundef %img, ptr noundef %cp, i64 noundef %x, i64 noundef %y, i64 noundef %w, i64 noundef %h, i64 noundef %fromskew, i64 noundef %toskew, ptr noundef %r, ptr noundef %g, ptr noundef %b, ptr noundef %a) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  %fromskew.addr = alloca i64, align 8
  %toskew.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %wr = alloca ptr, align 8
  %wg = alloca ptr, align 8
  %wb = alloca ptr, align 8
  %wa = alloca ptr, align 8
  %r1 = alloca i64, align 8
  %g2 = alloca i64, align 8
  %b3 = alloca i64, align 8
  %a4 = alloca i64, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  store i64 %w, ptr %w.addr, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %fromskew, ptr %fromskew.addr, align 8
  store i64 %toskew, ptr %toskew.addr, align 8
  store ptr %r, ptr %r.addr, align 8
  store ptr %g, ptr %g.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  %0 = load ptr, ptr %r.addr, align 8
  store ptr %0, ptr %wr, align 8
  %1 = load ptr, ptr %g.addr, align 8
  store ptr %1, ptr %wg, align 8
  %2 = load ptr, ptr %b.addr, align 8
  store ptr %2, ptr %wb, align 8
  %3 = load ptr, ptr %a.addr, align 8
  store ptr %3, ptr %wa, align 8
  %4 = load ptr, ptr %img.addr, align 8
  %5 = load i64, ptr %y.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %6 = load i64, ptr %h.addr, align 8
  %dec = add i64 %6, -1
  store i64 %dec, ptr %h.addr, align 8
  %cmp = icmp ugt i64 %6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i64, ptr %w.addr, align 8
  store i64 %7, ptr %x.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %8 = load i64, ptr %x.addr, align 8
  %dec5 = add i64 %8, -1
  store i64 %dec5, ptr %x.addr, align 8
  %cmp6 = icmp ugt i64 %8, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %wa, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %wa, align 8
  %10 = load i16, ptr %9, align 2
  %conv = zext i16 %10 to i32
  %shr = ashr i32 %conv, 4
  %conv7 = sext i32 %shr to i64
  store i64 %conv7, ptr %a4, align 8
  %11 = load ptr, ptr %wr, align 8
  %incdec.ptr8 = getelementptr inbounds i16, ptr %11, i32 1
  store ptr %incdec.ptr8, ptr %wr, align 8
  %12 = load i16, ptr %11, align 2
  %conv9 = zext i16 %12 to i64
  %13 = load i64, ptr %a4, align 8
  %mul = mul i64 %conv9, %13
  %div = udiv i64 %mul, 69375
  store i64 %div, ptr %r1, align 8
  %14 = load ptr, ptr %wg, align 8
  %incdec.ptr10 = getelementptr inbounds i16, ptr %14, i32 1
  store ptr %incdec.ptr10, ptr %wg, align 8
  %15 = load i16, ptr %14, align 2
  %conv11 = zext i16 %15 to i64
  %16 = load i64, ptr %a4, align 8
  %mul12 = mul i64 %conv11, %16
  %div13 = udiv i64 %mul12, 69375
  store i64 %div13, ptr %g2, align 8
  %17 = load ptr, ptr %wb, align 8
  %incdec.ptr14 = getelementptr inbounds i16, ptr %17, i32 1
  store ptr %incdec.ptr14, ptr %wb, align 8
  %18 = load i16, ptr %17, align 2
  %conv15 = zext i16 %18 to i64
  %19 = load i64, ptr %a4, align 8
  %mul16 = mul i64 %conv15, %19
  %div17 = udiv i64 %mul16, 69375
  store i64 %div17, ptr %b3, align 8
  %20 = load i64, ptr %r1, align 8
  %21 = load i64, ptr %g2, align 8
  %shl = shl i64 %21, 8
  %or = or i64 %20, %shl
  %22 = load i64, ptr %b3, align 8
  %shl18 = shl i64 %22, 16
  %or19 = or i64 %or, %shl18
  %23 = load i64, ptr %a4, align 8
  %shl20 = shl i64 %23, 24
  %or21 = or i64 %or19, %shl20
  %24 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i64, ptr %24, i32 1
  store ptr %incdec.ptr22, ptr %cp.addr, align 8
  store i64 %or21, ptr %24, align 8
  br label %for.cond, !llvm.loop !81

for.end:                                          ; preds = %for.cond
  %25 = load i64, ptr %fromskew.addr, align 8
  %26 = load ptr, ptr %wr, align 8
  %add.ptr = getelementptr inbounds i16, ptr %26, i64 %25
  store ptr %add.ptr, ptr %wr, align 8
  %27 = load i64, ptr %fromskew.addr, align 8
  %28 = load ptr, ptr %wg, align 8
  %add.ptr23 = getelementptr inbounds i16, ptr %28, i64 %27
  store ptr %add.ptr23, ptr %wg, align 8
  %29 = load i64, ptr %fromskew.addr, align 8
  %30 = load ptr, ptr %wb, align 8
  %add.ptr24 = getelementptr inbounds i16, ptr %30, i64 %29
  store ptr %add.ptr24, ptr %wb, align 8
  %31 = load i64, ptr %fromskew.addr, align 8
  %32 = load ptr, ptr %wa, align 8
  %add.ptr25 = getelementptr inbounds i16, ptr %32, i64 %31
  store ptr %add.ptr25, ptr %wa, align 8
  %33 = load i64, ptr %toskew.addr, align 8
  %34 = load ptr, ptr %cp.addr, align 8
  %add.ptr26 = getelementptr inbounds i64, ptr %34, i64 %33
  store ptr %add.ptr26, ptr %cp.addr, align 8
  br label %while.cond, !llvm.loop !82

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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
