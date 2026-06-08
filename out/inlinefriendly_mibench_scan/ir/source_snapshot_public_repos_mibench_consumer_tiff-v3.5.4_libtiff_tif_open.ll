; ModuleID = './source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_open.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_open.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%union.anon = type { i64 }
%struct.tiff = type { ptr, i32, i32, i64, i64, i64, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i64, i16, i64, i64, i64, i16, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, ptr, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i64, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i64, ptr, i64, ptr, i64, ptr, i64, i64, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i64 }

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

; Function Attrs: noinline nounwind optnone ssp uwtable
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

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %u = alloca %union.anon, align 8
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
  %add = add i64 992, %call1
  %add2 = add i64 %add, 1
  %call3 = call ptr @_TIFFmalloc(i64 noundef %add2)
  store ptr %call3, ptr %tif, align 8
  %3 = load ptr, ptr %tif, align 8
  %cmp4 = icmp eq ptr %3, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %4 = load ptr, ptr %name.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFClientOpen.module, ptr noundef @.str.1, ptr noundef %4)
  br label %bad2

if.end6:                                          ; preds = %if.end
  %5 = load ptr, ptr %tif, align 8
  call void @_TIFFmemset(ptr noundef %5, i32 noundef 0, i64 noundef 992)
  %6 = load ptr, ptr %tif, align 8
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 992
  %7 = load ptr, ptr %tif, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %7, i32 0, i32 0
  store ptr %add.ptr, ptr %tif_name, align 8
  %8 = load ptr, ptr %tif, align 8
  %tif_name7 = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %tif_name7, align 8
  %10 = load ptr, ptr %name.addr, align 8
  %11 = load ptr, ptr %tif, align 8
  %tif_name8 = getelementptr inbounds %struct.tiff, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %tif_name8, align 8
  %13 = call i64 @llvm.objectsize.i64.p0(ptr %12, i1 false, i1 true, i1 false)
  %call9 = call ptr @__strcpy_chk(ptr noundef %9, ptr noundef %10, i64 noundef %13) #4
  %14 = load i32, ptr %m, align 4
  %and = and i32 %14, -1537
  %15 = load ptr, ptr %tif, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %15, i32 0, i32 2
  store i32 %and, ptr %tif_mode, align 4
  %16 = load ptr, ptr %tif, align 8
  %tif_curdir = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 12
  store i16 -1, ptr %tif_curdir, align 8
  %17 = load ptr, ptr %tif, align 8
  %tif_curoff = getelementptr inbounds %struct.tiff, ptr %17, i32 0, i32 14
  store i64 0, ptr %tif_curoff, align 8
  %18 = load ptr, ptr %tif, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 13
  store i64 -1, ptr %tif_curstrip, align 8
  %19 = load ptr, ptr %tif, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %19, i32 0, i32 11
  store i64 -1, ptr %tif_row, align 8
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
  store i64 1, ptr %tif_flags, align 8
  %38 = load i32, ptr %m, align 4
  %cmp10 = icmp eq i32 %38, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end6
  %39 = load ptr, ptr %tif, align 8
  %tif_flags12 = getelementptr inbounds %struct.tiff, ptr %39, i32 0, i32 3
  %40 = load i64, ptr %tif_flags12, align 8
  %or = or i64 %40, 34816
  store i64 %or, ptr %tif_flags12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end6
  store i64 1, ptr %u, align 8
  %arrayidx = getelementptr inbounds [4 x i8], ptr %u, i64 0, i64 0
  %41 = load i8, ptr %arrayidx, align 8
  %conv = sext i8 %41 to i32
  %cmp14 = icmp eq i32 %conv, 0
  %conv15 = zext i1 %cmp14 to i32
  store i32 %conv15, ptr %bigendian, align 4
  %42 = load ptr, ptr %mode.addr, align 8
  store ptr %42, ptr %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end13
  %43 = load ptr, ptr %cp, align 8
  %44 = load i8, ptr %43, align 1
  %tobool = icmp ne i8 %44, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load ptr, ptr %cp, align 8
  %46 = load i8, ptr %45, align 1
  %conv16 = sext i8 %46 to i32
  switch i32 %conv16, label %sw.epilog [
    i32 98, label %sw.bb
    i32 108, label %sw.bb24
    i32 66, label %sw.bb33
    i32 76, label %sw.bb38
    i32 72, label %sw.bb43
    i32 77, label %sw.bb48
    i32 109, label %sw.bb55
    i32 67, label %sw.bb62
    i32 99, label %sw.bb69
  ]

sw.bb:                                            ; preds = %for.body
  %47 = load i32, ptr %m, align 4
  %and17 = and i32 %47, 512
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %sw.bb
  %48 = load i32, ptr %bigendian, align 4
  %tobool19 = icmp ne i32 %48, 0
  br i1 %tobool19, label %if.end23, label %if.then20

if.then20:                                        ; preds = %land.lhs.true
  %49 = load ptr, ptr %tif, align 8
  %tif_flags21 = getelementptr inbounds %struct.tiff, ptr %49, i32 0, i32 3
  %50 = load i64, ptr %tif_flags21, align 8
  %or22 = or i64 %50, 128
  store i64 %or22, ptr %tif_flags21, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb24:                                          ; preds = %for.body
  %51 = load i32, ptr %m, align 4
  %and25 = and i32 %51, 512
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %land.lhs.true27, label %if.end32

land.lhs.true27:                                  ; preds = %sw.bb24
  %52 = load i32, ptr %bigendian, align 4
  %tobool28 = icmp ne i32 %52, 0
  br i1 %tobool28, label %if.then29, label %if.end32

if.then29:                                        ; preds = %land.lhs.true27
  %53 = load ptr, ptr %tif, align 8
  %tif_flags30 = getelementptr inbounds %struct.tiff, ptr %53, i32 0, i32 3
  %54 = load i64, ptr %tif_flags30, align 8
  %or31 = or i64 %54, 128
  store i64 %or31, ptr %tif_flags30, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %land.lhs.true27, %sw.bb24
  br label %sw.epilog

sw.bb33:                                          ; preds = %for.body
  %55 = load ptr, ptr %tif, align 8
  %tif_flags34 = getelementptr inbounds %struct.tiff, ptr %55, i32 0, i32 3
  %56 = load i64, ptr %tif_flags34, align 8
  %and35 = and i64 %56, -4
  %or36 = or i64 %and35, 1
  %57 = load ptr, ptr %tif, align 8
  %tif_flags37 = getelementptr inbounds %struct.tiff, ptr %57, i32 0, i32 3
  store i64 %or36, ptr %tif_flags37, align 8
  br label %sw.epilog

sw.bb38:                                          ; preds = %for.body
  %58 = load ptr, ptr %tif, align 8
  %tif_flags39 = getelementptr inbounds %struct.tiff, ptr %58, i32 0, i32 3
  %59 = load i64, ptr %tif_flags39, align 8
  %and40 = and i64 %59, -4
  %or41 = or i64 %and40, 2
  %60 = load ptr, ptr %tif, align 8
  %tif_flags42 = getelementptr inbounds %struct.tiff, ptr %60, i32 0, i32 3
  store i64 %or41, ptr %tif_flags42, align 8
  br label %sw.epilog

sw.bb43:                                          ; preds = %for.body
  %61 = load ptr, ptr %tif, align 8
  %tif_flags44 = getelementptr inbounds %struct.tiff, ptr %61, i32 0, i32 3
  %62 = load i64, ptr %tif_flags44, align 8
  %and45 = and i64 %62, -4
  %or46 = or i64 %and45, 1
  %63 = load ptr, ptr %tif, align 8
  %tif_flags47 = getelementptr inbounds %struct.tiff, ptr %63, i32 0, i32 3
  store i64 %or46, ptr %tif_flags47, align 8
  br label %sw.epilog

sw.bb48:                                          ; preds = %for.body
  %64 = load i32, ptr %m, align 4
  %cmp49 = icmp eq i32 %64, 0
  br i1 %cmp49, label %if.then51, label %if.end54

if.then51:                                        ; preds = %sw.bb48
  %65 = load ptr, ptr %tif, align 8
  %tif_flags52 = getelementptr inbounds %struct.tiff, ptr %65, i32 0, i32 3
  %66 = load i64, ptr %tif_flags52, align 8
  %or53 = or i64 %66, 2048
  store i64 %or53, ptr %tif_flags52, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %sw.bb48
  br label %sw.epilog

sw.bb55:                                          ; preds = %for.body
  %67 = load i32, ptr %m, align 4
  %cmp56 = icmp eq i32 %67, 0
  br i1 %cmp56, label %if.then58, label %if.end61

if.then58:                                        ; preds = %sw.bb55
  %68 = load ptr, ptr %tif, align 8
  %tif_flags59 = getelementptr inbounds %struct.tiff, ptr %68, i32 0, i32 3
  %69 = load i64, ptr %tif_flags59, align 8
  %and60 = and i64 %69, -2049
  store i64 %and60, ptr %tif_flags59, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %sw.bb55
  br label %sw.epilog

sw.bb62:                                          ; preds = %for.body
  %70 = load i32, ptr %m, align 4
  %cmp63 = icmp eq i32 %70, 0
  br i1 %cmp63, label %if.then65, label %if.end68

if.then65:                                        ; preds = %sw.bb62
  %71 = load ptr, ptr %tif, align 8
  %tif_flags66 = getelementptr inbounds %struct.tiff, ptr %71, i32 0, i32 3
  %72 = load i64, ptr %tif_flags66, align 8
  %or67 = or i64 %72, 32768
  store i64 %or67, ptr %tif_flags66, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %sw.bb62
  br label %sw.epilog

sw.bb69:                                          ; preds = %for.body
  %73 = load i32, ptr %m, align 4
  %cmp70 = icmp eq i32 %73, 0
  br i1 %cmp70, label %if.then72, label %if.end75

if.then72:                                        ; preds = %sw.bb69
  %74 = load ptr, ptr %tif, align 8
  %tif_flags73 = getelementptr inbounds %struct.tiff, ptr %74, i32 0, i32 3
  %75 = load i64, ptr %tif_flags73, align 8
  %and74 = and i64 %75, -32769
  store i64 %and74, ptr %tif_flags73, align 8
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %sw.bb69
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %if.end75, %if.end68, %if.end61, %if.end54, %sw.bb43, %sw.bb38, %sw.bb33, %if.end32, %if.end23
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %76 = load ptr, ptr %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %76, i32 1
  store ptr %incdec.ptr, ptr %cp, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %77 = load ptr, ptr %tif, align 8
  %tif_readproc76 = getelementptr inbounds %struct.tiff, ptr %77, i32 0, i32 49
  %78 = load ptr, ptr %tif_readproc76, align 8
  %79 = load ptr, ptr %tif, align 8
  %tif_clientdata77 = getelementptr inbounds %struct.tiff, ptr %79, i32 0, i32 48
  %80 = load ptr, ptr %tif_clientdata77, align 8
  %81 = load ptr, ptr %tif, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %81, i32 0, i32 7
  %call78 = call i64 %78(ptr noundef %80, ptr noundef %tif_header, i64 noundef 16)
  %cmp79 = icmp eq i64 %call78, 16
  br i1 %cmp79, label %if.end120, label %if.then81

if.then81:                                        ; preds = %for.end
  %82 = load ptr, ptr %tif, align 8
  %tif_mode82 = getelementptr inbounds %struct.tiff, ptr %82, i32 0, i32 2
  %83 = load i32, ptr %tif_mode82, align 4
  %cmp83 = icmp eq i32 %83, 0
  br i1 %cmp83, label %if.then85, label %if.end86

if.then85:                                        ; preds = %if.then81
  %84 = load ptr, ptr %name.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %84, ptr noundef @.str.2)
  br label %bad

if.end86:                                         ; preds = %if.then81
  %85 = load ptr, ptr %tif, align 8
  %tif_flags87 = getelementptr inbounds %struct.tiff, ptr %85, i32 0, i32 3
  %86 = load i64, ptr %tif_flags87, align 8
  %and88 = and i64 %86, 128
  %tobool89 = icmp ne i64 %and88, 0
  br i1 %tobool89, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end86
  %87 = load i32, ptr %bigendian, align 4
  %tobool90 = icmp ne i32 %87, 0
  %88 = zext i1 %tobool90 to i64
  %cond = select i1 %tobool90, i32 18761, i32 19789
  br label %cond.end

cond.false:                                       ; preds = %if.end86
  %89 = load i32, ptr %bigendian, align 4
  %tobool91 = icmp ne i32 %89, 0
  %90 = zext i1 %tobool91 to i64
  %cond92 = select i1 %tobool91, i32 19789, i32 18761
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond93 = phi i32 [ %cond, %cond.true ], [ %cond92, %cond.false ]
  %conv94 = trunc i32 %cond93 to i16
  %91 = load ptr, ptr %tif, align 8
  %tif_header95 = getelementptr inbounds %struct.tiff, ptr %91, i32 0, i32 7
  %tiff_magic = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header95, i32 0, i32 0
  store i16 %conv94, ptr %tiff_magic, align 8
  %92 = load ptr, ptr %tif, align 8
  %tif_header96 = getelementptr inbounds %struct.tiff, ptr %92, i32 0, i32 7
  %tiff_version = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header96, i32 0, i32 1
  store i16 42, ptr %tiff_version, align 2
  %93 = load ptr, ptr %tif, align 8
  %tif_flags97 = getelementptr inbounds %struct.tiff, ptr %93, i32 0, i32 3
  %94 = load i64, ptr %tif_flags97, align 8
  %and98 = and i64 %94, 128
  %tobool99 = icmp ne i64 %and98, 0
  br i1 %tobool99, label %if.then100, label %if.end103

if.then100:                                       ; preds = %cond.end
  %95 = load ptr, ptr %tif, align 8
  %tif_header101 = getelementptr inbounds %struct.tiff, ptr %95, i32 0, i32 7
  %tiff_version102 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header101, i32 0, i32 1
  call void @TIFFSwabShort(ptr noundef %tiff_version102)
  br label %if.end103

if.end103:                                        ; preds = %if.then100, %cond.end
  %96 = load ptr, ptr %tif, align 8
  %tif_header104 = getelementptr inbounds %struct.tiff, ptr %96, i32 0, i32 7
  %tiff_diroff = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header104, i32 0, i32 2
  store i64 0, ptr %tiff_diroff, align 8
  %97 = load ptr, ptr %tif, align 8
  %tif_writeproc105 = getelementptr inbounds %struct.tiff, ptr %97, i32 0, i32 50
  %98 = load ptr, ptr %tif_writeproc105, align 8
  %99 = load ptr, ptr %tif, align 8
  %tif_clientdata106 = getelementptr inbounds %struct.tiff, ptr %99, i32 0, i32 48
  %100 = load ptr, ptr %tif_clientdata106, align 8
  %101 = load ptr, ptr %tif, align 8
  %tif_header107 = getelementptr inbounds %struct.tiff, ptr %101, i32 0, i32 7
  %call108 = call i64 %98(ptr noundef %100, ptr noundef %tif_header107, i64 noundef 16)
  %cmp109 = icmp eq i64 %call108, 16
  br i1 %cmp109, label %if.end112, label %if.then111

if.then111:                                       ; preds = %if.end103
  %102 = load ptr, ptr %name.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %102, ptr noundef @.str.3)
  br label %bad

if.end112:                                        ; preds = %if.end103
  %103 = load ptr, ptr %tif, align 8
  %104 = load ptr, ptr %tif, align 8
  %tif_header113 = getelementptr inbounds %struct.tiff, ptr %104, i32 0, i32 7
  %tiff_magic114 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header113, i32 0, i32 0
  %105 = load i16, ptr %tiff_magic114, align 8
  %conv115 = zext i16 %105 to i32
  %106 = load i32, ptr %bigendian, align 4
  call void @TIFFInitOrder(ptr noundef %103, i32 noundef %conv115, i32 noundef %106)
  %107 = load ptr, ptr %tif, align 8
  %call116 = call i32 @TIFFDefaultDirectory(ptr noundef %107)
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.end119, label %if.then118

if.then118:                                       ; preds = %if.end112
  br label %bad

if.end119:                                        ; preds = %if.end112
  %108 = load ptr, ptr %tif, align 8
  %tif_diroff = getelementptr inbounds %struct.tiff, ptr %108, i32 0, i32 4
  store i64 0, ptr %tif_diroff, align 8
  %109 = load ptr, ptr %tif, align 8
  store ptr %109, ptr %retval, align 8
  br label %return

if.end120:                                        ; preds = %for.end
  %110 = load ptr, ptr %tif, align 8
  %tif_header121 = getelementptr inbounds %struct.tiff, ptr %110, i32 0, i32 7
  %tiff_magic122 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header121, i32 0, i32 0
  %111 = load i16, ptr %tiff_magic122, align 8
  %conv123 = zext i16 %111 to i32
  %cmp124 = icmp ne i32 %conv123, 19789
  br i1 %cmp124, label %land.lhs.true126, label %if.end139

land.lhs.true126:                                 ; preds = %if.end120
  %112 = load ptr, ptr %tif, align 8
  %tif_header127 = getelementptr inbounds %struct.tiff, ptr %112, i32 0, i32 7
  %tiff_magic128 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header127, i32 0, i32 0
  %113 = load i16, ptr %tiff_magic128, align 8
  %conv129 = zext i16 %113 to i32
  %cmp130 = icmp ne i32 %conv129, 18761
  br i1 %cmp130, label %if.then132, label %if.end139

if.then132:                                       ; preds = %land.lhs.true126
  %114 = load ptr, ptr %name.addr, align 8
  %115 = load ptr, ptr %tif, align 8
  %tif_header133 = getelementptr inbounds %struct.tiff, ptr %115, i32 0, i32 7
  %tiff_magic134 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header133, i32 0, i32 0
  %116 = load i16, ptr %tiff_magic134, align 8
  %conv135 = zext i16 %116 to i32
  %117 = load ptr, ptr %tif, align 8
  %tif_header136 = getelementptr inbounds %struct.tiff, ptr %117, i32 0, i32 7
  %tiff_magic137 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header136, i32 0, i32 0
  %118 = load i16, ptr %tiff_magic137, align 8
  %conv138 = zext i16 %118 to i32
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %114, ptr noundef @.str.4, i32 noundef %conv135, i32 noundef %conv138)
  br label %bad

if.end139:                                        ; preds = %land.lhs.true126, %if.end120
  %119 = load ptr, ptr %tif, align 8
  %120 = load ptr, ptr %tif, align 8
  %tif_header140 = getelementptr inbounds %struct.tiff, ptr %120, i32 0, i32 7
  %tiff_magic141 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header140, i32 0, i32 0
  %121 = load i16, ptr %tiff_magic141, align 8
  %conv142 = zext i16 %121 to i32
  %122 = load i32, ptr %bigendian, align 4
  call void @TIFFInitOrder(ptr noundef %119, i32 noundef %conv142, i32 noundef %122)
  %123 = load ptr, ptr %tif, align 8
  %tif_flags143 = getelementptr inbounds %struct.tiff, ptr %123, i32 0, i32 3
  %124 = load i64, ptr %tif_flags143, align 8
  %and144 = and i64 %124, 128
  %tobool145 = icmp ne i64 %and144, 0
  br i1 %tobool145, label %if.then146, label %if.end151

if.then146:                                       ; preds = %if.end139
  %125 = load ptr, ptr %tif, align 8
  %tif_header147 = getelementptr inbounds %struct.tiff, ptr %125, i32 0, i32 7
  %tiff_version148 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header147, i32 0, i32 1
  call void @TIFFSwabShort(ptr noundef %tiff_version148)
  %126 = load ptr, ptr %tif, align 8
  %tif_header149 = getelementptr inbounds %struct.tiff, ptr %126, i32 0, i32 7
  %tiff_diroff150 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header149, i32 0, i32 2
  call void @TIFFSwabLong(ptr noundef %tiff_diroff150)
  br label %if.end151

if.end151:                                        ; preds = %if.then146, %if.end139
  %127 = load ptr, ptr %tif, align 8
  %tif_header152 = getelementptr inbounds %struct.tiff, ptr %127, i32 0, i32 7
  %tiff_version153 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header152, i32 0, i32 1
  %128 = load i16, ptr %tiff_version153, align 2
  %conv154 = zext i16 %128 to i32
  %cmp155 = icmp ne i32 %conv154, 42
  br i1 %cmp155, label %if.then157, label %if.end164

if.then157:                                       ; preds = %if.end151
  %129 = load ptr, ptr %name.addr, align 8
  %130 = load ptr, ptr %tif, align 8
  %tif_header158 = getelementptr inbounds %struct.tiff, ptr %130, i32 0, i32 7
  %tiff_version159 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header158, i32 0, i32 1
  %131 = load i16, ptr %tiff_version159, align 2
  %conv160 = zext i16 %131 to i32
  %132 = load ptr, ptr %tif, align 8
  %tif_header161 = getelementptr inbounds %struct.tiff, ptr %132, i32 0, i32 7
  %tiff_version162 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header161, i32 0, i32 1
  %133 = load i16, ptr %tiff_version162, align 2
  %conv163 = zext i16 %133 to i32
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %129, ptr noundef @.str.5, i32 noundef %conv160, i32 noundef %conv163)
  br label %bad

if.end164:                                        ; preds = %if.end151
  %134 = load ptr, ptr %tif, align 8
  %tif_flags165 = getelementptr inbounds %struct.tiff, ptr %134, i32 0, i32 3
  %135 = load i64, ptr %tif_flags165, align 8
  %or166 = or i64 %135, 512
  store i64 %or166, ptr %tif_flags165, align 8
  %136 = load ptr, ptr %tif, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %136, i32 0, i32 40
  store ptr null, ptr %tif_rawdata, align 8
  %137 = load ptr, ptr %tif, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %137, i32 0, i32 42
  store ptr null, ptr %tif_rawcp, align 8
  %138 = load ptr, ptr %tif, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %138, i32 0, i32 41
  store i64 0, ptr %tif_rawdatasize, align 8
  %139 = load ptr, ptr %mode.addr, align 8
  %arrayidx167 = getelementptr inbounds i8, ptr %139, i64 0
  %140 = load i8, ptr %arrayidx167, align 1
  %conv168 = sext i8 %140 to i32
  switch i32 %conv168, label %sw.epilog195 [
    i32 114, label %sw.bb169
    i32 97, label %sw.bb190
  ]

sw.bb169:                                         ; preds = %if.end164
  %141 = load ptr, ptr %tif, align 8
  %tif_header170 = getelementptr inbounds %struct.tiff, ptr %141, i32 0, i32 7
  %tiff_diroff171 = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header170, i32 0, i32 2
  %142 = load i64, ptr %tiff_diroff171, align 8
  %143 = load ptr, ptr %tif, align 8
  %tif_nextdiroff = getelementptr inbounds %struct.tiff, ptr %143, i32 0, i32 5
  store i64 %142, ptr %tif_nextdiroff, align 8
  %144 = load ptr, ptr %tif, align 8
  %tif_flags172 = getelementptr inbounds %struct.tiff, ptr %144, i32 0, i32 3
  %145 = load i64, ptr %tif_flags172, align 8
  %and173 = and i64 %145, 2048
  %tobool174 = icmp ne i64 %and173, 0
  br i1 %tobool174, label %land.lhs.true175, label %if.end183

land.lhs.true175:                                 ; preds = %sw.bb169
  %146 = load ptr, ptr %tif, align 8
  %tif_mapproc176 = getelementptr inbounds %struct.tiff, ptr %146, i32 0, i32 46
  %147 = load ptr, ptr %tif_mapproc176, align 8
  %148 = load ptr, ptr %tif, align 8
  %tif_clientdata177 = getelementptr inbounds %struct.tiff, ptr %148, i32 0, i32 48
  %149 = load ptr, ptr %tif_clientdata177, align 8
  %150 = load ptr, ptr %tif, align 8
  %tif_base = getelementptr inbounds %struct.tiff, ptr %150, i32 0, i32 44
  %151 = load ptr, ptr %tif, align 8
  %tif_size = getelementptr inbounds %struct.tiff, ptr %151, i32 0, i32 45
  %call178 = call i32 %147(ptr noundef %149, ptr noundef %tif_base, ptr noundef %tif_size)
  %tobool179 = icmp ne i32 %call178, 0
  br i1 %tobool179, label %if.end183, label %if.then180

if.then180:                                       ; preds = %land.lhs.true175
  %152 = load ptr, ptr %tif, align 8
  %tif_flags181 = getelementptr inbounds %struct.tiff, ptr %152, i32 0, i32 3
  %153 = load i64, ptr %tif_flags181, align 8
  %and182 = and i64 %153, -2049
  store i64 %and182, ptr %tif_flags181, align 8
  br label %if.end183

if.end183:                                        ; preds = %if.then180, %land.lhs.true175, %sw.bb169
  %154 = load ptr, ptr %tif, align 8
  %call184 = call i32 @TIFFReadDirectory(ptr noundef %154)
  %tobool185 = icmp ne i32 %call184, 0
  br i1 %tobool185, label %if.then186, label %if.end189

if.then186:                                       ; preds = %if.end183
  %155 = load ptr, ptr %tif, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %155, i32 0, i32 43
  store i64 -1, ptr %tif_rawcc, align 8
  %156 = load ptr, ptr %tif, align 8
  %tif_flags187 = getelementptr inbounds %struct.tiff, ptr %156, i32 0, i32 3
  %157 = load i64, ptr %tif_flags187, align 8
  %or188 = or i64 %157, 16
  store i64 %or188, ptr %tif_flags187, align 8
  %158 = load ptr, ptr %tif, align 8
  store ptr %158, ptr %retval, align 8
  br label %return

if.end189:                                        ; preds = %if.end183
  br label %sw.epilog195

sw.bb190:                                         ; preds = %if.end164
  %159 = load ptr, ptr %tif, align 8
  %call191 = call i32 @TIFFDefaultDirectory(ptr noundef %159)
  %tobool192 = icmp ne i32 %call191, 0
  br i1 %tobool192, label %if.end194, label %if.then193

if.then193:                                       ; preds = %sw.bb190
  br label %bad

if.end194:                                        ; preds = %sw.bb190
  %160 = load ptr, ptr %tif, align 8
  store ptr %160, ptr %retval, align 8
  br label %return

sw.epilog195:                                     ; preds = %if.end164, %if.end189
  br label %bad

bad:                                              ; preds = %sw.epilog195, %if.then193, %if.then157, %if.then132, %if.then118, %if.then111, %if.then85
  %161 = load ptr, ptr %tif, align 8
  %tif_mode196 = getelementptr inbounds %struct.tiff, ptr %161, i32 0, i32 2
  store i32 0, ptr %tif_mode196, align 4
  %162 = load ptr, ptr %tif, align 8
  call void @TIFFClose(ptr noundef %162)
  store ptr null, ptr %retval, align 8
  br label %return

bad2:                                             ; preds = %if.then5, %if.then
  %163 = load ptr, ptr %closeproc.addr, align 8
  %164 = load ptr, ptr %clientdata.addr, align 8
  %call197 = call i32 %163(ptr noundef %164)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %bad2, %bad, %if.end194, %if.then186, %if.end119
  %165 = load ptr, ptr %retval, align 8
  ret ptr %165
}

declare ptr @_TIFFmalloc(i64 noundef) #1

declare i64 @strlen(ptr noundef) #1

declare void @_TIFFmemset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

declare void @_TIFFSetDefaultCompressionState(ptr noundef) #1

declare void @TIFFSwabShort(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %5 = load i64, ptr %tif_flags, align 8
  %or = or i64 %5, 128
  store i64 %or, ptr %tif_flags, align 8
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
  %9 = load i64, ptr %tif_flags5, align 8
  %or6 = or i64 %9, 128
  store i64 %or6, ptr %tif_flags5, align 8
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @TIFFFileName(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %tif_name, align 8
  ret ptr %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFFileno(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_fd = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %tif_fd, align 8
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFGetMode(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %tif_mode, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFIsTiled(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 3
  %1 = load i64, ptr %tif_flags, align 8
  %and = and i64 %1, 1024
  %cmp = icmp ne i64 %and, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @TIFFCurrentRow(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 11
  %1 = load i64, ptr %tif_row, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i16 @TIFFCurrentDirectory(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_curdir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 12
  %1 = load i16, ptr %tif_curdir, align 8
  ret i16 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @TIFFCurrentStrip(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 13
  %1 = load i64, ptr %tif_curstrip, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @TIFFCurrentTile(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_curtile = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 19
  %1 = load i64, ptr %tif_curtile, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFIsByteSwapped(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 3
  %1 = load i64, ptr %tif_flags, align 8
  %and = and i64 %1, 128
  %cmp = icmp ne i64 %and, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFIsUpSampled(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 3
  %1 = load i64, ptr %tif_flags, align 8
  %and = and i64 %1, 16384
  %cmp = icmp ne i64 %and, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFIsMSB2LSB(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 3
  %1 = load i64, ptr %tif_flags, align 8
  %and = and i64 %1, 1
  %cmp = icmp ne i64 %and, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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
