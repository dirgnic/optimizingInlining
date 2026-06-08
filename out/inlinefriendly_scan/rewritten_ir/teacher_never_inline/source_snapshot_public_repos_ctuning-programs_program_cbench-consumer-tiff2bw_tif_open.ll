; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_never_inline/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-tiff2bw_tif_open.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2bw/tif_open.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

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
  %2 = trunc i64 %call1 to i32
  %conv = add i32 %2, 881
  %call3 = call ptr @_TIFFmalloc(i32 noundef %conv) #4
  store ptr %call3, ptr %tif, align 8
  %cmp4 = icmp eq ptr %call3, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %3 = load ptr, ptr %name.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFClientOpen.module, ptr noundef nonnull @.str.1, ptr noundef %3) #4
  br label %bad2

if.end7:                                          ; preds = %if.end
  %4 = load ptr, ptr %tif, align 8
  call void @_TIFFmemset(ptr noundef %4, i32 noundef 0, i32 noundef 880) #4
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 880
  store ptr %add.ptr, ptr %4, align 8
  %5 = load ptr, ptr %name.addr, align 8
  %6 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr, i1 false, i1 true, i1 false)
  %call10 = call ptr @__strcpy_chk(ptr noundef nonnull %add.ptr, ptr noundef %5, i64 noundef %6) #4
  %7 = load i32, ptr %m, align 4
  %and = and i32 %7, -1537
  %8 = load ptr, ptr %tif, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 2
  store i32 %and, ptr %tif_mode, align 4
  %tif_curdir = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 12
  store i16 -1, ptr %tif_curdir, align 4
  %tif_curoff = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 14
  store i32 0, ptr %tif_curoff, align 4
  %9 = load ptr, ptr %tif, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 13
  store i32 -1, ptr %tif_curstrip, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 11
  store i32 -1, ptr %tif_row, align 8
  %10 = load ptr, ptr %clientdata.addr, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 48
  store ptr %10, ptr %tif_clientdata, align 8
  %11 = load ptr, ptr %readproc.addr, align 8
  %12 = load ptr, ptr %tif, align 8
  %tif_readproc = getelementptr inbounds %struct.tiff, ptr %12, i64 0, i32 49
  store ptr %11, ptr %tif_readproc, align 8
  %13 = load ptr, ptr %writeproc.addr, align 8
  %tif_writeproc = getelementptr inbounds %struct.tiff, ptr %12, i64 0, i32 50
  store ptr %13, ptr %tif_writeproc, align 8
  %14 = load ptr, ptr %seekproc.addr, align 8
  %15 = load ptr, ptr %tif, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %15, i64 0, i32 51
  store ptr %14, ptr %tif_seekproc, align 8
  %16 = load ptr, ptr %closeproc.addr, align 8
  %tif_closeproc = getelementptr inbounds %struct.tiff, ptr %15, i64 0, i32 52
  store ptr %16, ptr %tif_closeproc, align 8
  %17 = load ptr, ptr %sizeproc.addr, align 8
  %18 = load ptr, ptr %tif, align 8
  %tif_sizeproc = getelementptr inbounds %struct.tiff, ptr %18, i64 0, i32 53
  store ptr %17, ptr %tif_sizeproc, align 8
  %19 = load ptr, ptr %mapproc.addr, align 8
  %tif_mapproc = getelementptr inbounds %struct.tiff, ptr %18, i64 0, i32 46
  store ptr %19, ptr %tif_mapproc, align 8
  %20 = load ptr, ptr %unmapproc.addr, align 8
  %21 = load ptr, ptr %tif, align 8
  %tif_unmapproc = getelementptr inbounds %struct.tiff, ptr %21, i64 0, i32 47
  store ptr %20, ptr %tif_unmapproc, align 8
  call void @_TIFFSetDefaultCompressionState(ptr noundef %21) #4
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %21, i64 0, i32 3
  store i32 1, ptr %tif_flags, align 8
  %22 = load i32, ptr %m, align 4
  %cmp11 = icmp eq i32 %22, 0
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end7
  %23 = load ptr, ptr %tif, align 8
  %tif_flags14 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 3
  %24 = load i32, ptr %tif_flags14, align 8
  %or = or i32 %24, 34816
  store i32 %or, ptr %tif_flags14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end7
  store i32 0, ptr %bigendian, align 4
  %25 = load ptr, ptr %mode.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end15
  %storemerge = phi ptr [ %25, %if.end15 ], [ %incdec.ptr, %for.inc ]
  store ptr %storemerge, ptr %cp, align 8
  %26 = load i8, ptr %storemerge, align 1
  %tobool.not = icmp eq i8 %26, 0
  br i1 %tobool.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %27 = load ptr, ptr %cp, align 8
  %28 = load i8, ptr %27, align 1
  %conv19 = sext i8 %28 to i32
  switch i32 %conv19, label %for.inc [
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
  %29 = load i32, ptr %m, align 4
  %and20 = and i32 %29, 512
  %tobool21.not = icmp ne i32 %and20, 0
  %30 = load i32, ptr %bigendian, align 4
  %tobool22.not = icmp eq i32 %30, 0
  %or.cond = select i1 %tobool21.not, i1 %tobool22.not, i1 false
  br i1 %or.cond, label %if.then23, label %for.inc

if.then23:                                        ; preds = %sw.bb
  %31 = load ptr, ptr %tif, align 8
  %tif_flags24 = getelementptr inbounds %struct.tiff, ptr %31, i64 0, i32 3
  %32 = load i32, ptr %tif_flags24, align 8
  %or25 = or i32 %32, 128
  store i32 %or25, ptr %tif_flags24, align 8
  br label %for.inc

sw.bb27:                                          ; preds = %for.body
  %33 = load i32, ptr %m, align 4
  %and28 = and i32 %33, 512
  %tobool29.not = icmp eq i32 %and28, 0
  %34 = load i32, ptr %bigendian, align 4
  %tobool31.not = icmp eq i32 %34, 0
  %or.cond1 = select i1 %tobool29.not, i1 true, i1 %tobool31.not
  br i1 %or.cond1, label %for.inc, label %if.then32

if.then32:                                        ; preds = %sw.bb27
  %35 = load ptr, ptr %tif, align 8
  %tif_flags33 = getelementptr inbounds %struct.tiff, ptr %35, i64 0, i32 3
  %36 = load i32, ptr %tif_flags33, align 8
  %or34 = or i32 %36, 128
  store i32 %or34, ptr %tif_flags33, align 8
  br label %for.inc

sw.bb36:                                          ; preds = %for.body
  %37 = load ptr, ptr %tif, align 8
  %tif_flags37 = getelementptr inbounds %struct.tiff, ptr %37, i64 0, i32 3
  %38 = load i32, ptr %tif_flags37, align 8
  %and38 = and i32 %38, -4
  %or39 = or i32 %and38, 1
  %tif_flags40 = getelementptr inbounds %struct.tiff, ptr %37, i64 0, i32 3
  store i32 %or39, ptr %tif_flags40, align 8
  br label %for.inc

sw.bb41:                                          ; preds = %for.body
  %39 = load ptr, ptr %tif, align 8
  %tif_flags42 = getelementptr inbounds %struct.tiff, ptr %39, i64 0, i32 3
  %40 = load i32, ptr %tif_flags42, align 8
  %and43 = and i32 %40, -4
  %or44 = or i32 %and43, 2
  %tif_flags45 = getelementptr inbounds %struct.tiff, ptr %39, i64 0, i32 3
  store i32 %or44, ptr %tif_flags45, align 8
  br label %for.inc

sw.bb46:                                          ; preds = %for.body
  %41 = load ptr, ptr %tif, align 8
  %tif_flags47 = getelementptr inbounds %struct.tiff, ptr %41, i64 0, i32 3
  %42 = load i32, ptr %tif_flags47, align 8
  %and48 = and i32 %42, -4
  %or49 = or i32 %and48, 1
  %tif_flags50 = getelementptr inbounds %struct.tiff, ptr %41, i64 0, i32 3
  store i32 %or49, ptr %tif_flags50, align 8
  br label %for.inc

sw.bb51:                                          ; preds = %for.body
  %43 = load i32, ptr %m, align 4
  %cmp52 = icmp eq i32 %43, 0
  br i1 %cmp52, label %if.then54, label %for.inc

if.then54:                                        ; preds = %sw.bb51
  %44 = load ptr, ptr %tif, align 8
  %tif_flags55 = getelementptr inbounds %struct.tiff, ptr %44, i64 0, i32 3
  %45 = load i32, ptr %tif_flags55, align 8
  %or56 = or i32 %45, 2048
  store i32 %or56, ptr %tif_flags55, align 8
  br label %for.inc

sw.bb58:                                          ; preds = %for.body
  %46 = load i32, ptr %m, align 4
  %cmp59 = icmp eq i32 %46, 0
  br i1 %cmp59, label %if.then61, label %for.inc

if.then61:                                        ; preds = %sw.bb58
  %47 = load ptr, ptr %tif, align 8
  %tif_flags62 = getelementptr inbounds %struct.tiff, ptr %47, i64 0, i32 3
  %48 = load i32, ptr %tif_flags62, align 8
  %and63 = and i32 %48, -2049
  store i32 %and63, ptr %tif_flags62, align 8
  br label %for.inc

sw.bb65:                                          ; preds = %for.body
  %49 = load i32, ptr %m, align 4
  %cmp66 = icmp eq i32 %49, 0
  br i1 %cmp66, label %if.then68, label %for.inc

if.then68:                                        ; preds = %sw.bb65
  %50 = load ptr, ptr %tif, align 8
  %tif_flags69 = getelementptr inbounds %struct.tiff, ptr %50, i64 0, i32 3
  %51 = load i32, ptr %tif_flags69, align 8
  %or70 = or i32 %51, 32768
  store i32 %or70, ptr %tif_flags69, align 8
  br label %for.inc

sw.bb72:                                          ; preds = %for.body
  %52 = load i32, ptr %m, align 4
  %cmp73 = icmp eq i32 %52, 0
  br i1 %cmp73, label %if.then75, label %for.inc

if.then75:                                        ; preds = %sw.bb72
  %53 = load ptr, ptr %tif, align 8
  %tif_flags76 = getelementptr inbounds %struct.tiff, ptr %53, i64 0, i32 3
  %54 = load i32, ptr %tif_flags76, align 8
  %and77 = and i32 %54, -32769
  store i32 %and77, ptr %tif_flags76, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %sw.bb36, %sw.bb41, %sw.bb46, %if.then23, %sw.bb, %if.then32, %sw.bb27, %if.then54, %sw.bb51, %if.then61, %sw.bb58, %if.then68, %sw.bb65, %if.then75, %sw.bb72
  %55 = load ptr, ptr %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %55, i64 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %56 = load ptr, ptr %tif, align 8
  %tif_readproc79 = getelementptr inbounds %struct.tiff, ptr %56, i64 0, i32 49
  %57 = load ptr, ptr %tif_readproc79, align 8
  %tif_clientdata80 = getelementptr inbounds %struct.tiff, ptr %56, i64 0, i32 48
  %58 = load ptr, ptr %tif_clientdata80, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %56, i64 0, i32 7
  %call81 = call i32 %57(ptr noundef %58, ptr noundef nonnull %tif_header, i32 noundef 8) #4
  %cmp82 = icmp eq i32 %call81, 8
  br i1 %cmp82, label %if.end123, label %if.then84

if.then84:                                        ; preds = %for.end
  %59 = load ptr, ptr %tif, align 8
  %tif_mode85 = getelementptr inbounds %struct.tiff, ptr %59, i64 0, i32 2
  %60 = load i32, ptr %tif_mode85, align 4
  %cmp86 = icmp eq i32 %60, 0
  br i1 %cmp86, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.then84
  %61 = load ptr, ptr %name.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %61, ptr noundef nonnull @.str.2) #4
  br label %bad

if.end89:                                         ; preds = %if.then84
  %62 = load ptr, ptr %tif, align 8
  %tif_flags90 = getelementptr inbounds %struct.tiff, ptr %62, i64 0, i32 3
  %63 = load i32, ptr %tif_flags90, align 8
  %and91 = and i32 %63, 128
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end89
  %64 = load i32, ptr %bigendian, align 4
  %tobool93.not = icmp eq i32 %64, 0
  %cond = select i1 %tobool93.not, i16 19789, i16 18761
  br label %cond.end

cond.false:                                       ; preds = %if.end89
  %65 = load i32, ptr %bigendian, align 4
  %tobool94.not = icmp eq i32 %65, 0
  %cond95 = select i1 %tobool94.not, i16 18761, i16 19789
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond96 = phi i16 [ %cond, %cond.true ], [ %cond95, %cond.false ]
  %66 = load ptr, ptr %tif, align 8
  %tif_header98 = getelementptr inbounds %struct.tiff, ptr %66, i64 0, i32 7
  store i16 %cond96, ptr %tif_header98, align 8
  %tiff_version = getelementptr inbounds %struct.tiff, ptr %66, i64 0, i32 7, i32 1
  store i16 42, ptr %tiff_version, align 2
  %tif_flags100 = getelementptr inbounds %struct.tiff, ptr %66, i64 0, i32 3
  %67 = load i32, ptr %tif_flags100, align 8
  %and101 = and i32 %67, 128
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end106, label %if.then103

if.then103:                                       ; preds = %cond.end
  %68 = load ptr, ptr %tif, align 8
  %tiff_version105 = getelementptr inbounds %struct.tiff, ptr %68, i64 0, i32 7, i32 1
  call void @TIFFSwabShort(ptr noundef nonnull %tiff_version105) #4
  br label %if.end106

if.end106:                                        ; preds = %if.then103, %cond.end
  %69 = load ptr, ptr %tif, align 8
  %tiff_diroff = getelementptr inbounds %struct.tiff, ptr %69, i64 0, i32 7, i32 2
  store i32 0, ptr %tiff_diroff, align 4
  %tif_writeproc108 = getelementptr inbounds %struct.tiff, ptr %69, i64 0, i32 50
  %70 = load ptr, ptr %tif_writeproc108, align 8
  %tif_clientdata109 = getelementptr inbounds %struct.tiff, ptr %69, i64 0, i32 48
  %71 = load ptr, ptr %tif_clientdata109, align 8
  %72 = load ptr, ptr %tif, align 8
  %tif_header110 = getelementptr inbounds %struct.tiff, ptr %72, i64 0, i32 7
  %call111 = call i32 %70(ptr noundef %71, ptr noundef nonnull %tif_header110, i32 noundef 8) #4
  %cmp112 = icmp eq i32 %call111, 8
  br i1 %cmp112, label %if.end115, label %if.then114

if.then114:                                       ; preds = %if.end106
  %73 = load ptr, ptr %name.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %73, ptr noundef nonnull @.str.3) #4
  br label %bad

if.end115:                                        ; preds = %if.end106
  %74 = load ptr, ptr %tif, align 8
  %tif_header116 = getelementptr inbounds %struct.tiff, ptr %74, i64 0, i32 7
  %75 = load i16, ptr %tif_header116, align 8
  %conv118 = zext i16 %75 to i32
  %76 = load i32, ptr %bigendian, align 4
  call void @TIFFInitOrder(ptr noundef %74, i32 noundef %conv118, i32 noundef %76)
  %call119 = call i32 @TIFFDefaultDirectory(ptr noundef %74) #4
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %bad, label %if.end122

if.end122:                                        ; preds = %if.end115
  %77 = load ptr, ptr %tif, align 8
  %tif_diroff = getelementptr inbounds %struct.tiff, ptr %77, i64 0, i32 4
  store i32 0, ptr %tif_diroff, align 4
  store ptr %77, ptr %retval, align 8
  br label %return

if.end123:                                        ; preds = %for.end
  %78 = load ptr, ptr %tif, align 8
  %tif_header124 = getelementptr inbounds %struct.tiff, ptr %78, i64 0, i32 7
  %79 = load i16, ptr %tif_header124, align 8
  %cmp127.not = icmp eq i16 %79, 19789
  br i1 %cmp127.not, label %if.end142, label %land.lhs.true129

land.lhs.true129:                                 ; preds = %if.end123
  %80 = load ptr, ptr %tif, align 8
  %tif_header130 = getelementptr inbounds %struct.tiff, ptr %80, i64 0, i32 7
  %81 = load i16, ptr %tif_header130, align 8
  %cmp133.not = icmp eq i16 %81, 18761
  br i1 %cmp133.not, label %if.end142, label %if.then135

if.then135:                                       ; preds = %land.lhs.true129
  %82 = load ptr, ptr %name.addr, align 8
  %83 = load ptr, ptr %tif, align 8
  %tif_header136 = getelementptr inbounds %struct.tiff, ptr %83, i64 0, i32 7
  %84 = load i16, ptr %tif_header136, align 8
  %conv138 = zext i16 %84 to i32
  %conv141 = zext i16 %84 to i32
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %82, ptr noundef nonnull @.str.4, i32 noundef %conv138, i32 noundef %conv141) #4
  br label %bad

if.end142:                                        ; preds = %land.lhs.true129, %if.end123
  %85 = load ptr, ptr %tif, align 8
  %tif_header143 = getelementptr inbounds %struct.tiff, ptr %85, i64 0, i32 7
  %86 = load i16, ptr %tif_header143, align 8
  %conv145 = zext i16 %86 to i32
  %87 = load i32, ptr %bigendian, align 4
  call void @TIFFInitOrder(ptr noundef %85, i32 noundef %conv145, i32 noundef %87)
  %tif_flags146 = getelementptr inbounds %struct.tiff, ptr %85, i64 0, i32 3
  %88 = load i32, ptr %tif_flags146, align 8
  %and147 = and i32 %88, 128
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %if.end154, label %if.then149

if.then149:                                       ; preds = %if.end142
  %89 = load ptr, ptr %tif, align 8
  %tiff_version151 = getelementptr inbounds %struct.tiff, ptr %89, i64 0, i32 7, i32 1
  call void @TIFFSwabShort(ptr noundef nonnull %tiff_version151) #4
  %tiff_diroff153 = getelementptr inbounds %struct.tiff, ptr %89, i64 0, i32 7, i32 2
  call void @TIFFSwabLong(ptr noundef nonnull %tiff_diroff153) #4
  br label %if.end154

if.end154:                                        ; preds = %if.then149, %if.end142
  %90 = load ptr, ptr %tif, align 8
  %tiff_version156 = getelementptr inbounds %struct.tiff, ptr %90, i64 0, i32 7, i32 1
  %91 = load i16, ptr %tiff_version156, align 2
  %cmp158.not = icmp eq i16 %91, 42
  br i1 %cmp158.not, label %if.end167, label %if.then160

if.then160:                                       ; preds = %if.end154
  %92 = load ptr, ptr %name.addr, align 8
  %93 = load ptr, ptr %tif, align 8
  %tiff_version162 = getelementptr inbounds %struct.tiff, ptr %93, i64 0, i32 7, i32 1
  %94 = load i16, ptr %tiff_version162, align 2
  %conv163 = zext i16 %94 to i32
  %conv166 = zext i16 %94 to i32
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %92, ptr noundef nonnull @.str.5, i32 noundef %conv163, i32 noundef %conv166) #4
  br label %bad

if.end167:                                        ; preds = %if.end154
  %95 = load ptr, ptr %tif, align 8
  %tif_flags168 = getelementptr inbounds %struct.tiff, ptr %95, i64 0, i32 3
  %96 = load i32, ptr %tif_flags168, align 8
  %or169 = or i32 %96, 512
  store i32 %or169, ptr %tif_flags168, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %95, i64 0, i32 40
  store ptr null, ptr %tif_rawdata, align 8
  %97 = load ptr, ptr %tif, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %97, i64 0, i32 42
  store ptr null, ptr %tif_rawcp, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %97, i64 0, i32 41
  store i32 0, ptr %tif_rawdatasize, align 8
  %98 = load ptr, ptr %mode.addr, align 8
  %99 = load i8, ptr %98, align 1
  %conv171 = sext i8 %99 to i32
  switch i32 %conv171, label %bad [
    i32 114, label %sw.bb172
    i32 97, label %sw.bb193
  ]

sw.bb172:                                         ; preds = %if.end167
  %100 = load ptr, ptr %tif, align 8
  %tiff_diroff174 = getelementptr inbounds %struct.tiff, ptr %100, i64 0, i32 7, i32 2
  %101 = load i32, ptr %tiff_diroff174, align 4
  %tif_nextdiroff = getelementptr inbounds %struct.tiff, ptr %100, i64 0, i32 5
  store i32 %101, ptr %tif_nextdiroff, align 8
  %tif_flags175 = getelementptr inbounds %struct.tiff, ptr %100, i64 0, i32 3
  %102 = load i32, ptr %tif_flags175, align 8
  %and176 = and i32 %102, 2048
  %tobool177.not = icmp eq i32 %and176, 0
  br i1 %tobool177.not, label %if.end186, label %land.lhs.true178

land.lhs.true178:                                 ; preds = %sw.bb172
  %103 = load ptr, ptr %tif, align 8
  %tif_mapproc179 = getelementptr inbounds %struct.tiff, ptr %103, i64 0, i32 46
  %104 = load ptr, ptr %tif_mapproc179, align 8
  %tif_clientdata180 = getelementptr inbounds %struct.tiff, ptr %103, i64 0, i32 48
  %105 = load ptr, ptr %tif_clientdata180, align 8
  %tif_base = getelementptr inbounds %struct.tiff, ptr %103, i64 0, i32 44
  %tif_size = getelementptr inbounds %struct.tiff, ptr %103, i64 0, i32 45
  %call181 = call i32 %104(ptr noundef %105, ptr noundef nonnull %tif_base, ptr noundef nonnull %tif_size) #4
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.then183, label %if.end186

if.then183:                                       ; preds = %land.lhs.true178
  %106 = load ptr, ptr %tif, align 8
  %tif_flags184 = getelementptr inbounds %struct.tiff, ptr %106, i64 0, i32 3
  %107 = load i32, ptr %tif_flags184, align 8
  %and185 = and i32 %107, -2049
  store i32 %and185, ptr %tif_flags184, align 8
  br label %if.end186

if.end186:                                        ; preds = %if.then183, %land.lhs.true178, %sw.bb172
  %108 = load ptr, ptr %tif, align 8
  %call187 = call i32 @TIFFReadDirectory(ptr noundef %108) #4
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %bad, label %if.then189

if.then189:                                       ; preds = %if.end186
  %109 = load ptr, ptr %tif, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %109, i64 0, i32 43
  store i32 -1, ptr %tif_rawcc, align 8
  %tif_flags190 = getelementptr inbounds %struct.tiff, ptr %109, i64 0, i32 3
  %110 = load i32, ptr %tif_flags190, align 8
  %or191 = or i32 %110, 16
  store i32 %or191, ptr %tif_flags190, align 8
  %111 = load ptr, ptr %tif, align 8
  store ptr %111, ptr %retval, align 8
  br label %return

sw.bb193:                                         ; preds = %if.end167
  %112 = load ptr, ptr %tif, align 8
  %call194 = call i32 @TIFFDefaultDirectory(ptr noundef %112) #4
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %bad, label %if.end197

if.end197:                                        ; preds = %sw.bb193
  %113 = load ptr, ptr %tif, align 8
  store ptr %113, ptr %retval, align 8
  br label %return

bad:                                              ; preds = %if.end167, %if.end186, %sw.bb193, %if.end115, %if.then160, %if.then135, %if.then114, %if.then88
  %114 = load ptr, ptr %tif, align 8
  %tif_mode199 = getelementptr inbounds %struct.tiff, ptr %114, i64 0, i32 2
  store i32 0, ptr %tif_mode199, align 4
  call void @TIFFClose(ptr noundef %114) #4
  store ptr null, ptr %retval, align 8
  br label %return

bad2:                                             ; preds = %entry, %if.then6
  %115 = load ptr, ptr %closeproc.addr, align 8
  %116 = load ptr, ptr %clientdata.addr, align 8
  %call200 = call i32 %115(ptr noundef %116) #4
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %bad2, %bad, %if.end197, %if.then189, %if.end122
  %117 = load ptr, ptr %retval, align 8
  ret ptr %117
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
  %3 = load i32, ptr %tif_flags, align 8
  %or = or i32 %3, 128
  store i32 %or, ptr %tif_flags, align 8
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
  %7 = load i32, ptr %tif_flags5, align 8
  %or6 = or i32 %7, 128
  store i32 %or6, ptr %tif_flags5, align 8
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
  %0 = load i32, ptr %tif_flags, align 8
  %and = lshr i32 %0, 10
  %and.lobit = and i32 %and, 1
  ret i32 %and.lobit
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFCurrentRow(ptr noundef %tif) #0 {
entry:
  %tif_row = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 11
  %0 = load i32, ptr %tif_row, align 8
  ret i32 %0
}

; Function Attrs: nounwind ssp uwtable
define zeroext i16 @TIFFCurrentDirectory(ptr noundef %tif) #0 {
entry:
  %tif_curdir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 12
  %0 = load i16, ptr %tif_curdir, align 4
  ret i16 %0
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFCurrentStrip(ptr noundef %tif) #0 {
entry:
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 13
  %0 = load i32, ptr %tif_curstrip, align 8
  ret i32 %0
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFCurrentTile(ptr noundef %tif) #0 {
entry:
  %tif_curtile = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 19
  %0 = load i32, ptr %tif_curtile, align 8
  ret i32 %0
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFIsByteSwapped(ptr noundef %tif) #0 {
entry:
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 3
  %0 = load i32, ptr %tif_flags, align 8
  %and = lshr i32 %0, 7
  %and.lobit = and i32 %and, 1
  ret i32 %and.lobit
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFIsUpSampled(ptr noundef %tif) #0 {
entry:
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 3
  %0 = load i32, ptr %tif_flags, align 8
  %and = lshr i32 %0, 14
  %and.lobit = and i32 %and, 1
  ret i32 %and.lobit
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFIsMSB2LSB(ptr noundef %tif) #0 {
entry:
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 3
  %0 = load i32, ptr %tif_flags, align 8
  %and = and i32 %0, 1
  ret i32 %and
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
