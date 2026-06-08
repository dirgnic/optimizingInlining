; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_balanced_score/source_snapshot_public_repos_mibench_consumer_tiff-v3.5.4_libtiff_tif_dirread.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_dirread.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i64, i64, i64, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i64, i16, i64, i64, i64, i16, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, ptr, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i64, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i64, ptr, i64, ptr, i64, ptr, i64, i64, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i64 }
%struct.TIFFDirEntry = type { i16, i16, i64, i64 }
%struct.TIFFFieldInfo = type { i64, i16, i16, i32, i16, i8, i8, ptr }

@.str = private unnamed_addr constant [36 x i8] c"Seek error accessing TIFF directory\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Can not read TIFF directory count\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"to read TIFF directory\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Can not read TIFF directory\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"invalid TIFF directory; tags are not sorted in ascending order\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"unknown field with tag %d (0x%x) ignored\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"wrong data type %d for \22%s\22; tag ignored\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"ImageLength\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"PlanarConfiguration\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"TileOffsets\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"StripOffsets\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"to read \22TransferFunction\22 tag\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Colormap\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"StripByteCounts\00", align 1
@.str.14 = private unnamed_addr constant [76 x i8] c"TIFF directory is missing required \22%s\22 field, calculating from imagelength\00", align 1
@.str.15 = private unnamed_addr constant [60 x i8] c"Bogus \22%s\22 field, ignoring and calculating from imagelength\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"No space %s\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"for \22StripByteCounts\22 array\00", align 1
@tiffDataWidth = external constant [0 x i32], align 4
@.str.18 = private unnamed_addr constant [46 x i8] c"TIFF directory is missing required \22%s\22 field\00", align 1
@.str.19 = private unnamed_addr constant [65 x i8] c"incorrect count for field \22%s\22 (%lu, expecting %lu); tag ignored\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"Error fetching data for field \22%s\22\00", align 1
@TIFFFetchNormalTag.mesg = internal constant [19 x i8] c"to fetch tag value\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"to fetch array of rationals\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"%s: Rational with zero denominator (num = %lu)\00", align 1
@.str.23 = private unnamed_addr constant [57 x i8] c"Cannot handle different per-sample values for field \22%s\22\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"Cannot read TIFF_ANY type %d for field \22%s\22\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"for strip array\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"to fetch strip tag\00", align 1
@TIFFFetchRefBlackWhite.mesg = internal constant [32 x i8] c"for \22ReferenceBlackWhite\22 array\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"for chopped \22StripByteCounts\22 array\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"for chopped \22StripOffsets\22 array\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFReadDirectory(ptr noundef %tif) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %dp = alloca ptr, align 8
  %n = alloca i32, align 4
  %td = alloca ptr, align 8
  %dir = alloca ptr, align 8
  %iv = alloca i32, align 4
  %v = alloca i64, align 8
  %dv = alloca double, align 8
  %fip = alloca ptr, align 8
  %fix = alloca i32, align 4
  %dircount = alloca i16, align 2
  %nextdiroff = alloca i64, align 8
  %cp = alloca ptr, align 8
  %diroutoforderwarning = alloca i32, align 4
  %off = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 0, ptr %diroutoforderwarning, align 4
  %tif_nextdiroff = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 5
  %0 = load i64, ptr %tif_nextdiroff, align 8
  %tif_diroff = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 4
  store i64 %0, ptr %tif_diroff, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_cleanup = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 34
  %2 = load ptr, ptr %tif_cleanup, align 8
  call void %2(ptr noundef %1) #2
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_curdir = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 12
  %4 = load i16, ptr %tif_curdir, align 8
  %inc = add i16 %4, 1
  store i16 %inc, ptr %tif_curdir, align 8
  store i64 0, ptr %nextdiroff, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %tif_flags, align 8
  %and = and i64 %5, 2048
  %cmp2.not = icmp eq i64 %and, 0
  br i1 %cmp2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 51
  %7 = load ptr, ptr %tif_seekproc, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 48
  %8 = load ptr, ptr %tif_clientdata, align 8
  %tif_diroff4 = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 4
  %9 = load i64, ptr %tif_diroff4, align 8
  %call = call i64 %7(ptr noundef %8, i64 noundef %9, i32 noundef 0) #2
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_diroff5 = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 4
  %11 = load i64, ptr %tif_diroff5, align 8
  %cmp6 = icmp eq i64 %call, %11
  br i1 %cmp6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.then3
  %12 = load ptr, ptr %tif.addr, align 8
  %13 = load ptr, ptr %12, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %13, ptr noundef nonnull @.str) #2
  store i32 0, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.then3
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_readproc = getelementptr inbounds %struct.tiff, ptr %14, i64 0, i32 49
  %15 = load ptr, ptr %tif_readproc, align 8
  %tif_clientdata9 = getelementptr inbounds %struct.tiff, ptr %14, i64 0, i32 48
  %16 = load ptr, ptr %tif_clientdata9, align 8
  %call10 = call i64 %15(ptr noundef %16, ptr noundef nonnull %dircount, i64 noundef 2) #2
  %cmp11 = icmp eq i64 %call10, 2
  br i1 %cmp11, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end8
  %17 = load ptr, ptr %tif.addr, align 8
  %18 = load ptr, ptr %17, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %18, ptr noundef nonnull @.str.1) #2
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end8
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_flags15 = getelementptr inbounds %struct.tiff, ptr %19, i64 0, i32 3
  %20 = load i64, ptr %tif_flags15, align 8
  %and16 = and i64 %20, 128
  %tobool.not = icmp eq i64 %and16, 0
  br i1 %tobool.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end14
  call void @TIFFSwabShort(ptr noundef nonnull %dircount) #2
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14
  %21 = load ptr, ptr %tif.addr, align 8
  %22 = load i16, ptr %dircount, align 2
  %conv = zext i16 %22 to i64
  %mul = mul nuw nsw i64 %conv, 24
  %call19 = call ptr @CheckMalloc(ptr noundef %21, i64 noundef %mul, ptr noundef nonnull @.str.2)
  store ptr %call19, ptr %dir, align 8
  %cmp20 = icmp eq ptr %call19, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  store i32 0, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end18
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_readproc24 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 49
  %24 = load ptr, ptr %tif_readproc24, align 8
  %tif_clientdata25 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 48
  %25 = load ptr, ptr %tif_clientdata25, align 8
  %26 = load ptr, ptr %dir, align 8
  %27 = load i16, ptr %dircount, align 2
  %conv26 = zext i16 %27 to i64
  %mul27 = mul nuw nsw i64 %conv26, 24
  %call28 = call i64 %24(ptr noundef %25, ptr noundef %26, i64 noundef %mul27) #2
  %28 = load i16, ptr %dircount, align 2
  %conv29 = zext i16 %28 to i64
  %mul30 = mul nuw nsw i64 %conv29, 24
  %cmp31 = icmp eq i64 %call28, %mul30
  br i1 %cmp31, label %if.end35, label %if.then33

if.then33:                                        ; preds = %if.end23
  %29 = load ptr, ptr %tif.addr, align 8
  %30 = load ptr, ptr %29, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %30, ptr noundef nonnull @.str.3) #2
  br label %bad

if.end35:                                         ; preds = %if.end23
  %31 = load ptr, ptr %tif.addr, align 8
  %tif_readproc36 = getelementptr inbounds %struct.tiff, ptr %31, i64 0, i32 49
  %32 = load ptr, ptr %tif_readproc36, align 8
  %tif_clientdata37 = getelementptr inbounds %struct.tiff, ptr %31, i64 0, i32 48
  %33 = load ptr, ptr %tif_clientdata37, align 8
  %call38 = call i64 %32(ptr noundef %33, ptr noundef nonnull %nextdiroff, i64 noundef 8) #2
  br label %if.end86

if.else:                                          ; preds = %if.end
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_diroff41 = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 4
  %35 = load i64, ptr %tif_diroff41, align 8
  store i64 %35, ptr %off, align 8
  %add = add i64 %35, 2
  %tif_size = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 45
  %36 = load i64, ptr %tif_size, align 8
  %cmp42 = icmp sgt i64 %add, %36
  br i1 %cmp42, label %if.then44, label %if.else46

if.then44:                                        ; preds = %if.else
  %37 = load ptr, ptr %tif.addr, align 8
  %38 = load ptr, ptr %37, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %38, ptr noundef nonnull @.str.1) #2
  store i32 0, ptr %retval, align 4
  br label %return

if.else46:                                        ; preds = %if.else
  %39 = load ptr, ptr %tif.addr, align 8
  %tif_base = getelementptr inbounds %struct.tiff, ptr %39, i64 0, i32 44
  %40 = load ptr, ptr %tif_base, align 8
  %41 = load i64, ptr %off, align 8
  %add.ptr = getelementptr inbounds i8, ptr %40, i64 %41
  call void @_TIFFmemcpy(ptr noundef nonnull %dircount, ptr noundef %add.ptr, i64 noundef 2) #2
  %42 = load i64, ptr %off, align 8
  %add48 = add i64 %42, 2
  store i64 %add48, ptr %off, align 8
  %43 = load ptr, ptr %tif.addr, align 8
  %tif_flags49 = getelementptr inbounds %struct.tiff, ptr %43, i64 0, i32 3
  %44 = load i64, ptr %tif_flags49, align 8
  %and50 = and i64 %44, 128
  %tobool51.not = icmp eq i64 %and50, 0
  br i1 %tobool51.not, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.else46
  call void @TIFFSwabShort(ptr noundef nonnull %dircount) #2
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.else46
  %45 = load ptr, ptr %tif.addr, align 8
  %46 = load i16, ptr %dircount, align 2
  %conv54 = zext i16 %46 to i64
  %mul55 = mul nuw nsw i64 %conv54, 24
  %call56 = call ptr @CheckMalloc(ptr noundef %45, i64 noundef %mul55, ptr noundef nonnull @.str.2)
  store ptr %call56, ptr %dir, align 8
  %cmp57 = icmp eq ptr %call56, null
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end53
  store i32 0, ptr %retval, align 4
  br label %return

if.end60:                                         ; preds = %if.end53
  %47 = load i64, ptr %off, align 8
  %48 = load i16, ptr %dircount, align 2
  %conv61 = zext i16 %48 to i64
  %mul62 = mul nuw nsw i64 %conv61, 24
  %add63 = add i64 %47, %mul62
  %49 = load ptr, ptr %tif.addr, align 8
  %tif_size64 = getelementptr inbounds %struct.tiff, ptr %49, i64 0, i32 45
  %50 = load i64, ptr %tif_size64, align 8
  %cmp65 = icmp sgt i64 %add63, %50
  br i1 %cmp65, label %if.then67, label %if.else69

if.then67:                                        ; preds = %if.end60
  %51 = load ptr, ptr %tif.addr, align 8
  %52 = load ptr, ptr %51, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %52, ptr noundef nonnull @.str.3) #2
  br label %bad

if.else69:                                        ; preds = %if.end60
  %53 = load ptr, ptr %dir, align 8
  %54 = load ptr, ptr %tif.addr, align 8
  %tif_base70 = getelementptr inbounds %struct.tiff, ptr %54, i64 0, i32 44
  %55 = load ptr, ptr %tif_base70, align 8
  %56 = load i64, ptr %off, align 8
  %add.ptr71 = getelementptr inbounds i8, ptr %55, i64 %56
  %57 = load i16, ptr %dircount, align 2
  %conv72 = zext i16 %57 to i64
  %mul73 = mul nuw nsw i64 %conv72, 24
  call void @_TIFFmemcpy(ptr noundef %53, ptr noundef %add.ptr71, i64 noundef %mul73) #2
  %58 = load i16, ptr %dircount, align 2
  %conv75 = zext i16 %58 to i64
  %mul76 = mul nuw nsw i64 %conv75, 24
  %59 = load i64, ptr %off, align 8
  %add77 = add i64 %59, %mul76
  store i64 %add77, ptr %off, align 8
  %add78 = add i64 %add77, 8
  %60 = load ptr, ptr %tif.addr, align 8
  %tif_size79 = getelementptr inbounds %struct.tiff, ptr %60, i64 0, i32 45
  %61 = load i64, ptr %tif_size79, align 8
  %cmp80.not = icmp sgt i64 %add78, %61
  br i1 %cmp80.not, label %if.end86, label %if.then82

if.then82:                                        ; preds = %if.else69
  %62 = load ptr, ptr %tif.addr, align 8
  %tif_base83 = getelementptr inbounds %struct.tiff, ptr %62, i64 0, i32 44
  %63 = load ptr, ptr %tif_base83, align 8
  %64 = load i64, ptr %off, align 8
  %add.ptr84 = getelementptr inbounds i8, ptr %63, i64 %64
  call void @_TIFFmemcpy(ptr noundef nonnull %nextdiroff, ptr noundef %add.ptr84, i64 noundef 8) #2
  br label %if.end86

if.end86:                                         ; preds = %if.else69, %if.then82, %if.end35
  %65 = load ptr, ptr %tif.addr, align 8
  %tif_flags87 = getelementptr inbounds %struct.tiff, ptr %65, i64 0, i32 3
  %66 = load i64, ptr %tif_flags87, align 8
  %and88 = and i64 %66, 128
  %tobool89.not = icmp eq i64 %and88, 0
  br i1 %tobool89.not, label %if.end91, label %if.then90

if.then90:                                        ; preds = %if.end86
  call void @TIFFSwabLong(ptr noundef nonnull %nextdiroff) #2
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %if.end86
  %67 = load i64, ptr %nextdiroff, align 8
  %68 = load ptr, ptr %tif.addr, align 8
  %tif_nextdiroff92 = getelementptr inbounds %struct.tiff, ptr %68, i64 0, i32 5
  store i64 %67, ptr %tif_nextdiroff92, align 8
  %tif_flags93 = getelementptr inbounds %struct.tiff, ptr %68, i64 0, i32 3
  %69 = load i64, ptr %tif_flags93, align 8
  %and94 = and i64 %69, -65
  store i64 %and94, ptr %tif_flags93, align 8
  %70 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %70, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  call void @TIFFFreeDirectory(ptr noundef %70) #2
  %71 = load ptr, ptr %tif.addr, align 8
  %call95 = call i32 @TIFFDefaultDirectory(ptr noundef %71) #2
  %72 = load ptr, ptr %tif.addr, align 8
  %call96 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %72, i64 noundef 284, i32 noundef 1) #2
  %73 = load ptr, ptr %dir, align 8
  store ptr %73, ptr %dp, align 8
  %74 = load i16, ptr %dircount, align 2
  %conv97 = zext i16 %74 to i32
  store i32 %conv97, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end91
  %75 = load i32, ptr %n, align 4
  %cmp98 = icmp sgt i32 %75, 0
  br i1 %cmp98, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %76 = load ptr, ptr %tif.addr, align 8
  %tif_flags100 = getelementptr inbounds %struct.tiff, ptr %76, i64 0, i32 3
  %77 = load i64, ptr %tif_flags100, align 8
  %and101 = and i64 %77, 128
  %tobool102.not = icmp eq i64 %and101, 0
  br i1 %tobool102.not, label %if.end104, label %if.then103

if.then103:                                       ; preds = %for.body
  %78 = load ptr, ptr %dp, align 8
  call void @TIFFSwabArrayOfShort(ptr noundef %78, i64 noundef 2) #2
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %78, i64 0, i32 2
  call void @TIFFSwabArrayOfLong(ptr noundef nonnull %tdir_count, i64 noundef 2) #2
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %for.body
  %79 = load ptr, ptr %dp, align 8
  %80 = load i16, ptr %79, align 8
  %cmp107 = icmp eq i16 %80, 277
  br i1 %cmp107, label %if.then109, label %for.inc

if.then109:                                       ; preds = %if.end104
  %81 = load ptr, ptr %tif.addr, align 8
  %82 = load ptr, ptr %dp, align 8
  %call110 = call i32 @TIFFFetchNormalTag(ptr noundef %81, ptr noundef %82)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %bad, label %if.end113

if.end113:                                        ; preds = %if.then109
  %83 = load ptr, ptr %dp, align 8
  store i16 0, ptr %83, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end104, %if.end113
  %84 = load i32, ptr %n, align 4
  %dec = add nsw i32 %84, -1
  store i32 %dec, ptr %n, align 4
  %85 = load ptr, ptr %dp, align 8
  %incdec.ptr = getelementptr inbounds %struct.TIFFDirEntry, ptr %85, i64 1
  store ptr %incdec.ptr, ptr %dp, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %fix, align 4
  %86 = load ptr, ptr %dir, align 8
  store ptr %86, ptr %dp, align 8
  %87 = load i16, ptr %dircount, align 2
  %conv116 = zext i16 %87 to i32
  store i32 %conv116, ptr %n, align 4
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc295, %for.end
  %88 = load i32, ptr %n, align 4
  %cmp118 = icmp sgt i32 %88, 0
  br i1 %cmp118, label %for.body120, label %for.end298

for.body120:                                      ; preds = %for.cond117
  %89 = load ptr, ptr %dp, align 8
  %90 = load i16, ptr %89, align 8
  %conv122 = zext i16 %90 to i32
  %call123 = call i32 @TIFFReassignTagToIgnore(i32 noundef 1, i32 noundef %conv122) #2
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end127, label %if.then125

if.then125:                                       ; preds = %for.body120
  %91 = load ptr, ptr %dp, align 8
  store i16 0, ptr %91, align 8
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %for.body120
  %92 = load ptr, ptr %dp, align 8
  %93 = load i16, ptr %92, align 8
  %cmp130 = icmp eq i16 %93, 0
  br i1 %cmp130, label %for.inc295, label %if.end133

if.end133:                                        ; preds = %if.end127
  %94 = load ptr, ptr %dp, align 8
  %95 = load i16, ptr %94, align 8
  %conv135 = zext i16 %95 to i64
  %96 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo = getelementptr inbounds %struct.tiff, ptr %96, i64 0, i32 55
  %97 = load ptr, ptr %tif_fieldinfo, align 8
  %98 = load i32, ptr %fix, align 4
  %idxprom = sext i32 %98 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %97, i64 %idxprom
  %99 = load ptr, ptr %arrayidx, align 8
  %100 = load i64, ptr %99, align 8
  %cmp136 = icmp ugt i64 %100, %conv135
  br i1 %cmp136, label %if.then138, label %if.end143

if.then138:                                       ; preds = %if.end133
  %101 = load i32, ptr %diroutoforderwarning, align 4
  %tobool139.not = icmp eq i32 %101, 0
  br i1 %tobool139.not, label %if.then140, label %if.end142

if.then140:                                       ; preds = %if.then138
  %102 = load ptr, ptr %tif.addr, align 8
  %103 = load ptr, ptr %102, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %103, ptr noundef nonnull @.str.4) #2
  store i32 1, ptr %diroutoforderwarning, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.then140, %if.then138
  store i32 0, ptr %fix, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.end133
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end143
  %104 = load i32, ptr %fix, align 4
  %105 = load ptr, ptr %tif.addr, align 8
  %tif_nfields = getelementptr inbounds %struct.tiff, ptr %105, i64 0, i32 56
  %106 = load i32, ptr %tif_nfields, align 8
  %cmp144 = icmp slt i32 %104, %106
  br i1 %cmp144, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond
  %107 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo146 = getelementptr inbounds %struct.tiff, ptr %107, i64 0, i32 55
  %108 = load ptr, ptr %tif_fieldinfo146, align 8
  %109 = load i32, ptr %fix, align 4
  %idxprom147 = sext i32 %109 to i64
  %arrayidx148 = getelementptr inbounds ptr, ptr %108, i64 %idxprom147
  %110 = load ptr, ptr %arrayidx148, align 8
  %111 = load i64, ptr %110, align 8
  %112 = load ptr, ptr %dp, align 8
  %113 = load i16, ptr %112, align 8
  %conv151 = zext i16 %113 to i64
  %cmp152 = icmp ult i64 %111, %conv151
  br i1 %cmp152, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %114 = load i32, ptr %fix, align 4
  %inc154 = add nsw i32 %114, 1
  store i32 %inc154, ptr %fix, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond, %land.rhs
  %115 = load i32, ptr %fix, align 4
  %116 = load ptr, ptr %tif.addr, align 8
  %tif_nfields155 = getelementptr inbounds %struct.tiff, ptr %116, i64 0, i32 56
  %117 = load i32, ptr %tif_nfields155, align 8
  %cmp156 = icmp eq i32 %115, %117
  br i1 %cmp156, label %if.then166, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %118 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo158 = getelementptr inbounds %struct.tiff, ptr %118, i64 0, i32 55
  %119 = load ptr, ptr %tif_fieldinfo158, align 8
  %120 = load i32, ptr %fix, align 4
  %idxprom159 = sext i32 %120 to i64
  %arrayidx160 = getelementptr inbounds ptr, ptr %119, i64 %idxprom159
  %121 = load ptr, ptr %arrayidx160, align 8
  %122 = load i64, ptr %121, align 8
  %123 = load ptr, ptr %dp, align 8
  %124 = load i16, ptr %123, align 8
  %conv163 = zext i16 %124 to i64
  %cmp164.not = icmp eq i64 %122, %conv163
  br i1 %cmp164.not, label %if.end173, label %if.then166

if.then166:                                       ; preds = %lor.lhs.false, %while.end
  %125 = load ptr, ptr %tif.addr, align 8
  %126 = load ptr, ptr %125, align 8
  %127 = load ptr, ptr %dp, align 8
  %128 = load i16, ptr %127, align 8
  %conv169 = zext i16 %128 to i32
  %conv171 = zext i16 %128 to i32
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %126, ptr noundef nonnull @.str.5, i32 noundef %conv169, i32 noundef %conv171) #2
  store i16 0, ptr %127, align 8
  store i32 0, ptr %fix, align 4
  br label %for.inc295

if.end173:                                        ; preds = %lor.lhs.false
  %129 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo174 = getelementptr inbounds %struct.tiff, ptr %129, i64 0, i32 55
  %130 = load ptr, ptr %tif_fieldinfo174, align 8
  %131 = load i32, ptr %fix, align 4
  %idxprom175 = sext i32 %131 to i64
  %arrayidx176 = getelementptr inbounds ptr, ptr %130, i64 %idxprom175
  %132 = load ptr, ptr %arrayidx176, align 8
  %field_bit = getelementptr inbounds %struct.TIFFFieldInfo, ptr %132, i64 0, i32 4
  %133 = load i16, ptr %field_bit, align 8
  %cmp178 = icmp eq i16 %133, 0
  br i1 %cmp178, label %ignore, label %if.end182

ignore:                                           ; preds = %cond.end, %if.end173, %if.then209
  %134 = load ptr, ptr %dp, align 8
  store i16 0, ptr %134, align 8
  br label %for.inc295

if.end182:                                        ; preds = %if.end173
  %135 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo183 = getelementptr inbounds %struct.tiff, ptr %135, i64 0, i32 55
  %136 = load ptr, ptr %tif_fieldinfo183, align 8
  %137 = load i32, ptr %fix, align 4
  %idxprom184 = sext i32 %137 to i64
  %arrayidx185 = getelementptr inbounds ptr, ptr %136, i64 %idxprom184
  %138 = load ptr, ptr %arrayidx185, align 8
  store ptr %138, ptr %fip, align 8
  br label %while.cond186

while.cond186:                                    ; preds = %lor.lhs.false203, %if.end182
  %139 = load ptr, ptr %dp, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %139, i64 0, i32 1
  %140 = load i16, ptr %tdir_type, align 2
  %141 = load ptr, ptr %fip, align 8
  %field_type = getelementptr inbounds %struct.TIFFFieldInfo, ptr %141, i64 0, i32 3
  %142 = load i32, ptr %field_type, align 4
  %143 = trunc i32 %142 to i16
  %cmp190.not = icmp eq i16 %140, %143
  br i1 %cmp190.not, label %while.end215, label %while.body192

while.body192:                                    ; preds = %while.cond186
  %144 = load ptr, ptr %fip, align 8
  %field_type193 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %144, i64 0, i32 3
  %145 = load i32, ptr %field_type193, align 4
  %cmp194 = icmp eq i32 %145, 0
  br i1 %cmp194, label %while.end215, label %if.end197

if.end197:                                        ; preds = %while.body192
  %146 = load ptr, ptr %fip, align 8
  %incdec.ptr198 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %146, i64 1
  store ptr %incdec.ptr198, ptr %fip, align 8
  %147 = load i32, ptr %fix, align 4
  %inc199 = add nsw i32 %147, 1
  store i32 %inc199, ptr %fix, align 4
  %148 = load ptr, ptr %tif.addr, align 8
  %tif_nfields200 = getelementptr inbounds %struct.tiff, ptr %148, i64 0, i32 56
  %149 = load i32, ptr %tif_nfields200, align 8
  %cmp201 = icmp eq i32 %inc199, %149
  br i1 %cmp201, label %if.then209, label %lor.lhs.false203

lor.lhs.false203:                                 ; preds = %if.end197
  %150 = load ptr, ptr %fip, align 8
  %151 = load i64, ptr %150, align 8
  %152 = load ptr, ptr %dp, align 8
  %153 = load i16, ptr %152, align 8
  %conv206 = zext i16 %153 to i64
  %cmp207.not = icmp eq i64 %151, %conv206
  br i1 %cmp207.not, label %while.cond186, label %if.then209, !llvm.loop !9

if.then209:                                       ; preds = %lor.lhs.false203, %if.end197
  %154 = load ptr, ptr %tif.addr, align 8
  %155 = load ptr, ptr %154, align 8
  %156 = load ptr, ptr %dp, align 8
  %tdir_type211 = getelementptr inbounds %struct.TIFFDirEntry, ptr %156, i64 0, i32 1
  %157 = load i16, ptr %tdir_type211, align 2
  %conv212 = zext i16 %157 to i32
  %158 = load ptr, ptr %fip, align 8
  %field_name = getelementptr %struct.TIFFFieldInfo, ptr %158, i64 -1, i32 7
  %159 = load ptr, ptr %field_name, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %155, ptr noundef nonnull @.str.6, i32 noundef %conv212, ptr noundef %159) #2
  br label %ignore

while.end215:                                     ; preds = %while.body192, %while.cond186
  %160 = load ptr, ptr %fip, align 8
  %field_readcount = getelementptr inbounds %struct.TIFFFieldInfo, ptr %160, i64 0, i32 1
  %161 = load i16, ptr %field_readcount, align 8
  %cmp217.not = icmp eq i16 %161, -1
  br i1 %cmp217.not, label %if.end231, label %if.then219

if.then219:                                       ; preds = %while.end215
  %162 = load ptr, ptr %fip, align 8
  %field_readcount220 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %162, i64 0, i32 1
  %163 = load i16, ptr %field_readcount220, align 8
  %cmp222 = icmp eq i16 %163, -2
  br i1 %cmp222, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then219
  %164 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %164, i64 0, i32 15
  %165 = load i16, ptr %td_samplesperpixel, align 2
  %conv224 = zext i16 %165 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.then219
  %166 = load ptr, ptr %fip, align 8
  %field_readcount225 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %166, i64 0, i32 1
  %167 = load i16, ptr %field_readcount225, align 8
  %conv226 = sext i16 %167 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv224, %cond.true ], [ %conv226, %cond.false ]
  %168 = load ptr, ptr %tif.addr, align 8
  %169 = load ptr, ptr %dp, align 8
  %call227 = call i32 @CheckDirCount(ptr noundef %168, ptr noundef %169, i64 noundef %cond)
  %tobool228.not = icmp eq i32 %call227, 0
  br i1 %tobool228.not, label %ignore, label %if.end231

if.end231:                                        ; preds = %cond.end, %while.end215
  %170 = load ptr, ptr %dp, align 8
  %171 = load i16, ptr %170, align 8
  switch i16 %171, label %for.inc295 [
    i16 259, label %sw.bb
    i16 273, label %sw.bb276
    i16 279, label %sw.bb276
    i16 324, label %sw.bb276
    i16 325, label %sw.bb276
    i16 256, label %sw.bb286
    i16 257, label %sw.bb286
    i16 -32539, label %sw.bb286
    i16 323, label %sw.bb286
    i16 322, label %sw.bb286
    i16 -32538, label %sw.bb286
    i16 284, label %sw.bb286
    i16 278, label %sw.bb286
    i16 338, label %sw.bb292
  ]

sw.bb:                                            ; preds = %if.end231
  %172 = load ptr, ptr %dp, align 8
  %tdir_count234 = getelementptr inbounds %struct.TIFFDirEntry, ptr %172, i64 0, i32 2
  %173 = load i64, ptr %tdir_count234, align 8
  %cmp235 = icmp eq i64 %173, 1
  br i1 %cmp235, label %if.then237, label %if.end265

if.then237:                                       ; preds = %sw.bb
  %174 = load ptr, ptr %tif.addr, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %174, i64 0, i32 7
  %175 = load i16, ptr %tif_header, align 8
  %cmp239 = icmp eq i16 %175, 19789
  br i1 %cmp239, label %cond.true241, label %cond.false249

cond.true241:                                     ; preds = %if.then237
  %176 = load ptr, ptr %dp, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %176, i64 0, i32 3
  %177 = load i64, ptr %tdir_offset, align 8
  %178 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift = getelementptr inbounds %struct.tiff, ptr %178, i64 0, i32 9
  %179 = load ptr, ptr %tif_typeshift, align 8
  %tdir_type242 = getelementptr inbounds %struct.TIFFDirEntry, ptr %176, i64 0, i32 1
  %180 = load i16, ptr %tdir_type242, align 2
  %idxprom243 = zext i16 %180 to i64
  %arrayidx244 = getelementptr inbounds i32, ptr %179, i64 %idxprom243
  %181 = load i32, ptr %arrayidx244, align 4
  %sh_prom = zext i32 %181 to i64
  %shr = lshr i64 %177, %sh_prom
  %182 = load ptr, ptr %tif.addr, align 8
  %tif_typemask = getelementptr inbounds %struct.tiff, ptr %182, i64 0, i32 10
  %183 = load ptr, ptr %tif_typemask, align 8
  %184 = load ptr, ptr %dp, align 8
  %tdir_type245 = getelementptr inbounds %struct.TIFFDirEntry, ptr %184, i64 0, i32 1
  %185 = load i16, ptr %tdir_type245, align 2
  %idxprom246 = zext i16 %185 to i64
  %arrayidx247 = getelementptr inbounds i64, ptr %183, i64 %idxprom246
  %186 = load i64, ptr %arrayidx247, align 8
  %and248 = and i64 %shr, %186
  br label %cond.end256

cond.false249:                                    ; preds = %if.then237
  %187 = load ptr, ptr %dp, align 8
  %tdir_offset250 = getelementptr inbounds %struct.TIFFDirEntry, ptr %187, i64 0, i32 3
  %188 = load i64, ptr %tdir_offset250, align 8
  %189 = load ptr, ptr %tif.addr, align 8
  %tif_typemask251 = getelementptr inbounds %struct.tiff, ptr %189, i64 0, i32 10
  %190 = load ptr, ptr %tif_typemask251, align 8
  %tdir_type252 = getelementptr inbounds %struct.TIFFDirEntry, ptr %187, i64 0, i32 1
  %191 = load i16, ptr %tdir_type252, align 2
  %idxprom253 = zext i16 %191 to i64
  %arrayidx254 = getelementptr inbounds i64, ptr %190, i64 %idxprom253
  %192 = load i64, ptr %arrayidx254, align 8
  %and255 = and i64 %188, %192
  br label %cond.end256

cond.end256:                                      ; preds = %cond.false249, %cond.true241
  %cond257 = phi i64 [ %and248, %cond.true241 ], [ %and255, %cond.false249 ]
  store i64 %cond257, ptr %v, align 8
  %193 = load ptr, ptr %tif.addr, align 8
  %194 = load ptr, ptr %dp, align 8
  %195 = load i16, ptr %194, align 8
  %conv259 = zext i16 %195 to i64
  %conv260 = trunc i64 %cond257 to i32
  %call261 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %193, i64 noundef %conv259, i32 noundef %conv260) #2
  %tobool262.not = icmp eq i32 %call261, 0
  br i1 %tobool262.not, label %bad, label %for.inc295

if.end265:                                        ; preds = %sw.bb
  %196 = load ptr, ptr %tif.addr, align 8
  %197 = load ptr, ptr %dp, align 8
  %call266 = call i32 @TIFFFetchPerSampleShorts(ptr noundef %196, ptr noundef %197, ptr noundef nonnull %iv)
  %tobool267.not = icmp eq i32 %call266, 0
  br i1 %tobool267.not, label %bad, label %lor.lhs.false268

lor.lhs.false268:                                 ; preds = %if.end265
  %198 = load ptr, ptr %tif.addr, align 8
  %199 = load ptr, ptr %dp, align 8
  %200 = load i16, ptr %199, align 8
  %conv270 = zext i16 %200 to i64
  %201 = load i32, ptr %iv, align 4
  %call271 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %198, i64 noundef %conv270, i32 noundef %201) #2
  %tobool272.not = icmp eq i32 %call271, 0
  br i1 %tobool272.not, label %bad, label %if.end274

if.end274:                                        ; preds = %lor.lhs.false268
  %202 = load ptr, ptr %dp, align 8
  store i16 0, ptr %202, align 8
  br label %for.inc295

sw.bb276:                                         ; preds = %if.end231, %if.end231, %if.end231, %if.end231
  %203 = load ptr, ptr %fip, align 8
  %field_bit277 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %203, i64 0, i32 4
  %204 = load i16, ptr %field_bit277, align 8
  %205 = and i16 %204, 31
  %sh_prom280 = zext i16 %205 to i64
  %shl = shl i64 1, %sh_prom280
  %206 = load ptr, ptr %tif.addr, align 8
  %tif_dir281 = getelementptr inbounds %struct.tiff, ptr %206, i64 0, i32 6
  %207 = load ptr, ptr %fip, align 8
  %field_bit282 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %207, i64 0, i32 4
  %208 = load i16, ptr %field_bit282, align 8
  %209 = lshr i16 %208, 5
  %idxprom284 = zext i16 %209 to i64
  %arrayidx285 = getelementptr inbounds [3 x i64], ptr %tif_dir281, i64 0, i64 %idxprom284
  %210 = load i64, ptr %arrayidx285, align 8
  %or = or i64 %210, %shl
  store i64 %or, ptr %arrayidx285, align 8
  br label %for.inc295

sw.bb286:                                         ; preds = %if.end231, %if.end231, %if.end231, %if.end231, %if.end231, %if.end231, %if.end231, %if.end231
  %211 = load ptr, ptr %tif.addr, align 8
  %212 = load ptr, ptr %dp, align 8
  %call287 = call i32 @TIFFFetchNormalTag(ptr noundef %211, ptr noundef %212)
  %tobool288.not = icmp eq i32 %call287, 0
  br i1 %tobool288.not, label %bad, label %if.end290

if.end290:                                        ; preds = %sw.bb286
  %213 = load ptr, ptr %dp, align 8
  store i16 0, ptr %213, align 8
  br label %for.inc295

sw.bb292:                                         ; preds = %if.end231
  %214 = load ptr, ptr %tif.addr, align 8
  %215 = load ptr, ptr %dp, align 8
  %call293 = call i32 @TIFFFetchExtraSamples(ptr noundef %214, ptr noundef %215)
  store i16 0, ptr %215, align 8
  br label %for.inc295

for.inc295:                                       ; preds = %if.end231, %if.end274, %sw.bb276, %if.end290, %sw.bb292, %cond.end256, %if.end127, %ignore, %if.then166
  %216 = load i32, ptr %n, align 4
  %dec296 = add nsw i32 %216, -1
  store i32 %dec296, ptr %n, align 4
  %217 = load ptr, ptr %dp, align 8
  %incdec.ptr297 = getelementptr inbounds %struct.TIFFDirEntry, ptr %217, i64 1
  store ptr %incdec.ptr297, ptr %dp, align 8
  br label %for.cond117, !llvm.loop !10

for.end298:                                       ; preds = %for.cond117
  %218 = load ptr, ptr %tif.addr, align 8
  %tif_dir299 = getelementptr inbounds %struct.tiff, ptr %218, i64 0, i32 6
  %219 = load i64, ptr %tif_dir299, align 8
  %and302 = and i64 %219, 2
  %tobool303.not = icmp eq i64 %and302, 0
  br i1 %tobool303.not, label %if.then304, label %if.end305

if.then304:                                       ; preds = %for.end298
  %220 = load ptr, ptr %tif.addr, align 8
  call void @MissingRequired(ptr noundef %220, ptr noundef nonnull @.str.7)
  br label %bad

if.end305:                                        ; preds = %for.end298
  %221 = load ptr, ptr %tif.addr, align 8
  %tif_dir306 = getelementptr inbounds %struct.tiff, ptr %221, i64 0, i32 6
  %222 = load i64, ptr %tif_dir306, align 8
  %and309 = and i64 %222, 1048576
  %tobool310.not = icmp eq i64 %and309, 0
  br i1 %tobool310.not, label %if.then311, label %if.end312

if.then311:                                       ; preds = %if.end305
  %223 = load ptr, ptr %tif.addr, align 8
  call void @MissingRequired(ptr noundef %223, ptr noundef nonnull @.str.8)
  br label %bad

if.end312:                                        ; preds = %if.end305
  %224 = load ptr, ptr %tif.addr, align 8
  %tif_dir313 = getelementptr inbounds %struct.tiff, ptr %224, i64 0, i32 6
  %225 = load i64, ptr %tif_dir313, align 8
  %and316 = and i64 %225, 4
  %tobool317.not = icmp eq i64 %and316, 0
  br i1 %tobool317.not, label %if.then318, label %if.else322

if.then318:                                       ; preds = %if.end312
  %226 = load ptr, ptr %tif.addr, align 8
  %call319 = call i64 @TIFFNumberOfStrips(ptr noundef %226) #2
  %227 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %227, i64 0, i32 43
  store i64 %call319, ptr %td_nstrips, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %227, i64 0, i32 1
  %228 = load i64, ptr %td_imagewidth, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %227, i64 0, i32 4
  store i64 %228, ptr %td_tilewidth, align 8
  %229 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %229, i64 0, i32 16
  %230 = load i64, ptr %td_rowsperstrip, align 8
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %229, i64 0, i32 5
  store i64 %230, ptr %td_tilelength, align 8
  %td_imagedepth = getelementptr inbounds %struct.TIFFDirectory, ptr %229, i64 0, i32 3
  %231 = load i64, ptr %td_imagedepth, align 8
  %232 = load ptr, ptr %td, align 8
  %td_tiledepth = getelementptr inbounds %struct.TIFFDirectory, ptr %232, i64 0, i32 6
  store i64 %231, ptr %td_tiledepth, align 8
  %233 = load ptr, ptr %tif.addr, align 8
  %tif_flags320 = getelementptr inbounds %struct.tiff, ptr %233, i64 0, i32 3
  %234 = load i64, ptr %tif_flags320, align 8
  %and321 = and i64 %234, -1025
  store i64 %and321, ptr %tif_flags320, align 8
  br label %if.end327

if.else322:                                       ; preds = %if.end312
  %235 = load ptr, ptr %tif.addr, align 8
  %call323 = call i64 @TIFFNumberOfTiles(ptr noundef %235) #2
  %236 = load ptr, ptr %td, align 8
  %td_nstrips324 = getelementptr inbounds %struct.TIFFDirectory, ptr %236, i64 0, i32 43
  store i64 %call323, ptr %td_nstrips324, align 8
  %237 = load ptr, ptr %tif.addr, align 8
  %tif_flags325 = getelementptr inbounds %struct.tiff, ptr %237, i64 0, i32 3
  %238 = load i64, ptr %tif_flags325, align 8
  %or326 = or i64 %238, 1024
  store i64 %or326, ptr %tif_flags325, align 8
  br label %if.end327

if.end327:                                        ; preds = %if.else322, %if.then318
  %239 = load ptr, ptr %td, align 8
  %td_nstrips328 = getelementptr inbounds %struct.TIFFDirectory, ptr %239, i64 0, i32 43
  %240 = load i64, ptr %td_nstrips328, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %239, i64 0, i32 42
  store i64 %240, ptr %td_stripsperimage, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %239, i64 0, i32 24
  %241 = load i16, ptr %td_planarconfig, align 2
  %cmp330 = icmp eq i16 %241, 2
  br i1 %cmp330, label %if.then332, label %if.end337

if.then332:                                       ; preds = %if.end327
  %242 = load ptr, ptr %td, align 8
  %td_samplesperpixel333 = getelementptr inbounds %struct.TIFFDirectory, ptr %242, i64 0, i32 15
  %243 = load i16, ptr %td_samplesperpixel333, align 2
  %conv334 = zext i16 %243 to i64
  %td_stripsperimage335 = getelementptr inbounds %struct.TIFFDirectory, ptr %242, i64 0, i32 42
  %244 = load i64, ptr %td_stripsperimage335, align 8
  %div336 = udiv i64 %244, %conv334
  store i64 %div336, ptr %td_stripsperimage335, align 8
  br label %if.end337

if.end337:                                        ; preds = %if.then332, %if.end327
  %245 = load ptr, ptr %tif.addr, align 8
  %tif_dir338 = getelementptr inbounds %struct.tiff, ptr %245, i64 0, i32 6
  %246 = load i64, ptr %tif_dir338, align 8
  %and341 = and i64 %246, 33554432
  %tobool342.not = icmp eq i64 %and341, 0
  br i1 %tobool342.not, label %if.then343, label %if.end349

if.then343:                                       ; preds = %if.end337
  %247 = load ptr, ptr %tif.addr, align 8
  %tif_flags344 = getelementptr inbounds %struct.tiff, ptr %247, i64 0, i32 3
  %248 = load i64, ptr %tif_flags344, align 8
  %and345 = and i64 %248, 1024
  %cmp346.not = icmp eq i64 %and345, 0
  %cond348 = select i1 %cmp346.not, ptr @.str.10, ptr @.str.9
  call void @MissingRequired(ptr noundef %247, ptr noundef nonnull %cond348)
  br label %bad

if.end349:                                        ; preds = %if.end337
  %249 = load ptr, ptr %dir, align 8
  store ptr %249, ptr %dp, align 8
  %250 = load i16, ptr %dircount, align 2
  %conv350 = zext i16 %250 to i32
  store i32 %conv350, ptr %n, align 4
  br label %for.cond351

for.cond351:                                      ; preds = %for.inc523, %if.end349
  %251 = load i32, ptr %n, align 4
  %cmp352 = icmp sgt i32 %251, 0
  br i1 %cmp352, label %for.body354, label %for.end526

for.body354:                                      ; preds = %for.cond351
  %252 = load ptr, ptr %dp, align 8
  %253 = load i16, ptr %252, align 8
  %cmp357 = icmp eq i16 %253, 0
  br i1 %cmp357, label %for.inc523, label %if.end360

if.end360:                                        ; preds = %for.body354
  %254 = load ptr, ptr %dp, align 8
  %255 = load i16, ptr %254, align 8
  switch i16 %255, label %sw.default [
    i16 280, label %sw.bb363
    i16 281, label %sw.bb363
    i16 258, label %sw.bb363
    i16 -32540, label %sw.bb403
    i16 339, label %sw.bb403
    i16 340, label %sw.bb413
    i16 341, label %sw.bb413
    i16 273, label %sw.bb423
    i16 324, label %sw.bb423
    i16 279, label %sw.bb429
    i16 325, label %sw.bb429
    i16 320, label %sw.bb435
    i16 301, label %sw.bb435
    i16 297, label %sw.bb481
    i16 321, label %sw.bb481
    i16 530, label %sw.bb481
    i16 336, label %sw.bb481
    i16 532, label %sw.bb483
    i16 255, label %sw.bb485
  ]

sw.bb363:                                         ; preds = %if.end360, %if.end360, %if.end360
  %256 = load ptr, ptr %dp, align 8
  %tdir_count364 = getelementptr inbounds %struct.TIFFDirEntry, ptr %256, i64 0, i32 2
  %257 = load i64, ptr %tdir_count364, align 8
  %cmp365 = icmp eq i64 %257, 1
  br i1 %cmp365, label %if.then367, label %sw.bb403

if.then367:                                       ; preds = %sw.bb363
  %258 = load ptr, ptr %tif.addr, align 8
  %tif_header368 = getelementptr inbounds %struct.tiff, ptr %258, i64 0, i32 7
  %259 = load i16, ptr %tif_header368, align 8
  %cmp371 = icmp eq i16 %259, 19789
  br i1 %cmp371, label %cond.true373, label %cond.false386

cond.true373:                                     ; preds = %if.then367
  %260 = load ptr, ptr %dp, align 8
  %tdir_offset374 = getelementptr inbounds %struct.TIFFDirEntry, ptr %260, i64 0, i32 3
  %261 = load i64, ptr %tdir_offset374, align 8
  %262 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift375 = getelementptr inbounds %struct.tiff, ptr %262, i64 0, i32 9
  %263 = load ptr, ptr %tif_typeshift375, align 8
  %tdir_type376 = getelementptr inbounds %struct.TIFFDirEntry, ptr %260, i64 0, i32 1
  %264 = load i16, ptr %tdir_type376, align 2
  %idxprom377 = zext i16 %264 to i64
  %arrayidx378 = getelementptr inbounds i32, ptr %263, i64 %idxprom377
  %265 = load i32, ptr %arrayidx378, align 4
  %sh_prom379 = zext i32 %265 to i64
  %shr380 = lshr i64 %261, %sh_prom379
  %266 = load ptr, ptr %tif.addr, align 8
  %tif_typemask381 = getelementptr inbounds %struct.tiff, ptr %266, i64 0, i32 10
  %267 = load ptr, ptr %tif_typemask381, align 8
  %268 = load ptr, ptr %dp, align 8
  %tdir_type382 = getelementptr inbounds %struct.TIFFDirEntry, ptr %268, i64 0, i32 1
  %269 = load i16, ptr %tdir_type382, align 2
  %idxprom383 = zext i16 %269 to i64
  %arrayidx384 = getelementptr inbounds i64, ptr %267, i64 %idxprom383
  %270 = load i64, ptr %arrayidx384, align 8
  %and385 = and i64 %shr380, %270
  br label %cond.end393

cond.false386:                                    ; preds = %if.then367
  %271 = load ptr, ptr %dp, align 8
  %tdir_offset387 = getelementptr inbounds %struct.TIFFDirEntry, ptr %271, i64 0, i32 3
  %272 = load i64, ptr %tdir_offset387, align 8
  %273 = load ptr, ptr %tif.addr, align 8
  %tif_typemask388 = getelementptr inbounds %struct.tiff, ptr %273, i64 0, i32 10
  %274 = load ptr, ptr %tif_typemask388, align 8
  %tdir_type389 = getelementptr inbounds %struct.TIFFDirEntry, ptr %271, i64 0, i32 1
  %275 = load i16, ptr %tdir_type389, align 2
  %idxprom390 = zext i16 %275 to i64
  %arrayidx391 = getelementptr inbounds i64, ptr %274, i64 %idxprom390
  %276 = load i64, ptr %arrayidx391, align 8
  %and392 = and i64 %272, %276
  br label %cond.end393

cond.end393:                                      ; preds = %cond.false386, %cond.true373
  %cond394 = phi i64 [ %and385, %cond.true373 ], [ %and392, %cond.false386 ]
  store i64 %cond394, ptr %v, align 8
  %277 = load ptr, ptr %tif.addr, align 8
  %278 = load ptr, ptr %dp, align 8
  %279 = load i16, ptr %278, align 8
  %conv396 = zext i16 %279 to i64
  %conv397 = trunc i64 %cond394 to i32
  %call398 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %277, i64 noundef %conv396, i32 noundef %conv397) #2
  %tobool399.not = icmp eq i32 %call398, 0
  br i1 %tobool399.not, label %bad, label %for.inc523

sw.bb403:                                         ; preds = %sw.bb363, %if.end360, %if.end360
  %280 = load ptr, ptr %tif.addr, align 8
  %281 = load ptr, ptr %dp, align 8
  %call404 = call i32 @TIFFFetchPerSampleShorts(ptr noundef %280, ptr noundef %281, ptr noundef nonnull %iv)
  %tobool405.not = icmp eq i32 %call404, 0
  br i1 %tobool405.not, label %bad, label %lor.lhs.false406

lor.lhs.false406:                                 ; preds = %sw.bb403
  %282 = load ptr, ptr %tif.addr, align 8
  %283 = load ptr, ptr %dp, align 8
  %284 = load i16, ptr %283, align 8
  %conv408 = zext i16 %284 to i64
  %285 = load i32, ptr %iv, align 4
  %call409 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %282, i64 noundef %conv408, i32 noundef %285) #2
  %tobool410.not = icmp eq i32 %call409, 0
  br i1 %tobool410.not, label %bad, label %for.inc523

sw.bb413:                                         ; preds = %if.end360, %if.end360
  %286 = load ptr, ptr %tif.addr, align 8
  %287 = load ptr, ptr %dp, align 8
  %call414 = call i32 @TIFFFetchPerSampleAnys(ptr noundef %286, ptr noundef %287, ptr noundef nonnull %dv)
  %tobool415.not = icmp eq i32 %call414, 0
  br i1 %tobool415.not, label %bad, label %lor.lhs.false416

lor.lhs.false416:                                 ; preds = %sw.bb413
  %288 = load ptr, ptr %tif.addr, align 8
  %289 = load ptr, ptr %dp, align 8
  %290 = load i16, ptr %289, align 8
  %conv418 = zext i16 %290 to i64
  %291 = load double, ptr %dv, align 8
  %call419 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %288, i64 noundef %conv418, double noundef %291) #2
  %tobool420.not = icmp eq i32 %call419, 0
  br i1 %tobool420.not, label %bad, label %for.inc523

sw.bb423:                                         ; preds = %if.end360, %if.end360
  %292 = load ptr, ptr %tif.addr, align 8
  %293 = load ptr, ptr %dp, align 8
  %294 = load ptr, ptr %td, align 8
  %td_nstrips424 = getelementptr inbounds %struct.TIFFDirectory, ptr %294, i64 0, i32 43
  %295 = load i64, ptr %td_nstrips424, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %294, i64 0, i32 44
  %call425 = call i32 @TIFFFetchStripThing(ptr noundef %292, ptr noundef %293, i64 noundef %295, ptr noundef nonnull %td_stripoffset)
  %tobool426.not = icmp eq i32 %call425, 0
  br i1 %tobool426.not, label %bad, label %for.inc523

sw.bb429:                                         ; preds = %if.end360, %if.end360
  %296 = load ptr, ptr %tif.addr, align 8
  %297 = load ptr, ptr %dp, align 8
  %298 = load ptr, ptr %td, align 8
  %td_nstrips430 = getelementptr inbounds %struct.TIFFDirectory, ptr %298, i64 0, i32 43
  %299 = load i64, ptr %td_nstrips430, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %298, i64 0, i32 45
  %call431 = call i32 @TIFFFetchStripThing(ptr noundef %296, ptr noundef %297, i64 noundef %299, ptr noundef nonnull %td_stripbytecount)
  %tobool432.not = icmp eq i32 %call431, 0
  br i1 %tobool432.not, label %bad, label %for.inc523

sw.bb435:                                         ; preds = %if.end360, %if.end360
  %300 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %300, i64 0, i32 8
  %301 = load i16, ptr %td_bitspersample, align 8
  %sh_prom437 = zext i16 %301 to i64
  %shl438 = shl i64 1, %sh_prom437
  store i64 %shl438, ptr %v, align 8
  %302 = load ptr, ptr %dp, align 8
  %303 = load i16, ptr %302, align 8
  %cmp441 = icmp eq i16 %303, 320
  br i1 %cmp441, label %if.then447, label %lor.lhs.false443

lor.lhs.false443:                                 ; preds = %sw.bb435
  %304 = load ptr, ptr %dp, align 8
  %tdir_count444 = getelementptr inbounds %struct.TIFFDirEntry, ptr %304, i64 0, i32 2
  %305 = load i64, ptr %tdir_count444, align 8
  %306 = load i64, ptr %v, align 8
  %cmp445.not = icmp eq i64 %305, %306
  br i1 %cmp445.not, label %if.end453, label %if.then447

if.then447:                                       ; preds = %lor.lhs.false443, %sw.bb435
  %307 = load ptr, ptr %tif.addr, align 8
  %308 = load ptr, ptr %dp, align 8
  %309 = load i64, ptr %v, align 8
  %mul448 = mul nsw i64 %309, 3
  %call449 = call i32 @CheckDirCount(ptr noundef %307, ptr noundef %308, i64 noundef %mul448)
  %tobool450.not = icmp eq i32 %call449, 0
  br i1 %tobool450.not, label %for.inc523, label %if.end453

if.end453:                                        ; preds = %if.then447, %lor.lhs.false443
  %310 = load i64, ptr %v, align 8
  %mul454 = shl i64 %310, 1
  store i64 %mul454, ptr %v, align 8
  %311 = load ptr, ptr %tif.addr, align 8
  %312 = load ptr, ptr %dp, align 8
  %tdir_count455 = getelementptr inbounds %struct.TIFFDirEntry, ptr %312, i64 0, i32 2
  %313 = load i64, ptr %tdir_count455, align 8
  %mul456 = shl i64 %313, 1
  %call457 = call ptr @CheckMalloc(ptr noundef %311, i64 noundef %mul456, ptr noundef nonnull @.str.11)
  store ptr %call457, ptr %cp, align 8
  %cmp458.not = icmp eq ptr %call457, null
  br i1 %cmp458.not, label %for.inc523, label %if.then460

if.then460:                                       ; preds = %if.end453
  %314 = load ptr, ptr %tif.addr, align 8
  %315 = load ptr, ptr %dp, align 8
  %316 = load ptr, ptr %cp, align 8
  %call461 = call i64 @TIFFFetchData(ptr noundef %314, ptr noundef %315, ptr noundef %316)
  %tobool462.not = icmp eq i64 %call461, 0
  br i1 %tobool462.not, label %if.end479, label %if.then463

if.then463:                                       ; preds = %if.then460
  %317 = load ptr, ptr %td, align 8
  %td_bitspersample464 = getelementptr inbounds %struct.TIFFDirectory, ptr %317, i64 0, i32 8
  %318 = load i16, ptr %td_bitspersample464, align 8
  %sh_prom466 = zext i16 %318 to i64
  %shl467 = shl i64 1, %sh_prom466
  %319 = load ptr, ptr %dp, align 8
  %tdir_count468 = getelementptr inbounds %struct.TIFFDirEntry, ptr %319, i64 0, i32 2
  %320 = load i64, ptr %tdir_count468, align 8
  %cmp469 = icmp eq i64 %320, %shl467
  br i1 %cmp469, label %if.then471, label %if.end472

if.then471:                                       ; preds = %if.then463
  store i64 0, ptr %v, align 8
  br label %if.end472

if.end472:                                        ; preds = %if.then471, %if.then463
  %321 = load ptr, ptr %tif.addr, align 8
  %322 = load ptr, ptr %dp, align 8
  %323 = load i16, ptr %322, align 8
  %conv474 = zext i16 %323 to i64
  %324 = load ptr, ptr %cp, align 8
  %325 = load i64, ptr %v, align 8
  %add.ptr475 = getelementptr inbounds i8, ptr %324, i64 %325
  %mul476 = shl nsw i64 %325, 1
  %add.ptr477 = getelementptr inbounds i8, ptr %324, i64 %mul476
  %call478 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %321, i64 noundef %conv474, ptr noundef %324, ptr noundef %add.ptr475, ptr noundef %add.ptr477) #2
  br label %if.end479

if.end479:                                        ; preds = %if.end472, %if.then460
  %326 = load ptr, ptr %cp, align 8
  call void @_TIFFfree(ptr noundef %326) #2
  br label %for.inc523

sw.bb481:                                         ; preds = %if.end360, %if.end360, %if.end360, %if.end360
  %327 = load ptr, ptr %tif.addr, align 8
  %328 = load ptr, ptr %dp, align 8
  %call482 = call i32 @TIFFFetchShortPair(ptr noundef %327, ptr noundef %328)
  br label %for.inc523

sw.bb483:                                         ; preds = %if.end360
  %329 = load ptr, ptr %tif.addr, align 8
  %330 = load ptr, ptr %dp, align 8
  %call484 = call i32 @TIFFFetchRefBlackWhite(ptr noundef %329, ptr noundef %330)
  br label %for.inc523

sw.bb485:                                         ; preds = %if.end360
  store i64 0, ptr %v, align 8
  %331 = load ptr, ptr %tif.addr, align 8
  %tif_header486 = getelementptr inbounds %struct.tiff, ptr %331, i64 0, i32 7
  %332 = load i16, ptr %tif_header486, align 8
  %cmp489 = icmp eq i16 %332, 19789
  br i1 %cmp489, label %cond.true491, label %cond.false504

cond.true491:                                     ; preds = %sw.bb485
  %333 = load ptr, ptr %dp, align 8
  %tdir_offset492 = getelementptr inbounds %struct.TIFFDirEntry, ptr %333, i64 0, i32 3
  %334 = load i64, ptr %tdir_offset492, align 8
  %335 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift493 = getelementptr inbounds %struct.tiff, ptr %335, i64 0, i32 9
  %336 = load ptr, ptr %tif_typeshift493, align 8
  %tdir_type494 = getelementptr inbounds %struct.TIFFDirEntry, ptr %333, i64 0, i32 1
  %337 = load i16, ptr %tdir_type494, align 2
  %idxprom495 = zext i16 %337 to i64
  %arrayidx496 = getelementptr inbounds i32, ptr %336, i64 %idxprom495
  %338 = load i32, ptr %arrayidx496, align 4
  %sh_prom497 = zext i32 %338 to i64
  %shr498 = lshr i64 %334, %sh_prom497
  %339 = load ptr, ptr %tif.addr, align 8
  %tif_typemask499 = getelementptr inbounds %struct.tiff, ptr %339, i64 0, i32 10
  %340 = load ptr, ptr %tif_typemask499, align 8
  %341 = load ptr, ptr %dp, align 8
  %tdir_type500 = getelementptr inbounds %struct.TIFFDirEntry, ptr %341, i64 0, i32 1
  %342 = load i16, ptr %tdir_type500, align 2
  %idxprom501 = zext i16 %342 to i64
  %arrayidx502 = getelementptr inbounds i64, ptr %340, i64 %idxprom501
  %343 = load i64, ptr %arrayidx502, align 8
  %and503 = and i64 %shr498, %343
  br label %cond.end511

cond.false504:                                    ; preds = %sw.bb485
  %344 = load ptr, ptr %dp, align 8
  %tdir_offset505 = getelementptr inbounds %struct.TIFFDirEntry, ptr %344, i64 0, i32 3
  %345 = load i64, ptr %tdir_offset505, align 8
  %346 = load ptr, ptr %tif.addr, align 8
  %tif_typemask506 = getelementptr inbounds %struct.tiff, ptr %346, i64 0, i32 10
  %347 = load ptr, ptr %tif_typemask506, align 8
  %tdir_type507 = getelementptr inbounds %struct.TIFFDirEntry, ptr %344, i64 0, i32 1
  %348 = load i16, ptr %tdir_type507, align 2
  %idxprom508 = zext i16 %348 to i64
  %arrayidx509 = getelementptr inbounds i64, ptr %347, i64 %idxprom508
  %349 = load i64, ptr %arrayidx509, align 8
  %and510 = and i64 %345, %349
  br label %cond.end511

cond.end511:                                      ; preds = %cond.false504, %cond.true491
  %cond512 = phi i64 [ %and503, %cond.true491 ], [ %and510, %cond.false504 ]
  switch i64 %cond512, label %sw.epilog515 [
    i64 2, label %sw.bb513
    i64 3, label %sw.bb514
  ]

sw.bb513:                                         ; preds = %cond.end511
  store i64 1, ptr %v, align 8
  br label %sw.epilog515

sw.bb514:                                         ; preds = %cond.end511
  store i64 2, ptr %v, align 8
  br label %sw.epilog515

sw.epilog515:                                     ; preds = %sw.bb514, %sw.bb513, %cond.end511
  %350 = load i64, ptr %v, align 8
  %tobool516.not = icmp eq i64 %350, 0
  br i1 %tobool516.not, label %for.inc523, label %if.then517

if.then517:                                       ; preds = %sw.epilog515
  %351 = load ptr, ptr %tif.addr, align 8
  %352 = load i64, ptr %v, align 8
  %conv518 = trunc i64 %352 to i32
  %call519 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %351, i64 noundef 254, i32 noundef %conv518) #2
  br label %for.inc523

sw.default:                                       ; preds = %if.end360
  %353 = load ptr, ptr %tif.addr, align 8
  %354 = load ptr, ptr %dp, align 8
  %call521 = call i32 @TIFFFetchNormalTag(ptr noundef %353, ptr noundef %354)
  br label %for.inc523

for.inc523:                                       ; preds = %sw.bb481, %sw.bb483, %sw.default, %cond.end393, %lor.lhs.false406, %lor.lhs.false416, %sw.bb423, %sw.bb429, %if.then447, %if.end479, %if.end453, %if.then517, %sw.epilog515, %for.body354
  %355 = load i32, ptr %n, align 4
  %dec524 = add nsw i32 %355, -1
  store i32 %dec524, ptr %n, align 4
  %356 = load ptr, ptr %dp, align 8
  %incdec.ptr525 = getelementptr inbounds %struct.TIFFDirEntry, ptr %356, i64 1
  store ptr %incdec.ptr525, ptr %dp, align 8
  br label %for.cond351, !llvm.loop !11

for.end526:                                       ; preds = %for.cond351
  %357 = load ptr, ptr %td, align 8
  %td_photometric = getelementptr inbounds %struct.TIFFDirectory, ptr %357, i64 0, i32 11
  %358 = load i16, ptr %td_photometric, align 2
  %cmp528 = icmp eq i16 %358, 3
  br i1 %cmp528, label %land.lhs.true, label %if.end536

land.lhs.true:                                    ; preds = %for.end526
  %359 = load ptr, ptr %tif.addr, align 8
  %tif_dir530 = getelementptr inbounds %struct.tiff, ptr %359, i64 0, i32 6
  %360 = load i64, ptr %tif_dir530, align 8
  %and533 = and i64 %360, 67108864
  %tobool534.not = icmp eq i64 %and533, 0
  br i1 %tobool534.not, label %if.then535, label %if.end536

if.then535:                                       ; preds = %land.lhs.true
  %361 = load ptr, ptr %tif.addr, align 8
  call void @MissingRequired(ptr noundef %361, ptr noundef nonnull @.str.12)
  br label %bad

if.end536:                                        ; preds = %land.lhs.true, %for.end526
  %362 = load ptr, ptr %tif.addr, align 8
  %tif_dir537 = getelementptr inbounds %struct.tiff, ptr %362, i64 0, i32 6
  %363 = load i64, ptr %tif_dir537, align 8
  %and540 = and i64 %363, 16777216
  %tobool541.not = icmp eq i64 %and540, 0
  br i1 %tobool541.not, label %if.then542, label %if.else567

if.then542:                                       ; preds = %if.end536
  %364 = load ptr, ptr %td, align 8
  %td_planarconfig543 = getelementptr inbounds %struct.TIFFDirectory, ptr %364, i64 0, i32 24
  %365 = load i16, ptr %td_planarconfig543, align 2
  %cmp545 = icmp eq i16 %365, 1
  br i1 %cmp545, label %land.lhs.true547, label %lor.lhs.false551

land.lhs.true547:                                 ; preds = %if.then542
  %366 = load ptr, ptr %td, align 8
  %td_nstrips548 = getelementptr inbounds %struct.TIFFDirectory, ptr %366, i64 0, i32 43
  %367 = load i64, ptr %td_nstrips548, align 8
  %cmp549 = icmp ugt i64 %367, 1
  br i1 %cmp549, label %if.then562, label %lor.lhs.false551

lor.lhs.false551:                                 ; preds = %land.lhs.true547, %if.then542
  %368 = load ptr, ptr %td, align 8
  %td_planarconfig552 = getelementptr inbounds %struct.TIFFDirectory, ptr %368, i64 0, i32 24
  %369 = load i16, ptr %td_planarconfig552, align 2
  %cmp554 = icmp eq i16 %369, 2
  br i1 %cmp554, label %land.lhs.true556, label %if.end563

land.lhs.true556:                                 ; preds = %lor.lhs.false551
  %370 = load ptr, ptr %td, align 8
  %td_nstrips557 = getelementptr inbounds %struct.TIFFDirectory, ptr %370, i64 0, i32 43
  %371 = load i64, ptr %td_nstrips557, align 8
  %td_samplesperpixel558 = getelementptr inbounds %struct.TIFFDirectory, ptr %370, i64 0, i32 15
  %372 = load i16, ptr %td_samplesperpixel558, align 2
  %conv559 = zext i16 %372 to i64
  %cmp560.not = icmp eq i64 %371, %conv559
  br i1 %cmp560.not, label %if.end563, label %if.then562

if.then562:                                       ; preds = %land.lhs.true556, %land.lhs.true547
  %373 = load ptr, ptr %tif.addr, align 8
  call void @MissingRequired(ptr noundef %373, ptr noundef nonnull @.str.13)
  br label %bad

if.end563:                                        ; preds = %land.lhs.true556, %lor.lhs.false551
  %374 = load ptr, ptr %tif.addr, align 8
  %375 = load ptr, ptr %374, align 8
  %call565 = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %374, i64 noundef 279) #2
  %field_name566 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call565, i64 0, i32 7
  %376 = load ptr, ptr %field_name566, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %375, ptr noundef nonnull @.str.14, ptr noundef %376) #2
  %377 = load ptr, ptr %tif.addr, align 8
  %378 = load ptr, ptr %dir, align 8
  %379 = load i16, ptr %dircount, align 2
  call void @EstimateStripByteCounts(ptr noundef %377, ptr noundef %378, i16 noundef zeroext %379)
  br label %if.end594

if.else567:                                       ; preds = %if.end536
  %380 = load ptr, ptr %td, align 8
  %td_nstrips568 = getelementptr inbounds %struct.TIFFDirectory, ptr %380, i64 0, i32 43
  %381 = load i64, ptr %td_nstrips568, align 8
  %cmp569 = icmp eq i64 %381, 1
  br i1 %cmp569, label %land.lhs.true571, label %if.end594

land.lhs.true571:                                 ; preds = %if.else567
  %382 = load ptr, ptr %td, align 8
  %td_stripbytecount572 = getelementptr inbounds %struct.TIFFDirectory, ptr %382, i64 0, i32 45
  %383 = load ptr, ptr %td_stripbytecount572, align 8
  %384 = load i64, ptr %383, align 8
  %cmp574 = icmp eq i64 %384, 0
  br i1 %cmp574, label %if.then589, label %lor.lhs.false576

lor.lhs.false576:                                 ; preds = %land.lhs.true571
  %385 = load ptr, ptr %td, align 8
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %385, i64 0, i32 10
  %386 = load i16, ptr %td_compression, align 4
  %cmp578 = icmp eq i16 %386, 1
  br i1 %cmp578, label %land.lhs.true580, label %if.end594

land.lhs.true580:                                 ; preds = %lor.lhs.false576
  %387 = load ptr, ptr %td, align 8
  %td_stripbytecount581 = getelementptr inbounds %struct.TIFFDirectory, ptr %387, i64 0, i32 45
  %388 = load ptr, ptr %td_stripbytecount581, align 8
  %389 = load i64, ptr %388, align 8
  %390 = load ptr, ptr %tif.addr, align 8
  %tif_sizeproc = getelementptr inbounds %struct.tiff, ptr %390, i64 0, i32 53
  %391 = load ptr, ptr %tif_sizeproc, align 8
  %tif_clientdata583 = getelementptr inbounds %struct.tiff, ptr %390, i64 0, i32 48
  %392 = load ptr, ptr %tif_clientdata583, align 8
  %call584 = call i64 %391(ptr noundef %392) #2
  %393 = load ptr, ptr %td, align 8
  %td_stripoffset585 = getelementptr inbounds %struct.TIFFDirectory, ptr %393, i64 0, i32 44
  %394 = load ptr, ptr %td_stripoffset585, align 8
  %395 = load i64, ptr %394, align 8
  %sub = sub i64 %call584, %395
  %cmp587 = icmp ugt i64 %389, %sub
  br i1 %cmp587, label %if.then589, label %if.end594

if.then589:                                       ; preds = %land.lhs.true580, %land.lhs.true571
  %396 = load ptr, ptr %tif.addr, align 8
  %397 = load ptr, ptr %396, align 8
  %call591 = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %396, i64 noundef 279) #2
  %field_name592 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call591, i64 0, i32 7
  %398 = load ptr, ptr %field_name592, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %397, ptr noundef nonnull @.str.15, ptr noundef %398) #2
  %399 = load ptr, ptr %tif.addr, align 8
  %400 = load ptr, ptr %dir, align 8
  %401 = load i16, ptr %dircount, align 2
  call void @EstimateStripByteCounts(ptr noundef %399, ptr noundef %400, i16 noundef zeroext %401)
  br label %if.end594

if.end594:                                        ; preds = %if.else567, %lor.lhs.false576, %land.lhs.true580, %if.then589, %if.end563
  %402 = load ptr, ptr %dir, align 8
  %tobool595.not = icmp eq ptr %402, null
  br i1 %tobool595.not, label %if.end597, label %if.then596

if.then596:                                       ; preds = %if.end594
  %403 = load ptr, ptr %dir, align 8
  call void @_TIFFfree(ptr noundef %403) #2
  br label %if.end597

if.end597:                                        ; preds = %if.then596, %if.end594
  %404 = load ptr, ptr %tif.addr, align 8
  %tif_dir598 = getelementptr inbounds %struct.tiff, ptr %404, i64 0, i32 6
  %405 = load i64, ptr %tif_dir598, align 8
  %and601 = and i64 %405, 524288
  %tobool602.not = icmp eq i64 %and601, 0
  br i1 %tobool602.not, label %if.then603, label %if.end610

if.then603:                                       ; preds = %if.end597
  %406 = load ptr, ptr %td, align 8
  %td_bitspersample604 = getelementptr inbounds %struct.TIFFDirectory, ptr %406, i64 0, i32 8
  %407 = load i16, ptr %td_bitspersample604, align 8
  %sh_prom606 = zext i16 %407 to i64
  %notmask = shl nsw i64 -1, %sh_prom606
  %408 = trunc i64 %notmask to i16
  %conv609 = xor i16 %408, -1
  %409 = load ptr, ptr %td, align 8
  %td_maxsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %409, i64 0, i32 18
  store i16 %conv609, ptr %td_maxsamplevalue, align 2
  br label %if.end610

if.end610:                                        ; preds = %if.then603, %if.end597
  %410 = load ptr, ptr %tif.addr, align 8
  %tif_dir611 = getelementptr inbounds %struct.tiff, ptr %410, i64 0, i32 6
  %411 = load i64, ptr %tif_dir611, align 8
  %and614 = and i64 %411, 128
  %tobool615.not = icmp eq i64 %and614, 0
  br i1 %tobool615.not, label %if.then616, label %if.end618

if.then616:                                       ; preds = %if.end610
  %412 = load ptr, ptr %tif.addr, align 8
  %call617 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %412, i64 noundef 259, i32 noundef 1) #2
  br label %if.end618

if.end618:                                        ; preds = %if.then616, %if.end610
  %413 = load ptr, ptr %td, align 8
  %td_nstrips619 = getelementptr inbounds %struct.TIFFDirectory, ptr %413, i64 0, i32 43
  %414 = load i64, ptr %td_nstrips619, align 8
  %cmp620 = icmp eq i64 %414, 1
  br i1 %cmp620, label %land.lhs.true622, label %if.end633

land.lhs.true622:                                 ; preds = %if.end618
  %415 = load ptr, ptr %td, align 8
  %td_compression623 = getelementptr inbounds %struct.TIFFDirectory, ptr %415, i64 0, i32 10
  %416 = load i16, ptr %td_compression623, align 4
  %cmp625 = icmp eq i16 %416, 1
  br i1 %cmp625, label %land.lhs.true627, label %if.end633

land.lhs.true627:                                 ; preds = %land.lhs.true622
  %417 = load ptr, ptr %tif.addr, align 8
  %tif_flags628 = getelementptr inbounds %struct.tiff, ptr %417, i64 0, i32 3
  %418 = load i64, ptr %tif_flags628, align 8
  %and629 = and i64 %418, 33792
  %cmp630 = icmp eq i64 %and629, 32768
  br i1 %cmp630, label %if.then632, label %if.end633

if.then632:                                       ; preds = %land.lhs.true627
  %419 = load ptr, ptr %tif.addr, align 8
  call void @ChopUpSingleUncompressedStrip(ptr noundef %419)
  br label %if.end633

if.end633:                                        ; preds = %if.then632, %land.lhs.true627, %land.lhs.true622, %if.end618
  %420 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %420, i64 0, i32 11
  store i64 -1, ptr %tif_row, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %420, i64 0, i32 13
  store i64 -1, ptr %tif_curstrip, align 8
  %tif_col = getelementptr inbounds %struct.tiff, ptr %420, i64 0, i32 18
  store i64 -1, ptr %tif_col, align 8
  %421 = load ptr, ptr %tif.addr, align 8
  %tif_curtile = getelementptr inbounds %struct.tiff, ptr %421, i64 0, i32 19
  store i64 -1, ptr %tif_curtile, align 8
  %call634 = call i64 @TIFFTileSize(ptr noundef %421) #2
  %422 = load ptr, ptr %tif.addr, align 8
  %tif_tilesize = getelementptr inbounds %struct.tiff, ptr %422, i64 0, i32 20
  store i64 %call634, ptr %tif_tilesize, align 8
  %call635 = call i64 @TIFFScanlineSize(ptr noundef %422) #2
  %423 = load ptr, ptr %tif.addr, align 8
  %tif_scanlinesize = getelementptr inbounds %struct.tiff, ptr %423, i64 0, i32 38
  store i64 %call635, ptr %tif_scanlinesize, align 8
  store i32 1, ptr %retval, align 4
  br label %return

bad:                                              ; preds = %sw.bb429, %sw.bb423, %sw.bb413, %lor.lhs.false416, %sw.bb403, %lor.lhs.false406, %cond.end393, %sw.bb286, %if.end265, %lor.lhs.false268, %cond.end256, %if.then109, %if.then562, %if.then535, %if.then343, %if.then311, %if.then304, %if.then67, %if.then33
  %424 = load ptr, ptr %dir, align 8
  %tobool636.not = icmp eq ptr %424, null
  br i1 %tobool636.not, label %if.end638, label %if.then637

if.then637:                                       ; preds = %bad
  %425 = load ptr, ptr %dir, align 8
  call void @_TIFFfree(ptr noundef %425) #2
  br label %if.end638

if.end638:                                        ; preds = %if.then637, %bad
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end638, %if.end633, %if.then59, %if.then44, %if.then22, %if.then12, %if.then7, %if.then
  %426 = load i32, ptr %retval, align 4
  ret i32 %426
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

declare void @TIFFSwabShort(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal ptr @CheckMalloc(ptr noundef %tif, i64 noundef %n, ptr noundef %what) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %what.addr = alloca ptr, align 8
  %cp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %what, ptr %what.addr, align 8
  %call = call ptr @_TIFFmalloc(i64 noundef %n) #2
  store ptr %call, ptr %cp, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = load ptr, ptr %what.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef %2) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %cp, align 8
  ret ptr %3
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i64 noundef) #1

declare void @TIFFSwabLong(ptr noundef) #1

declare void @TIFFFreeDirectory(ptr noundef) #1

declare i32 @TIFFDefaultDirectory(ptr noundef) #1

declare i32 @TIFFSetField(ptr noundef, i64 noundef, ...) #1

declare void @TIFFSwabArrayOfShort(ptr noundef, i64 noundef) #1

declare void @TIFFSwabArrayOfLong(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFFetchNormalTag(ptr noundef %tif, ptr noundef %dp) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dp.addr = alloca ptr, align 8
  %ok = alloca i32, align 4
  %fip = alloca ptr, align 8
  %cp = alloca ptr, align 8
  %type = alloca i32, align 4
  %v = alloca i16, align 2
  %v32 = alloca i64, align 8
  %v173 = alloca float, align 4
  %v199 = alloca double, align 8
  %c = alloca [2 x i8], align 1
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dp, ptr %dp.addr, align 8
  store i32 0, ptr %ok, align 4
  %0 = load i16, ptr %dp, align 8
  %conv = zext i16 %0 to i64
  %call = call ptr @_TIFFFieldWithTag(ptr noundef %tif, i64 noundef %conv) #2
  store ptr %call, ptr %fip, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %dp, i64 0, i32 2
  %1 = load i64, ptr %tdir_count, align 8
  %cmp = icmp ugt i64 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr null, ptr %cp, align 8
  %2 = load ptr, ptr %dp.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %2, i64 0, i32 1
  %3 = load i16, ptr %tdir_type, align 2
  switch i16 %3, label %sw.epilog [
    i16 1, label %sw.bb
    i16 6, label %sw.bb
    i16 3, label %sw.bb7
    i16 8, label %sw.bb7
    i16 4, label %sw.bb17
    i16 9, label %sw.bb17
    i16 5, label %sw.bb27
    i16 10, label %sw.bb27
    i16 11, label %sw.bb37
    i16 12, label %sw.bb47
    i16 2, label %sw.bb57
    i16 7, label %sw.bb57
  ]

sw.bb:                                            ; preds = %if.then, %if.then
  %4 = load ptr, ptr %tif.addr, align 8
  %5 = load ptr, ptr %dp.addr, align 8
  %tdir_count3 = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i64 0, i32 2
  %6 = load i64, ptr %tdir_count3, align 8
  %mul = shl i64 %6, 1
  %call4 = call ptr @CheckMalloc(ptr noundef %4, i64 noundef %mul, ptr noundef nonnull @TIFFFetchNormalTag.mesg)
  store ptr %call4, ptr %cp, align 8
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %sw.bb
  %7 = load ptr, ptr %tif.addr, align 8
  %8 = load ptr, ptr %dp.addr, align 8
  %9 = load ptr, ptr %cp, align 8
  %call5 = call i32 @TIFFFetchByteArray(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  %tobool6 = icmp ne i32 %call5, 0
  %phi.cast7 = zext i1 %tobool6 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb
  %10 = phi i32 [ 0, %sw.bb ], [ %phi.cast7, %land.rhs ]
  store i32 %10, ptr %ok, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.then, %if.then
  %11 = load ptr, ptr %tif.addr, align 8
  %12 = load ptr, ptr %dp.addr, align 8
  %tdir_count8 = getelementptr inbounds %struct.TIFFDirEntry, ptr %12, i64 0, i32 2
  %13 = load i64, ptr %tdir_count8, align 8
  %mul9 = shl i64 %13, 1
  %call10 = call ptr @CheckMalloc(ptr noundef %11, i64 noundef %mul9, ptr noundef nonnull @TIFFFetchNormalTag.mesg)
  store ptr %call10, ptr %cp, align 8
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %land.end15, label %land.rhs12

land.rhs12:                                       ; preds = %sw.bb7
  %14 = load ptr, ptr %tif.addr, align 8
  %15 = load ptr, ptr %dp.addr, align 8
  %16 = load ptr, ptr %cp, align 8
  %call13 = call i32 @TIFFFetchShortArray(ptr noundef %14, ptr noundef %15, ptr noundef %16)
  %tobool14 = icmp ne i32 %call13, 0
  %phi.cast6 = zext i1 %tobool14 to i32
  br label %land.end15

land.end15:                                       ; preds = %land.rhs12, %sw.bb7
  %17 = phi i32 [ 0, %sw.bb7 ], [ %phi.cast6, %land.rhs12 ]
  store i32 %17, ptr %ok, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.then, %if.then
  %18 = load ptr, ptr %tif.addr, align 8
  %19 = load ptr, ptr %dp.addr, align 8
  %tdir_count18 = getelementptr inbounds %struct.TIFFDirEntry, ptr %19, i64 0, i32 2
  %20 = load i64, ptr %tdir_count18, align 8
  %mul19 = shl i64 %20, 3
  %call20 = call ptr @CheckMalloc(ptr noundef %18, i64 noundef %mul19, ptr noundef nonnull @TIFFFetchNormalTag.mesg)
  store ptr %call20, ptr %cp, align 8
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %land.end25, label %land.rhs22

land.rhs22:                                       ; preds = %sw.bb17
  %21 = load ptr, ptr %tif.addr, align 8
  %22 = load ptr, ptr %dp.addr, align 8
  %23 = load ptr, ptr %cp, align 8
  %call23 = call i32 @TIFFFetchLongArray(ptr noundef %21, ptr noundef %22, ptr noundef %23)
  %tobool24 = icmp ne i32 %call23, 0
  %phi.cast5 = zext i1 %tobool24 to i32
  br label %land.end25

land.end25:                                       ; preds = %land.rhs22, %sw.bb17
  %24 = phi i32 [ 0, %sw.bb17 ], [ %phi.cast5, %land.rhs22 ]
  store i32 %24, ptr %ok, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.then, %if.then
  %25 = load ptr, ptr %tif.addr, align 8
  %26 = load ptr, ptr %dp.addr, align 8
  %tdir_count28 = getelementptr inbounds %struct.TIFFDirEntry, ptr %26, i64 0, i32 2
  %27 = load i64, ptr %tdir_count28, align 8
  %mul29 = shl i64 %27, 2
  %call30 = call ptr @CheckMalloc(ptr noundef %25, i64 noundef %mul29, ptr noundef nonnull @TIFFFetchNormalTag.mesg)
  store ptr %call30, ptr %cp, align 8
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %land.end35, label %land.rhs32

land.rhs32:                                       ; preds = %sw.bb27
  %28 = load ptr, ptr %tif.addr, align 8
  %29 = load ptr, ptr %dp.addr, align 8
  %30 = load ptr, ptr %cp, align 8
  %call33 = call i32 @TIFFFetchRationalArray(ptr noundef %28, ptr noundef %29, ptr noundef %30)
  %tobool34 = icmp ne i32 %call33, 0
  %phi.cast4 = zext i1 %tobool34 to i32
  br label %land.end35

land.end35:                                       ; preds = %land.rhs32, %sw.bb27
  %31 = phi i32 [ 0, %sw.bb27 ], [ %phi.cast4, %land.rhs32 ]
  store i32 %31, ptr %ok, align 4
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.then
  %32 = load ptr, ptr %tif.addr, align 8
  %33 = load ptr, ptr %dp.addr, align 8
  %tdir_count38 = getelementptr inbounds %struct.TIFFDirEntry, ptr %33, i64 0, i32 2
  %34 = load i64, ptr %tdir_count38, align 8
  %mul39 = shl i64 %34, 2
  %call40 = call ptr @CheckMalloc(ptr noundef %32, i64 noundef %mul39, ptr noundef nonnull @TIFFFetchNormalTag.mesg)
  store ptr %call40, ptr %cp, align 8
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %land.end45, label %land.rhs42

land.rhs42:                                       ; preds = %sw.bb37
  %35 = load ptr, ptr %tif.addr, align 8
  %36 = load ptr, ptr %dp.addr, align 8
  %37 = load ptr, ptr %cp, align 8
  %call43 = call i32 @TIFFFetchFloatArray(ptr noundef %35, ptr noundef %36, ptr noundef %37)
  %tobool44 = icmp ne i32 %call43, 0
  %phi.cast3 = zext i1 %tobool44 to i32
  br label %land.end45

land.end45:                                       ; preds = %land.rhs42, %sw.bb37
  %38 = phi i32 [ 0, %sw.bb37 ], [ %phi.cast3, %land.rhs42 ]
  store i32 %38, ptr %ok, align 4
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.then
  %39 = load ptr, ptr %tif.addr, align 8
  %40 = load ptr, ptr %dp.addr, align 8
  %tdir_count48 = getelementptr inbounds %struct.TIFFDirEntry, ptr %40, i64 0, i32 2
  %41 = load i64, ptr %tdir_count48, align 8
  %mul49 = shl i64 %41, 3
  %call50 = call ptr @CheckMalloc(ptr noundef %39, i64 noundef %mul49, ptr noundef nonnull @TIFFFetchNormalTag.mesg)
  store ptr %call50, ptr %cp, align 8
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %land.end55, label %land.rhs52

land.rhs52:                                       ; preds = %sw.bb47
  %42 = load ptr, ptr %tif.addr, align 8
  %43 = load ptr, ptr %dp.addr, align 8
  %44 = load ptr, ptr %cp, align 8
  %call53 = call i32 @TIFFFetchDoubleArray(ptr noundef %42, ptr noundef %43, ptr noundef %44)
  %tobool54 = icmp ne i32 %call53, 0
  %phi.cast2 = zext i1 %tobool54 to i32
  br label %land.end55

land.end55:                                       ; preds = %land.rhs52, %sw.bb47
  %45 = phi i32 [ 0, %sw.bb47 ], [ %phi.cast2, %land.rhs52 ]
  store i32 %45, ptr %ok, align 4
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.then, %if.then
  %46 = load ptr, ptr %tif.addr, align 8
  %47 = load ptr, ptr %dp.addr, align 8
  %tdir_count58 = getelementptr inbounds %struct.TIFFDirEntry, ptr %47, i64 0, i32 2
  %48 = load i64, ptr %tdir_count58, align 8
  %add = add i64 %48, 1
  %call59 = call ptr @CheckMalloc(ptr noundef %46, i64 noundef %add, ptr noundef nonnull @TIFFFetchNormalTag.mesg)
  store ptr %call59, ptr %cp, align 8
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %land.end64, label %land.rhs61

land.rhs61:                                       ; preds = %sw.bb57
  %49 = load ptr, ptr %tif.addr, align 8
  %50 = load ptr, ptr %dp.addr, align 8
  %51 = load ptr, ptr %cp, align 8
  %call62 = call i64 @TIFFFetchString(ptr noundef %49, ptr noundef %50, ptr noundef %51)
  %tobool63 = icmp ne i64 %call62, 0
  %phi.cast1 = zext i1 %tobool63 to i32
  br label %land.end64

land.end64:                                       ; preds = %land.rhs61, %sw.bb57
  %52 = phi i32 [ 0, %sw.bb57 ], [ %phi.cast1, %land.rhs61 ]
  store i32 %52, ptr %ok, align 4
  %cmp66.not = icmp eq i32 %52, 0
  br i1 %cmp66.not, label %sw.epilog, label %if.then68

if.then68:                                        ; preds = %land.end64
  %53 = load ptr, ptr %cp, align 8
  %54 = load ptr, ptr %dp.addr, align 8
  %tdir_count69 = getelementptr inbounds %struct.TIFFDirEntry, ptr %54, i64 0, i32 2
  %55 = load i64, ptr %tdir_count69, align 8
  %arrayidx = getelementptr inbounds i8, ptr %53, i64 %55
  store i8 0, ptr %arrayidx, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %land.end64, %if.then68, %land.end55, %land.end45, %land.end35, %land.end25, %land.end15, %land.end, %if.then
  %56 = load i32, ptr %ok, align 4
  %tobool70.not = icmp eq i32 %56, 0
  br i1 %tobool70.not, label %if.end81, label %if.then71

if.then71:                                        ; preds = %sw.epilog
  %57 = load ptr, ptr %fip, align 8
  %field_passcount = getelementptr inbounds %struct.TIFFFieldInfo, ptr %57, i64 0, i32 6
  %58 = load i8, ptr %field_passcount, align 1
  %tobool73.not = icmp eq i8 %58, 0
  br i1 %tobool73.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then71
  %59 = load ptr, ptr %tif.addr, align 8
  %60 = load ptr, ptr %dp.addr, align 8
  %61 = load i16, ptr %60, align 8
  %conv75 = zext i16 %61 to i64
  %tdir_count76 = getelementptr inbounds %struct.TIFFDirEntry, ptr %60, i64 0, i32 2
  %62 = load i64, ptr %tdir_count76, align 8
  %63 = load ptr, ptr %cp, align 8
  %call77 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %59, i64 noundef %conv75, i64 noundef %62, ptr noundef %63) #2
  br label %cond.end

cond.false:                                       ; preds = %if.then71
  %64 = load ptr, ptr %tif.addr, align 8
  %65 = load ptr, ptr %dp.addr, align 8
  %66 = load i16, ptr %65, align 8
  %conv79 = zext i16 %66 to i64
  %67 = load ptr, ptr %cp, align 8
  %call80 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %64, i64 noundef %conv79, ptr noundef %67) #2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call77, %cond.true ], [ %call80, %cond.false ]
  store i32 %cond, ptr %ok, align 4
  br label %if.end81

if.end81:                                         ; preds = %cond.end, %sw.epilog
  %68 = load ptr, ptr %cp, align 8
  %cmp82.not = icmp eq ptr %68, null
  br i1 %cmp82.not, label %if.end234, label %if.then84

if.then84:                                        ; preds = %if.end81
  %69 = load ptr, ptr %cp, align 8
  call void @_TIFFfree(ptr noundef %69) #2
  br label %if.end234

if.else:                                          ; preds = %entry
  %70 = load ptr, ptr %tif.addr, align 8
  %71 = load ptr, ptr %dp.addr, align 8
  %call86 = call i32 @CheckDirCount(ptr noundef %70, ptr noundef %71, i64 noundef 1)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end234, label %if.then88

if.then88:                                        ; preds = %if.else
  %72 = load ptr, ptr %dp.addr, align 8
  %tdir_type89 = getelementptr inbounds %struct.TIFFDirEntry, ptr %72, i64 0, i32 1
  %73 = load i16, ptr %tdir_type89, align 2
  switch i16 %73, label %if.end234 [
    i16 1, label %sw.bb91
    i16 6, label %sw.bb91
    i16 3, label %sw.bb91
    i16 8, label %sw.bb91
    i16 4, label %sw.bb131
    i16 9, label %sw.bb131
    i16 5, label %sw.bb172
    i16 10, label %sw.bb172
    i16 11, label %sw.bb172
    i16 12, label %sw.bb198
    i16 2, label %sw.bb219
    i16 7, label %sw.bb219
  ]

sw.bb91:                                          ; preds = %if.then88, %if.then88, %if.then88, %if.then88
  %74 = load ptr, ptr %fip, align 8
  %field_type = getelementptr inbounds %struct.TIFFFieldInfo, ptr %74, i64 0, i32 3
  %75 = load i32, ptr %field_type, align 4
  store i32 %75, ptr %type, align 4
  %cmp92.not = icmp eq i32 %75, 4
  %76 = load i32, ptr %type, align 4
  %cmp94.not = icmp eq i32 %76, 9
  %or.cond = select i1 %cmp92.not, i1 true, i1 %cmp94.not
  br i1 %or.cond, label %sw.bb131, label %if.then96

if.then96:                                        ; preds = %sw.bb91
  %77 = load ptr, ptr %tif.addr, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %77, i64 0, i32 7
  %78 = load i16, ptr %tif_header, align 8
  %cmp98 = icmp eq i16 %78, 19789
  br i1 %cmp98, label %cond.true100, label %cond.false106

cond.true100:                                     ; preds = %if.then96
  %79 = load ptr, ptr %dp.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %79, i64 0, i32 3
  %80 = load i64, ptr %tdir_offset, align 8
  %81 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift = getelementptr inbounds %struct.tiff, ptr %81, i64 0, i32 9
  %82 = load ptr, ptr %tif_typeshift, align 8
  %tdir_type101 = getelementptr inbounds %struct.TIFFDirEntry, ptr %79, i64 0, i32 1
  %83 = load i16, ptr %tdir_type101, align 2
  %idxprom = zext i16 %83 to i64
  %arrayidx102 = getelementptr inbounds i32, ptr %82, i64 %idxprom
  %84 = load i32, ptr %arrayidx102, align 4
  %sh_prom = zext i32 %84 to i64
  %shr = lshr i64 %80, %sh_prom
  %85 = load ptr, ptr %tif.addr, align 8
  %tif_typemask = getelementptr inbounds %struct.tiff, ptr %85, i64 0, i32 10
  %86 = load ptr, ptr %tif_typemask, align 8
  %87 = load ptr, ptr %dp.addr, align 8
  %tdir_type103 = getelementptr inbounds %struct.TIFFDirEntry, ptr %87, i64 0, i32 1
  %88 = load i16, ptr %tdir_type103, align 2
  %idxprom104 = zext i16 %88 to i64
  %arrayidx105 = getelementptr inbounds i64, ptr %86, i64 %idxprom104
  %89 = load i64, ptr %arrayidx105, align 8
  %and = and i64 %shr, %89
  br label %cond.end113

cond.false106:                                    ; preds = %if.then96
  %90 = load ptr, ptr %dp.addr, align 8
  %tdir_offset107 = getelementptr inbounds %struct.TIFFDirEntry, ptr %90, i64 0, i32 3
  %91 = load i64, ptr %tdir_offset107, align 8
  %92 = load ptr, ptr %tif.addr, align 8
  %tif_typemask108 = getelementptr inbounds %struct.tiff, ptr %92, i64 0, i32 10
  %93 = load ptr, ptr %tif_typemask108, align 8
  %tdir_type109 = getelementptr inbounds %struct.TIFFDirEntry, ptr %90, i64 0, i32 1
  %94 = load i16, ptr %tdir_type109, align 2
  %idxprom110 = zext i16 %94 to i64
  %arrayidx111 = getelementptr inbounds i64, ptr %93, i64 %idxprom110
  %95 = load i64, ptr %arrayidx111, align 8
  %and112 = and i64 %91, %95
  br label %cond.end113

cond.end113:                                      ; preds = %cond.false106, %cond.true100
  %cond114 = phi i64 [ %and, %cond.true100 ], [ %and112, %cond.false106 ]
  %conv115 = trunc i64 %cond114 to i16
  store i16 %conv115, ptr %v, align 2
  %96 = load ptr, ptr %fip, align 8
  %field_passcount116 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %96, i64 0, i32 6
  %97 = load i8, ptr %field_passcount116, align 1
  %tobool118.not = icmp eq i8 %97, 0
  br i1 %tobool118.not, label %cond.false123, label %cond.true119

cond.true119:                                     ; preds = %cond.end113
  %98 = load ptr, ptr %tif.addr, align 8
  %99 = load ptr, ptr %dp.addr, align 8
  %100 = load i16, ptr %99, align 8
  %conv121 = zext i16 %100 to i64
  %call122 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %98, i64 noundef %conv121, i32 noundef 1, ptr noundef nonnull %v) #2
  br label %cond.end128

cond.false123:                                    ; preds = %cond.end113
  %101 = load ptr, ptr %tif.addr, align 8
  %102 = load ptr, ptr %dp.addr, align 8
  %103 = load i16, ptr %102, align 8
  %conv125 = zext i16 %103 to i64
  %104 = load i16, ptr %v, align 2
  %conv126 = zext i16 %104 to i32
  %call127 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %101, i64 noundef %conv125, i32 noundef %conv126) #2
  br label %cond.end128

cond.end128:                                      ; preds = %cond.false123, %cond.true119
  %cond129 = phi i32 [ %call122, %cond.true119 ], [ %call127, %cond.false123 ]
  store i32 %cond129, ptr %ok, align 4
  br label %if.end234

sw.bb131:                                         ; preds = %sw.bb91, %if.then88, %if.then88
  %105 = load ptr, ptr %tif.addr, align 8
  %tif_header132 = getelementptr inbounds %struct.tiff, ptr %105, i64 0, i32 7
  %106 = load i16, ptr %tif_header132, align 8
  %cmp135 = icmp eq i16 %106, 19789
  br i1 %cmp135, label %cond.true137, label %cond.false150

cond.true137:                                     ; preds = %sw.bb131
  %107 = load ptr, ptr %dp.addr, align 8
  %tdir_offset138 = getelementptr inbounds %struct.TIFFDirEntry, ptr %107, i64 0, i32 3
  %108 = load i64, ptr %tdir_offset138, align 8
  %109 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift139 = getelementptr inbounds %struct.tiff, ptr %109, i64 0, i32 9
  %110 = load ptr, ptr %tif_typeshift139, align 8
  %tdir_type140 = getelementptr inbounds %struct.TIFFDirEntry, ptr %107, i64 0, i32 1
  %111 = load i16, ptr %tdir_type140, align 2
  %idxprom141 = zext i16 %111 to i64
  %arrayidx142 = getelementptr inbounds i32, ptr %110, i64 %idxprom141
  %112 = load i32, ptr %arrayidx142, align 4
  %sh_prom143 = zext i32 %112 to i64
  %shr144 = lshr i64 %108, %sh_prom143
  %113 = load ptr, ptr %tif.addr, align 8
  %tif_typemask145 = getelementptr inbounds %struct.tiff, ptr %113, i64 0, i32 10
  %114 = load ptr, ptr %tif_typemask145, align 8
  %115 = load ptr, ptr %dp.addr, align 8
  %tdir_type146 = getelementptr inbounds %struct.TIFFDirEntry, ptr %115, i64 0, i32 1
  %116 = load i16, ptr %tdir_type146, align 2
  %idxprom147 = zext i16 %116 to i64
  %arrayidx148 = getelementptr inbounds i64, ptr %114, i64 %idxprom147
  %117 = load i64, ptr %arrayidx148, align 8
  %and149 = and i64 %shr144, %117
  br label %cond.end157

cond.false150:                                    ; preds = %sw.bb131
  %118 = load ptr, ptr %dp.addr, align 8
  %tdir_offset151 = getelementptr inbounds %struct.TIFFDirEntry, ptr %118, i64 0, i32 3
  %119 = load i64, ptr %tdir_offset151, align 8
  %120 = load ptr, ptr %tif.addr, align 8
  %tif_typemask152 = getelementptr inbounds %struct.tiff, ptr %120, i64 0, i32 10
  %121 = load ptr, ptr %tif_typemask152, align 8
  %tdir_type153 = getelementptr inbounds %struct.TIFFDirEntry, ptr %118, i64 0, i32 1
  %122 = load i16, ptr %tdir_type153, align 2
  %idxprom154 = zext i16 %122 to i64
  %arrayidx155 = getelementptr inbounds i64, ptr %121, i64 %idxprom154
  %123 = load i64, ptr %arrayidx155, align 8
  %and156 = and i64 %119, %123
  br label %cond.end157

cond.end157:                                      ; preds = %cond.false150, %cond.true137
  %cond158 = phi i64 [ %and149, %cond.true137 ], [ %and156, %cond.false150 ]
  store i64 %cond158, ptr %v32, align 8
  %124 = load ptr, ptr %fip, align 8
  %field_passcount159 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %124, i64 0, i32 6
  %125 = load i8, ptr %field_passcount159, align 1
  %tobool161.not = icmp eq i8 %125, 0
  br i1 %tobool161.not, label %cond.false166, label %cond.true162

cond.true162:                                     ; preds = %cond.end157
  %126 = load ptr, ptr %tif.addr, align 8
  %127 = load ptr, ptr %dp.addr, align 8
  %128 = load i16, ptr %127, align 8
  %conv164 = zext i16 %128 to i64
  %call165 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %126, i64 noundef %conv164, i32 noundef 1, ptr noundef nonnull %v32) #2
  br label %cond.end170

cond.false166:                                    ; preds = %cond.end157
  %129 = load ptr, ptr %tif.addr, align 8
  %130 = load ptr, ptr %dp.addr, align 8
  %131 = load i16, ptr %130, align 8
  %conv168 = zext i16 %131 to i64
  %132 = load i64, ptr %v32, align 8
  %call169 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %129, i64 noundef %conv168, i64 noundef %132) #2
  br label %cond.end170

cond.end170:                                      ; preds = %cond.false166, %cond.true162
  %cond171 = phi i32 [ %call165, %cond.true162 ], [ %call169, %cond.false166 ]
  store i32 %cond171, ptr %ok, align 4
  br label %if.end234

sw.bb172:                                         ; preds = %if.then88, %if.then88, %if.then88
  %133 = load ptr, ptr %dp.addr, align 8
  %tdir_type174 = getelementptr inbounds %struct.TIFFDirEntry, ptr %133, i64 0, i32 1
  %134 = load i16, ptr %tdir_type174, align 2
  %cmp176 = icmp eq i16 %134, 11
  br i1 %cmp176, label %cond.true178, label %cond.false180

cond.true178:                                     ; preds = %sw.bb172
  %135 = load ptr, ptr %tif.addr, align 8
  %136 = load ptr, ptr %dp.addr, align 8
  %call179 = call float @TIFFFetchFloat(ptr noundef %135, ptr noundef %136)
  br label %cond.end182

cond.false180:                                    ; preds = %sw.bb172
  %137 = load ptr, ptr %tif.addr, align 8
  %138 = load ptr, ptr %dp.addr, align 8
  %call181 = call float @TIFFFetchRational(ptr noundef %137, ptr noundef %138)
  br label %cond.end182

cond.end182:                                      ; preds = %cond.false180, %cond.true178
  %cond183 = phi float [ %call179, %cond.true178 ], [ %call181, %cond.false180 ]
  store float %cond183, ptr %v173, align 4
  %139 = load ptr, ptr %fip, align 8
  %field_passcount184 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %139, i64 0, i32 6
  %140 = load i8, ptr %field_passcount184, align 1
  %tobool186.not = icmp eq i8 %140, 0
  br i1 %tobool186.not, label %cond.false191, label %cond.true187

cond.true187:                                     ; preds = %cond.end182
  %141 = load ptr, ptr %tif.addr, align 8
  %142 = load ptr, ptr %dp.addr, align 8
  %143 = load i16, ptr %142, align 8
  %conv189 = zext i16 %143 to i64
  %call190 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %141, i64 noundef %conv189, i32 noundef 1, ptr noundef nonnull %v173) #2
  br label %cond.end196

cond.false191:                                    ; preds = %cond.end182
  %144 = load ptr, ptr %tif.addr, align 8
  %145 = load ptr, ptr %dp.addr, align 8
  %146 = load i16, ptr %145, align 8
  %conv193 = zext i16 %146 to i64
  %147 = load float, ptr %v173, align 4
  %conv194 = fpext float %147 to double
  %call195 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %144, i64 noundef %conv193, double noundef %conv194) #2
  br label %cond.end196

cond.end196:                                      ; preds = %cond.false191, %cond.true187
  %cond197 = phi i32 [ %call190, %cond.true187 ], [ %call195, %cond.false191 ]
  store i32 %cond197, ptr %ok, align 4
  br label %if.end234

sw.bb198:                                         ; preds = %if.then88
  %148 = load ptr, ptr %tif.addr, align 8
  %149 = load ptr, ptr %dp.addr, align 8
  %call200 = call i32 @TIFFFetchDoubleArray(ptr noundef %148, ptr noundef %149, ptr noundef nonnull %v199)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %land.end217, label %land.rhs202

land.rhs202:                                      ; preds = %sw.bb198
  %150 = load ptr, ptr %fip, align 8
  %field_passcount203 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %150, i64 0, i32 6
  %151 = load i8, ptr %field_passcount203, align 1
  %tobool205.not = icmp eq i8 %151, 0
  br i1 %tobool205.not, label %cond.false210, label %cond.true206

cond.true206:                                     ; preds = %land.rhs202
  %152 = load ptr, ptr %tif.addr, align 8
  %153 = load ptr, ptr %dp.addr, align 8
  %154 = load i16, ptr %153, align 8
  %conv208 = zext i16 %154 to i64
  %call209 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %152, i64 noundef %conv208, i32 noundef 1, ptr noundef nonnull %v199) #2
  br label %cond.end214

cond.false210:                                    ; preds = %land.rhs202
  %155 = load ptr, ptr %tif.addr, align 8
  %156 = load ptr, ptr %dp.addr, align 8
  %157 = load i16, ptr %156, align 8
  %conv212 = zext i16 %157 to i64
  %158 = load double, ptr %v199, align 8
  %call213 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %155, i64 noundef %conv212, double noundef %158) #2
  br label %cond.end214

cond.end214:                                      ; preds = %cond.false210, %cond.true206
  %cond215 = phi i32 [ %call209, %cond.true206 ], [ %call213, %cond.false210 ]
  %tobool216 = icmp ne i32 %cond215, 0
  %phi.cast = zext i1 %tobool216 to i32
  br label %land.end217

land.end217:                                      ; preds = %cond.end214, %sw.bb198
  %159 = phi i32 [ 0, %sw.bb198 ], [ %phi.cast, %cond.end214 ]
  store i32 %159, ptr %ok, align 4
  br label %if.end234

sw.bb219:                                         ; preds = %if.then88, %if.then88
  %160 = load ptr, ptr %tif.addr, align 8
  %161 = load ptr, ptr %dp.addr, align 8
  %call220 = call i64 @TIFFFetchString(ptr noundef %160, ptr noundef %161, ptr noundef nonnull %c)
  %cmp221 = icmp ne i64 %call220, 0
  %conv222 = zext i1 %cmp221 to i32
  store i32 %conv222, ptr %ok, align 4
  br i1 %cmp221, label %if.then225, label %if.end234

if.then225:                                       ; preds = %sw.bb219
  %arrayidx226 = getelementptr inbounds [2 x i8], ptr %c, i64 0, i64 1
  store i8 0, ptr %arrayidx226, align 1
  %162 = load ptr, ptr %tif.addr, align 8
  %163 = load ptr, ptr %dp.addr, align 8
  %164 = load i16, ptr %163, align 8
  %conv228 = zext i16 %164 to i64
  %call230 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %162, i64 noundef %conv228, ptr noundef nonnull %c) #2
  store i32 %call230, ptr %ok, align 4
  br label %if.end234

if.end234:                                        ; preds = %if.else, %sw.bb219, %if.then225, %land.end217, %cond.end196, %cond.end170, %cond.end128, %if.then88, %if.end81, %if.then84
  %165 = load i32, ptr %ok, align 4
  ret i32 %165
}

declare i32 @TIFFReassignTagToIgnore(i32 noundef, i32 noundef) #1

declare void @TIFFWarning(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @CheckDirCount(ptr noundef %tif, ptr noundef %dir, i64 noundef %count) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i64 %count, ptr %count.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 2
  %0 = load i64, ptr %tdir_count, align 8
  %cmp.not = icmp eq i64 %0, %count
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %3 = load ptr, ptr %dir.addr, align 8
  %4 = load i16, ptr %3, align 8
  %conv = zext i16 %4 to i64
  %call = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %1, i64 noundef %conv) #2
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call, i64 0, i32 7
  %5 = load ptr, ptr %field_name, align 8
  %tdir_count1 = getelementptr inbounds %struct.TIFFDirEntry, ptr %3, i64 0, i32 2
  %6 = load i64, ptr %tdir_count1, align 8
  %7 = load i64, ptr %count.addr, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %2, ptr noundef nonnull @.str.19, ptr noundef %5, i64 noundef %6, i64 noundef %7) #2
  br label %return

return:                                           ; preds = %entry, %if.then
  %storemerge = phi i32 [ 0, %if.then ], [ 1, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFFetchPerSampleShorts(ptr noundef %tif, ptr noundef %dir, ptr noundef %pl) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %pl.addr = alloca ptr, align 8
  %samples = alloca i32, align 4
  %status = alloca i32, align 4
  %buf = alloca [10 x i16], align 2
  %v = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %pl, ptr %pl.addr, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 15
  %0 = load i16, ptr %td_samplesperpixel, align 2
  %conv = zext i16 %0 to i32
  store i32 %conv, ptr %samples, align 4
  store i32 0, ptr %status, align 4
  %1 = load ptr, ptr %tif.addr, align 8
  %2 = load ptr, ptr %dir.addr, align 8
  %conv1 = zext i16 %0 to i64
  %call = call i32 @CheckDirCount(ptr noundef %1, ptr noundef %2, i64 noundef %conv1)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end29, label %if.then

if.then:                                          ; preds = %entry
  store ptr %buf, ptr %v, align 8
  %3 = load i32, ptr %samples, align 4
  %cmp = icmp ugt i32 %3, 10
  br i1 %cmp, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %4 = load i32, ptr %samples, align 4
  %conv5 = sext i32 %4 to i64
  %mul = shl nsw i64 %conv5, 1
  %call6 = call ptr @_TIFFmalloc(i64 noundef %mul) #2
  store ptr %call6, ptr %v, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load ptr, ptr %dir.addr, align 8
  %7 = load ptr, ptr %v, align 8
  %call7 = call i32 @TIFFFetchShortArray(ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %bad, label %for.cond

for.cond:                                         ; preds = %if.end, %for.inc
  %storemerge = phi i32 [ %inc, %for.inc ], [ 1, %if.end ]
  store i32 %storemerge, ptr %i, align 4
  %8 = load i32, ptr %samples, align 4
  %cmp10 = icmp slt i32 %storemerge, %8
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %v, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i16, ptr %9, i64 %idxprom
  %11 = load i16, ptr %arrayidx, align 2
  %12 = load i16, ptr %9, align 2
  %cmp15.not = icmp eq i16 %11, %12
  br i1 %cmp15.not, label %for.inc, label %if.then17

if.then17:                                        ; preds = %for.body
  %13 = load ptr, ptr %tif.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %15 = load ptr, ptr %dir.addr, align 8
  %16 = load i16, ptr %15, align 8
  %conv18 = zext i16 %16 to i64
  %call19 = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %13, i64 noundef %conv18) #2
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call19, i64 0, i32 7
  %17 = load ptr, ptr %field_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %14, ptr noundef nonnull @.str.23, ptr noundef %17) #2
  br label %bad

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %v, align 8
  %20 = load i16, ptr %19, align 2
  %conv22 = zext i16 %20 to i32
  %21 = load ptr, ptr %pl.addr, align 8
  store i32 %conv22, ptr %21, align 4
  store i32 1, ptr %status, align 4
  br label %bad

bad:                                              ; preds = %if.end, %for.end, %if.then17
  %22 = load ptr, ptr %v, align 8
  %cmp25.not = icmp eq ptr %22, %buf
  br i1 %cmp25.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %bad
  %23 = load ptr, ptr %v, align 8
  call void @_TIFFfree(ptr noundef %23) #2
  br label %if.end29

if.end29:                                         ; preds = %bad, %if.then27, %entry
  %24 = load i32, ptr %status, align 4
  ret i32 %24
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFFetchExtraSamples(ptr noundef %tif, ptr noundef %dir) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %buf = alloca [10 x i16], align 2
  %v = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %buf, ptr %v, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 2
  %0 = load i64, ptr %tdir_count, align 8
  %cmp = icmp ugt i64 %0, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_count1 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  %2 = load i64, ptr %tdir_count1, align 8
  %mul = shl i64 %2, 1
  %call = call ptr @_TIFFmalloc(i64 noundef %mul) #2
  store ptr %call, ptr %v, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %3, i64 0, i32 1
  %4 = load i16, ptr %tdir_type, align 2
  %cmp2 = icmp eq i16 %4, 1
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load ptr, ptr %dir.addr, align 8
  %7 = load ptr, ptr %v, align 8
  %call5 = call i32 @TIFFFetchByteArray(ptr noundef %5, ptr noundef %6, ptr noundef %7)
  br label %if.end7

if.else:                                          ; preds = %if.end
  %8 = load ptr, ptr %tif.addr, align 8
  %9 = load ptr, ptr %dir.addr, align 8
  %10 = load ptr, ptr %v, align 8
  %call6 = call i32 @TIFFFetchShortArray(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %storemerge = phi i32 [ %call6, %if.else ], [ %call5, %if.then4 ]
  store i32 %storemerge, ptr %status, align 4
  %tobool.not = icmp eq i32 %storemerge, 0
  br i1 %tobool.not, label %if.end12, label %if.then8

if.then8:                                         ; preds = %if.end7
  %11 = load ptr, ptr %tif.addr, align 8
  %12 = load ptr, ptr %dir.addr, align 8
  %13 = load i16, ptr %12, align 8
  %conv9 = zext i16 %13 to i64
  %tdir_count10 = getelementptr inbounds %struct.TIFFDirEntry, ptr %12, i64 0, i32 2
  %14 = load i64, ptr %tdir_count10, align 8
  %15 = load ptr, ptr %v, align 8
  %call11 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %11, i64 noundef %conv9, i64 noundef %14, ptr noundef %15) #2
  store i32 %call11, ptr %status, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end7
  %16 = load ptr, ptr %v, align 8
  %cmp14.not = icmp eq ptr %16, %buf
  br i1 %cmp14.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end12
  %17 = load ptr, ptr %v, align 8
  call void @_TIFFfree(ptr noundef %17) #2
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end12
  %18 = load i32, ptr %status, align 4
  ret i32 %18
}

; Function Attrs: nounwind ssp uwtable
define internal void @MissingRequired(ptr noundef %tif, ptr noundef %tagname) #0 {
entry:
  %0 = load ptr, ptr %tif, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef %tagname) #2
  ret void
}

declare i64 @TIFFNumberOfStrips(ptr noundef) #1

declare i64 @TIFFNumberOfTiles(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFFetchPerSampleAnys(ptr noundef %tif, ptr noundef %dir, ptr noundef %pl) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %pl.addr = alloca ptr, align 8
  %samples = alloca i32, align 4
  %status = alloca i32, align 4
  %buf = alloca [10 x double], align 8
  %v = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %pl, ptr %pl.addr, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 15
  %0 = load i16, ptr %td_samplesperpixel, align 2
  %conv = zext i16 %0 to i32
  store i32 %conv, ptr %samples, align 4
  store i32 0, ptr %status, align 4
  %1 = load ptr, ptr %tif.addr, align 8
  %2 = load ptr, ptr %dir.addr, align 8
  %conv1 = zext i16 %0 to i64
  %call = call i32 @CheckDirCount(ptr noundef %1, ptr noundef %2, i64 noundef %conv1)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end26, label %if.then

if.then:                                          ; preds = %entry
  store ptr %buf, ptr %v, align 8
  %3 = load i32, ptr %samples, align 4
  %cmp = icmp ugt i32 %3, 10
  br i1 %cmp, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %4 = load i32, ptr %samples, align 4
  %conv5 = sext i32 %4 to i64
  %mul = shl nsw i64 %conv5, 3
  %call6 = call ptr @_TIFFmalloc(i64 noundef %mul) #2
  store ptr %call6, ptr %v, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load ptr, ptr %dir.addr, align 8
  %7 = load ptr, ptr %v, align 8
  %call7 = call i32 @TIFFFetchAnyArray(ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %bad, label %for.cond

for.cond:                                         ; preds = %if.end, %for.inc
  %storemerge = phi i32 [ %inc, %for.inc ], [ 1, %if.end ]
  store i32 %storemerge, ptr %i, align 4
  %8 = load i32, ptr %samples, align 4
  %cmp10 = icmp slt i32 %storemerge, %8
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %v, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds double, ptr %9, i64 %idxprom
  %11 = load double, ptr %arrayidx, align 8
  %12 = load double, ptr %9, align 8
  %cmp13 = fcmp une double %11, %12
  br i1 %cmp13, label %if.then15, label %for.inc

if.then15:                                        ; preds = %for.body
  %13 = load ptr, ptr %tif.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %15 = load ptr, ptr %dir.addr, align 8
  %16 = load i16, ptr %15, align 8
  %conv16 = zext i16 %16 to i64
  %call17 = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %13, i64 noundef %conv16) #2
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call17, i64 0, i32 7
  %17 = load ptr, ptr %field_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %14, ptr noundef nonnull @.str.23, ptr noundef %17) #2
  br label %bad

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %v, align 8
  %20 = load double, ptr %19, align 8
  %21 = load ptr, ptr %pl.addr, align 8
  store double %20, ptr %21, align 8
  store i32 1, ptr %status, align 4
  br label %bad

bad:                                              ; preds = %if.end, %for.end, %if.then15
  %22 = load ptr, ptr %v, align 8
  %cmp22.not = icmp eq ptr %22, %buf
  br i1 %cmp22.not, label %if.end26, label %if.then24

if.then24:                                        ; preds = %bad
  %23 = load ptr, ptr %v, align 8
  call void @_TIFFfree(ptr noundef %23) #2
  br label %if.end26

if.end26:                                         ; preds = %bad, %if.then24, %entry
  %24 = load i32, ptr %status, align 4
  ret i32 %24
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFFetchStripThing(ptr noundef %tif, ptr noundef %dir, i64 noundef %nstrips, ptr noundef %lpp) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %nstrips.addr = alloca i64, align 8
  %lpp.addr = alloca ptr, align 8
  %lp = alloca ptr, align 8
  %status = alloca i32, align 4
  %dp = alloca ptr, align 8
  %wp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i64 %nstrips, ptr %nstrips.addr, align 8
  store ptr %lpp, ptr %lpp.addr, align 8
  %call = call i32 @CheckDirCount(ptr noundef %tif, ptr noundef %dir, i64 noundef %nstrips)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %lpp.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load i64, ptr %nstrips.addr, align 8
  %mul = shl i64 %3, 3
  %call1 = call ptr @CheckMalloc(ptr noundef %2, i64 noundef %mul, ptr noundef nonnull @.str.25)
  %4 = load ptr, ptr %lpp.addr, align 8
  store ptr %call1, ptr %4, align 8
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %5 = load ptr, ptr %lpp.addr, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %lp, align 8
  %7 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %7, i64 0, i32 1
  %8 = load i16, ptr %tdir_type, align 2
  %cmp5 = icmp eq i16 %8, 3
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  %9 = load ptr, ptr %tif.addr, align 8
  %10 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %10, i64 0, i32 2
  %11 = load i64, ptr %tdir_count, align 8
  %mul8 = shl i64 %11, 1
  %call9 = call ptr @CheckMalloc(ptr noundef %9, i64 noundef %mul8, ptr noundef nonnull @.str.26)
  store ptr %call9, ptr %dp, align 8
  %cmp10 = icmp eq ptr %call9, null
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then7
  store i32 0, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.then7
  %12 = load ptr, ptr %tif.addr, align 8
  %13 = load ptr, ptr %dir.addr, align 8
  %14 = load ptr, ptr %dp, align 8
  %call14 = call i32 @TIFFFetchShortArray(ptr noundef %12, ptr noundef %13, ptr noundef %14)
  store i32 %call14, ptr %status, align 4
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.end22, label %if.then17

if.then17:                                        ; preds = %if.end13
  %15 = load ptr, ptr %dp, align 8
  store ptr %15, ptr %wp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then17
  %16 = load i64, ptr %nstrips.addr, align 8
  %dec = add nsw i64 %16, -1
  store i64 %dec, ptr %nstrips.addr, align 8
  %cmp18 = icmp sgt i64 %16, 0
  br i1 %cmp18, label %while.body, label %if.end22

while.body:                                       ; preds = %while.cond
  %17 = load ptr, ptr %wp, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %17, i64 1
  store ptr %incdec.ptr, ptr %wp, align 8
  %18 = load i16, ptr %17, align 2
  %conv20 = zext i16 %18 to i64
  %19 = load ptr, ptr %lp, align 8
  %incdec.ptr21 = getelementptr inbounds i64, ptr %19, i64 1
  store ptr %incdec.ptr21, ptr %lp, align 8
  store i64 %conv20, ptr %19, align 8
  br label %while.cond, !llvm.loop !14

if.end22:                                         ; preds = %while.cond, %if.end13
  %20 = load ptr, ptr %dp, align 8
  call void @_TIFFfree(ptr noundef %20) #2
  br label %if.end24

if.else:                                          ; preds = %if.end4
  %21 = load ptr, ptr %tif.addr, align 8
  %22 = load ptr, ptr %dir.addr, align 8
  %23 = load ptr, ptr %lp, align 8
  %call23 = call i32 @TIFFFetchLongArray(ptr noundef %21, ptr noundef %22, ptr noundef %23)
  store i32 %call23, ptr %status, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end22
  %24 = load i32, ptr %status, align 4
  store i32 %24, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end24, %if.then12, %if.then3, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @TIFFFetchData(ptr noundef %tif, ptr noundef %dir, ptr noundef %cp) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %cc = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 1
  %0 = load i16, ptr %tdir_type, align 2
  %idxprom = zext i16 %0 to i64
  %arrayidx = getelementptr inbounds [0 x i32], ptr @tiffDataWidth, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4
  %2 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %2, i64 0, i32 2
  %3 = load i64, ptr %tdir_count, align 8
  %conv = sext i32 %1 to i64
  %mul = mul i64 %3, %conv
  store i64 %mul, ptr %cc, align 8
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %4, i64 0, i32 3
  %5 = load i64, ptr %tif_flags, align 8
  %and = and i64 %5, 2048
  %cmp.not = icmp eq i64 %and, 0
  br i1 %cmp.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 51
  %7 = load ptr, ptr %tif_seekproc, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 48
  %8 = load ptr, ptr %tif_clientdata, align 8
  %9 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %9, i64 0, i32 3
  %10 = load i64, ptr %tdir_offset, align 8
  %call = call i64 %7(ptr noundef %8, i64 noundef %10, i32 noundef 0) #2
  %tdir_offset2 = getelementptr inbounds %struct.TIFFDirEntry, ptr %9, i64 0, i32 3
  %11 = load i64, ptr %tdir_offset2, align 8
  %cmp3 = icmp eq i64 %call, %11
  br i1 %cmp3, label %if.end, label %bad

if.end:                                           ; preds = %if.then
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_readproc = getelementptr inbounds %struct.tiff, ptr %12, i64 0, i32 49
  %13 = load ptr, ptr %tif_readproc, align 8
  %tif_clientdata6 = getelementptr inbounds %struct.tiff, ptr %12, i64 0, i32 48
  %14 = load ptr, ptr %tif_clientdata6, align 8
  %15 = load ptr, ptr %cp.addr, align 8
  %16 = load i64, ptr %cc, align 8
  %call7 = call i64 %13(ptr noundef %14, ptr noundef %15, i64 noundef %16) #2
  %cmp8 = icmp eq i64 %call7, %16
  br i1 %cmp8, label %if.end18, label %bad

if.else:                                          ; preds = %entry
  %17 = load ptr, ptr %dir.addr, align 8
  %tdir_offset12 = getelementptr inbounds %struct.TIFFDirEntry, ptr %17, i64 0, i32 3
  %18 = load i64, ptr %tdir_offset12, align 8
  %19 = load i64, ptr %cc, align 8
  %add = add i64 %18, %19
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_size = getelementptr inbounds %struct.tiff, ptr %20, i64 0, i32 45
  %21 = load i64, ptr %tif_size, align 8
  %cmp13 = icmp sgt i64 %add, %21
  br i1 %cmp13, label %bad, label %if.end16

if.end16:                                         ; preds = %if.else
  %22 = load ptr, ptr %cp.addr, align 8
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_base = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 44
  %24 = load ptr, ptr %tif_base, align 8
  %25 = load ptr, ptr %dir.addr, align 8
  %tdir_offset17 = getelementptr inbounds %struct.TIFFDirEntry, ptr %25, i64 0, i32 3
  %26 = load i64, ptr %tdir_offset17, align 8
  %add.ptr = getelementptr inbounds i8, ptr %24, i64 %26
  %27 = load i64, ptr %cc, align 8
  call void @_TIFFmemcpy(ptr noundef %22, ptr noundef %add.ptr, i64 noundef %27) #2
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.end16
  %28 = load ptr, ptr %tif.addr, align 8
  %tif_flags19 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 3
  %29 = load i64, ptr %tif_flags19, align 8
  %and20 = and i64 %29, 128
  %tobool.not = icmp eq i64 %and20, 0
  br i1 %tobool.not, label %if.end32, label %if.then21

if.then21:                                        ; preds = %if.end18
  %30 = load ptr, ptr %dir.addr, align 8
  %tdir_type22 = getelementptr inbounds %struct.TIFFDirEntry, ptr %30, i64 0, i32 1
  %31 = load i16, ptr %tdir_type22, align 2
  switch i16 %31, label %if.end32 [
    i16 3, label %sw.bb
    i16 8, label %sw.bb
    i16 4, label %sw.bb25
    i16 9, label %sw.bb25
    i16 11, label %sw.bb25
    i16 5, label %sw.bb27
    i16 10, label %sw.bb27
    i16 12, label %sw.bb30
  ]

sw.bb:                                            ; preds = %if.then21, %if.then21
  %32 = load ptr, ptr %cp.addr, align 8
  %33 = load ptr, ptr %dir.addr, align 8
  %tdir_count24 = getelementptr inbounds %struct.TIFFDirEntry, ptr %33, i64 0, i32 2
  %34 = load i64, ptr %tdir_count24, align 8
  call void @TIFFSwabArrayOfShort(ptr noundef %32, i64 noundef %34) #2
  br label %if.end32

sw.bb25:                                          ; preds = %if.then21, %if.then21, %if.then21
  %35 = load ptr, ptr %cp.addr, align 8
  %36 = load ptr, ptr %dir.addr, align 8
  %tdir_count26 = getelementptr inbounds %struct.TIFFDirEntry, ptr %36, i64 0, i32 2
  %37 = load i64, ptr %tdir_count26, align 8
  call void @TIFFSwabArrayOfLong(ptr noundef %35, i64 noundef %37) #2
  br label %if.end32

sw.bb27:                                          ; preds = %if.then21, %if.then21
  %38 = load ptr, ptr %cp.addr, align 8
  %39 = load ptr, ptr %dir.addr, align 8
  %tdir_count28 = getelementptr inbounds %struct.TIFFDirEntry, ptr %39, i64 0, i32 2
  %40 = load i64, ptr %tdir_count28, align 8
  %mul29 = shl i64 %40, 1
  call void @TIFFSwabArrayOfLong(ptr noundef %38, i64 noundef %mul29) #2
  br label %if.end32

sw.bb30:                                          ; preds = %if.then21
  %41 = load ptr, ptr %cp.addr, align 8
  %42 = load ptr, ptr %dir.addr, align 8
  %tdir_count31 = getelementptr inbounds %struct.TIFFDirEntry, ptr %42, i64 0, i32 2
  %43 = load i64, ptr %tdir_count31, align 8
  call void @TIFFSwabArrayOfDouble(ptr noundef %41, i64 noundef %43) #2
  br label %if.end32

if.end32:                                         ; preds = %if.then21, %sw.bb, %sw.bb25, %sw.bb27, %sw.bb30, %if.end18
  %44 = load i64, ptr %cc, align 8
  br label %return

bad:                                              ; preds = %if.else, %if.end, %if.then
  %45 = load ptr, ptr %tif.addr, align 8
  %46 = load ptr, ptr %45, align 8
  %47 = load ptr, ptr %dir.addr, align 8
  %48 = load i16, ptr %47, align 8
  %conv33 = zext i16 %48 to i64
  %call34 = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %45, i64 noundef %conv33) #2
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call34, i64 0, i32 7
  %49 = load ptr, ptr %field_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %46, ptr noundef nonnull @.str.20, ptr noundef %49) #2
  br label %return

return:                                           ; preds = %bad, %if.end32
  %storemerge = phi i64 [ 0, %bad ], [ %44, %if.end32 ]
  ret i64 %storemerge
}

declare void @_TIFFfree(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFFetchShortPair(ptr noundef %tif, ptr noundef %dir) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %v = alloca [2 x i16], align 2
  %ok = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i32 0, ptr %ok, align 4
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 1
  %0 = load i16, ptr %tdir_type, align 2
  switch i16 %0, label %sw.epilog [
    i16 3, label %sw.bb
    i16 8, label %sw.bb
    i16 1, label %sw.bb1
    i16 6, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry, %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %2 = load ptr, ptr %dir.addr, align 8
  %call = call i32 @TIFFFetchShortArray(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %v)
  store i32 %call, ptr %ok, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry, %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %4 = load ptr, ptr %dir.addr, align 8
  %call3 = call i32 @TIFFFetchByteArray(ptr noundef %3, ptr noundef %4, ptr noundef nonnull %v)
  store i32 %call3, ptr %ok, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry
  %5 = load i32, ptr %ok, align 4
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.epilog
  %6 = load ptr, ptr %tif.addr, align 8
  %7 = load ptr, ptr %dir.addr, align 8
  %8 = load i16, ptr %7, align 8
  %conv4 = zext i16 %8 to i64
  %9 = load i16, ptr %v, align 2
  %conv5 = zext i16 %9 to i32
  %arrayidx6 = getelementptr inbounds [2 x i16], ptr %v, i64 0, i64 1
  %10 = load i16, ptr %arrayidx6, align 2
  %conv7 = zext i16 %10 to i32
  %call8 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %6, i64 noundef %conv4, i32 noundef %conv5, i32 noundef %conv7) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %11 = load i32, ptr %ok, align 4
  ret i32 %11
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFFetchRefBlackWhite(ptr noundef %tif, ptr noundef %dir) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %cp = alloca ptr, align 8
  %ok = alloca i32, align 4
  %fp = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 1
  %0 = load i16, ptr %tdir_type, align 2
  %cmp = icmp eq i16 %0, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %2 = load ptr, ptr %dir.addr, align 8
  %call = call i32 @TIFFFetchNormalTag(ptr noundef %1, ptr noundef %2)
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %4 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %4, i64 0, i32 2
  %5 = load i64, ptr %tdir_count, align 8
  %mul = shl i64 %5, 3
  %call2 = call ptr @CheckMalloc(ptr noundef %3, i64 noundef %mul, ptr noundef nonnull @TIFFFetchRefBlackWhite.mesg)
  store ptr %call2, ptr %cp, align 8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %6 = load ptr, ptr %tif.addr, align 8
  %7 = load ptr, ptr %dir.addr, align 8
  %8 = load ptr, ptr %cp, align 8
  %call3 = call i32 @TIFFFetchLongArray(ptr noundef %6, ptr noundef %7, ptr noundef %8)
  %tobool4 = icmp ne i32 %call3, 0
  %phi.cast = zext i1 %tobool4 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %9 = phi i32 [ 0, %if.end ], [ %phi.cast, %land.rhs ]
  store i32 %9, ptr %ok, align 4
  %cmp5.not = icmp eq i32 %9, 0
  br i1 %cmp5.not, label %if.end24, label %if.then7

if.then7:                                         ; preds = %land.end
  %10 = load ptr, ptr %tif.addr, align 8
  %11 = load ptr, ptr %dir.addr, align 8
  %tdir_count8 = getelementptr inbounds %struct.TIFFDirEntry, ptr %11, i64 0, i32 2
  %12 = load i64, ptr %tdir_count8, align 8
  %mul9 = shl i64 %12, 2
  %call10 = call ptr @CheckMalloc(ptr noundef %10, i64 noundef %mul9, ptr noundef nonnull @TIFFFetchRefBlackWhite.mesg)
  store ptr %call10, ptr %fp, align 8
  %cmp11 = icmp ne ptr %call10, null
  %conv12 = zext i1 %cmp11 to i32
  store i32 %conv12, ptr %ok, align 4
  br i1 %cmp11, label %for.cond, label %if.end24

for.cond:                                         ; preds = %if.then7, %for.body
  %storemerge1 = phi i64 [ %inc, %for.body ], [ 0, %if.then7 ]
  store i64 %storemerge1, ptr %i, align 8
  %13 = load ptr, ptr %dir.addr, align 8
  %tdir_count16 = getelementptr inbounds %struct.TIFFDirEntry, ptr %13, i64 0, i32 2
  %14 = load i64, ptr %tdir_count16, align 8
  %cmp17 = icmp ult i64 %storemerge1, %14
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %cp, align 8
  %16 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i64, ptr %15, i64 %16
  %17 = load i64, ptr %arrayidx, align 8
  %conv19 = uitofp i64 %17 to float
  %18 = load ptr, ptr %fp, align 8
  %arrayidx20 = getelementptr inbounds float, ptr %18, i64 %16
  store float %conv19, ptr %arrayidx20, align 4
  %19 = load i64, ptr %i, align 8
  %inc = add i64 %19, 1
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %tif.addr, align 8
  %21 = load ptr, ptr %dir.addr, align 8
  %22 = load i16, ptr %21, align 8
  %conv21 = zext i16 %22 to i64
  %23 = load ptr, ptr %fp, align 8
  %call22 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %20, i64 noundef %conv21, ptr noundef %23) #2
  store i32 %call22, ptr %ok, align 4
  call void @_TIFFfree(ptr noundef %23) #2
  br label %if.end24

if.end24:                                         ; preds = %if.then7, %for.end, %land.end
  %24 = load ptr, ptr %cp, align 8
  %tobool25.not = icmp eq ptr %24, null
  br i1 %tobool25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end24
  %25 = load ptr, ptr %cp, align 8
  call void @_TIFFfree(ptr noundef %25) #2
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end24
  %26 = load i32, ptr %ok, align 4
  br label %return

return:                                           ; preds = %if.end27, %if.then
  %storemerge = phi i32 [ %26, %if.end27 ], [ %call, %if.then ]
  ret i32 %storemerge
}

declare ptr @_TIFFFieldWithTag(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @EstimateStripByteCounts(ptr noundef %tif, ptr noundef %dir, i16 noundef zeroext %dircount) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %dircount.addr = alloca i16, align 2
  %dp = alloca ptr, align 8
  %td = alloca ptr, align 8
  %i = alloca i16, align 2
  %space = alloca i64, align 8
  %filesize = alloca i64, align 8
  %n = alloca i16, align 2
  %cc = alloca i64, align 8
  %rowbytes = alloca i64, align 8
  %rowsperstrip = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i16 %dircount, ptr %dircount.addr, align 2
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 45
  %0 = load ptr, ptr %td_stripbytecount, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %td, align 8
  %td_stripbytecount1 = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i64 0, i32 45
  %2 = load ptr, ptr %td_stripbytecount1, align 8
  call void @_TIFFfree(ptr noundef %2) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %4 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %4, i64 0, i32 43
  %5 = load i64, ptr %td_nstrips, align 8
  %mul = shl i64 %5, 3
  %call = call ptr @CheckMalloc(ptr noundef %3, i64 noundef %mul, ptr noundef nonnull @.str.17)
  %td_stripbytecount2 = getelementptr inbounds %struct.TIFFDirectory, ptr %4, i64 0, i32 45
  store ptr %call, ptr %td_stripbytecount2, align 8
  %6 = load ptr, ptr %td, align 8
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i64 0, i32 10
  %7 = load i16, ptr %td_compression, align 4
  %cmp.not = icmp eq i16 %7, 1
  br i1 %cmp.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %8 = load i16, ptr %dircount.addr, align 2
  %conv5 = zext i16 %8 to i64
  %mul6 = mul nuw nsw i64 %conv5, 24
  %add7 = add nuw nsw i64 %mul6, 26
  store i64 %add7, ptr %space, align 8
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_sizeproc = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 53
  %10 = load ptr, ptr %tif_sizeproc, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 48
  %11 = load ptr, ptr %tif_clientdata, align 8
  %call8 = call i64 %10(ptr noundef %11) #2
  store i64 %call8, ptr %filesize, align 8
  %12 = load ptr, ptr %dir.addr, align 8
  store ptr %12, ptr %dp, align 8
  %13 = load i16, ptr %dircount.addr, align 2
  store i16 %13, ptr %n, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %14 = load i16, ptr %n, align 2
  %cmp10.not = icmp eq i16 %14, 0
  br i1 %cmp10.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %dp, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %15, i64 0, i32 2
  %16 = load i64, ptr %tdir_count, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %15, i64 0, i32 1
  %17 = load i16, ptr %tdir_type, align 2
  %idxprom = zext i16 %17 to i64
  %arrayidx = getelementptr inbounds [0 x i32], ptr @tiffDataWidth, i64 0, i64 %idxprom
  %18 = load i32, ptr %arrayidx, align 4
  %conv12 = sext i32 %18 to i64
  %mul13 = mul i64 %16, %conv12
  store i64 %mul13, ptr %cc, align 8
  %cmp14 = icmp ugt i64 %mul13, 8
  br i1 %cmp14, label %if.then16, label %for.inc

if.then16:                                        ; preds = %for.body
  %19 = load i64, ptr %cc, align 8
  %20 = load i64, ptr %space, align 8
  %add17 = add i64 %20, %19
  store i64 %add17, ptr %space, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then16
  %21 = load i16, ptr %n, align 2
  %dec = add i16 %21, -1
  store i16 %dec, ptr %n, align 2
  %22 = load ptr, ptr %dp, align 8
  %incdec.ptr = getelementptr inbounds %struct.TIFFDirEntry, ptr %22, i64 1
  store ptr %incdec.ptr, ptr %dp, align 8
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %23 = load i64, ptr %filesize, align 8
  %24 = load i64, ptr %space, align 8
  %sub = sub i64 %23, %24
  store i64 %sub, ptr %space, align 8
  %25 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i64 0, i32 24
  %26 = load i16, ptr %td_planarconfig, align 2
  %cmp20 = icmp eq i16 %26, 2
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %for.end
  %27 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %27, i64 0, i32 15
  %28 = load i16, ptr %td_samplesperpixel, align 2
  %conv23 = zext i16 %28 to i64
  %29 = load i64, ptr %space, align 8
  %div = udiv i64 %29, %conv23
  store i64 %div, ptr %space, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %for.end
  br label %for.cond25

for.cond25:                                       ; preds = %for.body30, %if.end24
  %storemerge1 = phi i16 [ 0, %if.end24 ], [ %inc, %for.body30 ]
  store i16 %storemerge1, ptr %i, align 2
  %conv26 = zext i16 %storemerge1 to i64
  %30 = load ptr, ptr %td, align 8
  %td_nstrips27 = getelementptr inbounds %struct.TIFFDirectory, ptr %30, i64 0, i32 43
  %31 = load i64, ptr %td_nstrips27, align 8
  %cmp28 = icmp ugt i64 %31, %conv26
  br i1 %cmp28, label %for.body30, label %for.end35

for.body30:                                       ; preds = %for.cond25
  %32 = load i64, ptr %space, align 8
  %33 = load ptr, ptr %td, align 8
  %td_stripbytecount31 = getelementptr inbounds %struct.TIFFDirectory, ptr %33, i64 0, i32 45
  %34 = load ptr, ptr %td_stripbytecount31, align 8
  %35 = load i16, ptr %i, align 2
  %idxprom32 = zext i16 %35 to i64
  %arrayidx33 = getelementptr inbounds i64, ptr %34, i64 %idxprom32
  store i64 %32, ptr %arrayidx33, align 8
  %36 = load i16, ptr %i, align 2
  %inc = add i16 %36, 1
  br label %for.cond25, !llvm.loop !17

for.end35:                                        ; preds = %for.cond25
  %37 = load i16, ptr %i, align 2
  %dec36 = add i16 %37, -1
  store i16 %dec36, ptr %i, align 2
  %38 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %38, i64 0, i32 44
  %39 = load ptr, ptr %td_stripoffset, align 8
  %idxprom37 = zext i16 %dec36 to i64
  %arrayidx38 = getelementptr inbounds i64, ptr %39, i64 %idxprom37
  %40 = load i64, ptr %arrayidx38, align 8
  %td_stripbytecount39 = getelementptr inbounds %struct.TIFFDirectory, ptr %38, i64 0, i32 45
  %41 = load ptr, ptr %td_stripbytecount39, align 8
  %42 = load i16, ptr %i, align 2
  %idxprom40 = zext i16 %42 to i64
  %arrayidx41 = getelementptr inbounds i64, ptr %41, i64 %idxprom40
  %43 = load i64, ptr %arrayidx41, align 8
  %add42 = add i64 %40, %43
  %44 = load i64, ptr %filesize, align 8
  %cmp43 = icmp sgt i64 %add42, %44
  br i1 %cmp43, label %if.then45, label %if.end69

if.then45:                                        ; preds = %for.end35
  %45 = load i64, ptr %filesize, align 8
  %46 = load ptr, ptr %td, align 8
  %td_stripoffset46 = getelementptr inbounds %struct.TIFFDirectory, ptr %46, i64 0, i32 44
  %47 = load ptr, ptr %td_stripoffset46, align 8
  %48 = load i16, ptr %i, align 2
  %idxprom47 = zext i16 %48 to i64
  %arrayidx48 = getelementptr inbounds i64, ptr %47, i64 %idxprom47
  %49 = load i64, ptr %arrayidx48, align 8
  %sub49 = sub i64 %45, %49
  %50 = load ptr, ptr %td, align 8
  %td_stripbytecount50 = getelementptr inbounds %struct.TIFFDirectory, ptr %50, i64 0, i32 45
  %51 = load ptr, ptr %td_stripbytecount50, align 8
  %52 = load i16, ptr %i, align 2
  %idxprom51 = zext i16 %52 to i64
  %arrayidx52 = getelementptr inbounds i64, ptr %51, i64 %idxprom51
  store i64 %sub49, ptr %arrayidx52, align 8
  br label %if.end69

if.else:                                          ; preds = %if.end
  %53 = load ptr, ptr %tif.addr, align 8
  %call54 = call i64 @TIFFScanlineSize(ptr noundef %53) #2
  store i64 %call54, ptr %rowbytes, align 8
  %54 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %54, i64 0, i32 2
  %55 = load i64, ptr %td_imagelength, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %54, i64 0, i32 42
  %56 = load i64, ptr %td_stripsperimage, align 8
  %div55 = udiv i64 %55, %56
  store i64 %div55, ptr %rowsperstrip, align 8
  br label %for.cond56

for.cond56:                                       ; preds = %for.body61, %if.else
  %storemerge = phi i16 [ 0, %if.else ], [ %inc67, %for.body61 ]
  store i16 %storemerge, ptr %i, align 2
  %conv57 = zext i16 %storemerge to i64
  %57 = load ptr, ptr %td, align 8
  %td_nstrips58 = getelementptr inbounds %struct.TIFFDirectory, ptr %57, i64 0, i32 43
  %58 = load i64, ptr %td_nstrips58, align 8
  %cmp59 = icmp ugt i64 %58, %conv57
  br i1 %cmp59, label %for.body61, label %if.end69

for.body61:                                       ; preds = %for.cond56
  %59 = load i64, ptr %rowbytes, align 8
  %60 = load i64, ptr %rowsperstrip, align 8
  %mul62 = mul i64 %59, %60
  %61 = load ptr, ptr %td, align 8
  %td_stripbytecount63 = getelementptr inbounds %struct.TIFFDirectory, ptr %61, i64 0, i32 45
  %62 = load ptr, ptr %td_stripbytecount63, align 8
  %63 = load i16, ptr %i, align 2
  %idxprom64 = zext i16 %63 to i64
  %arrayidx65 = getelementptr inbounds i64, ptr %62, i64 %idxprom64
  store i64 %mul62, ptr %arrayidx65, align 8
  %64 = load i16, ptr %i, align 2
  %inc67 = add i16 %64, 1
  br label %for.cond56, !llvm.loop !18

if.end69:                                         ; preds = %for.cond56, %for.end35, %if.then45
  %65 = load ptr, ptr %tif.addr, align 8
  %tif_dir70 = getelementptr inbounds %struct.tiff, ptr %65, i64 0, i32 6
  %66 = load i64, ptr %tif_dir70, align 8
  %or = or i64 %66, 16777216
  store i64 %or, ptr %tif_dir70, align 8
  %and = and i64 %66, 131072
  %tobool75.not = icmp eq i64 %and, 0
  br i1 %tobool75.not, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.end69
  %67 = load ptr, ptr %td, align 8
  %td_imagelength77 = getelementptr inbounds %struct.TIFFDirectory, ptr %67, i64 0, i32 2
  %68 = load i64, ptr %td_imagelength77, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %67, i64 0, i32 16
  store i64 %68, ptr %td_rowsperstrip, align 8
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.end69
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @ChopUpSingleUncompressedStrip(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %bytecount = alloca i64, align 8
  %offset = alloca i64, align 8
  %rowbytes = alloca i64, align 8
  %stripbytes = alloca i64, align 8
  %strip = alloca i64, align 8
  %nstrips = alloca i64, align 8
  %rowsperstrip = alloca i64, align 8
  %newcounts = alloca ptr, align 8
  %newoffsets = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 45
  %0 = load ptr, ptr %td_stripbytecount, align 8
  %1 = load i64, ptr %0, align 8
  store i64 %1, ptr %bytecount, align 8
  %td_stripoffset = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 44
  %2 = load ptr, ptr %td_stripoffset, align 8
  %3 = load i64, ptr %2, align 8
  store i64 %3, ptr %offset, align 8
  %4 = load ptr, ptr %tif.addr, align 8
  %call = call i64 @TIFFVTileSize(ptr noundef %4, i64 noundef 1) #2
  store i64 %call, ptr %rowbytes, align 8
  %cmp = icmp sgt i64 %call, 8192
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i64, ptr %rowbytes, align 8
  store i64 %5, ptr %stripbytes, align 8
  store i64 1, ptr %rowsperstrip, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i64, ptr %rowbytes, align 8
  %div = sdiv i64 8192, %6
  store i64 %div, ptr %rowsperstrip, align 8
  %mul = mul i64 %6, %div
  store i64 %mul, ptr %stripbytes, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i64, ptr %rowsperstrip, align 8
  %8 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i64 0, i32 16
  %9 = load i64, ptr %td_rowsperstrip, align 8
  %cmp2.not = icmp ult i64 %7, %9
  br i1 %cmp2.not, label %if.end4, label %return

if.end4:                                          ; preds = %if.end
  %10 = load i64, ptr %bytecount, align 8
  %11 = load i64, ptr %stripbytes, align 8
  %sub = add i64 %11, -1
  %add = add i64 %10, %sub
  %div5 = udiv i64 %add, %11
  store i64 %div5, ptr %nstrips, align 8
  %12 = load ptr, ptr %tif.addr, align 8
  %mul6 = shl i64 %div5, 3
  %call7 = call ptr @CheckMalloc(ptr noundef %12, i64 noundef %mul6, ptr noundef nonnull @.str.27)
  store ptr %call7, ptr %newcounts, align 8
  %mul8 = shl i64 %div5, 3
  %call9 = call ptr @CheckMalloc(ptr noundef %12, i64 noundef %mul8, ptr noundef nonnull @.str.28)
  store ptr %call9, ptr %newoffsets, align 8
  %cmp10 = icmp eq ptr %call7, null
  %13 = load ptr, ptr %newoffsets, align 8
  %cmp11 = icmp eq ptr %13, null
  %or.cond = select i1 %cmp10, i1 true, i1 %cmp11
  br i1 %or.cond, label %if.then12, label %for.cond

if.then12:                                        ; preds = %if.end4
  %14 = load ptr, ptr %newcounts, align 8
  %cmp13.not = icmp eq ptr %14, null
  br i1 %cmp13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.then12
  %15 = load ptr, ptr %newcounts, align 8
  call void @_TIFFfree(ptr noundef %15) #2
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then12
  %16 = load ptr, ptr %newoffsets, align 8
  %cmp16.not = icmp eq ptr %16, null
  br i1 %cmp16.not, label %return, label %if.then17

if.then17:                                        ; preds = %if.end15
  %17 = load ptr, ptr %newoffsets, align 8
  call void @_TIFFfree(ptr noundef %17) #2
  br label %return

for.cond:                                         ; preds = %if.end4, %if.end23
  %storemerge = phi i64 [ %inc, %if.end23 ], [ 0, %if.end4 ]
  store i64 %storemerge, ptr %strip, align 8
  %18 = load i64, ptr %nstrips, align 8
  %cmp20 = icmp ult i64 %storemerge, %18
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i64, ptr %stripbytes, align 8
  %20 = load i64, ptr %bytecount, align 8
  %cmp21 = icmp sgt i64 %19, %20
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.body
  %21 = load i64, ptr %bytecount, align 8
  store i64 %21, ptr %stripbytes, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %for.body
  %22 = load i64, ptr %stripbytes, align 8
  %23 = load ptr, ptr %newcounts, align 8
  %24 = load i64, ptr %strip, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %23, i64 %24
  store i64 %22, ptr %arrayidx24, align 8
  %25 = load i64, ptr %offset, align 8
  %26 = load ptr, ptr %newoffsets, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %26, i64 %24
  store i64 %25, ptr %arrayidx25, align 8
  %27 = load i64, ptr %stripbytes, align 8
  %add26 = add i64 %25, %27
  store i64 %add26, ptr %offset, align 8
  %28 = load i64, ptr %bytecount, align 8
  %sub27 = sub i64 %28, %27
  store i64 %sub27, ptr %bytecount, align 8
  %29 = load i64, ptr %strip, align 8
  %inc = add i64 %29, 1
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %30 = load i64, ptr %nstrips, align 8
  %31 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %31, i64 0, i32 43
  store i64 %30, ptr %td_nstrips, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %31, i64 0, i32 42
  store i64 %30, ptr %td_stripsperimage, align 8
  %32 = load ptr, ptr %tif.addr, align 8
  %33 = load i64, ptr %rowsperstrip, align 8
  %call28 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %32, i64 noundef 278, i64 noundef %33) #2
  %34 = load ptr, ptr %td, align 8
  %td_stripbytecount29 = getelementptr inbounds %struct.TIFFDirectory, ptr %34, i64 0, i32 45
  %35 = load ptr, ptr %td_stripbytecount29, align 8
  call void @_TIFFfree(ptr noundef %35) #2
  %td_stripoffset30 = getelementptr inbounds %struct.TIFFDirectory, ptr %34, i64 0, i32 44
  %36 = load ptr, ptr %td_stripoffset30, align 8
  call void @_TIFFfree(ptr noundef %36) #2
  %37 = load ptr, ptr %newcounts, align 8
  %38 = load ptr, ptr %td, align 8
  %td_stripbytecount31 = getelementptr inbounds %struct.TIFFDirectory, ptr %38, i64 0, i32 45
  store ptr %37, ptr %td_stripbytecount31, align 8
  %39 = load ptr, ptr %newoffsets, align 8
  %td_stripoffset32 = getelementptr inbounds %struct.TIFFDirectory, ptr %38, i64 0, i32 44
  store ptr %39, ptr %td_stripoffset32, align 8
  br label %return

return:                                           ; preds = %if.end15, %if.then17, %if.end, %for.end
  ret void
}

declare i64 @TIFFTileSize(ptr noundef) #1

declare i64 @TIFFScanlineSize(ptr noundef) #1

declare ptr @_TIFFmalloc(i64 noundef) #1

declare void @TIFFSwabArrayOfDouble(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFFetchShortArray(ptr noundef %tif, ptr noundef %dir, ptr noundef %v) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 2
  %0 = load i64, ptr %tdir_count, align 8
  %cmp = icmp ult i64 %0, 3
  br i1 %cmp, label %if.then, label %if.else22

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 7
  %2 = load i16, ptr %tif_header, align 8
  %cmp1 = icmp eq i16 %2, 19789
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %3 = load ptr, ptr %dir.addr, align 8
  %tdir_count4 = getelementptr inbounds %struct.TIFFDirEntry, ptr %3, i64 0, i32 2
  %4 = load i64, ptr %tdir_count4, align 8
  switch i64 %4, label %return [
    i64 2, label %sw.bb
    i64 1, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.then3
  %5 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i64 0, i32 3
  %6 = load i64, ptr %tdir_offset, align 8
  %conv5 = trunc i64 %6 to i16
  %7 = load ptr, ptr %v.addr, align 8
  %arrayidx = getelementptr inbounds i16, ptr %7, i64 1
  store i16 %conv5, ptr %arrayidx, align 2
  br label %sw.bb6

sw.bb6:                                           ; preds = %sw.bb, %if.then3
  %8 = load ptr, ptr %dir.addr, align 8
  %tdir_offset7 = getelementptr inbounds %struct.TIFFDirEntry, ptr %8, i64 0, i32 3
  %9 = load i64, ptr %tdir_offset7, align 8
  %shr = lshr i64 %9, 16
  %conv8 = trunc i64 %shr to i16
  %10 = load ptr, ptr %v.addr, align 8
  store i16 %conv8, ptr %10, align 2
  br label %return

if.else:                                          ; preds = %if.then
  %11 = load ptr, ptr %dir.addr, align 8
  %tdir_count10 = getelementptr inbounds %struct.TIFFDirEntry, ptr %11, i64 0, i32 2
  %12 = load i64, ptr %tdir_count10, align 8
  switch i64 %12, label %return [
    i64 2, label %sw.bb11
    i64 1, label %sw.bb16
  ]

sw.bb11:                                          ; preds = %if.else
  %13 = load ptr, ptr %dir.addr, align 8
  %tdir_offset12 = getelementptr inbounds %struct.TIFFDirEntry, ptr %13, i64 0, i32 3
  %14 = load i64, ptr %tdir_offset12, align 8
  %shr13 = lshr i64 %14, 16
  %conv14 = trunc i64 %shr13 to i16
  %15 = load ptr, ptr %v.addr, align 8
  %arrayidx15 = getelementptr inbounds i16, ptr %15, i64 1
  store i16 %conv14, ptr %arrayidx15, align 2
  br label %sw.bb16

sw.bb16:                                          ; preds = %sw.bb11, %if.else
  %16 = load ptr, ptr %dir.addr, align 8
  %tdir_offset17 = getelementptr inbounds %struct.TIFFDirEntry, ptr %16, i64 0, i32 3
  %17 = load i64, ptr %tdir_offset17, align 8
  %conv19 = trunc i64 %17 to i16
  %18 = load ptr, ptr %v.addr, align 8
  store i16 %conv19, ptr %18, align 2
  br label %return

if.else22:                                        ; preds = %entry
  %19 = load ptr, ptr %tif.addr, align 8
  %20 = load ptr, ptr %dir.addr, align 8
  %21 = load ptr, ptr %v.addr, align 8
  %call = call i64 @TIFFFetchData(ptr noundef %19, ptr noundef %20, ptr noundef %21)
  %cmp23 = icmp ne i64 %call, 0
  %conv24 = zext i1 %cmp23 to i32
  br label %return

return:                                           ; preds = %sw.bb6, %if.then3, %sw.bb16, %if.else, %if.else22
  %storemerge = phi i32 [ %conv24, %if.else22 ], [ 1, %if.else ], [ 1, %sw.bb16 ], [ 1, %if.then3 ], [ 1, %sw.bb6 ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFFetchByteArray(ptr noundef %tif, ptr noundef %dir, ptr noundef %v) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 2
  %0 = load i64, ptr %tdir_count, align 8
  %cmp = icmp ult i64 %0, 5
  br i1 %cmp, label %if.then, label %if.else46

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 7
  %2 = load i16, ptr %tif_header, align 8
  %cmp1 = icmp eq i16 %2, 19789
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %3 = load ptr, ptr %dir.addr, align 8
  %tdir_count4 = getelementptr inbounds %struct.TIFFDirEntry, ptr %3, i64 0, i32 2
  %4 = load i64, ptr %tdir_count4, align 8
  switch i64 %4, label %return [
    i64 4, label %sw.bb
    i64 3, label %sw.bb6
    i64 2, label %sw.bb11
    i64 1, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.then3
  %5 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i64 0, i32 3
  %6 = load i64, ptr %tdir_offset, align 8
  %7 = trunc i64 %6 to i16
  %conv5 = and i16 %7, 255
  %8 = load ptr, ptr %v.addr, align 8
  %arrayidx = getelementptr inbounds i16, ptr %8, i64 3
  store i16 %conv5, ptr %arrayidx, align 2
  br label %sw.bb6

sw.bb6:                                           ; preds = %sw.bb, %if.then3
  %9 = load ptr, ptr %dir.addr, align 8
  %tdir_offset7 = getelementptr inbounds %struct.TIFFDirEntry, ptr %9, i64 0, i32 3
  %10 = load i64, ptr %tdir_offset7, align 8
  %11 = trunc i64 %10 to i16
  %12 = lshr i16 %11, 8
  %13 = load ptr, ptr %v.addr, align 8
  %arrayidx10 = getelementptr inbounds i16, ptr %13, i64 2
  store i16 %12, ptr %arrayidx10, align 2
  br label %sw.bb11

sw.bb11:                                          ; preds = %sw.bb6, %if.then3
  %14 = load ptr, ptr %dir.addr, align 8
  %tdir_offset12 = getelementptr inbounds %struct.TIFFDirEntry, ptr %14, i64 0, i32 3
  %15 = load i64, ptr %tdir_offset12, align 8
  %shr13 = lshr i64 %15, 16
  %16 = trunc i64 %shr13 to i16
  %conv15 = and i16 %16, 255
  %17 = load ptr, ptr %v.addr, align 8
  %arrayidx16 = getelementptr inbounds i16, ptr %17, i64 1
  store i16 %conv15, ptr %arrayidx16, align 2
  br label %sw.bb17

sw.bb17:                                          ; preds = %sw.bb11, %if.then3
  %18 = load ptr, ptr %dir.addr, align 8
  %tdir_offset18 = getelementptr inbounds %struct.TIFFDirEntry, ptr %18, i64 0, i32 3
  %19 = load i64, ptr %tdir_offset18, align 8
  %shr19 = lshr i64 %19, 24
  %conv20 = trunc i64 %shr19 to i16
  %20 = load ptr, ptr %v.addr, align 8
  store i16 %conv20, ptr %20, align 2
  br label %return

if.else:                                          ; preds = %if.then
  %21 = load ptr, ptr %dir.addr, align 8
  %tdir_count22 = getelementptr inbounds %struct.TIFFDirEntry, ptr %21, i64 0, i32 2
  %22 = load i64, ptr %tdir_count22, align 8
  switch i64 %22, label %return [
    i64 4, label %sw.bb23
    i64 3, label %sw.bb28
    i64 2, label %sw.bb34
    i64 1, label %sw.bb40
  ]

sw.bb23:                                          ; preds = %if.else
  %23 = load ptr, ptr %dir.addr, align 8
  %tdir_offset24 = getelementptr inbounds %struct.TIFFDirEntry, ptr %23, i64 0, i32 3
  %24 = load i64, ptr %tdir_offset24, align 8
  %shr25 = lshr i64 %24, 24
  %conv26 = trunc i64 %shr25 to i16
  %25 = load ptr, ptr %v.addr, align 8
  %arrayidx27 = getelementptr inbounds i16, ptr %25, i64 3
  store i16 %conv26, ptr %arrayidx27, align 2
  br label %sw.bb28

sw.bb28:                                          ; preds = %sw.bb23, %if.else
  %26 = load ptr, ptr %dir.addr, align 8
  %tdir_offset29 = getelementptr inbounds %struct.TIFFDirEntry, ptr %26, i64 0, i32 3
  %27 = load i64, ptr %tdir_offset29, align 8
  %shr30 = lshr i64 %27, 16
  %28 = trunc i64 %shr30 to i16
  %conv32 = and i16 %28, 255
  %29 = load ptr, ptr %v.addr, align 8
  %arrayidx33 = getelementptr inbounds i16, ptr %29, i64 2
  store i16 %conv32, ptr %arrayidx33, align 2
  br label %sw.bb34

sw.bb34:                                          ; preds = %sw.bb28, %if.else
  %30 = load ptr, ptr %dir.addr, align 8
  %tdir_offset35 = getelementptr inbounds %struct.TIFFDirEntry, ptr %30, i64 0, i32 3
  %31 = load i64, ptr %tdir_offset35, align 8
  %32 = trunc i64 %31 to i16
  %33 = lshr i16 %32, 8
  %34 = load ptr, ptr %v.addr, align 8
  %arrayidx39 = getelementptr inbounds i16, ptr %34, i64 1
  store i16 %33, ptr %arrayidx39, align 2
  br label %sw.bb40

sw.bb40:                                          ; preds = %sw.bb34, %if.else
  %35 = load ptr, ptr %dir.addr, align 8
  %tdir_offset41 = getelementptr inbounds %struct.TIFFDirEntry, ptr %35, i64 0, i32 3
  %36 = load i64, ptr %tdir_offset41, align 8
  %37 = trunc i64 %36 to i16
  %conv43 = and i16 %37, 255
  %38 = load ptr, ptr %v.addr, align 8
  store i16 %conv43, ptr %38, align 2
  br label %return

if.else46:                                        ; preds = %entry
  %39 = load ptr, ptr %tif.addr, align 8
  %40 = load ptr, ptr %dir.addr, align 8
  %41 = load ptr, ptr %v.addr, align 8
  %call = call i64 @TIFFFetchData(ptr noundef %39, ptr noundef %40, ptr noundef %41)
  %cmp47 = icmp ne i64 %call, 0
  %conv48 = zext i1 %cmp47 to i32
  br label %return

return:                                           ; preds = %sw.bb17, %if.then3, %sw.bb40, %if.else, %if.else46
  %storemerge = phi i32 [ %conv48, %if.else46 ], [ 1, %if.else ], [ 1, %sw.bb40 ], [ 1, %if.then3 ], [ 1, %sw.bb17 ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFFetchLongArray(ptr noundef %tif, ptr noundef %dir, ptr noundef %v) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 2
  %0 = load i64, ptr %tdir_count, align 8
  %cmp = icmp eq i64 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %2 = load i64, ptr %tdir_offset, align 8
  %3 = load ptr, ptr %v.addr, align 8
  store i64 %2, ptr %3, align 8
  br label %return

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %tif.addr, align 8
  %5 = load ptr, ptr %dir.addr, align 8
  %6 = load ptr, ptr %v.addr, align 8
  %call = call i64 @TIFFFetchData(ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %cmp1 = icmp ne i64 %call, 0
  %conv = zext i1 %cmp1 to i32
  br label %return

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %conv, %if.else ], [ 1, %if.then ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFFetchRationalArray(ptr noundef %tif, ptr noundef %dir, ptr noundef %v) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %ok = alloca i32, align 4
  %l = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  store i32 0, ptr %ok, align 4
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 2
  %0 = load i64, ptr %tdir_count, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 1
  %1 = load i16, ptr %tdir_type, align 2
  %idxprom = zext i16 %1 to i64
  %arrayidx = getelementptr inbounds [0 x i32], ptr @tiffDataWidth, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 %0, %conv
  %call = call ptr @CheckMalloc(ptr noundef %tif, i64 noundef %mul, ptr noundef nonnull @.str.21)
  store ptr %call, ptr %l, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end16, label %if.then

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %4 = load ptr, ptr %dir.addr, align 8
  %5 = load ptr, ptr %l, align 8
  %call1 = call i64 @TIFFFetchData(ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %tobool2.not = icmp eq i64 %call1, 0
  br i1 %tobool2.not, label %if.end15, label %for.cond

for.cond:                                         ; preds = %if.then, %for.inc
  %storemerge = phi i64 [ %inc, %for.inc ], [ 0, %if.then ]
  store i64 %storemerge, ptr %i, align 8
  %6 = load ptr, ptr %dir.addr, align 8
  %tdir_count4 = getelementptr inbounds %struct.TIFFDirEntry, ptr %6, i64 0, i32 2
  %7 = load i64, ptr %tdir_count4, align 8
  %cmp = icmp ult i64 %storemerge, %7
  br i1 %cmp, label %for.body, label %if.end15

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %tif.addr, align 8
  %9 = load ptr, ptr %dir.addr, align 8
  %10 = load ptr, ptr %l, align 8
  %11 = load i64, ptr %i, align 8
  %mul6 = shl i64 %11, 1
  %arrayidx7 = getelementptr inbounds i64, ptr %10, i64 %mul6
  %12 = load i64, ptr %arrayidx7, align 8
  %mul8 = shl i64 %11, 1
  %add9 = or i64 %mul8, 1
  %arrayidx10 = getelementptr inbounds i64, ptr %10, i64 %add9
  %13 = load i64, ptr %arrayidx10, align 8
  %14 = load ptr, ptr %v.addr, align 8
  %15 = load i64, ptr %i, align 8
  %arrayidx11 = getelementptr inbounds float, ptr %14, i64 %15
  %call12 = call i32 @cvtRational(ptr noundef %8, ptr noundef %9, i64 noundef %12, i64 noundef %13, ptr noundef %arrayidx11)
  store i32 %call12, ptr %ok, align 4
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i64, ptr %i, align 8
  %inc = add i64 %16, 1
  br label %for.cond, !llvm.loop !20

if.end15:                                         ; preds = %for.cond, %for.body, %if.then
  %17 = load ptr, ptr %l, align 8
  call void @_TIFFfree(ptr noundef %17) #2
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %entry
  %18 = load i32, ptr %ok, align 4
  ret i32 %18
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFFetchFloatArray(ptr noundef %tif, ptr noundef %dir, ptr noundef %v) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 2
  %0 = load i64, ptr %tdir_count, align 8
  %cmp = icmp eq i64 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %2 = load float, ptr %tdir_offset, align 8
  %3 = load ptr, ptr %v.addr, align 8
  store float %2, ptr %3, align 4
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %tif.addr, align 8
  %5 = load ptr, ptr %dir.addr, align 8
  %6 = load ptr, ptr %v.addr, align 8
  %call = call i64 @TIFFFetchData(ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.else2, label %if.then1

if.then1:                                         ; preds = %if.else
  store i32 1, ptr %retval, align 4
  br label %return

if.else2:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else2, %if.then1, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFFetchDoubleArray(ptr noundef %tif, ptr noundef %dir, ptr noundef %v) #0 {
entry:
  %call = call i64 @TIFFFetchData(ptr noundef %tif, ptr noundef %dir, ptr noundef %v)
  %tobool.not = icmp eq i64 %call, 0
  %. = select i1 %tobool.not, i32 0, i32 1
  ret i32 %.
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @TIFFFetchString(ptr noundef %tif, ptr noundef %dir, ptr noundef %cp) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %l = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 2
  %0 = load i64, ptr %tdir_count, align 8
  %cmp = icmp ult i64 %0, 5
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %2 = load i64, ptr %tdir_offset, align 8
  store i64 %2, ptr %l, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 3
  %4 = load i64, ptr %tif_flags, align 8
  %and = and i64 %4, 128
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  call void @TIFFSwabLong(ptr noundef nonnull %l) #2
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %5 = load ptr, ptr %cp.addr, align 8
  %6 = load ptr, ptr %dir.addr, align 8
  %tdir_count2 = getelementptr inbounds %struct.TIFFDirEntry, ptr %6, i64 0, i32 2
  %7 = load i64, ptr %tdir_count2, align 8
  call void @_TIFFmemcpy(ptr noundef %5, ptr noundef nonnull %l, i64 noundef %7) #2
  br label %return

if.end3:                                          ; preds = %entry
  %8 = load ptr, ptr %tif.addr, align 8
  %9 = load ptr, ptr %dir.addr, align 8
  %10 = load ptr, ptr %cp.addr, align 8
  %call = call i64 @TIFFFetchData(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  br label %return

return:                                           ; preds = %if.end3, %if.end
  %storemerge = phi i64 [ %call, %if.end3 ], [ 1, %if.end ]
  ret i64 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal float @TIFFFetchFloat(ptr noundef %tif, ptr noundef %dir) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %l = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 7
  %0 = load i16, ptr %tif_header, align 8
  %cmp = icmp eq i16 %0, 19789
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %2 = load i64, ptr %tdir_offset, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 9
  %4 = load ptr, ptr %tif_typeshift, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 1
  %5 = load i16, ptr %tdir_type, align 2
  %idxprom = zext i16 %5 to i64
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4
  %sh_prom = zext i32 %6 to i64
  %shr = lshr i64 %2, %sh_prom
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_typemask = getelementptr inbounds %struct.tiff, ptr %7, i64 0, i32 10
  %8 = load ptr, ptr %tif_typemask, align 8
  %9 = load ptr, ptr %dir.addr, align 8
  %tdir_type2 = getelementptr inbounds %struct.TIFFDirEntry, ptr %9, i64 0, i32 1
  %10 = load i16, ptr %tdir_type2, align 2
  %idxprom3 = zext i16 %10 to i64
  %arrayidx4 = getelementptr inbounds i64, ptr %8, i64 %idxprom3
  %11 = load i64, ptr %arrayidx4, align 8
  %and = and i64 %shr, %11
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load ptr, ptr %dir.addr, align 8
  %tdir_offset5 = getelementptr inbounds %struct.TIFFDirEntry, ptr %12, i64 0, i32 3
  %13 = load i64, ptr %tdir_offset5, align 8
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_typemask6 = getelementptr inbounds %struct.tiff, ptr %14, i64 0, i32 10
  %15 = load ptr, ptr %tif_typemask6, align 8
  %tdir_type7 = getelementptr inbounds %struct.TIFFDirEntry, ptr %12, i64 0, i32 1
  %16 = load i16, ptr %tdir_type7, align 2
  %idxprom8 = zext i16 %16 to i64
  %arrayidx9 = getelementptr inbounds i64, ptr %15, i64 %idxprom8
  %17 = load i64, ptr %arrayidx9, align 8
  %and10 = and i64 %13, %17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %and, %cond.true ], [ %and10, %cond.false ]
  store i64 %cond, ptr %l, align 8
  %18 = load float, ptr %l, align 8
  ret float %18
}

; Function Attrs: nounwind ssp uwtable
define internal float @TIFFFetchRational(ptr noundef %tif, ptr noundef %dir) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %l = alloca [2 x i64], align 8
  %v = alloca float, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  %call = call i64 @TIFFFetchData(ptr noundef %tif, ptr noundef %dir, ptr noundef nonnull %l)
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cond.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load ptr, ptr %dir.addr, align 8
  %2 = load i64, ptr %l, align 8
  %arrayidx1 = getelementptr inbounds [2 x i64], ptr %l, i64 0, i64 1
  %3 = load i64, ptr %arrayidx1, align 8
  %call2 = call i32 @cvtRational(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %v)
  %tobool3.not = icmp eq i32 %call2, 0
  %4 = load float, ptr %v, align 4
  %spec.select = select i1 %tobool3.not, float 1.000000e+00, float %4
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false, %entry
  %cond = phi float [ 1.000000e+00, %entry ], [ %spec.select, %lor.lhs.false ]
  ret float %cond
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @cvtRational(ptr noundef %tif, ptr noundef %dir, i64 noundef %num, i64 noundef %denom, ptr noundef %rv) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %num.addr = alloca i64, align 8
  %denom.addr = alloca i64, align 8
  %rv.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i64 %num, ptr %num.addr, align 8
  store i64 %denom, ptr %denom.addr, align 8
  store ptr %rv, ptr %rv.addr, align 8
  %cmp = icmp eq i64 %denom, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = load ptr, ptr %dir.addr, align 8
  %3 = load i16, ptr %2, align 8
  %conv = zext i16 %3 to i64
  %call = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %0, i64 noundef %conv) #2
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call, i64 0, i32 7
  %4 = load ptr, ptr %field_name, align 8
  %5 = load i64, ptr %num.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef %4, i64 noundef %5) #2
  br label %return

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %6, i64 0, i32 1
  %7 = load i16, ptr %tdir_type, align 2
  %cmp2 = icmp eq i16 %7, 5
  br i1 %cmp2, label %if.then4, label %if.else7

if.then4:                                         ; preds = %if.else
  %8 = load i64, ptr %num.addr, align 8
  %conv5 = uitofp i64 %8 to float
  %9 = load i64, ptr %denom.addr, align 8
  %conv6 = uitofp i64 %9 to float
  %div = fdiv float %conv5, %conv6
  %10 = load ptr, ptr %rv.addr, align 8
  store float %div, ptr %10, align 4
  br label %return

if.else7:                                         ; preds = %if.else
  %11 = load i64, ptr %num.addr, align 8
  %conv8 = sitofp i64 %11 to float
  %12 = load i64, ptr %denom.addr, align 8
  %conv9 = sitofp i64 %12 to float
  %div10 = fdiv float %conv8, %conv9
  %13 = load ptr, ptr %rv.addr, align 8
  store float %div10, ptr %13, align 4
  br label %return

return:                                           ; preds = %if.then4, %if.else7, %if.then
  %storemerge = phi i32 [ 0, %if.then ], [ 1, %if.else7 ], [ 1, %if.then4 ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFFetchAnyArray(ptr noundef %tif, ptr noundef %dir, ptr noundef %v) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %vp = alloca ptr, align 8
  %vp11 = alloca ptr, align 8
  %vp38 = alloca ptr, align 8
  %vp55 = alloca ptr, align 8
  %vp82 = alloca ptr, align 8
  %vp99 = alloca ptr, align 8
  %vp121 = alloca ptr, align 8
  %vp142 = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 1
  %0 = load i16, ptr %tdir_type, align 2
  switch i16 %0, label %sw.default [
    i16 1, label %sw.bb
    i16 6, label %sw.bb
    i16 3, label %sw.bb28
    i16 8, label %sw.bb28
    i16 4, label %sw.bb72
    i16 9, label %sw.bb72
    i16 5, label %sw.bb116
    i16 10, label %sw.bb116
    i16 11, label %sw.bb137
    i16 12, label %sw.bb158
  ]

sw.bb:                                            ; preds = %entry, %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %2 = load ptr, ptr %dir.addr, align 8
  %3 = load ptr, ptr %v.addr, align 8
  %call = call i32 @TIFFFetchByteArray(ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %sw.bb
  %4 = load ptr, ptr %dir.addr, align 8
  %tdir_type1 = getelementptr inbounds %struct.TIFFDirEntry, ptr %4, i64 0, i32 1
  %5 = load i16, ptr %tdir_type1, align 2
  %cmp = icmp eq i16 %5, 1
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %v.addr, align 8
  store ptr %6, ptr %vp, align 8
  %7 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %7, i64 0, i32 2
  %8 = load i64, ptr %tdir_count, align 8
  %9 = trunc i64 %8 to i32
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then4
  %storemerge7.in = phi i32 [ %9, %if.then4 ], [ %14, %for.body ]
  %storemerge7 = add i32 %storemerge7.in, -1
  store i32 %storemerge7, ptr %i, align 4
  %cmp6 = icmp sgt i32 %storemerge7, -1
  br i1 %cmp6, label %for.body, label %sw.epilog

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %vp, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i16, ptr %10, i64 %idxprom
  %12 = load i16, ptr %arrayidx, align 2
  %conv8 = uitofp i16 %12 to double
  %13 = load ptr, ptr %v.addr, align 8
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds double, ptr %13, i64 %idxprom9
  store double %conv8, ptr %arrayidx10, align 8
  %14 = load i32, ptr %i, align 4
  br label %for.cond, !llvm.loop !21

if.else:                                          ; preds = %if.end
  %15 = load ptr, ptr %v.addr, align 8
  store ptr %15, ptr %vp11, align 8
  %16 = load ptr, ptr %dir.addr, align 8
  %tdir_count12 = getelementptr inbounds %struct.TIFFDirEntry, ptr %16, i64 0, i32 2
  %17 = load i64, ptr %tdir_count12, align 8
  %18 = trunc i64 %17 to i32
  br label %for.cond15

for.cond15:                                       ; preds = %for.body18, %if.else
  %storemerge6.in = phi i32 [ %18, %if.else ], [ %23, %for.body18 ]
  %storemerge6 = add i32 %storemerge6.in, -1
  store i32 %storemerge6, ptr %i, align 4
  %cmp16 = icmp sgt i32 %storemerge6, -1
  br i1 %cmp16, label %for.body18, label %sw.epilog

for.body18:                                       ; preds = %for.cond15
  %19 = load ptr, ptr %vp11, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %20 to i64
  %arrayidx20 = getelementptr inbounds i16, ptr %19, i64 %idxprom19
  %21 = load i16, ptr %arrayidx20, align 2
  %conv21 = sitofp i16 %21 to double
  %22 = load ptr, ptr %v.addr, align 8
  %idxprom22 = sext i32 %20 to i64
  %arrayidx23 = getelementptr inbounds double, ptr %22, i64 %idxprom22
  store double %conv21, ptr %arrayidx23, align 8
  %23 = load i32, ptr %i, align 4
  br label %for.cond15, !llvm.loop !22

sw.bb28:                                          ; preds = %entry, %entry
  %24 = load ptr, ptr %tif.addr, align 8
  %25 = load ptr, ptr %dir.addr, align 8
  %26 = load ptr, ptr %v.addr, align 8
  %call29 = call i32 @TIFFFetchShortArray(ptr noundef %24, ptr noundef %25, ptr noundef %26)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %if.end32

if.then31:                                        ; preds = %sw.bb28
  store i32 0, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %sw.bb28
  %27 = load ptr, ptr %dir.addr, align 8
  %tdir_type33 = getelementptr inbounds %struct.TIFFDirEntry, ptr %27, i64 0, i32 1
  %28 = load i16, ptr %tdir_type33, align 2
  %cmp35 = icmp eq i16 %28, 3
  br i1 %cmp35, label %if.then37, label %if.else54

if.then37:                                        ; preds = %if.end32
  %29 = load ptr, ptr %v.addr, align 8
  store ptr %29, ptr %vp38, align 8
  %30 = load ptr, ptr %dir.addr, align 8
  %tdir_count39 = getelementptr inbounds %struct.TIFFDirEntry, ptr %30, i64 0, i32 2
  %31 = load i64, ptr %tdir_count39, align 8
  %32 = trunc i64 %31 to i32
  br label %for.cond42

for.cond42:                                       ; preds = %for.body45, %if.then37
  %storemerge5.in = phi i32 [ %32, %if.then37 ], [ %37, %for.body45 ]
  %storemerge5 = add i32 %storemerge5.in, -1
  store i32 %storemerge5, ptr %i, align 4
  %cmp43 = icmp sgt i32 %storemerge5, -1
  br i1 %cmp43, label %for.body45, label %sw.epilog

for.body45:                                       ; preds = %for.cond42
  %33 = load ptr, ptr %vp38, align 8
  %34 = load i32, ptr %i, align 4
  %idxprom46 = sext i32 %34 to i64
  %arrayidx47 = getelementptr inbounds i16, ptr %33, i64 %idxprom46
  %35 = load i16, ptr %arrayidx47, align 2
  %conv48 = uitofp i16 %35 to double
  %36 = load ptr, ptr %v.addr, align 8
  %idxprom49 = sext i32 %34 to i64
  %arrayidx50 = getelementptr inbounds double, ptr %36, i64 %idxprom49
  store double %conv48, ptr %arrayidx50, align 8
  %37 = load i32, ptr %i, align 4
  br label %for.cond42, !llvm.loop !23

if.else54:                                        ; preds = %if.end32
  %38 = load ptr, ptr %v.addr, align 8
  store ptr %38, ptr %vp55, align 8
  %39 = load ptr, ptr %dir.addr, align 8
  %tdir_count56 = getelementptr inbounds %struct.TIFFDirEntry, ptr %39, i64 0, i32 2
  %40 = load i64, ptr %tdir_count56, align 8
  %41 = trunc i64 %40 to i32
  br label %for.cond59

for.cond59:                                       ; preds = %for.body62, %if.else54
  %storemerge4.in = phi i32 [ %41, %if.else54 ], [ %46, %for.body62 ]
  %storemerge4 = add i32 %storemerge4.in, -1
  store i32 %storemerge4, ptr %i, align 4
  %cmp60 = icmp sgt i32 %storemerge4, -1
  br i1 %cmp60, label %for.body62, label %sw.epilog

for.body62:                                       ; preds = %for.cond59
  %42 = load ptr, ptr %vp55, align 8
  %43 = load i32, ptr %i, align 4
  %idxprom63 = sext i32 %43 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %42, i64 %idxprom63
  %44 = load i16, ptr %arrayidx64, align 2
  %conv65 = sitofp i16 %44 to double
  %45 = load ptr, ptr %v.addr, align 8
  %idxprom66 = sext i32 %43 to i64
  %arrayidx67 = getelementptr inbounds double, ptr %45, i64 %idxprom66
  store double %conv65, ptr %arrayidx67, align 8
  %46 = load i32, ptr %i, align 4
  br label %for.cond59, !llvm.loop !24

sw.bb72:                                          ; preds = %entry, %entry
  %47 = load ptr, ptr %tif.addr, align 8
  %48 = load ptr, ptr %dir.addr, align 8
  %49 = load ptr, ptr %v.addr, align 8
  %call73 = call i32 @TIFFFetchLongArray(ptr noundef %47, ptr noundef %48, ptr noundef %49)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then75, label %if.end76

if.then75:                                        ; preds = %sw.bb72
  store i32 0, ptr %retval, align 4
  br label %return

if.end76:                                         ; preds = %sw.bb72
  %50 = load ptr, ptr %dir.addr, align 8
  %tdir_type77 = getelementptr inbounds %struct.TIFFDirEntry, ptr %50, i64 0, i32 1
  %51 = load i16, ptr %tdir_type77, align 2
  %cmp79 = icmp eq i16 %51, 4
  br i1 %cmp79, label %if.then81, label %if.else98

if.then81:                                        ; preds = %if.end76
  %52 = load ptr, ptr %v.addr, align 8
  store ptr %52, ptr %vp82, align 8
  %53 = load ptr, ptr %dir.addr, align 8
  %tdir_count83 = getelementptr inbounds %struct.TIFFDirEntry, ptr %53, i64 0, i32 2
  %54 = load i64, ptr %tdir_count83, align 8
  %55 = trunc i64 %54 to i32
  br label %for.cond86

for.cond86:                                       ; preds = %for.body89, %if.then81
  %storemerge3.in = phi i32 [ %55, %if.then81 ], [ %60, %for.body89 ]
  %storemerge3 = add i32 %storemerge3.in, -1
  store i32 %storemerge3, ptr %i, align 4
  %cmp87 = icmp sgt i32 %storemerge3, -1
  br i1 %cmp87, label %for.body89, label %sw.epilog

for.body89:                                       ; preds = %for.cond86
  %56 = load ptr, ptr %vp82, align 8
  %57 = load i32, ptr %i, align 4
  %idxprom90 = sext i32 %57 to i64
  %arrayidx91 = getelementptr inbounds i64, ptr %56, i64 %idxprom90
  %58 = load i64, ptr %arrayidx91, align 8
  %conv92 = uitofp i64 %58 to double
  %59 = load ptr, ptr %v.addr, align 8
  %idxprom93 = sext i32 %57 to i64
  %arrayidx94 = getelementptr inbounds double, ptr %59, i64 %idxprom93
  store double %conv92, ptr %arrayidx94, align 8
  %60 = load i32, ptr %i, align 4
  br label %for.cond86, !llvm.loop !25

if.else98:                                        ; preds = %if.end76
  %61 = load ptr, ptr %v.addr, align 8
  store ptr %61, ptr %vp99, align 8
  %62 = load ptr, ptr %dir.addr, align 8
  %tdir_count100 = getelementptr inbounds %struct.TIFFDirEntry, ptr %62, i64 0, i32 2
  %63 = load i64, ptr %tdir_count100, align 8
  %64 = trunc i64 %63 to i32
  br label %for.cond103

for.cond103:                                      ; preds = %for.body106, %if.else98
  %storemerge2.in = phi i32 [ %64, %if.else98 ], [ %69, %for.body106 ]
  %storemerge2 = add i32 %storemerge2.in, -1
  store i32 %storemerge2, ptr %i, align 4
  %cmp104 = icmp sgt i32 %storemerge2, -1
  br i1 %cmp104, label %for.body106, label %sw.epilog

for.body106:                                      ; preds = %for.cond103
  %65 = load ptr, ptr %vp99, align 8
  %66 = load i32, ptr %i, align 4
  %idxprom107 = sext i32 %66 to i64
  %arrayidx108 = getelementptr inbounds i64, ptr %65, i64 %idxprom107
  %67 = load i64, ptr %arrayidx108, align 8
  %conv109 = sitofp i64 %67 to double
  %68 = load ptr, ptr %v.addr, align 8
  %idxprom110 = sext i32 %66 to i64
  %arrayidx111 = getelementptr inbounds double, ptr %68, i64 %idxprom110
  store double %conv109, ptr %arrayidx111, align 8
  %69 = load i32, ptr %i, align 4
  br label %for.cond103, !llvm.loop !26

sw.bb116:                                         ; preds = %entry, %entry
  %70 = load ptr, ptr %tif.addr, align 8
  %71 = load ptr, ptr %dir.addr, align 8
  %72 = load ptr, ptr %v.addr, align 8
  %call117 = call i32 @TIFFFetchRationalArray(ptr noundef %70, ptr noundef %71, ptr noundef %72)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.then119, label %if.end120

if.then119:                                       ; preds = %sw.bb116
  store i32 0, ptr %retval, align 4
  br label %return

if.end120:                                        ; preds = %sw.bb116
  %73 = load ptr, ptr %v.addr, align 8
  store ptr %73, ptr %vp121, align 8
  %74 = load ptr, ptr %dir.addr, align 8
  %tdir_count122 = getelementptr inbounds %struct.TIFFDirEntry, ptr %74, i64 0, i32 2
  %75 = load i64, ptr %tdir_count122, align 8
  %76 = trunc i64 %75 to i32
  br label %for.cond125

for.cond125:                                      ; preds = %for.body128, %if.end120
  %storemerge1.in = phi i32 [ %76, %if.end120 ], [ %81, %for.body128 ]
  %storemerge1 = add i32 %storemerge1.in, -1
  store i32 %storemerge1, ptr %i, align 4
  %cmp126 = icmp sgt i32 %storemerge1, -1
  br i1 %cmp126, label %for.body128, label %sw.epilog

for.body128:                                      ; preds = %for.cond125
  %77 = load ptr, ptr %vp121, align 8
  %78 = load i32, ptr %i, align 4
  %idxprom129 = sext i32 %78 to i64
  %arrayidx130 = getelementptr inbounds float, ptr %77, i64 %idxprom129
  %79 = load float, ptr %arrayidx130, align 4
  %conv131 = fpext float %79 to double
  %80 = load ptr, ptr %v.addr, align 8
  %idxprom132 = sext i32 %78 to i64
  %arrayidx133 = getelementptr inbounds double, ptr %80, i64 %idxprom132
  store double %conv131, ptr %arrayidx133, align 8
  %81 = load i32, ptr %i, align 4
  br label %for.cond125, !llvm.loop !27

sw.bb137:                                         ; preds = %entry
  %82 = load ptr, ptr %tif.addr, align 8
  %83 = load ptr, ptr %dir.addr, align 8
  %84 = load ptr, ptr %v.addr, align 8
  %call138 = call i32 @TIFFFetchFloatArray(ptr noundef %82, ptr noundef %83, ptr noundef %84)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.then140, label %if.end141

if.then140:                                       ; preds = %sw.bb137
  store i32 0, ptr %retval, align 4
  br label %return

if.end141:                                        ; preds = %sw.bb137
  %85 = load ptr, ptr %v.addr, align 8
  store ptr %85, ptr %vp142, align 8
  %86 = load ptr, ptr %dir.addr, align 8
  %tdir_count143 = getelementptr inbounds %struct.TIFFDirEntry, ptr %86, i64 0, i32 2
  %87 = load i64, ptr %tdir_count143, align 8
  %88 = trunc i64 %87 to i32
  br label %for.cond146

for.cond146:                                      ; preds = %for.body149, %if.end141
  %storemerge.in = phi i32 [ %88, %if.end141 ], [ %93, %for.body149 ]
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i, align 4
  %cmp147 = icmp sgt i32 %storemerge, -1
  br i1 %cmp147, label %for.body149, label %sw.epilog

for.body149:                                      ; preds = %for.cond146
  %89 = load ptr, ptr %vp142, align 8
  %90 = load i32, ptr %i, align 4
  %idxprom150 = sext i32 %90 to i64
  %arrayidx151 = getelementptr inbounds float, ptr %89, i64 %idxprom150
  %91 = load float, ptr %arrayidx151, align 4
  %conv152 = fpext float %91 to double
  %92 = load ptr, ptr %v.addr, align 8
  %idxprom153 = sext i32 %90 to i64
  %arrayidx154 = getelementptr inbounds double, ptr %92, i64 %idxprom153
  store double %conv152, ptr %arrayidx154, align 8
  %93 = load i32, ptr %i, align 4
  br label %for.cond146, !llvm.loop !28

sw.bb158:                                         ; preds = %entry
  %94 = load ptr, ptr %tif.addr, align 8
  %95 = load ptr, ptr %dir.addr, align 8
  %96 = load ptr, ptr %v.addr, align 8
  %call159 = call i32 @TIFFFetchDoubleArray(ptr noundef %94, ptr noundef %95, ptr noundef %96)
  store i32 %call159, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %97 = load ptr, ptr %tif.addr, align 8
  %98 = load ptr, ptr %97, align 8
  %99 = load ptr, ptr %dir.addr, align 8
  %100 = load i16, ptr %99, align 8
  %conv160 = zext i16 %100 to i64
  %call161 = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %97, i64 noundef %conv160) #2
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call161, i64 0, i32 7
  %101 = load ptr, ptr %field_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %98, ptr noundef nonnull @.str.24, ptr noundef %101) #2
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %for.cond146, %for.cond125, %for.cond86, %for.cond103, %for.cond42, %for.cond59, %for.cond, %for.cond15
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %sw.bb158, %if.then140, %if.then119, %if.then75, %if.then31, %if.then
  %102 = load i32, ptr %retval, align 4
  ret i32 %102
}

declare i64 @TIFFVTileSize(ptr noundef, i64 noundef) #1

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
