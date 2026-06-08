; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2bw/tif_open.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2bw/tif_open.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%union.anon = type { i32 }
%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }

@.str = private unnamed_addr constant [15 x i8] c"\22%s\22: Bad mode\00", align 1
@TIFFClientOpen.module = internal constant [15 x i8] c"TIFFClientOpen\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: Out of memory (TIFF structure)\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Cannot read TIFF header\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Error writing TIFF header\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Not a TIFF file, bad magic number %d (0x%x)\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Not a TIFF file, bad version number %d (0x%x)\00", align 1
@typemask = internal constant [13 x i64] [i64 0, i64 255, i64 4294967295, i64 65535, i64 4294967295, i64 4294967295, i64 255, i64 255, i64 65535, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295], align 8
@bigTypeshift = internal constant [13 x i32] [i32 0, i32 24, i32 0, i32 16, i32 0, i32 0, i32 24, i32 24, i32 16, i32 0, i32 0, i32 0, i32 0], align 4
@litTypeshift = internal constant [13 x i32] zeroinitializer, align 4

; Function Attrs: nounwind ssp uwtable
define i32 @_TIFFgetMode(ptr noundef %mode, ptr noundef %module) #0 {
entry:
  %mode.addr = alloca ptr, align 8
  %module.addr = alloca ptr, align 8
  %m = alloca i32, align 4
  store ptr %mode, ptr %mode.addr, align 8
  store ptr %module, ptr %module.addr, align 8
  store i32 -1, ptr %m, align 4
  %0 = load ptr, ptr %mode.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 114, label %sw.bb
    i32 119, label %sw.bb4
    i32 97, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, ptr %m, align 4
  %2 = load ptr, ptr %mode.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv2, 43
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 2, ptr %m, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry, %entry
  store i32 514, ptr %m, align 4
  %4 = load ptr, ptr %mode.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %4, i64 0
  %5 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %5 to i32
  %cmp7 = icmp eq i32 %conv6, 119
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %sw.bb4
  %6 = load i32, ptr %m, align 4
  %or = or i32 %6, 1024
  store i32 %or, ptr %m, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %sw.bb4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %7 = load ptr, ptr %module.addr, align 8
  %8 = load ptr, ptr %mode.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %7, ptr noundef @.str, ptr noundef %8)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end10, %if.end
  %9 = load i32, ptr %m, align 4
  ret i32 %9
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define ptr @TIFFClientOpen(ptr noundef %name, ptr noundef %mode, ptr noundef %clientdata, ptr noundef %readproc, ptr noundef %writeproc, ptr noundef %seekproc, ptr noundef %closeproc, ptr noundef %sizeproc, ptr noundef %mapproc, ptr noundef %unmapproc) #0 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca ptr, align 8
  %clientdata.addr = alloca ptr, align 8
  %readproc.addr = alloca ptr, align 8
  %writeproc.addr = alloca ptr, align 8
  %seekproc.addr = alloca ptr, align 8
  %closeproc.addr = alloca ptr, align 8
  %sizeproc.addr = alloca ptr, align 8
  %mapproc.addr = alloca ptr, align 8
  %unmapproc.addr = alloca ptr, align 8
  %tif = alloca ptr, align 8
  %m = alloca i32, align 4
  %bigendian = alloca i32, align 4
  %cp = alloca ptr, align 8
  %u = alloca %union.anon, align 4
  store ptr %name, ptr %name.addr, align 8
  store ptr %mode, ptr %mode.addr, align 8
  store ptr %clientdata, ptr %clientdata.addr, align 8
  store ptr %readproc, ptr %readproc.addr, align 8
  store ptr %writeproc, ptr %writeproc.addr, align 8
  store ptr %seekproc, ptr %seekproc.addr, align 8
  store ptr %closeproc, ptr %closeproc.addr, align 8
  store ptr %sizeproc, ptr %sizeproc.addr, align 8
  store ptr %mapproc, ptr %mapproc.addr, align 8
  store ptr %unmapproc, ptr %unmapproc.addr, align 8
  %0 = load ptr, ptr %mode.addr, align 8
  %call = call i32 @_TIFFgetMode(ptr noundef %0, ptr noundef @TIFFClientOpen.module)
  store i32 %call, ptr %m, align 4
  %1 = load i32, ptr %m, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %bad2

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %name.addr, align 8
  %call1 = call i64 @strlen(ptr noundef %2)
  %add = add i64 880, %call1
  %add2 = add i64 %add, 1
  %conv = trunc i64 %add2 to i32
  %call3 = call ptr @_TIFFmalloc(i32 noundef %conv)
  store ptr %call3, ptr %tif, align 8
  %3 = load ptr, ptr %tif, align 8
  %cmp4 = icmp eq ptr %3, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %4 = load ptr, ptr %name.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFClientOpen.module, ptr noundef @.str.1, ptr noundef %4)
  br label %bad2

if.end7:                                          ; preds = %if.end
  %5 = load ptr, ptr %tif, align 8
  call void @_TIFFmemset(ptr noundef %5, i32 noundef 0, i32 noundef 880)
  %6 = load ptr, ptr %tif, align 8
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 880
  %7 = load ptr, ptr %tif, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %7, i32 0, i32 0
  store ptr %add.ptr, ptr %tif_name, align 8
  %8 = load ptr, ptr %tif, align 8
  %tif_name8 = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %tif_name8, align 8
  %10 = load ptr, ptr %name.addr, align 8
  %11 = load ptr, ptr %tif, align 8
  %tif_name9 = getelementptr inbounds %struct.tiff, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %tif_name9, align 8
  %13 = call i64 @llvm.objectsize.i64.p0(ptr %12, i1 false, i1 true, i1 false)
  %call10 = call ptr @__strcpy_chk(ptr noundef %9, ptr noundef %10, i64 noundef %13) #4
  %14 = load i32, ptr %m, align 4
  %and = and i32 %14, -1537
  %15 = load ptr, ptr %tif, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %15, i32 0, i32 2
  store i32 %and, ptr %tif_mode, align 4
  %16 = load ptr, ptr %tif, align 8
  %tif_curdir = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 12
  store i16 -1, ptr %tif_curdir, align 4
  %17 = load ptr, ptr %tif, align 8
  %tif_curoff = getelementptr inbounds %struct.tiff, ptr %17, i32 0, i32 14
  store i32 0, ptr %tif_curoff, align 4
  %18 = load ptr, ptr %tif, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 13
  store i32 -1, ptr %tif_curstrip, align 8
  %19 = load ptr, ptr %tif, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %19, i32 0, i32 11
  store i32 -1, ptr %tif_row, align 8
  %20 = load ptr, ptr %clientdata.addr, align 8
  %21 = load ptr, ptr %tif, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %21, i32 0, i32 48
  store ptr %20, ptr %tif_clientdata, align 8
  %22 = load ptr, ptr %readproc.addr, align 8
  %23 = load ptr, ptr %tif, align 8
  %tif_readproc = getelementptr inbounds %struct.tiff, ptr %23, i32 0, i32 49
  store ptr %22, ptr %tif_readproc, align 8
  %24 = load ptr, ptr %writeproc.addr, align 8
  %25 = load ptr, ptr %tif, align 8
  %tif_writeproc = getelementptr inbounds %struct.tiff, ptr %25, i32 0, i32 50
  store ptr %24, ptr %tif_writeproc, align 8
  %26 = load ptr, ptr %seekproc.addr, align 8
  %27 = load ptr, ptr %tif, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %27, i32 0, i32 51
  store ptr %26, ptr %tif_seekproc, align 8
  %28 = load ptr, ptr %closeproc.addr, align 8
  %29 = load ptr, ptr %tif, align 8
  %tif_closeproc = getelementptr inbounds %struct.tiff, ptr %29, i32 0, i32 52
  store ptr %28, ptr %tif_closeproc, align 8
  %30 = load ptr, ptr %sizeproc.addr, align 8
  %31 = load ptr, ptr %tif, align 8
  %tif_sizeproc = getelementptr inbounds %struct.tiff, ptr %31, i32 0, i32 53
  store ptr %30, ptr %tif_sizeproc, align 8
  %32 = load ptr, ptr %mapproc.addr, align 8
  %33 = load ptr, ptr %tif, align 8
  %tif_mapproc = getelementptr inbounds %struct.tiff, ptr %33, i32 0, i32 46
  store ptr %32, ptr %tif_mapproc, align 8
  %34 = load ptr, ptr %unmapproc.addr, align 8
  %35 = load ptr, ptr %tif, align 8
  %tif_unmapproc = getelementptr inbounds %struct.tiff, ptr %35, i32 0, i32 47
  store ptr %34, ptr %tif_unmapproc, align 8
  %36 = load ptr, ptr %tif, align 8
  call void @_TIFFSetDefaultCompressionState(ptr noundef %36)
  %37 = load ptr, ptr %tif, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %37, i32 0, i32 3
  store i32 1, ptr %tif_flags, align 8
  %38 = load i32, ptr %m, align 4
  %cmp11 = icmp eq i32 %38, 0
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end7
  %39 = load ptr, ptr %tif, align 8
  %tif_flags14 = getelementptr inbounds %struct.tiff, ptr %39, i32 0, i32 3
  %40 = load i32, ptr %tif_flags14, align 8
  %or = or i32 %40, 34816
  store i32 %or, ptr %tif_flags14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end7
  store i32 1, ptr %u, align 4
  %arrayidx = getelementptr inbounds [4 x i8], ptr %u, i64 0, i64 0
  %41 = load i8, ptr %arrayidx, align 4
  %conv16 = sext i8 %41 to i32
  %cmp17 = icmp eq i32 %conv16, 0
  %conv18 = zext i1 %cmp17 to i32
  store i32 %conv18, ptr %bigendian, align 4
  %42 = load ptr, ptr %mode.addr, align 8
  store ptr %42, ptr %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end15
  %43 = load ptr, ptr %cp, align 8
  %44 = load i8, ptr %43, align 1
  %tobool = icmp ne i8 %44, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load ptr, ptr %cp, align 8
  %46 = load i8, ptr %45, align 1
  %conv19 = sext i8 %46 to i32
  switch i32 %conv19, label %sw.epilog [
    i32 98, label %sw.bb
    i32 108, label %sw.bb27
    i32 66, label %sw.bb36
    i32 76, label %sw.bb41
    i32 72, label %sw.bb46
    i32 77, label %sw.bb51
    i32 109, label %sw.bb58
    i32 67, label %sw.bb65
    i32 99, label %sw.bb72
  ]

sw.bb:                                            ; preds = %for.body
  %47 = load i32, ptr %m, align 4
  %and20 = and i32 %47, 512
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %sw.bb
  %48 = load i32, ptr %bigendian, align 4
  %tobool22 = icmp ne i32 %48, 0
  br i1 %tobool22, label %if.end26, label %if.then23

if.then23:                                        ; preds = %land.lhs.true
  %49 = load ptr, ptr %tif, align 8
  %tif_flags24 = getelementptr inbounds %struct.tiff, ptr %49, i32 0, i32 3
  %50 = load i32, ptr %tif_flags24, align 8
  %or25 = or i32 %50, 128
  store i32 %or25, ptr %tif_flags24, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb27:                                          ; preds = %for.body
  %51 = load i32, ptr %m, align 4
  %and28 = and i32 %51, 512
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %land.lhs.true30, label %if.end35

land.lhs.true30:                                  ; preds = %sw.bb27
  %52 = load i32, ptr %bigendian, align 4
  %tobool31 = icmp ne i32 %52, 0
  br i1 %tobool31, label %if.then32, label %if.end35

if.then32:                                        ; preds = %land.lhs.true30
  %53 = load ptr, ptr %tif, align 8
  %tif_flags33 = getelementptr inbounds %struct.tiff, ptr %53, i32 0, i32 3
  %54 = load i32, ptr %tif_flags33, align 8
  %or34 = or i32 %54, 128
  store i32 %or34, ptr %tif_flags33, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %land.lhs.true30, %sw.bb27
  br label %sw.epilog

sw.bb36:                                          ; preds = %for.body
  %55 = load ptr, ptr %tif, align 8
  %tif_flags37 = getelementptr inbounds %struct.tiff, ptr %55, i32 0, i32 3
  %56 = load i32, ptr %tif_flags37, align 8
  %and38 = and i32 %56, -4
  %or39 = or i32 %and38, 1
  %57 = load ptr, ptr %tif, align 8
  %tif_flags40 = getelementptr inbounds %struct.tiff, ptr %57, i32 0, i32 3
  store i32 %or39, ptr %tif_flags40, align 8
  br label %sw.epilog

sw.bb41:                                          ; preds = %for.body
  %58 = load ptr, ptr %tif, align 8
  %tif_flags42 = getelementptr inbounds %struct.tiff, ptr %58, i32 0, i32 3
  %59 = load i32, ptr %tif_flags42, align 8
  %and43 = and i32 %59, -4
  %or44 = or i32 %and43, 2
  %60 = load ptr, ptr %tif, align 8
  %tif_flags45 = getelementptr inbounds %struct.tiff, ptr %60, i32 0, i32 3
  store i32 %or44, ptr %tif_flags45, align 8
  br label %sw.epilog

sw.bb46:                                          ; preds = %for.body
  %61 = load ptr, ptr %tif, align 8
  %tif_flags47 = getelementptr inbounds %struct.tiff, ptr %61, i32 0, i32 3
  %62 = load i32, ptr %tif_flags47, align 8
  %and48 = and i32 %62, -4
  %or49 = or i32 %and48, 1
  %63 = load ptr, ptr %tif, align 8
  %tif_flags50 = getelementptr inbounds %struct.tiff, ptr %63, i32 0, i32 3
  store i32 %or49, ptr %tif_flags50, align 8
  br label %sw.epilog

sw.bb51:                                          ; preds = %for.body
  %64 = load i32, ptr %m, align 4
  %cmp52 = icmp eq i32 %64, 0
  br i1 %cmp52, label %if.then54, label %if.end57

if.then54:                                        ; preds = %sw.bb51
  %65 = load ptr, ptr %tif, align 8
  %tif_flags55 = getelementptr inbounds %struct.tiff, ptr %65, i32 0, i32 3
  %66 = load i32, ptr %tif_flags55, align 8
  %or56 = or i32 %66, 2048
  store i32 %or56, ptr %tif_flags55, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %sw.bb51
  br label %sw.epilog

sw.bb58:                                          ; preds = %for.body
  %67 = load i32, ptr %m, align 4
  %cmp59 = icmp eq i32 %67, 0
  br i1 %cmp59, label %if.then61, label %if.end64

if.then61:                                        ; preds = %sw.bb58
  %68 = load ptr, ptr %tif, align 8
  %tif_flags62 = getelementptr inbounds %struct.tiff, ptr %68, i32 0, i32 3
  %69 = load i32, ptr %tif_flags62, align 8
  %and63 = and i32 %69, -2049
  store i32 %and63, ptr %tif_flags62, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %sw.bb58
  br label %sw.epilog

sw.bb65:                                          ; preds = %for.body
  %70 = load i32, ptr %m, align 4
  %cmp66 = icmp eq i32 %70, 0
  br i1 %cmp66, label %if.then68, label %if.end71

if.then68:                                        ; preds = %sw.bb65
  %71 = load ptr, ptr %tif, align 8
  %tif_flags69 = getelementptr inbounds %struct.tiff, ptr %71, i32 0, i32 3
  %72 = load i32, ptr %tif_flags69, align 8
  %or70 = or i32 %72, 32768
  store i32 %or70, ptr %tif_flags69, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %sw.bb65
  br label %sw.epilog

sw.bb72:                                          ; preds = %for.body
  %73 = load i32, ptr %m, align 4
  %cmp73 = icmp eq i32 %73, 0
  br i1 %cmp73, label %if.then75, label %if.end78

if.then75:                                        ; preds = %sw.bb72
  %74 = load ptr, ptr %tif, align 8
  %tif_flags76 = getelementptr inbounds %struct.tiff, ptr %74, i32 0, i32 3
  %75 = load i32, ptr %tif_flags76, align 8
  %and77 = and i32 %75, -32769
  store i32 %and77, ptr %tif_flags76, align 8
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %sw.bb72
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %if.end78, %if.end71, %if.end64, %if.end57, %sw.bb46, %sw.bb41, %sw.bb36, %if.end35, %if.end26
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %76 = load ptr, ptr %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %76, i32 1
  store ptr %incdec.ptr, ptr %cp, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %77 = load ptr, ptr %tif, align 8
  %tif_readproc79 = getelementptr inbounds %struct.tiff, ptr %77, i32 0, i32 49
  %78 = load ptr, ptr %tif_readproc79, align 8
  %79 = load ptr, ptr %tif, align 8
  %tif_clientdata80 = getelementptr inbounds %struct.tiff, ptr %79, i32 0, i32 48
  %80 = load ptr, ptr %tif_clientdata80, align 8
  %81 = load ptr, ptr %tif, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %81, i32 0, i32 7
  %call81 = call i32 %78(ptr noundef %80, ptr noundef %tif_header, i32 noundef 8)
  %cmp82 = icmp eq i32 %call81, 8
  br i1 %cmp82, label %if.end123, label %if.then84

if.then84:                                        ; preds = %for.end
  %82 = load ptr, ptr %tif, align 8
  %tif_mode85 = getelementptr inbounds %struct.tiff, ptr %82, i32 0, i32 2
  %83 = load i32, ptr %tif_mode85, align 4
  %cmp86 = icmp eq i32 %83, 0
  br i1 %cmp86, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.then84
  %84 = load ptr, ptr %name.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %84, ptr noundef @.str.2)
  br label %bad

if.end89:                                         ; preds = %if.then84
  %85 = load ptr, ptr %tif, align 8
  %tif_flags90 = getelementptr inbounds %struct.tiff, ptr %85, i32 0, i32 3
  %86 = load i32, ptr %tif_flags90, align 8
  %and91 = and i32 %86, 128
  %tobool92 = icmp ne i32 %and91, 0
  br i1 %tobool92, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end89
  %87 = load i32, ptr %bigendian, align 4
  %tobool93 = icmp ne i32 %87, 0
  %88 = zext i1 %tobool93 to i64
  %cond = select i1 %tobool93, i32 18761, i32 19789
  br label %cond.end

cond.false:                                       ; preds = %if.end89
  %89 = load i32, ptr %bigendian, align 4
  %tobool94 = icmp ne i32 %89, 0
  %90 = zext i1 %tobool94 to i64
  %cond95 = select i1 %tobool94, i32 19789, i32 18761
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond96 = phi i32 [ %cond, %cond.true ], [ %cond95, %cond.false ]
  %conv97 = trunc i32 %cond96 to i16
  %91 = load ptr, ptr %tif, align 8
  %tif_header98 = getelementptr inbounds %struct.tiff, ptr %91, i32 0, i32 7
  %tiff_magic = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header98, i32 0, i32 0
  store i16 %conv97, ptr %tiff_magic, align 8
  %92 = load ptr, ptr %tif, align 8
  %tif_header99 = getelementptr inbounds %struct.tiff, ptr %92, i32 0, i32 7
  %tiff_version = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header99, i32 0, i32 1
  store i16 42, ptr %tiff_version, align 2
  %93 = load ptr, ptr %tif, align 8
  %tif_flags100 = getelementptr inbounds %struct.tiff, ptr %93, i32 0, i32 3
  %94 = load i32, ptr %tif_flags100, align 8
  %and101 = and i32 %94, 128
  %tobool102 = icmp ne i32 %and101, 0
  br i1 %tobool102, label %if.then103, label %if.end106

if.then103:                                       ; preds = %cond.end
  %95 = load ptr, ptr %tif, align 8
  %tif_header104 = getelementptr inbounds %struct.tiff, ptr %95, i32 0, i32 7
  %tiff_version105 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header104, i32 0, i32 1
  call void @TIFFSwabShort(ptr noundef %tiff_version105)
  br label %if.end106

if.end106:                                        ; preds = %if.then103, %cond.end
  %96 = load ptr, ptr %tif, align 8
  %tif_header107 = getelementptr inbounds %struct.tiff, ptr %96, i32 0, i32 7
  %tiff_diroff = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header107, i32 0, i32 2
  store i32 0, ptr %tiff_diroff, align 4
  %97 = load ptr, ptr %tif, align 8
  %tif_writeproc108 = getelementptr inbounds %struct.tiff, ptr %97, i32 0, i32 50
  %98 = load ptr, ptr %tif_writeproc108, align 8
  %99 = load ptr, ptr %tif, align 8
  %tif_clientdata109 = getelementptr inbounds %struct.tiff, ptr %99, i32 0, i32 48
  %100 = load ptr, ptr %tif_clientdata109, align 8
  %101 = load ptr, ptr %tif, align 8
  %tif_header110 = getelementptr inbounds %struct.tiff, ptr %101, i32 0, i32 7
  %call111 = call i32 %98(ptr noundef %100, ptr noundef %tif_header110, i32 noundef 8)
  %cmp112 = icmp eq i32 %call111, 8
  br i1 %cmp112, label %if.end115, label %if.then114

if.then114:                                       ; preds = %if.end106
  %102 = load ptr, ptr %name.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %102, ptr noundef @.str.3)
  br label %bad

if.end115:                                        ; preds = %if.end106
  %103 = load ptr, ptr %tif, align 8
  %104 = load ptr, ptr %tif, align 8
  %tif_header116 = getelementptr inbounds %struct.tiff, ptr %104, i32 0, i32 7
  %tiff_magic117 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header116, i32 0, i32 0
  %105 = load i16, ptr %tiff_magic117, align 8
  %conv118 = zext i16 %105 to i32
  %106 = load i32, ptr %bigendian, align 4
  call void @TIFFInitOrder(ptr noundef %103, i32 noundef %conv118, i32 noundef %106)
  %107 = load ptr, ptr %tif, align 8
  %call119 = call i32 @TIFFDefaultDirectory(ptr noundef %107)
  %tobool120 = icmp ne i32 %call119, 0
  br i1 %tobool120, label %if.end122, label %if.then121

if.then121:                                       ; preds = %if.end115
  br label %bad

if.end122:                                        ; preds = %if.end115
  %108 = load ptr, ptr %tif, align 8
  %tif_diroff = getelementptr inbounds %struct.tiff, ptr %108, i32 0, i32 4
  store i32 0, ptr %tif_diroff, align 4
  %109 = load ptr, ptr %tif, align 8
  store ptr %109, ptr %retval, align 8
  br label %return

if.end123:                                        ; preds = %for.end
  %110 = load ptr, ptr %tif, align 8
  %tif_header124 = getelementptr inbounds %struct.tiff, ptr %110, i32 0, i32 7
  %tiff_magic125 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header124, i32 0, i32 0
  %111 = load i16, ptr %tiff_magic125, align 8
  %conv126 = zext i16 %111 to i32
  %cmp127 = icmp ne i32 %conv126, 19789
  br i1 %cmp127, label %land.lhs.true129, label %if.end142

land.lhs.true129:                                 ; preds = %if.end123
  %112 = load ptr, ptr %tif, align 8
  %tif_header130 = getelementptr inbounds %struct.tiff, ptr %112, i32 0, i32 7
  %tiff_magic131 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header130, i32 0, i32 0
  %113 = load i16, ptr %tiff_magic131, align 8
  %conv132 = zext i16 %113 to i32
  %cmp133 = icmp ne i32 %conv132, 18761
  br i1 %cmp133, label %if.then135, label %if.end142

if.then135:                                       ; preds = %land.lhs.true129
  %114 = load ptr, ptr %name.addr, align 8
  %115 = load ptr, ptr %tif, align 8
  %tif_header136 = getelementptr inbounds %struct.tiff, ptr %115, i32 0, i32 7
  %tiff_magic137 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header136, i32 0, i32 0
  %116 = load i16, ptr %tiff_magic137, align 8
  %conv138 = zext i16 %116 to i32
  %117 = load ptr, ptr %tif, align 8
  %tif_header139 = getelementptr inbounds %struct.tiff, ptr %117, i32 0, i32 7
  %tiff_magic140 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header139, i32 0, i32 0
  %118 = load i16, ptr %tiff_magic140, align 8
  %conv141 = zext i16 %118 to i32
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %114, ptr noundef @.str.4, i32 noundef %conv138, i32 noundef %conv141)
  br label %bad

if.end142:                                        ; preds = %land.lhs.true129, %if.end123
  %119 = load ptr, ptr %tif, align 8
  %120 = load ptr, ptr %tif, align 8
  %tif_header143 = getelementptr inbounds %struct.tiff, ptr %120, i32 0, i32 7
  %tiff_magic144 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header143, i32 0, i32 0
  %121 = load i16, ptr %tiff_magic144, align 8
  %conv145 = zext i16 %121 to i32
  %122 = load i32, ptr %bigendian, align 4
  call void @TIFFInitOrder(ptr noundef %119, i32 noundef %conv145, i32 noundef %122)
  %123 = load ptr, ptr %tif, align 8
  %tif_flags146 = getelementptr inbounds %struct.tiff, ptr %123, i32 0, i32 3
  %124 = load i32, ptr %tif_flags146, align 8
  %and147 = and i32 %124, 128
  %tobool148 = icmp ne i32 %and147, 0
  br i1 %tobool148, label %if.then149, label %if.end154

if.then149:                                       ; preds = %if.end142
  %125 = load ptr, ptr %tif, align 8
  %tif_header150 = getelementptr inbounds %struct.tiff, ptr %125, i32 0, i32 7
  %tiff_version151 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header150, i32 0, i32 1
  call void @TIFFSwabShort(ptr noundef %tiff_version151)
  %126 = load ptr, ptr %tif, align 8
  %tif_header152 = getelementptr inbounds %struct.tiff, ptr %126, i32 0, i32 7
  %tiff_diroff153 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header152, i32 0, i32 2
  call void @TIFFSwabLong(ptr noundef %tiff_diroff153)
  br label %if.end154

if.end154:                                        ; preds = %if.then149, %if.end142
  %127 = load ptr, ptr %tif, align 8
  %tif_header155 = getelementptr inbounds %struct.tiff, ptr %127, i32 0, i32 7
  %tiff_version156 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header155, i32 0, i32 1
  %128 = load i16, ptr %tiff_version156, align 2
  %conv157 = zext i16 %128 to i32
  %cmp158 = icmp ne i32 %conv157, 42
  br i1 %cmp158, label %if.then160, label %if.end167

if.then160:                                       ; preds = %if.end154
  %129 = load ptr, ptr %name.addr, align 8
  %130 = load ptr, ptr %tif, align 8
  %tif_header161 = getelementptr inbounds %struct.tiff, ptr %130, i32 0, i32 7
  %tiff_version162 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header161, i32 0, i32 1
  %131 = load i16, ptr %tiff_version162, align 2
  %conv163 = zext i16 %131 to i32
  %132 = load ptr, ptr %tif, align 8
  %tif_header164 = getelementptr inbounds %struct.tiff, ptr %132, i32 0, i32 7
  %tiff_version165 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header164, i32 0, i32 1
  %133 = load i16, ptr %tiff_version165, align 2
  %conv166 = zext i16 %133 to i32
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %129, ptr noundef @.str.5, i32 noundef %conv163, i32 noundef %conv166)
  br label %bad

if.end167:                                        ; preds = %if.end154
  %134 = load ptr, ptr %tif, align 8
  %tif_flags168 = getelementptr inbounds %struct.tiff, ptr %134, i32 0, i32 3
  %135 = load i32, ptr %tif_flags168, align 8
  %or169 = or i32 %135, 512
  store i32 %or169, ptr %tif_flags168, align 8
  %136 = load ptr, ptr %tif, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %136, i32 0, i32 40
  store ptr null, ptr %tif_rawdata, align 8
  %137 = load ptr, ptr %tif, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %137, i32 0, i32 42
  store ptr null, ptr %tif_rawcp, align 8
  %138 = load ptr, ptr %tif, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %138, i32 0, i32 41
  store i32 0, ptr %tif_rawdatasize, align 8
  %139 = load ptr, ptr %mode.addr, align 8
  %arrayidx170 = getelementptr inbounds i8, ptr %139, i64 0
  %140 = load i8, ptr %arrayidx170, align 1
  %conv171 = sext i8 %140 to i32
  switch i32 %conv171, label %sw.epilog198 [
    i32 114, label %sw.bb172
    i32 97, label %sw.bb193
  ]

sw.bb172:                                         ; preds = %if.end167
  %141 = load ptr, ptr %tif, align 8
  %tif_header173 = getelementptr inbounds %struct.tiff, ptr %141, i32 0, i32 7
  %tiff_diroff174 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header173, i32 0, i32 2
  %142 = load i32, ptr %tiff_diroff174, align 4
  %143 = load ptr, ptr %tif, align 8
  %tif_nextdiroff = getelementptr inbounds %struct.tiff, ptr %143, i32 0, i32 5
  store i32 %142, ptr %tif_nextdiroff, align 8
  %144 = load ptr, ptr %tif, align 8
  %tif_flags175 = getelementptr inbounds %struct.tiff, ptr %144, i32 0, i32 3
  %145 = load i32, ptr %tif_flags175, align 8
  %and176 = and i32 %145, 2048
  %tobool177 = icmp ne i32 %and176, 0
  br i1 %tobool177, label %land.lhs.true178, label %if.end186

land.lhs.true178:                                 ; preds = %sw.bb172
  %146 = load ptr, ptr %tif, align 8
  %tif_mapproc179 = getelementptr inbounds %struct.tiff, ptr %146, i32 0, i32 46
  %147 = load ptr, ptr %tif_mapproc179, align 8
  %148 = load ptr, ptr %tif, align 8
  %tif_clientdata180 = getelementptr inbounds %struct.tiff, ptr %148, i32 0, i32 48
  %149 = load ptr, ptr %tif_clientdata180, align 8
  %150 = load ptr, ptr %tif, align 8
  %tif_base = getelementptr inbounds %struct.tiff, ptr %150, i32 0, i32 44
  %151 = load ptr, ptr %tif, align 8
  %tif_size = getelementptr inbounds %struct.tiff, ptr %151, i32 0, i32 45
  %call181 = call i32 %147(ptr noundef %149, ptr noundef %tif_base, ptr noundef %tif_size)
  %tobool182 = icmp ne i32 %call181, 0
  br i1 %tobool182, label %if.end186, label %if.then183

if.then183:                                       ; preds = %land.lhs.true178
  %152 = load ptr, ptr %tif, align 8
  %tif_flags184 = getelementptr inbounds %struct.tiff, ptr %152, i32 0, i32 3
  %153 = load i32, ptr %tif_flags184, align 8
  %and185 = and i32 %153, -2049
  store i32 %and185, ptr %tif_flags184, align 8
  br label %if.end186

if.end186:                                        ; preds = %if.then183, %land.lhs.true178, %sw.bb172
  %154 = load ptr, ptr %tif, align 8
  %call187 = call i32 @TIFFReadDirectory(ptr noundef %154)
  %tobool188 = icmp ne i32 %call187, 0
  br i1 %tobool188, label %if.then189, label %if.end192

if.then189:                                       ; preds = %if.end186
  %155 = load ptr, ptr %tif, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %155, i32 0, i32 43
  store i32 -1, ptr %tif_rawcc, align 8
  %156 = load ptr, ptr %tif, align 8
  %tif_flags190 = getelementptr inbounds %struct.tiff, ptr %156, i32 0, i32 3
  %157 = load i32, ptr %tif_flags190, align 8
  %or191 = or i32 %157, 16
  store i32 %or191, ptr %tif_flags190, align 8
  %158 = load ptr, ptr %tif, align 8
  store ptr %158, ptr %retval, align 8
  br label %return

if.end192:                                        ; preds = %if.end186
  br label %sw.epilog198

sw.bb193:                                         ; preds = %if.end167
  %159 = load ptr, ptr %tif, align 8
  %call194 = call i32 @TIFFDefaultDirectory(ptr noundef %159)
  %tobool195 = icmp ne i32 %call194, 0
  br i1 %tobool195, label %if.end197, label %if.then196

if.then196:                                       ; preds = %sw.bb193
  br label %bad

if.end197:                                        ; preds = %sw.bb193
  %160 = load ptr, ptr %tif, align 8
  store ptr %160, ptr %retval, align 8
  br label %return

sw.epilog198:                                     ; preds = %if.end167, %if.end192
  br label %bad

bad:                                              ; preds = %sw.epilog198, %if.then196, %if.then160, %if.then135, %if.then121, %if.then114, %if.then88
  %161 = load ptr, ptr %tif, align 8
  %tif_mode199 = getelementptr inbounds %struct.tiff, ptr %161, i32 0, i32 2
  store i32 0, ptr %tif_mode199, align 4
  %162 = load ptr, ptr %tif, align 8
  call void @TIFFClose(ptr noundef %162)
  store ptr null, ptr %retval, align 8
  br label %return

bad2:                                             ; preds = %if.then6, %if.then
  %163 = load ptr, ptr %closeproc.addr, align 8
  %164 = load ptr, ptr %clientdata.addr, align 8
  %call200 = call i32 %163(ptr noundef %164)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %bad2, %bad, %if.end197, %if.then189, %if.end122
  %165 = load ptr, ptr %retval, align 8
  ret ptr %165
}

declare ptr @_TIFFmalloc(i32 noundef) #1

declare i64 @strlen(ptr noundef) #1

declare void @_TIFFmemset(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

declare void @_TIFFSetDefaultCompressionState(ptr noundef) #1

declare void @TIFFSwabShort(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @TIFFInitOrder(ptr noundef %tif, i32 noundef %magic, i32 noundef %bigendian) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %magic.addr = alloca i32, align 4
  %bigendian.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %magic, ptr %magic.addr, align 4
  store i32 %bigendian, ptr %bigendian.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_typemask = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 10
  store ptr @typemask, ptr %tif_typemask, align 8
  %1 = load i32, ptr %magic.addr, align 4
  %cmp = icmp eq i32 %1, 19789
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 9
  store ptr @bigTypeshift, ptr %tif_typeshift, align 8
  %3 = load i32, ptr %bigendian.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %tif_flags, align 8
  %or = or i32 %5, 128
  store i32 %or, ptr %tif_flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end8

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift2 = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 9
  store ptr @litTypeshift, ptr %tif_typeshift2, align 8
  %7 = load i32, ptr %bigendian.addr, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.else
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_flags5 = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %tif_flags5, align 8
  %or6 = or i32 %9, 128
  store i32 %or6, ptr %tif_flags5, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  ret void
}

declare i32 @TIFFDefaultDirectory(ptr noundef) #1

declare void @TIFFSwabLong(ptr noundef) #1

declare i32 @TIFFReadDirectory(ptr noundef) #1

declare void @TIFFClose(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define ptr @TIFFFileName(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %tif_name, align 8
  ret ptr %1
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFFileno(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_fd = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %tif_fd, align 8
  ret i32 %1
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFGetMode(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %tif_mode, align 4
  ret i32 %1
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFIsTiled(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %tif_flags, align 8
  %and = and i32 %1, 1024
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFCurrentRow(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 11
  %1 = load i32, ptr %tif_row, align 8
  ret i32 %1
}

; Function Attrs: nounwind ssp uwtable
define zeroext i16 @TIFFCurrentDirectory(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_curdir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 12
  %1 = load i16, ptr %tif_curdir, align 4
  ret i16 %1
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFCurrentStrip(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 13
  %1 = load i32, ptr %tif_curstrip, align 8
  ret i32 %1
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFCurrentTile(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_curtile = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 19
  %1 = load i32, ptr %tif_curtile, align 8
  ret i32 %1
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFIsByteSwapped(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %tif_flags, align 8
  %and = and i32 %1, 128
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFIsUpSampled(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %tif_flags, align 8
  %and = and i32 %1, 16384
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFIsMSB2LSB(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %tif_flags, align 8
  %and = and i32 %1, 1
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
