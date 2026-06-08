; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_growth_budget/source_snapshot_public_repos_mibench_consumer_tiff-v3.5.4_libtiff_tif_write.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_write.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i64, i64, i64, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i64, i16, i64, i64, i64, i16, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, ptr, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i64, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i64, ptr, i64, ptr, i64, ptr, i64, i64, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i64 }

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

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFWriteScanline(ptr noundef %tif, ptr noundef %buf, i64 noundef %row, i16 noundef zeroext %sample) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %row.addr = alloca i64, align 8
  %sample.addr = alloca i16, align 2
  %td = alloca ptr, align 8
  %imagegrew = alloca i32, align 4
  %strip = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %row, ptr %row.addr, align 8
  store i16 %sample, ptr %sample.addr, align 2
  store i32 0, ptr %imagegrew, align 4
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 3
  %0 = load i64, ptr %tif_flags, align 8
  %and = and i64 %0, 64
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFWriteCheck(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @TIFFWriteScanline.module)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_flags2 = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 3
  %3 = load i64, ptr %tif_flags2, align 8
  %and3 = and i64 %3, 16
  %tobool4.not = icmp eq i64 %and3, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %if.end9

lor.lhs.false5:                                   ; preds = %if.end
  %4 = load ptr, ptr %tif.addr, align 8
  %call6 = call i32 @TIFFWriteBufferSetup(ptr noundef %4, ptr noundef null, i64 noundef -1)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false5
  store i32 -1, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %lor.lhs.false5, %if.end
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %5, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %6 = load i64, ptr %row.addr, align 8
  %td_imagelength = getelementptr inbounds %struct.tiff, ptr %5, i64 0, i32 6, i32 2
  %7 = load i64, ptr %td_imagelength, align 8
  %cmp.not = icmp ult i64 %6, %7
  br i1 %cmp.not, label %if.end16, label %if.then10

if.then10:                                        ; preds = %if.end9
  %8 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i64 0, i32 24
  %9 = load i16, ptr %td_planarconfig, align 2
  %cmp11 = icmp eq i16 %9, 2
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then10
  %10 = load ptr, ptr %tif.addr, align 8
  %11 = load ptr, ptr %10, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %11, ptr noundef nonnull @.str) #3
  store i32 -1, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.then10
  %12 = load i64, ptr %row.addr, align 8
  %add = add i64 %12, 1
  %13 = load ptr, ptr %td, align 8
  %td_imagelength15 = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i64 0, i32 2
  store i64 %add, ptr %td_imagelength15, align 8
  store i32 1, ptr %imagegrew, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %if.end9
  %14 = load ptr, ptr %td, align 8
  %td_planarconfig17 = getelementptr inbounds %struct.TIFFDirectory, ptr %14, i64 0, i32 24
  %15 = load i16, ptr %td_planarconfig17, align 2
  %cmp19 = icmp eq i16 %15, 2
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end16
  %16 = load i16, ptr %sample.addr, align 2
  %17 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i64 0, i32 15
  %18 = load i16, ptr %td_samplesperpixel, align 2
  %cmp24.not = icmp ult i16 %16, %18
  br i1 %cmp24.not, label %if.end31, label %if.then26

if.then26:                                        ; preds = %if.then21
  %19 = load ptr, ptr %tif.addr, align 8
  %20 = load ptr, ptr %19, align 8
  %21 = load i16, ptr %sample.addr, align 2
  %conv28 = zext i16 %21 to i32
  %22 = load ptr, ptr %td, align 8
  %td_samplesperpixel29 = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i64 0, i32 15
  %23 = load i16, ptr %td_samplesperpixel29, align 2
  %conv30 = zext i16 %23 to i32
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %20, ptr noundef nonnull @.str.1, i32 noundef %conv28, i32 noundef %conv30) #3
  store i32 -1, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.then21
  %24 = load i16, ptr %sample.addr, align 2
  %conv32 = zext i16 %24 to i64
  %25 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i64 0, i32 42
  %26 = load i64, ptr %td_stripsperimage, align 8
  %mul = mul i64 %26, %conv32
  %27 = load i64, ptr %row.addr, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i64 0, i32 16
  %28 = load i64, ptr %td_rowsperstrip, align 8
  %div = udiv i64 %27, %28
  %add33 = add i64 %mul, %div
  br label %if.end36

if.else:                                          ; preds = %if.end16
  %29 = load i64, ptr %row.addr, align 8
  %30 = load ptr, ptr %td, align 8
  %td_rowsperstrip34 = getelementptr inbounds %struct.TIFFDirectory, ptr %30, i64 0, i32 16
  %31 = load i64, ptr %td_rowsperstrip34, align 8
  %div35 = udiv i64 %29, %31
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.end31
  %storemerge = phi i64 [ %div35, %if.else ], [ %add33, %if.end31 ]
  store i64 %storemerge, ptr %strip, align 8
  %32 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %32, i64 0, i32 13
  %33 = load i64, ptr %tif_curstrip, align 8
  %cmp37.not = icmp eq i64 %storemerge, %33
  br i1 %cmp37.not, label %if.end77, label %if.then39

if.then39:                                        ; preds = %if.end36
  %34 = load ptr, ptr %tif.addr, align 8
  %call40 = call i32 @TIFFFlushData(ptr noundef %34) #3
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.then39
  store i32 -1, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %if.then39
  %35 = load i64, ptr %strip, align 8
  %36 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip44 = getelementptr inbounds %struct.tiff, ptr %36, i64 0, i32 13
  store i64 %35, ptr %tif_curstrip44, align 8
  %37 = load ptr, ptr %td, align 8
  %td_stripsperimage45 = getelementptr inbounds %struct.TIFFDirectory, ptr %37, i64 0, i32 42
  %38 = load i64, ptr %td_stripsperimage45, align 8
  %cmp46.not = icmp ult i64 %35, %38
  %39 = load i32, ptr %imagegrew, align 4
  %tobool48.not = icmp eq i32 %39, 0
  %or.cond = select i1 %cmp46.not, i1 true, i1 %tobool48.not
  br i1 %or.cond, label %if.end56, label %if.then49

if.then49:                                        ; preds = %if.end43
  %40 = load ptr, ptr %td, align 8
  %td_imagelength50 = getelementptr inbounds %struct.TIFFDirectory, ptr %40, i64 0, i32 2
  %41 = load i64, ptr %td_imagelength50, align 8
  %td_rowsperstrip51 = getelementptr inbounds %struct.TIFFDirectory, ptr %40, i64 0, i32 16
  %42 = load i64, ptr %td_rowsperstrip51, align 8
  %sub = add i64 %42, -1
  %add52 = add i64 %41, %sub
  %43 = load ptr, ptr %td, align 8
  %td_rowsperstrip53 = getelementptr inbounds %struct.TIFFDirectory, ptr %43, i64 0, i32 16
  %44 = load i64, ptr %td_rowsperstrip53, align 8
  %div54 = udiv i64 %add52, %44
  %td_stripsperimage55 = getelementptr inbounds %struct.TIFFDirectory, ptr %43, i64 0, i32 42
  store i64 %div54, ptr %td_stripsperimage55, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then49, %if.end43
  %45 = load i64, ptr %strip, align 8
  %46 = load ptr, ptr %td, align 8
  %td_stripsperimage57 = getelementptr inbounds %struct.TIFFDirectory, ptr %46, i64 0, i32 42
  %47 = load i64, ptr %td_stripsperimage57, align 8
  %rem = urem i64 %45, %47
  %td_rowsperstrip58 = getelementptr inbounds %struct.TIFFDirectory, ptr %46, i64 0, i32 16
  %48 = load i64, ptr %td_rowsperstrip58, align 8
  %mul59 = mul i64 %rem, %48
  %49 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %49, i64 0, i32 11
  store i64 %mul59, ptr %tif_row, align 8
  %tif_flags60 = getelementptr inbounds %struct.tiff, ptr %49, i64 0, i32 3
  %50 = load i64, ptr %tif_flags60, align 8
  %and61 = and i64 %50, 32
  %cmp62 = icmp eq i64 %and61, 0
  br i1 %cmp62, label %if.then64, label %if.end70

if.then64:                                        ; preds = %if.end56
  %51 = load ptr, ptr %tif.addr, align 8
  %tif_setupencode = getelementptr inbounds %struct.tiff, ptr %51, i64 0, i32 23
  %52 = load ptr, ptr %tif_setupencode, align 8
  %call65 = call i32 %52(ptr noundef %51) #3
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.then64
  store i32 -1, ptr %retval, align 4
  br label %return

if.end68:                                         ; preds = %if.then64
  %53 = load ptr, ptr %tif.addr, align 8
  %tif_flags69 = getelementptr inbounds %struct.tiff, ptr %53, i64 0, i32 3
  %54 = load i64, ptr %tif_flags69, align 8
  %or = or i64 %54, 32
  store i64 %or, ptr %tif_flags69, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.end68, %if.end56
  %55 = load ptr, ptr %tif.addr, align 8
  %tif_preencode = getelementptr inbounds %struct.tiff, ptr %55, i64 0, i32 24
  %56 = load ptr, ptr %tif_preencode, align 8
  %57 = load i16, ptr %sample.addr, align 2
  %call71 = call i32 %56(ptr noundef %55, i16 noundef zeroext %57) #3
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end70
  store i32 -1, ptr %retval, align 4
  br label %return

if.end74:                                         ; preds = %if.end70
  %58 = load ptr, ptr %tif.addr, align 8
  %tif_flags75 = getelementptr inbounds %struct.tiff, ptr %58, i64 0, i32 3
  %59 = load i64, ptr %tif_flags75, align 8
  %or76 = or i64 %59, 4096
  store i64 %or76, ptr %tif_flags75, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.end74, %if.end36
  %60 = load i64, ptr %strip, align 8
  %61 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %61, i64 0, i32 43
  %62 = load i64, ptr %td_nstrips, align 8
  %cmp78.not = icmp ult i64 %60, %62
  br i1 %cmp78.not, label %if.end84, label %land.lhs.true80

land.lhs.true80:                                  ; preds = %if.end77
  %63 = load ptr, ptr %tif.addr, align 8
  %call81 = call i32 @TIFFGrowStrips(ptr noundef %63, i32 noundef 1, ptr noundef nonnull @TIFFWriteScanline.module)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then83, label %if.end84

if.then83:                                        ; preds = %land.lhs.true80
  store i32 -1, ptr %retval, align 4
  br label %return

if.end84:                                         ; preds = %land.lhs.true80, %if.end77
  %64 = load i64, ptr %row.addr, align 8
  %65 = load ptr, ptr %tif.addr, align 8
  %tif_row85 = getelementptr inbounds %struct.tiff, ptr %65, i64 0, i32 11
  %66 = load i64, ptr %tif_row85, align 8
  %cmp86.not = icmp eq i64 %64, %66
  br i1 %cmp86.not, label %if.end106, label %if.then88

if.then88:                                        ; preds = %if.end84
  %67 = load i64, ptr %row.addr, align 8
  %68 = load ptr, ptr %tif.addr, align 8
  %tif_row89 = getelementptr inbounds %struct.tiff, ptr %68, i64 0, i32 11
  %69 = load i64, ptr %tif_row89, align 8
  %cmp90 = icmp ult i64 %67, %69
  br i1 %cmp90, label %if.then92, label %if.end98

if.then92:                                        ; preds = %if.then88
  %70 = load i64, ptr %strip, align 8
  %71 = load ptr, ptr %td, align 8
  %td_stripsperimage93 = getelementptr inbounds %struct.TIFFDirectory, ptr %71, i64 0, i32 42
  %72 = load i64, ptr %td_stripsperimage93, align 8
  %rem94 = urem i64 %70, %72
  %td_rowsperstrip95 = getelementptr inbounds %struct.TIFFDirectory, ptr %71, i64 0, i32 16
  %73 = load i64, ptr %td_rowsperstrip95, align 8
  %mul96 = mul i64 %rem94, %73
  %74 = load ptr, ptr %tif.addr, align 8
  %tif_row97 = getelementptr inbounds %struct.tiff, ptr %74, i64 0, i32 11
  store i64 %mul96, ptr %tif_row97, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %74, i64 0, i32 40
  %75 = load ptr, ptr %tif_rawdata, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %74, i64 0, i32 42
  store ptr %75, ptr %tif_rawcp, align 8
  br label %if.end98

if.end98:                                         ; preds = %if.then92, %if.then88
  %76 = load ptr, ptr %tif.addr, align 8
  %tif_seek = getelementptr inbounds %struct.tiff, ptr %76, i64 0, i32 33
  %77 = load ptr, ptr %tif_seek, align 8
  %78 = load i64, ptr %row.addr, align 8
  %tif_row99 = getelementptr inbounds %struct.tiff, ptr %76, i64 0, i32 11
  %79 = load i64, ptr %tif_row99, align 8
  %sub100 = sub i64 %78, %79
  %call101 = call i32 %77(ptr noundef %76, i64 noundef %sub100) #3
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.then103, label %if.end104

if.then103:                                       ; preds = %if.end98
  store i32 -1, ptr %retval, align 4
  br label %return

if.end104:                                        ; preds = %if.end98
  %80 = load i64, ptr %row.addr, align 8
  %81 = load ptr, ptr %tif.addr, align 8
  %tif_row105 = getelementptr inbounds %struct.tiff, ptr %81, i64 0, i32 11
  store i64 %80, ptr %tif_row105, align 8
  br label %if.end106

if.end106:                                        ; preds = %if.end104, %if.end84
  %82 = load ptr, ptr %tif.addr, align 8
  %tif_encoderow = getelementptr inbounds %struct.tiff, ptr %82, i64 0, i32 27
  %83 = load ptr, ptr %tif_encoderow, align 8
  %84 = load ptr, ptr %buf.addr, align 8
  %tif_scanlinesize = getelementptr inbounds %struct.tiff, ptr %82, i64 0, i32 38
  %85 = load i64, ptr %tif_scanlinesize, align 8
  %86 = load i16, ptr %sample.addr, align 2
  %call107 = call i32 %83(ptr noundef %82, ptr noundef %84, i64 noundef %85, i16 noundef zeroext %86) #3
  %87 = load ptr, ptr %tif.addr, align 8
  %tif_row108 = getelementptr inbounds %struct.tiff, ptr %87, i64 0, i32 11
  %88 = load i64, ptr %tif_row108, align 8
  %inc = add i64 %88, 1
  store i64 %inc, ptr %tif_row108, align 8
  store i32 %call107, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end106, %if.then103, %if.then83, %if.then73, %if.then67, %if.then42, %if.then26, %if.then13, %if.then8, %if.then
  %89 = load i32, ptr %retval, align 4
  ret i32 %89
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFWriteCheck(ptr noundef %tif, i32 noundef %tiles, ptr noundef %module) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tiles.addr = alloca i32, align 4
  %module.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %tiles, ptr %tiles.addr, align 4
  store ptr %module, ptr %module.addr, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 2
  %0 = load i32, ptr %tif_mode, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %module.addr, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load ptr, ptr %2, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef %3) #3
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %tiles.addr, align 4
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %5, i64 0, i32 3
  %6 = load i64, ptr %tif_flags, align 8
  %7 = trunc i64 %6 to i32
  %8 = lshr i32 %7, 10
  %9 = and i32 %8, 1
  %tobool.not = icmp eq i32 %4, %9
  br i1 %tobool.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  %10 = load ptr, ptr %tif.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %12 = load i32, ptr %tiles.addr, align 4
  %tobool4.not = icmp eq i32 %12, 0
  %cond = select i1 %tobool4.not, ptr @.str.7, ptr @.str.6
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %11, ptr noundef nonnull %cond) #3
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %13, i64 0, i32 6
  %14 = load i64, ptr %tif_dir, align 8
  %and6 = and i64 %14, 2
  %tobool7.not = icmp eq i64 %and6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  %15 = load ptr, ptr %module.addr, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %17 = load ptr, ptr %16, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %15, ptr noundef nonnull @.str.8, ptr noundef %17) #3
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end5
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_dir11 = getelementptr inbounds %struct.tiff, ptr %18, i64 0, i32 6
  %19 = load i64, ptr %tif_dir11, align 8
  %and14 = and i64 %19, 1048576
  %tobool15.not = icmp eq i64 %and14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end10
  %20 = load ptr, ptr %module.addr, align 8
  %21 = load ptr, ptr %tif.addr, align 8
  %22 = load ptr, ptr %21, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %20, ptr noundef nonnull @.str.9, ptr noundef %22) #3
  store i32 0, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end10
  %23 = load ptr, ptr %tif.addr, align 8
  %td_stripoffset = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 6, i32 44
  %24 = load ptr, ptr %td_stripoffset, align 8
  %cmp20 = icmp eq ptr %24, null
  br i1 %cmp20, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %if.end18
  %25 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFSetupStrips(ptr noundef %25)
  %tobool22.not = icmp eq i32 %call, 0
  br i1 %tobool22.not, label %if.then23, label %if.end31

if.then23:                                        ; preds = %land.lhs.true
  %26 = load ptr, ptr %tif.addr, align 8
  %td_nstrips = getelementptr inbounds %struct.tiff, ptr %26, i64 0, i32 6, i32 43
  store i64 0, ptr %td_nstrips, align 8
  %27 = load ptr, ptr %module.addr, align 8
  %28 = load ptr, ptr %26, align 8
  %tif_flags26 = getelementptr inbounds %struct.tiff, ptr %26, i64 0, i32 3
  %29 = load i64, ptr %tif_flags26, align 8
  %and27 = and i64 %29, 1024
  %cmp28.not = icmp eq i64 %and27, 0
  %cond30 = select i1 %cmp28.not, ptr @.str.12, ptr @.str.11
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %27, ptr noundef nonnull @.str.10, ptr noundef %28, ptr noundef nonnull %cond30) #3
  store i32 0, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %land.lhs.true, %if.end18
  %30 = load ptr, ptr %tif.addr, align 8
  %call32 = call i64 @TIFFTileSize(ptr noundef %30) #3
  %tif_tilesize = getelementptr inbounds %struct.tiff, ptr %30, i64 0, i32 20
  store i64 %call32, ptr %tif_tilesize, align 8
  %call33 = call i64 @TIFFScanlineSize(ptr noundef %30) #3
  %tif_scanlinesize = getelementptr inbounds %struct.tiff, ptr %30, i64 0, i32 38
  store i64 %call33, ptr %tif_scanlinesize, align 8
  %31 = load ptr, ptr %tif.addr, align 8
  %tif_flags34 = getelementptr inbounds %struct.tiff, ptr %31, i64 0, i32 3
  %32 = load i64, ptr %tif_flags34, align 8
  %or = or i64 %32, 64
  store i64 %or, ptr %tif_flags34, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.then23, %if.then16, %if.then8, %if.then2, %if.then
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFWriteBufferSetup(ptr noundef %tif, ptr noundef %bp, i64 noundef %size) #0 {
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
  br i1 %tobool.not, label %if.end7, label %if.then

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
  %tif_flags4 = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %tif_flags4, align 8
  %and5 = and i64 %5, -513
  store i64 %and5, ptr %tif_flags4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata6 = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 40
  store ptr null, ptr %tif_rawdata6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  %7 = load i64, ptr %size.addr, align 8
  %cmp = icmp eq i64 %7, -1
  br i1 %cmp, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.end7
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_flags9 = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 3
  %9 = load i64, ptr %tif_flags9, align 8
  %and10 = and i64 %9, 1024
  %cmp11.not = icmp eq i64 %and10, 0
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_tilesize = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 20
  %11 = load ptr, ptr %tif.addr, align 8
  %tif_scanlinesize = getelementptr inbounds %struct.tiff, ptr %11, i64 0, i32 38
  %cond.in = select i1 %cmp11.not, ptr %tif_scanlinesize, ptr %tif_tilesize
  %cond = load i64, ptr %cond.in, align 8
  %cmp12 = icmp slt i64 %cond, 8192
  %storemerge1 = select i1 %cmp12, i64 8192, i64 %cond
  store i64 %storemerge1, ptr %size.addr, align 8
  store ptr null, ptr %bp.addr, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %if.end7
  %12 = load ptr, ptr %bp.addr, align 8
  %cmp16 = icmp eq ptr %12, null
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end15
  %13 = load i64, ptr %size.addr, align 8
  %call = call ptr @_TIFFmalloc(i64 noundef %13) #3
  store ptr %call, ptr %bp.addr, align 8
  %cmp18 = icmp eq ptr %call, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then17
  %14 = load ptr, ptr %tif.addr, align 8
  %15 = load ptr, ptr %14, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFWriteBufferSetup.module, ptr noundef nonnull @.str.4, ptr noundef %15) #3
  br label %return

if.end20:                                         ; preds = %if.then17
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_flags21 = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 3
  %17 = load i64, ptr %tif_flags21, align 8
  %or = or i64 %17, 512
  store i64 %or, ptr %tif_flags21, align 8
  br label %if.end24

if.else:                                          ; preds = %if.end15
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_flags22 = getelementptr inbounds %struct.tiff, ptr %18, i64 0, i32 3
  %19 = load i64, ptr %tif_flags22, align 8
  %and23 = and i64 %19, -513
  store i64 %and23, ptr %tif_flags22, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end20
  %20 = load ptr, ptr %bp.addr, align 8
  %21 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata25 = getelementptr inbounds %struct.tiff, ptr %21, i64 0, i32 40
  store ptr %20, ptr %tif_rawdata25, align 8
  %22 = load i64, ptr %size.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %21, i64 0, i32 41
  store i64 %22, ptr %tif_rawdatasize, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %21, i64 0, i32 43
  store i64 0, ptr %tif_rawcc, align 8
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata26 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 40
  %24 = load ptr, ptr %tif_rawdata26, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 42
  store ptr %24, ptr %tif_rawcp, align 8
  %tif_flags27 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 3
  %25 = load i64, ptr %tif_flags27, align 8
  %or28 = or i64 %25, 16
  store i64 %or28, ptr %tif_flags27, align 8
  br label %return

return:                                           ; preds = %if.end24, %if.then19
  %storemerge = phi i32 [ 1, %if.end24 ], [ 0, %if.then19 ]
  ret i32 %storemerge
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

declare i32 @TIFFFlushData(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFGrowStrips(ptr noundef %tif, i32 noundef %delta, ptr noundef %module) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %delta.addr = alloca i32, align 4
  %module.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %delta, ptr %delta.addr, align 4
  store ptr %module, ptr %module.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 24
  %0 = load i16, ptr %td_planarconfig, align 2
  %cmp.not = icmp eq i16 %0, 1
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.TIFFGrowStrips, ptr noundef nonnull @.str.13, i32 noundef 570, ptr noundef nonnull @.str.14) #4
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i64 0, i32 44
  %2 = load ptr, ptr %td_stripoffset, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i64 0, i32 43
  %3 = load i64, ptr %td_nstrips, align 8
  %4 = load i32, ptr %delta.addr, align 4
  %conv3 = sext i32 %4 to i64
  %add = add i64 %3, %conv3
  %mul = shl i64 %add, 3
  %call = call ptr @_TIFFrealloc(ptr noundef %2, i64 noundef %mul) #3
  %5 = load ptr, ptr %td, align 8
  %td_stripoffset4 = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i64 0, i32 44
  store ptr %call, ptr %td_stripoffset4, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i64 0, i32 45
  %6 = load ptr, ptr %td_stripbytecount, align 8
  %td_nstrips5 = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i64 0, i32 43
  %7 = load i64, ptr %td_nstrips5, align 8
  %8 = load i32, ptr %delta.addr, align 4
  %conv6 = sext i32 %8 to i64
  %add7 = add i64 %7, %conv6
  %mul8 = shl i64 %add7, 3
  %call9 = call ptr @_TIFFrealloc(ptr noundef %6, i64 noundef %mul8) #3
  %9 = load ptr, ptr %td, align 8
  %td_stripbytecount10 = getelementptr inbounds %struct.TIFFDirectory, ptr %9, i64 0, i32 45
  store ptr %call9, ptr %td_stripbytecount10, align 8
  %td_stripoffset11 = getelementptr inbounds %struct.TIFFDirectory, ptr %9, i64 0, i32 44
  %10 = load ptr, ptr %td_stripoffset11, align 8
  %cmp12 = icmp eq ptr %10, null
  br i1 %cmp12, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %11 = load ptr, ptr %td, align 8
  %td_stripbytecount14 = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i64 0, i32 45
  %12 = load ptr, ptr %td_stripbytecount14, align 8
  %cmp15 = icmp eq ptr %12, null
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  %13 = load ptr, ptr %td, align 8
  %td_nstrips17 = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i64 0, i32 43
  store i64 0, ptr %td_nstrips17, align 8
  %14 = load ptr, ptr %module.addr, align 8
  %15 = load ptr, ptr %tif.addr, align 8
  %16 = load ptr, ptr %15, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %14, ptr noundef nonnull @.str.15, ptr noundef %16) #3
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %17 = load ptr, ptr %td, align 8
  %td_stripoffset18 = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i64 0, i32 44
  %18 = load ptr, ptr %td_stripoffset18, align 8
  %td_nstrips19 = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i64 0, i32 43
  %19 = load i64, ptr %td_nstrips19, align 8
  %add.ptr = getelementptr inbounds i64, ptr %18, i64 %19
  %20 = load i32, ptr %delta.addr, align 4
  %conv20 = sext i32 %20 to i64
  %mul21 = shl nsw i64 %conv20, 3
  call void @_TIFFmemset(ptr noundef %add.ptr, i32 noundef 0, i64 noundef %mul21) #3
  %21 = load ptr, ptr %td, align 8
  %td_stripbytecount22 = getelementptr inbounds %struct.TIFFDirectory, ptr %21, i64 0, i32 45
  %22 = load ptr, ptr %td_stripbytecount22, align 8
  %td_nstrips23 = getelementptr inbounds %struct.TIFFDirectory, ptr %21, i64 0, i32 43
  %23 = load i64, ptr %td_nstrips23, align 8
  %add.ptr24 = getelementptr inbounds i64, ptr %22, i64 %23
  %24 = load i32, ptr %delta.addr, align 4
  %conv25 = sext i32 %24 to i64
  %mul26 = shl nsw i64 %conv25, 3
  call void @_TIFFmemset(ptr noundef %add.ptr24, i32 noundef 0, i64 noundef %mul26) #3
  %conv27 = sext i32 %24 to i64
  %25 = load ptr, ptr %td, align 8
  %td_nstrips28 = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i64 0, i32 43
  %26 = load i64, ptr %td_nstrips28, align 8
  %add29 = add i64 %26, %conv27
  store i64 %add29, ptr %td_nstrips28, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %storemerge = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i64 @TIFFWriteEncodedStrip(ptr noundef %tif, i64 noundef %strip, ptr noundef %data, i64 noundef %cc) #0 {
entry:
  %retval = alloca i64, align 8
  %tif.addr = alloca ptr, align 8
  %strip.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  %td = alloca ptr, align 8
  %sample = alloca i16, align 2
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %strip, ptr %strip.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 3
  %0 = load i64, ptr %tif_flags, align 8
  %and = and i64 %0, 64
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFWriteCheck(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @TIFFWriteEncodedStrip.module)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %2 = load i64, ptr %strip.addr, align 8
  %3 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i64 0, i32 43
  %4 = load i64, ptr %td_nstrips, align 8
  %cmp.not = icmp ult i64 %2, %4
  br i1 %cmp.not, label %if.end12, label %if.then2

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i64 0, i32 24
  %6 = load i16, ptr %td_planarconfig, align 2
  %cmp3 = icmp eq i16 %6, 2
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then2
  %7 = load ptr, ptr %tif.addr, align 8
  %8 = load ptr, ptr %7, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %8, ptr noundef nonnull @.str.2) #3
  store i64 -1, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %if.then2
  %9 = load ptr, ptr %tif.addr, align 8
  %call7 = call i32 @TIFFGrowStrips(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @TIFFWriteEncodedStrip.module)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  store i64 -1, ptr %retval, align 8
  br label %return

if.end10:                                         ; preds = %if.end6
  %10 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i64 0, i32 2
  %11 = load i64, ptr %td_imagelength, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i64 0, i32 16
  %12 = load i64, ptr %td_rowsperstrip, align 8
  %sub = add i64 %12, -1
  %add = add i64 %11, %sub
  %13 = load ptr, ptr %td, align 8
  %td_rowsperstrip11 = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i64 0, i32 16
  %14 = load i64, ptr %td_rowsperstrip11, align 8
  %div = udiv i64 %add, %14
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i64 0, i32 42
  store i64 %div, ptr %td_stripsperimage, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %if.end
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_flags13 = getelementptr inbounds %struct.tiff, ptr %15, i64 0, i32 3
  %16 = load i64, ptr %tif_flags13, align 8
  %and14 = and i64 %16, 16
  %tobool15.not = icmp eq i64 %and14, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %if.end20

lor.lhs.false16:                                  ; preds = %if.end12
  %17 = load ptr, ptr %tif.addr, align 8
  %call17 = call i32 @TIFFWriteBufferSetup(ptr noundef %17, ptr noundef null, i64 noundef -1)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %lor.lhs.false16
  store i64 -1, ptr %retval, align 8
  br label %return

if.end20:                                         ; preds = %lor.lhs.false16, %if.end12
  %18 = load i64, ptr %strip.addr, align 8
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %19, i64 0, i32 13
  store i64 %18, ptr %tif_curstrip, align 8
  %20 = load ptr, ptr %td, align 8
  %td_stripsperimage21 = getelementptr inbounds %struct.TIFFDirectory, ptr %20, i64 0, i32 42
  %21 = load i64, ptr %td_stripsperimage21, align 8
  %rem = urem i64 %18, %21
  %td_rowsperstrip22 = getelementptr inbounds %struct.TIFFDirectory, ptr %20, i64 0, i32 16
  %22 = load i64, ptr %td_rowsperstrip22, align 8
  %mul = mul i64 %rem, %22
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 11
  store i64 %mul, ptr %tif_row, align 8
  %tif_flags23 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 3
  %24 = load i64, ptr %tif_flags23, align 8
  %and24 = and i64 %24, 32
  %cmp25 = icmp eq i64 %and24, 0
  br i1 %cmp25, label %if.then27, label %if.end33

if.then27:                                        ; preds = %if.end20
  %25 = load ptr, ptr %tif.addr, align 8
  %tif_setupencode = getelementptr inbounds %struct.tiff, ptr %25, i64 0, i32 23
  %26 = load ptr, ptr %tif_setupencode, align 8
  %call28 = call i32 %26(ptr noundef %25) #3
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then27
  store i64 -1, ptr %retval, align 8
  br label %return

if.end31:                                         ; preds = %if.then27
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_flags32 = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 3
  %28 = load i64, ptr %tif_flags32, align 8
  %or = or i64 %28, 32
  store i64 %or, ptr %tif_flags32, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.end31, %if.end20
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_flags34 = getelementptr inbounds %struct.tiff, ptr %29, i64 0, i32 3
  %30 = load i64, ptr %tif_flags34, align 8
  %and35 = and i64 %30, -4097
  store i64 %and35, ptr %tif_flags34, align 8
  %31 = load i64, ptr %strip.addr, align 8
  %32 = load ptr, ptr %td, align 8
  %td_stripsperimage36 = getelementptr inbounds %struct.TIFFDirectory, ptr %32, i64 0, i32 42
  %33 = load i64, ptr %td_stripsperimage36, align 8
  %div37 = udiv i64 %31, %33
  %conv38 = trunc i64 %div37 to i16
  store i16 %conv38, ptr %sample, align 2
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_preencode = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 24
  %35 = load ptr, ptr %tif_preencode, align 8
  %call39 = call i32 %35(ptr noundef %34, i16 noundef zeroext %conv38) #3
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end33
  store i64 -1, ptr %retval, align 8
  br label %return

if.end42:                                         ; preds = %if.end33
  %36 = load ptr, ptr %tif.addr, align 8
  %tif_encodestrip = getelementptr inbounds %struct.tiff, ptr %36, i64 0, i32 29
  %37 = load ptr, ptr %tif_encodestrip, align 8
  %38 = load ptr, ptr %data.addr, align 8
  %39 = load i64, ptr %cc.addr, align 8
  %40 = load i16, ptr %sample, align 2
  %call43 = call i32 %37(ptr noundef %36, ptr noundef %38, i64 noundef %39, i16 noundef zeroext %40) #3
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end42
  store i64 0, ptr %retval, align 8
  br label %return

if.end46:                                         ; preds = %if.end42
  %41 = load ptr, ptr %tif.addr, align 8
  %tif_postencode = getelementptr inbounds %struct.tiff, ptr %41, i64 0, i32 25
  %42 = load ptr, ptr %tif_postencode, align 8
  %call47 = call i32 %42(ptr noundef %41) #3
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  store i64 -1, ptr %retval, align 8
  br label %return

if.end50:                                         ; preds = %if.end46
  %43 = load ptr, ptr %tif.addr, align 8
  %tif_flags51 = getelementptr inbounds %struct.tiff, ptr %43, i64 0, i32 3
  %44 = load i64, ptr %tif_flags51, align 8
  %45 = load ptr, ptr %td, align 8
  %td_fillorder = getelementptr inbounds %struct.TIFFDirectory, ptr %45, i64 0, i32 13
  %46 = load i16, ptr %td_fillorder, align 2
  %conv52 = zext i16 %46 to i64
  %and53 = and i64 %44, %conv52
  %cmp54.not = icmp eq i64 %and53, 0
  br i1 %cmp54.not, label %land.lhs.true, label %if.end61

land.lhs.true:                                    ; preds = %if.end50
  %47 = load ptr, ptr %tif.addr, align 8
  %tif_flags56 = getelementptr inbounds %struct.tiff, ptr %47, i64 0, i32 3
  %48 = load i64, ptr %tif_flags56, align 8
  %and57 = and i64 %48, 256
  %cmp58 = icmp eq i64 %and57, 0
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %land.lhs.true
  %49 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %49, i64 0, i32 40
  %50 = load ptr, ptr %tif_rawdata, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %49, i64 0, i32 43
  %51 = load i64, ptr %tif_rawcc, align 8
  call void @TIFFReverseBits(ptr noundef %50, i64 noundef %51) #3
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %land.lhs.true, %if.end50
  %52 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc62 = getelementptr inbounds %struct.tiff, ptr %52, i64 0, i32 43
  %53 = load i64, ptr %tif_rawcc62, align 8
  %cmp63 = icmp sgt i64 %53, 0
  br i1 %cmp63, label %land.lhs.true65, label %if.end71

land.lhs.true65:                                  ; preds = %if.end61
  %54 = load ptr, ptr %tif.addr, align 8
  %55 = load i64, ptr %strip.addr, align 8
  %tif_rawdata66 = getelementptr inbounds %struct.tiff, ptr %54, i64 0, i32 40
  %56 = load ptr, ptr %tif_rawdata66, align 8
  %tif_rawcc67 = getelementptr inbounds %struct.tiff, ptr %54, i64 0, i32 43
  %57 = load i64, ptr %tif_rawcc67, align 8
  %call68 = call i32 @TIFFAppendToStrip(ptr noundef %54, i64 noundef %55, ptr noundef %56, i64 noundef %57)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then70, label %if.end71

if.then70:                                        ; preds = %land.lhs.true65
  store i64 -1, ptr %retval, align 8
  br label %return

if.end71:                                         ; preds = %land.lhs.true65, %if.end61
  %58 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc72 = getelementptr inbounds %struct.tiff, ptr %58, i64 0, i32 43
  store i64 0, ptr %tif_rawcc72, align 8
  %tif_rawdata73 = getelementptr inbounds %struct.tiff, ptr %58, i64 0, i32 40
  %59 = load ptr, ptr %tif_rawdata73, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %58, i64 0, i32 42
  store ptr %59, ptr %tif_rawcp, align 8
  %60 = load i64, ptr %cc.addr, align 8
  store i64 %60, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end71, %if.then70, %if.then49, %if.then45, %if.then41, %if.then30, %if.then19, %if.then9, %if.then5, %if.then
  %61 = load i64, ptr %retval, align 8
  ret i64 %61
}

declare void @TIFFReverseBits(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFAppendToStrip(ptr noundef %tif, i64 noundef %strip, ptr noundef %data, i64 noundef %cc) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %strip.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  %td = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %strip, ptr %strip.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 44
  %0 = load ptr, ptr %td_stripoffset, align 8
  %1 = load i64, ptr %strip.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 %1
  %2 = load i64, ptr %arrayidx, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_curoff = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 14
  %4 = load i64, ptr %tif_curoff, align 8
  %cmp1 = icmp eq i64 %4, 0
  br i1 %cmp1, label %if.then, label %if.end21

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr %td, align 8
  %td_stripoffset2 = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i64 0, i32 44
  %6 = load ptr, ptr %td_stripoffset2, align 8
  %7 = load i64, ptr %strip.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %6, i64 %7
  %8 = load i64, ptr %arrayidx3, align 8
  %cmp4.not = icmp eq i64 %8, 0
  br i1 %cmp4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 51
  %10 = load ptr, ptr %tif_seekproc, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 48
  %11 = load ptr, ptr %tif_clientdata, align 8
  %12 = load ptr, ptr %td, align 8
  %td_stripoffset6 = getelementptr inbounds %struct.TIFFDirectory, ptr %12, i64 0, i32 44
  %13 = load ptr, ptr %td_stripoffset6, align 8
  %14 = load i64, ptr %strip.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %13, i64 %14
  %15 = load i64, ptr %arrayidx7, align 8
  %call = call i64 %10(ptr noundef %11, i64 noundef %15, i32 noundef 0) #3
  %16 = load ptr, ptr %td, align 8
  %td_stripoffset8 = getelementptr inbounds %struct.TIFFDirectory, ptr %16, i64 0, i32 44
  %17 = load ptr, ptr %td_stripoffset8, align 8
  %18 = load i64, ptr %strip.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %17, i64 %18
  %19 = load i64, ptr %arrayidx9, align 8
  %cmp10 = icmp eq i64 %call, %19
  br i1 %cmp10, label %if.end17, label %if.then11

if.then11:                                        ; preds = %if.then5
  %20 = load ptr, ptr %tif.addr, align 8
  %21 = load ptr, ptr %20, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %20, i64 0, i32 11
  %22 = load i64, ptr %tif_row, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFAppendToStrip.module, ptr noundef nonnull @.str.16, ptr noundef %21, i64 noundef %22) #3
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc12 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 51
  %24 = load ptr, ptr %tif_seekproc12, align 8
  %tif_clientdata13 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 48
  %25 = load ptr, ptr %tif_clientdata13, align 8
  %call14 = call i64 %24(ptr noundef %25, i64 noundef 0, i32 noundef 2) #3
  %26 = load ptr, ptr %td, align 8
  %td_stripoffset15 = getelementptr inbounds %struct.TIFFDirectory, ptr %26, i64 0, i32 44
  %27 = load ptr, ptr %td_stripoffset15, align 8
  %28 = load i64, ptr %strip.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %27, i64 %28
  store i64 %call14, ptr %arrayidx16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then5, %if.else
  %29 = load ptr, ptr %td, align 8
  %td_stripoffset18 = getelementptr inbounds %struct.TIFFDirectory, ptr %29, i64 0, i32 44
  %30 = load ptr, ptr %td_stripoffset18, align 8
  %31 = load i64, ptr %strip.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %30, i64 %31
  %32 = load i64, ptr %arrayidx19, align 8
  %33 = load ptr, ptr %tif.addr, align 8
  %tif_curoff20 = getelementptr inbounds %struct.tiff, ptr %33, i64 0, i32 14
  store i64 %32, ptr %tif_curoff20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end17, %lor.lhs.false
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 50
  %35 = load ptr, ptr %tif_writeproc, align 8
  %tif_clientdata22 = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 48
  %36 = load ptr, ptr %tif_clientdata22, align 8
  %37 = load ptr, ptr %data.addr, align 8
  %38 = load i64, ptr %cc.addr, align 8
  %call23 = call i64 %35(ptr noundef %36, ptr noundef %37, i64 noundef %38) #3
  %cmp24 = icmp eq i64 %call23, %38
  br i1 %cmp24, label %if.end28, label %if.then25

if.then25:                                        ; preds = %if.end21
  %39 = load ptr, ptr %tif.addr, align 8
  %40 = load ptr, ptr %39, align 8
  %tif_row27 = getelementptr inbounds %struct.tiff, ptr %39, i64 0, i32 11
  %41 = load i64, ptr %tif_row27, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFAppendToStrip.module, ptr noundef nonnull @.str.17, ptr noundef %40, i64 noundef %41) #3
  store i32 0, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end21
  %42 = load i64, ptr %cc.addr, align 8
  %43 = load ptr, ptr %tif.addr, align 8
  %tif_curoff29 = getelementptr inbounds %struct.tiff, ptr %43, i64 0, i32 14
  %44 = load i64, ptr %tif_curoff29, align 8
  %add = add nsw i64 %44, %42
  store i64 %add, ptr %tif_curoff29, align 8
  %45 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %45, i64 0, i32 45
  %46 = load ptr, ptr %td_stripbytecount, align 8
  %47 = load i64, ptr %strip.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, ptr %46, i64 %47
  %48 = load i64, ptr %arrayidx30, align 8
  %add31 = add i64 %48, %42
  store i64 %add31, ptr %arrayidx30, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then25, %if.then11
  %49 = load i32, ptr %retval, align 4
  ret i32 %49
}

; Function Attrs: nounwind ssp uwtable
define i64 @TIFFWriteRawStrip(ptr noundef %tif, i64 noundef %strip, ptr noundef %data, i64 noundef %cc) #0 {
entry:
  %retval = alloca i64, align 8
  %tif.addr = alloca ptr, align 8
  %strip.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  %td = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %strip, ptr %strip.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 3
  %0 = load i64, ptr %tif_flags, align 8
  %and = and i64 %0, 64
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFWriteCheck(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @TIFFWriteRawStrip.module)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %2 = load i64, ptr %strip.addr, align 8
  %3 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i64 0, i32 43
  %4 = load i64, ptr %td_nstrips, align 8
  %cmp.not = icmp ult i64 %2, %4
  br i1 %cmp.not, label %if.end17, label %if.then2

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i64 0, i32 24
  %6 = load i16, ptr %td_planarconfig, align 2
  %cmp3 = icmp eq i16 %6, 2
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then2
  %7 = load ptr, ptr %tif.addr, align 8
  %8 = load ptr, ptr %7, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %8, ptr noundef nonnull @.str.2) #3
  store i64 -1, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %if.then2
  %9 = load i64, ptr %strip.addr, align 8
  %10 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i64 0, i32 42
  %11 = load i64, ptr %td_stripsperimage, align 8
  %cmp7.not = icmp ult i64 %9, %11
  br i1 %cmp7.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end6
  %12 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %12, i64 0, i32 2
  %13 = load i64, ptr %td_imagelength, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %12, i64 0, i32 16
  %14 = load i64, ptr %td_rowsperstrip, align 8
  %sub = add i64 %14, -1
  %add = add i64 %13, %sub
  %15 = load ptr, ptr %td, align 8
  %td_rowsperstrip10 = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i64 0, i32 16
  %16 = load i64, ptr %td_rowsperstrip10, align 8
  %div = udiv i64 %add, %16
  %td_stripsperimage11 = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i64 0, i32 42
  store i64 %div, ptr %td_stripsperimage11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end6
  %17 = load ptr, ptr %tif.addr, align 8
  %call13 = call i32 @TIFFGrowStrips(ptr noundef %17, i32 noundef 1, ptr noundef nonnull @TIFFWriteRawStrip.module)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  store i64 -1, ptr %retval, align 8
  br label %return

if.end17:                                         ; preds = %if.end12, %if.end
  %18 = load i64, ptr %strip.addr, align 8
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %19, i64 0, i32 13
  store i64 %18, ptr %tif_curstrip, align 8
  %20 = load ptr, ptr %td, align 8
  %td_stripsperimage18 = getelementptr inbounds %struct.TIFFDirectory, ptr %20, i64 0, i32 42
  %21 = load i64, ptr %td_stripsperimage18, align 8
  %rem = urem i64 %18, %21
  %td_rowsperstrip19 = getelementptr inbounds %struct.TIFFDirectory, ptr %20, i64 0, i32 16
  %22 = load i64, ptr %td_rowsperstrip19, align 8
  %mul = mul i64 %rem, %22
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 11
  store i64 %mul, ptr %tif_row, align 8
  %24 = load i64, ptr %strip.addr, align 8
  %25 = load ptr, ptr %data.addr, align 8
  %26 = load i64, ptr %cc.addr, align 8
  %call20 = call i32 @TIFFAppendToStrip(ptr noundef %23, i64 noundef %24, ptr noundef %25, i64 noundef %26)
  %tobool21.not = icmp eq i32 %call20, 0
  %27 = load i64, ptr %cc.addr, align 8
  %cond = select i1 %tobool21.not, i64 -1, i64 %27
  store i64 %cond, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end17, %if.then15, %if.then5, %if.then
  %28 = load i64, ptr %retval, align 8
  ret i64 %28
}

; Function Attrs: nounwind ssp uwtable
define i64 @TIFFWriteTile(ptr noundef %tif, ptr noundef %buf, i64 noundef %x, i64 noundef %y, i64 noundef %z, i16 noundef zeroext %s) #0 {
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
  %call = call i32 @TIFFCheckTile(ptr noundef %tif, i64 noundef %x, i64 noundef %y, i64 noundef %z, i16 noundef zeroext %s) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load i64, ptr %x.addr, align 8
  %2 = load i64, ptr %y.addr, align 8
  %3 = load i64, ptr %z.addr, align 8
  %4 = load i16, ptr %s.addr, align 2
  %call1 = call i64 @TIFFComputeTile(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i16 noundef zeroext %4) #3
  %5 = load ptr, ptr %buf.addr, align 8
  %call2 = call i64 @TIFFWriteEncodedTile(ptr noundef %0, i64 noundef %call1, ptr noundef %5, i64 noundef -1)
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i64 [ %call2, %if.end ], [ -1, %entry ]
  ret i64 %storemerge
}

declare i32 @TIFFCheckTile(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i16 noundef zeroext) #1

; Function Attrs: nounwind ssp uwtable
define i64 @TIFFWriteEncodedTile(ptr noundef %tif, i64 noundef %tile, ptr noundef %data, i64 noundef %cc) #0 {
entry:
  %retval = alloca i64, align 8
  %tif.addr = alloca ptr, align 8
  %tile.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  %td = alloca ptr, align 8
  %sample = alloca i16, align 2
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tile, ptr %tile.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 3
  %0 = load i64, ptr %tif_flags, align 8
  %and = and i64 %0, 64
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFWriteCheck(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @TIFFWriteEncodedTile.module)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %3 = load i64, ptr %tile.addr, align 8
  %td_nstrips = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 6, i32 43
  %4 = load i64, ptr %td_nstrips, align 8
  %cmp.not = icmp ult i64 %3, %4
  br i1 %cmp.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i64, ptr %tile.addr, align 8
  %8 = load ptr, ptr %td, align 8
  %td_nstrips3 = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i64 0, i32 43
  %9 = load i64, ptr %td_nstrips3, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFWriteEncodedTile.module, ptr noundef nonnull @.str.3, ptr noundef %6, i64 noundef %7, i64 noundef %9) #3
  store i64 -1, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_flags5 = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 3
  %11 = load i64, ptr %tif_flags5, align 8
  %and6 = and i64 %11, 16
  %tobool7.not = icmp eq i64 %and6, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %if.end12

lor.lhs.false8:                                   ; preds = %if.end4
  %12 = load ptr, ptr %tif.addr, align 8
  %call9 = call i32 @TIFFWriteBufferSetup(ptr noundef %12, ptr noundef null, i64 noundef -1)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %lor.lhs.false8
  store i64 -1, ptr %retval, align 8
  br label %return

if.end12:                                         ; preds = %lor.lhs.false8, %if.end4
  %13 = load i64, ptr %tile.addr, align 8
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_curtile = getelementptr inbounds %struct.tiff, ptr %14, i64 0, i32 19
  store i64 %13, ptr %tif_curtile, align 8
  %15 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i64 0, i32 2
  %16 = load i64, ptr %td_imagelength, align 8
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i64 0, i32 5
  %17 = load i64, ptr %td_tilelength, align 8
  %sub = add i64 %17, -1
  %add = add i64 %16, %sub
  %18 = load ptr, ptr %td, align 8
  %td_tilelength13 = getelementptr inbounds %struct.TIFFDirectory, ptr %18, i64 0, i32 5
  %19 = load i64, ptr %td_tilelength13, align 8
  %div = udiv i64 %add, %19
  %rem = urem i64 %13, %div
  %mul = mul i64 %rem, %19
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %20, i64 0, i32 11
  store i64 %mul, ptr %tif_row, align 8
  %21 = load i64, ptr %tile.addr, align 8
  %22 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i64 0, i32 1
  %23 = load i64, ptr %td_imagewidth, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i64 0, i32 4
  %24 = load i64, ptr %td_tilewidth, align 8
  %sub15 = add i64 %24, -1
  %add16 = add i64 %23, %sub15
  %25 = load ptr, ptr %td, align 8
  %td_tilewidth17 = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i64 0, i32 4
  %26 = load i64, ptr %td_tilewidth17, align 8
  %div18 = udiv i64 %add16, %26
  %rem19 = urem i64 %21, %div18
  %mul21 = mul i64 %rem19, %26
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_col = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 18
  store i64 %mul21, ptr %tif_col, align 8
  %tif_flags22 = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 3
  %28 = load i64, ptr %tif_flags22, align 8
  %and23 = and i64 %28, 32
  %cmp24 = icmp eq i64 %and23, 0
  br i1 %cmp24, label %if.then25, label %if.end31

if.then25:                                        ; preds = %if.end12
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_setupencode = getelementptr inbounds %struct.tiff, ptr %29, i64 0, i32 23
  %30 = load ptr, ptr %tif_setupencode, align 8
  %call26 = call i32 %30(ptr noundef %29) #3
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then25
  store i64 -1, ptr %retval, align 8
  br label %return

if.end29:                                         ; preds = %if.then25
  %31 = load ptr, ptr %tif.addr, align 8
  %tif_flags30 = getelementptr inbounds %struct.tiff, ptr %31, i64 0, i32 3
  %32 = load i64, ptr %tif_flags30, align 8
  %or = or i64 %32, 32
  store i64 %or, ptr %tif_flags30, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.end29, %if.end12
  %33 = load ptr, ptr %tif.addr, align 8
  %tif_flags32 = getelementptr inbounds %struct.tiff, ptr %33, i64 0, i32 3
  %34 = load i64, ptr %tif_flags32, align 8
  %and33 = and i64 %34, -4097
  store i64 %and33, ptr %tif_flags32, align 8
  %35 = load i64, ptr %tile.addr, align 8
  %36 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %36, i64 0, i32 42
  %37 = load i64, ptr %td_stripsperimage, align 8
  %div34 = udiv i64 %35, %37
  %conv = trunc i64 %div34 to i16
  store i16 %conv, ptr %sample, align 2
  %38 = load ptr, ptr %tif.addr, align 8
  %tif_preencode = getelementptr inbounds %struct.tiff, ptr %38, i64 0, i32 24
  %39 = load ptr, ptr %tif_preencode, align 8
  %call35 = call i32 %39(ptr noundef %38, i16 noundef zeroext %conv) #3
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end31
  store i64 -1, ptr %retval, align 8
  br label %return

if.end38:                                         ; preds = %if.end31
  %40 = load i64, ptr %cc.addr, align 8
  %41 = load ptr, ptr %tif.addr, align 8
  %tif_tilesize = getelementptr inbounds %struct.tiff, ptr %41, i64 0, i32 20
  %42 = load i64, ptr %tif_tilesize, align 8
  %cmp39 = icmp ugt i64 %40, %42
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end38
  %43 = load ptr, ptr %tif.addr, align 8
  %tif_tilesize42 = getelementptr inbounds %struct.tiff, ptr %43, i64 0, i32 20
  %44 = load i64, ptr %tif_tilesize42, align 8
  store i64 %44, ptr %cc.addr, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end38
  %45 = load ptr, ptr %tif.addr, align 8
  %tif_encodetile = getelementptr inbounds %struct.tiff, ptr %45, i64 0, i32 31
  %46 = load ptr, ptr %tif_encodetile, align 8
  %47 = load ptr, ptr %data.addr, align 8
  %48 = load i64, ptr %cc.addr, align 8
  %49 = load i16, ptr %sample, align 2
  %call44 = call i32 %46(ptr noundef %45, ptr noundef %47, i64 noundef %48, i16 noundef zeroext %49) #3
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end43
  store i64 0, ptr %retval, align 8
  br label %return

if.end47:                                         ; preds = %if.end43
  %50 = load ptr, ptr %tif.addr, align 8
  %tif_postencode = getelementptr inbounds %struct.tiff, ptr %50, i64 0, i32 25
  %51 = load ptr, ptr %tif_postencode, align 8
  %call48 = call i32 %51(ptr noundef %50) #3
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end47
  store i64 -1, ptr %retval, align 8
  br label %return

if.end51:                                         ; preds = %if.end47
  %52 = load ptr, ptr %tif.addr, align 8
  %tif_flags52 = getelementptr inbounds %struct.tiff, ptr %52, i64 0, i32 3
  %53 = load i64, ptr %tif_flags52, align 8
  %54 = load ptr, ptr %td, align 8
  %td_fillorder = getelementptr inbounds %struct.TIFFDirectory, ptr %54, i64 0, i32 13
  %55 = load i16, ptr %td_fillorder, align 2
  %conv53 = zext i16 %55 to i64
  %and54 = and i64 %53, %conv53
  %cmp55.not = icmp eq i64 %and54, 0
  br i1 %cmp55.not, label %land.lhs.true, label %if.end62

land.lhs.true:                                    ; preds = %if.end51
  %56 = load ptr, ptr %tif.addr, align 8
  %tif_flags57 = getelementptr inbounds %struct.tiff, ptr %56, i64 0, i32 3
  %57 = load i64, ptr %tif_flags57, align 8
  %and58 = and i64 %57, 256
  %cmp59 = icmp eq i64 %and58, 0
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %land.lhs.true
  %58 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %58, i64 0, i32 40
  %59 = load ptr, ptr %tif_rawdata, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %58, i64 0, i32 43
  %60 = load i64, ptr %tif_rawcc, align 8
  call void @TIFFReverseBits(ptr noundef %59, i64 noundef %60) #3
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %land.lhs.true, %if.end51
  %61 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc63 = getelementptr inbounds %struct.tiff, ptr %61, i64 0, i32 43
  %62 = load i64, ptr %tif_rawcc63, align 8
  %cmp64 = icmp sgt i64 %62, 0
  br i1 %cmp64, label %land.lhs.true66, label %if.end72

land.lhs.true66:                                  ; preds = %if.end62
  %63 = load ptr, ptr %tif.addr, align 8
  %64 = load i64, ptr %tile.addr, align 8
  %tif_rawdata67 = getelementptr inbounds %struct.tiff, ptr %63, i64 0, i32 40
  %65 = load ptr, ptr %tif_rawdata67, align 8
  %tif_rawcc68 = getelementptr inbounds %struct.tiff, ptr %63, i64 0, i32 43
  %66 = load i64, ptr %tif_rawcc68, align 8
  %call69 = call i32 @TIFFAppendToStrip(ptr noundef %63, i64 noundef %64, ptr noundef %65, i64 noundef %66)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then71, label %if.end72

if.then71:                                        ; preds = %land.lhs.true66
  store i64 -1, ptr %retval, align 8
  br label %return

if.end72:                                         ; preds = %land.lhs.true66, %if.end62
  %67 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc73 = getelementptr inbounds %struct.tiff, ptr %67, i64 0, i32 43
  store i64 0, ptr %tif_rawcc73, align 8
  %tif_rawdata74 = getelementptr inbounds %struct.tiff, ptr %67, i64 0, i32 40
  %68 = load ptr, ptr %tif_rawdata74, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %67, i64 0, i32 42
  store ptr %68, ptr %tif_rawcp, align 8
  %69 = load i64, ptr %cc.addr, align 8
  store i64 %69, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end72, %if.then71, %if.then50, %if.then46, %if.then37, %if.then28, %if.then11, %if.then2, %if.then
  %70 = load i64, ptr %retval, align 8
  ret i64 %70
}

declare i64 @TIFFComputeTile(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i16 noundef zeroext) #1

; Function Attrs: nounwind ssp uwtable
define i64 @TIFFWriteRawTile(ptr noundef %tif, i64 noundef %tile, ptr noundef %data, i64 noundef %cc) #0 {
entry:
  %retval = alloca i64, align 8
  %tif.addr = alloca ptr, align 8
  %tile.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tile, ptr %tile.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 3
  %0 = load i64, ptr %tif_flags, align 8
  %and = and i64 %0, 64
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFWriteCheck(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @TIFFWriteRawTile.module)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %2 = load i64, ptr %tile.addr, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %td_nstrips = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 6, i32 43
  %4 = load i64, ptr %td_nstrips, align 8
  %cmp.not = icmp ult i64 %2, %4
  br i1 %cmp.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i64, ptr %tile.addr, align 8
  %td_nstrips4 = getelementptr inbounds %struct.tiff, ptr %5, i64 0, i32 6, i32 43
  %8 = load i64, ptr %td_nstrips4, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFWriteRawTile.module, ptr noundef nonnull @.str.3, ptr noundef %6, i64 noundef %7, i64 noundef %8) #3
  store i64 -1, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %9 = load ptr, ptr %tif.addr, align 8
  %10 = load i64, ptr %tile.addr, align 8
  %11 = load ptr, ptr %data.addr, align 8
  %12 = load i64, ptr %cc.addr, align 8
  %call6 = call i32 @TIFFAppendToStrip(ptr noundef %9, i64 noundef %10, ptr noundef %11, i64 noundef %12)
  %tobool7.not = icmp eq i32 %call6, 0
  %13 = load i64, ptr %cc.addr, align 8
  %cond = select i1 %tobool7.not, i64 -1, i64 %13
  store i64 %cond, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then2, %if.then
  %14 = load i64, ptr %retval, align 8
  ret i64 %14
}

declare void @_TIFFfree(ptr noundef) #1

declare ptr @_TIFFmalloc(i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFFlushData1(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 43
  %0 = load i64, ptr %tif_rawcc, align 8
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 3
  %2 = load i64, ptr %tif_flags, align 8
  %td_fillorder = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 6, i32 13
  %3 = load i16, ptr %td_fillorder, align 2
  %conv = zext i16 %3 to i64
  %and = and i64 %2, %conv
  %cmp1.not = icmp eq i64 %and, 0
  br i1 %cmp1.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_flags3 = getelementptr inbounds %struct.tiff, ptr %4, i64 0, i32 3
  %5 = load i64, ptr %tif_flags3, align 8
  %and4 = and i64 %5, 256
  %cmp5 = icmp eq i64 %and4, 0
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 40
  %7 = load ptr, ptr %tif_rawdata, align 8
  %tif_rawcc8 = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 43
  %8 = load i64, ptr %tif_rawcc8, align 8
  call void @TIFFReverseBits(ptr noundef %7, i64 noundef %8) #3
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true, %if.then
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_flags9 = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 3
  %10 = load i64, ptr %tif_flags9, align 8
  %and10 = and i64 %10, 1024
  %cmp11.not = icmp eq i64 %and10, 0
  %11 = load ptr, ptr %tif.addr, align 8
  %tif_curtile = getelementptr inbounds %struct.tiff, ptr %11, i64 0, i32 19
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %12, i64 0, i32 13
  %cond.in = select i1 %cmp11.not, ptr %tif_curstrip, ptr %tif_curtile
  %cond = load i64, ptr %cond.in, align 8
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata13 = getelementptr inbounds %struct.tiff, ptr %13, i64 0, i32 40
  %14 = load ptr, ptr %tif_rawdata13, align 8
  %tif_rawcc14 = getelementptr inbounds %struct.tiff, ptr %13, i64 0, i32 43
  %15 = load i64, ptr %tif_rawcc14, align 8
  %call = call i32 @TIFFAppendToStrip(ptr noundef %9, i64 noundef %cond, ptr noundef %14, i64 noundef %15)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end16

if.end16:                                         ; preds = %if.end
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc17 = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 43
  store i64 0, ptr %tif_rawcc17, align 8
  %tif_rawdata18 = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 40
  %17 = load ptr, ptr %tif_rawdata18, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 42
  store ptr %17, ptr %tif_rawcp, align 8
  br label %return

return:                                           ; preds = %entry, %if.end16, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ 1, %if.end16 ], [ 1, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define void @TIFFSetWriteOffset(ptr noundef %tif, i64 noundef %off) #0 {
entry:
  %tif_curoff = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 14
  store i64 %off, ptr %tif_curoff, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFSetupStrips(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 3
  %0 = load i64, ptr %tif_flags, align 8
  %and = and i64 %0, 1024
  %cmp.not = icmp eq i64 %and, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_dir1 = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 6
  %2 = load i64, ptr %tif_dir1, align 8
  %and2 = and i64 %2, 4
  %tobool.not = icmp eq i64 %and2, 0
  br i1 %tobool.not, label %cond.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %3 = load ptr, ptr %tif.addr, align 8
  %td_imagelength = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 6, i32 2
  %4 = load i64, ptr %td_imagelength, align 8
  %cmp4 = icmp eq i64 %4, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %5 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i64 0, i32 15
  %6 = load i16, ptr %td_samplesperpixel, align 2
  %conv = zext i16 %6 to i64
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then
  %7 = load ptr, ptr %tif.addr, align 8
  %call = call i64 @TIFFNumberOfTiles(ptr noundef %7) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ]
  %8 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i64 0, i32 42
  store i64 %cond, ptr %td_stripsperimage, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_dir5 = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 6
  %10 = load i64, ptr %tif_dir5, align 8
  %and8 = and i64 %10, 131072
  %tobool9.not = icmp eq i64 %and8, 0
  br i1 %tobool9.not, label %cond.false18, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.else
  %11 = load ptr, ptr %tif.addr, align 8
  %td_imagelength12 = getelementptr inbounds %struct.tiff, ptr %11, i64 0, i32 6, i32 2
  %12 = load i64, ptr %td_imagelength12, align 8
  %cmp13 = icmp eq i64 %12, 0
  br i1 %cmp13, label %cond.true15, label %cond.false18

cond.true15:                                      ; preds = %land.lhs.true10
  %13 = load ptr, ptr %td, align 8
  %td_samplesperpixel16 = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i64 0, i32 15
  %14 = load i16, ptr %td_samplesperpixel16, align 2
  %conv17 = zext i16 %14 to i64
  br label %cond.end20

cond.false18:                                     ; preds = %land.lhs.true10, %if.else
  %15 = load ptr, ptr %tif.addr, align 8
  %call19 = call i64 @TIFFNumberOfStrips(ptr noundef %15) #3
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false18, %cond.true15
  %cond21 = phi i64 [ %conv17, %cond.true15 ], [ %call19, %cond.false18 ]
  %16 = load ptr, ptr %td, align 8
  %td_stripsperimage22 = getelementptr inbounds %struct.TIFFDirectory, ptr %16, i64 0, i32 42
  store i64 %cond21, ptr %td_stripsperimage22, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end20, %cond.end
  %17 = load ptr, ptr %td, align 8
  %td_stripsperimage23 = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i64 0, i32 42
  %18 = load i64, ptr %td_stripsperimage23, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i64 0, i32 43
  store i64 %18, ptr %td_nstrips, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i64 0, i32 24
  %19 = load i16, ptr %td_planarconfig, align 2
  %cmp25 = icmp eq i16 %19, 2
  br i1 %cmp25, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end
  %20 = load ptr, ptr %td, align 8
  %td_samplesperpixel28 = getelementptr inbounds %struct.TIFFDirectory, ptr %20, i64 0, i32 15
  %21 = load i16, ptr %td_samplesperpixel28, align 2
  %conv29 = zext i16 %21 to i64
  %td_stripsperimage30 = getelementptr inbounds %struct.TIFFDirectory, ptr %20, i64 0, i32 42
  %22 = load i64, ptr %td_stripsperimage30, align 8
  %div = udiv i64 %22, %conv29
  store i64 %div, ptr %td_stripsperimage30, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end
  %23 = load ptr, ptr %td, align 8
  %td_nstrips32 = getelementptr inbounds %struct.TIFFDirectory, ptr %23, i64 0, i32 43
  %24 = load i64, ptr %td_nstrips32, align 8
  %mul = shl i64 %24, 3
  %call33 = call ptr @_TIFFmalloc(i64 noundef %mul) #3
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %23, i64 0, i32 44
  store ptr %call33, ptr %td_stripoffset, align 8
  %25 = load ptr, ptr %td, align 8
  %td_nstrips34 = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i64 0, i32 43
  %26 = load i64, ptr %td_nstrips34, align 8
  %mul35 = shl i64 %26, 3
  %call36 = call ptr @_TIFFmalloc(i64 noundef %mul35) #3
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i64 0, i32 45
  store ptr %call36, ptr %td_stripbytecount, align 8
  %27 = load ptr, ptr %td, align 8
  %td_stripoffset37 = getelementptr inbounds %struct.TIFFDirectory, ptr %27, i64 0, i32 44
  %28 = load ptr, ptr %td_stripoffset37, align 8
  %cmp38 = icmp eq ptr %28, null
  br i1 %cmp38, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end31
  %29 = load ptr, ptr %td, align 8
  %td_stripbytecount40 = getelementptr inbounds %struct.TIFFDirectory, ptr %29, i64 0, i32 45
  %30 = load ptr, ptr %td_stripbytecount40, align 8
  %cmp41 = icmp eq ptr %30, null
  br i1 %cmp41, label %return, label %if.end44

if.end44:                                         ; preds = %lor.lhs.false
  %31 = load ptr, ptr %td, align 8
  %td_stripoffset45 = getelementptr inbounds %struct.TIFFDirectory, ptr %31, i64 0, i32 44
  %32 = load ptr, ptr %td_stripoffset45, align 8
  %td_nstrips46 = getelementptr inbounds %struct.TIFFDirectory, ptr %31, i64 0, i32 43
  %33 = load i64, ptr %td_nstrips46, align 8
  %mul47 = shl i64 %33, 3
  call void @_TIFFmemset(ptr noundef %32, i32 noundef 0, i64 noundef %mul47) #3
  %34 = load ptr, ptr %td, align 8
  %td_stripbytecount48 = getelementptr inbounds %struct.TIFFDirectory, ptr %34, i64 0, i32 45
  %35 = load ptr, ptr %td_stripbytecount48, align 8
  %td_nstrips49 = getelementptr inbounds %struct.TIFFDirectory, ptr %34, i64 0, i32 43
  %36 = load i64, ptr %td_nstrips49, align 8
  %mul50 = shl i64 %36, 3
  call void @_TIFFmemset(ptr noundef %35, i32 noundef 0, i64 noundef %mul50) #3
  %37 = load ptr, ptr %tif.addr, align 8
  %tif_dir51 = getelementptr inbounds %struct.tiff, ptr %37, i64 0, i32 6
  %38 = load i64, ptr %tif_dir51, align 8
  %tif_dir54 = getelementptr inbounds %struct.tiff, ptr %37, i64 0, i32 6
  %or57 = or i64 %38, 50331648
  store i64 %or57, ptr %tif_dir54, align 8
  br label %return

return:                                           ; preds = %if.end31, %lor.lhs.false, %if.end44
  %storemerge = phi i32 [ 1, %if.end44 ], [ 0, %lor.lhs.false ], [ 0, %if.end31 ]
  ret i32 %storemerge
}

declare i64 @TIFFTileSize(ptr noundef) #1

declare i64 @TIFFScanlineSize(ptr noundef) #1

declare i64 @TIFFNumberOfTiles(ptr noundef) #1

declare i64 @TIFFNumberOfStrips(ptr noundef) #1

declare void @_TIFFmemset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare ptr @_TIFFrealloc(ptr noundef, i64 noundef) #1

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
