; ModuleID = './source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_dirread.c'
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
  %expected = alloca i64, align 8
  %c = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 0, ptr %diroutoforderwarning, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_nextdiroff = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 5
  %1 = load i64, ptr %tif_nextdiroff, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_diroff = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 4
  store i64 %1, ptr %tif_diroff, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_diroff1 = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 4
  %4 = load i64, ptr %tif_diroff1, align 8
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_cleanup = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 34
  %6 = load ptr, ptr %tif_cleanup, align 8
  %7 = load ptr, ptr %tif.addr, align 8
  call void %6(ptr noundef %7)
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_curdir = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 12
  %9 = load i16, ptr %tif_curdir, align 8
  %inc = add i16 %9, 1
  store i16 %inc, ptr %tif_curdir, align 8
  store i64 0, ptr %nextdiroff, align 8
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %10, i32 0, i32 3
  %11 = load i64, ptr %tif_flags, align 8
  %and = and i64 %11, 2048
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %12, i32 0, i32 51
  %13 = load ptr, ptr %tif_seekproc, align 8
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %14, i32 0, i32 48
  %15 = load ptr, ptr %tif_clientdata, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_diroff4 = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 4
  %17 = load i64, ptr %tif_diroff4, align 8
  %call = call i64 %13(ptr noundef %15, i64 noundef %17, i32 noundef 0)
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_diroff5 = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 4
  %19 = load i64, ptr %tif_diroff5, align 8
  %cmp6 = icmp eq i64 %call, %19
  br i1 %cmp6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.then3
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %tif_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %21, ptr noundef @.str)
  store i32 0, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.then3
  %22 = load ptr, ptr %tif.addr, align 8
  %tif_readproc = getelementptr inbounds %struct.tiff, ptr %22, i32 0, i32 49
  %23 = load ptr, ptr %tif_readproc, align 8
  %24 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata9 = getelementptr inbounds %struct.tiff, ptr %24, i32 0, i32 48
  %25 = load ptr, ptr %tif_clientdata9, align 8
  %call10 = call i64 %23(ptr noundef %25, ptr noundef %dircount, i64 noundef 2)
  %cmp11 = icmp eq i64 %call10, 2
  br i1 %cmp11, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end8
  %26 = load ptr, ptr %tif.addr, align 8
  %tif_name13 = getelementptr inbounds %struct.tiff, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %tif_name13, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %27, ptr noundef @.str.1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end8
  %28 = load ptr, ptr %tif.addr, align 8
  %tif_flags15 = getelementptr inbounds %struct.tiff, ptr %28, i32 0, i32 3
  %29 = load i64, ptr %tif_flags15, align 8
  %and16 = and i64 %29, 128
  %tobool = icmp ne i64 %and16, 0
  br i1 %tobool, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @TIFFSwabShort(ptr noundef %dircount)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14
  %30 = load ptr, ptr %tif.addr, align 8
  %31 = load i16, ptr %dircount, align 2
  %conv = zext i16 %31 to i64
  %mul = mul i64 %conv, 24
  %call19 = call ptr @CheckMalloc(ptr noundef %30, i64 noundef %mul, ptr noundef @.str.2)
  store ptr %call19, ptr %dir, align 8
  %32 = load ptr, ptr %dir, align 8
  %cmp20 = icmp eq ptr %32, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  store i32 0, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end18
  %33 = load ptr, ptr %tif.addr, align 8
  %tif_readproc24 = getelementptr inbounds %struct.tiff, ptr %33, i32 0, i32 49
  %34 = load ptr, ptr %tif_readproc24, align 8
  %35 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata25 = getelementptr inbounds %struct.tiff, ptr %35, i32 0, i32 48
  %36 = load ptr, ptr %tif_clientdata25, align 8
  %37 = load ptr, ptr %dir, align 8
  %38 = load i16, ptr %dircount, align 2
  %conv26 = zext i16 %38 to i64
  %mul27 = mul i64 %conv26, 24
  %call28 = call i64 %34(ptr noundef %36, ptr noundef %37, i64 noundef %mul27)
  %39 = load i16, ptr %dircount, align 2
  %conv29 = zext i16 %39 to i64
  %mul30 = mul i64 %conv29, 24
  %cmp31 = icmp eq i64 %call28, %mul30
  br i1 %cmp31, label %if.end35, label %if.then33

if.then33:                                        ; preds = %if.end23
  %40 = load ptr, ptr %tif.addr, align 8
  %tif_name34 = getelementptr inbounds %struct.tiff, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %tif_name34, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %41, ptr noundef @.str.3)
  br label %bad

if.end35:                                         ; preds = %if.end23
  %42 = load ptr, ptr %tif.addr, align 8
  %tif_readproc36 = getelementptr inbounds %struct.tiff, ptr %42, i32 0, i32 49
  %43 = load ptr, ptr %tif_readproc36, align 8
  %44 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata37 = getelementptr inbounds %struct.tiff, ptr %44, i32 0, i32 48
  %45 = load ptr, ptr %tif_clientdata37, align 8
  %call38 = call i64 %43(ptr noundef %45, ptr noundef %nextdiroff, i64 noundef 8)
  %cmp39 = icmp eq i64 %call38, 8
  %conv40 = zext i1 %cmp39 to i32
  br label %if.end86

if.else:                                          ; preds = %if.end
  %46 = load ptr, ptr %tif.addr, align 8
  %tif_diroff41 = getelementptr inbounds %struct.tiff, ptr %46, i32 0, i32 4
  %47 = load i64, ptr %tif_diroff41, align 8
  store i64 %47, ptr %off, align 8
  %48 = load i64, ptr %off, align 8
  %add = add i64 %48, 2
  %49 = load ptr, ptr %tif.addr, align 8
  %tif_size = getelementptr inbounds %struct.tiff, ptr %49, i32 0, i32 45
  %50 = load i64, ptr %tif_size, align 8
  %cmp42 = icmp sgt i64 %add, %50
  br i1 %cmp42, label %if.then44, label %if.else46

if.then44:                                        ; preds = %if.else
  %51 = load ptr, ptr %tif.addr, align 8
  %tif_name45 = getelementptr inbounds %struct.tiff, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %tif_name45, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %52, ptr noundef @.str.1)
  store i32 0, ptr %retval, align 4
  br label %return

if.else46:                                        ; preds = %if.else
  %53 = load ptr, ptr %tif.addr, align 8
  %tif_base = getelementptr inbounds %struct.tiff, ptr %53, i32 0, i32 44
  %54 = load ptr, ptr %tif_base, align 8
  %55 = load i64, ptr %off, align 8
  %add.ptr = getelementptr inbounds i8, ptr %54, i64 %55
  call void @_TIFFmemcpy(ptr noundef %dircount, ptr noundef %add.ptr, i64 noundef 2)
  br label %if.end47

if.end47:                                         ; preds = %if.else46
  %56 = load i64, ptr %off, align 8
  %add48 = add i64 %56, 2
  store i64 %add48, ptr %off, align 8
  %57 = load ptr, ptr %tif.addr, align 8
  %tif_flags49 = getelementptr inbounds %struct.tiff, ptr %57, i32 0, i32 3
  %58 = load i64, ptr %tif_flags49, align 8
  %and50 = and i64 %58, 128
  %tobool51 = icmp ne i64 %and50, 0
  br i1 %tobool51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end47
  call void @TIFFSwabShort(ptr noundef %dircount)
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end47
  %59 = load ptr, ptr %tif.addr, align 8
  %60 = load i16, ptr %dircount, align 2
  %conv54 = zext i16 %60 to i64
  %mul55 = mul i64 %conv54, 24
  %call56 = call ptr @CheckMalloc(ptr noundef %59, i64 noundef %mul55, ptr noundef @.str.2)
  store ptr %call56, ptr %dir, align 8
  %61 = load ptr, ptr %dir, align 8
  %cmp57 = icmp eq ptr %61, null
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end53
  store i32 0, ptr %retval, align 4
  br label %return

if.end60:                                         ; preds = %if.end53
  %62 = load i64, ptr %off, align 8
  %63 = load i16, ptr %dircount, align 2
  %conv61 = zext i16 %63 to i64
  %mul62 = mul i64 %conv61, 24
  %add63 = add i64 %62, %mul62
  %64 = load ptr, ptr %tif.addr, align 8
  %tif_size64 = getelementptr inbounds %struct.tiff, ptr %64, i32 0, i32 45
  %65 = load i64, ptr %tif_size64, align 8
  %cmp65 = icmp sgt i64 %add63, %65
  br i1 %cmp65, label %if.then67, label %if.else69

if.then67:                                        ; preds = %if.end60
  %66 = load ptr, ptr %tif.addr, align 8
  %tif_name68 = getelementptr inbounds %struct.tiff, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %tif_name68, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %67, ptr noundef @.str.3)
  br label %bad

if.else69:                                        ; preds = %if.end60
  %68 = load ptr, ptr %dir, align 8
  %69 = load ptr, ptr %tif.addr, align 8
  %tif_base70 = getelementptr inbounds %struct.tiff, ptr %69, i32 0, i32 44
  %70 = load ptr, ptr %tif_base70, align 8
  %71 = load i64, ptr %off, align 8
  %add.ptr71 = getelementptr inbounds i8, ptr %70, i64 %71
  %72 = load i16, ptr %dircount, align 2
  %conv72 = zext i16 %72 to i64
  %mul73 = mul i64 %conv72, 24
  call void @_TIFFmemcpy(ptr noundef %68, ptr noundef %add.ptr71, i64 noundef %mul73)
  br label %if.end74

if.end74:                                         ; preds = %if.else69
  %73 = load i16, ptr %dircount, align 2
  %conv75 = zext i16 %73 to i64
  %mul76 = mul i64 %conv75, 24
  %74 = load i64, ptr %off, align 8
  %add77 = add i64 %74, %mul76
  store i64 %add77, ptr %off, align 8
  %75 = load i64, ptr %off, align 8
  %add78 = add i64 %75, 8
  %76 = load ptr, ptr %tif.addr, align 8
  %tif_size79 = getelementptr inbounds %struct.tiff, ptr %76, i32 0, i32 45
  %77 = load i64, ptr %tif_size79, align 8
  %cmp80 = icmp sle i64 %add78, %77
  br i1 %cmp80, label %if.then82, label %if.end85

if.then82:                                        ; preds = %if.end74
  %78 = load ptr, ptr %tif.addr, align 8
  %tif_base83 = getelementptr inbounds %struct.tiff, ptr %78, i32 0, i32 44
  %79 = load ptr, ptr %tif_base83, align 8
  %80 = load i64, ptr %off, align 8
  %add.ptr84 = getelementptr inbounds i8, ptr %79, i64 %80
  call void @_TIFFmemcpy(ptr noundef %nextdiroff, ptr noundef %add.ptr84, i64 noundef 8)
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.end74
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.end35
  %81 = load ptr, ptr %tif.addr, align 8
  %tif_flags87 = getelementptr inbounds %struct.tiff, ptr %81, i32 0, i32 3
  %82 = load i64, ptr %tif_flags87, align 8
  %and88 = and i64 %82, 128
  %tobool89 = icmp ne i64 %and88, 0
  br i1 %tobool89, label %if.then90, label %if.end91

if.then90:                                        ; preds = %if.end86
  call void @TIFFSwabLong(ptr noundef %nextdiroff)
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %if.end86
  %83 = load i64, ptr %nextdiroff, align 8
  %84 = load ptr, ptr %tif.addr, align 8
  %tif_nextdiroff92 = getelementptr inbounds %struct.tiff, ptr %84, i32 0, i32 5
  store i64 %83, ptr %tif_nextdiroff92, align 8
  %85 = load ptr, ptr %tif.addr, align 8
  %tif_flags93 = getelementptr inbounds %struct.tiff, ptr %85, i32 0, i32 3
  %86 = load i64, ptr %tif_flags93, align 8
  %and94 = and i64 %86, -65
  store i64 %and94, ptr %tif_flags93, align 8
  %87 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %87, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %88 = load ptr, ptr %tif.addr, align 8
  call void @TIFFFreeDirectory(ptr noundef %88)
  %89 = load ptr, ptr %tif.addr, align 8
  %call95 = call i32 @TIFFDefaultDirectory(ptr noundef %89)
  %90 = load ptr, ptr %tif.addr, align 8
  %call96 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %90, i64 noundef 284, i32 noundef 1)
  %91 = load ptr, ptr %dir, align 8
  store ptr %91, ptr %dp, align 8
  %92 = load i16, ptr %dircount, align 2
  %conv97 = zext i16 %92 to i32
  store i32 %conv97, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end91
  %93 = load i32, ptr %n, align 4
  %cmp98 = icmp sgt i32 %93, 0
  br i1 %cmp98, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %94 = load ptr, ptr %tif.addr, align 8
  %tif_flags100 = getelementptr inbounds %struct.tiff, ptr %94, i32 0, i32 3
  %95 = load i64, ptr %tif_flags100, align 8
  %and101 = and i64 %95, 128
  %tobool102 = icmp ne i64 %and101, 0
  br i1 %tobool102, label %if.then103, label %if.end104

if.then103:                                       ; preds = %for.body
  %96 = load ptr, ptr %dp, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %96, i32 0, i32 0
  call void @TIFFSwabArrayOfShort(ptr noundef %tdir_tag, i64 noundef 2)
  %97 = load ptr, ptr %dp, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %97, i32 0, i32 2
  call void @TIFFSwabArrayOfLong(ptr noundef %tdir_count, i64 noundef 2)
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %for.body
  %98 = load ptr, ptr %dp, align 8
  %tdir_tag105 = getelementptr inbounds %struct.TIFFDirEntry, ptr %98, i32 0, i32 0
  %99 = load i16, ptr %tdir_tag105, align 8
  %conv106 = zext i16 %99 to i32
  %cmp107 = icmp eq i32 %conv106, 277
  br i1 %cmp107, label %if.then109, label %if.end115

if.then109:                                       ; preds = %if.end104
  %100 = load ptr, ptr %tif.addr, align 8
  %101 = load ptr, ptr %dp, align 8
  %call110 = call i32 @TIFFFetchNormalTag(ptr noundef %100, ptr noundef %101)
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %if.end113, label %if.then112

if.then112:                                       ; preds = %if.then109
  br label %bad

if.end113:                                        ; preds = %if.then109
  %102 = load ptr, ptr %dp, align 8
  %tdir_tag114 = getelementptr inbounds %struct.TIFFDirEntry, ptr %102, i32 0, i32 0
  store i16 0, ptr %tdir_tag114, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.end113, %if.end104
  br label %for.inc

for.inc:                                          ; preds = %if.end115
  %103 = load i32, ptr %n, align 4
  %dec = add nsw i32 %103, -1
  store i32 %dec, ptr %n, align 4
  %104 = load ptr, ptr %dp, align 8
  %incdec.ptr = getelementptr inbounds %struct.TIFFDirEntry, ptr %104, i32 1
  store ptr %incdec.ptr, ptr %dp, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %fix, align 4
  %105 = load ptr, ptr %dir, align 8
  store ptr %105, ptr %dp, align 8
  %106 = load i16, ptr %dircount, align 2
  %conv116 = zext i16 %106 to i32
  store i32 %conv116, ptr %n, align 4
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc295, %for.end
  %107 = load i32, ptr %n, align 4
  %cmp118 = icmp sgt i32 %107, 0
  br i1 %cmp118, label %for.body120, label %for.end298

for.body120:                                      ; preds = %for.cond117
  %108 = load ptr, ptr %dp, align 8
  %tdir_tag121 = getelementptr inbounds %struct.TIFFDirEntry, ptr %108, i32 0, i32 0
  %109 = load i16, ptr %tdir_tag121, align 8
  %conv122 = zext i16 %109 to i32
  %call123 = call i32 @TIFFReassignTagToIgnore(i32 noundef 1, i32 noundef %conv122)
  %tobool124 = icmp ne i32 %call123, 0
  br i1 %tobool124, label %if.then125, label %if.end127

if.then125:                                       ; preds = %for.body120
  %110 = load ptr, ptr %dp, align 8
  %tdir_tag126 = getelementptr inbounds %struct.TIFFDirEntry, ptr %110, i32 0, i32 0
  store i16 0, ptr %tdir_tag126, align 8
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %for.body120
  %111 = load ptr, ptr %dp, align 8
  %tdir_tag128 = getelementptr inbounds %struct.TIFFDirEntry, ptr %111, i32 0, i32 0
  %112 = load i16, ptr %tdir_tag128, align 8
  %conv129 = zext i16 %112 to i32
  %cmp130 = icmp eq i32 %conv129, 0
  br i1 %cmp130, label %if.then132, label %if.end133

if.then132:                                       ; preds = %if.end127
  br label %for.inc295

if.end133:                                        ; preds = %if.end127
  %113 = load ptr, ptr %dp, align 8
  %tdir_tag134 = getelementptr inbounds %struct.TIFFDirEntry, ptr %113, i32 0, i32 0
  %114 = load i16, ptr %tdir_tag134, align 8
  %conv135 = zext i16 %114 to i64
  %115 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo = getelementptr inbounds %struct.tiff, ptr %115, i32 0, i32 55
  %116 = load ptr, ptr %tif_fieldinfo, align 8
  %117 = load i32, ptr %fix, align 4
  %idxprom = sext i32 %117 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %116, i64 %idxprom
  %118 = load ptr, ptr %arrayidx, align 8
  %field_tag = getelementptr inbounds %struct.TIFFFieldInfo, ptr %118, i32 0, i32 0
  %119 = load i64, ptr %field_tag, align 8
  %cmp136 = icmp ult i64 %conv135, %119
  br i1 %cmp136, label %if.then138, label %if.end143

if.then138:                                       ; preds = %if.end133
  %120 = load i32, ptr %diroutoforderwarning, align 4
  %tobool139 = icmp ne i32 %120, 0
  br i1 %tobool139, label %if.end142, label %if.then140

if.then140:                                       ; preds = %if.then138
  %121 = load ptr, ptr %tif.addr, align 8
  %tif_name141 = getelementptr inbounds %struct.tiff, ptr %121, i32 0, i32 0
  %122 = load ptr, ptr %tif_name141, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %122, ptr noundef @.str.4)
  store i32 1, ptr %diroutoforderwarning, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.then140, %if.then138
  store i32 0, ptr %fix, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.end133
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end143
  %123 = load i32, ptr %fix, align 4
  %124 = load ptr, ptr %tif.addr, align 8
  %tif_nfields = getelementptr inbounds %struct.tiff, ptr %124, i32 0, i32 56
  %125 = load i32, ptr %tif_nfields, align 8
  %cmp144 = icmp slt i32 %123, %125
  br i1 %cmp144, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %126 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo146 = getelementptr inbounds %struct.tiff, ptr %126, i32 0, i32 55
  %127 = load ptr, ptr %tif_fieldinfo146, align 8
  %128 = load i32, ptr %fix, align 4
  %idxprom147 = sext i32 %128 to i64
  %arrayidx148 = getelementptr inbounds ptr, ptr %127, i64 %idxprom147
  %129 = load ptr, ptr %arrayidx148, align 8
  %field_tag149 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %129, i32 0, i32 0
  %130 = load i64, ptr %field_tag149, align 8
  %131 = load ptr, ptr %dp, align 8
  %tdir_tag150 = getelementptr inbounds %struct.TIFFDirEntry, ptr %131, i32 0, i32 0
  %132 = load i16, ptr %tdir_tag150, align 8
  %conv151 = zext i16 %132 to i64
  %cmp152 = icmp ult i64 %130, %conv151
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %133 = phi i1 [ false, %while.cond ], [ %cmp152, %land.rhs ]
  br i1 %133, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %134 = load i32, ptr %fix, align 4
  %inc154 = add nsw i32 %134, 1
  store i32 %inc154, ptr %fix, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end
  %135 = load i32, ptr %fix, align 4
  %136 = load ptr, ptr %tif.addr, align 8
  %tif_nfields155 = getelementptr inbounds %struct.tiff, ptr %136, i32 0, i32 56
  %137 = load i32, ptr %tif_nfields155, align 8
  %cmp156 = icmp eq i32 %135, %137
  br i1 %cmp156, label %if.then166, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %138 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo158 = getelementptr inbounds %struct.tiff, ptr %138, i32 0, i32 55
  %139 = load ptr, ptr %tif_fieldinfo158, align 8
  %140 = load i32, ptr %fix, align 4
  %idxprom159 = sext i32 %140 to i64
  %arrayidx160 = getelementptr inbounds ptr, ptr %139, i64 %idxprom159
  %141 = load ptr, ptr %arrayidx160, align 8
  %field_tag161 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %141, i32 0, i32 0
  %142 = load i64, ptr %field_tag161, align 8
  %143 = load ptr, ptr %dp, align 8
  %tdir_tag162 = getelementptr inbounds %struct.TIFFDirEntry, ptr %143, i32 0, i32 0
  %144 = load i16, ptr %tdir_tag162, align 8
  %conv163 = zext i16 %144 to i64
  %cmp164 = icmp ne i64 %142, %conv163
  br i1 %cmp164, label %if.then166, label %if.end173

if.then166:                                       ; preds = %lor.lhs.false, %while.end
  %145 = load ptr, ptr %tif.addr, align 8
  %tif_name167 = getelementptr inbounds %struct.tiff, ptr %145, i32 0, i32 0
  %146 = load ptr, ptr %tif_name167, align 8
  %147 = load ptr, ptr %dp, align 8
  %tdir_tag168 = getelementptr inbounds %struct.TIFFDirEntry, ptr %147, i32 0, i32 0
  %148 = load i16, ptr %tdir_tag168, align 8
  %conv169 = zext i16 %148 to i32
  %149 = load ptr, ptr %dp, align 8
  %tdir_tag170 = getelementptr inbounds %struct.TIFFDirEntry, ptr %149, i32 0, i32 0
  %150 = load i16, ptr %tdir_tag170, align 8
  %conv171 = zext i16 %150 to i32
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %146, ptr noundef @.str.5, i32 noundef %conv169, i32 noundef %conv171)
  %151 = load ptr, ptr %dp, align 8
  %tdir_tag172 = getelementptr inbounds %struct.TIFFDirEntry, ptr %151, i32 0, i32 0
  store i16 0, ptr %tdir_tag172, align 8
  store i32 0, ptr %fix, align 4
  br label %for.inc295

if.end173:                                        ; preds = %lor.lhs.false
  %152 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo174 = getelementptr inbounds %struct.tiff, ptr %152, i32 0, i32 55
  %153 = load ptr, ptr %tif_fieldinfo174, align 8
  %154 = load i32, ptr %fix, align 4
  %idxprom175 = sext i32 %154 to i64
  %arrayidx176 = getelementptr inbounds ptr, ptr %153, i64 %idxprom175
  %155 = load ptr, ptr %arrayidx176, align 8
  %field_bit = getelementptr inbounds %struct.TIFFFieldInfo, ptr %155, i32 0, i32 4
  %156 = load i16, ptr %field_bit, align 8
  %conv177 = zext i16 %156 to i32
  %cmp178 = icmp eq i32 %conv177, 0
  br i1 %cmp178, label %if.then180, label %if.end182

if.then180:                                       ; preds = %if.end173
  br label %ignore

ignore:                                           ; preds = %if.then229, %if.then209, %if.then180
  %157 = load ptr, ptr %dp, align 8
  %tdir_tag181 = getelementptr inbounds %struct.TIFFDirEntry, ptr %157, i32 0, i32 0
  store i16 0, ptr %tdir_tag181, align 8
  br label %for.inc295

if.end182:                                        ; preds = %if.end173
  %158 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo183 = getelementptr inbounds %struct.tiff, ptr %158, i32 0, i32 55
  %159 = load ptr, ptr %tif_fieldinfo183, align 8
  %160 = load i32, ptr %fix, align 4
  %idxprom184 = sext i32 %160 to i64
  %arrayidx185 = getelementptr inbounds ptr, ptr %159, i64 %idxprom184
  %161 = load ptr, ptr %arrayidx185, align 8
  store ptr %161, ptr %fip, align 8
  br label %while.cond186

while.cond186:                                    ; preds = %if.end214, %if.end182
  %162 = load ptr, ptr %dp, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %162, i32 0, i32 1
  %163 = load i16, ptr %tdir_type, align 2
  %conv187 = zext i16 %163 to i32
  %164 = load ptr, ptr %fip, align 8
  %field_type = getelementptr inbounds %struct.TIFFFieldInfo, ptr %164, i32 0, i32 3
  %165 = load i32, ptr %field_type, align 4
  %conv188 = trunc i32 %165 to i16
  %conv189 = zext i16 %conv188 to i32
  %cmp190 = icmp ne i32 %conv187, %conv189
  br i1 %cmp190, label %while.body192, label %while.end215

while.body192:                                    ; preds = %while.cond186
  %166 = load ptr, ptr %fip, align 8
  %field_type193 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %166, i32 0, i32 3
  %167 = load i32, ptr %field_type193, align 4
  %cmp194 = icmp eq i32 %167, 0
  br i1 %cmp194, label %if.then196, label %if.end197

if.then196:                                       ; preds = %while.body192
  br label %while.end215

if.end197:                                        ; preds = %while.body192
  %168 = load ptr, ptr %fip, align 8
  %incdec.ptr198 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %168, i32 1
  store ptr %incdec.ptr198, ptr %fip, align 8
  %169 = load i32, ptr %fix, align 4
  %inc199 = add nsw i32 %169, 1
  store i32 %inc199, ptr %fix, align 4
  %170 = load i32, ptr %fix, align 4
  %171 = load ptr, ptr %tif.addr, align 8
  %tif_nfields200 = getelementptr inbounds %struct.tiff, ptr %171, i32 0, i32 56
  %172 = load i32, ptr %tif_nfields200, align 8
  %cmp201 = icmp eq i32 %170, %172
  br i1 %cmp201, label %if.then209, label %lor.lhs.false203

lor.lhs.false203:                                 ; preds = %if.end197
  %173 = load ptr, ptr %fip, align 8
  %field_tag204 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %173, i32 0, i32 0
  %174 = load i64, ptr %field_tag204, align 8
  %175 = load ptr, ptr %dp, align 8
  %tdir_tag205 = getelementptr inbounds %struct.TIFFDirEntry, ptr %175, i32 0, i32 0
  %176 = load i16, ptr %tdir_tag205, align 8
  %conv206 = zext i16 %176 to i64
  %cmp207 = icmp ne i64 %174, %conv206
  br i1 %cmp207, label %if.then209, label %if.end214

if.then209:                                       ; preds = %lor.lhs.false203, %if.end197
  %177 = load ptr, ptr %tif.addr, align 8
  %tif_name210 = getelementptr inbounds %struct.tiff, ptr %177, i32 0, i32 0
  %178 = load ptr, ptr %tif_name210, align 8
  %179 = load ptr, ptr %dp, align 8
  %tdir_type211 = getelementptr inbounds %struct.TIFFDirEntry, ptr %179, i32 0, i32 1
  %180 = load i16, ptr %tdir_type211, align 2
  %conv212 = zext i16 %180 to i32
  %181 = load ptr, ptr %fip, align 8
  %arrayidx213 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %181, i64 -1
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %arrayidx213, i32 0, i32 7
  %182 = load ptr, ptr %field_name, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %178, ptr noundef @.str.6, i32 noundef %conv212, ptr noundef %182)
  br label %ignore

if.end214:                                        ; preds = %lor.lhs.false203
  br label %while.cond186, !llvm.loop !9

while.end215:                                     ; preds = %if.then196, %while.cond186
  %183 = load ptr, ptr %fip, align 8
  %field_readcount = getelementptr inbounds %struct.TIFFFieldInfo, ptr %183, i32 0, i32 1
  %184 = load i16, ptr %field_readcount, align 8
  %conv216 = sext i16 %184 to i32
  %cmp217 = icmp ne i32 %conv216, -1
  br i1 %cmp217, label %if.then219, label %if.end231

if.then219:                                       ; preds = %while.end215
  %185 = load ptr, ptr %fip, align 8
  %field_readcount220 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %185, i32 0, i32 1
  %186 = load i16, ptr %field_readcount220, align 8
  %conv221 = sext i16 %186 to i32
  %cmp222 = icmp eq i32 %conv221, -2
  br i1 %cmp222, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then219
  %187 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %187, i32 0, i32 15
  %188 = load i16, ptr %td_samplesperpixel, align 2
  %conv224 = zext i16 %188 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.then219
  %189 = load ptr, ptr %fip, align 8
  %field_readcount225 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %189, i32 0, i32 1
  %190 = load i16, ptr %field_readcount225, align 8
  %conv226 = sext i16 %190 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv224, %cond.true ], [ %conv226, %cond.false ]
  store i64 %cond, ptr %expected, align 8
  %191 = load ptr, ptr %tif.addr, align 8
  %192 = load ptr, ptr %dp, align 8
  %193 = load i64, ptr %expected, align 8
  %call227 = call i32 @CheckDirCount(ptr noundef %191, ptr noundef %192, i64 noundef %193)
  %tobool228 = icmp ne i32 %call227, 0
  br i1 %tobool228, label %if.end230, label %if.then229

if.then229:                                       ; preds = %cond.end
  br label %ignore

if.end230:                                        ; preds = %cond.end
  br label %if.end231

if.end231:                                        ; preds = %if.end230, %while.end215
  %194 = load ptr, ptr %dp, align 8
  %tdir_tag232 = getelementptr inbounds %struct.TIFFDirEntry, ptr %194, i32 0, i32 0
  %195 = load i16, ptr %tdir_tag232, align 8
  %conv233 = zext i16 %195 to i32
  switch i32 %conv233, label %sw.epilog [
    i32 259, label %sw.bb
    i32 273, label %sw.bb276
    i32 279, label %sw.bb276
    i32 324, label %sw.bb276
    i32 325, label %sw.bb276
    i32 256, label %sw.bb286
    i32 257, label %sw.bb286
    i32 32997, label %sw.bb286
    i32 323, label %sw.bb286
    i32 322, label %sw.bb286
    i32 32998, label %sw.bb286
    i32 284, label %sw.bb286
    i32 278, label %sw.bb286
    i32 338, label %sw.bb292
  ]

sw.bb:                                            ; preds = %if.end231
  %196 = load ptr, ptr %dp, align 8
  %tdir_count234 = getelementptr inbounds %struct.TIFFDirEntry, ptr %196, i32 0, i32 2
  %197 = load i64, ptr %tdir_count234, align 8
  %cmp235 = icmp eq i64 %197, 1
  br i1 %cmp235, label %if.then237, label %if.end265

if.then237:                                       ; preds = %sw.bb
  %198 = load ptr, ptr %tif.addr, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %198, i32 0, i32 7
  %tiff_magic = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header, i32 0, i32 0
  %199 = load i16, ptr %tiff_magic, align 8
  %conv238 = zext i16 %199 to i32
  %cmp239 = icmp eq i32 %conv238, 19789
  br i1 %cmp239, label %cond.true241, label %cond.false249

cond.true241:                                     ; preds = %if.then237
  %200 = load ptr, ptr %dp, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %200, i32 0, i32 3
  %201 = load i64, ptr %tdir_offset, align 8
  %202 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift = getelementptr inbounds %struct.tiff, ptr %202, i32 0, i32 9
  %203 = load ptr, ptr %tif_typeshift, align 8
  %204 = load ptr, ptr %dp, align 8
  %tdir_type242 = getelementptr inbounds %struct.TIFFDirEntry, ptr %204, i32 0, i32 1
  %205 = load i16, ptr %tdir_type242, align 2
  %idxprom243 = zext i16 %205 to i64
  %arrayidx244 = getelementptr inbounds i32, ptr %203, i64 %idxprom243
  %206 = load i32, ptr %arrayidx244, align 4
  %sh_prom = zext i32 %206 to i64
  %shr = lshr i64 %201, %sh_prom
  %207 = load ptr, ptr %tif.addr, align 8
  %tif_typemask = getelementptr inbounds %struct.tiff, ptr %207, i32 0, i32 10
  %208 = load ptr, ptr %tif_typemask, align 8
  %209 = load ptr, ptr %dp, align 8
  %tdir_type245 = getelementptr inbounds %struct.TIFFDirEntry, ptr %209, i32 0, i32 1
  %210 = load i16, ptr %tdir_type245, align 2
  %idxprom246 = zext i16 %210 to i64
  %arrayidx247 = getelementptr inbounds i64, ptr %208, i64 %idxprom246
  %211 = load i64, ptr %arrayidx247, align 8
  %and248 = and i64 %shr, %211
  br label %cond.end256

cond.false249:                                    ; preds = %if.then237
  %212 = load ptr, ptr %dp, align 8
  %tdir_offset250 = getelementptr inbounds %struct.TIFFDirEntry, ptr %212, i32 0, i32 3
  %213 = load i64, ptr %tdir_offset250, align 8
  %214 = load ptr, ptr %tif.addr, align 8
  %tif_typemask251 = getelementptr inbounds %struct.tiff, ptr %214, i32 0, i32 10
  %215 = load ptr, ptr %tif_typemask251, align 8
  %216 = load ptr, ptr %dp, align 8
  %tdir_type252 = getelementptr inbounds %struct.TIFFDirEntry, ptr %216, i32 0, i32 1
  %217 = load i16, ptr %tdir_type252, align 2
  %idxprom253 = zext i16 %217 to i64
  %arrayidx254 = getelementptr inbounds i64, ptr %215, i64 %idxprom253
  %218 = load i64, ptr %arrayidx254, align 8
  %and255 = and i64 %213, %218
  br label %cond.end256

cond.end256:                                      ; preds = %cond.false249, %cond.true241
  %cond257 = phi i64 [ %and248, %cond.true241 ], [ %and255, %cond.false249 ]
  store i64 %cond257, ptr %v, align 8
  %219 = load ptr, ptr %tif.addr, align 8
  %220 = load ptr, ptr %dp, align 8
  %tdir_tag258 = getelementptr inbounds %struct.TIFFDirEntry, ptr %220, i32 0, i32 0
  %221 = load i16, ptr %tdir_tag258, align 8
  %conv259 = zext i16 %221 to i64
  %222 = load i64, ptr %v, align 8
  %conv260 = trunc i64 %222 to i32
  %call261 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %219, i64 noundef %conv259, i32 noundef %conv260)
  %tobool262 = icmp ne i32 %call261, 0
  br i1 %tobool262, label %if.end264, label %if.then263

if.then263:                                       ; preds = %cond.end256
  br label %bad

if.end264:                                        ; preds = %cond.end256
  br label %sw.epilog

if.end265:                                        ; preds = %sw.bb
  %223 = load ptr, ptr %tif.addr, align 8
  %224 = load ptr, ptr %dp, align 8
  %call266 = call i32 @TIFFFetchPerSampleShorts(ptr noundef %223, ptr noundef %224, ptr noundef %iv)
  %tobool267 = icmp ne i32 %call266, 0
  br i1 %tobool267, label %lor.lhs.false268, label %if.then273

lor.lhs.false268:                                 ; preds = %if.end265
  %225 = load ptr, ptr %tif.addr, align 8
  %226 = load ptr, ptr %dp, align 8
  %tdir_tag269 = getelementptr inbounds %struct.TIFFDirEntry, ptr %226, i32 0, i32 0
  %227 = load i16, ptr %tdir_tag269, align 8
  %conv270 = zext i16 %227 to i64
  %228 = load i32, ptr %iv, align 4
  %call271 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %225, i64 noundef %conv270, i32 noundef %228)
  %tobool272 = icmp ne i32 %call271, 0
  br i1 %tobool272, label %if.end274, label %if.then273

if.then273:                                       ; preds = %lor.lhs.false268, %if.end265
  br label %bad

if.end274:                                        ; preds = %lor.lhs.false268
  %229 = load ptr, ptr %dp, align 8
  %tdir_tag275 = getelementptr inbounds %struct.TIFFDirEntry, ptr %229, i32 0, i32 0
  store i16 0, ptr %tdir_tag275, align 8
  br label %sw.epilog

sw.bb276:                                         ; preds = %if.end231, %if.end231, %if.end231, %if.end231
  %230 = load ptr, ptr %fip, align 8
  %field_bit277 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %230, i32 0, i32 4
  %231 = load i16, ptr %field_bit277, align 8
  %conv278 = zext i16 %231 to i32
  %and279 = and i32 %conv278, 31
  %sh_prom280 = zext i32 %and279 to i64
  %shl = shl i64 1, %sh_prom280
  %232 = load ptr, ptr %tif.addr, align 8
  %tif_dir281 = getelementptr inbounds %struct.tiff, ptr %232, i32 0, i32 6
  %td_fieldsset = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir281, i32 0, i32 0
  %233 = load ptr, ptr %fip, align 8
  %field_bit282 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %233, i32 0, i32 4
  %234 = load i16, ptr %field_bit282, align 8
  %conv283 = zext i16 %234 to i32
  %div = sdiv i32 %conv283, 32
  %idxprom284 = sext i32 %div to i64
  %arrayidx285 = getelementptr inbounds [3 x i64], ptr %td_fieldsset, i64 0, i64 %idxprom284
  %235 = load i64, ptr %arrayidx285, align 8
  %or = or i64 %235, %shl
  store i64 %or, ptr %arrayidx285, align 8
  br label %sw.epilog

sw.bb286:                                         ; preds = %if.end231, %if.end231, %if.end231, %if.end231, %if.end231, %if.end231, %if.end231, %if.end231
  %236 = load ptr, ptr %tif.addr, align 8
  %237 = load ptr, ptr %dp, align 8
  %call287 = call i32 @TIFFFetchNormalTag(ptr noundef %236, ptr noundef %237)
  %tobool288 = icmp ne i32 %call287, 0
  br i1 %tobool288, label %if.end290, label %if.then289

if.then289:                                       ; preds = %sw.bb286
  br label %bad

if.end290:                                        ; preds = %sw.bb286
  %238 = load ptr, ptr %dp, align 8
  %tdir_tag291 = getelementptr inbounds %struct.TIFFDirEntry, ptr %238, i32 0, i32 0
  store i16 0, ptr %tdir_tag291, align 8
  br label %sw.epilog

sw.bb292:                                         ; preds = %if.end231
  %239 = load ptr, ptr %tif.addr, align 8
  %240 = load ptr, ptr %dp, align 8
  %call293 = call i32 @TIFFFetchExtraSamples(ptr noundef %239, ptr noundef %240)
  %241 = load ptr, ptr %dp, align 8
  %tdir_tag294 = getelementptr inbounds %struct.TIFFDirEntry, ptr %241, i32 0, i32 0
  store i16 0, ptr %tdir_tag294, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end231, %sw.bb292, %if.end290, %sw.bb276, %if.end274, %if.end264
  br label %for.inc295

for.inc295:                                       ; preds = %sw.epilog, %ignore, %if.then166, %if.then132
  %242 = load i32, ptr %n, align 4
  %dec296 = add nsw i32 %242, -1
  store i32 %dec296, ptr %n, align 4
  %243 = load ptr, ptr %dp, align 8
  %incdec.ptr297 = getelementptr inbounds %struct.TIFFDirEntry, ptr %243, i32 1
  store ptr %incdec.ptr297, ptr %dp, align 8
  br label %for.cond117, !llvm.loop !10

for.end298:                                       ; preds = %for.cond117
  %244 = load ptr, ptr %tif.addr, align 8
  %tif_dir299 = getelementptr inbounds %struct.tiff, ptr %244, i32 0, i32 6
  %td_fieldsset300 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir299, i32 0, i32 0
  %arrayidx301 = getelementptr inbounds [3 x i64], ptr %td_fieldsset300, i64 0, i64 0
  %245 = load i64, ptr %arrayidx301, align 8
  %and302 = and i64 %245, 2
  %tobool303 = icmp ne i64 %and302, 0
  br i1 %tobool303, label %if.end305, label %if.then304

if.then304:                                       ; preds = %for.end298
  %246 = load ptr, ptr %tif.addr, align 8
  call void @MissingRequired(ptr noundef %246, ptr noundef @.str.7)
  br label %bad

if.end305:                                        ; preds = %for.end298
  %247 = load ptr, ptr %tif.addr, align 8
  %tif_dir306 = getelementptr inbounds %struct.tiff, ptr %247, i32 0, i32 6
  %td_fieldsset307 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir306, i32 0, i32 0
  %arrayidx308 = getelementptr inbounds [3 x i64], ptr %td_fieldsset307, i64 0, i64 0
  %248 = load i64, ptr %arrayidx308, align 8
  %and309 = and i64 %248, 1048576
  %tobool310 = icmp ne i64 %and309, 0
  br i1 %tobool310, label %if.end312, label %if.then311

if.then311:                                       ; preds = %if.end305
  %249 = load ptr, ptr %tif.addr, align 8
  call void @MissingRequired(ptr noundef %249, ptr noundef @.str.8)
  br label %bad

if.end312:                                        ; preds = %if.end305
  %250 = load ptr, ptr %tif.addr, align 8
  %tif_dir313 = getelementptr inbounds %struct.tiff, ptr %250, i32 0, i32 6
  %td_fieldsset314 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir313, i32 0, i32 0
  %arrayidx315 = getelementptr inbounds [3 x i64], ptr %td_fieldsset314, i64 0, i64 0
  %251 = load i64, ptr %arrayidx315, align 8
  %and316 = and i64 %251, 4
  %tobool317 = icmp ne i64 %and316, 0
  br i1 %tobool317, label %if.else322, label %if.then318

if.then318:                                       ; preds = %if.end312
  %252 = load ptr, ptr %tif.addr, align 8
  %call319 = call i64 @TIFFNumberOfStrips(ptr noundef %252)
  %253 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %253, i32 0, i32 43
  store i64 %call319, ptr %td_nstrips, align 8
  %254 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %254, i32 0, i32 1
  %255 = load i64, ptr %td_imagewidth, align 8
  %256 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %256, i32 0, i32 4
  store i64 %255, ptr %td_tilewidth, align 8
  %257 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %257, i32 0, i32 16
  %258 = load i64, ptr %td_rowsperstrip, align 8
  %259 = load ptr, ptr %td, align 8
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %259, i32 0, i32 5
  store i64 %258, ptr %td_tilelength, align 8
  %260 = load ptr, ptr %td, align 8
  %td_imagedepth = getelementptr inbounds %struct.TIFFDirectory, ptr %260, i32 0, i32 3
  %261 = load i64, ptr %td_imagedepth, align 8
  %262 = load ptr, ptr %td, align 8
  %td_tiledepth = getelementptr inbounds %struct.TIFFDirectory, ptr %262, i32 0, i32 6
  store i64 %261, ptr %td_tiledepth, align 8
  %263 = load ptr, ptr %tif.addr, align 8
  %tif_flags320 = getelementptr inbounds %struct.tiff, ptr %263, i32 0, i32 3
  %264 = load i64, ptr %tif_flags320, align 8
  %and321 = and i64 %264, -1025
  store i64 %and321, ptr %tif_flags320, align 8
  br label %if.end327

if.else322:                                       ; preds = %if.end312
  %265 = load ptr, ptr %tif.addr, align 8
  %call323 = call i64 @TIFFNumberOfTiles(ptr noundef %265)
  %266 = load ptr, ptr %td, align 8
  %td_nstrips324 = getelementptr inbounds %struct.TIFFDirectory, ptr %266, i32 0, i32 43
  store i64 %call323, ptr %td_nstrips324, align 8
  %267 = load ptr, ptr %tif.addr, align 8
  %tif_flags325 = getelementptr inbounds %struct.tiff, ptr %267, i32 0, i32 3
  %268 = load i64, ptr %tif_flags325, align 8
  %or326 = or i64 %268, 1024
  store i64 %or326, ptr %tif_flags325, align 8
  br label %if.end327

if.end327:                                        ; preds = %if.else322, %if.then318
  %269 = load ptr, ptr %td, align 8
  %td_nstrips328 = getelementptr inbounds %struct.TIFFDirectory, ptr %269, i32 0, i32 43
  %270 = load i64, ptr %td_nstrips328, align 8
  %271 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %271, i32 0, i32 42
  store i64 %270, ptr %td_stripsperimage, align 8
  %272 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %272, i32 0, i32 24
  %273 = load i16, ptr %td_planarconfig, align 2
  %conv329 = zext i16 %273 to i32
  %cmp330 = icmp eq i32 %conv329, 2
  br i1 %cmp330, label %if.then332, label %if.end337

if.then332:                                       ; preds = %if.end327
  %274 = load ptr, ptr %td, align 8
  %td_samplesperpixel333 = getelementptr inbounds %struct.TIFFDirectory, ptr %274, i32 0, i32 15
  %275 = load i16, ptr %td_samplesperpixel333, align 2
  %conv334 = zext i16 %275 to i64
  %276 = load ptr, ptr %td, align 8
  %td_stripsperimage335 = getelementptr inbounds %struct.TIFFDirectory, ptr %276, i32 0, i32 42
  %277 = load i64, ptr %td_stripsperimage335, align 8
  %div336 = udiv i64 %277, %conv334
  store i64 %div336, ptr %td_stripsperimage335, align 8
  br label %if.end337

if.end337:                                        ; preds = %if.then332, %if.end327
  %278 = load ptr, ptr %tif.addr, align 8
  %tif_dir338 = getelementptr inbounds %struct.tiff, ptr %278, i32 0, i32 6
  %td_fieldsset339 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir338, i32 0, i32 0
  %arrayidx340 = getelementptr inbounds [3 x i64], ptr %td_fieldsset339, i64 0, i64 0
  %279 = load i64, ptr %arrayidx340, align 8
  %and341 = and i64 %279, 33554432
  %tobool342 = icmp ne i64 %and341, 0
  br i1 %tobool342, label %if.end349, label %if.then343

if.then343:                                       ; preds = %if.end337
  %280 = load ptr, ptr %tif.addr, align 8
  %281 = load ptr, ptr %tif.addr, align 8
  %tif_flags344 = getelementptr inbounds %struct.tiff, ptr %281, i32 0, i32 3
  %282 = load i64, ptr %tif_flags344, align 8
  %and345 = and i64 %282, 1024
  %cmp346 = icmp ne i64 %and345, 0
  %283 = zext i1 %cmp346 to i64
  %cond348 = select i1 %cmp346, ptr @.str.9, ptr @.str.10
  call void @MissingRequired(ptr noundef %280, ptr noundef %cond348)
  br label %bad

if.end349:                                        ; preds = %if.end337
  %284 = load ptr, ptr %dir, align 8
  store ptr %284, ptr %dp, align 8
  %285 = load i16, ptr %dircount, align 2
  %conv350 = zext i16 %285 to i32
  store i32 %conv350, ptr %n, align 4
  br label %for.cond351

for.cond351:                                      ; preds = %for.inc523, %if.end349
  %286 = load i32, ptr %n, align 4
  %cmp352 = icmp sgt i32 %286, 0
  br i1 %cmp352, label %for.body354, label %for.end526

for.body354:                                      ; preds = %for.cond351
  %287 = load ptr, ptr %dp, align 8
  %tdir_tag355 = getelementptr inbounds %struct.TIFFDirEntry, ptr %287, i32 0, i32 0
  %288 = load i16, ptr %tdir_tag355, align 8
  %conv356 = zext i16 %288 to i32
  %cmp357 = icmp eq i32 %conv356, 0
  br i1 %cmp357, label %if.then359, label %if.end360

if.then359:                                       ; preds = %for.body354
  br label %for.inc523

if.end360:                                        ; preds = %for.body354
  %289 = load ptr, ptr %dp, align 8
  %tdir_tag361 = getelementptr inbounds %struct.TIFFDirEntry, ptr %289, i32 0, i32 0
  %290 = load i16, ptr %tdir_tag361, align 8
  %conv362 = zext i16 %290 to i32
  switch i32 %conv362, label %sw.default [
    i32 280, label %sw.bb363
    i32 281, label %sw.bb363
    i32 258, label %sw.bb363
    i32 32996, label %sw.bb403
    i32 339, label %sw.bb403
    i32 340, label %sw.bb413
    i32 341, label %sw.bb413
    i32 273, label %sw.bb423
    i32 324, label %sw.bb423
    i32 279, label %sw.bb429
    i32 325, label %sw.bb429
    i32 320, label %sw.bb435
    i32 301, label %sw.bb435
    i32 297, label %sw.bb481
    i32 321, label %sw.bb481
    i32 530, label %sw.bb481
    i32 336, label %sw.bb481
    i32 532, label %sw.bb483
    i32 255, label %sw.bb485
  ]

sw.bb363:                                         ; preds = %if.end360, %if.end360, %if.end360
  %291 = load ptr, ptr %dp, align 8
  %tdir_count364 = getelementptr inbounds %struct.TIFFDirEntry, ptr %291, i32 0, i32 2
  %292 = load i64, ptr %tdir_count364, align 8
  %cmp365 = icmp eq i64 %292, 1
  br i1 %cmp365, label %if.then367, label %if.end402

if.then367:                                       ; preds = %sw.bb363
  %293 = load ptr, ptr %tif.addr, align 8
  %tif_header368 = getelementptr inbounds %struct.tiff, ptr %293, i32 0, i32 7
  %tiff_magic369 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header368, i32 0, i32 0
  %294 = load i16, ptr %tiff_magic369, align 8
  %conv370 = zext i16 %294 to i32
  %cmp371 = icmp eq i32 %conv370, 19789
  br i1 %cmp371, label %cond.true373, label %cond.false386

cond.true373:                                     ; preds = %if.then367
  %295 = load ptr, ptr %dp, align 8
  %tdir_offset374 = getelementptr inbounds %struct.TIFFDirEntry, ptr %295, i32 0, i32 3
  %296 = load i64, ptr %tdir_offset374, align 8
  %297 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift375 = getelementptr inbounds %struct.tiff, ptr %297, i32 0, i32 9
  %298 = load ptr, ptr %tif_typeshift375, align 8
  %299 = load ptr, ptr %dp, align 8
  %tdir_type376 = getelementptr inbounds %struct.TIFFDirEntry, ptr %299, i32 0, i32 1
  %300 = load i16, ptr %tdir_type376, align 2
  %idxprom377 = zext i16 %300 to i64
  %arrayidx378 = getelementptr inbounds i32, ptr %298, i64 %idxprom377
  %301 = load i32, ptr %arrayidx378, align 4
  %sh_prom379 = zext i32 %301 to i64
  %shr380 = lshr i64 %296, %sh_prom379
  %302 = load ptr, ptr %tif.addr, align 8
  %tif_typemask381 = getelementptr inbounds %struct.tiff, ptr %302, i32 0, i32 10
  %303 = load ptr, ptr %tif_typemask381, align 8
  %304 = load ptr, ptr %dp, align 8
  %tdir_type382 = getelementptr inbounds %struct.TIFFDirEntry, ptr %304, i32 0, i32 1
  %305 = load i16, ptr %tdir_type382, align 2
  %idxprom383 = zext i16 %305 to i64
  %arrayidx384 = getelementptr inbounds i64, ptr %303, i64 %idxprom383
  %306 = load i64, ptr %arrayidx384, align 8
  %and385 = and i64 %shr380, %306
  br label %cond.end393

cond.false386:                                    ; preds = %if.then367
  %307 = load ptr, ptr %dp, align 8
  %tdir_offset387 = getelementptr inbounds %struct.TIFFDirEntry, ptr %307, i32 0, i32 3
  %308 = load i64, ptr %tdir_offset387, align 8
  %309 = load ptr, ptr %tif.addr, align 8
  %tif_typemask388 = getelementptr inbounds %struct.tiff, ptr %309, i32 0, i32 10
  %310 = load ptr, ptr %tif_typemask388, align 8
  %311 = load ptr, ptr %dp, align 8
  %tdir_type389 = getelementptr inbounds %struct.TIFFDirEntry, ptr %311, i32 0, i32 1
  %312 = load i16, ptr %tdir_type389, align 2
  %idxprom390 = zext i16 %312 to i64
  %arrayidx391 = getelementptr inbounds i64, ptr %310, i64 %idxprom390
  %313 = load i64, ptr %arrayidx391, align 8
  %and392 = and i64 %308, %313
  br label %cond.end393

cond.end393:                                      ; preds = %cond.false386, %cond.true373
  %cond394 = phi i64 [ %and385, %cond.true373 ], [ %and392, %cond.false386 ]
  store i64 %cond394, ptr %v, align 8
  %314 = load ptr, ptr %tif.addr, align 8
  %315 = load ptr, ptr %dp, align 8
  %tdir_tag395 = getelementptr inbounds %struct.TIFFDirEntry, ptr %315, i32 0, i32 0
  %316 = load i16, ptr %tdir_tag395, align 8
  %conv396 = zext i16 %316 to i64
  %317 = load i64, ptr %v, align 8
  %conv397 = trunc i64 %317 to i32
  %call398 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %314, i64 noundef %conv396, i32 noundef %conv397)
  %tobool399 = icmp ne i32 %call398, 0
  br i1 %tobool399, label %if.end401, label %if.then400

if.then400:                                       ; preds = %cond.end393
  br label %bad

if.end401:                                        ; preds = %cond.end393
  br label %sw.epilog522

if.end402:                                        ; preds = %sw.bb363
  br label %sw.bb403

sw.bb403:                                         ; preds = %if.end360, %if.end360, %if.end402
  %318 = load ptr, ptr %tif.addr, align 8
  %319 = load ptr, ptr %dp, align 8
  %call404 = call i32 @TIFFFetchPerSampleShorts(ptr noundef %318, ptr noundef %319, ptr noundef %iv)
  %tobool405 = icmp ne i32 %call404, 0
  br i1 %tobool405, label %lor.lhs.false406, label %if.then411

lor.lhs.false406:                                 ; preds = %sw.bb403
  %320 = load ptr, ptr %tif.addr, align 8
  %321 = load ptr, ptr %dp, align 8
  %tdir_tag407 = getelementptr inbounds %struct.TIFFDirEntry, ptr %321, i32 0, i32 0
  %322 = load i16, ptr %tdir_tag407, align 8
  %conv408 = zext i16 %322 to i64
  %323 = load i32, ptr %iv, align 4
  %call409 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %320, i64 noundef %conv408, i32 noundef %323)
  %tobool410 = icmp ne i32 %call409, 0
  br i1 %tobool410, label %if.end412, label %if.then411

if.then411:                                       ; preds = %lor.lhs.false406, %sw.bb403
  br label %bad

if.end412:                                        ; preds = %lor.lhs.false406
  br label %sw.epilog522

sw.bb413:                                         ; preds = %if.end360, %if.end360
  %324 = load ptr, ptr %tif.addr, align 8
  %325 = load ptr, ptr %dp, align 8
  %call414 = call i32 @TIFFFetchPerSampleAnys(ptr noundef %324, ptr noundef %325, ptr noundef %dv)
  %tobool415 = icmp ne i32 %call414, 0
  br i1 %tobool415, label %lor.lhs.false416, label %if.then421

lor.lhs.false416:                                 ; preds = %sw.bb413
  %326 = load ptr, ptr %tif.addr, align 8
  %327 = load ptr, ptr %dp, align 8
  %tdir_tag417 = getelementptr inbounds %struct.TIFFDirEntry, ptr %327, i32 0, i32 0
  %328 = load i16, ptr %tdir_tag417, align 8
  %conv418 = zext i16 %328 to i64
  %329 = load double, ptr %dv, align 8
  %call419 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %326, i64 noundef %conv418, double noundef %329)
  %tobool420 = icmp ne i32 %call419, 0
  br i1 %tobool420, label %if.end422, label %if.then421

if.then421:                                       ; preds = %lor.lhs.false416, %sw.bb413
  br label %bad

if.end422:                                        ; preds = %lor.lhs.false416
  br label %sw.epilog522

sw.bb423:                                         ; preds = %if.end360, %if.end360
  %330 = load ptr, ptr %tif.addr, align 8
  %331 = load ptr, ptr %dp, align 8
  %332 = load ptr, ptr %td, align 8
  %td_nstrips424 = getelementptr inbounds %struct.TIFFDirectory, ptr %332, i32 0, i32 43
  %333 = load i64, ptr %td_nstrips424, align 8
  %334 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %334, i32 0, i32 44
  %call425 = call i32 @TIFFFetchStripThing(ptr noundef %330, ptr noundef %331, i64 noundef %333, ptr noundef %td_stripoffset)
  %tobool426 = icmp ne i32 %call425, 0
  br i1 %tobool426, label %if.end428, label %if.then427

if.then427:                                       ; preds = %sw.bb423
  br label %bad

if.end428:                                        ; preds = %sw.bb423
  br label %sw.epilog522

sw.bb429:                                         ; preds = %if.end360, %if.end360
  %335 = load ptr, ptr %tif.addr, align 8
  %336 = load ptr, ptr %dp, align 8
  %337 = load ptr, ptr %td, align 8
  %td_nstrips430 = getelementptr inbounds %struct.TIFFDirectory, ptr %337, i32 0, i32 43
  %338 = load i64, ptr %td_nstrips430, align 8
  %339 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %339, i32 0, i32 45
  %call431 = call i32 @TIFFFetchStripThing(ptr noundef %335, ptr noundef %336, i64 noundef %338, ptr noundef %td_stripbytecount)
  %tobool432 = icmp ne i32 %call431, 0
  br i1 %tobool432, label %if.end434, label %if.then433

if.then433:                                       ; preds = %sw.bb429
  br label %bad

if.end434:                                        ; preds = %sw.bb429
  br label %sw.epilog522

sw.bb435:                                         ; preds = %if.end360, %if.end360
  %340 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %340, i32 0, i32 8
  %341 = load i16, ptr %td_bitspersample, align 8
  %conv436 = zext i16 %341 to i32
  %sh_prom437 = zext i32 %conv436 to i64
  %shl438 = shl i64 1, %sh_prom437
  store i64 %shl438, ptr %v, align 8
  %342 = load ptr, ptr %dp, align 8
  %tdir_tag439 = getelementptr inbounds %struct.TIFFDirEntry, ptr %342, i32 0, i32 0
  %343 = load i16, ptr %tdir_tag439, align 8
  %conv440 = zext i16 %343 to i32
  %cmp441 = icmp eq i32 %conv440, 320
  br i1 %cmp441, label %if.then447, label %lor.lhs.false443

lor.lhs.false443:                                 ; preds = %sw.bb435
  %344 = load ptr, ptr %dp, align 8
  %tdir_count444 = getelementptr inbounds %struct.TIFFDirEntry, ptr %344, i32 0, i32 2
  %345 = load i64, ptr %tdir_count444, align 8
  %346 = load i64, ptr %v, align 8
  %cmp445 = icmp ne i64 %345, %346
  br i1 %cmp445, label %if.then447, label %if.end453

if.then447:                                       ; preds = %lor.lhs.false443, %sw.bb435
  %347 = load ptr, ptr %tif.addr, align 8
  %348 = load ptr, ptr %dp, align 8
  %349 = load i64, ptr %v, align 8
  %mul448 = mul nsw i64 3, %349
  %call449 = call i32 @CheckDirCount(ptr noundef %347, ptr noundef %348, i64 noundef %mul448)
  %tobool450 = icmp ne i32 %call449, 0
  br i1 %tobool450, label %if.end452, label %if.then451

if.then451:                                       ; preds = %if.then447
  br label %sw.epilog522

if.end452:                                        ; preds = %if.then447
  br label %if.end453

if.end453:                                        ; preds = %if.end452, %lor.lhs.false443
  %350 = load i64, ptr %v, align 8
  %mul454 = mul i64 %350, 2
  store i64 %mul454, ptr %v, align 8
  %351 = load ptr, ptr %tif.addr, align 8
  %352 = load ptr, ptr %dp, align 8
  %tdir_count455 = getelementptr inbounds %struct.TIFFDirEntry, ptr %352, i32 0, i32 2
  %353 = load i64, ptr %tdir_count455, align 8
  %mul456 = mul i64 %353, 2
  %call457 = call ptr @CheckMalloc(ptr noundef %351, i64 noundef %mul456, ptr noundef @.str.11)
  store ptr %call457, ptr %cp, align 8
  %354 = load ptr, ptr %cp, align 8
  %cmp458 = icmp ne ptr %354, null
  br i1 %cmp458, label %if.then460, label %if.end480

if.then460:                                       ; preds = %if.end453
  %355 = load ptr, ptr %tif.addr, align 8
  %356 = load ptr, ptr %dp, align 8
  %357 = load ptr, ptr %cp, align 8
  %call461 = call i64 @TIFFFetchData(ptr noundef %355, ptr noundef %356, ptr noundef %357)
  %tobool462 = icmp ne i64 %call461, 0
  br i1 %tobool462, label %if.then463, label %if.end479

if.then463:                                       ; preds = %if.then460
  %358 = load ptr, ptr %td, align 8
  %td_bitspersample464 = getelementptr inbounds %struct.TIFFDirectory, ptr %358, i32 0, i32 8
  %359 = load i16, ptr %td_bitspersample464, align 8
  %conv465 = zext i16 %359 to i32
  %sh_prom466 = zext i32 %conv465 to i64
  %shl467 = shl i64 1, %sh_prom466
  store i64 %shl467, ptr %c, align 8
  %360 = load ptr, ptr %dp, align 8
  %tdir_count468 = getelementptr inbounds %struct.TIFFDirEntry, ptr %360, i32 0, i32 2
  %361 = load i64, ptr %tdir_count468, align 8
  %362 = load i64, ptr %c, align 8
  %cmp469 = icmp eq i64 %361, %362
  br i1 %cmp469, label %if.then471, label %if.end472

if.then471:                                       ; preds = %if.then463
  store i64 0, ptr %v, align 8
  br label %if.end472

if.end472:                                        ; preds = %if.then471, %if.then463
  %363 = load ptr, ptr %tif.addr, align 8
  %364 = load ptr, ptr %dp, align 8
  %tdir_tag473 = getelementptr inbounds %struct.TIFFDirEntry, ptr %364, i32 0, i32 0
  %365 = load i16, ptr %tdir_tag473, align 8
  %conv474 = zext i16 %365 to i64
  %366 = load ptr, ptr %cp, align 8
  %367 = load ptr, ptr %cp, align 8
  %368 = load i64, ptr %v, align 8
  %add.ptr475 = getelementptr inbounds i8, ptr %367, i64 %368
  %369 = load ptr, ptr %cp, align 8
  %370 = load i64, ptr %v, align 8
  %mul476 = mul nsw i64 2, %370
  %add.ptr477 = getelementptr inbounds i8, ptr %369, i64 %mul476
  %call478 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %363, i64 noundef %conv474, ptr noundef %366, ptr noundef %add.ptr475, ptr noundef %add.ptr477)
  br label %if.end479

if.end479:                                        ; preds = %if.end472, %if.then460
  %371 = load ptr, ptr %cp, align 8
  call void @_TIFFfree(ptr noundef %371)
  br label %if.end480

if.end480:                                        ; preds = %if.end479, %if.end453
  br label %sw.epilog522

sw.bb481:                                         ; preds = %if.end360, %if.end360, %if.end360, %if.end360
  %372 = load ptr, ptr %tif.addr, align 8
  %373 = load ptr, ptr %dp, align 8
  %call482 = call i32 @TIFFFetchShortPair(ptr noundef %372, ptr noundef %373)
  br label %sw.epilog522

sw.bb483:                                         ; preds = %if.end360
  %374 = load ptr, ptr %tif.addr, align 8
  %375 = load ptr, ptr %dp, align 8
  %call484 = call i32 @TIFFFetchRefBlackWhite(ptr noundef %374, ptr noundef %375)
  br label %sw.epilog522

sw.bb485:                                         ; preds = %if.end360
  store i64 0, ptr %v, align 8
  %376 = load ptr, ptr %tif.addr, align 8
  %tif_header486 = getelementptr inbounds %struct.tiff, ptr %376, i32 0, i32 7
  %tiff_magic487 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header486, i32 0, i32 0
  %377 = load i16, ptr %tiff_magic487, align 8
  %conv488 = zext i16 %377 to i32
  %cmp489 = icmp eq i32 %conv488, 19789
  br i1 %cmp489, label %cond.true491, label %cond.false504

cond.true491:                                     ; preds = %sw.bb485
  %378 = load ptr, ptr %dp, align 8
  %tdir_offset492 = getelementptr inbounds %struct.TIFFDirEntry, ptr %378, i32 0, i32 3
  %379 = load i64, ptr %tdir_offset492, align 8
  %380 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift493 = getelementptr inbounds %struct.tiff, ptr %380, i32 0, i32 9
  %381 = load ptr, ptr %tif_typeshift493, align 8
  %382 = load ptr, ptr %dp, align 8
  %tdir_type494 = getelementptr inbounds %struct.TIFFDirEntry, ptr %382, i32 0, i32 1
  %383 = load i16, ptr %tdir_type494, align 2
  %idxprom495 = zext i16 %383 to i64
  %arrayidx496 = getelementptr inbounds i32, ptr %381, i64 %idxprom495
  %384 = load i32, ptr %arrayidx496, align 4
  %sh_prom497 = zext i32 %384 to i64
  %shr498 = lshr i64 %379, %sh_prom497
  %385 = load ptr, ptr %tif.addr, align 8
  %tif_typemask499 = getelementptr inbounds %struct.tiff, ptr %385, i32 0, i32 10
  %386 = load ptr, ptr %tif_typemask499, align 8
  %387 = load ptr, ptr %dp, align 8
  %tdir_type500 = getelementptr inbounds %struct.TIFFDirEntry, ptr %387, i32 0, i32 1
  %388 = load i16, ptr %tdir_type500, align 2
  %idxprom501 = zext i16 %388 to i64
  %arrayidx502 = getelementptr inbounds i64, ptr %386, i64 %idxprom501
  %389 = load i64, ptr %arrayidx502, align 8
  %and503 = and i64 %shr498, %389
  br label %cond.end511

cond.false504:                                    ; preds = %sw.bb485
  %390 = load ptr, ptr %dp, align 8
  %tdir_offset505 = getelementptr inbounds %struct.TIFFDirEntry, ptr %390, i32 0, i32 3
  %391 = load i64, ptr %tdir_offset505, align 8
  %392 = load ptr, ptr %tif.addr, align 8
  %tif_typemask506 = getelementptr inbounds %struct.tiff, ptr %392, i32 0, i32 10
  %393 = load ptr, ptr %tif_typemask506, align 8
  %394 = load ptr, ptr %dp, align 8
  %tdir_type507 = getelementptr inbounds %struct.TIFFDirEntry, ptr %394, i32 0, i32 1
  %395 = load i16, ptr %tdir_type507, align 2
  %idxprom508 = zext i16 %395 to i64
  %arrayidx509 = getelementptr inbounds i64, ptr %393, i64 %idxprom508
  %396 = load i64, ptr %arrayidx509, align 8
  %and510 = and i64 %391, %396
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

sw.epilog515:                                     ; preds = %cond.end511, %sw.bb514, %sw.bb513
  %397 = load i64, ptr %v, align 8
  %tobool516 = icmp ne i64 %397, 0
  br i1 %tobool516, label %if.then517, label %if.end520

if.then517:                                       ; preds = %sw.epilog515
  %398 = load ptr, ptr %tif.addr, align 8
  %399 = load i64, ptr %v, align 8
  %conv518 = trunc i64 %399 to i32
  %call519 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %398, i64 noundef 254, i32 noundef %conv518)
  br label %if.end520

if.end520:                                        ; preds = %if.then517, %sw.epilog515
  br label %sw.epilog522

sw.default:                                       ; preds = %if.end360
  %400 = load ptr, ptr %tif.addr, align 8
  %401 = load ptr, ptr %dp, align 8
  %call521 = call i32 @TIFFFetchNormalTag(ptr noundef %400, ptr noundef %401)
  br label %sw.epilog522

sw.epilog522:                                     ; preds = %sw.default, %if.end520, %sw.bb483, %sw.bb481, %if.end480, %if.then451, %if.end434, %if.end428, %if.end422, %if.end412, %if.end401
  br label %for.inc523

for.inc523:                                       ; preds = %sw.epilog522, %if.then359
  %402 = load i32, ptr %n, align 4
  %dec524 = add nsw i32 %402, -1
  store i32 %dec524, ptr %n, align 4
  %403 = load ptr, ptr %dp, align 8
  %incdec.ptr525 = getelementptr inbounds %struct.TIFFDirEntry, ptr %403, i32 1
  store ptr %incdec.ptr525, ptr %dp, align 8
  br label %for.cond351, !llvm.loop !11

for.end526:                                       ; preds = %for.cond351
  %404 = load ptr, ptr %td, align 8
  %td_photometric = getelementptr inbounds %struct.TIFFDirectory, ptr %404, i32 0, i32 11
  %405 = load i16, ptr %td_photometric, align 2
  %conv527 = zext i16 %405 to i32
  %cmp528 = icmp eq i32 %conv527, 3
  br i1 %cmp528, label %land.lhs.true, label %if.end536

land.lhs.true:                                    ; preds = %for.end526
  %406 = load ptr, ptr %tif.addr, align 8
  %tif_dir530 = getelementptr inbounds %struct.tiff, ptr %406, i32 0, i32 6
  %td_fieldsset531 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir530, i32 0, i32 0
  %arrayidx532 = getelementptr inbounds [3 x i64], ptr %td_fieldsset531, i64 0, i64 0
  %407 = load i64, ptr %arrayidx532, align 8
  %and533 = and i64 %407, 67108864
  %tobool534 = icmp ne i64 %and533, 0
  br i1 %tobool534, label %if.end536, label %if.then535

if.then535:                                       ; preds = %land.lhs.true
  %408 = load ptr, ptr %tif.addr, align 8
  call void @MissingRequired(ptr noundef %408, ptr noundef @.str.12)
  br label %bad

if.end536:                                        ; preds = %land.lhs.true, %for.end526
  %409 = load ptr, ptr %tif.addr, align 8
  %tif_dir537 = getelementptr inbounds %struct.tiff, ptr %409, i32 0, i32 6
  %td_fieldsset538 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir537, i32 0, i32 0
  %arrayidx539 = getelementptr inbounds [3 x i64], ptr %td_fieldsset538, i64 0, i64 0
  %410 = load i64, ptr %arrayidx539, align 8
  %and540 = and i64 %410, 16777216
  %tobool541 = icmp ne i64 %and540, 0
  br i1 %tobool541, label %if.else567, label %if.then542

if.then542:                                       ; preds = %if.end536
  %411 = load ptr, ptr %td, align 8
  %td_planarconfig543 = getelementptr inbounds %struct.TIFFDirectory, ptr %411, i32 0, i32 24
  %412 = load i16, ptr %td_planarconfig543, align 2
  %conv544 = zext i16 %412 to i32
  %cmp545 = icmp eq i32 %conv544, 1
  br i1 %cmp545, label %land.lhs.true547, label %lor.lhs.false551

land.lhs.true547:                                 ; preds = %if.then542
  %413 = load ptr, ptr %td, align 8
  %td_nstrips548 = getelementptr inbounds %struct.TIFFDirectory, ptr %413, i32 0, i32 43
  %414 = load i64, ptr %td_nstrips548, align 8
  %cmp549 = icmp ugt i64 %414, 1
  br i1 %cmp549, label %if.then562, label %lor.lhs.false551

lor.lhs.false551:                                 ; preds = %land.lhs.true547, %if.then542
  %415 = load ptr, ptr %td, align 8
  %td_planarconfig552 = getelementptr inbounds %struct.TIFFDirectory, ptr %415, i32 0, i32 24
  %416 = load i16, ptr %td_planarconfig552, align 2
  %conv553 = zext i16 %416 to i32
  %cmp554 = icmp eq i32 %conv553, 2
  br i1 %cmp554, label %land.lhs.true556, label %if.end563

land.lhs.true556:                                 ; preds = %lor.lhs.false551
  %417 = load ptr, ptr %td, align 8
  %td_nstrips557 = getelementptr inbounds %struct.TIFFDirectory, ptr %417, i32 0, i32 43
  %418 = load i64, ptr %td_nstrips557, align 8
  %419 = load ptr, ptr %td, align 8
  %td_samplesperpixel558 = getelementptr inbounds %struct.TIFFDirectory, ptr %419, i32 0, i32 15
  %420 = load i16, ptr %td_samplesperpixel558, align 2
  %conv559 = zext i16 %420 to i64
  %cmp560 = icmp ne i64 %418, %conv559
  br i1 %cmp560, label %if.then562, label %if.end563

if.then562:                                       ; preds = %land.lhs.true556, %land.lhs.true547
  %421 = load ptr, ptr %tif.addr, align 8
  call void @MissingRequired(ptr noundef %421, ptr noundef @.str.13)
  br label %bad

if.end563:                                        ; preds = %land.lhs.true556, %lor.lhs.false551
  %422 = load ptr, ptr %tif.addr, align 8
  %tif_name564 = getelementptr inbounds %struct.tiff, ptr %422, i32 0, i32 0
  %423 = load ptr, ptr %tif_name564, align 8
  %424 = load ptr, ptr %tif.addr, align 8
  %call565 = call ptr @_TIFFFieldWithTag(ptr noundef %424, i64 noundef 279)
  %field_name566 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call565, i32 0, i32 7
  %425 = load ptr, ptr %field_name566, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %423, ptr noundef @.str.14, ptr noundef %425)
  %426 = load ptr, ptr %tif.addr, align 8
  %427 = load ptr, ptr %dir, align 8
  %428 = load i16, ptr %dircount, align 2
  call void @EstimateStripByteCounts(ptr noundef %426, ptr noundef %427, i16 noundef zeroext %428)
  br label %if.end594

if.else567:                                       ; preds = %if.end536
  %429 = load ptr, ptr %td, align 8
  %td_nstrips568 = getelementptr inbounds %struct.TIFFDirectory, ptr %429, i32 0, i32 43
  %430 = load i64, ptr %td_nstrips568, align 8
  %cmp569 = icmp eq i64 %430, 1
  br i1 %cmp569, label %land.lhs.true571, label %if.end593

land.lhs.true571:                                 ; preds = %if.else567
  %431 = load ptr, ptr %td, align 8
  %td_stripbytecount572 = getelementptr inbounds %struct.TIFFDirectory, ptr %431, i32 0, i32 45
  %432 = load ptr, ptr %td_stripbytecount572, align 8
  %arrayidx573 = getelementptr inbounds i64, ptr %432, i64 0
  %433 = load i64, ptr %arrayidx573, align 8
  %cmp574 = icmp eq i64 %433, 0
  br i1 %cmp574, label %if.then589, label %lor.lhs.false576

lor.lhs.false576:                                 ; preds = %land.lhs.true571
  %434 = load ptr, ptr %td, align 8
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %434, i32 0, i32 10
  %435 = load i16, ptr %td_compression, align 4
  %conv577 = zext i16 %435 to i32
  %cmp578 = icmp eq i32 %conv577, 1
  br i1 %cmp578, label %land.lhs.true580, label %if.end593

land.lhs.true580:                                 ; preds = %lor.lhs.false576
  %436 = load ptr, ptr %td, align 8
  %td_stripbytecount581 = getelementptr inbounds %struct.TIFFDirectory, ptr %436, i32 0, i32 45
  %437 = load ptr, ptr %td_stripbytecount581, align 8
  %arrayidx582 = getelementptr inbounds i64, ptr %437, i64 0
  %438 = load i64, ptr %arrayidx582, align 8
  %439 = load ptr, ptr %tif.addr, align 8
  %tif_sizeproc = getelementptr inbounds %struct.tiff, ptr %439, i32 0, i32 53
  %440 = load ptr, ptr %tif_sizeproc, align 8
  %441 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata583 = getelementptr inbounds %struct.tiff, ptr %441, i32 0, i32 48
  %442 = load ptr, ptr %tif_clientdata583, align 8
  %call584 = call i64 %440(ptr noundef %442)
  %443 = load ptr, ptr %td, align 8
  %td_stripoffset585 = getelementptr inbounds %struct.TIFFDirectory, ptr %443, i32 0, i32 44
  %444 = load ptr, ptr %td_stripoffset585, align 8
  %arrayidx586 = getelementptr inbounds i64, ptr %444, i64 0
  %445 = load i64, ptr %arrayidx586, align 8
  %sub = sub i64 %call584, %445
  %cmp587 = icmp ugt i64 %438, %sub
  br i1 %cmp587, label %if.then589, label %if.end593

if.then589:                                       ; preds = %land.lhs.true580, %land.lhs.true571
  %446 = load ptr, ptr %tif.addr, align 8
  %tif_name590 = getelementptr inbounds %struct.tiff, ptr %446, i32 0, i32 0
  %447 = load ptr, ptr %tif_name590, align 8
  %448 = load ptr, ptr %tif.addr, align 8
  %call591 = call ptr @_TIFFFieldWithTag(ptr noundef %448, i64 noundef 279)
  %field_name592 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call591, i32 0, i32 7
  %449 = load ptr, ptr %field_name592, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %447, ptr noundef @.str.15, ptr noundef %449)
  %450 = load ptr, ptr %tif.addr, align 8
  %451 = load ptr, ptr %dir, align 8
  %452 = load i16, ptr %dircount, align 2
  call void @EstimateStripByteCounts(ptr noundef %450, ptr noundef %451, i16 noundef zeroext %452)
  br label %if.end593

if.end593:                                        ; preds = %if.then589, %land.lhs.true580, %lor.lhs.false576, %if.else567
  br label %if.end594

if.end594:                                        ; preds = %if.end593, %if.end563
  %453 = load ptr, ptr %dir, align 8
  %tobool595 = icmp ne ptr %453, null
  br i1 %tobool595, label %if.then596, label %if.end597

if.then596:                                       ; preds = %if.end594
  %454 = load ptr, ptr %dir, align 8
  call void @_TIFFfree(ptr noundef %454)
  br label %if.end597

if.end597:                                        ; preds = %if.then596, %if.end594
  %455 = load ptr, ptr %tif.addr, align 8
  %tif_dir598 = getelementptr inbounds %struct.tiff, ptr %455, i32 0, i32 6
  %td_fieldsset599 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir598, i32 0, i32 0
  %arrayidx600 = getelementptr inbounds [3 x i64], ptr %td_fieldsset599, i64 0, i64 0
  %456 = load i64, ptr %arrayidx600, align 8
  %and601 = and i64 %456, 524288
  %tobool602 = icmp ne i64 %and601, 0
  br i1 %tobool602, label %if.end610, label %if.then603

if.then603:                                       ; preds = %if.end597
  %457 = load ptr, ptr %td, align 8
  %td_bitspersample604 = getelementptr inbounds %struct.TIFFDirectory, ptr %457, i32 0, i32 8
  %458 = load i16, ptr %td_bitspersample604, align 8
  %conv605 = zext i16 %458 to i32
  %sh_prom606 = zext i32 %conv605 to i64
  %shl607 = shl i64 1, %sh_prom606
  %sub608 = sub nsw i64 %shl607, 1
  %conv609 = trunc i64 %sub608 to i16
  %459 = load ptr, ptr %td, align 8
  %td_maxsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %459, i32 0, i32 18
  store i16 %conv609, ptr %td_maxsamplevalue, align 2
  br label %if.end610

if.end610:                                        ; preds = %if.then603, %if.end597
  %460 = load ptr, ptr %tif.addr, align 8
  %tif_dir611 = getelementptr inbounds %struct.tiff, ptr %460, i32 0, i32 6
  %td_fieldsset612 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir611, i32 0, i32 0
  %arrayidx613 = getelementptr inbounds [3 x i64], ptr %td_fieldsset612, i64 0, i64 0
  %461 = load i64, ptr %arrayidx613, align 8
  %and614 = and i64 %461, 128
  %tobool615 = icmp ne i64 %and614, 0
  br i1 %tobool615, label %if.end618, label %if.then616

if.then616:                                       ; preds = %if.end610
  %462 = load ptr, ptr %tif.addr, align 8
  %call617 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %462, i64 noundef 259, i32 noundef 1)
  br label %if.end618

if.end618:                                        ; preds = %if.then616, %if.end610
  %463 = load ptr, ptr %td, align 8
  %td_nstrips619 = getelementptr inbounds %struct.TIFFDirectory, ptr %463, i32 0, i32 43
  %464 = load i64, ptr %td_nstrips619, align 8
  %cmp620 = icmp eq i64 %464, 1
  br i1 %cmp620, label %land.lhs.true622, label %if.end633

land.lhs.true622:                                 ; preds = %if.end618
  %465 = load ptr, ptr %td, align 8
  %td_compression623 = getelementptr inbounds %struct.TIFFDirectory, ptr %465, i32 0, i32 10
  %466 = load i16, ptr %td_compression623, align 4
  %conv624 = zext i16 %466 to i32
  %cmp625 = icmp eq i32 %conv624, 1
  br i1 %cmp625, label %land.lhs.true627, label %if.end633

land.lhs.true627:                                 ; preds = %land.lhs.true622
  %467 = load ptr, ptr %tif.addr, align 8
  %tif_flags628 = getelementptr inbounds %struct.tiff, ptr %467, i32 0, i32 3
  %468 = load i64, ptr %tif_flags628, align 8
  %and629 = and i64 %468, 33792
  %cmp630 = icmp eq i64 %and629, 32768
  br i1 %cmp630, label %if.then632, label %if.end633

if.then632:                                       ; preds = %land.lhs.true627
  %469 = load ptr, ptr %tif.addr, align 8
  call void @ChopUpSingleUncompressedStrip(ptr noundef %469)
  br label %if.end633

if.end633:                                        ; preds = %if.then632, %land.lhs.true627, %land.lhs.true622, %if.end618
  %470 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %470, i32 0, i32 11
  store i64 -1, ptr %tif_row, align 8
  %471 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %471, i32 0, i32 13
  store i64 -1, ptr %tif_curstrip, align 8
  %472 = load ptr, ptr %tif.addr, align 8
  %tif_col = getelementptr inbounds %struct.tiff, ptr %472, i32 0, i32 18
  store i64 -1, ptr %tif_col, align 8
  %473 = load ptr, ptr %tif.addr, align 8
  %tif_curtile = getelementptr inbounds %struct.tiff, ptr %473, i32 0, i32 19
  store i64 -1, ptr %tif_curtile, align 8
  %474 = load ptr, ptr %tif.addr, align 8
  %call634 = call i64 @TIFFTileSize(ptr noundef %474)
  %475 = load ptr, ptr %tif.addr, align 8
  %tif_tilesize = getelementptr inbounds %struct.tiff, ptr %475, i32 0, i32 20
  store i64 %call634, ptr %tif_tilesize, align 8
  %476 = load ptr, ptr %tif.addr, align 8
  %call635 = call i64 @TIFFScanlineSize(ptr noundef %476)
  %477 = load ptr, ptr %tif.addr, align 8
  %tif_scanlinesize = getelementptr inbounds %struct.tiff, ptr %477, i32 0, i32 38
  store i64 %call635, ptr %tif_scanlinesize, align 8
  store i32 1, ptr %retval, align 4
  br label %return

bad:                                              ; preds = %if.then562, %if.then535, %if.then433, %if.then427, %if.then421, %if.then411, %if.then400, %if.then343, %if.then311, %if.then304, %if.then289, %if.then273, %if.then263, %if.then112, %if.then67, %if.then33
  %478 = load ptr, ptr %dir, align 8
  %tobool636 = icmp ne ptr %478, null
  br i1 %tobool636, label %if.then637, label %if.end638

if.then637:                                       ; preds = %bad
  %479 = load ptr, ptr %dir, align 8
  call void @_TIFFfree(ptr noundef %479)
  br label %if.end638

if.end638:                                        ; preds = %if.then637, %bad
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end638, %if.end633, %if.then59, %if.then44, %if.then22, %if.then12, %if.then7, %if.then
  %480 = load i32, ptr %retval, align 4
  ret i32 %480
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

declare void @TIFFSwabShort(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal ptr @CheckMalloc(ptr noundef %tif, i64 noundef %n, ptr noundef %what) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %what.addr = alloca ptr, align 8
  %cp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %what, ptr %what.addr, align 8
  %0 = load i64, ptr %n.addr, align 8
  %call = call ptr @_TIFFmalloc(i64 noundef %0)
  store ptr %call, ptr %cp, align 8
  %1 = load ptr, ptr %cp, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %tif_name, align 8
  %4 = load ptr, ptr %what.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %3, ptr noundef @.str.16, ptr noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %cp, align 8
  ret ptr %5
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
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load ptr, ptr %dp.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i32 0, i32 0
  %2 = load i16, ptr %tdir_tag, align 8
  %conv = zext i16 %2 to i64
  %call = call ptr @_TIFFFieldWithTag(ptr noundef %0, i64 noundef %conv)
  store ptr %call, ptr %fip, align 8
  %3 = load ptr, ptr %dp.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %3, i32 0, i32 2
  %4 = load i64, ptr %tdir_count, align 8
  %cmp = icmp ugt i64 %4, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr null, ptr %cp, align 8
  %5 = load ptr, ptr %dp.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i32 0, i32 1
  %6 = load i16, ptr %tdir_type, align 2
  %conv2 = zext i16 %6 to i32
  switch i32 %conv2, label %sw.epilog [
    i32 1, label %sw.bb
    i32 6, label %sw.bb
    i32 3, label %sw.bb7
    i32 8, label %sw.bb7
    i32 4, label %sw.bb17
    i32 9, label %sw.bb17
    i32 5, label %sw.bb27
    i32 10, label %sw.bb27
    i32 11, label %sw.bb37
    i32 12, label %sw.bb47
    i32 2, label %sw.bb57
    i32 7, label %sw.bb57
  ]

sw.bb:                                            ; preds = %if.then, %if.then
  %7 = load ptr, ptr %tif.addr, align 8
  %8 = load ptr, ptr %dp.addr, align 8
  %tdir_count3 = getelementptr inbounds %struct.TIFFDirEntry, ptr %8, i32 0, i32 2
  %9 = load i64, ptr %tdir_count3, align 8
  %mul = mul i64 %9, 2
  %call4 = call ptr @CheckMalloc(ptr noundef %7, i64 noundef %mul, ptr noundef @TIFFFetchNormalTag.mesg)
  store ptr %call4, ptr %cp, align 8
  %10 = load ptr, ptr %cp, align 8
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb
  %11 = load ptr, ptr %tif.addr, align 8
  %12 = load ptr, ptr %dp.addr, align 8
  %13 = load ptr, ptr %cp, align 8
  %call5 = call i32 @TIFFFetchByteArray(ptr noundef %11, ptr noundef %12, ptr noundef %13)
  %tobool6 = icmp ne i32 %call5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb
  %14 = phi i1 [ false, %sw.bb ], [ %tobool6, %land.rhs ]
  %land.ext = zext i1 %14 to i32
  store i32 %land.ext, ptr %ok, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.then, %if.then
  %15 = load ptr, ptr %tif.addr, align 8
  %16 = load ptr, ptr %dp.addr, align 8
  %tdir_count8 = getelementptr inbounds %struct.TIFFDirEntry, ptr %16, i32 0, i32 2
  %17 = load i64, ptr %tdir_count8, align 8
  %mul9 = mul i64 %17, 2
  %call10 = call ptr @CheckMalloc(ptr noundef %15, i64 noundef %mul9, ptr noundef @TIFFFetchNormalTag.mesg)
  store ptr %call10, ptr %cp, align 8
  %18 = load ptr, ptr %cp, align 8
  %tobool11 = icmp ne ptr %18, null
  br i1 %tobool11, label %land.rhs12, label %land.end15

land.rhs12:                                       ; preds = %sw.bb7
  %19 = load ptr, ptr %tif.addr, align 8
  %20 = load ptr, ptr %dp.addr, align 8
  %21 = load ptr, ptr %cp, align 8
  %call13 = call i32 @TIFFFetchShortArray(ptr noundef %19, ptr noundef %20, ptr noundef %21)
  %tobool14 = icmp ne i32 %call13, 0
  br label %land.end15

land.end15:                                       ; preds = %land.rhs12, %sw.bb7
  %22 = phi i1 [ false, %sw.bb7 ], [ %tobool14, %land.rhs12 ]
  %land.ext16 = zext i1 %22 to i32
  store i32 %land.ext16, ptr %ok, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.then, %if.then
  %23 = load ptr, ptr %tif.addr, align 8
  %24 = load ptr, ptr %dp.addr, align 8
  %tdir_count18 = getelementptr inbounds %struct.TIFFDirEntry, ptr %24, i32 0, i32 2
  %25 = load i64, ptr %tdir_count18, align 8
  %mul19 = mul i64 %25, 8
  %call20 = call ptr @CheckMalloc(ptr noundef %23, i64 noundef %mul19, ptr noundef @TIFFFetchNormalTag.mesg)
  store ptr %call20, ptr %cp, align 8
  %26 = load ptr, ptr %cp, align 8
  %tobool21 = icmp ne ptr %26, null
  br i1 %tobool21, label %land.rhs22, label %land.end25

land.rhs22:                                       ; preds = %sw.bb17
  %27 = load ptr, ptr %tif.addr, align 8
  %28 = load ptr, ptr %dp.addr, align 8
  %29 = load ptr, ptr %cp, align 8
  %call23 = call i32 @TIFFFetchLongArray(ptr noundef %27, ptr noundef %28, ptr noundef %29)
  %tobool24 = icmp ne i32 %call23, 0
  br label %land.end25

land.end25:                                       ; preds = %land.rhs22, %sw.bb17
  %30 = phi i1 [ false, %sw.bb17 ], [ %tobool24, %land.rhs22 ]
  %land.ext26 = zext i1 %30 to i32
  store i32 %land.ext26, ptr %ok, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.then, %if.then
  %31 = load ptr, ptr %tif.addr, align 8
  %32 = load ptr, ptr %dp.addr, align 8
  %tdir_count28 = getelementptr inbounds %struct.TIFFDirEntry, ptr %32, i32 0, i32 2
  %33 = load i64, ptr %tdir_count28, align 8
  %mul29 = mul i64 %33, 4
  %call30 = call ptr @CheckMalloc(ptr noundef %31, i64 noundef %mul29, ptr noundef @TIFFFetchNormalTag.mesg)
  store ptr %call30, ptr %cp, align 8
  %34 = load ptr, ptr %cp, align 8
  %tobool31 = icmp ne ptr %34, null
  br i1 %tobool31, label %land.rhs32, label %land.end35

land.rhs32:                                       ; preds = %sw.bb27
  %35 = load ptr, ptr %tif.addr, align 8
  %36 = load ptr, ptr %dp.addr, align 8
  %37 = load ptr, ptr %cp, align 8
  %call33 = call i32 @TIFFFetchRationalArray(ptr noundef %35, ptr noundef %36, ptr noundef %37)
  %tobool34 = icmp ne i32 %call33, 0
  br label %land.end35

land.end35:                                       ; preds = %land.rhs32, %sw.bb27
  %38 = phi i1 [ false, %sw.bb27 ], [ %tobool34, %land.rhs32 ]
  %land.ext36 = zext i1 %38 to i32
  store i32 %land.ext36, ptr %ok, align 4
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.then
  %39 = load ptr, ptr %tif.addr, align 8
  %40 = load ptr, ptr %dp.addr, align 8
  %tdir_count38 = getelementptr inbounds %struct.TIFFDirEntry, ptr %40, i32 0, i32 2
  %41 = load i64, ptr %tdir_count38, align 8
  %mul39 = mul i64 %41, 4
  %call40 = call ptr @CheckMalloc(ptr noundef %39, i64 noundef %mul39, ptr noundef @TIFFFetchNormalTag.mesg)
  store ptr %call40, ptr %cp, align 8
  %42 = load ptr, ptr %cp, align 8
  %tobool41 = icmp ne ptr %42, null
  br i1 %tobool41, label %land.rhs42, label %land.end45

land.rhs42:                                       ; preds = %sw.bb37
  %43 = load ptr, ptr %tif.addr, align 8
  %44 = load ptr, ptr %dp.addr, align 8
  %45 = load ptr, ptr %cp, align 8
  %call43 = call i32 @TIFFFetchFloatArray(ptr noundef %43, ptr noundef %44, ptr noundef %45)
  %tobool44 = icmp ne i32 %call43, 0
  br label %land.end45

land.end45:                                       ; preds = %land.rhs42, %sw.bb37
  %46 = phi i1 [ false, %sw.bb37 ], [ %tobool44, %land.rhs42 ]
  %land.ext46 = zext i1 %46 to i32
  store i32 %land.ext46, ptr %ok, align 4
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.then
  %47 = load ptr, ptr %tif.addr, align 8
  %48 = load ptr, ptr %dp.addr, align 8
  %tdir_count48 = getelementptr inbounds %struct.TIFFDirEntry, ptr %48, i32 0, i32 2
  %49 = load i64, ptr %tdir_count48, align 8
  %mul49 = mul i64 %49, 8
  %call50 = call ptr @CheckMalloc(ptr noundef %47, i64 noundef %mul49, ptr noundef @TIFFFetchNormalTag.mesg)
  store ptr %call50, ptr %cp, align 8
  %50 = load ptr, ptr %cp, align 8
  %tobool51 = icmp ne ptr %50, null
  br i1 %tobool51, label %land.rhs52, label %land.end55

land.rhs52:                                       ; preds = %sw.bb47
  %51 = load ptr, ptr %tif.addr, align 8
  %52 = load ptr, ptr %dp.addr, align 8
  %53 = load ptr, ptr %cp, align 8
  %call53 = call i32 @TIFFFetchDoubleArray(ptr noundef %51, ptr noundef %52, ptr noundef %53)
  %tobool54 = icmp ne i32 %call53, 0
  br label %land.end55

land.end55:                                       ; preds = %land.rhs52, %sw.bb47
  %54 = phi i1 [ false, %sw.bb47 ], [ %tobool54, %land.rhs52 ]
  %land.ext56 = zext i1 %54 to i32
  store i32 %land.ext56, ptr %ok, align 4
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.then, %if.then
  %55 = load ptr, ptr %tif.addr, align 8
  %56 = load ptr, ptr %dp.addr, align 8
  %tdir_count58 = getelementptr inbounds %struct.TIFFDirEntry, ptr %56, i32 0, i32 2
  %57 = load i64, ptr %tdir_count58, align 8
  %add = add i64 %57, 1
  %call59 = call ptr @CheckMalloc(ptr noundef %55, i64 noundef %add, ptr noundef @TIFFFetchNormalTag.mesg)
  store ptr %call59, ptr %cp, align 8
  %58 = load ptr, ptr %cp, align 8
  %tobool60 = icmp ne ptr %58, null
  br i1 %tobool60, label %land.rhs61, label %land.end64

land.rhs61:                                       ; preds = %sw.bb57
  %59 = load ptr, ptr %tif.addr, align 8
  %60 = load ptr, ptr %dp.addr, align 8
  %61 = load ptr, ptr %cp, align 8
  %call62 = call i64 @TIFFFetchString(ptr noundef %59, ptr noundef %60, ptr noundef %61)
  %tobool63 = icmp ne i64 %call62, 0
  br label %land.end64

land.end64:                                       ; preds = %land.rhs61, %sw.bb57
  %62 = phi i1 [ false, %sw.bb57 ], [ %tobool63, %land.rhs61 ]
  %land.ext65 = zext i1 %62 to i32
  store i32 %land.ext65, ptr %ok, align 4
  %cmp66 = icmp ne i32 %land.ext65, 0
  br i1 %cmp66, label %if.then68, label %if.end

if.then68:                                        ; preds = %land.end64
  %63 = load ptr, ptr %cp, align 8
  %64 = load ptr, ptr %dp.addr, align 8
  %tdir_count69 = getelementptr inbounds %struct.TIFFDirEntry, ptr %64, i32 0, i32 2
  %65 = load i64, ptr %tdir_count69, align 8
  %arrayidx = getelementptr inbounds i8, ptr %63, i64 %65
  store i8 0, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then68, %land.end64
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.end, %land.end55, %land.end45, %land.end35, %land.end25, %land.end15, %land.end
  %66 = load i32, ptr %ok, align 4
  %tobool70 = icmp ne i32 %66, 0
  br i1 %tobool70, label %if.then71, label %if.end81

if.then71:                                        ; preds = %sw.epilog
  %67 = load ptr, ptr %fip, align 8
  %field_passcount = getelementptr inbounds %struct.TIFFFieldInfo, ptr %67, i32 0, i32 6
  %68 = load i8, ptr %field_passcount, align 1
  %conv72 = zext i8 %68 to i32
  %tobool73 = icmp ne i32 %conv72, 0
  br i1 %tobool73, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then71
  %69 = load ptr, ptr %tif.addr, align 8
  %70 = load ptr, ptr %dp.addr, align 8
  %tdir_tag74 = getelementptr inbounds %struct.TIFFDirEntry, ptr %70, i32 0, i32 0
  %71 = load i16, ptr %tdir_tag74, align 8
  %conv75 = zext i16 %71 to i64
  %72 = load ptr, ptr %dp.addr, align 8
  %tdir_count76 = getelementptr inbounds %struct.TIFFDirEntry, ptr %72, i32 0, i32 2
  %73 = load i64, ptr %tdir_count76, align 8
  %74 = load ptr, ptr %cp, align 8
  %call77 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %69, i64 noundef %conv75, i64 noundef %73, ptr noundef %74)
  br label %cond.end

cond.false:                                       ; preds = %if.then71
  %75 = load ptr, ptr %tif.addr, align 8
  %76 = load ptr, ptr %dp.addr, align 8
  %tdir_tag78 = getelementptr inbounds %struct.TIFFDirEntry, ptr %76, i32 0, i32 0
  %77 = load i16, ptr %tdir_tag78, align 8
  %conv79 = zext i16 %77 to i64
  %78 = load ptr, ptr %cp, align 8
  %call80 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %75, i64 noundef %conv79, ptr noundef %78)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call77, %cond.true ], [ %call80, %cond.false ]
  store i32 %cond, ptr %ok, align 4
  br label %if.end81

if.end81:                                         ; preds = %cond.end, %sw.epilog
  %79 = load ptr, ptr %cp, align 8
  %cmp82 = icmp ne ptr %79, null
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %if.end81
  %80 = load ptr, ptr %cp, align 8
  call void @_TIFFfree(ptr noundef %80)
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %if.end81
  br label %if.end234

if.else:                                          ; preds = %entry
  %81 = load ptr, ptr %tif.addr, align 8
  %82 = load ptr, ptr %dp.addr, align 8
  %call86 = call i32 @CheckDirCount(ptr noundef %81, ptr noundef %82, i64 noundef 1)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.then88, label %if.end233

if.then88:                                        ; preds = %if.else
  %83 = load ptr, ptr %dp.addr, align 8
  %tdir_type89 = getelementptr inbounds %struct.TIFFDirEntry, ptr %83, i32 0, i32 1
  %84 = load i16, ptr %tdir_type89, align 2
  %conv90 = zext i16 %84 to i32
  switch i32 %conv90, label %sw.epilog232 [
    i32 1, label %sw.bb91
    i32 6, label %sw.bb91
    i32 3, label %sw.bb91
    i32 8, label %sw.bb91
    i32 4, label %sw.bb131
    i32 9, label %sw.bb131
    i32 5, label %sw.bb172
    i32 10, label %sw.bb172
    i32 11, label %sw.bb172
    i32 12, label %sw.bb198
    i32 2, label %sw.bb219
    i32 7, label %sw.bb219
  ]

sw.bb91:                                          ; preds = %if.then88, %if.then88, %if.then88, %if.then88
  %85 = load ptr, ptr %fip, align 8
  %field_type = getelementptr inbounds %struct.TIFFFieldInfo, ptr %85, i32 0, i32 3
  %86 = load i32, ptr %field_type, align 4
  store i32 %86, ptr %type, align 4
  %87 = load i32, ptr %type, align 4
  %cmp92 = icmp ne i32 %87, 4
  br i1 %cmp92, label %land.lhs.true, label %if.end130

land.lhs.true:                                    ; preds = %sw.bb91
  %88 = load i32, ptr %type, align 4
  %cmp94 = icmp ne i32 %88, 9
  br i1 %cmp94, label %if.then96, label %if.end130

if.then96:                                        ; preds = %land.lhs.true
  %89 = load ptr, ptr %tif.addr, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %89, i32 0, i32 7
  %tiff_magic = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header, i32 0, i32 0
  %90 = load i16, ptr %tiff_magic, align 8
  %conv97 = zext i16 %90 to i32
  %cmp98 = icmp eq i32 %conv97, 19789
  br i1 %cmp98, label %cond.true100, label %cond.false106

cond.true100:                                     ; preds = %if.then96
  %91 = load ptr, ptr %dp.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %91, i32 0, i32 3
  %92 = load i64, ptr %tdir_offset, align 8
  %93 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift = getelementptr inbounds %struct.tiff, ptr %93, i32 0, i32 9
  %94 = load ptr, ptr %tif_typeshift, align 8
  %95 = load ptr, ptr %dp.addr, align 8
  %tdir_type101 = getelementptr inbounds %struct.TIFFDirEntry, ptr %95, i32 0, i32 1
  %96 = load i16, ptr %tdir_type101, align 2
  %idxprom = zext i16 %96 to i64
  %arrayidx102 = getelementptr inbounds i32, ptr %94, i64 %idxprom
  %97 = load i32, ptr %arrayidx102, align 4
  %sh_prom = zext i32 %97 to i64
  %shr = lshr i64 %92, %sh_prom
  %98 = load ptr, ptr %tif.addr, align 8
  %tif_typemask = getelementptr inbounds %struct.tiff, ptr %98, i32 0, i32 10
  %99 = load ptr, ptr %tif_typemask, align 8
  %100 = load ptr, ptr %dp.addr, align 8
  %tdir_type103 = getelementptr inbounds %struct.TIFFDirEntry, ptr %100, i32 0, i32 1
  %101 = load i16, ptr %tdir_type103, align 2
  %idxprom104 = zext i16 %101 to i64
  %arrayidx105 = getelementptr inbounds i64, ptr %99, i64 %idxprom104
  %102 = load i64, ptr %arrayidx105, align 8
  %and = and i64 %shr, %102
  br label %cond.end113

cond.false106:                                    ; preds = %if.then96
  %103 = load ptr, ptr %dp.addr, align 8
  %tdir_offset107 = getelementptr inbounds %struct.TIFFDirEntry, ptr %103, i32 0, i32 3
  %104 = load i64, ptr %tdir_offset107, align 8
  %105 = load ptr, ptr %tif.addr, align 8
  %tif_typemask108 = getelementptr inbounds %struct.tiff, ptr %105, i32 0, i32 10
  %106 = load ptr, ptr %tif_typemask108, align 8
  %107 = load ptr, ptr %dp.addr, align 8
  %tdir_type109 = getelementptr inbounds %struct.TIFFDirEntry, ptr %107, i32 0, i32 1
  %108 = load i16, ptr %tdir_type109, align 2
  %idxprom110 = zext i16 %108 to i64
  %arrayidx111 = getelementptr inbounds i64, ptr %106, i64 %idxprom110
  %109 = load i64, ptr %arrayidx111, align 8
  %and112 = and i64 %104, %109
  br label %cond.end113

cond.end113:                                      ; preds = %cond.false106, %cond.true100
  %cond114 = phi i64 [ %and, %cond.true100 ], [ %and112, %cond.false106 ]
  %conv115 = trunc i64 %cond114 to i16
  store i16 %conv115, ptr %v, align 2
  %110 = load ptr, ptr %fip, align 8
  %field_passcount116 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %110, i32 0, i32 6
  %111 = load i8, ptr %field_passcount116, align 1
  %conv117 = zext i8 %111 to i32
  %tobool118 = icmp ne i32 %conv117, 0
  br i1 %tobool118, label %cond.true119, label %cond.false123

cond.true119:                                     ; preds = %cond.end113
  %112 = load ptr, ptr %tif.addr, align 8
  %113 = load ptr, ptr %dp.addr, align 8
  %tdir_tag120 = getelementptr inbounds %struct.TIFFDirEntry, ptr %113, i32 0, i32 0
  %114 = load i16, ptr %tdir_tag120, align 8
  %conv121 = zext i16 %114 to i64
  %call122 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %112, i64 noundef %conv121, i32 noundef 1, ptr noundef %v)
  br label %cond.end128

cond.false123:                                    ; preds = %cond.end113
  %115 = load ptr, ptr %tif.addr, align 8
  %116 = load ptr, ptr %dp.addr, align 8
  %tdir_tag124 = getelementptr inbounds %struct.TIFFDirEntry, ptr %116, i32 0, i32 0
  %117 = load i16, ptr %tdir_tag124, align 8
  %conv125 = zext i16 %117 to i64
  %118 = load i16, ptr %v, align 2
  %conv126 = zext i16 %118 to i32
  %call127 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %115, i64 noundef %conv125, i32 noundef %conv126)
  br label %cond.end128

cond.end128:                                      ; preds = %cond.false123, %cond.true119
  %cond129 = phi i32 [ %call122, %cond.true119 ], [ %call127, %cond.false123 ]
  store i32 %cond129, ptr %ok, align 4
  br label %sw.epilog232

if.end130:                                        ; preds = %land.lhs.true, %sw.bb91
  br label %sw.bb131

sw.bb131:                                         ; preds = %if.then88, %if.then88, %if.end130
  %119 = load ptr, ptr %tif.addr, align 8
  %tif_header132 = getelementptr inbounds %struct.tiff, ptr %119, i32 0, i32 7
  %tiff_magic133 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header132, i32 0, i32 0
  %120 = load i16, ptr %tiff_magic133, align 8
  %conv134 = zext i16 %120 to i32
  %cmp135 = icmp eq i32 %conv134, 19789
  br i1 %cmp135, label %cond.true137, label %cond.false150

cond.true137:                                     ; preds = %sw.bb131
  %121 = load ptr, ptr %dp.addr, align 8
  %tdir_offset138 = getelementptr inbounds %struct.TIFFDirEntry, ptr %121, i32 0, i32 3
  %122 = load i64, ptr %tdir_offset138, align 8
  %123 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift139 = getelementptr inbounds %struct.tiff, ptr %123, i32 0, i32 9
  %124 = load ptr, ptr %tif_typeshift139, align 8
  %125 = load ptr, ptr %dp.addr, align 8
  %tdir_type140 = getelementptr inbounds %struct.TIFFDirEntry, ptr %125, i32 0, i32 1
  %126 = load i16, ptr %tdir_type140, align 2
  %idxprom141 = zext i16 %126 to i64
  %arrayidx142 = getelementptr inbounds i32, ptr %124, i64 %idxprom141
  %127 = load i32, ptr %arrayidx142, align 4
  %sh_prom143 = zext i32 %127 to i64
  %shr144 = lshr i64 %122, %sh_prom143
  %128 = load ptr, ptr %tif.addr, align 8
  %tif_typemask145 = getelementptr inbounds %struct.tiff, ptr %128, i32 0, i32 10
  %129 = load ptr, ptr %tif_typemask145, align 8
  %130 = load ptr, ptr %dp.addr, align 8
  %tdir_type146 = getelementptr inbounds %struct.TIFFDirEntry, ptr %130, i32 0, i32 1
  %131 = load i16, ptr %tdir_type146, align 2
  %idxprom147 = zext i16 %131 to i64
  %arrayidx148 = getelementptr inbounds i64, ptr %129, i64 %idxprom147
  %132 = load i64, ptr %arrayidx148, align 8
  %and149 = and i64 %shr144, %132
  br label %cond.end157

cond.false150:                                    ; preds = %sw.bb131
  %133 = load ptr, ptr %dp.addr, align 8
  %tdir_offset151 = getelementptr inbounds %struct.TIFFDirEntry, ptr %133, i32 0, i32 3
  %134 = load i64, ptr %tdir_offset151, align 8
  %135 = load ptr, ptr %tif.addr, align 8
  %tif_typemask152 = getelementptr inbounds %struct.tiff, ptr %135, i32 0, i32 10
  %136 = load ptr, ptr %tif_typemask152, align 8
  %137 = load ptr, ptr %dp.addr, align 8
  %tdir_type153 = getelementptr inbounds %struct.TIFFDirEntry, ptr %137, i32 0, i32 1
  %138 = load i16, ptr %tdir_type153, align 2
  %idxprom154 = zext i16 %138 to i64
  %arrayidx155 = getelementptr inbounds i64, ptr %136, i64 %idxprom154
  %139 = load i64, ptr %arrayidx155, align 8
  %and156 = and i64 %134, %139
  br label %cond.end157

cond.end157:                                      ; preds = %cond.false150, %cond.true137
  %cond158 = phi i64 [ %and149, %cond.true137 ], [ %and156, %cond.false150 ]
  store i64 %cond158, ptr %v32, align 8
  %140 = load ptr, ptr %fip, align 8
  %field_passcount159 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %140, i32 0, i32 6
  %141 = load i8, ptr %field_passcount159, align 1
  %conv160 = zext i8 %141 to i32
  %tobool161 = icmp ne i32 %conv160, 0
  br i1 %tobool161, label %cond.true162, label %cond.false166

cond.true162:                                     ; preds = %cond.end157
  %142 = load ptr, ptr %tif.addr, align 8
  %143 = load ptr, ptr %dp.addr, align 8
  %tdir_tag163 = getelementptr inbounds %struct.TIFFDirEntry, ptr %143, i32 0, i32 0
  %144 = load i16, ptr %tdir_tag163, align 8
  %conv164 = zext i16 %144 to i64
  %call165 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %142, i64 noundef %conv164, i32 noundef 1, ptr noundef %v32)
  br label %cond.end170

cond.false166:                                    ; preds = %cond.end157
  %145 = load ptr, ptr %tif.addr, align 8
  %146 = load ptr, ptr %dp.addr, align 8
  %tdir_tag167 = getelementptr inbounds %struct.TIFFDirEntry, ptr %146, i32 0, i32 0
  %147 = load i16, ptr %tdir_tag167, align 8
  %conv168 = zext i16 %147 to i64
  %148 = load i64, ptr %v32, align 8
  %call169 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %145, i64 noundef %conv168, i64 noundef %148)
  br label %cond.end170

cond.end170:                                      ; preds = %cond.false166, %cond.true162
  %cond171 = phi i32 [ %call165, %cond.true162 ], [ %call169, %cond.false166 ]
  store i32 %cond171, ptr %ok, align 4
  br label %sw.epilog232

sw.bb172:                                         ; preds = %if.then88, %if.then88, %if.then88
  %149 = load ptr, ptr %dp.addr, align 8
  %tdir_type174 = getelementptr inbounds %struct.TIFFDirEntry, ptr %149, i32 0, i32 1
  %150 = load i16, ptr %tdir_type174, align 2
  %conv175 = zext i16 %150 to i32
  %cmp176 = icmp eq i32 %conv175, 11
  br i1 %cmp176, label %cond.true178, label %cond.false180

cond.true178:                                     ; preds = %sw.bb172
  %151 = load ptr, ptr %tif.addr, align 8
  %152 = load ptr, ptr %dp.addr, align 8
  %call179 = call float @TIFFFetchFloat(ptr noundef %151, ptr noundef %152)
  br label %cond.end182

cond.false180:                                    ; preds = %sw.bb172
  %153 = load ptr, ptr %tif.addr, align 8
  %154 = load ptr, ptr %dp.addr, align 8
  %call181 = call float @TIFFFetchRational(ptr noundef %153, ptr noundef %154)
  br label %cond.end182

cond.end182:                                      ; preds = %cond.false180, %cond.true178
  %cond183 = phi float [ %call179, %cond.true178 ], [ %call181, %cond.false180 ]
  store float %cond183, ptr %v173, align 4
  %155 = load ptr, ptr %fip, align 8
  %field_passcount184 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %155, i32 0, i32 6
  %156 = load i8, ptr %field_passcount184, align 1
  %conv185 = zext i8 %156 to i32
  %tobool186 = icmp ne i32 %conv185, 0
  br i1 %tobool186, label %cond.true187, label %cond.false191

cond.true187:                                     ; preds = %cond.end182
  %157 = load ptr, ptr %tif.addr, align 8
  %158 = load ptr, ptr %dp.addr, align 8
  %tdir_tag188 = getelementptr inbounds %struct.TIFFDirEntry, ptr %158, i32 0, i32 0
  %159 = load i16, ptr %tdir_tag188, align 8
  %conv189 = zext i16 %159 to i64
  %call190 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %157, i64 noundef %conv189, i32 noundef 1, ptr noundef %v173)
  br label %cond.end196

cond.false191:                                    ; preds = %cond.end182
  %160 = load ptr, ptr %tif.addr, align 8
  %161 = load ptr, ptr %dp.addr, align 8
  %tdir_tag192 = getelementptr inbounds %struct.TIFFDirEntry, ptr %161, i32 0, i32 0
  %162 = load i16, ptr %tdir_tag192, align 8
  %conv193 = zext i16 %162 to i64
  %163 = load float, ptr %v173, align 4
  %conv194 = fpext float %163 to double
  %call195 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %160, i64 noundef %conv193, double noundef %conv194)
  br label %cond.end196

cond.end196:                                      ; preds = %cond.false191, %cond.true187
  %cond197 = phi i32 [ %call190, %cond.true187 ], [ %call195, %cond.false191 ]
  store i32 %cond197, ptr %ok, align 4
  br label %sw.epilog232

sw.bb198:                                         ; preds = %if.then88
  %164 = load ptr, ptr %tif.addr, align 8
  %165 = load ptr, ptr %dp.addr, align 8
  %call200 = call i32 @TIFFFetchDoubleArray(ptr noundef %164, ptr noundef %165, ptr noundef %v199)
  %tobool201 = icmp ne i32 %call200, 0
  br i1 %tobool201, label %land.rhs202, label %land.end217

land.rhs202:                                      ; preds = %sw.bb198
  %166 = load ptr, ptr %fip, align 8
  %field_passcount203 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %166, i32 0, i32 6
  %167 = load i8, ptr %field_passcount203, align 1
  %conv204 = zext i8 %167 to i32
  %tobool205 = icmp ne i32 %conv204, 0
  br i1 %tobool205, label %cond.true206, label %cond.false210

cond.true206:                                     ; preds = %land.rhs202
  %168 = load ptr, ptr %tif.addr, align 8
  %169 = load ptr, ptr %dp.addr, align 8
  %tdir_tag207 = getelementptr inbounds %struct.TIFFDirEntry, ptr %169, i32 0, i32 0
  %170 = load i16, ptr %tdir_tag207, align 8
  %conv208 = zext i16 %170 to i64
  %call209 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %168, i64 noundef %conv208, i32 noundef 1, ptr noundef %v199)
  br label %cond.end214

cond.false210:                                    ; preds = %land.rhs202
  %171 = load ptr, ptr %tif.addr, align 8
  %172 = load ptr, ptr %dp.addr, align 8
  %tdir_tag211 = getelementptr inbounds %struct.TIFFDirEntry, ptr %172, i32 0, i32 0
  %173 = load i16, ptr %tdir_tag211, align 8
  %conv212 = zext i16 %173 to i64
  %174 = load double, ptr %v199, align 8
  %call213 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %171, i64 noundef %conv212, double noundef %174)
  br label %cond.end214

cond.end214:                                      ; preds = %cond.false210, %cond.true206
  %cond215 = phi i32 [ %call209, %cond.true206 ], [ %call213, %cond.false210 ]
  %tobool216 = icmp ne i32 %cond215, 0
  br label %land.end217

land.end217:                                      ; preds = %cond.end214, %sw.bb198
  %175 = phi i1 [ false, %sw.bb198 ], [ %tobool216, %cond.end214 ]
  %land.ext218 = zext i1 %175 to i32
  store i32 %land.ext218, ptr %ok, align 4
  br label %sw.epilog232

sw.bb219:                                         ; preds = %if.then88, %if.then88
  %176 = load ptr, ptr %tif.addr, align 8
  %177 = load ptr, ptr %dp.addr, align 8
  %arraydecay = getelementptr inbounds [2 x i8], ptr %c, i64 0, i64 0
  %call220 = call i64 @TIFFFetchString(ptr noundef %176, ptr noundef %177, ptr noundef %arraydecay)
  %cmp221 = icmp ne i64 %call220, 0
  %conv222 = zext i1 %cmp221 to i32
  store i32 %conv222, ptr %ok, align 4
  %cmp223 = icmp ne i32 %conv222, 0
  br i1 %cmp223, label %if.then225, label %if.end231

if.then225:                                       ; preds = %sw.bb219
  %arrayidx226 = getelementptr inbounds [2 x i8], ptr %c, i64 0, i64 1
  store i8 0, ptr %arrayidx226, align 1
  %178 = load ptr, ptr %tif.addr, align 8
  %179 = load ptr, ptr %dp.addr, align 8
  %tdir_tag227 = getelementptr inbounds %struct.TIFFDirEntry, ptr %179, i32 0, i32 0
  %180 = load i16, ptr %tdir_tag227, align 8
  %conv228 = zext i16 %180 to i64
  %arraydecay229 = getelementptr inbounds [2 x i8], ptr %c, i64 0, i64 0
  %call230 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %178, i64 noundef %conv228, ptr noundef %arraydecay229)
  store i32 %call230, ptr %ok, align 4
  br label %if.end231

if.end231:                                        ; preds = %if.then225, %sw.bb219
  br label %sw.epilog232

sw.epilog232:                                     ; preds = %if.then88, %if.end231, %land.end217, %cond.end196, %cond.end170, %cond.end128
  br label %if.end233

if.end233:                                        ; preds = %sw.epilog232, %if.else
  br label %if.end234

if.end234:                                        ; preds = %if.end233, %if.end85
  %181 = load i32, ptr %ok, align 4
  ret i32 %181
}

declare i32 @TIFFReassignTagToIgnore(i32 noundef, i32 noundef) #1

declare void @TIFFWarning(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @CheckDirCount(ptr noundef %tif, ptr noundef %dir, i64 noundef %count) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i64 %count, ptr %count.addr, align 8
  %0 = load i64, ptr %count.addr, align 8
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i32 0, i32 2
  %2 = load i64, ptr %tdir_count, align 8
  %cmp = icmp ne i64 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %tif_name, align 8
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %6, i32 0, i32 0
  %7 = load i16, ptr %tdir_tag, align 8
  %conv = zext i16 %7 to i64
  %call = call ptr @_TIFFFieldWithTag(ptr noundef %5, i64 noundef %conv)
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call, i32 0, i32 7
  %8 = load ptr, ptr %field_name, align 8
  %9 = load ptr, ptr %dir.addr, align 8
  %tdir_count1 = getelementptr inbounds %struct.TIFFDirEntry, ptr %9, i32 0, i32 2
  %10 = load i64, ptr %tdir_count1, align 8
  %11 = load i64, ptr %count.addr, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %4, ptr noundef @.str.19, ptr noundef %8, i64 noundef %10, i64 noundef %11)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
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
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir, i32 0, i32 15
  %1 = load i16, ptr %td_samplesperpixel, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %samples, align 4
  store i32 0, ptr %status, align 4
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load ptr, ptr %dir.addr, align 8
  %4 = load i32, ptr %samples, align 4
  %conv1 = sext i32 %4 to i64
  %call = call i32 @CheckDirCount(ptr noundef %2, ptr noundef %3, i64 noundef %conv1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end29

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [10 x i16], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %v, align 8
  %5 = load i32, ptr %samples, align 4
  %conv2 = sext i32 %5 to i64
  %cmp = icmp ugt i64 %conv2, 10
  br i1 %cmp, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %6 = load i32, ptr %samples, align 4
  %conv5 = sext i32 %6 to i64
  %mul = mul i64 %conv5, 2
  %call6 = call ptr @_TIFFmalloc(i64 noundef %mul)
  store ptr %call6, ptr %v, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %7 = load ptr, ptr %tif.addr, align 8
  %8 = load ptr, ptr %dir.addr, align 8
  %9 = load ptr, ptr %v, align 8
  %call7 = call i32 @TIFFFetchShortArray(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then9, label %if.end23

if.then9:                                         ; preds = %if.end
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then9
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %samples, align 4
  %cmp10 = icmp slt i32 %10, %11
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %v, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i16, ptr %12, i64 %idxprom
  %14 = load i16, ptr %arrayidx, align 2
  %conv12 = zext i16 %14 to i32
  %15 = load ptr, ptr %v, align 8
  %arrayidx13 = getelementptr inbounds i16, ptr %15, i64 0
  %16 = load i16, ptr %arrayidx13, align 2
  %conv14 = zext i16 %16 to i32
  %cmp15 = icmp ne i32 %conv12, %conv14
  br i1 %cmp15, label %if.then17, label %if.end20

if.then17:                                        ; preds = %for.body
  %17 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %tif_name, align 8
  %19 = load ptr, ptr %tif.addr, align 8
  %20 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %20, i32 0, i32 0
  %21 = load i16, ptr %tdir_tag, align 8
  %conv18 = zext i16 %21 to i64
  %call19 = call ptr @_TIFFFieldWithTag(ptr noundef %19, i64 noundef %conv18)
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call19, i32 0, i32 7
  %22 = load ptr, ptr %field_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %18, ptr noundef @.str.23, ptr noundef %22)
  br label %bad

if.end20:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %23 = load i32, ptr %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %24 = load ptr, ptr %v, align 8
  %arrayidx21 = getelementptr inbounds i16, ptr %24, i64 0
  %25 = load i16, ptr %arrayidx21, align 2
  %conv22 = zext i16 %25 to i32
  %26 = load ptr, ptr %pl.addr, align 8
  store i32 %conv22, ptr %26, align 4
  store i32 1, ptr %status, align 4
  br label %if.end23

if.end23:                                         ; preds = %for.end, %if.end
  br label %bad

bad:                                              ; preds = %if.end23, %if.then17
  %27 = load ptr, ptr %v, align 8
  %arraydecay24 = getelementptr inbounds [10 x i16], ptr %buf, i64 0, i64 0
  %cmp25 = icmp ne ptr %27, %arraydecay24
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %bad
  %28 = load ptr, ptr %v, align 8
  call void @_TIFFfree(ptr noundef %28)
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %bad
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %entry
  %29 = load i32, ptr %status, align 4
  ret i32 %29
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
  %arraydecay = getelementptr inbounds [10 x i16], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %v, align 8
  %0 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %tdir_count, align 8
  %cmp = icmp ugt i64 %1, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dir.addr, align 8
  %tdir_count1 = getelementptr inbounds %struct.TIFFDirEntry, ptr %2, i32 0, i32 2
  %3 = load i64, ptr %tdir_count1, align 8
  %mul = mul i64 %3, 2
  %call = call ptr @_TIFFmalloc(i64 noundef %mul)
  store ptr %call, ptr %v, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %4, i32 0, i32 1
  %5 = load i16, ptr %tdir_type, align 2
  %conv = zext i16 %5 to i32
  %cmp2 = icmp eq i32 %conv, 1
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %tif.addr, align 8
  %7 = load ptr, ptr %dir.addr, align 8
  %8 = load ptr, ptr %v, align 8
  %call5 = call i32 @TIFFFetchByteArray(ptr noundef %6, ptr noundef %7, ptr noundef %8)
  store i32 %call5, ptr %status, align 4
  br label %if.end7

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %tif.addr, align 8
  %10 = load ptr, ptr %dir.addr, align 8
  %11 = load ptr, ptr %v, align 8
  %call6 = call i32 @TIFFFetchShortArray(ptr noundef %9, ptr noundef %10, ptr noundef %11)
  store i32 %call6, ptr %status, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %12 = load i32, ptr %status, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end7
  %13 = load ptr, ptr %tif.addr, align 8
  %14 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %14, i32 0, i32 0
  %15 = load i16, ptr %tdir_tag, align 8
  %conv9 = zext i16 %15 to i64
  %16 = load ptr, ptr %dir.addr, align 8
  %tdir_count10 = getelementptr inbounds %struct.TIFFDirEntry, ptr %16, i32 0, i32 2
  %17 = load i64, ptr %tdir_count10, align 8
  %18 = load ptr, ptr %v, align 8
  %call11 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %13, i64 noundef %conv9, i64 noundef %17, ptr noundef %18)
  store i32 %call11, ptr %status, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end7
  %19 = load ptr, ptr %v, align 8
  %arraydecay13 = getelementptr inbounds [10 x i16], ptr %buf, i64 0, i64 0
  %cmp14 = icmp ne ptr %19, %arraydecay13
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  %20 = load ptr, ptr %v, align 8
  call void @_TIFFfree(ptr noundef %20)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end12
  %21 = load i32, ptr %status, align 4
  ret i32 %21
}

; Function Attrs: nounwind ssp uwtable
define internal void @MissingRequired(ptr noundef %tif, ptr noundef %tagname) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %tagname.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %tagname, ptr %tagname.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %tif_name, align 8
  %2 = load ptr, ptr %tagname.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %1, ptr noundef @.str.18, ptr noundef %2)
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
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir, i32 0, i32 15
  %1 = load i16, ptr %td_samplesperpixel, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %samples, align 4
  store i32 0, ptr %status, align 4
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load ptr, ptr %dir.addr, align 8
  %4 = load i32, ptr %samples, align 4
  %conv1 = sext i32 %4 to i64
  %call = call i32 @CheckDirCount(ptr noundef %2, ptr noundef %3, i64 noundef %conv1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [10 x double], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %v, align 8
  %5 = load i32, ptr %samples, align 4
  %conv2 = sext i32 %5 to i64
  %cmp = icmp ugt i64 %conv2, 10
  br i1 %cmp, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %6 = load i32, ptr %samples, align 4
  %conv5 = sext i32 %6 to i64
  %mul = mul i64 %conv5, 8
  %call6 = call ptr @_TIFFmalloc(i64 noundef %mul)
  store ptr %call6, ptr %v, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %7 = load ptr, ptr %tif.addr, align 8
  %8 = load ptr, ptr %dir.addr, align 8
  %9 = load ptr, ptr %v, align 8
  %call7 = call i32 @TIFFFetchAnyArray(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then9, label %if.end20

if.then9:                                         ; preds = %if.end
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then9
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %samples, align 4
  %cmp10 = icmp slt i32 %10, %11
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %v, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds double, ptr %12, i64 %idxprom
  %14 = load double, ptr %arrayidx, align 8
  %15 = load ptr, ptr %v, align 8
  %arrayidx12 = getelementptr inbounds double, ptr %15, i64 0
  %16 = load double, ptr %arrayidx12, align 8
  %cmp13 = fcmp une double %14, %16
  br i1 %cmp13, label %if.then15, label %if.end18

if.then15:                                        ; preds = %for.body
  %17 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %tif_name, align 8
  %19 = load ptr, ptr %tif.addr, align 8
  %20 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %20, i32 0, i32 0
  %21 = load i16, ptr %tdir_tag, align 8
  %conv16 = zext i16 %21 to i64
  %call17 = call ptr @_TIFFFieldWithTag(ptr noundef %19, i64 noundef %conv16)
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call17, i32 0, i32 7
  %22 = load ptr, ptr %field_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %18, ptr noundef @.str.23, ptr noundef %22)
  br label %bad

if.end18:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end18
  %23 = load i32, ptr %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %24 = load ptr, ptr %v, align 8
  %arrayidx19 = getelementptr inbounds double, ptr %24, i64 0
  %25 = load double, ptr %arrayidx19, align 8
  %26 = load ptr, ptr %pl.addr, align 8
  store double %25, ptr %26, align 8
  store i32 1, ptr %status, align 4
  br label %if.end20

if.end20:                                         ; preds = %for.end, %if.end
  br label %bad

bad:                                              ; preds = %if.end20, %if.then15
  %27 = load ptr, ptr %v, align 8
  %arraydecay21 = getelementptr inbounds [10 x double], ptr %buf, i64 0, i64 0
  %cmp22 = icmp ne ptr %27, %arraydecay21
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %bad
  %28 = load ptr, ptr %v, align 8
  call void @_TIFFfree(ptr noundef %28)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %bad
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %entry
  %29 = load i32, ptr %status, align 4
  ret i32 %29
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
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load ptr, ptr %dir.addr, align 8
  %2 = load i64, ptr %nstrips.addr, align 8
  %call = call i32 @CheckDirCount(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %lpp.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load i64, ptr %nstrips.addr, align 8
  %mul = mul i64 %6, 8
  %call1 = call ptr @CheckMalloc(ptr noundef %5, i64 noundef %mul, ptr noundef @.str.25)
  %7 = load ptr, ptr %lpp.addr, align 8
  store ptr %call1, ptr %7, align 8
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %8 = load ptr, ptr %lpp.addr, align 8
  %9 = load ptr, ptr %8, align 8
  store ptr %9, ptr %lp, align 8
  %10 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %10, i32 0, i32 1
  %11 = load i16, ptr %tdir_type, align 2
  %conv = zext i16 %11 to i32
  %cmp5 = icmp eq i32 %conv, 3
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  %12 = load ptr, ptr %tif.addr, align 8
  %13 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %13, i32 0, i32 2
  %14 = load i64, ptr %tdir_count, align 8
  %mul8 = mul i64 %14, 2
  %call9 = call ptr @CheckMalloc(ptr noundef %12, i64 noundef %mul8, ptr noundef @.str.26)
  store ptr %call9, ptr %dp, align 8
  %15 = load ptr, ptr %dp, align 8
  %cmp10 = icmp eq ptr %15, null
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then7
  store i32 0, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.then7
  %16 = load ptr, ptr %tif.addr, align 8
  %17 = load ptr, ptr %dir.addr, align 8
  %18 = load ptr, ptr %dp, align 8
  %call14 = call i32 @TIFFFetchShortArray(ptr noundef %16, ptr noundef %17, ptr noundef %18)
  store i32 %call14, ptr %status, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end22

if.then17:                                        ; preds = %if.end13
  %19 = load ptr, ptr %dp, align 8
  store ptr %19, ptr %wp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then17
  %20 = load i64, ptr %nstrips.addr, align 8
  %dec = add nsw i64 %20, -1
  store i64 %dec, ptr %nstrips.addr, align 8
  %cmp18 = icmp sgt i64 %20, 0
  br i1 %cmp18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load ptr, ptr %wp, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %21, i32 1
  store ptr %incdec.ptr, ptr %wp, align 8
  %22 = load i16, ptr %21, align 2
  %conv20 = zext i16 %22 to i64
  %23 = load ptr, ptr %lp, align 8
  %incdec.ptr21 = getelementptr inbounds i64, ptr %23, i32 1
  store ptr %incdec.ptr21, ptr %lp, align 8
  store i64 %conv20, ptr %23, align 8
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  br label %if.end22

if.end22:                                         ; preds = %while.end, %if.end13
  %24 = load ptr, ptr %dp, align 8
  call void @_TIFFfree(ptr noundef %24)
  br label %if.end24

if.else:                                          ; preds = %if.end4
  %25 = load ptr, ptr %tif.addr, align 8
  %26 = load ptr, ptr %dir.addr, align 8
  %27 = load ptr, ptr %lp, align 8
  %call23 = call i32 @TIFFFetchLongArray(ptr noundef %25, ptr noundef %26, ptr noundef %27)
  store i32 %call23, ptr %status, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end22
  %28 = load i32, ptr %status, align 4
  store i32 %28, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end24, %if.then12, %if.then3, %if.then
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @TIFFFetchData(ptr noundef %tif, ptr noundef %dir, ptr noundef %cp) #0 {
entry:
  %retval = alloca i64, align 8
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %w = alloca i32, align 4
  %cc = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  %0 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %0, i32 0, i32 1
  %1 = load i16, ptr %tdir_type, align 2
  %idxprom = zext i16 %1 to i64
  %arrayidx = getelementptr inbounds [0 x i32], ptr @tiffDataWidth, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr %w, align 4
  %3 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %3, i32 0, i32 2
  %4 = load i64, ptr %tdir_count, align 8
  %5 = load i32, ptr %w, align 4
  %conv = sext i32 %5 to i64
  %mul = mul i64 %4, %conv
  store i64 %mul, ptr %cc, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 3
  %7 = load i64, ptr %tif_flags, align 8
  %and = and i64 %7, 2048
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 51
  %9 = load ptr, ptr %tif_seekproc, align 8
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %10, i32 0, i32 48
  %11 = load ptr, ptr %tif_clientdata, align 8
  %12 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %12, i32 0, i32 3
  %13 = load i64, ptr %tdir_offset, align 8
  %call = call i64 %9(ptr noundef %11, i64 noundef %13, i32 noundef 0)
  %14 = load ptr, ptr %dir.addr, align 8
  %tdir_offset2 = getelementptr inbounds %struct.TIFFDirEntry, ptr %14, i32 0, i32 3
  %15 = load i64, ptr %tdir_offset2, align 8
  %cmp3 = icmp eq i64 %call, %15
  br i1 %cmp3, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then
  br label %bad

if.end:                                           ; preds = %if.then
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_readproc = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 49
  %17 = load ptr, ptr %tif_readproc, align 8
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata6 = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 48
  %19 = load ptr, ptr %tif_clientdata6, align 8
  %20 = load ptr, ptr %cp.addr, align 8
  %21 = load i64, ptr %cc, align 8
  %call7 = call i64 %17(ptr noundef %19, ptr noundef %20, i64 noundef %21)
  %22 = load i64, ptr %cc, align 8
  %cmp8 = icmp eq i64 %call7, %22
  br i1 %cmp8, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end
  br label %bad

if.end11:                                         ; preds = %if.end
  br label %if.end18

if.else:                                          ; preds = %entry
  %23 = load ptr, ptr %dir.addr, align 8
  %tdir_offset12 = getelementptr inbounds %struct.TIFFDirEntry, ptr %23, i32 0, i32 3
  %24 = load i64, ptr %tdir_offset12, align 8
  %25 = load i64, ptr %cc, align 8
  %add = add i64 %24, %25
  %26 = load ptr, ptr %tif.addr, align 8
  %tif_size = getelementptr inbounds %struct.tiff, ptr %26, i32 0, i32 45
  %27 = load i64, ptr %tif_size, align 8
  %cmp13 = icmp sgt i64 %add, %27
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.else
  br label %bad

if.end16:                                         ; preds = %if.else
  %28 = load ptr, ptr %cp.addr, align 8
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_base = getelementptr inbounds %struct.tiff, ptr %29, i32 0, i32 44
  %30 = load ptr, ptr %tif_base, align 8
  %31 = load ptr, ptr %dir.addr, align 8
  %tdir_offset17 = getelementptr inbounds %struct.TIFFDirEntry, ptr %31, i32 0, i32 3
  %32 = load i64, ptr %tdir_offset17, align 8
  %add.ptr = getelementptr inbounds i8, ptr %30, i64 %32
  %33 = load i64, ptr %cc, align 8
  call void @_TIFFmemcpy(ptr noundef %28, ptr noundef %add.ptr, i64 noundef %33)
  br label %if.end18

if.end18:                                         ; preds = %if.end16, %if.end11
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_flags19 = getelementptr inbounds %struct.tiff, ptr %34, i32 0, i32 3
  %35 = load i64, ptr %tif_flags19, align 8
  %and20 = and i64 %35, 128
  %tobool = icmp ne i64 %and20, 0
  br i1 %tobool, label %if.then21, label %if.end32

if.then21:                                        ; preds = %if.end18
  %36 = load ptr, ptr %dir.addr, align 8
  %tdir_type22 = getelementptr inbounds %struct.TIFFDirEntry, ptr %36, i32 0, i32 1
  %37 = load i16, ptr %tdir_type22, align 2
  %conv23 = zext i16 %37 to i32
  switch i32 %conv23, label %sw.epilog [
    i32 3, label %sw.bb
    i32 8, label %sw.bb
    i32 4, label %sw.bb25
    i32 9, label %sw.bb25
    i32 11, label %sw.bb25
    i32 5, label %sw.bb27
    i32 10, label %sw.bb27
    i32 12, label %sw.bb30
  ]

sw.bb:                                            ; preds = %if.then21, %if.then21
  %38 = load ptr, ptr %cp.addr, align 8
  %39 = load ptr, ptr %dir.addr, align 8
  %tdir_count24 = getelementptr inbounds %struct.TIFFDirEntry, ptr %39, i32 0, i32 2
  %40 = load i64, ptr %tdir_count24, align 8
  call void @TIFFSwabArrayOfShort(ptr noundef %38, i64 noundef %40)
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.then21, %if.then21, %if.then21
  %41 = load ptr, ptr %cp.addr, align 8
  %42 = load ptr, ptr %dir.addr, align 8
  %tdir_count26 = getelementptr inbounds %struct.TIFFDirEntry, ptr %42, i32 0, i32 2
  %43 = load i64, ptr %tdir_count26, align 8
  call void @TIFFSwabArrayOfLong(ptr noundef %41, i64 noundef %43)
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.then21, %if.then21
  %44 = load ptr, ptr %cp.addr, align 8
  %45 = load ptr, ptr %dir.addr, align 8
  %tdir_count28 = getelementptr inbounds %struct.TIFFDirEntry, ptr %45, i32 0, i32 2
  %46 = load i64, ptr %tdir_count28, align 8
  %mul29 = mul i64 2, %46
  call void @TIFFSwabArrayOfLong(ptr noundef %44, i64 noundef %mul29)
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.then21
  %47 = load ptr, ptr %cp.addr, align 8
  %48 = load ptr, ptr %dir.addr, align 8
  %tdir_count31 = getelementptr inbounds %struct.TIFFDirEntry, ptr %48, i32 0, i32 2
  %49 = load i64, ptr %tdir_count31, align 8
  call void @TIFFSwabArrayOfDouble(ptr noundef %47, i64 noundef %49)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then21, %sw.bb30, %sw.bb27, %sw.bb25, %sw.bb
  br label %if.end32

if.end32:                                         ; preds = %sw.epilog, %if.end18
  %50 = load i64, ptr %cc, align 8
  store i64 %50, ptr %retval, align 8
  br label %return

bad:                                              ; preds = %if.then15, %if.then10, %if.then5
  %51 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %tif_name, align 8
  %53 = load ptr, ptr %tif.addr, align 8
  %54 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %54, i32 0, i32 0
  %55 = load i16, ptr %tdir_tag, align 8
  %conv33 = zext i16 %55 to i64
  %call34 = call ptr @_TIFFFieldWithTag(ptr noundef %53, i64 noundef %conv33)
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call34, i32 0, i32 7
  %56 = load ptr, ptr %field_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %52, ptr noundef @.str.20, ptr noundef %56)
  store i64 0, ptr %retval, align 8
  br label %return

return:                                           ; preds = %bad, %if.end32
  %57 = load i64, ptr %retval, align 8
  ret i64 %57
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
  %0 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %0, i32 0, i32 1
  %1 = load i16, ptr %tdir_type, align 2
  %conv = zext i16 %1 to i32
  switch i32 %conv, label %sw.epilog [
    i32 3, label %sw.bb
    i32 8, label %sw.bb
    i32 1, label %sw.bb1
    i32 6, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry, %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load ptr, ptr %dir.addr, align 8
  %arraydecay = getelementptr inbounds [2 x i16], ptr %v, i64 0, i64 0
  %call = call i32 @TIFFFetchShortArray(ptr noundef %2, ptr noundef %3, ptr noundef %arraydecay)
  store i32 %call, ptr %ok, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry, %entry
  %4 = load ptr, ptr %tif.addr, align 8
  %5 = load ptr, ptr %dir.addr, align 8
  %arraydecay2 = getelementptr inbounds [2 x i16], ptr %v, i64 0, i64 0
  %call3 = call i32 @TIFFFetchByteArray(ptr noundef %4, ptr noundef %5, ptr noundef %arraydecay2)
  store i32 %call3, ptr %ok, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb1, %sw.bb
  %6 = load i32, ptr %ok, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %7 = load ptr, ptr %tif.addr, align 8
  %8 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %8, i32 0, i32 0
  %9 = load i16, ptr %tdir_tag, align 8
  %conv4 = zext i16 %9 to i64
  %arrayidx = getelementptr inbounds [2 x i16], ptr %v, i64 0, i64 0
  %10 = load i16, ptr %arrayidx, align 2
  %conv5 = zext i16 %10 to i32
  %arrayidx6 = getelementptr inbounds [2 x i16], ptr %v, i64 0, i64 1
  %11 = load i16, ptr %arrayidx6, align 2
  %conv7 = zext i16 %11 to i32
  %call8 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %7, i64 noundef %conv4, i32 noundef %conv5, i32 noundef %conv7)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %12 = load i32, ptr %ok, align 4
  ret i32 %12
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFFetchRefBlackWhite(ptr noundef %tif, ptr noundef %dir) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %cp = alloca ptr, align 8
  %ok = alloca i32, align 4
  %fp = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  %0 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %0, i32 0, i32 1
  %1 = load i16, ptr %tdir_type, align 2
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load ptr, ptr %dir.addr, align 8
  %call = call i32 @TIFFFetchNormalTag(ptr noundef %2, ptr noundef %3)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %tif.addr, align 8
  %5 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i32 0, i32 2
  %6 = load i64, ptr %tdir_count, align 8
  %mul = mul i64 %6, 8
  %call2 = call ptr @CheckMalloc(ptr noundef %4, i64 noundef %mul, ptr noundef @TIFFFetchRefBlackWhite.mesg)
  store ptr %call2, ptr %cp, align 8
  %7 = load ptr, ptr %cp, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %8 = load ptr, ptr %tif.addr, align 8
  %9 = load ptr, ptr %dir.addr, align 8
  %10 = load ptr, ptr %cp, align 8
  %call3 = call i32 @TIFFFetchLongArray(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  %tobool4 = icmp ne i32 %call3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %11 = phi i1 [ false, %if.end ], [ %tobool4, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  store i32 %land.ext, ptr %ok, align 4
  %cmp5 = icmp ne i32 %land.ext, 0
  br i1 %cmp5, label %if.then7, label %if.end24

if.then7:                                         ; preds = %land.end
  %12 = load ptr, ptr %tif.addr, align 8
  %13 = load ptr, ptr %dir.addr, align 8
  %tdir_count8 = getelementptr inbounds %struct.TIFFDirEntry, ptr %13, i32 0, i32 2
  %14 = load i64, ptr %tdir_count8, align 8
  %mul9 = mul i64 %14, 4
  %call10 = call ptr @CheckMalloc(ptr noundef %12, i64 noundef %mul9, ptr noundef @TIFFFetchRefBlackWhite.mesg)
  store ptr %call10, ptr %fp, align 8
  %15 = load ptr, ptr %fp, align 8
  %cmp11 = icmp ne ptr %15, null
  %conv12 = zext i1 %cmp11 to i32
  store i32 %conv12, ptr %ok, align 4
  %cmp13 = icmp ne i32 %conv12, 0
  br i1 %cmp13, label %if.then15, label %if.end23

if.then15:                                        ; preds = %if.then7
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then15
  %16 = load i64, ptr %i, align 8
  %17 = load ptr, ptr %dir.addr, align 8
  %tdir_count16 = getelementptr inbounds %struct.TIFFDirEntry, ptr %17, i32 0, i32 2
  %18 = load i64, ptr %tdir_count16, align 8
  %cmp17 = icmp ult i64 %16, %18
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %cp, align 8
  %20 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i64, ptr %19, i64 %20
  %21 = load i64, ptr %arrayidx, align 8
  %conv19 = uitofp i64 %21 to float
  %22 = load ptr, ptr %fp, align 8
  %23 = load i64, ptr %i, align 8
  %arrayidx20 = getelementptr inbounds float, ptr %22, i64 %23
  store float %conv19, ptr %arrayidx20, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i64, ptr %i, align 8
  %inc = add i64 %24, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %25 = load ptr, ptr %tif.addr, align 8
  %26 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %26, i32 0, i32 0
  %27 = load i16, ptr %tdir_tag, align 8
  %conv21 = zext i16 %27 to i64
  %28 = load ptr, ptr %fp, align 8
  %call22 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %25, i64 noundef %conv21, ptr noundef %28)
  store i32 %call22, ptr %ok, align 4
  %29 = load ptr, ptr %fp, align 8
  call void @_TIFFfree(ptr noundef %29)
  br label %if.end23

if.end23:                                         ; preds = %for.end, %if.then7
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %land.end
  %30 = load ptr, ptr %cp, align 8
  %tobool25 = icmp ne ptr %30, null
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end24
  %31 = load ptr, ptr %cp, align 8
  call void @_TIFFfree(ptr noundef %31)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end24
  %32 = load i32, ptr %ok, align 4
  store i32 %32, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end27, %if.then
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
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
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 45
  %2 = load ptr, ptr %td_stripbytecount, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %td, align 8
  %td_stripbytecount1 = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 45
  %4 = load ptr, ptr %td_stripbytecount1, align 8
  call void @_TIFFfree(ptr noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i32 0, i32 43
  %7 = load i64, ptr %td_nstrips, align 8
  %mul = mul i64 %7, 8
  %call = call ptr @CheckMalloc(ptr noundef %5, i64 noundef %mul, ptr noundef @.str.17)
  %8 = load ptr, ptr %td, align 8
  %td_stripbytecount2 = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i32 0, i32 45
  store ptr %call, ptr %td_stripbytecount2, align 8
  %9 = load ptr, ptr %td, align 8
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %9, i32 0, i32 10
  %10 = load i16, ptr %td_compression, align 4
  %conv = zext i16 %10 to i32
  %cmp = icmp ne i32 %conv, 1
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %11 = load i16, ptr %dircount.addr, align 2
  %conv5 = zext i16 %11 to i64
  %mul6 = mul i64 %conv5, 24
  %add = add i64 18, %mul6
  %add7 = add i64 %add, 8
  store i64 %add7, ptr %space, align 8
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_sizeproc = getelementptr inbounds %struct.tiff, ptr %12, i32 0, i32 53
  %13 = load ptr, ptr %tif_sizeproc, align 8
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %14, i32 0, i32 48
  %15 = load ptr, ptr %tif_clientdata, align 8
  %call8 = call i64 %13(ptr noundef %15)
  store i64 %call8, ptr %filesize, align 8
  %16 = load ptr, ptr %dir.addr, align 8
  store ptr %16, ptr %dp, align 8
  %17 = load i16, ptr %dircount.addr, align 2
  store i16 %17, ptr %n, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %18 = load i16, ptr %n, align 2
  %conv9 = zext i16 %18 to i32
  %cmp10 = icmp sgt i32 %conv9, 0
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %dp, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %19, i32 0, i32 2
  %20 = load i64, ptr %tdir_count, align 8
  %21 = load ptr, ptr %dp, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %21, i32 0, i32 1
  %22 = load i16, ptr %tdir_type, align 2
  %idxprom = zext i16 %22 to i64
  %arrayidx = getelementptr inbounds [0 x i32], ptr @tiffDataWidth, i64 0, i64 %idxprom
  %23 = load i32, ptr %arrayidx, align 4
  %conv12 = sext i32 %23 to i64
  %mul13 = mul i64 %20, %conv12
  store i64 %mul13, ptr %cc, align 8
  %24 = load i64, ptr %cc, align 8
  %cmp14 = icmp ugt i64 %24, 8
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %for.body
  %25 = load i64, ptr %cc, align 8
  %26 = load i64, ptr %space, align 8
  %add17 = add i64 %26, %25
  store i64 %add17, ptr %space, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end18
  %27 = load i16, ptr %n, align 2
  %dec = add i16 %27, -1
  store i16 %dec, ptr %n, align 2
  %28 = load ptr, ptr %dp, align 8
  %incdec.ptr = getelementptr inbounds %struct.TIFFDirEntry, ptr %28, i32 1
  store ptr %incdec.ptr, ptr %dp, align 8
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %29 = load i64, ptr %filesize, align 8
  %30 = load i64, ptr %space, align 8
  %sub = sub i64 %29, %30
  store i64 %sub, ptr %space, align 8
  %31 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %31, i32 0, i32 24
  %32 = load i16, ptr %td_planarconfig, align 2
  %conv19 = zext i16 %32 to i32
  %cmp20 = icmp eq i32 %conv19, 2
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %for.end
  %33 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %33, i32 0, i32 15
  %34 = load i16, ptr %td_samplesperpixel, align 2
  %conv23 = zext i16 %34 to i64
  %35 = load i64, ptr %space, align 8
  %div = udiv i64 %35, %conv23
  store i64 %div, ptr %space, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %for.end
  store i16 0, ptr %i, align 2
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc34, %if.end24
  %36 = load i16, ptr %i, align 2
  %conv26 = zext i16 %36 to i64
  %37 = load ptr, ptr %td, align 8
  %td_nstrips27 = getelementptr inbounds %struct.TIFFDirectory, ptr %37, i32 0, i32 43
  %38 = load i64, ptr %td_nstrips27, align 8
  %cmp28 = icmp ult i64 %conv26, %38
  br i1 %cmp28, label %for.body30, label %for.end35

for.body30:                                       ; preds = %for.cond25
  %39 = load i64, ptr %space, align 8
  %40 = load ptr, ptr %td, align 8
  %td_stripbytecount31 = getelementptr inbounds %struct.TIFFDirectory, ptr %40, i32 0, i32 45
  %41 = load ptr, ptr %td_stripbytecount31, align 8
  %42 = load i16, ptr %i, align 2
  %idxprom32 = zext i16 %42 to i64
  %arrayidx33 = getelementptr inbounds i64, ptr %41, i64 %idxprom32
  store i64 %39, ptr %arrayidx33, align 8
  br label %for.inc34

for.inc34:                                        ; preds = %for.body30
  %43 = load i16, ptr %i, align 2
  %inc = add i16 %43, 1
  store i16 %inc, ptr %i, align 2
  br label %for.cond25, !llvm.loop !17

for.end35:                                        ; preds = %for.cond25
  %44 = load i16, ptr %i, align 2
  %dec36 = add i16 %44, -1
  store i16 %dec36, ptr %i, align 2
  %45 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %45, i32 0, i32 44
  %46 = load ptr, ptr %td_stripoffset, align 8
  %47 = load i16, ptr %i, align 2
  %idxprom37 = zext i16 %47 to i64
  %arrayidx38 = getelementptr inbounds i64, ptr %46, i64 %idxprom37
  %48 = load i64, ptr %arrayidx38, align 8
  %49 = load ptr, ptr %td, align 8
  %td_stripbytecount39 = getelementptr inbounds %struct.TIFFDirectory, ptr %49, i32 0, i32 45
  %50 = load ptr, ptr %td_stripbytecount39, align 8
  %51 = load i16, ptr %i, align 2
  %idxprom40 = zext i16 %51 to i64
  %arrayidx41 = getelementptr inbounds i64, ptr %50, i64 %idxprom40
  %52 = load i64, ptr %arrayidx41, align 8
  %add42 = add i64 %48, %52
  %53 = load i64, ptr %filesize, align 8
  %cmp43 = icmp sgt i64 %add42, %53
  br i1 %cmp43, label %if.then45, label %if.end53

if.then45:                                        ; preds = %for.end35
  %54 = load i64, ptr %filesize, align 8
  %55 = load ptr, ptr %td, align 8
  %td_stripoffset46 = getelementptr inbounds %struct.TIFFDirectory, ptr %55, i32 0, i32 44
  %56 = load ptr, ptr %td_stripoffset46, align 8
  %57 = load i16, ptr %i, align 2
  %idxprom47 = zext i16 %57 to i64
  %arrayidx48 = getelementptr inbounds i64, ptr %56, i64 %idxprom47
  %58 = load i64, ptr %arrayidx48, align 8
  %sub49 = sub i64 %54, %58
  %59 = load ptr, ptr %td, align 8
  %td_stripbytecount50 = getelementptr inbounds %struct.TIFFDirectory, ptr %59, i32 0, i32 45
  %60 = load ptr, ptr %td_stripbytecount50, align 8
  %61 = load i16, ptr %i, align 2
  %idxprom51 = zext i16 %61 to i64
  %arrayidx52 = getelementptr inbounds i64, ptr %60, i64 %idxprom51
  store i64 %sub49, ptr %arrayidx52, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then45, %for.end35
  br label %if.end69

if.else:                                          ; preds = %if.end
  %62 = load ptr, ptr %tif.addr, align 8
  %call54 = call i64 @TIFFScanlineSize(ptr noundef %62)
  store i64 %call54, ptr %rowbytes, align 8
  %63 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %63, i32 0, i32 2
  %64 = load i64, ptr %td_imagelength, align 8
  %65 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %65, i32 0, i32 42
  %66 = load i64, ptr %td_stripsperimage, align 8
  %div55 = udiv i64 %64, %66
  store i64 %div55, ptr %rowsperstrip, align 8
  store i16 0, ptr %i, align 2
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc66, %if.else
  %67 = load i16, ptr %i, align 2
  %conv57 = zext i16 %67 to i64
  %68 = load ptr, ptr %td, align 8
  %td_nstrips58 = getelementptr inbounds %struct.TIFFDirectory, ptr %68, i32 0, i32 43
  %69 = load i64, ptr %td_nstrips58, align 8
  %cmp59 = icmp ult i64 %conv57, %69
  br i1 %cmp59, label %for.body61, label %for.end68

for.body61:                                       ; preds = %for.cond56
  %70 = load i64, ptr %rowbytes, align 8
  %71 = load i64, ptr %rowsperstrip, align 8
  %mul62 = mul i64 %70, %71
  %72 = load ptr, ptr %td, align 8
  %td_stripbytecount63 = getelementptr inbounds %struct.TIFFDirectory, ptr %72, i32 0, i32 45
  %73 = load ptr, ptr %td_stripbytecount63, align 8
  %74 = load i16, ptr %i, align 2
  %idxprom64 = zext i16 %74 to i64
  %arrayidx65 = getelementptr inbounds i64, ptr %73, i64 %idxprom64
  store i64 %mul62, ptr %arrayidx65, align 8
  br label %for.inc66

for.inc66:                                        ; preds = %for.body61
  %75 = load i16, ptr %i, align 2
  %inc67 = add i16 %75, 1
  store i16 %inc67, ptr %i, align 2
  br label %for.cond56, !llvm.loop !18

for.end68:                                        ; preds = %for.cond56
  br label %if.end69

if.end69:                                         ; preds = %for.end68, %if.end53
  %76 = load ptr, ptr %tif.addr, align 8
  %tif_dir70 = getelementptr inbounds %struct.tiff, ptr %76, i32 0, i32 6
  %td_fieldsset = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir70, i32 0, i32 0
  %arrayidx71 = getelementptr inbounds [3 x i64], ptr %td_fieldsset, i64 0, i64 0
  %77 = load i64, ptr %arrayidx71, align 8
  %or = or i64 %77, 16777216
  store i64 %or, ptr %arrayidx71, align 8
  %78 = load ptr, ptr %tif.addr, align 8
  %tif_dir72 = getelementptr inbounds %struct.tiff, ptr %78, i32 0, i32 6
  %td_fieldsset73 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir72, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [3 x i64], ptr %td_fieldsset73, i64 0, i64 0
  %79 = load i64, ptr %arrayidx74, align 8
  %and = and i64 %79, 131072
  %tobool75 = icmp ne i64 %and, 0
  br i1 %tobool75, label %if.end78, label %if.then76

if.then76:                                        ; preds = %if.end69
  %80 = load ptr, ptr %td, align 8
  %td_imagelength77 = getelementptr inbounds %struct.TIFFDirectory, ptr %80, i32 0, i32 2
  %81 = load i64, ptr %td_imagelength77, align 8
  %82 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %82, i32 0, i32 16
  store i64 %81, ptr %td_rowsperstrip, align 8
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
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 45
  %2 = load ptr, ptr %td_stripbytecount, align 8
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 0
  %3 = load i64, ptr %arrayidx, align 8
  store i64 %3, ptr %bytecount, align 8
  %4 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %4, i32 0, i32 44
  %5 = load ptr, ptr %td_stripoffset, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %5, i64 0
  %6 = load i64, ptr %arrayidx1, align 8
  store i64 %6, ptr %offset, align 8
  %7 = load ptr, ptr %tif.addr, align 8
  %call = call i64 @TIFFVTileSize(ptr noundef %7, i64 noundef 1)
  store i64 %call, ptr %rowbytes, align 8
  %8 = load i64, ptr %rowbytes, align 8
  %cmp = icmp sgt i64 %8, 8192
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load i64, ptr %rowbytes, align 8
  store i64 %9, ptr %stripbytes, align 8
  store i64 1, ptr %rowsperstrip, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load i64, ptr %rowbytes, align 8
  %div = sdiv i64 8192, %10
  store i64 %div, ptr %rowsperstrip, align 8
  %11 = load i64, ptr %rowbytes, align 8
  %12 = load i64, ptr %rowsperstrip, align 8
  %mul = mul i64 %11, %12
  store i64 %mul, ptr %stripbytes, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load i64, ptr %rowsperstrip, align 8
  %14 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %14, i32 0, i32 16
  %15 = load i64, ptr %td_rowsperstrip, align 8
  %cmp2 = icmp uge i64 %13, %15
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %return

if.end4:                                          ; preds = %if.end
  %16 = load i64, ptr %bytecount, align 8
  %17 = load i64, ptr %stripbytes, align 8
  %sub = sub i64 %17, 1
  %add = add i64 %16, %sub
  %18 = load i64, ptr %stripbytes, align 8
  %div5 = udiv i64 %add, %18
  store i64 %div5, ptr %nstrips, align 8
  %19 = load ptr, ptr %tif.addr, align 8
  %20 = load i64, ptr %nstrips, align 8
  %mul6 = mul i64 %20, 8
  %call7 = call ptr @CheckMalloc(ptr noundef %19, i64 noundef %mul6, ptr noundef @.str.27)
  store ptr %call7, ptr %newcounts, align 8
  %21 = load ptr, ptr %tif.addr, align 8
  %22 = load i64, ptr %nstrips, align 8
  %mul8 = mul i64 %22, 8
  %call9 = call ptr @CheckMalloc(ptr noundef %21, i64 noundef %mul8, ptr noundef @.str.28)
  store ptr %call9, ptr %newoffsets, align 8
  %23 = load ptr, ptr %newcounts, align 8
  %cmp10 = icmp eq ptr %23, null
  br i1 %cmp10, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %24 = load ptr, ptr %newoffsets, align 8
  %cmp11 = icmp eq ptr %24, null
  br i1 %cmp11, label %if.then12, label %if.end19

if.then12:                                        ; preds = %lor.lhs.false, %if.end4
  %25 = load ptr, ptr %newcounts, align 8
  %cmp13 = icmp ne ptr %25, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then12
  %26 = load ptr, ptr %newcounts, align 8
  call void @_TIFFfree(ptr noundef %26)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then12
  %27 = load ptr, ptr %newoffsets, align 8
  %cmp16 = icmp ne ptr %27, null
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  %28 = load ptr, ptr %newoffsets, align 8
  call void @_TIFFfree(ptr noundef %28)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15
  br label %return

if.end19:                                         ; preds = %lor.lhs.false
  store i64 0, ptr %strip, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end19
  %29 = load i64, ptr %strip, align 8
  %30 = load i64, ptr %nstrips, align 8
  %cmp20 = icmp ult i64 %29, %30
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i64, ptr %stripbytes, align 8
  %32 = load i64, ptr %bytecount, align 8
  %cmp21 = icmp sgt i64 %31, %32
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.body
  %33 = load i64, ptr %bytecount, align 8
  store i64 %33, ptr %stripbytes, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %for.body
  %34 = load i64, ptr %stripbytes, align 8
  %35 = load ptr, ptr %newcounts, align 8
  %36 = load i64, ptr %strip, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %35, i64 %36
  store i64 %34, ptr %arrayidx24, align 8
  %37 = load i64, ptr %offset, align 8
  %38 = load ptr, ptr %newoffsets, align 8
  %39 = load i64, ptr %strip, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %38, i64 %39
  store i64 %37, ptr %arrayidx25, align 8
  %40 = load i64, ptr %stripbytes, align 8
  %41 = load i64, ptr %offset, align 8
  %add26 = add i64 %41, %40
  store i64 %add26, ptr %offset, align 8
  %42 = load i64, ptr %stripbytes, align 8
  %43 = load i64, ptr %bytecount, align 8
  %sub27 = sub i64 %43, %42
  store i64 %sub27, ptr %bytecount, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end23
  %44 = load i64, ptr %strip, align 8
  %inc = add i64 %44, 1
  store i64 %inc, ptr %strip, align 8
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %45 = load i64, ptr %nstrips, align 8
  %46 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %46, i32 0, i32 43
  store i64 %45, ptr %td_nstrips, align 8
  %47 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %47, i32 0, i32 42
  store i64 %45, ptr %td_stripsperimage, align 8
  %48 = load ptr, ptr %tif.addr, align 8
  %49 = load i64, ptr %rowsperstrip, align 8
  %call28 = call i32 (ptr, i64, ...) @TIFFSetField(ptr noundef %48, i64 noundef 278, i64 noundef %49)
  %50 = load ptr, ptr %td, align 8
  %td_stripbytecount29 = getelementptr inbounds %struct.TIFFDirectory, ptr %50, i32 0, i32 45
  %51 = load ptr, ptr %td_stripbytecount29, align 8
  call void @_TIFFfree(ptr noundef %51)
  %52 = load ptr, ptr %td, align 8
  %td_stripoffset30 = getelementptr inbounds %struct.TIFFDirectory, ptr %52, i32 0, i32 44
  %53 = load ptr, ptr %td_stripoffset30, align 8
  call void @_TIFFfree(ptr noundef %53)
  %54 = load ptr, ptr %newcounts, align 8
  %55 = load ptr, ptr %td, align 8
  %td_stripbytecount31 = getelementptr inbounds %struct.TIFFDirectory, ptr %55, i32 0, i32 45
  store ptr %54, ptr %td_stripbytecount31, align 8
  %56 = load ptr, ptr %newoffsets, align 8
  %57 = load ptr, ptr %td, align 8
  %td_stripoffset32 = getelementptr inbounds %struct.TIFFDirectory, ptr %57, i32 0, i32 44
  store ptr %56, ptr %td_stripoffset32, align 8
  br label %return

return:                                           ; preds = %for.end, %if.end18, %if.then3
  ret void
}

declare i64 @TIFFTileSize(ptr noundef) #1

declare i64 @TIFFScanlineSize(ptr noundef) #1

declare ptr @_TIFFmalloc(i64 noundef) #1

declare void @TIFFSwabArrayOfDouble(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFFetchShortArray(ptr noundef %tif, ptr noundef %dir, ptr noundef %v) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  %0 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %tdir_count, align 8
  %cmp = icmp ule i64 %1, 2
  br i1 %cmp, label %if.then, label %if.else22

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 7
  %tiff_magic = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header, i32 0, i32 0
  %3 = load i16, ptr %tiff_magic, align 8
  %conv = zext i16 %3 to i32
  %cmp1 = icmp eq i32 %conv, 19789
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %4 = load ptr, ptr %dir.addr, align 8
  %tdir_count4 = getelementptr inbounds %struct.TIFFDirEntry, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %tdir_count4, align 8
  switch i64 %5, label %sw.epilog [
    i64 2, label %sw.bb
    i64 1, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.then3
  %6 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %6, i32 0, i32 3
  %7 = load i64, ptr %tdir_offset, align 8
  %and = and i64 %7, 65535
  %conv5 = trunc i64 %and to i16
  %8 = load ptr, ptr %v.addr, align 8
  %arrayidx = getelementptr inbounds i16, ptr %8, i64 1
  store i16 %conv5, ptr %arrayidx, align 2
  br label %sw.bb6

sw.bb6:                                           ; preds = %if.then3, %sw.bb
  %9 = load ptr, ptr %dir.addr, align 8
  %tdir_offset7 = getelementptr inbounds %struct.TIFFDirEntry, ptr %9, i32 0, i32 3
  %10 = load i64, ptr %tdir_offset7, align 8
  %shr = lshr i64 %10, 16
  %conv8 = trunc i64 %shr to i16
  %11 = load ptr, ptr %v.addr, align 8
  %arrayidx9 = getelementptr inbounds i16, ptr %11, i64 0
  store i16 %conv8, ptr %arrayidx9, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %if.then3
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load ptr, ptr %dir.addr, align 8
  %tdir_count10 = getelementptr inbounds %struct.TIFFDirEntry, ptr %12, i32 0, i32 2
  %13 = load i64, ptr %tdir_count10, align 8
  switch i64 %13, label %sw.epilog21 [
    i64 2, label %sw.bb11
    i64 1, label %sw.bb16
  ]

sw.bb11:                                          ; preds = %if.else
  %14 = load ptr, ptr %dir.addr, align 8
  %tdir_offset12 = getelementptr inbounds %struct.TIFFDirEntry, ptr %14, i32 0, i32 3
  %15 = load i64, ptr %tdir_offset12, align 8
  %shr13 = lshr i64 %15, 16
  %conv14 = trunc i64 %shr13 to i16
  %16 = load ptr, ptr %v.addr, align 8
  %arrayidx15 = getelementptr inbounds i16, ptr %16, i64 1
  store i16 %conv14, ptr %arrayidx15, align 2
  br label %sw.bb16

sw.bb16:                                          ; preds = %if.else, %sw.bb11
  %17 = load ptr, ptr %dir.addr, align 8
  %tdir_offset17 = getelementptr inbounds %struct.TIFFDirEntry, ptr %17, i32 0, i32 3
  %18 = load i64, ptr %tdir_offset17, align 8
  %and18 = and i64 %18, 65535
  %conv19 = trunc i64 %and18 to i16
  %19 = load ptr, ptr %v.addr, align 8
  %arrayidx20 = getelementptr inbounds i16, ptr %19, i64 0
  store i16 %conv19, ptr %arrayidx20, align 2
  br label %sw.epilog21

sw.epilog21:                                      ; preds = %sw.bb16, %if.else
  br label %if.end

if.end:                                           ; preds = %sw.epilog21, %sw.epilog
  store i32 1, ptr %retval, align 4
  br label %return

if.else22:                                        ; preds = %entry
  %20 = load ptr, ptr %tif.addr, align 8
  %21 = load ptr, ptr %dir.addr, align 8
  %22 = load ptr, ptr %v.addr, align 8
  %call = call i64 @TIFFFetchData(ptr noundef %20, ptr noundef %21, ptr noundef %22)
  %cmp23 = icmp ne i64 %call, 0
  %conv24 = zext i1 %cmp23 to i32
  store i32 %conv24, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else22, %if.end
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFFetchByteArray(ptr noundef %tif, ptr noundef %dir, ptr noundef %v) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  %0 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %tdir_count, align 8
  %cmp = icmp ule i64 %1, 4
  br i1 %cmp, label %if.then, label %if.else46

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 7
  %tiff_magic = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header, i32 0, i32 0
  %3 = load i16, ptr %tiff_magic, align 8
  %conv = zext i16 %3 to i32
  %cmp1 = icmp eq i32 %conv, 19789
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %4 = load ptr, ptr %dir.addr, align 8
  %tdir_count4 = getelementptr inbounds %struct.TIFFDirEntry, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %tdir_count4, align 8
  switch i64 %5, label %sw.epilog [
    i64 4, label %sw.bb
    i64 3, label %sw.bb6
    i64 2, label %sw.bb11
    i64 1, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.then3
  %6 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %6, i32 0, i32 3
  %7 = load i64, ptr %tdir_offset, align 8
  %and = and i64 %7, 255
  %conv5 = trunc i64 %and to i16
  %8 = load ptr, ptr %v.addr, align 8
  %arrayidx = getelementptr inbounds i16, ptr %8, i64 3
  store i16 %conv5, ptr %arrayidx, align 2
  br label %sw.bb6

sw.bb6:                                           ; preds = %if.then3, %sw.bb
  %9 = load ptr, ptr %dir.addr, align 8
  %tdir_offset7 = getelementptr inbounds %struct.TIFFDirEntry, ptr %9, i32 0, i32 3
  %10 = load i64, ptr %tdir_offset7, align 8
  %shr = lshr i64 %10, 8
  %and8 = and i64 %shr, 255
  %conv9 = trunc i64 %and8 to i16
  %11 = load ptr, ptr %v.addr, align 8
  %arrayidx10 = getelementptr inbounds i16, ptr %11, i64 2
  store i16 %conv9, ptr %arrayidx10, align 2
  br label %sw.bb11

sw.bb11:                                          ; preds = %if.then3, %sw.bb6
  %12 = load ptr, ptr %dir.addr, align 8
  %tdir_offset12 = getelementptr inbounds %struct.TIFFDirEntry, ptr %12, i32 0, i32 3
  %13 = load i64, ptr %tdir_offset12, align 8
  %shr13 = lshr i64 %13, 16
  %and14 = and i64 %shr13, 255
  %conv15 = trunc i64 %and14 to i16
  %14 = load ptr, ptr %v.addr, align 8
  %arrayidx16 = getelementptr inbounds i16, ptr %14, i64 1
  store i16 %conv15, ptr %arrayidx16, align 2
  br label %sw.bb17

sw.bb17:                                          ; preds = %if.then3, %sw.bb11
  %15 = load ptr, ptr %dir.addr, align 8
  %tdir_offset18 = getelementptr inbounds %struct.TIFFDirEntry, ptr %15, i32 0, i32 3
  %16 = load i64, ptr %tdir_offset18, align 8
  %shr19 = lshr i64 %16, 24
  %conv20 = trunc i64 %shr19 to i16
  %17 = load ptr, ptr %v.addr, align 8
  %arrayidx21 = getelementptr inbounds i16, ptr %17, i64 0
  store i16 %conv20, ptr %arrayidx21, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %if.then3
  br label %if.end

if.else:                                          ; preds = %if.then
  %18 = load ptr, ptr %dir.addr, align 8
  %tdir_count22 = getelementptr inbounds %struct.TIFFDirEntry, ptr %18, i32 0, i32 2
  %19 = load i64, ptr %tdir_count22, align 8
  switch i64 %19, label %sw.epilog45 [
    i64 4, label %sw.bb23
    i64 3, label %sw.bb28
    i64 2, label %sw.bb34
    i64 1, label %sw.bb40
  ]

sw.bb23:                                          ; preds = %if.else
  %20 = load ptr, ptr %dir.addr, align 8
  %tdir_offset24 = getelementptr inbounds %struct.TIFFDirEntry, ptr %20, i32 0, i32 3
  %21 = load i64, ptr %tdir_offset24, align 8
  %shr25 = lshr i64 %21, 24
  %conv26 = trunc i64 %shr25 to i16
  %22 = load ptr, ptr %v.addr, align 8
  %arrayidx27 = getelementptr inbounds i16, ptr %22, i64 3
  store i16 %conv26, ptr %arrayidx27, align 2
  br label %sw.bb28

sw.bb28:                                          ; preds = %if.else, %sw.bb23
  %23 = load ptr, ptr %dir.addr, align 8
  %tdir_offset29 = getelementptr inbounds %struct.TIFFDirEntry, ptr %23, i32 0, i32 3
  %24 = load i64, ptr %tdir_offset29, align 8
  %shr30 = lshr i64 %24, 16
  %and31 = and i64 %shr30, 255
  %conv32 = trunc i64 %and31 to i16
  %25 = load ptr, ptr %v.addr, align 8
  %arrayidx33 = getelementptr inbounds i16, ptr %25, i64 2
  store i16 %conv32, ptr %arrayidx33, align 2
  br label %sw.bb34

sw.bb34:                                          ; preds = %if.else, %sw.bb28
  %26 = load ptr, ptr %dir.addr, align 8
  %tdir_offset35 = getelementptr inbounds %struct.TIFFDirEntry, ptr %26, i32 0, i32 3
  %27 = load i64, ptr %tdir_offset35, align 8
  %shr36 = lshr i64 %27, 8
  %and37 = and i64 %shr36, 255
  %conv38 = trunc i64 %and37 to i16
  %28 = load ptr, ptr %v.addr, align 8
  %arrayidx39 = getelementptr inbounds i16, ptr %28, i64 1
  store i16 %conv38, ptr %arrayidx39, align 2
  br label %sw.bb40

sw.bb40:                                          ; preds = %if.else, %sw.bb34
  %29 = load ptr, ptr %dir.addr, align 8
  %tdir_offset41 = getelementptr inbounds %struct.TIFFDirEntry, ptr %29, i32 0, i32 3
  %30 = load i64, ptr %tdir_offset41, align 8
  %and42 = and i64 %30, 255
  %conv43 = trunc i64 %and42 to i16
  %31 = load ptr, ptr %v.addr, align 8
  %arrayidx44 = getelementptr inbounds i16, ptr %31, i64 0
  store i16 %conv43, ptr %arrayidx44, align 2
  br label %sw.epilog45

sw.epilog45:                                      ; preds = %sw.bb40, %if.else
  br label %if.end

if.end:                                           ; preds = %sw.epilog45, %sw.epilog
  store i32 1, ptr %retval, align 4
  br label %return

if.else46:                                        ; preds = %entry
  %32 = load ptr, ptr %tif.addr, align 8
  %33 = load ptr, ptr %dir.addr, align 8
  %34 = load ptr, ptr %v.addr, align 8
  %call = call i64 @TIFFFetchData(ptr noundef %32, ptr noundef %33, ptr noundef %34)
  %cmp47 = icmp ne i64 %call, 0
  %conv48 = zext i1 %cmp47 to i32
  store i32 %conv48, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else46, %if.end
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFFetchLongArray(ptr noundef %tif, ptr noundef %dir, ptr noundef %v) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  %0 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %tdir_count, align 8
  %cmp = icmp eq i64 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %2, i32 0, i32 3
  %3 = load i64, ptr %tdir_offset, align 8
  %4 = load ptr, ptr %v.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %4, i64 0
  store i64 %3, ptr %arrayidx, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load ptr, ptr %dir.addr, align 8
  %7 = load ptr, ptr %v.addr, align 8
  %call = call i64 @TIFFFetchData(ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %cmp1 = icmp ne i64 %call, 0
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
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
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i32 0, i32 2
  %2 = load i64, ptr %tdir_count, align 8
  %3 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %3, i32 0, i32 1
  %4 = load i16, ptr %tdir_type, align 2
  %idxprom = zext i16 %4 to i64
  %arrayidx = getelementptr inbounds [0 x i32], ptr @tiffDataWidth, i64 0, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  %conv = sext i32 %5 to i64
  %mul = mul i64 %2, %conv
  %call = call ptr @CheckMalloc(ptr noundef %0, i64 noundef %mul, ptr noundef @.str.21)
  store ptr %call, ptr %l, align 8
  %6 = load ptr, ptr %l, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %tif.addr, align 8
  %8 = load ptr, ptr %dir.addr, align 8
  %9 = load ptr, ptr %l, align 8
  %call1 = call i64 @TIFFFetchData(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  %tobool2 = icmp ne i64 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.end15

if.then3:                                         ; preds = %if.then
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %10 = load i64, ptr %i, align 8
  %11 = load ptr, ptr %dir.addr, align 8
  %tdir_count4 = getelementptr inbounds %struct.TIFFDirEntry, ptr %11, i32 0, i32 2
  %12 = load i64, ptr %tdir_count4, align 8
  %cmp = icmp ult i64 %10, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %tif.addr, align 8
  %14 = load ptr, ptr %dir.addr, align 8
  %15 = load ptr, ptr %l, align 8
  %16 = load i64, ptr %i, align 8
  %mul6 = mul i64 2, %16
  %add = add i64 %mul6, 0
  %arrayidx7 = getelementptr inbounds i64, ptr %15, i64 %add
  %17 = load i64, ptr %arrayidx7, align 8
  %18 = load ptr, ptr %l, align 8
  %19 = load i64, ptr %i, align 8
  %mul8 = mul i64 2, %19
  %add9 = add i64 %mul8, 1
  %arrayidx10 = getelementptr inbounds i64, ptr %18, i64 %add9
  %20 = load i64, ptr %arrayidx10, align 8
  %21 = load ptr, ptr %v.addr, align 8
  %22 = load i64, ptr %i, align 8
  %arrayidx11 = getelementptr inbounds float, ptr %21, i64 %22
  %call12 = call i32 @cvtRational(ptr noundef %13, ptr noundef %14, i64 noundef %17, i64 noundef %20, ptr noundef %arrayidx11)
  store i32 %call12, ptr %ok, align 4
  %23 = load i32, ptr %ok, align 4
  %tobool13 = icmp ne i32 %23, 0
  br i1 %tobool13, label %if.end, label %if.then14

if.then14:                                        ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i64, ptr %i, align 8
  %inc = add i64 %24, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %if.then14, %for.cond
  br label %if.end15

if.end15:                                         ; preds = %for.end, %if.then
  %25 = load ptr, ptr %l, align 8
  call void @_TIFFfree(ptr noundef %25)
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %entry
  %26 = load i32, ptr %ok, align 4
  ret i32 %26
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
  %0 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %tdir_count, align 8
  %cmp = icmp eq i64 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %2, i32 0, i32 3
  %3 = load float, ptr %tdir_offset, align 8
  %4 = load ptr, ptr %v.addr, align 8
  %arrayidx = getelementptr inbounds float, ptr %4, i64 0
  store float %3, ptr %arrayidx, align 4
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load ptr, ptr %dir.addr, align 8
  %7 = load ptr, ptr %v.addr, align 8
  %call = call i64 @TIFFFetchData(ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.else
  store i32 1, ptr %retval, align 4
  br label %return

if.else2:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else2, %if.then1, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFFetchDoubleArray(ptr noundef %tif, ptr noundef %dir, ptr noundef %v) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load ptr, ptr %dir.addr, align 8
  %2 = load ptr, ptr %v.addr, align 8
  %call = call i64 @TIFFFetchData(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @TIFFFetchString(ptr noundef %tif, ptr noundef %dir, ptr noundef %cp) #0 {
entry:
  %retval = alloca i64, align 8
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %l = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  %0 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %tdir_count, align 8
  %cmp = icmp ule i64 %1, 4
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %2, i32 0, i32 3
  %3 = load i64, ptr %tdir_offset, align 8
  store i64 %3, ptr %l, align 8
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 3
  %5 = load i64, ptr %tif_flags, align 8
  %and = and i64 %5, 128
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  call void @TIFFSwabLong(ptr noundef %l)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %6 = load ptr, ptr %cp.addr, align 8
  %7 = load ptr, ptr %dir.addr, align 8
  %tdir_count2 = getelementptr inbounds %struct.TIFFDirEntry, ptr %7, i32 0, i32 2
  %8 = load i64, ptr %tdir_count2, align 8
  call void @_TIFFmemcpy(ptr noundef %6, ptr noundef %l, i64 noundef %8)
  store i64 1, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %entry
  %9 = load ptr, ptr %tif.addr, align 8
  %10 = load ptr, ptr %dir.addr, align 8
  %11 = load ptr, ptr %cp.addr, align 8
  %call = call i64 @TIFFFetchData(ptr noundef %9, ptr noundef %10, ptr noundef %11)
  store i64 %call, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.end
  %12 = load i64, ptr %retval, align 8
  ret i64 %12
}

; Function Attrs: nounwind ssp uwtable
define internal float @TIFFFetchFloat(ptr noundef %tif, ptr noundef %dir) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %l = alloca i64, align 8
  %v = alloca float, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 7
  %tiff_magic = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header, i32 0, i32 0
  %1 = load i16, ptr %tiff_magic, align 8
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 19789
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %2, i32 0, i32 3
  %3 = load i64, ptr %tdir_offset, align 8
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 9
  %5 = load ptr, ptr %tif_typeshift, align 8
  %6 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %6, i32 0, i32 1
  %7 = load i16, ptr %tdir_type, align 2
  %idxprom = zext i16 %7 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %8 = load i32, ptr %arrayidx, align 4
  %sh_prom = zext i32 %8 to i64
  %shr = lshr i64 %3, %sh_prom
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_typemask = getelementptr inbounds %struct.tiff, ptr %9, i32 0, i32 10
  %10 = load ptr, ptr %tif_typemask, align 8
  %11 = load ptr, ptr %dir.addr, align 8
  %tdir_type2 = getelementptr inbounds %struct.TIFFDirEntry, ptr %11, i32 0, i32 1
  %12 = load i16, ptr %tdir_type2, align 2
  %idxprom3 = zext i16 %12 to i64
  %arrayidx4 = getelementptr inbounds i64, ptr %10, i64 %idxprom3
  %13 = load i64, ptr %arrayidx4, align 8
  %and = and i64 %shr, %13
  br label %cond.end

cond.false:                                       ; preds = %entry
  %14 = load ptr, ptr %dir.addr, align 8
  %tdir_offset5 = getelementptr inbounds %struct.TIFFDirEntry, ptr %14, i32 0, i32 3
  %15 = load i64, ptr %tdir_offset5, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_typemask6 = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 10
  %17 = load ptr, ptr %tif_typemask6, align 8
  %18 = load ptr, ptr %dir.addr, align 8
  %tdir_type7 = getelementptr inbounds %struct.TIFFDirEntry, ptr %18, i32 0, i32 1
  %19 = load i16, ptr %tdir_type7, align 2
  %idxprom8 = zext i16 %19 to i64
  %arrayidx9 = getelementptr inbounds i64, ptr %17, i64 %idxprom8
  %20 = load i64, ptr %arrayidx9, align 8
  %and10 = and i64 %15, %20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %and, %cond.true ], [ %and10, %cond.false ]
  store i64 %cond, ptr %l, align 8
  %21 = load float, ptr %l, align 8
  store float %21, ptr %v, align 4
  %22 = load float, ptr %v, align 4
  ret float %22
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
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load ptr, ptr %dir.addr, align 8
  %arraydecay = getelementptr inbounds [2 x i64], ptr %l, i64 0, i64 0
  %call = call i64 @TIFFFetchData(ptr noundef %0, ptr noundef %1, ptr noundef %arraydecay)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %cond.true

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load ptr, ptr %dir.addr, align 8
  %arrayidx = getelementptr inbounds [2 x i64], ptr %l, i64 0, i64 0
  %4 = load i64, ptr %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds [2 x i64], ptr %l, i64 0, i64 1
  %5 = load i64, ptr %arrayidx1, align 8
  %call2 = call i32 @cvtRational(ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %v)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %cond.false, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false, %entry
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %6 = load float, ptr %v, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ 1.000000e+00, %cond.true ], [ %6, %cond.false ]
  ret float %cond
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @cvtRational(ptr noundef %tif, ptr noundef %dir, i64 noundef %num, i64 noundef %denom, ptr noundef %rv) #0 {
entry:
  %retval = alloca i32, align 4
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
  %0 = load i64, ptr %denom.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %tif_name, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %4 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %4, i32 0, i32 0
  %5 = load i16, ptr %tdir_tag, align 8
  %conv = zext i16 %5 to i64
  %call = call ptr @_TIFFFieldWithTag(ptr noundef %3, i64 noundef %conv)
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call, i32 0, i32 7
  %6 = load ptr, ptr %field_name, align 8
  %7 = load i64, ptr %num.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %2, ptr noundef @.str.22, ptr noundef %6, i64 noundef %7)
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %8, i32 0, i32 1
  %9 = load i16, ptr %tdir_type, align 2
  %conv1 = zext i16 %9 to i32
  %cmp2 = icmp eq i32 %conv1, 5
  br i1 %cmp2, label %if.then4, label %if.else7

if.then4:                                         ; preds = %if.else
  %10 = load i64, ptr %num.addr, align 8
  %conv5 = uitofp i64 %10 to float
  %11 = load i64, ptr %denom.addr, align 8
  %conv6 = uitofp i64 %11 to float
  %div = fdiv float %conv5, %conv6
  %12 = load ptr, ptr %rv.addr, align 8
  store float %div, ptr %12, align 4
  br label %if.end

if.else7:                                         ; preds = %if.else
  %13 = load i64, ptr %num.addr, align 8
  %conv8 = sitofp i64 %13 to float
  %14 = load i64, ptr %denom.addr, align 8
  %conv9 = sitofp i64 %14 to float
  %div10 = fdiv float %conv8, %conv9
  %15 = load ptr, ptr %rv.addr, align 8
  store float %div10, ptr %15, align 4
  br label %if.end

if.end:                                           ; preds = %if.else7, %if.then4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
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
  %0 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %0, i32 0, i32 1
  %1 = load i16, ptr %tdir_type, align 2
  %conv = zext i16 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 6, label %sw.bb
    i32 3, label %sw.bb28
    i32 8, label %sw.bb28
    i32 4, label %sw.bb72
    i32 9, label %sw.bb72
    i32 5, label %sw.bb116
    i32 10, label %sw.bb116
    i32 11, label %sw.bb137
    i32 12, label %sw.bb158
  ]

sw.bb:                                            ; preds = %entry, %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load ptr, ptr %dir.addr, align 8
  %4 = load ptr, ptr %v.addr, align 8
  %call = call i32 @TIFFFetchByteArray(ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %sw.bb
  %5 = load ptr, ptr %dir.addr, align 8
  %tdir_type1 = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i32 0, i32 1
  %6 = load i16, ptr %tdir_type1, align 2
  %conv2 = zext i16 %6 to i32
  %cmp = icmp eq i32 %conv2, 1
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %v.addr, align 8
  store ptr %7, ptr %vp, align 8
  %8 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %8, i32 0, i32 2
  %9 = load i64, ptr %tdir_count, align 8
  %sub = sub i64 %9, 1
  %conv5 = trunc i64 %sub to i32
  store i32 %conv5, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %10 = load i32, ptr %i, align 4
  %cmp6 = icmp sge i32 %10, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %vp, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i16, ptr %11, i64 %idxprom
  %13 = load i16, ptr %arrayidx, align 2
  %conv8 = uitofp i16 %13 to double
  %14 = load ptr, ptr %v.addr, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds double, ptr %14, i64 %idxprom9
  store double %conv8, ptr %arrayidx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  br label %if.end27

if.else:                                          ; preds = %if.end
  %17 = load ptr, ptr %v.addr, align 8
  store ptr %17, ptr %vp11, align 8
  %18 = load ptr, ptr %dir.addr, align 8
  %tdir_count12 = getelementptr inbounds %struct.TIFFDirEntry, ptr %18, i32 0, i32 2
  %19 = load i64, ptr %tdir_count12, align 8
  %sub13 = sub i64 %19, 1
  %conv14 = trunc i64 %sub13 to i32
  store i32 %conv14, ptr %i, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc24, %if.else
  %20 = load i32, ptr %i, align 4
  %cmp16 = icmp sge i32 %20, 0
  br i1 %cmp16, label %for.body18, label %for.end26

for.body18:                                       ; preds = %for.cond15
  %21 = load ptr, ptr %vp11, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds i16, ptr %21, i64 %idxprom19
  %23 = load i16, ptr %arrayidx20, align 2
  %conv21 = sitofp i16 %23 to double
  %24 = load ptr, ptr %v.addr, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %25 to i64
  %arrayidx23 = getelementptr inbounds double, ptr %24, i64 %idxprom22
  store double %conv21, ptr %arrayidx23, align 8
  br label %for.inc24

for.inc24:                                        ; preds = %for.body18
  %26 = load i32, ptr %i, align 4
  %dec25 = add nsw i32 %26, -1
  store i32 %dec25, ptr %i, align 4
  br label %for.cond15, !llvm.loop !22

for.end26:                                        ; preds = %for.cond15
  br label %if.end27

if.end27:                                         ; preds = %for.end26, %for.end
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry, %entry
  %27 = load ptr, ptr %tif.addr, align 8
  %28 = load ptr, ptr %dir.addr, align 8
  %29 = load ptr, ptr %v.addr, align 8
  %call29 = call i32 @TIFFFetchShortArray(ptr noundef %27, ptr noundef %28, ptr noundef %29)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %sw.bb28
  store i32 0, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %sw.bb28
  %30 = load ptr, ptr %dir.addr, align 8
  %tdir_type33 = getelementptr inbounds %struct.TIFFDirEntry, ptr %30, i32 0, i32 1
  %31 = load i16, ptr %tdir_type33, align 2
  %conv34 = zext i16 %31 to i32
  %cmp35 = icmp eq i32 %conv34, 3
  br i1 %cmp35, label %if.then37, label %if.else54

if.then37:                                        ; preds = %if.end32
  %32 = load ptr, ptr %v.addr, align 8
  store ptr %32, ptr %vp38, align 8
  %33 = load ptr, ptr %dir.addr, align 8
  %tdir_count39 = getelementptr inbounds %struct.TIFFDirEntry, ptr %33, i32 0, i32 2
  %34 = load i64, ptr %tdir_count39, align 8
  %sub40 = sub i64 %34, 1
  %conv41 = trunc i64 %sub40 to i32
  store i32 %conv41, ptr %i, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc51, %if.then37
  %35 = load i32, ptr %i, align 4
  %cmp43 = icmp sge i32 %35, 0
  br i1 %cmp43, label %for.body45, label %for.end53

for.body45:                                       ; preds = %for.cond42
  %36 = load ptr, ptr %vp38, align 8
  %37 = load i32, ptr %i, align 4
  %idxprom46 = sext i32 %37 to i64
  %arrayidx47 = getelementptr inbounds i16, ptr %36, i64 %idxprom46
  %38 = load i16, ptr %arrayidx47, align 2
  %conv48 = uitofp i16 %38 to double
  %39 = load ptr, ptr %v.addr, align 8
  %40 = load i32, ptr %i, align 4
  %idxprom49 = sext i32 %40 to i64
  %arrayidx50 = getelementptr inbounds double, ptr %39, i64 %idxprom49
  store double %conv48, ptr %arrayidx50, align 8
  br label %for.inc51

for.inc51:                                        ; preds = %for.body45
  %41 = load i32, ptr %i, align 4
  %dec52 = add nsw i32 %41, -1
  store i32 %dec52, ptr %i, align 4
  br label %for.cond42, !llvm.loop !23

for.end53:                                        ; preds = %for.cond42
  br label %if.end71

if.else54:                                        ; preds = %if.end32
  %42 = load ptr, ptr %v.addr, align 8
  store ptr %42, ptr %vp55, align 8
  %43 = load ptr, ptr %dir.addr, align 8
  %tdir_count56 = getelementptr inbounds %struct.TIFFDirEntry, ptr %43, i32 0, i32 2
  %44 = load i64, ptr %tdir_count56, align 8
  %sub57 = sub i64 %44, 1
  %conv58 = trunc i64 %sub57 to i32
  store i32 %conv58, ptr %i, align 4
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc68, %if.else54
  %45 = load i32, ptr %i, align 4
  %cmp60 = icmp sge i32 %45, 0
  br i1 %cmp60, label %for.body62, label %for.end70

for.body62:                                       ; preds = %for.cond59
  %46 = load ptr, ptr %vp55, align 8
  %47 = load i32, ptr %i, align 4
  %idxprom63 = sext i32 %47 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %46, i64 %idxprom63
  %48 = load i16, ptr %arrayidx64, align 2
  %conv65 = sitofp i16 %48 to double
  %49 = load ptr, ptr %v.addr, align 8
  %50 = load i32, ptr %i, align 4
  %idxprom66 = sext i32 %50 to i64
  %arrayidx67 = getelementptr inbounds double, ptr %49, i64 %idxprom66
  store double %conv65, ptr %arrayidx67, align 8
  br label %for.inc68

for.inc68:                                        ; preds = %for.body62
  %51 = load i32, ptr %i, align 4
  %dec69 = add nsw i32 %51, -1
  store i32 %dec69, ptr %i, align 4
  br label %for.cond59, !llvm.loop !24

for.end70:                                        ; preds = %for.cond59
  br label %if.end71

if.end71:                                         ; preds = %for.end70, %for.end53
  br label %sw.epilog

sw.bb72:                                          ; preds = %entry, %entry
  %52 = load ptr, ptr %tif.addr, align 8
  %53 = load ptr, ptr %dir.addr, align 8
  %54 = load ptr, ptr %v.addr, align 8
  %call73 = call i32 @TIFFFetchLongArray(ptr noundef %52, ptr noundef %53, ptr noundef %54)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.end76, label %if.then75

if.then75:                                        ; preds = %sw.bb72
  store i32 0, ptr %retval, align 4
  br label %return

if.end76:                                         ; preds = %sw.bb72
  %55 = load ptr, ptr %dir.addr, align 8
  %tdir_type77 = getelementptr inbounds %struct.TIFFDirEntry, ptr %55, i32 0, i32 1
  %56 = load i16, ptr %tdir_type77, align 2
  %conv78 = zext i16 %56 to i32
  %cmp79 = icmp eq i32 %conv78, 4
  br i1 %cmp79, label %if.then81, label %if.else98

if.then81:                                        ; preds = %if.end76
  %57 = load ptr, ptr %v.addr, align 8
  store ptr %57, ptr %vp82, align 8
  %58 = load ptr, ptr %dir.addr, align 8
  %tdir_count83 = getelementptr inbounds %struct.TIFFDirEntry, ptr %58, i32 0, i32 2
  %59 = load i64, ptr %tdir_count83, align 8
  %sub84 = sub i64 %59, 1
  %conv85 = trunc i64 %sub84 to i32
  store i32 %conv85, ptr %i, align 4
  br label %for.cond86

for.cond86:                                       ; preds = %for.inc95, %if.then81
  %60 = load i32, ptr %i, align 4
  %cmp87 = icmp sge i32 %60, 0
  br i1 %cmp87, label %for.body89, label %for.end97

for.body89:                                       ; preds = %for.cond86
  %61 = load ptr, ptr %vp82, align 8
  %62 = load i32, ptr %i, align 4
  %idxprom90 = sext i32 %62 to i64
  %arrayidx91 = getelementptr inbounds i64, ptr %61, i64 %idxprom90
  %63 = load i64, ptr %arrayidx91, align 8
  %conv92 = uitofp i64 %63 to double
  %64 = load ptr, ptr %v.addr, align 8
  %65 = load i32, ptr %i, align 4
  %idxprom93 = sext i32 %65 to i64
  %arrayidx94 = getelementptr inbounds double, ptr %64, i64 %idxprom93
  store double %conv92, ptr %arrayidx94, align 8
  br label %for.inc95

for.inc95:                                        ; preds = %for.body89
  %66 = load i32, ptr %i, align 4
  %dec96 = add nsw i32 %66, -1
  store i32 %dec96, ptr %i, align 4
  br label %for.cond86, !llvm.loop !25

for.end97:                                        ; preds = %for.cond86
  br label %if.end115

if.else98:                                        ; preds = %if.end76
  %67 = load ptr, ptr %v.addr, align 8
  store ptr %67, ptr %vp99, align 8
  %68 = load ptr, ptr %dir.addr, align 8
  %tdir_count100 = getelementptr inbounds %struct.TIFFDirEntry, ptr %68, i32 0, i32 2
  %69 = load i64, ptr %tdir_count100, align 8
  %sub101 = sub i64 %69, 1
  %conv102 = trunc i64 %sub101 to i32
  store i32 %conv102, ptr %i, align 4
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc112, %if.else98
  %70 = load i32, ptr %i, align 4
  %cmp104 = icmp sge i32 %70, 0
  br i1 %cmp104, label %for.body106, label %for.end114

for.body106:                                      ; preds = %for.cond103
  %71 = load ptr, ptr %vp99, align 8
  %72 = load i32, ptr %i, align 4
  %idxprom107 = sext i32 %72 to i64
  %arrayidx108 = getelementptr inbounds i64, ptr %71, i64 %idxprom107
  %73 = load i64, ptr %arrayidx108, align 8
  %conv109 = sitofp i64 %73 to double
  %74 = load ptr, ptr %v.addr, align 8
  %75 = load i32, ptr %i, align 4
  %idxprom110 = sext i32 %75 to i64
  %arrayidx111 = getelementptr inbounds double, ptr %74, i64 %idxprom110
  store double %conv109, ptr %arrayidx111, align 8
  br label %for.inc112

for.inc112:                                       ; preds = %for.body106
  %76 = load i32, ptr %i, align 4
  %dec113 = add nsw i32 %76, -1
  store i32 %dec113, ptr %i, align 4
  br label %for.cond103, !llvm.loop !26

for.end114:                                       ; preds = %for.cond103
  br label %if.end115

if.end115:                                        ; preds = %for.end114, %for.end97
  br label %sw.epilog

sw.bb116:                                         ; preds = %entry, %entry
  %77 = load ptr, ptr %tif.addr, align 8
  %78 = load ptr, ptr %dir.addr, align 8
  %79 = load ptr, ptr %v.addr, align 8
  %call117 = call i32 @TIFFFetchRationalArray(ptr noundef %77, ptr noundef %78, ptr noundef %79)
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %if.end120, label %if.then119

if.then119:                                       ; preds = %sw.bb116
  store i32 0, ptr %retval, align 4
  br label %return

if.end120:                                        ; preds = %sw.bb116
  %80 = load ptr, ptr %v.addr, align 8
  store ptr %80, ptr %vp121, align 8
  %81 = load ptr, ptr %dir.addr, align 8
  %tdir_count122 = getelementptr inbounds %struct.TIFFDirEntry, ptr %81, i32 0, i32 2
  %82 = load i64, ptr %tdir_count122, align 8
  %sub123 = sub i64 %82, 1
  %conv124 = trunc i64 %sub123 to i32
  store i32 %conv124, ptr %i, align 4
  br label %for.cond125

for.cond125:                                      ; preds = %for.inc134, %if.end120
  %83 = load i32, ptr %i, align 4
  %cmp126 = icmp sge i32 %83, 0
  br i1 %cmp126, label %for.body128, label %for.end136

for.body128:                                      ; preds = %for.cond125
  %84 = load ptr, ptr %vp121, align 8
  %85 = load i32, ptr %i, align 4
  %idxprom129 = sext i32 %85 to i64
  %arrayidx130 = getelementptr inbounds float, ptr %84, i64 %idxprom129
  %86 = load float, ptr %arrayidx130, align 4
  %conv131 = fpext float %86 to double
  %87 = load ptr, ptr %v.addr, align 8
  %88 = load i32, ptr %i, align 4
  %idxprom132 = sext i32 %88 to i64
  %arrayidx133 = getelementptr inbounds double, ptr %87, i64 %idxprom132
  store double %conv131, ptr %arrayidx133, align 8
  br label %for.inc134

for.inc134:                                       ; preds = %for.body128
  %89 = load i32, ptr %i, align 4
  %dec135 = add nsw i32 %89, -1
  store i32 %dec135, ptr %i, align 4
  br label %for.cond125, !llvm.loop !27

for.end136:                                       ; preds = %for.cond125
  br label %sw.epilog

sw.bb137:                                         ; preds = %entry
  %90 = load ptr, ptr %tif.addr, align 8
  %91 = load ptr, ptr %dir.addr, align 8
  %92 = load ptr, ptr %v.addr, align 8
  %call138 = call i32 @TIFFFetchFloatArray(ptr noundef %90, ptr noundef %91, ptr noundef %92)
  %tobool139 = icmp ne i32 %call138, 0
  br i1 %tobool139, label %if.end141, label %if.then140

if.then140:                                       ; preds = %sw.bb137
  store i32 0, ptr %retval, align 4
  br label %return

if.end141:                                        ; preds = %sw.bb137
  %93 = load ptr, ptr %v.addr, align 8
  store ptr %93, ptr %vp142, align 8
  %94 = load ptr, ptr %dir.addr, align 8
  %tdir_count143 = getelementptr inbounds %struct.TIFFDirEntry, ptr %94, i32 0, i32 2
  %95 = load i64, ptr %tdir_count143, align 8
  %sub144 = sub i64 %95, 1
  %conv145 = trunc i64 %sub144 to i32
  store i32 %conv145, ptr %i, align 4
  br label %for.cond146

for.cond146:                                      ; preds = %for.inc155, %if.end141
  %96 = load i32, ptr %i, align 4
  %cmp147 = icmp sge i32 %96, 0
  br i1 %cmp147, label %for.body149, label %for.end157

for.body149:                                      ; preds = %for.cond146
  %97 = load ptr, ptr %vp142, align 8
  %98 = load i32, ptr %i, align 4
  %idxprom150 = sext i32 %98 to i64
  %arrayidx151 = getelementptr inbounds float, ptr %97, i64 %idxprom150
  %99 = load float, ptr %arrayidx151, align 4
  %conv152 = fpext float %99 to double
  %100 = load ptr, ptr %v.addr, align 8
  %101 = load i32, ptr %i, align 4
  %idxprom153 = sext i32 %101 to i64
  %arrayidx154 = getelementptr inbounds double, ptr %100, i64 %idxprom153
  store double %conv152, ptr %arrayidx154, align 8
  br label %for.inc155

for.inc155:                                       ; preds = %for.body149
  %102 = load i32, ptr %i, align 4
  %dec156 = add nsw i32 %102, -1
  store i32 %dec156, ptr %i, align 4
  br label %for.cond146, !llvm.loop !28

for.end157:                                       ; preds = %for.cond146
  br label %sw.epilog

sw.bb158:                                         ; preds = %entry
  %103 = load ptr, ptr %tif.addr, align 8
  %104 = load ptr, ptr %dir.addr, align 8
  %105 = load ptr, ptr %v.addr, align 8
  %call159 = call i32 @TIFFFetchDoubleArray(ptr noundef %103, ptr noundef %104, ptr noundef %105)
  store i32 %call159, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %106 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %106, i32 0, i32 0
  %107 = load ptr, ptr %tif_name, align 8
  %108 = load ptr, ptr %tif.addr, align 8
  %109 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %109, i32 0, i32 0
  %110 = load i16, ptr %tdir_tag, align 8
  %conv160 = zext i16 %110 to i64
  %call161 = call ptr @_TIFFFieldWithTag(ptr noundef %108, i64 noundef %conv160)
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call161, i32 0, i32 7
  %111 = load ptr, ptr %field_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %107, ptr noundef @.str.24, ptr noundef %111)
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %for.end157, %for.end136, %if.end115, %if.end71, %if.end27
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %sw.bb158, %if.then140, %if.then119, %if.then75, %if.then31, %if.then
  %112 = load i32, ptr %retval, align 4
  ret i32 %112
}

declare i64 @TIFFVTileSize(ptr noundef, i64 noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
