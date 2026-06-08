; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2bw/tif_getimage.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2bw/tif_getimage.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }
%struct._TIFFRGBAImage = type { ptr, i32, i32, i32, i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, i32, i32 }
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
  %2 = load i16, ptr %td_bitspersample, align 4
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
  %7 = load i16, ptr %td_bitspersample1, align 4
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
  %call5 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %12, i32 noundef 262, ptr noundef %photometric)
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
  %55 = load i16, ptr %td_compression, align 8
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
  %60 = load i16, ptr %td_compression67, align 8
  %conv68 = zext i16 %60 to i32
  %cmp69 = icmp ne i32 %conv68, 34676
  br i1 %cmp69, label %land.lhs.true71, label %if.end78

land.lhs.true71:                                  ; preds = %sw.bb66
  %61 = load ptr, ptr %td, align 8
  %td_compression72 = getelementptr inbounds %struct.TIFFDirectory, ptr %61, i32 0, i32 10
  %62 = load i16, ptr %td_compression72, align 8
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

declare i32 @TIFFGetField(ptr noundef, i32 noundef, ...) #1

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
  %call = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %9, i32 noundef 258, ptr noundef %bitspersample)
  %11 = load ptr, ptr %img.addr, align 8
  %bitspersample2 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %11, i32 0, i32 6
  %12 = load i16, ptr %bitspersample2, align 4
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
  %17 = load i16, ptr %bitspersample3, align 4
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
  %call6 = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %19, i32 noundef 277, ptr noundef %samplesperpixel)
  %21 = load ptr, ptr %tif.addr, align 8
  %call7 = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %21, i32 noundef 338, ptr noundef %extrasamples, ptr noundef %sampleinfo)
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
  %call19 = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %31, i32 noundef 259, ptr noundef %compress)
  %32 = load ptr, ptr %tif.addr, align 8
  %call20 = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %32, i32 noundef 284, ptr noundef %planarconfig)
  %33 = load ptr, ptr %tif.addr, align 8
  %34 = load ptr, ptr %img.addr, align 8
  %photometric = getelementptr inbounds %struct._TIFFRGBAImage, ptr %34, i32 0, i32 9
  %call21 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %33, i32 noundef 262, ptr noundef %photometric)
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
  switch i32 %conv37, label %sw.default175 [
    i32 3, label %sw.bb38
    i32 0, label %sw.bb86
    i32 1, label %sw.bb86
    i32 6, label %sw.bb101
    i32 2, label %sw.bb120
    i32 5, label %sw.bb126
    i32 32844, label %sw.bb144
    i32 32845, label %sw.bb154
  ]

sw.bb38:                                          ; preds = %if.end35
  %45 = load ptr, ptr %tif.addr, align 8
  %call39 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %45, i32 noundef 320, ptr noundef %red_orig, ptr noundef %green_orig, ptr noundef %blue_orig)
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
  %48 = load i16, ptr %bitspersample44, align 4
  %conv45 = zext i16 %48 to i32
  %sh_prom = zext i32 %conv45 to i64
  %shl = shl i64 1, %sh_prom
  %conv46 = trunc i64 %shl to i32
  store i32 %conv46, ptr %n_color, align 4
  %49 = load i32, ptr %n_color, align 4
  %conv47 = sext i32 %49 to i64
  %mul = mul i64 2, %conv47
  %conv48 = trunc i64 %mul to i32
  %call49 = call ptr @_TIFFmalloc(i32 noundef %conv48)
  %50 = load ptr, ptr %img.addr, align 8
  %redcmap50 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %50, i32 0, i32 10
  store ptr %call49, ptr %redcmap50, align 8
  %51 = load i32, ptr %n_color, align 4
  %conv51 = sext i32 %51 to i64
  %mul52 = mul i64 2, %conv51
  %conv53 = trunc i64 %mul52 to i32
  %call54 = call ptr @_TIFFmalloc(i32 noundef %conv53)
  %52 = load ptr, ptr %img.addr, align 8
  %greencmap55 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %52, i32 0, i32 11
  store ptr %call54, ptr %greencmap55, align 8
  %53 = load i32, ptr %n_color, align 4
  %conv56 = sext i32 %53 to i64
  %mul57 = mul i64 2, %conv56
  %conv58 = trunc i64 %mul57 to i32
  %call59 = call ptr @_TIFFmalloc(i32 noundef %conv58)
  %54 = load ptr, ptr %img.addr, align 8
  %bluecmap60 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %54, i32 0, i32 12
  store ptr %call59, ptr %bluecmap60, align 8
  %55 = load ptr, ptr %img.addr, align 8
  %redcmap61 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %55, i32 0, i32 10
  %56 = load ptr, ptr %redcmap61, align 8
  %tobool62 = icmp ne ptr %56, null
  br i1 %tobool62, label %lor.lhs.false, label %if.then68

lor.lhs.false:                                    ; preds = %if.end43
  %57 = load ptr, ptr %img.addr, align 8
  %greencmap63 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %57, i32 0, i32 11
  %58 = load ptr, ptr %greencmap63, align 8
  %tobool64 = icmp ne ptr %58, null
  br i1 %tobool64, label %lor.lhs.false65, label %if.then68

lor.lhs.false65:                                  ; preds = %lor.lhs.false
  %59 = load ptr, ptr %img.addr, align 8
  %bluecmap66 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %59, i32 0, i32 12
  %60 = load ptr, ptr %bluecmap66, align 8
  %tobool67 = icmp ne ptr %60, null
  br i1 %tobool67, label %if.end70, label %if.then68

if.then68:                                        ; preds = %lor.lhs.false65, %lor.lhs.false, %if.end43
  %61 = load ptr, ptr %tif.addr, align 8
  %call69 = call ptr @TIFFFileName(ptr noundef %61)
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call69, ptr noundef @.str.17)
  store i32 0, ptr %retval, align 4
  br label %return

if.end70:                                         ; preds = %lor.lhs.false65
  %62 = load ptr, ptr %img.addr, align 8
  %redcmap71 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %62, i32 0, i32 10
  %63 = load ptr, ptr %redcmap71, align 8
  %64 = load ptr, ptr %red_orig, align 8
  %65 = load i32, ptr %n_color, align 4
  %mul72 = mul nsw i32 %65, 2
  %conv73 = sext i32 %mul72 to i64
  %66 = load ptr, ptr %img.addr, align 8
  %redcmap74 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %66, i32 0, i32 10
  %67 = load ptr, ptr %redcmap74, align 8
  %68 = call i64 @llvm.objectsize.i64.p0(ptr %67, i1 false, i1 true, i1 false)
  %call75 = call ptr @__memcpy_chk(ptr noundef %63, ptr noundef %64, i64 noundef %conv73, i64 noundef %68) #4
  %69 = load ptr, ptr %img.addr, align 8
  %greencmap76 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %69, i32 0, i32 11
  %70 = load ptr, ptr %greencmap76, align 8
  %71 = load ptr, ptr %green_orig, align 8
  %72 = load i32, ptr %n_color, align 4
  %mul77 = mul nsw i32 %72, 2
  %conv78 = sext i32 %mul77 to i64
  %73 = load ptr, ptr %img.addr, align 8
  %greencmap79 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %73, i32 0, i32 11
  %74 = load ptr, ptr %greencmap79, align 8
  %75 = call i64 @llvm.objectsize.i64.p0(ptr %74, i1 false, i1 true, i1 false)
  %call80 = call ptr @__memcpy_chk(ptr noundef %70, ptr noundef %71, i64 noundef %conv78, i64 noundef %75) #4
  %76 = load ptr, ptr %img.addr, align 8
  %bluecmap81 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %76, i32 0, i32 12
  %77 = load ptr, ptr %bluecmap81, align 8
  %78 = load ptr, ptr %blue_orig, align 8
  %79 = load i32, ptr %n_color, align 4
  %mul82 = mul nsw i32 %79, 2
  %conv83 = sext i32 %mul82 to i64
  %80 = load ptr, ptr %img.addr, align 8
  %bluecmap84 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %80, i32 0, i32 12
  %81 = load ptr, ptr %bluecmap84, align 8
  %82 = call i64 @llvm.objectsize.i64.p0(ptr %81, i1 false, i1 true, i1 false)
  %call85 = call ptr @__memcpy_chk(ptr noundef %77, ptr noundef %78, i64 noundef %conv83, i64 noundef %82) #4
  br label %sw.bb86

sw.bb86:                                          ; preds = %if.end35, %if.end35, %if.end70
  %83 = load i16, ptr %planarconfig, align 2
  %conv87 = zext i16 %83 to i32
  %cmp88 = icmp eq i32 %conv87, 1
  br i1 %cmp88, label %land.lhs.true, label %if.end100

land.lhs.true:                                    ; preds = %sw.bb86
  %84 = load ptr, ptr %img.addr, align 8
  %samplesperpixel90 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %84, i32 0, i32 7
  %85 = load i16, ptr %samplesperpixel90, align 2
  %conv91 = zext i16 %85 to i32
  %cmp92 = icmp ne i32 %conv91, 1
  br i1 %cmp92, label %if.then94, label %if.end100

if.then94:                                        ; preds = %land.lhs.true
  %86 = load ptr, ptr %emsg.addr, align 8
  %87 = load ptr, ptr %emsg.addr, align 8
  %88 = call i64 @llvm.objectsize.i64.p0(ptr %87, i1 false, i1 true, i1 false)
  %89 = load ptr, ptr %img.addr, align 8
  %photometric95 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %89, i32 0, i32 9
  %90 = load i16, ptr %photometric95, align 2
  %conv96 = zext i16 %90 to i32
  %91 = load ptr, ptr %img.addr, align 8
  %samplesperpixel97 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %91, i32 0, i32 7
  %92 = load i16, ptr %samplesperpixel97, align 2
  %conv98 = zext i16 %92 to i32
  %call99 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %86, i32 noundef 0, i64 noundef %88, ptr noundef @.str.2, ptr noundef @photoTag, i32 noundef %conv96, ptr noundef @.str.3, i32 noundef %conv98)
  store i32 0, ptr %retval, align 4
  br label %return

if.end100:                                        ; preds = %land.lhs.true, %sw.bb86
  br label %sw.epilog179

sw.bb101:                                         ; preds = %if.end35
  %93 = load i16, ptr %planarconfig, align 2
  %conv102 = zext i16 %93 to i32
  %cmp103 = icmp ne i32 %conv102, 1
  br i1 %cmp103, label %if.then105, label %if.end108

if.then105:                                       ; preds = %sw.bb101
  %94 = load ptr, ptr %emsg.addr, align 8
  %95 = load ptr, ptr %emsg.addr, align 8
  %96 = call i64 @llvm.objectsize.i64.p0(ptr %95, i1 false, i1 true, i1 false)
  %97 = load i16, ptr %planarconfig, align 2
  %conv106 = zext i16 %97 to i32
  %call107 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %94, i32 noundef 0, i64 noundef %96, ptr noundef @.str.4, ptr noundef @.str.5, i32 noundef %conv106)
  store i32 0, ptr %retval, align 4
  br label %return

if.end108:                                        ; preds = %sw.bb101
  %98 = load i16, ptr %compress, align 2
  %conv109 = zext i16 %98 to i32
  %cmp110 = icmp eq i32 %conv109, 7
  br i1 %cmp110, label %land.lhs.true112, label %if.end119

land.lhs.true112:                                 ; preds = %if.end108
  %99 = load i16, ptr %planarconfig, align 2
  %conv113 = zext i16 %99 to i32
  %cmp114 = icmp eq i32 %conv113, 1
  br i1 %cmp114, label %if.then116, label %if.end119

if.then116:                                       ; preds = %land.lhs.true112
  %100 = load ptr, ptr %tif.addr, align 8
  %call117 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %100, i32 noundef 65538, i32 noundef 1)
  %101 = load ptr, ptr %img.addr, align 8
  %photometric118 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %101, i32 0, i32 9
  store i16 2, ptr %photometric118, align 2
  br label %if.end119

if.end119:                                        ; preds = %if.then116, %land.lhs.true112, %if.end108
  br label %sw.epilog179

sw.bb120:                                         ; preds = %if.end35
  %102 = load i32, ptr %colorchannels, align 4
  %cmp121 = icmp slt i32 %102, 3
  br i1 %cmp121, label %if.then123, label %if.end125

if.then123:                                       ; preds = %sw.bb120
  %103 = load ptr, ptr %emsg.addr, align 8
  %104 = load ptr, ptr %emsg.addr, align 8
  %105 = call i64 @llvm.objectsize.i64.p0(ptr %104, i1 false, i1 true, i1 false)
  %106 = load i32, ptr %colorchannels, align 4
  %call124 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %103, i32 noundef 0, i64 noundef %105, ptr noundef @.str.6, ptr noundef @.str.7, i32 noundef %106)
  store i32 0, ptr %retval, align 4
  br label %return

if.end125:                                        ; preds = %sw.bb120
  br label %sw.epilog179

sw.bb126:                                         ; preds = %if.end35
  %107 = load ptr, ptr %tif.addr, align 8
  %call127 = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %107, i32 noundef 332, ptr noundef %inkset)
  %108 = load i16, ptr %inkset, align 2
  %conv128 = zext i16 %108 to i32
  %cmp129 = icmp ne i32 %conv128, 1
  br i1 %cmp129, label %if.then131, label %if.end134

if.then131:                                       ; preds = %sw.bb126
  %109 = load ptr, ptr %emsg.addr, align 8
  %110 = load ptr, ptr %emsg.addr, align 8
  %111 = call i64 @llvm.objectsize.i64.p0(ptr %110, i1 false, i1 true, i1 false)
  %112 = load i16, ptr %inkset, align 2
  %conv132 = zext i16 %112 to i32
  %call133 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %109, i32 noundef 0, i64 noundef %111, ptr noundef @.str.8, ptr noundef @.str.9, i32 noundef %conv132)
  store i32 0, ptr %retval, align 4
  br label %return

if.end134:                                        ; preds = %sw.bb126
  %113 = load ptr, ptr %img.addr, align 8
  %samplesperpixel135 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %113, i32 0, i32 7
  %114 = load i16, ptr %samplesperpixel135, align 2
  %conv136 = zext i16 %114 to i32
  %cmp137 = icmp ne i32 %conv136, 4
  br i1 %cmp137, label %if.then139, label %if.end143

if.then139:                                       ; preds = %if.end134
  %115 = load ptr, ptr %emsg.addr, align 8
  %116 = load ptr, ptr %emsg.addr, align 8
  %117 = call i64 @llvm.objectsize.i64.p0(ptr %116, i1 false, i1 true, i1 false)
  %118 = load ptr, ptr %img.addr, align 8
  %samplesperpixel140 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %118, i32 0, i32 7
  %119 = load i16, ptr %samplesperpixel140, align 2
  %conv141 = zext i16 %119 to i32
  %call142 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %115, i32 noundef 0, i64 noundef %117, ptr noundef @.str.8, ptr noundef @.str.3, i32 noundef %conv141)
  store i32 0, ptr %retval, align 4
  br label %return

if.end143:                                        ; preds = %if.end134
  br label %sw.epilog179

sw.bb144:                                         ; preds = %if.end35
  %120 = load i16, ptr %compress, align 2
  %conv145 = zext i16 %120 to i32
  %cmp146 = icmp ne i32 %conv145, 34676
  br i1 %cmp146, label %if.then148, label %if.end150

if.then148:                                       ; preds = %sw.bb144
  %121 = load ptr, ptr %emsg.addr, align 8
  %122 = load ptr, ptr %emsg.addr, align 8
  %123 = call i64 @llvm.objectsize.i64.p0(ptr %122, i1 false, i1 true, i1 false)
  %call149 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %121, i32 noundef 0, i64 noundef %123, ptr noundef @.str.10, ptr noundef @.str.11, i32 noundef 34676)
  store i32 0, ptr %retval, align 4
  br label %return

if.end150:                                        ; preds = %sw.bb144
  %124 = load ptr, ptr %tif.addr, align 8
  %call151 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %124, i32 noundef 65560, i32 noundef 3)
  %125 = load ptr, ptr %img.addr, align 8
  %photometric152 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %125, i32 0, i32 9
  store i16 1, ptr %photometric152, align 2
  %126 = load ptr, ptr %img.addr, align 8
  %bitspersample153 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %126, i32 0, i32 6
  store i16 8, ptr %bitspersample153, align 4
  br label %sw.epilog179

sw.bb154:                                         ; preds = %if.end35
  %127 = load i16, ptr %compress, align 2
  %conv155 = zext i16 %127 to i32
  %cmp156 = icmp ne i32 %conv155, 34676
  br i1 %cmp156, label %land.lhs.true158, label %if.end164

land.lhs.true158:                                 ; preds = %sw.bb154
  %128 = load i16, ptr %compress, align 2
  %conv159 = zext i16 %128 to i32
  %cmp160 = icmp ne i32 %conv159, 34677
  br i1 %cmp160, label %if.then162, label %if.end164

if.then162:                                       ; preds = %land.lhs.true158
  %129 = load ptr, ptr %emsg.addr, align 8
  %130 = load ptr, ptr %emsg.addr, align 8
  %131 = call i64 @llvm.objectsize.i64.p0(ptr %130, i1 false, i1 true, i1 false)
  %call163 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %129, i32 noundef 0, i64 noundef %131, ptr noundef @.str.12, ptr noundef @.str.11, i32 noundef 34676, i32 noundef 34677)
  store i32 0, ptr %retval, align 4
  br label %return

if.end164:                                        ; preds = %land.lhs.true158, %sw.bb154
  %132 = load i16, ptr %planarconfig, align 2
  %conv165 = zext i16 %132 to i32
  %cmp166 = icmp ne i32 %conv165, 1
  br i1 %cmp166, label %if.then168, label %if.end171

if.then168:                                       ; preds = %if.end164
  %133 = load ptr, ptr %emsg.addr, align 8
  %134 = load ptr, ptr %emsg.addr, align 8
  %135 = call i64 @llvm.objectsize.i64.p0(ptr %134, i1 false, i1 true, i1 false)
  %136 = load i16, ptr %planarconfig, align 2
  %conv169 = zext i16 %136 to i32
  %call170 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %133, i32 noundef 0, i64 noundef %135, ptr noundef @.str.13, ptr noundef @.str.5, i32 noundef %conv169)
  store i32 0, ptr %retval, align 4
  br label %return

if.end171:                                        ; preds = %if.end164
  %137 = load ptr, ptr %tif.addr, align 8
  %call172 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %137, i32 noundef 65560, i32 noundef 3)
  %138 = load ptr, ptr %img.addr, align 8
  %photometric173 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %138, i32 0, i32 9
  store i16 2, ptr %photometric173, align 2
  %139 = load ptr, ptr %img.addr, align 8
  %bitspersample174 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %139, i32 0, i32 6
  store i16 8, ptr %bitspersample174, align 4
  br label %sw.epilog179

sw.default175:                                    ; preds = %if.end35
  %140 = load ptr, ptr %emsg.addr, align 8
  %141 = load ptr, ptr %emsg.addr, align 8
  %142 = call i64 @llvm.objectsize.i64.p0(ptr %141, i1 false, i1 true, i1 false)
  %143 = load ptr, ptr %img.addr, align 8
  %photometric176 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %143, i32 0, i32 9
  %144 = load i16, ptr %photometric176, align 2
  %conv177 = zext i16 %144 to i32
  %call178 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %140, i32 noundef 0, i64 noundef %142, ptr noundef @.str.14, ptr noundef @photoTag, i32 noundef %conv177)
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog179:                                     ; preds = %if.end171, %if.end150, %if.end143, %if.end125, %if.end119, %if.end100
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
  %call180 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %149, i32 noundef 256, ptr noundef %width)
  %151 = load ptr, ptr %tif.addr, align 8
  %152 = load ptr, ptr %img.addr, align 8
  %height = getelementptr inbounds %struct._TIFFRGBAImage, ptr %152, i32 0, i32 5
  %call181 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %151, i32 noundef 257, ptr noundef %height)
  %153 = load ptr, ptr %tif.addr, align 8
  %154 = load ptr, ptr %img.addr, align 8
  %orientation = getelementptr inbounds %struct._TIFFRGBAImage, ptr %154, i32 0, i32 8
  %call182 = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %153, i32 noundef 274, ptr noundef %orientation)
  %155 = load i16, ptr %planarconfig, align 2
  %conv183 = zext i16 %155 to i32
  %cmp184 = icmp eq i32 %conv183, 2
  br i1 %cmp184, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.epilog179
  %156 = load i32, ptr %colorchannels, align 4
  %cmp186 = icmp sgt i32 %156, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.epilog179
  %157 = phi i1 [ false, %sw.epilog179 ], [ %cmp186, %land.rhs ]
  %lnot = xor i1 %157, true
  %lnot.ext = zext i1 %lnot to i32
  %158 = load ptr, ptr %img.addr, align 8
  %isContig = getelementptr inbounds %struct._TIFFRGBAImage, ptr %158, i32 0, i32 2
  store i32 %lnot.ext, ptr %isContig, align 4
  %159 = load ptr, ptr %img.addr, align 8
  %isContig188 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %159, i32 0, i32 2
  %160 = load i32, ptr %isContig188, align 4
  %tobool189 = icmp ne i32 %160, 0
  br i1 %tobool189, label %if.then190, label %if.else194

if.then190:                                       ; preds = %land.end
  %161 = load ptr, ptr %tif.addr, align 8
  %call191 = call i32 @TIFFIsTiled(ptr noundef %161)
  %tobool192 = icmp ne i32 %call191, 0
  %162 = zext i1 %tobool192 to i64
  %cond = select i1 %tobool192, ptr @gtTileContig, ptr @gtStripContig
  %163 = load ptr, ptr %img.addr, align 8
  %get = getelementptr inbounds %struct._TIFFRGBAImage, ptr %163, i32 0, i32 13
  store ptr %cond, ptr %get, align 8
  %164 = load ptr, ptr %img.addr, align 8
  %call193 = call i32 @pickTileContigCase(ptr noundef %164)
  br label %if.end200

if.else194:                                       ; preds = %land.end
  %165 = load ptr, ptr %tif.addr, align 8
  %call195 = call i32 @TIFFIsTiled(ptr noundef %165)
  %tobool196 = icmp ne i32 %call195, 0
  %166 = zext i1 %tobool196 to i64
  %cond197 = select i1 %tobool196, ptr @gtTileSeparate, ptr @gtStripSeparate
  %167 = load ptr, ptr %img.addr, align 8
  %get198 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %167, i32 0, i32 13
  store ptr %cond197, ptr %get198, align 8
  %168 = load ptr, ptr %img.addr, align 8
  %call199 = call i32 @pickTileSeparateCase(ptr noundef %168)
  br label %if.end200

if.end200:                                        ; preds = %if.else194, %if.then190
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end200, %sw.default175, %if.then168, %if.then162, %if.then148, %if.then139, %if.then131, %if.then123, %if.then105, %if.then94, %if.then68, %if.then41, %sw.default32, %sw.default
  %169 = load i32, ptr %retval, align 4
  ret i32 %169
}

declare i32 @TIFFGetFieldDefaulted(ptr noundef, i32 noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @isCCITTCompression(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %compress = alloca i16, align 2
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %call = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef 259, ptr noundef %compress)
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

declare ptr @_TIFFmalloc(i32 noundef) #1

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

declare i32 @TIFFSetField(ptr noundef, i32 noundef, ...) #1

declare i32 @TIFFIsTiled(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @gtTileContig(ptr noundef %img, ptr noundef %raster, i32 noundef %w, i32 noundef %h) #0 {
entry:
  %retval = alloca i32, align 4
  %img.addr = alloca ptr, align 8
  %raster.addr = alloca ptr, align 8
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %tif = alloca ptr, align 8
  %put = alloca ptr, align 8
  %orientation = alloca i16, align 2
  %col = alloca i32, align 4
  %row = alloca i32, align 4
  %y = alloca i32, align 4
  %tw = alloca i32, align 4
  %th = alloca i32, align 4
  %buf = alloca ptr, align 8
  %fromskew = alloca i32, align 4
  %toskew = alloca i32, align 4
  %nrow = alloca i32, align 4
  %npix = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %raster, ptr %raster.addr, align 8
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  %0 = load ptr, ptr %img.addr, align 8
  %tif1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %tif1, align 8
  store ptr %1, ptr %tif, align 8
  %2 = load ptr, ptr %img.addr, align 8
  %put2 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i32 0, i32 14
  %3 = load ptr, ptr %put2, align 8
  store ptr %3, ptr %put, align 8
  %4 = load ptr, ptr %tif, align 8
  %call = call i32 @TIFFTileSize(ptr noundef %4)
  %call3 = call ptr @_TIFFmalloc(i32 noundef %call)
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
  %call5 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %7, i32 noundef 322, ptr noundef %tw)
  %8 = load ptr, ptr %tif, align 8
  %call6 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %8, i32 noundef 323, ptr noundef %th)
  %9 = load ptr, ptr %img.addr, align 8
  %10 = load i32, ptr %h.addr, align 4
  %call7 = call i32 @setorientation(ptr noundef %9, i32 noundef %10)
  store i32 %call7, ptr %y, align 4
  %11 = load ptr, ptr %img.addr, align 8
  %orientation8 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %11, i32 0, i32 8
  %12 = load i16, ptr %orientation8, align 8
  store i16 %12, ptr %orientation, align 2
  %13 = load i16, ptr %orientation, align 2
  %conv = zext i16 %13 to i32
  %cmp9 = icmp eq i32 %conv, 1
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %14 = load i32, ptr %tw, align 4
  %15 = load i32, ptr %w.addr, align 4
  %add = add i32 %14, %15
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %16 = load i32, ptr %tw, align 4
  %17 = load i32, ptr %w.addr, align 4
  %sub = sub i32 %16, %17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %sub, %cond.false ]
  %sub11 = sub nsw i32 0, %cond
  store i32 %sub11, ptr %toskew, align 4
  store i32 0, ptr %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc58, %cond.end
  %18 = load i32, ptr %row, align 4
  %19 = load i32, ptr %h.addr, align 4
  %cmp12 = icmp ult i32 %18, %19
  br i1 %cmp12, label %for.body, label %for.end60

for.body:                                         ; preds = %for.cond
  %20 = load i32, ptr %row, align 4
  %21 = load i32, ptr %th, align 4
  %add14 = add i32 %20, %21
  %22 = load i32, ptr %h.addr, align 4
  %cmp15 = icmp ugt i32 %add14, %22
  br i1 %cmp15, label %cond.true17, label %cond.false19

cond.true17:                                      ; preds = %for.body
  %23 = load i32, ptr %h.addr, align 4
  %24 = load i32, ptr %row, align 4
  %sub18 = sub i32 %23, %24
  br label %cond.end20

cond.false19:                                     ; preds = %for.body
  %25 = load i32, ptr %th, align 4
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %cond.true17
  %cond21 = phi i32 [ %sub18, %cond.true17 ], [ %25, %cond.false19 ]
  store i32 %cond21, ptr %nrow, align 4
  store i32 0, ptr %col, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc, %cond.end20
  %26 = load i32, ptr %col, align 4
  %27 = load i32, ptr %w.addr, align 4
  %cmp23 = icmp ult i32 %26, %27
  br i1 %cmp23, label %for.body25, label %for.end

for.body25:                                       ; preds = %for.cond22
  %28 = load ptr, ptr %tif, align 8
  %29 = load ptr, ptr %buf, align 8
  %30 = load i32, ptr %col, align 4
  %31 = load ptr, ptr %img.addr, align 8
  %col_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %31, i32 0, i32 20
  %32 = load i32, ptr %col_offset, align 4
  %add26 = add i32 %30, %32
  %33 = load i32, ptr %row, align 4
  %34 = load ptr, ptr %img.addr, align 8
  %row_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %34, i32 0, i32 19
  %35 = load i32, ptr %row_offset, align 8
  %add27 = add i32 %33, %35
  %call28 = call i32 @TIFFReadTile(ptr noundef %28, ptr noundef %29, i32 noundef %add26, i32 noundef %add27, i32 noundef 0, i16 noundef zeroext 0)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %land.lhs.true, label %if.end32

land.lhs.true:                                    ; preds = %for.body25
  %36 = load ptr, ptr %img.addr, align 8
  %stoponerr = getelementptr inbounds %struct._TIFFRGBAImage, ptr %36, i32 0, i32 1
  %37 = load i32, ptr %stoponerr, align 8
  %tobool = icmp ne i32 %37, 0
  br i1 %tobool, label %if.then31, label %if.end32

if.then31:                                        ; preds = %land.lhs.true
  br label %for.end

if.end32:                                         ; preds = %land.lhs.true, %for.body25
  %38 = load i32, ptr %col, align 4
  %39 = load i32, ptr %tw, align 4
  %add33 = add i32 %38, %39
  %40 = load i32, ptr %w.addr, align 4
  %cmp34 = icmp ugt i32 %add33, %40
  br i1 %cmp34, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.end32
  %41 = load i32, ptr %w.addr, align 4
  %42 = load i32, ptr %col, align 4
  %sub37 = sub i32 %41, %42
  store i32 %sub37, ptr %npix, align 4
  %43 = load i32, ptr %tw, align 4
  %44 = load i32, ptr %npix, align 4
  %sub38 = sub i32 %43, %44
  store i32 %sub38, ptr %fromskew, align 4
  %45 = load ptr, ptr %put, align 8
  %46 = load ptr, ptr %img.addr, align 8
  %47 = load ptr, ptr %raster.addr, align 8
  %48 = load i32, ptr %y, align 4
  %49 = load i32, ptr %w.addr, align 4
  %mul = mul i32 %48, %49
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, ptr %47, i64 %idx.ext
  %50 = load i32, ptr %col, align 4
  %idx.ext39 = zext i32 %50 to i64
  %add.ptr40 = getelementptr inbounds i32, ptr %add.ptr, i64 %idx.ext39
  %51 = load i32, ptr %col, align 4
  %52 = load i32, ptr %y, align 4
  %53 = load i32, ptr %npix, align 4
  %54 = load i32, ptr %nrow, align 4
  %55 = load i32, ptr %fromskew, align 4
  %56 = load i32, ptr %toskew, align 4
  %57 = load i32, ptr %fromskew, align 4
  %add41 = add nsw i32 %56, %57
  %58 = load ptr, ptr %buf, align 8
  call void %45(ptr noundef %46, ptr noundef %add.ptr40, i32 noundef %51, i32 noundef %52, i32 noundef %53, i32 noundef %54, i32 noundef %55, i32 noundef %add41, ptr noundef %58)
  br label %if.end47

if.else:                                          ; preds = %if.end32
  %59 = load ptr, ptr %put, align 8
  %60 = load ptr, ptr %img.addr, align 8
  %61 = load ptr, ptr %raster.addr, align 8
  %62 = load i32, ptr %y, align 4
  %63 = load i32, ptr %w.addr, align 4
  %mul42 = mul i32 %62, %63
  %idx.ext43 = zext i32 %mul42 to i64
  %add.ptr44 = getelementptr inbounds i32, ptr %61, i64 %idx.ext43
  %64 = load i32, ptr %col, align 4
  %idx.ext45 = zext i32 %64 to i64
  %add.ptr46 = getelementptr inbounds i32, ptr %add.ptr44, i64 %idx.ext45
  %65 = load i32, ptr %col, align 4
  %66 = load i32, ptr %y, align 4
  %67 = load i32, ptr %tw, align 4
  %68 = load i32, ptr %nrow, align 4
  %69 = load i32, ptr %toskew, align 4
  %70 = load ptr, ptr %buf, align 8
  call void %59(ptr noundef %60, ptr noundef %add.ptr46, i32 noundef %65, i32 noundef %66, i32 noundef %67, i32 noundef %68, i32 noundef 0, i32 noundef %69, ptr noundef %70)
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then36
  br label %for.inc

for.inc:                                          ; preds = %if.end47
  %71 = load i32, ptr %tw, align 4
  %72 = load i32, ptr %col, align 4
  %add48 = add i32 %72, %71
  store i32 %add48, ptr %col, align 4
  br label %for.cond22, !llvm.loop !6

for.end:                                          ; preds = %if.then31, %for.cond22
  %73 = load i16, ptr %orientation, align 2
  %conv49 = zext i16 %73 to i32
  %cmp50 = icmp eq i32 %conv49, 1
  br i1 %cmp50, label %cond.true52, label %cond.false54

cond.true52:                                      ; preds = %for.end
  %74 = load i32, ptr %nrow, align 4
  %sub53 = sub nsw i32 0, %74
  br label %cond.end55

cond.false54:                                     ; preds = %for.end
  %75 = load i32, ptr %nrow, align 4
  br label %cond.end55

cond.end55:                                       ; preds = %cond.false54, %cond.true52
  %cond56 = phi i32 [ %sub53, %cond.true52 ], [ %75, %cond.false54 ]
  %76 = load i32, ptr %y, align 4
  %add57 = add i32 %76, %cond56
  store i32 %add57, ptr %y, align 4
  br label %for.inc58

for.inc58:                                        ; preds = %cond.end55
  %77 = load i32, ptr %th, align 4
  %78 = load i32, ptr %row, align 4
  %add59 = add i32 %78, %77
  store i32 %add59, ptr %row, align 4
  br label %for.cond, !llvm.loop !8

for.end60:                                        ; preds = %for.cond
  %79 = load ptr, ptr %buf, align 8
  call void @_TIFFfree(ptr noundef %79)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end60, %if.then
  %80 = load i32, ptr %retval, align 4
  ret i32 %80
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @gtStripContig(ptr noundef %img, ptr noundef %raster, i32 noundef %w, i32 noundef %h) #0 {
entry:
  %retval = alloca i32, align 4
  %img.addr = alloca ptr, align 8
  %raster.addr = alloca ptr, align 8
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %tif = alloca ptr, align 8
  %put = alloca ptr, align 8
  %orientation = alloca i16, align 2
  %row = alloca i32, align 4
  %y = alloca i32, align 4
  %nrow = alloca i32, align 4
  %buf = alloca ptr, align 8
  %rowsperstrip = alloca i32, align 4
  %imagewidth = alloca i32, align 4
  %scanline = alloca i32, align 4
  %fromskew = alloca i32, align 4
  %toskew = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %raster, ptr %raster.addr, align 8
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
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
  %5 = load i32, ptr %width, align 4
  store i32 %5, ptr %imagewidth, align 4
  %6 = load ptr, ptr %tif, align 8
  %call = call i32 @TIFFStripSize(ptr noundef %6)
  %call3 = call ptr @_TIFFmalloc(i32 noundef %call)
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
  %10 = load i32, ptr %h.addr, align 4
  %call5 = call i32 @setorientation(ptr noundef %9, i32 noundef %10)
  store i32 %call5, ptr %y, align 4
  %11 = load ptr, ptr %img.addr, align 8
  %orientation6 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %11, i32 0, i32 8
  %12 = load i16, ptr %orientation6, align 8
  store i16 %12, ptr %orientation, align 2
  %13 = load i16, ptr %orientation, align 2
  %conv = zext i16 %13 to i32
  %cmp7 = icmp eq i32 %conv, 1
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %14 = load i32, ptr %w.addr, align 4
  %15 = load i32, ptr %w.addr, align 4
  %add = add i32 %14, %15
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %16 = load i32, ptr %w.addr, align 4
  %17 = load i32, ptr %w.addr, align 4
  %sub = sub i32 %16, %17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %sub, %cond.false ]
  %sub9 = sub nsw i32 0, %cond
  store i32 %sub9, ptr %toskew, align 4
  %18 = load ptr, ptr %tif, align 8
  %call10 = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %18, i32 noundef 278, ptr noundef %rowsperstrip)
  %19 = load ptr, ptr %tif, align 8
  %call11 = call i32 @TIFFScanlineSize(ptr noundef %19)
  store i32 %call11, ptr %scanline, align 4
  %20 = load i32, ptr %w.addr, align 4
  %21 = load i32, ptr %imagewidth, align 4
  %cmp12 = icmp ult i32 %20, %21
  br i1 %cmp12, label %cond.true14, label %cond.false16

cond.true14:                                      ; preds = %cond.end
  %22 = load i32, ptr %imagewidth, align 4
  %23 = load i32, ptr %w.addr, align 4
  %sub15 = sub i32 %22, %23
  br label %cond.end17

cond.false16:                                     ; preds = %cond.end
  br label %cond.end17

cond.end17:                                       ; preds = %cond.false16, %cond.true14
  %cond18 = phi i32 [ %sub15, %cond.true14 ], [ 0, %cond.false16 ]
  store i32 %cond18, ptr %fromskew, align 4
  store i32 0, ptr %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end17
  %24 = load i32, ptr %row, align 4
  %25 = load i32, ptr %h.addr, align 4
  %cmp19 = icmp ult i32 %24, %25
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, ptr %row, align 4
  %27 = load i32, ptr %rowsperstrip, align 4
  %add21 = add i32 %26, %27
  %28 = load i32, ptr %h.addr, align 4
  %cmp22 = icmp ugt i32 %add21, %28
  br i1 %cmp22, label %cond.true24, label %cond.false26

cond.true24:                                      ; preds = %for.body
  %29 = load i32, ptr %h.addr, align 4
  %30 = load i32, ptr %row, align 4
  %sub25 = sub i32 %29, %30
  br label %cond.end27

cond.false26:                                     ; preds = %for.body
  %31 = load i32, ptr %rowsperstrip, align 4
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false26, %cond.true24
  %cond28 = phi i32 [ %sub25, %cond.true24 ], [ %31, %cond.false26 ]
  store i32 %cond28, ptr %nrow, align 4
  %32 = load ptr, ptr %tif, align 8
  %33 = load ptr, ptr %tif, align 8
  %34 = load i32, ptr %row, align 4
  %35 = load ptr, ptr %img.addr, align 8
  %row_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %35, i32 0, i32 19
  %36 = load i32, ptr %row_offset, align 8
  %add29 = add i32 %34, %36
  %call30 = call i32 @TIFFComputeStrip(ptr noundef %33, i32 noundef %add29, i16 noundef zeroext 0)
  %37 = load ptr, ptr %buf, align 8
  %38 = load i32, ptr %nrow, align 4
  %39 = load i32, ptr %scanline, align 4
  %mul = mul i32 %38, %39
  %call31 = call i32 @TIFFReadEncodedStrip(ptr noundef %32, i32 noundef %call30, ptr noundef %37, i32 noundef %mul)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %land.lhs.true, label %if.end35

land.lhs.true:                                    ; preds = %cond.end27
  %40 = load ptr, ptr %img.addr, align 8
  %stoponerr = getelementptr inbounds %struct._TIFFRGBAImage, ptr %40, i32 0, i32 1
  %41 = load i32, ptr %stoponerr, align 8
  %tobool = icmp ne i32 %41, 0
  br i1 %tobool, label %if.then34, label %if.end35

if.then34:                                        ; preds = %land.lhs.true
  br label %for.end

if.end35:                                         ; preds = %land.lhs.true, %cond.end27
  %42 = load ptr, ptr %put, align 8
  %43 = load ptr, ptr %img.addr, align 8
  %44 = load ptr, ptr %raster.addr, align 8
  %45 = load i32, ptr %y, align 4
  %46 = load i32, ptr %w.addr, align 4
  %mul36 = mul i32 %45, %46
  %idx.ext = zext i32 %mul36 to i64
  %add.ptr = getelementptr inbounds i32, ptr %44, i64 %idx.ext
  %47 = load i32, ptr %y, align 4
  %48 = load i32, ptr %w.addr, align 4
  %49 = load i32, ptr %nrow, align 4
  %50 = load i32, ptr %fromskew, align 4
  %51 = load i32, ptr %toskew, align 4
  %52 = load ptr, ptr %buf, align 8
  call void %42(ptr noundef %43, ptr noundef %add.ptr, i32 noundef 0, i32 noundef %47, i32 noundef %48, i32 noundef %49, i32 noundef %50, i32 noundef %51, ptr noundef %52)
  %53 = load i16, ptr %orientation, align 2
  %conv37 = zext i16 %53 to i32
  %cmp38 = icmp eq i32 %conv37, 1
  br i1 %cmp38, label %cond.true40, label %cond.false42

cond.true40:                                      ; preds = %if.end35
  %54 = load i32, ptr %nrow, align 4
  %sub41 = sub nsw i32 0, %54
  br label %cond.end43

cond.false42:                                     ; preds = %if.end35
  %55 = load i32, ptr %nrow, align 4
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false42, %cond.true40
  %cond44 = phi i32 [ %sub41, %cond.true40 ], [ %55, %cond.false42 ]
  %56 = load i32, ptr %y, align 4
  %add45 = add i32 %56, %cond44
  store i32 %add45, ptr %y, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end43
  %57 = load i32, ptr %rowsperstrip, align 4
  %58 = load i32, ptr %row, align 4
  %add46 = add i32 %58, %57
  store i32 %add46, ptr %row, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %if.then34, %for.cond
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
  %4 = load i16, ptr %bitspersample, align 4
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
  %18 = load i16, ptr %bitspersample32, align 4
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
  %22 = load i16, ptr %bitspersample44, align 4
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
  %24 = load i16, ptr %bitspersample52, align 4
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
  %26 = load i16, ptr %bitspersample60, align 4
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
define internal i32 @gtTileSeparate(ptr noundef %img, ptr noundef %raster, i32 noundef %w, i32 noundef %h) #0 {
entry:
  %retval = alloca i32, align 4
  %img.addr = alloca ptr, align 8
  %raster.addr = alloca ptr, align 8
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %tif = alloca ptr, align 8
  %put = alloca ptr, align 8
  %orientation = alloca i16, align 2
  %col = alloca i32, align 4
  %row = alloca i32, align 4
  %y = alloca i32, align 4
  %tw = alloca i32, align 4
  %th = alloca i32, align 4
  %buf = alloca ptr, align 8
  %r = alloca ptr, align 8
  %g = alloca ptr, align 8
  %b = alloca ptr, align 8
  %a = alloca ptr, align 8
  %tilesize = alloca i32, align 4
  %fromskew = alloca i32, align 4
  %toskew = alloca i32, align 4
  %alpha = alloca i32, align 4
  %nrow = alloca i32, align 4
  %npix = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %raster, ptr %raster.addr, align 8
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
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
  %call = call i32 @TIFFTileSize(ptr noundef %6)
  store i32 %call, ptr %tilesize, align 4
  %7 = load i32, ptr %tilesize, align 4
  %mul = mul nsw i32 4, %7
  %call4 = call ptr @_TIFFmalloc(i32 noundef %mul)
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
  %12 = load i32, ptr %tilesize, align 4
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %idx.ext
  store ptr %add.ptr, ptr %g, align 8
  %13 = load ptr, ptr %g, align 8
  %14 = load i32, ptr %tilesize, align 4
  %idx.ext6 = sext i32 %14 to i64
  %add.ptr7 = getelementptr inbounds i8, ptr %13, i64 %idx.ext6
  store ptr %add.ptr7, ptr %b, align 8
  %15 = load ptr, ptr %b, align 8
  %16 = load i32, ptr %tilesize, align 4
  %idx.ext8 = sext i32 %16 to i64
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 %idx.ext8
  store ptr %add.ptr9, ptr %a, align 8
  %17 = load i32, ptr %alpha, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end
  %18 = load ptr, ptr %a, align 8
  %19 = load i32, ptr %tilesize, align 4
  %conv = sext i32 %19 to i64
  %20 = load ptr, ptr %a, align 8
  %21 = call i64 @llvm.objectsize.i64.p0(ptr %20, i1 false, i1 true, i1 false)
  %call11 = call ptr @__memset_chk(ptr noundef %18, i32 noundef 255, i64 noundef %conv, i64 noundef %21) #4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end
  %22 = load ptr, ptr %tif, align 8
  %call13 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %22, i32 noundef 322, ptr noundef %tw)
  %23 = load ptr, ptr %tif, align 8
  %call14 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %23, i32 noundef 323, ptr noundef %th)
  %24 = load ptr, ptr %img.addr, align 8
  %25 = load i32, ptr %h.addr, align 4
  %call15 = call i32 @setorientation(ptr noundef %24, i32 noundef %25)
  store i32 %call15, ptr %y, align 4
  %26 = load ptr, ptr %img.addr, align 8
  %orientation16 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %26, i32 0, i32 8
  %27 = load i16, ptr %orientation16, align 8
  store i16 %27, ptr %orientation, align 2
  %28 = load i16, ptr %orientation, align 2
  %conv17 = zext i16 %28 to i32
  %cmp18 = icmp eq i32 %conv17, 1
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end12
  %29 = load i32, ptr %tw, align 4
  %30 = load i32, ptr %w.addr, align 4
  %add = add i32 %29, %30
  br label %cond.end

cond.false:                                       ; preds = %if.end12
  %31 = load i32, ptr %tw, align 4
  %32 = load i32, ptr %w.addr, align 4
  %sub = sub i32 %31, %32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %sub, %cond.false ]
  %sub20 = sub nsw i32 0, %cond
  store i32 %sub20, ptr %toskew, align 4
  store i32 0, ptr %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc109, %cond.end
  %33 = load i32, ptr %row, align 4
  %34 = load i32, ptr %h.addr, align 4
  %cmp21 = icmp ult i32 %33, %34
  br i1 %cmp21, label %for.body, label %for.end111

for.body:                                         ; preds = %for.cond
  %35 = load i32, ptr %row, align 4
  %36 = load i32, ptr %th, align 4
  %add23 = add i32 %35, %36
  %37 = load i32, ptr %h.addr, align 4
  %cmp24 = icmp ugt i32 %add23, %37
  br i1 %cmp24, label %cond.true26, label %cond.false28

cond.true26:                                      ; preds = %for.body
  %38 = load i32, ptr %h.addr, align 4
  %39 = load i32, ptr %row, align 4
  %sub27 = sub i32 %38, %39
  br label %cond.end29

cond.false28:                                     ; preds = %for.body
  %40 = load i32, ptr %th, align 4
  br label %cond.end29

cond.end29:                                       ; preds = %cond.false28, %cond.true26
  %cond30 = phi i32 [ %sub27, %cond.true26 ], [ %40, %cond.false28 ]
  store i32 %cond30, ptr %nrow, align 4
  store i32 0, ptr %col, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc, %cond.end29
  %41 = load i32, ptr %col, align 4
  %42 = load i32, ptr %w.addr, align 4
  %cmp32 = icmp ult i32 %41, %42
  br i1 %cmp32, label %for.body34, label %for.end

for.body34:                                       ; preds = %for.cond31
  %43 = load ptr, ptr %tif, align 8
  %44 = load ptr, ptr %r, align 8
  %45 = load i32, ptr %col, align 4
  %46 = load ptr, ptr %img.addr, align 8
  %col_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %46, i32 0, i32 20
  %47 = load i32, ptr %col_offset, align 4
  %add35 = add i32 %45, %47
  %48 = load i32, ptr %row, align 4
  %49 = load ptr, ptr %img.addr, align 8
  %row_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %49, i32 0, i32 19
  %50 = load i32, ptr %row_offset, align 8
  %add36 = add i32 %48, %50
  %call37 = call i32 @TIFFReadTile(ptr noundef %43, ptr noundef %44, i32 noundef %add35, i32 noundef %add36, i32 noundef 0, i16 noundef zeroext 0)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %land.lhs.true, label %if.end42

land.lhs.true:                                    ; preds = %for.body34
  %51 = load ptr, ptr %img.addr, align 8
  %stoponerr = getelementptr inbounds %struct._TIFFRGBAImage, ptr %51, i32 0, i32 1
  %52 = load i32, ptr %stoponerr, align 8
  %tobool40 = icmp ne i32 %52, 0
  br i1 %tobool40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %land.lhs.true
  br label %for.end

if.end42:                                         ; preds = %land.lhs.true, %for.body34
  %53 = load ptr, ptr %tif, align 8
  %54 = load ptr, ptr %g, align 8
  %55 = load i32, ptr %col, align 4
  %56 = load ptr, ptr %img.addr, align 8
  %col_offset43 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %56, i32 0, i32 20
  %57 = load i32, ptr %col_offset43, align 4
  %add44 = add i32 %55, %57
  %58 = load i32, ptr %row, align 4
  %59 = load ptr, ptr %img.addr, align 8
  %row_offset45 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %59, i32 0, i32 19
  %60 = load i32, ptr %row_offset45, align 8
  %add46 = add i32 %58, %60
  %call47 = call i32 @TIFFReadTile(ptr noundef %53, ptr noundef %54, i32 noundef %add44, i32 noundef %add46, i32 noundef 0, i16 noundef zeroext 1)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %land.lhs.true50, label %if.end54

land.lhs.true50:                                  ; preds = %if.end42
  %61 = load ptr, ptr %img.addr, align 8
  %stoponerr51 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %61, i32 0, i32 1
  %62 = load i32, ptr %stoponerr51, align 8
  %tobool52 = icmp ne i32 %62, 0
  br i1 %tobool52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %land.lhs.true50
  br label %for.end

if.end54:                                         ; preds = %land.lhs.true50, %if.end42
  %63 = load ptr, ptr %tif, align 8
  %64 = load ptr, ptr %b, align 8
  %65 = load i32, ptr %col, align 4
  %66 = load ptr, ptr %img.addr, align 8
  %col_offset55 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %66, i32 0, i32 20
  %67 = load i32, ptr %col_offset55, align 4
  %add56 = add i32 %65, %67
  %68 = load i32, ptr %row, align 4
  %69 = load ptr, ptr %img.addr, align 8
  %row_offset57 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %69, i32 0, i32 19
  %70 = load i32, ptr %row_offset57, align 8
  %add58 = add i32 %68, %70
  %call59 = call i32 @TIFFReadTile(ptr noundef %63, ptr noundef %64, i32 noundef %add56, i32 noundef %add58, i32 noundef 0, i16 noundef zeroext 2)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %land.lhs.true62, label %if.end66

land.lhs.true62:                                  ; preds = %if.end54
  %71 = load ptr, ptr %img.addr, align 8
  %stoponerr63 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %71, i32 0, i32 1
  %72 = load i32, ptr %stoponerr63, align 8
  %tobool64 = icmp ne i32 %72, 0
  br i1 %tobool64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %land.lhs.true62
  br label %for.end

if.end66:                                         ; preds = %land.lhs.true62, %if.end54
  %73 = load i32, ptr %alpha, align 4
  %tobool67 = icmp ne i32 %73, 0
  br i1 %tobool67, label %land.lhs.true68, label %if.end80

land.lhs.true68:                                  ; preds = %if.end66
  %74 = load ptr, ptr %tif, align 8
  %75 = load ptr, ptr %a, align 8
  %76 = load i32, ptr %col, align 4
  %77 = load ptr, ptr %img.addr, align 8
  %col_offset69 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %77, i32 0, i32 20
  %78 = load i32, ptr %col_offset69, align 4
  %add70 = add i32 %76, %78
  %79 = load i32, ptr %row, align 4
  %80 = load ptr, ptr %img.addr, align 8
  %row_offset71 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %80, i32 0, i32 19
  %81 = load i32, ptr %row_offset71, align 8
  %add72 = add i32 %79, %81
  %call73 = call i32 @TIFFReadTile(ptr noundef %74, ptr noundef %75, i32 noundef %add70, i32 noundef %add72, i32 noundef 0, i16 noundef zeroext 3)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %land.lhs.true76, label %if.end80

land.lhs.true76:                                  ; preds = %land.lhs.true68
  %82 = load ptr, ptr %img.addr, align 8
  %stoponerr77 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %82, i32 0, i32 1
  %83 = load i32, ptr %stoponerr77, align 8
  %tobool78 = icmp ne i32 %83, 0
  br i1 %tobool78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %land.lhs.true76
  br label %for.end

if.end80:                                         ; preds = %land.lhs.true76, %land.lhs.true68, %if.end66
  %84 = load i32, ptr %col, align 4
  %85 = load i32, ptr %tw, align 4
  %add81 = add i32 %84, %85
  %86 = load i32, ptr %w.addr, align 4
  %cmp82 = icmp ugt i32 %add81, %86
  br i1 %cmp82, label %if.then84, label %if.else

if.then84:                                        ; preds = %if.end80
  %87 = load i32, ptr %w.addr, align 4
  %88 = load i32, ptr %col, align 4
  %sub85 = sub i32 %87, %88
  store i32 %sub85, ptr %npix, align 4
  %89 = load i32, ptr %tw, align 4
  %90 = load i32, ptr %npix, align 4
  %sub86 = sub i32 %89, %90
  store i32 %sub86, ptr %fromskew, align 4
  %91 = load ptr, ptr %put, align 8
  %92 = load ptr, ptr %img.addr, align 8
  %93 = load ptr, ptr %raster.addr, align 8
  %94 = load i32, ptr %y, align 4
  %95 = load i32, ptr %w.addr, align 4
  %mul87 = mul i32 %94, %95
  %idx.ext88 = zext i32 %mul87 to i64
  %add.ptr89 = getelementptr inbounds i32, ptr %93, i64 %idx.ext88
  %96 = load i32, ptr %col, align 4
  %idx.ext90 = zext i32 %96 to i64
  %add.ptr91 = getelementptr inbounds i32, ptr %add.ptr89, i64 %idx.ext90
  %97 = load i32, ptr %col, align 4
  %98 = load i32, ptr %y, align 4
  %99 = load i32, ptr %npix, align 4
  %100 = load i32, ptr %nrow, align 4
  %101 = load i32, ptr %fromskew, align 4
  %102 = load i32, ptr %toskew, align 4
  %103 = load i32, ptr %fromskew, align 4
  %add92 = add nsw i32 %102, %103
  %104 = load ptr, ptr %r, align 8
  %105 = load ptr, ptr %g, align 8
  %106 = load ptr, ptr %b, align 8
  %107 = load ptr, ptr %a, align 8
  call void %91(ptr noundef %92, ptr noundef %add.ptr91, i32 noundef %97, i32 noundef %98, i32 noundef %99, i32 noundef %100, i32 noundef %101, i32 noundef %add92, ptr noundef %104, ptr noundef %105, ptr noundef %106, ptr noundef %107)
  br label %if.end98

if.else:                                          ; preds = %if.end80
  %108 = load ptr, ptr %put, align 8
  %109 = load ptr, ptr %img.addr, align 8
  %110 = load ptr, ptr %raster.addr, align 8
  %111 = load i32, ptr %y, align 4
  %112 = load i32, ptr %w.addr, align 4
  %mul93 = mul i32 %111, %112
  %idx.ext94 = zext i32 %mul93 to i64
  %add.ptr95 = getelementptr inbounds i32, ptr %110, i64 %idx.ext94
  %113 = load i32, ptr %col, align 4
  %idx.ext96 = zext i32 %113 to i64
  %add.ptr97 = getelementptr inbounds i32, ptr %add.ptr95, i64 %idx.ext96
  %114 = load i32, ptr %col, align 4
  %115 = load i32, ptr %y, align 4
  %116 = load i32, ptr %tw, align 4
  %117 = load i32, ptr %nrow, align 4
  %118 = load i32, ptr %toskew, align 4
  %119 = load ptr, ptr %r, align 8
  %120 = load ptr, ptr %g, align 8
  %121 = load ptr, ptr %b, align 8
  %122 = load ptr, ptr %a, align 8
  call void %108(ptr noundef %109, ptr noundef %add.ptr97, i32 noundef %114, i32 noundef %115, i32 noundef %116, i32 noundef %117, i32 noundef 0, i32 noundef %118, ptr noundef %119, ptr noundef %120, ptr noundef %121, ptr noundef %122)
  br label %if.end98

if.end98:                                         ; preds = %if.else, %if.then84
  br label %for.inc

for.inc:                                          ; preds = %if.end98
  %123 = load i32, ptr %tw, align 4
  %124 = load i32, ptr %col, align 4
  %add99 = add i32 %124, %123
  store i32 %add99, ptr %col, align 4
  br label %for.cond31, !llvm.loop !10

for.end:                                          ; preds = %if.then79, %if.then65, %if.then53, %if.then41, %for.cond31
  %125 = load i16, ptr %orientation, align 2
  %conv100 = zext i16 %125 to i32
  %cmp101 = icmp eq i32 %conv100, 1
  br i1 %cmp101, label %cond.true103, label %cond.false105

cond.true103:                                     ; preds = %for.end
  %126 = load i32, ptr %nrow, align 4
  %sub104 = sub nsw i32 0, %126
  br label %cond.end106

cond.false105:                                    ; preds = %for.end
  %127 = load i32, ptr %nrow, align 4
  br label %cond.end106

cond.end106:                                      ; preds = %cond.false105, %cond.true103
  %cond107 = phi i32 [ %sub104, %cond.true103 ], [ %127, %cond.false105 ]
  %128 = load i32, ptr %y, align 4
  %add108 = add i32 %128, %cond107
  store i32 %add108, ptr %y, align 4
  br label %for.inc109

for.inc109:                                       ; preds = %cond.end106
  %129 = load i32, ptr %th, align 4
  %130 = load i32, ptr %row, align 4
  %add110 = add i32 %130, %129
  store i32 %add110, ptr %row, align 4
  br label %for.cond, !llvm.loop !11

for.end111:                                       ; preds = %for.cond
  %131 = load ptr, ptr %buf, align 8
  call void @_TIFFfree(ptr noundef %131)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end111, %if.then
  %132 = load i32, ptr %retval, align 4
  ret i32 %132
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @gtStripSeparate(ptr noundef %img, ptr noundef %raster, i32 noundef %w, i32 noundef %h) #0 {
entry:
  %retval = alloca i32, align 4
  %img.addr = alloca ptr, align 8
  %raster.addr = alloca ptr, align 8
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %tif = alloca ptr, align 8
  %put = alloca ptr, align 8
  %orientation = alloca i16, align 2
  %buf = alloca ptr, align 8
  %r = alloca ptr, align 8
  %g = alloca ptr, align 8
  %b = alloca ptr, align 8
  %a = alloca ptr, align 8
  %row = alloca i32, align 4
  %y = alloca i32, align 4
  %nrow = alloca i32, align 4
  %scanline = alloca i32, align 4
  %rowsperstrip = alloca i32, align 4
  %offset_row = alloca i32, align 4
  %imagewidth = alloca i32, align 4
  %stripsize = alloca i32, align 4
  %fromskew = alloca i32, align 4
  %toskew = alloca i32, align 4
  %alpha = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %raster, ptr %raster.addr, align 8
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
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
  %5 = load i32, ptr %width, align 4
  store i32 %5, ptr %imagewidth, align 4
  %6 = load ptr, ptr %img.addr, align 8
  %alpha3 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %alpha3, align 8
  store i32 %7, ptr %alpha, align 4
  %8 = load ptr, ptr %tif, align 8
  %call = call i32 @TIFFStripSize(ptr noundef %8)
  store i32 %call, ptr %stripsize, align 4
  %9 = load i32, ptr %stripsize, align 4
  %mul = mul nsw i32 4, %9
  %call4 = call ptr @_TIFFmalloc(i32 noundef %mul)
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
  %13 = load i32, ptr %stripsize, align 4
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 %idx.ext
  store ptr %add.ptr, ptr %g, align 8
  %14 = load ptr, ptr %g, align 8
  %15 = load i32, ptr %stripsize, align 4
  %idx.ext6 = sext i32 %15 to i64
  %add.ptr7 = getelementptr inbounds i8, ptr %14, i64 %idx.ext6
  store ptr %add.ptr7, ptr %b, align 8
  %16 = load ptr, ptr %b, align 8
  %17 = load i32, ptr %stripsize, align 4
  %idx.ext8 = sext i32 %17 to i64
  %add.ptr9 = getelementptr inbounds i8, ptr %16, i64 %idx.ext8
  store ptr %add.ptr9, ptr %a, align 8
  %18 = load i32, ptr %alpha, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end
  %19 = load ptr, ptr %a, align 8
  %20 = load i32, ptr %stripsize, align 4
  %conv = sext i32 %20 to i64
  %21 = load ptr, ptr %a, align 8
  %22 = call i64 @llvm.objectsize.i64.p0(ptr %21, i1 false, i1 true, i1 false)
  %call11 = call ptr @__memset_chk(ptr noundef %19, i32 noundef 255, i64 noundef %conv, i64 noundef %22) #4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end
  %23 = load ptr, ptr %img.addr, align 8
  %24 = load i32, ptr %h.addr, align 4
  %call13 = call i32 @setorientation(ptr noundef %23, i32 noundef %24)
  store i32 %call13, ptr %y, align 4
  %25 = load ptr, ptr %img.addr, align 8
  %orientation14 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %25, i32 0, i32 8
  %26 = load i16, ptr %orientation14, align 8
  store i16 %26, ptr %orientation, align 2
  %27 = load i16, ptr %orientation, align 2
  %conv15 = zext i16 %27 to i32
  %cmp16 = icmp eq i32 %conv15, 1
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end12
  %28 = load i32, ptr %w.addr, align 4
  %29 = load i32, ptr %w.addr, align 4
  %add = add i32 %28, %29
  br label %cond.end

cond.false:                                       ; preds = %if.end12
  %30 = load i32, ptr %w.addr, align 4
  %31 = load i32, ptr %w.addr, align 4
  %sub = sub i32 %30, %31
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %sub, %cond.false ]
  %sub18 = sub nsw i32 0, %cond
  store i32 %sub18, ptr %toskew, align 4
  %32 = load ptr, ptr %tif, align 8
  %call19 = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %32, i32 noundef 278, ptr noundef %rowsperstrip)
  %33 = load ptr, ptr %tif, align 8
  %call20 = call i32 @TIFFScanlineSize(ptr noundef %33)
  store i32 %call20, ptr %scanline, align 4
  %34 = load i32, ptr %w.addr, align 4
  %35 = load i32, ptr %imagewidth, align 4
  %cmp21 = icmp ult i32 %34, %35
  br i1 %cmp21, label %cond.true23, label %cond.false25

cond.true23:                                      ; preds = %cond.end
  %36 = load i32, ptr %imagewidth, align 4
  %37 = load i32, ptr %w.addr, align 4
  %sub24 = sub i32 %36, %37
  br label %cond.end26

cond.false25:                                     ; preds = %cond.end
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false25, %cond.true23
  %cond27 = phi i32 [ %sub24, %cond.true23 ], [ 0, %cond.false25 ]
  store i32 %cond27, ptr %fromskew, align 4
  store i32 0, ptr %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end26
  %38 = load i32, ptr %row, align 4
  %39 = load i32, ptr %h.addr, align 4
  %cmp28 = icmp ult i32 %38, %39
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i32, ptr %row, align 4
  %41 = load i32, ptr %rowsperstrip, align 4
  %add30 = add i32 %40, %41
  %42 = load i32, ptr %h.addr, align 4
  %cmp31 = icmp ugt i32 %add30, %42
  br i1 %cmp31, label %cond.true33, label %cond.false35

cond.true33:                                      ; preds = %for.body
  %43 = load i32, ptr %h.addr, align 4
  %44 = load i32, ptr %row, align 4
  %sub34 = sub i32 %43, %44
  br label %cond.end36

cond.false35:                                     ; preds = %for.body
  %45 = load i32, ptr %rowsperstrip, align 4
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false35, %cond.true33
  %cond37 = phi i32 [ %sub34, %cond.true33 ], [ %45, %cond.false35 ]
  store i32 %cond37, ptr %nrow, align 4
  %46 = load i32, ptr %row, align 4
  %47 = load ptr, ptr %img.addr, align 8
  %row_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %47, i32 0, i32 19
  %48 = load i32, ptr %row_offset, align 8
  %add38 = add i32 %46, %48
  store i32 %add38, ptr %offset_row, align 4
  %49 = load ptr, ptr %tif, align 8
  %50 = load ptr, ptr %tif, align 8
  %51 = load i32, ptr %offset_row, align 4
  %call39 = call i32 @TIFFComputeStrip(ptr noundef %50, i32 noundef %51, i16 noundef zeroext 0)
  %52 = load ptr, ptr %r, align 8
  %53 = load i32, ptr %nrow, align 4
  %54 = load i32, ptr %scanline, align 4
  %mul40 = mul i32 %53, %54
  %call41 = call i32 @TIFFReadEncodedStrip(ptr noundef %49, i32 noundef %call39, ptr noundef %52, i32 noundef %mul40)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %land.lhs.true, label %if.end46

land.lhs.true:                                    ; preds = %cond.end36
  %55 = load ptr, ptr %img.addr, align 8
  %stoponerr = getelementptr inbounds %struct._TIFFRGBAImage, ptr %55, i32 0, i32 1
  %56 = load i32, ptr %stoponerr, align 8
  %tobool44 = icmp ne i32 %56, 0
  br i1 %tobool44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %land.lhs.true
  br label %for.end

if.end46:                                         ; preds = %land.lhs.true, %cond.end36
  %57 = load ptr, ptr %tif, align 8
  %58 = load ptr, ptr %tif, align 8
  %59 = load i32, ptr %offset_row, align 4
  %call47 = call i32 @TIFFComputeStrip(ptr noundef %58, i32 noundef %59, i16 noundef zeroext 1)
  %60 = load ptr, ptr %g, align 8
  %61 = load i32, ptr %nrow, align 4
  %62 = load i32, ptr %scanline, align 4
  %mul48 = mul i32 %61, %62
  %call49 = call i32 @TIFFReadEncodedStrip(ptr noundef %57, i32 noundef %call47, ptr noundef %60, i32 noundef %mul48)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %land.lhs.true52, label %if.end56

land.lhs.true52:                                  ; preds = %if.end46
  %63 = load ptr, ptr %img.addr, align 8
  %stoponerr53 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %63, i32 0, i32 1
  %64 = load i32, ptr %stoponerr53, align 8
  %tobool54 = icmp ne i32 %64, 0
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %land.lhs.true52
  br label %for.end

if.end56:                                         ; preds = %land.lhs.true52, %if.end46
  %65 = load ptr, ptr %tif, align 8
  %66 = load ptr, ptr %tif, align 8
  %67 = load i32, ptr %offset_row, align 4
  %call57 = call i32 @TIFFComputeStrip(ptr noundef %66, i32 noundef %67, i16 noundef zeroext 2)
  %68 = load ptr, ptr %b, align 8
  %69 = load i32, ptr %nrow, align 4
  %70 = load i32, ptr %scanline, align 4
  %mul58 = mul i32 %69, %70
  %call59 = call i32 @TIFFReadEncodedStrip(ptr noundef %65, i32 noundef %call57, ptr noundef %68, i32 noundef %mul58)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %land.lhs.true62, label %if.end66

land.lhs.true62:                                  ; preds = %if.end56
  %71 = load ptr, ptr %img.addr, align 8
  %stoponerr63 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %71, i32 0, i32 1
  %72 = load i32, ptr %stoponerr63, align 8
  %tobool64 = icmp ne i32 %72, 0
  br i1 %tobool64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %land.lhs.true62
  br label %for.end

if.end66:                                         ; preds = %land.lhs.true62, %if.end56
  %73 = load i32, ptr %alpha, align 4
  %tobool67 = icmp ne i32 %73, 0
  br i1 %tobool67, label %land.lhs.true68, label %if.end78

land.lhs.true68:                                  ; preds = %if.end66
  %74 = load ptr, ptr %tif, align 8
  %75 = load ptr, ptr %tif, align 8
  %76 = load i32, ptr %offset_row, align 4
  %call69 = call i32 @TIFFComputeStrip(ptr noundef %75, i32 noundef %76, i16 noundef zeroext 3)
  %77 = load ptr, ptr %a, align 8
  %78 = load i32, ptr %nrow, align 4
  %79 = load i32, ptr %scanline, align 4
  %mul70 = mul i32 %78, %79
  %call71 = call i32 @TIFFReadEncodedStrip(ptr noundef %74, i32 noundef %call69, ptr noundef %77, i32 noundef %mul70)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %land.lhs.true74, label %if.end78

land.lhs.true74:                                  ; preds = %land.lhs.true68
  %80 = load ptr, ptr %img.addr, align 8
  %stoponerr75 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %80, i32 0, i32 1
  %81 = load i32, ptr %stoponerr75, align 8
  %tobool76 = icmp ne i32 %81, 0
  br i1 %tobool76, label %if.then77, label %if.end78

if.then77:                                        ; preds = %land.lhs.true74
  br label %for.end

if.end78:                                         ; preds = %land.lhs.true74, %land.lhs.true68, %if.end66
  %82 = load ptr, ptr %put, align 8
  %83 = load ptr, ptr %img.addr, align 8
  %84 = load ptr, ptr %raster.addr, align 8
  %85 = load i32, ptr %y, align 4
  %86 = load i32, ptr %w.addr, align 4
  %mul79 = mul i32 %85, %86
  %idx.ext80 = zext i32 %mul79 to i64
  %add.ptr81 = getelementptr inbounds i32, ptr %84, i64 %idx.ext80
  %87 = load i32, ptr %y, align 4
  %88 = load i32, ptr %w.addr, align 4
  %89 = load i32, ptr %nrow, align 4
  %90 = load i32, ptr %fromskew, align 4
  %91 = load i32, ptr %toskew, align 4
  %92 = load ptr, ptr %r, align 8
  %93 = load ptr, ptr %g, align 8
  %94 = load ptr, ptr %b, align 8
  %95 = load ptr, ptr %a, align 8
  call void %82(ptr noundef %83, ptr noundef %add.ptr81, i32 noundef 0, i32 noundef %87, i32 noundef %88, i32 noundef %89, i32 noundef %90, i32 noundef %91, ptr noundef %92, ptr noundef %93, ptr noundef %94, ptr noundef %95)
  %96 = load i16, ptr %orientation, align 2
  %conv82 = zext i16 %96 to i32
  %cmp83 = icmp eq i32 %conv82, 1
  br i1 %cmp83, label %cond.true85, label %cond.false87

cond.true85:                                      ; preds = %if.end78
  %97 = load i32, ptr %nrow, align 4
  %sub86 = sub nsw i32 0, %97
  br label %cond.end88

cond.false87:                                     ; preds = %if.end78
  %98 = load i32, ptr %nrow, align 4
  br label %cond.end88

cond.end88:                                       ; preds = %cond.false87, %cond.true85
  %cond89 = phi i32 [ %sub86, %cond.true85 ], [ %98, %cond.false87 ]
  %99 = load i32, ptr %y, align 4
  %add90 = add i32 %99, %cond89
  store i32 %add90, ptr %y, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end88
  %100 = load i32, ptr %rowsperstrip, align 4
  %101 = load i32, ptr %row, align 4
  %add91 = add i32 %101, %100
  store i32 %add91, ptr %row, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %if.then77, %if.then65, %if.then55, %if.then45, %for.cond
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
  %4 = load i16, ptr %bitspersample, align 4
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
define i32 @TIFFRGBAImageGet(ptr noundef %img, ptr noundef %raster, i32 noundef %w, i32 noundef %h) #0 {
entry:
  %retval = alloca i32, align 4
  %img.addr = alloca ptr, align 8
  %raster.addr = alloca ptr, align 8
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %raster, ptr %raster.addr, align 8
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
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
  %12 = load i32, ptr %w.addr, align 4
  %13 = load i32, ptr %h.addr, align 4
  %call7 = call i32 %9(ptr noundef %10, ptr noundef %11, i32 noundef %12, i32 noundef %13)
  store i32 %call7, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then2, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFReadRGBAImage(ptr noundef %tif, i32 noundef %rwidth, i32 noundef %rheight, ptr noundef %raster, i32 noundef %stop) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %rwidth.addr = alloca i32, align 4
  %rheight.addr = alloca i32, align 4
  %raster.addr = alloca ptr, align 8
  %stop.addr = alloca i32, align 4
  %emsg = alloca [1024 x i8], align 1
  %img = alloca %struct._TIFFRGBAImage, align 8
  %ok = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %rwidth, ptr %rwidth.addr, align 4
  store i32 %rheight, ptr %rheight.addr, align 4
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
  %3 = load i32, ptr %rheight.addr, align 4
  %height = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i32 0, i32 5
  %4 = load i32, ptr %height, align 8
  %sub = sub i32 %3, %4
  %5 = load i32, ptr %rwidth.addr, align 4
  %mul = mul i32 %sub, %5
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, ptr %2, i64 %idx.ext
  %6 = load i32, ptr %rwidth.addr, align 4
  %height1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i32 0, i32 5
  %7 = load i32, ptr %height1, align 8
  %call2 = call i32 @TIFFRGBAImageGet(ptr noundef %img, ptr noundef %add.ptr, i32 noundef %6, i32 noundef %7)
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
define i32 @TIFFReadRGBAStrip(ptr noundef %tif, i32 noundef %row, ptr noundef %raster) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %row.addr = alloca i32, align 4
  %raster.addr = alloca ptr, align 8
  %emsg = alloca [1024 x i8], align 1
  %img = alloca %struct._TIFFRGBAImage, align 8
  %ok = alloca i32, align 4
  %rowsperstrip = alloca i32, align 4
  %rows_to_read = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %row, ptr %row.addr, align 4
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
  %call2 = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %2, i32 noundef 278, ptr noundef %rowsperstrip)
  %3 = load i32, ptr %row.addr, align 4
  %4 = load i32, ptr %rowsperstrip, align 4
  %rem = urem i32 %3, %4
  %cmp = icmp ne i32 %rem, 0
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
  br i1 %tobool7, label %if.then8, label %if.else14

if.then8:                                         ; preds = %if.end5
  %7 = load i32, ptr %row.addr, align 4
  %row_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i32 0, i32 19
  store i32 %7, ptr %row_offset, align 8
  %col_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i32 0, i32 20
  store i32 0, ptr %col_offset, align 4
  %8 = load i32, ptr %row.addr, align 4
  %9 = load i32, ptr %rowsperstrip, align 4
  %add = add i32 %8, %9
  %height = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i32 0, i32 5
  %10 = load i32, ptr %height, align 8
  %cmp9 = icmp ugt i32 %add, %10
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then8
  %height11 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i32 0, i32 5
  %11 = load i32, ptr %height11, align 8
  %12 = load i32, ptr %row.addr, align 4
  %sub = sub i32 %11, %12
  store i32 %sub, ptr %rows_to_read, align 4
  br label %if.end12

if.else:                                          ; preds = %if.then8
  %13 = load i32, ptr %rowsperstrip, align 4
  store i32 %13, ptr %rows_to_read, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then10
  %14 = load ptr, ptr %raster.addr, align 8
  %width = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i32 0, i32 4
  %15 = load i32, ptr %width, align 4
  %16 = load i32, ptr %rows_to_read, align 4
  %call13 = call i32 @TIFFRGBAImageGet(ptr noundef %img, ptr noundef %14, i32 noundef %15, i32 noundef %16)
  store i32 %call13, ptr %ok, align 4
  call void @TIFFRGBAImageEnd(ptr noundef %img)
  br label %if.end17

if.else14:                                        ; preds = %if.end5
  %17 = load ptr, ptr %tif.addr, align 8
  %call15 = call ptr @TIFFFileName(ptr noundef %17)
  %arraydecay16 = getelementptr inbounds [1024 x i8], ptr %emsg, i64 0, i64 0
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call15, ptr noundef %arraydecay16)
  store i32 0, ptr %ok, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %if.end12
  %18 = load i32, ptr %ok, align 4
  store i32 %18, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then3, %if.then
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFReadRGBATile(ptr noundef %tif, i32 noundef %col, i32 noundef %row, ptr noundef %raster) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %col.addr = alloca i32, align 4
  %row.addr = alloca i32, align 4
  %raster.addr = alloca ptr, align 8
  %emsg = alloca [1024 x i8], align 1
  %img = alloca %struct._TIFFRGBAImage, align 8
  %ok = alloca i32, align 4
  %tile_xsize = alloca i32, align 4
  %tile_ysize = alloca i32, align 4
  %read_xsize = alloca i32, align 4
  %read_ysize = alloca i32, align 4
  %i_row = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %col, ptr %col.addr, align 4
  store i32 %row, ptr %row.addr, align 4
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
  %call2 = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %2, i32 noundef 322, ptr noundef %tile_xsize)
  %3 = load ptr, ptr %tif.addr, align 8
  %call3 = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %3, i32 noundef 323, ptr noundef %tile_ysize)
  %4 = load i32, ptr %col.addr, align 4
  %5 = load i32, ptr %tile_xsize, align 4
  %rem = urem i32 %4, %5
  %cmp = icmp ne i32 %rem, 0
  br i1 %cmp, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, ptr %row.addr, align 4
  %7 = load i32, ptr %tile_ysize, align 4
  %rem4 = urem i32 %6, %7
  %cmp5 = icmp ne i32 %rem4, 0
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
  %11 = load i32, ptr %row.addr, align 4
  %12 = load i32, ptr %tile_ysize, align 4
  %add = add i32 %11, %12
  %height = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i32 0, i32 5
  %13 = load i32, ptr %height, align 8
  %cmp15 = icmp ugt i32 %add, %13
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end14
  %height17 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i32 0, i32 5
  %14 = load i32, ptr %height17, align 8
  %15 = load i32, ptr %row.addr, align 4
  %sub = sub i32 %14, %15
  store i32 %sub, ptr %read_ysize, align 4
  br label %if.end18

if.else:                                          ; preds = %if.end14
  %16 = load i32, ptr %tile_ysize, align 4
  store i32 %16, ptr %read_ysize, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then16
  %17 = load i32, ptr %col.addr, align 4
  %18 = load i32, ptr %tile_xsize, align 4
  %add19 = add i32 %17, %18
  %width = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i32 0, i32 4
  %19 = load i32, ptr %width, align 4
  %cmp20 = icmp ugt i32 %add19, %19
  br i1 %cmp20, label %if.then21, label %if.else24

if.then21:                                        ; preds = %if.end18
  %width22 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i32 0, i32 4
  %20 = load i32, ptr %width22, align 4
  %21 = load i32, ptr %col.addr, align 4
  %sub23 = sub i32 %20, %21
  store i32 %sub23, ptr %read_xsize, align 4
  br label %if.end25

if.else24:                                        ; preds = %if.end18
  %22 = load i32, ptr %tile_xsize, align 4
  store i32 %22, ptr %read_xsize, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else24, %if.then21
  %23 = load i32, ptr %row.addr, align 4
  %row_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i32 0, i32 19
  store i32 %23, ptr %row_offset, align 8
  %24 = load i32, ptr %col.addr, align 4
  %col_offset = getelementptr inbounds %struct._TIFFRGBAImage, ptr %img, i32 0, i32 20
  store i32 %24, ptr %col_offset, align 4
  %25 = load ptr, ptr %raster.addr, align 8
  %26 = load i32, ptr %read_xsize, align 4
  %27 = load i32, ptr %read_ysize, align 4
  %call26 = call i32 @TIFFRGBAImageGet(ptr noundef %img, ptr noundef %25, i32 noundef %26, i32 noundef %27)
  store i32 %call26, ptr %ok, align 4
  call void @TIFFRGBAImageEnd(ptr noundef %img)
  %28 = load i32, ptr %read_xsize, align 4
  %29 = load i32, ptr %tile_xsize, align 4
  %cmp27 = icmp eq i32 %28, %29
  br i1 %cmp27, label %land.lhs.true, label %if.end30

land.lhs.true:                                    ; preds = %if.end25
  %30 = load i32, ptr %read_ysize, align 4
  %31 = load i32, ptr %tile_ysize, align 4
  %cmp28 = icmp eq i32 %30, %31
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %land.lhs.true
  %32 = load i32, ptr %ok, align 4
  store i32 %32, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %land.lhs.true, %if.end25
  store i32 0, ptr %i_row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end30
  %33 = load i32, ptr %i_row, align 4
  %34 = load i32, ptr %read_ysize, align 4
  %cmp31 = icmp ult i32 %33, %34
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load ptr, ptr %raster.addr, align 8
  %36 = load i32, ptr %tile_ysize, align 4
  %37 = load i32, ptr %i_row, align 4
  %sub32 = sub i32 %36, %37
  %sub33 = sub i32 %sub32, 1
  %38 = load i32, ptr %tile_xsize, align 4
  %mul = mul i32 %sub33, %38
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, ptr %35, i64 %idx.ext
  %39 = load ptr, ptr %raster.addr, align 8
  %40 = load i32, ptr %read_ysize, align 4
  %41 = load i32, ptr %i_row, align 4
  %sub34 = sub i32 %40, %41
  %sub35 = sub i32 %sub34, 1
  %42 = load i32, ptr %read_xsize, align 4
  %mul36 = mul i32 %sub35, %42
  %idx.ext37 = zext i32 %mul36 to i64
  %add.ptr38 = getelementptr inbounds i32, ptr %39, i64 %idx.ext37
  %43 = load i32, ptr %read_xsize, align 4
  %conv = zext i32 %43 to i64
  %mul39 = mul i64 %conv, 4
  %conv40 = trunc i64 %mul39 to i32
  call void @_TIFFmemcpy(ptr noundef %add.ptr, ptr noundef %add.ptr38, i32 noundef %conv40)
  %44 = load ptr, ptr %raster.addr, align 8
  %45 = load i32, ptr %tile_ysize, align 4
  %46 = load i32, ptr %i_row, align 4
  %sub41 = sub i32 %45, %46
  %sub42 = sub i32 %sub41, 1
  %47 = load i32, ptr %tile_xsize, align 4
  %mul43 = mul i32 %sub42, %47
  %idx.ext44 = zext i32 %mul43 to i64
  %add.ptr45 = getelementptr inbounds i32, ptr %44, i64 %idx.ext44
  %48 = load i32, ptr %read_xsize, align 4
  %idx.ext46 = zext i32 %48 to i64
  %add.ptr47 = getelementptr inbounds i32, ptr %add.ptr45, i64 %idx.ext46
  %49 = load i32, ptr %tile_xsize, align 4
  %50 = load i32, ptr %read_xsize, align 4
  %sub48 = sub i32 %49, %50
  %conv49 = zext i32 %sub48 to i64
  %mul50 = mul i64 4, %conv49
  %conv51 = trunc i64 %mul50 to i32
  call void @_TIFFmemset(ptr noundef %add.ptr47, i32 noundef 0, i32 noundef %conv51)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i32, ptr %i_row, align 4
  %inc = add i32 %51, 1
  store i32 %inc, ptr %i_row, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %52 = load i32, ptr %read_ysize, align 4
  store i32 %52, ptr %i_row, align 4
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc64, %for.end
  %53 = load i32, ptr %i_row, align 4
  %54 = load i32, ptr %tile_ysize, align 4
  %cmp53 = icmp ult i32 %53, %54
  br i1 %cmp53, label %for.body55, label %for.end66

for.body55:                                       ; preds = %for.cond52
  %55 = load ptr, ptr %raster.addr, align 8
  %56 = load i32, ptr %tile_ysize, align 4
  %57 = load i32, ptr %i_row, align 4
  %sub56 = sub i32 %56, %57
  %sub57 = sub i32 %sub56, 1
  %58 = load i32, ptr %tile_xsize, align 4
  %mul58 = mul i32 %sub57, %58
  %idx.ext59 = zext i32 %mul58 to i64
  %add.ptr60 = getelementptr inbounds i32, ptr %55, i64 %idx.ext59
  %59 = load i32, ptr %tile_xsize, align 4
  %conv61 = zext i32 %59 to i64
  %mul62 = mul i64 4, %conv61
  %conv63 = trunc i64 %mul62 to i32
  call void @_TIFFmemset(ptr noundef %add.ptr60, i32 noundef 0, i32 noundef %conv63)
  br label %for.inc64

for.inc64:                                        ; preds = %for.body55
  %60 = load i32, ptr %i_row, align 4
  %inc65 = add i32 %60, 1
  store i32 %inc65, ptr %i_row, align 4
  br label %for.cond52, !llvm.loop !14

for.end66:                                        ; preds = %for.cond52
  %61 = load i32, ptr %ok, align 4
  store i32 %61, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end66, %if.then29, %if.then11, %if.then6, %if.then
  %62 = load i32, ptr %retval, align 4
  ret i32 %62
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i32 noundef) #1

declare void @_TIFFmemset(ptr noundef, i32 noundef, i32 noundef) #1

declare i32 @TIFFTileSize(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @setorientation(ptr noundef %img, i32 noundef %h) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %h.addr = alloca i32, align 4
  %tif = alloca ptr, align 8
  %y = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store i32 %h, ptr %h.addr, align 4
  %0 = load ptr, ptr %img.addr, align 8
  %tif1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %tif1, align 8
  store ptr %1, ptr %tif, align 8
  %2 = load ptr, ptr %img.addr, align 8
  %orientation = getelementptr inbounds %struct._TIFFRGBAImage, ptr %2, i32 0, i32 8
  %3 = load i16, ptr %orientation, align 8
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
  store i16 4, ptr %orientation2, align 8
  br label %sw.bb3

sw.bb3:                                           ; preds = %entry, %sw.bb
  store i32 0, ptr %y, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry, %entry, %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb4
  %6 = load ptr, ptr %tif, align 8
  %call5 = call ptr @TIFFFileName(ptr noundef %6)
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %call5, ptr noundef @.str.26)
  %7 = load ptr, ptr %img.addr, align 8
  %orientation6 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %7, i32 0, i32 8
  store i16 1, ptr %orientation6, align 8
  br label %sw.bb7

sw.bb7:                                           ; preds = %entry, %sw.default
  %8 = load i32, ptr %h.addr, align 4
  %sub = sub i32 %8, 1
  store i32 %sub, ptr %y, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb3
  %9 = load i32, ptr %y, align 4
  ret i32 %9
}

declare i32 @TIFFReadTile(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #1

declare void @TIFFWarning(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #3

declare i32 @TIFFStripSize(ptr noundef) #1

declare i32 @TIFFScanlineSize(ptr noundef) #1

declare i32 @TIFFReadEncodedStrip(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare i32 @TIFFComputeStrip(ptr noundef, i32 noundef, i16 noundef zeroext) #1

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
  %3 = load i16, ptr %bitspersample, align 4
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
  %10 = load i16, ptr %bitspersample13, align 4
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
define internal void @putRGBAAcontig8bittile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  %samplesperpixel = alloca i32, align 4
  %_x = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %samplesperpixel1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 7
  %1 = load i16, ptr %samplesperpixel1, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %samplesperpixel, align 4
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %y.addr, align 4
  %4 = load i32, ptr %samplesperpixel, align 4
  %5 = load i32, ptr %fromskew.addr, align 4
  %mul = mul nsw i32 %5, %4
  store i32 %mul, ptr %fromskew.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load i32, ptr %h.addr, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %h.addr, align 4
  %cmp = icmp ugt i32 %6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, ptr %w.addr, align 4
  store i32 %7, ptr %_x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %8 = load i32, ptr %_x, align 4
  %cmp3 = icmp uge i32 %8, 8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx, align 1
  %conv5 = zext i8 %10 to i32
  %11 = load ptr, ptr %pp.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %11, i64 1
  %12 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %12 to i32
  %shl = shl i32 %conv7, 8
  %or = or i32 %conv5, %shl
  %13 = load ptr, ptr %pp.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %13, i64 2
  %14 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %14 to i32
  %shl10 = shl i32 %conv9, 16
  %or11 = or i32 %or, %shl10
  %15 = load ptr, ptr %pp.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %15, i64 3
  %16 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %16 to i32
  %shl14 = shl i32 %conv13, 24
  %or15 = or i32 %or11, %shl14
  %17 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %17, i32 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i32 %or15, ptr %17, align 4
  %18 = load i32, ptr %samplesperpixel, align 4
  %19 = load ptr, ptr %pp.addr, align 8
  %idx.ext = sext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8, ptr %19, i64 %idx.ext
  store ptr %add.ptr, ptr %pp.addr, align 8
  %20 = load ptr, ptr %pp.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %20, i64 0
  %21 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %21 to i32
  %22 = load ptr, ptr %pp.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %22, i64 1
  %23 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %23 to i32
  %shl20 = shl i32 %conv19, 8
  %or21 = or i32 %conv17, %shl20
  %24 = load ptr, ptr %pp.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %24, i64 2
  %25 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %25 to i32
  %shl24 = shl i32 %conv23, 16
  %or25 = or i32 %or21, %shl24
  %26 = load ptr, ptr %pp.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %26, i64 3
  %27 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %27 to i32
  %shl28 = shl i32 %conv27, 24
  %or29 = or i32 %or25, %shl28
  %28 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i32, ptr %28, i32 1
  store ptr %incdec.ptr30, ptr %cp.addr, align 8
  store i32 %or29, ptr %28, align 4
  %29 = load i32, ptr %samplesperpixel, align 4
  %30 = load ptr, ptr %pp.addr, align 8
  %idx.ext31 = sext i32 %29 to i64
  %add.ptr32 = getelementptr inbounds i8, ptr %30, i64 %idx.ext31
  store ptr %add.ptr32, ptr %pp.addr, align 8
  %31 = load ptr, ptr %pp.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %31, i64 0
  %32 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %32 to i32
  %33 = load ptr, ptr %pp.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %33, i64 1
  %34 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %34 to i32
  %shl37 = shl i32 %conv36, 8
  %or38 = or i32 %conv34, %shl37
  %35 = load ptr, ptr %pp.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %35, i64 2
  %36 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %36 to i32
  %shl41 = shl i32 %conv40, 16
  %or42 = or i32 %or38, %shl41
  %37 = load ptr, ptr %pp.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %37, i64 3
  %38 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %38 to i32
  %shl45 = shl i32 %conv44, 24
  %or46 = or i32 %or42, %shl45
  %39 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr47 = getelementptr inbounds i32, ptr %39, i32 1
  store ptr %incdec.ptr47, ptr %cp.addr, align 8
  store i32 %or46, ptr %39, align 4
  %40 = load i32, ptr %samplesperpixel, align 4
  %41 = load ptr, ptr %pp.addr, align 8
  %idx.ext48 = sext i32 %40 to i64
  %add.ptr49 = getelementptr inbounds i8, ptr %41, i64 %idx.ext48
  store ptr %add.ptr49, ptr %pp.addr, align 8
  %42 = load ptr, ptr %pp.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, ptr %42, i64 0
  %43 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %43 to i32
  %44 = load ptr, ptr %pp.addr, align 8
  %arrayidx52 = getelementptr inbounds i8, ptr %44, i64 1
  %45 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %45 to i32
  %shl54 = shl i32 %conv53, 8
  %or55 = or i32 %conv51, %shl54
  %46 = load ptr, ptr %pp.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, ptr %46, i64 2
  %47 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %47 to i32
  %shl58 = shl i32 %conv57, 16
  %or59 = or i32 %or55, %shl58
  %48 = load ptr, ptr %pp.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %48, i64 3
  %49 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %49 to i32
  %shl62 = shl i32 %conv61, 24
  %or63 = or i32 %or59, %shl62
  %50 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr64 = getelementptr inbounds i32, ptr %50, i32 1
  store ptr %incdec.ptr64, ptr %cp.addr, align 8
  store i32 %or63, ptr %50, align 4
  %51 = load i32, ptr %samplesperpixel, align 4
  %52 = load ptr, ptr %pp.addr, align 8
  %idx.ext65 = sext i32 %51 to i64
  %add.ptr66 = getelementptr inbounds i8, ptr %52, i64 %idx.ext65
  store ptr %add.ptr66, ptr %pp.addr, align 8
  %53 = load ptr, ptr %pp.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %53, i64 0
  %54 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %54 to i32
  %55 = load ptr, ptr %pp.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, ptr %55, i64 1
  %56 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %56 to i32
  %shl71 = shl i32 %conv70, 8
  %or72 = or i32 %conv68, %shl71
  %57 = load ptr, ptr %pp.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %57, i64 2
  %58 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %58 to i32
  %shl75 = shl i32 %conv74, 16
  %or76 = or i32 %or72, %shl75
  %59 = load ptr, ptr %pp.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, ptr %59, i64 3
  %60 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %60 to i32
  %shl79 = shl i32 %conv78, 24
  %or80 = or i32 %or76, %shl79
  %61 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr81 = getelementptr inbounds i32, ptr %61, i32 1
  store ptr %incdec.ptr81, ptr %cp.addr, align 8
  store i32 %or80, ptr %61, align 4
  %62 = load i32, ptr %samplesperpixel, align 4
  %63 = load ptr, ptr %pp.addr, align 8
  %idx.ext82 = sext i32 %62 to i64
  %add.ptr83 = getelementptr inbounds i8, ptr %63, i64 %idx.ext82
  store ptr %add.ptr83, ptr %pp.addr, align 8
  %64 = load ptr, ptr %pp.addr, align 8
  %arrayidx84 = getelementptr inbounds i8, ptr %64, i64 0
  %65 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %65 to i32
  %66 = load ptr, ptr %pp.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, ptr %66, i64 1
  %67 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %67 to i32
  %shl88 = shl i32 %conv87, 8
  %or89 = or i32 %conv85, %shl88
  %68 = load ptr, ptr %pp.addr, align 8
  %arrayidx90 = getelementptr inbounds i8, ptr %68, i64 2
  %69 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %69 to i32
  %shl92 = shl i32 %conv91, 16
  %or93 = or i32 %or89, %shl92
  %70 = load ptr, ptr %pp.addr, align 8
  %arrayidx94 = getelementptr inbounds i8, ptr %70, i64 3
  %71 = load i8, ptr %arrayidx94, align 1
  %conv95 = zext i8 %71 to i32
  %shl96 = shl i32 %conv95, 24
  %or97 = or i32 %or93, %shl96
  %72 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr98 = getelementptr inbounds i32, ptr %72, i32 1
  store ptr %incdec.ptr98, ptr %cp.addr, align 8
  store i32 %or97, ptr %72, align 4
  %73 = load i32, ptr %samplesperpixel, align 4
  %74 = load ptr, ptr %pp.addr, align 8
  %idx.ext99 = sext i32 %73 to i64
  %add.ptr100 = getelementptr inbounds i8, ptr %74, i64 %idx.ext99
  store ptr %add.ptr100, ptr %pp.addr, align 8
  %75 = load ptr, ptr %pp.addr, align 8
  %arrayidx101 = getelementptr inbounds i8, ptr %75, i64 0
  %76 = load i8, ptr %arrayidx101, align 1
  %conv102 = zext i8 %76 to i32
  %77 = load ptr, ptr %pp.addr, align 8
  %arrayidx103 = getelementptr inbounds i8, ptr %77, i64 1
  %78 = load i8, ptr %arrayidx103, align 1
  %conv104 = zext i8 %78 to i32
  %shl105 = shl i32 %conv104, 8
  %or106 = or i32 %conv102, %shl105
  %79 = load ptr, ptr %pp.addr, align 8
  %arrayidx107 = getelementptr inbounds i8, ptr %79, i64 2
  %80 = load i8, ptr %arrayidx107, align 1
  %conv108 = zext i8 %80 to i32
  %shl109 = shl i32 %conv108, 16
  %or110 = or i32 %or106, %shl109
  %81 = load ptr, ptr %pp.addr, align 8
  %arrayidx111 = getelementptr inbounds i8, ptr %81, i64 3
  %82 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %82 to i32
  %shl113 = shl i32 %conv112, 24
  %or114 = or i32 %or110, %shl113
  %83 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr115 = getelementptr inbounds i32, ptr %83, i32 1
  store ptr %incdec.ptr115, ptr %cp.addr, align 8
  store i32 %or114, ptr %83, align 4
  %84 = load i32, ptr %samplesperpixel, align 4
  %85 = load ptr, ptr %pp.addr, align 8
  %idx.ext116 = sext i32 %84 to i64
  %add.ptr117 = getelementptr inbounds i8, ptr %85, i64 %idx.ext116
  store ptr %add.ptr117, ptr %pp.addr, align 8
  %86 = load ptr, ptr %pp.addr, align 8
  %arrayidx118 = getelementptr inbounds i8, ptr %86, i64 0
  %87 = load i8, ptr %arrayidx118, align 1
  %conv119 = zext i8 %87 to i32
  %88 = load ptr, ptr %pp.addr, align 8
  %arrayidx120 = getelementptr inbounds i8, ptr %88, i64 1
  %89 = load i8, ptr %arrayidx120, align 1
  %conv121 = zext i8 %89 to i32
  %shl122 = shl i32 %conv121, 8
  %or123 = or i32 %conv119, %shl122
  %90 = load ptr, ptr %pp.addr, align 8
  %arrayidx124 = getelementptr inbounds i8, ptr %90, i64 2
  %91 = load i8, ptr %arrayidx124, align 1
  %conv125 = zext i8 %91 to i32
  %shl126 = shl i32 %conv125, 16
  %or127 = or i32 %or123, %shl126
  %92 = load ptr, ptr %pp.addr, align 8
  %arrayidx128 = getelementptr inbounds i8, ptr %92, i64 3
  %93 = load i8, ptr %arrayidx128, align 1
  %conv129 = zext i8 %93 to i32
  %shl130 = shl i32 %conv129, 24
  %or131 = or i32 %or127, %shl130
  %94 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr132 = getelementptr inbounds i32, ptr %94, i32 1
  store ptr %incdec.ptr132, ptr %cp.addr, align 8
  store i32 %or131, ptr %94, align 4
  %95 = load i32, ptr %samplesperpixel, align 4
  %96 = load ptr, ptr %pp.addr, align 8
  %idx.ext133 = sext i32 %95 to i64
  %add.ptr134 = getelementptr inbounds i8, ptr %96, i64 %idx.ext133
  store ptr %add.ptr134, ptr %pp.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %97 = load i32, ptr %_x, align 4
  %sub = sub i32 %97, 8
  store i32 %sub, ptr %_x, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %98 = load i32, ptr %_x, align 4
  %cmp135 = icmp ugt i32 %98, 0
  br i1 %cmp135, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %99 = load i32, ptr %_x, align 4
  switch i32 %99, label %sw.epilog [
    i32 7, label %sw.bb
    i32 6, label %sw.bb154
    i32 5, label %sw.bb172
    i32 4, label %sw.bb190
    i32 3, label %sw.bb208
    i32 2, label %sw.bb226
    i32 1, label %sw.bb244
  ]

sw.bb:                                            ; preds = %if.then
  %100 = load ptr, ptr %pp.addr, align 8
  %arrayidx137 = getelementptr inbounds i8, ptr %100, i64 0
  %101 = load i8, ptr %arrayidx137, align 1
  %conv138 = zext i8 %101 to i32
  %102 = load ptr, ptr %pp.addr, align 8
  %arrayidx139 = getelementptr inbounds i8, ptr %102, i64 1
  %103 = load i8, ptr %arrayidx139, align 1
  %conv140 = zext i8 %103 to i32
  %shl141 = shl i32 %conv140, 8
  %or142 = or i32 %conv138, %shl141
  %104 = load ptr, ptr %pp.addr, align 8
  %arrayidx143 = getelementptr inbounds i8, ptr %104, i64 2
  %105 = load i8, ptr %arrayidx143, align 1
  %conv144 = zext i8 %105 to i32
  %shl145 = shl i32 %conv144, 16
  %or146 = or i32 %or142, %shl145
  %106 = load ptr, ptr %pp.addr, align 8
  %arrayidx147 = getelementptr inbounds i8, ptr %106, i64 3
  %107 = load i8, ptr %arrayidx147, align 1
  %conv148 = zext i8 %107 to i32
  %shl149 = shl i32 %conv148, 24
  %or150 = or i32 %or146, %shl149
  %108 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr151 = getelementptr inbounds i32, ptr %108, i32 1
  store ptr %incdec.ptr151, ptr %cp.addr, align 8
  store i32 %or150, ptr %108, align 4
  %109 = load i32, ptr %samplesperpixel, align 4
  %110 = load ptr, ptr %pp.addr, align 8
  %idx.ext152 = sext i32 %109 to i64
  %add.ptr153 = getelementptr inbounds i8, ptr %110, i64 %idx.ext152
  store ptr %add.ptr153, ptr %pp.addr, align 8
  br label %sw.bb154

sw.bb154:                                         ; preds = %if.then, %sw.bb
  %111 = load ptr, ptr %pp.addr, align 8
  %arrayidx155 = getelementptr inbounds i8, ptr %111, i64 0
  %112 = load i8, ptr %arrayidx155, align 1
  %conv156 = zext i8 %112 to i32
  %113 = load ptr, ptr %pp.addr, align 8
  %arrayidx157 = getelementptr inbounds i8, ptr %113, i64 1
  %114 = load i8, ptr %arrayidx157, align 1
  %conv158 = zext i8 %114 to i32
  %shl159 = shl i32 %conv158, 8
  %or160 = or i32 %conv156, %shl159
  %115 = load ptr, ptr %pp.addr, align 8
  %arrayidx161 = getelementptr inbounds i8, ptr %115, i64 2
  %116 = load i8, ptr %arrayidx161, align 1
  %conv162 = zext i8 %116 to i32
  %shl163 = shl i32 %conv162, 16
  %or164 = or i32 %or160, %shl163
  %117 = load ptr, ptr %pp.addr, align 8
  %arrayidx165 = getelementptr inbounds i8, ptr %117, i64 3
  %118 = load i8, ptr %arrayidx165, align 1
  %conv166 = zext i8 %118 to i32
  %shl167 = shl i32 %conv166, 24
  %or168 = or i32 %or164, %shl167
  %119 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr169 = getelementptr inbounds i32, ptr %119, i32 1
  store ptr %incdec.ptr169, ptr %cp.addr, align 8
  store i32 %or168, ptr %119, align 4
  %120 = load i32, ptr %samplesperpixel, align 4
  %121 = load ptr, ptr %pp.addr, align 8
  %idx.ext170 = sext i32 %120 to i64
  %add.ptr171 = getelementptr inbounds i8, ptr %121, i64 %idx.ext170
  store ptr %add.ptr171, ptr %pp.addr, align 8
  br label %sw.bb172

sw.bb172:                                         ; preds = %if.then, %sw.bb154
  %122 = load ptr, ptr %pp.addr, align 8
  %arrayidx173 = getelementptr inbounds i8, ptr %122, i64 0
  %123 = load i8, ptr %arrayidx173, align 1
  %conv174 = zext i8 %123 to i32
  %124 = load ptr, ptr %pp.addr, align 8
  %arrayidx175 = getelementptr inbounds i8, ptr %124, i64 1
  %125 = load i8, ptr %arrayidx175, align 1
  %conv176 = zext i8 %125 to i32
  %shl177 = shl i32 %conv176, 8
  %or178 = or i32 %conv174, %shl177
  %126 = load ptr, ptr %pp.addr, align 8
  %arrayidx179 = getelementptr inbounds i8, ptr %126, i64 2
  %127 = load i8, ptr %arrayidx179, align 1
  %conv180 = zext i8 %127 to i32
  %shl181 = shl i32 %conv180, 16
  %or182 = or i32 %or178, %shl181
  %128 = load ptr, ptr %pp.addr, align 8
  %arrayidx183 = getelementptr inbounds i8, ptr %128, i64 3
  %129 = load i8, ptr %arrayidx183, align 1
  %conv184 = zext i8 %129 to i32
  %shl185 = shl i32 %conv184, 24
  %or186 = or i32 %or182, %shl185
  %130 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr187 = getelementptr inbounds i32, ptr %130, i32 1
  store ptr %incdec.ptr187, ptr %cp.addr, align 8
  store i32 %or186, ptr %130, align 4
  %131 = load i32, ptr %samplesperpixel, align 4
  %132 = load ptr, ptr %pp.addr, align 8
  %idx.ext188 = sext i32 %131 to i64
  %add.ptr189 = getelementptr inbounds i8, ptr %132, i64 %idx.ext188
  store ptr %add.ptr189, ptr %pp.addr, align 8
  br label %sw.bb190

sw.bb190:                                         ; preds = %if.then, %sw.bb172
  %133 = load ptr, ptr %pp.addr, align 8
  %arrayidx191 = getelementptr inbounds i8, ptr %133, i64 0
  %134 = load i8, ptr %arrayidx191, align 1
  %conv192 = zext i8 %134 to i32
  %135 = load ptr, ptr %pp.addr, align 8
  %arrayidx193 = getelementptr inbounds i8, ptr %135, i64 1
  %136 = load i8, ptr %arrayidx193, align 1
  %conv194 = zext i8 %136 to i32
  %shl195 = shl i32 %conv194, 8
  %or196 = or i32 %conv192, %shl195
  %137 = load ptr, ptr %pp.addr, align 8
  %arrayidx197 = getelementptr inbounds i8, ptr %137, i64 2
  %138 = load i8, ptr %arrayidx197, align 1
  %conv198 = zext i8 %138 to i32
  %shl199 = shl i32 %conv198, 16
  %or200 = or i32 %or196, %shl199
  %139 = load ptr, ptr %pp.addr, align 8
  %arrayidx201 = getelementptr inbounds i8, ptr %139, i64 3
  %140 = load i8, ptr %arrayidx201, align 1
  %conv202 = zext i8 %140 to i32
  %shl203 = shl i32 %conv202, 24
  %or204 = or i32 %or200, %shl203
  %141 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr205 = getelementptr inbounds i32, ptr %141, i32 1
  store ptr %incdec.ptr205, ptr %cp.addr, align 8
  store i32 %or204, ptr %141, align 4
  %142 = load i32, ptr %samplesperpixel, align 4
  %143 = load ptr, ptr %pp.addr, align 8
  %idx.ext206 = sext i32 %142 to i64
  %add.ptr207 = getelementptr inbounds i8, ptr %143, i64 %idx.ext206
  store ptr %add.ptr207, ptr %pp.addr, align 8
  br label %sw.bb208

sw.bb208:                                         ; preds = %if.then, %sw.bb190
  %144 = load ptr, ptr %pp.addr, align 8
  %arrayidx209 = getelementptr inbounds i8, ptr %144, i64 0
  %145 = load i8, ptr %arrayidx209, align 1
  %conv210 = zext i8 %145 to i32
  %146 = load ptr, ptr %pp.addr, align 8
  %arrayidx211 = getelementptr inbounds i8, ptr %146, i64 1
  %147 = load i8, ptr %arrayidx211, align 1
  %conv212 = zext i8 %147 to i32
  %shl213 = shl i32 %conv212, 8
  %or214 = or i32 %conv210, %shl213
  %148 = load ptr, ptr %pp.addr, align 8
  %arrayidx215 = getelementptr inbounds i8, ptr %148, i64 2
  %149 = load i8, ptr %arrayidx215, align 1
  %conv216 = zext i8 %149 to i32
  %shl217 = shl i32 %conv216, 16
  %or218 = or i32 %or214, %shl217
  %150 = load ptr, ptr %pp.addr, align 8
  %arrayidx219 = getelementptr inbounds i8, ptr %150, i64 3
  %151 = load i8, ptr %arrayidx219, align 1
  %conv220 = zext i8 %151 to i32
  %shl221 = shl i32 %conv220, 24
  %or222 = or i32 %or218, %shl221
  %152 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr223 = getelementptr inbounds i32, ptr %152, i32 1
  store ptr %incdec.ptr223, ptr %cp.addr, align 8
  store i32 %or222, ptr %152, align 4
  %153 = load i32, ptr %samplesperpixel, align 4
  %154 = load ptr, ptr %pp.addr, align 8
  %idx.ext224 = sext i32 %153 to i64
  %add.ptr225 = getelementptr inbounds i8, ptr %154, i64 %idx.ext224
  store ptr %add.ptr225, ptr %pp.addr, align 8
  br label %sw.bb226

sw.bb226:                                         ; preds = %if.then, %sw.bb208
  %155 = load ptr, ptr %pp.addr, align 8
  %arrayidx227 = getelementptr inbounds i8, ptr %155, i64 0
  %156 = load i8, ptr %arrayidx227, align 1
  %conv228 = zext i8 %156 to i32
  %157 = load ptr, ptr %pp.addr, align 8
  %arrayidx229 = getelementptr inbounds i8, ptr %157, i64 1
  %158 = load i8, ptr %arrayidx229, align 1
  %conv230 = zext i8 %158 to i32
  %shl231 = shl i32 %conv230, 8
  %or232 = or i32 %conv228, %shl231
  %159 = load ptr, ptr %pp.addr, align 8
  %arrayidx233 = getelementptr inbounds i8, ptr %159, i64 2
  %160 = load i8, ptr %arrayidx233, align 1
  %conv234 = zext i8 %160 to i32
  %shl235 = shl i32 %conv234, 16
  %or236 = or i32 %or232, %shl235
  %161 = load ptr, ptr %pp.addr, align 8
  %arrayidx237 = getelementptr inbounds i8, ptr %161, i64 3
  %162 = load i8, ptr %arrayidx237, align 1
  %conv238 = zext i8 %162 to i32
  %shl239 = shl i32 %conv238, 24
  %or240 = or i32 %or236, %shl239
  %163 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr241 = getelementptr inbounds i32, ptr %163, i32 1
  store ptr %incdec.ptr241, ptr %cp.addr, align 8
  store i32 %or240, ptr %163, align 4
  %164 = load i32, ptr %samplesperpixel, align 4
  %165 = load ptr, ptr %pp.addr, align 8
  %idx.ext242 = sext i32 %164 to i64
  %add.ptr243 = getelementptr inbounds i8, ptr %165, i64 %idx.ext242
  store ptr %add.ptr243, ptr %pp.addr, align 8
  br label %sw.bb244

sw.bb244:                                         ; preds = %if.then, %sw.bb226
  %166 = load ptr, ptr %pp.addr, align 8
  %arrayidx245 = getelementptr inbounds i8, ptr %166, i64 0
  %167 = load i8, ptr %arrayidx245, align 1
  %conv246 = zext i8 %167 to i32
  %168 = load ptr, ptr %pp.addr, align 8
  %arrayidx247 = getelementptr inbounds i8, ptr %168, i64 1
  %169 = load i8, ptr %arrayidx247, align 1
  %conv248 = zext i8 %169 to i32
  %shl249 = shl i32 %conv248, 8
  %or250 = or i32 %conv246, %shl249
  %170 = load ptr, ptr %pp.addr, align 8
  %arrayidx251 = getelementptr inbounds i8, ptr %170, i64 2
  %171 = load i8, ptr %arrayidx251, align 1
  %conv252 = zext i8 %171 to i32
  %shl253 = shl i32 %conv252, 16
  %or254 = or i32 %or250, %shl253
  %172 = load ptr, ptr %pp.addr, align 8
  %arrayidx255 = getelementptr inbounds i8, ptr %172, i64 3
  %173 = load i8, ptr %arrayidx255, align 1
  %conv256 = zext i8 %173 to i32
  %shl257 = shl i32 %conv256, 24
  %or258 = or i32 %or254, %shl257
  %174 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr259 = getelementptr inbounds i32, ptr %174, i32 1
  store ptr %incdec.ptr259, ptr %cp.addr, align 8
  store i32 %or258, ptr %174, align 4
  %175 = load i32, ptr %samplesperpixel, align 4
  %176 = load ptr, ptr %pp.addr, align 8
  %idx.ext260 = sext i32 %175 to i64
  %add.ptr261 = getelementptr inbounds i8, ptr %176, i64 %idx.ext260
  store ptr %add.ptr261, ptr %pp.addr, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb244, %if.then
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %for.end
  %177 = load i32, ptr %toskew.addr, align 4
  %178 = load ptr, ptr %cp.addr, align 8
  %idx.ext262 = sext i32 %177 to i64
  %add.ptr263 = getelementptr inbounds i32, ptr %178, i64 %idx.ext262
  store ptr %add.ptr263, ptr %cp.addr, align 8
  %179 = load i32, ptr %fromskew.addr, align 4
  %180 = load ptr, ptr %pp.addr, align 8
  %idx.ext264 = sext i32 %179 to i64
  %add.ptr265 = getelementptr inbounds i8, ptr %180, i64 %idx.ext264
  store ptr %add.ptr265, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBUAcontig8bittile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  %samplesperpixel = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %a = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %samplesperpixel1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 7
  %1 = load i16, ptr %samplesperpixel1, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %samplesperpixel, align 4
  %2 = load i32, ptr %y.addr, align 4
  %3 = load i32, ptr %samplesperpixel, align 4
  %4 = load i32, ptr %fromskew.addr, align 4
  %mul = mul nsw i32 %4, %3
  store i32 %mul, ptr %fromskew.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %5 = load i32, ptr %h.addr, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %h.addr, align 4
  %cmp = icmp ugt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %w.addr, align 4
  store i32 %6, ptr %x.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %7 = load i32, ptr %x.addr, align 4
  %dec3 = add i32 %7, -1
  store i32 %dec3, ptr %x.addr, align 4
  %cmp4 = icmp ugt i32 %7, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 3
  %9 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %9 to i32
  store i32 %conv6, ptr %a, align 4
  %10 = load ptr, ptr %pp.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %11 to i32
  %12 = load i32, ptr %a, align 4
  %mul9 = mul i32 %conv8, %12
  %div = udiv i32 %mul9, 255
  store i32 %div, ptr %r, align 4
  %13 = load ptr, ptr %pp.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %13, i64 1
  %14 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %14 to i32
  %15 = load i32, ptr %a, align 4
  %mul12 = mul i32 %conv11, %15
  %div13 = udiv i32 %mul12, 255
  store i32 %div13, ptr %g, align 4
  %16 = load ptr, ptr %pp.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %16, i64 2
  %17 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %17 to i32
  %18 = load i32, ptr %a, align 4
  %mul16 = mul i32 %conv15, %18
  %div17 = udiv i32 %mul16, 255
  store i32 %div17, ptr %b, align 4
  %19 = load i32, ptr %r, align 4
  %20 = load i32, ptr %g, align 4
  %shl = shl i32 %20, 8
  %or = or i32 %19, %shl
  %21 = load i32, ptr %b, align 4
  %shl18 = shl i32 %21, 16
  %or19 = or i32 %or, %shl18
  %22 = load i32, ptr %a, align 4
  %shl20 = shl i32 %22, 24
  %or21 = or i32 %or19, %shl20
  %23 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %23, i32 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i32 %or21, ptr %23, align 4
  %24 = load i32, ptr %samplesperpixel, align 4
  %25 = load ptr, ptr %pp.addr, align 8
  %idx.ext = sext i32 %24 to i64
  %add.ptr = getelementptr inbounds i8, ptr %25, i64 %idx.ext
  store ptr %add.ptr, ptr %pp.addr, align 8
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %26 = load i32, ptr %toskew.addr, align 4
  %27 = load ptr, ptr %cp.addr, align 8
  %idx.ext22 = sext i32 %26 to i64
  %add.ptr23 = getelementptr inbounds i32, ptr %27, i64 %idx.ext22
  store ptr %add.ptr23, ptr %cp.addr, align 8
  %28 = load i32, ptr %fromskew.addr, align 4
  %29 = load ptr, ptr %pp.addr, align 8
  %idx.ext24 = sext i32 %28 to i64
  %add.ptr25 = getelementptr inbounds i8, ptr %29, i64 %idx.ext24
  store ptr %add.ptr25, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBcontig8bittile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  %samplesperpixel = alloca i32, align 4
  %_x = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %samplesperpixel1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 7
  %1 = load i16, ptr %samplesperpixel1, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %samplesperpixel, align 4
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %y.addr, align 4
  %4 = load i32, ptr %samplesperpixel, align 4
  %5 = load i32, ptr %fromskew.addr, align 4
  %mul = mul nsw i32 %5, %4
  store i32 %mul, ptr %fromskew.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load i32, ptr %h.addr, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %h.addr, align 4
  %cmp = icmp ugt i32 %6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, ptr %w.addr, align 4
  store i32 %7, ptr %_x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %8 = load i32, ptr %_x, align 4
  %cmp3 = icmp uge i32 %8, 8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx, align 1
  %conv5 = zext i8 %10 to i32
  %11 = load ptr, ptr %pp.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %11, i64 1
  %12 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %12 to i32
  %shl = shl i32 %conv7, 8
  %or = or i32 %conv5, %shl
  %13 = load ptr, ptr %pp.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %13, i64 2
  %14 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %14 to i32
  %shl10 = shl i32 %conv9, 16
  %or11 = or i32 %or, %shl10
  %or12 = or i32 %or11, -16777216
  %15 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i32 %or12, ptr %15, align 4
  %16 = load i32, ptr %samplesperpixel, align 4
  %17 = load ptr, ptr %pp.addr, align 8
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 %idx.ext
  store ptr %add.ptr, ptr %pp.addr, align 8
  %18 = load ptr, ptr %pp.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %18, i64 0
  %19 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %19 to i32
  %20 = load ptr, ptr %pp.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %20, i64 1
  %21 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %21 to i32
  %shl17 = shl i32 %conv16, 8
  %or18 = or i32 %conv14, %shl17
  %22 = load ptr, ptr %pp.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %22, i64 2
  %23 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %23 to i32
  %shl21 = shl i32 %conv20, 16
  %or22 = or i32 %or18, %shl21
  %or23 = or i32 %or22, -16777216
  %24 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr24 = getelementptr inbounds i32, ptr %24, i32 1
  store ptr %incdec.ptr24, ptr %cp.addr, align 8
  store i32 %or23, ptr %24, align 4
  %25 = load i32, ptr %samplesperpixel, align 4
  %26 = load ptr, ptr %pp.addr, align 8
  %idx.ext25 = sext i32 %25 to i64
  %add.ptr26 = getelementptr inbounds i8, ptr %26, i64 %idx.ext25
  store ptr %add.ptr26, ptr %pp.addr, align 8
  %27 = load ptr, ptr %pp.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %27, i64 0
  %28 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %28 to i32
  %29 = load ptr, ptr %pp.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %29, i64 1
  %30 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %30 to i32
  %shl31 = shl i32 %conv30, 8
  %or32 = or i32 %conv28, %shl31
  %31 = load ptr, ptr %pp.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %31, i64 2
  %32 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %32 to i32
  %shl35 = shl i32 %conv34, 16
  %or36 = or i32 %or32, %shl35
  %or37 = or i32 %or36, -16777216
  %33 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr38 = getelementptr inbounds i32, ptr %33, i32 1
  store ptr %incdec.ptr38, ptr %cp.addr, align 8
  store i32 %or37, ptr %33, align 4
  %34 = load i32, ptr %samplesperpixel, align 4
  %35 = load ptr, ptr %pp.addr, align 8
  %idx.ext39 = sext i32 %34 to i64
  %add.ptr40 = getelementptr inbounds i8, ptr %35, i64 %idx.ext39
  store ptr %add.ptr40, ptr %pp.addr, align 8
  %36 = load ptr, ptr %pp.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %36, i64 0
  %37 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %37 to i32
  %38 = load ptr, ptr %pp.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %38, i64 1
  %39 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %39 to i32
  %shl45 = shl i32 %conv44, 8
  %or46 = or i32 %conv42, %shl45
  %40 = load ptr, ptr %pp.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %40, i64 2
  %41 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %41 to i32
  %shl49 = shl i32 %conv48, 16
  %or50 = or i32 %or46, %shl49
  %or51 = or i32 %or50, -16777216
  %42 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr52 = getelementptr inbounds i32, ptr %42, i32 1
  store ptr %incdec.ptr52, ptr %cp.addr, align 8
  store i32 %or51, ptr %42, align 4
  %43 = load i32, ptr %samplesperpixel, align 4
  %44 = load ptr, ptr %pp.addr, align 8
  %idx.ext53 = sext i32 %43 to i64
  %add.ptr54 = getelementptr inbounds i8, ptr %44, i64 %idx.ext53
  store ptr %add.ptr54, ptr %pp.addr, align 8
  %45 = load ptr, ptr %pp.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %45, i64 0
  %46 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %46 to i32
  %47 = load ptr, ptr %pp.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, ptr %47, i64 1
  %48 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %48 to i32
  %shl59 = shl i32 %conv58, 8
  %or60 = or i32 %conv56, %shl59
  %49 = load ptr, ptr %pp.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, ptr %49, i64 2
  %50 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %50 to i32
  %shl63 = shl i32 %conv62, 16
  %or64 = or i32 %or60, %shl63
  %or65 = or i32 %or64, -16777216
  %51 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr66 = getelementptr inbounds i32, ptr %51, i32 1
  store ptr %incdec.ptr66, ptr %cp.addr, align 8
  store i32 %or65, ptr %51, align 4
  %52 = load i32, ptr %samplesperpixel, align 4
  %53 = load ptr, ptr %pp.addr, align 8
  %idx.ext67 = sext i32 %52 to i64
  %add.ptr68 = getelementptr inbounds i8, ptr %53, i64 %idx.ext67
  store ptr %add.ptr68, ptr %pp.addr, align 8
  %54 = load ptr, ptr %pp.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, ptr %54, i64 0
  %55 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %55 to i32
  %56 = load ptr, ptr %pp.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, ptr %56, i64 1
  %57 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %57 to i32
  %shl73 = shl i32 %conv72, 8
  %or74 = or i32 %conv70, %shl73
  %58 = load ptr, ptr %pp.addr, align 8
  %arrayidx75 = getelementptr inbounds i8, ptr %58, i64 2
  %59 = load i8, ptr %arrayidx75, align 1
  %conv76 = zext i8 %59 to i32
  %shl77 = shl i32 %conv76, 16
  %or78 = or i32 %or74, %shl77
  %or79 = or i32 %or78, -16777216
  %60 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr80 = getelementptr inbounds i32, ptr %60, i32 1
  store ptr %incdec.ptr80, ptr %cp.addr, align 8
  store i32 %or79, ptr %60, align 4
  %61 = load i32, ptr %samplesperpixel, align 4
  %62 = load ptr, ptr %pp.addr, align 8
  %idx.ext81 = sext i32 %61 to i64
  %add.ptr82 = getelementptr inbounds i8, ptr %62, i64 %idx.ext81
  store ptr %add.ptr82, ptr %pp.addr, align 8
  %63 = load ptr, ptr %pp.addr, align 8
  %arrayidx83 = getelementptr inbounds i8, ptr %63, i64 0
  %64 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %64 to i32
  %65 = load ptr, ptr %pp.addr, align 8
  %arrayidx85 = getelementptr inbounds i8, ptr %65, i64 1
  %66 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %66 to i32
  %shl87 = shl i32 %conv86, 8
  %or88 = or i32 %conv84, %shl87
  %67 = load ptr, ptr %pp.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, ptr %67, i64 2
  %68 = load i8, ptr %arrayidx89, align 1
  %conv90 = zext i8 %68 to i32
  %shl91 = shl i32 %conv90, 16
  %or92 = or i32 %or88, %shl91
  %or93 = or i32 %or92, -16777216
  %69 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr94 = getelementptr inbounds i32, ptr %69, i32 1
  store ptr %incdec.ptr94, ptr %cp.addr, align 8
  store i32 %or93, ptr %69, align 4
  %70 = load i32, ptr %samplesperpixel, align 4
  %71 = load ptr, ptr %pp.addr, align 8
  %idx.ext95 = sext i32 %70 to i64
  %add.ptr96 = getelementptr inbounds i8, ptr %71, i64 %idx.ext95
  store ptr %add.ptr96, ptr %pp.addr, align 8
  %72 = load ptr, ptr %pp.addr, align 8
  %arrayidx97 = getelementptr inbounds i8, ptr %72, i64 0
  %73 = load i8, ptr %arrayidx97, align 1
  %conv98 = zext i8 %73 to i32
  %74 = load ptr, ptr %pp.addr, align 8
  %arrayidx99 = getelementptr inbounds i8, ptr %74, i64 1
  %75 = load i8, ptr %arrayidx99, align 1
  %conv100 = zext i8 %75 to i32
  %shl101 = shl i32 %conv100, 8
  %or102 = or i32 %conv98, %shl101
  %76 = load ptr, ptr %pp.addr, align 8
  %arrayidx103 = getelementptr inbounds i8, ptr %76, i64 2
  %77 = load i8, ptr %arrayidx103, align 1
  %conv104 = zext i8 %77 to i32
  %shl105 = shl i32 %conv104, 16
  %or106 = or i32 %or102, %shl105
  %or107 = or i32 %or106, -16777216
  %78 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr108 = getelementptr inbounds i32, ptr %78, i32 1
  store ptr %incdec.ptr108, ptr %cp.addr, align 8
  store i32 %or107, ptr %78, align 4
  %79 = load i32, ptr %samplesperpixel, align 4
  %80 = load ptr, ptr %pp.addr, align 8
  %idx.ext109 = sext i32 %79 to i64
  %add.ptr110 = getelementptr inbounds i8, ptr %80, i64 %idx.ext109
  store ptr %add.ptr110, ptr %pp.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %81 = load i32, ptr %_x, align 4
  %sub = sub i32 %81, 8
  store i32 %sub, ptr %_x, align 4
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %82 = load i32, ptr %_x, align 4
  %cmp111 = icmp ugt i32 %82, 0
  br i1 %cmp111, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %83 = load i32, ptr %_x, align 4
  switch i32 %83, label %sw.epilog [
    i32 7, label %sw.bb
    i32 6, label %sw.bb127
    i32 5, label %sw.bb142
    i32 4, label %sw.bb157
    i32 3, label %sw.bb172
    i32 2, label %sw.bb187
    i32 1, label %sw.bb202
  ]

sw.bb:                                            ; preds = %if.then
  %84 = load ptr, ptr %pp.addr, align 8
  %arrayidx113 = getelementptr inbounds i8, ptr %84, i64 0
  %85 = load i8, ptr %arrayidx113, align 1
  %conv114 = zext i8 %85 to i32
  %86 = load ptr, ptr %pp.addr, align 8
  %arrayidx115 = getelementptr inbounds i8, ptr %86, i64 1
  %87 = load i8, ptr %arrayidx115, align 1
  %conv116 = zext i8 %87 to i32
  %shl117 = shl i32 %conv116, 8
  %or118 = or i32 %conv114, %shl117
  %88 = load ptr, ptr %pp.addr, align 8
  %arrayidx119 = getelementptr inbounds i8, ptr %88, i64 2
  %89 = load i8, ptr %arrayidx119, align 1
  %conv120 = zext i8 %89 to i32
  %shl121 = shl i32 %conv120, 16
  %or122 = or i32 %or118, %shl121
  %or123 = or i32 %or122, -16777216
  %90 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr124 = getelementptr inbounds i32, ptr %90, i32 1
  store ptr %incdec.ptr124, ptr %cp.addr, align 8
  store i32 %or123, ptr %90, align 4
  %91 = load i32, ptr %samplesperpixel, align 4
  %92 = load ptr, ptr %pp.addr, align 8
  %idx.ext125 = sext i32 %91 to i64
  %add.ptr126 = getelementptr inbounds i8, ptr %92, i64 %idx.ext125
  store ptr %add.ptr126, ptr %pp.addr, align 8
  br label %sw.bb127

sw.bb127:                                         ; preds = %if.then, %sw.bb
  %93 = load ptr, ptr %pp.addr, align 8
  %arrayidx128 = getelementptr inbounds i8, ptr %93, i64 0
  %94 = load i8, ptr %arrayidx128, align 1
  %conv129 = zext i8 %94 to i32
  %95 = load ptr, ptr %pp.addr, align 8
  %arrayidx130 = getelementptr inbounds i8, ptr %95, i64 1
  %96 = load i8, ptr %arrayidx130, align 1
  %conv131 = zext i8 %96 to i32
  %shl132 = shl i32 %conv131, 8
  %or133 = or i32 %conv129, %shl132
  %97 = load ptr, ptr %pp.addr, align 8
  %arrayidx134 = getelementptr inbounds i8, ptr %97, i64 2
  %98 = load i8, ptr %arrayidx134, align 1
  %conv135 = zext i8 %98 to i32
  %shl136 = shl i32 %conv135, 16
  %or137 = or i32 %or133, %shl136
  %or138 = or i32 %or137, -16777216
  %99 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr139 = getelementptr inbounds i32, ptr %99, i32 1
  store ptr %incdec.ptr139, ptr %cp.addr, align 8
  store i32 %or138, ptr %99, align 4
  %100 = load i32, ptr %samplesperpixel, align 4
  %101 = load ptr, ptr %pp.addr, align 8
  %idx.ext140 = sext i32 %100 to i64
  %add.ptr141 = getelementptr inbounds i8, ptr %101, i64 %idx.ext140
  store ptr %add.ptr141, ptr %pp.addr, align 8
  br label %sw.bb142

sw.bb142:                                         ; preds = %if.then, %sw.bb127
  %102 = load ptr, ptr %pp.addr, align 8
  %arrayidx143 = getelementptr inbounds i8, ptr %102, i64 0
  %103 = load i8, ptr %arrayidx143, align 1
  %conv144 = zext i8 %103 to i32
  %104 = load ptr, ptr %pp.addr, align 8
  %arrayidx145 = getelementptr inbounds i8, ptr %104, i64 1
  %105 = load i8, ptr %arrayidx145, align 1
  %conv146 = zext i8 %105 to i32
  %shl147 = shl i32 %conv146, 8
  %or148 = or i32 %conv144, %shl147
  %106 = load ptr, ptr %pp.addr, align 8
  %arrayidx149 = getelementptr inbounds i8, ptr %106, i64 2
  %107 = load i8, ptr %arrayidx149, align 1
  %conv150 = zext i8 %107 to i32
  %shl151 = shl i32 %conv150, 16
  %or152 = or i32 %or148, %shl151
  %or153 = or i32 %or152, -16777216
  %108 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr154 = getelementptr inbounds i32, ptr %108, i32 1
  store ptr %incdec.ptr154, ptr %cp.addr, align 8
  store i32 %or153, ptr %108, align 4
  %109 = load i32, ptr %samplesperpixel, align 4
  %110 = load ptr, ptr %pp.addr, align 8
  %idx.ext155 = sext i32 %109 to i64
  %add.ptr156 = getelementptr inbounds i8, ptr %110, i64 %idx.ext155
  store ptr %add.ptr156, ptr %pp.addr, align 8
  br label %sw.bb157

sw.bb157:                                         ; preds = %if.then, %sw.bb142
  %111 = load ptr, ptr %pp.addr, align 8
  %arrayidx158 = getelementptr inbounds i8, ptr %111, i64 0
  %112 = load i8, ptr %arrayidx158, align 1
  %conv159 = zext i8 %112 to i32
  %113 = load ptr, ptr %pp.addr, align 8
  %arrayidx160 = getelementptr inbounds i8, ptr %113, i64 1
  %114 = load i8, ptr %arrayidx160, align 1
  %conv161 = zext i8 %114 to i32
  %shl162 = shl i32 %conv161, 8
  %or163 = or i32 %conv159, %shl162
  %115 = load ptr, ptr %pp.addr, align 8
  %arrayidx164 = getelementptr inbounds i8, ptr %115, i64 2
  %116 = load i8, ptr %arrayidx164, align 1
  %conv165 = zext i8 %116 to i32
  %shl166 = shl i32 %conv165, 16
  %or167 = or i32 %or163, %shl166
  %or168 = or i32 %or167, -16777216
  %117 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr169 = getelementptr inbounds i32, ptr %117, i32 1
  store ptr %incdec.ptr169, ptr %cp.addr, align 8
  store i32 %or168, ptr %117, align 4
  %118 = load i32, ptr %samplesperpixel, align 4
  %119 = load ptr, ptr %pp.addr, align 8
  %idx.ext170 = sext i32 %118 to i64
  %add.ptr171 = getelementptr inbounds i8, ptr %119, i64 %idx.ext170
  store ptr %add.ptr171, ptr %pp.addr, align 8
  br label %sw.bb172

sw.bb172:                                         ; preds = %if.then, %sw.bb157
  %120 = load ptr, ptr %pp.addr, align 8
  %arrayidx173 = getelementptr inbounds i8, ptr %120, i64 0
  %121 = load i8, ptr %arrayidx173, align 1
  %conv174 = zext i8 %121 to i32
  %122 = load ptr, ptr %pp.addr, align 8
  %arrayidx175 = getelementptr inbounds i8, ptr %122, i64 1
  %123 = load i8, ptr %arrayidx175, align 1
  %conv176 = zext i8 %123 to i32
  %shl177 = shl i32 %conv176, 8
  %or178 = or i32 %conv174, %shl177
  %124 = load ptr, ptr %pp.addr, align 8
  %arrayidx179 = getelementptr inbounds i8, ptr %124, i64 2
  %125 = load i8, ptr %arrayidx179, align 1
  %conv180 = zext i8 %125 to i32
  %shl181 = shl i32 %conv180, 16
  %or182 = or i32 %or178, %shl181
  %or183 = or i32 %or182, -16777216
  %126 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr184 = getelementptr inbounds i32, ptr %126, i32 1
  store ptr %incdec.ptr184, ptr %cp.addr, align 8
  store i32 %or183, ptr %126, align 4
  %127 = load i32, ptr %samplesperpixel, align 4
  %128 = load ptr, ptr %pp.addr, align 8
  %idx.ext185 = sext i32 %127 to i64
  %add.ptr186 = getelementptr inbounds i8, ptr %128, i64 %idx.ext185
  store ptr %add.ptr186, ptr %pp.addr, align 8
  br label %sw.bb187

sw.bb187:                                         ; preds = %if.then, %sw.bb172
  %129 = load ptr, ptr %pp.addr, align 8
  %arrayidx188 = getelementptr inbounds i8, ptr %129, i64 0
  %130 = load i8, ptr %arrayidx188, align 1
  %conv189 = zext i8 %130 to i32
  %131 = load ptr, ptr %pp.addr, align 8
  %arrayidx190 = getelementptr inbounds i8, ptr %131, i64 1
  %132 = load i8, ptr %arrayidx190, align 1
  %conv191 = zext i8 %132 to i32
  %shl192 = shl i32 %conv191, 8
  %or193 = or i32 %conv189, %shl192
  %133 = load ptr, ptr %pp.addr, align 8
  %arrayidx194 = getelementptr inbounds i8, ptr %133, i64 2
  %134 = load i8, ptr %arrayidx194, align 1
  %conv195 = zext i8 %134 to i32
  %shl196 = shl i32 %conv195, 16
  %or197 = or i32 %or193, %shl196
  %or198 = or i32 %or197, -16777216
  %135 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr199 = getelementptr inbounds i32, ptr %135, i32 1
  store ptr %incdec.ptr199, ptr %cp.addr, align 8
  store i32 %or198, ptr %135, align 4
  %136 = load i32, ptr %samplesperpixel, align 4
  %137 = load ptr, ptr %pp.addr, align 8
  %idx.ext200 = sext i32 %136 to i64
  %add.ptr201 = getelementptr inbounds i8, ptr %137, i64 %idx.ext200
  store ptr %add.ptr201, ptr %pp.addr, align 8
  br label %sw.bb202

sw.bb202:                                         ; preds = %if.then, %sw.bb187
  %138 = load ptr, ptr %pp.addr, align 8
  %arrayidx203 = getelementptr inbounds i8, ptr %138, i64 0
  %139 = load i8, ptr %arrayidx203, align 1
  %conv204 = zext i8 %139 to i32
  %140 = load ptr, ptr %pp.addr, align 8
  %arrayidx205 = getelementptr inbounds i8, ptr %140, i64 1
  %141 = load i8, ptr %arrayidx205, align 1
  %conv206 = zext i8 %141 to i32
  %shl207 = shl i32 %conv206, 8
  %or208 = or i32 %conv204, %shl207
  %142 = load ptr, ptr %pp.addr, align 8
  %arrayidx209 = getelementptr inbounds i8, ptr %142, i64 2
  %143 = load i8, ptr %arrayidx209, align 1
  %conv210 = zext i8 %143 to i32
  %shl211 = shl i32 %conv210, 16
  %or212 = or i32 %or208, %shl211
  %or213 = or i32 %or212, -16777216
  %144 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr214 = getelementptr inbounds i32, ptr %144, i32 1
  store ptr %incdec.ptr214, ptr %cp.addr, align 8
  store i32 %or213, ptr %144, align 4
  %145 = load i32, ptr %samplesperpixel, align 4
  %146 = load ptr, ptr %pp.addr, align 8
  %idx.ext215 = sext i32 %145 to i64
  %add.ptr216 = getelementptr inbounds i8, ptr %146, i64 %idx.ext215
  store ptr %add.ptr216, ptr %pp.addr, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb202, %if.then
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %for.end
  %147 = load i32, ptr %toskew.addr, align 4
  %148 = load ptr, ptr %cp.addr, align 8
  %idx.ext217 = sext i32 %147 to i64
  %add.ptr218 = getelementptr inbounds i32, ptr %148, i64 %idx.ext217
  store ptr %add.ptr218, ptr %cp.addr, align 8
  %149 = load i32, ptr %fromskew.addr, align 4
  %150 = load ptr, ptr %pp.addr, align 8
  %idx.ext219 = sext i32 %149 to i64
  %add.ptr220 = getelementptr inbounds i8, ptr %150, i64 %idx.ext219
  store ptr %add.ptr220, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBcontig8bitMaptile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  %Map = alloca ptr, align 8
  %samplesperpixel = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
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
  %4 = load i32, ptr %y.addr, align 4
  %5 = load i32, ptr %samplesperpixel, align 4
  %6 = load i32, ptr %fromskew.addr, align 4
  %mul = mul nsw i32 %6, %5
  store i32 %mul, ptr %fromskew.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %7 = load i32, ptr %h.addr, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %h.addr, align 4
  %cmp = icmp ugt i32 %7, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, ptr %w.addr, align 4
  store i32 %8, ptr %x.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %9 = load i32, ptr %x.addr, align 4
  %dec4 = add i32 %9, -1
  store i32 %dec4, ptr %x.addr, align 4
  %cmp5 = icmp ugt i32 %9, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %Map, align 8
  %11 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %11, i64 0
  %12 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %12 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %10, i64 %idxprom
  %13 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %13 to i32
  %14 = load ptr, ptr %Map, align 8
  %15 = load ptr, ptr %pp.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %15, i64 1
  %16 = load i8, ptr %arrayidx9, align 1
  %idxprom10 = zext i8 %16 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %14, i64 %idxprom10
  %17 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %17 to i32
  %shl = shl i32 %conv12, 8
  %or = or i32 %conv8, %shl
  %18 = load ptr, ptr %Map, align 8
  %19 = load ptr, ptr %pp.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %19, i64 2
  %20 = load i8, ptr %arrayidx13, align 1
  %idxprom14 = zext i8 %20 to i64
  %arrayidx15 = getelementptr inbounds i8, ptr %18, i64 %idxprom14
  %21 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %21 to i32
  %shl17 = shl i32 %conv16, 16
  %or18 = or i32 %or, %shl17
  %or19 = or i32 %or18, -16777216
  %22 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %22, i32 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i32 %or19, ptr %22, align 4
  %23 = load i32, ptr %samplesperpixel, align 4
  %24 = load ptr, ptr %pp.addr, align 8
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, ptr %24, i64 %idx.ext
  store ptr %add.ptr, ptr %pp.addr, align 8
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %25 = load i32, ptr %fromskew.addr, align 4
  %26 = load ptr, ptr %pp.addr, align 8
  %idx.ext20 = sext i32 %25 to i64
  %add.ptr21 = getelementptr inbounds i8, ptr %26, i64 %idx.ext20
  store ptr %add.ptr21, ptr %pp.addr, align 8
  %27 = load i32, ptr %toskew.addr, align 4
  %28 = load ptr, ptr %cp.addr, align 8
  %idx.ext22 = sext i32 %27 to i64
  %add.ptr23 = getelementptr inbounds i32, ptr %28, i64 %idx.ext22
  store ptr %add.ptr23, ptr %cp.addr, align 8
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBcontig16bittile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  %samplesperpixel = alloca i32, align 4
  %wp = alloca ptr, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %samplesperpixel1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 7
  %1 = load i16, ptr %samplesperpixel1, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %samplesperpixel, align 4
  %2 = load ptr, ptr %pp.addr, align 8
  store ptr %2, ptr %wp, align 8
  %3 = load i32, ptr %y.addr, align 4
  %4 = load i32, ptr %samplesperpixel, align 4
  %5 = load i32, ptr %fromskew.addr, align 4
  %mul = mul nsw i32 %5, %4
  store i32 %mul, ptr %fromskew.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %6 = load i32, ptr %h.addr, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %h.addr, align 4
  %cmp = icmp ugt i32 %6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, ptr %w.addr, align 4
  store i32 %7, ptr %x.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %8 = load i32, ptr %x.addr, align 4
  %dec3 = add i32 %8, -1
  store i32 %dec3, ptr %x.addr, align 4
  %cmp4 = icmp ugt i32 %8, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %wp, align 8
  %arrayidx = getelementptr inbounds i16, ptr %9, i64 0
  %10 = load i16, ptr %arrayidx, align 2
  %conv6 = zext i16 %10 to i32
  %shr = ashr i32 %conv6, 8
  %and = and i32 %shr, 255
  %11 = load ptr, ptr %wp, align 8
  %arrayidx7 = getelementptr inbounds i16, ptr %11, i64 1
  %12 = load i16, ptr %arrayidx7, align 2
  %conv8 = zext i16 %12 to i32
  %shr9 = ashr i32 %conv8, 8
  %and10 = and i32 %shr9, 255
  %shl = shl i32 %and10, 8
  %or = or i32 %and, %shl
  %13 = load ptr, ptr %wp, align 8
  %arrayidx11 = getelementptr inbounds i16, ptr %13, i64 2
  %14 = load i16, ptr %arrayidx11, align 2
  %conv12 = zext i16 %14 to i32
  %shr13 = ashr i32 %conv12, 8
  %and14 = and i32 %shr13, 255
  %shl15 = shl i32 %and14, 16
  %or16 = or i32 %or, %shl15
  %or17 = or i32 %or16, -16777216
  %15 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i32 %or17, ptr %15, align 4
  %16 = load i32, ptr %samplesperpixel, align 4
  %17 = load ptr, ptr %wp, align 8
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds i16, ptr %17, i64 %idx.ext
  store ptr %add.ptr, ptr %wp, align 8
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  %18 = load i32, ptr %toskew.addr, align 4
  %19 = load ptr, ptr %cp.addr, align 8
  %idx.ext18 = sext i32 %18 to i64
  %add.ptr19 = getelementptr inbounds i32, ptr %19, i64 %idx.ext18
  store ptr %add.ptr19, ptr %cp.addr, align 8
  %20 = load i32, ptr %fromskew.addr, align 4
  %21 = load ptr, ptr %wp, align 8
  %idx.ext20 = sext i32 %20 to i64
  %add.ptr21 = getelementptr inbounds i16, ptr %21, i64 %idx.ext20
  store ptr %add.ptr21, ptr %wp, align 8
  br label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBAAcontig16bittile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  %samplesperpixel = alloca i32, align 4
  %wp = alloca ptr, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %samplesperpixel1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 7
  %1 = load i16, ptr %samplesperpixel1, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %samplesperpixel, align 4
  %2 = load ptr, ptr %pp.addr, align 8
  store ptr %2, ptr %wp, align 8
  %3 = load i32, ptr %y.addr, align 4
  %4 = load i32, ptr %samplesperpixel, align 4
  %5 = load i32, ptr %fromskew.addr, align 4
  %mul = mul nsw i32 %5, %4
  store i32 %mul, ptr %fromskew.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %6 = load i32, ptr %h.addr, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %h.addr, align 4
  %cmp = icmp ugt i32 %6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, ptr %w.addr, align 4
  store i32 %7, ptr %x.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %8 = load i32, ptr %x.addr, align 4
  %dec3 = add i32 %8, -1
  store i32 %dec3, ptr %x.addr, align 4
  %cmp4 = icmp ugt i32 %8, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %wp, align 8
  %arrayidx = getelementptr inbounds i16, ptr %9, i64 0
  %10 = load i16, ptr %arrayidx, align 2
  %conv6 = zext i16 %10 to i32
  %shr = ashr i32 %conv6, 8
  %and = and i32 %shr, 255
  %11 = load ptr, ptr %wp, align 8
  %arrayidx7 = getelementptr inbounds i16, ptr %11, i64 1
  %12 = load i16, ptr %arrayidx7, align 2
  %conv8 = zext i16 %12 to i32
  %shr9 = ashr i32 %conv8, 8
  %and10 = and i32 %shr9, 255
  %shl = shl i32 %and10, 8
  %or = or i32 %and, %shl
  %13 = load ptr, ptr %wp, align 8
  %arrayidx11 = getelementptr inbounds i16, ptr %13, i64 2
  %14 = load i16, ptr %arrayidx11, align 2
  %conv12 = zext i16 %14 to i32
  %shr13 = ashr i32 %conv12, 8
  %and14 = and i32 %shr13, 255
  %shl15 = shl i32 %and14, 16
  %or16 = or i32 %or, %shl15
  %15 = load ptr, ptr %wp, align 8
  %arrayidx17 = getelementptr inbounds i16, ptr %15, i64 3
  %16 = load i16, ptr %arrayidx17, align 2
  %conv18 = zext i16 %16 to i32
  %shr19 = ashr i32 %conv18, 8
  %and20 = and i32 %shr19, 255
  %shl21 = shl i32 %and20, 24
  %or22 = or i32 %or16, %shl21
  %17 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %17, i32 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i32 %or22, ptr %17, align 4
  %18 = load i32, ptr %samplesperpixel, align 4
  %19 = load ptr, ptr %wp, align 8
  %idx.ext = sext i32 %18 to i64
  %add.ptr = getelementptr inbounds i16, ptr %19, i64 %idx.ext
  store ptr %add.ptr, ptr %wp, align 8
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %for.cond
  %20 = load i32, ptr %toskew.addr, align 4
  %21 = load ptr, ptr %cp.addr, align 8
  %idx.ext23 = sext i32 %20 to i64
  %add.ptr24 = getelementptr inbounds i32, ptr %21, i64 %idx.ext23
  store ptr %add.ptr24, ptr %cp.addr, align 8
  %22 = load i32, ptr %fromskew.addr, align 4
  %23 = load ptr, ptr %wp, align 8
  %idx.ext25 = sext i32 %22 to i64
  %add.ptr26 = getelementptr inbounds i16, ptr %23, i64 %idx.ext25
  store ptr %add.ptr26, ptr %wp, align 8
  br label %while.cond, !llvm.loop !26

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBUAcontig16bittile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  %samplesperpixel = alloca i32, align 4
  %wp = alloca ptr, align 8
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %a = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %samplesperpixel1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 7
  %1 = load i16, ptr %samplesperpixel1, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %samplesperpixel, align 4
  %2 = load ptr, ptr %pp.addr, align 8
  store ptr %2, ptr %wp, align 8
  %3 = load i32, ptr %y.addr, align 4
  %4 = load i32, ptr %samplesperpixel, align 4
  %5 = load i32, ptr %fromskew.addr, align 4
  %mul = mul nsw i32 %5, %4
  store i32 %mul, ptr %fromskew.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %6 = load i32, ptr %h.addr, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %h.addr, align 4
  %cmp = icmp ugt i32 %6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, ptr %w.addr, align 4
  store i32 %7, ptr %x.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %8 = load i32, ptr %x.addr, align 4
  %dec3 = add i32 %8, -1
  store i32 %dec3, ptr %x.addr, align 4
  %cmp4 = icmp ugt i32 %8, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %wp, align 8
  %arrayidx = getelementptr inbounds i16, ptr %9, i64 3
  %10 = load i16, ptr %arrayidx, align 2
  %conv6 = zext i16 %10 to i32
  %shr = ashr i32 %conv6, 4
  store i32 %shr, ptr %a, align 4
  %11 = load ptr, ptr %wp, align 8
  %arrayidx7 = getelementptr inbounds i16, ptr %11, i64 0
  %12 = load i16, ptr %arrayidx7, align 2
  %conv8 = zext i16 %12 to i32
  %13 = load i32, ptr %a, align 4
  %mul9 = mul i32 %conv8, %13
  %div = udiv i32 %mul9, 69375
  store i32 %div, ptr %r, align 4
  %14 = load ptr, ptr %wp, align 8
  %arrayidx10 = getelementptr inbounds i16, ptr %14, i64 1
  %15 = load i16, ptr %arrayidx10, align 2
  %conv11 = zext i16 %15 to i32
  %16 = load i32, ptr %a, align 4
  %mul12 = mul i32 %conv11, %16
  %div13 = udiv i32 %mul12, 69375
  store i32 %div13, ptr %g, align 4
  %17 = load ptr, ptr %wp, align 8
  %arrayidx14 = getelementptr inbounds i16, ptr %17, i64 2
  %18 = load i16, ptr %arrayidx14, align 2
  %conv15 = zext i16 %18 to i32
  %19 = load i32, ptr %a, align 4
  %mul16 = mul i32 %conv15, %19
  %div17 = udiv i32 %mul16, 69375
  store i32 %div17, ptr %b, align 4
  %20 = load i32, ptr %r, align 4
  %21 = load i32, ptr %g, align 4
  %shl = shl i32 %21, 8
  %or = or i32 %20, %shl
  %22 = load i32, ptr %b, align 4
  %shl18 = shl i32 %22, 16
  %or19 = or i32 %or, %shl18
  %23 = load i32, ptr %a, align 4
  %shl20 = shl i32 %23, 24
  %or21 = or i32 %or19, %shl20
  %24 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i32 %or21, ptr %24, align 4
  %25 = load i32, ptr %samplesperpixel, align 4
  %26 = load ptr, ptr %wp, align 8
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds i16, ptr %26, i64 %idx.ext
  store ptr %add.ptr, ptr %wp, align 8
  br label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  %27 = load i32, ptr %toskew.addr, align 4
  %28 = load ptr, ptr %cp.addr, align 8
  %idx.ext22 = sext i32 %27 to i64
  %add.ptr23 = getelementptr inbounds i32, ptr %28, i64 %idx.ext22
  store ptr %add.ptr23, ptr %cp.addr, align 8
  %29 = load i32, ptr %fromskew.addr, align 4
  %30 = load ptr, ptr %wp, align 8
  %idx.ext24 = sext i32 %29 to i64
  %add.ptr25 = getelementptr inbounds i16, ptr %30, i64 %idx.ext24
  store ptr %add.ptr25, ptr %wp, align 8
  br label %while.cond, !llvm.loop !28

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBcontig8bitCMYKtile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  %samplesperpixel = alloca i32, align 4
  %r = alloca i16, align 2
  %g = alloca i16, align 2
  %b = alloca i16, align 2
  %k = alloca i16, align 2
  %_x = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %samplesperpixel1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 7
  %1 = load i16, ptr %samplesperpixel1, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %samplesperpixel, align 4
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %y.addr, align 4
  %4 = load i32, ptr %samplesperpixel, align 4
  %5 = load i32, ptr %fromskew.addr, align 4
  %mul = mul nsw i32 %5, %4
  store i32 %mul, ptr %fromskew.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load i32, ptr %h.addr, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %h.addr, align 4
  %cmp = icmp ugt i32 %6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, ptr %w.addr, align 4
  store i32 %7, ptr %_x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %8 = load i32, ptr %_x, align 4
  %cmp3 = icmp uge i32 %8, 8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 3
  %10 = load i8, ptr %arrayidx, align 1
  %conv5 = zext i8 %10 to i32
  %sub = sub nsw i32 255, %conv5
  %conv6 = trunc i32 %sub to i16
  store i16 %conv6, ptr %k, align 2
  %11 = load i16, ptr %k, align 2
  %conv7 = zext i16 %11 to i32
  %12 = load ptr, ptr %pp.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %13 to i32
  %sub10 = sub nsw i32 255, %conv9
  %mul11 = mul nsw i32 %conv7, %sub10
  %div = sdiv i32 %mul11, 255
  %conv12 = trunc i32 %div to i16
  store i16 %conv12, ptr %r, align 2
  %14 = load i16, ptr %k, align 2
  %conv13 = zext i16 %14 to i32
  %15 = load ptr, ptr %pp.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %15, i64 1
  %16 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %16 to i32
  %sub16 = sub nsw i32 255, %conv15
  %mul17 = mul nsw i32 %conv13, %sub16
  %div18 = sdiv i32 %mul17, 255
  %conv19 = trunc i32 %div18 to i16
  store i16 %conv19, ptr %g, align 2
  %17 = load i16, ptr %k, align 2
  %conv20 = zext i16 %17 to i32
  %18 = load ptr, ptr %pp.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %18, i64 2
  %19 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %19 to i32
  %sub23 = sub nsw i32 255, %conv22
  %mul24 = mul nsw i32 %conv20, %sub23
  %div25 = sdiv i32 %mul24, 255
  %conv26 = trunc i32 %div25 to i16
  store i16 %conv26, ptr %b, align 2
  %20 = load i16, ptr %r, align 2
  %conv27 = zext i16 %20 to i32
  %21 = load i16, ptr %g, align 2
  %conv28 = zext i16 %21 to i32
  %shl = shl i32 %conv28, 8
  %or = or i32 %conv27, %shl
  %22 = load i16, ptr %b, align 2
  %conv29 = zext i16 %22 to i32
  %shl30 = shl i32 %conv29, 16
  %or31 = or i32 %or, %shl30
  %or32 = or i32 %or31, -16777216
  %23 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %23, i32 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i32 %or32, ptr %23, align 4
  %24 = load i32, ptr %samplesperpixel, align 4
  %25 = load ptr, ptr %pp.addr, align 8
  %idx.ext = sext i32 %24 to i64
  %add.ptr = getelementptr inbounds i8, ptr %25, i64 %idx.ext
  store ptr %add.ptr, ptr %pp.addr, align 8
  %26 = load ptr, ptr %pp.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %26, i64 3
  %27 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %27 to i32
  %sub35 = sub nsw i32 255, %conv34
  %conv36 = trunc i32 %sub35 to i16
  store i16 %conv36, ptr %k, align 2
  %28 = load i16, ptr %k, align 2
  %conv37 = zext i16 %28 to i32
  %29 = load ptr, ptr %pp.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %29, i64 0
  %30 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %30 to i32
  %sub40 = sub nsw i32 255, %conv39
  %mul41 = mul nsw i32 %conv37, %sub40
  %div42 = sdiv i32 %mul41, 255
  %conv43 = trunc i32 %div42 to i16
  store i16 %conv43, ptr %r, align 2
  %31 = load i16, ptr %k, align 2
  %conv44 = zext i16 %31 to i32
  %32 = load ptr, ptr %pp.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %32, i64 1
  %33 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %33 to i32
  %sub47 = sub nsw i32 255, %conv46
  %mul48 = mul nsw i32 %conv44, %sub47
  %div49 = sdiv i32 %mul48, 255
  %conv50 = trunc i32 %div49 to i16
  store i16 %conv50, ptr %g, align 2
  %34 = load i16, ptr %k, align 2
  %conv51 = zext i16 %34 to i32
  %35 = load ptr, ptr %pp.addr, align 8
  %arrayidx52 = getelementptr inbounds i8, ptr %35, i64 2
  %36 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %36 to i32
  %sub54 = sub nsw i32 255, %conv53
  %mul55 = mul nsw i32 %conv51, %sub54
  %div56 = sdiv i32 %mul55, 255
  %conv57 = trunc i32 %div56 to i16
  store i16 %conv57, ptr %b, align 2
  %37 = load i16, ptr %r, align 2
  %conv58 = zext i16 %37 to i32
  %38 = load i16, ptr %g, align 2
  %conv59 = zext i16 %38 to i32
  %shl60 = shl i32 %conv59, 8
  %or61 = or i32 %conv58, %shl60
  %39 = load i16, ptr %b, align 2
  %conv62 = zext i16 %39 to i32
  %shl63 = shl i32 %conv62, 16
  %or64 = or i32 %or61, %shl63
  %or65 = or i32 %or64, -16777216
  %40 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr66 = getelementptr inbounds i32, ptr %40, i32 1
  store ptr %incdec.ptr66, ptr %cp.addr, align 8
  store i32 %or65, ptr %40, align 4
  %41 = load i32, ptr %samplesperpixel, align 4
  %42 = load ptr, ptr %pp.addr, align 8
  %idx.ext67 = sext i32 %41 to i64
  %add.ptr68 = getelementptr inbounds i8, ptr %42, i64 %idx.ext67
  store ptr %add.ptr68, ptr %pp.addr, align 8
  %43 = load ptr, ptr %pp.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, ptr %43, i64 3
  %44 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %44 to i32
  %sub71 = sub nsw i32 255, %conv70
  %conv72 = trunc i32 %sub71 to i16
  store i16 %conv72, ptr %k, align 2
  %45 = load i16, ptr %k, align 2
  %conv73 = zext i16 %45 to i32
  %46 = load ptr, ptr %pp.addr, align 8
  %arrayidx74 = getelementptr inbounds i8, ptr %46, i64 0
  %47 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %47 to i32
  %sub76 = sub nsw i32 255, %conv75
  %mul77 = mul nsw i32 %conv73, %sub76
  %div78 = sdiv i32 %mul77, 255
  %conv79 = trunc i32 %div78 to i16
  store i16 %conv79, ptr %r, align 2
  %48 = load i16, ptr %k, align 2
  %conv80 = zext i16 %48 to i32
  %49 = load ptr, ptr %pp.addr, align 8
  %arrayidx81 = getelementptr inbounds i8, ptr %49, i64 1
  %50 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %50 to i32
  %sub83 = sub nsw i32 255, %conv82
  %mul84 = mul nsw i32 %conv80, %sub83
  %div85 = sdiv i32 %mul84, 255
  %conv86 = trunc i32 %div85 to i16
  store i16 %conv86, ptr %g, align 2
  %51 = load i16, ptr %k, align 2
  %conv87 = zext i16 %51 to i32
  %52 = load ptr, ptr %pp.addr, align 8
  %arrayidx88 = getelementptr inbounds i8, ptr %52, i64 2
  %53 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %53 to i32
  %sub90 = sub nsw i32 255, %conv89
  %mul91 = mul nsw i32 %conv87, %sub90
  %div92 = sdiv i32 %mul91, 255
  %conv93 = trunc i32 %div92 to i16
  store i16 %conv93, ptr %b, align 2
  %54 = load i16, ptr %r, align 2
  %conv94 = zext i16 %54 to i32
  %55 = load i16, ptr %g, align 2
  %conv95 = zext i16 %55 to i32
  %shl96 = shl i32 %conv95, 8
  %or97 = or i32 %conv94, %shl96
  %56 = load i16, ptr %b, align 2
  %conv98 = zext i16 %56 to i32
  %shl99 = shl i32 %conv98, 16
  %or100 = or i32 %or97, %shl99
  %or101 = or i32 %or100, -16777216
  %57 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr102 = getelementptr inbounds i32, ptr %57, i32 1
  store ptr %incdec.ptr102, ptr %cp.addr, align 8
  store i32 %or101, ptr %57, align 4
  %58 = load i32, ptr %samplesperpixel, align 4
  %59 = load ptr, ptr %pp.addr, align 8
  %idx.ext103 = sext i32 %58 to i64
  %add.ptr104 = getelementptr inbounds i8, ptr %59, i64 %idx.ext103
  store ptr %add.ptr104, ptr %pp.addr, align 8
  %60 = load ptr, ptr %pp.addr, align 8
  %arrayidx105 = getelementptr inbounds i8, ptr %60, i64 3
  %61 = load i8, ptr %arrayidx105, align 1
  %conv106 = zext i8 %61 to i32
  %sub107 = sub nsw i32 255, %conv106
  %conv108 = trunc i32 %sub107 to i16
  store i16 %conv108, ptr %k, align 2
  %62 = load i16, ptr %k, align 2
  %conv109 = zext i16 %62 to i32
  %63 = load ptr, ptr %pp.addr, align 8
  %arrayidx110 = getelementptr inbounds i8, ptr %63, i64 0
  %64 = load i8, ptr %arrayidx110, align 1
  %conv111 = zext i8 %64 to i32
  %sub112 = sub nsw i32 255, %conv111
  %mul113 = mul nsw i32 %conv109, %sub112
  %div114 = sdiv i32 %mul113, 255
  %conv115 = trunc i32 %div114 to i16
  store i16 %conv115, ptr %r, align 2
  %65 = load i16, ptr %k, align 2
  %conv116 = zext i16 %65 to i32
  %66 = load ptr, ptr %pp.addr, align 8
  %arrayidx117 = getelementptr inbounds i8, ptr %66, i64 1
  %67 = load i8, ptr %arrayidx117, align 1
  %conv118 = zext i8 %67 to i32
  %sub119 = sub nsw i32 255, %conv118
  %mul120 = mul nsw i32 %conv116, %sub119
  %div121 = sdiv i32 %mul120, 255
  %conv122 = trunc i32 %div121 to i16
  store i16 %conv122, ptr %g, align 2
  %68 = load i16, ptr %k, align 2
  %conv123 = zext i16 %68 to i32
  %69 = load ptr, ptr %pp.addr, align 8
  %arrayidx124 = getelementptr inbounds i8, ptr %69, i64 2
  %70 = load i8, ptr %arrayidx124, align 1
  %conv125 = zext i8 %70 to i32
  %sub126 = sub nsw i32 255, %conv125
  %mul127 = mul nsw i32 %conv123, %sub126
  %div128 = sdiv i32 %mul127, 255
  %conv129 = trunc i32 %div128 to i16
  store i16 %conv129, ptr %b, align 2
  %71 = load i16, ptr %r, align 2
  %conv130 = zext i16 %71 to i32
  %72 = load i16, ptr %g, align 2
  %conv131 = zext i16 %72 to i32
  %shl132 = shl i32 %conv131, 8
  %or133 = or i32 %conv130, %shl132
  %73 = load i16, ptr %b, align 2
  %conv134 = zext i16 %73 to i32
  %shl135 = shl i32 %conv134, 16
  %or136 = or i32 %or133, %shl135
  %or137 = or i32 %or136, -16777216
  %74 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr138 = getelementptr inbounds i32, ptr %74, i32 1
  store ptr %incdec.ptr138, ptr %cp.addr, align 8
  store i32 %or137, ptr %74, align 4
  %75 = load i32, ptr %samplesperpixel, align 4
  %76 = load ptr, ptr %pp.addr, align 8
  %idx.ext139 = sext i32 %75 to i64
  %add.ptr140 = getelementptr inbounds i8, ptr %76, i64 %idx.ext139
  store ptr %add.ptr140, ptr %pp.addr, align 8
  %77 = load ptr, ptr %pp.addr, align 8
  %arrayidx141 = getelementptr inbounds i8, ptr %77, i64 3
  %78 = load i8, ptr %arrayidx141, align 1
  %conv142 = zext i8 %78 to i32
  %sub143 = sub nsw i32 255, %conv142
  %conv144 = trunc i32 %sub143 to i16
  store i16 %conv144, ptr %k, align 2
  %79 = load i16, ptr %k, align 2
  %conv145 = zext i16 %79 to i32
  %80 = load ptr, ptr %pp.addr, align 8
  %arrayidx146 = getelementptr inbounds i8, ptr %80, i64 0
  %81 = load i8, ptr %arrayidx146, align 1
  %conv147 = zext i8 %81 to i32
  %sub148 = sub nsw i32 255, %conv147
  %mul149 = mul nsw i32 %conv145, %sub148
  %div150 = sdiv i32 %mul149, 255
  %conv151 = trunc i32 %div150 to i16
  store i16 %conv151, ptr %r, align 2
  %82 = load i16, ptr %k, align 2
  %conv152 = zext i16 %82 to i32
  %83 = load ptr, ptr %pp.addr, align 8
  %arrayidx153 = getelementptr inbounds i8, ptr %83, i64 1
  %84 = load i8, ptr %arrayidx153, align 1
  %conv154 = zext i8 %84 to i32
  %sub155 = sub nsw i32 255, %conv154
  %mul156 = mul nsw i32 %conv152, %sub155
  %div157 = sdiv i32 %mul156, 255
  %conv158 = trunc i32 %div157 to i16
  store i16 %conv158, ptr %g, align 2
  %85 = load i16, ptr %k, align 2
  %conv159 = zext i16 %85 to i32
  %86 = load ptr, ptr %pp.addr, align 8
  %arrayidx160 = getelementptr inbounds i8, ptr %86, i64 2
  %87 = load i8, ptr %arrayidx160, align 1
  %conv161 = zext i8 %87 to i32
  %sub162 = sub nsw i32 255, %conv161
  %mul163 = mul nsw i32 %conv159, %sub162
  %div164 = sdiv i32 %mul163, 255
  %conv165 = trunc i32 %div164 to i16
  store i16 %conv165, ptr %b, align 2
  %88 = load i16, ptr %r, align 2
  %conv166 = zext i16 %88 to i32
  %89 = load i16, ptr %g, align 2
  %conv167 = zext i16 %89 to i32
  %shl168 = shl i32 %conv167, 8
  %or169 = or i32 %conv166, %shl168
  %90 = load i16, ptr %b, align 2
  %conv170 = zext i16 %90 to i32
  %shl171 = shl i32 %conv170, 16
  %or172 = or i32 %or169, %shl171
  %or173 = or i32 %or172, -16777216
  %91 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr174 = getelementptr inbounds i32, ptr %91, i32 1
  store ptr %incdec.ptr174, ptr %cp.addr, align 8
  store i32 %or173, ptr %91, align 4
  %92 = load i32, ptr %samplesperpixel, align 4
  %93 = load ptr, ptr %pp.addr, align 8
  %idx.ext175 = sext i32 %92 to i64
  %add.ptr176 = getelementptr inbounds i8, ptr %93, i64 %idx.ext175
  store ptr %add.ptr176, ptr %pp.addr, align 8
  %94 = load ptr, ptr %pp.addr, align 8
  %arrayidx177 = getelementptr inbounds i8, ptr %94, i64 3
  %95 = load i8, ptr %arrayidx177, align 1
  %conv178 = zext i8 %95 to i32
  %sub179 = sub nsw i32 255, %conv178
  %conv180 = trunc i32 %sub179 to i16
  store i16 %conv180, ptr %k, align 2
  %96 = load i16, ptr %k, align 2
  %conv181 = zext i16 %96 to i32
  %97 = load ptr, ptr %pp.addr, align 8
  %arrayidx182 = getelementptr inbounds i8, ptr %97, i64 0
  %98 = load i8, ptr %arrayidx182, align 1
  %conv183 = zext i8 %98 to i32
  %sub184 = sub nsw i32 255, %conv183
  %mul185 = mul nsw i32 %conv181, %sub184
  %div186 = sdiv i32 %mul185, 255
  %conv187 = trunc i32 %div186 to i16
  store i16 %conv187, ptr %r, align 2
  %99 = load i16, ptr %k, align 2
  %conv188 = zext i16 %99 to i32
  %100 = load ptr, ptr %pp.addr, align 8
  %arrayidx189 = getelementptr inbounds i8, ptr %100, i64 1
  %101 = load i8, ptr %arrayidx189, align 1
  %conv190 = zext i8 %101 to i32
  %sub191 = sub nsw i32 255, %conv190
  %mul192 = mul nsw i32 %conv188, %sub191
  %div193 = sdiv i32 %mul192, 255
  %conv194 = trunc i32 %div193 to i16
  store i16 %conv194, ptr %g, align 2
  %102 = load i16, ptr %k, align 2
  %conv195 = zext i16 %102 to i32
  %103 = load ptr, ptr %pp.addr, align 8
  %arrayidx196 = getelementptr inbounds i8, ptr %103, i64 2
  %104 = load i8, ptr %arrayidx196, align 1
  %conv197 = zext i8 %104 to i32
  %sub198 = sub nsw i32 255, %conv197
  %mul199 = mul nsw i32 %conv195, %sub198
  %div200 = sdiv i32 %mul199, 255
  %conv201 = trunc i32 %div200 to i16
  store i16 %conv201, ptr %b, align 2
  %105 = load i16, ptr %r, align 2
  %conv202 = zext i16 %105 to i32
  %106 = load i16, ptr %g, align 2
  %conv203 = zext i16 %106 to i32
  %shl204 = shl i32 %conv203, 8
  %or205 = or i32 %conv202, %shl204
  %107 = load i16, ptr %b, align 2
  %conv206 = zext i16 %107 to i32
  %shl207 = shl i32 %conv206, 16
  %or208 = or i32 %or205, %shl207
  %or209 = or i32 %or208, -16777216
  %108 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr210 = getelementptr inbounds i32, ptr %108, i32 1
  store ptr %incdec.ptr210, ptr %cp.addr, align 8
  store i32 %or209, ptr %108, align 4
  %109 = load i32, ptr %samplesperpixel, align 4
  %110 = load ptr, ptr %pp.addr, align 8
  %idx.ext211 = sext i32 %109 to i64
  %add.ptr212 = getelementptr inbounds i8, ptr %110, i64 %idx.ext211
  store ptr %add.ptr212, ptr %pp.addr, align 8
  %111 = load ptr, ptr %pp.addr, align 8
  %arrayidx213 = getelementptr inbounds i8, ptr %111, i64 3
  %112 = load i8, ptr %arrayidx213, align 1
  %conv214 = zext i8 %112 to i32
  %sub215 = sub nsw i32 255, %conv214
  %conv216 = trunc i32 %sub215 to i16
  store i16 %conv216, ptr %k, align 2
  %113 = load i16, ptr %k, align 2
  %conv217 = zext i16 %113 to i32
  %114 = load ptr, ptr %pp.addr, align 8
  %arrayidx218 = getelementptr inbounds i8, ptr %114, i64 0
  %115 = load i8, ptr %arrayidx218, align 1
  %conv219 = zext i8 %115 to i32
  %sub220 = sub nsw i32 255, %conv219
  %mul221 = mul nsw i32 %conv217, %sub220
  %div222 = sdiv i32 %mul221, 255
  %conv223 = trunc i32 %div222 to i16
  store i16 %conv223, ptr %r, align 2
  %116 = load i16, ptr %k, align 2
  %conv224 = zext i16 %116 to i32
  %117 = load ptr, ptr %pp.addr, align 8
  %arrayidx225 = getelementptr inbounds i8, ptr %117, i64 1
  %118 = load i8, ptr %arrayidx225, align 1
  %conv226 = zext i8 %118 to i32
  %sub227 = sub nsw i32 255, %conv226
  %mul228 = mul nsw i32 %conv224, %sub227
  %div229 = sdiv i32 %mul228, 255
  %conv230 = trunc i32 %div229 to i16
  store i16 %conv230, ptr %g, align 2
  %119 = load i16, ptr %k, align 2
  %conv231 = zext i16 %119 to i32
  %120 = load ptr, ptr %pp.addr, align 8
  %arrayidx232 = getelementptr inbounds i8, ptr %120, i64 2
  %121 = load i8, ptr %arrayidx232, align 1
  %conv233 = zext i8 %121 to i32
  %sub234 = sub nsw i32 255, %conv233
  %mul235 = mul nsw i32 %conv231, %sub234
  %div236 = sdiv i32 %mul235, 255
  %conv237 = trunc i32 %div236 to i16
  store i16 %conv237, ptr %b, align 2
  %122 = load i16, ptr %r, align 2
  %conv238 = zext i16 %122 to i32
  %123 = load i16, ptr %g, align 2
  %conv239 = zext i16 %123 to i32
  %shl240 = shl i32 %conv239, 8
  %or241 = or i32 %conv238, %shl240
  %124 = load i16, ptr %b, align 2
  %conv242 = zext i16 %124 to i32
  %shl243 = shl i32 %conv242, 16
  %or244 = or i32 %or241, %shl243
  %or245 = or i32 %or244, -16777216
  %125 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr246 = getelementptr inbounds i32, ptr %125, i32 1
  store ptr %incdec.ptr246, ptr %cp.addr, align 8
  store i32 %or245, ptr %125, align 4
  %126 = load i32, ptr %samplesperpixel, align 4
  %127 = load ptr, ptr %pp.addr, align 8
  %idx.ext247 = sext i32 %126 to i64
  %add.ptr248 = getelementptr inbounds i8, ptr %127, i64 %idx.ext247
  store ptr %add.ptr248, ptr %pp.addr, align 8
  %128 = load ptr, ptr %pp.addr, align 8
  %arrayidx249 = getelementptr inbounds i8, ptr %128, i64 3
  %129 = load i8, ptr %arrayidx249, align 1
  %conv250 = zext i8 %129 to i32
  %sub251 = sub nsw i32 255, %conv250
  %conv252 = trunc i32 %sub251 to i16
  store i16 %conv252, ptr %k, align 2
  %130 = load i16, ptr %k, align 2
  %conv253 = zext i16 %130 to i32
  %131 = load ptr, ptr %pp.addr, align 8
  %arrayidx254 = getelementptr inbounds i8, ptr %131, i64 0
  %132 = load i8, ptr %arrayidx254, align 1
  %conv255 = zext i8 %132 to i32
  %sub256 = sub nsw i32 255, %conv255
  %mul257 = mul nsw i32 %conv253, %sub256
  %div258 = sdiv i32 %mul257, 255
  %conv259 = trunc i32 %div258 to i16
  store i16 %conv259, ptr %r, align 2
  %133 = load i16, ptr %k, align 2
  %conv260 = zext i16 %133 to i32
  %134 = load ptr, ptr %pp.addr, align 8
  %arrayidx261 = getelementptr inbounds i8, ptr %134, i64 1
  %135 = load i8, ptr %arrayidx261, align 1
  %conv262 = zext i8 %135 to i32
  %sub263 = sub nsw i32 255, %conv262
  %mul264 = mul nsw i32 %conv260, %sub263
  %div265 = sdiv i32 %mul264, 255
  %conv266 = trunc i32 %div265 to i16
  store i16 %conv266, ptr %g, align 2
  %136 = load i16, ptr %k, align 2
  %conv267 = zext i16 %136 to i32
  %137 = load ptr, ptr %pp.addr, align 8
  %arrayidx268 = getelementptr inbounds i8, ptr %137, i64 2
  %138 = load i8, ptr %arrayidx268, align 1
  %conv269 = zext i8 %138 to i32
  %sub270 = sub nsw i32 255, %conv269
  %mul271 = mul nsw i32 %conv267, %sub270
  %div272 = sdiv i32 %mul271, 255
  %conv273 = trunc i32 %div272 to i16
  store i16 %conv273, ptr %b, align 2
  %139 = load i16, ptr %r, align 2
  %conv274 = zext i16 %139 to i32
  %140 = load i16, ptr %g, align 2
  %conv275 = zext i16 %140 to i32
  %shl276 = shl i32 %conv275, 8
  %or277 = or i32 %conv274, %shl276
  %141 = load i16, ptr %b, align 2
  %conv278 = zext i16 %141 to i32
  %shl279 = shl i32 %conv278, 16
  %or280 = or i32 %or277, %shl279
  %or281 = or i32 %or280, -16777216
  %142 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr282 = getelementptr inbounds i32, ptr %142, i32 1
  store ptr %incdec.ptr282, ptr %cp.addr, align 8
  store i32 %or281, ptr %142, align 4
  %143 = load i32, ptr %samplesperpixel, align 4
  %144 = load ptr, ptr %pp.addr, align 8
  %idx.ext283 = sext i32 %143 to i64
  %add.ptr284 = getelementptr inbounds i8, ptr %144, i64 %idx.ext283
  store ptr %add.ptr284, ptr %pp.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %145 = load i32, ptr %_x, align 4
  %sub285 = sub i32 %145, 8
  store i32 %sub285, ptr %_x, align 4
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  %146 = load i32, ptr %_x, align 4
  %cmp286 = icmp ugt i32 %146, 0
  br i1 %cmp286, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %147 = load i32, ptr %_x, align 4
  switch i32 %147, label %sw.epilog [
    i32 7, label %sw.bb
    i32 6, label %sw.bb324
    i32 5, label %sw.bb361
    i32 4, label %sw.bb398
    i32 3, label %sw.bb435
    i32 2, label %sw.bb472
    i32 1, label %sw.bb509
  ]

sw.bb:                                            ; preds = %if.then
  %148 = load ptr, ptr %pp.addr, align 8
  %arrayidx288 = getelementptr inbounds i8, ptr %148, i64 3
  %149 = load i8, ptr %arrayidx288, align 1
  %conv289 = zext i8 %149 to i32
  %sub290 = sub nsw i32 255, %conv289
  %conv291 = trunc i32 %sub290 to i16
  store i16 %conv291, ptr %k, align 2
  %150 = load i16, ptr %k, align 2
  %conv292 = zext i16 %150 to i32
  %151 = load ptr, ptr %pp.addr, align 8
  %arrayidx293 = getelementptr inbounds i8, ptr %151, i64 0
  %152 = load i8, ptr %arrayidx293, align 1
  %conv294 = zext i8 %152 to i32
  %sub295 = sub nsw i32 255, %conv294
  %mul296 = mul nsw i32 %conv292, %sub295
  %div297 = sdiv i32 %mul296, 255
  %conv298 = trunc i32 %div297 to i16
  store i16 %conv298, ptr %r, align 2
  %153 = load i16, ptr %k, align 2
  %conv299 = zext i16 %153 to i32
  %154 = load ptr, ptr %pp.addr, align 8
  %arrayidx300 = getelementptr inbounds i8, ptr %154, i64 1
  %155 = load i8, ptr %arrayidx300, align 1
  %conv301 = zext i8 %155 to i32
  %sub302 = sub nsw i32 255, %conv301
  %mul303 = mul nsw i32 %conv299, %sub302
  %div304 = sdiv i32 %mul303, 255
  %conv305 = trunc i32 %div304 to i16
  store i16 %conv305, ptr %g, align 2
  %156 = load i16, ptr %k, align 2
  %conv306 = zext i16 %156 to i32
  %157 = load ptr, ptr %pp.addr, align 8
  %arrayidx307 = getelementptr inbounds i8, ptr %157, i64 2
  %158 = load i8, ptr %arrayidx307, align 1
  %conv308 = zext i8 %158 to i32
  %sub309 = sub nsw i32 255, %conv308
  %mul310 = mul nsw i32 %conv306, %sub309
  %div311 = sdiv i32 %mul310, 255
  %conv312 = trunc i32 %div311 to i16
  store i16 %conv312, ptr %b, align 2
  %159 = load i16, ptr %r, align 2
  %conv313 = zext i16 %159 to i32
  %160 = load i16, ptr %g, align 2
  %conv314 = zext i16 %160 to i32
  %shl315 = shl i32 %conv314, 8
  %or316 = or i32 %conv313, %shl315
  %161 = load i16, ptr %b, align 2
  %conv317 = zext i16 %161 to i32
  %shl318 = shl i32 %conv317, 16
  %or319 = or i32 %or316, %shl318
  %or320 = or i32 %or319, -16777216
  %162 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr321 = getelementptr inbounds i32, ptr %162, i32 1
  store ptr %incdec.ptr321, ptr %cp.addr, align 8
  store i32 %or320, ptr %162, align 4
  %163 = load i32, ptr %samplesperpixel, align 4
  %164 = load ptr, ptr %pp.addr, align 8
  %idx.ext322 = sext i32 %163 to i64
  %add.ptr323 = getelementptr inbounds i8, ptr %164, i64 %idx.ext322
  store ptr %add.ptr323, ptr %pp.addr, align 8
  br label %sw.bb324

sw.bb324:                                         ; preds = %if.then, %sw.bb
  %165 = load ptr, ptr %pp.addr, align 8
  %arrayidx325 = getelementptr inbounds i8, ptr %165, i64 3
  %166 = load i8, ptr %arrayidx325, align 1
  %conv326 = zext i8 %166 to i32
  %sub327 = sub nsw i32 255, %conv326
  %conv328 = trunc i32 %sub327 to i16
  store i16 %conv328, ptr %k, align 2
  %167 = load i16, ptr %k, align 2
  %conv329 = zext i16 %167 to i32
  %168 = load ptr, ptr %pp.addr, align 8
  %arrayidx330 = getelementptr inbounds i8, ptr %168, i64 0
  %169 = load i8, ptr %arrayidx330, align 1
  %conv331 = zext i8 %169 to i32
  %sub332 = sub nsw i32 255, %conv331
  %mul333 = mul nsw i32 %conv329, %sub332
  %div334 = sdiv i32 %mul333, 255
  %conv335 = trunc i32 %div334 to i16
  store i16 %conv335, ptr %r, align 2
  %170 = load i16, ptr %k, align 2
  %conv336 = zext i16 %170 to i32
  %171 = load ptr, ptr %pp.addr, align 8
  %arrayidx337 = getelementptr inbounds i8, ptr %171, i64 1
  %172 = load i8, ptr %arrayidx337, align 1
  %conv338 = zext i8 %172 to i32
  %sub339 = sub nsw i32 255, %conv338
  %mul340 = mul nsw i32 %conv336, %sub339
  %div341 = sdiv i32 %mul340, 255
  %conv342 = trunc i32 %div341 to i16
  store i16 %conv342, ptr %g, align 2
  %173 = load i16, ptr %k, align 2
  %conv343 = zext i16 %173 to i32
  %174 = load ptr, ptr %pp.addr, align 8
  %arrayidx344 = getelementptr inbounds i8, ptr %174, i64 2
  %175 = load i8, ptr %arrayidx344, align 1
  %conv345 = zext i8 %175 to i32
  %sub346 = sub nsw i32 255, %conv345
  %mul347 = mul nsw i32 %conv343, %sub346
  %div348 = sdiv i32 %mul347, 255
  %conv349 = trunc i32 %div348 to i16
  store i16 %conv349, ptr %b, align 2
  %176 = load i16, ptr %r, align 2
  %conv350 = zext i16 %176 to i32
  %177 = load i16, ptr %g, align 2
  %conv351 = zext i16 %177 to i32
  %shl352 = shl i32 %conv351, 8
  %or353 = or i32 %conv350, %shl352
  %178 = load i16, ptr %b, align 2
  %conv354 = zext i16 %178 to i32
  %shl355 = shl i32 %conv354, 16
  %or356 = or i32 %or353, %shl355
  %or357 = or i32 %or356, -16777216
  %179 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr358 = getelementptr inbounds i32, ptr %179, i32 1
  store ptr %incdec.ptr358, ptr %cp.addr, align 8
  store i32 %or357, ptr %179, align 4
  %180 = load i32, ptr %samplesperpixel, align 4
  %181 = load ptr, ptr %pp.addr, align 8
  %idx.ext359 = sext i32 %180 to i64
  %add.ptr360 = getelementptr inbounds i8, ptr %181, i64 %idx.ext359
  store ptr %add.ptr360, ptr %pp.addr, align 8
  br label %sw.bb361

sw.bb361:                                         ; preds = %if.then, %sw.bb324
  %182 = load ptr, ptr %pp.addr, align 8
  %arrayidx362 = getelementptr inbounds i8, ptr %182, i64 3
  %183 = load i8, ptr %arrayidx362, align 1
  %conv363 = zext i8 %183 to i32
  %sub364 = sub nsw i32 255, %conv363
  %conv365 = trunc i32 %sub364 to i16
  store i16 %conv365, ptr %k, align 2
  %184 = load i16, ptr %k, align 2
  %conv366 = zext i16 %184 to i32
  %185 = load ptr, ptr %pp.addr, align 8
  %arrayidx367 = getelementptr inbounds i8, ptr %185, i64 0
  %186 = load i8, ptr %arrayidx367, align 1
  %conv368 = zext i8 %186 to i32
  %sub369 = sub nsw i32 255, %conv368
  %mul370 = mul nsw i32 %conv366, %sub369
  %div371 = sdiv i32 %mul370, 255
  %conv372 = trunc i32 %div371 to i16
  store i16 %conv372, ptr %r, align 2
  %187 = load i16, ptr %k, align 2
  %conv373 = zext i16 %187 to i32
  %188 = load ptr, ptr %pp.addr, align 8
  %arrayidx374 = getelementptr inbounds i8, ptr %188, i64 1
  %189 = load i8, ptr %arrayidx374, align 1
  %conv375 = zext i8 %189 to i32
  %sub376 = sub nsw i32 255, %conv375
  %mul377 = mul nsw i32 %conv373, %sub376
  %div378 = sdiv i32 %mul377, 255
  %conv379 = trunc i32 %div378 to i16
  store i16 %conv379, ptr %g, align 2
  %190 = load i16, ptr %k, align 2
  %conv380 = zext i16 %190 to i32
  %191 = load ptr, ptr %pp.addr, align 8
  %arrayidx381 = getelementptr inbounds i8, ptr %191, i64 2
  %192 = load i8, ptr %arrayidx381, align 1
  %conv382 = zext i8 %192 to i32
  %sub383 = sub nsw i32 255, %conv382
  %mul384 = mul nsw i32 %conv380, %sub383
  %div385 = sdiv i32 %mul384, 255
  %conv386 = trunc i32 %div385 to i16
  store i16 %conv386, ptr %b, align 2
  %193 = load i16, ptr %r, align 2
  %conv387 = zext i16 %193 to i32
  %194 = load i16, ptr %g, align 2
  %conv388 = zext i16 %194 to i32
  %shl389 = shl i32 %conv388, 8
  %or390 = or i32 %conv387, %shl389
  %195 = load i16, ptr %b, align 2
  %conv391 = zext i16 %195 to i32
  %shl392 = shl i32 %conv391, 16
  %or393 = or i32 %or390, %shl392
  %or394 = or i32 %or393, -16777216
  %196 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr395 = getelementptr inbounds i32, ptr %196, i32 1
  store ptr %incdec.ptr395, ptr %cp.addr, align 8
  store i32 %or394, ptr %196, align 4
  %197 = load i32, ptr %samplesperpixel, align 4
  %198 = load ptr, ptr %pp.addr, align 8
  %idx.ext396 = sext i32 %197 to i64
  %add.ptr397 = getelementptr inbounds i8, ptr %198, i64 %idx.ext396
  store ptr %add.ptr397, ptr %pp.addr, align 8
  br label %sw.bb398

sw.bb398:                                         ; preds = %if.then, %sw.bb361
  %199 = load ptr, ptr %pp.addr, align 8
  %arrayidx399 = getelementptr inbounds i8, ptr %199, i64 3
  %200 = load i8, ptr %arrayidx399, align 1
  %conv400 = zext i8 %200 to i32
  %sub401 = sub nsw i32 255, %conv400
  %conv402 = trunc i32 %sub401 to i16
  store i16 %conv402, ptr %k, align 2
  %201 = load i16, ptr %k, align 2
  %conv403 = zext i16 %201 to i32
  %202 = load ptr, ptr %pp.addr, align 8
  %arrayidx404 = getelementptr inbounds i8, ptr %202, i64 0
  %203 = load i8, ptr %arrayidx404, align 1
  %conv405 = zext i8 %203 to i32
  %sub406 = sub nsw i32 255, %conv405
  %mul407 = mul nsw i32 %conv403, %sub406
  %div408 = sdiv i32 %mul407, 255
  %conv409 = trunc i32 %div408 to i16
  store i16 %conv409, ptr %r, align 2
  %204 = load i16, ptr %k, align 2
  %conv410 = zext i16 %204 to i32
  %205 = load ptr, ptr %pp.addr, align 8
  %arrayidx411 = getelementptr inbounds i8, ptr %205, i64 1
  %206 = load i8, ptr %arrayidx411, align 1
  %conv412 = zext i8 %206 to i32
  %sub413 = sub nsw i32 255, %conv412
  %mul414 = mul nsw i32 %conv410, %sub413
  %div415 = sdiv i32 %mul414, 255
  %conv416 = trunc i32 %div415 to i16
  store i16 %conv416, ptr %g, align 2
  %207 = load i16, ptr %k, align 2
  %conv417 = zext i16 %207 to i32
  %208 = load ptr, ptr %pp.addr, align 8
  %arrayidx418 = getelementptr inbounds i8, ptr %208, i64 2
  %209 = load i8, ptr %arrayidx418, align 1
  %conv419 = zext i8 %209 to i32
  %sub420 = sub nsw i32 255, %conv419
  %mul421 = mul nsw i32 %conv417, %sub420
  %div422 = sdiv i32 %mul421, 255
  %conv423 = trunc i32 %div422 to i16
  store i16 %conv423, ptr %b, align 2
  %210 = load i16, ptr %r, align 2
  %conv424 = zext i16 %210 to i32
  %211 = load i16, ptr %g, align 2
  %conv425 = zext i16 %211 to i32
  %shl426 = shl i32 %conv425, 8
  %or427 = or i32 %conv424, %shl426
  %212 = load i16, ptr %b, align 2
  %conv428 = zext i16 %212 to i32
  %shl429 = shl i32 %conv428, 16
  %or430 = or i32 %or427, %shl429
  %or431 = or i32 %or430, -16777216
  %213 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr432 = getelementptr inbounds i32, ptr %213, i32 1
  store ptr %incdec.ptr432, ptr %cp.addr, align 8
  store i32 %or431, ptr %213, align 4
  %214 = load i32, ptr %samplesperpixel, align 4
  %215 = load ptr, ptr %pp.addr, align 8
  %idx.ext433 = sext i32 %214 to i64
  %add.ptr434 = getelementptr inbounds i8, ptr %215, i64 %idx.ext433
  store ptr %add.ptr434, ptr %pp.addr, align 8
  br label %sw.bb435

sw.bb435:                                         ; preds = %if.then, %sw.bb398
  %216 = load ptr, ptr %pp.addr, align 8
  %arrayidx436 = getelementptr inbounds i8, ptr %216, i64 3
  %217 = load i8, ptr %arrayidx436, align 1
  %conv437 = zext i8 %217 to i32
  %sub438 = sub nsw i32 255, %conv437
  %conv439 = trunc i32 %sub438 to i16
  store i16 %conv439, ptr %k, align 2
  %218 = load i16, ptr %k, align 2
  %conv440 = zext i16 %218 to i32
  %219 = load ptr, ptr %pp.addr, align 8
  %arrayidx441 = getelementptr inbounds i8, ptr %219, i64 0
  %220 = load i8, ptr %arrayidx441, align 1
  %conv442 = zext i8 %220 to i32
  %sub443 = sub nsw i32 255, %conv442
  %mul444 = mul nsw i32 %conv440, %sub443
  %div445 = sdiv i32 %mul444, 255
  %conv446 = trunc i32 %div445 to i16
  store i16 %conv446, ptr %r, align 2
  %221 = load i16, ptr %k, align 2
  %conv447 = zext i16 %221 to i32
  %222 = load ptr, ptr %pp.addr, align 8
  %arrayidx448 = getelementptr inbounds i8, ptr %222, i64 1
  %223 = load i8, ptr %arrayidx448, align 1
  %conv449 = zext i8 %223 to i32
  %sub450 = sub nsw i32 255, %conv449
  %mul451 = mul nsw i32 %conv447, %sub450
  %div452 = sdiv i32 %mul451, 255
  %conv453 = trunc i32 %div452 to i16
  store i16 %conv453, ptr %g, align 2
  %224 = load i16, ptr %k, align 2
  %conv454 = zext i16 %224 to i32
  %225 = load ptr, ptr %pp.addr, align 8
  %arrayidx455 = getelementptr inbounds i8, ptr %225, i64 2
  %226 = load i8, ptr %arrayidx455, align 1
  %conv456 = zext i8 %226 to i32
  %sub457 = sub nsw i32 255, %conv456
  %mul458 = mul nsw i32 %conv454, %sub457
  %div459 = sdiv i32 %mul458, 255
  %conv460 = trunc i32 %div459 to i16
  store i16 %conv460, ptr %b, align 2
  %227 = load i16, ptr %r, align 2
  %conv461 = zext i16 %227 to i32
  %228 = load i16, ptr %g, align 2
  %conv462 = zext i16 %228 to i32
  %shl463 = shl i32 %conv462, 8
  %or464 = or i32 %conv461, %shl463
  %229 = load i16, ptr %b, align 2
  %conv465 = zext i16 %229 to i32
  %shl466 = shl i32 %conv465, 16
  %or467 = or i32 %or464, %shl466
  %or468 = or i32 %or467, -16777216
  %230 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr469 = getelementptr inbounds i32, ptr %230, i32 1
  store ptr %incdec.ptr469, ptr %cp.addr, align 8
  store i32 %or468, ptr %230, align 4
  %231 = load i32, ptr %samplesperpixel, align 4
  %232 = load ptr, ptr %pp.addr, align 8
  %idx.ext470 = sext i32 %231 to i64
  %add.ptr471 = getelementptr inbounds i8, ptr %232, i64 %idx.ext470
  store ptr %add.ptr471, ptr %pp.addr, align 8
  br label %sw.bb472

sw.bb472:                                         ; preds = %if.then, %sw.bb435
  %233 = load ptr, ptr %pp.addr, align 8
  %arrayidx473 = getelementptr inbounds i8, ptr %233, i64 3
  %234 = load i8, ptr %arrayidx473, align 1
  %conv474 = zext i8 %234 to i32
  %sub475 = sub nsw i32 255, %conv474
  %conv476 = trunc i32 %sub475 to i16
  store i16 %conv476, ptr %k, align 2
  %235 = load i16, ptr %k, align 2
  %conv477 = zext i16 %235 to i32
  %236 = load ptr, ptr %pp.addr, align 8
  %arrayidx478 = getelementptr inbounds i8, ptr %236, i64 0
  %237 = load i8, ptr %arrayidx478, align 1
  %conv479 = zext i8 %237 to i32
  %sub480 = sub nsw i32 255, %conv479
  %mul481 = mul nsw i32 %conv477, %sub480
  %div482 = sdiv i32 %mul481, 255
  %conv483 = trunc i32 %div482 to i16
  store i16 %conv483, ptr %r, align 2
  %238 = load i16, ptr %k, align 2
  %conv484 = zext i16 %238 to i32
  %239 = load ptr, ptr %pp.addr, align 8
  %arrayidx485 = getelementptr inbounds i8, ptr %239, i64 1
  %240 = load i8, ptr %arrayidx485, align 1
  %conv486 = zext i8 %240 to i32
  %sub487 = sub nsw i32 255, %conv486
  %mul488 = mul nsw i32 %conv484, %sub487
  %div489 = sdiv i32 %mul488, 255
  %conv490 = trunc i32 %div489 to i16
  store i16 %conv490, ptr %g, align 2
  %241 = load i16, ptr %k, align 2
  %conv491 = zext i16 %241 to i32
  %242 = load ptr, ptr %pp.addr, align 8
  %arrayidx492 = getelementptr inbounds i8, ptr %242, i64 2
  %243 = load i8, ptr %arrayidx492, align 1
  %conv493 = zext i8 %243 to i32
  %sub494 = sub nsw i32 255, %conv493
  %mul495 = mul nsw i32 %conv491, %sub494
  %div496 = sdiv i32 %mul495, 255
  %conv497 = trunc i32 %div496 to i16
  store i16 %conv497, ptr %b, align 2
  %244 = load i16, ptr %r, align 2
  %conv498 = zext i16 %244 to i32
  %245 = load i16, ptr %g, align 2
  %conv499 = zext i16 %245 to i32
  %shl500 = shl i32 %conv499, 8
  %or501 = or i32 %conv498, %shl500
  %246 = load i16, ptr %b, align 2
  %conv502 = zext i16 %246 to i32
  %shl503 = shl i32 %conv502, 16
  %or504 = or i32 %or501, %shl503
  %or505 = or i32 %or504, -16777216
  %247 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr506 = getelementptr inbounds i32, ptr %247, i32 1
  store ptr %incdec.ptr506, ptr %cp.addr, align 8
  store i32 %or505, ptr %247, align 4
  %248 = load i32, ptr %samplesperpixel, align 4
  %249 = load ptr, ptr %pp.addr, align 8
  %idx.ext507 = sext i32 %248 to i64
  %add.ptr508 = getelementptr inbounds i8, ptr %249, i64 %idx.ext507
  store ptr %add.ptr508, ptr %pp.addr, align 8
  br label %sw.bb509

sw.bb509:                                         ; preds = %if.then, %sw.bb472
  %250 = load ptr, ptr %pp.addr, align 8
  %arrayidx510 = getelementptr inbounds i8, ptr %250, i64 3
  %251 = load i8, ptr %arrayidx510, align 1
  %conv511 = zext i8 %251 to i32
  %sub512 = sub nsw i32 255, %conv511
  %conv513 = trunc i32 %sub512 to i16
  store i16 %conv513, ptr %k, align 2
  %252 = load i16, ptr %k, align 2
  %conv514 = zext i16 %252 to i32
  %253 = load ptr, ptr %pp.addr, align 8
  %arrayidx515 = getelementptr inbounds i8, ptr %253, i64 0
  %254 = load i8, ptr %arrayidx515, align 1
  %conv516 = zext i8 %254 to i32
  %sub517 = sub nsw i32 255, %conv516
  %mul518 = mul nsw i32 %conv514, %sub517
  %div519 = sdiv i32 %mul518, 255
  %conv520 = trunc i32 %div519 to i16
  store i16 %conv520, ptr %r, align 2
  %255 = load i16, ptr %k, align 2
  %conv521 = zext i16 %255 to i32
  %256 = load ptr, ptr %pp.addr, align 8
  %arrayidx522 = getelementptr inbounds i8, ptr %256, i64 1
  %257 = load i8, ptr %arrayidx522, align 1
  %conv523 = zext i8 %257 to i32
  %sub524 = sub nsw i32 255, %conv523
  %mul525 = mul nsw i32 %conv521, %sub524
  %div526 = sdiv i32 %mul525, 255
  %conv527 = trunc i32 %div526 to i16
  store i16 %conv527, ptr %g, align 2
  %258 = load i16, ptr %k, align 2
  %conv528 = zext i16 %258 to i32
  %259 = load ptr, ptr %pp.addr, align 8
  %arrayidx529 = getelementptr inbounds i8, ptr %259, i64 2
  %260 = load i8, ptr %arrayidx529, align 1
  %conv530 = zext i8 %260 to i32
  %sub531 = sub nsw i32 255, %conv530
  %mul532 = mul nsw i32 %conv528, %sub531
  %div533 = sdiv i32 %mul532, 255
  %conv534 = trunc i32 %div533 to i16
  store i16 %conv534, ptr %b, align 2
  %261 = load i16, ptr %r, align 2
  %conv535 = zext i16 %261 to i32
  %262 = load i16, ptr %g, align 2
  %conv536 = zext i16 %262 to i32
  %shl537 = shl i32 %conv536, 8
  %or538 = or i32 %conv535, %shl537
  %263 = load i16, ptr %b, align 2
  %conv539 = zext i16 %263 to i32
  %shl540 = shl i32 %conv539, 16
  %or541 = or i32 %or538, %shl540
  %or542 = or i32 %or541, -16777216
  %264 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr543 = getelementptr inbounds i32, ptr %264, i32 1
  store ptr %incdec.ptr543, ptr %cp.addr, align 8
  store i32 %or542, ptr %264, align 4
  %265 = load i32, ptr %samplesperpixel, align 4
  %266 = load ptr, ptr %pp.addr, align 8
  %idx.ext544 = sext i32 %265 to i64
  %add.ptr545 = getelementptr inbounds i8, ptr %266, i64 %idx.ext544
  store ptr %add.ptr545, ptr %pp.addr, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb509, %if.then
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %for.end
  %267 = load i32, ptr %toskew.addr, align 4
  %268 = load ptr, ptr %cp.addr, align 8
  %idx.ext546 = sext i32 %267 to i64
  %add.ptr547 = getelementptr inbounds i32, ptr %268, i64 %idx.ext546
  store ptr %add.ptr547, ptr %cp.addr, align 8
  %269 = load i32, ptr %fromskew.addr, align 4
  %270 = load ptr, ptr %pp.addr, align 8
  %idx.ext548 = sext i32 %269 to i64
  %add.ptr549 = getelementptr inbounds i8, ptr %270, i64 %idx.ext548
  store ptr %add.ptr549, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBcontig8bitCMYKMaptile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  %samplesperpixel = alloca i32, align 4
  %Map = alloca ptr, align 8
  %r = alloca i16, align 2
  %g = alloca i16, align 2
  %b = alloca i16, align 2
  %k = alloca i16, align 2
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
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
  %4 = load i32, ptr %y.addr, align 4
  %5 = load i32, ptr %samplesperpixel, align 4
  %6 = load i32, ptr %fromskew.addr, align 4
  %mul = mul nsw i32 %6, %5
  store i32 %mul, ptr %fromskew.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %7 = load i32, ptr %h.addr, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %h.addr, align 4
  %cmp = icmp ugt i32 %7, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, ptr %w.addr, align 4
  store i32 %8, ptr %x.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %9 = load i32, ptr %x.addr, align 4
  %dec4 = add i32 %9, -1
  store i32 %dec4, ptr %x.addr, align 4
  %cmp5 = icmp ugt i32 %9, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 3
  %11 = load i8, ptr %arrayidx, align 1
  %conv7 = zext i8 %11 to i32
  %sub = sub nsw i32 255, %conv7
  %conv8 = trunc i32 %sub to i16
  store i16 %conv8, ptr %k, align 2
  %12 = load i16, ptr %k, align 2
  %conv9 = zext i16 %12 to i32
  %13 = load ptr, ptr %pp.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %14 to i32
  %sub12 = sub nsw i32 255, %conv11
  %mul13 = mul nsw i32 %conv9, %sub12
  %div = sdiv i32 %mul13, 255
  %conv14 = trunc i32 %div to i16
  store i16 %conv14, ptr %r, align 2
  %15 = load i16, ptr %k, align 2
  %conv15 = zext i16 %15 to i32
  %16 = load ptr, ptr %pp.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %16, i64 1
  %17 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %17 to i32
  %sub18 = sub nsw i32 255, %conv17
  %mul19 = mul nsw i32 %conv15, %sub18
  %div20 = sdiv i32 %mul19, 255
  %conv21 = trunc i32 %div20 to i16
  store i16 %conv21, ptr %g, align 2
  %18 = load i16, ptr %k, align 2
  %conv22 = zext i16 %18 to i32
  %19 = load ptr, ptr %pp.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %19, i64 2
  %20 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %20 to i32
  %sub25 = sub nsw i32 255, %conv24
  %mul26 = mul nsw i32 %conv22, %sub25
  %div27 = sdiv i32 %mul26, 255
  %conv28 = trunc i32 %div27 to i16
  store i16 %conv28, ptr %b, align 2
  %21 = load ptr, ptr %Map, align 8
  %22 = load i16, ptr %r, align 2
  %idxprom = zext i16 %22 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %21, i64 %idxprom
  %23 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %23 to i32
  %24 = load ptr, ptr %Map, align 8
  %25 = load i16, ptr %g, align 2
  %idxprom31 = zext i16 %25 to i64
  %arrayidx32 = getelementptr inbounds i8, ptr %24, i64 %idxprom31
  %26 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %26 to i32
  %shl = shl i32 %conv33, 8
  %or = or i32 %conv30, %shl
  %27 = load ptr, ptr %Map, align 8
  %28 = load i16, ptr %b, align 2
  %idxprom34 = zext i16 %28 to i64
  %arrayidx35 = getelementptr inbounds i8, ptr %27, i64 %idxprom34
  %29 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %29 to i32
  %shl37 = shl i32 %conv36, 16
  %or38 = or i32 %or, %shl37
  %or39 = or i32 %or38, -16777216
  %30 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %30, i32 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i32 %or39, ptr %30, align 4
  %31 = load i32, ptr %samplesperpixel, align 4
  %32 = load ptr, ptr %pp.addr, align 8
  %idx.ext = sext i32 %31 to i64
  %add.ptr = getelementptr inbounds i8, ptr %32, i64 %idx.ext
  store ptr %add.ptr, ptr %pp.addr, align 8
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  %33 = load i32, ptr %fromskew.addr, align 4
  %34 = load ptr, ptr %pp.addr, align 8
  %idx.ext40 = sext i32 %33 to i64
  %add.ptr41 = getelementptr inbounds i8, ptr %34, i64 %idx.ext40
  store ptr %add.ptr41, ptr %pp.addr, align 8
  %35 = load i32, ptr %toskew.addr, align 4
  %36 = load ptr, ptr %cp.addr, align 8
  %idx.ext42 = sext i32 %35 to i64
  %add.ptr43 = getelementptr inbounds i32, ptr %36, i64 %idx.ext42
  store ptr %add.ptr43, ptr %cp.addr, align 8
  br label %while.cond, !llvm.loop !32

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @put8bitcmaptile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  %PALmap = alloca ptr, align 8
  %_x = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %PALmap1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 17
  %1 = load ptr, ptr %PALmap1, align 8
  store ptr %1, ptr %PALmap, align 8
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %y.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = load i32, ptr %h.addr, align 4
  %dec = add i32 %4, -1
  store i32 %dec, ptr %h.addr, align 4
  %cmp = icmp ugt i32 %4, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, ptr %w.addr, align 4
  store i32 %5, ptr %_x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %6 = load i32, ptr %_x, align 4
  %cmp2 = icmp uge i32 %6, 8
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
  %arrayidx3 = getelementptr inbounds i32, ptr %10, i64 0
  %11 = load i32, ptr %arrayidx3, align 4
  %12 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i32, ptr %12, i32 1
  store ptr %incdec.ptr4, ptr %cp.addr, align 8
  store i32 %11, ptr %12, align 4
  %13 = load ptr, ptr %PALmap, align 8
  %14 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr5, ptr %pp.addr, align 8
  %15 = load i8, ptr %14, align 1
  %idxprom6 = zext i8 %15 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %13, i64 %idxprom6
  %16 = load ptr, ptr %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %16, i64 0
  %17 = load i32, ptr %arrayidx8, align 4
  %18 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i32, ptr %18, i32 1
  store ptr %incdec.ptr9, ptr %cp.addr, align 8
  store i32 %17, ptr %18, align 4
  %19 = load ptr, ptr %PALmap, align 8
  %20 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr10, ptr %pp.addr, align 8
  %21 = load i8, ptr %20, align 1
  %idxprom11 = zext i8 %21 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %19, i64 %idxprom11
  %22 = load ptr, ptr %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %22, i64 0
  %23 = load i32, ptr %arrayidx13, align 4
  %24 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i32, ptr %24, i32 1
  store ptr %incdec.ptr14, ptr %cp.addr, align 8
  store i32 %23, ptr %24, align 4
  %25 = load ptr, ptr %PALmap, align 8
  %26 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr15 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr15, ptr %pp.addr, align 8
  %27 = load i8, ptr %26, align 1
  %idxprom16 = zext i8 %27 to i64
  %arrayidx17 = getelementptr inbounds ptr, ptr %25, i64 %idxprom16
  %28 = load ptr, ptr %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %28, i64 0
  %29 = load i32, ptr %arrayidx18, align 4
  %30 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr19 = getelementptr inbounds i32, ptr %30, i32 1
  store ptr %incdec.ptr19, ptr %cp.addr, align 8
  store i32 %29, ptr %30, align 4
  %31 = load ptr, ptr %PALmap, align 8
  %32 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr20, ptr %pp.addr, align 8
  %33 = load i8, ptr %32, align 1
  %idxprom21 = zext i8 %33 to i64
  %arrayidx22 = getelementptr inbounds ptr, ptr %31, i64 %idxprom21
  %34 = load ptr, ptr %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %34, i64 0
  %35 = load i32, ptr %arrayidx23, align 4
  %36 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr24 = getelementptr inbounds i32, ptr %36, i32 1
  store ptr %incdec.ptr24, ptr %cp.addr, align 8
  store i32 %35, ptr %36, align 4
  %37 = load ptr, ptr %PALmap, align 8
  %38 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr25 = getelementptr inbounds i8, ptr %38, i32 1
  store ptr %incdec.ptr25, ptr %pp.addr, align 8
  %39 = load i8, ptr %38, align 1
  %idxprom26 = zext i8 %39 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %37, i64 %idxprom26
  %40 = load ptr, ptr %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i32, ptr %40, i64 0
  %41 = load i32, ptr %arrayidx28, align 4
  %42 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr29 = getelementptr inbounds i32, ptr %42, i32 1
  store ptr %incdec.ptr29, ptr %cp.addr, align 8
  store i32 %41, ptr %42, align 4
  %43 = load ptr, ptr %PALmap, align 8
  %44 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i8, ptr %44, i32 1
  store ptr %incdec.ptr30, ptr %pp.addr, align 8
  %45 = load i8, ptr %44, align 1
  %idxprom31 = zext i8 %45 to i64
  %arrayidx32 = getelementptr inbounds ptr, ptr %43, i64 %idxprom31
  %46 = load ptr, ptr %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds i32, ptr %46, i64 0
  %47 = load i32, ptr %arrayidx33, align 4
  %48 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr34 = getelementptr inbounds i32, ptr %48, i32 1
  store ptr %incdec.ptr34, ptr %cp.addr, align 8
  store i32 %47, ptr %48, align 4
  %49 = load ptr, ptr %PALmap, align 8
  %50 = load ptr, ptr %pp.addr, align 8
  %incdec.ptr35 = getelementptr inbounds i8, ptr %50, i32 1
  store ptr %incdec.ptr35, ptr %pp.addr, align 8
  %51 = load i8, ptr %50, align 1
  %idxprom36 = zext i8 %51 to i64
  %arrayidx37 = getelementptr inbounds ptr, ptr %49, i64 %idxprom36
  %52 = load ptr, ptr %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds i32, ptr %52, i64 0
  %53 = load i32, ptr %arrayidx38, align 4
  %54 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr39 = getelementptr inbounds i32, ptr %54, i32 1
  store ptr %incdec.ptr39, ptr %cp.addr, align 8
  store i32 %53, ptr %54, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %55 = load i32, ptr %_x, align 4
  %sub = sub i32 %55, 8
  store i32 %sub, ptr %_x, align 4
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  %56 = load i32, ptr %_x, align 4
  %cmp40 = icmp ugt i32 %56, 0
  br i1 %cmp40, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %57 = load i32, ptr %_x, align 4
  switch i32 %57, label %sw.epilog [
    i32 7, label %sw.bb
    i32 6, label %sw.bb46
    i32 5, label %sw.bb52
    i32 4, label %sw.bb58
    i32 3, label %sw.bb64
    i32 2, label %sw.bb70
    i32 1, label %sw.bb76
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
  %arrayidx44 = getelementptr inbounds i32, ptr %61, i64 0
  %62 = load i32, ptr %arrayidx44, align 4
  %63 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr45 = getelementptr inbounds i32, ptr %63, i32 1
  store ptr %incdec.ptr45, ptr %cp.addr, align 8
  store i32 %62, ptr %63, align 4
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
  %arrayidx50 = getelementptr inbounds i32, ptr %67, i64 0
  %68 = load i32, ptr %arrayidx50, align 4
  %69 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr51 = getelementptr inbounds i32, ptr %69, i32 1
  store ptr %incdec.ptr51, ptr %cp.addr, align 8
  store i32 %68, ptr %69, align 4
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
  %arrayidx56 = getelementptr inbounds i32, ptr %73, i64 0
  %74 = load i32, ptr %arrayidx56, align 4
  %75 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr57 = getelementptr inbounds i32, ptr %75, i32 1
  store ptr %incdec.ptr57, ptr %cp.addr, align 8
  store i32 %74, ptr %75, align 4
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
  %arrayidx62 = getelementptr inbounds i32, ptr %79, i64 0
  %80 = load i32, ptr %arrayidx62, align 4
  %81 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr63 = getelementptr inbounds i32, ptr %81, i32 1
  store ptr %incdec.ptr63, ptr %cp.addr, align 8
  store i32 %80, ptr %81, align 4
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
  %arrayidx68 = getelementptr inbounds i32, ptr %85, i64 0
  %86 = load i32, ptr %arrayidx68, align 4
  %87 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr69 = getelementptr inbounds i32, ptr %87, i32 1
  store ptr %incdec.ptr69, ptr %cp.addr, align 8
  store i32 %86, ptr %87, align 4
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
  %arrayidx74 = getelementptr inbounds i32, ptr %91, i64 0
  %92 = load i32, ptr %arrayidx74, align 4
  %93 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr75 = getelementptr inbounds i32, ptr %93, i32 1
  store ptr %incdec.ptr75, ptr %cp.addr, align 8
  store i32 %92, ptr %93, align 4
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
  %arrayidx80 = getelementptr inbounds i32, ptr %97, i64 0
  %98 = load i32, ptr %arrayidx80, align 4
  %99 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr81 = getelementptr inbounds i32, ptr %99, i32 1
  store ptr %incdec.ptr81, ptr %cp.addr, align 8
  store i32 %98, ptr %99, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb76, %if.then
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %for.end
  %100 = load i32, ptr %toskew.addr, align 4
  %101 = load ptr, ptr %cp.addr, align 8
  %idx.ext = sext i32 %100 to i64
  %add.ptr = getelementptr inbounds i32, ptr %101, i64 %idx.ext
  store ptr %add.ptr, ptr %cp.addr, align 8
  %102 = load i32, ptr %fromskew.addr, align 4
  %103 = load ptr, ptr %pp.addr, align 8
  %idx.ext82 = sext i32 %102 to i64
  %add.ptr83 = getelementptr inbounds i8, ptr %103, i64 %idx.ext82
  store ptr %add.ptr83, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !34

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @put4bitcmaptile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  %PALmap = alloca ptr, align 8
  %bw = alloca ptr, align 8
  %_x = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %PALmap1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 17
  %1 = load ptr, ptr %PALmap1, align 8
  store ptr %1, ptr %PALmap, align 8
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %y.addr, align 4
  %4 = load i32, ptr %fromskew.addr, align 4
  %div = sdiv i32 %4, 2
  store i32 %div, ptr %fromskew.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load i32, ptr %h.addr, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %h.addr, align 4
  %cmp = icmp ugt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %w.addr, align 4
  store i32 %6, ptr %_x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %7 = load i32, ptr %_x, align 4
  %cmp2 = icmp uge i32 %7, 2
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
  %incdec.ptr3 = getelementptr inbounds i32, ptr %12, i32 1
  store ptr %incdec.ptr3, ptr %bw, align 8
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i32, ptr %14, i32 1
  store ptr %incdec.ptr4, ptr %cp.addr, align 8
  store i32 %13, ptr %14, align 4
  %15 = load ptr, ptr %bw, align 8
  %incdec.ptr5 = getelementptr inbounds i32, ptr %15, i32 1
  store ptr %incdec.ptr5, ptr %bw, align 8
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i32, ptr %17, i32 1
  store ptr %incdec.ptr6, ptr %cp.addr, align 8
  store i32 %16, ptr %17, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %_x, align 4
  %sub = sub i32 %18, 2
  store i32 %sub, ptr %_x, align 4
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %for.cond
  %19 = load i32, ptr %_x, align 4
  %tobool = icmp ne i32 %19, 0
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
  %incdec.ptr10 = getelementptr inbounds i32, ptr %24, i32 1
  store ptr %incdec.ptr10, ptr %bw, align 8
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i32, ptr %26, i32 1
  store ptr %incdec.ptr11, ptr %cp.addr, align 8
  store i32 %25, ptr %26, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %27 = load i32, ptr %toskew.addr, align 4
  %28 = load ptr, ptr %cp.addr, align 8
  %idx.ext = sext i32 %27 to i64
  %add.ptr = getelementptr inbounds i32, ptr %28, i64 %idx.ext
  store ptr %add.ptr, ptr %cp.addr, align 8
  %29 = load i32, ptr %fromskew.addr, align 4
  %30 = load ptr, ptr %pp.addr, align 8
  %idx.ext12 = sext i32 %29 to i64
  %add.ptr13 = getelementptr inbounds i8, ptr %30, i64 %idx.ext12
  store ptr %add.ptr13, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !36

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @put2bitcmaptile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  %PALmap = alloca ptr, align 8
  %bw = alloca ptr, align 8
  %_x = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %PALmap1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 17
  %1 = load ptr, ptr %PALmap1, align 8
  store ptr %1, ptr %PALmap, align 8
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %y.addr, align 4
  %4 = load i32, ptr %fromskew.addr, align 4
  %div = sdiv i32 %4, 4
  store i32 %div, ptr %fromskew.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load i32, ptr %h.addr, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %h.addr, align 4
  %cmp = icmp ugt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %w.addr, align 4
  store i32 %6, ptr %_x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %7 = load i32, ptr %_x, align 4
  %cmp2 = icmp uge i32 %7, 4
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
  %incdec.ptr3 = getelementptr inbounds i32, ptr %12, i32 1
  store ptr %incdec.ptr3, ptr %bw, align 8
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i32, ptr %14, i32 1
  store ptr %incdec.ptr4, ptr %cp.addr, align 8
  store i32 %13, ptr %14, align 4
  %15 = load ptr, ptr %bw, align 8
  %incdec.ptr5 = getelementptr inbounds i32, ptr %15, i32 1
  store ptr %incdec.ptr5, ptr %bw, align 8
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i32, ptr %17, i32 1
  store ptr %incdec.ptr6, ptr %cp.addr, align 8
  store i32 %16, ptr %17, align 4
  %18 = load ptr, ptr %bw, align 8
  %incdec.ptr7 = getelementptr inbounds i32, ptr %18, i32 1
  store ptr %incdec.ptr7, ptr %bw, align 8
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i32, ptr %20, i32 1
  store ptr %incdec.ptr8, ptr %cp.addr, align 8
  store i32 %19, ptr %20, align 4
  %21 = load ptr, ptr %bw, align 8
  %incdec.ptr9 = getelementptr inbounds i32, ptr %21, i32 1
  store ptr %incdec.ptr9, ptr %bw, align 8
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i32, ptr %23, i32 1
  store ptr %incdec.ptr10, ptr %cp.addr, align 8
  store i32 %22, ptr %23, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, ptr %_x, align 4
  %sub = sub i32 %24, 4
  store i32 %sub, ptr %_x, align 4
  br label %for.cond, !llvm.loop !37

for.end:                                          ; preds = %for.cond
  %25 = load i32, ptr %_x, align 4
  %cmp11 = icmp ugt i32 %25, 0
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
  %30 = load i32, ptr %_x, align 4
  switch i32 %30, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb17
    i32 1, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.then
  %31 = load ptr, ptr %bw, align 8
  %incdec.ptr15 = getelementptr inbounds i32, ptr %31, i32 1
  store ptr %incdec.ptr15, ptr %bw, align 8
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i32, ptr %33, i32 1
  store ptr %incdec.ptr16, ptr %cp.addr, align 8
  store i32 %32, ptr %33, align 4
  br label %sw.bb17

sw.bb17:                                          ; preds = %if.then, %sw.bb
  %34 = load ptr, ptr %bw, align 8
  %incdec.ptr18 = getelementptr inbounds i32, ptr %34, i32 1
  store ptr %incdec.ptr18, ptr %bw, align 8
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr19 = getelementptr inbounds i32, ptr %36, i32 1
  store ptr %incdec.ptr19, ptr %cp.addr, align 8
  store i32 %35, ptr %36, align 4
  br label %sw.bb20

sw.bb20:                                          ; preds = %if.then, %sw.bb17
  %37 = load ptr, ptr %bw, align 8
  %incdec.ptr21 = getelementptr inbounds i32, ptr %37, i32 1
  store ptr %incdec.ptr21, ptr %bw, align 8
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i32, ptr %39, i32 1
  store ptr %incdec.ptr22, ptr %cp.addr, align 8
  store i32 %38, ptr %39, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %if.then
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %for.end
  %40 = load i32, ptr %toskew.addr, align 4
  %41 = load ptr, ptr %cp.addr, align 8
  %idx.ext = sext i32 %40 to i64
  %add.ptr = getelementptr inbounds i32, ptr %41, i64 %idx.ext
  store ptr %add.ptr, ptr %cp.addr, align 8
  %42 = load i32, ptr %fromskew.addr, align 4
  %43 = load ptr, ptr %pp.addr, align 8
  %idx.ext23 = sext i32 %42 to i64
  %add.ptr24 = getelementptr inbounds i8, ptr %43, i64 %idx.ext23
  store ptr %add.ptr24, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !38

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @put1bitcmaptile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  %PALmap = alloca ptr, align 8
  %bw = alloca ptr, align 8
  %_x = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %PALmap1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 17
  %1 = load ptr, ptr %PALmap1, align 8
  store ptr %1, ptr %PALmap, align 8
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %y.addr, align 4
  %4 = load i32, ptr %fromskew.addr, align 4
  %div = sdiv i32 %4, 8
  store i32 %div, ptr %fromskew.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load i32, ptr %h.addr, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %h.addr, align 4
  %cmp = icmp ugt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %w.addr, align 4
  store i32 %6, ptr %_x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %7 = load i32, ptr %_x, align 4
  %cmp2 = icmp uge i32 %7, 8
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
  %incdec.ptr3 = getelementptr inbounds i32, ptr %12, i32 1
  store ptr %incdec.ptr3, ptr %bw, align 8
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i32, ptr %14, i32 1
  store ptr %incdec.ptr4, ptr %cp.addr, align 8
  store i32 %13, ptr %14, align 4
  %15 = load ptr, ptr %bw, align 8
  %incdec.ptr5 = getelementptr inbounds i32, ptr %15, i32 1
  store ptr %incdec.ptr5, ptr %bw, align 8
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i32, ptr %17, i32 1
  store ptr %incdec.ptr6, ptr %cp.addr, align 8
  store i32 %16, ptr %17, align 4
  %18 = load ptr, ptr %bw, align 8
  %incdec.ptr7 = getelementptr inbounds i32, ptr %18, i32 1
  store ptr %incdec.ptr7, ptr %bw, align 8
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i32, ptr %20, i32 1
  store ptr %incdec.ptr8, ptr %cp.addr, align 8
  store i32 %19, ptr %20, align 4
  %21 = load ptr, ptr %bw, align 8
  %incdec.ptr9 = getelementptr inbounds i32, ptr %21, i32 1
  store ptr %incdec.ptr9, ptr %bw, align 8
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i32, ptr %23, i32 1
  store ptr %incdec.ptr10, ptr %cp.addr, align 8
  store i32 %22, ptr %23, align 4
  %24 = load ptr, ptr %bw, align 8
  %incdec.ptr11 = getelementptr inbounds i32, ptr %24, i32 1
  store ptr %incdec.ptr11, ptr %bw, align 8
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i32, ptr %26, i32 1
  store ptr %incdec.ptr12, ptr %cp.addr, align 8
  store i32 %25, ptr %26, align 4
  %27 = load ptr, ptr %bw, align 8
  %incdec.ptr13 = getelementptr inbounds i32, ptr %27, i32 1
  store ptr %incdec.ptr13, ptr %bw, align 8
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i32, ptr %29, i32 1
  store ptr %incdec.ptr14, ptr %cp.addr, align 8
  store i32 %28, ptr %29, align 4
  %30 = load ptr, ptr %bw, align 8
  %incdec.ptr15 = getelementptr inbounds i32, ptr %30, i32 1
  store ptr %incdec.ptr15, ptr %bw, align 8
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i32, ptr %32, i32 1
  store ptr %incdec.ptr16, ptr %cp.addr, align 8
  store i32 %31, ptr %32, align 4
  %33 = load ptr, ptr %bw, align 8
  %incdec.ptr17 = getelementptr inbounds i32, ptr %33, i32 1
  store ptr %incdec.ptr17, ptr %bw, align 8
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr18 = getelementptr inbounds i32, ptr %35, i32 1
  store ptr %incdec.ptr18, ptr %cp.addr, align 8
  store i32 %34, ptr %35, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, ptr %_x, align 4
  %sub = sub i32 %36, 8
  store i32 %sub, ptr %_x, align 4
  br label %for.cond, !llvm.loop !39

for.end:                                          ; preds = %for.cond
  %37 = load i32, ptr %_x, align 4
  %cmp19 = icmp ugt i32 %37, 0
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
  %42 = load i32, ptr %_x, align 4
  switch i32 %42, label %sw.epilog [
    i32 7, label %sw.bb
    i32 6, label %sw.bb25
    i32 5, label %sw.bb28
    i32 4, label %sw.bb31
    i32 3, label %sw.bb34
    i32 2, label %sw.bb37
    i32 1, label %sw.bb40
  ]

sw.bb:                                            ; preds = %if.then
  %43 = load ptr, ptr %bw, align 8
  %incdec.ptr23 = getelementptr inbounds i32, ptr %43, i32 1
  store ptr %incdec.ptr23, ptr %bw, align 8
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr24 = getelementptr inbounds i32, ptr %45, i32 1
  store ptr %incdec.ptr24, ptr %cp.addr, align 8
  store i32 %44, ptr %45, align 4
  br label %sw.bb25

sw.bb25:                                          ; preds = %if.then, %sw.bb
  %46 = load ptr, ptr %bw, align 8
  %incdec.ptr26 = getelementptr inbounds i32, ptr %46, i32 1
  store ptr %incdec.ptr26, ptr %bw, align 8
  %47 = load i32, ptr %46, align 4
  %48 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr27 = getelementptr inbounds i32, ptr %48, i32 1
  store ptr %incdec.ptr27, ptr %cp.addr, align 8
  store i32 %47, ptr %48, align 4
  br label %sw.bb28

sw.bb28:                                          ; preds = %if.then, %sw.bb25
  %49 = load ptr, ptr %bw, align 8
  %incdec.ptr29 = getelementptr inbounds i32, ptr %49, i32 1
  store ptr %incdec.ptr29, ptr %bw, align 8
  %50 = load i32, ptr %49, align 4
  %51 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i32, ptr %51, i32 1
  store ptr %incdec.ptr30, ptr %cp.addr, align 8
  store i32 %50, ptr %51, align 4
  br label %sw.bb31

sw.bb31:                                          ; preds = %if.then, %sw.bb28
  %52 = load ptr, ptr %bw, align 8
  %incdec.ptr32 = getelementptr inbounds i32, ptr %52, i32 1
  store ptr %incdec.ptr32, ptr %bw, align 8
  %53 = load i32, ptr %52, align 4
  %54 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr33 = getelementptr inbounds i32, ptr %54, i32 1
  store ptr %incdec.ptr33, ptr %cp.addr, align 8
  store i32 %53, ptr %54, align 4
  br label %sw.bb34

sw.bb34:                                          ; preds = %if.then, %sw.bb31
  %55 = load ptr, ptr %bw, align 8
  %incdec.ptr35 = getelementptr inbounds i32, ptr %55, i32 1
  store ptr %incdec.ptr35, ptr %bw, align 8
  %56 = load i32, ptr %55, align 4
  %57 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr36 = getelementptr inbounds i32, ptr %57, i32 1
  store ptr %incdec.ptr36, ptr %cp.addr, align 8
  store i32 %56, ptr %57, align 4
  br label %sw.bb37

sw.bb37:                                          ; preds = %if.then, %sw.bb34
  %58 = load ptr, ptr %bw, align 8
  %incdec.ptr38 = getelementptr inbounds i32, ptr %58, i32 1
  store ptr %incdec.ptr38, ptr %bw, align 8
  %59 = load i32, ptr %58, align 4
  %60 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr39 = getelementptr inbounds i32, ptr %60, i32 1
  store ptr %incdec.ptr39, ptr %cp.addr, align 8
  store i32 %59, ptr %60, align 4
  br label %sw.bb40

sw.bb40:                                          ; preds = %if.then, %sw.bb37
  %61 = load ptr, ptr %bw, align 8
  %incdec.ptr41 = getelementptr inbounds i32, ptr %61, i32 1
  store ptr %incdec.ptr41, ptr %bw, align 8
  %62 = load i32, ptr %61, align 4
  %63 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr42 = getelementptr inbounds i32, ptr %63, i32 1
  store ptr %incdec.ptr42, ptr %cp.addr, align 8
  store i32 %62, ptr %63, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb40, %if.then
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %for.end
  %64 = load i32, ptr %toskew.addr, align 4
  %65 = load ptr, ptr %cp.addr, align 8
  %idx.ext = sext i32 %64 to i64
  %add.ptr = getelementptr inbounds i32, ptr %65, i64 %idx.ext
  store ptr %add.ptr, ptr %cp.addr, align 8
  %66 = load i32, ptr %fromskew.addr, align 4
  %67 = load ptr, ptr %pp.addr, align 8
  %idx.ext43 = sext i32 %66 to i64
  %add.ptr44 = getelementptr inbounds i8, ptr %67, i64 %idx.ext43
  store ptr %add.ptr44, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !40

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putgreytile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  %BWmap = alloca ptr, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %BWmap1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 16
  %1 = load ptr, ptr %BWmap1, align 8
  store ptr %1, ptr %BWmap, align 8
  %2 = load i32, ptr %y.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %3 = load i32, ptr %h.addr, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %h.addr, align 4
  %cmp = icmp ugt i32 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %w.addr, align 4
  store i32 %4, ptr %x.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %5 = load i32, ptr %x.addr, align 4
  %dec2 = add i32 %5, -1
  store i32 %dec2, ptr %x.addr, align 4
  %cmp3 = icmp ugt i32 %5, 0
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
  %arrayidx4 = getelementptr inbounds i32, ptr %9, i64 0
  %10 = load i32, ptr %arrayidx4, align 4
  %11 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i32, ptr %11, i32 1
  store ptr %incdec.ptr5, ptr %cp.addr, align 8
  store i32 %10, ptr %11, align 4
  br label %for.cond, !llvm.loop !41

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %toskew.addr, align 4
  %13 = load ptr, ptr %cp.addr, align 8
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i32, ptr %13, i64 %idx.ext
  store ptr %add.ptr, ptr %cp.addr, align 8
  %14 = load i32, ptr %fromskew.addr, align 4
  %15 = load ptr, ptr %pp.addr, align 8
  %idx.ext6 = sext i32 %14 to i64
  %add.ptr7 = getelementptr inbounds i8, ptr %15, i64 %idx.ext6
  store ptr %add.ptr7, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !42

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @put4bitbwtile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  %BWmap = alloca ptr, align 8
  %bw = alloca ptr, align 8
  %_x = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %BWmap1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 16
  %1 = load ptr, ptr %BWmap1, align 8
  store ptr %1, ptr %BWmap, align 8
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %y.addr, align 4
  %4 = load i32, ptr %fromskew.addr, align 4
  %div = sdiv i32 %4, 2
  store i32 %div, ptr %fromskew.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load i32, ptr %h.addr, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %h.addr, align 4
  %cmp = icmp ugt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %w.addr, align 4
  store i32 %6, ptr %_x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %7 = load i32, ptr %_x, align 4
  %cmp2 = icmp uge i32 %7, 2
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
  %incdec.ptr3 = getelementptr inbounds i32, ptr %12, i32 1
  store ptr %incdec.ptr3, ptr %bw, align 8
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i32, ptr %14, i32 1
  store ptr %incdec.ptr4, ptr %cp.addr, align 8
  store i32 %13, ptr %14, align 4
  %15 = load ptr, ptr %bw, align 8
  %incdec.ptr5 = getelementptr inbounds i32, ptr %15, i32 1
  store ptr %incdec.ptr5, ptr %bw, align 8
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i32, ptr %17, i32 1
  store ptr %incdec.ptr6, ptr %cp.addr, align 8
  store i32 %16, ptr %17, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %_x, align 4
  %sub = sub i32 %18, 2
  store i32 %sub, ptr %_x, align 4
  br label %for.cond, !llvm.loop !43

for.end:                                          ; preds = %for.cond
  %19 = load i32, ptr %_x, align 4
  %tobool = icmp ne i32 %19, 0
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
  %incdec.ptr10 = getelementptr inbounds i32, ptr %24, i32 1
  store ptr %incdec.ptr10, ptr %bw, align 8
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i32, ptr %26, i32 1
  store ptr %incdec.ptr11, ptr %cp.addr, align 8
  store i32 %25, ptr %26, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %27 = load i32, ptr %toskew.addr, align 4
  %28 = load ptr, ptr %cp.addr, align 8
  %idx.ext = sext i32 %27 to i64
  %add.ptr = getelementptr inbounds i32, ptr %28, i64 %idx.ext
  store ptr %add.ptr, ptr %cp.addr, align 8
  %29 = load i32, ptr %fromskew.addr, align 4
  %30 = load ptr, ptr %pp.addr, align 8
  %idx.ext12 = sext i32 %29 to i64
  %add.ptr13 = getelementptr inbounds i8, ptr %30, i64 %idx.ext12
  store ptr %add.ptr13, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !44

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @put2bitbwtile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  %BWmap = alloca ptr, align 8
  %bw = alloca ptr, align 8
  %_x = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %BWmap1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 16
  %1 = load ptr, ptr %BWmap1, align 8
  store ptr %1, ptr %BWmap, align 8
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %y.addr, align 4
  %4 = load i32, ptr %fromskew.addr, align 4
  %div = sdiv i32 %4, 4
  store i32 %div, ptr %fromskew.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load i32, ptr %h.addr, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %h.addr, align 4
  %cmp = icmp ugt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %w.addr, align 4
  store i32 %6, ptr %_x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %7 = load i32, ptr %_x, align 4
  %cmp2 = icmp uge i32 %7, 4
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
  %incdec.ptr3 = getelementptr inbounds i32, ptr %12, i32 1
  store ptr %incdec.ptr3, ptr %bw, align 8
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i32, ptr %14, i32 1
  store ptr %incdec.ptr4, ptr %cp.addr, align 8
  store i32 %13, ptr %14, align 4
  %15 = load ptr, ptr %bw, align 8
  %incdec.ptr5 = getelementptr inbounds i32, ptr %15, i32 1
  store ptr %incdec.ptr5, ptr %bw, align 8
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i32, ptr %17, i32 1
  store ptr %incdec.ptr6, ptr %cp.addr, align 8
  store i32 %16, ptr %17, align 4
  %18 = load ptr, ptr %bw, align 8
  %incdec.ptr7 = getelementptr inbounds i32, ptr %18, i32 1
  store ptr %incdec.ptr7, ptr %bw, align 8
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i32, ptr %20, i32 1
  store ptr %incdec.ptr8, ptr %cp.addr, align 8
  store i32 %19, ptr %20, align 4
  %21 = load ptr, ptr %bw, align 8
  %incdec.ptr9 = getelementptr inbounds i32, ptr %21, i32 1
  store ptr %incdec.ptr9, ptr %bw, align 8
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i32, ptr %23, i32 1
  store ptr %incdec.ptr10, ptr %cp.addr, align 8
  store i32 %22, ptr %23, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, ptr %_x, align 4
  %sub = sub i32 %24, 4
  store i32 %sub, ptr %_x, align 4
  br label %for.cond, !llvm.loop !45

for.end:                                          ; preds = %for.cond
  %25 = load i32, ptr %_x, align 4
  %cmp11 = icmp ugt i32 %25, 0
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
  %30 = load i32, ptr %_x, align 4
  switch i32 %30, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb17
    i32 1, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.then
  %31 = load ptr, ptr %bw, align 8
  %incdec.ptr15 = getelementptr inbounds i32, ptr %31, i32 1
  store ptr %incdec.ptr15, ptr %bw, align 8
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i32, ptr %33, i32 1
  store ptr %incdec.ptr16, ptr %cp.addr, align 8
  store i32 %32, ptr %33, align 4
  br label %sw.bb17

sw.bb17:                                          ; preds = %if.then, %sw.bb
  %34 = load ptr, ptr %bw, align 8
  %incdec.ptr18 = getelementptr inbounds i32, ptr %34, i32 1
  store ptr %incdec.ptr18, ptr %bw, align 8
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr19 = getelementptr inbounds i32, ptr %36, i32 1
  store ptr %incdec.ptr19, ptr %cp.addr, align 8
  store i32 %35, ptr %36, align 4
  br label %sw.bb20

sw.bb20:                                          ; preds = %if.then, %sw.bb17
  %37 = load ptr, ptr %bw, align 8
  %incdec.ptr21 = getelementptr inbounds i32, ptr %37, i32 1
  store ptr %incdec.ptr21, ptr %bw, align 8
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i32, ptr %39, i32 1
  store ptr %incdec.ptr22, ptr %cp.addr, align 8
  store i32 %38, ptr %39, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %if.then
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %for.end
  %40 = load i32, ptr %toskew.addr, align 4
  %41 = load ptr, ptr %cp.addr, align 8
  %idx.ext = sext i32 %40 to i64
  %add.ptr = getelementptr inbounds i32, ptr %41, i64 %idx.ext
  store ptr %add.ptr, ptr %cp.addr, align 8
  %42 = load i32, ptr %fromskew.addr, align 4
  %43 = load ptr, ptr %pp.addr, align 8
  %idx.ext23 = sext i32 %42 to i64
  %add.ptr24 = getelementptr inbounds i8, ptr %43, i64 %idx.ext23
  store ptr %add.ptr24, ptr %pp.addr, align 8
  br label %while.cond, !llvm.loop !46

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @put1bitbwtile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  %BWmap = alloca ptr, align 8
  %bw = alloca ptr, align 8
  %_x = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %BWmap1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 16
  %1 = load ptr, ptr %BWmap1, align 8
  store ptr %1, ptr %BWmap, align 8
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %y.addr, align 4
  %4 = load i32, ptr %fromskew.addr, align 4
  %div = sdiv i32 %4, 8
  store i32 %div, ptr %fromskew.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load i32, ptr %h.addr, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %h.addr, align 4
  %cmp = icmp ugt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %w.addr, align 4
  store i32 %6, ptr %_x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %7 = load i32, ptr %_x, align 4
  %cmp2 = icmp uge i32 %7, 8
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
  %incdec.ptr3 = getelementptr inbounds i32, ptr %12, i32 1
  store ptr %incdec.ptr3, ptr %bw, align 8
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i32, ptr %14, i32 1
  store ptr %incdec.ptr4, ptr %cp.addr, align 8
  store i32 %13, ptr %14, align 4
  %15 = load ptr, ptr %bw, align 8
  %incdec.ptr5 = getelementptr inbounds i32, ptr %15, i32 1
  store ptr %incdec.ptr5, ptr %bw, align 8
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i32, ptr %17, i32 1
  store ptr %incdec.ptr6, ptr %cp.addr, align 8
  store i32 %16, ptr %17, align 4
  %18 = load ptr, ptr %bw, align 8
  %incdec.ptr7 = getelementptr inbounds i32, ptr %18, i32 1
  store ptr %incdec.ptr7, ptr %bw, align 8
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i32, ptr %20, i32 1
  store ptr %incdec.ptr8, ptr %cp.addr, align 8
  store i32 %19, ptr %20, align 4
  %21 = load ptr, ptr %bw, align 8
  %incdec.ptr9 = getelementptr inbounds i32, ptr %21, i32 1
  store ptr %incdec.ptr9, ptr %bw, align 8
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i32, ptr %23, i32 1
  store ptr %incdec.ptr10, ptr %cp.addr, align 8
  store i32 %22, ptr %23, align 4
  %24 = load ptr, ptr %bw, align 8
  %incdec.ptr11 = getelementptr inbounds i32, ptr %24, i32 1
  store ptr %incdec.ptr11, ptr %bw, align 8
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i32, ptr %26, i32 1
  store ptr %incdec.ptr12, ptr %cp.addr, align 8
  store i32 %25, ptr %26, align 4
  %27 = load ptr, ptr %bw, align 8
  %incdec.ptr13 = getelementptr inbounds i32, ptr %27, i32 1
  store ptr %incdec.ptr13, ptr %bw, align 8
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i32, ptr %29, i32 1
  store ptr %incdec.ptr14, ptr %cp.addr, align 8
  store i32 %28, ptr %29, align 4
  %30 = load ptr, ptr %bw, align 8
  %incdec.ptr15 = getelementptr inbounds i32, ptr %30, i32 1
  store ptr %incdec.ptr15, ptr %bw, align 8
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i32, ptr %32, i32 1
  store ptr %incdec.ptr16, ptr %cp.addr, align 8
  store i32 %31, ptr %32, align 4
  %33 = load ptr, ptr %bw, align 8
  %incdec.ptr17 = getelementptr inbounds i32, ptr %33, i32 1
  store ptr %incdec.ptr17, ptr %bw, align 8
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr18 = getelementptr inbounds i32, ptr %35, i32 1
  store ptr %incdec.ptr18, ptr %cp.addr, align 8
  store i32 %34, ptr %35, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, ptr %_x, align 4
  %sub = sub i32 %36, 8
  store i32 %sub, ptr %_x, align 4
  br label %for.cond, !llvm.loop !47

for.end:                                          ; preds = %for.cond
  %37 = load i32, ptr %_x, align 4
  %cmp19 = icmp ugt i32 %37, 0
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
  %42 = load i32, ptr %_x, align 4
  switch i32 %42, label %sw.epilog [
    i32 7, label %sw.bb
    i32 6, label %sw.bb25
    i32 5, label %sw.bb28
    i32 4, label %sw.bb31
    i32 3, label %sw.bb34
    i32 2, label %sw.bb37
    i32 1, label %sw.bb40
  ]

sw.bb:                                            ; preds = %if.then
  %43 = load ptr, ptr %bw, align 8
  %incdec.ptr23 = getelementptr inbounds i32, ptr %43, i32 1
  store ptr %incdec.ptr23, ptr %bw, align 8
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr24 = getelementptr inbounds i32, ptr %45, i32 1
  store ptr %incdec.ptr24, ptr %cp.addr, align 8
  store i32 %44, ptr %45, align 4
  br label %sw.bb25

sw.bb25:                                          ; preds = %if.then, %sw.bb
  %46 = load ptr, ptr %bw, align 8
  %incdec.ptr26 = getelementptr inbounds i32, ptr %46, i32 1
  store ptr %incdec.ptr26, ptr %bw, align 8
  %47 = load i32, ptr %46, align 4
  %48 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr27 = getelementptr inbounds i32, ptr %48, i32 1
  store ptr %incdec.ptr27, ptr %cp.addr, align 8
  store i32 %47, ptr %48, align 4
  br label %sw.bb28

sw.bb28:                                          ; preds = %if.then, %sw.bb25
  %49 = load ptr, ptr %bw, align 8
  %incdec.ptr29 = getelementptr inbounds i32, ptr %49, i32 1
  store ptr %incdec.ptr29, ptr %bw, align 8
  %50 = load i32, ptr %49, align 4
  %51 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i32, ptr %51, i32 1
  store ptr %incdec.ptr30, ptr %cp.addr, align 8
  store i32 %50, ptr %51, align 4
  br label %sw.bb31

sw.bb31:                                          ; preds = %if.then, %sw.bb28
  %52 = load ptr, ptr %bw, align 8
  %incdec.ptr32 = getelementptr inbounds i32, ptr %52, i32 1
  store ptr %incdec.ptr32, ptr %bw, align 8
  %53 = load i32, ptr %52, align 4
  %54 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr33 = getelementptr inbounds i32, ptr %54, i32 1
  store ptr %incdec.ptr33, ptr %cp.addr, align 8
  store i32 %53, ptr %54, align 4
  br label %sw.bb34

sw.bb34:                                          ; preds = %if.then, %sw.bb31
  %55 = load ptr, ptr %bw, align 8
  %incdec.ptr35 = getelementptr inbounds i32, ptr %55, i32 1
  store ptr %incdec.ptr35, ptr %bw, align 8
  %56 = load i32, ptr %55, align 4
  %57 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr36 = getelementptr inbounds i32, ptr %57, i32 1
  store ptr %incdec.ptr36, ptr %cp.addr, align 8
  store i32 %56, ptr %57, align 4
  br label %sw.bb37

sw.bb37:                                          ; preds = %if.then, %sw.bb34
  %58 = load ptr, ptr %bw, align 8
  %incdec.ptr38 = getelementptr inbounds i32, ptr %58, i32 1
  store ptr %incdec.ptr38, ptr %bw, align 8
  %59 = load i32, ptr %58, align 4
  %60 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr39 = getelementptr inbounds i32, ptr %60, i32 1
  store ptr %incdec.ptr39, ptr %cp.addr, align 8
  store i32 %59, ptr %60, align 4
  br label %sw.bb40

sw.bb40:                                          ; preds = %if.then, %sw.bb37
  %61 = load ptr, ptr %bw, align 8
  %incdec.ptr41 = getelementptr inbounds i32, ptr %61, i32 1
  store ptr %incdec.ptr41, ptr %bw, align 8
  %62 = load i32, ptr %61, align 4
  %63 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr42 = getelementptr inbounds i32, ptr %63, i32 1
  store ptr %incdec.ptr42, ptr %cp.addr, align 8
  store i32 %62, ptr %63, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb40, %if.then
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %for.end
  %64 = load i32, ptr %toskew.addr, align 4
  %65 = load ptr, ptr %cp.addr, align 8
  %idx.ext = sext i32 %64 to i64
  %add.ptr = getelementptr inbounds i32, ptr %65, i64 %idx.ext
  store ptr %add.ptr, ptr %cp.addr, align 8
  %66 = load i32, ptr %fromskew.addr, align 4
  %67 = load ptr, ptr %pp.addr, align 8
  %idx.ext43 = sext i32 %66 to i64
  %add.ptr44 = getelementptr inbounds i8, ptr %67, i64 %idx.ext43
  store ptr %add.ptr44, ptr %pp.addr, align 8
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
  %call = call ptr @_TIFFmalloc(i32 noundef 5176)
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
  %call9 = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %12, i32 noundef 529, ptr noundef %coeffs)
  %13 = load ptr, ptr %coeffs, align 8
  %14 = load ptr, ptr %img.addr, align 8
  %ycbcr10 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %14, i32 0, i32 18
  %15 = load ptr, ptr %ycbcr10, align 8
  %coeffs11 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %15, i32 0, i32 5
  %arraydecay = getelementptr inbounds [3 x float], ptr %coeffs11, i64 0, i64 0
  %call12 = call i32 @_TIFFmemcmp(ptr noundef %13, ptr noundef %arraydecay, i32 noundef 12)
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
  %call20 = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %21, i32 noundef 530, ptr noundef %hs, ptr noundef %vs)
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
  %x = alloca i32, align 4
  %range = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %bitspersample = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 6
  %1 = load i16, ptr %bitspersample, align 4
  %conv = zext i16 %1 to i32
  %sh_prom = zext i32 %conv to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub nsw i64 %shl, 1
  %conv1 = trunc i64 %sub to i32
  store i32 %conv1, ptr %range, align 4
  %2 = load i32, ptr %range, align 4
  %add = add nsw i32 %2, 1
  %conv2 = sext i32 %add to i64
  %mul = mul i64 %conv2, 1
  %conv3 = trunc i64 %mul to i32
  %call = call ptr @_TIFFmalloc(i32 noundef %conv3)
  %3 = load ptr, ptr %img.addr, align 8
  %Map = getelementptr inbounds %struct._TIFFRGBAImage, ptr %3, i32 0, i32 15
  store ptr %call, ptr %Map, align 8
  %4 = load ptr, ptr %img.addr, align 8
  %Map4 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %4, i32 0, i32 15
  %5 = load ptr, ptr %Map4, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %img.addr, align 8
  %tif = getelementptr inbounds %struct._TIFFRGBAImage, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %tif, align 8
  %call6 = call ptr @TIFFFileName(ptr noundef %7)
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call6, ptr noundef @.str.29)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %img.addr, align 8
  %photometric = getelementptr inbounds %struct._TIFFRGBAImage, ptr %8, i32 0, i32 9
  %9 = load i16, ptr %photometric, align 2
  %conv7 = zext i16 %9 to i32
  %cmp8 = icmp eq i32 %conv7, 0
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  store i32 0, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then10
  %10 = load i32, ptr %x, align 4
  %11 = load i32, ptr %range, align 4
  %cmp11 = icmp sle i32 %10, %11
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, ptr %range, align 4
  %13 = load i32, ptr %x, align 4
  %sub13 = sub nsw i32 %12, %13
  %mul14 = mul nsw i32 %sub13, 255
  %14 = load i32, ptr %range, align 4
  %div = sdiv i32 %mul14, %14
  %conv15 = trunc i32 %div to i8
  %15 = load ptr, ptr %img.addr, align 8
  %Map16 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %15, i32 0, i32 15
  %16 = load ptr, ptr %Map16, align 8
  %17 = load i32, ptr %x, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds i8, ptr %16, i64 %idxprom
  store i8 %conv15, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %x, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %x, align 4
  br label %for.cond, !llvm.loop !49

for.end:                                          ; preds = %for.cond
  br label %if.end30

if.else:                                          ; preds = %if.end
  store i32 0, ptr %x, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc27, %if.else
  %19 = load i32, ptr %x, align 4
  %20 = load i32, ptr %range, align 4
  %cmp18 = icmp sle i32 %19, %20
  br i1 %cmp18, label %for.body20, label %for.end29

for.body20:                                       ; preds = %for.cond17
  %21 = load i32, ptr %x, align 4
  %mul21 = mul nsw i32 %21, 255
  %22 = load i32, ptr %range, align 4
  %div22 = sdiv i32 %mul21, %22
  %conv23 = trunc i32 %div22 to i8
  %23 = load ptr, ptr %img.addr, align 8
  %Map24 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %23, i32 0, i32 15
  %24 = load ptr, ptr %Map24, align 8
  %25 = load i32, ptr %x, align 4
  %idxprom25 = sext i32 %25 to i64
  %arrayidx26 = getelementptr inbounds i8, ptr %24, i64 %idxprom25
  store i8 %conv23, ptr %arrayidx26, align 1
  br label %for.inc27

for.inc27:                                        ; preds = %for.body20
  %26 = load i32, ptr %x, align 4
  %inc28 = add nsw i32 %26, 1
  store i32 %inc28, ptr %x, align 4
  br label %for.cond17, !llvm.loop !50

for.end29:                                        ; preds = %for.cond17
  br label %if.end30

if.end30:                                         ; preds = %for.end29, %for.end
  %27 = load ptr, ptr %img.addr, align 8
  %bitspersample31 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %27, i32 0, i32 6
  %28 = load i16, ptr %bitspersample31, align 4
  %conv32 = zext i16 %28 to i32
  %cmp33 = icmp sle i32 %conv32, 8
  br i1 %cmp33, label %land.lhs.true, label %if.end49

land.lhs.true:                                    ; preds = %if.end30
  %29 = load ptr, ptr %img.addr, align 8
  %photometric35 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %29, i32 0, i32 9
  %30 = load i16, ptr %photometric35, align 2
  %conv36 = zext i16 %30 to i32
  %cmp37 = icmp eq i32 %conv36, 1
  br i1 %cmp37, label %if.then43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %31 = load ptr, ptr %img.addr, align 8
  %photometric39 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %31, i32 0, i32 9
  %32 = load i16, ptr %photometric39, align 2
  %conv40 = zext i16 %32 to i32
  %cmp41 = icmp eq i32 %conv40, 0
  br i1 %cmp41, label %if.then43, label %if.end49

if.then43:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %33 = load ptr, ptr %img.addr, align 8
  %call44 = call i32 @makebwmap(ptr noundef %33)
  %tobool = icmp ne i32 %call44, 0
  br i1 %tobool, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.then43
  store i32 0, ptr %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.then43
  %34 = load ptr, ptr %img.addr, align 8
  %Map47 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %34, i32 0, i32 15
  %35 = load ptr, ptr %Map47, align 8
  call void @_TIFFfree(ptr noundef %35)
  %36 = load ptr, ptr %img.addr, align 8
  %Map48 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %36, i32 0, i32 15
  store ptr null, ptr %Map48, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.end46, %lor.lhs.false, %if.end30
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end49, %if.then45, %if.then
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
  %7 = load i16, ptr %bitspersample, align 4
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
  %7 = load i16, ptr %bitspersample, align 4
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
  %1 = load i16, ptr %bitspersample1, align 4
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
  %mul3 = mul i64 %conv2, 4
  %add = add i64 2048, %mul3
  %conv4 = trunc i64 %add to i32
  %call = call ptr @_TIFFmalloc(i32 noundef %conv4)
  %10 = load ptr, ptr %img.addr, align 8
  %PALmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %10, i32 0, i32 17
  store ptr %call, ptr %PALmap, align 8
  %11 = load ptr, ptr %img.addr, align 8
  %PALmap5 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %11, i32 0, i32 17
  %12 = load ptr, ptr %PALmap5, align 8
  %cmp = icmp eq ptr %12, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load ptr, ptr %img.addr, align 8
  %tif = getelementptr inbounds %struct._TIFFRGBAImage, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %tif, align 8
  %call7 = call ptr @TIFFFileName(ptr noundef %14)
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call7, ptr noundef @.str.31)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %15 = load ptr, ptr %img.addr, align 8
  %PALmap8 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %15, i32 0, i32 17
  %16 = load ptr, ptr %PALmap8, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %16, i64 256
  store ptr %add.ptr, ptr %p, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i32, ptr %i, align 4
  %cmp9 = icmp slt i32 %17, 256
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %p, align 8
  %19 = load ptr, ptr %img.addr, align 8
  %PALmap11 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %19, i32 0, i32 17
  %20 = load ptr, ptr %PALmap11, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %20, i64 %idxprom
  store ptr %18, ptr %arrayidx, align 8
  %22 = load i32, ptr %bitspersample, align 4
  switch i32 %22, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb173
    i32 4, label %sw.bb256
    i32 8, label %sw.bb297
  ]

sw.bb:                                            ; preds = %for.body
  %23 = load i32, ptr %i, align 4
  %shr = ashr i32 %23, 7
  %conv12 = trunc i32 %shr to i8
  store i8 %conv12, ptr %c, align 1
  %24 = load ptr, ptr %r, align 8
  %25 = load i8, ptr %c, align 1
  %idxprom13 = zext i8 %25 to i64
  %arrayidx14 = getelementptr inbounds i16, ptr %24, i64 %idxprom13
  %26 = load i16, ptr %arrayidx14, align 2
  %conv15 = zext i16 %26 to i32
  %and = and i32 %conv15, 255
  %27 = load ptr, ptr %g, align 8
  %28 = load i8, ptr %c, align 1
  %idxprom16 = zext i8 %28 to i64
  %arrayidx17 = getelementptr inbounds i16, ptr %27, i64 %idxprom16
  %29 = load i16, ptr %arrayidx17, align 2
  %conv18 = zext i16 %29 to i32
  %and19 = and i32 %conv18, 255
  %shl = shl i32 %and19, 8
  %or = or i32 %and, %shl
  %30 = load ptr, ptr %b, align 8
  %31 = load i8, ptr %c, align 1
  %idxprom20 = zext i8 %31 to i64
  %arrayidx21 = getelementptr inbounds i16, ptr %30, i64 %idxprom20
  %32 = load i16, ptr %arrayidx21, align 2
  %conv22 = zext i16 %32 to i32
  %and23 = and i32 %conv22, 255
  %shl24 = shl i32 %and23, 16
  %or25 = or i32 %or, %shl24
  %or26 = or i32 %or25, -16777216
  %33 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %33, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  store i32 %or26, ptr %33, align 4
  %34 = load i32, ptr %i, align 4
  %shr27 = ashr i32 %34, 6
  %and28 = and i32 %shr27, 1
  %conv29 = trunc i32 %and28 to i8
  store i8 %conv29, ptr %c, align 1
  %35 = load ptr, ptr %r, align 8
  %36 = load i8, ptr %c, align 1
  %idxprom30 = zext i8 %36 to i64
  %arrayidx31 = getelementptr inbounds i16, ptr %35, i64 %idxprom30
  %37 = load i16, ptr %arrayidx31, align 2
  %conv32 = zext i16 %37 to i32
  %and33 = and i32 %conv32, 255
  %38 = load ptr, ptr %g, align 8
  %39 = load i8, ptr %c, align 1
  %idxprom34 = zext i8 %39 to i64
  %arrayidx35 = getelementptr inbounds i16, ptr %38, i64 %idxprom34
  %40 = load i16, ptr %arrayidx35, align 2
  %conv36 = zext i16 %40 to i32
  %and37 = and i32 %conv36, 255
  %shl38 = shl i32 %and37, 8
  %or39 = or i32 %and33, %shl38
  %41 = load ptr, ptr %b, align 8
  %42 = load i8, ptr %c, align 1
  %idxprom40 = zext i8 %42 to i64
  %arrayidx41 = getelementptr inbounds i16, ptr %41, i64 %idxprom40
  %43 = load i16, ptr %arrayidx41, align 2
  %conv42 = zext i16 %43 to i32
  %and43 = and i32 %conv42, 255
  %shl44 = shl i32 %and43, 16
  %or45 = or i32 %or39, %shl44
  %or46 = or i32 %or45, -16777216
  %44 = load ptr, ptr %p, align 8
  %incdec.ptr47 = getelementptr inbounds i32, ptr %44, i32 1
  store ptr %incdec.ptr47, ptr %p, align 8
  store i32 %or46, ptr %44, align 4
  %45 = load i32, ptr %i, align 4
  %shr48 = ashr i32 %45, 5
  %and49 = and i32 %shr48, 1
  %conv50 = trunc i32 %and49 to i8
  store i8 %conv50, ptr %c, align 1
  %46 = load ptr, ptr %r, align 8
  %47 = load i8, ptr %c, align 1
  %idxprom51 = zext i8 %47 to i64
  %arrayidx52 = getelementptr inbounds i16, ptr %46, i64 %idxprom51
  %48 = load i16, ptr %arrayidx52, align 2
  %conv53 = zext i16 %48 to i32
  %and54 = and i32 %conv53, 255
  %49 = load ptr, ptr %g, align 8
  %50 = load i8, ptr %c, align 1
  %idxprom55 = zext i8 %50 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %49, i64 %idxprom55
  %51 = load i16, ptr %arrayidx56, align 2
  %conv57 = zext i16 %51 to i32
  %and58 = and i32 %conv57, 255
  %shl59 = shl i32 %and58, 8
  %or60 = or i32 %and54, %shl59
  %52 = load ptr, ptr %b, align 8
  %53 = load i8, ptr %c, align 1
  %idxprom61 = zext i8 %53 to i64
  %arrayidx62 = getelementptr inbounds i16, ptr %52, i64 %idxprom61
  %54 = load i16, ptr %arrayidx62, align 2
  %conv63 = zext i16 %54 to i32
  %and64 = and i32 %conv63, 255
  %shl65 = shl i32 %and64, 16
  %or66 = or i32 %or60, %shl65
  %or67 = or i32 %or66, -16777216
  %55 = load ptr, ptr %p, align 8
  %incdec.ptr68 = getelementptr inbounds i32, ptr %55, i32 1
  store ptr %incdec.ptr68, ptr %p, align 8
  store i32 %or67, ptr %55, align 4
  %56 = load i32, ptr %i, align 4
  %shr69 = ashr i32 %56, 4
  %and70 = and i32 %shr69, 1
  %conv71 = trunc i32 %and70 to i8
  store i8 %conv71, ptr %c, align 1
  %57 = load ptr, ptr %r, align 8
  %58 = load i8, ptr %c, align 1
  %idxprom72 = zext i8 %58 to i64
  %arrayidx73 = getelementptr inbounds i16, ptr %57, i64 %idxprom72
  %59 = load i16, ptr %arrayidx73, align 2
  %conv74 = zext i16 %59 to i32
  %and75 = and i32 %conv74, 255
  %60 = load ptr, ptr %g, align 8
  %61 = load i8, ptr %c, align 1
  %idxprom76 = zext i8 %61 to i64
  %arrayidx77 = getelementptr inbounds i16, ptr %60, i64 %idxprom76
  %62 = load i16, ptr %arrayidx77, align 2
  %conv78 = zext i16 %62 to i32
  %and79 = and i32 %conv78, 255
  %shl80 = shl i32 %and79, 8
  %or81 = or i32 %and75, %shl80
  %63 = load ptr, ptr %b, align 8
  %64 = load i8, ptr %c, align 1
  %idxprom82 = zext i8 %64 to i64
  %arrayidx83 = getelementptr inbounds i16, ptr %63, i64 %idxprom82
  %65 = load i16, ptr %arrayidx83, align 2
  %conv84 = zext i16 %65 to i32
  %and85 = and i32 %conv84, 255
  %shl86 = shl i32 %and85, 16
  %or87 = or i32 %or81, %shl86
  %or88 = or i32 %or87, -16777216
  %66 = load ptr, ptr %p, align 8
  %incdec.ptr89 = getelementptr inbounds i32, ptr %66, i32 1
  store ptr %incdec.ptr89, ptr %p, align 8
  store i32 %or88, ptr %66, align 4
  %67 = load i32, ptr %i, align 4
  %shr90 = ashr i32 %67, 3
  %and91 = and i32 %shr90, 1
  %conv92 = trunc i32 %and91 to i8
  store i8 %conv92, ptr %c, align 1
  %68 = load ptr, ptr %r, align 8
  %69 = load i8, ptr %c, align 1
  %idxprom93 = zext i8 %69 to i64
  %arrayidx94 = getelementptr inbounds i16, ptr %68, i64 %idxprom93
  %70 = load i16, ptr %arrayidx94, align 2
  %conv95 = zext i16 %70 to i32
  %and96 = and i32 %conv95, 255
  %71 = load ptr, ptr %g, align 8
  %72 = load i8, ptr %c, align 1
  %idxprom97 = zext i8 %72 to i64
  %arrayidx98 = getelementptr inbounds i16, ptr %71, i64 %idxprom97
  %73 = load i16, ptr %arrayidx98, align 2
  %conv99 = zext i16 %73 to i32
  %and100 = and i32 %conv99, 255
  %shl101 = shl i32 %and100, 8
  %or102 = or i32 %and96, %shl101
  %74 = load ptr, ptr %b, align 8
  %75 = load i8, ptr %c, align 1
  %idxprom103 = zext i8 %75 to i64
  %arrayidx104 = getelementptr inbounds i16, ptr %74, i64 %idxprom103
  %76 = load i16, ptr %arrayidx104, align 2
  %conv105 = zext i16 %76 to i32
  %and106 = and i32 %conv105, 255
  %shl107 = shl i32 %and106, 16
  %or108 = or i32 %or102, %shl107
  %or109 = or i32 %or108, -16777216
  %77 = load ptr, ptr %p, align 8
  %incdec.ptr110 = getelementptr inbounds i32, ptr %77, i32 1
  store ptr %incdec.ptr110, ptr %p, align 8
  store i32 %or109, ptr %77, align 4
  %78 = load i32, ptr %i, align 4
  %shr111 = ashr i32 %78, 2
  %and112 = and i32 %shr111, 1
  %conv113 = trunc i32 %and112 to i8
  store i8 %conv113, ptr %c, align 1
  %79 = load ptr, ptr %r, align 8
  %80 = load i8, ptr %c, align 1
  %idxprom114 = zext i8 %80 to i64
  %arrayidx115 = getelementptr inbounds i16, ptr %79, i64 %idxprom114
  %81 = load i16, ptr %arrayidx115, align 2
  %conv116 = zext i16 %81 to i32
  %and117 = and i32 %conv116, 255
  %82 = load ptr, ptr %g, align 8
  %83 = load i8, ptr %c, align 1
  %idxprom118 = zext i8 %83 to i64
  %arrayidx119 = getelementptr inbounds i16, ptr %82, i64 %idxprom118
  %84 = load i16, ptr %arrayidx119, align 2
  %conv120 = zext i16 %84 to i32
  %and121 = and i32 %conv120, 255
  %shl122 = shl i32 %and121, 8
  %or123 = or i32 %and117, %shl122
  %85 = load ptr, ptr %b, align 8
  %86 = load i8, ptr %c, align 1
  %idxprom124 = zext i8 %86 to i64
  %arrayidx125 = getelementptr inbounds i16, ptr %85, i64 %idxprom124
  %87 = load i16, ptr %arrayidx125, align 2
  %conv126 = zext i16 %87 to i32
  %and127 = and i32 %conv126, 255
  %shl128 = shl i32 %and127, 16
  %or129 = or i32 %or123, %shl128
  %or130 = or i32 %or129, -16777216
  %88 = load ptr, ptr %p, align 8
  %incdec.ptr131 = getelementptr inbounds i32, ptr %88, i32 1
  store ptr %incdec.ptr131, ptr %p, align 8
  store i32 %or130, ptr %88, align 4
  %89 = load i32, ptr %i, align 4
  %shr132 = ashr i32 %89, 1
  %and133 = and i32 %shr132, 1
  %conv134 = trunc i32 %and133 to i8
  store i8 %conv134, ptr %c, align 1
  %90 = load ptr, ptr %r, align 8
  %91 = load i8, ptr %c, align 1
  %idxprom135 = zext i8 %91 to i64
  %arrayidx136 = getelementptr inbounds i16, ptr %90, i64 %idxprom135
  %92 = load i16, ptr %arrayidx136, align 2
  %conv137 = zext i16 %92 to i32
  %and138 = and i32 %conv137, 255
  %93 = load ptr, ptr %g, align 8
  %94 = load i8, ptr %c, align 1
  %idxprom139 = zext i8 %94 to i64
  %arrayidx140 = getelementptr inbounds i16, ptr %93, i64 %idxprom139
  %95 = load i16, ptr %arrayidx140, align 2
  %conv141 = zext i16 %95 to i32
  %and142 = and i32 %conv141, 255
  %shl143 = shl i32 %and142, 8
  %or144 = or i32 %and138, %shl143
  %96 = load ptr, ptr %b, align 8
  %97 = load i8, ptr %c, align 1
  %idxprom145 = zext i8 %97 to i64
  %arrayidx146 = getelementptr inbounds i16, ptr %96, i64 %idxprom145
  %98 = load i16, ptr %arrayidx146, align 2
  %conv147 = zext i16 %98 to i32
  %and148 = and i32 %conv147, 255
  %shl149 = shl i32 %and148, 16
  %or150 = or i32 %or144, %shl149
  %or151 = or i32 %or150, -16777216
  %99 = load ptr, ptr %p, align 8
  %incdec.ptr152 = getelementptr inbounds i32, ptr %99, i32 1
  store ptr %incdec.ptr152, ptr %p, align 8
  store i32 %or151, ptr %99, align 4
  %100 = load i32, ptr %i, align 4
  %and153 = and i32 %100, 1
  %conv154 = trunc i32 %and153 to i8
  store i8 %conv154, ptr %c, align 1
  %101 = load ptr, ptr %r, align 8
  %102 = load i8, ptr %c, align 1
  %idxprom155 = zext i8 %102 to i64
  %arrayidx156 = getelementptr inbounds i16, ptr %101, i64 %idxprom155
  %103 = load i16, ptr %arrayidx156, align 2
  %conv157 = zext i16 %103 to i32
  %and158 = and i32 %conv157, 255
  %104 = load ptr, ptr %g, align 8
  %105 = load i8, ptr %c, align 1
  %idxprom159 = zext i8 %105 to i64
  %arrayidx160 = getelementptr inbounds i16, ptr %104, i64 %idxprom159
  %106 = load i16, ptr %arrayidx160, align 2
  %conv161 = zext i16 %106 to i32
  %and162 = and i32 %conv161, 255
  %shl163 = shl i32 %and162, 8
  %or164 = or i32 %and158, %shl163
  %107 = load ptr, ptr %b, align 8
  %108 = load i8, ptr %c, align 1
  %idxprom165 = zext i8 %108 to i64
  %arrayidx166 = getelementptr inbounds i16, ptr %107, i64 %idxprom165
  %109 = load i16, ptr %arrayidx166, align 2
  %conv167 = zext i16 %109 to i32
  %and168 = and i32 %conv167, 255
  %shl169 = shl i32 %and168, 16
  %or170 = or i32 %or164, %shl169
  %or171 = or i32 %or170, -16777216
  %110 = load ptr, ptr %p, align 8
  %incdec.ptr172 = getelementptr inbounds i32, ptr %110, i32 1
  store ptr %incdec.ptr172, ptr %p, align 8
  store i32 %or171, ptr %110, align 4
  br label %sw.epilog

sw.bb173:                                         ; preds = %for.body
  %111 = load i32, ptr %i, align 4
  %shr174 = ashr i32 %111, 6
  %conv175 = trunc i32 %shr174 to i8
  store i8 %conv175, ptr %c, align 1
  %112 = load ptr, ptr %r, align 8
  %113 = load i8, ptr %c, align 1
  %idxprom176 = zext i8 %113 to i64
  %arrayidx177 = getelementptr inbounds i16, ptr %112, i64 %idxprom176
  %114 = load i16, ptr %arrayidx177, align 2
  %conv178 = zext i16 %114 to i32
  %and179 = and i32 %conv178, 255
  %115 = load ptr, ptr %g, align 8
  %116 = load i8, ptr %c, align 1
  %idxprom180 = zext i8 %116 to i64
  %arrayidx181 = getelementptr inbounds i16, ptr %115, i64 %idxprom180
  %117 = load i16, ptr %arrayidx181, align 2
  %conv182 = zext i16 %117 to i32
  %and183 = and i32 %conv182, 255
  %shl184 = shl i32 %and183, 8
  %or185 = or i32 %and179, %shl184
  %118 = load ptr, ptr %b, align 8
  %119 = load i8, ptr %c, align 1
  %idxprom186 = zext i8 %119 to i64
  %arrayidx187 = getelementptr inbounds i16, ptr %118, i64 %idxprom186
  %120 = load i16, ptr %arrayidx187, align 2
  %conv188 = zext i16 %120 to i32
  %and189 = and i32 %conv188, 255
  %shl190 = shl i32 %and189, 16
  %or191 = or i32 %or185, %shl190
  %or192 = or i32 %or191, -16777216
  %121 = load ptr, ptr %p, align 8
  %incdec.ptr193 = getelementptr inbounds i32, ptr %121, i32 1
  store ptr %incdec.ptr193, ptr %p, align 8
  store i32 %or192, ptr %121, align 4
  %122 = load i32, ptr %i, align 4
  %shr194 = ashr i32 %122, 4
  %and195 = and i32 %shr194, 3
  %conv196 = trunc i32 %and195 to i8
  store i8 %conv196, ptr %c, align 1
  %123 = load ptr, ptr %r, align 8
  %124 = load i8, ptr %c, align 1
  %idxprom197 = zext i8 %124 to i64
  %arrayidx198 = getelementptr inbounds i16, ptr %123, i64 %idxprom197
  %125 = load i16, ptr %arrayidx198, align 2
  %conv199 = zext i16 %125 to i32
  %and200 = and i32 %conv199, 255
  %126 = load ptr, ptr %g, align 8
  %127 = load i8, ptr %c, align 1
  %idxprom201 = zext i8 %127 to i64
  %arrayidx202 = getelementptr inbounds i16, ptr %126, i64 %idxprom201
  %128 = load i16, ptr %arrayidx202, align 2
  %conv203 = zext i16 %128 to i32
  %and204 = and i32 %conv203, 255
  %shl205 = shl i32 %and204, 8
  %or206 = or i32 %and200, %shl205
  %129 = load ptr, ptr %b, align 8
  %130 = load i8, ptr %c, align 1
  %idxprom207 = zext i8 %130 to i64
  %arrayidx208 = getelementptr inbounds i16, ptr %129, i64 %idxprom207
  %131 = load i16, ptr %arrayidx208, align 2
  %conv209 = zext i16 %131 to i32
  %and210 = and i32 %conv209, 255
  %shl211 = shl i32 %and210, 16
  %or212 = or i32 %or206, %shl211
  %or213 = or i32 %or212, -16777216
  %132 = load ptr, ptr %p, align 8
  %incdec.ptr214 = getelementptr inbounds i32, ptr %132, i32 1
  store ptr %incdec.ptr214, ptr %p, align 8
  store i32 %or213, ptr %132, align 4
  %133 = load i32, ptr %i, align 4
  %shr215 = ashr i32 %133, 2
  %and216 = and i32 %shr215, 3
  %conv217 = trunc i32 %and216 to i8
  store i8 %conv217, ptr %c, align 1
  %134 = load ptr, ptr %r, align 8
  %135 = load i8, ptr %c, align 1
  %idxprom218 = zext i8 %135 to i64
  %arrayidx219 = getelementptr inbounds i16, ptr %134, i64 %idxprom218
  %136 = load i16, ptr %arrayidx219, align 2
  %conv220 = zext i16 %136 to i32
  %and221 = and i32 %conv220, 255
  %137 = load ptr, ptr %g, align 8
  %138 = load i8, ptr %c, align 1
  %idxprom222 = zext i8 %138 to i64
  %arrayidx223 = getelementptr inbounds i16, ptr %137, i64 %idxprom222
  %139 = load i16, ptr %arrayidx223, align 2
  %conv224 = zext i16 %139 to i32
  %and225 = and i32 %conv224, 255
  %shl226 = shl i32 %and225, 8
  %or227 = or i32 %and221, %shl226
  %140 = load ptr, ptr %b, align 8
  %141 = load i8, ptr %c, align 1
  %idxprom228 = zext i8 %141 to i64
  %arrayidx229 = getelementptr inbounds i16, ptr %140, i64 %idxprom228
  %142 = load i16, ptr %arrayidx229, align 2
  %conv230 = zext i16 %142 to i32
  %and231 = and i32 %conv230, 255
  %shl232 = shl i32 %and231, 16
  %or233 = or i32 %or227, %shl232
  %or234 = or i32 %or233, -16777216
  %143 = load ptr, ptr %p, align 8
  %incdec.ptr235 = getelementptr inbounds i32, ptr %143, i32 1
  store ptr %incdec.ptr235, ptr %p, align 8
  store i32 %or234, ptr %143, align 4
  %144 = load i32, ptr %i, align 4
  %and236 = and i32 %144, 3
  %conv237 = trunc i32 %and236 to i8
  store i8 %conv237, ptr %c, align 1
  %145 = load ptr, ptr %r, align 8
  %146 = load i8, ptr %c, align 1
  %idxprom238 = zext i8 %146 to i64
  %arrayidx239 = getelementptr inbounds i16, ptr %145, i64 %idxprom238
  %147 = load i16, ptr %arrayidx239, align 2
  %conv240 = zext i16 %147 to i32
  %and241 = and i32 %conv240, 255
  %148 = load ptr, ptr %g, align 8
  %149 = load i8, ptr %c, align 1
  %idxprom242 = zext i8 %149 to i64
  %arrayidx243 = getelementptr inbounds i16, ptr %148, i64 %idxprom242
  %150 = load i16, ptr %arrayidx243, align 2
  %conv244 = zext i16 %150 to i32
  %and245 = and i32 %conv244, 255
  %shl246 = shl i32 %and245, 8
  %or247 = or i32 %and241, %shl246
  %151 = load ptr, ptr %b, align 8
  %152 = load i8, ptr %c, align 1
  %idxprom248 = zext i8 %152 to i64
  %arrayidx249 = getelementptr inbounds i16, ptr %151, i64 %idxprom248
  %153 = load i16, ptr %arrayidx249, align 2
  %conv250 = zext i16 %153 to i32
  %and251 = and i32 %conv250, 255
  %shl252 = shl i32 %and251, 16
  %or253 = or i32 %or247, %shl252
  %or254 = or i32 %or253, -16777216
  %154 = load ptr, ptr %p, align 8
  %incdec.ptr255 = getelementptr inbounds i32, ptr %154, i32 1
  store ptr %incdec.ptr255, ptr %p, align 8
  store i32 %or254, ptr %154, align 4
  br label %sw.epilog

sw.bb256:                                         ; preds = %for.body
  %155 = load i32, ptr %i, align 4
  %shr257 = ashr i32 %155, 4
  %conv258 = trunc i32 %shr257 to i8
  store i8 %conv258, ptr %c, align 1
  %156 = load ptr, ptr %r, align 8
  %157 = load i8, ptr %c, align 1
  %idxprom259 = zext i8 %157 to i64
  %arrayidx260 = getelementptr inbounds i16, ptr %156, i64 %idxprom259
  %158 = load i16, ptr %arrayidx260, align 2
  %conv261 = zext i16 %158 to i32
  %and262 = and i32 %conv261, 255
  %159 = load ptr, ptr %g, align 8
  %160 = load i8, ptr %c, align 1
  %idxprom263 = zext i8 %160 to i64
  %arrayidx264 = getelementptr inbounds i16, ptr %159, i64 %idxprom263
  %161 = load i16, ptr %arrayidx264, align 2
  %conv265 = zext i16 %161 to i32
  %and266 = and i32 %conv265, 255
  %shl267 = shl i32 %and266, 8
  %or268 = or i32 %and262, %shl267
  %162 = load ptr, ptr %b, align 8
  %163 = load i8, ptr %c, align 1
  %idxprom269 = zext i8 %163 to i64
  %arrayidx270 = getelementptr inbounds i16, ptr %162, i64 %idxprom269
  %164 = load i16, ptr %arrayidx270, align 2
  %conv271 = zext i16 %164 to i32
  %and272 = and i32 %conv271, 255
  %shl273 = shl i32 %and272, 16
  %or274 = or i32 %or268, %shl273
  %or275 = or i32 %or274, -16777216
  %165 = load ptr, ptr %p, align 8
  %incdec.ptr276 = getelementptr inbounds i32, ptr %165, i32 1
  store ptr %incdec.ptr276, ptr %p, align 8
  store i32 %or275, ptr %165, align 4
  %166 = load i32, ptr %i, align 4
  %and277 = and i32 %166, 15
  %conv278 = trunc i32 %and277 to i8
  store i8 %conv278, ptr %c, align 1
  %167 = load ptr, ptr %r, align 8
  %168 = load i8, ptr %c, align 1
  %idxprom279 = zext i8 %168 to i64
  %arrayidx280 = getelementptr inbounds i16, ptr %167, i64 %idxprom279
  %169 = load i16, ptr %arrayidx280, align 2
  %conv281 = zext i16 %169 to i32
  %and282 = and i32 %conv281, 255
  %170 = load ptr, ptr %g, align 8
  %171 = load i8, ptr %c, align 1
  %idxprom283 = zext i8 %171 to i64
  %arrayidx284 = getelementptr inbounds i16, ptr %170, i64 %idxprom283
  %172 = load i16, ptr %arrayidx284, align 2
  %conv285 = zext i16 %172 to i32
  %and286 = and i32 %conv285, 255
  %shl287 = shl i32 %and286, 8
  %or288 = or i32 %and282, %shl287
  %173 = load ptr, ptr %b, align 8
  %174 = load i8, ptr %c, align 1
  %idxprom289 = zext i8 %174 to i64
  %arrayidx290 = getelementptr inbounds i16, ptr %173, i64 %idxprom289
  %175 = load i16, ptr %arrayidx290, align 2
  %conv291 = zext i16 %175 to i32
  %and292 = and i32 %conv291, 255
  %shl293 = shl i32 %and292, 16
  %or294 = or i32 %or288, %shl293
  %or295 = or i32 %or294, -16777216
  %176 = load ptr, ptr %p, align 8
  %incdec.ptr296 = getelementptr inbounds i32, ptr %176, i32 1
  store ptr %incdec.ptr296, ptr %p, align 8
  store i32 %or295, ptr %176, align 4
  br label %sw.epilog

sw.bb297:                                         ; preds = %for.body
  %177 = load i32, ptr %i, align 4
  %conv298 = trunc i32 %177 to i8
  store i8 %conv298, ptr %c, align 1
  %178 = load ptr, ptr %r, align 8
  %179 = load i8, ptr %c, align 1
  %idxprom299 = zext i8 %179 to i64
  %arrayidx300 = getelementptr inbounds i16, ptr %178, i64 %idxprom299
  %180 = load i16, ptr %arrayidx300, align 2
  %conv301 = zext i16 %180 to i32
  %and302 = and i32 %conv301, 255
  %181 = load ptr, ptr %g, align 8
  %182 = load i8, ptr %c, align 1
  %idxprom303 = zext i8 %182 to i64
  %arrayidx304 = getelementptr inbounds i16, ptr %181, i64 %idxprom303
  %183 = load i16, ptr %arrayidx304, align 2
  %conv305 = zext i16 %183 to i32
  %and306 = and i32 %conv305, 255
  %shl307 = shl i32 %and306, 8
  %or308 = or i32 %and302, %shl307
  %184 = load ptr, ptr %b, align 8
  %185 = load i8, ptr %c, align 1
  %idxprom309 = zext i8 %185 to i64
  %arrayidx310 = getelementptr inbounds i16, ptr %184, i64 %idxprom309
  %186 = load i16, ptr %arrayidx310, align 2
  %conv311 = zext i16 %186 to i32
  %and312 = and i32 %conv311, 255
  %shl313 = shl i32 %and312, 16
  %or314 = or i32 %or308, %shl313
  %or315 = or i32 %or314, -16777216
  %187 = load ptr, ptr %p, align 8
  %incdec.ptr316 = getelementptr inbounds i32, ptr %187, i32 1
  store ptr %incdec.ptr316, ptr %p, align 8
  store i32 %or315, ptr %187, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb297, %sw.bb256, %sw.bb173, %sw.bb
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
  %3 = load i16, ptr %bitspersample2, align 4
  %conv = zext i16 %3 to i32
  store i32 %conv, ptr %bitspersample, align 4
  %4 = load i32, ptr %bitspersample, align 4
  %div = sdiv i32 8, %4
  store i32 %div, ptr %nsamples, align 4
  %5 = load i32, ptr %nsamples, align 4
  %mul = mul nsw i32 256, %5
  %conv3 = sext i32 %mul to i64
  %mul4 = mul i64 %conv3, 4
  %add = add i64 2048, %mul4
  %conv5 = trunc i64 %add to i32
  %call = call ptr @_TIFFmalloc(i32 noundef %conv5)
  %6 = load ptr, ptr %img.addr, align 8
  %BWmap = getelementptr inbounds %struct._TIFFRGBAImage, ptr %6, i32 0, i32 16
  store ptr %call, ptr %BWmap, align 8
  %7 = load ptr, ptr %img.addr, align 8
  %BWmap6 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %7, i32 0, i32 16
  %8 = load ptr, ptr %BWmap6, align 8
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %img.addr, align 8
  %tif = getelementptr inbounds %struct._TIFFRGBAImage, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %tif, align 8
  %call8 = call ptr @TIFFFileName(ptr noundef %10)
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %call8, ptr noundef @.str.30)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %img.addr, align 8
  %BWmap9 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %11, i32 0, i32 16
  %12 = load ptr, ptr %BWmap9, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %12, i64 256
  store ptr %add.ptr, ptr %p, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, ptr %i, align 4
  %cmp10 = icmp slt i32 %13, 256
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %p, align 8
  %15 = load ptr, ptr %img.addr, align 8
  %BWmap12 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %15, i32 0, i32 16
  %16 = load ptr, ptr %BWmap12, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %16, i64 %idxprom
  store ptr %14, ptr %arrayidx, align 8
  %18 = load i32, ptr %bitspersample, align 4
  switch i32 %18, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb110
    i32 4, label %sw.bb161
    i32 8, label %sw.bb186
  ]

sw.bb:                                            ; preds = %for.body
  %19 = load ptr, ptr %Map, align 8
  %20 = load i32, ptr %i, align 4
  %shr = ashr i32 %20, 7
  %idxprom13 = sext i32 %shr to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %19, i64 %idxprom13
  %21 = load i8, ptr %arrayidx14, align 1
  store i8 %21, ptr %c, align 1
  %22 = load i8, ptr %c, align 1
  %conv15 = zext i8 %22 to i32
  %23 = load i8, ptr %c, align 1
  %conv16 = zext i8 %23 to i32
  %shl = shl i32 %conv16, 8
  %or = or i32 %conv15, %shl
  %24 = load i8, ptr %c, align 1
  %conv17 = zext i8 %24 to i32
  %shl18 = shl i32 %conv17, 16
  %or19 = or i32 %or, %shl18
  %or20 = or i32 %or19, -16777216
  %25 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %25, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  store i32 %or20, ptr %25, align 4
  %26 = load ptr, ptr %Map, align 8
  %27 = load i32, ptr %i, align 4
  %shr21 = ashr i32 %27, 6
  %and = and i32 %shr21, 1
  %idxprom22 = sext i32 %and to i64
  %arrayidx23 = getelementptr inbounds i8, ptr %26, i64 %idxprom22
  %28 = load i8, ptr %arrayidx23, align 1
  store i8 %28, ptr %c, align 1
  %29 = load i8, ptr %c, align 1
  %conv24 = zext i8 %29 to i32
  %30 = load i8, ptr %c, align 1
  %conv25 = zext i8 %30 to i32
  %shl26 = shl i32 %conv25, 8
  %or27 = or i32 %conv24, %shl26
  %31 = load i8, ptr %c, align 1
  %conv28 = zext i8 %31 to i32
  %shl29 = shl i32 %conv28, 16
  %or30 = or i32 %or27, %shl29
  %or31 = or i32 %or30, -16777216
  %32 = load ptr, ptr %p, align 8
  %incdec.ptr32 = getelementptr inbounds i32, ptr %32, i32 1
  store ptr %incdec.ptr32, ptr %p, align 8
  store i32 %or31, ptr %32, align 4
  %33 = load ptr, ptr %Map, align 8
  %34 = load i32, ptr %i, align 4
  %shr33 = ashr i32 %34, 5
  %and34 = and i32 %shr33, 1
  %idxprom35 = sext i32 %and34 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %33, i64 %idxprom35
  %35 = load i8, ptr %arrayidx36, align 1
  store i8 %35, ptr %c, align 1
  %36 = load i8, ptr %c, align 1
  %conv37 = zext i8 %36 to i32
  %37 = load i8, ptr %c, align 1
  %conv38 = zext i8 %37 to i32
  %shl39 = shl i32 %conv38, 8
  %or40 = or i32 %conv37, %shl39
  %38 = load i8, ptr %c, align 1
  %conv41 = zext i8 %38 to i32
  %shl42 = shl i32 %conv41, 16
  %or43 = or i32 %or40, %shl42
  %or44 = or i32 %or43, -16777216
  %39 = load ptr, ptr %p, align 8
  %incdec.ptr45 = getelementptr inbounds i32, ptr %39, i32 1
  store ptr %incdec.ptr45, ptr %p, align 8
  store i32 %or44, ptr %39, align 4
  %40 = load ptr, ptr %Map, align 8
  %41 = load i32, ptr %i, align 4
  %shr46 = ashr i32 %41, 4
  %and47 = and i32 %shr46, 1
  %idxprom48 = sext i32 %and47 to i64
  %arrayidx49 = getelementptr inbounds i8, ptr %40, i64 %idxprom48
  %42 = load i8, ptr %arrayidx49, align 1
  store i8 %42, ptr %c, align 1
  %43 = load i8, ptr %c, align 1
  %conv50 = zext i8 %43 to i32
  %44 = load i8, ptr %c, align 1
  %conv51 = zext i8 %44 to i32
  %shl52 = shl i32 %conv51, 8
  %or53 = or i32 %conv50, %shl52
  %45 = load i8, ptr %c, align 1
  %conv54 = zext i8 %45 to i32
  %shl55 = shl i32 %conv54, 16
  %or56 = or i32 %or53, %shl55
  %or57 = or i32 %or56, -16777216
  %46 = load ptr, ptr %p, align 8
  %incdec.ptr58 = getelementptr inbounds i32, ptr %46, i32 1
  store ptr %incdec.ptr58, ptr %p, align 8
  store i32 %or57, ptr %46, align 4
  %47 = load ptr, ptr %Map, align 8
  %48 = load i32, ptr %i, align 4
  %shr59 = ashr i32 %48, 3
  %and60 = and i32 %shr59, 1
  %idxprom61 = sext i32 %and60 to i64
  %arrayidx62 = getelementptr inbounds i8, ptr %47, i64 %idxprom61
  %49 = load i8, ptr %arrayidx62, align 1
  store i8 %49, ptr %c, align 1
  %50 = load i8, ptr %c, align 1
  %conv63 = zext i8 %50 to i32
  %51 = load i8, ptr %c, align 1
  %conv64 = zext i8 %51 to i32
  %shl65 = shl i32 %conv64, 8
  %or66 = or i32 %conv63, %shl65
  %52 = load i8, ptr %c, align 1
  %conv67 = zext i8 %52 to i32
  %shl68 = shl i32 %conv67, 16
  %or69 = or i32 %or66, %shl68
  %or70 = or i32 %or69, -16777216
  %53 = load ptr, ptr %p, align 8
  %incdec.ptr71 = getelementptr inbounds i32, ptr %53, i32 1
  store ptr %incdec.ptr71, ptr %p, align 8
  store i32 %or70, ptr %53, align 4
  %54 = load ptr, ptr %Map, align 8
  %55 = load i32, ptr %i, align 4
  %shr72 = ashr i32 %55, 2
  %and73 = and i32 %shr72, 1
  %idxprom74 = sext i32 %and73 to i64
  %arrayidx75 = getelementptr inbounds i8, ptr %54, i64 %idxprom74
  %56 = load i8, ptr %arrayidx75, align 1
  store i8 %56, ptr %c, align 1
  %57 = load i8, ptr %c, align 1
  %conv76 = zext i8 %57 to i32
  %58 = load i8, ptr %c, align 1
  %conv77 = zext i8 %58 to i32
  %shl78 = shl i32 %conv77, 8
  %or79 = or i32 %conv76, %shl78
  %59 = load i8, ptr %c, align 1
  %conv80 = zext i8 %59 to i32
  %shl81 = shl i32 %conv80, 16
  %or82 = or i32 %or79, %shl81
  %or83 = or i32 %or82, -16777216
  %60 = load ptr, ptr %p, align 8
  %incdec.ptr84 = getelementptr inbounds i32, ptr %60, i32 1
  store ptr %incdec.ptr84, ptr %p, align 8
  store i32 %or83, ptr %60, align 4
  %61 = load ptr, ptr %Map, align 8
  %62 = load i32, ptr %i, align 4
  %shr85 = ashr i32 %62, 1
  %and86 = and i32 %shr85, 1
  %idxprom87 = sext i32 %and86 to i64
  %arrayidx88 = getelementptr inbounds i8, ptr %61, i64 %idxprom87
  %63 = load i8, ptr %arrayidx88, align 1
  store i8 %63, ptr %c, align 1
  %64 = load i8, ptr %c, align 1
  %conv89 = zext i8 %64 to i32
  %65 = load i8, ptr %c, align 1
  %conv90 = zext i8 %65 to i32
  %shl91 = shl i32 %conv90, 8
  %or92 = or i32 %conv89, %shl91
  %66 = load i8, ptr %c, align 1
  %conv93 = zext i8 %66 to i32
  %shl94 = shl i32 %conv93, 16
  %or95 = or i32 %or92, %shl94
  %or96 = or i32 %or95, -16777216
  %67 = load ptr, ptr %p, align 8
  %incdec.ptr97 = getelementptr inbounds i32, ptr %67, i32 1
  store ptr %incdec.ptr97, ptr %p, align 8
  store i32 %or96, ptr %67, align 4
  %68 = load ptr, ptr %Map, align 8
  %69 = load i32, ptr %i, align 4
  %and98 = and i32 %69, 1
  %idxprom99 = sext i32 %and98 to i64
  %arrayidx100 = getelementptr inbounds i8, ptr %68, i64 %idxprom99
  %70 = load i8, ptr %arrayidx100, align 1
  store i8 %70, ptr %c, align 1
  %71 = load i8, ptr %c, align 1
  %conv101 = zext i8 %71 to i32
  %72 = load i8, ptr %c, align 1
  %conv102 = zext i8 %72 to i32
  %shl103 = shl i32 %conv102, 8
  %or104 = or i32 %conv101, %shl103
  %73 = load i8, ptr %c, align 1
  %conv105 = zext i8 %73 to i32
  %shl106 = shl i32 %conv105, 16
  %or107 = or i32 %or104, %shl106
  %or108 = or i32 %or107, -16777216
  %74 = load ptr, ptr %p, align 8
  %incdec.ptr109 = getelementptr inbounds i32, ptr %74, i32 1
  store ptr %incdec.ptr109, ptr %p, align 8
  store i32 %or108, ptr %74, align 4
  br label %sw.epilog

sw.bb110:                                         ; preds = %for.body
  %75 = load ptr, ptr %Map, align 8
  %76 = load i32, ptr %i, align 4
  %shr111 = ashr i32 %76, 6
  %idxprom112 = sext i32 %shr111 to i64
  %arrayidx113 = getelementptr inbounds i8, ptr %75, i64 %idxprom112
  %77 = load i8, ptr %arrayidx113, align 1
  store i8 %77, ptr %c, align 1
  %78 = load i8, ptr %c, align 1
  %conv114 = zext i8 %78 to i32
  %79 = load i8, ptr %c, align 1
  %conv115 = zext i8 %79 to i32
  %shl116 = shl i32 %conv115, 8
  %or117 = or i32 %conv114, %shl116
  %80 = load i8, ptr %c, align 1
  %conv118 = zext i8 %80 to i32
  %shl119 = shl i32 %conv118, 16
  %or120 = or i32 %or117, %shl119
  %or121 = or i32 %or120, -16777216
  %81 = load ptr, ptr %p, align 8
  %incdec.ptr122 = getelementptr inbounds i32, ptr %81, i32 1
  store ptr %incdec.ptr122, ptr %p, align 8
  store i32 %or121, ptr %81, align 4
  %82 = load ptr, ptr %Map, align 8
  %83 = load i32, ptr %i, align 4
  %shr123 = ashr i32 %83, 4
  %and124 = and i32 %shr123, 3
  %idxprom125 = sext i32 %and124 to i64
  %arrayidx126 = getelementptr inbounds i8, ptr %82, i64 %idxprom125
  %84 = load i8, ptr %arrayidx126, align 1
  store i8 %84, ptr %c, align 1
  %85 = load i8, ptr %c, align 1
  %conv127 = zext i8 %85 to i32
  %86 = load i8, ptr %c, align 1
  %conv128 = zext i8 %86 to i32
  %shl129 = shl i32 %conv128, 8
  %or130 = or i32 %conv127, %shl129
  %87 = load i8, ptr %c, align 1
  %conv131 = zext i8 %87 to i32
  %shl132 = shl i32 %conv131, 16
  %or133 = or i32 %or130, %shl132
  %or134 = or i32 %or133, -16777216
  %88 = load ptr, ptr %p, align 8
  %incdec.ptr135 = getelementptr inbounds i32, ptr %88, i32 1
  store ptr %incdec.ptr135, ptr %p, align 8
  store i32 %or134, ptr %88, align 4
  %89 = load ptr, ptr %Map, align 8
  %90 = load i32, ptr %i, align 4
  %shr136 = ashr i32 %90, 2
  %and137 = and i32 %shr136, 3
  %idxprom138 = sext i32 %and137 to i64
  %arrayidx139 = getelementptr inbounds i8, ptr %89, i64 %idxprom138
  %91 = load i8, ptr %arrayidx139, align 1
  store i8 %91, ptr %c, align 1
  %92 = load i8, ptr %c, align 1
  %conv140 = zext i8 %92 to i32
  %93 = load i8, ptr %c, align 1
  %conv141 = zext i8 %93 to i32
  %shl142 = shl i32 %conv141, 8
  %or143 = or i32 %conv140, %shl142
  %94 = load i8, ptr %c, align 1
  %conv144 = zext i8 %94 to i32
  %shl145 = shl i32 %conv144, 16
  %or146 = or i32 %or143, %shl145
  %or147 = or i32 %or146, -16777216
  %95 = load ptr, ptr %p, align 8
  %incdec.ptr148 = getelementptr inbounds i32, ptr %95, i32 1
  store ptr %incdec.ptr148, ptr %p, align 8
  store i32 %or147, ptr %95, align 4
  %96 = load ptr, ptr %Map, align 8
  %97 = load i32, ptr %i, align 4
  %and149 = and i32 %97, 3
  %idxprom150 = sext i32 %and149 to i64
  %arrayidx151 = getelementptr inbounds i8, ptr %96, i64 %idxprom150
  %98 = load i8, ptr %arrayidx151, align 1
  store i8 %98, ptr %c, align 1
  %99 = load i8, ptr %c, align 1
  %conv152 = zext i8 %99 to i32
  %100 = load i8, ptr %c, align 1
  %conv153 = zext i8 %100 to i32
  %shl154 = shl i32 %conv153, 8
  %or155 = or i32 %conv152, %shl154
  %101 = load i8, ptr %c, align 1
  %conv156 = zext i8 %101 to i32
  %shl157 = shl i32 %conv156, 16
  %or158 = or i32 %or155, %shl157
  %or159 = or i32 %or158, -16777216
  %102 = load ptr, ptr %p, align 8
  %incdec.ptr160 = getelementptr inbounds i32, ptr %102, i32 1
  store ptr %incdec.ptr160, ptr %p, align 8
  store i32 %or159, ptr %102, align 4
  br label %sw.epilog

sw.bb161:                                         ; preds = %for.body
  %103 = load ptr, ptr %Map, align 8
  %104 = load i32, ptr %i, align 4
  %shr162 = ashr i32 %104, 4
  %idxprom163 = sext i32 %shr162 to i64
  %arrayidx164 = getelementptr inbounds i8, ptr %103, i64 %idxprom163
  %105 = load i8, ptr %arrayidx164, align 1
  store i8 %105, ptr %c, align 1
  %106 = load i8, ptr %c, align 1
  %conv165 = zext i8 %106 to i32
  %107 = load i8, ptr %c, align 1
  %conv166 = zext i8 %107 to i32
  %shl167 = shl i32 %conv166, 8
  %or168 = or i32 %conv165, %shl167
  %108 = load i8, ptr %c, align 1
  %conv169 = zext i8 %108 to i32
  %shl170 = shl i32 %conv169, 16
  %or171 = or i32 %or168, %shl170
  %or172 = or i32 %or171, -16777216
  %109 = load ptr, ptr %p, align 8
  %incdec.ptr173 = getelementptr inbounds i32, ptr %109, i32 1
  store ptr %incdec.ptr173, ptr %p, align 8
  store i32 %or172, ptr %109, align 4
  %110 = load ptr, ptr %Map, align 8
  %111 = load i32, ptr %i, align 4
  %and174 = and i32 %111, 15
  %idxprom175 = sext i32 %and174 to i64
  %arrayidx176 = getelementptr inbounds i8, ptr %110, i64 %idxprom175
  %112 = load i8, ptr %arrayidx176, align 1
  store i8 %112, ptr %c, align 1
  %113 = load i8, ptr %c, align 1
  %conv177 = zext i8 %113 to i32
  %114 = load i8, ptr %c, align 1
  %conv178 = zext i8 %114 to i32
  %shl179 = shl i32 %conv178, 8
  %or180 = or i32 %conv177, %shl179
  %115 = load i8, ptr %c, align 1
  %conv181 = zext i8 %115 to i32
  %shl182 = shl i32 %conv181, 16
  %or183 = or i32 %or180, %shl182
  %or184 = or i32 %or183, -16777216
  %116 = load ptr, ptr %p, align 8
  %incdec.ptr185 = getelementptr inbounds i32, ptr %116, i32 1
  store ptr %incdec.ptr185, ptr %p, align 8
  store i32 %or184, ptr %116, align 4
  br label %sw.epilog

sw.bb186:                                         ; preds = %for.body
  %117 = load ptr, ptr %Map, align 8
  %118 = load i32, ptr %i, align 4
  %idxprom187 = sext i32 %118 to i64
  %arrayidx188 = getelementptr inbounds i8, ptr %117, i64 %idxprom187
  %119 = load i8, ptr %arrayidx188, align 1
  store i8 %119, ptr %c, align 1
  %120 = load i8, ptr %c, align 1
  %conv189 = zext i8 %120 to i32
  %121 = load i8, ptr %c, align 1
  %conv190 = zext i8 %121 to i32
  %shl191 = shl i32 %conv190, 8
  %or192 = or i32 %conv189, %shl191
  %122 = load i8, ptr %c, align 1
  %conv193 = zext i8 %122 to i32
  %shl194 = shl i32 %conv193, 16
  %or195 = or i32 %or192, %shl194
  %or196 = or i32 %or195, -16777216
  %123 = load ptr, ptr %p, align 8
  %incdec.ptr197 = getelementptr inbounds i32, ptr %123, i32 1
  store ptr %incdec.ptr197, ptr %p, align 8
  store i32 %or196, ptr %123, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb186, %sw.bb161, %sw.bb110, %sw.bb
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
  %D1 = alloca i32, align 4
  %f2 = alloca float, align 4
  %D2 = alloca i32, align 4
  %f3 = alloca float, align 4
  %D3 = alloca i32, align 4
  %f4 = alloca float, align 4
  %D4 = alloca i32, align 4
  %x = alloca i32, align 4
  store ptr %ycbcr, ptr %ycbcr.addr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %ycbcr.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 56
  store ptr %add.ptr, ptr %clamptab, align 8
  %1 = load ptr, ptr %clamptab, align 8
  call void @_TIFFmemset(ptr noundef %1, i32 noundef 0, i32 noundef 256)
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
  call void @_TIFFmemset(ptr noundef %add.ptr3, i32 noundef 255, i32 noundef 512)
  %10 = load ptr, ptr %tif.addr, align 8
  %call = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %10, i32 noundef 529, ptr noundef %coeffs)
  %11 = load ptr, ptr %ycbcr.addr, align 8
  %coeffs4 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %11, i32 0, i32 5
  %arraydecay = getelementptr inbounds [3 x float], ptr %coeffs4, i64 0, i64 0
  %12 = load ptr, ptr %coeffs, align 8
  call void @_TIFFmemcpy(ptr noundef %arraydecay, ptr noundef %12, i32 noundef 12)
  %13 = load ptr, ptr %coeffs, align 8
  %arrayidx5 = getelementptr inbounds float, ptr %13, i64 0
  %14 = load float, ptr %arrayidx5, align 4
  %15 = call float @llvm.fmuladd.f32(float -2.000000e+00, float %14, float 2.000000e+00)
  store float %15, ptr %f1, align 4
  %16 = load float, ptr %f1, align 4
  %mul = fmul float %16, 6.553600e+04
  %conv6 = fpext float %mul to double
  %add = fadd double %conv6, 5.000000e-01
  %conv7 = fptosi double %add to i32
  store i32 %conv7, ptr %D1, align 4
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
  %conv14 = fptosi double %add13 to i32
  %sub = sub nsw i32 0, %conv14
  store i32 %sub, ptr %D2, align 4
  %23 = load ptr, ptr %coeffs, align 8
  %arrayidx15 = getelementptr inbounds float, ptr %23, i64 2
  %24 = load float, ptr %arrayidx15, align 4
  %25 = call float @llvm.fmuladd.f32(float -2.000000e+00, float %24, float 2.000000e+00)
  store float %25, ptr %f3, align 4
  %26 = load float, ptr %f3, align 4
  %mul17 = fmul float %26, 6.553600e+04
  %conv18 = fpext float %mul17 to double
  %add19 = fadd double %conv18, 5.000000e-01
  %conv20 = fptosi double %add19 to i32
  store i32 %conv20, ptr %D3, align 4
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
  %conv28 = fptosi double %add27 to i32
  %sub29 = sub nsw i32 0, %conv28
  store i32 %sub29, ptr %D4, align 4
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
  %add.ptr36 = getelementptr inbounds i32, ptr %42, i64 256
  %43 = load ptr, ptr %ycbcr.addr, align 8
  %Cb_g_tab = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %43, i32 0, i32 4
  store ptr %add.ptr36, ptr %Cb_g_tab, align 8
  store i32 0, ptr %i, align 4
  store i32 -128, ptr %x, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc61, %for.end
  %44 = load i32, ptr %i, align 4
  %cmp38 = icmp slt i32 %44, 256
  br i1 %cmp38, label %for.body40, label %for.end64

for.body40:                                       ; preds = %for.cond37
  %45 = load i32, ptr %D1, align 4
  %46 = load i32, ptr %x, align 4
  %mul41 = mul nsw i32 %45, %46
  %add42 = add nsw i32 %mul41, 32768
  %shr = ashr i32 %add42, 16
  %47 = load ptr, ptr %ycbcr.addr, align 8
  %Cr_r_tab43 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %47, i32 0, i32 1
  %48 = load ptr, ptr %Cr_r_tab43, align 8
  %49 = load i32, ptr %i, align 4
  %idxprom44 = sext i32 %49 to i64
  %arrayidx45 = getelementptr inbounds i32, ptr %48, i64 %idxprom44
  store i32 %shr, ptr %arrayidx45, align 4
  %50 = load i32, ptr %D3, align 4
  %51 = load i32, ptr %x, align 4
  %mul46 = mul nsw i32 %50, %51
  %add47 = add nsw i32 %mul46, 32768
  %shr48 = ashr i32 %add47, 16
  %52 = load ptr, ptr %ycbcr.addr, align 8
  %Cb_b_tab49 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %52, i32 0, i32 2
  %53 = load ptr, ptr %Cb_b_tab49, align 8
  %54 = load i32, ptr %i, align 4
  %idxprom50 = sext i32 %54 to i64
  %arrayidx51 = getelementptr inbounds i32, ptr %53, i64 %idxprom50
  store i32 %shr48, ptr %arrayidx51, align 4
  %55 = load i32, ptr %D2, align 4
  %56 = load i32, ptr %x, align 4
  %mul52 = mul nsw i32 %55, %56
  %57 = load ptr, ptr %ycbcr.addr, align 8
  %Cr_g_tab53 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %57, i32 0, i32 3
  %58 = load ptr, ptr %Cr_g_tab53, align 8
  %59 = load i32, ptr %i, align 4
  %idxprom54 = sext i32 %59 to i64
  %arrayidx55 = getelementptr inbounds i32, ptr %58, i64 %idxprom54
  store i32 %mul52, ptr %arrayidx55, align 4
  %60 = load i32, ptr %D4, align 4
  %61 = load i32, ptr %x, align 4
  %mul56 = mul nsw i32 %60, %61
  %add57 = add nsw i32 %mul56, 32768
  %62 = load ptr, ptr %ycbcr.addr, align 8
  %Cb_g_tab58 = getelementptr inbounds %struct.TIFFYCbCrToRGB, ptr %62, i32 0, i32 4
  %63 = load ptr, ptr %Cb_g_tab58, align 8
  %64 = load i32, ptr %i, align 4
  %idxprom59 = sext i32 %64 to i64
  %arrayidx60 = getelementptr inbounds i32, ptr %63, i64 %idxprom59
  store i32 %add57, ptr %arrayidx60, align 4
  br label %for.inc61

for.inc61:                                        ; preds = %for.body40
  %65 = load i32, ptr %i, align 4
  %inc62 = add nsw i32 %65, 1
  store i32 %inc62, ptr %i, align 4
  %66 = load i32, ptr %x, align 4
  %inc63 = add nsw i32 %66, 1
  store i32 %inc63, ptr %x, align 4
  br label %for.cond37, !llvm.loop !56

for.end64:                                        ; preds = %for.cond37
  ret void
}

declare i32 @_TIFFmemcmp(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putcontig8bitYCbCr44tile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
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
  %incr = alloca i32, align 4
  %Cb = alloca i32, align 4
  %Cr = alloca i32, align 4
  %Y = alloca i32, align 4
  %Y43 = alloca i32, align 4
  %Y74 = alloca i32, align 4
  %Y105 = alloca i32, align 4
  %Y136 = alloca i32, align 4
  %Y167 = alloca i32, align 4
  %Y198 = alloca i32, align 4
  %Y229 = alloca i32, align 4
  %Y260 = alloca i32, align 4
  %Y291 = alloca i32, align 4
  %Y322 = alloca i32, align 4
  %Y353 = alloca i32, align 4
  %Y384 = alloca i32, align 4
  %Y415 = alloca i32, align 4
  %Y446 = alloca i32, align 4
  %Y477 = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
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
  %13 = load i32, ptr %w.addr, align 4
  %idx.ext = zext i32 %13 to i64
  %add.ptr = getelementptr inbounds i32, ptr %12, i64 %idx.ext
  %14 = load i32, ptr %toskew.addr, align 4
  %idx.ext3 = sext i32 %14 to i64
  %add.ptr4 = getelementptr inbounds i32, ptr %add.ptr, i64 %idx.ext3
  store ptr %add.ptr4, ptr %cp1, align 8
  %15 = load ptr, ptr %cp1, align 8
  %16 = load i32, ptr %w.addr, align 4
  %idx.ext5 = zext i32 %16 to i64
  %add.ptr6 = getelementptr inbounds i32, ptr %15, i64 %idx.ext5
  %17 = load i32, ptr %toskew.addr, align 4
  %idx.ext7 = sext i32 %17 to i64
  %add.ptr8 = getelementptr inbounds i32, ptr %add.ptr6, i64 %idx.ext7
  store ptr %add.ptr8, ptr %cp2, align 8
  %18 = load ptr, ptr %cp2, align 8
  %19 = load i32, ptr %w.addr, align 4
  %idx.ext9 = zext i32 %19 to i64
  %add.ptr10 = getelementptr inbounds i32, ptr %18, i64 %idx.ext9
  %20 = load i32, ptr %toskew.addr, align 4
  %idx.ext11 = sext i32 %20 to i64
  %add.ptr12 = getelementptr inbounds i32, ptr %add.ptr10, i64 %idx.ext11
  store ptr %add.ptr12, ptr %cp3, align 8
  %21 = load i32, ptr %w.addr, align 4
  %mul = mul i32 3, %21
  %22 = load i32, ptr %toskew.addr, align 4
  %mul13 = mul nsw i32 4, %22
  %add = add i32 %mul, %mul13
  store i32 %add, ptr %incr, align 4
  %23 = load i32, ptr %y.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %24 = load i32, ptr %h.addr, align 4
  %cmp = icmp uge i32 %24, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, ptr %w.addr, align 4
  %shr = lshr i32 %25, 2
  store i32 %shr, ptr %x.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body
  %26 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %26, i64 16
  %27 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %27 to i32
  store i32 %conv, ptr %Cb, align 4
  %28 = load ptr, ptr %pp.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %28, i64 17
  %29 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %29 to i32
  store i32 %conv15, ptr %Cr, align 4
  %30 = load ptr, ptr %pp.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %30, i64 0
  %31 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %31 to i32
  store i32 %conv17, ptr %Y, align 4
  %32 = load ptr, ptr %clamptab, align 8
  %33 = load i32, ptr %Y, align 4
  %34 = load ptr, ptr %Crrtab, align 8
  %35 = load i32, ptr %Cr, align 4
  %idxprom = sext i32 %35 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %34, i64 %idxprom
  %36 = load i32, ptr %arrayidx18, align 4
  %add19 = add nsw i32 %33, %36
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %32, i64 %idxprom20
  %37 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %37 to i32
  %38 = load ptr, ptr %clamptab, align 8
  %39 = load i32, ptr %Y, align 4
  %40 = load ptr, ptr %Cbgtab, align 8
  %41 = load i32, ptr %Cb, align 4
  %idxprom23 = sext i32 %41 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %40, i64 %idxprom23
  %42 = load i32, ptr %arrayidx24, align 4
  %43 = load ptr, ptr %Crgtab, align 8
  %44 = load i32, ptr %Cr, align 4
  %idxprom25 = sext i32 %44 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %43, i64 %idxprom25
  %45 = load i32, ptr %arrayidx26, align 4
  %add27 = add nsw i32 %42, %45
  %shr28 = ashr i32 %add27, 16
  %add29 = add nsw i32 %39, %shr28
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds i8, ptr %38, i64 %idxprom30
  %46 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %46 to i32
  %shl = shl i32 %conv32, 8
  %or = or i32 %conv22, %shl
  %47 = load ptr, ptr %clamptab, align 8
  %48 = load i32, ptr %Y, align 4
  %49 = load ptr, ptr %Cbbtab, align 8
  %50 = load i32, ptr %Cb, align 4
  %idxprom33 = sext i32 %50 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %49, i64 %idxprom33
  %51 = load i32, ptr %arrayidx34, align 4
  %add35 = add nsw i32 %48, %51
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %47, i64 %idxprom36
  %52 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %52 to i32
  %shl39 = shl i32 %conv38, 16
  %or40 = or i32 %or, %shl39
  %or41 = or i32 %or40, -16777216
  %53 = load ptr, ptr %cp.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, ptr %53, i64 0
  store i32 %or41, ptr %arrayidx42, align 4
  %54 = load ptr, ptr %pp.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %54, i64 1
  %55 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %55 to i32
  store i32 %conv45, ptr %Y43, align 4
  %56 = load ptr, ptr %clamptab, align 8
  %57 = load i32, ptr %Y43, align 4
  %58 = load ptr, ptr %Crrtab, align 8
  %59 = load i32, ptr %Cr, align 4
  %idxprom46 = sext i32 %59 to i64
  %arrayidx47 = getelementptr inbounds i32, ptr %58, i64 %idxprom46
  %60 = load i32, ptr %arrayidx47, align 4
  %add48 = add nsw i32 %57, %60
  %idxprom49 = sext i32 %add48 to i64
  %arrayidx50 = getelementptr inbounds i8, ptr %56, i64 %idxprom49
  %61 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %61 to i32
  %62 = load ptr, ptr %clamptab, align 8
  %63 = load i32, ptr %Y43, align 4
  %64 = load ptr, ptr %Cbgtab, align 8
  %65 = load i32, ptr %Cb, align 4
  %idxprom52 = sext i32 %65 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %64, i64 %idxprom52
  %66 = load i32, ptr %arrayidx53, align 4
  %67 = load ptr, ptr %Crgtab, align 8
  %68 = load i32, ptr %Cr, align 4
  %idxprom54 = sext i32 %68 to i64
  %arrayidx55 = getelementptr inbounds i32, ptr %67, i64 %idxprom54
  %69 = load i32, ptr %arrayidx55, align 4
  %add56 = add nsw i32 %66, %69
  %shr57 = ashr i32 %add56, 16
  %add58 = add nsw i32 %63, %shr57
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds i8, ptr %62, i64 %idxprom59
  %70 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %70 to i32
  %shl62 = shl i32 %conv61, 8
  %or63 = or i32 %conv51, %shl62
  %71 = load ptr, ptr %clamptab, align 8
  %72 = load i32, ptr %Y43, align 4
  %73 = load ptr, ptr %Cbbtab, align 8
  %74 = load i32, ptr %Cb, align 4
  %idxprom64 = sext i32 %74 to i64
  %arrayidx65 = getelementptr inbounds i32, ptr %73, i64 %idxprom64
  %75 = load i32, ptr %arrayidx65, align 4
  %add66 = add nsw i32 %72, %75
  %idxprom67 = sext i32 %add66 to i64
  %arrayidx68 = getelementptr inbounds i8, ptr %71, i64 %idxprom67
  %76 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %76 to i32
  %shl70 = shl i32 %conv69, 16
  %or71 = or i32 %or63, %shl70
  %or72 = or i32 %or71, -16777216
  %77 = load ptr, ptr %cp.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %77, i64 1
  store i32 %or72, ptr %arrayidx73, align 4
  %78 = load ptr, ptr %pp.addr, align 8
  %arrayidx75 = getelementptr inbounds i8, ptr %78, i64 2
  %79 = load i8, ptr %arrayidx75, align 1
  %conv76 = zext i8 %79 to i32
  store i32 %conv76, ptr %Y74, align 4
  %80 = load ptr, ptr %clamptab, align 8
  %81 = load i32, ptr %Y74, align 4
  %82 = load ptr, ptr %Crrtab, align 8
  %83 = load i32, ptr %Cr, align 4
  %idxprom77 = sext i32 %83 to i64
  %arrayidx78 = getelementptr inbounds i32, ptr %82, i64 %idxprom77
  %84 = load i32, ptr %arrayidx78, align 4
  %add79 = add nsw i32 %81, %84
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds i8, ptr %80, i64 %idxprom80
  %85 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %85 to i32
  %86 = load ptr, ptr %clamptab, align 8
  %87 = load i32, ptr %Y74, align 4
  %88 = load ptr, ptr %Cbgtab, align 8
  %89 = load i32, ptr %Cb, align 4
  %idxprom83 = sext i32 %89 to i64
  %arrayidx84 = getelementptr inbounds i32, ptr %88, i64 %idxprom83
  %90 = load i32, ptr %arrayidx84, align 4
  %91 = load ptr, ptr %Crgtab, align 8
  %92 = load i32, ptr %Cr, align 4
  %idxprom85 = sext i32 %92 to i64
  %arrayidx86 = getelementptr inbounds i32, ptr %91, i64 %idxprom85
  %93 = load i32, ptr %arrayidx86, align 4
  %add87 = add nsw i32 %90, %93
  %shr88 = ashr i32 %add87, 16
  %add89 = add nsw i32 %87, %shr88
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds i8, ptr %86, i64 %idxprom90
  %94 = load i8, ptr %arrayidx91, align 1
  %conv92 = zext i8 %94 to i32
  %shl93 = shl i32 %conv92, 8
  %or94 = or i32 %conv82, %shl93
  %95 = load ptr, ptr %clamptab, align 8
  %96 = load i32, ptr %Y74, align 4
  %97 = load ptr, ptr %Cbbtab, align 8
  %98 = load i32, ptr %Cb, align 4
  %idxprom95 = sext i32 %98 to i64
  %arrayidx96 = getelementptr inbounds i32, ptr %97, i64 %idxprom95
  %99 = load i32, ptr %arrayidx96, align 4
  %add97 = add nsw i32 %96, %99
  %idxprom98 = sext i32 %add97 to i64
  %arrayidx99 = getelementptr inbounds i8, ptr %95, i64 %idxprom98
  %100 = load i8, ptr %arrayidx99, align 1
  %conv100 = zext i8 %100 to i32
  %shl101 = shl i32 %conv100, 16
  %or102 = or i32 %or94, %shl101
  %or103 = or i32 %or102, -16777216
  %101 = load ptr, ptr %cp.addr, align 8
  %arrayidx104 = getelementptr inbounds i32, ptr %101, i64 2
  store i32 %or103, ptr %arrayidx104, align 4
  %102 = load ptr, ptr %pp.addr, align 8
  %arrayidx106 = getelementptr inbounds i8, ptr %102, i64 3
  %103 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %103 to i32
  store i32 %conv107, ptr %Y105, align 4
  %104 = load ptr, ptr %clamptab, align 8
  %105 = load i32, ptr %Y105, align 4
  %106 = load ptr, ptr %Crrtab, align 8
  %107 = load i32, ptr %Cr, align 4
  %idxprom108 = sext i32 %107 to i64
  %arrayidx109 = getelementptr inbounds i32, ptr %106, i64 %idxprom108
  %108 = load i32, ptr %arrayidx109, align 4
  %add110 = add nsw i32 %105, %108
  %idxprom111 = sext i32 %add110 to i64
  %arrayidx112 = getelementptr inbounds i8, ptr %104, i64 %idxprom111
  %109 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %109 to i32
  %110 = load ptr, ptr %clamptab, align 8
  %111 = load i32, ptr %Y105, align 4
  %112 = load ptr, ptr %Cbgtab, align 8
  %113 = load i32, ptr %Cb, align 4
  %idxprom114 = sext i32 %113 to i64
  %arrayidx115 = getelementptr inbounds i32, ptr %112, i64 %idxprom114
  %114 = load i32, ptr %arrayidx115, align 4
  %115 = load ptr, ptr %Crgtab, align 8
  %116 = load i32, ptr %Cr, align 4
  %idxprom116 = sext i32 %116 to i64
  %arrayidx117 = getelementptr inbounds i32, ptr %115, i64 %idxprom116
  %117 = load i32, ptr %arrayidx117, align 4
  %add118 = add nsw i32 %114, %117
  %shr119 = ashr i32 %add118, 16
  %add120 = add nsw i32 %111, %shr119
  %idxprom121 = sext i32 %add120 to i64
  %arrayidx122 = getelementptr inbounds i8, ptr %110, i64 %idxprom121
  %118 = load i8, ptr %arrayidx122, align 1
  %conv123 = zext i8 %118 to i32
  %shl124 = shl i32 %conv123, 8
  %or125 = or i32 %conv113, %shl124
  %119 = load ptr, ptr %clamptab, align 8
  %120 = load i32, ptr %Y105, align 4
  %121 = load ptr, ptr %Cbbtab, align 8
  %122 = load i32, ptr %Cb, align 4
  %idxprom126 = sext i32 %122 to i64
  %arrayidx127 = getelementptr inbounds i32, ptr %121, i64 %idxprom126
  %123 = load i32, ptr %arrayidx127, align 4
  %add128 = add nsw i32 %120, %123
  %idxprom129 = sext i32 %add128 to i64
  %arrayidx130 = getelementptr inbounds i8, ptr %119, i64 %idxprom129
  %124 = load i8, ptr %arrayidx130, align 1
  %conv131 = zext i8 %124 to i32
  %shl132 = shl i32 %conv131, 16
  %or133 = or i32 %or125, %shl132
  %or134 = or i32 %or133, -16777216
  %125 = load ptr, ptr %cp.addr, align 8
  %arrayidx135 = getelementptr inbounds i32, ptr %125, i64 3
  store i32 %or134, ptr %arrayidx135, align 4
  %126 = load ptr, ptr %pp.addr, align 8
  %arrayidx137 = getelementptr inbounds i8, ptr %126, i64 4
  %127 = load i8, ptr %arrayidx137, align 1
  %conv138 = zext i8 %127 to i32
  store i32 %conv138, ptr %Y136, align 4
  %128 = load ptr, ptr %clamptab, align 8
  %129 = load i32, ptr %Y136, align 4
  %130 = load ptr, ptr %Crrtab, align 8
  %131 = load i32, ptr %Cr, align 4
  %idxprom139 = sext i32 %131 to i64
  %arrayidx140 = getelementptr inbounds i32, ptr %130, i64 %idxprom139
  %132 = load i32, ptr %arrayidx140, align 4
  %add141 = add nsw i32 %129, %132
  %idxprom142 = sext i32 %add141 to i64
  %arrayidx143 = getelementptr inbounds i8, ptr %128, i64 %idxprom142
  %133 = load i8, ptr %arrayidx143, align 1
  %conv144 = zext i8 %133 to i32
  %134 = load ptr, ptr %clamptab, align 8
  %135 = load i32, ptr %Y136, align 4
  %136 = load ptr, ptr %Cbgtab, align 8
  %137 = load i32, ptr %Cb, align 4
  %idxprom145 = sext i32 %137 to i64
  %arrayidx146 = getelementptr inbounds i32, ptr %136, i64 %idxprom145
  %138 = load i32, ptr %arrayidx146, align 4
  %139 = load ptr, ptr %Crgtab, align 8
  %140 = load i32, ptr %Cr, align 4
  %idxprom147 = sext i32 %140 to i64
  %arrayidx148 = getelementptr inbounds i32, ptr %139, i64 %idxprom147
  %141 = load i32, ptr %arrayidx148, align 4
  %add149 = add nsw i32 %138, %141
  %shr150 = ashr i32 %add149, 16
  %add151 = add nsw i32 %135, %shr150
  %idxprom152 = sext i32 %add151 to i64
  %arrayidx153 = getelementptr inbounds i8, ptr %134, i64 %idxprom152
  %142 = load i8, ptr %arrayidx153, align 1
  %conv154 = zext i8 %142 to i32
  %shl155 = shl i32 %conv154, 8
  %or156 = or i32 %conv144, %shl155
  %143 = load ptr, ptr %clamptab, align 8
  %144 = load i32, ptr %Y136, align 4
  %145 = load ptr, ptr %Cbbtab, align 8
  %146 = load i32, ptr %Cb, align 4
  %idxprom157 = sext i32 %146 to i64
  %arrayidx158 = getelementptr inbounds i32, ptr %145, i64 %idxprom157
  %147 = load i32, ptr %arrayidx158, align 4
  %add159 = add nsw i32 %144, %147
  %idxprom160 = sext i32 %add159 to i64
  %arrayidx161 = getelementptr inbounds i8, ptr %143, i64 %idxprom160
  %148 = load i8, ptr %arrayidx161, align 1
  %conv162 = zext i8 %148 to i32
  %shl163 = shl i32 %conv162, 16
  %or164 = or i32 %or156, %shl163
  %or165 = or i32 %or164, -16777216
  %149 = load ptr, ptr %cp1, align 8
  %arrayidx166 = getelementptr inbounds i32, ptr %149, i64 0
  store i32 %or165, ptr %arrayidx166, align 4
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
  %conv175 = zext i8 %157 to i32
  %158 = load ptr, ptr %clamptab, align 8
  %159 = load i32, ptr %Y167, align 4
  %160 = load ptr, ptr %Cbgtab, align 8
  %161 = load i32, ptr %Cb, align 4
  %idxprom176 = sext i32 %161 to i64
  %arrayidx177 = getelementptr inbounds i32, ptr %160, i64 %idxprom176
  %162 = load i32, ptr %arrayidx177, align 4
  %163 = load ptr, ptr %Crgtab, align 8
  %164 = load i32, ptr %Cr, align 4
  %idxprom178 = sext i32 %164 to i64
  %arrayidx179 = getelementptr inbounds i32, ptr %163, i64 %idxprom178
  %165 = load i32, ptr %arrayidx179, align 4
  %add180 = add nsw i32 %162, %165
  %shr181 = ashr i32 %add180, 16
  %add182 = add nsw i32 %159, %shr181
  %idxprom183 = sext i32 %add182 to i64
  %arrayidx184 = getelementptr inbounds i8, ptr %158, i64 %idxprom183
  %166 = load i8, ptr %arrayidx184, align 1
  %conv185 = zext i8 %166 to i32
  %shl186 = shl i32 %conv185, 8
  %or187 = or i32 %conv175, %shl186
  %167 = load ptr, ptr %clamptab, align 8
  %168 = load i32, ptr %Y167, align 4
  %169 = load ptr, ptr %Cbbtab, align 8
  %170 = load i32, ptr %Cb, align 4
  %idxprom188 = sext i32 %170 to i64
  %arrayidx189 = getelementptr inbounds i32, ptr %169, i64 %idxprom188
  %171 = load i32, ptr %arrayidx189, align 4
  %add190 = add nsw i32 %168, %171
  %idxprom191 = sext i32 %add190 to i64
  %arrayidx192 = getelementptr inbounds i8, ptr %167, i64 %idxprom191
  %172 = load i8, ptr %arrayidx192, align 1
  %conv193 = zext i8 %172 to i32
  %shl194 = shl i32 %conv193, 16
  %or195 = or i32 %or187, %shl194
  %or196 = or i32 %or195, -16777216
  %173 = load ptr, ptr %cp1, align 8
  %arrayidx197 = getelementptr inbounds i32, ptr %173, i64 1
  store i32 %or196, ptr %arrayidx197, align 4
  %174 = load ptr, ptr %pp.addr, align 8
  %arrayidx199 = getelementptr inbounds i8, ptr %174, i64 6
  %175 = load i8, ptr %arrayidx199, align 1
  %conv200 = zext i8 %175 to i32
  store i32 %conv200, ptr %Y198, align 4
  %176 = load ptr, ptr %clamptab, align 8
  %177 = load i32, ptr %Y198, align 4
  %178 = load ptr, ptr %Crrtab, align 8
  %179 = load i32, ptr %Cr, align 4
  %idxprom201 = sext i32 %179 to i64
  %arrayidx202 = getelementptr inbounds i32, ptr %178, i64 %idxprom201
  %180 = load i32, ptr %arrayidx202, align 4
  %add203 = add nsw i32 %177, %180
  %idxprom204 = sext i32 %add203 to i64
  %arrayidx205 = getelementptr inbounds i8, ptr %176, i64 %idxprom204
  %181 = load i8, ptr %arrayidx205, align 1
  %conv206 = zext i8 %181 to i32
  %182 = load ptr, ptr %clamptab, align 8
  %183 = load i32, ptr %Y198, align 4
  %184 = load ptr, ptr %Cbgtab, align 8
  %185 = load i32, ptr %Cb, align 4
  %idxprom207 = sext i32 %185 to i64
  %arrayidx208 = getelementptr inbounds i32, ptr %184, i64 %idxprom207
  %186 = load i32, ptr %arrayidx208, align 4
  %187 = load ptr, ptr %Crgtab, align 8
  %188 = load i32, ptr %Cr, align 4
  %idxprom209 = sext i32 %188 to i64
  %arrayidx210 = getelementptr inbounds i32, ptr %187, i64 %idxprom209
  %189 = load i32, ptr %arrayidx210, align 4
  %add211 = add nsw i32 %186, %189
  %shr212 = ashr i32 %add211, 16
  %add213 = add nsw i32 %183, %shr212
  %idxprom214 = sext i32 %add213 to i64
  %arrayidx215 = getelementptr inbounds i8, ptr %182, i64 %idxprom214
  %190 = load i8, ptr %arrayidx215, align 1
  %conv216 = zext i8 %190 to i32
  %shl217 = shl i32 %conv216, 8
  %or218 = or i32 %conv206, %shl217
  %191 = load ptr, ptr %clamptab, align 8
  %192 = load i32, ptr %Y198, align 4
  %193 = load ptr, ptr %Cbbtab, align 8
  %194 = load i32, ptr %Cb, align 4
  %idxprom219 = sext i32 %194 to i64
  %arrayidx220 = getelementptr inbounds i32, ptr %193, i64 %idxprom219
  %195 = load i32, ptr %arrayidx220, align 4
  %add221 = add nsw i32 %192, %195
  %idxprom222 = sext i32 %add221 to i64
  %arrayidx223 = getelementptr inbounds i8, ptr %191, i64 %idxprom222
  %196 = load i8, ptr %arrayidx223, align 1
  %conv224 = zext i8 %196 to i32
  %shl225 = shl i32 %conv224, 16
  %or226 = or i32 %or218, %shl225
  %or227 = or i32 %or226, -16777216
  %197 = load ptr, ptr %cp1, align 8
  %arrayidx228 = getelementptr inbounds i32, ptr %197, i64 2
  store i32 %or227, ptr %arrayidx228, align 4
  %198 = load ptr, ptr %pp.addr, align 8
  %arrayidx230 = getelementptr inbounds i8, ptr %198, i64 7
  %199 = load i8, ptr %arrayidx230, align 1
  %conv231 = zext i8 %199 to i32
  store i32 %conv231, ptr %Y229, align 4
  %200 = load ptr, ptr %clamptab, align 8
  %201 = load i32, ptr %Y229, align 4
  %202 = load ptr, ptr %Crrtab, align 8
  %203 = load i32, ptr %Cr, align 4
  %idxprom232 = sext i32 %203 to i64
  %arrayidx233 = getelementptr inbounds i32, ptr %202, i64 %idxprom232
  %204 = load i32, ptr %arrayidx233, align 4
  %add234 = add nsw i32 %201, %204
  %idxprom235 = sext i32 %add234 to i64
  %arrayidx236 = getelementptr inbounds i8, ptr %200, i64 %idxprom235
  %205 = load i8, ptr %arrayidx236, align 1
  %conv237 = zext i8 %205 to i32
  %206 = load ptr, ptr %clamptab, align 8
  %207 = load i32, ptr %Y229, align 4
  %208 = load ptr, ptr %Cbgtab, align 8
  %209 = load i32, ptr %Cb, align 4
  %idxprom238 = sext i32 %209 to i64
  %arrayidx239 = getelementptr inbounds i32, ptr %208, i64 %idxprom238
  %210 = load i32, ptr %arrayidx239, align 4
  %211 = load ptr, ptr %Crgtab, align 8
  %212 = load i32, ptr %Cr, align 4
  %idxprom240 = sext i32 %212 to i64
  %arrayidx241 = getelementptr inbounds i32, ptr %211, i64 %idxprom240
  %213 = load i32, ptr %arrayidx241, align 4
  %add242 = add nsw i32 %210, %213
  %shr243 = ashr i32 %add242, 16
  %add244 = add nsw i32 %207, %shr243
  %idxprom245 = sext i32 %add244 to i64
  %arrayidx246 = getelementptr inbounds i8, ptr %206, i64 %idxprom245
  %214 = load i8, ptr %arrayidx246, align 1
  %conv247 = zext i8 %214 to i32
  %shl248 = shl i32 %conv247, 8
  %or249 = or i32 %conv237, %shl248
  %215 = load ptr, ptr %clamptab, align 8
  %216 = load i32, ptr %Y229, align 4
  %217 = load ptr, ptr %Cbbtab, align 8
  %218 = load i32, ptr %Cb, align 4
  %idxprom250 = sext i32 %218 to i64
  %arrayidx251 = getelementptr inbounds i32, ptr %217, i64 %idxprom250
  %219 = load i32, ptr %arrayidx251, align 4
  %add252 = add nsw i32 %216, %219
  %idxprom253 = sext i32 %add252 to i64
  %arrayidx254 = getelementptr inbounds i8, ptr %215, i64 %idxprom253
  %220 = load i8, ptr %arrayidx254, align 1
  %conv255 = zext i8 %220 to i32
  %shl256 = shl i32 %conv255, 16
  %or257 = or i32 %or249, %shl256
  %or258 = or i32 %or257, -16777216
  %221 = load ptr, ptr %cp1, align 8
  %arrayidx259 = getelementptr inbounds i32, ptr %221, i64 3
  store i32 %or258, ptr %arrayidx259, align 4
  %222 = load ptr, ptr %pp.addr, align 8
  %arrayidx261 = getelementptr inbounds i8, ptr %222, i64 8
  %223 = load i8, ptr %arrayidx261, align 1
  %conv262 = zext i8 %223 to i32
  store i32 %conv262, ptr %Y260, align 4
  %224 = load ptr, ptr %clamptab, align 8
  %225 = load i32, ptr %Y260, align 4
  %226 = load ptr, ptr %Crrtab, align 8
  %227 = load i32, ptr %Cr, align 4
  %idxprom263 = sext i32 %227 to i64
  %arrayidx264 = getelementptr inbounds i32, ptr %226, i64 %idxprom263
  %228 = load i32, ptr %arrayidx264, align 4
  %add265 = add nsw i32 %225, %228
  %idxprom266 = sext i32 %add265 to i64
  %arrayidx267 = getelementptr inbounds i8, ptr %224, i64 %idxprom266
  %229 = load i8, ptr %arrayidx267, align 1
  %conv268 = zext i8 %229 to i32
  %230 = load ptr, ptr %clamptab, align 8
  %231 = load i32, ptr %Y260, align 4
  %232 = load ptr, ptr %Cbgtab, align 8
  %233 = load i32, ptr %Cb, align 4
  %idxprom269 = sext i32 %233 to i64
  %arrayidx270 = getelementptr inbounds i32, ptr %232, i64 %idxprom269
  %234 = load i32, ptr %arrayidx270, align 4
  %235 = load ptr, ptr %Crgtab, align 8
  %236 = load i32, ptr %Cr, align 4
  %idxprom271 = sext i32 %236 to i64
  %arrayidx272 = getelementptr inbounds i32, ptr %235, i64 %idxprom271
  %237 = load i32, ptr %arrayidx272, align 4
  %add273 = add nsw i32 %234, %237
  %shr274 = ashr i32 %add273, 16
  %add275 = add nsw i32 %231, %shr274
  %idxprom276 = sext i32 %add275 to i64
  %arrayidx277 = getelementptr inbounds i8, ptr %230, i64 %idxprom276
  %238 = load i8, ptr %arrayidx277, align 1
  %conv278 = zext i8 %238 to i32
  %shl279 = shl i32 %conv278, 8
  %or280 = or i32 %conv268, %shl279
  %239 = load ptr, ptr %clamptab, align 8
  %240 = load i32, ptr %Y260, align 4
  %241 = load ptr, ptr %Cbbtab, align 8
  %242 = load i32, ptr %Cb, align 4
  %idxprom281 = sext i32 %242 to i64
  %arrayidx282 = getelementptr inbounds i32, ptr %241, i64 %idxprom281
  %243 = load i32, ptr %arrayidx282, align 4
  %add283 = add nsw i32 %240, %243
  %idxprom284 = sext i32 %add283 to i64
  %arrayidx285 = getelementptr inbounds i8, ptr %239, i64 %idxprom284
  %244 = load i8, ptr %arrayidx285, align 1
  %conv286 = zext i8 %244 to i32
  %shl287 = shl i32 %conv286, 16
  %or288 = or i32 %or280, %shl287
  %or289 = or i32 %or288, -16777216
  %245 = load ptr, ptr %cp2, align 8
  %arrayidx290 = getelementptr inbounds i32, ptr %245, i64 0
  store i32 %or289, ptr %arrayidx290, align 4
  %246 = load ptr, ptr %pp.addr, align 8
  %arrayidx292 = getelementptr inbounds i8, ptr %246, i64 9
  %247 = load i8, ptr %arrayidx292, align 1
  %conv293 = zext i8 %247 to i32
  store i32 %conv293, ptr %Y291, align 4
  %248 = load ptr, ptr %clamptab, align 8
  %249 = load i32, ptr %Y291, align 4
  %250 = load ptr, ptr %Crrtab, align 8
  %251 = load i32, ptr %Cr, align 4
  %idxprom294 = sext i32 %251 to i64
  %arrayidx295 = getelementptr inbounds i32, ptr %250, i64 %idxprom294
  %252 = load i32, ptr %arrayidx295, align 4
  %add296 = add nsw i32 %249, %252
  %idxprom297 = sext i32 %add296 to i64
  %arrayidx298 = getelementptr inbounds i8, ptr %248, i64 %idxprom297
  %253 = load i8, ptr %arrayidx298, align 1
  %conv299 = zext i8 %253 to i32
  %254 = load ptr, ptr %clamptab, align 8
  %255 = load i32, ptr %Y291, align 4
  %256 = load ptr, ptr %Cbgtab, align 8
  %257 = load i32, ptr %Cb, align 4
  %idxprom300 = sext i32 %257 to i64
  %arrayidx301 = getelementptr inbounds i32, ptr %256, i64 %idxprom300
  %258 = load i32, ptr %arrayidx301, align 4
  %259 = load ptr, ptr %Crgtab, align 8
  %260 = load i32, ptr %Cr, align 4
  %idxprom302 = sext i32 %260 to i64
  %arrayidx303 = getelementptr inbounds i32, ptr %259, i64 %idxprom302
  %261 = load i32, ptr %arrayidx303, align 4
  %add304 = add nsw i32 %258, %261
  %shr305 = ashr i32 %add304, 16
  %add306 = add nsw i32 %255, %shr305
  %idxprom307 = sext i32 %add306 to i64
  %arrayidx308 = getelementptr inbounds i8, ptr %254, i64 %idxprom307
  %262 = load i8, ptr %arrayidx308, align 1
  %conv309 = zext i8 %262 to i32
  %shl310 = shl i32 %conv309, 8
  %or311 = or i32 %conv299, %shl310
  %263 = load ptr, ptr %clamptab, align 8
  %264 = load i32, ptr %Y291, align 4
  %265 = load ptr, ptr %Cbbtab, align 8
  %266 = load i32, ptr %Cb, align 4
  %idxprom312 = sext i32 %266 to i64
  %arrayidx313 = getelementptr inbounds i32, ptr %265, i64 %idxprom312
  %267 = load i32, ptr %arrayidx313, align 4
  %add314 = add nsw i32 %264, %267
  %idxprom315 = sext i32 %add314 to i64
  %arrayidx316 = getelementptr inbounds i8, ptr %263, i64 %idxprom315
  %268 = load i8, ptr %arrayidx316, align 1
  %conv317 = zext i8 %268 to i32
  %shl318 = shl i32 %conv317, 16
  %or319 = or i32 %or311, %shl318
  %or320 = or i32 %or319, -16777216
  %269 = load ptr, ptr %cp2, align 8
  %arrayidx321 = getelementptr inbounds i32, ptr %269, i64 1
  store i32 %or320, ptr %arrayidx321, align 4
  %270 = load ptr, ptr %pp.addr, align 8
  %arrayidx323 = getelementptr inbounds i8, ptr %270, i64 10
  %271 = load i8, ptr %arrayidx323, align 1
  %conv324 = zext i8 %271 to i32
  store i32 %conv324, ptr %Y322, align 4
  %272 = load ptr, ptr %clamptab, align 8
  %273 = load i32, ptr %Y322, align 4
  %274 = load ptr, ptr %Crrtab, align 8
  %275 = load i32, ptr %Cr, align 4
  %idxprom325 = sext i32 %275 to i64
  %arrayidx326 = getelementptr inbounds i32, ptr %274, i64 %idxprom325
  %276 = load i32, ptr %arrayidx326, align 4
  %add327 = add nsw i32 %273, %276
  %idxprom328 = sext i32 %add327 to i64
  %arrayidx329 = getelementptr inbounds i8, ptr %272, i64 %idxprom328
  %277 = load i8, ptr %arrayidx329, align 1
  %conv330 = zext i8 %277 to i32
  %278 = load ptr, ptr %clamptab, align 8
  %279 = load i32, ptr %Y322, align 4
  %280 = load ptr, ptr %Cbgtab, align 8
  %281 = load i32, ptr %Cb, align 4
  %idxprom331 = sext i32 %281 to i64
  %arrayidx332 = getelementptr inbounds i32, ptr %280, i64 %idxprom331
  %282 = load i32, ptr %arrayidx332, align 4
  %283 = load ptr, ptr %Crgtab, align 8
  %284 = load i32, ptr %Cr, align 4
  %idxprom333 = sext i32 %284 to i64
  %arrayidx334 = getelementptr inbounds i32, ptr %283, i64 %idxprom333
  %285 = load i32, ptr %arrayidx334, align 4
  %add335 = add nsw i32 %282, %285
  %shr336 = ashr i32 %add335, 16
  %add337 = add nsw i32 %279, %shr336
  %idxprom338 = sext i32 %add337 to i64
  %arrayidx339 = getelementptr inbounds i8, ptr %278, i64 %idxprom338
  %286 = load i8, ptr %arrayidx339, align 1
  %conv340 = zext i8 %286 to i32
  %shl341 = shl i32 %conv340, 8
  %or342 = or i32 %conv330, %shl341
  %287 = load ptr, ptr %clamptab, align 8
  %288 = load i32, ptr %Y322, align 4
  %289 = load ptr, ptr %Cbbtab, align 8
  %290 = load i32, ptr %Cb, align 4
  %idxprom343 = sext i32 %290 to i64
  %arrayidx344 = getelementptr inbounds i32, ptr %289, i64 %idxprom343
  %291 = load i32, ptr %arrayidx344, align 4
  %add345 = add nsw i32 %288, %291
  %idxprom346 = sext i32 %add345 to i64
  %arrayidx347 = getelementptr inbounds i8, ptr %287, i64 %idxprom346
  %292 = load i8, ptr %arrayidx347, align 1
  %conv348 = zext i8 %292 to i32
  %shl349 = shl i32 %conv348, 16
  %or350 = or i32 %or342, %shl349
  %or351 = or i32 %or350, -16777216
  %293 = load ptr, ptr %cp2, align 8
  %arrayidx352 = getelementptr inbounds i32, ptr %293, i64 2
  store i32 %or351, ptr %arrayidx352, align 4
  %294 = load ptr, ptr %pp.addr, align 8
  %arrayidx354 = getelementptr inbounds i8, ptr %294, i64 11
  %295 = load i8, ptr %arrayidx354, align 1
  %conv355 = zext i8 %295 to i32
  store i32 %conv355, ptr %Y353, align 4
  %296 = load ptr, ptr %clamptab, align 8
  %297 = load i32, ptr %Y353, align 4
  %298 = load ptr, ptr %Crrtab, align 8
  %299 = load i32, ptr %Cr, align 4
  %idxprom356 = sext i32 %299 to i64
  %arrayidx357 = getelementptr inbounds i32, ptr %298, i64 %idxprom356
  %300 = load i32, ptr %arrayidx357, align 4
  %add358 = add nsw i32 %297, %300
  %idxprom359 = sext i32 %add358 to i64
  %arrayidx360 = getelementptr inbounds i8, ptr %296, i64 %idxprom359
  %301 = load i8, ptr %arrayidx360, align 1
  %conv361 = zext i8 %301 to i32
  %302 = load ptr, ptr %clamptab, align 8
  %303 = load i32, ptr %Y353, align 4
  %304 = load ptr, ptr %Cbgtab, align 8
  %305 = load i32, ptr %Cb, align 4
  %idxprom362 = sext i32 %305 to i64
  %arrayidx363 = getelementptr inbounds i32, ptr %304, i64 %idxprom362
  %306 = load i32, ptr %arrayidx363, align 4
  %307 = load ptr, ptr %Crgtab, align 8
  %308 = load i32, ptr %Cr, align 4
  %idxprom364 = sext i32 %308 to i64
  %arrayidx365 = getelementptr inbounds i32, ptr %307, i64 %idxprom364
  %309 = load i32, ptr %arrayidx365, align 4
  %add366 = add nsw i32 %306, %309
  %shr367 = ashr i32 %add366, 16
  %add368 = add nsw i32 %303, %shr367
  %idxprom369 = sext i32 %add368 to i64
  %arrayidx370 = getelementptr inbounds i8, ptr %302, i64 %idxprom369
  %310 = load i8, ptr %arrayidx370, align 1
  %conv371 = zext i8 %310 to i32
  %shl372 = shl i32 %conv371, 8
  %or373 = or i32 %conv361, %shl372
  %311 = load ptr, ptr %clamptab, align 8
  %312 = load i32, ptr %Y353, align 4
  %313 = load ptr, ptr %Cbbtab, align 8
  %314 = load i32, ptr %Cb, align 4
  %idxprom374 = sext i32 %314 to i64
  %arrayidx375 = getelementptr inbounds i32, ptr %313, i64 %idxprom374
  %315 = load i32, ptr %arrayidx375, align 4
  %add376 = add nsw i32 %312, %315
  %idxprom377 = sext i32 %add376 to i64
  %arrayidx378 = getelementptr inbounds i8, ptr %311, i64 %idxprom377
  %316 = load i8, ptr %arrayidx378, align 1
  %conv379 = zext i8 %316 to i32
  %shl380 = shl i32 %conv379, 16
  %or381 = or i32 %or373, %shl380
  %or382 = or i32 %or381, -16777216
  %317 = load ptr, ptr %cp2, align 8
  %arrayidx383 = getelementptr inbounds i32, ptr %317, i64 3
  store i32 %or382, ptr %arrayidx383, align 4
  %318 = load ptr, ptr %pp.addr, align 8
  %arrayidx385 = getelementptr inbounds i8, ptr %318, i64 12
  %319 = load i8, ptr %arrayidx385, align 1
  %conv386 = zext i8 %319 to i32
  store i32 %conv386, ptr %Y384, align 4
  %320 = load ptr, ptr %clamptab, align 8
  %321 = load i32, ptr %Y384, align 4
  %322 = load ptr, ptr %Crrtab, align 8
  %323 = load i32, ptr %Cr, align 4
  %idxprom387 = sext i32 %323 to i64
  %arrayidx388 = getelementptr inbounds i32, ptr %322, i64 %idxprom387
  %324 = load i32, ptr %arrayidx388, align 4
  %add389 = add nsw i32 %321, %324
  %idxprom390 = sext i32 %add389 to i64
  %arrayidx391 = getelementptr inbounds i8, ptr %320, i64 %idxprom390
  %325 = load i8, ptr %arrayidx391, align 1
  %conv392 = zext i8 %325 to i32
  %326 = load ptr, ptr %clamptab, align 8
  %327 = load i32, ptr %Y384, align 4
  %328 = load ptr, ptr %Cbgtab, align 8
  %329 = load i32, ptr %Cb, align 4
  %idxprom393 = sext i32 %329 to i64
  %arrayidx394 = getelementptr inbounds i32, ptr %328, i64 %idxprom393
  %330 = load i32, ptr %arrayidx394, align 4
  %331 = load ptr, ptr %Crgtab, align 8
  %332 = load i32, ptr %Cr, align 4
  %idxprom395 = sext i32 %332 to i64
  %arrayidx396 = getelementptr inbounds i32, ptr %331, i64 %idxprom395
  %333 = load i32, ptr %arrayidx396, align 4
  %add397 = add nsw i32 %330, %333
  %shr398 = ashr i32 %add397, 16
  %add399 = add nsw i32 %327, %shr398
  %idxprom400 = sext i32 %add399 to i64
  %arrayidx401 = getelementptr inbounds i8, ptr %326, i64 %idxprom400
  %334 = load i8, ptr %arrayidx401, align 1
  %conv402 = zext i8 %334 to i32
  %shl403 = shl i32 %conv402, 8
  %or404 = or i32 %conv392, %shl403
  %335 = load ptr, ptr %clamptab, align 8
  %336 = load i32, ptr %Y384, align 4
  %337 = load ptr, ptr %Cbbtab, align 8
  %338 = load i32, ptr %Cb, align 4
  %idxprom405 = sext i32 %338 to i64
  %arrayidx406 = getelementptr inbounds i32, ptr %337, i64 %idxprom405
  %339 = load i32, ptr %arrayidx406, align 4
  %add407 = add nsw i32 %336, %339
  %idxprom408 = sext i32 %add407 to i64
  %arrayidx409 = getelementptr inbounds i8, ptr %335, i64 %idxprom408
  %340 = load i8, ptr %arrayidx409, align 1
  %conv410 = zext i8 %340 to i32
  %shl411 = shl i32 %conv410, 16
  %or412 = or i32 %or404, %shl411
  %or413 = or i32 %or412, -16777216
  %341 = load ptr, ptr %cp3, align 8
  %arrayidx414 = getelementptr inbounds i32, ptr %341, i64 0
  store i32 %or413, ptr %arrayidx414, align 4
  %342 = load ptr, ptr %pp.addr, align 8
  %arrayidx416 = getelementptr inbounds i8, ptr %342, i64 13
  %343 = load i8, ptr %arrayidx416, align 1
  %conv417 = zext i8 %343 to i32
  store i32 %conv417, ptr %Y415, align 4
  %344 = load ptr, ptr %clamptab, align 8
  %345 = load i32, ptr %Y415, align 4
  %346 = load ptr, ptr %Crrtab, align 8
  %347 = load i32, ptr %Cr, align 4
  %idxprom418 = sext i32 %347 to i64
  %arrayidx419 = getelementptr inbounds i32, ptr %346, i64 %idxprom418
  %348 = load i32, ptr %arrayidx419, align 4
  %add420 = add nsw i32 %345, %348
  %idxprom421 = sext i32 %add420 to i64
  %arrayidx422 = getelementptr inbounds i8, ptr %344, i64 %idxprom421
  %349 = load i8, ptr %arrayidx422, align 1
  %conv423 = zext i8 %349 to i32
  %350 = load ptr, ptr %clamptab, align 8
  %351 = load i32, ptr %Y415, align 4
  %352 = load ptr, ptr %Cbgtab, align 8
  %353 = load i32, ptr %Cb, align 4
  %idxprom424 = sext i32 %353 to i64
  %arrayidx425 = getelementptr inbounds i32, ptr %352, i64 %idxprom424
  %354 = load i32, ptr %arrayidx425, align 4
  %355 = load ptr, ptr %Crgtab, align 8
  %356 = load i32, ptr %Cr, align 4
  %idxprom426 = sext i32 %356 to i64
  %arrayidx427 = getelementptr inbounds i32, ptr %355, i64 %idxprom426
  %357 = load i32, ptr %arrayidx427, align 4
  %add428 = add nsw i32 %354, %357
  %shr429 = ashr i32 %add428, 16
  %add430 = add nsw i32 %351, %shr429
  %idxprom431 = sext i32 %add430 to i64
  %arrayidx432 = getelementptr inbounds i8, ptr %350, i64 %idxprom431
  %358 = load i8, ptr %arrayidx432, align 1
  %conv433 = zext i8 %358 to i32
  %shl434 = shl i32 %conv433, 8
  %or435 = or i32 %conv423, %shl434
  %359 = load ptr, ptr %clamptab, align 8
  %360 = load i32, ptr %Y415, align 4
  %361 = load ptr, ptr %Cbbtab, align 8
  %362 = load i32, ptr %Cb, align 4
  %idxprom436 = sext i32 %362 to i64
  %arrayidx437 = getelementptr inbounds i32, ptr %361, i64 %idxprom436
  %363 = load i32, ptr %arrayidx437, align 4
  %add438 = add nsw i32 %360, %363
  %idxprom439 = sext i32 %add438 to i64
  %arrayidx440 = getelementptr inbounds i8, ptr %359, i64 %idxprom439
  %364 = load i8, ptr %arrayidx440, align 1
  %conv441 = zext i8 %364 to i32
  %shl442 = shl i32 %conv441, 16
  %or443 = or i32 %or435, %shl442
  %or444 = or i32 %or443, -16777216
  %365 = load ptr, ptr %cp3, align 8
  %arrayidx445 = getelementptr inbounds i32, ptr %365, i64 1
  store i32 %or444, ptr %arrayidx445, align 4
  %366 = load ptr, ptr %pp.addr, align 8
  %arrayidx447 = getelementptr inbounds i8, ptr %366, i64 14
  %367 = load i8, ptr %arrayidx447, align 1
  %conv448 = zext i8 %367 to i32
  store i32 %conv448, ptr %Y446, align 4
  %368 = load ptr, ptr %clamptab, align 8
  %369 = load i32, ptr %Y446, align 4
  %370 = load ptr, ptr %Crrtab, align 8
  %371 = load i32, ptr %Cr, align 4
  %idxprom449 = sext i32 %371 to i64
  %arrayidx450 = getelementptr inbounds i32, ptr %370, i64 %idxprom449
  %372 = load i32, ptr %arrayidx450, align 4
  %add451 = add nsw i32 %369, %372
  %idxprom452 = sext i32 %add451 to i64
  %arrayidx453 = getelementptr inbounds i8, ptr %368, i64 %idxprom452
  %373 = load i8, ptr %arrayidx453, align 1
  %conv454 = zext i8 %373 to i32
  %374 = load ptr, ptr %clamptab, align 8
  %375 = load i32, ptr %Y446, align 4
  %376 = load ptr, ptr %Cbgtab, align 8
  %377 = load i32, ptr %Cb, align 4
  %idxprom455 = sext i32 %377 to i64
  %arrayidx456 = getelementptr inbounds i32, ptr %376, i64 %idxprom455
  %378 = load i32, ptr %arrayidx456, align 4
  %379 = load ptr, ptr %Crgtab, align 8
  %380 = load i32, ptr %Cr, align 4
  %idxprom457 = sext i32 %380 to i64
  %arrayidx458 = getelementptr inbounds i32, ptr %379, i64 %idxprom457
  %381 = load i32, ptr %arrayidx458, align 4
  %add459 = add nsw i32 %378, %381
  %shr460 = ashr i32 %add459, 16
  %add461 = add nsw i32 %375, %shr460
  %idxprom462 = sext i32 %add461 to i64
  %arrayidx463 = getelementptr inbounds i8, ptr %374, i64 %idxprom462
  %382 = load i8, ptr %arrayidx463, align 1
  %conv464 = zext i8 %382 to i32
  %shl465 = shl i32 %conv464, 8
  %or466 = or i32 %conv454, %shl465
  %383 = load ptr, ptr %clamptab, align 8
  %384 = load i32, ptr %Y446, align 4
  %385 = load ptr, ptr %Cbbtab, align 8
  %386 = load i32, ptr %Cb, align 4
  %idxprom467 = sext i32 %386 to i64
  %arrayidx468 = getelementptr inbounds i32, ptr %385, i64 %idxprom467
  %387 = load i32, ptr %arrayidx468, align 4
  %add469 = add nsw i32 %384, %387
  %idxprom470 = sext i32 %add469 to i64
  %arrayidx471 = getelementptr inbounds i8, ptr %383, i64 %idxprom470
  %388 = load i8, ptr %arrayidx471, align 1
  %conv472 = zext i8 %388 to i32
  %shl473 = shl i32 %conv472, 16
  %or474 = or i32 %or466, %shl473
  %or475 = or i32 %or474, -16777216
  %389 = load ptr, ptr %cp3, align 8
  %arrayidx476 = getelementptr inbounds i32, ptr %389, i64 2
  store i32 %or475, ptr %arrayidx476, align 4
  %390 = load ptr, ptr %pp.addr, align 8
  %arrayidx478 = getelementptr inbounds i8, ptr %390, i64 15
  %391 = load i8, ptr %arrayidx478, align 1
  %conv479 = zext i8 %391 to i32
  store i32 %conv479, ptr %Y477, align 4
  %392 = load ptr, ptr %clamptab, align 8
  %393 = load i32, ptr %Y477, align 4
  %394 = load ptr, ptr %Crrtab, align 8
  %395 = load i32, ptr %Cr, align 4
  %idxprom480 = sext i32 %395 to i64
  %arrayidx481 = getelementptr inbounds i32, ptr %394, i64 %idxprom480
  %396 = load i32, ptr %arrayidx481, align 4
  %add482 = add nsw i32 %393, %396
  %idxprom483 = sext i32 %add482 to i64
  %arrayidx484 = getelementptr inbounds i8, ptr %392, i64 %idxprom483
  %397 = load i8, ptr %arrayidx484, align 1
  %conv485 = zext i8 %397 to i32
  %398 = load ptr, ptr %clamptab, align 8
  %399 = load i32, ptr %Y477, align 4
  %400 = load ptr, ptr %Cbgtab, align 8
  %401 = load i32, ptr %Cb, align 4
  %idxprom486 = sext i32 %401 to i64
  %arrayidx487 = getelementptr inbounds i32, ptr %400, i64 %idxprom486
  %402 = load i32, ptr %arrayidx487, align 4
  %403 = load ptr, ptr %Crgtab, align 8
  %404 = load i32, ptr %Cr, align 4
  %idxprom488 = sext i32 %404 to i64
  %arrayidx489 = getelementptr inbounds i32, ptr %403, i64 %idxprom488
  %405 = load i32, ptr %arrayidx489, align 4
  %add490 = add nsw i32 %402, %405
  %shr491 = ashr i32 %add490, 16
  %add492 = add nsw i32 %399, %shr491
  %idxprom493 = sext i32 %add492 to i64
  %arrayidx494 = getelementptr inbounds i8, ptr %398, i64 %idxprom493
  %406 = load i8, ptr %arrayidx494, align 1
  %conv495 = zext i8 %406 to i32
  %shl496 = shl i32 %conv495, 8
  %or497 = or i32 %conv485, %shl496
  %407 = load ptr, ptr %clamptab, align 8
  %408 = load i32, ptr %Y477, align 4
  %409 = load ptr, ptr %Cbbtab, align 8
  %410 = load i32, ptr %Cb, align 4
  %idxprom498 = sext i32 %410 to i64
  %arrayidx499 = getelementptr inbounds i32, ptr %409, i64 %idxprom498
  %411 = load i32, ptr %arrayidx499, align 4
  %add500 = add nsw i32 %408, %411
  %idxprom501 = sext i32 %add500 to i64
  %arrayidx502 = getelementptr inbounds i8, ptr %407, i64 %idxprom501
  %412 = load i8, ptr %arrayidx502, align 1
  %conv503 = zext i8 %412 to i32
  %shl504 = shl i32 %conv503, 16
  %or505 = or i32 %or497, %shl504
  %or506 = or i32 %or505, -16777216
  %413 = load ptr, ptr %cp3, align 8
  %arrayidx507 = getelementptr inbounds i32, ptr %413, i64 3
  store i32 %or506, ptr %arrayidx507, align 4
  %414 = load ptr, ptr %cp.addr, align 8
  %add.ptr508 = getelementptr inbounds i32, ptr %414, i64 4
  store ptr %add.ptr508, ptr %cp.addr, align 8
  %415 = load ptr, ptr %cp1, align 8
  %add.ptr509 = getelementptr inbounds i32, ptr %415, i64 4
  store ptr %add.ptr509, ptr %cp1, align 8
  %416 = load ptr, ptr %cp2, align 8
  %add.ptr510 = getelementptr inbounds i32, ptr %416, i64 4
  store ptr %add.ptr510, ptr %cp2, align 8
  %417 = load ptr, ptr %cp3, align 8
  %add.ptr511 = getelementptr inbounds i32, ptr %417, i64 4
  store ptr %add.ptr511, ptr %cp3, align 8
  %418 = load ptr, ptr %pp.addr, align 8
  %add.ptr512 = getelementptr inbounds i8, ptr %418, i64 18
  store ptr %add.ptr512, ptr %pp.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %419 = load i32, ptr %x.addr, align 4
  %dec = add i32 %419, -1
  store i32 %dec, ptr %x.addr, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !57

do.end:                                           ; preds = %do.cond
  %420 = load i32, ptr %incr, align 4
  %421 = load ptr, ptr %cp.addr, align 8
  %idx.ext513 = sext i32 %420 to i64
  %add.ptr514 = getelementptr inbounds i32, ptr %421, i64 %idx.ext513
  store ptr %add.ptr514, ptr %cp.addr, align 8
  %422 = load i32, ptr %incr, align 4
  %423 = load ptr, ptr %cp1, align 8
  %idx.ext515 = sext i32 %422 to i64
  %add.ptr516 = getelementptr inbounds i32, ptr %423, i64 %idx.ext515
  store ptr %add.ptr516, ptr %cp1, align 8
  %424 = load i32, ptr %incr, align 4
  %425 = load ptr, ptr %cp2, align 8
  %idx.ext517 = sext i32 %424 to i64
  %add.ptr518 = getelementptr inbounds i32, ptr %425, i64 %idx.ext517
  store ptr %add.ptr518, ptr %cp2, align 8
  %426 = load i32, ptr %incr, align 4
  %427 = load ptr, ptr %cp3, align 8
  %idx.ext519 = sext i32 %426 to i64
  %add.ptr520 = getelementptr inbounds i32, ptr %427, i64 %idx.ext519
  store ptr %add.ptr520, ptr %cp3, align 8
  %428 = load i32, ptr %fromskew.addr, align 4
  %429 = load ptr, ptr %pp.addr, align 8
  %idx.ext521 = sext i32 %428 to i64
  %add.ptr522 = getelementptr inbounds i8, ptr %429, i64 %idx.ext521
  store ptr %add.ptr522, ptr %pp.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %430 = load i32, ptr %h.addr, align 4
  %sub = sub i32 %430, 4
  store i32 %sub, ptr %h.addr, align 4
  br label %for.cond, !llvm.loop !58

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putcontig8bitYCbCr42tile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  %ycbcr = alloca ptr, align 8
  %Crrtab = alloca ptr, align 8
  %Cbbtab = alloca ptr, align 8
  %Crgtab = alloca ptr, align 8
  %Cbgtab = alloca ptr, align 8
  %clamptab = alloca ptr, align 8
  %cp1 = alloca ptr, align 8
  %incr = alloca i32, align 4
  %Cb = alloca i32, align 4
  %Cr = alloca i32, align 4
  %Y = alloca i32, align 4
  %Y34 = alloca i32, align 4
  %Y65 = alloca i32, align 4
  %Y96 = alloca i32, align 4
  %Y127 = alloca i32, align 4
  %Y158 = alloca i32, align 4
  %Y189 = alloca i32, align 4
  %Y220 = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
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
  %13 = load i32, ptr %w.addr, align 4
  %idx.ext = zext i32 %13 to i64
  %add.ptr = getelementptr inbounds i32, ptr %12, i64 %idx.ext
  %14 = load i32, ptr %toskew.addr, align 4
  %idx.ext3 = sext i32 %14 to i64
  %add.ptr4 = getelementptr inbounds i32, ptr %add.ptr, i64 %idx.ext3
  store ptr %add.ptr4, ptr %cp1, align 8
  %15 = load i32, ptr %toskew.addr, align 4
  %mul = mul nsw i32 2, %15
  %16 = load i32, ptr %w.addr, align 4
  %add = add i32 %mul, %16
  store i32 %add, ptr %incr, align 4
  %17 = load i32, ptr %y.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32, ptr %h.addr, align 4
  %cmp = icmp uge i32 %18, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, ptr %w.addr, align 4
  %shr = lshr i32 %19, 2
  store i32 %shr, ptr %x.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body
  %20 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %20, i64 8
  %21 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %21 to i32
  store i32 %conv, ptr %Cb, align 4
  %22 = load ptr, ptr %pp.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %22, i64 9
  %23 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %23 to i32
  store i32 %conv6, ptr %Cr, align 4
  %24 = load ptr, ptr %pp.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %24, i64 0
  %25 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %25 to i32
  store i32 %conv8, ptr %Y, align 4
  %26 = load ptr, ptr %clamptab, align 8
  %27 = load i32, ptr %Y, align 4
  %28 = load ptr, ptr %Crrtab, align 8
  %29 = load i32, ptr %Cr, align 4
  %idxprom = sext i32 %29 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %28, i64 %idxprom
  %30 = load i32, ptr %arrayidx9, align 4
  %add10 = add nsw i32 %27, %30
  %idxprom11 = sext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds i8, ptr %26, i64 %idxprom11
  %31 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %31 to i32
  %32 = load ptr, ptr %clamptab, align 8
  %33 = load i32, ptr %Y, align 4
  %34 = load ptr, ptr %Cbgtab, align 8
  %35 = load i32, ptr %Cb, align 4
  %idxprom14 = sext i32 %35 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %34, i64 %idxprom14
  %36 = load i32, ptr %arrayidx15, align 4
  %37 = load ptr, ptr %Crgtab, align 8
  %38 = load i32, ptr %Cr, align 4
  %idxprom16 = sext i32 %38 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %37, i64 %idxprom16
  %39 = load i32, ptr %arrayidx17, align 4
  %add18 = add nsw i32 %36, %39
  %shr19 = ashr i32 %add18, 16
  %add20 = add nsw i32 %33, %shr19
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %32, i64 %idxprom21
  %40 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %40 to i32
  %shl = shl i32 %conv23, 8
  %or = or i32 %conv13, %shl
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
  %conv29 = zext i8 %46 to i32
  %shl30 = shl i32 %conv29, 16
  %or31 = or i32 %or, %shl30
  %or32 = or i32 %or31, -16777216
  %47 = load ptr, ptr %cp.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, ptr %47, i64 0
  store i32 %or32, ptr %arrayidx33, align 4
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
  %conv42 = zext i8 %55 to i32
  %56 = load ptr, ptr %clamptab, align 8
  %57 = load i32, ptr %Y34, align 4
  %58 = load ptr, ptr %Cbgtab, align 8
  %59 = load i32, ptr %Cb, align 4
  %idxprom43 = sext i32 %59 to i64
  %arrayidx44 = getelementptr inbounds i32, ptr %58, i64 %idxprom43
  %60 = load i32, ptr %arrayidx44, align 4
  %61 = load ptr, ptr %Crgtab, align 8
  %62 = load i32, ptr %Cr, align 4
  %idxprom45 = sext i32 %62 to i64
  %arrayidx46 = getelementptr inbounds i32, ptr %61, i64 %idxprom45
  %63 = load i32, ptr %arrayidx46, align 4
  %add47 = add nsw i32 %60, %63
  %shr48 = ashr i32 %add47, 16
  %add49 = add nsw i32 %57, %shr48
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds i8, ptr %56, i64 %idxprom50
  %64 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %64 to i32
  %shl53 = shl i32 %conv52, 8
  %or54 = or i32 %conv42, %shl53
  %65 = load ptr, ptr %clamptab, align 8
  %66 = load i32, ptr %Y34, align 4
  %67 = load ptr, ptr %Cbbtab, align 8
  %68 = load i32, ptr %Cb, align 4
  %idxprom55 = sext i32 %68 to i64
  %arrayidx56 = getelementptr inbounds i32, ptr %67, i64 %idxprom55
  %69 = load i32, ptr %arrayidx56, align 4
  %add57 = add nsw i32 %66, %69
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds i8, ptr %65, i64 %idxprom58
  %70 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %70 to i32
  %shl61 = shl i32 %conv60, 16
  %or62 = or i32 %or54, %shl61
  %or63 = or i32 %or62, -16777216
  %71 = load ptr, ptr %cp.addr, align 8
  %arrayidx64 = getelementptr inbounds i32, ptr %71, i64 1
  store i32 %or63, ptr %arrayidx64, align 4
  %72 = load ptr, ptr %pp.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, ptr %72, i64 2
  %73 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %73 to i32
  store i32 %conv67, ptr %Y65, align 4
  %74 = load ptr, ptr %clamptab, align 8
  %75 = load i32, ptr %Y65, align 4
  %76 = load ptr, ptr %Crrtab, align 8
  %77 = load i32, ptr %Cr, align 4
  %idxprom68 = sext i32 %77 to i64
  %arrayidx69 = getelementptr inbounds i32, ptr %76, i64 %idxprom68
  %78 = load i32, ptr %arrayidx69, align 4
  %add70 = add nsw i32 %75, %78
  %idxprom71 = sext i32 %add70 to i64
  %arrayidx72 = getelementptr inbounds i8, ptr %74, i64 %idxprom71
  %79 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %79 to i32
  %80 = load ptr, ptr %clamptab, align 8
  %81 = load i32, ptr %Y65, align 4
  %82 = load ptr, ptr %Cbgtab, align 8
  %83 = load i32, ptr %Cb, align 4
  %idxprom74 = sext i32 %83 to i64
  %arrayidx75 = getelementptr inbounds i32, ptr %82, i64 %idxprom74
  %84 = load i32, ptr %arrayidx75, align 4
  %85 = load ptr, ptr %Crgtab, align 8
  %86 = load i32, ptr %Cr, align 4
  %idxprom76 = sext i32 %86 to i64
  %arrayidx77 = getelementptr inbounds i32, ptr %85, i64 %idxprom76
  %87 = load i32, ptr %arrayidx77, align 4
  %add78 = add nsw i32 %84, %87
  %shr79 = ashr i32 %add78, 16
  %add80 = add nsw i32 %81, %shr79
  %idxprom81 = sext i32 %add80 to i64
  %arrayidx82 = getelementptr inbounds i8, ptr %80, i64 %idxprom81
  %88 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %88 to i32
  %shl84 = shl i32 %conv83, 8
  %or85 = or i32 %conv73, %shl84
  %89 = load ptr, ptr %clamptab, align 8
  %90 = load i32, ptr %Y65, align 4
  %91 = load ptr, ptr %Cbbtab, align 8
  %92 = load i32, ptr %Cb, align 4
  %idxprom86 = sext i32 %92 to i64
  %arrayidx87 = getelementptr inbounds i32, ptr %91, i64 %idxprom86
  %93 = load i32, ptr %arrayidx87, align 4
  %add88 = add nsw i32 %90, %93
  %idxprom89 = sext i32 %add88 to i64
  %arrayidx90 = getelementptr inbounds i8, ptr %89, i64 %idxprom89
  %94 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %94 to i32
  %shl92 = shl i32 %conv91, 16
  %or93 = or i32 %or85, %shl92
  %or94 = or i32 %or93, -16777216
  %95 = load ptr, ptr %cp.addr, align 8
  %arrayidx95 = getelementptr inbounds i32, ptr %95, i64 2
  store i32 %or94, ptr %arrayidx95, align 4
  %96 = load ptr, ptr %pp.addr, align 8
  %arrayidx97 = getelementptr inbounds i8, ptr %96, i64 3
  %97 = load i8, ptr %arrayidx97, align 1
  %conv98 = zext i8 %97 to i32
  store i32 %conv98, ptr %Y96, align 4
  %98 = load ptr, ptr %clamptab, align 8
  %99 = load i32, ptr %Y96, align 4
  %100 = load ptr, ptr %Crrtab, align 8
  %101 = load i32, ptr %Cr, align 4
  %idxprom99 = sext i32 %101 to i64
  %arrayidx100 = getelementptr inbounds i32, ptr %100, i64 %idxprom99
  %102 = load i32, ptr %arrayidx100, align 4
  %add101 = add nsw i32 %99, %102
  %idxprom102 = sext i32 %add101 to i64
  %arrayidx103 = getelementptr inbounds i8, ptr %98, i64 %idxprom102
  %103 = load i8, ptr %arrayidx103, align 1
  %conv104 = zext i8 %103 to i32
  %104 = load ptr, ptr %clamptab, align 8
  %105 = load i32, ptr %Y96, align 4
  %106 = load ptr, ptr %Cbgtab, align 8
  %107 = load i32, ptr %Cb, align 4
  %idxprom105 = sext i32 %107 to i64
  %arrayidx106 = getelementptr inbounds i32, ptr %106, i64 %idxprom105
  %108 = load i32, ptr %arrayidx106, align 4
  %109 = load ptr, ptr %Crgtab, align 8
  %110 = load i32, ptr %Cr, align 4
  %idxprom107 = sext i32 %110 to i64
  %arrayidx108 = getelementptr inbounds i32, ptr %109, i64 %idxprom107
  %111 = load i32, ptr %arrayidx108, align 4
  %add109 = add nsw i32 %108, %111
  %shr110 = ashr i32 %add109, 16
  %add111 = add nsw i32 %105, %shr110
  %idxprom112 = sext i32 %add111 to i64
  %arrayidx113 = getelementptr inbounds i8, ptr %104, i64 %idxprom112
  %112 = load i8, ptr %arrayidx113, align 1
  %conv114 = zext i8 %112 to i32
  %shl115 = shl i32 %conv114, 8
  %or116 = or i32 %conv104, %shl115
  %113 = load ptr, ptr %clamptab, align 8
  %114 = load i32, ptr %Y96, align 4
  %115 = load ptr, ptr %Cbbtab, align 8
  %116 = load i32, ptr %Cb, align 4
  %idxprom117 = sext i32 %116 to i64
  %arrayidx118 = getelementptr inbounds i32, ptr %115, i64 %idxprom117
  %117 = load i32, ptr %arrayidx118, align 4
  %add119 = add nsw i32 %114, %117
  %idxprom120 = sext i32 %add119 to i64
  %arrayidx121 = getelementptr inbounds i8, ptr %113, i64 %idxprom120
  %118 = load i8, ptr %arrayidx121, align 1
  %conv122 = zext i8 %118 to i32
  %shl123 = shl i32 %conv122, 16
  %or124 = or i32 %or116, %shl123
  %or125 = or i32 %or124, -16777216
  %119 = load ptr, ptr %cp.addr, align 8
  %arrayidx126 = getelementptr inbounds i32, ptr %119, i64 3
  store i32 %or125, ptr %arrayidx126, align 4
  %120 = load ptr, ptr %pp.addr, align 8
  %arrayidx128 = getelementptr inbounds i8, ptr %120, i64 4
  %121 = load i8, ptr %arrayidx128, align 1
  %conv129 = zext i8 %121 to i32
  store i32 %conv129, ptr %Y127, align 4
  %122 = load ptr, ptr %clamptab, align 8
  %123 = load i32, ptr %Y127, align 4
  %124 = load ptr, ptr %Crrtab, align 8
  %125 = load i32, ptr %Cr, align 4
  %idxprom130 = sext i32 %125 to i64
  %arrayidx131 = getelementptr inbounds i32, ptr %124, i64 %idxprom130
  %126 = load i32, ptr %arrayidx131, align 4
  %add132 = add nsw i32 %123, %126
  %idxprom133 = sext i32 %add132 to i64
  %arrayidx134 = getelementptr inbounds i8, ptr %122, i64 %idxprom133
  %127 = load i8, ptr %arrayidx134, align 1
  %conv135 = zext i8 %127 to i32
  %128 = load ptr, ptr %clamptab, align 8
  %129 = load i32, ptr %Y127, align 4
  %130 = load ptr, ptr %Cbgtab, align 8
  %131 = load i32, ptr %Cb, align 4
  %idxprom136 = sext i32 %131 to i64
  %arrayidx137 = getelementptr inbounds i32, ptr %130, i64 %idxprom136
  %132 = load i32, ptr %arrayidx137, align 4
  %133 = load ptr, ptr %Crgtab, align 8
  %134 = load i32, ptr %Cr, align 4
  %idxprom138 = sext i32 %134 to i64
  %arrayidx139 = getelementptr inbounds i32, ptr %133, i64 %idxprom138
  %135 = load i32, ptr %arrayidx139, align 4
  %add140 = add nsw i32 %132, %135
  %shr141 = ashr i32 %add140, 16
  %add142 = add nsw i32 %129, %shr141
  %idxprom143 = sext i32 %add142 to i64
  %arrayidx144 = getelementptr inbounds i8, ptr %128, i64 %idxprom143
  %136 = load i8, ptr %arrayidx144, align 1
  %conv145 = zext i8 %136 to i32
  %shl146 = shl i32 %conv145, 8
  %or147 = or i32 %conv135, %shl146
  %137 = load ptr, ptr %clamptab, align 8
  %138 = load i32, ptr %Y127, align 4
  %139 = load ptr, ptr %Cbbtab, align 8
  %140 = load i32, ptr %Cb, align 4
  %idxprom148 = sext i32 %140 to i64
  %arrayidx149 = getelementptr inbounds i32, ptr %139, i64 %idxprom148
  %141 = load i32, ptr %arrayidx149, align 4
  %add150 = add nsw i32 %138, %141
  %idxprom151 = sext i32 %add150 to i64
  %arrayidx152 = getelementptr inbounds i8, ptr %137, i64 %idxprom151
  %142 = load i8, ptr %arrayidx152, align 1
  %conv153 = zext i8 %142 to i32
  %shl154 = shl i32 %conv153, 16
  %or155 = or i32 %or147, %shl154
  %or156 = or i32 %or155, -16777216
  %143 = load ptr, ptr %cp1, align 8
  %arrayidx157 = getelementptr inbounds i32, ptr %143, i64 0
  store i32 %or156, ptr %arrayidx157, align 4
  %144 = load ptr, ptr %pp.addr, align 8
  %arrayidx159 = getelementptr inbounds i8, ptr %144, i64 5
  %145 = load i8, ptr %arrayidx159, align 1
  %conv160 = zext i8 %145 to i32
  store i32 %conv160, ptr %Y158, align 4
  %146 = load ptr, ptr %clamptab, align 8
  %147 = load i32, ptr %Y158, align 4
  %148 = load ptr, ptr %Crrtab, align 8
  %149 = load i32, ptr %Cr, align 4
  %idxprom161 = sext i32 %149 to i64
  %arrayidx162 = getelementptr inbounds i32, ptr %148, i64 %idxprom161
  %150 = load i32, ptr %arrayidx162, align 4
  %add163 = add nsw i32 %147, %150
  %idxprom164 = sext i32 %add163 to i64
  %arrayidx165 = getelementptr inbounds i8, ptr %146, i64 %idxprom164
  %151 = load i8, ptr %arrayidx165, align 1
  %conv166 = zext i8 %151 to i32
  %152 = load ptr, ptr %clamptab, align 8
  %153 = load i32, ptr %Y158, align 4
  %154 = load ptr, ptr %Cbgtab, align 8
  %155 = load i32, ptr %Cb, align 4
  %idxprom167 = sext i32 %155 to i64
  %arrayidx168 = getelementptr inbounds i32, ptr %154, i64 %idxprom167
  %156 = load i32, ptr %arrayidx168, align 4
  %157 = load ptr, ptr %Crgtab, align 8
  %158 = load i32, ptr %Cr, align 4
  %idxprom169 = sext i32 %158 to i64
  %arrayidx170 = getelementptr inbounds i32, ptr %157, i64 %idxprom169
  %159 = load i32, ptr %arrayidx170, align 4
  %add171 = add nsw i32 %156, %159
  %shr172 = ashr i32 %add171, 16
  %add173 = add nsw i32 %153, %shr172
  %idxprom174 = sext i32 %add173 to i64
  %arrayidx175 = getelementptr inbounds i8, ptr %152, i64 %idxprom174
  %160 = load i8, ptr %arrayidx175, align 1
  %conv176 = zext i8 %160 to i32
  %shl177 = shl i32 %conv176, 8
  %or178 = or i32 %conv166, %shl177
  %161 = load ptr, ptr %clamptab, align 8
  %162 = load i32, ptr %Y158, align 4
  %163 = load ptr, ptr %Cbbtab, align 8
  %164 = load i32, ptr %Cb, align 4
  %idxprom179 = sext i32 %164 to i64
  %arrayidx180 = getelementptr inbounds i32, ptr %163, i64 %idxprom179
  %165 = load i32, ptr %arrayidx180, align 4
  %add181 = add nsw i32 %162, %165
  %idxprom182 = sext i32 %add181 to i64
  %arrayidx183 = getelementptr inbounds i8, ptr %161, i64 %idxprom182
  %166 = load i8, ptr %arrayidx183, align 1
  %conv184 = zext i8 %166 to i32
  %shl185 = shl i32 %conv184, 16
  %or186 = or i32 %or178, %shl185
  %or187 = or i32 %or186, -16777216
  %167 = load ptr, ptr %cp1, align 8
  %arrayidx188 = getelementptr inbounds i32, ptr %167, i64 1
  store i32 %or187, ptr %arrayidx188, align 4
  %168 = load ptr, ptr %pp.addr, align 8
  %arrayidx190 = getelementptr inbounds i8, ptr %168, i64 6
  %169 = load i8, ptr %arrayidx190, align 1
  %conv191 = zext i8 %169 to i32
  store i32 %conv191, ptr %Y189, align 4
  %170 = load ptr, ptr %clamptab, align 8
  %171 = load i32, ptr %Y189, align 4
  %172 = load ptr, ptr %Crrtab, align 8
  %173 = load i32, ptr %Cr, align 4
  %idxprom192 = sext i32 %173 to i64
  %arrayidx193 = getelementptr inbounds i32, ptr %172, i64 %idxprom192
  %174 = load i32, ptr %arrayidx193, align 4
  %add194 = add nsw i32 %171, %174
  %idxprom195 = sext i32 %add194 to i64
  %arrayidx196 = getelementptr inbounds i8, ptr %170, i64 %idxprom195
  %175 = load i8, ptr %arrayidx196, align 1
  %conv197 = zext i8 %175 to i32
  %176 = load ptr, ptr %clamptab, align 8
  %177 = load i32, ptr %Y189, align 4
  %178 = load ptr, ptr %Cbgtab, align 8
  %179 = load i32, ptr %Cb, align 4
  %idxprom198 = sext i32 %179 to i64
  %arrayidx199 = getelementptr inbounds i32, ptr %178, i64 %idxprom198
  %180 = load i32, ptr %arrayidx199, align 4
  %181 = load ptr, ptr %Crgtab, align 8
  %182 = load i32, ptr %Cr, align 4
  %idxprom200 = sext i32 %182 to i64
  %arrayidx201 = getelementptr inbounds i32, ptr %181, i64 %idxprom200
  %183 = load i32, ptr %arrayidx201, align 4
  %add202 = add nsw i32 %180, %183
  %shr203 = ashr i32 %add202, 16
  %add204 = add nsw i32 %177, %shr203
  %idxprom205 = sext i32 %add204 to i64
  %arrayidx206 = getelementptr inbounds i8, ptr %176, i64 %idxprom205
  %184 = load i8, ptr %arrayidx206, align 1
  %conv207 = zext i8 %184 to i32
  %shl208 = shl i32 %conv207, 8
  %or209 = or i32 %conv197, %shl208
  %185 = load ptr, ptr %clamptab, align 8
  %186 = load i32, ptr %Y189, align 4
  %187 = load ptr, ptr %Cbbtab, align 8
  %188 = load i32, ptr %Cb, align 4
  %idxprom210 = sext i32 %188 to i64
  %arrayidx211 = getelementptr inbounds i32, ptr %187, i64 %idxprom210
  %189 = load i32, ptr %arrayidx211, align 4
  %add212 = add nsw i32 %186, %189
  %idxprom213 = sext i32 %add212 to i64
  %arrayidx214 = getelementptr inbounds i8, ptr %185, i64 %idxprom213
  %190 = load i8, ptr %arrayidx214, align 1
  %conv215 = zext i8 %190 to i32
  %shl216 = shl i32 %conv215, 16
  %or217 = or i32 %or209, %shl216
  %or218 = or i32 %or217, -16777216
  %191 = load ptr, ptr %cp1, align 8
  %arrayidx219 = getelementptr inbounds i32, ptr %191, i64 2
  store i32 %or218, ptr %arrayidx219, align 4
  %192 = load ptr, ptr %pp.addr, align 8
  %arrayidx221 = getelementptr inbounds i8, ptr %192, i64 7
  %193 = load i8, ptr %arrayidx221, align 1
  %conv222 = zext i8 %193 to i32
  store i32 %conv222, ptr %Y220, align 4
  %194 = load ptr, ptr %clamptab, align 8
  %195 = load i32, ptr %Y220, align 4
  %196 = load ptr, ptr %Crrtab, align 8
  %197 = load i32, ptr %Cr, align 4
  %idxprom223 = sext i32 %197 to i64
  %arrayidx224 = getelementptr inbounds i32, ptr %196, i64 %idxprom223
  %198 = load i32, ptr %arrayidx224, align 4
  %add225 = add nsw i32 %195, %198
  %idxprom226 = sext i32 %add225 to i64
  %arrayidx227 = getelementptr inbounds i8, ptr %194, i64 %idxprom226
  %199 = load i8, ptr %arrayidx227, align 1
  %conv228 = zext i8 %199 to i32
  %200 = load ptr, ptr %clamptab, align 8
  %201 = load i32, ptr %Y220, align 4
  %202 = load ptr, ptr %Cbgtab, align 8
  %203 = load i32, ptr %Cb, align 4
  %idxprom229 = sext i32 %203 to i64
  %arrayidx230 = getelementptr inbounds i32, ptr %202, i64 %idxprom229
  %204 = load i32, ptr %arrayidx230, align 4
  %205 = load ptr, ptr %Crgtab, align 8
  %206 = load i32, ptr %Cr, align 4
  %idxprom231 = sext i32 %206 to i64
  %arrayidx232 = getelementptr inbounds i32, ptr %205, i64 %idxprom231
  %207 = load i32, ptr %arrayidx232, align 4
  %add233 = add nsw i32 %204, %207
  %shr234 = ashr i32 %add233, 16
  %add235 = add nsw i32 %201, %shr234
  %idxprom236 = sext i32 %add235 to i64
  %arrayidx237 = getelementptr inbounds i8, ptr %200, i64 %idxprom236
  %208 = load i8, ptr %arrayidx237, align 1
  %conv238 = zext i8 %208 to i32
  %shl239 = shl i32 %conv238, 8
  %or240 = or i32 %conv228, %shl239
  %209 = load ptr, ptr %clamptab, align 8
  %210 = load i32, ptr %Y220, align 4
  %211 = load ptr, ptr %Cbbtab, align 8
  %212 = load i32, ptr %Cb, align 4
  %idxprom241 = sext i32 %212 to i64
  %arrayidx242 = getelementptr inbounds i32, ptr %211, i64 %idxprom241
  %213 = load i32, ptr %arrayidx242, align 4
  %add243 = add nsw i32 %210, %213
  %idxprom244 = sext i32 %add243 to i64
  %arrayidx245 = getelementptr inbounds i8, ptr %209, i64 %idxprom244
  %214 = load i8, ptr %arrayidx245, align 1
  %conv246 = zext i8 %214 to i32
  %shl247 = shl i32 %conv246, 16
  %or248 = or i32 %or240, %shl247
  %or249 = or i32 %or248, -16777216
  %215 = load ptr, ptr %cp1, align 8
  %arrayidx250 = getelementptr inbounds i32, ptr %215, i64 3
  store i32 %or249, ptr %arrayidx250, align 4
  %216 = load ptr, ptr %cp.addr, align 8
  %add.ptr251 = getelementptr inbounds i32, ptr %216, i64 4
  store ptr %add.ptr251, ptr %cp.addr, align 8
  %217 = load ptr, ptr %cp1, align 8
  %add.ptr252 = getelementptr inbounds i32, ptr %217, i64 4
  store ptr %add.ptr252, ptr %cp1, align 8
  %218 = load ptr, ptr %pp.addr, align 8
  %add.ptr253 = getelementptr inbounds i8, ptr %218, i64 10
  store ptr %add.ptr253, ptr %pp.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %219 = load i32, ptr %x.addr, align 4
  %dec = add i32 %219, -1
  store i32 %dec, ptr %x.addr, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !59

do.end:                                           ; preds = %do.cond
  %220 = load i32, ptr %incr, align 4
  %221 = load ptr, ptr %cp.addr, align 8
  %idx.ext254 = sext i32 %220 to i64
  %add.ptr255 = getelementptr inbounds i32, ptr %221, i64 %idx.ext254
  store ptr %add.ptr255, ptr %cp.addr, align 8
  %222 = load i32, ptr %incr, align 4
  %223 = load ptr, ptr %cp1, align 8
  %idx.ext256 = sext i32 %222 to i64
  %add.ptr257 = getelementptr inbounds i32, ptr %223, i64 %idx.ext256
  store ptr %add.ptr257, ptr %cp1, align 8
  %224 = load i32, ptr %fromskew.addr, align 4
  %225 = load ptr, ptr %pp.addr, align 8
  %idx.ext258 = sext i32 %224 to i64
  %add.ptr259 = getelementptr inbounds i8, ptr %225, i64 %idx.ext258
  store ptr %add.ptr259, ptr %pp.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %226 = load i32, ptr %h.addr, align 4
  %sub = sub i32 %226, 2
  store i32 %sub, ptr %h.addr, align 4
  br label %for.cond, !llvm.loop !60

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putcontig8bitYCbCr41tile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
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
  %Y32 = alloca i32, align 4
  %Y63 = alloca i32, align 4
  %Y94 = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
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
  %12 = load i32, ptr %y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond129, %entry
  %13 = load i32, ptr %w.addr, align 4
  %shr = lshr i32 %13, 2
  store i32 %shr, ptr %x.addr, align 4
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
  %conv11 = zext i8 %25 to i32
  %26 = load ptr, ptr %clamptab, align 8
  %27 = load i32, ptr %Y, align 4
  %28 = load ptr, ptr %Cbgtab, align 8
  %29 = load i32, ptr %Cb, align 4
  %idxprom12 = sext i32 %29 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %28, i64 %idxprom12
  %30 = load i32, ptr %arrayidx13, align 4
  %31 = load ptr, ptr %Crgtab, align 8
  %32 = load i32, ptr %Cr, align 4
  %idxprom14 = sext i32 %32 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %31, i64 %idxprom14
  %33 = load i32, ptr %arrayidx15, align 4
  %add16 = add nsw i32 %30, %33
  %shr17 = ashr i32 %add16, 16
  %add18 = add nsw i32 %27, %shr17
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %26, i64 %idxprom19
  %34 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %34 to i32
  %shl = shl i32 %conv21, 8
  %or = or i32 %conv11, %shl
  %35 = load ptr, ptr %clamptab, align 8
  %36 = load i32, ptr %Y, align 4
  %37 = load ptr, ptr %Cbbtab, align 8
  %38 = load i32, ptr %Cb, align 4
  %idxprom22 = sext i32 %38 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %37, i64 %idxprom22
  %39 = load i32, ptr %arrayidx23, align 4
  %add24 = add nsw i32 %36, %39
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds i8, ptr %35, i64 %idxprom25
  %40 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %40 to i32
  %shl28 = shl i32 %conv27, 16
  %or29 = or i32 %or, %shl28
  %or30 = or i32 %or29, -16777216
  %41 = load ptr, ptr %cp.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, ptr %41, i64 0
  store i32 %or30, ptr %arrayidx31, align 4
  %42 = load ptr, ptr %pp.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %42, i64 1
  %43 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %43 to i32
  store i32 %conv34, ptr %Y32, align 4
  %44 = load ptr, ptr %clamptab, align 8
  %45 = load i32, ptr %Y32, align 4
  %46 = load ptr, ptr %Crrtab, align 8
  %47 = load i32, ptr %Cr, align 4
  %idxprom35 = sext i32 %47 to i64
  %arrayidx36 = getelementptr inbounds i32, ptr %46, i64 %idxprom35
  %48 = load i32, ptr %arrayidx36, align 4
  %add37 = add nsw i32 %45, %48
  %idxprom38 = sext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds i8, ptr %44, i64 %idxprom38
  %49 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %49 to i32
  %50 = load ptr, ptr %clamptab, align 8
  %51 = load i32, ptr %Y32, align 4
  %52 = load ptr, ptr %Cbgtab, align 8
  %53 = load i32, ptr %Cb, align 4
  %idxprom41 = sext i32 %53 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %52, i64 %idxprom41
  %54 = load i32, ptr %arrayidx42, align 4
  %55 = load ptr, ptr %Crgtab, align 8
  %56 = load i32, ptr %Cr, align 4
  %idxprom43 = sext i32 %56 to i64
  %arrayidx44 = getelementptr inbounds i32, ptr %55, i64 %idxprom43
  %57 = load i32, ptr %arrayidx44, align 4
  %add45 = add nsw i32 %54, %57
  %shr46 = ashr i32 %add45, 16
  %add47 = add nsw i32 %51, %shr46
  %idxprom48 = sext i32 %add47 to i64
  %arrayidx49 = getelementptr inbounds i8, ptr %50, i64 %idxprom48
  %58 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %58 to i32
  %shl51 = shl i32 %conv50, 8
  %or52 = or i32 %conv40, %shl51
  %59 = load ptr, ptr %clamptab, align 8
  %60 = load i32, ptr %Y32, align 4
  %61 = load ptr, ptr %Cbbtab, align 8
  %62 = load i32, ptr %Cb, align 4
  %idxprom53 = sext i32 %62 to i64
  %arrayidx54 = getelementptr inbounds i32, ptr %61, i64 %idxprom53
  %63 = load i32, ptr %arrayidx54, align 4
  %add55 = add nsw i32 %60, %63
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds i8, ptr %59, i64 %idxprom56
  %64 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %64 to i32
  %shl59 = shl i32 %conv58, 16
  %or60 = or i32 %or52, %shl59
  %or61 = or i32 %or60, -16777216
  %65 = load ptr, ptr %cp.addr, align 8
  %arrayidx62 = getelementptr inbounds i32, ptr %65, i64 1
  store i32 %or61, ptr %arrayidx62, align 4
  %66 = load ptr, ptr %pp.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %66, i64 2
  %67 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %67 to i32
  store i32 %conv65, ptr %Y63, align 4
  %68 = load ptr, ptr %clamptab, align 8
  %69 = load i32, ptr %Y63, align 4
  %70 = load ptr, ptr %Crrtab, align 8
  %71 = load i32, ptr %Cr, align 4
  %idxprom66 = sext i32 %71 to i64
  %arrayidx67 = getelementptr inbounds i32, ptr %70, i64 %idxprom66
  %72 = load i32, ptr %arrayidx67, align 4
  %add68 = add nsw i32 %69, %72
  %idxprom69 = sext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds i8, ptr %68, i64 %idxprom69
  %73 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %73 to i32
  %74 = load ptr, ptr %clamptab, align 8
  %75 = load i32, ptr %Y63, align 4
  %76 = load ptr, ptr %Cbgtab, align 8
  %77 = load i32, ptr %Cb, align 4
  %idxprom72 = sext i32 %77 to i64
  %arrayidx73 = getelementptr inbounds i32, ptr %76, i64 %idxprom72
  %78 = load i32, ptr %arrayidx73, align 4
  %79 = load ptr, ptr %Crgtab, align 8
  %80 = load i32, ptr %Cr, align 4
  %idxprom74 = sext i32 %80 to i64
  %arrayidx75 = getelementptr inbounds i32, ptr %79, i64 %idxprom74
  %81 = load i32, ptr %arrayidx75, align 4
  %add76 = add nsw i32 %78, %81
  %shr77 = ashr i32 %add76, 16
  %add78 = add nsw i32 %75, %shr77
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds i8, ptr %74, i64 %idxprom79
  %82 = load i8, ptr %arrayidx80, align 1
  %conv81 = zext i8 %82 to i32
  %shl82 = shl i32 %conv81, 8
  %or83 = or i32 %conv71, %shl82
  %83 = load ptr, ptr %clamptab, align 8
  %84 = load i32, ptr %Y63, align 4
  %85 = load ptr, ptr %Cbbtab, align 8
  %86 = load i32, ptr %Cb, align 4
  %idxprom84 = sext i32 %86 to i64
  %arrayidx85 = getelementptr inbounds i32, ptr %85, i64 %idxprom84
  %87 = load i32, ptr %arrayidx85, align 4
  %add86 = add nsw i32 %84, %87
  %idxprom87 = sext i32 %add86 to i64
  %arrayidx88 = getelementptr inbounds i8, ptr %83, i64 %idxprom87
  %88 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %88 to i32
  %shl90 = shl i32 %conv89, 16
  %or91 = or i32 %or83, %shl90
  %or92 = or i32 %or91, -16777216
  %89 = load ptr, ptr %cp.addr, align 8
  %arrayidx93 = getelementptr inbounds i32, ptr %89, i64 2
  store i32 %or92, ptr %arrayidx93, align 4
  %90 = load ptr, ptr %pp.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, ptr %90, i64 3
  %91 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %91 to i32
  store i32 %conv96, ptr %Y94, align 4
  %92 = load ptr, ptr %clamptab, align 8
  %93 = load i32, ptr %Y94, align 4
  %94 = load ptr, ptr %Crrtab, align 8
  %95 = load i32, ptr %Cr, align 4
  %idxprom97 = sext i32 %95 to i64
  %arrayidx98 = getelementptr inbounds i32, ptr %94, i64 %idxprom97
  %96 = load i32, ptr %arrayidx98, align 4
  %add99 = add nsw i32 %93, %96
  %idxprom100 = sext i32 %add99 to i64
  %arrayidx101 = getelementptr inbounds i8, ptr %92, i64 %idxprom100
  %97 = load i8, ptr %arrayidx101, align 1
  %conv102 = zext i8 %97 to i32
  %98 = load ptr, ptr %clamptab, align 8
  %99 = load i32, ptr %Y94, align 4
  %100 = load ptr, ptr %Cbgtab, align 8
  %101 = load i32, ptr %Cb, align 4
  %idxprom103 = sext i32 %101 to i64
  %arrayidx104 = getelementptr inbounds i32, ptr %100, i64 %idxprom103
  %102 = load i32, ptr %arrayidx104, align 4
  %103 = load ptr, ptr %Crgtab, align 8
  %104 = load i32, ptr %Cr, align 4
  %idxprom105 = sext i32 %104 to i64
  %arrayidx106 = getelementptr inbounds i32, ptr %103, i64 %idxprom105
  %105 = load i32, ptr %arrayidx106, align 4
  %add107 = add nsw i32 %102, %105
  %shr108 = ashr i32 %add107, 16
  %add109 = add nsw i32 %99, %shr108
  %idxprom110 = sext i32 %add109 to i64
  %arrayidx111 = getelementptr inbounds i8, ptr %98, i64 %idxprom110
  %106 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %106 to i32
  %shl113 = shl i32 %conv112, 8
  %or114 = or i32 %conv102, %shl113
  %107 = load ptr, ptr %clamptab, align 8
  %108 = load i32, ptr %Y94, align 4
  %109 = load ptr, ptr %Cbbtab, align 8
  %110 = load i32, ptr %Cb, align 4
  %idxprom115 = sext i32 %110 to i64
  %arrayidx116 = getelementptr inbounds i32, ptr %109, i64 %idxprom115
  %111 = load i32, ptr %arrayidx116, align 4
  %add117 = add nsw i32 %108, %111
  %idxprom118 = sext i32 %add117 to i64
  %arrayidx119 = getelementptr inbounds i8, ptr %107, i64 %idxprom118
  %112 = load i8, ptr %arrayidx119, align 1
  %conv120 = zext i8 %112 to i32
  %shl121 = shl i32 %conv120, 16
  %or122 = or i32 %or114, %shl121
  %or123 = or i32 %or122, -16777216
  %113 = load ptr, ptr %cp.addr, align 8
  %arrayidx124 = getelementptr inbounds i32, ptr %113, i64 3
  store i32 %or123, ptr %arrayidx124, align 4
  %114 = load ptr, ptr %cp.addr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %114, i64 4
  store ptr %add.ptr, ptr %cp.addr, align 8
  %115 = load ptr, ptr %pp.addr, align 8
  %add.ptr125 = getelementptr inbounds i8, ptr %115, i64 6
  store ptr %add.ptr125, ptr %pp.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body3
  %116 = load i32, ptr %x.addr, align 4
  %dec = add i32 %116, -1
  store i32 %dec, ptr %x.addr, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body3, label %do.end, !llvm.loop !61

do.end:                                           ; preds = %do.cond
  %117 = load i32, ptr %toskew.addr, align 4
  %118 = load ptr, ptr %cp.addr, align 8
  %idx.ext = sext i32 %117 to i64
  %add.ptr126 = getelementptr inbounds i32, ptr %118, i64 %idx.ext
  store ptr %add.ptr126, ptr %cp.addr, align 8
  %119 = load i32, ptr %fromskew.addr, align 4
  %120 = load ptr, ptr %pp.addr, align 8
  %idx.ext127 = sext i32 %119 to i64
  %add.ptr128 = getelementptr inbounds i8, ptr %120, i64 %idx.ext127
  store ptr %add.ptr128, ptr %pp.addr, align 8
  br label %do.cond129

do.cond129:                                       ; preds = %do.end
  %121 = load i32, ptr %h.addr, align 4
  %dec130 = add i32 %121, -1
  store i32 %dec130, ptr %h.addr, align 4
  %tobool131 = icmp ne i32 %dec130, 0
  br i1 %tobool131, label %do.body, label %do.end132, !llvm.loop !62

do.end132:                                        ; preds = %do.cond129
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putcontig8bitYCbCr22tile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  %ycbcr = alloca ptr, align 8
  %Crrtab = alloca ptr, align 8
  %Cbbtab = alloca ptr, align 8
  %Crgtab = alloca ptr, align 8
  %Cbgtab = alloca ptr, align 8
  %clamptab = alloca ptr, align 8
  %cp1 = alloca ptr, align 8
  %incr = alloca i32, align 4
  %Cb = alloca i32, align 4
  %Cr = alloca i32, align 4
  %Y = alloca i32, align 4
  %Y34 = alloca i32, align 4
  %Y65 = alloca i32, align 4
  %Y96 = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
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
  %13 = load i32, ptr %w.addr, align 4
  %idx.ext = zext i32 %13 to i64
  %add.ptr = getelementptr inbounds i32, ptr %12, i64 %idx.ext
  %14 = load i32, ptr %toskew.addr, align 4
  %idx.ext3 = sext i32 %14 to i64
  %add.ptr4 = getelementptr inbounds i32, ptr %add.ptr, i64 %idx.ext3
  store ptr %add.ptr4, ptr %cp1, align 8
  %15 = load i32, ptr %toskew.addr, align 4
  %mul = mul nsw i32 2, %15
  %16 = load i32, ptr %w.addr, align 4
  %add = add i32 %mul, %16
  store i32 %add, ptr %incr, align 4
  %17 = load i32, ptr %y.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32, ptr %h.addr, align 4
  %cmp = icmp uge i32 %18, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, ptr %w.addr, align 4
  %shr = lshr i32 %19, 1
  store i32 %shr, ptr %x.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body
  %20 = load ptr, ptr %pp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %20, i64 4
  %21 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %21 to i32
  store i32 %conv, ptr %Cb, align 4
  %22 = load ptr, ptr %pp.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %22, i64 5
  %23 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %23 to i32
  store i32 %conv6, ptr %Cr, align 4
  %24 = load ptr, ptr %pp.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %24, i64 0
  %25 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %25 to i32
  store i32 %conv8, ptr %Y, align 4
  %26 = load ptr, ptr %clamptab, align 8
  %27 = load i32, ptr %Y, align 4
  %28 = load ptr, ptr %Crrtab, align 8
  %29 = load i32, ptr %Cr, align 4
  %idxprom = sext i32 %29 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %28, i64 %idxprom
  %30 = load i32, ptr %arrayidx9, align 4
  %add10 = add nsw i32 %27, %30
  %idxprom11 = sext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds i8, ptr %26, i64 %idxprom11
  %31 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %31 to i32
  %32 = load ptr, ptr %clamptab, align 8
  %33 = load i32, ptr %Y, align 4
  %34 = load ptr, ptr %Cbgtab, align 8
  %35 = load i32, ptr %Cb, align 4
  %idxprom14 = sext i32 %35 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %34, i64 %idxprom14
  %36 = load i32, ptr %arrayidx15, align 4
  %37 = load ptr, ptr %Crgtab, align 8
  %38 = load i32, ptr %Cr, align 4
  %idxprom16 = sext i32 %38 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %37, i64 %idxprom16
  %39 = load i32, ptr %arrayidx17, align 4
  %add18 = add nsw i32 %36, %39
  %shr19 = ashr i32 %add18, 16
  %add20 = add nsw i32 %33, %shr19
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %32, i64 %idxprom21
  %40 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %40 to i32
  %shl = shl i32 %conv23, 8
  %or = or i32 %conv13, %shl
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
  %conv29 = zext i8 %46 to i32
  %shl30 = shl i32 %conv29, 16
  %or31 = or i32 %or, %shl30
  %or32 = or i32 %or31, -16777216
  %47 = load ptr, ptr %cp.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, ptr %47, i64 0
  store i32 %or32, ptr %arrayidx33, align 4
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
  %conv42 = zext i8 %55 to i32
  %56 = load ptr, ptr %clamptab, align 8
  %57 = load i32, ptr %Y34, align 4
  %58 = load ptr, ptr %Cbgtab, align 8
  %59 = load i32, ptr %Cb, align 4
  %idxprom43 = sext i32 %59 to i64
  %arrayidx44 = getelementptr inbounds i32, ptr %58, i64 %idxprom43
  %60 = load i32, ptr %arrayidx44, align 4
  %61 = load ptr, ptr %Crgtab, align 8
  %62 = load i32, ptr %Cr, align 4
  %idxprom45 = sext i32 %62 to i64
  %arrayidx46 = getelementptr inbounds i32, ptr %61, i64 %idxprom45
  %63 = load i32, ptr %arrayidx46, align 4
  %add47 = add nsw i32 %60, %63
  %shr48 = ashr i32 %add47, 16
  %add49 = add nsw i32 %57, %shr48
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds i8, ptr %56, i64 %idxprom50
  %64 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %64 to i32
  %shl53 = shl i32 %conv52, 8
  %or54 = or i32 %conv42, %shl53
  %65 = load ptr, ptr %clamptab, align 8
  %66 = load i32, ptr %Y34, align 4
  %67 = load ptr, ptr %Cbbtab, align 8
  %68 = load i32, ptr %Cb, align 4
  %idxprom55 = sext i32 %68 to i64
  %arrayidx56 = getelementptr inbounds i32, ptr %67, i64 %idxprom55
  %69 = load i32, ptr %arrayidx56, align 4
  %add57 = add nsw i32 %66, %69
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds i8, ptr %65, i64 %idxprom58
  %70 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %70 to i32
  %shl61 = shl i32 %conv60, 16
  %or62 = or i32 %or54, %shl61
  %or63 = or i32 %or62, -16777216
  %71 = load ptr, ptr %cp.addr, align 8
  %arrayidx64 = getelementptr inbounds i32, ptr %71, i64 1
  store i32 %or63, ptr %arrayidx64, align 4
  %72 = load ptr, ptr %pp.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, ptr %72, i64 2
  %73 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %73 to i32
  store i32 %conv67, ptr %Y65, align 4
  %74 = load ptr, ptr %clamptab, align 8
  %75 = load i32, ptr %Y65, align 4
  %76 = load ptr, ptr %Crrtab, align 8
  %77 = load i32, ptr %Cr, align 4
  %idxprom68 = sext i32 %77 to i64
  %arrayidx69 = getelementptr inbounds i32, ptr %76, i64 %idxprom68
  %78 = load i32, ptr %arrayidx69, align 4
  %add70 = add nsw i32 %75, %78
  %idxprom71 = sext i32 %add70 to i64
  %arrayidx72 = getelementptr inbounds i8, ptr %74, i64 %idxprom71
  %79 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %79 to i32
  %80 = load ptr, ptr %clamptab, align 8
  %81 = load i32, ptr %Y65, align 4
  %82 = load ptr, ptr %Cbgtab, align 8
  %83 = load i32, ptr %Cb, align 4
  %idxprom74 = sext i32 %83 to i64
  %arrayidx75 = getelementptr inbounds i32, ptr %82, i64 %idxprom74
  %84 = load i32, ptr %arrayidx75, align 4
  %85 = load ptr, ptr %Crgtab, align 8
  %86 = load i32, ptr %Cr, align 4
  %idxprom76 = sext i32 %86 to i64
  %arrayidx77 = getelementptr inbounds i32, ptr %85, i64 %idxprom76
  %87 = load i32, ptr %arrayidx77, align 4
  %add78 = add nsw i32 %84, %87
  %shr79 = ashr i32 %add78, 16
  %add80 = add nsw i32 %81, %shr79
  %idxprom81 = sext i32 %add80 to i64
  %arrayidx82 = getelementptr inbounds i8, ptr %80, i64 %idxprom81
  %88 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %88 to i32
  %shl84 = shl i32 %conv83, 8
  %or85 = or i32 %conv73, %shl84
  %89 = load ptr, ptr %clamptab, align 8
  %90 = load i32, ptr %Y65, align 4
  %91 = load ptr, ptr %Cbbtab, align 8
  %92 = load i32, ptr %Cb, align 4
  %idxprom86 = sext i32 %92 to i64
  %arrayidx87 = getelementptr inbounds i32, ptr %91, i64 %idxprom86
  %93 = load i32, ptr %arrayidx87, align 4
  %add88 = add nsw i32 %90, %93
  %idxprom89 = sext i32 %add88 to i64
  %arrayidx90 = getelementptr inbounds i8, ptr %89, i64 %idxprom89
  %94 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %94 to i32
  %shl92 = shl i32 %conv91, 16
  %or93 = or i32 %or85, %shl92
  %or94 = or i32 %or93, -16777216
  %95 = load ptr, ptr %cp1, align 8
  %arrayidx95 = getelementptr inbounds i32, ptr %95, i64 0
  store i32 %or94, ptr %arrayidx95, align 4
  %96 = load ptr, ptr %pp.addr, align 8
  %arrayidx97 = getelementptr inbounds i8, ptr %96, i64 3
  %97 = load i8, ptr %arrayidx97, align 1
  %conv98 = zext i8 %97 to i32
  store i32 %conv98, ptr %Y96, align 4
  %98 = load ptr, ptr %clamptab, align 8
  %99 = load i32, ptr %Y96, align 4
  %100 = load ptr, ptr %Crrtab, align 8
  %101 = load i32, ptr %Cr, align 4
  %idxprom99 = sext i32 %101 to i64
  %arrayidx100 = getelementptr inbounds i32, ptr %100, i64 %idxprom99
  %102 = load i32, ptr %arrayidx100, align 4
  %add101 = add nsw i32 %99, %102
  %idxprom102 = sext i32 %add101 to i64
  %arrayidx103 = getelementptr inbounds i8, ptr %98, i64 %idxprom102
  %103 = load i8, ptr %arrayidx103, align 1
  %conv104 = zext i8 %103 to i32
  %104 = load ptr, ptr %clamptab, align 8
  %105 = load i32, ptr %Y96, align 4
  %106 = load ptr, ptr %Cbgtab, align 8
  %107 = load i32, ptr %Cb, align 4
  %idxprom105 = sext i32 %107 to i64
  %arrayidx106 = getelementptr inbounds i32, ptr %106, i64 %idxprom105
  %108 = load i32, ptr %arrayidx106, align 4
  %109 = load ptr, ptr %Crgtab, align 8
  %110 = load i32, ptr %Cr, align 4
  %idxprom107 = sext i32 %110 to i64
  %arrayidx108 = getelementptr inbounds i32, ptr %109, i64 %idxprom107
  %111 = load i32, ptr %arrayidx108, align 4
  %add109 = add nsw i32 %108, %111
  %shr110 = ashr i32 %add109, 16
  %add111 = add nsw i32 %105, %shr110
  %idxprom112 = sext i32 %add111 to i64
  %arrayidx113 = getelementptr inbounds i8, ptr %104, i64 %idxprom112
  %112 = load i8, ptr %arrayidx113, align 1
  %conv114 = zext i8 %112 to i32
  %shl115 = shl i32 %conv114, 8
  %or116 = or i32 %conv104, %shl115
  %113 = load ptr, ptr %clamptab, align 8
  %114 = load i32, ptr %Y96, align 4
  %115 = load ptr, ptr %Cbbtab, align 8
  %116 = load i32, ptr %Cb, align 4
  %idxprom117 = sext i32 %116 to i64
  %arrayidx118 = getelementptr inbounds i32, ptr %115, i64 %idxprom117
  %117 = load i32, ptr %arrayidx118, align 4
  %add119 = add nsw i32 %114, %117
  %idxprom120 = sext i32 %add119 to i64
  %arrayidx121 = getelementptr inbounds i8, ptr %113, i64 %idxprom120
  %118 = load i8, ptr %arrayidx121, align 1
  %conv122 = zext i8 %118 to i32
  %shl123 = shl i32 %conv122, 16
  %or124 = or i32 %or116, %shl123
  %or125 = or i32 %or124, -16777216
  %119 = load ptr, ptr %cp1, align 8
  %arrayidx126 = getelementptr inbounds i32, ptr %119, i64 1
  store i32 %or125, ptr %arrayidx126, align 4
  %120 = load ptr, ptr %cp.addr, align 8
  %add.ptr127 = getelementptr inbounds i32, ptr %120, i64 2
  store ptr %add.ptr127, ptr %cp.addr, align 8
  %121 = load ptr, ptr %cp1, align 8
  %add.ptr128 = getelementptr inbounds i32, ptr %121, i64 2
  store ptr %add.ptr128, ptr %cp1, align 8
  %122 = load ptr, ptr %pp.addr, align 8
  %add.ptr129 = getelementptr inbounds i8, ptr %122, i64 6
  store ptr %add.ptr129, ptr %pp.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %123 = load i32, ptr %x.addr, align 4
  %dec = add i32 %123, -1
  store i32 %dec, ptr %x.addr, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !63

do.end:                                           ; preds = %do.cond
  %124 = load i32, ptr %incr, align 4
  %125 = load ptr, ptr %cp.addr, align 8
  %idx.ext130 = sext i32 %124 to i64
  %add.ptr131 = getelementptr inbounds i32, ptr %125, i64 %idx.ext130
  store ptr %add.ptr131, ptr %cp.addr, align 8
  %126 = load i32, ptr %incr, align 4
  %127 = load ptr, ptr %cp1, align 8
  %idx.ext132 = sext i32 %126 to i64
  %add.ptr133 = getelementptr inbounds i32, ptr %127, i64 %idx.ext132
  store ptr %add.ptr133, ptr %cp1, align 8
  %128 = load i32, ptr %fromskew.addr, align 4
  %129 = load ptr, ptr %pp.addr, align 8
  %idx.ext134 = sext i32 %128 to i64
  %add.ptr135 = getelementptr inbounds i8, ptr %129, i64 %idx.ext134
  store ptr %add.ptr135, ptr %pp.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %130 = load i32, ptr %h.addr, align 4
  %sub = sub i32 %130, 2
  store i32 %sub, ptr %h.addr, align 4
  br label %for.cond, !llvm.loop !64

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putcontig8bitYCbCr21tile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
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
  %Y32 = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
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
  %12 = load i32, ptr %y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond67, %entry
  %13 = load i32, ptr %w.addr, align 4
  %shr = lshr i32 %13, 1
  store i32 %shr, ptr %x.addr, align 4
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
  %conv11 = zext i8 %25 to i32
  %26 = load ptr, ptr %clamptab, align 8
  %27 = load i32, ptr %Y, align 4
  %28 = load ptr, ptr %Cbgtab, align 8
  %29 = load i32, ptr %Cb, align 4
  %idxprom12 = sext i32 %29 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %28, i64 %idxprom12
  %30 = load i32, ptr %arrayidx13, align 4
  %31 = load ptr, ptr %Crgtab, align 8
  %32 = load i32, ptr %Cr, align 4
  %idxprom14 = sext i32 %32 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %31, i64 %idxprom14
  %33 = load i32, ptr %arrayidx15, align 4
  %add16 = add nsw i32 %30, %33
  %shr17 = ashr i32 %add16, 16
  %add18 = add nsw i32 %27, %shr17
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %26, i64 %idxprom19
  %34 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %34 to i32
  %shl = shl i32 %conv21, 8
  %or = or i32 %conv11, %shl
  %35 = load ptr, ptr %clamptab, align 8
  %36 = load i32, ptr %Y, align 4
  %37 = load ptr, ptr %Cbbtab, align 8
  %38 = load i32, ptr %Cb, align 4
  %idxprom22 = sext i32 %38 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %37, i64 %idxprom22
  %39 = load i32, ptr %arrayidx23, align 4
  %add24 = add nsw i32 %36, %39
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds i8, ptr %35, i64 %idxprom25
  %40 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %40 to i32
  %shl28 = shl i32 %conv27, 16
  %or29 = or i32 %or, %shl28
  %or30 = or i32 %or29, -16777216
  %41 = load ptr, ptr %cp.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, ptr %41, i64 0
  store i32 %or30, ptr %arrayidx31, align 4
  %42 = load ptr, ptr %pp.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %42, i64 1
  %43 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %43 to i32
  store i32 %conv34, ptr %Y32, align 4
  %44 = load ptr, ptr %clamptab, align 8
  %45 = load i32, ptr %Y32, align 4
  %46 = load ptr, ptr %Crrtab, align 8
  %47 = load i32, ptr %Cr, align 4
  %idxprom35 = sext i32 %47 to i64
  %arrayidx36 = getelementptr inbounds i32, ptr %46, i64 %idxprom35
  %48 = load i32, ptr %arrayidx36, align 4
  %add37 = add nsw i32 %45, %48
  %idxprom38 = sext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds i8, ptr %44, i64 %idxprom38
  %49 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %49 to i32
  %50 = load ptr, ptr %clamptab, align 8
  %51 = load i32, ptr %Y32, align 4
  %52 = load ptr, ptr %Cbgtab, align 8
  %53 = load i32, ptr %Cb, align 4
  %idxprom41 = sext i32 %53 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %52, i64 %idxprom41
  %54 = load i32, ptr %arrayidx42, align 4
  %55 = load ptr, ptr %Crgtab, align 8
  %56 = load i32, ptr %Cr, align 4
  %idxprom43 = sext i32 %56 to i64
  %arrayidx44 = getelementptr inbounds i32, ptr %55, i64 %idxprom43
  %57 = load i32, ptr %arrayidx44, align 4
  %add45 = add nsw i32 %54, %57
  %shr46 = ashr i32 %add45, 16
  %add47 = add nsw i32 %51, %shr46
  %idxprom48 = sext i32 %add47 to i64
  %arrayidx49 = getelementptr inbounds i8, ptr %50, i64 %idxprom48
  %58 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %58 to i32
  %shl51 = shl i32 %conv50, 8
  %or52 = or i32 %conv40, %shl51
  %59 = load ptr, ptr %clamptab, align 8
  %60 = load i32, ptr %Y32, align 4
  %61 = load ptr, ptr %Cbbtab, align 8
  %62 = load i32, ptr %Cb, align 4
  %idxprom53 = sext i32 %62 to i64
  %arrayidx54 = getelementptr inbounds i32, ptr %61, i64 %idxprom53
  %63 = load i32, ptr %arrayidx54, align 4
  %add55 = add nsw i32 %60, %63
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds i8, ptr %59, i64 %idxprom56
  %64 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %64 to i32
  %shl59 = shl i32 %conv58, 16
  %or60 = or i32 %or52, %shl59
  %or61 = or i32 %or60, -16777216
  %65 = load ptr, ptr %cp.addr, align 8
  %arrayidx62 = getelementptr inbounds i32, ptr %65, i64 1
  store i32 %or61, ptr %arrayidx62, align 4
  %66 = load ptr, ptr %cp.addr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %66, i64 2
  store ptr %add.ptr, ptr %cp.addr, align 8
  %67 = load ptr, ptr %pp.addr, align 8
  %add.ptr63 = getelementptr inbounds i8, ptr %67, i64 4
  store ptr %add.ptr63, ptr %pp.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body3
  %68 = load i32, ptr %x.addr, align 4
  %dec = add i32 %68, -1
  store i32 %dec, ptr %x.addr, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body3, label %do.end, !llvm.loop !65

do.end:                                           ; preds = %do.cond
  %69 = load i32, ptr %toskew.addr, align 4
  %70 = load ptr, ptr %cp.addr, align 8
  %idx.ext = sext i32 %69 to i64
  %add.ptr64 = getelementptr inbounds i32, ptr %70, i64 %idx.ext
  store ptr %add.ptr64, ptr %cp.addr, align 8
  %71 = load i32, ptr %fromskew.addr, align 4
  %72 = load ptr, ptr %pp.addr, align 8
  %idx.ext65 = sext i32 %71 to i64
  %add.ptr66 = getelementptr inbounds i8, ptr %72, i64 %idx.ext65
  store ptr %add.ptr66, ptr %pp.addr, align 8
  br label %do.cond67

do.cond67:                                        ; preds = %do.end
  %73 = load i32, ptr %h.addr, align 4
  %dec68 = add i32 %73, -1
  store i32 %dec68, ptr %h.addr, align 4
  %tobool69 = icmp ne i32 %dec68, 0
  br i1 %tobool69, label %do.body, label %do.end70, !llvm.loop !66

do.end70:                                         ; preds = %do.cond67
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putcontig8bitYCbCr11tile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %pp) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
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
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
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
  %12 = load i32, ptr %y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond34, %entry
  %13 = load i32, ptr %w.addr, align 4
  %shr = lshr i32 %13, 1
  store i32 %shr, ptr %x.addr, align 4
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
  %conv11 = zext i8 %25 to i32
  %26 = load ptr, ptr %clamptab, align 8
  %27 = load i32, ptr %Y, align 4
  %28 = load ptr, ptr %Cbgtab, align 8
  %29 = load i32, ptr %Cb, align 4
  %idxprom12 = sext i32 %29 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %28, i64 %idxprom12
  %30 = load i32, ptr %arrayidx13, align 4
  %31 = load ptr, ptr %Crgtab, align 8
  %32 = load i32, ptr %Cr, align 4
  %idxprom14 = sext i32 %32 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %31, i64 %idxprom14
  %33 = load i32, ptr %arrayidx15, align 4
  %add16 = add nsw i32 %30, %33
  %shr17 = ashr i32 %add16, 16
  %add18 = add nsw i32 %27, %shr17
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %26, i64 %idxprom19
  %34 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %34 to i32
  %shl = shl i32 %conv21, 8
  %or = or i32 %conv11, %shl
  %35 = load ptr, ptr %clamptab, align 8
  %36 = load i32, ptr %Y, align 4
  %37 = load ptr, ptr %Cbbtab, align 8
  %38 = load i32, ptr %Cb, align 4
  %idxprom22 = sext i32 %38 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %37, i64 %idxprom22
  %39 = load i32, ptr %arrayidx23, align 4
  %add24 = add nsw i32 %36, %39
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds i8, ptr %35, i64 %idxprom25
  %40 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %40 to i32
  %shl28 = shl i32 %conv27, 16
  %or29 = or i32 %or, %shl28
  %or30 = or i32 %or29, -16777216
  %41 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %41, i32 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  store i32 %or30, ptr %41, align 4
  %42 = load ptr, ptr %pp.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %42, i64 3
  store ptr %add.ptr, ptr %pp.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body3
  %43 = load i32, ptr %x.addr, align 4
  %dec = add i32 %43, -1
  store i32 %dec, ptr %x.addr, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body3, label %do.end, !llvm.loop !67

do.end:                                           ; preds = %do.cond
  %44 = load i32, ptr %toskew.addr, align 4
  %45 = load ptr, ptr %cp.addr, align 8
  %idx.ext = sext i32 %44 to i64
  %add.ptr31 = getelementptr inbounds i32, ptr %45, i64 %idx.ext
  store ptr %add.ptr31, ptr %cp.addr, align 8
  %46 = load i32, ptr %fromskew.addr, align 4
  %47 = load ptr, ptr %pp.addr, align 8
  %idx.ext32 = sext i32 %46 to i64
  %add.ptr33 = getelementptr inbounds i8, ptr %47, i64 %idx.ext32
  store ptr %add.ptr33, ptr %pp.addr, align 8
  br label %do.cond34

do.cond34:                                        ; preds = %do.end
  %48 = load i32, ptr %h.addr, align 4
  %dec35 = add i32 %48, -1
  store i32 %dec35, ptr %h.addr, align 4
  %tobool36 = icmp ne i32 %dec35, 0
  br i1 %tobool36, label %do.body, label %do.end37, !llvm.loop !68

do.end37:                                         ; preds = %do.cond34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBAAseparate8bittile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %r, ptr noundef %g, ptr noundef %b, ptr noundef %a) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %_x = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
  store ptr %r, ptr %r.addr, align 8
  store ptr %g, ptr %g.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %1 = load i32, ptr %x.addr, align 4
  %2 = load i32, ptr %y.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i32, ptr %h.addr, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %h.addr, align 4
  %cmp = icmp ugt i32 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %w.addr, align 4
  store i32 %4, ptr %_x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %5 = load i32, ptr %_x, align 4
  %cmp1 = icmp uge i32 %5, 8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %r.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %r.addr, align 8
  %7 = load i8, ptr %6, align 1
  %conv = zext i8 %7 to i32
  %8 = load ptr, ptr %g.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr2, ptr %g.addr, align 8
  %9 = load i8, ptr %8, align 1
  %conv3 = zext i8 %9 to i32
  %shl = shl i32 %conv3, 8
  %or = or i32 %conv, %shl
  %10 = load ptr, ptr %b.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr4, ptr %b.addr, align 8
  %11 = load i8, ptr %10, align 1
  %conv5 = zext i8 %11 to i32
  %shl6 = shl i32 %conv5, 16
  %or7 = or i32 %or, %shl6
  %12 = load ptr, ptr %a.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr8, ptr %a.addr, align 8
  %13 = load i8, ptr %12, align 1
  %conv9 = zext i8 %13 to i32
  %shl10 = shl i32 %conv9, 24
  %or11 = or i32 %or7, %shl10
  %14 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i32, ptr %14, i32 1
  store ptr %incdec.ptr12, ptr %cp.addr, align 8
  store i32 %or11, ptr %14, align 4
  %15 = load ptr, ptr %r.addr, align 8
  %incdec.ptr13 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr13, ptr %r.addr, align 8
  %16 = load i8, ptr %15, align 1
  %conv14 = zext i8 %16 to i32
  %17 = load ptr, ptr %g.addr, align 8
  %incdec.ptr15 = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr15, ptr %g.addr, align 8
  %18 = load i8, ptr %17, align 1
  %conv16 = zext i8 %18 to i32
  %shl17 = shl i32 %conv16, 8
  %or18 = or i32 %conv14, %shl17
  %19 = load ptr, ptr %b.addr, align 8
  %incdec.ptr19 = getelementptr inbounds i8, ptr %19, i32 1
  store ptr %incdec.ptr19, ptr %b.addr, align 8
  %20 = load i8, ptr %19, align 1
  %conv20 = zext i8 %20 to i32
  %shl21 = shl i32 %conv20, 16
  %or22 = or i32 %or18, %shl21
  %21 = load ptr, ptr %a.addr, align 8
  %incdec.ptr23 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr23, ptr %a.addr, align 8
  %22 = load i8, ptr %21, align 1
  %conv24 = zext i8 %22 to i32
  %shl25 = shl i32 %conv24, 24
  %or26 = or i32 %or22, %shl25
  %23 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr27 = getelementptr inbounds i32, ptr %23, i32 1
  store ptr %incdec.ptr27, ptr %cp.addr, align 8
  store i32 %or26, ptr %23, align 4
  %24 = load ptr, ptr %r.addr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr28, ptr %r.addr, align 8
  %25 = load i8, ptr %24, align 1
  %conv29 = zext i8 %25 to i32
  %26 = load ptr, ptr %g.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr30, ptr %g.addr, align 8
  %27 = load i8, ptr %26, align 1
  %conv31 = zext i8 %27 to i32
  %shl32 = shl i32 %conv31, 8
  %or33 = or i32 %conv29, %shl32
  %28 = load ptr, ptr %b.addr, align 8
  %incdec.ptr34 = getelementptr inbounds i8, ptr %28, i32 1
  store ptr %incdec.ptr34, ptr %b.addr, align 8
  %29 = load i8, ptr %28, align 1
  %conv35 = zext i8 %29 to i32
  %shl36 = shl i32 %conv35, 16
  %or37 = or i32 %or33, %shl36
  %30 = load ptr, ptr %a.addr, align 8
  %incdec.ptr38 = getelementptr inbounds i8, ptr %30, i32 1
  store ptr %incdec.ptr38, ptr %a.addr, align 8
  %31 = load i8, ptr %30, align 1
  %conv39 = zext i8 %31 to i32
  %shl40 = shl i32 %conv39, 24
  %or41 = or i32 %or37, %shl40
  %32 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr42 = getelementptr inbounds i32, ptr %32, i32 1
  store ptr %incdec.ptr42, ptr %cp.addr, align 8
  store i32 %or41, ptr %32, align 4
  %33 = load ptr, ptr %r.addr, align 8
  %incdec.ptr43 = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr43, ptr %r.addr, align 8
  %34 = load i8, ptr %33, align 1
  %conv44 = zext i8 %34 to i32
  %35 = load ptr, ptr %g.addr, align 8
  %incdec.ptr45 = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr45, ptr %g.addr, align 8
  %36 = load i8, ptr %35, align 1
  %conv46 = zext i8 %36 to i32
  %shl47 = shl i32 %conv46, 8
  %or48 = or i32 %conv44, %shl47
  %37 = load ptr, ptr %b.addr, align 8
  %incdec.ptr49 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr49, ptr %b.addr, align 8
  %38 = load i8, ptr %37, align 1
  %conv50 = zext i8 %38 to i32
  %shl51 = shl i32 %conv50, 16
  %or52 = or i32 %or48, %shl51
  %39 = load ptr, ptr %a.addr, align 8
  %incdec.ptr53 = getelementptr inbounds i8, ptr %39, i32 1
  store ptr %incdec.ptr53, ptr %a.addr, align 8
  %40 = load i8, ptr %39, align 1
  %conv54 = zext i8 %40 to i32
  %shl55 = shl i32 %conv54, 24
  %or56 = or i32 %or52, %shl55
  %41 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr57 = getelementptr inbounds i32, ptr %41, i32 1
  store ptr %incdec.ptr57, ptr %cp.addr, align 8
  store i32 %or56, ptr %41, align 4
  %42 = load ptr, ptr %r.addr, align 8
  %incdec.ptr58 = getelementptr inbounds i8, ptr %42, i32 1
  store ptr %incdec.ptr58, ptr %r.addr, align 8
  %43 = load i8, ptr %42, align 1
  %conv59 = zext i8 %43 to i32
  %44 = load ptr, ptr %g.addr, align 8
  %incdec.ptr60 = getelementptr inbounds i8, ptr %44, i32 1
  store ptr %incdec.ptr60, ptr %g.addr, align 8
  %45 = load i8, ptr %44, align 1
  %conv61 = zext i8 %45 to i32
  %shl62 = shl i32 %conv61, 8
  %or63 = or i32 %conv59, %shl62
  %46 = load ptr, ptr %b.addr, align 8
  %incdec.ptr64 = getelementptr inbounds i8, ptr %46, i32 1
  store ptr %incdec.ptr64, ptr %b.addr, align 8
  %47 = load i8, ptr %46, align 1
  %conv65 = zext i8 %47 to i32
  %shl66 = shl i32 %conv65, 16
  %or67 = or i32 %or63, %shl66
  %48 = load ptr, ptr %a.addr, align 8
  %incdec.ptr68 = getelementptr inbounds i8, ptr %48, i32 1
  store ptr %incdec.ptr68, ptr %a.addr, align 8
  %49 = load i8, ptr %48, align 1
  %conv69 = zext i8 %49 to i32
  %shl70 = shl i32 %conv69, 24
  %or71 = or i32 %or67, %shl70
  %50 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr72 = getelementptr inbounds i32, ptr %50, i32 1
  store ptr %incdec.ptr72, ptr %cp.addr, align 8
  store i32 %or71, ptr %50, align 4
  %51 = load ptr, ptr %r.addr, align 8
  %incdec.ptr73 = getelementptr inbounds i8, ptr %51, i32 1
  store ptr %incdec.ptr73, ptr %r.addr, align 8
  %52 = load i8, ptr %51, align 1
  %conv74 = zext i8 %52 to i32
  %53 = load ptr, ptr %g.addr, align 8
  %incdec.ptr75 = getelementptr inbounds i8, ptr %53, i32 1
  store ptr %incdec.ptr75, ptr %g.addr, align 8
  %54 = load i8, ptr %53, align 1
  %conv76 = zext i8 %54 to i32
  %shl77 = shl i32 %conv76, 8
  %or78 = or i32 %conv74, %shl77
  %55 = load ptr, ptr %b.addr, align 8
  %incdec.ptr79 = getelementptr inbounds i8, ptr %55, i32 1
  store ptr %incdec.ptr79, ptr %b.addr, align 8
  %56 = load i8, ptr %55, align 1
  %conv80 = zext i8 %56 to i32
  %shl81 = shl i32 %conv80, 16
  %or82 = or i32 %or78, %shl81
  %57 = load ptr, ptr %a.addr, align 8
  %incdec.ptr83 = getelementptr inbounds i8, ptr %57, i32 1
  store ptr %incdec.ptr83, ptr %a.addr, align 8
  %58 = load i8, ptr %57, align 1
  %conv84 = zext i8 %58 to i32
  %shl85 = shl i32 %conv84, 24
  %or86 = or i32 %or82, %shl85
  %59 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr87 = getelementptr inbounds i32, ptr %59, i32 1
  store ptr %incdec.ptr87, ptr %cp.addr, align 8
  store i32 %or86, ptr %59, align 4
  %60 = load ptr, ptr %r.addr, align 8
  %incdec.ptr88 = getelementptr inbounds i8, ptr %60, i32 1
  store ptr %incdec.ptr88, ptr %r.addr, align 8
  %61 = load i8, ptr %60, align 1
  %conv89 = zext i8 %61 to i32
  %62 = load ptr, ptr %g.addr, align 8
  %incdec.ptr90 = getelementptr inbounds i8, ptr %62, i32 1
  store ptr %incdec.ptr90, ptr %g.addr, align 8
  %63 = load i8, ptr %62, align 1
  %conv91 = zext i8 %63 to i32
  %shl92 = shl i32 %conv91, 8
  %or93 = or i32 %conv89, %shl92
  %64 = load ptr, ptr %b.addr, align 8
  %incdec.ptr94 = getelementptr inbounds i8, ptr %64, i32 1
  store ptr %incdec.ptr94, ptr %b.addr, align 8
  %65 = load i8, ptr %64, align 1
  %conv95 = zext i8 %65 to i32
  %shl96 = shl i32 %conv95, 16
  %or97 = or i32 %or93, %shl96
  %66 = load ptr, ptr %a.addr, align 8
  %incdec.ptr98 = getelementptr inbounds i8, ptr %66, i32 1
  store ptr %incdec.ptr98, ptr %a.addr, align 8
  %67 = load i8, ptr %66, align 1
  %conv99 = zext i8 %67 to i32
  %shl100 = shl i32 %conv99, 24
  %or101 = or i32 %or97, %shl100
  %68 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr102 = getelementptr inbounds i32, ptr %68, i32 1
  store ptr %incdec.ptr102, ptr %cp.addr, align 8
  store i32 %or101, ptr %68, align 4
  %69 = load ptr, ptr %r.addr, align 8
  %incdec.ptr103 = getelementptr inbounds i8, ptr %69, i32 1
  store ptr %incdec.ptr103, ptr %r.addr, align 8
  %70 = load i8, ptr %69, align 1
  %conv104 = zext i8 %70 to i32
  %71 = load ptr, ptr %g.addr, align 8
  %incdec.ptr105 = getelementptr inbounds i8, ptr %71, i32 1
  store ptr %incdec.ptr105, ptr %g.addr, align 8
  %72 = load i8, ptr %71, align 1
  %conv106 = zext i8 %72 to i32
  %shl107 = shl i32 %conv106, 8
  %or108 = or i32 %conv104, %shl107
  %73 = load ptr, ptr %b.addr, align 8
  %incdec.ptr109 = getelementptr inbounds i8, ptr %73, i32 1
  store ptr %incdec.ptr109, ptr %b.addr, align 8
  %74 = load i8, ptr %73, align 1
  %conv110 = zext i8 %74 to i32
  %shl111 = shl i32 %conv110, 16
  %or112 = or i32 %or108, %shl111
  %75 = load ptr, ptr %a.addr, align 8
  %incdec.ptr113 = getelementptr inbounds i8, ptr %75, i32 1
  store ptr %incdec.ptr113, ptr %a.addr, align 8
  %76 = load i8, ptr %75, align 1
  %conv114 = zext i8 %76 to i32
  %shl115 = shl i32 %conv114, 24
  %or116 = or i32 %or112, %shl115
  %77 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr117 = getelementptr inbounds i32, ptr %77, i32 1
  store ptr %incdec.ptr117, ptr %cp.addr, align 8
  store i32 %or116, ptr %77, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %78 = load i32, ptr %_x, align 4
  %sub = sub i32 %78, 8
  store i32 %sub, ptr %_x, align 4
  br label %for.cond, !llvm.loop !69

for.end:                                          ; preds = %for.cond
  %79 = load i32, ptr %_x, align 4
  %cmp118 = icmp ugt i32 %79, 0
  br i1 %cmp118, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %80 = load i32, ptr %_x, align 4
  switch i32 %80, label %sw.epilog [
    i32 7, label %sw.bb
    i32 6, label %sw.bb135
    i32 5, label %sw.bb151
    i32 4, label %sw.bb167
    i32 3, label %sw.bb183
    i32 2, label %sw.bb199
    i32 1, label %sw.bb215
  ]

sw.bb:                                            ; preds = %if.then
  %81 = load ptr, ptr %r.addr, align 8
  %incdec.ptr120 = getelementptr inbounds i8, ptr %81, i32 1
  store ptr %incdec.ptr120, ptr %r.addr, align 8
  %82 = load i8, ptr %81, align 1
  %conv121 = zext i8 %82 to i32
  %83 = load ptr, ptr %g.addr, align 8
  %incdec.ptr122 = getelementptr inbounds i8, ptr %83, i32 1
  store ptr %incdec.ptr122, ptr %g.addr, align 8
  %84 = load i8, ptr %83, align 1
  %conv123 = zext i8 %84 to i32
  %shl124 = shl i32 %conv123, 8
  %or125 = or i32 %conv121, %shl124
  %85 = load ptr, ptr %b.addr, align 8
  %incdec.ptr126 = getelementptr inbounds i8, ptr %85, i32 1
  store ptr %incdec.ptr126, ptr %b.addr, align 8
  %86 = load i8, ptr %85, align 1
  %conv127 = zext i8 %86 to i32
  %shl128 = shl i32 %conv127, 16
  %or129 = or i32 %or125, %shl128
  %87 = load ptr, ptr %a.addr, align 8
  %incdec.ptr130 = getelementptr inbounds i8, ptr %87, i32 1
  store ptr %incdec.ptr130, ptr %a.addr, align 8
  %88 = load i8, ptr %87, align 1
  %conv131 = zext i8 %88 to i32
  %shl132 = shl i32 %conv131, 24
  %or133 = or i32 %or129, %shl132
  %89 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr134 = getelementptr inbounds i32, ptr %89, i32 1
  store ptr %incdec.ptr134, ptr %cp.addr, align 8
  store i32 %or133, ptr %89, align 4
  br label %sw.bb135

sw.bb135:                                         ; preds = %if.then, %sw.bb
  %90 = load ptr, ptr %r.addr, align 8
  %incdec.ptr136 = getelementptr inbounds i8, ptr %90, i32 1
  store ptr %incdec.ptr136, ptr %r.addr, align 8
  %91 = load i8, ptr %90, align 1
  %conv137 = zext i8 %91 to i32
  %92 = load ptr, ptr %g.addr, align 8
  %incdec.ptr138 = getelementptr inbounds i8, ptr %92, i32 1
  store ptr %incdec.ptr138, ptr %g.addr, align 8
  %93 = load i8, ptr %92, align 1
  %conv139 = zext i8 %93 to i32
  %shl140 = shl i32 %conv139, 8
  %or141 = or i32 %conv137, %shl140
  %94 = load ptr, ptr %b.addr, align 8
  %incdec.ptr142 = getelementptr inbounds i8, ptr %94, i32 1
  store ptr %incdec.ptr142, ptr %b.addr, align 8
  %95 = load i8, ptr %94, align 1
  %conv143 = zext i8 %95 to i32
  %shl144 = shl i32 %conv143, 16
  %or145 = or i32 %or141, %shl144
  %96 = load ptr, ptr %a.addr, align 8
  %incdec.ptr146 = getelementptr inbounds i8, ptr %96, i32 1
  store ptr %incdec.ptr146, ptr %a.addr, align 8
  %97 = load i8, ptr %96, align 1
  %conv147 = zext i8 %97 to i32
  %shl148 = shl i32 %conv147, 24
  %or149 = or i32 %or145, %shl148
  %98 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr150 = getelementptr inbounds i32, ptr %98, i32 1
  store ptr %incdec.ptr150, ptr %cp.addr, align 8
  store i32 %or149, ptr %98, align 4
  br label %sw.bb151

sw.bb151:                                         ; preds = %if.then, %sw.bb135
  %99 = load ptr, ptr %r.addr, align 8
  %incdec.ptr152 = getelementptr inbounds i8, ptr %99, i32 1
  store ptr %incdec.ptr152, ptr %r.addr, align 8
  %100 = load i8, ptr %99, align 1
  %conv153 = zext i8 %100 to i32
  %101 = load ptr, ptr %g.addr, align 8
  %incdec.ptr154 = getelementptr inbounds i8, ptr %101, i32 1
  store ptr %incdec.ptr154, ptr %g.addr, align 8
  %102 = load i8, ptr %101, align 1
  %conv155 = zext i8 %102 to i32
  %shl156 = shl i32 %conv155, 8
  %or157 = or i32 %conv153, %shl156
  %103 = load ptr, ptr %b.addr, align 8
  %incdec.ptr158 = getelementptr inbounds i8, ptr %103, i32 1
  store ptr %incdec.ptr158, ptr %b.addr, align 8
  %104 = load i8, ptr %103, align 1
  %conv159 = zext i8 %104 to i32
  %shl160 = shl i32 %conv159, 16
  %or161 = or i32 %or157, %shl160
  %105 = load ptr, ptr %a.addr, align 8
  %incdec.ptr162 = getelementptr inbounds i8, ptr %105, i32 1
  store ptr %incdec.ptr162, ptr %a.addr, align 8
  %106 = load i8, ptr %105, align 1
  %conv163 = zext i8 %106 to i32
  %shl164 = shl i32 %conv163, 24
  %or165 = or i32 %or161, %shl164
  %107 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr166 = getelementptr inbounds i32, ptr %107, i32 1
  store ptr %incdec.ptr166, ptr %cp.addr, align 8
  store i32 %or165, ptr %107, align 4
  br label %sw.bb167

sw.bb167:                                         ; preds = %if.then, %sw.bb151
  %108 = load ptr, ptr %r.addr, align 8
  %incdec.ptr168 = getelementptr inbounds i8, ptr %108, i32 1
  store ptr %incdec.ptr168, ptr %r.addr, align 8
  %109 = load i8, ptr %108, align 1
  %conv169 = zext i8 %109 to i32
  %110 = load ptr, ptr %g.addr, align 8
  %incdec.ptr170 = getelementptr inbounds i8, ptr %110, i32 1
  store ptr %incdec.ptr170, ptr %g.addr, align 8
  %111 = load i8, ptr %110, align 1
  %conv171 = zext i8 %111 to i32
  %shl172 = shl i32 %conv171, 8
  %or173 = or i32 %conv169, %shl172
  %112 = load ptr, ptr %b.addr, align 8
  %incdec.ptr174 = getelementptr inbounds i8, ptr %112, i32 1
  store ptr %incdec.ptr174, ptr %b.addr, align 8
  %113 = load i8, ptr %112, align 1
  %conv175 = zext i8 %113 to i32
  %shl176 = shl i32 %conv175, 16
  %or177 = or i32 %or173, %shl176
  %114 = load ptr, ptr %a.addr, align 8
  %incdec.ptr178 = getelementptr inbounds i8, ptr %114, i32 1
  store ptr %incdec.ptr178, ptr %a.addr, align 8
  %115 = load i8, ptr %114, align 1
  %conv179 = zext i8 %115 to i32
  %shl180 = shl i32 %conv179, 24
  %or181 = or i32 %or177, %shl180
  %116 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr182 = getelementptr inbounds i32, ptr %116, i32 1
  store ptr %incdec.ptr182, ptr %cp.addr, align 8
  store i32 %or181, ptr %116, align 4
  br label %sw.bb183

sw.bb183:                                         ; preds = %if.then, %sw.bb167
  %117 = load ptr, ptr %r.addr, align 8
  %incdec.ptr184 = getelementptr inbounds i8, ptr %117, i32 1
  store ptr %incdec.ptr184, ptr %r.addr, align 8
  %118 = load i8, ptr %117, align 1
  %conv185 = zext i8 %118 to i32
  %119 = load ptr, ptr %g.addr, align 8
  %incdec.ptr186 = getelementptr inbounds i8, ptr %119, i32 1
  store ptr %incdec.ptr186, ptr %g.addr, align 8
  %120 = load i8, ptr %119, align 1
  %conv187 = zext i8 %120 to i32
  %shl188 = shl i32 %conv187, 8
  %or189 = or i32 %conv185, %shl188
  %121 = load ptr, ptr %b.addr, align 8
  %incdec.ptr190 = getelementptr inbounds i8, ptr %121, i32 1
  store ptr %incdec.ptr190, ptr %b.addr, align 8
  %122 = load i8, ptr %121, align 1
  %conv191 = zext i8 %122 to i32
  %shl192 = shl i32 %conv191, 16
  %or193 = or i32 %or189, %shl192
  %123 = load ptr, ptr %a.addr, align 8
  %incdec.ptr194 = getelementptr inbounds i8, ptr %123, i32 1
  store ptr %incdec.ptr194, ptr %a.addr, align 8
  %124 = load i8, ptr %123, align 1
  %conv195 = zext i8 %124 to i32
  %shl196 = shl i32 %conv195, 24
  %or197 = or i32 %or193, %shl196
  %125 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr198 = getelementptr inbounds i32, ptr %125, i32 1
  store ptr %incdec.ptr198, ptr %cp.addr, align 8
  store i32 %or197, ptr %125, align 4
  br label %sw.bb199

sw.bb199:                                         ; preds = %if.then, %sw.bb183
  %126 = load ptr, ptr %r.addr, align 8
  %incdec.ptr200 = getelementptr inbounds i8, ptr %126, i32 1
  store ptr %incdec.ptr200, ptr %r.addr, align 8
  %127 = load i8, ptr %126, align 1
  %conv201 = zext i8 %127 to i32
  %128 = load ptr, ptr %g.addr, align 8
  %incdec.ptr202 = getelementptr inbounds i8, ptr %128, i32 1
  store ptr %incdec.ptr202, ptr %g.addr, align 8
  %129 = load i8, ptr %128, align 1
  %conv203 = zext i8 %129 to i32
  %shl204 = shl i32 %conv203, 8
  %or205 = or i32 %conv201, %shl204
  %130 = load ptr, ptr %b.addr, align 8
  %incdec.ptr206 = getelementptr inbounds i8, ptr %130, i32 1
  store ptr %incdec.ptr206, ptr %b.addr, align 8
  %131 = load i8, ptr %130, align 1
  %conv207 = zext i8 %131 to i32
  %shl208 = shl i32 %conv207, 16
  %or209 = or i32 %or205, %shl208
  %132 = load ptr, ptr %a.addr, align 8
  %incdec.ptr210 = getelementptr inbounds i8, ptr %132, i32 1
  store ptr %incdec.ptr210, ptr %a.addr, align 8
  %133 = load i8, ptr %132, align 1
  %conv211 = zext i8 %133 to i32
  %shl212 = shl i32 %conv211, 24
  %or213 = or i32 %or209, %shl212
  %134 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr214 = getelementptr inbounds i32, ptr %134, i32 1
  store ptr %incdec.ptr214, ptr %cp.addr, align 8
  store i32 %or213, ptr %134, align 4
  br label %sw.bb215

sw.bb215:                                         ; preds = %if.then, %sw.bb199
  %135 = load ptr, ptr %r.addr, align 8
  %incdec.ptr216 = getelementptr inbounds i8, ptr %135, i32 1
  store ptr %incdec.ptr216, ptr %r.addr, align 8
  %136 = load i8, ptr %135, align 1
  %conv217 = zext i8 %136 to i32
  %137 = load ptr, ptr %g.addr, align 8
  %incdec.ptr218 = getelementptr inbounds i8, ptr %137, i32 1
  store ptr %incdec.ptr218, ptr %g.addr, align 8
  %138 = load i8, ptr %137, align 1
  %conv219 = zext i8 %138 to i32
  %shl220 = shl i32 %conv219, 8
  %or221 = or i32 %conv217, %shl220
  %139 = load ptr, ptr %b.addr, align 8
  %incdec.ptr222 = getelementptr inbounds i8, ptr %139, i32 1
  store ptr %incdec.ptr222, ptr %b.addr, align 8
  %140 = load i8, ptr %139, align 1
  %conv223 = zext i8 %140 to i32
  %shl224 = shl i32 %conv223, 16
  %or225 = or i32 %or221, %shl224
  %141 = load ptr, ptr %a.addr, align 8
  %incdec.ptr226 = getelementptr inbounds i8, ptr %141, i32 1
  store ptr %incdec.ptr226, ptr %a.addr, align 8
  %142 = load i8, ptr %141, align 1
  %conv227 = zext i8 %142 to i32
  %shl228 = shl i32 %conv227, 24
  %or229 = or i32 %or225, %shl228
  %143 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr230 = getelementptr inbounds i32, ptr %143, i32 1
  store ptr %incdec.ptr230, ptr %cp.addr, align 8
  store i32 %or229, ptr %143, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb215, %if.then
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %for.end
  %144 = load i32, ptr %fromskew.addr, align 4
  %145 = load ptr, ptr %r.addr, align 8
  %idx.ext = sext i32 %144 to i64
  %add.ptr = getelementptr inbounds i8, ptr %145, i64 %idx.ext
  store ptr %add.ptr, ptr %r.addr, align 8
  %146 = load i32, ptr %fromskew.addr, align 4
  %147 = load ptr, ptr %g.addr, align 8
  %idx.ext231 = sext i32 %146 to i64
  %add.ptr232 = getelementptr inbounds i8, ptr %147, i64 %idx.ext231
  store ptr %add.ptr232, ptr %g.addr, align 8
  %148 = load i32, ptr %fromskew.addr, align 4
  %149 = load ptr, ptr %b.addr, align 8
  %idx.ext233 = sext i32 %148 to i64
  %add.ptr234 = getelementptr inbounds i8, ptr %149, i64 %idx.ext233
  store ptr %add.ptr234, ptr %b.addr, align 8
  %150 = load i32, ptr %fromskew.addr, align 4
  %151 = load ptr, ptr %a.addr, align 8
  %idx.ext235 = sext i32 %150 to i64
  %add.ptr236 = getelementptr inbounds i8, ptr %151, i64 %idx.ext235
  store ptr %add.ptr236, ptr %a.addr, align 8
  %152 = load i32, ptr %toskew.addr, align 4
  %153 = load ptr, ptr %cp.addr, align 8
  %idx.ext237 = sext i32 %152 to i64
  %add.ptr238 = getelementptr inbounds i32, ptr %153, i64 %idx.ext237
  store ptr %add.ptr238, ptr %cp.addr, align 8
  br label %while.cond, !llvm.loop !70

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBUAseparate8bittile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %r, ptr noundef %g, ptr noundef %b, ptr noundef %a) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %gv = alloca i32, align 4
  %bv = alloca i32, align 4
  %av = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
  store ptr %r, ptr %r.addr, align 8
  store ptr %g, ptr %g.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %1 = load i32, ptr %y.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %2 = load i32, ptr %h.addr, align 4
  %dec = add i32 %2, -1
  store i32 %dec, ptr %h.addr, align 4
  %cmp = icmp ugt i32 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %w.addr, align 4
  store i32 %3, ptr %x.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %4 = load i32, ptr %x.addr, align 4
  %dec1 = add i32 %4, -1
  store i32 %dec1, ptr %x.addr, align 4
  %cmp2 = icmp ugt i32 %4, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %a.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %a.addr, align 8
  %6 = load i8, ptr %5, align 1
  %conv = zext i8 %6 to i32
  store i32 %conv, ptr %av, align 4
  %7 = load ptr, ptr %r.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr3, ptr %r.addr, align 8
  %8 = load i8, ptr %7, align 1
  %conv4 = zext i8 %8 to i32
  %9 = load i32, ptr %av, align 4
  %mul = mul i32 %conv4, %9
  %div = udiv i32 %mul, 255
  store i32 %div, ptr %rv, align 4
  %10 = load ptr, ptr %g.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr5, ptr %g.addr, align 8
  %11 = load i8, ptr %10, align 1
  %conv6 = zext i8 %11 to i32
  %12 = load i32, ptr %av, align 4
  %mul7 = mul i32 %conv6, %12
  %div8 = udiv i32 %mul7, 255
  store i32 %div8, ptr %gv, align 4
  %13 = load ptr, ptr %b.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr9, ptr %b.addr, align 8
  %14 = load i8, ptr %13, align 1
  %conv10 = zext i8 %14 to i32
  %15 = load i32, ptr %av, align 4
  %mul11 = mul i32 %conv10, %15
  %div12 = udiv i32 %mul11, 255
  store i32 %div12, ptr %bv, align 4
  %16 = load i32, ptr %rv, align 4
  %17 = load i32, ptr %gv, align 4
  %shl = shl i32 %17, 8
  %or = or i32 %16, %shl
  %18 = load i32, ptr %bv, align 4
  %shl13 = shl i32 %18, 16
  %or14 = or i32 %or, %shl13
  %19 = load i32, ptr %av, align 4
  %shl15 = shl i32 %19, 24
  %or16 = or i32 %or14, %shl15
  %20 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr17 = getelementptr inbounds i32, ptr %20, i32 1
  store ptr %incdec.ptr17, ptr %cp.addr, align 8
  store i32 %or16, ptr %20, align 4
  br label %for.cond, !llvm.loop !71

for.end:                                          ; preds = %for.cond
  %21 = load i32, ptr %fromskew.addr, align 4
  %22 = load ptr, ptr %r.addr, align 8
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr inbounds i8, ptr %22, i64 %idx.ext
  store ptr %add.ptr, ptr %r.addr, align 8
  %23 = load i32, ptr %fromskew.addr, align 4
  %24 = load ptr, ptr %g.addr, align 8
  %idx.ext18 = sext i32 %23 to i64
  %add.ptr19 = getelementptr inbounds i8, ptr %24, i64 %idx.ext18
  store ptr %add.ptr19, ptr %g.addr, align 8
  %25 = load i32, ptr %fromskew.addr, align 4
  %26 = load ptr, ptr %b.addr, align 8
  %idx.ext20 = sext i32 %25 to i64
  %add.ptr21 = getelementptr inbounds i8, ptr %26, i64 %idx.ext20
  store ptr %add.ptr21, ptr %b.addr, align 8
  %27 = load i32, ptr %fromskew.addr, align 4
  %28 = load ptr, ptr %a.addr, align 8
  %idx.ext22 = sext i32 %27 to i64
  %add.ptr23 = getelementptr inbounds i8, ptr %28, i64 %idx.ext22
  store ptr %add.ptr23, ptr %a.addr, align 8
  %29 = load i32, ptr %toskew.addr, align 4
  %30 = load ptr, ptr %cp.addr, align 8
  %idx.ext24 = sext i32 %29 to i64
  %add.ptr25 = getelementptr inbounds i32, ptr %30, i64 %idx.ext24
  store ptr %add.ptr25, ptr %cp.addr, align 8
  br label %while.cond, !llvm.loop !72

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBseparate8bittile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %r, ptr noundef %g, ptr noundef %b, ptr noundef %a) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %_x = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
  store ptr %r, ptr %r.addr, align 8
  store ptr %g, ptr %g.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %1 = load i32, ptr %x.addr, align 4
  %2 = load i32, ptr %y.addr, align 4
  %3 = load ptr, ptr %a.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = load i32, ptr %h.addr, align 4
  %dec = add i32 %4, -1
  store i32 %dec, ptr %h.addr, align 4
  %cmp = icmp ugt i32 %4, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, ptr %w.addr, align 4
  store i32 %5, ptr %_x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %6 = load i32, ptr %_x, align 4
  %cmp1 = icmp uge i32 %6, 8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %r.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %r.addr, align 8
  %8 = load i8, ptr %7, align 1
  %conv = zext i8 %8 to i32
  %9 = load ptr, ptr %g.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr2, ptr %g.addr, align 8
  %10 = load i8, ptr %9, align 1
  %conv3 = zext i8 %10 to i32
  %shl = shl i32 %conv3, 8
  %or = or i32 %conv, %shl
  %11 = load ptr, ptr %b.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr4, ptr %b.addr, align 8
  %12 = load i8, ptr %11, align 1
  %conv5 = zext i8 %12 to i32
  %shl6 = shl i32 %conv5, 16
  %or7 = or i32 %or, %shl6
  %or8 = or i32 %or7, -16777216
  %13 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i32, ptr %13, i32 1
  store ptr %incdec.ptr9, ptr %cp.addr, align 8
  store i32 %or8, ptr %13, align 4
  %14 = load ptr, ptr %r.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr10, ptr %r.addr, align 8
  %15 = load i8, ptr %14, align 1
  %conv11 = zext i8 %15 to i32
  %16 = load ptr, ptr %g.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr12, ptr %g.addr, align 8
  %17 = load i8, ptr %16, align 1
  %conv13 = zext i8 %17 to i32
  %shl14 = shl i32 %conv13, 8
  %or15 = or i32 %conv11, %shl14
  %18 = load ptr, ptr %b.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, ptr %18, i32 1
  store ptr %incdec.ptr16, ptr %b.addr, align 8
  %19 = load i8, ptr %18, align 1
  %conv17 = zext i8 %19 to i32
  %shl18 = shl i32 %conv17, 16
  %or19 = or i32 %or15, %shl18
  %or20 = or i32 %or19, -16777216
  %20 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr21 = getelementptr inbounds i32, ptr %20, i32 1
  store ptr %incdec.ptr21, ptr %cp.addr, align 8
  store i32 %or20, ptr %20, align 4
  %21 = load ptr, ptr %r.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr22, ptr %r.addr, align 8
  %22 = load i8, ptr %21, align 1
  %conv23 = zext i8 %22 to i32
  %23 = load ptr, ptr %g.addr, align 8
  %incdec.ptr24 = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %incdec.ptr24, ptr %g.addr, align 8
  %24 = load i8, ptr %23, align 1
  %conv25 = zext i8 %24 to i32
  %shl26 = shl i32 %conv25, 8
  %or27 = or i32 %conv23, %shl26
  %25 = load ptr, ptr %b.addr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr28, ptr %b.addr, align 8
  %26 = load i8, ptr %25, align 1
  %conv29 = zext i8 %26 to i32
  %shl30 = shl i32 %conv29, 16
  %or31 = or i32 %or27, %shl30
  %or32 = or i32 %or31, -16777216
  %27 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr33 = getelementptr inbounds i32, ptr %27, i32 1
  store ptr %incdec.ptr33, ptr %cp.addr, align 8
  store i32 %or32, ptr %27, align 4
  %28 = load ptr, ptr %r.addr, align 8
  %incdec.ptr34 = getelementptr inbounds i8, ptr %28, i32 1
  store ptr %incdec.ptr34, ptr %r.addr, align 8
  %29 = load i8, ptr %28, align 1
  %conv35 = zext i8 %29 to i32
  %30 = load ptr, ptr %g.addr, align 8
  %incdec.ptr36 = getelementptr inbounds i8, ptr %30, i32 1
  store ptr %incdec.ptr36, ptr %g.addr, align 8
  %31 = load i8, ptr %30, align 1
  %conv37 = zext i8 %31 to i32
  %shl38 = shl i32 %conv37, 8
  %or39 = or i32 %conv35, %shl38
  %32 = load ptr, ptr %b.addr, align 8
  %incdec.ptr40 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr40, ptr %b.addr, align 8
  %33 = load i8, ptr %32, align 1
  %conv41 = zext i8 %33 to i32
  %shl42 = shl i32 %conv41, 16
  %or43 = or i32 %or39, %shl42
  %or44 = or i32 %or43, -16777216
  %34 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr45 = getelementptr inbounds i32, ptr %34, i32 1
  store ptr %incdec.ptr45, ptr %cp.addr, align 8
  store i32 %or44, ptr %34, align 4
  %35 = load ptr, ptr %r.addr, align 8
  %incdec.ptr46 = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr46, ptr %r.addr, align 8
  %36 = load i8, ptr %35, align 1
  %conv47 = zext i8 %36 to i32
  %37 = load ptr, ptr %g.addr, align 8
  %incdec.ptr48 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr48, ptr %g.addr, align 8
  %38 = load i8, ptr %37, align 1
  %conv49 = zext i8 %38 to i32
  %shl50 = shl i32 %conv49, 8
  %or51 = or i32 %conv47, %shl50
  %39 = load ptr, ptr %b.addr, align 8
  %incdec.ptr52 = getelementptr inbounds i8, ptr %39, i32 1
  store ptr %incdec.ptr52, ptr %b.addr, align 8
  %40 = load i8, ptr %39, align 1
  %conv53 = zext i8 %40 to i32
  %shl54 = shl i32 %conv53, 16
  %or55 = or i32 %or51, %shl54
  %or56 = or i32 %or55, -16777216
  %41 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr57 = getelementptr inbounds i32, ptr %41, i32 1
  store ptr %incdec.ptr57, ptr %cp.addr, align 8
  store i32 %or56, ptr %41, align 4
  %42 = load ptr, ptr %r.addr, align 8
  %incdec.ptr58 = getelementptr inbounds i8, ptr %42, i32 1
  store ptr %incdec.ptr58, ptr %r.addr, align 8
  %43 = load i8, ptr %42, align 1
  %conv59 = zext i8 %43 to i32
  %44 = load ptr, ptr %g.addr, align 8
  %incdec.ptr60 = getelementptr inbounds i8, ptr %44, i32 1
  store ptr %incdec.ptr60, ptr %g.addr, align 8
  %45 = load i8, ptr %44, align 1
  %conv61 = zext i8 %45 to i32
  %shl62 = shl i32 %conv61, 8
  %or63 = or i32 %conv59, %shl62
  %46 = load ptr, ptr %b.addr, align 8
  %incdec.ptr64 = getelementptr inbounds i8, ptr %46, i32 1
  store ptr %incdec.ptr64, ptr %b.addr, align 8
  %47 = load i8, ptr %46, align 1
  %conv65 = zext i8 %47 to i32
  %shl66 = shl i32 %conv65, 16
  %or67 = or i32 %or63, %shl66
  %or68 = or i32 %or67, -16777216
  %48 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr69 = getelementptr inbounds i32, ptr %48, i32 1
  store ptr %incdec.ptr69, ptr %cp.addr, align 8
  store i32 %or68, ptr %48, align 4
  %49 = load ptr, ptr %r.addr, align 8
  %incdec.ptr70 = getelementptr inbounds i8, ptr %49, i32 1
  store ptr %incdec.ptr70, ptr %r.addr, align 8
  %50 = load i8, ptr %49, align 1
  %conv71 = zext i8 %50 to i32
  %51 = load ptr, ptr %g.addr, align 8
  %incdec.ptr72 = getelementptr inbounds i8, ptr %51, i32 1
  store ptr %incdec.ptr72, ptr %g.addr, align 8
  %52 = load i8, ptr %51, align 1
  %conv73 = zext i8 %52 to i32
  %shl74 = shl i32 %conv73, 8
  %or75 = or i32 %conv71, %shl74
  %53 = load ptr, ptr %b.addr, align 8
  %incdec.ptr76 = getelementptr inbounds i8, ptr %53, i32 1
  store ptr %incdec.ptr76, ptr %b.addr, align 8
  %54 = load i8, ptr %53, align 1
  %conv77 = zext i8 %54 to i32
  %shl78 = shl i32 %conv77, 16
  %or79 = or i32 %or75, %shl78
  %or80 = or i32 %or79, -16777216
  %55 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr81 = getelementptr inbounds i32, ptr %55, i32 1
  store ptr %incdec.ptr81, ptr %cp.addr, align 8
  store i32 %or80, ptr %55, align 4
  %56 = load ptr, ptr %r.addr, align 8
  %incdec.ptr82 = getelementptr inbounds i8, ptr %56, i32 1
  store ptr %incdec.ptr82, ptr %r.addr, align 8
  %57 = load i8, ptr %56, align 1
  %conv83 = zext i8 %57 to i32
  %58 = load ptr, ptr %g.addr, align 8
  %incdec.ptr84 = getelementptr inbounds i8, ptr %58, i32 1
  store ptr %incdec.ptr84, ptr %g.addr, align 8
  %59 = load i8, ptr %58, align 1
  %conv85 = zext i8 %59 to i32
  %shl86 = shl i32 %conv85, 8
  %or87 = or i32 %conv83, %shl86
  %60 = load ptr, ptr %b.addr, align 8
  %incdec.ptr88 = getelementptr inbounds i8, ptr %60, i32 1
  store ptr %incdec.ptr88, ptr %b.addr, align 8
  %61 = load i8, ptr %60, align 1
  %conv89 = zext i8 %61 to i32
  %shl90 = shl i32 %conv89, 16
  %or91 = or i32 %or87, %shl90
  %or92 = or i32 %or91, -16777216
  %62 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr93 = getelementptr inbounds i32, ptr %62, i32 1
  store ptr %incdec.ptr93, ptr %cp.addr, align 8
  store i32 %or92, ptr %62, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %63 = load i32, ptr %_x, align 4
  %sub = sub i32 %63, 8
  store i32 %sub, ptr %_x, align 4
  br label %for.cond, !llvm.loop !73

for.end:                                          ; preds = %for.cond
  %64 = load i32, ptr %_x, align 4
  %cmp94 = icmp ugt i32 %64, 0
  br i1 %cmp94, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %65 = load i32, ptr %_x, align 4
  switch i32 %65, label %sw.epilog [
    i32 7, label %sw.bb
    i32 6, label %sw.bb108
    i32 5, label %sw.bb121
    i32 4, label %sw.bb134
    i32 3, label %sw.bb147
    i32 2, label %sw.bb160
    i32 1, label %sw.bb173
  ]

sw.bb:                                            ; preds = %if.then
  %66 = load ptr, ptr %r.addr, align 8
  %incdec.ptr96 = getelementptr inbounds i8, ptr %66, i32 1
  store ptr %incdec.ptr96, ptr %r.addr, align 8
  %67 = load i8, ptr %66, align 1
  %conv97 = zext i8 %67 to i32
  %68 = load ptr, ptr %g.addr, align 8
  %incdec.ptr98 = getelementptr inbounds i8, ptr %68, i32 1
  store ptr %incdec.ptr98, ptr %g.addr, align 8
  %69 = load i8, ptr %68, align 1
  %conv99 = zext i8 %69 to i32
  %shl100 = shl i32 %conv99, 8
  %or101 = or i32 %conv97, %shl100
  %70 = load ptr, ptr %b.addr, align 8
  %incdec.ptr102 = getelementptr inbounds i8, ptr %70, i32 1
  store ptr %incdec.ptr102, ptr %b.addr, align 8
  %71 = load i8, ptr %70, align 1
  %conv103 = zext i8 %71 to i32
  %shl104 = shl i32 %conv103, 16
  %or105 = or i32 %or101, %shl104
  %or106 = or i32 %or105, -16777216
  %72 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr107 = getelementptr inbounds i32, ptr %72, i32 1
  store ptr %incdec.ptr107, ptr %cp.addr, align 8
  store i32 %or106, ptr %72, align 4
  br label %sw.bb108

sw.bb108:                                         ; preds = %if.then, %sw.bb
  %73 = load ptr, ptr %r.addr, align 8
  %incdec.ptr109 = getelementptr inbounds i8, ptr %73, i32 1
  store ptr %incdec.ptr109, ptr %r.addr, align 8
  %74 = load i8, ptr %73, align 1
  %conv110 = zext i8 %74 to i32
  %75 = load ptr, ptr %g.addr, align 8
  %incdec.ptr111 = getelementptr inbounds i8, ptr %75, i32 1
  store ptr %incdec.ptr111, ptr %g.addr, align 8
  %76 = load i8, ptr %75, align 1
  %conv112 = zext i8 %76 to i32
  %shl113 = shl i32 %conv112, 8
  %or114 = or i32 %conv110, %shl113
  %77 = load ptr, ptr %b.addr, align 8
  %incdec.ptr115 = getelementptr inbounds i8, ptr %77, i32 1
  store ptr %incdec.ptr115, ptr %b.addr, align 8
  %78 = load i8, ptr %77, align 1
  %conv116 = zext i8 %78 to i32
  %shl117 = shl i32 %conv116, 16
  %or118 = or i32 %or114, %shl117
  %or119 = or i32 %or118, -16777216
  %79 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr120 = getelementptr inbounds i32, ptr %79, i32 1
  store ptr %incdec.ptr120, ptr %cp.addr, align 8
  store i32 %or119, ptr %79, align 4
  br label %sw.bb121

sw.bb121:                                         ; preds = %if.then, %sw.bb108
  %80 = load ptr, ptr %r.addr, align 8
  %incdec.ptr122 = getelementptr inbounds i8, ptr %80, i32 1
  store ptr %incdec.ptr122, ptr %r.addr, align 8
  %81 = load i8, ptr %80, align 1
  %conv123 = zext i8 %81 to i32
  %82 = load ptr, ptr %g.addr, align 8
  %incdec.ptr124 = getelementptr inbounds i8, ptr %82, i32 1
  store ptr %incdec.ptr124, ptr %g.addr, align 8
  %83 = load i8, ptr %82, align 1
  %conv125 = zext i8 %83 to i32
  %shl126 = shl i32 %conv125, 8
  %or127 = or i32 %conv123, %shl126
  %84 = load ptr, ptr %b.addr, align 8
  %incdec.ptr128 = getelementptr inbounds i8, ptr %84, i32 1
  store ptr %incdec.ptr128, ptr %b.addr, align 8
  %85 = load i8, ptr %84, align 1
  %conv129 = zext i8 %85 to i32
  %shl130 = shl i32 %conv129, 16
  %or131 = or i32 %or127, %shl130
  %or132 = or i32 %or131, -16777216
  %86 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr133 = getelementptr inbounds i32, ptr %86, i32 1
  store ptr %incdec.ptr133, ptr %cp.addr, align 8
  store i32 %or132, ptr %86, align 4
  br label %sw.bb134

sw.bb134:                                         ; preds = %if.then, %sw.bb121
  %87 = load ptr, ptr %r.addr, align 8
  %incdec.ptr135 = getelementptr inbounds i8, ptr %87, i32 1
  store ptr %incdec.ptr135, ptr %r.addr, align 8
  %88 = load i8, ptr %87, align 1
  %conv136 = zext i8 %88 to i32
  %89 = load ptr, ptr %g.addr, align 8
  %incdec.ptr137 = getelementptr inbounds i8, ptr %89, i32 1
  store ptr %incdec.ptr137, ptr %g.addr, align 8
  %90 = load i8, ptr %89, align 1
  %conv138 = zext i8 %90 to i32
  %shl139 = shl i32 %conv138, 8
  %or140 = or i32 %conv136, %shl139
  %91 = load ptr, ptr %b.addr, align 8
  %incdec.ptr141 = getelementptr inbounds i8, ptr %91, i32 1
  store ptr %incdec.ptr141, ptr %b.addr, align 8
  %92 = load i8, ptr %91, align 1
  %conv142 = zext i8 %92 to i32
  %shl143 = shl i32 %conv142, 16
  %or144 = or i32 %or140, %shl143
  %or145 = or i32 %or144, -16777216
  %93 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr146 = getelementptr inbounds i32, ptr %93, i32 1
  store ptr %incdec.ptr146, ptr %cp.addr, align 8
  store i32 %or145, ptr %93, align 4
  br label %sw.bb147

sw.bb147:                                         ; preds = %if.then, %sw.bb134
  %94 = load ptr, ptr %r.addr, align 8
  %incdec.ptr148 = getelementptr inbounds i8, ptr %94, i32 1
  store ptr %incdec.ptr148, ptr %r.addr, align 8
  %95 = load i8, ptr %94, align 1
  %conv149 = zext i8 %95 to i32
  %96 = load ptr, ptr %g.addr, align 8
  %incdec.ptr150 = getelementptr inbounds i8, ptr %96, i32 1
  store ptr %incdec.ptr150, ptr %g.addr, align 8
  %97 = load i8, ptr %96, align 1
  %conv151 = zext i8 %97 to i32
  %shl152 = shl i32 %conv151, 8
  %or153 = or i32 %conv149, %shl152
  %98 = load ptr, ptr %b.addr, align 8
  %incdec.ptr154 = getelementptr inbounds i8, ptr %98, i32 1
  store ptr %incdec.ptr154, ptr %b.addr, align 8
  %99 = load i8, ptr %98, align 1
  %conv155 = zext i8 %99 to i32
  %shl156 = shl i32 %conv155, 16
  %or157 = or i32 %or153, %shl156
  %or158 = or i32 %or157, -16777216
  %100 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr159 = getelementptr inbounds i32, ptr %100, i32 1
  store ptr %incdec.ptr159, ptr %cp.addr, align 8
  store i32 %or158, ptr %100, align 4
  br label %sw.bb160

sw.bb160:                                         ; preds = %if.then, %sw.bb147
  %101 = load ptr, ptr %r.addr, align 8
  %incdec.ptr161 = getelementptr inbounds i8, ptr %101, i32 1
  store ptr %incdec.ptr161, ptr %r.addr, align 8
  %102 = load i8, ptr %101, align 1
  %conv162 = zext i8 %102 to i32
  %103 = load ptr, ptr %g.addr, align 8
  %incdec.ptr163 = getelementptr inbounds i8, ptr %103, i32 1
  store ptr %incdec.ptr163, ptr %g.addr, align 8
  %104 = load i8, ptr %103, align 1
  %conv164 = zext i8 %104 to i32
  %shl165 = shl i32 %conv164, 8
  %or166 = or i32 %conv162, %shl165
  %105 = load ptr, ptr %b.addr, align 8
  %incdec.ptr167 = getelementptr inbounds i8, ptr %105, i32 1
  store ptr %incdec.ptr167, ptr %b.addr, align 8
  %106 = load i8, ptr %105, align 1
  %conv168 = zext i8 %106 to i32
  %shl169 = shl i32 %conv168, 16
  %or170 = or i32 %or166, %shl169
  %or171 = or i32 %or170, -16777216
  %107 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr172 = getelementptr inbounds i32, ptr %107, i32 1
  store ptr %incdec.ptr172, ptr %cp.addr, align 8
  store i32 %or171, ptr %107, align 4
  br label %sw.bb173

sw.bb173:                                         ; preds = %if.then, %sw.bb160
  %108 = load ptr, ptr %r.addr, align 8
  %incdec.ptr174 = getelementptr inbounds i8, ptr %108, i32 1
  store ptr %incdec.ptr174, ptr %r.addr, align 8
  %109 = load i8, ptr %108, align 1
  %conv175 = zext i8 %109 to i32
  %110 = load ptr, ptr %g.addr, align 8
  %incdec.ptr176 = getelementptr inbounds i8, ptr %110, i32 1
  store ptr %incdec.ptr176, ptr %g.addr, align 8
  %111 = load i8, ptr %110, align 1
  %conv177 = zext i8 %111 to i32
  %shl178 = shl i32 %conv177, 8
  %or179 = or i32 %conv175, %shl178
  %112 = load ptr, ptr %b.addr, align 8
  %incdec.ptr180 = getelementptr inbounds i8, ptr %112, i32 1
  store ptr %incdec.ptr180, ptr %b.addr, align 8
  %113 = load i8, ptr %112, align 1
  %conv181 = zext i8 %113 to i32
  %shl182 = shl i32 %conv181, 16
  %or183 = or i32 %or179, %shl182
  %or184 = or i32 %or183, -16777216
  %114 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr185 = getelementptr inbounds i32, ptr %114, i32 1
  store ptr %incdec.ptr185, ptr %cp.addr, align 8
  store i32 %or184, ptr %114, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb173, %if.then
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %for.end
  %115 = load i32, ptr %fromskew.addr, align 4
  %116 = load ptr, ptr %r.addr, align 8
  %idx.ext = sext i32 %115 to i64
  %add.ptr = getelementptr inbounds i8, ptr %116, i64 %idx.ext
  store ptr %add.ptr, ptr %r.addr, align 8
  %117 = load i32, ptr %fromskew.addr, align 4
  %118 = load ptr, ptr %g.addr, align 8
  %idx.ext186 = sext i32 %117 to i64
  %add.ptr187 = getelementptr inbounds i8, ptr %118, i64 %idx.ext186
  store ptr %add.ptr187, ptr %g.addr, align 8
  %119 = load i32, ptr %fromskew.addr, align 4
  %120 = load ptr, ptr %b.addr, align 8
  %idx.ext188 = sext i32 %119 to i64
  %add.ptr189 = getelementptr inbounds i8, ptr %120, i64 %idx.ext188
  store ptr %add.ptr189, ptr %b.addr, align 8
  %121 = load i32, ptr %toskew.addr, align 4
  %122 = load ptr, ptr %cp.addr, align 8
  %idx.ext190 = sext i32 %121 to i64
  %add.ptr191 = getelementptr inbounds i32, ptr %122, i64 %idx.ext190
  store ptr %add.ptr191, ptr %cp.addr, align 8
  br label %while.cond, !llvm.loop !74

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBseparate8bitMaptile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %r, ptr noundef %g, ptr noundef %b, ptr noundef %a) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %Map = alloca ptr, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
  store ptr %r, ptr %r.addr, align 8
  store ptr %g, ptr %g.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  %0 = load ptr, ptr %img.addr, align 8
  %Map1 = getelementptr inbounds %struct._TIFFRGBAImage, ptr %0, i32 0, i32 15
  %1 = load ptr, ptr %Map1, align 8
  store ptr %1, ptr %Map, align 8
  %2 = load i32, ptr %y.addr, align 4
  %3 = load ptr, ptr %a.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %4 = load i32, ptr %h.addr, align 4
  %dec = add i32 %4, -1
  store i32 %dec, ptr %h.addr, align 4
  %cmp = icmp ugt i32 %4, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, ptr %w.addr, align 4
  store i32 %5, ptr %x.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %6 = load i32, ptr %x.addr, align 4
  %cmp2 = icmp ugt i32 %6, 0
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
  %conv = zext i8 %10 to i32
  %11 = load ptr, ptr %Map, align 8
  %12 = load ptr, ptr %g.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr3, ptr %g.addr, align 8
  %13 = load i8, ptr %12, align 1
  %idxprom4 = zext i8 %13 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %11, i64 %idxprom4
  %14 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %14 to i32
  %shl = shl i32 %conv6, 8
  %or = or i32 %conv, %shl
  %15 = load ptr, ptr %Map, align 8
  %16 = load ptr, ptr %b.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr7, ptr %b.addr, align 8
  %17 = load i8, ptr %16, align 1
  %idxprom8 = zext i8 %17 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %15, i64 %idxprom8
  %18 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %18 to i32
  %shl11 = shl i32 %conv10, 16
  %or12 = or i32 %or, %shl11
  %or13 = or i32 %or12, -16777216
  %19 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i32, ptr %19, i32 1
  store ptr %incdec.ptr14, ptr %cp.addr, align 8
  store i32 %or13, ptr %19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %x.addr, align 4
  %dec15 = add i32 %20, -1
  store i32 %dec15, ptr %x.addr, align 4
  br label %for.cond, !llvm.loop !75

for.end:                                          ; preds = %for.cond
  %21 = load i32, ptr %fromskew.addr, align 4
  %22 = load ptr, ptr %r.addr, align 8
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr inbounds i8, ptr %22, i64 %idx.ext
  store ptr %add.ptr, ptr %r.addr, align 8
  %23 = load i32, ptr %fromskew.addr, align 4
  %24 = load ptr, ptr %g.addr, align 8
  %idx.ext16 = sext i32 %23 to i64
  %add.ptr17 = getelementptr inbounds i8, ptr %24, i64 %idx.ext16
  store ptr %add.ptr17, ptr %g.addr, align 8
  %25 = load i32, ptr %fromskew.addr, align 4
  %26 = load ptr, ptr %b.addr, align 8
  %idx.ext18 = sext i32 %25 to i64
  %add.ptr19 = getelementptr inbounds i8, ptr %26, i64 %idx.ext18
  store ptr %add.ptr19, ptr %b.addr, align 8
  %27 = load i32, ptr %toskew.addr, align 4
  %28 = load ptr, ptr %cp.addr, align 8
  %idx.ext20 = sext i32 %27 to i64
  %add.ptr21 = getelementptr inbounds i32, ptr %28, i64 %idx.ext20
  store ptr %add.ptr21, ptr %cp.addr, align 8
  br label %while.cond, !llvm.loop !76

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBseparate16bittile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %r, ptr noundef %g, ptr noundef %b, ptr noundef %a) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %wr = alloca ptr, align 8
  %wg = alloca ptr, align 8
  %wb = alloca ptr, align 8
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
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
  %4 = load i32, ptr %y.addr, align 4
  %5 = load ptr, ptr %a.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %6 = load i32, ptr %h.addr, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %h.addr, align 4
  %cmp = icmp ugt i32 %6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %x.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %7 = load i32, ptr %x.addr, align 4
  %8 = load i32, ptr %w.addr, align 4
  %cmp1 = icmp ult i32 %7, %8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %wr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %wr, align 8
  %10 = load i16, ptr %9, align 2
  %conv = zext i16 %10 to i32
  %shr = ashr i32 %conv, 8
  %and = and i32 %shr, 255
  %11 = load ptr, ptr %wg, align 8
  %incdec.ptr2 = getelementptr inbounds i16, ptr %11, i32 1
  store ptr %incdec.ptr2, ptr %wg, align 8
  %12 = load i16, ptr %11, align 2
  %conv3 = zext i16 %12 to i32
  %shr4 = ashr i32 %conv3, 8
  %and5 = and i32 %shr4, 255
  %shl = shl i32 %and5, 8
  %or = or i32 %and, %shl
  %13 = load ptr, ptr %wb, align 8
  %incdec.ptr6 = getelementptr inbounds i16, ptr %13, i32 1
  store ptr %incdec.ptr6, ptr %wb, align 8
  %14 = load i16, ptr %13, align 2
  %conv7 = zext i16 %14 to i32
  %shr8 = ashr i32 %conv7, 8
  %and9 = and i32 %shr8, 255
  %shl10 = shl i32 %and9, 16
  %or11 = or i32 %or, %shl10
  %or12 = or i32 %or11, -16777216
  %15 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr13 = getelementptr inbounds i32, ptr %15, i32 1
  store ptr %incdec.ptr13, ptr %cp.addr, align 8
  store i32 %or12, ptr %15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %x.addr, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %x.addr, align 4
  br label %for.cond, !llvm.loop !77

for.end:                                          ; preds = %for.cond
  %17 = load i32, ptr %fromskew.addr, align 4
  %18 = load ptr, ptr %wr, align 8
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds i16, ptr %18, i64 %idx.ext
  store ptr %add.ptr, ptr %wr, align 8
  %19 = load i32, ptr %fromskew.addr, align 4
  %20 = load ptr, ptr %wg, align 8
  %idx.ext14 = sext i32 %19 to i64
  %add.ptr15 = getelementptr inbounds i16, ptr %20, i64 %idx.ext14
  store ptr %add.ptr15, ptr %wg, align 8
  %21 = load i32, ptr %fromskew.addr, align 4
  %22 = load ptr, ptr %wb, align 8
  %idx.ext16 = sext i32 %21 to i64
  %add.ptr17 = getelementptr inbounds i16, ptr %22, i64 %idx.ext16
  store ptr %add.ptr17, ptr %wb, align 8
  %23 = load i32, ptr %toskew.addr, align 4
  %24 = load ptr, ptr %cp.addr, align 8
  %idx.ext18 = sext i32 %23 to i64
  %add.ptr19 = getelementptr inbounds i32, ptr %24, i64 %idx.ext18
  store ptr %add.ptr19, ptr %cp.addr, align 8
  br label %while.cond, !llvm.loop !78

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBAAseparate16bittile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %r, ptr noundef %g, ptr noundef %b, ptr noundef %a) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
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
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
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
  %5 = load i32, ptr %y.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %6 = load i32, ptr %h.addr, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %h.addr, align 4
  %cmp = icmp ugt i32 %6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %x.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %7 = load i32, ptr %x.addr, align 4
  %8 = load i32, ptr %w.addr, align 4
  %cmp1 = icmp ult i32 %7, %8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %wr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %wr, align 8
  %10 = load i16, ptr %9, align 2
  %conv = zext i16 %10 to i32
  %shr = ashr i32 %conv, 8
  %and = and i32 %shr, 255
  %11 = load ptr, ptr %wg, align 8
  %incdec.ptr2 = getelementptr inbounds i16, ptr %11, i32 1
  store ptr %incdec.ptr2, ptr %wg, align 8
  %12 = load i16, ptr %11, align 2
  %conv3 = zext i16 %12 to i32
  %shr4 = ashr i32 %conv3, 8
  %and5 = and i32 %shr4, 255
  %shl = shl i32 %and5, 8
  %or = or i32 %and, %shl
  %13 = load ptr, ptr %wb, align 8
  %incdec.ptr6 = getelementptr inbounds i16, ptr %13, i32 1
  store ptr %incdec.ptr6, ptr %wb, align 8
  %14 = load i16, ptr %13, align 2
  %conv7 = zext i16 %14 to i32
  %shr8 = ashr i32 %conv7, 8
  %and9 = and i32 %shr8, 255
  %shl10 = shl i32 %and9, 16
  %or11 = or i32 %or, %shl10
  %15 = load ptr, ptr %wa, align 8
  %incdec.ptr12 = getelementptr inbounds i16, ptr %15, i32 1
  store ptr %incdec.ptr12, ptr %wa, align 8
  %16 = load i16, ptr %15, align 2
  %conv13 = zext i16 %16 to i32
  %shr14 = ashr i32 %conv13, 8
  %and15 = and i32 %shr14, 255
  %shl16 = shl i32 %and15, 24
  %or17 = or i32 %or11, %shl16
  %17 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr18 = getelementptr inbounds i32, ptr %17, i32 1
  store ptr %incdec.ptr18, ptr %cp.addr, align 8
  store i32 %or17, ptr %17, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %x.addr, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %x.addr, align 4
  br label %for.cond, !llvm.loop !79

for.end:                                          ; preds = %for.cond
  %19 = load i32, ptr %fromskew.addr, align 4
  %20 = load ptr, ptr %wr, align 8
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds i16, ptr %20, i64 %idx.ext
  store ptr %add.ptr, ptr %wr, align 8
  %21 = load i32, ptr %fromskew.addr, align 4
  %22 = load ptr, ptr %wg, align 8
  %idx.ext19 = sext i32 %21 to i64
  %add.ptr20 = getelementptr inbounds i16, ptr %22, i64 %idx.ext19
  store ptr %add.ptr20, ptr %wg, align 8
  %23 = load i32, ptr %fromskew.addr, align 4
  %24 = load ptr, ptr %wb, align 8
  %idx.ext21 = sext i32 %23 to i64
  %add.ptr22 = getelementptr inbounds i16, ptr %24, i64 %idx.ext21
  store ptr %add.ptr22, ptr %wb, align 8
  %25 = load i32, ptr %fromskew.addr, align 4
  %26 = load ptr, ptr %wa, align 8
  %idx.ext23 = sext i32 %25 to i64
  %add.ptr24 = getelementptr inbounds i16, ptr %26, i64 %idx.ext23
  store ptr %add.ptr24, ptr %wa, align 8
  %27 = load i32, ptr %toskew.addr, align 4
  %28 = load ptr, ptr %cp.addr, align 8
  %idx.ext25 = sext i32 %27 to i64
  %add.ptr26 = getelementptr inbounds i32, ptr %28, i64 %idx.ext25
  store ptr %add.ptr26, ptr %cp.addr, align 8
  br label %while.cond, !llvm.loop !80

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putRGBUAseparate16bittile(ptr noundef %img, ptr noundef %cp, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h, i32 noundef %fromskew, i32 noundef %toskew, ptr noundef %r, ptr noundef %g, ptr noundef %b, ptr noundef %a) #0 {
entry:
  %img.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fromskew.addr = alloca i32, align 4
  %toskew.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %wr = alloca ptr, align 8
  %wg = alloca ptr, align 8
  %wb = alloca ptr, align 8
  %wa = alloca ptr, align 8
  %r1 = alloca i32, align 4
  %g2 = alloca i32, align 4
  %b3 = alloca i32, align 4
  %a4 = alloca i32, align 4
  store ptr %img, ptr %img.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %fromskew, ptr %fromskew.addr, align 4
  store i32 %toskew, ptr %toskew.addr, align 4
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
  %5 = load i32, ptr %y.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %6 = load i32, ptr %h.addr, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %h.addr, align 4
  %cmp = icmp ugt i32 %6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, ptr %w.addr, align 4
  store i32 %7, ptr %x.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %8 = load i32, ptr %x.addr, align 4
  %dec5 = add i32 %8, -1
  store i32 %dec5, ptr %x.addr, align 4
  %cmp6 = icmp ugt i32 %8, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %wa, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %wa, align 8
  %10 = load i16, ptr %9, align 2
  %conv = zext i16 %10 to i32
  %shr = ashr i32 %conv, 4
  store i32 %shr, ptr %a4, align 4
  %11 = load ptr, ptr %wr, align 8
  %incdec.ptr7 = getelementptr inbounds i16, ptr %11, i32 1
  store ptr %incdec.ptr7, ptr %wr, align 8
  %12 = load i16, ptr %11, align 2
  %conv8 = zext i16 %12 to i32
  %13 = load i32, ptr %a4, align 4
  %mul = mul i32 %conv8, %13
  %div = udiv i32 %mul, 69375
  store i32 %div, ptr %r1, align 4
  %14 = load ptr, ptr %wg, align 8
  %incdec.ptr9 = getelementptr inbounds i16, ptr %14, i32 1
  store ptr %incdec.ptr9, ptr %wg, align 8
  %15 = load i16, ptr %14, align 2
  %conv10 = zext i16 %15 to i32
  %16 = load i32, ptr %a4, align 4
  %mul11 = mul i32 %conv10, %16
  %div12 = udiv i32 %mul11, 69375
  store i32 %div12, ptr %g2, align 4
  %17 = load ptr, ptr %wb, align 8
  %incdec.ptr13 = getelementptr inbounds i16, ptr %17, i32 1
  store ptr %incdec.ptr13, ptr %wb, align 8
  %18 = load i16, ptr %17, align 2
  %conv14 = zext i16 %18 to i32
  %19 = load i32, ptr %a4, align 4
  %mul15 = mul i32 %conv14, %19
  %div16 = udiv i32 %mul15, 69375
  store i32 %div16, ptr %b3, align 4
  %20 = load i32, ptr %r1, align 4
  %21 = load i32, ptr %g2, align 4
  %shl = shl i32 %21, 8
  %or = or i32 %20, %shl
  %22 = load i32, ptr %b3, align 4
  %shl17 = shl i32 %22, 16
  %or18 = or i32 %or, %shl17
  %23 = load i32, ptr %a4, align 4
  %shl19 = shl i32 %23, 24
  %or20 = or i32 %or18, %shl19
  %24 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr21 = getelementptr inbounds i32, ptr %24, i32 1
  store ptr %incdec.ptr21, ptr %cp.addr, align 8
  store i32 %or20, ptr %24, align 4
  br label %for.cond, !llvm.loop !81

for.end:                                          ; preds = %for.cond
  %25 = load i32, ptr %fromskew.addr, align 4
  %26 = load ptr, ptr %wr, align 8
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds i16, ptr %26, i64 %idx.ext
  store ptr %add.ptr, ptr %wr, align 8
  %27 = load i32, ptr %fromskew.addr, align 4
  %28 = load ptr, ptr %wg, align 8
  %idx.ext22 = sext i32 %27 to i64
  %add.ptr23 = getelementptr inbounds i16, ptr %28, i64 %idx.ext22
  store ptr %add.ptr23, ptr %wg, align 8
  %29 = load i32, ptr %fromskew.addr, align 4
  %30 = load ptr, ptr %wb, align 8
  %idx.ext24 = sext i32 %29 to i64
  %add.ptr25 = getelementptr inbounds i16, ptr %30, i64 %idx.ext24
  store ptr %add.ptr25, ptr %wb, align 8
  %31 = load i32, ptr %fromskew.addr, align 4
  %32 = load ptr, ptr %wa, align 8
  %idx.ext26 = sext i32 %31 to i64
  %add.ptr27 = getelementptr inbounds i16, ptr %32, i64 %idx.ext26
  store ptr %add.ptr27, ptr %wa, align 8
  %33 = load i32, ptr %toskew.addr, align 4
  %34 = load ptr, ptr %cp.addr, align 8
  %idx.ext28 = sext i32 %33 to i64
  %add.ptr29 = getelementptr inbounds i32, ptr %34, i64 %idx.ext28
  store ptr %add.ptr29, ptr %cp.addr, align 8
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
