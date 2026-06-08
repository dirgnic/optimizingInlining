; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_rl_value_proxy/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-tiff2bw_tif_dirwrite.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2bw/tif_dirwrite.c"
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

; Function Attrs: nounwind ssp uwtable
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
  %2 = load i32, ptr %tif_flags, align 8
  %and = and i32 %2, 4096
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %if.then1

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_flags2 = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 3
  %4 = load i32, ptr %tif_flags2, align 8
  %and3 = and i32 %4, -4097
  store i32 %and3, ptr %tif_flags2, align 8
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
  %11 = load i32, ptr %tif_rawcc, align 8
  %cmp8 = icmp sgt i32 %11, 0
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
  %16 = load i32, ptr %tif_flags14, align 8
  %and15 = and i32 %16, 512
  %tobool16.not = icmp eq i32 %and15, 0
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
  store i32 0, ptr %tif_rawcc22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %land.lhs.true17, %if.end13
  %21 = load ptr, ptr %tif.addr, align 8
  %tif_flags24 = getelementptr inbounds %struct.tiff, ptr %21, i64 0, i32 3
  %22 = load i32, ptr %tif_flags24, align 8
  %and25 = and i32 %22, -81
  store i32 %and25, ptr %tif_flags24, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %21, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  store i32 0, ptr %nfields, align 4
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
  %div2 = lshr i64 %24, 5
  %arrayidx = getelementptr inbounds [3 x i64], ptr %tif_dir27, i64 0, i64 %div2
  %25 = load i64, ptr %arrayidx, align 8
  %and28 = and i64 %24, 31
  %shl = shl i64 1, %and28
  %and29 = and i64 %25, %shl
  %tobool30.not = icmp eq i64 %and29, 0
  br i1 %tobool30.not, label %for.inc, label %if.then31

if.then31:                                        ; preds = %for.body
  %26 = load i64, ptr %b, align 8
  %cmp32 = icmp ult i64 %26, 5
  %cond = select i1 %cmp32, i32 2, i32 1
  %27 = load i32, ptr %nfields, align 4
  %add = add i32 %27, %cond
  store i32 %add, ptr %nfields, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then31
  %28 = load i64, ptr %b, align 8
  %inc = add i64 %28, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %29 = load i32, ptr %nfields, align 4
  %mul = mul i32 %29, 12
  store i32 %mul, ptr %dirsize, align 4
  %call35 = call ptr @_TIFFmalloc(i32 noundef %mul) #2
  store ptr %call35, ptr %data, align 8
  %cmp36 = icmp eq ptr %call35, null
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %for.end
  %30 = load ptr, ptr %tif.addr, align 8
  %31 = load ptr, ptr %30, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %31, ptr noundef nonnull @.str.2) #2
  store i32 0, ptr %retval, align 4
  br label %return

if.end40:                                         ; preds = %for.end
  %32 = load ptr, ptr %tif.addr, align 8
  %tif_diroff = getelementptr inbounds %struct.tiff, ptr %32, i64 0, i32 4
  %33 = load i32, ptr %tif_diroff, align 4
  %cmp41 = icmp eq i32 %33, 0
  br i1 %cmp41, label %land.lhs.true43, label %if.end47

land.lhs.true43:                                  ; preds = %if.end40
  %34 = load ptr, ptr %tif.addr, align 8
  %call44 = call i32 @TIFFLinkDirectory(ptr noundef %34)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %bad, label %if.end47

if.end47:                                         ; preds = %land.lhs.true43, %if.end40
  %35 = load ptr, ptr %tif.addr, align 8
  %tif_diroff48 = getelementptr inbounds %struct.tiff, ptr %35, i64 0, i32 4
  %36 = load i32, ptr %tif_diroff48, align 4
  %add50 = add i32 %36, 2
  %37 = load i32, ptr %dirsize, align 4
  %add52 = add i32 %add50, %37
  %add53 = add i32 %add52, 4
  %38 = load ptr, ptr %tif.addr, align 8
  %tif_dataoff = getelementptr inbounds %struct.tiff, ptr %38, i64 0, i32 15
  store i32 %add53, ptr %tif_dataoff, align 8
  %and56 = and i32 %add52, 1
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end61, label %if.then58

if.then58:                                        ; preds = %if.end47
  %39 = load ptr, ptr %tif.addr, align 8
  %tif_dataoff59 = getelementptr inbounds %struct.tiff, ptr %39, i64 0, i32 15
  %40 = load i32, ptr %tif_dataoff59, align 8
  %inc60 = add nsw i32 %40, 1
  store i32 %inc60, ptr %tif_dataoff59, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end47
  %41 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %41, i64 0, i32 51
  %42 = load ptr, ptr %tif_seekproc, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %41, i64 0, i32 48
  %43 = load ptr, ptr %tif_clientdata, align 8
  %tif_dataoff62 = getelementptr inbounds %struct.tiff, ptr %41, i64 0, i32 15
  %44 = load i32, ptr %tif_dataoff62, align 8
  %call63 = call i32 %42(ptr noundef %43, i32 noundef %44, i32 noundef 0) #2
  %45 = load ptr, ptr %tif.addr, align 8
  %tif_curdir = getelementptr inbounds %struct.tiff, ptr %45, i64 0, i32 12
  %46 = load i16, ptr %tif_curdir, align 4
  %inc64 = add i16 %46, 1
  store i16 %inc64, ptr %tif_curdir, align 4
  %47 = load ptr, ptr %data, align 8
  store ptr %47, ptr %dir, align 8
  %48 = load ptr, ptr %td, align 8
  call void @_TIFFmemcpy(ptr noundef nonnull %fields, ptr noundef %48, i32 noundef 24) #2
  %49 = load i64, ptr %fields, align 8
  %and68 = and i64 %49, 2147483648
  %tobool69.not = icmp eq i64 %and68, 0
  br i1 %tobool69.not, label %if.end77, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %if.end61
  %50 = load ptr, ptr %td, align 8
  %td_extrasamples = getelementptr inbounds %struct.TIFFDirectory, ptr %50, i64 0, i32 30
  %51 = load i16, ptr %td_extrasamples, align 4
  %tobool71.not = icmp eq i16 %51, 0
  br i1 %tobool71.not, label %if.then72, label %if.end77

if.then72:                                        ; preds = %land.lhs.true70
  %52 = load i64, ptr %fields, align 8
  %and74 = and i64 %52, -2147483649
  store i64 %and74, ptr %fields, align 8
  %53 = load i32, ptr %nfields, align 4
  %dec = add i32 %53, -1
  store i32 %dec, ptr %nfields, align 4
  %54 = load i32, ptr %dirsize, align 4
  %sub = add i32 %54, -12
  store i32 %sub, ptr %dirsize, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then72, %land.lhs.true70, %if.end61
  store i32 0, ptr %fi, align 4
  %55 = load ptr, ptr %tif.addr, align 8
  %tif_nfields = getelementptr inbounds %struct.tiff, ptr %55, i64 0, i32 56
  %56 = load i32, ptr %tif_nfields, align 8
  store i32 %56, ptr %nfi, align 4
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc226, %if.end77
  %57 = load i32, ptr %nfi, align 4
  %cmp79 = icmp sgt i32 %57, 0
  br i1 %cmp79, label %for.body81, label %for.end229

for.body81:                                       ; preds = %for.cond78
  %58 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo = getelementptr inbounds %struct.tiff, ptr %58, i64 0, i32 55
  %59 = load ptr, ptr %tif_fieldinfo, align 8
  %60 = load i32, ptr %fi, align 4
  %idxprom = sext i32 %60 to i64
  %arrayidx82 = getelementptr inbounds ptr, ptr %59, i64 %idxprom
  %61 = load ptr, ptr %arrayidx82, align 8
  store ptr %61, ptr %fip, align 8
  %field_bit = getelementptr inbounds %struct.TIFFFieldInfo, ptr %61, i64 0, i32 4
  %62 = load i16, ptr %field_bit, align 4
  %63 = lshr i16 %62, 5
  %idxprom85 = zext i16 %63 to i64
  %arrayidx86 = getelementptr inbounds [3 x i64], ptr %fields, i64 0, i64 %idxprom85
  %64 = load i64, ptr %arrayidx86, align 8
  %65 = load ptr, ptr %fip, align 8
  %field_bit87 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %65, i64 0, i32 4
  %66 = load i16, ptr %field_bit87, align 4
  %67 = and i16 %66, 31
  %sh_prom = zext i16 %67 to i64
  %shl90 = shl i64 1, %sh_prom
  %and91 = and i64 %64, %shl90
  %tobool92.not = icmp eq i64 %and91, 0
  br i1 %tobool92.not, label %for.inc226, label %if.end94

if.end94:                                         ; preds = %for.body81
  %68 = load ptr, ptr %fip, align 8
  %field_bit95 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %68, i64 0, i32 4
  %69 = load i16, ptr %field_bit95, align 4
  switch i16 %69, label %sw.default [
    i16 25, label %sw.bb
    i16 24, label %sw.bb110
    i16 17, label %sw.bb126
    i16 26, label %sw.bb127
    i16 1, label %sw.bb133
    i16 2, label %sw.bb134
    i16 4, label %sw.bb136
    i16 3, label %sw.bb146
    i16 6, label %sw.bb157
    i16 18, label %sw.bb157
    i16 19, label %sw.bb157
    i16 32, label %sw.bb157
    i16 33, label %sw.bb163
    i16 34, label %sw.bb163
    i16 23, label %sw.bb170
    i16 37, label %sw.bb170
    i16 39, label %sw.bb170
    i16 47, label %sw.bb170
    i16 46, label %sw.bb176
    i16 44, label %sw.bb181
    i16 49, label %sw.bb186
  ]

sw.bb:                                            ; preds = %if.end94
  %70 = load ptr, ptr %tif.addr, align 8
  %tif_flags97 = getelementptr inbounds %struct.tiff, ptr %70, i64 0, i32 3
  %71 = load i32, ptr %tif_flags97, align 8
  %and98 = and i32 %71, 1024
  %cmp99.not = icmp eq i32 %and98, 0
  %cond101 = select i1 %cmp99.not, i32 273, i32 324
  store i32 %cond101, ptr %tag, align 4
  %72 = load ptr, ptr %fip, align 8
  %73 = load i32, ptr %72, align 8
  %cmp102.not = icmp eq i32 %cond101, %73
  br i1 %cmp102.not, label %if.end105, label %for.inc226

if.end105:                                        ; preds = %sw.bb
  %74 = load ptr, ptr %tif.addr, align 8
  %75 = load i32, ptr %tag, align 4
  %76 = load ptr, ptr %dir, align 8
  %77 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %77, i64 0, i32 43
  %78 = load i32, ptr %td_nstrips, align 4
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %77, i64 0, i32 44
  %79 = load ptr, ptr %td_stripoffset, align 8
  %call106 = call i32 @TIFFWriteLongArray(ptr noundef %74, i32 noundef 4, i32 noundef %75, ptr noundef %76, i32 noundef %78, ptr noundef %79)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %bad, label %sw.epilog

sw.bb110:                                         ; preds = %if.end94
  %80 = load ptr, ptr %tif.addr, align 8
  %tif_flags111 = getelementptr inbounds %struct.tiff, ptr %80, i64 0, i32 3
  %81 = load i32, ptr %tif_flags111, align 8
  %and112 = and i32 %81, 1024
  %cmp113.not = icmp eq i32 %and112, 0
  %cond115 = select i1 %cmp113.not, i32 279, i32 325
  store i32 %cond115, ptr %tag, align 4
  %82 = load ptr, ptr %fip, align 8
  %83 = load i32, ptr %82, align 8
  %cmp117.not = icmp eq i32 %cond115, %83
  br i1 %cmp117.not, label %if.end120, label %for.inc226

if.end120:                                        ; preds = %sw.bb110
  %84 = load ptr, ptr %tif.addr, align 8
  %85 = load i32, ptr %tag, align 4
  %86 = load ptr, ptr %dir, align 8
  %87 = load ptr, ptr %td, align 8
  %td_nstrips121 = getelementptr inbounds %struct.TIFFDirectory, ptr %87, i64 0, i32 43
  %88 = load i32, ptr %td_nstrips121, align 4
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %87, i64 0, i32 45
  %89 = load ptr, ptr %td_stripbytecount, align 8
  %call122 = call i32 @TIFFWriteLongArray(ptr noundef %84, i32 noundef 4, i32 noundef %85, ptr noundef %86, i32 noundef %88, ptr noundef %89)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %bad, label %sw.epilog

sw.bb126:                                         ; preds = %if.end94
  %90 = load ptr, ptr %tif.addr, align 8
  %91 = load ptr, ptr %dir, align 8
  %92 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %92, i64 0, i32 16
  %93 = load i32, ptr %td_rowsperstrip, align 4
  call void @TIFFSetupShortLong(ptr noundef %90, i32 noundef 278, ptr noundef %91, i32 noundef %93)
  br label %sw.epilog

sw.bb127:                                         ; preds = %if.end94
  %94 = load ptr, ptr %tif.addr, align 8
  %95 = load ptr, ptr %dir, align 8
  %96 = load ptr, ptr %td, align 8
  %td_colormap = getelementptr inbounds %struct.TIFFDirectory, ptr %96, i64 0, i32 28
  %call129 = call i32 @TIFFWriteShortTable(ptr noundef %94, i32 noundef 320, ptr noundef %95, i32 noundef 3, ptr noundef nonnull %td_colormap)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %bad, label %sw.epilog

sw.bb133:                                         ; preds = %if.end94
  %97 = load ptr, ptr %tif.addr, align 8
  %98 = load ptr, ptr %dir, align 8
  %incdec.ptr = getelementptr inbounds %struct.TIFFDirEntry, ptr %98, i64 1
  store ptr %incdec.ptr, ptr %dir, align 8
  %99 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %99, i64 0, i32 1
  %100 = load i32, ptr %td_imagewidth, align 8
  call void @TIFFSetupShortLong(ptr noundef %97, i32 noundef 256, ptr noundef %98, i32 noundef %100)
  %101 = load ptr, ptr %tif.addr, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %99, i64 0, i32 2
  %102 = load i32, ptr %td_imagelength, align 4
  call void @TIFFSetupShortLong(ptr noundef %101, i32 noundef 257, ptr noundef nonnull %incdec.ptr, i32 noundef %102)
  br label %sw.epilog

sw.bb134:                                         ; preds = %if.end94
  %103 = load ptr, ptr %tif.addr, align 8
  %104 = load ptr, ptr %dir, align 8
  %incdec.ptr135 = getelementptr inbounds %struct.TIFFDirEntry, ptr %104, i64 1
  store ptr %incdec.ptr135, ptr %dir, align 8
  %105 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %105, i64 0, i32 4
  %106 = load i32, ptr %td_tilewidth, align 4
  call void @TIFFSetupShortLong(ptr noundef %103, i32 noundef 322, ptr noundef %104, i32 noundef %106)
  %107 = load ptr, ptr %tif.addr, align 8
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %105, i64 0, i32 5
  %108 = load i32, ptr %td_tilelength, align 8
  call void @TIFFSetupShortLong(ptr noundef %107, i32 noundef 323, ptr noundef nonnull %incdec.ptr135, i32 noundef %108)
  br label %sw.epilog

sw.bb136:                                         ; preds = %if.end94
  %109 = load ptr, ptr %tif.addr, align 8
  %110 = load ptr, ptr %dir, align 8
  %111 = load ptr, ptr %td, align 8
  %td_xposition = getelementptr inbounds %struct.TIFFDirectory, ptr %111, i64 0, i32 25
  %call137 = call i32 @TIFFWriteRationalArray(ptr noundef %109, i32 noundef 5, i32 noundef 286, ptr noundef %110, i32 noundef 1, ptr noundef nonnull %td_xposition)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %bad, label %if.end140

if.end140:                                        ; preds = %sw.bb136
  %112 = load ptr, ptr %tif.addr, align 8
  %113 = load ptr, ptr %dir, align 8
  %add.ptr = getelementptr inbounds %struct.TIFFDirEntry, ptr %113, i64 1
  %114 = load ptr, ptr %td, align 8
  %td_yposition = getelementptr inbounds %struct.TIFFDirectory, ptr %114, i64 0, i32 26
  %call141 = call i32 @TIFFWriteRationalArray(ptr noundef %112, i32 noundef 5, i32 noundef 287, ptr noundef nonnull %add.ptr, i32 noundef 1, ptr noundef nonnull %td_yposition)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %bad, label %if.end144

if.end144:                                        ; preds = %if.end140
  %115 = load ptr, ptr %dir, align 8
  %incdec.ptr145 = getelementptr inbounds %struct.TIFFDirEntry, ptr %115, i64 1
  store ptr %incdec.ptr145, ptr %dir, align 8
  br label %sw.epilog

sw.bb146:                                         ; preds = %if.end94
  %116 = load ptr, ptr %tif.addr, align 8
  %117 = load ptr, ptr %dir, align 8
  %118 = load ptr, ptr %td, align 8
  %td_xresolution = getelementptr inbounds %struct.TIFFDirectory, ptr %118, i64 0, i32 21
  %call147 = call i32 @TIFFWriteRationalArray(ptr noundef %116, i32 noundef 5, i32 noundef 282, ptr noundef %117, i32 noundef 1, ptr noundef nonnull %td_xresolution)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %bad, label %if.end150

if.end150:                                        ; preds = %sw.bb146
  %119 = load ptr, ptr %tif.addr, align 8
  %120 = load ptr, ptr %dir, align 8
  %add.ptr151 = getelementptr inbounds %struct.TIFFDirEntry, ptr %120, i64 1
  %121 = load ptr, ptr %td, align 8
  %td_yresolution = getelementptr inbounds %struct.TIFFDirectory, ptr %121, i64 0, i32 22
  %call152 = call i32 @TIFFWriteRationalArray(ptr noundef %119, i32 noundef 5, i32 noundef 283, ptr noundef nonnull %add.ptr151, i32 noundef 1, ptr noundef nonnull %td_yresolution)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %bad, label %if.end155

if.end155:                                        ; preds = %if.end150
  %122 = load ptr, ptr %dir, align 8
  %incdec.ptr156 = getelementptr inbounds %struct.TIFFDirEntry, ptr %122, i64 1
  store ptr %incdec.ptr156, ptr %dir, align 8
  br label %sw.epilog

sw.bb157:                                         ; preds = %if.end94, %if.end94, %if.end94, %if.end94
  %123 = load ptr, ptr %tif.addr, align 8
  %124 = load ptr, ptr %fip, align 8
  %125 = load i32, ptr %124, align 8
  %126 = load ptr, ptr %dir, align 8
  %call159 = call i32 @TIFFWritePerSampleShorts(ptr noundef %123, i32 noundef %125, ptr noundef %126)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %bad, label %sw.epilog

sw.bb163:                                         ; preds = %if.end94, %if.end94
  %127 = load ptr, ptr %tif.addr, align 8
  %call164 = call i32 @_TIFFSampleToTagType(ptr noundef %127) #2
  %128 = load ptr, ptr %fip, align 8
  %129 = load i32, ptr %128, align 8
  %130 = load ptr, ptr %dir, align 8
  %call166 = call i32 @TIFFWritePerSampleAnys(ptr noundef %127, i32 noundef %call164, i32 noundef %129, ptr noundef %130)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %bad, label %sw.epilog

sw.bb170:                                         ; preds = %if.end94, %if.end94, %if.end94, %if.end94
  %131 = load ptr, ptr %tif.addr, align 8
  %132 = load ptr, ptr %fip, align 8
  %133 = load i32, ptr %132, align 8
  %134 = load ptr, ptr %dir, align 8
  %call172 = call i32 @TIFFSetupShortPair(ptr noundef %131, i32 noundef %133, ptr noundef %134)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %bad, label %sw.epilog

sw.bb176:                                         ; preds = %if.end94
  %135 = load ptr, ptr %tif.addr, align 8
  %136 = load ptr, ptr %dir, align 8
  %call177 = call i32 @TIFFWriteInkNames(ptr noundef %135, ptr noundef %136)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %bad, label %sw.epilog

sw.bb181:                                         ; preds = %if.end94
  %137 = load ptr, ptr %tif.addr, align 8
  %138 = load ptr, ptr %dir, align 8
  %call182 = call i32 @TIFFWriteTransferFunction(ptr noundef %137, ptr noundef %138)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %bad, label %sw.epilog

sw.bb186:                                         ; preds = %if.end94
  %139 = load ptr, ptr %tif.addr, align 8
  %140 = load ptr, ptr %dir, align 8
  %141 = load ptr, ptr %fip, align 8
  %call187 = call i32 @TIFFWriteNormalTag(ptr noundef %139, ptr noundef %140, ptr noundef %141)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %bad, label %if.end190

if.end190:                                        ; preds = %sw.bb186
  %142 = load ptr, ptr %dir, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %142, i64 0, i32 2
  %143 = load i32, ptr %tdir_count, align 4
  %cmp191.not = icmp eq i32 %143, 0
  br i1 %cmp191.not, label %sw.epilog, label %if.then193

if.then193:                                       ; preds = %if.end190
  %144 = load ptr, ptr %tif.addr, align 8
  %tif_flags194 = getelementptr inbounds %struct.tiff, ptr %144, i64 0, i32 3
  %145 = load i32, ptr %tif_flags194, align 8
  %or = or i32 %145, 8192
  store i32 %or, ptr %tif_flags194, align 8
  %146 = load ptr, ptr %dir, align 8
  %tdir_count195 = getelementptr inbounds %struct.TIFFDirEntry, ptr %146, i64 0, i32 2
  %147 = load i32, ptr %tdir_count195, align 4
  %conv196 = trunc i32 %147 to i16
  %148 = load ptr, ptr %tif.addr, align 8
  %tif_nsubifd = getelementptr inbounds %struct.tiff, ptr %148, i64 0, i32 16
  store i16 %conv196, ptr %tif_nsubifd, align 4
  %149 = load ptr, ptr %dir, align 8
  %tdir_count197 = getelementptr inbounds %struct.TIFFDirEntry, ptr %149, i64 0, i32 2
  %150 = load i32, ptr %tdir_count197, align 4
  %cmp198 = icmp ugt i32 %150, 1
  br i1 %cmp198, label %if.then200, label %if.else

if.then200:                                       ; preds = %if.then193
  %151 = load ptr, ptr %dir, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %151, i64 0, i32 3
  %152 = load i32, ptr %tdir_offset, align 4
  %153 = load ptr, ptr %tif.addr, align 8
  %tif_subifdoff = getelementptr inbounds %struct.tiff, ptr %153, i64 0, i32 17
  store i32 %152, ptr %tif_subifdoff, align 8
  br label %sw.epilog

if.else:                                          ; preds = %if.then193
  %154 = load ptr, ptr %tif.addr, align 8
  %tif_diroff201 = getelementptr inbounds %struct.tiff, ptr %154, i64 0, i32 4
  %155 = load i32, ptr %tif_diroff201, align 4
  %conv2021 = zext i32 %155 to i64
  %add203 = add nuw nsw i64 %conv2021, 2
  %156 = load ptr, ptr %dir, align 8
  %tdir_offset204 = getelementptr inbounds %struct.TIFFDirEntry, ptr %156, i64 0, i32 3
  %157 = load ptr, ptr %data, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %tdir_offset204 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %157 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add205 = add i64 %add203, %sub.ptr.sub
  %conv206 = trunc i64 %add205 to i32
  %158 = load ptr, ptr %tif.addr, align 8
  %tif_subifdoff207 = getelementptr inbounds %struct.tiff, ptr %158, i64 0, i32 17
  store i32 %conv206, ptr %tif_subifdoff207, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end94
  %159 = load ptr, ptr %tif.addr, align 8
  %160 = load ptr, ptr %dir, align 8
  %161 = load ptr, ptr %fip, align 8
  %call210 = call i32 @TIFFWriteNormalTag(ptr noundef %159, ptr noundef %160, ptr noundef %161)
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %bad, label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end190, %if.else, %if.then200, %sw.bb181, %sw.bb176, %sw.bb170, %sw.bb163, %sw.bb157, %sw.bb127, %if.end120, %if.end105, %if.end155, %if.end144, %sw.bb134, %sw.bb133, %sw.bb126
  %162 = load ptr, ptr %dir, align 8
  %incdec.ptr214 = getelementptr inbounds %struct.TIFFDirEntry, ptr %162, i64 1
  store ptr %incdec.ptr214, ptr %dir, align 8
  %163 = load ptr, ptr %fip, align 8
  %field_bit215 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %163, i64 0, i32 4
  %164 = load i16, ptr %field_bit215, align 4
  %165 = and i16 %164, 31
  %sh_prom218 = zext i16 %165 to i64
  %shl219 = shl i64 1, %sh_prom218
  %neg = xor i64 %shl219, -1
  %166 = load ptr, ptr %fip, align 8
  %field_bit220 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %166, i64 0, i32 4
  %167 = load i16, ptr %field_bit220, align 4
  %168 = lshr i16 %167, 5
  %idxprom223 = zext i16 %168 to i64
  %arrayidx224 = getelementptr inbounds [3 x i64], ptr %fields, i64 0, i64 %idxprom223
  %169 = load i64, ptr %arrayidx224, align 8
  %and225 = and i64 %169, %neg
  store i64 %and225, ptr %arrayidx224, align 8
  br label %for.inc226

for.inc226:                                       ; preds = %sw.bb110, %sw.bb, %for.body81, %sw.epilog
  %170 = load i32, ptr %nfi, align 4
  %dec227 = add nsw i32 %170, -1
  store i32 %dec227, ptr %nfi, align 4
  %171 = load i32, ptr %fi, align 4
  %inc228 = add nsw i32 %171, 1
  store i32 %inc228, ptr %fi, align 4
  br label %for.cond78, !llvm.loop !8

for.end229:                                       ; preds = %for.cond78
  %172 = load i32, ptr %nfields, align 4
  %conv230 = trunc i32 %172 to i16
  store i16 %conv230, ptr %dircount, align 2
  %173 = load ptr, ptr %tif.addr, align 8
  %tif_nextdiroff = getelementptr inbounds %struct.tiff, ptr %173, i64 0, i32 5
  %174 = load i32, ptr %tif_nextdiroff, align 8
  store i32 %174, ptr %diroff, align 4
  %tif_flags231 = getelementptr inbounds %struct.tiff, ptr %173, i64 0, i32 3
  %175 = load i32, ptr %tif_flags231, align 8
  %and232 = and i32 %175, 128
  %tobool233.not = icmp eq i32 %and232, 0
  br i1 %tobool233.not, label %if.end244, label %if.then234

if.then234:                                       ; preds = %for.end229
  %176 = load ptr, ptr %data, align 8
  store ptr %176, ptr %dir, align 8
  br label %for.cond235

for.cond235:                                      ; preds = %for.body237, %if.then234
  %177 = load i16, ptr %dircount, align 2
  %tobool236.not = icmp eq i16 %177, 0
  br i1 %tobool236.not, label %for.end242, label %for.body237

for.body237:                                      ; preds = %for.cond235
  %178 = load ptr, ptr %dir, align 8
  call void @TIFFSwabArrayOfShort(ptr noundef %178, i64 noundef 2) #2
  %tdir_count238 = getelementptr inbounds %struct.TIFFDirEntry, ptr %178, i64 0, i32 2
  call void @TIFFSwabArrayOfLong(ptr noundef nonnull %tdir_count238, i64 noundef 2) #2
  %179 = load ptr, ptr %dir, align 8
  %incdec.ptr240 = getelementptr inbounds %struct.TIFFDirEntry, ptr %179, i64 1
  store ptr %incdec.ptr240, ptr %dir, align 8
  %180 = load i16, ptr %dircount, align 2
  %dec241 = add i16 %180, -1
  store i16 %dec241, ptr %dircount, align 2
  br label %for.cond235, !llvm.loop !9

for.end242:                                       ; preds = %for.cond235
  %181 = load i32, ptr %nfields, align 4
  %conv243 = trunc i32 %181 to i16
  store i16 %conv243, ptr %dircount, align 2
  call void @TIFFSwabShort(ptr noundef nonnull %dircount) #2
  call void @TIFFSwabLong(ptr noundef nonnull %diroff) #2
  br label %if.end244

if.end244:                                        ; preds = %for.end242, %for.end229
  %182 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc245 = getelementptr inbounds %struct.tiff, ptr %182, i64 0, i32 51
  %183 = load ptr, ptr %tif_seekproc245, align 8
  %tif_clientdata246 = getelementptr inbounds %struct.tiff, ptr %182, i64 0, i32 48
  %184 = load ptr, ptr %tif_clientdata246, align 8
  %tif_diroff247 = getelementptr inbounds %struct.tiff, ptr %182, i64 0, i32 4
  %185 = load i32, ptr %tif_diroff247, align 4
  %call248 = call i32 %183(ptr noundef %184, i32 noundef %185, i32 noundef 0) #2
  %186 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc = getelementptr inbounds %struct.tiff, ptr %186, i64 0, i32 50
  %187 = load ptr, ptr %tif_writeproc, align 8
  %tif_clientdata249 = getelementptr inbounds %struct.tiff, ptr %186, i64 0, i32 48
  %188 = load ptr, ptr %tif_clientdata249, align 8
  %call250 = call i32 %187(ptr noundef %188, ptr noundef nonnull %dircount, i32 noundef 2) #2
  %cmp251 = icmp eq i32 %call250, 2
  br i1 %cmp251, label %if.end255, label %if.then253

if.then253:                                       ; preds = %if.end244
  %189 = load ptr, ptr %tif.addr, align 8
  %190 = load ptr, ptr %189, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %190, ptr noundef nonnull @.str.3) #2
  br label %bad

if.end255:                                        ; preds = %if.end244
  %191 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc256 = getelementptr inbounds %struct.tiff, ptr %191, i64 0, i32 50
  %192 = load ptr, ptr %tif_writeproc256, align 8
  %tif_clientdata257 = getelementptr inbounds %struct.tiff, ptr %191, i64 0, i32 48
  %193 = load ptr, ptr %tif_clientdata257, align 8
  %194 = load ptr, ptr %data, align 8
  %195 = load i32, ptr %dirsize, align 4
  %call258 = call i32 %192(ptr noundef %193, ptr noundef %194, i32 noundef %195) #2
  %cmp259 = icmp eq i32 %call258, %195
  br i1 %cmp259, label %if.end263, label %if.then261

if.then261:                                       ; preds = %if.end255
  %196 = load ptr, ptr %tif.addr, align 8
  %197 = load ptr, ptr %196, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %197, ptr noundef nonnull @.str.4) #2
  br label %bad

if.end263:                                        ; preds = %if.end255
  %198 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc264 = getelementptr inbounds %struct.tiff, ptr %198, i64 0, i32 50
  %199 = load ptr, ptr %tif_writeproc264, align 8
  %tif_clientdata265 = getelementptr inbounds %struct.tiff, ptr %198, i64 0, i32 48
  %200 = load ptr, ptr %tif_clientdata265, align 8
  %call266 = call i32 %199(ptr noundef %200, ptr noundef nonnull %diroff, i32 noundef 4) #2
  %cmp267 = icmp eq i32 %call266, 4
  br i1 %cmp267, label %if.end271, label %if.then269

if.then269:                                       ; preds = %if.end263
  %201 = load ptr, ptr %tif.addr, align 8
  %202 = load ptr, ptr %201, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %202, ptr noundef nonnull @.str.5) #2
  br label %bad

if.end271:                                        ; preds = %if.end263
  %203 = load ptr, ptr %tif.addr, align 8
  call void @TIFFFreeDirectory(ptr noundef %203) #2
  %204 = load ptr, ptr %data, align 8
  call void @_TIFFfree(ptr noundef %204) #2
  %tif_flags272 = getelementptr inbounds %struct.tiff, ptr %203, i64 0, i32 3
  %205 = load i32, ptr %tif_flags272, align 8
  %and273 = and i32 %205, -9
  store i32 %and273, ptr %tif_flags272, align 8
  %206 = load ptr, ptr %tif.addr, align 8
  %tif_cleanup = getelementptr inbounds %struct.tiff, ptr %206, i64 0, i32 34
  %207 = load ptr, ptr %tif_cleanup, align 8
  call void %207(ptr noundef %206) #2
  %call274 = call i32 @TIFFDefaultDirectory(ptr noundef %206) #2
  %tif_diroff275 = getelementptr inbounds %struct.tiff, ptr %206, i64 0, i32 4
  store i32 0, ptr %tif_diroff275, align 4
  %208 = load ptr, ptr %tif.addr, align 8
  %tif_curoff = getelementptr inbounds %struct.tiff, ptr %208, i64 0, i32 14
  store i32 0, ptr %tif_curoff, align 4
  %tif_row = getelementptr inbounds %struct.tiff, ptr %208, i64 0, i32 11
  store i32 -1, ptr %tif_row, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %208, i64 0, i32 13
  store i32 -1, ptr %tif_curstrip, align 8
  store i32 1, ptr %retval, align 4
  br label %return

bad:                                              ; preds = %sw.default, %sw.bb186, %sw.bb181, %sw.bb176, %sw.bb170, %sw.bb163, %sw.bb157, %if.end150, %sw.bb146, %if.end140, %sw.bb136, %sw.bb127, %if.end120, %if.end105, %land.lhs.true43, %if.then269, %if.then261, %if.then253
  %209 = load ptr, ptr %data, align 8
  call void @_TIFFfree(ptr noundef %209) #2
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %bad, %if.end271, %if.then38, %if.then11, %if.then5, %if.then
  %210 = load i32, ptr %retval, align 4
  ret i32 %210
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

declare i32 @TIFFFlushData1(ptr noundef) #1

declare void @_TIFFfree(ptr noundef) #1

declare ptr @_TIFFmalloc(i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFLinkDirectory(ptr noundef %tif) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %nextdir = alloca i32, align 4
  %diroff = alloca i32, align 4
  %dircount = alloca i16, align 2
  store ptr %tif, ptr %tif.addr, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 51
  %0 = load ptr, ptr %tif_seekproc, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 48
  %1 = load ptr, ptr %tif_clientdata, align 8
  %call = call i32 %0(ptr noundef %1, i32 noundef 0, i32 noundef 2) #2
  %add = add nsw i32 %call, 1
  %and = and i32 %add, -2
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_diroff = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 4
  store i32 %and, ptr %tif_diroff, align 4
  store i32 %and, ptr %diroff, align 4
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 3
  %3 = load i32, ptr %tif_flags, align 8
  %and2 = and i32 %3, 128
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @TIFFSwabLong(ptr noundef nonnull %diroff) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_flags3 = getelementptr inbounds %struct.tiff, ptr %4, i64 0, i32 3
  %5 = load i32, ptr %tif_flags3, align 8
  %and4 = and i32 %5, 8192
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end22, label %if.then6

if.then6:                                         ; preds = %if.end
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc7 = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 51
  %7 = load ptr, ptr %tif_seekproc7, align 8
  %tif_clientdata8 = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 48
  %8 = load ptr, ptr %tif_clientdata8, align 8
  %tif_subifdoff = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 17
  %9 = load i32, ptr %tif_subifdoff, align 8
  %call9 = call i32 %7(ptr noundef %8, i32 noundef %9, i32 noundef 0) #2
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 50
  %11 = load ptr, ptr %tif_writeproc, align 8
  %tif_clientdata10 = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 48
  %12 = load ptr, ptr %tif_clientdata10, align 8
  %call11 = call i32 %11(ptr noundef %12, ptr noundef nonnull %diroff, i32 noundef 4) #2
  %cmp = icmp eq i32 %call11, 4
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
  %16 = load i16, ptr %tif_nsubifd, align 4
  %dec = add i16 %16, -1
  store i16 %dec, ptr %tif_nsubifd, align 4
  %tobool14.not = icmp eq i16 %dec, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end13
  %17 = load ptr, ptr %tif.addr, align 8
  %tif_subifdoff16 = getelementptr inbounds %struct.tiff, ptr %17, i64 0, i32 17
  %18 = load i32, ptr %tif_subifdoff16, align 8
  %add17 = add i32 %18, 4
  store i32 %add17, ptr %tif_subifdoff16, align 8
  br label %if.end21

if.else:                                          ; preds = %if.end13
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_flags19 = getelementptr inbounds %struct.tiff, ptr %19, i64 0, i32 3
  %20 = load i32, ptr %tif_flags19, align 8
  %and20 = and i32 %20, -8193
  store i32 %and20, ptr %tif_flags19, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then15
  store i32 1, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.end
  %21 = load ptr, ptr %tif.addr, align 8
  %tiff_diroff = getelementptr inbounds %struct.tiff, ptr %21, i64 0, i32 7, i32 2
  %22 = load i32, ptr %tiff_diroff, align 4
  %cmp23 = icmp eq i32 %22, 0
  br i1 %cmp23, label %if.then25, label %if.end40

if.then25:                                        ; preds = %if.end22
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_diroff26 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 4
  %24 = load i32, ptr %tif_diroff26, align 4
  %tiff_diroff28 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 7, i32 2
  store i32 %24, ptr %tiff_diroff28, align 4
  %tif_seekproc29 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 51
  %25 = load ptr, ptr %tif_seekproc29, align 8
  %26 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata30 = getelementptr inbounds %struct.tiff, ptr %26, i64 0, i32 48
  %27 = load ptr, ptr %tif_clientdata30, align 8
  %call31 = call i32 %25(ptr noundef %27, i32 noundef 4, i32 noundef 0) #2
  %tif_writeproc32 = getelementptr inbounds %struct.tiff, ptr %26, i64 0, i32 50
  %28 = load ptr, ptr %tif_writeproc32, align 8
  %tif_clientdata33 = getelementptr inbounds %struct.tiff, ptr %26, i64 0, i32 48
  %29 = load ptr, ptr %tif_clientdata33, align 8
  %call34 = call i32 %28(ptr noundef %29, ptr noundef nonnull %diroff, i32 noundef 4) #2
  %cmp35 = icmp eq i32 %call34, 4
  br i1 %cmp35, label %if.end39, label %if.then37

if.then37:                                        ; preds = %if.then25
  %30 = load ptr, ptr %tif.addr, align 8
  %31 = load ptr, ptr %30, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %31, ptr noundef nonnull @.str.9) #2
  store i32 0, ptr %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.then25
  store i32 1, ptr %retval, align 4
  br label %return

if.end40:                                         ; preds = %if.end22
  %32 = load ptr, ptr %tif.addr, align 8
  %tiff_diroff42 = getelementptr inbounds %struct.tiff, ptr %32, i64 0, i32 7, i32 2
  %33 = load i32, ptr %tiff_diroff42, align 4
  store i32 %33, ptr %nextdir, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end40
  %34 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc43 = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 51
  %35 = load ptr, ptr %tif_seekproc43, align 8
  %tif_clientdata44 = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 48
  %36 = load ptr, ptr %tif_clientdata44, align 8
  %37 = load i32, ptr %nextdir, align 4
  %call45 = call i32 %35(ptr noundef %36, i32 noundef %37, i32 noundef 0) #2
  %38 = load i32, ptr %nextdir, align 4
  %cmp46 = icmp eq i32 %call45, %38
  br i1 %cmp46, label %lor.lhs.false, label %if.then52

lor.lhs.false:                                    ; preds = %do.body
  %39 = load ptr, ptr %tif.addr, align 8
  %tif_readproc = getelementptr inbounds %struct.tiff, ptr %39, i64 0, i32 49
  %40 = load ptr, ptr %tif_readproc, align 8
  %tif_clientdata48 = getelementptr inbounds %struct.tiff, ptr %39, i64 0, i32 48
  %41 = load ptr, ptr %tif_clientdata48, align 8
  %call49 = call i32 %40(ptr noundef %41, ptr noundef nonnull %dircount, i32 noundef 2) #2
  %cmp50 = icmp eq i32 %call49, 2
  br i1 %cmp50, label %if.end53, label %if.then52

if.then52:                                        ; preds = %lor.lhs.false, %do.body
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFLinkDirectory.module, ptr noundef nonnull @.str.10) #2
  store i32 0, ptr %retval, align 4
  br label %return

if.end53:                                         ; preds = %lor.lhs.false
  %42 = load ptr, ptr %tif.addr, align 8
  %tif_flags54 = getelementptr inbounds %struct.tiff, ptr %42, i64 0, i32 3
  %43 = load i32, ptr %tif_flags54, align 8
  %and55 = and i32 %43, 128
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end58, label %if.then57

if.then57:                                        ; preds = %if.end53
  call void @TIFFSwabShort(ptr noundef nonnull %dircount) #2
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end53
  %44 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc59 = getelementptr inbounds %struct.tiff, ptr %44, i64 0, i32 51
  %45 = load ptr, ptr %tif_seekproc59, align 8
  %tif_clientdata60 = getelementptr inbounds %struct.tiff, ptr %44, i64 0, i32 48
  %46 = load ptr, ptr %tif_clientdata60, align 8
  %47 = load i16, ptr %dircount, align 2
  %conv61 = zext i16 %47 to i32
  %mul = mul nuw nsw i32 %conv61, 12
  %call63 = call i32 %45(ptr noundef %46, i32 noundef %mul, i32 noundef 1) #2
  %48 = load ptr, ptr %tif.addr, align 8
  %tif_readproc64 = getelementptr inbounds %struct.tiff, ptr %48, i64 0, i32 49
  %49 = load ptr, ptr %tif_readproc64, align 8
  %tif_clientdata65 = getelementptr inbounds %struct.tiff, ptr %48, i64 0, i32 48
  %50 = load ptr, ptr %tif_clientdata65, align 8
  %call66 = call i32 %49(ptr noundef %50, ptr noundef nonnull %nextdir, i32 noundef 4) #2
  %cmp67 = icmp eq i32 %call66, 4
  br i1 %cmp67, label %if.end70, label %if.then69

if.then69:                                        ; preds = %if.end58
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFLinkDirectory.module, ptr noundef nonnull @.str.11) #2
  store i32 0, ptr %retval, align 4
  br label %return

if.end70:                                         ; preds = %if.end58
  %51 = load ptr, ptr %tif.addr, align 8
  %tif_flags71 = getelementptr inbounds %struct.tiff, ptr %51, i64 0, i32 3
  %52 = load i32, ptr %tif_flags71, align 8
  %and72 = and i32 %52, 128
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %do.cond, label %if.then74

if.then74:                                        ; preds = %if.end70
  call void @TIFFSwabLong(ptr noundef nonnull %nextdir) #2
  br label %do.cond

do.cond:                                          ; preds = %if.end70, %if.then74
  %53 = load i32, ptr %nextdir, align 4
  %cmp76.not = icmp eq i32 %53, 0
  br i1 %cmp76.not, label %do.end, label %do.body, !llvm.loop !10

do.end:                                           ; preds = %do.cond
  %54 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc78 = getelementptr inbounds %struct.tiff, ptr %54, i64 0, i32 51
  %55 = load ptr, ptr %tif_seekproc78, align 8
  %tif_clientdata79 = getelementptr inbounds %struct.tiff, ptr %54, i64 0, i32 48
  %56 = load ptr, ptr %tif_clientdata79, align 8
  %call80 = call i32 %55(ptr noundef %56, i32 noundef -4, i32 noundef 1) #2
  %tif_writeproc81 = getelementptr inbounds %struct.tiff, ptr %54, i64 0, i32 50
  %57 = load ptr, ptr %tif_writeproc81, align 8
  %58 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata82 = getelementptr inbounds %struct.tiff, ptr %58, i64 0, i32 48
  %59 = load ptr, ptr %tif_clientdata82, align 8
  %call83 = call i32 %57(ptr noundef %59, ptr noundef nonnull %diroff, i32 noundef 4) #2
  %cmp84 = icmp eq i32 %call83, 4
  br i1 %cmp84, label %if.end87, label %if.then86

if.then86:                                        ; preds = %do.end
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFLinkDirectory.module, ptr noundef nonnull @.str.5) #2
  store i32 0, ptr %retval, align 4
  br label %return

if.end87:                                         ; preds = %do.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end87, %if.then86, %if.then69, %if.then52, %if.end39, %if.then37, %if.end21, %if.then12
  %60 = load i32, ptr %retval, align 4
  ret i32 %60
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFWriteLongArray(ptr noundef %tif, i32 noundef %type, i32 noundef %tag, ptr noundef %dir, i32 noundef %n, ptr noundef %v) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr %v, ptr %v.addr, align 8
  %conv = trunc i32 %tag to i16
  store i16 %conv, ptr %dir, align 4
  %conv1 = trunc i32 %type to i16
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 1
  store i16 %conv1, ptr %tdir_type, align 2
  %0 = load i32, ptr %n.addr, align 4
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  store i32 %0, ptr %tdir_count, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %v.addr, align 8
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %4, i64 0, i32 3
  store i32 %3, ptr %tdir_offset, align 4
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
define internal void @TIFFSetupShortLong(ptr noundef %tif, i32 noundef %tag, ptr noundef %dir, i32 noundef %v) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %v.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i32 %v, ptr %v.addr, align 4
  %conv = trunc i32 %tag to i16
  store i16 %conv, ptr %dir, align 4
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 2
  store i32 1, ptr %tdir_count, align 4
  %cmp = icmp ugt i32 %v, 65535
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %0, i64 0, i32 1
  store i16 4, ptr %tdir_type, align 2
  %1 = load i32, ptr %v.addr, align 4
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %0, i64 0, i32 3
  store i32 %1, ptr %tdir_offset, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %dir.addr, align 8
  %tdir_type3 = getelementptr inbounds %struct.TIFFDirEntry, ptr %2, i64 0, i32 1
  store i16 3, ptr %tdir_type3, align 2
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 7
  %4 = load i16, ptr %tif_header, align 8
  %cmp5 = icmp eq i16 %4, 19789
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %5 = load i32, ptr %v.addr, align 4
  %conv7 = zext i32 %5 to i64
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_typemask = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 10
  %7 = load ptr, ptr %tif_typemask, align 8
  %arrayidx = getelementptr inbounds i64, ptr %7, i64 3
  %8 = load i64, ptr %arrayidx, align 8
  %and = and i64 %8, %conv7
  %tif_typeshift = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 9
  %9 = load ptr, ptr %tif_typeshift, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %9, i64 3
  %10 = load i32, ptr %arrayidx8, align 4
  %sh_prom = zext i32 %10 to i64
  %shl = shl i64 %and, %sh_prom
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %11 = load i32, ptr %v.addr, align 4
  %conv9 = zext i32 %11 to i64
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_typemask10 = getelementptr inbounds %struct.tiff, ptr %12, i64 0, i32 10
  %13 = load ptr, ptr %tif_typemask10, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %13, i64 3
  %14 = load i64, ptr %arrayidx11, align 8
  %and12 = and i64 %14, %conv9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shl, %cond.true ], [ %and12, %cond.false ]
  %conv13 = trunc i64 %cond to i32
  %15 = load ptr, ptr %dir.addr, align 8
  %tdir_offset14 = getelementptr inbounds %struct.TIFFDirEntry, ptr %15, i64 0, i32 3
  store i32 %conv13, ptr %tdir_offset14, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFWriteShortTable(ptr noundef %tif, i32 noundef %tag, ptr noundef %dir, i32 noundef %n, ptr noundef %table) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %off = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr %table, ptr %table.addr, align 8
  %conv = trunc i32 %tag to i16
  store i16 %conv, ptr %dir, align 4
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 1
  store i16 3, ptr %tdir_type, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %td_bitspersample = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %1 = load i16, ptr %td_bitspersample, align 4
  %sh_prom = zext i16 %1 to i64
  %shl = shl i64 1, %sh_prom
  %conv2 = trunc i64 %shl to i32
  %2 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %2, i64 0, i32 2
  store i32 %conv2, ptr %tdir_count, align 4
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_dataoff = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 15
  %4 = load i32, ptr %tif_dataoff, align 8
  store i32 %4, ptr %off, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %5 = load i32, ptr %n.addr, align 4
  %cmp = icmp ult i32 %storemerge, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %tif.addr, align 8
  %7 = load ptr, ptr %dir.addr, align 8
  %8 = load ptr, ptr %table.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @TIFFWriteData(ptr noundef %6, ptr noundef %7, ptr noundef %10)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4
  %inc = add i32 %11, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %n.addr, align 4
  %13 = load ptr, ptr %dir.addr, align 8
  %tdir_count4 = getelementptr inbounds %struct.TIFFDirEntry, ptr %13, i64 0, i32 2
  %14 = load i32, ptr %tdir_count4, align 4
  %mul = mul i32 %14, %12
  store i32 %mul, ptr %tdir_count4, align 4
  %15 = load i32, ptr %off, align 4
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %13, i64 0, i32 3
  store i32 %15, ptr %tdir_offset, align 4
  br label %return

return:                                           ; preds = %for.body, %for.end
  %storemerge1 = phi i32 [ 1, %for.end ], [ 0, %for.body ]
  ret i32 %storemerge1
}

; Function Attrs: nounwind ssp uwtable
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
  %fv = alloca float, align 4
  %sign = alloca i32, align 4
  %den = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  store i32 %tag, ptr %tag.addr, align 4
  store ptr %dir, ptr %dir.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr %v, ptr %v.addr, align 8
  %conv = trunc i32 %tag to i16
  store i16 %conv, ptr %dir, align 4
  %0 = load i32, ptr %type.addr, align 4
  %conv1 = trunc i32 %0 to i16
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 1
  store i16 %conv1, ptr %tdir_type, align 2
  %2 = load i32, ptr %n.addr, align 4
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  store i32 %2, ptr %tdir_count, align 4
  %mul = shl i32 %2, 3
  %call = call ptr @_TIFFmalloc(i32 noundef %mul) #2
  store ptr %call, ptr %t, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end26, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %if.end26 ]
  store i32 %storemerge, ptr %i, align 4
  %3 = load i32, ptr %n.addr, align 4
  %cmp = icmp ult i32 %storemerge, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %v.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds float, ptr %4, i64 %idxprom
  %6 = load float, ptr %arrayidx, align 4
  store float %6, ptr %fv, align 4
  store i32 1, ptr %sign, align 4
  %cmp6 = fcmp olt float %6, 0.000000e+00
  br i1 %cmp6, label %if.then, label %if.end13

if.then:                                          ; preds = %for.body
  %7 = load i32, ptr %type.addr, align 4
  %cmp8 = icmp eq i32 %7, 5
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then
  %8 = load ptr, ptr %tif.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load i32, ptr %tag.addr, align 4
  %call11 = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %8, i32 noundef %10) #2
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call11, i64 0, i32 7
  %11 = load ptr, ptr %field_name, align 8
  %12 = load float, ptr %fv, align 4
  %conv12 = fpext float %12 to double
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef %11, double noundef %conv12) #2
  store float 0.000000e+00, ptr %fv, align 4
  br label %if.end13

if.else:                                          ; preds = %if.then
  %13 = load float, ptr %fv, align 4
  %fneg = fneg float %13
  store float %fneg, ptr %fv, align 4
  store i32 -1, ptr %sign, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.else, %for.body
  store i32 1, ptr %den, align 4
  %14 = load float, ptr %fv, align 4
  %cmp14 = fcmp ogt float %14, 0.000000e+00
  br i1 %cmp14, label %while.cond, label %if.end26

while.cond:                                       ; preds = %if.end13, %while.body
  %15 = load float, ptr %fv, align 4
  %cmp17 = fcmp olt float %15, 0x41B0000000000000
  %16 = load i32, ptr %den, align 4
  %cmp20 = icmp ult i32 %16, 268435456
  %17 = select i1 %cmp17, i1 %cmp20, i1 false
  br i1 %17, label %while.body, label %if.end26

while.body:                                       ; preds = %while.cond
  %18 = load float, ptr %fv, align 4
  %mul22 = fmul float %18, 8.000000e+00
  store float %mul22, ptr %fv, align 4
  %19 = load i32, ptr %den, align 4
  %mul24 = shl i32 %19, 3
  store i32 %mul24, ptr %den, align 4
  br label %while.cond, !llvm.loop !12

if.end26:                                         ; preds = %while.cond, %if.end13
  %20 = load i32, ptr %sign, align 4
  %conv27 = sitofp i32 %20 to double
  %21 = load float, ptr %fv, align 4
  %conv28 = fpext float %21 to double
  %add = fadd double %conv28, 5.000000e-01
  %mul29 = fmul double %add, %conv27
  %conv30 = fptoui double %mul29 to i32
  %22 = load ptr, ptr %t, align 8
  %23 = load i32, ptr %i, align 4
  %mul31 = shl i32 %23, 1
  %idxprom33 = zext i32 %mul31 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %22, i64 %idxprom33
  store i32 %conv30, ptr %arrayidx34, align 4
  %24 = load i32, ptr %den, align 4
  %25 = load ptr, ptr %t, align 8
  %26 = load i32, ptr %i, align 4
  %mul35 = shl i32 %26, 1
  %add36 = or i32 %mul35, 1
  %idxprom37 = zext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %25, i64 %idxprom37
  store i32 %24, ptr %arrayidx38, align 4
  %27 = load i32, ptr %i, align 4
  %inc = add i32 %27, 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %28 = load ptr, ptr %tif.addr, align 8
  %29 = load ptr, ptr %dir.addr, align 8
  %30 = load ptr, ptr %t, align 8
  %call39 = call i32 @TIFFWriteData(ptr noundef %28, ptr noundef %29, ptr noundef %30)
  call void @_TIFFfree(ptr noundef %30) #2
  ret i32 %call39
}

; Function Attrs: nounwind ssp uwtable
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
  store ptr %buf, ptr %w, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 15
  %0 = load i16, ptr %td_samplesperpixel, align 2
  %conv = zext i16 %0 to i32
  store i32 %conv, ptr %samples, align 4
  %cmp = icmp ugt i16 %0, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %samples, align 4
  %mul = shl i32 %1, 1
  %call = call ptr @_TIFFmalloc(i32 noundef %mul) #2
  store ptr %call, ptr %w, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load i32, ptr %tag.addr, align 4
  %call5 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %2, i32 noundef %3, ptr noundef nonnull %v) #2
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %4 = load i32, ptr %samples, align 4
  %cmp6 = icmp slt i32 %storemerge, %4
  br i1 %cmp6, label %for.body, label %for.end

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
  %10 = load i32, ptr %tag.addr, align 4
  %11 = load ptr, ptr %dir.addr, align 8
  %12 = load i32, ptr %samples, align 4
  %13 = load ptr, ptr %w, align 8
  %call8 = call i32 @TIFFWriteShortArray(ptr noundef %9, i32 noundef 3, i32 noundef %10, ptr noundef %11, i32 noundef %12, ptr noundef %13)
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
  store ptr %buf, ptr %w, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 15
  %0 = load i16, ptr %td_samplesperpixel, align 2
  %conv = zext i16 %0 to i32
  store i32 %conv, ptr %samples, align 4
  %cmp = icmp ugt i16 %0, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %samples, align 4
  %mul = shl i32 %1, 3
  %call = call ptr @_TIFFmalloc(i32 noundef %mul) #2
  store ptr %call, ptr %w, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %3 = load i32, ptr %tag.addr, align 4
  %call5 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %2, i32 noundef %3, ptr noundef nonnull %v) #2
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %4 = load i32, ptr %samples, align 4
  %cmp6 = icmp slt i32 %storemerge, %4
  br i1 %cmp6, label %for.body, label %for.end

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
  %11 = load i32, ptr %tag.addr, align 4
  %12 = load ptr, ptr %dir.addr, align 8
  %13 = load i32, ptr %samples, align 4
  %14 = load ptr, ptr %w, align 8
  %call8 = call i32 @TIFFWriteAnyArray(ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14)
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
define internal i32 @TIFFSetupShortPair(ptr noundef %tif, i32 noundef %tag, ptr noundef %dir) #0 {
entry:
  %v = alloca [2 x i16], align 2
  %arrayidx1 = getelementptr inbounds [2 x i16], ptr %v, i64 0, i64 1
  %call = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %tif, i32 noundef %tag, ptr noundef nonnull %v, ptr noundef nonnull %arrayidx1) #2
  %call2 = call i32 @TIFFWriteShortArray(ptr noundef %tif, i32 noundef 3, i32 noundef %tag, ptr noundef %dir, i32 noundef 2, ptr noundef nonnull %v)
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
  store i16 333, ptr %dir, align 4
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 1
  store i16 2, ptr %tdir_type, align 2
  %td_inknameslen = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 58
  %0 = load i32, ptr %td_inknameslen, align 8
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  store i32 %0, ptr %tdir_count, align 4
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
  %n = alloca i32, align 4
  %tf = alloca ptr, align 8
  %ncols = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 8
  %0 = load i16, ptr %td_bitspersample, align 4
  %sh_prom = zext i16 %0 to i64
  %mul = shl i64 2, %sh_prom
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, ptr %n, align 4
  %1 = load ptr, ptr %td, align 8
  %td_transferfunction = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i64 0, i32 54
  store ptr %td_transferfunction, ptr %tf, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i64 0, i32 15
  %2 = load i16, ptr %td_samplesperpixel, align 2
  %conv2 = zext i16 %2 to i32
  %td_extrasamples = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i64 0, i32 30
  %3 = load i16, ptr %td_extrasamples, align 4
  %conv3 = zext i16 %3 to i32
  %sub = sub nsw i32 %conv2, %conv3
  switch i32 %sub, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb11
    i32 0, label %sw.bb11
  ]

sw.default:                                       ; preds = %entry
  %4 = load ptr, ptr %tf, align 8
  %5 = load ptr, ptr %4, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %arrayidx4, align 8
  %7 = load i32, ptr %n, align 4
  %call = call i32 @_TIFFmemcmp(ptr noundef %5, ptr noundef %6, i32 noundef %7) #2
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %sw.bb, label %if.then

if.then:                                          ; preds = %sw.default
  store i32 3, ptr %ncols, align 4
  br label %sw.epilog

sw.bb:                                            ; preds = %sw.default, %entry
  %8 = load ptr, ptr %tf, align 8
  %9 = load ptr, ptr %8, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %8, i64 1
  %10 = load ptr, ptr %arrayidx6, align 8
  %11 = load i32, ptr %n, align 4
  %call7 = call i32 @_TIFFmemcmp(ptr noundef %9, ptr noundef %10, i32 noundef %11) #2
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %sw.bb11, label %if.then9

if.then9:                                         ; preds = %sw.bb
  store i32 3, ptr %ncols, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %sw.bb, %entry, %entry
  store i32 1, ptr %ncols, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %if.then9, %if.then
  %12 = load ptr, ptr %tif.addr, align 8
  %13 = load ptr, ptr %dir.addr, align 8
  %14 = load i32, ptr %ncols, align 4
  %15 = load ptr, ptr %tf, align 8
  %call12 = call i32 @TIFFWriteShortTable(ptr noundef %12, i32 noundef 301, ptr noundef %13, i32 noundef %14, ptr noundef %15)
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
  %field_writecount = getelementptr inbounds %struct.TIFFFieldInfo, ptr %fip, i64 0, i32 2
  %0 = load i16, ptr %field_writecount, align 2
  store i16 %0, ptr %wc, align 2
  %1 = load i32, ptr %fip, align 8
  %conv = trunc i32 %1 to i16
  %2 = load ptr, ptr %dir.addr, align 8
  store i16 %conv, ptr %2, align 4
  %3 = load ptr, ptr %fip.addr, align 8
  %field_type = getelementptr inbounds %struct.TIFFFieldInfo, ptr %3, i64 0, i32 3
  %4 = load i32, ptr %field_type, align 8
  %conv1 = trunc i32 %4 to i16
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %2, i64 0, i32 1
  store i16 %conv1, ptr %tdir_type, align 2
  %5 = load i16, ptr %wc, align 2
  %conv2 = zext i16 %5 to i32
  %6 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %6, i64 0, i32 2
  store i32 %conv2, ptr %tdir_count, align 4
  %7 = load ptr, ptr %fip.addr, align 8
  %field_type3 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %7, i64 0, i32 3
  %8 = load i32, ptr %field_type3, align 8
  switch i32 %8, label %sw.epilog [
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
  %13 = load i32, ptr %12, align 8
  %call = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %11, i32 noundef %13, ptr noundef nonnull %wc, ptr noundef nonnull %wp) #2
  br label %if.end

if.else:                                          ; preds = %if.then
  %14 = load ptr, ptr %tif.addr, align 8
  %15 = load ptr, ptr %fip.addr, align 8
  %16 = load i32, ptr %15, align 8
  %call12 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %14, i32 noundef %16, ptr noundef nonnull %wp) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then9
  %17 = load ptr, ptr %tif.addr, align 8
  %18 = load ptr, ptr %fip.addr, align 8
  %field_type13 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %18, i64 0, i32 3
  %19 = load i32, ptr %field_type13, align 8
  %20 = load i32, ptr %18, align 8
  %21 = load ptr, ptr %dir.addr, align 8
  %22 = load i16, ptr %wc, align 2
  %conv15 = zext i16 %22 to i32
  %23 = load ptr, ptr %wp, align 8
  %call16 = call i32 @TIFFWriteShortArray(ptr noundef %17, i32 noundef %19, i32 noundef %20, ptr noundef %21, i32 noundef %conv15, ptr noundef %23)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.then17, label %sw.epilog

if.then17:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.else19:                                        ; preds = %sw.bb
  %24 = load ptr, ptr %tif.addr, align 8
  %25 = load ptr, ptr %fip.addr, align 8
  %26 = load i32, ptr %25, align 8
  %call21 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %24, i32 noundef %26, ptr noundef nonnull %sv) #2
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
  %conv36 = trunc i64 %cond to i32
  %45 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %45, i64 0, i32 3
  store i32 %conv36, ptr %tdir_offset, align 4
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry, %entry
  %46 = load i16, ptr %wc, align 2
  %cmp40 = icmp ugt i16 %46, 1
  br i1 %cmp40, label %if.then42, label %if.else60

if.then42:                                        ; preds = %sw.bb38
  %47 = load i16, ptr %wc, align 2
  %cmp44 = icmp eq i16 %47, -1
  br i1 %cmp44, label %if.then46, label %if.else49

if.then46:                                        ; preds = %if.then42
  %48 = load ptr, ptr %tif.addr, align 8
  %49 = load ptr, ptr %fip.addr, align 8
  %50 = load i32, ptr %49, align 8
  %call48 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %48, i32 noundef %50, ptr noundef nonnull %wc, ptr noundef nonnull %lp) #2
  br label %if.end52

if.else49:                                        ; preds = %if.then42
  %51 = load ptr, ptr %tif.addr, align 8
  %52 = load ptr, ptr %fip.addr, align 8
  %53 = load i32, ptr %52, align 8
  %call51 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %51, i32 noundef %53, ptr noundef nonnull %lp) #2
  br label %if.end52

if.end52:                                         ; preds = %if.else49, %if.then46
  %54 = load ptr, ptr %tif.addr, align 8
  %55 = load ptr, ptr %fip.addr, align 8
  %field_type53 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %55, i64 0, i32 3
  %56 = load i32, ptr %field_type53, align 8
  %57 = load i32, ptr %55, align 8
  %58 = load ptr, ptr %dir.addr, align 8
  %59 = load i16, ptr %wc, align 2
  %conv55 = zext i16 %59 to i32
  %60 = load ptr, ptr %lp, align 8
  %call56 = call i32 @TIFFWriteLongArray(ptr noundef %54, i32 noundef %56, i32 noundef %57, ptr noundef %58, i32 noundef %conv55, ptr noundef %60)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then58, label %sw.epilog

if.then58:                                        ; preds = %if.end52
  store i32 0, ptr %retval, align 4
  br label %return

if.else60:                                        ; preds = %sw.bb38
  %61 = load ptr, ptr %tif.addr, align 8
  %62 = load ptr, ptr %fip.addr, align 8
  %63 = load i32, ptr %62, align 8
  %64 = load ptr, ptr %dir.addr, align 8
  %tdir_offset62 = getelementptr inbounds %struct.TIFFDirEntry, ptr %64, i64 0, i32 3
  %call63 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %61, i32 noundef %63, ptr noundef nonnull %tdir_offset62) #2
  br label %sw.epilog

sw.bb65:                                          ; preds = %entry, %entry
  %65 = load i16, ptr %wc, align 2
  %cmp67 = icmp ugt i16 %65, 1
  br i1 %cmp67, label %if.then69, label %if.else87

if.then69:                                        ; preds = %sw.bb65
  %66 = load i16, ptr %wc, align 2
  %cmp71 = icmp eq i16 %66, -1
  br i1 %cmp71, label %if.then73, label %if.else76

if.then73:                                        ; preds = %if.then69
  %67 = load ptr, ptr %tif.addr, align 8
  %68 = load ptr, ptr %fip.addr, align 8
  %69 = load i32, ptr %68, align 8
  %call75 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %67, i32 noundef %69, ptr noundef nonnull %wc, ptr noundef nonnull %fp) #2
  br label %if.end79

if.else76:                                        ; preds = %if.then69
  %70 = load ptr, ptr %tif.addr, align 8
  %71 = load ptr, ptr %fip.addr, align 8
  %72 = load i32, ptr %71, align 8
  %call78 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %70, i32 noundef %72, ptr noundef nonnull %fp) #2
  br label %if.end79

if.end79:                                         ; preds = %if.else76, %if.then73
  %73 = load ptr, ptr %tif.addr, align 8
  %74 = load ptr, ptr %fip.addr, align 8
  %field_type80 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %74, i64 0, i32 3
  %75 = load i32, ptr %field_type80, align 8
  %76 = load i32, ptr %74, align 8
  %77 = load ptr, ptr %dir.addr, align 8
  %78 = load i16, ptr %wc, align 2
  %conv82 = zext i16 %78 to i32
  %79 = load ptr, ptr %fp, align 8
  %call83 = call i32 @TIFFWriteRationalArray(ptr noundef %73, i32 noundef %75, i32 noundef %76, ptr noundef %77, i32 noundef %conv82, ptr noundef %79)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then85, label %sw.epilog

if.then85:                                        ; preds = %if.end79
  store i32 0, ptr %retval, align 4
  br label %return

if.else87:                                        ; preds = %sw.bb65
  %80 = load ptr, ptr %tif.addr, align 8
  %81 = load ptr, ptr %fip.addr, align 8
  %82 = load i32, ptr %81, align 8
  %call89 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %80, i32 noundef %82, ptr noundef nonnull %fv) #2
  %field_type90 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %81, i64 0, i32 3
  %83 = load i32, ptr %field_type90, align 8
  %84 = load i32, ptr %81, align 8
  %85 = load ptr, ptr %dir.addr, align 8
  %86 = load i16, ptr %wc, align 2
  %conv92 = zext i16 %86 to i32
  %call93 = call i32 @TIFFWriteRationalArray(ptr noundef %80, i32 noundef %83, i32 noundef %84, ptr noundef %85, i32 noundef %conv92, ptr noundef nonnull %fv)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.then95, label %sw.epilog

if.then95:                                        ; preds = %if.else87
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb98:                                          ; preds = %entry
  %87 = load i16, ptr %wc, align 2
  %cmp100 = icmp ugt i16 %87, 1
  br i1 %cmp100, label %if.then102, label %if.else121

if.then102:                                       ; preds = %sw.bb98
  %88 = load i16, ptr %wc, align 2
  %cmp105 = icmp eq i16 %88, -1
  br i1 %cmp105, label %if.then107, label %if.else110

if.then107:                                       ; preds = %if.then102
  %89 = load ptr, ptr %tif.addr, align 8
  %90 = load ptr, ptr %fip.addr, align 8
  %91 = load i32, ptr %90, align 8
  %call109 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %89, i32 noundef %91, ptr noundef nonnull %wc, ptr noundef nonnull %fp103) #2
  br label %if.end113

if.else110:                                       ; preds = %if.then102
  %92 = load ptr, ptr %tif.addr, align 8
  %93 = load ptr, ptr %fip.addr, align 8
  %94 = load i32, ptr %93, align 8
  %call112 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %92, i32 noundef %94, ptr noundef nonnull %fp103) #2
  br label %if.end113

if.end113:                                        ; preds = %if.else110, %if.then107
  %95 = load ptr, ptr %tif.addr, align 8
  %96 = load ptr, ptr %fip.addr, align 8
  %field_type114 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %96, i64 0, i32 3
  %97 = load i32, ptr %field_type114, align 8
  %98 = load i32, ptr %96, align 8
  %99 = load ptr, ptr %dir.addr, align 8
  %100 = load i16, ptr %wc, align 2
  %conv116 = zext i16 %100 to i32
  %101 = load ptr, ptr %fp103, align 8
  %call117 = call i32 @TIFFWriteFloatArray(ptr noundef %95, i32 noundef %97, i32 noundef %98, ptr noundef %99, i32 noundef %conv116, ptr noundef %101)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.then119, label %sw.epilog

if.then119:                                       ; preds = %if.end113
  store i32 0, ptr %retval, align 4
  br label %return

if.else121:                                       ; preds = %sw.bb98
  %102 = load ptr, ptr %tif.addr, align 8
  %103 = load ptr, ptr %fip.addr, align 8
  %104 = load i32, ptr %103, align 8
  %call124 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %102, i32 noundef %104, ptr noundef nonnull %fv122) #2
  %field_type125 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %103, i64 0, i32 3
  %105 = load i32, ptr %field_type125, align 8
  %106 = load i32, ptr %103, align 8
  %107 = load ptr, ptr %dir.addr, align 8
  %108 = load i16, ptr %wc, align 2
  %conv127 = zext i16 %108 to i32
  %call128 = call i32 @TIFFWriteFloatArray(ptr noundef %102, i32 noundef %105, i32 noundef %106, ptr noundef %107, i32 noundef %conv127, ptr noundef nonnull %fv122)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.then130, label %sw.epilog

if.then130:                                       ; preds = %if.else121
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb133:                                         ; preds = %entry
  %109 = load i16, ptr %wc, align 2
  %cmp135 = icmp ugt i16 %109, 1
  br i1 %cmp135, label %if.then137, label %if.else155

if.then137:                                       ; preds = %sw.bb133
  %110 = load i16, ptr %wc, align 2
  %cmp139 = icmp eq i16 %110, -1
  br i1 %cmp139, label %if.then141, label %if.else144

if.then141:                                       ; preds = %if.then137
  %111 = load ptr, ptr %tif.addr, align 8
  %112 = load ptr, ptr %fip.addr, align 8
  %113 = load i32, ptr %112, align 8
  %call143 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %111, i32 noundef %113, ptr noundef nonnull %wc, ptr noundef nonnull %dp) #2
  br label %if.end147

if.else144:                                       ; preds = %if.then137
  %114 = load ptr, ptr %tif.addr, align 8
  %115 = load ptr, ptr %fip.addr, align 8
  %116 = load i32, ptr %115, align 8
  %call146 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %114, i32 noundef %116, ptr noundef nonnull %dp) #2
  br label %if.end147

if.end147:                                        ; preds = %if.else144, %if.then141
  %117 = load ptr, ptr %tif.addr, align 8
  %118 = load ptr, ptr %fip.addr, align 8
  %field_type148 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %118, i64 0, i32 3
  %119 = load i32, ptr %field_type148, align 8
  %120 = load i32, ptr %118, align 8
  %121 = load ptr, ptr %dir.addr, align 8
  %122 = load i16, ptr %wc, align 2
  %conv150 = zext i16 %122 to i32
  %123 = load ptr, ptr %dp, align 8
  %call151 = call i32 @TIFFWriteDoubleArray(ptr noundef %117, i32 noundef %119, i32 noundef %120, ptr noundef %121, i32 noundef %conv150, ptr noundef %123)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.then153, label %sw.epilog

if.then153:                                       ; preds = %if.end147
  store i32 0, ptr %retval, align 4
  br label %return

if.else155:                                       ; preds = %sw.bb133
  %124 = load ptr, ptr %tif.addr, align 8
  %125 = load ptr, ptr %fip.addr, align 8
  %126 = load i32, ptr %125, align 8
  %call157 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %124, i32 noundef %126, ptr noundef nonnull %dv) #2
  %field_type158 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %125, i64 0, i32 3
  %127 = load i32, ptr %field_type158, align 8
  %128 = load i32, ptr %125, align 8
  %129 = load ptr, ptr %dir.addr, align 8
  %130 = load i16, ptr %wc, align 2
  %conv160 = zext i16 %130 to i32
  %call161 = call i32 @TIFFWriteDoubleArray(ptr noundef %124, i32 noundef %127, i32 noundef %128, ptr noundef %129, i32 noundef %conv160, ptr noundef nonnull %dv)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.then163, label %sw.epilog

if.then163:                                       ; preds = %if.else155
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb166:                                         ; preds = %entry
  %131 = load ptr, ptr %tif.addr, align 8
  %132 = load ptr, ptr %fip.addr, align 8
  %133 = load i32, ptr %132, align 8
  %call168 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %131, i32 noundef %133, ptr noundef nonnull %cp) #2
  %134 = load ptr, ptr %cp, align 8
  %call169 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %134) #2
  %135 = trunc i64 %call169 to i32
  %conv170 = add i32 %135, 1
  %136 = load ptr, ptr %dir.addr, align 8
  %tdir_count171 = getelementptr inbounds %struct.TIFFDirEntry, ptr %136, i64 0, i32 2
  store i32 %conv170, ptr %tdir_count171, align 4
  %137 = load ptr, ptr %tif.addr, align 8
  %138 = load ptr, ptr %cp, align 8
  %call172 = call i32 @TIFFWriteByteArray(ptr noundef %137, ptr noundef %136, ptr noundef %138)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.then174, label %sw.epilog

if.then174:                                       ; preds = %sw.bb166
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb176:                                         ; preds = %entry, %entry
  %139 = load i16, ptr %wc, align 2
  %cmp178 = icmp ugt i16 %139, 1
  br i1 %cmp178, label %if.then180, label %if.else198

if.then180:                                       ; preds = %sw.bb176
  %140 = load i16, ptr %wc, align 2
  %cmp183 = icmp eq i16 %140, -1
  br i1 %cmp183, label %if.then185, label %if.else190

if.then185:                                       ; preds = %if.then180
  %141 = load ptr, ptr %tif.addr, align 8
  %142 = load ptr, ptr %fip.addr, align 8
  %143 = load i32, ptr %142, align 8
  %call187 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %141, i32 noundef %143, ptr noundef nonnull %wc, ptr noundef nonnull %cp181) #2
  %144 = load i16, ptr %wc, align 2
  %conv188 = zext i16 %144 to i32
  %145 = load ptr, ptr %dir.addr, align 8
  %tdir_count189 = getelementptr inbounds %struct.TIFFDirEntry, ptr %145, i64 0, i32 2
  store i32 %conv188, ptr %tdir_count189, align 4
  br label %if.end193

if.else190:                                       ; preds = %if.then180
  %146 = load ptr, ptr %tif.addr, align 8
  %147 = load ptr, ptr %fip.addr, align 8
  %148 = load i32, ptr %147, align 8
  %call192 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %146, i32 noundef %148, ptr noundef nonnull %cp181) #2
  br label %if.end193

if.end193:                                        ; preds = %if.else190, %if.then185
  %149 = load ptr, ptr %tif.addr, align 8
  %150 = load ptr, ptr %dir.addr, align 8
  %151 = load ptr, ptr %cp181, align 8
  %call194 = call i32 @TIFFWriteByteArray(ptr noundef %149, ptr noundef %150, ptr noundef %151)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %if.then196, label %sw.epilog

if.then196:                                       ; preds = %if.end193
  store i32 0, ptr %retval, align 4
  br label %return

if.else198:                                       ; preds = %sw.bb176
  %152 = load ptr, ptr %tif.addr, align 8
  %153 = load ptr, ptr %fip.addr, align 8
  %154 = load i32, ptr %153, align 8
  %call200 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %152, i32 noundef %154, ptr noundef nonnull %cv) #2
  %155 = load ptr, ptr %dir.addr, align 8
  %call201 = call i32 @TIFFWriteByteArray(ptr noundef %152, ptr noundef %155, ptr noundef nonnull %cv)
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %if.then203, label %sw.epilog

if.then203:                                       ; preds = %if.else198
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb206:                                         ; preds = %entry
  %156 = load i16, ptr %wc, align 2
  %cmp209 = icmp eq i16 %156, -1
  br i1 %cmp209, label %if.then211, label %if.else216

if.then211:                                       ; preds = %sw.bb206
  %157 = load ptr, ptr %tif.addr, align 8
  %158 = load ptr, ptr %fip.addr, align 8
  %159 = load i32, ptr %158, align 8
  %call213 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %157, i32 noundef %159, ptr noundef nonnull %wc, ptr noundef nonnull %cp207) #2
  %160 = load i16, ptr %wc, align 2
  %conv214 = zext i16 %160 to i32
  %161 = load ptr, ptr %dir.addr, align 8
  %tdir_count215 = getelementptr inbounds %struct.TIFFDirEntry, ptr %161, i64 0, i32 2
  store i32 %conv214, ptr %tdir_count215, align 4
  br label %if.end228

if.else216:                                       ; preds = %sw.bb206
  %162 = load i16, ptr %wc, align 2
  %cmp218 = icmp eq i16 %162, -3
  br i1 %cmp218, label %if.then220, label %if.else224

if.then220:                                       ; preds = %if.else216
  %163 = load ptr, ptr %tif.addr, align 8
  %164 = load ptr, ptr %fip.addr, align 8
  %165 = load i32, ptr %164, align 8
  %call222 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %163, i32 noundef %165, ptr noundef nonnull %wc2, ptr noundef nonnull %cp207) #2
  %166 = load i32, ptr %wc2, align 4
  %167 = load ptr, ptr %dir.addr, align 8
  %tdir_count223 = getelementptr inbounds %struct.TIFFDirEntry, ptr %167, i64 0, i32 2
  store i32 %166, ptr %tdir_count223, align 4
  br label %if.end228

if.else224:                                       ; preds = %if.else216
  %168 = load ptr, ptr %tif.addr, align 8
  %169 = load ptr, ptr %fip.addr, align 8
  %170 = load i32, ptr %169, align 8
  %call226 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %168, i32 noundef %170, ptr noundef nonnull %cp207) #2
  br label %if.end228

if.end228:                                        ; preds = %if.then220, %if.else224, %if.then211
  %171 = load ptr, ptr %tif.addr, align 8
  %172 = load ptr, ptr %dir.addr, align 8
  %173 = load ptr, ptr %cp207, align 8
  %call229 = call i32 @TIFFWriteByteArray(ptr noundef %171, ptr noundef %172, ptr noundef %173)
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %if.then231, label %sw.epilog

if.then231:                                       ; preds = %if.end228
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end228, %if.end193, %if.else198, %sw.bb166, %if.end147, %if.else155, %if.end113, %if.else121, %if.end79, %if.else87, %if.else60, %if.end52, %cond.end, %if.end, %entry
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then231, %if.then203, %if.then196, %if.then174, %if.then163, %if.then153, %if.then130, %if.then119, %if.then95, %if.then85, %if.then58, %if.then17
  %174 = load i32, ptr %retval, align 4
  ret i32 %174
}

declare void @TIFFSwabArrayOfShort(ptr noundef, i64 noundef) #1

declare void @TIFFSwabArrayOfLong(ptr noundef, i64 noundef) #1

declare void @TIFFSwabShort(ptr noundef) #1

declare void @TIFFSwabLong(ptr noundef) #1

declare void @TIFFFreeDirectory(ptr noundef) #1

declare i32 @TIFFDefaultDirectory(ptr noundef) #1

declare i32 @TIFFGetField(ptr noundef, i32 noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFWriteShortArray(ptr noundef %tif, i32 noundef %type, i32 noundef %tag, ptr noundef %dir, i32 noundef %n, ptr noundef %v) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr %v, ptr %v.addr, align 8
  %conv = trunc i32 %tag to i16
  store i16 %conv, ptr %dir, align 4
  %conv1 = trunc i32 %type to i16
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 1
  store i16 %conv1, ptr %tdir_type, align 2
  %0 = load i32, ptr %n.addr, align 4
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  store i32 %0, ptr %tdir_count, align 4
  %cmp = icmp ult i32 %0, 3
  br i1 %cmp, label %if.then, label %if.else31

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 7
  %3 = load i16, ptr %tif_header, align 8
  %cmp4 = icmp eq i16 %3, 19789
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  %4 = load ptr, ptr %v.addr, align 8
  %5 = load i16, ptr %4, align 2
  %conv7 = zext i16 %5 to i32
  %shl = shl nuw i32 %conv7, 16
  %6 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %6, i64 0, i32 3
  store i32 %shl, ptr %tdir_offset, align 4
  %7 = load i32, ptr %n.addr, align 4
  %cmp9 = icmp eq i32 %7, 2
  br i1 %cmp9, label %if.then11, label %return

if.then11:                                        ; preds = %if.then6
  %8 = load ptr, ptr %v.addr, align 8
  %arrayidx12 = getelementptr inbounds i16, ptr %8, i64 1
  %9 = load i16, ptr %arrayidx12, align 2
  %conv13 = zext i16 %9 to i32
  %10 = load ptr, ptr %dir.addr, align 8
  %tdir_offset14 = getelementptr inbounds %struct.TIFFDirEntry, ptr %10, i64 0, i32 3
  %11 = load i32, ptr %tdir_offset14, align 4
  %or = or i32 %11, %conv13
  store i32 %or, ptr %tdir_offset14, align 4
  br label %return

if.else:                                          ; preds = %if.then
  %12 = load ptr, ptr %v.addr, align 8
  %13 = load i16, ptr %12, align 2
  %conv16 = zext i16 %13 to i32
  %14 = load ptr, ptr %dir.addr, align 8
  %tdir_offset18 = getelementptr inbounds %struct.TIFFDirEntry, ptr %14, i64 0, i32 3
  store i32 %conv16, ptr %tdir_offset18, align 4
  %15 = load i32, ptr %n.addr, align 4
  %cmp19 = icmp eq i32 %15, 2
  br i1 %cmp19, label %if.then21, label %return

if.then21:                                        ; preds = %if.else
  %16 = load ptr, ptr %v.addr, align 8
  %arrayidx22 = getelementptr inbounds i16, ptr %16, i64 1
  %17 = load i16, ptr %arrayidx22, align 2
  %conv23 = zext i16 %17 to i32
  %shl24 = shl nuw i32 %conv23, 16
  %18 = load ptr, ptr %dir.addr, align 8
  %tdir_offset25 = getelementptr inbounds %struct.TIFFDirEntry, ptr %18, i64 0, i32 3
  %19 = load i32, ptr %tdir_offset25, align 4
  %or27 = or i32 %shl24, %19
  store i32 %or27, ptr %tdir_offset25, align 4
  br label %return

if.else31:                                        ; preds = %entry
  %20 = load ptr, ptr %tif.addr, align 8
  %21 = load ptr, ptr %dir.addr, align 8
  %22 = load ptr, ptr %v.addr, align 8
  %call = call i32 @TIFFWriteData(ptr noundef %20, ptr noundef %21, ptr noundef %22)
  br label %return

return:                                           ; preds = %if.then11, %if.then6, %if.then21, %if.else, %if.else31
  %storemerge = phi i32 [ %call, %if.else31 ], [ 1, %if.else ], [ 1, %if.then21 ], [ 1, %if.then6 ], [ 1, %if.then11 ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFWriteFloatArray(ptr noundef %tif, i32 noundef %type, i32 noundef %tag, ptr noundef %dir, i32 noundef %n, ptr noundef %v) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr %v, ptr %v.addr, align 8
  %conv = trunc i32 %tag to i16
  store i16 %conv, ptr %dir, align 4
  %conv1 = trunc i32 %type to i16
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 1
  store i16 %conv1, ptr %tdir_type, align 2
  %0 = load i32, ptr %n.addr, align 4
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  store i32 %0, ptr %tdir_count, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %v.addr, align 8
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %4, i64 0, i32 3
  store i32 %3, ptr %tdir_offset, align 4
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
define internal i32 @TIFFWriteDoubleArray(ptr noundef %tif, i32 noundef %type, i32 noundef %tag, ptr noundef %dir, i32 noundef %n, ptr noundef %v) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr %v, ptr %v.addr, align 8
  %conv = trunc i32 %tag to i16
  store i16 %conv, ptr %dir, align 4
  %conv1 = trunc i32 %type to i16
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %dir, i64 0, i32 1
  store i16 %conv1, ptr %tdir_type, align 2
  %0 = load i32, ptr %n.addr, align 4
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  store i32 %0, ptr %tdir_count, align 4
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
  %0 = load i32, ptr %tdir_count, align 4
  %cmp = icmp ugt i32 %0, 4
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
  %6 = load i32, ptr %tdir_count2, align 4
  call void @_TIFFmemcpy(ptr noundef nonnull %tdir_offset, ptr noundef %5, i32 noundef %6) #2
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
  %cc = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 3
  %0 = load i32, ptr %tif_flags, align 8
  %and = and i32 %0, 128
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dir.addr, align 8
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 1
  %2 = load i16, ptr %tdir_type, align 2
  switch i16 %2, label %if.end [
    i16 3, label %sw.bb
    i16 8, label %sw.bb
    i16 4, label %sw.bb2
    i16 9, label %sw.bb2
    i16 11, label %sw.bb2
    i16 5, label %sw.bb5
    i16 10, label %sw.bb5
    i16 12, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.then, %if.then
  %3 = load ptr, ptr %cp.addr, align 8
  %4 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %4, i64 0, i32 2
  %5 = load i32, ptr %tdir_count, align 4
  %conv1 = zext i32 %5 to i64
  call void @TIFFSwabArrayOfShort(ptr noundef %3, i64 noundef %conv1) #2
  br label %if.end

sw.bb2:                                           ; preds = %if.then, %if.then, %if.then
  %6 = load ptr, ptr %cp.addr, align 8
  %7 = load ptr, ptr %dir.addr, align 8
  %tdir_count3 = getelementptr inbounds %struct.TIFFDirEntry, ptr %7, i64 0, i32 2
  %8 = load i32, ptr %tdir_count3, align 4
  %conv4 = zext i32 %8 to i64
  call void @TIFFSwabArrayOfLong(ptr noundef %6, i64 noundef %conv4) #2
  br label %if.end

sw.bb5:                                           ; preds = %if.then, %if.then
  %9 = load ptr, ptr %cp.addr, align 8
  %10 = load ptr, ptr %dir.addr, align 8
  %tdir_count6 = getelementptr inbounds %struct.TIFFDirEntry, ptr %10, i64 0, i32 2
  %11 = load i32, ptr %tdir_count6, align 4
  %mul = shl i32 %11, 1
  %conv7 = zext i32 %mul to i64
  call void @TIFFSwabArrayOfLong(ptr noundef %9, i64 noundef %conv7) #2
  br label %if.end

sw.bb8:                                           ; preds = %if.then
  %12 = load ptr, ptr %cp.addr, align 8
  %13 = load ptr, ptr %dir.addr, align 8
  %tdir_count9 = getelementptr inbounds %struct.TIFFDirEntry, ptr %13, i64 0, i32 2
  %14 = load i32, ptr %tdir_count9, align 4
  %conv10 = zext i32 %14 to i64
  call void @TIFFSwabArrayOfDouble(ptr noundef %12, i64 noundef %conv10) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb, %sw.bb2, %sw.bb5, %sw.bb8, %entry
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_dataoff = getelementptr inbounds %struct.tiff, ptr %15, i64 0, i32 15
  %16 = load i32, ptr %tif_dataoff, align 8
  %17 = load ptr, ptr %dir.addr, align 8
  %tdir_offset = getelementptr inbounds %struct.TIFFDirEntry, ptr %17, i64 0, i32 3
  store i32 %16, ptr %tdir_offset, align 4
  %tdir_count11 = getelementptr inbounds %struct.TIFFDirEntry, ptr %17, i64 0, i32 2
  %18 = load i32, ptr %tdir_count11, align 4
  %tdir_type12 = getelementptr inbounds %struct.TIFFDirEntry, ptr %17, i64 0, i32 1
  %19 = load i16, ptr %tdir_type12, align 2
  %idxprom = zext i16 %19 to i64
  %arrayidx = getelementptr inbounds [0 x i32], ptr @tiffDataWidth, i64 0, i64 %idxprom
  %20 = load i32, ptr %arrayidx, align 4
  %mul13 = mul i32 %18, %20
  store i32 %mul13, ptr %cc, align 4
  %21 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %21, i64 0, i32 51
  %22 = load ptr, ptr %tif_seekproc, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %21, i64 0, i32 48
  %23 = load ptr, ptr %tif_clientdata, align 8
  %24 = load ptr, ptr %dir.addr, align 8
  %tdir_offset14 = getelementptr inbounds %struct.TIFFDirEntry, ptr %24, i64 0, i32 3
  %25 = load i32, ptr %tdir_offset14, align 4
  %call = call i32 %22(ptr noundef %23, i32 noundef %25, i32 noundef 0) #2
  %tdir_offset15 = getelementptr inbounds %struct.TIFFDirEntry, ptr %24, i64 0, i32 3
  %26 = load i32, ptr %tdir_offset15, align 4
  %cmp = icmp eq i32 %call, %26
  br i1 %cmp, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.end
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 50
  %28 = load ptr, ptr %tif_writeproc, align 8
  %tif_clientdata17 = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 48
  %29 = load ptr, ptr %tif_clientdata17, align 8
  %30 = load ptr, ptr %cp.addr, align 8
  %31 = load i32, ptr %cc, align 4
  %call18 = call i32 %28(ptr noundef %29, ptr noundef %30, i32 noundef %31) #2
  %cmp19 = icmp eq i32 %call18, %31
  br i1 %cmp19, label %if.then21, label %if.end25

if.then21:                                        ; preds = %land.lhs.true
  %32 = load i32, ptr %cc, align 4
  %add = add nsw i32 %32, 1
  %and22 = and i32 %add, -2
  %33 = load ptr, ptr %tif.addr, align 8
  %tif_dataoff23 = getelementptr inbounds %struct.tiff, ptr %33, i64 0, i32 15
  %34 = load i32, ptr %tif_dataoff23, align 8
  %add24 = add nsw i32 %34, %and22
  store i32 %add24, ptr %tif_dataoff23, align 8
  br label %return

if.end25:                                         ; preds = %land.lhs.true, %if.end
  %35 = load ptr, ptr %tif.addr, align 8
  %36 = load ptr, ptr %35, align 8
  %37 = load ptr, ptr %dir.addr, align 8
  %38 = load i16, ptr %37, align 4
  %conv26 = zext i16 %38 to i32
  %call27 = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %35, i32 noundef %conv26) #2
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call27, i64 0, i32 7
  %39 = load ptr, ptr %field_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %36, ptr noundef nonnull @.str.6, ptr noundef %39) #2
  br label %return

return:                                           ; preds = %if.end25, %if.then21
  %storemerge = phi i32 [ 0, %if.end25 ], [ 1, %if.then21 ]
  ret i32 %storemerge
}

declare void @TIFFSwabArrayOfDouble(ptr noundef, i64 noundef) #1

declare ptr @_TIFFFieldWithTag(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFWriteAnyArray(ptr noundef %tif, i32 noundef %type, i32 noundef %tag, ptr noundef %dir, i32 noundef %n, ptr noundef %v) #0 {
entry:
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
  store ptr %buf, ptr %w, align 8
  store i32 0, ptr %status, align 4
  %0 = load i32, ptr %type.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [0 x i32], ptr @tiffDataWidth, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %1, %n
  %cmp = icmp ugt i32 %mul, 80
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %n.addr, align 4
  %3 = load i32, ptr %type.addr, align 4
  %idxprom2 = zext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [0 x i32], ptr @tiffDataWidth, i64 0, i64 %idxprom2
  %4 = load i32, ptr %arrayidx3, align 4
  %mul4 = mul i32 %2, %4
  %call = call ptr @_TIFFmalloc(i32 noundef %mul4) #2
  store ptr %call, ptr %w, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %type.addr, align 4
  switch i32 %5, label %out [
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
  %6 = load ptr, ptr %w, align 8
  store ptr %6, ptr %bp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %sw.bb
  %storemerge7 = phi i32 [ 0, %sw.bb ], [ %inc, %for.body ]
  store i32 %storemerge7, ptr %i, align 4
  %7 = load i32, ptr %n.addr, align 4
  %cmp5 = icmp slt i32 %storemerge7, %7
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %v.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds double, ptr %8, i64 %idxprom7
  %10 = load double, ptr %arrayidx8, align 8
  %conv9 = fptoui double %10 to i8
  %11 = load ptr, ptr %bp, align 8
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %11, i64 %idxprom10
  store i8 %conv9, ptr %arrayidx11, align 1
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %13 = load i32, ptr %tag.addr, align 4
  %conv12 = trunc i32 %13 to i16
  %14 = load ptr, ptr %dir.addr, align 8
  store i16 %conv12, ptr %14, align 4
  %15 = load i32, ptr %type.addr, align 4
  %conv13 = trunc i32 %15 to i16
  %tdir_type = getelementptr inbounds %struct.TIFFDirEntry, ptr %14, i64 0, i32 1
  store i16 %conv13, ptr %tdir_type, align 2
  %16 = load i32, ptr %n.addr, align 4
  %17 = load ptr, ptr %dir.addr, align 8
  %tdir_count = getelementptr inbounds %struct.TIFFDirEntry, ptr %17, i64 0, i32 2
  store i32 %16, ptr %tdir_count, align 4
  %18 = load ptr, ptr %tif.addr, align 8
  %19 = load ptr, ptr %bp, align 8
  %call14 = call i32 @TIFFWriteByteArray(ptr noundef %18, ptr noundef %17, ptr noundef %19)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %out, label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  %20 = load ptr, ptr %w, align 8
  store ptr %20, ptr %bp18, align 8
  br label %for.cond19

for.cond19:                                       ; preds = %for.body22, %sw.bb17
  %storemerge6 = phi i32 [ 0, %sw.bb17 ], [ %inc29, %for.body22 ]
  store i32 %storemerge6, ptr %i, align 4
  %21 = load i32, ptr %n.addr, align 4
  %cmp20 = icmp slt i32 %storemerge6, %21
  br i1 %cmp20, label %for.body22, label %for.end30

for.body22:                                       ; preds = %for.cond19
  %22 = load ptr, ptr %v.addr, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom23 = sext i32 %23 to i64
  %arrayidx24 = getelementptr inbounds double, ptr %22, i64 %idxprom23
  %24 = load double, ptr %arrayidx24, align 8
  %conv25 = fptosi double %24 to i8
  %25 = load ptr, ptr %bp18, align 8
  %idxprom26 = sext i32 %23 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %25, i64 %idxprom26
  store i8 %conv25, ptr %arrayidx27, align 1
  %26 = load i32, ptr %i, align 4
  %inc29 = add nsw i32 %26, 1
  br label %for.cond19, !llvm.loop !17

for.end30:                                        ; preds = %for.cond19
  %27 = load i32, ptr %tag.addr, align 4
  %conv31 = trunc i32 %27 to i16
  %28 = load ptr, ptr %dir.addr, align 8
  store i16 %conv31, ptr %28, align 4
  %29 = load i32, ptr %type.addr, align 4
  %conv33 = trunc i32 %29 to i16
  %tdir_type34 = getelementptr inbounds %struct.TIFFDirEntry, ptr %28, i64 0, i32 1
  store i16 %conv33, ptr %tdir_type34, align 2
  %30 = load i32, ptr %n.addr, align 4
  %31 = load ptr, ptr %dir.addr, align 8
  %tdir_count35 = getelementptr inbounds %struct.TIFFDirEntry, ptr %31, i64 0, i32 2
  store i32 %30, ptr %tdir_count35, align 4
  %32 = load ptr, ptr %tif.addr, align 8
  %33 = load ptr, ptr %bp18, align 8
  %call36 = call i32 @TIFFWriteByteArray(ptr noundef %32, ptr noundef %31, ptr noundef %33)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %out, label %sw.epilog

sw.bb40:                                          ; preds = %if.end
  %34 = load ptr, ptr %w, align 8
  store ptr %34, ptr %bp41, align 8
  br label %for.cond42

for.cond42:                                       ; preds = %for.body45, %sw.bb40
  %storemerge5 = phi i32 [ 0, %sw.bb40 ], [ %inc52, %for.body45 ]
  store i32 %storemerge5, ptr %i, align 4
  %35 = load i32, ptr %n.addr, align 4
  %cmp43 = icmp slt i32 %storemerge5, %35
  br i1 %cmp43, label %for.body45, label %for.end53

for.body45:                                       ; preds = %for.cond42
  %36 = load ptr, ptr %v.addr, align 8
  %37 = load i32, ptr %i, align 4
  %idxprom46 = sext i32 %37 to i64
  %arrayidx47 = getelementptr inbounds double, ptr %36, i64 %idxprom46
  %38 = load double, ptr %arrayidx47, align 8
  %conv48 = fptoui double %38 to i16
  %39 = load ptr, ptr %bp41, align 8
  %idxprom49 = sext i32 %37 to i64
  %arrayidx50 = getelementptr inbounds i16, ptr %39, i64 %idxprom49
  store i16 %conv48, ptr %arrayidx50, align 2
  %40 = load i32, ptr %i, align 4
  %inc52 = add nsw i32 %40, 1
  br label %for.cond42, !llvm.loop !18

for.end53:                                        ; preds = %for.cond42
  %41 = load ptr, ptr %tif.addr, align 8
  %42 = load i32, ptr %type.addr, align 4
  %43 = load i32, ptr %tag.addr, align 4
  %44 = load ptr, ptr %dir.addr, align 8
  %45 = load i32, ptr %n.addr, align 4
  %46 = load ptr, ptr %bp41, align 8
  %call54 = call i32 @TIFFWriteShortArray(ptr noundef %41, i32 noundef %42, i32 noundef %43, ptr noundef %44, i32 noundef %45, ptr noundef %46)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %out, label %sw.epilog

sw.bb58:                                          ; preds = %if.end
  %47 = load ptr, ptr %w, align 8
  store ptr %47, ptr %bp59, align 8
  br label %for.cond60

for.cond60:                                       ; preds = %for.body63, %sw.bb58
  %storemerge4 = phi i32 [ 0, %sw.bb58 ], [ %inc70, %for.body63 ]
  store i32 %storemerge4, ptr %i, align 4
  %48 = load i32, ptr %n.addr, align 4
  %cmp61 = icmp slt i32 %storemerge4, %48
  br i1 %cmp61, label %for.body63, label %for.end71

for.body63:                                       ; preds = %for.cond60
  %49 = load ptr, ptr %v.addr, align 8
  %50 = load i32, ptr %i, align 4
  %idxprom64 = sext i32 %50 to i64
  %arrayidx65 = getelementptr inbounds double, ptr %49, i64 %idxprom64
  %51 = load double, ptr %arrayidx65, align 8
  %conv66 = fptosi double %51 to i16
  %52 = load ptr, ptr %bp59, align 8
  %idxprom67 = sext i32 %50 to i64
  %arrayidx68 = getelementptr inbounds i16, ptr %52, i64 %idxprom67
  store i16 %conv66, ptr %arrayidx68, align 2
  %53 = load i32, ptr %i, align 4
  %inc70 = add nsw i32 %53, 1
  br label %for.cond60, !llvm.loop !19

for.end71:                                        ; preds = %for.cond60
  %54 = load ptr, ptr %tif.addr, align 8
  %55 = load i32, ptr %type.addr, align 4
  %56 = load i32, ptr %tag.addr, align 4
  %57 = load ptr, ptr %dir.addr, align 8
  %58 = load i32, ptr %n.addr, align 4
  %59 = load ptr, ptr %bp59, align 8
  %call72 = call i32 @TIFFWriteShortArray(ptr noundef %54, i32 noundef %55, i32 noundef %56, ptr noundef %57, i32 noundef %58, ptr noundef %59)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %out, label %sw.epilog

sw.bb76:                                          ; preds = %if.end
  %60 = load ptr, ptr %w, align 8
  store ptr %60, ptr %bp77, align 8
  br label %for.cond78

for.cond78:                                       ; preds = %for.body81, %sw.bb76
  %storemerge3 = phi i32 [ 0, %sw.bb76 ], [ %inc88, %for.body81 ]
  store i32 %storemerge3, ptr %i, align 4
  %61 = load i32, ptr %n.addr, align 4
  %cmp79 = icmp slt i32 %storemerge3, %61
  br i1 %cmp79, label %for.body81, label %for.end89

for.body81:                                       ; preds = %for.cond78
  %62 = load ptr, ptr %v.addr, align 8
  %63 = load i32, ptr %i, align 4
  %idxprom82 = sext i32 %63 to i64
  %arrayidx83 = getelementptr inbounds double, ptr %62, i64 %idxprom82
  %64 = load double, ptr %arrayidx83, align 8
  %conv84 = fptoui double %64 to i32
  %65 = load ptr, ptr %bp77, align 8
  %idxprom85 = sext i32 %63 to i64
  %arrayidx86 = getelementptr inbounds i32, ptr %65, i64 %idxprom85
  store i32 %conv84, ptr %arrayidx86, align 4
  %66 = load i32, ptr %i, align 4
  %inc88 = add nsw i32 %66, 1
  br label %for.cond78, !llvm.loop !20

for.end89:                                        ; preds = %for.cond78
  %67 = load ptr, ptr %tif.addr, align 8
  %68 = load i32, ptr %type.addr, align 4
  %69 = load i32, ptr %tag.addr, align 4
  %70 = load ptr, ptr %dir.addr, align 8
  %71 = load i32, ptr %n.addr, align 4
  %72 = load ptr, ptr %bp77, align 8
  %call90 = call i32 @TIFFWriteLongArray(ptr noundef %67, i32 noundef %68, i32 noundef %69, ptr noundef %70, i32 noundef %71, ptr noundef %72)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %out, label %sw.epilog

sw.bb94:                                          ; preds = %if.end
  %73 = load ptr, ptr %w, align 8
  store ptr %73, ptr %bp95, align 8
  br label %for.cond96

for.cond96:                                       ; preds = %for.body99, %sw.bb94
  %storemerge2 = phi i32 [ 0, %sw.bb94 ], [ %inc106, %for.body99 ]
  store i32 %storemerge2, ptr %i, align 4
  %74 = load i32, ptr %n.addr, align 4
  %cmp97 = icmp slt i32 %storemerge2, %74
  br i1 %cmp97, label %for.body99, label %for.end107

for.body99:                                       ; preds = %for.cond96
  %75 = load ptr, ptr %v.addr, align 8
  %76 = load i32, ptr %i, align 4
  %idxprom100 = sext i32 %76 to i64
  %arrayidx101 = getelementptr inbounds double, ptr %75, i64 %idxprom100
  %77 = load double, ptr %arrayidx101, align 8
  %conv102 = fptosi double %77 to i32
  %78 = load ptr, ptr %bp95, align 8
  %idxprom103 = sext i32 %76 to i64
  %arrayidx104 = getelementptr inbounds i32, ptr %78, i64 %idxprom103
  store i32 %conv102, ptr %arrayidx104, align 4
  %79 = load i32, ptr %i, align 4
  %inc106 = add nsw i32 %79, 1
  br label %for.cond96, !llvm.loop !21

for.end107:                                       ; preds = %for.cond96
  %80 = load ptr, ptr %tif.addr, align 8
  %81 = load i32, ptr %type.addr, align 4
  %82 = load i32, ptr %tag.addr, align 4
  %83 = load ptr, ptr %dir.addr, align 8
  %84 = load i32, ptr %n.addr, align 4
  %85 = load ptr, ptr %bp95, align 8
  %call108 = call i32 @TIFFWriteLongArray(ptr noundef %80, i32 noundef %81, i32 noundef %82, ptr noundef %83, i32 noundef %84, ptr noundef %85)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %out, label %sw.epilog

sw.bb112:                                         ; preds = %if.end
  %86 = load ptr, ptr %w, align 8
  store ptr %86, ptr %bp113, align 8
  br label %for.cond114

for.cond114:                                      ; preds = %for.body117, %sw.bb112
  %storemerge1 = phi i32 [ 0, %sw.bb112 ], [ %inc124, %for.body117 ]
  store i32 %storemerge1, ptr %i, align 4
  %87 = load i32, ptr %n.addr, align 4
  %cmp115 = icmp slt i32 %storemerge1, %87
  br i1 %cmp115, label %for.body117, label %for.end125

for.body117:                                      ; preds = %for.cond114
  %88 = load ptr, ptr %v.addr, align 8
  %89 = load i32, ptr %i, align 4
  %idxprom118 = sext i32 %89 to i64
  %arrayidx119 = getelementptr inbounds double, ptr %88, i64 %idxprom118
  %90 = load double, ptr %arrayidx119, align 8
  %conv120 = fptrunc double %90 to float
  %91 = load ptr, ptr %bp113, align 8
  %idxprom121 = sext i32 %89 to i64
  %arrayidx122 = getelementptr inbounds float, ptr %91, i64 %idxprom121
  store float %conv120, ptr %arrayidx122, align 4
  %92 = load i32, ptr %i, align 4
  %inc124 = add nsw i32 %92, 1
  br label %for.cond114, !llvm.loop !22

for.end125:                                       ; preds = %for.cond114
  %93 = load ptr, ptr %tif.addr, align 8
  %94 = load i32, ptr %type.addr, align 4
  %95 = load i32, ptr %tag.addr, align 4
  %96 = load ptr, ptr %dir.addr, align 8
  %97 = load i32, ptr %n.addr, align 4
  %98 = load ptr, ptr %bp113, align 8
  %call126 = call i32 @TIFFWriteFloatArray(ptr noundef %93, i32 noundef %94, i32 noundef %95, ptr noundef %96, i32 noundef %97, ptr noundef %98)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %out, label %sw.epilog

sw.bb130:                                         ; preds = %if.end
  %99 = load ptr, ptr %tif.addr, align 8
  %100 = load i32, ptr %type.addr, align 4
  %101 = load i32, ptr %tag.addr, align 4
  %102 = load ptr, ptr %dir.addr, align 8
  %103 = load i32, ptr %n.addr, align 4
  %104 = load ptr, ptr %v.addr, align 8
  %call131 = call i32 @TIFFWriteDoubleArray(ptr noundef %99, i32 noundef %100, i32 noundef %101, ptr noundef %102, i32 noundef %103, ptr noundef %104)
  br label %return

sw.epilog:                                        ; preds = %for.end125, %for.end107, %for.end89, %for.end71, %for.end53, %for.end30, %for.end
  store i32 1, ptr %status, align 4
  br label %out

out:                                              ; preds = %if.end, %for.end125, %for.end107, %for.end89, %for.end71, %for.end53, %for.end30, %for.end, %sw.epilog
  %105 = load ptr, ptr %w, align 8
  %cmp133.not = icmp eq ptr %105, %buf
  br i1 %cmp133.not, label %if.end136, label %if.then135

if.then135:                                       ; preds = %out
  %106 = load ptr, ptr %w, align 8
  call void @_TIFFfree(ptr noundef %106) #2
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %out
  %107 = load i32, ptr %status, align 4
  br label %return

return:                                           ; preds = %if.end136, %sw.bb130
  %storemerge = phi i32 [ %call131, %sw.bb130 ], [ %107, %if.end136 ]
  ret i32 %storemerge
}

declare void @TIFFWarning(ptr noundef, ptr noundef, ...) #1

declare i32 @_TIFFmemcmp(ptr noundef, ptr noundef, i32 noundef) #1

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
