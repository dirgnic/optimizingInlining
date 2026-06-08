; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_never_inline/source_snapshot_public_repos_mibench_consumer_tiff-v3.5.4_libtiff_tif_open.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_open.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

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

; Function Attrs: nounwind ssp uwtable
define i32 @_TIFFgetMode(ptr noundef %mode, ptr noundef %module) #0 {
entry:
  %mode.addr = alloca ptr, align 8
  %module.addr = alloca ptr, align 8
  %m = alloca i32, align 4
  store ptr %mode, ptr %mode.addr, align 8
  store ptr %module, ptr %module.addr, align 8
  store i32 -1, ptr %m, align 4
  %0 = load i8, ptr %mode, align 1
  %conv = sext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 114, label %sw.bb
    i32 119, label %sw.bb4
    i32 97, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, ptr %m, align 4
  %1 = load ptr, ptr %mode.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %1, i64 1
  %2 = load i8, ptr %arrayidx1, align 1
  %cmp = icmp eq i8 %2, 43
  %spec.store.select = select i1 %cmp, i32 2, i32 0
  store i32 %spec.store.select, ptr %m, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry, %entry
  store i32 514, ptr %m, align 4
  %3 = load ptr, ptr %mode.addr, align 8
  %4 = load i8, ptr %3, align 1
  %cmp7 = icmp eq i8 %4, 119
  br i1 %cmp7, label %if.then9, label %sw.epilog

if.then9:                                         ; preds = %sw.bb4
  %5 = load i32, ptr %m, align 4
  %or = or i32 %5, 1024
  store i32 %or, ptr %m, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %6 = load ptr, ptr %module.addr, align 8
  %7 = load ptr, ptr %mode.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef %7) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %if.then9, %sw.default, %sw.bb
  %8 = load i32, ptr %m, align 4
  ret i32 %8
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
  %call = call i32 @_TIFFgetMode(ptr noundef %0, ptr noundef nonnull @TIFFClientOpen.module)
  store i32 %call, ptr %m, align 4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %bad2, label %if.end

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8
  %call1 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #4
  %add2 = add i64 %call1, 993
  %call3 = call ptr @_TIFFmalloc(i64 noundef %add2) #4
  store ptr %call3, ptr %tif, align 8
  %cmp4 = icmp eq ptr %call3, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %2 = load ptr, ptr %name.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFClientOpen.module, ptr noundef nonnull @.str.1, ptr noundef %2) #4
  br label %bad2

if.end6:                                          ; preds = %if.end
  %3 = load ptr, ptr %tif, align 8
  call void @_TIFFmemset(ptr noundef %3, i32 noundef 0, i64 noundef 992) #4
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 992
  store ptr %add.ptr, ptr %3, align 8
  %4 = load ptr, ptr %name.addr, align 8
  %5 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr, i1 false, i1 true, i1 false)
  %call9 = call ptr @__strcpy_chk(ptr noundef nonnull %add.ptr, ptr noundef %4, i64 noundef %5) #4
  %6 = load i32, ptr %m, align 4
  %and = and i32 %6, -1537
  %7 = load ptr, ptr %tif, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %7, i64 0, i32 2
  store i32 %and, ptr %tif_mode, align 4
  %tif_curdir = getelementptr inbounds %struct.tiff, ptr %7, i64 0, i32 12
  store i16 -1, ptr %tif_curdir, align 8
  %tif_curoff = getelementptr inbounds %struct.tiff, ptr %7, i64 0, i32 14
  store i64 0, ptr %tif_curoff, align 8
  %8 = load ptr, ptr %tif, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 13
  store i64 -1, ptr %tif_curstrip, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 11
  store i64 -1, ptr %tif_row, align 8
  %9 = load ptr, ptr %clientdata.addr, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 48
  store ptr %9, ptr %tif_clientdata, align 8
  %10 = load ptr, ptr %readproc.addr, align 8
  %11 = load ptr, ptr %tif, align 8
  %tif_readproc = getelementptr inbounds %struct.tiff, ptr %11, i64 0, i32 49
  store ptr %10, ptr %tif_readproc, align 8
  %12 = load ptr, ptr %writeproc.addr, align 8
  %tif_writeproc = getelementptr inbounds %struct.tiff, ptr %11, i64 0, i32 50
  store ptr %12, ptr %tif_writeproc, align 8
  %13 = load ptr, ptr %seekproc.addr, align 8
  %14 = load ptr, ptr %tif, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %14, i64 0, i32 51
  store ptr %13, ptr %tif_seekproc, align 8
  %15 = load ptr, ptr %closeproc.addr, align 8
  %tif_closeproc = getelementptr inbounds %struct.tiff, ptr %14, i64 0, i32 52
  store ptr %15, ptr %tif_closeproc, align 8
  %16 = load ptr, ptr %sizeproc.addr, align 8
  %17 = load ptr, ptr %tif, align 8
  %tif_sizeproc = getelementptr inbounds %struct.tiff, ptr %17, i64 0, i32 53
  store ptr %16, ptr %tif_sizeproc, align 8
  %18 = load ptr, ptr %mapproc.addr, align 8
  %tif_mapproc = getelementptr inbounds %struct.tiff, ptr %17, i64 0, i32 46
  store ptr %18, ptr %tif_mapproc, align 8
  %19 = load ptr, ptr %unmapproc.addr, align 8
  %20 = load ptr, ptr %tif, align 8
  %tif_unmapproc = getelementptr inbounds %struct.tiff, ptr %20, i64 0, i32 47
  store ptr %19, ptr %tif_unmapproc, align 8
  call void @_TIFFSetDefaultCompressionState(ptr noundef %20) #4
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %20, i64 0, i32 3
  store i64 1, ptr %tif_flags, align 8
  %21 = load i32, ptr %m, align 4
  %cmp10 = icmp eq i32 %21, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end6
  %22 = load ptr, ptr %tif, align 8
  %tif_flags12 = getelementptr inbounds %struct.tiff, ptr %22, i64 0, i32 3
  %23 = load i64, ptr %tif_flags12, align 8
  %or = or i64 %23, 34816
  store i64 %or, ptr %tif_flags12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end6
  store i32 0, ptr %bigendian, align 4
  %24 = load ptr, ptr %mode.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end13
  %storemerge = phi ptr [ %24, %if.end13 ], [ %incdec.ptr, %for.inc ]
  store ptr %storemerge, ptr %cp, align 8
  %25 = load i8, ptr %storemerge, align 1
  %tobool.not = icmp eq i8 %25, 0
  br i1 %tobool.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %26 = load ptr, ptr %cp, align 8
  %27 = load i8, ptr %26, align 1
  %conv16 = sext i8 %27 to i32
  switch i32 %conv16, label %for.inc [
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
  %28 = load i32, ptr %m, align 4
  %and17 = and i32 %28, 512
  %tobool18.not = icmp ne i32 %and17, 0
  %29 = load i32, ptr %bigendian, align 4
  %tobool19.not = icmp eq i32 %29, 0
  %or.cond = select i1 %tobool18.not, i1 %tobool19.not, i1 false
  br i1 %or.cond, label %if.then20, label %for.inc

if.then20:                                        ; preds = %sw.bb
  %30 = load ptr, ptr %tif, align 8
  %tif_flags21 = getelementptr inbounds %struct.tiff, ptr %30, i64 0, i32 3
  %31 = load i64, ptr %tif_flags21, align 8
  %or22 = or i64 %31, 128
  store i64 %or22, ptr %tif_flags21, align 8
  br label %for.inc

sw.bb24:                                          ; preds = %for.body
  %32 = load i32, ptr %m, align 4
  %and25 = and i32 %32, 512
  %tobool26.not = icmp eq i32 %and25, 0
  %33 = load i32, ptr %bigendian, align 4
  %tobool28.not = icmp eq i32 %33, 0
  %or.cond1 = select i1 %tobool26.not, i1 true, i1 %tobool28.not
  br i1 %or.cond1, label %for.inc, label %if.then29

if.then29:                                        ; preds = %sw.bb24
  %34 = load ptr, ptr %tif, align 8
  %tif_flags30 = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 3
  %35 = load i64, ptr %tif_flags30, align 8
  %or31 = or i64 %35, 128
  store i64 %or31, ptr %tif_flags30, align 8
  br label %for.inc

sw.bb33:                                          ; preds = %for.body
  %36 = load ptr, ptr %tif, align 8
  %tif_flags34 = getelementptr inbounds %struct.tiff, ptr %36, i64 0, i32 3
  %37 = load i64, ptr %tif_flags34, align 8
  %and35 = and i64 %37, -4
  %or36 = or i64 %and35, 1
  %tif_flags37 = getelementptr inbounds %struct.tiff, ptr %36, i64 0, i32 3
  store i64 %or36, ptr %tif_flags37, align 8
  br label %for.inc

sw.bb38:                                          ; preds = %for.body
  %38 = load ptr, ptr %tif, align 8
  %tif_flags39 = getelementptr inbounds %struct.tiff, ptr %38, i64 0, i32 3
  %39 = load i64, ptr %tif_flags39, align 8
  %and40 = and i64 %39, -4
  %or41 = or i64 %and40, 2
  %tif_flags42 = getelementptr inbounds %struct.tiff, ptr %38, i64 0, i32 3
  store i64 %or41, ptr %tif_flags42, align 8
  br label %for.inc

sw.bb43:                                          ; preds = %for.body
  %40 = load ptr, ptr %tif, align 8
  %tif_flags44 = getelementptr inbounds %struct.tiff, ptr %40, i64 0, i32 3
  %41 = load i64, ptr %tif_flags44, align 8
  %and45 = and i64 %41, -4
  %or46 = or i64 %and45, 1
  %tif_flags47 = getelementptr inbounds %struct.tiff, ptr %40, i64 0, i32 3
  store i64 %or46, ptr %tif_flags47, align 8
  br label %for.inc

sw.bb48:                                          ; preds = %for.body
  %42 = load i32, ptr %m, align 4
  %cmp49 = icmp eq i32 %42, 0
  br i1 %cmp49, label %if.then51, label %for.inc

if.then51:                                        ; preds = %sw.bb48
  %43 = load ptr, ptr %tif, align 8
  %tif_flags52 = getelementptr inbounds %struct.tiff, ptr %43, i64 0, i32 3
  %44 = load i64, ptr %tif_flags52, align 8
  %or53 = or i64 %44, 2048
  store i64 %or53, ptr %tif_flags52, align 8
  br label %for.inc

sw.bb55:                                          ; preds = %for.body
  %45 = load i32, ptr %m, align 4
  %cmp56 = icmp eq i32 %45, 0
  br i1 %cmp56, label %if.then58, label %for.inc

if.then58:                                        ; preds = %sw.bb55
  %46 = load ptr, ptr %tif, align 8
  %tif_flags59 = getelementptr inbounds %struct.tiff, ptr %46, i64 0, i32 3
  %47 = load i64, ptr %tif_flags59, align 8
  %and60 = and i64 %47, -2049
  store i64 %and60, ptr %tif_flags59, align 8
  br label %for.inc

sw.bb62:                                          ; preds = %for.body
  %48 = load i32, ptr %m, align 4
  %cmp63 = icmp eq i32 %48, 0
  br i1 %cmp63, label %if.then65, label %for.inc

if.then65:                                        ; preds = %sw.bb62
  %49 = load ptr, ptr %tif, align 8
  %tif_flags66 = getelementptr inbounds %struct.tiff, ptr %49, i64 0, i32 3
  %50 = load i64, ptr %tif_flags66, align 8
  %or67 = or i64 %50, 32768
  store i64 %or67, ptr %tif_flags66, align 8
  br label %for.inc

sw.bb69:                                          ; preds = %for.body
  %51 = load i32, ptr %m, align 4
  %cmp70 = icmp eq i32 %51, 0
  br i1 %cmp70, label %if.then72, label %for.inc

if.then72:                                        ; preds = %sw.bb69
  %52 = load ptr, ptr %tif, align 8
  %tif_flags73 = getelementptr inbounds %struct.tiff, ptr %52, i64 0, i32 3
  %53 = load i64, ptr %tif_flags73, align 8
  %and74 = and i64 %53, -32769
  store i64 %and74, ptr %tif_flags73, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %sw.bb33, %sw.bb38, %sw.bb43, %if.then20, %sw.bb, %if.then29, %sw.bb24, %if.then51, %sw.bb48, %if.then58, %sw.bb55, %if.then65, %sw.bb62, %if.then72, %sw.bb69
  %54 = load ptr, ptr %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %54, i64 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %55 = load ptr, ptr %tif, align 8
  %tif_readproc76 = getelementptr inbounds %struct.tiff, ptr %55, i64 0, i32 49
  %56 = load ptr, ptr %tif_readproc76, align 8
  %tif_clientdata77 = getelementptr inbounds %struct.tiff, ptr %55, i64 0, i32 48
  %57 = load ptr, ptr %tif_clientdata77, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %55, i64 0, i32 7
  %call78 = call i64 %56(ptr noundef %57, ptr noundef nonnull %tif_header, i64 noundef 16) #4
  %cmp79 = icmp eq i64 %call78, 16
  br i1 %cmp79, label %if.end120, label %if.then81

if.then81:                                        ; preds = %for.end
  %58 = load ptr, ptr %tif, align 8
  %tif_mode82 = getelementptr inbounds %struct.tiff, ptr %58, i64 0, i32 2
  %59 = load i32, ptr %tif_mode82, align 4
  %cmp83 = icmp eq i32 %59, 0
  br i1 %cmp83, label %if.then85, label %if.end86

if.then85:                                        ; preds = %if.then81
  %60 = load ptr, ptr %name.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %60, ptr noundef nonnull @.str.2) #4
  br label %bad

if.end86:                                         ; preds = %if.then81
  %61 = load ptr, ptr %tif, align 8
  %tif_flags87 = getelementptr inbounds %struct.tiff, ptr %61, i64 0, i32 3
  %62 = load i64, ptr %tif_flags87, align 8
  %and88 = and i64 %62, 128
  %tobool89.not = icmp eq i64 %and88, 0
  br i1 %tobool89.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end86
  %63 = load i32, ptr %bigendian, align 4
  %tobool90.not = icmp eq i32 %63, 0
  %cond = select i1 %tobool90.not, i16 19789, i16 18761
  br label %cond.end

cond.false:                                       ; preds = %if.end86
  %64 = load i32, ptr %bigendian, align 4
  %tobool91.not = icmp eq i32 %64, 0
  %cond92 = select i1 %tobool91.not, i16 18761, i16 19789
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond93 = phi i16 [ %cond, %cond.true ], [ %cond92, %cond.false ]
  %65 = load ptr, ptr %tif, align 8
  %tif_header95 = getelementptr inbounds %struct.tiff, ptr %65, i64 0, i32 7
  store i16 %cond93, ptr %tif_header95, align 8
  %tiff_version = getelementptr inbounds %struct.tiff, ptr %65, i64 0, i32 7, i32 1
  store i16 42, ptr %tiff_version, align 2
  %tif_flags97 = getelementptr inbounds %struct.tiff, ptr %65, i64 0, i32 3
  %66 = load i64, ptr %tif_flags97, align 8
  %and98 = and i64 %66, 128
  %tobool99.not = icmp eq i64 %and98, 0
  br i1 %tobool99.not, label %if.end103, label %if.then100

if.then100:                                       ; preds = %cond.end
  %67 = load ptr, ptr %tif, align 8
  %tiff_version102 = getelementptr inbounds %struct.tiff, ptr %67, i64 0, i32 7, i32 1
  call void @TIFFSwabShort(ptr noundef nonnull %tiff_version102) #4
  br label %if.end103

if.end103:                                        ; preds = %if.then100, %cond.end
  %68 = load ptr, ptr %tif, align 8
  %tiff_diroff = getelementptr inbounds %struct.tiff, ptr %68, i64 0, i32 7, i32 2
  store i64 0, ptr %tiff_diroff, align 8
  %tif_writeproc105 = getelementptr inbounds %struct.tiff, ptr %68, i64 0, i32 50
  %69 = load ptr, ptr %tif_writeproc105, align 8
  %tif_clientdata106 = getelementptr inbounds %struct.tiff, ptr %68, i64 0, i32 48
  %70 = load ptr, ptr %tif_clientdata106, align 8
  %71 = load ptr, ptr %tif, align 8
  %tif_header107 = getelementptr inbounds %struct.tiff, ptr %71, i64 0, i32 7
  %call108 = call i64 %69(ptr noundef %70, ptr noundef nonnull %tif_header107, i64 noundef 16) #4
  %cmp109 = icmp eq i64 %call108, 16
  br i1 %cmp109, label %if.end112, label %if.then111

if.then111:                                       ; preds = %if.end103
  %72 = load ptr, ptr %name.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %72, ptr noundef nonnull @.str.3) #4
  br label %bad

if.end112:                                        ; preds = %if.end103
  %73 = load ptr, ptr %tif, align 8
  %tif_header113 = getelementptr inbounds %struct.tiff, ptr %73, i64 0, i32 7
  %74 = load i16, ptr %tif_header113, align 8
  %conv115 = zext i16 %74 to i32
  %75 = load i32, ptr %bigendian, align 4
  call void @TIFFInitOrder(ptr noundef %73, i32 noundef %conv115, i32 noundef %75)
  %call116 = call i32 @TIFFDefaultDirectory(ptr noundef %73) #4
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %bad, label %if.end119

if.end119:                                        ; preds = %if.end112
  %76 = load ptr, ptr %tif, align 8
  %tif_diroff = getelementptr inbounds %struct.tiff, ptr %76, i64 0, i32 4
  store i64 0, ptr %tif_diroff, align 8
  store ptr %76, ptr %retval, align 8
  br label %return

if.end120:                                        ; preds = %for.end
  %77 = load ptr, ptr %tif, align 8
  %tif_header121 = getelementptr inbounds %struct.tiff, ptr %77, i64 0, i32 7
  %78 = load i16, ptr %tif_header121, align 8
  %cmp124.not = icmp eq i16 %78, 19789
  br i1 %cmp124.not, label %if.end139, label %land.lhs.true126

land.lhs.true126:                                 ; preds = %if.end120
  %79 = load ptr, ptr %tif, align 8
  %tif_header127 = getelementptr inbounds %struct.tiff, ptr %79, i64 0, i32 7
  %80 = load i16, ptr %tif_header127, align 8
  %cmp130.not = icmp eq i16 %80, 18761
  br i1 %cmp130.not, label %if.end139, label %if.then132

if.then132:                                       ; preds = %land.lhs.true126
  %81 = load ptr, ptr %name.addr, align 8
  %82 = load ptr, ptr %tif, align 8
  %tif_header133 = getelementptr inbounds %struct.tiff, ptr %82, i64 0, i32 7
  %83 = load i16, ptr %tif_header133, align 8
  %conv135 = zext i16 %83 to i32
  %conv138 = zext i16 %83 to i32
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %81, ptr noundef nonnull @.str.4, i32 noundef %conv135, i32 noundef %conv138) #4
  br label %bad

if.end139:                                        ; preds = %land.lhs.true126, %if.end120
  %84 = load ptr, ptr %tif, align 8
  %tif_header140 = getelementptr inbounds %struct.tiff, ptr %84, i64 0, i32 7
  %85 = load i16, ptr %tif_header140, align 8
  %conv142 = zext i16 %85 to i32
  %86 = load i32, ptr %bigendian, align 4
  call void @TIFFInitOrder(ptr noundef %84, i32 noundef %conv142, i32 noundef %86)
  %tif_flags143 = getelementptr inbounds %struct.tiff, ptr %84, i64 0, i32 3
  %87 = load i64, ptr %tif_flags143, align 8
  %and144 = and i64 %87, 128
  %tobool145.not = icmp eq i64 %and144, 0
  br i1 %tobool145.not, label %if.end151, label %if.then146

if.then146:                                       ; preds = %if.end139
  %88 = load ptr, ptr %tif, align 8
  %tiff_version148 = getelementptr inbounds %struct.tiff, ptr %88, i64 0, i32 7, i32 1
  call void @TIFFSwabShort(ptr noundef nonnull %tiff_version148) #4
  %tiff_diroff150 = getelementptr inbounds %struct.tiff, ptr %88, i64 0, i32 7, i32 2
  call void @TIFFSwabLong(ptr noundef nonnull %tiff_diroff150) #4
  br label %if.end151

if.end151:                                        ; preds = %if.then146, %if.end139
  %89 = load ptr, ptr %tif, align 8
  %tiff_version153 = getelementptr inbounds %struct.tiff, ptr %89, i64 0, i32 7, i32 1
  %90 = load i16, ptr %tiff_version153, align 2
  %cmp155.not = icmp eq i16 %90, 42
  br i1 %cmp155.not, label %if.end164, label %if.then157

if.then157:                                       ; preds = %if.end151
  %91 = load ptr, ptr %name.addr, align 8
  %92 = load ptr, ptr %tif, align 8
  %tiff_version159 = getelementptr inbounds %struct.tiff, ptr %92, i64 0, i32 7, i32 1
  %93 = load i16, ptr %tiff_version159, align 2
  %conv160 = zext i16 %93 to i32
  %conv163 = zext i16 %93 to i32
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %91, ptr noundef nonnull @.str.5, i32 noundef %conv160, i32 noundef %conv163) #4
  br label %bad

if.end164:                                        ; preds = %if.end151
  %94 = load ptr, ptr %tif, align 8
  %tif_flags165 = getelementptr inbounds %struct.tiff, ptr %94, i64 0, i32 3
  %95 = load i64, ptr %tif_flags165, align 8
  %or166 = or i64 %95, 512
  store i64 %or166, ptr %tif_flags165, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %94, i64 0, i32 40
  store ptr null, ptr %tif_rawdata, align 8
  %96 = load ptr, ptr %tif, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %96, i64 0, i32 42
  store ptr null, ptr %tif_rawcp, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %96, i64 0, i32 41
  store i64 0, ptr %tif_rawdatasize, align 8
  %97 = load ptr, ptr %mode.addr, align 8
  %98 = load i8, ptr %97, align 1
  %conv168 = sext i8 %98 to i32
  switch i32 %conv168, label %bad [
    i32 114, label %sw.bb169
    i32 97, label %sw.bb190
  ]

sw.bb169:                                         ; preds = %if.end164
  %99 = load ptr, ptr %tif, align 8
  %tiff_diroff171 = getelementptr inbounds %struct.tiff, ptr %99, i64 0, i32 7, i32 2
  %100 = load i64, ptr %tiff_diroff171, align 8
  %tif_nextdiroff = getelementptr inbounds %struct.tiff, ptr %99, i64 0, i32 5
  store i64 %100, ptr %tif_nextdiroff, align 8
  %tif_flags172 = getelementptr inbounds %struct.tiff, ptr %99, i64 0, i32 3
  %101 = load i64, ptr %tif_flags172, align 8
  %and173 = and i64 %101, 2048
  %tobool174.not = icmp eq i64 %and173, 0
  br i1 %tobool174.not, label %if.end183, label %land.lhs.true175

land.lhs.true175:                                 ; preds = %sw.bb169
  %102 = load ptr, ptr %tif, align 8
  %tif_mapproc176 = getelementptr inbounds %struct.tiff, ptr %102, i64 0, i32 46
  %103 = load ptr, ptr %tif_mapproc176, align 8
  %tif_clientdata177 = getelementptr inbounds %struct.tiff, ptr %102, i64 0, i32 48
  %104 = load ptr, ptr %tif_clientdata177, align 8
  %tif_base = getelementptr inbounds %struct.tiff, ptr %102, i64 0, i32 44
  %tif_size = getelementptr inbounds %struct.tiff, ptr %102, i64 0, i32 45
  %call178 = call i32 %103(ptr noundef %104, ptr noundef nonnull %tif_base, ptr noundef nonnull %tif_size) #4
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %if.then180, label %if.end183

if.then180:                                       ; preds = %land.lhs.true175
  %105 = load ptr, ptr %tif, align 8
  %tif_flags181 = getelementptr inbounds %struct.tiff, ptr %105, i64 0, i32 3
  %106 = load i64, ptr %tif_flags181, align 8
  %and182 = and i64 %106, -2049
  store i64 %and182, ptr %tif_flags181, align 8
  br label %if.end183

if.end183:                                        ; preds = %if.then180, %land.lhs.true175, %sw.bb169
  %107 = load ptr, ptr %tif, align 8
  %call184 = call i32 @TIFFReadDirectory(ptr noundef %107) #4
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %bad, label %if.then186

if.then186:                                       ; preds = %if.end183
  %108 = load ptr, ptr %tif, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %108, i64 0, i32 43
  store i64 -1, ptr %tif_rawcc, align 8
  %tif_flags187 = getelementptr inbounds %struct.tiff, ptr %108, i64 0, i32 3
  %109 = load i64, ptr %tif_flags187, align 8
  %or188 = or i64 %109, 16
  store i64 %or188, ptr %tif_flags187, align 8
  %110 = load ptr, ptr %tif, align 8
  store ptr %110, ptr %retval, align 8
  br label %return

sw.bb190:                                         ; preds = %if.end164
  %111 = load ptr, ptr %tif, align 8
  %call191 = call i32 @TIFFDefaultDirectory(ptr noundef %111) #4
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %bad, label %if.end194

if.end194:                                        ; preds = %sw.bb190
  %112 = load ptr, ptr %tif, align 8
  store ptr %112, ptr %retval, align 8
  br label %return

bad:                                              ; preds = %if.end164, %if.end183, %sw.bb190, %if.end112, %if.then157, %if.then132, %if.then111, %if.then85
  %113 = load ptr, ptr %tif, align 8
  %tif_mode196 = getelementptr inbounds %struct.tiff, ptr %113, i64 0, i32 2
  store i32 0, ptr %tif_mode196, align 4
  call void @TIFFClose(ptr noundef %113) #4
  store ptr null, ptr %retval, align 8
  br label %return

bad2:                                             ; preds = %entry, %if.then5
  %114 = load ptr, ptr %closeproc.addr, align 8
  %115 = load ptr, ptr %clientdata.addr, align 8
  %call197 = call i32 %114(ptr noundef %115) #4
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %bad2, %bad, %if.end194, %if.then186, %if.end119
  %116 = load ptr, ptr %retval, align 8
  ret ptr %116
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

; Function Attrs: nounwind ssp uwtable
define internal void @TIFFInitOrder(ptr noundef %tif, i32 noundef %magic, i32 noundef %bigendian) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %bigendian.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %bigendian, ptr %bigendian.addr, align 4
  %tif_typemask = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 10
  store ptr @typemask, ptr %tif_typemask, align 8
  %cmp = icmp eq i32 %magic, 19789
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 9
  store ptr @bigTypeshift, ptr %tif_typeshift, align 8
  %1 = load i32, ptr %bigendian.addr, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then1, label %if.end8

if.then1:                                         ; preds = %if.then
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %2, i64 0, i32 3
  %3 = load i64, ptr %tif_flags, align 8
  %or = or i64 %3, 128
  store i64 %or, ptr %tif_flags, align 8
  br label %if.end8

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_typeshift2 = getelementptr inbounds %struct.tiff, ptr %4, i64 0, i32 9
  store ptr @litTypeshift, ptr %tif_typeshift2, align 8
  %5 = load i32, ptr %bigendian.addr, align 4
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end8, label %if.then4

if.then4:                                         ; preds = %if.else
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_flags5 = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 3
  %7 = load i64, ptr %tif_flags5, align 8
  %or6 = or i64 %7, 128
  store i64 %or6, ptr %tif_flags5, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4, %if.then, %if.then1
  ret void
}

declare i32 @TIFFDefaultDirectory(ptr noundef) #1

declare void @TIFFSwabLong(ptr noundef) #1

declare i32 @TIFFReadDirectory(ptr noundef) #1

declare void @TIFFClose(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define ptr @TIFFFileName(ptr noundef %tif) #0 {
entry:
  %0 = load ptr, ptr %tif, align 8
  ret ptr %0
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFFileno(ptr noundef %tif) #0 {
entry:
  %tif_fd = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 1
  %0 = load i32, ptr %tif_fd, align 8
  ret i32 %0
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFGetMode(ptr noundef %tif) #0 {
entry:
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 2
  %0 = load i32, ptr %tif_mode, align 4
  ret i32 %0
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFIsTiled(ptr noundef %tif) #0 {
entry:
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 3
  %0 = load i64, ptr %tif_flags, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 10
  %3 = and i32 %2, 1
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define i64 @TIFFCurrentRow(ptr noundef %tif) #0 {
entry:
  %tif_row = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 11
  %0 = load i64, ptr %tif_row, align 8
  ret i64 %0
}

; Function Attrs: nounwind ssp uwtable
define zeroext i16 @TIFFCurrentDirectory(ptr noundef %tif) #0 {
entry:
  %tif_curdir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 12
  %0 = load i16, ptr %tif_curdir, align 8
  ret i16 %0
}

; Function Attrs: nounwind ssp uwtable
define i64 @TIFFCurrentStrip(ptr noundef %tif) #0 {
entry:
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 13
  %0 = load i64, ptr %tif_curstrip, align 8
  ret i64 %0
}

; Function Attrs: nounwind ssp uwtable
define i64 @TIFFCurrentTile(ptr noundef %tif) #0 {
entry:
  %tif_curtile = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 19
  %0 = load i64, ptr %tif_curtile, align 8
  ret i64 %0
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFIsByteSwapped(ptr noundef %tif) #0 {
entry:
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 3
  %0 = load i64, ptr %tif_flags, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 7
  %3 = and i32 %2, 1
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFIsUpSampled(ptr noundef %tif) #0 {
entry:
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 3
  %0 = load i64, ptr %tif_flags, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 14
  %3 = and i32 %2, 1
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFIsMSB2LSB(ptr noundef %tif) #0 {
entry:
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 3
  %0 = load i64, ptr %tif_flags, align 8
  %1 = trunc i64 %0 to i32
  %2 = and i32 %1, 1
  ret i32 %2
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
