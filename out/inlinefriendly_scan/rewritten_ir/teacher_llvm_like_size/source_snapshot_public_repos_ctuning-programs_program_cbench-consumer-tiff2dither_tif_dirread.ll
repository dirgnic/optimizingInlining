; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_llvm_like_size/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-tiff2dither_tif_dirread.prepared.ll'
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
  store ptr %tif, ptr %tif.addr, align 8
  store i32 0, ptr %diroutoforderwarning, align 4
  %tif_nextdiroff = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 5
  %0 = load i32, ptr %tif_nextdiroff, align 8
  %tif_diroff = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 4
  store i32 %0, ptr %tif_diroff, align 4
  %cmp = icmp eq i32 %0, 0
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
  %4 = load i16, ptr %tif_curdir, align 4
  %inc = add i16 %4, 1
  store i16 %inc, ptr %tif_curdir, align 4
  store i32 0, ptr %nextdiroff, align 4
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %tif_flags, align 8
  %and = and i32 %5, 2048
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 51
  %7 = load ptr, ptr %tif_seekproc, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 48
  %8 = load ptr, ptr %tif_clientdata, align 8
  %tif_diroff4 = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 4
  %9 = load i32, ptr %tif_diroff4, align 4
  %call = call i32 %7(ptr noundef %8, i32 noundef %9, i32 noundef 0) #2
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_diroff5 = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 4
  %11 = load i32, ptr %tif_diroff5, align 4
  %cmp6 = icmp eq i32 %call, %11
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
  %call10 = call i32 %15(ptr noundef %16, ptr noundef nonnull %dircount, i32 noundef 2) #2
  %cmp11 = icmp eq i32 %call10, 2
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
  %20 = load i32, ptr %tif_flags15, align 8
  %and16 = and i32 %20, 128
  %tobool.not = icmp eq i32 %and16, 0
  br i1 %tobool.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end14
  call void @TIFFSwabShort(ptr noundef nonnull %dircount) #2
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14
  %21 = load ptr, ptr %tif.addr, align 8
  %22 = load i16, ptr %dircount, align 2
  %conv = zext i16 %22 to i32
  %mul = mul nuw nsw i32 %conv, 12
  %call20 = call ptr @CheckMalloc(ptr noundef %21, i32 noundef %mul, ptr noundef nonnull @.str.2)
  store ptr %call20, ptr %dir, align 8
  %cmp21 = icmp eq ptr %call20, null
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end18
  store i32 0, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end18
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_readproc25 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 49
  %24 = load ptr, ptr %tif_readproc25, align 8
  %tif_clientdata26 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 48
  %25 = load ptr, ptr %tif_clientdata26, align 8
  %26 = load ptr, ptr %dir, align 8
  %27 = load i16, ptr %dircount, align 2
  %conv28 = zext i16 %27 to i32
  %mul29 = mul nuw nsw i32 %conv28, 12
  %call31 = call i32 %24(ptr noundef %25, ptr noundef %26, i32 noundef %mul29) #2
  %conv32 = sext i32 %call31 to i64
  %28 = load i16, ptr %dircount, align 2
  %conv34 = zext i16 %28 to i64
  %mul35 = mul nuw nsw i64 %conv34, 12
  %cmp36 = icmp eq i64 %mul35, %conv32
  br i1 %cmp36, label %if.end40, label %if.then38

if.then38:                                        ; preds = %if.end24
  %29 = load ptr, ptr %tif.addr, align 8
  %30 = load ptr, ptr %29, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %30, ptr noundef nonnull @.str.3) #2
  br label %bad

if.end40:                                         ; preds = %if.end24
  %31 = load ptr, ptr %tif.addr, align 8
  %tif_readproc41 = getelementptr inbounds %struct.tiff, ptr %31, i64 0, i32 49
  %32 = load ptr, ptr %tif_readproc41, align 8
  %tif_clientdata42 = getelementptr inbounds %struct.tiff, ptr %31, i64 0, i32 48
  %33 = load ptr, ptr %tif_clientdata42, align 8
  %call43 = call i32 %32(ptr noundef %33, ptr noundef nonnull %nextdiroff, i32 noundef 4) #2
  br label %if.end105

if.else:                                          ; preds = %if.end
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_diroff46 = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 4
  %35 = load i32, ptr %tif_diroff46, align 4
  store i32 %35, ptr %off, align 4
  %add = add i32 %35, 2
  %tif_size = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 45
  %36 = load i32, ptr %tif_size, align 8
  %cmp49 = icmp sgt i32 %add, %36
  br i1 %cmp49, label %if.then51, label %if.else53

if.then51:                                        ; preds = %if.else
  %37 = load ptr, ptr %tif.addr, align 8
  %38 = load ptr, ptr %37, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %38, ptr noundef nonnull @.str.1) #2
  store i32 0, ptr %retval, align 4
  br label %return

if.else53:                                        ; preds = %if.else
  %39 = load ptr, ptr %tif.addr, align 8
  %tif_base = getelementptr inbounds %struct.tiff, ptr %39, i64 0, i32 44
  %40 = load ptr, ptr %tif_base, align 8
  %41 = load i32, ptr %off, align 4
  %idx.ext = sext i32 %41 to i64
  %add.ptr = getelementptr inbounds i8, ptr %40, i64 %idx.ext
  call void @_TIFFmemcpy(ptr noundef nonnull %dircount, ptr noundef %add.ptr, i32 noundef 2) #2
  %42 = load i32, ptr %off, align 4
  %add56 = add i32 %42, 2
  store i32 %add56, ptr %off, align 4
  %43 = load ptr, ptr %tif.addr, align 8
  %tif_flags58 = getelementptr inbounds %struct.tiff, ptr %43, i64 0, i32 3
  %44 = load i32, ptr %tif_flags58, align 8
  %and59 = and i32 %44, 128
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end62, label %if.then61

if.then61:                                        ; preds = %if.else53
  call void @TIFFSwabShort(ptr noundef nonnull %dircount) #2
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.else53
  %45 = load ptr, ptr %tif.addr, align 8
  %46 = load i16, ptr %dircount, align 2
  %conv63 = zext i16 %46 to i32
  %mul64 = mul nuw nsw i32 %conv63, 12
  %call66 = call ptr @CheckMalloc(ptr noundef %45, i32 noundef %mul64, ptr noundef nonnull @.str.2)
  store ptr %call66, ptr %dir, align 8
  %cmp67 = icmp eq ptr %call66, null
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end62
  store i32 0, ptr %retval, align 4
  br label %return

if.end70:                                         ; preds = %if.end62
  %47 = load i32, ptr %off, align 4
  %48 = load i16, ptr %dircount, align 2
  %conv72 = zext i16 %48 to i32
  %mul73 = mul nuw nsw i32 %conv72, 12
  %add74 = add i32 %mul73, %47
  %49 = load ptr, ptr %tif.addr, align 8
  %tif_size76 = getelementptr inbounds %struct.tiff, ptr %49, i64 0, i32 45
  %50 = load i32, ptr %tif_size76, align 8
  %cmp77 = icmp sgt i32 %add74, %50
  br i1 %cmp77, label %if.then79, label %if.else81

if.then79:                                        ; preds = %if.end70
  %51 = load ptr, ptr %tif.addr, align 8
  %52 = load ptr, ptr %51, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %52, ptr noundef nonnull @.str.3) #2
  br label %bad

if.else81:                                        ; preds = %if.end70
  %53 = load ptr, ptr %dir, align 8
  %54 = load ptr, ptr %tif.addr, align 8
  %tif_base82 = getelementptr inbounds %struct.tiff, ptr %54, i64 0, i32 44
  %55 = load ptr, ptr %tif_base82, align 8
  %56 = load i32, ptr %off, align 4
  %idx.ext83 = sext i32 %56 to i64
  %add.ptr84 = getelementptr inbounds i8, ptr %55, i64 %idx.ext83
  %57 = load i16, ptr %dircount, align 2
  %conv85 = zext i16 %57 to i32
  %mul86 = mul nuw nsw i32 %conv85, 12
  call void @_TIFFmemcpy(ptr noundef %53, ptr noundef %add.ptr84, i32 noundef %mul86) #2
  %58 = load i16, ptr %dircount, align 2
  %conv89 = zext i16 %58 to i32
  %mul90 = mul nuw nsw i32 %conv89, 12
  %59 = load i32, ptr %off, align 4
  %add92 = add i32 %mul90, %59
  store i32 %add92, ptr %off, align 4
  %add95 = add i32 %add92, 4
  %60 = load ptr, ptr %tif.addr, align 8
  %tif_size97 = getelementptr inbounds %struct.tiff, ptr %60, i64 0, i32 45
  %61 = load i32, ptr %tif_size97, align 8
  %cmp98.not = icmp sgt i32 %add95, %61
  br i1 %cmp98.not, label %if.end105, label %if.then100

if.then100:                                       ; preds = %if.else81
  %62 = load ptr, ptr %tif.addr, align 8
  %tif_base101 = getelementptr inbounds %struct.tiff, ptr %62, i64 0, i32 44
  %63 = load ptr, ptr %tif_base101, align 8
  %64 = load i32, ptr %off, align 4
  %idx.ext102 = sext i32 %64 to i64
  %add.ptr103 = getelementptr inbounds i8, ptr %63, i64 %idx.ext102
  call void @_TIFFmemcpy(ptr noundef nonnull %nextdiroff, ptr noundef %add.ptr103, i32 noundef 4) #2
  br label %if.end105

if.end105:                                        ; preds = %if.else81, %if.then100, %if.end40
  %65 = load ptr, ptr %tif.addr, align 8
  %tif_flags106 = getelementptr inbounds %struct.tiff, ptr %65, i64 0, i32 3
  %66 = load i32, ptr %tif_flags106, align 8
  %and107 = and i32 %66, 128
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.end110, label %if.then109

if.then109:                                       ; preds = %if.end105
  call void @TIFFSwabLong(ptr noundef nonnull %nextdiroff) #2
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %if.end105
  %67 = load i32, ptr %nextdiroff, align 4
  %68 = load ptr, ptr %tif.addr, align 8
  %tif_nextdiroff111 = getelementptr inbounds %struct.tiff, ptr %68, i64 0, i32 5
  store i32 %67, ptr %tif_nextdiroff111, align 8
  %tif_flags112 = getelementptr inbounds %struct.tiff, ptr %68, i64 0, i32 3
  %69 = load i32, ptr %tif_flags112, align 8
  %and113 = and i32 %69, -65
  store i32 %and113, ptr %tif_flags112, align 8
  %70 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %70, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  call void @TIFFFreeDirectory(ptr noundef %70) #2
  %71 = load ptr, ptr %tif.addr, align 8
  %call114 = call i32 @TIFFDefaultDirectory(ptr noundef %71) #2
  %72 = load ptr, ptr %tif.addr, align 8
  %call115 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %72, i32 noundef 284, i32 noundef 1) #2
  %73 = load ptr, ptr %dir, align 8
  store ptr %73, ptr %dp, align 8
  %74 = load i16, ptr %dircount, align 2
  %conv116 = zext i16 %74 to i32
  store i32 %conv116, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end110
  %75 = load i32, ptr %n, align 4
  %cmp117 = icmp sgt i32 %75, 0
  br i1 %cmp117, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %76 = load ptr, ptr %tif.addr, align 8
  %tif_flags119 = getelementptr inbounds %struct.tiff, ptr %76, i64 0, i32 3
  %77 = load i32, ptr %tif_flags119, align 8
  %and120 = and i32 %77, 128
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.end123, label %if.then122

if.then122:                                       ; preds = %for.body
  %78 = load ptr, ptr %dp, align 8
  call void @TIFFSwabArrayOfShort(ptr noundef %78, i64 noundef 2) #2
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %78, i64 0, i32 2
  call void @TIFFSwabArrayOfLong(ptr noundef nonnull %tdir_count, i64 noundef 2) #2
  br label %if.end123

if.end123:                                        ; preds = %if.then122, %for.body
  %79 = load ptr, ptr %dp, align 8
  %80 = load i16, ptr %79, align 4
  %cmp126 = icmp eq i16 %80, 277
  br i1 %cmp126, label %if.then128, label %for.inc

if.then128:                                       ; preds = %if.end123
  %81 = load ptr, ptr %tif.addr, align 8
  %82 = load ptr, ptr %dp, align 8
  %call129 = call i32 @TIFFFetchNormalTag(ptr noundef %81, ptr noundef %82)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %bad, label %if.end132

if.end132:                                        ; preds = %if.then128
  %83 = load ptr, ptr %dp, align 8
  store i16 0, ptr %83, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end123, %if.end132
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
  %conv135 = zext i16 %87 to i32
  store i32 %conv135, ptr %n, align 4
  br label %for.cond136

for.cond136:                                      ; preds = %for.inc317, %for.end
  %88 = load i32, ptr %n, align 4
  %cmp137 = icmp sgt i32 %88, 0
  br i1 %cmp137, label %for.body139, label %for.end320

for.body139:                                      ; preds = %for.cond136
  %89 = load ptr, ptr %dp, align 8
  %90 = load i16, ptr %89, align 4
  %conv141 = zext i16 %90 to i32
  %call142 = call i32 @TIFFReassignTagToIgnore(i32 noundef 1, i32 noundef %conv141) #2
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.end146, label %if.then144

if.then144:                                       ; preds = %for.body139
  %91 = load ptr, ptr %dp, align 8
  store i16 0, ptr %91, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then144, %for.body139
  %92 = load ptr, ptr %dp, align 8
  %93 = load i16, ptr %92, align 4
  %cmp149 = icmp eq i16 %93, 0
  br i1 %cmp149, label %for.inc317, label %if.end152

if.end152:                                        ; preds = %if.end146
  %94 = load ptr, ptr %dp, align 8
  %95 = load i16, ptr %94, align 4
  %conv154 = zext i16 %95 to i32
  %96 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo = getelementptr inbounds %struct.tiff, ptr %96, i64 0, i32 55
  %97 = load ptr, ptr %tif_fieldinfo, align 8
  %98 = load i32, ptr %fix, align 4
  %idxprom = sext i32 %98 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %97, i64 %idxprom
  %99 = load ptr, ptr %arrayidx, align 8
  %100 = load i32, ptr %99, align 8
  %cmp155 = icmp ugt i32 %100, %conv154
  br i1 %cmp155, label %if.then157, label %if.end162

if.then157:                                       ; preds = %if.end152
  %101 = load i32, ptr %diroutoforderwarning, align 4
  %tobool158.not = icmp eq i32 %101, 0
  br i1 %tobool158.not, label %if.then159, label %if.end161

if.then159:                                       ; preds = %if.then157
  %102 = load ptr, ptr %tif.addr, align 8
  %103 = load ptr, ptr %102, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %103, ptr noundef nonnull @.str.4) #2
  store i32 1, ptr %diroutoforderwarning, align 4
  br label %if.end161

if.end161:                                        ; preds = %if.then159, %if.then157
  store i32 0, ptr %fix, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %if.end152
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end162
  %104 = load i32, ptr %fix, align 4
  %105 = load ptr, ptr %tif.addr, align 8
  %tif_nfields = getelementptr inbounds %struct.tiff, ptr %105, i64 0, i32 56
  %106 = load i32, ptr %tif_nfields, align 8
  %cmp163 = icmp slt i32 %104, %106
  br i1 %cmp163, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond
  %107 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo165 = getelementptr inbounds %struct.tiff, ptr %107, i64 0, i32 55
  %108 = load ptr, ptr %tif_fieldinfo165, align 8
  %109 = load i32, ptr %fix, align 4
  %idxprom166 = sext i32 %109 to i64
  %arrayidx167 = getelementptr inbounds ptr, ptr %108, i64 %idxprom166
  %110 = load ptr, ptr %arrayidx167, align 8
  %111 = load i32, ptr %110, align 8
  %112 = load ptr, ptr %dp, align 8
  %113 = load i16, ptr %112, align 4
  %conv170 = zext i16 %113 to i32
  %cmp171 = icmp ult i32 %111, %conv170
  br i1 %cmp171, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %114 = load i32, ptr %fix, align 4
  %inc173 = add nsw i32 %114, 1
  store i32 %inc173, ptr %fix, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond, %land.rhs
  %115 = load i32, ptr %fix, align 4
  %116 = load ptr, ptr %tif.addr, align 8
  %tif_nfields174 = getelementptr inbounds %struct.tiff, ptr %116, i64 0, i32 56
  %117 = load i32, ptr %tif_nfields174, align 8
  %cmp175 = icmp eq i32 %115, %117
  br i1 %cmp175, label %if.then185, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %118 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo177 = getelementptr inbounds %struct.tiff, ptr %118, i64 0, i32 55
  %119 = load ptr, ptr %tif_fieldinfo177, align 8
  %120 = load i32, ptr %fix, align 4
  %idxprom178 = sext i32 %120 to i64
  %arrayidx179 = getelementptr inbounds ptr, ptr %119, i64 %idxprom178
  %121 = load ptr, ptr %arrayidx179, align 8
  %122 = load i32, ptr %121, align 8
  %123 = load ptr, ptr %dp, align 8
  %124 = load i16, ptr %123, align 4
  %conv182 = zext i16 %124 to i32
  %cmp183.not = icmp eq i32 %122, %conv182
  br i1 %cmp183.not, label %if.end192, label %if.then185

if.then185:                                       ; preds = %lor.lhs.false, %while.end
  %125 = load ptr, ptr %tif.addr, align 8
  %126 = load ptr, ptr %125, align 8
  %127 = load ptr, ptr %dp, align 8
  %128 = load i16, ptr %127, align 4
  %conv188 = zext i16 %128 to i32
  %conv190 = zext i16 %128 to i32
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %126, ptr noundef nonnull @.str.5, i32 noundef %conv188, i32 noundef %conv190) #2
  store i16 0, ptr %127, align 4
  store i32 0, ptr %fix, align 4
  br label %for.inc317

if.end192:                                        ; preds = %lor.lhs.false
  %129 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo193 = getelementptr inbounds %struct.tiff, ptr %129, i64 0, i32 55
  %130 = load ptr, ptr %tif_fieldinfo193, align 8
  %131 = load i32, ptr %fix, align 4
  %idxprom194 = sext i32 %131 to i64
  %arrayidx195 = getelementptr inbounds ptr, ptr %130, i64 %idxprom194
  %132 = load ptr, ptr %arrayidx195, align 8
  %field_bit = getelementptr inbounds %struct.TIFFFieldInfo, ptr %132, i64 0, i32 4
  %133 = load i16, ptr %field_bit, align 4
  %cmp197 = icmp eq i16 %133, 0
  br i1 %cmp197, label %ignore, label %if.end201

ignore:                                           ; preds = %cond.end, %if.end192, %if.then228
  %134 = load ptr, ptr %dp, align 8
  store i16 0, ptr %134, align 4
  br label %for.inc317

if.end201:                                        ; preds = %if.end192
  %135 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo202 = getelementptr inbounds %struct.tiff, ptr %135, i64 0, i32 55
  %136 = load ptr, ptr %tif_fieldinfo202, align 8
  %137 = load i32, ptr %fix, align 4
  %idxprom203 = sext i32 %137 to i64
  %arrayidx204 = getelementptr inbounds ptr, ptr %136, i64 %idxprom203
  %138 = load ptr, ptr %arrayidx204, align 8
  store ptr %138, ptr %fip, align 8
  br label %while.cond205

while.cond205:                                    ; preds = %lor.lhs.false222, %if.end201
  %139 = load ptr, ptr %dp, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %139, i64 0, i32 1
  %140 = load i16, ptr %tdir_type, align 2
  %141 = load ptr, ptr %fip, align 8
  %field_type = getelementptr inbounds %struct.TIFFFieldInfo, ptr %141, i64 0, i32 3
  %142 = load i32, ptr %field_type, align 8
  %143 = trunc i32 %142 to i16
  %cmp209.not = icmp eq i16 %140, %143
  br i1 %cmp209.not, label %while.end234, label %while.body211

while.body211:                                    ; preds = %while.cond205
  %144 = load ptr, ptr %fip, align 8
  %field_type212 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %144, i64 0, i32 3
  %145 = load i32, ptr %field_type212, align 8
  %cmp213 = icmp eq i32 %145, 0
  br i1 %cmp213, label %while.end234, label %if.end216

if.end216:                                        ; preds = %while.body211
  %146 = load ptr, ptr %fip, align 8
  %incdec.ptr217 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %146, i64 1
  store ptr %incdec.ptr217, ptr %fip, align 8
  %147 = load i32, ptr %fix, align 4
  %inc218 = add nsw i32 %147, 1
  store i32 %inc218, ptr %fix, align 4
  %148 = load ptr, ptr %tif.addr, align 8
  %tif_nfields219 = getelementptr inbounds %struct.tiff, ptr %148, i64 0, i32 56
  %149 = load i32, ptr %tif_nfields219, align 8
  %cmp220 = icmp eq i32 %inc218, %149
  br i1 %cmp220, label %if.then228, label %lor.lhs.false222

lor.lhs.false222:                                 ; preds = %if.end216
  %150 = load ptr, ptr %fip, align 8
  %151 = load i32, ptr %150, align 8
  %152 = load ptr, ptr %dp, align 8
  %153 = load i16, ptr %152, align 4
  %conv225 = zext i16 %153 to i32
  %cmp226.not = icmp eq i32 %151, %conv225
  br i1 %cmp226.not, label %while.cond205, label %if.then228, !llvm.loop !9

if.then228:                                       ; preds = %lor.lhs.false222, %if.end216
  %154 = load ptr, ptr %tif.addr, align 8
  %155 = load ptr, ptr %154, align 8
  %156 = load ptr, ptr %dp, align 8
  %tdir_type230 = getelementptr inbounds %struct.TIFFDirEntry, ptr %156, i64 0, i32 1
  %157 = load i16, ptr %tdir_type230, align 2
  %conv231 = zext i16 %157 to i32
  %158 = load ptr, ptr %fip, align 8
  %field_name = getelementptr %struct.TIFFFieldInfo, ptr %158, i64 -1, i32 7
  %159 = load ptr, ptr %field_name, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %155, ptr noundef nonnull @.str.6, i32 noundef %conv231, ptr noundef %159) #2
  br label %ignore

while.end234:                                     ; preds = %while.body211, %while.cond205
  %160 = load ptr, ptr %fip, align 8
  %field_readcount = getelementptr inbounds %struct.TIFFFieldInfo, ptr %160, i64 0, i32 1
  %161 = load i16, ptr %field_readcount, align 4
  %cmp236.not = icmp eq i16 %161, -1
  br i1 %cmp236.not, label %if.end250, label %if.then238

if.then238:                                       ; preds = %while.end234
  %162 = load ptr, ptr %fip, align 8
  %field_readcount239 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %162, i64 0, i32 1
  %163 = load i16, ptr %field_readcount239, align 4
  %cmp241 = icmp eq i16 %163, -2
  br i1 %cmp241, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then238
  %164 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %164, i64 0, i32 15
  %165 = load i16, ptr %td_samplesperpixel, align 2
  %conv243 = zext i16 %165 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then238
  %166 = load ptr, ptr %fip, align 8
  %field_readcount244 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %166, i64 0, i32 1
  %167 = load i16, ptr %field_readcount244, align 4
  %conv245 = sext i16 %167 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv243, %cond.true ], [ %conv245, %cond.false ]
  %168 = load ptr, ptr %tif.addr, align 8
  %169 = load ptr, ptr %dp, align 8
  %call246 = call i32 @CheckDirCount(ptr noundef %168, ptr noundef %169, i32 noundef %cond)
  %tobool247.not = icmp eq i32 %call246, 0
  br i1 %tobool247.not, label %ignore, label %if.end250

if.end250:                                        ; preds = %cond.end, %while.end234
  %170 = load ptr, ptr %dp, align 8
  %171 = load i16, ptr %170, align 4
  switch i16 %171, label %for.inc317 [
    i16 259, label %sw.bb
    i16 273, label %sw.bb299
    i16 279, label %sw.bb299
    i16 324, label %sw.bb299
    i16 325, label %sw.bb299
    i16 256, label %sw.bb308
    i16 257, label %sw.bb308
    i16 -32539, label %sw.bb308
    i16 323, label %sw.bb308
    i16 322, label %sw.bb308
    i16 -32538, label %sw.bb308
    i16 284, label %sw.bb308
    i16 278, label %sw.bb308
    i16 338, label %sw.bb314
  ]

sw.bb:                                            ; preds = %if.end250
  %172 = load ptr, ptr %dp, align 8
  %tdir_count253 = getelementptr inbounds %struct.TIFFDirEntry, ptr %172, i64 0, i32 2
  %173 = load i32, ptr %tdir_count253, align 4
  %cmp254 = icmp eq i32 %173, 1
  br i1 %cmp254, label %if.then256, label %if.end288

if.then256:                                       ; preds = %sw.bb
  %174 = load ptr, ptr %tif.addr, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %174, i64 0, i32 7
  %175 = load i16, ptr %tif_header, align 8
  %cmp258 = icmp eq i16 %175, 19789
  br i1 %cmp258, label %cond.true260, label %cond.false269

cond.true260:                                     ; preds = %if.then256
  %176 = load ptr, ptr %dp, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %176, i64 0, i32 3
  %177 = load i32, ptr %tdir_offset, align 4
  %178 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift = getelementptr inbounds %struct.tiff, ptr %178, i64 0, i32 9
  %179 = load ptr, ptr %tif_typeshift, align 8
  %tdir_type261 = getelementptr inbounds %struct.TIFFDirEntry, ptr %176, i64 0, i32 1
  %180 = load i16, ptr %tdir_type261, align 2
  %idxprom262 = zext i16 %180 to i64
  %arrayidx263 = getelementptr inbounds i32, ptr %179, i64 %idxprom262
  %181 = load i32, ptr %arrayidx263, align 4
  %shr = lshr i32 %177, %181
  %conv264 = zext i32 %shr to i64
  %182 = load ptr, ptr %tif.addr, align 8
  %tif_typemask = getelementptr inbounds %struct.tiff, ptr %182, i64 0, i32 10
  %183 = load ptr, ptr %tif_typemask, align 8
  %184 = load ptr, ptr %dp, align 8
  %tdir_type265 = getelementptr inbounds %struct.TIFFDirEntry, ptr %184, i64 0, i32 1
  %185 = load i16, ptr %tdir_type265, align 2
  %idxprom266 = zext i16 %185 to i64
  %arrayidx267 = getelementptr inbounds i64, ptr %183, i64 %idxprom266
  %186 = load i64, ptr %arrayidx267, align 8
  %and268 = and i64 %186, %conv264
  br label %cond.end277

cond.false269:                                    ; preds = %if.then256
  %187 = load ptr, ptr %dp, align 8
  %tdir_offset270 = getelementptr inbounds %struct.TIFFDirEntry, ptr %187, i64 0, i32 3
  %188 = load i32, ptr %tdir_offset270, align 4
  %conv271 = zext i32 %188 to i64
  %189 = load ptr, ptr %tif.addr, align 8
  %tif_typemask272 = getelementptr inbounds %struct.tiff, ptr %189, i64 0, i32 10
  %190 = load ptr, ptr %tif_typemask272, align 8
  %191 = load ptr, ptr %dp, align 8
  %tdir_type273 = getelementptr inbounds %struct.TIFFDirEntry, ptr %191, i64 0, i32 1
  %192 = load i16, ptr %tdir_type273, align 2
  %idxprom274 = zext i16 %192 to i64
  %arrayidx275 = getelementptr inbounds i64, ptr %190, i64 %idxprom274
  %193 = load i64, ptr %arrayidx275, align 8
  %and276 = and i64 %193, %conv271
  br label %cond.end277

cond.end277:                                      ; preds = %cond.false269, %cond.true260
  %cond278 = phi i64 [ %and268, %cond.true260 ], [ %and276, %cond.false269 ]
  %conv280 = and i64 %cond278, 4294967295
  store i64 %conv280, ptr %v, align 8
  %194 = load ptr, ptr %tif.addr, align 8
  %195 = load ptr, ptr %dp, align 8
  %196 = load i16, ptr %195, align 4
  %conv282 = zext i16 %196 to i32
  %conv283 = trunc i64 %cond278 to i32
  %call284 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %194, i32 noundef %conv282, i32 noundef %conv283) #2
  %tobool285.not = icmp eq i32 %call284, 0
  br i1 %tobool285.not, label %bad, label %for.inc317

if.end288:                                        ; preds = %sw.bb
  %197 = load ptr, ptr %tif.addr, align 8
  %198 = load ptr, ptr %dp, align 8
  %call289 = call i32 @TIFFFetchPerSampleShorts(ptr noundef %197, ptr noundef %198, ptr noundef nonnull %iv)
  %tobool290.not = icmp eq i32 %call289, 0
  br i1 %tobool290.not, label %bad, label %lor.lhs.false291

lor.lhs.false291:                                 ; preds = %if.end288
  %199 = load ptr, ptr %tif.addr, align 8
  %200 = load ptr, ptr %dp, align 8
  %201 = load i16, ptr %200, align 4
  %conv293 = zext i16 %201 to i32
  %202 = load i32, ptr %iv, align 4
  %call294 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %199, i32 noundef %conv293, i32 noundef %202) #2
  %tobool295.not = icmp eq i32 %call294, 0
  br i1 %tobool295.not, label %bad, label %if.end297

if.end297:                                        ; preds = %lor.lhs.false291
  %203 = load ptr, ptr %dp, align 8
  store i16 0, ptr %203, align 4
  br label %for.inc317

sw.bb299:                                         ; preds = %if.end250, %if.end250, %if.end250, %if.end250
  %204 = load ptr, ptr %fip, align 8
  %field_bit300 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %204, i64 0, i32 4
  %205 = load i16, ptr %field_bit300, align 4
  %206 = and i16 %205, 31
  %sh_prom = zext i16 %206 to i64
  %shl = shl i64 1, %sh_prom
  %207 = load ptr, ptr %tif.addr, align 8
  %tif_dir303 = getelementptr inbounds %struct.tiff, ptr %207, i64 0, i32 6
  %208 = load ptr, ptr %fip, align 8
  %field_bit304 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %208, i64 0, i32 4
  %209 = load i16, ptr %field_bit304, align 4
  %210 = lshr i16 %209, 5
  %idxprom306 = zext i16 %210 to i64
  %arrayidx307 = getelementptr inbounds [3 x i64], ptr %tif_dir303, i64 0, i64 %idxprom306
  %211 = load i64, ptr %arrayidx307, align 8
  %or = or i64 %211, %shl
  store i64 %or, ptr %arrayidx307, align 8
  br label %for.inc317

sw.bb308:                                         ; preds = %if.end250, %if.end250, %if.end250, %if.end250, %if.end250, %if.end250, %if.end250, %if.end250
  %212 = load ptr, ptr %tif.addr, align 8
  %213 = load ptr, ptr %dp, align 8
  %call309 = call i32 @TIFFFetchNormalTag(ptr noundef %212, ptr noundef %213)
  %tobool310.not = icmp eq i32 %call309, 0
  br i1 %tobool310.not, label %bad, label %if.end312

if.end312:                                        ; preds = %sw.bb308
  %214 = load ptr, ptr %dp, align 8
  store i16 0, ptr %214, align 4
  br label %for.inc317

sw.bb314:                                         ; preds = %if.end250
  %215 = load ptr, ptr %tif.addr, align 8
  %216 = load ptr, ptr %dp, align 8
  %call315 = call i32 @TIFFFetchExtraSamples(ptr noundef %215, ptr noundef %216)
  store i16 0, ptr %216, align 4
  br label %for.inc317

for.inc317:                                       ; preds = %if.end250, %if.end297, %sw.bb299, %if.end312, %sw.bb314, %cond.end277, %if.end146, %ignore, %if.then185
  %217 = load i32, ptr %n, align 4
  %dec318 = add nsw i32 %217, -1
  store i32 %dec318, ptr %n, align 4
  %218 = load ptr, ptr %dp, align 8
  %incdec.ptr319 = getelementptr inbounds %struct.TIFFDirEntry, ptr %218, i64 1
  store ptr %incdec.ptr319, ptr %dp, align 8
  br label %for.cond136, !llvm.loop !10

for.end320:                                       ; preds = %for.cond136
  %219 = load ptr, ptr %tif.addr, align 8
  %tif_dir321 = getelementptr inbounds %struct.tiff, ptr %219, i64 0, i32 6
  %220 = load i64, ptr %tif_dir321, align 8
  %and324 = and i64 %220, 2
  %tobool325.not = icmp eq i64 %and324, 0
  br i1 %tobool325.not, label %if.then326, label %if.end327

if.then326:                                       ; preds = %for.end320
  %221 = load ptr, ptr %tif.addr, align 8
  call void @MissingRequired(ptr noundef %221, ptr noundef nonnull @.str.7)
  br label %bad

if.end327:                                        ; preds = %for.end320
  %222 = load ptr, ptr %tif.addr, align 8
  %tif_dir328 = getelementptr inbounds %struct.tiff, ptr %222, i64 0, i32 6
  %223 = load i64, ptr %tif_dir328, align 8
  %and331 = and i64 %223, 1048576
  %tobool332.not = icmp eq i64 %and331, 0
  br i1 %tobool332.not, label %if.then333, label %if.end334

if.then333:                                       ; preds = %if.end327
  %224 = load ptr, ptr %tif.addr, align 8
  call void @MissingRequired(ptr noundef %224, ptr noundef nonnull @.str.8)
  br label %bad

if.end334:                                        ; preds = %if.end327
  %225 = load ptr, ptr %tif.addr, align 8
  %tif_dir335 = getelementptr inbounds %struct.tiff, ptr %225, i64 0, i32 6
  %226 = load i64, ptr %tif_dir335, align 8
  %and338 = and i64 %226, 4
  %tobool339.not = icmp eq i64 %and338, 0
  br i1 %tobool339.not, label %if.then340, label %if.else344

if.then340:                                       ; preds = %if.end334
  %227 = load ptr, ptr %tif.addr, align 8
  %call341 = call i32 @TIFFNumberOfStrips(ptr noundef %227) #2
  %228 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %228, i64 0, i32 43
  store i32 %call341, ptr %td_nstrips, align 4
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %228, i64 0, i32 1
  %229 = load i32, ptr %td_imagewidth, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %228, i64 0, i32 4
  store i32 %229, ptr %td_tilewidth, align 4
  %230 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %230, i64 0, i32 16
  %231 = load i32, ptr %td_rowsperstrip, align 4
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %230, i64 0, i32 5
  store i32 %231, ptr %td_tilelength, align 8
  %td_imagedepth = getelementptr inbounds %struct.TIFFDirectory, ptr %230, i64 0, i32 3
  %232 = load i32, ptr %td_imagedepth, align 8
  %233 = load ptr, ptr %td, align 8
  %td_tiledepth = getelementptr inbounds %struct.TIFFDirectory, ptr %233, i64 0, i32 6
  store i32 %232, ptr %td_tiledepth, align 4
  %234 = load ptr, ptr %tif.addr, align 8
  %tif_flags342 = getelementptr inbounds %struct.tiff, ptr %234, i64 0, i32 3
  %235 = load i32, ptr %tif_flags342, align 8
  %and343 = and i32 %235, -1025
  store i32 %and343, ptr %tif_flags342, align 8
  br label %if.end349

if.else344:                                       ; preds = %if.end334
  %236 = load ptr, ptr %tif.addr, align 8
  %call345 = call i32 @TIFFNumberOfTiles(ptr noundef %236) #2
  %237 = load ptr, ptr %td, align 8
  %td_nstrips346 = getelementptr inbounds %struct.TIFFDirectory, ptr %237, i64 0, i32 43
  store i32 %call345, ptr %td_nstrips346, align 4
  %238 = load ptr, ptr %tif.addr, align 8
  %tif_flags347 = getelementptr inbounds %struct.tiff, ptr %238, i64 0, i32 3
  %239 = load i32, ptr %tif_flags347, align 8
  %or348 = or i32 %239, 1024
  store i32 %or348, ptr %tif_flags347, align 8
  br label %if.end349

if.end349:                                        ; preds = %if.else344, %if.then340
  %240 = load ptr, ptr %td, align 8
  %td_nstrips350 = getelementptr inbounds %struct.TIFFDirectory, ptr %240, i64 0, i32 43
  %241 = load i32, ptr %td_nstrips350, align 4
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %240, i64 0, i32 42
  store i32 %241, ptr %td_stripsperimage, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %240, i64 0, i32 24
  %242 = load i16, ptr %td_planarconfig, align 2
  %cmp352 = icmp eq i16 %242, 2
  br i1 %cmp352, label %if.then354, label %if.end359

if.then354:                                       ; preds = %if.end349
  %243 = load ptr, ptr %td, align 8
  %td_samplesperpixel355 = getelementptr inbounds %struct.TIFFDirectory, ptr %243, i64 0, i32 15
  %244 = load i16, ptr %td_samplesperpixel355, align 2
  %conv356 = zext i16 %244 to i32
  %td_stripsperimage357 = getelementptr inbounds %struct.TIFFDirectory, ptr %243, i64 0, i32 42
  %245 = load i32, ptr %td_stripsperimage357, align 8
  %div358 = udiv i32 %245, %conv356
  store i32 %div358, ptr %td_stripsperimage357, align 8
  br label %if.end359

if.end359:                                        ; preds = %if.then354, %if.end349
  %246 = load ptr, ptr %tif.addr, align 8
  %tif_dir360 = getelementptr inbounds %struct.tiff, ptr %246, i64 0, i32 6
  %247 = load i64, ptr %tif_dir360, align 8
  %and363 = and i64 %247, 33554432
  %tobool364.not = icmp eq i64 %and363, 0
  br i1 %tobool364.not, label %if.then365, label %if.end371

if.then365:                                       ; preds = %if.end359
  %248 = load ptr, ptr %tif.addr, align 8
  %tif_flags366 = getelementptr inbounds %struct.tiff, ptr %248, i64 0, i32 3
  %249 = load i32, ptr %tif_flags366, align 8
  %and367 = and i32 %249, 1024
  %cmp368.not = icmp eq i32 %and367, 0
  %cond370 = select i1 %cmp368.not, ptr @.str.10, ptr @.str.9
  call void @MissingRequired(ptr noundef %248, ptr noundef nonnull %cond370)
  br label %bad

if.end371:                                        ; preds = %if.end359
  %250 = load ptr, ptr %dir, align 8
  store ptr %250, ptr %dp, align 8
  %251 = load i16, ptr %dircount, align 2
  %conv372 = zext i16 %251 to i32
  store i32 %conv372, ptr %n, align 4
  br label %for.cond373

for.cond373:                                      ; preds = %for.inc555, %if.end371
  %252 = load i32, ptr %n, align 4
  %cmp374 = icmp sgt i32 %252, 0
  br i1 %cmp374, label %for.body376, label %for.end558

for.body376:                                      ; preds = %for.cond373
  %253 = load ptr, ptr %dp, align 8
  %254 = load i16, ptr %253, align 4
  %cmp379 = icmp eq i16 %254, 0
  br i1 %cmp379, label %for.inc555, label %if.end382

if.end382:                                        ; preds = %for.body376
  %255 = load ptr, ptr %dp, align 8
  %256 = load i16, ptr %255, align 4
  switch i16 %256, label %sw.default [
    i16 280, label %sw.bb385
    i16 281, label %sw.bb385
    i16 258, label %sw.bb385
    i16 -32540, label %sw.bb428
    i16 339, label %sw.bb428
    i16 340, label %sw.bb438
    i16 341, label %sw.bb438
    i16 273, label %sw.bb448
    i16 324, label %sw.bb448
    i16 279, label %sw.bb455
    i16 325, label %sw.bb455
    i16 320, label %sw.bb462
    i16 301, label %sw.bb462
    i16 297, label %sw.bb511
    i16 321, label %sw.bb511
    i16 530, label %sw.bb511
    i16 336, label %sw.bb511
    i16 532, label %sw.bb513
    i16 255, label %sw.bb515
  ]

sw.bb385:                                         ; preds = %if.end382, %if.end382, %if.end382
  %257 = load ptr, ptr %dp, align 8
  %tdir_count386 = getelementptr inbounds %struct.TIFFDirEntry, ptr %257, i64 0, i32 2
  %258 = load i32, ptr %tdir_count386, align 4
  %cmp387 = icmp eq i32 %258, 1
  br i1 %cmp387, label %if.then389, label %sw.bb428

if.then389:                                       ; preds = %sw.bb385
  %259 = load ptr, ptr %tif.addr, align 8
  %tif_header390 = getelementptr inbounds %struct.tiff, ptr %259, i64 0, i32 7
  %260 = load i16, ptr %tif_header390, align 8
  %cmp393 = icmp eq i16 %260, 19789
  br i1 %cmp393, label %cond.true395, label %cond.false408

cond.true395:                                     ; preds = %if.then389
  %261 = load ptr, ptr %dp, align 8
  %tdir_offset396 = getelementptr inbounds %struct.TIFFDirEntry, ptr %261, i64 0, i32 3
  %262 = load i32, ptr %tdir_offset396, align 4
  %263 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift397 = getelementptr inbounds %struct.tiff, ptr %263, i64 0, i32 9
  %264 = load ptr, ptr %tif_typeshift397, align 8
  %tdir_type398 = getelementptr inbounds %struct.TIFFDirEntry, ptr %261, i64 0, i32 1
  %265 = load i16, ptr %tdir_type398, align 2
  %idxprom399 = zext i16 %265 to i64
  %arrayidx400 = getelementptr inbounds i32, ptr %264, i64 %idxprom399
  %266 = load i32, ptr %arrayidx400, align 4
  %shr401 = lshr i32 %262, %266
  %conv402 = zext i32 %shr401 to i64
  %267 = load ptr, ptr %tif.addr, align 8
  %tif_typemask403 = getelementptr inbounds %struct.tiff, ptr %267, i64 0, i32 10
  %268 = load ptr, ptr %tif_typemask403, align 8
  %269 = load ptr, ptr %dp, align 8
  %tdir_type404 = getelementptr inbounds %struct.TIFFDirEntry, ptr %269, i64 0, i32 1
  %270 = load i16, ptr %tdir_type404, align 2
  %idxprom405 = zext i16 %270 to i64
  %arrayidx406 = getelementptr inbounds i64, ptr %268, i64 %idxprom405
  %271 = load i64, ptr %arrayidx406, align 8
  %and407 = and i64 %271, %conv402
  br label %cond.end416

cond.false408:                                    ; preds = %if.then389
  %272 = load ptr, ptr %dp, align 8
  %tdir_offset409 = getelementptr inbounds %struct.TIFFDirEntry, ptr %272, i64 0, i32 3
  %273 = load i32, ptr %tdir_offset409, align 4
  %conv410 = zext i32 %273 to i64
  %274 = load ptr, ptr %tif.addr, align 8
  %tif_typemask411 = getelementptr inbounds %struct.tiff, ptr %274, i64 0, i32 10
  %275 = load ptr, ptr %tif_typemask411, align 8
  %276 = load ptr, ptr %dp, align 8
  %tdir_type412 = getelementptr inbounds %struct.TIFFDirEntry, ptr %276, i64 0, i32 1
  %277 = load i16, ptr %tdir_type412, align 2
  %idxprom413 = zext i16 %277 to i64
  %arrayidx414 = getelementptr inbounds i64, ptr %275, i64 %idxprom413
  %278 = load i64, ptr %arrayidx414, align 8
  %and415 = and i64 %278, %conv410
  br label %cond.end416

cond.end416:                                      ; preds = %cond.false408, %cond.true395
  %cond417 = phi i64 [ %and407, %cond.true395 ], [ %and415, %cond.false408 ]
  %conv419 = and i64 %cond417, 4294967295
  store i64 %conv419, ptr %v, align 8
  %279 = load ptr, ptr %tif.addr, align 8
  %280 = load ptr, ptr %dp, align 8
  %281 = load i16, ptr %280, align 4
  %conv421 = zext i16 %281 to i32
  %conv422 = trunc i64 %cond417 to i32
  %call423 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %279, i32 noundef %conv421, i32 noundef %conv422) #2
  %tobool424.not = icmp eq i32 %call423, 0
  br i1 %tobool424.not, label %bad, label %for.inc555

sw.bb428:                                         ; preds = %sw.bb385, %if.end382, %if.end382
  %282 = load ptr, ptr %tif.addr, align 8
  %283 = load ptr, ptr %dp, align 8
  %call429 = call i32 @TIFFFetchPerSampleShorts(ptr noundef %282, ptr noundef %283, ptr noundef nonnull %iv)
  %tobool430.not = icmp eq i32 %call429, 0
  br i1 %tobool430.not, label %bad, label %lor.lhs.false431

lor.lhs.false431:                                 ; preds = %sw.bb428
  %284 = load ptr, ptr %tif.addr, align 8
  %285 = load ptr, ptr %dp, align 8
  %286 = load i16, ptr %285, align 4
  %conv433 = zext i16 %286 to i32
  %287 = load i32, ptr %iv, align 4
  %call434 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %284, i32 noundef %conv433, i32 noundef %287) #2
  %tobool435.not = icmp eq i32 %call434, 0
  br i1 %tobool435.not, label %bad, label %for.inc555

sw.bb438:                                         ; preds = %if.end382, %if.end382
  %288 = load ptr, ptr %tif.addr, align 8
  %289 = load ptr, ptr %dp, align 8
  %call439 = call i32 @TIFFFetchPerSampleAnys(ptr noundef %288, ptr noundef %289, ptr noundef nonnull %dv)
  %tobool440.not = icmp eq i32 %call439, 0
  br i1 %tobool440.not, label %bad, label %lor.lhs.false441

lor.lhs.false441:                                 ; preds = %sw.bb438
  %290 = load ptr, ptr %tif.addr, align 8
  %291 = load ptr, ptr %dp, align 8
  %292 = load i16, ptr %291, align 4
  %conv443 = zext i16 %292 to i32
  %293 = load double, ptr %dv, align 8
  %call444 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %290, i32 noundef %conv443, double noundef %293) #2
  %tobool445.not = icmp eq i32 %call444, 0
  br i1 %tobool445.not, label %bad, label %for.inc555

sw.bb448:                                         ; preds = %if.end382, %if.end382
  %294 = load ptr, ptr %tif.addr, align 8
  %295 = load ptr, ptr %dp, align 8
  %296 = load ptr, ptr %td, align 8
  %td_nstrips449 = getelementptr inbounds %struct.TIFFDirectory, ptr %296, i64 0, i32 43
  %297 = load i32, ptr %td_nstrips449, align 4
  %conv450 = zext i32 %297 to i64
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %296, i64 0, i32 44
  %call451 = call i32 @TIFFFetchStripThing(ptr noundef %294, ptr noundef %295, i64 noundef %conv450, ptr noundef nonnull %td_stripoffset)
  %tobool452.not = icmp eq i32 %call451, 0
  br i1 %tobool452.not, label %bad, label %for.inc555

sw.bb455:                                         ; preds = %if.end382, %if.end382
  %298 = load ptr, ptr %tif.addr, align 8
  %299 = load ptr, ptr %dp, align 8
  %300 = load ptr, ptr %td, align 8
  %td_nstrips456 = getelementptr inbounds %struct.TIFFDirectory, ptr %300, i64 0, i32 43
  %301 = load i32, ptr %td_nstrips456, align 4
  %conv457 = zext i32 %301 to i64
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %300, i64 0, i32 45
  %call458 = call i32 @TIFFFetchStripThing(ptr noundef %298, ptr noundef %299, i64 noundef %conv457, ptr noundef nonnull %td_stripbytecount)
  %tobool459.not = icmp eq i32 %call458, 0
  br i1 %tobool459.not, label %bad, label %for.inc555

sw.bb462:                                         ; preds = %if.end382, %if.end382
  %302 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %302, i64 0, i32 8
  %303 = load i16, ptr %td_bitspersample, align 4
  %sh_prom464 = zext i16 %303 to i64
  %shl465 = shl i64 1, %sh_prom464
  store i64 %shl465, ptr %v, align 8
  %304 = load ptr, ptr %dp, align 8
  %305 = load i16, ptr %304, align 4
  %cmp468 = icmp eq i16 %305, 320
  br i1 %cmp468, label %if.then475, label %lor.lhs.false470

lor.lhs.false470:                                 ; preds = %sw.bb462
  %306 = load ptr, ptr %dp, align 8
  %tdir_count471 = getelementptr inbounds %struct.TIFFDirEntry, ptr %306, i64 0, i32 2
  %307 = load i32, ptr %tdir_count471, align 4
  %308 = load i64, ptr %v, align 8
  %conv472 = trunc i64 %308 to i32
  %cmp473.not = icmp eq i32 %307, %conv472
  br i1 %cmp473.not, label %if.end482, label %if.then475

if.then475:                                       ; preds = %lor.lhs.false470, %sw.bb462
  %309 = load ptr, ptr %tif.addr, align 8
  %310 = load ptr, ptr %dp, align 8
  %311 = load i64, ptr %v, align 8
  %312 = trunc i64 %311 to i32
  %conv477 = mul i32 %312, 3
  %call478 = call i32 @CheckDirCount(ptr noundef %309, ptr noundef %310, i32 noundef %conv477)
  %tobool479.not = icmp eq i32 %call478, 0
  br i1 %tobool479.not, label %for.inc555, label %if.end482

if.end482:                                        ; preds = %if.then475, %lor.lhs.false470
  %313 = load i64, ptr %v, align 8
  %mul483 = shl i64 %313, 1
  store i64 %mul483, ptr %v, align 8
  %314 = load ptr, ptr %tif.addr, align 8
  %315 = load ptr, ptr %dp, align 8
  %tdir_count484 = getelementptr inbounds %struct.TIFFDirEntry, ptr %315, i64 0, i32 2
  %316 = load i32, ptr %tdir_count484, align 4
  %mul486 = shl i32 %316, 1
  %call488 = call ptr @CheckMalloc(ptr noundef %314, i32 noundef %mul486, ptr noundef nonnull @.str.11)
  store ptr %call488, ptr %cp, align 8
  %cmp489.not = icmp eq ptr %call488, null
  br i1 %cmp489.not, label %for.inc555, label %if.then491

if.then491:                                       ; preds = %if.end482
  %317 = load ptr, ptr %tif.addr, align 8
  %318 = load ptr, ptr %dp, align 8
  %319 = load ptr, ptr %cp, align 8
  %call492 = call i32 @TIFFFetchData(ptr noundef %317, ptr noundef %318, ptr noundef %319)
  %tobool493.not = icmp eq i32 %call492, 0
  br i1 %tobool493.not, label %if.end509, label %if.then494

if.then494:                                       ; preds = %if.then491
  %320 = load ptr, ptr %td, align 8
  %td_bitspersample495 = getelementptr inbounds %struct.TIFFDirectory, ptr %320, i64 0, i32 8
  %321 = load i16, ptr %td_bitspersample495, align 4
  %conv496 = zext i16 %321 to i32
  %shl497 = shl i32 1, %conv496
  %322 = load ptr, ptr %dp, align 8
  %tdir_count498 = getelementptr inbounds %struct.TIFFDirEntry, ptr %322, i64 0, i32 2
  %323 = load i32, ptr %tdir_count498, align 4
  %cmp499 = icmp eq i32 %323, %shl497
  br i1 %cmp499, label %if.then501, label %if.end502

if.then501:                                       ; preds = %if.then494
  store i64 0, ptr %v, align 8
  br label %if.end502

if.end502:                                        ; preds = %if.then501, %if.then494
  %324 = load ptr, ptr %tif.addr, align 8
  %325 = load ptr, ptr %dp, align 8
  %326 = load i16, ptr %325, align 4
  %conv504 = zext i16 %326 to i32
  %327 = load ptr, ptr %cp, align 8
  %328 = load i64, ptr %v, align 8
  %add.ptr505 = getelementptr inbounds i8, ptr %327, i64 %328
  %mul506 = shl nsw i64 %328, 1
  %add.ptr507 = getelementptr inbounds i8, ptr %327, i64 %mul506
  %call508 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %324, i32 noundef %conv504, ptr noundef %327, ptr noundef %add.ptr505, ptr noundef %add.ptr507) #2
  br label %if.end509

if.end509:                                        ; preds = %if.end502, %if.then491
  %329 = load ptr, ptr %cp, align 8
  call void @_TIFFfree(ptr noundef %329) #2
  br label %for.inc555

sw.bb511:                                         ; preds = %if.end382, %if.end382, %if.end382, %if.end382
  %330 = load ptr, ptr %tif.addr, align 8
  %331 = load ptr, ptr %dp, align 8
  %call512 = call i32 @TIFFFetchShortPair(ptr noundef %330, ptr noundef %331)
  br label %for.inc555

sw.bb513:                                         ; preds = %if.end382
  %332 = load ptr, ptr %tif.addr, align 8
  %333 = load ptr, ptr %dp, align 8
  %call514 = call i32 @TIFFFetchRefBlackWhite(ptr noundef %332, ptr noundef %333)
  br label %for.inc555

sw.bb515:                                         ; preds = %if.end382
  store i64 0, ptr %v, align 8
  %334 = load ptr, ptr %tif.addr, align 8
  %tif_header516 = getelementptr inbounds %struct.tiff, ptr %334, i64 0, i32 7
  %335 = load i16, ptr %tif_header516, align 8
  %cmp519 = icmp eq i16 %335, 19789
  br i1 %cmp519, label %cond.true521, label %cond.false534

cond.true521:                                     ; preds = %sw.bb515
  %336 = load ptr, ptr %dp, align 8
  %tdir_offset522 = getelementptr inbounds %struct.TIFFDirEntry, ptr %336, i64 0, i32 3
  %337 = load i32, ptr %tdir_offset522, align 4
  %338 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift523 = getelementptr inbounds %struct.tiff, ptr %338, i64 0, i32 9
  %339 = load ptr, ptr %tif_typeshift523, align 8
  %tdir_type524 = getelementptr inbounds %struct.TIFFDirEntry, ptr %336, i64 0, i32 1
  %340 = load i16, ptr %tdir_type524, align 2
  %idxprom525 = zext i16 %340 to i64
  %arrayidx526 = getelementptr inbounds i32, ptr %339, i64 %idxprom525
  %341 = load i32, ptr %arrayidx526, align 4
  %shr527 = lshr i32 %337, %341
  %conv528 = zext i32 %shr527 to i64
  %342 = load ptr, ptr %tif.addr, align 8
  %tif_typemask529 = getelementptr inbounds %struct.tiff, ptr %342, i64 0, i32 10
  %343 = load ptr, ptr %tif_typemask529, align 8
  %344 = load ptr, ptr %dp, align 8
  %tdir_type530 = getelementptr inbounds %struct.TIFFDirEntry, ptr %344, i64 0, i32 1
  %345 = load i16, ptr %tdir_type530, align 2
  %idxprom531 = zext i16 %345 to i64
  %arrayidx532 = getelementptr inbounds i64, ptr %343, i64 %idxprom531
  %346 = load i64, ptr %arrayidx532, align 8
  %and533 = and i64 %346, %conv528
  br label %cond.end542

cond.false534:                                    ; preds = %sw.bb515
  %347 = load ptr, ptr %dp, align 8
  %tdir_offset535 = getelementptr inbounds %struct.TIFFDirEntry, ptr %347, i64 0, i32 3
  %348 = load i32, ptr %tdir_offset535, align 4
  %conv536 = zext i32 %348 to i64
  %349 = load ptr, ptr %tif.addr, align 8
  %tif_typemask537 = getelementptr inbounds %struct.tiff, ptr %349, i64 0, i32 10
  %350 = load ptr, ptr %tif_typemask537, align 8
  %351 = load ptr, ptr %dp, align 8
  %tdir_type538 = getelementptr inbounds %struct.TIFFDirEntry, ptr %351, i64 0, i32 1
  %352 = load i16, ptr %tdir_type538, align 2
  %idxprom539 = zext i16 %352 to i64
  %arrayidx540 = getelementptr inbounds i64, ptr %350, i64 %idxprom539
  %353 = load i64, ptr %arrayidx540, align 8
  %and541 = and i64 %353, %conv536
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

sw.epilog547:                                     ; preds = %sw.bb546, %sw.bb545, %cond.end542
  %354 = load i64, ptr %v, align 8
  %tobool548.not = icmp eq i64 %354, 0
  br i1 %tobool548.not, label %for.inc555, label %if.then549

if.then549:                                       ; preds = %sw.epilog547
  %355 = load ptr, ptr %tif.addr, align 8
  %356 = load i64, ptr %v, align 8
  %conv550 = trunc i64 %356 to i32
  %call551 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %355, i32 noundef 254, i32 noundef %conv550) #2
  br label %for.inc555

sw.default:                                       ; preds = %if.end382
  %357 = load ptr, ptr %tif.addr, align 8
  %358 = load ptr, ptr %dp, align 8
  %call553 = call i32 @TIFFFetchNormalTag(ptr noundef %357, ptr noundef %358)
  br label %for.inc555

for.inc555:                                       ; preds = %sw.bb511, %sw.bb513, %sw.default, %cond.end416, %lor.lhs.false431, %lor.lhs.false441, %sw.bb448, %sw.bb455, %if.then475, %if.end509, %if.end482, %if.then549, %sw.epilog547, %for.body376
  %359 = load i32, ptr %n, align 4
  %dec556 = add nsw i32 %359, -1
  store i32 %dec556, ptr %n, align 4
  %360 = load ptr, ptr %dp, align 8
  %incdec.ptr557 = getelementptr inbounds %struct.TIFFDirEntry, ptr %360, i64 1
  store ptr %incdec.ptr557, ptr %dp, align 8
  br label %for.cond373, !llvm.loop !11

for.end558:                                       ; preds = %for.cond373
  %361 = load ptr, ptr %td, align 8
  %td_photometric = getelementptr inbounds %struct.TIFFDirectory, ptr %361, i64 0, i32 11
  %362 = load i16, ptr %td_photometric, align 2
  %cmp560 = icmp eq i16 %362, 3
  br i1 %cmp560, label %land.lhs.true, label %if.end568

land.lhs.true:                                    ; preds = %for.end558
  %363 = load ptr, ptr %tif.addr, align 8
  %tif_dir562 = getelementptr inbounds %struct.tiff, ptr %363, i64 0, i32 6
  %364 = load i64, ptr %tif_dir562, align 8
  %and565 = and i64 %364, 67108864
  %tobool566.not = icmp eq i64 %and565, 0
  br i1 %tobool566.not, label %if.then567, label %if.end568

if.then567:                                       ; preds = %land.lhs.true
  %365 = load ptr, ptr %tif.addr, align 8
  call void @MissingRequired(ptr noundef %365, ptr noundef nonnull @.str.12)
  br label %bad

if.end568:                                        ; preds = %land.lhs.true, %for.end558
  %366 = load ptr, ptr %tif.addr, align 8
  %tif_dir569 = getelementptr inbounds %struct.tiff, ptr %366, i64 0, i32 6
  %367 = load i64, ptr %tif_dir569, align 8
  %and572 = and i64 %367, 16777216
  %tobool573.not = icmp eq i64 %and572, 0
  br i1 %tobool573.not, label %if.then574, label %if.else599

if.then574:                                       ; preds = %if.end568
  %368 = load ptr, ptr %td, align 8
  %td_planarconfig575 = getelementptr inbounds %struct.TIFFDirectory, ptr %368, i64 0, i32 24
  %369 = load i16, ptr %td_planarconfig575, align 2
  %cmp577 = icmp eq i16 %369, 1
  br i1 %cmp577, label %land.lhs.true579, label %lor.lhs.false583

land.lhs.true579:                                 ; preds = %if.then574
  %370 = load ptr, ptr %td, align 8
  %td_nstrips580 = getelementptr inbounds %struct.TIFFDirectory, ptr %370, i64 0, i32 43
  %371 = load i32, ptr %td_nstrips580, align 4
  %cmp581 = icmp ugt i32 %371, 1
  br i1 %cmp581, label %if.then594, label %lor.lhs.false583

lor.lhs.false583:                                 ; preds = %land.lhs.true579, %if.then574
  %372 = load ptr, ptr %td, align 8
  %td_planarconfig584 = getelementptr inbounds %struct.TIFFDirectory, ptr %372, i64 0, i32 24
  %373 = load i16, ptr %td_planarconfig584, align 2
  %cmp586 = icmp eq i16 %373, 2
  br i1 %cmp586, label %land.lhs.true588, label %if.end595

land.lhs.true588:                                 ; preds = %lor.lhs.false583
  %374 = load ptr, ptr %td, align 8
  %td_nstrips589 = getelementptr inbounds %struct.TIFFDirectory, ptr %374, i64 0, i32 43
  %375 = load i32, ptr %td_nstrips589, align 4
  %td_samplesperpixel590 = getelementptr inbounds %struct.TIFFDirectory, ptr %374, i64 0, i32 15
  %376 = load i16, ptr %td_samplesperpixel590, align 2
  %conv591 = zext i16 %376 to i32
  %cmp592.not = icmp eq i32 %375, %conv591
  br i1 %cmp592.not, label %if.end595, label %if.then594

if.then594:                                       ; preds = %land.lhs.true588, %land.lhs.true579
  %377 = load ptr, ptr %tif.addr, align 8
  call void @MissingRequired(ptr noundef %377, ptr noundef nonnull @.str.13)
  br label %bad

if.end595:                                        ; preds = %land.lhs.true588, %lor.lhs.false583
  %378 = load ptr, ptr %tif.addr, align 8
  %379 = load ptr, ptr %378, align 8
  %call597 = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %378, i32 noundef 279) #2
  %field_name598 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call597, i64 0, i32 7
  %380 = load ptr, ptr %field_name598, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %379, ptr noundef nonnull @.str.14, ptr noundef %380) #2
  %381 = load ptr, ptr %tif.addr, align 8
  %382 = load ptr, ptr %dir, align 8
  %383 = load i16, ptr %dircount, align 2
  call void @EstimateStripByteCounts(ptr noundef %381, ptr noundef %382, i16 noundef zeroext %383)
  br label %if.end626

if.else599:                                       ; preds = %if.end568
  %384 = load ptr, ptr %td, align 8
  %td_nstrips600 = getelementptr inbounds %struct.TIFFDirectory, ptr %384, i64 0, i32 43
  %385 = load i32, ptr %td_nstrips600, align 4
  %cmp601 = icmp eq i32 %385, 1
  br i1 %cmp601, label %land.lhs.true603, label %if.end626

land.lhs.true603:                                 ; preds = %if.else599
  %386 = load ptr, ptr %td, align 8
  %td_stripbytecount604 = getelementptr inbounds %struct.TIFFDirectory, ptr %386, i64 0, i32 45
  %387 = load ptr, ptr %td_stripbytecount604, align 8
  %388 = load i32, ptr %387, align 4
  %cmp606 = icmp eq i32 %388, 0
  br i1 %cmp606, label %if.then621, label %lor.lhs.false608

lor.lhs.false608:                                 ; preds = %land.lhs.true603
  %389 = load ptr, ptr %td, align 8
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %389, i64 0, i32 10
  %390 = load i16, ptr %td_compression, align 8
  %cmp610 = icmp eq i16 %390, 1
  br i1 %cmp610, label %land.lhs.true612, label %if.end626

land.lhs.true612:                                 ; preds = %lor.lhs.false608
  %391 = load ptr, ptr %td, align 8
  %td_stripbytecount613 = getelementptr inbounds %struct.TIFFDirectory, ptr %391, i64 0, i32 45
  %392 = load ptr, ptr %td_stripbytecount613, align 8
  %393 = load i32, ptr %392, align 4
  %394 = load ptr, ptr %tif.addr, align 8
  %tif_sizeproc = getelementptr inbounds %struct.tiff, ptr %394, i64 0, i32 53
  %395 = load ptr, ptr %tif_sizeproc, align 8
  %tif_clientdata615 = getelementptr inbounds %struct.tiff, ptr %394, i64 0, i32 48
  %396 = load ptr, ptr %tif_clientdata615, align 8
  %call616 = call i32 %395(ptr noundef %396) #2
  %397 = load ptr, ptr %td, align 8
  %td_stripoffset617 = getelementptr inbounds %struct.TIFFDirectory, ptr %397, i64 0, i32 44
  %398 = load ptr, ptr %td_stripoffset617, align 8
  %399 = load i32, ptr %398, align 4
  %sub = sub i32 %call616, %399
  %cmp619 = icmp ugt i32 %393, %sub
  br i1 %cmp619, label %if.then621, label %if.end626

if.then621:                                       ; preds = %land.lhs.true612, %land.lhs.true603
  %400 = load ptr, ptr %tif.addr, align 8
  %401 = load ptr, ptr %400, align 8
  %call623 = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %400, i32 noundef 279) #2
  %field_name624 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call623, i64 0, i32 7
  %402 = load ptr, ptr %field_name624, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %401, ptr noundef nonnull @.str.15, ptr noundef %402) #2
  %403 = load ptr, ptr %tif.addr, align 8
  %404 = load ptr, ptr %dir, align 8
  %405 = load i16, ptr %dircount, align 2
  call void @EstimateStripByteCounts(ptr noundef %403, ptr noundef %404, i16 noundef zeroext %405)
  br label %if.end626

if.end626:                                        ; preds = %if.else599, %lor.lhs.false608, %land.lhs.true612, %if.then621, %if.end595
  %406 = load ptr, ptr %dir, align 8
  %tobool627.not = icmp eq ptr %406, null
  br i1 %tobool627.not, label %if.end629, label %if.then628

if.then628:                                       ; preds = %if.end626
  %407 = load ptr, ptr %dir, align 8
  call void @_TIFFfree(ptr noundef %407) #2
  br label %if.end629

if.end629:                                        ; preds = %if.then628, %if.end626
  %408 = load ptr, ptr %tif.addr, align 8
  %tif_dir630 = getelementptr inbounds %struct.tiff, ptr %408, i64 0, i32 6
  %409 = load i64, ptr %tif_dir630, align 8
  %and633 = and i64 %409, 524288
  %tobool634.not = icmp eq i64 %and633, 0
  br i1 %tobool634.not, label %if.then635, label %if.end642

if.then635:                                       ; preds = %if.end629
  %410 = load ptr, ptr %td, align 8
  %td_bitspersample636 = getelementptr inbounds %struct.TIFFDirectory, ptr %410, i64 0, i32 8
  %411 = load i16, ptr %td_bitspersample636, align 4
  %sh_prom638 = zext i16 %411 to i64
  %notmask = shl nsw i64 -1, %sh_prom638
  %412 = trunc i64 %notmask to i16
  %conv641 = xor i16 %412, -1
  %413 = load ptr, ptr %td, align 8
  %td_maxsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %413, i64 0, i32 18
  store i16 %conv641, ptr %td_maxsamplevalue, align 2
  br label %if.end642

if.end642:                                        ; preds = %if.then635, %if.end629
  %414 = load ptr, ptr %tif.addr, align 8
  %tif_dir643 = getelementptr inbounds %struct.tiff, ptr %414, i64 0, i32 6
  %415 = load i64, ptr %tif_dir643, align 8
  %and646 = and i64 %415, 128
  %tobool647.not = icmp eq i64 %and646, 0
  br i1 %tobool647.not, label %if.then648, label %if.end650

if.then648:                                       ; preds = %if.end642
  %416 = load ptr, ptr %tif.addr, align 8
  %call649 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %416, i32 noundef 259, i32 noundef 1) #2
  br label %if.end650

if.end650:                                        ; preds = %if.then648, %if.end642
  %417 = load ptr, ptr %td, align 8
  %td_nstrips651 = getelementptr inbounds %struct.TIFFDirectory, ptr %417, i64 0, i32 43
  %418 = load i32, ptr %td_nstrips651, align 4
  %cmp652 = icmp eq i32 %418, 1
  br i1 %cmp652, label %land.lhs.true654, label %if.end665

land.lhs.true654:                                 ; preds = %if.end650
  %419 = load ptr, ptr %td, align 8
  %td_compression655 = getelementptr inbounds %struct.TIFFDirectory, ptr %419, i64 0, i32 10
  %420 = load i16, ptr %td_compression655, align 8
  %cmp657 = icmp eq i16 %420, 1
  br i1 %cmp657, label %land.lhs.true659, label %if.end665

land.lhs.true659:                                 ; preds = %land.lhs.true654
  %421 = load ptr, ptr %tif.addr, align 8
  %tif_flags660 = getelementptr inbounds %struct.tiff, ptr %421, i64 0, i32 3
  %422 = load i32, ptr %tif_flags660, align 8
  %and661 = and i32 %422, 33792
  %cmp662 = icmp eq i32 %and661, 32768
  br i1 %cmp662, label %if.then664, label %if.end665

if.then664:                                       ; preds = %land.lhs.true659
  %423 = load ptr, ptr %tif.addr, align 8
  call void @ChopUpSingleUncompressedStrip(ptr noundef %423)
  br label %if.end665

if.end665:                                        ; preds = %if.then664, %land.lhs.true659, %land.lhs.true654, %if.end650
  %424 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %424, i64 0, i32 11
  store i32 -1, ptr %tif_row, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %424, i64 0, i32 13
  store i32 -1, ptr %tif_curstrip, align 8
  %tif_col = getelementptr inbounds %struct.tiff, ptr %424, i64 0, i32 18
  store i32 -1, ptr %tif_col, align 4
  %425 = load ptr, ptr %tif.addr, align 8
  %tif_curtile = getelementptr inbounds %struct.tiff, ptr %425, i64 0, i32 19
  store i32 -1, ptr %tif_curtile, align 8
  %call666 = call i32 @TIFFTileSize(ptr noundef %425) #2
  %426 = load ptr, ptr %tif.addr, align 8
  %tif_tilesize = getelementptr inbounds %struct.tiff, ptr %426, i64 0, i32 20
  store i32 %call666, ptr %tif_tilesize, align 4
  %call667 = call i32 @TIFFScanlineSize(ptr noundef %426) #2
  %427 = load ptr, ptr %tif.addr, align 8
  %tif_scanlinesize = getelementptr inbounds %struct.tiff, ptr %427, i64 0, i32 38
  store i32 %call667, ptr %tif_scanlinesize, align 8
  store i32 1, ptr %retval, align 4
  br label %return

bad:                                              ; preds = %sw.bb455, %sw.bb448, %sw.bb438, %lor.lhs.false441, %sw.bb428, %lor.lhs.false431, %cond.end416, %sw.bb308, %if.end288, %lor.lhs.false291, %cond.end277, %if.then128, %if.then594, %if.then567, %if.then365, %if.then333, %if.then326, %if.then79, %if.then38
  %428 = load ptr, ptr %dir, align 8
  %tobool668.not = icmp eq ptr %428, null
  br i1 %tobool668.not, label %if.end670, label %if.then669

if.then669:                                       ; preds = %bad
  %429 = load ptr, ptr %dir, align 8
  call void @_TIFFfree(ptr noundef %429) #2
  br label %if.end670

if.end670:                                        ; preds = %if.then669, %bad
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end670, %if.end665, %if.then69, %if.then51, %if.then23, %if.then12, %if.then7, %if.then
  %430 = load i32, ptr %retval, align 4
  ret i32 %430
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

declare void @TIFFSwabShort(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal ptr @CheckMalloc(ptr noundef %tif, i32 noundef %n, ptr noundef %what) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %what.addr = alloca ptr, align 8
  %cp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %what, ptr %what.addr, align 8
  %call = call ptr @_TIFFmalloc(i32 noundef %n) #2
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
  %0 = load i16, ptr %dp, align 4
  %conv = zext i16 %0 to i32
  %call = call ptr @_TIFFFieldWithTag(ptr noundef %tif, i32 noundef %conv) #2
  store ptr %call, ptr %fip, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %dp, i64 0, i32 2
  %1 = load i32, ptr %tdir_count, align 4
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr null, ptr %cp, align 8
  %2 = load ptr, ptr %dp.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %2, i64 0, i32 1
  %3 = load i16, ptr %tdir_type, align 2
  switch i16 %3, label %sw.epilog [
    i16 1, label %sw.bb
    i16 6, label %sw.bb
    i16 3, label %sw.bb9
    i16 8, label %sw.bb9
    i16 4, label %sw.bb21
    i16 9, label %sw.bb21
    i16 5, label %sw.bb33
    i16 10, label %sw.bb33
    i16 11, label %sw.bb45
    i16 12, label %sw.bb57
    i16 2, label %sw.bb69
    i16 7, label %sw.bb69
  ]

sw.bb:                                            ; preds = %if.then, %if.then
  %4 = load ptr, ptr %tif.addr, align 8
  %5 = load ptr, ptr %dp.addr, align 8
  %tdir_count3 = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i64 0, i32 2
  %6 = load i32, ptr %tdir_count3, align 4
  %mul = shl i32 %6, 1
  %call6 = call ptr @CheckMalloc(ptr noundef %4, i32 noundef %mul, ptr noundef nonnull @TIFFFetchNormalTag.mesg)
  store ptr %call6, ptr %cp, align 8
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %sw.bb
  %7 = load ptr, ptr %tif.addr, align 8
  %8 = load ptr, ptr %dp.addr, align 8
  %9 = load ptr, ptr %cp, align 8
  %call7 = call i32 @TIFFFetchByteArray(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  %tobool8 = icmp ne i32 %call7, 0
  %phi.cast7 = zext i1 %tobool8 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb
  %10 = phi i32 [ 0, %sw.bb ], [ %phi.cast7, %land.rhs ]
  store i32 %10, ptr %ok, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.then, %if.then
  %11 = load ptr, ptr %tif.addr, align 8
  %12 = load ptr, ptr %dp.addr, align 8
  %tdir_count10 = getelementptr inbounds %struct.TIFFDirEntry, ptr %12, i64 0, i32 2
  %13 = load i32, ptr %tdir_count10, align 4
  %mul12 = shl i32 %13, 1
  %call14 = call ptr @CheckMalloc(ptr noundef %11, i32 noundef %mul12, ptr noundef nonnull @TIFFFetchNormalTag.mesg)
  store ptr %call14, ptr %cp, align 8
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %land.end19, label %land.rhs16

land.rhs16:                                       ; preds = %sw.bb9
  %14 = load ptr, ptr %tif.addr, align 8
  %15 = load ptr, ptr %dp.addr, align 8
  %16 = load ptr, ptr %cp, align 8
  %call17 = call i32 @TIFFFetchShortArray(ptr noundef %14, ptr noundef %15, ptr noundef %16)
  %tobool18 = icmp ne i32 %call17, 0
  %phi.cast6 = zext i1 %tobool18 to i32
  br label %land.end19

land.end19:                                       ; preds = %land.rhs16, %sw.bb9
  %17 = phi i32 [ 0, %sw.bb9 ], [ %phi.cast6, %land.rhs16 ]
  store i32 %17, ptr %ok, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.then, %if.then
  %18 = load ptr, ptr %tif.addr, align 8
  %19 = load ptr, ptr %dp.addr, align 8
  %tdir_count22 = getelementptr inbounds %struct.TIFFDirEntry, ptr %19, i64 0, i32 2
  %20 = load i32, ptr %tdir_count22, align 4
  %mul24 = shl i32 %20, 2
  %call26 = call ptr @CheckMalloc(ptr noundef %18, i32 noundef %mul24, ptr noundef nonnull @TIFFFetchNormalTag.mesg)
  store ptr %call26, ptr %cp, align 8
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %land.end31, label %land.rhs28

land.rhs28:                                       ; preds = %sw.bb21
  %21 = load ptr, ptr %tif.addr, align 8
  %22 = load ptr, ptr %dp.addr, align 8
  %23 = load ptr, ptr %cp, align 8
  %call29 = call i32 @TIFFFetchLongArray(ptr noundef %21, ptr noundef %22, ptr noundef %23)
  %tobool30 = icmp ne i32 %call29, 0
  %phi.cast5 = zext i1 %tobool30 to i32
  br label %land.end31

land.end31:                                       ; preds = %land.rhs28, %sw.bb21
  %24 = phi i32 [ 0, %sw.bb21 ], [ %phi.cast5, %land.rhs28 ]
  store i32 %24, ptr %ok, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.then, %if.then
  %25 = load ptr, ptr %tif.addr, align 8
  %26 = load ptr, ptr %dp.addr, align 8
  %tdir_count34 = getelementptr inbounds %struct.TIFFDirEntry, ptr %26, i64 0, i32 2
  %27 = load i32, ptr %tdir_count34, align 4
  %mul36 = shl i32 %27, 2
  %call38 = call ptr @CheckMalloc(ptr noundef %25, i32 noundef %mul36, ptr noundef nonnull @TIFFFetchNormalTag.mesg)
  store ptr %call38, ptr %cp, align 8
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %land.end43, label %land.rhs40

land.rhs40:                                       ; preds = %sw.bb33
  %28 = load ptr, ptr %tif.addr, align 8
  %29 = load ptr, ptr %dp.addr, align 8
  %30 = load ptr, ptr %cp, align 8
  %call41 = call i32 @TIFFFetchRationalArray(ptr noundef %28, ptr noundef %29, ptr noundef %30)
  %tobool42 = icmp ne i32 %call41, 0
  %phi.cast4 = zext i1 %tobool42 to i32
  br label %land.end43

land.end43:                                       ; preds = %land.rhs40, %sw.bb33
  %31 = phi i32 [ 0, %sw.bb33 ], [ %phi.cast4, %land.rhs40 ]
  store i32 %31, ptr %ok, align 4
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.then
  %32 = load ptr, ptr %tif.addr, align 8
  %33 = load ptr, ptr %dp.addr, align 8
  %tdir_count46 = getelementptr inbounds %struct.TIFFDirEntry, ptr %33, i64 0, i32 2
  %34 = load i32, ptr %tdir_count46, align 4
  %mul48 = shl i32 %34, 2
  %call50 = call ptr @CheckMalloc(ptr noundef %32, i32 noundef %mul48, ptr noundef nonnull @TIFFFetchNormalTag.mesg)
  store ptr %call50, ptr %cp, align 8
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %land.end55, label %land.rhs52

land.rhs52:                                       ; preds = %sw.bb45
  %35 = load ptr, ptr %tif.addr, align 8
  %36 = load ptr, ptr %dp.addr, align 8
  %37 = load ptr, ptr %cp, align 8
  %call53 = call i32 @TIFFFetchFloatArray(ptr noundef %35, ptr noundef %36, ptr noundef %37)
  %tobool54 = icmp ne i32 %call53, 0
  %phi.cast3 = zext i1 %tobool54 to i32
  br label %land.end55

land.end55:                                       ; preds = %land.rhs52, %sw.bb45
  %38 = phi i32 [ 0, %sw.bb45 ], [ %phi.cast3, %land.rhs52 ]
  store i32 %38, ptr %ok, align 4
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.then
  %39 = load ptr, ptr %tif.addr, align 8
  %40 = load ptr, ptr %dp.addr, align 8
  %tdir_count58 = getelementptr inbounds %struct.TIFFDirEntry, ptr %40, i64 0, i32 2
  %41 = load i32, ptr %tdir_count58, align 4
  %mul60 = shl i32 %41, 3
  %call62 = call ptr @CheckMalloc(ptr noundef %39, i32 noundef %mul60, ptr noundef nonnull @TIFFFetchNormalTag.mesg)
  store ptr %call62, ptr %cp, align 8
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %land.end67, label %land.rhs64

land.rhs64:                                       ; preds = %sw.bb57
  %42 = load ptr, ptr %tif.addr, align 8
  %43 = load ptr, ptr %dp.addr, align 8
  %44 = load ptr, ptr %cp, align 8
  %call65 = call i32 @TIFFFetchDoubleArray(ptr noundef %42, ptr noundef %43, ptr noundef %44)
  %tobool66 = icmp ne i32 %call65, 0
  %phi.cast2 = zext i1 %tobool66 to i32
  br label %land.end67

land.end67:                                       ; preds = %land.rhs64, %sw.bb57
  %45 = phi i32 [ 0, %sw.bb57 ], [ %phi.cast2, %land.rhs64 ]
  store i32 %45, ptr %ok, align 4
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.then, %if.then
  %46 = load ptr, ptr %tif.addr, align 8
  %47 = load ptr, ptr %dp.addr, align 8
  %tdir_count70 = getelementptr inbounds %struct.TIFFDirEntry, ptr %47, i64 0, i32 2
  %48 = load i32, ptr %tdir_count70, align 4
  %add = add i32 %48, 1
  %call71 = call ptr @CheckMalloc(ptr noundef %46, i32 noundef %add, ptr noundef nonnull @TIFFFetchNormalTag.mesg)
  store ptr %call71, ptr %cp, align 8
  %tobool72.not = icmp eq ptr %call71, null
  br i1 %tobool72.not, label %land.end76, label %land.rhs73

land.rhs73:                                       ; preds = %sw.bb69
  %49 = load ptr, ptr %tif.addr, align 8
  %50 = load ptr, ptr %dp.addr, align 8
  %51 = load ptr, ptr %cp, align 8
  %call74 = call i32 @TIFFFetchString(ptr noundef %49, ptr noundef %50, ptr noundef %51)
  %tobool75 = icmp ne i32 %call74, 0
  %phi.cast1 = zext i1 %tobool75 to i32
  br label %land.end76

land.end76:                                       ; preds = %land.rhs73, %sw.bb69
  %52 = phi i32 [ 0, %sw.bb69 ], [ %phi.cast1, %land.rhs73 ]
  store i32 %52, ptr %ok, align 4
  %cmp78.not = icmp eq i32 %52, 0
  br i1 %cmp78.not, label %sw.epilog, label %if.then80

if.then80:                                        ; preds = %land.end76
  %53 = load ptr, ptr %cp, align 8
  %54 = load ptr, ptr %dp.addr, align 8
  %tdir_count81 = getelementptr inbounds %struct.TIFFDirEntry, ptr %54, i64 0, i32 2
  %55 = load i32, ptr %tdir_count81, align 4
  %idxprom = zext i32 %55 to i64
  %arrayidx = getelementptr inbounds i8, ptr %53, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %land.end76, %if.then80, %land.end67, %land.end55, %land.end43, %land.end31, %land.end19, %land.end, %if.then
  %56 = load i32, ptr %ok, align 4
  %tobool82.not = icmp eq i32 %56, 0
  br i1 %tobool82.not, label %if.end93, label %if.then83

if.then83:                                        ; preds = %sw.epilog
  %57 = load ptr, ptr %fip, align 8
  %field_passcount = getelementptr inbounds %struct.TIFFFieldInfo, ptr %57, i64 0, i32 6
  %58 = load i8, ptr %field_passcount, align 1
  %tobool85.not = icmp eq i8 %58, 0
  br i1 %tobool85.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then83
  %59 = load ptr, ptr %tif.addr, align 8
  %60 = load ptr, ptr %dp.addr, align 8
  %61 = load i16, ptr %60, align 4
  %conv87 = zext i16 %61 to i32
  %tdir_count88 = getelementptr inbounds %struct.TIFFDirEntry, ptr %60, i64 0, i32 2
  %62 = load i32, ptr %tdir_count88, align 4
  %63 = load ptr, ptr %cp, align 8
  %call89 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %59, i32 noundef %conv87, i32 noundef %62, ptr noundef %63) #2
  br label %cond.end

cond.false:                                       ; preds = %if.then83
  %64 = load ptr, ptr %tif.addr, align 8
  %65 = load ptr, ptr %dp.addr, align 8
  %66 = load i16, ptr %65, align 4
  %conv91 = zext i16 %66 to i32
  %67 = load ptr, ptr %cp, align 8
  %call92 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %64, i32 noundef %conv91, ptr noundef %67) #2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call89, %cond.true ], [ %call92, %cond.false ]
  store i32 %cond, ptr %ok, align 4
  br label %if.end93

if.end93:                                         ; preds = %cond.end, %sw.epilog
  %68 = load ptr, ptr %cp, align 8
  %cmp94.not = icmp eq ptr %68, null
  br i1 %cmp94.not, label %if.end252, label %if.then96

if.then96:                                        ; preds = %if.end93
  %69 = load ptr, ptr %cp, align 8
  call void @_TIFFfree(ptr noundef %69) #2
  br label %if.end252

if.else:                                          ; preds = %entry
  %70 = load ptr, ptr %tif.addr, align 8
  %71 = load ptr, ptr %dp.addr, align 8
  %call98 = call i32 @CheckDirCount(ptr noundef %70, ptr noundef %71, i32 noundef 1)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end252, label %if.then100

if.then100:                                       ; preds = %if.else
  %72 = load ptr, ptr %dp.addr, align 8
  %tdir_type101 = getelementptr inbounds %struct.TIFFDirEntry, ptr %72, i64 0, i32 1
  %73 = load i16, ptr %tdir_type101, align 2
  switch i16 %73, label %if.end252 [
    i16 1, label %sw.bb103
    i16 6, label %sw.bb103
    i16 3, label %sw.bb103
    i16 8, label %sw.bb103
    i16 4, label %sw.bb147
    i16 9, label %sw.bb147
    i16 5, label %sw.bb190
    i16 10, label %sw.bb190
    i16 11, label %sw.bb190
    i16 12, label %sw.bb216
    i16 2, label %sw.bb237
    i16 7, label %sw.bb237
  ]

sw.bb103:                                         ; preds = %if.then100, %if.then100, %if.then100, %if.then100
  %74 = load ptr, ptr %fip, align 8
  %field_type = getelementptr inbounds %struct.TIFFFieldInfo, ptr %74, i64 0, i32 3
  %75 = load i32, ptr %field_type, align 8
  store i32 %75, ptr %type, align 4
  %cmp104.not = icmp eq i32 %75, 4
  %76 = load i32, ptr %type, align 4
  %cmp106.not = icmp eq i32 %76, 9
  %or.cond = select i1 %cmp104.not, i1 true, i1 %cmp106.not
  br i1 %or.cond, label %sw.bb147, label %if.then108

if.then108:                                       ; preds = %sw.bb103
  %77 = load ptr, ptr %tif.addr, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %77, i64 0, i32 7
  %78 = load i16, ptr %tif_header, align 8
  %cmp110 = icmp eq i16 %78, 19789
  br i1 %cmp110, label %cond.true112, label %cond.false120

cond.true112:                                     ; preds = %if.then108
  %79 = load ptr, ptr %dp.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %79, i64 0, i32 3
  %80 = load i32, ptr %tdir_offset, align 4
  %81 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift = getelementptr inbounds %struct.tiff, ptr %81, i64 0, i32 9
  %82 = load ptr, ptr %tif_typeshift, align 8
  %tdir_type113 = getelementptr inbounds %struct.TIFFDirEntry, ptr %79, i64 0, i32 1
  %83 = load i16, ptr %tdir_type113, align 2
  %idxprom114 = zext i16 %83 to i64
  %arrayidx115 = getelementptr inbounds i32, ptr %82, i64 %idxprom114
  %84 = load i32, ptr %arrayidx115, align 4
  %shr = lshr i32 %80, %84
  %conv116 = zext i32 %shr to i64
  %85 = load ptr, ptr %tif.addr, align 8
  %tif_typemask = getelementptr inbounds %struct.tiff, ptr %85, i64 0, i32 10
  %86 = load ptr, ptr %tif_typemask, align 8
  %87 = load ptr, ptr %dp.addr, align 8
  %tdir_type117 = getelementptr inbounds %struct.TIFFDirEntry, ptr %87, i64 0, i32 1
  %88 = load i16, ptr %tdir_type117, align 2
  %idxprom118 = zext i16 %88 to i64
  %arrayidx119 = getelementptr inbounds i64, ptr %86, i64 %idxprom118
  %89 = load i64, ptr %arrayidx119, align 8
  %and = and i64 %89, %conv116
  br label %cond.end128

cond.false120:                                    ; preds = %if.then108
  %90 = load ptr, ptr %dp.addr, align 8
  %tdir_offset121 = getelementptr inbounds %struct.TIFFDirEntry, ptr %90, i64 0, i32 3
  %91 = load i32, ptr %tdir_offset121, align 4
  %conv122 = zext i32 %91 to i64
  %92 = load ptr, ptr %tif.addr, align 8
  %tif_typemask123 = getelementptr inbounds %struct.tiff, ptr %92, i64 0, i32 10
  %93 = load ptr, ptr %tif_typemask123, align 8
  %94 = load ptr, ptr %dp.addr, align 8
  %tdir_type124 = getelementptr inbounds %struct.TIFFDirEntry, ptr %94, i64 0, i32 1
  %95 = load i16, ptr %tdir_type124, align 2
  %idxprom125 = zext i16 %95 to i64
  %arrayidx126 = getelementptr inbounds i64, ptr %93, i64 %idxprom125
  %96 = load i64, ptr %arrayidx126, align 8
  %and127 = and i64 %96, %conv122
  br label %cond.end128

cond.end128:                                      ; preds = %cond.false120, %cond.true112
  %cond129 = phi i64 [ %and, %cond.true112 ], [ %and127, %cond.false120 ]
  %conv131 = trunc i64 %cond129 to i16
  store i16 %conv131, ptr %v, align 2
  %97 = load ptr, ptr %fip, align 8
  %field_passcount132 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %97, i64 0, i32 6
  %98 = load i8, ptr %field_passcount132, align 1
  %tobool134.not = icmp eq i8 %98, 0
  br i1 %tobool134.not, label %cond.false139, label %cond.true135

cond.true135:                                     ; preds = %cond.end128
  %99 = load ptr, ptr %tif.addr, align 8
  %100 = load ptr, ptr %dp.addr, align 8
  %101 = load i16, ptr %100, align 4
  %conv137 = zext i16 %101 to i32
  %call138 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %99, i32 noundef %conv137, i32 noundef 1, ptr noundef nonnull %v) #2
  br label %cond.end144

cond.false139:                                    ; preds = %cond.end128
  %102 = load ptr, ptr %tif.addr, align 8
  %103 = load ptr, ptr %dp.addr, align 8
  %104 = load i16, ptr %103, align 4
  %conv141 = zext i16 %104 to i32
  %105 = load i16, ptr %v, align 2
  %conv142 = zext i16 %105 to i32
  %call143 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %102, i32 noundef %conv141, i32 noundef %conv142) #2
  br label %cond.end144

cond.end144:                                      ; preds = %cond.false139, %cond.true135
  %cond145 = phi i32 [ %call138, %cond.true135 ], [ %call143, %cond.false139 ]
  store i32 %cond145, ptr %ok, align 4
  br label %if.end252

sw.bb147:                                         ; preds = %sw.bb103, %if.then100, %if.then100
  %106 = load ptr, ptr %tif.addr, align 8
  %tif_header148 = getelementptr inbounds %struct.tiff, ptr %106, i64 0, i32 7
  %107 = load i16, ptr %tif_header148, align 8
  %cmp151 = icmp eq i16 %107, 19789
  br i1 %cmp151, label %cond.true153, label %cond.false166

cond.true153:                                     ; preds = %sw.bb147
  %108 = load ptr, ptr %dp.addr, align 8
  %tdir_offset154 = getelementptr inbounds %struct.TIFFDirEntry, ptr %108, i64 0, i32 3
  %109 = load i32, ptr %tdir_offset154, align 4
  %110 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift155 = getelementptr inbounds %struct.tiff, ptr %110, i64 0, i32 9
  %111 = load ptr, ptr %tif_typeshift155, align 8
  %tdir_type156 = getelementptr inbounds %struct.TIFFDirEntry, ptr %108, i64 0, i32 1
  %112 = load i16, ptr %tdir_type156, align 2
  %idxprom157 = zext i16 %112 to i64
  %arrayidx158 = getelementptr inbounds i32, ptr %111, i64 %idxprom157
  %113 = load i32, ptr %arrayidx158, align 4
  %shr159 = lshr i32 %109, %113
  %conv160 = zext i32 %shr159 to i64
  %114 = load ptr, ptr %tif.addr, align 8
  %tif_typemask161 = getelementptr inbounds %struct.tiff, ptr %114, i64 0, i32 10
  %115 = load ptr, ptr %tif_typemask161, align 8
  %116 = load ptr, ptr %dp.addr, align 8
  %tdir_type162 = getelementptr inbounds %struct.TIFFDirEntry, ptr %116, i64 0, i32 1
  %117 = load i16, ptr %tdir_type162, align 2
  %idxprom163 = zext i16 %117 to i64
  %arrayidx164 = getelementptr inbounds i64, ptr %115, i64 %idxprom163
  %118 = load i64, ptr %arrayidx164, align 8
  %and165 = and i64 %118, %conv160
  br label %cond.end174

cond.false166:                                    ; preds = %sw.bb147
  %119 = load ptr, ptr %dp.addr, align 8
  %tdir_offset167 = getelementptr inbounds %struct.TIFFDirEntry, ptr %119, i64 0, i32 3
  %120 = load i32, ptr %tdir_offset167, align 4
  %conv168 = zext i32 %120 to i64
  %121 = load ptr, ptr %tif.addr, align 8
  %tif_typemask169 = getelementptr inbounds %struct.tiff, ptr %121, i64 0, i32 10
  %122 = load ptr, ptr %tif_typemask169, align 8
  %123 = load ptr, ptr %dp.addr, align 8
  %tdir_type170 = getelementptr inbounds %struct.TIFFDirEntry, ptr %123, i64 0, i32 1
  %124 = load i16, ptr %tdir_type170, align 2
  %idxprom171 = zext i16 %124 to i64
  %arrayidx172 = getelementptr inbounds i64, ptr %122, i64 %idxprom171
  %125 = load i64, ptr %arrayidx172, align 8
  %and173 = and i64 %125, %conv168
  br label %cond.end174

cond.end174:                                      ; preds = %cond.false166, %cond.true153
  %cond175 = phi i64 [ %and165, %cond.true153 ], [ %and173, %cond.false166 ]
  %conv176 = trunc i64 %cond175 to i32
  store i32 %conv176, ptr %v32, align 4
  %126 = load ptr, ptr %fip, align 8
  %field_passcount177 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %126, i64 0, i32 6
  %127 = load i8, ptr %field_passcount177, align 1
  %tobool179.not = icmp eq i8 %127, 0
  br i1 %tobool179.not, label %cond.false184, label %cond.true180

cond.true180:                                     ; preds = %cond.end174
  %128 = load ptr, ptr %tif.addr, align 8
  %129 = load ptr, ptr %dp.addr, align 8
  %130 = load i16, ptr %129, align 4
  %conv182 = zext i16 %130 to i32
  %call183 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %128, i32 noundef %conv182, i32 noundef 1, ptr noundef nonnull %v32) #2
  br label %cond.end188

cond.false184:                                    ; preds = %cond.end174
  %131 = load ptr, ptr %tif.addr, align 8
  %132 = load ptr, ptr %dp.addr, align 8
  %133 = load i16, ptr %132, align 4
  %conv186 = zext i16 %133 to i32
  %134 = load i32, ptr %v32, align 4
  %call187 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %131, i32 noundef %conv186, i32 noundef %134) #2
  br label %cond.end188

cond.end188:                                      ; preds = %cond.false184, %cond.true180
  %cond189 = phi i32 [ %call183, %cond.true180 ], [ %call187, %cond.false184 ]
  store i32 %cond189, ptr %ok, align 4
  br label %if.end252

sw.bb190:                                         ; preds = %if.then100, %if.then100, %if.then100
  %135 = load ptr, ptr %dp.addr, align 8
  %tdir_type192 = getelementptr inbounds %struct.TIFFDirEntry, ptr %135, i64 0, i32 1
  %136 = load i16, ptr %tdir_type192, align 2
  %cmp194 = icmp eq i16 %136, 11
  br i1 %cmp194, label %cond.true196, label %cond.false198

cond.true196:                                     ; preds = %sw.bb190
  %137 = load ptr, ptr %tif.addr, align 8
  %138 = load ptr, ptr %dp.addr, align 8
  %call197 = call float @TIFFFetchFloat(ptr noundef %137, ptr noundef %138)
  br label %cond.end200

cond.false198:                                    ; preds = %sw.bb190
  %139 = load ptr, ptr %tif.addr, align 8
  %140 = load ptr, ptr %dp.addr, align 8
  %call199 = call float @TIFFFetchRational(ptr noundef %139, ptr noundef %140)
  br label %cond.end200

cond.end200:                                      ; preds = %cond.false198, %cond.true196
  %cond201 = phi float [ %call197, %cond.true196 ], [ %call199, %cond.false198 ]
  store float %cond201, ptr %v191, align 4
  %141 = load ptr, ptr %fip, align 8
  %field_passcount202 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %141, i64 0, i32 6
  %142 = load i8, ptr %field_passcount202, align 1
  %tobool204.not = icmp eq i8 %142, 0
  br i1 %tobool204.not, label %cond.false209, label %cond.true205

cond.true205:                                     ; preds = %cond.end200
  %143 = load ptr, ptr %tif.addr, align 8
  %144 = load ptr, ptr %dp.addr, align 8
  %145 = load i16, ptr %144, align 4
  %conv207 = zext i16 %145 to i32
  %call208 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %143, i32 noundef %conv207, i32 noundef 1, ptr noundef nonnull %v191) #2
  br label %cond.end214

cond.false209:                                    ; preds = %cond.end200
  %146 = load ptr, ptr %tif.addr, align 8
  %147 = load ptr, ptr %dp.addr, align 8
  %148 = load i16, ptr %147, align 4
  %conv211 = zext i16 %148 to i32
  %149 = load float, ptr %v191, align 4
  %conv212 = fpext float %149 to double
  %call213 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %146, i32 noundef %conv211, double noundef %conv212) #2
  br label %cond.end214

cond.end214:                                      ; preds = %cond.false209, %cond.true205
  %cond215 = phi i32 [ %call208, %cond.true205 ], [ %call213, %cond.false209 ]
  store i32 %cond215, ptr %ok, align 4
  br label %if.end252

sw.bb216:                                         ; preds = %if.then100
  %150 = load ptr, ptr %tif.addr, align 8
  %151 = load ptr, ptr %dp.addr, align 8
  %call218 = call i32 @TIFFFetchDoubleArray(ptr noundef %150, ptr noundef %151, ptr noundef nonnull %v217)
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %land.end235, label %land.rhs220

land.rhs220:                                      ; preds = %sw.bb216
  %152 = load ptr, ptr %fip, align 8
  %field_passcount221 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %152, i64 0, i32 6
  %153 = load i8, ptr %field_passcount221, align 1
  %tobool223.not = icmp eq i8 %153, 0
  br i1 %tobool223.not, label %cond.false228, label %cond.true224

cond.true224:                                     ; preds = %land.rhs220
  %154 = load ptr, ptr %tif.addr, align 8
  %155 = load ptr, ptr %dp.addr, align 8
  %156 = load i16, ptr %155, align 4
  %conv226 = zext i16 %156 to i32
  %call227 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %154, i32 noundef %conv226, i32 noundef 1, ptr noundef nonnull %v217) #2
  br label %cond.end232

cond.false228:                                    ; preds = %land.rhs220
  %157 = load ptr, ptr %tif.addr, align 8
  %158 = load ptr, ptr %dp.addr, align 8
  %159 = load i16, ptr %158, align 4
  %conv230 = zext i16 %159 to i32
  %160 = load double, ptr %v217, align 8
  %call231 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %157, i32 noundef %conv230, double noundef %160) #2
  br label %cond.end232

cond.end232:                                      ; preds = %cond.false228, %cond.true224
  %cond233 = phi i32 [ %call227, %cond.true224 ], [ %call231, %cond.false228 ]
  %tobool234 = icmp ne i32 %cond233, 0
  %phi.cast = zext i1 %tobool234 to i32
  br label %land.end235

land.end235:                                      ; preds = %cond.end232, %sw.bb216
  %161 = phi i32 [ 0, %sw.bb216 ], [ %phi.cast, %cond.end232 ]
  store i32 %161, ptr %ok, align 4
  br label %if.end252

sw.bb237:                                         ; preds = %if.then100, %if.then100
  %162 = load ptr, ptr %tif.addr, align 8
  %163 = load ptr, ptr %dp.addr, align 8
  %call238 = call i32 @TIFFFetchString(ptr noundef %162, ptr noundef %163, ptr noundef nonnull %c)
  %cmp239 = icmp ne i32 %call238, 0
  %conv240 = zext i1 %cmp239 to i32
  store i32 %conv240, ptr %ok, align 4
  br i1 %cmp239, label %if.then243, label %if.end252

if.then243:                                       ; preds = %sw.bb237
  %arrayidx244 = getelementptr inbounds [2 x i8], ptr %c, i64 0, i64 1
  store i8 0, ptr %arrayidx244, align 1
  %164 = load ptr, ptr %tif.addr, align 8
  %165 = load ptr, ptr %dp.addr, align 8
  %166 = load i16, ptr %165, align 4
  %conv246 = zext i16 %166 to i32
  %call248 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %164, i32 noundef %conv246, ptr noundef nonnull %c) #2
  store i32 %call248, ptr %ok, align 4
  br label %if.end252

if.end252:                                        ; preds = %if.else, %sw.bb237, %if.then243, %land.end235, %cond.end214, %cond.end188, %cond.end144, %if.then100, %if.end93, %if.then96
  %167 = load i32, ptr %ok, align 4
  ret i32 %167
}

declare i32 @TIFFReassignTagToIgnore(i32 noundef, i32 noundef) #1

declare void @TIFFWarning(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @CheckDirCount(ptr noundef %tif, ptr noundef %dir, i32 noundef %count) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i32 %count, ptr %count.addr, align 4
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 2
  %0 = load i32, ptr %tdir_count, align 4
  %cmp.not = icmp eq i32 %0, %count
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %3 = load ptr, ptr %dir.addr, align 8
  %4 = load i16, ptr %3, align 4
  %conv = zext i16 %4 to i32
  %call = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %1, i32 noundef %conv) #2
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call, i64 0, i32 7
  %5 = load ptr, ptr %field_name, align 8
  %tdir_count1 = getelementptr inbounds %struct.TIFFDirEntry, ptr %3, i64 0, i32 2
  %6 = load i32, ptr %tdir_count1, align 4
  %7 = load i32, ptr %count.addr, align 4
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %2, ptr noundef nonnull @.str.19, ptr noundef %5, i32 noundef %6, i32 noundef %7) #2
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
  %call = call i32 @CheckDirCount(ptr noundef %1, ptr noundef %2, i32 noundef %conv)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end29, label %if.then

if.then:                                          ; preds = %entry
  store ptr %buf, ptr %v, align 8
  %3 = load i32, ptr %samples, align 4
  %cmp = icmp ugt i32 %3, 10
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %4 = load i32, ptr %samples, align 4
  %mul = shl i32 %4, 1
  %call6 = call ptr @_TIFFmalloc(i32 noundef %mul) #2
  store ptr %call6, ptr %v, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
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
  %16 = load i16, ptr %15, align 4
  %conv18 = zext i16 %16 to i32
  %call19 = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %13, i32 noundef %conv18) #2
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
  %0 = load i32, ptr %tdir_count, align 4
  %cmp = icmp ugt i32 %0, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_count2 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  %2 = load i32, ptr %tdir_count2, align 4
  %mul = shl i32 %2, 1
  %call = call ptr @_TIFFmalloc(i32 noundef %mul) #2
  store ptr %call, ptr %v, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %3, i64 0, i32 1
  %4 = load i16, ptr %tdir_type, align 2
  %cmp6 = icmp eq i16 %4, 1
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load ptr, ptr %dir.addr, align 8
  %7 = load ptr, ptr %v, align 8
  %call9 = call i32 @TIFFFetchByteArray(ptr noundef %5, ptr noundef %6, ptr noundef %7)
  br label %if.end11

if.else:                                          ; preds = %if.end
  %8 = load ptr, ptr %tif.addr, align 8
  %9 = load ptr, ptr %dir.addr, align 8
  %10 = load ptr, ptr %v, align 8
  %call10 = call i32 @TIFFFetchShortArray(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %storemerge = phi i32 [ %call10, %if.else ], [ %call9, %if.then8 ]
  store i32 %storemerge, ptr %status, align 4
  %tobool.not = icmp eq i32 %storemerge, 0
  br i1 %tobool.not, label %if.end16, label %if.then12

if.then12:                                        ; preds = %if.end11
  %11 = load ptr, ptr %tif.addr, align 8
  %12 = load ptr, ptr %dir.addr, align 8
  %13 = load i16, ptr %12, align 4
  %conv13 = zext i16 %13 to i32
  %tdir_count14 = getelementptr inbounds %struct.TIFFDirEntry, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %tdir_count14, align 4
  %15 = load ptr, ptr %v, align 8
  %call15 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %11, i32 noundef %conv13, i32 noundef %14, ptr noundef %15) #2
  store i32 %call15, ptr %status, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end11
  %16 = load ptr, ptr %v, align 8
  %cmp18.not = icmp eq ptr %16, %buf
  br i1 %cmp18.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end16
  %17 = load ptr, ptr %v, align 8
  call void @_TIFFfree(ptr noundef %17) #2
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end16
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
  %td_samplesperpixel = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 15
  %0 = load i16, ptr %td_samplesperpixel, align 2
  %conv = zext i16 %0 to i32
  store i32 %conv, ptr %samples, align 4
  store i32 0, ptr %status, align 4
  %1 = load ptr, ptr %tif.addr, align 8
  %2 = load ptr, ptr %dir.addr, align 8
  %call = call i32 @CheckDirCount(ptr noundef %1, ptr noundef %2, i32 noundef %conv)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end26, label %if.then

if.then:                                          ; preds = %entry
  store ptr %buf, ptr %v, align 8
  %3 = load i32, ptr %samples, align 4
  %cmp = icmp ugt i32 %3, 10
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %4 = load i32, ptr %samples, align 4
  %mul = shl i32 %4, 3
  %call6 = call ptr @_TIFFmalloc(i32 noundef %mul) #2
  store ptr %call6, ptr %v, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
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
  %16 = load i16, ptr %15, align 4
  %conv16 = zext i16 %16 to i32
  %call17 = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %13, i32 noundef %conv16) #2
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
  %conv = trunc i64 %nstrips to i32
  %call = call i32 @CheckDirCount(ptr noundef %tif, ptr noundef %dir, i32 noundef %conv)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %lpp.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load i64, ptr %nstrips.addr, align 8
  %.tr = trunc i64 %3 to i32
  %conv2 = shl i32 %.tr, 2
  %call3 = call ptr @CheckMalloc(ptr noundef %2, i32 noundef %conv2, ptr noundef nonnull @.str.25)
  %4 = load ptr, ptr %lpp.addr, align 8
  store ptr %call3, ptr %4, align 8
  %cmp4 = icmp eq ptr %call3, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %5 = load ptr, ptr %lpp.addr, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %lp, align 8
  %7 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %7, i64 0, i32 1
  %8 = load i16, ptr %tdir_type, align 2
  %cmp9 = icmp eq i16 %8, 3
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end7
  %9 = load ptr, ptr %tif.addr, align 8
  %10 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %10, i64 0, i32 2
  %11 = load i32, ptr %tdir_count, align 4
  %mul13 = shl i32 %11, 1
  %call15 = call ptr @CheckMalloc(ptr noundef %9, i32 noundef %mul13, ptr noundef nonnull @.str.26)
  store ptr %call15, ptr %dp, align 8
  %cmp16 = icmp eq ptr %call15, null
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then11
  store i32 0, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.then11
  %12 = load ptr, ptr %tif.addr, align 8
  %13 = load ptr, ptr %dir.addr, align 8
  %14 = load ptr, ptr %dp, align 8
  %call20 = call i32 @TIFFFetchShortArray(ptr noundef %12, ptr noundef %13, ptr noundef %14)
  store i32 %call20, ptr %status, align 4
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %if.end28, label %if.then23

if.then23:                                        ; preds = %if.end19
  %15 = load ptr, ptr %dp, align 8
  store ptr %15, ptr %wp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then23
  %16 = load i64, ptr %nstrips.addr, align 8
  %dec = add nsw i64 %16, -1
  store i64 %dec, ptr %nstrips.addr, align 8
  %cmp24 = icmp sgt i64 %16, 0
  br i1 %cmp24, label %while.body, label %if.end28

while.body:                                       ; preds = %while.cond
  %17 = load ptr, ptr %wp, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %17, i64 1
  store ptr %incdec.ptr, ptr %wp, align 8
  %18 = load i16, ptr %17, align 2
  %conv26 = zext i16 %18 to i32
  %19 = load ptr, ptr %lp, align 8
  %incdec.ptr27 = getelementptr inbounds i32, ptr %19, i64 1
  store ptr %incdec.ptr27, ptr %lp, align 8
  store i32 %conv26, ptr %19, align 4
  br label %while.cond, !llvm.loop !14

if.end28:                                         ; preds = %while.cond, %if.end19
  %20 = load ptr, ptr %dp, align 8
  call void @_TIFFfree(ptr noundef %20) #2
  br label %if.end30

if.else:                                          ; preds = %if.end7
  %21 = load ptr, ptr %tif.addr, align 8
  %22 = load ptr, ptr %dir.addr, align 8
  %23 = load ptr, ptr %lp, align 8
  %call29 = call i32 @TIFFFetchLongArray(ptr noundef %21, ptr noundef %22, ptr noundef %23)
  store i32 %call29, ptr %status, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.end28
  %24 = load i32, ptr %status, align 4
  store i32 %24, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end30, %if.then18, %if.then6, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFFetchData(ptr noundef %tif, ptr noundef %dir, ptr noundef %cp) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %cc = alloca i32, align 4
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
  %3 = load i32, ptr %tdir_count, align 4
  %mul = mul i32 %3, %1
  store i32 %mul, ptr %cc, align 4
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %4, i64 0, i32 3
  %5 = load i32, ptr %tif_flags, align 8
  %and = and i32 %5, 2048
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 51
  %7 = load ptr, ptr %tif_seekproc, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 48
  %8 = load ptr, ptr %tif_clientdata, align 8
  %9 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %9, i64 0, i32 3
  %10 = load i32, ptr %tdir_offset, align 4
  %call = call i32 %7(ptr noundef %8, i32 noundef %10, i32 noundef 0) #2
  %tdir_offset1 = getelementptr inbounds %struct.TIFFDirEntry, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %tdir_offset1, align 4
  %cmp2 = icmp eq i32 %call, %11
  br i1 %cmp2, label %if.end, label %bad

if.end:                                           ; preds = %if.then
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_readproc = getelementptr inbounds %struct.tiff, ptr %12, i64 0, i32 49
  %13 = load ptr, ptr %tif_readproc, align 8
  %tif_clientdata4 = getelementptr inbounds %struct.tiff, ptr %12, i64 0, i32 48
  %14 = load ptr, ptr %tif_clientdata4, align 8
  %15 = load ptr, ptr %cp.addr, align 8
  %16 = load i32, ptr %cc, align 4
  %call5 = call i32 %13(ptr noundef %14, ptr noundef %15, i32 noundef %16) #2
  %cmp6 = icmp eq i32 %call5, %16
  br i1 %cmp6, label %if.end14, label %bad

if.else:                                          ; preds = %entry
  %17 = load ptr, ptr %dir.addr, align 8
  %tdir_offset9 = getelementptr inbounds %struct.TIFFDirEntry, ptr %17, i64 0, i32 3
  %18 = load i32, ptr %tdir_offset9, align 4
  %19 = load i32, ptr %cc, align 4
  %add = add i32 %18, %19
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_size = getelementptr inbounds %struct.tiff, ptr %20, i64 0, i32 45
  %21 = load i32, ptr %tif_size, align 8
  %cmp10 = icmp sgt i32 %add, %21
  br i1 %cmp10, label %bad, label %if.end12

if.end12:                                         ; preds = %if.else
  %22 = load ptr, ptr %cp.addr, align 8
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_base = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 44
  %24 = load ptr, ptr %tif_base, align 8
  %25 = load ptr, ptr %dir.addr, align 8
  %tdir_offset13 = getelementptr inbounds %struct.TIFFDirEntry, ptr %25, i64 0, i32 3
  %26 = load i32, ptr %tdir_offset13, align 4
  %idx.ext = zext i32 %26 to i64
  %add.ptr = getelementptr inbounds i8, ptr %24, i64 %idx.ext
  %27 = load i32, ptr %cc, align 4
  call void @_TIFFmemcpy(ptr noundef %22, ptr noundef %add.ptr, i32 noundef %27) #2
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.end12
  %28 = load ptr, ptr %tif.addr, align 8
  %tif_flags15 = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 3
  %29 = load i32, ptr %tif_flags15, align 8
  %and16 = and i32 %29, 128
  %tobool.not = icmp eq i32 %and16, 0
  br i1 %tobool.not, label %if.end31, label %if.then17

if.then17:                                        ; preds = %if.end14
  %30 = load ptr, ptr %dir.addr, align 8
  %tdir_type18 = getelementptr inbounds %struct.TIFFDirEntry, ptr %30, i64 0, i32 1
  %31 = load i16, ptr %tdir_type18, align 2
  switch i16 %31, label %if.end31 [
    i16 3, label %sw.bb
    i16 8, label %sw.bb
    i16 4, label %sw.bb21
    i16 9, label %sw.bb21
    i16 11, label %sw.bb21
    i16 5, label %sw.bb24
    i16 10, label %sw.bb24
    i16 12, label %sw.bb28
  ]

sw.bb:                                            ; preds = %if.then17, %if.then17
  %32 = load ptr, ptr %cp.addr, align 8
  %33 = load ptr, ptr %dir.addr, align 8
  %tdir_count19 = getelementptr inbounds %struct.TIFFDirEntry, ptr %33, i64 0, i32 2
  %34 = load i32, ptr %tdir_count19, align 4
  %conv20 = zext i32 %34 to i64
  call void @TIFFSwabArrayOfShort(ptr noundef %32, i64 noundef %conv20) #2
  br label %if.end31

sw.bb21:                                          ; preds = %if.then17, %if.then17, %if.then17
  %35 = load ptr, ptr %cp.addr, align 8
  %36 = load ptr, ptr %dir.addr, align 8
  %tdir_count22 = getelementptr inbounds %struct.TIFFDirEntry, ptr %36, i64 0, i32 2
  %37 = load i32, ptr %tdir_count22, align 4
  %conv23 = zext i32 %37 to i64
  call void @TIFFSwabArrayOfLong(ptr noundef %35, i64 noundef %conv23) #2
  br label %if.end31

sw.bb24:                                          ; preds = %if.then17, %if.then17
  %38 = load ptr, ptr %cp.addr, align 8
  %39 = load ptr, ptr %dir.addr, align 8
  %tdir_count25 = getelementptr inbounds %struct.TIFFDirEntry, ptr %39, i64 0, i32 2
  %40 = load i32, ptr %tdir_count25, align 4
  %mul26 = shl i32 %40, 1
  %conv27 = zext i32 %mul26 to i64
  call void @TIFFSwabArrayOfLong(ptr noundef %38, i64 noundef %conv27) #2
  br label %if.end31

sw.bb28:                                          ; preds = %if.then17
  %41 = load ptr, ptr %cp.addr, align 8
  %42 = load ptr, ptr %dir.addr, align 8
  %tdir_count29 = getelementptr inbounds %struct.TIFFDirEntry, ptr %42, i64 0, i32 2
  %43 = load i32, ptr %tdir_count29, align 4
  %conv30 = zext i32 %43 to i64
  call void @TIFFSwabArrayOfDouble(ptr noundef %41, i64 noundef %conv30) #2
  br label %if.end31

if.end31:                                         ; preds = %if.then17, %sw.bb, %sw.bb21, %sw.bb24, %sw.bb28, %if.end14
  %44 = load i32, ptr %cc, align 4
  br label %return

bad:                                              ; preds = %if.else, %if.end, %if.then
  %45 = load ptr, ptr %tif.addr, align 8
  %46 = load ptr, ptr %45, align 8
  %47 = load ptr, ptr %dir.addr, align 8
  %48 = load i16, ptr %47, align 4
  %conv32 = zext i16 %48 to i32
  %call33 = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %45, i32 noundef %conv32) #2
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call33, i64 0, i32 7
  %49 = load ptr, ptr %field_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %46, ptr noundef nonnull @.str.20, ptr noundef %49) #2
  br label %return

return:                                           ; preds = %bad, %if.end31
  %storemerge = phi i32 [ 0, %bad ], [ %44, %if.end31 ]
  ret i32 %storemerge
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
  %8 = load i16, ptr %7, align 4
  %conv4 = zext i16 %8 to i32
  %9 = load i16, ptr %v, align 2
  %conv5 = zext i16 %9 to i32
  %arrayidx6 = getelementptr inbounds [2 x i16], ptr %v, i64 0, i64 1
  %10 = load i16, ptr %arrayidx6, align 2
  %conv7 = zext i16 %10 to i32
  %call8 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %6, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv7) #2
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
  %i = alloca i32, align 4
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
  %5 = load i32, ptr %tdir_count, align 4
  %mul = shl i32 %5, 2
  %call4 = call ptr @CheckMalloc(ptr noundef %3, i32 noundef %mul, ptr noundef nonnull @TIFFFetchRefBlackWhite.mesg)
  store ptr %call4, ptr %cp, align 8
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %6 = load ptr, ptr %tif.addr, align 8
  %7 = load ptr, ptr %dir.addr, align 8
  %8 = load ptr, ptr %cp, align 8
  %call5 = call i32 @TIFFFetchLongArray(ptr noundef %6, ptr noundef %7, ptr noundef %8)
  %tobool6 = icmp ne i32 %call5, 0
  %phi.cast = zext i1 %tobool6 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %9 = phi i32 [ 0, %if.end ], [ %phi.cast, %land.rhs ]
  store i32 %9, ptr %ok, align 4
  %cmp7.not = icmp eq i32 %9, 0
  br i1 %cmp7.not, label %if.end29, label %if.then9

if.then9:                                         ; preds = %land.end
  %10 = load ptr, ptr %tif.addr, align 8
  %11 = load ptr, ptr %dir.addr, align 8
  %tdir_count10 = getelementptr inbounds %struct.TIFFDirEntry, ptr %11, i64 0, i32 2
  %12 = load i32, ptr %tdir_count10, align 4
  %mul12 = shl i32 %12, 2
  %call14 = call ptr @CheckMalloc(ptr noundef %10, i32 noundef %mul12, ptr noundef nonnull @TIFFFetchRefBlackWhite.mesg)
  store ptr %call14, ptr %fp, align 8
  %cmp15 = icmp ne ptr %call14, null
  %conv16 = zext i1 %cmp15 to i32
  store i32 %conv16, ptr %ok, align 4
  br i1 %cmp15, label %for.cond, label %if.end29

for.cond:                                         ; preds = %if.then9, %for.body
  %storemerge1 = phi i32 [ %inc, %for.body ], [ 0, %if.then9 ]
  store i32 %storemerge1, ptr %i, align 4
  %13 = load ptr, ptr %dir.addr, align 8
  %tdir_count20 = getelementptr inbounds %struct.TIFFDirEntry, ptr %13, i64 0, i32 2
  %14 = load i32, ptr %tdir_count20, align 4
  %cmp21 = icmp ult i32 %storemerge1, %14
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %cp, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom = zext i32 %16 to i64
  %arrayidx = getelementptr inbounds i32, ptr %15, i64 %idxprom
  %17 = load i32, ptr %arrayidx, align 4
  %conv23 = uitofp i32 %17 to float
  %18 = load ptr, ptr %fp, align 8
  %idxprom24 = zext i32 %16 to i64
  %arrayidx25 = getelementptr inbounds float, ptr %18, i64 %idxprom24
  store float %conv23, ptr %arrayidx25, align 4
  %19 = load i32, ptr %i, align 4
  %inc = add i32 %19, 1
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %tif.addr, align 8
  %21 = load ptr, ptr %dir.addr, align 8
  %22 = load i16, ptr %21, align 4
  %conv26 = zext i16 %22 to i32
  %23 = load ptr, ptr %fp, align 8
  %call27 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %20, i32 noundef %conv26, ptr noundef %23) #2
  store i32 %call27, ptr %ok, align 4
  call void @_TIFFfree(ptr noundef %23) #2
  br label %if.end29

if.end29:                                         ; preds = %if.then9, %for.end, %land.end
  %24 = load ptr, ptr %cp, align 8
  %tobool30.not = icmp eq ptr %24, null
  br i1 %tobool30.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end29
  %25 = load ptr, ptr %cp, align 8
  call void @_TIFFfree(ptr noundef %25) #2
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end29
  %26 = load i32, ptr %ok, align 4
  br label %return

return:                                           ; preds = %if.end32, %if.then
  %storemerge = phi i32 [ %26, %if.end32 ], [ %call, %if.then ]
  ret i32 %storemerge
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
  %5 = load i32, ptr %td_nstrips, align 4
  %mul = shl i32 %5, 2
  %call = call ptr @CheckMalloc(ptr noundef %3, i32 noundef %mul, ptr noundef nonnull @.str.17)
  %td_stripbytecount3 = getelementptr inbounds %struct.TIFFDirectory, ptr %4, i64 0, i32 45
  store ptr %call, ptr %td_stripbytecount3, align 8
  %6 = load ptr, ptr %td, align 8
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i64 0, i32 10
  %7 = load i16, ptr %td_compression, align 8
  %cmp.not = icmp eq i16 %7, 1
  br i1 %cmp.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %8 = load i16, ptr %dircount.addr, align 2
  %conv7 = zext i16 %8 to i32
  %mul8 = mul nuw nsw i32 %conv7, 12
  %add9 = add nuw nsw i32 %mul8, 14
  store i32 %add9, ptr %space, align 4
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_sizeproc = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 53
  %10 = load ptr, ptr %tif_sizeproc, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 48
  %11 = load ptr, ptr %tif_clientdata, align 8
  %call11 = call i32 %10(ptr noundef %11) #2
  store i32 %call11, ptr %filesize, align 4
  %12 = load ptr, ptr %dir.addr, align 8
  store ptr %12, ptr %dp, align 8
  %13 = load i16, ptr %dircount.addr, align 2
  store i16 %13, ptr %n, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then6
  %14 = load i16, ptr %n, align 2
  %cmp13.not = icmp eq i16 %14, 0
  br i1 %cmp13.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %dp, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %15, i64 0, i32 2
  %16 = load i32, ptr %tdir_count, align 4
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %15, i64 0, i32 1
  %17 = load i16, ptr %tdir_type, align 2
  %idxprom = zext i16 %17 to i64
  %arrayidx = getelementptr inbounds [0 x i32], ptr @tiffDataWidth, i64 0, i64 %idxprom
  %18 = load i32, ptr %arrayidx, align 4
  %mul15 = mul i32 %16, %18
  store i32 %mul15, ptr %cc, align 4
  %cmp17 = icmp ugt i32 %mul15, 4
  br i1 %cmp17, label %if.then19, label %for.inc

if.then19:                                        ; preds = %for.body
  %19 = load i32, ptr %cc, align 4
  %20 = load i32, ptr %space, align 4
  %add20 = add i32 %20, %19
  store i32 %add20, ptr %space, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then19
  %21 = load i16, ptr %n, align 2
  %dec = add i16 %21, -1
  store i16 %dec, ptr %n, align 2
  %22 = load ptr, ptr %dp, align 8
  %incdec.ptr = getelementptr inbounds %struct.TIFFDirEntry, ptr %22, i64 1
  store ptr %incdec.ptr, ptr %dp, align 8
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %23 = load i32, ptr %filesize, align 4
  %24 = load i32, ptr %space, align 4
  %sub = sub i32 %23, %24
  store i32 %sub, ptr %space, align 4
  %25 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i64 0, i32 24
  %26 = load i16, ptr %td_planarconfig, align 2
  %cmp23 = icmp eq i16 %26, 2
  br i1 %cmp23, label %if.then25, label %if.end27

if.then25:                                        ; preds = %for.end
  %27 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %27, i64 0, i32 15
  %28 = load i16, ptr %td_samplesperpixel, align 2
  %conv26 = zext i16 %28 to i32
  %29 = load i32, ptr %space, align 4
  %div = udiv i32 %29, %conv26
  store i32 %div, ptr %space, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %for.end
  br label %for.cond28

for.cond28:                                       ; preds = %for.body33, %if.end27
  %storemerge1 = phi i16 [ 0, %if.end27 ], [ %inc, %for.body33 ]
  store i16 %storemerge1, ptr %i, align 2
  %conv29 = zext i16 %storemerge1 to i32
  %30 = load ptr, ptr %td, align 8
  %td_nstrips30 = getelementptr inbounds %struct.TIFFDirectory, ptr %30, i64 0, i32 43
  %31 = load i32, ptr %td_nstrips30, align 4
  %cmp31 = icmp ugt i32 %31, %conv29
  br i1 %cmp31, label %for.body33, label %for.end38

for.body33:                                       ; preds = %for.cond28
  %32 = load i32, ptr %space, align 4
  %33 = load ptr, ptr %td, align 8
  %td_stripbytecount34 = getelementptr inbounds %struct.TIFFDirectory, ptr %33, i64 0, i32 45
  %34 = load ptr, ptr %td_stripbytecount34, align 8
  %35 = load i16, ptr %i, align 2
  %idxprom35 = zext i16 %35 to i64
  %arrayidx36 = getelementptr inbounds i32, ptr %34, i64 %idxprom35
  store i32 %32, ptr %arrayidx36, align 4
  %36 = load i16, ptr %i, align 2
  %inc = add i16 %36, 1
  br label %for.cond28, !llvm.loop !17

for.end38:                                        ; preds = %for.cond28
  %37 = load i16, ptr %i, align 2
  %dec39 = add i16 %37, -1
  store i16 %dec39, ptr %i, align 2
  %38 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %38, i64 0, i32 44
  %39 = load ptr, ptr %td_stripoffset, align 8
  %idxprom40 = zext i16 %dec39 to i64
  %arrayidx41 = getelementptr inbounds i32, ptr %39, i64 %idxprom40
  %40 = load i32, ptr %arrayidx41, align 4
  %td_stripbytecount42 = getelementptr inbounds %struct.TIFFDirectory, ptr %38, i64 0, i32 45
  %41 = load ptr, ptr %td_stripbytecount42, align 8
  %42 = load i16, ptr %i, align 2
  %idxprom43 = zext i16 %42 to i64
  %arrayidx44 = getelementptr inbounds i32, ptr %41, i64 %idxprom43
  %43 = load i32, ptr %arrayidx44, align 4
  %add45 = add i32 %40, %43
  %44 = load i32, ptr %filesize, align 4
  %cmp46 = icmp sgt i32 %add45, %44
  br i1 %cmp46, label %if.then48, label %if.end72

if.then48:                                        ; preds = %for.end38
  %45 = load i32, ptr %filesize, align 4
  %46 = load ptr, ptr %td, align 8
  %td_stripoffset49 = getelementptr inbounds %struct.TIFFDirectory, ptr %46, i64 0, i32 44
  %47 = load ptr, ptr %td_stripoffset49, align 8
  %48 = load i16, ptr %i, align 2
  %idxprom50 = zext i16 %48 to i64
  %arrayidx51 = getelementptr inbounds i32, ptr %47, i64 %idxprom50
  %49 = load i32, ptr %arrayidx51, align 4
  %sub52 = sub i32 %45, %49
  %50 = load ptr, ptr %td, align 8
  %td_stripbytecount53 = getelementptr inbounds %struct.TIFFDirectory, ptr %50, i64 0, i32 45
  %51 = load ptr, ptr %td_stripbytecount53, align 8
  %52 = load i16, ptr %i, align 2
  %idxprom54 = zext i16 %52 to i64
  %arrayidx55 = getelementptr inbounds i32, ptr %51, i64 %idxprom54
  store i32 %sub52, ptr %arrayidx55, align 4
  br label %if.end72

if.else:                                          ; preds = %if.end
  %53 = load ptr, ptr %tif.addr, align 8
  %call57 = call i32 @TIFFScanlineSize(ptr noundef %53) #2
  store i32 %call57, ptr %rowbytes, align 4
  %54 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %54, i64 0, i32 2
  %55 = load i32, ptr %td_imagelength, align 4
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %54, i64 0, i32 42
  %56 = load i32, ptr %td_stripsperimage, align 8
  %div58 = udiv i32 %55, %56
  store i32 %div58, ptr %rowsperstrip, align 4
  br label %for.cond59

for.cond59:                                       ; preds = %for.body64, %if.else
  %storemerge = phi i16 [ 0, %if.else ], [ %inc70, %for.body64 ]
  store i16 %storemerge, ptr %i, align 2
  %conv60 = zext i16 %storemerge to i32
  %57 = load ptr, ptr %td, align 8
  %td_nstrips61 = getelementptr inbounds %struct.TIFFDirectory, ptr %57, i64 0, i32 43
  %58 = load i32, ptr %td_nstrips61, align 4
  %cmp62 = icmp ugt i32 %58, %conv60
  br i1 %cmp62, label %for.body64, label %if.end72

for.body64:                                       ; preds = %for.cond59
  %59 = load i32, ptr %rowbytes, align 4
  %60 = load i32, ptr %rowsperstrip, align 4
  %mul65 = mul i32 %59, %60
  %61 = load ptr, ptr %td, align 8
  %td_stripbytecount66 = getelementptr inbounds %struct.TIFFDirectory, ptr %61, i64 0, i32 45
  %62 = load ptr, ptr %td_stripbytecount66, align 8
  %63 = load i16, ptr %i, align 2
  %idxprom67 = zext i16 %63 to i64
  %arrayidx68 = getelementptr inbounds i32, ptr %62, i64 %idxprom67
  store i32 %mul65, ptr %arrayidx68, align 4
  %64 = load i16, ptr %i, align 2
  %inc70 = add i16 %64, 1
  br label %for.cond59, !llvm.loop !18

if.end72:                                         ; preds = %for.cond59, %for.end38, %if.then48
  %65 = load ptr, ptr %tif.addr, align 8
  %tif_dir73 = getelementptr inbounds %struct.tiff, ptr %65, i64 0, i32 6
  %66 = load i64, ptr %tif_dir73, align 8
  %or = or i64 %66, 16777216
  store i64 %or, ptr %tif_dir73, align 8
  %and = and i64 %66, 131072
  %tobool78.not = icmp eq i64 %and, 0
  br i1 %tobool78.not, label %if.then79, label %if.end81

if.then79:                                        ; preds = %if.end72
  %67 = load ptr, ptr %td, align 8
  %td_imagelength80 = getelementptr inbounds %struct.TIFFDirectory, ptr %67, i64 0, i32 2
  %68 = load i32, ptr %td_imagelength80, align 4
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %67, i64 0, i32 16
  store i32 %68, ptr %td_rowsperstrip, align 4
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
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 45
  %0 = load ptr, ptr %td_stripbytecount, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %bytecount, align 4
  %td_stripoffset = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 44
  %2 = load ptr, ptr %td_stripoffset, align 8
  %3 = load i32, ptr %2, align 4
  store i32 %3, ptr %offset, align 4
  %4 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFVTileSize(ptr noundef %4, i32 noundef 1) #2
  store i32 %call, ptr %rowbytes, align 4
  %cmp = icmp sgt i32 %call, 8192
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %rowbytes, align 4
  store i32 %5, ptr %stripbytes, align 4
  store i32 1, ptr %rowsperstrip, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i32, ptr %rowbytes, align 4
  %div = sdiv i32 8192, %6
  store i32 %div, ptr %rowsperstrip, align 4
  %mul = mul i32 %6, %div
  store i32 %mul, ptr %stripbytes, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, ptr %rowsperstrip, align 4
  %8 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i64 0, i32 16
  %9 = load i32, ptr %td_rowsperstrip, align 4
  %cmp2.not = icmp ult i32 %7, %9
  br i1 %cmp2.not, label %if.end4, label %return

if.end4:                                          ; preds = %if.end
  %10 = load i32, ptr %bytecount, align 4
  %11 = load i32, ptr %stripbytes, align 4
  %sub = add i32 %11, -1
  %add = add i32 %10, %sub
  %div5 = udiv i32 %add, %11
  store i32 %div5, ptr %nstrips, align 4
  %12 = load ptr, ptr %tif.addr, align 8
  %mul6 = shl i32 %div5, 2
  %call8 = call ptr @CheckMalloc(ptr noundef %12, i32 noundef %mul6, ptr noundef nonnull @.str.27)
  store ptr %call8, ptr %newcounts, align 8
  %mul10 = shl i32 %div5, 2
  %call12 = call ptr @CheckMalloc(ptr noundef %12, i32 noundef %mul10, ptr noundef nonnull @.str.28)
  store ptr %call12, ptr %newoffsets, align 8
  %cmp13 = icmp eq ptr %call8, null
  %13 = load ptr, ptr %newoffsets, align 8
  %cmp15 = icmp eq ptr %13, null
  %or.cond = select i1 %cmp13, i1 true, i1 %cmp15
  br i1 %or.cond, label %if.then17, label %for.cond

if.then17:                                        ; preds = %if.end4
  %14 = load ptr, ptr %newcounts, align 8
  %cmp18.not = icmp eq ptr %14, null
  br i1 %cmp18.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.then17
  %15 = load ptr, ptr %newcounts, align 8
  call void @_TIFFfree(ptr noundef %15) #2
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then17
  %16 = load ptr, ptr %newoffsets, align 8
  %cmp22.not = icmp eq ptr %16, null
  br i1 %cmp22.not, label %return, label %if.then24

if.then24:                                        ; preds = %if.end21
  %17 = load ptr, ptr %newoffsets, align 8
  call void @_TIFFfree(ptr noundef %17) #2
  br label %return

for.cond:                                         ; preds = %if.end4, %if.end32
  %storemerge = phi i32 [ %inc, %if.end32 ], [ 0, %if.end4 ]
  store i32 %storemerge, ptr %strip, align 4
  %18 = load i32, ptr %nstrips, align 4
  %cmp27 = icmp ult i32 %storemerge, %18
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, ptr %stripbytes, align 4
  %20 = load i32, ptr %bytecount, align 4
  %cmp29 = icmp sgt i32 %19, %20
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %for.body
  %21 = load i32, ptr %bytecount, align 4
  store i32 %21, ptr %stripbytes, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %for.body
  %22 = load i32, ptr %stripbytes, align 4
  %23 = load ptr, ptr %newcounts, align 8
  %24 = load i32, ptr %strip, align 4
  %idxprom = zext i32 %24 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %23, i64 %idxprom
  store i32 %22, ptr %arrayidx33, align 4
  %25 = load i32, ptr %offset, align 4
  %26 = load ptr, ptr %newoffsets, align 8
  %idxprom34 = zext i32 %24 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %26, i64 %idxprom34
  store i32 %25, ptr %arrayidx35, align 4
  %27 = load i32, ptr %stripbytes, align 4
  %add36 = add i32 %25, %27
  store i32 %add36, ptr %offset, align 4
  %28 = load i32, ptr %bytecount, align 4
  %sub37 = sub i32 %28, %27
  store i32 %sub37, ptr %bytecount, align 4
  %29 = load i32, ptr %strip, align 4
  %inc = add i32 %29, 1
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %30 = load i32, ptr %nstrips, align 4
  %31 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %31, i64 0, i32 43
  store i32 %30, ptr %td_nstrips, align 4
  %td_stripsperimage = getelementptr inbounds %struct.TIFFDirectory, ptr %31, i64 0, i32 42
  store i32 %30, ptr %td_stripsperimage, align 8
  %32 = load ptr, ptr %tif.addr, align 8
  %33 = load i32, ptr %rowsperstrip, align 4
  %call38 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %32, i32 noundef 278, i32 noundef %33) #2
  %34 = load ptr, ptr %td, align 8
  %td_stripbytecount39 = getelementptr inbounds %struct.TIFFDirectory, ptr %34, i64 0, i32 45
  %35 = load ptr, ptr %td_stripbytecount39, align 8
  call void @_TIFFfree(ptr noundef %35) #2
  %td_stripoffset40 = getelementptr inbounds %struct.TIFFDirectory, ptr %34, i64 0, i32 44
  %36 = load ptr, ptr %td_stripoffset40, align 8
  call void @_TIFFfree(ptr noundef %36) #2
  %37 = load ptr, ptr %newcounts, align 8
  %38 = load ptr, ptr %td, align 8
  %td_stripbytecount41 = getelementptr inbounds %struct.TIFFDirectory, ptr %38, i64 0, i32 45
  store ptr %37, ptr %td_stripbytecount41, align 8
  %39 = load ptr, ptr %newoffsets, align 8
  %td_stripoffset42 = getelementptr inbounds %struct.TIFFDirectory, ptr %38, i64 0, i32 44
  store ptr %39, ptr %td_stripoffset42, align 8
  br label %return

return:                                           ; preds = %if.end21, %if.then24, %if.end, %for.end
  ret void
}

declare i32 @TIFFTileSize(ptr noundef) #1

declare i32 @TIFFScanlineSize(ptr noundef) #1

declare ptr @_TIFFmalloc(i32 noundef) #1

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
  %0 = load i32, ptr %tdir_count, align 4
  %cmp = icmp ult i32 %0, 3
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
  %4 = load i32, ptr %tdir_count4, align 4
  switch i32 %4, label %return [
    i32 2, label %sw.bb
    i32 1, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.then3
  %5 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i64 0, i32 3
  %6 = load i32, ptr %tdir_offset, align 4
  %conv5 = trunc i32 %6 to i16
  %7 = load ptr, ptr %v.addr, align 8
  %arrayidx = getelementptr inbounds i16, ptr %7, i64 1
  store i16 %conv5, ptr %arrayidx, align 2
  br label %sw.bb6

sw.bb6:                                           ; preds = %sw.bb, %if.then3
  %8 = load ptr, ptr %dir.addr, align 8
  %tdir_offset7 = getelementptr inbounds %struct.TIFFDirEntry, ptr %8, i64 0, i32 3
  %9 = load i32, ptr %tdir_offset7, align 4
  %shr = lshr i32 %9, 16
  %conv8 = trunc i32 %shr to i16
  %10 = load ptr, ptr %v.addr, align 8
  store i16 %conv8, ptr %10, align 2
  br label %return

if.else:                                          ; preds = %if.then
  %11 = load ptr, ptr %dir.addr, align 8
  %tdir_count10 = getelementptr inbounds %struct.TIFFDirEntry, ptr %11, i64 0, i32 2
  %12 = load i32, ptr %tdir_count10, align 4
  switch i32 %12, label %return [
    i32 2, label %sw.bb11
    i32 1, label %sw.bb16
  ]

sw.bb11:                                          ; preds = %if.else
  %13 = load ptr, ptr %dir.addr, align 8
  %tdir_offset12 = getelementptr inbounds %struct.TIFFDirEntry, ptr %13, i64 0, i32 3
  %14 = load i32, ptr %tdir_offset12, align 4
  %shr13 = lshr i32 %14, 16
  %conv14 = trunc i32 %shr13 to i16
  %15 = load ptr, ptr %v.addr, align 8
  %arrayidx15 = getelementptr inbounds i16, ptr %15, i64 1
  store i16 %conv14, ptr %arrayidx15, align 2
  br label %sw.bb16

sw.bb16:                                          ; preds = %sw.bb11, %if.else
  %16 = load ptr, ptr %dir.addr, align 8
  %tdir_offset17 = getelementptr inbounds %struct.TIFFDirEntry, ptr %16, i64 0, i32 3
  %17 = load i32, ptr %tdir_offset17, align 4
  %conv19 = trunc i32 %17 to i16
  %18 = load ptr, ptr %v.addr, align 8
  store i16 %conv19, ptr %18, align 2
  br label %return

if.else22:                                        ; preds = %entry
  %19 = load ptr, ptr %tif.addr, align 8
  %20 = load ptr, ptr %dir.addr, align 8
  %21 = load ptr, ptr %v.addr, align 8
  %call = call i32 @TIFFFetchData(ptr noundef %19, ptr noundef %20, ptr noundef %21)
  %cmp23 = icmp ne i32 %call, 0
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
  %0 = load i32, ptr %tdir_count, align 4
  %cmp = icmp ult i32 %0, 5
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
  %4 = load i32, ptr %tdir_count4, align 4
  switch i32 %4, label %return [
    i32 4, label %sw.bb
    i32 3, label %sw.bb6
    i32 2, label %sw.bb11
    i32 1, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.then3
  %5 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i64 0, i32 3
  %6 = load i32, ptr %tdir_offset, align 4
  %7 = trunc i32 %6 to i16
  %conv5 = and i16 %7, 255
  %8 = load ptr, ptr %v.addr, align 8
  %arrayidx = getelementptr inbounds i16, ptr %8, i64 3
  store i16 %conv5, ptr %arrayidx, align 2
  br label %sw.bb6

sw.bb6:                                           ; preds = %sw.bb, %if.then3
  %9 = load ptr, ptr %dir.addr, align 8
  %tdir_offset7 = getelementptr inbounds %struct.TIFFDirEntry, ptr %9, i64 0, i32 3
  %10 = load i32, ptr %tdir_offset7, align 4
  %11 = trunc i32 %10 to i16
  %12 = lshr i16 %11, 8
  %13 = load ptr, ptr %v.addr, align 8
  %arrayidx10 = getelementptr inbounds i16, ptr %13, i64 2
  store i16 %12, ptr %arrayidx10, align 2
  br label %sw.bb11

sw.bb11:                                          ; preds = %sw.bb6, %if.then3
  %14 = load ptr, ptr %dir.addr, align 8
  %tdir_offset12 = getelementptr inbounds %struct.TIFFDirEntry, ptr %14, i64 0, i32 3
  %15 = load i32, ptr %tdir_offset12, align 4
  %shr13 = lshr i32 %15, 16
  %16 = trunc i32 %shr13 to i16
  %conv15 = and i16 %16, 255
  %17 = load ptr, ptr %v.addr, align 8
  %arrayidx16 = getelementptr inbounds i16, ptr %17, i64 1
  store i16 %conv15, ptr %arrayidx16, align 2
  br label %sw.bb17

sw.bb17:                                          ; preds = %sw.bb11, %if.then3
  %18 = load ptr, ptr %dir.addr, align 8
  %tdir_offset18 = getelementptr inbounds %struct.TIFFDirEntry, ptr %18, i64 0, i32 3
  %19 = load i32, ptr %tdir_offset18, align 4
  %shr19 = lshr i32 %19, 24
  %conv20 = trunc i32 %shr19 to i16
  %20 = load ptr, ptr %v.addr, align 8
  store i16 %conv20, ptr %20, align 2
  br label %return

if.else:                                          ; preds = %if.then
  %21 = load ptr, ptr %dir.addr, align 8
  %tdir_count22 = getelementptr inbounds %struct.TIFFDirEntry, ptr %21, i64 0, i32 2
  %22 = load i32, ptr %tdir_count22, align 4
  switch i32 %22, label %return [
    i32 4, label %sw.bb23
    i32 3, label %sw.bb28
    i32 2, label %sw.bb34
    i32 1, label %sw.bb40
  ]

sw.bb23:                                          ; preds = %if.else
  %23 = load ptr, ptr %dir.addr, align 8
  %tdir_offset24 = getelementptr inbounds %struct.TIFFDirEntry, ptr %23, i64 0, i32 3
  %24 = load i32, ptr %tdir_offset24, align 4
  %shr25 = lshr i32 %24, 24
  %conv26 = trunc i32 %shr25 to i16
  %25 = load ptr, ptr %v.addr, align 8
  %arrayidx27 = getelementptr inbounds i16, ptr %25, i64 3
  store i16 %conv26, ptr %arrayidx27, align 2
  br label %sw.bb28

sw.bb28:                                          ; preds = %sw.bb23, %if.else
  %26 = load ptr, ptr %dir.addr, align 8
  %tdir_offset29 = getelementptr inbounds %struct.TIFFDirEntry, ptr %26, i64 0, i32 3
  %27 = load i32, ptr %tdir_offset29, align 4
  %shr30 = lshr i32 %27, 16
  %28 = trunc i32 %shr30 to i16
  %conv32 = and i16 %28, 255
  %29 = load ptr, ptr %v.addr, align 8
  %arrayidx33 = getelementptr inbounds i16, ptr %29, i64 2
  store i16 %conv32, ptr %arrayidx33, align 2
  br label %sw.bb34

sw.bb34:                                          ; preds = %sw.bb28, %if.else
  %30 = load ptr, ptr %dir.addr, align 8
  %tdir_offset35 = getelementptr inbounds %struct.TIFFDirEntry, ptr %30, i64 0, i32 3
  %31 = load i32, ptr %tdir_offset35, align 4
  %32 = trunc i32 %31 to i16
  %33 = lshr i16 %32, 8
  %34 = load ptr, ptr %v.addr, align 8
  %arrayidx39 = getelementptr inbounds i16, ptr %34, i64 1
  store i16 %33, ptr %arrayidx39, align 2
  br label %sw.bb40

sw.bb40:                                          ; preds = %sw.bb34, %if.else
  %35 = load ptr, ptr %dir.addr, align 8
  %tdir_offset41 = getelementptr inbounds %struct.TIFFDirEntry, ptr %35, i64 0, i32 3
  %36 = load i32, ptr %tdir_offset41, align 4
  %37 = trunc i32 %36 to i16
  %conv43 = and i16 %37, 255
  %38 = load ptr, ptr %v.addr, align 8
  store i16 %conv43, ptr %38, align 2
  br label %return

if.else46:                                        ; preds = %entry
  %39 = load ptr, ptr %tif.addr, align 8
  %40 = load ptr, ptr %dir.addr, align 8
  %41 = load ptr, ptr %v.addr, align 8
  %call = call i32 @TIFFFetchData(ptr noundef %39, ptr noundef %40, ptr noundef %41)
  %cmp47 = icmp ne i32 %call, 0
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
  %0 = load i32, ptr %tdir_count, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %2 = load i32, ptr %tdir_offset, align 4
  %3 = load ptr, ptr %v.addr, align 8
  store i32 %2, ptr %3, align 4
  br label %return

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %tif.addr, align 8
  %5 = load ptr, ptr %dir.addr, align 8
  %6 = load ptr, ptr %v.addr, align 8
  %call = call i32 @TIFFFetchData(ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %cmp1 = icmp ne i32 %call, 0
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
  %i = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  store i32 0, ptr %ok, align 4
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 2
  %0 = load i32, ptr %tdir_count, align 4
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 1
  %1 = load i16, ptr %tdir_type, align 2
  %idxprom = zext i16 %1 to i64
  %arrayidx = getelementptr inbounds [0 x i32], ptr @tiffDataWidth, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %0, %2
  %call = call ptr @CheckMalloc(ptr noundef %tif, i32 noundef %mul, ptr noundef nonnull @.str.21)
  store ptr %call, ptr %l, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end18, label %if.then

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %4 = load ptr, ptr %dir.addr, align 8
  %5 = load ptr, ptr %l, align 8
  %call1 = call i32 @TIFFFetchData(ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end17, label %for.cond

for.cond:                                         ; preds = %if.then, %for.inc
  %storemerge = phi i32 [ %inc, %for.inc ], [ 0, %if.then ]
  store i32 %storemerge, ptr %i, align 4
  %6 = load ptr, ptr %dir.addr, align 8
  %tdir_count4 = getelementptr inbounds %struct.TIFFDirEntry, ptr %6, i64 0, i32 2
  %7 = load i32, ptr %tdir_count4, align 4
  %cmp = icmp ult i32 %storemerge, %7
  br i1 %cmp, label %for.body, label %if.end17

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %tif.addr, align 8
  %9 = load ptr, ptr %dir.addr, align 8
  %10 = load ptr, ptr %l, align 8
  %11 = load i32, ptr %i, align 4
  %mul5 = shl i32 %11, 1
  %idxprom6 = zext i32 %mul5 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %10, i64 %idxprom6
  %12 = load i32, ptr %arrayidx7, align 4
  %mul8 = shl i32 %11, 1
  %add9 = or i32 %mul8, 1
  %idxprom10 = zext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %10, i64 %idxprom10
  %13 = load i32, ptr %arrayidx11, align 4
  %14 = load ptr, ptr %v.addr, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom12 = zext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds float, ptr %14, i64 %idxprom12
  %call14 = call i32 @cvtRational(ptr noundef %8, ptr noundef %9, i32 noundef %12, i32 noundef %13, ptr noundef %arrayidx13)
  store i32 %call14, ptr %ok, align 4
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4
  %inc = add i32 %16, 1
  br label %for.cond, !llvm.loop !20

if.end17:                                         ; preds = %for.cond, %for.body, %if.then
  %17 = load ptr, ptr %l, align 8
  call void @_TIFFfree(ptr noundef %17) #2
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %entry
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
  %0 = load i32, ptr %tdir_count, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %2 = load float, ptr %tdir_offset, align 4
  %3 = load ptr, ptr %v.addr, align 8
  store float %2, ptr %3, align 4
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %tif.addr, align 8
  %5 = load ptr, ptr %dir.addr, align 8
  %6 = load ptr, ptr %v.addr, align 8
  %call = call i32 @TIFFFetchData(ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %tobool.not = icmp eq i32 %call, 0
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
  %call = call i32 @TIFFFetchData(ptr noundef %tif, ptr noundef %dir, ptr noundef %v)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 0, i32 1
  ret i32 %.
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFFetchString(ptr noundef %tif, ptr noundef %dir, ptr noundef %cp) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %l = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 2
  %0 = load i32, ptr %tdir_count, align 4
  %cmp = icmp ult i32 %0, 5
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %2 = load i32, ptr %tdir_offset, align 4
  store i32 %2, ptr %l, align 4
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 3
  %4 = load i32, ptr %tif_flags, align 8
  %and = and i32 %4, 128
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  call void @TIFFSwabLong(ptr noundef nonnull %l) #2
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %5 = load ptr, ptr %cp.addr, align 8
  %6 = load ptr, ptr %dir.addr, align 8
  %tdir_count2 = getelementptr inbounds %struct.TIFFDirEntry, ptr %6, i64 0, i32 2
  %7 = load i32, ptr %tdir_count2, align 4
  call void @_TIFFmemcpy(ptr noundef %5, ptr noundef nonnull %l, i32 noundef %7) #2
  br label %return

if.end3:                                          ; preds = %entry
  %8 = load ptr, ptr %tif.addr, align 8
  %9 = load ptr, ptr %dir.addr, align 8
  %10 = load ptr, ptr %cp.addr, align 8
  %call = call i32 @TIFFFetchData(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  br label %return

return:                                           ; preds = %if.end3, %if.end
  %storemerge = phi i32 [ %call, %if.end3 ], [ 1, %if.end ]
  ret i32 %storemerge
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
  %2 = load i32, ptr %tdir_offset, align 4
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 9
  %4 = load ptr, ptr %tif_typeshift, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 1
  %5 = load i16, ptr %tdir_type, align 2
  %idxprom = zext i16 %5 to i64
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %2, %6
  %conv2 = zext i32 %shr to i64
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_typemask = getelementptr inbounds %struct.tiff, ptr %7, i64 0, i32 10
  %8 = load ptr, ptr %tif_typemask, align 8
  %9 = load ptr, ptr %dir.addr, align 8
  %tdir_type3 = getelementptr inbounds %struct.TIFFDirEntry, ptr %9, i64 0, i32 1
  %10 = load i16, ptr %tdir_type3, align 2
  %idxprom4 = zext i16 %10 to i64
  %arrayidx5 = getelementptr inbounds i64, ptr %8, i64 %idxprom4
  %11 = load i64, ptr %arrayidx5, align 8
  %and = and i64 %11, %conv2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load ptr, ptr %dir.addr, align 8
  %tdir_offset6 = getelementptr inbounds %struct.TIFFDirEntry, ptr %12, i64 0, i32 3
  %13 = load i32, ptr %tdir_offset6, align 4
  %conv7 = zext i32 %13 to i64
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_typemask8 = getelementptr inbounds %struct.tiff, ptr %14, i64 0, i32 10
  %15 = load ptr, ptr %tif_typemask8, align 8
  %16 = load ptr, ptr %dir.addr, align 8
  %tdir_type9 = getelementptr inbounds %struct.TIFFDirEntry, ptr %16, i64 0, i32 1
  %17 = load i16, ptr %tdir_type9, align 2
  %idxprom10 = zext i16 %17 to i64
  %arrayidx11 = getelementptr inbounds i64, ptr %15, i64 %idxprom10
  %18 = load i64, ptr %arrayidx11, align 8
  %and12 = and i64 %18, %conv7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %and, %cond.true ], [ %and12, %cond.false ]
  %conv14 = and i64 %cond, 4294967295
  store i64 %conv14, ptr %l, align 8
  %19 = load float, ptr %l, align 8
  ret float %19
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
  %call = call i32 @TIFFFetchData(ptr noundef %tif, ptr noundef %dir, ptr noundef nonnull %l)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load ptr, ptr %dir.addr, align 8
  %2 = load i32, ptr %l, align 4
  %arrayidx1 = getelementptr inbounds [2 x i32], ptr %l, i64 0, i64 1
  %3 = load i32, ptr %arrayidx1, align 4
  %call2 = call i32 @cvtRational(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %v)
  %tobool3.not = icmp eq i32 %call2, 0
  %4 = load float, ptr %v, align 4
  %spec.select = select i1 %tobool3.not, float 1.000000e+00, float %4
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false, %entry
  %cond = phi float [ 1.000000e+00, %entry ], [ %spec.select, %lor.lhs.false ]
  ret float %cond
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @cvtRational(ptr noundef %tif, ptr noundef %dir, i32 noundef %num, i32 noundef %denom, ptr noundef %rv) #0 {
entry:
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
  %cmp = icmp eq i32 %denom, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = load ptr, ptr %dir.addr, align 8
  %3 = load i16, ptr %2, align 4
  %conv = zext i16 %3 to i32
  %call = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %0, i32 noundef %conv) #2
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call, i64 0, i32 7
  %4 = load ptr, ptr %field_name, align 8
  %5 = load i32, ptr %num.addr, align 4
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef %4, i32 noundef %5) #2
  br label %return

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %6, i64 0, i32 1
  %7 = load i16, ptr %tdir_type, align 2
  %cmp2 = icmp eq i16 %7, 5
  br i1 %cmp2, label %if.then4, label %if.else7

if.then4:                                         ; preds = %if.else
  %8 = load i32, ptr %num.addr, align 4
  %conv5 = uitofp i32 %8 to float
  %9 = load i32, ptr %denom.addr, align 4
  %conv6 = uitofp i32 %9 to float
  %div = fdiv float %conv5, %conv6
  %10 = load ptr, ptr %rv.addr, align 8
  store float %div, ptr %10, align 4
  br label %return

if.else7:                                         ; preds = %if.else
  %11 = load i32, ptr %num.addr, align 4
  %conv8 = sitofp i32 %11 to float
  %12 = load i32, ptr %denom.addr, align 4
  %conv9 = sitofp i32 %12 to float
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
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 1
  %0 = load i16, ptr %tdir_type, align 2
  switch i16 %0, label %sw.default [
    i16 1, label %sw.bb
    i16 6, label %sw.bb
    i16 3, label %sw.bb26
    i16 8, label %sw.bb26
    i16 4, label %sw.bb68
    i16 9, label %sw.bb68
    i16 5, label %sw.bb110
    i16 10, label %sw.bb110
    i16 11, label %sw.bb130
    i16 12, label %sw.bb150
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
  %8 = load i32, ptr %tdir_count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then4
  %storemerge7.in = phi i32 [ %8, %if.then4 ], [ %13, %for.body ]
  %storemerge7 = add i32 %storemerge7.in, -1
  store i32 %storemerge7, ptr %i, align 4
  %cmp5 = icmp sgt i32 %storemerge7, -1
  br i1 %cmp5, label %for.body, label %sw.epilog

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %vp, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i16, ptr %9, i64 %idxprom
  %11 = load i16, ptr %arrayidx, align 2
  %conv7 = uitofp i16 %11 to double
  %12 = load ptr, ptr %v.addr, align 8
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds double, ptr %12, i64 %idxprom8
  store double %conv7, ptr %arrayidx9, align 8
  %13 = load i32, ptr %i, align 4
  br label %for.cond, !llvm.loop !21

if.else:                                          ; preds = %if.end
  %14 = load ptr, ptr %v.addr, align 8
  store ptr %14, ptr %vp10, align 8
  %15 = load ptr, ptr %dir.addr, align 8
  %tdir_count11 = getelementptr inbounds %struct.TIFFDirEntry, ptr %15, i64 0, i32 2
  %16 = load i32, ptr %tdir_count11, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.body16, %if.else
  %storemerge6.in = phi i32 [ %16, %if.else ], [ %21, %for.body16 ]
  %storemerge6 = add i32 %storemerge6.in, -1
  store i32 %storemerge6, ptr %i, align 4
  %cmp14 = icmp sgt i32 %storemerge6, -1
  br i1 %cmp14, label %for.body16, label %sw.epilog

for.body16:                                       ; preds = %for.cond13
  %17 = load ptr, ptr %vp10, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %18 to i64
  %arrayidx18 = getelementptr inbounds i16, ptr %17, i64 %idxprom17
  %19 = load i16, ptr %arrayidx18, align 2
  %conv19 = sitofp i16 %19 to double
  %20 = load ptr, ptr %v.addr, align 8
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds double, ptr %20, i64 %idxprom20
  store double %conv19, ptr %arrayidx21, align 8
  %21 = load i32, ptr %i, align 4
  br label %for.cond13, !llvm.loop !22

sw.bb26:                                          ; preds = %entry, %entry
  %22 = load ptr, ptr %tif.addr, align 8
  %23 = load ptr, ptr %dir.addr, align 8
  %24 = load ptr, ptr %v.addr, align 8
  %call27 = call i32 @TIFFFetchShortArray(ptr noundef %22, ptr noundef %23, ptr noundef %24)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.end30

if.then29:                                        ; preds = %sw.bb26
  store i32 0, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %sw.bb26
  %25 = load ptr, ptr %dir.addr, align 8
  %tdir_type31 = getelementptr inbounds %struct.TIFFDirEntry, ptr %25, i64 0, i32 1
  %26 = load i16, ptr %tdir_type31, align 2
  %cmp33 = icmp eq i16 %26, 3
  br i1 %cmp33, label %if.then35, label %if.else51

if.then35:                                        ; preds = %if.end30
  %27 = load ptr, ptr %v.addr, align 8
  store ptr %27, ptr %vp36, align 8
  %28 = load ptr, ptr %dir.addr, align 8
  %tdir_count37 = getelementptr inbounds %struct.TIFFDirEntry, ptr %28, i64 0, i32 2
  %29 = load i32, ptr %tdir_count37, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.body42, %if.then35
  %storemerge5.in = phi i32 [ %29, %if.then35 ], [ %34, %for.body42 ]
  %storemerge5 = add i32 %storemerge5.in, -1
  store i32 %storemerge5, ptr %i, align 4
  %cmp40 = icmp sgt i32 %storemerge5, -1
  br i1 %cmp40, label %for.body42, label %sw.epilog

for.body42:                                       ; preds = %for.cond39
  %30 = load ptr, ptr %vp36, align 8
  %31 = load i32, ptr %i, align 4
  %idxprom43 = sext i32 %31 to i64
  %arrayidx44 = getelementptr inbounds i16, ptr %30, i64 %idxprom43
  %32 = load i16, ptr %arrayidx44, align 2
  %conv45 = uitofp i16 %32 to double
  %33 = load ptr, ptr %v.addr, align 8
  %idxprom46 = sext i32 %31 to i64
  %arrayidx47 = getelementptr inbounds double, ptr %33, i64 %idxprom46
  store double %conv45, ptr %arrayidx47, align 8
  %34 = load i32, ptr %i, align 4
  br label %for.cond39, !llvm.loop !23

if.else51:                                        ; preds = %if.end30
  %35 = load ptr, ptr %v.addr, align 8
  store ptr %35, ptr %vp52, align 8
  %36 = load ptr, ptr %dir.addr, align 8
  %tdir_count53 = getelementptr inbounds %struct.TIFFDirEntry, ptr %36, i64 0, i32 2
  %37 = load i32, ptr %tdir_count53, align 4
  br label %for.cond55

for.cond55:                                       ; preds = %for.body58, %if.else51
  %storemerge4.in = phi i32 [ %37, %if.else51 ], [ %42, %for.body58 ]
  %storemerge4 = add i32 %storemerge4.in, -1
  store i32 %storemerge4, ptr %i, align 4
  %cmp56 = icmp sgt i32 %storemerge4, -1
  br i1 %cmp56, label %for.body58, label %sw.epilog

for.body58:                                       ; preds = %for.cond55
  %38 = load ptr, ptr %vp52, align 8
  %39 = load i32, ptr %i, align 4
  %idxprom59 = sext i32 %39 to i64
  %arrayidx60 = getelementptr inbounds i16, ptr %38, i64 %idxprom59
  %40 = load i16, ptr %arrayidx60, align 2
  %conv61 = sitofp i16 %40 to double
  %41 = load ptr, ptr %v.addr, align 8
  %idxprom62 = sext i32 %39 to i64
  %arrayidx63 = getelementptr inbounds double, ptr %41, i64 %idxprom62
  store double %conv61, ptr %arrayidx63, align 8
  %42 = load i32, ptr %i, align 4
  br label %for.cond55, !llvm.loop !24

sw.bb68:                                          ; preds = %entry, %entry
  %43 = load ptr, ptr %tif.addr, align 8
  %44 = load ptr, ptr %dir.addr, align 8
  %45 = load ptr, ptr %v.addr, align 8
  %call69 = call i32 @TIFFFetchLongArray(ptr noundef %43, ptr noundef %44, ptr noundef %45)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then71, label %if.end72

if.then71:                                        ; preds = %sw.bb68
  store i32 0, ptr %retval, align 4
  br label %return

if.end72:                                         ; preds = %sw.bb68
  %46 = load ptr, ptr %dir.addr, align 8
  %tdir_type73 = getelementptr inbounds %struct.TIFFDirEntry, ptr %46, i64 0, i32 1
  %47 = load i16, ptr %tdir_type73, align 2
  %cmp75 = icmp eq i16 %47, 4
  br i1 %cmp75, label %if.then77, label %if.else93

if.then77:                                        ; preds = %if.end72
  %48 = load ptr, ptr %v.addr, align 8
  store ptr %48, ptr %vp78, align 8
  %49 = load ptr, ptr %dir.addr, align 8
  %tdir_count79 = getelementptr inbounds %struct.TIFFDirEntry, ptr %49, i64 0, i32 2
  %50 = load i32, ptr %tdir_count79, align 4
  br label %for.cond81

for.cond81:                                       ; preds = %for.body84, %if.then77
  %storemerge3.in = phi i32 [ %50, %if.then77 ], [ %55, %for.body84 ]
  %storemerge3 = add i32 %storemerge3.in, -1
  store i32 %storemerge3, ptr %i, align 4
  %cmp82 = icmp sgt i32 %storemerge3, -1
  br i1 %cmp82, label %for.body84, label %sw.epilog

for.body84:                                       ; preds = %for.cond81
  %51 = load ptr, ptr %vp78, align 8
  %52 = load i32, ptr %i, align 4
  %idxprom85 = sext i32 %52 to i64
  %arrayidx86 = getelementptr inbounds i32, ptr %51, i64 %idxprom85
  %53 = load i32, ptr %arrayidx86, align 4
  %conv87 = uitofp i32 %53 to double
  %54 = load ptr, ptr %v.addr, align 8
  %idxprom88 = sext i32 %52 to i64
  %arrayidx89 = getelementptr inbounds double, ptr %54, i64 %idxprom88
  store double %conv87, ptr %arrayidx89, align 8
  %55 = load i32, ptr %i, align 4
  br label %for.cond81, !llvm.loop !25

if.else93:                                        ; preds = %if.end72
  %56 = load ptr, ptr %v.addr, align 8
  store ptr %56, ptr %vp94, align 8
  %57 = load ptr, ptr %dir.addr, align 8
  %tdir_count95 = getelementptr inbounds %struct.TIFFDirEntry, ptr %57, i64 0, i32 2
  %58 = load i32, ptr %tdir_count95, align 4
  br label %for.cond97

for.cond97:                                       ; preds = %for.body100, %if.else93
  %storemerge2.in = phi i32 [ %58, %if.else93 ], [ %63, %for.body100 ]
  %storemerge2 = add i32 %storemerge2.in, -1
  store i32 %storemerge2, ptr %i, align 4
  %cmp98 = icmp sgt i32 %storemerge2, -1
  br i1 %cmp98, label %for.body100, label %sw.epilog

for.body100:                                      ; preds = %for.cond97
  %59 = load ptr, ptr %vp94, align 8
  %60 = load i32, ptr %i, align 4
  %idxprom101 = sext i32 %60 to i64
  %arrayidx102 = getelementptr inbounds i32, ptr %59, i64 %idxprom101
  %61 = load i32, ptr %arrayidx102, align 4
  %conv103 = sitofp i32 %61 to double
  %62 = load ptr, ptr %v.addr, align 8
  %idxprom104 = sext i32 %60 to i64
  %arrayidx105 = getelementptr inbounds double, ptr %62, i64 %idxprom104
  store double %conv103, ptr %arrayidx105, align 8
  %63 = load i32, ptr %i, align 4
  br label %for.cond97, !llvm.loop !26

sw.bb110:                                         ; preds = %entry, %entry
  %64 = load ptr, ptr %tif.addr, align 8
  %65 = load ptr, ptr %dir.addr, align 8
  %66 = load ptr, ptr %v.addr, align 8
  %call111 = call i32 @TIFFFetchRationalArray(ptr noundef %64, ptr noundef %65, ptr noundef %66)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.then113, label %if.end114

if.then113:                                       ; preds = %sw.bb110
  store i32 0, ptr %retval, align 4
  br label %return

if.end114:                                        ; preds = %sw.bb110
  %67 = load ptr, ptr %v.addr, align 8
  store ptr %67, ptr %vp115, align 8
  %68 = load ptr, ptr %dir.addr, align 8
  %tdir_count116 = getelementptr inbounds %struct.TIFFDirEntry, ptr %68, i64 0, i32 2
  %69 = load i32, ptr %tdir_count116, align 4
  br label %for.cond118

for.cond118:                                      ; preds = %for.body121, %if.end114
  %storemerge1.in = phi i32 [ %69, %if.end114 ], [ %74, %for.body121 ]
  %storemerge1 = add i32 %storemerge1.in, -1
  store i32 %storemerge1, ptr %i, align 4
  %cmp119 = icmp sgt i32 %storemerge1, -1
  br i1 %cmp119, label %for.body121, label %sw.epilog

for.body121:                                      ; preds = %for.cond118
  %70 = load ptr, ptr %vp115, align 8
  %71 = load i32, ptr %i, align 4
  %idxprom122 = sext i32 %71 to i64
  %arrayidx123 = getelementptr inbounds float, ptr %70, i64 %idxprom122
  %72 = load float, ptr %arrayidx123, align 4
  %conv124 = fpext float %72 to double
  %73 = load ptr, ptr %v.addr, align 8
  %idxprom125 = sext i32 %71 to i64
  %arrayidx126 = getelementptr inbounds double, ptr %73, i64 %idxprom125
  store double %conv124, ptr %arrayidx126, align 8
  %74 = load i32, ptr %i, align 4
  br label %for.cond118, !llvm.loop !27

sw.bb130:                                         ; preds = %entry
  %75 = load ptr, ptr %tif.addr, align 8
  %76 = load ptr, ptr %dir.addr, align 8
  %77 = load ptr, ptr %v.addr, align 8
  %call131 = call i32 @TIFFFetchFloatArray(ptr noundef %75, ptr noundef %76, ptr noundef %77)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.then133, label %if.end134

if.then133:                                       ; preds = %sw.bb130
  store i32 0, ptr %retval, align 4
  br label %return

if.end134:                                        ; preds = %sw.bb130
  %78 = load ptr, ptr %v.addr, align 8
  store ptr %78, ptr %vp135, align 8
  %79 = load ptr, ptr %dir.addr, align 8
  %tdir_count136 = getelementptr inbounds %struct.TIFFDirEntry, ptr %79, i64 0, i32 2
  %80 = load i32, ptr %tdir_count136, align 4
  br label %for.cond138

for.cond138:                                      ; preds = %for.body141, %if.end134
  %storemerge.in = phi i32 [ %80, %if.end134 ], [ %85, %for.body141 ]
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i, align 4
  %cmp139 = icmp sgt i32 %storemerge, -1
  br i1 %cmp139, label %for.body141, label %sw.epilog

for.body141:                                      ; preds = %for.cond138
  %81 = load ptr, ptr %vp135, align 8
  %82 = load i32, ptr %i, align 4
  %idxprom142 = sext i32 %82 to i64
  %arrayidx143 = getelementptr inbounds float, ptr %81, i64 %idxprom142
  %83 = load float, ptr %arrayidx143, align 4
  %conv144 = fpext float %83 to double
  %84 = load ptr, ptr %v.addr, align 8
  %idxprom145 = sext i32 %82 to i64
  %arrayidx146 = getelementptr inbounds double, ptr %84, i64 %idxprom145
  store double %conv144, ptr %arrayidx146, align 8
  %85 = load i32, ptr %i, align 4
  br label %for.cond138, !llvm.loop !28

sw.bb150:                                         ; preds = %entry
  %86 = load ptr, ptr %tif.addr, align 8
  %87 = load ptr, ptr %dir.addr, align 8
  %88 = load ptr, ptr %v.addr, align 8
  %call151 = call i32 @TIFFFetchDoubleArray(ptr noundef %86, ptr noundef %87, ptr noundef %88)
  store i32 %call151, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %89 = load ptr, ptr %tif.addr, align 8
  %90 = load ptr, ptr %89, align 8
  %91 = load ptr, ptr %dir.addr, align 8
  %92 = load i16, ptr %91, align 4
  %conv152 = zext i16 %92 to i32
  %call153 = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %89, i32 noundef %conv152) #2
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call153, i64 0, i32 7
  %93 = load ptr, ptr %field_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %90, ptr noundef nonnull @.str.24, ptr noundef %93) #2
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %for.cond138, %for.cond118, %for.cond81, %for.cond97, %for.cond39, %for.cond55, %for.cond, %for.cond13
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %sw.bb150, %if.then133, %if.then113, %if.then71, %if.then29, %if.then
  %94 = load i32, ptr %retval, align 4
  ret i32 %94
}

declare i32 @TIFFVTileSize(ptr noundef, i32 noundef) #1

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
