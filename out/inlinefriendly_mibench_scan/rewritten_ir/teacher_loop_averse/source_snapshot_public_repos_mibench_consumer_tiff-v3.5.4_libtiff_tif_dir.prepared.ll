; ModuleID = './source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_dir.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_dir.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i64, i64, i64, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i64, i16, i64, i64, i64, i16, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, ptr, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i64, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i64, ptr, i64, ptr, i64, ptr, i64, i64, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i64 }
%struct.TIFFFieldInfo = type { i64, i16, i16, i32, i16, i8, i8, ptr }

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
  %0 = load ptr, ptr %vpp.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %vpp.addr, align 8
  %3 = load ptr, ptr %2, align 8
  call void @_TIFFfree(ptr noundef %3)
  %4 = load ptr, ptr %vpp.addr, align 8
  store ptr null, ptr %4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %vp.addr, align 8
  %tobool1 = icmp ne ptr %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %6 = load i64, ptr %n.addr, align 8
  %call = call ptr @_TIFFmalloc(i64 noundef %6)
  %7 = load ptr, ptr %vpp.addr, align 8
  store ptr %call, ptr %7, align 8
  %tobool2 = icmp ne ptr %call, null
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %vpp.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %vp.addr, align 8
  %11 = load i64, ptr %n.addr, align 8
  call void @_TIFFmemcpy(ptr noundef %9, ptr noundef %10, i64 noundef %11)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  ret void
}

declare void @_TIFFfree(ptr noundef) #1

declare ptr @_TIFFmalloc(i64 noundef) #1

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @_TIFFsetString(ptr noundef %cpp, ptr noundef %cp) #0 {
entry:
  %cpp.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  store ptr %cpp, ptr %cpp.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  %0 = load ptr, ptr %cpp.addr, align 8
  %1 = load ptr, ptr %cp.addr, align 8
  %2 = load ptr, ptr %cp.addr, align 8
  %call = call i64 @strlen(ptr noundef %2)
  %add = add i64 %call, 1
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %add)
  ret void
}

declare i64 @strlen(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @_TIFFsetNString(ptr noundef %cpp, ptr noundef %cp, i64 noundef %n) #0 {
entry:
  %cpp.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %cpp, ptr %cpp.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %cpp.addr, align 8
  %1 = load ptr, ptr %cp.addr, align 8
  %2 = load i64, ptr %n.addr, align 8
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_TIFFsetShortArray(ptr noundef %wpp, ptr noundef %wp, i64 noundef %n) #0 {
entry:
  %wpp.addr = alloca ptr, align 8
  %wp.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %wpp, ptr %wpp.addr, align 8
  store ptr %wp, ptr %wp.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %wpp.addr, align 8
  %1 = load ptr, ptr %wp.addr, align 8
  %2 = load i64, ptr %n.addr, align 8
  %mul = mul i64 %2, 2
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %mul)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_TIFFsetLongArray(ptr noundef %lpp, ptr noundef %lp, i64 noundef %n) #0 {
entry:
  %lpp.addr = alloca ptr, align 8
  %lp.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %lpp, ptr %lpp.addr, align 8
  store ptr %lp, ptr %lp.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %lpp.addr, align 8
  %1 = load ptr, ptr %lp.addr, align 8
  %2 = load i64, ptr %n.addr, align 8
  %mul = mul i64 %2, 8
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %mul)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_TIFFsetFloatArray(ptr noundef %fpp, ptr noundef %fp, i64 noundef %n) #0 {
entry:
  %fpp.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %fpp, ptr %fpp.addr, align 8
  store ptr %fp, ptr %fp.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %fpp.addr, align 8
  %1 = load ptr, ptr %fp.addr, align 8
  %2 = load i64, ptr %n.addr, align 8
  %mul = mul i64 %2, 4
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %mul)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_TIFFsetDoubleArray(ptr noundef %dpp, ptr noundef %dp, i64 noundef %n) #0 {
entry:
  %dpp.addr = alloca ptr, align 8
  %dp.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %dpp, ptr %dpp.addr, align 8
  store ptr %dp, ptr %dp.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %dpp.addr, align 8
  %1 = load ptr, ptr %dp.addr, align 8
  %2 = load i64, ptr %n.addr, align 8
  %mul = mul i64 %2, 8
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %mul)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFSetField(ptr noundef %tif, i64 noundef %tag, ...) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i64, align 8
  %ap = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tag, ptr %tag.addr, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load i64, ptr %tag.addr, align 8
  %2 = load ptr, ptr %ap, align 8
  %call = call i32 @TIFFVSetField(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  store i32 %call, ptr %status, align 4
  call void @llvm.va_end(ptr %ap)
  %3 = load i32, ptr %status, align 4
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFVSetField(ptr noundef %tif, i64 noundef %tag, ptr noundef %ap) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i64, align 8
  %ap.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tag, ptr %tag.addr, align 8
  store ptr %ap, ptr %ap.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load i64, ptr %tag.addr, align 8
  %call = call i32 @OkToChangeTag(ptr noundef %0, i64 noundef %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_vsetfield = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 57
  %3 = load ptr, ptr %tif_vsetfield, align 8
  %4 = load ptr, ptr %tif.addr, align 8
  %5 = load i64, ptr %tag.addr, align 8
  %6 = load ptr, ptr %ap.addr, align 8
  %call1 = call i32 %3(ptr noundef %4, i64 noundef %5, ptr noundef %6)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @OkToChangeTag(ptr noundef %tif, i64 noundef %tag) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i64, align 8
  %fip = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tag, ptr %tag.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load i64, ptr %tag.addr, align 8
  %call = call ptr @_TIFFFindFieldInfo(ptr noundef %0, i64 noundef %1, i32 noundef 0)
  store ptr %call, ptr %fip, align 8
  %2 = load ptr, ptr %fip, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %tif_name, align 8
  %5 = load i64, ptr %tag.addr, align 8
  %cmp = icmp ugt i64 %5, 65535
  %6 = zext i1 %cmp to i64
  %cond = select i1 %cmp, ptr @.str.5, ptr @.str.6
  %7 = load i64, ptr %tag.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef %4, ptr noundef %cond, i64 noundef %7)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i64, ptr %tag.addr, align 8
  %cmp1 = icmp ne i64 %8, 257
  br i1 %cmp1, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %9, i32 0, i32 3
  %10 = load i64, ptr %tif_flags, align 8
  %and = and i64 %10, 64
  %tobool2 = icmp ne i64 %and, 0
  br i1 %tobool2, label %land.lhs.true3, label %if.end7

land.lhs.true3:                                   ; preds = %land.lhs.true
  %11 = load ptr, ptr %fip, align 8
  %field_oktochange = getelementptr inbounds %struct.TIFFFieldInfo, ptr %11, i32 0, i32 5
  %12 = load i8, ptr %field_oktochange, align 2
  %tobool4 = icmp ne i8 %12, 0
  br i1 %tobool4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %land.lhs.true3
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_name6 = getelementptr inbounds %struct.tiff, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %tif_name6, align 8
  %15 = load ptr, ptr %fip, align 8
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %15, i32 0, i32 7
  %16 = load ptr, ptr %field_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @.str.3, ptr noundef @.str.7, ptr noundef %14, ptr noundef %16)
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %land.lhs.true3, %land.lhs.true, %if.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then5, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFGetField(ptr noundef %tif, i64 noundef %tag, ...) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i64, align 8
  %status = alloca i32, align 4
  %ap = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tag, ptr %tag.addr, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load i64, ptr %tag.addr, align 8
  %2 = load ptr, ptr %ap, align 8
  %call = call i32 @TIFFVGetField(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  store i32 %call, ptr %status, align 4
  call void @llvm.va_end(ptr %ap)
  %3 = load i32, ptr %status, align 4
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFVGetField(ptr noundef %tif, i64 noundef %tag, ptr noundef %ap) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i64, align 8
  %ap.addr = alloca ptr, align 8
  %fip = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tag, ptr %tag.addr, align 8
  store ptr %ap, ptr %ap.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load i64, ptr %tag.addr, align 8
  %call = call ptr @_TIFFFindFieldInfo(ptr noundef %0, i64 noundef %1, i32 noundef 0)
  store ptr %call, ptr %fip, align 8
  %2 = load ptr, ptr %fip, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, ptr %tag.addr, align 8
  %cmp = icmp ugt i64 %3, 65535
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 6
  %td_fieldsset = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir, i32 0, i32 0
  %5 = load ptr, ptr %fip, align 8
  %field_bit = getelementptr inbounds %struct.TIFFFieldInfo, ptr %5, i32 0, i32 4
  %6 = load i16, ptr %field_bit, align 8
  %conv = zext i16 %6 to i32
  %div = sdiv i32 %conv, 32
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds [3 x i64], ptr %td_fieldsset, i64 0, i64 %idxprom
  %7 = load i64, ptr %arrayidx, align 8
  %8 = load ptr, ptr %fip, align 8
  %field_bit1 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %8, i32 0, i32 4
  %9 = load i16, ptr %field_bit1, align 8
  %conv2 = zext i16 %9 to i32
  %and = and i32 %conv2, 31
  %sh_prom = zext i32 %and to i64
  %shl = shl i64 1, %sh_prom
  %and3 = and i64 %7, %shl
  %tobool4 = icmp ne i64 %and3, 0
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_vgetfield = getelementptr inbounds %struct.tiff, ptr %10, i32 0, i32 58
  %11 = load ptr, ptr %tif_vgetfield, align 8
  %12 = load ptr, ptr %tif.addr, align 8
  %13 = load i64, ptr %tag.addr, align 8
  %14 = load ptr, ptr %ap.addr, align 8
  %call5 = call i32 %11(ptr noundef %12, i64 noundef %13, ptr noundef %14)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call5, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond
}

declare ptr @_TIFFFindFieldInfo(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @TIFFFreeDirectory(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_colormap = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 28
  %arrayidx = getelementptr inbounds [3 x ptr], ptr %td_colormap, i64 0, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %td, align 8
  %td_colormap1 = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 28
  %arrayidx2 = getelementptr inbounds [3 x ptr], ptr %td_colormap1, i64 0, i64 0
  %4 = load ptr, ptr %arrayidx2, align 8
  call void @_TIFFfree(ptr noundef %4)
  %5 = load ptr, ptr %td, align 8
  %td_colormap3 = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i32 0, i32 28
  %arrayidx4 = getelementptr inbounds [3 x ptr], ptr %td_colormap3, i64 0, i64 0
  store ptr null, ptr %arrayidx4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %td, align 8
  %td_colormap5 = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i32 0, i32 28
  %arrayidx6 = getelementptr inbounds [3 x ptr], ptr %td_colormap5, i64 0, i64 1
  %7 = load ptr, ptr %arrayidx6, align 8
  %tobool7 = icmp ne ptr %7, null
  br i1 %tobool7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end
  %8 = load ptr, ptr %td, align 8
  %td_colormap9 = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i32 0, i32 28
  %arrayidx10 = getelementptr inbounds [3 x ptr], ptr %td_colormap9, i64 0, i64 1
  %9 = load ptr, ptr %arrayidx10, align 8
  call void @_TIFFfree(ptr noundef %9)
  %10 = load ptr, ptr %td, align 8
  %td_colormap11 = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i32 0, i32 28
  %arrayidx12 = getelementptr inbounds [3 x ptr], ptr %td_colormap11, i64 0, i64 1
  store ptr null, ptr %arrayidx12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end
  %11 = load ptr, ptr %td, align 8
  %td_colormap14 = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i32 0, i32 28
  %arrayidx15 = getelementptr inbounds [3 x ptr], ptr %td_colormap14, i64 0, i64 2
  %12 = load ptr, ptr %arrayidx15, align 8
  %tobool16 = icmp ne ptr %12, null
  br i1 %tobool16, label %if.then17, label %if.end22

if.then17:                                        ; preds = %if.end13
  %13 = load ptr, ptr %td, align 8
  %td_colormap18 = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i32 0, i32 28
  %arrayidx19 = getelementptr inbounds [3 x ptr], ptr %td_colormap18, i64 0, i64 2
  %14 = load ptr, ptr %arrayidx19, align 8
  call void @_TIFFfree(ptr noundef %14)
  %15 = load ptr, ptr %td, align 8
  %td_colormap20 = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i32 0, i32 28
  %arrayidx21 = getelementptr inbounds [3 x ptr], ptr %td_colormap20, i64 0, i64 2
  store ptr null, ptr %arrayidx21, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.end13
  %16 = load ptr, ptr %td, align 8
  %td_documentname = getelementptr inbounds %struct.TIFFDirectory, ptr %16, i32 0, i32 33
  %17 = load ptr, ptr %td_documentname, align 8
  %tobool23 = icmp ne ptr %17, null
  br i1 %tobool23, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end22
  %18 = load ptr, ptr %td, align 8
  %td_documentname25 = getelementptr inbounds %struct.TIFFDirectory, ptr %18, i32 0, i32 33
  %19 = load ptr, ptr %td_documentname25, align 8
  call void @_TIFFfree(ptr noundef %19)
  %20 = load ptr, ptr %td, align 8
  %td_documentname26 = getelementptr inbounds %struct.TIFFDirectory, ptr %20, i32 0, i32 33
  store ptr null, ptr %td_documentname26, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end22
  %21 = load ptr, ptr %td, align 8
  %td_artist = getelementptr inbounds %struct.TIFFDirectory, ptr %21, i32 0, i32 34
  %22 = load ptr, ptr %td_artist, align 8
  %tobool28 = icmp ne ptr %22, null
  br i1 %tobool28, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end27
  %23 = load ptr, ptr %td, align 8
  %td_artist30 = getelementptr inbounds %struct.TIFFDirectory, ptr %23, i32 0, i32 34
  %24 = load ptr, ptr %td_artist30, align 8
  call void @_TIFFfree(ptr noundef %24)
  %25 = load ptr, ptr %td, align 8
  %td_artist31 = getelementptr inbounds %struct.TIFFDirectory, ptr %25, i32 0, i32 34
  store ptr null, ptr %td_artist31, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end27
  %26 = load ptr, ptr %td, align 8
  %td_datetime = getelementptr inbounds %struct.TIFFDirectory, ptr %26, i32 0, i32 35
  %27 = load ptr, ptr %td_datetime, align 8
  %tobool33 = icmp ne ptr %27, null
  br i1 %tobool33, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end32
  %28 = load ptr, ptr %td, align 8
  %td_datetime35 = getelementptr inbounds %struct.TIFFDirectory, ptr %28, i32 0, i32 35
  %29 = load ptr, ptr %td_datetime35, align 8
  call void @_TIFFfree(ptr noundef %29)
  %30 = load ptr, ptr %td, align 8
  %td_datetime36 = getelementptr inbounds %struct.TIFFDirectory, ptr %30, i32 0, i32 35
  store ptr null, ptr %td_datetime36, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end32
  %31 = load ptr, ptr %td, align 8
  %td_hostcomputer = getelementptr inbounds %struct.TIFFDirectory, ptr %31, i32 0, i32 36
  %32 = load ptr, ptr %td_hostcomputer, align 8
  %tobool38 = icmp ne ptr %32, null
  br i1 %tobool38, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end37
  %33 = load ptr, ptr %td, align 8
  %td_hostcomputer40 = getelementptr inbounds %struct.TIFFDirectory, ptr %33, i32 0, i32 36
  %34 = load ptr, ptr %td_hostcomputer40, align 8
  call void @_TIFFfree(ptr noundef %34)
  %35 = load ptr, ptr %td, align 8
  %td_hostcomputer41 = getelementptr inbounds %struct.TIFFDirectory, ptr %35, i32 0, i32 36
  store ptr null, ptr %td_hostcomputer41, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end37
  %36 = load ptr, ptr %td, align 8
  %td_imagedescription = getelementptr inbounds %struct.TIFFDirectory, ptr %36, i32 0, i32 37
  %37 = load ptr, ptr %td_imagedescription, align 8
  %tobool43 = icmp ne ptr %37, null
  br i1 %tobool43, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.end42
  %38 = load ptr, ptr %td, align 8
  %td_imagedescription45 = getelementptr inbounds %struct.TIFFDirectory, ptr %38, i32 0, i32 37
  %39 = load ptr, ptr %td_imagedescription45, align 8
  call void @_TIFFfree(ptr noundef %39)
  %40 = load ptr, ptr %td, align 8
  %td_imagedescription46 = getelementptr inbounds %struct.TIFFDirectory, ptr %40, i32 0, i32 37
  store ptr null, ptr %td_imagedescription46, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end42
  %41 = load ptr, ptr %td, align 8
  %td_make = getelementptr inbounds %struct.TIFFDirectory, ptr %41, i32 0, i32 38
  %42 = load ptr, ptr %td_make, align 8
  %tobool48 = icmp ne ptr %42, null
  br i1 %tobool48, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.end47
  %43 = load ptr, ptr %td, align 8
  %td_make50 = getelementptr inbounds %struct.TIFFDirectory, ptr %43, i32 0, i32 38
  %44 = load ptr, ptr %td_make50, align 8
  call void @_TIFFfree(ptr noundef %44)
  %45 = load ptr, ptr %td, align 8
  %td_make51 = getelementptr inbounds %struct.TIFFDirectory, ptr %45, i32 0, i32 38
  store ptr null, ptr %td_make51, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end47
  %46 = load ptr, ptr %td, align 8
  %td_model = getelementptr inbounds %struct.TIFFDirectory, ptr %46, i32 0, i32 39
  %47 = load ptr, ptr %td_model, align 8
  %tobool53 = icmp ne ptr %47, null
  br i1 %tobool53, label %if.then54, label %if.end57

if.then54:                                        ; preds = %if.end52
  %48 = load ptr, ptr %td, align 8
  %td_model55 = getelementptr inbounds %struct.TIFFDirectory, ptr %48, i32 0, i32 39
  %49 = load ptr, ptr %td_model55, align 8
  call void @_TIFFfree(ptr noundef %49)
  %50 = load ptr, ptr %td, align 8
  %td_model56 = getelementptr inbounds %struct.TIFFDirectory, ptr %50, i32 0, i32 39
  store ptr null, ptr %td_model56, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end52
  %51 = load ptr, ptr %td, align 8
  %td_software = getelementptr inbounds %struct.TIFFDirectory, ptr %51, i32 0, i32 40
  %52 = load ptr, ptr %td_software, align 8
  %tobool58 = icmp ne ptr %52, null
  br i1 %tobool58, label %if.then59, label %if.end62

if.then59:                                        ; preds = %if.end57
  %53 = load ptr, ptr %td, align 8
  %td_software60 = getelementptr inbounds %struct.TIFFDirectory, ptr %53, i32 0, i32 40
  %54 = load ptr, ptr %td_software60, align 8
  call void @_TIFFfree(ptr noundef %54)
  %55 = load ptr, ptr %td, align 8
  %td_software61 = getelementptr inbounds %struct.TIFFDirectory, ptr %55, i32 0, i32 40
  store ptr null, ptr %td_software61, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.end57
  %56 = load ptr, ptr %td, align 8
  %td_pagename = getelementptr inbounds %struct.TIFFDirectory, ptr %56, i32 0, i32 41
  %57 = load ptr, ptr %td_pagename, align 8
  %tobool63 = icmp ne ptr %57, null
  br i1 %tobool63, label %if.then64, label %if.end67

if.then64:                                        ; preds = %if.end62
  %58 = load ptr, ptr %td, align 8
  %td_pagename65 = getelementptr inbounds %struct.TIFFDirectory, ptr %58, i32 0, i32 41
  %59 = load ptr, ptr %td_pagename65, align 8
  call void @_TIFFfree(ptr noundef %59)
  %60 = load ptr, ptr %td, align 8
  %td_pagename66 = getelementptr inbounds %struct.TIFFDirectory, ptr %60, i32 0, i32 41
  store ptr null, ptr %td_pagename66, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end62
  %61 = load ptr, ptr %td, align 8
  %td_sampleinfo = getelementptr inbounds %struct.TIFFDirectory, ptr %61, i32 0, i32 31
  %62 = load ptr, ptr %td_sampleinfo, align 8
  %tobool68 = icmp ne ptr %62, null
  br i1 %tobool68, label %if.then69, label %if.end72

if.then69:                                        ; preds = %if.end67
  %63 = load ptr, ptr %td, align 8
  %td_sampleinfo70 = getelementptr inbounds %struct.TIFFDirectory, ptr %63, i32 0, i32 31
  %64 = load ptr, ptr %td_sampleinfo70, align 8
  call void @_TIFFfree(ptr noundef %64)
  %65 = load ptr, ptr %td, align 8
  %td_sampleinfo71 = getelementptr inbounds %struct.TIFFDirectory, ptr %65, i32 0, i32 31
  store ptr null, ptr %td_sampleinfo71, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.end67
  %66 = load ptr, ptr %td, align 8
  %td_subifd = getelementptr inbounds %struct.TIFFDirectory, ptr %66, i32 0, i32 47
  %67 = load ptr, ptr %td_subifd, align 8
  %tobool73 = icmp ne ptr %67, null
  br i1 %tobool73, label %if.then74, label %if.end77

if.then74:                                        ; preds = %if.end72
  %68 = load ptr, ptr %td, align 8
  %td_subifd75 = getelementptr inbounds %struct.TIFFDirectory, ptr %68, i32 0, i32 47
  %69 = load ptr, ptr %td_subifd75, align 8
  call void @_TIFFfree(ptr noundef %69)
  %70 = load ptr, ptr %td, align 8
  %td_subifd76 = getelementptr inbounds %struct.TIFFDirectory, ptr %70, i32 0, i32 47
  store ptr null, ptr %td_subifd76, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.end72
  %71 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs = getelementptr inbounds %struct.TIFFDirectory, ptr %71, i32 0, i32 48
  %72 = load ptr, ptr %td_ycbcrcoeffs, align 8
  %tobool78 = icmp ne ptr %72, null
  br i1 %tobool78, label %if.then79, label %if.end82

if.then79:                                        ; preds = %if.end77
  %73 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs80 = getelementptr inbounds %struct.TIFFDirectory, ptr %73, i32 0, i32 48
  %74 = load ptr, ptr %td_ycbcrcoeffs80, align 8
  call void @_TIFFfree(ptr noundef %74)
  %75 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs81 = getelementptr inbounds %struct.TIFFDirectory, ptr %75, i32 0, i32 48
  store ptr null, ptr %td_ycbcrcoeffs81, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.end77
  %76 = load ptr, ptr %td, align 8
  %td_inknames = getelementptr inbounds %struct.TIFFDirectory, ptr %76, i32 0, i32 59
  %77 = load ptr, ptr %td_inknames, align 8
  %tobool83 = icmp ne ptr %77, null
  br i1 %tobool83, label %if.then84, label %if.end87

if.then84:                                        ; preds = %if.end82
  %78 = load ptr, ptr %td, align 8
  %td_inknames85 = getelementptr inbounds %struct.TIFFDirectory, ptr %78, i32 0, i32 59
  %79 = load ptr, ptr %td_inknames85, align 8
  call void @_TIFFfree(ptr noundef %79)
  %80 = load ptr, ptr %td, align 8
  %td_inknames86 = getelementptr inbounds %struct.TIFFDirectory, ptr %80, i32 0, i32 59
  store ptr null, ptr %td_inknames86, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %if.end82
  %81 = load ptr, ptr %td, align 8
  %td_targetprinter = getelementptr inbounds %struct.TIFFDirectory, ptr %81, i32 0, i32 60
  %82 = load ptr, ptr %td_targetprinter, align 8
  %tobool88 = icmp ne ptr %82, null
  br i1 %tobool88, label %if.then89, label %if.end92

if.then89:                                        ; preds = %if.end87
  %83 = load ptr, ptr %td, align 8
  %td_targetprinter90 = getelementptr inbounds %struct.TIFFDirectory, ptr %83, i32 0, i32 60
  %84 = load ptr, ptr %td_targetprinter90, align 8
  call void @_TIFFfree(ptr noundef %84)
  %85 = load ptr, ptr %td, align 8
  %td_targetprinter91 = getelementptr inbounds %struct.TIFFDirectory, ptr %85, i32 0, i32 60
  store ptr null, ptr %td_targetprinter91, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %if.end87
  %86 = load ptr, ptr %td, align 8
  %td_whitepoint = getelementptr inbounds %struct.TIFFDirectory, ptr %86, i32 0, i32 51
  %87 = load ptr, ptr %td_whitepoint, align 8
  %tobool93 = icmp ne ptr %87, null
  br i1 %tobool93, label %if.then94, label %if.end97

if.then94:                                        ; preds = %if.end92
  %88 = load ptr, ptr %td, align 8
  %td_whitepoint95 = getelementptr inbounds %struct.TIFFDirectory, ptr %88, i32 0, i32 51
  %89 = load ptr, ptr %td_whitepoint95, align 8
  call void @_TIFFfree(ptr noundef %89)
  %90 = load ptr, ptr %td, align 8
  %td_whitepoint96 = getelementptr inbounds %struct.TIFFDirectory, ptr %90, i32 0, i32 51
  store ptr null, ptr %td_whitepoint96, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.then94, %if.end92
  %91 = load ptr, ptr %td, align 8
  %td_primarychromas = getelementptr inbounds %struct.TIFFDirectory, ptr %91, i32 0, i32 52
  %92 = load ptr, ptr %td_primarychromas, align 8
  %tobool98 = icmp ne ptr %92, null
  br i1 %tobool98, label %if.then99, label %if.end102

if.then99:                                        ; preds = %if.end97
  %93 = load ptr, ptr %td, align 8
  %td_primarychromas100 = getelementptr inbounds %struct.TIFFDirectory, ptr %93, i32 0, i32 52
  %94 = load ptr, ptr %td_primarychromas100, align 8
  call void @_TIFFfree(ptr noundef %94)
  %95 = load ptr, ptr %td, align 8
  %td_primarychromas101 = getelementptr inbounds %struct.TIFFDirectory, ptr %95, i32 0, i32 52
  store ptr null, ptr %td_primarychromas101, align 8
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %if.end97
  %96 = load ptr, ptr %td, align 8
  %td_refblackwhite = getelementptr inbounds %struct.TIFFDirectory, ptr %96, i32 0, i32 53
  %97 = load ptr, ptr %td_refblackwhite, align 8
  %tobool103 = icmp ne ptr %97, null
  br i1 %tobool103, label %if.then104, label %if.end107

if.then104:                                       ; preds = %if.end102
  %98 = load ptr, ptr %td, align 8
  %td_refblackwhite105 = getelementptr inbounds %struct.TIFFDirectory, ptr %98, i32 0, i32 53
  %99 = load ptr, ptr %td_refblackwhite105, align 8
  call void @_TIFFfree(ptr noundef %99)
  %100 = load ptr, ptr %td, align 8
  %td_refblackwhite106 = getelementptr inbounds %struct.TIFFDirectory, ptr %100, i32 0, i32 53
  store ptr null, ptr %td_refblackwhite106, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %if.end102
  %101 = load ptr, ptr %td, align 8
  %td_transferfunction = getelementptr inbounds %struct.TIFFDirectory, ptr %101, i32 0, i32 54
  %arrayidx108 = getelementptr inbounds [3 x ptr], ptr %td_transferfunction, i64 0, i64 0
  %102 = load ptr, ptr %arrayidx108, align 8
  %tobool109 = icmp ne ptr %102, null
  br i1 %tobool109, label %if.then110, label %if.end115

if.then110:                                       ; preds = %if.end107
  %103 = load ptr, ptr %td, align 8
  %td_transferfunction111 = getelementptr inbounds %struct.TIFFDirectory, ptr %103, i32 0, i32 54
  %arrayidx112 = getelementptr inbounds [3 x ptr], ptr %td_transferfunction111, i64 0, i64 0
  %104 = load ptr, ptr %arrayidx112, align 8
  call void @_TIFFfree(ptr noundef %104)
  %105 = load ptr, ptr %td, align 8
  %td_transferfunction113 = getelementptr inbounds %struct.TIFFDirectory, ptr %105, i32 0, i32 54
  %arrayidx114 = getelementptr inbounds [3 x ptr], ptr %td_transferfunction113, i64 0, i64 0
  store ptr null, ptr %arrayidx114, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.then110, %if.end107
  %106 = load ptr, ptr %td, align 8
  %td_transferfunction116 = getelementptr inbounds %struct.TIFFDirectory, ptr %106, i32 0, i32 54
  %arrayidx117 = getelementptr inbounds [3 x ptr], ptr %td_transferfunction116, i64 0, i64 1
  %107 = load ptr, ptr %arrayidx117, align 8
  %tobool118 = icmp ne ptr %107, null
  br i1 %tobool118, label %if.then119, label %if.end124

if.then119:                                       ; preds = %if.end115
  %108 = load ptr, ptr %td, align 8
  %td_transferfunction120 = getelementptr inbounds %struct.TIFFDirectory, ptr %108, i32 0, i32 54
  %arrayidx121 = getelementptr inbounds [3 x ptr], ptr %td_transferfunction120, i64 0, i64 1
  %109 = load ptr, ptr %arrayidx121, align 8
  call void @_TIFFfree(ptr noundef %109)
  %110 = load ptr, ptr %td, align 8
  %td_transferfunction122 = getelementptr inbounds %struct.TIFFDirectory, ptr %110, i32 0, i32 54
  %arrayidx123 = getelementptr inbounds [3 x ptr], ptr %td_transferfunction122, i64 0, i64 1
  store ptr null, ptr %arrayidx123, align 8
  br label %if.end124

if.end124:                                        ; preds = %if.then119, %if.end115
  %111 = load ptr, ptr %td, align 8
  %td_transferfunction125 = getelementptr inbounds %struct.TIFFDirectory, ptr %111, i32 0, i32 54
  %arrayidx126 = getelementptr inbounds [3 x ptr], ptr %td_transferfunction125, i64 0, i64 2
  %112 = load ptr, ptr %arrayidx126, align 8
  %tobool127 = icmp ne ptr %112, null
  br i1 %tobool127, label %if.then128, label %if.end133

if.then128:                                       ; preds = %if.end124
  %113 = load ptr, ptr %td, align 8
  %td_transferfunction129 = getelementptr inbounds %struct.TIFFDirectory, ptr %113, i32 0, i32 54
  %arrayidx130 = getelementptr inbounds [3 x ptr], ptr %td_transferfunction129, i64 0, i64 2
  %114 = load ptr, ptr %arrayidx130, align 8
  call void @_TIFFfree(ptr noundef %114)
  %115 = load ptr, ptr %td, align 8
  %td_transferfunction131 = getelementptr inbounds %struct.TIFFDirectory, ptr %115, i32 0, i32 54
  %arrayidx132 = getelementptr inbounds [3 x ptr], ptr %td_transferfunction131, i64 0, i64 2
  store ptr null, ptr %arrayidx132, align 8
  br label %if.end133

if.end133:                                        ; preds = %if.then128, %if.end124
  %116 = load ptr, ptr %td, align 8
  %td_profileData = getelementptr inbounds %struct.TIFFDirectory, ptr %116, i32 0, i32 62
  %117 = load ptr, ptr %td_profileData, align 8
  %tobool134 = icmp ne ptr %117, null
  br i1 %tobool134, label %if.then135, label %if.end138

if.then135:                                       ; preds = %if.end133
  %118 = load ptr, ptr %td, align 8
  %td_profileData136 = getelementptr inbounds %struct.TIFFDirectory, ptr %118, i32 0, i32 62
  %119 = load ptr, ptr %td_profileData136, align 8
  call void @_TIFFfree(ptr noundef %119)
  %120 = load ptr, ptr %td, align 8
  %td_profileData137 = getelementptr inbounds %struct.TIFFDirectory, ptr %120, i32 0, i32 62
  store ptr null, ptr %td_profileData137, align 8
  br label %if.end138

if.end138:                                        ; preds = %if.then135, %if.end133
  %121 = load ptr, ptr %td, align 8
  %td_photoshopData = getelementptr inbounds %struct.TIFFDirectory, ptr %121, i32 0, i32 64
  %122 = load ptr, ptr %td_photoshopData, align 8
  %tobool139 = icmp ne ptr %122, null
  br i1 %tobool139, label %if.then140, label %if.end143

if.then140:                                       ; preds = %if.end138
  %123 = load ptr, ptr %td, align 8
  %td_photoshopData141 = getelementptr inbounds %struct.TIFFDirectory, ptr %123, i32 0, i32 64
  %124 = load ptr, ptr %td_photoshopData141, align 8
  call void @_TIFFfree(ptr noundef %124)
  %125 = load ptr, ptr %td, align 8
  %td_photoshopData142 = getelementptr inbounds %struct.TIFFDirectory, ptr %125, i32 0, i32 64
  store ptr null, ptr %td_photoshopData142, align 8
  br label %if.end143

if.end143:                                        ; preds = %if.then140, %if.end138
  %126 = load ptr, ptr %td, align 8
  %td_richtiffiptcData = getelementptr inbounds %struct.TIFFDirectory, ptr %126, i32 0, i32 66
  %127 = load ptr, ptr %td_richtiffiptcData, align 8
  %tobool144 = icmp ne ptr %127, null
  br i1 %tobool144, label %if.then145, label %if.end148

if.then145:                                       ; preds = %if.end143
  %128 = load ptr, ptr %td, align 8
  %td_richtiffiptcData146 = getelementptr inbounds %struct.TIFFDirectory, ptr %128, i32 0, i32 66
  %129 = load ptr, ptr %td_richtiffiptcData146, align 8
  call void @_TIFFfree(ptr noundef %129)
  %130 = load ptr, ptr %td, align 8
  %td_richtiffiptcData147 = getelementptr inbounds %struct.TIFFDirectory, ptr %130, i32 0, i32 66
  store ptr null, ptr %td_richtiffiptcData147, align 8
  br label %if.end148

if.end148:                                        ; preds = %if.then145, %if.end143
  %131 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %131, i32 0, i32 44
  %132 = load ptr, ptr %td_stripoffset, align 8
  %tobool149 = icmp ne ptr %132, null
  br i1 %tobool149, label %if.then150, label %if.end153

if.then150:                                       ; preds = %if.end148
  %133 = load ptr, ptr %td, align 8
  %td_stripoffset151 = getelementptr inbounds %struct.TIFFDirectory, ptr %133, i32 0, i32 44
  %134 = load ptr, ptr %td_stripoffset151, align 8
  call void @_TIFFfree(ptr noundef %134)
  %135 = load ptr, ptr %td, align 8
  %td_stripoffset152 = getelementptr inbounds %struct.TIFFDirectory, ptr %135, i32 0, i32 44
  store ptr null, ptr %td_stripoffset152, align 8
  br label %if.end153

if.end153:                                        ; preds = %if.then150, %if.end148
  %136 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %136, i32 0, i32 45
  %137 = load ptr, ptr %td_stripbytecount, align 8
  %tobool154 = icmp ne ptr %137, null
  br i1 %tobool154, label %if.then155, label %if.end158

if.then155:                                       ; preds = %if.end153
  %138 = load ptr, ptr %td, align 8
  %td_stripbytecount156 = getelementptr inbounds %struct.TIFFDirectory, ptr %138, i32 0, i32 45
  %139 = load ptr, ptr %td_stripbytecount156, align 8
  call void @_TIFFfree(ptr noundef %139)
  %140 = load ptr, ptr %td, align 8
  %td_stripbytecount157 = getelementptr inbounds %struct.TIFFDirectory, ptr %140, i32 0, i32 45
  store ptr null, ptr %td_stripbytecount157, align 8
  br label %if.end158

if.end158:                                        ; preds = %if.then155, %if.end153
  %141 = load ptr, ptr %td, align 8
  %td_textureformat = getelementptr inbounds %struct.TIFFDirectory, ptr %141, i32 0, i32 69
  %142 = load ptr, ptr %td_textureformat, align 8
  %tobool159 = icmp ne ptr %142, null
  br i1 %tobool159, label %if.then160, label %if.end163

if.then160:                                       ; preds = %if.end158
  %143 = load ptr, ptr %td, align 8
  %td_textureformat161 = getelementptr inbounds %struct.TIFFDirectory, ptr %143, i32 0, i32 69
  %144 = load ptr, ptr %td_textureformat161, align 8
  call void @_TIFFfree(ptr noundef %144)
  %145 = load ptr, ptr %td, align 8
  %td_textureformat162 = getelementptr inbounds %struct.TIFFDirectory, ptr %145, i32 0, i32 69
  store ptr null, ptr %td_textureformat162, align 8
  br label %if.end163

if.end163:                                        ; preds = %if.then160, %if.end158
  %146 = load ptr, ptr %td, align 8
  %td_wrapmodes = getelementptr inbounds %struct.TIFFDirectory, ptr %146, i32 0, i32 70
  %147 = load ptr, ptr %td_wrapmodes, align 8
  %tobool164 = icmp ne ptr %147, null
  br i1 %tobool164, label %if.then165, label %if.end168

if.then165:                                       ; preds = %if.end163
  %148 = load ptr, ptr %td, align 8
  %td_wrapmodes166 = getelementptr inbounds %struct.TIFFDirectory, ptr %148, i32 0, i32 70
  %149 = load ptr, ptr %td_wrapmodes166, align 8
  call void @_TIFFfree(ptr noundef %149)
  %150 = load ptr, ptr %td, align 8
  %td_wrapmodes167 = getelementptr inbounds %struct.TIFFDirectory, ptr %150, i32 0, i32 70
  store ptr null, ptr %td_wrapmodes167, align 8
  br label %if.end168

if.end168:                                        ; preds = %if.then165, %if.end163
  %151 = load ptr, ptr %td, align 8
  %td_matrixWorldToScreen = getelementptr inbounds %struct.TIFFDirectory, ptr %151, i32 0, i32 72
  %152 = load ptr, ptr %td_matrixWorldToScreen, align 8
  %tobool169 = icmp ne ptr %152, null
  br i1 %tobool169, label %if.then170, label %if.end173

if.then170:                                       ; preds = %if.end168
  %153 = load ptr, ptr %td, align 8
  %td_matrixWorldToScreen171 = getelementptr inbounds %struct.TIFFDirectory, ptr %153, i32 0, i32 72
  %154 = load ptr, ptr %td_matrixWorldToScreen171, align 8
  call void @_TIFFfree(ptr noundef %154)
  %155 = load ptr, ptr %td, align 8
  %td_matrixWorldToScreen172 = getelementptr inbounds %struct.TIFFDirectory, ptr %155, i32 0, i32 72
  store ptr null, ptr %td_matrixWorldToScreen172, align 8
  br label %if.end173

if.end173:                                        ; preds = %if.then170, %if.end168
  %156 = load ptr, ptr %td, align 8
  %td_matrixWorldToCamera = getelementptr inbounds %struct.TIFFDirectory, ptr %156, i32 0, i32 73
  %157 = load ptr, ptr %td_matrixWorldToCamera, align 8
  %tobool174 = icmp ne ptr %157, null
  br i1 %tobool174, label %if.then175, label %if.end178

if.then175:                                       ; preds = %if.end173
  %158 = load ptr, ptr %td, align 8
  %td_matrixWorldToCamera176 = getelementptr inbounds %struct.TIFFDirectory, ptr %158, i32 0, i32 73
  %159 = load ptr, ptr %td_matrixWorldToCamera176, align 8
  call void @_TIFFfree(ptr noundef %159)
  %160 = load ptr, ptr %td, align 8
  %td_matrixWorldToCamera177 = getelementptr inbounds %struct.TIFFDirectory, ptr %160, i32 0, i32 73
  store ptr null, ptr %td_matrixWorldToCamera177, align 8
  br label %if.end178

if.end178:                                        ; preds = %if.then175, %if.end173
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @TIFFSetTagExtender(ptr noundef %extender) #0 {
entry:
  %extender.addr = alloca ptr, align 8
  %prev = alloca ptr, align 8
  store ptr %extender, ptr %extender.addr, align 8
  %0 = load ptr, ptr @_TIFFextender, align 8
  store ptr %0, ptr %prev, align 8
  %1 = load ptr, ptr %extender.addr, align 8
  store ptr %1, ptr @_TIFFextender, align 8
  %2 = load ptr, ptr %prev, align 8
  ret ptr %2
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFDefaultDirectory(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  call void @_TIFFSetupFieldInfo(ptr noundef %1)
  %2 = load ptr, ptr %td, align 8
  call void @_TIFFmemset(ptr noundef %2, i32 noundef 0, i64 noundef 520)
  %3 = load ptr, ptr %td, align 8
  %td_fillorder = getelementptr inbounds %struct.TIFFDirectory, ptr %3, i32 0, i32 13
  store i16 1, ptr %td_fillorder, align 2
  %4 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %4, i32 0, i32 8
  store i16 1, ptr %td_bitspersample, align 8
  %5 = load ptr, ptr %td, align 8
  %td_threshholding = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i32 0, i32 12
  store i16 1, ptr %td_threshholding, align 8
  %6 = load ptr, ptr %td, align 8
  %td_orientation = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i32 0, i32 14
  store i16 1, ptr %td_orientation, align 4
  %7 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i32 0, i32 15
  store i16 1, ptr %td_samplesperpixel, align 2
  %8 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %8, i32 0, i32 16
  store i64 -1, ptr %td_rowsperstrip, align 8
  %9 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %9, i32 0, i32 4
  store i64 -1, ptr %td_tilewidth, align 8
  %10 = load ptr, ptr %td, align 8
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i32 0, i32 5
  store i64 -1, ptr %td_tilelength, align 8
  %11 = load ptr, ptr %td, align 8
  %td_tiledepth = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i32 0, i32 6
  store i64 1, ptr %td_tiledepth, align 8
  %12 = load ptr, ptr %td, align 8
  %td_resolutionunit = getelementptr inbounds %struct.TIFFDirectory, ptr %12, i32 0, i32 23
  store i16 2, ptr %td_resolutionunit, align 8
  %13 = load ptr, ptr %td, align 8
  %td_sampleformat = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i32 0, i32 9
  store i16 4, ptr %td_sampleformat, align 2
  %14 = load ptr, ptr %td, align 8
  %td_imagedepth = getelementptr inbounds %struct.TIFFDirectory, ptr %14, i32 0, i32 3
  store i64 1, ptr %td_imagedepth, align 8
  %15 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i32 0, i32 49
  %arrayidx = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling, i64 0, i64 0
  store i16 2, ptr %arrayidx, align 8
  %16 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling1 = getelementptr inbounds %struct.TIFFDirectory, ptr %16, i32 0, i32 49
  %arrayidx2 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling1, i64 0, i64 1
  store i16 2, ptr %arrayidx2, align 2
  %17 = load ptr, ptr %td, align 8
  %td_ycbcrpositioning = getelementptr inbounds %struct.TIFFDirectory, ptr %17, i32 0, i32 50
  store i16 1, ptr %td_ycbcrpositioning, align 4
  %18 = load ptr, ptr %td, align 8
  %td_inkset = getelementptr inbounds %struct.TIFFDirectory, ptr %18, i32 0, i32 55
  store i16 1, ptr %td_inkset, align 8
  %19 = load ptr, ptr %td, align 8
  %td_ninks = getelementptr inbounds %struct.TIFFDirectory, ptr %19, i32 0, i32 56
  store i16 4, ptr %td_ninks, align 2
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_postdecode = getelementptr inbounds %struct.tiff, ptr %20, i32 0, i32 54
  store ptr @_TIFFNoPostDecode, ptr %tif_postdecode, align 8
  %21 = load ptr, ptr %tif.addr, align 8
  %tif_vsetfield = getelementptr inbounds %struct.tiff, ptr %21, i32 0, i32 57
  store ptr @_TIFFVSetField, ptr %tif_vsetfield, align 8
  %22 = load ptr, ptr %tif.addr, align 8
  %tif_vgetfield = getelementptr inbounds %struct.tiff, ptr %22, i32 0, i32 58
  store ptr @_TIFFVGetField, ptr %tif_vgetfield, align 8
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_printdir = getelementptr inbounds %struct.tiff, ptr %23, i32 0, i32 59
  store ptr null, ptr %tif_printdir, align 8
  %24 = load ptr, ptr @_TIFFextender, align 8
  %tobool = icmp ne ptr %24, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %25 = load ptr, ptr @_TIFFextender, align 8
  %26 = load ptr, ptr %tif.addr, align 8
  call void %25(ptr noundef %26)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %27 = load ptr, ptr %tif.addr, align 8
  %call = call i32 (ptr, i64, ...) @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_0(ptr noundef %27, i64 noundef 259, i32 noundef 1)
  %28 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %28, i32 0, i32 3
  %29 = load i64, ptr %tif_flags, align 8
  %and = and i64 %29, -9
  store i64 %and, ptr %tif_flags, align 8
  ret i32 1
}

declare void @_TIFFSetupFieldInfo(ptr noundef) #1

declare void @_TIFFmemset(ptr noundef, i32 noundef, i64 noundef) #1

declare void @_TIFFNoPostDecode(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @_TIFFVSetField(ptr noundef %tif, i64 noundef %tag, ptr noundef %ap) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i64, align 8
  %ap.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %status = alloca i32, align 4
  %v32 = alloca i64, align 8
  %i = alloca i32, align 4
  %v = alloca i32, align 4
  %d = alloca double, align 8
  %s = alloca ptr, align 8
  %varet = alloca i64, align 8
  %varet2 = alloca i64, align 8
  %varet4 = alloca i64, align 8
  %varet6 = alloca i32, align 4
  %varet28 = alloca i32, align 4
  %varet58 = alloca i32, align 4
  %varet61 = alloca i32, align 4
  %varet64 = alloca i32, align 4
  %varet73 = alloca ptr, align 8
  %varet75 = alloca ptr, align 8
  %varet77 = alloca ptr, align 8
  %varet79 = alloca ptr, align 8
  %varet81 = alloca ptr, align 8
  %varet83 = alloca ptr, align 8
  %varet85 = alloca ptr, align 8
  %varet87 = alloca ptr, align 8
  %varet89 = alloca i32, align 4
  %varet101 = alloca i32, align 4
  %varet108 = alloca i64, align 8
  %varet122 = alloca i32, align 4
  %varet125 = alloca i32, align 4
  %varet128 = alloca double, align 8
  %varet130 = alloca double, align 8
  %varet132 = alloca double, align 8
  %varet135 = alloca double, align 8
  %varet138 = alloca i32, align 4
  %varet148 = alloca ptr, align 8
  %varet150 = alloca double, align 8
  %varet153 = alloca double, align 8
  %varet156 = alloca i32, align 4
  %varet166 = alloca i32, align 4
  %varet169 = alloca i32, align 4
  %varet174 = alloca i32, align 4
  %varet177 = alloca i32, align 4
  %varet185 = alloca ptr, align 8
  %varet188 = alloca ptr, align 8
  %varet191 = alloca ptr, align 8
  %varet198 = alloca i32, align 4
  %sv = alloca i16, align 2
  %varet207 = alloca i64, align 8
  %varet220 = alloca i64, align 8
  %varet235 = alloca i64, align 8
  %varet241 = alloca i32, align 4
  %varet248 = alloca i32, align 4
  %varet259 = alloca i64, align 8
  %varet261 = alloca double, align 8
  %varet267 = alloca i64, align 8
  %varet269 = alloca i64, align 8
  %varet271 = alloca ptr, align 8
  %varet273 = alloca ptr, align 8
  %varet275 = alloca double, align 8
  %varet278 = alloca ptr, align 8
  %varet280 = alloca ptr, align 8
  %varet287 = alloca i32, align 4
  %varet289 = alloca ptr, align 8
  %varet296 = alloca ptr, align 8
  %varet298 = alloca i32, align 4
  %varet301 = alloca i32, align 4
  %varet304 = alloca i32, align 4
  %varet309 = alloca ptr, align 8
  %varet311 = alloca ptr, align 8
  %varet322 = alloca ptr, align 8
  %varet328 = alloca ptr, align 8
  %varet330 = alloca i32, align 4
  %varet333 = alloca i32, align 4
  %varet336 = alloca i32, align 4
  %varet341 = alloca i32, align 4
  %varet342 = alloca ptr, align 8
  %varet352 = alloca i32, align 4
  %varet355 = alloca ptr, align 8
  %varet357 = alloca i64, align 8
  %varet358 = alloca ptr, align 8
  %varet361 = alloca i64, align 8
  %varet362 = alloca ptr, align 8
  %varet365 = alloca i64, align 8
  %varet366 = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tag, ptr %tag.addr, align 8
  store ptr %ap, ptr %ap.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  store i32 1, ptr %status, align 4
  %1 = load i64, ptr %tag.addr, align 8
  switch i64 %1, label %sw.default368 [
    i64 254, label %sw.bb
    i64 256, label %sw.bb1
    i64 257, label %sw.bb3
    i64 258, label %sw.bb5
    i64 259, label %sw.bb27
    i64 262, label %sw.bb57
    i64 263, label %sw.bb60
    i64 266, label %sw.bb63
    i64 269, label %sw.bb72
    i64 315, label %sw.bb74
    i64 306, label %sw.bb76
    i64 316, label %sw.bb78
    i64 270, label %sw.bb80
    i64 271, label %sw.bb82
    i64 272, label %sw.bb84
    i64 305, label %sw.bb86
    i64 274, label %sw.bb88
    i64 277, label %sw.bb100
    i64 278, label %sw.bb107
    i64 280, label %sw.bb121
    i64 281, label %sw.bb124
    i64 340, label %sw.bb127
    i64 341, label %sw.bb129
    i64 282, label %sw.bb131
    i64 283, label %sw.bb134
    i64 284, label %sw.bb137
    i64 285, label %sw.bb147
    i64 286, label %sw.bb149
    i64 287, label %sw.bb152
    i64 296, label %sw.bb155
    i64 297, label %sw.bb165
    i64 321, label %sw.bb173
    i64 320, label %sw.bb181
    i64 338, label %sw.bb192
    i64 32995, label %sw.bb197
    i64 322, label %sw.bb206
    i64 323, label %sw.bb219
    i64 32998, label %sw.bb234
    i64 32996, label %sw.bb240
    i64 339, label %sw.bb247
    i64 32997, label %sw.bb258
    i64 37439, label %sw.bb260
    i64 33300, label %sw.bb266
    i64 33301, label %sw.bb268
    i64 33302, label %sw.bb270
    i64 33303, label %sw.bb272
    i64 33304, label %sw.bb274
    i64 33305, label %sw.bb277
    i64 33306, label %sw.bb279
    i64 330, label %sw.bb281
    i64 529, label %sw.bb295
    i64 531, label %sw.bb297
    i64 530, label %sw.bb300
    i64 318, label %sw.bb308
    i64 319, label %sw.bb310
    i64 301, label %sw.bb312
    i64 532, label %sw.bb327
    i64 332, label %sw.bb329
    i64 336, label %sw.bb332
    i64 333, label %sw.bb340
    i64 334, label %sw.bb351
    i64 337, label %sw.bb354
    i64 34675, label %sw.bb356
    i64 34377, label %sw.bb360
    i64 33723, label %sw.bb364
  ]

sw.bb:                                            ; preds = %entry
  %2 = va_arg ptr %ap.addr, i64
  store i64 %2, ptr %varet, align 8
  %3 = load i64, ptr %varet, align 8
  %4 = load ptr, ptr %td, align 8
  %td_subfiletype = getelementptr inbounds %struct.TIFFDirectory, ptr %4, i32 0, i32 7
  store i64 %3, ptr %td_subfiletype, align 8
  br label %sw.epilog375

sw.bb1:                                           ; preds = %entry
  %5 = va_arg ptr %ap.addr, i64
  store i64 %5, ptr %varet2, align 8
  %6 = load i64, ptr %varet2, align 8
  %7 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i32 0, i32 1
  store i64 %6, ptr %td_imagewidth, align 8
  br label %sw.epilog375

sw.bb3:                                           ; preds = %entry
  %8 = va_arg ptr %ap.addr, i64
  store i64 %8, ptr %varet4, align 8
  %9 = load i64, ptr %varet4, align 8
  %10 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i32 0, i32 2
  store i64 %9, ptr %td_imagelength, align 8
  br label %sw.epilog375

sw.bb5:                                           ; preds = %entry
  %11 = va_arg ptr %ap.addr, i32
  store i32 %11, ptr %varet6, align 4
  %12 = load i32, ptr %varet6, align 4
  %conv = trunc i32 %12 to i16
  %13 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i32 0, i32 8
  store i16 %conv, ptr %td_bitspersample, align 8
  %14 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %14, i32 0, i32 3
  %15 = load i64, ptr %tif_flags, align 8
  %and = and i64 %15, 128
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end26

if.then:                                          ; preds = %sw.bb5
  %16 = load ptr, ptr %td, align 8
  %td_bitspersample7 = getelementptr inbounds %struct.TIFFDirectory, ptr %16, i32 0, i32 8
  %17 = load i16, ptr %td_bitspersample7, align 8
  %conv8 = zext i16 %17 to i32
  %cmp = icmp eq i32 %conv8, 16
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_postdecode = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 54
  store ptr @_TIFFSwab16BitData, ptr %tif_postdecode, align 8
  br label %if.end25

if.else:                                          ; preds = %if.then
  %19 = load ptr, ptr %td, align 8
  %td_bitspersample11 = getelementptr inbounds %struct.TIFFDirectory, ptr %19, i32 0, i32 8
  %20 = load i16, ptr %td_bitspersample11, align 8
  %conv12 = zext i16 %20 to i32
  %cmp13 = icmp eq i32 %conv12, 32
  br i1 %cmp13, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else
  %21 = load ptr, ptr %tif.addr, align 8
  %tif_postdecode16 = getelementptr inbounds %struct.tiff, ptr %21, i32 0, i32 54
  store ptr @_TIFFSwab32BitData, ptr %tif_postdecode16, align 8
  br label %if.end24

if.else17:                                        ; preds = %if.else
  %22 = load ptr, ptr %td, align 8
  %td_bitspersample18 = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i32 0, i32 8
  %23 = load i16, ptr %td_bitspersample18, align 8
  %conv19 = zext i16 %23 to i32
  %cmp20 = icmp eq i32 %conv19, 64
  br i1 %cmp20, label %if.then22, label %if.end

if.then22:                                        ; preds = %if.else17
  %24 = load ptr, ptr %tif.addr, align 8
  %tif_postdecode23 = getelementptr inbounds %struct.tiff, ptr %24, i32 0, i32 54
  store ptr @_TIFFSwab64BitData, ptr %tif_postdecode23, align 8
  br label %if.end

if.end:                                           ; preds = %if.then22, %if.else17
  br label %if.end24

if.end24:                                         ; preds = %if.end, %if.then15
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then10
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %sw.bb5
  br label %sw.epilog375

sw.bb27:                                          ; preds = %entry
  %25 = va_arg ptr %ap.addr, i32
  store i32 %25, ptr %varet28, align 4
  %26 = load i32, ptr %varet28, align 4
  %and29 = and i32 %26, 65535
  store i32 %and29, ptr %v, align 4
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_dir30 = getelementptr inbounds %struct.tiff, ptr %27, i32 0, i32 6
  %td_fieldsset = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir30, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x i64], ptr %td_fieldsset, i64 0, i64 0
  %28 = load i64, ptr %arrayidx, align 8
  %and31 = and i64 %28, 128
  %tobool32 = icmp ne i64 %and31, 0
  br i1 %tobool32, label %if.then33, label %if.end41

if.then33:                                        ; preds = %sw.bb27
  %29 = load ptr, ptr %td, align 8
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %29, i32 0, i32 10
  %30 = load i16, ptr %td_compression, align 4
  %conv34 = zext i16 %30 to i32
  %31 = load i32, ptr %v, align 4
  %cmp35 = icmp eq i32 %conv34, %31
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.then33
  br label %sw.epilog375

if.end38:                                         ; preds = %if.then33
  %32 = load ptr, ptr %tif.addr, align 8
  %tif_cleanup = getelementptr inbounds %struct.tiff, ptr %32, i32 0, i32 34
  %33 = load ptr, ptr %tif_cleanup, align 8
  %34 = load ptr, ptr %tif.addr, align 8
  call void %33(ptr noundef %34)
  %35 = load ptr, ptr %tif.addr, align 8
  %tif_flags39 = getelementptr inbounds %struct.tiff, ptr %35, i32 0, i32 3
  %36 = load i64, ptr %tif_flags39, align 8
  %and40 = and i64 %36, -33
  store i64 %and40, ptr %tif_flags39, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.end38, %sw.bb27
  %37 = load ptr, ptr %tif.addr, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %37, i32 0, i32 2
  %38 = load i32, ptr %tif_mode, align 4
  %tobool42 = icmp ne i32 %38, 0
  %lnot = xor i1 %tobool42, true
  %lnot.ext = zext i1 %lnot to i32
  %cmp43 = icmp eq i32 %lnot.ext, 0
  br i1 %cmp43, label %if.then45, label %if.end50

if.then45:                                        ; preds = %if.end41
  %39 = load i32, ptr %v, align 4
  %cmp46 = icmp eq i32 %39, 5
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.then45
  %40 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %tif_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %41, ptr noundef @.str.8)
  store i32 1, ptr %v, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.then45
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end41
  %42 = load ptr, ptr %tif.addr, align 8
  %43 = load i32, ptr %v, align 4
  %call = call i32 @TIFFSetCompressionScheme(ptr noundef %42, i32 noundef %43)
  store i32 %call, ptr %status, align 4
  %cmp51 = icmp ne i32 %call, 0
  br i1 %cmp51, label %if.then53, label %if.end56

if.then53:                                        ; preds = %if.end50
  %44 = load i32, ptr %v, align 4
  %conv54 = trunc i32 %44 to i16
  %45 = load ptr, ptr %td, align 8
  %td_compression55 = getelementptr inbounds %struct.TIFFDirectory, ptr %45, i32 0, i32 10
  store i16 %conv54, ptr %td_compression55, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end50
  br label %sw.epilog375

sw.bb57:                                          ; preds = %entry
  %46 = va_arg ptr %ap.addr, i32
  store i32 %46, ptr %varet58, align 4
  %47 = load i32, ptr %varet58, align 4
  %conv59 = trunc i32 %47 to i16
  %48 = load ptr, ptr %td, align 8
  %td_photometric = getelementptr inbounds %struct.TIFFDirectory, ptr %48, i32 0, i32 11
  store i16 %conv59, ptr %td_photometric, align 2
  br label %sw.epilog375

sw.bb60:                                          ; preds = %entry
  %49 = va_arg ptr %ap.addr, i32
  store i32 %49, ptr %varet61, align 4
  %50 = load i32, ptr %varet61, align 4
  %conv62 = trunc i32 %50 to i16
  %51 = load ptr, ptr %td, align 8
  %td_threshholding = getelementptr inbounds %struct.TIFFDirectory, ptr %51, i32 0, i32 12
  store i16 %conv62, ptr %td_threshholding, align 8
  br label %sw.epilog375

sw.bb63:                                          ; preds = %entry
  %52 = va_arg ptr %ap.addr, i32
  store i32 %52, ptr %varet64, align 4
  %53 = load i32, ptr %varet64, align 4
  store i32 %53, ptr %v, align 4
  %54 = load i32, ptr %v, align 4
  %cmp65 = icmp ne i32 %54, 2
  br i1 %cmp65, label %land.lhs.true, label %if.end70

land.lhs.true:                                    ; preds = %sw.bb63
  %55 = load i32, ptr %v, align 4
  %cmp67 = icmp ne i32 %55, 1
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %land.lhs.true
  br label %badvalue

if.end70:                                         ; preds = %land.lhs.true, %sw.bb63
  %56 = load i32, ptr %v, align 4
  %conv71 = trunc i32 %56 to i16
  %57 = load ptr, ptr %td, align 8
  %td_fillorder = getelementptr inbounds %struct.TIFFDirectory, ptr %57, i32 0, i32 13
  store i16 %conv71, ptr %td_fillorder, align 2
  br label %sw.epilog375

sw.bb72:                                          ; preds = %entry
  %58 = load ptr, ptr %td, align 8
  %td_documentname = getelementptr inbounds %struct.TIFFDirectory, ptr %58, i32 0, i32 33
  %59 = va_arg ptr %ap.addr, ptr
  store ptr %59, ptr %varet73, align 8
  %60 = load ptr, ptr %varet73, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_1(ptr noundef %td_documentname, ptr noundef %60)
  br label %sw.epilog375

sw.bb74:                                          ; preds = %entry
  %61 = load ptr, ptr %td, align 8
  %td_artist = getelementptr inbounds %struct.TIFFDirectory, ptr %61, i32 0, i32 34
  %62 = va_arg ptr %ap.addr, ptr
  store ptr %62, ptr %varet75, align 8
  %63 = load ptr, ptr %varet75, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_2(ptr noundef %td_artist, ptr noundef %63)
  br label %sw.epilog375

sw.bb76:                                          ; preds = %entry
  %64 = load ptr, ptr %td, align 8
  %td_datetime = getelementptr inbounds %struct.TIFFDirectory, ptr %64, i32 0, i32 35
  %65 = va_arg ptr %ap.addr, ptr
  store ptr %65, ptr %varet77, align 8
  %66 = load ptr, ptr %varet77, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_3(ptr noundef %td_datetime, ptr noundef %66)
  br label %sw.epilog375

sw.bb78:                                          ; preds = %entry
  %67 = load ptr, ptr %td, align 8
  %td_hostcomputer = getelementptr inbounds %struct.TIFFDirectory, ptr %67, i32 0, i32 36
  %68 = va_arg ptr %ap.addr, ptr
  store ptr %68, ptr %varet79, align 8
  %69 = load ptr, ptr %varet79, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_4(ptr noundef %td_hostcomputer, ptr noundef %69)
  br label %sw.epilog375

sw.bb80:                                          ; preds = %entry
  %70 = load ptr, ptr %td, align 8
  %td_imagedescription = getelementptr inbounds %struct.TIFFDirectory, ptr %70, i32 0, i32 37
  %71 = va_arg ptr %ap.addr, ptr
  store ptr %71, ptr %varet81, align 8
  %72 = load ptr, ptr %varet81, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_5(ptr noundef %td_imagedescription, ptr noundef %72)
  br label %sw.epilog375

sw.bb82:                                          ; preds = %entry
  %73 = load ptr, ptr %td, align 8
  %td_make = getelementptr inbounds %struct.TIFFDirectory, ptr %73, i32 0, i32 38
  %74 = va_arg ptr %ap.addr, ptr
  store ptr %74, ptr %varet83, align 8
  %75 = load ptr, ptr %varet83, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_6(ptr noundef %td_make, ptr noundef %75)
  br label %sw.epilog375

sw.bb84:                                          ; preds = %entry
  %76 = load ptr, ptr %td, align 8
  %td_model = getelementptr inbounds %struct.TIFFDirectory, ptr %76, i32 0, i32 39
  %77 = va_arg ptr %ap.addr, ptr
  store ptr %77, ptr %varet85, align 8
  %78 = load ptr, ptr %varet85, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_7(ptr noundef %td_model, ptr noundef %78)
  br label %sw.epilog375

sw.bb86:                                          ; preds = %entry
  %79 = load ptr, ptr %td, align 8
  %td_software = getelementptr inbounds %struct.TIFFDirectory, ptr %79, i32 0, i32 40
  %80 = va_arg ptr %ap.addr, ptr
  store ptr %80, ptr %varet87, align 8
  %81 = load ptr, ptr %varet87, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_8(ptr noundef %td_software, ptr noundef %81)
  br label %sw.epilog375

sw.bb88:                                          ; preds = %entry
  %82 = va_arg ptr %ap.addr, i32
  store i32 %82, ptr %varet89, align 4
  %83 = load i32, ptr %varet89, align 4
  store i32 %83, ptr %v, align 4
  %84 = load i32, ptr %v, align 4
  %cmp90 = icmp slt i32 %84, 1
  br i1 %cmp90, label %if.then94, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb88
  %85 = load i32, ptr %v, align 4
  %cmp92 = icmp slt i32 8, %85
  br i1 %cmp92, label %if.then94, label %if.else97

if.then94:                                        ; preds = %lor.lhs.false, %sw.bb88
  %86 = load ptr, ptr %tif.addr, align 8
  %tif_name95 = getelementptr inbounds %struct.tiff, ptr %86, i32 0, i32 0
  %87 = load ptr, ptr %tif_name95, align 8
  %88 = load i32, ptr %v, align 4
  %89 = load ptr, ptr %tif.addr, align 8
  %90 = load i64, ptr %tag.addr, align 8
  %call96 = call ptr @_TIFFFieldWithTag(ptr noundef %89, i64 noundef %90)
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call96, i32 0, i32 7
  %91 = load ptr, ptr %field_name, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %87, ptr noundef @.str.9, i32 noundef %88, ptr noundef %91)
  br label %if.end99

if.else97:                                        ; preds = %lor.lhs.false
  %92 = load i32, ptr %v, align 4
  %conv98 = trunc i32 %92 to i16
  %93 = load ptr, ptr %td, align 8
  %td_orientation = getelementptr inbounds %struct.TIFFDirectory, ptr %93, i32 0, i32 14
  store i16 %conv98, ptr %td_orientation, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.else97, %if.then94
  br label %sw.epilog375

sw.bb100:                                         ; preds = %entry
  %94 = va_arg ptr %ap.addr, i32
  store i32 %94, ptr %varet101, align 4
  %95 = load i32, ptr %varet101, align 4
  store i32 %95, ptr %v, align 4
  %96 = load i32, ptr %v, align 4
  %cmp102 = icmp eq i32 %96, 0
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %sw.bb100
  br label %badvalue

if.end105:                                        ; preds = %sw.bb100
  %97 = load i32, ptr %v, align 4
  %conv106 = trunc i32 %97 to i16
  %98 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %98, i32 0, i32 15
  store i16 %conv106, ptr %td_samplesperpixel, align 2
  br label %sw.epilog375

sw.bb107:                                         ; preds = %entry
  %99 = va_arg ptr %ap.addr, i64
  store i64 %99, ptr %varet108, align 8
  %100 = load i64, ptr %varet108, align 8
  store i64 %100, ptr %v32, align 8
  %101 = load i64, ptr %v32, align 8
  %cmp109 = icmp eq i64 %101, 0
  br i1 %cmp109, label %if.then111, label %if.end112

if.then111:                                       ; preds = %sw.bb107
  br label %badvalue32

if.end112:                                        ; preds = %sw.bb107
  %102 = load i64, ptr %v32, align 8
  %103 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %103, i32 0, i32 16
  store i64 %102, ptr %td_rowsperstrip, align 8
  %104 = load ptr, ptr %tif.addr, align 8
  %tif_dir113 = getelementptr inbounds %struct.tiff, ptr %104, i32 0, i32 6
  %td_fieldsset114 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir113, i32 0, i32 0
  %arrayidx115 = getelementptr inbounds [3 x i64], ptr %td_fieldsset114, i64 0, i64 0
  %105 = load i64, ptr %arrayidx115, align 8
  %and116 = and i64 %105, 4
  %tobool117 = icmp ne i64 %and116, 0
  br i1 %tobool117, label %if.end120, label %if.then118

if.then118:                                       ; preds = %if.end112
  %106 = load i64, ptr %v32, align 8
  %107 = load ptr, ptr %td, align 8
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %107, i32 0, i32 5
  store i64 %106, ptr %td_tilelength, align 8
  %108 = load ptr, ptr %td, align 8
  %td_imagewidth119 = getelementptr inbounds %struct.TIFFDirectory, ptr %108, i32 0, i32 1
  %109 = load i64, ptr %td_imagewidth119, align 8
  %110 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %110, i32 0, i32 4
  store i64 %109, ptr %td_tilewidth, align 8
  br label %if.end120

if.end120:                                        ; preds = %if.then118, %if.end112
  br label %sw.epilog375

sw.bb121:                                         ; preds = %entry
  %111 = va_arg ptr %ap.addr, i32
  store i32 %111, ptr %varet122, align 4
  %112 = load i32, ptr %varet122, align 4
  %conv123 = trunc i32 %112 to i16
  %113 = load ptr, ptr %td, align 8
  %td_minsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %113, i32 0, i32 17
  store i16 %conv123, ptr %td_minsamplevalue, align 8
  br label %sw.epilog375

sw.bb124:                                         ; preds = %entry
  %114 = va_arg ptr %ap.addr, i32
  store i32 %114, ptr %varet125, align 4
  %115 = load i32, ptr %varet125, align 4
  %conv126 = trunc i32 %115 to i16
  %116 = load ptr, ptr %td, align 8
  %td_maxsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %116, i32 0, i32 18
  store i16 %conv126, ptr %td_maxsamplevalue, align 2
  br label %sw.epilog375

sw.bb127:                                         ; preds = %entry
  %117 = va_arg ptr %ap.addr, double
  store double %117, ptr %varet128, align 8
  %118 = load double, ptr %varet128, align 8
  %119 = load ptr, ptr %td, align 8
  %td_sminsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %119, i32 0, i32 19
  store double %118, ptr %td_sminsamplevalue, align 8
  br label %sw.epilog375

sw.bb129:                                         ; preds = %entry
  %120 = va_arg ptr %ap.addr, double
  store double %120, ptr %varet130, align 8
  %121 = load double, ptr %varet130, align 8
  %122 = load ptr, ptr %td, align 8
  %td_smaxsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %122, i32 0, i32 20
  store double %121, ptr %td_smaxsamplevalue, align 8
  br label %sw.epilog375

sw.bb131:                                         ; preds = %entry
  %123 = va_arg ptr %ap.addr, double
  store double %123, ptr %varet132, align 8
  %124 = load double, ptr %varet132, align 8
  %conv133 = fptrunc double %124 to float
  %125 = load ptr, ptr %td, align 8
  %td_xresolution = getelementptr inbounds %struct.TIFFDirectory, ptr %125, i32 0, i32 21
  store float %conv133, ptr %td_xresolution, align 8
  br label %sw.epilog375

sw.bb134:                                         ; preds = %entry
  %126 = va_arg ptr %ap.addr, double
  store double %126, ptr %varet135, align 8
  %127 = load double, ptr %varet135, align 8
  %conv136 = fptrunc double %127 to float
  %128 = load ptr, ptr %td, align 8
  %td_yresolution = getelementptr inbounds %struct.TIFFDirectory, ptr %128, i32 0, i32 22
  store float %conv136, ptr %td_yresolution, align 4
  br label %sw.epilog375

sw.bb137:                                         ; preds = %entry
  %129 = va_arg ptr %ap.addr, i32
  store i32 %129, ptr %varet138, align 4
  %130 = load i32, ptr %varet138, align 4
  store i32 %130, ptr %v, align 4
  %131 = load i32, ptr %v, align 4
  %cmp139 = icmp ne i32 %131, 1
  br i1 %cmp139, label %land.lhs.true141, label %if.end145

land.lhs.true141:                                 ; preds = %sw.bb137
  %132 = load i32, ptr %v, align 4
  %cmp142 = icmp ne i32 %132, 2
  br i1 %cmp142, label %if.then144, label %if.end145

if.then144:                                       ; preds = %land.lhs.true141
  br label %badvalue

if.end145:                                        ; preds = %land.lhs.true141, %sw.bb137
  %133 = load i32, ptr %v, align 4
  %conv146 = trunc i32 %133 to i16
  %134 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %134, i32 0, i32 24
  store i16 %conv146, ptr %td_planarconfig, align 2
  br label %sw.epilog375

sw.bb147:                                         ; preds = %entry
  %135 = load ptr, ptr %td, align 8
  %td_pagename = getelementptr inbounds %struct.TIFFDirectory, ptr %135, i32 0, i32 41
  %136 = va_arg ptr %ap.addr, ptr
  store ptr %136, ptr %varet148, align 8
  %137 = load ptr, ptr %varet148, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_9(ptr noundef %td_pagename, ptr noundef %137)
  br label %sw.epilog375

sw.bb149:                                         ; preds = %entry
  %138 = va_arg ptr %ap.addr, double
  store double %138, ptr %varet150, align 8
  %139 = load double, ptr %varet150, align 8
  %conv151 = fptrunc double %139 to float
  %140 = load ptr, ptr %td, align 8
  %td_xposition = getelementptr inbounds %struct.TIFFDirectory, ptr %140, i32 0, i32 25
  store float %conv151, ptr %td_xposition, align 4
  br label %sw.epilog375

sw.bb152:                                         ; preds = %entry
  %141 = va_arg ptr %ap.addr, double
  store double %141, ptr %varet153, align 8
  %142 = load double, ptr %varet153, align 8
  %conv154 = fptrunc double %142 to float
  %143 = load ptr, ptr %td, align 8
  %td_yposition = getelementptr inbounds %struct.TIFFDirectory, ptr %143, i32 0, i32 26
  store float %conv154, ptr %td_yposition, align 8
  br label %sw.epilog375

sw.bb155:                                         ; preds = %entry
  %144 = va_arg ptr %ap.addr, i32
  store i32 %144, ptr %varet156, align 4
  %145 = load i32, ptr %varet156, align 4
  store i32 %145, ptr %v, align 4
  %146 = load i32, ptr %v, align 4
  %cmp157 = icmp slt i32 %146, 1
  br i1 %cmp157, label %if.then162, label %lor.lhs.false159

lor.lhs.false159:                                 ; preds = %sw.bb155
  %147 = load i32, ptr %v, align 4
  %cmp160 = icmp slt i32 3, %147
  br i1 %cmp160, label %if.then162, label %if.end163

if.then162:                                       ; preds = %lor.lhs.false159, %sw.bb155
  br label %badvalue

if.end163:                                        ; preds = %lor.lhs.false159
  %148 = load i32, ptr %v, align 4
  %conv164 = trunc i32 %148 to i16
  %149 = load ptr, ptr %td, align 8
  %td_resolutionunit = getelementptr inbounds %struct.TIFFDirectory, ptr %149, i32 0, i32 23
  store i16 %conv164, ptr %td_resolutionunit, align 8
  br label %sw.epilog375

sw.bb165:                                         ; preds = %entry
  %150 = va_arg ptr %ap.addr, i32
  store i32 %150, ptr %varet166, align 4
  %151 = load i32, ptr %varet166, align 4
  %conv167 = trunc i32 %151 to i16
  %152 = load ptr, ptr %td, align 8
  %td_pagenumber = getelementptr inbounds %struct.TIFFDirectory, ptr %152, i32 0, i32 27
  %arrayidx168 = getelementptr inbounds [2 x i16], ptr %td_pagenumber, i64 0, i64 0
  store i16 %conv167, ptr %arrayidx168, align 4
  %153 = va_arg ptr %ap.addr, i32
  store i32 %153, ptr %varet169, align 4
  %154 = load i32, ptr %varet169, align 4
  %conv170 = trunc i32 %154 to i16
  %155 = load ptr, ptr %td, align 8
  %td_pagenumber171 = getelementptr inbounds %struct.TIFFDirectory, ptr %155, i32 0, i32 27
  %arrayidx172 = getelementptr inbounds [2 x i16], ptr %td_pagenumber171, i64 0, i64 1
  store i16 %conv170, ptr %arrayidx172, align 2
  br label %sw.epilog375

sw.bb173:                                         ; preds = %entry
  %156 = va_arg ptr %ap.addr, i32
  store i32 %156, ptr %varet174, align 4
  %157 = load i32, ptr %varet174, align 4
  %conv175 = trunc i32 %157 to i16
  %158 = load ptr, ptr %td, align 8
  %td_halftonehints = getelementptr inbounds %struct.TIFFDirectory, ptr %158, i32 0, i32 29
  %arrayidx176 = getelementptr inbounds [2 x i16], ptr %td_halftonehints, i64 0, i64 0
  store i16 %conv175, ptr %arrayidx176, align 8
  %159 = va_arg ptr %ap.addr, i32
  store i32 %159, ptr %varet177, align 4
  %160 = load i32, ptr %varet177, align 4
  %conv178 = trunc i32 %160 to i16
  %161 = load ptr, ptr %td, align 8
  %td_halftonehints179 = getelementptr inbounds %struct.TIFFDirectory, ptr %161, i32 0, i32 29
  %arrayidx180 = getelementptr inbounds [2 x i16], ptr %td_halftonehints179, i64 0, i64 1
  store i16 %conv178, ptr %arrayidx180, align 2
  br label %sw.epilog375

sw.bb181:                                         ; preds = %entry
  %162 = load ptr, ptr %td, align 8
  %td_bitspersample182 = getelementptr inbounds %struct.TIFFDirectory, ptr %162, i32 0, i32 8
  %163 = load i16, ptr %td_bitspersample182, align 8
  %conv183 = zext i16 %163 to i32
  %sh_prom = zext i32 %conv183 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, ptr %v32, align 8
  %164 = load ptr, ptr %td, align 8
  %td_colormap = getelementptr inbounds %struct.TIFFDirectory, ptr %164, i32 0, i32 28
  %arrayidx184 = getelementptr inbounds [3 x ptr], ptr %td_colormap, i64 0, i64 0
  %165 = va_arg ptr %ap.addr, ptr
  store ptr %165, ptr %varet185, align 8
  %166 = load ptr, ptr %varet185, align 8
  %167 = load i64, ptr %v32, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_10(ptr noundef %arrayidx184, ptr noundef %166, i64 noundef %167)
  %168 = load ptr, ptr %td, align 8
  %td_colormap186 = getelementptr inbounds %struct.TIFFDirectory, ptr %168, i32 0, i32 28
  %arrayidx187 = getelementptr inbounds [3 x ptr], ptr %td_colormap186, i64 0, i64 1
  %169 = va_arg ptr %ap.addr, ptr
  store ptr %169, ptr %varet188, align 8
  %170 = load ptr, ptr %varet188, align 8
  %171 = load i64, ptr %v32, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_11(ptr noundef %arrayidx187, ptr noundef %170, i64 noundef %171)
  %172 = load ptr, ptr %td, align 8
  %td_colormap189 = getelementptr inbounds %struct.TIFFDirectory, ptr %172, i32 0, i32 28
  %arrayidx190 = getelementptr inbounds [3 x ptr], ptr %td_colormap189, i64 0, i64 2
  %173 = va_arg ptr %ap.addr, ptr
  store ptr %173, ptr %varet191, align 8
  %174 = load ptr, ptr %varet191, align 8
  %175 = load i64, ptr %v32, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_12(ptr noundef %arrayidx190, ptr noundef %174, i64 noundef %175)
  br label %sw.epilog375

sw.bb192:                                         ; preds = %entry
  %176 = load ptr, ptr %td, align 8
  %177 = load ptr, ptr %ap.addr, align 8
  %call193 = call i32 @setExtraSamples(ptr noundef %176, ptr noundef %177, ptr noundef %v)
  %tobool194 = icmp ne i32 %call193, 0
  br i1 %tobool194, label %if.end196, label %if.then195

if.then195:                                       ; preds = %sw.bb192
  br label %badvalue

if.end196:                                        ; preds = %sw.bb192
  br label %sw.epilog375

sw.bb197:                                         ; preds = %entry
  %178 = va_arg ptr %ap.addr, i32
  store i32 %178, ptr %varet198, align 4
  %179 = load i32, ptr %varet198, align 4
  %cmp199 = icmp ne i32 %179, 0
  %conv200 = zext i1 %cmp199 to i32
  %conv201 = trunc i32 %conv200 to i16
  %180 = load ptr, ptr %td, align 8
  %td_extrasamples = getelementptr inbounds %struct.TIFFDirectory, ptr %180, i32 0, i32 30
  store i16 %conv201, ptr %td_extrasamples, align 4
  %181 = load ptr, ptr %td, align 8
  %td_extrasamples202 = getelementptr inbounds %struct.TIFFDirectory, ptr %181, i32 0, i32 30
  %182 = load i16, ptr %td_extrasamples202, align 4
  %tobool203 = icmp ne i16 %182, 0
  br i1 %tobool203, label %if.then204, label %if.end205

if.then204:                                       ; preds = %sw.bb197
  store i16 1, ptr %sv, align 2
  %183 = load ptr, ptr %td, align 8
  %td_sampleinfo = getelementptr inbounds %struct.TIFFDirectory, ptr %183, i32 0, i32 31
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_13(ptr noundef %td_sampleinfo, ptr noundef %sv, i64 noundef 1)
  br label %if.end205

if.end205:                                        ; preds = %if.then204, %sw.bb197
  br label %sw.epilog375

sw.bb206:                                         ; preds = %entry
  %184 = va_arg ptr %ap.addr, i64
  store i64 %184, ptr %varet207, align 8
  %185 = load i64, ptr %varet207, align 8
  store i64 %185, ptr %v32, align 8
  %186 = load i64, ptr %v32, align 8
  %rem = urem i64 %186, 16
  %tobool208 = icmp ne i64 %rem, 0
  br i1 %tobool208, label %if.then209, label %if.end216

if.then209:                                       ; preds = %sw.bb206
  %187 = load ptr, ptr %tif.addr, align 8
  %tif_mode210 = getelementptr inbounds %struct.tiff, ptr %187, i32 0, i32 2
  %188 = load i32, ptr %tif_mode210, align 4
  %cmp211 = icmp ne i32 %188, 0
  br i1 %cmp211, label %if.then213, label %if.end214

if.then213:                                       ; preds = %if.then209
  br label %badvalue32

if.end214:                                        ; preds = %if.then209
  %189 = load ptr, ptr %tif.addr, align 8
  %tif_name215 = getelementptr inbounds %struct.tiff, ptr %189, i32 0, i32 0
  %190 = load ptr, ptr %tif_name215, align 8
  %191 = load i64, ptr %v32, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %190, ptr noundef @.str.10, i64 noundef %191)
  br label %if.end216

if.end216:                                        ; preds = %if.end214, %sw.bb206
  %192 = load i64, ptr %v32, align 8
  %193 = load ptr, ptr %td, align 8
  %td_tilewidth217 = getelementptr inbounds %struct.TIFFDirectory, ptr %193, i32 0, i32 4
  store i64 %192, ptr %td_tilewidth217, align 8
  %194 = load ptr, ptr %tif.addr, align 8
  %tif_flags218 = getelementptr inbounds %struct.tiff, ptr %194, i32 0, i32 3
  %195 = load i64, ptr %tif_flags218, align 8
  %or = or i64 %195, 1024
  store i64 %or, ptr %tif_flags218, align 8
  br label %sw.epilog375

sw.bb219:                                         ; preds = %entry
  %196 = va_arg ptr %ap.addr, i64
  store i64 %196, ptr %varet220, align 8
  %197 = load i64, ptr %varet220, align 8
  store i64 %197, ptr %v32, align 8
  %198 = load i64, ptr %v32, align 8
  %rem221 = urem i64 %198, 16
  %tobool222 = icmp ne i64 %rem221, 0
  br i1 %tobool222, label %if.then223, label %if.end230

if.then223:                                       ; preds = %sw.bb219
  %199 = load ptr, ptr %tif.addr, align 8
  %tif_mode224 = getelementptr inbounds %struct.tiff, ptr %199, i32 0, i32 2
  %200 = load i32, ptr %tif_mode224, align 4
  %cmp225 = icmp ne i32 %200, 0
  br i1 %cmp225, label %if.then227, label %if.end228

if.then227:                                       ; preds = %if.then223
  br label %badvalue32

if.end228:                                        ; preds = %if.then223
  %201 = load ptr, ptr %tif.addr, align 8
  %tif_name229 = getelementptr inbounds %struct.tiff, ptr %201, i32 0, i32 0
  %202 = load ptr, ptr %tif_name229, align 8
  %203 = load i64, ptr %v32, align 8
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %202, ptr noundef @.str.11, i64 noundef %203)
  br label %if.end230

if.end230:                                        ; preds = %if.end228, %sw.bb219
  %204 = load i64, ptr %v32, align 8
  %205 = load ptr, ptr %td, align 8
  %td_tilelength231 = getelementptr inbounds %struct.TIFFDirectory, ptr %205, i32 0, i32 5
  store i64 %204, ptr %td_tilelength231, align 8
  %206 = load ptr, ptr %tif.addr, align 8
  %tif_flags232 = getelementptr inbounds %struct.tiff, ptr %206, i32 0, i32 3
  %207 = load i64, ptr %tif_flags232, align 8
  %or233 = or i64 %207, 1024
  store i64 %or233, ptr %tif_flags232, align 8
  br label %sw.epilog375

sw.bb234:                                         ; preds = %entry
  %208 = va_arg ptr %ap.addr, i64
  store i64 %208, ptr %varet235, align 8
  %209 = load i64, ptr %varet235, align 8
  store i64 %209, ptr %v32, align 8
  %210 = load i64, ptr %v32, align 8
  %cmp236 = icmp eq i64 %210, 0
  br i1 %cmp236, label %if.then238, label %if.end239

if.then238:                                       ; preds = %sw.bb234
  br label %badvalue32

if.end239:                                        ; preds = %sw.bb234
  %211 = load i64, ptr %v32, align 8
  %212 = load ptr, ptr %td, align 8
  %td_tiledepth = getelementptr inbounds %struct.TIFFDirectory, ptr %212, i32 0, i32 6
  store i64 %211, ptr %td_tiledepth, align 8
  br label %sw.epilog375

sw.bb240:                                         ; preds = %entry
  %213 = va_arg ptr %ap.addr, i32
  store i32 %213, ptr %varet241, align 4
  %214 = load i32, ptr %varet241, align 4
  store i32 %214, ptr %v, align 4
  %215 = load i32, ptr %v, align 4
  switch i32 %215, label %sw.default [
    i32 0, label %sw.bb242
    i32 1, label %sw.bb243
    i32 2, label %sw.bb244
    i32 3, label %sw.bb245
  ]

sw.bb242:                                         ; preds = %sw.bb240
  store i32 4, ptr %v, align 4
  br label %sw.epilog

sw.bb243:                                         ; preds = %sw.bb240
  store i32 2, ptr %v, align 4
  br label %sw.epilog

sw.bb244:                                         ; preds = %sw.bb240
  store i32 1, ptr %v, align 4
  br label %sw.epilog

sw.bb245:                                         ; preds = %sw.bb240
  store i32 3, ptr %v, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb240
  br label %badvalue

sw.epilog:                                        ; preds = %sw.bb245, %sw.bb244, %sw.bb243, %sw.bb242
  %216 = load i32, ptr %v, align 4
  %conv246 = trunc i32 %216 to i16
  %217 = load ptr, ptr %td, align 8
  %td_sampleformat = getelementptr inbounds %struct.TIFFDirectory, ptr %217, i32 0, i32 9
  store i16 %conv246, ptr %td_sampleformat, align 2
  br label %sw.epilog375

sw.bb247:                                         ; preds = %entry
  %218 = va_arg ptr %ap.addr, i32
  store i32 %218, ptr %varet248, align 4
  %219 = load i32, ptr %varet248, align 4
  store i32 %219, ptr %v, align 4
  %220 = load i32, ptr %v, align 4
  %cmp249 = icmp slt i32 %220, 1
  br i1 %cmp249, label %if.then254, label %lor.lhs.false251

lor.lhs.false251:                                 ; preds = %sw.bb247
  %221 = load i32, ptr %v, align 4
  %cmp252 = icmp slt i32 4, %221
  br i1 %cmp252, label %if.then254, label %if.end255

if.then254:                                       ; preds = %lor.lhs.false251, %sw.bb247
  br label %badvalue

if.end255:                                        ; preds = %lor.lhs.false251
  %222 = load i32, ptr %v, align 4
  %conv256 = trunc i32 %222 to i16
  %223 = load ptr, ptr %td, align 8
  %td_sampleformat257 = getelementptr inbounds %struct.TIFFDirectory, ptr %223, i32 0, i32 9
  store i16 %conv256, ptr %td_sampleformat257, align 2
  br label %sw.epilog375

sw.bb258:                                         ; preds = %entry
  %224 = va_arg ptr %ap.addr, i64
  store i64 %224, ptr %varet259, align 8
  %225 = load i64, ptr %varet259, align 8
  %226 = load ptr, ptr %td, align 8
  %td_imagedepth = getelementptr inbounds %struct.TIFFDirectory, ptr %226, i32 0, i32 3
  store i64 %225, ptr %td_imagedepth, align 8
  br label %sw.epilog375

sw.bb260:                                         ; preds = %entry
  %227 = va_arg ptr %ap.addr, double
  store double %227, ptr %varet261, align 8
  %228 = load double, ptr %varet261, align 8
  store double %228, ptr %d, align 8
  %229 = load double, ptr %d, align 8
  %cmp262 = fcmp ole double %229, 0.000000e+00
  br i1 %cmp262, label %if.then264, label %if.end265

if.then264:                                       ; preds = %sw.bb260
  br label %badvaluedbl

if.end265:                                        ; preds = %sw.bb260
  %230 = load double, ptr %d, align 8
  %231 = load ptr, ptr %td, align 8
  %td_stonits = getelementptr inbounds %struct.TIFFDirectory, ptr %231, i32 0, i32 32
  store double %230, ptr %td_stonits, align 8
  br label %sw.epilog375

sw.bb266:                                         ; preds = %entry
  %232 = va_arg ptr %ap.addr, i64
  store i64 %232, ptr %varet267, align 8
  %233 = load i64, ptr %varet267, align 8
  %234 = load ptr, ptr %td, align 8
  %td_imagefullwidth = getelementptr inbounds %struct.TIFFDirectory, ptr %234, i32 0, i32 67
  store i64 %233, ptr %td_imagefullwidth, align 8
  br label %sw.epilog375

sw.bb268:                                         ; preds = %entry
  %235 = va_arg ptr %ap.addr, i64
  store i64 %235, ptr %varet269, align 8
  %236 = load i64, ptr %varet269, align 8
  %237 = load ptr, ptr %td, align 8
  %td_imagefulllength = getelementptr inbounds %struct.TIFFDirectory, ptr %237, i32 0, i32 68
  store i64 %236, ptr %td_imagefulllength, align 8
  br label %sw.epilog375

sw.bb270:                                         ; preds = %entry
  %238 = load ptr, ptr %td, align 8
  %td_textureformat = getelementptr inbounds %struct.TIFFDirectory, ptr %238, i32 0, i32 69
  %239 = va_arg ptr %ap.addr, ptr
  store ptr %239, ptr %varet271, align 8
  %240 = load ptr, ptr %varet271, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_14(ptr noundef %td_textureformat, ptr noundef %240)
  br label %sw.epilog375

sw.bb272:                                         ; preds = %entry
  %241 = load ptr, ptr %td, align 8
  %td_wrapmodes = getelementptr inbounds %struct.TIFFDirectory, ptr %241, i32 0, i32 70
  %242 = va_arg ptr %ap.addr, ptr
  store ptr %242, ptr %varet273, align 8
  %243 = load ptr, ptr %varet273, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_15(ptr noundef %td_wrapmodes, ptr noundef %243)
  br label %sw.epilog375

sw.bb274:                                         ; preds = %entry
  %244 = va_arg ptr %ap.addr, double
  store double %244, ptr %varet275, align 8
  %245 = load double, ptr %varet275, align 8
  %conv276 = fptrunc double %245 to float
  %246 = load ptr, ptr %td, align 8
  %td_fovcot = getelementptr inbounds %struct.TIFFDirectory, ptr %246, i32 0, i32 71
  store float %conv276, ptr %td_fovcot, align 8
  br label %sw.epilog375

sw.bb277:                                         ; preds = %entry
  %247 = load ptr, ptr %td, align 8
  %td_matrixWorldToScreen = getelementptr inbounds %struct.TIFFDirectory, ptr %247, i32 0, i32 72
  %248 = va_arg ptr %ap.addr, ptr
  store ptr %248, ptr %varet278, align 8
  %249 = load ptr, ptr %varet278, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_16(ptr noundef %td_matrixWorldToScreen, ptr noundef %249, i64 noundef 16)
  br label %sw.epilog375

sw.bb279:                                         ; preds = %entry
  %250 = load ptr, ptr %td, align 8
  %td_matrixWorldToCamera = getelementptr inbounds %struct.TIFFDirectory, ptr %250, i32 0, i32 73
  %251 = va_arg ptr %ap.addr, ptr
  store ptr %251, ptr %varet280, align 8
  %252 = load ptr, ptr %varet280, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_17(ptr noundef %td_matrixWorldToCamera, ptr noundef %252, i64 noundef 16)
  br label %sw.epilog375

sw.bb281:                                         ; preds = %entry
  %253 = load ptr, ptr %tif.addr, align 8
  %tif_flags282 = getelementptr inbounds %struct.tiff, ptr %253, i32 0, i32 3
  %254 = load i64, ptr %tif_flags282, align 8
  %and283 = and i64 %254, 8192
  %cmp284 = icmp eq i64 %and283, 0
  br i1 %cmp284, label %if.then286, label %if.else292

if.then286:                                       ; preds = %sw.bb281
  %255 = va_arg ptr %ap.addr, i32
  store i32 %255, ptr %varet287, align 4
  %256 = load i32, ptr %varet287, align 4
  %conv288 = trunc i32 %256 to i16
  %257 = load ptr, ptr %td, align 8
  %td_nsubifd = getelementptr inbounds %struct.TIFFDirectory, ptr %257, i32 0, i32 46
  store i16 %conv288, ptr %td_nsubifd, align 8
  %258 = load ptr, ptr %td, align 8
  %td_subifd = getelementptr inbounds %struct.TIFFDirectory, ptr %258, i32 0, i32 47
  %259 = va_arg ptr %ap.addr, ptr
  store ptr %259, ptr %varet289, align 8
  %260 = load ptr, ptr %varet289, align 8
  %261 = load ptr, ptr %td, align 8
  %td_nsubifd290 = getelementptr inbounds %struct.TIFFDirectory, ptr %261, i32 0, i32 46
  %262 = load i16, ptr %td_nsubifd290, align 8
  %conv291 = zext i16 %262 to i64
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_18(ptr noundef %td_subifd, ptr noundef %260, i64 noundef %conv291)
  br label %if.end294

if.else292:                                       ; preds = %sw.bb281
  %263 = load ptr, ptr %tif.addr, align 8
  %tif_name293 = getelementptr inbounds %struct.tiff, ptr %263, i32 0, i32 0
  %264 = load ptr, ptr %tif_name293, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %264, ptr noundef @.str.12)
  store i32 0, ptr %status, align 4
  br label %if.end294

if.end294:                                        ; preds = %if.else292, %if.then286
  br label %sw.epilog375

sw.bb295:                                         ; preds = %entry
  %265 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs = getelementptr inbounds %struct.TIFFDirectory, ptr %265, i32 0, i32 48
  %266 = va_arg ptr %ap.addr, ptr
  store ptr %266, ptr %varet296, align 8
  %267 = load ptr, ptr %varet296, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_19(ptr noundef %td_ycbcrcoeffs, ptr noundef %267, i64 noundef 3)
  br label %sw.epilog375

sw.bb297:                                         ; preds = %entry
  %268 = va_arg ptr %ap.addr, i32
  store i32 %268, ptr %varet298, align 4
  %269 = load i32, ptr %varet298, align 4
  %conv299 = trunc i32 %269 to i16
  %270 = load ptr, ptr %td, align 8
  %td_ycbcrpositioning = getelementptr inbounds %struct.TIFFDirectory, ptr %270, i32 0, i32 50
  store i16 %conv299, ptr %td_ycbcrpositioning, align 4
  br label %sw.epilog375

sw.bb300:                                         ; preds = %entry
  %271 = va_arg ptr %ap.addr, i32
  store i32 %271, ptr %varet301, align 4
  %272 = load i32, ptr %varet301, align 4
  %conv302 = trunc i32 %272 to i16
  %273 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling = getelementptr inbounds %struct.TIFFDirectory, ptr %273, i32 0, i32 49
  %arrayidx303 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling, i64 0, i64 0
  store i16 %conv302, ptr %arrayidx303, align 8
  %274 = va_arg ptr %ap.addr, i32
  store i32 %274, ptr %varet304, align 4
  %275 = load i32, ptr %varet304, align 4
  %conv305 = trunc i32 %275 to i16
  %276 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling306 = getelementptr inbounds %struct.TIFFDirectory, ptr %276, i32 0, i32 49
  %arrayidx307 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling306, i64 0, i64 1
  store i16 %conv305, ptr %arrayidx307, align 2
  br label %sw.epilog375

sw.bb308:                                         ; preds = %entry
  %277 = load ptr, ptr %td, align 8
  %td_whitepoint = getelementptr inbounds %struct.TIFFDirectory, ptr %277, i32 0, i32 51
  %278 = va_arg ptr %ap.addr, ptr
  store ptr %278, ptr %varet309, align 8
  %279 = load ptr, ptr %varet309, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_20(ptr noundef %td_whitepoint, ptr noundef %279, i64 noundef 2)
  br label %sw.epilog375

sw.bb310:                                         ; preds = %entry
  %280 = load ptr, ptr %td, align 8
  %td_primarychromas = getelementptr inbounds %struct.TIFFDirectory, ptr %280, i32 0, i32 52
  %281 = va_arg ptr %ap.addr, ptr
  store ptr %281, ptr %varet311, align 8
  %282 = load ptr, ptr %varet311, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_21(ptr noundef %td_primarychromas, ptr noundef %282, i64 noundef 6)
  br label %sw.epilog375

sw.bb312:                                         ; preds = %entry
  %283 = load ptr, ptr %td, align 8
  %td_samplesperpixel313 = getelementptr inbounds %struct.TIFFDirectory, ptr %283, i32 0, i32 15
  %284 = load i16, ptr %td_samplesperpixel313, align 2
  %conv314 = zext i16 %284 to i32
  %285 = load ptr, ptr %td, align 8
  %td_extrasamples315 = getelementptr inbounds %struct.TIFFDirectory, ptr %285, i32 0, i32 30
  %286 = load i16, ptr %td_extrasamples315, align 4
  %conv316 = zext i16 %286 to i32
  %sub = sub nsw i32 %conv314, %conv316
  %cmp317 = icmp sgt i32 %sub, 1
  %287 = zext i1 %cmp317 to i64
  %cond = select i1 %cmp317, i32 3, i32 1
  store i32 %cond, ptr %v, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb312
  %288 = load i32, ptr %i, align 4
  %289 = load i32, ptr %v, align 4
  %cmp319 = icmp slt i32 %288, %289
  br i1 %cmp319, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %290 = load ptr, ptr %td, align 8
  %td_transferfunction = getelementptr inbounds %struct.TIFFDirectory, ptr %290, i32 0, i32 54
  %291 = load i32, ptr %i, align 4
  %idxprom = sext i32 %291 to i64
  %arrayidx321 = getelementptr inbounds [3 x ptr], ptr %td_transferfunction, i64 0, i64 %idxprom
  %292 = va_arg ptr %ap.addr, ptr
  store ptr %292, ptr %varet322, align 8
  %293 = load ptr, ptr %varet322, align 8
  %294 = load ptr, ptr %td, align 8
  %td_bitspersample323 = getelementptr inbounds %struct.TIFFDirectory, ptr %294, i32 0, i32 8
  %295 = load i16, ptr %td_bitspersample323, align 8
  %conv324 = zext i16 %295 to i32
  %sh_prom325 = zext i32 %conv324 to i64
  %shl326 = shl i64 1, %sh_prom325
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_22(ptr noundef %arrayidx321, ptr noundef %293, i64 noundef %shl326)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %296 = load i32, ptr %i, align 4
  %inc = add nsw i32 %296, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %sw.epilog375

sw.bb327:                                         ; preds = %entry
  %297 = load ptr, ptr %td, align 8
  %td_refblackwhite = getelementptr inbounds %struct.TIFFDirectory, ptr %297, i32 0, i32 53
  %298 = va_arg ptr %ap.addr, ptr
  store ptr %298, ptr %varet328, align 8
  %299 = load ptr, ptr %varet328, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_23(ptr noundef %td_refblackwhite, ptr noundef %299, i64 noundef 6)
  br label %sw.epilog375

sw.bb329:                                         ; preds = %entry
  %300 = va_arg ptr %ap.addr, i32
  store i32 %300, ptr %varet330, align 4
  %301 = load i32, ptr %varet330, align 4
  %conv331 = trunc i32 %301 to i16
  %302 = load ptr, ptr %td, align 8
  %td_inkset = getelementptr inbounds %struct.TIFFDirectory, ptr %302, i32 0, i32 55
  store i16 %conv331, ptr %td_inkset, align 8
  br label %sw.epilog375

sw.bb332:                                         ; preds = %entry
  %303 = va_arg ptr %ap.addr, i32
  store i32 %303, ptr %varet333, align 4
  %304 = load i32, ptr %varet333, align 4
  %conv334 = trunc i32 %304 to i16
  %305 = load ptr, ptr %td, align 8
  %td_dotrange = getelementptr inbounds %struct.TIFFDirectory, ptr %305, i32 0, i32 57
  %arrayidx335 = getelementptr inbounds [2 x i16], ptr %td_dotrange, i64 0, i64 0
  store i16 %conv334, ptr %arrayidx335, align 4
  %306 = va_arg ptr %ap.addr, i32
  store i32 %306, ptr %varet336, align 4
  %307 = load i32, ptr %varet336, align 4
  %conv337 = trunc i32 %307 to i16
  %308 = load ptr, ptr %td, align 8
  %td_dotrange338 = getelementptr inbounds %struct.TIFFDirectory, ptr %308, i32 0, i32 57
  %arrayidx339 = getelementptr inbounds [2 x i16], ptr %td_dotrange338, i64 0, i64 1
  store i16 %conv337, ptr %arrayidx339, align 2
  br label %sw.epilog375

sw.bb340:                                         ; preds = %entry
  %309 = va_arg ptr %ap.addr, i32
  store i32 %309, ptr %varet341, align 4
  %310 = load i32, ptr %varet341, align 4
  store i32 %310, ptr %i, align 4
  %311 = va_arg ptr %ap.addr, ptr
  store ptr %311, ptr %varet342, align 8
  %312 = load ptr, ptr %varet342, align 8
  store ptr %312, ptr %s, align 8
  %313 = load ptr, ptr %tif.addr, align 8
  %314 = load i32, ptr %i, align 4
  %315 = load ptr, ptr %s, align 8
  %call343 = call i32 @checkInkNamesString(ptr noundef %313, i32 noundef %314, ptr noundef %315)
  store i32 %call343, ptr %i, align 4
  %316 = load i32, ptr %i, align 4
  %cmp344 = icmp sgt i32 %316, 0
  %conv345 = zext i1 %cmp344 to i32
  store i32 %conv345, ptr %status, align 4
  %317 = load i32, ptr %i, align 4
  %cmp346 = icmp sgt i32 %317, 0
  br i1 %cmp346, label %if.then348, label %if.end350

if.then348:                                       ; preds = %sw.bb340
  %318 = load ptr, ptr %td, align 8
  %td_inknames = getelementptr inbounds %struct.TIFFDirectory, ptr %318, i32 0, i32 59
  %319 = load ptr, ptr %s, align 8
  %320 = load i32, ptr %i, align 4
  %conv349 = sext i32 %320 to i64
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_24(ptr noundef %td_inknames, ptr noundef %319, i64 noundef %conv349)
  %321 = load i32, ptr %i, align 4
  %322 = load ptr, ptr %td, align 8
  %td_inknameslen = getelementptr inbounds %struct.TIFFDirectory, ptr %322, i32 0, i32 58
  store i32 %321, ptr %td_inknameslen, align 8
  br label %if.end350

if.end350:                                        ; preds = %if.then348, %sw.bb340
  br label %sw.epilog375

sw.bb351:                                         ; preds = %entry
  %323 = va_arg ptr %ap.addr, i32
  store i32 %323, ptr %varet352, align 4
  %324 = load i32, ptr %varet352, align 4
  %conv353 = trunc i32 %324 to i16
  %325 = load ptr, ptr %td, align 8
  %td_ninks = getelementptr inbounds %struct.TIFFDirectory, ptr %325, i32 0, i32 56
  store i16 %conv353, ptr %td_ninks, align 2
  br label %sw.epilog375

sw.bb354:                                         ; preds = %entry
  %326 = load ptr, ptr %td, align 8
  %td_targetprinter = getelementptr inbounds %struct.TIFFDirectory, ptr %326, i32 0, i32 60
  %327 = va_arg ptr %ap.addr, ptr
  store ptr %327, ptr %varet355, align 8
  %328 = load ptr, ptr %varet355, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_25(ptr noundef %td_targetprinter, ptr noundef %328)
  br label %sw.epilog375

sw.bb356:                                         ; preds = %entry
  %329 = va_arg ptr %ap.addr, i64
  store i64 %329, ptr %varet357, align 8
  %330 = load i64, ptr %varet357, align 8
  %331 = load ptr, ptr %td, align 8
  %td_profileLength = getelementptr inbounds %struct.TIFFDirectory, ptr %331, i32 0, i32 61
  store i64 %330, ptr %td_profileLength, align 8
  %332 = load ptr, ptr %td, align 8
  %td_profileData = getelementptr inbounds %struct.TIFFDirectory, ptr %332, i32 0, i32 62
  %333 = va_arg ptr %ap.addr, ptr
  store ptr %333, ptr %varet358, align 8
  %334 = load ptr, ptr %varet358, align 8
  %335 = load ptr, ptr %td, align 8
  %td_profileLength359 = getelementptr inbounds %struct.TIFFDirectory, ptr %335, i32 0, i32 61
  %336 = load i64, ptr %td_profileLength359, align 8
  call void @_TIFFsetByteArray(ptr noundef %td_profileData, ptr noundef %334, i64 noundef %336)
  br label %sw.epilog375

sw.bb360:                                         ; preds = %entry
  %337 = va_arg ptr %ap.addr, i64
  store i64 %337, ptr %varet361, align 8
  %338 = load i64, ptr %varet361, align 8
  %339 = load ptr, ptr %td, align 8
  %td_photoshopLength = getelementptr inbounds %struct.TIFFDirectory, ptr %339, i32 0, i32 63
  store i64 %338, ptr %td_photoshopLength, align 8
  %340 = load ptr, ptr %td, align 8
  %td_photoshopData = getelementptr inbounds %struct.TIFFDirectory, ptr %340, i32 0, i32 64
  %341 = va_arg ptr %ap.addr, ptr
  store ptr %341, ptr %varet362, align 8
  %342 = load ptr, ptr %varet362, align 8
  %343 = load ptr, ptr %td, align 8
  %td_photoshopLength363 = getelementptr inbounds %struct.TIFFDirectory, ptr %343, i32 0, i32 63
  %344 = load i64, ptr %td_photoshopLength363, align 8
  call void @_TIFFsetByteArray(ptr noundef %td_photoshopData, ptr noundef %342, i64 noundef %344)
  br label %sw.epilog375

sw.bb364:                                         ; preds = %entry
  %345 = va_arg ptr %ap.addr, i64
  store i64 %345, ptr %varet365, align 8
  %346 = load i64, ptr %varet365, align 8
  %347 = load ptr, ptr %td, align 8
  %td_richtiffiptcLength = getelementptr inbounds %struct.TIFFDirectory, ptr %347, i32 0, i32 65
  store i64 %346, ptr %td_richtiffiptcLength, align 8
  %348 = load ptr, ptr %td, align 8
  %td_richtiffiptcData = getelementptr inbounds %struct.TIFFDirectory, ptr %348, i32 0, i32 66
  %349 = va_arg ptr %ap.addr, ptr
  store ptr %349, ptr %varet366, align 8
  %350 = load ptr, ptr %varet366, align 8
  %351 = load ptr, ptr %td, align 8
  %td_richtiffiptcLength367 = getelementptr inbounds %struct.TIFFDirectory, ptr %351, i32 0, i32 65
  %352 = load i64, ptr %td_richtiffiptcLength367, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_26(ptr noundef %td_richtiffiptcData, ptr noundef %350, i64 noundef %352)
  br label %sw.epilog375

sw.default368:                                    ; preds = %entry
  %353 = load ptr, ptr %tif.addr, align 8
  %tif_name369 = getelementptr inbounds %struct.tiff, ptr %353, i32 0, i32 0
  %354 = load ptr, ptr %tif_name369, align 8
  %355 = load i64, ptr %tag.addr, align 8
  %cmp370 = icmp ugt i64 %355, 65535
  %356 = zext i1 %cmp370 to i64
  %cond372 = select i1 %cmp370, ptr @.str.14, ptr @.str.6
  %357 = load ptr, ptr %tif.addr, align 8
  %358 = load i64, ptr %tag.addr, align 8
  %call373 = call ptr @_TIFFFieldWithTag(ptr noundef %357, i64 noundef %358)
  %field_name374 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call373, i32 0, i32 7
  %359 = load ptr, ptr %field_name374, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @.str.3, ptr noundef @.str.13, ptr noundef %354, ptr noundef %cond372, ptr noundef %359)
  store i32 0, ptr %status, align 4
  br label %sw.epilog375

sw.epilog375:                                     ; preds = %sw.default368, %sw.bb364, %sw.bb360, %sw.bb356, %sw.bb354, %sw.bb351, %if.end350, %sw.bb332, %sw.bb329, %sw.bb327, %for.end, %sw.bb310, %sw.bb308, %sw.bb300, %sw.bb297, %sw.bb295, %if.end294, %sw.bb279, %sw.bb277, %sw.bb274, %sw.bb272, %sw.bb270, %sw.bb268, %sw.bb266, %if.end265, %sw.bb258, %if.end255, %sw.epilog, %if.end239, %if.end230, %if.end216, %if.end205, %if.end196, %sw.bb181, %sw.bb173, %sw.bb165, %if.end163, %sw.bb152, %sw.bb149, %sw.bb147, %if.end145, %sw.bb134, %sw.bb131, %sw.bb129, %sw.bb127, %sw.bb124, %sw.bb121, %if.end120, %if.end105, %if.end99, %sw.bb86, %sw.bb84, %sw.bb82, %sw.bb80, %sw.bb78, %sw.bb76, %sw.bb74, %sw.bb72, %if.end70, %sw.bb60, %sw.bb57, %if.end56, %if.then37, %if.end26, %sw.bb3, %sw.bb1, %sw.bb
  %360 = load i32, ptr %status, align 4
  %tobool376 = icmp ne i32 %360, 0
  br i1 %tobool376, label %if.then377, label %if.end393

if.then377:                                       ; preds = %sw.epilog375
  %361 = load ptr, ptr %tif.addr, align 8
  %362 = load i64, ptr %tag.addr, align 8
  %call378 = call ptr @_TIFFFieldWithTag(ptr noundef %361, i64 noundef %362)
  %field_bit = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call378, i32 0, i32 4
  %363 = load i16, ptr %field_bit, align 8
  %conv379 = zext i16 %363 to i32
  %and380 = and i32 %conv379, 31
  %sh_prom381 = zext i32 %and380 to i64
  %shl382 = shl i64 1, %sh_prom381
  %364 = load ptr, ptr %tif.addr, align 8
  %tif_dir383 = getelementptr inbounds %struct.tiff, ptr %364, i32 0, i32 6
  %td_fieldsset384 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir383, i32 0, i32 0
  %365 = load ptr, ptr %tif.addr, align 8
  %366 = load i64, ptr %tag.addr, align 8
  %call385 = call ptr @_TIFFFieldWithTag(ptr noundef %365, i64 noundef %366)
  %field_bit386 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call385, i32 0, i32 4
  %367 = load i16, ptr %field_bit386, align 8
  %conv387 = zext i16 %367 to i32
  %div = sdiv i32 %conv387, 32
  %idxprom388 = sext i32 %div to i64
  %arrayidx389 = getelementptr inbounds [3 x i64], ptr %td_fieldsset384, i64 0, i64 %idxprom388
  %368 = load i64, ptr %arrayidx389, align 8
  %or390 = or i64 %368, %shl382
  store i64 %or390, ptr %arrayidx389, align 8
  %369 = load ptr, ptr %tif.addr, align 8
  %tif_flags391 = getelementptr inbounds %struct.tiff, ptr %369, i32 0, i32 3
  %370 = load i64, ptr %tif_flags391, align 8
  %or392 = or i64 %370, 8
  store i64 %or392, ptr %tif_flags391, align 8
  br label %if.end393

if.end393:                                        ; preds = %if.then377, %sw.epilog375
  call void @llvm.va_end(ptr %ap.addr)
  %371 = load i32, ptr %status, align 4
  store i32 %371, ptr %retval, align 4
  br label %return

badvalue:                                         ; preds = %if.then254, %sw.default, %if.then195, %if.then162, %if.then144, %if.then104, %if.then69
  %372 = load ptr, ptr %tif.addr, align 8
  %tif_name394 = getelementptr inbounds %struct.tiff, ptr %372, i32 0, i32 0
  %373 = load ptr, ptr %tif_name394, align 8
  %374 = load i32, ptr %v, align 4
  %375 = load ptr, ptr %tif.addr, align 8
  %376 = load i64, ptr %tag.addr, align 8
  %call395 = call ptr @_TIFFFieldWithTag(ptr noundef %375, i64 noundef %376)
  %field_name396 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call395, i32 0, i32 7
  %377 = load ptr, ptr %field_name396, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %373, ptr noundef @.str.15, i32 noundef %374, ptr noundef %377)
  call void @llvm.va_end(ptr %ap.addr)
  store i32 0, ptr %retval, align 4
  br label %return

badvalue32:                                       ; preds = %if.then238, %if.then227, %if.then213, %if.then111
  %378 = load ptr, ptr %tif.addr, align 8
  %tif_name397 = getelementptr inbounds %struct.tiff, ptr %378, i32 0, i32 0
  %379 = load ptr, ptr %tif_name397, align 8
  %380 = load i64, ptr %v32, align 8
  %381 = load ptr, ptr %tif.addr, align 8
  %382 = load i64, ptr %tag.addr, align 8
  %call398 = call ptr @_TIFFFieldWithTag(ptr noundef %381, i64 noundef %382)
  %field_name399 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call398, i32 0, i32 7
  %383 = load ptr, ptr %field_name399, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %379, ptr noundef @.str.16, i64 noundef %380, ptr noundef %383)
  call void @llvm.va_end(ptr %ap.addr)
  store i32 0, ptr %retval, align 4
  br label %return

badvaluedbl:                                      ; preds = %if.then264
  %384 = load ptr, ptr %tif.addr, align 8
  %tif_name400 = getelementptr inbounds %struct.tiff, ptr %384, i32 0, i32 0
  %385 = load ptr, ptr %tif_name400, align 8
  %386 = load double, ptr %d, align 8
  %387 = load ptr, ptr %tif.addr, align 8
  %388 = load i64, ptr %tag.addr, align 8
  %call401 = call ptr @_TIFFFieldWithTag(ptr noundef %387, i64 noundef %388)
  %field_name402 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call401, i32 0, i32 7
  %389 = load ptr, ptr %field_name402, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %385, ptr noundef @.str.17, double noundef %386, ptr noundef %389)
  call void @llvm.va_end(ptr %ap.addr)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %badvaluedbl, %badvalue32, %badvalue, %if.end393
  %390 = load i32, ptr %retval, align 4
  ret i32 %390
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @_TIFFVGetField(ptr noundef %tif, i64 noundef %tag, ptr noundef %ap) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i64, align 8
  %ap.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %varet = alloca ptr, align 8
  %varet2 = alloca ptr, align 8
  %varet4 = alloca ptr, align 8
  %varet6 = alloca ptr, align 8
  %varet8 = alloca ptr, align 8
  %varet10 = alloca ptr, align 8
  %varet12 = alloca ptr, align 8
  %varet14 = alloca ptr, align 8
  %varet16 = alloca ptr, align 8
  %varet18 = alloca ptr, align 8
  %varet20 = alloca ptr, align 8
  %varet22 = alloca ptr, align 8
  %varet24 = alloca ptr, align 8
  %varet26 = alloca ptr, align 8
  %varet28 = alloca ptr, align 8
  %varet30 = alloca ptr, align 8
  %varet32 = alloca ptr, align 8
  %varet34 = alloca ptr, align 8
  %varet36 = alloca ptr, align 8
  %varet38 = alloca ptr, align 8
  %varet40 = alloca ptr, align 8
  %varet42 = alloca ptr, align 8
  %varet44 = alloca ptr, align 8
  %varet46 = alloca ptr, align 8
  %varet48 = alloca ptr, align 8
  %varet50 = alloca ptr, align 8
  %varet52 = alloca ptr, align 8
  %varet54 = alloca ptr, align 8
  %varet56 = alloca ptr, align 8
  %varet58 = alloca ptr, align 8
  %varet60 = alloca ptr, align 8
  %varet63 = alloca ptr, align 8
  %varet66 = alloca ptr, align 8
  %varet69 = alloca ptr, align 8
  %varet72 = alloca ptr, align 8
  %varet75 = alloca ptr, align 8
  %varet78 = alloca ptr, align 8
  %varet80 = alloca ptr, align 8
  %varet82 = alloca ptr, align 8
  %varet90 = alloca ptr, align 8
  %varet93 = alloca ptr, align 8
  %varet95 = alloca ptr, align 8
  %varet97 = alloca ptr, align 8
  %varet99 = alloca ptr, align 8
  %varet101 = alloca ptr, align 8
  %varet105 = alloca ptr, align 8
  %varet107 = alloca ptr, align 8
  %varet109 = alloca ptr, align 8
  %varet111 = alloca ptr, align 8
  %varet114 = alloca ptr, align 8
  %varet116 = alloca ptr, align 8
  %varet118 = alloca ptr, align 8
  %varet120 = alloca ptr, align 8
  %varet121 = alloca ptr, align 8
  %varet123 = alloca ptr, align 8
  %varet125 = alloca ptr, align 8
  %varet128 = alloca ptr, align 8
  %varet131 = alloca ptr, align 8
  %varet133 = alloca ptr, align 8
  %varet135 = alloca ptr, align 8
  %varet138 = alloca ptr, align 8
  %varet147 = alloca ptr, align 8
  %varet150 = alloca ptr, align 8
  %varet152 = alloca ptr, align 8
  %varet154 = alloca ptr, align 8
  %varet157 = alloca ptr, align 8
  %varet160 = alloca ptr, align 8
  %varet162 = alloca ptr, align 8
  %varet164 = alloca ptr, align 8
  %varet166 = alloca ptr, align 8
  %varet168 = alloca ptr, align 8
  %varet169 = alloca ptr, align 8
  %varet171 = alloca ptr, align 8
  %varet172 = alloca ptr, align 8
  %varet174 = alloca ptr, align 8
  %varet175 = alloca ptr, align 8
  %varet177 = alloca ptr, align 8
  %varet179 = alloca ptr, align 8
  %varet181 = alloca ptr, align 8
  %varet183 = alloca ptr, align 8
  %varet185 = alloca ptr, align 8
  %varet187 = alloca ptr, align 8
  %varet189 = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tag, ptr %tag.addr, align 8
  store ptr %ap, ptr %ap.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load i64, ptr %tag.addr, align 8
  switch i64 %1, label %sw.default [
    i64 254, label %sw.bb
    i64 256, label %sw.bb1
    i64 257, label %sw.bb3
    i64 258, label %sw.bb5
    i64 259, label %sw.bb7
    i64 262, label %sw.bb9
    i64 263, label %sw.bb11
    i64 266, label %sw.bb13
    i64 269, label %sw.bb15
    i64 315, label %sw.bb17
    i64 306, label %sw.bb19
    i64 316, label %sw.bb21
    i64 270, label %sw.bb23
    i64 271, label %sw.bb25
    i64 272, label %sw.bb27
    i64 305, label %sw.bb29
    i64 274, label %sw.bb31
    i64 277, label %sw.bb33
    i64 278, label %sw.bb35
    i64 280, label %sw.bb37
    i64 281, label %sw.bb39
    i64 340, label %sw.bb41
    i64 341, label %sw.bb43
    i64 282, label %sw.bb45
    i64 283, label %sw.bb47
    i64 284, label %sw.bb49
    i64 286, label %sw.bb51
    i64 287, label %sw.bb53
    i64 285, label %sw.bb55
    i64 296, label %sw.bb57
    i64 297, label %sw.bb59
    i64 321, label %sw.bb64
    i64 320, label %sw.bb70
    i64 273, label %sw.bb79
    i64 324, label %sw.bb79
    i64 279, label %sw.bb81
    i64 325, label %sw.bb81
    i64 32995, label %sw.bb83
    i64 338, label %sw.bb91
    i64 322, label %sw.bb96
    i64 323, label %sw.bb98
    i64 32998, label %sw.bb100
    i64 32996, label %sw.bb102
    i64 339, label %sw.bb112
    i64 32997, label %sw.bb115
    i64 37439, label %sw.bb117
    i64 330, label %sw.bb119
    i64 529, label %sw.bb122
    i64 531, label %sw.bb124
    i64 530, label %sw.bb126
    i64 318, label %sw.bb132
    i64 319, label %sw.bb134
    i64 301, label %sw.bb136
    i64 532, label %sw.bb151
    i64 332, label %sw.bb153
    i64 336, label %sw.bb155
    i64 333, label %sw.bb161
    i64 334, label %sw.bb163
    i64 337, label %sw.bb165
    i64 34675, label %sw.bb167
    i64 34377, label %sw.bb170
    i64 33723, label %sw.bb173
    i64 33300, label %sw.bb176
    i64 33301, label %sw.bb178
    i64 33302, label %sw.bb180
    i64 33303, label %sw.bb182
    i64 33304, label %sw.bb184
    i64 33305, label %sw.bb186
    i64 33306, label %sw.bb188
  ]

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %td, align 8
  %td_subfiletype = getelementptr inbounds %struct.TIFFDirectory, ptr %2, i32 0, i32 7
  %3 = load i64, ptr %td_subfiletype, align 8
  %4 = va_arg ptr %ap.addr, ptr
  store ptr %4, ptr %varet, align 8
  %5 = load ptr, ptr %varet, align 8
  store i64 %3, ptr %5, align 8
  br label %sw.epilog192

sw.bb1:                                           ; preds = %entry
  %6 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %6, i32 0, i32 1
  %7 = load i64, ptr %td_imagewidth, align 8
  %8 = va_arg ptr %ap.addr, ptr
  store ptr %8, ptr %varet2, align 8
  %9 = load ptr, ptr %varet2, align 8
  store i64 %7, ptr %9, align 8
  br label %sw.epilog192

sw.bb3:                                           ; preds = %entry
  %10 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %10, i32 0, i32 2
  %11 = load i64, ptr %td_imagelength, align 8
  %12 = va_arg ptr %ap.addr, ptr
  store ptr %12, ptr %varet4, align 8
  %13 = load ptr, ptr %varet4, align 8
  store i64 %11, ptr %13, align 8
  br label %sw.epilog192

sw.bb5:                                           ; preds = %entry
  %14 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %14, i32 0, i32 8
  %15 = load i16, ptr %td_bitspersample, align 8
  %16 = va_arg ptr %ap.addr, ptr
  store ptr %16, ptr %varet6, align 8
  %17 = load ptr, ptr %varet6, align 8
  store i16 %15, ptr %17, align 2
  br label %sw.epilog192

sw.bb7:                                           ; preds = %entry
  %18 = load ptr, ptr %td, align 8
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %18, i32 0, i32 10
  %19 = load i16, ptr %td_compression, align 4
  %20 = va_arg ptr %ap.addr, ptr
  store ptr %20, ptr %varet8, align 8
  %21 = load ptr, ptr %varet8, align 8
  store i16 %19, ptr %21, align 2
  br label %sw.epilog192

sw.bb9:                                           ; preds = %entry
  %22 = load ptr, ptr %td, align 8
  %td_photometric = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i32 0, i32 11
  %23 = load i16, ptr %td_photometric, align 2
  %24 = va_arg ptr %ap.addr, ptr
  store ptr %24, ptr %varet10, align 8
  %25 = load ptr, ptr %varet10, align 8
  store i16 %23, ptr %25, align 2
  br label %sw.epilog192

sw.bb11:                                          ; preds = %entry
  %26 = load ptr, ptr %td, align 8
  %td_threshholding = getelementptr inbounds %struct.TIFFDirectory, ptr %26, i32 0, i32 12
  %27 = load i16, ptr %td_threshholding, align 8
  %28 = va_arg ptr %ap.addr, ptr
  store ptr %28, ptr %varet12, align 8
  %29 = load ptr, ptr %varet12, align 8
  store i16 %27, ptr %29, align 2
  br label %sw.epilog192

sw.bb13:                                          ; preds = %entry
  %30 = load ptr, ptr %td, align 8
  %td_fillorder = getelementptr inbounds %struct.TIFFDirectory, ptr %30, i32 0, i32 13
  %31 = load i16, ptr %td_fillorder, align 2
  %32 = va_arg ptr %ap.addr, ptr
  store ptr %32, ptr %varet14, align 8
  %33 = load ptr, ptr %varet14, align 8
  store i16 %31, ptr %33, align 2
  br label %sw.epilog192

sw.bb15:                                          ; preds = %entry
  %34 = load ptr, ptr %td, align 8
  %td_documentname = getelementptr inbounds %struct.TIFFDirectory, ptr %34, i32 0, i32 33
  %35 = load ptr, ptr %td_documentname, align 8
  %36 = va_arg ptr %ap.addr, ptr
  store ptr %36, ptr %varet16, align 8
  %37 = load ptr, ptr %varet16, align 8
  store ptr %35, ptr %37, align 8
  br label %sw.epilog192

sw.bb17:                                          ; preds = %entry
  %38 = load ptr, ptr %td, align 8
  %td_artist = getelementptr inbounds %struct.TIFFDirectory, ptr %38, i32 0, i32 34
  %39 = load ptr, ptr %td_artist, align 8
  %40 = va_arg ptr %ap.addr, ptr
  store ptr %40, ptr %varet18, align 8
  %41 = load ptr, ptr %varet18, align 8
  store ptr %39, ptr %41, align 8
  br label %sw.epilog192

sw.bb19:                                          ; preds = %entry
  %42 = load ptr, ptr %td, align 8
  %td_datetime = getelementptr inbounds %struct.TIFFDirectory, ptr %42, i32 0, i32 35
  %43 = load ptr, ptr %td_datetime, align 8
  %44 = va_arg ptr %ap.addr, ptr
  store ptr %44, ptr %varet20, align 8
  %45 = load ptr, ptr %varet20, align 8
  store ptr %43, ptr %45, align 8
  br label %sw.epilog192

sw.bb21:                                          ; preds = %entry
  %46 = load ptr, ptr %td, align 8
  %td_hostcomputer = getelementptr inbounds %struct.TIFFDirectory, ptr %46, i32 0, i32 36
  %47 = load ptr, ptr %td_hostcomputer, align 8
  %48 = va_arg ptr %ap.addr, ptr
  store ptr %48, ptr %varet22, align 8
  %49 = load ptr, ptr %varet22, align 8
  store ptr %47, ptr %49, align 8
  br label %sw.epilog192

sw.bb23:                                          ; preds = %entry
  %50 = load ptr, ptr %td, align 8
  %td_imagedescription = getelementptr inbounds %struct.TIFFDirectory, ptr %50, i32 0, i32 37
  %51 = load ptr, ptr %td_imagedescription, align 8
  %52 = va_arg ptr %ap.addr, ptr
  store ptr %52, ptr %varet24, align 8
  %53 = load ptr, ptr %varet24, align 8
  store ptr %51, ptr %53, align 8
  br label %sw.epilog192

sw.bb25:                                          ; preds = %entry
  %54 = load ptr, ptr %td, align 8
  %td_make = getelementptr inbounds %struct.TIFFDirectory, ptr %54, i32 0, i32 38
  %55 = load ptr, ptr %td_make, align 8
  %56 = va_arg ptr %ap.addr, ptr
  store ptr %56, ptr %varet26, align 8
  %57 = load ptr, ptr %varet26, align 8
  store ptr %55, ptr %57, align 8
  br label %sw.epilog192

sw.bb27:                                          ; preds = %entry
  %58 = load ptr, ptr %td, align 8
  %td_model = getelementptr inbounds %struct.TIFFDirectory, ptr %58, i32 0, i32 39
  %59 = load ptr, ptr %td_model, align 8
  %60 = va_arg ptr %ap.addr, ptr
  store ptr %60, ptr %varet28, align 8
  %61 = load ptr, ptr %varet28, align 8
  store ptr %59, ptr %61, align 8
  br label %sw.epilog192

sw.bb29:                                          ; preds = %entry
  %62 = load ptr, ptr %td, align 8
  %td_software = getelementptr inbounds %struct.TIFFDirectory, ptr %62, i32 0, i32 40
  %63 = load ptr, ptr %td_software, align 8
  %64 = va_arg ptr %ap.addr, ptr
  store ptr %64, ptr %varet30, align 8
  %65 = load ptr, ptr %varet30, align 8
  store ptr %63, ptr %65, align 8
  br label %sw.epilog192

sw.bb31:                                          ; preds = %entry
  %66 = load ptr, ptr %td, align 8
  %td_orientation = getelementptr inbounds %struct.TIFFDirectory, ptr %66, i32 0, i32 14
  %67 = load i16, ptr %td_orientation, align 4
  %68 = va_arg ptr %ap.addr, ptr
  store ptr %68, ptr %varet32, align 8
  %69 = load ptr, ptr %varet32, align 8
  store i16 %67, ptr %69, align 2
  br label %sw.epilog192

sw.bb33:                                          ; preds = %entry
  %70 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %70, i32 0, i32 15
  %71 = load i16, ptr %td_samplesperpixel, align 2
  %72 = va_arg ptr %ap.addr, ptr
  store ptr %72, ptr %varet34, align 8
  %73 = load ptr, ptr %varet34, align 8
  store i16 %71, ptr %73, align 2
  br label %sw.epilog192

sw.bb35:                                          ; preds = %entry
  %74 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %74, i32 0, i32 16
  %75 = load i64, ptr %td_rowsperstrip, align 8
  %76 = va_arg ptr %ap.addr, ptr
  store ptr %76, ptr %varet36, align 8
  %77 = load ptr, ptr %varet36, align 8
  store i64 %75, ptr %77, align 8
  br label %sw.epilog192

sw.bb37:                                          ; preds = %entry
  %78 = load ptr, ptr %td, align 8
  %td_minsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %78, i32 0, i32 17
  %79 = load i16, ptr %td_minsamplevalue, align 8
  %80 = va_arg ptr %ap.addr, ptr
  store ptr %80, ptr %varet38, align 8
  %81 = load ptr, ptr %varet38, align 8
  store i16 %79, ptr %81, align 2
  br label %sw.epilog192

sw.bb39:                                          ; preds = %entry
  %82 = load ptr, ptr %td, align 8
  %td_maxsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %82, i32 0, i32 18
  %83 = load i16, ptr %td_maxsamplevalue, align 2
  %84 = va_arg ptr %ap.addr, ptr
  store ptr %84, ptr %varet40, align 8
  %85 = load ptr, ptr %varet40, align 8
  store i16 %83, ptr %85, align 2
  br label %sw.epilog192

sw.bb41:                                          ; preds = %entry
  %86 = load ptr, ptr %td, align 8
  %td_sminsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %86, i32 0, i32 19
  %87 = load double, ptr %td_sminsamplevalue, align 8
  %88 = va_arg ptr %ap.addr, ptr
  store ptr %88, ptr %varet42, align 8
  %89 = load ptr, ptr %varet42, align 8
  store double %87, ptr %89, align 8
  br label %sw.epilog192

sw.bb43:                                          ; preds = %entry
  %90 = load ptr, ptr %td, align 8
  %td_smaxsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %90, i32 0, i32 20
  %91 = load double, ptr %td_smaxsamplevalue, align 8
  %92 = va_arg ptr %ap.addr, ptr
  store ptr %92, ptr %varet44, align 8
  %93 = load ptr, ptr %varet44, align 8
  store double %91, ptr %93, align 8
  br label %sw.epilog192

sw.bb45:                                          ; preds = %entry
  %94 = load ptr, ptr %td, align 8
  %td_xresolution = getelementptr inbounds %struct.TIFFDirectory, ptr %94, i32 0, i32 21
  %95 = load float, ptr %td_xresolution, align 8
  %96 = va_arg ptr %ap.addr, ptr
  store ptr %96, ptr %varet46, align 8
  %97 = load ptr, ptr %varet46, align 8
  store float %95, ptr %97, align 4
  br label %sw.epilog192

sw.bb47:                                          ; preds = %entry
  %98 = load ptr, ptr %td, align 8
  %td_yresolution = getelementptr inbounds %struct.TIFFDirectory, ptr %98, i32 0, i32 22
  %99 = load float, ptr %td_yresolution, align 4
  %100 = va_arg ptr %ap.addr, ptr
  store ptr %100, ptr %varet48, align 8
  %101 = load ptr, ptr %varet48, align 8
  store float %99, ptr %101, align 4
  br label %sw.epilog192

sw.bb49:                                          ; preds = %entry
  %102 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %102, i32 0, i32 24
  %103 = load i16, ptr %td_planarconfig, align 2
  %104 = va_arg ptr %ap.addr, ptr
  store ptr %104, ptr %varet50, align 8
  %105 = load ptr, ptr %varet50, align 8
  store i16 %103, ptr %105, align 2
  br label %sw.epilog192

sw.bb51:                                          ; preds = %entry
  %106 = load ptr, ptr %td, align 8
  %td_xposition = getelementptr inbounds %struct.TIFFDirectory, ptr %106, i32 0, i32 25
  %107 = load float, ptr %td_xposition, align 4
  %108 = va_arg ptr %ap.addr, ptr
  store ptr %108, ptr %varet52, align 8
  %109 = load ptr, ptr %varet52, align 8
  store float %107, ptr %109, align 4
  br label %sw.epilog192

sw.bb53:                                          ; preds = %entry
  %110 = load ptr, ptr %td, align 8
  %td_yposition = getelementptr inbounds %struct.TIFFDirectory, ptr %110, i32 0, i32 26
  %111 = load float, ptr %td_yposition, align 8
  %112 = va_arg ptr %ap.addr, ptr
  store ptr %112, ptr %varet54, align 8
  %113 = load ptr, ptr %varet54, align 8
  store float %111, ptr %113, align 4
  br label %sw.epilog192

sw.bb55:                                          ; preds = %entry
  %114 = load ptr, ptr %td, align 8
  %td_pagename = getelementptr inbounds %struct.TIFFDirectory, ptr %114, i32 0, i32 41
  %115 = load ptr, ptr %td_pagename, align 8
  %116 = va_arg ptr %ap.addr, ptr
  store ptr %116, ptr %varet56, align 8
  %117 = load ptr, ptr %varet56, align 8
  store ptr %115, ptr %117, align 8
  br label %sw.epilog192

sw.bb57:                                          ; preds = %entry
  %118 = load ptr, ptr %td, align 8
  %td_resolutionunit = getelementptr inbounds %struct.TIFFDirectory, ptr %118, i32 0, i32 23
  %119 = load i16, ptr %td_resolutionunit, align 8
  %120 = va_arg ptr %ap.addr, ptr
  store ptr %120, ptr %varet58, align 8
  %121 = load ptr, ptr %varet58, align 8
  store i16 %119, ptr %121, align 2
  br label %sw.epilog192

sw.bb59:                                          ; preds = %entry
  %122 = load ptr, ptr %td, align 8
  %td_pagenumber = getelementptr inbounds %struct.TIFFDirectory, ptr %122, i32 0, i32 27
  %arrayidx = getelementptr inbounds [2 x i16], ptr %td_pagenumber, i64 0, i64 0
  %123 = load i16, ptr %arrayidx, align 4
  %124 = va_arg ptr %ap.addr, ptr
  store ptr %124, ptr %varet60, align 8
  %125 = load ptr, ptr %varet60, align 8
  store i16 %123, ptr %125, align 2
  %126 = load ptr, ptr %td, align 8
  %td_pagenumber61 = getelementptr inbounds %struct.TIFFDirectory, ptr %126, i32 0, i32 27
  %arrayidx62 = getelementptr inbounds [2 x i16], ptr %td_pagenumber61, i64 0, i64 1
  %127 = load i16, ptr %arrayidx62, align 2
  %128 = va_arg ptr %ap.addr, ptr
  store ptr %128, ptr %varet63, align 8
  %129 = load ptr, ptr %varet63, align 8
  store i16 %127, ptr %129, align 2
  br label %sw.epilog192

sw.bb64:                                          ; preds = %entry
  %130 = load ptr, ptr %td, align 8
  %td_halftonehints = getelementptr inbounds %struct.TIFFDirectory, ptr %130, i32 0, i32 29
  %arrayidx65 = getelementptr inbounds [2 x i16], ptr %td_halftonehints, i64 0, i64 0
  %131 = load i16, ptr %arrayidx65, align 8
  %132 = va_arg ptr %ap.addr, ptr
  store ptr %132, ptr %varet66, align 8
  %133 = load ptr, ptr %varet66, align 8
  store i16 %131, ptr %133, align 2
  %134 = load ptr, ptr %td, align 8
  %td_halftonehints67 = getelementptr inbounds %struct.TIFFDirectory, ptr %134, i32 0, i32 29
  %arrayidx68 = getelementptr inbounds [2 x i16], ptr %td_halftonehints67, i64 0, i64 1
  %135 = load i16, ptr %arrayidx68, align 2
  %136 = va_arg ptr %ap.addr, ptr
  store ptr %136, ptr %varet69, align 8
  %137 = load ptr, ptr %varet69, align 8
  store i16 %135, ptr %137, align 2
  br label %sw.epilog192

sw.bb70:                                          ; preds = %entry
  %138 = load ptr, ptr %td, align 8
  %td_colormap = getelementptr inbounds %struct.TIFFDirectory, ptr %138, i32 0, i32 28
  %arrayidx71 = getelementptr inbounds [3 x ptr], ptr %td_colormap, i64 0, i64 0
  %139 = load ptr, ptr %arrayidx71, align 8
  %140 = va_arg ptr %ap.addr, ptr
  store ptr %140, ptr %varet72, align 8
  %141 = load ptr, ptr %varet72, align 8
  store ptr %139, ptr %141, align 8
  %142 = load ptr, ptr %td, align 8
  %td_colormap73 = getelementptr inbounds %struct.TIFFDirectory, ptr %142, i32 0, i32 28
  %arrayidx74 = getelementptr inbounds [3 x ptr], ptr %td_colormap73, i64 0, i64 1
  %143 = load ptr, ptr %arrayidx74, align 8
  %144 = va_arg ptr %ap.addr, ptr
  store ptr %144, ptr %varet75, align 8
  %145 = load ptr, ptr %varet75, align 8
  store ptr %143, ptr %145, align 8
  %146 = load ptr, ptr %td, align 8
  %td_colormap76 = getelementptr inbounds %struct.TIFFDirectory, ptr %146, i32 0, i32 28
  %arrayidx77 = getelementptr inbounds [3 x ptr], ptr %td_colormap76, i64 0, i64 2
  %147 = load ptr, ptr %arrayidx77, align 8
  %148 = va_arg ptr %ap.addr, ptr
  store ptr %148, ptr %varet78, align 8
  %149 = load ptr, ptr %varet78, align 8
  store ptr %147, ptr %149, align 8
  br label %sw.epilog192

sw.bb79:                                          ; preds = %entry, %entry
  %150 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %150, i32 0, i32 44
  %151 = load ptr, ptr %td_stripoffset, align 8
  %152 = va_arg ptr %ap.addr, ptr
  store ptr %152, ptr %varet80, align 8
  %153 = load ptr, ptr %varet80, align 8
  store ptr %151, ptr %153, align 8
  br label %sw.epilog192

sw.bb81:                                          ; preds = %entry, %entry
  %154 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %154, i32 0, i32 45
  %155 = load ptr, ptr %td_stripbytecount, align 8
  %156 = va_arg ptr %ap.addr, ptr
  store ptr %156, ptr %varet82, align 8
  %157 = load ptr, ptr %varet82, align 8
  store ptr %155, ptr %157, align 8
  br label %sw.epilog192

sw.bb83:                                          ; preds = %entry
  %158 = load ptr, ptr %td, align 8
  %td_extrasamples = getelementptr inbounds %struct.TIFFDirectory, ptr %158, i32 0, i32 30
  %159 = load i16, ptr %td_extrasamples, align 4
  %conv = zext i16 %159 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb83
  %160 = load ptr, ptr %td, align 8
  %td_sampleinfo = getelementptr inbounds %struct.TIFFDirectory, ptr %160, i32 0, i32 31
  %161 = load ptr, ptr %td_sampleinfo, align 8
  %arrayidx85 = getelementptr inbounds i16, ptr %161, i64 0
  %162 = load i16, ptr %arrayidx85, align 2
  %conv86 = zext i16 %162 to i32
  %cmp87 = icmp eq i32 %conv86, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb83
  %163 = phi i1 [ false, %sw.bb83 ], [ %cmp87, %land.rhs ]
  %land.ext = zext i1 %163 to i32
  %conv89 = trunc i32 %land.ext to i16
  %164 = va_arg ptr %ap.addr, ptr
  store ptr %164, ptr %varet90, align 8
  %165 = load ptr, ptr %varet90, align 8
  store i16 %conv89, ptr %165, align 2
  br label %sw.epilog192

sw.bb91:                                          ; preds = %entry
  %166 = load ptr, ptr %td, align 8
  %td_extrasamples92 = getelementptr inbounds %struct.TIFFDirectory, ptr %166, i32 0, i32 30
  %167 = load i16, ptr %td_extrasamples92, align 4
  %168 = va_arg ptr %ap.addr, ptr
  store ptr %168, ptr %varet93, align 8
  %169 = load ptr, ptr %varet93, align 8
  store i16 %167, ptr %169, align 2
  %170 = load ptr, ptr %td, align 8
  %td_sampleinfo94 = getelementptr inbounds %struct.TIFFDirectory, ptr %170, i32 0, i32 31
  %171 = load ptr, ptr %td_sampleinfo94, align 8
  %172 = va_arg ptr %ap.addr, ptr
  store ptr %172, ptr %varet95, align 8
  %173 = load ptr, ptr %varet95, align 8
  store ptr %171, ptr %173, align 8
  br label %sw.epilog192

sw.bb96:                                          ; preds = %entry
  %174 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %174, i32 0, i32 4
  %175 = load i64, ptr %td_tilewidth, align 8
  %176 = va_arg ptr %ap.addr, ptr
  store ptr %176, ptr %varet97, align 8
  %177 = load ptr, ptr %varet97, align 8
  store i64 %175, ptr %177, align 8
  br label %sw.epilog192

sw.bb98:                                          ; preds = %entry
  %178 = load ptr, ptr %td, align 8
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %178, i32 0, i32 5
  %179 = load i64, ptr %td_tilelength, align 8
  %180 = va_arg ptr %ap.addr, ptr
  store ptr %180, ptr %varet99, align 8
  %181 = load ptr, ptr %varet99, align 8
  store i64 %179, ptr %181, align 8
  br label %sw.epilog192

sw.bb100:                                         ; preds = %entry
  %182 = load ptr, ptr %td, align 8
  %td_tiledepth = getelementptr inbounds %struct.TIFFDirectory, ptr %182, i32 0, i32 6
  %183 = load i64, ptr %td_tiledepth, align 8
  %184 = va_arg ptr %ap.addr, ptr
  store ptr %184, ptr %varet101, align 8
  %185 = load ptr, ptr %varet101, align 8
  store i64 %183, ptr %185, align 8
  br label %sw.epilog192

sw.bb102:                                         ; preds = %entry
  %186 = load ptr, ptr %td, align 8
  %td_sampleformat = getelementptr inbounds %struct.TIFFDirectory, ptr %186, i32 0, i32 9
  %187 = load i16, ptr %td_sampleformat, align 2
  %conv103 = zext i16 %187 to i32
  switch i32 %conv103, label %sw.epilog [
    i32 1, label %sw.bb104
    i32 2, label %sw.bb106
    i32 3, label %sw.bb108
    i32 4, label %sw.bb110
  ]

sw.bb104:                                         ; preds = %sw.bb102
  %188 = va_arg ptr %ap.addr, ptr
  store ptr %188, ptr %varet105, align 8
  %189 = load ptr, ptr %varet105, align 8
  store i16 2, ptr %189, align 2
  br label %sw.epilog

sw.bb106:                                         ; preds = %sw.bb102
  %190 = va_arg ptr %ap.addr, ptr
  store ptr %190, ptr %varet107, align 8
  %191 = load ptr, ptr %varet107, align 8
  store i16 1, ptr %191, align 2
  br label %sw.epilog

sw.bb108:                                         ; preds = %sw.bb102
  %192 = va_arg ptr %ap.addr, ptr
  store ptr %192, ptr %varet109, align 8
  %193 = load ptr, ptr %varet109, align 8
  store i16 3, ptr %193, align 2
  br label %sw.epilog

sw.bb110:                                         ; preds = %sw.bb102
  %194 = va_arg ptr %ap.addr, ptr
  store ptr %194, ptr %varet111, align 8
  %195 = load ptr, ptr %varet111, align 8
  store i16 0, ptr %195, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb102, %sw.bb110, %sw.bb108, %sw.bb106, %sw.bb104
  br label %sw.epilog192

sw.bb112:                                         ; preds = %entry
  %196 = load ptr, ptr %td, align 8
  %td_sampleformat113 = getelementptr inbounds %struct.TIFFDirectory, ptr %196, i32 0, i32 9
  %197 = load i16, ptr %td_sampleformat113, align 2
  %198 = va_arg ptr %ap.addr, ptr
  store ptr %198, ptr %varet114, align 8
  %199 = load ptr, ptr %varet114, align 8
  store i16 %197, ptr %199, align 2
  br label %sw.epilog192

sw.bb115:                                         ; preds = %entry
  %200 = load ptr, ptr %td, align 8
  %td_imagedepth = getelementptr inbounds %struct.TIFFDirectory, ptr %200, i32 0, i32 3
  %201 = load i64, ptr %td_imagedepth, align 8
  %202 = va_arg ptr %ap.addr, ptr
  store ptr %202, ptr %varet116, align 8
  %203 = load ptr, ptr %varet116, align 8
  store i64 %201, ptr %203, align 8
  br label %sw.epilog192

sw.bb117:                                         ; preds = %entry
  %204 = load ptr, ptr %td, align 8
  %td_stonits = getelementptr inbounds %struct.TIFFDirectory, ptr %204, i32 0, i32 32
  %205 = load double, ptr %td_stonits, align 8
  %206 = va_arg ptr %ap.addr, ptr
  store ptr %206, ptr %varet118, align 8
  %207 = load ptr, ptr %varet118, align 8
  store double %205, ptr %207, align 8
  br label %sw.epilog192

sw.bb119:                                         ; preds = %entry
  %208 = load ptr, ptr %td, align 8
  %td_nsubifd = getelementptr inbounds %struct.TIFFDirectory, ptr %208, i32 0, i32 46
  %209 = load i16, ptr %td_nsubifd, align 8
  %210 = va_arg ptr %ap.addr, ptr
  store ptr %210, ptr %varet120, align 8
  %211 = load ptr, ptr %varet120, align 8
  store i16 %209, ptr %211, align 2
  %212 = load ptr, ptr %td, align 8
  %td_subifd = getelementptr inbounds %struct.TIFFDirectory, ptr %212, i32 0, i32 47
  %213 = load ptr, ptr %td_subifd, align 8
  %214 = va_arg ptr %ap.addr, ptr
  store ptr %214, ptr %varet121, align 8
  %215 = load ptr, ptr %varet121, align 8
  store ptr %213, ptr %215, align 8
  br label %sw.epilog192

sw.bb122:                                         ; preds = %entry
  %216 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs = getelementptr inbounds %struct.TIFFDirectory, ptr %216, i32 0, i32 48
  %217 = load ptr, ptr %td_ycbcrcoeffs, align 8
  %218 = va_arg ptr %ap.addr, ptr
  store ptr %218, ptr %varet123, align 8
  %219 = load ptr, ptr %varet123, align 8
  store ptr %217, ptr %219, align 8
  br label %sw.epilog192

sw.bb124:                                         ; preds = %entry
  %220 = load ptr, ptr %td, align 8
  %td_ycbcrpositioning = getelementptr inbounds %struct.TIFFDirectory, ptr %220, i32 0, i32 50
  %221 = load i16, ptr %td_ycbcrpositioning, align 4
  %222 = va_arg ptr %ap.addr, ptr
  store ptr %222, ptr %varet125, align 8
  %223 = load ptr, ptr %varet125, align 8
  store i16 %221, ptr %223, align 2
  br label %sw.epilog192

sw.bb126:                                         ; preds = %entry
  %224 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling = getelementptr inbounds %struct.TIFFDirectory, ptr %224, i32 0, i32 49
  %arrayidx127 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling, i64 0, i64 0
  %225 = load i16, ptr %arrayidx127, align 8
  %226 = va_arg ptr %ap.addr, ptr
  store ptr %226, ptr %varet128, align 8
  %227 = load ptr, ptr %varet128, align 8
  store i16 %225, ptr %227, align 2
  %228 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling129 = getelementptr inbounds %struct.TIFFDirectory, ptr %228, i32 0, i32 49
  %arrayidx130 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling129, i64 0, i64 1
  %229 = load i16, ptr %arrayidx130, align 2
  %230 = va_arg ptr %ap.addr, ptr
  store ptr %230, ptr %varet131, align 8
  %231 = load ptr, ptr %varet131, align 8
  store i16 %229, ptr %231, align 2
  br label %sw.epilog192

sw.bb132:                                         ; preds = %entry
  %232 = load ptr, ptr %td, align 8
  %td_whitepoint = getelementptr inbounds %struct.TIFFDirectory, ptr %232, i32 0, i32 51
  %233 = load ptr, ptr %td_whitepoint, align 8
  %234 = va_arg ptr %ap.addr, ptr
  store ptr %234, ptr %varet133, align 8
  %235 = load ptr, ptr %varet133, align 8
  store ptr %233, ptr %235, align 8
  br label %sw.epilog192

sw.bb134:                                         ; preds = %entry
  %236 = load ptr, ptr %td, align 8
  %td_primarychromas = getelementptr inbounds %struct.TIFFDirectory, ptr %236, i32 0, i32 52
  %237 = load ptr, ptr %td_primarychromas, align 8
  %238 = va_arg ptr %ap.addr, ptr
  store ptr %238, ptr %varet135, align 8
  %239 = load ptr, ptr %varet135, align 8
  store ptr %237, ptr %239, align 8
  br label %sw.epilog192

sw.bb136:                                         ; preds = %entry
  %240 = load ptr, ptr %td, align 8
  %td_transferfunction = getelementptr inbounds %struct.TIFFDirectory, ptr %240, i32 0, i32 54
  %arrayidx137 = getelementptr inbounds [3 x ptr], ptr %td_transferfunction, i64 0, i64 0
  %241 = load ptr, ptr %arrayidx137, align 8
  %242 = va_arg ptr %ap.addr, ptr
  store ptr %242, ptr %varet138, align 8
  %243 = load ptr, ptr %varet138, align 8
  store ptr %241, ptr %243, align 8
  %244 = load ptr, ptr %td, align 8
  %td_samplesperpixel139 = getelementptr inbounds %struct.TIFFDirectory, ptr %244, i32 0, i32 15
  %245 = load i16, ptr %td_samplesperpixel139, align 2
  %conv140 = zext i16 %245 to i32
  %246 = load ptr, ptr %td, align 8
  %td_extrasamples141 = getelementptr inbounds %struct.TIFFDirectory, ptr %246, i32 0, i32 30
  %247 = load i16, ptr %td_extrasamples141, align 4
  %conv142 = zext i16 %247 to i32
  %sub = sub nsw i32 %conv140, %conv142
  %cmp143 = icmp sgt i32 %sub, 1
  br i1 %cmp143, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb136
  %248 = load ptr, ptr %td, align 8
  %td_transferfunction145 = getelementptr inbounds %struct.TIFFDirectory, ptr %248, i32 0, i32 54
  %arrayidx146 = getelementptr inbounds [3 x ptr], ptr %td_transferfunction145, i64 0, i64 1
  %249 = load ptr, ptr %arrayidx146, align 8
  %250 = va_arg ptr %ap.addr, ptr
  store ptr %250, ptr %varet147, align 8
  %251 = load ptr, ptr %varet147, align 8
  store ptr %249, ptr %251, align 8
  %252 = load ptr, ptr %td, align 8
  %td_transferfunction148 = getelementptr inbounds %struct.TIFFDirectory, ptr %252, i32 0, i32 54
  %arrayidx149 = getelementptr inbounds [3 x ptr], ptr %td_transferfunction148, i64 0, i64 2
  %253 = load ptr, ptr %arrayidx149, align 8
  %254 = va_arg ptr %ap.addr, ptr
  store ptr %254, ptr %varet150, align 8
  %255 = load ptr, ptr %varet150, align 8
  store ptr %253, ptr %255, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb136
  br label %sw.epilog192

sw.bb151:                                         ; preds = %entry
  %256 = load ptr, ptr %td, align 8
  %td_refblackwhite = getelementptr inbounds %struct.TIFFDirectory, ptr %256, i32 0, i32 53
  %257 = load ptr, ptr %td_refblackwhite, align 8
  %258 = va_arg ptr %ap.addr, ptr
  store ptr %258, ptr %varet152, align 8
  %259 = load ptr, ptr %varet152, align 8
  store ptr %257, ptr %259, align 8
  br label %sw.epilog192

sw.bb153:                                         ; preds = %entry
  %260 = load ptr, ptr %td, align 8
  %td_inkset = getelementptr inbounds %struct.TIFFDirectory, ptr %260, i32 0, i32 55
  %261 = load i16, ptr %td_inkset, align 8
  %262 = va_arg ptr %ap.addr, ptr
  store ptr %262, ptr %varet154, align 8
  %263 = load ptr, ptr %varet154, align 8
  store i16 %261, ptr %263, align 2
  br label %sw.epilog192

sw.bb155:                                         ; preds = %entry
  %264 = load ptr, ptr %td, align 8
  %td_dotrange = getelementptr inbounds %struct.TIFFDirectory, ptr %264, i32 0, i32 57
  %arrayidx156 = getelementptr inbounds [2 x i16], ptr %td_dotrange, i64 0, i64 0
  %265 = load i16, ptr %arrayidx156, align 4
  %266 = va_arg ptr %ap.addr, ptr
  store ptr %266, ptr %varet157, align 8
  %267 = load ptr, ptr %varet157, align 8
  store i16 %265, ptr %267, align 2
  %268 = load ptr, ptr %td, align 8
  %td_dotrange158 = getelementptr inbounds %struct.TIFFDirectory, ptr %268, i32 0, i32 57
  %arrayidx159 = getelementptr inbounds [2 x i16], ptr %td_dotrange158, i64 0, i64 1
  %269 = load i16, ptr %arrayidx159, align 2
  %270 = va_arg ptr %ap.addr, ptr
  store ptr %270, ptr %varet160, align 8
  %271 = load ptr, ptr %varet160, align 8
  store i16 %269, ptr %271, align 2
  br label %sw.epilog192

sw.bb161:                                         ; preds = %entry
  %272 = load ptr, ptr %td, align 8
  %td_inknames = getelementptr inbounds %struct.TIFFDirectory, ptr %272, i32 0, i32 59
  %273 = load ptr, ptr %td_inknames, align 8
  %274 = va_arg ptr %ap.addr, ptr
  store ptr %274, ptr %varet162, align 8
  %275 = load ptr, ptr %varet162, align 8
  store ptr %273, ptr %275, align 8
  br label %sw.epilog192

sw.bb163:                                         ; preds = %entry
  %276 = load ptr, ptr %td, align 8
  %td_ninks = getelementptr inbounds %struct.TIFFDirectory, ptr %276, i32 0, i32 56
  %277 = load i16, ptr %td_ninks, align 2
  %278 = va_arg ptr %ap.addr, ptr
  store ptr %278, ptr %varet164, align 8
  %279 = load ptr, ptr %varet164, align 8
  store i16 %277, ptr %279, align 2
  br label %sw.epilog192

sw.bb165:                                         ; preds = %entry
  %280 = load ptr, ptr %td, align 8
  %td_targetprinter = getelementptr inbounds %struct.TIFFDirectory, ptr %280, i32 0, i32 60
  %281 = load ptr, ptr %td_targetprinter, align 8
  %282 = va_arg ptr %ap.addr, ptr
  store ptr %282, ptr %varet166, align 8
  %283 = load ptr, ptr %varet166, align 8
  store ptr %281, ptr %283, align 8
  br label %sw.epilog192

sw.bb167:                                         ; preds = %entry
  %284 = load ptr, ptr %td, align 8
  %td_profileLength = getelementptr inbounds %struct.TIFFDirectory, ptr %284, i32 0, i32 61
  %285 = load i64, ptr %td_profileLength, align 8
  %286 = va_arg ptr %ap.addr, ptr
  store ptr %286, ptr %varet168, align 8
  %287 = load ptr, ptr %varet168, align 8
  store i64 %285, ptr %287, align 8
  %288 = load ptr, ptr %td, align 8
  %td_profileData = getelementptr inbounds %struct.TIFFDirectory, ptr %288, i32 0, i32 62
  %289 = load ptr, ptr %td_profileData, align 8
  %290 = va_arg ptr %ap.addr, ptr
  store ptr %290, ptr %varet169, align 8
  %291 = load ptr, ptr %varet169, align 8
  store ptr %289, ptr %291, align 8
  br label %sw.epilog192

sw.bb170:                                         ; preds = %entry
  %292 = load ptr, ptr %td, align 8
  %td_photoshopLength = getelementptr inbounds %struct.TIFFDirectory, ptr %292, i32 0, i32 63
  %293 = load i64, ptr %td_photoshopLength, align 8
  %294 = va_arg ptr %ap.addr, ptr
  store ptr %294, ptr %varet171, align 8
  %295 = load ptr, ptr %varet171, align 8
  store i64 %293, ptr %295, align 8
  %296 = load ptr, ptr %td, align 8
  %td_photoshopData = getelementptr inbounds %struct.TIFFDirectory, ptr %296, i32 0, i32 64
  %297 = load ptr, ptr %td_photoshopData, align 8
  %298 = va_arg ptr %ap.addr, ptr
  store ptr %298, ptr %varet172, align 8
  %299 = load ptr, ptr %varet172, align 8
  store ptr %297, ptr %299, align 8
  br label %sw.epilog192

sw.bb173:                                         ; preds = %entry
  %300 = load ptr, ptr %td, align 8
  %td_richtiffiptcLength = getelementptr inbounds %struct.TIFFDirectory, ptr %300, i32 0, i32 65
  %301 = load i64, ptr %td_richtiffiptcLength, align 8
  %302 = va_arg ptr %ap.addr, ptr
  store ptr %302, ptr %varet174, align 8
  %303 = load ptr, ptr %varet174, align 8
  store i64 %301, ptr %303, align 8
  %304 = load ptr, ptr %td, align 8
  %td_richtiffiptcData = getelementptr inbounds %struct.TIFFDirectory, ptr %304, i32 0, i32 66
  %305 = load ptr, ptr %td_richtiffiptcData, align 8
  %306 = va_arg ptr %ap.addr, ptr
  store ptr %306, ptr %varet175, align 8
  %307 = load ptr, ptr %varet175, align 8
  store ptr %305, ptr %307, align 8
  br label %sw.epilog192

sw.bb176:                                         ; preds = %entry
  %308 = load ptr, ptr %td, align 8
  %td_imagefullwidth = getelementptr inbounds %struct.TIFFDirectory, ptr %308, i32 0, i32 67
  %309 = load i64, ptr %td_imagefullwidth, align 8
  %310 = va_arg ptr %ap.addr, ptr
  store ptr %310, ptr %varet177, align 8
  %311 = load ptr, ptr %varet177, align 8
  store i64 %309, ptr %311, align 8
  br label %sw.epilog192

sw.bb178:                                         ; preds = %entry
  %312 = load ptr, ptr %td, align 8
  %td_imagefulllength = getelementptr inbounds %struct.TIFFDirectory, ptr %312, i32 0, i32 68
  %313 = load i64, ptr %td_imagefulllength, align 8
  %314 = va_arg ptr %ap.addr, ptr
  store ptr %314, ptr %varet179, align 8
  %315 = load ptr, ptr %varet179, align 8
  store i64 %313, ptr %315, align 8
  br label %sw.epilog192

sw.bb180:                                         ; preds = %entry
  %316 = load ptr, ptr %td, align 8
  %td_textureformat = getelementptr inbounds %struct.TIFFDirectory, ptr %316, i32 0, i32 69
  %317 = load ptr, ptr %td_textureformat, align 8
  %318 = va_arg ptr %ap.addr, ptr
  store ptr %318, ptr %varet181, align 8
  %319 = load ptr, ptr %varet181, align 8
  store ptr %317, ptr %319, align 8
  br label %sw.epilog192

sw.bb182:                                         ; preds = %entry
  %320 = load ptr, ptr %td, align 8
  %td_wrapmodes = getelementptr inbounds %struct.TIFFDirectory, ptr %320, i32 0, i32 70
  %321 = load ptr, ptr %td_wrapmodes, align 8
  %322 = va_arg ptr %ap.addr, ptr
  store ptr %322, ptr %varet183, align 8
  %323 = load ptr, ptr %varet183, align 8
  store ptr %321, ptr %323, align 8
  br label %sw.epilog192

sw.bb184:                                         ; preds = %entry
  %324 = load ptr, ptr %td, align 8
  %td_fovcot = getelementptr inbounds %struct.TIFFDirectory, ptr %324, i32 0, i32 71
  %325 = load float, ptr %td_fovcot, align 8
  %326 = va_arg ptr %ap.addr, ptr
  store ptr %326, ptr %varet185, align 8
  %327 = load ptr, ptr %varet185, align 8
  store float %325, ptr %327, align 4
  br label %sw.epilog192

sw.bb186:                                         ; preds = %entry
  %328 = load ptr, ptr %td, align 8
  %td_matrixWorldToScreen = getelementptr inbounds %struct.TIFFDirectory, ptr %328, i32 0, i32 72
  %329 = load ptr, ptr %td_matrixWorldToScreen, align 8
  %330 = va_arg ptr %ap.addr, ptr
  store ptr %330, ptr %varet187, align 8
  %331 = load ptr, ptr %varet187, align 8
  store ptr %329, ptr %331, align 8
  br label %sw.epilog192

sw.bb188:                                         ; preds = %entry
  %332 = load ptr, ptr %td, align 8
  %td_matrixWorldToCamera = getelementptr inbounds %struct.TIFFDirectory, ptr %332, i32 0, i32 73
  %333 = load ptr, ptr %td_matrixWorldToCamera, align 8
  %334 = va_arg ptr %ap.addr, ptr
  store ptr %334, ptr %varet189, align 8
  %335 = load ptr, ptr %varet189, align 8
  store ptr %333, ptr %335, align 8
  br label %sw.epilog192

sw.default:                                       ; preds = %entry
  %336 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %336, i32 0, i32 0
  %337 = load ptr, ptr %tif_name, align 8
  %338 = load i64, ptr %tag.addr, align 8
  %cmp190 = icmp ugt i64 %338, 65535
  %339 = zext i1 %cmp190 to i64
  %cond = select i1 %cmp190, ptr @.str.5, ptr @.str.6
  %340 = load ptr, ptr %tif.addr, align 8
  %341 = load i64, ptr %tag.addr, align 8
  %call = call ptr @_TIFFFieldWithTag(ptr noundef %340, i64 noundef %341)
  %field_name = getelementptr inbounds %struct.TIFFFieldInfo, ptr %call, i32 0, i32 7
  %342 = load ptr, ptr %field_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @.str.19, ptr noundef @.str.13, ptr noundef %337, ptr noundef %cond, ptr noundef %342)
  br label %sw.epilog192

sw.epilog192:                                     ; preds = %sw.default, %sw.bb188, %sw.bb186, %sw.bb184, %sw.bb182, %sw.bb180, %sw.bb178, %sw.bb176, %sw.bb173, %sw.bb170, %sw.bb167, %sw.bb165, %sw.bb163, %sw.bb161, %sw.bb155, %sw.bb153, %sw.bb151, %if.end, %sw.bb134, %sw.bb132, %sw.bb126, %sw.bb124, %sw.bb122, %sw.bb119, %sw.bb117, %sw.bb115, %sw.bb112, %sw.epilog, %sw.bb100, %sw.bb98, %sw.bb96, %sw.bb91, %land.end, %sw.bb81, %sw.bb79, %sw.bb70, %sw.bb64, %sw.bb59, %sw.bb57, %sw.bb55, %sw.bb53, %sw.bb51, %sw.bb49, %sw.bb47, %sw.bb45, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define zeroext i16 @TIFFNumberOfDirectories(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %nextdir = alloca i64, align 8
  %n = alloca i16, align 2
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 7
  %tiff_diroff = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header, i32 0, i32 2
  %1 = load i64, ptr %tiff_diroff, align 8
  store i64 %1, ptr %nextdir, align 8
  store i16 0, ptr %n, align 2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64, ptr %nextdir, align 8
  %cmp = icmp ne i64 %2, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFAdvanceDirectory(ptr noundef %3, ptr noundef %nextdir, ptr noundef null)
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i16, ptr %n, align 2
  %inc = add i16 %5, 1
  store i16 %inc, ptr %n, align 2
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end
  %6 = load i16, ptr %n, align 2
  ret i16 %6
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @TIFFAdvanceDirectory(ptr noundef %tif, ptr noundef %nextdir, ptr noundef %off) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %nextdir.addr = alloca ptr, align 8
  %off.addr = alloca ptr, align 8
  %dircount = alloca i16, align 2
  %poff = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %nextdir, ptr %nextdir.addr, align 8
  store ptr %off, ptr %off.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 3
  %1 = load i64, ptr %tif_flags, align 8
  %and = and i64 %1, 2048
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %nextdir.addr, align 8
  %3 = load i64, ptr %2, align 8
  store i64 %3, ptr %poff, align 8
  %4 = load i64, ptr %poff, align 8
  %add = add i64 %4, 2
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_size = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 45
  %6 = load i64, ptr %tif_size, align 8
  %cmp1 = icmp sgt i64 %add, %6
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %tif_name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFAdvanceDirectory.module, ptr noundef @.str.20, ptr noundef %8)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_base = getelementptr inbounds %struct.tiff, ptr %9, i32 0, i32 44
  %10 = load ptr, ptr %tif_base, align 8
  %11 = load i64, ptr %poff, align 8
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 %11
  call void @_TIFFmemcpy(ptr noundef %dircount, ptr noundef %add.ptr, i64 noundef 2)
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_flags3 = getelementptr inbounds %struct.tiff, ptr %12, i32 0, i32 3
  %13 = load i64, ptr %tif_flags3, align 8
  %and4 = and i64 %13, 128
  %tobool = icmp ne i64 %and4, 0
  br i1 %tobool, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @TIFFSwabShort(ptr noundef %dircount)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %14 = load i16, ptr %dircount, align 2
  %conv = zext i16 %14 to i64
  %mul = mul i64 %conv, 24
  %add7 = add i64 2, %mul
  %15 = load i64, ptr %poff, align 8
  %add8 = add i64 %15, %add7
  store i64 %add8, ptr %poff, align 8
  %16 = load ptr, ptr %off.addr, align 8
  %cmp9 = icmp ne ptr %16, null
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end6
  %17 = load i64, ptr %poff, align 8
  %18 = load ptr, ptr %off.addr, align 8
  store i64 %17, ptr %18, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end6
  %19 = load i64, ptr %poff, align 8
  %add13 = add i64 %19, 8
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_size14 = getelementptr inbounds %struct.tiff, ptr %20, i32 0, i32 45
  %21 = load i64, ptr %tif_size14, align 8
  %cmp15 = icmp sgt i64 %add13, %21
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end12
  %22 = load ptr, ptr %tif.addr, align 8
  %tif_name18 = getelementptr inbounds %struct.tiff, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %tif_name18, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFAdvanceDirectory.module, ptr noundef @.str.21, ptr noundef %23)
  store i32 0, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end12
  %24 = load ptr, ptr %nextdir.addr, align 8
  %25 = load ptr, ptr %tif.addr, align 8
  %tif_base20 = getelementptr inbounds %struct.tiff, ptr %25, i32 0, i32 44
  %26 = load ptr, ptr %tif_base20, align 8
  %27 = load i64, ptr %poff, align 8
  %add.ptr21 = getelementptr inbounds i8, ptr %26, i64 %27
  call void @_TIFFmemcpy(ptr noundef %24, ptr noundef %add.ptr21, i64 noundef 8)
  %28 = load ptr, ptr %tif.addr, align 8
  %tif_flags22 = getelementptr inbounds %struct.tiff, ptr %28, i32 0, i32 3
  %29 = load i64, ptr %tif_flags22, align 8
  %and23 = and i64 %29, 128
  %tobool24 = icmp ne i64 %and23, 0
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end19
  %30 = load ptr, ptr %nextdir.addr, align 8
  call void @TIFFSwabLong(ptr noundef %30)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end19
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %31 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %31, i32 0, i32 51
  %32 = load ptr, ptr %tif_seekproc, align 8
  %33 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %33, i32 0, i32 48
  %34 = load ptr, ptr %tif_clientdata, align 8
  %35 = load ptr, ptr %nextdir.addr, align 8
  %36 = load i64, ptr %35, align 8
  %call = call i64 %32(ptr noundef %34, i64 noundef %36, i32 noundef 0)
  %37 = load ptr, ptr %nextdir.addr, align 8
  %38 = load i64, ptr %37, align 8
  %cmp27 = icmp eq i64 %call, %38
  br i1 %cmp27, label %lor.lhs.false, label %if.then33

lor.lhs.false:                                    ; preds = %if.else
  %39 = load ptr, ptr %tif.addr, align 8
  %tif_readproc = getelementptr inbounds %struct.tiff, ptr %39, i32 0, i32 49
  %40 = load ptr, ptr %tif_readproc, align 8
  %41 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata29 = getelementptr inbounds %struct.tiff, ptr %41, i32 0, i32 48
  %42 = load ptr, ptr %tif_clientdata29, align 8
  %call30 = call i64 %40(ptr noundef %42, ptr noundef %dircount, i64 noundef 2)
  %cmp31 = icmp eq i64 %call30, 2
  br i1 %cmp31, label %if.end35, label %if.then33

if.then33:                                        ; preds = %lor.lhs.false, %if.else
  %43 = load ptr, ptr %tif.addr, align 8
  %tif_name34 = getelementptr inbounds %struct.tiff, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %tif_name34, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFAdvanceDirectory.module, ptr noundef @.str.20, ptr noundef %44)
  store i32 0, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %lor.lhs.false
  %45 = load ptr, ptr %tif.addr, align 8
  %tif_flags36 = getelementptr inbounds %struct.tiff, ptr %45, i32 0, i32 3
  %46 = load i64, ptr %tif_flags36, align 8
  %and37 = and i64 %46, 128
  %tobool38 = icmp ne i64 %and37, 0
  br i1 %tobool38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end35
  call void @TIFFSwabShort(ptr noundef %dircount)
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end35
  %47 = load ptr, ptr %off.addr, align 8
  %cmp41 = icmp ne ptr %47, null
  br i1 %cmp41, label %if.then43, label %if.else49

if.then43:                                        ; preds = %if.end40
  %48 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc44 = getelementptr inbounds %struct.tiff, ptr %48, i32 0, i32 51
  %49 = load ptr, ptr %tif_seekproc44, align 8
  %50 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata45 = getelementptr inbounds %struct.tiff, ptr %50, i32 0, i32 48
  %51 = load ptr, ptr %tif_clientdata45, align 8
  %52 = load i16, ptr %dircount, align 2
  %conv46 = zext i16 %52 to i64
  %mul47 = mul i64 %conv46, 24
  %call48 = call i64 %49(ptr noundef %51, i64 noundef %mul47, i32 noundef 1)
  %53 = load ptr, ptr %off.addr, align 8
  store i64 %call48, ptr %53, align 8
  br label %if.end55

if.else49:                                        ; preds = %if.end40
  %54 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc50 = getelementptr inbounds %struct.tiff, ptr %54, i32 0, i32 51
  %55 = load ptr, ptr %tif_seekproc50, align 8
  %56 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata51 = getelementptr inbounds %struct.tiff, ptr %56, i32 0, i32 48
  %57 = load ptr, ptr %tif_clientdata51, align 8
  %58 = load i16, ptr %dircount, align 2
  %conv52 = zext i16 %58 to i64
  %mul53 = mul i64 %conv52, 24
  %call54 = call i64 %55(ptr noundef %57, i64 noundef %mul53, i32 noundef 1)
  br label %if.end55

if.end55:                                         ; preds = %if.else49, %if.then43
  %59 = load ptr, ptr %tif.addr, align 8
  %tif_readproc56 = getelementptr inbounds %struct.tiff, ptr %59, i32 0, i32 49
  %60 = load ptr, ptr %tif_readproc56, align 8
  %61 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata57 = getelementptr inbounds %struct.tiff, ptr %61, i32 0, i32 48
  %62 = load ptr, ptr %tif_clientdata57, align 8
  %63 = load ptr, ptr %nextdir.addr, align 8
  %call58 = call i64 %60(ptr noundef %62, ptr noundef %63, i64 noundef 8)
  %cmp59 = icmp eq i64 %call58, 8
  br i1 %cmp59, label %if.end63, label %if.then61

if.then61:                                        ; preds = %if.end55
  %64 = load ptr, ptr %tif.addr, align 8
  %tif_name62 = getelementptr inbounds %struct.tiff, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %tif_name62, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFAdvanceDirectory.module, ptr noundef @.str.21, ptr noundef %65)
  store i32 0, ptr %retval, align 4
  br label %return

if.end63:                                         ; preds = %if.end55
  %66 = load ptr, ptr %tif.addr, align 8
  %tif_flags64 = getelementptr inbounds %struct.tiff, ptr %66, i32 0, i32 3
  %67 = load i64, ptr %tif_flags64, align 8
  %and65 = and i64 %67, 128
  %tobool66 = icmp ne i64 %and65, 0
  br i1 %tobool66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end63
  %68 = load ptr, ptr %nextdir.addr, align 8
  call void @TIFFSwabLong(ptr noundef %68)
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end63
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end68, %if.then61, %if.then33, %if.end26, %if.then17, %if.then2
  %69 = load i32, ptr %retval, align 4
  ret i32 %69
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFSetDirectory(ptr noundef %tif, i16 noundef zeroext %dirn) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %dirn.addr = alloca i16, align 2
  %nextdir = alloca i64, align 8
  %n = alloca i16, align 2
  store ptr %tif, ptr %tif.addr, align 8
  store i16 %dirn, ptr %dirn.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 7
  %tiff_diroff = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header, i32 0, i32 2
  %1 = load i64, ptr %tiff_diroff, align 8
  store i64 %1, ptr %nextdir, align 8
  %2 = load i16, ptr %dirn.addr, align 2
  store i16 %2, ptr %n, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i16, ptr %n, align 2
  %conv = zext i16 %3 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load i64, ptr %nextdir, align 8
  %cmp2 = icmp ne i64 %4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFAdvanceDirectory(ptr noundef %6, ptr noundef %nextdir, ptr noundef null)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i16, ptr %n, align 2
  %dec = add i16 %7, -1
  store i16 %dec, ptr %n, align 2
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %land.end
  %8 = load i64, ptr %nextdir, align 8
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_nextdiroff = getelementptr inbounds %struct.tiff, ptr %9, i32 0, i32 5
  store i64 %8, ptr %tif_nextdiroff, align 8
  %10 = load i16, ptr %dirn.addr, align 2
  %conv4 = zext i16 %10 to i32
  %11 = load i16, ptr %n, align 2
  %conv5 = zext i16 %11 to i32
  %sub = sub nsw i32 %conv4, %conv5
  %sub6 = sub nsw i32 %sub, 1
  %conv7 = trunc i32 %sub6 to i16
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_curdir = getelementptr inbounds %struct.tiff, ptr %12, i32 0, i32 12
  store i16 %conv7, ptr %tif_curdir, align 8
  %13 = load ptr, ptr %tif.addr, align 8
  %call8 = call i32 @TIFFReadDirectory(ptr noundef %13)
  store i32 %call8, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

declare i32 @TIFFReadDirectory(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFSetSubDirectory(ptr noundef %tif, i64 noundef %diroff) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %diroff.addr = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %diroff, ptr %diroff.addr, align 8
  %0 = load i64, ptr %diroff.addr, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_nextdiroff = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 5
  store i64 %0, ptr %tif_nextdiroff, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFReadDirectory(ptr noundef %2)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define i64 @TIFFCurrentDirOffset(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_diroff = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 4
  %1 = load i64, ptr %tif_diroff, align 8
  ret i64 %1
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFLastDirectory(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_nextdiroff = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 5
  %1 = load i64, ptr %tif_nextdiroff, align 8
  %cmp = icmp eq i64 %1, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFUnlinkDirectory(ptr noundef %tif, i16 noundef zeroext %dirn) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %dirn.addr = alloca i16, align 2
  %nextdir = alloca i64, align 8
  %off = alloca i64, align 8
  %n = alloca i16, align 2
  store ptr %tif, ptr %tif.addr, align 8
  store i16 %dirn, ptr %dirn.addr, align 2
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %tif_mode, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFUnlinkDirectory.module, ptr noundef @.str)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_header = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 7
  %tiff_diroff = getelementptr inbounds %struct.TIFFHeader, ptr %tif_header, i32 0, i32 2
  %3 = load i64, ptr %tiff_diroff, align 8
  store i64 %3, ptr %nextdir, align 8
  store i64 4, ptr %off, align 8
  %4 = load i16, ptr %dirn.addr, align 2
  %conv = zext i16 %4 to i32
  %sub = sub nsw i32 %conv, 1
  %conv1 = trunc i32 %sub to i16
  store i16 %conv1, ptr %n, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i16, ptr %n, align 2
  %conv2 = zext i16 %5 to i32
  %cmp3 = icmp sgt i32 %conv2, 0
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, ptr %nextdir, align 8
  %cmp5 = icmp eq i64 %6, 0
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %for.body
  %7 = load i16, ptr %dirn.addr, align 2
  %conv8 = zext i16 %7 to i32
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFUnlinkDirectory.module, ptr noundef @.str.1, i32 noundef %conv8)
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %for.body
  %8 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFAdvanceDirectory(ptr noundef %8, ptr noundef %nextdir, ptr noundef %off)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end9
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end9
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %9 = load i16, ptr %n, align 2
  %dec = add i16 %9, -1
  store i16 %dec, ptr %n, align 2
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %tif.addr, align 8
  %call12 = call i32 @TIFFAdvanceDirectory(ptr noundef %10, ptr noundef %nextdir, ptr noundef null)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %for.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %for.end
  %11 = load ptr, ptr %tif.addr, align 8
  %tif_seekproc = getelementptr inbounds %struct.tiff, ptr %11, i32 0, i32 51
  %12 = load ptr, ptr %tif_seekproc, align 8
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %13, i32 0, i32 48
  %14 = load ptr, ptr %tif_clientdata, align 8
  %15 = load i64, ptr %off, align 8
  %call16 = call i64 %12(ptr noundef %14, i64 noundef %15, i32 noundef 0)
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 3
  %17 = load i64, ptr %tif_flags, align 8
  %and = and i64 %17, 128
  %tobool17 = icmp ne i64 %and, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @TIFFSwabLong(ptr noundef %nextdir)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load ptr, ptr %tif.addr, align 8
  %tif_writeproc = getelementptr inbounds %struct.tiff, ptr %18, i32 0, i32 50
  %19 = load ptr, ptr %tif_writeproc, align 8
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata20 = getelementptr inbounds %struct.tiff, ptr %20, i32 0, i32 48
  %21 = load ptr, ptr %tif_clientdata20, align 8
  %call21 = call i64 %19(ptr noundef %21, ptr noundef %nextdir, i64 noundef 8)
  %cmp22 = icmp eq i64 %call21, 8
  br i1 %cmp22, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end19
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFUnlinkDirectory.module, ptr noundef @.str.2)
  store i32 0, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end19
  %22 = load ptr, ptr %tif.addr, align 8
  %tif_cleanup = getelementptr inbounds %struct.tiff, ptr %22, i32 0, i32 34
  %23 = load ptr, ptr %tif_cleanup, align 8
  %24 = load ptr, ptr %tif.addr, align 8
  call void %23(ptr noundef %24)
  %25 = load ptr, ptr %tif.addr, align 8
  %tif_flags26 = getelementptr inbounds %struct.tiff, ptr %25, i32 0, i32 3
  %26 = load i64, ptr %tif_flags26, align 8
  %and27 = and i64 %26, 512
  %tobool28 = icmp ne i64 %and27, 0
  br i1 %tobool28, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %if.end25
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %27, i32 0, i32 40
  %28 = load ptr, ptr %tif_rawdata, align 8
  %tobool29 = icmp ne ptr %28, null
  br i1 %tobool29, label %if.then30, label %if.end33

if.then30:                                        ; preds = %land.lhs.true
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata31 = getelementptr inbounds %struct.tiff, ptr %29, i32 0, i32 40
  %30 = load ptr, ptr %tif_rawdata31, align 8
  call void @_TIFFfree(ptr noundef %30)
  %31 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata32 = getelementptr inbounds %struct.tiff, ptr %31, i32 0, i32 40
  store ptr null, ptr %tif_rawdata32, align 8
  %32 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %32, i32 0, i32 43
  store i64 0, ptr %tif_rawcc, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %land.lhs.true, %if.end25
  %33 = load ptr, ptr %tif.addr, align 8
  %tif_flags34 = getelementptr inbounds %struct.tiff, ptr %33, i32 0, i32 3
  %34 = load i64, ptr %tif_flags34, align 8
  %and35 = and i64 %34, -4177
  store i64 %and35, ptr %tif_flags34, align 8
  %35 = load ptr, ptr %tif.addr, align 8
  call void @TIFFFreeDirectory(ptr noundef %35)
  %36 = load ptr, ptr %tif.addr, align 8
  %call36 = call i32 @TIFFDefaultDirectory(ptr noundef %36)
  %37 = load ptr, ptr %tif.addr, align 8
  %tif_diroff = getelementptr inbounds %struct.tiff, ptr %37, i32 0, i32 4
  store i64 0, ptr %tif_diroff, align 8
  %38 = load ptr, ptr %tif.addr, align 8
  %tif_nextdiroff = getelementptr inbounds %struct.tiff, ptr %38, i32 0, i32 5
  store i64 0, ptr %tif_nextdiroff, align 8
  %39 = load ptr, ptr %tif.addr, align 8
  %tif_curoff = getelementptr inbounds %struct.tiff, ptr %39, i32 0, i32 14
  store i64 0, ptr %tif_curoff, align 8
  %40 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %40, i32 0, i32 11
  store i64 -1, ptr %tif_row, align 8
  %41 = load ptr, ptr %tif.addr, align 8
  %tif_curstrip = getelementptr inbounds %struct.tiff, ptr %41, i32 0, i32 13
  store i64 -1, ptr %tif_curstrip, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end33, %if.then24, %if.then14, %if.then10, %if.then7, %if.then
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

declare void @TIFFSwabLong(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @TIFFReassignTagToIgnore(i32 noundef %task, i32 noundef %TIFFtagID) #0 {
entry:
  %retval = alloca i32, align 4
  %task.addr = alloca i32, align 4
  %TIFFtagID.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %task, ptr %task.addr, align 4
  store i32 %TIFFtagID, ptr %TIFFtagID.addr, align 4
  %0 = load i32, ptr %task.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb20
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr @TIFFReassignTagToIgnore.tagcount, align 4
  %cmp = icmp slt i32 %1, 94
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %sw.bb
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr @TIFFReassignTagToIgnore.tagcount, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %j, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [95 x i32], ptr @TIFFReassignTagToIgnore.TIFFignoretags, i64 0, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  %6 = load i32, ptr %TIFFtagID.addr, align 4
  %cmp2 = icmp eq i32 %5, %6
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %for.body
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %TIFFtagID.addr, align 4
  %9 = load i32, ptr @TIFFReassignTagToIgnore.tagcount, align 4
  %inc4 = add nsw i32 %9, 1
  store i32 %inc4, ptr @TIFFReassignTagToIgnore.tagcount, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds [95 x i32], ptr @TIFFReassignTagToIgnore.TIFFignoretags, i64 0, i64 %idxprom5
  store i32 %8, ptr %arrayidx6, align 4
  store i32 1, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %sw.bb
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc17, %sw.bb8
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr @TIFFReassignTagToIgnore.tagcount, align 4
  %cmp10 = icmp slt i32 %10, %11
  br i1 %cmp10, label %for.body11, label %for.end19

for.body11:                                       ; preds = %for.cond9
  %12 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [95 x i32], ptr @TIFFReassignTagToIgnore.TIFFignoretags, i64 0, i64 %idxprom12
  %13 = load i32, ptr %arrayidx13, align 4
  %14 = load i32, ptr %TIFFtagID.addr, align 4
  %cmp14 = icmp eq i32 %13, %14
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.body11
  store i32 1, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %for.body11
  br label %for.inc17

for.inc17:                                        ; preds = %if.end16
  %15 = load i32, ptr %i, align 4
  %inc18 = add nsw i32 %15, 1
  store i32 %inc18, ptr %i, align 4
  br label %for.cond9, !llvm.loop !12

for.end19:                                        ; preds = %for.cond9
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  store i32 0, ptr @TIFFReassignTagToIgnore.tagcount, align 4
  store i32 1, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end19, %if.end7
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb20, %if.then15, %for.end, %if.then3
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

declare void @_TIFFSwab16BitData(ptr noundef, ptr noundef, i64 noundef) #1

declare void @_TIFFSwab32BitData(ptr noundef, ptr noundef, i64 noundef) #1

declare void @_TIFFSwab64BitData(ptr noundef, ptr noundef, i64 noundef) #1

declare i32 @TIFFSetCompressionScheme(ptr noundef, i32 noundef) #1

declare void @TIFFWarning(ptr noundef, ptr noundef, ...) #1

declare ptr @_TIFFFieldWithTag(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @setExtraSamples(ptr noundef %td, ptr noundef %ap, ptr noundef %v) #0 {
entry:
  %retval = alloca i32, align 4
  %td.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %va = alloca ptr, align 8
  %i = alloca i32, align 4
  %varet = alloca i32, align 4
  %varet4 = alloca ptr, align 8
  store ptr %td, ptr %td.addr, align 8
  store ptr %ap, ptr %ap.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  %0 = va_arg ptr %ap.addr, i32
  store i32 %0, ptr %varet, align 4
  %1 = load i32, ptr %varet, align 4
  %2 = load ptr, ptr %v.addr, align 8
  store i32 %1, ptr %2, align 4
  %3 = load ptr, ptr %v.addr, align 8
  %4 = load i32, ptr %3, align 4
  %conv = trunc i32 %4 to i16
  %conv1 = zext i16 %conv to i32
  %5 = load ptr, ptr %td.addr, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i32 0, i32 15
  %6 = load i16, ptr %td_samplesperpixel, align 2
  %conv2 = zext i16 %6 to i32
  %cmp = icmp sgt i32 %conv1, %conv2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = va_arg ptr %ap.addr, ptr
  store ptr %7, ptr %varet4, align 8
  %8 = load ptr, ptr %varet4, align 8
  store ptr %8, ptr %va, align 8
  %9 = load ptr, ptr %v.addr, align 8
  %10 = load i32, ptr %9, align 4
  %cmp5 = icmp sgt i32 %10, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %11 = load ptr, ptr %va, align 8
  %cmp7 = icmp eq ptr %11, null
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %land.lhs.true, %if.end
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end10
  %12 = load i32, ptr %i, align 4
  %13 = load ptr, ptr %v.addr, align 8
  %14 = load i32, ptr %13, align 4
  %cmp11 = icmp slt i32 %12, %14
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %va, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds i16, ptr %15, i64 %idxprom
  %17 = load i16, ptr %arrayidx, align 2
  %conv13 = zext i16 %17 to i32
  %cmp14 = icmp sgt i32 %conv13, 2
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %v.addr, align 8
  %20 = load i32, ptr %19, align 4
  %conv18 = trunc i32 %20 to i16
  %21 = load ptr, ptr %td.addr, align 8
  %td_extrasamples = getelementptr inbounds %struct.TIFFDirectory, ptr %21, i32 0, i32 30
  store i16 %conv18, ptr %td_extrasamples, align 4
  %22 = load ptr, ptr %td.addr, align 8
  %td_sampleinfo = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i32 0, i32 31
  %23 = load ptr, ptr %va, align 8
  %24 = load ptr, ptr %td.addr, align 8
  %td_extrasamples19 = getelementptr inbounds %struct.TIFFDirectory, ptr %24, i32 0, i32 30
  %25 = load i16, ptr %td_extrasamples19, align 4
  %conv20 = zext i16 %25 to i64
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_27(ptr noundef %td_sampleinfo, ptr noundef %23, i64 noundef %conv20)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then16, %if.then9, %if.then
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @checkInkNamesString(ptr noundef %tif, i32 noundef %slen, ptr noundef %s) #0 {
entry:
  %retval = alloca i32, align 4
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
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %1, i32 0, i32 15
  %2 = load i16, ptr %td_samplesperpixel, align 2
  %conv = zext i16 %2 to i32
  store i32 %conv, ptr %i, align 4
  %3 = load i32, ptr %slen.addr, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %s.addr, align 8
  %5 = load i32, ptr %slen.addr, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext
  store ptr %add.ptr, ptr %ep, align 8
  %6 = load ptr, ptr %s.addr, align 8
  store ptr %6, ptr %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %if.then
  %7 = load i32, ptr %i, align 4
  %cmp2 = icmp sgt i32 %7, 0
  br i1 %cmp2, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %8 = load ptr, ptr %cp, align 8
  %9 = load i8, ptr %8, align 1
  %conv5 = sext i8 %9 to i32
  %cmp6 = icmp ne i32 %conv5, 0
  br i1 %cmp6, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond4
  %10 = load ptr, ptr %cp, align 8
  %11 = load ptr, ptr %ep, align 8
  %cmp9 = icmp uge ptr %10, %11
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %for.body8
  br label %bad

if.end:                                           ; preds = %for.body8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load ptr, ptr %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %cp, align 8
  br label %for.cond4, !llvm.loop !14

for.end:                                          ; preds = %for.cond4
  %13 = load ptr, ptr %cp, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr12, ptr %cp, align 8
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %14 = load i32, ptr %i, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !15

for.end14:                                        ; preds = %for.cond
  %15 = load ptr, ptr %cp, align 8
  %16 = load ptr, ptr %s.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %15 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv15 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv15, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %entry
  br label %bad

bad:                                              ; preds = %if.end16, %if.then11
  %17 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %tif_name, align 8
  %19 = load ptr, ptr %td, align 8
  %td_samplesperpixel17 = getelementptr inbounds %struct.TIFFDirectory, ptr %19, i32 0, i32 15
  %20 = load i16, ptr %td_samplesperpixel17, align 2
  %conv18 = zext i16 %20 to i32
  %21 = load ptr, ptr %td, align 8
  %td_samplesperpixel19 = getelementptr inbounds %struct.TIFFDirectory, ptr %21, i32 0, i32 15
  %22 = load i16, ptr %td_samplesperpixel19, align 2
  %conv20 = zext i16 %22 to i32
  %23 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %conv20, %23
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @.str.3, ptr noundef @.str.18, ptr noundef %18, i32 noundef %conv18, i32 noundef %sub)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %bad, %for.end14
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

declare void @TIFFSwabShort(ptr noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_0(ptr noundef %tif, i64 noundef %tag, ...)  alwaysinline#0 {
entry:
  %tif.addr = alloca ptr, align 8
  %tag.addr = alloca i64, align 8
  %ap = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %tag, ptr %tag.addr, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %tif.addr, align 8
  %1 = load i64, ptr %tag.addr, align 8
  %2 = load ptr, ptr %ap, align 8
  %call = call i32 @TIFFVSetField(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  store i32 %call, ptr %status, align 4
  call void @llvm.va_end(ptr %ap)
  %3 = load i32, ptr %status, align 4
  ret i32 %3
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_1(ptr noundef %cpp, ptr noundef %cp)  alwaysinline#0 {
entry:
  %cpp.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  store ptr %cpp, ptr %cpp.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  %0 = load ptr, ptr %cpp.addr, align 8
  %1 = load ptr, ptr %cp.addr, align 8
  %2 = load ptr, ptr %cp.addr, align 8
  %call = call i64 @strlen(ptr noundef %2)
  %add = add i64 %call, 1
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %add)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_2(ptr noundef %cpp, ptr noundef %cp)  alwaysinline#0 {
entry:
  %cpp.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  store ptr %cpp, ptr %cpp.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  %0 = load ptr, ptr %cpp.addr, align 8
  %1 = load ptr, ptr %cp.addr, align 8
  %2 = load ptr, ptr %cp.addr, align 8
  %call = call i64 @strlen(ptr noundef %2)
  %add = add i64 %call, 1
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %add)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_3(ptr noundef %cpp, ptr noundef %cp)  alwaysinline#0 {
entry:
  %cpp.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  store ptr %cpp, ptr %cpp.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  %0 = load ptr, ptr %cpp.addr, align 8
  %1 = load ptr, ptr %cp.addr, align 8
  %2 = load ptr, ptr %cp.addr, align 8
  %call = call i64 @strlen(ptr noundef %2)
  %add = add i64 %call, 1
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %add)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_4(ptr noundef %cpp, ptr noundef %cp)  alwaysinline#0 {
entry:
  %cpp.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  store ptr %cpp, ptr %cpp.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  %0 = load ptr, ptr %cpp.addr, align 8
  %1 = load ptr, ptr %cp.addr, align 8
  %2 = load ptr, ptr %cp.addr, align 8
  %call = call i64 @strlen(ptr noundef %2)
  %add = add i64 %call, 1
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %add)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_5(ptr noundef %cpp, ptr noundef %cp)  alwaysinline#0 {
entry:
  %cpp.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  store ptr %cpp, ptr %cpp.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  %0 = load ptr, ptr %cpp.addr, align 8
  %1 = load ptr, ptr %cp.addr, align 8
  %2 = load ptr, ptr %cp.addr, align 8
  %call = call i64 @strlen(ptr noundef %2)
  %add = add i64 %call, 1
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %add)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_6(ptr noundef %cpp, ptr noundef %cp)  alwaysinline#0 {
entry:
  %cpp.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  store ptr %cpp, ptr %cpp.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  %0 = load ptr, ptr %cpp.addr, align 8
  %1 = load ptr, ptr %cp.addr, align 8
  %2 = load ptr, ptr %cp.addr, align 8
  %call = call i64 @strlen(ptr noundef %2)
  %add = add i64 %call, 1
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %add)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_7(ptr noundef %cpp, ptr noundef %cp)  alwaysinline#0 {
entry:
  %cpp.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  store ptr %cpp, ptr %cpp.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  %0 = load ptr, ptr %cpp.addr, align 8
  %1 = load ptr, ptr %cp.addr, align 8
  %2 = load ptr, ptr %cp.addr, align 8
  %call = call i64 @strlen(ptr noundef %2)
  %add = add i64 %call, 1
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %add)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_8(ptr noundef %cpp, ptr noundef %cp)  alwaysinline#0 {
entry:
  %cpp.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  store ptr %cpp, ptr %cpp.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  %0 = load ptr, ptr %cpp.addr, align 8
  %1 = load ptr, ptr %cp.addr, align 8
  %2 = load ptr, ptr %cp.addr, align 8
  %call = call i64 @strlen(ptr noundef %2)
  %add = add i64 %call, 1
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %add)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_9(ptr noundef %cpp, ptr noundef %cp)  alwaysinline#0 {
entry:
  %cpp.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  store ptr %cpp, ptr %cpp.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  %0 = load ptr, ptr %cpp.addr, align 8
  %1 = load ptr, ptr %cp.addr, align 8
  %2 = load ptr, ptr %cp.addr, align 8
  %call = call i64 @strlen(ptr noundef %2)
  %add = add i64 %call, 1
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %add)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_10(ptr noundef %wpp, ptr noundef %wp, i64 noundef %n)  alwaysinline#0 {
entry:
  %wpp.addr = alloca ptr, align 8
  %wp.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %wpp, ptr %wpp.addr, align 8
  store ptr %wp, ptr %wp.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %wpp.addr, align 8
  %1 = load ptr, ptr %wp.addr, align 8
  %2 = load i64, ptr %n.addr, align 8
  %mul = mul i64 %2, 2
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %mul)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_11(ptr noundef %wpp, ptr noundef %wp, i64 noundef %n)  alwaysinline#0 {
entry:
  %wpp.addr = alloca ptr, align 8
  %wp.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %wpp, ptr %wpp.addr, align 8
  store ptr %wp, ptr %wp.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %wpp.addr, align 8
  %1 = load ptr, ptr %wp.addr, align 8
  %2 = load i64, ptr %n.addr, align 8
  %mul = mul i64 %2, 2
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %mul)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_12(ptr noundef %wpp, ptr noundef %wp, i64 noundef %n)  alwaysinline#0 {
entry:
  %wpp.addr = alloca ptr, align 8
  %wp.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %wpp, ptr %wpp.addr, align 8
  store ptr %wp, ptr %wp.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %wpp.addr, align 8
  %1 = load ptr, ptr %wp.addr, align 8
  %2 = load i64, ptr %n.addr, align 8
  %mul = mul i64 %2, 2
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %mul)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_13(ptr noundef %wpp, ptr noundef %wp, i64 noundef %n)  alwaysinline#0 {
entry:
  %wpp.addr = alloca ptr, align 8
  %wp.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %wpp, ptr %wpp.addr, align 8
  store ptr %wp, ptr %wp.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %wpp.addr, align 8
  %1 = load ptr, ptr %wp.addr, align 8
  %2 = load i64, ptr %n.addr, align 8
  %mul = mul i64 %2, 2
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %mul)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_14(ptr noundef %cpp, ptr noundef %cp)  alwaysinline#0 {
entry:
  %cpp.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  store ptr %cpp, ptr %cpp.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  %0 = load ptr, ptr %cpp.addr, align 8
  %1 = load ptr, ptr %cp.addr, align 8
  %2 = load ptr, ptr %cp.addr, align 8
  %call = call i64 @strlen(ptr noundef %2)
  %add = add i64 %call, 1
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %add)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_15(ptr noundef %cpp, ptr noundef %cp)  alwaysinline#0 {
entry:
  %cpp.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  store ptr %cpp, ptr %cpp.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  %0 = load ptr, ptr %cpp.addr, align 8
  %1 = load ptr, ptr %cp.addr, align 8
  %2 = load ptr, ptr %cp.addr, align 8
  %call = call i64 @strlen(ptr noundef %2)
  %add = add i64 %call, 1
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %add)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_16(ptr noundef %fpp, ptr noundef %fp, i64 noundef %n)  alwaysinline#0 {
entry:
  %fpp.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %fpp, ptr %fpp.addr, align 8
  store ptr %fp, ptr %fp.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %fpp.addr, align 8
  %1 = load ptr, ptr %fp.addr, align 8
  %2 = load i64, ptr %n.addr, align 8
  %mul = mul i64 %2, 4
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %mul)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_17(ptr noundef %fpp, ptr noundef %fp, i64 noundef %n)  alwaysinline#0 {
entry:
  %fpp.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %fpp, ptr %fpp.addr, align 8
  store ptr %fp, ptr %fp.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %fpp.addr, align 8
  %1 = load ptr, ptr %fp.addr, align 8
  %2 = load i64, ptr %n.addr, align 8
  %mul = mul i64 %2, 4
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %mul)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_18(ptr noundef %lpp, ptr noundef %lp, i64 noundef %n)  alwaysinline#0 {
entry:
  %lpp.addr = alloca ptr, align 8
  %lp.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %lpp, ptr %lpp.addr, align 8
  store ptr %lp, ptr %lp.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %lpp.addr, align 8
  %1 = load ptr, ptr %lp.addr, align 8
  %2 = load i64, ptr %n.addr, align 8
  %mul = mul i64 %2, 8
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %mul)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_19(ptr noundef %fpp, ptr noundef %fp, i64 noundef %n)  alwaysinline#0 {
entry:
  %fpp.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %fpp, ptr %fpp.addr, align 8
  store ptr %fp, ptr %fp.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %fpp.addr, align 8
  %1 = load ptr, ptr %fp.addr, align 8
  %2 = load i64, ptr %n.addr, align 8
  %mul = mul i64 %2, 4
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %mul)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_20(ptr noundef %fpp, ptr noundef %fp, i64 noundef %n)  alwaysinline#0 {
entry:
  %fpp.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %fpp, ptr %fpp.addr, align 8
  store ptr %fp, ptr %fp.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %fpp.addr, align 8
  %1 = load ptr, ptr %fp.addr, align 8
  %2 = load i64, ptr %n.addr, align 8
  %mul = mul i64 %2, 4
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %mul)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_21(ptr noundef %fpp, ptr noundef %fp, i64 noundef %n)  alwaysinline#0 {
entry:
  %fpp.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %fpp, ptr %fpp.addr, align 8
  store ptr %fp, ptr %fp.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %fpp.addr, align 8
  %1 = load ptr, ptr %fp.addr, align 8
  %2 = load i64, ptr %n.addr, align 8
  %mul = mul i64 %2, 4
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %mul)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_22(ptr noundef %wpp, ptr noundef %wp, i64 noundef %n)  alwaysinline#0 {
entry:
  %wpp.addr = alloca ptr, align 8
  %wp.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %wpp, ptr %wpp.addr, align 8
  store ptr %wp, ptr %wp.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %wpp.addr, align 8
  %1 = load ptr, ptr %wp.addr, align 8
  %2 = load i64, ptr %n.addr, align 8
  %mul = mul i64 %2, 2
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %mul)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_23(ptr noundef %fpp, ptr noundef %fp, i64 noundef %n)  alwaysinline#0 {
entry:
  %fpp.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %fpp, ptr %fpp.addr, align 8
  store ptr %fp, ptr %fp.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %fpp.addr, align 8
  %1 = load ptr, ptr %fp.addr, align 8
  %2 = load i64, ptr %n.addr, align 8
  %mul = mul i64 %2, 4
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %mul)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_24(ptr noundef %cpp, ptr noundef %cp, i64 noundef %n)  alwaysinline#0 {
entry:
  %cpp.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %cpp, ptr %cpp.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %cpp.addr, align 8
  %1 = load ptr, ptr %cp.addr, align 8
  %2 = load i64, ptr %n.addr, align 8
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_25(ptr noundef %cpp, ptr noundef %cp)  alwaysinline#0 {
entry:
  %cpp.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  store ptr %cpp, ptr %cpp.addr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  %0 = load ptr, ptr %cpp.addr, align 8
  %1 = load ptr, ptr %cp.addr, align 8
  %2 = load ptr, ptr %cp.addr, align 8
  %call = call i64 @strlen(ptr noundef %2)
  %add = add i64 %call, 1
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %add)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_26(ptr noundef %lpp, ptr noundef %lp, i64 noundef %n)  alwaysinline#0 {
entry:
  %lpp.addr = alloca ptr, align 8
  %lp.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %lpp, ptr %lpp.addr, align 8
  store ptr %lp, ptr %lp.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %lpp.addr, align 8
  %1 = load ptr, ptr %lp.addr, align 8
  %2 = load i64, ptr %n.addr, align 8
  %mul = mul i64 %2, 8
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %mul)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_dir_27(ptr noundef %wpp, ptr noundef %wp, i64 noundef %n)  alwaysinline#0 {
entry:
  %wpp.addr = alloca ptr, align 8
  %wp.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %wpp, ptr %wpp.addr, align 8
  store ptr %wp, ptr %wp.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %wpp.addr, align 8
  %1 = load ptr, ptr %wp.addr, align 8
  %2 = load i64, ptr %n.addr, align 8
  %mul = mul i64 %2, 2
  call void @_TIFFsetByteArray(ptr noundef %0, ptr noundef %1, i64 noundef %mul)
  ret void
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
