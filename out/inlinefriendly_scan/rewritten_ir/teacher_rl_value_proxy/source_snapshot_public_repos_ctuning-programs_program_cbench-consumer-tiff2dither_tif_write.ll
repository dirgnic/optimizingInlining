; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_rl_value_proxy/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-tiff2dither_tif_write.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2dither/tif_write.c"
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

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFWriteScanline(ptr noundef %tif, ptr noundef %buf, i32 noundef %row, i16 noundef zeroext %sample) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %row.addr = alloca i32, align 4
  %sample.addr = alloca i16, align 2
  %td = alloca ptr, align 8
  %imagegrew = alloca i32, align 4
  %strip = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %row, ptr %row.addr, align 4
  store i16 %sample, ptr %sample.addr, align 2
  store i32 0, ptr %imagegrew, align 4
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 3
  %0 = load i32, ptr %tif_flags, align 8
  %and = and i32 %0, 64
  %tobool.not = icmp eq i32 %and, 0
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
  %3 = load i32, ptr %tif_flags2, align 8
  %and3 = and i32 %3, 16
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %if.end9

lor.lhs.false5:                                   ; preds = %if.end
  %4 = load ptr, ptr %tif.addr, align 8
  %call6 = call i32 @TIFFWriteBufferSetup(ptr noundef %4, ptr noundef null, i32 noundef -1)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false5
  store i32 -1, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %lor.lhs.false5, %if.end
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %5, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %6 = load i32, ptr %row.addr, align 4
  %td_imagelength = getelementptr inbounds %struct.tiff, ptr %5, i64 0, i32 6, i32 2
  %7 = load i32, ptr %td_imagelength, align 4
  %cmp.not = icmp ult i32 %6, %7
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
  %12 = load i32, ptr %row.addr, align 4
  %add = add i32 %12, 1
  %13 = load ptr, ptr %td, align 8
  %td_imagelength15 = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i64 0, i32 2
  store i32 %add, ptr %td_imagelength15, align 4
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
  %conv32 = zext i16 %24 to i32
  %25 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i64 0, i32 42
  %26 = load i32, ptr %td_stripsperimage, align 8
  %mul = mul i32 %26, %conv32
  %27 = load i32, ptr %row.addr, align 4
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i64 0, i32 16
  %28 = load i32, ptr %td_rowsperstrip, align 4
  %div = udiv i32 %27, %28
  %add33 = add i32 %mul, %div
  br label %if.end36

if.else:                                          ; preds = %if.end16
  %29 = load i32, ptr %row.addr, align 4
  %30 = load ptr, ptr %td, align 8
  %td_rowsperstrip34 = getelementptr inbounds %struct.TIFFDirectory, ptr %30, i64 0, i32 16
  %31 = load i32, ptr %td_rowsperstrip34, align 4
  %div35 = udiv i32 %29, %31
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.end31
  %storemerge = phi i32 [ %div35, %if.else ], [ %add33, %if.end31 ]
  store i32 %storemerge, ptr %strip, align 4
  %32 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %32, i64 0, i32 13
  %33 = load i32, ptr %tif_curstrip, align 8
  %cmp37.not = icmp eq i32 %storemerge, %33
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
  %35 = load i32, ptr %strip, align 4
  %36 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip44 = getelementptr inbounds %struct.tiff, ptr %36, i64 0, i32 13
  store i32 %35, ptr %tif_curstrip44, align 8
  %37 = load ptr, ptr %td, align 8
  %td_stripsperimage45 = getelementptr inbounds %struct.TIFFDirectory, ptr %37, i64 0, i32 42
  %38 = load i32, ptr %td_stripsperimage45, align 8
  %cmp46.not = icmp ult i32 %35, %38
  %39 = load i32, ptr %imagegrew, align 4
  %tobool48.not = icmp eq i32 %39, 0
  %or.cond = select i1 %cmp46.not, i1 true, i1 %tobool48.not
  br i1 %or.cond, label %if.end56, label %if.then49

if.then49:                                        ; preds = %if.end43
  %40 = load ptr, ptr %td, align 8
  %td_imagelength50 = getelementptr inbounds %struct.TIFFDirectory, ptr %40, i64 0, i32 2
  %41 = load i32, ptr %td_imagelength50, align 4
  %td_rowsperstrip51 = getelementptr inbounds %struct.TIFFDirectory, ptr %40, i64 0, i32 16
  %42 = load i32, ptr %td_rowsperstrip51, align 4
  %sub = add i32 %42, -1
  %add52 = add i32 %41, %sub
  %43 = load ptr, ptr %td, align 8
  %td_rowsperstrip53 = getelementptr inbounds %struct.TIFFDirectory, ptr %43, i64 0, i32 16
  %44 = load i32, ptr %td_rowsperstrip53, align 4
  %div54 = udiv i32 %add52, %44
  %td_stripsperimage55 = getelementptr inbounds %struct.TIFFDirectory, ptr %43, i64 0, i32 42
  store i32 %div54, ptr %td_stripsperimage55, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then49, %if.end43
  %45 = load i32, ptr %strip, align 4
  %46 = load ptr, ptr %td, align 8
  %td_stripsperimage57 = getelementptr inbounds %struct.TIFFDirectory, ptr %46, i64 0, i32 42
  %47 = load i32, ptr %td_stripsperimage57, align 8
  %rem = urem i32 %45, %47
  %td_rowsperstrip58 = getelementptr inbounds %struct.TIFFDirectory, ptr %46, i64 0, i32 16
  %48 = load i32, ptr %td_rowsperstrip58, align 4
  %mul59 = mul i32 %rem, %48
  %49 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %49, i64 0, i32 11
  store i32 %mul59, ptr %tif_row, align 8
  %tif_flags60 = getelementptr inbounds %struct.tiff, ptr %49, i64 0, i32 3
  %50 = load i32, ptr %tif_flags60, align 8
  %and61 = and i32 %50, 32
  %cmp62 = icmp eq i32 %and61, 0
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
  %54 = load i32, ptr %tif_flags69, align 8
  %or = or i32 %54, 32
  store i32 %or, ptr %tif_flags69, align 8
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
  %59 = load i32, ptr %tif_flags75, align 8
  %or76 = or i32 %59, 4096
  store i32 %or76, ptr %tif_flags75, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.end74, %if.end36
  %60 = load i32, ptr %strip, align 4
  %61 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %61, i64 0, i32 43
  %62 = load i32, ptr %td_nstrips, align 4
  %cmp78.not = icmp ult i32 %60, %62
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
  %64 = load i32, ptr %row.addr, align 4
  %65 = load ptr, ptr %tif.addr, align 8
  %tif_row85 = getelementptr inbounds %struct.tiff, ptr %65, i64 0, i32 11
  %66 = load i32, ptr %tif_row85, align 8
  %cmp86.not = icmp eq i32 %64, %66
  br i1 %cmp86.not, label %if.end106, label %if.then88

if.then88:                                        ; preds = %if.end84
  %67 = load i32, ptr %row.addr, align 4
  %68 = load ptr, ptr %tif.addr, align 8
  %tif_row89 = getelementptr inbounds %struct.tiff, ptr %68, i64 0, i32 11
  %69 = load i32, ptr %tif_row89, align 8
  %cmp90 = icmp ult i32 %67, %69
  br i1 %cmp90, label %if.then92, label %if.end98

if.then92:                                        ; preds = %if.then88
  %70 = load i32, ptr %strip, align 4
  %71 = load ptr, ptr %td, align 8
  %td_stripsperimage93 = getelementptr inbounds %struct.TIFFDirectory, ptr %71, i64 0, i32 42
  %72 = load i32, ptr %td_stripsperimage93, align 8
  %rem94 = urem i32 %70, %72
  %td_rowsperstrip95 = getelementptr inbounds %struct.TIFFDirectory, ptr %71, i64 0, i32 16
  %73 = load i32, ptr %td_rowsperstrip95, align 4
  %mul96 = mul i32 %rem94, %73
  %74 = load ptr, ptr %tif.addr, align 8
  %tif_row97 = getelementptr inbounds %struct.tiff, ptr %74, i64 0, i32 11
  store i32 %mul96, ptr %tif_row97, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %74, i64 0, i32 40
  %75 = load ptr, ptr %tif_rawdata, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %74, i64 0, i32 42
  store ptr %75, ptr %tif_rawcp, align 8
  br label %if.end98

if.end98:                                         ; preds = %if.then92, %if.then88
  %76 = load ptr, ptr %tif.addr, align 8
  %tif_seek = getelementptr inbounds %struct.tiff, ptr %76, i64 0, i32 33
  %77 = load ptr, ptr %tif_seek, align 8
  %78 = load i32, ptr %row.addr, align 4
  %tif_row99 = getelementptr inbounds %struct.tiff, ptr %76, i64 0, i32 11
  %79 = load i32, ptr %tif_row99, align 8
  %sub100 = sub i32 %78, %79
  %call101 = call i32 %77(ptr noundef %76, i32 noundef %sub100) #3
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.then103, label %if.end104

if.then103:                                       ; preds = %if.end98
  store i32 -1, ptr %retval, align 4
  br label %return

if.end104:                                        ; preds = %if.end98
  %80 = load i32, ptr %row.addr, align 4
  %81 = load ptr, ptr %tif.addr, align 8
  %tif_row105 = getelementptr inbounds %struct.tiff, ptr %81, i64 0, i32 11
  store i32 %80, ptr %tif_row105, align 8
  br label %if.end106

if.end106:                                        ; preds = %if.end104, %if.end84
  %82 = load ptr, ptr %tif.addr, align 8
  %tif_encoderow = getelementptr inbounds %struct.tiff, ptr %82, i64 0, i32 27
  %83 = load ptr, ptr %tif_encoderow, align 8
  %84 = load ptr, ptr %buf.addr, align 8
  %tif_scanlinesize = getelementptr inbounds %struct.tiff, ptr %82, i64 0, i32 38
  %85 = load i32, ptr %tif_scanlinesize, align 8
  %86 = load i16, ptr %sample.addr, align 2
  %call107 = call i32 %83(ptr noundef %82, ptr noundef %84, i32 noundef %85, i16 noundef zeroext %86) #3
  %87 = load ptr, ptr %tif.addr, align 8
  %tif_row108 = getelementptr inbounds %struct.tiff, ptr %87, i64 0, i32 11
  %88 = load i32, ptr %tif_row108, align 8
  %inc = add i32 %88, 1
  store i32 %inc, ptr %tif_row108, align 8
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
  %6 = load i32, ptr %tif_flags, align 8
  %and = lshr i32 %6, 10
  %and.lobit = and i32 %and, 1
  %tobool.not = icmp eq i32 %4, %and.lobit
  br i1 %tobool.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  %7 = load ptr, ptr %tif.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = load i32, ptr %tiles.addr, align 4
  %tobool4.not = icmp eq i32 %9, 0
  %cond = select i1 %tobool4.not, ptr @.str.7, ptr @.str.6
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %8, ptr noundef nonnull %cond) #3
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 6
  %11 = load i64, ptr %tif_dir, align 8
  %and6 = and i64 %11, 2
  %tobool7.not = icmp eq i64 %and6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  %12 = load ptr, ptr %module.addr, align 8
  %13 = load ptr, ptr %tif.addr, align 8
  %14 = load ptr, ptr %13, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %12, ptr noundef nonnull @.str.8, ptr noundef %14) #3
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end5
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_dir11 = getelementptr inbounds %struct.tiff, ptr %15, i64 0, i32 6
  %16 = load i64, ptr %tif_dir11, align 8
  %and14 = and i64 %16, 1048576
  %tobool15.not = icmp eq i64 %and14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end10
  %17 = load ptr, ptr %module.addr, align 8
  %18 = load ptr, ptr %tif.addr, align 8
  %19 = load ptr, ptr %18, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %17, ptr noundef nonnull @.str.9, ptr noundef %19) #3
  store i32 0, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end10
  %20 = load ptr, ptr %tif.addr, align 8
  %td_stripoffset = getelementptr inbounds %struct.tiff, ptr %20, i64 0, i32 6, i32 44
  %21 = load ptr, ptr %td_stripoffset, align 8
  %cmp20 = icmp eq ptr %21, null
  br i1 %cmp20, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %if.end18
  %22 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFSetupStrips(ptr noundef %22)
  %tobool22.not = icmp eq i32 %call, 0
  br i1 %tobool22.not, label %if.then23, label %if.end31

if.then23:                                        ; preds = %land.lhs.true
  %23 = load ptr, ptr %tif.addr, align 8
  %td_nstrips = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 6, i32 43
  store i32 0, ptr %td_nstrips, align 4
  %24 = load ptr, ptr %module.addr, align 8
  %25 = load ptr, ptr %23, align 8
  %tif_flags26 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 3
  %26 = load i32, ptr %tif_flags26, align 8
  %and27 = and i32 %26, 1024
  %cmp28.not = icmp eq i32 %and27, 0
  %cond30 = select i1 %cmp28.not, ptr @.str.12, ptr @.str.11
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %24, ptr noundef nonnull @.str.10, ptr noundef %25, ptr noundef nonnull %cond30) #3
  store i32 0, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %land.lhs.true, %if.end18
  %27 = load ptr, ptr %tif.addr, align 8
  %call32 = call i32 @TIFFTileSize(ptr noundef %27) #3
  %tif_tilesize = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 20
  store i32 %call32, ptr %tif_tilesize, align 4
  %call33 = call i32 @TIFFScanlineSize(ptr noundef %27) #3
  %tif_scanlinesize = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 38
  store i32 %call33, ptr %tif_scanlinesize, align 8
  %28 = load ptr, ptr %tif.addr, align 8
  %tif_flags34 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 3
  %29 = load i32, ptr %tif_flags34, align 8
  %or = or i32 %29, 64
  store i32 %or, ptr %tif_flags34, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.then23, %if.then16, %if.then8, %if.then2, %if.then
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFWriteBufferSetup(ptr noundef %tif, ptr noundef %bp, i32 noundef %size) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 40
  %0 = load ptr, ptr %tif_rawdata, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 3
  %2 = load i32, ptr %tif_flags, align 8
  %and = and i32 %2, 512
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata3 = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 40
  %4 = load ptr, ptr %tif_rawdata3, align 8
  call void @_TIFFfree(ptr noundef %4) #3
  %tif_flags4 = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %tif_flags4, align 8
  %and5 = and i32 %5, -513
  store i32 %and5, ptr %tif_flags4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata6 = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 40
  store ptr null, ptr %tif_rawdata6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  %7 = load i32, ptr %size.addr, align 4
  %cmp = icmp eq i32 %7, -1
  br i1 %cmp, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.end7
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_flags9 = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 3
  %9 = load i32, ptr %tif_flags9, align 8
  %and10 = and i32 %9, 1024
  %cmp11.not = icmp eq i32 %and10, 0
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_tilesize = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 20
  %11 = load ptr, ptr %tif.addr, align 8
  %tif_scanlinesize = getelementptr inbounds %struct.tiff, ptr %11, i64 0, i32 38
  %cond.in = select i1 %cmp11.not, ptr %tif_scanlinesize, ptr %tif_tilesize
  %cond = load i32, ptr %cond.in, align 4
  %cmp12 = icmp slt i32 %cond, 8192
  %storemerge1 = select i1 %cmp12, i32 8192, i32 %cond
  store i32 %storemerge1, ptr %size.addr, align 4
  store ptr null, ptr %bp.addr, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %if.end7
  %12 = load ptr, ptr %bp.addr, align 8
  %cmp16 = icmp eq ptr %12, null
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end15
  %13 = load i32, ptr %size.addr, align 4
  %call = call ptr @_TIFFmalloc(i32 noundef %13) #3
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
  %17 = load i32, ptr %tif_flags21, align 8
  %or = or i32 %17, 512
  store i32 %or, ptr %tif_flags21, align 8
  br label %if.end24

if.else:                                          ; preds = %if.end15
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_flags22 = getelementptr inbounds %struct.tiff, ptr %18, i64 0, i32 3
  %19 = load i32, ptr %tif_flags22, align 8
  %and23 = and i32 %19, -513
  store i32 %and23, ptr %tif_flags22, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end20
  %20 = load ptr, ptr %bp.addr, align 8
  %21 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata25 = getelementptr inbounds %struct.tiff, ptr %21, i64 0, i32 40
  store ptr %20, ptr %tif_rawdata25, align 8
  %22 = load i32, ptr %size.addr, align 4
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %21, i64 0, i32 41
  store i32 %22, ptr %tif_rawdatasize, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %21, i64 0, i32 43
  store i32 0, ptr %tif_rawcc, align 8
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata26 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 40
  %24 = load ptr, ptr %tif_rawdata26, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 42
  store ptr %24, ptr %tif_rawcp, align 8
  %tif_flags27 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 3
  %25 = load i32, ptr %tif_flags27, align 8
  %or28 = or i32 %25, 16
  store i32 %or28, ptr %tif_flags27, align 8
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
  %3 = load i32, ptr %td_nstrips, align 4
  %4 = load i32, ptr %delta.addr, align 4
  %add = add i32 %3, %4
  %mul = shl i32 %add, 2
  %call = call ptr @_TIFFrealloc(ptr noundef %2, i32 noundef %mul) #3
  %5 = load ptr, ptr %td, align 8
  %td_stripoffset5 = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i64 0, i32 44
  store ptr %call, ptr %td_stripoffset5, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i64 0, i32 45
  %6 = load ptr, ptr %td_stripbytecount, align 8
  %td_nstrips6 = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i64 0, i32 43
  %7 = load i32, ptr %td_nstrips6, align 4
  %8 = load i32, ptr %delta.addr, align 4
  %add7 = add i32 %7, %8
  %mul9 = shl i32 %add7, 2
  %call11 = call ptr @_TIFFrealloc(ptr noundef %6, i32 noundef %mul9) #3
  %9 = load ptr, ptr %td, align 8
  %td_stripbytecount12 = getelementptr inbounds %struct.TIFFDirectory, ptr %9, i64 0, i32 45
  store ptr %call11, ptr %td_stripbytecount12, align 8
  %td_stripoffset13 = getelementptr inbounds %struct.TIFFDirectory, ptr %9, i64 0, i32 44
  %10 = load ptr, ptr %td_stripoffset13, align 8
  %cmp14 = icmp eq ptr %10, null
  br i1 %cmp14, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %11 = load ptr, ptr %td, align 8
  %td_stripbytecount16 = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i64 0, i32 45
  %12 = load ptr, ptr %td_stripbytecount16, align 8
  %cmp17 = icmp eq ptr %12, null
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  %13 = load ptr, ptr %td, align 8
  %td_nstrips19 = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i64 0, i32 43
  store i32 0, ptr %td_nstrips19, align 4
  %14 = load ptr, ptr %module.addr, align 8
  %15 = load ptr, ptr %tif.addr, align 8
  %16 = load ptr, ptr %15, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %14, ptr noundef nonnull @.str.15, ptr noundef %16) #3
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %17 = load ptr, ptr %td, align 8
  %td_stripoffset20 = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i64 0, i32 44
  %18 = load ptr, ptr %td_stripoffset20, align 8
  %td_nstrips21 = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i64 0, i32 43
  %19 = load i32, ptr %td_nstrips21, align 4
  %idx.ext = zext i32 %19 to i64
  %add.ptr = getelementptr inbounds i32, ptr %18, i64 %idx.ext
  %20 = load i32, ptr %delta.addr, align 4
  %mul23 = shl i32 %20, 2
  call void @_TIFFmemset(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %mul23) #3
  %21 = load ptr, ptr %td, align 8
  %td_stripbytecount25 = getelementptr inbounds %struct.TIFFDirectory, ptr %21, i64 0, i32 45
  %22 = load ptr, ptr %td_stripbytecount25, align 8
  %td_nstrips26 = getelementptr inbounds %struct.TIFFDirectory, ptr %21, i64 0, i32 43
  %23 = load i32, ptr %td_nstrips26, align 4
  %idx.ext27 = zext i32 %23 to i64
  %add.ptr28 = getelementptr inbounds i32, ptr %22, i64 %idx.ext27
  %24 = load i32, ptr %delta.addr, align 4
  %mul30 = shl i32 %24, 2
  call void @_TIFFmemset(ptr noundef %add.ptr28, i32 noundef 0, i32 noundef %mul30) #3
  %25 = load ptr, ptr %td, align 8
  %td_nstrips32 = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i64 0, i32 43
  %26 = load i32, ptr %td_nstrips32, align 4
  %add33 = add i32 %26, %24
  store i32 %add33, ptr %td_nstrips32, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %storemerge = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
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
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 3
  %0 = load i32, ptr %tif_flags, align 8
  %and = and i32 %0, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFWriteCheck(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @TIFFWriteEncodedStrip.module)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %2 = load i32, ptr %strip.addr, align 4
  %3 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i64 0, i32 43
  %4 = load i32, ptr %td_nstrips, align 4
  %cmp.not = icmp ult i32 %2, %4
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
  store i32 -1, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.then2
  %9 = load ptr, ptr %tif.addr, align 8
  %call7 = call i32 @TIFFGrowStrips(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @TIFFWriteEncodedStrip.module)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  store i32 -1, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end6
  %10 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i64 0, i32 2
  %11 = load i32, ptr %td_imagelength, align 4
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i64 0, i32 16
  %12 = load i32, ptr %td_rowsperstrip, align 4
  %sub = add i32 %12, -1
  %add = add i32 %11, %sub
  %13 = load ptr, ptr %td, align 8
  %td_rowsperstrip11 = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i64 0, i32 16
  %14 = load i32, ptr %td_rowsperstrip11, align 4
  %div = udiv i32 %add, %14
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i64 0, i32 42
  store i32 %div, ptr %td_stripsperimage, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %if.end
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_flags13 = getelementptr inbounds %struct.tiff, ptr %15, i64 0, i32 3
  %16 = load i32, ptr %tif_flags13, align 8
  %and14 = and i32 %16, 16
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %if.end20

lor.lhs.false16:                                  ; preds = %if.end12
  %17 = load ptr, ptr %tif.addr, align 8
  %call17 = call i32 @TIFFWriteBufferSetup(ptr noundef %17, ptr noundef null, i32 noundef -1)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %lor.lhs.false16
  store i32 -1, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %lor.lhs.false16, %if.end12
  %18 = load i32, ptr %strip.addr, align 4
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %19, i64 0, i32 13
  store i32 %18, ptr %tif_curstrip, align 8
  %20 = load ptr, ptr %td, align 8
  %td_stripsperimage21 = getelementptr inbounds %struct.TIFFDirectory, ptr %20, i64 0, i32 42
  %21 = load i32, ptr %td_stripsperimage21, align 8
  %rem = urem i32 %18, %21
  %td_rowsperstrip22 = getelementptr inbounds %struct.TIFFDirectory, ptr %20, i64 0, i32 16
  %22 = load i32, ptr %td_rowsperstrip22, align 4
  %mul = mul i32 %rem, %22
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 11
  store i32 %mul, ptr %tif_row, align 8
  %tif_flags23 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 3
  %24 = load i32, ptr %tif_flags23, align 8
  %and24 = and i32 %24, 32
  %cmp25 = icmp eq i32 %and24, 0
  br i1 %cmp25, label %if.then27, label %if.end33

if.then27:                                        ; preds = %if.end20
  %25 = load ptr, ptr %tif.addr, align 8
  %tif_setupencode = getelementptr inbounds %struct.tiff, ptr %25, i64 0, i32 23
  %26 = load ptr, ptr %tif_setupencode, align 8
  %call28 = call i32 %26(ptr noundef %25) #3
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then27
  store i32 -1, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.then27
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_flags32 = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 3
  %28 = load i32, ptr %tif_flags32, align 8
  %or = or i32 %28, 32
  store i32 %or, ptr %tif_flags32, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.end31, %if.end20
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_flags34 = getelementptr inbounds %struct.tiff, ptr %29, i64 0, i32 3
  %30 = load i32, ptr %tif_flags34, align 8
  %and35 = and i32 %30, -4097
  store i32 %and35, ptr %tif_flags34, align 8
  %31 = load i32, ptr %strip.addr, align 4
  %32 = load ptr, ptr %td, align 8
  %td_stripsperimage36 = getelementptr inbounds %struct.TIFFDirectory, ptr %32, i64 0, i32 42
  %33 = load i32, ptr %td_stripsperimage36, align 8
  %div37 = udiv i32 %31, %33
  %conv38 = trunc i32 %div37 to i16
  store i16 %conv38, ptr %sample, align 2
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_preencode = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 24
  %35 = load ptr, ptr %tif_preencode, align 8
  %call39 = call i32 %35(ptr noundef %34, i16 noundef zeroext %conv38) #3
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end33
  store i32 -1, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.end33
  %36 = load ptr, ptr %tif.addr, align 8
  %tif_encodestrip = getelementptr inbounds %struct.tiff, ptr %36, i64 0, i32 29
  %37 = load ptr, ptr %tif_encodestrip, align 8
  %38 = load ptr, ptr %data.addr, align 8
  %39 = load i32, ptr %cc.addr, align 4
  %40 = load i16, ptr %sample, align 2
  %call43 = call i32 %37(ptr noundef %36, ptr noundef %38, i32 noundef %39, i16 noundef zeroext %40) #3
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end42
  store i32 0, ptr %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.end42
  %41 = load ptr, ptr %tif.addr, align 8
  %tif_postencode = getelementptr inbounds %struct.tiff, ptr %41, i64 0, i32 25
  %42 = load ptr, ptr %tif_postencode, align 8
  %call47 = call i32 %42(ptr noundef %41) #3
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  store i32 -1, ptr %retval, align 4
  br label %return

if.end50:                                         ; preds = %if.end46
  %43 = load ptr, ptr %tif.addr, align 8
  %tif_flags51 = getelementptr inbounds %struct.tiff, ptr %43, i64 0, i32 3
  %44 = load i32, ptr %tif_flags51, align 8
  %45 = load ptr, ptr %td, align 8
  %td_fillorder = getelementptr inbounds %struct.TIFFDirectory, ptr %45, i64 0, i32 13
  %46 = load i16, ptr %td_fillorder, align 2
  %conv52 = zext i16 %46 to i32
  %and53 = and i32 %44, %conv52
  %cmp54.not = icmp eq i32 %and53, 0
  br i1 %cmp54.not, label %land.lhs.true, label %if.end62

land.lhs.true:                                    ; preds = %if.end50
  %47 = load ptr, ptr %tif.addr, align 8
  %tif_flags56 = getelementptr inbounds %struct.tiff, ptr %47, i64 0, i32 3
  %48 = load i32, ptr %tif_flags56, align 8
  %and57 = and i32 %48, 256
  %cmp58 = icmp eq i32 %and57, 0
  br i1 %cmp58, label %if.then60, label %if.end62

if.then60:                                        ; preds = %land.lhs.true
  %49 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %49, i64 0, i32 40
  %50 = load ptr, ptr %tif_rawdata, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %49, i64 0, i32 43
  %51 = load i32, ptr %tif_rawcc, align 8
  %conv61 = sext i32 %51 to i64
  call void @TIFFReverseBits(ptr noundef %50, i64 noundef %conv61) #3
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %land.lhs.true, %if.end50
  %52 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc63 = getelementptr inbounds %struct.tiff, ptr %52, i64 0, i32 43
  %53 = load i32, ptr %tif_rawcc63, align 8
  %cmp64 = icmp sgt i32 %53, 0
  br i1 %cmp64, label %land.lhs.true66, label %if.end72

land.lhs.true66:                                  ; preds = %if.end62
  %54 = load ptr, ptr %tif.addr, align 8
  %55 = load i32, ptr %strip.addr, align 4
  %tif_rawdata67 = getelementptr inbounds %struct.tiff, ptr %54, i64 0, i32 40
  %56 = load ptr, ptr %tif_rawdata67, align 8
  %tif_rawcc68 = getelementptr inbounds %struct.tiff, ptr %54, i64 0, i32 43
  %57 = load i32, ptr %tif_rawcc68, align 8
  %call69 = call i32 @TIFFAppendToStrip(ptr noundef %54, i32 noundef %55, ptr noundef %56, i32 noundef %57)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then71, label %if.end72

if.then71:                                        ; preds = %land.lhs.true66
  store i32 -1, ptr %retval, align 4
  br label %return

if.end72:                                         ; preds = %land.lhs.true66, %if.end62
  %58 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc73 = getelementptr inbounds %struct.tiff, ptr %58, i64 0, i32 43
  store i32 0, ptr %tif_rawcc73, align 8
  %tif_rawdata74 = getelementptr inbounds %struct.tiff, ptr %58, i64 0, i32 40
  %59 = load ptr, ptr %tif_rawdata74, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %58, i64 0, i32 42
  store ptr %59, ptr %tif_rawcp, align 8
  %60 = load i32, ptr %cc.addr, align 4
  store i32 %60, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end72, %if.then71, %if.then49, %if.then45, %if.then41, %if.then30, %if.then19, %if.then9, %if.then5, %if.then
  %61 = load i32, ptr %retval, align 4
  ret i32 %61
}

declare void @TIFFReverseBits(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
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
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 44
  %0 = load ptr, ptr %td_stripoffset, align 8
  %1 = load i32, ptr %strip.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_curoff = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 14
  %4 = load i32, ptr %tif_curoff, align 4
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.end26

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr %td, align 8
  %td_stripoffset2 = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i64 0, i32 44
  %6 = load ptr, ptr %td_stripoffset2, align 8
  %7 = load i32, ptr %strip.addr, align 4
  %idxprom3 = zext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %6, i64 %idxprom3
  %8 = load i32, ptr %arrayidx4, align 4
  %cmp5.not = icmp eq i32 %8, 0
  br i1 %cmp5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 51
  %10 = load ptr, ptr %tif_seekproc, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 48
  %11 = load ptr, ptr %tif_clientdata, align 8
  %12 = load ptr, ptr %td, align 8
  %td_stripoffset7 = getelementptr inbounds %struct.TIFFDirectory, ptr %12, i64 0, i32 44
  %13 = load ptr, ptr %td_stripoffset7, align 8
  %14 = load i32, ptr %strip.addr, align 4
  %idxprom8 = zext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %13, i64 %idxprom8
  %15 = load i32, ptr %arrayidx9, align 4
  %call = call i32 %10(ptr noundef %11, i32 noundef %15, i32 noundef 0) #3
  %16 = load ptr, ptr %td, align 8
  %td_stripoffset10 = getelementptr inbounds %struct.TIFFDirectory, ptr %16, i64 0, i32 44
  %17 = load ptr, ptr %td_stripoffset10, align 8
  %18 = load i32, ptr %strip.addr, align 4
  %idxprom11 = zext i32 %18 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %17, i64 %idxprom11
  %19 = load i32, ptr %arrayidx12, align 4
  %cmp13 = icmp eq i32 %call, %19
  br i1 %cmp13, label %if.end21, label %if.then14

if.then14:                                        ; preds = %if.then6
  %20 = load ptr, ptr %tif.addr, align 8
  %21 = load ptr, ptr %20, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %20, i64 0, i32 11
  %22 = load i32, ptr %tif_row, align 8
  %conv = zext i32 %22 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFAppendToStrip.module, ptr noundef nonnull @.str.16, ptr noundef %21, i64 noundef %conv) #3
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc15 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 51
  %24 = load ptr, ptr %tif_seekproc15, align 8
  %tif_clientdata16 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 48
  %25 = load ptr, ptr %tif_clientdata16, align 8
  %call17 = call i32 %24(ptr noundef %25, i32 noundef 0, i32 noundef 2) #3
  %26 = load ptr, ptr %td, align 8
  %td_stripoffset18 = getelementptr inbounds %struct.TIFFDirectory, ptr %26, i64 0, i32 44
  %27 = load ptr, ptr %td_stripoffset18, align 8
  %28 = load i32, ptr %strip.addr, align 4
  %idxprom19 = zext i32 %28 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %27, i64 %idxprom19
  store i32 %call17, ptr %arrayidx20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then6, %if.else
  %29 = load ptr, ptr %td, align 8
  %td_stripoffset22 = getelementptr inbounds %struct.TIFFDirectory, ptr %29, i64 0, i32 44
  %30 = load ptr, ptr %td_stripoffset22, align 8
  %31 = load i32, ptr %strip.addr, align 4
  %idxprom23 = zext i32 %31 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %30, i64 %idxprom23
  %32 = load i32, ptr %arrayidx24, align 4
  %33 = load ptr, ptr %tif.addr, align 8
  %tif_curoff25 = getelementptr inbounds %struct.tiff, ptr %33, i64 0, i32 14
  store i32 %32, ptr %tif_curoff25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end21, %lor.lhs.false
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 50
  %35 = load ptr, ptr %tif_writeproc, align 8
  %tif_clientdata27 = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 48
  %36 = load ptr, ptr %tif_clientdata27, align 8
  %37 = load ptr, ptr %data.addr, align 8
  %38 = load i32, ptr %cc.addr, align 4
  %call28 = call i32 %35(ptr noundef %36, ptr noundef %37, i32 noundef %38) #3
  %cmp29 = icmp eq i32 %call28, %38
  br i1 %cmp29, label %if.end35, label %if.then31

if.then31:                                        ; preds = %if.end26
  %39 = load ptr, ptr %tif.addr, align 8
  %40 = load ptr, ptr %39, align 8
  %tif_row33 = getelementptr inbounds %struct.tiff, ptr %39, i64 0, i32 11
  %41 = load i32, ptr %tif_row33, align 8
  %conv34 = zext i32 %41 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFAppendToStrip.module, ptr noundef nonnull @.str.17, ptr noundef %40, i64 noundef %conv34) #3
  store i32 0, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.end26
  %42 = load i32, ptr %cc.addr, align 4
  %43 = load ptr, ptr %tif.addr, align 8
  %tif_curoff36 = getelementptr inbounds %struct.tiff, ptr %43, i64 0, i32 14
  %44 = load i32, ptr %tif_curoff36, align 4
  %add = add nsw i32 %44, %42
  store i32 %add, ptr %tif_curoff36, align 4
  %45 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %45, i64 0, i32 45
  %46 = load ptr, ptr %td_stripbytecount, align 8
  %47 = load i32, ptr %strip.addr, align 4
  %idxprom37 = zext i32 %47 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %46, i64 %idxprom37
  %48 = load i32, ptr %arrayidx38, align 4
  %add39 = add i32 %48, %42
  store i32 %add39, ptr %arrayidx38, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end35, %if.then31, %if.then14
  %49 = load i32, ptr %retval, align 4
  ret i32 %49
}

; Function Attrs: nounwind ssp uwtable
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
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 3
  %0 = load i32, ptr %tif_flags, align 8
  %and = and i32 %0, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFWriteCheck(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @TIFFWriteRawStrip.module)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %2 = load i32, ptr %strip.addr, align 4
  %3 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i64 0, i32 43
  %4 = load i32, ptr %td_nstrips, align 4
  %cmp.not = icmp ult i32 %2, %4
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
  store i32 -1, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.then2
  %9 = load i32, ptr %strip.addr, align 4
  %10 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i64 0, i32 42
  %11 = load i32, ptr %td_stripsperimage, align 8
  %cmp7.not = icmp ult i32 %9, %11
  br i1 %cmp7.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end6
  %12 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %12, i64 0, i32 2
  %13 = load i32, ptr %td_imagelength, align 4
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %12, i64 0, i32 16
  %14 = load i32, ptr %td_rowsperstrip, align 4
  %sub = add i32 %14, -1
  %add = add i32 %13, %sub
  %15 = load ptr, ptr %td, align 8
  %td_rowsperstrip10 = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i64 0, i32 16
  %16 = load i32, ptr %td_rowsperstrip10, align 4
  %div = udiv i32 %add, %16
  %td_stripsperimage11 = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i64 0, i32 42
  store i32 %div, ptr %td_stripsperimage11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end6
  %17 = load ptr, ptr %tif.addr, align 8
  %call13 = call i32 @TIFFGrowStrips(ptr noundef %17, i32 noundef 1, ptr noundef nonnull @TIFFWriteRawStrip.module)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  store i32 -1, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end12, %if.end
  %18 = load i32, ptr %strip.addr, align 4
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %19, i64 0, i32 13
  store i32 %18, ptr %tif_curstrip, align 8
  %20 = load ptr, ptr %td, align 8
  %td_stripsperimage18 = getelementptr inbounds %struct.TIFFDirectory, ptr %20, i64 0, i32 42
  %21 = load i32, ptr %td_stripsperimage18, align 8
  %rem = urem i32 %18, %21
  %td_rowsperstrip19 = getelementptr inbounds %struct.TIFFDirectory, ptr %20, i64 0, i32 16
  %22 = load i32, ptr %td_rowsperstrip19, align 4
  %mul = mul i32 %rem, %22
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 11
  store i32 %mul, ptr %tif_row, align 8
  %24 = load i32, ptr %strip.addr, align 4
  %25 = load ptr, ptr %data.addr, align 8
  %26 = load i32, ptr %cc.addr, align 4
  %call20 = call i32 @TIFFAppendToStrip(ptr noundef %23, i32 noundef %24, ptr noundef %25, i32 noundef %26)
  %tobool21.not = icmp eq i32 %call20, 0
  %27 = load i32, ptr %cc.addr, align 4
  %cond = select i1 %tobool21.not, i32 -1, i32 %27
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then15, %if.then5, %if.then
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFWriteTile(ptr noundef %tif, ptr noundef %buf, i32 noundef %x, i32 noundef %y, i32 noundef %z, i16 noundef zeroext %s) #0 {
entry:
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
  %call = call i32 @TIFFCheckTile(ptr noundef %tif, i32 noundef %x, i32 noundef %y, i32 noundef %z, i16 noundef zeroext %s) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load i32, ptr %x.addr, align 4
  %2 = load i32, ptr %y.addr, align 4
  %3 = load i32, ptr %z.addr, align 4
  %4 = load i16, ptr %s.addr, align 2
  %call1 = call i32 @TIFFComputeTile(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4) #3
  %5 = load ptr, ptr %buf.addr, align 8
  %call2 = call i32 @TIFFWriteEncodedTile(ptr noundef %0, i32 noundef %call1, ptr noundef %5, i32 noundef -1)
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %call2, %if.end ], [ -1, %entry ]
  ret i32 %storemerge
}

declare i32 @TIFFCheckTile(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #1

; Function Attrs: nounwind ssp uwtable
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
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 3
  %0 = load i32, ptr %tif_flags, align 8
  %and = and i32 %0, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFWriteCheck(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @TIFFWriteEncodedTile.module)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %3 = load i32, ptr %tile.addr, align 4
  %td_nstrips = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 6, i32 43
  %4 = load i32, ptr %td_nstrips, align 4
  %cmp.not = icmp ult i32 %3, %4
  br i1 %cmp.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %tile.addr, align 4
  %conv = zext i32 %7 to i64
  %8 = load ptr, ptr %td, align 8
  %td_nstrips3 = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i64 0, i32 43
  %9 = load i32, ptr %td_nstrips3, align 4
  %conv4 = zext i32 %9 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFWriteEncodedTile.module, ptr noundef nonnull @.str.3, ptr noundef %6, i64 noundef %conv, i64 noundef %conv4) #3
  store i32 -1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_flags6 = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 3
  %11 = load i32, ptr %tif_flags6, align 8
  %and7 = and i32 %11, 16
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %if.end13

lor.lhs.false9:                                   ; preds = %if.end5
  %12 = load ptr, ptr %tif.addr, align 8
  %call10 = call i32 @TIFFWriteBufferSetup(ptr noundef %12, ptr noundef null, i32 noundef -1)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %lor.lhs.false9
  store i32 -1, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %lor.lhs.false9, %if.end5
  %13 = load i32, ptr %tile.addr, align 4
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_curtile = getelementptr inbounds %struct.tiff, ptr %14, i64 0, i32 19
  store i32 %13, ptr %tif_curtile, align 8
  %15 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i64 0, i32 2
  %16 = load i32, ptr %td_imagelength, align 4
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %td_tilelength, align 8
  %sub = add i32 %17, -1
  %add = add i32 %16, %sub
  %18 = load ptr, ptr %td, align 8
  %td_tilelength14 = getelementptr inbounds %struct.TIFFDirectory, ptr %18, i64 0, i32 5
  %19 = load i32, ptr %td_tilelength14, align 8
  %div = udiv i32 %add, %19
  %rem = urem i32 %13, %div
  %mul = mul i32 %rem, %19
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %20, i64 0, i32 11
  store i32 %mul, ptr %tif_row, align 8
  %21 = load i32, ptr %tile.addr, align 4
  %22 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i64 0, i32 1
  %23 = load i32, ptr %td_imagewidth, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i64 0, i32 4
  %24 = load i32, ptr %td_tilewidth, align 4
  %sub16 = add i32 %24, -1
  %add17 = add i32 %23, %sub16
  %25 = load ptr, ptr %td, align 8
  %td_tilewidth18 = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i64 0, i32 4
  %26 = load i32, ptr %td_tilewidth18, align 4
  %div19 = udiv i32 %add17, %26
  %rem20 = urem i32 %21, %div19
  %mul22 = mul i32 %rem20, %26
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_col = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 18
  store i32 %mul22, ptr %tif_col, align 4
  %tif_flags23 = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 3
  %28 = load i32, ptr %tif_flags23, align 8
  %and24 = and i32 %28, 32
  %cmp25 = icmp eq i32 %and24, 0
  br i1 %cmp25, label %if.then27, label %if.end33

if.then27:                                        ; preds = %if.end13
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_setupencode = getelementptr inbounds %struct.tiff, ptr %29, i64 0, i32 23
  %30 = load ptr, ptr %tif_setupencode, align 8
  %call28 = call i32 %30(ptr noundef %29) #3
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then27
  store i32 -1, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.then27
  %31 = load ptr, ptr %tif.addr, align 8
  %tif_flags32 = getelementptr inbounds %struct.tiff, ptr %31, i64 0, i32 3
  %32 = load i32, ptr %tif_flags32, align 8
  %or = or i32 %32, 32
  store i32 %or, ptr %tif_flags32, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.end31, %if.end13
  %33 = load ptr, ptr %tif.addr, align 8
  %tif_flags34 = getelementptr inbounds %struct.tiff, ptr %33, i64 0, i32 3
  %34 = load i32, ptr %tif_flags34, align 8
  %and35 = and i32 %34, -4097
  store i32 %and35, ptr %tif_flags34, align 8
  %35 = load i32, ptr %tile.addr, align 4
  %36 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %36, i64 0, i32 42
  %37 = load i32, ptr %td_stripsperimage, align 8
  %div36 = udiv i32 %35, %37
  %conv37 = trunc i32 %div36 to i16
  store i16 %conv37, ptr %sample, align 2
  %38 = load ptr, ptr %tif.addr, align 8
  %tif_preencode = getelementptr inbounds %struct.tiff, ptr %38, i64 0, i32 24
  %39 = load ptr, ptr %tif_preencode, align 8
  %call38 = call i32 %39(ptr noundef %38, i16 noundef zeroext %conv37) #3
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end33
  store i32 -1, ptr %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.end33
  %40 = load i32, ptr %cc.addr, align 4
  %41 = load ptr, ptr %tif.addr, align 8
  %tif_tilesize = getelementptr inbounds %struct.tiff, ptr %41, i64 0, i32 20
  %42 = load i32, ptr %tif_tilesize, align 4
  %cmp42 = icmp ugt i32 %40, %42
  br i1 %cmp42, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.end41
  %43 = load ptr, ptr %tif.addr, align 8
  %tif_tilesize45 = getelementptr inbounds %struct.tiff, ptr %43, i64 0, i32 20
  %44 = load i32, ptr %tif_tilesize45, align 4
  store i32 %44, ptr %cc.addr, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end41
  %45 = load ptr, ptr %tif.addr, align 8
  %tif_encodetile = getelementptr inbounds %struct.tiff, ptr %45, i64 0, i32 31
  %46 = load ptr, ptr %tif_encodetile, align 8
  %47 = load ptr, ptr %data.addr, align 8
  %48 = load i32, ptr %cc.addr, align 4
  %49 = load i16, ptr %sample, align 2
  %call47 = call i32 %46(ptr noundef %45, ptr noundef %47, i32 noundef %48, i16 noundef zeroext %49) #3
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  store i32 0, ptr %retval, align 4
  br label %return

if.end50:                                         ; preds = %if.end46
  %50 = load ptr, ptr %tif.addr, align 8
  %tif_postencode = getelementptr inbounds %struct.tiff, ptr %50, i64 0, i32 25
  %51 = load ptr, ptr %tif_postencode, align 8
  %call51 = call i32 %51(ptr noundef %50) #3
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end50
  store i32 -1, ptr %retval, align 4
  br label %return

if.end54:                                         ; preds = %if.end50
  %52 = load ptr, ptr %tif.addr, align 8
  %tif_flags55 = getelementptr inbounds %struct.tiff, ptr %52, i64 0, i32 3
  %53 = load i32, ptr %tif_flags55, align 8
  %54 = load ptr, ptr %td, align 8
  %td_fillorder = getelementptr inbounds %struct.TIFFDirectory, ptr %54, i64 0, i32 13
  %55 = load i16, ptr %td_fillorder, align 2
  %conv56 = zext i16 %55 to i32
  %and57 = and i32 %53, %conv56
  %cmp58.not = icmp eq i32 %and57, 0
  br i1 %cmp58.not, label %land.lhs.true, label %if.end66

land.lhs.true:                                    ; preds = %if.end54
  %56 = load ptr, ptr %tif.addr, align 8
  %tif_flags60 = getelementptr inbounds %struct.tiff, ptr %56, i64 0, i32 3
  %57 = load i32, ptr %tif_flags60, align 8
  %and61 = and i32 %57, 256
  %cmp62 = icmp eq i32 %and61, 0
  br i1 %cmp62, label %if.then64, label %if.end66

if.then64:                                        ; preds = %land.lhs.true
  %58 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %58, i64 0, i32 40
  %59 = load ptr, ptr %tif_rawdata, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %58, i64 0, i32 43
  %60 = load i32, ptr %tif_rawcc, align 8
  %conv65 = sext i32 %60 to i64
  call void @TIFFReverseBits(ptr noundef %59, i64 noundef %conv65) #3
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %land.lhs.true, %if.end54
  %61 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc67 = getelementptr inbounds %struct.tiff, ptr %61, i64 0, i32 43
  %62 = load i32, ptr %tif_rawcc67, align 8
  %cmp68 = icmp sgt i32 %62, 0
  br i1 %cmp68, label %land.lhs.true70, label %if.end76

land.lhs.true70:                                  ; preds = %if.end66
  %63 = load ptr, ptr %tif.addr, align 8
  %64 = load i32, ptr %tile.addr, align 4
  %tif_rawdata71 = getelementptr inbounds %struct.tiff, ptr %63, i64 0, i32 40
  %65 = load ptr, ptr %tif_rawdata71, align 8
  %tif_rawcc72 = getelementptr inbounds %struct.tiff, ptr %63, i64 0, i32 43
  %66 = load i32, ptr %tif_rawcc72, align 8
  %call73 = call i32 @TIFFAppendToStrip(ptr noundef %63, i32 noundef %64, ptr noundef %65, i32 noundef %66)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then75, label %if.end76

if.then75:                                        ; preds = %land.lhs.true70
  store i32 -1, ptr %retval, align 4
  br label %return

if.end76:                                         ; preds = %land.lhs.true70, %if.end66
  %67 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc77 = getelementptr inbounds %struct.tiff, ptr %67, i64 0, i32 43
  store i32 0, ptr %tif_rawcc77, align 8
  %tif_rawdata78 = getelementptr inbounds %struct.tiff, ptr %67, i64 0, i32 40
  %68 = load ptr, ptr %tif_rawdata78, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %67, i64 0, i32 42
  store ptr %68, ptr %tif_rawcp, align 8
  %69 = load i32, ptr %cc.addr, align 4
  store i32 %69, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end76, %if.then75, %if.then53, %if.then49, %if.then40, %if.then30, %if.then12, %if.then2, %if.then
  %70 = load i32, ptr %retval, align 4
  ret i32 %70
}

declare i32 @TIFFComputeTile(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #1

; Function Attrs: nounwind ssp uwtable
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
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 3
  %0 = load i32, ptr %tif_flags, align 8
  %and = and i32 %0, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFWriteCheck(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @TIFFWriteRawTile.module)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %2 = load i32, ptr %tile.addr, align 4
  %3 = load ptr, ptr %tif.addr, align 8
  %td_nstrips = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 6, i32 43
  %4 = load i32, ptr %td_nstrips, align 4
  %cmp.not = icmp ult i32 %2, %4
  br i1 %cmp.not, label %if.end6, label %if.then2

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %tile.addr, align 4
  %conv = zext i32 %7 to i64
  %td_nstrips4 = getelementptr inbounds %struct.tiff, ptr %5, i64 0, i32 6, i32 43
  %8 = load i32, ptr %td_nstrips4, align 4
  %conv5 = zext i32 %8 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFWriteRawTile.module, ptr noundef nonnull @.str.3, ptr noundef %6, i64 noundef %conv, i64 noundef %conv5) #3
  store i32 -1, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %9 = load ptr, ptr %tif.addr, align 8
  %10 = load i32, ptr %tile.addr, align 4
  %11 = load ptr, ptr %data.addr, align 8
  %12 = load i32, ptr %cc.addr, align 4
  %call7 = call i32 @TIFFAppendToStrip(ptr noundef %9, i32 noundef %10, ptr noundef %11, i32 noundef %12)
  %tobool8.not = icmp eq i32 %call7, 0
  %13 = load i32, ptr %cc.addr, align 4
  %cond = select i1 %tobool8.not, i32 -1, i32 %13
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then2, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

declare void @_TIFFfree(ptr noundef) #1

declare ptr @_TIFFmalloc(i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFFlushData1(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 43
  %0 = load i32, ptr %tif_rawcc, align 8
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 3
  %2 = load i32, ptr %tif_flags, align 8
  %td_fillorder = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 6, i32 13
  %3 = load i16, ptr %td_fillorder, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %2, %conv
  %cmp1.not = icmp eq i32 %and, 0
  br i1 %cmp1.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_flags3 = getelementptr inbounds %struct.tiff, ptr %4, i64 0, i32 3
  %5 = load i32, ptr %tif_flags3, align 8
  %and4 = and i32 %5, 256
  %cmp5 = icmp eq i32 %and4, 0
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 40
  %7 = load ptr, ptr %tif_rawdata, align 8
  %tif_rawcc8 = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 43
  %8 = load i32, ptr %tif_rawcc8, align 8
  %conv9 = sext i32 %8 to i64
  call void @TIFFReverseBits(ptr noundef %7, i64 noundef %conv9) #3
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true, %if.then
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_flags10 = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 3
  %10 = load i32, ptr %tif_flags10, align 8
  %and11 = and i32 %10, 1024
  %cmp12.not = icmp eq i32 %and11, 0
  %11 = load ptr, ptr %tif.addr, align 8
  %tif_curtile = getelementptr inbounds %struct.tiff, ptr %11, i64 0, i32 19
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %12, i64 0, i32 13
  %cond.in = select i1 %cmp12.not, ptr %tif_curstrip, ptr %tif_curtile
  %cond = load i32, ptr %cond.in, align 8
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata14 = getelementptr inbounds %struct.tiff, ptr %13, i64 0, i32 40
  %14 = load ptr, ptr %tif_rawdata14, align 8
  %tif_rawcc15 = getelementptr inbounds %struct.tiff, ptr %13, i64 0, i32 43
  %15 = load i32, ptr %tif_rawcc15, align 8
  %call = call i32 @TIFFAppendToStrip(ptr noundef %9, i32 noundef %cond, ptr noundef %14, i32 noundef %15)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end17

if.end17:                                         ; preds = %if.end
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc18 = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 43
  store i32 0, ptr %tif_rawcc18, align 8
  %tif_rawdata19 = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 40
  %17 = load ptr, ptr %tif_rawdata19, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %16, i64 0, i32 42
  store ptr %17, ptr %tif_rawcp, align 8
  br label %return

return:                                           ; preds = %entry, %if.end17, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ 1, %if.end17 ], [ 1, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define void @TIFFSetWriteOffset(ptr noundef %tif, i32 noundef %off) #0 {
entry:
  %tif_curoff = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 14
  store i32 %off, ptr %tif_curoff, align 4
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
  %0 = load i32, ptr %tif_flags, align 8
  %and = and i32 %0, 1024
  %cmp.not = icmp eq i32 %and, 0
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
  %4 = load i32, ptr %td_imagelength, align 4
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %5 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i64 0, i32 15
  %6 = load i16, ptr %td_samplesperpixel, align 2
  %conv = zext i16 %6 to i32
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then
  %7 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFNumberOfTiles(ptr noundef %7) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ]
  %8 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i64 0, i32 42
  store i32 %cond, ptr %td_stripsperimage, align 8
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
  %12 = load i32, ptr %td_imagelength12, align 4
  %cmp13 = icmp eq i32 %12, 0
  br i1 %cmp13, label %cond.true15, label %cond.false18

cond.true15:                                      ; preds = %land.lhs.true10
  %13 = load ptr, ptr %td, align 8
  %td_samplesperpixel16 = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i64 0, i32 15
  %14 = load i16, ptr %td_samplesperpixel16, align 2
  %conv17 = zext i16 %14 to i32
  br label %cond.end20

cond.false18:                                     ; preds = %land.lhs.true10, %if.else
  %15 = load ptr, ptr %tif.addr, align 8
  %call19 = call i32 @TIFFNumberOfStrips(ptr noundef %15) #3
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false18, %cond.true15
  %cond21 = phi i32 [ %conv17, %cond.true15 ], [ %call19, %cond.false18 ]
  %16 = load ptr, ptr %td, align 8
  %td_stripsperimage22 = getelementptr inbounds %struct.TIFFDirectory, ptr %16, i64 0, i32 42
  store i32 %cond21, ptr %td_stripsperimage22, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end20, %cond.end
  %17 = load ptr, ptr %td, align 8
  %td_stripsperimage23 = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i64 0, i32 42
  %18 = load i32, ptr %td_stripsperimage23, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i64 0, i32 43
  store i32 %18, ptr %td_nstrips, align 4
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i64 0, i32 24
  %19 = load i16, ptr %td_planarconfig, align 2
  %cmp25 = icmp eq i16 %19, 2
  br i1 %cmp25, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end
  %20 = load ptr, ptr %td, align 8
  %td_samplesperpixel28 = getelementptr inbounds %struct.TIFFDirectory, ptr %20, i64 0, i32 15
  %21 = load i16, ptr %td_samplesperpixel28, align 2
  %conv29 = zext i16 %21 to i32
  %td_stripsperimage30 = getelementptr inbounds %struct.TIFFDirectory, ptr %20, i64 0, i32 42
  %22 = load i32, ptr %td_stripsperimage30, align 8
  %div = udiv i32 %22, %conv29
  store i32 %div, ptr %td_stripsperimage30, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end
  %23 = load ptr, ptr %td, align 8
  %td_nstrips32 = getelementptr inbounds %struct.TIFFDirectory, ptr %23, i64 0, i32 43
  %24 = load i32, ptr %td_nstrips32, align 4
  %mul = shl i32 %24, 2
  %call35 = call ptr @_TIFFmalloc(i32 noundef %mul) #3
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %23, i64 0, i32 44
  store ptr %call35, ptr %td_stripoffset, align 8
  %25 = load ptr, ptr %td, align 8
  %td_nstrips36 = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i64 0, i32 43
  %26 = load i32, ptr %td_nstrips36, align 4
  %mul38 = shl i32 %26, 2
  %call40 = call ptr @_TIFFmalloc(i32 noundef %mul38) #3
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i64 0, i32 45
  store ptr %call40, ptr %td_stripbytecount, align 8
  %27 = load ptr, ptr %td, align 8
  %td_stripoffset41 = getelementptr inbounds %struct.TIFFDirectory, ptr %27, i64 0, i32 44
  %28 = load ptr, ptr %td_stripoffset41, align 8
  %cmp42 = icmp eq ptr %28, null
  br i1 %cmp42, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end31
  %29 = load ptr, ptr %td, align 8
  %td_stripbytecount44 = getelementptr inbounds %struct.TIFFDirectory, ptr %29, i64 0, i32 45
  %30 = load ptr, ptr %td_stripbytecount44, align 8
  %cmp45 = icmp eq ptr %30, null
  br i1 %cmp45, label %return, label %if.end48

if.end48:                                         ; preds = %lor.lhs.false
  %31 = load ptr, ptr %td, align 8
  %td_stripoffset49 = getelementptr inbounds %struct.TIFFDirectory, ptr %31, i64 0, i32 44
  %32 = load ptr, ptr %td_stripoffset49, align 8
  %td_nstrips50 = getelementptr inbounds %struct.TIFFDirectory, ptr %31, i64 0, i32 43
  %33 = load i32, ptr %td_nstrips50, align 4
  %mul52 = shl i32 %33, 2
  call void @_TIFFmemset(ptr noundef %32, i32 noundef 0, i32 noundef %mul52) #3
  %34 = load ptr, ptr %td, align 8
  %td_stripbytecount54 = getelementptr inbounds %struct.TIFFDirectory, ptr %34, i64 0, i32 45
  %35 = load ptr, ptr %td_stripbytecount54, align 8
  %td_nstrips55 = getelementptr inbounds %struct.TIFFDirectory, ptr %34, i64 0, i32 43
  %36 = load i32, ptr %td_nstrips55, align 4
  %mul57 = shl i32 %36, 2
  call void @_TIFFmemset(ptr noundef %35, i32 noundef 0, i32 noundef %mul57) #3
  %37 = load ptr, ptr %tif.addr, align 8
  %tif_dir59 = getelementptr inbounds %struct.tiff, ptr %37, i64 0, i32 6
  %38 = load i64, ptr %tif_dir59, align 8
  %tif_dir62 = getelementptr inbounds %struct.tiff, ptr %37, i64 0, i32 6
  %or65 = or i64 %38, 50331648
  store i64 %or65, ptr %tif_dir62, align 8
  br label %return

return:                                           ; preds = %if.end31, %lor.lhs.false, %if.end48
  %storemerge = phi i32 [ 1, %if.end48 ], [ 0, %lor.lhs.false ], [ 0, %if.end31 ]
  ret i32 %storemerge
}

declare i32 @TIFFTileSize(ptr noundef) #1

declare i32 @TIFFScanlineSize(ptr noundef) #1

declare i32 @TIFFNumberOfTiles(ptr noundef) #1

declare i32 @TIFFNumberOfStrips(ptr noundef) #1

declare void @_TIFFmemset(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare ptr @_TIFFrealloc(ptr noundef, i32 noundef) #1

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
