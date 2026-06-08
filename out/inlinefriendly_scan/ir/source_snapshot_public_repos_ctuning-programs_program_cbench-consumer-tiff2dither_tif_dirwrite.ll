; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2dither/tif_dirwrite.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2dither/tif_dirwrite.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }
%struct.TIFFFieldInfo = type { i32, i16, i16, i32, i16, i8, i8, ptr }
%struct.TIFFDirEntry = type { i16, i16, i32, i32 }

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

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFWriteDirectory(ptr noundef %tif) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %dircount = alloca i16, align 2
  %diroff = alloca i32, align 4
  %tag = alloca i32, align 4
  %nfields = alloca i32, align 4
  %dirsize = alloca i32, align 4
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
  %3 = load i32, ptr %tif_flags, align 8
  %and = and i32 %3, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then1, label %if.end7

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_flags2 = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %tif_flags2, align 8
  %and3 = and i32 %5, -4097
  store i32 %and3, ptr %tif_flags2, align 8
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
  %15 = load i32, ptr %tif_rawcc, align 8
  %cmp8 = icmp sgt i32 %15, 0
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
  %20 = load i32, ptr %tif_flags14, align 8
  %and15 = and i32 %20, 512
  %tobool16 = icmp ne i32 %and15, 0
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
  store i32 0, ptr %tif_rawcc22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %land.lhs.true17, %if.end13
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_flags24 = getelementptr inbounds %struct.tiff, ptr %27, i32 0, i32 3
  %28 = load i32, ptr %tif_flags24, align 8
  %and25 = and i32 %28, -81
  store i32 %and25, ptr %tif_flags24, align 8
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %29, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  store i32 0, ptr %nfields, align 4
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
  %37 = load i32, ptr %nfields, align 4
  %add = add i32 %37, %cond
  store i32 %add, ptr %nfields, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end33
  %38 = load i64, ptr %b, align 8
  %inc = add i64 %38, 1
  store i64 %inc, ptr %b, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %39 = load i32, ptr %nfields, align 4
  %conv = zext i32 %39 to i64
  %mul = mul i64 %conv, 12
  %conv34 = trunc i64 %mul to i32
  store i32 %conv34, ptr %dirsize, align 4
  %40 = load i32, ptr %dirsize, align 4
  %call35 = call ptr @_TIFFmalloc(i32 noundef %40)
  store ptr %call35, ptr %data, align 8
  %41 = load ptr, ptr %data, align 8
  %cmp36 = icmp eq ptr %41, null
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %for.end
  %42 = load ptr, ptr %tif.addr, align 8
  %tif_name39 = getelementptr inbounds %struct.tiff, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %tif_name39, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %43, ptr noundef @.str.2)
  store i32 0, ptr %retval, align 4
  br label %return

if.end40:                                         ; preds = %for.end
  %44 = load ptr, ptr %tif.addr, align 8
  %tif_diroff = getelementptr inbounds %struct.tiff, ptr %44, i32 0, i32 4
  %45 = load i32, ptr %tif_diroff, align 4
  %cmp41 = icmp eq i32 %45, 0
  br i1 %cmp41, label %land.lhs.true43, label %if.end47

land.lhs.true43:                                  ; preds = %if.end40
  %46 = load ptr, ptr %tif.addr, align 8
  %call44 = call i32 @TIFFLinkDirectory(ptr noundef %46)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.end47, label %if.then46

if.then46:                                        ; preds = %land.lhs.true43
  br label %bad

if.end47:                                         ; preds = %land.lhs.true43, %if.end40
  %47 = load ptr, ptr %tif.addr, align 8
  %tif_diroff48 = getelementptr inbounds %struct.tiff, ptr %47, i32 0, i32 4
  %48 = load i32, ptr %tif_diroff48, align 4
  %conv49 = sext i32 %48 to i64
  %add50 = add i64 %conv49, 2
  %49 = load i32, ptr %dirsize, align 4
  %conv51 = sext i32 %49 to i64
  %add52 = add i64 %add50, %conv51
  %add53 = add i64 %add52, 4
  %conv54 = trunc i64 %add53 to i32
  %50 = load ptr, ptr %tif.addr, align 8
  %tif_dataoff = getelementptr inbounds %struct.tiff, ptr %50, i32 0, i32 15
  store i32 %conv54, ptr %tif_dataoff, align 8
  %51 = load ptr, ptr %tif.addr, align 8
  %tif_dataoff55 = getelementptr inbounds %struct.tiff, ptr %51, i32 0, i32 15
  %52 = load i32, ptr %tif_dataoff55, align 8
  %and56 = and i32 %52, 1
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then58, label %if.end61

if.then58:                                        ; preds = %if.end47
  %53 = load ptr, ptr %tif.addr, align 8
  %tif_dataoff59 = getelementptr inbounds %struct.tiff, ptr %53, i32 0, i32 15
  %54 = load i32, ptr %tif_dataoff59, align 8
  %inc60 = add nsw i32 %54, 1
  store i32 %inc60, ptr %tif_dataoff59, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end47
  %55 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %55, i32 0, i32 51
  %56 = load ptr, ptr %tif_seekproc, align 8
  %57 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %57, i32 0, i32 48
  %58 = load ptr, ptr %tif_clientdata, align 8
  %59 = load ptr, ptr %tif.addr, align 8
  %tif_dataoff62 = getelementptr inbounds %struct.tiff, ptr %59, i32 0, i32 15
  %60 = load i32, ptr %tif_dataoff62, align 8
  %call63 = call i32 %56(ptr noundef %58, i32 noundef %60, i32 noundef 0)
  %61 = load ptr, ptr %tif.addr, align 8
  %tif_curdir = getelementptr inbounds %struct.tiff, ptr %61, i32 0, i32 12
  %62 = load i16, ptr %tif_curdir, align 4
  %inc64 = add i16 %62, 1
  store i16 %inc64, ptr %tif_curdir, align 4
  %63 = load ptr, ptr %data, align 8
  store ptr %63, ptr %dir, align 8
  %arraydecay = getelementptr inbounds [3 x i64], ptr %fields, i64 0, i64 0
  %64 = load ptr, ptr %td, align 8
  %td_fieldsset65 = getelementptr inbounds %struct.TIFFDirectory, ptr %64, i32 0, i32 0
  %arraydecay66 = getelementptr inbounds [3 x i64], ptr %td_fieldsset65, i64 0, i64 0
  call void @_TIFFmemcpy(ptr noundef %arraydecay, ptr noundef %arraydecay66, i32 noundef 24)
  %arrayidx67 = getelementptr inbounds [3 x i64], ptr %fields, i64 0, i64 0
  %65 = load i64, ptr %arrayidx67, align 8
  %and68 = and i64 %65, 2147483648
  %tobool69 = icmp ne i64 %and68, 0
  br i1 %tobool69, label %land.lhs.true70, label %if.end77

land.lhs.true70:                                  ; preds = %if.end61
  %66 = load ptr, ptr %td, align 8
  %td_extrasamples = getelementptr inbounds %struct.TIFFDirectory, ptr %66, i32 0, i32 30
  %67 = load i16, ptr %td_extrasamples, align 4
  %tobool71 = icmp ne i16 %67, 0
  br i1 %tobool71, label %if.end77, label %if.then72

if.then72:                                        ; preds = %land.lhs.true70
  %arrayidx73 = getelementptr inbounds [3 x i64], ptr %fields, i64 0, i64 0
  %68 = load i64, ptr %arrayidx73, align 8
  %and74 = and i64 %68, -2147483649
  store i64 %and74, ptr %arrayidx73, align 8
  %69 = load i32, ptr %nfields, align 4
  %dec = add i32 %69, -1
  store i32 %dec, ptr %nfields, align 4
  %70 = load i32, ptr %dirsize, align 4
  %conv75 = sext i32 %70 to i64
  %sub = sub i64 %conv75, 12
  %conv76 = trunc i64 %sub to i32
  store i32 %conv76, ptr %dirsize, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then72, %land.lhs.true70, %if.end61
  store i32 0, ptr %fi, align 4
  %71 = load ptr, ptr %tif.addr, align 8
  %tif_nfields = getelementptr inbounds %struct.tiff, ptr %71, i32 0, i32 56
  %72 = load i32, ptr %tif_nfields, align 8
  store i32 %72, ptr %nfi, align 4
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc226, %if.end77
  %73 = load i32, ptr %nfi, align 4
  %cmp79 = icmp sgt i32 %73, 0
  br i1 %cmp79, label %for.body81, label %for.end229

for.body81:                                       ; preds = %for.cond78
  %74 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo = getelementptr inbounds %struct.tiff, ptr %74, i32 0, i32 55
  %75 = load ptr, ptr %tif_fieldinfo, align 8
  %76 = load i32, ptr %fi, align 4
  %idxprom = sext i32 %76 to i64
  %arrayidx82 = getelementptr inbounds ptr, ptr %75, i64 %idxprom
  %77 = load ptr, ptr %arrayidx82, align 8
  store ptr %77, ptr %fip, align 8
  %78 = load ptr, ptr %fip, align 8
  %field_bit = getelementptr inbounds %struct.TIFFFieldInfo, ptr %78, i32 0, i32 4
  %79 = load i16, ptr %field_bit, align 4
  %conv83 = zext i16 %79 to i32
  %div84 = sdiv i32 %conv83, 32
  %idxprom85 = sext i32 %div84 to i64
  %arrayidx86 = getelementptr inbounds [3 x i64], ptr %fields, i64 0, i64 %idxprom85
  %80 = load i64, ptr %arrayidx86, align 8
  %81 = load ptr, ptr %fip, align 8
  %field_bit87 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %81, i32 0, i32 4
  %82 = load i16, ptr %field_bit87, align 4
  %conv88 = zext i16 %82 to i32
  %and89 = and i32 %conv88, 31
  %sh_prom = zext i32 %and89 to i64
  %shl90 = shl i64 1, %sh_prom
  %and91 = and i64 %80, %shl90
  %tobool92 = icmp ne i64 %and91, 0
  br i1 %tobool92, label %if.end94, label %if.then93

if.then93:                                        ; preds = %for.body81
  br label %for.inc226

if.end94:                                         ; preds = %for.body81
  %83 = load ptr, ptr %fip, align 8
  %field_bit95 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %83, i32 0, i32 4
  %84 = load i16, ptr %field_bit95, align 4
  %conv96 = zext i16 %84 to i32
  switch i32 %conv96, label %sw.default [
    i32 25, label %sw.bb
    i32 24, label %sw.bb110
    i32 17, label %sw.bb126
    i32 26, label %sw.bb127
    i32 1, label %sw.bb133
    i32 2, label %sw.bb134
    i32 4, label %sw.bb136
    i32 3, label %sw.bb146
    i32 6, label %sw.bb157
    i32 18, label %sw.bb157
    i32 19, label %sw.bb157
    i32 32, label %sw.bb157
    i32 33, label %sw.bb163
    i32 34, label %sw.bb163
    i32 23, label %sw.bb170
    i32 37, label %sw.bb170
    i32 39, label %sw.bb170
    i32 47, label %sw.bb170
    i32 46, label %sw.bb176
    i32 44, label %sw.bb181
    i32 49, label %sw.bb186
  ]

sw.bb:                                            ; preds = %if.end94
  %85 = load ptr, ptr %tif.addr, align 8
  %tif_flags97 = getelementptr inbounds %struct.tiff, ptr %85, i32 0, i32 3
  %86 = load i32, ptr %tif_flags97, align 8
  %and98 = and i32 %86, 1024
  %cmp99 = icmp ne i32 %and98, 0
  %87 = zext i1 %cmp99 to i64
  %cond101 = select i1 %cmp99, i32 324, i32 273
  store i32 %cond101, ptr %tag, align 4
  %88 = load i32, ptr %tag, align 4
  %89 = load ptr, ptr %fip, align 8
  %field_tag = getelementptr inbounds %struct.TIFFFieldInfo, ptr %89, i32 0, i32 0
  %90 = load i32, ptr %field_tag, align 8
  %cmp102 = icmp ne i32 %88, %90
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %sw.bb
  br label %for.inc226

if.end105:                                        ; preds = %sw.bb
  %91 = load ptr, ptr %tif.addr, align 8
  %92 = load i32, ptr %tag, align 4
  %93 = load ptr, ptr %dir, align 8
  %94 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %94, i32 0, i32 43
  %95 = load i32, ptr %td_nstrips, align 4
  %96 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %96, i32 0, i32 44
  %97 = load ptr, ptr %td_stripoffset, align 8
  %call106 = call i32 @TIFFWriteLongArray(ptr noundef %91, i32 noundef 4, i32 noundef %92, ptr noundef %93, i32 noundef %95, ptr noundef %97)
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %if.end109, label %if.then108

if.then108:                                       ; preds = %if.end105
  br label %bad

if.end109:                                        ; preds = %if.end105
  br label %sw.epilog

sw.bb110:                                         ; preds = %if.end94
  %98 = load ptr, ptr %tif.addr, align 8
  %tif_flags111 = getelementptr inbounds %struct.tiff, ptr %98, i32 0, i32 3
  %99 = load i32, ptr %tif_flags111, align 8
  %and112 = and i32 %99, 1024
  %cmp113 = icmp ne i32 %and112, 0
  %100 = zext i1 %cmp113 to i64
  %cond115 = select i1 %cmp113, i32 325, i32 279
  store i32 %cond115, ptr %tag, align 4
  %101 = load i32, ptr %tag, align 4
  %102 = load ptr, ptr %fip, align 8
  %field_tag116 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %102, i32 0, i32 0
  %103 = load i32, ptr %field_tag116, align 8
  %cmp117 = icmp ne i32 %101, %103
  br i1 %cmp117, label %if.then119, label %if.end120

if.then119:                                       ; preds = %sw.bb110
  br label %for.inc226

if.end120:                                        ; preds = %sw.bb110
  %104 = load ptr, ptr %tif.addr, align 8
  %105 = load i32, ptr %tag, align 4
  %106 = load ptr, ptr %dir, align 8
  %107 = load ptr, ptr %td, align 8
  %td_nstrips121 = getelementptr inbounds %struct.TIFFDirectory, ptr %107, i32 0, i32 43
  %108 = load i32, ptr %td_nstrips121, align 4
  %109 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %109, i32 0, i32 45
  %110 = load ptr, ptr %td_stripbytecount, align 8
  %call122 = call i32 @TIFFWriteLongArray(ptr noundef %104, i32 noundef 4, i32 noundef %105, ptr noundef %106, i32 noundef %108, ptr noundef %110)
  %tobool123 = icmp ne i32 %call122, 0
  br i1 %tobool123, label %if.end125, label %if.then124

if.then124:                                       ; preds = %if.end120
  br label %bad

if.end125:                                        ; preds = %if.end120
  br label %sw.epilog

sw.bb126:                                         ; preds = %if.end94
  %111 = load ptr, ptr %tif.addr, align 8
  %112 = load ptr, ptr %dir, align 8
  %113 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %113, i32 0, i32 16
  %114 = load i32, ptr %td_rowsperstrip, align 4
  call void @TIFFSetupShortLong(ptr noundef %111, i32 noundef 278, ptr noundef %112, i32 noundef %114)
  br label %sw.epilog

sw.bb127:                                         ; preds = %if.end94
  %115 = load ptr, ptr %tif.addr, align 8
  %116 = load ptr, ptr %dir, align 8
  %117 = load ptr, ptr %td, align 8
  %td_colormap = getelementptr inbounds %struct.TIFFDirectory, ptr %117, i32 0, i32 28
  %arraydecay128 = getelementptr inbounds [3 x ptr], ptr %td_colormap, i64 0, i64 0
  %call129 = call i32 @TIFFWriteShortTable(ptr noundef %115, i32 noundef 320, ptr noundef %116, i32 noundef 3, ptr noundef %arraydecay128)
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.end132, label %if.then131

if.then131:                                       ; preds = %sw.bb127
  br label %bad

if.end132:                                        ; preds = %sw.bb127
  br label %sw.epilog

sw.bb133:                                         ; preds = %if.end94
  %118 = load ptr, ptr %tif.addr, align 8
  %119 = load ptr, ptr %dir, align 8
  %incdec.ptr = getelementptr inbounds %struct.TIFFDirEntry, ptr %119, i32 1
  store ptr %incdec.ptr, ptr %dir, align 8
  %120 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %120, i32 0, i32 1
  %121 = load i32, ptr %td_imagewidth, align 8
  call void @TIFFSetupShortLong(ptr noundef %118, i32 noundef 256, ptr noundef %119, i32 noundef %121)
  %122 = load ptr, ptr %tif.addr, align 8
  %123 = load ptr, ptr %dir, align 8
  %124 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %124, i32 0, i32 2
  %125 = load i32, ptr %td_imagelength, align 4
  call void @TIFFSetupShortLong(ptr noundef %122, i32 noundef 257, ptr noundef %123, i32 noundef %125)
  br label %sw.epilog

sw.bb134:                                         ; preds = %if.end94
  %126 = load ptr, ptr %tif.addr, align 8
  %127 = load ptr, ptr %dir, align 8
  %incdec.ptr135 = getelementptr inbounds %struct.TIFFDirEntry, ptr %127, i32 1
  store ptr %incdec.ptr135, ptr %dir, align 8
  %128 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %128, i32 0, i32 4
  %129 = load i32, ptr %td_tilewidth, align 4
  call void @TIFFSetupShortLong(ptr noundef %126, i32 noundef 322, ptr noundef %127, i32 noundef %129)
  %130 = load ptr, ptr %tif.addr, align 8
  %131 = load ptr, ptr %dir, align 8
  %132 = load ptr, ptr %td, align 8
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %132, i32 0, i32 5
  %133 = load i32, ptr %td_tilelength, align 8
  call void @TIFFSetupShortLong(ptr noundef %130, i32 noundef 323, ptr noundef %131, i32 noundef %133)
  br label %sw.epilog

sw.bb136:                                         ; preds = %if.end94
  %134 = load ptr, ptr %tif.addr, align 8
  %135 = load ptr, ptr %dir, align 8
  %136 = load ptr, ptr %td, align 8
  %td_xposition = getelementptr inbounds %struct.TIFFDirectory, ptr %136, i32 0, i32 25
  %call137 = call i32 @TIFFWriteRationalArray(ptr noundef %134, i32 noundef 5, i32 noundef 286, ptr noundef %135, i32 noundef 1, ptr noundef %td_xposition)
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %if.end140, label %if.then139

if.then139:                                       ; preds = %sw.bb136
  br label %bad

if.end140:                                        ; preds = %sw.bb136
  %137 = load ptr, ptr %tif.addr, align 8
  %138 = load ptr, ptr %dir, align 8
  %add.ptr = getelementptr inbounds %struct.TIFFDirEntry, ptr %138, i64 1
  %139 = load ptr, ptr %td, align 8
  %td_yposition = getelementptr inbounds %struct.TIFFDirectory, ptr %139, i32 0, i32 26
  %call141 = call i32 @TIFFWriteRationalArray(ptr noundef %137, i32 noundef 5, i32 noundef 287, ptr noundef %add.ptr, i32 noundef 1, ptr noundef %td_yposition)
  %tobool142 = icmp ne i32 %call141, 0
  br i1 %tobool142, label %if.end144, label %if.then143

if.then143:                                       ; preds = %if.end140
  br label %bad

if.end144:                                        ; preds = %if.end140
  %140 = load ptr, ptr %dir, align 8
  %incdec.ptr145 = getelementptr inbounds %struct.TIFFDirEntry, ptr %140, i32 1
  store ptr %incdec.ptr145, ptr %dir, align 8
  br label %sw.epilog

sw.bb146:                                         ; preds = %if.end94
  %141 = load ptr, ptr %tif.addr, align 8
  %142 = load ptr, ptr %dir, align 8
  %143 = load ptr, ptr %td, align 8
  %td_xresolution = getelementptr inbounds %struct.TIFFDirectory, ptr %143, i32 0, i32 21
  %call147 = call i32 @TIFFWriteRationalArray(ptr noundef %141, i32 noundef 5, i32 noundef 282, ptr noundef %142, i32 noundef 1, ptr noundef %td_xresolution)
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.end150, label %if.then149

if.then149:                                       ; preds = %sw.bb146
  br label %bad

if.end150:                                        ; preds = %sw.bb146
  %144 = load ptr, ptr %tif.addr, align 8
  %145 = load ptr, ptr %dir, align 8
  %add.ptr151 = getelementptr inbounds %struct.TIFFDirEntry, ptr %145, i64 1
  %146 = load ptr, ptr %td, align 8
  %td_yresolution = getelementptr inbounds %struct.TIFFDirectory, ptr %146, i32 0, i32 22
  %call152 = call i32 @TIFFWriteRationalArray(ptr noundef %144, i32 noundef 5, i32 noundef 283, ptr noundef %add.ptr151, i32 noundef 1, ptr noundef %td_yresolution)
  %tobool153 = icmp ne i32 %call152, 0
  br i1 %tobool153, label %if.end155, label %if.then154

if.then154:                                       ; preds = %if.end150
  br label %bad

if.end155:                                        ; preds = %if.end150
  %147 = load ptr, ptr %dir, align 8
  %incdec.ptr156 = getelementptr inbounds %struct.TIFFDirEntry, ptr %147, i32 1
  store ptr %incdec.ptr156, ptr %dir, align 8
  br label %sw.epilog

sw.bb157:                                         ; preds = %if.end94, %if.end94, %if.end94, %if.end94
  %148 = load ptr, ptr %tif.addr, align 8
  %149 = load ptr, ptr %fip, align 8
  %field_tag158 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %149, i32 0, i32 0
  %150 = load i32, ptr %field_tag158, align 8
  %151 = load ptr, ptr %dir, align 8
  %call159 = call i32 @TIFFWritePerSampleShorts(ptr noundef %148, i32 noundef %150, ptr noundef %151)
  %tobool160 = icmp ne i32 %call159, 0
  br i1 %tobool160, label %if.end162, label %if.then161

if.then161:                                       ; preds = %sw.bb157
  br label %bad

if.end162:                                        ; preds = %sw.bb157
  br label %sw.epilog

sw.bb163:                                         ; preds = %if.end94, %if.end94
  %152 = load ptr, ptr %tif.addr, align 8
  %153 = load ptr, ptr %tif.addr, align 8
  %call164 = call i32 @_TIFFSampleToTagType(ptr noundef %153)
  %154 = load ptr, ptr %fip, align 8
  %field_tag165 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %154, i32 0, i32 0
  %155 = load i32, ptr %field_tag165, align 8
  %156 = load ptr, ptr %dir, align 8
  %call166 = call i32 @TIFFWritePerSampleAnys(ptr noundef %152, i32 noundef %call164, i32 noundef %155, ptr noundef %156)
  %tobool167 = icmp ne i32 %call166, 0
  br i1 %tobool167, label %if.end169, label %if.then168

if.then168:                                       ; preds = %sw.bb163
  br label %bad

if.end169:                                        ; preds = %sw.bb163
  br label %sw.epilog

sw.bb170:                                         ; preds = %if.end94, %if.end94, %if.end94, %if.end94
  %157 = load ptr, ptr %tif.addr, align 8
  %158 = load ptr, ptr %fip, align 8
  %field_tag171 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %158, i32 0, i32 0
  %159 = load i32, ptr %field_tag171, align 8
  %160 = load ptr, ptr %dir, align 8
  %call172 = call i32 @TIFFSetupShortPair(ptr noundef %157, i32 noundef %159, ptr noundef %160)
  %tobool173 = icmp ne i32 %call172, 0
  br i1 %tobool173, label %if.end175, label %if.then174

if.then174:                                       ; preds = %sw.bb170
  br label %bad

if.end175:                                        ; preds = %sw.bb170
  br label %sw.epilog

sw.bb176:                                         ; preds = %if.end94
  %161 = load ptr, ptr %tif.addr, align 8
  %162 = load ptr, ptr %dir, align 8
  %call177 = call i32 @TIFFWriteInkNames(ptr noundef %161, ptr noundef %162)
  %tobool178 = icmp ne i32 %call177, 0
  br i1 %tobool178, label %if.end180, label %if.then179

if.then179:                                       ; preds = %sw.bb176
  br label %bad

if.end180:                                        ; preds = %sw.bb176
  br label %sw.epilog

sw.bb181:                                         ; preds = %if.end94
  %163 = load ptr, ptr %tif.addr, align 8
  %164 = load ptr, ptr %dir, align 8
  %call182 = call i32 @TIFFWriteTransferFunction(ptr noundef %163, ptr noundef %164)
  %tobool183 = icmp ne i32 %call182, 0
  br i1 %tobool183, label %if.end185, label %if.then184

if.then184:                                       ; preds = %sw.bb181
  br label %bad

if.end185:                                        ; preds = %sw.bb181
  br label %sw.epilog

sw.bb186:                                         ; preds = %if.end94
  %165 = load ptr, ptr %tif.addr, align 8
  %166 = load ptr, ptr %dir, align 8
  %167 = load ptr, ptr %fip, align 8
  %call187 = call i32 @TIFFWriteNormalTag(ptr noundef %165, ptr noundef %166, ptr noundef %167)
  %tobool188 = icmp ne i32 %call187, 0
  br i1 %tobool188, label %if.end190, label %if.then189

if.then189:                                       ; preds = %sw.bb186
  br label %bad

if.end190:                                        ; preds = %sw.bb186
  %168 = load ptr, ptr %dir, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %168, i32 0, i32 2
  %169 = load i32, ptr %tdir_count, align 4
  %cmp191 = icmp ugt i32 %169, 0
  br i1 %cmp191, label %if.then193, label %if.end209

if.then193:                                       ; preds = %if.end190
  %170 = load ptr, ptr %tif.addr, align 8
  %tif_flags194 = getelementptr inbounds %struct.tiff, ptr %170, i32 0, i32 3
  %171 = load i32, ptr %tif_flags194, align 8
  %or = or i32 %171, 8192
  store i32 %or, ptr %tif_flags194, align 8
  %172 = load ptr, ptr %dir, align 8
  %tdir_count195 = getelementptr inbounds %struct.TIFFDirEntry, ptr %172, i32 0, i32 2
  %173 = load i32, ptr %tdir_count195, align 4
  %conv196 = trunc i32 %173 to i16
  %174 = load ptr, ptr %tif.addr, align 8
  %tif_nsubifd = getelementptr inbounds %struct.tiff, ptr %174, i32 0, i32 16
  store i16 %conv196, ptr %tif_nsubifd, align 4
  %175 = load ptr, ptr %dir, align 8
  %tdir_count197 = getelementptr inbounds %struct.TIFFDirEntry, ptr %175, i32 0, i32 2
  %176 = load i32, ptr %tdir_count197, align 4
  %cmp198 = icmp ugt i32 %176, 1
  br i1 %cmp198, label %if.then200, label %if.else

if.then200:                                       ; preds = %if.then193
  %177 = load ptr, ptr %dir, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %177, i32 0, i32 3
  %178 = load i32, ptr %tdir_offset, align 4
  %179 = load ptr, ptr %tif.addr, align 8
  %tif_subifdoff = getelementptr inbounds %struct.tiff, ptr %179, i32 0, i32 17
  store i32 %178, ptr %tif_subifdoff, align 8
  br label %if.end208

if.else:                                          ; preds = %if.then193
  %180 = load ptr, ptr %tif.addr, align 8
  %tif_diroff201 = getelementptr inbounds %struct.tiff, ptr %180, i32 0, i32 4
  %181 = load i32, ptr %tif_diroff201, align 4
  %conv202 = sext i32 %181 to i64
  %add203 = add i64 %conv202, 2
  %182 = load ptr, ptr %dir, align 8
  %tdir_offset204 = getelementptr inbounds %struct.TIFFDirEntry, ptr %182, i32 0, i32 3
  %183 = load ptr, ptr %data, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %tdir_offset204 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %183 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add205 = add i64 %add203, %sub.ptr.sub
  %conv206 = trunc i64 %add205 to i32
  %184 = load ptr, ptr %tif.addr, align 8
  %tif_subifdoff207 = getelementptr inbounds %struct.tiff, ptr %184, i32 0, i32 17
  store i32 %conv206, ptr %tif_subifdoff207, align 8
  br label %if.end208

if.end208:                                        ; preds = %if.else, %if.then200
  br label %if.end209

if.end209:                                        ; preds = %if.end208, %if.end190
  br label %sw.epilog

sw.default:                                       ; preds = %if.end94
  %185 = load ptr, ptr %tif.addr, align 8
  %186 = load ptr, ptr %dir, align 8
  %187 = load ptr, ptr %fip, align 8
  %call210 = call i32 @TIFFWriteNormalTag(ptr noundef %185, ptr noundef %186, ptr noundef %187)
  %tobool211 = icmp ne i32 %call210, 0
  br i1 %tobool211, label %if.end213, label %if.then212

if.then212:                                       ; preds = %sw.default
  br label %bad

if.end213:                                        ; preds = %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end213, %if.end209, %if.end185, %if.end180, %if.end175, %if.end169, %if.end162, %if.end155, %if.end144, %sw.bb134, %sw.bb133, %if.end132, %sw.bb126, %if.end125, %if.end109
  %188 = load ptr, ptr %dir, align 8
  %incdec.ptr214 = getelementptr inbounds %struct.TIFFDirEntry, ptr %188, i32 1
  store ptr %incdec.ptr214, ptr %dir, align 8
  %189 = load ptr, ptr %fip, align 8
  %field_bit215 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %189, i32 0, i32 4
  %190 = load i16, ptr %field_bit215, align 4
  %conv216 = zext i16 %190 to i32
  %and217 = and i32 %conv216, 31
  %sh_prom218 = zext i32 %and217 to i64
  %shl219 = shl i64 1, %sh_prom218
  %neg = xor i64 %shl219, -1
  %191 = load ptr, ptr %fip, align 8
  %field_bit220 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %191, i32 0, i32 4
  %192 = load i16, ptr %field_bit220, align 4
  %conv221 = zext i16 %192 to i32
  %div222 = sdiv i32 %conv221, 32
  %idxprom223 = sext i32 %div222 to i64
  %arrayidx224 = getelementptr inbounds [3 x i64], ptr %fields, i64 0, i64 %idxprom223
  %193 = load i64, ptr %arrayidx224, align 8
  %and225 = and i64 %193, %neg
  store i64 %and225, ptr %arrayidx224, align 8
  br label %for.inc226

for.inc226:                                       ; preds = %sw.epilog, %if.then119, %if.then104, %if.then93
  %194 = load i32, ptr %nfi, align 4
  %dec227 = add nsw i32 %194, -1
  store i32 %dec227, ptr %nfi, align 4
  %195 = load i32, ptr %fi, align 4
  %inc228 = add nsw i32 %195, 1
  store i32 %inc228, ptr %fi, align 4
  br label %for.cond78, !llvm.loop !8

for.end229:                                       ; preds = %for.cond78
  %196 = load i32, ptr %nfields, align 4
  %conv230 = trunc i32 %196 to i16
  store i16 %conv230, ptr %dircount, align 2
  %197 = load ptr, ptr %tif.addr, align 8
  %tif_nextdiroff = getelementptr inbounds %struct.tiff, ptr %197, i32 0, i32 5
  %198 = load i32, ptr %tif_nextdiroff, align 8
  store i32 %198, ptr %diroff, align 4
  %199 = load ptr, ptr %tif.addr, align 8
  %tif_flags231 = getelementptr inbounds %struct.tiff, ptr %199, i32 0, i32 3
  %200 = load i32, ptr %tif_flags231, align 8
  %and232 = and i32 %200, 128
  %tobool233 = icmp ne i32 %and232, 0
  br i1 %tobool233, label %if.then234, label %if.end244

if.then234:                                       ; preds = %for.end229
  %201 = load ptr, ptr %data, align 8
  store ptr %201, ptr %dir, align 8
  br label %for.cond235

for.cond235:                                      ; preds = %for.inc239, %if.then234
  %202 = load i16, ptr %dircount, align 2
  %tobool236 = icmp ne i16 %202, 0
  br i1 %tobool236, label %for.body237, label %for.end242

for.body237:                                      ; preds = %for.cond235
  %203 = load ptr, ptr %dir, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %203, i32 0, i32 0
  call void @TIFFSwabArrayOfShort(ptr noundef %tdir_tag, i64 noundef 2)
  %204 = load ptr, ptr %dir, align 8
  %tdir_count238 = getelementptr inbounds %struct.TIFFDirEntry, ptr %204, i32 0, i32 2
  call void @TIFFSwabArrayOfLong(ptr noundef %tdir_count238, i64 noundef 2)
  br label %for.inc239

for.inc239:                                       ; preds = %for.body237
  %205 = load ptr, ptr %dir, align 8
  %incdec.ptr240 = getelementptr inbounds %struct.TIFFDirEntry, ptr %205, i32 1
  store ptr %incdec.ptr240, ptr %dir, align 8
  %206 = load i16, ptr %dircount, align 2
  %dec241 = add i16 %206, -1
  store i16 %dec241, ptr %dircount, align 2
  br label %for.cond235, !llvm.loop !9

for.end242:                                       ; preds = %for.cond235
  %207 = load i32, ptr %nfields, align 4
  %conv243 = trunc i32 %207 to i16
  store i16 %conv243, ptr %dircount, align 2
  call void @TIFFSwabShort(ptr noundef %dircount)
  call void @TIFFSwabLong(ptr noundef %diroff)
  br label %if.end244

if.end244:                                        ; preds = %for.end242, %for.end229
  %208 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc245 = getelementptr inbounds %struct.tiff, ptr %208, i32 0, i32 51
  %209 = load ptr, ptr %tif_seekproc245, align 8
  %210 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata246 = getelementptr inbounds %struct.tiff, ptr %210, i32 0, i32 48
  %211 = load ptr, ptr %tif_clientdata246, align 8
  %212 = load ptr, ptr %tif.addr, align 8
  %tif_diroff247 = getelementptr inbounds %struct.tiff, ptr %212, i32 0, i32 4
  %213 = load i32, ptr %tif_diroff247, align 4
  %call248 = call i32 %209(ptr noundef %211, i32 noundef %213, i32 noundef 0)
  %214 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc = getelementptr inbounds %struct.tiff, ptr %214, i32 0, i32 50
  %215 = load ptr, ptr %tif_writeproc, align 8
  %216 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata249 = getelementptr inbounds %struct.tiff, ptr %216, i32 0, i32 48
  %217 = load ptr, ptr %tif_clientdata249, align 8
  %call250 = call i32 %215(ptr noundef %217, ptr noundef %dircount, i32 noundef 2)
  %cmp251 = icmp eq i32 %call250, 2
  br i1 %cmp251, label %if.end255, label %if.then253

if.then253:                                       ; preds = %if.end244
  %218 = load ptr, ptr %tif.addr, align 8
  %tif_name254 = getelementptr inbounds %struct.tiff, ptr %218, i32 0, i32 0
  %219 = load ptr, ptr %tif_name254, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %219, ptr noundef @.str.3)
  br label %bad

if.end255:                                        ; preds = %if.end244
  %220 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc256 = getelementptr inbounds %struct.tiff, ptr %220, i32 0, i32 50
  %221 = load ptr, ptr %tif_writeproc256, align 8
  %222 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata257 = getelementptr inbounds %struct.tiff, ptr %222, i32 0, i32 48
  %223 = load ptr, ptr %tif_clientdata257, align 8
  %224 = load ptr, ptr %data, align 8
  %225 = load i32, ptr %dirsize, align 4
  %call258 = call i32 %221(ptr noundef %223, ptr noundef %224, i32 noundef %225)
  %226 = load i32, ptr %dirsize, align 4
  %cmp259 = icmp eq i32 %call258, %226
  br i1 %cmp259, label %if.end263, label %if.then261

if.then261:                                       ; preds = %if.end255
  %227 = load ptr, ptr %tif.addr, align 8
  %tif_name262 = getelementptr inbounds %struct.tiff, ptr %227, i32 0, i32 0
  %228 = load ptr, ptr %tif_name262, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %228, ptr noundef @.str.4)
  br label %bad

if.end263:                                        ; preds = %if.end255
  %229 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc264 = getelementptr inbounds %struct.tiff, ptr %229, i32 0, i32 50
  %230 = load ptr, ptr %tif_writeproc264, align 8
  %231 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata265 = getelementptr inbounds %struct.tiff, ptr %231, i32 0, i32 48
  %232 = load ptr, ptr %tif_clientdata265, align 8
  %call266 = call i32 %230(ptr noundef %232, ptr noundef %diroff, i32 noundef 4)
  %cmp267 = icmp eq i32 %call266, 4
  br i1 %cmp267, label %if.end271, label %if.then269

if.then269:                                       ; preds = %if.end263
  %233 = load ptr, ptr %tif.addr, align 8
  %tif_name270 = getelementptr inbounds %struct.tiff, ptr %233, i32 0, i32 0
  %234 = load ptr, ptr %tif_name270, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %234, ptr noundef @.str.5)
  br label %bad

if.end271:                                        ; preds = %if.end263
  %235 = load ptr, ptr %tif.addr, align 8
  call void @TIFFFreeDirectory(ptr noundef %235)
  %236 = load ptr, ptr %data, align 8
  call void @_TIFFfree(ptr noundef %236)
  %237 = load ptr, ptr %tif.addr, align 8
  %tif_flags272 = getelementptr inbounds %struct.tiff, ptr %237, i32 0, i32 3
  %238 = load i32, ptr %tif_flags272, align 8
  %and273 = and i32 %238, -9
  store i32 %and273, ptr %tif_flags272, align 8
  %239 = load ptr, ptr %tif.addr, align 8
  %tif_cleanup = getelementptr inbounds %struct.tiff, ptr %239, i32 0, i32 34
  %240 = load ptr, ptr %tif_cleanup, align 8
  %241 = load ptr, ptr %tif.addr, align 8
  call void %240(ptr noundef %241)
  %242 = load ptr, ptr %tif.addr, align 8
  %call274 = call i32 @TIFFDefaultDirectory(ptr noundef %242)
  %243 = load ptr, ptr %tif.addr, align 8
  %tif_diroff275 = getelementptr inbounds %struct.tiff, ptr %243, i32 0, i32 4
  store i32 0, ptr %tif_diroff275, align 4
  %244 = load ptr, ptr %tif.addr, align 8
  %tif_curoff = getelementptr inbounds %struct.tiff, ptr %244, i32 0, i32 14
  store i32 0, ptr %tif_curoff, align 4
  %245 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %245, i32 0, i32 11
  store i32 -1, ptr %tif_row, align 8
  %246 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %246, i32 0, i32 13
  store i32 -1, ptr %tif_curstrip, align 8
  store i32 1, ptr %retval, align 4
  br label %return

bad:                                              ; preds = %if.then269, %if.then261, %if.then253, %if.then212, %if.then189, %if.then184, %if.then179, %if.then174, %if.then168, %if.then161, %if.then154, %if.then149, %if.then143, %if.then139, %if.then131, %if.then124, %if.then108, %if.then46
  %247 = load ptr, ptr %data, align 8
  call void @_TIFFfree(ptr noundef %247)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %bad, %if.end271, %if.then38, %if.then11, %if.then5, %if.then
  %248 = load i32, ptr %retval, align 4
  ret i32 %248
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

declare i32 @TIFFFlushData1(ptr noundef) #1

declare void @_TIFFfree(ptr noundef) #1

declare ptr @_TIFFmalloc(i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @TIFFLinkDirectory(ptr noundef %tif) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %nextdir = alloca i32, align 4
  %diroff = alloca i32, align 4
  %dircount = alloca i16, align 2
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 51
  %1 = load ptr, ptr %tif_seekproc, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 48
  %3 = load ptr, ptr %tif_clientdata, align 8
  %call = call i32 %1(ptr noundef %3, i32 noundef 0, i32 noundef 2)
  %add = add nsw i32 %call, 1
  %and = and i32 %add, -2
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_diroff = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 4
  store i32 %and, ptr %tif_diroff, align 4
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_diroff1 = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 4
  %6 = load i32, ptr %tif_diroff1, align 4
  store i32 %6, ptr %diroff, align 4
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %7, i32 0, i32 3
  %8 = load i32, ptr %tif_flags, align 8
  %and2 = and i32 %8, 128
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @TIFFSwabLong(ptr noundef %diroff)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_flags3 = getelementptr inbounds %struct.tiff, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %tif_flags3, align 8
  %and4 = and i32 %10, 8192
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then6, label %if.end22

if.then6:                                         ; preds = %if.end
  %11 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc7 = getelementptr inbounds %struct.tiff, ptr %11, i32 0, i32 51
  %12 = load ptr, ptr %tif_seekproc7, align 8
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata8 = getelementptr inbounds %struct.tiff, ptr %13, i32 0, i32 48
  %14 = load ptr, ptr %tif_clientdata8, align 8
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_subifdoff = getelementptr inbounds %struct.tiff, ptr %15, i32 0, i32 17
  %16 = load i32, ptr %tif_subifdoff, align 8
  %call9 = call i32 %12(ptr noundef %14, i32 noundef %16, i32 noundef 0)
  %17 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc = getelementptr inbounds %struct.tiff, ptr %17, i32 0, i32 50
  %18 = load ptr, ptr %tif_writeproc, align 8
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata10 = getelementptr inbounds %struct.tiff, ptr %19, i32 0, i32 48
  %20 = load ptr, ptr %tif_clientdata10, align 8
  %call11 = call i32 %18(ptr noundef %20, ptr noundef %diroff, i32 noundef 4)
  %cmp = icmp eq i32 %call11, 4
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
  %24 = load i16, ptr %tif_nsubifd, align 4
  %dec = add i16 %24, -1
  store i16 %dec, ptr %tif_nsubifd, align 4
  %tobool14 = icmp ne i16 %dec, 0
  br i1 %tobool14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end13
  %25 = load ptr, ptr %tif.addr, align 8
  %tif_subifdoff16 = getelementptr inbounds %struct.tiff, ptr %25, i32 0, i32 17
  %26 = load i32, ptr %tif_subifdoff16, align 8
  %conv = sext i32 %26 to i64
  %add17 = add i64 %conv, 4
  %conv18 = trunc i64 %add17 to i32
  store i32 %conv18, ptr %tif_subifdoff16, align 8
  br label %if.end21

if.else:                                          ; preds = %if.end13
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_flags19 = getelementptr inbounds %struct.tiff, ptr %27, i32 0, i32 3
  %28 = load i32, ptr %tif_flags19, align 8
  %and20 = and i32 %28, -8193
  store i32 %and20, ptr %tif_flags19, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then15
  store i32 1, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.end
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %29, i32 0, i32 7
  %tiff_diroff = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header, i32 0, i32 2
  %30 = load i32, ptr %tiff_diroff, align 4
  %cmp23 = icmp eq i32 %30, 0
  br i1 %cmp23, label %if.then25, label %if.end40

if.then25:                                        ; preds = %if.end22
  %31 = load ptr, ptr %tif.addr, align 8
  %tif_diroff26 = getelementptr inbounds %struct.tiff, ptr %31, i32 0, i32 4
  %32 = load i32, ptr %tif_diroff26, align 4
  %33 = load ptr, ptr %tif.addr, align 8
  %tif_header27 = getelementptr inbounds %struct.tiff, ptr %33, i32 0, i32 7
  %tiff_diroff28 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header27, i32 0, i32 2
  store i32 %32, ptr %tiff_diroff28, align 4
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc29 = getelementptr inbounds %struct.tiff, ptr %34, i32 0, i32 51
  %35 = load ptr, ptr %tif_seekproc29, align 8
  %36 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata30 = getelementptr inbounds %struct.tiff, ptr %36, i32 0, i32 48
  %37 = load ptr, ptr %tif_clientdata30, align 8
  %call31 = call i32 %35(ptr noundef %37, i32 noundef ptrtoint (ptr getelementptr inbounds (%struct.TIFFHeader, ptr null, i32 0, i32 2) to i32), i32 noundef 0)
  %38 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc32 = getelementptr inbounds %struct.tiff, ptr %38, i32 0, i32 50
  %39 = load ptr, ptr %tif_writeproc32, align 8
  %40 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata33 = getelementptr inbounds %struct.tiff, ptr %40, i32 0, i32 48
  %41 = load ptr, ptr %tif_clientdata33, align 8
  %call34 = call i32 %39(ptr noundef %41, ptr noundef %diroff, i32 noundef 4)
  %cmp35 = icmp eq i32 %call34, 4
  br i1 %cmp35, label %if.end39, label %if.then37

if.then37:                                        ; preds = %if.then25
  %42 = load ptr, ptr %tif.addr, align 8
  %tif_name38 = getelementptr inbounds %struct.tiff, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %tif_name38, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %43, ptr noundef @.str.9)
  store i32 0, ptr %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.then25
  store i32 1, ptr %retval, align 4
  br label %return

if.end40:                                         ; preds = %if.end22
  %44 = load ptr, ptr %tif.addr, align 8
  %tif_header41 = getelementptr inbounds %struct.tiff, ptr %44, i32 0, i32 7
  %tiff_diroff42 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header41, i32 0, i32 2
  %45 = load i32, ptr %tiff_diroff42, align 4
  store i32 %45, ptr %nextdir, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end40
  %46 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc43 = getelementptr inbounds %struct.tiff, ptr %46, i32 0, i32 51
  %47 = load ptr, ptr %tif_seekproc43, align 8
  %48 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata44 = getelementptr inbounds %struct.tiff, ptr %48, i32 0, i32 48
  %49 = load ptr, ptr %tif_clientdata44, align 8
  %50 = load i32, ptr %nextdir, align 4
  %call45 = call i32 %47(ptr noundef %49, i32 noundef %50, i32 noundef 0)
  %51 = load i32, ptr %nextdir, align 4
  %cmp46 = icmp eq i32 %call45, %51
  br i1 %cmp46, label %lor.lhs.false, label %if.then52

lor.lhs.false:                                    ; preds = %do.body
  %52 = load ptr, ptr %tif.addr, align 8
  %tif_readproc = getelementptr inbounds %struct.tiff, ptr %52, i32 0, i32 49
  %53 = load ptr, ptr %tif_readproc, align 8
  %54 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata48 = getelementptr inbounds %struct.tiff, ptr %54, i32 0, i32 48
  %55 = load ptr, ptr %tif_clientdata48, align 8
  %call49 = call i32 %53(ptr noundef %55, ptr noundef %dircount, i32 noundef 2)
  %cmp50 = icmp eq i32 %call49, 2
  br i1 %cmp50, label %if.end53, label %if.then52

if.then52:                                        ; preds = %lor.lhs.false, %do.body
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFLinkDirectory.module, ptr noundef @.str.10)
  store i32 0, ptr %retval, align 4
  br label %return

if.end53:                                         ; preds = %lor.lhs.false
  %56 = load ptr, ptr %tif.addr, align 8
  %tif_flags54 = getelementptr inbounds %struct.tiff, ptr %56, i32 0, i32 3
  %57 = load i32, ptr %tif_flags54, align 8
  %and55 = and i32 %57, 128
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end53
  call void @TIFFSwabShort(ptr noundef %dircount)
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end53
  %58 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc59 = getelementptr inbounds %struct.tiff, ptr %58, i32 0, i32 51
  %59 = load ptr, ptr %tif_seekproc59, align 8
  %60 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata60 = getelementptr inbounds %struct.tiff, ptr %60, i32 0, i32 48
  %61 = load ptr, ptr %tif_clientdata60, align 8
  %62 = load i16, ptr %dircount, align 2
  %conv61 = zext i16 %62 to i64
  %mul = mul i64 %conv61, 12
  %conv62 = trunc i64 %mul to i32
  %call63 = call i32 %59(ptr noundef %61, i32 noundef %conv62, i32 noundef 1)
  %63 = load ptr, ptr %tif.addr, align 8
  %tif_readproc64 = getelementptr inbounds %struct.tiff, ptr %63, i32 0, i32 49
  %64 = load ptr, ptr %tif_readproc64, align 8
  %65 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata65 = getelementptr inbounds %struct.tiff, ptr %65, i32 0, i32 48
  %66 = load ptr, ptr %tif_clientdata65, align 8
  %call66 = call i32 %64(ptr noundef %66, ptr noundef %nextdir, i32 noundef 4)
  %cmp67 = icmp eq i32 %call66, 4
  br i1 %cmp67, label %if.end70, label %if.then69

if.then69:                                        ; preds = %if.end58
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFLinkDirectory.module, ptr noundef @.str.11)
  store i32 0, ptr %retval, align 4
  br label %return

if.end70:                                         ; preds = %if.end58
  %67 = load ptr, ptr %tif.addr, align 8
  %tif_flags71 = getelementptr inbounds %struct.tiff, ptr %67, i32 0, i32 3
  %68 = load i32, ptr %tif_flags71, align 8
  %and72 = and i32 %68, 128
  %tobool73 = icmp ne i32 %and72, 0
  br i1 %tobool73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end70
  call void @TIFFSwabLong(ptr noundef %nextdir)
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end70
  br label %do.cond

do.cond:                                          ; preds = %if.end75
  %69 = load i32, ptr %nextdir, align 4
  %cmp76 = icmp ne i32 %69, 0
  br i1 %cmp76, label %do.body, label %do.end, !llvm.loop !10

do.end:                                           ; preds = %do.cond
  %70 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc78 = getelementptr inbounds %struct.tiff, ptr %70, i32 0, i32 51
  %71 = load ptr, ptr %tif_seekproc78, align 8
  %72 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata79 = getelementptr inbounds %struct.tiff, ptr %72, i32 0, i32 48
  %73 = load ptr, ptr %tif_clientdata79, align 8
  %call80 = call i32 %71(ptr noundef %73, i32 noundef -4, i32 noundef 1)
  %74 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc81 = getelementptr inbounds %struct.tiff, ptr %74, i32 0, i32 50
  %75 = load ptr, ptr %tif_writeproc81, align 8
  %76 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata82 = getelementptr inbounds %struct.tiff, ptr %76, i32 0, i32 48
  %77 = load ptr, ptr %tif_clientdata82, align 8
  %call83 = call i32 %75(ptr noundef %77, ptr noundef %diroff, i32 noundef 4)
  %cmp84 = icmp eq i32 %call83, 4
  br i1 %cmp84, label %if.end87, label %if.then86

if.then86:                                        ; preds = %do.end
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFLinkDirectory.module, ptr noundef @.str.5)
  store i32 0, ptr %retval, align 4
  br label %return

if.end87:                                         ; preds = %do.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end87, %if.then86, %if.then69, %if.then52, %if.end39, %if.then37, %if.end21, %if.then12
  %78 = load i32, ptr %retval, align 4
  ret i32 %78
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @TIFFWriteLongArray(ptr noundef %tif, i32 noundef %type, i32 noundef %tag, ptr noundef %dir, i32 noundef %n, ptr noundef %v) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %tag.addr = alloca i32, align 4
  %dir.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  store i32 %tag, ptr %tag.addr, align 4
  store ptr %dir, ptr %dir.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr %v, ptr %v.addr, align 8
  %0 = load i32, ptr %tag.addr, align 4
  %conv = trunc i32 %0 to i16
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i32 0, i32 0
  store i16 %conv, ptr %tdir_tag, align 4
  %2 = load i32, ptr %type.addr, align 4
  %conv1 = trunc i32 %2 to i16
  %3 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %3, i32 0, i32 1
  store i16 %conv1, ptr %tdir_type, align 2
  %4 = load i32, ptr %n.addr, align 4
  %5 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i32 0, i32 2
  store i32 %4, ptr %tdir_count, align 4
  %6 = load i32, ptr %n.addr, align 4
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %v.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %7, i64 0
  %8 = load i32, ptr %arrayidx, align 4
  %9 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %9, i32 0, i32 3
  store i32 %8, ptr %tdir_offset, align 4
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @TIFFSetupShortLong(ptr noundef %tif, i32 noundef %tag, ptr noundef %dir, i32 noundef %v) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %dir.addr = alloca ptr, align 8
  %v.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %tag, ptr %tag.addr, align 4
  store ptr %dir, ptr %dir.addr, align 8
  store i32 %v, ptr %v.addr, align 4
  %0 = load i32, ptr %tag.addr, align 4
  %conv = trunc i32 %0 to i16
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i32 0, i32 0
  store i16 %conv, ptr %tdir_tag, align 4
  %2 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %2, i32 0, i32 2
  store i32 1, ptr %tdir_count, align 4
  %3 = load i32, ptr %v.addr, align 4
  %conv1 = zext i32 %3 to i64
  %cmp = icmp sgt i64 %conv1, 65535
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %4, i32 0, i32 1
  store i16 4, ptr %tdir_type, align 2
  %5 = load i32, ptr %v.addr, align 4
  %6 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %6, i32 0, i32 3
  store i32 %5, ptr %tdir_offset, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %dir.addr, align 8
  %tdir_type3 = getelementptr inbounds %struct.TIFFDirEntry, ptr %7, i32 0, i32 1
  store i16 3, ptr %tdir_type3, align 2
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 7
  %tiff_magic = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header, i32 0, i32 0
  %9 = load i16, ptr %tiff_magic, align 8
  %conv4 = zext i16 %9 to i32
  %cmp5 = icmp eq i32 %conv4, 19789
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %10 = load i32, ptr %v.addr, align 4
  %conv7 = zext i32 %10 to i64
  %11 = load ptr, ptr %tif.addr, align 8
  %tif_typemask = getelementptr inbounds %struct.tiff, ptr %11, i32 0, i32 10
  %12 = load ptr, ptr %tif_typemask, align 8
  %arrayidx = getelementptr inbounds i64, ptr %12, i64 3
  %13 = load i64, ptr %arrayidx, align 8
  %and = and i64 %conv7, %13
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift = getelementptr inbounds %struct.tiff, ptr %14, i32 0, i32 9
  %15 = load ptr, ptr %tif_typeshift, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %15, i64 3
  %16 = load i32, ptr %arrayidx8, align 4
  %sh_prom = zext i32 %16 to i64
  %shl = shl i64 %and, %sh_prom
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %17 = load i32, ptr %v.addr, align 4
  %conv9 = zext i32 %17 to i64
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_typemask10 = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 10
  %19 = load ptr, ptr %tif_typemask10, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %19, i64 3
  %20 = load i64, ptr %arrayidx11, align 8
  %and12 = and i64 %conv9, %20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shl, %cond.true ], [ %and12, %cond.false ]
  %conv13 = trunc i64 %cond to i32
  %21 = load ptr, ptr %dir.addr, align 8
  %tdir_offset14 = getelementptr inbounds %struct.TIFFDirEntry, ptr %21, i32 0, i32 3
  store i32 %conv13, ptr %tdir_offset14, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @TIFFWriteShortTable(ptr noundef %tif, i32 noundef %tag, ptr noundef %dir, i32 noundef %n, ptr noundef %table) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %dir.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %off = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %tag, ptr %tag.addr, align 4
  store ptr %dir, ptr %dir.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr %table, ptr %table.addr, align 8
  %0 = load i32, ptr %tag.addr, align 4
  %conv = trunc i32 %0 to i16
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i32 0, i32 0
  store i16 %conv, ptr %tdir_tag, align 4
  %2 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %2, i32 0, i32 1
  store i16 3, ptr %tdir_type, align 2
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 6
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir, i32 0, i32 8
  %4 = load i16, ptr %td_bitspersample, align 4
  %conv1 = zext i16 %4 to i32
  %sh_prom = zext i32 %conv1 to i64
  %shl = shl i64 1, %sh_prom
  %conv2 = trunc i64 %shl to i32
  %5 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i32 0, i32 2
  store i32 %conv2, ptr %tdir_count, align 4
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_dataoff = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 15
  %7 = load i32, ptr %tif_dataoff, align 8
  store i32 %7, ptr %off, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %n.addr, align 4
  %cmp = icmp ult i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %tif.addr, align 8
  %11 = load ptr, ptr %dir.addr, align 8
  %12 = load ptr, ptr %table.addr, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom = zext i32 %13 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %12, i64 %idxprom
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
  %15 = load i32, ptr %i, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %16 = load i32, ptr %n.addr, align 4
  %17 = load ptr, ptr %dir.addr, align 8
  %tdir_count4 = getelementptr inbounds %struct.TIFFDirEntry, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %tdir_count4, align 4
  %mul = mul i32 %18, %16
  store i32 %mul, ptr %tdir_count4, align 4
  %19 = load i32, ptr %off, align 4
  %20 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %20, i32 0, i32 3
  store i32 %19, ptr %tdir_offset, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @TIFFWriteRationalArray(ptr noundef %tif, i32 noundef %type, i32 noundef %tag, ptr noundef %dir, i32 noundef %n, ptr noundef %v) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %tag.addr = alloca i32, align 4
  %dir.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %t = alloca ptr, align 8
  %status = alloca i32, align 4
  %fv = alloca float, align 4
  %sign = alloca i32, align 4
  %den = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  store i32 %tag, ptr %tag.addr, align 4
  store ptr %dir, ptr %dir.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr %v, ptr %v.addr, align 8
  %0 = load i32, ptr %tag.addr, align 4
  %conv = trunc i32 %0 to i16
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i32 0, i32 0
  store i16 %conv, ptr %tdir_tag, align 4
  %2 = load i32, ptr %type.addr, align 4
  %conv1 = trunc i32 %2 to i16
  %3 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %3, i32 0, i32 1
  store i16 %conv1, ptr %tdir_type, align 2
  %4 = load i32, ptr %n.addr, align 4
  %5 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i32 0, i32 2
  store i32 %4, ptr %tdir_count, align 4
  %6 = load i32, ptr %n.addr, align 4
  %mul = mul i32 2, %6
  %conv2 = zext i32 %mul to i64
  %mul3 = mul i64 %conv2, 4
  %conv4 = trunc i64 %mul3 to i32
  %call = call ptr @_TIFFmalloc(i32 noundef %conv4)
  store ptr %call, ptr %t, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %n.addr, align 4
  %cmp = icmp ult i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %v.addr, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom = zext i32 %10 to i64
  %arrayidx = getelementptr inbounds float, ptr %9, i64 %idxprom
  %11 = load float, ptr %arrayidx, align 4
  store float %11, ptr %fv, align 4
  store i32 1, ptr %sign, align 4
  %12 = load float, ptr %fv, align 4
  %cmp6 = fcmp olt float %12, 0.000000e+00
  br i1 %cmp6, label %if.then, label %if.end13

if.then:                                          ; preds = %for.body
  %13 = load i32, ptr %type.addr, align 4
  %cmp8 = icmp eq i32 %13, 5
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %tif_name, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %17 = load i32, ptr %tag.addr, align 4
  %call11 = call ptr @_TIFFFieldWithTag(ptr noundef %16, i32 noundef %17)
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call11, i32 0, i32 7
  %18 = load ptr, ptr %field_name, align 8
  %19 = load float, ptr %fv, align 4
  %conv12 = fpext float %19 to double
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %15, ptr noundef @.str.7, ptr noundef %18, double noundef %conv12)
  store float 0.000000e+00, ptr %fv, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %20 = load float, ptr %fv, align 4
  %fneg = fneg float %20
  store float %fneg, ptr %fv, align 4
  store i32 -1, ptr %sign, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then10
  br label %if.end13

if.end13:                                         ; preds = %if.end, %for.body
  store i32 1, ptr %den, align 4
  %21 = load float, ptr %fv, align 4
  %cmp14 = fcmp ogt float %21, 0.000000e+00
  br i1 %cmp14, label %if.then16, label %if.end26

if.then16:                                        ; preds = %if.end13
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then16
  %22 = load float, ptr %fv, align 4
  %cmp17 = fcmp olt float %22, 0x41B0000000000000
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %23 = load i32, ptr %den, align 4
  %conv19 = zext i32 %23 to i64
  %cmp20 = icmp slt i64 %conv19, 268435456
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %24 = phi i1 [ false, %while.cond ], [ %cmp20, %land.rhs ]
  br i1 %24, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %25 = load float, ptr %fv, align 4
  %mul22 = fmul float %25, 8.000000e+00
  store float %mul22, ptr %fv, align 4
  %26 = load i32, ptr %den, align 4
  %conv23 = zext i32 %26 to i64
  %mul24 = mul nsw i64 %conv23, 8
  %conv25 = trunc i64 %mul24 to i32
  store i32 %conv25, ptr %den, align 4
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %land.end
  br label %if.end26

if.end26:                                         ; preds = %while.end, %if.end13
  %27 = load i32, ptr %sign, align 4
  %conv27 = sitofp i32 %27 to double
  %28 = load float, ptr %fv, align 4
  %conv28 = fpext float %28 to double
  %add = fadd double %conv28, 5.000000e-01
  %mul29 = fmul double %conv27, %add
  %conv30 = fptoui double %mul29 to i32
  %29 = load ptr, ptr %t, align 8
  %30 = load i32, ptr %i, align 4
  %mul31 = mul i32 2, %30
  %add32 = add i32 %mul31, 0
  %idxprom33 = zext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %29, i64 %idxprom33
  store i32 %conv30, ptr %arrayidx34, align 4
  %31 = load i32, ptr %den, align 4
  %32 = load ptr, ptr %t, align 8
  %33 = load i32, ptr %i, align 4
  %mul35 = mul i32 2, %33
  %add36 = add i32 %mul35, 1
  %idxprom37 = zext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %32, i64 %idxprom37
  store i32 %31, ptr %arrayidx38, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end26
  %34 = load i32, ptr %i, align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %35 = load ptr, ptr %tif.addr, align 8
  %36 = load ptr, ptr %dir.addr, align 8
  %37 = load ptr, ptr %t, align 8
  %call39 = call i32 @TIFFWriteData(ptr noundef %35, ptr noundef %36, ptr noundef %37)
  store i32 %call39, ptr %status, align 4
  %38 = load ptr, ptr %t, align 8
  call void @_TIFFfree(ptr noundef %38)
  %39 = load i32, ptr %status, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @TIFFWritePerSampleShorts(ptr noundef %tif, i32 noundef %tag, ptr noundef %dir) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %dir.addr = alloca ptr, align 8
  %buf = alloca [10 x i16], align 2
  %v = alloca i16, align 2
  %w = alloca ptr, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %samples = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %tag, ptr %tag.addr, align 4
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
  %conv4 = trunc i64 %mul to i32
  %call = call ptr @_TIFFmalloc(i32 noundef %conv4)
  store ptr %call, ptr %w, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %tif.addr, align 8
  %5 = load i32, ptr %tag.addr, align 4
  %call5 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %4, i32 noundef %5, ptr noundef %v)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %samples, align 4
  %cmp6 = icmp slt i32 %6, %7
  br i1 %cmp6, label %for.body, label %for.end

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
  %13 = load i32, ptr %tag.addr, align 4
  %14 = load ptr, ptr %dir.addr, align 8
  %15 = load i32, ptr %samples, align 4
  %16 = load ptr, ptr %w, align 8
  %call8 = call i32 @TIFFWriteShortArray(ptr noundef %12, i32 noundef 3, i32 noundef %13, ptr noundef %14, i32 noundef %15, ptr noundef %16)
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @TIFFWritePerSampleAnys(ptr noundef %tif, i32 noundef %type, i32 noundef %tag, ptr noundef %dir) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %tag.addr = alloca i32, align 4
  %dir.addr = alloca ptr, align 8
  %buf = alloca [10 x double], align 8
  %v = alloca double, align 8
  %w = alloca ptr, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %samples = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  store i32 %tag, ptr %tag.addr, align 4
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
  %conv4 = trunc i64 %mul to i32
  %call = call ptr @_TIFFmalloc(i32 noundef %conv4)
  store ptr %call, ptr %w, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %tif.addr, align 8
  %5 = load i32, ptr %tag.addr, align 4
  %call5 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %4, i32 noundef %5, ptr noundef %v)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %samples, align 4
  %cmp6 = icmp slt i32 %6, %7
  br i1 %cmp6, label %for.body, label %for.end

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
  %14 = load i32, ptr %tag.addr, align 4
  %15 = load ptr, ptr %dir.addr, align 8
  %16 = load i32, ptr %samples, align 4
  %17 = load ptr, ptr %w, align 8
  %call8 = call i32 @TIFFWriteAnyArray(ptr noundef %12, i32 noundef %13, i32 noundef %14, ptr noundef %15, i32 noundef %16, ptr noundef %17)
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @TIFFSetupShortPair(ptr noundef %tif, i32 noundef %tag, ptr noundef %dir) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %dir.addr = alloca ptr, align 8
  %v = alloca [2 x i16], align 2
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %tag, ptr %tag.addr, align 4
  store ptr %dir, ptr %dir.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load i32, ptr %tag.addr, align 4
  %arrayidx = getelementptr inbounds [2 x i16], ptr %v, i64 0, i64 0
  %arrayidx1 = getelementptr inbounds [2 x i16], ptr %v, i64 0, i64 1
  %call = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %1, ptr noundef %arrayidx, ptr noundef %arrayidx1)
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load i32, ptr %tag.addr, align 4
  %4 = load ptr, ptr %dir.addr, align 8
  %arraydecay = getelementptr inbounds [2 x i16], ptr %v, i64 0, i64 0
  %call2 = call i32 @TIFFWriteShortArray(ptr noundef %2, i32 noundef 3, i32 noundef %3, ptr noundef %4, i32 noundef 2, ptr noundef %arraydecay)
  ret i32 %call2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  store i16 333, ptr %tdir_tag, align 4
  %2 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %2, i32 0, i32 1
  store i16 2, ptr %tdir_type, align 2
  %3 = load ptr, ptr %td, align 8
  %td_inknameslen = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 58
  %4 = load i32, ptr %td_inknameslen, align 8
  %5 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i32 0, i32 2
  store i32 %4, ptr %tdir_count, align 4
  %6 = load ptr, ptr %tif.addr, align 8
  %7 = load ptr, ptr %dir.addr, align 8
  %8 = load ptr, ptr %td, align 8
  %td_inknames = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i32 0, i32 59
  %9 = load ptr, ptr %td_inknames, align 8
  %call = call i32 @TIFFWriteByteArray(ptr noundef %6, ptr noundef %7, ptr noundef %9)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @TIFFWriteTransferFunction(ptr noundef %tif, ptr noundef %dir) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %n = alloca i32, align 4
  %tf = alloca ptr, align 8
  %ncols = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 8
  %2 = load i16, ptr %td_bitspersample, align 4
  %conv = zext i16 %2 to i32
  %sh_prom = zext i32 %conv to i64
  %shl = shl i64 1, %sh_prom
  %mul = mul i64 %shl, 2
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, ptr %n, align 4
  %3 = load ptr, ptr %td, align 8
  %td_transferfunction = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 54
  %arraydecay = getelementptr inbounds [3 x ptr], ptr %td_transferfunction, i64 0, i64 0
  store ptr %arraydecay, ptr %tf, align 8
  %4 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %4, i32 0, i32 15
  %5 = load i16, ptr %td_samplesperpixel, align 2
  %conv2 = zext i16 %5 to i32
  %6 = load ptr, ptr %td, align 8
  %td_extrasamples = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i32 0, i32 30
  %7 = load i16, ptr %td_extrasamples, align 4
  %conv3 = zext i16 %7 to i32
  %sub = sub nsw i32 %conv2, %conv3
  switch i32 %sub, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb11
    i32 0, label %sw.bb11
  ]

sw.default:                                       ; preds = %entry
  %8 = load ptr, ptr %tf, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 0
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = load ptr, ptr %tf, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %10, i64 2
  %11 = load ptr, ptr %arrayidx4, align 8
  %12 = load i32, ptr %n, align 4
  %call = call i32 @_TIFFmemcmp(ptr noundef %9, ptr noundef %11, i32 noundef %12)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  store i32 3, ptr %ncols, align 4
  br label %sw.epilog

if.end:                                           ; preds = %sw.default
  br label %sw.bb

sw.bb:                                            ; preds = %entry, %if.end
  %13 = load ptr, ptr %tf, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %13, i64 0
  %14 = load ptr, ptr %arrayidx5, align 8
  %15 = load ptr, ptr %tf, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %15, i64 1
  %16 = load ptr, ptr %arrayidx6, align 8
  %17 = load i32, ptr %n, align 4
  %call7 = call i32 @_TIFFmemcmp(ptr noundef %14, ptr noundef %16, i32 noundef %17)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %sw.bb
  store i32 3, ptr %ncols, align 4
  br label %sw.epilog

if.end10:                                         ; preds = %sw.bb
  br label %sw.bb11

sw.bb11:                                          ; preds = %entry, %entry, %if.end10
  store i32 1, ptr %ncols, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %if.then9, %if.then
  %18 = load ptr, ptr %tif.addr, align 8
  %19 = load ptr, ptr %dir.addr, align 8
  %20 = load i32, ptr %ncols, align 4
  %21 = load ptr, ptr %tf, align 8
  %call12 = call i32 @TIFFWriteShortTable(ptr noundef %18, i32 noundef 301, ptr noundef %19, i32 noundef %20, ptr noundef %21)
  ret i32 %call12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @TIFFWriteNormalTag(ptr noundef %tif, ptr noundef %dir, ptr noundef %fip) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %fip.addr = alloca ptr, align 8
  %wc = alloca i16, align 2
  %wc2 = alloca i32, align 4
  %wp = alloca ptr, align 8
  %sv = alloca i16, align 2
  %lp = alloca ptr, align 8
  %fp = alloca ptr, align 8
  %fv = alloca float, align 4
  %fp103 = alloca ptr, align 8
  %fv122 = alloca float, align 4
  %dp = alloca ptr, align 8
  %dv = alloca double, align 8
  %cp = alloca ptr, align 8
  %cp181 = alloca ptr, align 8
  %cv = alloca i8, align 1
  %cp207 = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %fip, ptr %fip.addr, align 8
  %0 = load ptr, ptr %fip.addr, align 8
  %field_writecount = getelementptr inbounds %struct.TIFFFieldInfo, ptr %0, i32 0, i32 2
  %1 = load i16, ptr %field_writecount, align 2
  store i16 %1, ptr %wc, align 2
  %2 = load ptr, ptr %fip.addr, align 8
  %field_tag = getelementptr inbounds %struct.TIFFFieldInfo, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %field_tag, align 8
  %conv = trunc i32 %3 to i16
  %4 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %4, i32 0, i32 0
  store i16 %conv, ptr %tdir_tag, align 4
  %5 = load ptr, ptr %fip.addr, align 8
  %field_type = getelementptr inbounds %struct.TIFFFieldInfo, ptr %5, i32 0, i32 3
  %6 = load i32, ptr %field_type, align 8
  %conv1 = trunc i32 %6 to i16
  %7 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %7, i32 0, i32 1
  store i16 %conv1, ptr %tdir_type, align 2
  %8 = load i16, ptr %wc, align 2
  %conv2 = zext i16 %8 to i32
  %9 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %9, i32 0, i32 2
  store i32 %conv2, ptr %tdir_count, align 4
  %10 = load ptr, ptr %fip.addr, align 8
  %field_type3 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %field_type3, align 8
  switch i32 %11, label %sw.epilog [
    i32 3, label %sw.bb
    i32 8, label %sw.bb
    i32 4, label %sw.bb38
    i32 9, label %sw.bb38
    i32 5, label %sw.bb65
    i32 10, label %sw.bb65
    i32 11, label %sw.bb98
    i32 12, label %sw.bb133
    i32 2, label %sw.bb166
    i32 1, label %sw.bb176
    i32 6, label %sw.bb176
    i32 7, label %sw.bb206
    i32 0, label %sw.bb233
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
  %16 = load i32, ptr %field_tag10, align 8
  %call = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %14, i32 noundef %16, ptr noundef %wc, ptr noundef %wp)
  br label %if.end

if.else:                                          ; preds = %if.then
  %17 = load ptr, ptr %tif.addr, align 8
  %18 = load ptr, ptr %fip.addr, align 8
  %field_tag11 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %18, i32 0, i32 0
  %19 = load i32, ptr %field_tag11, align 8
  %call12 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %17, i32 noundef %19, ptr noundef %wp)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then9
  %20 = load ptr, ptr %tif.addr, align 8
  %21 = load ptr, ptr %fip.addr, align 8
  %field_type13 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %21, i32 0, i32 3
  %22 = load i32, ptr %field_type13, align 8
  %23 = load ptr, ptr %fip.addr, align 8
  %field_tag14 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %23, i32 0, i32 0
  %24 = load i32, ptr %field_tag14, align 8
  %25 = load ptr, ptr %dir.addr, align 8
  %26 = load i16, ptr %wc, align 2
  %conv15 = zext i16 %26 to i32
  %27 = load ptr, ptr %wp, align 8
  %call16 = call i32 @TIFFWriteShortArray(ptr noundef %20, i32 noundef %22, i32 noundef %24, ptr noundef %25, i32 noundef %conv15, ptr noundef %27)
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end
  br label %if.end37

if.else19:                                        ; preds = %sw.bb
  %28 = load ptr, ptr %tif.addr, align 8
  %29 = load ptr, ptr %fip.addr, align 8
  %field_tag20 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %29, i32 0, i32 0
  %30 = load i32, ptr %field_tag20, align 8
  %call21 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %28, i32 noundef %30, ptr noundef %sv)
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
  %conv36 = trunc i64 %cond to i32
  %50 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %50, i32 0, i32 3
  store i32 %conv36, ptr %tdir_offset, align 4
  br label %if.end37

if.end37:                                         ; preds = %cond.end, %if.end18
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry, %entry
  %51 = load i16, ptr %wc, align 2
  %conv39 = zext i16 %51 to i32
  %cmp40 = icmp sgt i32 %conv39, 1
  br i1 %cmp40, label %if.then42, label %if.else60

if.then42:                                        ; preds = %sw.bb38
  %52 = load i16, ptr %wc, align 2
  %conv43 = zext i16 %52 to i32
  %cmp44 = icmp eq i32 %conv43, 65535
  br i1 %cmp44, label %if.then46, label %if.else49

if.then46:                                        ; preds = %if.then42
  %53 = load ptr, ptr %tif.addr, align 8
  %54 = load ptr, ptr %fip.addr, align 8
  %field_tag47 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %54, i32 0, i32 0
  %55 = load i32, ptr %field_tag47, align 8
  %call48 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %53, i32 noundef %55, ptr noundef %wc, ptr noundef %lp)
  br label %if.end52

if.else49:                                        ; preds = %if.then42
  %56 = load ptr, ptr %tif.addr, align 8
  %57 = load ptr, ptr %fip.addr, align 8
  %field_tag50 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %57, i32 0, i32 0
  %58 = load i32, ptr %field_tag50, align 8
  %call51 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %56, i32 noundef %58, ptr noundef %lp)
  br label %if.end52

if.end52:                                         ; preds = %if.else49, %if.then46
  %59 = load ptr, ptr %tif.addr, align 8
  %60 = load ptr, ptr %fip.addr, align 8
  %field_type53 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %60, i32 0, i32 3
  %61 = load i32, ptr %field_type53, align 8
  %62 = load ptr, ptr %fip.addr, align 8
  %field_tag54 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %62, i32 0, i32 0
  %63 = load i32, ptr %field_tag54, align 8
  %64 = load ptr, ptr %dir.addr, align 8
  %65 = load i16, ptr %wc, align 2
  %conv55 = zext i16 %65 to i32
  %66 = load ptr, ptr %lp, align 8
  %call56 = call i32 @TIFFWriteLongArray(ptr noundef %59, i32 noundef %61, i32 noundef %63, ptr noundef %64, i32 noundef %conv55, ptr noundef %66)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.end59, label %if.then58

if.then58:                                        ; preds = %if.end52
  store i32 0, ptr %retval, align 4
  br label %return

if.end59:                                         ; preds = %if.end52
  br label %if.end64

if.else60:                                        ; preds = %sw.bb38
  %67 = load ptr, ptr %tif.addr, align 8
  %68 = load ptr, ptr %fip.addr, align 8
  %field_tag61 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %68, i32 0, i32 0
  %69 = load i32, ptr %field_tag61, align 8
  %70 = load ptr, ptr %dir.addr, align 8
  %tdir_offset62 = getelementptr inbounds %struct.TIFFDirEntry, ptr %70, i32 0, i32 3
  %call63 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %67, i32 noundef %69, ptr noundef %tdir_offset62)
  br label %if.end64

if.end64:                                         ; preds = %if.else60, %if.end59
  br label %sw.epilog

sw.bb65:                                          ; preds = %entry, %entry
  %71 = load i16, ptr %wc, align 2
  %conv66 = zext i16 %71 to i32
  %cmp67 = icmp sgt i32 %conv66, 1
  br i1 %cmp67, label %if.then69, label %if.else87

if.then69:                                        ; preds = %sw.bb65
  %72 = load i16, ptr %wc, align 2
  %conv70 = zext i16 %72 to i32
  %cmp71 = icmp eq i32 %conv70, 65535
  br i1 %cmp71, label %if.then73, label %if.else76

if.then73:                                        ; preds = %if.then69
  %73 = load ptr, ptr %tif.addr, align 8
  %74 = load ptr, ptr %fip.addr, align 8
  %field_tag74 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %74, i32 0, i32 0
  %75 = load i32, ptr %field_tag74, align 8
  %call75 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %73, i32 noundef %75, ptr noundef %wc, ptr noundef %fp)
  br label %if.end79

if.else76:                                        ; preds = %if.then69
  %76 = load ptr, ptr %tif.addr, align 8
  %77 = load ptr, ptr %fip.addr, align 8
  %field_tag77 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %77, i32 0, i32 0
  %78 = load i32, ptr %field_tag77, align 8
  %call78 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %76, i32 noundef %78, ptr noundef %fp)
  br label %if.end79

if.end79:                                         ; preds = %if.else76, %if.then73
  %79 = load ptr, ptr %tif.addr, align 8
  %80 = load ptr, ptr %fip.addr, align 8
  %field_type80 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %80, i32 0, i32 3
  %81 = load i32, ptr %field_type80, align 8
  %82 = load ptr, ptr %fip.addr, align 8
  %field_tag81 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %82, i32 0, i32 0
  %83 = load i32, ptr %field_tag81, align 8
  %84 = load ptr, ptr %dir.addr, align 8
  %85 = load i16, ptr %wc, align 2
  %conv82 = zext i16 %85 to i32
  %86 = load ptr, ptr %fp, align 8
  %call83 = call i32 @TIFFWriteRationalArray(ptr noundef %79, i32 noundef %81, i32 noundef %83, ptr noundef %84, i32 noundef %conv82, ptr noundef %86)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.end86, label %if.then85

if.then85:                                        ; preds = %if.end79
  store i32 0, ptr %retval, align 4
  br label %return

if.end86:                                         ; preds = %if.end79
  br label %if.end97

if.else87:                                        ; preds = %sw.bb65
  %87 = load ptr, ptr %tif.addr, align 8
  %88 = load ptr, ptr %fip.addr, align 8
  %field_tag88 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %88, i32 0, i32 0
  %89 = load i32, ptr %field_tag88, align 8
  %call89 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %87, i32 noundef %89, ptr noundef %fv)
  %90 = load ptr, ptr %tif.addr, align 8
  %91 = load ptr, ptr %fip.addr, align 8
  %field_type90 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %91, i32 0, i32 3
  %92 = load i32, ptr %field_type90, align 8
  %93 = load ptr, ptr %fip.addr, align 8
  %field_tag91 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %93, i32 0, i32 0
  %94 = load i32, ptr %field_tag91, align 8
  %95 = load ptr, ptr %dir.addr, align 8
  %96 = load i16, ptr %wc, align 2
  %conv92 = zext i16 %96 to i32
  %call93 = call i32 @TIFFWriteRationalArray(ptr noundef %90, i32 noundef %92, i32 noundef %94, ptr noundef %95, i32 noundef %conv92, ptr noundef %fv)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.end96, label %if.then95

if.then95:                                        ; preds = %if.else87
  store i32 0, ptr %retval, align 4
  br label %return

if.end96:                                         ; preds = %if.else87
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.end86
  br label %sw.epilog

sw.bb98:                                          ; preds = %entry
  %97 = load i16, ptr %wc, align 2
  %conv99 = zext i16 %97 to i32
  %cmp100 = icmp sgt i32 %conv99, 1
  br i1 %cmp100, label %if.then102, label %if.else121

if.then102:                                       ; preds = %sw.bb98
  %98 = load i16, ptr %wc, align 2
  %conv104 = zext i16 %98 to i32
  %cmp105 = icmp eq i32 %conv104, 65535
  br i1 %cmp105, label %if.then107, label %if.else110

if.then107:                                       ; preds = %if.then102
  %99 = load ptr, ptr %tif.addr, align 8
  %100 = load ptr, ptr %fip.addr, align 8
  %field_tag108 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %100, i32 0, i32 0
  %101 = load i32, ptr %field_tag108, align 8
  %call109 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %99, i32 noundef %101, ptr noundef %wc, ptr noundef %fp103)
  br label %if.end113

if.else110:                                       ; preds = %if.then102
  %102 = load ptr, ptr %tif.addr, align 8
  %103 = load ptr, ptr %fip.addr, align 8
  %field_tag111 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %103, i32 0, i32 0
  %104 = load i32, ptr %field_tag111, align 8
  %call112 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %102, i32 noundef %104, ptr noundef %fp103)
  br label %if.end113

if.end113:                                        ; preds = %if.else110, %if.then107
  %105 = load ptr, ptr %tif.addr, align 8
  %106 = load ptr, ptr %fip.addr, align 8
  %field_type114 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %106, i32 0, i32 3
  %107 = load i32, ptr %field_type114, align 8
  %108 = load ptr, ptr %fip.addr, align 8
  %field_tag115 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %108, i32 0, i32 0
  %109 = load i32, ptr %field_tag115, align 8
  %110 = load ptr, ptr %dir.addr, align 8
  %111 = load i16, ptr %wc, align 2
  %conv116 = zext i16 %111 to i32
  %112 = load ptr, ptr %fp103, align 8
  %call117 = call i32 @TIFFWriteFloatArray(ptr noundef %105, i32 noundef %107, i32 noundef %109, ptr noundef %110, i32 noundef %conv116, ptr noundef %112)
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %if.end120, label %if.then119

if.then119:                                       ; preds = %if.end113
  store i32 0, ptr %retval, align 4
  br label %return

if.end120:                                        ; preds = %if.end113
  br label %if.end132

if.else121:                                       ; preds = %sw.bb98
  %113 = load ptr, ptr %tif.addr, align 8
  %114 = load ptr, ptr %fip.addr, align 8
  %field_tag123 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %114, i32 0, i32 0
  %115 = load i32, ptr %field_tag123, align 8
  %call124 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %113, i32 noundef %115, ptr noundef %fv122)
  %116 = load ptr, ptr %tif.addr, align 8
  %117 = load ptr, ptr %fip.addr, align 8
  %field_type125 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %117, i32 0, i32 3
  %118 = load i32, ptr %field_type125, align 8
  %119 = load ptr, ptr %fip.addr, align 8
  %field_tag126 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %119, i32 0, i32 0
  %120 = load i32, ptr %field_tag126, align 8
  %121 = load ptr, ptr %dir.addr, align 8
  %122 = load i16, ptr %wc, align 2
  %conv127 = zext i16 %122 to i32
  %call128 = call i32 @TIFFWriteFloatArray(ptr noundef %116, i32 noundef %118, i32 noundef %120, ptr noundef %121, i32 noundef %conv127, ptr noundef %fv122)
  %tobool129 = icmp ne i32 %call128, 0
  br i1 %tobool129, label %if.end131, label %if.then130

if.then130:                                       ; preds = %if.else121
  store i32 0, ptr %retval, align 4
  br label %return

if.end131:                                        ; preds = %if.else121
  br label %if.end132

if.end132:                                        ; preds = %if.end131, %if.end120
  br label %sw.epilog

sw.bb133:                                         ; preds = %entry
  %123 = load i16, ptr %wc, align 2
  %conv134 = zext i16 %123 to i32
  %cmp135 = icmp sgt i32 %conv134, 1
  br i1 %cmp135, label %if.then137, label %if.else155

if.then137:                                       ; preds = %sw.bb133
  %124 = load i16, ptr %wc, align 2
  %conv138 = zext i16 %124 to i32
  %cmp139 = icmp eq i32 %conv138, 65535
  br i1 %cmp139, label %if.then141, label %if.else144

if.then141:                                       ; preds = %if.then137
  %125 = load ptr, ptr %tif.addr, align 8
  %126 = load ptr, ptr %fip.addr, align 8
  %field_tag142 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %126, i32 0, i32 0
  %127 = load i32, ptr %field_tag142, align 8
  %call143 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %125, i32 noundef %127, ptr noundef %wc, ptr noundef %dp)
  br label %if.end147

if.else144:                                       ; preds = %if.then137
  %128 = load ptr, ptr %tif.addr, align 8
  %129 = load ptr, ptr %fip.addr, align 8
  %field_tag145 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %129, i32 0, i32 0
  %130 = load i32, ptr %field_tag145, align 8
  %call146 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %128, i32 noundef %130, ptr noundef %dp)
  br label %if.end147

if.end147:                                        ; preds = %if.else144, %if.then141
  %131 = load ptr, ptr %tif.addr, align 8
  %132 = load ptr, ptr %fip.addr, align 8
  %field_type148 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %132, i32 0, i32 3
  %133 = load i32, ptr %field_type148, align 8
  %134 = load ptr, ptr %fip.addr, align 8
  %field_tag149 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %134, i32 0, i32 0
  %135 = load i32, ptr %field_tag149, align 8
  %136 = load ptr, ptr %dir.addr, align 8
  %137 = load i16, ptr %wc, align 2
  %conv150 = zext i16 %137 to i32
  %138 = load ptr, ptr %dp, align 8
  %call151 = call i32 @TIFFWriteDoubleArray(ptr noundef %131, i32 noundef %133, i32 noundef %135, ptr noundef %136, i32 noundef %conv150, ptr noundef %138)
  %tobool152 = icmp ne i32 %call151, 0
  br i1 %tobool152, label %if.end154, label %if.then153

if.then153:                                       ; preds = %if.end147
  store i32 0, ptr %retval, align 4
  br label %return

if.end154:                                        ; preds = %if.end147
  br label %if.end165

if.else155:                                       ; preds = %sw.bb133
  %139 = load ptr, ptr %tif.addr, align 8
  %140 = load ptr, ptr %fip.addr, align 8
  %field_tag156 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %140, i32 0, i32 0
  %141 = load i32, ptr %field_tag156, align 8
  %call157 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %139, i32 noundef %141, ptr noundef %dv)
  %142 = load ptr, ptr %tif.addr, align 8
  %143 = load ptr, ptr %fip.addr, align 8
  %field_type158 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %143, i32 0, i32 3
  %144 = load i32, ptr %field_type158, align 8
  %145 = load ptr, ptr %fip.addr, align 8
  %field_tag159 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %145, i32 0, i32 0
  %146 = load i32, ptr %field_tag159, align 8
  %147 = load ptr, ptr %dir.addr, align 8
  %148 = load i16, ptr %wc, align 2
  %conv160 = zext i16 %148 to i32
  %call161 = call i32 @TIFFWriteDoubleArray(ptr noundef %142, i32 noundef %144, i32 noundef %146, ptr noundef %147, i32 noundef %conv160, ptr noundef %dv)
  %tobool162 = icmp ne i32 %call161, 0
  br i1 %tobool162, label %if.end164, label %if.then163

if.then163:                                       ; preds = %if.else155
  store i32 0, ptr %retval, align 4
  br label %return

if.end164:                                        ; preds = %if.else155
  br label %if.end165

if.end165:                                        ; preds = %if.end164, %if.end154
  br label %sw.epilog

sw.bb166:                                         ; preds = %entry
  %149 = load ptr, ptr %tif.addr, align 8
  %150 = load ptr, ptr %fip.addr, align 8
  %field_tag167 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %150, i32 0, i32 0
  %151 = load i32, ptr %field_tag167, align 8
  %call168 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %149, i32 noundef %151, ptr noundef %cp)
  %152 = load ptr, ptr %cp, align 8
  %call169 = call i64 @strlen(ptr noundef %152)
  %add = add i64 %call169, 1
  %conv170 = trunc i64 %add to i32
  %153 = load ptr, ptr %dir.addr, align 8
  %tdir_count171 = getelementptr inbounds %struct.TIFFDirEntry, ptr %153, i32 0, i32 2
  store i32 %conv170, ptr %tdir_count171, align 4
  %154 = load ptr, ptr %tif.addr, align 8
  %155 = load ptr, ptr %dir.addr, align 8
  %156 = load ptr, ptr %cp, align 8
  %call172 = call i32 @TIFFWriteByteArray(ptr noundef %154, ptr noundef %155, ptr noundef %156)
  %tobool173 = icmp ne i32 %call172, 0
  br i1 %tobool173, label %if.end175, label %if.then174

if.then174:                                       ; preds = %sw.bb166
  store i32 0, ptr %retval, align 4
  br label %return

if.end175:                                        ; preds = %sw.bb166
  br label %sw.epilog

sw.bb176:                                         ; preds = %entry, %entry
  %157 = load i16, ptr %wc, align 2
  %conv177 = zext i16 %157 to i32
  %cmp178 = icmp sgt i32 %conv177, 1
  br i1 %cmp178, label %if.then180, label %if.else198

if.then180:                                       ; preds = %sw.bb176
  %158 = load i16, ptr %wc, align 2
  %conv182 = zext i16 %158 to i32
  %cmp183 = icmp eq i32 %conv182, 65535
  br i1 %cmp183, label %if.then185, label %if.else190

if.then185:                                       ; preds = %if.then180
  %159 = load ptr, ptr %tif.addr, align 8
  %160 = load ptr, ptr %fip.addr, align 8
  %field_tag186 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %160, i32 0, i32 0
  %161 = load i32, ptr %field_tag186, align 8
  %call187 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %159, i32 noundef %161, ptr noundef %wc, ptr noundef %cp181)
  %162 = load i16, ptr %wc, align 2
  %conv188 = zext i16 %162 to i32
  %163 = load ptr, ptr %dir.addr, align 8
  %tdir_count189 = getelementptr inbounds %struct.TIFFDirEntry, ptr %163, i32 0, i32 2
  store i32 %conv188, ptr %tdir_count189, align 4
  br label %if.end193

if.else190:                                       ; preds = %if.then180
  %164 = load ptr, ptr %tif.addr, align 8
  %165 = load ptr, ptr %fip.addr, align 8
  %field_tag191 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %165, i32 0, i32 0
  %166 = load i32, ptr %field_tag191, align 8
  %call192 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %164, i32 noundef %166, ptr noundef %cp181)
  br label %if.end193

if.end193:                                        ; preds = %if.else190, %if.then185
  %167 = load ptr, ptr %tif.addr, align 8
  %168 = load ptr, ptr %dir.addr, align 8
  %169 = load ptr, ptr %cp181, align 8
  %call194 = call i32 @TIFFWriteByteArray(ptr noundef %167, ptr noundef %168, ptr noundef %169)
  %tobool195 = icmp ne i32 %call194, 0
  br i1 %tobool195, label %if.end197, label %if.then196

if.then196:                                       ; preds = %if.end193
  store i32 0, ptr %retval, align 4
  br label %return

if.end197:                                        ; preds = %if.end193
  br label %if.end205

if.else198:                                       ; preds = %sw.bb176
  %170 = load ptr, ptr %tif.addr, align 8
  %171 = load ptr, ptr %fip.addr, align 8
  %field_tag199 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %171, i32 0, i32 0
  %172 = load i32, ptr %field_tag199, align 8
  %call200 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %170, i32 noundef %172, ptr noundef %cv)
  %173 = load ptr, ptr %tif.addr, align 8
  %174 = load ptr, ptr %dir.addr, align 8
  %call201 = call i32 @TIFFWriteByteArray(ptr noundef %173, ptr noundef %174, ptr noundef %cv)
  %tobool202 = icmp ne i32 %call201, 0
  br i1 %tobool202, label %if.end204, label %if.then203

if.then203:                                       ; preds = %if.else198
  store i32 0, ptr %retval, align 4
  br label %return

if.end204:                                        ; preds = %if.else198
  br label %if.end205

if.end205:                                        ; preds = %if.end204, %if.end197
  br label %sw.epilog

sw.bb206:                                         ; preds = %entry
  %175 = load i16, ptr %wc, align 2
  %conv208 = zext i16 %175 to i32
  %cmp209 = icmp eq i32 %conv208, 65535
  br i1 %cmp209, label %if.then211, label %if.else216

if.then211:                                       ; preds = %sw.bb206
  %176 = load ptr, ptr %tif.addr, align 8
  %177 = load ptr, ptr %fip.addr, align 8
  %field_tag212 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %177, i32 0, i32 0
  %178 = load i32, ptr %field_tag212, align 8
  %call213 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %176, i32 noundef %178, ptr noundef %wc, ptr noundef %cp207)
  %179 = load i16, ptr %wc, align 2
  %conv214 = zext i16 %179 to i32
  %180 = load ptr, ptr %dir.addr, align 8
  %tdir_count215 = getelementptr inbounds %struct.TIFFDirEntry, ptr %180, i32 0, i32 2
  store i32 %conv214, ptr %tdir_count215, align 4
  br label %if.end228

if.else216:                                       ; preds = %sw.bb206
  %181 = load i16, ptr %wc, align 2
  %conv217 = zext i16 %181 to i32
  %cmp218 = icmp eq i32 %conv217, 65533
  br i1 %cmp218, label %if.then220, label %if.else224

if.then220:                                       ; preds = %if.else216
  %182 = load ptr, ptr %tif.addr, align 8
  %183 = load ptr, ptr %fip.addr, align 8
  %field_tag221 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %183, i32 0, i32 0
  %184 = load i32, ptr %field_tag221, align 8
  %call222 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %182, i32 noundef %184, ptr noundef %wc2, ptr noundef %cp207)
  %185 = load i32, ptr %wc2, align 4
  %186 = load ptr, ptr %dir.addr, align 8
  %tdir_count223 = getelementptr inbounds %struct.TIFFDirEntry, ptr %186, i32 0, i32 2
  store i32 %185, ptr %tdir_count223, align 4
  br label %if.end227

if.else224:                                       ; preds = %if.else216
  %187 = load ptr, ptr %tif.addr, align 8
  %188 = load ptr, ptr %fip.addr, align 8
  %field_tag225 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %188, i32 0, i32 0
  %189 = load i32, ptr %field_tag225, align 8
  %call226 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %187, i32 noundef %189, ptr noundef %cp207)
  br label %if.end227

if.end227:                                        ; preds = %if.else224, %if.then220
  br label %if.end228

if.end228:                                        ; preds = %if.end227, %if.then211
  %190 = load ptr, ptr %tif.addr, align 8
  %191 = load ptr, ptr %dir.addr, align 8
  %192 = load ptr, ptr %cp207, align 8
  %call229 = call i32 @TIFFWriteByteArray(ptr noundef %190, ptr noundef %191, ptr noundef %192)
  %tobool230 = icmp ne i32 %call229, 0
  br i1 %tobool230, label %if.end232, label %if.then231

if.then231:                                       ; preds = %if.end228
  store i32 0, ptr %retval, align 4
  br label %return

if.end232:                                        ; preds = %if.end228
  br label %sw.epilog

sw.bb233:                                         ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb233, %if.end232, %if.end205, %if.end175, %if.end165, %if.end132, %if.end97, %if.end64, %if.end37
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then231, %if.then203, %if.then196, %if.then174, %if.then163, %if.then153, %if.then130, %if.then119, %if.then95, %if.then85, %if.then58, %if.then17
  %193 = load i32, ptr %retval, align 4
  ret i32 %193
}

declare void @TIFFSwabArrayOfShort(ptr noundef, i64 noundef) #1

declare void @TIFFSwabArrayOfLong(ptr noundef, i64 noundef) #1

declare void @TIFFSwabShort(ptr noundef) #1

declare void @TIFFSwabLong(ptr noundef) #1

declare void @TIFFFreeDirectory(ptr noundef) #1

declare i32 @TIFFDefaultDirectory(ptr noundef) #1

declare i32 @TIFFGetField(ptr noundef, i32 noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @TIFFWriteShortArray(ptr noundef %tif, i32 noundef %type, i32 noundef %tag, ptr noundef %dir, i32 noundef %n, ptr noundef %v) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %tag.addr = alloca i32, align 4
  %dir.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  store i32 %tag, ptr %tag.addr, align 4
  store ptr %dir, ptr %dir.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr %v, ptr %v.addr, align 8
  %0 = load i32, ptr %tag.addr, align 4
  %conv = trunc i32 %0 to i16
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i32 0, i32 0
  store i16 %conv, ptr %tdir_tag, align 4
  %2 = load i32, ptr %type.addr, align 4
  %conv1 = trunc i32 %2 to i16
  %3 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %3, i32 0, i32 1
  store i16 %conv1, ptr %tdir_type, align 2
  %4 = load i32, ptr %n.addr, align 4
  %5 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i32 0, i32 2
  store i32 %4, ptr %tdir_count, align 4
  %6 = load i32, ptr %n.addr, align 4
  %cmp = icmp ule i32 %6, 2
  br i1 %cmp, label %if.then, label %if.else31

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
  %conv8 = trunc i64 %shl to i32
  %11 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %11, i32 0, i32 3
  store i32 %conv8, ptr %tdir_offset, align 4
  %12 = load i32, ptr %n.addr, align 4
  %cmp9 = icmp eq i32 %12, 2
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then6
  %13 = load ptr, ptr %v.addr, align 8
  %arrayidx12 = getelementptr inbounds i16, ptr %13, i64 1
  %14 = load i16, ptr %arrayidx12, align 2
  %conv13 = zext i16 %14 to i32
  %and = and i32 %conv13, 65535
  %15 = load ptr, ptr %dir.addr, align 8
  %tdir_offset14 = getelementptr inbounds %struct.TIFFDirEntry, ptr %15, i32 0, i32 3
  %16 = load i32, ptr %tdir_offset14, align 4
  %or = or i32 %16, %and
  store i32 %or, ptr %tdir_offset14, align 4
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then6
  br label %if.end30

if.else:                                          ; preds = %if.then
  %17 = load ptr, ptr %v.addr, align 8
  %arrayidx15 = getelementptr inbounds i16, ptr %17, i64 0
  %18 = load i16, ptr %arrayidx15, align 2
  %conv16 = zext i16 %18 to i32
  %and17 = and i32 %conv16, 65535
  %19 = load ptr, ptr %dir.addr, align 8
  %tdir_offset18 = getelementptr inbounds %struct.TIFFDirEntry, ptr %19, i32 0, i32 3
  store i32 %and17, ptr %tdir_offset18, align 4
  %20 = load i32, ptr %n.addr, align 4
  %cmp19 = icmp eq i32 %20, 2
  br i1 %cmp19, label %if.then21, label %if.end29

if.then21:                                        ; preds = %if.else
  %21 = load ptr, ptr %v.addr, align 8
  %arrayidx22 = getelementptr inbounds i16, ptr %21, i64 1
  %22 = load i16, ptr %arrayidx22, align 2
  %conv23 = zext i16 %22 to i64
  %shl24 = shl i64 %conv23, 16
  %23 = load ptr, ptr %dir.addr, align 8
  %tdir_offset25 = getelementptr inbounds %struct.TIFFDirEntry, ptr %23, i32 0, i32 3
  %24 = load i32, ptr %tdir_offset25, align 4
  %conv26 = zext i32 %24 to i64
  %or27 = or i64 %conv26, %shl24
  %conv28 = trunc i64 %or27 to i32
  store i32 %conv28, ptr %tdir_offset25, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then21, %if.else
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.else31:                                        ; preds = %entry
  %25 = load ptr, ptr %tif.addr, align 8
  %26 = load ptr, ptr %dir.addr, align 8
  %27 = load ptr, ptr %v.addr, align 8
  %call = call i32 @TIFFWriteData(ptr noundef %25, ptr noundef %26, ptr noundef %27)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else31, %if.end30
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @TIFFWriteFloatArray(ptr noundef %tif, i32 noundef %type, i32 noundef %tag, ptr noundef %dir, i32 noundef %n, ptr noundef %v) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %tag.addr = alloca i32, align 4
  %dir.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  store i32 %tag, ptr %tag.addr, align 4
  store ptr %dir, ptr %dir.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr %v, ptr %v.addr, align 8
  %0 = load i32, ptr %tag.addr, align 4
  %conv = trunc i32 %0 to i16
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i32 0, i32 0
  store i16 %conv, ptr %tdir_tag, align 4
  %2 = load i32, ptr %type.addr, align 4
  %conv1 = trunc i32 %2 to i16
  %3 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %3, i32 0, i32 1
  store i16 %conv1, ptr %tdir_type, align 2
  %4 = load i32, ptr %n.addr, align 4
  %5 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i32 0, i32 2
  store i32 %4, ptr %tdir_count, align 4
  %6 = load i32, ptr %n.addr, align 4
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %v.addr, align 8
  %arrayidx = getelementptr inbounds float, ptr %7, i64 0
  %8 = load i32, ptr %arrayidx, align 4
  %9 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %9, i32 0, i32 3
  store i32 %8, ptr %tdir_offset, align 4
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @TIFFWriteDoubleArray(ptr noundef %tif, i32 noundef %type, i32 noundef %tag, ptr noundef %dir, i32 noundef %n, ptr noundef %v) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %tag.addr = alloca i32, align 4
  %dir.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  store i32 %tag, ptr %tag.addr, align 4
  store ptr %dir, ptr %dir.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr %v, ptr %v.addr, align 8
  %0 = load i32, ptr %tag.addr, align 4
  %conv = trunc i32 %0 to i16
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i32 0, i32 0
  store i16 %conv, ptr %tdir_tag, align 4
  %2 = load i32, ptr %type.addr, align 4
  %conv1 = trunc i32 %2 to i16
  %3 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %3, i32 0, i32 1
  store i16 %conv1, ptr %tdir_type, align 2
  %4 = load i32, ptr %n.addr, align 4
  %5 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i32 0, i32 2
  store i32 %4, ptr %tdir_count, align 4
  %6 = load ptr, ptr %tif.addr, align 8
  %7 = load ptr, ptr %dir.addr, align 8
  %8 = load ptr, ptr %v.addr, align 8
  %call = call i32 @TIFFWriteData(ptr noundef %6, ptr noundef %7, ptr noundef %8)
  ret i32 %call
}

declare i64 @strlen(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %1 = load i32, ptr %tdir_count, align 4
  %cmp = icmp ugt i32 %1, 4
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
  %8 = load i32, ptr %tdir_count2, align 4
  call void @_TIFFmemcpy(ptr noundef %tdir_offset, ptr noundef %6, i32 noundef %8)
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then1
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @TIFFWriteData(ptr noundef %tif, ptr noundef %dir, ptr noundef %cp) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %cc = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %tif_flags, align 8
  %and = and i32 %1, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %2, i32 0, i32 1
  %3 = load i16, ptr %tdir_type, align 2
  %conv = zext i16 %3 to i32
  switch i32 %conv, label %sw.epilog [
    i32 3, label %sw.bb
    i32 8, label %sw.bb
    i32 4, label %sw.bb2
    i32 9, label %sw.bb2
    i32 11, label %sw.bb2
    i32 5, label %sw.bb5
    i32 10, label %sw.bb5
    i32 12, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.then, %if.then
  %4 = load ptr, ptr %cp.addr, align 8
  %5 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %tdir_count, align 4
  %conv1 = zext i32 %6 to i64
  call void @TIFFSwabArrayOfShort(ptr noundef %4, i64 noundef %conv1)
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.then, %if.then, %if.then
  %7 = load ptr, ptr %cp.addr, align 8
  %8 = load ptr, ptr %dir.addr, align 8
  %tdir_count3 = getelementptr inbounds %struct.TIFFDirEntry, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %tdir_count3, align 4
  %conv4 = zext i32 %9 to i64
  call void @TIFFSwabArrayOfLong(ptr noundef %7, i64 noundef %conv4)
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.then, %if.then
  %10 = load ptr, ptr %cp.addr, align 8
  %11 = load ptr, ptr %dir.addr, align 8
  %tdir_count6 = getelementptr inbounds %struct.TIFFDirEntry, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %tdir_count6, align 4
  %mul = mul i32 2, %12
  %conv7 = zext i32 %mul to i64
  call void @TIFFSwabArrayOfLong(ptr noundef %10, i64 noundef %conv7)
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.then
  %13 = load ptr, ptr %cp.addr, align 8
  %14 = load ptr, ptr %dir.addr, align 8
  %tdir_count9 = getelementptr inbounds %struct.TIFFDirEntry, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %tdir_count9, align 4
  %conv10 = zext i32 %15 to i64
  call void @TIFFSwabArrayOfDouble(ptr noundef %13, i64 noundef %conv10)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb8, %sw.bb5, %sw.bb2, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_dataoff = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 15
  %17 = load i32, ptr %tif_dataoff, align 8
  %18 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %18, i32 0, i32 3
  store i32 %17, ptr %tdir_offset, align 4
  %19 = load ptr, ptr %dir.addr, align 8
  %tdir_count11 = getelementptr inbounds %struct.TIFFDirEntry, ptr %19, i32 0, i32 2
  %20 = load i32, ptr %tdir_count11, align 4
  %21 = load ptr, ptr %dir.addr, align 8
  %tdir_type12 = getelementptr inbounds %struct.TIFFDirEntry, ptr %21, i32 0, i32 1
  %22 = load i16, ptr %tdir_type12, align 2
  %idxprom = zext i16 %22 to i64
  %arrayidx = getelementptr inbounds [0 x i32], ptr @tiffDataWidth, i64 0, i64 %idxprom
  %23 = load i32, ptr %arrayidx, align 4
  %mul13 = mul i32 %20, %23
  store i32 %mul13, ptr %cc, align 4
  %24 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %24, i32 0, i32 51
  %25 = load ptr, ptr %tif_seekproc, align 8
  %26 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %26, i32 0, i32 48
  %27 = load ptr, ptr %tif_clientdata, align 8
  %28 = load ptr, ptr %dir.addr, align 8
  %tdir_offset14 = getelementptr inbounds %struct.TIFFDirEntry, ptr %28, i32 0, i32 3
  %29 = load i32, ptr %tdir_offset14, align 4
  %call = call i32 %25(ptr noundef %27, i32 noundef %29, i32 noundef 0)
  %30 = load ptr, ptr %dir.addr, align 8
  %tdir_offset15 = getelementptr inbounds %struct.TIFFDirEntry, ptr %30, i32 0, i32 3
  %31 = load i32, ptr %tdir_offset15, align 4
  %cmp = icmp eq i32 %call, %31
  br i1 %cmp, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.end
  %32 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc = getelementptr inbounds %struct.tiff, ptr %32, i32 0, i32 50
  %33 = load ptr, ptr %tif_writeproc, align 8
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata17 = getelementptr inbounds %struct.tiff, ptr %34, i32 0, i32 48
  %35 = load ptr, ptr %tif_clientdata17, align 8
  %36 = load ptr, ptr %cp.addr, align 8
  %37 = load i32, ptr %cc, align 4
  %call18 = call i32 %33(ptr noundef %35, ptr noundef %36, i32 noundef %37)
  %38 = load i32, ptr %cc, align 4
  %cmp19 = icmp eq i32 %call18, %38
  br i1 %cmp19, label %if.then21, label %if.end25

if.then21:                                        ; preds = %land.lhs.true
  %39 = load i32, ptr %cc, align 4
  %add = add nsw i32 %39, 1
  %and22 = and i32 %add, -2
  %40 = load ptr, ptr %tif.addr, align 8
  %tif_dataoff23 = getelementptr inbounds %struct.tiff, ptr %40, i32 0, i32 15
  %41 = load i32, ptr %tif_dataoff23, align 8
  %add24 = add nsw i32 %41, %and22
  store i32 %add24, ptr %tif_dataoff23, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %land.lhs.true, %if.end
  %42 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %tif_name, align 8
  %44 = load ptr, ptr %tif.addr, align 8
  %45 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %45, i32 0, i32 0
  %46 = load i16, ptr %tdir_tag, align 4
  %conv26 = zext i16 %46 to i32
  %call27 = call ptr @_TIFFFieldWithTag(ptr noundef %44, i32 noundef %conv26)
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call27, i32 0, i32 7
  %47 = load ptr, ptr %field_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %43, ptr noundef @.str.6, ptr noundef %47)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end25, %if.then21
  %48 = load i32, ptr %retval, align 4
  ret i32 %48
}

declare void @TIFFSwabArrayOfDouble(ptr noundef, i64 noundef) #1

declare ptr @_TIFFFieldWithTag(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @TIFFWriteAnyArray(ptr noundef %tif, i32 noundef %type, i32 noundef %tag, ptr noundef %dir, i32 noundef %n, ptr noundef %v) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %tag.addr = alloca i32, align 4
  %dir.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %buf = alloca [80 x i8], align 1
  %w = alloca ptr, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %bp = alloca ptr, align 8
  %bp18 = alloca ptr, align 8
  %bp41 = alloca ptr, align 8
  %bp59 = alloca ptr, align 8
  %bp77 = alloca ptr, align 8
  %bp95 = alloca ptr, align 8
  %bp113 = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  store i32 %tag, ptr %tag.addr, align 4
  store ptr %dir, ptr %dir.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr %v, ptr %v.addr, align 8
  %arraydecay = getelementptr inbounds [80 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %w, align 8
  store i32 0, ptr %status, align 4
  %0 = load i32, ptr %n.addr, align 4
  %1 = load i32, ptr %type.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [0 x i32], ptr @tiffDataWidth, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %0, %2
  %conv = zext i32 %mul to i64
  %cmp = icmp ugt i64 %conv, 80
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %n.addr, align 4
  %4 = load i32, ptr %type.addr, align 4
  %idxprom2 = zext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [0 x i32], ptr @tiffDataWidth, i64 0, i64 %idxprom2
  %5 = load i32, ptr %arrayidx3, align 4
  %mul4 = mul i32 %3, %5
  %call = call ptr @_TIFFmalloc(i32 noundef %mul4)
  store ptr %call, ptr %w, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %type.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 6, label %sw.bb17
    i32 3, label %sw.bb40
    i32 8, label %sw.bb58
    i32 4, label %sw.bb76
    i32 9, label %sw.bb94
    i32 11, label %sw.bb112
    i32 12, label %sw.bb130
  ]

sw.bb:                                            ; preds = %if.end
  %7 = load ptr, ptr %w, align 8
  store ptr %7, ptr %bp, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %n.addr, align 4
  %cmp5 = icmp slt i32 %8, %9
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %v.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds double, ptr %10, i64 %idxprom7
  %12 = load double, ptr %arrayidx8, align 8
  %conv9 = fptoui double %12 to i8
  %13 = load ptr, ptr %bp, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %13, i64 %idxprom10
  store i8 %conv9, ptr %arrayidx11, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %16 = load i32, ptr %tag.addr, align 4
  %conv12 = trunc i32 %16 to i16
  %17 = load ptr, ptr %dir.addr, align 8
  %tdir_tag = getelementptr inbounds %struct.TIFFDirEntry, ptr %17, i32 0, i32 0
  store i16 %conv12, ptr %tdir_tag, align 4
  %18 = load i32, ptr %type.addr, align 4
  %conv13 = trunc i32 %18 to i16
  %19 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %19, i32 0, i32 1
  store i16 %conv13, ptr %tdir_type, align 2
  %20 = load i32, ptr %n.addr, align 4
  %21 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %21, i32 0, i32 2
  store i32 %20, ptr %tdir_count, align 4
  %22 = load ptr, ptr %tif.addr, align 8
  %23 = load ptr, ptr %dir.addr, align 8
  %24 = load ptr, ptr %bp, align 8
  %call14 = call i32 @TIFFWriteByteArray(ptr noundef %22, ptr noundef %23, ptr noundef %24)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.end16, label %if.then15

if.then15:                                        ; preds = %for.end
  br label %out

if.end16:                                         ; preds = %for.end
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  %25 = load ptr, ptr %w, align 8
  store ptr %25, ptr %bp18, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc28, %sw.bb17
  %26 = load i32, ptr %i, align 4
  %27 = load i32, ptr %n.addr, align 4
  %cmp20 = icmp slt i32 %26, %27
  br i1 %cmp20, label %for.body22, label %for.end30

for.body22:                                       ; preds = %for.cond19
  %28 = load ptr, ptr %v.addr, align 8
  %29 = load i32, ptr %i, align 4
  %idxprom23 = sext i32 %29 to i64
  %arrayidx24 = getelementptr inbounds double, ptr %28, i64 %idxprom23
  %30 = load double, ptr %arrayidx24, align 8
  %conv25 = fptosi double %30 to i8
  %31 = load ptr, ptr %bp18, align 8
  %32 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %32 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %31, i64 %idxprom26
  store i8 %conv25, ptr %arrayidx27, align 1
  br label %for.inc28

for.inc28:                                        ; preds = %for.body22
  %33 = load i32, ptr %i, align 4
  %inc29 = add nsw i32 %33, 1
  store i32 %inc29, ptr %i, align 4
  br label %for.cond19, !llvm.loop !17

for.end30:                                        ; preds = %for.cond19
  %34 = load i32, ptr %tag.addr, align 4
  %conv31 = trunc i32 %34 to i16
  %35 = load ptr, ptr %dir.addr, align 8
  %tdir_tag32 = getelementptr inbounds %struct.TIFFDirEntry, ptr %35, i32 0, i32 0
  store i16 %conv31, ptr %tdir_tag32, align 4
  %36 = load i32, ptr %type.addr, align 4
  %conv33 = trunc i32 %36 to i16
  %37 = load ptr, ptr %dir.addr, align 8
  %tdir_type34 = getelementptr inbounds %struct.TIFFDirEntry, ptr %37, i32 0, i32 1
  store i16 %conv33, ptr %tdir_type34, align 2
  %38 = load i32, ptr %n.addr, align 4
  %39 = load ptr, ptr %dir.addr, align 8
  %tdir_count35 = getelementptr inbounds %struct.TIFFDirEntry, ptr %39, i32 0, i32 2
  store i32 %38, ptr %tdir_count35, align 4
  %40 = load ptr, ptr %tif.addr, align 8
  %41 = load ptr, ptr %dir.addr, align 8
  %42 = load ptr, ptr %bp18, align 8
  %call36 = call i32 @TIFFWriteByteArray(ptr noundef %40, ptr noundef %41, ptr noundef %42)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end39, label %if.then38

if.then38:                                        ; preds = %for.end30
  br label %out

if.end39:                                         ; preds = %for.end30
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end
  %43 = load ptr, ptr %w, align 8
  store ptr %43, ptr %bp41, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc51, %sw.bb40
  %44 = load i32, ptr %i, align 4
  %45 = load i32, ptr %n.addr, align 4
  %cmp43 = icmp slt i32 %44, %45
  br i1 %cmp43, label %for.body45, label %for.end53

for.body45:                                       ; preds = %for.cond42
  %46 = load ptr, ptr %v.addr, align 8
  %47 = load i32, ptr %i, align 4
  %idxprom46 = sext i32 %47 to i64
  %arrayidx47 = getelementptr inbounds double, ptr %46, i64 %idxprom46
  %48 = load double, ptr %arrayidx47, align 8
  %conv48 = fptoui double %48 to i16
  %49 = load ptr, ptr %bp41, align 8
  %50 = load i32, ptr %i, align 4
  %idxprom49 = sext i32 %50 to i64
  %arrayidx50 = getelementptr inbounds i16, ptr %49, i64 %idxprom49
  store i16 %conv48, ptr %arrayidx50, align 2
  br label %for.inc51

for.inc51:                                        ; preds = %for.body45
  %51 = load i32, ptr %i, align 4
  %inc52 = add nsw i32 %51, 1
  store i32 %inc52, ptr %i, align 4
  br label %for.cond42, !llvm.loop !18

for.end53:                                        ; preds = %for.cond42
  %52 = load ptr, ptr %tif.addr, align 8
  %53 = load i32, ptr %type.addr, align 4
  %54 = load i32, ptr %tag.addr, align 4
  %55 = load ptr, ptr %dir.addr, align 8
  %56 = load i32, ptr %n.addr, align 4
  %57 = load ptr, ptr %bp41, align 8
  %call54 = call i32 @TIFFWriteShortArray(ptr noundef %52, i32 noundef %53, i32 noundef %54, ptr noundef %55, i32 noundef %56, ptr noundef %57)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.end57, label %if.then56

if.then56:                                        ; preds = %for.end53
  br label %out

if.end57:                                         ; preds = %for.end53
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end
  %58 = load ptr, ptr %w, align 8
  store ptr %58, ptr %bp59, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc69, %sw.bb58
  %59 = load i32, ptr %i, align 4
  %60 = load i32, ptr %n.addr, align 4
  %cmp61 = icmp slt i32 %59, %60
  br i1 %cmp61, label %for.body63, label %for.end71

for.body63:                                       ; preds = %for.cond60
  %61 = load ptr, ptr %v.addr, align 8
  %62 = load i32, ptr %i, align 4
  %idxprom64 = sext i32 %62 to i64
  %arrayidx65 = getelementptr inbounds double, ptr %61, i64 %idxprom64
  %63 = load double, ptr %arrayidx65, align 8
  %conv66 = fptosi double %63 to i16
  %64 = load ptr, ptr %bp59, align 8
  %65 = load i32, ptr %i, align 4
  %idxprom67 = sext i32 %65 to i64
  %arrayidx68 = getelementptr inbounds i16, ptr %64, i64 %idxprom67
  store i16 %conv66, ptr %arrayidx68, align 2
  br label %for.inc69

for.inc69:                                        ; preds = %for.body63
  %66 = load i32, ptr %i, align 4
  %inc70 = add nsw i32 %66, 1
  store i32 %inc70, ptr %i, align 4
  br label %for.cond60, !llvm.loop !19

for.end71:                                        ; preds = %for.cond60
  %67 = load ptr, ptr %tif.addr, align 8
  %68 = load i32, ptr %type.addr, align 4
  %69 = load i32, ptr %tag.addr, align 4
  %70 = load ptr, ptr %dir.addr, align 8
  %71 = load i32, ptr %n.addr, align 4
  %72 = load ptr, ptr %bp59, align 8
  %call72 = call i32 @TIFFWriteShortArray(ptr noundef %67, i32 noundef %68, i32 noundef %69, ptr noundef %70, i32 noundef %71, ptr noundef %72)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.end75, label %if.then74

if.then74:                                        ; preds = %for.end71
  br label %out

if.end75:                                         ; preds = %for.end71
  br label %sw.epilog

sw.bb76:                                          ; preds = %if.end
  %73 = load ptr, ptr %w, align 8
  store ptr %73, ptr %bp77, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc87, %sw.bb76
  %74 = load i32, ptr %i, align 4
  %75 = load i32, ptr %n.addr, align 4
  %cmp79 = icmp slt i32 %74, %75
  br i1 %cmp79, label %for.body81, label %for.end89

for.body81:                                       ; preds = %for.cond78
  %76 = load ptr, ptr %v.addr, align 8
  %77 = load i32, ptr %i, align 4
  %idxprom82 = sext i32 %77 to i64
  %arrayidx83 = getelementptr inbounds double, ptr %76, i64 %idxprom82
  %78 = load double, ptr %arrayidx83, align 8
  %conv84 = fptoui double %78 to i32
  %79 = load ptr, ptr %bp77, align 8
  %80 = load i32, ptr %i, align 4
  %idxprom85 = sext i32 %80 to i64
  %arrayidx86 = getelementptr inbounds i32, ptr %79, i64 %idxprom85
  store i32 %conv84, ptr %arrayidx86, align 4
  br label %for.inc87

for.inc87:                                        ; preds = %for.body81
  %81 = load i32, ptr %i, align 4
  %inc88 = add nsw i32 %81, 1
  store i32 %inc88, ptr %i, align 4
  br label %for.cond78, !llvm.loop !20

for.end89:                                        ; preds = %for.cond78
  %82 = load ptr, ptr %tif.addr, align 8
  %83 = load i32, ptr %type.addr, align 4
  %84 = load i32, ptr %tag.addr, align 4
  %85 = load ptr, ptr %dir.addr, align 8
  %86 = load i32, ptr %n.addr, align 4
  %87 = load ptr, ptr %bp77, align 8
  %call90 = call i32 @TIFFWriteLongArray(ptr noundef %82, i32 noundef %83, i32 noundef %84, ptr noundef %85, i32 noundef %86, ptr noundef %87)
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.end93, label %if.then92

if.then92:                                        ; preds = %for.end89
  br label %out

if.end93:                                         ; preds = %for.end89
  br label %sw.epilog

sw.bb94:                                          ; preds = %if.end
  %88 = load ptr, ptr %w, align 8
  store ptr %88, ptr %bp95, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc105, %sw.bb94
  %89 = load i32, ptr %i, align 4
  %90 = load i32, ptr %n.addr, align 4
  %cmp97 = icmp slt i32 %89, %90
  br i1 %cmp97, label %for.body99, label %for.end107

for.body99:                                       ; preds = %for.cond96
  %91 = load ptr, ptr %v.addr, align 8
  %92 = load i32, ptr %i, align 4
  %idxprom100 = sext i32 %92 to i64
  %arrayidx101 = getelementptr inbounds double, ptr %91, i64 %idxprom100
  %93 = load double, ptr %arrayidx101, align 8
  %conv102 = fptosi double %93 to i32
  %94 = load ptr, ptr %bp95, align 8
  %95 = load i32, ptr %i, align 4
  %idxprom103 = sext i32 %95 to i64
  %arrayidx104 = getelementptr inbounds i32, ptr %94, i64 %idxprom103
  store i32 %conv102, ptr %arrayidx104, align 4
  br label %for.inc105

for.inc105:                                       ; preds = %for.body99
  %96 = load i32, ptr %i, align 4
  %inc106 = add nsw i32 %96, 1
  store i32 %inc106, ptr %i, align 4
  br label %for.cond96, !llvm.loop !21

for.end107:                                       ; preds = %for.cond96
  %97 = load ptr, ptr %tif.addr, align 8
  %98 = load i32, ptr %type.addr, align 4
  %99 = load i32, ptr %tag.addr, align 4
  %100 = load ptr, ptr %dir.addr, align 8
  %101 = load i32, ptr %n.addr, align 4
  %102 = load ptr, ptr %bp95, align 8
  %call108 = call i32 @TIFFWriteLongArray(ptr noundef %97, i32 noundef %98, i32 noundef %99, ptr noundef %100, i32 noundef %101, ptr noundef %102)
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %if.end111, label %if.then110

if.then110:                                       ; preds = %for.end107
  br label %out

if.end111:                                        ; preds = %for.end107
  br label %sw.epilog

sw.bb112:                                         ; preds = %if.end
  %103 = load ptr, ptr %w, align 8
  store ptr %103, ptr %bp113, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond114

for.cond114:                                      ; preds = %for.inc123, %sw.bb112
  %104 = load i32, ptr %i, align 4
  %105 = load i32, ptr %n.addr, align 4
  %cmp115 = icmp slt i32 %104, %105
  br i1 %cmp115, label %for.body117, label %for.end125

for.body117:                                      ; preds = %for.cond114
  %106 = load ptr, ptr %v.addr, align 8
  %107 = load i32, ptr %i, align 4
  %idxprom118 = sext i32 %107 to i64
  %arrayidx119 = getelementptr inbounds double, ptr %106, i64 %idxprom118
  %108 = load double, ptr %arrayidx119, align 8
  %conv120 = fptrunc double %108 to float
  %109 = load ptr, ptr %bp113, align 8
  %110 = load i32, ptr %i, align 4
  %idxprom121 = sext i32 %110 to i64
  %arrayidx122 = getelementptr inbounds float, ptr %109, i64 %idxprom121
  store float %conv120, ptr %arrayidx122, align 4
  br label %for.inc123

for.inc123:                                       ; preds = %for.body117
  %111 = load i32, ptr %i, align 4
  %inc124 = add nsw i32 %111, 1
  store i32 %inc124, ptr %i, align 4
  br label %for.cond114, !llvm.loop !22

for.end125:                                       ; preds = %for.cond114
  %112 = load ptr, ptr %tif.addr, align 8
  %113 = load i32, ptr %type.addr, align 4
  %114 = load i32, ptr %tag.addr, align 4
  %115 = load ptr, ptr %dir.addr, align 8
  %116 = load i32, ptr %n.addr, align 4
  %117 = load ptr, ptr %bp113, align 8
  %call126 = call i32 @TIFFWriteFloatArray(ptr noundef %112, i32 noundef %113, i32 noundef %114, ptr noundef %115, i32 noundef %116, ptr noundef %117)
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %if.end129, label %if.then128

if.then128:                                       ; preds = %for.end125
  br label %out

if.end129:                                        ; preds = %for.end125
  br label %sw.epilog

sw.bb130:                                         ; preds = %if.end
  %118 = load ptr, ptr %tif.addr, align 8
  %119 = load i32, ptr %type.addr, align 4
  %120 = load i32, ptr %tag.addr, align 4
  %121 = load ptr, ptr %dir.addr, align 8
  %122 = load i32, ptr %n.addr, align 4
  %123 = load ptr, ptr %v.addr, align 8
  %call131 = call i32 @TIFFWriteDoubleArray(ptr noundef %118, i32 noundef %119, i32 noundef %120, ptr noundef %121, i32 noundef %122, ptr noundef %123)
  store i32 %call131, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end
  br label %out

sw.epilog:                                        ; preds = %if.end129, %if.end111, %if.end93, %if.end75, %if.end57, %if.end39, %if.end16
  store i32 1, ptr %status, align 4
  br label %out

out:                                              ; preds = %sw.epilog, %sw.default, %if.then128, %if.then110, %if.then92, %if.then74, %if.then56, %if.then38, %if.then15
  %124 = load ptr, ptr %w, align 8
  %arraydecay132 = getelementptr inbounds [80 x i8], ptr %buf, i64 0, i64 0
  %cmp133 = icmp ne ptr %124, %arraydecay132
  br i1 %cmp133, label %if.then135, label %if.end136

if.then135:                                       ; preds = %out
  %125 = load ptr, ptr %w, align 8
  call void @_TIFFfree(ptr noundef %125)
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %out
  %126 = load i32, ptr %status, align 4
  store i32 %126, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end136, %sw.bb130
  %127 = load i32, ptr %retval, align 4
  ret i32 %127
}

declare void @TIFFWarning(ptr noundef, ptr noundef, ...) #1

declare i32 @_TIFFmemcmp(ptr noundef, ptr noundef, i32 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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
