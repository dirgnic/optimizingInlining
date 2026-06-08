; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2bw/tif_write.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2bw/tif_write.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }

@TIFFWriteScanline.module = internal constant [18 x i8] c"TIFFWriteScanline\00", align 1
@.str = private unnamed_addr constant [56 x i8] c"Can not change \22ImageLength\22 when using separate planes\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%d: Sample out of range, max %d\00", align 1
@TIFFWriteEncodedStrip.module = internal constant [22 x i8] c"TIFFWriteEncodedStrip\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Can not grow image by strips when using separate planes\00", align 1
@TIFFWriteRawStrip.module = internal constant [18 x i8] c"TIFFWriteRawStrip\00", align 1
@TIFFWriteEncodedTile.module = internal constant [21 x i8] c"TIFFWriteEncodedTile\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%s: Tile %lu out of range, max %lu\00", align 1
@TIFFWriteRawTile.module = internal constant [17 x i8] c"TIFFWriteRawTile\00", align 1
@TIFFWriteBufferSetup.module = internal constant [21 x i8] c"TIFFWriteBufferSetup\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"%s: No space for output buffer\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"%s: File not open for writing\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Can not write tiles to a stripped image\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Can not write scanlines to a tiled image\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"%s: Must set \22ImageWidth\22 before writing data\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"%s: Must set \22PlanarConfiguration\22 before writing data\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"%s: No space for %s arrays\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"tile\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"strip\00", align 1
@__func__.TIFFGrowStrips = private unnamed_addr constant [15 x i8] c"TIFFGrowStrips\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"tif_write.c\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"td->td_planarconfig == PLANARCONFIG_CONTIG\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"%s: No space to expand strip arrays\00", align 1
@TIFFAppendToStrip.module = internal constant [18 x i8] c"TIFFAppendToStrip\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"%s: Seek error at scanline %lu\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"%s: Write error at scanline %lu\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFWriteScanline(ptr noundef %tif, ptr noundef %buf, i32 noundef %row, i16 noundef zeroext %sample) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %row.addr = alloca i32, align 4
  %sample.addr = alloca i16, align 2
  %td = alloca ptr, align 8
  %status = alloca i32, align 4
  %imagegrew = alloca i32, align 4
  %strip = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %row, ptr %row.addr, align 4
  store i16 %sample, ptr %sample.addr, align 2
  store i32 0, ptr %imagegrew, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %tif_flags, align 8
  %and = and i32 %1, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFWriteCheck(ptr noundef %2, i32 noundef 0, ptr noundef @TIFFWriteScanline.module)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_flags2 = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %tif_flags2, align 8
  %and3 = and i32 %4, 16
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.end9, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.end
  %5 = load ptr, ptr %tif.addr, align 8
  %call6 = call i32 @TIFFWriteBufferSetup(ptr noundef %5, ptr noundef null, i32 noundef -1)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %lor.lhs.false5
  store i32 -1, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %lor.lhs.false5, %if.end
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %7 = load i32, ptr %row.addr, align 4
  %8 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %td_imagelength, align 4
  %cmp = icmp uge i32 %7, %9
  br i1 %cmp, label %if.then10, label %if.end16

if.then10:                                        ; preds = %if.end9
  %10 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i32 0, i32 24
  %11 = load i16, ptr %td_planarconfig, align 2
  %conv = zext i16 %11 to i32
  %cmp11 = icmp eq i32 %conv, 2
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then10
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %tif_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %13, ptr noundef @.str)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.then10
  %14 = load i32, ptr %row.addr, align 4
  %add = add i32 %14, 1
  %15 = load ptr, ptr %td, align 8
  %td_imagelength15 = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i32 0, i32 2
  store i32 %add, ptr %td_imagelength15, align 4
  store i32 1, ptr %imagegrew, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %if.end9
  %16 = load ptr, ptr %td, align 8
  %td_planarconfig17 = getelementptr inbounds %struct.TIFFDirectory, ptr %16, i32 0, i32 24
  %17 = load i16, ptr %td_planarconfig17, align 2
  %conv18 = zext i16 %17 to i32
  %cmp19 = icmp eq i32 %conv18, 2
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end16
  %18 = load i16, ptr %sample.addr, align 2
  %conv22 = zext i16 %18 to i32
  %19 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %19, i32 0, i32 15
  %20 = load i16, ptr %td_samplesperpixel, align 2
  %conv23 = zext i16 %20 to i32
  %cmp24 = icmp sge i32 %conv22, %conv23
  br i1 %cmp24, label %if.then26, label %if.end31

if.then26:                                        ; preds = %if.then21
  %21 = load ptr, ptr %tif.addr, align 8
  %tif_name27 = getelementptr inbounds %struct.tiff, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %tif_name27, align 8
  %23 = load i16, ptr %sample.addr, align 2
  %conv28 = zext i16 %23 to i32
  %24 = load ptr, ptr %td, align 8
  %td_samplesperpixel29 = getelementptr inbounds %struct.TIFFDirectory, ptr %24, i32 0, i32 15
  %25 = load i16, ptr %td_samplesperpixel29, align 2
  %conv30 = zext i16 %25 to i32
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %22, ptr noundef @.str.1, i32 noundef %conv28, i32 noundef %conv30)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.then21
  %26 = load i16, ptr %sample.addr, align 2
  %conv32 = zext i16 %26 to i32
  %27 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %27, i32 0, i32 42
  %28 = load i32, ptr %td_stripsperimage, align 8
  %mul = mul i32 %conv32, %28
  %29 = load i32, ptr %row.addr, align 4
  %30 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %30, i32 0, i32 16
  %31 = load i32, ptr %td_rowsperstrip, align 4
  %div = udiv i32 %29, %31
  %add33 = add i32 %mul, %div
  store i32 %add33, ptr %strip, align 4
  br label %if.end36

if.else:                                          ; preds = %if.end16
  %32 = load i32, ptr %row.addr, align 4
  %33 = load ptr, ptr %td, align 8
  %td_rowsperstrip34 = getelementptr inbounds %struct.TIFFDirectory, ptr %33, i32 0, i32 16
  %34 = load i32, ptr %td_rowsperstrip34, align 4
  %div35 = udiv i32 %32, %34
  store i32 %div35, ptr %strip, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.end31
  %35 = load i32, ptr %strip, align 4
  %36 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %36, i32 0, i32 13
  %37 = load i32, ptr %tif_curstrip, align 8
  %cmp37 = icmp ne i32 %35, %37
  br i1 %cmp37, label %if.then39, label %if.end77

if.then39:                                        ; preds = %if.end36
  %38 = load ptr, ptr %tif.addr, align 8
  %call40 = call i32 @TIFFFlushData(ptr noundef %38)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end43, label %if.then42

if.then42:                                        ; preds = %if.then39
  store i32 -1, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %if.then39
  %39 = load i32, ptr %strip, align 4
  %40 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip44 = getelementptr inbounds %struct.tiff, ptr %40, i32 0, i32 13
  store i32 %39, ptr %tif_curstrip44, align 8
  %41 = load i32, ptr %strip, align 4
  %42 = load ptr, ptr %td, align 8
  %td_stripsperimage45 = getelementptr inbounds %struct.TIFFDirectory, ptr %42, i32 0, i32 42
  %43 = load i32, ptr %td_stripsperimage45, align 8
  %cmp46 = icmp uge i32 %41, %43
  br i1 %cmp46, label %land.lhs.true, label %if.end56

land.lhs.true:                                    ; preds = %if.end43
  %44 = load i32, ptr %imagegrew, align 4
  %tobool48 = icmp ne i32 %44, 0
  br i1 %tobool48, label %if.then49, label %if.end56

if.then49:                                        ; preds = %land.lhs.true
  %45 = load ptr, ptr %td, align 8
  %td_imagelength50 = getelementptr inbounds %struct.TIFFDirectory, ptr %45, i32 0, i32 2
  %46 = load i32, ptr %td_imagelength50, align 4
  %47 = load ptr, ptr %td, align 8
  %td_rowsperstrip51 = getelementptr inbounds %struct.TIFFDirectory, ptr %47, i32 0, i32 16
  %48 = load i32, ptr %td_rowsperstrip51, align 4
  %sub = sub i32 %48, 1
  %add52 = add i32 %46, %sub
  %49 = load ptr, ptr %td, align 8
  %td_rowsperstrip53 = getelementptr inbounds %struct.TIFFDirectory, ptr %49, i32 0, i32 16
  %50 = load i32, ptr %td_rowsperstrip53, align 4
  %div54 = udiv i32 %add52, %50
  %51 = load ptr, ptr %td, align 8
  %td_stripsperimage55 = getelementptr inbounds %struct.TIFFDirectory, ptr %51, i32 0, i32 42
  store i32 %div54, ptr %td_stripsperimage55, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then49, %land.lhs.true, %if.end43
  %52 = load i32, ptr %strip, align 4
  %53 = load ptr, ptr %td, align 8
  %td_stripsperimage57 = getelementptr inbounds %struct.TIFFDirectory, ptr %53, i32 0, i32 42
  %54 = load i32, ptr %td_stripsperimage57, align 8
  %rem = urem i32 %52, %54
  %55 = load ptr, ptr %td, align 8
  %td_rowsperstrip58 = getelementptr inbounds %struct.TIFFDirectory, ptr %55, i32 0, i32 16
  %56 = load i32, ptr %td_rowsperstrip58, align 4
  %mul59 = mul i32 %rem, %56
  %57 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %57, i32 0, i32 11
  store i32 %mul59, ptr %tif_row, align 8
  %58 = load ptr, ptr %tif.addr, align 8
  %tif_flags60 = getelementptr inbounds %struct.tiff, ptr %58, i32 0, i32 3
  %59 = load i32, ptr %tif_flags60, align 8
  %and61 = and i32 %59, 32
  %cmp62 = icmp eq i32 %and61, 0
  br i1 %cmp62, label %if.then64, label %if.end70

if.then64:                                        ; preds = %if.end56
  %60 = load ptr, ptr %tif.addr, align 8
  %tif_setupencode = getelementptr inbounds %struct.tiff, ptr %60, i32 0, i32 23
  %61 = load ptr, ptr %tif_setupencode, align 8
  %62 = load ptr, ptr %tif.addr, align 8
  %call65 = call i32 %61(ptr noundef %62)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.end68, label %if.then67

if.then67:                                        ; preds = %if.then64
  store i32 -1, ptr %retval, align 4
  br label %return

if.end68:                                         ; preds = %if.then64
  %63 = load ptr, ptr %tif.addr, align 8
  %tif_flags69 = getelementptr inbounds %struct.tiff, ptr %63, i32 0, i32 3
  %64 = load i32, ptr %tif_flags69, align 8
  %or = or i32 %64, 32
  store i32 %or, ptr %tif_flags69, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.end68, %if.end56
  %65 = load ptr, ptr %tif.addr, align 8
  %tif_preencode = getelementptr inbounds %struct.tiff, ptr %65, i32 0, i32 24
  %66 = load ptr, ptr %tif_preencode, align 8
  %67 = load ptr, ptr %tif.addr, align 8
  %68 = load i16, ptr %sample.addr, align 2
  %call71 = call i32 %66(ptr noundef %67, i16 noundef zeroext %68)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.end74, label %if.then73

if.then73:                                        ; preds = %if.end70
  store i32 -1, ptr %retval, align 4
  br label %return

if.end74:                                         ; preds = %if.end70
  %69 = load ptr, ptr %tif.addr, align 8
  %tif_flags75 = getelementptr inbounds %struct.tiff, ptr %69, i32 0, i32 3
  %70 = load i32, ptr %tif_flags75, align 8
  %or76 = or i32 %70, 4096
  store i32 %or76, ptr %tif_flags75, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.end74, %if.end36
  %71 = load i32, ptr %strip, align 4
  %72 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %72, i32 0, i32 43
  %73 = load i32, ptr %td_nstrips, align 4
  %cmp78 = icmp uge i32 %71, %73
  br i1 %cmp78, label %land.lhs.true80, label %if.end84

land.lhs.true80:                                  ; preds = %if.end77
  %74 = load ptr, ptr %tif.addr, align 8
  %call81 = call i32 @TIFFGrowStrips(ptr noundef %74, i32 noundef 1, ptr noundef @TIFFWriteScanline.module)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.end84, label %if.then83

if.then83:                                        ; preds = %land.lhs.true80
  store i32 -1, ptr %retval, align 4
  br label %return

if.end84:                                         ; preds = %land.lhs.true80, %if.end77
  %75 = load i32, ptr %row.addr, align 4
  %76 = load ptr, ptr %tif.addr, align 8
  %tif_row85 = getelementptr inbounds %struct.tiff, ptr %76, i32 0, i32 11
  %77 = load i32, ptr %tif_row85, align 8
  %cmp86 = icmp ne i32 %75, %77
  br i1 %cmp86, label %if.then88, label %if.end106

if.then88:                                        ; preds = %if.end84
  %78 = load i32, ptr %row.addr, align 4
  %79 = load ptr, ptr %tif.addr, align 8
  %tif_row89 = getelementptr inbounds %struct.tiff, ptr %79, i32 0, i32 11
  %80 = load i32, ptr %tif_row89, align 8
  %cmp90 = icmp ult i32 %78, %80
  br i1 %cmp90, label %if.then92, label %if.end98

if.then92:                                        ; preds = %if.then88
  %81 = load i32, ptr %strip, align 4
  %82 = load ptr, ptr %td, align 8
  %td_stripsperimage93 = getelementptr inbounds %struct.TIFFDirectory, ptr %82, i32 0, i32 42
  %83 = load i32, ptr %td_stripsperimage93, align 8
  %rem94 = urem i32 %81, %83
  %84 = load ptr, ptr %td, align 8
  %td_rowsperstrip95 = getelementptr inbounds %struct.TIFFDirectory, ptr %84, i32 0, i32 16
  %85 = load i32, ptr %td_rowsperstrip95, align 4
  %mul96 = mul i32 %rem94, %85
  %86 = load ptr, ptr %tif.addr, align 8
  %tif_row97 = getelementptr inbounds %struct.tiff, ptr %86, i32 0, i32 11
  store i32 %mul96, ptr %tif_row97, align 8
  %87 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %87, i32 0, i32 40
  %88 = load ptr, ptr %tif_rawdata, align 8
  %89 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %89, i32 0, i32 42
  store ptr %88, ptr %tif_rawcp, align 8
  br label %if.end98

if.end98:                                         ; preds = %if.then92, %if.then88
  %90 = load ptr, ptr %tif.addr, align 8
  %tif_seek = getelementptr inbounds %struct.tiff, ptr %90, i32 0, i32 33
  %91 = load ptr, ptr %tif_seek, align 8
  %92 = load ptr, ptr %tif.addr, align 8
  %93 = load i32, ptr %row.addr, align 4
  %94 = load ptr, ptr %tif.addr, align 8
  %tif_row99 = getelementptr inbounds %struct.tiff, ptr %94, i32 0, i32 11
  %95 = load i32, ptr %tif_row99, align 8
  %sub100 = sub i32 %93, %95
  %call101 = call i32 %91(ptr noundef %92, i32 noundef %sub100)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.end104, label %if.then103

if.then103:                                       ; preds = %if.end98
  store i32 -1, ptr %retval, align 4
  br label %return

if.end104:                                        ; preds = %if.end98
  %96 = load i32, ptr %row.addr, align 4
  %97 = load ptr, ptr %tif.addr, align 8
  %tif_row105 = getelementptr inbounds %struct.tiff, ptr %97, i32 0, i32 11
  store i32 %96, ptr %tif_row105, align 8
  br label %if.end106

if.end106:                                        ; preds = %if.end104, %if.end84
  %98 = load ptr, ptr %tif.addr, align 8
  %tif_encoderow = getelementptr inbounds %struct.tiff, ptr %98, i32 0, i32 27
  %99 = load ptr, ptr %tif_encoderow, align 8
  %100 = load ptr, ptr %tif.addr, align 8
  %101 = load ptr, ptr %buf.addr, align 8
  %102 = load ptr, ptr %tif.addr, align 8
  %tif_scanlinesize = getelementptr inbounds %struct.tiff, ptr %102, i32 0, i32 38
  %103 = load i32, ptr %tif_scanlinesize, align 8
  %104 = load i16, ptr %sample.addr, align 2
  %call107 = call i32 %99(ptr noundef %100, ptr noundef %101, i32 noundef %103, i16 noundef zeroext %104)
  store i32 %call107, ptr %status, align 4
  %105 = load ptr, ptr %tif.addr, align 8
  %tif_row108 = getelementptr inbounds %struct.tiff, ptr %105, i32 0, i32 11
  %106 = load i32, ptr %tif_row108, align 8
  %inc = add i32 %106, 1
  store i32 %inc, ptr %tif_row108, align 8
  %107 = load i32, ptr %status, align 4
  store i32 %107, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end106, %if.then103, %if.then83, %if.then73, %if.then67, %if.then42, %if.then26, %if.then13, %if.then8, %if.then
  %108 = load i32, ptr %retval, align 4
  ret i32 %108
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @TIFFWriteCheck(ptr noundef %tif, i32 noundef %tiles, ptr noundef %module) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tiles.addr = alloca i32, align 4
  %module.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %tiles, ptr %tiles.addr, align 4
  store ptr %module, ptr %module.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %tif_mode, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %module.addr, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %tif_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %2, ptr noundef @.str.5, ptr noundef %4)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %tiles.addr, align 4
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %tif_flags, align 8
  %and = and i32 %7, 1024
  %cmp1 = icmp ne i32 %and, 0
  %conv = zext i1 %cmp1 to i32
  %xor = xor i32 %5, %conv
  %tobool = icmp ne i32 %xor, 0
  br i1 %tobool, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_name3 = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %tif_name3, align 8
  %10 = load i32, ptr %tiles.addr, align 4
  %tobool4 = icmp ne i32 %10, 0
  %11 = zext i1 %tobool4 to i64
  %cond = select i1 %tobool4, ptr @.str.6, ptr @.str.7
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %9, ptr noundef %cond)
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %12, i32 0, i32 6
  %td_fieldsset = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x i64], ptr %td_fieldsset, i64 0, i64 0
  %13 = load i64, ptr %arrayidx, align 8
  %and6 = and i64 %13, 2
  %tobool7 = icmp ne i64 %and6, 0
  br i1 %tobool7, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end5
  %14 = load ptr, ptr %module.addr, align 8
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_name9 = getelementptr inbounds %struct.tiff, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %tif_name9, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %14, ptr noundef @.str.8, ptr noundef %16)
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end5
  %17 = load ptr, ptr %tif.addr, align 8
  %tif_dir11 = getelementptr inbounds %struct.tiff, ptr %17, i32 0, i32 6
  %td_fieldsset12 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir11, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [3 x i64], ptr %td_fieldsset12, i64 0, i64 0
  %18 = load i64, ptr %arrayidx13, align 8
  %and14 = and i64 %18, 1048576
  %tobool15 = icmp ne i64 %and14, 0
  br i1 %tobool15, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end10
  %19 = load ptr, ptr %module.addr, align 8
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_name17 = getelementptr inbounds %struct.tiff, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %tif_name17, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %19, ptr noundef @.str.9, ptr noundef %21)
  store i32 0, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end10
  %22 = load ptr, ptr %tif.addr, align 8
  %tif_dir19 = getelementptr inbounds %struct.tiff, ptr %22, i32 0, i32 6
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir19, i32 0, i32 44
  %23 = load ptr, ptr %td_stripoffset, align 8
  %cmp20 = icmp eq ptr %23, null
  br i1 %cmp20, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %if.end18
  %24 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFSetupStrips(ptr noundef %24)
  %tobool22 = icmp ne i32 %call, 0
  br i1 %tobool22, label %if.end31, label %if.then23

if.then23:                                        ; preds = %land.lhs.true
  %25 = load ptr, ptr %tif.addr, align 8
  %tif_dir24 = getelementptr inbounds %struct.tiff, ptr %25, i32 0, i32 6
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir24, i32 0, i32 43
  store i32 0, ptr %td_nstrips, align 4
  %26 = load ptr, ptr %module.addr, align 8
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_name25 = getelementptr inbounds %struct.tiff, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %tif_name25, align 8
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_flags26 = getelementptr inbounds %struct.tiff, ptr %29, i32 0, i32 3
  %30 = load i32, ptr %tif_flags26, align 8
  %and27 = and i32 %30, 1024
  %cmp28 = icmp ne i32 %and27, 0
  %31 = zext i1 %cmp28 to i64
  %cond30 = select i1 %cmp28, ptr @.str.11, ptr @.str.12
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %26, ptr noundef @.str.10, ptr noundef %28, ptr noundef %cond30)
  store i32 0, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %land.lhs.true, %if.end18
  %32 = load ptr, ptr %tif.addr, align 8
  %call32 = call i32 @TIFFTileSize(ptr noundef %32)
  %33 = load ptr, ptr %tif.addr, align 8
  %tif_tilesize = getelementptr inbounds %struct.tiff, ptr %33, i32 0, i32 20
  store i32 %call32, ptr %tif_tilesize, align 4
  %34 = load ptr, ptr %tif.addr, align 8
  %call33 = call i32 @TIFFScanlineSize(ptr noundef %34)
  %35 = load ptr, ptr %tif.addr, align 8
  %tif_scanlinesize = getelementptr inbounds %struct.tiff, ptr %35, i32 0, i32 38
  store i32 %call33, ptr %tif_scanlinesize, align 8
  %36 = load ptr, ptr %tif.addr, align 8
  %tif_flags34 = getelementptr inbounds %struct.tiff, ptr %36, i32 0, i32 3
  %37 = load i32, ptr %tif_flags34, align 8
  %or = or i32 %37, 64
  store i32 %or, ptr %tif_flags34, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.then23, %if.then16, %if.then8, %if.then2, %if.then
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFWriteBufferSetup(ptr noundef %tif, ptr noundef %bp, i32 noundef %size) #0 {
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
  br i1 %tobool, label %if.then, label %if.end7

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
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_flags4 = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %tif_flags4, align 8
  %and5 = and i32 %7, -513
  store i32 %and5, ptr %tif_flags4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata6 = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 40
  store ptr null, ptr %tif_rawdata6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  %9 = load i32, ptr %size.addr, align 4
  %cmp = icmp eq i32 %9, -1
  br i1 %cmp, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.end7
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_flags9 = getelementptr inbounds %struct.tiff, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %tif_flags9, align 8
  %and10 = and i32 %11, 1024
  %cmp11 = icmp ne i32 %and10, 0
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then8
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_tilesize = getelementptr inbounds %struct.tiff, ptr %12, i32 0, i32 20
  %13 = load i32, ptr %tif_tilesize, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then8
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_scanlinesize = getelementptr inbounds %struct.tiff, ptr %14, i32 0, i32 38
  %15 = load i32, ptr %tif_scanlinesize, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %15, %cond.false ]
  store i32 %cond, ptr %size.addr, align 4
  %16 = load i32, ptr %size.addr, align 4
  %cmp12 = icmp slt i32 %16, 8192
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %cond.end
  store i32 8192, ptr %size.addr, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %cond.end
  store ptr null, ptr %bp.addr, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end7
  %17 = load ptr, ptr %bp.addr, align 8
  %cmp16 = icmp eq ptr %17, null
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end15
  %18 = load i32, ptr %size.addr, align 4
  %call = call ptr @_TIFFmalloc(i32 noundef %18)
  store ptr %call, ptr %bp.addr, align 8
  %19 = load ptr, ptr %bp.addr, align 8
  %cmp18 = icmp eq ptr %19, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then17
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %tif_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFWriteBufferSetup.module, ptr noundef @.str.4, ptr noundef %21)
  store i32 0, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.then17
  %22 = load ptr, ptr %tif.addr, align 8
  %tif_flags21 = getelementptr inbounds %struct.tiff, ptr %22, i32 0, i32 3
  %23 = load i32, ptr %tif_flags21, align 8
  %or = or i32 %23, 512
  store i32 %or, ptr %tif_flags21, align 8
  br label %if.end24

if.else:                                          ; preds = %if.end15
  %24 = load ptr, ptr %tif.addr, align 8
  %tif_flags22 = getelementptr inbounds %struct.tiff, ptr %24, i32 0, i32 3
  %25 = load i32, ptr %tif_flags22, align 8
  %and23 = and i32 %25, -513
  store i32 %and23, ptr %tif_flags22, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end20
  %26 = load ptr, ptr %bp.addr, align 8
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata25 = getelementptr inbounds %struct.tiff, ptr %27, i32 0, i32 40
  store ptr %26, ptr %tif_rawdata25, align 8
  %28 = load i32, ptr %size.addr, align 4
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %29, i32 0, i32 41
  store i32 %28, ptr %tif_rawdatasize, align 8
  %30 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %30, i32 0, i32 43
  store i32 0, ptr %tif_rawcc, align 8
  %31 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata26 = getelementptr inbounds %struct.tiff, ptr %31, i32 0, i32 40
  %32 = load ptr, ptr %tif_rawdata26, align 8
  %33 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %33, i32 0, i32 42
  store ptr %32, ptr %tif_rawcp, align 8
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_flags27 = getelementptr inbounds %struct.tiff, ptr %34, i32 0, i32 3
  %35 = load i32, ptr %tif_flags27, align 8
  %or28 = or i32 %35, 16
  store i32 %or28, ptr %tif_flags27, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end24, %if.then19
  %36 = load i32, ptr %retval, align 4
  ret i32 %36
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

declare i32 @TIFFFlushData(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @TIFFGrowStrips(ptr noundef %tif, i32 noundef %delta, ptr noundef %module) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %delta.addr = alloca i32, align 4
  %module.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %delta, ptr %delta.addr, align 4
  store ptr %module, ptr %module.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 24
  %2 = load i16, ptr %td_planarconfig, align 2
  %conv = zext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 1
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv2 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.TIFFGrowStrips, ptr noundef @.str.13, i32 noundef 570, ptr noundef @.str.14) #3
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  %4 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %4, i32 0, i32 44
  %5 = load ptr, ptr %td_stripoffset, align 8
  %6 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i32 0, i32 43
  %7 = load i32, ptr %td_nstrips, align 4
  %8 = load i32, ptr %delta.addr, align 4
  %add = add i32 %7, %8
  %conv3 = zext i32 %add to i64
  %mul = mul i64 %conv3, 4
  %conv4 = trunc i64 %mul to i32
  %call = call ptr @_TIFFrealloc(ptr noundef %5, i32 noundef %conv4)
  %9 = load ptr, ptr %td, align 8
  %td_stripoffset5 = getelementptr inbounds %struct.TIFFDirectory, ptr %9, i32 0, i32 44
  store ptr %call, ptr %td_stripoffset5, align 8
  %10 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i32 0, i32 45
  %11 = load ptr, ptr %td_stripbytecount, align 8
  %12 = load ptr, ptr %td, align 8
  %td_nstrips6 = getelementptr inbounds %struct.TIFFDirectory, ptr %12, i32 0, i32 43
  %13 = load i32, ptr %td_nstrips6, align 4
  %14 = load i32, ptr %delta.addr, align 4
  %add7 = add i32 %13, %14
  %conv8 = zext i32 %add7 to i64
  %mul9 = mul i64 %conv8, 4
  %conv10 = trunc i64 %mul9 to i32
  %call11 = call ptr @_TIFFrealloc(ptr noundef %11, i32 noundef %conv10)
  %15 = load ptr, ptr %td, align 8
  %td_stripbytecount12 = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i32 0, i32 45
  store ptr %call11, ptr %td_stripbytecount12, align 8
  %16 = load ptr, ptr %td, align 8
  %td_stripoffset13 = getelementptr inbounds %struct.TIFFDirectory, ptr %16, i32 0, i32 44
  %17 = load ptr, ptr %td_stripoffset13, align 8
  %cmp14 = icmp eq ptr %17, null
  br i1 %cmp14, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %18 = load ptr, ptr %td, align 8
  %td_stripbytecount16 = getelementptr inbounds %struct.TIFFDirectory, ptr %18, i32 0, i32 45
  %19 = load ptr, ptr %td_stripbytecount16, align 8
  %cmp17 = icmp eq ptr %19, null
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  %20 = load ptr, ptr %td, align 8
  %td_nstrips19 = getelementptr inbounds %struct.TIFFDirectory, ptr %20, i32 0, i32 43
  store i32 0, ptr %td_nstrips19, align 4
  %21 = load ptr, ptr %module.addr, align 8
  %22 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %tif_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %21, ptr noundef @.str.15, ptr noundef %23)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %24 = load ptr, ptr %td, align 8
  %td_stripoffset20 = getelementptr inbounds %struct.TIFFDirectory, ptr %24, i32 0, i32 44
  %25 = load ptr, ptr %td_stripoffset20, align 8
  %26 = load ptr, ptr %td, align 8
  %td_nstrips21 = getelementptr inbounds %struct.TIFFDirectory, ptr %26, i32 0, i32 43
  %27 = load i32, ptr %td_nstrips21, align 4
  %idx.ext = zext i32 %27 to i64
  %add.ptr = getelementptr inbounds i32, ptr %25, i64 %idx.ext
  %28 = load i32, ptr %delta.addr, align 4
  %conv22 = sext i32 %28 to i64
  %mul23 = mul i64 %conv22, 4
  %conv24 = trunc i64 %mul23 to i32
  call void @_TIFFmemset(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %conv24)
  %29 = load ptr, ptr %td, align 8
  %td_stripbytecount25 = getelementptr inbounds %struct.TIFFDirectory, ptr %29, i32 0, i32 45
  %30 = load ptr, ptr %td_stripbytecount25, align 8
  %31 = load ptr, ptr %td, align 8
  %td_nstrips26 = getelementptr inbounds %struct.TIFFDirectory, ptr %31, i32 0, i32 43
  %32 = load i32, ptr %td_nstrips26, align 4
  %idx.ext27 = zext i32 %32 to i64
  %add.ptr28 = getelementptr inbounds i32, ptr %30, i64 %idx.ext27
  %33 = load i32, ptr %delta.addr, align 4
  %conv29 = sext i32 %33 to i64
  %mul30 = mul i64 %conv29, 4
  %conv31 = trunc i64 %mul30 to i32
  call void @_TIFFmemset(ptr noundef %add.ptr28, i32 noundef 0, i32 noundef %conv31)
  %34 = load i32, ptr %delta.addr, align 4
  %35 = load ptr, ptr %td, align 8
  %td_nstrips32 = getelementptr inbounds %struct.TIFFDirectory, ptr %35, i32 0, i32 43
  %36 = load i32, ptr %td_nstrips32, align 4
  %add33 = add i32 %36, %34
  store i32 %add33, ptr %td_nstrips32, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %37 = load i32, ptr %retval, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFWriteEncodedStrip(ptr noundef %tif, i32 noundef %strip, ptr noundef %data, i32 noundef %cc) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %strip.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %td = alloca ptr, align 8
  %sample = alloca i16, align 2
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %strip, ptr %strip.addr, align 4
  store ptr %data, ptr %data.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %tif_flags, align 8
  %and = and i32 %2, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFWriteCheck(ptr noundef %3, i32 noundef 0, ptr noundef @TIFFWriteEncodedStrip.module)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %4 = load i32, ptr %strip.addr, align 4
  %5 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i32 0, i32 43
  %6 = load i32, ptr %td_nstrips, align 4
  %cmp = icmp uge i32 %4, %6
  br i1 %cmp, label %if.then2, label %if.end12

if.then2:                                         ; preds = %if.end
  %7 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i32 0, i32 24
  %8 = load i16, ptr %td_planarconfig, align 2
  %conv = zext i16 %8 to i32
  %cmp3 = icmp eq i32 %conv, 2
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then2
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %tif_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %10, ptr noundef @.str.2)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.then2
  %11 = load ptr, ptr %tif.addr, align 8
  %call7 = call i32 @TIFFGrowStrips(ptr noundef %11, i32 noundef 1, ptr noundef @TIFFWriteEncodedStrip.module)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  store i32 -1, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end6
  %12 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %12, i32 0, i32 2
  %13 = load i32, ptr %td_imagelength, align 4
  %14 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %14, i32 0, i32 16
  %15 = load i32, ptr %td_rowsperstrip, align 4
  %sub = sub i32 %15, 1
  %add = add i32 %13, %sub
  %16 = load ptr, ptr %td, align 8
  %td_rowsperstrip11 = getelementptr inbounds %struct.TIFFDirectory, ptr %16, i32 0, i32 16
  %17 = load i32, ptr %td_rowsperstrip11, align 4
  %div = udiv i32 %add, %17
  %18 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %18, i32 0, i32 42
  store i32 %div, ptr %td_stripsperimage, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %if.end
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_flags13 = getelementptr inbounds %struct.tiff, ptr %19, i32 0, i32 3
  %20 = load i32, ptr %tif_flags13, align 8
  %and14 = and i32 %20, 16
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.end20, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.end12
  %21 = load ptr, ptr %tif.addr, align 8
  %call17 = call i32 @TIFFWriteBufferSetup(ptr noundef %21, ptr noundef null, i32 noundef -1)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end20, label %if.then19

if.then19:                                        ; preds = %lor.lhs.false16
  store i32 -1, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %lor.lhs.false16, %if.end12
  %22 = load i32, ptr %strip.addr, align 4
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %23, i32 0, i32 13
  store i32 %22, ptr %tif_curstrip, align 8
  %24 = load i32, ptr %strip.addr, align 4
  %25 = load ptr, ptr %td, align 8
  %td_stripsperimage21 = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i32 0, i32 42
  %26 = load i32, ptr %td_stripsperimage21, align 8
  %rem = urem i32 %24, %26
  %27 = load ptr, ptr %td, align 8
  %td_rowsperstrip22 = getelementptr inbounds %struct.TIFFDirectory, ptr %27, i32 0, i32 16
  %28 = load i32, ptr %td_rowsperstrip22, align 4
  %mul = mul i32 %rem, %28
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %29, i32 0, i32 11
  store i32 %mul, ptr %tif_row, align 8
  %30 = load ptr, ptr %tif.addr, align 8
  %tif_flags23 = getelementptr inbounds %struct.tiff, ptr %30, i32 0, i32 3
  %31 = load i32, ptr %tif_flags23, align 8
  %and24 = and i32 %31, 32
  %cmp25 = icmp eq i32 %and24, 0
  br i1 %cmp25, label %if.then27, label %if.end33

if.then27:                                        ; preds = %if.end20
  %32 = load ptr, ptr %tif.addr, align 8
  %tif_setupencode = getelementptr inbounds %struct.tiff, ptr %32, i32 0, i32 23
  %33 = load ptr, ptr %tif_setupencode, align 8
  %34 = load ptr, ptr %tif.addr, align 8
  %call28 = call i32 %33(ptr noundef %34)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.then27
  store i32 -1, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.then27
  %35 = load ptr, ptr %tif.addr, align 8
  %tif_flags32 = getelementptr inbounds %struct.tiff, ptr %35, i32 0, i32 3
  %36 = load i32, ptr %tif_flags32, align 8
  %or = or i32 %36, 32
  store i32 %or, ptr %tif_flags32, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.end31, %if.end20
  %37 = load ptr, ptr %tif.addr, align 8
  %tif_flags34 = getelementptr inbounds %struct.tiff, ptr %37, i32 0, i32 3
  %38 = load i32, ptr %tif_flags34, align 8
  %and35 = and i32 %38, -4097
  store i32 %and35, ptr %tif_flags34, align 8
  %39 = load i32, ptr %strip.addr, align 4
  %40 = load ptr, ptr %td, align 8
  %td_stripsperimage36 = getelementptr inbounds %struct.TIFFDirectory, ptr %40, i32 0, i32 42
  %41 = load i32, ptr %td_stripsperimage36, align 8
  %div37 = udiv i32 %39, %41
  %conv38 = trunc i32 %div37 to i16
  store i16 %conv38, ptr %sample, align 2
  %42 = load ptr, ptr %tif.addr, align 8
  %tif_preencode = getelementptr inbounds %struct.tiff, ptr %42, i32 0, i32 24
  %43 = load ptr, ptr %tif_preencode, align 8
  %44 = load ptr, ptr %tif.addr, align 8
  %45 = load i16, ptr %sample, align 2
  %call39 = call i32 %43(ptr noundef %44, i16 noundef zeroext %45)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.end33
  store i32 -1, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.end33
  %46 = load ptr, ptr %tif.addr, align 8
  %tif_encodestrip = getelementptr inbounds %struct.tiff, ptr %46, i32 0, i32 29
  %47 = load ptr, ptr %tif_encodestrip, align 8
  %48 = load ptr, ptr %tif.addr, align 8
  %49 = load ptr, ptr %data.addr, align 8
  %50 = load i32, ptr %cc.addr, align 4
  %51 = load i16, ptr %sample, align 2
  %call43 = call i32 %47(ptr noundef %48, ptr noundef %49, i32 noundef %50, i16 noundef zeroext %51)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end42
  store i32 0, ptr %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.end42
  %52 = load ptr, ptr %tif.addr, align 8
  %tif_postencode = getelementptr inbounds %struct.tiff, ptr %52, i32 0, i32 25
  %53 = load ptr, ptr %tif_postencode, align 8
  %54 = load ptr, ptr %tif.addr, align 8
  %call47 = call i32 %53(ptr noundef %54)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.end46
  store i32 -1, ptr %retval, align 4
  br label %return

if.end50:                                         ; preds = %if.end46
  %55 = load ptr, ptr %tif.addr, align 8
  %tif_flags51 = getelementptr inbounds %struct.tiff, ptr %55, i32 0, i32 3
  %56 = load i32, ptr %tif_flags51, align 8
  %57 = load ptr, ptr %td, align 8
  %td_fillorder = getelementptr inbounds %struct.TIFFDirectory, ptr %57, i32 0, i32 13
  %58 = load i16, ptr %td_fillorder, align 2
  %conv52 = zext i16 %58 to i32
  %and53 = and i32 %56, %conv52
  %cmp54 = icmp ne i32 %and53, 0
  br i1 %cmp54, label %if.end62, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end50
  %59 = load ptr, ptr %tif.addr, align 8
  %tif_flags56 = getelementptr inbounds %struct.tiff, ptr %59, i32 0, i32 3
  %60 = load i32, ptr %tif_flags56, align 8
  %and57 = and i32 %60, 256
  %cmp58 = icmp eq i32 %and57, 0
  br i1 %cmp58, label %if.then60, label %if.end62

if.then60:                                        ; preds = %land.lhs.true
  %61 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %61, i32 0, i32 40
  %62 = load ptr, ptr %tif_rawdata, align 8
  %63 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %63, i32 0, i32 43
  %64 = load i32, ptr %tif_rawcc, align 8
  %conv61 = sext i32 %64 to i64
  call void @TIFFReverseBits(ptr noundef %62, i64 noundef %conv61)
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %land.lhs.true, %if.end50
  %65 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc63 = getelementptr inbounds %struct.tiff, ptr %65, i32 0, i32 43
  %66 = load i32, ptr %tif_rawcc63, align 8
  %cmp64 = icmp sgt i32 %66, 0
  br i1 %cmp64, label %land.lhs.true66, label %if.end72

land.lhs.true66:                                  ; preds = %if.end62
  %67 = load ptr, ptr %tif.addr, align 8
  %68 = load i32, ptr %strip.addr, align 4
  %69 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata67 = getelementptr inbounds %struct.tiff, ptr %69, i32 0, i32 40
  %70 = load ptr, ptr %tif_rawdata67, align 8
  %71 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc68 = getelementptr inbounds %struct.tiff, ptr %71, i32 0, i32 43
  %72 = load i32, ptr %tif_rawcc68, align 8
  %call69 = call i32 @TIFFAppendToStrip(ptr noundef %67, i32 noundef %68, ptr noundef %70, i32 noundef %72)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.end72, label %if.then71

if.then71:                                        ; preds = %land.lhs.true66
  store i32 -1, ptr %retval, align 4
  br label %return

if.end72:                                         ; preds = %land.lhs.true66, %if.end62
  %73 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc73 = getelementptr inbounds %struct.tiff, ptr %73, i32 0, i32 43
  store i32 0, ptr %tif_rawcc73, align 8
  %74 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata74 = getelementptr inbounds %struct.tiff, ptr %74, i32 0, i32 40
  %75 = load ptr, ptr %tif_rawdata74, align 8
  %76 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %76, i32 0, i32 42
  store ptr %75, ptr %tif_rawcp, align 8
  %77 = load i32, ptr %cc.addr, align 4
  store i32 %77, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end72, %if.then71, %if.then49, %if.then45, %if.then41, %if.then30, %if.then19, %if.then9, %if.then5, %if.then
  %78 = load i32, ptr %retval, align 4
  ret i32 %78
}

declare void @TIFFReverseBits(ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @TIFFAppendToStrip(ptr noundef %tif, i32 noundef %strip, ptr noundef %data, i32 noundef %cc) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %strip.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %td = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %strip, ptr %strip.addr, align 4
  store ptr %data, ptr %data.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 44
  %2 = load ptr, ptr %td_stripoffset, align 8
  %3 = load i32, ptr %strip.addr, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_curoff = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 14
  %6 = load i32, ptr %tif_curoff, align 4
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %if.then, label %if.end26

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load ptr, ptr %td, align 8
  %td_stripoffset2 = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i32 0, i32 44
  %8 = load ptr, ptr %td_stripoffset2, align 8
  %9 = load i32, ptr %strip.addr, align 4
  %idxprom3 = zext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %8, i64 %idxprom3
  %10 = load i32, ptr %arrayidx4, align 4
  %cmp5 = icmp ne i32 %10, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  %11 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %11, i32 0, i32 51
  %12 = load ptr, ptr %tif_seekproc, align 8
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %13, i32 0, i32 48
  %14 = load ptr, ptr %tif_clientdata, align 8
  %15 = load ptr, ptr %td, align 8
  %td_stripoffset7 = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i32 0, i32 44
  %16 = load ptr, ptr %td_stripoffset7, align 8
  %17 = load i32, ptr %strip.addr, align 4
  %idxprom8 = zext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %16, i64 %idxprom8
  %18 = load i32, ptr %arrayidx9, align 4
  %call = call i32 %12(ptr noundef %14, i32 noundef %18, i32 noundef 0)
  %19 = load ptr, ptr %td, align 8
  %td_stripoffset10 = getelementptr inbounds %struct.TIFFDirectory, ptr %19, i32 0, i32 44
  %20 = load ptr, ptr %td_stripoffset10, align 8
  %21 = load i32, ptr %strip.addr, align 4
  %idxprom11 = zext i32 %21 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %20, i64 %idxprom11
  %22 = load i32, ptr %arrayidx12, align 4
  %cmp13 = icmp eq i32 %call, %22
  br i1 %cmp13, label %if.end, label %if.then14

if.then14:                                        ; preds = %if.then6
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %tif_name, align 8
  %25 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %25, i32 0, i32 11
  %26 = load i32, ptr %tif_row, align 8
  %conv = zext i32 %26 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFAppendToStrip.module, ptr noundef @.str.16, ptr noundef %24, i64 noundef %conv)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then6
  br label %if.end21

if.else:                                          ; preds = %if.then
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc15 = getelementptr inbounds %struct.tiff, ptr %27, i32 0, i32 51
  %28 = load ptr, ptr %tif_seekproc15, align 8
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata16 = getelementptr inbounds %struct.tiff, ptr %29, i32 0, i32 48
  %30 = load ptr, ptr %tif_clientdata16, align 8
  %call17 = call i32 %28(ptr noundef %30, i32 noundef 0, i32 noundef 2)
  %31 = load ptr, ptr %td, align 8
  %td_stripoffset18 = getelementptr inbounds %struct.TIFFDirectory, ptr %31, i32 0, i32 44
  %32 = load ptr, ptr %td_stripoffset18, align 8
  %33 = load i32, ptr %strip.addr, align 4
  %idxprom19 = zext i32 %33 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %32, i64 %idxprom19
  store i32 %call17, ptr %arrayidx20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.end
  %34 = load ptr, ptr %td, align 8
  %td_stripoffset22 = getelementptr inbounds %struct.TIFFDirectory, ptr %34, i32 0, i32 44
  %35 = load ptr, ptr %td_stripoffset22, align 8
  %36 = load i32, ptr %strip.addr, align 4
  %idxprom23 = zext i32 %36 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %35, i64 %idxprom23
  %37 = load i32, ptr %arrayidx24, align 4
  %38 = load ptr, ptr %tif.addr, align 8
  %tif_curoff25 = getelementptr inbounds %struct.tiff, ptr %38, i32 0, i32 14
  store i32 %37, ptr %tif_curoff25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end21, %lor.lhs.false
  %39 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc = getelementptr inbounds %struct.tiff, ptr %39, i32 0, i32 50
  %40 = load ptr, ptr %tif_writeproc, align 8
  %41 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata27 = getelementptr inbounds %struct.tiff, ptr %41, i32 0, i32 48
  %42 = load ptr, ptr %tif_clientdata27, align 8
  %43 = load ptr, ptr %data.addr, align 8
  %44 = load i32, ptr %cc.addr, align 4
  %call28 = call i32 %40(ptr noundef %42, ptr noundef %43, i32 noundef %44)
  %45 = load i32, ptr %cc.addr, align 4
  %cmp29 = icmp eq i32 %call28, %45
  br i1 %cmp29, label %if.end35, label %if.then31

if.then31:                                        ; preds = %if.end26
  %46 = load ptr, ptr %tif.addr, align 8
  %tif_name32 = getelementptr inbounds %struct.tiff, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %tif_name32, align 8
  %48 = load ptr, ptr %tif.addr, align 8
  %tif_row33 = getelementptr inbounds %struct.tiff, ptr %48, i32 0, i32 11
  %49 = load i32, ptr %tif_row33, align 8
  %conv34 = zext i32 %49 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFAppendToStrip.module, ptr noundef @.str.17, ptr noundef %47, i64 noundef %conv34)
  store i32 0, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.end26
  %50 = load i32, ptr %cc.addr, align 4
  %51 = load ptr, ptr %tif.addr, align 8
  %tif_curoff36 = getelementptr inbounds %struct.tiff, ptr %51, i32 0, i32 14
  %52 = load i32, ptr %tif_curoff36, align 4
  %add = add nsw i32 %52, %50
  store i32 %add, ptr %tif_curoff36, align 4
  %53 = load i32, ptr %cc.addr, align 4
  %54 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %54, i32 0, i32 45
  %55 = load ptr, ptr %td_stripbytecount, align 8
  %56 = load i32, ptr %strip.addr, align 4
  %idxprom37 = zext i32 %56 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %55, i64 %idxprom37
  %57 = load i32, ptr %arrayidx38, align 4
  %add39 = add i32 %57, %53
  store i32 %add39, ptr %arrayidx38, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end35, %if.then31, %if.then14
  %58 = load i32, ptr %retval, align 4
  ret i32 %58
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFWriteRawStrip(ptr noundef %tif, i32 noundef %strip, ptr noundef %data, i32 noundef %cc) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %strip.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %td = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %strip, ptr %strip.addr, align 4
  store ptr %data, ptr %data.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %tif_flags, align 8
  %and = and i32 %2, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFWriteCheck(ptr noundef %3, i32 noundef 0, ptr noundef @TIFFWriteRawStrip.module)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %4 = load i32, ptr %strip.addr, align 4
  %5 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i32 0, i32 43
  %6 = load i32, ptr %td_nstrips, align 4
  %cmp = icmp uge i32 %4, %6
  br i1 %cmp, label %if.then2, label %if.end17

if.then2:                                         ; preds = %if.end
  %7 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i32 0, i32 24
  %8 = load i16, ptr %td_planarconfig, align 2
  %conv = zext i16 %8 to i32
  %cmp3 = icmp eq i32 %conv, 2
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then2
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %tif_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %10, ptr noundef @.str.2)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.then2
  %11 = load i32, ptr %strip.addr, align 4
  %12 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %12, i32 0, i32 42
  %13 = load i32, ptr %td_stripsperimage, align 8
  %cmp7 = icmp uge i32 %11, %13
  br i1 %cmp7, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end6
  %14 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %td_imagelength, align 4
  %16 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %16, i32 0, i32 16
  %17 = load i32, ptr %td_rowsperstrip, align 4
  %sub = sub i32 %17, 1
  %add = add i32 %15, %sub
  %18 = load ptr, ptr %td, align 8
  %td_rowsperstrip10 = getelementptr inbounds %struct.TIFFDirectory, ptr %18, i32 0, i32 16
  %19 = load i32, ptr %td_rowsperstrip10, align 4
  %div = udiv i32 %add, %19
  %20 = load ptr, ptr %td, align 8
  %td_stripsperimage11 = getelementptr inbounds %struct.TIFFDirectory, ptr %20, i32 0, i32 42
  store i32 %div, ptr %td_stripsperimage11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end6
  %21 = load ptr, ptr %tif.addr, align 8
  %call13 = call i32 @TIFFGrowStrips(ptr noundef %21, i32 noundef 1, ptr noundef @TIFFWriteRawStrip.module)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end12
  store i32 -1, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end12
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %22 = load i32, ptr %strip.addr, align 4
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %23, i32 0, i32 13
  store i32 %22, ptr %tif_curstrip, align 8
  %24 = load i32, ptr %strip.addr, align 4
  %25 = load ptr, ptr %td, align 8
  %td_stripsperimage18 = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i32 0, i32 42
  %26 = load i32, ptr %td_stripsperimage18, align 8
  %rem = urem i32 %24, %26
  %27 = load ptr, ptr %td, align 8
  %td_rowsperstrip19 = getelementptr inbounds %struct.TIFFDirectory, ptr %27, i32 0, i32 16
  %28 = load i32, ptr %td_rowsperstrip19, align 4
  %mul = mul i32 %rem, %28
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %29, i32 0, i32 11
  store i32 %mul, ptr %tif_row, align 8
  %30 = load ptr, ptr %tif.addr, align 8
  %31 = load i32, ptr %strip.addr, align 4
  %32 = load ptr, ptr %data.addr, align 8
  %33 = load i32, ptr %cc.addr, align 4
  %call20 = call i32 @TIFFAppendToStrip(ptr noundef %30, i32 noundef %31, ptr noundef %32, i32 noundef %33)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end17
  %34 = load i32, ptr %cc.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %34, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then15, %if.then5, %if.then
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFWriteTile(ptr noundef %tif, ptr noundef %buf, i32 noundef %x, i32 noundef %y, i32 noundef %z, i16 noundef zeroext %s) #0 {
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
  %1 = load i32, ptr %x.addr, align 4
  %2 = load i32, ptr %y.addr, align 4
  %3 = load i32, ptr %z.addr, align 4
  %4 = load i16, ptr %s.addr, align 2
  %call = call i32 @TIFFCheckTile(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %7 = load i32, ptr %x.addr, align 4
  %8 = load i32, ptr %y.addr, align 4
  %9 = load i32, ptr %z.addr, align 4
  %10 = load i16, ptr %s.addr, align 2
  %call1 = call i32 @TIFFComputeTile(ptr noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i16 noundef zeroext %10)
  %11 = load ptr, ptr %buf.addr, align 8
  %call2 = call i32 @TIFFWriteEncodedTile(ptr noundef %5, i32 noundef %call1, ptr noundef %11, i32 noundef -1)
  store i32 %call2, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

declare i32 @TIFFCheckTile(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFWriteEncodedTile(ptr noundef %tif, i32 noundef %tile, ptr noundef %data, i32 noundef %cc) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tile.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %td = alloca ptr, align 8
  %sample = alloca i16, align 2
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %tile, ptr %tile.addr, align 4
  store ptr %data, ptr %data.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %tif_flags, align 8
  %and = and i32 %1, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFWriteCheck(ptr noundef %2, i32 noundef 1, ptr noundef @TIFFWriteEncodedTile.module)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %4 = load i32, ptr %tile.addr, align 4
  %5 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i32 0, i32 43
  %6 = load i32, ptr %td_nstrips, align 4
  %cmp = icmp uge i32 %4, %6
  br i1 %cmp, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %tif_name, align 8
  %9 = load i32, ptr %tile.addr, align 4
  %conv = zext i32 %9 to i64
  %10 = load ptr, ptr %td, align 8
  %td_nstrips3 = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i32 0, i32 43
  %11 = load i32, ptr %td_nstrips3, align 4
  %conv4 = zext i32 %11 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFWriteEncodedTile.module, ptr noundef @.str.3, ptr noundef %8, i64 noundef %conv, i64 noundef %conv4)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_flags6 = getelementptr inbounds %struct.tiff, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %tif_flags6, align 8
  %and7 = and i32 %13, 16
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.end13, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end5
  %14 = load ptr, ptr %tif.addr, align 8
  %call10 = call i32 @TIFFWriteBufferSetup(ptr noundef %14, ptr noundef null, i32 noundef -1)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %lor.lhs.false9
  store i32 -1, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %lor.lhs.false9, %if.end5
  %15 = load i32, ptr %tile.addr, align 4
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_curtile = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 19
  store i32 %15, ptr %tif_curtile, align 8
  %17 = load i32, ptr %tile.addr, align 4
  %18 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %18, i32 0, i32 2
  %19 = load i32, ptr %td_imagelength, align 4
  %20 = load ptr, ptr %td, align 8
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %20, i32 0, i32 5
  %21 = load i32, ptr %td_tilelength, align 8
  %sub = sub i32 %21, 1
  %add = add i32 %19, %sub
  %22 = load ptr, ptr %td, align 8
  %td_tilelength14 = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i32 0, i32 5
  %23 = load i32, ptr %td_tilelength14, align 8
  %div = udiv i32 %add, %23
  %rem = urem i32 %17, %div
  %24 = load ptr, ptr %td, align 8
  %td_tilelength15 = getelementptr inbounds %struct.TIFFDirectory, ptr %24, i32 0, i32 5
  %25 = load i32, ptr %td_tilelength15, align 8
  %mul = mul i32 %rem, %25
  %26 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %26, i32 0, i32 11
  store i32 %mul, ptr %tif_row, align 8
  %27 = load i32, ptr %tile.addr, align 4
  %28 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %td_imagewidth, align 8
  %30 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %30, i32 0, i32 4
  %31 = load i32, ptr %td_tilewidth, align 4
  %sub16 = sub i32 %31, 1
  %add17 = add i32 %29, %sub16
  %32 = load ptr, ptr %td, align 8
  %td_tilewidth18 = getelementptr inbounds %struct.TIFFDirectory, ptr %32, i32 0, i32 4
  %33 = load i32, ptr %td_tilewidth18, align 4
  %div19 = udiv i32 %add17, %33
  %rem20 = urem i32 %27, %div19
  %34 = load ptr, ptr %td, align 8
  %td_tilewidth21 = getelementptr inbounds %struct.TIFFDirectory, ptr %34, i32 0, i32 4
  %35 = load i32, ptr %td_tilewidth21, align 4
  %mul22 = mul i32 %rem20, %35
  %36 = load ptr, ptr %tif.addr, align 8
  %tif_col = getelementptr inbounds %struct.tiff, ptr %36, i32 0, i32 18
  store i32 %mul22, ptr %tif_col, align 4
  %37 = load ptr, ptr %tif.addr, align 8
  %tif_flags23 = getelementptr inbounds %struct.tiff, ptr %37, i32 0, i32 3
  %38 = load i32, ptr %tif_flags23, align 8
  %and24 = and i32 %38, 32
  %cmp25 = icmp eq i32 %and24, 0
  br i1 %cmp25, label %if.then27, label %if.end33

if.then27:                                        ; preds = %if.end13
  %39 = load ptr, ptr %tif.addr, align 8
  %tif_setupencode = getelementptr inbounds %struct.tiff, ptr %39, i32 0, i32 23
  %40 = load ptr, ptr %tif_setupencode, align 8
  %41 = load ptr, ptr %tif.addr, align 8
  %call28 = call i32 %40(ptr noundef %41)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.then27
  store i32 -1, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.then27
  %42 = load ptr, ptr %tif.addr, align 8
  %tif_flags32 = getelementptr inbounds %struct.tiff, ptr %42, i32 0, i32 3
  %43 = load i32, ptr %tif_flags32, align 8
  %or = or i32 %43, 32
  store i32 %or, ptr %tif_flags32, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.end31, %if.end13
  %44 = load ptr, ptr %tif.addr, align 8
  %tif_flags34 = getelementptr inbounds %struct.tiff, ptr %44, i32 0, i32 3
  %45 = load i32, ptr %tif_flags34, align 8
  %and35 = and i32 %45, -4097
  store i32 %and35, ptr %tif_flags34, align 8
  %46 = load i32, ptr %tile.addr, align 4
  %47 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %47, i32 0, i32 42
  %48 = load i32, ptr %td_stripsperimage, align 8
  %div36 = udiv i32 %46, %48
  %conv37 = trunc i32 %div36 to i16
  store i16 %conv37, ptr %sample, align 2
  %49 = load ptr, ptr %tif.addr, align 8
  %tif_preencode = getelementptr inbounds %struct.tiff, ptr %49, i32 0, i32 24
  %50 = load ptr, ptr %tif_preencode, align 8
  %51 = load ptr, ptr %tif.addr, align 8
  %52 = load i16, ptr %sample, align 2
  %call38 = call i32 %50(ptr noundef %51, i16 noundef zeroext %52)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.end33
  store i32 -1, ptr %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.end33
  %53 = load i32, ptr %cc.addr, align 4
  %54 = load ptr, ptr %tif.addr, align 8
  %tif_tilesize = getelementptr inbounds %struct.tiff, ptr %54, i32 0, i32 20
  %55 = load i32, ptr %tif_tilesize, align 4
  %cmp42 = icmp ugt i32 %53, %55
  br i1 %cmp42, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.end41
  %56 = load ptr, ptr %tif.addr, align 8
  %tif_tilesize45 = getelementptr inbounds %struct.tiff, ptr %56, i32 0, i32 20
  %57 = load i32, ptr %tif_tilesize45, align 4
  store i32 %57, ptr %cc.addr, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end41
  %58 = load ptr, ptr %tif.addr, align 8
  %tif_encodetile = getelementptr inbounds %struct.tiff, ptr %58, i32 0, i32 31
  %59 = load ptr, ptr %tif_encodetile, align 8
  %60 = load ptr, ptr %tif.addr, align 8
  %61 = load ptr, ptr %data.addr, align 8
  %62 = load i32, ptr %cc.addr, align 4
  %63 = load i16, ptr %sample, align 2
  %call47 = call i32 %59(ptr noundef %60, ptr noundef %61, i32 noundef %62, i16 noundef zeroext %63)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.end46
  store i32 0, ptr %retval, align 4
  br label %return

if.end50:                                         ; preds = %if.end46
  %64 = load ptr, ptr %tif.addr, align 8
  %tif_postencode = getelementptr inbounds %struct.tiff, ptr %64, i32 0, i32 25
  %65 = load ptr, ptr %tif_postencode, align 8
  %66 = load ptr, ptr %tif.addr, align 8
  %call51 = call i32 %65(ptr noundef %66)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end50
  store i32 -1, ptr %retval, align 4
  br label %return

if.end54:                                         ; preds = %if.end50
  %67 = load ptr, ptr %tif.addr, align 8
  %tif_flags55 = getelementptr inbounds %struct.tiff, ptr %67, i32 0, i32 3
  %68 = load i32, ptr %tif_flags55, align 8
  %69 = load ptr, ptr %td, align 8
  %td_fillorder = getelementptr inbounds %struct.TIFFDirectory, ptr %69, i32 0, i32 13
  %70 = load i16, ptr %td_fillorder, align 2
  %conv56 = zext i16 %70 to i32
  %and57 = and i32 %68, %conv56
  %cmp58 = icmp ne i32 %and57, 0
  br i1 %cmp58, label %if.end66, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end54
  %71 = load ptr, ptr %tif.addr, align 8
  %tif_flags60 = getelementptr inbounds %struct.tiff, ptr %71, i32 0, i32 3
  %72 = load i32, ptr %tif_flags60, align 8
  %and61 = and i32 %72, 256
  %cmp62 = icmp eq i32 %and61, 0
  br i1 %cmp62, label %if.then64, label %if.end66

if.then64:                                        ; preds = %land.lhs.true
  %73 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %73, i32 0, i32 40
  %74 = load ptr, ptr %tif_rawdata, align 8
  %75 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %75, i32 0, i32 43
  %76 = load i32, ptr %tif_rawcc, align 8
  %conv65 = sext i32 %76 to i64
  call void @TIFFReverseBits(ptr noundef %74, i64 noundef %conv65)
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %land.lhs.true, %if.end54
  %77 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc67 = getelementptr inbounds %struct.tiff, ptr %77, i32 0, i32 43
  %78 = load i32, ptr %tif_rawcc67, align 8
  %cmp68 = icmp sgt i32 %78, 0
  br i1 %cmp68, label %land.lhs.true70, label %if.end76

land.lhs.true70:                                  ; preds = %if.end66
  %79 = load ptr, ptr %tif.addr, align 8
  %80 = load i32, ptr %tile.addr, align 4
  %81 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata71 = getelementptr inbounds %struct.tiff, ptr %81, i32 0, i32 40
  %82 = load ptr, ptr %tif_rawdata71, align 8
  %83 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc72 = getelementptr inbounds %struct.tiff, ptr %83, i32 0, i32 43
  %84 = load i32, ptr %tif_rawcc72, align 8
  %call73 = call i32 @TIFFAppendToStrip(ptr noundef %79, i32 noundef %80, ptr noundef %82, i32 noundef %84)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.end76, label %if.then75

if.then75:                                        ; preds = %land.lhs.true70
  store i32 -1, ptr %retval, align 4
  br label %return

if.end76:                                         ; preds = %land.lhs.true70, %if.end66
  %85 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc77 = getelementptr inbounds %struct.tiff, ptr %85, i32 0, i32 43
  store i32 0, ptr %tif_rawcc77, align 8
  %86 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata78 = getelementptr inbounds %struct.tiff, ptr %86, i32 0, i32 40
  %87 = load ptr, ptr %tif_rawdata78, align 8
  %88 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %88, i32 0, i32 42
  store ptr %87, ptr %tif_rawcp, align 8
  %89 = load i32, ptr %cc.addr, align 4
  store i32 %89, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end76, %if.then75, %if.then53, %if.then49, %if.then40, %if.then30, %if.then12, %if.then2, %if.then
  %90 = load i32, ptr %retval, align 4
  ret i32 %90
}

declare i32 @TIFFComputeTile(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFWriteRawTile(ptr noundef %tif, i32 noundef %tile, ptr noundef %data, i32 noundef %cc) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tile.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %tile, ptr %tile.addr, align 4
  store ptr %data, ptr %data.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %tif_flags, align 8
  %and = and i32 %1, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFWriteCheck(ptr noundef %2, i32 noundef 1, ptr noundef @TIFFWriteRawTile.module)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %3 = load i32, ptr %tile.addr, align 4
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 6
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir, i32 0, i32 43
  %5 = load i32, ptr %td_nstrips, align 4
  %cmp = icmp uge i32 %3, %5
  br i1 %cmp, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %tif_name, align 8
  %8 = load i32, ptr %tile.addr, align 4
  %conv = zext i32 %8 to i64
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_dir3 = getelementptr inbounds %struct.tiff, ptr %9, i32 0, i32 6
  %td_nstrips4 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir3, i32 0, i32 43
  %10 = load i32, ptr %td_nstrips4, align 4
  %conv5 = zext i32 %10 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFWriteRawTile.module, ptr noundef @.str.3, ptr noundef %7, i64 noundef %conv, i64 noundef %conv5)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %11 = load ptr, ptr %tif.addr, align 8
  %12 = load i32, ptr %tile.addr, align 4
  %13 = load ptr, ptr %data.addr, align 8
  %14 = load i32, ptr %cc.addr, align 4
  %call7 = call i32 @TIFFAppendToStrip(ptr noundef %11, i32 noundef %12, ptr noundef %13, i32 noundef %14)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end6
  %15 = load i32, ptr %cc.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %15, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then2, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

declare void @_TIFFfree(ptr noundef) #1

declare ptr @_TIFFmalloc(i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFFlushData1(ptr noundef %tif) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 43
  %1 = load i32, ptr %tif_rawcc, align 8
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end20

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %tif_flags, align 8
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 6
  %td_fillorder = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir, i32 0, i32 13
  %5 = load i16, ptr %td_fillorder, align 2
  %conv = zext i16 %5 to i32
  %and = and i32 %3, %conv
  %cmp1 = icmp ne i32 %and, 0
  br i1 %cmp1, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_flags3 = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %tif_flags3, align 8
  %and4 = and i32 %7, 256
  %cmp5 = icmp eq i32 %and4, 0
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 40
  %9 = load ptr, ptr %tif_rawdata, align 8
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc8 = getelementptr inbounds %struct.tiff, ptr %10, i32 0, i32 43
  %11 = load i32, ptr %tif_rawcc8, align 8
  %conv9 = sext i32 %11 to i64
  call void @TIFFReverseBits(ptr noundef %9, i64 noundef %conv9)
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true, %if.then
  %12 = load ptr, ptr %tif.addr, align 8
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_flags10 = getelementptr inbounds %struct.tiff, ptr %13, i32 0, i32 3
  %14 = load i32, ptr %tif_flags10, align 8
  %and11 = and i32 %14, 1024
  %cmp12 = icmp ne i32 %and11, 0
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_curtile = getelementptr inbounds %struct.tiff, ptr %15, i32 0, i32 19
  %16 = load i32, ptr %tif_curtile, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %17 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %17, i32 0, i32 13
  %18 = load i32, ptr %tif_curstrip, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %18, %cond.false ]
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata14 = getelementptr inbounds %struct.tiff, ptr %19, i32 0, i32 40
  %20 = load ptr, ptr %tif_rawdata14, align 8
  %21 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc15 = getelementptr inbounds %struct.tiff, ptr %21, i32 0, i32 43
  %22 = load i32, ptr %tif_rawcc15, align 8
  %call = call i32 @TIFFAppendToStrip(ptr noundef %12, i32 noundef %cond, ptr noundef %20, i32 noundef %22)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end17, label %if.then16

if.then16:                                        ; preds = %cond.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %cond.end
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc18 = getelementptr inbounds %struct.tiff, ptr %23, i32 0, i32 43
  store i32 0, ptr %tif_rawcc18, align 8
  %24 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata19 = getelementptr inbounds %struct.tiff, ptr %24, i32 0, i32 40
  %25 = load ptr, ptr %tif_rawdata19, align 8
  %26 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %26, i32 0, i32 42
  store ptr %25, ptr %tif_rawcp, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.end17, %entry
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.then16
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @TIFFSetWriteOffset(ptr noundef %tif, i32 noundef %off) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %off.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %off, ptr %off.addr, align 4
  %0 = load i32, ptr %off.addr, align 4
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_curoff = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 14
  store i32 %0, ptr %tif_curoff, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @TIFFSetupStrips(ptr noundef %tif) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %tif_flags, align 8
  %and = and i32 %2, 1024
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_dir1 = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 6
  %td_fieldsset = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x i64], ptr %td_fieldsset, i64 0, i64 0
  %4 = load i64, ptr %arrayidx, align 8
  %and2 = and i64 %4, 4
  %tobool = icmp ne i64 %and2, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_dir3 = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 6
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir3, i32 0, i32 2
  %6 = load i32, ptr %td_imagelength, align 4
  %cmp4 = icmp eq i32 %6, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %7 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i32 0, i32 15
  %8 = load i16, ptr %td_samplesperpixel, align 2
  %conv = zext i16 %8 to i32
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then
  %9 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFNumberOfTiles(ptr noundef %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ]
  %10 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i32 0, i32 42
  store i32 %cond, ptr %td_stripsperimage, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %tif.addr, align 8
  %tif_dir5 = getelementptr inbounds %struct.tiff, ptr %11, i32 0, i32 6
  %td_fieldsset6 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir5, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x i64], ptr %td_fieldsset6, i64 0, i64 0
  %12 = load i64, ptr %arrayidx7, align 8
  %and8 = and i64 %12, 131072
  %tobool9 = icmp ne i64 %and8, 0
  br i1 %tobool9, label %land.lhs.true10, label %cond.false18

land.lhs.true10:                                  ; preds = %if.else
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_dir11 = getelementptr inbounds %struct.tiff, ptr %13, i32 0, i32 6
  %td_imagelength12 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir11, i32 0, i32 2
  %14 = load i32, ptr %td_imagelength12, align 4
  %cmp13 = icmp eq i32 %14, 0
  br i1 %cmp13, label %cond.true15, label %cond.false18

cond.true15:                                      ; preds = %land.lhs.true10
  %15 = load ptr, ptr %td, align 8
  %td_samplesperpixel16 = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i32 0, i32 15
  %16 = load i16, ptr %td_samplesperpixel16, align 2
  %conv17 = zext i16 %16 to i32
  br label %cond.end20

cond.false18:                                     ; preds = %land.lhs.true10, %if.else
  %17 = load ptr, ptr %tif.addr, align 8
  %call19 = call i32 @TIFFNumberOfStrips(ptr noundef %17)
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false18, %cond.true15
  %cond21 = phi i32 [ %conv17, %cond.true15 ], [ %call19, %cond.false18 ]
  %18 = load ptr, ptr %td, align 8
  %td_stripsperimage22 = getelementptr inbounds %struct.TIFFDirectory, ptr %18, i32 0, i32 42
  store i32 %cond21, ptr %td_stripsperimage22, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end20, %cond.end
  %19 = load ptr, ptr %td, align 8
  %td_stripsperimage23 = getelementptr inbounds %struct.TIFFDirectory, ptr %19, i32 0, i32 42
  %20 = load i32, ptr %td_stripsperimage23, align 8
  %21 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %21, i32 0, i32 43
  store i32 %20, ptr %td_nstrips, align 4
  %22 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i32 0, i32 24
  %23 = load i16, ptr %td_planarconfig, align 2
  %conv24 = zext i16 %23 to i32
  %cmp25 = icmp eq i32 %conv24, 2
  br i1 %cmp25, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end
  %24 = load ptr, ptr %td, align 8
  %td_samplesperpixel28 = getelementptr inbounds %struct.TIFFDirectory, ptr %24, i32 0, i32 15
  %25 = load i16, ptr %td_samplesperpixel28, align 2
  %conv29 = zext i16 %25 to i32
  %26 = load ptr, ptr %td, align 8
  %td_stripsperimage30 = getelementptr inbounds %struct.TIFFDirectory, ptr %26, i32 0, i32 42
  %27 = load i32, ptr %td_stripsperimage30, align 8
  %div = udiv i32 %27, %conv29
  store i32 %div, ptr %td_stripsperimage30, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end
  %28 = load ptr, ptr %td, align 8
  %td_nstrips32 = getelementptr inbounds %struct.TIFFDirectory, ptr %28, i32 0, i32 43
  %29 = load i32, ptr %td_nstrips32, align 4
  %conv33 = zext i32 %29 to i64
  %mul = mul i64 %conv33, 4
  %conv34 = trunc i64 %mul to i32
  %call35 = call ptr @_TIFFmalloc(i32 noundef %conv34)
  %30 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %30, i32 0, i32 44
  store ptr %call35, ptr %td_stripoffset, align 8
  %31 = load ptr, ptr %td, align 8
  %td_nstrips36 = getelementptr inbounds %struct.TIFFDirectory, ptr %31, i32 0, i32 43
  %32 = load i32, ptr %td_nstrips36, align 4
  %conv37 = zext i32 %32 to i64
  %mul38 = mul i64 %conv37, 4
  %conv39 = trunc i64 %mul38 to i32
  %call40 = call ptr @_TIFFmalloc(i32 noundef %conv39)
  %33 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %33, i32 0, i32 45
  store ptr %call40, ptr %td_stripbytecount, align 8
  %34 = load ptr, ptr %td, align 8
  %td_stripoffset41 = getelementptr inbounds %struct.TIFFDirectory, ptr %34, i32 0, i32 44
  %35 = load ptr, ptr %td_stripoffset41, align 8
  %cmp42 = icmp eq ptr %35, null
  br i1 %cmp42, label %if.then47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end31
  %36 = load ptr, ptr %td, align 8
  %td_stripbytecount44 = getelementptr inbounds %struct.TIFFDirectory, ptr %36, i32 0, i32 45
  %37 = load ptr, ptr %td_stripbytecount44, align 8
  %cmp45 = icmp eq ptr %37, null
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %lor.lhs.false, %if.end31
  store i32 0, ptr %retval, align 4
  br label %return

if.end48:                                         ; preds = %lor.lhs.false
  %38 = load ptr, ptr %td, align 8
  %td_stripoffset49 = getelementptr inbounds %struct.TIFFDirectory, ptr %38, i32 0, i32 44
  %39 = load ptr, ptr %td_stripoffset49, align 8
  %40 = load ptr, ptr %td, align 8
  %td_nstrips50 = getelementptr inbounds %struct.TIFFDirectory, ptr %40, i32 0, i32 43
  %41 = load i32, ptr %td_nstrips50, align 4
  %conv51 = zext i32 %41 to i64
  %mul52 = mul i64 %conv51, 4
  %conv53 = trunc i64 %mul52 to i32
  call void @_TIFFmemset(ptr noundef %39, i32 noundef 0, i32 noundef %conv53)
  %42 = load ptr, ptr %td, align 8
  %td_stripbytecount54 = getelementptr inbounds %struct.TIFFDirectory, ptr %42, i32 0, i32 45
  %43 = load ptr, ptr %td_stripbytecount54, align 8
  %44 = load ptr, ptr %td, align 8
  %td_nstrips55 = getelementptr inbounds %struct.TIFFDirectory, ptr %44, i32 0, i32 43
  %45 = load i32, ptr %td_nstrips55, align 4
  %conv56 = zext i32 %45 to i64
  %mul57 = mul i64 %conv56, 4
  %conv58 = trunc i64 %mul57 to i32
  call void @_TIFFmemset(ptr noundef %43, i32 noundef 0, i32 noundef %conv58)
  %46 = load ptr, ptr %tif.addr, align 8
  %tif_dir59 = getelementptr inbounds %struct.tiff, ptr %46, i32 0, i32 6
  %td_fieldsset60 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir59, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [3 x i64], ptr %td_fieldsset60, i64 0, i64 0
  %47 = load i64, ptr %arrayidx61, align 8
  %or = or i64 %47, 33554432
  store i64 %or, ptr %arrayidx61, align 8
  %48 = load ptr, ptr %tif.addr, align 8
  %tif_dir62 = getelementptr inbounds %struct.tiff, ptr %48, i32 0, i32 6
  %td_fieldsset63 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir62, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [3 x i64], ptr %td_fieldsset63, i64 0, i64 0
  %49 = load i64, ptr %arrayidx64, align 8
  %or65 = or i64 %49, 16777216
  store i64 %or65, ptr %arrayidx64, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end48, %if.then47
  %50 = load i32, ptr %retval, align 4
  ret i32 %50
}

declare i32 @TIFFTileSize(ptr noundef) #1

declare i32 @TIFFScanlineSize(ptr noundef) #1

declare i32 @TIFFNumberOfTiles(ptr noundef) #1

declare i32 @TIFFNumberOfStrips(ptr noundef) #1

declare void @_TIFFmemset(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare ptr @_TIFFrealloc(ptr noundef, i32 noundef) #1

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
