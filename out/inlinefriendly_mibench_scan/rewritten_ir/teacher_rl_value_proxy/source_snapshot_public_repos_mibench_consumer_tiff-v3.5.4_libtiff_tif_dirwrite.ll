; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_rl_value_proxy/source_snapshot_public_repos_mibench_consumer_tiff-v3.5.4_libtiff_tif_dirwrite.prepared.ll'
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
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 2
  %0 = load i32, ptr %tif_mode, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 3
  %2 = load i64, ptr %tif_flags, align 8
  %and = and i64 %2, 4096
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end7, label %if.then1

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_flags2 = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 3
  %4 = load i64, ptr %tif_flags2, align 8
  %and3 = and i64 %4, -4097
  store i64 %and3, ptr %tif_flags2, align 8
  %tif_postencode = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 25
  %5 = load ptr, ptr %tif_postencode, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %call = call i32 %5(ptr noundef %6) #2
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then1
  %7 = load ptr, ptr %tif.addr, align 8
  %8 = load ptr, ptr %7, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %8, ptr noundef nonnull @.str) #2
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.then1, %if.end
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_close = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 32
  %10 = load ptr, ptr %tif_close, align 8
  call void %10(ptr noundef %9) #2
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 43
  %11 = load i64, ptr %tif_rawcc, align 8
  %cmp8 = icmp sgt i64 %11, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end7
  %12 = load ptr, ptr %tif.addr, align 8
  %call9 = call i32 @TIFFFlushData1(ptr noundef %12) #2
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %land.lhs.true
  %13 = load ptr, ptr %tif.addr, align 8
  %14 = load ptr, ptr %13, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %14, ptr noundef nonnull @.str.1) #2
  store i32 0, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %land.lhs.true, %if.end7
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_flags14 = getelementptr inbounds %struct.tiff, ptr %15, i64 0, i32 3
  %16 = load i64, ptr %tif_flags14, align 8
  %and15 = and i64 %16, 512
  %tobool16.not = icmp eq i64 %and15, 0
  br i1 %tobool16.not, label %if.end23, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %if.end13
  %17 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %17, i64 0, i32 40
  %18 = load ptr, ptr %tif_rawdata, align 8
  %tobool18.not = icmp eq ptr %18, null
  br i1 %tobool18.not, label %if.end23, label %if.then19

if.then19:                                        ; preds = %land.lhs.true17
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata20 = getelementptr inbounds %struct.tiff, ptr %19, i64 0, i32 40
  %20 = load ptr, ptr %tif_rawdata20, align 8
  call void @_TIFFfree(ptr noundef %20) #2
  %tif_rawdata21 = getelementptr inbounds %struct.tiff, ptr %19, i64 0, i32 40
  store ptr null, ptr %tif_rawdata21, align 8
  %tif_rawcc22 = getelementptr inbounds %struct.tiff, ptr %19, i64 0, i32 43
  store i64 0, ptr %tif_rawcc22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %land.lhs.true17, %if.end13
  %21 = load ptr, ptr %tif.addr, align 8
  %tif_flags24 = getelementptr inbounds %struct.tiff, ptr %21, i64 0, i32 3
  %22 = load i64, ptr %tif_flags24, align 8
  %and25 = and i64 %22, -81
  store i64 %and25, ptr %tif_flags24, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %21, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  store i64 0, ptr %nfields, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end23
  %storemerge = phi i64 [ 0, %if.end23 ], [ %inc, %for.inc ]
  store i64 %storemerge, ptr %b, align 8
  %cmp26 = icmp ult i64 %storemerge, 96
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_dir27 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 6
  %24 = load i64, ptr %b, align 8
  %div1 = lshr i64 %24, 5
  %arrayidx = getelementptr inbounds [3 x i64], ptr %tif_dir27, i64 0, i64 %div1
  %25 = load i64, ptr %arrayidx, align 8
  %and28 = and i64 %24, 31
  %shl = shl i64 1, %and28
  %and29 = and i64 %25, %shl
  %tobool30.not = icmp eq i64 %and29, 0
  br i1 %tobool30.not, label %for.inc, label %if.then31

if.then31:                                        ; preds = %for.body
  %26 = load i64, ptr %b, align 8
  %cmp32 = icmp ult i64 %26, 5
  %conv = select i1 %cmp32, i64 2, i64 1
  %27 = load i64, ptr %nfields, align 8
  %add = add i64 %27, %conv
  store i64 %add, ptr %nfields, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then31
  %28 = load i64, ptr %b, align 8
  %inc = add i64 %28, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %29 = load i64, ptr %nfields, align 8
  %mul = mul i64 %29, 24
  store i64 %mul, ptr %dirsize, align 8
  %call34 = call ptr @_TIFFmalloc(i64 noundef %mul) #2
  store ptr %call34, ptr %data, align 8
  %cmp35 = icmp eq ptr %call34, null
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %for.end
  %30 = load ptr, ptr %tif.addr, align 8
  %31 = load ptr, ptr %30, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %31, ptr noundef nonnull @.str.2) #2
  store i32 0, ptr %retval, align 4
  br label %return

if.end39:                                         ; preds = %for.end
  %32 = load ptr, ptr %tif.addr, align 8
  %tif_diroff = getelementptr inbounds %struct.tiff, ptr %32, i64 0, i32 4
  %33 = load i64, ptr %tif_diroff, align 8
  %cmp40 = icmp eq i64 %33, 0
  br i1 %cmp40, label %land.lhs.true42, label %if.end46

land.lhs.true42:                                  ; preds = %if.end39
  %34 = load ptr, ptr %tif.addr, align 8
  %call43 = call i32 @TIFFLinkDirectory(ptr noundef %34)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %bad, label %if.end46

if.end46:                                         ; preds = %land.lhs.true42, %if.end39
  %35 = load ptr, ptr %tif.addr, align 8
  %tif_diroff47 = getelementptr inbounds %struct.tiff, ptr %35, i64 0, i32 4
  %36 = load i64, ptr %tif_diroff47, align 8
  %add48 = add i64 %36, 2
  %37 = load i64, ptr %dirsize, align 8
  %add49 = add i64 %add48, %37
  %add50 = add i64 %add49, 8
  %38 = load ptr, ptr %tif.addr, align 8
  %tif_dataoff = getelementptr inbounds %struct.tiff, ptr %38, i64 0, i32 15
  store i64 %add50, ptr %tif_dataoff, align 8
  %and52 = and i64 %add49, 1
  %tobool53.not = icmp eq i64 %and52, 0
  br i1 %tobool53.not, label %if.end57, label %if.then54

if.then54:                                        ; preds = %if.end46
  %39 = load ptr, ptr %tif.addr, align 8
  %tif_dataoff55 = getelementptr inbounds %struct.tiff, ptr %39, i64 0, i32 15
  %40 = load i64, ptr %tif_dataoff55, align 8
  %inc56 = add nsw i64 %40, 1
  store i64 %inc56, ptr %tif_dataoff55, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end46
  %41 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %41, i64 0, i32 51
  %42 = load ptr, ptr %tif_seekproc, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %41, i64 0, i32 48
  %43 = load ptr, ptr %tif_clientdata, align 8
  %tif_dataoff58 = getelementptr inbounds %struct.tiff, ptr %41, i64 0, i32 15
  %44 = load i64, ptr %tif_dataoff58, align 8
  %call59 = call i64 %42(ptr noundef %43, i64 noundef %44, i32 noundef 0) #2
  %45 = load ptr, ptr %tif.addr, align 8
  %tif_curdir = getelementptr inbounds %struct.tiff, ptr %45, i64 0, i32 12
  %46 = load i16, ptr %tif_curdir, align 8
  %inc60 = add i16 %46, 1
  store i16 %inc60, ptr %tif_curdir, align 8
  %47 = load ptr, ptr %data, align 8
  store ptr %47, ptr %dir, align 8
  %48 = load ptr, ptr %td, align 8
  call void @_TIFFmemcpy(ptr noundef nonnull %fields, ptr noundef %48, i64 noundef 24) #2
  %49 = load i64, ptr %fields, align 8
  %and64 = and i64 %49, 2147483648
  %tobool65.not = icmp eq i64 %and64, 0
  br i1 %tobool65.not, label %if.end71, label %land.lhs.true66

land.lhs.true66:                                  ; preds = %if.end57
  %50 = load ptr, ptr %td, align 8
  %td_extrasamples = getelementptr inbounds %struct.TIFFDirectory, ptr %50, i64 0, i32 30
  %51 = load i16, ptr %td_extrasamples, align 4
  %tobool67.not = icmp eq i16 %51, 0
  br i1 %tobool67.not, label %if.then68, label %if.end71

if.then68:                                        ; preds = %land.lhs.true66
  %52 = load i64, ptr %fields, align 8
  %and70 = and i64 %52, -2147483649
  store i64 %and70, ptr %fields, align 8
  %53 = load i64, ptr %nfields, align 8
  %dec = add i64 %53, -1
  store i64 %dec, ptr %nfields, align 8
  %54 = load i64, ptr %dirsize, align 8
  %sub = add i64 %54, -24
  store i64 %sub, ptr %dirsize, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %land.lhs.true66, %if.end57
  store i32 0, ptr %fi, align 4
  %55 = load ptr, ptr %tif.addr, align 8
  %tif_nfields = getelementptr inbounds %struct.tiff, ptr %55, i64 0, i32 56
  %56 = load i32, ptr %tif_nfields, align 8
  store i32 %56, ptr %nfi, align 4
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc220, %if.end71
  %57 = load i32, ptr %nfi, align 4
  %cmp73 = icmp sgt i32 %57, 0
  br i1 %cmp73, label %for.body75, label %for.end223

for.body75:                                       ; preds = %for.cond72
  %58 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo = getelementptr inbounds %struct.tiff, ptr %58, i64 0, i32 55
  %59 = load ptr, ptr %tif_fieldinfo, align 8
  %60 = load i32, ptr %fi, align 4
  %idxprom = sext i32 %60 to i64
  %arrayidx76 = getelementptr inbounds ptr, ptr %59, i64 %idxprom
  %61 = load ptr, ptr %arrayidx76, align 8
  store ptr %61, ptr %fip, align 8
  %field_bit = getelementptr inbounds %struct.TIFFFieldInfo, ptr %61, i64 0, i32 4
  %62 = load i16, ptr %field_bit, align 8
  %63 = lshr i16 %62, 5
  %idxprom79 = zext i16 %63 to i64
  %arrayidx80 = getelementptr inbounds [3 x i64], ptr %fields, i64 0, i64 %idxprom79
  %64 = load i64, ptr %arrayidx80, align 8
  %65 = load ptr, ptr %fip, align 8
  %field_bit81 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %65, i64 0, i32 4
  %66 = load i16, ptr %field_bit81, align 8
  %67 = and i16 %66, 31
  %sh_prom = zext i16 %67 to i64
  %shl84 = shl i64 1, %sh_prom
  %and85 = and i64 %64, %shl84
  %tobool86.not = icmp eq i64 %and85, 0
  br i1 %tobool86.not, label %for.inc220, label %if.end88

if.end88:                                         ; preds = %for.body75
  %68 = load ptr, ptr %fip, align 8
  %field_bit89 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %68, i64 0, i32 4
  %69 = load i16, ptr %field_bit89, align 8
  switch i16 %69, label %sw.default [
    i16 25, label %sw.bb
    i16 24, label %sw.bb105
    i16 17, label %sw.bb122
    i16 26, label %sw.bb123
    i16 1, label %sw.bb129
    i16 2, label %sw.bb130
    i16 4, label %sw.bb132
    i16 3, label %sw.bb142
    i16 6, label %sw.bb153
    i16 18, label %sw.bb153
    i16 19, label %sw.bb153
    i16 32, label %sw.bb153
    i16 33, label %sw.bb159
    i16 34, label %sw.bb159
    i16 23, label %sw.bb166
    i16 37, label %sw.bb166
    i16 39, label %sw.bb166
    i16 47, label %sw.bb166
    i16 46, label %sw.bb172
    i16 44, label %sw.bb177
    i16 49, label %sw.bb182
  ]

sw.bb:                                            ; preds = %if.end88
  %70 = load ptr, ptr %tif.addr, align 8
  %tif_flags91 = getelementptr inbounds %struct.tiff, ptr %70, i64 0, i32 3
  %71 = load i64, ptr %tif_flags91, align 8
  %and92 = and i64 %71, 1024
  %cmp93.not = icmp eq i64 %and92, 0
  %conv96 = select i1 %cmp93.not, i64 273, i64 324
  store i64 %conv96, ptr %tag, align 8
  %72 = load ptr, ptr %fip, align 8
  %73 = load i64, ptr %72, align 8
  %cmp97.not = icmp eq i64 %conv96, %73
  br i1 %cmp97.not, label %if.end100, label %for.inc220

if.end100:                                        ; preds = %sw.bb
  %74 = load ptr, ptr %tif.addr, align 8
  %75 = load i64, ptr %tag, align 8
  %76 = load ptr, ptr %dir, align 8
  %77 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %77, i64 0, i32 43
  %78 = load i64, ptr %td_nstrips, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %77, i64 0, i32 44
  %79 = load ptr, ptr %td_stripoffset, align 8
  %call101 = call i32 @TIFFWriteLongArray(ptr noundef %74, i32 noundef 4, i64 noundef %75, ptr noundef %76, i64 noundef %78, ptr noundef %79)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %bad, label %sw.epilog

sw.bb105:                                         ; preds = %if.end88
  %80 = load ptr, ptr %tif.addr, align 8
  %tif_flags106 = getelementptr inbounds %struct.tiff, ptr %80, i64 0, i32 3
  %81 = load i64, ptr %tif_flags106, align 8
  %and107 = and i64 %81, 1024
  %cmp108.not = icmp eq i64 %and107, 0
  %conv111 = select i1 %cmp108.not, i64 279, i64 325
  store i64 %conv111, ptr %tag, align 8
  %82 = load ptr, ptr %fip, align 8
  %83 = load i64, ptr %82, align 8
  %cmp113.not = icmp eq i64 %conv111, %83
  br i1 %cmp113.not, label %if.end116, label %for.inc220

if.end116:                                        ; preds = %sw.bb105
  %84 = load ptr, ptr %tif.addr, align 8
  %85 = load i64, ptr %tag, align 8
  %86 = load ptr, ptr %dir, align 8
  %87 = load ptr, ptr %td, align 8
  %td_nstrips117 = getelementptr inbounds %struct.TIFFDirectory, ptr %87, i64 0, i32 43
  %88 = load i64, ptr %td_nstrips117, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %87, i64 0, i32 45
  %89 = load ptr, ptr %td_stripbytecount, align 8
  %call118 = call i32 @TIFFWriteLongArray(ptr noundef %84, i32 noundef 4, i64 noundef %85, ptr noundef %86, i64 noundef %88, ptr noundef %89)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %bad, label %sw.epilog

sw.bb122:                                         ; preds = %if.end88
  %90 = load ptr, ptr %tif.addr, align 8
  %91 = load ptr, ptr %dir, align 8
  %92 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %92, i64 0, i32 16
  %93 = load i64, ptr %td_rowsperstrip, align 8
  call void @TIFFSetupShortLong(ptr noundef %90, i64 noundef 278, ptr noundef %91, i64 noundef %93)
  br label %sw.epilog

sw.bb123:                                         ; preds = %if.end88
  %94 = load ptr, ptr %tif.addr, align 8
  %95 = load ptr, ptr %dir, align 8
  %96 = load ptr, ptr %td, align 8
  %td_colormap = getelementptr inbounds %struct.TIFFDirectory, ptr %96, i64 0, i32 28
  %call125 = call i32 @TIFFWriteShortTable(ptr noundef %94, i64 noundef 320, ptr noundef %95, i64 noundef 3, ptr noundef nonnull %td_colormap)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %bad, label %sw.epilog

sw.bb129:                                         ; preds = %if.end88
  %97 = load ptr, ptr %tif.addr, align 8
  %98 = load ptr, ptr %dir, align 8
  %incdec.ptr = getelementptr inbounds %struct.TIFFDirEntry, ptr %98, i64 1
  store ptr %incdec.ptr, ptr %dir, align 8
  %99 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %99, i64 0, i32 1
  %100 = load i64, ptr %td_imagewidth, align 8
  call void @TIFFSetupShortLong(ptr noundef %97, i64 noundef 256, ptr noundef %98, i64 noundef %100)
  %101 = load ptr, ptr %tif.addr, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %99, i64 0, i32 2
  %102 = load i64, ptr %td_imagelength, align 8
  call void @TIFFSetupShortLong(ptr noundef %101, i64 noundef 257, ptr noundef nonnull %incdec.ptr, i64 noundef %102)
  br label %sw.epilog

sw.bb130:                                         ; preds = %if.end88
  %103 = load ptr, ptr %tif.addr, align 8
  %104 = load ptr, ptr %dir, align 8
  %incdec.ptr131 = getelementptr inbounds %struct.TIFFDirEntry, ptr %104, i64 1
  store ptr %incdec.ptr131, ptr %dir, align 8
  %105 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %105, i64 0, i32 4
  %106 = load i64, ptr %td_tilewidth, align 8
  call void @TIFFSetupShortLong(ptr noundef %103, i64 noundef 322, ptr noundef %104, i64 noundef %106)
  %107 = load ptr, ptr %tif.addr, align 8
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %105, i64 0, i32 5
  %108 = load i64, ptr %td_tilelength, align 8
  call void @TIFFSetupShortLong(ptr noundef %107, i64 noundef 323, ptr noundef nonnull %incdec.ptr131, i64 noundef %108)
  br label %sw.epilog

sw.bb132:                                         ; preds = %if.end88
  %109 = load ptr, ptr %tif.addr, align 8
  %110 = load ptr, ptr %dir, align 8
  %111 = load ptr, ptr %td, align 8
  %td_xposition = getelementptr inbounds %struct.TIFFDirectory, ptr %111, i64 0, i32 25
  %call133 = call i32 @TIFFWriteRationalArray(ptr noundef %109, i32 noundef 5, i64 noundef 286, ptr noundef %110, i64 noundef 1, ptr noundef nonnull %td_xposition)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %bad, label %if.end136

if.end136:                                        ; preds = %sw.bb132
  %112 = load ptr, ptr %tif.addr, align 8
  %113 = load ptr, ptr %dir, align 8
  %add.ptr = getelementptr inbounds %struct.TIFFDirEntry, ptr %113, i64 1
  %114 = load ptr, ptr %td, align 8
  %td_yposition = getelementptr inbounds %struct.TIFFDirectory, ptr %114, i64 0, i32 26
  %call137 = call i32 @TIFFWriteRationalArray(ptr noundef %112, i32 noundef 5, i64 noundef 287, ptr noundef nonnull %add.ptr, i64 noundef 1, ptr noundef nonnull %td_yposition)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %bad, label %if.end140

if.end140:                                        ; preds = %if.end136
  %115 = load ptr, ptr %dir, align 8
  %incdec.ptr141 = getelementptr inbounds %struct.TIFFDirEntry, ptr %115, i64 1
  store ptr %incdec.ptr141, ptr %dir, align 8
  br label %sw.epilog

sw.bb142:                                         ; preds = %if.end88
  %116 = load ptr, ptr %tif.addr, align 8
  %117 = load ptr, ptr %dir, align 8
  %118 = load ptr, ptr %td, align 8
  %td_xresolution = getelementptr inbounds %struct.TIFFDirectory, ptr %118, i64 0, i32 21
  %call143 = call i32 @TIFFWriteRationalArray(ptr noundef %116, i32 noundef 5, i64 noundef 282, ptr noundef %117, i64 noundef 1, ptr noundef nonnull %td_xresolution)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %bad, label %if.end146

if.end146:                                        ; preds = %sw.bb142
  %119 = load ptr, ptr %tif.addr, align 8
  %120 = load ptr, ptr %dir, align 8
  %add.ptr147 = getelementptr inbounds %struct.TIFFDirEntry, ptr %120, i64 1
  %121 = load ptr, ptr %td, align 8
  %td_yresolution = getelementptr inbounds %struct.TIFFDirectory, ptr %121, i64 0, i32 22
  %call148 = call i32 @TIFFWriteRationalArray(ptr noundef %119, i32 noundef 5, i64 noundef 283, ptr noundef nonnull %add.ptr147, i64 noundef 1, ptr noundef nonnull %td_yresolution)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %bad, label %if.end151

if.end151:                                        ; preds = %if.end146
  %122 = load ptr, ptr %dir, align 8
  %incdec.ptr152 = getelementptr inbounds %struct.TIFFDirEntry, ptr %122, i64 1
  store ptr %incdec.ptr152, ptr %dir, align 8
  br label %sw.epilog

sw.bb153:                                         ; preds = %if.end88, %if.end88, %if.end88, %if.end88
  %123 = load ptr, ptr %tif.addr, align 8
  %124 = load ptr, ptr %fip, align 8
  %125 = load i64, ptr %124, align 8
  %126 = load ptr, ptr %dir, align 8
  %call155 = call i32 @TIFFWritePerSampleShorts(ptr noundef %123, i64 noundef %125, ptr noundef %126)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %bad, label %sw.epilog

sw.bb159:                                         ; preds = %if.end88, %if.end88
  %127 = load ptr, ptr %tif.addr, align 8
  %call160 = call i32 @_TIFFSampleToTagType(ptr noundef %127) #2
  %128 = load ptr, ptr %fip, align 8
  %129 = load i64, ptr %128, align 8
  %130 = load ptr, ptr %dir, align 8
  %call162 = call i32 @TIFFWritePerSampleAnys(ptr noundef %127, i32 noundef %call160, i64 noundef %129, ptr noundef %130)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %bad, label %sw.epilog

sw.bb166:                                         ; preds = %if.end88, %if.end88, %if.end88, %if.end88
  %131 = load ptr, ptr %tif.addr, align 8
  %132 = load ptr, ptr %fip, align 8
  %133 = load i64, ptr %132, align 8
  %134 = load ptr, ptr %dir, align 8
  %call168 = call i32 @TIFFSetupShortPair(ptr noundef %131, i64 noundef %133, ptr noundef %134)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %bad, label %sw.epilog

sw.bb172:                                         ; preds = %if.end88
  %135 = load ptr, ptr %tif.addr, align 8
  %136 = load ptr, ptr %dir, align 8
  %call173 = call i32 @TIFFWriteInkNames(ptr noundef %135, ptr noundef %136)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %bad, label %sw.epilog

sw.bb177:                                         ; preds = %if.end88
  %137 = load ptr, ptr %tif.addr, align 8
  %138 = load ptr, ptr %dir, align 8
  %call178 = call i32 @TIFFWriteTransferFunction(ptr noundef %137, ptr noundef %138)
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %bad, label %sw.epilog

sw.bb182:                                         ; preds = %if.end88
  %139 = load ptr, ptr %tif.addr, align 8
  %140 = load ptr, ptr %dir, align 8
  %141 = load ptr, ptr %fip, align 8
  %call183 = call i32 @TIFFWriteNormalTag(ptr noundef %139, ptr noundef %140, ptr noundef %141)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %bad, label %if.end186

if.end186:                                        ; preds = %sw.bb182
  %142 = load ptr, ptr %dir, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %142, i64 0, i32 2
  %143 = load i64, ptr %tdir_count, align 8
  %cmp187.not = icmp eq i64 %143, 0
  br i1 %cmp187.not, label %sw.epilog, label %if.then189

if.then189:                                       ; preds = %if.end186
  %144 = load ptr, ptr %tif.addr, align 8
  %tif_flags190 = getelementptr inbounds %struct.tiff, ptr %144, i64 0, i32 3
  %145 = load i64, ptr %tif_flags190, align 8
  %or = or i64 %145, 8192
  store i64 %or, ptr %tif_flags190, align 8
  %146 = load ptr, ptr %dir, align 8
  %tdir_count191 = getelementptr inbounds %struct.TIFFDirEntry, ptr %146, i64 0, i32 2
  %147 = load i64, ptr %tdir_count191, align 8
  %conv192 = trunc i64 %147 to i16
  %148 = load ptr, ptr %tif.addr, align 8
  %tif_nsubifd = getelementptr inbounds %struct.tiff, ptr %148, i64 0, i32 16
  store i16 %conv192, ptr %tif_nsubifd, align 8
  %149 = load ptr, ptr %dir, align 8
  %tdir_count193 = getelementptr inbounds %struct.TIFFDirEntry, ptr %149, i64 0, i32 2
  %150 = load i64, ptr %tdir_count193, align 8
  %cmp194 = icmp ugt i64 %150, 1
  br i1 %cmp194, label %if.then196, label %if.else

if.then196:                                       ; preds = %if.then189
  %151 = load ptr, ptr %dir, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %151, i64 0, i32 3
  %152 = load i64, ptr %tdir_offset, align 8
  %153 = load ptr, ptr %tif.addr, align 8
  %tif_subifdoff = getelementptr inbounds %struct.tiff, ptr %153, i64 0, i32 17
  store i64 %152, ptr %tif_subifdoff, align 8
  br label %sw.epilog

if.else:                                          ; preds = %if.then189
  %154 = load ptr, ptr %tif.addr, align 8
  %tif_diroff197 = getelementptr inbounds %struct.tiff, ptr %154, i64 0, i32 4
  %155 = load i64, ptr %tif_diroff197, align 8
  %add198 = add i64 %155, 2
  %156 = load ptr, ptr %dir, align 8
  %tdir_offset199 = getelementptr inbounds %struct.TIFFDirEntry, ptr %156, i64 0, i32 3
  %157 = load ptr, ptr %data, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %tdir_offset199 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %157 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add200 = add i64 %add198, %sub.ptr.sub
  %158 = load ptr, ptr %tif.addr, align 8
  %tif_subifdoff201 = getelementptr inbounds %struct.tiff, ptr %158, i64 0, i32 17
  store i64 %add200, ptr %tif_subifdoff201, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end88
  %159 = load ptr, ptr %tif.addr, align 8
  %160 = load ptr, ptr %dir, align 8
  %161 = load ptr, ptr %fip, align 8
  %call204 = call i32 @TIFFWriteNormalTag(ptr noundef %159, ptr noundef %160, ptr noundef %161)
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %bad, label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end186, %if.else, %if.then196, %sw.bb177, %sw.bb172, %sw.bb166, %sw.bb159, %sw.bb153, %sw.bb123, %if.end116, %if.end100, %if.end151, %if.end140, %sw.bb130, %sw.bb129, %sw.bb122
  %162 = load ptr, ptr %dir, align 8
  %incdec.ptr208 = getelementptr inbounds %struct.TIFFDirEntry, ptr %162, i64 1
  store ptr %incdec.ptr208, ptr %dir, align 8
  %163 = load ptr, ptr %fip, align 8
  %field_bit209 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %163, i64 0, i32 4
  %164 = load i16, ptr %field_bit209, align 8
  %165 = and i16 %164, 31
  %sh_prom212 = zext i16 %165 to i64
  %shl213 = shl i64 1, %sh_prom212
  %neg = xor i64 %shl213, -1
  %166 = load ptr, ptr %fip, align 8
  %field_bit214 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %166, i64 0, i32 4
  %167 = load i16, ptr %field_bit214, align 8
  %168 = lshr i16 %167, 5
  %idxprom217 = zext i16 %168 to i64
  %arrayidx218 = getelementptr inbounds [3 x i64], ptr %fields, i64 0, i64 %idxprom217
  %169 = load i64, ptr %arrayidx218, align 8
  %and219 = and i64 %169, %neg
  store i64 %and219, ptr %arrayidx218, align 8
  br label %for.inc220

for.inc220:                                       ; preds = %sw.bb105, %sw.bb, %for.body75, %sw.epilog
  %170 = load i32, ptr %nfi, align 4
  %dec221 = add nsw i32 %170, -1
  store i32 %dec221, ptr %nfi, align 4
  %171 = load i32, ptr %fi, align 4
  %inc222 = add nsw i32 %171, 1
  store i32 %inc222, ptr %fi, align 4
  br label %for.cond72, !llvm.loop !8

for.end223:                                       ; preds = %for.cond72
  %172 = load i64, ptr %nfields, align 8
  %conv224 = trunc i64 %172 to i16
  store i16 %conv224, ptr %dircount, align 2
  %173 = load ptr, ptr %tif.addr, align 8
  %tif_nextdiroff = getelementptr inbounds %struct.tiff, ptr %173, i64 0, i32 5
  %174 = load i64, ptr %tif_nextdiroff, align 8
  store i64 %174, ptr %diroff, align 8
  %tif_flags225 = getelementptr inbounds %struct.tiff, ptr %173, i64 0, i32 3
  %175 = load i64, ptr %tif_flags225, align 8
  %and226 = and i64 %175, 128
  %tobool227.not = icmp eq i64 %and226, 0
  br i1 %tobool227.not, label %if.end238, label %if.then228

if.then228:                                       ; preds = %for.end223
  %176 = load ptr, ptr %data, align 8
  store ptr %176, ptr %dir, align 8
  br label %for.cond229

for.cond229:                                      ; preds = %for.body231, %if.then228
  %177 = load i16, ptr %dircount, align 2
  %tobool230.not = icmp eq i16 %177, 0
  br i1 %tobool230.not, label %for.end236, label %for.body231

for.body231:                                      ; preds = %for.cond229
  %178 = load ptr, ptr %dir, align 8
  call void @TIFFSwabArrayOfShort(ptr noundef %178, i64 noundef 2) #2
  %tdir_count232 = getelementptr inbounds %struct.TIFFDirEntry, ptr %178, i64 0, i32 2
  call void @TIFFSwabArrayOfLong(ptr noundef nonnull %tdir_count232, i64 noundef 2) #2
  %179 = load ptr, ptr %dir, align 8
  %incdec.ptr234 = getelementptr inbounds %struct.TIFFDirEntry, ptr %179, i64 1
  store ptr %incdec.ptr234, ptr %dir, align 8
  %180 = load i16, ptr %dircount, align 2
  %dec235 = add i16 %180, -1
  store i16 %dec235, ptr %dircount, align 2
  br label %for.cond229, !llvm.loop !9

for.end236:                                       ; preds = %for.cond229
  %181 = load i64, ptr %nfields, align 8
  %conv237 = trunc i64 %181 to i16
  store i16 %conv237, ptr %dircount, align 2
  call void @TIFFSwabShort(ptr noundef nonnull %dircount) #2
  call void @TIFFSwabLong(ptr noundef nonnull %diroff) #2
  br label %if.end238

if.end238:                                        ; preds = %for.end236, %for.end223
  %182 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc239 = getelementptr inbounds %struct.tiff, ptr %182, i64 0, i32 51
  %183 = load ptr, ptr %tif_seekproc239, align 8
  %tif_clientdata240 = getelementptr inbounds %struct.tiff, ptr %182, i64 0, i32 48
  %184 = load ptr, ptr %tif_clientdata240, align 8
  %tif_diroff241 = getelementptr inbounds %struct.tiff, ptr %182, i64 0, i32 4
  %185 = load i64, ptr %tif_diroff241, align 8
  %call242 = call i64 %183(ptr noundef %184, i64 noundef %185, i32 noundef 0) #2
  %186 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc = getelementptr inbounds %struct.tiff, ptr %186, i64 0, i32 50
  %187 = load ptr, ptr %tif_writeproc, align 8
  %tif_clientdata243 = getelementptr inbounds %struct.tiff, ptr %186, i64 0, i32 48
  %188 = load ptr, ptr %tif_clientdata243, align 8
  %call244 = call i64 %187(ptr noundef %188, ptr noundef nonnull %dircount, i64 noundef 2) #2
  %cmp245 = icmp eq i64 %call244, 2
  br i1 %cmp245, label %if.end249, label %if.then247

if.then247:                                       ; preds = %if.end238
  %189 = load ptr, ptr %tif.addr, align 8
  %190 = load ptr, ptr %189, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %190, ptr noundef nonnull @.str.3) #2
  br label %bad

if.end249:                                        ; preds = %if.end238
  %191 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc250 = getelementptr inbounds %struct.tiff, ptr %191, i64 0, i32 50
  %192 = load ptr, ptr %tif_writeproc250, align 8
  %tif_clientdata251 = getelementptr inbounds %struct.tiff, ptr %191, i64 0, i32 48
  %193 = load ptr, ptr %tif_clientdata251, align 8
  %194 = load ptr, ptr %data, align 8
  %195 = load i64, ptr %dirsize, align 8
  %call252 = call i64 %192(ptr noundef %193, ptr noundef %194, i64 noundef %195) #2
  %cmp253 = icmp eq i64 %call252, %195
  br i1 %cmp253, label %if.end257, label %if.then255

if.then255:                                       ; preds = %if.end249
  %196 = load ptr, ptr %tif.addr, align 8
  %197 = load ptr, ptr %196, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %197, ptr noundef nonnull @.str.4) #2
  br label %bad

if.end257:                                        ; preds = %if.end249
  %198 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc258 = getelementptr inbounds %struct.tiff, ptr %198, i64 0, i32 50
  %199 = load ptr, ptr %tif_writeproc258, align 8
  %tif_clientdata259 = getelementptr inbounds %struct.tiff, ptr %198, i64 0, i32 48
  %200 = load ptr, ptr %tif_clientdata259, align 8
  %call260 = call i64 %199(ptr noundef %200, ptr noundef nonnull %diroff, i64 noundef 8) #2
  %cmp261 = icmp eq i64 %call260, 8
  br i1 %cmp261, label %if.end265, label %if.then263

if.then263:                                       ; preds = %if.end257
  %201 = load ptr, ptr %tif.addr, align 8
  %202 = load ptr, ptr %201, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %202, ptr noundef nonnull @.str.5) #2
  br label %bad

if.end265:                                        ; preds = %if.end257
  %203 = load ptr, ptr %tif.addr, align 8
  call void @TIFFFreeDirectory(ptr noundef %203) #2
  %204 = load ptr, ptr %data, align 8
  call void @_TIFFfree(ptr noundef %204) #2
  %tif_flags266 = getelementptr inbounds %struct.tiff, ptr %203, i64 0, i32 3
  %205 = load i64, ptr %tif_flags266, align 8
  %and267 = and i64 %205, -9
  store i64 %and267, ptr %tif_flags266, align 8
  %206 = load ptr, ptr %tif.addr, align 8
  %tif_cleanup = getelementptr inbounds %struct.tiff, ptr %206, i64 0, i32 34
  %207 = load ptr, ptr %tif_cleanup, align 8
  call void %207(ptr noundef %206) #2
  %call268 = call i32 @TIFFDefaultDirectory(ptr noundef %206) #2
  %tif_diroff269 = getelementptr inbounds %struct.tiff, ptr %206, i64 0, i32 4
  store i64 0, ptr %tif_diroff269, align 8
  %208 = load ptr, ptr %tif.addr, align 8
  %tif_curoff = getelementptr inbounds %struct.tiff, ptr %208, i64 0, i32 14
  store i64 0, ptr %tif_curoff, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %208, i64 0, i32 11
  store i64 -1, ptr %tif_row, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %208, i64 0, i32 13
  store i64 -1, ptr %tif_curstrip, align 8
  store i32 1, ptr %retval, align 4
  br label %return

bad:                                              ; preds = %sw.default, %sw.bb182, %sw.bb177, %sw.bb172, %sw.bb166, %sw.bb159, %sw.bb153, %if.end146, %sw.bb142, %if.end136, %sw.bb132, %sw.bb123, %if.end116, %if.end100, %land.lhs.true42, %if.then263, %if.then255, %if.then247
  %209 = load ptr, ptr %data, align 8
  call void @_TIFFfree(ptr noundef %209) #2
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %bad, %if.end265, %if.then37, %if.then11, %if.then5, %if.then
  %210 = load i32, ptr %retval, align 4
  ret i32 %210
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
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 51
  %0 = load ptr, ptr %tif_seekproc, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 48
  %1 = load ptr, ptr %tif_clientdata, align 8
  %call = call i64 %0(ptr noundef %1, i64 noundef 0, i32 noundef 2) #2
  %add = add nsw i64 %call, 1
  %and = and i64 %add, -2
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_diroff = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 4
  store i64 %and, ptr %tif_diroff, align 8
  store i64 %and, ptr %diroff, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 3
  %3 = load i64, ptr %tif_flags, align 8
  %and2 = and i64 %3, 128
  %tobool.not = icmp eq i64 %and2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @TIFFSwabLong(ptr noundef nonnull %diroff) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_flags3 = getelementptr inbounds %struct.tiff, ptr %4, i64 0, i32 3
  %5 = load i64, ptr %tif_flags3, align 8
  %and4 = and i64 %5, 8192
  %tobool5.not = icmp eq i64 %and4, 0
  br i1 %tobool5.not, label %if.end21, label %if.then6

if.then6:                                         ; preds = %if.end
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc7 = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 51
  %7 = load ptr, ptr %tif_seekproc7, align 8
  %tif_clientdata8 = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 48
  %8 = load ptr, ptr %tif_clientdata8, align 8
  %tif_subifdoff = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 17
  %9 = load i64, ptr %tif_subifdoff, align 8
  %call9 = call i64 %7(ptr noundef %8, i64 noundef %9, i32 noundef 0) #2
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 50
  %11 = load ptr, ptr %tif_writeproc, align 8
  %tif_clientdata10 = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 48
  %12 = load ptr, ptr %tif_clientdata10, align 8
  %call11 = call i64 %11(ptr noundef %12, ptr noundef nonnull %diroff, i64 noundef 8) #2
  %cmp = icmp eq i64 %call11, 8
  br i1 %cmp, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.then6
  %13 = load ptr, ptr %tif.addr, align 8
  %14 = load ptr, ptr %13, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFLinkDirectory.module, ptr noundef nonnull @.str.8, ptr noundef %14) #2
  store i32 0, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.then6
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_nsubifd = getelementptr inbounds %struct.tiff, ptr %15, i64 0, i32 16
  %16 = load i16, ptr %tif_nsubifd, align 8
  %dec = add i16 %16, -1
  store i16 %dec, ptr %tif_nsubifd, align 8
  %tobool14.not = icmp eq i16 %dec, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end13
  %17 = load ptr, ptr %tif.addr, align 8
  %tif_subifdoff16 = getelementptr inbounds %struct.tiff, ptr %17, i64 0, i32 17
  %18 = load i64, ptr %tif_subifdoff16, align 8
  %add17 = add i64 %18, 8
  store i64 %add17, ptr %tif_subifdoff16, align 8
  br label %if.end20

if.else:                                          ; preds = %if.end13
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_flags18 = getelementptr inbounds %struct.tiff, ptr %19, i64 0, i32 3
  %20 = load i64, ptr %tif_flags18, align 8
  %and19 = and i64 %20, -8193
  store i64 %and19, ptr %tif_flags18, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then15
  store i32 1, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end
  %21 = load ptr, ptr %tif.addr, align 8
  %tiff_diroff = getelementptr inbounds %struct.tiff, ptr %21, i64 0, i32 7, i32 2
  %22 = load i64, ptr %tiff_diroff, align 8
  %cmp22 = icmp eq i64 %22, 0
  br i1 %cmp22, label %if.then23, label %if.end37

if.then23:                                        ; preds = %if.end21
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_diroff24 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 4
  %24 = load i64, ptr %tif_diroff24, align 8
  %tiff_diroff26 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 7, i32 2
  store i64 %24, ptr %tiff_diroff26, align 8
  %tif_seekproc27 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 51
  %25 = load ptr, ptr %tif_seekproc27, align 8
  %26 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata28 = getelementptr inbounds %struct.tiff, ptr %26, i64 0, i32 48
  %27 = load ptr, ptr %tif_clientdata28, align 8
  %call29 = call i64 %25(ptr noundef %27, i64 noundef 8, i32 noundef 0) #2
  %tif_writeproc30 = getelementptr inbounds %struct.tiff, ptr %26, i64 0, i32 50
  %28 = load ptr, ptr %tif_writeproc30, align 8
  %tif_clientdata31 = getelementptr inbounds %struct.tiff, ptr %26, i64 0, i32 48
  %29 = load ptr, ptr %tif_clientdata31, align 8
  %call32 = call i64 %28(ptr noundef %29, ptr noundef nonnull %diroff, i64 noundef 8) #2
  %cmp33 = icmp eq i64 %call32, 8
  br i1 %cmp33, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.then23
  %30 = load ptr, ptr %tif.addr, align 8
  %31 = load ptr, ptr %30, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %31, ptr noundef nonnull @.str.9) #2
  store i32 0, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.then23
  store i32 1, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.end21
  %32 = load ptr, ptr %tif.addr, align 8
  %tiff_diroff39 = getelementptr inbounds %struct.tiff, ptr %32, i64 0, i32 7, i32 2
  %33 = load i64, ptr %tiff_diroff39, align 8
  store i64 %33, ptr %nextdir, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end37
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc40 = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 51
  %35 = load ptr, ptr %tif_seekproc40, align 8
  %tif_clientdata41 = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 48
  %36 = load ptr, ptr %tif_clientdata41, align 8
  %37 = load i64, ptr %nextdir, align 8
  %call42 = call i64 %35(ptr noundef %36, i64 noundef %37, i32 noundef 0) #2
  %38 = load i64, ptr %nextdir, align 8
  %cmp43 = icmp eq i64 %call42, %38
  br i1 %cmp43, label %lor.lhs.false, label %if.then47

lor.lhs.false:                                    ; preds = %do.body
  %39 = load ptr, ptr %tif.addr, align 8
  %tif_readproc = getelementptr inbounds %struct.tiff, ptr %39, i64 0, i32 49
  %40 = load ptr, ptr %tif_readproc, align 8
  %tif_clientdata44 = getelementptr inbounds %struct.tiff, ptr %39, i64 0, i32 48
  %41 = load ptr, ptr %tif_clientdata44, align 8
  %call45 = call i64 %40(ptr noundef %41, ptr noundef nonnull %dircount, i64 noundef 2) #2
  %cmp46 = icmp eq i64 %call45, 2
  br i1 %cmp46, label %if.end48, label %if.then47

if.then47:                                        ; preds = %lor.lhs.false, %do.body
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFLinkDirectory.module, ptr noundef nonnull @.str.10) #2
  store i32 0, ptr %retval, align 4
  br label %return

if.end48:                                         ; preds = %lor.lhs.false
  %42 = load ptr, ptr %tif.addr, align 8
  %tif_flags49 = getelementptr inbounds %struct.tiff, ptr %42, i64 0, i32 3
  %43 = load i64, ptr %tif_flags49, align 8
  %and50 = and i64 %43, 128
  %tobool51.not = icmp eq i64 %and50, 0
  br i1 %tobool51.not, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.end48
  call void @TIFFSwabShort(ptr noundef nonnull %dircount) #2
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end48
  %44 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc54 = getelementptr inbounds %struct.tiff, ptr %44, i64 0, i32 51
  %45 = load ptr, ptr %tif_seekproc54, align 8
  %tif_clientdata55 = getelementptr inbounds %struct.tiff, ptr %44, i64 0, i32 48
  %46 = load ptr, ptr %tif_clientdata55, align 8
  %47 = load i16, ptr %dircount, align 2
  %conv = zext i16 %47 to i64
  %mul = mul nuw nsw i64 %conv, 24
  %call56 = call i64 %45(ptr noundef %46, i64 noundef %mul, i32 noundef 1) #2
  %48 = load ptr, ptr %tif.addr, align 8
  %tif_readproc57 = getelementptr inbounds %struct.tiff, ptr %48, i64 0, i32 49
  %49 = load ptr, ptr %tif_readproc57, align 8
  %tif_clientdata58 = getelementptr inbounds %struct.tiff, ptr %48, i64 0, i32 48
  %50 = load ptr, ptr %tif_clientdata58, align 8
  %call59 = call i64 %49(ptr noundef %50, ptr noundef nonnull %nextdir, i64 noundef 8) #2
  %cmp60 = icmp eq i64 %call59, 8
  br i1 %cmp60, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.end53
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFLinkDirectory.module, ptr noundef nonnull @.str.11) #2
  store i32 0, ptr %retval, align 4
  br label %return

if.end63:                                         ; preds = %if.end53
  %51 = load ptr, ptr %tif.addr, align 8
  %tif_flags64 = getelementptr inbounds %struct.tiff, ptr %51, i64 0, i32 3
  %52 = load i64, ptr %tif_flags64, align 8
  %and65 = and i64 %52, 128
  %tobool66.not = icmp eq i64 %and65, 0
  br i1 %tobool66.not, label %do.cond, label %if.then67

if.then67:                                        ; preds = %if.end63
  call void @TIFFSwabLong(ptr noundef nonnull %nextdir) #2
  br label %do.cond

do.cond:                                          ; preds = %if.end63, %if.then67
  %53 = load i64, ptr %nextdir, align 8
  %cmp69.not = icmp eq i64 %53, 0
  br i1 %cmp69.not, label %do.end, label %do.body, !llvm.loop !10

do.end:                                           ; preds = %do.cond
  %54 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc71 = getelementptr inbounds %struct.tiff, ptr %54, i64 0, i32 51
  %55 = load ptr, ptr %tif_seekproc71, align 8
  %tif_clientdata72 = getelementptr inbounds %struct.tiff, ptr %54, i64 0, i32 48
  %56 = load ptr, ptr %tif_clientdata72, align 8
  %call73 = call i64 %55(ptr noundef %56, i64 noundef -8, i32 noundef 1) #2
  %tif_writeproc74 = getelementptr inbounds %struct.tiff, ptr %54, i64 0, i32 50
  %57 = load ptr, ptr %tif_writeproc74, align 8
  %58 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata75 = getelementptr inbounds %struct.tiff, ptr %58, i64 0, i32 48
  %59 = load ptr, ptr %tif_clientdata75, align 8
  %call76 = call i64 %57(ptr noundef %59, ptr noundef nonnull %diroff, i64 noundef 8) #2
  %cmp77 = icmp eq i64 %call76, 8
  br i1 %cmp77, label %if.end80, label %if.then79

if.then79:                                        ; preds = %do.end
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFLinkDirectory.module, ptr noundef nonnull @.str.5) #2
  store i32 0, ptr %retval, align 4
  br label %return

if.end80:                                         ; preds = %do.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end80, %if.then79, %if.then62, %if.then47, %if.end36, %if.then34, %if.end20, %if.then12
  %60 = load i32, ptr %retval, align 4
  ret i32 %60
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFWriteLongArray(ptr noundef %tif, i32 noundef %type, i64 noundef %tag, ptr noundef %dir, i64 noundef %n, ptr noundef %v) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  %conv = trunc i64 %tag to i16
  store i16 %conv, ptr %dir, align 8
  %conv1 = trunc i32 %type to i16
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 1
  store i16 %conv1, ptr %tdir_type, align 2
  %0 = load i64, ptr %n.addr, align 8
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  store i64 %0, ptr %tdir_count, align 8
  %cmp = icmp eq i64 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %v.addr, align 8
  %3 = load i64, ptr %2, align 8
  %4 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %4, i64 0, i32 3
  store i64 %3, ptr %tdir_offset, align 8
  br label %return

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load ptr, ptr %dir.addr, align 8
  %7 = load ptr, ptr %v.addr, align 8
  %call = call i32 @TIFFWriteData(ptr noundef %5, ptr noundef %6, ptr noundef %7)
  br label %return

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %call, %if.else ], [ 1, %if.then ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal void @TIFFSetupShortLong(ptr noundef %tif, i64 noundef %tag, ptr noundef %dir, i64 noundef %v) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i64 %v, ptr %v.addr, align 8
  %conv = trunc i64 %tag to i16
  store i16 %conv, ptr %dir, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 2
  store i64 1, ptr %tdir_count, align 8
  %cmp = icmp ugt i64 %v, 65535
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %0, i64 0, i32 1
  store i16 4, ptr %tdir_type, align 2
  %1 = load i64, ptr %v.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %0, i64 0, i32 3
  store i64 %1, ptr %tdir_offset, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %dir.addr, align 8
  %tdir_type2 = getelementptr inbounds %struct.TIFFDirEntry, ptr %2, i64 0, i32 1
  store i16 3, ptr %tdir_type2, align 2
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 7
  %4 = load i16, ptr %tif_header, align 8
  %cmp4 = icmp eq i16 %4, 19789
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %5 = load i64, ptr %v.addr, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_typemask = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 10
  %7 = load ptr, ptr %tif_typemask, align 8
  %arrayidx = getelementptr inbounds i64, ptr %7, i64 3
  %8 = load i64, ptr %arrayidx, align 8
  %and = and i64 %5, %8
  %tif_typeshift = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 9
  %9 = load ptr, ptr %tif_typeshift, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %9, i64 3
  %10 = load i32, ptr %arrayidx6, align 4
  %sh_prom = zext i32 %10 to i64
  %shl = shl i64 %and, %sh_prom
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %11 = load i64, ptr %v.addr, align 8
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_typemask7 = getelementptr inbounds %struct.tiff, ptr %12, i64 0, i32 10
  %13 = load ptr, ptr %tif_typemask7, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %13, i64 3
  %14 = load i64, ptr %arrayidx8, align 8
  %and9 = and i64 %11, %14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shl, %cond.true ], [ %and9, %cond.false ]
  %15 = load ptr, ptr %dir.addr, align 8
  %tdir_offset10 = getelementptr inbounds %struct.TIFFDirEntry, ptr %15, i64 0, i32 3
  store i64 %cond, ptr %tdir_offset10, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFWriteShortTable(ptr noundef %tif, i64 noundef %tag, ptr noundef %dir, i64 noundef %n, ptr noundef %table) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %table.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %off = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %table, ptr %table.addr, align 8
  %conv = trunc i64 %tag to i16
  store i16 %conv, ptr %dir, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 1
  store i16 3, ptr %tdir_type, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %td_bitspersample = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %1 = load i16, ptr %td_bitspersample, align 8
  %sh_prom = zext i16 %1 to i64
  %shl = shl i64 1, %sh_prom
  %2 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %2, i64 0, i32 2
  store i64 %shl, ptr %tdir_count, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_dataoff = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 15
  %4 = load i64, ptr %tif_dataoff, align 8
  store i64 %4, ptr %off, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  store i64 %storemerge, ptr %i, align 8
  %5 = load i64, ptr %n.addr, align 8
  %cmp = icmp ult i64 %storemerge, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %tif.addr, align 8
  %7 = load ptr, ptr %dir.addr, align 8
  %8 = load ptr, ptr %table.addr, align 8
  %9 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %9
  %10 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @TIFFWriteData(ptr noundef %6, ptr noundef %7, ptr noundef %10)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i64, ptr %i, align 8
  %inc = add i64 %11, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %12 = load i64, ptr %n.addr, align 8
  %13 = load ptr, ptr %dir.addr, align 8
  %tdir_count3 = getelementptr inbounds %struct.TIFFDirEntry, ptr %13, i64 0, i32 2
  %14 = load i64, ptr %tdir_count3, align 8
  %mul = mul i64 %14, %12
  store i64 %mul, ptr %tdir_count3, align 8
  %15 = load i64, ptr %off, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %13, i64 0, i32 3
  store i64 %15, ptr %tdir_offset, align 8
  br label %return

return:                                           ; preds = %for.body, %for.end
  %storemerge1 = phi i32 [ 1, %for.end ], [ 0, %for.body ]
  ret i32 %storemerge1
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
  %fv = alloca float, align 4
  %sign = alloca i32, align 4
  %den = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  store i64 %tag, ptr %tag.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  %conv = trunc i64 %tag to i16
  store i16 %conv, ptr %dir, align 8
  %0 = load i32, ptr %type.addr, align 4
  %conv1 = trunc i32 %0 to i16
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 1
  store i16 %conv1, ptr %tdir_type, align 2
  %2 = load i64, ptr %n.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  store i64 %2, ptr %tdir_count, align 8
  %mul2 = shl i64 %2, 4
  %call = call ptr @_TIFFmalloc(i64 noundef %mul2) #2
  store ptr %call, ptr %t, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end21, %entry
  %storemerge = phi i64 [ 0, %entry ], [ %inc, %if.end21 ]
  store i64 %storemerge, ptr %i, align 8
  %3 = load i64, ptr %n.addr, align 8
  %cmp = icmp ult i64 %storemerge, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %v.addr, align 8
  %5 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds float, ptr %4, i64 %5
  %6 = load float, ptr %arrayidx, align 4
  store float %6, ptr %fv, align 4
  store i32 1, ptr %sign, align 4
  %cmp4 = fcmp olt float %6, 0.000000e+00
  br i1 %cmp4, label %if.then, label %if.end11

if.then:                                          ; preds = %for.body
  %7 = load i32, ptr %type.addr, align 4
  %cmp6 = icmp eq i32 %7, 5
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  %8 = load ptr, ptr %tif.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load i64, ptr %tag.addr, align 8
  %call9 = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %8, i64 noundef %10) #2
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call9, i64 0, i32 7
  %11 = load ptr, ptr %field_name, align 8
  %12 = load float, ptr %fv, align 4
  %conv10 = fpext float %12 to double
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef %11, double noundef %conv10) #2
  store float 0.000000e+00, ptr %fv, align 4
  br label %if.end11

if.else:                                          ; preds = %if.then
  %13 = load float, ptr %fv, align 4
  %fneg = fneg float %13
  store float %fneg, ptr %fv, align 4
  store i32 -1, ptr %sign, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.else, %for.body
  store i64 1, ptr %den, align 8
  %14 = load float, ptr %fv, align 4
  %cmp12 = fcmp ogt float %14, 0.000000e+00
  br i1 %cmp12, label %while.cond, label %if.end21

while.cond:                                       ; preds = %if.end11, %while.body
  %15 = load float, ptr %fv, align 4
  %cmp15 = fcmp olt float %15, 0x41B0000000000000
  %16 = load i64, ptr %den, align 8
  %cmp17 = icmp ult i64 %16, 268435456
  %17 = select i1 %cmp15, i1 %cmp17, i1 false
  br i1 %17, label %while.body, label %if.end21

while.body:                                       ; preds = %while.cond
  %18 = load float, ptr %fv, align 4
  %mul19 = fmul float %18, 8.000000e+00
  store float %mul19, ptr %fv, align 4
  %19 = load i64, ptr %den, align 8
  %mul20 = shl i64 %19, 3
  store i64 %mul20, ptr %den, align 8
  br label %while.cond, !llvm.loop !12

if.end21:                                         ; preds = %while.cond, %if.end11
  %20 = load i32, ptr %sign, align 4
  %conv22 = sitofp i32 %20 to double
  %21 = load float, ptr %fv, align 4
  %conv23 = fpext float %21 to double
  %add = fadd double %conv23, 5.000000e-01
  %mul24 = fmul double %add, %conv22
  %conv25 = fptoui double %mul24 to i64
  %22 = load ptr, ptr %t, align 8
  %23 = load i64, ptr %i, align 8
  %mul26 = shl i64 %23, 1
  %arrayidx28 = getelementptr inbounds i64, ptr %22, i64 %mul26
  store i64 %conv25, ptr %arrayidx28, align 8
  %24 = load i64, ptr %den, align 8
  %mul29 = shl i64 %23, 1
  %add30 = or i64 %mul29, 1
  %arrayidx31 = getelementptr inbounds i64, ptr %22, i64 %add30
  store i64 %24, ptr %arrayidx31, align 8
  %25 = load i64, ptr %i, align 8
  %inc = add i64 %25, 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %26 = load ptr, ptr %tif.addr, align 8
  %27 = load ptr, ptr %dir.addr, align 8
  %28 = load ptr, ptr %t, align 8
  %call32 = call i32 @TIFFWriteData(ptr noundef %26, ptr noundef %27, ptr noundef %28)
  call void @_TIFFfree(ptr noundef %28) #2
  ret i32 %call32
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
  store ptr %buf, ptr %w, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 15
  %0 = load i16, ptr %td_samplesperpixel, align 2
  %conv = zext i16 %0 to i32
  store i32 %conv, ptr %samples, align 4
  %cmp = icmp ugt i16 %0, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %samples, align 4
  %conv3 = sext i32 %1 to i64
  %mul = shl nsw i64 %conv3, 1
  %call = call ptr @_TIFFmalloc(i64 noundef %mul) #2
  store ptr %call, ptr %w, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load i64, ptr %tag.addr, align 8
  %call4 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %2, i64 noundef %3, ptr noundef nonnull %v) #2
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %4 = load i32, ptr %samples, align 4
  %cmp5 = icmp slt i32 %storemerge, %4
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16, ptr %v, align 2
  %6 = load ptr, ptr %w, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i16, ptr %6, i64 %idxprom
  store i16 %5, ptr %arrayidx, align 2
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %tif.addr, align 8
  %10 = load i64, ptr %tag.addr, align 8
  %11 = load ptr, ptr %dir.addr, align 8
  %12 = load i32, ptr %samples, align 4
  %conv7 = sext i32 %12 to i64
  %13 = load ptr, ptr %w, align 8
  %call8 = call i32 @TIFFWriteShortArray(ptr noundef %9, i32 noundef 3, i64 noundef %10, ptr noundef %11, i64 noundef %conv7, ptr noundef %13)
  store i32 %call8, ptr %status, align 4
  %cmp10.not = icmp eq ptr %13, %buf
  br i1 %cmp10.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %for.end
  %14 = load ptr, ptr %w, align 8
  call void @_TIFFfree(ptr noundef %14) #2
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %for.end
  %15 = load i32, ptr %status, align 4
  ret i32 %15
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
  store ptr %buf, ptr %w, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 15
  %0 = load i16, ptr %td_samplesperpixel, align 2
  %conv = zext i16 %0 to i32
  store i32 %conv, ptr %samples, align 4
  %cmp = icmp ugt i16 %0, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %samples, align 4
  %conv3 = sext i32 %1 to i64
  %mul = shl nsw i64 %conv3, 3
  %call = call ptr @_TIFFmalloc(i64 noundef %mul) #2
  store ptr %call, ptr %w, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load i64, ptr %tag.addr, align 8
  %call4 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %2, i64 noundef %3, ptr noundef nonnull %v) #2
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %4 = load i32, ptr %samples, align 4
  %cmp5 = icmp slt i32 %storemerge, %4
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load double, ptr %v, align 8
  %6 = load ptr, ptr %w, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds double, ptr %6, i64 %idxprom
  store double %5, ptr %arrayidx, align 8
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %tif.addr, align 8
  %10 = load i32, ptr %type.addr, align 4
  %11 = load i64, ptr %tag.addr, align 8
  %12 = load ptr, ptr %dir.addr, align 8
  %13 = load i32, ptr %samples, align 4
  %conv7 = sext i32 %13 to i64
  %14 = load ptr, ptr %w, align 8
  %call8 = call i32 @TIFFWriteAnyArray(ptr noundef %9, i32 noundef %10, i64 noundef %11, ptr noundef %12, i64 noundef %conv7, ptr noundef %14)
  store i32 %call8, ptr %status, align 4
  %cmp10.not = icmp eq ptr %14, %buf
  br i1 %cmp10.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %for.end
  %15 = load ptr, ptr %w, align 8
  call void @_TIFFfree(ptr noundef %15) #2
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %for.end
  %16 = load i32, ptr %status, align 4
  ret i32 %16
}

declare i32 @_TIFFSampleToTagType(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFSetupShortPair(ptr noundef %tif, i64 noundef %tag, ptr noundef %dir) #0 {
entry:
  %v = alloca [2 x i16], align 2
  %arrayidx1 = getelementptr inbounds [2 x i16], ptr %v, i64 0, i64 1
  %call = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %tif, i64 noundef %tag, ptr noundef nonnull %v, ptr noundef nonnull %arrayidx1) #2
  %call2 = call i32 @TIFFWriteShortArray(ptr noundef %tif, i32 noundef 3, i64 noundef %tag, ptr noundef %dir, i64 noundef 2, ptr noundef nonnull %v)
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
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  store i16 333, ptr %dir, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 1
  store i16 2, ptr %tdir_type, align 2
  %td_inknameslen = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 58
  %0 = load i32, ptr %td_inknameslen, align 8
  %conv = sext i32 %0 to i64
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  store i64 %conv, ptr %tdir_count, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load ptr, ptr %td, align 8
  %td_inknames = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i64 0, i32 59
  %4 = load ptr, ptr %td_inknames, align 8
  %call = call i32 @TIFFWriteByteArray(ptr noundef %2, ptr noundef %1, ptr noundef %4)
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
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 8
  %0 = load i16, ptr %td_bitspersample, align 8
  %sh_prom = zext i16 %0 to i64
  %mul = shl i64 2, %sh_prom
  store i64 %mul, ptr %n, align 8
  %td_transferfunction = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 54
  store ptr %td_transferfunction, ptr %tf, align 8
  %1 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i64 0, i32 15
  %2 = load i16, ptr %td_samplesperpixel, align 2
  %conv1 = zext i16 %2 to i32
  %td_extrasamples = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i64 0, i32 30
  %3 = load i16, ptr %td_extrasamples, align 4
  %conv2 = zext i16 %3 to i32
  %sub = sub nsw i32 %conv1, %conv2
  switch i32 %sub, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb10
    i32 0, label %sw.bb10
  ]

sw.default:                                       ; preds = %entry
  %4 = load ptr, ptr %tf, align 8
  %5 = load ptr, ptr %4, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %arrayidx3, align 8
  %7 = load i64, ptr %n, align 8
  %call = call i32 @_TIFFmemcmp(ptr noundef %5, ptr noundef %6, i64 noundef %7) #2
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %sw.bb, label %if.then

if.then:                                          ; preds = %sw.default
  store i32 3, ptr %ncols, align 4
  br label %sw.epilog

sw.bb:                                            ; preds = %sw.default, %entry
  %8 = load ptr, ptr %tf, align 8
  %9 = load ptr, ptr %8, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %8, i64 1
  %10 = load ptr, ptr %arrayidx5, align 8
  %11 = load i64, ptr %n, align 8
  %call6 = call i32 @_TIFFmemcmp(ptr noundef %9, ptr noundef %10, i64 noundef %11) #2
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %sw.bb10, label %if.then8

if.then8:                                         ; preds = %sw.bb
  store i32 3, ptr %ncols, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %sw.bb, %entry, %entry
  store i32 1, ptr %ncols, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %if.then8, %if.then
  %12 = load ptr, ptr %tif.addr, align 8
  %13 = load ptr, ptr %dir.addr, align 8
  %14 = load i32, ptr %ncols, align 4
  %conv11 = sext i32 %14 to i64
  %15 = load ptr, ptr %tf, align 8
  %call12 = call i32 @TIFFWriteShortTable(ptr noundef %12, i64 noundef 301, ptr noundef %13, i64 noundef %conv11, ptr noundef %15)
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
  %field_writecount = getelementptr inbounds %struct.TIFFFieldInfo, ptr %fip, i64 0, i32 2
  %0 = load i16, ptr %field_writecount, align 2
  store i16 %0, ptr %wc, align 2
  %1 = load i64, ptr %fip, align 8
  %conv = trunc i64 %1 to i16
  %2 = load ptr, ptr %dir.addr, align 8
  store i16 %conv, ptr %2, align 8
  %3 = load ptr, ptr %fip.addr, align 8
  %field_type = getelementptr inbounds %struct.TIFFFieldInfo, ptr %3, i64 0, i32 3
  %4 = load i32, ptr %field_type, align 4
  %conv1 = trunc i32 %4 to i16
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %2, i64 0, i32 1
  store i16 %conv1, ptr %tdir_type, align 2
  %5 = load i16, ptr %wc, align 2
  %conv2 = zext i16 %5 to i64
  %6 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %6, i64 0, i32 2
  store i64 %conv2, ptr %tdir_count, align 8
  %7 = load ptr, ptr %fip.addr, align 8
  %field_type3 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %7, i64 0, i32 3
  %8 = load i32, ptr %field_type3, align 4
  switch i32 %8, label %sw.epilog [
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
  ]

sw.bb:                                            ; preds = %entry, %entry
  %9 = load i16, ptr %wc, align 2
  %cmp = icmp ugt i16 %9, 1
  br i1 %cmp, label %if.then, label %if.else19

if.then:                                          ; preds = %sw.bb
  %10 = load i16, ptr %wc, align 2
  %cmp7 = icmp eq i16 %10, -1
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then
  %11 = load ptr, ptr %tif.addr, align 8
  %12 = load ptr, ptr %fip.addr, align 8
  %13 = load i64, ptr %12, align 8
  %call = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %11, i64 noundef %13, ptr noundef nonnull %wc, ptr noundef nonnull %wp) #2
  br label %if.end

if.else:                                          ; preds = %if.then
  %14 = load ptr, ptr %tif.addr, align 8
  %15 = load ptr, ptr %fip.addr, align 8
  %16 = load i64, ptr %15, align 8
  %call12 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %14, i64 noundef %16, ptr noundef nonnull %wp) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then9
  %17 = load ptr, ptr %tif.addr, align 8
  %18 = load ptr, ptr %fip.addr, align 8
  %field_type13 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %18, i64 0, i32 3
  %19 = load i32, ptr %field_type13, align 4
  %20 = load i64, ptr %18, align 8
  %21 = load ptr, ptr %dir.addr, align 8
  %22 = load i16, ptr %wc, align 2
  %conv15 = zext i16 %22 to i64
  %23 = load ptr, ptr %wp, align 8
  %call16 = call i32 @TIFFWriteShortArray(ptr noundef %17, i32 noundef %19, i64 noundef %20, ptr noundef %21, i64 noundef %conv15, ptr noundef %23)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.then17, label %sw.epilog

if.then17:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.else19:                                        ; preds = %sw.bb
  %24 = load ptr, ptr %tif.addr, align 8
  %25 = load ptr, ptr %fip.addr, align 8
  %26 = load i64, ptr %25, align 8
  %call21 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %24, i64 noundef %26, ptr noundef nonnull %sv) #2
  %tif_header = getelementptr inbounds %struct.tiff, ptr %24, i64 0, i32 7
  %27 = load i16, ptr %tif_header, align 8
  %cmp23 = icmp eq i16 %27, 19789
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else19
  %28 = load i16, ptr %sv, align 2
  %conv25 = zext i16 %28 to i64
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_typemask = getelementptr inbounds %struct.tiff, ptr %29, i64 0, i32 10
  %30 = load ptr, ptr %tif_typemask, align 8
  %31 = load ptr, ptr %dir.addr, align 8
  %tdir_type26 = getelementptr inbounds %struct.TIFFDirEntry, ptr %31, i64 0, i32 1
  %32 = load i16, ptr %tdir_type26, align 2
  %idxprom = zext i16 %32 to i64
  %arrayidx = getelementptr inbounds i64, ptr %30, i64 %idxprom
  %33 = load i64, ptr %arrayidx, align 8
  %and = and i64 %33, %conv25
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 9
  %35 = load ptr, ptr %tif_typeshift, align 8
  %36 = load ptr, ptr %dir.addr, align 8
  %tdir_type27 = getelementptr inbounds %struct.TIFFDirEntry, ptr %36, i64 0, i32 1
  %37 = load i16, ptr %tdir_type27, align 2
  %idxprom28 = zext i16 %37 to i64
  %arrayidx29 = getelementptr inbounds i32, ptr %35, i64 %idxprom28
  %38 = load i32, ptr %arrayidx29, align 4
  %sh_prom = zext i32 %38 to i64
  %shl = shl i64 %and, %sh_prom
  br label %cond.end

cond.false:                                       ; preds = %if.else19
  %39 = load i16, ptr %sv, align 2
  %conv30 = zext i16 %39 to i64
  %40 = load ptr, ptr %tif.addr, align 8
  %tif_typemask31 = getelementptr inbounds %struct.tiff, ptr %40, i64 0, i32 10
  %41 = load ptr, ptr %tif_typemask31, align 8
  %42 = load ptr, ptr %dir.addr, align 8
  %tdir_type32 = getelementptr inbounds %struct.TIFFDirEntry, ptr %42, i64 0, i32 1
  %43 = load i16, ptr %tdir_type32, align 2
  %idxprom33 = zext i16 %43 to i64
  %arrayidx34 = getelementptr inbounds i64, ptr %41, i64 %idxprom33
  %44 = load i64, ptr %arrayidx34, align 8
  %and35 = and i64 %44, %conv30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shl, %cond.true ], [ %and35, %cond.false ]
  %45 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %45, i64 0, i32 3
  store i64 %cond, ptr %tdir_offset, align 8
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry, %entry
  %46 = load i16, ptr %wc, align 2
  %cmp39 = icmp ugt i16 %46, 1
  br i1 %cmp39, label %if.then41, label %if.else59

if.then41:                                        ; preds = %sw.bb37
  %47 = load i16, ptr %wc, align 2
  %cmp43 = icmp eq i16 %47, -1
  br i1 %cmp43, label %if.then45, label %if.else48

if.then45:                                        ; preds = %if.then41
  %48 = load ptr, ptr %tif.addr, align 8
  %49 = load ptr, ptr %fip.addr, align 8
  %50 = load i64, ptr %49, align 8
  %call47 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %48, i64 noundef %50, ptr noundef nonnull %wc, ptr noundef nonnull %lp) #2
  br label %if.end51

if.else48:                                        ; preds = %if.then41
  %51 = load ptr, ptr %tif.addr, align 8
  %52 = load ptr, ptr %fip.addr, align 8
  %53 = load i64, ptr %52, align 8
  %call50 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %51, i64 noundef %53, ptr noundef nonnull %lp) #2
  br label %if.end51

if.end51:                                         ; preds = %if.else48, %if.then45
  %54 = load ptr, ptr %tif.addr, align 8
  %55 = load ptr, ptr %fip.addr, align 8
  %field_type52 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %55, i64 0, i32 3
  %56 = load i32, ptr %field_type52, align 4
  %57 = load i64, ptr %55, align 8
  %58 = load ptr, ptr %dir.addr, align 8
  %59 = load i16, ptr %wc, align 2
  %conv54 = zext i16 %59 to i64
  %60 = load ptr, ptr %lp, align 8
  %call55 = call i32 @TIFFWriteLongArray(ptr noundef %54, i32 noundef %56, i64 noundef %57, ptr noundef %58, i64 noundef %conv54, ptr noundef %60)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then57, label %sw.epilog

if.then57:                                        ; preds = %if.end51
  store i32 0, ptr %retval, align 4
  br label %return

if.else59:                                        ; preds = %sw.bb37
  %61 = load ptr, ptr %tif.addr, align 8
  %62 = load ptr, ptr %fip.addr, align 8
  %63 = load i64, ptr %62, align 8
  %64 = load ptr, ptr %dir.addr, align 8
  %tdir_offset61 = getelementptr inbounds %struct.TIFFDirEntry, ptr %64, i64 0, i32 3
  %call62 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %61, i64 noundef %63, ptr noundef nonnull %tdir_offset61) #2
  br label %sw.epilog

sw.bb64:                                          ; preds = %entry, %entry
  %65 = load i16, ptr %wc, align 2
  %cmp66 = icmp ugt i16 %65, 1
  br i1 %cmp66, label %if.then68, label %if.else86

if.then68:                                        ; preds = %sw.bb64
  %66 = load i16, ptr %wc, align 2
  %cmp70 = icmp eq i16 %66, -1
  br i1 %cmp70, label %if.then72, label %if.else75

if.then72:                                        ; preds = %if.then68
  %67 = load ptr, ptr %tif.addr, align 8
  %68 = load ptr, ptr %fip.addr, align 8
  %69 = load i64, ptr %68, align 8
  %call74 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %67, i64 noundef %69, ptr noundef nonnull %wc, ptr noundef nonnull %fp) #2
  br label %if.end78

if.else75:                                        ; preds = %if.then68
  %70 = load ptr, ptr %tif.addr, align 8
  %71 = load ptr, ptr %fip.addr, align 8
  %72 = load i64, ptr %71, align 8
  %call77 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %70, i64 noundef %72, ptr noundef nonnull %fp) #2
  br label %if.end78

if.end78:                                         ; preds = %if.else75, %if.then72
  %73 = load ptr, ptr %tif.addr, align 8
  %74 = load ptr, ptr %fip.addr, align 8
  %field_type79 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %74, i64 0, i32 3
  %75 = load i32, ptr %field_type79, align 4
  %76 = load i64, ptr %74, align 8
  %77 = load ptr, ptr %dir.addr, align 8
  %78 = load i16, ptr %wc, align 2
  %conv81 = zext i16 %78 to i64
  %79 = load ptr, ptr %fp, align 8
  %call82 = call i32 @TIFFWriteRationalArray(ptr noundef %73, i32 noundef %75, i64 noundef %76, ptr noundef %77, i64 noundef %conv81, ptr noundef %79)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.then84, label %sw.epilog

if.then84:                                        ; preds = %if.end78
  store i32 0, ptr %retval, align 4
  br label %return

if.else86:                                        ; preds = %sw.bb64
  %80 = load ptr, ptr %tif.addr, align 8
  %81 = load ptr, ptr %fip.addr, align 8
  %82 = load i64, ptr %81, align 8
  %call88 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %80, i64 noundef %82, ptr noundef nonnull %fv) #2
  %field_type89 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %81, i64 0, i32 3
  %83 = load i32, ptr %field_type89, align 4
  %84 = load i64, ptr %81, align 8
  %85 = load ptr, ptr %dir.addr, align 8
  %86 = load i16, ptr %wc, align 2
  %conv91 = zext i16 %86 to i64
  %call92 = call i32 @TIFFWriteRationalArray(ptr noundef %80, i32 noundef %83, i64 noundef %84, ptr noundef %85, i64 noundef %conv91, ptr noundef nonnull %fv)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.then94, label %sw.epilog

if.then94:                                        ; preds = %if.else86
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb97:                                          ; preds = %entry
  %87 = load i16, ptr %wc, align 2
  %cmp99 = icmp ugt i16 %87, 1
  br i1 %cmp99, label %if.then101, label %if.else120

if.then101:                                       ; preds = %sw.bb97
  %88 = load i16, ptr %wc, align 2
  %cmp104 = icmp eq i16 %88, -1
  br i1 %cmp104, label %if.then106, label %if.else109

if.then106:                                       ; preds = %if.then101
  %89 = load ptr, ptr %tif.addr, align 8
  %90 = load ptr, ptr %fip.addr, align 8
  %91 = load i64, ptr %90, align 8
  %call108 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %89, i64 noundef %91, ptr noundef nonnull %wc, ptr noundef nonnull %fp102) #2
  br label %if.end112

if.else109:                                       ; preds = %if.then101
  %92 = load ptr, ptr %tif.addr, align 8
  %93 = load ptr, ptr %fip.addr, align 8
  %94 = load i64, ptr %93, align 8
  %call111 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %92, i64 noundef %94, ptr noundef nonnull %fp102) #2
  br label %if.end112

if.end112:                                        ; preds = %if.else109, %if.then106
  %95 = load ptr, ptr %tif.addr, align 8
  %96 = load ptr, ptr %fip.addr, align 8
  %field_type113 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %96, i64 0, i32 3
  %97 = load i32, ptr %field_type113, align 4
  %98 = load i64, ptr %96, align 8
  %99 = load ptr, ptr %dir.addr, align 8
  %100 = load i16, ptr %wc, align 2
  %conv115 = zext i16 %100 to i64
  %101 = load ptr, ptr %fp102, align 8
  %call116 = call i32 @TIFFWriteFloatArray(ptr noundef %95, i32 noundef %97, i64 noundef %98, ptr noundef %99, i64 noundef %conv115, ptr noundef %101)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.then118, label %sw.epilog

if.then118:                                       ; preds = %if.end112
  store i32 0, ptr %retval, align 4
  br label %return

if.else120:                                       ; preds = %sw.bb97
  %102 = load ptr, ptr %tif.addr, align 8
  %103 = load ptr, ptr %fip.addr, align 8
  %104 = load i64, ptr %103, align 8
  %call123 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %102, i64 noundef %104, ptr noundef nonnull %fv121) #2
  %field_type124 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %103, i64 0, i32 3
  %105 = load i32, ptr %field_type124, align 4
  %106 = load i64, ptr %103, align 8
  %107 = load ptr, ptr %dir.addr, align 8
  %108 = load i16, ptr %wc, align 2
  %conv126 = zext i16 %108 to i64
  %call127 = call i32 @TIFFWriteFloatArray(ptr noundef %102, i32 noundef %105, i64 noundef %106, ptr noundef %107, i64 noundef %conv126, ptr noundef nonnull %fv121)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.then129, label %sw.epilog

if.then129:                                       ; preds = %if.else120
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb132:                                         ; preds = %entry
  %109 = load i16, ptr %wc, align 2
  %cmp134 = icmp ugt i16 %109, 1
  br i1 %cmp134, label %if.then136, label %if.else154

if.then136:                                       ; preds = %sw.bb132
  %110 = load i16, ptr %wc, align 2
  %cmp138 = icmp eq i16 %110, -1
  br i1 %cmp138, label %if.then140, label %if.else143

if.then140:                                       ; preds = %if.then136
  %111 = load ptr, ptr %tif.addr, align 8
  %112 = load ptr, ptr %fip.addr, align 8
  %113 = load i64, ptr %112, align 8
  %call142 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %111, i64 noundef %113, ptr noundef nonnull %wc, ptr noundef nonnull %dp) #2
  br label %if.end146

if.else143:                                       ; preds = %if.then136
  %114 = load ptr, ptr %tif.addr, align 8
  %115 = load ptr, ptr %fip.addr, align 8
  %116 = load i64, ptr %115, align 8
  %call145 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %114, i64 noundef %116, ptr noundef nonnull %dp) #2
  br label %if.end146

if.end146:                                        ; preds = %if.else143, %if.then140
  %117 = load ptr, ptr %tif.addr, align 8
  %118 = load ptr, ptr %fip.addr, align 8
  %field_type147 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %118, i64 0, i32 3
  %119 = load i32, ptr %field_type147, align 4
  %120 = load i64, ptr %118, align 8
  %121 = load ptr, ptr %dir.addr, align 8
  %122 = load i16, ptr %wc, align 2
  %conv149 = zext i16 %122 to i64
  %123 = load ptr, ptr %dp, align 8
  %call150 = call i32 @TIFFWriteDoubleArray(ptr noundef %117, i32 noundef %119, i64 noundef %120, ptr noundef %121, i64 noundef %conv149, ptr noundef %123)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %if.then152, label %sw.epilog

if.then152:                                       ; preds = %if.end146
  store i32 0, ptr %retval, align 4
  br label %return

if.else154:                                       ; preds = %sw.bb132
  %124 = load ptr, ptr %tif.addr, align 8
  %125 = load ptr, ptr %fip.addr, align 8
  %126 = load i64, ptr %125, align 8
  %call156 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %124, i64 noundef %126, ptr noundef nonnull %dv) #2
  %field_type157 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %125, i64 0, i32 3
  %127 = load i32, ptr %field_type157, align 4
  %128 = load i64, ptr %125, align 8
  %129 = load ptr, ptr %dir.addr, align 8
  %130 = load i16, ptr %wc, align 2
  %conv159 = zext i16 %130 to i64
  %call160 = call i32 @TIFFWriteDoubleArray(ptr noundef %124, i32 noundef %127, i64 noundef %128, ptr noundef %129, i64 noundef %conv159, ptr noundef nonnull %dv)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.then162, label %sw.epilog

if.then162:                                       ; preds = %if.else154
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb165:                                         ; preds = %entry
  %131 = load ptr, ptr %tif.addr, align 8
  %132 = load ptr, ptr %fip.addr, align 8
  %133 = load i64, ptr %132, align 8
  %call167 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %131, i64 noundef %133, ptr noundef nonnull %cp) #2
  %134 = load ptr, ptr %cp, align 8
  %call168 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %134) #2
  %add = add i64 %call168, 1
  %135 = load ptr, ptr %dir.addr, align 8
  %tdir_count169 = getelementptr inbounds %struct.TIFFDirEntry, ptr %135, i64 0, i32 2
  store i64 %add, ptr %tdir_count169, align 8
  %136 = load ptr, ptr %tif.addr, align 8
  %137 = load ptr, ptr %cp, align 8
  %call170 = call i32 @TIFFWriteByteArray(ptr noundef %136, ptr noundef %135, ptr noundef %137)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.then172, label %sw.epilog

if.then172:                                       ; preds = %sw.bb165
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb174:                                         ; preds = %entry, %entry
  %138 = load i16, ptr %wc, align 2
  %cmp176 = icmp ugt i16 %138, 1
  br i1 %cmp176, label %if.then178, label %if.else196

if.then178:                                       ; preds = %sw.bb174
  %139 = load i16, ptr %wc, align 2
  %cmp181 = icmp eq i16 %139, -1
  br i1 %cmp181, label %if.then183, label %if.else188

if.then183:                                       ; preds = %if.then178
  %140 = load ptr, ptr %tif.addr, align 8
  %141 = load ptr, ptr %fip.addr, align 8
  %142 = load i64, ptr %141, align 8
  %call185 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %140, i64 noundef %142, ptr noundef nonnull %wc, ptr noundef nonnull %cp179) #2
  %143 = load i16, ptr %wc, align 2
  %conv186 = zext i16 %143 to i64
  %144 = load ptr, ptr %dir.addr, align 8
  %tdir_count187 = getelementptr inbounds %struct.TIFFDirEntry, ptr %144, i64 0, i32 2
  store i64 %conv186, ptr %tdir_count187, align 8
  br label %if.end191

if.else188:                                       ; preds = %if.then178
  %145 = load ptr, ptr %tif.addr, align 8
  %146 = load ptr, ptr %fip.addr, align 8
  %147 = load i64, ptr %146, align 8
  %call190 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %145, i64 noundef %147, ptr noundef nonnull %cp179) #2
  br label %if.end191

if.end191:                                        ; preds = %if.else188, %if.then183
  %148 = load ptr, ptr %tif.addr, align 8
  %149 = load ptr, ptr %dir.addr, align 8
  %150 = load ptr, ptr %cp179, align 8
  %call192 = call i32 @TIFFWriteByteArray(ptr noundef %148, ptr noundef %149, ptr noundef %150)
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %if.then194, label %sw.epilog

if.then194:                                       ; preds = %if.end191
  store i32 0, ptr %retval, align 4
  br label %return

if.else196:                                       ; preds = %sw.bb174
  %151 = load ptr, ptr %tif.addr, align 8
  %152 = load ptr, ptr %fip.addr, align 8
  %153 = load i64, ptr %152, align 8
  %call198 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %151, i64 noundef %153, ptr noundef nonnull %cv) #2
  %154 = load ptr, ptr %dir.addr, align 8
  %call199 = call i32 @TIFFWriteByteArray(ptr noundef %151, ptr noundef %154, ptr noundef nonnull %cv)
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %if.then201, label %sw.epilog

if.then201:                                       ; preds = %if.else196
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb204:                                         ; preds = %entry
  %155 = load i16, ptr %wc, align 2
  %cmp207 = icmp eq i16 %155, -1
  br i1 %cmp207, label %if.then209, label %if.else214

if.then209:                                       ; preds = %sw.bb204
  %156 = load ptr, ptr %tif.addr, align 8
  %157 = load ptr, ptr %fip.addr, align 8
  %158 = load i64, ptr %157, align 8
  %call211 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %156, i64 noundef %158, ptr noundef nonnull %wc, ptr noundef nonnull %cp205) #2
  %159 = load i16, ptr %wc, align 2
  %conv212 = zext i16 %159 to i64
  %160 = load ptr, ptr %dir.addr, align 8
  %tdir_count213 = getelementptr inbounds %struct.TIFFDirEntry, ptr %160, i64 0, i32 2
  store i64 %conv212, ptr %tdir_count213, align 8
  br label %if.end226

if.else214:                                       ; preds = %sw.bb204
  %161 = load i16, ptr %wc, align 2
  %cmp216 = icmp eq i16 %161, -3
  br i1 %cmp216, label %if.then218, label %if.else222

if.then218:                                       ; preds = %if.else214
  %162 = load ptr, ptr %tif.addr, align 8
  %163 = load ptr, ptr %fip.addr, align 8
  %164 = load i64, ptr %163, align 8
  %call220 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %162, i64 noundef %164, ptr noundef nonnull %wc2, ptr noundef nonnull %cp205) #2
  %165 = load i64, ptr %wc2, align 8
  %166 = load ptr, ptr %dir.addr, align 8
  %tdir_count221 = getelementptr inbounds %struct.TIFFDirEntry, ptr %166, i64 0, i32 2
  store i64 %165, ptr %tdir_count221, align 8
  br label %if.end226

if.else222:                                       ; preds = %if.else214
  %167 = load ptr, ptr %tif.addr, align 8
  %168 = load ptr, ptr %fip.addr, align 8
  %169 = load i64, ptr %168, align 8
  %call224 = call i32 (ptr, i64, ...) @TIFFGetField(ptr noundef %167, i64 noundef %169, ptr noundef nonnull %cp205) #2
  br label %if.end226

if.end226:                                        ; preds = %if.then218, %if.else222, %if.then209
  %170 = load ptr, ptr %tif.addr, align 8
  %171 = load ptr, ptr %dir.addr, align 8
  %172 = load ptr, ptr %cp205, align 8
  %call227 = call i32 @TIFFWriteByteArray(ptr noundef %170, ptr noundef %171, ptr noundef %172)
  %tobool228.not = icmp eq i32 %call227, 0
  br i1 %tobool228.not, label %if.then229, label %sw.epilog

if.then229:                                       ; preds = %if.end226
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end226, %if.end191, %if.else196, %sw.bb165, %if.end146, %if.else154, %if.end112, %if.else120, %if.end78, %if.else86, %if.else59, %if.end51, %cond.end, %if.end, %entry
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then229, %if.then201, %if.then194, %if.then172, %if.then162, %if.then152, %if.then129, %if.then118, %if.then94, %if.then84, %if.then57, %if.then17
  %173 = load i32, ptr %retval, align 4
  ret i32 %173
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
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  %conv = trunc i64 %tag to i16
  store i16 %conv, ptr %dir, align 8
  %conv1 = trunc i32 %type to i16
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 1
  store i16 %conv1, ptr %tdir_type, align 2
  %0 = load i64, ptr %n.addr, align 8
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  store i64 %0, ptr %tdir_count, align 8
  %cmp = icmp ult i64 %0, 3
  br i1 %cmp, label %if.then, label %if.else30

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 7
  %3 = load i16, ptr %tif_header, align 8
  %cmp4 = icmp eq i16 %3, 19789
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  %4 = load ptr, ptr %v.addr, align 8
  %5 = load i16, ptr %4, align 2
  %conv7 = zext i16 %5 to i64
  %shl = shl nuw nsw i64 %conv7, 16
  %6 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %6, i64 0, i32 3
  store i64 %shl, ptr %tdir_offset, align 8
  %7 = load i64, ptr %n.addr, align 8
  %cmp8 = icmp eq i64 %7, 2
  br i1 %cmp8, label %if.then10, label %return

if.then10:                                        ; preds = %if.then6
  %8 = load ptr, ptr %v.addr, align 8
  %arrayidx11 = getelementptr inbounds i16, ptr %8, i64 1
  %9 = load i16, ptr %arrayidx11, align 2
  %conv13 = zext i16 %9 to i64
  %10 = load ptr, ptr %dir.addr, align 8
  %tdir_offset14 = getelementptr inbounds %struct.TIFFDirEntry, ptr %10, i64 0, i32 3
  %11 = load i64, ptr %tdir_offset14, align 8
  %or = or i64 %11, %conv13
  store i64 %or, ptr %tdir_offset14, align 8
  br label %return

if.else:                                          ; preds = %if.then
  %12 = load ptr, ptr %v.addr, align 8
  %13 = load i16, ptr %12, align 2
  %conv18 = zext i16 %13 to i64
  %14 = load ptr, ptr %dir.addr, align 8
  %tdir_offset19 = getelementptr inbounds %struct.TIFFDirEntry, ptr %14, i64 0, i32 3
  store i64 %conv18, ptr %tdir_offset19, align 8
  %15 = load i64, ptr %n.addr, align 8
  %cmp20 = icmp eq i64 %15, 2
  br i1 %cmp20, label %if.then22, label %return

if.then22:                                        ; preds = %if.else
  %16 = load ptr, ptr %v.addr, align 8
  %arrayidx23 = getelementptr inbounds i16, ptr %16, i64 1
  %17 = load i16, ptr %arrayidx23, align 2
  %conv24 = zext i16 %17 to i64
  %shl25 = shl nuw nsw i64 %conv24, 16
  %18 = load ptr, ptr %dir.addr, align 8
  %tdir_offset26 = getelementptr inbounds %struct.TIFFDirEntry, ptr %18, i64 0, i32 3
  %19 = load i64, ptr %tdir_offset26, align 8
  %or27 = or i64 %19, %shl25
  store i64 %or27, ptr %tdir_offset26, align 8
  br label %return

if.else30:                                        ; preds = %entry
  %20 = load ptr, ptr %tif.addr, align 8
  %21 = load ptr, ptr %dir.addr, align 8
  %22 = load ptr, ptr %v.addr, align 8
  %call = call i32 @TIFFWriteData(ptr noundef %20, ptr noundef %21, ptr noundef %22)
  br label %return

return:                                           ; preds = %if.then10, %if.then6, %if.then22, %if.else, %if.else30
  %storemerge = phi i32 [ %call, %if.else30 ], [ 1, %if.else ], [ 1, %if.then22 ], [ 1, %if.then6 ], [ 1, %if.then10 ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFWriteFloatArray(ptr noundef %tif, i32 noundef %type, i64 noundef %tag, ptr noundef %dir, i64 noundef %n, ptr noundef %v) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  %conv = trunc i64 %tag to i16
  store i16 %conv, ptr %dir, align 8
  %conv1 = trunc i32 %type to i16
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 1
  store i16 %conv1, ptr %tdir_type, align 2
  %0 = load i64, ptr %n.addr, align 8
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  store i64 %0, ptr %tdir_count, align 8
  %cmp = icmp eq i64 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %v.addr, align 8
  %3 = load i64, ptr %2, align 8
  %4 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %4, i64 0, i32 3
  store i64 %3, ptr %tdir_offset, align 8
  br label %return

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load ptr, ptr %dir.addr, align 8
  %7 = load ptr, ptr %v.addr, align 8
  %call = call i32 @TIFFWriteData(ptr noundef %5, ptr noundef %6, ptr noundef %7)
  br label %return

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %call, %if.else ], [ 1, %if.then ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFWriteDoubleArray(ptr noundef %tif, i32 noundef %type, i64 noundef %tag, ptr noundef %dir, i64 noundef %n, ptr noundef %v) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  %conv = trunc i64 %tag to i16
  store i16 %conv, ptr %dir, align 8
  %conv1 = trunc i32 %type to i16
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 1
  store i16 %conv1, ptr %tdir_type, align 2
  %0 = load i64, ptr %n.addr, align 8
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  store i64 %0, ptr %tdir_count, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load ptr, ptr %v.addr, align 8
  %call = call i32 @TIFFWriteData(ptr noundef %2, ptr noundef %1, ptr noundef %3)
  ret i32 %call
}

declare i64 @strlen(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFWriteByteArray(ptr noundef %tif, ptr noundef %dir, ptr noundef %cp) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 2
  %0 = load i64, ptr %tdir_count, align 8
  %cmp = icmp ugt i64 %0, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %2 = load ptr, ptr %dir.addr, align 8
  %3 = load ptr, ptr %cp.addr, align 8
  %call = call i32 @TIFFWriteData(ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end3

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %4, i64 0, i32 3
  %5 = load ptr, ptr %cp.addr, align 8
  %tdir_count2 = getelementptr inbounds %struct.TIFFDirEntry, ptr %4, i64 0, i32 2
  %6 = load i64, ptr %tdir_count2, align 8
  call void @_TIFFmemcpy(ptr noundef nonnull %tdir_offset, ptr noundef %5, i64 noundef %6) #2
  br label %if.end3

if.end3:                                          ; preds = %if.then, %if.else
  br label %return

return:                                           ; preds = %if.then, %if.end3
  %storemerge = phi i32 [ 1, %if.end3 ], [ 0, %if.then ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFWriteData(ptr noundef %tif, ptr noundef %dir, ptr noundef %cp) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %cc = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 3
  %0 = load i64, ptr %tif_flags, align 8
  %and = and i64 %0, 128
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 1
  %2 = load i16, ptr %tdir_type, align 2
  switch i16 %2, label %if.end [
    i16 3, label %sw.bb
    i16 8, label %sw.bb
    i16 4, label %sw.bb1
    i16 9, label %sw.bb1
    i16 11, label %sw.bb1
    i16 5, label %sw.bb3
    i16 10, label %sw.bb3
    i16 12, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.then, %if.then
  %3 = load ptr, ptr %cp.addr, align 8
  %4 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %4, i64 0, i32 2
  %5 = load i64, ptr %tdir_count, align 8
  call void @TIFFSwabArrayOfShort(ptr noundef %3, i64 noundef %5) #2
  br label %if.end

sw.bb1:                                           ; preds = %if.then, %if.then, %if.then
  %6 = load ptr, ptr %cp.addr, align 8
  %7 = load ptr, ptr %dir.addr, align 8
  %tdir_count2 = getelementptr inbounds %struct.TIFFDirEntry, ptr %7, i64 0, i32 2
  %8 = load i64, ptr %tdir_count2, align 8
  call void @TIFFSwabArrayOfLong(ptr noundef %6, i64 noundef %8) #2
  br label %if.end

sw.bb3:                                           ; preds = %if.then, %if.then
  %9 = load ptr, ptr %cp.addr, align 8
  %10 = load ptr, ptr %dir.addr, align 8
  %tdir_count4 = getelementptr inbounds %struct.TIFFDirEntry, ptr %10, i64 0, i32 2
  %11 = load i64, ptr %tdir_count4, align 8
  %mul = shl i64 %11, 1
  call void @TIFFSwabArrayOfLong(ptr noundef %9, i64 noundef %mul) #2
  br label %if.end

sw.bb5:                                           ; preds = %if.then
  %12 = load ptr, ptr %cp.addr, align 8
  %13 = load ptr, ptr %dir.addr, align 8
  %tdir_count6 = getelementptr inbounds %struct.TIFFDirEntry, ptr %13, i64 0, i32 2
  %14 = load i64, ptr %tdir_count6, align 8
  call void @TIFFSwabArrayOfDouble(ptr noundef %12, i64 noundef %14) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb, %sw.bb1, %sw.bb3, %sw.bb5, %entry
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_dataoff = getelementptr inbounds %struct.tiff, ptr %15, i64 0, i32 15
  %16 = load i64, ptr %tif_dataoff, align 8
  %17 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %17, i64 0, i32 3
  store i64 %16, ptr %tdir_offset, align 8
  %tdir_count7 = getelementptr inbounds %struct.TIFFDirEntry, ptr %17, i64 0, i32 2
  %18 = load i64, ptr %tdir_count7, align 8
  %tdir_type8 = getelementptr inbounds %struct.TIFFDirEntry, ptr %17, i64 0, i32 1
  %19 = load i16, ptr %tdir_type8, align 2
  %idxprom = zext i16 %19 to i64
  %arrayidx = getelementptr inbounds [0 x i32], ptr @tiffDataWidth, i64 0, i64 %idxprom
  %20 = load i32, ptr %arrayidx, align 4
  %conv9 = sext i32 %20 to i64
  %mul10 = mul i64 %18, %conv9
  store i64 %mul10, ptr %cc, align 8
  %21 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %21, i64 0, i32 51
  %22 = load ptr, ptr %tif_seekproc, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %21, i64 0, i32 48
  %23 = load ptr, ptr %tif_clientdata, align 8
  %24 = load ptr, ptr %dir.addr, align 8
  %tdir_offset11 = getelementptr inbounds %struct.TIFFDirEntry, ptr %24, i64 0, i32 3
  %25 = load i64, ptr %tdir_offset11, align 8
  %call = call i64 %22(ptr noundef %23, i64 noundef %25, i32 noundef 0) #2
  %tdir_offset12 = getelementptr inbounds %struct.TIFFDirEntry, ptr %24, i64 0, i32 3
  %26 = load i64, ptr %tdir_offset12, align 8
  %cmp = icmp eq i64 %call, %26
  br i1 %cmp, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %if.end
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 50
  %28 = load ptr, ptr %tif_writeproc, align 8
  %tif_clientdata14 = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 48
  %29 = load ptr, ptr %tif_clientdata14, align 8
  %30 = load ptr, ptr %cp.addr, align 8
  %31 = load i64, ptr %cc, align 8
  %call15 = call i64 %28(ptr noundef %29, ptr noundef %30, i64 noundef %31) #2
  %cmp16 = icmp eq i64 %call15, %31
  br i1 %cmp16, label %if.then18, label %if.end22

if.then18:                                        ; preds = %land.lhs.true
  %32 = load i64, ptr %cc, align 8
  %add = add nsw i64 %32, 1
  %and19 = and i64 %add, -2
  %33 = load ptr, ptr %tif.addr, align 8
  %tif_dataoff20 = getelementptr inbounds %struct.tiff, ptr %33, i64 0, i32 15
  %34 = load i64, ptr %tif_dataoff20, align 8
  %add21 = add nsw i64 %34, %and19
  store i64 %add21, ptr %tif_dataoff20, align 8
  br label %return

if.end22:                                         ; preds = %land.lhs.true, %if.end
  %35 = load ptr, ptr %tif.addr, align 8
  %36 = load ptr, ptr %35, align 8
  %37 = load ptr, ptr %dir.addr, align 8
  %38 = load i16, ptr %37, align 8
  %conv23 = zext i16 %38 to i64
  %call24 = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %35, i64 noundef %conv23) #2
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call24, i64 0, i32 7
  %39 = load ptr, ptr %field_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %36, ptr noundef nonnull @.str.6, ptr noundef %39) #2
  br label %return

return:                                           ; preds = %if.end22, %if.then18
  %storemerge = phi i32 [ 0, %if.end22 ], [ 1, %if.then18 ]
  ret i32 %storemerge
}

declare void @TIFFSwabArrayOfDouble(ptr noundef, i64 noundef) #1

declare ptr @_TIFFFieldWithTag(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFWriteAnyArray(ptr noundef %tif, i32 noundef %type, i64 noundef %tag, ptr noundef %dir, i64 noundef %n, ptr noundef %v) #0 {
entry:
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
  store ptr %buf, ptr %w, align 8
  store i32 0, ptr %status, align 4
  %0 = load i32, ptr %type.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [0 x i32], ptr @tiffDataWidth, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, %n
  %cmp = icmp ugt i64 %mul, 80
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %n.addr, align 8
  %3 = load i32, ptr %type.addr, align 4
  %idxprom2 = zext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [0 x i32], ptr @tiffDataWidth, i64 0, i64 %idxprom2
  %4 = load i32, ptr %arrayidx3, align 4
  %conv4 = sext i32 %4 to i64
  %mul5 = mul i64 %2, %conv4
  %call = call ptr @_TIFFmalloc(i64 noundef %mul5) #2
  store ptr %call, ptr %w, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %type.addr, align 4
  switch i32 %5, label %out [
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
  %6 = load ptr, ptr %w, align 8
  store ptr %6, ptr %bp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %sw.bb
  %storemerge7 = phi i32 [ 0, %sw.bb ], [ %inc, %for.body ]
  store i32 %storemerge7, ptr %i, align 4
  %7 = load i64, ptr %n.addr, align 8
  %conv6 = trunc i64 %7 to i32
  %cmp7 = icmp slt i32 %storemerge7, %conv6
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %v.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds double, ptr %8, i64 %idxprom9
  %10 = load double, ptr %arrayidx10, align 8
  %conv11 = fptoui double %10 to i8
  %11 = load ptr, ptr %bp, align 8
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %11, i64 %idxprom12
  store i8 %conv11, ptr %arrayidx13, align 1
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %13 = load i64, ptr %tag.addr, align 8
  %conv14 = trunc i64 %13 to i16
  %14 = load ptr, ptr %dir.addr, align 8
  store i16 %conv14, ptr %14, align 8
  %15 = load i32, ptr %type.addr, align 4
  %conv15 = trunc i32 %15 to i16
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %14, i64 0, i32 1
  store i16 %conv15, ptr %tdir_type, align 2
  %16 = load i64, ptr %n.addr, align 8
  %17 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %17, i64 0, i32 2
  store i64 %16, ptr %tdir_count, align 8
  %18 = load ptr, ptr %tif.addr, align 8
  %19 = load ptr, ptr %bp, align 8
  %call16 = call i32 @TIFFWriteByteArray(ptr noundef %18, ptr noundef %17, ptr noundef %19)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %out, label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  %20 = load ptr, ptr %w, align 8
  store ptr %20, ptr %bp20, align 8
  br label %for.cond21

for.cond21:                                       ; preds = %for.body25, %sw.bb19
  %storemerge6 = phi i32 [ 0, %sw.bb19 ], [ %inc32, %for.body25 ]
  store i32 %storemerge6, ptr %i, align 4
  %21 = load i64, ptr %n.addr, align 8
  %conv22 = trunc i64 %21 to i32
  %cmp23 = icmp slt i32 %storemerge6, %conv22
  br i1 %cmp23, label %for.body25, label %for.end33

for.body25:                                       ; preds = %for.cond21
  %22 = load ptr, ptr %v.addr, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %23 to i64
  %arrayidx27 = getelementptr inbounds double, ptr %22, i64 %idxprom26
  %24 = load double, ptr %arrayidx27, align 8
  %conv28 = fptosi double %24 to i8
  %25 = load ptr, ptr %bp20, align 8
  %idxprom29 = sext i32 %23 to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %25, i64 %idxprom29
  store i8 %conv28, ptr %arrayidx30, align 1
  %26 = load i32, ptr %i, align 4
  %inc32 = add nsw i32 %26, 1
  br label %for.cond21, !llvm.loop !17

for.end33:                                        ; preds = %for.cond21
  %27 = load i64, ptr %tag.addr, align 8
  %conv34 = trunc i64 %27 to i16
  %28 = load ptr, ptr %dir.addr, align 8
  store i16 %conv34, ptr %28, align 8
  %29 = load i32, ptr %type.addr, align 4
  %conv36 = trunc i32 %29 to i16
  %tdir_type37 = getelementptr inbounds %struct.TIFFDirEntry, ptr %28, i64 0, i32 1
  store i16 %conv36, ptr %tdir_type37, align 2
  %30 = load i64, ptr %n.addr, align 8
  %31 = load ptr, ptr %dir.addr, align 8
  %tdir_count38 = getelementptr inbounds %struct.TIFFDirEntry, ptr %31, i64 0, i32 2
  store i64 %30, ptr %tdir_count38, align 8
  %32 = load ptr, ptr %tif.addr, align 8
  %33 = load ptr, ptr %bp20, align 8
  %call39 = call i32 @TIFFWriteByteArray(ptr noundef %32, ptr noundef %31, ptr noundef %33)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %out, label %sw.epilog

sw.bb43:                                          ; preds = %if.end
  %34 = load ptr, ptr %w, align 8
  store ptr %34, ptr %bp44, align 8
  br label %for.cond45

for.cond45:                                       ; preds = %for.body49, %sw.bb43
  %storemerge5 = phi i32 [ 0, %sw.bb43 ], [ %inc56, %for.body49 ]
  store i32 %storemerge5, ptr %i, align 4
  %35 = load i64, ptr %n.addr, align 8
  %conv46 = trunc i64 %35 to i32
  %cmp47 = icmp slt i32 %storemerge5, %conv46
  br i1 %cmp47, label %for.body49, label %for.end57

for.body49:                                       ; preds = %for.cond45
  %36 = load ptr, ptr %v.addr, align 8
  %37 = load i32, ptr %i, align 4
  %idxprom50 = sext i32 %37 to i64
  %arrayidx51 = getelementptr inbounds double, ptr %36, i64 %idxprom50
  %38 = load double, ptr %arrayidx51, align 8
  %conv52 = fptoui double %38 to i16
  %39 = load ptr, ptr %bp44, align 8
  %idxprom53 = sext i32 %37 to i64
  %arrayidx54 = getelementptr inbounds i16, ptr %39, i64 %idxprom53
  store i16 %conv52, ptr %arrayidx54, align 2
  %40 = load i32, ptr %i, align 4
  %inc56 = add nsw i32 %40, 1
  br label %for.cond45, !llvm.loop !18

for.end57:                                        ; preds = %for.cond45
  %41 = load ptr, ptr %tif.addr, align 8
  %42 = load i32, ptr %type.addr, align 4
  %43 = load i64, ptr %tag.addr, align 8
  %44 = load ptr, ptr %dir.addr, align 8
  %45 = load i64, ptr %n.addr, align 8
  %46 = load ptr, ptr %bp44, align 8
  %call58 = call i32 @TIFFWriteShortArray(ptr noundef %41, i32 noundef %42, i64 noundef %43, ptr noundef %44, i64 noundef %45, ptr noundef %46)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %out, label %sw.epilog

sw.bb62:                                          ; preds = %if.end
  %47 = load ptr, ptr %w, align 8
  store ptr %47, ptr %bp63, align 8
  br label %for.cond64

for.cond64:                                       ; preds = %for.body68, %sw.bb62
  %storemerge4 = phi i32 [ 0, %sw.bb62 ], [ %inc75, %for.body68 ]
  store i32 %storemerge4, ptr %i, align 4
  %48 = load i64, ptr %n.addr, align 8
  %conv65 = trunc i64 %48 to i32
  %cmp66 = icmp slt i32 %storemerge4, %conv65
  br i1 %cmp66, label %for.body68, label %for.end76

for.body68:                                       ; preds = %for.cond64
  %49 = load ptr, ptr %v.addr, align 8
  %50 = load i32, ptr %i, align 4
  %idxprom69 = sext i32 %50 to i64
  %arrayidx70 = getelementptr inbounds double, ptr %49, i64 %idxprom69
  %51 = load double, ptr %arrayidx70, align 8
  %conv71 = fptosi double %51 to i16
  %52 = load ptr, ptr %bp63, align 8
  %idxprom72 = sext i32 %50 to i64
  %arrayidx73 = getelementptr inbounds i16, ptr %52, i64 %idxprom72
  store i16 %conv71, ptr %arrayidx73, align 2
  %53 = load i32, ptr %i, align 4
  %inc75 = add nsw i32 %53, 1
  br label %for.cond64, !llvm.loop !19

for.end76:                                        ; preds = %for.cond64
  %54 = load ptr, ptr %tif.addr, align 8
  %55 = load i32, ptr %type.addr, align 4
  %56 = load i64, ptr %tag.addr, align 8
  %57 = load ptr, ptr %dir.addr, align 8
  %58 = load i64, ptr %n.addr, align 8
  %59 = load ptr, ptr %bp63, align 8
  %call77 = call i32 @TIFFWriteShortArray(ptr noundef %54, i32 noundef %55, i64 noundef %56, ptr noundef %57, i64 noundef %58, ptr noundef %59)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %out, label %sw.epilog

sw.bb81:                                          ; preds = %if.end
  %60 = load ptr, ptr %w, align 8
  store ptr %60, ptr %bp82, align 8
  br label %for.cond83

for.cond83:                                       ; preds = %for.body87, %sw.bb81
  %storemerge3 = phi i32 [ 0, %sw.bb81 ], [ %inc94, %for.body87 ]
  store i32 %storemerge3, ptr %i, align 4
  %61 = load i64, ptr %n.addr, align 8
  %conv84 = trunc i64 %61 to i32
  %cmp85 = icmp slt i32 %storemerge3, %conv84
  br i1 %cmp85, label %for.body87, label %for.end95

for.body87:                                       ; preds = %for.cond83
  %62 = load ptr, ptr %v.addr, align 8
  %63 = load i32, ptr %i, align 4
  %idxprom88 = sext i32 %63 to i64
  %arrayidx89 = getelementptr inbounds double, ptr %62, i64 %idxprom88
  %64 = load double, ptr %arrayidx89, align 8
  %conv90 = fptoui double %64 to i64
  %65 = load ptr, ptr %bp82, align 8
  %idxprom91 = sext i32 %63 to i64
  %arrayidx92 = getelementptr inbounds i64, ptr %65, i64 %idxprom91
  store i64 %conv90, ptr %arrayidx92, align 8
  %66 = load i32, ptr %i, align 4
  %inc94 = add nsw i32 %66, 1
  br label %for.cond83, !llvm.loop !20

for.end95:                                        ; preds = %for.cond83
  %67 = load ptr, ptr %tif.addr, align 8
  %68 = load i32, ptr %type.addr, align 4
  %69 = load i64, ptr %tag.addr, align 8
  %70 = load ptr, ptr %dir.addr, align 8
  %71 = load i64, ptr %n.addr, align 8
  %72 = load ptr, ptr %bp82, align 8
  %call96 = call i32 @TIFFWriteLongArray(ptr noundef %67, i32 noundef %68, i64 noundef %69, ptr noundef %70, i64 noundef %71, ptr noundef %72)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %out, label %sw.epilog

sw.bb100:                                         ; preds = %if.end
  %73 = load ptr, ptr %w, align 8
  store ptr %73, ptr %bp101, align 8
  br label %for.cond102

for.cond102:                                      ; preds = %for.body106, %sw.bb100
  %storemerge2 = phi i32 [ 0, %sw.bb100 ], [ %inc113, %for.body106 ]
  store i32 %storemerge2, ptr %i, align 4
  %74 = load i64, ptr %n.addr, align 8
  %conv103 = trunc i64 %74 to i32
  %cmp104 = icmp slt i32 %storemerge2, %conv103
  br i1 %cmp104, label %for.body106, label %for.end114

for.body106:                                      ; preds = %for.cond102
  %75 = load ptr, ptr %v.addr, align 8
  %76 = load i32, ptr %i, align 4
  %idxprom107 = sext i32 %76 to i64
  %arrayidx108 = getelementptr inbounds double, ptr %75, i64 %idxprom107
  %77 = load double, ptr %arrayidx108, align 8
  %conv109 = fptosi double %77 to i64
  %78 = load ptr, ptr %bp101, align 8
  %idxprom110 = sext i32 %76 to i64
  %arrayidx111 = getelementptr inbounds i64, ptr %78, i64 %idxprom110
  store i64 %conv109, ptr %arrayidx111, align 8
  %79 = load i32, ptr %i, align 4
  %inc113 = add nsw i32 %79, 1
  br label %for.cond102, !llvm.loop !21

for.end114:                                       ; preds = %for.cond102
  %80 = load ptr, ptr %tif.addr, align 8
  %81 = load i32, ptr %type.addr, align 4
  %82 = load i64, ptr %tag.addr, align 8
  %83 = load ptr, ptr %dir.addr, align 8
  %84 = load i64, ptr %n.addr, align 8
  %85 = load ptr, ptr %bp101, align 8
  %call115 = call i32 @TIFFWriteLongArray(ptr noundef %80, i32 noundef %81, i64 noundef %82, ptr noundef %83, i64 noundef %84, ptr noundef %85)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %out, label %sw.epilog

sw.bb119:                                         ; preds = %if.end
  %86 = load ptr, ptr %w, align 8
  store ptr %86, ptr %bp120, align 8
  br label %for.cond121

for.cond121:                                      ; preds = %for.body125, %sw.bb119
  %storemerge1 = phi i32 [ 0, %sw.bb119 ], [ %inc132, %for.body125 ]
  store i32 %storemerge1, ptr %i, align 4
  %87 = load i64, ptr %n.addr, align 8
  %conv122 = trunc i64 %87 to i32
  %cmp123 = icmp slt i32 %storemerge1, %conv122
  br i1 %cmp123, label %for.body125, label %for.end133

for.body125:                                      ; preds = %for.cond121
  %88 = load ptr, ptr %v.addr, align 8
  %89 = load i32, ptr %i, align 4
  %idxprom126 = sext i32 %89 to i64
  %arrayidx127 = getelementptr inbounds double, ptr %88, i64 %idxprom126
  %90 = load double, ptr %arrayidx127, align 8
  %conv128 = fptrunc double %90 to float
  %91 = load ptr, ptr %bp120, align 8
  %idxprom129 = sext i32 %89 to i64
  %arrayidx130 = getelementptr inbounds float, ptr %91, i64 %idxprom129
  store float %conv128, ptr %arrayidx130, align 4
  %92 = load i32, ptr %i, align 4
  %inc132 = add nsw i32 %92, 1
  br label %for.cond121, !llvm.loop !22

for.end133:                                       ; preds = %for.cond121
  %93 = load ptr, ptr %tif.addr, align 8
  %94 = load i32, ptr %type.addr, align 4
  %95 = load i64, ptr %tag.addr, align 8
  %96 = load ptr, ptr %dir.addr, align 8
  %97 = load i64, ptr %n.addr, align 8
  %98 = load ptr, ptr %bp120, align 8
  %call134 = call i32 @TIFFWriteFloatArray(ptr noundef %93, i32 noundef %94, i64 noundef %95, ptr noundef %96, i64 noundef %97, ptr noundef %98)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %out, label %sw.epilog

sw.bb138:                                         ; preds = %if.end
  %99 = load ptr, ptr %tif.addr, align 8
  %100 = load i32, ptr %type.addr, align 4
  %101 = load i64, ptr %tag.addr, align 8
  %102 = load ptr, ptr %dir.addr, align 8
  %103 = load i64, ptr %n.addr, align 8
  %104 = load ptr, ptr %v.addr, align 8
  %call139 = call i32 @TIFFWriteDoubleArray(ptr noundef %99, i32 noundef %100, i64 noundef %101, ptr noundef %102, i64 noundef %103, ptr noundef %104)
  br label %return

sw.epilog:                                        ; preds = %for.end133, %for.end114, %for.end95, %for.end76, %for.end57, %for.end33, %for.end
  store i32 1, ptr %status, align 4
  br label %out

out:                                              ; preds = %if.end, %for.end133, %for.end114, %for.end95, %for.end76, %for.end57, %for.end33, %for.end, %sw.epilog
  %105 = load ptr, ptr %w, align 8
  %cmp141.not = icmp eq ptr %105, %buf
  br i1 %cmp141.not, label %if.end144, label %if.then143

if.then143:                                       ; preds = %out
  %106 = load ptr, ptr %w, align 8
  call void @_TIFFfree(ptr noundef %106) #2
  br label %if.end144

if.end144:                                        ; preds = %if.then143, %out
  %107 = load i32, ptr %status, align 4
  br label %return

return:                                           ; preds = %if.end144, %sw.bb138
  %storemerge = phi i32 [ %call139, %sw.bb138 ], [ %107, %if.end144 ]
  ret i32 %storemerge
}

declare void @TIFFWarning(ptr noundef, ptr noundef, ...) #1

declare i32 @_TIFFmemcmp(ptr noundef, ptr noundef, i64 noundef) #1

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
