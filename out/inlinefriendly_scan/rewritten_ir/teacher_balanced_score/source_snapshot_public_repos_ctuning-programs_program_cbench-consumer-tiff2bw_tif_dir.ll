; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_balanced_score/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-tiff2bw_tif_dir.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2bw/tif_dir.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }
%struct.TIFFFieldInfo = type { i32, i16, i16, i32, i16, i8, i8, ptr }

@_TIFFextender = internal global ptr null, align 8
@TIFFUnlinkDirectory.module = internal constant [20 x i8] c"TIFFUnlinkDirectory\00", align 1
@.str = private unnamed_addr constant [43 x i8] c"Can not unlink directory in read-only file\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Directory %d does not exist\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Error writing directory link\00", align 1
@TIFFReassignTagToIgnore.TIFFignoretags = internal global [95 x i32] zeroinitializer, align 4
@TIFFReassignTagToIgnore.tagcount = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"TIFFSetField\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"%s: Unknown %stag %u\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"pseudo-\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"%s: Cannot modify tag \22%s\22 while writing\00", align 1
@.str.8 = private unnamed_addr constant [69 x i8] c"LZW compression no longer supported due to Unisys patent enforcement\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Bad value %ld for \22%s\22 tag ignored\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Nonstandard tile width %d, convert file\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"Nonstandard tile length %d, convert file\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Sorry, cannot nest SubIFDs\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"%s: Invalid %stag \22%s\22 (not supported by codec)\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"pseduo-\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"%d: Bad value for \22%s\22\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"%ld: Bad value for \22%s\22\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"%f: Bad value for \22%s\22\00", align 1
@.str.18 = private unnamed_addr constant [57 x i8] c"%s: Invalid InkNames value; expecting %d names, found %d\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"TIFFGetField\00", align 1
@TIFFAdvanceDirectory.module = internal constant [21 x i8] c"TIFFAdvanceDirectory\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"%s: Error fetching directory count\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"%s: Error fetching directory link\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @_TIFFsetByteArray(ptr noundef %vpp, ptr noundef %vp, i64 noundef %n) #0 {
entry:
  %vpp.addr = alloca ptr, align 8
  %vp.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %vpp, ptr %vpp.addr, align 8
  store ptr %vp, ptr %vp.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %vpp, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %vpp.addr, align 8
  %2 = load ptr, ptr %1, align 8
  call void @_TIFFfree(ptr noundef %2) #4
  store ptr null, ptr %1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %vp.addr, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %4 = load i64, ptr %n.addr, align 8
  %conv = trunc i64 %4 to i32
  %call = call ptr @_TIFFmalloc(i32 noundef %conv) #4
  %5 = load ptr, ptr %vpp.addr, align 8
  store ptr %call, ptr %5, align 8
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %vpp.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %vp.addr, align 8
  %9 = load i64, ptr %n.addr, align 8
  %conv4 = trunc i64 %9 to i32
  call void @_TIFFmemcpy(ptr noundef %7, ptr noundef %8, i32 noundef %conv4) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  ret void
}

declare void @_TIFFfree(ptr noundef) #1

declare ptr @_TIFFmalloc(i32 noundef) #1

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @_TIFFsetString(ptr noundef %cpp, ptr noundef %cp) #0 {
entry:
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %cp) #4
  %add = add i64 %call, 1
  call void @_TIFFsetByteArray(ptr noundef %cpp, ptr noundef %cp, i64 noundef %add)
  ret void
}

declare i64 @strlen(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @_TIFFsetNString(ptr noundef %cpp, ptr noundef %cp, i64 noundef %n) #0 {
entry:
  call void @_TIFFsetByteArray(ptr noundef %cpp, ptr noundef %cp, i64 noundef %n)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_TIFFsetShortArray(ptr noundef %wpp, ptr noundef %wp, i64 noundef %n) #0 {
entry:
  %mul = shl i64 %n, 1
  call void @_TIFFsetByteArray(ptr noundef %wpp, ptr noundef %wp, i64 noundef %mul)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_TIFFsetLongArray(ptr noundef %lpp, ptr noundef %lp, i64 noundef %n) #0 {
entry:
  %mul = shl i64 %n, 2
  call void @_TIFFsetByteArray(ptr noundef %lpp, ptr noundef %lp, i64 noundef %mul)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_TIFFsetFloatArray(ptr noundef %fpp, ptr noundef %fp, i64 noundef %n) #0 {
entry:
  %mul = shl i64 %n, 2
  call void @_TIFFsetByteArray(ptr noundef %fpp, ptr noundef %fp, i64 noundef %mul)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_TIFFsetDoubleArray(ptr noundef %dpp, ptr noundef %dp, i64 noundef %n) #0 {
entry:
  %mul = shl i64 %n, 3
  call void @_TIFFsetByteArray(ptr noundef %dpp, ptr noundef %dp, i64 noundef %mul)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFSetField(ptr noundef %tif, i32 noundef %tag, ...) #0 {
entry:
  %ap = alloca ptr, align 8
  call void @llvm.va_start(ptr nonnull %ap)
  %0 = load ptr, ptr %ap, align 8
  %call = call i32 @TIFFVSetField(ptr noundef %tif, i32 noundef %tag, ptr noundef %0)
  call void @llvm.va_end(ptr %ap)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFVSetField(ptr noundef %tif, i32 noundef %tag, ptr noundef %ap) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %ap.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %tag, ptr %tag.addr, align 4
  store ptr %ap, ptr %ap.addr, align 8
  %call = call i32 @OkToChangeTag(ptr noundef %tif, i32 noundef %tag)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_vsetfield = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 57
  %1 = load ptr, ptr %tif_vsetfield, align 8
  %2 = load i32, ptr %tag.addr, align 4
  %3 = load ptr, ptr %ap.addr, align 8
  %call1 = call i32 %1(ptr noundef %0, i32 noundef %2, ptr noundef %3) #4
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ 0, %entry ]
  ret i32 %cond
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @OkToChangeTag(ptr noundef %tif, i32 noundef %tag) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %fip = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %tag, ptr %tag.addr, align 4
  %call = call ptr @_TIFFFindFieldInfo(ptr noundef %tif, i32 noundef %tag, i32 noundef 0) #4
  store ptr %call, ptr %fip, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = load i32, ptr %tag.addr, align 4
  %cmp = icmp ugt i32 %2, 65535
  %cond = select i1 %cmp, ptr @.str.5, ptr @.str.6
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %1, ptr noundef nonnull %cond, i32 noundef %2) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %tag.addr, align 4
  %cmp1.not = icmp eq i32 %3, 257
  br i1 %cmp1.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %4, i64 0, i32 3
  %5 = load i32, ptr %tif_flags, align 8
  %and = and i32 %5, 64
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end7, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %6 = load ptr, ptr %fip, align 8
  %field_oktochange = getelementptr inbounds %struct.TIFFFieldInfo, ptr %6, i64 0, i32 5
  %7 = load i8, ptr %field_oktochange, align 2
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %land.lhs.true3
  %8 = load ptr, ptr %tif.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %fip, align 8
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %10, i64 0, i32 7
  %11 = load ptr, ptr %field_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7, ptr noundef %9, ptr noundef %11) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %land.lhs.true3, %land.lhs.true, %if.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then5, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFGetField(ptr noundef %tif, i32 noundef %tag, ...) #0 {
entry:
  %ap = alloca ptr, align 8
  call void @llvm.va_start(ptr nonnull %ap)
  %0 = load ptr, ptr %ap, align 8
  %call = call i32 @TIFFVGetField(ptr noundef %tif, i32 noundef %tag, ptr noundef %0)
  call void @llvm.va_end(ptr %ap)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFVGetField(ptr noundef %tif, i32 noundef %tag, ptr noundef %ap) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %ap.addr = alloca ptr, align 8
  %fip = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %tag, ptr %tag.addr, align 4
  store ptr %ap, ptr %ap.addr, align 8
  %call = call ptr @_TIFFFindFieldInfo(ptr noundef %tif, i32 noundef %tag, i32 noundef 0) #4
  store ptr %call, ptr %fip, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load i32, ptr %tag.addr, align 4
  %cmp = icmp ugt i32 %0, 65535
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 6
  %2 = load ptr, ptr %fip, align 8
  %field_bit = getelementptr inbounds %struct.TIFFFieldInfo, ptr %2, i64 0, i32 4
  %3 = load i16, ptr %field_bit, align 4
  %4 = lshr i16 %3, 5
  %idxprom = zext i16 %4 to i64
  %arrayidx = getelementptr inbounds [3 x i64], ptr %tif_dir, i64 0, i64 %idxprom
  %5 = load i64, ptr %arrayidx, align 8
  %6 = load ptr, ptr %fip, align 8
  %field_bit1 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %6, i64 0, i32 4
  %7 = load i16, ptr %field_bit1, align 4
  %8 = and i16 %7, 31
  %sh_prom = zext i16 %8 to i64
  %shl = shl i64 1, %sh_prom
  %and3 = and i64 %5, %shl
  %tobool4.not = icmp eq i64 %and3, 0
  br i1 %tobool4.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_vgetfield = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 58
  %10 = load ptr, ptr %tif_vgetfield, align 8
  %11 = load i32, ptr %tag.addr, align 4
  %12 = load ptr, ptr %ap.addr, align 8
  %call5 = call i32 %10(ptr noundef %9, i32 noundef %11, ptr noundef %12) #4
  br label %cond.end

cond.end:                                         ; preds = %entry, %lor.lhs.false, %cond.true
  %cond = phi i32 [ %call5, %cond.true ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %cond
}

declare ptr @_TIFFFindFieldInfo(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @TIFFFreeDirectory(ptr noundef %tif) #0 {
entry:
  %td = alloca ptr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_colormap = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 28
  %0 = load ptr, ptr %td_colormap, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %td, align 8
  %td_colormap1 = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i64 0, i32 28
  %2 = load ptr, ptr %td_colormap1, align 8
  call void @_TIFFfree(ptr noundef %2) #4
  %td_colormap3 = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i64 0, i32 28
  store ptr null, ptr %td_colormap3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %td, align 8
  %arrayidx6 = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i64 0, i32 28, i64 1
  %4 = load ptr, ptr %arrayidx6, align 8
  %tobool7.not = icmp eq ptr %4, null
  br i1 %tobool7.not, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.end
  %5 = load ptr, ptr %td, align 8
  %arrayidx10 = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i64 0, i32 28, i64 1
  %6 = load ptr, ptr %arrayidx10, align 8
  call void @_TIFFfree(ptr noundef %6) #4
  %arrayidx12 = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i64 0, i32 28, i64 1
  store ptr null, ptr %arrayidx12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end
  %7 = load ptr, ptr %td, align 8
  %arrayidx15 = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i64 0, i32 28, i64 2
  %8 = load ptr, ptr %arrayidx15, align 8
  %tobool16.not = icmp eq ptr %8, null
  br i1 %tobool16.not, label %if.end22, label %if.then17

if.then17:                                        ; preds = %if.end13
  %9 = load ptr, ptr %td, align 8
  %arrayidx19 = getelementptr inbounds %struct.TIFFDirectory, ptr %9, i64 0, i32 28, i64 2
  %10 = load ptr, ptr %arrayidx19, align 8
  call void @_TIFFfree(ptr noundef %10) #4
  %arrayidx21 = getelementptr inbounds %struct.TIFFDirectory, ptr %9, i64 0, i32 28, i64 2
  store ptr null, ptr %arrayidx21, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.end13
  %11 = load ptr, ptr %td, align 8
  %td_documentname = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i64 0, i32 33
  %12 = load ptr, ptr %td_documentname, align 8
  %tobool23.not = icmp eq ptr %12, null
  br i1 %tobool23.not, label %if.end27, label %if.then24

if.then24:                                        ; preds = %if.end22
  %13 = load ptr, ptr %td, align 8
  %td_documentname25 = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i64 0, i32 33
  %14 = load ptr, ptr %td_documentname25, align 8
  call void @_TIFFfree(ptr noundef %14) #4
  %td_documentname26 = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i64 0, i32 33
  store ptr null, ptr %td_documentname26, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end22
  %15 = load ptr, ptr %td, align 8
  %td_artist = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i64 0, i32 34
  %16 = load ptr, ptr %td_artist, align 8
  %tobool28.not = icmp eq ptr %16, null
  br i1 %tobool28.not, label %if.end32, label %if.then29

if.then29:                                        ; preds = %if.end27
  %17 = load ptr, ptr %td, align 8
  %td_artist30 = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i64 0, i32 34
  %18 = load ptr, ptr %td_artist30, align 8
  call void @_TIFFfree(ptr noundef %18) #4
  %td_artist31 = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i64 0, i32 34
  store ptr null, ptr %td_artist31, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end27
  %19 = load ptr, ptr %td, align 8
  %td_datetime = getelementptr inbounds %struct.TIFFDirectory, ptr %19, i64 0, i32 35
  %20 = load ptr, ptr %td_datetime, align 8
  %tobool33.not = icmp eq ptr %20, null
  br i1 %tobool33.not, label %if.end37, label %if.then34

if.then34:                                        ; preds = %if.end32
  %21 = load ptr, ptr %td, align 8
  %td_datetime35 = getelementptr inbounds %struct.TIFFDirectory, ptr %21, i64 0, i32 35
  %22 = load ptr, ptr %td_datetime35, align 8
  call void @_TIFFfree(ptr noundef %22) #4
  %td_datetime36 = getelementptr inbounds %struct.TIFFDirectory, ptr %21, i64 0, i32 35
  store ptr null, ptr %td_datetime36, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end32
  %23 = load ptr, ptr %td, align 8
  %td_hostcomputer = getelementptr inbounds %struct.TIFFDirectory, ptr %23, i64 0, i32 36
  %24 = load ptr, ptr %td_hostcomputer, align 8
  %tobool38.not = icmp eq ptr %24, null
  br i1 %tobool38.not, label %if.end42, label %if.then39

if.then39:                                        ; preds = %if.end37
  %25 = load ptr, ptr %td, align 8
  %td_hostcomputer40 = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i64 0, i32 36
  %26 = load ptr, ptr %td_hostcomputer40, align 8
  call void @_TIFFfree(ptr noundef %26) #4
  %td_hostcomputer41 = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i64 0, i32 36
  store ptr null, ptr %td_hostcomputer41, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end37
  %27 = load ptr, ptr %td, align 8
  %td_imagedescription = getelementptr inbounds %struct.TIFFDirectory, ptr %27, i64 0, i32 37
  %28 = load ptr, ptr %td_imagedescription, align 8
  %tobool43.not = icmp eq ptr %28, null
  br i1 %tobool43.not, label %if.end47, label %if.then44

if.then44:                                        ; preds = %if.end42
  %29 = load ptr, ptr %td, align 8
  %td_imagedescription45 = getelementptr inbounds %struct.TIFFDirectory, ptr %29, i64 0, i32 37
  %30 = load ptr, ptr %td_imagedescription45, align 8
  call void @_TIFFfree(ptr noundef %30) #4
  %td_imagedescription46 = getelementptr inbounds %struct.TIFFDirectory, ptr %29, i64 0, i32 37
  store ptr null, ptr %td_imagedescription46, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end42
  %31 = load ptr, ptr %td, align 8
  %td_make = getelementptr inbounds %struct.TIFFDirectory, ptr %31, i64 0, i32 38
  %32 = load ptr, ptr %td_make, align 8
  %tobool48.not = icmp eq ptr %32, null
  br i1 %tobool48.not, label %if.end52, label %if.then49

if.then49:                                        ; preds = %if.end47
  %33 = load ptr, ptr %td, align 8
  %td_make50 = getelementptr inbounds %struct.TIFFDirectory, ptr %33, i64 0, i32 38
  %34 = load ptr, ptr %td_make50, align 8
  call void @_TIFFfree(ptr noundef %34) #4
  %td_make51 = getelementptr inbounds %struct.TIFFDirectory, ptr %33, i64 0, i32 38
  store ptr null, ptr %td_make51, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end47
  %35 = load ptr, ptr %td, align 8
  %td_model = getelementptr inbounds %struct.TIFFDirectory, ptr %35, i64 0, i32 39
  %36 = load ptr, ptr %td_model, align 8
  %tobool53.not = icmp eq ptr %36, null
  br i1 %tobool53.not, label %if.end57, label %if.then54

if.then54:                                        ; preds = %if.end52
  %37 = load ptr, ptr %td, align 8
  %td_model55 = getelementptr inbounds %struct.TIFFDirectory, ptr %37, i64 0, i32 39
  %38 = load ptr, ptr %td_model55, align 8
  call void @_TIFFfree(ptr noundef %38) #4
  %td_model56 = getelementptr inbounds %struct.TIFFDirectory, ptr %37, i64 0, i32 39
  store ptr null, ptr %td_model56, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end52
  %39 = load ptr, ptr %td, align 8
  %td_software = getelementptr inbounds %struct.TIFFDirectory, ptr %39, i64 0, i32 40
  %40 = load ptr, ptr %td_software, align 8
  %tobool58.not = icmp eq ptr %40, null
  br i1 %tobool58.not, label %if.end62, label %if.then59

if.then59:                                        ; preds = %if.end57
  %41 = load ptr, ptr %td, align 8
  %td_software60 = getelementptr inbounds %struct.TIFFDirectory, ptr %41, i64 0, i32 40
  %42 = load ptr, ptr %td_software60, align 8
  call void @_TIFFfree(ptr noundef %42) #4
  %td_software61 = getelementptr inbounds %struct.TIFFDirectory, ptr %41, i64 0, i32 40
  store ptr null, ptr %td_software61, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.end57
  %43 = load ptr, ptr %td, align 8
  %td_pagename = getelementptr inbounds %struct.TIFFDirectory, ptr %43, i64 0, i32 41
  %44 = load ptr, ptr %td_pagename, align 8
  %tobool63.not = icmp eq ptr %44, null
  br i1 %tobool63.not, label %if.end67, label %if.then64

if.then64:                                        ; preds = %if.end62
  %45 = load ptr, ptr %td, align 8
  %td_pagename65 = getelementptr inbounds %struct.TIFFDirectory, ptr %45, i64 0, i32 41
  %46 = load ptr, ptr %td_pagename65, align 8
  call void @_TIFFfree(ptr noundef %46) #4
  %td_pagename66 = getelementptr inbounds %struct.TIFFDirectory, ptr %45, i64 0, i32 41
  store ptr null, ptr %td_pagename66, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end62
  %47 = load ptr, ptr %td, align 8
  %td_sampleinfo = getelementptr inbounds %struct.TIFFDirectory, ptr %47, i64 0, i32 31
  %48 = load ptr, ptr %td_sampleinfo, align 8
  %tobool68.not = icmp eq ptr %48, null
  br i1 %tobool68.not, label %if.end72, label %if.then69

if.then69:                                        ; preds = %if.end67
  %49 = load ptr, ptr %td, align 8
  %td_sampleinfo70 = getelementptr inbounds %struct.TIFFDirectory, ptr %49, i64 0, i32 31
  %50 = load ptr, ptr %td_sampleinfo70, align 8
  call void @_TIFFfree(ptr noundef %50) #4
  %td_sampleinfo71 = getelementptr inbounds %struct.TIFFDirectory, ptr %49, i64 0, i32 31
  store ptr null, ptr %td_sampleinfo71, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.end67
  %51 = load ptr, ptr %td, align 8
  %td_subifd = getelementptr inbounds %struct.TIFFDirectory, ptr %51, i64 0, i32 47
  %52 = load ptr, ptr %td_subifd, align 8
  %tobool73.not = icmp eq ptr %52, null
  br i1 %tobool73.not, label %if.end77, label %if.then74

if.then74:                                        ; preds = %if.end72
  %53 = load ptr, ptr %td, align 8
  %td_subifd75 = getelementptr inbounds %struct.TIFFDirectory, ptr %53, i64 0, i32 47
  %54 = load ptr, ptr %td_subifd75, align 8
  call void @_TIFFfree(ptr noundef %54) #4
  %td_subifd76 = getelementptr inbounds %struct.TIFFDirectory, ptr %53, i64 0, i32 47
  store ptr null, ptr %td_subifd76, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.end72
  %55 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs = getelementptr inbounds %struct.TIFFDirectory, ptr %55, i64 0, i32 48
  %56 = load ptr, ptr %td_ycbcrcoeffs, align 8
  %tobool78.not = icmp eq ptr %56, null
  br i1 %tobool78.not, label %if.end82, label %if.then79

if.then79:                                        ; preds = %if.end77
  %57 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs80 = getelementptr inbounds %struct.TIFFDirectory, ptr %57, i64 0, i32 48
  %58 = load ptr, ptr %td_ycbcrcoeffs80, align 8
  call void @_TIFFfree(ptr noundef %58) #4
  %td_ycbcrcoeffs81 = getelementptr inbounds %struct.TIFFDirectory, ptr %57, i64 0, i32 48
  store ptr null, ptr %td_ycbcrcoeffs81, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.end77
  %59 = load ptr, ptr %td, align 8
  %td_inknames = getelementptr inbounds %struct.TIFFDirectory, ptr %59, i64 0, i32 59
  %60 = load ptr, ptr %td_inknames, align 8
  %tobool83.not = icmp eq ptr %60, null
  br i1 %tobool83.not, label %if.end87, label %if.then84

if.then84:                                        ; preds = %if.end82
  %61 = load ptr, ptr %td, align 8
  %td_inknames85 = getelementptr inbounds %struct.TIFFDirectory, ptr %61, i64 0, i32 59
  %62 = load ptr, ptr %td_inknames85, align 8
  call void @_TIFFfree(ptr noundef %62) #4
  %td_inknames86 = getelementptr inbounds %struct.TIFFDirectory, ptr %61, i64 0, i32 59
  store ptr null, ptr %td_inknames86, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %if.end82
  %63 = load ptr, ptr %td, align 8
  %td_targetprinter = getelementptr inbounds %struct.TIFFDirectory, ptr %63, i64 0, i32 60
  %64 = load ptr, ptr %td_targetprinter, align 8
  %tobool88.not = icmp eq ptr %64, null
  br i1 %tobool88.not, label %if.end92, label %if.then89

if.then89:                                        ; preds = %if.end87
  %65 = load ptr, ptr %td, align 8
  %td_targetprinter90 = getelementptr inbounds %struct.TIFFDirectory, ptr %65, i64 0, i32 60
  %66 = load ptr, ptr %td_targetprinter90, align 8
  call void @_TIFFfree(ptr noundef %66) #4
  %td_targetprinter91 = getelementptr inbounds %struct.TIFFDirectory, ptr %65, i64 0, i32 60
  store ptr null, ptr %td_targetprinter91, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %if.end87
  %67 = load ptr, ptr %td, align 8
  %td_whitepoint = getelementptr inbounds %struct.TIFFDirectory, ptr %67, i64 0, i32 51
  %68 = load ptr, ptr %td_whitepoint, align 8
  %tobool93.not = icmp eq ptr %68, null
  br i1 %tobool93.not, label %if.end97, label %if.then94

if.then94:                                        ; preds = %if.end92
  %69 = load ptr, ptr %td, align 8
  %td_whitepoint95 = getelementptr inbounds %struct.TIFFDirectory, ptr %69, i64 0, i32 51
  %70 = load ptr, ptr %td_whitepoint95, align 8
  call void @_TIFFfree(ptr noundef %70) #4
  %td_whitepoint96 = getelementptr inbounds %struct.TIFFDirectory, ptr %69, i64 0, i32 51
  store ptr null, ptr %td_whitepoint96, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.then94, %if.end92
  %71 = load ptr, ptr %td, align 8
  %td_primarychromas = getelementptr inbounds %struct.TIFFDirectory, ptr %71, i64 0, i32 52
  %72 = load ptr, ptr %td_primarychromas, align 8
  %tobool98.not = icmp eq ptr %72, null
  br i1 %tobool98.not, label %if.end102, label %if.then99

if.then99:                                        ; preds = %if.end97
  %73 = load ptr, ptr %td, align 8
  %td_primarychromas100 = getelementptr inbounds %struct.TIFFDirectory, ptr %73, i64 0, i32 52
  %74 = load ptr, ptr %td_primarychromas100, align 8
  call void @_TIFFfree(ptr noundef %74) #4
  %td_primarychromas101 = getelementptr inbounds %struct.TIFFDirectory, ptr %73, i64 0, i32 52
  store ptr null, ptr %td_primarychromas101, align 8
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %if.end97
  %75 = load ptr, ptr %td, align 8
  %td_refblackwhite = getelementptr inbounds %struct.TIFFDirectory, ptr %75, i64 0, i32 53
  %76 = load ptr, ptr %td_refblackwhite, align 8
  %tobool103.not = icmp eq ptr %76, null
  br i1 %tobool103.not, label %if.end107, label %if.then104

if.then104:                                       ; preds = %if.end102
  %77 = load ptr, ptr %td, align 8
  %td_refblackwhite105 = getelementptr inbounds %struct.TIFFDirectory, ptr %77, i64 0, i32 53
  %78 = load ptr, ptr %td_refblackwhite105, align 8
  call void @_TIFFfree(ptr noundef %78) #4
  %td_refblackwhite106 = getelementptr inbounds %struct.TIFFDirectory, ptr %77, i64 0, i32 53
  store ptr null, ptr %td_refblackwhite106, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %if.end102
  %79 = load ptr, ptr %td, align 8
  %td_transferfunction = getelementptr inbounds %struct.TIFFDirectory, ptr %79, i64 0, i32 54
  %80 = load ptr, ptr %td_transferfunction, align 8
  %tobool109.not = icmp eq ptr %80, null
  br i1 %tobool109.not, label %if.end115, label %if.then110

if.then110:                                       ; preds = %if.end107
  %81 = load ptr, ptr %td, align 8
  %td_transferfunction111 = getelementptr inbounds %struct.TIFFDirectory, ptr %81, i64 0, i32 54
  %82 = load ptr, ptr %td_transferfunction111, align 8
  call void @_TIFFfree(ptr noundef %82) #4
  %td_transferfunction113 = getelementptr inbounds %struct.TIFFDirectory, ptr %81, i64 0, i32 54
  store ptr null, ptr %td_transferfunction113, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.then110, %if.end107
  %83 = load ptr, ptr %td, align 8
  %arrayidx117 = getelementptr inbounds %struct.TIFFDirectory, ptr %83, i64 0, i32 54, i64 1
  %84 = load ptr, ptr %arrayidx117, align 8
  %tobool118.not = icmp eq ptr %84, null
  br i1 %tobool118.not, label %if.end124, label %if.then119

if.then119:                                       ; preds = %if.end115
  %85 = load ptr, ptr %td, align 8
  %arrayidx121 = getelementptr inbounds %struct.TIFFDirectory, ptr %85, i64 0, i32 54, i64 1
  %86 = load ptr, ptr %arrayidx121, align 8
  call void @_TIFFfree(ptr noundef %86) #4
  %arrayidx123 = getelementptr inbounds %struct.TIFFDirectory, ptr %85, i64 0, i32 54, i64 1
  store ptr null, ptr %arrayidx123, align 8
  br label %if.end124

if.end124:                                        ; preds = %if.then119, %if.end115
  %87 = load ptr, ptr %td, align 8
  %arrayidx126 = getelementptr inbounds %struct.TIFFDirectory, ptr %87, i64 0, i32 54, i64 2
  %88 = load ptr, ptr %arrayidx126, align 8
  %tobool127.not = icmp eq ptr %88, null
  br i1 %tobool127.not, label %if.end133, label %if.then128

if.then128:                                       ; preds = %if.end124
  %89 = load ptr, ptr %td, align 8
  %arrayidx130 = getelementptr inbounds %struct.TIFFDirectory, ptr %89, i64 0, i32 54, i64 2
  %90 = load ptr, ptr %arrayidx130, align 8
  call void @_TIFFfree(ptr noundef %90) #4
  %arrayidx132 = getelementptr inbounds %struct.TIFFDirectory, ptr %89, i64 0, i32 54, i64 2
  store ptr null, ptr %arrayidx132, align 8
  br label %if.end133

if.end133:                                        ; preds = %if.then128, %if.end124
  %91 = load ptr, ptr %td, align 8
  %td_profileData = getelementptr inbounds %struct.TIFFDirectory, ptr %91, i64 0, i32 62
  %92 = load ptr, ptr %td_profileData, align 8
  %tobool134.not = icmp eq ptr %92, null
  br i1 %tobool134.not, label %if.end138, label %if.then135

if.then135:                                       ; preds = %if.end133
  %93 = load ptr, ptr %td, align 8
  %td_profileData136 = getelementptr inbounds %struct.TIFFDirectory, ptr %93, i64 0, i32 62
  %94 = load ptr, ptr %td_profileData136, align 8
  call void @_TIFFfree(ptr noundef %94) #4
  %td_profileData137 = getelementptr inbounds %struct.TIFFDirectory, ptr %93, i64 0, i32 62
  store ptr null, ptr %td_profileData137, align 8
  br label %if.end138

if.end138:                                        ; preds = %if.then135, %if.end133
  %95 = load ptr, ptr %td, align 8
  %td_photoshopData = getelementptr inbounds %struct.TIFFDirectory, ptr %95, i64 0, i32 64
  %96 = load ptr, ptr %td_photoshopData, align 8
  %tobool139.not = icmp eq ptr %96, null
  br i1 %tobool139.not, label %if.end143, label %if.then140

if.then140:                                       ; preds = %if.end138
  %97 = load ptr, ptr %td, align 8
  %td_photoshopData141 = getelementptr inbounds %struct.TIFFDirectory, ptr %97, i64 0, i32 64
  %98 = load ptr, ptr %td_photoshopData141, align 8
  call void @_TIFFfree(ptr noundef %98) #4
  %td_photoshopData142 = getelementptr inbounds %struct.TIFFDirectory, ptr %97, i64 0, i32 64
  store ptr null, ptr %td_photoshopData142, align 8
  br label %if.end143

if.end143:                                        ; preds = %if.then140, %if.end138
  %99 = load ptr, ptr %td, align 8
  %td_richtiffiptcData = getelementptr inbounds %struct.TIFFDirectory, ptr %99, i64 0, i32 66
  %100 = load ptr, ptr %td_richtiffiptcData, align 8
  %tobool144.not = icmp eq ptr %100, null
  br i1 %tobool144.not, label %if.end148, label %if.then145

if.then145:                                       ; preds = %if.end143
  %101 = load ptr, ptr %td, align 8
  %td_richtiffiptcData146 = getelementptr inbounds %struct.TIFFDirectory, ptr %101, i64 0, i32 66
  %102 = load ptr, ptr %td_richtiffiptcData146, align 8
  call void @_TIFFfree(ptr noundef %102) #4
  %td_richtiffiptcData147 = getelementptr inbounds %struct.TIFFDirectory, ptr %101, i64 0, i32 66
  store ptr null, ptr %td_richtiffiptcData147, align 8
  br label %if.end148

if.end148:                                        ; preds = %if.then145, %if.end143
  %103 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %103, i64 0, i32 44
  %104 = load ptr, ptr %td_stripoffset, align 8
  %tobool149.not = icmp eq ptr %104, null
  br i1 %tobool149.not, label %if.end153, label %if.then150

if.then150:                                       ; preds = %if.end148
  %105 = load ptr, ptr %td, align 8
  %td_stripoffset151 = getelementptr inbounds %struct.TIFFDirectory, ptr %105, i64 0, i32 44
  %106 = load ptr, ptr %td_stripoffset151, align 8
  call void @_TIFFfree(ptr noundef %106) #4
  %td_stripoffset152 = getelementptr inbounds %struct.TIFFDirectory, ptr %105, i64 0, i32 44
  store ptr null, ptr %td_stripoffset152, align 8
  br label %if.end153

if.end153:                                        ; preds = %if.then150, %if.end148
  %107 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %107, i64 0, i32 45
  %108 = load ptr, ptr %td_stripbytecount, align 8
  %tobool154.not = icmp eq ptr %108, null
  br i1 %tobool154.not, label %if.end158, label %if.then155

if.then155:                                       ; preds = %if.end153
  %109 = load ptr, ptr %td, align 8
  %td_stripbytecount156 = getelementptr inbounds %struct.TIFFDirectory, ptr %109, i64 0, i32 45
  %110 = load ptr, ptr %td_stripbytecount156, align 8
  call void @_TIFFfree(ptr noundef %110) #4
  %td_stripbytecount157 = getelementptr inbounds %struct.TIFFDirectory, ptr %109, i64 0, i32 45
  store ptr null, ptr %td_stripbytecount157, align 8
  br label %if.end158

if.end158:                                        ; preds = %if.then155, %if.end153
  %111 = load ptr, ptr %td, align 8
  %td_textureformat = getelementptr inbounds %struct.TIFFDirectory, ptr %111, i64 0, i32 69
  %112 = load ptr, ptr %td_textureformat, align 8
  %tobool159.not = icmp eq ptr %112, null
  br i1 %tobool159.not, label %if.end163, label %if.then160

if.then160:                                       ; preds = %if.end158
  %113 = load ptr, ptr %td, align 8
  %td_textureformat161 = getelementptr inbounds %struct.TIFFDirectory, ptr %113, i64 0, i32 69
  %114 = load ptr, ptr %td_textureformat161, align 8
  call void @_TIFFfree(ptr noundef %114) #4
  %td_textureformat162 = getelementptr inbounds %struct.TIFFDirectory, ptr %113, i64 0, i32 69
  store ptr null, ptr %td_textureformat162, align 8
  br label %if.end163

if.end163:                                        ; preds = %if.then160, %if.end158
  %115 = load ptr, ptr %td, align 8
  %td_wrapmodes = getelementptr inbounds %struct.TIFFDirectory, ptr %115, i64 0, i32 70
  %116 = load ptr, ptr %td_wrapmodes, align 8
  %tobool164.not = icmp eq ptr %116, null
  br i1 %tobool164.not, label %if.end168, label %if.then165

if.then165:                                       ; preds = %if.end163
  %117 = load ptr, ptr %td, align 8
  %td_wrapmodes166 = getelementptr inbounds %struct.TIFFDirectory, ptr %117, i64 0, i32 70
  %118 = load ptr, ptr %td_wrapmodes166, align 8
  call void @_TIFFfree(ptr noundef %118) #4
  %td_wrapmodes167 = getelementptr inbounds %struct.TIFFDirectory, ptr %117, i64 0, i32 70
  store ptr null, ptr %td_wrapmodes167, align 8
  br label %if.end168

if.end168:                                        ; preds = %if.then165, %if.end163
  %119 = load ptr, ptr %td, align 8
  %td_matrixWorldToScreen = getelementptr inbounds %struct.TIFFDirectory, ptr %119, i64 0, i32 72
  %120 = load ptr, ptr %td_matrixWorldToScreen, align 8
  %tobool169.not = icmp eq ptr %120, null
  br i1 %tobool169.not, label %if.end173, label %if.then170

if.then170:                                       ; preds = %if.end168
  %121 = load ptr, ptr %td, align 8
  %td_matrixWorldToScreen171 = getelementptr inbounds %struct.TIFFDirectory, ptr %121, i64 0, i32 72
  %122 = load ptr, ptr %td_matrixWorldToScreen171, align 8
  call void @_TIFFfree(ptr noundef %122) #4
  %td_matrixWorldToScreen172 = getelementptr inbounds %struct.TIFFDirectory, ptr %121, i64 0, i32 72
  store ptr null, ptr %td_matrixWorldToScreen172, align 8
  br label %if.end173

if.end173:                                        ; preds = %if.then170, %if.end168
  %123 = load ptr, ptr %td, align 8
  %td_matrixWorldToCamera = getelementptr inbounds %struct.TIFFDirectory, ptr %123, i64 0, i32 73
  %124 = load ptr, ptr %td_matrixWorldToCamera, align 8
  %tobool174.not = icmp eq ptr %124, null
  br i1 %tobool174.not, label %if.end178, label %if.then175

if.then175:                                       ; preds = %if.end173
  %125 = load ptr, ptr %td, align 8
  %td_matrixWorldToCamera176 = getelementptr inbounds %struct.TIFFDirectory, ptr %125, i64 0, i32 73
  %126 = load ptr, ptr %td_matrixWorldToCamera176, align 8
  call void @_TIFFfree(ptr noundef %126) #4
  %td_matrixWorldToCamera177 = getelementptr inbounds %struct.TIFFDirectory, ptr %125, i64 0, i32 73
  store ptr null, ptr %td_matrixWorldToCamera177, align 8
  br label %if.end178

if.end178:                                        ; preds = %if.then175, %if.end173
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @TIFFSetTagExtender(ptr noundef %extender) #0 {
entry:
  %0 = load ptr, ptr @_TIFFextender, align 8
  store ptr %extender, ptr @_TIFFextender, align 8
  ret ptr %0
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFDefaultDirectory(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  call void @_TIFFSetupFieldInfo(ptr noundef %tif) #4
  call void @_TIFFmemset(ptr noundef nonnull %tif_dir, i32 noundef 0, i32 noundef 472) #4
  %td_fillorder = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 13
  store i16 1, ptr %td_fillorder, align 2
  %td_bitspersample = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 8
  store i16 1, ptr %td_bitspersample, align 4
  %0 = load ptr, ptr %td, align 8
  %td_threshholding = getelementptr inbounds %struct.TIFFDirectory, ptr %0, i64 0, i32 12
  store i16 1, ptr %td_threshholding, align 4
  %td_orientation = getelementptr inbounds %struct.TIFFDirectory, ptr %0, i64 0, i32 14
  store i16 1, ptr %td_orientation, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %0, i64 0, i32 15
  store i16 1, ptr %td_samplesperpixel, align 2
  %1 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i64 0, i32 16
  store i32 -1, ptr %td_rowsperstrip, align 4
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i64 0, i32 4
  store i32 -1, ptr %td_tilewidth, align 4
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i64 0, i32 5
  store i32 -1, ptr %td_tilelength, align 8
  %2 = load ptr, ptr %td, align 8
  %td_tiledepth = getelementptr inbounds %struct.TIFFDirectory, ptr %2, i64 0, i32 6
  store i32 1, ptr %td_tiledepth, align 4
  %td_resolutionunit = getelementptr inbounds %struct.TIFFDirectory, ptr %2, i64 0, i32 23
  store i16 2, ptr %td_resolutionunit, align 8
  %td_sampleformat = getelementptr inbounds %struct.TIFFDirectory, ptr %2, i64 0, i32 9
  store i16 4, ptr %td_sampleformat, align 2
  %3 = load ptr, ptr %td, align 8
  %td_imagedepth = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i64 0, i32 3
  store i32 1, ptr %td_imagedepth, align 8
  %td_ycbcrsubsampling = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i64 0, i32 49
  store i16 2, ptr %td_ycbcrsubsampling, align 8
  %arrayidx2 = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i64 0, i32 49, i64 1
  store i16 2, ptr %arrayidx2, align 2
  %4 = load ptr, ptr %td, align 8
  %td_ycbcrpositioning = getelementptr inbounds %struct.TIFFDirectory, ptr %4, i64 0, i32 50
  store i16 1, ptr %td_ycbcrpositioning, align 4
  %td_inkset = getelementptr inbounds %struct.TIFFDirectory, ptr %4, i64 0, i32 55
  store i16 1, ptr %td_inkset, align 8
  %td_ninks = getelementptr inbounds %struct.TIFFDirectory, ptr %4, i64 0, i32 56
  store i16 4, ptr %td_ninks, align 2
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_postdecode = getelementptr inbounds %struct.tiff, ptr %5, i64 0, i32 54
  store ptr @_TIFFNoPostDecode, ptr %tif_postdecode, align 8
  %tif_vsetfield = getelementptr inbounds %struct.tiff, ptr %5, i64 0, i32 57
  store ptr @_TIFFVSetField, ptr %tif_vsetfield, align 8
  %tif_vgetfield = getelementptr inbounds %struct.tiff, ptr %5, i64 0, i32 58
  store ptr @_TIFFVGetField, ptr %tif_vgetfield, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_printdir = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 59
  store ptr null, ptr %tif_printdir, align 8
  %7 = load ptr, ptr @_TIFFextender, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr @_TIFFextender, align 8
  %9 = load ptr, ptr %tif.addr, align 8
  call void %8(ptr noundef %9) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %tif.addr, align 8
  %call = call i32 (ptr, i32, ...) @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2bw_tif_dir_0(ptr noundef %10, i32 noundef 259, i32 noundef 1)
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 3
  %11 = load i32, ptr %tif_flags, align 8
  %and = and i32 %11, -9
  store i32 %and, ptr %tif_flags, align 8
  ret i32 1
}

declare void @_TIFFSetupFieldInfo(ptr noundef) #1

declare void @_TIFFmemset(ptr noundef, i32 noundef, i32 noundef) #1

declare void @_TIFFNoPostDecode(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @_TIFFVSetField(ptr noundef %tif, i32 noundef %tag, ptr noundef %ap) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %ap.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %status = alloca i32, align 4
  %v32 = alloca i32, align 4
  %i = alloca i32, align 4
  %v = alloca i32, align 4
  %d = alloca double, align 8
  %s = alloca ptr, align 8
  %sv = alloca i16, align 2
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %tag, ptr %tag.addr, align 4
  store ptr %ap, ptr %ap.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  store i32 1, ptr %status, align 4
  switch i32 %tag, label %sw.default375 [
    i32 254, label %sw.bb
    i32 256, label %sw.bb1
    i32 257, label %sw.bb3
    i32 258, label %sw.bb5
    i32 259, label %sw.bb27
    i32 262, label %sw.bb57
    i32 263, label %sw.bb60
    i32 266, label %sw.bb63
    i32 269, label %sw.bb72
    i32 315, label %sw.bb74
    i32 306, label %sw.bb76
    i32 316, label %sw.bb78
    i32 270, label %sw.bb80
    i32 271, label %sw.bb82
    i32 272, label %sw.bb84
    i32 305, label %sw.bb86
    i32 274, label %sw.bb88
    i32 277, label %sw.bb100
    i32 278, label %sw.bb107
    i32 280, label %sw.bb121
    i32 281, label %sw.bb124
    i32 340, label %sw.bb127
    i32 341, label %sw.bb129
    i32 282, label %sw.bb131
    i32 283, label %sw.bb134
    i32 284, label %sw.bb137
    i32 285, label %sw.bb147
    i32 286, label %sw.bb149
    i32 287, label %sw.bb152
    i32 296, label %sw.bb155
    i32 297, label %sw.bb165
    i32 321, label %sw.bb173
    i32 320, label %sw.bb181
    i32 338, label %sw.bb196
    i32 32995, label %sw.bb201
    i32 322, label %sw.bb210
    i32 323, label %sw.bb223
    i32 32998, label %sw.bb238
    i32 32996, label %sw.bb244
    i32 339, label %sw.bb251
    i32 32997, label %sw.bb262
    i32 37439, label %sw.bb264
    i32 33300, label %sw.bb270
    i32 33301, label %sw.bb272
    i32 33302, label %sw.bb274
    i32 33303, label %sw.bb276
    i32 33304, label %sw.bb278
    i32 33305, label %sw.bb281
    i32 33306, label %sw.bb283
    i32 330, label %sw.bb285
    i32 529, label %sw.bb299
    i32 531, label %sw.bb301
    i32 530, label %sw.bb304
    i32 318, label %sw.bb312
    i32 319, label %sw.bb314
    i32 301, label %sw.bb316
    i32 532, label %sw.bb331
    i32 332, label %sw.bb333
    i32 336, label %sw.bb336
    i32 333, label %sw.bb344
    i32 334, label %sw.bb355
    i32 337, label %sw.bb358
    i32 34675, label %sw.bb360
    i32 34377, label %sw.bb365
    i32 33723, label %sw.bb370
  ]

sw.bb:                                            ; preds = %entry
  %0 = va_arg ptr %ap.addr, i32
  %1 = load ptr, ptr %td, align 8
  %td_subfiletype = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i64 0, i32 7
  store i32 %0, ptr %td_subfiletype, align 8
  br label %sw.epilog382

sw.bb1:                                           ; preds = %entry
  %2 = va_arg ptr %ap.addr, i32
  %3 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i64 0, i32 1
  store i32 %2, ptr %td_imagewidth, align 8
  br label %sw.epilog382

sw.bb3:                                           ; preds = %entry
  %4 = va_arg ptr %ap.addr, i32
  %5 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i64 0, i32 2
  store i32 %4, ptr %td_imagelength, align 4
  br label %sw.epilog382

sw.bb5:                                           ; preds = %entry
  %6 = va_arg ptr %ap.addr, i32
  %conv = trunc i32 %6 to i16
  %7 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i64 0, i32 8
  store i16 %conv, ptr %td_bitspersample, align 4
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %8, i64 0, i32 3
  %9 = load i32, ptr %tif_flags, align 8
  %and = and i32 %9, 128
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.epilog382, label %if.then

if.then:                                          ; preds = %sw.bb5
  %10 = load ptr, ptr %td, align 8
  %td_bitspersample7 = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i64 0, i32 8
  %11 = load i16, ptr %td_bitspersample7, align 4
  %cmp = icmp eq i16 %11, 16
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_postdecode = getelementptr inbounds %struct.tiff, ptr %12, i64 0, i32 54
  store ptr @_TIFFSwab16BitData, ptr %tif_postdecode, align 8
  br label %sw.epilog382

if.else:                                          ; preds = %if.then
  %13 = load ptr, ptr %td, align 8
  %td_bitspersample11 = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i64 0, i32 8
  %14 = load i16, ptr %td_bitspersample11, align 4
  %cmp13 = icmp eq i16 %14, 32
  br i1 %cmp13, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_postdecode16 = getelementptr inbounds %struct.tiff, ptr %15, i64 0, i32 54
  store ptr @_TIFFSwab32BitData, ptr %tif_postdecode16, align 8
  br label %sw.epilog382

if.else17:                                        ; preds = %if.else
  %16 = load ptr, ptr %td, align 8
  %td_bitspersample18 = getelementptr inbounds %struct.TIFFDirectory, ptr %16, i64 0, i32 8
  %17 = load i16, ptr %td_bitspersample18, align 4
  %cmp20 = icmp eq i16 %17, 64
  br i1 %cmp20, label %if.then22, label %sw.epilog382

if.then22:                                        ; preds = %if.else17
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_postdecode23 = getelementptr inbounds %struct.tiff, ptr %18, i64 0, i32 54
  store ptr @_TIFFSwab64BitData, ptr %tif_postdecode23, align 8
  br label %sw.epilog382

sw.bb27:                                          ; preds = %entry
  %19 = va_arg ptr %ap.addr, i32
  %and29 = and i32 %19, 65535
  store i32 %and29, ptr %v, align 4
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_dir30 = getelementptr inbounds %struct.tiff, ptr %20, i64 0, i32 6
  %21 = load i64, ptr %tif_dir30, align 8
  %and31 = and i64 %21, 128
  %tobool32.not = icmp eq i64 %and31, 0
  br i1 %tobool32.not, label %if.end41, label %if.then33

if.then33:                                        ; preds = %sw.bb27
  %22 = load ptr, ptr %td, align 8
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i64 0, i32 10
  %23 = load i16, ptr %td_compression, align 8
  %conv34 = zext i16 %23 to i32
  %24 = load i32, ptr %v, align 4
  %cmp35 = icmp eq i32 %24, %conv34
  br i1 %cmp35, label %sw.epilog382, label %if.end38

if.end38:                                         ; preds = %if.then33
  %25 = load ptr, ptr %tif.addr, align 8
  %tif_cleanup = getelementptr inbounds %struct.tiff, ptr %25, i64 0, i32 34
  %26 = load ptr, ptr %tif_cleanup, align 8
  call void %26(ptr noundef %25) #4
  %tif_flags39 = getelementptr inbounds %struct.tiff, ptr %25, i64 0, i32 3
  %27 = load i32, ptr %tif_flags39, align 8
  %and40 = and i32 %27, -33
  store i32 %and40, ptr %tif_flags39, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.end38, %sw.bb27
  %28 = load ptr, ptr %tif.addr, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 2
  %29 = load i32, ptr %tif_mode, align 4
  %tobool42.not.not = icmp ne i32 %29, 0
  %30 = load i32, ptr %v, align 4
  %cmp46 = icmp eq i32 %30, 5
  %or.cond5 = select i1 %tobool42.not.not, i1 %cmp46, i1 false
  br i1 %or.cond5, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end41
  %31 = load ptr, ptr %tif.addr, align 8
  %32 = load ptr, ptr %31, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %32, ptr noundef nonnull @.str.8) #4
  store i32 1, ptr %v, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end41
  %33 = load ptr, ptr %tif.addr, align 8
  %34 = load i32, ptr %v, align 4
  %call = call i32 @TIFFSetCompressionScheme(ptr noundef %33, i32 noundef %34) #4
  store i32 %call, ptr %status, align 4
  %cmp51.not = icmp eq i32 %call, 0
  br i1 %cmp51.not, label %sw.epilog382, label %if.then53

if.then53:                                        ; preds = %if.end50
  %35 = load i32, ptr %v, align 4
  %conv54 = trunc i32 %35 to i16
  %36 = load ptr, ptr %td, align 8
  %td_compression55 = getelementptr inbounds %struct.TIFFDirectory, ptr %36, i64 0, i32 10
  store i16 %conv54, ptr %td_compression55, align 8
  br label %sw.epilog382

sw.bb57:                                          ; preds = %entry
  %37 = va_arg ptr %ap.addr, i32
  %conv59 = trunc i32 %37 to i16
  %38 = load ptr, ptr %td, align 8
  %td_photometric = getelementptr inbounds %struct.TIFFDirectory, ptr %38, i64 0, i32 11
  store i16 %conv59, ptr %td_photometric, align 2
  br label %sw.epilog382

sw.bb60:                                          ; preds = %entry
  %39 = va_arg ptr %ap.addr, i32
  %conv62 = trunc i32 %39 to i16
  %40 = load ptr, ptr %td, align 8
  %td_threshholding = getelementptr inbounds %struct.TIFFDirectory, ptr %40, i64 0, i32 12
  store i16 %conv62, ptr %td_threshholding, align 4
  br label %sw.epilog382

sw.bb63:                                          ; preds = %entry
  %41 = va_arg ptr %ap.addr, i32
  store i32 %41, ptr %v, align 4
  %cmp65.not = icmp eq i32 %41, 2
  %42 = load i32, ptr %v, align 4
  %cmp67.not = icmp eq i32 %42, 1
  %or.cond = select i1 %cmp65.not, i1 true, i1 %cmp67.not
  br i1 %or.cond, label %if.end70, label %badvalue

if.end70:                                         ; preds = %sw.bb63
  %43 = load i32, ptr %v, align 4
  %conv71 = trunc i32 %43 to i16
  %44 = load ptr, ptr %td, align 8
  %td_fillorder = getelementptr inbounds %struct.TIFFDirectory, ptr %44, i64 0, i32 13
  store i16 %conv71, ptr %td_fillorder, align 2
  br label %sw.epilog382

sw.bb72:                                          ; preds = %entry
  %45 = load ptr, ptr %td, align 8
  %td_documentname = getelementptr inbounds %struct.TIFFDirectory, ptr %45, i64 0, i32 33
  %46 = va_arg ptr %ap.addr, ptr
  call void @_TIFFsetString(ptr noundef nonnull %td_documentname, ptr noundef %46)
  br label %sw.epilog382

sw.bb74:                                          ; preds = %entry
  %47 = load ptr, ptr %td, align 8
  %td_artist = getelementptr inbounds %struct.TIFFDirectory, ptr %47, i64 0, i32 34
  %48 = va_arg ptr %ap.addr, ptr
  call void @_TIFFsetString(ptr noundef nonnull %td_artist, ptr noundef %48)
  br label %sw.epilog382

sw.bb76:                                          ; preds = %entry
  %49 = load ptr, ptr %td, align 8
  %td_datetime = getelementptr inbounds %struct.TIFFDirectory, ptr %49, i64 0, i32 35
  %50 = va_arg ptr %ap.addr, ptr
  call void @_TIFFsetString(ptr noundef nonnull %td_datetime, ptr noundef %50)
  br label %sw.epilog382

sw.bb78:                                          ; preds = %entry
  %51 = load ptr, ptr %td, align 8
  %td_hostcomputer = getelementptr inbounds %struct.TIFFDirectory, ptr %51, i64 0, i32 36
  %52 = va_arg ptr %ap.addr, ptr
  call void @_TIFFsetString(ptr noundef nonnull %td_hostcomputer, ptr noundef %52)
  br label %sw.epilog382

sw.bb80:                                          ; preds = %entry
  %53 = load ptr, ptr %td, align 8
  %td_imagedescription = getelementptr inbounds %struct.TIFFDirectory, ptr %53, i64 0, i32 37
  %54 = va_arg ptr %ap.addr, ptr
  call void @_TIFFsetString(ptr noundef nonnull %td_imagedescription, ptr noundef %54)
  br label %sw.epilog382

sw.bb82:                                          ; preds = %entry
  %55 = load ptr, ptr %td, align 8
  %td_make = getelementptr inbounds %struct.TIFFDirectory, ptr %55, i64 0, i32 38
  %56 = va_arg ptr %ap.addr, ptr
  call void @_TIFFsetString(ptr noundef nonnull %td_make, ptr noundef %56)
  br label %sw.epilog382

sw.bb84:                                          ; preds = %entry
  %57 = load ptr, ptr %td, align 8
  %td_model = getelementptr inbounds %struct.TIFFDirectory, ptr %57, i64 0, i32 39
  %58 = va_arg ptr %ap.addr, ptr
  call void @_TIFFsetString(ptr noundef nonnull %td_model, ptr noundef %58)
  br label %sw.epilog382

sw.bb86:                                          ; preds = %entry
  %59 = load ptr, ptr %td, align 8
  %td_software = getelementptr inbounds %struct.TIFFDirectory, ptr %59, i64 0, i32 40
  %60 = va_arg ptr %ap.addr, ptr
  call void @_TIFFsetString(ptr noundef nonnull %td_software, ptr noundef %60)
  br label %sw.epilog382

sw.bb88:                                          ; preds = %entry
  %61 = va_arg ptr %ap.addr, i32
  store i32 %61, ptr %v, align 4
  %cmp90 = icmp slt i32 %61, 1
  %62 = load i32, ptr %v, align 4
  %cmp92 = icmp sgt i32 %62, 8
  %or.cond1 = select i1 %cmp90, i1 true, i1 %cmp92
  br i1 %or.cond1, label %if.then94, label %if.else97

if.then94:                                        ; preds = %sw.bb88
  %63 = load ptr, ptr %tif.addr, align 8
  %64 = load ptr, ptr %63, align 8
  %65 = load i32, ptr %v, align 4
  %66 = load i32, ptr %tag.addr, align 4
  %call96 = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %63, i32 noundef %66) #4
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call96, i64 0, i32 7
  %67 = load ptr, ptr %field_name, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %64, ptr noundef nonnull @.str.9, i32 noundef %65, ptr noundef %67) #4
  br label %sw.epilog382

if.else97:                                        ; preds = %sw.bb88
  %68 = load i32, ptr %v, align 4
  %conv98 = trunc i32 %68 to i16
  %69 = load ptr, ptr %td, align 8
  %td_orientation = getelementptr inbounds %struct.TIFFDirectory, ptr %69, i64 0, i32 14
  store i16 %conv98, ptr %td_orientation, align 8
  br label %sw.epilog382

sw.bb100:                                         ; preds = %entry
  %70 = va_arg ptr %ap.addr, i32
  store i32 %70, ptr %v, align 4
  %cmp102 = icmp eq i32 %70, 0
  br i1 %cmp102, label %badvalue, label %if.end105

if.end105:                                        ; preds = %sw.bb100
  %71 = load i32, ptr %v, align 4
  %conv106 = trunc i32 %71 to i16
  %72 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %72, i64 0, i32 15
  store i16 %conv106, ptr %td_samplesperpixel, align 2
  br label %sw.epilog382

sw.bb107:                                         ; preds = %entry
  %73 = va_arg ptr %ap.addr, i32
  store i32 %73, ptr %v32, align 4
  %cmp109 = icmp eq i32 %73, 0
  br i1 %cmp109, label %badvalue32, label %if.end112

if.end112:                                        ; preds = %sw.bb107
  %74 = load i32, ptr %v32, align 4
  %75 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %75, i64 0, i32 16
  store i32 %74, ptr %td_rowsperstrip, align 4
  %76 = load ptr, ptr %tif.addr, align 8
  %tif_dir113 = getelementptr inbounds %struct.tiff, ptr %76, i64 0, i32 6
  %77 = load i64, ptr %tif_dir113, align 8
  %and116 = and i64 %77, 4
  %tobool117.not = icmp eq i64 %and116, 0
  br i1 %tobool117.not, label %if.then118, label %sw.epilog382

if.then118:                                       ; preds = %if.end112
  %78 = load i32, ptr %v32, align 4
  %79 = load ptr, ptr %td, align 8
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %79, i64 0, i32 5
  store i32 %78, ptr %td_tilelength, align 8
  %td_imagewidth119 = getelementptr inbounds %struct.TIFFDirectory, ptr %79, i64 0, i32 1
  %80 = load i32, ptr %td_imagewidth119, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %79, i64 0, i32 4
  store i32 %80, ptr %td_tilewidth, align 4
  br label %sw.epilog382

sw.bb121:                                         ; preds = %entry
  %81 = va_arg ptr %ap.addr, i32
  %conv123 = trunc i32 %81 to i16
  %82 = load ptr, ptr %td, align 8
  %td_minsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %82, i64 0, i32 17
  store i16 %conv123, ptr %td_minsamplevalue, align 8
  br label %sw.epilog382

sw.bb124:                                         ; preds = %entry
  %83 = va_arg ptr %ap.addr, i32
  %conv126 = trunc i32 %83 to i16
  %84 = load ptr, ptr %td, align 8
  %td_maxsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %84, i64 0, i32 18
  store i16 %conv126, ptr %td_maxsamplevalue, align 2
  br label %sw.epilog382

sw.bb127:                                         ; preds = %entry
  %85 = va_arg ptr %ap.addr, double
  %86 = load ptr, ptr %td, align 8
  %td_sminsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %86, i64 0, i32 19
  store double %85, ptr %td_sminsamplevalue, align 8
  br label %sw.epilog382

sw.bb129:                                         ; preds = %entry
  %87 = va_arg ptr %ap.addr, double
  %88 = load ptr, ptr %td, align 8
  %td_smaxsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %88, i64 0, i32 20
  store double %87, ptr %td_smaxsamplevalue, align 8
  br label %sw.epilog382

sw.bb131:                                         ; preds = %entry
  %89 = va_arg ptr %ap.addr, double
  %conv133 = fptrunc double %89 to float
  %90 = load ptr, ptr %td, align 8
  %td_xresolution = getelementptr inbounds %struct.TIFFDirectory, ptr %90, i64 0, i32 21
  store float %conv133, ptr %td_xresolution, align 8
  br label %sw.epilog382

sw.bb134:                                         ; preds = %entry
  %91 = va_arg ptr %ap.addr, double
  %conv136 = fptrunc double %91 to float
  %92 = load ptr, ptr %td, align 8
  %td_yresolution = getelementptr inbounds %struct.TIFFDirectory, ptr %92, i64 0, i32 22
  store float %conv136, ptr %td_yresolution, align 4
  br label %sw.epilog382

sw.bb137:                                         ; preds = %entry
  %93 = va_arg ptr %ap.addr, i32
  store i32 %93, ptr %v, align 4
  %cmp139.not = icmp eq i32 %93, 1
  %94 = load i32, ptr %v, align 4
  %cmp142.not = icmp eq i32 %94, 2
  %or.cond2 = select i1 %cmp139.not, i1 true, i1 %cmp142.not
  br i1 %or.cond2, label %if.end145, label %badvalue

if.end145:                                        ; preds = %sw.bb137
  %95 = load i32, ptr %v, align 4
  %conv146 = trunc i32 %95 to i16
  %96 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %96, i64 0, i32 24
  store i16 %conv146, ptr %td_planarconfig, align 2
  br label %sw.epilog382

sw.bb147:                                         ; preds = %entry
  %97 = load ptr, ptr %td, align 8
  %td_pagename = getelementptr inbounds %struct.TIFFDirectory, ptr %97, i64 0, i32 41
  %98 = va_arg ptr %ap.addr, ptr
  call void @_TIFFsetString(ptr noundef nonnull %td_pagename, ptr noundef %98)
  br label %sw.epilog382

sw.bb149:                                         ; preds = %entry
  %99 = va_arg ptr %ap.addr, double
  %conv151 = fptrunc double %99 to float
  %100 = load ptr, ptr %td, align 8
  %td_xposition = getelementptr inbounds %struct.TIFFDirectory, ptr %100, i64 0, i32 25
  store float %conv151, ptr %td_xposition, align 4
  br label %sw.epilog382

sw.bb152:                                         ; preds = %entry
  %101 = va_arg ptr %ap.addr, double
  %conv154 = fptrunc double %101 to float
  %102 = load ptr, ptr %td, align 8
  %td_yposition = getelementptr inbounds %struct.TIFFDirectory, ptr %102, i64 0, i32 26
  store float %conv154, ptr %td_yposition, align 8
  br label %sw.epilog382

sw.bb155:                                         ; preds = %entry
  %103 = va_arg ptr %ap.addr, i32
  store i32 %103, ptr %v, align 4
  %cmp157 = icmp slt i32 %103, 1
  %104 = load i32, ptr %v, align 4
  %cmp160 = icmp sgt i32 %104, 3
  %or.cond3 = select i1 %cmp157, i1 true, i1 %cmp160
  br i1 %or.cond3, label %badvalue, label %if.end163

if.end163:                                        ; preds = %sw.bb155
  %105 = load i32, ptr %v, align 4
  %conv164 = trunc i32 %105 to i16
  %106 = load ptr, ptr %td, align 8
  %td_resolutionunit = getelementptr inbounds %struct.TIFFDirectory, ptr %106, i64 0, i32 23
  store i16 %conv164, ptr %td_resolutionunit, align 8
  br label %sw.epilog382

sw.bb165:                                         ; preds = %entry
  %107 = va_arg ptr %ap.addr, i32
  %conv167 = trunc i32 %107 to i16
  %108 = load ptr, ptr %td, align 8
  %td_pagenumber = getelementptr inbounds %struct.TIFFDirectory, ptr %108, i64 0, i32 27
  store i16 %conv167, ptr %td_pagenumber, align 4
  %109 = va_arg ptr %ap.addr, i32
  %conv170 = trunc i32 %109 to i16
  %arrayidx172 = getelementptr inbounds %struct.TIFFDirectory, ptr %108, i64 0, i32 27, i64 1
  store i16 %conv170, ptr %arrayidx172, align 2
  br label %sw.epilog382

sw.bb173:                                         ; preds = %entry
  %110 = va_arg ptr %ap.addr, i32
  %conv175 = trunc i32 %110 to i16
  %111 = load ptr, ptr %td, align 8
  %td_halftonehints = getelementptr inbounds %struct.TIFFDirectory, ptr %111, i64 0, i32 29
  store i16 %conv175, ptr %td_halftonehints, align 8
  %112 = va_arg ptr %ap.addr, i32
  %conv178 = trunc i32 %112 to i16
  %arrayidx180 = getelementptr inbounds %struct.TIFFDirectory, ptr %111, i64 0, i32 29, i64 1
  store i16 %conv178, ptr %arrayidx180, align 2
  br label %sw.epilog382

sw.bb181:                                         ; preds = %entry
  %113 = load ptr, ptr %td, align 8
  %td_bitspersample182 = getelementptr inbounds %struct.TIFFDirectory, ptr %113, i64 0, i32 8
  %114 = load i16, ptr %td_bitspersample182, align 4
  %sh_prom = zext i16 %114 to i64
  %shl = shl i64 1, %sh_prom
  %conv184 = trunc i64 %shl to i32
  store i32 %conv184, ptr %v32, align 4
  %115 = load ptr, ptr %td, align 8
  %td_colormap = getelementptr inbounds %struct.TIFFDirectory, ptr %115, i64 0, i32 28
  %116 = va_arg ptr %ap.addr, ptr
  %conv187 = and i64 %shl, 4294967295
  call void @_TIFFsetShortArray(ptr noundef nonnull %td_colormap, ptr noundef %116, i64 noundef %conv187)
  %arrayidx189 = getelementptr inbounds %struct.TIFFDirectory, ptr %115, i64 0, i32 28, i64 1
  %117 = va_arg ptr %ap.addr, ptr
  %118 = load i32, ptr %v32, align 4
  %conv191 = zext i32 %118 to i64
  call void @_TIFFsetShortArray(ptr noundef nonnull %arrayidx189, ptr noundef %117, i64 noundef %conv191)
  %119 = load ptr, ptr %td, align 8
  %arrayidx193 = getelementptr inbounds %struct.TIFFDirectory, ptr %119, i64 0, i32 28, i64 2
  %120 = va_arg ptr %ap.addr, ptr
  %conv195 = zext i32 %118 to i64
  call void @_TIFFsetShortArray(ptr noundef nonnull %arrayidx193, ptr noundef %120, i64 noundef %conv195)
  br label %sw.epilog382

sw.bb196:                                         ; preds = %entry
  %121 = load ptr, ptr %td, align 8
  %122 = load ptr, ptr %ap.addr, align 8
  %call197 = call i32 @setExtraSamples(ptr noundef %121, ptr noundef %122, ptr noundef nonnull %v)
  %tobool198.not = icmp eq i32 %call197, 0
  br i1 %tobool198.not, label %badvalue, label %sw.epilog382

sw.bb201:                                         ; preds = %entry
  %123 = va_arg ptr %ap.addr, i32
  %cmp203 = icmp ne i32 %123, 0
  %conv205 = zext i1 %cmp203 to i16
  %124 = load ptr, ptr %td, align 8
  %td_extrasamples = getelementptr inbounds %struct.TIFFDirectory, ptr %124, i64 0, i32 30
  store i16 %conv205, ptr %td_extrasamples, align 4
  br i1 %cmp203, label %if.then208, label %sw.epilog382

if.then208:                                       ; preds = %sw.bb201
  store i16 1, ptr %sv, align 2
  %125 = load ptr, ptr %td, align 8
  %td_sampleinfo = getelementptr inbounds %struct.TIFFDirectory, ptr %125, i64 0, i32 31
  call void @_TIFFsetShortArray(ptr noundef nonnull %td_sampleinfo, ptr noundef nonnull %sv, i64 noundef 1)
  br label %sw.epilog382

sw.bb210:                                         ; preds = %entry
  %126 = va_arg ptr %ap.addr, i32
  store i32 %126, ptr %v32, align 4
  %rem = and i32 %126, 15
  %tobool212.not = icmp eq i32 %rem, 0
  br i1 %tobool212.not, label %if.end220, label %if.then213

if.then213:                                       ; preds = %sw.bb210
  %127 = load ptr, ptr %tif.addr, align 8
  %tif_mode214 = getelementptr inbounds %struct.tiff, ptr %127, i64 0, i32 2
  %128 = load i32, ptr %tif_mode214, align 4
  %cmp215.not = icmp eq i32 %128, 0
  br i1 %cmp215.not, label %if.end218, label %badvalue32

if.end218:                                        ; preds = %if.then213
  %129 = load ptr, ptr %tif.addr, align 8
  %130 = load ptr, ptr %129, align 8
  %131 = load i32, ptr %v32, align 4
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %130, ptr noundef nonnull @.str.10, i32 noundef %131) #4
  br label %if.end220

if.end220:                                        ; preds = %if.end218, %sw.bb210
  %132 = load i32, ptr %v32, align 4
  %133 = load ptr, ptr %td, align 8
  %td_tilewidth221 = getelementptr inbounds %struct.TIFFDirectory, ptr %133, i64 0, i32 4
  store i32 %132, ptr %td_tilewidth221, align 4
  %134 = load ptr, ptr %tif.addr, align 8
  %tif_flags222 = getelementptr inbounds %struct.tiff, ptr %134, i64 0, i32 3
  %135 = load i32, ptr %tif_flags222, align 8
  %or = or i32 %135, 1024
  store i32 %or, ptr %tif_flags222, align 8
  br label %sw.epilog382

sw.bb223:                                         ; preds = %entry
  %136 = va_arg ptr %ap.addr, i32
  store i32 %136, ptr %v32, align 4
  %rem225 = and i32 %136, 15
  %tobool226.not = icmp eq i32 %rem225, 0
  br i1 %tobool226.not, label %if.end234, label %if.then227

if.then227:                                       ; preds = %sw.bb223
  %137 = load ptr, ptr %tif.addr, align 8
  %tif_mode228 = getelementptr inbounds %struct.tiff, ptr %137, i64 0, i32 2
  %138 = load i32, ptr %tif_mode228, align 4
  %cmp229.not = icmp eq i32 %138, 0
  br i1 %cmp229.not, label %if.end232, label %badvalue32

if.end232:                                        ; preds = %if.then227
  %139 = load ptr, ptr %tif.addr, align 8
  %140 = load ptr, ptr %139, align 8
  %141 = load i32, ptr %v32, align 4
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %140, ptr noundef nonnull @.str.11, i32 noundef %141) #4
  br label %if.end234

if.end234:                                        ; preds = %if.end232, %sw.bb223
  %142 = load i32, ptr %v32, align 4
  %143 = load ptr, ptr %td, align 8
  %td_tilelength235 = getelementptr inbounds %struct.TIFFDirectory, ptr %143, i64 0, i32 5
  store i32 %142, ptr %td_tilelength235, align 8
  %144 = load ptr, ptr %tif.addr, align 8
  %tif_flags236 = getelementptr inbounds %struct.tiff, ptr %144, i64 0, i32 3
  %145 = load i32, ptr %tif_flags236, align 8
  %or237 = or i32 %145, 1024
  store i32 %or237, ptr %tif_flags236, align 8
  br label %sw.epilog382

sw.bb238:                                         ; preds = %entry
  %146 = va_arg ptr %ap.addr, i32
  store i32 %146, ptr %v32, align 4
  %cmp240 = icmp eq i32 %146, 0
  br i1 %cmp240, label %badvalue32, label %if.end243

if.end243:                                        ; preds = %sw.bb238
  %147 = load i32, ptr %v32, align 4
  %148 = load ptr, ptr %td, align 8
  %td_tiledepth = getelementptr inbounds %struct.TIFFDirectory, ptr %148, i64 0, i32 6
  store i32 %147, ptr %td_tiledepth, align 4
  br label %sw.epilog382

sw.bb244:                                         ; preds = %entry
  %149 = va_arg ptr %ap.addr, i32
  store i32 %149, ptr %v, align 4
  switch i32 %149, label %badvalue [
    i32 0, label %sw.bb246
    i32 1, label %sw.bb247
    i32 2, label %sw.bb248
    i32 3, label %sw.bb249
  ]

sw.bb246:                                         ; preds = %sw.bb244
  store i32 4, ptr %v, align 4
  br label %sw.epilog

sw.bb247:                                         ; preds = %sw.bb244
  store i32 2, ptr %v, align 4
  br label %sw.epilog

sw.bb248:                                         ; preds = %sw.bb244
  store i32 1, ptr %v, align 4
  br label %sw.epilog

sw.bb249:                                         ; preds = %sw.bb244
  store i32 3, ptr %v, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb249, %sw.bb248, %sw.bb247, %sw.bb246
  %150 = load i32, ptr %v, align 4
  %conv250 = trunc i32 %150 to i16
  %151 = load ptr, ptr %td, align 8
  %td_sampleformat = getelementptr inbounds %struct.TIFFDirectory, ptr %151, i64 0, i32 9
  store i16 %conv250, ptr %td_sampleformat, align 2
  br label %sw.epilog382

sw.bb251:                                         ; preds = %entry
  %152 = va_arg ptr %ap.addr, i32
  store i32 %152, ptr %v, align 4
  %cmp253 = icmp slt i32 %152, 1
  %153 = load i32, ptr %v, align 4
  %cmp256 = icmp sgt i32 %153, 4
  %or.cond4 = select i1 %cmp253, i1 true, i1 %cmp256
  br i1 %or.cond4, label %badvalue, label %if.end259

if.end259:                                        ; preds = %sw.bb251
  %154 = load i32, ptr %v, align 4
  %conv260 = trunc i32 %154 to i16
  %155 = load ptr, ptr %td, align 8
  %td_sampleformat261 = getelementptr inbounds %struct.TIFFDirectory, ptr %155, i64 0, i32 9
  store i16 %conv260, ptr %td_sampleformat261, align 2
  br label %sw.epilog382

sw.bb262:                                         ; preds = %entry
  %156 = va_arg ptr %ap.addr, i32
  %157 = load ptr, ptr %td, align 8
  %td_imagedepth = getelementptr inbounds %struct.TIFFDirectory, ptr %157, i64 0, i32 3
  store i32 %156, ptr %td_imagedepth, align 8
  br label %sw.epilog382

sw.bb264:                                         ; preds = %entry
  %158 = va_arg ptr %ap.addr, double
  store double %158, ptr %d, align 8
  %cmp266 = fcmp ugt double %158, 0.000000e+00
  br i1 %cmp266, label %if.end269, label %badvaluedbl

if.end269:                                        ; preds = %sw.bb264
  %159 = load double, ptr %d, align 8
  %160 = load ptr, ptr %td, align 8
  %td_stonits = getelementptr inbounds %struct.TIFFDirectory, ptr %160, i64 0, i32 32
  store double %159, ptr %td_stonits, align 8
  br label %sw.epilog382

sw.bb270:                                         ; preds = %entry
  %161 = va_arg ptr %ap.addr, i32
  %162 = load ptr, ptr %td, align 8
  %td_imagefullwidth = getelementptr inbounds %struct.TIFFDirectory, ptr %162, i64 0, i32 67
  store i32 %161, ptr %td_imagefullwidth, align 8
  br label %sw.epilog382

sw.bb272:                                         ; preds = %entry
  %163 = va_arg ptr %ap.addr, i32
  %164 = load ptr, ptr %td, align 8
  %td_imagefulllength = getelementptr inbounds %struct.TIFFDirectory, ptr %164, i64 0, i32 68
  store i32 %163, ptr %td_imagefulllength, align 4
  br label %sw.epilog382

sw.bb274:                                         ; preds = %entry
  %165 = load ptr, ptr %td, align 8
  %td_textureformat = getelementptr inbounds %struct.TIFFDirectory, ptr %165, i64 0, i32 69
  %166 = va_arg ptr %ap.addr, ptr
  call void @_TIFFsetString(ptr noundef nonnull %td_textureformat, ptr noundef %166)
  br label %sw.epilog382

sw.bb276:                                         ; preds = %entry
  %167 = load ptr, ptr %td, align 8
  %td_wrapmodes = getelementptr inbounds %struct.TIFFDirectory, ptr %167, i64 0, i32 70
  %168 = va_arg ptr %ap.addr, ptr
  call void @_TIFFsetString(ptr noundef nonnull %td_wrapmodes, ptr noundef %168)
  br label %sw.epilog382

sw.bb278:                                         ; preds = %entry
  %169 = va_arg ptr %ap.addr, double
  %conv280 = fptrunc double %169 to float
  %170 = load ptr, ptr %td, align 8
  %td_fovcot = getelementptr inbounds %struct.TIFFDirectory, ptr %170, i64 0, i32 71
  store float %conv280, ptr %td_fovcot, align 8
  br label %sw.epilog382

sw.bb281:                                         ; preds = %entry
  %171 = load ptr, ptr %td, align 8
  %td_matrixWorldToScreen = getelementptr inbounds %struct.TIFFDirectory, ptr %171, i64 0, i32 72
  %172 = va_arg ptr %ap.addr, ptr
  call void @_TIFFsetFloatArray(ptr noundef nonnull %td_matrixWorldToScreen, ptr noundef %172, i64 noundef 16)
  br label %sw.epilog382

sw.bb283:                                         ; preds = %entry
  %173 = load ptr, ptr %td, align 8
  %td_matrixWorldToCamera = getelementptr inbounds %struct.TIFFDirectory, ptr %173, i64 0, i32 73
  %174 = va_arg ptr %ap.addr, ptr
  call void @_TIFFsetFloatArray(ptr noundef nonnull %td_matrixWorldToCamera, ptr noundef %174, i64 noundef 16)
  br label %sw.epilog382

sw.bb285:                                         ; preds = %entry
  %175 = load ptr, ptr %tif.addr, align 8
  %tif_flags286 = getelementptr inbounds %struct.tiff, ptr %175, i64 0, i32 3
  %176 = load i32, ptr %tif_flags286, align 8
  %and287 = and i32 %176, 8192
  %cmp288 = icmp eq i32 %and287, 0
  br i1 %cmp288, label %if.then290, label %if.else296

if.then290:                                       ; preds = %sw.bb285
  %177 = va_arg ptr %ap.addr, i32
  %conv292 = trunc i32 %177 to i16
  %178 = load ptr, ptr %td, align 8
  %td_nsubifd = getelementptr inbounds %struct.TIFFDirectory, ptr %178, i64 0, i32 46
  store i16 %conv292, ptr %td_nsubifd, align 8
  %td_subifd = getelementptr inbounds %struct.TIFFDirectory, ptr %178, i64 0, i32 47
  %179 = va_arg ptr %ap.addr, ptr
  %td_nsubifd294 = getelementptr inbounds %struct.TIFFDirectory, ptr %178, i64 0, i32 46
  %180 = load i16, ptr %td_nsubifd294, align 8
  %conv295 = zext i16 %180 to i64
  call void @_TIFFsetLongArray(ptr noundef nonnull %td_subifd, ptr noundef %179, i64 noundef %conv295)
  br label %sw.epilog382

if.else296:                                       ; preds = %sw.bb285
  %181 = load ptr, ptr %tif.addr, align 8
  %182 = load ptr, ptr %181, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %182, ptr noundef nonnull @.str.12) #4
  store i32 0, ptr %status, align 4
  br label %sw.epilog382

sw.bb299:                                         ; preds = %entry
  %183 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs = getelementptr inbounds %struct.TIFFDirectory, ptr %183, i64 0, i32 48
  %184 = va_arg ptr %ap.addr, ptr
  call void @_TIFFsetFloatArray(ptr noundef nonnull %td_ycbcrcoeffs, ptr noundef %184, i64 noundef 3)
  br label %sw.epilog382

sw.bb301:                                         ; preds = %entry
  %185 = va_arg ptr %ap.addr, i32
  %conv303 = trunc i32 %185 to i16
  %186 = load ptr, ptr %td, align 8
  %td_ycbcrpositioning = getelementptr inbounds %struct.TIFFDirectory, ptr %186, i64 0, i32 50
  store i16 %conv303, ptr %td_ycbcrpositioning, align 4
  br label %sw.epilog382

sw.bb304:                                         ; preds = %entry
  %187 = va_arg ptr %ap.addr, i32
  %conv306 = trunc i32 %187 to i16
  %188 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling = getelementptr inbounds %struct.TIFFDirectory, ptr %188, i64 0, i32 49
  store i16 %conv306, ptr %td_ycbcrsubsampling, align 8
  %189 = va_arg ptr %ap.addr, i32
  %conv309 = trunc i32 %189 to i16
  %arrayidx311 = getelementptr inbounds %struct.TIFFDirectory, ptr %188, i64 0, i32 49, i64 1
  store i16 %conv309, ptr %arrayidx311, align 2
  br label %sw.epilog382

sw.bb312:                                         ; preds = %entry
  %190 = load ptr, ptr %td, align 8
  %td_whitepoint = getelementptr inbounds %struct.TIFFDirectory, ptr %190, i64 0, i32 51
  %191 = va_arg ptr %ap.addr, ptr
  call void @_TIFFsetFloatArray(ptr noundef nonnull %td_whitepoint, ptr noundef %191, i64 noundef 2)
  br label %sw.epilog382

sw.bb314:                                         ; preds = %entry
  %192 = load ptr, ptr %td, align 8
  %td_primarychromas = getelementptr inbounds %struct.TIFFDirectory, ptr %192, i64 0, i32 52
  %193 = va_arg ptr %ap.addr, ptr
  call void @_TIFFsetFloatArray(ptr noundef nonnull %td_primarychromas, ptr noundef %193, i64 noundef 6)
  br label %sw.epilog382

sw.bb316:                                         ; preds = %entry
  %194 = load ptr, ptr %td, align 8
  %td_samplesperpixel317 = getelementptr inbounds %struct.TIFFDirectory, ptr %194, i64 0, i32 15
  %195 = load i16, ptr %td_samplesperpixel317, align 2
  %conv318 = zext i16 %195 to i32
  %td_extrasamples319 = getelementptr inbounds %struct.TIFFDirectory, ptr %194, i64 0, i32 30
  %196 = load i16, ptr %td_extrasamples319, align 4
  %conv320 = zext i16 %196 to i32
  %sub = sub nsw i32 %conv318, %conv320
  %cmp321 = icmp sgt i32 %sub, 1
  %cond = select i1 %cmp321, i32 3, i32 1
  store i32 %cond, ptr %v, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %sw.bb316
  %storemerge = phi i32 [ 0, %sw.bb316 ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %197 = load i32, ptr %v, align 4
  %cmp323 = icmp slt i32 %storemerge, %197
  br i1 %cmp323, label %for.body, label %sw.epilog382

for.body:                                         ; preds = %for.cond
  %198 = load ptr, ptr %td, align 8
  %199 = load i32, ptr %i, align 4
  %idxprom = sext i32 %199 to i64
  %arrayidx325 = getelementptr inbounds %struct.TIFFDirectory, ptr %198, i64 0, i32 54, i64 %idxprom
  %200 = va_arg ptr %ap.addr, ptr
  %td_bitspersample327 = getelementptr inbounds %struct.TIFFDirectory, ptr %198, i64 0, i32 8
  %201 = load i16, ptr %td_bitspersample327, align 4
  %sh_prom329 = zext i16 %201 to i64
  %shl330 = shl i64 1, %sh_prom329
  call void @_TIFFsetShortArray(ptr noundef nonnull %arrayidx325, ptr noundef %200, i64 noundef %shl330)
  %202 = load i32, ptr %i, align 4
  %inc = add nsw i32 %202, 1
  br label %for.cond, !llvm.loop !6

sw.bb331:                                         ; preds = %entry
  %203 = load ptr, ptr %td, align 8
  %td_refblackwhite = getelementptr inbounds %struct.TIFFDirectory, ptr %203, i64 0, i32 53
  %204 = va_arg ptr %ap.addr, ptr
  call void @_TIFFsetFloatArray(ptr noundef nonnull %td_refblackwhite, ptr noundef %204, i64 noundef 6)
  br label %sw.epilog382

sw.bb333:                                         ; preds = %entry
  %205 = va_arg ptr %ap.addr, i32
  %conv335 = trunc i32 %205 to i16
  %206 = load ptr, ptr %td, align 8
  %td_inkset = getelementptr inbounds %struct.TIFFDirectory, ptr %206, i64 0, i32 55
  store i16 %conv335, ptr %td_inkset, align 8
  br label %sw.epilog382

sw.bb336:                                         ; preds = %entry
  %207 = va_arg ptr %ap.addr, i32
  %conv338 = trunc i32 %207 to i16
  %208 = load ptr, ptr %td, align 8
  %td_dotrange = getelementptr inbounds %struct.TIFFDirectory, ptr %208, i64 0, i32 57
  store i16 %conv338, ptr %td_dotrange, align 4
  %209 = va_arg ptr %ap.addr, i32
  %conv341 = trunc i32 %209 to i16
  %arrayidx343 = getelementptr inbounds %struct.TIFFDirectory, ptr %208, i64 0, i32 57, i64 1
  store i16 %conv341, ptr %arrayidx343, align 2
  br label %sw.epilog382

sw.bb344:                                         ; preds = %entry
  %210 = va_arg ptr %ap.addr, i32
  store i32 %210, ptr %i, align 4
  %211 = va_arg ptr %ap.addr, ptr
  store ptr %211, ptr %s, align 8
  %212 = load ptr, ptr %tif.addr, align 8
  %call347 = call i32 @checkInkNamesString(ptr noundef %212, i32 noundef %210, ptr noundef %211)
  store i32 %call347, ptr %i, align 4
  %cmp348 = icmp sgt i32 %call347, 0
  %conv349 = zext i1 %cmp348 to i32
  store i32 %conv349, ptr %status, align 4
  %cmp350 = icmp sgt i32 %call347, 0
  br i1 %cmp350, label %if.then352, label %sw.epilog382

if.then352:                                       ; preds = %sw.bb344
  %213 = load ptr, ptr %td, align 8
  %td_inknames = getelementptr inbounds %struct.TIFFDirectory, ptr %213, i64 0, i32 59
  %214 = load ptr, ptr %s, align 8
  %215 = load i32, ptr %i, align 4
  %conv353 = sext i32 %215 to i64
  call void @_TIFFsetNString(ptr noundef nonnull %td_inknames, ptr noundef %214, i64 noundef %conv353)
  %td_inknameslen = getelementptr inbounds %struct.TIFFDirectory, ptr %213, i64 0, i32 58
  store i32 %215, ptr %td_inknameslen, align 8
  br label %sw.epilog382

sw.bb355:                                         ; preds = %entry
  %216 = va_arg ptr %ap.addr, i32
  %conv357 = trunc i32 %216 to i16
  %217 = load ptr, ptr %td, align 8
  %td_ninks = getelementptr inbounds %struct.TIFFDirectory, ptr %217, i64 0, i32 56
  store i16 %conv357, ptr %td_ninks, align 2
  br label %sw.epilog382

sw.bb358:                                         ; preds = %entry
  %218 = load ptr, ptr %td, align 8
  %td_targetprinter = getelementptr inbounds %struct.TIFFDirectory, ptr %218, i64 0, i32 60
  %219 = va_arg ptr %ap.addr, ptr
  call void @_TIFFsetString(ptr noundef nonnull %td_targetprinter, ptr noundef %219)
  br label %sw.epilog382

sw.bb360:                                         ; preds = %entry
  %220 = va_arg ptr %ap.addr, i32
  %221 = load ptr, ptr %td, align 8
  %td_profileLength = getelementptr inbounds %struct.TIFFDirectory, ptr %221, i64 0, i32 61
  store i32 %220, ptr %td_profileLength, align 8
  %td_profileData = getelementptr inbounds %struct.TIFFDirectory, ptr %221, i64 0, i32 62
  %222 = va_arg ptr %ap.addr, ptr
  %td_profileLength363 = getelementptr inbounds %struct.TIFFDirectory, ptr %221, i64 0, i32 61
  %223 = load i32, ptr %td_profileLength363, align 8
  %conv364 = zext i32 %223 to i64
  call void @_TIFFsetByteArray(ptr noundef nonnull %td_profileData, ptr noundef %222, i64 noundef %conv364)
  br label %sw.epilog382

sw.bb365:                                         ; preds = %entry
  %224 = va_arg ptr %ap.addr, i32
  %225 = load ptr, ptr %td, align 8
  %td_photoshopLength = getelementptr inbounds %struct.TIFFDirectory, ptr %225, i64 0, i32 63
  store i32 %224, ptr %td_photoshopLength, align 8
  %td_photoshopData = getelementptr inbounds %struct.TIFFDirectory, ptr %225, i64 0, i32 64
  %226 = va_arg ptr %ap.addr, ptr
  %td_photoshopLength368 = getelementptr inbounds %struct.TIFFDirectory, ptr %225, i64 0, i32 63
  %227 = load i32, ptr %td_photoshopLength368, align 8
  %conv369 = zext i32 %227 to i64
  call void @_TIFFsetByteArray(ptr noundef nonnull %td_photoshopData, ptr noundef %226, i64 noundef %conv369)
  br label %sw.epilog382

sw.bb370:                                         ; preds = %entry
  %228 = va_arg ptr %ap.addr, i32
  %229 = load ptr, ptr %td, align 8
  %td_richtiffiptcLength = getelementptr inbounds %struct.TIFFDirectory, ptr %229, i64 0, i32 65
  store i32 %228, ptr %td_richtiffiptcLength, align 8
  %td_richtiffiptcData = getelementptr inbounds %struct.TIFFDirectory, ptr %229, i64 0, i32 66
  %230 = va_arg ptr %ap.addr, ptr
  %td_richtiffiptcLength373 = getelementptr inbounds %struct.TIFFDirectory, ptr %229, i64 0, i32 65
  %231 = load i32, ptr %td_richtiffiptcLength373, align 8
  %conv374 = zext i32 %231 to i64
  call void @_TIFFsetLongArray(ptr noundef nonnull %td_richtiffiptcData, ptr noundef %230, i64 noundef %conv374)
  br label %sw.epilog382

sw.default375:                                    ; preds = %entry
  %232 = load ptr, ptr %tif.addr, align 8
  %233 = load ptr, ptr %232, align 8
  %234 = load i32, ptr %tag.addr, align 4
  %cmp377 = icmp ugt i32 %234, 65535
  %cond379 = select i1 %cmp377, ptr @.str.14, ptr @.str.6
  %call380 = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %232, i32 noundef %234) #4
  %field_name381 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call380, i64 0, i32 7
  %235 = load ptr, ptr %field_name381, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13, ptr noundef %233, ptr noundef nonnull %cond379, ptr noundef %235) #4
  store i32 0, ptr %status, align 4
  br label %sw.epilog382

sw.epilog382:                                     ; preds = %sw.bb344, %if.then352, %for.cond, %if.then290, %if.else296, %sw.bb201, %if.then208, %sw.bb196, %if.end112, %if.then118, %if.then94, %if.else97, %if.end50, %if.then53, %if.then33, %sw.bb5, %if.then15, %if.then22, %if.else17, %if.then10, %sw.default375, %sw.bb370, %sw.bb365, %sw.bb360, %sw.bb358, %sw.bb355, %sw.bb336, %sw.bb333, %sw.bb331, %sw.bb314, %sw.bb312, %sw.bb304, %sw.bb301, %sw.bb299, %sw.bb283, %sw.bb281, %sw.bb278, %sw.bb276, %sw.bb274, %sw.bb272, %sw.bb270, %if.end269, %sw.bb262, %if.end259, %sw.epilog, %if.end243, %if.end234, %if.end220, %sw.bb181, %sw.bb173, %sw.bb165, %if.end163, %sw.bb152, %sw.bb149, %sw.bb147, %if.end145, %sw.bb134, %sw.bb131, %sw.bb129, %sw.bb127, %sw.bb124, %sw.bb121, %if.end105, %sw.bb86, %sw.bb84, %sw.bb82, %sw.bb80, %sw.bb78, %sw.bb76, %sw.bb74, %sw.bb72, %if.end70, %sw.bb60, %sw.bb57, %sw.bb3, %sw.bb1, %sw.bb
  %236 = load i32, ptr %status, align 4
  %tobool383.not = icmp eq i32 %236, 0
  br i1 %tobool383.not, label %if.end400, label %if.then384

if.then384:                                       ; preds = %sw.epilog382
  %237 = load ptr, ptr %tif.addr, align 8
  %238 = load i32, ptr %tag.addr, align 4
  %call385 = call ptr @_TIFFFieldWithTag(ptr noundef %237, i32 noundef %238) #4
  %field_bit = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call385, i64 0, i32 4
  %239 = load i16, ptr %field_bit, align 4
  %240 = and i16 %239, 31
  %sh_prom388 = zext i16 %240 to i64
  %shl389 = shl i64 1, %sh_prom388
  %241 = load ptr, ptr %tif.addr, align 8
  %tif_dir390 = getelementptr inbounds %struct.tiff, ptr %241, i64 0, i32 6
  %242 = load i32, ptr %tag.addr, align 4
  %call392 = call ptr @_TIFFFieldWithTag(ptr noundef %241, i32 noundef %242) #4
  %field_bit393 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call392, i64 0, i32 4
  %243 = load i16, ptr %field_bit393, align 4
  %244 = lshr i16 %243, 5
  %idxprom395 = zext i16 %244 to i64
  %arrayidx396 = getelementptr inbounds [3 x i64], ptr %tif_dir390, i64 0, i64 %idxprom395
  %245 = load i64, ptr %arrayidx396, align 8
  %or397 = or i64 %245, %shl389
  store i64 %or397, ptr %arrayidx396, align 8
  %246 = load ptr, ptr %tif.addr, align 8
  %tif_flags398 = getelementptr inbounds %struct.tiff, ptr %246, i64 0, i32 3
  %247 = load i32, ptr %tif_flags398, align 8
  %or399 = or i32 %247, 8
  store i32 %or399, ptr %tif_flags398, align 8
  br label %if.end400

if.end400:                                        ; preds = %if.then384, %sw.epilog382
  call void @llvm.va_end(ptr %ap.addr)
  %248 = load i32, ptr %status, align 4
  store i32 %248, ptr %retval, align 4
  br label %return

badvalue:                                         ; preds = %sw.bb251, %sw.bb244, %sw.bb196, %sw.bb155, %sw.bb137, %sw.bb100, %sw.bb63
  %249 = load ptr, ptr %tif.addr, align 8
  %250 = load ptr, ptr %249, align 8
  %251 = load i32, ptr %v, align 4
  %252 = load i32, ptr %tag.addr, align 4
  %call402 = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %249, i32 noundef %252) #4
  %field_name403 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call402, i64 0, i32 7
  %253 = load ptr, ptr %field_name403, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %250, ptr noundef nonnull @.str.15, i32 noundef %251, ptr noundef %253) #4
  call void @llvm.va_end(ptr %ap.addr)
  store i32 0, ptr %retval, align 4
  br label %return

badvalue32:                                       ; preds = %sw.bb238, %if.then227, %if.then213, %sw.bb107
  %254 = load ptr, ptr %tif.addr, align 8
  %255 = load ptr, ptr %254, align 8
  %256 = load i32, ptr %v32, align 4
  %257 = load i32, ptr %tag.addr, align 4
  %call405 = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %254, i32 noundef %257) #4
  %field_name406 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call405, i64 0, i32 7
  %258 = load ptr, ptr %field_name406, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %255, ptr noundef nonnull @.str.16, i32 noundef %256, ptr noundef %258) #4
  call void @llvm.va_end(ptr %ap.addr)
  store i32 0, ptr %retval, align 4
  br label %return

badvaluedbl:                                      ; preds = %sw.bb264
  %259 = load ptr, ptr %tif.addr, align 8
  %260 = load ptr, ptr %259, align 8
  %261 = load double, ptr %d, align 8
  %262 = load i32, ptr %tag.addr, align 4
  %call408 = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %259, i32 noundef %262) #4
  %field_name409 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call408, i64 0, i32 7
  %263 = load ptr, ptr %field_name409, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %260, ptr noundef nonnull @.str.17, double noundef %261, ptr noundef %263) #4
  call void @llvm.va_end(ptr %ap.addr)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %badvaluedbl, %badvalue32, %badvalue, %if.end400
  %264 = load i32, ptr %retval, align 4
  ret i32 %264
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @_TIFFVGetField(ptr noundef %tif, i32 noundef %tag, ptr noundef %ap) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %ap.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %tag, ptr %tag.addr, align 4
  store ptr %ap, ptr %ap.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  switch i32 %tag, label %sw.default [
    i32 254, label %sw.bb
    i32 256, label %sw.bb1
    i32 257, label %sw.bb3
    i32 258, label %sw.bb5
    i32 259, label %sw.bb7
    i32 262, label %sw.bb9
    i32 263, label %sw.bb11
    i32 266, label %sw.bb13
    i32 269, label %sw.bb15
    i32 315, label %sw.bb17
    i32 306, label %sw.bb19
    i32 316, label %sw.bb21
    i32 270, label %sw.bb23
    i32 271, label %sw.bb25
    i32 272, label %sw.bb27
    i32 305, label %sw.bb29
    i32 274, label %sw.bb31
    i32 277, label %sw.bb33
    i32 278, label %sw.bb35
    i32 280, label %sw.bb37
    i32 281, label %sw.bb39
    i32 340, label %sw.bb41
    i32 341, label %sw.bb43
    i32 282, label %sw.bb45
    i32 283, label %sw.bb47
    i32 284, label %sw.bb49
    i32 286, label %sw.bb51
    i32 287, label %sw.bb53
    i32 285, label %sw.bb55
    i32 296, label %sw.bb57
    i32 297, label %sw.bb59
    i32 321, label %sw.bb64
    i32 320, label %sw.bb70
    i32 273, label %sw.bb79
    i32 324, label %sw.bb79
    i32 279, label %sw.bb81
    i32 325, label %sw.bb81
    i32 32995, label %sw.bb83
    i32 338, label %sw.bb91
    i32 322, label %sw.bb96
    i32 323, label %sw.bb98
    i32 32998, label %sw.bb100
    i32 32996, label %sw.bb102
    i32 339, label %sw.bb112
    i32 32997, label %sw.bb115
    i32 37439, label %sw.bb117
    i32 330, label %sw.bb119
    i32 529, label %sw.bb122
    i32 531, label %sw.bb124
    i32 530, label %sw.bb126
    i32 318, label %sw.bb132
    i32 319, label %sw.bb134
    i32 301, label %sw.bb136
    i32 532, label %sw.bb151
    i32 332, label %sw.bb153
    i32 336, label %sw.bb155
    i32 333, label %sw.bb161
    i32 334, label %sw.bb163
    i32 337, label %sw.bb165
    i32 34675, label %sw.bb167
    i32 34377, label %sw.bb170
    i32 33723, label %sw.bb173
    i32 33300, label %sw.bb176
    i32 33301, label %sw.bb178
    i32 33302, label %sw.bb180
    i32 33303, label %sw.bb182
    i32 33304, label %sw.bb184
    i32 33305, label %sw.bb186
    i32 33306, label %sw.bb188
  ]

sw.bb:                                            ; preds = %entry
  %0 = load ptr, ptr %td, align 8
  %td_subfiletype = getelementptr inbounds %struct.TIFFDirectory, ptr %0, i64 0, i32 7
  %1 = load i32, ptr %td_subfiletype, align 8
  %2 = va_arg ptr %ap.addr, ptr
  store i32 %1, ptr %2, align 4
  br label %sw.epilog192

sw.bb1:                                           ; preds = %entry
  %3 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i64 0, i32 1
  %4 = load i32, ptr %td_imagewidth, align 8
  %5 = va_arg ptr %ap.addr, ptr
  store i32 %4, ptr %5, align 4
  br label %sw.epilog192

sw.bb3:                                           ; preds = %entry
  %6 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i64 0, i32 2
  %7 = load i32, ptr %td_imagelength, align 4
  %8 = va_arg ptr %ap.addr, ptr
  store i32 %7, ptr %8, align 4
  br label %sw.epilog192

sw.bb5:                                           ; preds = %entry
  %9 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %9, i64 0, i32 8
  %10 = load i16, ptr %td_bitspersample, align 4
  %11 = va_arg ptr %ap.addr, ptr
  store i16 %10, ptr %11, align 2
  br label %sw.epilog192

sw.bb7:                                           ; preds = %entry
  %12 = load ptr, ptr %td, align 8
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %12, i64 0, i32 10
  %13 = load i16, ptr %td_compression, align 8
  %14 = va_arg ptr %ap.addr, ptr
  store i16 %13, ptr %14, align 2
  br label %sw.epilog192

sw.bb9:                                           ; preds = %entry
  %15 = load ptr, ptr %td, align 8
  %td_photometric = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i64 0, i32 11
  %16 = load i16, ptr %td_photometric, align 2
  %17 = va_arg ptr %ap.addr, ptr
  store i16 %16, ptr %17, align 2
  br label %sw.epilog192

sw.bb11:                                          ; preds = %entry
  %18 = load ptr, ptr %td, align 8
  %td_threshholding = getelementptr inbounds %struct.TIFFDirectory, ptr %18, i64 0, i32 12
  %19 = load i16, ptr %td_threshholding, align 4
  %20 = va_arg ptr %ap.addr, ptr
  store i16 %19, ptr %20, align 2
  br label %sw.epilog192

sw.bb13:                                          ; preds = %entry
  %21 = load ptr, ptr %td, align 8
  %td_fillorder = getelementptr inbounds %struct.TIFFDirectory, ptr %21, i64 0, i32 13
  %22 = load i16, ptr %td_fillorder, align 2
  %23 = va_arg ptr %ap.addr, ptr
  store i16 %22, ptr %23, align 2
  br label %sw.epilog192

sw.bb15:                                          ; preds = %entry
  %24 = load ptr, ptr %td, align 8
  %td_documentname = getelementptr inbounds %struct.TIFFDirectory, ptr %24, i64 0, i32 33
  %25 = load ptr, ptr %td_documentname, align 8
  %26 = va_arg ptr %ap.addr, ptr
  store ptr %25, ptr %26, align 8
  br label %sw.epilog192

sw.bb17:                                          ; preds = %entry
  %27 = load ptr, ptr %td, align 8
  %td_artist = getelementptr inbounds %struct.TIFFDirectory, ptr %27, i64 0, i32 34
  %28 = load ptr, ptr %td_artist, align 8
  %29 = va_arg ptr %ap.addr, ptr
  store ptr %28, ptr %29, align 8
  br label %sw.epilog192

sw.bb19:                                          ; preds = %entry
  %30 = load ptr, ptr %td, align 8
  %td_datetime = getelementptr inbounds %struct.TIFFDirectory, ptr %30, i64 0, i32 35
  %31 = load ptr, ptr %td_datetime, align 8
  %32 = va_arg ptr %ap.addr, ptr
  store ptr %31, ptr %32, align 8
  br label %sw.epilog192

sw.bb21:                                          ; preds = %entry
  %33 = load ptr, ptr %td, align 8
  %td_hostcomputer = getelementptr inbounds %struct.TIFFDirectory, ptr %33, i64 0, i32 36
  %34 = load ptr, ptr %td_hostcomputer, align 8
  %35 = va_arg ptr %ap.addr, ptr
  store ptr %34, ptr %35, align 8
  br label %sw.epilog192

sw.bb23:                                          ; preds = %entry
  %36 = load ptr, ptr %td, align 8
  %td_imagedescription = getelementptr inbounds %struct.TIFFDirectory, ptr %36, i64 0, i32 37
  %37 = load ptr, ptr %td_imagedescription, align 8
  %38 = va_arg ptr %ap.addr, ptr
  store ptr %37, ptr %38, align 8
  br label %sw.epilog192

sw.bb25:                                          ; preds = %entry
  %39 = load ptr, ptr %td, align 8
  %td_make = getelementptr inbounds %struct.TIFFDirectory, ptr %39, i64 0, i32 38
  %40 = load ptr, ptr %td_make, align 8
  %41 = va_arg ptr %ap.addr, ptr
  store ptr %40, ptr %41, align 8
  br label %sw.epilog192

sw.bb27:                                          ; preds = %entry
  %42 = load ptr, ptr %td, align 8
  %td_model = getelementptr inbounds %struct.TIFFDirectory, ptr %42, i64 0, i32 39
  %43 = load ptr, ptr %td_model, align 8
  %44 = va_arg ptr %ap.addr, ptr
  store ptr %43, ptr %44, align 8
  br label %sw.epilog192

sw.bb29:                                          ; preds = %entry
  %45 = load ptr, ptr %td, align 8
  %td_software = getelementptr inbounds %struct.TIFFDirectory, ptr %45, i64 0, i32 40
  %46 = load ptr, ptr %td_software, align 8
  %47 = va_arg ptr %ap.addr, ptr
  store ptr %46, ptr %47, align 8
  br label %sw.epilog192

sw.bb31:                                          ; preds = %entry
  %48 = load ptr, ptr %td, align 8
  %td_orientation = getelementptr inbounds %struct.TIFFDirectory, ptr %48, i64 0, i32 14
  %49 = load i16, ptr %td_orientation, align 8
  %50 = va_arg ptr %ap.addr, ptr
  store i16 %49, ptr %50, align 2
  br label %sw.epilog192

sw.bb33:                                          ; preds = %entry
  %51 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %51, i64 0, i32 15
  %52 = load i16, ptr %td_samplesperpixel, align 2
  %53 = va_arg ptr %ap.addr, ptr
  store i16 %52, ptr %53, align 2
  br label %sw.epilog192

sw.bb35:                                          ; preds = %entry
  %54 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %54, i64 0, i32 16
  %55 = load i32, ptr %td_rowsperstrip, align 4
  %56 = va_arg ptr %ap.addr, ptr
  store i32 %55, ptr %56, align 4
  br label %sw.epilog192

sw.bb37:                                          ; preds = %entry
  %57 = load ptr, ptr %td, align 8
  %td_minsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %57, i64 0, i32 17
  %58 = load i16, ptr %td_minsamplevalue, align 8
  %59 = va_arg ptr %ap.addr, ptr
  store i16 %58, ptr %59, align 2
  br label %sw.epilog192

sw.bb39:                                          ; preds = %entry
  %60 = load ptr, ptr %td, align 8
  %td_maxsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %60, i64 0, i32 18
  %61 = load i16, ptr %td_maxsamplevalue, align 2
  %62 = va_arg ptr %ap.addr, ptr
  store i16 %61, ptr %62, align 2
  br label %sw.epilog192

sw.bb41:                                          ; preds = %entry
  %63 = load ptr, ptr %td, align 8
  %td_sminsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %63, i64 0, i32 19
  %64 = load double, ptr %td_sminsamplevalue, align 8
  %65 = va_arg ptr %ap.addr, ptr
  store double %64, ptr %65, align 8
  br label %sw.epilog192

sw.bb43:                                          ; preds = %entry
  %66 = load ptr, ptr %td, align 8
  %td_smaxsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %66, i64 0, i32 20
  %67 = load double, ptr %td_smaxsamplevalue, align 8
  %68 = va_arg ptr %ap.addr, ptr
  store double %67, ptr %68, align 8
  br label %sw.epilog192

sw.bb45:                                          ; preds = %entry
  %69 = load ptr, ptr %td, align 8
  %td_xresolution = getelementptr inbounds %struct.TIFFDirectory, ptr %69, i64 0, i32 21
  %70 = load float, ptr %td_xresolution, align 8
  %71 = va_arg ptr %ap.addr, ptr
  store float %70, ptr %71, align 4
  br label %sw.epilog192

sw.bb47:                                          ; preds = %entry
  %72 = load ptr, ptr %td, align 8
  %td_yresolution = getelementptr inbounds %struct.TIFFDirectory, ptr %72, i64 0, i32 22
  %73 = load float, ptr %td_yresolution, align 4
  %74 = va_arg ptr %ap.addr, ptr
  store float %73, ptr %74, align 4
  br label %sw.epilog192

sw.bb49:                                          ; preds = %entry
  %75 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %75, i64 0, i32 24
  %76 = load i16, ptr %td_planarconfig, align 2
  %77 = va_arg ptr %ap.addr, ptr
  store i16 %76, ptr %77, align 2
  br label %sw.epilog192

sw.bb51:                                          ; preds = %entry
  %78 = load ptr, ptr %td, align 8
  %td_xposition = getelementptr inbounds %struct.TIFFDirectory, ptr %78, i64 0, i32 25
  %79 = load float, ptr %td_xposition, align 4
  %80 = va_arg ptr %ap.addr, ptr
  store float %79, ptr %80, align 4
  br label %sw.epilog192

sw.bb53:                                          ; preds = %entry
  %81 = load ptr, ptr %td, align 8
  %td_yposition = getelementptr inbounds %struct.TIFFDirectory, ptr %81, i64 0, i32 26
  %82 = load float, ptr %td_yposition, align 8
  %83 = va_arg ptr %ap.addr, ptr
  store float %82, ptr %83, align 4
  br label %sw.epilog192

sw.bb55:                                          ; preds = %entry
  %84 = load ptr, ptr %td, align 8
  %td_pagename = getelementptr inbounds %struct.TIFFDirectory, ptr %84, i64 0, i32 41
  %85 = load ptr, ptr %td_pagename, align 8
  %86 = va_arg ptr %ap.addr, ptr
  store ptr %85, ptr %86, align 8
  br label %sw.epilog192

sw.bb57:                                          ; preds = %entry
  %87 = load ptr, ptr %td, align 8
  %td_resolutionunit = getelementptr inbounds %struct.TIFFDirectory, ptr %87, i64 0, i32 23
  %88 = load i16, ptr %td_resolutionunit, align 8
  %89 = va_arg ptr %ap.addr, ptr
  store i16 %88, ptr %89, align 2
  br label %sw.epilog192

sw.bb59:                                          ; preds = %entry
  %90 = load ptr, ptr %td, align 8
  %td_pagenumber = getelementptr inbounds %struct.TIFFDirectory, ptr %90, i64 0, i32 27
  %91 = load i16, ptr %td_pagenumber, align 4
  %92 = va_arg ptr %ap.addr, ptr
  store i16 %91, ptr %92, align 2
  %93 = load ptr, ptr %td, align 8
  %arrayidx62 = getelementptr inbounds %struct.TIFFDirectory, ptr %93, i64 0, i32 27, i64 1
  %94 = load i16, ptr %arrayidx62, align 2
  %95 = va_arg ptr %ap.addr, ptr
  store i16 %94, ptr %95, align 2
  br label %sw.epilog192

sw.bb64:                                          ; preds = %entry
  %96 = load ptr, ptr %td, align 8
  %td_halftonehints = getelementptr inbounds %struct.TIFFDirectory, ptr %96, i64 0, i32 29
  %97 = load i16, ptr %td_halftonehints, align 8
  %98 = va_arg ptr %ap.addr, ptr
  store i16 %97, ptr %98, align 2
  %99 = load ptr, ptr %td, align 8
  %arrayidx68 = getelementptr inbounds %struct.TIFFDirectory, ptr %99, i64 0, i32 29, i64 1
  %100 = load i16, ptr %arrayidx68, align 2
  %101 = va_arg ptr %ap.addr, ptr
  store i16 %100, ptr %101, align 2
  br label %sw.epilog192

sw.bb70:                                          ; preds = %entry
  %102 = load ptr, ptr %td, align 8
  %td_colormap = getelementptr inbounds %struct.TIFFDirectory, ptr %102, i64 0, i32 28
  %103 = load ptr, ptr %td_colormap, align 8
  %104 = va_arg ptr %ap.addr, ptr
  store ptr %103, ptr %104, align 8
  %105 = load ptr, ptr %td, align 8
  %arrayidx74 = getelementptr inbounds %struct.TIFFDirectory, ptr %105, i64 0, i32 28, i64 1
  %106 = load ptr, ptr %arrayidx74, align 8
  %107 = va_arg ptr %ap.addr, ptr
  store ptr %106, ptr %107, align 8
  %108 = load ptr, ptr %td, align 8
  %arrayidx77 = getelementptr inbounds %struct.TIFFDirectory, ptr %108, i64 0, i32 28, i64 2
  %109 = load ptr, ptr %arrayidx77, align 8
  %110 = va_arg ptr %ap.addr, ptr
  store ptr %109, ptr %110, align 8
  br label %sw.epilog192

sw.bb79:                                          ; preds = %entry, %entry
  %111 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %111, i64 0, i32 44
  %112 = load ptr, ptr %td_stripoffset, align 8
  %113 = va_arg ptr %ap.addr, ptr
  store ptr %112, ptr %113, align 8
  br label %sw.epilog192

sw.bb81:                                          ; preds = %entry, %entry
  %114 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %114, i64 0, i32 45
  %115 = load ptr, ptr %td_stripbytecount, align 8
  %116 = va_arg ptr %ap.addr, ptr
  store ptr %115, ptr %116, align 8
  br label %sw.epilog192

sw.bb83:                                          ; preds = %entry
  %117 = load ptr, ptr %td, align 8
  %td_extrasamples = getelementptr inbounds %struct.TIFFDirectory, ptr %117, i64 0, i32 30
  %118 = load i16, ptr %td_extrasamples, align 4
  %cmp = icmp eq i16 %118, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb83
  %119 = load ptr, ptr %td, align 8
  %td_sampleinfo = getelementptr inbounds %struct.TIFFDirectory, ptr %119, i64 0, i32 31
  %120 = load ptr, ptr %td_sampleinfo, align 8
  %121 = load i16, ptr %120, align 2
  %cmp87 = icmp eq i16 %121, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb83
  %122 = phi i1 [ false, %sw.bb83 ], [ %cmp87, %land.rhs ]
  %conv89 = zext i1 %122 to i16
  %123 = va_arg ptr %ap.addr, ptr
  store i16 %conv89, ptr %123, align 2
  br label %sw.epilog192

sw.bb91:                                          ; preds = %entry
  %124 = load ptr, ptr %td, align 8
  %td_extrasamples92 = getelementptr inbounds %struct.TIFFDirectory, ptr %124, i64 0, i32 30
  %125 = load i16, ptr %td_extrasamples92, align 4
  %126 = va_arg ptr %ap.addr, ptr
  store i16 %125, ptr %126, align 2
  %127 = load ptr, ptr %td, align 8
  %td_sampleinfo94 = getelementptr inbounds %struct.TIFFDirectory, ptr %127, i64 0, i32 31
  %128 = load ptr, ptr %td_sampleinfo94, align 8
  %129 = va_arg ptr %ap.addr, ptr
  store ptr %128, ptr %129, align 8
  br label %sw.epilog192

sw.bb96:                                          ; preds = %entry
  %130 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %130, i64 0, i32 4
  %131 = load i32, ptr %td_tilewidth, align 4
  %132 = va_arg ptr %ap.addr, ptr
  store i32 %131, ptr %132, align 4
  br label %sw.epilog192

sw.bb98:                                          ; preds = %entry
  %133 = load ptr, ptr %td, align 8
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %133, i64 0, i32 5
  %134 = load i32, ptr %td_tilelength, align 8
  %135 = va_arg ptr %ap.addr, ptr
  store i32 %134, ptr %135, align 4
  br label %sw.epilog192

sw.bb100:                                         ; preds = %entry
  %136 = load ptr, ptr %td, align 8
  %td_tiledepth = getelementptr inbounds %struct.TIFFDirectory, ptr %136, i64 0, i32 6
  %137 = load i32, ptr %td_tiledepth, align 4
  %138 = va_arg ptr %ap.addr, ptr
  store i32 %137, ptr %138, align 4
  br label %sw.epilog192

sw.bb102:                                         ; preds = %entry
  %139 = load ptr, ptr %td, align 8
  %td_sampleformat = getelementptr inbounds %struct.TIFFDirectory, ptr %139, i64 0, i32 9
  %140 = load i16, ptr %td_sampleformat, align 2
  switch i16 %140, label %sw.epilog192 [
    i16 1, label %sw.bb104
    i16 2, label %sw.bb106
    i16 3, label %sw.bb108
    i16 4, label %sw.bb110
  ]

sw.bb104:                                         ; preds = %sw.bb102
  %141 = va_arg ptr %ap.addr, ptr
  store i16 2, ptr %141, align 2
  br label %sw.epilog192

sw.bb106:                                         ; preds = %sw.bb102
  %142 = va_arg ptr %ap.addr, ptr
  store i16 1, ptr %142, align 2
  br label %sw.epilog192

sw.bb108:                                         ; preds = %sw.bb102
  %143 = va_arg ptr %ap.addr, ptr
  store i16 3, ptr %143, align 2
  br label %sw.epilog192

sw.bb110:                                         ; preds = %sw.bb102
  %144 = va_arg ptr %ap.addr, ptr
  store i16 0, ptr %144, align 2
  br label %sw.epilog192

sw.bb112:                                         ; preds = %entry
  %145 = load ptr, ptr %td, align 8
  %td_sampleformat113 = getelementptr inbounds %struct.TIFFDirectory, ptr %145, i64 0, i32 9
  %146 = load i16, ptr %td_sampleformat113, align 2
  %147 = va_arg ptr %ap.addr, ptr
  store i16 %146, ptr %147, align 2
  br label %sw.epilog192

sw.bb115:                                         ; preds = %entry
  %148 = load ptr, ptr %td, align 8
  %td_imagedepth = getelementptr inbounds %struct.TIFFDirectory, ptr %148, i64 0, i32 3
  %149 = load i32, ptr %td_imagedepth, align 8
  %150 = va_arg ptr %ap.addr, ptr
  store i32 %149, ptr %150, align 4
  br label %sw.epilog192

sw.bb117:                                         ; preds = %entry
  %151 = load ptr, ptr %td, align 8
  %td_stonits = getelementptr inbounds %struct.TIFFDirectory, ptr %151, i64 0, i32 32
  %152 = load double, ptr %td_stonits, align 8
  %153 = va_arg ptr %ap.addr, ptr
  store double %152, ptr %153, align 8
  br label %sw.epilog192

sw.bb119:                                         ; preds = %entry
  %154 = load ptr, ptr %td, align 8
  %td_nsubifd = getelementptr inbounds %struct.TIFFDirectory, ptr %154, i64 0, i32 46
  %155 = load i16, ptr %td_nsubifd, align 8
  %156 = va_arg ptr %ap.addr, ptr
  store i16 %155, ptr %156, align 2
  %157 = load ptr, ptr %td, align 8
  %td_subifd = getelementptr inbounds %struct.TIFFDirectory, ptr %157, i64 0, i32 47
  %158 = load ptr, ptr %td_subifd, align 8
  %159 = va_arg ptr %ap.addr, ptr
  store ptr %158, ptr %159, align 8
  br label %sw.epilog192

sw.bb122:                                         ; preds = %entry
  %160 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs = getelementptr inbounds %struct.TIFFDirectory, ptr %160, i64 0, i32 48
  %161 = load ptr, ptr %td_ycbcrcoeffs, align 8
  %162 = va_arg ptr %ap.addr, ptr
  store ptr %161, ptr %162, align 8
  br label %sw.epilog192

sw.bb124:                                         ; preds = %entry
  %163 = load ptr, ptr %td, align 8
  %td_ycbcrpositioning = getelementptr inbounds %struct.TIFFDirectory, ptr %163, i64 0, i32 50
  %164 = load i16, ptr %td_ycbcrpositioning, align 4
  %165 = va_arg ptr %ap.addr, ptr
  store i16 %164, ptr %165, align 2
  br label %sw.epilog192

sw.bb126:                                         ; preds = %entry
  %166 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling = getelementptr inbounds %struct.TIFFDirectory, ptr %166, i64 0, i32 49
  %167 = load i16, ptr %td_ycbcrsubsampling, align 8
  %168 = va_arg ptr %ap.addr, ptr
  store i16 %167, ptr %168, align 2
  %169 = load ptr, ptr %td, align 8
  %arrayidx130 = getelementptr inbounds %struct.TIFFDirectory, ptr %169, i64 0, i32 49, i64 1
  %170 = load i16, ptr %arrayidx130, align 2
  %171 = va_arg ptr %ap.addr, ptr
  store i16 %170, ptr %171, align 2
  br label %sw.epilog192

sw.bb132:                                         ; preds = %entry
  %172 = load ptr, ptr %td, align 8
  %td_whitepoint = getelementptr inbounds %struct.TIFFDirectory, ptr %172, i64 0, i32 51
  %173 = load ptr, ptr %td_whitepoint, align 8
  %174 = va_arg ptr %ap.addr, ptr
  store ptr %173, ptr %174, align 8
  br label %sw.epilog192

sw.bb134:                                         ; preds = %entry
  %175 = load ptr, ptr %td, align 8
  %td_primarychromas = getelementptr inbounds %struct.TIFFDirectory, ptr %175, i64 0, i32 52
  %176 = load ptr, ptr %td_primarychromas, align 8
  %177 = va_arg ptr %ap.addr, ptr
  store ptr %176, ptr %177, align 8
  br label %sw.epilog192

sw.bb136:                                         ; preds = %entry
  %178 = load ptr, ptr %td, align 8
  %td_transferfunction = getelementptr inbounds %struct.TIFFDirectory, ptr %178, i64 0, i32 54
  %179 = load ptr, ptr %td_transferfunction, align 8
  %180 = va_arg ptr %ap.addr, ptr
  store ptr %179, ptr %180, align 8
  %181 = load ptr, ptr %td, align 8
  %td_samplesperpixel139 = getelementptr inbounds %struct.TIFFDirectory, ptr %181, i64 0, i32 15
  %182 = load i16, ptr %td_samplesperpixel139, align 2
  %conv140 = zext i16 %182 to i32
  %td_extrasamples141 = getelementptr inbounds %struct.TIFFDirectory, ptr %181, i64 0, i32 30
  %183 = load i16, ptr %td_extrasamples141, align 4
  %conv142 = zext i16 %183 to i32
  %sub = sub nsw i32 %conv140, %conv142
  %cmp143 = icmp sgt i32 %sub, 1
  br i1 %cmp143, label %if.then, label %sw.epilog192

if.then:                                          ; preds = %sw.bb136
  %184 = load ptr, ptr %td, align 8
  %arrayidx146 = getelementptr inbounds %struct.TIFFDirectory, ptr %184, i64 0, i32 54, i64 1
  %185 = load ptr, ptr %arrayidx146, align 8
  %186 = va_arg ptr %ap.addr, ptr
  store ptr %185, ptr %186, align 8
  %187 = load ptr, ptr %td, align 8
  %arrayidx149 = getelementptr inbounds %struct.TIFFDirectory, ptr %187, i64 0, i32 54, i64 2
  %188 = load ptr, ptr %arrayidx149, align 8
  %189 = va_arg ptr %ap.addr, ptr
  store ptr %188, ptr %189, align 8
  br label %sw.epilog192

sw.bb151:                                         ; preds = %entry
  %190 = load ptr, ptr %td, align 8
  %td_refblackwhite = getelementptr inbounds %struct.TIFFDirectory, ptr %190, i64 0, i32 53
  %191 = load ptr, ptr %td_refblackwhite, align 8
  %192 = va_arg ptr %ap.addr, ptr
  store ptr %191, ptr %192, align 8
  br label %sw.epilog192

sw.bb153:                                         ; preds = %entry
  %193 = load ptr, ptr %td, align 8
  %td_inkset = getelementptr inbounds %struct.TIFFDirectory, ptr %193, i64 0, i32 55
  %194 = load i16, ptr %td_inkset, align 8
  %195 = va_arg ptr %ap.addr, ptr
  store i16 %194, ptr %195, align 2
  br label %sw.epilog192

sw.bb155:                                         ; preds = %entry
  %196 = load ptr, ptr %td, align 8
  %td_dotrange = getelementptr inbounds %struct.TIFFDirectory, ptr %196, i64 0, i32 57
  %197 = load i16, ptr %td_dotrange, align 4
  %198 = va_arg ptr %ap.addr, ptr
  store i16 %197, ptr %198, align 2
  %199 = load ptr, ptr %td, align 8
  %arrayidx159 = getelementptr inbounds %struct.TIFFDirectory, ptr %199, i64 0, i32 57, i64 1
  %200 = load i16, ptr %arrayidx159, align 2
  %201 = va_arg ptr %ap.addr, ptr
  store i16 %200, ptr %201, align 2
  br label %sw.epilog192

sw.bb161:                                         ; preds = %entry
  %202 = load ptr, ptr %td, align 8
  %td_inknames = getelementptr inbounds %struct.TIFFDirectory, ptr %202, i64 0, i32 59
  %203 = load ptr, ptr %td_inknames, align 8
  %204 = va_arg ptr %ap.addr, ptr
  store ptr %203, ptr %204, align 8
  br label %sw.epilog192

sw.bb163:                                         ; preds = %entry
  %205 = load ptr, ptr %td, align 8
  %td_ninks = getelementptr inbounds %struct.TIFFDirectory, ptr %205, i64 0, i32 56
  %206 = load i16, ptr %td_ninks, align 2
  %207 = va_arg ptr %ap.addr, ptr
  store i16 %206, ptr %207, align 2
  br label %sw.epilog192

sw.bb165:                                         ; preds = %entry
  %208 = load ptr, ptr %td, align 8
  %td_targetprinter = getelementptr inbounds %struct.TIFFDirectory, ptr %208, i64 0, i32 60
  %209 = load ptr, ptr %td_targetprinter, align 8
  %210 = va_arg ptr %ap.addr, ptr
  store ptr %209, ptr %210, align 8
  br label %sw.epilog192

sw.bb167:                                         ; preds = %entry
  %211 = load ptr, ptr %td, align 8
  %td_profileLength = getelementptr inbounds %struct.TIFFDirectory, ptr %211, i64 0, i32 61
  %212 = load i32, ptr %td_profileLength, align 8
  %213 = va_arg ptr %ap.addr, ptr
  store i32 %212, ptr %213, align 4
  %214 = load ptr, ptr %td, align 8
  %td_profileData = getelementptr inbounds %struct.TIFFDirectory, ptr %214, i64 0, i32 62
  %215 = load ptr, ptr %td_profileData, align 8
  %216 = va_arg ptr %ap.addr, ptr
  store ptr %215, ptr %216, align 8
  br label %sw.epilog192

sw.bb170:                                         ; preds = %entry
  %217 = load ptr, ptr %td, align 8
  %td_photoshopLength = getelementptr inbounds %struct.TIFFDirectory, ptr %217, i64 0, i32 63
  %218 = load i32, ptr %td_photoshopLength, align 8
  %219 = va_arg ptr %ap.addr, ptr
  store i32 %218, ptr %219, align 4
  %220 = load ptr, ptr %td, align 8
  %td_photoshopData = getelementptr inbounds %struct.TIFFDirectory, ptr %220, i64 0, i32 64
  %221 = load ptr, ptr %td_photoshopData, align 8
  %222 = va_arg ptr %ap.addr, ptr
  store ptr %221, ptr %222, align 8
  br label %sw.epilog192

sw.bb173:                                         ; preds = %entry
  %223 = load ptr, ptr %td, align 8
  %td_richtiffiptcLength = getelementptr inbounds %struct.TIFFDirectory, ptr %223, i64 0, i32 65
  %224 = load i32, ptr %td_richtiffiptcLength, align 8
  %225 = va_arg ptr %ap.addr, ptr
  store i32 %224, ptr %225, align 4
  %226 = load ptr, ptr %td, align 8
  %td_richtiffiptcData = getelementptr inbounds %struct.TIFFDirectory, ptr %226, i64 0, i32 66
  %227 = load ptr, ptr %td_richtiffiptcData, align 8
  %228 = va_arg ptr %ap.addr, ptr
  store ptr %227, ptr %228, align 8
  br label %sw.epilog192

sw.bb176:                                         ; preds = %entry
  %229 = load ptr, ptr %td, align 8
  %td_imagefullwidth = getelementptr inbounds %struct.TIFFDirectory, ptr %229, i64 0, i32 67
  %230 = load i32, ptr %td_imagefullwidth, align 8
  %231 = va_arg ptr %ap.addr, ptr
  store i32 %230, ptr %231, align 4
  br label %sw.epilog192

sw.bb178:                                         ; preds = %entry
  %232 = load ptr, ptr %td, align 8
  %td_imagefulllength = getelementptr inbounds %struct.TIFFDirectory, ptr %232, i64 0, i32 68
  %233 = load i32, ptr %td_imagefulllength, align 4
  %234 = va_arg ptr %ap.addr, ptr
  store i32 %233, ptr %234, align 4
  br label %sw.epilog192

sw.bb180:                                         ; preds = %entry
  %235 = load ptr, ptr %td, align 8
  %td_textureformat = getelementptr inbounds %struct.TIFFDirectory, ptr %235, i64 0, i32 69
  %236 = load ptr, ptr %td_textureformat, align 8
  %237 = va_arg ptr %ap.addr, ptr
  store ptr %236, ptr %237, align 8
  br label %sw.epilog192

sw.bb182:                                         ; preds = %entry
  %238 = load ptr, ptr %td, align 8
  %td_wrapmodes = getelementptr inbounds %struct.TIFFDirectory, ptr %238, i64 0, i32 70
  %239 = load ptr, ptr %td_wrapmodes, align 8
  %240 = va_arg ptr %ap.addr, ptr
  store ptr %239, ptr %240, align 8
  br label %sw.epilog192

sw.bb184:                                         ; preds = %entry
  %241 = load ptr, ptr %td, align 8
  %td_fovcot = getelementptr inbounds %struct.TIFFDirectory, ptr %241, i64 0, i32 71
  %242 = load float, ptr %td_fovcot, align 8
  %243 = va_arg ptr %ap.addr, ptr
  store float %242, ptr %243, align 4
  br label %sw.epilog192

sw.bb186:                                         ; preds = %entry
  %244 = load ptr, ptr %td, align 8
  %td_matrixWorldToScreen = getelementptr inbounds %struct.TIFFDirectory, ptr %244, i64 0, i32 72
  %245 = load ptr, ptr %td_matrixWorldToScreen, align 8
  %246 = va_arg ptr %ap.addr, ptr
  store ptr %245, ptr %246, align 8
  br label %sw.epilog192

sw.bb188:                                         ; preds = %entry
  %247 = load ptr, ptr %td, align 8
  %td_matrixWorldToCamera = getelementptr inbounds %struct.TIFFDirectory, ptr %247, i64 0, i32 73
  %248 = load ptr, ptr %td_matrixWorldToCamera, align 8
  %249 = va_arg ptr %ap.addr, ptr
  store ptr %248, ptr %249, align 8
  br label %sw.epilog192

sw.default:                                       ; preds = %entry
  %250 = load ptr, ptr %tif.addr, align 8
  %251 = load ptr, ptr %250, align 8
  %252 = load i32, ptr %tag.addr, align 4
  %cmp190 = icmp ugt i32 %252, 65535
  %cond = select i1 %cmp190, ptr @.str.5, ptr @.str.6
  %call = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %250, i32 noundef %252) #4
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call, i64 0, i32 7
  %253 = load ptr, ptr %field_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.13, ptr noundef %251, ptr noundef nonnull %cond, ptr noundef %253) #4
  br label %sw.epilog192

sw.epilog192:                                     ; preds = %sw.bb136, %if.then, %sw.bb102, %sw.bb104, %sw.bb106, %sw.bb108, %sw.bb110, %sw.default, %sw.bb188, %sw.bb186, %sw.bb184, %sw.bb182, %sw.bb180, %sw.bb178, %sw.bb176, %sw.bb173, %sw.bb170, %sw.bb167, %sw.bb165, %sw.bb163, %sw.bb161, %sw.bb155, %sw.bb153, %sw.bb151, %sw.bb134, %sw.bb132, %sw.bb126, %sw.bb124, %sw.bb122, %sw.bb119, %sw.bb117, %sw.bb115, %sw.bb112, %sw.bb100, %sw.bb98, %sw.bb96, %sw.bb91, %land.end, %sw.bb81, %sw.bb79, %sw.bb70, %sw.bb64, %sw.bb59, %sw.bb57, %sw.bb55, %sw.bb53, %sw.bb51, %sw.bb49, %sw.bb47, %sw.bb45, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define zeroext i16 @TIFFNumberOfDirectories(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %nextdir = alloca i32, align 4
  %n = alloca i16, align 2
  store ptr %tif, ptr %tif.addr, align 8
  %tiff_diroff = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 7, i32 2
  %0 = load i32, ptr %tiff_diroff, align 4
  store i32 %0, ptr %nextdir, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %storemerge = phi i16 [ 0, %entry ], [ %inc, %while.body ]
  store i16 %storemerge, ptr %n, align 2
  %1 = load i32, ptr %nextdir, align 4
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %2 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFAdvanceDirectory(ptr noundef %2, ptr noundef nonnull %nextdir, ptr noundef null)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %3 = load i16, ptr %n, align 2
  %inc = add i16 %3, 1
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond, %land.rhs
  %4 = load i16, ptr %n, align 2
  ret i16 %4
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFAdvanceDirectory(ptr noundef %tif, ptr noundef %nextdir, ptr noundef %off) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %nextdir.addr = alloca ptr, align 8
  %off.addr = alloca ptr, align 8
  %dircount = alloca i16, align 2
  %poff = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %nextdir, ptr %nextdir.addr, align 8
  store ptr %off, ptr %off.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 3
  %0 = load i32, ptr %tif_flags, align 8
  %and = and i32 %0, 2048
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %nextdir.addr, align 8
  %2 = load i32, ptr %1, align 4
  store i32 %2, ptr %poff, align 4
  %add = add i32 %2, 2
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_size = getelementptr inbounds %struct.tiff, ptr %3, i64 0, i32 45
  %4 = load i32, ptr %tif_size, align 8
  %cmp2 = icmp sgt i32 %add, %4
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %5 = load ptr, ptr %tif.addr, align 8
  %6 = load ptr, ptr %5, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFAdvanceDirectory.module, ptr noundef nonnull @.str.20, ptr noundef %6) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_base = getelementptr inbounds %struct.tiff, ptr %7, i64 0, i32 44
  %8 = load ptr, ptr %tif_base, align 8
  %9 = load i32, ptr %poff, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 %idx.ext
  call void @_TIFFmemcpy(ptr noundef nonnull %dircount, ptr noundef %add.ptr, i32 noundef 2) #4
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_flags5 = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 3
  %11 = load i32, ptr %tif_flags5, align 8
  %and6 = and i32 %11, 128
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @TIFFSwabShort(ptr noundef nonnull %dircount) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %12 = load i16, ptr %dircount, align 2
  %conv9 = zext i16 %12 to i32
  %mul = mul nuw nsw i32 %conv9, 12
  %add10 = or i32 %mul, 2
  %13 = load i32, ptr %poff, align 4
  %add12 = add i32 %add10, %13
  store i32 %add12, ptr %poff, align 4
  %14 = load ptr, ptr %off.addr, align 8
  %cmp14.not = icmp eq ptr %14, null
  br i1 %cmp14.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end8
  %15 = load i32, ptr %poff, align 4
  %16 = load ptr, ptr %off.addr, align 8
  store i32 %15, ptr %16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end8
  %17 = load i32, ptr %poff, align 4
  %add19 = add i32 %17, 4
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_size21 = getelementptr inbounds %struct.tiff, ptr %18, i64 0, i32 45
  %19 = load i32, ptr %tif_size21, align 8
  %cmp22 = icmp sgt i32 %add19, %19
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end17
  %20 = load ptr, ptr %tif.addr, align 8
  %21 = load ptr, ptr %20, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFAdvanceDirectory.module, ptr noundef nonnull @.str.21, ptr noundef %21) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end17
  %22 = load ptr, ptr %nextdir.addr, align 8
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_base27 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 44
  %24 = load ptr, ptr %tif_base27, align 8
  %25 = load i32, ptr %poff, align 4
  %idx.ext28 = sext i32 %25 to i64
  %add.ptr29 = getelementptr inbounds i8, ptr %24, i64 %idx.ext28
  call void @_TIFFmemcpy(ptr noundef %22, ptr noundef %add.ptr29, i32 noundef 4) #4
  %26 = load ptr, ptr %tif.addr, align 8
  %tif_flags30 = getelementptr inbounds %struct.tiff, ptr %26, i64 0, i32 3
  %27 = load i32, ptr %tif_flags30, align 8
  %and31 = and i32 %27, 128
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end26
  %28 = load ptr, ptr %nextdir.addr, align 8
  call void @TIFFSwabLong(ptr noundef %28) #4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end26
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %29, i64 0, i32 51
  %30 = load ptr, ptr %tif_seekproc, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %29, i64 0, i32 48
  %31 = load ptr, ptr %tif_clientdata, align 8
  %32 = load ptr, ptr %nextdir.addr, align 8
  %33 = load i32, ptr %32, align 4
  %call = call i32 %30(ptr noundef %31, i32 noundef %33, i32 noundef 0) #4
  %34 = load i32, ptr %32, align 4
  %cmp35 = icmp eq i32 %call, %34
  br i1 %cmp35, label %lor.lhs.false, label %if.then41

lor.lhs.false:                                    ; preds = %if.else
  %35 = load ptr, ptr %tif.addr, align 8
  %tif_readproc = getelementptr inbounds %struct.tiff, ptr %35, i64 0, i32 49
  %36 = load ptr, ptr %tif_readproc, align 8
  %tif_clientdata37 = getelementptr inbounds %struct.tiff, ptr %35, i64 0, i32 48
  %37 = load ptr, ptr %tif_clientdata37, align 8
  %call38 = call i32 %36(ptr noundef %37, ptr noundef nonnull %dircount, i32 noundef 2) #4
  %cmp39 = icmp eq i32 %call38, 2
  br i1 %cmp39, label %if.end43, label %if.then41

if.then41:                                        ; preds = %lor.lhs.false, %if.else
  %38 = load ptr, ptr %tif.addr, align 8
  %39 = load ptr, ptr %38, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFAdvanceDirectory.module, ptr noundef nonnull @.str.20, ptr noundef %39) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %lor.lhs.false
  %40 = load ptr, ptr %tif.addr, align 8
  %tif_flags44 = getelementptr inbounds %struct.tiff, ptr %40, i64 0, i32 3
  %41 = load i32, ptr %tif_flags44, align 8
  %and45 = and i32 %41, 128
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end48, label %if.then47

if.then47:                                        ; preds = %if.end43
  call void @TIFFSwabShort(ptr noundef nonnull %dircount) #4
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end43
  %42 = load ptr, ptr %off.addr, align 8
  %cmp49.not = icmp eq ptr %42, null
  br i1 %cmp49.not, label %if.else58, label %if.then51

if.then51:                                        ; preds = %if.end48
  %43 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc52 = getelementptr inbounds %struct.tiff, ptr %43, i64 0, i32 51
  %44 = load ptr, ptr %tif_seekproc52, align 8
  %tif_clientdata53 = getelementptr inbounds %struct.tiff, ptr %43, i64 0, i32 48
  %45 = load ptr, ptr %tif_clientdata53, align 8
  %46 = load i16, ptr %dircount, align 2
  %conv54 = zext i16 %46 to i32
  %mul55 = mul nuw nsw i32 %conv54, 12
  %call57 = call i32 %44(ptr noundef %45, i32 noundef %mul55, i32 noundef 1) #4
  %47 = load ptr, ptr %off.addr, align 8
  store i32 %call57, ptr %47, align 4
  br label %if.end65

if.else58:                                        ; preds = %if.end48
  %48 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc59 = getelementptr inbounds %struct.tiff, ptr %48, i64 0, i32 51
  %49 = load ptr, ptr %tif_seekproc59, align 8
  %tif_clientdata60 = getelementptr inbounds %struct.tiff, ptr %48, i64 0, i32 48
  %50 = load ptr, ptr %tif_clientdata60, align 8
  %51 = load i16, ptr %dircount, align 2
  %conv61 = zext i16 %51 to i32
  %mul62 = mul nuw nsw i32 %conv61, 12
  %call64 = call i32 %49(ptr noundef %50, i32 noundef %mul62, i32 noundef 1) #4
  br label %if.end65

if.end65:                                         ; preds = %if.else58, %if.then51
  %52 = load ptr, ptr %tif.addr, align 8
  %tif_readproc66 = getelementptr inbounds %struct.tiff, ptr %52, i64 0, i32 49
  %53 = load ptr, ptr %tif_readproc66, align 8
  %tif_clientdata67 = getelementptr inbounds %struct.tiff, ptr %52, i64 0, i32 48
  %54 = load ptr, ptr %tif_clientdata67, align 8
  %55 = load ptr, ptr %nextdir.addr, align 8
  %call68 = call i32 %53(ptr noundef %54, ptr noundef %55, i32 noundef 4) #4
  %cmp69 = icmp eq i32 %call68, 4
  br i1 %cmp69, label %if.end73, label %if.then71

if.then71:                                        ; preds = %if.end65
  %56 = load ptr, ptr %tif.addr, align 8
  %57 = load ptr, ptr %56, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFAdvanceDirectory.module, ptr noundef nonnull @.str.21, ptr noundef %57) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end73:                                         ; preds = %if.end65
  %58 = load ptr, ptr %tif.addr, align 8
  %tif_flags74 = getelementptr inbounds %struct.tiff, ptr %58, i64 0, i32 3
  %59 = load i32, ptr %tif_flags74, align 8
  %and75 = and i32 %59, 128
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end78, label %if.then77

if.then77:                                        ; preds = %if.end73
  %60 = load ptr, ptr %nextdir.addr, align 8
  call void @TIFFSwabLong(ptr noundef %60) #4
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end73
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end78, %if.then71, %if.then41, %if.end34, %if.then24, %if.then4
  %61 = load i32, ptr %retval, align 4
  ret i32 %61
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFSetDirectory(ptr noundef %tif, i16 noundef zeroext %dirn) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %dirn.addr = alloca i16, align 2
  %nextdir = alloca i32, align 4
  %n = alloca i16, align 2
  store ptr %tif, ptr %tif.addr, align 8
  store i16 %dirn, ptr %dirn.addr, align 2
  %tiff_diroff = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 7, i32 2
  %0 = load i32, ptr %tiff_diroff, align 4
  store i32 %0, ptr %nextdir, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i16 [ %dirn, %entry ], [ %dec, %for.inc ]
  store i16 %storemerge, ptr %n, align 2
  %cmp.not = icmp eq i16 %storemerge, 0
  %1 = load i32, ptr %nextdir, align 4
  %cmp2 = icmp ne i32 %1, 0
  %2 = select i1 %cmp.not, i1 false, i1 %cmp2
  br i1 %2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFAdvanceDirectory(ptr noundef %3, ptr noundef nonnull %nextdir, ptr noundef null)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i16, ptr %n, align 2
  %dec = add i16 %4, -1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %5 = load i32, ptr %nextdir, align 4
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_nextdiroff = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 5
  store i32 %5, ptr %tif_nextdiroff, align 8
  %7 = load i16, ptr %dirn.addr, align 2
  %8 = load i16, ptr %n, align 2
  %9 = xor i16 %8, -1
  %sub6 = add i16 %7, %9
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_curdir = getelementptr inbounds %struct.tiff, ptr %10, i64 0, i32 12
  store i16 %sub6, ptr %tif_curdir, align 4
  %call8 = call i32 @TIFFReadDirectory(ptr noundef %10) #4
  br label %return

return:                                           ; preds = %for.body, %for.end
  %storemerge1 = phi i32 [ %call8, %for.end ], [ 0, %for.body ]
  ret i32 %storemerge1
}

declare i32 @TIFFReadDirectory(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFSetSubDirectory(ptr noundef %tif, i32 noundef %diroff) #0 {
entry:
  %tif_nextdiroff = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 5
  store i32 %diroff, ptr %tif_nextdiroff, align 8
  %call = call i32 @TIFFReadDirectory(ptr noundef %tif) #4
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFCurrentDirOffset(ptr noundef %tif) #0 {
entry:
  %tif_diroff = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 4
  %0 = load i32, ptr %tif_diroff, align 4
  ret i32 %0
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFLastDirectory(ptr noundef %tif) #0 {
entry:
  %tif_nextdiroff = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 5
  %0 = load i32, ptr %tif_nextdiroff, align 8
  %cmp = icmp eq i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFUnlinkDirectory(ptr noundef %tif, i16 noundef zeroext %dirn) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %dirn.addr = alloca i16, align 2
  %nextdir = alloca i32, align 4
  %off = alloca i32, align 4
  %n = alloca i16, align 2
  store ptr %tif, ptr %tif.addr, align 8
  store i16 %dirn, ptr %dirn.addr, align 2
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 2
  %0 = load i32, ptr %tif_mode, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFUnlinkDirectory.module, ptr noundef nonnull @.str) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %tif.addr, align 8
  %tiff_diroff = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 7, i32 2
  %2 = load i32, ptr %tiff_diroff, align 4
  store i32 %2, ptr %nextdir, align 4
  store i32 4, ptr %off, align 4
  %3 = load i16, ptr %dirn.addr, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %storemerge.in = phi i16 [ %3, %if.end ], [ %7, %for.inc ]
  %storemerge = add i16 %storemerge.in, -1
  store i16 %storemerge, ptr %n, align 2
  %cmp3.not = icmp eq i16 %storemerge, 0
  br i1 %cmp3.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %nextdir, align 4
  %cmp5 = icmp eq i32 %4, 0
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %for.body
  %5 = load i16, ptr %dirn.addr, align 2
  %conv8 = zext i16 %5 to i32
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFUnlinkDirectory.module, ptr noundef nonnull @.str.1, i32 noundef %conv8) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %for.body
  %6 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFAdvanceDirectory(ptr noundef %6, ptr noundef nonnull %nextdir, ptr noundef nonnull %off)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then10, label %for.inc

if.then10:                                        ; preds = %if.end9
  store i32 0, ptr %retval, align 4
  br label %return

for.inc:                                          ; preds = %if.end9
  %7 = load i16, ptr %n, align 2
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %tif.addr, align 8
  %call12 = call i32 @TIFFAdvanceDirectory(ptr noundef %8, ptr noundef nonnull %nextdir, ptr noundef null)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %for.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %for.end
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 51
  %10 = load ptr, ptr %tif_seekproc, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %9, i64 0, i32 48
  %11 = load ptr, ptr %tif_clientdata, align 8
  %12 = load i32, ptr %off, align 4
  %call16 = call i32 %10(ptr noundef %11, i32 noundef %12, i32 noundef 0) #4
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %13, i64 0, i32 3
  %14 = load i32, ptr %tif_flags, align 8
  %and = and i32 %14, 128
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @TIFFSwabLong(ptr noundef nonnull %nextdir) #4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc = getelementptr inbounds %struct.tiff, ptr %15, i64 0, i32 50
  %16 = load ptr, ptr %tif_writeproc, align 8
  %tif_clientdata20 = getelementptr inbounds %struct.tiff, ptr %15, i64 0, i32 48
  %17 = load ptr, ptr %tif_clientdata20, align 8
  %call21 = call i32 %16(ptr noundef %17, ptr noundef nonnull %nextdir, i32 noundef 4) #4
  %cmp22 = icmp eq i32 %call21, 4
  br i1 %cmp22, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end19
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFUnlinkDirectory.module, ptr noundef nonnull @.str.2) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end19
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_cleanup = getelementptr inbounds %struct.tiff, ptr %18, i64 0, i32 34
  %19 = load ptr, ptr %tif_cleanup, align 8
  call void %19(ptr noundef %18) #4
  %tif_flags26 = getelementptr inbounds %struct.tiff, ptr %18, i64 0, i32 3
  %20 = load i32, ptr %tif_flags26, align 8
  %and27 = and i32 %20, 512
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end33, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end25
  %21 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %21, i64 0, i32 40
  %22 = load ptr, ptr %tif_rawdata, align 8
  %tobool29.not = icmp eq ptr %22, null
  br i1 %tobool29.not, label %if.end33, label %if.then30

if.then30:                                        ; preds = %land.lhs.true
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata31 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 40
  %24 = load ptr, ptr %tif_rawdata31, align 8
  call void @_TIFFfree(ptr noundef %24) #4
  %tif_rawdata32 = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 40
  store ptr null, ptr %tif_rawdata32, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %23, i64 0, i32 43
  store i32 0, ptr %tif_rawcc, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %land.lhs.true, %if.end25
  %25 = load ptr, ptr %tif.addr, align 8
  %tif_flags34 = getelementptr inbounds %struct.tiff, ptr %25, i64 0, i32 3
  %26 = load i32, ptr %tif_flags34, align 8
  %and35 = and i32 %26, -4177
  store i32 %and35, ptr %tif_flags34, align 8
  call void @TIFFFreeDirectory(ptr noundef %25)
  %call36 = call i32 @TIFFDefaultDirectory(ptr noundef %25)
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_diroff = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 4
  store i32 0, ptr %tif_diroff, align 4
  %tif_nextdiroff = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 5
  store i32 0, ptr %tif_nextdiroff, align 8
  %tif_curoff = getelementptr inbounds %struct.tiff, ptr %27, i64 0, i32 14
  store i32 0, ptr %tif_curoff, align 4
  %28 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 11
  store i32 -1, ptr %tif_row, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %28, i64 0, i32 13
  store i32 -1, ptr %tif_curstrip, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end33, %if.then24, %if.then14, %if.then10, %if.then7, %if.then
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

declare void @TIFFSwabLong(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFReassignTagToIgnore(i32 noundef %task, i32 noundef %TIFFtagID) #0 {
entry:
  %retval = alloca i32, align 4
  %TIFFtagID.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %TIFFtagID, ptr %TIFFtagID.addr, align 4
  switch i32 %task, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %for.cond9
    i32 2, label %sw.bb20
  ]

sw.bb:                                            ; preds = %entry
  %0 = load i32, ptr @TIFFReassignTagToIgnore.tagcount, align 4
  %cmp = icmp slt i32 %0, 94
  br i1 %cmp, label %for.cond, label %sw.epilog

for.cond:                                         ; preds = %sw.bb, %for.inc
  %storemerge1 = phi i32 [ %inc, %for.inc ], [ 0, %sw.bb ]
  store i32 %storemerge1, ptr %j, align 4
  %1 = load i32, ptr @TIFFReassignTagToIgnore.tagcount, align 4
  %cmp1 = icmp slt i32 %storemerge1, %1
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %j, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [95 x i32], ptr @TIFFReassignTagToIgnore.TIFFignoretags, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %4 = load i32, ptr %TIFFtagID.addr, align 4
  %cmp2 = icmp eq i32 %3, %4
  br i1 %cmp2, label %if.then3, label %for.inc

if.then3:                                         ; preds = %for.body
  store i32 1, ptr %retval, align 4
  br label %return

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %j, align 4
  %inc = add nsw i32 %5, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %6 = load i32, ptr %TIFFtagID.addr, align 4
  %7 = load i32, ptr @TIFFReassignTagToIgnore.tagcount, align 4
  %inc4 = add nsw i32 %7, 1
  store i32 %inc4, ptr @TIFFReassignTagToIgnore.tagcount, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [95 x i32], ptr @TIFFReassignTagToIgnore.TIFFignoretags, i64 0, i64 %idxprom5
  store i32 %6, ptr %arrayidx6, align 4
  store i32 1, ptr %retval, align 4
  br label %return

for.cond9:                                        ; preds = %entry, %for.inc17
  %storemerge = phi i32 [ %inc18, %for.inc17 ], [ 0, %entry ]
  store i32 %storemerge, ptr %i, align 4
  %8 = load i32, ptr @TIFFReassignTagToIgnore.tagcount, align 4
  %cmp10 = icmp slt i32 %storemerge, %8
  br i1 %cmp10, label %for.body11, label %sw.epilog

for.body11:                                       ; preds = %for.cond9
  %9 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [95 x i32], ptr @TIFFReassignTagToIgnore.TIFFignoretags, i64 0, i64 %idxprom12
  %10 = load i32, ptr %arrayidx13, align 4
  %11 = load i32, ptr %TIFFtagID.addr, align 4
  %cmp14 = icmp eq i32 %10, %11
  br i1 %cmp14, label %if.then15, label %for.inc17

if.then15:                                        ; preds = %for.body11
  store i32 1, ptr %retval, align 4
  br label %return

for.inc17:                                        ; preds = %for.body11
  %12 = load i32, ptr %i, align 4
  %inc18 = add nsw i32 %12, 1
  br label %for.cond9, !llvm.loop !12

sw.bb20:                                          ; preds = %entry
  store i32 0, ptr @TIFFReassignTagToIgnore.tagcount, align 4
  store i32 1, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %entry, %for.cond9, %sw.bb
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb20, %if.then15, %for.end, %if.then3
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

declare void @_TIFFSwab16BitData(ptr noundef, ptr noundef, i32 noundef) #1

declare void @_TIFFSwab32BitData(ptr noundef, ptr noundef, i32 noundef) #1

declare void @_TIFFSwab64BitData(ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @TIFFSetCompressionScheme(ptr noundef, i32 noundef) #1

declare void @TIFFWarning(ptr noundef, ptr noundef, ...) #1

declare ptr @_TIFFFieldWithTag(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @setExtraSamples(ptr noundef %td, ptr noundef %ap, ptr noundef %v) #0 {
entry:
  %retval = alloca i32, align 4
  %td.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %va = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %td, ptr %td.addr, align 8
  store ptr %ap, ptr %ap.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  %0 = va_arg ptr %ap.addr, i32
  store i32 %0, ptr %v, align 4
  %conv1 = and i32 %0, 65535
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %td, i64 0, i32 15
  %1 = load i16, ptr %td_samplesperpixel, align 2
  %conv2 = zext i16 %1 to i32
  %cmp = icmp ugt i32 %conv1, %conv2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = va_arg ptr %ap.addr, ptr
  store ptr %2, ptr %va, align 8
  %3 = load ptr, ptr %v.addr, align 8
  %4 = load i32, ptr %3, align 4
  %cmp5 = icmp sgt i32 %4, 0
  %5 = load ptr, ptr %va, align 8
  %cmp7 = icmp eq ptr %5, null
  %or.cond = select i1 %cmp5, i1 %cmp7, i1 false
  br i1 %or.cond, label %if.then9, label %for.cond

if.then9:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

for.cond:                                         ; preds = %if.end, %for.inc
  %storemerge = phi i32 [ %inc, %for.inc ], [ 0, %if.end ]
  store i32 %storemerge, ptr %i, align 4
  %6 = load ptr, ptr %v.addr, align 8
  %7 = load i32, ptr %6, align 4
  %cmp11 = icmp slt i32 %storemerge, %7
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %va, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i16, ptr %8, i64 %idxprom
  %10 = load i16, ptr %arrayidx, align 2
  %cmp14 = icmp ugt i16 %10, 2
  br i1 %cmp14, label %if.then16, label %for.inc

if.then16:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  br label %return

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %v.addr, align 8
  %13 = load i32, ptr %12, align 4
  %conv18 = trunc i32 %13 to i16
  %14 = load ptr, ptr %td.addr, align 8
  %td_extrasamples = getelementptr inbounds %struct.TIFFDirectory, ptr %14, i64 0, i32 30
  store i16 %conv18, ptr %td_extrasamples, align 4
  %td_sampleinfo = getelementptr inbounds %struct.TIFFDirectory, ptr %14, i64 0, i32 31
  %15 = load ptr, ptr %va, align 8
  %conv18.mask = and i32 %13, 65535
  %conv20 = zext i32 %conv18.mask to i64
  call void @_TIFFsetShortArray(ptr noundef nonnull %td_sampleinfo, ptr noundef %15, i64 noundef %conv20)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then16, %if.then9, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @checkInkNamesString(ptr noundef %tif, i32 noundef %slen, ptr noundef %s) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %slen.addr = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %i = alloca i32, align 4
  %ep = alloca ptr, align 8
  %cp = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %slen, ptr %slen.addr, align 4
  store ptr %s, ptr %s.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6, i32 15
  %0 = load i16, ptr %td_samplesperpixel, align 2
  %conv = zext i16 %0 to i32
  store i32 %conv, ptr %i, align 4
  %1 = load i32, ptr %slen.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %bad

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8
  %3 = load i32, ptr %slen.addr, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %idx.ext
  store ptr %add.ptr, ptr %ep, align 8
  store ptr %2, ptr %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end, %if.then
  %4 = load i32, ptr %i, align 4
  %cmp2 = icmp sgt i32 %4, 0
  br i1 %cmp2, label %for.cond4, label %for.end14

for.cond4:                                        ; preds = %for.cond, %for.inc
  %5 = load ptr, ptr %cp, align 8
  %6 = load i8, ptr %5, align 1
  %cmp6.not = icmp eq i8 %6, 0
  br i1 %cmp6.not, label %for.end, label %for.body8

for.body8:                                        ; preds = %for.cond4
  %7 = load ptr, ptr %cp, align 8
  %8 = load ptr, ptr %ep, align 8
  %cmp9.not = icmp ult ptr %7, %8
  br i1 %cmp9.not, label %for.inc, label %bad

for.inc:                                          ; preds = %for.body8
  %9 = load ptr, ptr %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %incdec.ptr, ptr %cp, align 8
  br label %for.cond4, !llvm.loop !14

for.end:                                          ; preds = %for.cond4
  %10 = load ptr, ptr %cp, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %incdec.ptr12, ptr %cp, align 8
  %11 = load i32, ptr %i, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !15

for.end14:                                        ; preds = %for.cond
  %12 = load ptr, ptr %cp, align 8
  %13 = load ptr, ptr %s.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %12 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv15 = trunc i64 %sub.ptr.sub to i32
  br label %return

bad:                                              ; preds = %entry, %for.body8
  %14 = load ptr, ptr %tif.addr, align 8
  %15 = load ptr, ptr %14, align 8
  %16 = load ptr, ptr %td, align 8
  %td_samplesperpixel17 = getelementptr inbounds %struct.TIFFDirectory, ptr %16, i64 0, i32 15
  %17 = load i16, ptr %td_samplesperpixel17, align 2
  %conv18 = zext i16 %17 to i32
  %conv20 = zext i16 %17 to i32
  %18 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %conv20, %18
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18, ptr noundef %15, i32 noundef %conv18, i32 noundef %sub) #4
  br label %return

return:                                           ; preds = %bad, %for.end14
  %storemerge = phi i32 [ 0, %bad ], [ %conv15, %for.end14 ]
  ret i32 %storemerge
}

declare void @TIFFSwabShort(ptr noundef) #1

; Function Attrs: alwaysinline nounwind ssp uwtable
define i32 @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2bw_tif_dir_0(ptr noundef %tif, i32 noundef %tag, ...) #3 {
entry:
  %ap = alloca ptr, align 8
  call void @llvm.va_start(ptr nonnull %ap)
  %0 = load ptr, ptr %ap, align 8
  %call = call i32 @TIFFVSetField(ptr noundef %tif, i32 noundef %tag, ptr noundef %0)
  call void @llvm.va_end(ptr %ap)
  ret i32 %call
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { alwaysinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
