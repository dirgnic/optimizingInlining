; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2dither/tif_dirread.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2dither/tif_dirread.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }
%struct.TIFFDirEntry = type { i16, i16, i32, i32 }
%struct.TIFFFieldInfo = type { i32, i16, i16, i32, i16, i8, i8, ptr }

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
  %nextdiroff = alloca i32, align 4
  %cp = alloca ptr, align 8
  %diroutoforderwarning = alloca i32, align 4
  %off = alloca i32, align 4
  %expected = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 0, ptr %diroutoforderwarning, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_nextdiroff = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %tif_nextdiroff, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_diroff = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 4
  store i32 %1, ptr %tif_diroff, align 4
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_diroff1 = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 4
  %4 = load i32, ptr %tif_diroff1, align 4
  %cmp = icmp eq i32 %4, 0
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
  %9 = load i16, ptr %tif_curdir, align 4
  %inc = add i16 %9, 1
  store i16 %inc, ptr %tif_curdir, align 4
  store i32 0, ptr %nextdiroff, align 4
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %tif_flags, align 8
  %and = and i32 %11, 2048
  %cmp2 = icmp ne i32 %and, 0
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
  %17 = load i32, ptr %tif_diroff4, align 4
  %call = call i32 %13(ptr noundef %15, i32 noundef %17, i32 noundef 0)
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_diroff5 = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 4
  %19 = load i32, ptr %tif_diroff5, align 4
  %cmp6 = icmp eq i32 %call, %19
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
  %call10 = call i32 %23(ptr noundef %25, ptr noundef %dircount, i32 noundef 2)
  %cmp11 = icmp eq i32 %call10, 2
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
  %29 = load i32, ptr %tif_flags15, align 8
  %and16 = and i32 %29, 128
  %tobool = icmp ne i32 %and16, 0
  br i1 %tobool, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @TIFFSwabShort(ptr noundef %dircount)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14
  %30 = load ptr, ptr %tif.addr, align 8
  %31 = load i16, ptr %dircount, align 2
  %conv = zext i16 %31 to i64
  %mul = mul i64 %conv, 12
  %conv19 = trunc i64 %mul to i32
  %call20 = call ptr @CheckMalloc(ptr noundef %30, i32 noundef %conv19, ptr noundef @.str.2)
  store ptr %call20, ptr %dir, align 8
  %32 = load ptr, ptr %dir, align 8
  %cmp21 = icmp eq ptr %32, null
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end18
  store i32 0, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end18
  %33 = load ptr, ptr %tif.addr, align 8
  %tif_readproc25 = getelementptr inbounds %struct.tiff, ptr %33, i32 0, i32 49
  %34 = load ptr, ptr %tif_readproc25, align 8
  %35 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata26 = getelementptr inbounds %struct.tiff, ptr %35, i32 0, i32 48
  %36 = load ptr, ptr %tif_clientdata26, align 8
  %37 = load ptr, ptr %dir, align 8
  %38 = load i16, ptr %dircount, align 2
  %conv27 = zext i16 %38 to i32
  %conv28 = sext i32 %conv27 to i64
  %mul29 = mul i64 %conv28, 12
  %conv30 = trunc i64 %mul29 to i32
  %call31 = call i32 %34(ptr noundef %36, ptr noundef %37, i32 noundef %conv30)
  %conv32 = sext i32 %call31 to i64
  %39 = load i16, ptr %dircount, align 2
  %conv33 = zext i16 %39 to i32
  %conv34 = sext i32 %conv33 to i64
  %mul35 = mul i64 %conv34, 12
  %cmp36 = icmp eq i64 %conv32, %mul35
  br i1 %cmp36, label %if.end40, label %if.then38

if.then38:                                        ; preds = %if.end24
  %40 = load ptr, ptr %tif.addr, align 8
  %tif_name39 = getelementptr inbounds %struct.tiff, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %tif_name39, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %41, ptr noundef @.str.3)
  br label %bad

if.end40:                                         ; preds = %if.end24
  %42 = load ptr, ptr %tif.addr, align 8
  %tif_readproc41 = getelementptr inbounds %struct.tiff, ptr %42, i32 0, i32 49
  %43 = load ptr, ptr %tif_readproc41, align 8
  %44 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata42 = getelementptr inbounds %struct.tiff, ptr %44, i32 0, i32 48
  %45 = load ptr, ptr %tif_clientdata42, align 8
  %call43 = call i32 %43(ptr noundef %45, ptr noundef %nextdiroff, i32 noundef 4)
  %cmp44 = icmp eq i32 %call43, 4
  %conv45 = zext i1 %cmp44 to i32
  br label %if.end105

if.else:                                          ; preds = %if.end
  %46 = load ptr, ptr %tif.addr, align 8
  %tif_diroff46 = getelementptr inbounds %struct.tiff, ptr %46, i32 0, i32 4
  %47 = load i32, ptr %tif_diroff46, align 4
  store i32 %47, ptr %off, align 4
  %48 = load i32, ptr %off, align 4
  %conv47 = sext i32 %48 to i64
  %add = add i64 %conv47, 2
  %conv48 = trunc i64 %add to i32
  %49 = load ptr, ptr %tif.addr, align 8
  %tif_size = getelementptr inbounds %struct.tiff, ptr %49, i32 0, i32 45
  %50 = load i32, ptr %tif_size, align 8
  %cmp49 = icmp sgt i32 %conv48, %50
  br i1 %cmp49, label %if.then51, label %if.else53

if.then51:                                        ; preds = %if.else
  %51 = load ptr, ptr %tif.addr, align 8
  %tif_name52 = getelementptr inbounds %struct.tiff, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %tif_name52, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %52, ptr noundef @.str.1)
  store i32 0, ptr %retval, align 4
  br label %return

if.else53:                                        ; preds = %if.else
  %53 = load ptr, ptr %tif.addr, align 8
  %tif_base = getelementptr inbounds %struct.tiff, ptr %53, i32 0, i32 44
  %54 = load ptr, ptr %tif_base, align 8
  %55 = load i32, ptr %off, align 4
  %idx.ext = sext i32 %55 to i64
  %add.ptr = getelementptr inbounds i8, ptr %54, i64 %idx.ext
  call void @_TIFFmemcpy(ptr noundef %dircount, ptr noundef %add.ptr, i32 noundef 2)
  br label %if.end54

if.end54:                                         ; preds = %if.else53
  %56 = load i32, ptr %off, align 4
  %conv55 = sext i32 %56 to i64
  %add56 = add i64 %conv55, 2
  %conv57 = trunc i64 %add56 to i32
  store i32 %conv57, ptr %off, align 4
  %57 = load ptr, ptr %tif.addr, align 8
  %tif_flags58 = getelementptr inbounds %struct.tiff, ptr %57, i32 0, i32 3
  %58 = load i32, ptr %tif_flags58, align 8
  %and59 = and i32 %58, 128
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end54
  call void @TIFFSwabShort(ptr noundef %dircount)
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end54
  %59 = load ptr, ptr %tif.addr, align 8
  %60 = load i16, ptr %dircount, align 2
  %conv63 = zext i16 %60 to i64
  %mul64 = mul i64 %conv63, 12
  %conv65 = trunc i64 %mul64 to i32
  %call66 = call ptr @CheckMalloc(ptr noundef %59, i32 noundef %conv65, ptr noundef @.str.2)
  store ptr %call66, ptr %dir, align 8
  %61 = load ptr, ptr %dir, align 8
  %cmp67 = icmp eq ptr %61, null
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end62
  store i32 0, ptr %retval, align 4
  br label %return

if.end70:                                         ; preds = %if.end62
  %62 = load i32, ptr %off, align 4
  %conv71 = sext i32 %62 to i64
  %63 = load i16, ptr %dircount, align 2
  %conv72 = zext i16 %63 to i64
  %mul73 = mul i64 %conv72, 12
  %add74 = add i64 %conv71, %mul73
  %conv75 = trunc i64 %add74 to i32
  %64 = load ptr, ptr %tif.addr, align 8
  %tif_size76 = getelementptr inbounds %struct.tiff, ptr %64, i32 0, i32 45
  %65 = load i32, ptr %tif_size76, align 8
  %cmp77 = icmp sgt i32 %conv75, %65
  br i1 %cmp77, label %if.then79, label %if.else81

if.then79:                                        ; preds = %if.end70
  %66 = load ptr, ptr %tif.addr, align 8
  %tif_name80 = getelementptr inbounds %struct.tiff, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %tif_name80, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %67, ptr noundef @.str.3)
  br label %bad

if.else81:                                        ; preds = %if.end70
  %68 = load ptr, ptr %dir, align 8
  %69 = load ptr, ptr %tif.addr, align 8
  %tif_base82 = getelementptr inbounds %struct.tiff, ptr %69, i32 0, i32 44
  %70 = load ptr, ptr %tif_base82, align 8
  %71 = load i32, ptr %off, align 4
  %idx.ext83 = sext i32 %71 to i64
  %add.ptr84 = getelementptr inbounds i8, ptr %70, i64 %idx.ext83
  %72 = load i16, ptr %dircount, align 2
  %conv85 = zext i16 %72 to i64
  %mul86 = mul i64 %conv85, 12
  %conv87 = trunc i64 %mul86 to i32
  call void @_TIFFmemcpy(ptr noundef %68, ptr noundef %add.ptr84, i32 noundef %conv87)
  br label %if.end88

if.end88:                                         ; preds = %if.else81
  %73 = load i16, ptr %dircount, align 2
  %conv89 = zext i16 %73 to i64
  %mul90 = mul i64 %conv89, 12
  %74 = load i32, ptr %off, align 4
  %conv91 = sext i32 %74 to i64
  %add92 = add i64 %conv91, %mul90
  %conv93 = trunc i64 %add92 to i32
  store i32 %conv93, ptr %off, align 4
  %75 = load i32, ptr %off, align 4
  %conv94 = sext i32 %75 to i64
  %add95 = add i64 %conv94, 4
  %conv96 = trunc i64 %add95 to i32
  %76 = load ptr, ptr %tif.addr, align 8
  %tif_size97 = getelementptr inbounds %struct.tiff, ptr %76, i32 0, i32 45
  %77 = load i32, ptr %tif_size97, align 8
  %cmp98 = icmp sle i32 %conv96, %77
  br i1 %cmp98, label %if.then100, label %if.end104

if.then100:                                       ; preds = %if.end88
  %78 = load ptr, ptr %tif.addr, align 8
  %tif_base101 = getelementptr inbounds %struct.tiff, ptr %78, i32 0, i32 44
  %79 = load ptr, ptr %tif_base101, align 8
  %80 = load i32, ptr %off, align 4
  %idx.ext102 = sext i32 %80 to i64
  %add.ptr103 = getelementptr inbounds i8, ptr %79, i64 %idx.ext102
  call void @_TIFFmemcpy(ptr noundef %nextdiroff, ptr noundef %add.ptr103, i32 noundef 4)
  br label %if.end104

if.end104:                                        ; preds = %if.then100, %if.end88
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.end40
  %81 = load ptr, ptr %tif.addr, align 8
  %tif_flags106 = getelementptr inbounds %struct.tiff, ptr %81, i32 0, i32 3
  %82 = load i32, ptr %tif_flags106, align 8
  %and107 = and i32 %82, 128
  %tobool108 = icmp ne i32 %and107, 0
  br i1 %tobool108, label %if.then109, label %if.end110

if.then109:                                       ; preds = %if.end105
  call void @TIFFSwabLong(ptr noundef %nextdiroff)
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %if.end105
  %83 = load i32, ptr %nextdiroff, align 4
  %84 = load ptr, ptr %tif.addr, align 8
  %tif_nextdiroff111 = getelementptr inbounds %struct.tiff, ptr %84, i32 0, i32 5
  store i32 %83, ptr %tif_nextdiroff111, align 8
  %85 = load ptr, ptr %tif.addr, align 8
  %tif_flags112 = getelementptr inbounds %struct.tiff, ptr %85, i32 0, i32 3
  %86 = load i32, ptr %tif_flags112, align 8
  %and113 = and i32 %86, -65
  store i32 %and113, ptr %tif_flags112, align 8
  %87 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %87, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %88 = load ptr, ptr %tif.addr, align 8
  call void @TIFFFreeDirectory(ptr noundef %88)
  %89 = load ptr, ptr %tif.addr, align 8
  %call114 = call i32 @TIFFDefaultDirectory(ptr noundef %89)
  %90 = load ptr, ptr %tif.addr, align 8
  %call115 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %90, i32 noundef 284, i32 noundef 1)
  %91 = load ptr, ptr %dir, align 8
  store ptr %91, ptr %dp, align 8
  %92 = load i16, ptr %dircount, align 2
  %conv116 = zext i16 %92 to i32
  store i32 %conv116, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end110
  %93 = load i32, ptr %n, align 4
  %cmp117 = icmp sgt i32 %93, 0
  br i1 %cmp117, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %94 = load ptr, ptr %tif.addr, align 8
  %tif_flags119 = getelementptr inbounds %struct.tiff, ptr %94, i32 0, i32 3
  %95 = load i32, ptr %tif_flags119, align 8
  %and120 = and i32 %95, 128
  %tobool121 = icmp ne i32 %and120, 0
  br i1 %tobool121, label %if.then122, label %if.end123

if.then122:                                       ; preds = %for.body
  %96 = load ptr, ptr %dp, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %96, i32 0, i32 0
  call void @TIFFSwabArrayOfShort(ptr noundef %tdir_tag, i64 noundef 2)
  %97 = load ptr, ptr %dp, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %97, i32 0, i32 2
  call void @TIFFSwabArrayOfLong(ptr noundef %tdir_count, i64 noundef 2)
  br label %if.end123

if.end123:                                        ; preds = %if.then122, %for.body
  %98 = load ptr, ptr %dp, align 8
  %tdir_tag124 = getelementptr inbounds %struct.TIFFDirEntry, ptr %98, i32 0, i32 0
  %99 = load i16, ptr %tdir_tag124, align 4
  %conv125 = zext i16 %99 to i32
  %cmp126 = icmp eq i32 %conv125, 277
  br i1 %cmp126, label %if.then128, label %if.end134

if.then128:                                       ; preds = %if.end123
  %100 = load ptr, ptr %tif.addr, align 8
  %101 = load ptr, ptr %dp, align 8
  %call129 = call i32 @TIFFFetchNormalTag(ptr noundef %100, ptr noundef %101)
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.end132, label %if.then131

if.then131:                                       ; preds = %if.then128
  br label %bad

if.end132:                                        ; preds = %if.then128
  %102 = load ptr, ptr %dp, align 8
  %tdir_tag133 = getelementptr inbounds %struct.TIFFDirEntry, ptr %102, i32 0, i32 0
  store i16 0, ptr %tdir_tag133, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.end132, %if.end123
  br label %for.inc

for.inc:                                          ; preds = %if.end134
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
  %conv135 = zext i16 %106 to i32
  store i32 %conv135, ptr %n, align 4
  br label %for.cond136

for.cond136:                                      ; preds = %for.inc317, %for.end
  %107 = load i32, ptr %n, align 4
  %cmp137 = icmp sgt i32 %107, 0
  br i1 %cmp137, label %for.body139, label %for.end320

for.body139:                                      ; preds = %for.cond136
  %108 = load ptr, ptr %dp, align 8
  %tdir_tag140 = getelementptr inbounds %struct.TIFFDirEntry, ptr %108, i32 0, i32 0
  %109 = load i16, ptr %tdir_tag140, align 4
  %conv141 = zext i16 %109 to i32
  %call142 = call i32 @TIFFReassignTagToIgnore(i32 noundef 1, i32 noundef %conv141)
  %tobool143 = icmp ne i32 %call142, 0
  br i1 %tobool143, label %if.then144, label %if.end146

if.then144:                                       ; preds = %for.body139
  %110 = load ptr, ptr %dp, align 8
  %tdir_tag145 = getelementptr inbounds %struct.TIFFDirEntry, ptr %110, i32 0, i32 0
  store i16 0, ptr %tdir_tag145, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then144, %for.body139
  %111 = load ptr, ptr %dp, align 8
  %tdir_tag147 = getelementptr inbounds %struct.TIFFDirEntry, ptr %111, i32 0, i32 0
  %112 = load i16, ptr %tdir_tag147, align 4
  %conv148 = zext i16 %112 to i32
  %cmp149 = icmp eq i32 %conv148, 0
  br i1 %cmp149, label %if.then151, label %if.end152

if.then151:                                       ; preds = %if.end146
  br label %for.inc317

if.end152:                                        ; preds = %if.end146
  %113 = load ptr, ptr %dp, align 8
  %tdir_tag153 = getelementptr inbounds %struct.TIFFDirEntry, ptr %113, i32 0, i32 0
  %114 = load i16, ptr %tdir_tag153, align 4
  %conv154 = zext i16 %114 to i32
  %115 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo = getelementptr inbounds %struct.tiff, ptr %115, i32 0, i32 55
  %116 = load ptr, ptr %tif_fieldinfo, align 8
  %117 = load i32, ptr %fix, align 4
  %idxprom = sext i32 %117 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %116, i64 %idxprom
  %118 = load ptr, ptr %arrayidx, align 8
  %field_tag = getelementptr inbounds %struct.TIFFFieldInfo, ptr %118, i32 0, i32 0
  %119 = load i32, ptr %field_tag, align 8
  %cmp155 = icmp ult i32 %conv154, %119
  br i1 %cmp155, label %if.then157, label %if.end162

if.then157:                                       ; preds = %if.end152
  %120 = load i32, ptr %diroutoforderwarning, align 4
  %tobool158 = icmp ne i32 %120, 0
  br i1 %tobool158, label %if.end161, label %if.then159

if.then159:                                       ; preds = %if.then157
  %121 = load ptr, ptr %tif.addr, align 8
  %tif_name160 = getelementptr inbounds %struct.tiff, ptr %121, i32 0, i32 0
  %122 = load ptr, ptr %tif_name160, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %122, ptr noundef @.str.4)
  store i32 1, ptr %diroutoforderwarning, align 4
  br label %if.end161

if.end161:                                        ; preds = %if.then159, %if.then157
  store i32 0, ptr %fix, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %if.end152
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end162
  %123 = load i32, ptr %fix, align 4
  %124 = load ptr, ptr %tif.addr, align 8
  %tif_nfields = getelementptr inbounds %struct.tiff, ptr %124, i32 0, i32 56
  %125 = load i32, ptr %tif_nfields, align 8
  %cmp163 = icmp slt i32 %123, %125
  br i1 %cmp163, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %126 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo165 = getelementptr inbounds %struct.tiff, ptr %126, i32 0, i32 55
  %127 = load ptr, ptr %tif_fieldinfo165, align 8
  %128 = load i32, ptr %fix, align 4
  %idxprom166 = sext i32 %128 to i64
  %arrayidx167 = getelementptr inbounds ptr, ptr %127, i64 %idxprom166
  %129 = load ptr, ptr %arrayidx167, align 8
  %field_tag168 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %129, i32 0, i32 0
  %130 = load i32, ptr %field_tag168, align 8
  %131 = load ptr, ptr %dp, align 8
  %tdir_tag169 = getelementptr inbounds %struct.TIFFDirEntry, ptr %131, i32 0, i32 0
  %132 = load i16, ptr %tdir_tag169, align 4
  %conv170 = zext i16 %132 to i32
  %cmp171 = icmp ult i32 %130, %conv170
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %133 = phi i1 [ false, %while.cond ], [ %cmp171, %land.rhs ]
  br i1 %133, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %134 = load i32, ptr %fix, align 4
  %inc173 = add nsw i32 %134, 1
  store i32 %inc173, ptr %fix, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end
  %135 = load i32, ptr %fix, align 4
  %136 = load ptr, ptr %tif.addr, align 8
  %tif_nfields174 = getelementptr inbounds %struct.tiff, ptr %136, i32 0, i32 56
  %137 = load i32, ptr %tif_nfields174, align 8
  %cmp175 = icmp eq i32 %135, %137
  br i1 %cmp175, label %if.then185, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %138 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo177 = getelementptr inbounds %struct.tiff, ptr %138, i32 0, i32 55
  %139 = load ptr, ptr %tif_fieldinfo177, align 8
  %140 = load i32, ptr %fix, align 4
  %idxprom178 = sext i32 %140 to i64
  %arrayidx179 = getelementptr inbounds ptr, ptr %139, i64 %idxprom178
  %141 = load ptr, ptr %arrayidx179, align 8
  %field_tag180 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %141, i32 0, i32 0
  %142 = load i32, ptr %field_tag180, align 8
  %143 = load ptr, ptr %dp, align 8
  %tdir_tag181 = getelementptr inbounds %struct.TIFFDirEntry, ptr %143, i32 0, i32 0
  %144 = load i16, ptr %tdir_tag181, align 4
  %conv182 = zext i16 %144 to i32
  %cmp183 = icmp ne i32 %142, %conv182
  br i1 %cmp183, label %if.then185, label %if.end192

if.then185:                                       ; preds = %lor.lhs.false, %while.end
  %145 = load ptr, ptr %tif.addr, align 8
  %tif_name186 = getelementptr inbounds %struct.tiff, ptr %145, i32 0, i32 0
  %146 = load ptr, ptr %tif_name186, align 8
  %147 = load ptr, ptr %dp, align 8
  %tdir_tag187 = getelementptr inbounds %struct.TIFFDirEntry, ptr %147, i32 0, i32 0
  %148 = load i16, ptr %tdir_tag187, align 4
  %conv188 = zext i16 %148 to i32
  %149 = load ptr, ptr %dp, align 8
  %tdir_tag189 = getelementptr inbounds %struct.TIFFDirEntry, ptr %149, i32 0, i32 0
  %150 = load i16, ptr %tdir_tag189, align 4
  %conv190 = zext i16 %150 to i32
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %146, ptr noundef @.str.5, i32 noundef %conv188, i32 noundef %conv190)
  %151 = load ptr, ptr %dp, align 8
  %tdir_tag191 = getelementptr inbounds %struct.TIFFDirEntry, ptr %151, i32 0, i32 0
  store i16 0, ptr %tdir_tag191, align 4
  store i32 0, ptr %fix, align 4
  br label %for.inc317

if.end192:                                        ; preds = %lor.lhs.false
  %152 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo193 = getelementptr inbounds %struct.tiff, ptr %152, i32 0, i32 55
  %153 = load ptr, ptr %tif_fieldinfo193, align 8
  %154 = load i32, ptr %fix, align 4
  %idxprom194 = sext i32 %154 to i64
  %arrayidx195 = getelementptr inbounds ptr, ptr %153, i64 %idxprom194
  %155 = load ptr, ptr %arrayidx195, align 8
  %field_bit = getelementptr inbounds %struct.TIFFFieldInfo, ptr %155, i32 0, i32 4
  %156 = load i16, ptr %field_bit, align 4
  %conv196 = zext i16 %156 to i32
  %cmp197 = icmp eq i32 %conv196, 0
  br i1 %cmp197, label %if.then199, label %if.end201

if.then199:                                       ; preds = %if.end192
  br label %ignore

ignore:                                           ; preds = %if.then248, %if.then228, %if.then199
  %157 = load ptr, ptr %dp, align 8
  %tdir_tag200 = getelementptr inbounds %struct.TIFFDirEntry, ptr %157, i32 0, i32 0
  store i16 0, ptr %tdir_tag200, align 4
  br label %for.inc317

if.end201:                                        ; preds = %if.end192
  %158 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo202 = getelementptr inbounds %struct.tiff, ptr %158, i32 0, i32 55
  %159 = load ptr, ptr %tif_fieldinfo202, align 8
  %160 = load i32, ptr %fix, align 4
  %idxprom203 = sext i32 %160 to i64
  %arrayidx204 = getelementptr inbounds ptr, ptr %159, i64 %idxprom203
  %161 = load ptr, ptr %arrayidx204, align 8
  store ptr %161, ptr %fip, align 8
  br label %while.cond205

while.cond205:                                    ; preds = %if.end233, %if.end201
  %162 = load ptr, ptr %dp, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %162, i32 0, i32 1
  %163 = load i16, ptr %tdir_type, align 2
  %conv206 = zext i16 %163 to i32
  %164 = load ptr, ptr %fip, align 8
  %field_type = getelementptr inbounds %struct.TIFFFieldInfo, ptr %164, i32 0, i32 3
  %165 = load i32, ptr %field_type, align 8
  %conv207 = trunc i32 %165 to i16
  %conv208 = zext i16 %conv207 to i32
  %cmp209 = icmp ne i32 %conv206, %conv208
  br i1 %cmp209, label %while.body211, label %while.end234

while.body211:                                    ; preds = %while.cond205
  %166 = load ptr, ptr %fip, align 8
  %field_type212 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %166, i32 0, i32 3
  %167 = load i32, ptr %field_type212, align 8
  %cmp213 = icmp eq i32 %167, 0
  br i1 %cmp213, label %if.then215, label %if.end216

if.then215:                                       ; preds = %while.body211
  br label %while.end234

if.end216:                                        ; preds = %while.body211
  %168 = load ptr, ptr %fip, align 8
  %incdec.ptr217 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %168, i32 1
  store ptr %incdec.ptr217, ptr %fip, align 8
  %169 = load i32, ptr %fix, align 4
  %inc218 = add nsw i32 %169, 1
  store i32 %inc218, ptr %fix, align 4
  %170 = load i32, ptr %fix, align 4
  %171 = load ptr, ptr %tif.addr, align 8
  %tif_nfields219 = getelementptr inbounds %struct.tiff, ptr %171, i32 0, i32 56
  %172 = load i32, ptr %tif_nfields219, align 8
  %cmp220 = icmp eq i32 %170, %172
  br i1 %cmp220, label %if.then228, label %lor.lhs.false222

lor.lhs.false222:                                 ; preds = %if.end216
  %173 = load ptr, ptr %fip, align 8
  %field_tag223 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %173, i32 0, i32 0
  %174 = load i32, ptr %field_tag223, align 8
  %175 = load ptr, ptr %dp, align 8
  %tdir_tag224 = getelementptr inbounds %struct.TIFFDirEntry, ptr %175, i32 0, i32 0
  %176 = load i16, ptr %tdir_tag224, align 4
  %conv225 = zext i16 %176 to i32
  %cmp226 = icmp ne i32 %174, %conv225
  br i1 %cmp226, label %if.then228, label %if.end233

if.then228:                                       ; preds = %lor.lhs.false222, %if.end216
  %177 = load ptr, ptr %tif.addr, align 8
  %tif_name229 = getelementptr inbounds %struct.tiff, ptr %177, i32 0, i32 0
  %178 = load ptr, ptr %tif_name229, align 8
  %179 = load ptr, ptr %dp, align 8
  %tdir_type230 = getelementptr inbounds %struct.TIFFDirEntry, ptr %179, i32 0, i32 1
  %180 = load i16, ptr %tdir_type230, align 2
  %conv231 = zext i16 %180 to i32
  %181 = load ptr, ptr %fip, align 8
  %arrayidx232 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %181, i64 -1
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %arrayidx232, i32 0, i32 7
  %182 = load ptr, ptr %field_name, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %178, ptr noundef @.str.6, i32 noundef %conv231, ptr noundef %182)
  br label %ignore

if.end233:                                        ; preds = %lor.lhs.false222
  br label %while.cond205, !llvm.loop !9

while.end234:                                     ; preds = %if.then215, %while.cond205
  %183 = load ptr, ptr %fip, align 8
  %field_readcount = getelementptr inbounds %struct.TIFFFieldInfo, ptr %183, i32 0, i32 1
  %184 = load i16, ptr %field_readcount, align 4
  %conv235 = sext i16 %184 to i32
  %cmp236 = icmp ne i32 %conv235, -1
  br i1 %cmp236, label %if.then238, label %if.end250

if.then238:                                       ; preds = %while.end234
  %185 = load ptr, ptr %fip, align 8
  %field_readcount239 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %185, i32 0, i32 1
  %186 = load i16, ptr %field_readcount239, align 4
  %conv240 = sext i16 %186 to i32
  %cmp241 = icmp eq i32 %conv240, -2
  br i1 %cmp241, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then238
  %187 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %187, i32 0, i32 15
  %188 = load i16, ptr %td_samplesperpixel, align 2
  %conv243 = zext i16 %188 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then238
  %189 = load ptr, ptr %fip, align 8
  %field_readcount244 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %189, i32 0, i32 1
  %190 = load i16, ptr %field_readcount244, align 4
  %conv245 = sext i16 %190 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv243, %cond.true ], [ %conv245, %cond.false ]
  store i32 %cond, ptr %expected, align 4
  %191 = load ptr, ptr %tif.addr, align 8
  %192 = load ptr, ptr %dp, align 8
  %193 = load i32, ptr %expected, align 4
  %call246 = call i32 @CheckDirCount(ptr noundef %191, ptr noundef %192, i32 noundef %193)
  %tobool247 = icmp ne i32 %call246, 0
  br i1 %tobool247, label %if.end249, label %if.then248

if.then248:                                       ; preds = %cond.end
  br label %ignore

if.end249:                                        ; preds = %cond.end
  br label %if.end250

if.end250:                                        ; preds = %if.end249, %while.end234
  %194 = load ptr, ptr %dp, align 8
  %tdir_tag251 = getelementptr inbounds %struct.TIFFDirEntry, ptr %194, i32 0, i32 0
  %195 = load i16, ptr %tdir_tag251, align 4
  %conv252 = zext i16 %195 to i32
  switch i32 %conv252, label %sw.epilog [
    i32 259, label %sw.bb
    i32 273, label %sw.bb299
    i32 279, label %sw.bb299
    i32 324, label %sw.bb299
    i32 325, label %sw.bb299
    i32 256, label %sw.bb308
    i32 257, label %sw.bb308
    i32 32997, label %sw.bb308
    i32 323, label %sw.bb308
    i32 322, label %sw.bb308
    i32 32998, label %sw.bb308
    i32 284, label %sw.bb308
    i32 278, label %sw.bb308
    i32 338, label %sw.bb314
  ]

sw.bb:                                            ; preds = %if.end250
  %196 = load ptr, ptr %dp, align 8
  %tdir_count253 = getelementptr inbounds %struct.TIFFDirEntry, ptr %196, i32 0, i32 2
  %197 = load i32, ptr %tdir_count253, align 4
  %cmp254 = icmp eq i32 %197, 1
  br i1 %cmp254, label %if.then256, label %if.end288

if.then256:                                       ; preds = %sw.bb
  %198 = load ptr, ptr %tif.addr, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %198, i32 0, i32 7
  %tiff_magic = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header, i32 0, i32 0
  %199 = load i16, ptr %tiff_magic, align 8
  %conv257 = zext i16 %199 to i32
  %cmp258 = icmp eq i32 %conv257, 19789
  br i1 %cmp258, label %cond.true260, label %cond.false269

cond.true260:                                     ; preds = %if.then256
  %200 = load ptr, ptr %dp, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %200, i32 0, i32 3
  %201 = load i32, ptr %tdir_offset, align 4
  %202 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift = getelementptr inbounds %struct.tiff, ptr %202, i32 0, i32 9
  %203 = load ptr, ptr %tif_typeshift, align 8
  %204 = load ptr, ptr %dp, align 8
  %tdir_type261 = getelementptr inbounds %struct.TIFFDirEntry, ptr %204, i32 0, i32 1
  %205 = load i16, ptr %tdir_type261, align 2
  %idxprom262 = zext i16 %205 to i64
  %arrayidx263 = getelementptr inbounds i32, ptr %203, i64 %idxprom262
  %206 = load i32, ptr %arrayidx263, align 4
  %shr = lshr i32 %201, %206
  %conv264 = zext i32 %shr to i64
  %207 = load ptr, ptr %tif.addr, align 8
  %tif_typemask = getelementptr inbounds %struct.tiff, ptr %207, i32 0, i32 10
  %208 = load ptr, ptr %tif_typemask, align 8
  %209 = load ptr, ptr %dp, align 8
  %tdir_type265 = getelementptr inbounds %struct.TIFFDirEntry, ptr %209, i32 0, i32 1
  %210 = load i16, ptr %tdir_type265, align 2
  %idxprom266 = zext i16 %210 to i64
  %arrayidx267 = getelementptr inbounds i64, ptr %208, i64 %idxprom266
  %211 = load i64, ptr %arrayidx267, align 8
  %and268 = and i64 %conv264, %211
  br label %cond.end277

cond.false269:                                    ; preds = %if.then256
  %212 = load ptr, ptr %dp, align 8
  %tdir_offset270 = getelementptr inbounds %struct.TIFFDirEntry, ptr %212, i32 0, i32 3
  %213 = load i32, ptr %tdir_offset270, align 4
  %conv271 = zext i32 %213 to i64
  %214 = load ptr, ptr %tif.addr, align 8
  %tif_typemask272 = getelementptr inbounds %struct.tiff, ptr %214, i32 0, i32 10
  %215 = load ptr, ptr %tif_typemask272, align 8
  %216 = load ptr, ptr %dp, align 8
  %tdir_type273 = getelementptr inbounds %struct.TIFFDirEntry, ptr %216, i32 0, i32 1
  %217 = load i16, ptr %tdir_type273, align 2
  %idxprom274 = zext i16 %217 to i64
  %arrayidx275 = getelementptr inbounds i64, ptr %215, i64 %idxprom274
  %218 = load i64, ptr %arrayidx275, align 8
  %and276 = and i64 %conv271, %218
  br label %cond.end277

cond.end277:                                      ; preds = %cond.false269, %cond.true260
  %cond278 = phi i64 [ %and268, %cond.true260 ], [ %and276, %cond.false269 ]
  %conv279 = trunc i64 %cond278 to i32
  %conv280 = zext i32 %conv279 to i64
  store i64 %conv280, ptr %v, align 8
  %219 = load ptr, ptr %tif.addr, align 8
  %220 = load ptr, ptr %dp, align 8
  %tdir_tag281 = getelementptr inbounds %struct.TIFFDirEntry, ptr %220, i32 0, i32 0
  %221 = load i16, ptr %tdir_tag281, align 4
  %conv282 = zext i16 %221 to i32
  %222 = load i64, ptr %v, align 8
  %conv283 = trunc i64 %222 to i32
  %call284 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %219, i32 noundef %conv282, i32 noundef %conv283)
  %tobool285 = icmp ne i32 %call284, 0
  br i1 %tobool285, label %if.end287, label %if.then286

if.then286:                                       ; preds = %cond.end277
  br label %bad

if.end287:                                        ; preds = %cond.end277
  br label %sw.epilog

if.end288:                                        ; preds = %sw.bb
  %223 = load ptr, ptr %tif.addr, align 8
  %224 = load ptr, ptr %dp, align 8
  %call289 = call i32 @TIFFFetchPerSampleShorts(ptr noundef %223, ptr noundef %224, ptr noundef %iv)
  %tobool290 = icmp ne i32 %call289, 0
  br i1 %tobool290, label %lor.lhs.false291, label %if.then296

lor.lhs.false291:                                 ; preds = %if.end288
  %225 = load ptr, ptr %tif.addr, align 8
  %226 = load ptr, ptr %dp, align 8
  %tdir_tag292 = getelementptr inbounds %struct.TIFFDirEntry, ptr %226, i32 0, i32 0
  %227 = load i16, ptr %tdir_tag292, align 4
  %conv293 = zext i16 %227 to i32
  %228 = load i32, ptr %iv, align 4
  %call294 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %225, i32 noundef %conv293, i32 noundef %228)
  %tobool295 = icmp ne i32 %call294, 0
  br i1 %tobool295, label %if.end297, label %if.then296

if.then296:                                       ; preds = %lor.lhs.false291, %if.end288
  br label %bad

if.end297:                                        ; preds = %lor.lhs.false291
  %229 = load ptr, ptr %dp, align 8
  %tdir_tag298 = getelementptr inbounds %struct.TIFFDirEntry, ptr %229, i32 0, i32 0
  store i16 0, ptr %tdir_tag298, align 4
  br label %sw.epilog

sw.bb299:                                         ; preds = %if.end250, %if.end250, %if.end250, %if.end250
  %230 = load ptr, ptr %fip, align 8
  %field_bit300 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %230, i32 0, i32 4
  %231 = load i16, ptr %field_bit300, align 4
  %conv301 = zext i16 %231 to i32
  %and302 = and i32 %conv301, 31
  %sh_prom = zext i32 %and302 to i64
  %shl = shl i64 1, %sh_prom
  %232 = load ptr, ptr %tif.addr, align 8
  %tif_dir303 = getelementptr inbounds %struct.tiff, ptr %232, i32 0, i32 6
  %td_fieldsset = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir303, i32 0, i32 0
  %233 = load ptr, ptr %fip, align 8
  %field_bit304 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %233, i32 0, i32 4
  %234 = load i16, ptr %field_bit304, align 4
  %conv305 = zext i16 %234 to i32
  %div = sdiv i32 %conv305, 32
  %idxprom306 = sext i32 %div to i64
  %arrayidx307 = getelementptr inbounds [3 x i64], ptr %td_fieldsset, i64 0, i64 %idxprom306
  %235 = load i64, ptr %arrayidx307, align 8
  %or = or i64 %235, %shl
  store i64 %or, ptr %arrayidx307, align 8
  br label %sw.epilog

sw.bb308:                                         ; preds = %if.end250, %if.end250, %if.end250, %if.end250, %if.end250, %if.end250, %if.end250, %if.end250
  %236 = load ptr, ptr %tif.addr, align 8
  %237 = load ptr, ptr %dp, align 8
  %call309 = call i32 @TIFFFetchNormalTag(ptr noundef %236, ptr noundef %237)
  %tobool310 = icmp ne i32 %call309, 0
  br i1 %tobool310, label %if.end312, label %if.then311

if.then311:                                       ; preds = %sw.bb308
  br label %bad

if.end312:                                        ; preds = %sw.bb308
  %238 = load ptr, ptr %dp, align 8
  %tdir_tag313 = getelementptr inbounds %struct.TIFFDirEntry, ptr %238, i32 0, i32 0
  store i16 0, ptr %tdir_tag313, align 4
  br label %sw.epilog

sw.bb314:                                         ; preds = %if.end250
  %239 = load ptr, ptr %tif.addr, align 8
  %240 = load ptr, ptr %dp, align 8
  %call315 = call i32 @TIFFFetchExtraSamples(ptr noundef %239, ptr noundef %240)
  %241 = load ptr, ptr %dp, align 8
  %tdir_tag316 = getelementptr inbounds %struct.TIFFDirEntry, ptr %241, i32 0, i32 0
  store i16 0, ptr %tdir_tag316, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end250, %sw.bb314, %if.end312, %sw.bb299, %if.end297, %if.end287
  br label %for.inc317

for.inc317:                                       ; preds = %sw.epilog, %ignore, %if.then185, %if.then151
  %242 = load i32, ptr %n, align 4
  %dec318 = add nsw i32 %242, -1
  store i32 %dec318, ptr %n, align 4
  %243 = load ptr, ptr %dp, align 8
  %incdec.ptr319 = getelementptr inbounds %struct.TIFFDirEntry, ptr %243, i32 1
  store ptr %incdec.ptr319, ptr %dp, align 8
  br label %for.cond136, !llvm.loop !10

for.end320:                                       ; preds = %for.cond136
  %244 = load ptr, ptr %tif.addr, align 8
  %tif_dir321 = getelementptr inbounds %struct.tiff, ptr %244, i32 0, i32 6
  %td_fieldsset322 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir321, i32 0, i32 0
  %arrayidx323 = getelementptr inbounds [3 x i64], ptr %td_fieldsset322, i64 0, i64 0
  %245 = load i64, ptr %arrayidx323, align 8
  %and324 = and i64 %245, 2
  %tobool325 = icmp ne i64 %and324, 0
  br i1 %tobool325, label %if.end327, label %if.then326

if.then326:                                       ; preds = %for.end320
  %246 = load ptr, ptr %tif.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_dirread_0(ptr noundef %246, ptr noundef @.str.7)
  br label %bad

if.end327:                                        ; preds = %for.end320
  %247 = load ptr, ptr %tif.addr, align 8
  %tif_dir328 = getelementptr inbounds %struct.tiff, ptr %247, i32 0, i32 6
  %td_fieldsset329 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir328, i32 0, i32 0
  %arrayidx330 = getelementptr inbounds [3 x i64], ptr %td_fieldsset329, i64 0, i64 0
  %248 = load i64, ptr %arrayidx330, align 8
  %and331 = and i64 %248, 1048576
  %tobool332 = icmp ne i64 %and331, 0
  br i1 %tobool332, label %if.end334, label %if.then333

if.then333:                                       ; preds = %if.end327
  %249 = load ptr, ptr %tif.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_dirread_1(ptr noundef %249, ptr noundef @.str.8)
  br label %bad

if.end334:                                        ; preds = %if.end327
  %250 = load ptr, ptr %tif.addr, align 8
  %tif_dir335 = getelementptr inbounds %struct.tiff, ptr %250, i32 0, i32 6
  %td_fieldsset336 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir335, i32 0, i32 0
  %arrayidx337 = getelementptr inbounds [3 x i64], ptr %td_fieldsset336, i64 0, i64 0
  %251 = load i64, ptr %arrayidx337, align 8
  %and338 = and i64 %251, 4
  %tobool339 = icmp ne i64 %and338, 0
  br i1 %tobool339, label %if.else344, label %if.then340

if.then340:                                       ; preds = %if.end334
  %252 = load ptr, ptr %tif.addr, align 8
  %call341 = call i32 @TIFFNumberOfStrips(ptr noundef %252)
  %253 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %253, i32 0, i32 43
  store i32 %call341, ptr %td_nstrips, align 4
  %254 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %254, i32 0, i32 1
  %255 = load i32, ptr %td_imagewidth, align 8
  %256 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %256, i32 0, i32 4
  store i32 %255, ptr %td_tilewidth, align 4
  %257 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %257, i32 0, i32 16
  %258 = load i32, ptr %td_rowsperstrip, align 4
  %259 = load ptr, ptr %td, align 8
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %259, i32 0, i32 5
  store i32 %258, ptr %td_tilelength, align 8
  %260 = load ptr, ptr %td, align 8
  %td_imagedepth = getelementptr inbounds %struct.TIFFDirectory, ptr %260, i32 0, i32 3
  %261 = load i32, ptr %td_imagedepth, align 8
  %262 = load ptr, ptr %td, align 8
  %td_tiledepth = getelementptr inbounds %struct.TIFFDirectory, ptr %262, i32 0, i32 6
  store i32 %261, ptr %td_tiledepth, align 4
  %263 = load ptr, ptr %tif.addr, align 8
  %tif_flags342 = getelementptr inbounds %struct.tiff, ptr %263, i32 0, i32 3
  %264 = load i32, ptr %tif_flags342, align 8
  %and343 = and i32 %264, -1025
  store i32 %and343, ptr %tif_flags342, align 8
  br label %if.end349

if.else344:                                       ; preds = %if.end334
  %265 = load ptr, ptr %tif.addr, align 8
  %call345 = call i32 @TIFFNumberOfTiles(ptr noundef %265)
  %266 = load ptr, ptr %td, align 8
  %td_nstrips346 = getelementptr inbounds %struct.TIFFDirectory, ptr %266, i32 0, i32 43
  store i32 %call345, ptr %td_nstrips346, align 4
  %267 = load ptr, ptr %tif.addr, align 8
  %tif_flags347 = getelementptr inbounds %struct.tiff, ptr %267, i32 0, i32 3
  %268 = load i32, ptr %tif_flags347, align 8
  %or348 = or i32 %268, 1024
  store i32 %or348, ptr %tif_flags347, align 8
  br label %if.end349

if.end349:                                        ; preds = %if.else344, %if.then340
  %269 = load ptr, ptr %td, align 8
  %td_nstrips350 = getelementptr inbounds %struct.TIFFDirectory, ptr %269, i32 0, i32 43
  %270 = load i32, ptr %td_nstrips350, align 4
  %271 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %271, i32 0, i32 42
  store i32 %270, ptr %td_stripsperimage, align 8
  %272 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %272, i32 0, i32 24
  %273 = load i16, ptr %td_planarconfig, align 2
  %conv351 = zext i16 %273 to i32
  %cmp352 = icmp eq i32 %conv351, 2
  br i1 %cmp352, label %if.then354, label %if.end359

if.then354:                                       ; preds = %if.end349
  %274 = load ptr, ptr %td, align 8
  %td_samplesperpixel355 = getelementptr inbounds %struct.TIFFDirectory, ptr %274, i32 0, i32 15
  %275 = load i16, ptr %td_samplesperpixel355, align 2
  %conv356 = zext i16 %275 to i32
  %276 = load ptr, ptr %td, align 8
  %td_stripsperimage357 = getelementptr inbounds %struct.TIFFDirectory, ptr %276, i32 0, i32 42
  %277 = load i32, ptr %td_stripsperimage357, align 8
  %div358 = udiv i32 %277, %conv356
  store i32 %div358, ptr %td_stripsperimage357, align 8
  br label %if.end359

if.end359:                                        ; preds = %if.then354, %if.end349
  %278 = load ptr, ptr %tif.addr, align 8
  %tif_dir360 = getelementptr inbounds %struct.tiff, ptr %278, i32 0, i32 6
  %td_fieldsset361 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir360, i32 0, i32 0
  %arrayidx362 = getelementptr inbounds [3 x i64], ptr %td_fieldsset361, i64 0, i64 0
  %279 = load i64, ptr %arrayidx362, align 8
  %and363 = and i64 %279, 33554432
  %tobool364 = icmp ne i64 %and363, 0
  br i1 %tobool364, label %if.end371, label %if.then365

if.then365:                                       ; preds = %if.end359
  %280 = load ptr, ptr %tif.addr, align 8
  %281 = load ptr, ptr %tif.addr, align 8
  %tif_flags366 = getelementptr inbounds %struct.tiff, ptr %281, i32 0, i32 3
  %282 = load i32, ptr %tif_flags366, align 8
  %and367 = and i32 %282, 1024
  %cmp368 = icmp ne i32 %and367, 0
  %283 = zext i1 %cmp368 to i64
  %cond370 = select i1 %cmp368, ptr @.str.9, ptr @.str.10
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_dirread_2(ptr noundef %280, ptr noundef %cond370)
  br label %bad

if.end371:                                        ; preds = %if.end359
  %284 = load ptr, ptr %dir, align 8
  store ptr %284, ptr %dp, align 8
  %285 = load i16, ptr %dircount, align 2
  %conv372 = zext i16 %285 to i32
  store i32 %conv372, ptr %n, align 4
  br label %for.cond373

for.cond373:                                      ; preds = %for.inc555, %if.end371
  %286 = load i32, ptr %n, align 4
  %cmp374 = icmp sgt i32 %286, 0
  br i1 %cmp374, label %for.body376, label %for.end558

for.body376:                                      ; preds = %for.cond373
  %287 = load ptr, ptr %dp, align 8
  %tdir_tag377 = getelementptr inbounds %struct.TIFFDirEntry, ptr %287, i32 0, i32 0
  %288 = load i16, ptr %tdir_tag377, align 4
  %conv378 = zext i16 %288 to i32
  %cmp379 = icmp eq i32 %conv378, 0
  br i1 %cmp379, label %if.then381, label %if.end382

if.then381:                                       ; preds = %for.body376
  br label %for.inc555

if.end382:                                        ; preds = %for.body376
  %289 = load ptr, ptr %dp, align 8
  %tdir_tag383 = getelementptr inbounds %struct.TIFFDirEntry, ptr %289, i32 0, i32 0
  %290 = load i16, ptr %tdir_tag383, align 4
  %conv384 = zext i16 %290 to i32
  switch i32 %conv384, label %sw.default [
    i32 280, label %sw.bb385
    i32 281, label %sw.bb385
    i32 258, label %sw.bb385
    i32 32996, label %sw.bb428
    i32 339, label %sw.bb428
    i32 340, label %sw.bb438
    i32 341, label %sw.bb438
    i32 273, label %sw.bb448
    i32 324, label %sw.bb448
    i32 279, label %sw.bb455
    i32 325, label %sw.bb455
    i32 320, label %sw.bb462
    i32 301, label %sw.bb462
    i32 297, label %sw.bb511
    i32 321, label %sw.bb511
    i32 530, label %sw.bb511
    i32 336, label %sw.bb511
    i32 532, label %sw.bb513
    i32 255, label %sw.bb515
  ]

sw.bb385:                                         ; preds = %if.end382, %if.end382, %if.end382
  %291 = load ptr, ptr %dp, align 8
  %tdir_count386 = getelementptr inbounds %struct.TIFFDirEntry, ptr %291, i32 0, i32 2
  %292 = load i32, ptr %tdir_count386, align 4
  %cmp387 = icmp eq i32 %292, 1
  br i1 %cmp387, label %if.then389, label %if.end427

if.then389:                                       ; preds = %sw.bb385
  %293 = load ptr, ptr %tif.addr, align 8
  %tif_header390 = getelementptr inbounds %struct.tiff, ptr %293, i32 0, i32 7
  %tiff_magic391 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header390, i32 0, i32 0
  %294 = load i16, ptr %tiff_magic391, align 8
  %conv392 = zext i16 %294 to i32
  %cmp393 = icmp eq i32 %conv392, 19789
  br i1 %cmp393, label %cond.true395, label %cond.false408

cond.true395:                                     ; preds = %if.then389
  %295 = load ptr, ptr %dp, align 8
  %tdir_offset396 = getelementptr inbounds %struct.TIFFDirEntry, ptr %295, i32 0, i32 3
  %296 = load i32, ptr %tdir_offset396, align 4
  %297 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift397 = getelementptr inbounds %struct.tiff, ptr %297, i32 0, i32 9
  %298 = load ptr, ptr %tif_typeshift397, align 8
  %299 = load ptr, ptr %dp, align 8
  %tdir_type398 = getelementptr inbounds %struct.TIFFDirEntry, ptr %299, i32 0, i32 1
  %300 = load i16, ptr %tdir_type398, align 2
  %idxprom399 = zext i16 %300 to i64
  %arrayidx400 = getelementptr inbounds i32, ptr %298, i64 %idxprom399
  %301 = load i32, ptr %arrayidx400, align 4
  %shr401 = lshr i32 %296, %301
  %conv402 = zext i32 %shr401 to i64
  %302 = load ptr, ptr %tif.addr, align 8
  %tif_typemask403 = getelementptr inbounds %struct.tiff, ptr %302, i32 0, i32 10
  %303 = load ptr, ptr %tif_typemask403, align 8
  %304 = load ptr, ptr %dp, align 8
  %tdir_type404 = getelementptr inbounds %struct.TIFFDirEntry, ptr %304, i32 0, i32 1
  %305 = load i16, ptr %tdir_type404, align 2
  %idxprom405 = zext i16 %305 to i64
  %arrayidx406 = getelementptr inbounds i64, ptr %303, i64 %idxprom405
  %306 = load i64, ptr %arrayidx406, align 8
  %and407 = and i64 %conv402, %306
  br label %cond.end416

cond.false408:                                    ; preds = %if.then389
  %307 = load ptr, ptr %dp, align 8
  %tdir_offset409 = getelementptr inbounds %struct.TIFFDirEntry, ptr %307, i32 0, i32 3
  %308 = load i32, ptr %tdir_offset409, align 4
  %conv410 = zext i32 %308 to i64
  %309 = load ptr, ptr %tif.addr, align 8
  %tif_typemask411 = getelementptr inbounds %struct.tiff, ptr %309, i32 0, i32 10
  %310 = load ptr, ptr %tif_typemask411, align 8
  %311 = load ptr, ptr %dp, align 8
  %tdir_type412 = getelementptr inbounds %struct.TIFFDirEntry, ptr %311, i32 0, i32 1
  %312 = load i16, ptr %tdir_type412, align 2
  %idxprom413 = zext i16 %312 to i64
  %arrayidx414 = getelementptr inbounds i64, ptr %310, i64 %idxprom413
  %313 = load i64, ptr %arrayidx414, align 8
  %and415 = and i64 %conv410, %313
  br label %cond.end416

cond.end416:                                      ; preds = %cond.false408, %cond.true395
  %cond417 = phi i64 [ %and407, %cond.true395 ], [ %and415, %cond.false408 ]
  %conv418 = trunc i64 %cond417 to i32
  %conv419 = zext i32 %conv418 to i64
  store i64 %conv419, ptr %v, align 8
  %314 = load ptr, ptr %tif.addr, align 8
  %315 = load ptr, ptr %dp, align 8
  %tdir_tag420 = getelementptr inbounds %struct.TIFFDirEntry, ptr %315, i32 0, i32 0
  %316 = load i16, ptr %tdir_tag420, align 4
  %conv421 = zext i16 %316 to i32
  %317 = load i64, ptr %v, align 8
  %conv422 = trunc i64 %317 to i32
  %call423 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %314, i32 noundef %conv421, i32 noundef %conv422)
  %tobool424 = icmp ne i32 %call423, 0
  br i1 %tobool424, label %if.end426, label %if.then425

if.then425:                                       ; preds = %cond.end416
  br label %bad

if.end426:                                        ; preds = %cond.end416
  br label %sw.epilog554

if.end427:                                        ; preds = %sw.bb385
  br label %sw.bb428

sw.bb428:                                         ; preds = %if.end382, %if.end382, %if.end427
  %318 = load ptr, ptr %tif.addr, align 8
  %319 = load ptr, ptr %dp, align 8
  %call429 = call i32 @TIFFFetchPerSampleShorts(ptr noundef %318, ptr noundef %319, ptr noundef %iv)
  %tobool430 = icmp ne i32 %call429, 0
  br i1 %tobool430, label %lor.lhs.false431, label %if.then436

lor.lhs.false431:                                 ; preds = %sw.bb428
  %320 = load ptr, ptr %tif.addr, align 8
  %321 = load ptr, ptr %dp, align 8
  %tdir_tag432 = getelementptr inbounds %struct.TIFFDirEntry, ptr %321, i32 0, i32 0
  %322 = load i16, ptr %tdir_tag432, align 4
  %conv433 = zext i16 %322 to i32
  %323 = load i32, ptr %iv, align 4
  %call434 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %320, i32 noundef %conv433, i32 noundef %323)
  %tobool435 = icmp ne i32 %call434, 0
  br i1 %tobool435, label %if.end437, label %if.then436

if.then436:                                       ; preds = %lor.lhs.false431, %sw.bb428
  br label %bad

if.end437:                                        ; preds = %lor.lhs.false431
  br label %sw.epilog554

sw.bb438:                                         ; preds = %if.end382, %if.end382
  %324 = load ptr, ptr %tif.addr, align 8
  %325 = load ptr, ptr %dp, align 8
  %call439 = call i32 @TIFFFetchPerSampleAnys(ptr noundef %324, ptr noundef %325, ptr noundef %dv)
  %tobool440 = icmp ne i32 %call439, 0
  br i1 %tobool440, label %lor.lhs.false441, label %if.then446

lor.lhs.false441:                                 ; preds = %sw.bb438
  %326 = load ptr, ptr %tif.addr, align 8
  %327 = load ptr, ptr %dp, align 8
  %tdir_tag442 = getelementptr inbounds %struct.TIFFDirEntry, ptr %327, i32 0, i32 0
  %328 = load i16, ptr %tdir_tag442, align 4
  %conv443 = zext i16 %328 to i32
  %329 = load double, ptr %dv, align 8
  %call444 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %326, i32 noundef %conv443, double noundef %329)
  %tobool445 = icmp ne i32 %call444, 0
  br i1 %tobool445, label %if.end447, label %if.then446

if.then446:                                       ; preds = %lor.lhs.false441, %sw.bb438
  br label %bad

if.end447:                                        ; preds = %lor.lhs.false441
  br label %sw.epilog554

sw.bb448:                                         ; preds = %if.end382, %if.end382
  %330 = load ptr, ptr %tif.addr, align 8
  %331 = load ptr, ptr %dp, align 8
  %332 = load ptr, ptr %td, align 8
  %td_nstrips449 = getelementptr inbounds %struct.TIFFDirectory, ptr %332, i32 0, i32 43
  %333 = load i32, ptr %td_nstrips449, align 4
  %conv450 = zext i32 %333 to i64
  %334 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %334, i32 0, i32 44
  %call451 = call i32 @TIFFFetchStripThing(ptr noundef %330, ptr noundef %331, i64 noundef %conv450, ptr noundef %td_stripoffset)
  %tobool452 = icmp ne i32 %call451, 0
  br i1 %tobool452, label %if.end454, label %if.then453

if.then453:                                       ; preds = %sw.bb448
  br label %bad

if.end454:                                        ; preds = %sw.bb448
  br label %sw.epilog554

sw.bb455:                                         ; preds = %if.end382, %if.end382
  %335 = load ptr, ptr %tif.addr, align 8
  %336 = load ptr, ptr %dp, align 8
  %337 = load ptr, ptr %td, align 8
  %td_nstrips456 = getelementptr inbounds %struct.TIFFDirectory, ptr %337, i32 0, i32 43
  %338 = load i32, ptr %td_nstrips456, align 4
  %conv457 = zext i32 %338 to i64
  %339 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %339, i32 0, i32 45
  %call458 = call i32 @TIFFFetchStripThing(ptr noundef %335, ptr noundef %336, i64 noundef %conv457, ptr noundef %td_stripbytecount)
  %tobool459 = icmp ne i32 %call458, 0
  br i1 %tobool459, label %if.end461, label %if.then460

if.then460:                                       ; preds = %sw.bb455
  br label %bad

if.end461:                                        ; preds = %sw.bb455
  br label %sw.epilog554

sw.bb462:                                         ; preds = %if.end382, %if.end382
  %340 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %340, i32 0, i32 8
  %341 = load i16, ptr %td_bitspersample, align 4
  %conv463 = zext i16 %341 to i32
  %sh_prom464 = zext i32 %conv463 to i64
  %shl465 = shl i64 1, %sh_prom464
  store i64 %shl465, ptr %v, align 8
  %342 = load ptr, ptr %dp, align 8
  %tdir_tag466 = getelementptr inbounds %struct.TIFFDirEntry, ptr %342, i32 0, i32 0
  %343 = load i16, ptr %tdir_tag466, align 4
  %conv467 = zext i16 %343 to i32
  %cmp468 = icmp eq i32 %conv467, 320
  br i1 %cmp468, label %if.then475, label %lor.lhs.false470

lor.lhs.false470:                                 ; preds = %sw.bb462
  %344 = load ptr, ptr %dp, align 8
  %tdir_count471 = getelementptr inbounds %struct.TIFFDirEntry, ptr %344, i32 0, i32 2
  %345 = load i32, ptr %tdir_count471, align 4
  %346 = load i64, ptr %v, align 8
  %conv472 = trunc i64 %346 to i32
  %cmp473 = icmp ne i32 %345, %conv472
  br i1 %cmp473, label %if.then475, label %if.end482

if.then475:                                       ; preds = %lor.lhs.false470, %sw.bb462
  %347 = load ptr, ptr %tif.addr, align 8
  %348 = load ptr, ptr %dp, align 8
  %349 = load i64, ptr %v, align 8
  %mul476 = mul nsw i64 3, %349
  %conv477 = trunc i64 %mul476 to i32
  %call478 = call i32 @CheckDirCount(ptr noundef %347, ptr noundef %348, i32 noundef %conv477)
  %tobool479 = icmp ne i32 %call478, 0
  br i1 %tobool479, label %if.end481, label %if.then480

if.then480:                                       ; preds = %if.then475
  br label %sw.epilog554

if.end481:                                        ; preds = %if.then475
  br label %if.end482

if.end482:                                        ; preds = %if.end481, %lor.lhs.false470
  %350 = load i64, ptr %v, align 8
  %mul483 = mul i64 %350, 2
  store i64 %mul483, ptr %v, align 8
  %351 = load ptr, ptr %tif.addr, align 8
  %352 = load ptr, ptr %dp, align 8
  %tdir_count484 = getelementptr inbounds %struct.TIFFDirEntry, ptr %352, i32 0, i32 2
  %353 = load i32, ptr %tdir_count484, align 4
  %conv485 = zext i32 %353 to i64
  %mul486 = mul i64 %conv485, 2
  %conv487 = trunc i64 %mul486 to i32
  %call488 = call ptr @CheckMalloc(ptr noundef %351, i32 noundef %conv487, ptr noundef @.str.11)
  store ptr %call488, ptr %cp, align 8
  %354 = load ptr, ptr %cp, align 8
  %cmp489 = icmp ne ptr %354, null
  br i1 %cmp489, label %if.then491, label %if.end510

if.then491:                                       ; preds = %if.end482
  %355 = load ptr, ptr %tif.addr, align 8
  %356 = load ptr, ptr %dp, align 8
  %357 = load ptr, ptr %cp, align 8
  %call492 = call i32 @TIFFFetchData(ptr noundef %355, ptr noundef %356, ptr noundef %357)
  %tobool493 = icmp ne i32 %call492, 0
  br i1 %tobool493, label %if.then494, label %if.end509

if.then494:                                       ; preds = %if.then491
  %358 = load ptr, ptr %td, align 8
  %td_bitspersample495 = getelementptr inbounds %struct.TIFFDirectory, ptr %358, i32 0, i32 8
  %359 = load i16, ptr %td_bitspersample495, align 4
  %conv496 = zext i16 %359 to i32
  %shl497 = shl i32 1, %conv496
  store i32 %shl497, ptr %c, align 4
  %360 = load ptr, ptr %dp, align 8
  %tdir_count498 = getelementptr inbounds %struct.TIFFDirEntry, ptr %360, i32 0, i32 2
  %361 = load i32, ptr %tdir_count498, align 4
  %362 = load i32, ptr %c, align 4
  %cmp499 = icmp eq i32 %361, %362
  br i1 %cmp499, label %if.then501, label %if.end502

if.then501:                                       ; preds = %if.then494
  store i64 0, ptr %v, align 8
  br label %if.end502

if.end502:                                        ; preds = %if.then501, %if.then494
  %363 = load ptr, ptr %tif.addr, align 8
  %364 = load ptr, ptr %dp, align 8
  %tdir_tag503 = getelementptr inbounds %struct.TIFFDirEntry, ptr %364, i32 0, i32 0
  %365 = load i16, ptr %tdir_tag503, align 4
  %conv504 = zext i16 %365 to i32
  %366 = load ptr, ptr %cp, align 8
  %367 = load ptr, ptr %cp, align 8
  %368 = load i64, ptr %v, align 8
  %add.ptr505 = getelementptr inbounds i8, ptr %367, i64 %368
  %369 = load ptr, ptr %cp, align 8
  %370 = load i64, ptr %v, align 8
  %mul506 = mul nsw i64 2, %370
  %add.ptr507 = getelementptr inbounds i8, ptr %369, i64 %mul506
  %call508 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %363, i32 noundef %conv504, ptr noundef %366, ptr noundef %add.ptr505, ptr noundef %add.ptr507)
  br label %if.end509

if.end509:                                        ; preds = %if.end502, %if.then491
  %371 = load ptr, ptr %cp, align 8
  call void @_TIFFfree(ptr noundef %371)
  br label %if.end510

if.end510:                                        ; preds = %if.end509, %if.end482
  br label %sw.epilog554

sw.bb511:                                         ; preds = %if.end382, %if.end382, %if.end382, %if.end382
  %372 = load ptr, ptr %tif.addr, align 8
  %373 = load ptr, ptr %dp, align 8
  %call512 = call i32 @TIFFFetchShortPair(ptr noundef %372, ptr noundef %373)
  br label %sw.epilog554

sw.bb513:                                         ; preds = %if.end382
  %374 = load ptr, ptr %tif.addr, align 8
  %375 = load ptr, ptr %dp, align 8
  %call514 = call i32 @TIFFFetchRefBlackWhite(ptr noundef %374, ptr noundef %375)
  br label %sw.epilog554

sw.bb515:                                         ; preds = %if.end382
  store i64 0, ptr %v, align 8
  %376 = load ptr, ptr %tif.addr, align 8
  %tif_header516 = getelementptr inbounds %struct.tiff, ptr %376, i32 0, i32 7
  %tiff_magic517 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header516, i32 0, i32 0
  %377 = load i16, ptr %tiff_magic517, align 8
  %conv518 = zext i16 %377 to i32
  %cmp519 = icmp eq i32 %conv518, 19789
  br i1 %cmp519, label %cond.true521, label %cond.false534

cond.true521:                                     ; preds = %sw.bb515
  %378 = load ptr, ptr %dp, align 8
  %tdir_offset522 = getelementptr inbounds %struct.TIFFDirEntry, ptr %378, i32 0, i32 3
  %379 = load i32, ptr %tdir_offset522, align 4
  %380 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift523 = getelementptr inbounds %struct.tiff, ptr %380, i32 0, i32 9
  %381 = load ptr, ptr %tif_typeshift523, align 8
  %382 = load ptr, ptr %dp, align 8
  %tdir_type524 = getelementptr inbounds %struct.TIFFDirEntry, ptr %382, i32 0, i32 1
  %383 = load i16, ptr %tdir_type524, align 2
  %idxprom525 = zext i16 %383 to i64
  %arrayidx526 = getelementptr inbounds i32, ptr %381, i64 %idxprom525
  %384 = load i32, ptr %arrayidx526, align 4
  %shr527 = lshr i32 %379, %384
  %conv528 = zext i32 %shr527 to i64
  %385 = load ptr, ptr %tif.addr, align 8
  %tif_typemask529 = getelementptr inbounds %struct.tiff, ptr %385, i32 0, i32 10
  %386 = load ptr, ptr %tif_typemask529, align 8
  %387 = load ptr, ptr %dp, align 8
  %tdir_type530 = getelementptr inbounds %struct.TIFFDirEntry, ptr %387, i32 0, i32 1
  %388 = load i16, ptr %tdir_type530, align 2
  %idxprom531 = zext i16 %388 to i64
  %arrayidx532 = getelementptr inbounds i64, ptr %386, i64 %idxprom531
  %389 = load i64, ptr %arrayidx532, align 8
  %and533 = and i64 %conv528, %389
  br label %cond.end542

cond.false534:                                    ; preds = %sw.bb515
  %390 = load ptr, ptr %dp, align 8
  %tdir_offset535 = getelementptr inbounds %struct.TIFFDirEntry, ptr %390, i32 0, i32 3
  %391 = load i32, ptr %tdir_offset535, align 4
  %conv536 = zext i32 %391 to i64
  %392 = load ptr, ptr %tif.addr, align 8
  %tif_typemask537 = getelementptr inbounds %struct.tiff, ptr %392, i32 0, i32 10
  %393 = load ptr, ptr %tif_typemask537, align 8
  %394 = load ptr, ptr %dp, align 8
  %tdir_type538 = getelementptr inbounds %struct.TIFFDirEntry, ptr %394, i32 0, i32 1
  %395 = load i16, ptr %tdir_type538, align 2
  %idxprom539 = zext i16 %395 to i64
  %arrayidx540 = getelementptr inbounds i64, ptr %393, i64 %idxprom539
  %396 = load i64, ptr %arrayidx540, align 8
  %and541 = and i64 %conv536, %396
  br label %cond.end542

cond.end542:                                      ; preds = %cond.false534, %cond.true521
  %cond543 = phi i64 [ %and533, %cond.true521 ], [ %and541, %cond.false534 ]
  %conv544 = trunc i64 %cond543 to i32
  switch i32 %conv544, label %sw.epilog547 [
    i32 2, label %sw.bb545
    i32 3, label %sw.bb546
  ]

sw.bb545:                                         ; preds = %cond.end542
  store i64 1, ptr %v, align 8
  br label %sw.epilog547

sw.bb546:                                         ; preds = %cond.end542
  store i64 2, ptr %v, align 8
  br label %sw.epilog547

sw.epilog547:                                     ; preds = %cond.end542, %sw.bb546, %sw.bb545
  %397 = load i64, ptr %v, align 8
  %tobool548 = icmp ne i64 %397, 0
  br i1 %tobool548, label %if.then549, label %if.end552

if.then549:                                       ; preds = %sw.epilog547
  %398 = load ptr, ptr %tif.addr, align 8
  %399 = load i64, ptr %v, align 8
  %conv550 = trunc i64 %399 to i32
  %call551 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %398, i32 noundef 254, i32 noundef %conv550)
  br label %if.end552

if.end552:                                        ; preds = %if.then549, %sw.epilog547
  br label %sw.epilog554

sw.default:                                       ; preds = %if.end382
  %400 = load ptr, ptr %tif.addr, align 8
  %401 = load ptr, ptr %dp, align 8
  %call553 = call i32 @TIFFFetchNormalTag(ptr noundef %400, ptr noundef %401)
  br label %sw.epilog554

sw.epilog554:                                     ; preds = %sw.default, %if.end552, %sw.bb513, %sw.bb511, %if.end510, %if.then480, %if.end461, %if.end454, %if.end447, %if.end437, %if.end426
  br label %for.inc555

for.inc555:                                       ; preds = %sw.epilog554, %if.then381
  %402 = load i32, ptr %n, align 4
  %dec556 = add nsw i32 %402, -1
  store i32 %dec556, ptr %n, align 4
  %403 = load ptr, ptr %dp, align 8
  %incdec.ptr557 = getelementptr inbounds %struct.TIFFDirEntry, ptr %403, i32 1
  store ptr %incdec.ptr557, ptr %dp, align 8
  br label %for.cond373, !llvm.loop !11

for.end558:                                       ; preds = %for.cond373
  %404 = load ptr, ptr %td, align 8
  %td_photometric = getelementptr inbounds %struct.TIFFDirectory, ptr %404, i32 0, i32 11
  %405 = load i16, ptr %td_photometric, align 2
  %conv559 = zext i16 %405 to i32
  %cmp560 = icmp eq i32 %conv559, 3
  br i1 %cmp560, label %land.lhs.true, label %if.end568

land.lhs.true:                                    ; preds = %for.end558
  %406 = load ptr, ptr %tif.addr, align 8
  %tif_dir562 = getelementptr inbounds %struct.tiff, ptr %406, i32 0, i32 6
  %td_fieldsset563 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir562, i32 0, i32 0
  %arrayidx564 = getelementptr inbounds [3 x i64], ptr %td_fieldsset563, i64 0, i64 0
  %407 = load i64, ptr %arrayidx564, align 8
  %and565 = and i64 %407, 67108864
  %tobool566 = icmp ne i64 %and565, 0
  br i1 %tobool566, label %if.end568, label %if.then567

if.then567:                                       ; preds = %land.lhs.true
  %408 = load ptr, ptr %tif.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_dirread_3(ptr noundef %408, ptr noundef @.str.12)
  br label %bad

if.end568:                                        ; preds = %land.lhs.true, %for.end558
  %409 = load ptr, ptr %tif.addr, align 8
  %tif_dir569 = getelementptr inbounds %struct.tiff, ptr %409, i32 0, i32 6
  %td_fieldsset570 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir569, i32 0, i32 0
  %arrayidx571 = getelementptr inbounds [3 x i64], ptr %td_fieldsset570, i64 0, i64 0
  %410 = load i64, ptr %arrayidx571, align 8
  %and572 = and i64 %410, 16777216
  %tobool573 = icmp ne i64 %and572, 0
  br i1 %tobool573, label %if.else599, label %if.then574

if.then574:                                       ; preds = %if.end568
  %411 = load ptr, ptr %td, align 8
  %td_planarconfig575 = getelementptr inbounds %struct.TIFFDirectory, ptr %411, i32 0, i32 24
  %412 = load i16, ptr %td_planarconfig575, align 2
  %conv576 = zext i16 %412 to i32
  %cmp577 = icmp eq i32 %conv576, 1
  br i1 %cmp577, label %land.lhs.true579, label %lor.lhs.false583

land.lhs.true579:                                 ; preds = %if.then574
  %413 = load ptr, ptr %td, align 8
  %td_nstrips580 = getelementptr inbounds %struct.TIFFDirectory, ptr %413, i32 0, i32 43
  %414 = load i32, ptr %td_nstrips580, align 4
  %cmp581 = icmp ugt i32 %414, 1
  br i1 %cmp581, label %if.then594, label %lor.lhs.false583

lor.lhs.false583:                                 ; preds = %land.lhs.true579, %if.then574
  %415 = load ptr, ptr %td, align 8
  %td_planarconfig584 = getelementptr inbounds %struct.TIFFDirectory, ptr %415, i32 0, i32 24
  %416 = load i16, ptr %td_planarconfig584, align 2
  %conv585 = zext i16 %416 to i32
  %cmp586 = icmp eq i32 %conv585, 2
  br i1 %cmp586, label %land.lhs.true588, label %if.end595

land.lhs.true588:                                 ; preds = %lor.lhs.false583
  %417 = load ptr, ptr %td, align 8
  %td_nstrips589 = getelementptr inbounds %struct.TIFFDirectory, ptr %417, i32 0, i32 43
  %418 = load i32, ptr %td_nstrips589, align 4
  %419 = load ptr, ptr %td, align 8
  %td_samplesperpixel590 = getelementptr inbounds %struct.TIFFDirectory, ptr %419, i32 0, i32 15
  %420 = load i16, ptr %td_samplesperpixel590, align 2
  %conv591 = zext i16 %420 to i32
  %cmp592 = icmp ne i32 %418, %conv591
  br i1 %cmp592, label %if.then594, label %if.end595

if.then594:                                       ; preds = %land.lhs.true588, %land.lhs.true579
  %421 = load ptr, ptr %tif.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_dirread_4(ptr noundef %421, ptr noundef @.str.13)
  br label %bad

if.end595:                                        ; preds = %land.lhs.true588, %lor.lhs.false583
  %422 = load ptr, ptr %tif.addr, align 8
  %tif_name596 = getelementptr inbounds %struct.tiff, ptr %422, i32 0, i32 0
  %423 = load ptr, ptr %tif_name596, align 8
  %424 = load ptr, ptr %tif.addr, align 8
  %call597 = call ptr @_TIFFFieldWithTag(ptr noundef %424, i32 noundef 279)
  %field_name598 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call597, i32 0, i32 7
  %425 = load ptr, ptr %field_name598, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %423, ptr noundef @.str.14, ptr noundef %425)
  %426 = load ptr, ptr %tif.addr, align 8
  %427 = load ptr, ptr %dir, align 8
  %428 = load i16, ptr %dircount, align 2
  call void @EstimateStripByteCounts(ptr noundef %426, ptr noundef %427, i16 noundef zeroext %428)
  br label %if.end626

if.else599:                                       ; preds = %if.end568
  %429 = load ptr, ptr %td, align 8
  %td_nstrips600 = getelementptr inbounds %struct.TIFFDirectory, ptr %429, i32 0, i32 43
  %430 = load i32, ptr %td_nstrips600, align 4
  %cmp601 = icmp eq i32 %430, 1
  br i1 %cmp601, label %land.lhs.true603, label %if.end625

land.lhs.true603:                                 ; preds = %if.else599
  %431 = load ptr, ptr %td, align 8
  %td_stripbytecount604 = getelementptr inbounds %struct.TIFFDirectory, ptr %431, i32 0, i32 45
  %432 = load ptr, ptr %td_stripbytecount604, align 8
  %arrayidx605 = getelementptr inbounds i32, ptr %432, i64 0
  %433 = load i32, ptr %arrayidx605, align 4
  %cmp606 = icmp eq i32 %433, 0
  br i1 %cmp606, label %if.then621, label %lor.lhs.false608

lor.lhs.false608:                                 ; preds = %land.lhs.true603
  %434 = load ptr, ptr %td, align 8
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %434, i32 0, i32 10
  %435 = load i16, ptr %td_compression, align 8
  %conv609 = zext i16 %435 to i32
  %cmp610 = icmp eq i32 %conv609, 1
  br i1 %cmp610, label %land.lhs.true612, label %if.end625

land.lhs.true612:                                 ; preds = %lor.lhs.false608
  %436 = load ptr, ptr %td, align 8
  %td_stripbytecount613 = getelementptr inbounds %struct.TIFFDirectory, ptr %436, i32 0, i32 45
  %437 = load ptr, ptr %td_stripbytecount613, align 8
  %arrayidx614 = getelementptr inbounds i32, ptr %437, i64 0
  %438 = load i32, ptr %arrayidx614, align 4
  %439 = load ptr, ptr %tif.addr, align 8
  %tif_sizeproc = getelementptr inbounds %struct.tiff, ptr %439, i32 0, i32 53
  %440 = load ptr, ptr %tif_sizeproc, align 8
  %441 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata615 = getelementptr inbounds %struct.tiff, ptr %441, i32 0, i32 48
  %442 = load ptr, ptr %tif_clientdata615, align 8
  %call616 = call i32 %440(ptr noundef %442)
  %443 = load ptr, ptr %td, align 8
  %td_stripoffset617 = getelementptr inbounds %struct.TIFFDirectory, ptr %443, i32 0, i32 44
  %444 = load ptr, ptr %td_stripoffset617, align 8
  %arrayidx618 = getelementptr inbounds i32, ptr %444, i64 0
  %445 = load i32, ptr %arrayidx618, align 4
  %sub = sub i32 %call616, %445
  %cmp619 = icmp ugt i32 %438, %sub
  br i1 %cmp619, label %if.then621, label %if.end625

if.then621:                                       ; preds = %land.lhs.true612, %land.lhs.true603
  %446 = load ptr, ptr %tif.addr, align 8
  %tif_name622 = getelementptr inbounds %struct.tiff, ptr %446, i32 0, i32 0
  %447 = load ptr, ptr %tif_name622, align 8
  %448 = load ptr, ptr %tif.addr, align 8
  %call623 = call ptr @_TIFFFieldWithTag(ptr noundef %448, i32 noundef 279)
  %field_name624 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call623, i32 0, i32 7
  %449 = load ptr, ptr %field_name624, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %447, ptr noundef @.str.15, ptr noundef %449)
  %450 = load ptr, ptr %tif.addr, align 8
  %451 = load ptr, ptr %dir, align 8
  %452 = load i16, ptr %dircount, align 2
  call void @EstimateStripByteCounts(ptr noundef %450, ptr noundef %451, i16 noundef zeroext %452)
  br label %if.end625

if.end625:                                        ; preds = %if.then621, %land.lhs.true612, %lor.lhs.false608, %if.else599
  br label %if.end626

if.end626:                                        ; preds = %if.end625, %if.end595
  %453 = load ptr, ptr %dir, align 8
  %tobool627 = icmp ne ptr %453, null
  br i1 %tobool627, label %if.then628, label %if.end629

if.then628:                                       ; preds = %if.end626
  %454 = load ptr, ptr %dir, align 8
  call void @_TIFFfree(ptr noundef %454)
  br label %if.end629

if.end629:                                        ; preds = %if.then628, %if.end626
  %455 = load ptr, ptr %tif.addr, align 8
  %tif_dir630 = getelementptr inbounds %struct.tiff, ptr %455, i32 0, i32 6
  %td_fieldsset631 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir630, i32 0, i32 0
  %arrayidx632 = getelementptr inbounds [3 x i64], ptr %td_fieldsset631, i64 0, i64 0
  %456 = load i64, ptr %arrayidx632, align 8
  %and633 = and i64 %456, 524288
  %tobool634 = icmp ne i64 %and633, 0
  br i1 %tobool634, label %if.end642, label %if.then635

if.then635:                                       ; preds = %if.end629
  %457 = load ptr, ptr %td, align 8
  %td_bitspersample636 = getelementptr inbounds %struct.TIFFDirectory, ptr %457, i32 0, i32 8
  %458 = load i16, ptr %td_bitspersample636, align 4
  %conv637 = zext i16 %458 to i32
  %sh_prom638 = zext i32 %conv637 to i64
  %shl639 = shl i64 1, %sh_prom638
  %sub640 = sub nsw i64 %shl639, 1
  %conv641 = trunc i64 %sub640 to i16
  %459 = load ptr, ptr %td, align 8
  %td_maxsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %459, i32 0, i32 18
  store i16 %conv641, ptr %td_maxsamplevalue, align 2
  br label %if.end642

if.end642:                                        ; preds = %if.then635, %if.end629
  %460 = load ptr, ptr %tif.addr, align 8
  %tif_dir643 = getelementptr inbounds %struct.tiff, ptr %460, i32 0, i32 6
  %td_fieldsset644 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir643, i32 0, i32 0
  %arrayidx645 = getelementptr inbounds [3 x i64], ptr %td_fieldsset644, i64 0, i64 0
  %461 = load i64, ptr %arrayidx645, align 8
  %and646 = and i64 %461, 128
  %tobool647 = icmp ne i64 %and646, 0
  br i1 %tobool647, label %if.end650, label %if.then648

if.then648:                                       ; preds = %if.end642
  %462 = load ptr, ptr %tif.addr, align 8
  %call649 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %462, i32 noundef 259, i32 noundef 1)
  br label %if.end650

if.end650:                                        ; preds = %if.then648, %if.end642
  %463 = load ptr, ptr %td, align 8
  %td_nstrips651 = getelementptr inbounds %struct.TIFFDirectory, ptr %463, i32 0, i32 43
  %464 = load i32, ptr %td_nstrips651, align 4
  %cmp652 = icmp eq i32 %464, 1
  br i1 %cmp652, label %land.lhs.true654, label %if.end665

land.lhs.true654:                                 ; preds = %if.end650
  %465 = load ptr, ptr %td, align 8
  %td_compression655 = getelementptr inbounds %struct.TIFFDirectory, ptr %465, i32 0, i32 10
  %466 = load i16, ptr %td_compression655, align 8
  %conv656 = zext i16 %466 to i32
  %cmp657 = icmp eq i32 %conv656, 1
  br i1 %cmp657, label %land.lhs.true659, label %if.end665

land.lhs.true659:                                 ; preds = %land.lhs.true654
  %467 = load ptr, ptr %tif.addr, align 8
  %tif_flags660 = getelementptr inbounds %struct.tiff, ptr %467, i32 0, i32 3
  %468 = load i32, ptr %tif_flags660, align 8
  %and661 = and i32 %468, 33792
  %cmp662 = icmp eq i32 %and661, 32768
  br i1 %cmp662, label %if.then664, label %if.end665

if.then664:                                       ; preds = %land.lhs.true659
  %469 = load ptr, ptr %tif.addr, align 8
  call void @ChopUpSingleUncompressedStrip(ptr noundef %469)
  br label %if.end665

if.end665:                                        ; preds = %if.then664, %land.lhs.true659, %land.lhs.true654, %if.end650
  %470 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %470, i32 0, i32 11
  store i32 -1, ptr %tif_row, align 8
  %471 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %471, i32 0, i32 13
  store i32 -1, ptr %tif_curstrip, align 8
  %472 = load ptr, ptr %tif.addr, align 8
  %tif_col = getelementptr inbounds %struct.tiff, ptr %472, i32 0, i32 18
  store i32 -1, ptr %tif_col, align 4
  %473 = load ptr, ptr %tif.addr, align 8
  %tif_curtile = getelementptr inbounds %struct.tiff, ptr %473, i32 0, i32 19
  store i32 -1, ptr %tif_curtile, align 8
  %474 = load ptr, ptr %tif.addr, align 8
  %call666 = call i32 @TIFFTileSize(ptr noundef %474)
  %475 = load ptr, ptr %tif.addr, align 8
  %tif_tilesize = getelementptr inbounds %struct.tiff, ptr %475, i32 0, i32 20
  store i32 %call666, ptr %tif_tilesize, align 4
  %476 = load ptr, ptr %tif.addr, align 8
  %call667 = call i32 @TIFFScanlineSize(ptr noundef %476)
  %477 = load ptr, ptr %tif.addr, align 8
  %tif_scanlinesize = getelementptr inbounds %struct.tiff, ptr %477, i32 0, i32 38
  store i32 %call667, ptr %tif_scanlinesize, align 8
  store i32 1, ptr %retval, align 4
  br label %return

bad:                                              ; preds = %if.then594, %if.then567, %if.then460, %if.then453, %if.then446, %if.then436, %if.then425, %if.then365, %if.then333, %if.then326, %if.then311, %if.then296, %if.then286, %if.then131, %if.then79, %if.then38
  %478 = load ptr, ptr %dir, align 8
  %tobool668 = icmp ne ptr %478, null
  br i1 %tobool668, label %if.then669, label %if.end670

if.then669:                                       ; preds = %bad
  %479 = load ptr, ptr %dir, align 8
  call void @_TIFFfree(ptr noundef %479)
  br label %if.end670

if.end670:                                        ; preds = %if.then669, %bad
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end670, %if.end665, %if.then69, %if.then51, %if.then23, %if.then12, %if.then7, %if.then
  %480 = load i32, ptr %retval, align 4
  ret i32 %480
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

declare void @TIFFSwabShort(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal ptr @CheckMalloc(ptr noundef %tif, i32 noundef %n, ptr noundef %what) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %what.addr = alloca ptr, align 8
  %cp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr %what, ptr %what.addr, align 8
  %0 = load i32, ptr %n.addr, align 4
  %call = call ptr @_TIFFmalloc(i32 noundef %0)
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

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i32 noundef) #1

declare void @TIFFSwabLong(ptr noundef) #1

declare void @TIFFFreeDirectory(ptr noundef) #1

declare i32 @TIFFDefaultDirectory(ptr noundef) #1

declare i32 @TIFFSetField(ptr noundef, i32 noundef, ...) #1

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
  %v32 = alloca i32, align 4
  %v191 = alloca float, align 4
  %v217 = alloca double, align 8
  %c = alloca [2 x i8], align 1
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dp, ptr %dp.addr, align 8
  store i32 0, ptr %ok, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load ptr, ptr %dp.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i32 0, i32 0
  %2 = load i16, ptr %tdir_tag, align 4
  %conv = zext i16 %2 to i32
  %call = call ptr @_TIFFFieldWithTag(ptr noundef %0, i32 noundef %conv)
  store ptr %call, ptr %fip, align 8
  %3 = load ptr, ptr %dp.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %tdir_count, align 4
  %cmp = icmp ugt i32 %4, 1
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
    i32 3, label %sw.bb9
    i32 8, label %sw.bb9
    i32 4, label %sw.bb21
    i32 9, label %sw.bb21
    i32 5, label %sw.bb33
    i32 10, label %sw.bb33
    i32 11, label %sw.bb45
    i32 12, label %sw.bb57
    i32 2, label %sw.bb69
    i32 7, label %sw.bb69
  ]

sw.bb:                                            ; preds = %if.then, %if.then
  %7 = load ptr, ptr %tif.addr, align 8
  %8 = load ptr, ptr %dp.addr, align 8
  %tdir_count3 = getelementptr inbounds %struct.TIFFDirEntry, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %tdir_count3, align 4
  %conv4 = zext i32 %9 to i64
  %mul = mul i64 %conv4, 2
  %conv5 = trunc i64 %mul to i32
  %call6 = call ptr @CheckMalloc(ptr noundef %7, i32 noundef %conv5, ptr noundef @TIFFFetchNormalTag.mesg)
  store ptr %call6, ptr %cp, align 8
  %10 = load ptr, ptr %cp, align 8
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb
  %11 = load ptr, ptr %tif.addr, align 8
  %12 = load ptr, ptr %dp.addr, align 8
  %13 = load ptr, ptr %cp, align 8
  %call7 = call i32 @TIFFFetchByteArray(ptr noundef %11, ptr noundef %12, ptr noundef %13)
  %tobool8 = icmp ne i32 %call7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb
  %14 = phi i1 [ false, %sw.bb ], [ %tobool8, %land.rhs ]
  %land.ext = zext i1 %14 to i32
  store i32 %land.ext, ptr %ok, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.then, %if.then
  %15 = load ptr, ptr %tif.addr, align 8
  %16 = load ptr, ptr %dp.addr, align 8
  %tdir_count10 = getelementptr inbounds %struct.TIFFDirEntry, ptr %16, i32 0, i32 2
  %17 = load i32, ptr %tdir_count10, align 4
  %conv11 = zext i32 %17 to i64
  %mul12 = mul i64 %conv11, 2
  %conv13 = trunc i64 %mul12 to i32
  %call14 = call ptr @CheckMalloc(ptr noundef %15, i32 noundef %conv13, ptr noundef @TIFFFetchNormalTag.mesg)
  store ptr %call14, ptr %cp, align 8
  %18 = load ptr, ptr %cp, align 8
  %tobool15 = icmp ne ptr %18, null
  br i1 %tobool15, label %land.rhs16, label %land.end19

land.rhs16:                                       ; preds = %sw.bb9
  %19 = load ptr, ptr %tif.addr, align 8
  %20 = load ptr, ptr %dp.addr, align 8
  %21 = load ptr, ptr %cp, align 8
  %call17 = call i32 @TIFFFetchShortArray(ptr noundef %19, ptr noundef %20, ptr noundef %21)
  %tobool18 = icmp ne i32 %call17, 0
  br label %land.end19

land.end19:                                       ; preds = %land.rhs16, %sw.bb9
  %22 = phi i1 [ false, %sw.bb9 ], [ %tobool18, %land.rhs16 ]
  %land.ext20 = zext i1 %22 to i32
  store i32 %land.ext20, ptr %ok, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.then, %if.then
  %23 = load ptr, ptr %tif.addr, align 8
  %24 = load ptr, ptr %dp.addr, align 8
  %tdir_count22 = getelementptr inbounds %struct.TIFFDirEntry, ptr %24, i32 0, i32 2
  %25 = load i32, ptr %tdir_count22, align 4
  %conv23 = zext i32 %25 to i64
  %mul24 = mul i64 %conv23, 4
  %conv25 = trunc i64 %mul24 to i32
  %call26 = call ptr @CheckMalloc(ptr noundef %23, i32 noundef %conv25, ptr noundef @TIFFFetchNormalTag.mesg)
  store ptr %call26, ptr %cp, align 8
  %26 = load ptr, ptr %cp, align 8
  %tobool27 = icmp ne ptr %26, null
  br i1 %tobool27, label %land.rhs28, label %land.end31

land.rhs28:                                       ; preds = %sw.bb21
  %27 = load ptr, ptr %tif.addr, align 8
  %28 = load ptr, ptr %dp.addr, align 8
  %29 = load ptr, ptr %cp, align 8
  %call29 = call i32 @TIFFFetchLongArray(ptr noundef %27, ptr noundef %28, ptr noundef %29)
  %tobool30 = icmp ne i32 %call29, 0
  br label %land.end31

land.end31:                                       ; preds = %land.rhs28, %sw.bb21
  %30 = phi i1 [ false, %sw.bb21 ], [ %tobool30, %land.rhs28 ]
  %land.ext32 = zext i1 %30 to i32
  store i32 %land.ext32, ptr %ok, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.then, %if.then
  %31 = load ptr, ptr %tif.addr, align 8
  %32 = load ptr, ptr %dp.addr, align 8
  %tdir_count34 = getelementptr inbounds %struct.TIFFDirEntry, ptr %32, i32 0, i32 2
  %33 = load i32, ptr %tdir_count34, align 4
  %conv35 = zext i32 %33 to i64
  %mul36 = mul i64 %conv35, 4
  %conv37 = trunc i64 %mul36 to i32
  %call38 = call ptr @CheckMalloc(ptr noundef %31, i32 noundef %conv37, ptr noundef @TIFFFetchNormalTag.mesg)
  store ptr %call38, ptr %cp, align 8
  %34 = load ptr, ptr %cp, align 8
  %tobool39 = icmp ne ptr %34, null
  br i1 %tobool39, label %land.rhs40, label %land.end43

land.rhs40:                                       ; preds = %sw.bb33
  %35 = load ptr, ptr %tif.addr, align 8
  %36 = load ptr, ptr %dp.addr, align 8
  %37 = load ptr, ptr %cp, align 8
  %call41 = call i32 @TIFFFetchRationalArray(ptr noundef %35, ptr noundef %36, ptr noundef %37)
  %tobool42 = icmp ne i32 %call41, 0
  br label %land.end43

land.end43:                                       ; preds = %land.rhs40, %sw.bb33
  %38 = phi i1 [ false, %sw.bb33 ], [ %tobool42, %land.rhs40 ]
  %land.ext44 = zext i1 %38 to i32
  store i32 %land.ext44, ptr %ok, align 4
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.then
  %39 = load ptr, ptr %tif.addr, align 8
  %40 = load ptr, ptr %dp.addr, align 8
  %tdir_count46 = getelementptr inbounds %struct.TIFFDirEntry, ptr %40, i32 0, i32 2
  %41 = load i32, ptr %tdir_count46, align 4
  %conv47 = zext i32 %41 to i64
  %mul48 = mul i64 %conv47, 4
  %conv49 = trunc i64 %mul48 to i32
  %call50 = call ptr @CheckMalloc(ptr noundef %39, i32 noundef %conv49, ptr noundef @TIFFFetchNormalTag.mesg)
  store ptr %call50, ptr %cp, align 8
  %42 = load ptr, ptr %cp, align 8
  %tobool51 = icmp ne ptr %42, null
  br i1 %tobool51, label %land.rhs52, label %land.end55

land.rhs52:                                       ; preds = %sw.bb45
  %43 = load ptr, ptr %tif.addr, align 8
  %44 = load ptr, ptr %dp.addr, align 8
  %45 = load ptr, ptr %cp, align 8
  %call53 = call i32 @TIFFFetchFloatArray(ptr noundef %43, ptr noundef %44, ptr noundef %45)
  %tobool54 = icmp ne i32 %call53, 0
  br label %land.end55

land.end55:                                       ; preds = %land.rhs52, %sw.bb45
  %46 = phi i1 [ false, %sw.bb45 ], [ %tobool54, %land.rhs52 ]
  %land.ext56 = zext i1 %46 to i32
  store i32 %land.ext56, ptr %ok, align 4
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.then
  %47 = load ptr, ptr %tif.addr, align 8
  %48 = load ptr, ptr %dp.addr, align 8
  %tdir_count58 = getelementptr inbounds %struct.TIFFDirEntry, ptr %48, i32 0, i32 2
  %49 = load i32, ptr %tdir_count58, align 4
  %conv59 = zext i32 %49 to i64
  %mul60 = mul i64 %conv59, 8
  %conv61 = trunc i64 %mul60 to i32
  %call62 = call ptr @CheckMalloc(ptr noundef %47, i32 noundef %conv61, ptr noundef @TIFFFetchNormalTag.mesg)
  store ptr %call62, ptr %cp, align 8
  %50 = load ptr, ptr %cp, align 8
  %tobool63 = icmp ne ptr %50, null
  br i1 %tobool63, label %land.rhs64, label %land.end67

land.rhs64:                                       ; preds = %sw.bb57
  %51 = load ptr, ptr %tif.addr, align 8
  %52 = load ptr, ptr %dp.addr, align 8
  %53 = load ptr, ptr %cp, align 8
  %call65 = call i32 @TIFFFetchDoubleArray(ptr noundef %51, ptr noundef %52, ptr noundef %53)
  %tobool66 = icmp ne i32 %call65, 0
  br label %land.end67

land.end67:                                       ; preds = %land.rhs64, %sw.bb57
  %54 = phi i1 [ false, %sw.bb57 ], [ %tobool66, %land.rhs64 ]
  %land.ext68 = zext i1 %54 to i32
  store i32 %land.ext68, ptr %ok, align 4
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.then, %if.then
  %55 = load ptr, ptr %tif.addr, align 8
  %56 = load ptr, ptr %dp.addr, align 8
  %tdir_count70 = getelementptr inbounds %struct.TIFFDirEntry, ptr %56, i32 0, i32 2
  %57 = load i32, ptr %tdir_count70, align 4
  %add = add i32 %57, 1
  %call71 = call ptr @CheckMalloc(ptr noundef %55, i32 noundef %add, ptr noundef @TIFFFetchNormalTag.mesg)
  store ptr %call71, ptr %cp, align 8
  %58 = load ptr, ptr %cp, align 8
  %tobool72 = icmp ne ptr %58, null
  br i1 %tobool72, label %land.rhs73, label %land.end76

land.rhs73:                                       ; preds = %sw.bb69
  %59 = load ptr, ptr %tif.addr, align 8
  %60 = load ptr, ptr %dp.addr, align 8
  %61 = load ptr, ptr %cp, align 8
  %call74 = call i32 @TIFFFetchString(ptr noundef %59, ptr noundef %60, ptr noundef %61)
  %tobool75 = icmp ne i32 %call74, 0
  br label %land.end76

land.end76:                                       ; preds = %land.rhs73, %sw.bb69
  %62 = phi i1 [ false, %sw.bb69 ], [ %tobool75, %land.rhs73 ]
  %land.ext77 = zext i1 %62 to i32
  store i32 %land.ext77, ptr %ok, align 4
  %cmp78 = icmp ne i32 %land.ext77, 0
  br i1 %cmp78, label %if.then80, label %if.end

if.then80:                                        ; preds = %land.end76
  %63 = load ptr, ptr %cp, align 8
  %64 = load ptr, ptr %dp.addr, align 8
  %tdir_count81 = getelementptr inbounds %struct.TIFFDirEntry, ptr %64, i32 0, i32 2
  %65 = load i32, ptr %tdir_count81, align 4
  %idxprom = zext i32 %65 to i64
  %arrayidx = getelementptr inbounds i8, ptr %63, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then80, %land.end76
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.end, %land.end67, %land.end55, %land.end43, %land.end31, %land.end19, %land.end
  %66 = load i32, ptr %ok, align 4
  %tobool82 = icmp ne i32 %66, 0
  br i1 %tobool82, label %if.then83, label %if.end93

if.then83:                                        ; preds = %sw.epilog
  %67 = load ptr, ptr %fip, align 8
  %field_passcount = getelementptr inbounds %struct.TIFFFieldInfo, ptr %67, i32 0, i32 6
  %68 = load i8, ptr %field_passcount, align 1
  %conv84 = zext i8 %68 to i32
  %tobool85 = icmp ne i32 %conv84, 0
  br i1 %tobool85, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then83
  %69 = load ptr, ptr %tif.addr, align 8
  %70 = load ptr, ptr %dp.addr, align 8
  %tdir_tag86 = getelementptr inbounds %struct.TIFFDirEntry, ptr %70, i32 0, i32 0
  %71 = load i16, ptr %tdir_tag86, align 4
  %conv87 = zext i16 %71 to i32
  %72 = load ptr, ptr %dp.addr, align 8
  %tdir_count88 = getelementptr inbounds %struct.TIFFDirEntry, ptr %72, i32 0, i32 2
  %73 = load i32, ptr %tdir_count88, align 4
  %74 = load ptr, ptr %cp, align 8
  %call89 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %69, i32 noundef %conv87, i32 noundef %73, ptr noundef %74)
  br label %cond.end

cond.false:                                       ; preds = %if.then83
  %75 = load ptr, ptr %tif.addr, align 8
  %76 = load ptr, ptr %dp.addr, align 8
  %tdir_tag90 = getelementptr inbounds %struct.TIFFDirEntry, ptr %76, i32 0, i32 0
  %77 = load i16, ptr %tdir_tag90, align 4
  %conv91 = zext i16 %77 to i32
  %78 = load ptr, ptr %cp, align 8
  %call92 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %75, i32 noundef %conv91, ptr noundef %78)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call89, %cond.true ], [ %call92, %cond.false ]
  store i32 %cond, ptr %ok, align 4
  br label %if.end93

if.end93:                                         ; preds = %cond.end, %sw.epilog
  %79 = load ptr, ptr %cp, align 8
  %cmp94 = icmp ne ptr %79, null
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.end93
  %80 = load ptr, ptr %cp, align 8
  call void @_TIFFfree(ptr noundef %80)
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.end93
  br label %if.end252

if.else:                                          ; preds = %entry
  %81 = load ptr, ptr %tif.addr, align 8
  %82 = load ptr, ptr %dp.addr, align 8
  %call98 = call i32 @CheckDirCount(ptr noundef %81, ptr noundef %82, i32 noundef 1)
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.then100, label %if.end251

if.then100:                                       ; preds = %if.else
  %83 = load ptr, ptr %dp.addr, align 8
  %tdir_type101 = getelementptr inbounds %struct.TIFFDirEntry, ptr %83, i32 0, i32 1
  %84 = load i16, ptr %tdir_type101, align 2
  %conv102 = zext i16 %84 to i32
  switch i32 %conv102, label %sw.epilog250 [
    i32 1, label %sw.bb103
    i32 6, label %sw.bb103
    i32 3, label %sw.bb103
    i32 8, label %sw.bb103
    i32 4, label %sw.bb147
    i32 9, label %sw.bb147
    i32 5, label %sw.bb190
    i32 10, label %sw.bb190
    i32 11, label %sw.bb190
    i32 12, label %sw.bb216
    i32 2, label %sw.bb237
    i32 7, label %sw.bb237
  ]

sw.bb103:                                         ; preds = %if.then100, %if.then100, %if.then100, %if.then100
  %85 = load ptr, ptr %fip, align 8
  %field_type = getelementptr inbounds %struct.TIFFFieldInfo, ptr %85, i32 0, i32 3
  %86 = load i32, ptr %field_type, align 8
  store i32 %86, ptr %type, align 4
  %87 = load i32, ptr %type, align 4
  %cmp104 = icmp ne i32 %87, 4
  br i1 %cmp104, label %land.lhs.true, label %if.end146

land.lhs.true:                                    ; preds = %sw.bb103
  %88 = load i32, ptr %type, align 4
  %cmp106 = icmp ne i32 %88, 9
  br i1 %cmp106, label %if.then108, label %if.end146

if.then108:                                       ; preds = %land.lhs.true
  %89 = load ptr, ptr %tif.addr, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %89, i32 0, i32 7
  %tiff_magic = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header, i32 0, i32 0
  %90 = load i16, ptr %tiff_magic, align 8
  %conv109 = zext i16 %90 to i32
  %cmp110 = icmp eq i32 %conv109, 19789
  br i1 %cmp110, label %cond.true112, label %cond.false120

cond.true112:                                     ; preds = %if.then108
  %91 = load ptr, ptr %dp.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %91, i32 0, i32 3
  %92 = load i32, ptr %tdir_offset, align 4
  %93 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift = getelementptr inbounds %struct.tiff, ptr %93, i32 0, i32 9
  %94 = load ptr, ptr %tif_typeshift, align 8
  %95 = load ptr, ptr %dp.addr, align 8
  %tdir_type113 = getelementptr inbounds %struct.TIFFDirEntry, ptr %95, i32 0, i32 1
  %96 = load i16, ptr %tdir_type113, align 2
  %idxprom114 = zext i16 %96 to i64
  %arrayidx115 = getelementptr inbounds i32, ptr %94, i64 %idxprom114
  %97 = load i32, ptr %arrayidx115, align 4
  %shr = lshr i32 %92, %97
  %conv116 = zext i32 %shr to i64
  %98 = load ptr, ptr %tif.addr, align 8
  %tif_typemask = getelementptr inbounds %struct.tiff, ptr %98, i32 0, i32 10
  %99 = load ptr, ptr %tif_typemask, align 8
  %100 = load ptr, ptr %dp.addr, align 8
  %tdir_type117 = getelementptr inbounds %struct.TIFFDirEntry, ptr %100, i32 0, i32 1
  %101 = load i16, ptr %tdir_type117, align 2
  %idxprom118 = zext i16 %101 to i64
  %arrayidx119 = getelementptr inbounds i64, ptr %99, i64 %idxprom118
  %102 = load i64, ptr %arrayidx119, align 8
  %and = and i64 %conv116, %102
  br label %cond.end128

cond.false120:                                    ; preds = %if.then108
  %103 = load ptr, ptr %dp.addr, align 8
  %tdir_offset121 = getelementptr inbounds %struct.TIFFDirEntry, ptr %103, i32 0, i32 3
  %104 = load i32, ptr %tdir_offset121, align 4
  %conv122 = zext i32 %104 to i64
  %105 = load ptr, ptr %tif.addr, align 8
  %tif_typemask123 = getelementptr inbounds %struct.tiff, ptr %105, i32 0, i32 10
  %106 = load ptr, ptr %tif_typemask123, align 8
  %107 = load ptr, ptr %dp.addr, align 8
  %tdir_type124 = getelementptr inbounds %struct.TIFFDirEntry, ptr %107, i32 0, i32 1
  %108 = load i16, ptr %tdir_type124, align 2
  %idxprom125 = zext i16 %108 to i64
  %arrayidx126 = getelementptr inbounds i64, ptr %106, i64 %idxprom125
  %109 = load i64, ptr %arrayidx126, align 8
  %and127 = and i64 %conv122, %109
  br label %cond.end128

cond.end128:                                      ; preds = %cond.false120, %cond.true112
  %cond129 = phi i64 [ %and, %cond.true112 ], [ %and127, %cond.false120 ]
  %conv130 = trunc i64 %cond129 to i32
  %conv131 = trunc i32 %conv130 to i16
  store i16 %conv131, ptr %v, align 2
  %110 = load ptr, ptr %fip, align 8
  %field_passcount132 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %110, i32 0, i32 6
  %111 = load i8, ptr %field_passcount132, align 1
  %conv133 = zext i8 %111 to i32
  %tobool134 = icmp ne i32 %conv133, 0
  br i1 %tobool134, label %cond.true135, label %cond.false139

cond.true135:                                     ; preds = %cond.end128
  %112 = load ptr, ptr %tif.addr, align 8
  %113 = load ptr, ptr %dp.addr, align 8
  %tdir_tag136 = getelementptr inbounds %struct.TIFFDirEntry, ptr %113, i32 0, i32 0
  %114 = load i16, ptr %tdir_tag136, align 4
  %conv137 = zext i16 %114 to i32
  %call138 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %112, i32 noundef %conv137, i32 noundef 1, ptr noundef %v)
  br label %cond.end144

cond.false139:                                    ; preds = %cond.end128
  %115 = load ptr, ptr %tif.addr, align 8
  %116 = load ptr, ptr %dp.addr, align 8
  %tdir_tag140 = getelementptr inbounds %struct.TIFFDirEntry, ptr %116, i32 0, i32 0
  %117 = load i16, ptr %tdir_tag140, align 4
  %conv141 = zext i16 %117 to i32
  %118 = load i16, ptr %v, align 2
  %conv142 = zext i16 %118 to i32
  %call143 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %115, i32 noundef %conv141, i32 noundef %conv142)
  br label %cond.end144

cond.end144:                                      ; preds = %cond.false139, %cond.true135
  %cond145 = phi i32 [ %call138, %cond.true135 ], [ %call143, %cond.false139 ]
  store i32 %cond145, ptr %ok, align 4
  br label %sw.epilog250

if.end146:                                        ; preds = %land.lhs.true, %sw.bb103
  br label %sw.bb147

sw.bb147:                                         ; preds = %if.then100, %if.then100, %if.end146
  %119 = load ptr, ptr %tif.addr, align 8
  %tif_header148 = getelementptr inbounds %struct.tiff, ptr %119, i32 0, i32 7
  %tiff_magic149 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header148, i32 0, i32 0
  %120 = load i16, ptr %tiff_magic149, align 8
  %conv150 = zext i16 %120 to i32
  %cmp151 = icmp eq i32 %conv150, 19789
  br i1 %cmp151, label %cond.true153, label %cond.false166

cond.true153:                                     ; preds = %sw.bb147
  %121 = load ptr, ptr %dp.addr, align 8
  %tdir_offset154 = getelementptr inbounds %struct.TIFFDirEntry, ptr %121, i32 0, i32 3
  %122 = load i32, ptr %tdir_offset154, align 4
  %123 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift155 = getelementptr inbounds %struct.tiff, ptr %123, i32 0, i32 9
  %124 = load ptr, ptr %tif_typeshift155, align 8
  %125 = load ptr, ptr %dp.addr, align 8
  %tdir_type156 = getelementptr inbounds %struct.TIFFDirEntry, ptr %125, i32 0, i32 1
  %126 = load i16, ptr %tdir_type156, align 2
  %idxprom157 = zext i16 %126 to i64
  %arrayidx158 = getelementptr inbounds i32, ptr %124, i64 %idxprom157
  %127 = load i32, ptr %arrayidx158, align 4
  %shr159 = lshr i32 %122, %127
  %conv160 = zext i32 %shr159 to i64
  %128 = load ptr, ptr %tif.addr, align 8
  %tif_typemask161 = getelementptr inbounds %struct.tiff, ptr %128, i32 0, i32 10
  %129 = load ptr, ptr %tif_typemask161, align 8
  %130 = load ptr, ptr %dp.addr, align 8
  %tdir_type162 = getelementptr inbounds %struct.TIFFDirEntry, ptr %130, i32 0, i32 1
  %131 = load i16, ptr %tdir_type162, align 2
  %idxprom163 = zext i16 %131 to i64
  %arrayidx164 = getelementptr inbounds i64, ptr %129, i64 %idxprom163
  %132 = load i64, ptr %arrayidx164, align 8
  %and165 = and i64 %conv160, %132
  br label %cond.end174

cond.false166:                                    ; preds = %sw.bb147
  %133 = load ptr, ptr %dp.addr, align 8
  %tdir_offset167 = getelementptr inbounds %struct.TIFFDirEntry, ptr %133, i32 0, i32 3
  %134 = load i32, ptr %tdir_offset167, align 4
  %conv168 = zext i32 %134 to i64
  %135 = load ptr, ptr %tif.addr, align 8
  %tif_typemask169 = getelementptr inbounds %struct.tiff, ptr %135, i32 0, i32 10
  %136 = load ptr, ptr %tif_typemask169, align 8
  %137 = load ptr, ptr %dp.addr, align 8
  %tdir_type170 = getelementptr inbounds %struct.TIFFDirEntry, ptr %137, i32 0, i32 1
  %138 = load i16, ptr %tdir_type170, align 2
  %idxprom171 = zext i16 %138 to i64
  %arrayidx172 = getelementptr inbounds i64, ptr %136, i64 %idxprom171
  %139 = load i64, ptr %arrayidx172, align 8
  %and173 = and i64 %conv168, %139
  br label %cond.end174

cond.end174:                                      ; preds = %cond.false166, %cond.true153
  %cond175 = phi i64 [ %and165, %cond.true153 ], [ %and173, %cond.false166 ]
  %conv176 = trunc i64 %cond175 to i32
  store i32 %conv176, ptr %v32, align 4
  %140 = load ptr, ptr %fip, align 8
  %field_passcount177 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %140, i32 0, i32 6
  %141 = load i8, ptr %field_passcount177, align 1
  %conv178 = zext i8 %141 to i32
  %tobool179 = icmp ne i32 %conv178, 0
  br i1 %tobool179, label %cond.true180, label %cond.false184

cond.true180:                                     ; preds = %cond.end174
  %142 = load ptr, ptr %tif.addr, align 8
  %143 = load ptr, ptr %dp.addr, align 8
  %tdir_tag181 = getelementptr inbounds %struct.TIFFDirEntry, ptr %143, i32 0, i32 0
  %144 = load i16, ptr %tdir_tag181, align 4
  %conv182 = zext i16 %144 to i32
  %call183 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %142, i32 noundef %conv182, i32 noundef 1, ptr noundef %v32)
  br label %cond.end188

cond.false184:                                    ; preds = %cond.end174
  %145 = load ptr, ptr %tif.addr, align 8
  %146 = load ptr, ptr %dp.addr, align 8
  %tdir_tag185 = getelementptr inbounds %struct.TIFFDirEntry, ptr %146, i32 0, i32 0
  %147 = load i16, ptr %tdir_tag185, align 4
  %conv186 = zext i16 %147 to i32
  %148 = load i32, ptr %v32, align 4
  %call187 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %145, i32 noundef %conv186, i32 noundef %148)
  br label %cond.end188

cond.end188:                                      ; preds = %cond.false184, %cond.true180
  %cond189 = phi i32 [ %call183, %cond.true180 ], [ %call187, %cond.false184 ]
  store i32 %cond189, ptr %ok, align 4
  br label %sw.epilog250

sw.bb190:                                         ; preds = %if.then100, %if.then100, %if.then100
  %149 = load ptr, ptr %dp.addr, align 8
  %tdir_type192 = getelementptr inbounds %struct.TIFFDirEntry, ptr %149, i32 0, i32 1
  %150 = load i16, ptr %tdir_type192, align 2
  %conv193 = zext i16 %150 to i32
  %cmp194 = icmp eq i32 %conv193, 11
  br i1 %cmp194, label %cond.true196, label %cond.false198

cond.true196:                                     ; preds = %sw.bb190
  %151 = load ptr, ptr %tif.addr, align 8
  %152 = load ptr, ptr %dp.addr, align 8
  %call197 = call float @TIFFFetchFloat(ptr noundef %151, ptr noundef %152)
  br label %cond.end200

cond.false198:                                    ; preds = %sw.bb190
  %153 = load ptr, ptr %tif.addr, align 8
  %154 = load ptr, ptr %dp.addr, align 8
  %call199 = call float @TIFFFetchRational(ptr noundef %153, ptr noundef %154)
  br label %cond.end200

cond.end200:                                      ; preds = %cond.false198, %cond.true196
  %cond201 = phi float [ %call197, %cond.true196 ], [ %call199, %cond.false198 ]
  store float %cond201, ptr %v191, align 4
  %155 = load ptr, ptr %fip, align 8
  %field_passcount202 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %155, i32 0, i32 6
  %156 = load i8, ptr %field_passcount202, align 1
  %conv203 = zext i8 %156 to i32
  %tobool204 = icmp ne i32 %conv203, 0
  br i1 %tobool204, label %cond.true205, label %cond.false209

cond.true205:                                     ; preds = %cond.end200
  %157 = load ptr, ptr %tif.addr, align 8
  %158 = load ptr, ptr %dp.addr, align 8
  %tdir_tag206 = getelementptr inbounds %struct.TIFFDirEntry, ptr %158, i32 0, i32 0
  %159 = load i16, ptr %tdir_tag206, align 4
  %conv207 = zext i16 %159 to i32
  %call208 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %157, i32 noundef %conv207, i32 noundef 1, ptr noundef %v191)
  br label %cond.end214

cond.false209:                                    ; preds = %cond.end200
  %160 = load ptr, ptr %tif.addr, align 8
  %161 = load ptr, ptr %dp.addr, align 8
  %tdir_tag210 = getelementptr inbounds %struct.TIFFDirEntry, ptr %161, i32 0, i32 0
  %162 = load i16, ptr %tdir_tag210, align 4
  %conv211 = zext i16 %162 to i32
  %163 = load float, ptr %v191, align 4
  %conv212 = fpext float %163 to double
  %call213 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %160, i32 noundef %conv211, double noundef %conv212)
  br label %cond.end214

cond.end214:                                      ; preds = %cond.false209, %cond.true205
  %cond215 = phi i32 [ %call208, %cond.true205 ], [ %call213, %cond.false209 ]
  store i32 %cond215, ptr %ok, align 4
  br label %sw.epilog250

sw.bb216:                                         ; preds = %if.then100
  %164 = load ptr, ptr %tif.addr, align 8
  %165 = load ptr, ptr %dp.addr, align 8
  %call218 = call i32 @TIFFFetchDoubleArray(ptr noundef %164, ptr noundef %165, ptr noundef %v217)
  %tobool219 = icmp ne i32 %call218, 0
  br i1 %tobool219, label %land.rhs220, label %land.end235

land.rhs220:                                      ; preds = %sw.bb216
  %166 = load ptr, ptr %fip, align 8
  %field_passcount221 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %166, i32 0, i32 6
  %167 = load i8, ptr %field_passcount221, align 1
  %conv222 = zext i8 %167 to i32
  %tobool223 = icmp ne i32 %conv222, 0
  br i1 %tobool223, label %cond.true224, label %cond.false228

cond.true224:                                     ; preds = %land.rhs220
  %168 = load ptr, ptr %tif.addr, align 8
  %169 = load ptr, ptr %dp.addr, align 8
  %tdir_tag225 = getelementptr inbounds %struct.TIFFDirEntry, ptr %169, i32 0, i32 0
  %170 = load i16, ptr %tdir_tag225, align 4
  %conv226 = zext i16 %170 to i32
  %call227 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %168, i32 noundef %conv226, i32 noundef 1, ptr noundef %v217)
  br label %cond.end232

cond.false228:                                    ; preds = %land.rhs220
  %171 = load ptr, ptr %tif.addr, align 8
  %172 = load ptr, ptr %dp.addr, align 8
  %tdir_tag229 = getelementptr inbounds %struct.TIFFDirEntry, ptr %172, i32 0, i32 0
  %173 = load i16, ptr %tdir_tag229, align 4
  %conv230 = zext i16 %173 to i32
  %174 = load double, ptr %v217, align 8
  %call231 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %171, i32 noundef %conv230, double noundef %174)
  br label %cond.end232

cond.end232:                                      ; preds = %cond.false228, %cond.true224
  %cond233 = phi i32 [ %call227, %cond.true224 ], [ %call231, %cond.false228 ]
  %tobool234 = icmp ne i32 %cond233, 0
  br label %land.end235

land.end235:                                      ; preds = %cond.end232, %sw.bb216
  %175 = phi i1 [ false, %sw.bb216 ], [ %tobool234, %cond.end232 ]
  %land.ext236 = zext i1 %175 to i32
  store i32 %land.ext236, ptr %ok, align 4
  br label %sw.epilog250

sw.bb237:                                         ; preds = %if.then100, %if.then100
  %176 = load ptr, ptr %tif.addr, align 8
  %177 = load ptr, ptr %dp.addr, align 8
  %arraydecay = getelementptr inbounds [2 x i8], ptr %c, i64 0, i64 0
  %call238 = call i32 @TIFFFetchString(ptr noundef %176, ptr noundef %177, ptr noundef %arraydecay)
  %cmp239 = icmp ne i32 %call238, 0
  %conv240 = zext i1 %cmp239 to i32
  store i32 %conv240, ptr %ok, align 4
  %cmp241 = icmp ne i32 %conv240, 0
  br i1 %cmp241, label %if.then243, label %if.end249

if.then243:                                       ; preds = %sw.bb237
  %arrayidx244 = getelementptr inbounds [2 x i8], ptr %c, i64 0, i64 1
  store i8 0, ptr %arrayidx244, align 1
  %178 = load ptr, ptr %tif.addr, align 8
  %179 = load ptr, ptr %dp.addr, align 8
  %tdir_tag245 = getelementptr inbounds %struct.TIFFDirEntry, ptr %179, i32 0, i32 0
  %180 = load i16, ptr %tdir_tag245, align 4
  %conv246 = zext i16 %180 to i32
  %arraydecay247 = getelementptr inbounds [2 x i8], ptr %c, i64 0, i64 0
  %call248 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %178, i32 noundef %conv246, ptr noundef %arraydecay247)
  store i32 %call248, ptr %ok, align 4
  br label %if.end249

if.end249:                                        ; preds = %if.then243, %sw.bb237
  br label %sw.epilog250

sw.epilog250:                                     ; preds = %if.then100, %if.end249, %land.end235, %cond.end214, %cond.end188, %cond.end144
  br label %if.end251

if.end251:                                        ; preds = %sw.epilog250, %if.else
  br label %if.end252

if.end252:                                        ; preds = %if.end251, %if.end97
  %181 = load i32, ptr %ok, align 4
  ret i32 %181
}

declare i32 @TIFFReassignTagToIgnore(i32 noundef, i32 noundef) #1

declare void @TIFFWarning(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @CheckDirCount(ptr noundef %tif, ptr noundef %dir, i32 noundef %count) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i32 %count, ptr %count.addr, align 4
  %0 = load i32, ptr %count.addr, align 4
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %tdir_count, align 4
  %cmp = icmp ne i32 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %tif_name, align 8
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %6, i32 0, i32 0
  %7 = load i16, ptr %tdir_tag, align 4
  %conv = zext i16 %7 to i32
  %call = call ptr @_TIFFFieldWithTag(ptr noundef %5, i32 noundef %conv)
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call, i32 0, i32 7
  %8 = load ptr, ptr %field_name, align 8
  %9 = load ptr, ptr %dir.addr, align 8
  %tdir_count1 = getelementptr inbounds %struct.TIFFDirEntry, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %tdir_count1, align 4
  %11 = load i32, ptr %count.addr, align 4
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %4, ptr noundef @.str.19, ptr noundef %8, i32 noundef %10, i32 noundef %11)
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
  %call = call i32 @CheckDirCount(ptr noundef %2, ptr noundef %3, i32 noundef %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end29

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [10 x i16], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %v, align 8
  %5 = load i32, ptr %samples, align 4
  %conv1 = sext i32 %5 to i64
  %cmp = icmp ugt i64 %conv1, 10
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %6 = load i32, ptr %samples, align 4
  %conv4 = sext i32 %6 to i64
  %mul = mul i64 %conv4, 2
  %conv5 = trunc i64 %mul to i32
  %call6 = call ptr @_TIFFmalloc(i32 noundef %conv5)
  store ptr %call6, ptr %v, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
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
  %21 = load i16, ptr %tdir_tag, align 4
  %conv18 = zext i16 %21 to i32
  %call19 = call ptr @_TIFFFieldWithTag(ptr noundef %19, i32 noundef %conv18)
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
  %1 = load i32, ptr %tdir_count, align 4
  %conv = zext i32 %1 to i64
  %cmp = icmp ugt i64 %conv, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dir.addr, align 8
  %tdir_count2 = getelementptr inbounds %struct.TIFFDirEntry, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %tdir_count2, align 4
  %conv3 = zext i32 %3 to i64
  %mul = mul i64 %conv3, 2
  %conv4 = trunc i64 %mul to i32
  %call = call ptr @_TIFFmalloc(i32 noundef %conv4)
  store ptr %call, ptr %v, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %4, i32 0, i32 1
  %5 = load i16, ptr %tdir_type, align 2
  %conv5 = zext i16 %5 to i32
  %cmp6 = icmp eq i32 %conv5, 1
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %6 = load ptr, ptr %tif.addr, align 8
  %7 = load ptr, ptr %dir.addr, align 8
  %8 = load ptr, ptr %v, align 8
  %call9 = call i32 @TIFFFetchByteArray(ptr noundef %6, ptr noundef %7, ptr noundef %8)
  store i32 %call9, ptr %status, align 4
  br label %if.end11

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %tif.addr, align 8
  %10 = load ptr, ptr %dir.addr, align 8
  %11 = load ptr, ptr %v, align 8
  %call10 = call i32 @TIFFFetchShortArray(ptr noundef %9, ptr noundef %10, ptr noundef %11)
  store i32 %call10, ptr %status, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %12 = load i32, ptr %status, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end11
  %13 = load ptr, ptr %tif.addr, align 8
  %14 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %14, i32 0, i32 0
  %15 = load i16, ptr %tdir_tag, align 4
  %conv13 = zext i16 %15 to i32
  %16 = load ptr, ptr %dir.addr, align 8
  %tdir_count14 = getelementptr inbounds %struct.TIFFDirEntry, ptr %16, i32 0, i32 2
  %17 = load i32, ptr %tdir_count14, align 4
  %18 = load ptr, ptr %v, align 8
  %call15 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %13, i32 noundef %conv13, i32 noundef %17, ptr noundef %18)
  store i32 %call15, ptr %status, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end11
  %19 = load ptr, ptr %v, align 8
  %arraydecay17 = getelementptr inbounds [10 x i16], ptr %buf, i64 0, i64 0
  %cmp18 = icmp ne ptr %19, %arraydecay17
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  %20 = load ptr, ptr %v, align 8
  call void @_TIFFfree(ptr noundef %20)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end16
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

declare i32 @TIFFNumberOfStrips(ptr noundef) #1

declare i32 @TIFFNumberOfTiles(ptr noundef) #1

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
  %call = call i32 @CheckDirCount(ptr noundef %2, ptr noundef %3, i32 noundef %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [10 x double], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %v, align 8
  %5 = load i32, ptr %samples, align 4
  %conv1 = sext i32 %5 to i64
  %cmp = icmp ugt i64 %conv1, 10
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %6 = load i32, ptr %samples, align 4
  %conv4 = sext i32 %6 to i64
  %mul = mul i64 %conv4, 8
  %conv5 = trunc i64 %mul to i32
  %call6 = call ptr @_TIFFmalloc(i32 noundef %conv5)
  store ptr %call6, ptr %v, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
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
  %21 = load i16, ptr %tdir_tag, align 4
  %conv16 = zext i16 %21 to i32
  %call17 = call ptr @_TIFFFieldWithTag(ptr noundef %19, i32 noundef %conv16)
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
  %conv = trunc i64 %2 to i32
  %call = call i32 @CheckDirCount(ptr noundef %0, ptr noundef %1, i32 noundef %conv)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %lpp.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load i64, ptr %nstrips.addr, align 8
  %mul = mul i64 %6, 4
  %conv2 = trunc i64 %mul to i32
  %call3 = call ptr @CheckMalloc(ptr noundef %5, i32 noundef %conv2, ptr noundef @.str.25)
  %7 = load ptr, ptr %lpp.addr, align 8
  store ptr %call3, ptr %7, align 8
  %cmp4 = icmp eq ptr %call3, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %8 = load ptr, ptr %lpp.addr, align 8
  %9 = load ptr, ptr %8, align 8
  store ptr %9, ptr %lp, align 8
  %10 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %10, i32 0, i32 1
  %11 = load i16, ptr %tdir_type, align 2
  %conv8 = zext i16 %11 to i32
  %cmp9 = icmp eq i32 %conv8, 3
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end7
  %12 = load ptr, ptr %tif.addr, align 8
  %13 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %tdir_count, align 4
  %conv12 = zext i32 %14 to i64
  %mul13 = mul i64 %conv12, 2
  %conv14 = trunc i64 %mul13 to i32
  %call15 = call ptr @CheckMalloc(ptr noundef %12, i32 noundef %conv14, ptr noundef @.str.26)
  store ptr %call15, ptr %dp, align 8
  %15 = load ptr, ptr %dp, align 8
  %cmp16 = icmp eq ptr %15, null
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then11
  store i32 0, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.then11
  %16 = load ptr, ptr %tif.addr, align 8
  %17 = load ptr, ptr %dir.addr, align 8
  %18 = load ptr, ptr %dp, align 8
  %call20 = call i32 @TIFFFetchShortArray(ptr noundef %16, ptr noundef %17, ptr noundef %18)
  store i32 %call20, ptr %status, align 4
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.end28

if.then23:                                        ; preds = %if.end19
  %19 = load ptr, ptr %dp, align 8
  store ptr %19, ptr %wp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then23
  %20 = load i64, ptr %nstrips.addr, align 8
  %dec = add nsw i64 %20, -1
  store i64 %dec, ptr %nstrips.addr, align 8
  %cmp24 = icmp sgt i64 %20, 0
  br i1 %cmp24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load ptr, ptr %wp, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %21, i32 1
  store ptr %incdec.ptr, ptr %wp, align 8
  %22 = load i16, ptr %21, align 2
  %conv26 = zext i16 %22 to i32
  %23 = load ptr, ptr %lp, align 8
  %incdec.ptr27 = getelementptr inbounds i32, ptr %23, i32 1
  store ptr %incdec.ptr27, ptr %lp, align 8
  store i32 %conv26, ptr %23, align 4
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  br label %if.end28

if.end28:                                         ; preds = %while.end, %if.end19
  %24 = load ptr, ptr %dp, align 8
  call void @_TIFFfree(ptr noundef %24)
  br label %if.end30

if.else:                                          ; preds = %if.end7
  %25 = load ptr, ptr %tif.addr, align 8
  %26 = load ptr, ptr %dir.addr, align 8
  %27 = load ptr, ptr %lp, align 8
  %call29 = call i32 @TIFFFetchLongArray(ptr noundef %25, ptr noundef %26, ptr noundef %27)
  store i32 %call29, ptr %status, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.end28
  %28 = load i32, ptr %status, align 4
  store i32 %28, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end30, %if.then18, %if.then6, %if.then
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFFetchData(ptr noundef %tif, ptr noundef %dir, ptr noundef %cp) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %w = alloca i32, align 4
  %cc = alloca i32, align 4
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
  %4 = load i32, ptr %tdir_count, align 4
  %5 = load i32, ptr %w, align 4
  %mul = mul i32 %4, %5
  store i32 %mul, ptr %cc, align 4
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %tif_flags, align 8
  %and = and i32 %7, 2048
  %cmp = icmp ne i32 %and, 0
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
  %13 = load i32, ptr %tdir_offset, align 4
  %call = call i32 %9(ptr noundef %11, i32 noundef %13, i32 noundef 0)
  %14 = load ptr, ptr %dir.addr, align 8
  %tdir_offset1 = getelementptr inbounds %struct.TIFFDirEntry, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %tdir_offset1, align 4
  %cmp2 = icmp eq i32 %call, %15
  br i1 %cmp2, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  br label %bad

if.end:                                           ; preds = %if.then
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_readproc = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 49
  %17 = load ptr, ptr %tif_readproc, align 8
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata4 = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 48
  %19 = load ptr, ptr %tif_clientdata4, align 8
  %20 = load ptr, ptr %cp.addr, align 8
  %21 = load i32, ptr %cc, align 4
  %call5 = call i32 %17(ptr noundef %19, ptr noundef %20, i32 noundef %21)
  %22 = load i32, ptr %cc, align 4
  %cmp6 = icmp eq i32 %call5, %22
  br i1 %cmp6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  br label %bad

if.end8:                                          ; preds = %if.end
  br label %if.end14

if.else:                                          ; preds = %entry
  %23 = load ptr, ptr %dir.addr, align 8
  %tdir_offset9 = getelementptr inbounds %struct.TIFFDirEntry, ptr %23, i32 0, i32 3
  %24 = load i32, ptr %tdir_offset9, align 4
  %25 = load i32, ptr %cc, align 4
  %add = add i32 %24, %25
  %26 = load ptr, ptr %tif.addr, align 8
  %tif_size = getelementptr inbounds %struct.tiff, ptr %26, i32 0, i32 45
  %27 = load i32, ptr %tif_size, align 8
  %cmp10 = icmp sgt i32 %add, %27
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.else
  br label %bad

if.end12:                                         ; preds = %if.else
  %28 = load ptr, ptr %cp.addr, align 8
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_base = getelementptr inbounds %struct.tiff, ptr %29, i32 0, i32 44
  %30 = load ptr, ptr %tif_base, align 8
  %31 = load ptr, ptr %dir.addr, align 8
  %tdir_offset13 = getelementptr inbounds %struct.TIFFDirEntry, ptr %31, i32 0, i32 3
  %32 = load i32, ptr %tdir_offset13, align 4
  %idx.ext = zext i32 %32 to i64
  %add.ptr = getelementptr inbounds i8, ptr %30, i64 %idx.ext
  %33 = load i32, ptr %cc, align 4
  call void @_TIFFmemcpy(ptr noundef %28, ptr noundef %add.ptr, i32 noundef %33)
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %if.end8
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_flags15 = getelementptr inbounds %struct.tiff, ptr %34, i32 0, i32 3
  %35 = load i32, ptr %tif_flags15, align 8
  %and16 = and i32 %35, 128
  %tobool = icmp ne i32 %and16, 0
  br i1 %tobool, label %if.then17, label %if.end31

if.then17:                                        ; preds = %if.end14
  %36 = load ptr, ptr %dir.addr, align 8
  %tdir_type18 = getelementptr inbounds %struct.TIFFDirEntry, ptr %36, i32 0, i32 1
  %37 = load i16, ptr %tdir_type18, align 2
  %conv = zext i16 %37 to i32
  switch i32 %conv, label %sw.epilog [
    i32 3, label %sw.bb
    i32 8, label %sw.bb
    i32 4, label %sw.bb21
    i32 9, label %sw.bb21
    i32 11, label %sw.bb21
    i32 5, label %sw.bb24
    i32 10, label %sw.bb24
    i32 12, label %sw.bb28
  ]

sw.bb:                                            ; preds = %if.then17, %if.then17
  %38 = load ptr, ptr %cp.addr, align 8
  %39 = load ptr, ptr %dir.addr, align 8
  %tdir_count19 = getelementptr inbounds %struct.TIFFDirEntry, ptr %39, i32 0, i32 2
  %40 = load i32, ptr %tdir_count19, align 4
  %conv20 = zext i32 %40 to i64
  call void @TIFFSwabArrayOfShort(ptr noundef %38, i64 noundef %conv20)
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.then17, %if.then17, %if.then17
  %41 = load ptr, ptr %cp.addr, align 8
  %42 = load ptr, ptr %dir.addr, align 8
  %tdir_count22 = getelementptr inbounds %struct.TIFFDirEntry, ptr %42, i32 0, i32 2
  %43 = load i32, ptr %tdir_count22, align 4
  %conv23 = zext i32 %43 to i64
  call void @TIFFSwabArrayOfLong(ptr noundef %41, i64 noundef %conv23)
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.then17, %if.then17
  %44 = load ptr, ptr %cp.addr, align 8
  %45 = load ptr, ptr %dir.addr, align 8
  %tdir_count25 = getelementptr inbounds %struct.TIFFDirEntry, ptr %45, i32 0, i32 2
  %46 = load i32, ptr %tdir_count25, align 4
  %mul26 = mul i32 2, %46
  %conv27 = zext i32 %mul26 to i64
  call void @TIFFSwabArrayOfLong(ptr noundef %44, i64 noundef %conv27)
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.then17
  %47 = load ptr, ptr %cp.addr, align 8
  %48 = load ptr, ptr %dir.addr, align 8
  %tdir_count29 = getelementptr inbounds %struct.TIFFDirEntry, ptr %48, i32 0, i32 2
  %49 = load i32, ptr %tdir_count29, align 4
  %conv30 = zext i32 %49 to i64
  call void @TIFFSwabArrayOfDouble(ptr noundef %47, i64 noundef %conv30)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then17, %sw.bb28, %sw.bb24, %sw.bb21, %sw.bb
  br label %if.end31

if.end31:                                         ; preds = %sw.epilog, %if.end14
  %50 = load i32, ptr %cc, align 4
  store i32 %50, ptr %retval, align 4
  br label %return

bad:                                              ; preds = %if.then11, %if.then7, %if.then3
  %51 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %tif_name, align 8
  %53 = load ptr, ptr %tif.addr, align 8
  %54 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %54, i32 0, i32 0
  %55 = load i16, ptr %tdir_tag, align 4
  %conv32 = zext i16 %55 to i32
  %call33 = call ptr @_TIFFFieldWithTag(ptr noundef %53, i32 noundef %conv32)
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call33, i32 0, i32 7
  %56 = load ptr, ptr %field_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %52, ptr noundef @.str.20, ptr noundef %56)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %bad, %if.end31
  %57 = load i32, ptr %retval, align 4
  ret i32 %57
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
  %9 = load i16, ptr %tdir_tag, align 4
  %conv4 = zext i16 %9 to i32
  %arrayidx = getelementptr inbounds [2 x i16], ptr %v, i64 0, i64 0
  %10 = load i16, ptr %arrayidx, align 2
  %conv5 = zext i16 %10 to i32
  %arrayidx6 = getelementptr inbounds [2 x i16], ptr %v, i64 0, i64 1
  %11 = load i16, ptr %arrayidx6, align 2
  %conv7 = zext i16 %11 to i32
  %call8 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %7, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv7)
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
  %i = alloca i32, align 4
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
  %6 = load i32, ptr %tdir_count, align 4
  %conv2 = zext i32 %6 to i64
  %mul = mul i64 %conv2, 4
  %conv3 = trunc i64 %mul to i32
  %call4 = call ptr @CheckMalloc(ptr noundef %4, i32 noundef %conv3, ptr noundef @TIFFFetchRefBlackWhite.mesg)
  store ptr %call4, ptr %cp, align 8
  %7 = load ptr, ptr %cp, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %8 = load ptr, ptr %tif.addr, align 8
  %9 = load ptr, ptr %dir.addr, align 8
  %10 = load ptr, ptr %cp, align 8
  %call5 = call i32 @TIFFFetchLongArray(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  %tobool6 = icmp ne i32 %call5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %11 = phi i1 [ false, %if.end ], [ %tobool6, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  store i32 %land.ext, ptr %ok, align 4
  %cmp7 = icmp ne i32 %land.ext, 0
  br i1 %cmp7, label %if.then9, label %if.end29

if.then9:                                         ; preds = %land.end
  %12 = load ptr, ptr %tif.addr, align 8
  %13 = load ptr, ptr %dir.addr, align 8
  %tdir_count10 = getelementptr inbounds %struct.TIFFDirEntry, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %tdir_count10, align 4
  %conv11 = zext i32 %14 to i64
  %mul12 = mul i64 %conv11, 4
  %conv13 = trunc i64 %mul12 to i32
  %call14 = call ptr @CheckMalloc(ptr noundef %12, i32 noundef %conv13, ptr noundef @TIFFFetchRefBlackWhite.mesg)
  store ptr %call14, ptr %fp, align 8
  %15 = load ptr, ptr %fp, align 8
  %cmp15 = icmp ne ptr %15, null
  %conv16 = zext i1 %cmp15 to i32
  store i32 %conv16, ptr %ok, align 4
  %cmp17 = icmp ne i32 %conv16, 0
  br i1 %cmp17, label %if.then19, label %if.end28

if.then19:                                        ; preds = %if.then9
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then19
  %16 = load i32, ptr %i, align 4
  %17 = load ptr, ptr %dir.addr, align 8
  %tdir_count20 = getelementptr inbounds %struct.TIFFDirEntry, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %tdir_count20, align 4
  %cmp21 = icmp ult i32 %16, %18
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %cp, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom = zext i32 %20 to i64
  %arrayidx = getelementptr inbounds i32, ptr %19, i64 %idxprom
  %21 = load i32, ptr %arrayidx, align 4
  %conv23 = uitofp i32 %21 to float
  %22 = load ptr, ptr %fp, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom24 = zext i32 %23 to i64
  %arrayidx25 = getelementptr inbounds float, ptr %22, i64 %idxprom24
  store float %conv23, ptr %arrayidx25, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, ptr %i, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %25 = load ptr, ptr %tif.addr, align 8
  %26 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %26, i32 0, i32 0
  %27 = load i16, ptr %tdir_tag, align 4
  %conv26 = zext i16 %27 to i32
  %28 = load ptr, ptr %fp, align 8
  %call27 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %25, i32 noundef %conv26, ptr noundef %28)
  store i32 %call27, ptr %ok, align 4
  %29 = load ptr, ptr %fp, align 8
  call void @_TIFFfree(ptr noundef %29)
  br label %if.end28

if.end28:                                         ; preds = %for.end, %if.then9
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %land.end
  %30 = load ptr, ptr %cp, align 8
  %tobool30 = icmp ne ptr %30, null
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end29
  %31 = load ptr, ptr %cp, align 8
  call void @_TIFFfree(ptr noundef %31)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end29
  %32 = load i32, ptr %ok, align 4
  store i32 %32, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end32, %if.then
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

declare ptr @_TIFFFieldWithTag(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @EstimateStripByteCounts(ptr noundef %tif, ptr noundef %dir, i16 noundef zeroext %dircount) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %dircount.addr = alloca i16, align 2
  %dp = alloca ptr, align 8
  %td = alloca ptr, align 8
  %i = alloca i16, align 2
  %space = alloca i32, align 4
  %filesize = alloca i32, align 4
  %n = alloca i16, align 2
  %cc = alloca i32, align 4
  %rowbytes = alloca i32, align 4
  %rowsperstrip = alloca i32, align 4
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
  %7 = load i32, ptr %td_nstrips, align 4
  %conv = zext i32 %7 to i64
  %mul = mul i64 %conv, 4
  %conv2 = trunc i64 %mul to i32
  %call = call ptr @CheckMalloc(ptr noundef %5, i32 noundef %conv2, ptr noundef @.str.17)
  %8 = load ptr, ptr %td, align 8
  %td_stripbytecount3 = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i32 0, i32 45
  store ptr %call, ptr %td_stripbytecount3, align 8
  %9 = load ptr, ptr %td, align 8
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %9, i32 0, i32 10
  %10 = load i16, ptr %td_compression, align 8
  %conv4 = zext i16 %10 to i32
  %cmp = icmp ne i32 %conv4, 1
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %11 = load i16, ptr %dircount.addr, align 2
  %conv7 = zext i16 %11 to i64
  %mul8 = mul i64 %conv7, 12
  %add = add i64 10, %mul8
  %add9 = add i64 %add, 4
  %conv10 = trunc i64 %add9 to i32
  store i32 %conv10, ptr %space, align 4
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_sizeproc = getelementptr inbounds %struct.tiff, ptr %12, i32 0, i32 53
  %13 = load ptr, ptr %tif_sizeproc, align 8
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %14, i32 0, i32 48
  %15 = load ptr, ptr %tif_clientdata, align 8
  %call11 = call i32 %13(ptr noundef %15)
  store i32 %call11, ptr %filesize, align 4
  %16 = load ptr, ptr %dir.addr, align 8
  store ptr %16, ptr %dp, align 8
  %17 = load i16, ptr %dircount.addr, align 2
  store i16 %17, ptr %n, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then6
  %18 = load i16, ptr %n, align 2
  %conv12 = zext i16 %18 to i32
  %cmp13 = icmp sgt i32 %conv12, 0
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %dp, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %19, i32 0, i32 2
  %20 = load i32, ptr %tdir_count, align 4
  %21 = load ptr, ptr %dp, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %21, i32 0, i32 1
  %22 = load i16, ptr %tdir_type, align 2
  %idxprom = zext i16 %22 to i64
  %arrayidx = getelementptr inbounds [0 x i32], ptr @tiffDataWidth, i64 0, i64 %idxprom
  %23 = load i32, ptr %arrayidx, align 4
  %mul15 = mul i32 %20, %23
  store i32 %mul15, ptr %cc, align 4
  %24 = load i32, ptr %cc, align 4
  %conv16 = zext i32 %24 to i64
  %cmp17 = icmp ugt i64 %conv16, 4
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %for.body
  %25 = load i32, ptr %cc, align 4
  %26 = load i32, ptr %space, align 4
  %add20 = add i32 %26, %25
  store i32 %add20, ptr %space, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %27 = load i16, ptr %n, align 2
  %dec = add i16 %27, -1
  store i16 %dec, ptr %n, align 2
  %28 = load ptr, ptr %dp, align 8
  %incdec.ptr = getelementptr inbounds %struct.TIFFDirEntry, ptr %28, i32 1
  store ptr %incdec.ptr, ptr %dp, align 8
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %29 = load i32, ptr %filesize, align 4
  %30 = load i32, ptr %space, align 4
  %sub = sub i32 %29, %30
  store i32 %sub, ptr %space, align 4
  %31 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %31, i32 0, i32 24
  %32 = load i16, ptr %td_planarconfig, align 2
  %conv22 = zext i16 %32 to i32
  %cmp23 = icmp eq i32 %conv22, 2
  br i1 %cmp23, label %if.then25, label %if.end27

if.then25:                                        ; preds = %for.end
  %33 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %33, i32 0, i32 15
  %34 = load i16, ptr %td_samplesperpixel, align 2
  %conv26 = zext i16 %34 to i32
  %35 = load i32, ptr %space, align 4
  %div = udiv i32 %35, %conv26
  store i32 %div, ptr %space, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %for.end
  store i16 0, ptr %i, align 2
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc37, %if.end27
  %36 = load i16, ptr %i, align 2
  %conv29 = zext i16 %36 to i32
  %37 = load ptr, ptr %td, align 8
  %td_nstrips30 = getelementptr inbounds %struct.TIFFDirectory, ptr %37, i32 0, i32 43
  %38 = load i32, ptr %td_nstrips30, align 4
  %cmp31 = icmp ult i32 %conv29, %38
  br i1 %cmp31, label %for.body33, label %for.end38

for.body33:                                       ; preds = %for.cond28
  %39 = load i32, ptr %space, align 4
  %40 = load ptr, ptr %td, align 8
  %td_stripbytecount34 = getelementptr inbounds %struct.TIFFDirectory, ptr %40, i32 0, i32 45
  %41 = load ptr, ptr %td_stripbytecount34, align 8
  %42 = load i16, ptr %i, align 2
  %idxprom35 = zext i16 %42 to i64
  %arrayidx36 = getelementptr inbounds i32, ptr %41, i64 %idxprom35
  store i32 %39, ptr %arrayidx36, align 4
  br label %for.inc37

for.inc37:                                        ; preds = %for.body33
  %43 = load i16, ptr %i, align 2
  %inc = add i16 %43, 1
  store i16 %inc, ptr %i, align 2
  br label %for.cond28, !llvm.loop !17

for.end38:                                        ; preds = %for.cond28
  %44 = load i16, ptr %i, align 2
  %dec39 = add i16 %44, -1
  store i16 %dec39, ptr %i, align 2
  %45 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %45, i32 0, i32 44
  %46 = load ptr, ptr %td_stripoffset, align 8
  %47 = load i16, ptr %i, align 2
  %idxprom40 = zext i16 %47 to i64
  %arrayidx41 = getelementptr inbounds i32, ptr %46, i64 %idxprom40
  %48 = load i32, ptr %arrayidx41, align 4
  %49 = load ptr, ptr %td, align 8
  %td_stripbytecount42 = getelementptr inbounds %struct.TIFFDirectory, ptr %49, i32 0, i32 45
  %50 = load ptr, ptr %td_stripbytecount42, align 8
  %51 = load i16, ptr %i, align 2
  %idxprom43 = zext i16 %51 to i64
  %arrayidx44 = getelementptr inbounds i32, ptr %50, i64 %idxprom43
  %52 = load i32, ptr %arrayidx44, align 4
  %add45 = add i32 %48, %52
  %53 = load i32, ptr %filesize, align 4
  %cmp46 = icmp sgt i32 %add45, %53
  br i1 %cmp46, label %if.then48, label %if.end56

if.then48:                                        ; preds = %for.end38
  %54 = load i32, ptr %filesize, align 4
  %55 = load ptr, ptr %td, align 8
  %td_stripoffset49 = getelementptr inbounds %struct.TIFFDirectory, ptr %55, i32 0, i32 44
  %56 = load ptr, ptr %td_stripoffset49, align 8
  %57 = load i16, ptr %i, align 2
  %idxprom50 = zext i16 %57 to i64
  %arrayidx51 = getelementptr inbounds i32, ptr %56, i64 %idxprom50
  %58 = load i32, ptr %arrayidx51, align 4
  %sub52 = sub i32 %54, %58
  %59 = load ptr, ptr %td, align 8
  %td_stripbytecount53 = getelementptr inbounds %struct.TIFFDirectory, ptr %59, i32 0, i32 45
  %60 = load ptr, ptr %td_stripbytecount53, align 8
  %61 = load i16, ptr %i, align 2
  %idxprom54 = zext i16 %61 to i64
  %arrayidx55 = getelementptr inbounds i32, ptr %60, i64 %idxprom54
  store i32 %sub52, ptr %arrayidx55, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then48, %for.end38
  br label %if.end72

if.else:                                          ; preds = %if.end
  %62 = load ptr, ptr %tif.addr, align 8
  %call57 = call i32 @TIFFScanlineSize(ptr noundef %62)
  store i32 %call57, ptr %rowbytes, align 4
  %63 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %63, i32 0, i32 2
  %64 = load i32, ptr %td_imagelength, align 4
  %65 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %65, i32 0, i32 42
  %66 = load i32, ptr %td_stripsperimage, align 8
  %div58 = udiv i32 %64, %66
  store i32 %div58, ptr %rowsperstrip, align 4
  store i16 0, ptr %i, align 2
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc69, %if.else
  %67 = load i16, ptr %i, align 2
  %conv60 = zext i16 %67 to i32
  %68 = load ptr, ptr %td, align 8
  %td_nstrips61 = getelementptr inbounds %struct.TIFFDirectory, ptr %68, i32 0, i32 43
  %69 = load i32, ptr %td_nstrips61, align 4
  %cmp62 = icmp ult i32 %conv60, %69
  br i1 %cmp62, label %for.body64, label %for.end71

for.body64:                                       ; preds = %for.cond59
  %70 = load i32, ptr %rowbytes, align 4
  %71 = load i32, ptr %rowsperstrip, align 4
  %mul65 = mul i32 %70, %71
  %72 = load ptr, ptr %td, align 8
  %td_stripbytecount66 = getelementptr inbounds %struct.TIFFDirectory, ptr %72, i32 0, i32 45
  %73 = load ptr, ptr %td_stripbytecount66, align 8
  %74 = load i16, ptr %i, align 2
  %idxprom67 = zext i16 %74 to i64
  %arrayidx68 = getelementptr inbounds i32, ptr %73, i64 %idxprom67
  store i32 %mul65, ptr %arrayidx68, align 4
  br label %for.inc69

for.inc69:                                        ; preds = %for.body64
  %75 = load i16, ptr %i, align 2
  %inc70 = add i16 %75, 1
  store i16 %inc70, ptr %i, align 2
  br label %for.cond59, !llvm.loop !18

for.end71:                                        ; preds = %for.cond59
  br label %if.end72

if.end72:                                         ; preds = %for.end71, %if.end56
  %76 = load ptr, ptr %tif.addr, align 8
  %tif_dir73 = getelementptr inbounds %struct.tiff, ptr %76, i32 0, i32 6
  %td_fieldsset = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir73, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [3 x i64], ptr %td_fieldsset, i64 0, i64 0
  %77 = load i64, ptr %arrayidx74, align 8
  %or = or i64 %77, 16777216
  store i64 %or, ptr %arrayidx74, align 8
  %78 = load ptr, ptr %tif.addr, align 8
  %tif_dir75 = getelementptr inbounds %struct.tiff, ptr %78, i32 0, i32 6
  %td_fieldsset76 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir75, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [3 x i64], ptr %td_fieldsset76, i64 0, i64 0
  %79 = load i64, ptr %arrayidx77, align 8
  %and = and i64 %79, 131072
  %tobool78 = icmp ne i64 %and, 0
  br i1 %tobool78, label %if.end81, label %if.then79

if.then79:                                        ; preds = %if.end72
  %80 = load ptr, ptr %td, align 8
  %td_imagelength80 = getelementptr inbounds %struct.TIFFDirectory, ptr %80, i32 0, i32 2
  %81 = load i32, ptr %td_imagelength80, align 4
  %82 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %82, i32 0, i32 16
  store i32 %81, ptr %td_rowsperstrip, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %if.end72
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @ChopUpSingleUncompressedStrip(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %bytecount = alloca i32, align 4
  %offset = alloca i32, align 4
  %rowbytes = alloca i32, align 4
  %stripbytes = alloca i32, align 4
  %strip = alloca i32, align 4
  %nstrips = alloca i32, align 4
  %rowsperstrip = alloca i32, align 4
  %newcounts = alloca ptr, align 8
  %newoffsets = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 45
  %2 = load ptr, ptr %td_stripbytecount, align 8
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 0
  %3 = load i32, ptr %arrayidx, align 4
  store i32 %3, ptr %bytecount, align 4
  %4 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %4, i32 0, i32 44
  %5 = load ptr, ptr %td_stripoffset, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %5, i64 0
  %6 = load i32, ptr %arrayidx1, align 4
  store i32 %6, ptr %offset, align 4
  %7 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFVTileSize(ptr noundef %7, i32 noundef 1)
  store i32 %call, ptr %rowbytes, align 4
  %8 = load i32, ptr %rowbytes, align 4
  %cmp = icmp sgt i32 %8, 8192
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load i32, ptr %rowbytes, align 4
  store i32 %9, ptr %stripbytes, align 4
  store i32 1, ptr %rowsperstrip, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load i32, ptr %rowbytes, align 4
  %div = sdiv i32 8192, %10
  store i32 %div, ptr %rowsperstrip, align 4
  %11 = load i32, ptr %rowbytes, align 4
  %12 = load i32, ptr %rowsperstrip, align 4
  %mul = mul i32 %11, %12
  store i32 %mul, ptr %stripbytes, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load i32, ptr %rowsperstrip, align 4
  %14 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %14, i32 0, i32 16
  %15 = load i32, ptr %td_rowsperstrip, align 4
  %cmp2 = icmp uge i32 %13, %15
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %return

if.end4:                                          ; preds = %if.end
  %16 = load i32, ptr %bytecount, align 4
  %17 = load i32, ptr %stripbytes, align 4
  %sub = sub i32 %17, 1
  %add = add i32 %16, %sub
  %18 = load i32, ptr %stripbytes, align 4
  %div5 = udiv i32 %add, %18
  store i32 %div5, ptr %nstrips, align 4
  %19 = load ptr, ptr %tif.addr, align 8
  %20 = load i32, ptr %nstrips, align 4
  %conv = zext i32 %20 to i64
  %mul6 = mul i64 %conv, 4
  %conv7 = trunc i64 %mul6 to i32
  %call8 = call ptr @CheckMalloc(ptr noundef %19, i32 noundef %conv7, ptr noundef @.str.27)
  store ptr %call8, ptr %newcounts, align 8
  %21 = load ptr, ptr %tif.addr, align 8
  %22 = load i32, ptr %nstrips, align 4
  %conv9 = zext i32 %22 to i64
  %mul10 = mul i64 %conv9, 4
  %conv11 = trunc i64 %mul10 to i32
  %call12 = call ptr @CheckMalloc(ptr noundef %21, i32 noundef %conv11, ptr noundef @.str.28)
  store ptr %call12, ptr %newoffsets, align 8
  %23 = load ptr, ptr %newcounts, align 8
  %cmp13 = icmp eq ptr %23, null
  br i1 %cmp13, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %24 = load ptr, ptr %newoffsets, align 8
  %cmp15 = icmp eq ptr %24, null
  br i1 %cmp15, label %if.then17, label %if.end26

if.then17:                                        ; preds = %lor.lhs.false, %if.end4
  %25 = load ptr, ptr %newcounts, align 8
  %cmp18 = icmp ne ptr %25, null
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then17
  %26 = load ptr, ptr %newcounts, align 8
  call void @_TIFFfree(ptr noundef %26)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then17
  %27 = load ptr, ptr %newoffsets, align 8
  %cmp22 = icmp ne ptr %27, null
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  %28 = load ptr, ptr %newoffsets, align 8
  call void @_TIFFfree(ptr noundef %28)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %return

if.end26:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %strip, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end26
  %29 = load i32, ptr %strip, align 4
  %30 = load i32, ptr %nstrips, align 4
  %cmp27 = icmp ult i32 %29, %30
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, ptr %stripbytes, align 4
  %32 = load i32, ptr %bytecount, align 4
  %cmp29 = icmp sgt i32 %31, %32
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %for.body
  %33 = load i32, ptr %bytecount, align 4
  store i32 %33, ptr %stripbytes, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %for.body
  %34 = load i32, ptr %stripbytes, align 4
  %35 = load ptr, ptr %newcounts, align 8
  %36 = load i32, ptr %strip, align 4
  %idxprom = zext i32 %36 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %35, i64 %idxprom
  store i32 %34, ptr %arrayidx33, align 4
  %37 = load i32, ptr %offset, align 4
  %38 = load ptr, ptr %newoffsets, align 8
  %39 = load i32, ptr %strip, align 4
  %idxprom34 = zext i32 %39 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %38, i64 %idxprom34
  store i32 %37, ptr %arrayidx35, align 4
  %40 = load i32, ptr %stripbytes, align 4
  %41 = load i32, ptr %offset, align 4
  %add36 = add i32 %41, %40
  store i32 %add36, ptr %offset, align 4
  %42 = load i32, ptr %stripbytes, align 4
  %43 = load i32, ptr %bytecount, align 4
  %sub37 = sub i32 %43, %42
  store i32 %sub37, ptr %bytecount, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end32
  %44 = load i32, ptr %strip, align 4
  %inc = add i32 %44, 1
  store i32 %inc, ptr %strip, align 4
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %45 = load i32, ptr %nstrips, align 4
  %46 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %46, i32 0, i32 43
  store i32 %45, ptr %td_nstrips, align 4
  %47 = load ptr, ptr %td, align 8
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %47, i32 0, i32 42
  store i32 %45, ptr %td_stripsperimage, align 8
  %48 = load ptr, ptr %tif.addr, align 8
  %49 = load i32, ptr %rowsperstrip, align 4
  %call38 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %48, i32 noundef 278, i32 noundef %49)
  %50 = load ptr, ptr %td, align 8
  %td_stripbytecount39 = getelementptr inbounds %struct.TIFFDirectory, ptr %50, i32 0, i32 45
  %51 = load ptr, ptr %td_stripbytecount39, align 8
  call void @_TIFFfree(ptr noundef %51)
  %52 = load ptr, ptr %td, align 8
  %td_stripoffset40 = getelementptr inbounds %struct.TIFFDirectory, ptr %52, i32 0, i32 44
  %53 = load ptr, ptr %td_stripoffset40, align 8
  call void @_TIFFfree(ptr noundef %53)
  %54 = load ptr, ptr %newcounts, align 8
  %55 = load ptr, ptr %td, align 8
  %td_stripbytecount41 = getelementptr inbounds %struct.TIFFDirectory, ptr %55, i32 0, i32 45
  store ptr %54, ptr %td_stripbytecount41, align 8
  %56 = load ptr, ptr %newoffsets, align 8
  %57 = load ptr, ptr %td, align 8
  %td_stripoffset42 = getelementptr inbounds %struct.TIFFDirectory, ptr %57, i32 0, i32 44
  store ptr %56, ptr %td_stripoffset42, align 8
  br label %return

return:                                           ; preds = %for.end, %if.end25, %if.then3
  ret void
}

declare i32 @TIFFTileSize(ptr noundef) #1

declare i32 @TIFFScanlineSize(ptr noundef) #1

declare ptr @_TIFFmalloc(i32 noundef) #1

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
  %1 = load i32, ptr %tdir_count, align 4
  %cmp = icmp ule i32 %1, 2
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
  %5 = load i32, ptr %tdir_count4, align 4
  switch i32 %5, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.then3
  %6 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %tdir_offset, align 4
  %and = and i32 %7, 65535
  %conv5 = trunc i32 %and to i16
  %8 = load ptr, ptr %v.addr, align 8
  %arrayidx = getelementptr inbounds i16, ptr %8, i64 1
  store i16 %conv5, ptr %arrayidx, align 2
  br label %sw.bb6

sw.bb6:                                           ; preds = %if.then3, %sw.bb
  %9 = load ptr, ptr %dir.addr, align 8
  %tdir_offset7 = getelementptr inbounds %struct.TIFFDirEntry, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %tdir_offset7, align 4
  %shr = lshr i32 %10, 16
  %conv8 = trunc i32 %shr to i16
  %11 = load ptr, ptr %v.addr, align 8
  %arrayidx9 = getelementptr inbounds i16, ptr %11, i64 0
  store i16 %conv8, ptr %arrayidx9, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %if.then3
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load ptr, ptr %dir.addr, align 8
  %tdir_count10 = getelementptr inbounds %struct.TIFFDirEntry, ptr %12, i32 0, i32 2
  %13 = load i32, ptr %tdir_count10, align 4
  switch i32 %13, label %sw.epilog21 [
    i32 2, label %sw.bb11
    i32 1, label %sw.bb16
  ]

sw.bb11:                                          ; preds = %if.else
  %14 = load ptr, ptr %dir.addr, align 8
  %tdir_offset12 = getelementptr inbounds %struct.TIFFDirEntry, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %tdir_offset12, align 4
  %shr13 = lshr i32 %15, 16
  %conv14 = trunc i32 %shr13 to i16
  %16 = load ptr, ptr %v.addr, align 8
  %arrayidx15 = getelementptr inbounds i16, ptr %16, i64 1
  store i16 %conv14, ptr %arrayidx15, align 2
  br label %sw.bb16

sw.bb16:                                          ; preds = %if.else, %sw.bb11
  %17 = load ptr, ptr %dir.addr, align 8
  %tdir_offset17 = getelementptr inbounds %struct.TIFFDirEntry, ptr %17, i32 0, i32 3
  %18 = load i32, ptr %tdir_offset17, align 4
  %and18 = and i32 %18, 65535
  %conv19 = trunc i32 %and18 to i16
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
  %call = call i32 @TIFFFetchData(ptr noundef %20, ptr noundef %21, ptr noundef %22)
  %cmp23 = icmp ne i32 %call, 0
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
  %1 = load i32, ptr %tdir_count, align 4
  %cmp = icmp ule i32 %1, 4
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
  %5 = load i32, ptr %tdir_count4, align 4
  switch i32 %5, label %sw.epilog [
    i32 4, label %sw.bb
    i32 3, label %sw.bb6
    i32 2, label %sw.bb11
    i32 1, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.then3
  %6 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %tdir_offset, align 4
  %and = and i32 %7, 255
  %conv5 = trunc i32 %and to i16
  %8 = load ptr, ptr %v.addr, align 8
  %arrayidx = getelementptr inbounds i16, ptr %8, i64 3
  store i16 %conv5, ptr %arrayidx, align 2
  br label %sw.bb6

sw.bb6:                                           ; preds = %if.then3, %sw.bb
  %9 = load ptr, ptr %dir.addr, align 8
  %tdir_offset7 = getelementptr inbounds %struct.TIFFDirEntry, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %tdir_offset7, align 4
  %shr = lshr i32 %10, 8
  %and8 = and i32 %shr, 255
  %conv9 = trunc i32 %and8 to i16
  %11 = load ptr, ptr %v.addr, align 8
  %arrayidx10 = getelementptr inbounds i16, ptr %11, i64 2
  store i16 %conv9, ptr %arrayidx10, align 2
  br label %sw.bb11

sw.bb11:                                          ; preds = %if.then3, %sw.bb6
  %12 = load ptr, ptr %dir.addr, align 8
  %tdir_offset12 = getelementptr inbounds %struct.TIFFDirEntry, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %tdir_offset12, align 4
  %shr13 = lshr i32 %13, 16
  %and14 = and i32 %shr13, 255
  %conv15 = trunc i32 %and14 to i16
  %14 = load ptr, ptr %v.addr, align 8
  %arrayidx16 = getelementptr inbounds i16, ptr %14, i64 1
  store i16 %conv15, ptr %arrayidx16, align 2
  br label %sw.bb17

sw.bb17:                                          ; preds = %if.then3, %sw.bb11
  %15 = load ptr, ptr %dir.addr, align 8
  %tdir_offset18 = getelementptr inbounds %struct.TIFFDirEntry, ptr %15, i32 0, i32 3
  %16 = load i32, ptr %tdir_offset18, align 4
  %shr19 = lshr i32 %16, 24
  %conv20 = trunc i32 %shr19 to i16
  %17 = load ptr, ptr %v.addr, align 8
  %arrayidx21 = getelementptr inbounds i16, ptr %17, i64 0
  store i16 %conv20, ptr %arrayidx21, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %if.then3
  br label %if.end

if.else:                                          ; preds = %if.then
  %18 = load ptr, ptr %dir.addr, align 8
  %tdir_count22 = getelementptr inbounds %struct.TIFFDirEntry, ptr %18, i32 0, i32 2
  %19 = load i32, ptr %tdir_count22, align 4
  switch i32 %19, label %sw.epilog45 [
    i32 4, label %sw.bb23
    i32 3, label %sw.bb28
    i32 2, label %sw.bb34
    i32 1, label %sw.bb40
  ]

sw.bb23:                                          ; preds = %if.else
  %20 = load ptr, ptr %dir.addr, align 8
  %tdir_offset24 = getelementptr inbounds %struct.TIFFDirEntry, ptr %20, i32 0, i32 3
  %21 = load i32, ptr %tdir_offset24, align 4
  %shr25 = lshr i32 %21, 24
  %conv26 = trunc i32 %shr25 to i16
  %22 = load ptr, ptr %v.addr, align 8
  %arrayidx27 = getelementptr inbounds i16, ptr %22, i64 3
  store i16 %conv26, ptr %arrayidx27, align 2
  br label %sw.bb28

sw.bb28:                                          ; preds = %if.else, %sw.bb23
  %23 = load ptr, ptr %dir.addr, align 8
  %tdir_offset29 = getelementptr inbounds %struct.TIFFDirEntry, ptr %23, i32 0, i32 3
  %24 = load i32, ptr %tdir_offset29, align 4
  %shr30 = lshr i32 %24, 16
  %and31 = and i32 %shr30, 255
  %conv32 = trunc i32 %and31 to i16
  %25 = load ptr, ptr %v.addr, align 8
  %arrayidx33 = getelementptr inbounds i16, ptr %25, i64 2
  store i16 %conv32, ptr %arrayidx33, align 2
  br label %sw.bb34

sw.bb34:                                          ; preds = %if.else, %sw.bb28
  %26 = load ptr, ptr %dir.addr, align 8
  %tdir_offset35 = getelementptr inbounds %struct.TIFFDirEntry, ptr %26, i32 0, i32 3
  %27 = load i32, ptr %tdir_offset35, align 4
  %shr36 = lshr i32 %27, 8
  %and37 = and i32 %shr36, 255
  %conv38 = trunc i32 %and37 to i16
  %28 = load ptr, ptr %v.addr, align 8
  %arrayidx39 = getelementptr inbounds i16, ptr %28, i64 1
  store i16 %conv38, ptr %arrayidx39, align 2
  br label %sw.bb40

sw.bb40:                                          ; preds = %if.else, %sw.bb34
  %29 = load ptr, ptr %dir.addr, align 8
  %tdir_offset41 = getelementptr inbounds %struct.TIFFDirEntry, ptr %29, i32 0, i32 3
  %30 = load i32, ptr %tdir_offset41, align 4
  %and42 = and i32 %30, 255
  %conv43 = trunc i32 %and42 to i16
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
  %call = call i32 @TIFFFetchData(ptr noundef %32, ptr noundef %33, ptr noundef %34)
  %cmp47 = icmp ne i32 %call, 0
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
  %1 = load i32, ptr %tdir_count, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %tdir_offset, align 4
  %4 = load ptr, ptr %v.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 0
  store i32 %3, ptr %arrayidx, align 4
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load ptr, ptr %dir.addr, align 8
  %7 = load ptr, ptr %v.addr, align 8
  %call = call i32 @TIFFFetchData(ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %cmp1 = icmp ne i32 %call, 0
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
  %i = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  store i32 0, ptr %ok, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %tdir_count, align 4
  %3 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %3, i32 0, i32 1
  %4 = load i16, ptr %tdir_type, align 2
  %idxprom = zext i16 %4 to i64
  %arrayidx = getelementptr inbounds [0 x i32], ptr @tiffDataWidth, i64 0, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %2, %5
  %call = call ptr @CheckMalloc(ptr noundef %0, i32 noundef %mul, ptr noundef @.str.21)
  store ptr %call, ptr %l, align 8
  %6 = load ptr, ptr %l, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %tif.addr, align 8
  %8 = load ptr, ptr %dir.addr, align 8
  %9 = load ptr, ptr %l, align 8
  %call1 = call i32 @TIFFFetchData(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.end17

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %10 = load i32, ptr %i, align 4
  %11 = load ptr, ptr %dir.addr, align 8
  %tdir_count4 = getelementptr inbounds %struct.TIFFDirEntry, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %tdir_count4, align 4
  %cmp = icmp ult i32 %10, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %tif.addr, align 8
  %14 = load ptr, ptr %dir.addr, align 8
  %15 = load ptr, ptr %l, align 8
  %16 = load i32, ptr %i, align 4
  %mul5 = mul i32 2, %16
  %add = add i32 %mul5, 0
  %idxprom6 = zext i32 %add to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %15, i64 %idxprom6
  %17 = load i32, ptr %arrayidx7, align 4
  %18 = load ptr, ptr %l, align 8
  %19 = load i32, ptr %i, align 4
  %mul8 = mul i32 2, %19
  %add9 = add i32 %mul8, 1
  %idxprom10 = zext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %18, i64 %idxprom10
  %20 = load i32, ptr %arrayidx11, align 4
  %21 = load ptr, ptr %v.addr, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom12 = zext i32 %22 to i64
  %arrayidx13 = getelementptr inbounds float, ptr %21, i64 %idxprom12
  %call14 = call i32 @cvtRational(ptr noundef %13, ptr noundef %14, i32 noundef %17, i32 noundef %20, ptr noundef %arrayidx13)
  store i32 %call14, ptr %ok, align 4
  %23 = load i32, ptr %ok, align 4
  %tobool15 = icmp ne i32 %23, 0
  br i1 %tobool15, label %if.end, label %if.then16

if.then16:                                        ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, ptr %i, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %if.then16, %for.cond
  br label %if.end17

if.end17:                                         ; preds = %for.end, %if.then
  %25 = load ptr, ptr %l, align 8
  call void @_TIFFfree(ptr noundef %25)
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %entry
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
  %1 = load i32, ptr %tdir_count, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %2, i32 0, i32 3
  %3 = load float, ptr %tdir_offset, align 4
  %4 = load ptr, ptr %v.addr, align 8
  %arrayidx = getelementptr inbounds float, ptr %4, i64 0
  store float %3, ptr %arrayidx, align 4
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load ptr, ptr %dir.addr, align 8
  %7 = load ptr, ptr %v.addr, align 8
  %call = call i32 @TIFFFetchData(ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %tobool = icmp ne i32 %call, 0
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
  %call = call i32 @TIFFFetchData(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
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
define internal i32 @TIFFFetchString(ptr noundef %tif, ptr noundef %dir, ptr noundef %cp) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %l = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  %0 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %tdir_count, align 4
  %cmp = icmp ule i32 %1, 4
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %tdir_offset, align 4
  store i32 %3, ptr %l, align 4
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %tif_flags, align 8
  %and = and i32 %5, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  call void @TIFFSwabLong(ptr noundef %l)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %6 = load ptr, ptr %cp.addr, align 8
  %7 = load ptr, ptr %dir.addr, align 8
  %tdir_count2 = getelementptr inbounds %struct.TIFFDirEntry, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %tdir_count2, align 4
  call void @_TIFFmemcpy(ptr noundef %6, ptr noundef %l, i32 noundef %8)
  store i32 1, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %entry
  %9 = load ptr, ptr %tif.addr, align 8
  %10 = load ptr, ptr %dir.addr, align 8
  %11 = load ptr, ptr %cp.addr, align 8
  %call = call i32 @TIFFFetchData(ptr noundef %9, ptr noundef %10, ptr noundef %11)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.end
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
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
  %3 = load i32, ptr %tdir_offset, align 4
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 9
  %5 = load ptr, ptr %tif_typeshift, align 8
  %6 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %6, i32 0, i32 1
  %7 = load i16, ptr %tdir_type, align 2
  %idxprom = zext i16 %7 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %8 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %3, %8
  %conv2 = zext i32 %shr to i64
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_typemask = getelementptr inbounds %struct.tiff, ptr %9, i32 0, i32 10
  %10 = load ptr, ptr %tif_typemask, align 8
  %11 = load ptr, ptr %dir.addr, align 8
  %tdir_type3 = getelementptr inbounds %struct.TIFFDirEntry, ptr %11, i32 0, i32 1
  %12 = load i16, ptr %tdir_type3, align 2
  %idxprom4 = zext i16 %12 to i64
  %arrayidx5 = getelementptr inbounds i64, ptr %10, i64 %idxprom4
  %13 = load i64, ptr %arrayidx5, align 8
  %and = and i64 %conv2, %13
  br label %cond.end

cond.false:                                       ; preds = %entry
  %14 = load ptr, ptr %dir.addr, align 8
  %tdir_offset6 = getelementptr inbounds %struct.TIFFDirEntry, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %tdir_offset6, align 4
  %conv7 = zext i32 %15 to i64
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_typemask8 = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 10
  %17 = load ptr, ptr %tif_typemask8, align 8
  %18 = load ptr, ptr %dir.addr, align 8
  %tdir_type9 = getelementptr inbounds %struct.TIFFDirEntry, ptr %18, i32 0, i32 1
  %19 = load i16, ptr %tdir_type9, align 2
  %idxprom10 = zext i16 %19 to i64
  %arrayidx11 = getelementptr inbounds i64, ptr %17, i64 %idxprom10
  %20 = load i64, ptr %arrayidx11, align 8
  %and12 = and i64 %conv7, %20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %and, %cond.true ], [ %and12, %cond.false ]
  %conv13 = trunc i64 %cond to i32
  %conv14 = zext i32 %conv13 to i64
  store i64 %conv14, ptr %l, align 8
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
  %l = alloca [2 x i32], align 4
  %v = alloca float, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load ptr, ptr %dir.addr, align 8
  %arraydecay = getelementptr inbounds [2 x i32], ptr %l, i64 0, i64 0
  %call = call i32 @TIFFFetchData(ptr noundef %0, ptr noundef %1, ptr noundef %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %cond.true

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load ptr, ptr %dir.addr, align 8
  %arrayidx = getelementptr inbounds [2 x i32], ptr %l, i64 0, i64 0
  %4 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [2 x i32], ptr %l, i64 0, i64 1
  %5 = load i32, ptr %arrayidx1, align 4
  %call2 = call i32 @cvtRational(ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %v)
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
define internal i32 @cvtRational(ptr noundef %tif, ptr noundef %dir, i32 noundef %num, i32 noundef %denom, ptr noundef %rv) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %num.addr = alloca i32, align 4
  %denom.addr = alloca i32, align 4
  %rv.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i32 %num, ptr %num.addr, align 4
  store i32 %denom, ptr %denom.addr, align 4
  store ptr %rv, ptr %rv.addr, align 8
  %0 = load i32, ptr %denom.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %tif_name, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %4 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %4, i32 0, i32 0
  %5 = load i16, ptr %tdir_tag, align 4
  %conv = zext i16 %5 to i32
  %call = call ptr @_TIFFFieldWithTag(ptr noundef %3, i32 noundef %conv)
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call, i32 0, i32 7
  %6 = load ptr, ptr %field_name, align 8
  %7 = load i32, ptr %num.addr, align 4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %2, ptr noundef @.str.22, ptr noundef %6, i32 noundef %7)
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
  %10 = load i32, ptr %num.addr, align 4
  %conv5 = uitofp i32 %10 to float
  %11 = load i32, ptr %denom.addr, align 4
  %conv6 = uitofp i32 %11 to float
  %div = fdiv float %conv5, %conv6
  %12 = load ptr, ptr %rv.addr, align 8
  store float %div, ptr %12, align 4
  br label %if.end

if.else7:                                         ; preds = %if.else
  %13 = load i32, ptr %num.addr, align 4
  %conv8 = sitofp i32 %13 to float
  %14 = load i32, ptr %denom.addr, align 4
  %conv9 = sitofp i32 %14 to float
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
  %vp10 = alloca ptr, align 8
  %vp36 = alloca ptr, align 8
  %vp52 = alloca ptr, align 8
  %vp78 = alloca ptr, align 8
  %vp94 = alloca ptr, align 8
  %vp115 = alloca ptr, align 8
  %vp135 = alloca ptr, align 8
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
    i32 3, label %sw.bb26
    i32 8, label %sw.bb26
    i32 4, label %sw.bb68
    i32 9, label %sw.bb68
    i32 5, label %sw.bb110
    i32 10, label %sw.bb110
    i32 11, label %sw.bb130
    i32 12, label %sw.bb150
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
  %9 = load i32, ptr %tdir_count, align 4
  %sub = sub i32 %9, 1
  store i32 %sub, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %10 = load i32, ptr %i, align 4
  %cmp5 = icmp sge i32 %10, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %vp, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i16, ptr %11, i64 %idxprom
  %13 = load i16, ptr %arrayidx, align 2
  %conv7 = uitofp i16 %13 to double
  %14 = load ptr, ptr %v.addr, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds double, ptr %14, i64 %idxprom8
  store double %conv7, ptr %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  br label %if.end25

if.else:                                          ; preds = %if.end
  %17 = load ptr, ptr %v.addr, align 8
  store ptr %17, ptr %vp10, align 8
  %18 = load ptr, ptr %dir.addr, align 8
  %tdir_count11 = getelementptr inbounds %struct.TIFFDirEntry, ptr %18, i32 0, i32 2
  %19 = load i32, ptr %tdir_count11, align 4
  %sub12 = sub i32 %19, 1
  store i32 %sub12, ptr %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc22, %if.else
  %20 = load i32, ptr %i, align 4
  %cmp14 = icmp sge i32 %20, 0
  br i1 %cmp14, label %for.body16, label %for.end24

for.body16:                                       ; preds = %for.cond13
  %21 = load ptr, ptr %vp10, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %22 to i64
  %arrayidx18 = getelementptr inbounds i16, ptr %21, i64 %idxprom17
  %23 = load i16, ptr %arrayidx18, align 2
  %conv19 = sitofp i16 %23 to double
  %24 = load ptr, ptr %v.addr, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %25 to i64
  %arrayidx21 = getelementptr inbounds double, ptr %24, i64 %idxprom20
  store double %conv19, ptr %arrayidx21, align 8
  br label %for.inc22

for.inc22:                                        ; preds = %for.body16
  %26 = load i32, ptr %i, align 4
  %dec23 = add nsw i32 %26, -1
  store i32 %dec23, ptr %i, align 4
  br label %for.cond13, !llvm.loop !22

for.end24:                                        ; preds = %for.cond13
  br label %if.end25

if.end25:                                         ; preds = %for.end24, %for.end
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry, %entry
  %27 = load ptr, ptr %tif.addr, align 8
  %28 = load ptr, ptr %dir.addr, align 8
  %29 = load ptr, ptr %v.addr, align 8
  %call27 = call i32 @TIFFFetchShortArray(ptr noundef %27, ptr noundef %28, ptr noundef %29)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end30, label %if.then29

if.then29:                                        ; preds = %sw.bb26
  store i32 0, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %sw.bb26
  %30 = load ptr, ptr %dir.addr, align 8
  %tdir_type31 = getelementptr inbounds %struct.TIFFDirEntry, ptr %30, i32 0, i32 1
  %31 = load i16, ptr %tdir_type31, align 2
  %conv32 = zext i16 %31 to i32
  %cmp33 = icmp eq i32 %conv32, 3
  br i1 %cmp33, label %if.then35, label %if.else51

if.then35:                                        ; preds = %if.end30
  %32 = load ptr, ptr %v.addr, align 8
  store ptr %32, ptr %vp36, align 8
  %33 = load ptr, ptr %dir.addr, align 8
  %tdir_count37 = getelementptr inbounds %struct.TIFFDirEntry, ptr %33, i32 0, i32 2
  %34 = load i32, ptr %tdir_count37, align 4
  %sub38 = sub i32 %34, 1
  store i32 %sub38, ptr %i, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc48, %if.then35
  %35 = load i32, ptr %i, align 4
  %cmp40 = icmp sge i32 %35, 0
  br i1 %cmp40, label %for.body42, label %for.end50

for.body42:                                       ; preds = %for.cond39
  %36 = load ptr, ptr %vp36, align 8
  %37 = load i32, ptr %i, align 4
  %idxprom43 = sext i32 %37 to i64
  %arrayidx44 = getelementptr inbounds i16, ptr %36, i64 %idxprom43
  %38 = load i16, ptr %arrayidx44, align 2
  %conv45 = uitofp i16 %38 to double
  %39 = load ptr, ptr %v.addr, align 8
  %40 = load i32, ptr %i, align 4
  %idxprom46 = sext i32 %40 to i64
  %arrayidx47 = getelementptr inbounds double, ptr %39, i64 %idxprom46
  store double %conv45, ptr %arrayidx47, align 8
  br label %for.inc48

for.inc48:                                        ; preds = %for.body42
  %41 = load i32, ptr %i, align 4
  %dec49 = add nsw i32 %41, -1
  store i32 %dec49, ptr %i, align 4
  br label %for.cond39, !llvm.loop !23

for.end50:                                        ; preds = %for.cond39
  br label %if.end67

if.else51:                                        ; preds = %if.end30
  %42 = load ptr, ptr %v.addr, align 8
  store ptr %42, ptr %vp52, align 8
  %43 = load ptr, ptr %dir.addr, align 8
  %tdir_count53 = getelementptr inbounds %struct.TIFFDirEntry, ptr %43, i32 0, i32 2
  %44 = load i32, ptr %tdir_count53, align 4
  %sub54 = sub i32 %44, 1
  store i32 %sub54, ptr %i, align 4
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc64, %if.else51
  %45 = load i32, ptr %i, align 4
  %cmp56 = icmp sge i32 %45, 0
  br i1 %cmp56, label %for.body58, label %for.end66

for.body58:                                       ; preds = %for.cond55
  %46 = load ptr, ptr %vp52, align 8
  %47 = load i32, ptr %i, align 4
  %idxprom59 = sext i32 %47 to i64
  %arrayidx60 = getelementptr inbounds i16, ptr %46, i64 %idxprom59
  %48 = load i16, ptr %arrayidx60, align 2
  %conv61 = sitofp i16 %48 to double
  %49 = load ptr, ptr %v.addr, align 8
  %50 = load i32, ptr %i, align 4
  %idxprom62 = sext i32 %50 to i64
  %arrayidx63 = getelementptr inbounds double, ptr %49, i64 %idxprom62
  store double %conv61, ptr %arrayidx63, align 8
  br label %for.inc64

for.inc64:                                        ; preds = %for.body58
  %51 = load i32, ptr %i, align 4
  %dec65 = add nsw i32 %51, -1
  store i32 %dec65, ptr %i, align 4
  br label %for.cond55, !llvm.loop !24

for.end66:                                        ; preds = %for.cond55
  br label %if.end67

if.end67:                                         ; preds = %for.end66, %for.end50
  br label %sw.epilog

sw.bb68:                                          ; preds = %entry, %entry
  %52 = load ptr, ptr %tif.addr, align 8
  %53 = load ptr, ptr %dir.addr, align 8
  %54 = load ptr, ptr %v.addr, align 8
  %call69 = call i32 @TIFFFetchLongArray(ptr noundef %52, ptr noundef %53, ptr noundef %54)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.end72, label %if.then71

if.then71:                                        ; preds = %sw.bb68
  store i32 0, ptr %retval, align 4
  br label %return

if.end72:                                         ; preds = %sw.bb68
  %55 = load ptr, ptr %dir.addr, align 8
  %tdir_type73 = getelementptr inbounds %struct.TIFFDirEntry, ptr %55, i32 0, i32 1
  %56 = load i16, ptr %tdir_type73, align 2
  %conv74 = zext i16 %56 to i32
  %cmp75 = icmp eq i32 %conv74, 4
  br i1 %cmp75, label %if.then77, label %if.else93

if.then77:                                        ; preds = %if.end72
  %57 = load ptr, ptr %v.addr, align 8
  store ptr %57, ptr %vp78, align 8
  %58 = load ptr, ptr %dir.addr, align 8
  %tdir_count79 = getelementptr inbounds %struct.TIFFDirEntry, ptr %58, i32 0, i32 2
  %59 = load i32, ptr %tdir_count79, align 4
  %sub80 = sub i32 %59, 1
  store i32 %sub80, ptr %i, align 4
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc90, %if.then77
  %60 = load i32, ptr %i, align 4
  %cmp82 = icmp sge i32 %60, 0
  br i1 %cmp82, label %for.body84, label %for.end92

for.body84:                                       ; preds = %for.cond81
  %61 = load ptr, ptr %vp78, align 8
  %62 = load i32, ptr %i, align 4
  %idxprom85 = sext i32 %62 to i64
  %arrayidx86 = getelementptr inbounds i32, ptr %61, i64 %idxprom85
  %63 = load i32, ptr %arrayidx86, align 4
  %conv87 = uitofp i32 %63 to double
  %64 = load ptr, ptr %v.addr, align 8
  %65 = load i32, ptr %i, align 4
  %idxprom88 = sext i32 %65 to i64
  %arrayidx89 = getelementptr inbounds double, ptr %64, i64 %idxprom88
  store double %conv87, ptr %arrayidx89, align 8
  br label %for.inc90

for.inc90:                                        ; preds = %for.body84
  %66 = load i32, ptr %i, align 4
  %dec91 = add nsw i32 %66, -1
  store i32 %dec91, ptr %i, align 4
  br label %for.cond81, !llvm.loop !25

for.end92:                                        ; preds = %for.cond81
  br label %if.end109

if.else93:                                        ; preds = %if.end72
  %67 = load ptr, ptr %v.addr, align 8
  store ptr %67, ptr %vp94, align 8
  %68 = load ptr, ptr %dir.addr, align 8
  %tdir_count95 = getelementptr inbounds %struct.TIFFDirEntry, ptr %68, i32 0, i32 2
  %69 = load i32, ptr %tdir_count95, align 4
  %sub96 = sub i32 %69, 1
  store i32 %sub96, ptr %i, align 4
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc106, %if.else93
  %70 = load i32, ptr %i, align 4
  %cmp98 = icmp sge i32 %70, 0
  br i1 %cmp98, label %for.body100, label %for.end108

for.body100:                                      ; preds = %for.cond97
  %71 = load ptr, ptr %vp94, align 8
  %72 = load i32, ptr %i, align 4
  %idxprom101 = sext i32 %72 to i64
  %arrayidx102 = getelementptr inbounds i32, ptr %71, i64 %idxprom101
  %73 = load i32, ptr %arrayidx102, align 4
  %conv103 = sitofp i32 %73 to double
  %74 = load ptr, ptr %v.addr, align 8
  %75 = load i32, ptr %i, align 4
  %idxprom104 = sext i32 %75 to i64
  %arrayidx105 = getelementptr inbounds double, ptr %74, i64 %idxprom104
  store double %conv103, ptr %arrayidx105, align 8
  br label %for.inc106

for.inc106:                                       ; preds = %for.body100
  %76 = load i32, ptr %i, align 4
  %dec107 = add nsw i32 %76, -1
  store i32 %dec107, ptr %i, align 4
  br label %for.cond97, !llvm.loop !26

for.end108:                                       ; preds = %for.cond97
  br label %if.end109

if.end109:                                        ; preds = %for.end108, %for.end92
  br label %sw.epilog

sw.bb110:                                         ; preds = %entry, %entry
  %77 = load ptr, ptr %tif.addr, align 8
  %78 = load ptr, ptr %dir.addr, align 8
  %79 = load ptr, ptr %v.addr, align 8
  %call111 = call i32 @TIFFFetchRationalArray(ptr noundef %77, ptr noundef %78, ptr noundef %79)
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.end114, label %if.then113

if.then113:                                       ; preds = %sw.bb110
  store i32 0, ptr %retval, align 4
  br label %return

if.end114:                                        ; preds = %sw.bb110
  %80 = load ptr, ptr %v.addr, align 8
  store ptr %80, ptr %vp115, align 8
  %81 = load ptr, ptr %dir.addr, align 8
  %tdir_count116 = getelementptr inbounds %struct.TIFFDirEntry, ptr %81, i32 0, i32 2
  %82 = load i32, ptr %tdir_count116, align 4
  %sub117 = sub i32 %82, 1
  store i32 %sub117, ptr %i, align 4
  br label %for.cond118

for.cond118:                                      ; preds = %for.inc127, %if.end114
  %83 = load i32, ptr %i, align 4
  %cmp119 = icmp sge i32 %83, 0
  br i1 %cmp119, label %for.body121, label %for.end129

for.body121:                                      ; preds = %for.cond118
  %84 = load ptr, ptr %vp115, align 8
  %85 = load i32, ptr %i, align 4
  %idxprom122 = sext i32 %85 to i64
  %arrayidx123 = getelementptr inbounds float, ptr %84, i64 %idxprom122
  %86 = load float, ptr %arrayidx123, align 4
  %conv124 = fpext float %86 to double
  %87 = load ptr, ptr %v.addr, align 8
  %88 = load i32, ptr %i, align 4
  %idxprom125 = sext i32 %88 to i64
  %arrayidx126 = getelementptr inbounds double, ptr %87, i64 %idxprom125
  store double %conv124, ptr %arrayidx126, align 8
  br label %for.inc127

for.inc127:                                       ; preds = %for.body121
  %89 = load i32, ptr %i, align 4
  %dec128 = add nsw i32 %89, -1
  store i32 %dec128, ptr %i, align 4
  br label %for.cond118, !llvm.loop !27

for.end129:                                       ; preds = %for.cond118
  br label %sw.epilog

sw.bb130:                                         ; preds = %entry
  %90 = load ptr, ptr %tif.addr, align 8
  %91 = load ptr, ptr %dir.addr, align 8
  %92 = load ptr, ptr %v.addr, align 8
  %call131 = call i32 @TIFFFetchFloatArray(ptr noundef %90, ptr noundef %91, ptr noundef %92)
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %if.end134, label %if.then133

if.then133:                                       ; preds = %sw.bb130
  store i32 0, ptr %retval, align 4
  br label %return

if.end134:                                        ; preds = %sw.bb130
  %93 = load ptr, ptr %v.addr, align 8
  store ptr %93, ptr %vp135, align 8
  %94 = load ptr, ptr %dir.addr, align 8
  %tdir_count136 = getelementptr inbounds %struct.TIFFDirEntry, ptr %94, i32 0, i32 2
  %95 = load i32, ptr %tdir_count136, align 4
  %sub137 = sub i32 %95, 1
  store i32 %sub137, ptr %i, align 4
  br label %for.cond138

for.cond138:                                      ; preds = %for.inc147, %if.end134
  %96 = load i32, ptr %i, align 4
  %cmp139 = icmp sge i32 %96, 0
  br i1 %cmp139, label %for.body141, label %for.end149

for.body141:                                      ; preds = %for.cond138
  %97 = load ptr, ptr %vp135, align 8
  %98 = load i32, ptr %i, align 4
  %idxprom142 = sext i32 %98 to i64
  %arrayidx143 = getelementptr inbounds float, ptr %97, i64 %idxprom142
  %99 = load float, ptr %arrayidx143, align 4
  %conv144 = fpext float %99 to double
  %100 = load ptr, ptr %v.addr, align 8
  %101 = load i32, ptr %i, align 4
  %idxprom145 = sext i32 %101 to i64
  %arrayidx146 = getelementptr inbounds double, ptr %100, i64 %idxprom145
  store double %conv144, ptr %arrayidx146, align 8
  br label %for.inc147

for.inc147:                                       ; preds = %for.body141
  %102 = load i32, ptr %i, align 4
  %dec148 = add nsw i32 %102, -1
  store i32 %dec148, ptr %i, align 4
  br label %for.cond138, !llvm.loop !28

for.end149:                                       ; preds = %for.cond138
  br label %sw.epilog

sw.bb150:                                         ; preds = %entry
  %103 = load ptr, ptr %tif.addr, align 8
  %104 = load ptr, ptr %dir.addr, align 8
  %105 = load ptr, ptr %v.addr, align 8
  %call151 = call i32 @TIFFFetchDoubleArray(ptr noundef %103, ptr noundef %104, ptr noundef %105)
  store i32 %call151, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %106 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %106, i32 0, i32 0
  %107 = load ptr, ptr %tif_name, align 8
  %108 = load ptr, ptr %tif.addr, align 8
  %109 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %109, i32 0, i32 0
  %110 = load i16, ptr %tdir_tag, align 4
  %conv152 = zext i16 %110 to i32
  %call153 = call ptr @_TIFFFieldWithTag(ptr noundef %108, i32 noundef %conv152)
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call153, i32 0, i32 7
  %111 = load ptr, ptr %field_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %107, ptr noundef @.str.24, ptr noundef %111)
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %for.end149, %for.end129, %if.end109, %if.end67, %if.end25
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %sw.bb150, %if.then133, %if.then113, %if.then71, %if.then29, %if.then
  %112 = load i32, ptr %retval, align 4
  ret i32 %112
}

declare i32 @TIFFVTileSize(ptr noundef, i32 noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_dirread_0(ptr noundef %tif, ptr noundef %tagname)  alwaysinline#0 {
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

define internal void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_dirread_1(ptr noundef %tif, ptr noundef %tagname)  alwaysinline#0 {
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

define internal void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_dirread_2(ptr noundef %tif, ptr noundef %tagname)  alwaysinline#0 {
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

define internal void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_dirread_3(ptr noundef %tif, ptr noundef %tagname)  alwaysinline#0 {
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

define internal void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_dirread_4(ptr noundef %tif, ptr noundef %tagname)  alwaysinline#0 {
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
