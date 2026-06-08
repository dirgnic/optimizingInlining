; ModuleID = './source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_dirwrite.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_dirwrite.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i64, i64, i64, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i64, i16, i64, i64, i64, i16, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, ptr, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i64, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i64, ptr, i64, ptr, i64, ptr, i64, i64, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i64 }
%struct.TIFFFieldInfo = type { i64, i16, i16, i32, i16, i8, i8, ptr }
%struct.TIFFDirEntry = type { i16, i16, i64, i64 }

@.str = private unnamed_addr constant [43 x i8] c"Error post-encoding before directory write\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Error flushing data before directory write\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Cannot write directory, out of space\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Error writing directory count\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Error writing directory contents\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Error writing directory link\00", align 1
@tiffDataWidth = external constant [0 x i32], align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Error writing data for field \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"\22%s\22: Information lost writing value (%g) as (unsigned) RATIONAL\00", align 1
@TIFFLinkDirectory.module = internal constant [18 x i8] c"TIFFLinkDirectory\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"%s: Error writing SubIFD directory link\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Error writing TIFF header\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Error fetching directory count\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Error fetching directory link\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFWriteDirectory(ptr noundef %tif) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %dircount = alloca i16, align 2
  %diroff = alloca i64, align 8
  %tag = alloca i64, align 8
  %nfields = alloca i64, align 8
  %dirsize = alloca i64, align 8
  %data = alloca ptr, align 8
  %dir = alloca ptr, align 8
  %td = alloca ptr, align 8
  %b = alloca i64, align 8
  %fields = alloca [3 x i64], align 8
  %fi = alloca i32, align 4
  %nfi = alloca i32, align 4
  %fip = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %tif_mode, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 3
  %3 = load i64, ptr %tif_flags, align 8
  %and = and i64 %3, 4096
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then1, label %if.end7

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_flags2 = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 3
  %5 = load i64, ptr %tif_flags2, align 8
  %and3 = and i64 %5, -4097
  store i64 %and3, ptr %tif_flags2, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_postencode = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 25
  %7 = load ptr, ptr %tif_postencode, align 8
  %8 = load ptr, ptr %tif.addr, align 8
  %call = call i32 %7(ptr noundef %8)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.then1
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %tif_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %10, ptr noundef @.str)
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.then1
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  %11 = load ptr, ptr %tif.addr, align 8
  %tif_close = getelementptr inbounds %struct.tiff, ptr %11, i32 0, i32 32
  %12 = load ptr, ptr %tif_close, align 8
  %13 = load ptr, ptr %tif.addr, align 8
  call void %12(ptr noundef %13)
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %14, i32 0, i32 43
  %15 = load i64, ptr %tif_rawcc, align 8
  %cmp8 = icmp sgt i64 %15, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end7
  %16 = load ptr, ptr %tif.addr, align 8
  %call9 = call i32 @TIFFFlushData1(ptr noundef %16)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end13, label %if.then11

if.then11:                                        ; preds = %land.lhs.true
  %17 = load ptr, ptr %tif.addr, align 8
  %tif_name12 = getelementptr inbounds %struct.tiff, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %tif_name12, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %18, ptr noundef @.str.1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %land.lhs.true, %if.end7
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_flags14 = getelementptr inbounds %struct.tiff, ptr %19, i32 0, i32 3
  %20 = load i64, ptr %tif_flags14, align 8
  %and15 = and i64 %20, 512
  %tobool16 = icmp ne i64 %and15, 0
  br i1 %tobool16, label %land.lhs.true17, label %if.end23

land.lhs.true17:                                  ; preds = %if.end13
  %21 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %21, i32 0, i32 40
  %22 = load ptr, ptr %tif_rawdata, align 8
  %tobool18 = icmp ne ptr %22, null
  br i1 %tobool18, label %if.then19, label %if.end23

if.then19:                                        ; preds = %land.lhs.true17
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata20 = getelementptr inbounds %struct.tiff, ptr %23, i32 0, i32 40
  %24 = load ptr, ptr %tif_rawdata20, align 8
  call void @_TIFFfree(ptr noundef %24)
  %25 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata21 = getelementptr inbounds %struct.tiff, ptr %25, i32 0, i32 40
  store ptr null, ptr %tif_rawdata21, align 8
  %26 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc22 = getelementptr inbounds %struct.tiff, ptr %26, i32 0, i32 43
  store i64 0, ptr %tif_rawcc22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %land.lhs.true17, %if.end13
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_flags24 = getelementptr inbounds %struct.tiff, ptr %27, i32 0, i32 3
  %28 = load i64, ptr %tif_flags24, align 8
  %and25 = and i64 %28, -81
  store i64 %and25, ptr %tif_flags24, align 8
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %29, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  store i64 0, ptr %nfields, align 8
  store i64 0, ptr %b, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end23
  %30 = load i64, ptr %b, align 8
  %cmp26 = icmp ule i64 %30, 95
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load ptr, ptr %tif.addr, align 8
  %tif_dir27 = getelementptr inbounds %struct.tiff, ptr %31, i32 0, i32 6
  %td_fieldsset = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir27, i32 0, i32 0
  %32 = load i64, ptr %b, align 8
  %div = udiv i64 %32, 32
  %arrayidx = getelementptr inbounds [3 x i64], ptr %td_fieldsset, i64 0, i64 %div
  %33 = load i64, ptr %arrayidx, align 8
  %34 = load i64, ptr %b, align 8
  %and28 = and i64 %34, 31
  %shl = shl i64 1, %and28
  %and29 = and i64 %33, %shl
  %tobool30 = icmp ne i64 %and29, 0
  br i1 %tobool30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %for.body
  %35 = load i64, ptr %b, align 8
  %cmp32 = icmp ult i64 %35, 5
  %36 = zext i1 %cmp32 to i64
  %cond = select i1 %cmp32, i32 2, i32 1
  %conv = sext i32 %cond to i64
  %37 = load i64, ptr %nfields, align 8
  %add = add i64 %37, %conv
  store i64 %add, ptr %nfields, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end33
  %38 = load i64, ptr %b, align 8
  %inc = add i64 %38, 1
  store i64 %inc, ptr %b, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %39 = load i64, ptr %nfields, align 8
  %mul = mul i64 %39, 24
  store i64 %mul, ptr %dirsize, align 8
  %40 = load i64, ptr %dirsize, align 8
  %call34 = call ptr @_TIFFmalloc(i64 noundef %40)
  store ptr %call34, ptr %data, align 8
  %41 = load ptr, ptr %data, align 8
  %cmp35 = icmp eq ptr %41, null
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %for.end
  %42 = load ptr, ptr %tif.addr, align 8
  %tif_name38 = getelementptr inbounds %struct.tiff, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %tif_name38, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %43, ptr noundef @.str.2)
  store i32 0, ptr %retval, align 4
  br label %return

if.end39:                                         ; preds = %for.end
  %44 = load ptr, ptr %tif.addr, align 8
  %tif_diroff = getelementptr inbounds %struct.tiff, ptr %44, i32 0, i32 4
  %45 = load i64, ptr %tif_diroff, align 8
  %cmp40 = icmp eq i64 %45, 0
  br i1 %cmp40, label %land.lhs.true42, label %if.end46

land.lhs.true42:                                  ; preds = %if.end39
  %46 = load ptr, ptr %tif.addr, align 8
  %call43 = call i32 @TIFFLinkDirectory(ptr noundef %46)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.end46, label %if.then45

if.then45:                                        ; preds = %land.lhs.true42
  br label %bad

if.end46:                                         ; preds = %land.lhs.true42, %if.end39
  %47 = load ptr, ptr %tif.addr, align 8
  %tif_diroff47 = getelementptr inbounds %struct.tiff, ptr %47, i32 0, i32 4
  %48 = load i64, ptr %tif_diroff47, align 8
  %add48 = add i64 %48, 2
  %49 = load i64, ptr %dirsize, align 8
  %add49 = add i64 %add48, %49
  %add50 = add i64 %add49, 8
  %50 = load ptr, ptr %tif.addr, align 8
  %tif_dataoff = getelementptr inbounds %struct.tiff, ptr %50, i32 0, i32 15
  store i64 %add50, ptr %tif_dataoff, align 8
  %51 = load ptr, ptr %tif.addr, align 8
  %tif_dataoff51 = getelementptr inbounds %struct.tiff, ptr %51, i32 0, i32 15
  %52 = load i64, ptr %tif_dataoff51, align 8
  %and52 = and i64 %52, 1
  %tobool53 = icmp ne i64 %and52, 0
  br i1 %tobool53, label %if.then54, label %if.end57

if.then54:                                        ; preds = %if.end46
  %53 = load ptr, ptr %tif.addr, align 8
  %tif_dataoff55 = getelementptr inbounds %struct.tiff, ptr %53, i32 0, i32 15
  %54 = load i64, ptr %tif_dataoff55, align 8
  %inc56 = add nsw i64 %54, 1
  store i64 %inc56, ptr %tif_dataoff55, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end46
  %55 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %55, i32 0, i32 51
  %56 = load ptr, ptr %tif_seekproc, align 8
  %57 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %57, i32 0, i32 48
  %58 = load ptr, ptr %tif_clientdata, align 8
  %59 = load ptr, ptr %tif.addr, align 8
  %tif_dataoff58 = getelementptr inbounds %struct.tiff, ptr %59, i32 0, i32 15
  %60 = load i64, ptr %tif_dataoff58, align 8
  %call59 = call i64 %56(ptr noundef %58, i64 noundef %60, i32 noundef 0)
  %61 = load ptr, ptr %tif.addr, align 8
  %tif_curdir = getelementptr inbounds %struct.tiff, ptr %61, i32 0, i32 12
  %62 = load i16, ptr %tif_curdir, align 8
  %inc60 = add i16 %62, 1
  store i16 %inc60, ptr %tif_curdir, align 8
  %63 = load ptr, ptr %data, align 8
  store ptr %63, ptr %dir, align 8
  %arraydecay = getelementptr inbounds [3 x i64], ptr %fields, i64 0, i64 0
  %64 = load ptr, ptr %td, align 8
  %td_fieldsset61 = getelementptr inbounds %struct.TIFFDirectory, ptr %64, i32 0, i32 0
  %arraydecay62 = getelementptr inbounds [3 x i64], ptr %td_fieldsset61, i64 0, i64 0
  call void @_TIFFmemcpy(ptr noundef %arraydecay, ptr noundef %arraydecay62, i64 noundef 24)
  %arrayidx63 = getelementptr inbounds [3 x i64], ptr %fields, i64 0, i64 0
  %65 = load i64, ptr %arrayidx63, align 8
  %and64 = and i64 %65, 2147483648
  %tobool65 = icmp ne i64 %and64, 0
  br i1 %tobool65, label %land.lhs.true66, label %if.end71

land.lhs.true66:                                  ; preds = %if.end57
  %66 = load ptr, ptr %td, align 8
  %td_extrasamples = getelementptr inbounds %struct.TIFFDirectory, ptr %66, i32 0, i32 30
  %67 = load i16, ptr %td_extrasamples, align 4
  %tobool67 = icmp ne i16 %67, 0
  br i1 %tobool67, label %if.end71, label %if.then68

if.then68:                                        ; preds = %land.lhs.true66
  %arrayidx69 = getelementptr inbounds [3 x i64], ptr %fields, i64 0, i64 0
  %68 = load i64, ptr %arrayidx69, align 8
  %and70 = and i64 %68, -2147483649
  store i64 %and70, ptr %arrayidx69, align 8
  %69 = load i64, ptr %nfields, align 8
  %dec = add i64 %69, -1
  store i64 %dec, ptr %nfields, align 8
  %70 = load i64, ptr %dirsize, align 8
  %sub = sub i64 %70, 24
  store i64 %sub, ptr %dirsize, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %land.lhs.true66, %if.end57
  store i32 0, ptr %fi, align 4
  %71 = load ptr, ptr %tif.addr, align 8
  %tif_nfields = getelementptr inbounds %struct.tiff, ptr %71, i32 0, i32 56
  %72 = load i32, ptr %tif_nfields, align 8
  store i32 %72, ptr %nfi, align 4
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc220, %if.end71
  %73 = load i32, ptr %nfi, align 4
  %cmp73 = icmp sgt i32 %73, 0
  br i1 %cmp73, label %for.body75, label %for.end223

for.body75:                                       ; preds = %for.cond72
  %74 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo = getelementptr inbounds %struct.tiff, ptr %74, i32 0, i32 55
  %75 = load ptr, ptr %tif_fieldinfo, align 8
  %76 = load i32, ptr %fi, align 4
  %idxprom = sext i32 %76 to i64
  %arrayidx76 = getelementptr inbounds ptr, ptr %75, i64 %idxprom
  %77 = load ptr, ptr %arrayidx76, align 8
  store ptr %77, ptr %fip, align 8
  %78 = load ptr, ptr %fip, align 8
  %field_bit = getelementptr inbounds %struct.TIFFFieldInfo, ptr %78, i32 0, i32 4
  %79 = load i16, ptr %field_bit, align 8
  %conv77 = zext i16 %79 to i32
  %div78 = sdiv i32 %conv77, 32
  %idxprom79 = sext i32 %div78 to i64
  %arrayidx80 = getelementptr inbounds [3 x i64], ptr %fields, i64 0, i64 %idxprom79
  %80 = load i64, ptr %arrayidx80, align 8
  %81 = load ptr, ptr %fip, align 8
  %field_bit81 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %81, i32 0, i32 4
  %82 = load i16, ptr %field_bit81, align 8
  %conv82 = zext i16 %82 to i32
  %and83 = and i32 %conv82, 31
  %sh_prom = zext i32 %and83 to i64
  %shl84 = shl i64 1, %sh_prom
  %and85 = and i64 %80, %shl84
  %tobool86 = icmp ne i64 %and85, 0
  br i1 %tobool86, label %if.end88, label %if.then87

if.then87:                                        ; preds = %for.body75
  br label %for.inc220

if.end88:                                         ; preds = %for.body75
  %83 = load ptr, ptr %fip, align 8
  %field_bit89 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %83, i32 0, i32 4
  %84 = load i16, ptr %field_bit89, align 8
  %conv90 = zext i16 %84 to i32
  switch i32 %conv90, label %sw.default [
    i32 25, label %sw.bb
    i32 24, label %sw.bb105
    i32 17, label %sw.bb122
    i32 26, label %sw.bb123
    i32 1, label %sw.bb129
    i32 2, label %sw.bb130
    i32 4, label %sw.bb132
    i32 3, label %sw.bb142
    i32 6, label %sw.bb153
    i32 18, label %sw.bb153
    i32 19, label %sw.bb153
    i32 32, label %sw.bb153
    i32 33, label %sw.bb159
    i32 34, label %sw.bb159
    i32 23, label %sw.bb166
    i32 37, label %sw.bb166
    i32 39, label %sw.bb166
    i32 47, label %sw.bb166
    i32 46, label %sw.bb172
    i32 44, label %sw.bb177
    i32 49, label %sw.bb182
  ]

sw.bb:                                            ; preds = %if.end88
  %85 = load ptr, ptr %tif.addr, align 8
  %tif_flags91 = getelementptr inbounds %struct.tiff, ptr %85, i32 0, i32 3
  %86 = load i64, ptr %tif_flags91, align 8
  %and92 = and i64 %86, 1024
  %cmp93 = icmp ne i64 %and92, 0
  %87 = zext i1 %cmp93 to i64
  %cond95 = select i1 %cmp93, i32 324, i32 273
  %conv96 = sext i32 %cond95 to i64
  store i64 %conv96, ptr %tag, align 8
  %88 = load i64, ptr %tag, align 8
  %89 = load ptr, ptr %fip, align 8
  %field_tag = getelementptr inbounds %struct.TIFFFieldInfo, ptr %89, i32 0, i32 0
  %90 = load i64, ptr %field_tag, align 8
  %cmp97 = icmp ne i64 %88, %90
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %sw.bb
  br label %for.inc220

if.end100:                                        ; preds = %sw.bb
  %91 = load ptr, ptr %tif.addr, align 8
  %92 = load i64, ptr %tag, align 8
  %93 = load ptr, ptr %dir, align 8
  %94 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %94, i32 0, i32 43
  %95 = load i64, ptr %td_nstrips, align 8
  %96 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %96, i32 0, i32 44
  %97 = load ptr, ptr %td_stripoffset, align 8
  %call101 = call i32 @TIFFWriteLongArray(ptr noundef %91, i32 noundef 4, i64 noundef %92, ptr noundef %93, i64 noundef %95, ptr noundef %97)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.end104, label %if.then103

if.then103:                                       ; preds = %if.end100
  br label %bad

if.end104:                                        ; preds = %if.end100
  br label %sw.epilog

sw.bb105:                                         ; preds = %if.end88
  %98 = load ptr, ptr %tif.addr, align 8
  %tif_flags106 = getelementptr inbounds %struct.tiff, ptr %98, i32 0, i32 3
  %99 = load i64, ptr %tif_flags106, align 8
  %and107 = and i64 %99, 1024
  %cmp108 = icmp ne i64 %and107, 0
  %100 = zext i1 %cmp108 to i64
  %cond110 = select i1 %cmp108, i32 325, i32 279
  %conv111 = sext i32 %cond110 to i64
  store i64 %conv111, ptr %tag, align 8
  %101 = load i64, ptr %tag, align 8
  %102 = load ptr, ptr %fip, align 8
  %field_tag112 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %102, i32 0, i32 0
  %103 = load i64, ptr %field_tag112, align 8
  %cmp113 = icmp ne i64 %101, %103
  br i1 %cmp113, label %if.then115, label %if.end116

if.then115:                                       ; preds = %sw.bb105
  br label %for.inc220

if.end116:                                        ; preds = %sw.bb105
  %104 = load ptr, ptr %tif.addr, align 8
  %105 = load i64, ptr %tag, align 8
  %106 = load ptr, ptr %dir, align 8
  %107 = load ptr, ptr %td, align 8
  %td_nstrips117 = getelementptr inbounds %struct.TIFFDirectory, ptr %107, i32 0, i32 43
  %108 = load i64, ptr %td_nstrips117, align 8
  %109 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %109, i32 0, i32 45
  %110 = load ptr, ptr %td_stripbytecount, align 8
  %call118 = call i32 @TIFFWriteLongArray(ptr noundef %104, i32 noundef 4, i64 noundef %105, ptr noundef %106, i64 noundef %108, ptr noundef %110)
  %tobool119 = icmp ne i32 %call118, 0
  br i1 %tobool119, label %if.end121, label %if.then120

if.then120:                                       ; preds = %if.end116
  br label %bad

if.end121:                                        ; preds = %if.end116
  br label %sw.epilog

sw.bb122:                                         ; preds = %if.end88
  %111 = load ptr, ptr %tif.addr, align 8
  %112 = load ptr, ptr %dir, align 8
  %113 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %113, i32 0, i32 16
  %114 = load i64, ptr %td_rowsperstrip, align 8
  call void @TIFFSetupShortLong(ptr noundef %111, i64 noundef 278, ptr noundef %112, i64 noundef %114)
  br label %sw.epilog

sw.bb123:                                         ; preds = %if.end88
  %115 = load ptr, ptr %tif.addr, align 8
  %116 = load ptr, ptr %dir, align 8
  %117 = load ptr, ptr %td, align 8
  %td_colormap = getelementptr inbounds %struct.TIFFDirectory, ptr %117, i32 0, i32 28
  %arraydecay124 = getelementptr inbounds [3 x ptr], ptr %td_colormap, i64 0, i64 0
  %call125 = call i32 @TIFFWriteShortTable(ptr noundef %115, i64 noundef 320, ptr noundef %116, i64 noundef 3, ptr noundef %arraydecay124)
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.end128, label %if.then127

if.then127:                                       ; preds = %sw.bb123
  br label %bad

if.end128:                                        ; preds = %sw.bb123
  br label %sw.epilog

sw.bb129:                                         ; preds = %if.end88
  %118 = load ptr, ptr %tif.addr, align 8
  %119 = load ptr, ptr %dir, align 8
  %incdec.ptr = getelementptr inbounds %struct.TIFFDirEntry, ptr %119, i32 1
  store ptr %incdec.ptr, ptr %dir, align 8
  %120 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %120, i32 0, i32 1
  %121 = load i64, ptr %td_imagewidth, align 8
  call void @TIFFSetupShortLong(ptr noundef %118, i64 noundef 256, ptr noundef %119, i64 noundef %121)
  %122 = load ptr, ptr %tif.addr, align 8
  %123 = load ptr, ptr %dir, align 8
  %124 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %124, i32 0, i32 2
  %125 = load i64, ptr %td_imagelength, align 8
  call void @TIFFSetupShortLong(ptr noundef %122, i64 noundef 257, ptr noundef %123, i64 noundef %125)
  br label %sw.epilog

sw.bb130:                                         ; preds = %if.end88
  %126 = load ptr, ptr %tif.addr, align 8
  %127 = load ptr, ptr %dir, align 8
  %incdec.ptr131 = getelementptr inbounds %struct.TIFFDirEntry, ptr %127, i32 1
  store ptr %incdec.ptr131, ptr %dir, align 8
  %128 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %128, i32 0, i32 4
  %129 = load i64, ptr %td_tilewidth, align 8
  call void @TIFFSetupShortLong(ptr noundef %126, i64 noundef 322, ptr noundef %127, i64 noundef %129)
  %130 = load ptr, ptr %tif.addr, align 8
  %131 = load ptr, ptr %dir, align 8
  %132 = load ptr, ptr %td, align 8
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %132, i32 0, i32 5
  %133 = load i64, ptr %td_tilelength, align 8
  call void @TIFFSetupShortLong(ptr noundef %130, i64 noundef 323, ptr noundef %131, i64 noundef %133)
  br label %sw.epilog

sw.bb132:                                         ; preds = %if.end88
  %134 = load ptr, ptr %tif.addr, align 8
  %135 = load ptr, ptr %dir, align 8
  %136 = load ptr, ptr %td, align 8
  %td_xposition = getelementptr inbounds %struct.TIFFDirectory, ptr %136, i32 0, i32 25
  %call133 = call i32 @TIFFWriteRationalArray(ptr noundef %134, i32 noundef 5, i64 noundef 286, ptr noundef %135, i64 noundef 1, ptr noundef %td_xposition)
  %tobool134 = icmp ne i32 %call133, 0
  br i1 %tobool134, label %if.end136, label %if.then135

if.then135:                                       ; preds = %sw.bb132
  br label %bad

if.end136:                                        ; preds = %sw.bb132
  %137 = load ptr, ptr %tif.addr, align 8
  %138 = load ptr, ptr %dir, align 8
  %add.ptr = getelementptr inbounds %struct.TIFFDirEntry, ptr %138, i64 1
  %139 = load ptr, ptr %td, align 8
  %td_yposition = getelementptr inbounds %struct.TIFFDirectory, ptr %139, i32 0, i32 26
  %call137 = call i32 @TIFFWriteRationalArray(ptr noundef %137, i32 noundef 5, i64 noundef 287, ptr noundef %add.ptr, i64 noundef 1, ptr noundef %td_yposition)
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %if.end140, label %if.then139

if.then139:                                       ; preds = %if.end136
  br label %bad

if.end140:                                        ; preds = %if.end136
  %140 = load ptr, ptr %dir, align 8
  %incdec.ptr141 = getelementptr inbounds %struct.TIFFDirEntry, ptr %140, i32 1
  store ptr %incdec.ptr141, ptr %dir, align 8
  br label %sw.epilog

sw.bb142:                                         ; preds = %if.end88
  %141 = load ptr, ptr %tif.addr, align 8
  %142 = load ptr, ptr %dir, align 8
  %143 = load ptr, ptr %td, align 8
  %td_xresolution = getelementptr inbounds %struct.TIFFDirectory, ptr %143, i32 0, i32 21
  %call143 = call i32 @TIFFWriteRationalArray(ptr noundef %141, i32 noundef 5, i64 noundef 282, ptr noundef %142, i64 noundef 1, ptr noundef %td_xresolution)
  %tobool144 = icmp ne i32 %call143, 0
  br i1 %tobool144, label %if.end146, label %if.then145

if.then145:                                       ; preds = %sw.bb142
  br label %bad

if.end146:                                        ; preds = %sw.bb142
  %144 = load ptr, ptr %tif.addr, align 8
  %145 = load ptr, ptr %dir, align 8
  %add.ptr147 = getelementptr inbounds %struct.TIFFDirEntry, ptr %145, i64 1
  %146 = load ptr, ptr %td, align 8
  %td_yresolution = getelementptr inbounds %struct.TIFFDirectory, ptr %146, i32 0, i32 22
  %call148 = call i32 @TIFFWriteRationalArray(ptr noundef %144, i32 noundef 5, i64 noundef 283, ptr noundef %add.ptr147, i64 noundef 1, ptr noundef %td_yresolution)
  %tobool149 = icmp ne i32 %call148, 0
  br i1 %tobool149, label %if.end151, label %if.then150

if.then150:                                       ; preds = %if.end146
  br label %bad

if.end151:                                        ; preds = %if.end146
  %147 = load ptr, ptr %dir, align 8
  %incdec.ptr152 = getelementptr inbounds %struct.TIFFDirEntry, ptr %147, i32 1
  store ptr %incdec.ptr152, ptr %dir, align 8
  br label %sw.epilog

sw.bb153:                                         ; preds = %if.end88, %if.end88, %if.end88, %if.end88
  %148 = load ptr, ptr %tif.addr, align 8
  %149 = load ptr, ptr %fip, align 8
  %field_tag154 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %149, i32 0, i32 0
  %150 = load i64, ptr %field_tag154, align 8
  %151 = load ptr, ptr %dir, align 8
  %call155 = call i32 @TIFFWritePerSampleShorts(ptr noundef %148, i64 noundef %150, ptr noundef %151)
  %tobool156 = icmp ne i32 %call155, 0
  br i1 %tobool156, label %if.end158, label %if.then157

if.then157:                                       ; preds = %sw.bb153
  br label %bad

if.end158:                                        ; preds = %sw.bb153
  br label %sw.epilog

sw.bb159:                                         ; preds = %if.end88, %if.end88
  %152 = load ptr, ptr %tif.addr, align 8
  %153 = load ptr, ptr %tif.addr, align 8
  %call160 = call i32 @_TIFFSampleToTagType(ptr noundef %153)
  %154 = load ptr, ptr %fip, align 8
  %field_tag161 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %154, i32 0, i32 0
  %155 = load i64, ptr %field_tag161, align 8
  %156 = load ptr, ptr %dir, align 8
  %call162 = call i32 @TIFFWritePerSampleAnys(ptr noundef %152, i32 noundef %call160, i64 noundef %155, ptr noundef %156)
  %tobool163 = icmp ne i32 %call162, 0
  br i1 %tobool163, label %if.end165, label %if.then164

if.then164:                                       ; preds = %sw.bb159
  br label %bad

if.end165:                                        ; preds = %sw.bb159
  br label %sw.epilog

sw.bb166:                                         ; preds = %if.end88, %if.end88, %if.end88, %if.end88
  %157 = load ptr, ptr %tif.addr, align 8
  %158 = load ptr, ptr %fip, align 8
  %field_tag167 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %158, i32 0, i32 0
  %159 = load i64, ptr %field_tag167, align 8
  %160 = load ptr, ptr %dir, align 8
  %call168 = call i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dirwrite_0(ptr noundef %157, i64 noundef %159, ptr noundef %160)
  %tobool169 = icmp ne i32 %call168, 0
  br i1 %tobool169, label %if.end171, label %if.then170

if.then170:                                       ; preds = %sw.bb166
  br label %bad

if.end171:                                        ; preds = %sw.bb166
  br label %sw.epilog

sw.bb172:                                         ; preds = %if.end88
  %161 = load ptr, ptr %tif.addr, align 8
  %162 = load ptr, ptr %dir, align 8
  %call173 = call i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dirwrite_1(ptr noundef %161, ptr noundef %162)
  %tobool174 = icmp ne i32 %call173, 0
  br i1 %tobool174, label %if.end176, label %if.then175

if.then175:                                       ; preds = %sw.bb172
  br label %bad

if.end176:                                        ; preds = %sw.bb172
  br label %sw.epilog

sw.bb177:                                         ; preds = %if.end88
  %163 = load ptr, ptr %tif.addr, align 8
  %164 = load ptr, ptr %dir, align 8
  %call178 = call i32 @TIFFWriteTransferFunction(ptr noundef %163, ptr noundef %164)
  %tobool179 = icmp ne i32 %call178, 0
  br i1 %tobool179, label %if.end181, label %if.then180

if.then180:                                       ; preds = %sw.bb177
  br label %bad

if.end181:                                        ; preds = %sw.bb177
  br label %sw.epilog

sw.bb182:                                         ; preds = %if.end88
  %165 = load ptr, ptr %tif.addr, align 8
  %166 = load ptr, ptr %dir, align 8
  %167 = load ptr, ptr %fip, align 8
  %call183 = call i32 @TIFFWriteNormalTag(ptr noundef %165, ptr noundef %166, ptr noundef %167)
  %tobool184 = icmp ne i32 %call183, 0
  br i1 %tobool184, label %if.end186, label %if.then185

if.then185:                                       ; preds = %sw.bb182
  br label %bad

if.end186:                                        ; preds = %sw.bb182
  %168 = load ptr, ptr %dir, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %168, i32 0, i32 2
  %169 = load i64, ptr %tdir_count, align 8
  %cmp187 = icmp ugt i64 %169, 0
  br i1 %cmp187, label %if.then189, label %if.end203

if.then189:                                       ; preds = %if.end186
  %170 = load ptr, ptr %tif.addr, align 8
  %tif_flags190 = getelementptr inbounds %struct.tiff, ptr %170, i32 0, i32 3
  %171 = load i64, ptr %tif_flags190, align 8
  %or = or i64 %171, 8192
  store i64 %or, ptr %tif_flags190, align 8
  %172 = load ptr, ptr %dir, align 8
  %tdir_count191 = getelementptr inbounds %struct.TIFFDirEntry, ptr %172, i32 0, i32 2
  %173 = load i64, ptr %tdir_count191, align 8
  %conv192 = trunc i64 %173 to i16
  %174 = load ptr, ptr %tif.addr, align 8
  %tif_nsubifd = getelementptr inbounds %struct.tiff, ptr %174, i32 0, i32 16
  store i16 %conv192, ptr %tif_nsubifd, align 8
  %175 = load ptr, ptr %dir, align 8
  %tdir_count193 = getelementptr inbounds %struct.TIFFDirEntry, ptr %175, i32 0, i32 2
  %176 = load i64, ptr %tdir_count193, align 8
  %cmp194 = icmp ugt i64 %176, 1
  br i1 %cmp194, label %if.then196, label %if.else

if.then196:                                       ; preds = %if.then189
  %177 = load ptr, ptr %dir, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %177, i32 0, i32 3
  %178 = load i64, ptr %tdir_offset, align 8
  %179 = load ptr, ptr %tif.addr, align 8
  %tif_subifdoff = getelementptr inbounds %struct.tiff, ptr %179, i32 0, i32 17
  store i64 %178, ptr %tif_subifdoff, align 8
  br label %if.end202

if.else:                                          ; preds = %if.then189
  %180 = load ptr, ptr %tif.addr, align 8
  %tif_diroff197 = getelementptr inbounds %struct.tiff, ptr %180, i32 0, i32 4
  %181 = load i64, ptr %tif_diroff197, align 8
  %add198 = add i64 %181, 2
  %182 = load ptr, ptr %dir, align 8
  %tdir_offset199 = getelementptr inbounds %struct.TIFFDirEntry, ptr %182, i32 0, i32 3
  %183 = load ptr, ptr %data, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %tdir_offset199 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %183 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add200 = add i64 %add198, %sub.ptr.sub
  %184 = load ptr, ptr %tif.addr, align 8
  %tif_subifdoff201 = getelementptr inbounds %struct.tiff, ptr %184, i32 0, i32 17
  store i64 %add200, ptr %tif_subifdoff201, align 8
  br label %if.end202

if.end202:                                        ; preds = %if.else, %if.then196
  br label %if.end203

if.end203:                                        ; preds = %if.end202, %if.end186
  br label %sw.epilog

sw.default:                                       ; preds = %if.end88
  %185 = load ptr, ptr %tif.addr, align 8
  %186 = load ptr, ptr %dir, align 8
  %187 = load ptr, ptr %fip, align 8
  %call204 = call i32 @TIFFWriteNormalTag(ptr noundef %185, ptr noundef %186, ptr noundef %187)
  %tobool205 = icmp ne i32 %call204, 0
  br i1 %tobool205, label %if.end207, label %if.then206

if.then206:                                       ; preds = %sw.default
  br label %bad

if.end207:                                        ; preds = %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end207, %if.end203, %if.end181, %if.end176, %if.end171, %if.end165, %if.end158, %if.end151, %if.end140, %sw.bb130, %sw.bb129, %if.end128, %sw.bb122, %if.end121, %if.end104
  %188 = load ptr, ptr %dir, align 8
  %incdec.ptr208 = getelementptr inbounds %struct.TIFFDirEntry, ptr %188, i32 1
  store ptr %incdec.ptr208, ptr %dir, align 8
  %189 = load ptr, ptr %fip, align 8
  %field_bit209 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %189, i32 0, i32 4
  %190 = load i16, ptr %field_bit209, align 8
  %conv210 = zext i16 %190 to i32
  %and211 = and i32 %conv210, 31
  %sh_prom212 = zext i32 %and211 to i64
  %shl213 = shl i64 1, %sh_prom212
  %neg = xor i64 %shl213, -1
  %191 = load ptr, ptr %fip, align 8
  %field_bit214 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %191, i32 0, i32 4
  %192 = load i16, ptr %field_bit214, align 8
  %conv215 = zext i16 %192 to i32
  %div216 = sdiv i32 %conv215, 32
  %idxprom217 = sext i32 %div216 to i64
  %arrayidx218 = getelementptr inbounds [3 x i64], ptr %fields, i64 0, i64 %idxprom217
  %193 = load i64, ptr %arrayidx218, align 8
  %and219 = and i64 %193, %neg
  store i64 %and219, ptr %arrayidx218, align 8
  br label %for.inc220

for.inc220:                                       ; preds = %sw.epilog, %if.then115, %if.then99, %if.then87
  %194 = load i32, ptr %nfi, align 4
  %dec221 = add nsw i32 %194, -1
  store i32 %dec221, ptr %nfi, align 4
  %195 = load i32, ptr %fi, align 4
  %inc222 = add nsw i32 %195, 1
  store i32 %inc222, ptr %fi, align 4
  br label %for.cond72, !llvm.loop !8

for.end223:                                       ; preds = %for.cond72
  %196 = load i64, ptr %nfields, align 8
  %conv224 = trunc i64 %196 to i16
  store i16 %conv224, ptr %dircount, align 2
  %197 = load ptr, ptr %tif.addr, align 8
  %tif_nextdiroff = getelementptr inbounds %struct.tiff, ptr %197, i32 0, i32 5
  %198 = load i64, ptr %tif_nextdiroff, align 8
  store i64 %198, ptr %diroff, align 8
  %199 = load ptr, ptr %tif.addr, align 8
  %tif_flags225 = getelementptr inbounds %struct.tiff, ptr %199, i32 0, i32 3
  %200 = load i64, ptr %tif_flags225, align 8
  %and226 = and i64 %200, 128
  %tobool227 = icmp ne i64 %and226, 0
  br i1 %tobool227, label %if.then228, label %if.end238

if.then228:                                       ; preds = %for.end223
  %201 = load ptr, ptr %data, align 8
  store ptr %201, ptr %dir, align 8
  br label %for.cond229

for.cond229:                                      ; preds = %for.inc233, %if.then228
  %202 = load i16, ptr %dircount, align 2
  %tobool230 = icmp ne i16 %202, 0
  br i1 %tobool230, label %for.body231, label %for.end236

for.body231:                                      ; preds = %for.cond229
  %203 = load ptr, ptr %dir, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %203, i32 0, i32 0
  call void @TIFFSwabArrayOfShort(ptr noundef %tdir_tag, i64 noundef 2)
  %204 = load ptr, ptr %dir, align 8
  %tdir_count232 = getelementptr inbounds %struct.TIFFDirEntry, ptr %204, i32 0, i32 2
  call void @TIFFSwabArrayOfLong(ptr noundef %tdir_count232, i64 noundef 2)
  br label %for.inc233

for.inc233:                                       ; preds = %for.body231
  %205 = load ptr, ptr %dir, align 8
  %incdec.ptr234 = getelementptr inbounds %struct.TIFFDirEntry, ptr %205, i32 1
  store ptr %incdec.ptr234, ptr %dir, align 8
  %206 = load i16, ptr %dircount, align 2
  %dec235 = add i16 %206, -1
  store i16 %dec235, ptr %dircount, align 2
  br label %for.cond229, !llvm.loop !9

for.end236:                                       ; preds = %for.cond229
  %207 = load i64, ptr %nfields, align 8
  %conv237 = trunc i64 %207 to i16
  store i16 %conv237, ptr %dircount, align 2
  call void @TIFFSwabShort(ptr noundef %dircount)
  call void @TIFFSwabLong(ptr noundef %diroff)
  br label %if.end238

if.end238:                                        ; preds = %for.end236, %for.end223
  %208 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc239 = getelementptr inbounds %struct.tiff, ptr %208, i32 0, i32 51
  %209 = load ptr, ptr %tif_seekproc239, align 8
  %210 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata240 = getelementptr inbounds %struct.tiff, ptr %210, i32 0, i32 48
  %211 = load ptr, ptr %tif_clientdata240, align 8
  %212 = load ptr, ptr %tif.addr, align 8
  %tif_diroff241 = getelementptr inbounds %struct.tiff, ptr %212, i32 0, i32 4
  %213 = load i64, ptr %tif_diroff241, align 8
  %call242 = call i64 %209(ptr noundef %211, i64 noundef %213, i32 noundef 0)
  %214 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc = getelementptr inbounds %struct.tiff, ptr %214, i32 0, i32 50
  %215 = load ptr, ptr %tif_writeproc, align 8
  %216 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata243 = getelementptr inbounds %struct.tiff, ptr %216, i32 0, i32 48
  %217 = load ptr, ptr %tif_clientdata243, align 8
  %call244 = call i64 %215(ptr noundef %217, ptr noundef %dircount, i64 noundef 2)
  %cmp245 = icmp eq i64 %call244, 2
  br i1 %cmp245, label %if.end249, label %if.then247

if.then247:                                       ; preds = %if.end238
  %218 = load ptr, ptr %tif.addr, align 8
  %tif_name248 = getelementptr inbounds %struct.tiff, ptr %218, i32 0, i32 0
  %219 = load ptr, ptr %tif_name248, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %219, ptr noundef @.str.3)
  br label %bad

if.end249:                                        ; preds = %if.end238
  %220 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc250 = getelementptr inbounds %struct.tiff, ptr %220, i32 0, i32 50
  %221 = load ptr, ptr %tif_writeproc250, align 8
  %222 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata251 = getelementptr inbounds %struct.tiff, ptr %222, i32 0, i32 48
  %223 = load ptr, ptr %tif_clientdata251, align 8
  %224 = load ptr, ptr %data, align 8
  %225 = load i64, ptr %dirsize, align 8
  %call252 = call i64 %221(ptr noundef %223, ptr noundef %224, i64 noundef %225)
  %226 = load i64, ptr %dirsize, align 8
  %cmp253 = icmp eq i64 %call252, %226
  br i1 %cmp253, label %if.end257, label %if.then255

if.then255:                                       ; preds = %if.end249
  %227 = load ptr, ptr %tif.addr, align 8
  %tif_name256 = getelementptr inbounds %struct.tiff, ptr %227, i32 0, i32 0
  %228 = load ptr, ptr %tif_name256, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %228, ptr noundef @.str.4)
  br label %bad

if.end257:                                        ; preds = %if.end249
  %229 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc258 = getelementptr inbounds %struct.tiff, ptr %229, i32 0, i32 50
  %230 = load ptr, ptr %tif_writeproc258, align 8
  %231 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata259 = getelementptr inbounds %struct.tiff, ptr %231, i32 0, i32 48
  %232 = load ptr, ptr %tif_clientdata259, align 8
  %call260 = call i64 %230(ptr noundef %232, ptr noundef %diroff, i64 noundef 8)
  %cmp261 = icmp eq i64 %call260, 8
  br i1 %cmp261, label %if.end265, label %if.then263

if.then263:                                       ; preds = %if.end257
  %233 = load ptr, ptr %tif.addr, align 8
  %tif_name264 = getelementptr inbounds %struct.tiff, ptr %233, i32 0, i32 0
  %234 = load ptr, ptr %tif_name264, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %234, ptr noundef @.str.5)
  br label %bad

if.end265:                                        ; preds = %if.end257
  %235 = load ptr, ptr %tif.addr, align 8
  call void @TIFFFreeDirectory(ptr noundef %235)
  %236 = load ptr, ptr %data, align 8
  call void @_TIFFfree(ptr noundef %236)
  %237 = load ptr, ptr %tif.addr, align 8
  %tif_flags266 = getelementptr inbounds %struct.tiff, ptr %237, i32 0, i32 3
  %238 = load i64, ptr %tif_flags266, align 8
  %and267 = and i64 %238, -9
  store i64 %and267, ptr %tif_flags266, align 8
  %239 = load ptr, ptr %tif.addr, align 8
  %tif_cleanup = getelementptr inbounds %struct.tiff, ptr %239, i32 0, i32 34
  %240 = load ptr, ptr %tif_cleanup, align 8
  %241 = load ptr, ptr %tif.addr, align 8
  call void %240(ptr noundef %241)
  %242 = load ptr, ptr %tif.addr, align 8
  %call268 = call i32 @TIFFDefaultDirectory(ptr noundef %242)
  %243 = load ptr, ptr %tif.addr, align 8
  %tif_diroff269 = getelementptr inbounds %struct.tiff, ptr %243, i32 0, i32 4
  store i64 0, ptr %tif_diroff269, align 8
  %244 = load ptr, ptr %tif.addr, align 8
  %tif_curoff = getelementptr inbounds %struct.tiff, ptr %244, i32 0, i32 14
  store i64 0, ptr %tif_curoff, align 8
  %245 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %245, i32 0, i32 11
  store i64 -1, ptr %tif_row, align 8
  %246 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %246, i32 0, i32 13
  store i64 -1, ptr %tif_curstrip, align 8
  store i32 1, ptr %retval, align 4
  br label %return

bad:                                              ; preds = %if.then263, %if.then255, %if.then247, %if.then206, %if.then185, %if.then180, %if.then175, %if.then170, %if.then164, %if.then157, %if.then150, %if.then145, %if.then139, %if.then135, %if.then127, %if.then120, %if.then103, %if.then45
  %247 = load ptr, ptr %data, align 8
  call void @_TIFFfree(ptr noundef %247)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %bad, %if.end265, %if.then37, %if.then11, %if.then5, %if.then
  %248 = load i32, ptr %retval, align 4
  ret i32 %248
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

declare i32 @TIFFFlushData1(ptr noundef) #1

declare void @_TIFFfree(ptr noundef) #1

declare ptr @_TIFFmalloc(i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFLinkDirectory(ptr noundef %tif) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %nextdir = alloca i64, align 8
  %diroff = alloca i64, align 8
  %dircount = alloca i16, align 2
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 51
  %1 = load ptr, ptr %tif_seekproc, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 48
  %3 = load ptr, ptr %tif_clientdata, align 8
  %call = call i64 %1(ptr noundef %3, i64 noundef 0, i32 noundef 2)
  %add = add nsw i64 %call, 1
  %and = and i64 %add, -2
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_diroff = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 4
  store i64 %and, ptr %tif_diroff, align 8
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_diroff1 = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 4
  %6 = load i64, ptr %tif_diroff1, align 8
  store i64 %6, ptr %diroff, align 8
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %7, i32 0, i32 3
  %8 = load i64, ptr %tif_flags, align 8
  %and2 = and i64 %8, 128
  %tobool = icmp ne i64 %and2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @TIFFSwabLong(ptr noundef %diroff)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_flags3 = getelementptr inbounds %struct.tiff, ptr %9, i32 0, i32 3
  %10 = load i64, ptr %tif_flags3, align 8
  %and4 = and i64 %10, 8192
  %tobool5 = icmp ne i64 %and4, 0
  br i1 %tobool5, label %if.then6, label %if.end21

if.then6:                                         ; preds = %if.end
  %11 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc7 = getelementptr inbounds %struct.tiff, ptr %11, i32 0, i32 51
  %12 = load ptr, ptr %tif_seekproc7, align 8
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata8 = getelementptr inbounds %struct.tiff, ptr %13, i32 0, i32 48
  %14 = load ptr, ptr %tif_clientdata8, align 8
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_subifdoff = getelementptr inbounds %struct.tiff, ptr %15, i32 0, i32 17
  %16 = load i64, ptr %tif_subifdoff, align 8
  %call9 = call i64 %12(ptr noundef %14, i64 noundef %16, i32 noundef 0)
  %17 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc = getelementptr inbounds %struct.tiff, ptr %17, i32 0, i32 50
  %18 = load ptr, ptr %tif_writeproc, align 8
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata10 = getelementptr inbounds %struct.tiff, ptr %19, i32 0, i32 48
  %20 = load ptr, ptr %tif_clientdata10, align 8
  %call11 = call i64 %18(ptr noundef %20, ptr noundef %diroff, i64 noundef 8)
  %cmp = icmp eq i64 %call11, 8
  br i1 %cmp, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.then6
  %21 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %tif_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFLinkDirectory.module, ptr noundef @.str.8, ptr noundef %22)
  store i32 0, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.then6
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_nsubifd = getelementptr inbounds %struct.tiff, ptr %23, i32 0, i32 16
  %24 = load i16, ptr %tif_nsubifd, align 8
  %dec = add i16 %24, -1
  store i16 %dec, ptr %tif_nsubifd, align 8
  %tobool14 = icmp ne i16 %dec, 0
  br i1 %tobool14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end13
  %25 = load ptr, ptr %tif.addr, align 8
  %tif_subifdoff16 = getelementptr inbounds %struct.tiff, ptr %25, i32 0, i32 17
  %26 = load i64, ptr %tif_subifdoff16, align 8
  %add17 = add i64 %26, 8
  store i64 %add17, ptr %tif_subifdoff16, align 8
  br label %if.end20

if.else:                                          ; preds = %if.end13
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_flags18 = getelementptr inbounds %struct.tiff, ptr %27, i32 0, i32 3
  %28 = load i64, ptr %tif_flags18, align 8
  %and19 = and i64 %28, -8193
  store i64 %and19, ptr %tif_flags18, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then15
  store i32 1, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %29, i32 0, i32 7
  %tiff_diroff = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header, i32 0, i32 2
  %30 = load i64, ptr %tiff_diroff, align 8
  %cmp22 = icmp eq i64 %30, 0
  br i1 %cmp22, label %if.then23, label %if.end37

if.then23:                                        ; preds = %if.end21
  %31 = load ptr, ptr %tif.addr, align 8
  %tif_diroff24 = getelementptr inbounds %struct.tiff, ptr %31, i32 0, i32 4
  %32 = load i64, ptr %tif_diroff24, align 8
  %33 = load ptr, ptr %tif.addr, align 8
  %tif_header25 = getelementptr inbounds %struct.tiff, ptr %33, i32 0, i32 7
  %tiff_diroff26 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header25, i32 0, i32 2
  store i64 %32, ptr %tiff_diroff26, align 8
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc27 = getelementptr inbounds %struct.tiff, ptr %34, i32 0, i32 51
  %35 = load ptr, ptr %tif_seekproc27, align 8
  %36 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata28 = getelementptr inbounds %struct.tiff, ptr %36, i32 0, i32 48
  %37 = load ptr, ptr %tif_clientdata28, align 8
  %call29 = call i64 %35(ptr noundef %37, i64 noundef ptrtoint (ptr getelementptr inbounds (%struct.TIFFHeader, ptr null, i32 0, i32 2) to i64), i32 noundef 0)
  %38 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc30 = getelementptr inbounds %struct.tiff, ptr %38, i32 0, i32 50
  %39 = load ptr, ptr %tif_writeproc30, align 8
  %40 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata31 = getelementptr inbounds %struct.tiff, ptr %40, i32 0, i32 48
  %41 = load ptr, ptr %tif_clientdata31, align 8
  %call32 = call i64 %39(ptr noundef %41, ptr noundef %diroff, i64 noundef 8)
  %cmp33 = icmp eq i64 %call32, 8
  br i1 %cmp33, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.then23
  %42 = load ptr, ptr %tif.addr, align 8
  %tif_name35 = getelementptr inbounds %struct.tiff, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %tif_name35, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %43, ptr noundef @.str.9)
  store i32 0, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.then23
  store i32 1, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.end21
  %44 = load ptr, ptr %tif.addr, align 8
  %tif_header38 = getelementptr inbounds %struct.tiff, ptr %44, i32 0, i32 7
  %tiff_diroff39 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header38, i32 0, i32 2
  %45 = load i64, ptr %tiff_diroff39, align 8
  store i64 %45, ptr %nextdir, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end37
  %46 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc40 = getelementptr inbounds %struct.tiff, ptr %46, i32 0, i32 51
  %47 = load ptr, ptr %tif_seekproc40, align 8
  %48 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata41 = getelementptr inbounds %struct.tiff, ptr %48, i32 0, i32 48
  %49 = load ptr, ptr %tif_clientdata41, align 8
  %50 = load i64, ptr %nextdir, align 8
  %call42 = call i64 %47(ptr noundef %49, i64 noundef %50, i32 noundef 0)
  %51 = load i64, ptr %nextdir, align 8
  %cmp43 = icmp eq i64 %call42, %51
  br i1 %cmp43, label %lor.lhs.false, label %if.then47

lor.lhs.false:                                    ; preds = %do.body
  %52 = load ptr, ptr %tif.addr, align 8
  %tif_readproc = getelementptr inbounds %struct.tiff, ptr %52, i32 0, i32 49
  %53 = load ptr, ptr %tif_readproc, align 8
  %54 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata44 = getelementptr inbounds %struct.tiff, ptr %54, i32 0, i32 48
  %55 = load ptr, ptr %tif_clientdata44, align 8
  %call45 = call i64 %53(ptr noundef %55, ptr noundef %dircount, i64 noundef 2)
  %cmp46 = icmp eq i64 %call45, 2
  br i1 %cmp46, label %if.end48, label %if.then47

if.then47:                                        ; preds = %lor.lhs.false, %do.body
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFLinkDirectory.module, ptr noundef @.str.10)
  store i32 0, ptr %retval, align 4
  br label %return

if.end48:                                         ; preds = %lor.lhs.false
  %56 = load ptr, ptr %tif.addr, align 8
  %tif_flags49 = getelementptr inbounds %struct.tiff, ptr %56, i32 0, i32 3
  %57 = load i64, ptr %tif_flags49, align 8
  %and50 = and i64 %57, 128
  %tobool51 = icmp ne i64 %and50, 0
  br i1 %tobool51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end48
  call void @TIFFSwabShort(ptr noundef %dircount)
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end48
  %58 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc54 = getelementptr inbounds %struct.tiff, ptr %58, i32 0, i32 51
  %59 = load ptr, ptr %tif_seekproc54, align 8
  %60 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata55 = getelementptr inbounds %struct.tiff, ptr %60, i32 0, i32 48
  %61 = load ptr, ptr %tif_clientdata55, align 8
  %62 = load i16, ptr %dircount, align 2
  %conv = zext i16 %62 to i64
  %mul = mul i64 %conv, 24
  %call56 = call i64 %59(ptr noundef %61, i64 noundef %mul, i32 noundef 1)
  %63 = load ptr, ptr %tif.addr, align 8
  %tif_readproc57 = getelementptr inbounds %struct.tiff, ptr %63, i32 0, i32 49
  %64 = load ptr, ptr %tif_readproc57, align 8
  %65 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata58 = getelementptr inbounds %struct.tiff, ptr %65, i32 0, i32 48
  %66 = load ptr, ptr %tif_clientdata58, align 8
  %call59 = call i64 %64(ptr noundef %66, ptr noundef %nextdir, i64 noundef 8)
  %cmp60 = icmp eq i64 %call59, 8
  br i1 %cmp60, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.end53
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFLinkDirectory.module, ptr noundef @.str.11)
  store i32 0, ptr %retval, align 4
  br label %return

if.end63:                                         ; preds = %if.end53
  %67 = load ptr, ptr %tif.addr, align 8
  %tif_flags64 = getelementptr inbounds %struct.tiff, ptr %67, i32 0, i32 3
  %68 = load i64, ptr %tif_flags64, align 8
  %and65 = and i64 %68, 128
  %tobool66 = icmp ne i64 %and65, 0
  br i1 %tobool66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end63
  call void @TIFFSwabLong(ptr noundef %nextdir)
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end63
  br label %do.cond

do.cond:                                          ; preds = %if.end68
  %69 = load i64, ptr %nextdir, align 8
  %cmp69 = icmp ne i64 %69, 0
  br i1 %cmp69, label %do.body, label %do.end, !llvm.loop !10

do.end:                                           ; preds = %do.cond
  %70 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc71 = getelementptr inbounds %struct.tiff, ptr %70, i32 0, i32 51
  %71 = load ptr, ptr %tif_seekproc71, align 8
  %72 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata72 = getelementptr inbounds %struct.tiff, ptr %72, i32 0, i32 48
  %73 = load ptr, ptr %tif_clientdata72, align 8
  %call73 = call i64 %71(ptr noundef %73, i64 noundef -8, i32 noundef 1)
  %74 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc74 = getelementptr inbounds %struct.tiff, ptr %74, i32 0, i32 50
  %75 = load ptr, ptr %tif_writeproc74, align 8
  %76 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata75 = getelementptr inbounds %struct.tiff, ptr %76, i32 0, i32 48
  %77 = load ptr, ptr %tif_clientdata75, align 8
  %call76 = call i64 %75(ptr noundef %77, ptr noundef %diroff, i64 noundef 8)
  %cmp77 = icmp eq i64 %call76, 8
  br i1 %cmp77, label %if.end80, label %if.then79

if.then79:                                        ; preds = %do.end
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFLinkDirectory.module, ptr noundef @.str.5)
  store i32 0, ptr %retval, align 4
  br label %return

if.end80:                                         ; preds = %do.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end80, %if.then79, %if.then62, %if.then47, %if.end36, %if.then34, %if.end20, %if.then12
  %78 = load i32, ptr %retval, align 4
  ret i32 %78
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFWriteLongArray(ptr noundef %tif, i32 noundef %type, i64 noundef %tag, ptr noundef %dir, i64 noundef %n, ptr noundef %v) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %tag.addr = alloca i64, align 8
  %dir.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  store i64 %tag, ptr %tag.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  %0 = load i64, ptr %tag.addr, align 8
  %conv = trunc i64 %0 to i16
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i32 0, i32 0
  store i16 %conv, ptr %tdir_tag, align 8
  %2 = load i32, ptr %type.addr, align 4
  %conv1 = trunc i32 %2 to i16
  %3 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %3, i32 0, i32 1
  store i16 %conv1, ptr %tdir_type, align 2
  %4 = load i64, ptr %n.addr, align 8
  %5 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i32 0, i32 2
  store i64 %4, ptr %tdir_count, align 8
  %6 = load i64, ptr %n.addr, align 8
  %cmp = icmp eq i64 %6, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %v.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %7, i64 0
  %8 = load i64, ptr %arrayidx, align 8
  %9 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %9, i32 0, i32 3
  store i64 %8, ptr %tdir_offset, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %tif.addr, align 8
  %11 = load ptr, ptr %dir.addr, align 8
  %12 = load ptr, ptr %v.addr, align 8
  %call = call i32 @TIFFWriteData(ptr noundef %10, ptr noundef %11, ptr noundef %12)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind ssp uwtable
define internal void @TIFFSetupShortLong(ptr noundef %tif, i64 noundef %tag, ptr noundef %dir, i64 noundef %v) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i64, align 8
  %dir.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tag, ptr %tag.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i64 %v, ptr %v.addr, align 8
  %0 = load i64, ptr %tag.addr, align 8
  %conv = trunc i64 %0 to i16
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i32 0, i32 0
  store i16 %conv, ptr %tdir_tag, align 8
  %2 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %2, i32 0, i32 2
  store i64 1, ptr %tdir_count, align 8
  %3 = load i64, ptr %v.addr, align 8
  %cmp = icmp ugt i64 %3, 65535
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %4, i32 0, i32 1
  store i16 4, ptr %tdir_type, align 2
  %5 = load i64, ptr %v.addr, align 8
  %6 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %6, i32 0, i32 3
  store i64 %5, ptr %tdir_offset, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %dir.addr, align 8
  %tdir_type2 = getelementptr inbounds %struct.TIFFDirEntry, ptr %7, i32 0, i32 1
  store i16 3, ptr %tdir_type2, align 2
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 7
  %tiff_magic = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header, i32 0, i32 0
  %9 = load i16, ptr %tiff_magic, align 8
  %conv3 = zext i16 %9 to i32
  %cmp4 = icmp eq i32 %conv3, 19789
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %10 = load i64, ptr %v.addr, align 8
  %11 = load ptr, ptr %tif.addr, align 8
  %tif_typemask = getelementptr inbounds %struct.tiff, ptr %11, i32 0, i32 10
  %12 = load ptr, ptr %tif_typemask, align 8
  %arrayidx = getelementptr inbounds i64, ptr %12, i64 3
  %13 = load i64, ptr %arrayidx, align 8
  %and = and i64 %10, %13
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift = getelementptr inbounds %struct.tiff, ptr %14, i32 0, i32 9
  %15 = load ptr, ptr %tif_typeshift, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %15, i64 3
  %16 = load i32, ptr %arrayidx6, align 4
  %sh_prom = zext i32 %16 to i64
  %shl = shl i64 %and, %sh_prom
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %17 = load i64, ptr %v.addr, align 8
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_typemask7 = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 10
  %19 = load ptr, ptr %tif_typemask7, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %19, i64 3
  %20 = load i64, ptr %arrayidx8, align 8
  %and9 = and i64 %17, %20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shl, %cond.true ], [ %and9, %cond.false ]
  %21 = load ptr, ptr %dir.addr, align 8
  %tdir_offset10 = getelementptr inbounds %struct.TIFFDirEntry, ptr %21, i32 0, i32 3
  store i64 %cond, ptr %tdir_offset10, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFWriteShortTable(ptr noundef %tif, i64 noundef %tag, ptr noundef %dir, i64 noundef %n, ptr noundef %table) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i64, align 8
  %dir.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %table.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %off = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tag, ptr %tag.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %table, ptr %table.addr, align 8
  %0 = load i64, ptr %tag.addr, align 8
  %conv = trunc i64 %0 to i16
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i32 0, i32 0
  store i16 %conv, ptr %tdir_tag, align 8
  %2 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %2, i32 0, i32 1
  store i16 3, ptr %tdir_type, align 2
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 6
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir, i32 0, i32 8
  %4 = load i16, ptr %td_bitspersample, align 8
  %conv1 = zext i16 %4 to i32
  %sh_prom = zext i32 %conv1 to i64
  %shl = shl i64 1, %sh_prom
  %5 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i32 0, i32 2
  store i64 %shl, ptr %tdir_count, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_dataoff = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 15
  %7 = load i64, ptr %tif_dataoff, align 8
  store i64 %7, ptr %off, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i64, ptr %i, align 8
  %9 = load i64, ptr %n.addr, align 8
  %cmp = icmp ult i64 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %tif.addr, align 8
  %11 = load ptr, ptr %dir.addr, align 8
  %12 = load ptr, ptr %table.addr, align 8
  %13 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %12, i64 %13
  %14 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @TIFFWriteData(ptr noundef %10, ptr noundef %11, ptr noundef %14)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i64, ptr %i, align 8
  %inc = add i64 %15, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %16 = load i64, ptr %n.addr, align 8
  %17 = load ptr, ptr %dir.addr, align 8
  %tdir_count3 = getelementptr inbounds %struct.TIFFDirEntry, ptr %17, i32 0, i32 2
  %18 = load i64, ptr %tdir_count3, align 8
  %mul = mul i64 %18, %16
  store i64 %mul, ptr %tdir_count3, align 8
  %19 = load i64, ptr %off, align 8
  %20 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %20, i32 0, i32 3
  store i64 %19, ptr %tdir_offset, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFWriteRationalArray(ptr noundef %tif, i32 noundef %type, i64 noundef %tag, ptr noundef %dir, i64 noundef %n, ptr noundef %v) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %tag.addr = alloca i64, align 8
  %dir.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %t = alloca ptr, align 8
  %status = alloca i32, align 4
  %fv = alloca float, align 4
  %sign = alloca i32, align 4
  %den = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  store i64 %tag, ptr %tag.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  %0 = load i64, ptr %tag.addr, align 8
  %conv = trunc i64 %0 to i16
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i32 0, i32 0
  store i16 %conv, ptr %tdir_tag, align 8
  %2 = load i32, ptr %type.addr, align 4
  %conv1 = trunc i32 %2 to i16
  %3 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %3, i32 0, i32 1
  store i16 %conv1, ptr %tdir_type, align 2
  %4 = load i64, ptr %n.addr, align 8
  %5 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i32 0, i32 2
  store i64 %4, ptr %tdir_count, align 8
  %6 = load i64, ptr %n.addr, align 8
  %mul = mul i64 2, %6
  %mul2 = mul i64 %mul, 8
  %call = call ptr @_TIFFmalloc(i64 noundef %mul2)
  store ptr %call, ptr %t, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i64, ptr %i, align 8
  %8 = load i64, ptr %n.addr, align 8
  %cmp = icmp ult i64 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %v.addr, align 8
  %10 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds float, ptr %9, i64 %10
  %11 = load float, ptr %arrayidx, align 4
  store float %11, ptr %fv, align 4
  store i32 1, ptr %sign, align 4
  %12 = load float, ptr %fv, align 4
  %cmp4 = fcmp olt float %12, 0.000000e+00
  br i1 %cmp4, label %if.then, label %if.end11

if.then:                                          ; preds = %for.body
  %13 = load i32, ptr %type.addr, align 4
  %cmp6 = icmp eq i32 %13, 5
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %tif_name, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %17 = load i64, ptr %tag.addr, align 8
  %call9 = call ptr @_TIFFFieldWithTag(ptr noundef %16, i64 noundef %17)
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call9, i32 0, i32 7
  %18 = load ptr, ptr %field_name, align 8
  %19 = load float, ptr %fv, align 4
  %conv10 = fpext float %19 to double
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %15, ptr noundef @.str.7, ptr noundef %18, double noundef %conv10)
  store float 0.000000e+00, ptr %fv, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %20 = load float, ptr %fv, align 4
  %fneg = fneg float %20
  store float %fneg, ptr %fv, align 4
  store i32 -1, ptr %sign, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then8
  br label %if.end11

if.end11:                                         ; preds = %if.end, %for.body
  store i64 1, ptr %den, align 8
  %21 = load float, ptr %fv, align 4
  %cmp12 = fcmp ogt float %21, 0.000000e+00
  br i1 %cmp12, label %if.then14, label %if.end21

if.then14:                                        ; preds = %if.end11
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then14
  %22 = load float, ptr %fv, align 4
  %cmp15 = fcmp olt float %22, 0x41B0000000000000
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %23 = load i64, ptr %den, align 8
  %cmp17 = icmp ult i64 %23, 268435456
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %24 = phi i1 [ false, %while.cond ], [ %cmp17, %land.rhs ]
  br i1 %24, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %25 = load float, ptr %fv, align 4
  %mul19 = fmul float %25, 8.000000e+00
  store float %mul19, ptr %fv, align 4
  %26 = load i64, ptr %den, align 8
  %mul20 = mul i64 %26, 8
  store i64 %mul20, ptr %den, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %land.end
  br label %if.end21

if.end21:                                         ; preds = %while.end, %if.end11
  %27 = load i32, ptr %sign, align 4
  %conv22 = sitofp i32 %27 to double
  %28 = load float, ptr %fv, align 4
  %conv23 = fpext float %28 to double
  %add = fadd double %conv23, 5.000000e-01
  %mul24 = fmul double %conv22, %add
  %conv25 = fptoui double %mul24 to i64
  %29 = load ptr, ptr %t, align 8
  %30 = load i64, ptr %i, align 8
  %mul26 = mul i64 2, %30
  %add27 = add i64 %mul26, 0
  %arrayidx28 = getelementptr inbounds i64, ptr %29, i64 %add27
  store i64 %conv25, ptr %arrayidx28, align 8
  %31 = load i64, ptr %den, align 8
  %32 = load ptr, ptr %t, align 8
  %33 = load i64, ptr %i, align 8
  %mul29 = mul i64 2, %33
  %add30 = add i64 %mul29, 1
  %arrayidx31 = getelementptr inbounds i64, ptr %32, i64 %add30
  store i64 %31, ptr %arrayidx31, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %34 = load i64, ptr %i, align 8
  %inc = add i64 %34, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %35 = load ptr, ptr %tif.addr, align 8
  %36 = load ptr, ptr %dir.addr, align 8
  %37 = load ptr, ptr %t, align 8
  %call32 = call i32 @TIFFWriteData(ptr noundef %35, ptr noundef %36, ptr noundef %37)
  store i32 %call32, ptr %status, align 4
  %38 = load ptr, ptr %t, align 8
  call void @_TIFFfree(ptr noundef %38)
  %39 = load i32, ptr %status, align 4
  ret i32 %39
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFWritePerSampleShorts(ptr noundef %tif, i64 noundef %tag, ptr noundef %dir) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i64, align 8
  %dir.addr = alloca ptr, align 8
  %buf = alloca [10 x i16], align 2
  %v = alloca i16, align 2
  %w = alloca ptr, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %samples = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tag, ptr %tag.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  %arraydecay = getelementptr inbounds [10 x i16], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %w, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir, i32 0, i32 15
  %1 = load i16, ptr %td_samplesperpixel, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %samples, align 4
  %2 = load i32, ptr %samples, align 4
  %conv1 = sext i32 %2 to i64
  %cmp = icmp ugt i64 %conv1, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %samples, align 4
  %conv3 = sext i32 %3 to i64
  %mul = mul i64 %conv3, 2
  %call = call ptr @_TIFFmalloc(i64 noundef %mul)
  store ptr %call, ptr %w, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %tif.addr, align 8
  %5 = load i64, ptr %tag.addr, align 8
  %call4 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %4, i64 noundef %5, ptr noundef %v)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %samples, align 4
  %cmp5 = icmp slt i32 %6, %7
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i16, ptr %v, align 2
  %9 = load ptr, ptr %w, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i16, ptr %9, i64 %idxprom
  store i16 %8, ptr %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %tif.addr, align 8
  %13 = load i64, ptr %tag.addr, align 8
  %14 = load ptr, ptr %dir.addr, align 8
  %15 = load i32, ptr %samples, align 4
  %conv7 = sext i32 %15 to i64
  %16 = load ptr, ptr %w, align 8
  %call8 = call i32 @TIFFWriteShortArray(ptr noundef %12, i32 noundef 3, i64 noundef %13, ptr noundef %14, i64 noundef %conv7, ptr noundef %16)
  store i32 %call8, ptr %status, align 4
  %17 = load ptr, ptr %w, align 8
  %arraydecay9 = getelementptr inbounds [10 x i16], ptr %buf, i64 0, i64 0
  %cmp10 = icmp ne ptr %17, %arraydecay9
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.end
  %18 = load ptr, ptr %w, align 8
  call void @_TIFFfree(ptr noundef %18)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %for.end
  %19 = load i32, ptr %status, align 4
  ret i32 %19
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFWritePerSampleAnys(ptr noundef %tif, i32 noundef %type, i64 noundef %tag, ptr noundef %dir) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %tag.addr = alloca i64, align 8
  %dir.addr = alloca ptr, align 8
  %buf = alloca [10 x double], align 8
  %v = alloca double, align 8
  %w = alloca ptr, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %samples = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  store i64 %tag, ptr %tag.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  %arraydecay = getelementptr inbounds [10 x double], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %w, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir, i32 0, i32 15
  %1 = load i16, ptr %td_samplesperpixel, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %samples, align 4
  %2 = load i32, ptr %samples, align 4
  %conv1 = sext i32 %2 to i64
  %cmp = icmp ugt i64 %conv1, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %samples, align 4
  %conv3 = sext i32 %3 to i64
  %mul = mul i64 %conv3, 8
  %call = call ptr @_TIFFmalloc(i64 noundef %mul)
  store ptr %call, ptr %w, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %tif.addr, align 8
  %5 = load i64, ptr %tag.addr, align 8
  %call4 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %4, i64 noundef %5, ptr noundef %v)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %samples, align 4
  %cmp5 = icmp slt i32 %6, %7
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load double, ptr %v, align 8
  %9 = load ptr, ptr %w, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds double, ptr %9, i64 %idxprom
  store double %8, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %tif.addr, align 8
  %13 = load i32, ptr %type.addr, align 4
  %14 = load i64, ptr %tag.addr, align 8
  %15 = load ptr, ptr %dir.addr, align 8
  %16 = load i32, ptr %samples, align 4
  %conv7 = sext i32 %16 to i64
  %17 = load ptr, ptr %w, align 8
  %call8 = call i32 @TIFFWriteAnyArray(ptr noundef %12, i32 noundef %13, i64 noundef %14, ptr noundef %15, i64 noundef %conv7, ptr noundef %17)
  store i32 %call8, ptr %status, align 4
  %18 = load ptr, ptr %w, align 8
  %arraydecay9 = getelementptr inbounds [10 x double], ptr %buf, i64 0, i64 0
  %cmp10 = icmp ne ptr %18, %arraydecay9
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.end
  %19 = load ptr, ptr %w, align 8
  call void @_TIFFfree(ptr noundef %19)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %for.end
  %20 = load i32, ptr %status, align 4
  ret i32 %20
}

declare i32 @_TIFFSampleToTagType(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFSetupShortPair(ptr noundef %tif, i64 noundef %tag, ptr noundef %dir) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i64, align 8
  %dir.addr = alloca ptr, align 8
  %v = alloca [2 x i16], align 2
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tag, ptr %tag.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load i64, ptr %tag.addr, align 8
  %arrayidx = getelementptr inbounds [2 x i16], ptr %v, i64 0, i64 0
  %arrayidx1 = getelementptr inbounds [2 x i16], ptr %v, i64 0, i64 1
  %call = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %0, i64 noundef %1, ptr noundef %arrayidx, ptr noundef %arrayidx1)
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load i64, ptr %tag.addr, align 8
  %4 = load ptr, ptr %dir.addr, align 8
  %arraydecay = getelementptr inbounds [2 x i16], ptr %v, i64 0, i64 0
  %call2 = call i32 @TIFFWriteShortArray(ptr noundef %2, i32 noundef 3, i64 noundef %3, ptr noundef %4, i64 noundef 2, ptr noundef %arraydecay)
  ret i32 %call2
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFWriteInkNames(ptr noundef %tif, ptr noundef %dir) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i32 0, i32 0
  store i16 333, ptr %tdir_tag, align 8
  %2 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %2, i32 0, i32 1
  store i16 2, ptr %tdir_type, align 2
  %3 = load ptr, ptr %td, align 8
  %td_inknameslen = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 58
  %4 = load i32, ptr %td_inknameslen, align 8
  %conv = sext i32 %4 to i64
  %5 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i32 0, i32 2
  store i64 %conv, ptr %tdir_count, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %7 = load ptr, ptr %dir.addr, align 8
  %8 = load ptr, ptr %td, align 8
  %td_inknames = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i32 0, i32 59
  %9 = load ptr, ptr %td_inknames, align 8
  %call = call i32 @TIFFWriteByteArray(ptr noundef %6, ptr noundef %7, ptr noundef %9)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFWriteTransferFunction(ptr noundef %tif, ptr noundef %dir) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %n = alloca i64, align 8
  %tf = alloca ptr, align 8
  %ncols = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 8
  %2 = load i16, ptr %td_bitspersample, align 8
  %conv = zext i16 %2 to i32
  %sh_prom = zext i32 %conv to i64
  %shl = shl i64 1, %sh_prom
  %mul = mul i64 %shl, 2
  store i64 %mul, ptr %n, align 8
  %3 = load ptr, ptr %td, align 8
  %td_transferfunction = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 54
  %arraydecay = getelementptr inbounds [3 x ptr], ptr %td_transferfunction, i64 0, i64 0
  store ptr %arraydecay, ptr %tf, align 8
  %4 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %4, i32 0, i32 15
  %5 = load i16, ptr %td_samplesperpixel, align 2
  %conv1 = zext i16 %5 to i32
  %6 = load ptr, ptr %td, align 8
  %td_extrasamples = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i32 0, i32 30
  %7 = load i16, ptr %td_extrasamples, align 4
  %conv2 = zext i16 %7 to i32
  %sub = sub nsw i32 %conv1, %conv2
  switch i32 %sub, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb10
    i32 0, label %sw.bb10
  ]

sw.default:                                       ; preds = %entry
  %8 = load ptr, ptr %tf, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 0
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = load ptr, ptr %tf, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %10, i64 2
  %11 = load ptr, ptr %arrayidx3, align 8
  %12 = load i64, ptr %n, align 8
  %call = call i32 @_TIFFmemcmp(ptr noundef %9, ptr noundef %11, i64 noundef %12)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  store i32 3, ptr %ncols, align 4
  br label %sw.epilog

if.end:                                           ; preds = %sw.default
  br label %sw.bb

sw.bb:                                            ; preds = %entry, %if.end
  %13 = load ptr, ptr %tf, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %13, i64 0
  %14 = load ptr, ptr %arrayidx4, align 8
  %15 = load ptr, ptr %tf, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %15, i64 1
  %16 = load ptr, ptr %arrayidx5, align 8
  %17 = load i64, ptr %n, align 8
  %call6 = call i32 @_TIFFmemcmp(ptr noundef %14, ptr noundef %16, i64 noundef %17)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %sw.bb
  store i32 3, ptr %ncols, align 4
  br label %sw.epilog

if.end9:                                          ; preds = %sw.bb
  br label %sw.bb10

sw.bb10:                                          ; preds = %entry, %entry, %if.end9
  store i32 1, ptr %ncols, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %if.then8, %if.then
  %18 = load ptr, ptr %tif.addr, align 8
  %19 = load ptr, ptr %dir.addr, align 8
  %20 = load i32, ptr %ncols, align 4
  %conv11 = sext i32 %20 to i64
  %21 = load ptr, ptr %tf, align 8
  %call12 = call i32 @TIFFWriteShortTable(ptr noundef %18, i64 noundef 301, ptr noundef %19, i64 noundef %conv11, ptr noundef %21)
  ret i32 %call12
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFWriteNormalTag(ptr noundef %tif, ptr noundef %dir, ptr noundef %fip) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %fip.addr = alloca ptr, align 8
  %wc = alloca i16, align 2
  %wc2 = alloca i64, align 8
  %wp = alloca ptr, align 8
  %sv = alloca i16, align 2
  %lp = alloca ptr, align 8
  %fp = alloca ptr, align 8
  %fv = alloca float, align 4
  %fp102 = alloca ptr, align 8
  %fv121 = alloca float, align 4
  %dp = alloca ptr, align 8
  %dv = alloca double, align 8
  %cp = alloca ptr, align 8
  %cp179 = alloca ptr, align 8
  %cv = alloca i8, align 1
  %cp205 = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %fip, ptr %fip.addr, align 8
  %0 = load ptr, ptr %fip.addr, align 8
  %field_writecount = getelementptr inbounds %struct.TIFFFieldInfo, ptr %0, i32 0, i32 2
  %1 = load i16, ptr %field_writecount, align 2
  store i16 %1, ptr %wc, align 2
  %2 = load ptr, ptr %fip.addr, align 8
  %field_tag = getelementptr inbounds %struct.TIFFFieldInfo, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %field_tag, align 8
  %conv = trunc i64 %3 to i16
  %4 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %4, i32 0, i32 0
  store i16 %conv, ptr %tdir_tag, align 8
  %5 = load ptr, ptr %fip.addr, align 8
  %field_type = getelementptr inbounds %struct.TIFFFieldInfo, ptr %5, i32 0, i32 3
  %6 = load i32, ptr %field_type, align 4
  %conv1 = trunc i32 %6 to i16
  %7 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %7, i32 0, i32 1
  store i16 %conv1, ptr %tdir_type, align 2
  %8 = load i16, ptr %wc, align 2
  %conv2 = zext i16 %8 to i64
  %9 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %9, i32 0, i32 2
  store i64 %conv2, ptr %tdir_count, align 8
  %10 = load ptr, ptr %fip.addr, align 8
  %field_type3 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %field_type3, align 4
  switch i32 %11, label %sw.epilog [
    i32 3, label %sw.bb
    i32 8, label %sw.bb
    i32 4, label %sw.bb37
    i32 9, label %sw.bb37
    i32 5, label %sw.bb64
    i32 10, label %sw.bb64
    i32 11, label %sw.bb97
    i32 12, label %sw.bb132
    i32 2, label %sw.bb165
    i32 1, label %sw.bb174
    i32 6, label %sw.bb174
    i32 7, label %sw.bb204
    i32 0, label %sw.bb231
  ]

sw.bb:                                            ; preds = %entry, %entry
  %12 = load i16, ptr %wc, align 2
  %conv4 = zext i16 %12 to i32
  %cmp = icmp sgt i32 %conv4, 1
  br i1 %cmp, label %if.then, label %if.else19

if.then:                                          ; preds = %sw.bb
  %13 = load i16, ptr %wc, align 2
  %conv6 = zext i16 %13 to i32
  %cmp7 = icmp eq i32 %conv6, 65535
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then
  %14 = load ptr, ptr %tif.addr, align 8
  %15 = load ptr, ptr %fip.addr, align 8
  %field_tag10 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %15, i32 0, i32 0
  %16 = load i64, ptr %field_tag10, align 8
  %call = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %14, i64 noundef %16, ptr noundef %wc, ptr noundef %wp)
  br label %if.end

if.else:                                          ; preds = %if.then
  %17 = load ptr, ptr %tif.addr, align 8
  %18 = load ptr, ptr %fip.addr, align 8
  %field_tag11 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %18, i32 0, i32 0
  %19 = load i64, ptr %field_tag11, align 8
  %call12 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %17, i64 noundef %19, ptr noundef %wp)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then9
  %20 = load ptr, ptr %tif.addr, align 8
  %21 = load ptr, ptr %fip.addr, align 8
  %field_type13 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %21, i32 0, i32 3
  %22 = load i32, ptr %field_type13, align 4
  %23 = load ptr, ptr %fip.addr, align 8
  %field_tag14 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %23, i32 0, i32 0
  %24 = load i64, ptr %field_tag14, align 8
  %25 = load ptr, ptr %dir.addr, align 8
  %26 = load i16, ptr %wc, align 2
  %conv15 = zext i16 %26 to i64
  %27 = load ptr, ptr %wp, align 8
  %call16 = call i32 @TIFFWriteShortArray(ptr noundef %20, i32 noundef %22, i64 noundef %24, ptr noundef %25, i64 noundef %conv15, ptr noundef %27)
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end
  br label %if.end36

if.else19:                                        ; preds = %sw.bb
  %28 = load ptr, ptr %tif.addr, align 8
  %29 = load ptr, ptr %fip.addr, align 8
  %field_tag20 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %29, i32 0, i32 0
  %30 = load i64, ptr %field_tag20, align 8
  %call21 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %28, i64 noundef %30, ptr noundef %sv)
  %31 = load ptr, ptr %tif.addr, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %31, i32 0, i32 7
  %tiff_magic = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header, i32 0, i32 0
  %32 = load i16, ptr %tiff_magic, align 8
  %conv22 = zext i16 %32 to i32
  %cmp23 = icmp eq i32 %conv22, 19789
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else19
  %33 = load i16, ptr %sv, align 2
  %conv25 = zext i16 %33 to i64
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_typemask = getelementptr inbounds %struct.tiff, ptr %34, i32 0, i32 10
  %35 = load ptr, ptr %tif_typemask, align 8
  %36 = load ptr, ptr %dir.addr, align 8
  %tdir_type26 = getelementptr inbounds %struct.TIFFDirEntry, ptr %36, i32 0, i32 1
  %37 = load i16, ptr %tdir_type26, align 2
  %idxprom = zext i16 %37 to i64
  %arrayidx = getelementptr inbounds i64, ptr %35, i64 %idxprom
  %38 = load i64, ptr %arrayidx, align 8
  %and = and i64 %conv25, %38
  %39 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift = getelementptr inbounds %struct.tiff, ptr %39, i32 0, i32 9
  %40 = load ptr, ptr %tif_typeshift, align 8
  %41 = load ptr, ptr %dir.addr, align 8
  %tdir_type27 = getelementptr inbounds %struct.TIFFDirEntry, ptr %41, i32 0, i32 1
  %42 = load i16, ptr %tdir_type27, align 2
  %idxprom28 = zext i16 %42 to i64
  %arrayidx29 = getelementptr inbounds i32, ptr %40, i64 %idxprom28
  %43 = load i32, ptr %arrayidx29, align 4
  %sh_prom = zext i32 %43 to i64
  %shl = shl i64 %and, %sh_prom
  br label %cond.end

cond.false:                                       ; preds = %if.else19
  %44 = load i16, ptr %sv, align 2
  %conv30 = zext i16 %44 to i64
  %45 = load ptr, ptr %tif.addr, align 8
  %tif_typemask31 = getelementptr inbounds %struct.tiff, ptr %45, i32 0, i32 10
  %46 = load ptr, ptr %tif_typemask31, align 8
  %47 = load ptr, ptr %dir.addr, align 8
  %tdir_type32 = getelementptr inbounds %struct.TIFFDirEntry, ptr %47, i32 0, i32 1
  %48 = load i16, ptr %tdir_type32, align 2
  %idxprom33 = zext i16 %48 to i64
  %arrayidx34 = getelementptr inbounds i64, ptr %46, i64 %idxprom33
  %49 = load i64, ptr %arrayidx34, align 8
  %and35 = and i64 %conv30, %49
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shl, %cond.true ], [ %and35, %cond.false ]
  %50 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %50, i32 0, i32 3
  store i64 %cond, ptr %tdir_offset, align 8
  br label %if.end36

if.end36:                                         ; preds = %cond.end, %if.end18
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry, %entry
  %51 = load i16, ptr %wc, align 2
  %conv38 = zext i16 %51 to i32
  %cmp39 = icmp sgt i32 %conv38, 1
  br i1 %cmp39, label %if.then41, label %if.else59

if.then41:                                        ; preds = %sw.bb37
  %52 = load i16, ptr %wc, align 2
  %conv42 = zext i16 %52 to i32
  %cmp43 = icmp eq i32 %conv42, 65535
  br i1 %cmp43, label %if.then45, label %if.else48

if.then45:                                        ; preds = %if.then41
  %53 = load ptr, ptr %tif.addr, align 8
  %54 = load ptr, ptr %fip.addr, align 8
  %field_tag46 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %54, i32 0, i32 0
  %55 = load i64, ptr %field_tag46, align 8
  %call47 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %53, i64 noundef %55, ptr noundef %wc, ptr noundef %lp)
  br label %if.end51

if.else48:                                        ; preds = %if.then41
  %56 = load ptr, ptr %tif.addr, align 8
  %57 = load ptr, ptr %fip.addr, align 8
  %field_tag49 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %57, i32 0, i32 0
  %58 = load i64, ptr %field_tag49, align 8
  %call50 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %56, i64 noundef %58, ptr noundef %lp)
  br label %if.end51

if.end51:                                         ; preds = %if.else48, %if.then45
  %59 = load ptr, ptr %tif.addr, align 8
  %60 = load ptr, ptr %fip.addr, align 8
  %field_type52 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %60, i32 0, i32 3
  %61 = load i32, ptr %field_type52, align 4
  %62 = load ptr, ptr %fip.addr, align 8
  %field_tag53 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %62, i32 0, i32 0
  %63 = load i64, ptr %field_tag53, align 8
  %64 = load ptr, ptr %dir.addr, align 8
  %65 = load i16, ptr %wc, align 2
  %conv54 = zext i16 %65 to i64
  %66 = load ptr, ptr %lp, align 8
  %call55 = call i32 @TIFFWriteLongArray(ptr noundef %59, i32 noundef %61, i64 noundef %63, ptr noundef %64, i64 noundef %conv54, ptr noundef %66)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.end58, label %if.then57

if.then57:                                        ; preds = %if.end51
  store i32 0, ptr %retval, align 4
  br label %return

if.end58:                                         ; preds = %if.end51
  br label %if.end63

if.else59:                                        ; preds = %sw.bb37
  %67 = load ptr, ptr %tif.addr, align 8
  %68 = load ptr, ptr %fip.addr, align 8
  %field_tag60 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %68, i32 0, i32 0
  %69 = load i64, ptr %field_tag60, align 8
  %70 = load ptr, ptr %dir.addr, align 8
  %tdir_offset61 = getelementptr inbounds %struct.TIFFDirEntry, ptr %70, i32 0, i32 3
  %call62 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %67, i64 noundef %69, ptr noundef %tdir_offset61)
  br label %if.end63

if.end63:                                         ; preds = %if.else59, %if.end58
  br label %sw.epilog

sw.bb64:                                          ; preds = %entry, %entry
  %71 = load i16, ptr %wc, align 2
  %conv65 = zext i16 %71 to i32
  %cmp66 = icmp sgt i32 %conv65, 1
  br i1 %cmp66, label %if.then68, label %if.else86

if.then68:                                        ; preds = %sw.bb64
  %72 = load i16, ptr %wc, align 2
  %conv69 = zext i16 %72 to i32
  %cmp70 = icmp eq i32 %conv69, 65535
  br i1 %cmp70, label %if.then72, label %if.else75

if.then72:                                        ; preds = %if.then68
  %73 = load ptr, ptr %tif.addr, align 8
  %74 = load ptr, ptr %fip.addr, align 8
  %field_tag73 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %74, i32 0, i32 0
  %75 = load i64, ptr %field_tag73, align 8
  %call74 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %73, i64 noundef %75, ptr noundef %wc, ptr noundef %fp)
  br label %if.end78

if.else75:                                        ; preds = %if.then68
  %76 = load ptr, ptr %tif.addr, align 8
  %77 = load ptr, ptr %fip.addr, align 8
  %field_tag76 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %77, i32 0, i32 0
  %78 = load i64, ptr %field_tag76, align 8
  %call77 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %76, i64 noundef %78, ptr noundef %fp)
  br label %if.end78

if.end78:                                         ; preds = %if.else75, %if.then72
  %79 = load ptr, ptr %tif.addr, align 8
  %80 = load ptr, ptr %fip.addr, align 8
  %field_type79 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %80, i32 0, i32 3
  %81 = load i32, ptr %field_type79, align 4
  %82 = load ptr, ptr %fip.addr, align 8
  %field_tag80 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %82, i32 0, i32 0
  %83 = load i64, ptr %field_tag80, align 8
  %84 = load ptr, ptr %dir.addr, align 8
  %85 = load i16, ptr %wc, align 2
  %conv81 = zext i16 %85 to i64
  %86 = load ptr, ptr %fp, align 8
  %call82 = call i32 @TIFFWriteRationalArray(ptr noundef %79, i32 noundef %81, i64 noundef %83, ptr noundef %84, i64 noundef %conv81, ptr noundef %86)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.end85, label %if.then84

if.then84:                                        ; preds = %if.end78
  store i32 0, ptr %retval, align 4
  br label %return

if.end85:                                         ; preds = %if.end78
  br label %if.end96

if.else86:                                        ; preds = %sw.bb64
  %87 = load ptr, ptr %tif.addr, align 8
  %88 = load ptr, ptr %fip.addr, align 8
  %field_tag87 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %88, i32 0, i32 0
  %89 = load i64, ptr %field_tag87, align 8
  %call88 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %87, i64 noundef %89, ptr noundef %fv)
  %90 = load ptr, ptr %tif.addr, align 8
  %91 = load ptr, ptr %fip.addr, align 8
  %field_type89 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %91, i32 0, i32 3
  %92 = load i32, ptr %field_type89, align 4
  %93 = load ptr, ptr %fip.addr, align 8
  %field_tag90 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %93, i32 0, i32 0
  %94 = load i64, ptr %field_tag90, align 8
  %95 = load ptr, ptr %dir.addr, align 8
  %96 = load i16, ptr %wc, align 2
  %conv91 = zext i16 %96 to i64
  %call92 = call i32 @TIFFWriteRationalArray(ptr noundef %90, i32 noundef %92, i64 noundef %94, ptr noundef %95, i64 noundef %conv91, ptr noundef %fv)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.end95, label %if.then94

if.then94:                                        ; preds = %if.else86
  store i32 0, ptr %retval, align 4
  br label %return

if.end95:                                         ; preds = %if.else86
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.end85
  br label %sw.epilog

sw.bb97:                                          ; preds = %entry
  %97 = load i16, ptr %wc, align 2
  %conv98 = zext i16 %97 to i32
  %cmp99 = icmp sgt i32 %conv98, 1
  br i1 %cmp99, label %if.then101, label %if.else120

if.then101:                                       ; preds = %sw.bb97
  %98 = load i16, ptr %wc, align 2
  %conv103 = zext i16 %98 to i32
  %cmp104 = icmp eq i32 %conv103, 65535
  br i1 %cmp104, label %if.then106, label %if.else109

if.then106:                                       ; preds = %if.then101
  %99 = load ptr, ptr %tif.addr, align 8
  %100 = load ptr, ptr %fip.addr, align 8
  %field_tag107 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %100, i32 0, i32 0
  %101 = load i64, ptr %field_tag107, align 8
  %call108 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %99, i64 noundef %101, ptr noundef %wc, ptr noundef %fp102)
  br label %if.end112

if.else109:                                       ; preds = %if.then101
  %102 = load ptr, ptr %tif.addr, align 8
  %103 = load ptr, ptr %fip.addr, align 8
  %field_tag110 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %103, i32 0, i32 0
  %104 = load i64, ptr %field_tag110, align 8
  %call111 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %102, i64 noundef %104, ptr noundef %fp102)
  br label %if.end112

if.end112:                                        ; preds = %if.else109, %if.then106
  %105 = load ptr, ptr %tif.addr, align 8
  %106 = load ptr, ptr %fip.addr, align 8
  %field_type113 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %106, i32 0, i32 3
  %107 = load i32, ptr %field_type113, align 4
  %108 = load ptr, ptr %fip.addr, align 8
  %field_tag114 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %108, i32 0, i32 0
  %109 = load i64, ptr %field_tag114, align 8
  %110 = load ptr, ptr %dir.addr, align 8
  %111 = load i16, ptr %wc, align 2
  %conv115 = zext i16 %111 to i64
  %112 = load ptr, ptr %fp102, align 8
  %call116 = call i32 @TIFFWriteFloatArray(ptr noundef %105, i32 noundef %107, i64 noundef %109, ptr noundef %110, i64 noundef %conv115, ptr noundef %112)
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.end119, label %if.then118

if.then118:                                       ; preds = %if.end112
  store i32 0, ptr %retval, align 4
  br label %return

if.end119:                                        ; preds = %if.end112
  br label %if.end131

if.else120:                                       ; preds = %sw.bb97
  %113 = load ptr, ptr %tif.addr, align 8
  %114 = load ptr, ptr %fip.addr, align 8
  %field_tag122 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %114, i32 0, i32 0
  %115 = load i64, ptr %field_tag122, align 8
  %call123 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %113, i64 noundef %115, ptr noundef %fv121)
  %116 = load ptr, ptr %tif.addr, align 8
  %117 = load ptr, ptr %fip.addr, align 8
  %field_type124 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %117, i32 0, i32 3
  %118 = load i32, ptr %field_type124, align 4
  %119 = load ptr, ptr %fip.addr, align 8
  %field_tag125 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %119, i32 0, i32 0
  %120 = load i64, ptr %field_tag125, align 8
  %121 = load ptr, ptr %dir.addr, align 8
  %122 = load i16, ptr %wc, align 2
  %conv126 = zext i16 %122 to i64
  %call127 = call i32 @TIFFWriteFloatArray(ptr noundef %116, i32 noundef %118, i64 noundef %120, ptr noundef %121, i64 noundef %conv126, ptr noundef %fv121)
  %tobool128 = icmp ne i32 %call127, 0
  br i1 %tobool128, label %if.end130, label %if.then129

if.then129:                                       ; preds = %if.else120
  store i32 0, ptr %retval, align 4
  br label %return

if.end130:                                        ; preds = %if.else120
  br label %if.end131

if.end131:                                        ; preds = %if.end130, %if.end119
  br label %sw.epilog

sw.bb132:                                         ; preds = %entry
  %123 = load i16, ptr %wc, align 2
  %conv133 = zext i16 %123 to i32
  %cmp134 = icmp sgt i32 %conv133, 1
  br i1 %cmp134, label %if.then136, label %if.else154

if.then136:                                       ; preds = %sw.bb132
  %124 = load i16, ptr %wc, align 2
  %conv137 = zext i16 %124 to i32
  %cmp138 = icmp eq i32 %conv137, 65535
  br i1 %cmp138, label %if.then140, label %if.else143

if.then140:                                       ; preds = %if.then136
  %125 = load ptr, ptr %tif.addr, align 8
  %126 = load ptr, ptr %fip.addr, align 8
  %field_tag141 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %126, i32 0, i32 0
  %127 = load i64, ptr %field_tag141, align 8
  %call142 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %125, i64 noundef %127, ptr noundef %wc, ptr noundef %dp)
  br label %if.end146

if.else143:                                       ; preds = %if.then136
  %128 = load ptr, ptr %tif.addr, align 8
  %129 = load ptr, ptr %fip.addr, align 8
  %field_tag144 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %129, i32 0, i32 0
  %130 = load i64, ptr %field_tag144, align 8
  %call145 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %128, i64 noundef %130, ptr noundef %dp)
  br label %if.end146

if.end146:                                        ; preds = %if.else143, %if.then140
  %131 = load ptr, ptr %tif.addr, align 8
  %132 = load ptr, ptr %fip.addr, align 8
  %field_type147 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %132, i32 0, i32 3
  %133 = load i32, ptr %field_type147, align 4
  %134 = load ptr, ptr %fip.addr, align 8
  %field_tag148 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %134, i32 0, i32 0
  %135 = load i64, ptr %field_tag148, align 8
  %136 = load ptr, ptr %dir.addr, align 8
  %137 = load i16, ptr %wc, align 2
  %conv149 = zext i16 %137 to i64
  %138 = load ptr, ptr %dp, align 8
  %call150 = call i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dirwrite_2(ptr noundef %131, i32 noundef %133, i64 noundef %135, ptr noundef %136, i64 noundef %conv149, ptr noundef %138)
  %tobool151 = icmp ne i32 %call150, 0
  br i1 %tobool151, label %if.end153, label %if.then152

if.then152:                                       ; preds = %if.end146
  store i32 0, ptr %retval, align 4
  br label %return

if.end153:                                        ; preds = %if.end146
  br label %if.end164

if.else154:                                       ; preds = %sw.bb132
  %139 = load ptr, ptr %tif.addr, align 8
  %140 = load ptr, ptr %fip.addr, align 8
  %field_tag155 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %140, i32 0, i32 0
  %141 = load i64, ptr %field_tag155, align 8
  %call156 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %139, i64 noundef %141, ptr noundef %dv)
  %142 = load ptr, ptr %tif.addr, align 8
  %143 = load ptr, ptr %fip.addr, align 8
  %field_type157 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %143, i32 0, i32 3
  %144 = load i32, ptr %field_type157, align 4
  %145 = load ptr, ptr %fip.addr, align 8
  %field_tag158 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %145, i32 0, i32 0
  %146 = load i64, ptr %field_tag158, align 8
  %147 = load ptr, ptr %dir.addr, align 8
  %148 = load i16, ptr %wc, align 2
  %conv159 = zext i16 %148 to i64
  %call160 = call i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dirwrite_3(ptr noundef %142, i32 noundef %144, i64 noundef %146, ptr noundef %147, i64 noundef %conv159, ptr noundef %dv)
  %tobool161 = icmp ne i32 %call160, 0
  br i1 %tobool161, label %if.end163, label %if.then162

if.then162:                                       ; preds = %if.else154
  store i32 0, ptr %retval, align 4
  br label %return

if.end163:                                        ; preds = %if.else154
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %if.end153
  br label %sw.epilog

sw.bb165:                                         ; preds = %entry
  %149 = load ptr, ptr %tif.addr, align 8
  %150 = load ptr, ptr %fip.addr, align 8
  %field_tag166 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %150, i32 0, i32 0
  %151 = load i64, ptr %field_tag166, align 8
  %call167 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %149, i64 noundef %151, ptr noundef %cp)
  %152 = load ptr, ptr %cp, align 8
  %call168 = call i64 @strlen(ptr noundef %152)
  %add = add i64 %call168, 1
  %153 = load ptr, ptr %dir.addr, align 8
  %tdir_count169 = getelementptr inbounds %struct.TIFFDirEntry, ptr %153, i32 0, i32 2
  store i64 %add, ptr %tdir_count169, align 8
  %154 = load ptr, ptr %tif.addr, align 8
  %155 = load ptr, ptr %dir.addr, align 8
  %156 = load ptr, ptr %cp, align 8
  %call170 = call i32 @TIFFWriteByteArray(ptr noundef %154, ptr noundef %155, ptr noundef %156)
  %tobool171 = icmp ne i32 %call170, 0
  br i1 %tobool171, label %if.end173, label %if.then172

if.then172:                                       ; preds = %sw.bb165
  store i32 0, ptr %retval, align 4
  br label %return

if.end173:                                        ; preds = %sw.bb165
  br label %sw.epilog

sw.bb174:                                         ; preds = %entry, %entry
  %157 = load i16, ptr %wc, align 2
  %conv175 = zext i16 %157 to i32
  %cmp176 = icmp sgt i32 %conv175, 1
  br i1 %cmp176, label %if.then178, label %if.else196

if.then178:                                       ; preds = %sw.bb174
  %158 = load i16, ptr %wc, align 2
  %conv180 = zext i16 %158 to i32
  %cmp181 = icmp eq i32 %conv180, 65535
  br i1 %cmp181, label %if.then183, label %if.else188

if.then183:                                       ; preds = %if.then178
  %159 = load ptr, ptr %tif.addr, align 8
  %160 = load ptr, ptr %fip.addr, align 8
  %field_tag184 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %160, i32 0, i32 0
  %161 = load i64, ptr %field_tag184, align 8
  %call185 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %159, i64 noundef %161, ptr noundef %wc, ptr noundef %cp179)
  %162 = load i16, ptr %wc, align 2
  %conv186 = zext i16 %162 to i64
  %163 = load ptr, ptr %dir.addr, align 8
  %tdir_count187 = getelementptr inbounds %struct.TIFFDirEntry, ptr %163, i32 0, i32 2
  store i64 %conv186, ptr %tdir_count187, align 8
  br label %if.end191

if.else188:                                       ; preds = %if.then178
  %164 = load ptr, ptr %tif.addr, align 8
  %165 = load ptr, ptr %fip.addr, align 8
  %field_tag189 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %165, i32 0, i32 0
  %166 = load i64, ptr %field_tag189, align 8
  %call190 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %164, i64 noundef %166, ptr noundef %cp179)
  br label %if.end191

if.end191:                                        ; preds = %if.else188, %if.then183
  %167 = load ptr, ptr %tif.addr, align 8
  %168 = load ptr, ptr %dir.addr, align 8
  %169 = load ptr, ptr %cp179, align 8
  %call192 = call i32 @TIFFWriteByteArray(ptr noundef %167, ptr noundef %168, ptr noundef %169)
  %tobool193 = icmp ne i32 %call192, 0
  br i1 %tobool193, label %if.end195, label %if.then194

if.then194:                                       ; preds = %if.end191
  store i32 0, ptr %retval, align 4
  br label %return

if.end195:                                        ; preds = %if.end191
  br label %if.end203

if.else196:                                       ; preds = %sw.bb174
  %170 = load ptr, ptr %tif.addr, align 8
  %171 = load ptr, ptr %fip.addr, align 8
  %field_tag197 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %171, i32 0, i32 0
  %172 = load i64, ptr %field_tag197, align 8
  %call198 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %170, i64 noundef %172, ptr noundef %cv)
  %173 = load ptr, ptr %tif.addr, align 8
  %174 = load ptr, ptr %dir.addr, align 8
  %call199 = call i32 @TIFFWriteByteArray(ptr noundef %173, ptr noundef %174, ptr noundef %cv)
  %tobool200 = icmp ne i32 %call199, 0
  br i1 %tobool200, label %if.end202, label %if.then201

if.then201:                                       ; preds = %if.else196
  store i32 0, ptr %retval, align 4
  br label %return

if.end202:                                        ; preds = %if.else196
  br label %if.end203

if.end203:                                        ; preds = %if.end202, %if.end195
  br label %sw.epilog

sw.bb204:                                         ; preds = %entry
  %175 = load i16, ptr %wc, align 2
  %conv206 = zext i16 %175 to i32
  %cmp207 = icmp eq i32 %conv206, 65535
  br i1 %cmp207, label %if.then209, label %if.else214

if.then209:                                       ; preds = %sw.bb204
  %176 = load ptr, ptr %tif.addr, align 8
  %177 = load ptr, ptr %fip.addr, align 8
  %field_tag210 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %177, i32 0, i32 0
  %178 = load i64, ptr %field_tag210, align 8
  %call211 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %176, i64 noundef %178, ptr noundef %wc, ptr noundef %cp205)
  %179 = load i16, ptr %wc, align 2
  %conv212 = zext i16 %179 to i64
  %180 = load ptr, ptr %dir.addr, align 8
  %tdir_count213 = getelementptr inbounds %struct.TIFFDirEntry, ptr %180, i32 0, i32 2
  store i64 %conv212, ptr %tdir_count213, align 8
  br label %if.end226

if.else214:                                       ; preds = %sw.bb204
  %181 = load i16, ptr %wc, align 2
  %conv215 = zext i16 %181 to i32
  %cmp216 = icmp eq i32 %conv215, 65533
  br i1 %cmp216, label %if.then218, label %if.else222

if.then218:                                       ; preds = %if.else214
  %182 = load ptr, ptr %tif.addr, align 8
  %183 = load ptr, ptr %fip.addr, align 8
  %field_tag219 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %183, i32 0, i32 0
  %184 = load i64, ptr %field_tag219, align 8
  %call220 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %182, i64 noundef %184, ptr noundef %wc2, ptr noundef %cp205)
  %185 = load i64, ptr %wc2, align 8
  %186 = load ptr, ptr %dir.addr, align 8
  %tdir_count221 = getelementptr inbounds %struct.TIFFDirEntry, ptr %186, i32 0, i32 2
  store i64 %185, ptr %tdir_count221, align 8
  br label %if.end225

if.else222:                                       ; preds = %if.else214
  %187 = load ptr, ptr %tif.addr, align 8
  %188 = load ptr, ptr %fip.addr, align 8
  %field_tag223 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %188, i32 0, i32 0
  %189 = load i64, ptr %field_tag223, align 8
  %call224 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %187, i64 noundef %189, ptr noundef %cp205)
  br label %if.end225

if.end225:                                        ; preds = %if.else222, %if.then218
  br label %if.end226

if.end226:                                        ; preds = %if.end225, %if.then209
  %190 = load ptr, ptr %tif.addr, align 8
  %191 = load ptr, ptr %dir.addr, align 8
  %192 = load ptr, ptr %cp205, align 8
  %call227 = call i32 @TIFFWriteByteArray(ptr noundef %190, ptr noundef %191, ptr noundef %192)
  %tobool228 = icmp ne i32 %call227, 0
  br i1 %tobool228, label %if.end230, label %if.then229

if.then229:                                       ; preds = %if.end226
  store i32 0, ptr %retval, align 4
  br label %return

if.end230:                                        ; preds = %if.end226
  br label %sw.epilog

sw.bb231:                                         ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb231, %if.end230, %if.end203, %if.end173, %if.end164, %if.end131, %if.end96, %if.end63, %if.end36
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then229, %if.then201, %if.then194, %if.then172, %if.then162, %if.then152, %if.then129, %if.then118, %if.then94, %if.then84, %if.then57, %if.then17
  %193 = load i32, ptr %retval, align 4
  ret i32 %193
}

declare void @TIFFSwabArrayOfShort(ptr noundef, i64 noundef) #1

declare void @TIFFSwabArrayOfLong(ptr noundef, i64 noundef) #1

declare void @TIFFSwabShort(ptr noundef) #1

declare void @TIFFSwabLong(ptr noundef) #1

declare void @TIFFFreeDirectory(ptr noundef) #1

declare i32 @TIFFDefaultDirectory(ptr noundef) #1

declare i32 @TIFFGetField(ptr noundef, i64 noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFWriteShortArray(ptr noundef %tif, i32 noundef %type, i64 noundef %tag, ptr noundef %dir, i64 noundef %n, ptr noundef %v) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %tag.addr = alloca i64, align 8
  %dir.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  store i64 %tag, ptr %tag.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  %0 = load i64, ptr %tag.addr, align 8
  %conv = trunc i64 %0 to i16
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i32 0, i32 0
  store i16 %conv, ptr %tdir_tag, align 8
  %2 = load i32, ptr %type.addr, align 4
  %conv1 = trunc i32 %2 to i16
  %3 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %3, i32 0, i32 1
  store i16 %conv1, ptr %tdir_type, align 2
  %4 = load i64, ptr %n.addr, align 8
  %5 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i32 0, i32 2
  store i64 %4, ptr %tdir_count, align 8
  %6 = load i64, ptr %n.addr, align 8
  %cmp = icmp ule i64 %6, 2
  br i1 %cmp, label %if.then, label %if.else30

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %7, i32 0, i32 7
  %tiff_magic = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header, i32 0, i32 0
  %8 = load i16, ptr %tiff_magic, align 8
  %conv3 = zext i16 %8 to i32
  %cmp4 = icmp eq i32 %conv3, 19789
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  %9 = load ptr, ptr %v.addr, align 8
  %arrayidx = getelementptr inbounds i16, ptr %9, i64 0
  %10 = load i16, ptr %arrayidx, align 2
  %conv7 = zext i16 %10 to i64
  %shl = shl i64 %conv7, 16
  %11 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %11, i32 0, i32 3
  store i64 %shl, ptr %tdir_offset, align 8
  %12 = load i64, ptr %n.addr, align 8
  %cmp8 = icmp eq i64 %12, 2
  br i1 %cmp8, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then6
  %13 = load ptr, ptr %v.addr, align 8
  %arrayidx11 = getelementptr inbounds i16, ptr %13, i64 1
  %14 = load i16, ptr %arrayidx11, align 2
  %conv12 = zext i16 %14 to i32
  %and = and i32 %conv12, 65535
  %conv13 = sext i32 %and to i64
  %15 = load ptr, ptr %dir.addr, align 8
  %tdir_offset14 = getelementptr inbounds %struct.TIFFDirEntry, ptr %15, i32 0, i32 3
  %16 = load i64, ptr %tdir_offset14, align 8
  %or = or i64 %16, %conv13
  store i64 %or, ptr %tdir_offset14, align 8
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then6
  br label %if.end29

if.else:                                          ; preds = %if.then
  %17 = load ptr, ptr %v.addr, align 8
  %arrayidx15 = getelementptr inbounds i16, ptr %17, i64 0
  %18 = load i16, ptr %arrayidx15, align 2
  %conv16 = zext i16 %18 to i32
  %and17 = and i32 %conv16, 65535
  %conv18 = sext i32 %and17 to i64
  %19 = load ptr, ptr %dir.addr, align 8
  %tdir_offset19 = getelementptr inbounds %struct.TIFFDirEntry, ptr %19, i32 0, i32 3
  store i64 %conv18, ptr %tdir_offset19, align 8
  %20 = load i64, ptr %n.addr, align 8
  %cmp20 = icmp eq i64 %20, 2
  br i1 %cmp20, label %if.then22, label %if.end28

if.then22:                                        ; preds = %if.else
  %21 = load ptr, ptr %v.addr, align 8
  %arrayidx23 = getelementptr inbounds i16, ptr %21, i64 1
  %22 = load i16, ptr %arrayidx23, align 2
  %conv24 = zext i16 %22 to i64
  %shl25 = shl i64 %conv24, 16
  %23 = load ptr, ptr %dir.addr, align 8
  %tdir_offset26 = getelementptr inbounds %struct.TIFFDirEntry, ptr %23, i32 0, i32 3
  %24 = load i64, ptr %tdir_offset26, align 8
  %or27 = or i64 %24, %shl25
  store i64 %or27, ptr %tdir_offset26, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then22, %if.else
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.else30:                                        ; preds = %entry
  %25 = load ptr, ptr %tif.addr, align 8
  %26 = load ptr, ptr %dir.addr, align 8
  %27 = load ptr, ptr %v.addr, align 8
  %call = call i32 @TIFFWriteData(ptr noundef %25, ptr noundef %26, ptr noundef %27)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else30, %if.end29
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFWriteFloatArray(ptr noundef %tif, i32 noundef %type, i64 noundef %tag, ptr noundef %dir, i64 noundef %n, ptr noundef %v) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %tag.addr = alloca i64, align 8
  %dir.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  store i64 %tag, ptr %tag.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  %0 = load i64, ptr %tag.addr, align 8
  %conv = trunc i64 %0 to i16
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i32 0, i32 0
  store i16 %conv, ptr %tdir_tag, align 8
  %2 = load i32, ptr %type.addr, align 4
  %conv1 = trunc i32 %2 to i16
  %3 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %3, i32 0, i32 1
  store i16 %conv1, ptr %tdir_type, align 2
  %4 = load i64, ptr %n.addr, align 8
  %5 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i32 0, i32 2
  store i64 %4, ptr %tdir_count, align 8
  %6 = load i64, ptr %n.addr, align 8
  %cmp = icmp eq i64 %6, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %v.addr, align 8
  %arrayidx = getelementptr inbounds float, ptr %7, i64 0
  %8 = load i64, ptr %arrayidx, align 8
  %9 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %9, i32 0, i32 3
  store i64 %8, ptr %tdir_offset, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %tif.addr, align 8
  %11 = load ptr, ptr %dir.addr, align 8
  %12 = load ptr, ptr %v.addr, align 8
  %call = call i32 @TIFFWriteData(ptr noundef %10, ptr noundef %11, ptr noundef %12)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFWriteDoubleArray(ptr noundef %tif, i32 noundef %type, i64 noundef %tag, ptr noundef %dir, i64 noundef %n, ptr noundef %v) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %tag.addr = alloca i64, align 8
  %dir.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  store i64 %tag, ptr %tag.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  %0 = load i64, ptr %tag.addr, align 8
  %conv = trunc i64 %0 to i16
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i32 0, i32 0
  store i16 %conv, ptr %tdir_tag, align 8
  %2 = load i32, ptr %type.addr, align 4
  %conv1 = trunc i32 %2 to i16
  %3 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %3, i32 0, i32 1
  store i16 %conv1, ptr %tdir_type, align 2
  %4 = load i64, ptr %n.addr, align 8
  %5 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i32 0, i32 2
  store i64 %4, ptr %tdir_count, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %7 = load ptr, ptr %dir.addr, align 8
  %8 = load ptr, ptr %v.addr, align 8
  %call = call i32 @TIFFWriteData(ptr noundef %6, ptr noundef %7, ptr noundef %8)
  ret i32 %call
}

declare i64 @strlen(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFWriteByteArray(ptr noundef %tif, ptr noundef %dir, ptr noundef %cp) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  %0 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %tdir_count, align 8
  %cmp = icmp ugt i64 %1, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load ptr, ptr %dir.addr, align 8
  %4 = load ptr, ptr %cp.addr, align 8
  %call = call i32 @TIFFWriteData(ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end3

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %cp.addr, align 8
  %7 = load ptr, ptr %dir.addr, align 8
  %tdir_count2 = getelementptr inbounds %struct.TIFFDirEntry, ptr %7, i32 0, i32 2
  %8 = load i64, ptr %tdir_count2, align 8
  call void @_TIFFmemcpy(ptr noundef %tdir_offset, ptr noundef %6, i64 noundef %8)
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then1
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFWriteData(ptr noundef %tif, ptr noundef %dir, ptr noundef %cp) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %cc = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 3
  %1 = load i64, ptr %tif_flags, align 8
  %and = and i64 %1, 128
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %2, i32 0, i32 1
  %3 = load i16, ptr %tdir_type, align 2
  %conv = zext i16 %3 to i32
  switch i32 %conv, label %sw.epilog [
    i32 3, label %sw.bb
    i32 8, label %sw.bb
    i32 4, label %sw.bb1
    i32 9, label %sw.bb1
    i32 11, label %sw.bb1
    i32 5, label %sw.bb3
    i32 10, label %sw.bb3
    i32 12, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.then, %if.then
  %4 = load ptr, ptr %cp.addr, align 8
  %5 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i32 0, i32 2
  %6 = load i64, ptr %tdir_count, align 8
  call void @TIFFSwabArrayOfShort(ptr noundef %4, i64 noundef %6)
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.then, %if.then, %if.then
  %7 = load ptr, ptr %cp.addr, align 8
  %8 = load ptr, ptr %dir.addr, align 8
  %tdir_count2 = getelementptr inbounds %struct.TIFFDirEntry, ptr %8, i32 0, i32 2
  %9 = load i64, ptr %tdir_count2, align 8
  call void @TIFFSwabArrayOfLong(ptr noundef %7, i64 noundef %9)
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.then, %if.then
  %10 = load ptr, ptr %cp.addr, align 8
  %11 = load ptr, ptr %dir.addr, align 8
  %tdir_count4 = getelementptr inbounds %struct.TIFFDirEntry, ptr %11, i32 0, i32 2
  %12 = load i64, ptr %tdir_count4, align 8
  %mul = mul i64 2, %12
  call void @TIFFSwabArrayOfLong(ptr noundef %10, i64 noundef %mul)
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.then
  %13 = load ptr, ptr %cp.addr, align 8
  %14 = load ptr, ptr %dir.addr, align 8
  %tdir_count6 = getelementptr inbounds %struct.TIFFDirEntry, ptr %14, i32 0, i32 2
  %15 = load i64, ptr %tdir_count6, align 8
  call void @TIFFSwabArrayOfDouble(ptr noundef %13, i64 noundef %15)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_dataoff = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 15
  %17 = load i64, ptr %tif_dataoff, align 8
  %18 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %18, i32 0, i32 3
  store i64 %17, ptr %tdir_offset, align 8
  %19 = load ptr, ptr %dir.addr, align 8
  %tdir_count7 = getelementptr inbounds %struct.TIFFDirEntry, ptr %19, i32 0, i32 2
  %20 = load i64, ptr %tdir_count7, align 8
  %21 = load ptr, ptr %dir.addr, align 8
  %tdir_type8 = getelementptr inbounds %struct.TIFFDirEntry, ptr %21, i32 0, i32 1
  %22 = load i16, ptr %tdir_type8, align 2
  %idxprom = zext i16 %22 to i64
  %arrayidx = getelementptr inbounds [0 x i32], ptr @tiffDataWidth, i64 0, i64 %idxprom
  %23 = load i32, ptr %arrayidx, align 4
  %conv9 = sext i32 %23 to i64
  %mul10 = mul i64 %20, %conv9
  store i64 %mul10, ptr %cc, align 8
  %24 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %24, i32 0, i32 51
  %25 = load ptr, ptr %tif_seekproc, align 8
  %26 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %26, i32 0, i32 48
  %27 = load ptr, ptr %tif_clientdata, align 8
  %28 = load ptr, ptr %dir.addr, align 8
  %tdir_offset11 = getelementptr inbounds %struct.TIFFDirEntry, ptr %28, i32 0, i32 3
  %29 = load i64, ptr %tdir_offset11, align 8
  %call = call i64 %25(ptr noundef %27, i64 noundef %29, i32 noundef 0)
  %30 = load ptr, ptr %dir.addr, align 8
  %tdir_offset12 = getelementptr inbounds %struct.TIFFDirEntry, ptr %30, i32 0, i32 3
  %31 = load i64, ptr %tdir_offset12, align 8
  %cmp = icmp eq i64 %call, %31
  br i1 %cmp, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %if.end
  %32 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc = getelementptr inbounds %struct.tiff, ptr %32, i32 0, i32 50
  %33 = load ptr, ptr %tif_writeproc, align 8
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata14 = getelementptr inbounds %struct.tiff, ptr %34, i32 0, i32 48
  %35 = load ptr, ptr %tif_clientdata14, align 8
  %36 = load ptr, ptr %cp.addr, align 8
  %37 = load i64, ptr %cc, align 8
  %call15 = call i64 %33(ptr noundef %35, ptr noundef %36, i64 noundef %37)
  %38 = load i64, ptr %cc, align 8
  %cmp16 = icmp eq i64 %call15, %38
  br i1 %cmp16, label %if.then18, label %if.end22

if.then18:                                        ; preds = %land.lhs.true
  %39 = load i64, ptr %cc, align 8
  %add = add nsw i64 %39, 1
  %and19 = and i64 %add, -2
  %40 = load ptr, ptr %tif.addr, align 8
  %tif_dataoff20 = getelementptr inbounds %struct.tiff, ptr %40, i32 0, i32 15
  %41 = load i64, ptr %tif_dataoff20, align 8
  %add21 = add nsw i64 %41, %and19
  store i64 %add21, ptr %tif_dataoff20, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %land.lhs.true, %if.end
  %42 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %tif_name, align 8
  %44 = load ptr, ptr %tif.addr, align 8
  %45 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %45, i32 0, i32 0
  %46 = load i16, ptr %tdir_tag, align 8
  %conv23 = zext i16 %46 to i64
  %call24 = call ptr @_TIFFFieldWithTag(ptr noundef %44, i64 noundef %conv23)
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call24, i32 0, i32 7
  %47 = load ptr, ptr %field_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %43, ptr noundef @.str.6, ptr noundef %47)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end22, %if.then18
  %48 = load i32, ptr %retval, align 4
  ret i32 %48
}

declare void @TIFFSwabArrayOfDouble(ptr noundef, i64 noundef) #1

declare ptr @_TIFFFieldWithTag(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFWriteAnyArray(ptr noundef %tif, i32 noundef %type, i64 noundef %tag, ptr noundef %dir, i64 noundef %n, ptr noundef %v) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %tag.addr = alloca i64, align 8
  %dir.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  %buf = alloca [80 x i8], align 1
  %w = alloca ptr, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %bp = alloca ptr, align 8
  %bp20 = alloca ptr, align 8
  %bp44 = alloca ptr, align 8
  %bp63 = alloca ptr, align 8
  %bp82 = alloca ptr, align 8
  %bp101 = alloca ptr, align 8
  %bp120 = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  store i64 %tag, ptr %tag.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  %arraydecay = getelementptr inbounds [80 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %w, align 8
  store i32 0, ptr %status, align 4
  %0 = load i64, ptr %n.addr, align 8
  %1 = load i32, ptr %type.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [0 x i32], ptr @tiffDataWidth, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 %0, %conv
  %cmp = icmp ugt i64 %mul, 80
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %n.addr, align 8
  %4 = load i32, ptr %type.addr, align 4
  %idxprom2 = zext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [0 x i32], ptr @tiffDataWidth, i64 0, i64 %idxprom2
  %5 = load i32, ptr %arrayidx3, align 4
  %conv4 = sext i32 %5 to i64
  %mul5 = mul i64 %3, %conv4
  %call = call ptr @_TIFFmalloc(i64 noundef %mul5)
  store ptr %call, ptr %w, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %type.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 6, label %sw.bb19
    i32 3, label %sw.bb43
    i32 8, label %sw.bb62
    i32 4, label %sw.bb81
    i32 9, label %sw.bb100
    i32 11, label %sw.bb119
    i32 12, label %sw.bb138
  ]

sw.bb:                                            ; preds = %if.end
  %7 = load ptr, ptr %w, align 8
  store ptr %7, ptr %bp, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %8 = load i32, ptr %i, align 4
  %9 = load i64, ptr %n.addr, align 8
  %conv6 = trunc i64 %9 to i32
  %cmp7 = icmp slt i32 %8, %conv6
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %v.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds double, ptr %10, i64 %idxprom9
  %12 = load double, ptr %arrayidx10, align 8
  %conv11 = fptoui double %12 to i8
  %13 = load ptr, ptr %bp, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %13, i64 %idxprom12
  store i8 %conv11, ptr %arrayidx13, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %16 = load i64, ptr %tag.addr, align 8
  %conv14 = trunc i64 %16 to i16
  %17 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %17, i32 0, i32 0
  store i16 %conv14, ptr %tdir_tag, align 8
  %18 = load i32, ptr %type.addr, align 4
  %conv15 = trunc i32 %18 to i16
  %19 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %19, i32 0, i32 1
  store i16 %conv15, ptr %tdir_type, align 2
  %20 = load i64, ptr %n.addr, align 8
  %21 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %21, i32 0, i32 2
  store i64 %20, ptr %tdir_count, align 8
  %22 = load ptr, ptr %tif.addr, align 8
  %23 = load ptr, ptr %dir.addr, align 8
  %24 = load ptr, ptr %bp, align 8
  %call16 = call i32 @TIFFWriteByteArray(ptr noundef %22, ptr noundef %23, ptr noundef %24)
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.end18, label %if.then17

if.then17:                                        ; preds = %for.end
  br label %out

if.end18:                                         ; preds = %for.end
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  %25 = load ptr, ptr %w, align 8
  store ptr %25, ptr %bp20, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc31, %sw.bb19
  %26 = load i32, ptr %i, align 4
  %27 = load i64, ptr %n.addr, align 8
  %conv22 = trunc i64 %27 to i32
  %cmp23 = icmp slt i32 %26, %conv22
  br i1 %cmp23, label %for.body25, label %for.end33

for.body25:                                       ; preds = %for.cond21
  %28 = load ptr, ptr %v.addr, align 8
  %29 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %29 to i64
  %arrayidx27 = getelementptr inbounds double, ptr %28, i64 %idxprom26
  %30 = load double, ptr %arrayidx27, align 8
  %conv28 = fptosi double %30 to i8
  %31 = load ptr, ptr %bp20, align 8
  %32 = load i32, ptr %i, align 4
  %idxprom29 = sext i32 %32 to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %31, i64 %idxprom29
  store i8 %conv28, ptr %arrayidx30, align 1
  br label %for.inc31

for.inc31:                                        ; preds = %for.body25
  %33 = load i32, ptr %i, align 4
  %inc32 = add nsw i32 %33, 1
  store i32 %inc32, ptr %i, align 4
  br label %for.cond21, !llvm.loop !17

for.end33:                                        ; preds = %for.cond21
  %34 = load i64, ptr %tag.addr, align 8
  %conv34 = trunc i64 %34 to i16
  %35 = load ptr, ptr %dir.addr, align 8
  %tdir_tag35 = getelementptr inbounds %struct.TIFFDirEntry, ptr %35, i32 0, i32 0
  store i16 %conv34, ptr %tdir_tag35, align 8
  %36 = load i32, ptr %type.addr, align 4
  %conv36 = trunc i32 %36 to i16
  %37 = load ptr, ptr %dir.addr, align 8
  %tdir_type37 = getelementptr inbounds %struct.TIFFDirEntry, ptr %37, i32 0, i32 1
  store i16 %conv36, ptr %tdir_type37, align 2
  %38 = load i64, ptr %n.addr, align 8
  %39 = load ptr, ptr %dir.addr, align 8
  %tdir_count38 = getelementptr inbounds %struct.TIFFDirEntry, ptr %39, i32 0, i32 2
  store i64 %38, ptr %tdir_count38, align 8
  %40 = load ptr, ptr %tif.addr, align 8
  %41 = load ptr, ptr %dir.addr, align 8
  %42 = load ptr, ptr %bp20, align 8
  %call39 = call i32 @TIFFWriteByteArray(ptr noundef %40, ptr noundef %41, ptr noundef %42)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end42, label %if.then41

if.then41:                                        ; preds = %for.end33
  br label %out

if.end42:                                         ; preds = %for.end33
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end
  %43 = load ptr, ptr %w, align 8
  store ptr %43, ptr %bp44, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc55, %sw.bb43
  %44 = load i32, ptr %i, align 4
  %45 = load i64, ptr %n.addr, align 8
  %conv46 = trunc i64 %45 to i32
  %cmp47 = icmp slt i32 %44, %conv46
  br i1 %cmp47, label %for.body49, label %for.end57

for.body49:                                       ; preds = %for.cond45
  %46 = load ptr, ptr %v.addr, align 8
  %47 = load i32, ptr %i, align 4
  %idxprom50 = sext i32 %47 to i64
  %arrayidx51 = getelementptr inbounds double, ptr %46, i64 %idxprom50
  %48 = load double, ptr %arrayidx51, align 8
  %conv52 = fptoui double %48 to i16
  %49 = load ptr, ptr %bp44, align 8
  %50 = load i32, ptr %i, align 4
  %idxprom53 = sext i32 %50 to i64
  %arrayidx54 = getelementptr inbounds i16, ptr %49, i64 %idxprom53
  store i16 %conv52, ptr %arrayidx54, align 2
  br label %for.inc55

for.inc55:                                        ; preds = %for.body49
  %51 = load i32, ptr %i, align 4
  %inc56 = add nsw i32 %51, 1
  store i32 %inc56, ptr %i, align 4
  br label %for.cond45, !llvm.loop !18

for.end57:                                        ; preds = %for.cond45
  %52 = load ptr, ptr %tif.addr, align 8
  %53 = load i32, ptr %type.addr, align 4
  %54 = load i64, ptr %tag.addr, align 8
  %55 = load ptr, ptr %dir.addr, align 8
  %56 = load i64, ptr %n.addr, align 8
  %57 = load ptr, ptr %bp44, align 8
  %call58 = call i32 @TIFFWriteShortArray(ptr noundef %52, i32 noundef %53, i64 noundef %54, ptr noundef %55, i64 noundef %56, ptr noundef %57)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.end61, label %if.then60

if.then60:                                        ; preds = %for.end57
  br label %out

if.end61:                                         ; preds = %for.end57
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.end
  %58 = load ptr, ptr %w, align 8
  store ptr %58, ptr %bp63, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc74, %sw.bb62
  %59 = load i32, ptr %i, align 4
  %60 = load i64, ptr %n.addr, align 8
  %conv65 = trunc i64 %60 to i32
  %cmp66 = icmp slt i32 %59, %conv65
  br i1 %cmp66, label %for.body68, label %for.end76

for.body68:                                       ; preds = %for.cond64
  %61 = load ptr, ptr %v.addr, align 8
  %62 = load i32, ptr %i, align 4
  %idxprom69 = sext i32 %62 to i64
  %arrayidx70 = getelementptr inbounds double, ptr %61, i64 %idxprom69
  %63 = load double, ptr %arrayidx70, align 8
  %conv71 = fptosi double %63 to i16
  %64 = load ptr, ptr %bp63, align 8
  %65 = load i32, ptr %i, align 4
  %idxprom72 = sext i32 %65 to i64
  %arrayidx73 = getelementptr inbounds i16, ptr %64, i64 %idxprom72
  store i16 %conv71, ptr %arrayidx73, align 2
  br label %for.inc74

for.inc74:                                        ; preds = %for.body68
  %66 = load i32, ptr %i, align 4
  %inc75 = add nsw i32 %66, 1
  store i32 %inc75, ptr %i, align 4
  br label %for.cond64, !llvm.loop !19

for.end76:                                        ; preds = %for.cond64
  %67 = load ptr, ptr %tif.addr, align 8
  %68 = load i32, ptr %type.addr, align 4
  %69 = load i64, ptr %tag.addr, align 8
  %70 = load ptr, ptr %dir.addr, align 8
  %71 = load i64, ptr %n.addr, align 8
  %72 = load ptr, ptr %bp63, align 8
  %call77 = call i32 @TIFFWriteShortArray(ptr noundef %67, i32 noundef %68, i64 noundef %69, ptr noundef %70, i64 noundef %71, ptr noundef %72)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.end80, label %if.then79

if.then79:                                        ; preds = %for.end76
  br label %out

if.end80:                                         ; preds = %for.end76
  br label %sw.epilog

sw.bb81:                                          ; preds = %if.end
  %73 = load ptr, ptr %w, align 8
  store ptr %73, ptr %bp82, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc93, %sw.bb81
  %74 = load i32, ptr %i, align 4
  %75 = load i64, ptr %n.addr, align 8
  %conv84 = trunc i64 %75 to i32
  %cmp85 = icmp slt i32 %74, %conv84
  br i1 %cmp85, label %for.body87, label %for.end95

for.body87:                                       ; preds = %for.cond83
  %76 = load ptr, ptr %v.addr, align 8
  %77 = load i32, ptr %i, align 4
  %idxprom88 = sext i32 %77 to i64
  %arrayidx89 = getelementptr inbounds double, ptr %76, i64 %idxprom88
  %78 = load double, ptr %arrayidx89, align 8
  %conv90 = fptoui double %78 to i64
  %79 = load ptr, ptr %bp82, align 8
  %80 = load i32, ptr %i, align 4
  %idxprom91 = sext i32 %80 to i64
  %arrayidx92 = getelementptr inbounds i64, ptr %79, i64 %idxprom91
  store i64 %conv90, ptr %arrayidx92, align 8
  br label %for.inc93

for.inc93:                                        ; preds = %for.body87
  %81 = load i32, ptr %i, align 4
  %inc94 = add nsw i32 %81, 1
  store i32 %inc94, ptr %i, align 4
  br label %for.cond83, !llvm.loop !20

for.end95:                                        ; preds = %for.cond83
  %82 = load ptr, ptr %tif.addr, align 8
  %83 = load i32, ptr %type.addr, align 4
  %84 = load i64, ptr %tag.addr, align 8
  %85 = load ptr, ptr %dir.addr, align 8
  %86 = load i64, ptr %n.addr, align 8
  %87 = load ptr, ptr %bp82, align 8
  %call96 = call i32 @TIFFWriteLongArray(ptr noundef %82, i32 noundef %83, i64 noundef %84, ptr noundef %85, i64 noundef %86, ptr noundef %87)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.end99, label %if.then98

if.then98:                                        ; preds = %for.end95
  br label %out

if.end99:                                         ; preds = %for.end95
  br label %sw.epilog

sw.bb100:                                         ; preds = %if.end
  %88 = load ptr, ptr %w, align 8
  store ptr %88, ptr %bp101, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond102

for.cond102:                                      ; preds = %for.inc112, %sw.bb100
  %89 = load i32, ptr %i, align 4
  %90 = load i64, ptr %n.addr, align 8
  %conv103 = trunc i64 %90 to i32
  %cmp104 = icmp slt i32 %89, %conv103
  br i1 %cmp104, label %for.body106, label %for.end114

for.body106:                                      ; preds = %for.cond102
  %91 = load ptr, ptr %v.addr, align 8
  %92 = load i32, ptr %i, align 4
  %idxprom107 = sext i32 %92 to i64
  %arrayidx108 = getelementptr inbounds double, ptr %91, i64 %idxprom107
  %93 = load double, ptr %arrayidx108, align 8
  %conv109 = fptosi double %93 to i64
  %94 = load ptr, ptr %bp101, align 8
  %95 = load i32, ptr %i, align 4
  %idxprom110 = sext i32 %95 to i64
  %arrayidx111 = getelementptr inbounds i64, ptr %94, i64 %idxprom110
  store i64 %conv109, ptr %arrayidx111, align 8
  br label %for.inc112

for.inc112:                                       ; preds = %for.body106
  %96 = load i32, ptr %i, align 4
  %inc113 = add nsw i32 %96, 1
  store i32 %inc113, ptr %i, align 4
  br label %for.cond102, !llvm.loop !21

for.end114:                                       ; preds = %for.cond102
  %97 = load ptr, ptr %tif.addr, align 8
  %98 = load i32, ptr %type.addr, align 4
  %99 = load i64, ptr %tag.addr, align 8
  %100 = load ptr, ptr %dir.addr, align 8
  %101 = load i64, ptr %n.addr, align 8
  %102 = load ptr, ptr %bp101, align 8
  %call115 = call i32 @TIFFWriteLongArray(ptr noundef %97, i32 noundef %98, i64 noundef %99, ptr noundef %100, i64 noundef %101, ptr noundef %102)
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.end118, label %if.then117

if.then117:                                       ; preds = %for.end114
  br label %out

if.end118:                                        ; preds = %for.end114
  br label %sw.epilog

sw.bb119:                                         ; preds = %if.end
  %103 = load ptr, ptr %w, align 8
  store ptr %103, ptr %bp120, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond121

for.cond121:                                      ; preds = %for.inc131, %sw.bb119
  %104 = load i32, ptr %i, align 4
  %105 = load i64, ptr %n.addr, align 8
  %conv122 = trunc i64 %105 to i32
  %cmp123 = icmp slt i32 %104, %conv122
  br i1 %cmp123, label %for.body125, label %for.end133

for.body125:                                      ; preds = %for.cond121
  %106 = load ptr, ptr %v.addr, align 8
  %107 = load i32, ptr %i, align 4
  %idxprom126 = sext i32 %107 to i64
  %arrayidx127 = getelementptr inbounds double, ptr %106, i64 %idxprom126
  %108 = load double, ptr %arrayidx127, align 8
  %conv128 = fptrunc double %108 to float
  %109 = load ptr, ptr %bp120, align 8
  %110 = load i32, ptr %i, align 4
  %idxprom129 = sext i32 %110 to i64
  %arrayidx130 = getelementptr inbounds float, ptr %109, i64 %idxprom129
  store float %conv128, ptr %arrayidx130, align 4
  br label %for.inc131

for.inc131:                                       ; preds = %for.body125
  %111 = load i32, ptr %i, align 4
  %inc132 = add nsw i32 %111, 1
  store i32 %inc132, ptr %i, align 4
  br label %for.cond121, !llvm.loop !22

for.end133:                                       ; preds = %for.cond121
  %112 = load ptr, ptr %tif.addr, align 8
  %113 = load i32, ptr %type.addr, align 4
  %114 = load i64, ptr %tag.addr, align 8
  %115 = load ptr, ptr %dir.addr, align 8
  %116 = load i64, ptr %n.addr, align 8
  %117 = load ptr, ptr %bp120, align 8
  %call134 = call i32 @TIFFWriteFloatArray(ptr noundef %112, i32 noundef %113, i64 noundef %114, ptr noundef %115, i64 noundef %116, ptr noundef %117)
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %if.end137, label %if.then136

if.then136:                                       ; preds = %for.end133
  br label %out

if.end137:                                        ; preds = %for.end133
  br label %sw.epilog

sw.bb138:                                         ; preds = %if.end
  %118 = load ptr, ptr %tif.addr, align 8
  %119 = load i32, ptr %type.addr, align 4
  %120 = load i64, ptr %tag.addr, align 8
  %121 = load ptr, ptr %dir.addr, align 8
  %122 = load i64, ptr %n.addr, align 8
  %123 = load ptr, ptr %v.addr, align 8
  %call139 = call i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dirwrite_4(ptr noundef %118, i32 noundef %119, i64 noundef %120, ptr noundef %121, i64 noundef %122, ptr noundef %123)
  store i32 %call139, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end
  br label %out

sw.epilog:                                        ; preds = %if.end137, %if.end118, %if.end99, %if.end80, %if.end61, %if.end42, %if.end18
  store i32 1, ptr %status, align 4
  br label %out

out:                                              ; preds = %sw.epilog, %sw.default, %if.then136, %if.then117, %if.then98, %if.then79, %if.then60, %if.then41, %if.then17
  %124 = load ptr, ptr %w, align 8
  %arraydecay140 = getelementptr inbounds [80 x i8], ptr %buf, i64 0, i64 0
  %cmp141 = icmp ne ptr %124, %arraydecay140
  br i1 %cmp141, label %if.then143, label %if.end144

if.then143:                                       ; preds = %out
  %125 = load ptr, ptr %w, align 8
  call void @_TIFFfree(ptr noundef %125)
  br label %if.end144

if.end144:                                        ; preds = %if.then143, %out
  %126 = load i32, ptr %status, align 4
  store i32 %126, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end144, %sw.bb138
  %127 = load i32, ptr %retval, align 4
  ret i32 %127
}

declare void @TIFFWarning(ptr noundef, ptr noundef, ...) #1

declare i32 @_TIFFmemcmp(ptr noundef, ptr noundef, i64 noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dirwrite_0(ptr noundef %tif, i64 noundef %tag, ptr noundef %dir)  alwaysinline#0 {
entry:
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i64, align 8
  %dir.addr = alloca ptr, align 8
  %v = alloca [2 x i16], align 2
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tag, ptr %tag.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load i64, ptr %tag.addr, align 8
  %arrayidx = getelementptr inbounds [2 x i16], ptr %v, i64 0, i64 0
  %arrayidx1 = getelementptr inbounds [2 x i16], ptr %v, i64 0, i64 1
  %call = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %0, i64 noundef %1, ptr noundef %arrayidx, ptr noundef %arrayidx1)
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load i64, ptr %tag.addr, align 8
  %4 = load ptr, ptr %dir.addr, align 8
  %arraydecay = getelementptr inbounds [2 x i16], ptr %v, i64 0, i64 0
  %call2 = call i32 @TIFFWriteShortArray(ptr noundef %2, i32 noundef 3, i64 noundef %3, ptr noundef %4, i64 noundef 2, ptr noundef %arraydecay)
  ret i32 %call2
}

define internal i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dirwrite_1(ptr noundef %tif, ptr noundef %dir)  alwaysinline#0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i32 0, i32 0
  store i16 333, ptr %tdir_tag, align 8
  %2 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %2, i32 0, i32 1
  store i16 2, ptr %tdir_type, align 2
  %3 = load ptr, ptr %td, align 8
  %td_inknameslen = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 58
  %4 = load i32, ptr %td_inknameslen, align 8
  %conv = sext i32 %4 to i64
  %5 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i32 0, i32 2
  store i64 %conv, ptr %tdir_count, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %7 = load ptr, ptr %dir.addr, align 8
  %8 = load ptr, ptr %td, align 8
  %td_inknames = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i32 0, i32 59
  %9 = load ptr, ptr %td_inknames, align 8
  %call = call i32 @TIFFWriteByteArray(ptr noundef %6, ptr noundef %7, ptr noundef %9)
  ret i32 %call
}

define internal i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dirwrite_2(ptr noundef %tif, i32 noundef %type, i64 noundef %tag, ptr noundef %dir, i64 noundef %n, ptr noundef %v)  alwaysinline#0 {
entry:
  %tif.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %tag.addr = alloca i64, align 8
  %dir.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  store i64 %tag, ptr %tag.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  %0 = load i64, ptr %tag.addr, align 8
  %conv = trunc i64 %0 to i16
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i32 0, i32 0
  store i16 %conv, ptr %tdir_tag, align 8
  %2 = load i32, ptr %type.addr, align 4
  %conv1 = trunc i32 %2 to i16
  %3 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %3, i32 0, i32 1
  store i16 %conv1, ptr %tdir_type, align 2
  %4 = load i64, ptr %n.addr, align 8
  %5 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i32 0, i32 2
  store i64 %4, ptr %tdir_count, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %7 = load ptr, ptr %dir.addr, align 8
  %8 = load ptr, ptr %v.addr, align 8
  %call = call i32 @TIFFWriteData(ptr noundef %6, ptr noundef %7, ptr noundef %8)
  ret i32 %call
}

define internal i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dirwrite_3(ptr noundef %tif, i32 noundef %type, i64 noundef %tag, ptr noundef %dir, i64 noundef %n, ptr noundef %v)  alwaysinline#0 {
entry:
  %tif.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %tag.addr = alloca i64, align 8
  %dir.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  store i64 %tag, ptr %tag.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  %0 = load i64, ptr %tag.addr, align 8
  %conv = trunc i64 %0 to i16
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i32 0, i32 0
  store i16 %conv, ptr %tdir_tag, align 8
  %2 = load i32, ptr %type.addr, align 4
  %conv1 = trunc i32 %2 to i16
  %3 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %3, i32 0, i32 1
  store i16 %conv1, ptr %tdir_type, align 2
  %4 = load i64, ptr %n.addr, align 8
  %5 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i32 0, i32 2
  store i64 %4, ptr %tdir_count, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %7 = load ptr, ptr %dir.addr, align 8
  %8 = load ptr, ptr %v.addr, align 8
  %call = call i32 @TIFFWriteData(ptr noundef %6, ptr noundef %7, ptr noundef %8)
  ret i32 %call
}

define internal i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dirwrite_4(ptr noundef %tif, i32 noundef %type, i64 noundef %tag, ptr noundef %dir, i64 noundef %n, ptr noundef %v)  alwaysinline#0 {
entry:
  %tif.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %tag.addr = alloca i64, align 8
  %dir.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  store i64 %tag, ptr %tag.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  %0 = load i64, ptr %tag.addr, align 8
  %conv = trunc i64 %0 to i16
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i32 0, i32 0
  store i16 %conv, ptr %tdir_tag, align 8
  %2 = load i32, ptr %type.addr, align 4
  %conv1 = trunc i32 %2 to i16
  %3 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %3, i32 0, i32 1
  store i16 %conv1, ptr %tdir_type, align 2
  %4 = load i64, ptr %n.addr, align 8
  %5 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i32 0, i32 2
  store i64 %4, ptr %tdir_count, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %7 = load ptr, ptr %dir.addr, align 8
  %8 = load ptr, ptr %v.addr, align 8
  %call = call i32 @TIFFWriteData(ptr noundef %6, ptr noundef %7, ptr noundef %8)
  ret i32 %call
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
